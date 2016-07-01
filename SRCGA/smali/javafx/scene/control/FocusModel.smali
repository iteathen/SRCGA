.class public abstract Ljavafx/scene/control/FocusModel;
.super Ljava/lang/Object;
.source "FocusModel.java"


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
.field private focusedIndex:Ljavafx/beans/property/ReadOnlyIntegerWrapper;

.field private focusedItem:Ljavafx/beans/property/ReadOnlyObjectWrapper;
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
    .line 48
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/FocusModel;, "Ljavafx/scene/control/FocusModel<TT;>;"
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 71
    move-object v1, v0

    new-instance v2, Ljavafx/beans/property/ReadOnlyIntegerWrapper;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v0

    const-string v5, "focusedIndex"

    const/4 v6, -0x1

    invoke-direct {v3, v4, v5, v6}, Ljavafx/beans/property/ReadOnlyIntegerWrapper;-><init>(Ljava/lang/Object;Ljava/lang/String;I)V

    iput-object v2, v1, Ljavafx/scene/control/FocusModel;->focusedIndex:Ljavafx/beans/property/ReadOnlyIntegerWrapper;

    .line 85
    move-object v1, v0

    new-instance v2, Ljavafx/beans/property/ReadOnlyObjectWrapper;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v0

    const-string v5, "focusedItem"

    invoke-direct {v3, v4, v5}, Ljavafx/beans/property/ReadOnlyObjectWrapper;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v1, Ljavafx/scene/control/FocusModel;->focusedItem:Ljavafx/beans/property/ReadOnlyObjectWrapper;

    .line 49
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/FocusModel;->focusedIndexProperty()Ljavafx/beans/property/ReadOnlyIntegerProperty;

    move-result-object v1

    move-object v2, v0

    invoke-static {v2}, Ljavafx/scene/control/FocusModel$$Lambda$1;->lambdaFactory$(Ljavafx/scene/control/FocusModel;)Ljavafx/beans/InvalidationListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljavafx/beans/property/ReadOnlyIntegerProperty;->addListener(Ljavafx/beans/InvalidationListener;)V

    .line 54
    return-void
.end method

.method static synthetic access$lambda$0(Ljavafx/scene/control/FocusModel;Ljavafx/beans/Observable;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljavafx/scene/control/FocusModel;->lambda$new$36(Ljavafx/beans/Observable;)V

    return-void
.end method

.method private synthetic lambda$new$36(Ljavafx/beans/Observable;)V
    .locals 5

    .prologue
    .line 52
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/FocusModel;, "Ljavafx/scene/control/FocusModel<TT;>;"
    move-object v1, p1

    .local v1, "valueModel":Ljavafx/beans/Observable;
    move-object v2, v0

    move-object v3, v0

    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/control/FocusModel;->getFocusedIndex()I

    move-result v4

    invoke-virtual {v3, v4}, Ljavafx/scene/control/FocusModel;->getModelItem(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljavafx/scene/control/FocusModel;->setFocusedItem(Ljava/lang/Object;)V

    .line 53
    return-void
.end method


# virtual methods
.method public focus(I)V
    .locals 6

    .prologue
    .line 142
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/FocusModel;, "Ljavafx/scene/control/FocusModel<TT;>;"
    move v1, p1

    .local v1, "index":I
    move v3, v1

    if-ltz v3, :cond_0

    move v3, v1

    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/control/FocusModel;->getItemCount()I

    move-result v4

    if-lt v3, v4, :cond_2

    .line 143
    :cond_0
    move-object v3, v0

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Ljavafx/scene/control/FocusModel;->setFocusedIndex(I)V

    .line 153
    :cond_1
    :goto_0
    return-void

    .line 145
    :cond_2
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/FocusModel;->getFocusedIndex()I

    move-result v3

    move v2, v3

    .line 146
    .local v2, "oldFocusIndex":I
    move-object v3, v0

    move v4, v1

    invoke-virtual {v3, v4}, Ljavafx/scene/control/FocusModel;->setFocusedIndex(I)V

    .line 148
    move v3, v2

    move v4, v1

    if-ne v3, v4, :cond_1

    .line 150
    move-object v3, v0

    move-object v4, v0

    move v5, v1

    invoke-virtual {v4, v5}, Ljavafx/scene/control/FocusModel;->getModelItem(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljavafx/scene/control/FocusModel;->setFocusedItem(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public focusNext()V
    .locals 4

    .prologue
    .line 174
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/FocusModel;, "Ljavafx/scene/control/FocusModel<TT;>;"
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/FocusModel;->getFocusedIndex()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 175
    move-object v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljavafx/scene/control/FocusModel;->focus(I)V

    .line 179
    :cond_0
    :goto_0
    return-void

    .line 176
    :cond_1
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/FocusModel;->getFocusedIndex()I

    move-result v1

    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/FocusModel;->getItemCount()I

    move-result v2

    const/4 v3, 0x1

    add-int/lit8 v2, v2, -0x1

    if-eq v1, v2, :cond_0

    .line 177
    move-object v1, v0

    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/FocusModel;->getFocusedIndex()I

    move-result v2

    const/4 v3, 0x1

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljavafx/scene/control/FocusModel;->focus(I)V

    goto :goto_0
.end method

.method public focusPrevious()V
    .locals 4

    .prologue
    .line 161
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/FocusModel;, "Ljavafx/scene/control/FocusModel<TT;>;"
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/FocusModel;->getFocusedIndex()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 162
    move-object v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljavafx/scene/control/FocusModel;->focus(I)V

    .line 166
    :cond_0
    :goto_0
    return-void

    .line 163
    :cond_1
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/FocusModel;->getFocusedIndex()I

    move-result v1

    if-lez v1, :cond_0

    .line 164
    move-object v1, v0

    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/FocusModel;->getFocusedIndex()I

    move-result v2

    const/4 v3, 0x1

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljavafx/scene/control/FocusModel;->focus(I)V

    goto :goto_0
.end method

.method public final focusedIndexProperty()Ljavafx/beans/property/ReadOnlyIntegerProperty;
    .locals 2

    .prologue
    .line 72
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/FocusModel;, "Ljavafx/scene/control/FocusModel<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/FocusModel;->focusedIndex:Ljavafx/beans/property/ReadOnlyIntegerWrapper;

    invoke-virtual {v1}, Ljavafx/beans/property/ReadOnlyIntegerWrapper;->getReadOnlyProperty()Ljavafx/beans/property/ReadOnlyIntegerProperty;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/FocusModel;, "Ljavafx/scene/control/FocusModel<TT;>;"
    return-object v0
.end method

.method public final focusedItemProperty()Ljavafx/beans/property/ReadOnlyObjectProperty;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ReadOnlyObjectProperty",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 86
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/FocusModel;, "Ljavafx/scene/control/FocusModel<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/FocusModel;->focusedItem:Ljavafx/beans/property/ReadOnlyObjectWrapper;

    invoke-virtual {v1}, Ljavafx/beans/property/ReadOnlyObjectWrapper;->getReadOnlyProperty()Ljavafx/beans/property/ReadOnlyObjectProperty;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/FocusModel;, "Ljavafx/scene/control/FocusModel<TT;>;"
    return-object v0
.end method

.method public final getFocusedIndex()I
    .locals 2

    .prologue
    .line 73
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/FocusModel;, "Ljavafx/scene/control/FocusModel<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/FocusModel;->focusedIndex:Ljavafx/beans/property/ReadOnlyIntegerWrapper;

    invoke-virtual {v1}, Ljavafx/beans/property/ReadOnlyIntegerWrapper;->get()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Ljavafx/scene/control/FocusModel;, "Ljavafx/scene/control/FocusModel<TT;>;"
    return v0
.end method

.method public final getFocusedItem()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 87
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/FocusModel;, "Ljavafx/scene/control/FocusModel<TT;>;"
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/FocusModel;->focusedItemProperty()Ljavafx/beans/property/ReadOnlyObjectProperty;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/beans/property/ReadOnlyObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/FocusModel;, "Ljavafx/scene/control/FocusModel<TT;>;"
    return-object v0
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

.method public isFocused(I)Z
    .locals 4

    .prologue
    .line 128
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/FocusModel;, "Ljavafx/scene/control/FocusModel<TT;>;"
    move v1, p1

    .local v1, "index":I
    move v2, v1

    if-ltz v2, :cond_0

    move v2, v1

    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/FocusModel;->getItemCount()I

    move-result v3

    if-lt v2, v3, :cond_1

    :cond_0
    const/4 v2, 0x0

    move v0, v2

    .line 130
    .end local v0    # "this":Ljavafx/scene/control/FocusModel;, "Ljavafx/scene/control/FocusModel<TT;>;"
    :goto_0
    return v0

    .restart local v0    # "this":Ljavafx/scene/control/FocusModel;, "Ljavafx/scene/control/FocusModel<TT;>;"
    :cond_1
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/FocusModel;->getFocusedIndex()I

    move-result v2

    move v3, v1

    if-ne v2, v3, :cond_2

    const/4 v2, 0x1

    :goto_1
    move v0, v2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method final setFocusedIndex(I)V
    .locals 4

    .prologue
    .line 74
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/FocusModel;, "Ljavafx/scene/control/FocusModel<TT;>;"
    move v1, p1

    .local v1, "value":I
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/FocusModel;->focusedIndex:Ljavafx/beans/property/ReadOnlyIntegerWrapper;

    move v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ReadOnlyIntegerWrapper;->set(I)V

    return-void
.end method

.method final setFocusedItem(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 88
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/FocusModel;, "Ljavafx/scene/control/FocusModel<TT;>;"
    move-object v1, p1

    .local v1, "value":Ljava/lang/Object;, "TT;"
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/FocusModel;->focusedItem:Ljavafx/beans/property/ReadOnlyObjectWrapper;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ReadOnlyObjectWrapper;->set(Ljava/lang/Object;)V

    return-void
.end method
