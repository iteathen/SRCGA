.class public final Lcom/sun/javafx/collections/ObservableSequentialListWrapper;
.super Ljavafx/collections/ModifiableObservableListBase;
.source "ObservableSequentialListWrapper.java"

# interfaces
.implements Ljavafx/collections/ObservableList;
.implements Lcom/sun/javafx/collections/SortableList;


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
        "<TE;>;"
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
    .line 44
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/ObservableSequentialListWrapper;, "Lcom/sun/javafx/collections/ObservableSequentialListWrapper<TE;>;"
    move-object v1, p1

    .local v1, "list":Ljava/util/List;, "Ljava/util/List<TE;>;"
    move-object v2, v0

    invoke-direct {v2}, Ljavafx/collections/ModifiableObservableListBase;-><init>()V

    .line 45
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/collections/ObservableSequentialListWrapper;->backingList:Ljava/util/List;

    .line 46
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/sun/javafx/collections/ObservableSequentialListWrapper;->elementObserver:Lcom/sun/javafx/collections/ElementObserver;

    .line 47
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
    .line 49
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/ObservableSequentialListWrapper;, "Lcom/sun/javafx/collections/ObservableSequentialListWrapper<TE;>;"
    move-object v1, p1

    .local v1, "list":Ljava/util/List;, "Ljava/util/List<TE;>;"
    move-object v2, p2

    .local v2, "extractor":Ljavafx/util/Callback;, "Ljavafx/util/Callback<TE;[Ljavafx/beans/Observable;>;"
    move-object v5, v0

    invoke-direct {v5}, Ljavafx/collections/ModifiableObservableListBase;-><init>()V

    .line 50
    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Lcom/sun/javafx/collections/ObservableSequentialListWrapper;->backingList:Ljava/util/List;

    .line 51
    move-object v5, v0

    new-instance v6, Lcom/sun/javafx/collections/ElementObserver;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    move-object v8, v2

    new-instance v9, Lcom/sun/javafx/collections/ObservableSequentialListWrapper$1;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    move-object v11, v0

    invoke-direct {v10, v11}, Lcom/sun/javafx/collections/ObservableSequentialListWrapper$1;-><init>(Lcom/sun/javafx/collections/ObservableSequentialListWrapper;)V

    move-object v10, v0

    invoke-direct {v7, v8, v9, v10}, Lcom/sun/javafx/collections/ElementObserver;-><init>(Ljavafx/util/Callback;Ljavafx/util/Callback;Ljavafx/collections/ObservableListBase;)V

    iput-object v6, v5, Lcom/sun/javafx/collections/ObservableSequentialListWrapper;->elementObserver:Lcom/sun/javafx/collections/ElementObserver;

    .line 72
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/collections/ObservableSequentialListWrapper;->backingList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v3, v5

    :goto_0
    move-object v5, v3

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    move-object v5, v3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v4, v5

    .line 73
    .local v4, "e":Ljava/lang/Object;, "TE;"
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/collections/ObservableSequentialListWrapper;->elementObserver:Lcom/sun/javafx/collections/ElementObserver;

    move-object v6, v4

    invoke-virtual {v5, v6}, Lcom/sun/javafx/collections/ElementObserver;->attachListener(Ljava/lang/Object;)V

    .line 74
    goto :goto_0

    .line 75
    .end local v4    # "e":Ljava/lang/Object;, "TE;"
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/sun/javafx/collections/ObservableSequentialListWrapper;)V
    .locals 2

    .prologue
    .line 39
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/collections/ObservableSequentialListWrapper;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/collections/ObservableSequentialListWrapper;->beginChange()V

    return-void
.end method

.method static synthetic access$100(Lcom/sun/javafx/collections/ObservableSequentialListWrapper;)Ljava/util/List;
    .locals 2

    .prologue
    .line 39
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/collections/ObservableSequentialListWrapper;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/collections/ObservableSequentialListWrapper;->backingList:Ljava/util/List;

    move-object v0, v1

    .end local v0    # "x0":Lcom/sun/javafx/collections/ObservableSequentialListWrapper;
    return-object v0
.end method

.method static synthetic access$1000(Lcom/sun/javafx/collections/ObservableSequentialListWrapper;)V
    .locals 2

    .prologue
    .line 39
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/collections/ObservableSequentialListWrapper;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/collections/ObservableSequentialListWrapper;->beginChange()V

    return-void
.end method

.method static synthetic access$1100(Lcom/sun/javafx/collections/ObservableSequentialListWrapper;II)V
    .locals 6

    .prologue
    .line 39
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/collections/ObservableSequentialListWrapper;
    move v1, p1

    .local v1, "x1":I
    move v2, p2

    .local v2, "x2":I
    move-object v3, v0

    move v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/collections/ObservableSequentialListWrapper;->nextAdd(II)V

    return-void
.end method

.method static synthetic access$1200(Lcom/sun/javafx/collections/ObservableSequentialListWrapper;)V
    .locals 2

    .prologue
    .line 39
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/collections/ObservableSequentialListWrapper;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/collections/ObservableSequentialListWrapper;->endChange()V

    return-void
.end method

.method static synthetic access$200(Lcom/sun/javafx/collections/ObservableSequentialListWrapper;I)V
    .locals 4

    .prologue
    .line 39
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/collections/ObservableSequentialListWrapper;
    move v1, p1

    .local v1, "x1":I
    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/javafx/collections/ObservableSequentialListWrapper;->nextUpdate(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/sun/javafx/collections/ObservableSequentialListWrapper;)V
    .locals 2

    .prologue
    .line 39
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/collections/ObservableSequentialListWrapper;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/collections/ObservableSequentialListWrapper;->endChange()V

    return-void
.end method

.method static synthetic access$400(Lcom/sun/javafx/collections/ObservableSequentialListWrapper;)V
    .locals 2

    .prologue
    .line 39
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/collections/ObservableSequentialListWrapper;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/collections/ObservableSequentialListWrapper;->beginChange()V

    return-void
.end method

.method static synthetic access$500(Lcom/sun/javafx/collections/ObservableSequentialListWrapper;ILjava/lang/Object;)V
    .locals 6

    .prologue
    .line 39
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/collections/ObservableSequentialListWrapper;
    move v1, p1

    .local v1, "x1":I
    move-object v2, p2

    .local v2, "x2":Ljava/lang/Object;
    move-object v3, v0

    move v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/collections/ObservableSequentialListWrapper;->nextRemove(ILjava/lang/Object;)V

    return-void
.end method

.method static synthetic access$600(Lcom/sun/javafx/collections/ObservableSequentialListWrapper;)V
    .locals 2

    .prologue
    .line 39
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/collections/ObservableSequentialListWrapper;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/collections/ObservableSequentialListWrapper;->endChange()V

    return-void
.end method

.method static synthetic access$700(Lcom/sun/javafx/collections/ObservableSequentialListWrapper;)V
    .locals 2

    .prologue
    .line 39
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/collections/ObservableSequentialListWrapper;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/collections/ObservableSequentialListWrapper;->beginChange()V

    return-void
.end method

.method static synthetic access$800(Lcom/sun/javafx/collections/ObservableSequentialListWrapper;ILjava/lang/Object;)V
    .locals 6

    .prologue
    .line 39
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/collections/ObservableSequentialListWrapper;
    move v1, p1

    .local v1, "x1":I
    move-object v2, p2

    .local v2, "x2":Ljava/lang/Object;
    move-object v3, v0

    move v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/collections/ObservableSequentialListWrapper;->nextSet(ILjava/lang/Object;)V

    return-void
.end method

.method static synthetic access$900(Lcom/sun/javafx/collections/ObservableSequentialListWrapper;)V
    .locals 2

    .prologue
    .line 39
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/collections/ObservableSequentialListWrapper;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/collections/ObservableSequentialListWrapper;->endChange()V

    return-void
.end method

.method private getSortHelper()Lcom/sun/javafx/collections/SortHelper;
    .locals 5

    .prologue
    .line 253
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/ObservableSequentialListWrapper;, "Lcom/sun/javafx/collections/ObservableSequentialListWrapper<TE;>;"
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/collections/ObservableSequentialListWrapper;->helper:Lcom/sun/javafx/collections/SortHelper;

    if-nez v1, :cond_0

    .line 254
    move-object v1, v0

    new-instance v2, Lcom/sun/javafx/collections/SortHelper;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Lcom/sun/javafx/collections/SortHelper;-><init>()V

    iput-object v2, v1, Lcom/sun/javafx/collections/ObservableSequentialListWrapper;->helper:Lcom/sun/javafx/collections/SortHelper;

    .line 256
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/collections/ObservableSequentialListWrapper;->helper:Lcom/sun/javafx/collections/SortHelper;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/collections/ObservableSequentialListWrapper;, "Lcom/sun/javafx/collections/ObservableSequentialListWrapper<TE;>;"
    return-object v0
.end method


# virtual methods
.method public addAll(ILjava/util/Collection;)Z
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection",
            "<+TE;>;)Z"
        }
    .end annotation

    .prologue
    .line 180
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/ObservableSequentialListWrapper;, "Lcom/sun/javafx/collections/ObservableSequentialListWrapper<TE;>;"
    move v1, p1

    .local v1, "index":I
    move-object v2, p2

    .local v2, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    move-object v6, v0

    :try_start_0
    invoke-virtual {v6}, Lcom/sun/javafx/collections/ObservableSequentialListWrapper;->beginChange()V

    .line 181
    const/4 v6, 0x0

    move v3, v6

    .line 182
    .local v3, "modified":Z
    move-object v6, v0

    move v7, v1

    invoke-virtual {v6, v7}, Lcom/sun/javafx/collections/ObservableSequentialListWrapper;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v6

    move-object v4, v6

    .line 183
    .local v4, "e1":Ljava/util/ListIterator;, "Ljava/util/ListIterator<TE;>;"
    move-object v6, v2

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-object v5, v6

    .line 184
    .local v5, "e2":Ljava/util/Iterator;, "Ljava/util/Iterator<+TE;>;"
    :goto_0
    move-object v6, v5

    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 185
    move-object v6, v4

    move-object v7, v5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    .line 186
    const/4 v6, 0x1

    move v3, v6

    goto :goto_0

    .line 188
    :cond_0
    move-object v6, v0

    invoke-virtual {v6}, Lcom/sun/javafx/collections/ObservableSequentialListWrapper;->endChange()V
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    .line 189
    move v6, v3

    move v0, v6

    .end local v0    # "this":Lcom/sun/javafx/collections/ObservableSequentialListWrapper;, "Lcom/sun/javafx/collections/ObservableSequentialListWrapper<TE;>;"
    return v0

    .line 190
    .end local v3    # "modified":Z
    .end local v4    # "e1":Ljava/util/ListIterator;, "Ljava/util/ListIterator<TE;>;"
    .end local v5    # "e2":Ljava/util/Iterator;, "Ljava/util/Iterator<+TE;>;"
    .restart local v0    # "this":Lcom/sun/javafx/collections/ObservableSequentialListWrapper;, "Lcom/sun/javafx/collections/ObservableSequentialListWrapper<TE;>;"
    :catch_0
    move-exception v6

    move-object v3, v6

    .line 191
    .local v3, "exc":Ljava/util/NoSuchElementException;
    new-instance v6, Ljava/lang/IndexOutOfBoundsException;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v10, v8

    move-object v8, v10

    move-object v9, v10

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Index: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move v9, v1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    .line 79
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/ObservableSequentialListWrapper;, "Lcom/sun/javafx/collections/ObservableSequentialListWrapper<TE;>;"
    move-object v1, p1

    .local v1, "o":Ljava/lang/Object;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/collections/ObservableSequentialListWrapper;->backingList:Ljava/util/List;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    move v0, v2

    .end local v0    # "this":Lcom/sun/javafx/collections/ObservableSequentialListWrapper;, "Lcom/sun/javafx/collections/ObservableSequentialListWrapper<TE;>;"
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
    .line 84
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/ObservableSequentialListWrapper;, "Lcom/sun/javafx/collections/ObservableSequentialListWrapper<TE;>;"
    move-object v1, p1

    .local v1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/collections/ObservableSequentialListWrapper;->backingList:Ljava/util/List;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v2

    move v0, v2

    .end local v0    # "this":Lcom/sun/javafx/collections/ObservableSequentialListWrapper;, "Lcom/sun/javafx/collections/ObservableSequentialListWrapper<TE;>;"
    return v0
.end method

.method protected doAdd(ILjava/lang/Object;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .prologue
    .line 203
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/ObservableSequentialListWrapper;, "Lcom/sun/javafx/collections/ObservableSequentialListWrapper<TE;>;"
    move v1, p1

    .local v1, "index":I
    move-object v2, p2

    .local v2, "element":Ljava/lang/Object;, "TE;"
    move-object v4, v0

    :try_start_0
    iget-object v4, v4, Lcom/sun/javafx/collections/ObservableSequentialListWrapper;->backingList:Ljava/util/List;

    move v5, v1

    invoke-interface {v4, v5}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v4

    move-object v5, v2

    invoke-interface {v4, v5}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    .line 206
    .line 207
    return-void

    .line 204
    :catch_0
    move-exception v4

    move-object v3, v4

    .line 205
    .local v3, "exc":Ljava/util/NoSuchElementException;
    new-instance v4, Ljava/lang/IndexOutOfBoundsException;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Index: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method protected doRemove(I)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 224
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/ObservableSequentialListWrapper;, "Lcom/sun/javafx/collections/ObservableSequentialListWrapper<TE;>;"
    move v1, p1

    .local v1, "index":I
    move-object v4, v0

    :try_start_0
    iget-object v4, v4, Lcom/sun/javafx/collections/ObservableSequentialListWrapper;->backingList:Ljava/util/List;

    move v5, v1

    invoke-interface {v4, v5}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v4

    move-object v2, v4

    .line 225
    .local v2, "e":Ljava/util/ListIterator;, "Ljava/util/ListIterator<TE;>;"
    move-object v4, v2

    invoke-interface {v4}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v3, v4

    .line 226
    .local v3, "outCast":Ljava/lang/Object;, "TE;"
    move-object v4, v2

    invoke-interface {v4}, Ljava/util/ListIterator;->remove()V
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    .line 227
    move-object v4, v3

    move-object v0, v4

    .end local v0    # "this":Lcom/sun/javafx/collections/ObservableSequentialListWrapper;, "Lcom/sun/javafx/collections/ObservableSequentialListWrapper<TE;>;"
    return-object v0

    .line 228
    .end local v2    # "e":Ljava/util/ListIterator;, "Ljava/util/ListIterator<TE;>;"
    .end local v3    # "outCast":Ljava/lang/Object;, "TE;"
    .restart local v0    # "this":Lcom/sun/javafx/collections/ObservableSequentialListWrapper;, "Lcom/sun/javafx/collections/ObservableSequentialListWrapper<TE;>;"
    :catch_0
    move-exception v4

    move-object v2, v4

    .line 229
    .local v2, "exc":Ljava/util/NoSuchElementException;
    new-instance v4, Ljava/lang/IndexOutOfBoundsException;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Index: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method protected doSet(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    .prologue
    .line 212
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/ObservableSequentialListWrapper;, "Lcom/sun/javafx/collections/ObservableSequentialListWrapper<TE;>;"
    move v1, p1

    .local v1, "index":I
    move-object v2, p2

    .local v2, "element":Ljava/lang/Object;, "TE;"
    move-object v5, v0

    :try_start_0
    iget-object v5, v5, Lcom/sun/javafx/collections/ObservableSequentialListWrapper;->backingList:Ljava/util/List;

    move v6, v1

    invoke-interface {v5, v6}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v5

    move-object v3, v5

    .line 213
    .local v3, "e":Ljava/util/ListIterator;, "Ljava/util/ListIterator<TE;>;"
    move-object v5, v3

    invoke-interface {v5}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v4, v5

    .line 214
    .local v4, "oldVal":Ljava/lang/Object;, "TE;"
    move-object v5, v3

    move-object v6, v2

    invoke-interface {v5, v6}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    .line 215
    move-object v5, v4

    move-object v0, v5

    .end local v0    # "this":Lcom/sun/javafx/collections/ObservableSequentialListWrapper;, "Lcom/sun/javafx/collections/ObservableSequentialListWrapper<TE;>;"
    return-object v0

    .line 216
    .end local v3    # "e":Ljava/util/ListIterator;, "Ljava/util/ListIterator<TE;>;"
    .end local v4    # "oldVal":Ljava/lang/Object;, "TE;"
    .restart local v0    # "this":Lcom/sun/javafx/collections/ObservableSequentialListWrapper;, "Lcom/sun/javafx/collections/ObservableSequentialListWrapper<TE;>;"
    :catch_0
    move-exception v5

    move-object v3, v5

    .line 217
    .local v3, "exc":Ljava/util/NoSuchElementException;
    new-instance v5, Ljava/lang/IndexOutOfBoundsException;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v9, v7

    move-object v7, v9

    move-object v8, v9

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Index: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move v8, v1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public get(I)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 171
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/ObservableSequentialListWrapper;, "Lcom/sun/javafx/collections/ObservableSequentialListWrapper<TE;>;"
    move v1, p1

    .local v1, "index":I
    move-object v3, v0

    :try_start_0
    iget-object v3, v3, Lcom/sun/javafx/collections/ObservableSequentialListWrapper;->backingList:Ljava/util/List;

    move v4, v1

    invoke-interface {v3, v4}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/ListIterator;->next()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lcom/sun/javafx/collections/ObservableSequentialListWrapper;, "Lcom/sun/javafx/collections/ObservableSequentialListWrapper<TE;>;"
    return-object v0

    .line 172
    .restart local v0    # "this":Lcom/sun/javafx/collections/ObservableSequentialListWrapper;, "Lcom/sun/javafx/collections/ObservableSequentialListWrapper<TE;>;"
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 173
    .local v2, "exc":Ljava/util/NoSuchElementException;
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Index: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 4

    .prologue
    .line 89
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/ObservableSequentialListWrapper;, "Lcom/sun/javafx/collections/ObservableSequentialListWrapper<TE;>;"
    move-object v1, p1

    .local v1, "o":Ljava/lang/Object;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/collections/ObservableSequentialListWrapper;->backingList:Ljava/util/List;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    move v0, v2

    .end local v0    # "this":Lcom/sun/javafx/collections/ObservableSequentialListWrapper;, "Lcom/sun/javafx/collections/ObservableSequentialListWrapper<TE;>;"
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
    .line 165
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/ObservableSequentialListWrapper;, "Lcom/sun/javafx/collections/ObservableSequentialListWrapper<TE;>;"
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/collections/ObservableSequentialListWrapper;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/collections/ObservableSequentialListWrapper;, "Lcom/sun/javafx/collections/ObservableSequentialListWrapper<TE;>;"
    return-object v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .locals 4

    .prologue
    .line 94
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/ObservableSequentialListWrapper;, "Lcom/sun/javafx/collections/ObservableSequentialListWrapper<TE;>;"
    move-object v1, p1

    .local v1, "o":Ljava/lang/Object;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/collections/ObservableSequentialListWrapper;->backingList:Ljava/util/List;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/List;->lastIndexOf(Ljava/lang/Object;)I

    move-result v2

    move v0, v2

    .end local v0    # "this":Lcom/sun/javafx/collections/ObservableSequentialListWrapper;, "Lcom/sun/javafx/collections/ObservableSequentialListWrapper<TE;>;"
    return v0
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 99
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/ObservableSequentialListWrapper;, "Lcom/sun/javafx/collections/ObservableSequentialListWrapper<TE;>;"
    move v1, p1

    .local v1, "index":I
    new-instance v2, Lcom/sun/javafx/collections/ObservableSequentialListWrapper$2;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    move v5, v1

    invoke-direct {v3, v4, v5}, Lcom/sun/javafx/collections/ObservableSequentialListWrapper$2;-><init>(Lcom/sun/javafx/collections/ObservableSequentialListWrapper;I)V

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/collections/ObservableSequentialListWrapper;, "Lcom/sun/javafx/collections/ObservableSequentialListWrapper<TE;>;"
    return-object v0
.end method

.method public size()I
    .locals 2

    .prologue
    .line 197
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/ObservableSequentialListWrapper;, "Lcom/sun/javafx/collections/ObservableSequentialListWrapper<TE;>;"
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/collections/ObservableSequentialListWrapper;->backingList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/collections/ObservableSequentialListWrapper;, "Lcom/sun/javafx/collections/ObservableSequentialListWrapper<TE;>;"
    return v0
.end method

.method public sort()V
    .locals 10

    .prologue
    .line 236
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/ObservableSequentialListWrapper;, "Lcom/sun/javafx/collections/ObservableSequentialListWrapper<TE;>;"
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/collections/ObservableSequentialListWrapper;->backingList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 237
    .line 241
    :goto_0
    return-void

    .line 239
    :cond_0
    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/collections/ObservableSequentialListWrapper;->getSortHelper()Lcom/sun/javafx/collections/SortHelper;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/collections/ObservableSequentialListWrapper;->backingList:Ljava/util/List;

    invoke-virtual {v2, v3}, Lcom/sun/javafx/collections/SortHelper;->sort(Ljava/util/List;)[I

    move-result-object v2

    move-object v1, v2

    .line 240
    .local v1, "perm":[I
    move-object v2, v0

    new-instance v3, Lcom/sun/javafx/collections/NonIterableChange$SimplePermutationChange;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    const/4 v5, 0x0

    move-object v6, v0

    invoke-virtual {v6}, Lcom/sun/javafx/collections/ObservableSequentialListWrapper;->size()I

    move-result v6

    move-object v7, v1

    move-object v8, v0

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/sun/javafx/collections/NonIterableChange$SimplePermutationChange;-><init>(II[ILjavafx/collections/ObservableList;)V

    invoke-virtual {v2, v3}, Lcom/sun/javafx/collections/ObservableSequentialListWrapper;->fireChange(Ljavafx/collections/ListChangeListener$Change;)V

    .line 241
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
    .line 245
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/ObservableSequentialListWrapper;, "Lcom/sun/javafx/collections/ObservableSequentialListWrapper<TE;>;"
    move-object v1, p1

    .local v1, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TE;>;"
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/collections/ObservableSequentialListWrapper;->backingList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 246
    .line 250
    :goto_0
    return-void

    .line 248
    :cond_0
    move-object v3, v0

    invoke-direct {v3}, Lcom/sun/javafx/collections/ObservableSequentialListWrapper;->getSortHelper()Lcom/sun/javafx/collections/SortHelper;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/collections/ObservableSequentialListWrapper;->backingList:Ljava/util/List;

    move-object v5, v1

    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/collections/SortHelper;->sort(Ljava/util/List;Ljava/util/Comparator;)[I

    move-result-object v3

    move-object v2, v3

    .line 249
    .local v2, "perm":[I
    move-object v3, v0

    new-instance v4, Lcom/sun/javafx/collections/NonIterableChange$SimplePermutationChange;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    const/4 v6, 0x0

    move-object v7, v0

    invoke-virtual {v7}, Lcom/sun/javafx/collections/ObservableSequentialListWrapper;->size()I

    move-result v7

    move-object v8, v2

    move-object v9, v0

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/sun/javafx/collections/NonIterableChange$SimplePermutationChange;-><init>(II[ILjavafx/collections/ObservableList;)V

    invoke-virtual {v3, v4}, Lcom/sun/javafx/collections/ObservableSequentialListWrapper;->fireChange(Ljavafx/collections/ListChangeListener$Change;)V

    .line 250
    goto :goto_0
.end method
