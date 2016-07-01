.class public final Lcom/sun/javafx/collections/ElementObservableListDecorator;
.super Ljavafx/collections/ObservableListBase;
.source "ElementObservableListDecorator.java"

# interfaces
.implements Ljavafx/collections/ObservableList;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljavafx/collections/ObservableListBase",
        "<TE;>;",
        "Ljavafx/collections/ObservableList",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private final decoratedList:Ljavafx/collections/ObservableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/collections/ObservableList",
            "<TE;>;"
        }
    .end annotation
.end field

.field private final listener:Ljavafx/collections/ListChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/collections/ListChangeListener",
            "<TE;>;"
        }
    .end annotation
.end field

.field private observer:Lcom/sun/javafx/collections/ElementObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sun/javafx/collections/ElementObserver",
            "<TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavafx/collections/ObservableList;Ljavafx/util/Callback;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/ObservableList",
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

    .local v0, "this":Lcom/sun/javafx/collections/ElementObservableListDecorator;, "Lcom/sun/javafx/collections/ElementObservableListDecorator<TE;>;"
    move-object v1, p1

    .local v1, "decorated":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<TE;>;"
    move-object v2, p2

    .local v2, "extractor":Ljavafx/util/Callback;, "Ljavafx/util/Callback<TE;[Ljavafx/beans/Observable;>;"
    move-object v5, v0

    invoke-direct {v5}, Ljavafx/collections/ObservableListBase;-><init>()V

    .line 50
    move-object v5, v0

    new-instance v6, Lcom/sun/javafx/collections/ElementObserver;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    move-object v8, v2

    new-instance v9, Lcom/sun/javafx/collections/ElementObservableListDecorator$1;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    move-object v11, v0

    invoke-direct {v10, v11}, Lcom/sun/javafx/collections/ElementObservableListDecorator$1;-><init>(Lcom/sun/javafx/collections/ElementObservableListDecorator;)V

    move-object v10, v0

    invoke-direct {v7, v8, v9, v10}, Lcom/sun/javafx/collections/ElementObserver;-><init>(Ljavafx/util/Callback;Ljavafx/util/Callback;Ljavafx/collections/ObservableListBase;)V

    iput-object v6, v5, Lcom/sun/javafx/collections/ElementObservableListDecorator;->observer:Lcom/sun/javafx/collections/ElementObserver;

    .line 80
    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Lcom/sun/javafx/collections/ElementObservableListDecorator;->decoratedList:Ljavafx/collections/ObservableList;

    .line 81
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/collections/ElementObservableListDecorator;->decoratedList:Ljavafx/collections/ObservableList;

    invoke-interface {v5}, Ljavafx/collections/ObservableList;->size()I

    move-result v5

    move v3, v5

    .line 82
    .local v3, "sz":I
    const/4 v5, 0x0

    move v4, v5

    .local v4, "i":I
    :goto_0
    move v5, v4

    move v6, v3

    if-ge v5, v6, :cond_0

    .line 83
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/collections/ElementObservableListDecorator;->observer:Lcom/sun/javafx/collections/ElementObserver;

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/collections/ElementObservableListDecorator;->decoratedList:Ljavafx/collections/ObservableList;

    move v7, v4

    invoke-interface {v6, v7}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sun/javafx/collections/ElementObserver;->attachListener(Ljava/lang/Object;)V

    .line 82
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 85
    :cond_0
    move-object v5, v0

    new-instance v6, Lcom/sun/javafx/collections/ElementObservableListDecorator$2;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    move-object v8, v0

    invoke-direct {v7, v8}, Lcom/sun/javafx/collections/ElementObservableListDecorator$2;-><init>(Lcom/sun/javafx/collections/ElementObservableListDecorator;)V

    iput-object v6, v5, Lcom/sun/javafx/collections/ElementObservableListDecorator;->listener:Ljavafx/collections/ListChangeListener;

    .line 112
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/collections/ElementObservableListDecorator;->decoratedList:Ljavafx/collections/ObservableList;

    new-instance v6, Ljavafx/collections/WeakListChangeListener;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/collections/ElementObservableListDecorator;->listener:Ljavafx/collections/ListChangeListener;

    invoke-direct {v7, v8}, Ljavafx/collections/WeakListChangeListener;-><init>(Ljavafx/collections/ListChangeListener;)V

    invoke-interface {v5, v6}, Ljavafx/collections/ObservableList;->addListener(Ljavafx/collections/ListChangeListener;)V

    .line 113
    return-void
.end method

.method static synthetic access$000(Lcom/sun/javafx/collections/ElementObservableListDecorator;)V
    .locals 2

    .prologue
    .line 41
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/collections/ElementObservableListDecorator;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/collections/ElementObservableListDecorator;->beginChange()V

    return-void
.end method

.method static synthetic access$100(Lcom/sun/javafx/collections/ElementObservableListDecorator;)Ljavafx/collections/ObservableList;
    .locals 2

    .prologue
    .line 41
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/collections/ElementObservableListDecorator;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/collections/ElementObservableListDecorator;->decoratedList:Ljavafx/collections/ObservableList;

    move-object v0, v1

    .end local v0    # "x0":Lcom/sun/javafx/collections/ElementObservableListDecorator;
    return-object v0
.end method

.method static synthetic access$200(Lcom/sun/javafx/collections/ElementObservableListDecorator;I)V
    .locals 4

    .prologue
    .line 41
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/collections/ElementObservableListDecorator;
    move v1, p1

    .local v1, "x1":I
    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/javafx/collections/ElementObservableListDecorator;->nextUpdate(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/sun/javafx/collections/ElementObservableListDecorator;I)V
    .locals 4

    .prologue
    .line 41
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/collections/ElementObservableListDecorator;
    move v1, p1

    .local v1, "x1":I
    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/javafx/collections/ElementObservableListDecorator;->nextUpdate(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/sun/javafx/collections/ElementObservableListDecorator;)V
    .locals 2

    .prologue
    .line 41
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/collections/ElementObservableListDecorator;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/collections/ElementObservableListDecorator;->endChange()V

    return-void
.end method

.method static synthetic access$500(Lcom/sun/javafx/collections/ElementObservableListDecorator;)Lcom/sun/javafx/collections/ElementObserver;
    .locals 2

    .prologue
    .line 41
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/collections/ElementObservableListDecorator;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/collections/ElementObservableListDecorator;->observer:Lcom/sun/javafx/collections/ElementObserver;

    move-object v0, v1

    .end local v0    # "x0":Lcom/sun/javafx/collections/ElementObservableListDecorator;
    return-object v0
.end method

.method static synthetic access$600(Lcom/sun/javafx/collections/ElementObservableListDecorator;Ljavafx/collections/ListChangeListener$Change;)V
    .locals 4

    .prologue
    .line 41
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/collections/ElementObservableListDecorator;
    move-object v1, p1

    .local v1, "x1":Ljavafx/collections/ListChangeListener$Change;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/javafx/collections/ElementObservableListDecorator;->fireChange(Ljavafx/collections/ListChangeListener$Change;)V

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
    .line 222
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/ElementObservableListDecorator;, "Lcom/sun/javafx/collections/ElementObservableListDecorator<TE;>;"
    move v1, p1

    .local v1, "index":I
    move-object v2, p2

    .local v2, "element":Ljava/lang/Object;, "TE;"
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/collections/ElementObservableListDecorator;->decoratedList:Ljavafx/collections/ObservableList;

    move v4, v1

    move-object v5, v2

    invoke-interface {v3, v4, v5}, Ljavafx/collections/ObservableList;->add(ILjava/lang/Object;)V

    .line 223
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
    .line 227
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/ElementObservableListDecorator;, "Lcom/sun/javafx/collections/ElementObservableListDecorator<TE;>;"
    move-object v1, p1

    .local v1, "e":Ljava/lang/Object;, "TE;"
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/collections/ElementObservableListDecorator;->decoratedList:Ljavafx/collections/ObservableList;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v2

    move v0, v2

    .end local v0    # "this":Lcom/sun/javafx/collections/ElementObservableListDecorator;, "Lcom/sun/javafx/collections/ElementObservableListDecorator<TE;>;"
    return v0
.end method

.method public addAll(ILjava/util/Collection;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection",
            "<+TE;>;)Z"
        }
    .end annotation

    .prologue
    .line 212
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/ElementObservableListDecorator;, "Lcom/sun/javafx/collections/ElementObservableListDecorator<TE;>;"
    move v1, p1

    .local v1, "index":I
    move-object v2, p2

    .local v2, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/collections/ElementObservableListDecorator;->decoratedList:Ljavafx/collections/ObservableList;

    move v4, v1

    move-object v5, v2

    invoke-interface {v3, v4, v5}, Ljavafx/collections/ObservableList;->addAll(ILjava/util/Collection;)Z

    move-result v3

    move v0, v3

    .end local v0    # "this":Lcom/sun/javafx/collections/ElementObservableListDecorator;, "Lcom/sun/javafx/collections/ElementObservableListDecorator<TE;>;"
    return v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TE;>;)Z"
        }
    .end annotation

    .prologue
    .line 217
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/ElementObservableListDecorator;, "Lcom/sun/javafx/collections/ElementObservableListDecorator<TE;>;"
    move-object v1, p1

    .local v1, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/collections/ElementObservableListDecorator;->decoratedList:Ljavafx/collections/ObservableList;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljavafx/collections/ObservableList;->addAll(Ljava/util/Collection;)Z

    move-result v2

    move v0, v2

    .end local v0    # "this":Lcom/sun/javafx/collections/ElementObservableListDecorator;, "Lcom/sun/javafx/collections/ElementObservableListDecorator<TE;>;"
    return v0
.end method

.method public varargs addAll([Ljava/lang/Object;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TE;)Z"
        }
    .end annotation

    .prologue
    .line 257
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/ElementObservableListDecorator;, "Lcom/sun/javafx/collections/ElementObservableListDecorator<TE;>;"
    move-object v1, p1

    .local v1, "elements":[Ljava/lang/Object;, "[TE;"
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/collections/ElementObservableListDecorator;->decoratedList:Ljavafx/collections/ObservableList;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljavafx/collections/ObservableList;->addAll([Ljava/lang/Object;)Z

    move-result v2

    move v0, v2

    .end local v0    # "this":Lcom/sun/javafx/collections/ElementObservableListDecorator;, "Lcom/sun/javafx/collections/ElementObservableListDecorator<TE;>;"
    return v0
.end method

.method public clear()V
    .locals 2

    .prologue
    .line 207
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/ElementObservableListDecorator;, "Lcom/sun/javafx/collections/ElementObservableListDecorator<TE;>;"
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/collections/ElementObservableListDecorator;->decoratedList:Ljavafx/collections/ObservableList;

    invoke-interface {v1}, Ljavafx/collections/ObservableList;->clear()V

    .line 208
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    .line 202
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/ElementObservableListDecorator;, "Lcom/sun/javafx/collections/ElementObservableListDecorator<TE;>;"
    move-object v1, p1

    .local v1, "o":Ljava/lang/Object;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/collections/ElementObservableListDecorator;->decoratedList:Ljavafx/collections/ObservableList;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljavafx/collections/ObservableList;->contains(Ljava/lang/Object;)Z

    move-result v2

    move v0, v2

    .end local v0    # "this":Lcom/sun/javafx/collections/ElementObservableListDecorator;, "Lcom/sun/javafx/collections/ElementObservableListDecorator<TE;>;"
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
    .line 197
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/ElementObservableListDecorator;, "Lcom/sun/javafx/collections/ElementObservableListDecorator<TE;>;"
    move-object v1, p1

    .local v1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/collections/ElementObservableListDecorator;->decoratedList:Ljavafx/collections/ObservableList;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljavafx/collections/ObservableList;->containsAll(Ljava/util/Collection;)Z

    move-result v2

    move v0, v2

    .end local v0    # "this":Lcom/sun/javafx/collections/ElementObservableListDecorator;, "Lcom/sun/javafx/collections/ElementObservableListDecorator<TE;>;"
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
    .line 192
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/ElementObservableListDecorator;, "Lcom/sun/javafx/collections/ElementObservableListDecorator<TE;>;"
    move v1, p1

    .local v1, "index":I
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/collections/ElementObservableListDecorator;->decoratedList:Ljavafx/collections/ObservableList;

    move v3, v1

    invoke-interface {v2, v3}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/collections/ElementObservableListDecorator;, "Lcom/sun/javafx/collections/ElementObservableListDecorator<TE;>;"
    return-object v0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 4

    .prologue
    .line 187
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/ElementObservableListDecorator;, "Lcom/sun/javafx/collections/ElementObservableListDecorator<TE;>;"
    move-object v1, p1

    .local v1, "o":Ljava/lang/Object;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/collections/ElementObservableListDecorator;->decoratedList:Ljavafx/collections/ObservableList;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljavafx/collections/ObservableList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    move v0, v2

    .end local v0    # "this":Lcom/sun/javafx/collections/ElementObservableListDecorator;, "Lcom/sun/javafx/collections/ElementObservableListDecorator<TE;>;"
    return v0
.end method

.method public isEmpty()Z
    .locals 2

    .prologue
    .line 182
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/ElementObservableListDecorator;, "Lcom/sun/javafx/collections/ElementObservableListDecorator<TE;>;"
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/collections/ElementObservableListDecorator;->decoratedList:Ljavafx/collections/ObservableList;

    invoke-interface {v1}, Ljavafx/collections/ObservableList;->isEmpty()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/collections/ElementObservableListDecorator;, "Lcom/sun/javafx/collections/ElementObservableListDecorator<TE;>;"
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
    .line 177
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/ElementObservableListDecorator;, "Lcom/sun/javafx/collections/ElementObservableListDecorator<TE;>;"
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/collections/ElementObservableListDecorator;->decoratedList:Ljavafx/collections/ObservableList;

    invoke-interface {v1}, Ljavafx/collections/ObservableList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/collections/ElementObservableListDecorator;, "Lcom/sun/javafx/collections/ElementObservableListDecorator<TE;>;"
    return-object v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .locals 4

    .prologue
    .line 172
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/ElementObservableListDecorator;, "Lcom/sun/javafx/collections/ElementObservableListDecorator<TE;>;"
    move-object v1, p1

    .local v1, "o":Ljava/lang/Object;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/collections/ElementObservableListDecorator;->decoratedList:Ljavafx/collections/ObservableList;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljavafx/collections/ObservableList;->lastIndexOf(Ljava/lang/Object;)I

    move-result v2

    move v0, v2

    .end local v0    # "this":Lcom/sun/javafx/collections/ElementObservableListDecorator;, "Lcom/sun/javafx/collections/ElementObservableListDecorator<TE;>;"
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
    .line 167
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/ElementObservableListDecorator;, "Lcom/sun/javafx/collections/ElementObservableListDecorator<TE;>;"
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/collections/ElementObservableListDecorator;->decoratedList:Ljavafx/collections/ObservableList;

    invoke-interface {v1}, Ljavafx/collections/ObservableList;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/collections/ElementObservableListDecorator;, "Lcom/sun/javafx/collections/ElementObservableListDecorator<TE;>;"
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
    .line 162
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/ElementObservableListDecorator;, "Lcom/sun/javafx/collections/ElementObservableListDecorator<TE;>;"
    move v1, p1

    .local v1, "index":I
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/collections/ElementObservableListDecorator;->decoratedList:Ljavafx/collections/ObservableList;

    move v3, v1

    invoke-interface {v2, v3}, Ljavafx/collections/ObservableList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/collections/ElementObservableListDecorator;, "Lcom/sun/javafx/collections/ElementObservableListDecorator<TE;>;"
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
    .line 152
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/ElementObservableListDecorator;, "Lcom/sun/javafx/collections/ElementObservableListDecorator<TE;>;"
    move v1, p1

    .local v1, "index":I
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/collections/ElementObservableListDecorator;->decoratedList:Ljavafx/collections/ObservableList;

    move v3, v1

    invoke-interface {v2, v3}, Ljavafx/collections/ObservableList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/collections/ElementObservableListDecorator;, "Lcom/sun/javafx/collections/ElementObservableListDecorator<TE;>;"
    return-object v0
.end method

.method public remove(II)V
    .locals 6

    .prologue
    .line 252
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/ElementObservableListDecorator;, "Lcom/sun/javafx/collections/ElementObservableListDecorator<TE;>;"
    move v1, p1

    .local v1, "from":I
    move v2, p2

    .local v2, "to":I
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/collections/ElementObservableListDecorator;->decoratedList:Ljavafx/collections/ObservableList;

    move v4, v1

    move v5, v2

    invoke-interface {v3, v4, v5}, Ljavafx/collections/ObservableList;->remove(II)V

    .line 253
    return-void
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    .line 157
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/ElementObservableListDecorator;, "Lcom/sun/javafx/collections/ElementObservableListDecorator<TE;>;"
    move-object v1, p1

    .local v1, "o":Ljava/lang/Object;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/collections/ElementObservableListDecorator;->decoratedList:Ljavafx/collections/ObservableList;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljavafx/collections/ObservableList;->remove(Ljava/lang/Object;)Z

    move-result v2

    move v0, v2

    .end local v0    # "this":Lcom/sun/javafx/collections/ElementObservableListDecorator;, "Lcom/sun/javafx/collections/ElementObservableListDecorator<TE;>;"
    return v0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 147
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/ElementObservableListDecorator;, "Lcom/sun/javafx/collections/ElementObservableListDecorator<TE;>;"
    move-object v1, p1

    .local v1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/collections/ElementObservableListDecorator;->decoratedList:Ljavafx/collections/ObservableList;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljavafx/collections/ObservableList;->removeAll(Ljava/util/Collection;)Z

    move-result v2

    move v0, v2

    .end local v0    # "this":Lcom/sun/javafx/collections/ElementObservableListDecorator;, "Lcom/sun/javafx/collections/ElementObservableListDecorator<TE;>;"
    return v0
.end method

.method public varargs removeAll([Ljava/lang/Object;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TE;)Z"
        }
    .end annotation

    .prologue
    .line 247
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/ElementObservableListDecorator;, "Lcom/sun/javafx/collections/ElementObservableListDecorator<TE;>;"
    move-object v1, p1

    .local v1, "elements":[Ljava/lang/Object;, "[TE;"
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/collections/ElementObservableListDecorator;->decoratedList:Ljavafx/collections/ObservableList;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljavafx/collections/ObservableList;->removeAll([Ljava/lang/Object;)Z

    move-result v2

    move v0, v2

    .end local v0    # "this":Lcom/sun/javafx/collections/ElementObservableListDecorator;, "Lcom/sun/javafx/collections/ElementObservableListDecorator<TE;>;"
    return v0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 142
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/ElementObservableListDecorator;, "Lcom/sun/javafx/collections/ElementObservableListDecorator<TE;>;"
    move-object v1, p1

    .local v1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/collections/ElementObservableListDecorator;->decoratedList:Ljavafx/collections/ObservableList;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljavafx/collections/ObservableList;->retainAll(Ljava/util/Collection;)Z

    move-result v2

    move v0, v2

    .end local v0    # "this":Lcom/sun/javafx/collections/ElementObservableListDecorator;, "Lcom/sun/javafx/collections/ElementObservableListDecorator<TE;>;"
    return v0
.end method

.method public varargs retainAll([Ljava/lang/Object;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TE;)Z"
        }
    .end annotation

    .prologue
    .line 242
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/ElementObservableListDecorator;, "Lcom/sun/javafx/collections/ElementObservableListDecorator<TE;>;"
    move-object v1, p1

    .local v1, "elements":[Ljava/lang/Object;, "[TE;"
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/collections/ElementObservableListDecorator;->decoratedList:Ljavafx/collections/ObservableList;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljavafx/collections/ObservableList;->retainAll([Ljava/lang/Object;)Z

    move-result v2

    move v0, v2

    .end local v0    # "this":Lcom/sun/javafx/collections/ElementObservableListDecorator;, "Lcom/sun/javafx/collections/ElementObservableListDecorator<TE;>;"
    return v0
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    .prologue
    .line 137
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/ElementObservableListDecorator;, "Lcom/sun/javafx/collections/ElementObservableListDecorator<TE;>;"
    move v1, p1

    .local v1, "index":I
    move-object v2, p2

    .local v2, "element":Ljava/lang/Object;, "TE;"
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/collections/ElementObservableListDecorator;->decoratedList:Ljavafx/collections/ObservableList;

    move v4, v1

    move-object v5, v2

    invoke-interface {v3, v4, v5}, Ljavafx/collections/ObservableList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lcom/sun/javafx/collections/ElementObservableListDecorator;, "Lcom/sun/javafx/collections/ElementObservableListDecorator<TE;>;"
    return-object v0
.end method

.method public setAll(Ljava/util/Collection;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TE;>;)Z"
        }
    .end annotation

    .prologue
    .line 232
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/ElementObservableListDecorator;, "Lcom/sun/javafx/collections/ElementObservableListDecorator<TE;>;"
    move-object v1, p1

    .local v1, "col":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/collections/ElementObservableListDecorator;->decoratedList:Ljavafx/collections/ObservableList;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljavafx/collections/ObservableList;->setAll(Ljava/util/Collection;)Z

    move-result v2

    move v0, v2

    .end local v0    # "this":Lcom/sun/javafx/collections/ElementObservableListDecorator;, "Lcom/sun/javafx/collections/ElementObservableListDecorator<TE;>;"
    return v0
.end method

.method public varargs setAll([Ljava/lang/Object;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TE;)Z"
        }
    .end annotation

    .prologue
    .line 237
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/ElementObservableListDecorator;, "Lcom/sun/javafx/collections/ElementObservableListDecorator<TE;>;"
    move-object v1, p1

    .local v1, "elements":[Ljava/lang/Object;, "[TE;"
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/collections/ElementObservableListDecorator;->decoratedList:Ljavafx/collections/ObservableList;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljavafx/collections/ObservableList;->setAll([Ljava/lang/Object;)Z

    move-result v2

    move v0, v2

    .end local v0    # "this":Lcom/sun/javafx/collections/ElementObservableListDecorator;, "Lcom/sun/javafx/collections/ElementObservableListDecorator<TE;>;"
    return v0
.end method

.method public size()I
    .locals 2

    .prologue
    .line 132
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/ElementObservableListDecorator;, "Lcom/sun/javafx/collections/ElementObservableListDecorator<TE;>;"
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/collections/ElementObservableListDecorator;->decoratedList:Ljavafx/collections/ObservableList;

    invoke-interface {v1}, Ljavafx/collections/ObservableList;->size()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/collections/ElementObservableListDecorator;, "Lcom/sun/javafx/collections/ElementObservableListDecorator<TE;>;"
    return v0
.end method

.method public subList(II)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 127
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/ElementObservableListDecorator;, "Lcom/sun/javafx/collections/ElementObservableListDecorator<TE;>;"
    move v1, p1

    .local v1, "fromIndex":I
    move v2, p2

    .local v2, "toIndex":I
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/collections/ElementObservableListDecorator;->decoratedList:Ljavafx/collections/ObservableList;

    move v4, v1

    move v5, v2

    invoke-interface {v3, v4, v5}, Ljavafx/collections/ObservableList;->subList(II)Ljava/util/List;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lcom/sun/javafx/collections/ElementObservableListDecorator;, "Lcom/sun/javafx/collections/ElementObservableListDecorator<TE;>;"
    return-object v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 2

    .prologue
    .line 122
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/ElementObservableListDecorator;, "Lcom/sun/javafx/collections/ElementObservableListDecorator<TE;>;"
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/collections/ElementObservableListDecorator;->decoratedList:Ljavafx/collections/ObservableList;

    invoke-interface {v1}, Ljavafx/collections/ObservableList;->toArray()[Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/collections/ElementObservableListDecorator;, "Lcom/sun/javafx/collections/ElementObservableListDecorator<TE;>;"
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
    .line 117
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/ElementObservableListDecorator;, "Lcom/sun/javafx/collections/ElementObservableListDecorator<TE;>;"
    move-object v1, p1

    .local v1, "a":[Ljava/lang/Object;, "[TT;"
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/collections/ElementObservableListDecorator;->decoratedList:Ljavafx/collections/ObservableList;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljavafx/collections/ObservableList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/collections/ElementObservableListDecorator;, "Lcom/sun/javafx/collections/ElementObservableListDecorator<TE;>;"
    return-object v0
.end method
