.class public abstract Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList;
.super Ljava/lang/Object;
.source "ReadOnlyUnbackedObservableList.java"

# interfaces
.implements Ljavafx/collections/ObservableList;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList$SelectionListIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljavafx/collections/ObservableList",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private listenerHelper:Lcom/sun/javafx/collections/ListListenerHelper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sun/javafx/collections/ListListenerHelper",
            "<TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 46
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList;, "Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList<TE;>;"
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .prologue
    .line 196
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList;, "Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList<TE;>;"
    move v1, p1

    .local v1, "index":I
    move-object v2, p2

    .local v2, "element":Ljava/lang/Object;, "TE;"
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string v5, "Not supported."

    invoke-direct {v4, v5}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public add(Ljava/lang/Object;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 192
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList;, "Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList<TE;>;"
    move-object v1, p1

    .local v1, "e":Ljava/lang/Object;, "TE;"
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "Not supported."

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public addAll(ILjava/util/Collection;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection",
            "<+TE;>;)Z"
        }
    .end annotation

    .prologue
    .line 204
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList;, "Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList<TE;>;"
    move v1, p1

    .local v1, "index":I
    move-object v2, p2

    .local v2, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string v5, "Not supported."

    invoke-direct {v4, v5}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TE;>;)Z"
        }
    .end annotation

    .prologue
    .line 200
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList;, "Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList<TE;>;"
    move-object v1, p1

    .local v1, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "Not supported."

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public varargs addAll([Ljava/lang/Object;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TE;)Z"
        }
    .end annotation

    .prologue
    .line 208
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList;, "Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList<TE;>;"
    move-object v1, p1

    .local v1, "elements":[Ljava/lang/Object;, "[TE;"
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "Not supported."

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public addListener(Ljavafx/beans/InvalidationListener;)V
    .locals 5

    .prologue
    .line 57
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList;, "Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList<TE;>;"
    move-object v1, p1

    .local v1, "listener":Ljavafx/beans/InvalidationListener;
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList;->listenerHelper:Lcom/sun/javafx/collections/ListListenerHelper;

    move-object v4, v1

    invoke-static {v3, v4}, Lcom/sun/javafx/collections/ListListenerHelper;->addListener(Lcom/sun/javafx/collections/ListListenerHelper;Ljavafx/beans/InvalidationListener;)Lcom/sun/javafx/collections/ListListenerHelper;

    move-result-object v3

    iput-object v3, v2, Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList;->listenerHelper:Lcom/sun/javafx/collections/ListListenerHelper;

    .line 58
    return-void
.end method

.method public addListener(Ljavafx/collections/ListChangeListener;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/ListChangeListener",
            "<-TE;>;)V"
        }
    .end annotation

    .prologue
    .line 65
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList;, "Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList<TE;>;"
    move-object v1, p1

    .local v1, "obs":Ljavafx/collections/ListChangeListener;, "Ljavafx/collections/ListChangeListener<-TE;>;"
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList;->listenerHelper:Lcom/sun/javafx/collections/ListListenerHelper;

    move-object v4, v1

    invoke-static {v3, v4}, Lcom/sun/javafx/collections/ListListenerHelper;->addListener(Lcom/sun/javafx/collections/ListListenerHelper;Ljavafx/collections/ListChangeListener;)Lcom/sun/javafx/collections/ListListenerHelper;

    move-result-object v3

    iput-object v3, v2, Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList;->listenerHelper:Lcom/sun/javafx/collections/ListListenerHelper;

    .line 66
    return-void
.end method

.method public callObservers(Ljavafx/collections/ListChangeListener$Change;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/ListChangeListener$Change",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 73
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList;, "Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList<TE;>;"
    move-object v1, p1

    .local v1, "c":Ljavafx/collections/ListChangeListener$Change;, "Ljavafx/collections/ListChangeListener$Change<TE;>;"
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList;->listenerHelper:Lcom/sun/javafx/collections/ListListenerHelper;

    move-object v3, v1

    invoke-static {v2, v3}, Lcom/sun/javafx/collections/ListListenerHelper;->fireValueChangedEvent(Lcom/sun/javafx/collections/ListListenerHelper;Ljavafx/collections/ListChangeListener$Change;)V

    .line 74
    return-void
.end method

.method public clear()V
    .locals 5

    .prologue
    .line 224
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList;, "Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList<TE;>;"
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string v3, "Not supported."

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    .line 99
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList;, "Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList<TE;>;"
    move-object v1, p1

    .local v1, "o":Ljava/lang/Object;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .end local v0    # "this":Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList;, "Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList<TE;>;"
    return v0

    .restart local v0    # "this":Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList;, "Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList<TE;>;"
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 103
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList;, "Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList<TE;>;"
    move-object v1, p1

    .local v1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    move-object v4, v1

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v2, v4

    :goto_0
    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v3, v4

    .line 104
    .local v3, "o":Ljava/lang/Object;
    move-object v4, v0

    move-object v5, v3

    invoke-virtual {v4, v5}, Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 105
    const/4 v4, 0x0

    move v0, v4

    .line 108
    .end local v0    # "this":Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList;, "Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList<TE;>;"
    .end local v3    # "o":Ljava/lang/Object;
    :goto_1
    return v0

    .line 107
    .restart local v0    # "this":Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList;, "Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList<TE;>;"
    .restart local v3    # "o":Ljava/lang/Object;
    :cond_0
    goto :goto_0

    .line 108
    .end local v3    # "o":Ljava/lang/Object;
    :cond_1
    const/4 v4, 0x1

    move v0, v4

    goto :goto_1
.end method

.method public abstract get(I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 6

    .prologue
    .line 77
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList;, "Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList<TE;>;"
    move-object v1, p1

    .local v1, "o":Ljava/lang/Object;
    move-object v4, v1

    if-nez v4, :cond_0

    const/4 v4, -0x1

    move v0, v4

    .line 84
    .end local v0    # "this":Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList;, "Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList<TE;>;"
    :goto_0
    return v0

    .line 79
    .restart local v0    # "this":Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList;, "Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList<TE;>;"
    :cond_0
    const/4 v4, 0x0

    move v2, v4

    .local v2, "i":I
    :goto_1
    move v4, v2

    move-object v5, v0

    invoke-virtual {v5}, Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList;->size()I

    move-result v5

    if-ge v4, v5, :cond_2

    .line 80
    move-object v4, v0

    move v5, v2

    invoke-virtual {v4, v5}, Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v3, v4

    .line 81
    .local v3, "obj":Ljava/lang/Object;
    move-object v4, v1

    move-object v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v4, v2

    move v0, v4

    goto :goto_0

    .line 79
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 84
    .end local v3    # "obj":Ljava/lang/Object;
    :cond_2
    const/4 v4, -0x1

    move v0, v4

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 2

    .prologue
    .line 112
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList;, "Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList<TE;>;"
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList;->size()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList;, "Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList<TE;>;"
    return v0

    .restart local v0    # "this":Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList;, "Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList<TE;>;"
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 125
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList;, "Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList<TE;>;"
    new-instance v1, Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList$SelectionListIterator;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList$SelectionListIterator;-><init>(Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList;)V

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList;, "Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList<TE;>;"
    return-object v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .locals 6

    .prologue
    .line 88
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList;, "Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList<TE;>;"
    move-object v1, p1

    .local v1, "o":Ljava/lang/Object;
    move-object v4, v1

    if-nez v4, :cond_0

    const/4 v4, -0x1

    move v0, v4

    .line 95
    .end local v0    # "this":Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList;, "Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList<TE;>;"
    :goto_0
    return v0

    .line 90
    .restart local v0    # "this":Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList;, "Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList<TE;>;"
    :cond_0
    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList;->size()I

    move-result v4

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    move v2, v4

    .local v2, "i":I
    :goto_1
    move v4, v2

    if-ltz v4, :cond_2

    .line 91
    move-object v4, v0

    move v5, v2

    invoke-virtual {v4, v5}, Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v3, v4

    .line 92
    .local v3, "obj":Ljava/lang/Object;
    move-object v4, v1

    move-object v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v4, v2

    move v0, v4

    goto :goto_0

    .line 90
    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 95
    .end local v3    # "obj":Ljava/lang/Object;
    :cond_2
    const/4 v4, -0x1

    move v0, v4

    goto :goto_0
.end method

.method public listIterator()Ljava/util/ListIterator;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ListIterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 116
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList;, "Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList<TE;>;"
    new-instance v1, Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList$SelectionListIterator;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList$SelectionListIterator;-><init>(Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList;)V

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList;, "Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList<TE;>;"
    return-object v0
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
    .line 120
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList;, "Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList<TE;>;"
    move v1, p1

    .local v1, "index":I
    new-instance v2, Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList$SelectionListIterator;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    move v5, v1

    invoke-direct {v3, v4, v5}, Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList$SelectionListIterator;-><init>(Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList;I)V

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList;, "Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList<TE;>;"
    return-object v0
.end method

.method public remove(I)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 228
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList;, "Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList<TE;>;"
    move v1, p1

    .local v1, "index":I
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "Not supported."

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public remove(II)V
    .locals 7

    .prologue
    .line 244
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList;, "Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList<TE;>;"
    move v1, p1

    .local v1, "from":I
    move v2, p2

    .local v2, "to":I
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string v5, "Not supported."

    invoke-direct {v4, v5}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    .line 232
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList;, "Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList<TE;>;"
    move-object v1, p1

    .local v1, "o":Ljava/lang/Object;
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "Not supported."

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 236
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList;, "Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList<TE;>;"
    move-object v1, p1

    .local v1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "Not supported."

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public varargs removeAll([Ljava/lang/Object;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TE;)Z"
        }
    .end annotation

    .prologue
    .line 248
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList;, "Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList<TE;>;"
    move-object v1, p1

    .local v1, "elements":[Ljava/lang/Object;, "[TE;"
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "Not supported."

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public removeListener(Ljavafx/beans/InvalidationListener;)V
    .locals 5

    .prologue
    .line 61
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList;, "Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList<TE;>;"
    move-object v1, p1

    .local v1, "listener":Ljavafx/beans/InvalidationListener;
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList;->listenerHelper:Lcom/sun/javafx/collections/ListListenerHelper;

    move-object v4, v1

    invoke-static {v3, v4}, Lcom/sun/javafx/collections/ListListenerHelper;->removeListener(Lcom/sun/javafx/collections/ListListenerHelper;Ljavafx/beans/InvalidationListener;)Lcom/sun/javafx/collections/ListListenerHelper;

    move-result-object v3

    iput-object v3, v2, Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList;->listenerHelper:Lcom/sun/javafx/collections/ListListenerHelper;

    .line 62
    return-void
.end method

.method public removeListener(Ljavafx/collections/ListChangeListener;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/ListChangeListener",
            "<-TE;>;)V"
        }
    .end annotation

    .prologue
    .line 69
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList;, "Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList<TE;>;"
    move-object v1, p1

    .local v1, "obs":Ljavafx/collections/ListChangeListener;, "Ljavafx/collections/ListChangeListener<-TE;>;"
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList;->listenerHelper:Lcom/sun/javafx/collections/ListListenerHelper;

    move-object v4, v1

    invoke-static {v3, v4}, Lcom/sun/javafx/collections/ListListenerHelper;->removeListener(Lcom/sun/javafx/collections/ListListenerHelper;Ljavafx/collections/ListChangeListener;)Lcom/sun/javafx/collections/ListListenerHelper;

    move-result-object v3

    iput-object v3, v2, Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList;->listenerHelper:Lcom/sun/javafx/collections/ListListenerHelper;

    .line 70
    return-void
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 240
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList;, "Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList<TE;>;"
    move-object v1, p1

    .local v1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "Not supported."

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public varargs retainAll([Ljava/lang/Object;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TE;)Z"
        }
    .end annotation

    .prologue
    .line 252
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList;, "Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList<TE;>;"
    move-object v1, p1

    .local v1, "elements":[Ljava/lang/Object;, "[TE;"
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "Not supported."

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    .prologue
    .line 212
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList;, "Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList<TE;>;"
    move v1, p1

    .local v1, "index":I
    move-object v2, p2

    .local v2, "element":Ljava/lang/Object;, "TE;"
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string v5, "Not supported."

    invoke-direct {v4, v5}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public setAll(Ljava/util/Collection;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TE;>;)Z"
        }
    .end annotation

    .prologue
    .line 216
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList;, "Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList<TE;>;"
    move-object v1, p1

    .local v1, "col":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "Not supported."

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public varargs setAll([Ljava/lang/Object;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TE;)Z"
        }
    .end annotation

    .prologue
    .line 220
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList;, "Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList<TE;>;"
    move-object v1, p1

    .local v1, "elements":[Ljava/lang/Object;, "[TE;"
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "Not supported."

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public abstract size()I
.end method

.method public subList(II)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 133
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList;, "Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList<TE;>;"
    move v1, p1

    .local v1, "fromIndex":I
    move v2, p2

    .local v2, "toIndex":I
    move v4, v1

    if-ltz v4, :cond_0

    move v4, v2

    move-object v5, v0

    invoke-virtual {v5}, Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList;->size()I

    move-result v5

    if-gt v4, v5, :cond_0

    move v4, v1

    move v5, v2

    if-le v4, v5, :cond_1

    .line 134
    :cond_0
    new-instance v4, Ljava/lang/IndexOutOfBoundsException;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    invoke-direct {v5}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v4

    .line 137
    :cond_1
    move-object v4, v0

    move-object v3, v4

    .line 138
    .local v3, "outer":Ljava/util/List;, "Ljava/util/List<TE;>;"
    new-instance v4, Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList$1;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    move-object v6, v0

    move-object v7, v3

    move v8, v1

    move v9, v2

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList$1;-><init>(Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList;Ljava/util/List;II)V

    move-object v0, v4

    .end local v0    # "this":Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList;, "Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList<TE;>;"
    return-object v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 7

    .prologue
    .line 151
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList;, "Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList<TE;>;"
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/Object;

    move-object v1, v3

    .line 152
    .local v1, "arr":[Ljava/lang/Object;
    const/4 v3, 0x0

    move v2, v3

    .local v2, "i":I
    :goto_0
    move v3, v2

    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 153
    move-object v3, v1

    move v4, v2

    move-object v5, v0

    move v6, v2

    invoke-virtual {v5, v6}, Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList;->get(I)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v3, v4

    .line 152
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 155
    :cond_0
    move-object v3, v1

    move-object v0, v3

    .end local v0    # "this":Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList;, "Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList<TE;>;"
    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .prologue
    .line 161
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList;, "Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList<TE;>;"
    move-object v1, p1

    .local v1, "a":[Ljava/lang/Object;, "[TT;"
    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList;->toArray()[Ljava/lang/Object;

    move-result-object v4

    move-object v2, v4

    .line 162
    .local v2, "elementData":[Ljava/lang/Object;
    move-object v4, v2

    array-length v4, v4

    move v3, v4

    .line 164
    .local v3, "size":I
    move-object v4, v1

    array-length v4, v4

    move v5, v3

    if-ge v4, v5, :cond_0

    .line 166
    move-object v4, v2

    move v5, v3

    move-object v6, v1

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-static {v4, v5, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;ILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/Object;

    move-object v0, v4

    .line 170
    .end local v0    # "this":Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList;, "Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList<TE;>;"
    :goto_0
    return-object v0

    .line 167
    .restart local v0    # "this":Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList;, "Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList<TE;>;"
    :cond_0
    move-object v4, v2

    const/4 v5, 0x0

    move-object v6, v1

    const/4 v7, 0x0

    move v8, v3

    invoke-static {v4, v5, v6, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 168
    move-object v4, v1

    array-length v4, v4

    move v5, v3

    if-le v4, v5, :cond_1

    .line 169
    move-object v4, v1

    move v5, v3

    const/4 v6, 0x0

    aput-object v6, v4, v5

    .line 170
    :cond_1
    move-object v4, v1

    move-object v0, v4

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .prologue
    .line 176
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList;, "Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList<TE;>;"
    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v1, v4

    .line 177
    .local v1, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<TE;>;"
    move-object v4, v1

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 178
    const-string v4, "[]"

    move-object v0, v4

    .line 186
    .end local v0    # "this":Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList;, "Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList<TE;>;"
    :goto_0
    return-object v0

    .line 180
    .restart local v0    # "this":Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList;, "Lcom/sun/javafx/scene/control/ReadOnlyUnbackedObservableList<TE;>;"
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object v2, v4

    .line 181
    .local v2, "sb":Ljava/lang/StringBuilder;
    move-object v4, v2

    const/16 v5, 0x5b

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 183
    :goto_1
    move-object v4, v1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v3, v4

    .line 184
    .local v3, "e":Ljava/lang/Object;, "TE;"
    move-object v4, v2

    move-object v5, v3

    move-object v6, v0

    if-ne v5, v6, :cond_1

    const-string v5, "(this Collection)"

    :goto_2
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 185
    move-object v4, v1

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_2

    .line 186
    move-object v4, v2

    const/16 v5, 0x5d

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    goto :goto_0

    .line 184
    :cond_1
    move-object v5, v3

    goto :goto_2

    .line 187
    :cond_2
    move-object v4, v2

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 188
    goto :goto_1
.end method
