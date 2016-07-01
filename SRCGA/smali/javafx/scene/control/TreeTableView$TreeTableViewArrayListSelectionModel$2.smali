.class Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel$2;
.super Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList;
.source "TreeTableView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;-><init>(Ljavafx/scene/control/TreeTableView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList",
        "<",
        "Ljavafx/scene/control/TreeItem",
        "<TS;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;


# direct methods
.method constructor <init>(Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;)V
    .locals 4

    .prologue
    .line 2319
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel$2;, "Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel$2;"
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel$2;->this$0:Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;

    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 2319
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel$2;, "Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel$2;"
    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel$2;->get(I)Ljavafx/scene/control/TreeItem;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel$2;, "Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel$2;"
    return-object v0
.end method

.method public get(I)Ljavafx/scene/control/TreeItem;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljavafx/scene/control/TreeItem",
            "<TS;>;"
        }
    .end annotation

    .prologue
    .line 2321
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel$2;, "Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel$2;"
    move v1, p1

    .local v1, "i":I
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel$2;->this$0:Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;

    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel$2;->this$0:Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;

    invoke-virtual {v3}, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;->getSelectedIndices()Ljavafx/collections/ObservableList;

    move-result-object v3

    move v4, v1

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;->getModelItem(I)Ljavafx/scene/control/TreeItem;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel$2;, "Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel$2;"
    return-object v0
.end method

.method public size()I
    .locals 2

    .prologue
    .line 2325
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel$2;, "Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel$2;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel$2;->this$0:Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;

    invoke-virtual {v1}, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;->getSelectedIndices()Ljavafx/collections/ObservableList;

    move-result-object v1

    invoke-interface {v1}, Ljavafx/collections/ObservableList;->size()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel$2;, "Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel$2;"
    return v0
.end method
