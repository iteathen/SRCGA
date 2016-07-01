.class public abstract Ljavafx/scene/control/MultipleSelectionModel;
.super Ljavafx/scene/control/SelectionModel;
.source "MultipleSelectionModel.java"


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


# instance fields
.field private selectionMode:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/scene/control/SelectionMode;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 106
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/MultipleSelectionModel;, "Ljavafx/scene/control/MultipleSelectionModel<TT;>;"
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/control/SelectionModel;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getSelectedIndices()Ljavafx/collections/ObservableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/collections/ObservableList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSelectedItems()Ljavafx/collections/ObservableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/collections/ObservableList",
            "<TT;>;"
        }
    .end annotation
.end method

.method public final getSelectionMode()Ljavafx/scene/control/SelectionMode;
    .locals 2

    .prologue
    .line 63
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/MultipleSelectionModel;, "Ljavafx/scene/control/MultipleSelectionModel<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/MultipleSelectionModel;->selectionMode:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    sget-object v1, Ljavafx/scene/control/SelectionMode;->SINGLE:Ljavafx/scene/control/SelectionMode;

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/MultipleSelectionModel;, "Ljavafx/scene/control/MultipleSelectionModel<TT;>;"
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/control/MultipleSelectionModel;, "Ljavafx/scene/control/MultipleSelectionModel<TT;>;"
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/MultipleSelectionModel;->selectionMode:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/scene/control/SelectionMode;

    goto :goto_0
.end method

.method public abstract selectAll()V
.end method

.method public abstract selectFirst()V
.end method

.method public varargs abstract selectIndices(I[I)V
.end method

.method public abstract selectLast()V
.end method

.method public selectRange(II)V
    .locals 14

    .prologue
    .line 162
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/MultipleSelectionModel;, "Ljavafx/scene/control/MultipleSelectionModel<TT;>;"
    move v1, p1

    .local v1, "start":I
    move/from16 v2, p2

    .local v2, "end":I
    move v11, v1

    move v12, v2

    if-ne v11, v12, :cond_0

    .line 177
    :goto_0
    return-void

    .line 164
    :cond_0
    move v11, v1

    move v12, v2

    if-ge v11, v12, :cond_1

    const/4 v11, 0x1

    :goto_1
    move v3, v11

    .line 165
    .local v3, "asc":Z
    move v11, v3

    if-eqz v11, :cond_2

    move v11, v1

    :goto_2
    move v4, v11

    .line 166
    .local v4, "low":I
    move v11, v3

    if-eqz v11, :cond_3

    move v11, v2

    :goto_3
    move v5, v11

    .line 167
    .local v5, "high":I
    move v11, v5

    move v12, v4

    sub-int/2addr v11, v12

    const/4 v12, 0x1

    add-int/lit8 v11, v11, -0x1

    move v6, v11

    .line 169
    .local v6, "arrayLength":I
    move v11, v6

    new-array v11, v11, [I

    move-object v7, v11

    .line 171
    .local v7, "indices":[I
    move v11, v3

    if-eqz v11, :cond_4

    move v11, v4

    :goto_4
    move v8, v11

    .line 172
    .local v8, "startValue":I
    move v11, v3

    if-eqz v11, :cond_5

    move v11, v8

    add-int/lit8 v8, v8, 0x1

    :goto_5
    move v9, v11

    .line 173
    .local v9, "firstVal":I
    const/4 v11, 0x0

    move v10, v11

    .local v10, "i":I
    :goto_6
    move v11, v10

    move v12, v6

    if-ge v11, v12, :cond_7

    .line 174
    move-object v11, v7

    move v12, v10

    move v13, v3

    if-eqz v13, :cond_6

    move v13, v8

    add-int/lit8 v8, v8, 0x1

    :goto_7
    aput v13, v11, v12

    .line 173
    add-int/lit8 v10, v10, 0x1

    goto :goto_6

    .line 164
    .end local v3    # "asc":Z
    .end local v4    # "low":I
    .end local v5    # "high":I
    .end local v6    # "arrayLength":I
    .end local v7    # "indices":[I
    .end local v8    # "startValue":I
    .end local v9    # "firstVal":I
    .end local v10    # "i":I
    :cond_1
    const/4 v11, 0x0

    goto :goto_1

    .line 165
    .restart local v3    # "asc":Z
    :cond_2
    move v11, v2

    goto :goto_2

    .line 166
    .restart local v4    # "low":I
    :cond_3
    move v11, v1

    goto :goto_3

    .line 171
    .restart local v5    # "high":I
    .restart local v6    # "arrayLength":I
    .restart local v7    # "indices":[I
    :cond_4
    move v11, v5

    goto :goto_4

    .line 172
    .restart local v8    # "startValue":I
    :cond_5
    move v11, v8

    add-int/lit8 v8, v8, -0x1

    goto :goto_5

    .line 174
    .restart local v9    # "firstVal":I
    .restart local v10    # "i":I
    :cond_6
    move v13, v8

    add-int/lit8 v8, v8, -0x1

    goto :goto_7

    .line 176
    :cond_7
    move-object v11, v0

    move v12, v9

    move-object v13, v7

    invoke-virtual {v11, v12, v13}, Ljavafx/scene/control/MultipleSelectionModel;->selectIndices(I[I)V

    .line 177
    goto :goto_0
.end method

.method public final selectionModeProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/scene/control/SelectionMode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 67
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/MultipleSelectionModel;, "Ljavafx/scene/control/MultipleSelectionModel<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/MultipleSelectionModel;->selectionMode:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    .line 68
    move-object v1, v0

    new-instance v2, Ljavafx/scene/control/MultipleSelectionModel$1;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    sget-object v5, Ljavafx/scene/control/SelectionMode;->SINGLE:Ljavafx/scene/control/SelectionMode;

    invoke-direct {v3, v4, v5}, Ljavafx/scene/control/MultipleSelectionModel$1;-><init>(Ljavafx/scene/control/MultipleSelectionModel;Ljavafx/scene/control/SelectionMode;)V

    iput-object v2, v1, Ljavafx/scene/control/MultipleSelectionModel;->selectionMode:Ljavafx/beans/property/ObjectProperty;

    .line 92
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/MultipleSelectionModel;->selectionMode:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/MultipleSelectionModel;, "Ljavafx/scene/control/MultipleSelectionModel<TT;>;"
    return-object v0
.end method

.method public final setSelectionMode(Ljavafx/scene/control/SelectionMode;)V
    .locals 4

    .prologue
    .line 59
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/MultipleSelectionModel;, "Ljavafx/scene/control/MultipleSelectionModel<TT;>;"
    move-object v1, p1

    .local v1, "value":Ljavafx/scene/control/SelectionMode;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/MultipleSelectionModel;->selectionModeProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 60
    return-void
.end method
