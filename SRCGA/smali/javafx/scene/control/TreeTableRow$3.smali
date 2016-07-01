.class Ljavafx/scene/control/TreeTableRow$3;
.super Ljavafx/beans/property/ReadOnlyObjectWrapper;
.source "TreeTableRow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/control/TreeTableRow;
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
        "<TT;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/scene/control/TreeTableRow;

.field private weakTreeTableViewRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Ljavafx/scene/control/TreeTableView",
            "<TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljavafx/scene/control/TreeTableRow;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 211
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableRow$3;, "Ljavafx/scene/control/TreeTableRow$3;"
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/control/TreeTableRow;
    move-object v2, p2

    .local v2, "x0":Ljava/lang/Object;
    move-object v3, p3

    .local v3, "x1":Ljava/lang/String;
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Ljavafx/scene/control/TreeTableRow$3;->this$0:Ljavafx/scene/control/TreeTableRow;

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
    .line 217
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableRow$3;, "Ljavafx/scene/control/TreeTableRow$3;"
    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/control/TreeTableRow$3;->weakTreeTableViewRef:Ljava/lang/ref/WeakReference;

    if-eqz v4, :cond_3

    .line 218
    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/control/TreeTableRow$3;->weakTreeTableViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavafx/scene/control/TreeTableView;

    move-object v3, v4

    .line 219
    .local v3, "oldTreeTableView":Ljavafx/scene/control/TreeTableView;, "Ljavafx/scene/control/TreeTableView<TT;>;"
    move-object v4, v3

    if-eqz v4, :cond_2

    .line 221
    move-object v4, v3

    invoke-virtual {v4}, Ljavafx/scene/control/TreeTableView;->getSelectionModel()Ljavafx/scene/control/TreeTableView$TreeTableViewSelectionModel;

    move-result-object v4

    move-object v1, v4

    .line 222
    .local v1, "sm":Ljavafx/scene/control/TreeTableView$TreeTableViewSelectionModel;, "Ljavafx/scene/control/TreeTableView$TreeTableViewSelectionModel<TT;>;"
    move-object v4, v1

    if-eqz v4, :cond_0

    .line 223
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/control/TreeTableView$TreeTableViewSelectionModel;->getSelectedIndices()Ljavafx/collections/ObservableList;

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/control/TreeTableRow$3;->this$0:Ljavafx/scene/control/TreeTableRow;

    invoke-static {v5}, Ljavafx/scene/control/TreeTableRow;->access$200(Ljavafx/scene/control/TreeTableRow;)Ljavafx/collections/WeakListChangeListener;

    move-result-object v5

    invoke-interface {v4, v5}, Ljavafx/collections/ObservableList;->removeListener(Ljavafx/collections/ListChangeListener;)V

    .line 226
    :cond_0
    move-object v4, v3

    invoke-virtual {v4}, Ljavafx/scene/control/TreeTableView;->getFocusModel()Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel;

    move-result-object v4

    move-object v2, v4

    .line 227
    .local v2, "fm":Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel;, "Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel<TT;>;"
    move-object v4, v2

    if-eqz v4, :cond_1

    .line 228
    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel;->focusedIndexProperty()Ljavafx/beans/property/ReadOnlyIntegerProperty;

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/control/TreeTableRow$3;->this$0:Ljavafx/scene/control/TreeTableRow;

    invoke-static {v5}, Ljavafx/scene/control/TreeTableRow;->access$300(Ljavafx/scene/control/TreeTableRow;)Ljavafx/beans/WeakInvalidationListener;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljavafx/beans/property/ReadOnlyIntegerProperty;->removeListener(Ljavafx/beans/InvalidationListener;)V

    .line 231
    :cond_1
    move-object v4, v3

    invoke-virtual {v4}, Ljavafx/scene/control/TreeTableView;->editingCellProperty()Ljavafx/beans/property/ReadOnlyObjectProperty;

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/control/TreeTableRow$3;->this$0:Ljavafx/scene/control/TreeTableRow;

    invoke-static {v5}, Ljavafx/scene/control/TreeTableRow;->access$400(Ljavafx/scene/control/TreeTableRow;)Ljavafx/beans/WeakInvalidationListener;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljavafx/beans/property/ReadOnlyObjectProperty;->removeListener(Ljavafx/beans/InvalidationListener;)V

    .line 234
    .end local v1    # "sm":Ljavafx/scene/control/TreeTableView$TreeTableViewSelectionModel;, "Ljavafx/scene/control/TreeTableView$TreeTableViewSelectionModel<TT;>;"
    .end local v2    # "fm":Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel;, "Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel<TT;>;"
    :cond_2
    move-object v4, v0

    const/4 v5, 0x0

    iput-object v5, v4, Ljavafx/scene/control/TreeTableRow$3;->weakTreeTableViewRef:Ljava/lang/ref/WeakReference;

    .line 237
    .end local v3    # "oldTreeTableView":Ljavafx/scene/control/TreeTableView;, "Ljavafx/scene/control/TreeTableView<TT;>;"
    :cond_3
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/control/TreeTableRow$3;->get()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 238
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/control/TreeTableRow$3;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavafx/scene/control/TreeTableView;

    invoke-virtual {v4}, Ljavafx/scene/control/TreeTableView;->getSelectionModel()Ljavafx/scene/control/TreeTableView$TreeTableViewSelectionModel;

    move-result-object v4

    move-object v1, v4

    .line 239
    .restart local v1    # "sm":Ljavafx/scene/control/TreeTableView$TreeTableViewSelectionModel;, "Ljavafx/scene/control/TreeTableView$TreeTableViewSelectionModel<TT;>;"
    move-object v4, v1

    if-eqz v4, :cond_4

    .line 242
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/control/TreeTableView$TreeTableViewSelectionModel;->getSelectedIndices()Ljavafx/collections/ObservableList;

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/control/TreeTableRow$3;->this$0:Ljavafx/scene/control/TreeTableRow;

    invoke-static {v5}, Ljavafx/scene/control/TreeTableRow;->access$200(Ljavafx/scene/control/TreeTableRow;)Ljavafx/collections/WeakListChangeListener;

    move-result-object v5

    invoke-interface {v4, v5}, Ljavafx/collections/ObservableList;->addListener(Ljavafx/collections/ListChangeListener;)V

    .line 245
    :cond_4
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/control/TreeTableRow$3;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavafx/scene/control/TreeTableView;

    invoke-virtual {v4}, Ljavafx/scene/control/TreeTableView;->getFocusModel()Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel;

    move-result-object v4

    move-object v2, v4

    .line 246
    .restart local v2    # "fm":Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel;, "Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel<TT;>;"
    move-object v4, v2

    if-eqz v4, :cond_5

    .line 248
    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel;->focusedIndexProperty()Ljavafx/beans/property/ReadOnlyIntegerProperty;

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/control/TreeTableRow$3;->this$0:Ljavafx/scene/control/TreeTableRow;

    invoke-static {v5}, Ljavafx/scene/control/TreeTableRow;->access$300(Ljavafx/scene/control/TreeTableRow;)Ljavafx/beans/WeakInvalidationListener;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljavafx/beans/property/ReadOnlyIntegerProperty;->addListener(Ljavafx/beans/InvalidationListener;)V

    .line 251
    :cond_5
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/control/TreeTableRow$3;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavafx/scene/control/TreeTableView;

    invoke-virtual {v4}, Ljavafx/scene/control/TreeTableView;->editingCellProperty()Ljavafx/beans/property/ReadOnlyObjectProperty;

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/control/TreeTableRow$3;->this$0:Ljavafx/scene/control/TreeTableRow;

    invoke-static {v5}, Ljavafx/scene/control/TreeTableRow;->access$400(Ljavafx/scene/control/TreeTableRow;)Ljavafx/beans/WeakInvalidationListener;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljavafx/beans/property/ReadOnlyObjectProperty;->addListener(Ljavafx/beans/InvalidationListener;)V

    .line 253
    move-object v4, v0

    new-instance v5, Ljava/lang/ref/WeakReference;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v0

    invoke-virtual {v7}, Ljavafx/scene/control/TreeTableRow$3;->get()Ljava/lang/Object;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v5, v4, Ljavafx/scene/control/TreeTableRow$3;->weakTreeTableViewRef:Ljava/lang/ref/WeakReference;

    .line 256
    .end local v1    # "sm":Ljavafx/scene/control/TreeTableView$TreeTableViewSelectionModel;, "Ljavafx/scene/control/TreeTableView$TreeTableViewSelectionModel<TT;>;"
    .end local v2    # "fm":Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel;, "Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel<TT;>;"
    :cond_6
    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/control/TreeTableRow$3;->this$0:Ljavafx/scene/control/TreeTableRow;

    invoke-static {v4}, Ljavafx/scene/control/TreeTableRow;->access$500(Ljavafx/scene/control/TreeTableRow;)V

    .line 257
    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/control/TreeTableRow$3;->this$0:Ljavafx/scene/control/TreeTableRow;

    invoke-virtual {v4}, Ljavafx/scene/control/TreeTableRow;->requestLayout()V

    .line 258
    return-void
.end method
