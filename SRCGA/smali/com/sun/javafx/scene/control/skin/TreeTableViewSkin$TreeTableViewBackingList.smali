.class Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin$TreeTableViewBackingList;
.super Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList;
.source "TreeTableViewSkin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TreeTableViewBackingList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList",
        "<",
        "Ljavafx/scene/control/TreeItem",
        "<TS;>;>;"
    }
.end annotation


# instance fields
.field private size:I

.field private final treeTable:Ljavafx/scene/control/TreeTableView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/scene/control/TreeTableView",
            "<TS;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljavafx/scene/control/TreeTableView;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/control/TreeTableView",
            "<TS;>;)V"
        }
    .end annotation

    .prologue
    .line 507
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin$TreeTableViewBackingList;, "Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin$TreeTableViewBackingList<TS;>;"
    move-object v1, p1

    .local v1, "treeTable":Ljavafx/scene/control/TreeTableView;, "Ljavafx/scene/control/TreeTableView<TS;>;"
    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList;-><init>()V

    .line 505
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin$TreeTableViewBackingList;->size:I

    .line 508
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin$TreeTableViewBackingList;->treeTable:Ljavafx/scene/control/TreeTableView;

    .line 509
    return-void
.end method


# virtual methods
.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 502
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin$TreeTableViewBackingList;, "Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin$TreeTableViewBackingList<TS;>;"
    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin$TreeTableViewBackingList;->get(I)Ljavafx/scene/control/TreeItem;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin$TreeTableViewBackingList;, "Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin$TreeTableViewBackingList<TS;>;"
    return-object v0
.end method

.method public get(I)Ljavafx/scene/control/TreeItem;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljavafx/scene/control/TreeItem",
            "<TS;>;"
        }
    .end annotation

    .prologue
    .line 521
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin$TreeTableViewBackingList;, "Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin$TreeTableViewBackingList<TS;>;"
    move v1, p1

    .local v1, "i":I
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin$TreeTableViewBackingList;->treeTable:Ljavafx/scene/control/TreeTableView;

    move v3, v1

    invoke-virtual {v2, v3}, Ljavafx/scene/control/TreeTableView;->getTreeItem(I)Ljavafx/scene/control/TreeItem;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin$TreeTableViewBackingList;, "Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin$TreeTableViewBackingList<TS;>;"
    return-object v0
.end method

.method resetSize()V
    .locals 10

    .prologue
    .line 512
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin$TreeTableViewBackingList;, "Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin$TreeTableViewBackingList<TS;>;"
    move-object v2, v0

    iget v2, v2, Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin$TreeTableViewBackingList;->size:I

    move v1, v2

    .line 513
    .local v1, "oldSize":I
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin$TreeTableViewBackingList;->size:I

    .line 516
    move-object v2, v0

    new-instance v3, Lcom/sun/javafx/collections/NonIterableChange$GenericAddRemoveChange;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    const/4 v5, 0x0

    move v6, v1

    .line 517
    invoke-static {}, Ljavafx/collections/FXCollections;->emptyObservableList()Ljavafx/collections/ObservableList;

    move-result-object v7

    move-object v8, v0

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/sun/javafx/collections/NonIterableChange$GenericAddRemoveChange;-><init>(IILjava/util/List;Ljavafx/collections/ObservableList;)V

    .line 516
    invoke-virtual {v2, v3}, Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin$TreeTableViewBackingList;->callObservers(Ljavafx/collections/ListChangeListener$Change;)V

    .line 518
    return-void
.end method

.method public size()I
    .locals 3

    .prologue
    .line 525
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin$TreeTableViewBackingList;, "Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin$TreeTableViewBackingList<TS;>;"
    move-object v1, v0

    iget v1, v1, Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin$TreeTableViewBackingList;->size:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 526
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin$TreeTableViewBackingList;->treeTable:Ljavafx/scene/control/TreeTableView;

    invoke-virtual {v2}, Ljavafx/scene/control/TreeTableView;->getExpandedItemCount()I

    move-result v2

    iput v2, v1, Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin$TreeTableViewBackingList;->size:I

    .line 528
    :cond_0
    move-object v1, v0

    iget v1, v1, Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin$TreeTableViewBackingList;->size:I

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin$TreeTableViewBackingList;, "Lcom/sun/javafx/scene/control/skin/TreeTableViewSkin$TreeTableViewBackingList<TS;>;"
    return v0
.end method
