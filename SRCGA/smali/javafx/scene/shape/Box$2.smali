.class Ljavafx/scene/shape/Box$2;
.super Ljavafx/beans/property/SimpleDoubleProperty;
.source "Box.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/scene/shape/Box;->heightProperty()Ljavafx/beans/property/DoubleProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/scene/shape/Box;


# direct methods
.method constructor <init>(Ljavafx/scene/shape/Box;Ljava/lang/Object;Ljava/lang/String;D)V
    .locals 12

    .prologue
    .line 120
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/Box$2;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/shape/Box;
    move-object v2, p2

    .local v2, "x0":Ljava/lang/Object;
    move-object v3, p3

    .local v3, "x1":Ljava/lang/String;
    move-wide/from16 v4, p4

    .local v4, "x2":D
    move-object v6, v0

    move-object v7, v1

    iput-object v7, v6, Ljavafx/scene/shape/Box$2;->this$0:Ljavafx/scene/shape/Box;

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
    .line 123
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/Box$2;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/Box$2;->this$0:Ljavafx/scene/shape/Box;

    sget-object v2, Lcom/sun/javafx/scene/DirtyBits;->MESH_GEOM:Lcom/sun/javafx/scene/DirtyBits;

    invoke-static {v1, v2}, Ljavafx/scene/shape/Box;->access$200(Ljavafx/scene/shape/Box;Lcom/sun/javafx/scene/DirtyBits;)V

    .line 124
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/Box$2;->this$0:Ljavafx/scene/shape/Box;

    iget-object v1, v1, Ljavafx/scene/shape/Box;->manager:Ljavafx/scene/shape/PredefinedMeshManager;

    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/shape/Box$2;->this$0:Ljavafx/scene/shape/Box;

    iget v2, v2, Ljavafx/scene/shape/Box;->key:I

    invoke-virtual {v1, v2}, Ljavafx/scene/shape/PredefinedMeshManager;->invalidateBoxMesh(I)V

    .line 125
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/Box$2;->this$0:Ljavafx/scene/shape/Box;

    const/4 v2, 0x0

    iput v2, v1, Ljavafx/scene/shape/Box;->key:I

    .line 126
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/Box$2;->this$0:Ljavafx/scene/shape/Box;

    invoke-static {v1}, Ljavafx/scene/shape/Box;->access$300(Ljavafx/scene/shape/Box;)V

    .line 127
    return-void
.end method
