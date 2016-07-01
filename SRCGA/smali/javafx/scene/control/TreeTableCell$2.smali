.class Ljavafx/scene/control/TreeTableCell$2;
.super Ljavafx/beans/property/ReadOnlyObjectWrapper;
.source "TreeTableCell.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/scene/control/TreeTableCell;->treeTableViewPropertyImpl()Ljavafx/beans/property/ReadOnlyObjectWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljavafx/beans/property/ReadOnlyObjectWrapper",
        "<",
        "Ljavafx/scene/control/TreeTableView",
        "<TS;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/scene/control/TreeTableCell;

.field private weakTableViewRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Ljavafx/scene/control/TreeTableView",
            "<TS;>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljavafx/scene/control/TreeTableCell;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 233
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableCell$2;, "Ljavafx/scene/control/TreeTableCell$2;"
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/control/TreeTableCell;
    move-object v2, p2

    .local v2, "x0":Ljava/lang/Object;
    move-object v3, p3

    .local v3, "x1":Ljava/lang/String;
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Ljavafx/scene/control/TreeTableCell$2;->this$0:Ljavafx/scene/control/TreeTableCell;

    move-object v4, v0

    move-object v5, v2

    move-object v6, v3

    invoke-direct {v4, v5, v6}, Ljavafx/beans/property/ReadOnlyObjectWrapper;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected invalidated()V
    .locals 9

    .prologue
    .line 239
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableCell$2;, "Ljavafx/scene/control/TreeTableCell$2;"
    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/control/TreeTableCell$2;->weakTableViewRef:Ljava/lang/ref/WeakReference;

    if-eqz v4, :cond_2

    .line 240
    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/control/TreeTableCell$2;->weakTableViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavafx/scene/control/TreeTableView;

    move-object v3, v4

    .line 241
    .local v3, "oldTableView":Ljavafx/scene/control/TreeTableView;, "Ljavafx/scene/control/TreeTableView<TS;>;"
    move-object v4, v3

    if-eqz v4, :cond_2

    .line 242
    move-object v4, v3

    invoke-virtual {v4}, Ljavafx/scene/control/TreeTableView;->getSelectionModel()Ljavafx/scene/control/TreeTableView$TreeTableViewSelectionModel;

    move-result-object v4

    move-object v1, v4

    .line 243
    .local v1, "sm":Ljavafx/scene/control/TreeTableView$TreeTableViewSelectionModel;, "Ljavafx/scene/control/TreeTableView$TreeTableViewSelectionModel<TS;>;"
    move-object v4, v1

    if-eqz v4, :cond_0

    .line 244
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/control/TreeTableView$TreeTableViewSelectionModel;->getSelectedCells()Ljavafx/collections/ObservableList;

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/control/TreeTableCell$2;->this$0:Ljavafx/scene/control/TreeTableCell;

    invoke-static {v5}, Ljavafx/scene/control/TreeTableCell;->access$100(Ljavafx/scene/control/TreeTableCell;)Ljavafx/collections/WeakListChangeListener;

    move-result-object v5

    invoke-interface {v4, v5}, Ljavafx/collections/ObservableList;->removeListener(Ljavafx/collections/ListChangeListener;)V

    .line 247
    :cond_0
    move-object v4, v3

    invoke-virtual {v4}, Ljavafx/scene/control/TreeTableView;->getFocusModel()Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel;

    move-result-object v4

    move-object v2, v4

    .line 248
    .local v2, "fm":Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel;, "Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel<TS;>;"
    move-object v4, v2

    if-eqz v4, :cond_1

    .line 249
    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel;->focusedCellProperty()Ljavafx/beans/property/ReadOnlyObjectProperty;

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/control/TreeTableCell$2;->this$0:Ljavafx/scene/control/TreeTableCell;

    invoke-static {v5}, Ljavafx/scene/control/TreeTableCell;->access$200(Ljavafx/scene/control/TreeTableCell;)Ljavafx/beans/WeakInvalidationListener;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljavafx/beans/property/ReadOnlyObjectProperty;->removeListener(Ljavafx/beans/InvalidationListener;)V

    .line 252
    :cond_1
    move-object v4, v3

    invoke-virtual {v4}, Ljavafx/scene/control/TreeTableView;->editingCellProperty()Ljavafx/beans/property/ReadOnlyObjectProperty;

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/control/TreeTableCell$2;->this$0:Ljavafx/scene/control/TreeTableCell;

    invoke-static {v5}, Ljavafx/scene/control/TreeTableCell;->access$300(Ljavafx/scene/control/TreeTableCell;)Ljavafx/beans/WeakInvalidationListener;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljavafx/beans/property/ReadOnlyObjectProperty;->removeListener(Ljavafx/beans/InvalidationListener;)V

    .line 253
    move-object v4, v3

    invoke-virtual {v4}, Ljavafx/scene/control/TreeTableView;->getVisibleLeafColumns()Ljavafx/collections/ObservableList;

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/control/TreeTableCell$2;->this$0:Ljavafx/scene/control/TreeTableCell;

    invoke-static {v5}, Ljavafx/scene/control/TreeTableCell;->access$400(Ljavafx/scene/control/TreeTableCell;)Ljavafx/collections/WeakListChangeListener;

    move-result-object v5

    invoke-interface {v4, v5}, Ljavafx/collections/ObservableList;->removeListener(Ljavafx/collections/ListChangeListener;)V

    .line 254
    move-object v4, v3

    invoke-virtual {v4}, Ljavafx/scene/control/TreeTableView;->rootProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/control/TreeTableCell$2;->this$0:Ljavafx/scene/control/TreeTableCell;

    invoke-static {v5}, Ljavafx/scene/control/TreeTableCell;->access$500(Ljavafx/scene/control/TreeTableCell;)Ljavafx/beans/WeakInvalidationListener;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljavafx/beans/property/ObjectProperty;->removeListener(Ljavafx/beans/InvalidationListener;)V

    .line 258
    .end local v1    # "sm":Ljavafx/scene/control/TreeTableView$TreeTableViewSelectionModel;, "Ljavafx/scene/control/TreeTableView$TreeTableViewSelectionModel<TS;>;"
    .end local v2    # "fm":Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel;, "Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel<TS;>;"
    .end local v3    # "oldTableView":Ljavafx/scene/control/TreeTableView;, "Ljavafx/scene/control/TreeTableView<TS;>;"
    :cond_2
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/control/TreeTableCell$2;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavafx/scene/control/TreeTableView;

    move-object v3, v4

    .line 259
    .local v3, "newTreeTableView":Ljavafx/scene/control/TreeTableView;, "Ljavafx/scene/control/TreeTableView<TS;>;"
    move-object v4, v3

    if-eqz v4, :cond_5

    .line 260
    move-object v4, v3

    invoke-virtual {v4}, Ljavafx/scene/control/TreeTableView;->getSelectionModel()Ljavafx/scene/control/TreeTableView$TreeTableViewSelectionModel;

    move-result-object v4

    move-object v1, v4

    .line 261
    .restart local v1    # "sm":Ljavafx/scene/control/TreeTableView$TreeTableViewSelectionModel;, "Ljavafx/scene/control/TreeTableView$TreeTableViewSelectionModel<TS;>;"
    move-object v4, v1

    if-eqz v4, :cond_3

    .line 262
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/control/TreeTableView$TreeTableViewSelectionModel;->getSelectedCells()Ljavafx/collections/ObservableList;

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/control/TreeTableCell$2;->this$0:Ljavafx/scene/control/TreeTableCell;

    invoke-static {v5}, Ljavafx/scene/control/TreeTableCell;->access$100(Ljavafx/scene/control/TreeTableCell;)Ljavafx/collections/WeakListChangeListener;

    move-result-object v5

    invoke-interface {v4, v5}, Ljavafx/collections/ObservableList;->addListener(Ljavafx/collections/ListChangeListener;)V

    .line 265
    :cond_3
    move-object v4, v3

    invoke-virtual {v4}, Ljavafx/scene/control/TreeTableView;->getFocusModel()Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel;

    move-result-object v4

    move-object v2, v4

    .line 266
    .restart local v2    # "fm":Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel;, "Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel<TS;>;"
    move-object v4, v2

    if-eqz v4, :cond_4

    .line 267
    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel;->focusedCellProperty()Ljavafx/beans/property/ReadOnlyObjectProperty;

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/control/TreeTableCell$2;->this$0:Ljavafx/scene/control/TreeTableCell;

    invoke-static {v5}, Ljavafx/scene/control/TreeTableCell;->access$200(Ljavafx/scene/control/TreeTableCell;)Ljavafx/beans/WeakInvalidationListener;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljavafx/beans/property/ReadOnlyObjectProperty;->addListener(Ljavafx/beans/InvalidationListener;)V

    .line 270
    :cond_4
    move-object v4, v3

    invoke-virtual {v4}, Ljavafx/scene/control/TreeTableView;->editingCellProperty()Ljavafx/beans/property/ReadOnlyObjectProperty;

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/control/TreeTableCell$2;->this$0:Ljavafx/scene/control/TreeTableCell;

    invoke-static {v5}, Ljavafx/scene/control/TreeTableCell;->access$300(Ljavafx/scene/control/TreeTableCell;)Ljavafx/beans/WeakInvalidationListener;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljavafx/beans/property/ReadOnlyObjectProperty;->addListener(Ljavafx/beans/InvalidationListener;)V

    .line 271
    move-object v4, v3

    invoke-virtual {v4}, Ljavafx/scene/control/TreeTableView;->getVisibleLeafColumns()Ljavafx/collections/ObservableList;

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/control/TreeTableCell$2;->this$0:Ljavafx/scene/control/TreeTableCell;

    invoke-static {v5}, Ljavafx/scene/control/TreeTableCell;->access$400(Ljavafx/scene/control/TreeTableCell;)Ljavafx/collections/WeakListChangeListener;

    move-result-object v5

    invoke-interface {v4, v5}, Ljavafx/collections/ObservableList;->addListener(Ljavafx/collections/ListChangeListener;)V

    .line 272
    move-object v4, v3

    invoke-virtual {v4}, Ljavafx/scene/control/TreeTableView;->rootProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/control/TreeTableCell$2;->this$0:Ljavafx/scene/control/TreeTableCell;

    invoke-static {v5}, Ljavafx/scene/control/TreeTableCell;->access$500(Ljavafx/scene/control/TreeTableCell;)Ljavafx/beans/WeakInvalidationListener;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljavafx/beans/property/ObjectProperty;->addListener(Ljavafx/beans/InvalidationListener;)V

    .line 274
    move-object v4, v0

    new-instance v5, Ljava/lang/ref/WeakReference;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v3

    invoke-direct {v6, v7}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v5, v4, Ljavafx/scene/control/TreeTableCell$2;->weakTableViewRef:Ljava/lang/ref/WeakReference;

    .line 277
    .end local v1    # "sm":Ljavafx/scene/control/TreeTableView$TreeTableViewSelectionModel;, "Ljavafx/scene/control/TreeTableView$TreeTableViewSelectionModel<TS;>;"
    .end local v2    # "fm":Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel;, "Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel<TS;>;"
    :cond_5
    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/control/TreeTableCell$2;->this$0:Ljavafx/scene/control/TreeTableCell;

    invoke-static {v4}, Ljavafx/scene/control/TreeTableCell;->access$000(Ljavafx/scene/control/TreeTableCell;)V

    .line 278
    return-void
.end method
