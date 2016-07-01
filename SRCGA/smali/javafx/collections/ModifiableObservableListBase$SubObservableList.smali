.class Ljavafx/collections/ModifiableObservableListBase$SubObservableList;
.super Ljava/lang/Object;
.source "ModifiableObservableListBase.java"

# interfaces
.implements Ljava/util/List;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/collections/ModifiableObservableListBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SubObservableList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/List",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private sublist:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TE;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Ljavafx/collections/ModifiableObservableListBase;


# direct methods
.method public constructor <init>(Ljavafx/collections/ModifiableObservableListBase;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 246
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/ModifiableObservableListBase$SubObservableList;, "Ljavafx/collections/ModifiableObservableListBase<TE;>.SubObservableList;"
    move-object v1, p1

    move-object v2, p2

    .local v2, "sublist":Ljava/util/List;, "Ljava/util/List<TE;>;"
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Ljavafx/collections/ModifiableObservableListBase$SubObservableList;->this$0:Ljavafx/collections/ModifiableObservableListBase;

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 247
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Ljavafx/collections/ModifiableObservableListBase$SubObservableList;->sublist:Ljava/util/List;

    .line 248
    return-void
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .prologue
    .line 362
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/ModifiableObservableListBase$SubObservableList;, "Ljavafx/collections/ModifiableObservableListBase<TE;>.SubObservableList;"
    move v1, p1

    .local v1, "index":I
    move-object v2, p2

    .local v2, "element":Ljava/lang/Object;, "TE;"
    move-object v3, v0

    iget-object v3, v3, Ljavafx/collections/ModifiableObservableListBase$SubObservableList;->sublist:Ljava/util/List;

    move v4, v1

    move-object v5, v2

    invoke-interface {v3, v4, v5}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 363
    return-void
.end method

.method public add(Ljava/lang/Object;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 283
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/ModifiableObservableListBase$SubObservableList;, "Ljavafx/collections/ModifiableObservableListBase<TE;>.SubObservableList;"
    move-object v1, p1

    .local v1, "e":Ljava/lang/Object;, "TE;"
    move-object v2, v0

    iget-object v2, v2, Ljavafx/collections/ModifiableObservableListBase$SubObservableList;->sublist:Ljava/util/List;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v2

    move v0, v2

    .end local v0    # "this":Ljavafx/collections/ModifiableObservableListBase$SubObservableList;, "Ljavafx/collections/ModifiableObservableListBase<TE;>.SubObservableList;"
    return v0
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
    .line 309
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/ModifiableObservableListBase$SubObservableList;, "Ljavafx/collections/ModifiableObservableListBase<TE;>.SubObservableList;"
    move v1, p1

    .local v1, "index":I
    move-object v2, p2

    .local v2, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    move-object v6, v0

    iget-object v6, v6, Ljavafx/collections/ModifiableObservableListBase$SubObservableList;->this$0:Ljavafx/collections/ModifiableObservableListBase;

    invoke-virtual {v6}, Ljavafx/collections/ModifiableObservableListBase;->beginChange()V

    .line 311
    move-object v6, v0

    :try_start_0
    iget-object v6, v6, Ljavafx/collections/ModifiableObservableListBase$SubObservableList;->sublist:Ljava/util/List;

    move v7, v1

    move-object v8, v2

    invoke-interface {v6, v7, v8}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    move v3, v6

    .line 312
    .local v3, "res":Z
    move v6, v3

    move v4, v6

    .line 314
    move-object v6, v0

    iget-object v6, v6, Ljavafx/collections/ModifiableObservableListBase$SubObservableList;->this$0:Ljavafx/collections/ModifiableObservableListBase;

    invoke-virtual {v6}, Ljavafx/collections/ModifiableObservableListBase;->endChange()V

    move v6, v4

    move v0, v6

    .end local v0    # "this":Ljavafx/collections/ModifiableObservableListBase$SubObservableList;, "Ljavafx/collections/ModifiableObservableListBase<TE;>.SubObservableList;"
    return v0

    .end local v3    # "res":Z
    .restart local v0    # "this":Ljavafx/collections/ModifiableObservableListBase$SubObservableList;, "Ljavafx/collections/ModifiableObservableListBase<TE;>.SubObservableList;"
    :catchall_0
    move-exception v6

    move-object v5, v6

    move-object v6, v0

    iget-object v6, v6, Ljavafx/collections/ModifiableObservableListBase$SubObservableList;->this$0:Ljavafx/collections/ModifiableObservableListBase;

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
    .line 298
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/ModifiableObservableListBase$SubObservableList;, "Ljavafx/collections/ModifiableObservableListBase<TE;>.SubObservableList;"
    move-object v1, p1

    .local v1, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    move-object v5, v0

    iget-object v5, v5, Ljavafx/collections/ModifiableObservableListBase$SubObservableList;->this$0:Ljavafx/collections/ModifiableObservableListBase;

    invoke-virtual {v5}, Ljavafx/collections/ModifiableObservableListBase;->beginChange()V

    .line 300
    move-object v5, v0

    :try_start_0
    iget-object v5, v5, Ljavafx/collections/ModifiableObservableListBase$SubObservableList;->sublist:Ljava/util/List;

    move-object v6, v1

    invoke-interface {v5, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    move v2, v5

    .line 301
    .local v2, "res":Z
    move v5, v2

    move v3, v5

    .line 303
    move-object v5, v0

    iget-object v5, v5, Ljavafx/collections/ModifiableObservableListBase$SubObservableList;->this$0:Ljavafx/collections/ModifiableObservableListBase;

    invoke-virtual {v5}, Ljavafx/collections/ModifiableObservableListBase;->endChange()V

    move v5, v3

    move v0, v5

    .end local v0    # "this":Ljavafx/collections/ModifiableObservableListBase$SubObservableList;, "Ljavafx/collections/ModifiableObservableListBase<TE;>.SubObservableList;"
    return v0

    .end local v2    # "res":Z
    .restart local v0    # "this":Ljavafx/collections/ModifiableObservableListBase$SubObservableList;, "Ljavafx/collections/ModifiableObservableListBase<TE;>.SubObservableList;"
    :catchall_0
    move-exception v5

    move-object v4, v5

    move-object v5, v0

    iget-object v5, v5, Ljavafx/collections/ModifiableObservableListBase$SubObservableList;->this$0:Ljavafx/collections/ModifiableObservableListBase;

    invoke-virtual {v5}, Ljavafx/collections/ModifiableObservableListBase;->endChange()V

    move-object v5, v4

    throw v5
.end method

.method public clear()V
    .locals 3

    .prologue
    .line 342
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/ModifiableObservableListBase$SubObservableList;, "Ljavafx/collections/ModifiableObservableListBase<TE;>.SubObservableList;"
    move-object v2, v0

    iget-object v2, v2, Ljavafx/collections/ModifiableObservableListBase$SubObservableList;->this$0:Ljavafx/collections/ModifiableObservableListBase;

    invoke-virtual {v2}, Ljavafx/collections/ModifiableObservableListBase;->beginChange()V

    .line 344
    move-object v2, v0

    :try_start_0
    iget-object v2, v2, Ljavafx/collections/ModifiableObservableListBase$SubObservableList;->sublist:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 346
    move-object v2, v0

    iget-object v2, v2, Ljavafx/collections/ModifiableObservableListBase$SubObservableList;->this$0:Ljavafx/collections/ModifiableObservableListBase;

    invoke-virtual {v2}, Ljavafx/collections/ModifiableObservableListBase;->endChange()V

    .line 347
    .line 348
    return-void

    .line 346
    :catchall_0
    move-exception v2

    move-object v1, v2

    move-object v2, v0

    iget-object v2, v2, Ljavafx/collections/ModifiableObservableListBase$SubObservableList;->this$0:Ljavafx/collections/ModifiableObservableListBase;

    invoke-virtual {v2}, Ljavafx/collections/ModifiableObservableListBase;->endChange()V

    move-object v2, v1

    throw v2
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    .line 263
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/ModifiableObservableListBase$SubObservableList;, "Ljavafx/collections/ModifiableObservableListBase<TE;>.SubObservableList;"
    move-object v1, p1

    .local v1, "o":Ljava/lang/Object;
    move-object v2, v0

    iget-object v2, v2, Ljavafx/collections/ModifiableObservableListBase$SubObservableList;->sublist:Ljava/util/List;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    move v0, v2

    .end local v0    # "this":Ljavafx/collections/ModifiableObservableListBase$SubObservableList;, "Ljavafx/collections/ModifiableObservableListBase<TE;>.SubObservableList;"
    return v0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 293
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/ModifiableObservableListBase$SubObservableList;, "Ljavafx/collections/ModifiableObservableListBase<TE;>.SubObservableList;"
    move-object v1, p1

    .local v1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    move-object v2, v0

    iget-object v2, v2, Ljavafx/collections/ModifiableObservableListBase$SubObservableList;->sublist:Ljava/util/List;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v2

    move v0, v2

    .end local v0    # "this":Ljavafx/collections/ModifiableObservableListBase$SubObservableList;, "Ljavafx/collections/ModifiableObservableListBase<TE;>.SubObservableList;"
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    .line 397
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/ModifiableObservableListBase$SubObservableList;, "Ljavafx/collections/ModifiableObservableListBase<TE;>.SubObservableList;"
    move-object v1, p1

    .local v1, "obj":Ljava/lang/Object;
    move-object v2, v0

    iget-object v2, v2, Ljavafx/collections/ModifiableObservableListBase$SubObservableList;->sublist:Ljava/util/List;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    move v0, v2

    .end local v0    # "this":Ljavafx/collections/ModifiableObservableListBase$SubObservableList;, "Ljavafx/collections/ModifiableObservableListBase<TE;>.SubObservableList;"
    return v0
.end method

.method public get(I)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 352
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/ModifiableObservableListBase$SubObservableList;, "Ljavafx/collections/ModifiableObservableListBase<TE;>.SubObservableList;"
    move v1, p1

    .local v1, "index":I
    move-object v2, v0

    iget-object v2, v2, Ljavafx/collections/ModifiableObservableListBase$SubObservableList;->sublist:Ljava/util/List;

    move v3, v1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavafx/collections/ModifiableObservableListBase$SubObservableList;, "Ljavafx/collections/ModifiableObservableListBase<TE;>.SubObservableList;"
    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 402
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/ModifiableObservableListBase$SubObservableList;, "Ljavafx/collections/ModifiableObservableListBase<TE;>.SubObservableList;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/collections/ModifiableObservableListBase$SubObservableList;->sublist:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Ljavafx/collections/ModifiableObservableListBase$SubObservableList;, "Ljavafx/collections/ModifiableObservableListBase<TE;>.SubObservableList;"
    return v0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 4

    .prologue
    .line 372
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/ModifiableObservableListBase$SubObservableList;, "Ljavafx/collections/ModifiableObservableListBase<TE;>.SubObservableList;"
    move-object v1, p1

    .local v1, "o":Ljava/lang/Object;
    move-object v2, v0

    iget-object v2, v2, Ljavafx/collections/ModifiableObservableListBase$SubObservableList;->sublist:Ljava/util/List;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    move v0, v2

    .end local v0    # "this":Ljavafx/collections/ModifiableObservableListBase$SubObservableList;, "Ljavafx/collections/ModifiableObservableListBase<TE;>.SubObservableList;"
    return v0
.end method

.method public isEmpty()Z
    .locals 2

    .prologue
    .line 258
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/ModifiableObservableListBase$SubObservableList;, "Ljavafx/collections/ModifiableObservableListBase<TE;>.SubObservableList;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/collections/ModifiableObservableListBase$SubObservableList;->sublist:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Ljavafx/collections/ModifiableObservableListBase$SubObservableList;, "Ljavafx/collections/ModifiableObservableListBase<TE;>.SubObservableList;"
    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 268
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/ModifiableObservableListBase$SubObservableList;, "Ljavafx/collections/ModifiableObservableListBase<TE;>.SubObservableList;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/collections/ModifiableObservableListBase$SubObservableList;->sublist:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/collections/ModifiableObservableListBase$SubObservableList;, "Ljavafx/collections/ModifiableObservableListBase<TE;>.SubObservableList;"
    return-object v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .locals 4

    .prologue
    .line 377
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/ModifiableObservableListBase$SubObservableList;, "Ljavafx/collections/ModifiableObservableListBase<TE;>.SubObservableList;"
    move-object v1, p1

    .local v1, "o":Ljava/lang/Object;
    move-object v2, v0

    iget-object v2, v2, Ljavafx/collections/ModifiableObservableListBase$SubObservableList;->sublist:Ljava/util/List;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/List;->lastIndexOf(Ljava/lang/Object;)I

    move-result v2

    move v0, v2

    .end local v0    # "this":Ljavafx/collections/ModifiableObservableListBase$SubObservableList;, "Ljavafx/collections/ModifiableObservableListBase<TE;>.SubObservableList;"
    return v0
.end method

.method public listIterator()Ljava/util/ListIterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ListIterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 382
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/ModifiableObservableListBase$SubObservableList;, "Ljavafx/collections/ModifiableObservableListBase<TE;>.SubObservableList;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/collections/ModifiableObservableListBase$SubObservableList;->sublist:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/collections/ModifiableObservableListBase$SubObservableList;, "Ljavafx/collections/ModifiableObservableListBase<TE;>.SubObservableList;"
    return-object v0
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 387
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/ModifiableObservableListBase$SubObservableList;, "Ljavafx/collections/ModifiableObservableListBase<TE;>.SubObservableList;"
    move v1, p1

    .local v1, "index":I
    move-object v2, v0

    iget-object v2, v2, Ljavafx/collections/ModifiableObservableListBase$SubObservableList;->sublist:Ljava/util/List;

    move v3, v1

    invoke-interface {v2, v3}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavafx/collections/ModifiableObservableListBase$SubObservableList;, "Ljavafx/collections/ModifiableObservableListBase<TE;>.SubObservableList;"
    return-object v0
.end method

.method public remove(I)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 367
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/ModifiableObservableListBase$SubObservableList;, "Ljavafx/collections/ModifiableObservableListBase<TE;>.SubObservableList;"
    move v1, p1

    .local v1, "index":I
    move-object v2, v0

    iget-object v2, v2, Ljavafx/collections/ModifiableObservableListBase$SubObservableList;->sublist:Ljava/util/List;

    move v3, v1

    invoke-interface {v2, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavafx/collections/ModifiableObservableListBase$SubObservableList;, "Ljavafx/collections/ModifiableObservableListBase<TE;>.SubObservableList;"
    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    .line 288
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/ModifiableObservableListBase$SubObservableList;, "Ljavafx/collections/ModifiableObservableListBase<TE;>.SubObservableList;"
    move-object v1, p1

    .local v1, "o":Ljava/lang/Object;
    move-object v2, v0

    iget-object v2, v2, Ljavafx/collections/ModifiableObservableListBase$SubObservableList;->sublist:Ljava/util/List;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v2

    move v0, v2

    .end local v0    # "this":Ljavafx/collections/ModifiableObservableListBase$SubObservableList;, "Ljavafx/collections/ModifiableObservableListBase<TE;>.SubObservableList;"
    return v0
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
    .line 320
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/ModifiableObservableListBase$SubObservableList;, "Ljavafx/collections/ModifiableObservableListBase<TE;>.SubObservableList;"
    move-object v1, p1

    .local v1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    move-object v5, v0

    iget-object v5, v5, Ljavafx/collections/ModifiableObservableListBase$SubObservableList;->this$0:Ljavafx/collections/ModifiableObservableListBase;

    invoke-virtual {v5}, Ljavafx/collections/ModifiableObservableListBase;->beginChange()V

    .line 322
    move-object v5, v0

    :try_start_0
    iget-object v5, v5, Ljavafx/collections/ModifiableObservableListBase$SubObservableList;->sublist:Ljava/util/List;

    move-object v6, v1

    invoke-interface {v5, v6}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    move v2, v5

    .line 323
    .local v2, "res":Z
    move v5, v2

    move v3, v5

    .line 325
    move-object v5, v0

    iget-object v5, v5, Ljavafx/collections/ModifiableObservableListBase$SubObservableList;->this$0:Ljavafx/collections/ModifiableObservableListBase;

    invoke-virtual {v5}, Ljavafx/collections/ModifiableObservableListBase;->endChange()V

    move v5, v3

    move v0, v5

    .end local v0    # "this":Ljavafx/collections/ModifiableObservableListBase$SubObservableList;, "Ljavafx/collections/ModifiableObservableListBase<TE;>.SubObservableList;"
    return v0

    .end local v2    # "res":Z
    .restart local v0    # "this":Ljavafx/collections/ModifiableObservableListBase$SubObservableList;, "Ljavafx/collections/ModifiableObservableListBase<TE;>.SubObservableList;"
    :catchall_0
    move-exception v5

    move-object v4, v5

    move-object v5, v0

    iget-object v5, v5, Ljavafx/collections/ModifiableObservableListBase$SubObservableList;->this$0:Ljavafx/collections/ModifiableObservableListBase;

    invoke-virtual {v5}, Ljavafx/collections/ModifiableObservableListBase;->endChange()V

    move-object v5, v4

    throw v5
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
    .line 331
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/ModifiableObservableListBase$SubObservableList;, "Ljavafx/collections/ModifiableObservableListBase<TE;>.SubObservableList;"
    move-object v1, p1

    .local v1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    move-object v5, v0

    iget-object v5, v5, Ljavafx/collections/ModifiableObservableListBase$SubObservableList;->this$0:Ljavafx/collections/ModifiableObservableListBase;

    invoke-virtual {v5}, Ljavafx/collections/ModifiableObservableListBase;->beginChange()V

    .line 333
    move-object v5, v0

    :try_start_0
    iget-object v5, v5, Ljavafx/collections/ModifiableObservableListBase$SubObservableList;->sublist:Ljava/util/List;

    move-object v6, v1

    invoke-interface {v5, v6}, Ljava/util/List;->retainAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    move v2, v5

    .line 334
    .local v2, "res":Z
    move v5, v2

    move v3, v5

    .line 336
    move-object v5, v0

    iget-object v5, v5, Ljavafx/collections/ModifiableObservableListBase$SubObservableList;->this$0:Ljavafx/collections/ModifiableObservableListBase;

    invoke-virtual {v5}, Ljavafx/collections/ModifiableObservableListBase;->endChange()V

    move v5, v3

    move v0, v5

    .end local v0    # "this":Ljavafx/collections/ModifiableObservableListBase$SubObservableList;, "Ljavafx/collections/ModifiableObservableListBase<TE;>.SubObservableList;"
    return v0

    .end local v2    # "res":Z
    .restart local v0    # "this":Ljavafx/collections/ModifiableObservableListBase$SubObservableList;, "Ljavafx/collections/ModifiableObservableListBase<TE;>.SubObservableList;"
    :catchall_0
    move-exception v5

    move-object v4, v5

    move-object v5, v0

    iget-object v5, v5, Ljavafx/collections/ModifiableObservableListBase$SubObservableList;->this$0:Ljavafx/collections/ModifiableObservableListBase;

    invoke-virtual {v5}, Ljavafx/collections/ModifiableObservableListBase;->endChange()V

    move-object v5, v4

    throw v5
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    .prologue
    .line 357
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/ModifiableObservableListBase$SubObservableList;, "Ljavafx/collections/ModifiableObservableListBase<TE;>.SubObservableList;"
    move v1, p1

    .local v1, "index":I
    move-object v2, p2

    .local v2, "element":Ljava/lang/Object;, "TE;"
    move-object v3, v0

    iget-object v3, v3, Ljavafx/collections/ModifiableObservableListBase$SubObservableList;->sublist:Ljava/util/List;

    move v4, v1

    move-object v5, v2

    invoke-interface {v3, v4, v5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Ljavafx/collections/ModifiableObservableListBase$SubObservableList;, "Ljavafx/collections/ModifiableObservableListBase<TE;>.SubObservableList;"
    return-object v0
.end method

.method public size()I
    .locals 2

    .prologue
    .line 253
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/ModifiableObservableListBase$SubObservableList;, "Ljavafx/collections/ModifiableObservableListBase<TE;>.SubObservableList;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/collections/ModifiableObservableListBase$SubObservableList;->sublist:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Ljavafx/collections/ModifiableObservableListBase$SubObservableList;, "Ljavafx/collections/ModifiableObservableListBase<TE;>.SubObservableList;"
    return v0
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
    .line 392
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/ModifiableObservableListBase$SubObservableList;, "Ljavafx/collections/ModifiableObservableListBase<TE;>.SubObservableList;"
    move v1, p1

    .local v1, "fromIndex":I
    move v2, p2

    .local v2, "toIndex":I
    new-instance v3, Ljavafx/collections/ModifiableObservableListBase$SubObservableList;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    move-object v5, v0

    iget-object v5, v5, Ljavafx/collections/ModifiableObservableListBase$SubObservableList;->this$0:Ljavafx/collections/ModifiableObservableListBase;

    move-object v6, v0

    iget-object v6, v6, Ljavafx/collections/ModifiableObservableListBase$SubObservableList;->sublist:Ljava/util/List;

    move v7, v1

    move v8, v2

    invoke-interface {v6, v7, v8}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Ljavafx/collections/ModifiableObservableListBase$SubObservableList;-><init>(Ljavafx/collections/ModifiableObservableListBase;Ljava/util/List;)V

    move-object v0, v3

    .end local v0    # "this":Ljavafx/collections/ModifiableObservableListBase$SubObservableList;, "Ljavafx/collections/ModifiableObservableListBase<TE;>.SubObservableList;"
    return-object v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 2

    .prologue
    .line 273
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/ModifiableObservableListBase$SubObservableList;, "Ljavafx/collections/ModifiableObservableListBase<TE;>.SubObservableList;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/collections/ModifiableObservableListBase$SubObservableList;->sublist:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/collections/ModifiableObservableListBase$SubObservableList;, "Ljavafx/collections/ModifiableObservableListBase<TE;>.SubObservableList;"
    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .prologue
    .line 278
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/ModifiableObservableListBase$SubObservableList;, "Ljavafx/collections/ModifiableObservableListBase<TE;>.SubObservableList;"
    move-object v1, p1

    .local v1, "a":[Ljava/lang/Object;, "[TT;"
    move-object v2, v0

    iget-object v2, v2, Ljavafx/collections/ModifiableObservableListBase$SubObservableList;->sublist:Ljava/util/List;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavafx/collections/ModifiableObservableListBase$SubObservableList;, "Ljavafx/collections/ModifiableObservableListBase<TE;>.SubObservableList;"
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 407
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/ModifiableObservableListBase$SubObservableList;, "Ljavafx/collections/ModifiableObservableListBase<TE;>.SubObservableList;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/collections/ModifiableObservableListBase$SubObservableList;->sublist:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/collections/ModifiableObservableListBase$SubObservableList;, "Ljavafx/collections/ModifiableObservableListBase<TE;>.SubObservableList;"
    return-object v0
.end method
