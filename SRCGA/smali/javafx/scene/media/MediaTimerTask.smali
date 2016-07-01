.class Ljavafx/scene/media/MediaTimerTask;
.super Ljava/util/TimerTask;
.source "MediaPlayer.java"


# static fields
.field static final timerLock:Ljava/lang/Object;


# instance fields
.field private mediaTimer:Ljava/util/Timer;

.field private playerRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Ljavafx/scene/media/MediaPlayer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 2815
    new-instance v0, Ljava/lang/Object;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v0, Ljavafx/scene/media/MediaTimerTask;->timerLock:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Ljavafx/scene/media/MediaPlayer;)V
    .locals 7

    .prologue
    .line 2818
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaTimerTask;
    move-object v1, p1

    .local v1, "player":Ljavafx/scene/media/MediaPlayer;
    move-object v2, v0

    invoke-direct {v2}, Ljava/util/TimerTask;-><init>()V

    .line 2814
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Ljavafx/scene/media/MediaTimerTask;->mediaTimer:Ljava/util/Timer;

    .line 2819
    move-object v2, v0

    new-instance v3, Ljava/lang/ref/WeakReference;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v1

    invoke-direct {v4, v5}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v3, v2, Ljavafx/scene/media/MediaTimerTask;->playerRef:Ljava/lang/ref/WeakReference;

    .line 2820
    return-void
.end method

.method static synthetic access$lambda$0(Ljavafx/scene/media/MediaPlayer;)V
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-static {v1}, Ljavafx/scene/media/MediaTimerTask;->lambda$run$27(Ljavafx/scene/media/MediaPlayer;)V

    return-void
.end method

.method private static synthetic lambda$run$27(Ljavafx/scene/media/MediaPlayer;)V
    .locals 6

    .prologue
    .line 2843
    move-object v0, p0

    .local v0, "player":Ljavafx/scene/media/MediaPlayer;
    sget-object v3, Ljavafx/scene/media/MediaTimerTask;->timerLock:Ljava/lang/Object;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    move-object v1, v4

    monitor-enter v3

    .line 2844
    move-object v3, v0

    :try_start_0
    invoke-virtual {v3}, Ljavafx/scene/media/MediaPlayer;->updateTime()V

    .line 2845
    move-object v3, v1

    monitor-exit v3

    .line 2846
    return-void

    .line 2845
    :catchall_0
    move-exception v3

    move-object v2, v3

    move-object v3, v1

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v3, v2

    throw v3
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 2838
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaTimerTask;
    sget-object v4, Ljavafx/scene/media/MediaTimerTask;->timerLock:Ljava/lang/Object;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    move-object v1, v5

    monitor-enter v4

    .line 2839
    move-object v4, v0

    :try_start_0
    iget-object v4, v4, Ljavafx/scene/media/MediaTimerTask;->playerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavafx/scene/media/MediaPlayer;

    move-object v2, v4

    .line 2840
    .local v2, "player":Ljavafx/scene/media/MediaPlayer;
    move-object v4, v2

    if-eqz v4, :cond_0

    .line 2842
    move-object v4, v2

    invoke-static {v4}, Ljavafx/scene/media/MediaTimerTask$$Lambda$1;->lambdaFactory$(Ljavafx/scene/media/MediaPlayer;)Ljava/lang/Runnable;

    move-result-object v4

    invoke-static {v4}, Ljavafx/application/Platform;->runLater(Ljava/lang/Runnable;)V

    .line 2850
    :goto_0
    move-object v4, v1

    monitor-exit v4

    .line 2851
    return-void

    .line 2848
    :cond_0
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/media/MediaTimerTask;->cancel()Z

    move-result v4

    goto :goto_0

    .line 2850
    .end local v2    # "player":Ljavafx/scene/media/MediaPlayer;
    :catchall_0
    move-exception v4

    move-object v3, v4

    move-object v4, v1

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v4, v3

    throw v4
.end method

.method start()V
    .locals 9

    .prologue
    .line 2823
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/media/MediaTimerTask;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/media/MediaTimerTask;->mediaTimer:Ljava/util/Timer;

    if-nez v2, :cond_0

    .line 2824
    move-object v2, v1

    new-instance v3, Ljava/util/Timer;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Ljava/util/Timer;-><init>(Z)V

    iput-object v3, v2, Ljavafx/scene/media/MediaTimerTask;->mediaTimer:Ljava/util/Timer;

    .line 2825
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/media/MediaTimerTask;->mediaTimer:Ljava/util/Timer;

    move-object v3, v1

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x64

    invoke-virtual/range {v2 .. v7}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    .line 2827
    :cond_0
    return-void
.end method

.method stop()V
    .locals 3

    .prologue
    .line 2830
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaTimerTask;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/media/MediaTimerTask;->mediaTimer:Ljava/util/Timer;

    if-eqz v1, :cond_0

    .line 2831
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/media/MediaTimerTask;->mediaTimer:Ljava/util/Timer;

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    .line 2832
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Ljavafx/scene/media/MediaTimerTask;->mediaTimer:Ljava/util/Timer;

    .line 2834
    :cond_0
    return-void
.end method
