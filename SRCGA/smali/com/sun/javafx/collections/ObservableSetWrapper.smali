.class public Lcom/sun/javafx/collections/ObservableSetWrapper;
.super Ljava/lang/Object;
.source "ObservableSetWrapper.java"

# interfaces
.implements Ljavafx/collections/ObservableSet;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/javafx/collections/ObservableSetWrapper$SimpleRemoveChange;,
        Lcom/sun/javafx/collections/ObservableSetWrapper$SimpleAddChange;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljavafx/collections/ObservableSet",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private final backingSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<TE;>;"
        }
    .end annotation
.end field

.field private listenerHelper:Lcom/sun/javafx/collections/SetListenerHelper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sun/javafx/collections/SetListenerHelper",
            "<TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Set;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 51
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/ObservableSetWrapper;, "Lcom/sun/javafx/collections/ObservableSetWrapper<TE;>;"
    move-object v1, p1

    .local v1, "set":Ljava/util/Set;, "Ljava/util/Set<TE;>;"
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 52
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/collections/ObservableSetWrapper;->backingSet:Ljava/util/Set;

    .line 53
    return-void
.end method

.method static synthetic access$000(Lcom/sun/javafx/collections/ObservableSetWrapper;)Ljava/util/Set;
    .locals 2

    .prologue
    .line 39
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/collections/ObservableSetWrapper;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/collections/ObservableSetWrapper;->backingSet:Ljava/util/Set;

    move-object v0, v1

    .end local v0    # "x0":Lcom/sun/javafx/collections/ObservableSetWrapper;
    return-object v0
.end method

.method static synthetic access$100(Lcom/sun/javafx/collections/ObservableSetWrapper;Ljavafx/collections/SetChangeListener$Change;)V
    .locals 4

    .prologue
    .line 39
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/collections/ObservableSetWrapper;
    move-object v1, p1

    .local v1, "x1":Ljavafx/collections/SetChangeListener$Change;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/collections/ObservableSetWrapper;->callObservers(Ljavafx/collections/SetChangeListener$Change;)V

    return-void
.end method

.method private callObservers(Ljavafx/collections/SetChangeListener$Change;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/SetChangeListener$Change",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 128
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/ObservableSetWrapper;, "Lcom/sun/javafx/collections/ObservableSetWrapper<TE;>;"
    move-object v1, p1

    .local v1, "change":Ljavafx/collections/SetChangeListener$Change;, "Ljavafx/collections/SetChangeListener$Change<TE;>;"
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/collections/ObservableSetWrapper;->listenerHelper:Lcom/sun/javafx/collections/SetListenerHelper;

    move-object v3, v1

    invoke-static {v2, v3}, Lcom/sun/javafx/collections/SetListenerHelper;->fireValueChangedEvent(Lcom/sun/javafx/collections/SetListenerHelper;Ljavafx/collections/SetChangeListener$Change;)V

    .line 129
    return-void
.end method

.method private removeRetain(Ljava/util/Collection;Z)Z
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;Z)Z"
        }
    .end annotation

    .prologue
    .line 351
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/ObservableSetWrapper;, "Lcom/sun/javafx/collections/ObservableSetWrapper<TE;>;"
    move-object v1, p1

    .local v1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    move v2, p2

    .local v2, "remove":Z
    const/4 v6, 0x0

    move v3, v6

    .line 352
    .local v3, "removed":Z
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/collections/ObservableSetWrapper;->backingSet:Ljava/util/Set;

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-object v4, v6

    .local v4, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<TE;>;"
    :goto_0
    move-object v6, v4

    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 353
    move-object v6, v4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v5, v6

    .line 354
    .local v5, "element":Ljava/lang/Object;, "TE;"
    move v6, v2

    move-object v7, v1

    move-object v8, v5

    invoke-interface {v7, v8}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-ne v6, v7, :cond_0

    .line 355
    const/4 v6, 0x1

    move v3, v6

    .line 356
    move-object v6, v4

    invoke-interface {v6}, Ljava/util/Iterator;->remove()V

    .line 357
    move-object v6, v0

    new-instance v7, Lcom/sun/javafx/collections/ObservableSetWrapper$SimpleRemoveChange;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    move-object v9, v0

    move-object v10, v5

    invoke-direct {v8, v9, v10}, Lcom/sun/javafx/collections/ObservableSetWrapper$SimpleRemoveChange;-><init>(Lcom/sun/javafx/collections/ObservableSetWrapper;Ljava/lang/Object;)V

    invoke-direct {v6, v7}, Lcom/sun/javafx/collections/ObservableSetWrapper;->callObservers(Ljavafx/collections/SetChangeListener$Change;)V

    .line 359
    :cond_0
    goto :goto_0

    .line 360
    .end local v5    # "element":Ljava/lang/Object;, "TE;"
    :cond_1
    move v6, v3

    move v0, v6

    .end local v0    # "this":Lcom/sun/javafx/collections/ObservableSetWrapper;, "Lcom/sun/javafx/collections/ObservableSetWrapper<TE;>;"
    return v0
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 267
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/ObservableSetWrapper;, "Lcom/sun/javafx/collections/ObservableSetWrapper<TE;>;"
    move-object v1, p1

    .local v1, "o":Ljava/lang/Object;, "TE;"
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/collections/ObservableSetWrapper;->backingSet:Ljava/util/Set;

    move-object v4, v1

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v3

    move v2, v3

    .line 268
    .local v2, "ret":Z
    move v3, v2

    if-eqz v3, :cond_0

    .line 269
    move-object v3, v0

    new-instance v4, Lcom/sun/javafx/collections/ObservableSetWrapper$SimpleAddChange;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v0

    move-object v7, v1

    invoke-direct {v5, v6, v7}, Lcom/sun/javafx/collections/ObservableSetWrapper$SimpleAddChange;-><init>(Lcom/sun/javafx/collections/ObservableSetWrapper;Ljava/lang/Object;)V

    invoke-direct {v3, v4}, Lcom/sun/javafx/collections/ObservableSetWrapper;->callObservers(Ljavafx/collections/SetChangeListener$Change;)V

    .line 271
    :cond_0
    move v3, v2

    move v0, v3

    .end local v0    # "this":Lcom/sun/javafx/collections/ObservableSetWrapper;, "Lcom/sun/javafx/collections/ObservableSetWrapper<TE;>;"
    return v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TE;>;)Z"
        }
    .end annotation

    .prologue
    .line 316
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/ObservableSetWrapper;, "Lcom/sun/javafx/collections/ObservableSetWrapper<TE;>;"
    move-object v1, p1

    .local v1, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    const/4 v5, 0x0

    move v2, v5

    .line 317
    .local v2, "ret":Z
    move-object v5, v1

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

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

    .line 318
    .local v4, "element":Ljava/lang/Object;, "TE;"
    move v5, v2

    move-object v6, v0

    move-object v7, v4

    invoke-virtual {v6, v7}, Lcom/sun/javafx/collections/ObservableSetWrapper;->add(Ljava/lang/Object;)Z

    move-result v6

    or-int/2addr v5, v6

    move v2, v5

    .line 319
    goto :goto_0

    .line 320
    .end local v4    # "element":Ljava/lang/Object;, "TE;"
    :cond_0
    move v5, v2

    move v0, v5

    .end local v0    # "this":Lcom/sun/javafx/collections/ObservableSetWrapper;, "Lcom/sun/javafx/collections/ObservableSetWrapper<TE;>;"
    return v0
.end method

.method public addListener(Ljavafx/beans/InvalidationListener;)V
    .locals 5

    .prologue
    .line 136
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/ObservableSetWrapper;, "Lcom/sun/javafx/collections/ObservableSetWrapper<TE;>;"
    move-object v1, p1

    .local v1, "listener":Ljavafx/beans/InvalidationListener;
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/collections/ObservableSetWrapper;->listenerHelper:Lcom/sun/javafx/collections/SetListenerHelper;

    move-object v4, v1

    invoke-static {v3, v4}, Lcom/sun/javafx/collections/SetListenerHelper;->addListener(Lcom/sun/javafx/collections/SetListenerHelper;Ljavafx/beans/InvalidationListener;)Lcom/sun/javafx/collections/SetListenerHelper;

    move-result-object v3

    iput-object v3, v2, Lcom/sun/javafx/collections/ObservableSetWrapper;->listenerHelper:Lcom/sun/javafx/collections/SetListenerHelper;

    .line 137
    return-void
.end method

.method public addListener(Ljavafx/collections/SetChangeListener;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/SetChangeListener",
            "<-TE;>;)V"
        }
    .end annotation

    .prologue
    .line 152
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/ObservableSetWrapper;, "Lcom/sun/javafx/collections/ObservableSetWrapper<TE;>;"
    move-object v1, p1

    .local v1, "observer":Ljavafx/collections/SetChangeListener;, "Ljavafx/collections/SetChangeListener<-TE;>;"
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/collections/ObservableSetWrapper;->listenerHelper:Lcom/sun/javafx/collections/SetListenerHelper;

    move-object v4, v1

    invoke-static {v3, v4}, Lcom/sun/javafx/collections/SetListenerHelper;->addListener(Lcom/sun/javafx/collections/SetListenerHelper;Ljavafx/collections/SetChangeListener;)Lcom/sun/javafx/collections/SetListenerHelper;

    move-result-object v3

    iput-object v3, v2, Lcom/sun/javafx/collections/ObservableSetWrapper;->listenerHelper:Lcom/sun/javafx/collections/SetListenerHelper;

    .line 153
    return-void
.end method

.method public clear()V
    .locals 9

    .prologue
    .line 370
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/ObservableSetWrapper;, "Lcom/sun/javafx/collections/ObservableSetWrapper<TE;>;"
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/collections/ObservableSetWrapper;->backingSet:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v1, v3

    .local v1, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<TE;>;"
    :goto_0
    move-object v3, v1

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 371
    move-object v3, v1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v2, v3

    .line 372
    .local v2, "element":Ljava/lang/Object;, "TE;"
    move-object v3, v1

    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 373
    move-object v3, v0

    new-instance v4, Lcom/sun/javafx/collections/ObservableSetWrapper$SimpleRemoveChange;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v0

    move-object v7, v2

    invoke-direct {v5, v6, v7}, Lcom/sun/javafx/collections/ObservableSetWrapper$SimpleRemoveChange;-><init>(Lcom/sun/javafx/collections/ObservableSetWrapper;Ljava/lang/Object;)V

    invoke-direct {v3, v4}, Lcom/sun/javafx/collections/ObservableSetWrapper;->callObservers(Ljavafx/collections/SetChangeListener$Change;)V

    .line 374
    goto :goto_0

    .line 375
    .end local v2    # "element":Ljava/lang/Object;, "TE;"
    :cond_0
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    .line 194
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/ObservableSetWrapper;, "Lcom/sun/javafx/collections/ObservableSetWrapper<TE;>;"
    move-object v1, p1

    .local v1, "o":Ljava/lang/Object;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/collections/ObservableSetWrapper;->backingSet:Ljava/util/Set;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    move v0, v2

    .end local v0    # "this":Lcom/sun/javafx/collections/ObservableSetWrapper;, "Lcom/sun/javafx/collections/ObservableSetWrapper<TE;>;"
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
    .line 302
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/ObservableSetWrapper;, "Lcom/sun/javafx/collections/ObservableSetWrapper<TE;>;"
    move-object v1, p1

    .local v1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/collections/ObservableSetWrapper;->backingSet:Ljava/util/Set;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v2

    move v0, v2

    .end local v0    # "this":Lcom/sun/javafx/collections/ObservableSetWrapper;, "Lcom/sun/javafx/collections/ObservableSetWrapper<TE;>;"
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    .line 395
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/ObservableSetWrapper;, "Lcom/sun/javafx/collections/ObservableSetWrapper<TE;>;"
    move-object v1, p1

    .local v1, "obj":Ljava/lang/Object;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/collections/ObservableSetWrapper;->backingSet:Ljava/util/Set;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v2

    move v0, v2

    .end local v0    # "this":Lcom/sun/javafx/collections/ObservableSetWrapper;, "Lcom/sun/javafx/collections/ObservableSetWrapper<TE;>;"
    return v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 405
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/ObservableSetWrapper;, "Lcom/sun/javafx/collections/ObservableSetWrapper<TE;>;"
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/collections/ObservableSetWrapper;->backingSet:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->hashCode()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/collections/ObservableSetWrapper;, "Lcom/sun/javafx/collections/ObservableSetWrapper<TE;>;"
    return v0
.end method

.method public isEmpty()Z
    .locals 2

    .prologue
    .line 182
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/ObservableSetWrapper;, "Lcom/sun/javafx/collections/ObservableSetWrapper<TE;>;"
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/collections/ObservableSetWrapper;->backingSet:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/collections/ObservableSetWrapper;, "Lcom/sun/javafx/collections/ObservableSetWrapper<TE;>;"
    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 5

    .prologue
    .line 207
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/ObservableSetWrapper;, "Lcom/sun/javafx/collections/ObservableSetWrapper<TE;>;"
    new-instance v1, Lcom/sun/javafx/collections/ObservableSetWrapper$1;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Lcom/sun/javafx/collections/ObservableSetWrapper$1;-><init>(Lcom/sun/javafx/collections/ObservableSetWrapper;)V

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/collections/ObservableSetWrapper;, "Lcom/sun/javafx/collections/ObservableSetWrapper<TE;>;"
    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 9

    .prologue
    .line 285
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/ObservableSetWrapper;, "Lcom/sun/javafx/collections/ObservableSetWrapper<TE;>;"
    move-object v1, p1

    .local v1, "o":Ljava/lang/Object;
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/collections/ObservableSetWrapper;->backingSet:Ljava/util/Set;

    move-object v4, v1

    invoke-interface {v3, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v3

    move v2, v3

    .line 286
    .local v2, "ret":Z
    move v3, v2

    if-eqz v3, :cond_0

    .line 287
    move-object v3, v0

    new-instance v4, Lcom/sun/javafx/collections/ObservableSetWrapper$SimpleRemoveChange;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v0

    move-object v7, v1

    invoke-direct {v5, v6, v7}, Lcom/sun/javafx/collections/ObservableSetWrapper$SimpleRemoveChange;-><init>(Lcom/sun/javafx/collections/ObservableSetWrapper;Ljava/lang/Object;)V

    invoke-direct {v3, v4}, Lcom/sun/javafx/collections/ObservableSetWrapper;->callObservers(Ljavafx/collections/SetChangeListener$Change;)V

    .line 289
    :cond_0
    move v3, v2

    move v0, v3

    .end local v0    # "this":Lcom/sun/javafx/collections/ObservableSetWrapper;, "Lcom/sun/javafx/collections/ObservableSetWrapper<TE;>;"
    return v0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 347
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/ObservableSetWrapper;, "Lcom/sun/javafx/collections/ObservableSetWrapper<TE;>;"
    move-object v1, p1

    .local v1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Lcom/sun/javafx/collections/ObservableSetWrapper;->removeRetain(Ljava/util/Collection;Z)Z

    move-result v2

    move v0, v2

    .end local v0    # "this":Lcom/sun/javafx/collections/ObservableSetWrapper;, "Lcom/sun/javafx/collections/ObservableSetWrapper<TE;>;"
    return v0
.end method

.method public removeListener(Ljavafx/beans/InvalidationListener;)V
    .locals 5

    .prologue
    .line 144
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/ObservableSetWrapper;, "Lcom/sun/javafx/collections/ObservableSetWrapper<TE;>;"
    move-object v1, p1

    .local v1, "listener":Ljavafx/beans/InvalidationListener;
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/collections/ObservableSetWrapper;->listenerHelper:Lcom/sun/javafx/collections/SetListenerHelper;

    move-object v4, v1

    invoke-static {v3, v4}, Lcom/sun/javafx/collections/SetListenerHelper;->removeListener(Lcom/sun/javafx/collections/SetListenerHelper;Ljavafx/beans/InvalidationListener;)Lcom/sun/javafx/collections/SetListenerHelper;

    move-result-object v3

    iput-object v3, v2, Lcom/sun/javafx/collections/ObservableSetWrapper;->listenerHelper:Lcom/sun/javafx/collections/SetListenerHelper;

    .line 145
    return-void
.end method

.method public removeListener(Ljavafx/collections/SetChangeListener;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/SetChangeListener",
            "<-TE;>;)V"
        }
    .end annotation

    .prologue
    .line 160
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/ObservableSetWrapper;, "Lcom/sun/javafx/collections/ObservableSetWrapper<TE;>;"
    move-object v1, p1

    .local v1, "observer":Ljavafx/collections/SetChangeListener;, "Ljavafx/collections/SetChangeListener<-TE;>;"
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/collections/ObservableSetWrapper;->listenerHelper:Lcom/sun/javafx/collections/SetListenerHelper;

    move-object v4, v1

    invoke-static {v3, v4}, Lcom/sun/javafx/collections/SetListenerHelper;->removeListener(Lcom/sun/javafx/collections/SetListenerHelper;Ljavafx/collections/SetChangeListener;)Lcom/sun/javafx/collections/SetListenerHelper;

    move-result-object v3

    iput-object v3, v2, Lcom/sun/javafx/collections/ObservableSetWrapper;->listenerHelper:Lcom/sun/javafx/collections/SetListenerHelper;

    .line 161
    return-void
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 334
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/ObservableSetWrapper;, "Lcom/sun/javafx/collections/ObservableSetWrapper<TE;>;"
    move-object v1, p1

    .local v1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/sun/javafx/collections/ObservableSetWrapper;->removeRetain(Ljava/util/Collection;Z)Z

    move-result v2

    move v0, v2

    .end local v0    # "this":Lcom/sun/javafx/collections/ObservableSetWrapper;, "Lcom/sun/javafx/collections/ObservableSetWrapper<TE;>;"
    return v0
.end method

.method public size()I
    .locals 2

    .prologue
    .line 171
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/ObservableSetWrapper;, "Lcom/sun/javafx/collections/ObservableSetWrapper<TE;>;"
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/collections/ObservableSetWrapper;->backingSet:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/collections/ObservableSetWrapper;, "Lcom/sun/javafx/collections/ObservableSetWrapper<TE;>;"
    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 2

    .prologue
    .line 239
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/ObservableSetWrapper;, "Lcom/sun/javafx/collections/ObservableSetWrapper<TE;>;"
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/collections/ObservableSetWrapper;->backingSet:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/collections/ObservableSetWrapper;, "Lcom/sun/javafx/collections/ObservableSetWrapper<TE;>;"
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
    .line 253
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/ObservableSetWrapper;, "Lcom/sun/javafx/collections/ObservableSetWrapper<TE;>;"
    move-object v1, p1

    .local v1, "a":[Ljava/lang/Object;, "[TT;"
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/collections/ObservableSetWrapper;->backingSet:Ljava/util/Set;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/collections/ObservableSetWrapper;, "Lcom/sun/javafx/collections/ObservableSetWrapper<TE;>;"
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 384
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/ObservableSetWrapper;, "Lcom/sun/javafx/collections/ObservableSetWrapper<TE;>;"
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/collections/ObservableSetWrapper;->backingSet:Ljava/util/Set;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/collections/ObservableSetWrapper;, "Lcom/sun/javafx/collections/ObservableSetWrapper<TE;>;"
    return-object v0
.end method
