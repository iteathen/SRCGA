.class public abstract Lcom/sun/scenario/effect/impl/state/LinearConvolveKernel;
.super Ljava/lang/Object;
.source "LinearConvolveKernel.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/state/LinearConvolveKernel;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getKernelSize(I)I
.end method

.method public abstract getRenderState(Lcom/sun/javafx/geom/transform/BaseTransform;)Lcom/sun/scenario/effect/impl/state/LinearConvolveRenderState;
.end method

.method public abstract getResultBounds(Lcom/sun/javafx/geom/Rectangle;I)Lcom/sun/javafx/geom/Rectangle;
.end method

.method public isNop()Z
    .locals 2

    .prologue
    .line 55
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/state/LinearConvolveKernel;
    const/4 v1, 0x0

    move v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/state/LinearConvolveKernel;
    return v0
.end method

.method public isShadow()Z
    .locals 2

    .prologue
    .line 45
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/state/LinearConvolveKernel;
    const/4 v1, 0x0

    move v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/state/LinearConvolveKernel;
    return v0
.end method
