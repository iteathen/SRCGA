.class Ljavafx/collections/FXCollections$SynchronizedObservableMap;
.super Ljavafx/collections/FXCollections$SynchronizedMap;
.source "FXCollections.java"

# interfaces
.implements Ljavafx/collections/ObservableMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/collections/FXCollections;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SynchronizedObservableMap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljavafx/collections/FXCollections$SynchronizedMap",
        "<TK;TV;>;",
        "Ljavafx/collections/ObservableMap",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field private final backingMap:Ljavafx/collections/ObservableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/collections/ObservableMap",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private final listener:Ljavafx/collections/MapChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/collections/MapChangeListener",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private listenerHelper:Lcom/sun/javafx/collections/MapListenerHelper;


# direct methods
.method constructor <init>(Ljavafx/collections/ObservableMap;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/ObservableMap",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 2766
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$SynchronizedObservableMap;, "Ljavafx/collections/FXCollections$SynchronizedObservableMap<TK;TV;>;"
    move-object v1, p1

    .local v1, "map":Ljavafx/collections/ObservableMap;, "Ljavafx/collections/ObservableMap<TK;TV;>;"
    move-object v2, v0

    move-object v3, v1

    new-instance v4, Ljava/lang/Object;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    invoke-direct {v2, v3, v4}, Ljavafx/collections/FXCollections$SynchronizedObservableMap;-><init>(Ljavafx/collections/ObservableMap;Ljava/lang/Object;)V

    .line 2767
    return-void
.end method

.method constructor <init>(Ljavafx/collections/ObservableMap;Ljava/lang/Object;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/ObservableMap",
            "<TK;TV;>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2757
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$SynchronizedObservableMap;, "Ljavafx/collections/FXCollections$SynchronizedObservableMap<TK;TV;>;"
    move-object v1, p1

    .local v1, "map":Ljavafx/collections/ObservableMap;, "Ljavafx/collections/ObservableMap<TK;TV;>;"
    move-object v2, p2

    .local v2, "mutex":Ljava/lang/Object;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Ljavafx/collections/FXCollections$SynchronizedMap;-><init>(Ljava/util/Map;Ljava/lang/Object;)V

    .line 2758
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Ljavafx/collections/FXCollections$SynchronizedObservableMap;->backingMap:Ljavafx/collections/ObservableMap;

    .line 2759
    move-object v3, v0

    move-object v4, v0

    invoke-static {v4}, Ljavafx/collections/FXCollections$SynchronizedObservableMap$$Lambda$1;->lambdaFactory$(Ljavafx/collections/FXCollections$SynchronizedObservableMap;)Ljavafx/collections/MapChangeListener;

    move-result-object v4

    iput-object v4, v3, Ljavafx/collections/FXCollections$SynchronizedObservableMap;->listener:Ljavafx/collections/MapChangeListener;

    .line 2762
    move-object v3, v0

    iget-object v3, v3, Ljavafx/collections/FXCollections$SynchronizedObservableMap;->backingMap:Ljavafx/collections/ObservableMap;

    new-instance v4, Ljavafx/collections/WeakMapChangeListener;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v0

    iget-object v6, v6, Ljavafx/collections/FXCollections$SynchronizedObservableMap;->listener:Ljavafx/collections/MapChangeListener;

    invoke-direct {v5, v6}, Ljavafx/collections/WeakMapChangeListener;-><init>(Ljavafx/collections/MapChangeListener;)V

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableMap;->addListener(Ljavafx/collections/MapChangeListener;)V

    .line 2763
    return-void
.end method

.method static synthetic access$lambda$0(Ljavafx/collections/FXCollections$SynchronizedObservableMap;Ljavafx/collections/MapChangeListener$Change;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljavafx/collections/FXCollections$SynchronizedObservableMap;->lambda$new$57(Ljavafx/collections/MapChangeListener$Change;)V

    return-void
.end method

.method private synthetic lambda$new$57(Ljavafx/collections/MapChangeListener$Change;)V
    .locals 8

    .prologue
    .line 2760
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$SynchronizedObservableMap;, "Ljavafx/collections/FXCollections$SynchronizedObservableMap<TK;TV;>;"
    move-object v1, p1

    .local v1, "c":Ljavafx/collections/MapChangeListener$Change;
    move-object v2, v0

    iget-object v2, v2, Ljavafx/collections/FXCollections$SynchronizedObservableMap;->listenerHelper:Lcom/sun/javafx/collections/MapListenerHelper;

    new-instance v3, Lcom/sun/javafx/collections/MapAdapterChange;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    move-object v6, v1

    invoke-direct {v4, v5, v6}, Lcom/sun/javafx/collections/MapAdapterChange;-><init>(Ljavafx/collections/ObservableMap;Ljavafx/collections/MapChangeListener$Change;)V

    invoke-static {v2, v3}, Lcom/sun/javafx/collections/MapListenerHelper;->fireValueChangedEvent(Lcom/sun/javafx/collections/MapListenerHelper;Ljavafx/collections/MapChangeListener$Change;)V

    .line 2761
    return-void
.end method


# virtual methods
.method public addListener(Ljavafx/beans/InvalidationListener;)V
    .locals 8

    .prologue
    .line 2771
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$SynchronizedObservableMap;, "Ljavafx/collections/FXCollections$SynchronizedObservableMap<TK;TV;>;"
    move-object v1, p1

    .local v1, "listener":Ljavafx/beans/InvalidationListener;
    move-object v4, v0

    iget-object v4, v4, Ljavafx/collections/FXCollections$SynchronizedObservableMap;->mutex:Ljava/lang/Object;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v2, v5

    monitor-enter v4

    .line 2772
    move-object v4, v0

    move-object v5, v0

    :try_start_0
    iget-object v5, v5, Ljavafx/collections/FXCollections$SynchronizedObservableMap;->listenerHelper:Lcom/sun/javafx/collections/MapListenerHelper;

    move-object v6, v1

    invoke-static {v5, v6}, Lcom/sun/javafx/collections/MapListenerHelper;->addListener(Lcom/sun/javafx/collections/MapListenerHelper;Ljavafx/beans/InvalidationListener;)Lcom/sun/javafx/collections/MapListenerHelper;

    move-result-object v5

    iput-object v5, v4, Ljavafx/collections/FXCollections$SynchronizedObservableMap;->listenerHelper:Lcom/sun/javafx/collections/MapListenerHelper;

    .line 2773
    move-object v4, v2

    monitor-exit v4

    .line 2774
    return-void

    .line 2773
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

.method public addListener(Ljavafx/collections/MapChangeListener;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/MapChangeListener",
            "<-TK;-TV;>;)V"
        }
    .end annotation

    .prologue
    .line 2785
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$SynchronizedObservableMap;, "Ljavafx/collections/FXCollections$SynchronizedObservableMap<TK;TV;>;"
    move-object v1, p1

    .local v1, "listener":Ljavafx/collections/MapChangeListener;, "Ljavafx/collections/MapChangeListener<-TK;-TV;>;"
    move-object v4, v0

    iget-object v4, v4, Ljavafx/collections/FXCollections$SynchronizedObservableMap;->mutex:Ljava/lang/Object;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v2, v5

    monitor-enter v4

    .line 2786
    move-object v4, v0

    move-object v5, v0

    :try_start_0
    iget-object v5, v5, Ljavafx/collections/FXCollections$SynchronizedObservableMap;->listenerHelper:Lcom/sun/javafx/collections/MapListenerHelper;

    move-object v6, v1

    invoke-static {v5, v6}, Lcom/sun/javafx/collections/MapListenerHelper;->addListener(Lcom/sun/javafx/collections/MapListenerHelper;Ljavafx/collections/MapChangeListener;)Lcom/sun/javafx/collections/MapListenerHelper;

    move-result-object v5

    iput-object v5, v4, Ljavafx/collections/FXCollections$SynchronizedObservableMap;->listenerHelper:Lcom/sun/javafx/collections/MapListenerHelper;

    .line 2787
    move-object v4, v2

    monitor-exit v4

    .line 2788
    return-void

    .line 2787
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
    .line 2778
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$SynchronizedObservableMap;, "Ljavafx/collections/FXCollections$SynchronizedObservableMap<TK;TV;>;"
    move-object v1, p1

    .local v1, "listener":Ljavafx/beans/InvalidationListener;
    move-object v4, v0

    iget-object v4, v4, Ljavafx/collections/FXCollections$SynchronizedObservableMap;->mutex:Ljava/lang/Object;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v2, v5

    monitor-enter v4

    .line 2779
    move-object v4, v0

    move-object v5, v0

    :try_start_0
    iget-object v5, v5, Ljavafx/collections/FXCollections$SynchronizedObservableMap;->listenerHelper:Lcom/sun/javafx/collections/MapListenerHelper;

    move-object v6, v1

    invoke-static {v5, v6}, Lcom/sun/javafx/collections/MapListenerHelper;->removeListener(Lcom/sun/javafx/collections/MapListenerHelper;Ljavafx/beans/InvalidationListener;)Lcom/sun/javafx/collections/MapListenerHelper;

    move-result-object v5

    iput-object v5, v4, Ljavafx/collections/FXCollections$SynchronizedObservableMap;->listenerHelper:Lcom/sun/javafx/collections/MapListenerHelper;

    .line 2780
    move-object v4, v2

    monitor-exit v4

    .line 2781
    return-void

    .line 2780
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

.method public removeListener(Ljavafx/collections/MapChangeListener;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/MapChangeListener",
            "<-TK;-TV;>;)V"
        }
    .end annotation

    .prologue
    .line 2792
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$SynchronizedObservableMap;, "Ljavafx/collections/FXCollections$SynchronizedObservableMap<TK;TV;>;"
    move-object v1, p1

    .local v1, "listener":Ljavafx/collections/MapChangeListener;, "Ljavafx/collections/MapChangeListener<-TK;-TV;>;"
    move-object v4, v0

    iget-object v4, v4, Ljavafx/collections/FXCollections$SynchronizedObservableMap;->mutex:Ljava/lang/Object;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v2, v5

    monitor-enter v4

    .line 2793
    move-object v4, v0

    move-object v5, v0

    :try_start_0
    iget-object v5, v5, Ljavafx/collections/FXCollections$SynchronizedObservableMap;->listenerHelper:Lcom/sun/javafx/collections/MapListenerHelper;

    move-object v6, v1

    invoke-static {v5, v6}, Lcom/sun/javafx/collections/MapListenerHelper;->removeListener(Lcom/sun/javafx/collections/MapListenerHelper;Ljavafx/collections/MapChangeListener;)Lcom/sun/javafx/collections/MapListenerHelper;

    move-result-object v5

    iput-object v5, v4, Ljavafx/collections/FXCollections$SynchronizedObservableMap;->listenerHelper:Lcom/sun/javafx/collections/MapListenerHelper;

    .line 2794
    move-object v4, v2

    monitor-exit v4

    .line 2795
    return-void

    .line 2794
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
