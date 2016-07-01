.class final Lcom/sun/openpisces/TransformingPathConsumer2D$TransformFilter;
.super Lcom/sun/openpisces/TransformingPathConsumer2D;
.source "TransformingPathConsumer2D.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/openpisces/TransformingPathConsumer2D;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "TransformFilter"
.end annotation


# instance fields
.field private Mxt:F

.field private Mxx:F

.field private Mxy:F

.field private Myt:F

.field private Myx:F

.field private Myy:F


# direct methods
.method constructor <init>(Lcom/sun/javafx/geom/PathConsumer2D;FFFFFF)V
    .locals 15

    .prologue
    .line 320
    move-object v0, p0

    .local v0, "this":Lcom/sun/openpisces/TransformingPathConsumer2D$TransformFilter;
    move-object/from16 v1, p1

    .local v1, "out":Lcom/sun/javafx/geom/PathConsumer2D;
    move/from16 v2, p2

    .local v2, "Mxx":F
    move/from16 v3, p3

    .local v3, "Mxy":F
    move/from16 v4, p4

    .local v4, "Mxt":F
    move/from16 v5, p5

    .local v5, "Myx":F
    move/from16 v6, p6

    .local v6, "Myy":F
    move/from16 v7, p7

    .local v7, "Myt":F
    move-object v8, v0

    move-object v9, v1

    invoke-direct {v8, v9}, Lcom/sun/openpisces/TransformingPathConsumer2D;-><init>(Lcom/sun/javafx/geom/PathConsumer2D;)V

    .line 321
    move-object v8, v0

    move v9, v2

    move v10, v3

    move v11, v4

    move v12, v5

    move v13, v6

    move v14, v7

    invoke-virtual/range {v8 .. v14}, Lcom/sun/openpisces/TransformingPathConsumer2D$TransformFilter;->set(FFFFFF)V

    .line 322
    return-void
.end method


# virtual methods
.method public closePath()V
    .locals 2

    .prologue
    .line 367
    move-object v0, p0

    .local v0, "this":Lcom/sun/openpisces/TransformingPathConsumer2D$TransformFilter;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/openpisces/TransformingPathConsumer2D$TransformFilter;->out:Lcom/sun/javafx/geom/PathConsumer2D;

    invoke-interface {v1}, Lcom/sun/javafx/geom/PathConsumer2D;->closePath()V

    .line 368
    return-void
.end method

.method public curveTo(FFFFFF)V
    .locals 16

    .prologue
    .line 358
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/openpisces/TransformingPathConsumer2D$TransformFilter;
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

    iget-object v7, v7, Lcom/sun/openpisces/TransformingPathConsumer2D$TransformFilter;->out:Lcom/sun/javafx/geom/PathConsumer2D;

    move v8, v1

    move-object v9, v0

    iget v9, v9, Lcom/sun/openpisces/TransformingPathConsumer2D$TransformFilter;->Mxx:F

    mul-float/2addr v8, v9

    move v9, v2

    move-object v10, v0

    iget v10, v10, Lcom/sun/openpisces/TransformingPathConsumer2D$TransformFilter;->Mxy:F

    mul-float/2addr v9, v10

    add-float/2addr v8, v9

    move-object v9, v0

    iget v9, v9, Lcom/sun/openpisces/TransformingPathConsumer2D$TransformFilter;->Mxt:F

    add-float/2addr v8, v9

    move v9, v1

    move-object v10, v0

    iget v10, v10, Lcom/sun/openpisces/TransformingPathConsumer2D$TransformFilter;->Myx:F

    mul-float/2addr v9, v10

    move v10, v2

    move-object v11, v0

    iget v11, v11, Lcom/sun/openpisces/TransformingPathConsumer2D$TransformFilter;->Myy:F

    mul-float/2addr v10, v11

    add-float/2addr v9, v10

    move-object v10, v0

    iget v10, v10, Lcom/sun/openpisces/TransformingPathConsumer2D$TransformFilter;->Myt:F

    add-float/2addr v9, v10

    move v10, v3

    move-object v11, v0

    iget v11, v11, Lcom/sun/openpisces/TransformingPathConsumer2D$TransformFilter;->Mxx:F

    mul-float/2addr v10, v11

    move v11, v4

    move-object v12, v0

    iget v12, v12, Lcom/sun/openpisces/TransformingPathConsumer2D$TransformFilter;->Mxy:F

    mul-float/2addr v11, v12

    add-float/2addr v10, v11

    move-object v11, v0

    iget v11, v11, Lcom/sun/openpisces/TransformingPathConsumer2D$TransformFilter;->Mxt:F

    add-float/2addr v10, v11

    move v11, v3

    move-object v12, v0

    iget v12, v12, Lcom/sun/openpisces/TransformingPathConsumer2D$TransformFilter;->Myx:F

    mul-float/2addr v11, v12

    move v12, v4

    move-object v13, v0

    iget v13, v13, Lcom/sun/openpisces/TransformingPathConsumer2D$TransformFilter;->Myy:F

    mul-float/2addr v12, v13

    add-float/2addr v11, v12

    move-object v12, v0

    iget v12, v12, Lcom/sun/openpisces/TransformingPathConsumer2D$TransformFilter;->Myt:F

    add-float/2addr v11, v12

    move v12, v5

    move-object v13, v0

    iget v13, v13, Lcom/sun/openpisces/TransformingPathConsumer2D$TransformFilter;->Mxx:F

    mul-float/2addr v12, v13

    move v13, v6

    move-object v14, v0

    iget v14, v14, Lcom/sun/openpisces/TransformingPathConsumer2D$TransformFilter;->Mxy:F

    mul-float/2addr v13, v14

    add-float/2addr v12, v13

    move-object v13, v0

    iget v13, v13, Lcom/sun/openpisces/TransformingPathConsumer2D$TransformFilter;->Mxt:F

    add-float/2addr v12, v13

    move v13, v5

    move-object v14, v0

    iget v14, v14, Lcom/sun/openpisces/TransformingPathConsumer2D$TransformFilter;->Myx:F

    mul-float/2addr v13, v14

    move v14, v6

    move-object v15, v0

    iget v15, v15, Lcom/sun/openpisces/TransformingPathConsumer2D$TransformFilter;->Myy:F

    mul-float/2addr v14, v15

    add-float/2addr v13, v14

    move-object v14, v0

    iget v14, v14, Lcom/sun/openpisces/TransformingPathConsumer2D$TransformFilter;->Myt:F

    add-float/2addr v13, v14

    invoke-interface/range {v7 .. v13}, Lcom/sun/javafx/geom/PathConsumer2D;->curveTo(FFFFFF)V

    .line 364
    return-void
.end method

.method public getNativeConsumer()J
    .locals 3

    .prologue
    .line 375
    move-object v0, p0

    .local v0, "this":Lcom/sun/openpisces/TransformingPathConsumer2D$TransformFilter;
    const-wide/16 v1, 0x0

    move-wide v0, v1

    .end local v0    # "this":Lcom/sun/openpisces/TransformingPathConsumer2D$TransformFilter;
    return-wide v0
.end method

.method public lineTo(FF)V
    .locals 8

    .prologue
    .line 341
    move-object v0, p0

    .local v0, "this":Lcom/sun/openpisces/TransformingPathConsumer2D$TransformFilter;
    move v1, p1

    .local v1, "x1":F
    move v2, p2

    .local v2, "y1":F
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/openpisces/TransformingPathConsumer2D$TransformFilter;->out:Lcom/sun/javafx/geom/PathConsumer2D;

    move v4, v1

    move-object v5, v0

    iget v5, v5, Lcom/sun/openpisces/TransformingPathConsumer2D$TransformFilter;->Mxx:F

    mul-float/2addr v4, v5

    move v5, v2

    move-object v6, v0

    iget v6, v6, Lcom/sun/openpisces/TransformingPathConsumer2D$TransformFilter;->Mxy:F

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    move-object v5, v0

    iget v5, v5, Lcom/sun/openpisces/TransformingPathConsumer2D$TransformFilter;->Mxt:F

    add-float/2addr v4, v5

    move v5, v1

    move-object v6, v0

    iget v6, v6, Lcom/sun/openpisces/TransformingPathConsumer2D$TransformFilter;->Myx:F

    mul-float/2addr v5, v6

    move v6, v2

    move-object v7, v0

    iget v7, v7, Lcom/sun/openpisces/TransformingPathConsumer2D$TransformFilter;->Myy:F

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    move-object v6, v0

    iget v6, v6, Lcom/sun/openpisces/TransformingPathConsumer2D$TransformFilter;->Myt:F

    add-float/2addr v5, v6

    invoke-interface {v3, v4, v5}, Lcom/sun/javafx/geom/PathConsumer2D;->lineTo(FF)V

    .line 343
    return-void
.end method

.method public moveTo(FF)V
    .locals 8

    .prologue
    .line 336
    move-object v0, p0

    .local v0, "this":Lcom/sun/openpisces/TransformingPathConsumer2D$TransformFilter;
    move v1, p1

    .local v1, "x0":F
    move v2, p2

    .local v2, "y0":F
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/openpisces/TransformingPathConsumer2D$TransformFilter;->out:Lcom/sun/javafx/geom/PathConsumer2D;

    move v4, v1

    move-object v5, v0

    iget v5, v5, Lcom/sun/openpisces/TransformingPathConsumer2D$TransformFilter;->Mxx:F

    mul-float/2addr v4, v5

    move v5, v2

    move-object v6, v0

    iget v6, v6, Lcom/sun/openpisces/TransformingPathConsumer2D$TransformFilter;->Mxy:F

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    move-object v5, v0

    iget v5, v5, Lcom/sun/openpisces/TransformingPathConsumer2D$TransformFilter;->Mxt:F

    add-float/2addr v4, v5

    move v5, v1

    move-object v6, v0

    iget v6, v6, Lcom/sun/openpisces/TransformingPathConsumer2D$TransformFilter;->Myx:F

    mul-float/2addr v5, v6

    move v6, v2

    move-object v7, v0

    iget v7, v7, Lcom/sun/openpisces/TransformingPathConsumer2D$TransformFilter;->Myy:F

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    move-object v6, v0

    iget v6, v6, Lcom/sun/openpisces/TransformingPathConsumer2D$TransformFilter;->Myt:F

    add-float/2addr v5, v6

    invoke-interface {v3, v4, v5}, Lcom/sun/javafx/geom/PathConsumer2D;->moveTo(FF)V

    .line 338
    return-void
.end method

.method public pathDone()V
    .locals 2

    .prologue
    .line 371
    move-object v0, p0

    .local v0, "this":Lcom/sun/openpisces/TransformingPathConsumer2D$TransformFilter;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/openpisces/TransformingPathConsumer2D$TransformFilter;->out:Lcom/sun/javafx/geom/PathConsumer2D;

    invoke-interface {v1}, Lcom/sun/javafx/geom/PathConsumer2D;->pathDone()V

    .line 372
    return-void
.end method

.method public quadTo(FFFF)V
    .locals 12

    .prologue
    .line 348
    move-object v0, p0

    .local v0, "this":Lcom/sun/openpisces/TransformingPathConsumer2D$TransformFilter;
    move v1, p1

    .local v1, "x1":F
    move v2, p2

    .local v2, "y1":F
    move v3, p3

    .local v3, "x2":F
    move/from16 v4, p4

    .local v4, "y2":F
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/openpisces/TransformingPathConsumer2D$TransformFilter;->out:Lcom/sun/javafx/geom/PathConsumer2D;

    move v6, v1

    move-object v7, v0

    iget v7, v7, Lcom/sun/openpisces/TransformingPathConsumer2D$TransformFilter;->Mxx:F

    mul-float/2addr v6, v7

    move v7, v2

    move-object v8, v0

    iget v8, v8, Lcom/sun/openpisces/TransformingPathConsumer2D$TransformFilter;->Mxy:F

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    move-object v7, v0

    iget v7, v7, Lcom/sun/openpisces/TransformingPathConsumer2D$TransformFilter;->Mxt:F

    add-float/2addr v6, v7

    move v7, v1

    move-object v8, v0

    iget v8, v8, Lcom/sun/openpisces/TransformingPathConsumer2D$TransformFilter;->Myx:F

    mul-float/2addr v7, v8

    move v8, v2

    move-object v9, v0

    iget v9, v9, Lcom/sun/openpisces/TransformingPathConsumer2D$TransformFilter;->Myy:F

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    move-object v8, v0

    iget v8, v8, Lcom/sun/openpisces/TransformingPathConsumer2D$TransformFilter;->Myt:F

    add-float/2addr v7, v8

    move v8, v3

    move-object v9, v0

    iget v9, v9, Lcom/sun/openpisces/TransformingPathConsumer2D$TransformFilter;->Mxx:F

    mul-float/2addr v8, v9

    move v9, v4

    move-object v10, v0

    iget v10, v10, Lcom/sun/openpisces/TransformingPathConsumer2D$TransformFilter;->Mxy:F

    mul-float/2addr v9, v10

    add-float/2addr v8, v9

    move-object v9, v0

    iget v9, v9, Lcom/sun/openpisces/TransformingPathConsumer2D$TransformFilter;->Mxt:F

    add-float/2addr v8, v9

    move v9, v3

    move-object v10, v0

    iget v10, v10, Lcom/sun/openpisces/TransformingPathConsumer2D$TransformFilter;->Myx:F

    mul-float/2addr v9, v10

    move v10, v4

    move-object v11, v0

    iget v11, v11, Lcom/sun/openpisces/TransformingPathConsumer2D$TransformFilter;->Myy:F

    mul-float/2addr v10, v11

    add-float/2addr v9, v10

    move-object v10, v0

    iget v10, v10, Lcom/sun/openpisces/TransformingPathConsumer2D$TransformFilter;->Myt:F

    add-float/2addr v9, v10

    invoke-interface {v5, v6, v7, v8, v9}, Lcom/sun/javafx/geom/PathConsumer2D;->quadTo(FFFF)V

    .line 352
    return-void
.end method

.method public set(FFFFFF)V
    .locals 9

    .prologue
    .line 327
    move-object v0, p0

    .local v0, "this":Lcom/sun/openpisces/TransformingPathConsumer2D$TransformFilter;
    move v1, p1

    .local v1, "Mxx":F
    move v2, p2

    .local v2, "Mxy":F
    move v3, p3

    .local v3, "Mxt":F
    move v4, p4

    .local v4, "Myx":F
    move v5, p5

    .local v5, "Myy":F
    move v6, p6

    .local v6, "Myt":F
    move-object v7, v0

    move v8, v1

    iput v8, v7, Lcom/sun/openpisces/TransformingPathConsumer2D$TransformFilter;->Mxx:F

    .line 328
    move-object v7, v0

    move v8, v2

    iput v8, v7, Lcom/sun/openpisces/TransformingPathConsumer2D$TransformFilter;->Mxy:F

    .line 329
    move-object v7, v0

    move v8, v3

    iput v8, v7, Lcom/sun/openpisces/TransformingPathConsumer2D$TransformFilter;->Mxt:F

    .line 330
    move-object v7, v0

    move v8, v4

    iput v8, v7, Lcom/sun/openpisces/TransformingPathConsumer2D$TransformFilter;->Myx:F

    .line 331
    move-object v7, v0

    move v8, v5

    iput v8, v7, Lcom/sun/openpisces/TransformingPathConsumer2D$TransformFilter;->Myy:F

    .line 332
    move-object v7, v0

    move v8, v6

    iput v8, v7, Lcom/sun/openpisces/TransformingPathConsumer2D$TransformFilter;->Myt:F

    .line 333
    return-void
.end method
