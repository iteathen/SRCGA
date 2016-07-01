.class Ljavafx/scene/control/TreeCell$6;
.super Ljavafx/beans/property/ReadOnlyObjectWrapper;
.source "TreeCell.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/control/TreeCell;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljavafx/beans/property/ReadOnlyObjectWrapper",
        "<",
        "Ljavafx/scene/control/TreeView",
        "<TT;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/scene/control/TreeCell;

.field private weakTreeViewRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Ljavafx/scene/control/TreeView",
            "<TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljavafx/scene/control/TreeCell;)V
    .locals 4

    .prologue
    .line 260
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeCell$6;, "Ljavafx/scene/control/TreeCell$6;"
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/control/TreeCell;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/control/TreeCell$6;->this$0:Ljavafx/scene/control/TreeCell;

    move-object v2, v0

    invoke-direct {v2}, Ljavafx/beans/property/ReadOnlyObjectWrapper;-><init>()V

    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 318
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeCell$6;, "Ljavafx/scene/control/TreeCell$6;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TreeCell$6;->this$0:Ljavafx/scene/control/TreeCell;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TreeCell$6;, "Ljavafx/scene/control/TreeCell$6;"
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 323
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeCell$6;, "Ljavafx/scene/control/TreeCell$6;"
    const-string v1, "treeView"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TreeCell$6;, "Ljavafx/scene/control/TreeCell$6;"
    return-object v0
.end method

.method protected invalidated()V
    .locals 9

    .prologue
    .line 266
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeCell$6;, "Ljavafx/scene/control/TreeCell$6;"
    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/control/TreeCell$6;->weakTreeViewRef:Ljava/lang/ref/WeakReference;

    if-eqz v4, :cond_3

    .line 267
    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/control/TreeCell$6;->weakTreeViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavafx/scene/control/TreeView;

    move-object v3, v4

    .line 268
    .local v3, "oldTreeView":Ljavafx/scene/control/TreeView;, "Ljavafx/scene/control/TreeView<TT;>;"
    move-object v4, v3

    if-eqz v4, :cond_2

    .line 270
    move-object v4, v3

    invoke-virtual {v4}, Ljavafx/scene/control/TreeView;->getSelectionModel()Ljavafx/scene/control/MultipleSelectionModel;

    move-result-object v4

    move-object v1, v4

    .line 271
    .local v1, "sm":Ljavafx/scene/control/MultipleSelectionModel;, "Ljavafx/scene/control/MultipleSelectionModel<Ljavafx/scene/control/TreeItem<TT;>;>;"
    move-object v4, v1

    if-eqz v4, :cond_0

    .line 272
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/control/MultipleSelectionModel;->getSelectedIndices()Ljavafx/collections/ObservableList;

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/control/TreeCell$6;->this$0:Ljavafx/scene/control/TreeCell;

    invoke-static {v5}, Ljavafx/scene/control/TreeCell;->access$000(Ljavafx/scene/control/TreeCell;)Ljavafx/collections/WeakListChangeListener;

    move-result-object v5

    invoke-interface {v4, v5}, Ljavafx/collections/ObservableList;->removeListener(Ljavafx/collections/ListChangeListener;)V

    .line 275
    :cond_0
    move-object v4, v3

    invoke-virtual {v4}, Ljavafx/scene/control/TreeView;->getFocusModel()Ljavafx/scene/control/FocusModel;

    move-result-object v4

    move-object v2, v4

    .line 276
    .local v2, "fm":Ljavafx/scene/control/FocusModel;, "Ljavafx/scene/control/FocusModel<Ljavafx/scene/control/TreeItem<TT;>;>;"
    move-object v4, v2

    if-eqz v4, :cond_1

    .line 277
    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/scene/control/FocusModel;->focusedIndexProperty()Ljavafx/beans/property/ReadOnlyIntegerProperty;

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/control/TreeCell$6;->this$0:Ljavafx/scene/control/TreeCell;

    invoke-static {v5}, Ljavafx/scene/control/TreeCell;->access$200(Ljavafx/scene/control/TreeCell;)Ljavafx/beans/WeakInvalidationListener;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljavafx/beans/property/ReadOnlyIntegerProperty;->removeListener(Ljavafx/beans/InvalidationListener;)V

    .line 280
    :cond_1
    move-object v4, v3

    invoke-virtual {v4}, Ljavafx/scene/control/TreeView;->editingItemProperty()Ljavafx/beans/property/ReadOnlyObjectProperty;

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/control/TreeCell$6;->this$0:Ljavafx/scene/control/TreeCell;

    invoke-static {v5}, Ljavafx/scene/control/TreeCell;->access$800(Ljavafx/scene/control/TreeCell;)Ljavafx/beans/WeakInvalidationListener;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljavafx/beans/property/ReadOnlyObjectProperty;->removeListener(Ljavafx/beans/InvalidationListener;)V

    .line 281
    move-object v4, v3

    invoke-virtual {v4}, Ljavafx/scene/control/TreeView;->focusModelProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/control/TreeCell$6;->this$0:Ljavafx/scene/control/TreeCell;

    invoke-static {v5}, Ljavafx/scene/control/TreeCell;->access$900(Ljavafx/scene/control/TreeCell;)Ljavafx/beans/value/WeakChangeListener;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljavafx/beans/property/ObjectProperty;->removeListener(Ljavafx/beans/value/ChangeListener;)V

    .line 282
    move-object v4, v3

    invoke-virtual {v4}, Ljavafx/scene/control/TreeView;->selectionModelProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/control/TreeCell$6;->this$0:Ljavafx/scene/control/TreeCell;

    invoke-static {v5}, Ljavafx/scene/control/TreeCell;->access$1000(Ljavafx/scene/control/TreeCell;)Ljavafx/beans/value/WeakChangeListener;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljavafx/beans/property/ObjectProperty;->removeListener(Ljavafx/beans/value/ChangeListener;)V

    .line 283
    move-object v4, v3

    invoke-virtual {v4}, Ljavafx/scene/control/TreeView;->rootProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/control/TreeCell$6;->this$0:Ljavafx/scene/control/TreeCell;

    invoke-static {v5}, Ljavafx/scene/control/TreeCell;->access$1100(Ljavafx/scene/control/TreeCell;)Ljavafx/beans/WeakInvalidationListener;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljavafx/beans/property/ObjectProperty;->removeListener(Ljavafx/beans/InvalidationListener;)V

    .line 286
    .end local v1    # "sm":Ljavafx/scene/control/MultipleSelectionModel;, "Ljavafx/scene/control/MultipleSelectionModel<Ljavafx/scene/control/TreeItem<TT;>;>;"
    .end local v2    # "fm":Ljavafx/scene/control/FocusModel;, "Ljavafx/scene/control/FocusModel<Ljavafx/scene/control/TreeItem<TT;>;>;"
    :cond_2
    move-object v4, v0

    const/4 v5, 0x0

    iput-object v5, v4, Ljavafx/scene/control/TreeCell$6;->weakTreeViewRef:Ljava/lang/ref/WeakReference;

    .line 289
    .end local v3    # "oldTreeView":Ljavafx/scene/control/TreeView;, "Ljavafx/scene/control/TreeView<TT;>;"
    :cond_3
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/control/TreeCell$6;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavafx/scene/control/TreeView;

    move-object v3, v4

    .line 290
    .local v3, "treeView":Ljavafx/scene/control/TreeView;, "Ljavafx/scene/control/TreeView<TT;>;"
    move-object v4, v3

    if-eqz v4, :cond_6

    .line 291
    move-object v4, v3

    invoke-virtual {v4}, Ljavafx/scene/control/TreeView;->getSelectionModel()Ljavafx/scene/control/MultipleSelectionModel;

    move-result-object v4

    move-object v1, v4

    .line 292
    .restart local v1    # "sm":Ljavafx/scene/control/MultipleSelectionModel;, "Ljavafx/scene/control/MultipleSelectionModel<Ljavafx/scene/control/TreeItem<TT;>;>;"
    move-object v4, v1

    if-eqz v4, :cond_4

    .line 295
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/control/MultipleSelectionModel;->getSelectedIndices()Ljavafx/collections/ObservableList;

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/control/TreeCell$6;->this$0:Ljavafx/scene/control/TreeCell;

    invoke-static {v5}, Ljavafx/scene/control/TreeCell;->access$000(Ljavafx/scene/control/TreeCell;)Ljavafx/collections/WeakListChangeListener;

    move-result-object v5

    invoke-interface {v4, v5}, Ljavafx/collections/ObservableList;->addListener(Ljavafx/collections/ListChangeListener;)V

    .line 298
    :cond_4
    move-object v4, v3

    invoke-virtual {v4}, Ljavafx/scene/control/TreeView;->getFocusModel()Ljavafx/scene/control/FocusModel;

    move-result-object v4

    move-object v2, v4

    .line 299
    .restart local v2    # "fm":Ljavafx/scene/control/FocusModel;, "Ljavafx/scene/control/FocusModel<Ljavafx/scene/control/TreeItem<TT;>;>;"
    move-object v4, v2

    if-eqz v4, :cond_5

    .line 301
    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/scene/control/FocusModel;->focusedIndexProperty()Ljavafx/beans/property/ReadOnlyIntegerProperty;

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/control/TreeCell$6;->this$0:Ljavafx/scene/control/TreeCell;

    invoke-static {v5}, Ljavafx/scene/control/TreeCell;->access$200(Ljavafx/scene/control/TreeCell;)Ljavafx/beans/WeakInvalidationListener;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljavafx/beans/property/ReadOnlyIntegerProperty;->addListener(Ljavafx/beans/InvalidationListener;)V

    .line 304
    :cond_5
    move-object v4, v3

    invoke-virtual {v4}, Ljavafx/scene/control/TreeView;->editingItemProperty()Ljavafx/beans/property/ReadOnlyObjectProperty;

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/control/TreeCell$6;->this$0:Ljavafx/scene/control/TreeCell;

    invoke-static {v5}, Ljavafx/scene/control/TreeCell;->access$800(Ljavafx/scene/control/TreeCell;)Ljavafx/beans/WeakInvalidationListener;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljavafx/beans/property/ReadOnlyObjectProperty;->addListener(Ljavafx/beans/InvalidationListener;)V

    .line 305
    move-object v4, v3

    invoke-virtual {v4}, Ljavafx/scene/control/TreeView;->focusModelProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/control/TreeCell$6;->this$0:Ljavafx/scene/control/TreeCell;

    invoke-static {v5}, Ljavafx/scene/control/TreeCell;->access$900(Ljavafx/scene/control/TreeCell;)Ljavafx/beans/value/WeakChangeListener;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljavafx/beans/property/ObjectProperty;->addListener(Ljavafx/beans/value/ChangeListener;)V

    .line 306
    move-object v4, v3

    invoke-virtual {v4}, Ljavafx/scene/control/TreeView;->selectionModelProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/control/TreeCell$6;->this$0:Ljavafx/scene/control/TreeCell;

    invoke-static {v5}, Ljavafx/scene/control/TreeCell;->access$1000(Ljavafx/scene/control/TreeCell;)Ljavafx/beans/value/WeakChangeListener;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljavafx/beans/property/ObjectProperty;->addListener(Ljavafx/beans/value/ChangeListener;)V

    .line 307
    move-object v4, v3

    invoke-virtual {v4}, Ljavafx/scene/control/TreeView;->rootProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/control/TreeCell$6;->this$0:Ljavafx/scene/control/TreeCell;

    invoke-static {v5}, Ljavafx/scene/control/TreeCell;->access$1100(Ljavafx/scene/control/TreeCell;)Ljavafx/beans/WeakInvalidationListener;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljavafx/beans/property/ObjectProperty;->addListener(Ljavafx/beans/InvalidationListener;)V

    .line 309
    move-object v4, v0

    new-instance v5, Ljava/lang/ref/WeakReference;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v3

    invoke-direct {v6, v7}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v5, v4, Ljavafx/scene/control/TreeCell$6;->weakTreeViewRef:Ljava/lang/ref/WeakReference;

    .line 312
    .end local v1    # "sm":Ljavafx/scene/control/MultipleSelectionModel;, "Ljavafx/scene/control/MultipleSelectionModel<Ljavafx/scene/control/TreeItem<TT;>;>;"
    .end local v2    # "fm":Ljavafx/scene/control/FocusModel;, "Ljavafx/scene/control/FocusModel<Ljavafx/scene/control/TreeItem<TT;>;>;"
    :cond_6
    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/control/TreeCell$6;->this$0:Ljavafx/scene/control/TreeCell;

    const/4 v5, -0x1

    invoke-static {v4, v5}, Ljavafx/scene/control/TreeCell;->access$1200(Ljavafx/scene/control/TreeCell;I)V

    .line 313
    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/control/TreeCell$6;->this$0:Ljavafx/scene/control/TreeCell;

    invoke-virtual {v4}, Ljavafx/scene/control/TreeCell;->requestLayout()V

    .line 314
    return-void
.end method
