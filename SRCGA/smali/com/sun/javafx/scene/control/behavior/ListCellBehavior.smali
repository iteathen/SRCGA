.class public Lcom/sun/javafx/scene/control/behavior/ListCellBehavior;
.super Lcom/sun/javafx/scene/control/behavior/CellBehaviorBase;
.source "ListCellBehavior.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/sun/javafx/scene/control/behavior/CellBehaviorBase",
        "<",
        "Ljavafx/scene/control/ListCell",
        "<TT;>;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljavafx/scene/control/ListCell;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/control/ListCell",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 44
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/ListCellBehavior;, "Lcom/sun/javafx/scene/control/behavior/ListCellBehavior<TT;>;"
    move-object v1, p1

    .local v1, "control":Ljavafx/scene/control/ListCell;, "Ljavafx/scene/control/ListCell<TT;>;"
    move-object v2, v0

    move-object v3, v1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/sun/javafx/scene/control/behavior/CellBehaviorBase;-><init>(Ljavafx/scene/control/Cell;Ljava/util/List;)V

    .line 45
    return-void
.end method


# virtual methods
.method protected bridge synthetic edit(Ljavafx/scene/control/Cell;)V
    .locals 4

    .prologue
    .line 35
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/ListCellBehavior;, "Lcom/sun/javafx/scene/control/behavior/ListCellBehavior<TT;>;"
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    check-cast v3, Ljavafx/scene/control/ListCell;

    invoke-virtual {v2, v3}, Lcom/sun/javafx/scene/control/behavior/ListCellBehavior;->edit(Ljavafx/scene/control/ListCell;)V

    return-void
.end method

.method protected edit(Ljavafx/scene/control/ListCell;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/control/ListCell",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 68
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/ListCellBehavior;, "Lcom/sun/javafx/scene/control/behavior/ListCellBehavior<TT;>;"
    move-object v1, p1

    .local v1, "cell":Ljavafx/scene/control/ListCell;, "Ljavafx/scene/control/ListCell<TT;>;"
    move-object v3, v1

    if-nez v3, :cond_0

    const/4 v3, -0x1

    :goto_0
    move v2, v3

    .line 69
    .local v2, "index":I
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/behavior/ListCellBehavior;->getCellContainer()Ljavafx/scene/control/ListView;

    move-result-object v3

    move v4, v2

    invoke-virtual {v3, v4}, Ljavafx/scene/control/ListView;->edit(I)V

    .line 70
    return-void

    .line 68
    .end local v2    # "index":I
    :cond_0
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/control/ListCell;->getIndex()I

    move-result v3

    goto :goto_0
.end method

.method protected bridge synthetic getCellContainer()Ljavafx/scene/control/Control;
    .locals 2

    .prologue
    .line 35
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/ListCellBehavior;, "Lcom/sun/javafx/scene/control/behavior/ListCellBehavior<TT;>;"
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/ListCellBehavior;->getCellContainer()Ljavafx/scene/control/ListView;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/behavior/ListCellBehavior;, "Lcom/sun/javafx/scene/control/behavior/ListCellBehavior<TT;>;"
    return-object v0
.end method

.method protected getCellContainer()Ljavafx/scene/control/ListView;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/scene/control/ListView",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 64
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/ListCellBehavior;, "Lcom/sun/javafx/scene/control/behavior/ListCellBehavior<TT;>;"
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/ListCellBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v1

    check-cast v1, Ljavafx/scene/control/ListCell;

    invoke-virtual {v1}, Ljavafx/scene/control/ListCell;->getListView()Ljavafx/scene/control/ListView;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/behavior/ListCellBehavior;, "Lcom/sun/javafx/scene/control/behavior/ListCellBehavior<TT;>;"
    return-object v0
.end method

.method protected getFocusModel()Ljavafx/scene/control/FocusModel;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/scene/control/FocusModel",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 60
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/ListCellBehavior;, "Lcom/sun/javafx/scene/control/behavior/ListCellBehavior<TT;>;"
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/ListCellBehavior;->getCellContainer()Ljavafx/scene/control/ListView;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/scene/control/ListView;->getFocusModel()Ljavafx/scene/control/FocusModel;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/behavior/ListCellBehavior;, "Lcom/sun/javafx/scene/control/behavior/ListCellBehavior<TT;>;"
    return-object v0
.end method

.method protected getSelectionModel()Ljavafx/scene/control/MultipleSelectionModel;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/scene/control/MultipleSelectionModel",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 56
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/ListCellBehavior;, "Lcom/sun/javafx/scene/control/behavior/ListCellBehavior<TT;>;"
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/ListCellBehavior;->getCellContainer()Ljavafx/scene/control/ListView;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/scene/control/ListView;->getSelectionModel()Ljavafx/scene/control/MultipleSelectionModel;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/behavior/ListCellBehavior;, "Lcom/sun/javafx/scene/control/behavior/ListCellBehavior<TT;>;"
    return-object v0
.end method
