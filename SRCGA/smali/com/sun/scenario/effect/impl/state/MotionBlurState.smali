.class public Lcom/sun/scenario/effect/impl/state/MotionBlurState;
.super Lcom/sun/scenario/effect/impl/state/LinearConvolveKernel;
.source "MotionBlurState.java"


# instance fields
.field private angle:F

.field private radius:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 31
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/state/MotionBlurState;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/scenario/effect/impl/state/LinearConvolveKernel;-><init>()V

    return-void
.end method


# virtual methods
.method public getAngle()F
    .locals 2

    .prologue
    .line 47
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/state/MotionBlurState;
    move-object v1, v0

    iget v1, v1, Lcom/sun/scenario/effect/impl/state/MotionBlurState;->angle:F

    move v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/state/MotionBlurState;
    return v0
.end method

.method public getHPad()I
    .locals 6

    .prologue
    .line 55
    move-object v1, p0

    .local v1, "this":Lcom/sun/scenario/effect/impl/state/MotionBlurState;
    move-object v2, v1

    iget v2, v2, Lcom/sun/scenario/effect/impl/state/MotionBlurState;->angle:F

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    move-object v4, v1

    iget v4, v4, Lcom/sun/scenario/effect/impl/state/MotionBlurState;->radius:F

    float-to-double v4, v4

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    move v1, v2

    .end local v1    # "this":Lcom/sun/scenario/effect/impl/state/MotionBlurState;
    return v1
.end method

.method public getKernelSize(I)I
    .locals 4

    .prologue
    .line 76
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/state/MotionBlurState;
    move v1, p1

    .local v1, "pass":I
    move-object v2, v0

    iget v2, v2, Lcom/sun/scenario/effect/impl/state/MotionBlurState;->radius:F

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    const/4 v3, 0x2

    mul-int/lit8 v2, v2, 0x2

    const/4 v3, 0x1

    add-int/lit8 v2, v2, 0x1

    move v0, v2

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/state/MotionBlurState;
    return v0
.end method

.method public getRadius()F
    .locals 2

    .prologue
    .line 36
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/state/MotionBlurState;
    move-object v1, v0

    iget v1, v1, Lcom/sun/scenario/effect/impl/state/MotionBlurState;->radius:F

    move v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/state/MotionBlurState;
    return v0
.end method

.method public getRenderState(Lcom/sun/javafx/geom/transform/BaseTransform;)Lcom/sun/scenario/effect/impl/state/LinearConvolveRenderState;
    .locals 11

    .prologue
    .line 64
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/state/MotionBlurState;
    move-object v1, p1

    .local v1, "filtertx":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object v4, v0

    iget v4, v4, Lcom/sun/scenario/effect/impl/state/MotionBlurState;->angle:F

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    double-to-float v4, v4

    move v2, v4

    .line 65
    .local v2, "dx":F
    move-object v4, v0

    iget v4, v4, Lcom/sun/scenario/effect/impl/state/MotionBlurState;->angle:F

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    double-to-float v4, v4

    move v3, v4

    .line 66
    .local v3, "dy":F
    new-instance v4, Lcom/sun/scenario/effect/impl/state/GaussianRenderState;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    move-object v6, v0

    iget v6, v6, Lcom/sun/scenario/effect/impl/state/MotionBlurState;->radius:F

    move v7, v2

    move v8, v3

    move-object v9, v1

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/sun/scenario/effect/impl/state/GaussianRenderState;-><init>(FFFLcom/sun/javafx/geom/transform/BaseTransform;)V

    move-object v0, v4

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/state/MotionBlurState;
    return-object v0
.end method

.method public final getResultBounds(Lcom/sun/javafx/geom/Rectangle;I)Lcom/sun/javafx/geom/Rectangle;
    .locals 8

    .prologue
    .line 81
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/state/MotionBlurState;
    move-object v1, p1

    .local v1, "srcdimension":Lcom/sun/javafx/geom/Rectangle;
    move v2, p2

    .local v2, "pass":I
    new-instance v4, Lcom/sun/javafx/geom/Rectangle;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v1

    invoke-direct {v5, v6}, Lcom/sun/javafx/geom/Rectangle;-><init>(Lcom/sun/javafx/geom/Rectangle;)V

    move-object v3, v4

    .line 82
    .local v3, "ret":Lcom/sun/javafx/geom/Rectangle;
    move-object v4, v3

    move-object v5, v0

    invoke-virtual {v5}, Lcom/sun/scenario/effect/impl/state/MotionBlurState;->getHPad()I

    move-result v5

    move-object v6, v0

    invoke-virtual {v6}, Lcom/sun/scenario/effect/impl/state/MotionBlurState;->getVPad()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lcom/sun/javafx/geom/Rectangle;->grow(II)V

    .line 83
    move-object v4, v3

    move-object v0, v4

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/state/MotionBlurState;
    return-object v0
.end method

.method public getVPad()I
    .locals 6

    .prologue
    .line 59
    move-object v1, p0

    .local v1, "this":Lcom/sun/scenario/effect/impl/state/MotionBlurState;
    move-object v2, v1

    iget v2, v2, Lcom/sun/scenario/effect/impl/state/MotionBlurState;->angle:F

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    move-object v4, v1

    iget v4, v4, Lcom/sun/scenario/effect/impl/state/MotionBlurState;->radius:F

    float-to-double v4, v4

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    move v1, v2

    .end local v1    # "this":Lcom/sun/scenario/effect/impl/state/MotionBlurState;
    return v1
.end method

.method public isNop()Z
    .locals 3

    .prologue
    .line 71
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/state/MotionBlurState;
    move-object v1, v0

    iget v1, v1, Lcom/sun/scenario/effect/impl/state/MotionBlurState;->radius:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/state/MotionBlurState;
    return v0

    .restart local v0    # "this":Lcom/sun/scenario/effect/impl/state/MotionBlurState;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setAngle(F)V
    .locals 4

    .prologue
    .line 51
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/state/MotionBlurState;
    move v1, p1

    .local v1, "angle":F
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/sun/scenario/effect/impl/state/MotionBlurState;->angle:F

    .line 52
    return-void
.end method

.method public setRadius(F)V
    .locals 6

    .prologue
    .line 40
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/state/MotionBlurState;
    move v1, p1

    .local v1, "radius":F
    move v2, v1

    const/4 v3, 0x0

    cmpg-float v2, v2, v3

    if-ltz v2, :cond_0

    move v2, v1

    const/high16 v3, 0x427c0000    # 63.0f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    .line 41
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "Radius must be in the range [0,63]"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 43
    :cond_1
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/sun/scenario/effect/impl/state/MotionBlurState;->radius:F

    .line 44
    return-void
.end method
