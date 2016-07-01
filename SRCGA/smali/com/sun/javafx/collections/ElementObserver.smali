.class final Lcom/sun/javafx/collections/ElementObserver;
.super Ljava/lang/Object;
.source "ElementObserver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/javafx/collections/ElementObserver$ElementsMapElement;
    }
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
.field private elementsMap:Ljava/util/IdentityHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/IdentityHashMap",
            "<TE;",
            "Lcom/sun/javafx/collections/ElementObserver$ElementsMapElement;",
            ">;"
        }
    .end annotation
.end field

.field private extractor:Ljavafx/util/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/util/Callback",
            "<TE;[",
            "Ljavafx/beans/Observable;",
            ">;"
        }
    .end annotation
.end field

.field private final list:Ljavafx/collections/ObservableListBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/collections/ObservableListBase",
            "<TE;>;"
        }
    .end annotation
.end field

.field private final listenerGenerator:Ljavafx/util/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/util/Callback",
            "<TE;",
            "Ljavafx/beans/InvalidationListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljavafx/util/Callback;Ljavafx/util/Callback;Ljavafx/collections/ObservableListBase;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/util/Callback",
            "<TE;[",
            "Ljavafx/beans/Observable;",
            ">;",
            "Ljavafx/util/Callback",
            "<TE;",
            "Ljavafx/beans/InvalidationListener;",
            ">;",
            "Ljavafx/collections/ObservableListBase",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 64
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/ElementObserver;, "Lcom/sun/javafx/collections/ElementObserver<TE;>;"
    move-object v1, p1

    .local v1, "extractor":Ljavafx/util/Callback;, "Ljavafx/util/Callback<TE;[Ljavafx/beans/Observable;>;"
    move-object v2, p2

    .local v2, "listenerGenerator":Ljavafx/util/Callback;, "Ljavafx/util/Callback<TE;Ljavafx/beans/InvalidationListener;>;"
    move-object v3, p3

    .local v3, "list":Ljavafx/collections/ObservableListBase;, "Ljavafx/collections/ObservableListBase<TE;>;"
    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 61
    move-object v4, v0

    new-instance v5, Ljava/util/IdentityHashMap;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v5, v4, Lcom/sun/javafx/collections/ElementObserver;->elementsMap:Ljava/util/IdentityHashMap;

    .line 65
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/sun/javafx/collections/ElementObserver;->extractor:Ljavafx/util/Callback;

    .line 66
    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Lcom/sun/javafx/collections/ElementObserver;->listenerGenerator:Ljavafx/util/Callback;

    .line 67
    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Lcom/sun/javafx/collections/ElementObserver;->list:Ljavafx/collections/ObservableListBase;

    .line 68
    return-void
.end method


# virtual methods
.method attachListener(Ljava/lang/Object;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    .line 72
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/ElementObserver;, "Lcom/sun/javafx/collections/ElementObserver<TE;>;"
    move-object v1, p1

    .local v1, "e":Ljava/lang/Object;, "TE;"
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/collections/ElementObserver;->elementsMap:Ljava/util/IdentityHashMap;

    if-eqz v7, :cond_0

    move-object v7, v1

    if-eqz v7, :cond_0

    .line 73
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/collections/ElementObserver;->elementsMap:Ljava/util/IdentityHashMap;

    move-object v8, v1

    invoke-virtual {v7, v8}, Ljava/util/IdentityHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 74
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/collections/ElementObserver;->elementsMap:Ljava/util/IdentityHashMap;

    move-object v8, v1

    invoke-virtual {v7, v8}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sun/javafx/collections/ElementObserver$ElementsMapElement;

    invoke-virtual {v7}, Lcom/sun/javafx/collections/ElementObserver$ElementsMapElement;->increment()V

    .line 83
    :cond_0
    :goto_0
    return-void

    .line 76
    :cond_1
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/collections/ElementObserver;->listenerGenerator:Ljavafx/util/Callback;

    move-object v8, v1

    invoke-interface {v7, v8}, Ljavafx/util/Callback;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljavafx/beans/InvalidationListener;

    move-object v2, v7

    .line 77
    .local v2, "listener":Ljavafx/beans/InvalidationListener;
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/collections/ElementObserver;->extractor:Ljavafx/util/Callback;

    move-object v8, v1

    invoke-interface {v7, v8}, Ljavafx/util/Callback;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljavafx/beans/Observable;

    move-object v3, v7

    move-object v7, v3

    array-length v7, v7

    move v4, v7

    const/4 v7, 0x0

    move v5, v7

    :goto_1
    move v7, v5

    move v8, v4

    if-ge v7, v8, :cond_2

    move-object v7, v3

    move v8, v5

    aget-object v7, v7, v8

    move-object v6, v7

    .line 78
    .local v6, "o":Ljavafx/beans/Observable;
    move-object v7, v6

    move-object v8, v2

    invoke-interface {v7, v8}, Ljavafx/beans/Observable;->addListener(Ljavafx/beans/InvalidationListener;)V

    .line 77
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 80
    .end local v6    # "o":Ljavafx/beans/Observable;
    :cond_2
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/collections/ElementObserver;->elementsMap:Ljava/util/IdentityHashMap;

    move-object v8, v1

    new-instance v9, Lcom/sun/javafx/collections/ElementObserver$ElementsMapElement;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    move-object v11, v2

    invoke-direct {v10, v11}, Lcom/sun/javafx/collections/ElementObserver$ElementsMapElement;-><init>(Ljavafx/beans/InvalidationListener;)V

    invoke-virtual {v7, v8, v9}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    goto :goto_0
.end method

.method detachListener(Ljava/lang/Object;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    .line 86
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/ElementObserver;, "Lcom/sun/javafx/collections/ElementObserver<TE;>;"
    move-object v1, p1

    .local v1, "e":Ljava/lang/Object;, "TE;"
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/collections/ElementObserver;->elementsMap:Ljava/util/IdentityHashMap;

    if-eqz v7, :cond_1

    move-object v7, v1

    if-eqz v7, :cond_1

    .line 87
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/collections/ElementObserver;->elementsMap:Ljava/util/IdentityHashMap;

    move-object v8, v1

    invoke-virtual {v7, v8}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sun/javafx/collections/ElementObserver$ElementsMapElement;

    move-object v2, v7

    .line 88
    .local v2, "el":Lcom/sun/javafx/collections/ElementObserver$ElementsMapElement;
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/collections/ElementObserver;->extractor:Ljavafx/util/Callback;

    move-object v8, v1

    invoke-interface {v7, v8}, Ljavafx/util/Callback;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljavafx/beans/Observable;

    move-object v3, v7

    move-object v7, v3

    array-length v7, v7

    move v4, v7

    const/4 v7, 0x0

    move v5, v7

    :goto_0
    move v7, v5

    move v8, v4

    if-ge v7, v8, :cond_0

    move-object v7, v3

    move v8, v5

    aget-object v7, v7, v8

    move-object v6, v7

    .line 89
    .local v6, "o":Ljavafx/beans/Observable;
    move-object v7, v6

    move-object v8, v2

    invoke-static {v8}, Lcom/sun/javafx/collections/ElementObserver$ElementsMapElement;->access$000(Lcom/sun/javafx/collections/ElementObserver$ElementsMapElement;)Ljavafx/beans/InvalidationListener;

    move-result-object v8

    invoke-interface {v7, v8}, Ljavafx/beans/Observable;->removeListener(Ljavafx/beans/InvalidationListener;)V

    .line 88
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 91
    .end local v6    # "o":Ljavafx/beans/Observable;
    :cond_0
    move-object v7, v2

    invoke-virtual {v7}, Lcom/sun/javafx/collections/ElementObserver$ElementsMapElement;->decrement()I

    move-result v7

    if-nez v7, :cond_1

    .line 92
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/collections/ElementObserver;->elementsMap:Ljava/util/IdentityHashMap;

    move-object v8, v1

    invoke-virtual {v7, v8}, Ljava/util/IdentityHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 95
    .end local v2    # "el":Lcom/sun/javafx/collections/ElementObserver$ElementsMapElement;
    :cond_1
    return-void
.end method
