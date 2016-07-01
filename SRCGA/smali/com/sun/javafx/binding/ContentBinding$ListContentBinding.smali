.class Lcom/sun/javafx/binding/ContentBinding$ListContentBinding;
.super Ljava/lang/Object;
.source "ContentBinding.java"

# interfaces
.implements Ljavafx/collections/ListChangeListener;
.implements Ljavafx/beans/WeakListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/binding/ContentBinding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ListContentBinding"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljavafx/collections/ListChangeListener",
        "<TE;>;",
        "Ljavafx/beans/WeakListener;"
    }
.end annotation


# instance fields
.field private final listRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Ljava/util/List",
            "<TE;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 98
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/binding/ContentBinding$ListContentBinding;, "Lcom/sun/javafx/binding/ContentBinding$ListContentBinding<TE;>;"
    move-object v1, p1

    .local v1, "list":Ljava/util/List;, "Ljava/util/List<TE;>;"
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 99
    move-object v2, v0

    new-instance v3, Ljava/lang/ref/WeakReference;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v1

    invoke-direct {v4, v5}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v3, v2, Lcom/sun/javafx/binding/ContentBinding$ListContentBinding;->listRef:Ljava/lang/ref/WeakReference;

    .line 100
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    .prologue
    .line 137
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/binding/ContentBinding$ListContentBinding;, "Lcom/sun/javafx/binding/ContentBinding$ListContentBinding<TE;>;"
    move-object v1, p1

    .local v1, "obj":Ljava/lang/Object;
    move-object v5, v0

    move-object v6, v1

    if-ne v5, v6, :cond_0

    .line 138
    const/4 v5, 0x1

    move v0, v5

    .line 151
    .end local v0    # "this":Lcom/sun/javafx/binding/ContentBinding$ListContentBinding;, "Lcom/sun/javafx/binding/ContentBinding$ListContentBinding<TE;>;"
    :goto_0
    return v0

    .line 141
    .restart local v0    # "this":Lcom/sun/javafx/binding/ContentBinding$ListContentBinding;, "Lcom/sun/javafx/binding/ContentBinding$ListContentBinding<TE;>;"
    :cond_0
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/binding/ContentBinding$ListContentBinding;->listRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    move-object v2, v5

    .line 142
    .local v2, "list1":Ljava/util/List;, "Ljava/util/List<TE;>;"
    move-object v5, v2

    if-nez v5, :cond_1

    .line 143
    const/4 v5, 0x0

    move v0, v5

    goto :goto_0

    .line 146
    :cond_1
    move-object v5, v1

    instance-of v5, v5, Lcom/sun/javafx/binding/ContentBinding$ListContentBinding;

    if-eqz v5, :cond_3

    .line 147
    move-object v5, v1

    check-cast v5, Lcom/sun/javafx/binding/ContentBinding$ListContentBinding;

    move-object v3, v5

    .line 148
    .local v3, "other":Lcom/sun/javafx/binding/ContentBinding$ListContentBinding;, "Lcom/sun/javafx/binding/ContentBinding$ListContentBinding<*>;"
    move-object v5, v3

    iget-object v5, v5, Lcom/sun/javafx/binding/ContentBinding$ListContentBinding;->listRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    move-object v4, v5

    .line 149
    .local v4, "list2":Ljava/util/List;, "Ljava/util/List<*>;"
    move-object v5, v2

    move-object v6, v4

    if-ne v5, v6, :cond_2

    const/4 v5, 0x1

    :goto_1
    move v0, v5

    goto :goto_0

    :cond_2
    const/4 v5, 0x0

    goto :goto_1

    .line 151
    .end local v3    # "other":Lcom/sun/javafx/binding/ContentBinding$ListContentBinding;, "Lcom/sun/javafx/binding/ContentBinding$ListContentBinding<*>;"
    .end local v4    # "list2":Ljava/util/List;, "Ljava/util/List<*>;"
    :cond_3
    const/4 v5, 0x0

    move v0, v5

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 131
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/binding/ContentBinding$ListContentBinding;, "Lcom/sun/javafx/binding/ContentBinding$ListContentBinding<TE;>;"
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/binding/ContentBinding$ListContentBinding;->listRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    move-object v1, v2

    .line 132
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<TE;>;"
    move-object v2, v1

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    move v0, v2

    .end local v0    # "this":Lcom/sun/javafx/binding/ContentBinding$ListContentBinding;, "Lcom/sun/javafx/binding/ContentBinding$ListContentBinding<TE;>;"
    return v0

    .restart local v0    # "this":Lcom/sun/javafx/binding/ContentBinding$ListContentBinding;, "Lcom/sun/javafx/binding/ContentBinding$ListContentBinding<TE;>;"
    :cond_0
    move-object v2, v1

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    goto :goto_0
.end method

.method public onChanged(Ljavafx/collections/ListChangeListener$Change;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/ListChangeListener$Change",
            "<+TE;>;)V"
        }
    .end annotation

    .prologue
    .line 104
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/binding/ContentBinding$ListContentBinding;, "Lcom/sun/javafx/binding/ContentBinding$ListContentBinding<TE;>;"
    move-object v1, p1

    .local v1, "change":Ljavafx/collections/ListChangeListener$Change;, "Ljavafx/collections/ListChangeListener$Change<+TE;>;"
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/binding/ContentBinding$ListContentBinding;->listRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    move-object v2, v3

    .line 105
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<TE;>;"
    move-object v3, v2

    if-nez v3, :cond_1

    .line 106
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/collections/ListChangeListener$Change;->getList()Ljavafx/collections/ObservableList;

    move-result-object v3

    move-object v4, v0

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->removeListener(Ljavafx/collections/ListChangeListener;)V

    .line 122
    :cond_0
    return-void

    .line 108
    :cond_1
    :goto_0
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/collections/ListChangeListener$Change;->next()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 109
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/collections/ListChangeListener$Change;->wasPermutated()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 110
    move-object v3, v2

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/collections/ListChangeListener$Change;->getFrom()I

    move-result v4

    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/collections/ListChangeListener$Change;->getTo()I

    move-result v5

    invoke-interface {v3, v4, v5}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 111
    move-object v3, v2

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/collections/ListChangeListener$Change;->getFrom()I

    move-result v4

    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/collections/ListChangeListener$Change;->getList()Ljavafx/collections/ObservableList;

    move-result-object v5

    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/collections/ListChangeListener$Change;->getFrom()I

    move-result v6

    move-object v7, v1

    invoke-virtual {v7}, Ljavafx/collections/ListChangeListener$Change;->getTo()I

    move-result v7

    invoke-interface {v5, v6, v7}, Ljavafx/collections/ObservableList;->subList(II)Ljava/util/List;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    move-result v3

    goto :goto_0

    .line 113
    :cond_2
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/collections/ListChangeListener$Change;->wasRemoved()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 114
    move-object v3, v2

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/collections/ListChangeListener$Change;->getFrom()I

    move-result v4

    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/collections/ListChangeListener$Change;->getFrom()I

    move-result v5

    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/collections/ListChangeListener$Change;->getRemovedSize()I

    move-result v6

    add-int/2addr v5, v6

    invoke-interface {v3, v4, v5}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 116
    :cond_3
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/collections/ListChangeListener$Change;->wasAdded()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 117
    move-object v3, v2

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/collections/ListChangeListener$Change;->getFrom()I

    move-result v4

    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/collections/ListChangeListener$Change;->getAddedSubList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    move-result v3

    goto :goto_0
.end method

.method public wasGarbageCollected()Z
    .locals 2

    .prologue
    .line 126
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/binding/ContentBinding$ListContentBinding;, "Lcom/sun/javafx/binding/ContentBinding$ListContentBinding<TE;>;"
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/binding/ContentBinding$ListContentBinding;->listRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/binding/ContentBinding$ListContentBinding;, "Lcom/sun/javafx/binding/ContentBinding$ListContentBinding<TE;>;"
    return v0

    .restart local v0    # "this":Lcom/sun/javafx/binding/ContentBinding$ListContentBinding;, "Lcom/sun/javafx/binding/ContentBinding$ListContentBinding<TE;>;"
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
