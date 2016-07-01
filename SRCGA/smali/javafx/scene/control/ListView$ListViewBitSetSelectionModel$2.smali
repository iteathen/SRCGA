.class Ljavafx/scene/control/ListView$ListViewBitSetSelectionModel$2;
.super Ljava/lang/Object;
.source "ListView.java"

# interfaces
.implements Ljavafx/collections/ListChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/control/ListView$ListViewBitSetSelectionModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljavafx/collections/ListChangeListener",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/scene/control/ListView$ListViewBitSetSelectionModel;


# direct methods
.method constructor <init>(Ljavafx/scene/control/ListView$ListViewBitSetSelectionModel;)V
    .locals 4

    .prologue
    .line 1209
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ListView$ListViewBitSetSelectionModel$2;, "Ljavafx/scene/control/ListView$ListViewBitSetSelectionModel$2;"
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/control/ListView$ListViewBitSetSelectionModel;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/control/ListView$ListViewBitSetSelectionModel$2;->this$0:Ljavafx/scene/control/ListView$ListViewBitSetSelectionModel;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Ljavafx/collections/ListChangeListener$Change;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/ListChangeListener$Change",
            "<+TT;>;)V"
        }
    .end annotation

    .prologue
    .line 1211
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ListView$ListViewBitSetSelectionModel$2;, "Ljavafx/scene/control/ListView$ListViewBitSetSelectionModel$2;"
    move-object v1, p1

    .local v1, "c":Ljavafx/collections/ListChangeListener$Change;, "Ljavafx/collections/ListChangeListener$Change<+TT;>;"
    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/control/ListView$ListViewBitSetSelectionModel$2;->this$0:Ljavafx/scene/control/ListView$ListViewBitSetSelectionModel;

    invoke-static {v6}, Ljavafx/scene/control/ListView$ListViewBitSetSelectionModel;->access$1300(Ljavafx/scene/control/ListView$ListViewBitSetSelectionModel;)V

    .line 1213
    :goto_0
    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/collections/ListChangeListener$Change;->next()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 1214
    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/control/ListView$ListViewBitSetSelectionModel$2;->this$0:Ljavafx/scene/control/ListView$ListViewBitSetSelectionModel;

    invoke-virtual {v6}, Ljavafx/scene/control/ListView$ListViewBitSetSelectionModel;->getSelectedItem()Ljava/lang/Object;

    move-result-object v6

    move-object v2, v6

    .line 1215
    .local v2, "selectedItem":Ljava/lang/Object;, "TT;"
    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/control/ListView$ListViewBitSetSelectionModel$2;->this$0:Ljavafx/scene/control/ListView$ListViewBitSetSelectionModel;

    invoke-virtual {v6}, Ljavafx/scene/control/ListView$ListViewBitSetSelectionModel;->getSelectedIndex()I

    move-result v6

    move v3, v6

    .line 1217
    .local v3, "selectedIndex":I
    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/control/ListView$ListViewBitSetSelectionModel$2;->this$0:Ljavafx/scene/control/ListView$ListViewBitSetSelectionModel;

    invoke-static {v6}, Ljavafx/scene/control/ListView$ListViewBitSetSelectionModel;->access$1400(Ljavafx/scene/control/ListView$ListViewBitSetSelectionModel;)Ljavafx/scene/control/ListView;

    move-result-object v6

    invoke-virtual {v6}, Ljavafx/scene/control/ListView;->getItems()Ljavafx/collections/ObservableList;

    move-result-object v6

    if-eqz v6, :cond_0

    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/control/ListView$ListViewBitSetSelectionModel$2;->this$0:Ljavafx/scene/control/ListView$ListViewBitSetSelectionModel;

    invoke-static {v6}, Ljavafx/scene/control/ListView$ListViewBitSetSelectionModel;->access$1400(Ljavafx/scene/control/ListView$ListViewBitSetSelectionModel;)Ljavafx/scene/control/ListView;

    move-result-object v6

    invoke-virtual {v6}, Ljavafx/scene/control/ListView;->getItems()Ljavafx/collections/ObservableList;

    move-result-object v6

    invoke-interface {v6}, Ljavafx/collections/ObservableList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1218
    :cond_0
    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/control/ListView$ListViewBitSetSelectionModel$2;->this$0:Ljavafx/scene/control/ListView$ListViewBitSetSelectionModel;

    move-object v7, v1

    iput-object v7, v6, Ljavafx/scene/control/ListView$ListViewBitSetSelectionModel;->selectedItemChange:Ljavafx/collections/ListChangeListener$Change;

    .line 1219
    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/control/ListView$ListViewBitSetSelectionModel$2;->this$0:Ljavafx/scene/control/ListView$ListViewBitSetSelectionModel;

    invoke-virtual {v6}, Ljavafx/scene/control/ListView$ListViewBitSetSelectionModel;->clearSelection()V

    .line 1220
    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/control/ListView$ListViewBitSetSelectionModel$2;->this$0:Ljavafx/scene/control/ListView$ListViewBitSetSelectionModel;

    const/4 v7, 0x0

    iput-object v7, v6, Ljavafx/scene/control/ListView$ListViewBitSetSelectionModel;->selectedItemChange:Ljavafx/collections/ListChangeListener$Change;

    .line 1243
    :cond_1
    :goto_1
    goto :goto_0

    .line 1221
    :cond_2
    move v6, v3

    const/4 v7, -0x1

    if-ne v6, v7, :cond_4

    move-object v6, v2

    if-eqz v6, :cond_4

    .line 1222
    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/control/ListView$ListViewBitSetSelectionModel$2;->this$0:Ljavafx/scene/control/ListView$ListViewBitSetSelectionModel;

    invoke-static {v6}, Ljavafx/scene/control/ListView$ListViewBitSetSelectionModel;->access$1400(Ljavafx/scene/control/ListView$ListViewBitSetSelectionModel;)Ljavafx/scene/control/ListView;

    move-result-object v6

    invoke-virtual {v6}, Ljavafx/scene/control/ListView;->getItems()Ljavafx/collections/ObservableList;

    move-result-object v6

    move-object v7, v2

    invoke-interface {v6, v7}, Ljavafx/collections/ObservableList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    move v4, v6

    .line 1223
    .local v4, "newIndex":I
    move v6, v4

    const/4 v7, -0x1

    if-eq v6, v7, :cond_3

    .line 1224
    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/control/ListView$ListViewBitSetSelectionModel$2;->this$0:Ljavafx/scene/control/ListView$ListViewBitSetSelectionModel;

    move v7, v4

    invoke-virtual {v6, v7}, Ljavafx/scene/control/ListView$ListViewBitSetSelectionModel;->setSelectedIndex(I)V

    .line 1226
    :cond_3
    goto :goto_1

    .end local v4    # "newIndex":I
    :cond_4
    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/collections/ListChangeListener$Change;->wasRemoved()Z

    move-result v6

    if-eqz v6, :cond_1

    move-object v6, v1

    .line 1227
    invoke-virtual {v6}, Ljavafx/collections/ListChangeListener$Change;->getRemovedSize()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_1

    move-object v6, v1

    .line 1228
    invoke-virtual {v6}, Ljavafx/collections/ListChangeListener$Change;->wasAdded()Z

    move-result v6

    if-nez v6, :cond_1

    move-object v6, v2

    if-eqz v6, :cond_1

    move-object v6, v2

    move-object v7, v1

    .line 1230
    invoke-virtual {v7}, Ljavafx/collections/ListChangeListener$Change;->getRemoved()Ljava/util/List;

    move-result-object v7

    const/4 v8, 0x0

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1232
    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/control/ListView$ListViewBitSetSelectionModel$2;->this$0:Ljavafx/scene/control/ListView$ListViewBitSetSelectionModel;

    invoke-virtual {v6}, Ljavafx/scene/control/ListView$ListViewBitSetSelectionModel;->getSelectedIndex()I

    move-result v6

    move-object v7, v0

    iget-object v7, v7, Ljavafx/scene/control/ListView$ListViewBitSetSelectionModel$2;->this$0:Ljavafx/scene/control/ListView$ListViewBitSetSelectionModel;

    invoke-virtual {v7}, Ljavafx/scene/control/ListView$ListViewBitSetSelectionModel;->getItemCount()I

    move-result v7

    if-ge v6, v7, :cond_1

    .line 1233
    move v6, v3

    if-nez v6, :cond_5

    const/4 v6, 0x0

    :goto_2
    move v4, v6

    .line 1234
    .local v4, "previousRow":I
    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/control/ListView$ListViewBitSetSelectionModel$2;->this$0:Ljavafx/scene/control/ListView$ListViewBitSetSelectionModel;

    move v7, v4

    invoke-virtual {v6, v7}, Ljavafx/scene/control/ListView$ListViewBitSetSelectionModel;->getModelItem(I)Ljava/lang/Object;

    move-result-object v6

    move-object v5, v6

    .line 1235
    .local v5, "newSelectedItem":Ljava/lang/Object;, "TT;"
    move-object v6, v2

    move-object v7, v5

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 1236
    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/control/ListView$ListViewBitSetSelectionModel$2;->this$0:Ljavafx/scene/control/ListView$ListViewBitSetSelectionModel;

    invoke-virtual {v6}, Ljavafx/scene/control/ListView$ListViewBitSetSelectionModel;->startAtomic()V

    .line 1237
    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/control/ListView$ListViewBitSetSelectionModel$2;->this$0:Ljavafx/scene/control/ListView$ListViewBitSetSelectionModel;

    move v7, v3

    invoke-virtual {v6, v7}, Ljavafx/scene/control/ListView$ListViewBitSetSelectionModel;->clearSelection(I)V

    .line 1238
    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/control/ListView$ListViewBitSetSelectionModel$2;->this$0:Ljavafx/scene/control/ListView$ListViewBitSetSelectionModel;

    invoke-virtual {v6}, Ljavafx/scene/control/ListView$ListViewBitSetSelectionModel;->stopAtomic()V

    .line 1239
    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/control/ListView$ListViewBitSetSelectionModel$2;->this$0:Ljavafx/scene/control/ListView$ListViewBitSetSelectionModel;

    move-object v7, v5

    invoke-virtual {v6, v7}, Ljavafx/scene/control/ListView$ListViewBitSetSelectionModel;->select(Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 1233
    .end local v4    # "previousRow":I
    .end local v5    # "newSelectedItem":Ljava/lang/Object;, "TT;"
    :cond_5
    move v6, v3

    const/4 v7, 0x1

    add-int/lit8 v6, v6, -0x1

    goto :goto_2

    .line 1245
    .end local v2    # "selectedItem":Ljava/lang/Object;, "TT;"
    .end local v3    # "selectedIndex":I
    :cond_6
    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/control/ListView$ListViewBitSetSelectionModel$2;->this$0:Ljavafx/scene/control/ListView$ListViewBitSetSelectionModel;

    move-object v7, v1

    invoke-static {v6, v7}, Ljavafx/scene/control/ListView$ListViewBitSetSelectionModel;->access$1500(Ljavafx/scene/control/ListView$ListViewBitSetSelectionModel;Ljavafx/collections/ListChangeListener$Change;)V

    .line 1246
    return-void
.end method
