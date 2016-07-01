.class Ljavafx/collections/FXCollections$SynchronizedObservableSet;
.super Ljavafx/collections/FXCollections$SynchronizedSet;
.source "FXCollections.java"

# interfaces
.implements Ljavafx/collections/ObservableSet;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/collections/FXCollections;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SynchronizedObservableSet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljavafx/collections/FXCollections$SynchronizedSet",
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

.field private final listener:Ljavafx/collections/SetChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/collections/SetChangeListener",
            "<TE;>;"
        }
    .end annotation
.end field

.field private listenerHelper:Lcom/sun/javafx/collections/SetListenerHelper;


# direct methods
.method constructor <init>(Ljavafx/collections/ObservableSet;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/ObservableSet",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 1872
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$SynchronizedObservableSet;, "Ljavafx/collections/FXCollections$SynchronizedObservableSet<TE;>;"
    move-object v1, p1

    .local v1, "set":Ljavafx/collections/ObservableSet;, "Ljavafx/collections/ObservableSet<TE;>;"
    move-object v2, v0

    move-object v3, v1

    new-instance v4, Ljava/lang/Object;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    invoke-direct {v2, v3, v4}, Ljavafx/collections/FXCollections$SynchronizedObservableSet;-><init>(Ljavafx/collections/ObservableSet;Ljava/lang/Object;)V

    .line 1873
    return-void
.end method

.method constructor <init>(Ljavafx/collections/ObservableSet;Ljava/lang/Object;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/ObservableSet",
            "<TE;>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1863
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$SynchronizedObservableSet;, "Ljavafx/collections/FXCollections$SynchronizedObservableSet<TE;>;"
    move-object v1, p1

    .local v1, "set":Ljavafx/collections/ObservableSet;, "Ljavafx/collections/ObservableSet<TE;>;"
    move-object v2, p2

    .local v2, "mutex":Ljava/lang/Object;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Ljavafx/collections/FXCollections$SynchronizedSet;-><init>(Ljava/util/Set;Ljava/lang/Object;)V

    .line 1864
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Ljavafx/collections/FXCollections$SynchronizedObservableSet;->backingSet:Ljavafx/collections/ObservableSet;

    .line 1865
    move-object v3, v0

    move-object v4, v0

    invoke-static {v4}, Ljavafx/collections/FXCollections$SynchronizedObservableSet$$Lambda$1;->lambdaFactory$(Ljavafx/collections/FXCollections$SynchronizedObservableSet;)Ljavafx/collections/SetChangeListener;

    move-result-object v4

    iput-object v4, v3, Ljavafx/collections/FXCollections$SynchronizedObservableSet;->listener:Ljavafx/collections/SetChangeListener;

    .line 1868
    move-object v3, v0

    iget-object v3, v3, Ljavafx/collections/FXCollections$SynchronizedObservableSet;->backingSet:Ljavafx/collections/ObservableSet;

    new-instance v4, Ljavafx/collections/WeakSetChangeListener;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v0

    iget-object v6, v6, Ljavafx/collections/FXCollections$SynchronizedObservableSet;->listener:Ljavafx/collections/SetChangeListener;

    invoke-direct {v5, v6}, Ljavafx/collections/WeakSetChangeListener;-><init>(Ljavafx/collections/SetChangeListener;)V

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableSet;->addListener(Ljavafx/collections/SetChangeListener;)V

    .line 1869
    return-void
.end method

.method static synthetic access$lambda$0(Ljavafx/collections/FXCollections$SynchronizedObservableSet;Ljavafx/collections/SetChangeListener$Change;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljavafx/collections/FXCollections$SynchronizedObservableSet;->lambda$new$54(Ljavafx/collections/SetChangeListener$Change;)V

    return-void
.end method

.method private synthetic lambda$new$54(Ljavafx/collections/SetChangeListener$Change;)V
    .locals 8

    .prologue
    .line 1866
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$SynchronizedObservableSet;, "Ljavafx/collections/FXCollections$SynchronizedObservableSet<TE;>;"
    move-object v1, p1

    .local v1, "c":Ljavafx/collections/SetChangeListener$Change;
    move-object v2, v0

    iget-object v2, v2, Ljavafx/collections/FXCollections$SynchronizedObservableSet;->listenerHelper:Lcom/sun/javafx/collections/SetListenerHelper;

    new-instance v3, Lcom/sun/javafx/collections/SetAdapterChange;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    move-object v6, v1

    invoke-direct {v4, v5, v6}, Lcom/sun/javafx/collections/SetAdapterChange;-><init>(Ljavafx/collections/ObservableSet;Ljavafx/collections/SetChangeListener$Change;)V

    invoke-static {v2, v3}, Lcom/sun/javafx/collections/SetListenerHelper;->fireValueChangedEvent(Lcom/sun/javafx/collections/SetListenerHelper;Ljavafx/collections/SetChangeListener$Change;)V

    .line 1867
    return-void
.end method


# virtual methods
.method public addListener(Ljavafx/beans/InvalidationListener;)V
    .locals 8

    .prologue
    .line 1877
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$SynchronizedObservableSet;, "Ljavafx/collections/FXCollections$SynchronizedObservableSet<TE;>;"
    move-object v1, p1

    .local v1, "listener":Ljavafx/beans/InvalidationListener;
    move-object v4, v0

    iget-object v4, v4, Ljavafx/collections/FXCollections$SynchronizedObservableSet;->mutex:Ljava/lang/Object;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v2, v5

    monitor-enter v4

    .line 1878
    move-object v4, v0

    move-object v5, v0

    :try_start_0
    iget-object v5, v5, Ljavafx/collections/FXCollections$SynchronizedObservableSet;->listenerHelper:Lcom/sun/javafx/collections/SetListenerHelper;

    move-object v6, v1

    invoke-static {v5, v6}, Lcom/sun/javafx/collections/SetListenerHelper;->addListener(Lcom/sun/javafx/collections/SetListenerHelper;Ljavafx/beans/InvalidationListener;)Lcom/sun/javafx/collections/SetListenerHelper;

    move-result-object v5

    iput-object v5, v4, Ljavafx/collections/FXCollections$SynchronizedObservableSet;->listenerHelper:Lcom/sun/javafx/collections/SetListenerHelper;

    .line 1879
    move-object v4, v2

    monitor-exit v4

    .line 1880
    return-void

    .line 1879
    :catchall_0
    move-exception v4

    move-object v3, v4

    move-object v4, v2

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v4, v3

    throw v4
.end method

.method public addListener(Ljavafx/collections/SetChangeListener;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/SetChangeListener",
            "<-TE;>;)V"
        }
    .end annotation

    .prologue
    .line 1890
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$SynchronizedObservableSet;, "Ljavafx/collections/FXCollections$SynchronizedObservableSet<TE;>;"
    move-object v1, p1

    .local v1, "listener":Ljavafx/collections/SetChangeListener;, "Ljavafx/collections/SetChangeListener<-TE;>;"
    move-object v4, v0

    iget-object v4, v4, Ljavafx/collections/FXCollections$SynchronizedObservableSet;->mutex:Ljava/lang/Object;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v2, v5

    monitor-enter v4

    .line 1891
    move-object v4, v0

    move-object v5, v0

    :try_start_0
    iget-object v5, v5, Ljavafx/collections/FXCollections$SynchronizedObservableSet;->listenerHelper:Lcom/sun/javafx/collections/SetListenerHelper;

    move-object v6, v1

    invoke-static {v5, v6}, Lcom/sun/javafx/collections/SetListenerHelper;->addListener(Lcom/sun/javafx/collections/SetListenerHelper;Ljavafx/collections/SetChangeListener;)Lcom/sun/javafx/collections/SetListenerHelper;

    move-result-object v5

    iput-object v5, v4, Ljavafx/collections/FXCollections$SynchronizedObservableSet;->listenerHelper:Lcom/sun/javafx/collections/SetListenerHelper;

    .line 1892
    move-object v4, v2

    monitor-exit v4

    .line 1893
    return-void

    .line 1892
    :catchall_0
    move-exception v4

    move-object v3, v4

    move-object v4, v2

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v4, v3

    throw v4
.end method

.method public removeListener(Ljavafx/beans/InvalidationListener;)V
    .locals 8

    .prologue
    .line 1884
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$SynchronizedObservableSet;, "Ljavafx/collections/FXCollections$SynchronizedObservableSet<TE;>;"
    move-object v1, p1

    .local v1, "listener":Ljavafx/beans/InvalidationListener;
    move-object v4, v0

    iget-object v4, v4, Ljavafx/collections/FXCollections$SynchronizedObservableSet;->mutex:Ljava/lang/Object;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v2, v5

    monitor-enter v4

    .line 1885
    move-object v4, v0

    move-object v5, v0

    :try_start_0
    iget-object v5, v5, Ljavafx/collections/FXCollections$SynchronizedObservableSet;->listenerHelper:Lcom/sun/javafx/collections/SetListenerHelper;

    move-object v6, v1

    invoke-static {v5, v6}, Lcom/sun/javafx/collections/SetListenerHelper;->removeListener(Lcom/sun/javafx/collections/SetListenerHelper;Ljavafx/beans/InvalidationListener;)Lcom/sun/javafx/collections/SetListenerHelper;

    move-result-object v5

    iput-object v5, v4, Ljavafx/collections/FXCollections$SynchronizedObservableSet;->listenerHelper:Lcom/sun/javafx/collections/SetListenerHelper;

    .line 1886
    move-object v4, v2

    monitor-exit v4

    .line 1887
    return-void

    .line 1886
    :catchall_0
    move-exception v4

    move-object v3, v4

    move-object v4, v2

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v4, v3

    throw v4
.end method

.method public removeListener(Ljavafx/collections/SetChangeListener;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/SetChangeListener",
            "<-TE;>;)V"
        }
    .end annotation

    .prologue
    .line 1897
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$SynchronizedObservableSet;, "Ljavafx/collections/FXCollections$SynchronizedObservableSet<TE;>;"
    move-object v1, p1

    .local v1, "listener":Ljavafx/collections/SetChangeListener;, "Ljavafx/collections/SetChangeListener<-TE;>;"
    move-object v4, v0

    iget-object v4, v4, Ljavafx/collections/FXCollections$SynchronizedObservableSet;->mutex:Ljava/lang/Object;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v2, v5

    monitor-enter v4

    .line 1898
    move-object v4, v0

    move-object v5, v0

    :try_start_0
    iget-object v5, v5, Ljavafx/collections/FXCollections$SynchronizedObservableSet;->listenerHelper:Lcom/sun/javafx/collections/SetListenerHelper;

    move-object v6, v1

    invoke-static {v5, v6}, Lcom/sun/javafx/collections/SetListenerHelper;->removeListener(Lcom/sun/javafx/collections/SetListenerHelper;Ljavafx/collections/SetChangeListener;)Lcom/sun/javafx/collections/SetListenerHelper;

    move-result-object v5

    iput-object v5, v4, Ljavafx/collections/FXCollections$SynchronizedObservableSet;->listenerHelper:Lcom/sun/javafx/collections/SetListenerHelper;

    .line 1899
    move-object v4, v2

    monitor-exit v4

    .line 1900
    return-void

    .line 1899
    :catchall_0
    move-exception v4

    move-object v3, v4

    move-object v4, v2

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v4, v3

    throw v4
.end method
