.class Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel$4;
.super Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList;
.source "TableView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;-><init>(Ljavafx/scene/control/TableView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList",
        "<",
        "Ljavafx/scene/control/TablePosition",
        "<TS;*>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;


# direct methods
.method constructor <init>(Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;)V
    .locals 4

    .prologue
    .line 2072
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel$4;, "Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel$4;"
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel$4;->this$0:Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;

    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 2072
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel$4;, "Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel$4;"
    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel$4;->get(I)Ljavafx/scene/control/TablePosition;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel$4;, "Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel$4;"
    return-object v0
.end method

.method public get(I)Ljavafx/scene/control/TablePosition;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljavafx/scene/control/TablePosition",
            "<TS;*>;"
        }
    .end annotation

    .prologue
    .line 2074
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel$4;, "Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel$4;"
    move v1, p1

    .local v1, "i":I
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel$4;->this$0:Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;

    invoke-static {v2}, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->access$2100(Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;)Lcom/sun/javafx/scene/control/SelectedCellsMap;

    move-result-object v2

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/javafx/scene/control/SelectedCellsMap;->get(I)Ljavafx/scene/control/TablePositionBase;

    move-result-object v2

    check-cast v2, Ljavafx/scene/control/TablePosition;

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel$4;, "Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel$4;"
    return-object v0
.end method

.method public size()I
    .locals 2

    .prologue
    .line 2078
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel$4;, "Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel$4;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel$4;->this$0:Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;

    invoke-static {v1}, Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;->access$2100(Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel;)Lcom/sun/javafx/scene/control/SelectedCellsMap;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/SelectedCellsMap;->size()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel$4;, "Ljavafx/scene/control/TableView$TableViewArrayListSelectionModel$4;"
    return v0
.end method
