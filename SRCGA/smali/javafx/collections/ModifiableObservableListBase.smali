.class public abstract Ljavafx/collections/ModifiableObservableListBase;
.super Ljavafx/collections/ObservableListBase;
.source "ModifiableObservableListBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavafx/collections/ModifiableObservableListBase$SubObservableList;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljavafx/collections/ObservableListBase",
        "<TE;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 81
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/ModifiableObservableListBase;, "Ljavafx/collections/ModifiableObservableListBase<TE;>;"
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/collections/ObservableListBase;-><init>()V

    return-void
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .prologue
    .line 151
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/ModifiableObservableListBase;, "Ljavafx/collections/ModifiableObservableListBase<TE;>;"
    move v1, p1

    .local v1, "index":I
    move-object v2, p2

    .local v2, "element":Ljava/lang/Object;, "TE;"
    move-object v3, v0

    move v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Ljavafx/collections/ModifiableObservableListBase;->doAdd(ILjava/lang/Object;)V

    .line 152
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/collections/ModifiableObservableListBase;->beginChange()V

    .line 153
    move-object v3, v0

    move v4, v1

    move v5, v1

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v3, v4, v5}, Ljavafx/collections/ModifiableObservableListBase;->nextAdd(II)V

    .line 154
    move-object v3, v0

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    iget v4, v4, Ljavafx/collections/ModifiableObservableListBase;->modCount:I

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Ljavafx/collections/ModifiableObservableListBase;->modCount:I

    .line 155
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/collections/ModifiableObservableListBase;->endChange()V

    .line 156
    return-void
.end method

.method public addAll(ILjava/util/Collection;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection",
            "<+TE;>;)Z"
        }
    .end annotation

    .prologue
    .line 108
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/ModifiableObservableListBase;, "Ljavafx/collections/ModifiableObservableListBase<TE;>;"
    move v1, p1

    .local v1, "index":I
    move-object v2, p2

    .local v2, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/collections/ModifiableObservableListBase;->beginChange()V

    .line 110
    move-object v6, v0

    move v7, v1

    move-object v8, v2

    :try_start_0
    invoke-super {v6, v7, v8}, Ljavafx/collections/ObservableListBase;->addAll(ILjava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    move v3, v6

    .line 111
    .local v3, "res":Z
    move v6, v3

    move v4, v6

    .line 113
    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/collections/ModifiableObservableListBase;->endChange()V

    move v6, v4

    move v0, v6

    .end local v0    # "this":Ljavafx/collections/ModifiableObservableListBase;, "Ljavafx/collections/ModifiableObservableListBase<TE;>;"
    return v0

    .end local v3    # "res":Z
    .restart local v0    # "this":Ljavafx/collections/ModifiableObservableListBase;, "Ljavafx/collections/ModifiableObservableListBase<TE;>;"
    :catchall_0
    move-exception v6

    move-object v5, v6

    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/collections/ModifiableObservableListBase;->endChange()V

    move-object v6, v5

    throw v6
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TE;>;)Z"
        }
    .end annotation

    .prologue
    .line 97
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/ModifiableObservableListBase;, "Ljavafx/collections/ModifiableObservableListBase<TE;>;"
    move-object v1, p1

    .local v1, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/collections/ModifiableObservableListBase;->beginChange()V

    .line 99
    move-object v5, v0

    move-object v6, v1

    :try_start_0
    invoke-super {v5, v6}, Ljavafx/collections/ObservableListBase;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    move v2, v5

    .line 100
    .local v2, "res":Z
    move v5, v2

    move v3, v5

    .line 102
    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/collections/ModifiableObservableListBase;->endChange()V

    move v5, v3

    move v0, v5

    .end local v0    # "this":Ljavafx/collections/ModifiableObservableListBase;, "Ljavafx/collections/ModifiableObservableListBase<TE;>;"
    return v0

    .end local v2    # "res":Z
    .restart local v0    # "this":Ljavafx/collections/ModifiableObservableListBase;, "Ljavafx/collections/ModifiableObservableListBase<TE;>;"
    :catchall_0
    move-exception v5

    move-object v4, v5

    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/collections/ModifiableObservableListBase;->endChange()V

    move-object v5, v4

    throw v5
.end method

.method protected abstract doAdd(ILjava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation
.end method

.method protected abstract doRemove(I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation
.end method

.method protected abstract doSet(ILjava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation
.end method

.method public abstract get(I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation
.end method

.method public remove(I)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 179
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/ModifiableObservableListBase;, "Ljavafx/collections/ModifiableObservableListBase<TE;>;"
    move v1, p1

    .local v1, "index":I
    move-object v3, v0

    move v4, v1

    invoke-virtual {v3, v4}, Ljavafx/collections/ModifiableObservableListBase;->doRemove(I)Ljava/lang/Object;

    move-result-object v3

    move-object v2, v3

    .line 180
    .local v2, "old":Ljava/lang/Object;, "TE;"
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/collections/ModifiableObservableListBase;->beginChange()V

    .line 181
    move-object v3, v0

    move v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Ljavafx/collections/ModifiableObservableListBase;->nextRemove(ILjava/lang/Object;)V

    .line 182
    move-object v3, v0

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    iget v4, v4, Ljavafx/collections/ModifiableObservableListBase;->modCount:I

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Ljavafx/collections/ModifiableObservableListBase;->modCount:I

    .line 183
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/collections/ModifiableObservableListBase;->endChange()V

    .line 184
    move-object v3, v2

    move-object v0, v3

    .end local v0    # "this":Ljavafx/collections/ModifiableObservableListBase;, "Ljavafx/collections/ModifiableObservableListBase<TE;>;"
    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    .line 169
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/ModifiableObservableListBase;, "Ljavafx/collections/ModifiableObservableListBase<TE;>;"
    move-object v1, p1

    .local v1, "o":Ljava/lang/Object;
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljavafx/collections/ModifiableObservableListBase;->indexOf(Ljava/lang/Object;)I

    move-result v3

    move v2, v3

    .line 170
    .local v2, "i":I
    move v3, v2

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 171
    move-object v3, v0

    move v4, v2

    invoke-virtual {v3, v4}, Ljavafx/collections/ModifiableObservableListBase;->remove(I)Ljava/lang/Object;

    move-result-object v3

    .line 172
    const/4 v3, 0x1

    move v0, v3

    .line 174
    .end local v0    # "this":Ljavafx/collections/ModifiableObservableListBase;, "Ljavafx/collections/ModifiableObservableListBase<TE;>;"
    :goto_0
    return v0

    .restart local v0    # "this":Ljavafx/collections/ModifiableObservableListBase;, "Ljavafx/collections/ModifiableObservableListBase<TE;>;"
    :cond_0
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 129
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/ModifiableObservableListBase;, "Ljavafx/collections/ModifiableObservableListBase<TE;>;"
    move-object v1, p1

    .local v1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/collections/ModifiableObservableListBase;->beginChange()V

    .line 131
    move-object v5, v0

    move-object v6, v1

    :try_start_0
    invoke-super {v5, v6}, Ljavafx/collections/ObservableListBase;->removeAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    move v2, v5

    .line 132
    .local v2, "res":Z
    move v5, v2

    move v3, v5

    .line 134
    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/collections/ModifiableObservableListBase;->endChange()V

    move v5, v3

    move v0, v5

    .end local v0    # "this":Ljavafx/collections/ModifiableObservableListBase;, "Ljavafx/collections/ModifiableObservableListBase<TE;>;"
    return v0

    .end local v2    # "res":Z
    .restart local v0    # "this":Ljavafx/collections/ModifiableObservableListBase;, "Ljavafx/collections/ModifiableObservableListBase<TE;>;"
    :catchall_0
    move-exception v5

    move-object v4, v5

    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/collections/ModifiableObservableListBase;->endChange()V

    move-object v5, v4

    throw v5
.end method

.method protected removeRange(II)V
    .locals 7

    .prologue
    .line 119
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/ModifiableObservableListBase;, "Ljavafx/collections/ModifiableObservableListBase<TE;>;"
    move v1, p1

    .local v1, "fromIndex":I
    move v2, p2

    .local v2, "toIndex":I
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/collections/ModifiableObservableListBase;->beginChange()V

    .line 121
    move-object v4, v0

    move v5, v1

    move v6, v2

    :try_start_0
    invoke-super {v4, v5, v6}, Ljavafx/collections/ObservableListBase;->removeRange(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/collections/ModifiableObservableListBase;->endChange()V

    .line 124
    .line 125
    return-void

    .line 123
    :catchall_0
    move-exception v4

    move-object v3, v4

    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/collections/ModifiableObservableListBase;->endChange()V

    move-object v4, v3

    throw v4
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 140
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/ModifiableObservableListBase;, "Ljavafx/collections/ModifiableObservableListBase<TE;>;"
    move-object v1, p1

    .local v1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/collections/ModifiableObservableListBase;->beginChange()V

    .line 142
    move-object v5, v0

    move-object v6, v1

    :try_start_0
    invoke-super {v5, v6}, Ljavafx/collections/ObservableListBase;->retainAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    move v2, v5

    .line 143
    .local v2, "res":Z
    move v5, v2

    move v3, v5

    .line 145
    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/collections/ModifiableObservableListBase;->endChange()V

    move v5, v3

    move v0, v5

    .end local v0    # "this":Ljavafx/collections/ModifiableObservableListBase;, "Ljavafx/collections/ModifiableObservableListBase<TE;>;"
    return v0

    .end local v2    # "res":Z
    .restart local v0    # "this":Ljavafx/collections/ModifiableObservableListBase;, "Ljavafx/collections/ModifiableObservableListBase<TE;>;"
    :catchall_0
    move-exception v5

    move-object v4, v5

    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/collections/ModifiableObservableListBase;->endChange()V

    move-object v5, v4

    throw v5
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    .prologue
    .line 160
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/ModifiableObservableListBase;, "Ljavafx/collections/ModifiableObservableListBase<TE;>;"
    move v1, p1

    .local v1, "index":I
    move-object v2, p2

    .local v2, "element":Ljava/lang/Object;, "TE;"
    move-object v4, v0

    move v5, v1

    move-object v6, v2

    invoke-virtual {v4, v5, v6}, Ljavafx/collections/ModifiableObservableListBase;->doSet(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v3, v4

    .line 161
    .local v3, "old":Ljava/lang/Object;, "TE;"
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/collections/ModifiableObservableListBase;->beginChange()V

    .line 162
    move-object v4, v0

    move v5, v1

    move-object v6, v3

    invoke-virtual {v4, v5, v6}, Ljavafx/collections/ModifiableObservableListBase;->nextSet(ILjava/lang/Object;)V

    .line 163
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/collections/ModifiableObservableListBase;->endChange()V

    .line 164
    move-object v4, v3

    move-object v0, v4

    .end local v0    # "this":Ljavafx/collections/ModifiableObservableListBase;, "Ljavafx/collections/ModifiableObservableListBase<TE;>;"
    return-object v0
.end method

.method public setAll(Ljava/util/Collection;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TE;>;)Z"
        }
    .end annotation

    .prologue
    .line 85
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/ModifiableObservableListBase;, "Ljavafx/collections/ModifiableObservableListBase<TE;>;"
    move-object v1, p1

    .local v1, "col":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/collections/ModifiableObservableListBase;->beginChange()V

    .line 87
    move-object v3, v0

    :try_start_0
    invoke-virtual {v3}, Ljavafx/collections/ModifiableObservableListBase;->clear()V

    .line 88
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljavafx/collections/ModifiableObservableListBase;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    .line 90
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/collections/ModifiableObservableListBase;->endChange()V

    .line 91
    .line 92
    const/4 v3, 0x1

    move v0, v3

    .end local v0    # "this":Ljavafx/collections/ModifiableObservableListBase;, "Ljavafx/collections/ModifiableObservableListBase<TE;>;"
    return v0

    .line 90
    .restart local v0    # "this":Ljavafx/collections/ModifiableObservableListBase;, "Ljavafx/collections/ModifiableObservableListBase<TE;>;"
    :catchall_0
    move-exception v3

    move-object v2, v3

    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/collections/ModifiableObservableListBase;->endChange()V

    move-object v3, v2

    throw v3
.end method

.method public abstract size()I
.end method

.method public subList(II)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 189
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/ModifiableObservableListBase;, "Ljavafx/collections/ModifiableObservableListBase<TE;>;"
    move v1, p1

    .local v1, "fromIndex":I
    move v2, p2

    .local v2, "toIndex":I
    new-instance v3, Ljavafx/collections/ModifiableObservableListBase$SubObservableList;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    move-object v5, v0

    move-object v6, v0

    move v7, v1

    move v8, v2

    invoke-super {v6, v7, v8}, Ljavafx/collections/ObservableListBase;->subList(II)Ljava/util/List;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Ljavafx/collections/ModifiableObservableListBase$SubObservableList;-><init>(Ljavafx/collections/ModifiableObservableListBase;Ljava/util/List;)V

    move-object v0, v3

    .end local v0    # "this":Ljavafx/collections/ModifiableObservableListBase;, "Ljavafx/collections/ModifiableObservableListBase<TE;>;"
    return-object v0
.end method
