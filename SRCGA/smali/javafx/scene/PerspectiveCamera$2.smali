.class Ljavafx/scene/PerspectiveCamera$2;
.super Ljavafx/beans/property/SimpleBooleanProperty;
.source "PerspectiveCamera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/scene/PerspectiveCamera;->verticalFieldOfViewProperty()Ljavafx/beans/property/BooleanProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/scene/PerspectiveCamera;


# direct methods
.method constructor <init>(Ljavafx/scene/PerspectiveCamera;Ljava/lang/Object;Ljava/lang/String;Z)V
    .locals 9

    .prologue
    .line 154
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/PerspectiveCamera$2;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/PerspectiveCamera;
    move-object v2, p2

    .local v2, "x0":Ljava/lang/Object;
    move-object v3, p3

    .local v3, "x1":Ljava/lang/String;
    move v4, p4

    .local v4, "x2":Z
    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Ljavafx/scene/PerspectiveCamera$2;->this$0:Ljavafx/scene/PerspectiveCamera;

    move-object v5, v0

    move-object v6, v2

    move-object v7, v3

    move v8, v4

    invoke-direct {v5, v6, v7, v8}, Ljavafx/beans/property/SimpleBooleanProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method protected invalidated()V
    .locals 3

    .prologue
    .line 157
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/PerspectiveCamera$2;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/PerspectiveCamera$2;->this$0:Ljavafx/scene/PerspectiveCamera;

    sget-object v2, Lcom/sun/javafx/scene/DirtyBits;->NODE_CAMERA:Lcom/sun/javafx/scene/DirtyBits;

    invoke-virtual {v1, v2}, Ljavafx/scene/PerspectiveCamera;->impl_markDirty(Lcom/sun/javafx/scene/DirtyBits;)V

    .line 158
    return-void
.end method
