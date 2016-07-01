.class Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel$4$1;
.super Ljava/lang/Object;
.source "TreeTableView.java"

# interfaces
.implements Ljavafx/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel$4;->handle(Ljavafx/scene/control/TreeItem$TreeModificationEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljavafx/util/Callback",
        "<",
        "Ljavafx/scene/control/MultipleSelectionModelBase$ShiftParams;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel$4;


# direct methods
.method constructor <init>(Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel$4;)V
    .locals 4

    .prologue
    .line 2529
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel$4$1;, "Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel$4$1;"
    move-object v1, p1

    .local v1, "this$1":Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel$4;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel$4$1;->this$1:Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel$4;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 2529
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel$4$1;, "Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel$4$1;"
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    check-cast v3, Ljavafx/scene/control/MultipleSelectionModelBase$ShiftParams;

    invoke-virtual {v2, v3}, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel$4$1;->call(Ljavafx/scene/control/MultipleSelectionModelBase$ShiftParams;)Ljava/lang/Void;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel$4$1;, "Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel$4$1;"
    return-object v0
.end method

.method public call(Ljavafx/scene/control/MultipleSelectionModelBase$ShiftParams;)Ljava/lang/Void;
    .locals 12

    .prologue
    .line 2536
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel$4$1;, "Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel$4$1;"
    move-object v1, p1

    .local v1, "param":Ljavafx/scene/control/MultipleSelectionModelBase$ShiftParams;
    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel$4$1;->this$1:Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel$4;

    iget-object v6, v6, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel$4;->this$0:Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;

    invoke-virtual {v6}, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;->startAtomic()V

    .line 2538
    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/control/MultipleSelectionModelBase$ShiftParams;->getClearIndex()I

    move-result v6

    move v2, v6

    .line 2539
    .local v2, "clearIndex":I
    const/4 v6, 0x0

    move-object v3, v6

    .line 2540
    .local v3, "oldTP":Ljavafx/scene/control/TreeTablePosition;, "Ljavafx/scene/control/TreeTablePosition<TS;*>;"
    move v6, v2

    const/4 v7, -0x1

    if-le v6, v7, :cond_0

    .line 2541
    const/4 v6, 0x0

    move v4, v6

    .local v4, "i":I
    :goto_0
    move v6, v4

    move-object v7, v0

    iget-object v7, v7, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel$4$1;->this$1:Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel$4;

    iget-object v7, v7, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel$4;->this$0:Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;

    invoke-static {v7}, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;->access$2400(Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;)Lcom/sun/javafx/scene/control/SelectedCellsMap;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sun/javafx/scene/control/SelectedCellsMap;->size()I

    move-result v7

    if-ge v6, v7, :cond_0

    .line 2542
    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel$4$1;->this$1:Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel$4;

    iget-object v6, v6, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel$4;->this$0:Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;

    invoke-static {v6}, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;->access$2400(Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;)Lcom/sun/javafx/scene/control/SelectedCellsMap;

    move-result-object v6

    move v7, v4

    invoke-virtual {v6, v7}, Lcom/sun/javafx/scene/control/SelectedCellsMap;->get(I)Ljavafx/scene/control/TablePositionBase;

    move-result-object v6

    check-cast v6, Ljavafx/scene/control/TreeTablePosition;

    move-object v5, v6

    .line 2543
    .local v5, "tp":Ljavafx/scene/control/TreeTablePosition;, "Ljavafx/scene/control/TreeTablePosition<TS;*>;"
    move-object v6, v5

    invoke-virtual {v6}, Ljavafx/scene/control/TreeTablePosition;->getRow()I

    move-result v6

    move v7, v2

    if-ne v6, v7, :cond_2

    .line 2544
    move-object v6, v5

    move-object v3, v6

    .line 2545
    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel$4$1;->this$1:Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel$4;

    iget-object v6, v6, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel$4;->this$0:Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;

    invoke-static {v6}, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;->access$2400(Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;)Lcom/sun/javafx/scene/control/SelectedCellsMap;

    move-result-object v6

    move-object v7, v5

    invoke-virtual {v6, v7}, Lcom/sun/javafx/scene/control/SelectedCellsMap;->remove(Ljavafx/scene/control/TablePositionBase;)V

    .line 2546
    .line 2551
    .end local v4    # "i":I
    .end local v5    # "tp":Ljavafx/scene/control/TreeTablePosition;, "Ljavafx/scene/control/TreeTablePosition<TS;*>;"
    :cond_0
    move-object v6, v3

    if-eqz v6, :cond_1

    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/control/MultipleSelectionModelBase$ShiftParams;->isSelected()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 2552
    new-instance v6, Ljavafx/scene/control/TreeTablePosition;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    move-object v8, v0

    iget-object v8, v8, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel$4$1;->this$1:Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel$4;

    iget-object v8, v8, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel$4;->this$0:Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;

    .line 2553
    invoke-static {v8}, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;->access$2500(Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;)Ljavafx/scene/control/TreeTableView;

    move-result-object v8

    move-object v9, v1

    invoke-virtual {v9}, Ljavafx/scene/control/MultipleSelectionModelBase$ShiftParams;->getSetIndex()I

    move-result v9

    move-object v10, v3

    invoke-virtual {v10}, Ljavafx/scene/control/TreeTablePosition;->getTableColumn()Ljavafx/scene/control/TreeTableColumn;

    move-result-object v10

    invoke-direct {v7, v8, v9, v10}, Ljavafx/scene/control/TreeTablePosition;-><init>(Ljavafx/scene/control/TreeTableView;ILjavafx/scene/control/TreeTableColumn;)V

    move-object v4, v6

    .line 2555
    .local v4, "newTP":Ljavafx/scene/control/TreeTablePosition;, "Ljavafx/scene/control/TreeTablePosition<TS;*>;"
    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel$4$1;->this$1:Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel$4;

    iget-object v6, v6, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel$4;->this$0:Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;

    invoke-static {v6}, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;->access$2400(Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;)Lcom/sun/javafx/scene/control/SelectedCellsMap;

    move-result-object v6

    move-object v7, v4

    invoke-virtual {v6, v7}, Lcom/sun/javafx/scene/control/SelectedCellsMap;->add(Ljavafx/scene/control/TablePositionBase;)V

    .line 2558
    .end local v4    # "newTP":Ljavafx/scene/control/TreeTablePosition;, "Ljavafx/scene/control/TreeTablePosition<TS;*>;"
    :cond_1
    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel$4$1;->this$1:Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel$4;

    iget-object v6, v6, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel$4;->this$0:Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;

    invoke-virtual {v6}, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;->stopAtomic()V

    .line 2560
    const/4 v6, 0x0

    move-object v0, v6

    .end local v0    # "this":Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel$4$1;, "Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel$4$1;"
    return-object v0

    .line 2541
    .restart local v0    # "this":Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel$4$1;, "Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel$4$1;"
    .local v4, "i":I
    .restart local v5    # "tp":Ljavafx/scene/control/TreeTablePosition;, "Ljavafx/scene/control/TreeTablePosition<TS;*>;"
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method
