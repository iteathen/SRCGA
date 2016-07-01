.class Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel$2;
.super Ljavafx/beans/property/ReadOnlyObjectWrapper;
.source "TreeTableView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel;->focusedCellPropertyImpl()Ljavafx/beans/property/ReadOnlyObjectWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljavafx/beans/property/ReadOnlyObjectWrapper",
        "<",
        "Ljavafx/scene/control/TreeTablePosition",
        "<TS;*>;>;"
    }
.end annotation


# instance fields
.field private old:Ljavafx/scene/control/TreeTablePosition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/scene/control/TreeTablePosition",
            "<TS;*>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel;


# direct methods
.method constructor <init>(Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel;Ljavafx/scene/control/TreeTablePosition;)V
    .locals 5

    .prologue
    .line 3508
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel$2;, "Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel$2;"
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel;
    move-object v2, p2

    .local v2, "x0":Ljavafx/scene/control/TreeTablePosition;, "Ljavafx/scene/control/TreeTablePosition<TS;*>;"
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel$2;->this$0:Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel;

    move-object v3, v0

    move-object v4, v2

    invoke-direct {v3, v4}, Ljavafx/beans/property/ReadOnlyObjectWrapper;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 3523
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel$2;, "Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel$2;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel$2;->this$0:Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel$2;, "Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel$2;"
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 3528
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel$2;, "Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel$2;"
    const-string v1, "focusedCell"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel$2;, "Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel$2;"
    return-object v0
.end method

.method protected invalidated()V
    .locals 4

    .prologue
    .line 3511
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel$2;, "Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel$2;"
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel$2;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 3519
    :goto_0
    return-void

    .line 3513
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel$2;->old:Ljavafx/scene/control/TreeTablePosition;

    if-eqz v1, :cond_1

    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel$2;->old:Ljavafx/scene/control/TreeTablePosition;

    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel$2;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljavafx/scene/control/TreeTablePosition;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 3514
    :cond_1
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel$2;->this$0:Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel;

    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel$2;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavafx/scene/control/TreeTablePosition;

    invoke-virtual {v2}, Ljavafx/scene/control/TreeTablePosition;->getRow()I

    move-result v2

    invoke-virtual {v1, v2}, Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel;->setFocusedIndex(I)V

    .line 3515
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel$2;->this$0:Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel;

    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel$2;->this$0:Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel;

    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel$2;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavafx/scene/control/TreeTablePosition;

    invoke-virtual {v3}, Ljavafx/scene/control/TreeTablePosition;->getRow()I

    move-result v3

    invoke-virtual {v2, v3}, Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel;->getModelItem(I)Ljavafx/scene/control/TreeItem;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel;->setFocusedItem(Ljava/lang/Object;)V

    .line 3517
    move-object v1, v0

    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel$2;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavafx/scene/control/TreeTablePosition;

    iput-object v2, v1, Ljavafx/scene/control/TreeTableView$TreeTableViewFocusModel$2;->old:Ljavafx/scene/control/TreeTablePosition;

    .line 3519
    :cond_2
    goto :goto_0
.end method
