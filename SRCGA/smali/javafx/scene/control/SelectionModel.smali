.class public abstract Ljavafx/scene/control/SelectionModel;
.super Ljava/lang/Object;
.source "SelectionModel.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private selectedIndex:Ljavafx/beans/property/ReadOnlyIntegerWrapper;

.field private selectedItem:Ljavafx/beans/property/ReadOnlyObjectWrapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ReadOnlyObjectWrapper",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 8

    .prologue
    .line 132
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/SelectionModel;, "Ljavafx/scene/control/SelectionModel<TT;>;"
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 67
    move-object v1, v0

    new-instance v2, Ljavafx/beans/property/ReadOnlyIntegerWrapper;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v0

    const-string v5, "selectedIndex"

    const/4 v6, -0x1

    invoke-direct {v3, v4, v5, v6}, Ljavafx/beans/property/ReadOnlyIntegerWrapper;-><init>(Ljava/lang/Object;Ljava/lang/String;I)V

    iput-object v2, v1, Ljavafx/scene/control/SelectionModel;->selectedIndex:Ljavafx/beans/property/ReadOnlyIntegerWrapper;

    .line 101
    move-object v1, v0

    new-instance v2, Ljavafx/beans/property/ReadOnlyObjectWrapper;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v0

    const-string v5, "selectedItem"

    invoke-direct {v3, v4, v5}, Ljavafx/beans/property/ReadOnlyObjectWrapper;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v1, Ljavafx/scene/control/SelectionModel;->selectedItem:Ljavafx/beans/property/ReadOnlyObjectWrapper;

    .line 132
    return-void
.end method


# virtual methods
.method public abstract clearAndSelect(I)V
.end method

.method public abstract clearSelection()V
.end method

.method public abstract clearSelection(I)V
.end method

.method public final getSelectedIndex()I
    .locals 2

    .prologue
    .line 85
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/SelectionModel;, "Ljavafx/scene/control/SelectionModel<TT;>;"
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/SelectionModel;->selectedIndexProperty()Ljavafx/beans/property/ReadOnlyIntegerProperty;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/beans/property/ReadOnlyIntegerProperty;->get()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Ljavafx/scene/control/SelectionModel;, "Ljavafx/scene/control/SelectionModel<TT;>;"
    return v0
.end method

.method public final getSelectedItem()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 120
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/SelectionModel;, "Ljavafx/scene/control/SelectionModel<TT;>;"
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/SelectionModel;->selectedItemProperty()Ljavafx/beans/property/ReadOnlyObjectProperty;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/beans/property/ReadOnlyObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/SelectionModel;, "Ljavafx/scene/control/SelectionModel<TT;>;"
    return-object v0
.end method

.method public abstract isEmpty()Z
.end method

.method public abstract isSelected(I)Z
.end method

.method public abstract select(I)V
.end method

.method public abstract select(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public abstract selectFirst()V
.end method

.method public abstract selectLast()V
.end method

.method public abstract selectNext()V
.end method

.method public abstract selectPrevious()V
.end method

.method public final selectedIndexProperty()Ljavafx/beans/property/ReadOnlyIntegerProperty;
    .locals 2

    .prologue
    .line 66
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/SelectionModel;, "Ljavafx/scene/control/SelectionModel<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/SelectionModel;->selectedIndex:Ljavafx/beans/property/ReadOnlyIntegerWrapper;

    invoke-virtual {v1}, Ljavafx/beans/property/ReadOnlyIntegerWrapper;->getReadOnlyProperty()Ljavafx/beans/property/ReadOnlyIntegerProperty;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/SelectionModel;, "Ljavafx/scene/control/SelectionModel<TT;>;"
    return-object v0
.end method

.method public final selectedItemProperty()Ljavafx/beans/property/ReadOnlyObjectProperty;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ReadOnlyObjectProperty",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 100
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/SelectionModel;, "Ljavafx/scene/control/SelectionModel<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/SelectionModel;->selectedItem:Ljavafx/beans/property/ReadOnlyObjectWrapper;

    invoke-virtual {v1}, Ljavafx/beans/property/ReadOnlyObjectWrapper;->getReadOnlyProperty()Ljavafx/beans/property/ReadOnlyObjectProperty;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/SelectionModel;, "Ljavafx/scene/control/SelectionModel<TT;>;"
    return-object v0
.end method

.method protected final setSelectedIndex(I)V
    .locals 4

    .prologue
    .line 68
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/SelectionModel;, "Ljavafx/scene/control/SelectionModel<TT;>;"
    move v1, p1

    .local v1, "value":I
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/SelectionModel;->selectedIndex:Ljavafx/beans/property/ReadOnlyIntegerWrapper;

    move v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ReadOnlyIntegerWrapper;->set(I)V

    return-void
.end method

.method protected final setSelectedItem(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 102
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/SelectionModel;, "Ljavafx/scene/control/SelectionModel<TT;>;"
    move-object v1, p1

    .local v1, "value":Ljava/lang/Object;, "TT;"
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/SelectionModel;->selectedItem:Ljavafx/beans/property/ReadOnlyObjectWrapper;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ReadOnlyObjectWrapper;->set(Ljava/lang/Object;)V

    return-void
.end method
