.class Ljavafx/collections/FXCollections$UnmodifiableObservableSet;
.super Ljava/util/AbstractSet;
.source "FXCollections.java"

# interfaces
.implements Ljavafx/collections/ObservableSet;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/collections/FXCollections;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UnmodifiableObservableSet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractSet",
        "<TE;>;",
        "Ljavafx/collections/ObservableSet",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private final backingSet:Ljavafx/collections/ObservableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/collections/ObservableSet",
            "<TE;>;"
        }
    .end annotation
.end field

.field private listener:Ljavafx/collections/SetChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/collections/SetChangeListener",
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
.method public constructor <init>(Ljavafx/collections/ObservableSet;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/ObservableSet",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 1638
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$UnmodifiableObservableSet;, "Ljavafx/collections/FXCollections$UnmodifiableObservableSet<TE;>;"
    move-object v1, p1

    .local v1, "backingSet":Ljavafx/collections/ObservableSet;, "Ljavafx/collections/ObservableSet<TE;>;"
    move-object v2, v0

    invoke-direct {v2}, Ljava/util/AbstractSet;-><init>()V

    .line 1639
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/collections/FXCollections$UnmodifiableObservableSet;->backingSet:Ljavafx/collections/ObservableSet;

    .line 1640
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Ljavafx/collections/FXCollections$UnmodifiableObservableSet;->listener:Ljavafx/collections/SetChangeListener;

    .line 1641
    return-void
.end method

.method static synthetic access$100(Ljavafx/collections/FXCollections$UnmodifiableObservableSet;)Ljavafx/collections/ObservableSet;
    .locals 2

    .prologue
    .line 1632
    move-object v0, p0

    .local v0, "x0":Ljavafx/collections/FXCollections$UnmodifiableObservableSet;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/collections/FXCollections$UnmodifiableObservableSet;->backingSet:Ljavafx/collections/ObservableSet;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/collections/FXCollections$UnmodifiableObservableSet;
    return-object v0
.end method

.method static synthetic access$lambda$0(Ljavafx/collections/FXCollections$UnmodifiableObservableSet;Ljavafx/collections/SetChangeListener$Change;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljavafx/collections/FXCollections$UnmodifiableObservableSet;->lambda$initListener$53(Ljavafx/collections/SetChangeListener$Change;)V

    return-void
.end method

.method private callObservers(Ljavafx/collections/SetChangeListener$Change;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/SetChangeListener$Change",
            "<+TE;>;)V"
        }
    .end annotation

    .prologue
    .line 1653
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$UnmodifiableObservableSet;, "Ljavafx/collections/FXCollections$UnmodifiableObservableSet<TE;>;"
    move-object v1, p1

    .local v1, "change":Ljavafx/collections/SetChangeListener$Change;, "Ljavafx/collections/SetChangeListener$Change<+TE;>;"
    move-object v2, v0

    iget-object v2, v2, Ljavafx/collections/FXCollections$UnmodifiableObservableSet;->listenerHelper:Lcom/sun/javafx/collections/SetListenerHelper;

    move-object v3, v1

    invoke-static {v2, v3}, Lcom/sun/javafx/collections/SetListenerHelper;->fireValueChangedEvent(Lcom/sun/javafx/collections/SetListenerHelper;Ljavafx/collections/SetChangeListener$Change;)V

    .line 1654
    return-void
.end method

.method private initListener()V
    .locals 6

    .prologue
    .line 1644
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$UnmodifiableObservableSet;, "Ljavafx/collections/FXCollections$UnmodifiableObservableSet<TE;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/collections/FXCollections$UnmodifiableObservableSet;->listener:Ljavafx/collections/SetChangeListener;

    if-nez v1, :cond_0

    .line 1645
    move-object v1, v0

    move-object v2, v0

    invoke-static {v2}, Ljavafx/collections/FXCollections$UnmodifiableObservableSet$$Lambda$1;->lambdaFactory$(Ljavafx/collections/FXCollections$UnmodifiableObservableSet;)Ljavafx/collections/SetChangeListener;

    move-result-object v2

    iput-object v2, v1, Ljavafx/collections/FXCollections$UnmodifiableObservableSet;->listener:Ljavafx/collections/SetChangeListener;

    .line 1648
    move-object v1, v0

    iget-object v1, v1, Ljavafx/collections/FXCollections$UnmodifiableObservableSet;->backingSet:Ljavafx/collections/ObservableSet;

    new-instance v2, Ljavafx/collections/WeakSetChangeListener;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    iget-object v4, v4, Ljavafx/collections/FXCollections$UnmodifiableObservableSet;->listener:Ljavafx/collections/SetChangeListener;

    invoke-direct {v3, v4}, Ljavafx/collections/WeakSetChangeListener;-><init>(Ljavafx/collections/SetChangeListener;)V

    invoke-interface {v1, v2}, Ljavafx/collections/ObservableSet;->addListener(Ljavafx/collections/SetChangeListener;)V

    .line 1650
    :cond_0
    return-void
.end method

.method private synthetic lambda$initListener$53(Ljavafx/collections/SetChangeListener$Change;)V
    .locals 8

    .prologue
    .line 1646
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$UnmodifiableObservableSet;, "Ljavafx/collections/FXCollections$UnmodifiableObservableSet<TE;>;"
    move-object v1, p1

    .local v1, "c":Ljavafx/collections/SetChangeListener$Change;
    move-object v2, v0

    new-instance v3, Lcom/sun/javafx/collections/SetAdapterChange;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    move-object v6, v1

    invoke-direct {v4, v5, v6}, Lcom/sun/javafx/collections/SetAdapterChange;-><init>(Ljavafx/collections/ObservableSet;Ljavafx/collections/SetChangeListener$Change;)V

    invoke-direct {v2, v3}, Ljavafx/collections/FXCollections$UnmodifiableObservableSet;->callObservers(Ljavafx/collections/SetChangeListener$Change;)V

    .line 1647
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 1707
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$UnmodifiableObservableSet;, "Ljavafx/collections/FXCollections$UnmodifiableObservableSet<TE;>;"
    move-object v1, p1

    .local v1, "e":Ljava/lang/Object;, "TE;"
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v2
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TE;>;)Z"
        }
    .end annotation

    .prologue
    .line 1717
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$UnmodifiableObservableSet;, "Ljavafx/collections/FXCollections$UnmodifiableObservableSet<TE;>;"
    move-object v1, p1

    .local v1, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v2
.end method

.method public addListener(Ljavafx/beans/InvalidationListener;)V
    .locals 5

    .prologue
    .line 1685
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$UnmodifiableObservableSet;, "Ljavafx/collections/FXCollections$UnmodifiableObservableSet<TE;>;"
    move-object v1, p1

    .local v1, "listener":Ljavafx/beans/InvalidationListener;
    move-object v2, v0

    invoke-direct {v2}, Ljavafx/collections/FXCollections$UnmodifiableObservableSet;->initListener()V

    .line 1686
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Ljavafx/collections/FXCollections$UnmodifiableObservableSet;->listenerHelper:Lcom/sun/javafx/collections/SetListenerHelper;

    move-object v4, v1

    invoke-static {v3, v4}, Lcom/sun/javafx/collections/SetListenerHelper;->addListener(Lcom/sun/javafx/collections/SetListenerHelper;Ljavafx/beans/InvalidationListener;)Lcom/sun/javafx/collections/SetListenerHelper;

    move-result-object v3

    iput-object v3, v2, Ljavafx/collections/FXCollections$UnmodifiableObservableSet;->listenerHelper:Lcom/sun/javafx/collections/SetListenerHelper;

    .line 1687
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
    .line 1696
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$UnmodifiableObservableSet;, "Ljavafx/collections/FXCollections$UnmodifiableObservableSet<TE;>;"
    move-object v1, p1

    .local v1, "listener":Ljavafx/collections/SetChangeListener;, "Ljavafx/collections/SetChangeListener<-TE;>;"
    move-object v2, v0

    invoke-direct {v2}, Ljavafx/collections/FXCollections$UnmodifiableObservableSet;->initListener()V

    .line 1697
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Ljavafx/collections/FXCollections$UnmodifiableObservableSet;->listenerHelper:Lcom/sun/javafx/collections/SetListenerHelper;

    move-object v4, v1

    invoke-static {v3, v4}, Lcom/sun/javafx/collections/SetListenerHelper;->addListener(Lcom/sun/javafx/collections/SetListenerHelper;Ljavafx/collections/SetChangeListener;)Lcom/sun/javafx/collections/SetListenerHelper;

    move-result-object v3

    iput-object v3, v2, Ljavafx/collections/FXCollections$UnmodifiableObservableSet;->listenerHelper:Lcom/sun/javafx/collections/SetListenerHelper;

    .line 1698
    return-void
.end method

.method public clear()V
    .locals 4

    .prologue
    .line 1732
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$UnmodifiableObservableSet;, "Ljavafx/collections/FXCollections$UnmodifiableObservableSet<TE;>;"
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v1
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
    .line 1658
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$UnmodifiableObservableSet;, "Ljavafx/collections/FXCollections$UnmodifiableObservableSet<TE;>;"
    new-instance v1, Ljavafx/collections/FXCollections$UnmodifiableObservableSet$1;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Ljavafx/collections/FXCollections$UnmodifiableObservableSet$1;-><init>(Ljavafx/collections/FXCollections$UnmodifiableObservableSet;)V

    move-object v0, v1

    .end local v0    # "this":Ljavafx/collections/FXCollections$UnmodifiableObservableSet;, "Ljavafx/collections/FXCollections$UnmodifiableObservableSet<TE;>;"
    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    .line 1712
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$UnmodifiableObservableSet;, "Ljavafx/collections/FXCollections$UnmodifiableObservableSet<TE;>;"
    move-object v1, p1

    .local v1, "o":Ljava/lang/Object;
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v2
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
    .line 1727
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$UnmodifiableObservableSet;, "Ljavafx/collections/FXCollections$UnmodifiableObservableSet<TE;>;"
    move-object v1, p1

    .local v1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v2
.end method

.method public removeListener(Ljavafx/beans/InvalidationListener;)V
    .locals 5

    .prologue
    .line 1691
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$UnmodifiableObservableSet;, "Ljavafx/collections/FXCollections$UnmodifiableObservableSet<TE;>;"
    move-object v1, p1

    .local v1, "listener":Ljavafx/beans/InvalidationListener;
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Ljavafx/collections/FXCollections$UnmodifiableObservableSet;->listenerHelper:Lcom/sun/javafx/collections/SetListenerHelper;

    move-object v4, v1

    invoke-static {v3, v4}, Lcom/sun/javafx/collections/SetListenerHelper;->removeListener(Lcom/sun/javafx/collections/SetListenerHelper;Ljavafx/beans/InvalidationListener;)Lcom/sun/javafx/collections/SetListenerHelper;

    move-result-object v3

    iput-object v3, v2, Ljavafx/collections/FXCollections$UnmodifiableObservableSet;->listenerHelper:Lcom/sun/javafx/collections/SetListenerHelper;

    .line 1692
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
    .line 1702
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$UnmodifiableObservableSet;, "Ljavafx/collections/FXCollections$UnmodifiableObservableSet<TE;>;"
    move-object v1, p1

    .local v1, "listener":Ljavafx/collections/SetChangeListener;, "Ljavafx/collections/SetChangeListener<-TE;>;"
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Ljavafx/collections/FXCollections$UnmodifiableObservableSet;->listenerHelper:Lcom/sun/javafx/collections/SetListenerHelper;

    move-object v4, v1

    invoke-static {v3, v4}, Lcom/sun/javafx/collections/SetListenerHelper;->removeListener(Lcom/sun/javafx/collections/SetListenerHelper;Ljavafx/collections/SetChangeListener;)Lcom/sun/javafx/collections/SetListenerHelper;

    move-result-object v3

    iput-object v3, v2, Ljavafx/collections/FXCollections$UnmodifiableObservableSet;->listenerHelper:Lcom/sun/javafx/collections/SetListenerHelper;

    .line 1703
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
    .line 1722
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$UnmodifiableObservableSet;, "Ljavafx/collections/FXCollections$UnmodifiableObservableSet<TE;>;"
    move-object v1, p1

    .local v1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v2
.end method

.method public size()I
    .locals 2

    .prologue
    .line 1680
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$UnmodifiableObservableSet;, "Ljavafx/collections/FXCollections$UnmodifiableObservableSet<TE;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/collections/FXCollections$UnmodifiableObservableSet;->backingSet:Ljavafx/collections/ObservableSet;

    invoke-interface {v1}, Ljavafx/collections/ObservableSet;->size()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Ljavafx/collections/FXCollections$UnmodifiableObservableSet;, "Ljavafx/collections/FXCollections$UnmodifiableObservableSet<TE;>;"
    return v0
.end method
