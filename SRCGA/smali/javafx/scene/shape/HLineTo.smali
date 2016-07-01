.class public Ljavafx/scene/shape/HLineTo;
.super Ljavafx/scene/shape/PathElement;
.source "HLineTo.java"


# instance fields
.field private x:Ljavafx/beans/property/DoubleProperty;


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    .line 56
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/HLineTo;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/shape/PathElement;-><init>()V

    .line 72
    move-object v1, v0

    new-instance v2, Ljavafx/scene/shape/HLineTo$1;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/shape/HLineTo$1;-><init>(Ljavafx/scene/shape/HLineTo;)V

    iput-object v2, v1, Ljavafx/scene/shape/HLineTo;->x:Ljavafx/beans/property/DoubleProperty;

    .line 57
    return-void
.end method

.method public constructor <init>(D)V
    .locals 9

    .prologue
    .line 63
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/HLineTo;
    move-wide v1, p1

    .local v1, "x":D
    move-object v3, v0

    invoke-direct {v3}, Ljavafx/scene/shape/PathElement;-><init>()V

    .line 72
    move-object v3, v0

    new-instance v4, Ljavafx/scene/shape/HLineTo$1;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v0

    invoke-direct {v5, v6}, Ljavafx/scene/shape/HLineTo$1;-><init>(Ljavafx/scene/shape/HLineTo;)V

    iput-object v4, v3, Ljavafx/scene/shape/HLineTo;->x:Ljavafx/beans/property/DoubleProperty;

    .line 64
    move-object v3, v0

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/shape/HLineTo;->setX(D)V

    .line 65
    return-void
.end method


# virtual methods
.method addTo(Lcom/sun/javafx/sg/prism/NGPath;)V
    .locals 8

    .prologue
    .line 105
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/shape/HLineTo;
    move-object v2, p1

    .local v2, "pgPath":Lcom/sun/javafx/sg/prism/NGPath;
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/shape/HLineTo;->isAbsolute()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 106
    move-object v3, v2

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/shape/HLineTo;->getX()D

    move-result-wide v4

    double-to-float v4, v4

    move-object v5, v2

    invoke-virtual {v5}, Lcom/sun/javafx/sg/prism/NGPath;->getCurrentY()F

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/sg/prism/NGPath;->addLineTo(FF)V

    .line 110
    :goto_0
    return-void

    .line 108
    :cond_0
    move-object v3, v2

    move-object v4, v2

    invoke-virtual {v4}, Lcom/sun/javafx/sg/prism/NGPath;->getCurrentX()F

    move-result v4

    float-to-double v4, v4

    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/shape/HLineTo;->getX()D

    move-result-wide v6

    add-double/2addr v4, v6

    double-to-float v4, v4

    move-object v5, v2

    invoke-virtual {v5}, Lcom/sun/javafx/sg/prism/NGPath;->getCurrentY()F

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/sg/prism/NGPath;->addLineTo(FF)V

    goto :goto_0
.end method

.method public final getX()D
    .locals 3

    .prologue
    .line 96
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/HLineTo;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/HLineTo;->x:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v1

    move-wide v0, v1

    .end local v0    # "this":Ljavafx/scene/shape/HLineTo;
    return-wide v0
.end method

.method public impl_addTo(Lcom/sun/javafx/geom/Path2D;)V
    .locals 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 119
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/shape/HLineTo;
    move-object v2, p1

    .local v2, "path":Lcom/sun/javafx/geom/Path2D;
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/shape/HLineTo;->isAbsolute()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 120
    move-object v3, v2

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/shape/HLineTo;->getX()D

    move-result-wide v4

    double-to-float v4, v4

    move-object v5, v2

    invoke-virtual {v5}, Lcom/sun/javafx/geom/Path2D;->getCurrentY()F

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/geom/Path2D;->lineTo(FF)V

    .line 124
    :goto_0
    return-void

    .line 122
    :cond_0
    move-object v3, v2

    move-object v4, v2

    invoke-virtual {v4}, Lcom/sun/javafx/geom/Path2D;->getCurrentX()F

    move-result v4

    float-to-double v4, v4

    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/shape/HLineTo;->getX()D

    move-result-wide v6

    add-double/2addr v4, v6

    double-to-float v4, v4

    move-object v5, v2

    invoke-virtual {v5}, Lcom/sun/javafx/geom/Path2D;->getCurrentY()F

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/geom/Path2D;->lineTo(FF)V

    goto :goto_0
.end method

.method public final setX(D)V
    .locals 7

    .prologue
    .line 92
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/HLineTo;
    move-wide v1, p1

    .local v1, "value":D
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/shape/HLineTo;->x:Ljavafx/beans/property/DoubleProperty;

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    .line 93
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .prologue
    .line 132
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/shape/HLineTo;
    new-instance v3, Ljava/lang/StringBuilder;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string v5, "HLineTo["

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v2, v3

    .line 133
    .local v2, "sb":Ljava/lang/StringBuilder;
    move-object v3, v2

    const-string v4, "x="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/shape/HLineTo;->getX()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 134
    move-object v3, v2

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    .end local v1    # "this":Ljavafx/scene/shape/HLineTo;
    return-object v1
.end method

.method public final xProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 2

    .prologue
    .line 100
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/HLineTo;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/HLineTo;->x:Ljavafx/beans/property/DoubleProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/shape/HLineTo;
    return-object v0
.end method
