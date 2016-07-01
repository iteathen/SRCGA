.class public abstract Lcom/sun/scenario/effect/impl/state/LinearConvolveRenderState;
.super Ljava/lang/Object;
.source "LinearConvolveRenderState.java"

# interfaces
.implements Lcom/sun/scenario/effect/impl/state/RenderState;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/scenario/effect/impl/state/LinearConvolveRenderState$PassType;
    }
.end annotation


# static fields
.field static final BLACK_COMPONENTS:[F

.field public static final MAX_COMPILED_KERNEL_SIZE:I = 0x80

.field public static final MAX_KERNEL_SIZE:I

.field static final MIN_EFFECT_RADIUS:F = 0.00390625f


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 65
    sget-object v2, Lcom/sun/scenario/effect/Color4f;->BLACK:Lcom/sun/scenario/effect/Color4f;

    .line 66
    invoke-virtual {v2}, Lcom/sun/scenario/effect/Color4f;->getPremultipliedRGBComponents()[F

    move-result-object v2

    sput-object v2, Lcom/sun/scenario/effect/impl/state/LinearConvolveRenderState;->BLACK_COMPONENTS:[F

    .line 73
    invoke-static {}, Lcom/sun/javafx/PlatformUtil;->isEmbedded()Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x40

    :goto_0
    move v0, v2

    .line 74
    .local v0, "defSize":I
    move v2, v0

    invoke-static {v2}, Lcom/sun/scenario/effect/impl/state/LinearConvolveRenderState$$Lambda$1;->lambdaFactory$(I)Ljava/security/PrivilegedAction;

    move-result-object v2

    invoke-static {v2}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move v1, v2

    .line 77
    .local v1, "size":I
    move v2, v1

    const/16 v3, 0x80

    if-le v2, v3, :cond_0

    .line 78
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "Clamping maxLinearConvolveKernelSize to 128"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 80
    const/16 v2, 0x80

    move v1, v2

    .line 82
    :cond_0
    move v2, v1

    sput v2, Lcom/sun/scenario/effect/impl/state/LinearConvolveRenderState;->MAX_KERNEL_SIZE:I

    .line 83
    return-void

    .line 73
    .end local v0    # "defSize":I
    .end local v1    # "size":I
    :cond_1
    const/16 v2, 0x80

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 59
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/state/LinearConvolveRenderState;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$lambda$0(I)Ljava/lang/Integer;
    .locals 2

    move v0, p0

    move v1, v0

    invoke-static {v1}, Lcom/sun/scenario/effect/impl/state/LinearConvolveRenderState;->lambda$static$26(I)Ljava/lang/Integer;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public static getPeerSize(I)I
    .locals 6

    .prologue
    .line 140
    move v0, p0

    .local v0, "ksize":I
    move v1, v0

    const/16 v2, 0x20

    if-ge v1, v2, :cond_0

    move v1, v0

    const/4 v2, 0x3

    add-int/lit8 v1, v1, 0x3

    const/4 v2, -0x4

    and-int/lit8 v1, v1, -0x4

    move v0, v1

    .line 141
    .end local v0    # "ksize":I
    :goto_0
    return v0

    .restart local v0    # "ksize":I
    :cond_0
    move v1, v0

    sget v2, Lcom/sun/scenario/effect/impl/state/LinearConvolveRenderState;->MAX_KERNEL_SIZE:I

    if-gt v1, v2, :cond_1

    move v1, v0

    const/16 v2, 0x1f

    add-int/lit8 v1, v1, 0x1f

    const/16 v2, -0x20

    and-int/lit8 v1, v1, -0x20

    move v0, v1

    goto :goto_0

    .line 142
    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No peer available for kernel size: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static synthetic lambda$static$26(I)Ljava/lang/Integer;
    .locals 3

    .prologue
    .line 75
    move v0, p0

    .local v0, "defSize":I
    const-string v1, "decora.maxLinearConvolveKernelSize"

    move v2, v0

    invoke-static {v1, v2}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "defSize":I
    return-object v0
.end method

.method static nearOne(FI)Z
    .locals 6

    .prologue
    .line 174
    move v0, p0

    .local v0, "v":F
    move v1, p1

    .local v1, "size":I
    move v2, v0

    move v3, v1

    int-to-float v3, v3

    mul-float/2addr v2, v3

    move v3, v1

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    float-to-double v2, v2

    const-wide/high16 v4, 0x3f60000000000000L    # 0.001953125

    cmpg-double v2, v2, v4

    if-gez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .end local v0    # "v":F
    return v0

    .restart local v0    # "v":F
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method static nearZero(FI)Z
    .locals 6

    .prologue
    .line 158
    move v0, p0

    .local v0, "v":F
    move v1, p1

    .local v1, "size":I
    move v2, v0

    move v3, v1

    int-to-float v3, v3

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    float-to-double v2, v2

    const-wide/high16 v4, 0x3f60000000000000L    # 0.001953125

    cmpg-double v2, v2, v4

    if-gez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .end local v0    # "v":F
    return v0

    .restart local v0    # "v":F
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public abstract getInputKernelSize(I)I
.end method

.method public abstract getPassKernelSize()I
.end method

.method public getPassPeer(Lcom/sun/scenario/effect/impl/Renderer;Lcom/sun/scenario/effect/FilterContext;)Lcom/sun/scenario/effect/impl/EffectPeer;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/scenario/effect/impl/Renderer;",
            "Lcom/sun/scenario/effect/FilterContext;",
            ")",
            "Lcom/sun/scenario/effect/impl/EffectPeer",
            "<+",
            "Lcom/sun/scenario/effect/impl/state/LinearConvolveRenderState;",
            ">;"
        }
    .end annotation

    .prologue
    .line 262
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/state/LinearConvolveRenderState;
    move-object v1, p1

    .local v1, "r":Lcom/sun/scenario/effect/impl/Renderer;
    move-object v2, p2

    .local v2, "fctx":Lcom/sun/scenario/effect/FilterContext;
    move-object v6, v0

    invoke-virtual {v6}, Lcom/sun/scenario/effect/impl/state/LinearConvolveRenderState;->isPassNop()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 263
    const/4 v6, 0x0

    move-object v0, v6

    .line 268
    .end local v0    # "this":Lcom/sun/scenario/effect/impl/state/LinearConvolveRenderState;
    :goto_0
    return-object v0

    .line 265
    .restart local v0    # "this":Lcom/sun/scenario/effect/impl/state/LinearConvolveRenderState;
    :cond_0
    move-object v6, v0

    invoke-virtual {v6}, Lcom/sun/scenario/effect/impl/state/LinearConvolveRenderState;->getPassKernelSize()I

    move-result v6

    move v3, v6

    .line 266
    .local v3, "ksize":I
    move v6, v3

    invoke-static {v6}, Lcom/sun/scenario/effect/impl/state/LinearConvolveRenderState;->getPeerSize(I)I

    move-result v6

    move v4, v6

    .line 267
    .local v4, "psize":I
    move-object v6, v0

    invoke-virtual {v6}, Lcom/sun/scenario/effect/impl/state/LinearConvolveRenderState;->isShadow()Z

    move-result v6

    if-eqz v6, :cond_1

    const-string v6, "LinearConvolveShadow"

    :goto_1
    move-object v5, v6

    .line 268
    .local v5, "opname":Ljava/lang/String;
    move-object v6, v1

    move-object v7, v2

    move-object v8, v5

    move v9, v4

    invoke-virtual {v6, v7, v8, v9}, Lcom/sun/scenario/effect/impl/Renderer;->getPeerInstance(Lcom/sun/scenario/effect/FilterContext;Ljava/lang/String;I)Lcom/sun/scenario/effect/impl/EffectPeer;

    move-result-object v6

    move-object v0, v6

    goto :goto_0

    .line 267
    .end local v5    # "opname":Ljava/lang/String;
    :cond_1
    const-string v6, "LinearConvolve"

    goto :goto_1
.end method

.method public abstract getPassResultBounds(Lcom/sun/javafx/geom/Rectangle;Lcom/sun/javafx/geom/Rectangle;)Lcom/sun/javafx/geom/Rectangle;
.end method

.method public abstract getPassShadowColorComponents()[F
.end method

.method public getPassType()Lcom/sun/scenario/effect/impl/state/LinearConvolveRenderState$PassType;
    .locals 2

    .prologue
    .line 295
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/state/LinearConvolveRenderState;
    sget-object v1, Lcom/sun/scenario/effect/impl/state/LinearConvolveRenderState$PassType;->GENERAL_VECTOR:Lcom/sun/scenario/effect/impl/state/LinearConvolveRenderState$PassType;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/state/LinearConvolveRenderState;
    return-object v0
.end method

.method public abstract getPassVector()[F
.end method

.method public abstract getPassWeights()Ljava/nio/FloatBuffer;
.end method

.method public abstract getPassWeightsArrayLength()I
.end method

.method public abstract getShadowColor()Lcom/sun/scenario/effect/Color4f;
.end method

.method public abstract isNop()Z
.end method

.method public abstract isPassNop()Z
.end method

.method public abstract isShadow()Z
.end method

.method public abstract validatePassInput(Lcom/sun/scenario/effect/ImageData;I)Lcom/sun/scenario/effect/ImageData;
.end method
