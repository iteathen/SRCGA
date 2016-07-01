.class Lcom/sun/javafx/scene/control/skin/TreeViewSkin$1$1;
.super Ljava/lang/Object;
.source "TreeViewSkin.java"

# interfaces
.implements Ljavafx/beans/InvalidationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/scene/control/skin/TreeViewSkin$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sun/javafx/scene/control/skin/TreeViewSkin$1;


# direct methods
.method constructor <init>(Lcom/sun/javafx/scene/control/skin/TreeViewSkin$1;)V
    .locals 4

    .prologue
    .line 279
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TreeViewSkin$1$1;, "Lcom/sun/javafx/scene/control/skin/TreeViewSkin$1$1;"
    move-object v1, p1

    .local v1, "this$1":Lcom/sun/javafx/scene/control/skin/TreeViewSkin$1;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/scene/control/skin/TreeViewSkin$1$1;->this$1:Lcom/sun/javafx/scene/control/skin/TreeViewSkin$1;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invalidated(Ljavafx/beans/Observable;)V
    .locals 9

    .prologue
    .line 281
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TreeViewSkin$1$1;, "Lcom/sun/javafx/scene/control/skin/TreeViewSkin$1$1;"
    move-object v1, p1

    .local v1, "observable":Ljavafx/beans/Observable;
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/TreeViewSkin$1$1;->this$1:Lcom/sun/javafx/scene/control/skin/TreeViewSkin$1;

    invoke-static {v4}, Lcom/sun/javafx/scene/control/skin/TreeViewSkin$1;->access$000(Lcom/sun/javafx/scene/control/skin/TreeViewSkin$1;)Ljava/lang/ref/WeakReference;

    move-result-object v4

    if-nez v4, :cond_2

    const/4 v4, 0x0

    :goto_0
    move-object v2, v4

    .line 282
    .local v2, "oldTreeItem":Ljavafx/scene/control/TreeItem;, "Ljavafx/scene/control/TreeItem<TT;>;"
    move-object v4, v2

    if-eqz v4, :cond_0

    .line 283
    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/scene/control/TreeItem;->graphicProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/TreeViewSkin$1$1;->this$1:Lcom/sun/javafx/scene/control/skin/TreeViewSkin$1;

    invoke-static {v5}, Lcom/sun/javafx/scene/control/skin/TreeViewSkin$1;->access$100(Lcom/sun/javafx/scene/control/skin/TreeViewSkin$1;)Ljavafx/beans/WeakInvalidationListener;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljavafx/beans/property/ObjectProperty;->removeListener(Ljavafx/beans/InvalidationListener;)V

    .line 286
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/TreeViewSkin$1$1;->this$1:Lcom/sun/javafx/scene/control/skin/TreeViewSkin$1;

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/skin/TreeViewSkin$1;->getTreeItem()Ljavafx/scene/control/TreeItem;

    move-result-object v4

    move-object v3, v4

    .line 287
    .local v3, "newTreeItem":Ljavafx/scene/control/TreeItem;, "Ljavafx/scene/control/TreeItem<TT;>;"
    move-object v4, v3

    if-eqz v4, :cond_1

    .line 288
    move-object v4, v3

    invoke-virtual {v4}, Ljavafx/scene/control/TreeItem;->graphicProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/TreeViewSkin$1$1;->this$1:Lcom/sun/javafx/scene/control/skin/TreeViewSkin$1;

    invoke-static {v5}, Lcom/sun/javafx/scene/control/skin/TreeViewSkin$1;->access$100(Lcom/sun/javafx/scene/control/skin/TreeViewSkin$1;)Ljavafx/beans/WeakInvalidationListener;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljavafx/beans/property/ObjectProperty;->addListener(Ljavafx/beans/InvalidationListener;)V

    .line 289
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/TreeViewSkin$1$1;->this$1:Lcom/sun/javafx/scene/control/skin/TreeViewSkin$1;

    new-instance v5, Ljava/lang/ref/WeakReference;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v3

    invoke-direct {v6, v7}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-static {v4, v5}, Lcom/sun/javafx/scene/control/skin/TreeViewSkin$1;->access$002(Lcom/sun/javafx/scene/control/skin/TreeViewSkin$1;Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;

    move-result-object v4

    .line 291
    :cond_1
    return-void

    .line 281
    .end local v2    # "oldTreeItem":Ljavafx/scene/control/TreeItem;, "Ljavafx/scene/control/TreeItem<TT;>;"
    .end local v3    # "newTreeItem":Ljavafx/scene/control/TreeItem;, "Ljavafx/scene/control/TreeItem<TT;>;"
    :cond_2
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/TreeViewSkin$1$1;->this$1:Lcom/sun/javafx/scene/control/skin/TreeViewSkin$1;

    invoke-static {v4}, Lcom/sun/javafx/scene/control/skin/TreeViewSkin$1;->access$000(Lcom/sun/javafx/scene/control/skin/TreeViewSkin$1;)Ljava/lang/ref/WeakReference;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavafx/scene/control/TreeItem;

    goto :goto_0
.end method
