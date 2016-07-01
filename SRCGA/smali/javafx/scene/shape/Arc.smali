.class public Ljavafx/scene/shape/Arc;
.super Ljavafx/scene/shape/Shape;
.source "Arc.java"


# instance fields
.field private centerX:Ljavafx/beans/property/DoubleProperty;

.field private centerY:Ljavafx/beans/property/DoubleProperty;

.field private final length:Ljavafx/beans/property/DoubleProperty;

.field private final radiusX:Ljavafx/beans/property/DoubleProperty;

.field private final radiusY:Ljavafx/beans/property/DoubleProperty;

.field private final shape:Lcom/sun/javafx/geom/Arc2D;

.field private startAngle:Ljavafx/beans/property/DoubleProperty;

.field private type:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/scene/shape/ArcType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    .line 70
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/Arc;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/shape/Shape;-><init>()V

    .line 65
    move-object v1, v0

    new-instance v2, Lcom/sun/javafx/geom/Arc2D;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    invoke-direct {v3}, Lcom/sun/javafx/geom/Arc2D;-><init>()V

    iput-object v2, v1, Ljavafx/scene/shape/Arc;->shape:Lcom/sun/javafx/geom/Arc2D;

    .line 181
    move-object v1, v0

    new-instance v2, Ljavafx/scene/shape/Arc$3;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/shape/Arc$3;-><init>(Ljavafx/scene/shape/Arc;)V

    iput-object v2, v1, Ljavafx/scene/shape/Arc;->radiusX:Ljavafx/beans/property/DoubleProperty;

    .line 218
    move-object v1, v0

    new-instance v2, Ljavafx/scene/shape/Arc$4;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/shape/Arc$4;-><init>(Ljavafx/scene/shape/Arc;)V

    iput-object v2, v1, Ljavafx/scene/shape/Arc;->radiusY:Ljavafx/beans/property/DoubleProperty;

    .line 295
    move-object v1, v0

    new-instance v2, Ljavafx/scene/shape/Arc$6;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/shape/Arc$6;-><init>(Ljavafx/scene/shape/Arc;)V

    iput-object v2, v1, Ljavafx/scene/shape/Arc;->length:Ljavafx/beans/property/DoubleProperty;

    .line 71
    return-void
.end method

.method public constructor <init>(DDDDDD)V
    .locals 19

    .prologue
    .line 84
    move-object/from16 v0, p0

    .local v0, "this":Ljavafx/scene/shape/Arc;
    move-wide/from16 v1, p1

    .local v1, "centerX":D
    move-wide/from16 v3, p3

    .local v3, "centerY":D
    move-wide/from16 v5, p5

    .local v5, "radiusX":D
    move-wide/from16 v7, p7

    .local v7, "radiusY":D
    move-wide/from16 v9, p9

    .local v9, "startAngle":D
    move-wide/from16 v11, p11

    .local v11, "length":D
    move-object v13, v0

    invoke-direct {v13}, Ljavafx/scene/shape/Shape;-><init>()V

    .line 65
    move-object v13, v0

    new-instance v14, Lcom/sun/javafx/geom/Arc2D;

    move-object/from16 v17, v14

    move-object/from16 v14, v17

    move-object/from16 v15, v17

    invoke-direct {v15}, Lcom/sun/javafx/geom/Arc2D;-><init>()V

    iput-object v14, v13, Ljavafx/scene/shape/Arc;->shape:Lcom/sun/javafx/geom/Arc2D;

    .line 181
    move-object v13, v0

    new-instance v14, Ljavafx/scene/shape/Arc$3;

    move-object/from16 v17, v14

    move-object/from16 v14, v17

    move-object/from16 v15, v17

    move-object/from16 v16, v0

    invoke-direct/range {v15 .. v16}, Ljavafx/scene/shape/Arc$3;-><init>(Ljavafx/scene/shape/Arc;)V

    iput-object v14, v13, Ljavafx/scene/shape/Arc;->radiusX:Ljavafx/beans/property/DoubleProperty;

    .line 218
    move-object v13, v0

    new-instance v14, Ljavafx/scene/shape/Arc$4;

    move-object/from16 v17, v14

    move-object/from16 v14, v17

    move-object/from16 v15, v17

    move-object/from16 v16, v0

    invoke-direct/range {v15 .. v16}, Ljavafx/scene/shape/Arc$4;-><init>(Ljavafx/scene/shape/Arc;)V

    iput-object v14, v13, Ljavafx/scene/shape/Arc;->radiusY:Ljavafx/beans/property/DoubleProperty;

    .line 295
    move-object v13, v0

    new-instance v14, Ljavafx/scene/shape/Arc$6;

    move-object/from16 v17, v14

    move-object/from16 v14, v17

    move-object/from16 v15, v17

    move-object/from16 v16, v0

    invoke-direct/range {v15 .. v16}, Ljavafx/scene/shape/Arc$6;-><init>(Ljavafx/scene/shape/Arc;)V

    iput-object v14, v13, Ljavafx/scene/shape/Arc;->length:Ljavafx/beans/property/DoubleProperty;

    .line 85
    move-object v13, v0

    move-wide v14, v1

    invoke-virtual {v13, v14, v15}, Ljavafx/scene/shape/Arc;->setCenterX(D)V

    .line 86
    move-object v13, v0

    move-wide v14, v3

    invoke-virtual {v13, v14, v15}, Ljavafx/scene/shape/Arc;->setCenterY(D)V

    .line 87
    move-object v13, v0

    move-wide v14, v5

    invoke-virtual {v13, v14, v15}, Ljavafx/scene/shape/Arc;->setRadiusX(D)V

    .line 88
    move-object v13, v0

    move-wide v14, v7

    invoke-virtual {v13, v14, v15}, Ljavafx/scene/shape/Arc;->setRadiusY(D)V

    .line 89
    move-object v13, v0

    move-wide v14, v9

    invoke-virtual {v13, v14, v15}, Ljavafx/scene/shape/Arc;->setStartAngle(D)V

    .line 90
    move-object v13, v0

    move-wide v14, v11

    invoke-virtual {v13, v14, v15}, Ljavafx/scene/shape/Arc;->setLength(D)V

    .line 91
    return-void
.end method

.method static synthetic access$000(Ljavafx/scene/shape/Arc;)V
    .locals 2

    .prologue
    .line 63
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/shape/Arc;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/shape/Arc;->impl_geomChanged()V

    return-void
.end method

.method static synthetic access$100(Ljavafx/scene/shape/Arc;)V
    .locals 2

    .prologue
    .line 63
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/shape/Arc;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/shape/Arc;->impl_geomChanged()V

    return-void
.end method

.method static synthetic access$200(Ljavafx/scene/shape/Arc;)V
    .locals 2

    .prologue
    .line 63
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/shape/Arc;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/shape/Arc;->impl_geomChanged()V

    return-void
.end method

.method static synthetic access$300(Ljavafx/scene/shape/Arc;)V
    .locals 2

    .prologue
    .line 63
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/shape/Arc;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/shape/Arc;->impl_geomChanged()V

    return-void
.end method

.method static synthetic access$400(Ljavafx/scene/shape/Arc;)V
    .locals 2

    .prologue
    .line 63
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/shape/Arc;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/shape/Arc;->impl_geomChanged()V

    return-void
.end method

.method static synthetic access$500(Ljavafx/scene/shape/Arc;)V
    .locals 2

    .prologue
    .line 63
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/shape/Arc;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/shape/Arc;->impl_geomChanged()V

    return-void
.end method

.method static synthetic access$600(Ljavafx/scene/shape/Arc;)V
    .locals 2

    .prologue
    .line 63
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/shape/Arc;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/shape/Arc;->impl_geomChanged()V

    return-void
.end method

.method private final getTypeInternal()Ljavafx/scene/shape/ArcType;
    .locals 3

    .prologue
    .line 411
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/Arc;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/shape/Arc;->getType()Ljavafx/scene/shape/ArcType;

    move-result-object v2

    move-object v1, v2

    .line 412
    .local v1, "t":Ljavafx/scene/shape/ArcType;
    move-object v2, v1

    if-nez v2, :cond_0

    sget-object v2, Ljavafx/scene/shape/ArcType;->OPEN:Ljavafx/scene/shape/ArcType;

    :goto_0
    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/shape/Arc;
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/shape/Arc;
    :cond_0
    move-object v2, v1

    goto :goto_0
.end method


# virtual methods
.method public final centerXProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 6

    .prologue
    .line 111
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/Arc;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/Arc;->centerX:Ljavafx/beans/property/DoubleProperty;

    if-nez v1, :cond_0

    .line 112
    move-object v1, v0

    new-instance v2, Ljavafx/scene/shape/Arc$1;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/shape/Arc$1;-><init>(Ljavafx/scene/shape/Arc;)V

    iput-object v2, v1, Ljavafx/scene/shape/Arc;->centerX:Ljavafx/beans/property/DoubleProperty;

    .line 131
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/Arc;->centerX:Ljavafx/beans/property/DoubleProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/shape/Arc;
    return-object v0
.end method

.method public final centerYProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 6

    .prologue
    .line 152
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/Arc;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/Arc;->centerY:Ljavafx/beans/property/DoubleProperty;

    if-nez v1, :cond_0

    .line 153
    move-object v1, v0

    new-instance v2, Ljavafx/scene/shape/Arc$2;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/shape/Arc$2;-><init>(Ljavafx/scene/shape/Arc;)V

    iput-object v2, v1, Ljavafx/scene/shape/Arc;->centerY:Ljavafx/beans/property/DoubleProperty;

    .line 172
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/Arc;->centerY:Ljavafx/beans/property/DoubleProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/shape/Arc;
    return-object v0
.end method

.method public final getCenterX()D
    .locals 4

    .prologue
    .line 107
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/shape/Arc;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/shape/Arc;->centerX:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    const-wide/16 v2, 0x0

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Ljavafx/scene/shape/Arc;
    return-wide v1

    .restart local v1    # "this":Ljavafx/scene/shape/Arc;
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/shape/Arc;->centerX:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v2}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v2

    goto :goto_0
.end method

.method public final getCenterY()D
    .locals 4

    .prologue
    .line 148
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/shape/Arc;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/shape/Arc;->centerY:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    const-wide/16 v2, 0x0

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Ljavafx/scene/shape/Arc;
    return-wide v1

    .restart local v1    # "this":Ljavafx/scene/shape/Arc;
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/shape/Arc;->centerY:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v2}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v2

    goto :goto_0
.end method

.method public final getLength()D
    .locals 3

    .prologue
    .line 319
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/Arc;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/Arc;->length:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v1

    move-wide v0, v1

    .end local v0    # "this":Ljavafx/scene/shape/Arc;
    return-wide v0
.end method

.method public final getRadiusX()D
    .locals 3

    .prologue
    .line 205
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/Arc;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/Arc;->radiusX:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v1

    move-wide v0, v1

    .end local v0    # "this":Ljavafx/scene/shape/Arc;
    return-wide v0
.end method

.method public final getRadiusY()D
    .locals 3

    .prologue
    .line 242
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/Arc;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/Arc;->radiusY:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v1

    move-wide v0, v1

    .end local v0    # "this":Ljavafx/scene/shape/Arc;
    return-wide v0
.end method

.method public final getStartAngle()D
    .locals 4

    .prologue
    .line 263
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/shape/Arc;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/shape/Arc;->startAngle:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    const-wide/16 v2, 0x0

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Ljavafx/scene/shape/Arc;
    return-wide v1

    .restart local v1    # "this":Ljavafx/scene/shape/Arc;
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/shape/Arc;->startAngle:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v2}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v2

    goto :goto_0
.end method

.method public final getType()Ljavafx/scene/shape/ArcType;
    .locals 2

    .prologue
    .line 343
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/Arc;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/Arc;->type:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    sget-object v1, Ljavafx/scene/shape/ArcType;->OPEN:Ljavafx/scene/shape/ArcType;

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/shape/Arc;
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/shape/Arc;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/Arc;->type:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/scene/shape/ArcType;

    goto :goto_0
.end method

.method public impl_configShape()Lcom/sun/javafx/geom/Arc2D;
    .locals 10
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 386
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/Arc;
    sget-object v2, Ljavafx/scene/shape/Arc$8;->$SwitchMap$javafx$scene$shape$ArcType:[I

    move-object v3, v0

    invoke-direct {v3}, Ljavafx/scene/shape/Arc;->getTypeInternal()Ljavafx/scene/shape/ArcType;

    move-result-object v3

    invoke-virtual {v3}, Ljavafx/scene/shape/ArcType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 394
    const/4 v2, 0x2

    move v1, v2

    .line 398
    .local v1, "tmpType":S
    :goto_0
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/shape/Arc;->shape:Lcom/sun/javafx/geom/Arc2D;

    move-object v3, v0

    .line 399
    invoke-virtual {v3}, Ljavafx/scene/shape/Arc;->getCenterX()D

    move-result-wide v3

    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/shape/Arc;->getRadiusX()D

    move-result-wide v5

    sub-double/2addr v3, v5

    double-to-float v3, v3

    move-object v4, v0

    .line 400
    invoke-virtual {v4}, Ljavafx/scene/shape/Arc;->getCenterY()D

    move-result-wide v4

    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/scene/shape/Arc;->getRadiusY()D

    move-result-wide v6

    sub-double/2addr v4, v6

    double-to-float v4, v4

    move-object v5, v0

    .line 401
    invoke-virtual {v5}, Ljavafx/scene/shape/Arc;->getRadiusX()D

    move-result-wide v5

    const-wide/high16 v7, 0x4000000000000000L    # 2.0

    mul-double/2addr v5, v7

    double-to-float v5, v5

    move-object v6, v0

    .line 402
    invoke-virtual {v6}, Ljavafx/scene/shape/Arc;->getRadiusY()D

    move-result-wide v6

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    mul-double/2addr v6, v8

    double-to-float v6, v6

    move-object v7, v0

    .line 403
    invoke-virtual {v7}, Ljavafx/scene/shape/Arc;->getStartAngle()D

    move-result-wide v7

    double-to-float v7, v7

    move-object v8, v0

    .line 404
    invoke-virtual {v8}, Ljavafx/scene/shape/Arc;->getLength()D

    move-result-wide v8

    double-to-float v8, v8

    move v9, v1

    .line 398
    invoke-virtual/range {v2 .. v9}, Lcom/sun/javafx/geom/Arc2D;->setArc(FFFFFFI)V

    .line 407
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/shape/Arc;->shape:Lcom/sun/javafx/geom/Arc2D;

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/shape/Arc;
    return-object v0

    .line 388
    .end local v1    # "tmpType":S
    .restart local v0    # "this":Ljavafx/scene/shape/Arc;
    :pswitch_0
    const/4 v2, 0x0

    move v1, v2

    .line 389
    .restart local v1    # "tmpType":S
    goto :goto_0

    .line 391
    .end local v1    # "tmpType":S
    :pswitch_1
    const/4 v2, 0x1

    move v1, v2

    .line 392
    .restart local v1    # "tmpType":S
    goto :goto_0

    .line 386
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public bridge synthetic impl_configShape()Lcom/sun/javafx/geom/Shape;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 63
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/Arc;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/shape/Arc;->impl_configShape()Lcom/sun/javafx/geom/Arc2D;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/shape/Arc;
    return-object v0
.end method

.method protected impl_createPeer()Lcom/sun/javafx/sg/prism/NGNode;
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 376
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/Arc;
    new-instance v1, Lcom/sun/javafx/sg/prism/NGArc;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Lcom/sun/javafx/sg/prism/NGArc;-><init>()V

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/shape/Arc;
    return-object v0
.end method

.method public impl_updatePeer()V
    .locals 10
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 421
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/Arc;
    move-object v2, v0

    invoke-super {v2}, Ljavafx/scene/shape/Shape;->impl_updatePeer()V

    .line 423
    move-object v2, v0

    sget-object v3, Lcom/sun/javafx/scene/DirtyBits;->NODE_GEOMETRY:Lcom/sun/javafx/scene/DirtyBits;

    invoke-virtual {v2, v3}, Ljavafx/scene/shape/Arc;->impl_isDirty(Lcom/sun/javafx/scene/DirtyBits;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 424
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/shape/Arc;->impl_getPeer()Lcom/sun/javafx/sg/prism/NGNode;

    move-result-object v2

    check-cast v2, Lcom/sun/javafx/sg/prism/NGArc;

    move-object v1, v2

    .line 425
    .local v1, "peer":Lcom/sun/javafx/sg/prism/NGArc;
    move-object v2, v1

    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/shape/Arc;->getCenterX()D

    move-result-wide v3

    double-to-float v3, v3

    move-object v4, v0

    .line 426
    invoke-virtual {v4}, Ljavafx/scene/shape/Arc;->getCenterY()D

    move-result-wide v4

    double-to-float v4, v4

    move-object v5, v0

    .line 427
    invoke-virtual {v5}, Ljavafx/scene/shape/Arc;->getRadiusX()D

    move-result-wide v5

    double-to-float v5, v5

    move-object v6, v0

    .line 428
    invoke-virtual {v6}, Ljavafx/scene/shape/Arc;->getRadiusY()D

    move-result-wide v6

    double-to-float v6, v6

    move-object v7, v0

    .line 429
    invoke-virtual {v7}, Ljavafx/scene/shape/Arc;->getStartAngle()D

    move-result-wide v7

    double-to-float v7, v7

    move-object v8, v0

    .line 430
    invoke-virtual {v8}, Ljavafx/scene/shape/Arc;->getLength()D

    move-result-wide v8

    double-to-float v8, v8

    move-object v9, v0

    .line 431
    invoke-direct {v9}, Ljavafx/scene/shape/Arc;->getTypeInternal()Ljavafx/scene/shape/ArcType;

    move-result-object v9

    .line 425
    invoke-virtual/range {v2 .. v9}, Lcom/sun/javafx/sg/prism/NGArc;->updateArc(FFFFFFLjavafx/scene/shape/ArcType;)V

    .line 433
    .end local v1    # "peer":Lcom/sun/javafx/sg/prism/NGArc;
    :cond_0
    return-void
.end method

.method public final lengthProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 2

    .prologue
    .line 323
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/Arc;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/Arc;->length:Ljavafx/beans/property/DoubleProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/shape/Arc;
    return-object v0
.end method

.method public final radiusXProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 2

    .prologue
    .line 209
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/Arc;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/Arc;->radiusX:Ljavafx/beans/property/DoubleProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/shape/Arc;
    return-object v0
.end method

.method public final radiusYProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 2

    .prologue
    .line 246
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/Arc;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/Arc;->radiusY:Ljavafx/beans/property/DoubleProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/shape/Arc;
    return-object v0
.end method

.method public final setCenterX(D)V
    .locals 9

    .prologue
    .line 101
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/shape/Arc;
    move-wide v2, p1

    .local v2, "value":D
    move-object v4, v1

    iget-object v4, v4, Ljavafx/scene/shape/Arc;->centerX:Ljavafx/beans/property/DoubleProperty;

    if-nez v4, :cond_0

    move-wide v4, v2

    const-wide/16 v6, 0x0

    cmpl-double v4, v4, v6

    if-eqz v4, :cond_1

    .line 102
    :cond_0
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/shape/Arc;->centerXProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v4

    move-wide v5, v2

    invoke-virtual {v4, v5, v6}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    .line 104
    :cond_1
    return-void
.end method

.method public final setCenterY(D)V
    .locals 9

    .prologue
    .line 142
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/shape/Arc;
    move-wide v2, p1

    .local v2, "value":D
    move-object v4, v1

    iget-object v4, v4, Ljavafx/scene/shape/Arc;->centerY:Ljavafx/beans/property/DoubleProperty;

    if-nez v4, :cond_0

    move-wide v4, v2

    const-wide/16 v6, 0x0

    cmpl-double v4, v4, v6

    if-eqz v4, :cond_1

    .line 143
    :cond_0
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/shape/Arc;->centerYProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v4

    move-wide v5, v2

    invoke-virtual {v4, v5, v6}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    .line 145
    :cond_1
    return-void
.end method

.method public final setLength(D)V
    .locals 7

    .prologue
    .line 315
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/Arc;
    move-wide v1, p1

    .local v1, "value":D
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/shape/Arc;->length:Ljavafx/beans/property/DoubleProperty;

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    .line 316
    return-void
.end method

.method public final setRadiusX(D)V
    .locals 7

    .prologue
    .line 201
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/Arc;
    move-wide v1, p1

    .local v1, "value":D
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/shape/Arc;->radiusX:Ljavafx/beans/property/DoubleProperty;

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    .line 202
    return-void
.end method

.method public final setRadiusY(D)V
    .locals 7

    .prologue
    .line 238
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/Arc;
    move-wide v1, p1

    .local v1, "value":D
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/shape/Arc;->radiusY:Ljavafx/beans/property/DoubleProperty;

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    .line 239
    return-void
.end method

.method public final setStartAngle(D)V
    .locals 9

    .prologue
    .line 257
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/shape/Arc;
    move-wide v2, p1

    .local v2, "value":D
    move-object v4, v1

    iget-object v4, v4, Ljavafx/scene/shape/Arc;->startAngle:Ljavafx/beans/property/DoubleProperty;

    if-nez v4, :cond_0

    move-wide v4, v2

    const-wide/16 v6, 0x0

    cmpl-double v4, v4, v6

    if-eqz v4, :cond_1

    .line 258
    :cond_0
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/shape/Arc;->startAngleProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v4

    move-wide v5, v2

    invoke-virtual {v4, v5, v6}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    .line 260
    :cond_1
    return-void
.end method

.method public final setType(Ljavafx/scene/shape/ArcType;)V
    .locals 4

    .prologue
    .line 337
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/Arc;
    move-object v1, p1

    .local v1, "value":Ljavafx/scene/shape/ArcType;
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/shape/Arc;->type:Ljavafx/beans/property/ObjectProperty;

    if-nez v2, :cond_0

    move-object v2, v1

    sget-object v3, Ljavafx/scene/shape/ArcType;->OPEN:Ljavafx/scene/shape/ArcType;

    if-eq v2, v3, :cond_1

    .line 338
    :cond_0
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/shape/Arc;->typeProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 340
    :cond_1
    return-void
.end method

.method public final startAngleProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 6

    .prologue
    .line 267
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/Arc;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/Arc;->startAngle:Ljavafx/beans/property/DoubleProperty;

    if-nez v1, :cond_0

    .line 268
    move-object v1, v0

    new-instance v2, Ljavafx/scene/shape/Arc$5;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/shape/Arc$5;-><init>(Ljavafx/scene/shape/Arc;)V

    iput-object v2, v1, Ljavafx/scene/shape/Arc;->startAngle:Ljavafx/beans/property/DoubleProperty;

    .line 287
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/Arc;->startAngle:Ljavafx/beans/property/DoubleProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/shape/Arc;
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 9

    .prologue
    .line 441
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/shape/Arc;
    new-instance v5, Ljava/lang/StringBuilder;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    const-string v7, "Arc["

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v2, v5

    .line 443
    .local v2, "sb":Ljava/lang/StringBuilder;
    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/scene/shape/Arc;->getId()Ljava/lang/String;

    move-result-object v5

    move-object v3, v5

    .line 444
    .local v3, "id":Ljava/lang/String;
    move-object v5, v3

    if-eqz v5, :cond_0

    .line 445
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

    .line 448
    :cond_0
    move-object v5, v2

    const-string v6, "centerX="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/shape/Arc;->getCenterX()D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 449
    move-object v5, v2

    const-string v6, ", centerY="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/shape/Arc;->getCenterY()D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 450
    move-object v5, v2

    const-string v6, ", radiusX="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/shape/Arc;->getRadiusX()D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 451
    move-object v5, v2

    const-string v6, ", radiusY="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/shape/Arc;->getRadiusY()D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 452
    move-object v5, v2

    const-string v6, ", startAngle="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/shape/Arc;->getStartAngle()D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 453
    move-object v5, v2

    const-string v6, ", length="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/shape/Arc;->getLength()D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 454
    move-object v5, v2

    const-string v6, ", type="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/shape/Arc;->getType()Ljavafx/scene/shape/ArcType;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 456
    move-object v5, v2

    const-string v6, ", fill="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/shape/Arc;->getFill()Ljavafx/scene/paint/Paint;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 458
    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/scene/shape/Arc;->getStroke()Ljavafx/scene/paint/Paint;

    move-result-object v5

    move-object v4, v5

    .line 459
    .local v4, "stroke":Ljavafx/scene/paint/Paint;
    move-object v5, v4

    if-eqz v5, :cond_1

    .line 460
    move-object v5, v2

    const-string v6, ", stroke="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v4

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 461
    move-object v5, v2

    const-string v6, ", strokeWidth="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/shape/Arc;->getStrokeWidth()D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 464
    :cond_1
    move-object v5, v2

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v1, v5

    .end local v1    # "this":Ljavafx/scene/shape/Arc;
    return-object v1
.end method

.method public final typeProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/scene/shape/ArcType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 347
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/Arc;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/Arc;->type:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    .line 348
    move-object v1, v0

    new-instance v2, Ljavafx/scene/shape/Arc$7;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    sget-object v5, Ljavafx/scene/shape/ArcType;->OPEN:Ljavafx/scene/shape/ArcType;

    invoke-direct {v3, v4, v5}, Ljavafx/scene/shape/Arc$7;-><init>(Ljavafx/scene/shape/Arc;Ljavafx/scene/shape/ArcType;)V

    iput-object v2, v1, Ljavafx/scene/shape/Arc;->type:Ljavafx/beans/property/ObjectProperty;

    .line 367
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/Arc;->type:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/shape/Arc;
    return-object v0
.end method
