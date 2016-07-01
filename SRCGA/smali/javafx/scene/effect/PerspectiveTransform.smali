.class public Ljavafx/scene/effect/PerspectiveTransform;
.super Ljavafx/scene/effect/Effect;
.source "PerspectiveTransform.java"


# instance fields
.field private devcoords:[F

.field private input:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/scene/effect/Effect;",
            ">;"
        }
    .end annotation
.end field

.field private llx:Ljavafx/beans/property/DoubleProperty;

.field private lly:Ljavafx/beans/property/DoubleProperty;

.field private lrx:Ljavafx/beans/property/DoubleProperty;

.field private lry:Ljavafx/beans/property/DoubleProperty;

.field private ulx:Ljavafx/beans/property/DoubleProperty;

.field private uly:Ljavafx/beans/property/DoubleProperty;

.field private urx:Ljavafx/beans/property/DoubleProperty;

.field private ury:Ljavafx/beans/property/DoubleProperty;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 99
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/PerspectiveTransform;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/effect/Effect;-><init>()V

    .line 503
    move-object v1, v0

    const/16 v2, 0x8

    new-array v2, v2, [F

    iput-object v2, v1, Ljavafx/scene/effect/PerspectiveTransform;->devcoords:[F

    .line 99
    return-void
.end method

.method public constructor <init>(DDDDDDDD)V
    .locals 23

    .prologue
    .line 117
    move-object/from16 v2, p0

    .local v2, "this":Ljavafx/scene/effect/PerspectiveTransform;
    move-wide/from16 v3, p1

    .local v3, "ulx":D
    move-wide/from16 v5, p3

    .local v5, "uly":D
    move-wide/from16 v7, p5

    .local v7, "urx":D
    move-wide/from16 v9, p7

    .local v9, "ury":D
    move-wide/from16 v11, p9

    .local v11, "lrx":D
    move-wide/from16 v13, p11

    .local v13, "lry":D
    move-wide/from16 v15, p13

    .local v15, "llx":D
    move-wide/from16 v17, p15

    .local v17, "lly":D
    move-object/from16 v19, v2

    invoke-direct/range {v19 .. v19}, Ljavafx/scene/effect/Effect;-><init>()V

    .line 503
    move-object/from16 v19, v2

    const/16 v20, 0x8

    move/from16 v0, v20

    new-array v0, v0, [F

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Ljavafx/scene/effect/PerspectiveTransform;->devcoords:[F

    .line 118
    move-object/from16 v19, v2

    move-wide/from16 v20, v3

    invoke-virtual/range {v19 .. v21}, Ljavafx/scene/effect/PerspectiveTransform;->setUlx(D)V

    move-object/from16 v19, v2

    move-wide/from16 v20, v5

    invoke-virtual/range {v19 .. v21}, Ljavafx/scene/effect/PerspectiveTransform;->setUly(D)V

    .line 119
    move-object/from16 v19, v2

    move-wide/from16 v20, v7

    invoke-virtual/range {v19 .. v21}, Ljavafx/scene/effect/PerspectiveTransform;->setUrx(D)V

    move-object/from16 v19, v2

    move-wide/from16 v20, v9

    invoke-virtual/range {v19 .. v21}, Ljavafx/scene/effect/PerspectiveTransform;->setUry(D)V

    .line 120
    move-object/from16 v19, v2

    move-wide/from16 v20, v15

    invoke-virtual/range {v19 .. v21}, Ljavafx/scene/effect/PerspectiveTransform;->setLlx(D)V

    move-object/from16 v19, v2

    move-wide/from16 v20, v17

    invoke-virtual/range {v19 .. v21}, Ljavafx/scene/effect/PerspectiveTransform;->setLly(D)V

    .line 121
    move-object/from16 v19, v2

    move-wide/from16 v20, v11

    invoke-virtual/range {v19 .. v21}, Ljavafx/scene/effect/PerspectiveTransform;->setLrx(D)V

    move-object/from16 v19, v2

    move-wide/from16 v20, v13

    invoke-virtual/range {v19 .. v21}, Ljavafx/scene/effect/PerspectiveTransform;->setLry(D)V

    .line 122
    return-void
.end method

.method private setupDevCoords(Lcom/sun/javafx/geom/transform/BaseTransform;)V
    .locals 8

    .prologue
    .line 531
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/PerspectiveTransform;
    move-object v1, p1

    .local v1, "transform":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/effect/PerspectiveTransform;->devcoords:[F

    const/4 v3, 0x0

    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/effect/PerspectiveTransform;->getUlx()D

    move-result-wide v4

    double-to-float v4, v4

    aput v4, v2, v3

    .line 532
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/effect/PerspectiveTransform;->devcoords:[F

    const/4 v3, 0x1

    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/effect/PerspectiveTransform;->getUly()D

    move-result-wide v4

    double-to-float v4, v4

    aput v4, v2, v3

    .line 533
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/effect/PerspectiveTransform;->devcoords:[F

    const/4 v3, 0x2

    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/effect/PerspectiveTransform;->getUrx()D

    move-result-wide v4

    double-to-float v4, v4

    aput v4, v2, v3

    .line 534
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/effect/PerspectiveTransform;->devcoords:[F

    const/4 v3, 0x3

    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/effect/PerspectiveTransform;->getUry()D

    move-result-wide v4

    double-to-float v4, v4

    aput v4, v2, v3

    .line 535
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/effect/PerspectiveTransform;->devcoords:[F

    const/4 v3, 0x4

    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/effect/PerspectiveTransform;->getLrx()D

    move-result-wide v4

    double-to-float v4, v4

    aput v4, v2, v3

    .line 536
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/effect/PerspectiveTransform;->devcoords:[F

    const/4 v3, 0x5

    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/effect/PerspectiveTransform;->getLry()D

    move-result-wide v4

    double-to-float v4, v4

    aput v4, v2, v3

    .line 537
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/effect/PerspectiveTransform;->devcoords:[F

    const/4 v3, 0x6

    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/effect/PerspectiveTransform;->getLlx()D

    move-result-wide v4

    double-to-float v4, v4

    aput v4, v2, v3

    .line 538
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/effect/PerspectiveTransform;->devcoords:[F

    const/4 v3, 0x7

    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/effect/PerspectiveTransform;->getLly()D

    move-result-wide v4

    double-to-float v4, v4

    aput v4, v2, v3

    .line 539
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/effect/PerspectiveTransform;->devcoords:[F

    const/4 v4, 0x0

    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/effect/PerspectiveTransform;->devcoords:[F

    const/4 v6, 0x0

    const/4 v7, 0x4

    invoke-virtual/range {v2 .. v7}, Lcom/sun/javafx/geom/transform/BaseTransform;->transform([FI[FII)V

    .line 540
    return-void
.end method

.method private updateXform()V
    .locals 11

    .prologue
    .line 125
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/PerspectiveTransform;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/effect/PerspectiveTransform;->impl_getImpl()Lcom/sun/scenario/effect/Effect;

    move-result-object v1

    check-cast v1, Lcom/sun/scenario/effect/PerspectiveTransform;

    move-object v2, v0

    .line 126
    invoke-virtual {v2}, Ljavafx/scene/effect/PerspectiveTransform;->getUlx()D

    move-result-wide v2

    double-to-float v2, v2

    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/effect/PerspectiveTransform;->getUly()D

    move-result-wide v3

    double-to-float v3, v3

    move-object v4, v0

    .line 127
    invoke-virtual {v4}, Ljavafx/scene/effect/PerspectiveTransform;->getUrx()D

    move-result-wide v4

    double-to-float v4, v4

    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/effect/PerspectiveTransform;->getUry()D

    move-result-wide v5

    double-to-float v5, v5

    move-object v6, v0

    .line 128
    invoke-virtual {v6}, Ljavafx/scene/effect/PerspectiveTransform;->getLrx()D

    move-result-wide v6

    double-to-float v6, v6

    move-object v7, v0

    invoke-virtual {v7}, Ljavafx/scene/effect/PerspectiveTransform;->getLry()D

    move-result-wide v7

    double-to-float v7, v7

    move-object v8, v0

    .line 129
    invoke-virtual {v8}, Ljavafx/scene/effect/PerspectiveTransform;->getLlx()D

    move-result-wide v8

    double-to-float v8, v8

    move-object v9, v0

    invoke-virtual {v9}, Ljavafx/scene/effect/PerspectiveTransform;->getLly()D

    move-result-wide v9

    double-to-float v9, v9

    .line 125
    invoke-virtual/range {v1 .. v9}, Lcom/sun/scenario/effect/PerspectiveTransform;->setQuadMapping(FFFFFFFF)V

    .line 130
    return-void
.end method


# virtual methods
.method public final getInput()Ljavafx/scene/effect/Effect;
    .locals 2

    .prologue
    .line 151
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/PerspectiveTransform;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/effect/PerspectiveTransform;->input:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/effect/PerspectiveTransform;
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/effect/PerspectiveTransform;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/effect/PerspectiveTransform;->input:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/scene/effect/Effect;

    goto :goto_0
.end method

.method public final getLlx()D
    .locals 4

    .prologue
    .line 424
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/effect/PerspectiveTransform;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/effect/PerspectiveTransform;->llx:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    const-wide/16 v2, 0x0

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Ljavafx/scene/effect/PerspectiveTransform;
    return-wide v1

    .restart local v1    # "this":Ljavafx/scene/effect/PerspectiveTransform;
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/effect/PerspectiveTransform;->llx:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v2}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v2

    goto :goto_0
.end method

.method public final getLly()D
    .locals 4

    .prologue
    .line 464
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/effect/PerspectiveTransform;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/effect/PerspectiveTransform;->lly:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    const-wide/16 v2, 0x0

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Ljavafx/scene/effect/PerspectiveTransform;
    return-wide v1

    .restart local v1    # "this":Ljavafx/scene/effect/PerspectiveTransform;
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/effect/PerspectiveTransform;->lly:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v2}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v2

    goto :goto_0
.end method

.method public final getLrx()D
    .locals 4

    .prologue
    .line 344
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/effect/PerspectiveTransform;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/effect/PerspectiveTransform;->lrx:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    const-wide/16 v2, 0x0

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Ljavafx/scene/effect/PerspectiveTransform;
    return-wide v1

    .restart local v1    # "this":Ljavafx/scene/effect/PerspectiveTransform;
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/effect/PerspectiveTransform;->lrx:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v2}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v2

    goto :goto_0
.end method

.method public final getLry()D
    .locals 4

    .prologue
    .line 384
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/effect/PerspectiveTransform;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/effect/PerspectiveTransform;->lry:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    const-wide/16 v2, 0x0

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Ljavafx/scene/effect/PerspectiveTransform;
    return-wide v1

    .restart local v1    # "this":Ljavafx/scene/effect/PerspectiveTransform;
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/effect/PerspectiveTransform;->lry:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v2}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v2

    goto :goto_0
.end method

.method public final getUlx()D
    .locals 4

    .prologue
    .line 184
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/effect/PerspectiveTransform;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/effect/PerspectiveTransform;->ulx:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    const-wide/16 v2, 0x0

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Ljavafx/scene/effect/PerspectiveTransform;
    return-wide v1

    .restart local v1    # "this":Ljavafx/scene/effect/PerspectiveTransform;
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/effect/PerspectiveTransform;->ulx:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v2}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v2

    goto :goto_0
.end method

.method public final getUly()D
    .locals 4

    .prologue
    .line 224
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/effect/PerspectiveTransform;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/effect/PerspectiveTransform;->uly:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    const-wide/16 v2, 0x0

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Ljavafx/scene/effect/PerspectiveTransform;
    return-wide v1

    .restart local v1    # "this":Ljavafx/scene/effect/PerspectiveTransform;
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/effect/PerspectiveTransform;->uly:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v2}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v2

    goto :goto_0
.end method

.method public final getUrx()D
    .locals 4

    .prologue
    .line 264
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/effect/PerspectiveTransform;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/effect/PerspectiveTransform;->urx:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    const-wide/16 v2, 0x0

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Ljavafx/scene/effect/PerspectiveTransform;
    return-wide v1

    .restart local v1    # "this":Ljavafx/scene/effect/PerspectiveTransform;
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/effect/PerspectiveTransform;->urx:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v2}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v2

    goto :goto_0
.end method

.method public final getUry()D
    .locals 4

    .prologue
    .line 304
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/effect/PerspectiveTransform;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/effect/PerspectiveTransform;->ury:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    const-wide/16 v2, 0x0

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Ljavafx/scene/effect/PerspectiveTransform;
    return-wide v1

    .restart local v1    # "this":Ljavafx/scene/effect/PerspectiveTransform;
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/effect/PerspectiveTransform;->ury:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v2}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v2

    goto :goto_0
.end method

.method impl_checkChainContains(Ljavafx/scene/effect/Effect;)Z
    .locals 5

    .prologue
    .line 163
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/PerspectiveTransform;
    move-object v1, p1

    .local v1, "e":Ljavafx/scene/effect/Effect;
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/effect/PerspectiveTransform;->getInput()Ljavafx/scene/effect/Effect;

    move-result-object v3

    move-object v2, v3

    .line 164
    .local v2, "localInput":Ljavafx/scene/effect/Effect;
    move-object v3, v2

    if-nez v3, :cond_0

    .line 165
    const/4 v3, 0x0

    move v0, v3

    .line 168
    .end local v0    # "this":Ljavafx/scene/effect/PerspectiveTransform;
    :goto_0
    return v0

    .line 166
    .restart local v0    # "this":Ljavafx/scene/effect/PerspectiveTransform;
    :cond_0
    move-object v3, v2

    move-object v4, v1

    if-ne v3, v4, :cond_1

    .line 167
    const/4 v3, 0x1

    move v0, v3

    goto :goto_0

    .line 168
    :cond_1
    move-object v3, v2

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljavafx/scene/effect/Effect;->impl_checkChainContains(Ljavafx/scene/effect/Effect;)Z

    move-result v3

    move v0, v3

    goto :goto_0
.end method

.method public impl_copy()Ljavafx/scene/effect/Effect;
    .locals 21
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 550
    move-object/from16 v1, p0

    .local v1, "this":Ljavafx/scene/effect/PerspectiveTransform;
    new-instance v2, Ljavafx/scene/effect/PerspectiveTransform;

    move-object/from16 v20, v2

    move-object/from16 v2, v20

    move-object/from16 v3, v20

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/effect/PerspectiveTransform;->getUlx()D

    move-result-wide v4

    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/effect/PerspectiveTransform;->getUly()D

    move-result-wide v6

    move-object v8, v1

    .line 551
    invoke-virtual {v8}, Ljavafx/scene/effect/PerspectiveTransform;->getUrx()D

    move-result-wide v8

    move-object v10, v1

    invoke-virtual {v10}, Ljavafx/scene/effect/PerspectiveTransform;->getUry()D

    move-result-wide v10

    move-object v12, v1

    invoke-virtual {v12}, Ljavafx/scene/effect/PerspectiveTransform;->getLrx()D

    move-result-wide v12

    move-object v14, v1

    invoke-virtual {v14}, Ljavafx/scene/effect/PerspectiveTransform;->getLry()D

    move-result-wide v14

    move-object/from16 v16, v1

    .line 552
    invoke-virtual/range {v16 .. v16}, Ljavafx/scene/effect/PerspectiveTransform;->getLlx()D

    move-result-wide v16

    move-object/from16 v18, v1

    invoke-virtual/range {v18 .. v18}, Ljavafx/scene/effect/PerspectiveTransform;->getLly()D

    move-result-wide v18

    invoke-direct/range {v3 .. v19}, Ljavafx/scene/effect/PerspectiveTransform;-><init>(DDDDDDDD)V

    move-object v1, v2

    .end local v1    # "this":Ljavafx/scene/effect/PerspectiveTransform;
    return-object v1
.end method

.method bridge synthetic impl_createImpl()Lcom/sun/scenario/effect/Effect;
    .locals 2

    .prologue
    .line 95
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/PerspectiveTransform;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/effect/PerspectiveTransform;->impl_createImpl()Lcom/sun/scenario/effect/PerspectiveTransform;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/effect/PerspectiveTransform;
    return-object v0
.end method

.method impl_createImpl()Lcom/sun/scenario/effect/PerspectiveTransform;
    .locals 4

    .prologue
    .line 134
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/PerspectiveTransform;
    new-instance v1, Lcom/sun/scenario/effect/PerspectiveTransform;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Lcom/sun/scenario/effect/PerspectiveTransform;-><init>()V

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/effect/PerspectiveTransform;
    return-object v0
.end method

.method public impl_getBounds(Lcom/sun/javafx/geom/BaseBounds;Lcom/sun/javafx/geom/transform/BaseTransform;Ljavafx/scene/Node;Lcom/sun/javafx/scene/BoundsAccessor;)Lcom/sun/javafx/geom/BaseBounds;
    .locals 17
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 515
    move-object/from16 v0, p0

    .local v0, "this":Ljavafx/scene/effect/PerspectiveTransform;
    move-object/from16 v1, p1

    .local v1, "bounds":Lcom/sun/javafx/geom/BaseBounds;
    move-object/from16 v2, p2

    .local v2, "tx":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object/from16 v3, p3

    .local v3, "node":Ljavafx/scene/Node;
    move-object/from16 v4, p4

    .local v4, "boundsAccessor":Lcom/sun/javafx/scene/BoundsAccessor;
    move-object v10, v0

    move-object v11, v2

    invoke-direct {v10, v11}, Ljavafx/scene/effect/PerspectiveTransform;->setupDevCoords(Lcom/sun/javafx/geom/transform/BaseTransform;)V

    .line 518
    move-object v10, v0

    iget-object v10, v10, Ljavafx/scene/effect/PerspectiveTransform;->devcoords:[F

    const/4 v11, 0x0

    aget v10, v10, v11

    move/from16 v16, v10

    move/from16 v10, v16

    move/from16 v11, v16

    move v7, v11

    .local v7, "maxx":F
    move v5, v10

    .line 519
    .local v5, "minx":F
    move-object v10, v0

    iget-object v10, v10, Ljavafx/scene/effect/PerspectiveTransform;->devcoords:[F

    const/4 v11, 0x1

    aget v10, v10, v11

    move/from16 v16, v10

    move/from16 v10, v16

    move/from16 v11, v16

    move v8, v11

    .local v8, "maxy":F
    move v6, v10

    .line 520
    .local v6, "miny":F
    const/4 v10, 0x2

    move v9, v10

    .local v9, "i":I
    :goto_0
    move v10, v9

    move-object v11, v0

    iget-object v11, v11, Ljavafx/scene/effect/PerspectiveTransform;->devcoords:[F

    array-length v11, v11

    if-ge v10, v11, :cond_4

    .line 521
    move v10, v5

    move-object v11, v0

    iget-object v11, v11, Ljavafx/scene/effect/PerspectiveTransform;->devcoords:[F

    move v12, v9

    aget v11, v11, v12

    cmpl-float v10, v10, v11

    if-lez v10, :cond_2

    move-object v10, v0

    iget-object v10, v10, Ljavafx/scene/effect/PerspectiveTransform;->devcoords:[F

    move v11, v9

    aget v10, v10, v11

    move v5, v10

    .line 523
    :cond_0
    :goto_1
    move v10, v6

    move-object v11, v0

    iget-object v11, v11, Ljavafx/scene/effect/PerspectiveTransform;->devcoords:[F

    move v12, v9

    const/4 v13, 0x1

    add-int/lit8 v12, v12, 0x1

    aget v11, v11, v12

    cmpl-float v10, v10, v11

    if-lez v10, :cond_3

    move-object v10, v0

    iget-object v10, v10, Ljavafx/scene/effect/PerspectiveTransform;->devcoords:[F

    move v11, v9

    const/4 v12, 0x1

    add-int/lit8 v11, v11, 0x1

    aget v10, v10, v11

    move v6, v10

    .line 520
    :cond_1
    :goto_2
    add-int/lit8 v9, v9, 0x2

    goto :goto_0

    .line 522
    :cond_2
    move v10, v7

    move-object v11, v0

    iget-object v11, v11, Ljavafx/scene/effect/PerspectiveTransform;->devcoords:[F

    move v12, v9

    aget v11, v11, v12

    cmpg-float v10, v10, v11

    if-gez v10, :cond_0

    move-object v10, v0

    iget-object v10, v10, Ljavafx/scene/effect/PerspectiveTransform;->devcoords:[F

    move v11, v9

    aget v10, v10, v11

    move v7, v10

    goto :goto_1

    .line 524
    :cond_3
    move v10, v8

    move-object v11, v0

    iget-object v11, v11, Ljavafx/scene/effect/PerspectiveTransform;->devcoords:[F

    move v12, v9

    const/4 v13, 0x1

    add-int/lit8 v12, v12, 0x1

    aget v11, v11, v12

    cmpg-float v10, v10, v11

    if-gez v10, :cond_1

    move-object v10, v0

    iget-object v10, v10, Ljavafx/scene/effect/PerspectiveTransform;->devcoords:[F

    move v11, v9

    const/4 v12, 0x1

    add-int/lit8 v11, v11, 0x1

    aget v10, v10, v11

    move v8, v10

    goto :goto_2

    .line 527
    :cond_4
    new-instance v10, Lcom/sun/javafx/geom/RectBounds;

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    move v12, v5

    move v13, v6

    move v14, v7

    move v15, v8

    invoke-direct {v11, v12, v13, v14, v15}, Lcom/sun/javafx/geom/RectBounds;-><init>(FFFF)V

    move-object v0, v10

    .end local v0    # "this":Ljavafx/scene/effect/PerspectiveTransform;
    return-object v0
.end method

.method impl_update()V
    .locals 4

    .prologue
    .line 493
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/PerspectiveTransform;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/effect/PerspectiveTransform;->getInput()Ljavafx/scene/effect/Effect;

    move-result-object v2

    move-object v1, v2

    .line 494
    .local v1, "localInput":Ljavafx/scene/effect/Effect;
    move-object v2, v1

    if-eqz v2, :cond_0

    .line 495
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/effect/Effect;->impl_sync()V

    .line 498
    :cond_0
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/effect/PerspectiveTransform;->impl_getImpl()Lcom/sun/scenario/effect/Effect;

    move-result-object v2

    check-cast v2, Lcom/sun/scenario/effect/PerspectiveTransform;

    move-object v3, v1

    if-nez v3, :cond_1

    const/4 v3, 0x0

    .line 499
    :goto_0
    invoke-virtual {v2, v3}, Lcom/sun/scenario/effect/PerspectiveTransform;->setInput(Lcom/sun/scenario/effect/Effect;)V

    .line 500
    move-object v2, v0

    invoke-direct {v2}, Ljavafx/scene/effect/PerspectiveTransform;->updateXform()V

    .line 501
    return-void

    .line 498
    :cond_1
    move-object v3, v1

    .line 499
    invoke-virtual {v3}, Ljavafx/scene/effect/Effect;->impl_getImpl()Lcom/sun/scenario/effect/Effect;

    move-result-object v3

    goto :goto_0
.end method

.method public final inputProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/scene/effect/Effect;",
            ">;"
        }
    .end annotation

    .prologue
    .line 155
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/PerspectiveTransform;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/effect/PerspectiveTransform;->input:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    .line 156
    move-object v1, v0

    new-instance v2, Ljavafx/scene/effect/Effect$EffectInputProperty;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    const-string v5, "input"

    invoke-direct {v3, v4, v5}, Ljavafx/scene/effect/Effect$EffectInputProperty;-><init>(Ljavafx/scene/effect/Effect;Ljava/lang/String;)V

    iput-object v2, v1, Ljavafx/scene/effect/PerspectiveTransform;->input:Ljavafx/beans/property/ObjectProperty;

    .line 158
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/effect/PerspectiveTransform;->input:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/effect/PerspectiveTransform;
    return-object v0
.end method

.method public final llxProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 6

    .prologue
    .line 428
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/PerspectiveTransform;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/effect/PerspectiveTransform;->llx:Ljavafx/beans/property/DoubleProperty;

    if-nez v1, :cond_0

    .line 429
    move-object v1, v0

    new-instance v2, Ljavafx/scene/effect/PerspectiveTransform$7;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/effect/PerspectiveTransform$7;-><init>(Ljavafx/scene/effect/PerspectiveTransform;)V

    iput-object v2, v1, Ljavafx/scene/effect/PerspectiveTransform;->llx:Ljavafx/beans/property/DoubleProperty;

    .line 448
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/effect/PerspectiveTransform;->llx:Ljavafx/beans/property/DoubleProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/effect/PerspectiveTransform;
    return-object v0
.end method

.method public final llyProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 6

    .prologue
    .line 468
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/PerspectiveTransform;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/effect/PerspectiveTransform;->lly:Ljavafx/beans/property/DoubleProperty;

    if-nez v1, :cond_0

    .line 469
    move-object v1, v0

    new-instance v2, Ljavafx/scene/effect/PerspectiveTransform$8;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/effect/PerspectiveTransform$8;-><init>(Ljavafx/scene/effect/PerspectiveTransform;)V

    iput-object v2, v1, Ljavafx/scene/effect/PerspectiveTransform;->lly:Ljavafx/beans/property/DoubleProperty;

    .line 488
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/effect/PerspectiveTransform;->lly:Ljavafx/beans/property/DoubleProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/effect/PerspectiveTransform;
    return-object v0
.end method

.method public final lrxProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 6

    .prologue
    .line 348
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/PerspectiveTransform;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/effect/PerspectiveTransform;->lrx:Ljavafx/beans/property/DoubleProperty;

    if-nez v1, :cond_0

    .line 349
    move-object v1, v0

    new-instance v2, Ljavafx/scene/effect/PerspectiveTransform$5;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/effect/PerspectiveTransform$5;-><init>(Ljavafx/scene/effect/PerspectiveTransform;)V

    iput-object v2, v1, Ljavafx/scene/effect/PerspectiveTransform;->lrx:Ljavafx/beans/property/DoubleProperty;

    .line 368
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/effect/PerspectiveTransform;->lrx:Ljavafx/beans/property/DoubleProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/effect/PerspectiveTransform;
    return-object v0
.end method

.method public final lryProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 6

    .prologue
    .line 388
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/PerspectiveTransform;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/effect/PerspectiveTransform;->lry:Ljavafx/beans/property/DoubleProperty;

    if-nez v1, :cond_0

    .line 389
    move-object v1, v0

    new-instance v2, Ljavafx/scene/effect/PerspectiveTransform$6;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/effect/PerspectiveTransform$6;-><init>(Ljavafx/scene/effect/PerspectiveTransform;)V

    iput-object v2, v1, Ljavafx/scene/effect/PerspectiveTransform;->lry:Ljavafx/beans/property/DoubleProperty;

    .line 408
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/effect/PerspectiveTransform;->lry:Ljavafx/beans/property/DoubleProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/effect/PerspectiveTransform;
    return-object v0
.end method

.method public final setInput(Ljavafx/scene/effect/Effect;)V
    .locals 4

    .prologue
    .line 147
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/PerspectiveTransform;
    move-object v1, p1

    .local v1, "value":Ljavafx/scene/effect/Effect;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/effect/PerspectiveTransform;->inputProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 148
    return-void
.end method

.method public final setLlx(D)V
    .locals 7

    .prologue
    .line 420
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/PerspectiveTransform;
    move-wide v1, p1

    .local v1, "value":D
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/effect/PerspectiveTransform;->llxProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v3

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    .line 421
    return-void
.end method

.method public final setLly(D)V
    .locals 7

    .prologue
    .line 460
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/PerspectiveTransform;
    move-wide v1, p1

    .local v1, "value":D
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/effect/PerspectiveTransform;->llyProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v3

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    .line 461
    return-void
.end method

.method public final setLrx(D)V
    .locals 7

    .prologue
    .line 340
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/PerspectiveTransform;
    move-wide v1, p1

    .local v1, "value":D
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/effect/PerspectiveTransform;->lrxProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v3

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    .line 341
    return-void
.end method

.method public final setLry(D)V
    .locals 7

    .prologue
    .line 380
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/PerspectiveTransform;
    move-wide v1, p1

    .local v1, "value":D
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/effect/PerspectiveTransform;->lryProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v3

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    .line 381
    return-void
.end method

.method public final setUlx(D)V
    .locals 7

    .prologue
    .line 180
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/PerspectiveTransform;
    move-wide v1, p1

    .local v1, "value":D
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/effect/PerspectiveTransform;->ulxProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v3

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    .line 181
    return-void
.end method

.method public final setUly(D)V
    .locals 7

    .prologue
    .line 220
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/PerspectiveTransform;
    move-wide v1, p1

    .local v1, "value":D
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/effect/PerspectiveTransform;->ulyProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v3

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    .line 221
    return-void
.end method

.method public final setUrx(D)V
    .locals 7

    .prologue
    .line 260
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/PerspectiveTransform;
    move-wide v1, p1

    .local v1, "value":D
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/effect/PerspectiveTransform;->urxProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v3

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    .line 261
    return-void
.end method

.method public final setUry(D)V
    .locals 7

    .prologue
    .line 300
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/PerspectiveTransform;
    move-wide v1, p1

    .local v1, "value":D
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/effect/PerspectiveTransform;->uryProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v3

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    .line 301
    return-void
.end method

.method public final ulxProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 6

    .prologue
    .line 188
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/PerspectiveTransform;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/effect/PerspectiveTransform;->ulx:Ljavafx/beans/property/DoubleProperty;

    if-nez v1, :cond_0

    .line 189
    move-object v1, v0

    new-instance v2, Ljavafx/scene/effect/PerspectiveTransform$1;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/effect/PerspectiveTransform$1;-><init>(Ljavafx/scene/effect/PerspectiveTransform;)V

    iput-object v2, v1, Ljavafx/scene/effect/PerspectiveTransform;->ulx:Ljavafx/beans/property/DoubleProperty;

    .line 208
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/effect/PerspectiveTransform;->ulx:Ljavafx/beans/property/DoubleProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/effect/PerspectiveTransform;
    return-object v0
.end method

.method public final ulyProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 6

    .prologue
    .line 228
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/PerspectiveTransform;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/effect/PerspectiveTransform;->uly:Ljavafx/beans/property/DoubleProperty;

    if-nez v1, :cond_0

    .line 229
    move-object v1, v0

    new-instance v2, Ljavafx/scene/effect/PerspectiveTransform$2;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/effect/PerspectiveTransform$2;-><init>(Ljavafx/scene/effect/PerspectiveTransform;)V

    iput-object v2, v1, Ljavafx/scene/effect/PerspectiveTransform;->uly:Ljavafx/beans/property/DoubleProperty;

    .line 248
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/effect/PerspectiveTransform;->uly:Ljavafx/beans/property/DoubleProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/effect/PerspectiveTransform;
    return-object v0
.end method

.method public final urxProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 6

    .prologue
    .line 268
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/PerspectiveTransform;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/effect/PerspectiveTransform;->urx:Ljavafx/beans/property/DoubleProperty;

    if-nez v1, :cond_0

    .line 269
    move-object v1, v0

    new-instance v2, Ljavafx/scene/effect/PerspectiveTransform$3;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/effect/PerspectiveTransform$3;-><init>(Ljavafx/scene/effect/PerspectiveTransform;)V

    iput-object v2, v1, Ljavafx/scene/effect/PerspectiveTransform;->urx:Ljavafx/beans/property/DoubleProperty;

    .line 288
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/effect/PerspectiveTransform;->urx:Ljavafx/beans/property/DoubleProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/effect/PerspectiveTransform;
    return-object v0
.end method

.method public final uryProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 6

    .prologue
    .line 308
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/PerspectiveTransform;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/effect/PerspectiveTransform;->ury:Ljavafx/beans/property/DoubleProperty;

    if-nez v1, :cond_0

    .line 309
    move-object v1, v0

    new-instance v2, Ljavafx/scene/effect/PerspectiveTransform$4;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/effect/PerspectiveTransform$4;-><init>(Ljavafx/scene/effect/PerspectiveTransform;)V

    iput-object v2, v1, Ljavafx/scene/effect/PerspectiveTransform;->ury:Ljavafx/beans/property/DoubleProperty;

    .line 328
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/effect/PerspectiveTransform;->ury:Ljavafx/beans/property/DoubleProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/effect/PerspectiveTransform;
    return-object v0
.end method
