.class public Ljavafx/scene/layout/ColumnConstraints;
.super Ljavafx/scene/layout/ConstraintsBase;
.source "ColumnConstraints.java"


# instance fields
.field private fillWidth:Ljavafx/beans/property/BooleanProperty;

.field private halignment:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/geometry/HPos;",
            ">;"
        }
    .end annotation
.end field

.field private hgrow:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/scene/layout/Priority;",
            ">;"
        }
    .end annotation
.end field

.field private maxWidth:Ljavafx/beans/property/DoubleProperty;

.field private minWidth:Ljavafx/beans/property/DoubleProperty;

.field private percentWidth:Ljavafx/beans/property/DoubleProperty;

.field private prefWidth:Ljavafx/beans/property/DoubleProperty;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 76
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/ColumnConstraints;
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

    .local v0, "this":Ljavafx/scene/layout/ColumnConstraints;
    move-wide v1, p1

    .local v1, "width":D
    move-object v3, v0

    invoke-direct {v3}, Ljavafx/scene/layout/ColumnConstraints;-><init>()V

    .line 89
    move-object v3, v0

    const-wide/high16 v4, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/layout/ColumnConstraints;->setMinWidth(D)V

    .line 90
    move-object v3, v0

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/layout/ColumnConstraints;->setPrefWidth(D)V

    .line 91
    move-object v3, v0

    const-wide/high16 v4, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/layout/ColumnConstraints;->setMaxWidth(D)V

    .line 92
    return-void
.end method

.method public constructor <init>(DDD)V
    .locals 11

    .prologue
    .line 101
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/ColumnConstraints;
    move-wide v1, p1

    .local v1, "minWidth":D
    move-wide v3, p3

    .local v3, "prefWidth":D
    move-wide/from16 v5, p5

    .local v5, "maxWidth":D
    move-object v7, v0

    invoke-direct {v7}, Ljavafx/scene/layout/ColumnConstraints;-><init>()V

    .line 102
    move-object v7, v0

    move-wide v8, v1

    invoke-virtual {v7, v8, v9}, Ljavafx/scene/layout/ColumnConstraints;->setMinWidth(D)V

    .line 103
    move-object v7, v0

    move-wide v8, v3

    invoke-virtual {v7, v8, v9}, Ljavafx/scene/layout/ColumnConstraints;->setPrefWidth(D)V

    .line 104
    move-object v7, v0

    move-wide v8, v5

    invoke-virtual {v7, v8, v9}, Ljavafx/scene/layout/ColumnConstraints;->setMaxWidth(D)V

    .line 105
    return-void
.end method

.method public constructor <init>(DDDLjavafx/scene/layout/Priority;Ljavafx/geometry/HPos;Z)V
    .locals 19

    .prologue
    .line 113
    move-object/from16 v1, p0

    .local v1, "this":Ljavafx/scene/layout/ColumnConstraints;
    move-wide/from16 v2, p1

    .local v2, "minWidth":D
    move-wide/from16 v4, p3

    .local v4, "prefWidth":D
    move-wide/from16 v6, p5

    .local v6, "maxWidth":D
    move-object/from16 v8, p7

    .local v8, "hgrow":Ljavafx/scene/layout/Priority;
    move-object/from16 v9, p8

    .local v9, "halignment":Ljavafx/geometry/HPos;
    move/from16 v10, p9

    .local v10, "fillWidth":Z
    move-object v11, v1

    move-wide v12, v2

    move-wide v14, v4

    move-wide/from16 v16, v6

    invoke-direct/range {v11 .. v17}, Ljavafx/scene/layout/ColumnConstraints;-><init>(DDD)V

    .line 114
    move-object v11, v1

    move-object v12, v8

    invoke-virtual {v11, v12}, Ljavafx/scene/layout/ColumnConstraints;->setHgrow(Ljavafx/scene/layout/Priority;)V

    .line 115
    move-object v11, v1

    move-object v12, v9

    invoke-virtual {v11, v12}, Ljavafx/scene/layout/ColumnConstraints;->setHalignment(Ljavafx/geometry/HPos;)V

    .line 116
    move-object v11, v1

    move v12, v10

    invoke-virtual {v11, v12}, Ljavafx/scene/layout/ColumnConstraints;->setFillWidth(Z)V

    .line 117
    return-void
.end method


# virtual methods
.method public final fillWidthProperty()Ljavafx/beans/property/BooleanProperty;
    .locals 7

    .prologue
    .line 382
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/ColumnConstraints;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/ColumnConstraints;->fillWidth:Ljavafx/beans/property/BooleanProperty;

    if-nez v1, :cond_0

    .line 383
    move-object v1, v0

    new-instance v2, Ljavafx/scene/layout/ColumnConstraints$7;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Ljavafx/scene/layout/ColumnConstraints$7;-><init>(Ljavafx/scene/layout/ColumnConstraints;Z)V

    iput-object v2, v1, Ljavafx/scene/layout/ColumnConstraints;->fillWidth:Ljavafx/beans/property/BooleanProperty;

    .line 401
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/ColumnConstraints;->fillWidth:Ljavafx/beans/property/BooleanProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/ColumnConstraints;
    return-object v0
.end method

.method public final getHalignment()Ljavafx/geometry/HPos;
    .locals 2

    .prologue
    .line 337
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/ColumnConstraints;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/ColumnConstraints;->halignment:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/ColumnConstraints;
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/layout/ColumnConstraints;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/ColumnConstraints;->halignment:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/geometry/HPos;

    goto :goto_0
.end method

.method public final getHgrow()Ljavafx/scene/layout/Priority;
    .locals 2

    .prologue
    .line 297
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/ColumnConstraints;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/ColumnConstraints;->hgrow:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/ColumnConstraints;
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/layout/ColumnConstraints;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/ColumnConstraints;->hgrow:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/scene/layout/Priority;

    goto :goto_0
.end method

.method public final getMaxWidth()D
    .locals 4

    .prologue
    .line 213
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/layout/ColumnConstraints;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/layout/ColumnConstraints;->maxWidth:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Ljavafx/scene/layout/ColumnConstraints;
    return-wide v1

    .restart local v1    # "this":Ljavafx/scene/layout/ColumnConstraints;
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/layout/ColumnConstraints;->maxWidth:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v2}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v2

    goto :goto_0
.end method

.method public final getMinWidth()D
    .locals 4

    .prologue
    .line 133
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/layout/ColumnConstraints;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/layout/ColumnConstraints;->minWidth:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Ljavafx/scene/layout/ColumnConstraints;
    return-wide v1

    .restart local v1    # "this":Ljavafx/scene/layout/ColumnConstraints;
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/layout/ColumnConstraints;->minWidth:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v2}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v2

    goto :goto_0
.end method

.method public final getPercentWidth()D
    .locals 4

    .prologue
    .line 254
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/layout/ColumnConstraints;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/layout/ColumnConstraints;->percentWidth:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Ljavafx/scene/layout/ColumnConstraints;
    return-wide v1

    .restart local v1    # "this":Ljavafx/scene/layout/ColumnConstraints;
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/layout/ColumnConstraints;->percentWidth:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v2}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v2

    goto :goto_0
.end method

.method public final getPrefWidth()D
    .locals 4

    .prologue
    .line 173
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/layout/ColumnConstraints;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/layout/ColumnConstraints;->prefWidth:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Ljavafx/scene/layout/ColumnConstraints;
    return-wide v1

    .restart local v1    # "this":Ljavafx/scene/layout/ColumnConstraints;
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/layout/ColumnConstraints;->prefWidth:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v2}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v2

    goto :goto_0
.end method

.method public final halignmentProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/geometry/HPos;",
            ">;"
        }
    .end annotation

    .prologue
    .line 341
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/ColumnConstraints;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/ColumnConstraints;->halignment:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    .line 342
    move-object v1, v0

    new-instance v2, Ljavafx/scene/layout/ColumnConstraints$6;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/layout/ColumnConstraints$6;-><init>(Ljavafx/scene/layout/ColumnConstraints;)V

    iput-object v2, v1, Ljavafx/scene/layout/ColumnConstraints;->halignment:Ljavafx/beans/property/ObjectProperty;

    .line 360
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/ColumnConstraints;->halignment:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/ColumnConstraints;
    return-object v0
.end method

.method public final hgrowProperty()Ljavafx/beans/property/ObjectProperty;
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
    .line 301
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/ColumnConstraints;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/ColumnConstraints;->hgrow:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    .line 302
    move-object v1, v0

    new-instance v2, Ljavafx/scene/layout/ColumnConstraints$5;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/layout/ColumnConstraints$5;-><init>(Ljavafx/scene/layout/ColumnConstraints;)V

    iput-object v2, v1, Ljavafx/scene/layout/ColumnConstraints;->hgrow:Ljavafx/beans/property/ObjectProperty;

    .line 320
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/ColumnConstraints;->hgrow:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/ColumnConstraints;
    return-object v0
.end method

.method public final isFillWidth()Z
    .locals 2

    .prologue
    .line 378
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/ColumnConstraints;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/ColumnConstraints;->fillWidth:Ljavafx/beans/property/BooleanProperty;

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/ColumnConstraints;
    return v0

    .restart local v0    # "this":Ljavafx/scene/layout/ColumnConstraints;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/ColumnConstraints;->fillWidth:Ljavafx/beans/property/BooleanProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/BooleanProperty;->get()Z

    move-result v1

    goto :goto_0
.end method

.method public final maxWidthProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 9

    .prologue
    .line 217
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/layout/ColumnConstraints;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/layout/ColumnConstraints;->maxWidth:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    .line 218
    move-object v2, v1

    new-instance v3, Ljavafx/scene/layout/ColumnConstraints$3;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v1

    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    invoke-direct {v4, v5, v6, v7}, Ljavafx/scene/layout/ColumnConstraints$3;-><init>(Ljavafx/scene/layout/ColumnConstraints;D)V

    iput-object v3, v2, Ljavafx/scene/layout/ColumnConstraints;->maxWidth:Ljavafx/beans/property/DoubleProperty;

    .line 236
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/layout/ColumnConstraints;->maxWidth:Ljavafx/beans/property/DoubleProperty;

    move-object v1, v2

    .end local v1    # "this":Ljavafx/scene/layout/ColumnConstraints;
    return-object v1
.end method

.method public final minWidthProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 9

    .prologue
    .line 137
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/layout/ColumnConstraints;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/layout/ColumnConstraints;->minWidth:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    .line 138
    move-object v2, v1

    new-instance v3, Ljavafx/scene/layout/ColumnConstraints$1;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v1

    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    invoke-direct {v4, v5, v6, v7}, Ljavafx/scene/layout/ColumnConstraints$1;-><init>(Ljavafx/scene/layout/ColumnConstraints;D)V

    iput-object v3, v2, Ljavafx/scene/layout/ColumnConstraints;->minWidth:Ljavafx/beans/property/DoubleProperty;

    .line 156
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/layout/ColumnConstraints;->minWidth:Ljavafx/beans/property/DoubleProperty;

    move-object v1, v2

    .end local v1    # "this":Ljavafx/scene/layout/ColumnConstraints;
    return-object v1
.end method

.method public final percentWidthProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 9

    .prologue
    .line 258
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/layout/ColumnConstraints;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/layout/ColumnConstraints;->percentWidth:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    .line 259
    move-object v2, v1

    new-instance v3, Ljavafx/scene/layout/ColumnConstraints$4;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v1

    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    invoke-direct {v4, v5, v6, v7}, Ljavafx/scene/layout/ColumnConstraints$4;-><init>(Ljavafx/scene/layout/ColumnConstraints;D)V

    iput-object v3, v2, Ljavafx/scene/layout/ColumnConstraints;->percentWidth:Ljavafx/beans/property/DoubleProperty;

    .line 277
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/layout/ColumnConstraints;->percentWidth:Ljavafx/beans/property/DoubleProperty;

    move-object v1, v2

    .end local v1    # "this":Ljavafx/scene/layout/ColumnConstraints;
    return-object v1
.end method

.method public final prefWidthProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 9

    .prologue
    .line 177
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/layout/ColumnConstraints;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/layout/ColumnConstraints;->prefWidth:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    .line 178
    move-object v2, v1

    new-instance v3, Ljavafx/scene/layout/ColumnConstraints$2;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v1

    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    invoke-direct {v4, v5, v6, v7}, Ljavafx/scene/layout/ColumnConstraints$2;-><init>(Ljavafx/scene/layout/ColumnConstraints;D)V

    iput-object v3, v2, Ljavafx/scene/layout/ColumnConstraints;->prefWidth:Ljavafx/beans/property/DoubleProperty;

    .line 196
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/layout/ColumnConstraints;->prefWidth:Ljavafx/beans/property/DoubleProperty;

    move-object v1, v2

    .end local v1    # "this":Ljavafx/scene/layout/ColumnConstraints;
    return-object v1
.end method

.method public final setFillWidth(Z)V
    .locals 4

    .prologue
    .line 374
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/ColumnConstraints;
    move v1, p1

    .local v1, "value":Z
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/layout/ColumnConstraints;->fillWidthProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v2

    move v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/BooleanProperty;->set(Z)V

    .line 375
    return-void
.end method

.method public final setHalignment(Ljavafx/geometry/HPos;)V
    .locals 4

    .prologue
    .line 333
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/ColumnConstraints;
    move-object v1, p1

    .local v1, "value":Ljavafx/geometry/HPos;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/layout/ColumnConstraints;->halignmentProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 334
    return-void
.end method

.method public final setHgrow(Ljavafx/scene/layout/Priority;)V
    .locals 4

    .prologue
    .line 293
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/ColumnConstraints;
    move-object v1, p1

    .local v1, "value":Ljavafx/scene/layout/Priority;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/layout/ColumnConstraints;->hgrowProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 294
    return-void
.end method

.method public final setMaxWidth(D)V
    .locals 7

    .prologue
    .line 209
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/ColumnConstraints;
    move-wide v1, p1

    .local v1, "value":D
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/layout/ColumnConstraints;->maxWidthProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v3

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    .line 210
    return-void
.end method

.method public final setMinWidth(D)V
    .locals 7

    .prologue
    .line 129
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/ColumnConstraints;
    move-wide v1, p1

    .local v1, "value":D
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/layout/ColumnConstraints;->minWidthProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v3

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    .line 130
    return-void
.end method

.method public final setPercentWidth(D)V
    .locals 7

    .prologue
    .line 250
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/ColumnConstraints;
    move-wide v1, p1

    .local v1, "value":D
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/layout/ColumnConstraints;->percentWidthProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v3

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    .line 251
    return-void
.end method

.method public final setPrefWidth(D)V
    .locals 7

    .prologue
    .line 169
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/ColumnConstraints;
    move-wide v1, p1

    .local v1, "value":D
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/layout/ColumnConstraints;->prefWidthProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v3

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    .line 170
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 409
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/ColumnConstraints;
    new-instance v1, Ljava/lang/StringBuilder;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ColumnConstraints percentWidth="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/layout/ColumnConstraints;->getPercentWidth()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " minWidth="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    .line 410
    invoke-virtual {v2}, Ljavafx/scene/layout/ColumnConstraints;->getMinWidth()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " prefWidth="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    .line 411
    invoke-virtual {v2}, Ljavafx/scene/layout/ColumnConstraints;->getPrefWidth()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " maxWidth="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    .line 412
    invoke-virtual {v2}, Ljavafx/scene/layout/ColumnConstraints;->getMaxWidth()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " hgrow="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    .line 413
    invoke-virtual {v2}, Ljavafx/scene/layout/ColumnConstraints;->getHgrow()Ljavafx/scene/layout/Priority;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " fillWidth="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    .line 414
    invoke-virtual {v2}, Ljavafx/scene/layout/ColumnConstraints;->isFillWidth()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " halignment="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    .line 415
    invoke-virtual {v2}, Ljavafx/scene/layout/ColumnConstraints;->getHalignment()Ljavafx/geometry/HPos;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/ColumnConstraints;
    return-object v0
.end method
