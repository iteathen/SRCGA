.class Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel$5;
.super Lcom/sun/javafx/collections/NonIterableChange;
.source "TreeTableView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;->clearSelection()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sun/javafx/collections/NonIterableChange",
        "<",
        "Ljavafx/scene/control/TreeTablePosition",
        "<TS;*>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;

.field final synthetic val$removed:Ljava/util/List;


# direct methods
.method constructor <init>(Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;IILjavafx/collections/ObservableList;Ljava/util/List;)V
    .locals 10

    .prologue
    .line 2992
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel$5;, "Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel$5;"
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;
    move v2, p2

    .local v2, "x0":I
    move v3, p3

    .local v3, "x1":I
    move-object v4, p4

    .local v4, "x2":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<Ljavafx/scene/control/TreeTablePosition<TS;*>;>;"
    move-object v5, p5

    move-object v6, v0

    move-object v7, v1

    iput-object v7, v6, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel$5;->this$0:Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel;

    move-object v6, v0

    move-object v7, v5

    iput-object v7, v6, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel$5;->val$removed:Ljava/util/List;

    move-object v6, v0

    move v7, v2

    move v8, v3

    move-object v9, v4

    invoke-direct {v6, v7, v8, v9}, Lcom/sun/javafx/collections/NonIterableChange;-><init>(IILjavafx/collections/ObservableList;)V

    return-void
.end method


# virtual methods
.method public getRemoved()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljavafx/scene/control/TreeTablePosition",
            "<TS;*>;>;"
        }
    .end annotation

    .prologue
    .line 2995
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel$5;, "Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel$5;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel$5;->val$removed:Ljava/util/List;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel$5;, "Ljavafx/scene/control/TreeTableView$TreeTableViewArrayListSelectionModel$5;"
    return-object v0
.end method
