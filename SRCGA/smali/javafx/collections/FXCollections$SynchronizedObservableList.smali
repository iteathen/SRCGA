.class Ljavafx/collections/FXCollections$SynchronizedObservableList;
.super Ljavafx/collections/FXCollections$SynchronizedList;
.source "FXCollections.java"

# interfaces
.implements Ljavafx/collections/ObservableList;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/collections/FXCollections;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SynchronizedObservableList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljavafx/collections/FXCollections$SynchronizedList",
        "<TT;>;",
        "Ljavafx/collections/ObservableList",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final backingList:Ljavafx/collections/ObservableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/collections/ObservableList",
            "<TT;>;"
        }
    .end annotation
.end field

.field private helper:Lcom/sun/javafx/collections/ListListenerHelper;

.field private final listener:Ljavafx/collections/ListChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/collections/ListChangeListener",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljavafx/collections/ObservableList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/ObservableList",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 1184
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$SynchronizedObservableList;, "Ljavafx/collections/FXCollections$SynchronizedObservableList<TT;>;"
    move-object v1, p1

    .local v1, "seq":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<TT;>;"
    move-object v2, v0

    move-object v3, v1

    new-instance v4, Ljava/lang/Object;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    invoke-direct {v2, v3, v4}, Ljavafx/collections/FXCollections$SynchronizedObservableList;-><init>(Ljavafx/collections/ObservableList;Ljava/lang/Object;)V

    .line 1185
    return-void
.end method

.method constructor <init>(Ljavafx/collections/ObservableList;Ljava/lang/Object;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/ObservableList",
            "<TT;>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1175
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$SynchronizedObservableList;, "Ljavafx/collections/FXCollections$SynchronizedObservableList<TT;>;"
    move-object v1, p1

    .local v1, "seq":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<TT;>;"
    move-object v2, p2

    .local v2, "mutex":Ljava/lang/Object;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Ljavafx/collections/FXCollections$SynchronizedList;-><init>(Ljava/util/List;Ljava/lang/Object;)V

    .line 1176
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Ljavafx/collections/FXCollections$SynchronizedObservableList;->backingList:Ljavafx/collections/ObservableList;

    .line 1177
    move-object v3, v0

    move-object v4, v0

    invoke-static {v4}, Ljavafx/collections/FXCollections$SynchronizedObservableList$$Lambda$1;->lambdaFactory$(Ljavafx/collections/FXCollections$SynchronizedObservableList;)Ljavafx/collections/ListChangeListener;

    move-result-object v4

    iput-object v4, v3, Ljavafx/collections/FXCollections$SynchronizedObservableList;->listener:Ljavafx/collections/ListChangeListener;

    .line 1180
    move-object v3, v0

    iget-object v3, v3, Ljavafx/collections/FXCollections$SynchronizedObservableList;->backingList:Ljavafx/collections/ObservableList;

    new-instance v4, Ljavafx/collections/WeakListChangeListener;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v0

    iget-object v6, v6, Ljavafx/collections/FXCollections$SynchronizedObservableList;->listener:Ljavafx/collections/ListChangeListener;

    invoke-direct {v5, v6}, Ljavafx/collections/WeakListChangeListener;-><init>(Ljavafx/collections/ListChangeListener;)V

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->addListener(Ljavafx/collections/ListChangeListener;)V

    .line 1181
    return-void
.end method

.method static synthetic access$lambda$0(Ljavafx/collections/FXCollections$SynchronizedObservableList;Ljavafx/collections/ListChangeListener$Change;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljavafx/collections/FXCollections$SynchronizedObservableList;->lambda$new$51(Ljavafx/collections/ListChangeListener$Change;)V

    return-void
.end method

.method private synthetic lambda$new$51(Ljavafx/collections/ListChangeListener$Change;)V
    .locals 8

    .prologue
    .line 1178
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$SynchronizedObservableList;, "Ljavafx/collections/FXCollections$SynchronizedObservableList<TT;>;"
    move-object v1, p1

    .local v1, "c":Ljavafx/collections/ListChangeListener$Change;
    move-object v2, v0

    iget-object v2, v2, Ljavafx/collections/FXCollections$SynchronizedObservableList;->helper:Lcom/sun/javafx/collections/ListListenerHelper;

    new-instance v3, Lcom/sun/javafx/collections/SourceAdapterChange;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    move-object v6, v1

    invoke-direct {v4, v5, v6}, Lcom/sun/javafx/collections/SourceAdapterChange;-><init>(Ljavafx/collections/ObservableList;Ljavafx/collections/ListChangeListener$Change;)V

    invoke-static {v2, v3}, Lcom/sun/javafx/collections/ListListenerHelper;->fireValueChangedEvent(Lcom/sun/javafx/collections/ListListenerHelper;Ljavafx/collections/ListChangeListener$Change;)V

    .line 1179
    return-void
.end method


# virtual methods
.method public varargs addAll([Ljava/lang/Object;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)Z"
        }
    .end annotation

    .prologue
    .line 1189
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$SynchronizedObservableList;, "Ljavafx/collections/FXCollections$SynchronizedObservableList<TT;>;"
    move-object v1, p1

    .local v1, "elements":[Ljava/lang/Object;, "[TT;"
    move-object v4, v0

    iget-object v4, v4, Ljavafx/collections/FXCollections$SynchronizedObservableList;->mutex:Ljava/lang/Object;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    move-object v2, v5

    monitor-enter v4

    .line 1190
    move-object v4, v0

    :try_start_0
    iget-object v4, v4, Ljavafx/collections/FXCollections$SynchronizedObservableList;->backingList:Ljavafx/collections/ObservableList;

    move-object v5, v1

    invoke-interface {v4, v5}, Ljavafx/collections/ObservableList;->addAll([Ljava/lang/Object;)Z

    move-result v4

    move-object v5, v2

    monitor-exit v5

    move v0, v4

    .end local v0    # "this":Ljavafx/collections/FXCollections$SynchronizedObservableList;, "Ljavafx/collections/FXCollections$SynchronizedObservableList<TT;>;"
    return v0

    .line 1191
    .restart local v0    # "this":Ljavafx/collections/FXCollections$SynchronizedObservableList;, "Ljavafx/collections/FXCollections$SynchronizedObservableList<TT;>;"
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

.method public final addListener(Ljavafx/beans/InvalidationListener;)V
    .locals 8

    .prologue
    .line 1231
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$SynchronizedObservableList;, "Ljavafx/collections/FXCollections$SynchronizedObservableList<TT;>;"
    move-object v1, p1

    .local v1, "listener":Ljavafx/beans/InvalidationListener;
    move-object v4, v0

    iget-object v4, v4, Ljavafx/collections/FXCollections$SynchronizedObservableList;->mutex:Ljava/lang/Object;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v2, v5

    monitor-enter v4

    .line 1232
    move-object v4, v0

    move-object v5, v0

    :try_start_0
    iget-object v5, v5, Ljavafx/collections/FXCollections$SynchronizedObservableList;->helper:Lcom/sun/javafx/collections/ListListenerHelper;

    move-object v6, v1

    invoke-static {v5, v6}, Lcom/sun/javafx/collections/ListListenerHelper;->addListener(Lcom/sun/javafx/collections/ListListenerHelper;Ljavafx/beans/InvalidationListener;)Lcom/sun/javafx/collections/ListListenerHelper;

    move-result-object v5

    iput-object v5, v4, Ljavafx/collections/FXCollections$SynchronizedObservableList;->helper:Lcom/sun/javafx/collections/ListListenerHelper;

    .line 1233
    move-object v4, v2

    monitor-exit v4

    .line 1234
    return-void

    .line 1233
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

.method public addListener(Ljavafx/collections/ListChangeListener;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/ListChangeListener",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 1245
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$SynchronizedObservableList;, "Ljavafx/collections/FXCollections$SynchronizedObservableList<TT;>;"
    move-object v1, p1

    .local v1, "listener":Ljavafx/collections/ListChangeListener;, "Ljavafx/collections/ListChangeListener<-TT;>;"
    move-object v4, v0

    iget-object v4, v4, Ljavafx/collections/FXCollections$SynchronizedObservableList;->mutex:Ljava/lang/Object;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v2, v5

    monitor-enter v4

    .line 1246
    move-object v4, v0

    move-object v5, v0

    :try_start_0
    iget-object v5, v5, Ljavafx/collections/FXCollections$SynchronizedObservableList;->helper:Lcom/sun/javafx/collections/ListListenerHelper;

    move-object v6, v1

    invoke-static {v5, v6}, Lcom/sun/javafx/collections/ListListenerHelper;->addListener(Lcom/sun/javafx/collections/ListListenerHelper;Ljavafx/collections/ListChangeListener;)Lcom/sun/javafx/collections/ListListenerHelper;

    move-result-object v5

    iput-object v5, v4, Ljavafx/collections/FXCollections$SynchronizedObservableList;->helper:Lcom/sun/javafx/collections/ListListenerHelper;

    .line 1247
    move-object v4, v2

    monitor-exit v4

    .line 1248
    return-void

    .line 1247
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

.method public remove(II)V
    .locals 9

    .prologue
    .line 1217
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$SynchronizedObservableList;, "Ljavafx/collections/FXCollections$SynchronizedObservableList<TT;>;"
    move v1, p1

    .local v1, "from":I
    move v2, p2

    .local v2, "to":I
    move-object v5, v0

    iget-object v5, v5, Ljavafx/collections/FXCollections$SynchronizedObservableList;->mutex:Ljava/lang/Object;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v3, v6

    monitor-enter v5

    .line 1218
    move-object v5, v0

    :try_start_0
    iget-object v5, v5, Ljavafx/collections/FXCollections$SynchronizedObservableList;->backingList:Ljavafx/collections/ObservableList;

    move v6, v1

    move v7, v2

    invoke-interface {v5, v6, v7}, Ljavafx/collections/ObservableList;->remove(II)V

    .line 1219
    move-object v5, v3

    monitor-exit v5

    .line 1220
    return-void

    .line 1219
    :catchall_0
    move-exception v5

    move-object v4, v5

    move-object v5, v3

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v5, v4

    throw v5
.end method

.method public varargs removeAll([Ljava/lang/Object;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)Z"
        }
    .end annotation

    .prologue
    .line 1203
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$SynchronizedObservableList;, "Ljavafx/collections/FXCollections$SynchronizedObservableList<TT;>;"
    move-object v1, p1

    .local v1, "elements":[Ljava/lang/Object;, "[TT;"
    move-object v4, v0

    iget-object v4, v4, Ljavafx/collections/FXCollections$SynchronizedObservableList;->mutex:Ljava/lang/Object;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    move-object v2, v5

    monitor-enter v4

    .line 1204
    move-object v4, v0

    :try_start_0
    iget-object v4, v4, Ljavafx/collections/FXCollections$SynchronizedObservableList;->backingList:Ljavafx/collections/ObservableList;

    move-object v5, v1

    invoke-interface {v4, v5}, Ljavafx/collections/ObservableList;->removeAll([Ljava/lang/Object;)Z

    move-result v4

    move-object v5, v2

    monitor-exit v5

    move v0, v4

    .end local v0    # "this":Ljavafx/collections/FXCollections$SynchronizedObservableList;, "Ljavafx/collections/FXCollections$SynchronizedObservableList<TT;>;"
    return v0

    .line 1205
    .restart local v0    # "this":Ljavafx/collections/FXCollections$SynchronizedObservableList;, "Ljavafx/collections/FXCollections$SynchronizedObservableList<TT;>;"
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

.method public final removeListener(Ljavafx/beans/InvalidationListener;)V
    .locals 8

    .prologue
    .line 1238
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$SynchronizedObservableList;, "Ljavafx/collections/FXCollections$SynchronizedObservableList<TT;>;"
    move-object v1, p1

    .local v1, "listener":Ljavafx/beans/InvalidationListener;
    move-object v4, v0

    iget-object v4, v4, Ljavafx/collections/FXCollections$SynchronizedObservableList;->mutex:Ljava/lang/Object;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v2, v5

    monitor-enter v4

    .line 1239
    move-object v4, v0

    move-object v5, v0

    :try_start_0
    iget-object v5, v5, Ljavafx/collections/FXCollections$SynchronizedObservableList;->helper:Lcom/sun/javafx/collections/ListListenerHelper;

    move-object v6, v1

    invoke-static {v5, v6}, Lcom/sun/javafx/collections/ListListenerHelper;->removeListener(Lcom/sun/javafx/collections/ListListenerHelper;Ljavafx/beans/InvalidationListener;)Lcom/sun/javafx/collections/ListListenerHelper;

    move-result-object v5

    iput-object v5, v4, Ljavafx/collections/FXCollections$SynchronizedObservableList;->helper:Lcom/sun/javafx/collections/ListListenerHelper;

    .line 1240
    move-object v4, v2

    monitor-exit v4

    .line 1241
    return-void

    .line 1240
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

.method public removeListener(Ljavafx/collections/ListChangeListener;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/ListChangeListener",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 1252
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$SynchronizedObservableList;, "Ljavafx/collections/FXCollections$SynchronizedObservableList<TT;>;"
    move-object v1, p1

    .local v1, "listener":Ljavafx/collections/ListChangeListener;, "Ljavafx/collections/ListChangeListener<-TT;>;"
    move-object v4, v0

    iget-object v4, v4, Ljavafx/collections/FXCollections$SynchronizedObservableList;->mutex:Ljava/lang/Object;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v2, v5

    monitor-enter v4

    .line 1253
    move-object v4, v0

    move-object v5, v0

    :try_start_0
    iget-object v5, v5, Ljavafx/collections/FXCollections$SynchronizedObservableList;->helper:Lcom/sun/javafx/collections/ListListenerHelper;

    move-object v6, v1

    invoke-static {v5, v6}, Lcom/sun/javafx/collections/ListListenerHelper;->removeListener(Lcom/sun/javafx/collections/ListListenerHelper;Ljavafx/collections/ListChangeListener;)Lcom/sun/javafx/collections/ListListenerHelper;

    move-result-object v5

    iput-object v5, v4, Ljavafx/collections/FXCollections$SynchronizedObservableList;->helper:Lcom/sun/javafx/collections/ListListenerHelper;

    .line 1254
    move-object v4, v2

    monitor-exit v4

    .line 1255
    return-void

    .line 1254
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

.method public varargs retainAll([Ljava/lang/Object;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)Z"
        }
    .end annotation

    .prologue
    .line 1210
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$SynchronizedObservableList;, "Ljavafx/collections/FXCollections$SynchronizedObservableList<TT;>;"
    move-object v1, p1

    .local v1, "elements":[Ljava/lang/Object;, "[TT;"
    move-object v4, v0

    iget-object v4, v4, Ljavafx/collections/FXCollections$SynchronizedObservableList;->mutex:Ljava/lang/Object;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    move-object v2, v5

    monitor-enter v4

    .line 1211
    move-object v4, v0

    :try_start_0
    iget-object v4, v4, Ljavafx/collections/FXCollections$SynchronizedObservableList;->backingList:Ljavafx/collections/ObservableList;

    move-object v5, v1

    invoke-interface {v4, v5}, Ljavafx/collections/ObservableList;->retainAll([Ljava/lang/Object;)Z

    move-result v4

    move-object v5, v2

    monitor-exit v5

    move v0, v4

    .end local v0    # "this":Ljavafx/collections/FXCollections$SynchronizedObservableList;, "Ljavafx/collections/FXCollections$SynchronizedObservableList<TT;>;"
    return v0

    .line 1212
    .restart local v0    # "this":Ljavafx/collections/FXCollections$SynchronizedObservableList;, "Ljavafx/collections/FXCollections$SynchronizedObservableList<TT;>;"
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

.method public setAll(Ljava/util/Collection;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TT;>;)Z"
        }
    .end annotation

    .prologue
    .line 1224
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$SynchronizedObservableList;, "Ljavafx/collections/FXCollections$SynchronizedObservableList<TT;>;"
    move-object v1, p1

    .local v1, "col":Ljava/util/Collection;, "Ljava/util/Collection<+TT;>;"
    move-object v4, v0

    iget-object v4, v4, Ljavafx/collections/FXCollections$SynchronizedObservableList;->mutex:Ljava/lang/Object;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    move-object v2, v5

    monitor-enter v4

    .line 1225
    move-object v4, v0

    :try_start_0
    iget-object v4, v4, Ljavafx/collections/FXCollections$SynchronizedObservableList;->backingList:Ljavafx/collections/ObservableList;

    move-object v5, v1

    invoke-interface {v4, v5}, Ljavafx/collections/ObservableList;->setAll(Ljava/util/Collection;)Z

    move-result v4

    move-object v5, v2

    monitor-exit v5

    move v0, v4

    .end local v0    # "this":Ljavafx/collections/FXCollections$SynchronizedObservableList;, "Ljavafx/collections/FXCollections$SynchronizedObservableList<TT;>;"
    return v0

    .line 1226
    .restart local v0    # "this":Ljavafx/collections/FXCollections$SynchronizedObservableList;, "Ljavafx/collections/FXCollections$SynchronizedObservableList<TT;>;"
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

.method public varargs setAll([Ljava/lang/Object;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)Z"
        }
    .end annotation

    .prologue
    .line 1196
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$SynchronizedObservableList;, "Ljavafx/collections/FXCollections$SynchronizedObservableList<TT;>;"
    move-object v1, p1

    .local v1, "elements":[Ljava/lang/Object;, "[TT;"
    move-object v4, v0

    iget-object v4, v4, Ljavafx/collections/FXCollections$SynchronizedObservableList;->mutex:Ljava/lang/Object;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    move-object v2, v5

    monitor-enter v4

    .line 1197
    move-object v4, v0

    :try_start_0
    iget-object v4, v4, Ljavafx/collections/FXCollections$SynchronizedObservableList;->backingList:Ljavafx/collections/ObservableList;

    move-object v5, v1

    invoke-interface {v4, v5}, Ljavafx/collections/ObservableList;->setAll([Ljava/lang/Object;)Z

    move-result v4

    move-object v5, v2

    monitor-exit v5

    move v0, v4

    .end local v0    # "this":Ljavafx/collections/FXCollections$SynchronizedObservableList;, "Ljavafx/collections/FXCollections$SynchronizedObservableList<TT;>;"
    return v0

    .line 1198
    .restart local v0    # "this":Ljavafx/collections/FXCollections$SynchronizedObservableList;, "Ljavafx/collections/FXCollections$SynchronizedObservableList<TT;>;"
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
