.class Ljavafx/scene/media/MediaPlayerShutdownHook;
.super Ljava/lang/Object;
.source "MediaPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static isShutdown:Z

.field private static final playerRefs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Ljavafx/scene/media/MediaPlayer;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 2764
    new-instance v0, Ljava/util/ArrayList;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Ljavafx/scene/media/MediaPlayerShutdownHook;->playerRefs:Ljava/util/List;

    .line 2765
    const/4 v0, 0x0

    sput-boolean v0, Ljavafx/scene/media/MediaPlayerShutdownHook;->isShutdown:Z

    .line 2768
    invoke-static {}, Lcom/sun/javafx/tk/Toolkit;->getToolkit()Lcom/sun/javafx/tk/Toolkit;

    move-result-object v0

    new-instance v1, Ljavafx/scene/media/MediaPlayerShutdownHook;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljavafx/scene/media/MediaPlayerShutdownHook;-><init>()V

    invoke-virtual {v0, v1}, Lcom/sun/javafx/tk/Toolkit;->addShutdownHook(Ljava/lang/Runnable;)V

    .line 2769
    return-void
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    .line 2762
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaPlayerShutdownHook;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addMediaPlayer(Ljavafx/scene/media/MediaPlayer;)V
    .locals 10

    .prologue
    .line 2772
    move-object v0, p0

    .local v0, "player":Ljavafx/scene/media/MediaPlayer;
    sget-object v5, Ljavafx/scene/media/MediaPlayerShutdownHook;->playerRefs:Ljava/util/List;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v1, v6

    monitor-enter v5

    .line 2773
    :try_start_0
    sget-boolean v5, Ljavafx/scene/media/MediaPlayerShutdownHook;->isShutdown:Z

    if-eqz v5, :cond_1

    .line 2774
    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/media/MediaPlayer;->retrieveJfxPlayer()Lcom/sun/media/jfxmedia/MediaPlayer;

    move-result-object v5

    move-object v2, v5

    .line 2775
    .local v2, "jfxPlayer":Lcom/sun/media/jfxmedia/MediaPlayer;
    move-object v5, v2

    if-eqz v5, :cond_0

    .line 2776
    move-object v5, v2

    invoke-interface {v5}, Lcom/sun/media/jfxmedia/MediaPlayer;->dispose()V

    .line 2778
    .line 2788
    .end local v2    # "jfxPlayer":Lcom/sun/media/jfxmedia/MediaPlayer;
    :cond_0
    :goto_0
    move-object v5, v1

    monitor-exit v5

    .line 2789
    return-void

    .line 2779
    :cond_1
    sget-object v5, Ljavafx/scene/media/MediaPlayerShutdownHook;->playerRefs:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v5

    move-object v2, v5

    .local v2, "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Ljava/lang/ref/WeakReference<Ljavafx/scene/media/MediaPlayer;>;>;"
    :goto_1
    move-object v5, v2

    invoke-interface {v5}, Ljava/util/ListIterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 2780
    move-object v5, v2

    invoke-interface {v5}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljavafx/scene/media/MediaPlayer;

    move-object v3, v5

    .line 2781
    .local v3, "l":Ljavafx/scene/media/MediaPlayer;
    move-object v5, v3

    if-nez v5, :cond_2

    .line 2782
    move-object v5, v2

    invoke-interface {v5}, Ljava/util/ListIterator;->remove()V

    .line 2784
    :cond_2
    goto :goto_1

    .line 2786
    .end local v3    # "l":Ljavafx/scene/media/MediaPlayer;
    :cond_3
    sget-object v5, Ljavafx/scene/media/MediaPlayerShutdownHook;->playerRefs:Ljava/util/List;

    new-instance v6, Ljava/lang/ref/WeakReference;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    move-object v8, v0

    invoke-direct {v7, v8}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v5

    goto :goto_0

    .line 2788
    .end local v2    # "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Ljava/lang/ref/WeakReference<Ljavafx/scene/media/MediaPlayer;>;>;"
    :catchall_0
    move-exception v5

    move-object v4, v5

    move-object v5, v1

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v5, v4

    throw v5
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 2793
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaPlayerShutdownHook;
    sget-object v6, Ljavafx/scene/media/MediaPlayerShutdownHook;->playerRefs:Ljava/util/List;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    move-object v1, v7

    monitor-enter v6

    .line 2794
    :try_start_0
    sget-object v6, Ljavafx/scene/media/MediaPlayerShutdownHook;->playerRefs:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v6

    move-object v2, v6

    .local v2, "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Ljava/lang/ref/WeakReference<Ljavafx/scene/media/MediaPlayer;>;>;"
    :goto_0
    move-object v6, v2

    invoke-interface {v6}, Ljava/util/ListIterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 2795
    move-object v6, v2

    invoke-interface {v6}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljavafx/scene/media/MediaPlayer;

    move-object v3, v6

    .line 2796
    .local v3, "player":Ljavafx/scene/media/MediaPlayer;
    move-object v6, v3

    if-eqz v6, :cond_1

    .line 2797
    move-object v6, v3

    invoke-virtual {v6}, Ljavafx/scene/media/MediaPlayer;->destroyMediaTimer()V

    .line 2798
    move-object v6, v3

    invoke-virtual {v6}, Ljavafx/scene/media/MediaPlayer;->retrieveJfxPlayer()Lcom/sun/media/jfxmedia/MediaPlayer;

    move-result-object v6

    move-object v4, v6

    .line 2799
    .local v4, "jfxPlayer":Lcom/sun/media/jfxmedia/MediaPlayer;
    move-object v6, v4

    if-eqz v6, :cond_0

    .line 2800
    move-object v6, v4

    invoke-interface {v6}, Lcom/sun/media/jfxmedia/MediaPlayer;->dispose()V

    .line 2802
    .line 2805
    .end local v4    # "jfxPlayer":Lcom/sun/media/jfxmedia/MediaPlayer;
    :cond_0
    :goto_1
    goto :goto_0

    .line 2803
    :cond_1
    move-object v6, v2

    invoke-interface {v6}, Ljava/util/ListIterator;->remove()V

    goto :goto_1

    .line 2808
    .end local v2    # "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Ljava/lang/ref/WeakReference<Ljavafx/scene/media/MediaPlayer;>;>;"
    .end local v3    # "player":Ljavafx/scene/media/MediaPlayer;
    :catchall_0
    move-exception v6

    move-object v5, v6

    move-object v6, v1

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v6, v5

    throw v6

    .line 2807
    .restart local v2    # "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Ljava/lang/ref/WeakReference<Ljavafx/scene/media/MediaPlayer;>;>;"
    :cond_2
    const/4 v6, 0x1

    :try_start_1
    sput-boolean v6, Ljavafx/scene/media/MediaPlayerShutdownHook;->isShutdown:Z

    .line 2808
    move-object v6, v1

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2809
    return-void
.end method
