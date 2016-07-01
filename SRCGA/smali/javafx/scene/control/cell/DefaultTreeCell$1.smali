.class Ljavafx/scene/control/cell/DefaultTreeCell$1;
.super Ljava/lang/Object;
.source "DefaultTreeCell.java"

# interfaces
.implements Ljavafx/beans/InvalidationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/control/cell/DefaultTreeCell;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/scene/control/cell/DefaultTreeCell;


# direct methods
.method constructor <init>(Ljavafx/scene/control/cell/DefaultTreeCell;)V
    .locals 4

    .prologue
    .line 51
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/cell/DefaultTreeCell$1;, "Ljavafx/scene/control/cell/DefaultTreeCell$1;"
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/control/cell/DefaultTreeCell;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/control/cell/DefaultTreeCell$1;->this$0:Ljavafx/scene/control/cell/DefaultTreeCell;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invalidated(Ljavafx/beans/Observable;)V
    .locals 9

    .prologue
    .line 53
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/cell/DefaultTreeCell$1;, "Ljavafx/scene/control/cell/DefaultTreeCell$1;"
    move-object v1, p1

    .local v1, "observable":Ljavafx/beans/Observable;
    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/control/cell/DefaultTreeCell$1;->this$0:Ljavafx/scene/control/cell/DefaultTreeCell;

    invoke-static {v4}, Ljavafx/scene/control/cell/DefaultTreeCell;->access$000(Ljavafx/scene/control/cell/DefaultTreeCell;)Ljava/lang/ref/WeakReference;

    move-result-object v4

    if-nez v4, :cond_2

    const/4 v4, 0x0

    :goto_0
    move-object v2, v4

    .line 54
    .local v2, "oldTreeItem":Ljavafx/scene/control/TreeItem;, "Ljavafx/scene/control/TreeItem<TT;>;"
    move-object v4, v2

    if-eqz v4, :cond_0

    .line 55
    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/scene/control/TreeItem;->graphicProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/control/cell/DefaultTreeCell$1;->this$0:Ljavafx/scene/control/cell/DefaultTreeCell;

    invoke-static {v5}, Ljavafx/scene/control/cell/DefaultTreeCell;->access$100(Ljavafx/scene/control/cell/DefaultTreeCell;)Ljavafx/beans/WeakInvalidationListener;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljavafx/beans/property/ObjectProperty;->removeListener(Ljavafx/beans/InvalidationListener;)V

    .line 58
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/control/cell/DefaultTreeCell$1;->this$0:Ljavafx/scene/control/cell/DefaultTreeCell;

    invoke-virtual {v4}, Ljavafx/scene/control/cell/DefaultTreeCell;->getTreeItem()Ljavafx/scene/control/TreeItem;

    move-result-object v4

    move-object v3, v4

    .line 59
    .local v3, "newTreeItem":Ljavafx/scene/control/TreeItem;, "Ljavafx/scene/control/TreeItem<TT;>;"
    move-object v4, v3

    if-eqz v4, :cond_1

    .line 60
    move-object v4, v3

    invoke-virtual {v4}, Ljavafx/scene/control/TreeItem;->graphicProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/control/cell/DefaultTreeCell$1;->this$0:Ljavafx/scene/control/cell/DefaultTreeCell;

    invoke-static {v5}, Ljavafx/scene/control/cell/DefaultTreeCell;->access$100(Ljavafx/scene/control/cell/DefaultTreeCell;)Ljavafx/beans/WeakInvalidationListener;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljavafx/beans/property/ObjectProperty;->addListener(Ljavafx/beans/InvalidationListener;)V

    .line 61
    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/control/cell/DefaultTreeCell$1;->this$0:Ljavafx/scene/control/cell/DefaultTreeCell;

    new-instance v5, Ljava/lang/ref/WeakReference;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v3

    invoke-direct {v6, v7}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-static {v4, v5}, Ljavafx/scene/control/cell/DefaultTreeCell;->access$002(Ljavafx/scene/control/cell/DefaultTreeCell;Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;

    move-result-object v4

    .line 63
    :cond_1
    return-void

    .line 53
    .end local v2    # "oldTreeItem":Ljavafx/scene/control/TreeItem;, "Ljavafx/scene/control/TreeItem<TT;>;"
    .end local v3    # "newTreeItem":Ljavafx/scene/control/TreeItem;, "Ljavafx/scene/control/TreeItem<TT;>;"
    :cond_2
    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/control/cell/DefaultTreeCell$1;->this$0:Ljavafx/scene/control/cell/DefaultTreeCell;

    invoke-static {v4}, Ljavafx/scene/control/cell/DefaultTreeCell;->access$000(Ljavafx/scene/control/cell/DefaultTreeCell;)Ljava/lang/ref/WeakReference;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavafx/scene/control/TreeItem;

    goto :goto_0
.end method
