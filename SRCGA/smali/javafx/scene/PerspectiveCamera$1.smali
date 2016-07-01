.class Ljavafx/scene/PerspectiveCamera$1;
.super Ljavafx/beans/property/SimpleDoubleProperty;
.source "PerspectiveCamera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/scene/PerspectiveCamera;->fieldOfViewProperty()Ljavafx/beans/property/DoubleProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/scene/PerspectiveCamera;


# direct methods
.method constructor <init>(Ljavafx/scene/PerspectiveCamera;Ljava/lang/Object;Ljava/lang/String;D)V
    .locals 12

    .prologue
    .line 124
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/PerspectiveCamera$1;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/PerspectiveCamera;
    move-object v2, p2

    .local v2, "x0":Ljava/lang/Object;
    move-object v3, p3

    .local v3, "x1":Ljava/lang/String;
    move-wide/from16 v4, p4

    .local v4, "x2":D
    move-object v6, v0

    move-object v7, v1

    iput-object v7, v6, Ljavafx/scene/PerspectiveCamera$1;->this$0:Ljavafx/scene/PerspectiveCamera;

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
    .line 127
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/PerspectiveCamera$1;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/PerspectiveCamera$1;->this$0:Ljavafx/scene/PerspectiveCamera;

    sget-object v2, Lcom/sun/javafx/scene/DirtyBits;->NODE_CAMERA:Lcom/sun/javafx/scene/DirtyBits;

    invoke-virtual {v1, v2}, Ljavafx/scene/PerspectiveCamera;->impl_markDirty(Lcom/sun/javafx/scene/DirtyBits;)V

    .line 128
    return-void
.end method
