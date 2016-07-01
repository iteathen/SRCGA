.class public abstract Ljavafx/scene/control/TableSelectionModel;
.super Ljavafx/scene/control/MultipleSelectionModelBase;
.source "TableSelectionModel.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljavafx/scene/control/MultipleSelectionModelBase",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private cellSelectionEnabled:Ljavafx/beans/property/BooleanProperty;


# direct methods
.method public constructor <init>()V
    .locals 7

    .prologue
    .line 38
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableSelectionModel;, "Ljavafx/scene/control/TableSelectionModel<TT;>;"
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/control/MultipleSelectionModelBase;-><init>()V

    .line 98
    move-object v1, v0

    new-instance v2, Ljavafx/beans/property/SimpleBooleanProperty;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    const-string v5, "cellSelectionEnabled"

    invoke-direct {v3, v4, v5}, Ljavafx/beans/property/SimpleBooleanProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v1, Ljavafx/scene/control/TableSelectionModel;->cellSelectionEnabled:Ljavafx/beans/property/BooleanProperty;

    return-void
.end method


# virtual methods
.method public final cellSelectionEnabledProperty()Ljavafx/beans/property/BooleanProperty;
    .locals 2

    .prologue
    .line 101
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableSelectionModel;, "Ljavafx/scene/control/TableSelectionModel<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TableSelectionModel;->cellSelectionEnabled:Ljavafx/beans/property/BooleanProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TableSelectionModel;, "Ljavafx/scene/control/TableSelectionModel<TT;>;"
    return-object v0
.end method

.method public bridge synthetic clearAndSelect(I)V
    .locals 4

    .prologue
    .line 38
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableSelectionModel;, "Ljavafx/scene/control/TableSelectionModel<TT;>;"
    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-super {v2, v3}, Ljavafx/scene/control/MultipleSelectionModelBase;->clearAndSelect(I)V

    return-void
.end method

.method public abstract clearAndSelect(ILjavafx/scene/control/TableColumnBase;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljavafx/scene/control/TableColumnBase",
            "<TT;*>;)V"
        }
    .end annotation
.end method

.method public bridge synthetic clearSelection()V
    .locals 2

    .prologue
    .line 38
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableSelectionModel;, "Ljavafx/scene/control/TableSelectionModel<TT;>;"
    move-object v1, v0

    invoke-super {v1}, Ljavafx/scene/control/MultipleSelectionModelBase;->clearSelection()V

    return-void
.end method

.method public bridge synthetic clearSelection(I)V
    .locals 4

    .prologue
    .line 38
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableSelectionModel;, "Ljavafx/scene/control/TableSelectionModel<TT;>;"
    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-super {v2, v3}, Ljavafx/scene/control/MultipleSelectionModelBase;->clearSelection(I)V

    return-void
.end method

.method public abstract clearSelection(ILjavafx/scene/control/TableColumnBase;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljavafx/scene/control/TableColumnBase",
            "<TT;*>;)V"
        }
    .end annotation
.end method

.method public bridge synthetic getSelectedIndices()Ljavafx/collections/ObservableList;
    .locals 2

    .prologue
    .line 38
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableSelectionModel;, "Ljavafx/scene/control/TableSelectionModel<TT;>;"
    move-object v1, v0

    invoke-super {v1}, Ljavafx/scene/control/MultipleSelectionModelBase;->getSelectedIndices()Ljavafx/collections/ObservableList;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TableSelectionModel;, "Ljavafx/scene/control/TableSelectionModel<TT;>;"
    return-object v0
.end method

.method public bridge synthetic getSelectedItems()Ljavafx/collections/ObservableList;
    .locals 2

    .prologue
    .line 38
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableSelectionModel;, "Ljavafx/scene/control/TableSelectionModel<TT;>;"
    move-object v1, v0

    invoke-super {v1}, Ljavafx/scene/control/MultipleSelectionModelBase;->getSelectedItems()Ljavafx/collections/ObservableList;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TableSelectionModel;, "Ljavafx/scene/control/TableSelectionModel<TT;>;"
    return-object v0
.end method

.method public final isCellSelectionEnabled()Z
    .locals 2

    .prologue
    .line 107
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableSelectionModel;, "Ljavafx/scene/control/TableSelectionModel<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TableSelectionModel;->cellSelectionEnabled:Ljavafx/beans/property/BooleanProperty;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TableSelectionModel;, "Ljavafx/scene/control/TableSelectionModel<TT;>;"
    return v0

    .restart local v0    # "this":Ljavafx/scene/control/TableSelectionModel;, "Ljavafx/scene/control/TableSelectionModel<TT;>;"
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TableSelectionModel;->cellSelectionEnabled:Ljavafx/beans/property/BooleanProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/BooleanProperty;->get()Z

    move-result v1

    goto :goto_0
.end method

.method public bridge synthetic isEmpty()Z
    .locals 2

    .prologue
    .line 38
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableSelectionModel;, "Ljavafx/scene/control/TableSelectionModel<TT;>;"
    move-object v1, v0

    invoke-super {v1}, Ljavafx/scene/control/MultipleSelectionModelBase;->isEmpty()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TableSelectionModel;, "Ljavafx/scene/control/TableSelectionModel<TT;>;"
    return v0
.end method

.method public bridge synthetic isSelected(I)Z
    .locals 4

    .prologue
    .line 38
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableSelectionModel;, "Ljavafx/scene/control/TableSelectionModel<TT;>;"
    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-super {v2, v3}, Ljavafx/scene/control/MultipleSelectionModelBase;->isSelected(I)Z

    move-result v2

    move v0, v2

    .end local v0    # "this":Ljavafx/scene/control/TableSelectionModel;, "Ljavafx/scene/control/TableSelectionModel<TT;>;"
    return v0
.end method

.method public abstract isSelected(ILjavafx/scene/control/TableColumnBase;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljavafx/scene/control/TableColumnBase",
            "<TT;*>;)Z"
        }
    .end annotation
.end method

.method public bridge synthetic select(I)V
    .locals 4

    .prologue
    .line 38
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableSelectionModel;, "Ljavafx/scene/control/TableSelectionModel<TT;>;"
    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-super {v2, v3}, Ljavafx/scene/control/MultipleSelectionModelBase;->select(I)V

    return-void
.end method

.method public abstract select(ILjavafx/scene/control/TableColumnBase;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljavafx/scene/control/TableColumnBase",
            "<TT;*>;)V"
        }
    .end annotation
.end method

.method public bridge synthetic select(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 38
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableSelectionModel;, "Ljavafx/scene/control/TableSelectionModel<TT;>;"
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Ljavafx/scene/control/MultipleSelectionModelBase;->select(Ljava/lang/Object;)V

    return-void
.end method

.method public abstract selectAboveCell()V
.end method

.method public bridge synthetic selectAll()V
    .locals 2

    .prologue
    .line 38
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableSelectionModel;, "Ljavafx/scene/control/TableSelectionModel<TT;>;"
    move-object v1, v0

    invoke-super {v1}, Ljavafx/scene/control/MultipleSelectionModelBase;->selectAll()V

    return-void
.end method

.method public abstract selectBelowCell()V
.end method

.method public bridge synthetic selectFirst()V
    .locals 2

    .prologue
    .line 38
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableSelectionModel;, "Ljavafx/scene/control/TableSelectionModel<TT;>;"
    move-object v1, v0

    invoke-super {v1}, Ljavafx/scene/control/MultipleSelectionModelBase;->selectFirst()V

    return-void
.end method

.method public bridge synthetic selectIndices(I[I)V
    .locals 6

    .prologue
    .line 38
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableSelectionModel;, "Ljavafx/scene/control/TableSelectionModel<TT;>;"
    move v1, p1

    move-object v2, p2

    move-object v3, v0

    move v4, v1

    move-object v5, v2

    invoke-super {v3, v4, v5}, Ljavafx/scene/control/MultipleSelectionModelBase;->selectIndices(I[I)V

    return-void
.end method

.method public bridge synthetic selectLast()V
    .locals 2

    .prologue
    .line 38
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableSelectionModel;, "Ljavafx/scene/control/TableSelectionModel<TT;>;"
    move-object v1, v0

    invoke-super {v1}, Ljavafx/scene/control/MultipleSelectionModelBase;->selectLast()V

    return-void
.end method

.method public abstract selectLeftCell()V
.end method

.method public bridge synthetic selectNext()V
    .locals 2

    .prologue
    .line 38
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableSelectionModel;, "Ljavafx/scene/control/TableSelectionModel<TT;>;"
    move-object v1, v0

    invoke-super {v1}, Ljavafx/scene/control/MultipleSelectionModelBase;->selectNext()V

    return-void
.end method

.method public bridge synthetic selectPrevious()V
    .locals 2

    .prologue
    .line 38
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableSelectionModel;, "Ljavafx/scene/control/TableSelectionModel<TT;>;"
    move-object v1, v0

    invoke-super {v1}, Ljavafx/scene/control/MultipleSelectionModelBase;->selectPrevious()V

    return-void
.end method

.method public abstract selectRange(ILjavafx/scene/control/TableColumnBase;ILjavafx/scene/control/TableColumnBase;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljavafx/scene/control/TableColumnBase",
            "<TT;*>;I",
            "Ljavafx/scene/control/TableColumnBase",
            "<TT;*>;)V"
        }
    .end annotation
.end method

.method public abstract selectRightCell()V
.end method

.method public final setCellSelectionEnabled(Z)V
    .locals 4

    .prologue
    .line 104
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TableSelectionModel;, "Ljavafx/scene/control/TableSelectionModel<TT;>;"
    move v1, p1

    .local v1, "value":Z
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/TableSelectionModel;->cellSelectionEnabledProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v2

    move v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/BooleanProperty;->set(Z)V

    .line 105
    return-void
.end method
