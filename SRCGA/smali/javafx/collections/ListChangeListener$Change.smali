.class public abstract Ljavafx/collections/ListChangeListener$Change;
.super Ljava/lang/Object;
.source "ListChangeListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/collections/ListChangeListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Change"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final list:Ljavafx/collections/ObservableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/collections/ObservableList",
            "<TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavafx/collections/ObservableList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/ObservableList",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 136
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/ListChangeListener$Change;, "Ljavafx/collections/ListChangeListener$Change<TE;>;"
    move-object v1, p1

    .local v1, "list":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<TE;>;"
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 137
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/collections/ListChangeListener$Change;->list:Ljavafx/collections/ObservableList;

    .line 138
    return-void
.end method


# virtual methods
.method public getAddedSize()I
    .locals 3

    .prologue
    .line 260
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/ListChangeListener$Change;, "Ljavafx/collections/ListChangeListener$Change<TE;>;"
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/collections/ListChangeListener$Change;->wasAdded()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/collections/ListChangeListener$Change;->getTo()I

    move-result v1

    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/collections/ListChangeListener$Change;->getFrom()I

    move-result v2

    sub-int/2addr v1, v2

    :goto_0
    move v0, v1

    .end local v0    # "this":Ljavafx/collections/ListChangeListener$Change;, "Ljavafx/collections/ListChangeListener$Change<TE;>;"
    return v0

    .restart local v0    # "this":Ljavafx/collections/ListChangeListener$Change;, "Ljavafx/collections/ListChangeListener$Change<TE;>;"
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getAddedSubList()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 242
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/ListChangeListener$Change;, "Ljavafx/collections/ListChangeListener$Change<TE;>;"
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/collections/ListChangeListener$Change;->wasAdded()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/collections/ListChangeListener$Change;->getList()Ljavafx/collections/ObservableList;

    move-result-object v1

    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/collections/ListChangeListener$Change;->getFrom()I

    move-result v2

    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/collections/ListChangeListener$Change;->getTo()I

    move-result v3

    invoke-interface {v1, v2, v3}, Ljavafx/collections/ObservableList;->subList(II)Ljava/util/List;

    move-result-object v1

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/collections/ListChangeListener$Change;, "Ljavafx/collections/ListChangeListener$Change<TE;>;"
    return-object v0

    .restart local v0    # "this":Ljavafx/collections/ListChangeListener$Change;, "Ljavafx/collections/ListChangeListener$Change<TE;>;"
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    goto :goto_0
.end method

.method public abstract getFrom()I
.end method

.method public getList()Ljavafx/collections/ObservableList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/collections/ObservableList",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 145
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/ListChangeListener$Change;, "Ljavafx/collections/ListChangeListener$Change<TE;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/collections/ListChangeListener$Change;->list:Ljavafx/collections/ObservableList;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/collections/ListChangeListener$Change;, "Ljavafx/collections/ListChangeListener$Change<TE;>;"
    return-object v0
.end method

.method public getPermutation(I)I
    .locals 6

    .prologue
    .line 291
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/ListChangeListener$Change;, "Ljavafx/collections/ListChangeListener$Change<TE;>;"
    move v1, p1

    .local v1, "i":I
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/collections/ListChangeListener$Change;->wasPermutated()Z

    move-result v2

    if-nez v2, :cond_0

    .line 292
    new-instance v2, Ljava/lang/IllegalStateException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "Not a permutation change"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 294
    :cond_0
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/collections/ListChangeListener$Change;->getPermutation()[I

    move-result-object v2

    move v3, v1

    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/collections/ListChangeListener$Change;->getFrom()I

    move-result v4

    sub-int/2addr v3, v4

    aget v2, v2, v3

    move v0, v2

    .end local v0    # "this":Ljavafx/collections/ListChangeListener$Change;, "Ljavafx/collections/ListChangeListener$Change<TE;>;"
    return v0
.end method

.method protected abstract getPermutation()[I
.end method

.method public abstract getRemoved()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TE;>;"
        }
    .end annotation
.end method

.method public getRemovedSize()I
    .locals 2

    .prologue
    .line 251
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/ListChangeListener$Change;, "Ljavafx/collections/ListChangeListener$Change<TE;>;"
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/collections/ListChangeListener$Change;->getRemoved()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Ljavafx/collections/ListChangeListener$Change;, "Ljavafx/collections/ListChangeListener$Change<TE;>;"
    return v0
.end method

.method public abstract getTo()I
.end method

.method public abstract next()Z
.end method

.method public abstract reset()V
.end method

.method public wasAdded()Z
    .locals 3

    .prologue
    .line 186
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/ListChangeListener$Change;, "Ljavafx/collections/ListChangeListener$Change<TE;>;"
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/collections/ListChangeListener$Change;->wasPermutated()Z

    move-result v1

    if-nez v1, :cond_0

    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/collections/ListChangeListener$Change;->wasUpdated()Z

    move-result v1

    if-nez v1, :cond_0

    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/collections/ListChangeListener$Change;->getFrom()I

    move-result v1

    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/collections/ListChangeListener$Change;->getTo()I

    move-result v2

    if-ge v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Ljavafx/collections/ListChangeListener$Change;, "Ljavafx/collections/ListChangeListener$Change<TE;>;"
    return v0

    .restart local v0    # "this":Ljavafx/collections/ListChangeListener$Change;, "Ljavafx/collections/ListChangeListener$Change<TE;>;"
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public wasPermutated()Z
    .locals 2

    .prologue
    .line 177
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/ListChangeListener$Change;, "Ljavafx/collections/ListChangeListener$Change<TE;>;"
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/collections/ListChangeListener$Change;->getPermutation()[I

    move-result-object v1

    array-length v1, v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Ljavafx/collections/ListChangeListener$Change;, "Ljavafx/collections/ListChangeListener$Change<TE;>;"
    return v0

    .restart local v0    # "this":Ljavafx/collections/ListChangeListener$Change;, "Ljavafx/collections/ListChangeListener$Change<TE;>;"
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public wasRemoved()Z
    .locals 2

    .prologue
    .line 197
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/ListChangeListener$Change;, "Ljavafx/collections/ListChangeListener$Change<TE;>;"
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/collections/ListChangeListener$Change;->getRemoved()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Ljavafx/collections/ListChangeListener$Change;, "Ljavafx/collections/ListChangeListener$Change<TE;>;"
    return v0

    .restart local v0    # "this":Ljavafx/collections/ListChangeListener$Change;, "Ljavafx/collections/ListChangeListener$Change<TE;>;"
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public wasReplaced()Z
    .locals 2

    .prologue
    .line 213
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/ListChangeListener$Change;, "Ljavafx/collections/ListChangeListener$Change<TE;>;"
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/collections/ListChangeListener$Change;->wasAdded()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/collections/ListChangeListener$Change;->wasRemoved()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Ljavafx/collections/ListChangeListener$Change;, "Ljavafx/collections/ListChangeListener$Change<TE;>;"
    return v0

    .restart local v0    # "this":Ljavafx/collections/ListChangeListener$Change;, "Ljavafx/collections/ListChangeListener$Change<TE;>;"
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public wasUpdated()Z
    .locals 2

    .prologue
    .line 225
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/ListChangeListener$Change;, "Ljavafx/collections/ListChangeListener$Change<TE;>;"
    const/4 v1, 0x0

    move v0, v1

    .end local v0    # "this":Ljavafx/collections/ListChangeListener$Change;, "Ljavafx/collections/ListChangeListener$Change<TE;>;"
    return v0
.end method
