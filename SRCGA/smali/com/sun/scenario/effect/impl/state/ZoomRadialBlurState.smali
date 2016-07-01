.class public Lcom/sun/scenario/effect/impl/state/ZoomRadialBlurState;
.super Ljava/lang/Object;
.source "ZoomRadialBlurState.java"


# instance fields
.field private dx:F

.field private dy:F

.field private final effect:Lcom/sun/scenario/effect/ZoomRadialBlur;


# direct methods
.method public constructor <init>(Lcom/sun/scenario/effect/ZoomRadialBlur;)V
    .locals 4

    .prologue
    .line 36
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/state/ZoomRadialBlurState;
    move-object v1, p1

    .local v1, "effect":Lcom/sun/scenario/effect/ZoomRadialBlur;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 32
    move-object v2, v0

    const/high16 v3, -0x40800000    # -1.0f

    iput v3, v2, Lcom/sun/scenario/effect/impl/state/ZoomRadialBlurState;->dx:F

    .line 33
    move-object v2, v0

    const/high16 v3, -0x40800000    # -1.0f

    iput v3, v2, Lcom/sun/scenario/effect/impl/state/ZoomRadialBlurState;->dy:F

    .line 37
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/scenario/effect/impl/state/ZoomRadialBlurState;->effect:Lcom/sun/scenario/effect/ZoomRadialBlur;

    .line 38
    return-void
.end method


# virtual methods
.method public getAlpha()F
    .locals 5

    .prologue
    .line 82
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/state/ZoomRadialBlurState;
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/scenario/effect/impl/state/ZoomRadialBlurState;->getRadius()I

    move-result v2

    int-to-float v2, v2

    move v1, v2

    .line 83
    .local v1, "r":F
    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x40000000    # 2.0f

    move v4, v1

    mul-float/2addr v3, v4

    const/high16 v4, 0x3f800000    # 1.0f

    add-float/2addr v3, v4

    div-float/2addr v2, v3

    move v0, v2

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/state/ZoomRadialBlurState;
    return v0
.end method

.method public getDx()F
    .locals 2

    .prologue
    .line 65
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/state/ZoomRadialBlurState;
    move-object v1, v0

    iget v1, v1, Lcom/sun/scenario/effect/impl/state/ZoomRadialBlurState;->dx:F

    move v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/state/ZoomRadialBlurState;
    return v0
.end method

.method public getDy()F
    .locals 2

    .prologue
    .line 73
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/state/ZoomRadialBlurState;
    move-object v1, v0

    iget v1, v1, Lcom/sun/scenario/effect/impl/state/ZoomRadialBlurState;->dy:F

    move v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/state/ZoomRadialBlurState;
    return v0
.end method

.method public getNumSteps()I
    .locals 4

    .prologue
    .line 77
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/state/ZoomRadialBlurState;
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/scenario/effect/impl/state/ZoomRadialBlurState;->getRadius()I

    move-result v2

    move v1, v2

    .line 78
    .local v1, "r":I
    move v2, v1

    const/4 v3, 0x2

    mul-int/lit8 v2, v2, 0x2

    const/4 v3, 0x1

    add-int/lit8 v2, v2, 0x1

    move v0, v2

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/state/ZoomRadialBlurState;
    return v0
.end method

.method public getRadius()I
    .locals 2

    .prologue
    .line 41
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/state/ZoomRadialBlurState;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/scenario/effect/impl/state/ZoomRadialBlurState;->effect:Lcom/sun/scenario/effect/ZoomRadialBlur;

    invoke-virtual {v1}, Lcom/sun/scenario/effect/ZoomRadialBlur;->getRadius()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/state/ZoomRadialBlurState;
    return v0
.end method

.method public invalidateDeltas()V
    .locals 3

    .prologue
    .line 56
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/state/ZoomRadialBlurState;
    move-object v1, v0

    const/high16 v2, -0x40800000    # -1.0f

    iput v2, v1, Lcom/sun/scenario/effect/impl/state/ZoomRadialBlurState;->dx:F

    .line 57
    move-object v1, v0

    const/high16 v2, -0x40800000    # -1.0f

    iput v2, v1, Lcom/sun/scenario/effect/impl/state/ZoomRadialBlurState;->dy:F

    .line 58
    return-void
.end method

.method public updateDeltas(FF)V
    .locals 5

    .prologue
    .line 48
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/state/ZoomRadialBlurState;
    move v1, p1

    .local v1, "dx":F
    move v2, p2

    .local v2, "dy":F
    move-object v3, v0

    move v4, v1

    iput v4, v3, Lcom/sun/scenario/effect/impl/state/ZoomRadialBlurState;->dx:F

    .line 49
    move-object v3, v0

    move v4, v2

    iput v4, v3, Lcom/sun/scenario/effect/impl/state/ZoomRadialBlurState;->dy:F

    .line 50
    return-void
.end method
