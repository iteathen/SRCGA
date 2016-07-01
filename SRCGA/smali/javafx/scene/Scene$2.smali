.class final Ljavafx/scene/Scene$2;
.super Lcom/sun/javafx/robot/impl/FXRobotHelper$FXRobotSceneAccessor;
.source "Scene.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/Scene;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 365
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene$2;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/robot/impl/FXRobotHelper$FXRobotSceneAccessor;-><init>()V

    return-void
.end method


# virtual methods
.method public getChildren(Ljavafx/scene/Parent;)Ljavafx/collections/ObservableList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/Parent;",
            ")",
            "Ljavafx/collections/ObservableList",
            "<",
            "Ljavafx/scene/Node;",
            ">;"
        }
    .end annotation

    .prologue
    .line 376
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene$2;
    move-object v1, p1

    .local v1, "parent":Ljavafx/scene/Parent;
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/Parent;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/Scene$2;
    return-object v0
.end method

.method public processKeyEvent(Ljavafx/scene/Scene;Ljavafx/scene/input/KeyEvent;)V
    .locals 5

    .prologue
    .line 367
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene$2;
    move-object v1, p1

    .local v1, "scene":Ljavafx/scene/Scene;
    move-object v2, p2

    .local v2, "keyEvent":Ljavafx/scene/input/KeyEvent;
    move-object v3, v1

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljavafx/scene/Scene;->impl_processKeyEvent(Ljavafx/scene/input/KeyEvent;)V

    .line 368
    return-void
.end method

.method public processMouseEvent(Ljavafx/scene/Scene;Ljavafx/scene/input/MouseEvent;)V
    .locals 5

    .prologue
    .line 370
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene$2;
    move-object v1, p1

    .local v1, "scene":Ljavafx/scene/Scene;
    move-object v2, p2

    .local v2, "mouseEvent":Ljavafx/scene/input/MouseEvent;
    move-object v3, v1

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljavafx/scene/Scene;->impl_processMouseEvent(Ljavafx/scene/input/MouseEvent;)V

    .line 371
    return-void
.end method

.method public processScrollEvent(Ljavafx/scene/Scene;Ljavafx/scene/input/ScrollEvent;)V
    .locals 6

    .prologue
    .line 373
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene$2;
    move-object v1, p1

    .local v1, "scene":Ljavafx/scene/Scene;
    move-object v2, p2

    .local v2, "scrollEvent":Ljavafx/scene/input/ScrollEvent;
    move-object v3, v1

    move-object v4, v2

    move-object v5, v1

    invoke-static {v5}, Ljavafx/scene/Scene;->access$200(Ljavafx/scene/Scene;)Ljavafx/scene/Scene$TouchGesture;

    move-result-object v5

    invoke-static {v3, v4, v5}, Ljavafx/scene/Scene;->access$300(Ljavafx/scene/Scene;Ljavafx/scene/input/GestureEvent;Ljavafx/scene/Scene$TouchGesture;)V

    .line 374
    return-void
.end method

.method public renderToImage(Ljavafx/scene/Scene;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .prologue
    .line 379
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene$2;
    move-object v1, p1

    .local v1, "scene":Ljavafx/scene/Scene;
    move-object v2, p2

    .local v2, "platformImage":Ljava/lang/Object;
    move-object v3, v1

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljavafx/scene/Scene;->snapshot(Ljavafx/scene/image/WritableImage;)Ljavafx/scene/image/WritableImage;

    move-result-object v3

    invoke-virtual {v3}, Ljavafx/scene/image/WritableImage;->impl_getPlatformImage()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Ljavafx/scene/Scene$2;
    return-object v0
.end method
