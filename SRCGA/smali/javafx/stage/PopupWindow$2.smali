.class Ljavafx/stage/PopupWindow$2;
.super Ljava/lang/Object;
.source "PopupWindow.java"

# interfaces
.implements Ljavafx/beans/InvalidationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/stage/PopupWindow;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private oldRoot:Ljavafx/scene/Node;

.field final synthetic this$0:Ljavafx/stage/PopupWindow;

.field final synthetic val$scene:Ljavafx/scene/Scene;


# direct methods
.method constructor <init>(Ljavafx/stage/PopupWindow;Ljavafx/scene/Scene;)V
    .locals 5

    .prologue
    .line 145
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/PopupWindow$2;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/stage/PopupWindow;
    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Ljavafx/stage/PopupWindow$2;->this$0:Ljavafx/stage/PopupWindow;

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Ljavafx/stage/PopupWindow$2;->val$scene:Ljavafx/scene/Scene;

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 146
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Ljavafx/stage/PopupWindow$2;->val$scene:Ljavafx/scene/Scene;

    invoke-virtual {v4}, Ljavafx/scene/Scene;->getRoot()Ljavafx/scene/Parent;

    move-result-object v4

    iput-object v4, v3, Ljavafx/stage/PopupWindow$2;->oldRoot:Ljavafx/scene/Node;

    return-void
.end method


# virtual methods
.method public invalidated(Ljavafx/beans/Observable;)V
    .locals 8

    .prologue
    .line 150
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/PopupWindow$2;
    move-object v1, p1

    .local v1, "observable":Ljavafx/beans/Observable;
    move-object v3, v0

    iget-object v3, v3, Ljavafx/stage/PopupWindow$2;->val$scene:Ljavafx/scene/Scene;

    invoke-virtual {v3}, Ljavafx/scene/Scene;->getRoot()Ljavafx/scene/Parent;

    move-result-object v3

    move-object v2, v3

    .line 151
    .local v2, "newRoot":Ljavafx/scene/Node;
    move-object v3, v0

    iget-object v3, v3, Ljavafx/stage/PopupWindow$2;->oldRoot:Ljavafx/scene/Node;

    move-object v4, v2

    if-eq v3, v4, :cond_2

    .line 152
    move-object v3, v0

    iget-object v3, v3, Ljavafx/stage/PopupWindow$2;->oldRoot:Ljavafx/scene/Node;

    if-eqz v3, :cond_0

    .line 153
    move-object v3, v0

    iget-object v3, v3, Ljavafx/stage/PopupWindow$2;->oldRoot:Ljavafx/scene/Node;

    invoke-virtual {v3}, Ljavafx/scene/Node;->layoutBoundsProperty()Ljavafx/beans/property/ReadOnlyObjectProperty;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Ljavafx/stage/PopupWindow$2;->this$0:Ljavafx/stage/PopupWindow;

    .line 154
    invoke-static {v4}, Ljavafx/stage/PopupWindow;->access$300(Ljavafx/stage/PopupWindow;)Ljavafx/beans/InvalidationListener;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljavafx/beans/property/ReadOnlyObjectProperty;->removeListener(Ljavafx/beans/InvalidationListener;)V

    .line 155
    move-object v3, v0

    iget-object v3, v3, Ljavafx/stage/PopupWindow$2;->oldRoot:Ljavafx/scene/Node;

    invoke-virtual {v3}, Ljavafx/scene/Node;->boundsInLocalProperty()Ljavafx/beans/property/ReadOnlyObjectProperty;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Ljavafx/stage/PopupWindow$2;->this$0:Ljavafx/stage/PopupWindow;

    .line 156
    invoke-static {v4}, Ljavafx/stage/PopupWindow;->access$300(Ljavafx/stage/PopupWindow;)Ljavafx/beans/InvalidationListener;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljavafx/beans/property/ReadOnlyObjectProperty;->removeListener(Ljavafx/beans/InvalidationListener;)V

    .line 157
    move-object v3, v0

    iget-object v3, v3, Ljavafx/stage/PopupWindow$2;->oldRoot:Ljavafx/scene/Node;

    invoke-virtual {v3}, Ljavafx/scene/Node;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v3

    const-string v4, "popup"

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->remove(Ljava/lang/Object;)Z

    move-result v3

    .line 160
    :cond_0
    move-object v3, v2

    if-eqz v3, :cond_1

    .line 161
    move-object v3, v2

    invoke-virtual {v3}, Ljavafx/scene/Node;->layoutBoundsProperty()Ljavafx/beans/property/ReadOnlyObjectProperty;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Ljavafx/stage/PopupWindow$2;->this$0:Ljavafx/stage/PopupWindow;

    .line 162
    invoke-static {v4}, Ljavafx/stage/PopupWindow;->access$300(Ljavafx/stage/PopupWindow;)Ljavafx/beans/InvalidationListener;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljavafx/beans/property/ReadOnlyObjectProperty;->addListener(Ljavafx/beans/InvalidationListener;)V

    .line 163
    move-object v3, v2

    invoke-virtual {v3}, Ljavafx/scene/Node;->boundsInLocalProperty()Ljavafx/beans/property/ReadOnlyObjectProperty;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Ljavafx/stage/PopupWindow$2;->this$0:Ljavafx/stage/PopupWindow;

    .line 164
    invoke-static {v4}, Ljavafx/stage/PopupWindow;->access$300(Ljavafx/stage/PopupWindow;)Ljavafx/beans/InvalidationListener;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljavafx/beans/property/ReadOnlyObjectProperty;->addListener(Ljavafx/beans/InvalidationListener;)V

    .line 165
    move-object v3, v2

    invoke-virtual {v3}, Ljavafx/scene/Node;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v3

    const-string v4, "popup"

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v3

    .line 168
    :cond_1
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Ljavafx/stage/PopupWindow$2;->oldRoot:Ljavafx/scene/Node;

    .line 170
    move-object v3, v0

    iget-object v3, v3, Ljavafx/stage/PopupWindow$2;->this$0:Ljavafx/stage/PopupWindow;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Ljavafx/stage/PopupWindow;->access$002(Ljavafx/stage/PopupWindow;Ljavafx/geometry/Bounds;)Ljavafx/geometry/Bounds;

    move-result-object v3

    .line 171
    move-object v3, v0

    iget-object v3, v3, Ljavafx/stage/PopupWindow$2;->this$0:Ljavafx/stage/PopupWindow;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Ljavafx/stage/PopupWindow;->access$102(Ljavafx/stage/PopupWindow;Ljavafx/geometry/Bounds;)Ljavafx/geometry/Bounds;

    move-result-object v3

    .line 172
    move-object v3, v0

    iget-object v3, v3, Ljavafx/stage/PopupWindow$2;->this$0:Ljavafx/stage/PopupWindow;

    move-object v4, v0

    iget-object v4, v4, Ljavafx/stage/PopupWindow$2;->this$0:Ljavafx/stage/PopupWindow;

    invoke-virtual {v4}, Ljavafx/stage/PopupWindow;->getAnchorX()D

    move-result-wide v4

    move-object v6, v0

    iget-object v6, v6, Ljavafx/stage/PopupWindow$2;->this$0:Ljavafx/stage/PopupWindow;

    invoke-virtual {v6}, Ljavafx/stage/PopupWindow;->getAnchorY()D

    move-result-wide v6

    invoke-static {v3, v4, v5, v6, v7}, Ljavafx/stage/PopupWindow;->access$200(Ljavafx/stage/PopupWindow;DD)V

    .line 174
    :cond_2
    return-void
.end method
