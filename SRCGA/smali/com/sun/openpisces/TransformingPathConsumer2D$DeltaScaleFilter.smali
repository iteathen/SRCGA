.class final Lcom/sun/openpisces/TransformingPathConsumer2D$DeltaScaleFilter;
.super Lcom/sun/openpisces/TransformingPathConsumer2D;
.source "TransformingPathConsumer2D.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/openpisces/TransformingPathConsumer2D;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "DeltaScaleFilter"
.end annotation


# instance fields
.field private sx:F

.field private sy:F


# direct methods
.method public constructor <init>(Lcom/sun/javafx/geom/PathConsumer2D;FF)V
    .locals 7

    .prologue
    .line 384
    move-object v0, p0

    .local v0, "this":Lcom/sun/openpisces/TransformingPathConsumer2D$DeltaScaleFilter;
    move-object v1, p1

    .local v1, "out":Lcom/sun/javafx/geom/PathConsumer2D;
    move v2, p2

    .local v2, "Mxx":F
    move v3, p3

    .local v3, "Myy":F
    move-object v4, v0

    move-object v5, v1

    invoke-direct {v4, v5}, Lcom/sun/openpisces/TransformingPathConsumer2D;-><init>(Lcom/sun/javafx/geom/PathConsumer2D;)V

    .line 385
    move-object v4, v0

    move v5, v2

    move v6, v3

    invoke-virtual {v4, v5, v6}, Lcom/sun/openpisces/TransformingPathConsumer2D$DeltaScaleFilter;->set(FF)V

    .line 386
    return-void
.end method


# virtual methods
.method public closePath()V
    .locals 2

    .prologue
    .line 418
    move-object v0, p0

    .local v0, "this":Lcom/sun/openpisces/TransformingPathConsumer2D$DeltaScaleFilter;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/openpisces/TransformingPathConsumer2D$DeltaScaleFilter;->out:Lcom/sun/javafx/geom/PathConsumer2D;

    invoke-interface {v1}, Lcom/sun/javafx/geom/PathConsumer2D;->closePath()V

    .line 419
    return-void
.end method

.method public curveTo(FFFFFF)V
    .locals 15

    .prologue
    .line 412
    move-object v0, p0

    .local v0, "this":Lcom/sun/openpisces/TransformingPathConsumer2D$DeltaScaleFilter;
    move/from16 v1, p1

    .local v1, "x1":F
    move/from16 v2, p2

    .local v2, "y1":F
    move/from16 v3, p3

    .local v3, "x2":F
    move/from16 v4, p4

    .local v4, "y2":F
    move/from16 v5, p5

    .local v5, "x3":F
    move/from16 v6, p6

    .local v6, "y3":F
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/openpisces/TransformingPathConsumer2D$DeltaScaleFilter;->out:Lcom/sun/javafx/geom/PathConsumer2D;

    move v8, v1

    move-object v9, v0

    iget v9, v9, Lcom/sun/openpisces/TransformingPathConsumer2D$DeltaScaleFilter;->sx:F

    mul-float/2addr v8, v9

    move v9, v2

    move-object v10, v0

    iget v10, v10, Lcom/sun/openpisces/TransformingPathConsumer2D$DeltaScaleFilter;->sy:F

    mul-float/2addr v9, v10

    move v10, v3

    move-object v11, v0

    iget v11, v11, Lcom/sun/openpisces/TransformingPathConsumer2D$DeltaScaleFilter;->sx:F

    mul-float/2addr v10, v11

    move v11, v4

    move-object v12, v0

    iget v12, v12, Lcom/sun/openpisces/TransformingPathConsumer2D$DeltaScaleFilter;->sy:F

    mul-float/2addr v11, v12

    move v12, v5

    move-object v13, v0

    iget v13, v13, Lcom/sun/openpisces/TransformingPathConsumer2D$DeltaScaleFilter;->sx:F

    mul-float/2addr v12, v13

    move v13, v6

    move-object v14, v0

    iget v14, v14, Lcom/sun/openpisces/TransformingPathConsumer2D$DeltaScaleFilter;->sy:F

    mul-float/2addr v13, v14

    invoke-interface/range {v7 .. v13}, Lcom/sun/javafx/geom/PathConsumer2D;->curveTo(FFFFFF)V

    .line 415
    return-void
.end method

.method public getNativeConsumer()J
    .locals 3

    .prologue
    .line 426
    move-object v0, p0

    .local v0, "this":Lcom/sun/openpisces/TransformingPathConsumer2D$DeltaScaleFilter;
    const-wide/16 v1, 0x0

    move-wide v0, v1

    .end local v0    # "this":Lcom/sun/openpisces/TransformingPathConsumer2D$DeltaScaleFilter;
    return-wide v0
.end method

.method public lineTo(FF)V
    .locals 7

    .prologue
    .line 398
    move-object v0, p0

    .local v0, "this":Lcom/sun/openpisces/TransformingPathConsumer2D$DeltaScaleFilter;
    move v1, p1

    .local v1, "x1":F
    move v2, p2

    .local v2, "y1":F
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/openpisces/TransformingPathConsumer2D$DeltaScaleFilter;->out:Lcom/sun/javafx/geom/PathConsumer2D;

    move v4, v1

    move-object v5, v0

    iget v5, v5, Lcom/sun/openpisces/TransformingPathConsumer2D$DeltaScaleFilter;->sx:F

    mul-float/2addr v4, v5

    move v5, v2

    move-object v6, v0

    iget v6, v6, Lcom/sun/openpisces/TransformingPathConsumer2D$DeltaScaleFilter;->sy:F

    mul-float/2addr v5, v6

    invoke-interface {v3, v4, v5}, Lcom/sun/javafx/geom/PathConsumer2D;->lineTo(FF)V

    .line 399
    return-void
.end method

.method public moveTo(FF)V
    .locals 7

    .prologue
    .line 394
    move-object v0, p0

    .local v0, "this":Lcom/sun/openpisces/TransformingPathConsumer2D$DeltaScaleFilter;
    move v1, p1

    .local v1, "x0":F
    move v2, p2

    .local v2, "y0":F
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/openpisces/TransformingPathConsumer2D$DeltaScaleFilter;->out:Lcom/sun/javafx/geom/PathConsumer2D;

    move v4, v1

    move-object v5, v0

    iget v5, v5, Lcom/sun/openpisces/TransformingPathConsumer2D$DeltaScaleFilter;->sx:F

    mul-float/2addr v4, v5

    move v5, v2

    move-object v6, v0

    iget v6, v6, Lcom/sun/openpisces/TransformingPathConsumer2D$DeltaScaleFilter;->sy:F

    mul-float/2addr v5, v6

    invoke-interface {v3, v4, v5}, Lcom/sun/javafx/geom/PathConsumer2D;->moveTo(FF)V

    .line 395
    return-void
.end method

.method public pathDone()V
    .locals 2

    .prologue
    .line 422
    move-object v0, p0

    .local v0, "this":Lcom/sun/openpisces/TransformingPathConsumer2D$DeltaScaleFilter;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/openpisces/TransformingPathConsumer2D$DeltaScaleFilter;->out:Lcom/sun/javafx/geom/PathConsumer2D;

    invoke-interface {v1}, Lcom/sun/javafx/geom/PathConsumer2D;->pathDone()V

    .line 423
    return-void
.end method

.method public quadTo(FFFF)V
    .locals 11

    .prologue
    .line 404
    move-object v0, p0

    .local v0, "this":Lcom/sun/openpisces/TransformingPathConsumer2D$DeltaScaleFilter;
    move v1, p1

    .local v1, "x1":F
    move v2, p2

    .local v2, "y1":F
    move v3, p3

    .local v3, "x2":F
    move v4, p4

    .local v4, "y2":F
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/openpisces/TransformingPathConsumer2D$DeltaScaleFilter;->out:Lcom/sun/javafx/geom/PathConsumer2D;

    move v6, v1

    move-object v7, v0

    iget v7, v7, Lcom/sun/openpisces/TransformingPathConsumer2D$DeltaScaleFilter;->sx:F

    mul-float/2addr v6, v7

    move v7, v2

    move-object v8, v0

    iget v8, v8, Lcom/sun/openpisces/TransformingPathConsumer2D$DeltaScaleFilter;->sy:F

    mul-float/2addr v7, v8

    move v8, v3

    move-object v9, v0

    iget v9, v9, Lcom/sun/openpisces/TransformingPathConsumer2D$DeltaScaleFilter;->sx:F

    mul-float/2addr v8, v9

    move v9, v4

    move-object v10, v0

    iget v10, v10, Lcom/sun/openpisces/TransformingPathConsumer2D$DeltaScaleFilter;->sy:F

    mul-float/2addr v9, v10

    invoke-interface {v5, v6, v7, v8, v9}, Lcom/sun/javafx/geom/PathConsumer2D;->quadTo(FFFF)V

    .line 406
    return-void
.end method

.method public set(FF)V
    .locals 5

    .prologue
    .line 389
    move-object v0, p0

    .local v0, "this":Lcom/sun/openpisces/TransformingPathConsumer2D$DeltaScaleFilter;
    move v1, p1

    .local v1, "Mxx":F
    move v2, p2

    .local v2, "Myy":F
    move-object v3, v0

    move v4, v1

    iput v4, v3, Lcom/sun/openpisces/TransformingPathConsumer2D$DeltaScaleFilter;->sx:F

    .line 390
    move-object v3, v0

    move v4, v2

    iput v4, v3, Lcom/sun/openpisces/TransformingPathConsumer2D$DeltaScaleFilter;->sy:F

    .line 391
    return-void
.end method
