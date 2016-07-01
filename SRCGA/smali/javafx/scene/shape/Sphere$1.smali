.class Ljavafx/scene/shape/Sphere$1;
.super Ljavafx/beans/property/SimpleDoubleProperty;
.source "Sphere.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/scene/shape/Sphere;->radiusProperty()Ljavafx/beans/property/DoubleProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/scene/shape/Sphere;


# direct methods
.method constructor <init>(Ljavafx/scene/shape/Sphere;Ljava/lang/Object;Ljava/lang/String;D)V
    .locals 12

    .prologue
    .line 109
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/Sphere$1;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/shape/Sphere;
    move-object v2, p2

    .local v2, "x0":Ljava/lang/Object;
    move-object v3, p3

    .local v3, "x1":Ljava/lang/String;
    move-wide/from16 v4, p4

    .local v4, "x2":D
    move-object v6, v0

    move-object v7, v1

    iput-object v7, v6, Ljavafx/scene/shape/Sphere$1;->this$0:Ljavafx/scene/shape/Sphere;

    move-object v6, v0

    move-object v7, v2

    move-object v8, v3

    move-wide v9, v4

    invoke-direct {v6, v7, v8, v9, v10}, Ljavafx/beans/property/SimpleDoubleProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;D)V

    return-void
.end method


# virtual methods
.method public invalidated()V
    .locals 3

    .prologue
    .line 112
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/Sphere$1;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/Sphere$1;->this$0:Ljavafx/scene/shape/Sphere;

    sget-object v2, Lcom/sun/javafx/scene/DirtyBits;->MESH_GEOM:Lcom/sun/javafx/scene/DirtyBits;

    invoke-static {v1, v2}, Ljavafx/scene/shape/Sphere;->access$000(Ljavafx/scene/shape/Sphere;Lcom/sun/javafx/scene/DirtyBits;)V

    .line 113
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/Sphere$1;->this$0:Ljavafx/scene/shape/Sphere;

    iget-object v1, v1, Ljavafx/scene/shape/Sphere;->manager:Ljavafx/scene/shape/PredefinedMeshManager;

    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/shape/Sphere$1;->this$0:Ljavafx/scene/shape/Sphere;

    iget v2, v2, Ljavafx/scene/shape/Sphere;->key:I

    invoke-virtual {v1, v2}, Ljavafx/scene/shape/PredefinedMeshManager;->invalidateSphereMesh(I)V

    .line 114
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/Sphere$1;->this$0:Ljavafx/scene/shape/Sphere;

    const/4 v2, 0x0

    iput v2, v1, Ljavafx/scene/shape/Sphere;->key:I

    .line 115
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/Sphere$1;->this$0:Ljavafx/scene/shape/Sphere;

    invoke-static {v1}, Ljavafx/scene/shape/Sphere;->access$100(Ljavafx/scene/shape/Sphere;)V

    .line 116
    return-void
.end method
