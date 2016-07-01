.class Ljavafx/scene/Camera$2;
.super Ljavafx/beans/property/SimpleDoubleProperty;
.source "Camera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/scene/Camera;->farClipProperty()Ljavafx/beans/property/DoubleProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/scene/Camera;


# direct methods
.method constructor <init>(Ljavafx/scene/Camera;Ljava/lang/Object;Ljava/lang/String;D)V
    .locals 12

    .prologue
    .line 235
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Camera$2;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/Camera;
    move-object v2, p2

    .local v2, "x0":Ljava/lang/Object;
    move-object v3, p3

    .local v3, "x1":Ljava/lang/String;
    move-wide/from16 v4, p4

    .local v4, "x2":D
    move-object v6, v0

    move-object v7, v1

    iput-object v7, v6, Ljavafx/scene/Camera$2;->this$0:Ljavafx/scene/Camera;

    move-object v6, v0

    move-object v7, v2

    move-object v8, v3

    move-wide v9, v4

    invoke-direct {v6, v7, v8, v9, v10}, Ljavafx/beans/property/SimpleDoubleProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;D)V

    return-void
.end method


# virtual methods
.method protected invalidated()V
    .locals 3

    .prologue
    .line 238
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Camera$2;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Camera$2;->this$0:Ljavafx/scene/Camera;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljavafx/scene/Camera;->access$002(Ljavafx/scene/Camera;Z)Z

    move-result v1

    .line 239
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Camera$2;->this$0:Ljavafx/scene/Camera;

    sget-object v2, Lcom/sun/javafx/scene/DirtyBits;->NODE_CAMERA:Lcom/sun/javafx/scene/DirtyBits;

    invoke-virtual {v1, v2}, Ljavafx/scene/Camera;->impl_markDirty(Lcom/sun/javafx/scene/DirtyBits;)V

    .line 240
    return-void
.end method
