.class public Ljavafx/scene/shape/MeshView;
.super Ljavafx/scene/shape/Shape3D;
.source "MeshView.java"


# instance fields
.field private mesh:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/scene/shape/Mesh;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 52
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/MeshView;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/shape/Shape3D;-><init>()V

    .line 53
    return-void
.end method

.method public constructor <init>(Ljavafx/scene/shape/Mesh;)V
    .locals 4

    .prologue
    .line 59
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/MeshView;
    move-object v1, p1

    .local v1, "mesh":Ljavafx/scene/shape/Mesh;
    move-object v2, v0

    invoke-direct {v2}, Ljavafx/scene/shape/Shape3D;-><init>()V

    .line 60
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/scene/shape/MeshView;->setMesh(Ljavafx/scene/shape/Mesh;)V

    .line 61
    return-void
.end method

.method static synthetic access$000(Ljavafx/scene/shape/MeshView;Lcom/sun/javafx/scene/DirtyBits;)V
    .locals 4

    .prologue
    .line 47
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/shape/MeshView;
    move-object v1, p1

    .local v1, "x1":Lcom/sun/javafx/scene/DirtyBits;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/scene/shape/MeshView;->impl_markDirty(Lcom/sun/javafx/scene/DirtyBits;)V

    return-void
.end method

.method static synthetic access$100(Ljavafx/scene/shape/MeshView;Lcom/sun/javafx/scene/DirtyBits;)V
    .locals 4

    .prologue
    .line 47
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/shape/MeshView;
    move-object v1, p1

    .local v1, "x1":Lcom/sun/javafx/scene/DirtyBits;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/scene/shape/MeshView;->impl_markDirty(Lcom/sun/javafx/scene/DirtyBits;)V

    return-void
.end method

.method static synthetic access$200(Ljavafx/scene/shape/MeshView;)V
    .locals 2

    .prologue
    .line 47
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/shape/MeshView;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/shape/MeshView;->impl_geomChanged()V

    return-void
.end method

.method static synthetic access$300(Ljavafx/scene/shape/MeshView;Lcom/sun/javafx/scene/DirtyBits;)V
    .locals 4

    .prologue
    .line 47
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/shape/MeshView;
    move-object v1, p1

    .local v1, "x1":Lcom/sun/javafx/scene/DirtyBits;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/scene/shape/MeshView;->impl_markDirty(Lcom/sun/javafx/scene/DirtyBits;)V

    return-void
.end method

.method static synthetic access$400(Ljavafx/scene/shape/MeshView;)V
    .locals 2

    .prologue
    .line 47
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/shape/MeshView;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/shape/MeshView;->impl_geomChanged()V

    return-void
.end method


# virtual methods
.method public final getMesh()Ljavafx/scene/shape/Mesh;
    .locals 2

    .prologue
    .line 75
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/MeshView;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/MeshView;->mesh:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/shape/MeshView;
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/shape/MeshView;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/MeshView;->mesh:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/scene/shape/Mesh;

    goto :goto_0
.end method

.method protected impl_computeContains(DD)Z
    .locals 11
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 161
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/shape/MeshView;
    move-wide v2, p1

    .local v2, "localX":D
    move-wide v4, p3

    .local v4, "localY":D
    new-instance v6, Ljava/lang/UnsupportedOperationException;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    const-string v8, "Not supported yet."

    invoke-direct {v7, v8}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method public impl_computeGeomBounds(Lcom/sun/javafx/geom/BaseBounds;Lcom/sun/javafx/geom/transform/BaseTransform;)Lcom/sun/javafx/geom/BaseBounds;
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 145
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/MeshView;
    move-object v1, p1

    .local v1, "bounds":Lcom/sun/javafx/geom/BaseBounds;
    move-object v2, p2

    .local v2, "tx":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/shape/MeshView;->getMesh()Ljavafx/scene/shape/Mesh;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 146
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/shape/MeshView;->getMesh()Ljavafx/scene/shape/Mesh;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljavafx/scene/shape/Mesh;->computeBounds(Lcom/sun/javafx/geom/BaseBounds;)Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v3

    move-object v1, v3

    .line 147
    move-object v3, v2

    move-object v4, v1

    move-object v5, v1

    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/geom/transform/BaseTransform;->transform(Lcom/sun/javafx/geom/BaseBounds;Lcom/sun/javafx/geom/BaseBounds;)Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v3

    move-object v1, v3

    .line 151
    :goto_0
    move-object v3, v1

    move-object v0, v3

    .end local v0    # "this":Ljavafx/scene/shape/MeshView;
    return-object v0

    .line 149
    .restart local v0    # "this":Ljavafx/scene/shape/MeshView;
    :cond_0
    move-object v3, v1

    invoke-virtual {v3}, Lcom/sun/javafx/geom/BaseBounds;->makeEmpty()Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v3

    goto :goto_0
.end method

.method protected impl_computeIntersects(Lcom/sun/javafx/geom/PickRay;Lcom/sun/javafx/scene/input/PickResultChooser;)Z
    .locals 9
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 171
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/MeshView;
    move-object v1, p1

    .local v1, "pickRay":Lcom/sun/javafx/geom/PickRay;
    move-object v2, p2

    .local v2, "pickResult":Lcom/sun/javafx/scene/input/PickResultChooser;
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/shape/MeshView;->getMesh()Ljavafx/scene/shape/Mesh;

    move-result-object v3

    move-object v4, v1

    move-object v5, v2

    move-object v6, v0

    move-object v7, v0

    invoke-virtual {v7}, Ljavafx/scene/shape/MeshView;->getCullFace()Ljavafx/scene/shape/CullFace;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual/range {v3 .. v8}, Ljavafx/scene/shape/Mesh;->impl_computeIntersects(Lcom/sun/javafx/geom/PickRay;Lcom/sun/javafx/scene/input/PickResultChooser;Ljavafx/scene/Node;Ljavafx/scene/shape/CullFace;Z)Z

    move-result v3

    move v0, v3

    .end local v0    # "this":Ljavafx/scene/shape/MeshView;
    return v0
.end method

.method protected impl_createPeer()Lcom/sun/javafx/sg/prism/NGNode;
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 135
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/MeshView;
    new-instance v1, Lcom/sun/javafx/sg/prism/NGMeshView;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Lcom/sun/javafx/sg/prism/NGMeshView;-><init>()V

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/shape/MeshView;
    return-object v0
.end method

.method public impl_updatePeer()V
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 118
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/MeshView;
    move-object v2, v0

    invoke-super {v2}, Ljavafx/scene/shape/Shape3D;->impl_updatePeer()V

    .line 119
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/shape/MeshView;->impl_getPeer()Lcom/sun/javafx/sg/prism/NGNode;

    move-result-object v2

    check-cast v2, Lcom/sun/javafx/sg/prism/NGMeshView;

    move-object v1, v2

    .line 120
    .local v1, "peer":Lcom/sun/javafx/sg/prism/NGMeshView;
    move-object v2, v0

    sget-object v3, Lcom/sun/javafx/scene/DirtyBits;->MESH_GEOM:Lcom/sun/javafx/scene/DirtyBits;

    invoke-virtual {v2, v3}, Ljavafx/scene/shape/MeshView;->impl_isDirty(Lcom/sun/javafx/scene/DirtyBits;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/shape/MeshView;->getMesh()Ljavafx/scene/shape/Mesh;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 121
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/shape/MeshView;->getMesh()Ljavafx/scene/shape/Mesh;

    move-result-object v2

    invoke-virtual {v2}, Ljavafx/scene/shape/Mesh;->impl_updatePG()V

    .line 123
    :cond_0
    move-object v2, v0

    sget-object v3, Lcom/sun/javafx/scene/DirtyBits;->MESH:Lcom/sun/javafx/scene/DirtyBits;

    invoke-virtual {v2, v3}, Ljavafx/scene/shape/MeshView;->impl_isDirty(Lcom/sun/javafx/scene/DirtyBits;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 124
    move-object v2, v1

    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/shape/MeshView;->getMesh()Ljavafx/scene/shape/Mesh;

    move-result-object v3

    if-nez v3, :cond_2

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v2, v3}, Lcom/sun/javafx/sg/prism/NGMeshView;->setMesh(Lcom/sun/javafx/sg/prism/NGTriangleMesh;)V

    .line 126
    :cond_1
    return-void

    .line 124
    :cond_2
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/shape/MeshView;->getMesh()Ljavafx/scene/shape/Mesh;

    move-result-object v3

    invoke-virtual {v3}, Ljavafx/scene/shape/Mesh;->getPGMesh()Lcom/sun/javafx/sg/prism/NGTriangleMesh;

    move-result-object v3

    goto :goto_0
.end method

.method public final meshProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/scene/shape/Mesh;",
            ">;"
        }
    .end annotation

    .prologue
    .line 79
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/MeshView;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/MeshView;->mesh:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    .line 80
    move-object v1, v0

    new-instance v2, Ljavafx/scene/shape/MeshView$1;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v0

    move-object v5, v0

    const-string v6, "mesh"

    invoke-direct {v3, v4, v5, v6}, Ljavafx/scene/shape/MeshView$1;-><init>(Ljavafx/scene/shape/MeshView;Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v1, Ljavafx/scene/shape/MeshView;->mesh:Ljavafx/beans/property/ObjectProperty;

    .line 109
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/MeshView;->mesh:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/shape/MeshView;
    return-object v0
.end method

.method public final setMesh(Ljavafx/scene/shape/Mesh;)V
    .locals 4

    .prologue
    .line 71
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/MeshView;
    move-object v1, p1

    .local v1, "value":Ljavafx/scene/shape/Mesh;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/shape/MeshView;->meshProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 72
    return-void
.end method
