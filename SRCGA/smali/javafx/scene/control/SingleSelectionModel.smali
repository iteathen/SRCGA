.class public abstract Ljavafx/scene/control/SingleSelectionModel;
.super Ljavafx/scene/control/SelectionModel;
.source "SingleSelectionModel.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljavafx/scene/control/SelectionModel",
        "<TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 56
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/SingleSelectionModel;, "Ljavafx/scene/control/SingleSelectionModel<TT;>;"
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/control/SelectionModel;-><init>()V

    return-void
.end method

.method private updateSelectedIndex(I)V
    .locals 7

    .prologue
    .line 212
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/SingleSelectionModel;, "Ljavafx/scene/control/SingleSelectionModel<TT;>;"
    move v1, p1

    .local v1, "newIndex":I
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/control/SingleSelectionModel;->getSelectedIndex()I

    move-result v4

    move v2, v4

    .line 213
    .local v2, "currentIndex":I
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/control/SingleSelectionModel;->getSelectedItem()Ljava/lang/Object;

    move-result-object v4

    move-object v3, v4

    .line 215
    .local v3, "currentItem":Ljava/lang/Object;, "TT;"
    move-object v4, v0

    move v5, v1

    invoke-virtual {v4, v5}, Ljavafx/scene/control/SingleSelectionModel;->setSelectedIndex(I)V

    .line 217
    move v4, v2

    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    move-object v4, v3

    if-eqz v4, :cond_0

    move v4, v1

    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    .line 225
    :goto_0
    return-void

    .line 223
    :cond_0
    move-object v4, v0

    move-object v5, v0

    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/scene/control/SingleSelectionModel;->getSelectedIndex()I

    move-result v6

    invoke-virtual {v5, v6}, Ljavafx/scene/control/SingleSelectionModel;->getModelItem(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljavafx/scene/control/SingleSelectionModel;->setSelectedItem(Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public clearAndSelect(I)V
    .locals 4

    .prologue
    .line 103
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/SingleSelectionModel;, "Ljavafx/scene/control/SingleSelectionModel<TT;>;"
    move v1, p1

    .local v1, "index":I
    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Ljavafx/scene/control/SingleSelectionModel;->select(I)V

    .line 104
    return-void
.end method

.method public clearSelection()V
    .locals 3

    .prologue
    .line 68
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/SingleSelectionModel;, "Ljavafx/scene/control/SingleSelectionModel<TT;>;"
    move-object v1, v0

    const/4 v2, -0x1

    invoke-direct {v1, v2}, Ljavafx/scene/control/SingleSelectionModel;->updateSelectedIndex(I)V

    .line 69
    return-void
.end method

.method public clearSelection(I)V
    .locals 4

    .prologue
    .line 75
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/SingleSelectionModel;, "Ljavafx/scene/control/SingleSelectionModel<TT;>;"
    move v1, p1

    .local v1, "index":I
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/SingleSelectionModel;->getSelectedIndex()I

    move-result v2

    move v3, v1

    if-ne v2, v3, :cond_0

    .line 76
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/SingleSelectionModel;->clearSelection()V

    .line 78
    :cond_0
    return-void
.end method

.method protected abstract getItemCount()I
.end method

.method protected abstract getModelItem(I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation
.end method

.method public isEmpty()Z
    .locals 3

    .prologue
    .line 82
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/SingleSelectionModel;, "Ljavafx/scene/control/SingleSelectionModel<TT;>;"
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/SingleSelectionModel;->getItemCount()I

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/SingleSelectionModel;->getSelectedIndex()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Ljavafx/scene/control/SingleSelectionModel;, "Ljavafx/scene/control/SingleSelectionModel<TT;>;"
    return v0

    .restart local v0    # "this":Ljavafx/scene/control/SingleSelectionModel;, "Ljavafx/scene/control/SingleSelectionModel<TT;>;"
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isSelected(I)Z
    .locals 4

    .prologue
    .line 94
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/SingleSelectionModel;, "Ljavafx/scene/control/SingleSelectionModel<TT;>;"
    move v1, p1

    .local v1, "index":I
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/SingleSelectionModel;->getSelectedIndex()I

    move-result v2

    move v3, v1

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .end local v0    # "this":Ljavafx/scene/control/SingleSelectionModel;, "Ljavafx/scene/control/SingleSelectionModel<TT;>;"
    return v0

    .restart local v0    # "this":Ljavafx/scene/control/SingleSelectionModel;, "Ljavafx/scene/control/SingleSelectionModel<TT;>;"
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public select(I)V
    .locals 5

    .prologue
    .line 143
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/SingleSelectionModel;, "Ljavafx/scene/control/SingleSelectionModel<TT;>;"
    move v1, p1

    .local v1, "index":I
    move v3, v1

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    .line 144
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/SingleSelectionModel;->clearSelection()V

    .line 145
    .line 150
    :goto_0
    return-void

    .line 147
    :cond_0
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/SingleSelectionModel;->getItemCount()I

    move-result v3

    move v2, v3

    .line 148
    .local v2, "itemCount":I
    move v3, v2

    if-eqz v3, :cond_1

    move v3, v1

    if-ltz v3, :cond_1

    move v3, v1

    move v4, v2

    if-lt v3, v4, :cond_2

    :cond_1
    goto :goto_0

    .line 149
    :cond_2
    move-object v3, v0

    move v4, v1

    invoke-direct {v3, v4}, Ljavafx/scene/control/SingleSelectionModel;->updateSelectedIndex(I)V

    .line 150
    goto :goto_0
.end method

.method public select(Ljava/lang/Object;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 113
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/SingleSelectionModel;, "Ljavafx/scene/control/SingleSelectionModel<TT;>;"
    move-object v1, p1

    .local v1, "obj":Ljava/lang/Object;, "TT;"
    move-object v5, v1

    if-nez v5, :cond_0

    .line 114
    move-object v5, v0

    const/4 v6, -0x1

    invoke-virtual {v5, v6}, Ljavafx/scene/control/SingleSelectionModel;->setSelectedIndex(I)V

    .line 115
    move-object v5, v0

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljavafx/scene/control/SingleSelectionModel;->setSelectedItem(Ljava/lang/Object;)V

    .line 116
    .line 135
    :goto_0
    return-void

    .line 119
    :cond_0
    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/control/SingleSelectionModel;->getItemCount()I

    move-result v5

    move v2, v5

    .line 121
    .local v2, "itemCount":I
    const/4 v5, 0x0

    move v3, v5

    .local v3, "i":I
    :goto_1
    move v5, v3

    move v6, v2

    if-ge v5, v6, :cond_2

    .line 122
    move-object v5, v0

    move v6, v3

    invoke-virtual {v5, v6}, Ljavafx/scene/control/SingleSelectionModel;->getModelItem(I)Ljava/lang/Object;

    move-result-object v5

    move-object v4, v5

    .line 123
    .local v4, "value":Ljava/lang/Object;, "TT;"
    move-object v5, v4

    if-eqz v5, :cond_1

    move-object v5, v4

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 124
    move-object v5, v0

    move v6, v3

    invoke-virtual {v5, v6}, Ljavafx/scene/control/SingleSelectionModel;->select(I)V

    .line 125
    goto :goto_0

    .line 121
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 134
    .end local v4    # "value":Ljava/lang/Object;, "TT;"
    :cond_2
    move-object v5, v0

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljavafx/scene/control/SingleSelectionModel;->setSelectedItem(Ljava/lang/Object;)V

    .line 135
    goto :goto_0
.end method

.method public selectFirst()V
    .locals 3

    .prologue
    .line 177
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/SingleSelectionModel;, "Ljavafx/scene/control/SingleSelectionModel<TT;>;"
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/SingleSelectionModel;->getItemCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 178
    move-object v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljavafx/scene/control/SingleSelectionModel;->select(I)V

    .line 180
    :cond_0
    return-void
.end method

.method public selectLast()V
    .locals 5

    .prologue
    .line 188
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/SingleSelectionModel;, "Ljavafx/scene/control/SingleSelectionModel<TT;>;"
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/SingleSelectionModel;->getItemCount()I

    move-result v2

    move v1, v2

    .line 189
    .local v1, "numItems":I
    move v2, v1

    if-lez v2, :cond_0

    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/SingleSelectionModel;->getSelectedIndex()I

    move-result v2

    move v3, v1

    const/4 v4, 0x1

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_0

    .line 190
    move-object v2, v0

    move v3, v1

    const/4 v4, 0x1

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljavafx/scene/control/SingleSelectionModel;->select(I)V

    .line 192
    :cond_0
    return-void
.end method

.method public selectNext()V
    .locals 4

    .prologue
    .line 168
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/SingleSelectionModel;, "Ljavafx/scene/control/SingleSelectionModel<TT;>;"
    move-object v1, v0

    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/SingleSelectionModel;->getSelectedIndex()I

    move-result v2

    const/4 v3, 0x1

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljavafx/scene/control/SingleSelectionModel;->select(I)V

    .line 169
    return-void
.end method

.method public selectPrevious()V
    .locals 4

    .prologue
    .line 158
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/SingleSelectionModel;, "Ljavafx/scene/control/SingleSelectionModel<TT;>;"
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/SingleSelectionModel;->getSelectedIndex()I

    move-result v1

    if-nez v1, :cond_0

    .line 160
    :goto_0
    return-void

    .line 159
    :cond_0
    move-object v1, v0

    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/SingleSelectionModel;->getSelectedIndex()I

    move-result v2

    const/4 v3, 0x1

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljavafx/scene/control/SingleSelectionModel;->select(I)V

    .line 160
    goto :goto_0
.end method
