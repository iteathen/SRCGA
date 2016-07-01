.class public Ljavafx/scene/shape/QuadCurveTo;
.super Ljavafx/scene/shape/PathElement;
.source "QuadCurveTo.java"


# instance fields
.field private controlX:Ljavafx/beans/property/DoubleProperty;

.field private controlY:Ljavafx/beans/property/DoubleProperty;

.field private x:Ljavafx/beans/property/DoubleProperty;

.field private y:Ljavafx/beans/property/DoubleProperty;


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    .line 73
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/QuadCurveTo;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/shape/PathElement;-><init>()V

    .line 95
    move-object v1, v0

    new-instance v2, Ljavafx/scene/shape/QuadCurveTo$1;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/shape/QuadCurveTo$1;-><init>(Ljavafx/scene/shape/QuadCurveTo;)V

    iput-object v2, v1, Ljavafx/scene/shape/QuadCurveTo;->controlX:Ljavafx/beans/property/DoubleProperty;

    .line 131
    move-object v1, v0

    new-instance v2, Ljavafx/scene/shape/QuadCurveTo$2;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/shape/QuadCurveTo$2;-><init>(Ljavafx/scene/shape/QuadCurveTo;)V

    iput-object v2, v1, Ljavafx/scene/shape/QuadCurveTo;->controlY:Ljavafx/beans/property/DoubleProperty;

    .line 74
    return-void
.end method

.method public constructor <init>(DDDD)V
    .locals 15

    .prologue
    .line 83
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/QuadCurveTo;
    move-wide/from16 v1, p1

    .local v1, "controlX":D
    move-wide/from16 v3, p3

    .local v3, "controlY":D
    move-wide/from16 v5, p5

    .local v5, "x":D
    move-wide/from16 v7, p7

    .local v7, "y":D
    move-object v9, v0

    invoke-direct {v9}, Ljavafx/scene/shape/PathElement;-><init>()V

    .line 95
    move-object v9, v0

    new-instance v10, Ljavafx/scene/shape/QuadCurveTo$1;

    move-object v13, v10

    move-object v10, v13

    move-object v11, v13

    move-object v12, v0

    invoke-direct {v11, v12}, Ljavafx/scene/shape/QuadCurveTo$1;-><init>(Ljavafx/scene/shape/QuadCurveTo;)V

    iput-object v10, v9, Ljavafx/scene/shape/QuadCurveTo;->controlX:Ljavafx/beans/property/DoubleProperty;

    .line 131
    move-object v9, v0

    new-instance v10, Ljavafx/scene/shape/QuadCurveTo$2;

    move-object v13, v10

    move-object v10, v13

    move-object v11, v13

    move-object v12, v0

    invoke-direct {v11, v12}, Ljavafx/scene/shape/QuadCurveTo$2;-><init>(Ljavafx/scene/shape/QuadCurveTo;)V

    iput-object v10, v9, Ljavafx/scene/shape/QuadCurveTo;->controlY:Ljavafx/beans/property/DoubleProperty;

    .line 84
    move-object v9, v0

    move-wide v10, v1

    invoke-virtual {v9, v10, v11}, Ljavafx/scene/shape/QuadCurveTo;->setControlX(D)V

    .line 85
    move-object v9, v0

    move-wide v10, v3

    invoke-virtual {v9, v10, v11}, Ljavafx/scene/shape/QuadCurveTo;->setControlY(D)V

    .line 86
    move-object v9, v0

    move-wide v10, v5

    invoke-virtual {v9, v10, v11}, Ljavafx/scene/shape/QuadCurveTo;->setX(D)V

    .line 87
    move-object v9, v0

    move-wide v10, v7

    invoke-virtual {v9, v10, v11}, Ljavafx/scene/shape/QuadCurveTo;->setY(D)V

    .line 88
    return-void
.end method


# virtual methods
.method addTo(Lcom/sun/javafx/sg/prism/NGPath;)V
    .locals 14

    .prologue
    .line 244
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/QuadCurveTo;
    move-object v1, p1

    .local v1, "pgPath":Lcom/sun/javafx/sg/prism/NGPath;
    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/scene/shape/QuadCurveTo;->isAbsolute()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 245
    move-object v6, v1

    move-object v7, v0

    .line 246
    invoke-virtual {v7}, Ljavafx/scene/shape/QuadCurveTo;->getControlX()D

    move-result-wide v7

    double-to-float v7, v7

    move-object v8, v0

    .line 247
    invoke-virtual {v8}, Ljavafx/scene/shape/QuadCurveTo;->getControlY()D

    move-result-wide v8

    double-to-float v8, v8

    move-object v9, v0

    .line 248
    invoke-virtual {v9}, Ljavafx/scene/shape/QuadCurveTo;->getX()D

    move-result-wide v9

    double-to-float v9, v9

    move-object v10, v0

    .line 249
    invoke-virtual {v10}, Ljavafx/scene/shape/QuadCurveTo;->getY()D

    move-result-wide v10

    double-to-float v10, v10

    .line 245
    invoke-virtual {v6, v7, v8, v9, v10}, Lcom/sun/javafx/sg/prism/NGPath;->addQuadTo(FFFF)V

    .line 259
    :goto_0
    return-void

    .line 251
    :cond_0
    move-object v6, v1

    invoke-virtual {v6}, Lcom/sun/javafx/sg/prism/NGPath;->getCurrentX()F

    move-result v6

    float-to-double v6, v6

    move-wide v2, v6

    .line 252
    .local v2, "dx":D
    move-object v6, v1

    invoke-virtual {v6}, Lcom/sun/javafx/sg/prism/NGPath;->getCurrentY()F

    move-result v6

    float-to-double v6, v6

    move-wide v4, v6

    .line 253
    .local v4, "dy":D
    move-object v6, v1

    move-object v7, v0

    .line 254
    invoke-virtual {v7}, Ljavafx/scene/shape/QuadCurveTo;->getControlX()D

    move-result-wide v7

    move-wide v9, v2

    add-double/2addr v7, v9

    double-to-float v7, v7

    move-object v8, v0

    .line 255
    invoke-virtual {v8}, Ljavafx/scene/shape/QuadCurveTo;->getControlY()D

    move-result-wide v8

    move-wide v10, v4

    add-double/2addr v8, v10

    double-to-float v8, v8

    move-object v9, v0

    .line 256
    invoke-virtual {v9}, Ljavafx/scene/shape/QuadCurveTo;->getX()D

    move-result-wide v9

    move-wide v11, v2

    add-double/2addr v9, v11

    double-to-float v9, v9

    move-object v10, v0

    .line 257
    invoke-virtual {v10}, Ljavafx/scene/shape/QuadCurveTo;->getY()D

    move-result-wide v10

    move-wide v12, v4

    add-double/2addr v10, v12

    double-to-float v10, v10

    .line 253
    invoke-virtual {v6, v7, v8, v9, v10}, Lcom/sun/javafx/sg/prism/NGPath;->addQuadTo(FFFF)V

    goto :goto_0
.end method

.method public final controlXProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 2

    .prologue
    .line 123
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/QuadCurveTo;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/QuadCurveTo;->controlX:Ljavafx/beans/property/DoubleProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/shape/QuadCurveTo;
    return-object v0
.end method

.method public final controlYProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 2

    .prologue
    .line 159
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/QuadCurveTo;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/QuadCurveTo;->controlY:Ljavafx/beans/property/DoubleProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/shape/QuadCurveTo;
    return-object v0
.end method

.method public final getControlX()D
    .locals 3

    .prologue
    .line 119
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/QuadCurveTo;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/QuadCurveTo;->controlX:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v1

    move-wide v0, v1

    .end local v0    # "this":Ljavafx/scene/shape/QuadCurveTo;
    return-wide v0
.end method

.method public final getControlY()D
    .locals 3

    .prologue
    .line 155
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/QuadCurveTo;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/QuadCurveTo;->controlY:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v1

    move-wide v0, v1

    .end local v0    # "this":Ljavafx/scene/shape/QuadCurveTo;
    return-wide v0
.end method

.method public final getX()D
    .locals 4

    .prologue
    .line 176
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/shape/QuadCurveTo;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/shape/QuadCurveTo;->x:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    const-wide/16 v2, 0x0

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Ljavafx/scene/shape/QuadCurveTo;
    return-wide v1

    .restart local v1    # "this":Ljavafx/scene/shape/QuadCurveTo;
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/shape/QuadCurveTo;->x:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v2}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v2

    goto :goto_0
.end method

.method public final getY()D
    .locals 4

    .prologue
    .line 216
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/shape/QuadCurveTo;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/shape/QuadCurveTo;->y:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    const-wide/16 v2, 0x0

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Ljavafx/scene/shape/QuadCurveTo;
    return-wide v1

    .restart local v1    # "this":Ljavafx/scene/shape/QuadCurveTo;
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/shape/QuadCurveTo;->y:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v2}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v2

    goto :goto_0
.end method

.method public impl_addTo(Lcom/sun/javafx/geom/Path2D;)V
    .locals 14
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 268
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/QuadCurveTo;
    move-object v1, p1

    .local v1, "path":Lcom/sun/javafx/geom/Path2D;
    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/scene/shape/QuadCurveTo;->isAbsolute()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 269
    move-object v6, v1

    move-object v7, v0

    .line 270
    invoke-virtual {v7}, Ljavafx/scene/shape/QuadCurveTo;->getControlX()D

    move-result-wide v7

    double-to-float v7, v7

    move-object v8, v0

    .line 271
    invoke-virtual {v8}, Ljavafx/scene/shape/QuadCurveTo;->getControlY()D

    move-result-wide v8

    double-to-float v8, v8

    move-object v9, v0

    .line 272
    invoke-virtual {v9}, Ljavafx/scene/shape/QuadCurveTo;->getX()D

    move-result-wide v9

    double-to-float v9, v9

    move-object v10, v0

    .line 273
    invoke-virtual {v10}, Ljavafx/scene/shape/QuadCurveTo;->getY()D

    move-result-wide v10

    double-to-float v10, v10

    .line 269
    invoke-virtual {v6, v7, v8, v9, v10}, Lcom/sun/javafx/geom/Path2D;->quadTo(FFFF)V

    .line 283
    :goto_0
    return-void

    .line 275
    :cond_0
    move-object v6, v1

    invoke-virtual {v6}, Lcom/sun/javafx/geom/Path2D;->getCurrentX()F

    move-result v6

    float-to-double v6, v6

    move-wide v2, v6

    .line 276
    .local v2, "dx":D
    move-object v6, v1

    invoke-virtual {v6}, Lcom/sun/javafx/geom/Path2D;->getCurrentY()F

    move-result v6

    float-to-double v6, v6

    move-wide v4, v6

    .line 277
    .local v4, "dy":D
    move-object v6, v1

    move-object v7, v0

    .line 278
    invoke-virtual {v7}, Ljavafx/scene/shape/QuadCurveTo;->getControlX()D

    move-result-wide v7

    move-wide v9, v2

    add-double/2addr v7, v9

    double-to-float v7, v7

    move-object v8, v0

    .line 279
    invoke-virtual {v8}, Ljavafx/scene/shape/QuadCurveTo;->getControlY()D

    move-result-wide v8

    move-wide v10, v4

    add-double/2addr v8, v10

    double-to-float v8, v8

    move-object v9, v0

    .line 280
    invoke-virtual {v9}, Ljavafx/scene/shape/QuadCurveTo;->getX()D

    move-result-wide v9

    move-wide v11, v2

    add-double/2addr v9, v11

    double-to-float v9, v9

    move-object v10, v0

    .line 281
    invoke-virtual {v10}, Ljavafx/scene/shape/QuadCurveTo;->getY()D

    move-result-wide v10

    move-wide v12, v4

    add-double/2addr v10, v12

    double-to-float v10, v10

    .line 277
    invoke-virtual {v6, v7, v8, v9, v10}, Lcom/sun/javafx/geom/Path2D;->quadTo(FFFF)V

    goto :goto_0
.end method

.method public final setControlX(D)V
    .locals 7

    .prologue
    .line 115
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/QuadCurveTo;
    move-wide v1, p1

    .local v1, "value":D
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/shape/QuadCurveTo;->controlX:Ljavafx/beans/property/DoubleProperty;

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    .line 116
    return-void
.end method

.method public final setControlY(D)V
    .locals 7

    .prologue
    .line 151
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/QuadCurveTo;
    move-wide v1, p1

    .local v1, "value":D
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/shape/QuadCurveTo;->controlY:Ljavafx/beans/property/DoubleProperty;

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    .line 152
    return-void
.end method

.method public final setX(D)V
    .locals 9

    .prologue
    .line 170
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/shape/QuadCurveTo;
    move-wide v2, p1

    .local v2, "value":D
    move-object v4, v1

    iget-object v4, v4, Ljavafx/scene/shape/QuadCurveTo;->x:Ljavafx/beans/property/DoubleProperty;

    if-nez v4, :cond_0

    move-wide v4, v2

    const-wide/16 v6, 0x0

    cmpl-double v4, v4, v6

    if-eqz v4, :cond_1

    .line 171
    :cond_0
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/shape/QuadCurveTo;->xProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v4

    move-wide v5, v2

    invoke-virtual {v4, v5, v6}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    .line 173
    :cond_1
    return-void
.end method

.method public final setY(D)V
    .locals 9

    .prologue
    .line 210
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/shape/QuadCurveTo;
    move-wide v2, p1

    .local v2, "value":D
    move-object v4, v1

    iget-object v4, v4, Ljavafx/scene/shape/QuadCurveTo;->y:Ljavafx/beans/property/DoubleProperty;

    if-nez v4, :cond_0

    move-wide v4, v2

    const-wide/16 v6, 0x0

    cmpl-double v4, v4, v6

    if-eqz v4, :cond_1

    .line 211
    :cond_0
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/shape/QuadCurveTo;->yProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v4

    move-wide v5, v2

    invoke-virtual {v4, v5, v6}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    .line 213
    :cond_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .prologue
    .line 291
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/shape/QuadCurveTo;
    new-instance v3, Ljava/lang/StringBuilder;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string v5, "CubicCurveTo["

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v2, v3

    .line 293
    .local v2, "sb":Ljava/lang/StringBuilder;
    move-object v3, v2

    const-string v4, "x="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/shape/QuadCurveTo;->getX()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 294
    move-object v3, v2

    const-string v4, ", y="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/shape/QuadCurveTo;->getY()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 295
    move-object v3, v2

    const-string v4, ", controlX="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/shape/QuadCurveTo;->getControlX()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 296
    move-object v3, v2

    const-string v4, ", controlY="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/shape/QuadCurveTo;->getControlY()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 298
    move-object v3, v2

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    .end local v1    # "this":Ljavafx/scene/shape/QuadCurveTo;
    return-object v1
.end method

.method public final xProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 6

    .prologue
    .line 180
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/QuadCurveTo;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/QuadCurveTo;->x:Ljavafx/beans/property/DoubleProperty;

    if-nez v1, :cond_0

    .line 181
    move-object v1, v0

    new-instance v2, Ljavafx/scene/shape/QuadCurveTo$3;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/shape/QuadCurveTo$3;-><init>(Ljavafx/scene/shape/QuadCurveTo;)V

    iput-object v2, v1, Ljavafx/scene/shape/QuadCurveTo;->x:Ljavafx/beans/property/DoubleProperty;

    .line 199
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/QuadCurveTo;->x:Ljavafx/beans/property/DoubleProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/shape/QuadCurveTo;
    return-object v0
.end method

.method public final yProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 6

    .prologue
    .line 220
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/QuadCurveTo;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/QuadCurveTo;->y:Ljavafx/beans/property/DoubleProperty;

    if-nez v1, :cond_0

    .line 221
    move-object v1, v0

    new-instance v2, Ljavafx/scene/shape/QuadCurveTo$4;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/shape/QuadCurveTo$4;-><init>(Ljavafx/scene/shape/QuadCurveTo;)V

    iput-object v2, v1, Ljavafx/scene/shape/QuadCurveTo;->y:Ljavafx/beans/property/DoubleProperty;

    .line 239
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/QuadCurveTo;->y:Ljavafx/beans/property/DoubleProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/shape/QuadCurveTo;
    return-object v0
.end method
