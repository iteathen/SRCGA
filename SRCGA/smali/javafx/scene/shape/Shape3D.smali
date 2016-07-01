.class public abstract Ljavafx/scene/shape/Shape3D;
.super Ljavafx/scene/Node;
.source "Shape3D.java"


# static fields
.field private static final DEFAULT_MATERIAL:Ljavafx/scene/paint/PhongMaterial;


# instance fields
.field private cullFace:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/scene/shape/CullFace;",
            ">;"
        }
    .end annotation
.end field

.field private drawMode:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/scene/shape/DrawMode;",
            ">;"
        }
    .end annotation
.end field

.field key:I

.field manager:Ljavafx/scene/shape/PredefinedMeshManager;

.field private material:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/scene/paint/Material;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 71
    new-instance v0, Ljavafx/scene/paint/PhongMaterial;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljavafx/scene/paint/PhongMaterial;-><init>()V

    sput-object v0, Ljavafx/scene/shape/Shape3D;->DEFAULT_MATERIAL:Ljavafx/scene/paint/PhongMaterial;

    return-void
.end method

.method protected constructor <init>()V
    .locals 4

    .prologue
    .line 73
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/Shape3D;
    move-object v2, v0

    invoke-direct {v2}, Ljavafx/scene/Node;-><init>()V

    .line 81
    move-object v2, v0

    invoke-static {}, Ljavafx/scene/shape/PredefinedMeshManager;->getInstance()Ljavafx/scene/shape/PredefinedMeshManager;

    move-result-object v3

    iput-object v3, v2, Ljavafx/scene/shape/Shape3D;->manager:Ljavafx/scene/shape/PredefinedMeshManager;

    .line 82
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Ljavafx/scene/shape/Shape3D;->key:I

    .line 74
    sget-object v2, Ljavafx/application/ConditionalFeature;->SCENE3D:Ljavafx/application/ConditionalFeature;

    invoke-static {v2}, Ljavafx/application/Platform;->isSupported(Ljavafx/application/ConditionalFeature;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 75
    const-class v2, Ljavafx/scene/shape/Shape3D;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 76
    .local v1, "logname":Ljava/lang/String;
    move-object v2, v1

    invoke-static {v2}, Lsun/util/logging/PlatformLogger;->getLogger(Ljava/lang/String;)Lsun/util/logging/PlatformLogger;

    move-result-object v2

    const-string v3, "System can\'t support ConditionalFeature.SCENE3D"

    invoke-virtual {v2, v3}, Lsun/util/logging/PlatformLogger;->warning(Ljava/lang/String;)V

    .line 79
    .end local v1    # "logname":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method static synthetic access$000(Ljavafx/scene/shape/Shape3D;Lcom/sun/javafx/scene/DirtyBits;)V
    .locals 4

    .prologue
    .line 65
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/shape/Shape3D;
    move-object v1, p1

    .local v1, "x1":Lcom/sun/javafx/scene/DirtyBits;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/scene/shape/Shape3D;->impl_markDirty(Lcom/sun/javafx/scene/DirtyBits;)V

    return-void
.end method

.method static synthetic access$100(Ljavafx/scene/shape/Shape3D;)V
    .locals 2

    .prologue
    .line 65
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/shape/Shape3D;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/shape/Shape3D;->impl_geomChanged()V

    return-void
.end method

.method static synthetic access$200(Ljavafx/scene/shape/Shape3D;Lcom/sun/javafx/scene/DirtyBits;)V
    .locals 4

    .prologue
    .line 65
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/shape/Shape3D;
    move-object v1, p1

    .local v1, "x1":Lcom/sun/javafx/scene/DirtyBits;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/scene/shape/Shape3D;->impl_markDirty(Lcom/sun/javafx/scene/DirtyBits;)V

    return-void
.end method

.method static synthetic access$300(Ljavafx/scene/shape/Shape3D;Lcom/sun/javafx/scene/DirtyBits;)V
    .locals 4

    .prologue
    .line 65
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/shape/Shape3D;
    move-object v1, p1

    .local v1, "x1":Lcom/sun/javafx/scene/DirtyBits;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/scene/shape/Shape3D;->impl_markDirty(Lcom/sun/javafx/scene/DirtyBits;)V

    return-void
.end method

.method static synthetic access$400(Ljavafx/scene/shape/Shape3D;Lcom/sun/javafx/scene/DirtyBits;)V
    .locals 4

    .prologue
    .line 65
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/shape/Shape3D;
    move-object v1, p1

    .local v1, "x1":Lcom/sun/javafx/scene/DirtyBits;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/scene/shape/Shape3D;->impl_markDirty(Lcom/sun/javafx/scene/DirtyBits;)V

    return-void
.end method


# virtual methods
.method public final cullFaceProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/scene/shape/CullFace;",
            ">;"
        }
    .end annotation

    .prologue
    .line 181
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/Shape3D;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/Shape3D;->cullFace:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    .line 182
    move-object v1, v0

    new-instance v2, Ljavafx/scene/shape/Shape3D$3;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    move-object v4, v0

    move-object v5, v0

    const-string v6, "cullFace"

    sget-object v7, Ljavafx/scene/shape/CullFace;->BACK:Ljavafx/scene/shape/CullFace;

    invoke-direct {v3, v4, v5, v6, v7}, Ljavafx/scene/shape/Shape3D$3;-><init>(Ljavafx/scene/shape/Shape3D;Ljava/lang/Object;Ljava/lang/String;Ljavafx/scene/shape/CullFace;)V

    iput-object v2, v1, Ljavafx/scene/shape/Shape3D;->cullFace:Ljavafx/beans/property/ObjectProperty;

    .line 191
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/Shape3D;->cullFace:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/shape/Shape3D;
    return-object v0
.end method

.method public final drawModeProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/scene/shape/DrawMode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 152
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/Shape3D;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/Shape3D;->drawMode:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    .line 153
    move-object v1, v0

    new-instance v2, Ljavafx/scene/shape/Shape3D$2;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    move-object v4, v0

    move-object v5, v0

    const-string v6, "drawMode"

    sget-object v7, Ljavafx/scene/shape/DrawMode;->FILL:Ljavafx/scene/shape/DrawMode;

    invoke-direct {v3, v4, v5, v6, v7}, Ljavafx/scene/shape/Shape3D$2;-><init>(Ljavafx/scene/shape/Shape3D;Ljava/lang/Object;Ljava/lang/String;Ljavafx/scene/shape/DrawMode;)V

    iput-object v2, v1, Ljavafx/scene/shape/Shape3D;->drawMode:Ljavafx/beans/property/ObjectProperty;

    .line 162
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/Shape3D;->drawMode:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/shape/Shape3D;
    return-object v0
.end method

.method public final getCullFace()Ljavafx/scene/shape/CullFace;
    .locals 2

    .prologue
    .line 177
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/Shape3D;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/Shape3D;->cullFace:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    sget-object v1, Ljavafx/scene/shape/CullFace;->BACK:Ljavafx/scene/shape/CullFace;

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/shape/Shape3D;
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/shape/Shape3D;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/Shape3D;->cullFace:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/scene/shape/CullFace;

    goto :goto_0
.end method

.method public final getDrawMode()Ljavafx/scene/shape/DrawMode;
    .locals 2

    .prologue
    .line 148
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/Shape3D;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/Shape3D;->drawMode:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    sget-object v1, Ljavafx/scene/shape/DrawMode;->FILL:Ljavafx/scene/shape/DrawMode;

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/shape/Shape3D;
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/shape/Shape3D;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/Shape3D;->drawMode:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/scene/shape/DrawMode;

    goto :goto_0
.end method

.method public final getMaterial()Ljavafx/scene/paint/Material;
    .locals 2

    .prologue
    .line 98
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/Shape3D;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/Shape3D;->material:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/shape/Shape3D;
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/shape/Shape3D;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/Shape3D;->material:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/scene/paint/Material;

    goto :goto_0
.end method

.method protected impl_computeContains(DD)Z
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 212
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/shape/Shape3D;
    move-wide v2, p1

    .local v2, "localX":D
    move-wide v4, p3

    .local v4, "localY":D
    const/4 v6, 0x0

    move v1, v6

    .end local v1    # "this":Ljavafx/scene/shape/Shape3D;
    return v1
.end method

.method public impl_computeGeomBounds(Lcom/sun/javafx/geom/BaseBounds;Lcom/sun/javafx/geom/transform/BaseTransform;)Lcom/sun/javafx/geom/BaseBounds;
    .locals 12
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 202
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/Shape3D;
    move-object v1, p1

    .local v1, "bounds":Lcom/sun/javafx/geom/BaseBounds;
    move-object v2, p2

    .local v2, "tx":Lcom/sun/javafx/geom/transform/BaseTransform;
    new-instance v3, Lcom/sun/javafx/geom/BoxBounds;

    move-object v11, v3

    move-object v3, v11

    move-object v4, v11

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct/range {v4 .. v10}, Lcom/sun/javafx/geom/BoxBounds;-><init>(FFFFFF)V

    move-object v0, v3

    .end local v0    # "this":Ljavafx/scene/shape/Shape3D;
    return-object v0
.end method

.method public impl_processMXNode(Lcom/sun/javafx/jmx/MXNodeAlgorithm;Lcom/sun/javafx/jmx/MXNodeAlgorithmContext;)Ljava/lang/Object;
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 244
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/Shape3D;
    move-object v1, p1

    .local v1, "alg":Lcom/sun/javafx/jmx/MXNodeAlgorithm;
    move-object v2, p2

    .local v2, "ctx":Lcom/sun/javafx/jmx/MXNodeAlgorithmContext;
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string v5, "Not supported yet."

    invoke-direct {v4, v5}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public impl_updatePeer()V
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 222
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/Shape3D;
    move-object v3, v0

    invoke-super {v3}, Ljavafx/scene/Node;->impl_updatePeer()V

    .line 223
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/shape/Shape3D;->impl_getPeer()Lcom/sun/javafx/sg/prism/NGNode;

    move-result-object v3

    check-cast v3, Lcom/sun/javafx/sg/prism/NGShape3D;

    move-object v1, v3

    .line 224
    .local v1, "peer":Lcom/sun/javafx/sg/prism/NGShape3D;
    move-object v3, v0

    sget-object v4, Lcom/sun/javafx/scene/DirtyBits;->MATERIAL:Lcom/sun/javafx/scene/DirtyBits;

    invoke-virtual {v3, v4}, Ljavafx/scene/shape/Shape3D;->impl_isDirty(Lcom/sun/javafx/scene/DirtyBits;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 225
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/shape/Shape3D;->getMaterial()Ljavafx/scene/paint/Material;

    move-result-object v3

    if-nez v3, :cond_3

    sget-object v3, Ljavafx/scene/shape/Shape3D;->DEFAULT_MATERIAL:Ljavafx/scene/paint/PhongMaterial;

    :goto_0
    move-object v2, v3

    .line 226
    .local v2, "mat":Ljavafx/scene/paint/Material;
    move-object v3, v2

    invoke-virtual {v3}, Ljavafx/scene/paint/Material;->impl_updatePG()V

    .line 227
    move-object v3, v1

    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/scene/paint/Material;->impl_getNGMaterial()Lcom/sun/javafx/sg/prism/NGPhongMaterial;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sun/javafx/sg/prism/NGShape3D;->setMaterial(Lcom/sun/javafx/sg/prism/NGPhongMaterial;)V

    .line 229
    .end local v2    # "mat":Ljavafx/scene/paint/Material;
    :cond_0
    move-object v3, v0

    sget-object v4, Lcom/sun/javafx/scene/DirtyBits;->NODE_DRAWMODE:Lcom/sun/javafx/scene/DirtyBits;

    invoke-virtual {v3, v4}, Ljavafx/scene/shape/Shape3D;->impl_isDirty(Lcom/sun/javafx/scene/DirtyBits;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 230
    move-object v3, v1

    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/shape/Shape3D;->getDrawMode()Ljavafx/scene/shape/DrawMode;

    move-result-object v4

    if-nez v4, :cond_4

    sget-object v4, Ljavafx/scene/shape/DrawMode;->FILL:Ljavafx/scene/shape/DrawMode;

    :goto_1
    invoke-virtual {v3, v4}, Lcom/sun/javafx/sg/prism/NGShape3D;->setDrawMode(Ljava/lang/Object;)V

    .line 232
    :cond_1
    move-object v3, v0

    sget-object v4, Lcom/sun/javafx/scene/DirtyBits;->NODE_CULLFACE:Lcom/sun/javafx/scene/DirtyBits;

    invoke-virtual {v3, v4}, Ljavafx/scene/shape/Shape3D;->impl_isDirty(Lcom/sun/javafx/scene/DirtyBits;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 233
    move-object v3, v1

    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/shape/Shape3D;->getCullFace()Ljavafx/scene/shape/CullFace;

    move-result-object v4

    if-nez v4, :cond_5

    sget-object v4, Ljavafx/scene/shape/CullFace;->BACK:Ljavafx/scene/shape/CullFace;

    :goto_2
    invoke-virtual {v3, v4}, Lcom/sun/javafx/sg/prism/NGShape3D;->setCullFace(Ljava/lang/Object;)V

    .line 235
    :cond_2
    return-void

    .line 225
    :cond_3
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/shape/Shape3D;->getMaterial()Ljavafx/scene/paint/Material;

    move-result-object v3

    goto :goto_0

    .line 230
    :cond_4
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/shape/Shape3D;->getDrawMode()Ljavafx/scene/shape/DrawMode;

    move-result-object v4

    goto :goto_1

    .line 233
    :cond_5
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/shape/Shape3D;->getCullFace()Ljavafx/scene/shape/CullFace;

    move-result-object v4

    goto :goto_2
.end method

.method public final materialProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/scene/paint/Material;",
            ">;"
        }
    .end annotation

    .prologue
    .line 102
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/Shape3D;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/Shape3D;->material:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    .line 103
    move-object v1, v0

    new-instance v2, Ljavafx/scene/shape/Shape3D$1;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v0

    move-object v5, v0

    const-string v6, "material"

    invoke-direct {v3, v4, v5, v6}, Ljavafx/scene/shape/Shape3D$1;-><init>(Ljavafx/scene/shape/Shape3D;Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v1, Ljavafx/scene/shape/Shape3D;->material:Ljavafx/beans/property/ObjectProperty;

    .line 130
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/Shape3D;->material:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/shape/Shape3D;
    return-object v0
.end method

.method public final setCullFace(Ljavafx/scene/shape/CullFace;)V
    .locals 4

    .prologue
    .line 173
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/Shape3D;
    move-object v1, p1

    .local v1, "value":Ljavafx/scene/shape/CullFace;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/shape/Shape3D;->cullFaceProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 174
    return-void
.end method

.method public final setDrawMode(Ljavafx/scene/shape/DrawMode;)V
    .locals 4

    .prologue
    .line 144
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/Shape3D;
    move-object v1, p1

    .local v1, "value":Ljavafx/scene/shape/DrawMode;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/shape/Shape3D;->drawModeProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 145
    return-void
.end method

.method public final setMaterial(Ljavafx/scene/paint/Material;)V
    .locals 4

    .prologue
    .line 94
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/Shape3D;
    move-object v1, p1

    .local v1, "value":Ljavafx/scene/paint/Material;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/shape/Shape3D;->materialProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 95
    return-void
.end method
