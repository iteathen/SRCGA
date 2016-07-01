.class public abstract Lcom/sun/media/jfxmediaimpl/NativeMedia;
.super Lcom/sun/media/jfxmedia/Media;
.source "NativeMedia.java"


# instance fields
.field protected final listenerLock:Ljava/util/concurrent/locks/Lock;

.field protected markerListeners:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Lcom/sun/media/jfxmediaimpl/MarkerStateListener;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field protected final markerLock:Ljava/util/concurrent/locks/Lock;

.field protected markersByName:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field protected markersByTime:Ljava/util/NavigableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/NavigableMap",
            "<",
            "Ljava/lang/Double;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/sun/media/jfxmedia/locator/Locator;)V
    .locals 6

    .prologue
    .line 56
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/NativeMedia;
    move-object v1, p1

    .local v1, "locator":Lcom/sun/media/jfxmedia/locator/Locator;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/media/jfxmedia/Media;-><init>(Lcom/sun/media/jfxmedia/locator/Locator;)V

    .line 42
    move-object v2, v0

    new-instance v3, Ljava/util/concurrent/locks/ReentrantLock;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v3, v2, Lcom/sun/media/jfxmediaimpl/NativeMedia;->markerLock:Ljava/util/concurrent/locks/Lock;

    .line 43
    move-object v2, v0

    new-instance v3, Ljava/util/concurrent/locks/ReentrantLock;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v3, v2, Lcom/sun/media/jfxmediaimpl/NativeMedia;->listenerLock:Ljava/util/concurrent/locks/Lock;

    .line 57
    return-void
.end method


# virtual methods
.method public addMarker(Ljava/lang/String;D)V
    .locals 10

    .prologue
    .line 72
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/NativeMedia;
    move-object v1, p1

    .local v1, "markerName":Ljava/lang/String;
    move-wide v2, p2

    .local v2, "presentationTime":D
    move-object v5, v1

    if-nez v5, :cond_0

    .line 73
    new-instance v5, Ljava/lang/IllegalArgumentException;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const-string v7, "markerName == null!"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 74
    :cond_0
    move-wide v5, v2

    const-wide/16 v7, 0x0

    cmpg-double v5, v5, v7

    if-gez v5, :cond_1

    .line 75
    new-instance v5, Ljava/lang/IllegalArgumentException;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const-string v7, "presentationTime < 0"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 78
    :cond_1
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/media/jfxmediaimpl/NativeMedia;->markerLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 80
    move-object v5, v0

    :try_start_0
    iget-object v5, v5, Lcom/sun/media/jfxmediaimpl/NativeMedia;->markersByName:Ljava/util/Map;

    if-nez v5, :cond_2

    .line 81
    move-object v5, v0

    new-instance v6, Ljava/util/HashMap;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    iput-object v6, v5, Lcom/sun/media/jfxmediaimpl/NativeMedia;->markersByName:Ljava/util/Map;

    .line 82
    move-object v5, v0

    new-instance v6, Ljava/util/TreeMap;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    invoke-direct {v7}, Ljava/util/TreeMap;-><init>()V

    iput-object v6, v5, Lcom/sun/media/jfxmediaimpl/NativeMedia;->markersByTime:Ljava/util/NavigableMap;

    .line 84
    :cond_2
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/media/jfxmediaimpl/NativeMedia;->markersByName:Ljava/util/Map;

    move-object v6, v1

    move-wide v7, v2

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 85
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/media/jfxmediaimpl/NativeMedia;->markersByTime:Ljava/util/NavigableMap;

    move-wide v6, v2

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    move-object v7, v1

    invoke-interface {v5, v6, v7}, Ljava/util/NavigableMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    .line 87
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/media/jfxmediaimpl/NativeMedia;->markerLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 88
    .line 90
    move-object v5, v0

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/sun/media/jfxmediaimpl/NativeMedia;->fireMarkerStateEvent(Z)V

    .line 91
    return-void

    .line 87
    :catchall_0
    move-exception v5

    move-object v4, v5

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/media/jfxmediaimpl/NativeMedia;->markerLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->unlock()V

    move-object v5, v4

    throw v5
.end method

.method addMarkerStateListener(Lcom/sun/media/jfxmediaimpl/MarkerStateListener;)V
    .locals 7

    .prologue
    .line 163
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/NativeMedia;
    move-object v1, p1

    .local v1, "listener":Lcom/sun/media/jfxmediaimpl/MarkerStateListener;
    move-object v3, v1

    if-eqz v3, :cond_1

    .line 164
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/media/jfxmediaimpl/NativeMedia;->listenerLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 166
    move-object v3, v0

    :try_start_0
    iget-object v3, v3, Lcom/sun/media/jfxmediaimpl/NativeMedia;->markerListeners:Ljava/util/WeakHashMap;

    if-nez v3, :cond_0

    .line 167
    move-object v3, v0

    new-instance v4, Ljava/util/WeakHashMap;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v4, v3, Lcom/sun/media/jfxmediaimpl/NativeMedia;->markerListeners:Ljava/util/WeakHashMap;

    .line 169
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/media/jfxmediaimpl/NativeMedia;->markerListeners:Ljava/util/WeakHashMap;

    move-object v4, v1

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v3, v4, v5}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 171
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/media/jfxmediaimpl/NativeMedia;->listenerLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 172
    .line 174
    :cond_1
    return-void

    .line 171
    :catchall_0
    move-exception v3

    move-object v2, v3

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/media/jfxmediaimpl/NativeMedia;->listenerLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    move-object v3, v2

    throw v3
.end method

.method public addTrack(Lcom/sun/media/jfxmedia/track/Track;)V
    .locals 4

    .prologue
    .line 66
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/NativeMedia;
    move-object v1, p1

    .local v1, "track":Lcom/sun/media/jfxmedia/track/Track;
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Lcom/sun/media/jfxmedia/Media;->addTrack(Lcom/sun/media/jfxmedia/track/Track;)V

    .line 67
    return-void
.end method

.method public abstract dispose()V
.end method

.method fireMarkerStateEvent(Z)V
    .locals 7

    .prologue
    .line 191
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/NativeMedia;
    move v1, p1

    .local v1, "hasMarkers":Z
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/media/jfxmediaimpl/NativeMedia;->listenerLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 193
    move-object v5, v0

    :try_start_0
    iget-object v5, v5, Lcom/sun/media/jfxmediaimpl/NativeMedia;->markerListeners:Ljava/util/WeakHashMap;

    if-eqz v5, :cond_1

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/media/jfxmediaimpl/NativeMedia;->markerListeners:Ljava/util/WeakHashMap;

    invoke-virtual {v5}, Ljava/util/WeakHashMap;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    .line 194
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/media/jfxmediaimpl/NativeMedia;->markerListeners:Ljava/util/WeakHashMap;

    invoke-virtual {v5}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v2, v5

    :goto_0
    move-object v5, v2

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    move-object v5, v2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sun/media/jfxmediaimpl/MarkerStateListener;

    move-object v3, v5

    .line 195
    .local v3, "listener":Lcom/sun/media/jfxmediaimpl/MarkerStateListener;
    move-object v5, v3

    if-eqz v5, :cond_0

    .line 196
    move-object v5, v3

    move v6, v1

    invoke-interface {v5, v6}, Lcom/sun/media/jfxmediaimpl/MarkerStateListener;->markerStateChanged(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 198
    :cond_0
    goto :goto_0

    .line 201
    .end local v3    # "listener":Lcom/sun/media/jfxmediaimpl/MarkerStateListener;
    :cond_1
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/media/jfxmediaimpl/NativeMedia;->listenerLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 202
    .line 203
    return-void

    .line 201
    :catchall_0
    move-exception v5

    move-object v4, v5

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/media/jfxmediaimpl/NativeMedia;->listenerLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->unlock()V

    move-object v5, v4

    throw v5
.end method

.method public getMarkers()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .prologue
    .line 94
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/NativeMedia;
    const/4 v3, 0x0

    move-object v1, v3

    .line 95
    .local v1, "markers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Double;>;"
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/media/jfxmediaimpl/NativeMedia;->markerLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 97
    move-object v3, v0

    :try_start_0
    iget-object v3, v3, Lcom/sun/media/jfxmediaimpl/NativeMedia;->markersByName:Ljava/util/Map;

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/media/jfxmediaimpl/NativeMedia;->markersByName:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 98
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/media/jfxmediaimpl/NativeMedia;->markersByName:Ljava/util/Map;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    move-object v1, v3

    .line 101
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/media/jfxmediaimpl/NativeMedia;->markerLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 102
    .line 103
    move-object v3, v1

    move-object v0, v3

    .end local v0    # "this":Lcom/sun/media/jfxmediaimpl/NativeMedia;
    return-object v0

    .line 101
    .restart local v0    # "this":Lcom/sun/media/jfxmediaimpl/NativeMedia;
    :catchall_0
    move-exception v3

    move-object v2, v3

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/media/jfxmediaimpl/NativeMedia;->markerLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    move-object v3, v2

    throw v3
.end method

.method getNextMarker(DZ)Ljava/util/Map$Entry;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DZ)",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/Double;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 146
    move-object v1, p0

    .local v1, "this":Lcom/sun/media/jfxmediaimpl/NativeMedia;
    move-wide v2, p1

    .local v2, "time":D
    move v4, p3

    .local v4, "inclusive":Z
    const/4 v7, 0x0

    move-object v5, v7

    .line 147
    .local v5, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Double;Ljava/lang/String;>;"
    move-object v7, v1

    iget-object v7, v7, Lcom/sun/media/jfxmediaimpl/NativeMedia;->markerLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v7}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 149
    move-object v7, v1

    :try_start_0
    iget-object v7, v7, Lcom/sun/media/jfxmediaimpl/NativeMedia;->markersByTime:Ljava/util/NavigableMap;

    if-eqz v7, :cond_0

    .line 150
    move v7, v4

    if-eqz v7, :cond_1

    .line 151
    move-object v7, v1

    iget-object v7, v7, Lcom/sun/media/jfxmediaimpl/NativeMedia;->markersByTime:Ljava/util/NavigableMap;

    move-wide v8, v2

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/NavigableMap;->ceilingEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    move-object v5, v7

    .line 157
    :cond_0
    :goto_0
    move-object v7, v1

    iget-object v7, v7, Lcom/sun/media/jfxmediaimpl/NativeMedia;->markerLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v7}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 158
    .line 159
    move-object v7, v5

    move-object v1, v7

    .end local v1    # "this":Lcom/sun/media/jfxmediaimpl/NativeMedia;
    return-object v1

    .line 153
    .restart local v1    # "this":Lcom/sun/media/jfxmediaimpl/NativeMedia;
    :cond_1
    move-object v7, v1

    :try_start_1
    iget-object v7, v7, Lcom/sun/media/jfxmediaimpl/NativeMedia;->markersByTime:Ljava/util/NavigableMap;

    move-wide v8, v2

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/NavigableMap;->higherEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v7

    move-object v5, v7

    goto :goto_0

    .line 157
    :catchall_0
    move-exception v7

    move-object v6, v7

    move-object v7, v1

    iget-object v7, v7, Lcom/sun/media/jfxmediaimpl/NativeMedia;->markerLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v7}, Ljava/util/concurrent/locks/Lock;->unlock()V

    move-object v7, v6

    throw v7
.end method

.method public abstract getPlatform()Lcom/sun/media/jfxmediaimpl/platform/Platform;
.end method

.method public removeAllMarkers()V
    .locals 4

    .prologue
    .line 132
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/NativeMedia;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/media/jfxmediaimpl/NativeMedia;->markerLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 134
    move-object v2, v0

    :try_start_0
    iget-object v2, v2, Lcom/sun/media/jfxmediaimpl/NativeMedia;->markersByName:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 135
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/media/jfxmediaimpl/NativeMedia;->markersByTime:Ljava/util/NavigableMap;

    invoke-interface {v2}, Ljava/util/NavigableMap;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 137
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/media/jfxmediaimpl/NativeMedia;->markerLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 138
    .line 140
    move-object v2, v0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sun/media/jfxmediaimpl/NativeMedia;->fireMarkerStateEvent(Z)V

    .line 141
    return-void

    .line 137
    :catchall_0
    move-exception v2

    move-object v1, v2

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/media/jfxmediaimpl/NativeMedia;->markerLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    move-object v2, v1

    throw v2
.end method

.method public removeMarker(Ljava/lang/String;)D
    .locals 10

    .prologue
    .line 107
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/NativeMedia;
    move-object v1, p1

    .local v1, "markerName":Ljava/lang/String;
    move-object v6, v1

    if-nez v6, :cond_0

    .line 108
    new-instance v6, Ljava/lang/IllegalArgumentException;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    const-string v8, "markerName == null!"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 111
    :cond_0
    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    move-wide v2, v6

    .line 112
    .local v2, "time":D
    const/4 v6, 0x0

    move v4, v6

    .line 114
    .local v4, "hasMarkers":Z
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/media/jfxmediaimpl/NativeMedia;->markerLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v6}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 116
    move-object v6, v0

    :try_start_0
    iget-object v6, v6, Lcom/sun/media/jfxmediaimpl/NativeMedia;->markersByName:Ljava/util/Map;

    move-object v7, v1

    invoke-interface {v6, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 117
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/media/jfxmediaimpl/NativeMedia;->markersByName:Ljava/util/Map;

    move-object v7, v1

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Double;

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    move-wide v2, v6

    .line 118
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/media/jfxmediaimpl/NativeMedia;->markersByName:Ljava/util/Map;

    move-object v7, v1

    invoke-interface {v6, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 119
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/media/jfxmediaimpl/NativeMedia;->markersByTime:Ljava/util/NavigableMap;

    move-wide v7, v2

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/NavigableMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 120
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/media/jfxmediaimpl/NativeMedia;->markersByName:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    if-lez v6, :cond_2

    const/4 v6, 0x1

    :goto_0
    move v4, v6

    .line 123
    :cond_1
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/media/jfxmediaimpl/NativeMedia;->markerLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v6}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 124
    .line 126
    move-object v6, v0

    move v7, v4

    invoke-virtual {v6, v7}, Lcom/sun/media/jfxmediaimpl/NativeMedia;->fireMarkerStateEvent(Z)V

    .line 128
    move-wide v6, v2

    move-wide v0, v6

    .end local v0    # "this":Lcom/sun/media/jfxmediaimpl/NativeMedia;
    return-wide v0

    .line 120
    .restart local v0    # "this":Lcom/sun/media/jfxmediaimpl/NativeMedia;
    :cond_2
    const/4 v6, 0x0

    goto :goto_0

    .line 123
    :catchall_0
    move-exception v6

    move-object v5, v6

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/media/jfxmediaimpl/NativeMedia;->markerLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v6}, Ljava/util/concurrent/locks/Lock;->unlock()V

    move-object v6, v5

    throw v6
.end method

.method removeMarkerStateListener(Lcom/sun/media/jfxmediaimpl/MarkerStateListener;)V
    .locals 5

    .prologue
    .line 178
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/NativeMedia;
    move-object v1, p1

    .local v1, "listener":Lcom/sun/media/jfxmediaimpl/MarkerStateListener;
    move-object v3, v1

    if-eqz v3, :cond_1

    .line 179
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/media/jfxmediaimpl/NativeMedia;->listenerLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 181
    move-object v3, v0

    :try_start_0
    iget-object v3, v3, Lcom/sun/media/jfxmediaimpl/NativeMedia;->markerListeners:Ljava/util/WeakHashMap;

    if-eqz v3, :cond_0

    .line 182
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/media/jfxmediaimpl/NativeMedia;->markerListeners:Ljava/util/WeakHashMap;

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 185
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/media/jfxmediaimpl/NativeMedia;->listenerLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 186
    .line 188
    :cond_1
    return-void

    .line 185
    :catchall_0
    move-exception v3

    move-object v2, v3

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/media/jfxmediaimpl/NativeMedia;->listenerLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    move-object v3, v2

    throw v3
.end method
