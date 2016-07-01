.class public Ljavafx/scene/layout/RowConstraints;
.super Ljavafx/scene/layout/ConstraintsBase;
.source "RowConstraints.java"


# instance fields
.field private fillHeight:Ljavafx/beans/property/BooleanProperty;

.field private maxHeight:Ljavafx/beans/property/DoubleProperty;

.field private minHeight:Ljavafx/beans/property/DoubleProperty;

.field private percentHeight:Ljavafx/beans/property/DoubleProperty;

.field private prefHeight:Ljavafx/beans/property/DoubleProperty;

.field private valignment:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/geometry/VPos;",
            ">;"
        }
    .end annotation
.end field

.field private vgrow:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/scene/layout/Priority;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 76
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/RowConstraints;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/layout/ConstraintsBase;-><init>()V

    .line 77
    return-void
.end method

.method public constructor <init>(D)V
    .locals 7

    .prologue
    .line 88
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/RowConstraints;
    move-wide v1, p1

    .local v1, "height":D
    move-object v3, v0

    invoke-direct {v3}, Ljavafx/scene/layout/RowConstraints;-><init>()V

    .line 89
    move-object v3, v0

    const-wide/high16 v4, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/layout/RowConstraints;->setMinHeight(D)V

    .line 90
    move-object v3, v0

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/layout/RowConstraints;->setPrefHeight(D)V

    .line 91
    move-object v3, v0

    const-wide/high16 v4, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/layout/RowConstraints;->setMaxHeight(D)V

    .line 92
    return-void
.end method

.method public constructor <init>(DDD)V
    .locals 11

    .prologue
    .line 101
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/RowConstraints;
    move-wide v1, p1

    .local v1, "minHeight":D
    move-wide v3, p3

    .local v3, "prefHeight":D
    move-wide/from16 v5, p5

    .local v5, "maxHeight":D
    move-object v7, v0

    invoke-direct {v7}, Ljavafx/scene/layout/RowConstraints;-><init>()V

    .line 102
    move-object v7, v0

    move-wide v8, v1

    invoke-virtual {v7, v8, v9}, Ljavafx/scene/layout/RowConstraints;->setMinHeight(D)V

    .line 103
    move-object v7, v0

    move-wide v8, v3

    invoke-virtual {v7, v8, v9}, Ljavafx/scene/layout/RowConstraints;->setPrefHeight(D)V

    .line 104
    move-object v7, v0

    move-wide v8, v5

    invoke-virtual {v7, v8, v9}, Ljavafx/scene/layout/RowConstraints;->setMaxHeight(D)V

    .line 105
    return-void
.end method

.method public constructor <init>(DDDLjavafx/scene/layout/Priority;Ljavafx/geometry/VPos;Z)V
    .locals 19

    .prologue
    .line 113
    move-object/from16 v1, p0

    .local v1, "this":Ljavafx/scene/layout/RowConstraints;
    move-wide/from16 v2, p1

    .local v2, "minHeight":D
    move-wide/from16 v4, p3

    .local v4, "prefHeight":D
    move-wide/from16 v6, p5

    .local v6, "maxHeight":D
    move-object/from16 v8, p7

    .local v8, "vgrow":Ljavafx/scene/layout/Priority;
    move-object/from16 v9, p8

    .local v9, "valignment":Ljavafx/geometry/VPos;
    move/from16 v10, p9

    .local v10, "fillHeight":Z
    move-object v11, v1

    move-wide v12, v2

    move-wide v14, v4

    move-wide/from16 v16, v6

    invoke-direct/range {v11 .. v17}, Ljavafx/scene/layout/RowConstraints;-><init>(DDD)V

    .line 114
    move-object v11, v1

    move-object v12, v8

    invoke-virtual {v11, v12}, Ljavafx/scene/layout/RowConstraints;->setVgrow(Ljavafx/scene/layout/Priority;)V

    .line 115
    move-object v11, v1

    move-object v12, v9

    invoke-virtual {v11, v12}, Ljavafx/scene/layout/RowConstraints;->setValignment(Ljavafx/geometry/VPos;)V

    .line 116
    move-object v11, v1

    move v12, v10

    invoke-virtual {v11, v12}, Ljavafx/scene/layout/RowConstraints;->setFillHeight(Z)V

    .line 117
    return-void
.end method


# virtual methods
.method public final fillHeightProperty()Ljavafx/beans/property/BooleanProperty;
    .locals 7

    .prologue
    .line 379
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/RowConstraints;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/RowConstraints;->fillHeight:Ljavafx/beans/property/BooleanProperty;

    if-nez v1, :cond_0

    .line 380
    move-object v1, v0

    new-instance v2, Ljavafx/scene/layout/RowConstraints$7;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Ljavafx/scene/layout/RowConstraints$7;-><init>(Ljavafx/scene/layout/RowConstraints;Z)V

    iput-object v2, v1, Ljavafx/scene/layout/RowConstraints;->fillHeight:Ljavafx/beans/property/BooleanProperty;

    .line 397
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/RowConstraints;->fillHeight:Ljavafx/beans/property/BooleanProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/RowConstraints;
    return-object v0
.end method

.method public final getMaxHeight()D
    .locals 4

    .prologue
    .line 213
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/layout/RowConstraints;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/layout/RowConstraints;->maxHeight:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Ljavafx/scene/layout/RowConstraints;
    return-wide v1

    .restart local v1    # "this":Ljavafx/scene/layout/RowConstraints;
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/layout/RowConstraints;->maxHeight:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v2}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v2

    goto :goto_0
.end method

.method public final getMinHeight()D
    .locals 4

    .prologue
    .line 133
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/layout/RowConstraints;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/layout/RowConstraints;->minHeight:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Ljavafx/scene/layout/RowConstraints;
    return-wide v1

    .restart local v1    # "this":Ljavafx/scene/layout/RowConstraints;
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/layout/RowConstraints;->minHeight:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v2}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v2

    goto :goto_0
.end method

.method public final getPercentHeight()D
    .locals 4

    .prologue
    .line 254
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/layout/RowConstraints;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/layout/RowConstraints;->percentHeight:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Ljavafx/scene/layout/RowConstraints;
    return-wide v1

    .restart local v1    # "this":Ljavafx/scene/layout/RowConstraints;
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/layout/RowConstraints;->percentHeight:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v2}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v2

    goto :goto_0
.end method

.method public final getPrefHeight()D
    .locals 4

    .prologue
    .line 173
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/layout/RowConstraints;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/layout/RowConstraints;->prefHeight:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Ljavafx/scene/layout/RowConstraints;
    return-wide v1

    .restart local v1    # "this":Ljavafx/scene/layout/RowConstraints;
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/layout/RowConstraints;->prefHeight:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v2}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v2

    goto :goto_0
.end method

.method public final getValignment()Ljavafx/geometry/VPos;
    .locals 2

    .prologue
    .line 335
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/RowConstraints;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/RowConstraints;->valignment:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/RowConstraints;
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/layout/RowConstraints;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/RowConstraints;->valignment:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/geometry/VPos;

    goto :goto_0
.end method

.method public final getVgrow()Ljavafx/scene/layout/Priority;
    .locals 2

    .prologue
    .line 296
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/RowConstraints;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/RowConstraints;->vgrow:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/RowConstraints;
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/layout/RowConstraints;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/RowConstraints;->vgrow:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/scene/layout/Priority;

    goto :goto_0
.end method

.method public final isFillHeight()Z
    .locals 2

    .prologue
    .line 375
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/RowConstraints;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/RowConstraints;->fillHeight:Ljavafx/beans/property/BooleanProperty;

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/RowConstraints;
    return v0

    .restart local v0    # "this":Ljavafx/scene/layout/RowConstraints;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/RowConstraints;->fillHeight:Ljavafx/beans/property/BooleanProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/BooleanProperty;->get()Z

    move-result v1

    goto :goto_0
.end method

.method public final maxHeightProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 9

    .prologue
    .line 217
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/layout/RowConstraints;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/layout/RowConstraints;->maxHeight:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    .line 218
    move-object v2, v1

    new-instance v3, Ljavafx/scene/layout/RowConstraints$3;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v1

    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    invoke-direct {v4, v5, v6, v7}, Ljavafx/scene/layout/RowConstraints$3;-><init>(Ljavafx/scene/layout/RowConstraints;D)V

    iput-object v3, v2, Ljavafx/scene/layout/RowConstraints;->maxHeight:Ljavafx/beans/property/DoubleProperty;

    .line 236
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/layout/RowConstraints;->maxHeight:Ljavafx/beans/property/DoubleProperty;

    move-object v1, v2

    .end local v1    # "this":Ljavafx/scene/layout/RowConstraints;
    return-object v1
.end method

.method public final minHeightProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 9

    .prologue
    .line 137
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/layout/RowConstraints;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/layout/RowConstraints;->minHeight:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    .line 138
    move-object v2, v1

    new-instance v3, Ljavafx/scene/layout/RowConstraints$1;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v1

    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    invoke-direct {v4, v5, v6, v7}, Ljavafx/scene/layout/RowConstraints$1;-><init>(Ljavafx/scene/layout/RowConstraints;D)V

    iput-object v3, v2, Ljavafx/scene/layout/RowConstraints;->minHeight:Ljavafx/beans/property/DoubleProperty;

    .line 156
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/layout/RowConstraints;->minHeight:Ljavafx/beans/property/DoubleProperty;

    move-object v1, v2

    .end local v1    # "this":Ljavafx/scene/layout/RowConstraints;
    return-object v1
.end method

.method public final percentHeightProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 9

    .prologue
    .line 258
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/layout/RowConstraints;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/layout/RowConstraints;->percentHeight:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    .line 259
    move-object v2, v1

    new-instance v3, Ljavafx/scene/layout/RowConstraints$4;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v1

    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    invoke-direct {v4, v5, v6, v7}, Ljavafx/scene/layout/RowConstraints$4;-><init>(Ljavafx/scene/layout/RowConstraints;D)V

    iput-object v3, v2, Ljavafx/scene/layout/RowConstraints;->percentHeight:Ljavafx/beans/property/DoubleProperty;

    .line 277
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/layout/RowConstraints;->percentHeight:Ljavafx/beans/property/DoubleProperty;

    move-object v1, v2

    .end local v1    # "this":Ljavafx/scene/layout/RowConstraints;
    return-object v1
.end method

.method public final prefHeightProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 9

    .prologue
    .line 177
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/layout/RowConstraints;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/layout/RowConstraints;->prefHeight:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    .line 178
    move-object v2, v1

    new-instance v3, Ljavafx/scene/layout/RowConstraints$2;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v1

    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    invoke-direct {v4, v5, v6, v7}, Ljavafx/scene/layout/RowConstraints$2;-><init>(Ljavafx/scene/layout/RowConstraints;D)V

    iput-object v3, v2, Ljavafx/scene/layout/RowConstraints;->prefHeight:Ljavafx/beans/property/DoubleProperty;

    .line 196
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/layout/RowConstraints;->prefHeight:Ljavafx/beans/property/DoubleProperty;

    move-object v1, v2

    .end local v1    # "this":Ljavafx/scene/layout/RowConstraints;
    return-object v1
.end method

.method public final setFillHeight(Z)V
    .locals 4

    .prologue
    .line 371
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/RowConstraints;
    move v1, p1

    .local v1, "value":Z
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/layout/RowConstraints;->fillHeightProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v2

    move v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/BooleanProperty;->set(Z)V

    .line 372
    return-void
.end method

.method public final setMaxHeight(D)V
    .locals 7

    .prologue
    .line 209
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/RowConstraints;
    move-wide v1, p1

    .local v1, "value":D
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/layout/RowConstraints;->maxHeightProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v3

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    .line 210
    return-void
.end method

.method public final setMinHeight(D)V
    .locals 7

    .prologue
    .line 129
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/RowConstraints;
    move-wide v1, p1

    .local v1, "value":D
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/layout/RowConstraints;->minHeightProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v3

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    .line 130
    return-void
.end method

.method public final setPercentHeight(D)V
    .locals 7

    .prologue
    .line 250
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/RowConstraints;
    move-wide v1, p1

    .local v1, "value":D
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/layout/RowConstraints;->percentHeightProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v3

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    .line 251
    return-void
.end method

.method public final setPrefHeight(D)V
    .locals 7

    .prologue
    .line 169
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/RowConstraints;
    move-wide v1, p1

    .local v1, "value":D
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/layout/RowConstraints;->prefHeightProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v3

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    .line 170
    return-void
.end method

.method public final setValignment(Ljavafx/geometry/VPos;)V
    .locals 4

    .prologue
    .line 331
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/RowConstraints;
    move-object v1, p1

    .local v1, "value":Ljavafx/geometry/VPos;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/layout/RowConstraints;->valignmentProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 332
    return-void
.end method

.method public final setVgrow(Ljavafx/scene/layout/Priority;)V
    .locals 4

    .prologue
    .line 292
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/RowConstraints;
    move-object v1, p1

    .local v1, "value":Ljavafx/scene/layout/Priority;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/layout/RowConstraints;->vgrowProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 293
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 405
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/RowConstraints;
    new-instance v1, Ljava/lang/StringBuilder;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RowConstraints percentHeight="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/layout/RowConstraints;->getPercentHeight()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " minHeight="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    .line 406
    invoke-virtual {v2}, Ljavafx/scene/layout/RowConstraints;->getMinHeight()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " prefHeight="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    .line 407
    invoke-virtual {v2}, Ljavafx/scene/layout/RowConstraints;->getPrefHeight()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " maxHeight="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    .line 408
    invoke-virtual {v2}, Ljavafx/scene/layout/RowConstraints;->getMaxHeight()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " vgrow="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    .line 409
    invoke-virtual {v2}, Ljavafx/scene/layout/RowConstraints;->getVgrow()Ljavafx/scene/layout/Priority;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " fillHeight="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    .line 410
    invoke-virtual {v2}, Ljavafx/scene/layout/RowConstraints;->isFillHeight()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " valignment="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    .line 411
    invoke-virtual {v2}, Ljavafx/scene/layout/RowConstraints;->getValignment()Ljavafx/geometry/VPos;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/RowConstraints;
    return-object v0
.end method

.method public final valignmentProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/geometry/VPos;",
            ">;"
        }
    .end annotation

    .prologue
    .line 339
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/RowConstraints;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/RowConstraints;->valignment:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    .line 340
    move-object v1, v0

    new-instance v2, Ljavafx/scene/layout/RowConstraints$6;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/layout/RowConstraints$6;-><init>(Ljavafx/scene/layout/RowConstraints;)V

    iput-object v2, v1, Ljavafx/scene/layout/RowConstraints;->valignment:Ljavafx/beans/property/ObjectProperty;

    .line 358
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/RowConstraints;->valignment:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/RowConstraints;
    return-object v0
.end method

.method public final vgrowProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/scene/layout/Priority;",
            ">;"
        }
    .end annotation

    .prologue
    .line 300
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/RowConstraints;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/RowConstraints;->vgrow:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    .line 301
    move-object v1, v0

    new-instance v2, Ljavafx/scene/layout/RowConstraints$5;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/layout/RowConstraints$5;-><init>(Ljavafx/scene/layout/RowConstraints;)V

    iput-object v2, v1, Ljavafx/scene/layout/RowConstraints;->vgrow:Ljavafx/beans/property/ObjectProperty;

    .line 319
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/RowConstraints;->vgrow:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/RowConstraints;
    return-object v0
.end method
