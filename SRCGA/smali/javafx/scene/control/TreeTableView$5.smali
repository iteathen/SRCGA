.class Ljavafx/scene/control/TreeTableView$5;
.super Ljavafx/beans/property/SimpleObjectProperty;
.source "TreeTableView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/control/TreeTableView;
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
        "<TS;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/scene/control/TreeTableView;

.field private weakOldItem:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Ljavafx/scene/control/TreeItem",
            "<TS;>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljavafx/scene/control/TreeTableView;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 873
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableView$5;, "Ljavafx/scene/control/TreeTableView$5;"
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/control/TreeTableView;
    move-object v2, p2

    .local v2, "x0":Ljava/lang/Object;
    move-object v3, p3

    .local v3, "x1":Ljava/lang/String;
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Ljavafx/scene/control/TreeTableView$5;->this$0:Ljavafx/scene/control/TreeTableView;

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
    .line 877
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableView$5;, "Ljavafx/scene/control/TreeTableView$5;"
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/control/TreeTableView$5;->weakOldItem:Ljava/lang/ref/WeakReference;

    if-nez v3, :cond_2

    const/4 v3, 0x0

    :goto_0
    move-object v1, v3

    .line 878
    .local v1, "oldTreeItem":Ljavafx/scene/control/TreeItem;, "Ljavafx/scene/control/TreeItem<TS;>;"
    move-object v3, v1

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/control/TreeTableView$5;->this$0:Ljavafx/scene/control/TreeTableView;

    invoke-static {v3}, Ljavafx/scene/control/TreeTableView;->access$900(Ljavafx/scene/control/TreeTableView;)Ljavafx/event/WeakEventHandler;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 879
    move-object v3, v1

    invoke-static {}, Ljavafx/scene/control/TreeItem;->treeNotificationEvent()Ljavafx/event/EventType;

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/control/TreeTableView$5;->this$0:Ljavafx/scene/control/TreeTableView;

    invoke-static {v5}, Ljavafx/scene/control/TreeTableView;->access$900(Ljavafx/scene/control/TreeTableView;)Ljavafx/event/WeakEventHandler;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/control/TreeItem;->removeEventHandler(Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V

    .line 882
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/control/TreeTableView$5;->this$0:Ljavafx/scene/control/TreeTableView;

    invoke-virtual {v3}, Ljavafx/scene/control/TreeTableView;->getRoot()Ljavafx/scene/control/TreeItem;

    move-result-object v3

    move-object v2, v3

    .line 883
    .local v2, "root":Ljavafx/scene/control/TreeItem;, "Ljavafx/scene/control/TreeItem<TS;>;"
    move-object v3, v2

    if-eqz v3, :cond_1

    .line 884
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/control/TreeTableView$5;->this$0:Ljavafx/scene/control/TreeTableView;

    new-instance v4, Ljavafx/event/WeakEventHandler;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/control/TreeTableView$5;->this$0:Ljavafx/scene/control/TreeTableView;

    invoke-static {v6}, Ljavafx/scene/control/TreeTableView;->access$1000(Ljavafx/scene/control/TreeTableView;)Ljavafx/event/EventHandler;

    move-result-object v6

    invoke-direct {v5, v6}, Ljavafx/event/WeakEventHandler;-><init>(Ljavafx/event/EventHandler;)V

    invoke-static {v3, v4}, Ljavafx/scene/control/TreeTableView;->access$902(Ljavafx/scene/control/TreeTableView;Ljavafx/event/WeakEventHandler;)Ljavafx/event/WeakEventHandler;

    move-result-object v3

    .line 885
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/control/TreeTableView$5;->this$0:Ljavafx/scene/control/TreeTableView;

    invoke-virtual {v3}, Ljavafx/scene/control/TreeTableView;->getRoot()Ljavafx/scene/control/TreeItem;

    move-result-object v3

    invoke-static {}, Ljavafx/scene/control/TreeItem;->treeNotificationEvent()Ljavafx/event/EventType;

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/control/TreeTableView$5;->this$0:Ljavafx/scene/control/TreeTableView;

    invoke-static {v5}, Ljavafx/scene/control/TreeTableView;->access$900(Ljavafx/scene/control/TreeTableView;)Ljavafx/event/WeakEventHandler;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/control/TreeItem;->addEventHandler(Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V

    .line 886
    move-object v3, v0

    new-instance v4, Ljava/lang/ref/WeakReference;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v2

    invoke-direct {v5, v6}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v4, v3, Ljavafx/scene/control/TreeTableView$5;->weakOldItem:Ljava/lang/ref/WeakReference;

    .line 890
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/control/TreeTableView$5;->this$0:Ljavafx/scene/control/TreeTableView;

    invoke-virtual {v3}, Ljavafx/scene/control/TreeTableView;->getSortOrder()Ljavafx/collections/ObservableList;

    move-result-object v3

    invoke-interface {v3}, Ljavafx/collections/ObservableList;->clear()V

    .line 892
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/control/TreeTableView$5;->this$0:Ljavafx/scene/control/TreeTableView;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Ljavafx/scene/control/TreeTableView;->access$1102(Ljavafx/scene/control/TreeTableView;Z)Z

    move-result v3

    .line 893
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/control/TreeTableView$5;->this$0:Ljavafx/scene/control/TreeTableView;

    invoke-static {v3}, Ljavafx/scene/control/TreeTableView;->access$1200(Ljavafx/scene/control/TreeTableView;)V

    .line 894
    return-void

    .line 877
    .end local v1    # "oldTreeItem":Ljavafx/scene/control/TreeItem;, "Ljavafx/scene/control/TreeItem<TS;>;"
    .end local v2    # "root":Ljavafx/scene/control/TreeItem;, "Ljavafx/scene/control/TreeItem<TS;>;"
    :cond_2
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/control/TreeTableView$5;->weakOldItem:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavafx/scene/control/TreeItem;

    goto :goto_0
.end method
