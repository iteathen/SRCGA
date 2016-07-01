.class Ljavafx/scene/control/ComboBox$ComboBoxSelectionModel$2;
.super Ljava/lang/Object;
.source "ComboBox.java"

# interfaces
.implements Ljavafx/collections/ListChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/control/ComboBox$ComboBoxSelectionModel;
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
.field final synthetic this$0:Ljavafx/scene/control/ComboBox$ComboBoxSelectionModel;


# direct methods
.method constructor <init>(Ljavafx/scene/control/ComboBox$ComboBoxSelectionModel;)V
    .locals 4

    .prologue
    .line 520
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ComboBox$ComboBoxSelectionModel$2;, "Ljavafx/scene/control/ComboBox$ComboBoxSelectionModel$2;"
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/control/ComboBox$ComboBoxSelectionModel;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/control/ComboBox$ComboBoxSelectionModel$2;->this$0:Ljavafx/scene/control/ComboBox$ComboBoxSelectionModel;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Ljavafx/collections/ListChangeListener$Change;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/ListChangeListener$Change",
            "<+TT;>;)V"
        }
    .end annotation

    .prologue
    .line 522
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ComboBox$ComboBoxSelectionModel$2;, "Ljavafx/scene/control/ComboBox$ComboBoxSelectionModel$2;"
    move-object v1, p1

    .local v1, "c":Ljavafx/collections/ListChangeListener$Change;, "Ljavafx/collections/ListChangeListener$Change<+TT;>;"
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/control/ComboBox$ComboBoxSelectionModel$2;->this$0:Ljavafx/scene/control/ComboBox$ComboBoxSelectionModel;

    invoke-static {v3}, Ljavafx/scene/control/ComboBox$ComboBoxSelectionModel;->access$300(Ljavafx/scene/control/ComboBox$ComboBoxSelectionModel;)Ljavafx/scene/control/ComboBox;

    move-result-object v3

    invoke-virtual {v3}, Ljavafx/scene/control/ComboBox;->getItems()Ljavafx/collections/ObservableList;

    move-result-object v3

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/control/ComboBox$ComboBoxSelectionModel$2;->this$0:Ljavafx/scene/control/ComboBox$ComboBoxSelectionModel;

    invoke-static {v3}, Ljavafx/scene/control/ComboBox$ComboBoxSelectionModel;->access$300(Ljavafx/scene/control/ComboBox$ComboBoxSelectionModel;)Ljavafx/scene/control/ComboBox;

    move-result-object v3

    invoke-virtual {v3}, Ljavafx/scene/control/ComboBox;->getItems()Ljavafx/collections/ObservableList;

    move-result-object v3

    invoke-interface {v3}, Ljavafx/collections/ObservableList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 523
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/control/ComboBox$ComboBoxSelectionModel$2;->this$0:Ljavafx/scene/control/ComboBox$ComboBoxSelectionModel;

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Ljavafx/scene/control/ComboBox$ComboBoxSelectionModel;->setSelectedIndex(I)V

    .line 531
    :cond_1
    :goto_0
    const/4 v3, 0x0

    move v2, v3

    .line 532
    .local v2, "shift":I
    :cond_2
    :goto_1
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/collections/ListChangeListener$Change;->next()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 533
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/control/ComboBox$ComboBoxSelectionModel$2;->this$0:Ljavafx/scene/control/ComboBox$ComboBoxSelectionModel;

    invoke-static {v3}, Ljavafx/scene/control/ComboBox$ComboBoxSelectionModel;->access$300(Ljavafx/scene/control/ComboBox$ComboBoxSelectionModel;)Ljavafx/scene/control/ComboBox;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/control/ComboBox$ComboBoxSelectionModel$2;->this$0:Ljavafx/scene/control/ComboBox$ComboBoxSelectionModel;

    invoke-static {v4}, Ljavafx/scene/control/ComboBox$ComboBoxSelectionModel;->access$300(Ljavafx/scene/control/ComboBox$ComboBoxSelectionModel;)Ljavafx/scene/control/ComboBox;

    move-result-object v4

    invoke-static {v4}, Ljavafx/scene/control/ComboBox;->access$500(Ljavafx/scene/control/ComboBox;)I

    move-result v4

    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/collections/ListChangeListener$Change;->getRemovedSize()I

    move-result v5

    if-ne v4, v5, :cond_4

    const/4 v4, 0x1

    :goto_2
    invoke-static {v3, v4}, Ljavafx/scene/control/ComboBox;->access$102(Ljavafx/scene/control/ComboBox;Z)Z

    move-result v3

    .line 535
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/collections/ListChangeListener$Change;->wasReplaced()Z

    move-result v3

    if-eqz v3, :cond_5

    goto :goto_1

    .line 524
    .end local v2    # "shift":I
    :cond_3
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/control/ComboBox$ComboBoxSelectionModel$2;->this$0:Ljavafx/scene/control/ComboBox$ComboBoxSelectionModel;

    invoke-virtual {v3}, Ljavafx/scene/control/ComboBox$ComboBoxSelectionModel;->getSelectedIndex()I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/control/ComboBox$ComboBoxSelectionModel$2;->this$0:Ljavafx/scene/control/ComboBox$ComboBoxSelectionModel;

    invoke-virtual {v3}, Ljavafx/scene/control/ComboBox$ComboBoxSelectionModel;->getSelectedItem()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 525
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/control/ComboBox$ComboBoxSelectionModel$2;->this$0:Ljavafx/scene/control/ComboBox$ComboBoxSelectionModel;

    invoke-static {v3}, Ljavafx/scene/control/ComboBox$ComboBoxSelectionModel;->access$300(Ljavafx/scene/control/ComboBox$ComboBoxSelectionModel;)Ljavafx/scene/control/ComboBox;

    move-result-object v3

    invoke-virtual {v3}, Ljavafx/scene/control/ComboBox;->getItems()Ljavafx/collections/ObservableList;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/control/ComboBox$ComboBoxSelectionModel$2;->this$0:Ljavafx/scene/control/ComboBox$ComboBoxSelectionModel;

    invoke-virtual {v4}, Ljavafx/scene/control/ComboBox$ComboBoxSelectionModel;->getSelectedItem()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    move v2, v3

    .line 526
    .local v2, "newIndex":I
    move v3, v2

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    .line 527
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/control/ComboBox$ComboBoxSelectionModel$2;->this$0:Ljavafx/scene/control/ComboBox$ComboBoxSelectionModel;

    move v4, v2

    invoke-virtual {v3, v4}, Ljavafx/scene/control/ComboBox$ComboBoxSelectionModel;->setSelectedIndex(I)V

    goto :goto_0

    .line 533
    .local v2, "shift":I
    :cond_4
    const/4 v4, 0x0

    goto :goto_2

    .line 537
    :cond_5
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/collections/ListChangeListener$Change;->wasAdded()Z

    move-result v3

    if-nez v3, :cond_6

    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/collections/ListChangeListener$Change;->wasRemoved()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 538
    :cond_6
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/collections/ListChangeListener$Change;->getFrom()I

    move-result v3

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/control/ComboBox$ComboBoxSelectionModel$2;->this$0:Ljavafx/scene/control/ComboBox$ComboBoxSelectionModel;

    invoke-virtual {v4}, Ljavafx/scene/control/ComboBox$ComboBoxSelectionModel;->getSelectedIndex()I

    move-result v4

    if-gt v3, v4, :cond_2

    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/control/ComboBox$ComboBoxSelectionModel$2;->this$0:Ljavafx/scene/control/ComboBox$ComboBoxSelectionModel;

    invoke-virtual {v3}, Ljavafx/scene/control/ComboBox$ComboBoxSelectionModel;->getSelectedIndex()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    .line 539
    move v3, v2

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/collections/ListChangeListener$Change;->wasAdded()Z

    move-result v4

    if-eqz v4, :cond_7

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/collections/ListChangeListener$Change;->getAddedSize()I

    move-result v4

    :goto_3
    add-int/2addr v3, v4

    move v2, v3

    goto/16 :goto_1

    :cond_7
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/collections/ListChangeListener$Change;->getRemovedSize()I

    move-result v4

    neg-int v4, v4

    goto :goto_3

    .line 544
    :cond_8
    move v3, v2

    if-eqz v3, :cond_9

    .line 545
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/control/ComboBox$ComboBoxSelectionModel$2;->this$0:Ljavafx/scene/control/ComboBox$ComboBoxSelectionModel;

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/control/ComboBox$ComboBoxSelectionModel$2;->this$0:Ljavafx/scene/control/ComboBox$ComboBoxSelectionModel;

    invoke-virtual {v4}, Ljavafx/scene/control/ComboBox$ComboBoxSelectionModel;->getSelectedIndex()I

    move-result v4

    move v5, v2

    add-int/2addr v4, v5

    invoke-virtual {v3, v4}, Ljavafx/scene/control/ComboBox$ComboBoxSelectionModel;->clearAndSelect(I)V

    .line 548
    :cond_9
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/control/ComboBox$ComboBoxSelectionModel$2;->this$0:Ljavafx/scene/control/ComboBox$ComboBoxSelectionModel;

    invoke-static {v3}, Ljavafx/scene/control/ComboBox$ComboBoxSelectionModel;->access$300(Ljavafx/scene/control/ComboBox$ComboBoxSelectionModel;)Ljavafx/scene/control/ComboBox;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/control/ComboBox$ComboBoxSelectionModel$2;->this$0:Ljavafx/scene/control/ComboBox$ComboBoxSelectionModel;

    invoke-virtual {v4}, Ljavafx/scene/control/ComboBox$ComboBoxSelectionModel;->getItemCount()I

    move-result v4

    invoke-static {v3, v4}, Ljavafx/scene/control/ComboBox;->access$502(Ljavafx/scene/control/ComboBox;I)I

    move-result v3

    .line 549
    return-void
.end method
