.class public Lcom/sun/javafx/collections/ObservableListWrapper;
.super Ljavafx/collections/ModifiableObservableListBase;
.source "ObservableListWrapper.java"

# interfaces
.implements Ljavafx/collections/ObservableList;
.implements Lcom/sun/javafx/collections/SortableList;
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljavafx/collections/ModifiableObservableListBase",
        "<TE;>;",
        "Ljavafx/collections/ObservableList",
        "<TE;>;",
        "Lcom/sun/javafx/collections/SortableList",
        "<TE;>;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# instance fields
.field private final backingList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TE;>;"
        }
    .end annotation
.end field

.field private final elementObserver:Lcom/sun/javafx/collections/ElementObserver;

.field private helper:Lcom/sun/javafx/collections/SortHelper;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 52
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/ObservableListWrapper;, "Lcom/sun/javafx/collections/ObservableListWrapper<TE;>;"
    move-object v1, p1

    .local v1, "list":Ljava/util/List;, "Ljava/util/List<TE;>;"
    move-object v2, v0

    invoke-direct {v2}, Ljavafx/collections/ModifiableObservableListBase;-><init>()V

    .line 53
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/collections/ObservableListWrapper;->backingList:Ljava/util/List;

    .line 54
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/sun/javafx/collections/ObservableListWrapper;->elementObserver:Lcom/sun/javafx/collections/ElementObserver;

    .line 55
    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljavafx/util/Callback;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TE;>;",
            "Ljavafx/util/Callback",
            "<TE;[",
            "Ljavafx/beans/Observable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 57
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/ObservableListWrapper;, "Lcom/sun/javafx/collections/ObservableListWrapper<TE;>;"
    move-object v1, p1

    .local v1, "list":Ljava/util/List;, "Ljava/util/List<TE;>;"
    move-object v2, p2

    .local v2, "extractor":Ljavafx/util/Callback;, "Ljavafx/util/Callback<TE;[Ljavafx/beans/Observable;>;"
    move-object v5, v0

    invoke-direct {v5}, Ljavafx/collections/ModifiableObservableListBase;-><init>()V

    .line 58
    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Lcom/sun/javafx/collections/ObservableListWrapper;->backingList:Ljava/util/List;

    .line 59
    move-object v5, v0

    new-instance v6, Lcom/sun/javafx/collections/ElementObserver;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    move-object v8, v2

    new-instance v9, Lcom/sun/javafx/collections/ObservableListWrapper$1;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    move-object v11, v0

    invoke-direct {v10, v11}, Lcom/sun/javafx/collections/ObservableListWrapper$1;-><init>(Lcom/sun/javafx/collections/ObservableListWrapper;)V

    move-object v10, v0

    invoke-direct {v7, v8, v9, v10}, Lcom/sun/javafx/collections/ElementObserver;-><init>(Ljavafx/util/Callback;Ljavafx/util/Callback;Ljavafx/collections/ObservableListBase;)V

    iput-object v6, v5, Lcom/sun/javafx/collections/ObservableListWrapper;->elementObserver:Lcom/sun/javafx/collections/ElementObserver;

    .line 80
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/collections/ObservableListWrapper;->backingList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    move v3, v5

    .line 81
    .local v3, "sz":I
    const/4 v5, 0x0

    move v4, v5

    .local v4, "i":I
    :goto_0
    move v5, v4

    move v6, v3

    if-ge v5, v6, :cond_0

    .line 82
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/collections/ObservableListWrapper;->elementObserver:Lcom/sun/javafx/collections/ElementObserver;

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/collections/ObservableListWrapper;->backingList:Ljava/util/List;

    move v7, v4

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sun/javafx/collections/ElementObserver;->attachListener(Ljava/lang/Object;)V

    .line 81
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 84
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/sun/javafx/collections/ObservableListWrapper;)V
    .locals 2

    .prologue
    .line 45
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/collections/ObservableListWrapper;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/collections/ObservableListWrapper;->beginChange()V

    return-void
.end method

.method static synthetic access$100(Lcom/sun/javafx/collections/ObservableListWrapper;I)V
    .locals 4

    .prologue
    .line 45
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/collections/ObservableListWrapper;
    move v1, p1

    .local v1, "x1":I
    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/javafx/collections/ObservableListWrapper;->nextUpdate(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/sun/javafx/collections/ObservableListWrapper;)V
    .locals 2

    .prologue
    .line 45
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/collections/ObservableListWrapper;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/collections/ObservableListWrapper;->endChange()V

    return-void
.end method

.method private getSortHelper()Lcom/sun/javafx/collections/SortHelper;
    .locals 5

    .prologue
    .line 230
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/ObservableListWrapper;, "Lcom/sun/javafx/collections/ObservableListWrapper<TE;>;"
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/collections/ObservableListWrapper;->helper:Lcom/sun/javafx/collections/SortHelper;

    if-nez v1, :cond_0

    .line 231
    move-object v1, v0

    new-instance v2, Lcom/sun/javafx/collections/SortHelper;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Lcom/sun/javafx/collections/SortHelper;-><init>()V

    iput-object v2, v1, Lcom/sun/javafx/collections/ObservableListWrapper;->helper:Lcom/sun/javafx/collections/SortHelper;

    .line 233
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/collections/ObservableListWrapper;->helper:Lcom/sun/javafx/collections/SortHelper;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/collections/ObservableListWrapper;, "Lcom/sun/javafx/collections/ObservableListWrapper<TE;>;"
    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 7

    .prologue
    .line 144
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/ObservableListWrapper;, "Lcom/sun/javafx/collections/ObservableListWrapper<TE;>;"
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/collections/ObservableListWrapper;->elementObserver:Lcom/sun/javafx/collections/ElementObserver;

    if-eqz v3, :cond_0

    .line 145
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/collections/ObservableListWrapper;->size()I

    move-result v3

    move v1, v3

    .line 146
    .local v1, "sz":I
    const/4 v3, 0x0

    move v2, v3

    .local v2, "i":I
    :goto_0
    move v3, v2

    move v4, v1

    if-ge v3, v4, :cond_0

    .line 147
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/collections/ObservableListWrapper;->elementObserver:Lcom/sun/javafx/collections/ElementObserver;

    move-object v4, v0

    move v5, v2

    invoke-virtual {v4, v5}, Lcom/sun/javafx/collections/ObservableListWrapper;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sun/javafx/collections/ElementObserver;->detachListener(Ljava/lang/Object;)V

    .line 146
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 150
    .end local v1    # "sz":I
    .end local v2    # "i":I
    :cond_0
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/collections/ObservableListWrapper;->hasListeners()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 151
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/collections/ObservableListWrapper;->beginChange()V

    .line 152
    move-object v3, v0

    const/4 v4, 0x0

    move-object v5, v0

    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/collections/ObservableListWrapper;->nextRemove(ILjava/util/List;)V

    .line 154
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/collections/ObservableListWrapper;->backingList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 155
    move-object v3, v0

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    iget v4, v4, Lcom/sun/javafx/collections/ObservableListWrapper;->modCount:I

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lcom/sun/javafx/collections/ObservableListWrapper;->modCount:I

    .line 156
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/collections/ObservableListWrapper;->hasListeners()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 157
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/collections/ObservableListWrapper;->endChange()V

    .line 159
    :cond_2
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    .line 134
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/ObservableListWrapper;, "Lcom/sun/javafx/collections/ObservableListWrapper<TE;>;"
    move-object v1, p1

    .local v1, "o":Ljava/lang/Object;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/collections/ObservableListWrapper;->backingList:Ljava/util/List;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    move v0, v2

    .end local v0    # "this":Lcom/sun/javafx/collections/ObservableListWrapper;, "Lcom/sun/javafx/collections/ObservableListWrapper<TE;>;"
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
    .line 139
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/ObservableListWrapper;, "Lcom/sun/javafx/collections/ObservableListWrapper<TE;>;"
    move-object v1, p1

    .local v1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/collections/ObservableListWrapper;->backingList:Ljava/util/List;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v2

    move v0, v2

    .end local v0    # "this":Lcom/sun/javafx/collections/ObservableListWrapper;, "Lcom/sun/javafx/collections/ObservableListWrapper<TE;>;"
    return v0
.end method

.method protected doAdd(ILjava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .prologue
    .line 99
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/ObservableListWrapper;, "Lcom/sun/javafx/collections/ObservableListWrapper<TE;>;"
    move v1, p1

    .local v1, "index":I
    move-object v2, p2

    .local v2, "element":Ljava/lang/Object;, "TE;"
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/collections/ObservableListWrapper;->elementObserver:Lcom/sun/javafx/collections/ElementObserver;

    if-eqz v3, :cond_0

    .line 100
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/collections/ObservableListWrapper;->elementObserver:Lcom/sun/javafx/collections/ElementObserver;

    move-object v4, v2

    invoke-virtual {v3, v4}, Lcom/sun/javafx/collections/ElementObserver;->attachListener(Ljava/lang/Object;)V

    .line 101
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/collections/ObservableListWrapper;->backingList:Ljava/util/List;

    move v4, v1

    move-object v5, v2

    invoke-interface {v3, v4, v5}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 102
    return-void
.end method

.method protected doRemove(I)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 116
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/ObservableListWrapper;, "Lcom/sun/javafx/collections/ObservableListWrapper<TE;>;"
    move v1, p1

    .local v1, "index":I
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/collections/ObservableListWrapper;->backingList:Ljava/util/List;

    move v4, v1

    invoke-interface {v3, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v3

    move-object v2, v3

    .line 117
    .local v2, "removed":Ljava/lang/Object;, "TE;"
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/collections/ObservableListWrapper;->elementObserver:Lcom/sun/javafx/collections/ElementObserver;

    if-eqz v3, :cond_0

    .line 118
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/collections/ObservableListWrapper;->elementObserver:Lcom/sun/javafx/collections/ElementObserver;

    move-object v4, v2

    invoke-virtual {v3, v4}, Lcom/sun/javafx/collections/ElementObserver;->detachListener(Ljava/lang/Object;)V

    .line 119
    :cond_0
    move-object v3, v2

    move-object v0, v3

    .end local v0    # "this":Lcom/sun/javafx/collections/ObservableListWrapper;, "Lcom/sun/javafx/collections/ObservableListWrapper<TE;>;"
    return-object v0
.end method

.method protected doSet(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    .prologue
    .line 106
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/ObservableListWrapper;, "Lcom/sun/javafx/collections/ObservableListWrapper<TE;>;"
    move v1, p1

    .local v1, "index":I
    move-object v2, p2

    .local v2, "element":Ljava/lang/Object;, "TE;"
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/collections/ObservableListWrapper;->backingList:Ljava/util/List;

    move v5, v1

    move-object v6, v2

    invoke-interface {v4, v5, v6}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v3, v4

    .line 107
    .local v3, "removed":Ljava/lang/Object;, "TE;"
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/collections/ObservableListWrapper;->elementObserver:Lcom/sun/javafx/collections/ElementObserver;

    if-eqz v4, :cond_0

    .line 108
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/collections/ObservableListWrapper;->elementObserver:Lcom/sun/javafx/collections/ElementObserver;

    move-object v5, v3

    invoke-virtual {v4, v5}, Lcom/sun/javafx/collections/ElementObserver;->detachListener(Ljava/lang/Object;)V

    .line 109
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/collections/ObservableListWrapper;->elementObserver:Lcom/sun/javafx/collections/ElementObserver;

    move-object v5, v2

    invoke-virtual {v4, v5}, Lcom/sun/javafx/collections/ElementObserver;->attachListener(Ljava/lang/Object;)V

    .line 111
    :cond_0
    move-object v4, v3

    move-object v0, v4

    .end local v0    # "this":Lcom/sun/javafx/collections/ObservableListWrapper;, "Lcom/sun/javafx/collections/ObservableListWrapper<TE;>;"
    return-object v0
.end method

.method public get(I)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 89
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/ObservableListWrapper;, "Lcom/sun/javafx/collections/ObservableListWrapper<TE;>;"
    move v1, p1

    .local v1, "index":I
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/collections/ObservableListWrapper;->backingList:Ljava/util/List;

    move v3, v1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/collections/ObservableListWrapper;, "Lcom/sun/javafx/collections/ObservableListWrapper<TE;>;"
    return-object v0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 4

    .prologue
    .line 124
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/ObservableListWrapper;, "Lcom/sun/javafx/collections/ObservableListWrapper<TE;>;"
    move-object v1, p1

    .local v1, "o":Ljava/lang/Object;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/collections/ObservableListWrapper;->backingList:Ljava/util/List;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    move v0, v2

    .end local v0    # "this":Lcom/sun/javafx/collections/ObservableListWrapper;, "Lcom/sun/javafx/collections/ObservableListWrapper<TE;>;"
    return v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .locals 4

    .prologue
    .line 129
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/ObservableListWrapper;, "Lcom/sun/javafx/collections/ObservableListWrapper<TE;>;"
    move-object v1, p1

    .local v1, "o":Ljava/lang/Object;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/collections/ObservableListWrapper;->backingList:Ljava/util/List;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/List;->lastIndexOf(Ljava/lang/Object;)I

    move-result v2

    move v0, v2

    .end local v0    # "this":Lcom/sun/javafx/collections/ObservableListWrapper;, "Lcom/sun/javafx/collections/ObservableListWrapper<TE;>;"
    return v0
.end method

.method public remove(II)V
    .locals 6

    .prologue
    .line 163
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/ObservableListWrapper;, "Lcom/sun/javafx/collections/ObservableListWrapper<TE;>;"
    move v1, p1

    .local v1, "fromIndex":I
    move v2, p2

    .local v2, "toIndex":I
    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/javafx/collections/ObservableListWrapper;->beginChange()V

    .line 164
    move v4, v1

    move v3, v4

    .local v3, "i":I
    :goto_0
    move v4, v3

    move v5, v2

    if-ge v4, v5, :cond_0

    .line 165
    move-object v4, v0

    move v5, v1

    invoke-virtual {v4, v5}, Lcom/sun/javafx/collections/ObservableListWrapper;->remove(I)Ljava/lang/Object;

    move-result-object v4

    .line 164
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 167
    :cond_0
    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/javafx/collections/ObservableListWrapper;->endChange()V

    .line 168
    return-void
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 172
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/ObservableListWrapper;, "Lcom/sun/javafx/collections/ObservableListWrapper<TE;>;"
    move-object v1, p1

    .local v1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/javafx/collections/ObservableListWrapper;->beginChange()V

    .line 173
    new-instance v4, Ljava/util/BitSet;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v1

    invoke-interface {v6}, Ljava/util/Collection;->size()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/BitSet;-><init>(I)V

    move-object v2, v4

    .line 174
    .local v2, "bs":Ljava/util/BitSet;
    const/4 v4, 0x0

    move v3, v4

    .local v3, "i":I
    :goto_0
    move v4, v3

    move-object v5, v0

    invoke-virtual {v5}, Lcom/sun/javafx/collections/ObservableListWrapper;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 175
    move-object v4, v1

    move-object v5, v0

    move v6, v3

    invoke-virtual {v5, v6}, Lcom/sun/javafx/collections/ObservableListWrapper;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 176
    move-object v4, v2

    move v5, v3

    invoke-virtual {v4, v5}, Ljava/util/BitSet;->set(I)V

    .line 174
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 179
    :cond_1
    move-object v4, v2

    invoke-virtual {v4}, Ljava/util/BitSet;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    .line 180
    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/javafx/collections/ObservableListWrapper;->size()I

    move-result v4

    move v3, v4

    .line 181
    .local v3, "cur":I
    :goto_1
    move-object v4, v2

    move v5, v3

    const/4 v6, 0x1

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Ljava/util/BitSet;->previousSetBit(I)I

    move-result v4

    move v7, v4

    move v4, v7

    move v5, v7

    move v3, v5

    if-ltz v4, :cond_2

    .line 182
    move-object v4, v0

    move v5, v3

    invoke-virtual {v4, v5}, Lcom/sun/javafx/collections/ObservableListWrapper;->remove(I)Ljava/lang/Object;

    move-result-object v4

    goto :goto_1

    .line 185
    .end local v3    # "cur":I
    :cond_2
    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/javafx/collections/ObservableListWrapper;->endChange()V

    .line 186
    move-object v4, v2

    invoke-virtual {v4}, Ljava/util/BitSet;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    const/4 v4, 0x1

    :goto_2
    move v0, v4

    .end local v0    # "this":Lcom/sun/javafx/collections/ObservableListWrapper;, "Lcom/sun/javafx/collections/ObservableListWrapper<TE;>;"
    return v0

    .restart local v0    # "this":Lcom/sun/javafx/collections/ObservableListWrapper;, "Lcom/sun/javafx/collections/ObservableListWrapper<TE;>;"
    :cond_3
    const/4 v4, 0x0

    goto :goto_2
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 191
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/ObservableListWrapper;, "Lcom/sun/javafx/collections/ObservableListWrapper<TE;>;"
    move-object v1, p1

    .local v1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/javafx/collections/ObservableListWrapper;->beginChange()V

    .line 192
    new-instance v4, Ljava/util/BitSet;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v1

    invoke-interface {v6}, Ljava/util/Collection;->size()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/BitSet;-><init>(I)V

    move-object v2, v4

    .line 193
    .local v2, "bs":Ljava/util/BitSet;
    const/4 v4, 0x0

    move v3, v4

    .local v3, "i":I
    :goto_0
    move v4, v3

    move-object v5, v0

    invoke-virtual {v5}, Lcom/sun/javafx/collections/ObservableListWrapper;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 194
    move-object v4, v1

    move-object v5, v0

    move v6, v3

    invoke-virtual {v5, v6}, Lcom/sun/javafx/collections/ObservableListWrapper;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 195
    move-object v4, v2

    move v5, v3

    invoke-virtual {v4, v5}, Ljava/util/BitSet;->set(I)V

    .line 193
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 198
    :cond_1
    move-object v4, v2

    invoke-virtual {v4}, Ljava/util/BitSet;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    .line 199
    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/javafx/collections/ObservableListWrapper;->size()I

    move-result v4

    move v3, v4

    .line 200
    .local v3, "cur":I
    :goto_1
    move-object v4, v2

    move v5, v3

    const/4 v6, 0x1

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Ljava/util/BitSet;->previousSetBit(I)I

    move-result v4

    move v7, v4

    move v4, v7

    move v5, v7

    move v3, v5

    if-ltz v4, :cond_2

    .line 201
    move-object v4, v0

    move v5, v3

    invoke-virtual {v4, v5}, Lcom/sun/javafx/collections/ObservableListWrapper;->remove(I)Ljava/lang/Object;

    move-result-object v4

    goto :goto_1

    .line 204
    .end local v3    # "cur":I
    :cond_2
    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/javafx/collections/ObservableListWrapper;->endChange()V

    .line 205
    move-object v4, v2

    invoke-virtual {v4}, Ljava/util/BitSet;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    const/4 v4, 0x1

    :goto_2
    move v0, v4

    .end local v0    # "this":Lcom/sun/javafx/collections/ObservableListWrapper;, "Lcom/sun/javafx/collections/ObservableListWrapper<TE;>;"
    return v0

    .restart local v0    # "this":Lcom/sun/javafx/collections/ObservableListWrapper;, "Lcom/sun/javafx/collections/ObservableListWrapper<TE;>;"
    :cond_3
    const/4 v4, 0x0

    goto :goto_2
.end method

.method public size()I
    .locals 2

    .prologue
    .line 94
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/ObservableListWrapper;, "Lcom/sun/javafx/collections/ObservableListWrapper<TE;>;"
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/collections/ObservableListWrapper;->backingList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/collections/ObservableListWrapper;, "Lcom/sun/javafx/collections/ObservableListWrapper<TE;>;"
    return v0
.end method

.method public sort()V
    .locals 10

    .prologue
    .line 213
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/ObservableListWrapper;, "Lcom/sun/javafx/collections/ObservableListWrapper<TE;>;"
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/collections/ObservableListWrapper;->backingList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 214
    .line 218
    :goto_0
    return-void

    .line 216
    :cond_0
    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/collections/ObservableListWrapper;->getSortHelper()Lcom/sun/javafx/collections/SortHelper;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/collections/ObservableListWrapper;->backingList:Ljava/util/List;

    invoke-virtual {v2, v3}, Lcom/sun/javafx/collections/SortHelper;->sort(Ljava/util/List;)[I

    move-result-object v2

    move-object v1, v2

    .line 217
    .local v1, "perm":[I
    move-object v2, v0

    new-instance v3, Lcom/sun/javafx/collections/NonIterableChange$SimplePermutationChange;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    const/4 v5, 0x0

    move-object v6, v0

    invoke-virtual {v6}, Lcom/sun/javafx/collections/ObservableListWrapper;->size()I

    move-result v6

    move-object v7, v1

    move-object v8, v0

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/sun/javafx/collections/NonIterableChange$SimplePermutationChange;-><init>(II[ILjavafx/collections/ObservableList;)V

    invoke-virtual {v2, v3}, Lcom/sun/javafx/collections/ObservableListWrapper;->fireChange(Ljavafx/collections/ListChangeListener$Change;)V

    .line 218
    goto :goto_0
.end method

.method public sort(Ljava/util/Comparator;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<-TE;>;)V"
        }
    .end annotation

    .prologue
    .line 222
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/ObservableListWrapper;, "Lcom/sun/javafx/collections/ObservableListWrapper<TE;>;"
    move-object v1, p1

    .local v1, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TE;>;"
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/collections/ObservableListWrapper;->backingList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 223
    .line 227
    :goto_0
    return-void

    .line 225
    :cond_0
    move-object v3, v0

    invoke-direct {v3}, Lcom/sun/javafx/collections/ObservableListWrapper;->getSortHelper()Lcom/sun/javafx/collections/SortHelper;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/collections/ObservableListWrapper;->backingList:Ljava/util/List;

    move-object v5, v1

    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/collections/SortHelper;->sort(Ljava/util/List;Ljava/util/Comparator;)[I

    move-result-object v3

    move-object v2, v3

    .line 226
    .local v2, "perm":[I
    move-object v3, v0

    new-instance v4, Lcom/sun/javafx/collections/NonIterableChange$SimplePermutationChange;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    const/4 v6, 0x0

    move-object v7, v0

    invoke-virtual {v7}, Lcom/sun/javafx/collections/ObservableListWrapper;->size()I

    move-result v7

    move-object v8, v2

    move-object v9, v0

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/sun/javafx/collections/NonIterableChange$SimplePermutationChange;-><init>(II[ILjavafx/collections/ObservableList;)V

    invoke-virtual {v3, v4}, Lcom/sun/javafx/collections/ObservableListWrapper;->fireChange(Ljavafx/collections/ListChangeListener$Change;)V

    .line 227
    goto :goto_0
.end method
