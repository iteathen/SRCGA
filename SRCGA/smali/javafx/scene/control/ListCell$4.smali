.class Ljavafx/scene/control/ListCell$4;
.super Ljavafx/beans/property/ReadOnlyObjectWrapper;
.source "ListCell.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/control/ListCell;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljavafx/beans/property/ReadOnlyObjectWrapper",
        "<",
        "Ljavafx/scene/control/ListView",
        "<TT;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/scene/control/ListCell;

.field private weakListViewRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Ljavafx/scene/control/ListView",
            "<TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljavafx/scene/control/ListCell;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 9

    .prologue
    .line 233
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ListCell$4;, "Ljavafx/scene/control/ListCell$4;"
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/control/ListCell;
    move-object v2, p2

    .local v2, "x0":Ljava/lang/Object;
    move-object v3, p3

    .local v3, "x1":Ljava/lang/String;
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Ljavafx/scene/control/ListCell$4;->this$0:Ljavafx/scene/control/ListCell;

    move-object v4, v0

    move-object v5, v2

    move-object v6, v3

    invoke-direct {v4, v5, v6}, Ljavafx/beans/property/ReadOnlyObjectWrapper;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 237
    move-object v4, v0

    new-instance v5, Ljava/lang/ref/WeakReference;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    const/4 v7, 0x0

    invoke-direct {v6, v7}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v5, v4, Ljavafx/scene/control/ListCell$4;->weakListViewRef:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method protected invalidated()V
    .locals 11

    .prologue
    .line 241
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ListCell$4;, "Ljavafx/scene/control/ListCell$4;"
    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/scene/control/ListCell$4;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljavafx/scene/control/ListView;

    move-object v1, v6

    .line 242
    .local v1, "currentListView":Ljavafx/scene/control/ListView;, "Ljavafx/scene/control/ListView<TT;>;"
    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/control/ListCell$4;->weakListViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljavafx/scene/control/ListView;

    move-object v2, v6

    .line 246
    .local v2, "oldListView":Ljavafx/scene/control/ListView;, "Ljavafx/scene/control/ListView<TT;>;"
    move-object v6, v1

    move-object v7, v2

    if-ne v6, v7, :cond_0

    .line 303
    :goto_0
    return-void

    .line 249
    :cond_0
    move-object v6, v2

    if-eqz v6, :cond_4

    .line 251
    move-object v6, v2

    invoke-virtual {v6}, Ljavafx/scene/control/ListView;->getSelectionModel()Ljavafx/scene/control/MultipleSelectionModel;

    move-result-object v6

    move-object v3, v6

    .line 252
    .local v3, "sm":Ljavafx/scene/control/MultipleSelectionModel;, "Ljavafx/scene/control/MultipleSelectionModel<TT;>;"
    move-object v6, v3

    if-eqz v6, :cond_1

    .line 253
    move-object v6, v3

    invoke-virtual {v6}, Ljavafx/scene/control/MultipleSelectionModel;->getSelectedIndices()Ljavafx/collections/ObservableList;

    move-result-object v6

    move-object v7, v0

    iget-object v7, v7, Ljavafx/scene/control/ListCell$4;->this$0:Ljavafx/scene/control/ListCell;

    invoke-static {v7}, Ljavafx/scene/control/ListCell;->access$000(Ljavafx/scene/control/ListCell;)Ljavafx/collections/WeakListChangeListener;

    move-result-object v7

    invoke-interface {v6, v7}, Ljavafx/collections/ObservableList;->removeListener(Ljavafx/collections/ListChangeListener;)V

    .line 257
    :cond_1
    move-object v6, v2

    invoke-virtual {v6}, Ljavafx/scene/control/ListView;->getFocusModel()Ljavafx/scene/control/FocusModel;

    move-result-object v6

    move-object v4, v6

    .line 258
    .local v4, "fm":Ljavafx/scene/control/FocusModel;, "Ljavafx/scene/control/FocusModel<TT;>;"
    move-object v6, v4

    if-eqz v6, :cond_2

    .line 259
    move-object v6, v4

    invoke-virtual {v6}, Ljavafx/scene/control/FocusModel;->focusedIndexProperty()Ljavafx/beans/property/ReadOnlyIntegerProperty;

    move-result-object v6

    move-object v7, v0

    iget-object v7, v7, Ljavafx/scene/control/ListCell$4;->this$0:Ljavafx/scene/control/ListCell;

    invoke-static {v7}, Ljavafx/scene/control/ListCell;->access$400(Ljavafx/scene/control/ListCell;)Ljavafx/beans/WeakInvalidationListener;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljavafx/beans/property/ReadOnlyIntegerProperty;->removeListener(Ljavafx/beans/InvalidationListener;)V

    .line 263
    :cond_2
    move-object v6, v2

    invoke-virtual {v6}, Ljavafx/scene/control/ListView;->getItems()Ljavafx/collections/ObservableList;

    move-result-object v6

    move-object v5, v6

    .line 264
    .local v5, "items":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<TT;>;"
    move-object v6, v5

    if-eqz v6, :cond_3

    .line 265
    move-object v6, v5

    move-object v7, v0

    iget-object v7, v7, Ljavafx/scene/control/ListCell$4;->this$0:Ljavafx/scene/control/ListCell;

    invoke-static {v7}, Ljavafx/scene/control/ListCell;->access$200(Ljavafx/scene/control/ListCell;)Ljavafx/collections/WeakListChangeListener;

    move-result-object v7

    invoke-interface {v6, v7}, Ljavafx/collections/ObservableList;->removeListener(Ljavafx/collections/ListChangeListener;)V

    .line 269
    :cond_3
    move-object v6, v2

    invoke-virtual {v6}, Ljavafx/scene/control/ListView;->editingIndexProperty()Ljavafx/beans/property/ReadOnlyIntegerProperty;

    move-result-object v6

    move-object v7, v0

    iget-object v7, v7, Ljavafx/scene/control/ListCell$4;->this$0:Ljavafx/scene/control/ListCell;

    invoke-static {v7}, Ljavafx/scene/control/ListCell;->access$600(Ljavafx/scene/control/ListCell;)Ljavafx/beans/WeakInvalidationListener;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljavafx/beans/property/ReadOnlyIntegerProperty;->removeListener(Ljavafx/beans/InvalidationListener;)V

    .line 270
    move-object v6, v2

    invoke-virtual {v6}, Ljavafx/scene/control/ListView;->itemsProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v6

    move-object v7, v0

    iget-object v7, v7, Ljavafx/scene/control/ListCell$4;->this$0:Ljavafx/scene/control/ListCell;

    invoke-static {v7}, Ljavafx/scene/control/ListCell;->access$700(Ljavafx/scene/control/ListCell;)Ljavafx/beans/value/WeakChangeListener;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljavafx/beans/property/ObjectProperty;->removeListener(Ljavafx/beans/value/ChangeListener;)V

    .line 271
    move-object v6, v2

    invoke-virtual {v6}, Ljavafx/scene/control/ListView;->focusModelProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v6

    move-object v7, v0

    iget-object v7, v7, Ljavafx/scene/control/ListCell$4;->this$0:Ljavafx/scene/control/ListCell;

    invoke-static {v7}, Ljavafx/scene/control/ListCell;->access$800(Ljavafx/scene/control/ListCell;)Ljavafx/beans/value/WeakChangeListener;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljavafx/beans/property/ObjectProperty;->removeListener(Ljavafx/beans/value/ChangeListener;)V

    .line 272
    move-object v6, v2

    invoke-virtual {v6}, Ljavafx/scene/control/ListView;->selectionModelProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v6

    move-object v7, v0

    iget-object v7, v7, Ljavafx/scene/control/ListCell$4;->this$0:Ljavafx/scene/control/ListCell;

    invoke-static {v7}, Ljavafx/scene/control/ListCell;->access$900(Ljavafx/scene/control/ListCell;)Ljavafx/beans/value/WeakChangeListener;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljavafx/beans/property/ObjectProperty;->removeListener(Ljavafx/beans/value/ChangeListener;)V

    .line 275
    .end local v3    # "sm":Ljavafx/scene/control/MultipleSelectionModel;, "Ljavafx/scene/control/MultipleSelectionModel<TT;>;"
    .end local v4    # "fm":Ljavafx/scene/control/FocusModel;, "Ljavafx/scene/control/FocusModel<TT;>;"
    .end local v5    # "items":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<TT;>;"
    :cond_4
    move-object v6, v1

    if-eqz v6, :cond_8

    .line 276
    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/control/ListView;->getSelectionModel()Ljavafx/scene/control/MultipleSelectionModel;

    move-result-object v6

    move-object v3, v6

    .line 277
    .restart local v3    # "sm":Ljavafx/scene/control/MultipleSelectionModel;, "Ljavafx/scene/control/MultipleSelectionModel<TT;>;"
    move-object v6, v3

    if-eqz v6, :cond_5

    .line 278
    move-object v6, v3

    invoke-virtual {v6}, Ljavafx/scene/control/MultipleSelectionModel;->getSelectedIndices()Ljavafx/collections/ObservableList;

    move-result-object v6

    move-object v7, v0

    iget-object v7, v7, Ljavafx/scene/control/ListCell$4;->this$0:Ljavafx/scene/control/ListCell;

    invoke-static {v7}, Ljavafx/scene/control/ListCell;->access$000(Ljavafx/scene/control/ListCell;)Ljavafx/collections/WeakListChangeListener;

    move-result-object v7

    invoke-interface {v6, v7}, Ljavafx/collections/ObservableList;->addListener(Ljavafx/collections/ListChangeListener;)V

    .line 281
    :cond_5
    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/control/ListView;->getFocusModel()Ljavafx/scene/control/FocusModel;

    move-result-object v6

    move-object v4, v6

    .line 282
    .restart local v4    # "fm":Ljavafx/scene/control/FocusModel;, "Ljavafx/scene/control/FocusModel<TT;>;"
    move-object v6, v4

    if-eqz v6, :cond_6

    .line 283
    move-object v6, v4

    invoke-virtual {v6}, Ljavafx/scene/control/FocusModel;->focusedIndexProperty()Ljavafx/beans/property/ReadOnlyIntegerProperty;

    move-result-object v6

    move-object v7, v0

    iget-object v7, v7, Ljavafx/scene/control/ListCell$4;->this$0:Ljavafx/scene/control/ListCell;

    invoke-static {v7}, Ljavafx/scene/control/ListCell;->access$400(Ljavafx/scene/control/ListCell;)Ljavafx/beans/WeakInvalidationListener;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljavafx/beans/property/ReadOnlyIntegerProperty;->addListener(Ljavafx/beans/InvalidationListener;)V

    .line 286
    :cond_6
    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/control/ListView;->getItems()Ljavafx/collections/ObservableList;

    move-result-object v6

    move-object v5, v6

    .line 287
    .restart local v5    # "items":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<TT;>;"
    move-object v6, v5

    if-eqz v6, :cond_7

    .line 288
    move-object v6, v5

    move-object v7, v0

    iget-object v7, v7, Ljavafx/scene/control/ListCell$4;->this$0:Ljavafx/scene/control/ListCell;

    invoke-static {v7}, Ljavafx/scene/control/ListCell;->access$200(Ljavafx/scene/control/ListCell;)Ljavafx/collections/WeakListChangeListener;

    move-result-object v7

    invoke-interface {v6, v7}, Ljavafx/collections/ObservableList;->addListener(Ljavafx/collections/ListChangeListener;)V

    .line 291
    :cond_7
    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/control/ListView;->editingIndexProperty()Ljavafx/beans/property/ReadOnlyIntegerProperty;

    move-result-object v6

    move-object v7, v0

    iget-object v7, v7, Ljavafx/scene/control/ListCell$4;->this$0:Ljavafx/scene/control/ListCell;

    invoke-static {v7}, Ljavafx/scene/control/ListCell;->access$600(Ljavafx/scene/control/ListCell;)Ljavafx/beans/WeakInvalidationListener;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljavafx/beans/property/ReadOnlyIntegerProperty;->addListener(Ljavafx/beans/InvalidationListener;)V

    .line 292
    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/control/ListView;->itemsProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v6

    move-object v7, v0

    iget-object v7, v7, Ljavafx/scene/control/ListCell$4;->this$0:Ljavafx/scene/control/ListCell;

    invoke-static {v7}, Ljavafx/scene/control/ListCell;->access$700(Ljavafx/scene/control/ListCell;)Ljavafx/beans/value/WeakChangeListener;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljavafx/beans/property/ObjectProperty;->addListener(Ljavafx/beans/value/ChangeListener;)V

    .line 293
    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/control/ListView;->focusModelProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v6

    move-object v7, v0

    iget-object v7, v7, Ljavafx/scene/control/ListCell$4;->this$0:Ljavafx/scene/control/ListCell;

    invoke-static {v7}, Ljavafx/scene/control/ListCell;->access$800(Ljavafx/scene/control/ListCell;)Ljavafx/beans/value/WeakChangeListener;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljavafx/beans/property/ObjectProperty;->addListener(Ljavafx/beans/value/ChangeListener;)V

    .line 294
    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/control/ListView;->selectionModelProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v6

    move-object v7, v0

    iget-object v7, v7, Ljavafx/scene/control/ListCell$4;->this$0:Ljavafx/scene/control/ListCell;

    invoke-static {v7}, Ljavafx/scene/control/ListCell;->access$900(Ljavafx/scene/control/ListCell;)Ljavafx/beans/value/WeakChangeListener;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljavafx/beans/property/ObjectProperty;->addListener(Ljavafx/beans/value/ChangeListener;)V

    .line 296
    move-object v6, v0

    new-instance v7, Ljava/lang/ref/WeakReference;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    move-object v9, v1

    invoke-direct {v8, v9}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v7, v6, Ljavafx/scene/control/ListCell$4;->weakListViewRef:Ljava/lang/ref/WeakReference;

    .line 299
    .end local v3    # "sm":Ljavafx/scene/control/MultipleSelectionModel;, "Ljavafx/scene/control/MultipleSelectionModel<TT;>;"
    .end local v4    # "fm":Ljavafx/scene/control/FocusModel;, "Ljavafx/scene/control/FocusModel<TT;>;"
    .end local v5    # "items":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<TT;>;"
    :cond_8
    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/control/ListCell$4;->this$0:Ljavafx/scene/control/ListCell;

    const/4 v7, -0x1

    invoke-static {v6, v7}, Ljavafx/scene/control/ListCell;->access$300(Ljavafx/scene/control/ListCell;I)V

    .line 300
    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/control/ListCell$4;->this$0:Ljavafx/scene/control/ListCell;

    invoke-static {v6}, Ljavafx/scene/control/ListCell;->access$100(Ljavafx/scene/control/ListCell;)V

    .line 301
    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/control/ListCell$4;->this$0:Ljavafx/scene/control/ListCell;

    invoke-static {v6}, Ljavafx/scene/control/ListCell;->access$500(Ljavafx/scene/control/ListCell;)V

    .line 302
    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/control/ListCell$4;->this$0:Ljavafx/scene/control/ListCell;

    invoke-virtual {v6}, Ljavafx/scene/control/ListCell;->requestLayout()V

    .line 303
    goto/16 :goto_0
.end method
