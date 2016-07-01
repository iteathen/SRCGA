.class Ljavafx/scene/control/TreeView$1;
.super Ljavafx/beans/property/SimpleObjectProperty;
.source "TreeView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/control/TreeView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljavafx/beans/property/SimpleObjectProperty",
        "<",
        "Ljavafx/scene/control/TreeItem",
        "<TT;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/scene/control/TreeView;

.field private weakOldItem:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Ljavafx/scene/control/TreeItem",
            "<TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljavafx/scene/control/TreeView;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 437
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeView$1;, "Ljavafx/scene/control/TreeView$1;"
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/control/TreeView;
    move-object v2, p2

    .local v2, "x0":Ljava/lang/Object;
    move-object v3, p3

    .local v3, "x1":Ljava/lang/String;
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Ljavafx/scene/control/TreeView$1;->this$0:Ljavafx/scene/control/TreeView;

    move-object v4, v0

    move-object v5, v2

    move-object v6, v3

    invoke-direct {v4, v5, v6}, Ljavafx/beans/property/SimpleObjectProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected invalidated()V
    .locals 8

    .prologue
    .line 441
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeView$1;, "Ljavafx/scene/control/TreeView$1;"
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/control/TreeView$1;->weakOldItem:Ljava/lang/ref/WeakReference;

    if-nez v3, :cond_2

    const/4 v3, 0x0

    :goto_0
    move-object v1, v3

    .line 442
    .local v1, "oldTreeItem":Ljavafx/scene/control/TreeItem;, "Ljavafx/scene/control/TreeItem<TT;>;"
    move-object v3, v1

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/control/TreeView$1;->this$0:Ljavafx/scene/control/TreeView;

    invoke-static {v3}, Ljavafx/scene/control/TreeView;->access$000(Ljavafx/scene/control/TreeView;)Ljavafx/event/WeakEventHandler;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 443
    move-object v3, v1

    invoke-static {}, Ljavafx/scene/control/TreeItem;->treeNotificationEvent()Ljavafx/event/EventType;

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/control/TreeView$1;->this$0:Ljavafx/scene/control/TreeView;

    invoke-static {v5}, Ljavafx/scene/control/TreeView;->access$000(Ljavafx/scene/control/TreeView;)Ljavafx/event/WeakEventHandler;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/control/TreeItem;->removeEventHandler(Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V

    .line 446
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/control/TreeView$1;->this$0:Ljavafx/scene/control/TreeView;

    invoke-virtual {v3}, Ljavafx/scene/control/TreeView;->getRoot()Ljavafx/scene/control/TreeItem;

    move-result-object v3

    move-object v2, v3

    .line 447
    .local v2, "root":Ljavafx/scene/control/TreeItem;, "Ljavafx/scene/control/TreeItem<TT;>;"
    move-object v3, v2

    if-eqz v3, :cond_1

    .line 448
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/control/TreeView$1;->this$0:Ljavafx/scene/control/TreeView;

    new-instance v4, Ljavafx/event/WeakEventHandler;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/control/TreeView$1;->this$0:Ljavafx/scene/control/TreeView;

    invoke-static {v6}, Ljavafx/scene/control/TreeView;->access$100(Ljavafx/scene/control/TreeView;)Ljavafx/event/EventHandler;

    move-result-object v6

    invoke-direct {v5, v6}, Ljavafx/event/WeakEventHandler;-><init>(Ljavafx/event/EventHandler;)V

    invoke-static {v3, v4}, Ljavafx/scene/control/TreeView;->access$002(Ljavafx/scene/control/TreeView;Ljavafx/event/WeakEventHandler;)Ljavafx/event/WeakEventHandler;

    move-result-object v3

    .line 449
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/control/TreeView$1;->this$0:Ljavafx/scene/control/TreeView;

    invoke-virtual {v3}, Ljavafx/scene/control/TreeView;->getRoot()Ljavafx/scene/control/TreeItem;

    move-result-object v3

    invoke-static {}, Ljavafx/scene/control/TreeItem;->treeNotificationEvent()Ljavafx/event/EventType;

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/control/TreeView$1;->this$0:Ljavafx/scene/control/TreeView;

    invoke-static {v5}, Ljavafx/scene/control/TreeView;->access$000(Ljavafx/scene/control/TreeView;)Ljavafx/event/WeakEventHandler;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/control/TreeItem;->addEventHandler(Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V

    .line 450
    move-object v3, v0

    new-instance v4, Ljava/lang/ref/WeakReference;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v2

    invoke-direct {v5, v6}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v4, v3, Ljavafx/scene/control/TreeView$1;->weakOldItem:Ljava/lang/ref/WeakReference;

    .line 454
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/control/TreeView$1;->this$0:Ljavafx/scene/control/TreeView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljavafx/scene/control/TreeView;->edit(Ljavafx/scene/control/TreeItem;)V

    .line 456
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/control/TreeView$1;->this$0:Ljavafx/scene/control/TreeView;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Ljavafx/scene/control/TreeView;->access$202(Ljavafx/scene/control/TreeView;Z)Z

    move-result v3

    .line 457
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/control/TreeView$1;->this$0:Ljavafx/scene/control/TreeView;

    invoke-static {v3}, Ljavafx/scene/control/TreeView;->access$300(Ljavafx/scene/control/TreeView;)V

    .line 458
    return-void

    .line 441
    .end local v1    # "oldTreeItem":Ljavafx/scene/control/TreeItem;, "Ljavafx/scene/control/TreeItem<TT;>;"
    .end local v2    # "root":Ljavafx/scene/control/TreeItem;, "Ljavafx/scene/control/TreeItem<TT;>;"
    :cond_2
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/control/TreeView$1;->weakOldItem:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavafx/scene/control/TreeItem;

    goto :goto_0
.end method
