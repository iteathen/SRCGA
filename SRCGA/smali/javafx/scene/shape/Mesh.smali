.class public abstract Ljavafx/scene/shape/Mesh;
.super Ljava/lang/Object;
.source "Mesh.java"


# instance fields
.field private final dirty:Ljavafx/beans/property/BooleanProperty;


# direct methods
.method protected constructor <init>()V
    .locals 7

    .prologue
    .line 50
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/Mesh;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 65
    move-object v2, v0

    new-instance v3, Ljavafx/beans/property/SimpleBooleanProperty;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Ljavafx/beans/property/SimpleBooleanProperty;-><init>(Z)V

    iput-object v3, v2, Ljavafx/scene/shape/Mesh;->dirty:Ljavafx/beans/property/BooleanProperty;

    .line 51
    sget-object v2, Ljavafx/application/ConditionalFeature;->SCENE3D:Ljavafx/application/ConditionalFeature;

    invoke-static {v2}, Ljavafx/application/Platform;->isSupported(Ljavafx/application/ConditionalFeature;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 52
    const-class v2, Ljavafx/scene/shape/Mesh;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 53
    .local v1, "logname":Ljava/lang/String;
    move-object v2, v1

    invoke-static {v2}, Lsun/util/logging/PlatformLogger;->getLogger(Ljava/lang/String;)Lsun/util/logging/PlatformLogger;

    move-result-object v2

    const-string v3, "System can\'t support ConditionalFeature.SCENE3D"

    invoke-virtual {v2, v3}, Lsun/util/logging/PlatformLogger;->warning(Ljava/lang/String;)V

    .line 56
    .end local v1    # "logname":Ljava/lang/String;
    :cond_0
    return-void
.end method


# virtual methods
.method abstract computeBounds(Lcom/sun/javafx/geom/BaseBounds;)Lcom/sun/javafx/geom/BaseBounds;
.end method

.method final dirtyProperty()Ljavafx/beans/property/BooleanProperty;
    .locals 2

    .prologue
    .line 76
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/Mesh;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/Mesh;->dirty:Ljavafx/beans/property/BooleanProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/shape/Mesh;
    return-object v0
.end method

.method abstract getPGMesh()Lcom/sun/javafx/sg/prism/NGTriangleMesh;
.end method

.method protected abstract impl_computeIntersects(Lcom/sun/javafx/geom/PickRay;Lcom/sun/javafx/scene/input/PickResultChooser;Ljavafx/scene/Node;Ljavafx/scene/shape/CullFace;Z)Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method abstract impl_updatePG()V
.end method

.method final isDirty()Z
    .locals 2

    .prologue
    .line 68
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/Mesh;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/Mesh;->dirty:Ljavafx/beans/property/BooleanProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/BooleanProperty;->getValue()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Ljavafx/scene/shape/Mesh;
    return v0
.end method

.method setDirty(Z)V
    .locals 4

    .prologue
    .line 72
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/Mesh;
    move v1, p1

    .local v1, "value":Z
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/shape/Mesh;->dirty:Ljavafx/beans/property/BooleanProperty;

    move v3, v1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljavafx/beans/property/BooleanProperty;->setValue(Ljava/lang/Boolean;)V

    .line 73
    return-void
.end method
