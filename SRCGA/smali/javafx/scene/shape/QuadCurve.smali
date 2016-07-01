.class public Ljavafx/scene/shape/QuadCurve;
.super Ljavafx/scene/shape/Shape;
.source "QuadCurve.java"


# instance fields
.field private controlX:Ljavafx/beans/property/DoubleProperty;

.field private controlY:Ljavafx/beans/property/DoubleProperty;

.field private endX:Ljavafx/beans/property/DoubleProperty;

.field private endY:Ljavafx/beans/property/DoubleProperty;

.field private final shape:Lcom/sun/javafx/geom/QuadCurve2D;

.field private startX:Ljavafx/beans/property/DoubleProperty;

.field private startY:Ljavafx/beans/property/DoubleProperty;


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    .line 65
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/QuadCurve;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/shape/Shape;-><init>()V

    .line 60
    move-object v1, v0

    new-instance v2, Lcom/sun/javafx/geom/QuadCurve2D;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    invoke-direct {v3}, Lcom/sun/javafx/geom/QuadCurve2D;-><init>()V

    iput-object v2, v1, Ljavafx/scene/shape/QuadCurve;->shape:Lcom/sun/javafx/geom/QuadCurve2D;

    .line 176
    move-object v1, v0

    new-instance v2, Ljavafx/scene/shape/QuadCurve$3;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/shape/QuadCurve$3;-><init>(Ljavafx/scene/shape/QuadCurve;)V

    iput-object v2, v1, Ljavafx/scene/shape/QuadCurve;->controlX:Ljavafx/beans/property/DoubleProperty;

    .line 213
    move-object v1, v0

    new-instance v2, Ljavafx/scene/shape/QuadCurve$4;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/shape/QuadCurve$4;-><init>(Ljavafx/scene/shape/QuadCurve;)V

    iput-object v2, v1, Ljavafx/scene/shape/QuadCurve;->controlY:Ljavafx/beans/property/DoubleProperty;

    .line 66
    return-void
.end method

.method public constructor <init>(DDDDDD)V
    .locals 19

    .prologue
    .line 77
    move-object/from16 v0, p0

    .local v0, "this":Ljavafx/scene/shape/QuadCurve;
    move-wide/from16 v1, p1

    .local v1, "startX":D
    move-wide/from16 v3, p3

    .local v3, "startY":D
    move-wide/from16 v5, p5

    .local v5, "controlX":D
    move-wide/from16 v7, p7

    .local v7, "controlY":D
    move-wide/from16 v9, p9

    .local v9, "endX":D
    move-wide/from16 v11, p11

    .local v11, "endY":D
    move-object v13, v0

    invoke-direct {v13}, Ljavafx/scene/shape/Shape;-><init>()V

    .line 60
    move-object v13, v0

    new-instance v14, Lcom/sun/javafx/geom/QuadCurve2D;

    move-object/from16 v17, v14

    move-object/from16 v14, v17

    move-object/from16 v15, v17

    invoke-direct {v15}, Lcom/sun/javafx/geom/QuadCurve2D;-><init>()V

    iput-object v14, v13, Ljavafx/scene/shape/QuadCurve;->shape:Lcom/sun/javafx/geom/QuadCurve2D;

    .line 176
    move-object v13, v0

    new-instance v14, Ljavafx/scene/shape/QuadCurve$3;

    move-object/from16 v17, v14

    move-object/from16 v14, v17

    move-object/from16 v15, v17

    move-object/from16 v16, v0

    invoke-direct/range {v15 .. v16}, Ljavafx/scene/shape/QuadCurve$3;-><init>(Ljavafx/scene/shape/QuadCurve;)V

    iput-object v14, v13, Ljavafx/scene/shape/QuadCurve;->controlX:Ljavafx/beans/property/DoubleProperty;

    .line 213
    move-object v13, v0

    new-instance v14, Ljavafx/scene/shape/QuadCurve$4;

    move-object/from16 v17, v14

    move-object/from16 v14, v17

    move-object/from16 v15, v17

    move-object/from16 v16, v0

    invoke-direct/range {v15 .. v16}, Ljavafx/scene/shape/QuadCurve$4;-><init>(Ljavafx/scene/shape/QuadCurve;)V

    iput-object v14, v13, Ljavafx/scene/shape/QuadCurve;->controlY:Ljavafx/beans/property/DoubleProperty;

    .line 78
    move-object v13, v0

    move-wide v14, v1

    invoke-virtual {v13, v14, v15}, Ljavafx/scene/shape/QuadCurve;->setStartX(D)V

    .line 79
    move-object v13, v0

    move-wide v14, v3

    invoke-virtual {v13, v14, v15}, Ljavafx/scene/shape/QuadCurve;->setStartY(D)V

    .line 80
    move-object v13, v0

    move-wide v14, v5

    invoke-virtual {v13, v14, v15}, Ljavafx/scene/shape/QuadCurve;->setControlX(D)V

    .line 81
    move-object v13, v0

    move-wide v14, v7

    invoke-virtual {v13, v14, v15}, Ljavafx/scene/shape/QuadCurve;->setControlY(D)V

    .line 82
    move-object v13, v0

    move-wide v14, v9

    invoke-virtual {v13, v14, v15}, Ljavafx/scene/shape/QuadCurve;->setEndX(D)V

    .line 83
    move-object v13, v0

    move-wide v14, v11

    invoke-virtual {v13, v14, v15}, Ljavafx/scene/shape/QuadCurve;->setEndY(D)V

    .line 84
    return-void
.end method

.method static synthetic access$000(Ljavafx/scene/shape/QuadCurve;)V
    .locals 2

    .prologue
    .line 58
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/shape/QuadCurve;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/shape/QuadCurve;->impl_geomChanged()V

    return-void
.end method

.method static synthetic access$100(Ljavafx/scene/shape/QuadCurve;)V
    .locals 2

    .prologue
    .line 58
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/shape/QuadCurve;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/shape/QuadCurve;->impl_geomChanged()V

    return-void
.end method

.method static synthetic access$200(Ljavafx/scene/shape/QuadCurve;)V
    .locals 2

    .prologue
    .line 58
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/shape/QuadCurve;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/shape/QuadCurve;->impl_geomChanged()V

    return-void
.end method

.method static synthetic access$300(Ljavafx/scene/shape/QuadCurve;)V
    .locals 2

    .prologue
    .line 58
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/shape/QuadCurve;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/shape/QuadCurve;->impl_geomChanged()V

    return-void
.end method

.method static synthetic access$400(Ljavafx/scene/shape/QuadCurve;)V
    .locals 2

    .prologue
    .line 58
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/shape/QuadCurve;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/shape/QuadCurve;->impl_geomChanged()V

    return-void
.end method

.method static synthetic access$500(Ljavafx/scene/shape/QuadCurve;)V
    .locals 2

    .prologue
    .line 58
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/shape/QuadCurve;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/shape/QuadCurve;->impl_geomChanged()V

    return-void
.end method


# virtual methods
.method public final controlXProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 2

    .prologue
    .line 204
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/QuadCurve;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/QuadCurve;->controlX:Ljavafx/beans/property/DoubleProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/shape/QuadCurve;
    return-object v0
.end method

.method public final controlYProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 2

    .prologue
    .line 242
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/QuadCurve;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/QuadCurve;->controlY:Ljavafx/beans/property/DoubleProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/shape/QuadCurve;
    return-object v0
.end method

.method public final endXProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 6

    .prologue
    .line 265
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/QuadCurve;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/QuadCurve;->endX:Ljavafx/beans/property/DoubleProperty;

    if-nez v1, :cond_0

    .line 266
    move-object v1, v0

    new-instance v2, Ljavafx/scene/shape/QuadCurve$5;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/shape/QuadCurve$5;-><init>(Ljavafx/scene/shape/QuadCurve;)V

    iput-object v2, v1, Ljavafx/scene/shape/QuadCurve;->endX:Ljavafx/beans/property/DoubleProperty;

    .line 285
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/QuadCurve;->endX:Ljavafx/beans/property/DoubleProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/shape/QuadCurve;
    return-object v0
.end method

.method public final endYProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 6

    .prologue
    .line 307
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/QuadCurve;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/QuadCurve;->endY:Ljavafx/beans/property/DoubleProperty;

    if-nez v1, :cond_0

    .line 308
    move-object v1, v0

    new-instance v2, Ljavafx/scene/shape/QuadCurve$6;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/shape/QuadCurve$6;-><init>(Ljavafx/scene/shape/QuadCurve;)V

    iput-object v2, v1, Ljavafx/scene/shape/QuadCurve;->endY:Ljavafx/beans/property/DoubleProperty;

    .line 327
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/QuadCurve;->endY:Ljavafx/beans/property/DoubleProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/shape/QuadCurve;
    return-object v0
.end method

.method public final getControlX()D
    .locals 3

    .prologue
    .line 200
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/QuadCurve;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/QuadCurve;->controlX:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v1

    move-wide v0, v1

    .end local v0    # "this":Ljavafx/scene/shape/QuadCurve;
    return-wide v0
.end method

.method public final getControlY()D
    .locals 3

    .prologue
    .line 238
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/QuadCurve;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/QuadCurve;->controlY:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v1

    move-wide v0, v1

    .end local v0    # "this":Ljavafx/scene/shape/QuadCurve;
    return-wide v0
.end method

.method public final getEndX()D
    .locals 4

    .prologue
    .line 261
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/shape/QuadCurve;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/shape/QuadCurve;->endX:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    const-wide/16 v2, 0x0

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Ljavafx/scene/shape/QuadCurve;
    return-wide v1

    .restart local v1    # "this":Ljavafx/scene/shape/QuadCurve;
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/shape/QuadCurve;->endX:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v2}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v2

    goto :goto_0
.end method

.method public final getEndY()D
    .locals 4

    .prologue
    .line 303
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/shape/QuadCurve;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/shape/QuadCurve;->endY:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    const-wide/16 v2, 0x0

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Ljavafx/scene/shape/QuadCurve;
    return-wide v1

    .restart local v1    # "this":Ljavafx/scene/shape/QuadCurve;
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/shape/QuadCurve;->endY:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v2}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v2

    goto :goto_0
.end method

.method public final getStartX()D
    .locals 4

    .prologue
    .line 101
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/shape/QuadCurve;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/shape/QuadCurve;->startX:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    const-wide/16 v2, 0x0

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Ljavafx/scene/shape/QuadCurve;
    return-wide v1

    .restart local v1    # "this":Ljavafx/scene/shape/QuadCurve;
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/shape/QuadCurve;->startX:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v2}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v2

    goto :goto_0
.end method

.method public final getStartY()D
    .locals 4

    .prologue
    .line 143
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/shape/QuadCurve;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/shape/QuadCurve;->startY:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    const-wide/16 v2, 0x0

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Ljavafx/scene/shape/QuadCurve;
    return-wide v1

    .restart local v1    # "this":Ljavafx/scene/shape/QuadCurve;
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/shape/QuadCurve;->startY:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v2}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v2

    goto :goto_0
.end method

.method public impl_configShape()Lcom/sun/javafx/geom/QuadCurve2D;
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 347
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/QuadCurve;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/QuadCurve;->shape:Lcom/sun/javafx/geom/QuadCurve2D;

    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/shape/QuadCurve;->getStartX()D

    move-result-wide v2

    double-to-float v2, v2

    iput v2, v1, Lcom/sun/javafx/geom/QuadCurve2D;->x1:F

    .line 348
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/QuadCurve;->shape:Lcom/sun/javafx/geom/QuadCurve2D;

    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/shape/QuadCurve;->getStartY()D

    move-result-wide v2

    double-to-float v2, v2

    iput v2, v1, Lcom/sun/javafx/geom/QuadCurve2D;->y1:F

    .line 349
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/QuadCurve;->shape:Lcom/sun/javafx/geom/QuadCurve2D;

    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/shape/QuadCurve;->getControlX()D

    move-result-wide v2

    double-to-float v2, v2

    iput v2, v1, Lcom/sun/javafx/geom/QuadCurve2D;->ctrlx:F

    .line 350
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/QuadCurve;->shape:Lcom/sun/javafx/geom/QuadCurve2D;

    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/shape/QuadCurve;->getControlY()D

    move-result-wide v2

    double-to-float v2, v2

    iput v2, v1, Lcom/sun/javafx/geom/QuadCurve2D;->ctrly:F

    .line 351
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/QuadCurve;->shape:Lcom/sun/javafx/geom/QuadCurve2D;

    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/shape/QuadCurve;->getEndX()D

    move-result-wide v2

    double-to-float v2, v2

    iput v2, v1, Lcom/sun/javafx/geom/QuadCurve2D;->x2:F

    .line 352
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/QuadCurve;->shape:Lcom/sun/javafx/geom/QuadCurve2D;

    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/shape/QuadCurve;->getEndY()D

    move-result-wide v2

    double-to-float v2, v2

    iput v2, v1, Lcom/sun/javafx/geom/QuadCurve2D;->y2:F

    .line 353
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/QuadCurve;->shape:Lcom/sun/javafx/geom/QuadCurve2D;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/shape/QuadCurve;
    return-object v0
.end method

.method public bridge synthetic impl_configShape()Lcom/sun/javafx/geom/Shape;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 58
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/QuadCurve;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/shape/QuadCurve;->impl_configShape()Lcom/sun/javafx/geom/QuadCurve2D;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/shape/QuadCurve;
    return-object v0
.end method

.method protected impl_createPeer()Lcom/sun/javafx/sg/prism/NGNode;
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 337
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/QuadCurve;
    new-instance v1, Lcom/sun/javafx/sg/prism/NGQuadCurve;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Lcom/sun/javafx/sg/prism/NGQuadCurve;-><init>()V

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/shape/QuadCurve;
    return-object v0
.end method

.method public impl_updatePeer()V
    .locals 10
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 363
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/QuadCurve;
    move-object v2, v0

    invoke-super {v2}, Ljavafx/scene/shape/Shape;->impl_updatePeer()V

    .line 365
    move-object v2, v0

    sget-object v3, Lcom/sun/javafx/scene/DirtyBits;->NODE_GEOMETRY:Lcom/sun/javafx/scene/DirtyBits;

    invoke-virtual {v2, v3}, Ljavafx/scene/shape/QuadCurve;->impl_isDirty(Lcom/sun/javafx/scene/DirtyBits;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 366
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/shape/QuadCurve;->impl_getPeer()Lcom/sun/javafx/sg/prism/NGNode;

    move-result-object v2

    check-cast v2, Lcom/sun/javafx/sg/prism/NGQuadCurve;

    move-object v1, v2

    .line 367
    .local v1, "peer":Lcom/sun/javafx/sg/prism/NGQuadCurve;
    move-object v2, v1

    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/shape/QuadCurve;->getStartX()D

    move-result-wide v3

    double-to-float v3, v3

    move-object v4, v0

    .line 368
    invoke-virtual {v4}, Ljavafx/scene/shape/QuadCurve;->getStartY()D

    move-result-wide v4

    double-to-float v4, v4

    move-object v5, v0

    .line 369
    invoke-virtual {v5}, Ljavafx/scene/shape/QuadCurve;->getEndX()D

    move-result-wide v5

    double-to-float v5, v5

    move-object v6, v0

    .line 370
    invoke-virtual {v6}, Ljavafx/scene/shape/QuadCurve;->getEndY()D

    move-result-wide v6

    double-to-float v6, v6

    move-object v7, v0

    .line 371
    invoke-virtual {v7}, Ljavafx/scene/shape/QuadCurve;->getControlX()D

    move-result-wide v7

    double-to-float v7, v7

    move-object v8, v0

    .line 372
    invoke-virtual {v8}, Ljavafx/scene/shape/QuadCurve;->getControlY()D

    move-result-wide v8

    double-to-float v8, v8

    .line 367
    invoke-virtual/range {v2 .. v8}, Lcom/sun/javafx/sg/prism/NGQuadCurve;->updateQuadCurve(FFFFFF)V

    .line 374
    .end local v1    # "peer":Lcom/sun/javafx/sg/prism/NGQuadCurve;
    :cond_0
    return-void
.end method

.method public final setControlX(D)V
    .locals 7

    .prologue
    .line 196
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/QuadCurve;
    move-wide v1, p1

    .local v1, "value":D
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/shape/QuadCurve;->controlX:Ljavafx/beans/property/DoubleProperty;

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    .line 197
    return-void
.end method

.method public final setControlY(D)V
    .locals 7

    .prologue
    .line 234
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/QuadCurve;
    move-wide v1, p1

    .local v1, "value":D
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/shape/QuadCurve;->controlY:Ljavafx/beans/property/DoubleProperty;

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    .line 235
    return-void
.end method

.method public final setEndX(D)V
    .locals 9

    .prologue
    .line 255
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/shape/QuadCurve;
    move-wide v2, p1

    .local v2, "value":D
    move-object v4, v1

    iget-object v4, v4, Ljavafx/scene/shape/QuadCurve;->endX:Ljavafx/beans/property/DoubleProperty;

    if-nez v4, :cond_0

    move-wide v4, v2

    const-wide/16 v6, 0x0

    cmpl-double v4, v4, v6

    if-eqz v4, :cond_1

    .line 256
    :cond_0
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/shape/QuadCurve;->endXProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v4

    move-wide v5, v2

    invoke-virtual {v4, v5, v6}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    .line 258
    :cond_1
    return-void
.end method

.method public final setEndY(D)V
    .locals 9

    .prologue
    .line 297
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/shape/QuadCurve;
    move-wide v2, p1

    .local v2, "value":D
    move-object v4, v1

    iget-object v4, v4, Ljavafx/scene/shape/QuadCurve;->endY:Ljavafx/beans/property/DoubleProperty;

    if-nez v4, :cond_0

    move-wide v4, v2

    const-wide/16 v6, 0x0

    cmpl-double v4, v4, v6

    if-eqz v4, :cond_1

    .line 298
    :cond_0
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/shape/QuadCurve;->endYProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v4

    move-wide v5, v2

    invoke-virtual {v4, v5, v6}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    .line 300
    :cond_1
    return-void
.end method

.method public final setStartX(D)V
    .locals 9

    .prologue
    .line 95
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/shape/QuadCurve;
    move-wide v2, p1

    .local v2, "value":D
    move-object v4, v1

    iget-object v4, v4, Ljavafx/scene/shape/QuadCurve;->startX:Ljavafx/beans/property/DoubleProperty;

    if-nez v4, :cond_0

    move-wide v4, v2

    const-wide/16 v6, 0x0

    cmpl-double v4, v4, v6

    if-eqz v4, :cond_1

    .line 96
    :cond_0
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/shape/QuadCurve;->startXProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v4

    move-wide v5, v2

    invoke-virtual {v4, v5, v6}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    .line 98
    :cond_1
    return-void
.end method

.method public final setStartY(D)V
    .locals 9

    .prologue
    .line 137
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/shape/QuadCurve;
    move-wide v2, p1

    .local v2, "value":D
    move-object v4, v1

    iget-object v4, v4, Ljavafx/scene/shape/QuadCurve;->startY:Ljavafx/beans/property/DoubleProperty;

    if-nez v4, :cond_0

    move-wide v4, v2

    const-wide/16 v6, 0x0

    cmpl-double v4, v4, v6

    if-eqz v4, :cond_1

    .line 138
    :cond_0
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/shape/QuadCurve;->startYProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v4

    move-wide v5, v2

    invoke-virtual {v4, v5, v6}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    .line 140
    :cond_1
    return-void
.end method

.method public final startXProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 6

    .prologue
    .line 105
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/QuadCurve;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/QuadCurve;->startX:Ljavafx/beans/property/DoubleProperty;

    if-nez v1, :cond_0

    .line 106
    move-object v1, v0

    new-instance v2, Ljavafx/scene/shape/QuadCurve$1;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/shape/QuadCurve$1;-><init>(Ljavafx/scene/shape/QuadCurve;)V

    iput-object v2, v1, Ljavafx/scene/shape/QuadCurve;->startX:Ljavafx/beans/property/DoubleProperty;

    .line 125
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/QuadCurve;->startX:Ljavafx/beans/property/DoubleProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/shape/QuadCurve;
    return-object v0
.end method

.method public final startYProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 6

    .prologue
    .line 147
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/QuadCurve;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/QuadCurve;->startY:Ljavafx/beans/property/DoubleProperty;

    if-nez v1, :cond_0

    .line 148
    move-object v1, v0

    new-instance v2, Ljavafx/scene/shape/QuadCurve$2;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/shape/QuadCurve$2;-><init>(Ljavafx/scene/shape/QuadCurve;)V

    iput-object v2, v1, Ljavafx/scene/shape/QuadCurve;->startY:Ljavafx/beans/property/DoubleProperty;

    .line 167
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/QuadCurve;->startY:Ljavafx/beans/property/DoubleProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/shape/QuadCurve;
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 9

    .prologue
    .line 382
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/shape/QuadCurve;
    new-instance v5, Ljava/lang/StringBuilder;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    const-string v7, "QuadCurve["

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v2, v5

    .line 384
    .local v2, "sb":Ljava/lang/StringBuilder;
    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/scene/shape/QuadCurve;->getId()Ljava/lang/String;

    move-result-object v5

    move-object v3, v5

    .line 385
    .local v3, "id":Ljava/lang/String;
    move-object v5, v3

    if-eqz v5, :cond_0

    .line 386
    move-object v5, v2

    const-string v6, "id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 389
    :cond_0
    move-object v5, v2

    const-string v6, "startX="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/shape/QuadCurve;->getStartX()D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 390
    move-object v5, v2

    const-string v6, ", startY="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/shape/QuadCurve;->getStartY()D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 391
    move-object v5, v2

    const-string v6, ", controlX="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/shape/QuadCurve;->getControlX()D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 392
    move-object v5, v2

    const-string v6, ", controlY="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/shape/QuadCurve;->getControlY()D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 393
    move-object v5, v2

    const-string v6, ", endX="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/shape/QuadCurve;->getEndX()D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 394
    move-object v5, v2

    const-string v6, ", endY="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/shape/QuadCurve;->getEndY()D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 396
    move-object v5, v2

    const-string v6, ", fill="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/shape/QuadCurve;->getFill()Ljavafx/scene/paint/Paint;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 398
    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/scene/shape/QuadCurve;->getStroke()Ljavafx/scene/paint/Paint;

    move-result-object v5

    move-object v4, v5

    .line 399
    .local v4, "stroke":Ljavafx/scene/paint/Paint;
    move-object v5, v4

    if-eqz v5, :cond_1

    .line 400
    move-object v5, v2

    const-string v6, ", stroke="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v4

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 401
    move-object v5, v2

    const-string v6, ", strokeWidth="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/shape/QuadCurve;->getStrokeWidth()D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 404
    :cond_1
    move-object v5, v2

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v1, v5

    .end local v1    # "this":Ljavafx/scene/shape/QuadCurve;
    return-object v1
.end method
