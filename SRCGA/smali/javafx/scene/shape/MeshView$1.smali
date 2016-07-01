.class Ljavafx/scene/shape/MeshView$1;
.super Ljavafx/beans/property/SimpleObjectProperty;
.source "MeshView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/scene/shape/MeshView;->meshProperty()Ljavafx/beans/property/ObjectProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljavafx/beans/property/SimpleObjectProperty",
        "<",
        "Ljavafx/scene/shape/Mesh;",
        ">;"
    }
.end annotation


# instance fields
.field private final meshChangeListener:Ljavafx/beans/value/ChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/value/ChangeListener",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private old:Ljavafx/scene/shape/Mesh;

.field final synthetic this$0:Ljavafx/scene/shape/MeshView;

.field private final weakMeshChangeListener:Ljavafx/beans/value/WeakChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/value/WeakChangeListener",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljavafx/scene/shape/MeshView;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 9

    .prologue
    .line 80
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/MeshView$1;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/shape/MeshView;
    move-object v2, p2

    .local v2, "x0":Ljava/lang/Object;
    move-object v3, p3

    .local v3, "x1":Ljava/lang/String;
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Ljavafx/scene/shape/MeshView$1;->this$0:Ljavafx/scene/shape/MeshView;

    move-object v4, v0

    move-object v5, v2

    move-object v6, v3

    invoke-direct {v4, v5, v6}, Ljavafx/beans/property/SimpleObjectProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    move-object v4, v0

    const/4 v5, 0x0

    iput-object v5, v4, Ljavafx/scene/shape/MeshView$1;->old:Ljavafx/scene/shape/Mesh;

    .line 83
    move-object v4, v0

    move-object v5, v0

    invoke-static {v5}, Ljavafx/scene/shape/MeshView$1$$Lambda$1;->lambdaFactory$(Ljavafx/scene/shape/MeshView$1;)Ljavafx/beans/value/ChangeListener;

    move-result-object v5

    iput-object v5, v4, Ljavafx/scene/shape/MeshView$1;->meshChangeListener:Ljavafx/beans/value/ChangeListener;

    .line 90
    move-object v4, v0

    new-instance v5, Ljavafx/beans/value/WeakChangeListener;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v0

    iget-object v7, v7, Ljavafx/scene/shape/MeshView$1;->meshChangeListener:Ljavafx/beans/value/ChangeListener;

    invoke-direct {v6, v7}, Ljavafx/beans/value/WeakChangeListener;-><init>(Ljavafx/beans/value/ChangeListener;)V

    iput-object v5, v4, Ljavafx/scene/shape/MeshView$1;->weakMeshChangeListener:Ljavafx/beans/value/WeakChangeListener;

    return-void
.end method

.method static synthetic access$lambda$0(Ljavafx/scene/shape/MeshView$1;Ljavafx/beans/value/ObservableValue;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-direct {v4, v5, v6, v7}, Ljavafx/scene/shape/MeshView$1;->lambda$$515(Ljavafx/beans/value/ObservableValue;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    return-void
.end method

.method private synthetic lambda$$515(Ljavafx/beans/value/ObservableValue;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 6

    .prologue
    .line 85
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/MeshView$1;
    move-object v1, p1

    .local v1, "observable":Ljavafx/beans/value/ObservableValue;
    move-object v2, p2

    .local v2, "oldValue":Ljava/lang/Boolean;
    move-object v3, p3

    .local v3, "newValue":Ljava/lang/Boolean;
    move-object v4, v3

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 86
    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/shape/MeshView$1;->this$0:Ljavafx/scene/shape/MeshView;

    sget-object v5, Lcom/sun/javafx/scene/DirtyBits;->MESH_GEOM:Lcom/sun/javafx/scene/DirtyBits;

    invoke-static {v4, v5}, Ljavafx/scene/shape/MeshView;->access$300(Ljavafx/scene/shape/MeshView;Lcom/sun/javafx/scene/DirtyBits;)V

    .line 87
    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/shape/MeshView$1;->this$0:Ljavafx/scene/shape/MeshView;

    invoke-static {v4}, Ljavafx/scene/shape/MeshView;->access$400(Ljavafx/scene/shape/MeshView;)V

    .line 89
    :cond_0
    return-void
.end method


# virtual methods
.method protected invalidated()V
    .locals 4

    .prologue
    .line 95
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/MeshView$1;
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/shape/MeshView$1;->old:Ljavafx/scene/shape/Mesh;

    if-eqz v2, :cond_0

    .line 96
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/shape/MeshView$1;->old:Ljavafx/scene/shape/Mesh;

    invoke-virtual {v2}, Ljavafx/scene/shape/Mesh;->dirtyProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/shape/MeshView$1;->weakMeshChangeListener:Ljavafx/beans/value/WeakChangeListener;

    invoke-virtual {v2, v3}, Ljavafx/beans/property/BooleanProperty;->removeListener(Ljavafx/beans/value/ChangeListener;)V

    .line 98
    :cond_0
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/shape/MeshView$1;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavafx/scene/shape/Mesh;

    move-object v1, v2

    .line 99
    .local v1, "newMesh":Ljavafx/scene/shape/Mesh;
    move-object v2, v1

    if-eqz v2, :cond_1

    .line 100
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/shape/Mesh;->dirtyProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/shape/MeshView$1;->weakMeshChangeListener:Ljavafx/beans/value/WeakChangeListener;

    invoke-virtual {v2, v3}, Ljavafx/beans/property/BooleanProperty;->addListener(Ljavafx/beans/value/ChangeListener;)V

    .line 102
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/shape/MeshView$1;->this$0:Ljavafx/scene/shape/MeshView;

    sget-object v3, Lcom/sun/javafx/scene/DirtyBits;->MESH:Lcom/sun/javafx/scene/DirtyBits;

    invoke-static {v2, v3}, Ljavafx/scene/shape/MeshView;->access$000(Ljavafx/scene/shape/MeshView;Lcom/sun/javafx/scene/DirtyBits;)V

    .line 103
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/shape/MeshView$1;->this$0:Ljavafx/scene/shape/MeshView;

    sget-object v3, Lcom/sun/javafx/scene/DirtyBits;->MESH_GEOM:Lcom/sun/javafx/scene/DirtyBits;

    invoke-static {v2, v3}, Ljavafx/scene/shape/MeshView;->access$100(Ljavafx/scene/shape/MeshView;Lcom/sun/javafx/scene/DirtyBits;)V

    .line 104
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/shape/MeshView$1;->this$0:Ljavafx/scene/shape/MeshView;

    invoke-static {v2}, Ljavafx/scene/shape/MeshView;->access$200(Ljavafx/scene/shape/MeshView;)V

    .line 105
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/shape/MeshView$1;->old:Ljavafx/scene/shape/Mesh;

    .line 106
    return-void
.end method
