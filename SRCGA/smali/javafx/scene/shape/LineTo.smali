.class public Ljavafx/scene/shape/LineTo;
.super Ljavafx/scene/shape/PathElement;
.source "LineTo.java"


# instance fields
.field private x:Ljavafx/beans/property/DoubleProperty;

.field private y:Ljavafx/beans/property/DoubleProperty;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 57
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/LineTo;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/shape/PathElement;-><init>()V

    .line 58
    return-void
.end method

.method public constructor <init>(DD)V
    .locals 9

    .prologue
    .line 65
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/LineTo;
    move-wide v1, p1

    .local v1, "x":D
    move-wide v3, p3

    .local v3, "y":D
    move-object v5, v0

    invoke-direct {v5}, Ljavafx/scene/shape/PathElement;-><init>()V

    .line 66
    move-object v5, v0

    move-wide v6, v1

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/shape/LineTo;->setX(D)V

    .line 67
    move-object v5, v0

    move-wide v6, v3

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/shape/LineTo;->setY(D)V

    .line 68
    return-void
.end method


# virtual methods
.method addTo(Lcom/sun/javafx/sg/prism/NGPath;)V
    .locals 8

    .prologue
    .line 154
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/LineTo;
    move-object v1, p1

    .local v1, "pgPath":Lcom/sun/javafx/sg/prism/NGPath;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/shape/LineTo;->isAbsolute()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 155
    move-object v2, v1

    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/shape/LineTo;->getX()D

    move-result-wide v3

    double-to-float v3, v3

    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/shape/LineTo;->getY()D

    move-result-wide v4

    double-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Lcom/sun/javafx/sg/prism/NGPath;->addLineTo(FF)V

    .line 160
    :goto_0
    return-void

    .line 157
    :cond_0
    move-object v2, v1

    move-object v3, v1

    invoke-virtual {v3}, Lcom/sun/javafx/sg/prism/NGPath;->getCurrentX()F

    move-result v3

    float-to-double v3, v3

    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/shape/LineTo;->getX()D

    move-result-wide v5

    add-double/2addr v3, v5

    double-to-float v3, v3

    move-object v4, v1

    .line 158
    invoke-virtual {v4}, Lcom/sun/javafx/sg/prism/NGPath;->getCurrentY()F

    move-result v4

    float-to-double v4, v4

    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/scene/shape/LineTo;->getY()D

    move-result-wide v6

    add-double/2addr v4, v6

    double-to-float v4, v4

    .line 157
    invoke-virtual {v2, v3, v4}, Lcom/sun/javafx/sg/prism/NGPath;->addLineTo(FF)V

    goto :goto_0
.end method

.method public final getX()D
    .locals 4

    .prologue
    .line 86
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/shape/LineTo;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/shape/LineTo;->x:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    const-wide/16 v2, 0x0

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Ljavafx/scene/shape/LineTo;
    return-wide v1

    .restart local v1    # "this":Ljavafx/scene/shape/LineTo;
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/shape/LineTo;->x:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v2}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v2

    goto :goto_0
.end method

.method public final getY()D
    .locals 4

    .prologue
    .line 126
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/shape/LineTo;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/shape/LineTo;->y:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    const-wide/16 v2, 0x0

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Ljavafx/scene/shape/LineTo;
    return-wide v1

    .restart local v1    # "this":Ljavafx/scene/shape/LineTo;
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/shape/LineTo;->y:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v2}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v2

    goto :goto_0
.end method

.method public impl_addTo(Lcom/sun/javafx/geom/Path2D;)V
    .locals 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 169
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/LineTo;
    move-object v1, p1

    .local v1, "path":Lcom/sun/javafx/geom/Path2D;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/shape/LineTo;->isAbsolute()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 170
    move-object v2, v1

    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/shape/LineTo;->getX()D

    move-result-wide v3

    double-to-float v3, v3

    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/shape/LineTo;->getY()D

    move-result-wide v4

    double-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Lcom/sun/javafx/geom/Path2D;->lineTo(FF)V

    .line 175
    :goto_0
    return-void

    .line 172
    :cond_0
    move-object v2, v1

    move-object v3, v1

    invoke-virtual {v3}, Lcom/sun/javafx/geom/Path2D;->getCurrentX()F

    move-result v3

    float-to-double v3, v3

    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/shape/LineTo;->getX()D

    move-result-wide v5

    add-double/2addr v3, v5

    double-to-float v3, v3

    move-object v4, v1

    .line 173
    invoke-virtual {v4}, Lcom/sun/javafx/geom/Path2D;->getCurrentY()F

    move-result v4

    float-to-double v4, v4

    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/scene/shape/LineTo;->getY()D

    move-result-wide v6

    add-double/2addr v4, v6

    double-to-float v4, v4

    .line 172
    invoke-virtual {v2, v3, v4}, Lcom/sun/javafx/geom/Path2D;->lineTo(FF)V

    goto :goto_0
.end method

.method public final setX(D)V
    .locals 9

    .prologue
    .line 80
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/shape/LineTo;
    move-wide v2, p1

    .local v2, "value":D
    move-object v4, v1

    iget-object v4, v4, Ljavafx/scene/shape/LineTo;->x:Ljavafx/beans/property/DoubleProperty;

    if-nez v4, :cond_0

    move-wide v4, v2

    const-wide/16 v6, 0x0

    cmpl-double v4, v4, v6

    if-eqz v4, :cond_1

    .line 81
    :cond_0
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/shape/LineTo;->xProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v4

    move-wide v5, v2

    invoke-virtual {v4, v5, v6}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    .line 83
    :cond_1
    return-void
.end method

.method public final setY(D)V
    .locals 9

    .prologue
    .line 120
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/shape/LineTo;
    move-wide v2, p1

    .local v2, "value":D
    move-object v4, v1

    iget-object v4, v4, Ljavafx/scene/shape/LineTo;->y:Ljavafx/beans/property/DoubleProperty;

    if-nez v4, :cond_0

    move-wide v4, v2

    const-wide/16 v6, 0x0

    cmpl-double v4, v4, v6

    if-eqz v4, :cond_1

    .line 121
    :cond_0
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/shape/LineTo;->yProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v4

    move-wide v5, v2

    invoke-virtual {v4, v5, v6}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    .line 123
    :cond_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .prologue
    .line 183
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/shape/LineTo;
    new-instance v3, Ljava/lang/StringBuilder;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string v5, "LineTo["

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v2, v3

    .line 184
    .local v2, "sb":Ljava/lang/StringBuilder;
    move-object v3, v2

    const-string v4, "x="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/shape/LineTo;->getX()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 185
    move-object v3, v2

    const-string v4, ", y="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/shape/LineTo;->getY()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 186
    move-object v3, v2

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    .end local v1    # "this":Ljavafx/scene/shape/LineTo;
    return-object v1
.end method

.method public final xProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 6

    .prologue
    .line 90
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/LineTo;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/LineTo;->x:Ljavafx/beans/property/DoubleProperty;

    if-nez v1, :cond_0

    .line 91
    move-object v1, v0

    new-instance v2, Ljavafx/scene/shape/LineTo$1;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/shape/LineTo$1;-><init>(Ljavafx/scene/shape/LineTo;)V

    iput-object v2, v1, Ljavafx/scene/shape/LineTo;->x:Ljavafx/beans/property/DoubleProperty;

    .line 109
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/LineTo;->x:Ljavafx/beans/property/DoubleProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/shape/LineTo;
    return-object v0
.end method

.method public final yProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 6

    .prologue
    .line 130
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/LineTo;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/LineTo;->y:Ljavafx/beans/property/DoubleProperty;

    if-nez v1, :cond_0

    .line 131
    move-object v1, v0

    new-instance v2, Ljavafx/scene/shape/LineTo$2;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/shape/LineTo$2;-><init>(Ljavafx/scene/shape/LineTo;)V

    iput-object v2, v1, Ljavafx/scene/shape/LineTo;->y:Ljavafx/beans/property/DoubleProperty;

    .line 149
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/LineTo;->y:Ljavafx/beans/property/DoubleProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/shape/LineTo;
    return-object v0
.end method
