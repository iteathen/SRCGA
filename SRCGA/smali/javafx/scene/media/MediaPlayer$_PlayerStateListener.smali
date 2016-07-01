.class Ljavafx/scene/media/MediaPlayer$_PlayerStateListener;
.super Ljava/lang/Object;
.source "MediaPlayer.java"

# interfaces
.implements Lcom/sun/media/jfxmedia/events/PlayerStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/media/MediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "_PlayerStateListener"
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/scene/media/MediaPlayer;


# direct methods
.method private constructor <init>(Ljavafx/scene/media/MediaPlayer;)V
    .locals 4

    .prologue
    .line 2434
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaPlayer$_PlayerStateListener;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/media/MediaPlayer$_PlayerStateListener;->this$0:Ljavafx/scene/media/MediaPlayer;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ljavafx/scene/media/MediaPlayer;Ljavafx/scene/media/MediaPlayer$1;)V
    .locals 5

    .prologue
    .line 2434
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaPlayer$_PlayerStateListener;
    move-object v1, p1

    .local v1, "x0":Ljavafx/scene/media/MediaPlayer;
    move-object v2, p2

    .local v2, "x1":Ljavafx/scene/media/MediaPlayer$1;
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Ljavafx/scene/media/MediaPlayer$_PlayerStateListener;-><init>(Ljavafx/scene/media/MediaPlayer;)V

    return-void
.end method

.method static synthetic access$lambda$0(Ljavafx/scene/media/MediaPlayer$_PlayerStateListener;)V
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/media/MediaPlayer$_PlayerStateListener;->lambda$onReady$15()V

    return-void
.end method

.method static synthetic access$lambda$1(Ljavafx/scene/media/MediaPlayer$_PlayerStateListener;)V
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/media/MediaPlayer$_PlayerStateListener;->lambda$onPlaying$16()V

    return-void
.end method

.method static synthetic access$lambda$2(Ljavafx/scene/media/MediaPlayer$_PlayerStateListener;)V
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/media/MediaPlayer$_PlayerStateListener;->lambda$onPause$17()V

    return-void
.end method

.method static synthetic access$lambda$3(Ljavafx/scene/media/MediaPlayer$_PlayerStateListener;)V
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/media/MediaPlayer$_PlayerStateListener;->lambda$onPause$18()V

    return-void
.end method

.method static synthetic access$lambda$4(Ljavafx/scene/media/MediaPlayer$_PlayerStateListener;)V
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/media/MediaPlayer$_PlayerStateListener;->lambda$onStop$19()V

    return-void
.end method

.method static synthetic access$lambda$5(Ljavafx/scene/media/MediaPlayer$_PlayerStateListener;)V
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/media/MediaPlayer$_PlayerStateListener;->lambda$onStall$20()V

    return-void
.end method

.method static synthetic access$lambda$6(Ljavafx/scene/media/MediaPlayer$_PlayerStateListener;)V
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/media/MediaPlayer$_PlayerStateListener;->lambda$onFinish$21()V

    return-void
.end method

.method static synthetic access$lambda$7(Ljavafx/scene/media/MediaPlayer$_PlayerStateListener;Lcom/sun/media/jfxmedia/events/PlayerStateEvent;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljavafx/scene/media/MediaPlayer$_PlayerStateListener;->lambda$onHalt$22(Lcom/sun/media/jfxmedia/events/PlayerStateEvent;)V

    return-void
.end method

.method private synthetic lambda$onFinish$21()V
    .locals 2

    .prologue
    .line 2544
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaPlayer$_PlayerStateListener;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/media/MediaPlayer$_PlayerStateListener;->handleFinish()V

    .line 2545
    return-void
.end method

.method private synthetic lambda$onHalt$22(Lcom/sun/media/jfxmedia/events/PlayerStateEvent;)V
    .locals 4

    .prologue
    .line 2551
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaPlayer$_PlayerStateListener;
    move-object v1, p1

    .local v1, "evt":Lcom/sun/media/jfxmedia/events/PlayerStateEvent;
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/media/MediaPlayer$_PlayerStateListener;->this$0:Ljavafx/scene/media/MediaPlayer;

    sget-object v3, Ljavafx/scene/media/MediaPlayer$Status;->HALTED:Ljavafx/scene/media/MediaPlayer$Status;

    invoke-static {v2, v3}, Ljavafx/scene/media/MediaPlayer;->access$4400(Ljavafx/scene/media/MediaPlayer;Ljavafx/scene/media/MediaPlayer$Status;)V

    .line 2552
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/media/MediaPlayer$_PlayerStateListener;->this$0:Ljavafx/scene/media/MediaPlayer;

    move-object v3, v1

    invoke-virtual {v3}, Lcom/sun/media/jfxmedia/events/PlayerStateEvent;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljavafx/scene/media/MediaException;->haltException(Ljava/lang/String;)Ljavafx/scene/media/MediaException;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljavafx/scene/media/MediaPlayer;->handleError(Ljavafx/scene/media/MediaException;)V

    .line 2555
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/media/MediaPlayer$_PlayerStateListener;->this$0:Ljavafx/scene/media/MediaPlayer;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Ljavafx/scene/media/MediaPlayer;->access$4202(Ljavafx/scene/media/MediaPlayer;Z)Z

    move-result v2

    .line 2556
    return-void
.end method

.method private synthetic lambda$onPause$17()V
    .locals 3

    .prologue
    .line 2466
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaPlayer$_PlayerStateListener;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/media/MediaPlayer$_PlayerStateListener;->this$0:Ljavafx/scene/media/MediaPlayer;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljavafx/scene/media/MediaPlayer;->access$4202(Ljavafx/scene/media/MediaPlayer;Z)Z

    move-result v1

    .line 2468
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/media/MediaPlayer$_PlayerStateListener;->this$0:Ljavafx/scene/media/MediaPlayer;

    sget-object v2, Ljavafx/scene/media/MediaPlayer$Status;->PAUSED:Ljavafx/scene/media/MediaPlayer$Status;

    invoke-static {v1, v2}, Ljavafx/scene/media/MediaPlayer;->access$4400(Ljavafx/scene/media/MediaPlayer;Ljavafx/scene/media/MediaPlayer$Status;)V

    .line 2469
    return-void
.end method

.method private synthetic lambda$onPause$18()V
    .locals 3

    .prologue
    .line 2474
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaPlayer$_PlayerStateListener;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/media/MediaPlayer$_PlayerStateListener;->this$0:Ljavafx/scene/media/MediaPlayer;

    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/media/MediaPlayer$_PlayerStateListener;->this$0:Ljavafx/scene/media/MediaPlayer;

    invoke-virtual {v2}, Ljavafx/scene/media/MediaPlayer;->getStartTime()Ljavafx/util/Duration;

    move-result-object v2

    invoke-static {v1, v2}, Ljavafx/scene/media/MediaPlayer;->access$4500(Ljavafx/scene/media/MediaPlayer;Ljavafx/util/Duration;)V

    .line 2475
    return-void
.end method

.method private synthetic lambda$onPlaying$16()V
    .locals 3

    .prologue
    .line 2455
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaPlayer$_PlayerStateListener;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/media/MediaPlayer$_PlayerStateListener;->this$0:Ljavafx/scene/media/MediaPlayer;

    invoke-virtual {v1}, Ljavafx/scene/media/MediaPlayer;->createMediaTimer()V

    .line 2456
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/media/MediaPlayer$_PlayerStateListener;->this$0:Ljavafx/scene/media/MediaPlayer;

    sget-object v2, Ljavafx/scene/media/MediaPlayer$Status;->PLAYING:Ljavafx/scene/media/MediaPlayer$Status;

    invoke-static {v1, v2}, Ljavafx/scene/media/MediaPlayer;->access$4400(Ljavafx/scene/media/MediaPlayer;Ljavafx/scene/media/MediaPlayer$Status;)V

    .line 2457
    return-void
.end method

.method private synthetic lambda$onReady$15()V
    .locals 6

    .prologue
    .line 2439
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaPlayer$_PlayerStateListener;
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/media/MediaPlayer$_PlayerStateListener;->this$0:Ljavafx/scene/media/MediaPlayer;

    invoke-static {v3}, Ljavafx/scene/media/MediaPlayer;->access$1300(Ljavafx/scene/media/MediaPlayer;)Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    move-object v1, v4

    monitor-enter v3

    .line 2440
    move-object v3, v0

    :try_start_0
    iget-object v3, v3, Ljavafx/scene/media/MediaPlayer$_PlayerStateListener;->this$0:Ljavafx/scene/media/MediaPlayer;

    invoke-virtual {v3}, Ljavafx/scene/media/MediaPlayer;->getStatus()Ljavafx/scene/media/MediaPlayer$Status;

    move-result-object v3

    sget-object v4, Ljavafx/scene/media/MediaPlayer$Status;->DISPOSED:Ljavafx/scene/media/MediaPlayer$Status;

    if-ne v3, v4, :cond_0

    .line 2441
    move-object v3, v1

    monitor-exit v3

    .line 2446
    :goto_0
    return-void

    .line 2444
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/media/MediaPlayer$_PlayerStateListener;->this$0:Ljavafx/scene/media/MediaPlayer;

    invoke-virtual {v3}, Ljavafx/scene/media/MediaPlayer;->preReady()V

    .line 2445
    move-object v3, v1

    monitor-exit v3

    .line 2446
    goto :goto_0

    .line 2445
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

.method private synthetic lambda$onStall$20()V
    .locals 3

    .prologue
    .line 2496
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaPlayer$_PlayerStateListener;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/media/MediaPlayer$_PlayerStateListener;->this$0:Ljavafx/scene/media/MediaPlayer;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljavafx/scene/media/MediaPlayer;->access$4202(Ljavafx/scene/media/MediaPlayer;Z)Z

    move-result v1

    .line 2498
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/media/MediaPlayer$_PlayerStateListener;->this$0:Ljavafx/scene/media/MediaPlayer;

    sget-object v2, Ljavafx/scene/media/MediaPlayer$Status;->STALLED:Ljavafx/scene/media/MediaPlayer$Status;

    invoke-static {v1, v2}, Ljavafx/scene/media/MediaPlayer;->access$4400(Ljavafx/scene/media/MediaPlayer;Ljavafx/scene/media/MediaPlayer$Status;)V

    .line 2499
    return-void
.end method

.method private synthetic lambda$onStop$19()V
    .locals 3

    .prologue
    .line 2484
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaPlayer$_PlayerStateListener;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/media/MediaPlayer$_PlayerStateListener;->this$0:Ljavafx/scene/media/MediaPlayer;

    invoke-virtual {v1}, Ljavafx/scene/media/MediaPlayer;->destroyMediaTimer()V

    .line 2485
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/media/MediaPlayer$_PlayerStateListener;->this$0:Ljavafx/scene/media/MediaPlayer;

    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/media/MediaPlayer$_PlayerStateListener;->this$0:Ljavafx/scene/media/MediaPlayer;

    invoke-virtual {v2}, Ljavafx/scene/media/MediaPlayer;->getStartTime()Ljavafx/util/Duration;

    move-result-object v2

    invoke-static {v1, v2}, Ljavafx/scene/media/MediaPlayer;->access$4002(Ljavafx/scene/media/MediaPlayer;Ljavafx/util/Duration;)Ljavafx/util/Duration;

    move-result-object v1

    .line 2486
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/media/MediaPlayer$_PlayerStateListener;->this$0:Ljavafx/scene/media/MediaPlayer;

    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/media/MediaPlayer$_PlayerStateListener;->this$0:Ljavafx/scene/media/MediaPlayer;

    invoke-virtual {v2}, Ljavafx/scene/media/MediaPlayer;->getStartTime()Ljavafx/util/Duration;

    move-result-object v2

    invoke-static {v1, v2}, Ljavafx/scene/media/MediaPlayer;->access$4500(Ljavafx/scene/media/MediaPlayer;Ljavafx/util/Duration;)V

    .line 2487
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/media/MediaPlayer$_PlayerStateListener;->this$0:Ljavafx/scene/media/MediaPlayer;

    sget-object v2, Ljavafx/scene/media/MediaPlayer$Status;->STOPPED:Ljavafx/scene/media/MediaPlayer$Status;

    invoke-static {v1, v2}, Ljavafx/scene/media/MediaPlayer;->access$4400(Ljavafx/scene/media/MediaPlayer;Ljavafx/scene/media/MediaPlayer$Status;)V

    .line 2488
    return-void
.end method


# virtual methods
.method handleFinish()V
    .locals 4

    .prologue
    .line 2506
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaPlayer$_PlayerStateListener;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/media/MediaPlayer$_PlayerStateListener;->this$0:Ljavafx/scene/media/MediaPlayer;

    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/media/MediaPlayer$_PlayerStateListener;->this$0:Ljavafx/scene/media/MediaPlayer;

    invoke-virtual {v2}, Ljavafx/scene/media/MediaPlayer;->getCurrentCount()I

    move-result v2

    const/4 v3, 0x1

    add-int/lit8 v2, v2, 0x1

    invoke-static {v1, v2}, Ljavafx/scene/media/MediaPlayer;->access$4100(Ljavafx/scene/media/MediaPlayer;I)V

    .line 2510
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/media/MediaPlayer$_PlayerStateListener;->this$0:Ljavafx/scene/media/MediaPlayer;

    invoke-virtual {v1}, Ljavafx/scene/media/MediaPlayer;->getCurrentCount()I

    move-result v1

    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/media/MediaPlayer$_PlayerStateListener;->this$0:Ljavafx/scene/media/MediaPlayer;

    invoke-virtual {v2}, Ljavafx/scene/media/MediaPlayer;->getCycleCount()I

    move-result v2

    if-lt v1, v2, :cond_0

    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/media/MediaPlayer$_PlayerStateListener;->this$0:Ljavafx/scene/media/MediaPlayer;

    invoke-virtual {v1}, Ljavafx/scene/media/MediaPlayer;->getCycleCount()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_3

    .line 2511
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/media/MediaPlayer$_PlayerStateListener;->this$0:Ljavafx/scene/media/MediaPlayer;

    invoke-virtual {v1}, Ljavafx/scene/media/MediaPlayer;->getOnEndOfMedia()Ljava/lang/Runnable;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 2512
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/media/MediaPlayer$_PlayerStateListener;->this$0:Ljavafx/scene/media/MediaPlayer;

    invoke-virtual {v1}, Ljavafx/scene/media/MediaPlayer;->getOnEndOfMedia()Ljava/lang/Runnable;

    move-result-object v1

    invoke-static {v1}, Ljavafx/application/Platform;->runLater(Ljava/lang/Runnable;)V

    .line 2515
    :cond_1
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/media/MediaPlayer$_PlayerStateListener;->this$0:Ljavafx/scene/media/MediaPlayer;

    invoke-virtual {v1}, Ljavafx/scene/media/MediaPlayer;->loopPlayback()V

    .line 2517
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/media/MediaPlayer$_PlayerStateListener;->this$0:Ljavafx/scene/media/MediaPlayer;

    invoke-virtual {v1}, Ljavafx/scene/media/MediaPlayer;->getOnRepeat()Ljava/lang/Runnable;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 2518
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/media/MediaPlayer$_PlayerStateListener;->this$0:Ljavafx/scene/media/MediaPlayer;

    invoke-virtual {v1}, Ljavafx/scene/media/MediaPlayer;->getOnRepeat()Ljava/lang/Runnable;

    move-result-object v1

    invoke-static {v1}, Ljavafx/application/Platform;->runLater(Ljava/lang/Runnable;)V

    .line 2536
    :cond_2
    :goto_0
    return-void

    .line 2524
    :cond_3
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/media/MediaPlayer$_PlayerStateListener;->this$0:Ljavafx/scene/media/MediaPlayer;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljavafx/scene/media/MediaPlayer;->access$4202(Ljavafx/scene/media/MediaPlayer;Z)Z

    move-result v1

    .line 2527
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/media/MediaPlayer$_PlayerStateListener;->this$0:Ljavafx/scene/media/MediaPlayer;

    const-wide/16 v2, 0x0

    invoke-static {v1, v2, v3}, Ljavafx/scene/media/MediaPlayer;->access$2900(Ljavafx/scene/media/MediaPlayer;D)V

    .line 2530
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/media/MediaPlayer$_PlayerStateListener;->this$0:Ljavafx/scene/media/MediaPlayer;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Ljavafx/scene/media/MediaPlayer;->access$4302(Ljavafx/scene/media/MediaPlayer;Z)Z

    move-result v1

    .line 2532
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/media/MediaPlayer$_PlayerStateListener;->this$0:Ljavafx/scene/media/MediaPlayer;

    invoke-virtual {v1}, Ljavafx/scene/media/MediaPlayer;->getOnEndOfMedia()Ljava/lang/Runnable;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 2533
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/media/MediaPlayer$_PlayerStateListener;->this$0:Ljavafx/scene/media/MediaPlayer;

    invoke-virtual {v1}, Ljavafx/scene/media/MediaPlayer;->getOnEndOfMedia()Ljava/lang/Runnable;

    move-result-object v1

    invoke-static {v1}, Ljavafx/application/Platform;->runLater(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public onFinish(Lcom/sun/media/jfxmedia/events/PlayerStateEvent;)V
    .locals 4

    .prologue
    .line 2541
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaPlayer$_PlayerStateListener;
    move-object v1, p1

    .local v1, "evt":Lcom/sun/media/jfxmedia/events/PlayerStateEvent;
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/media/MediaPlayer$_PlayerStateListener;->this$0:Ljavafx/scene/media/MediaPlayer;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Ljavafx/scene/media/MediaPlayer;->access$4002(Ljavafx/scene/media/MediaPlayer;Ljavafx/util/Duration;)Ljavafx/util/Duration;

    move-result-object v2

    .line 2543
    move-object v2, v0

    invoke-static {v2}, Ljavafx/scene/media/MediaPlayer$_PlayerStateListener$$Lambda$7;->lambdaFactory$(Ljavafx/scene/media/MediaPlayer$_PlayerStateListener;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-static {v2}, Ljavafx/application/Platform;->runLater(Ljava/lang/Runnable;)V

    .line 2546
    return-void
.end method

.method public onHalt(Lcom/sun/media/jfxmedia/events/PlayerStateEvent;)V
    .locals 4

    .prologue
    .line 2550
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaPlayer$_PlayerStateListener;
    move-object v1, p1

    .local v1, "evt":Lcom/sun/media/jfxmedia/events/PlayerStateEvent;
    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Ljavafx/scene/media/MediaPlayer$_PlayerStateListener$$Lambda$8;->lambdaFactory$(Ljavafx/scene/media/MediaPlayer$_PlayerStateListener;Lcom/sun/media/jfxmedia/events/PlayerStateEvent;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-static {v2}, Ljavafx/application/Platform;->runLater(Ljava/lang/Runnable;)V

    .line 2557
    return-void
.end method

.method public onPause(Lcom/sun/media/jfxmedia/events/PlayerStateEvent;)V
    .locals 4

    .prologue
    .line 2464
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaPlayer$_PlayerStateListener;
    move-object v1, p1

    .local v1, "evt":Lcom/sun/media/jfxmedia/events/PlayerStateEvent;
    move-object v2, v0

    invoke-static {v2}, Ljavafx/scene/media/MediaPlayer$_PlayerStateListener$$Lambda$3;->lambdaFactory$(Ljavafx/scene/media/MediaPlayer$_PlayerStateListener;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-static {v2}, Ljavafx/application/Platform;->runLater(Ljava/lang/Runnable;)V

    .line 2471
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/media/MediaPlayer$_PlayerStateListener;->this$0:Ljavafx/scene/media/MediaPlayer;

    invoke-static {v2}, Ljavafx/scene/media/MediaPlayer;->access$4000(Ljavafx/scene/media/MediaPlayer;)Ljavafx/util/Duration;

    move-result-object v2

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/media/MediaPlayer$_PlayerStateListener;->this$0:Ljavafx/scene/media/MediaPlayer;

    invoke-static {v2}, Ljavafx/scene/media/MediaPlayer;->access$4000(Ljavafx/scene/media/MediaPlayer;)Ljavafx/util/Duration;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/media/MediaPlayer$_PlayerStateListener;->this$0:Ljavafx/scene/media/MediaPlayer;

    invoke-virtual {v3}, Ljavafx/scene/media/MediaPlayer;->getStartTime()Ljavafx/util/Duration;

    move-result-object v3

    if-eq v2, v3, :cond_0

    .line 2472
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/media/MediaPlayer$_PlayerStateListener;->this$0:Ljavafx/scene/media/MediaPlayer;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Ljavafx/scene/media/MediaPlayer;->access$4002(Ljavafx/scene/media/MediaPlayer;Ljavafx/util/Duration;)Ljavafx/util/Duration;

    move-result-object v2

    .line 2473
    move-object v2, v0

    invoke-static {v2}, Ljavafx/scene/media/MediaPlayer$_PlayerStateListener$$Lambda$4;->lambdaFactory$(Ljavafx/scene/media/MediaPlayer$_PlayerStateListener;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-static {v2}, Ljavafx/application/Platform;->runLater(Ljava/lang/Runnable;)V

    .line 2477
    :cond_0
    return-void
.end method

.method public onPlaying(Lcom/sun/media/jfxmedia/events/PlayerStateEvent;)V
    .locals 4

    .prologue
    .line 2452
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaPlayer$_PlayerStateListener;
    move-object v1, p1

    .local v1, "evt":Lcom/sun/media/jfxmedia/events/PlayerStateEvent;
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/media/MediaPlayer$_PlayerStateListener;->this$0:Ljavafx/scene/media/MediaPlayer;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Ljavafx/scene/media/MediaPlayer;->access$4002(Ljavafx/scene/media/MediaPlayer;Ljavafx/util/Duration;)Ljavafx/util/Duration;

    move-result-object v2

    .line 2454
    move-object v2, v0

    invoke-static {v2}, Ljavafx/scene/media/MediaPlayer$_PlayerStateListener$$Lambda$2;->lambdaFactory$(Ljavafx/scene/media/MediaPlayer$_PlayerStateListener;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-static {v2}, Ljavafx/application/Platform;->runLater(Ljava/lang/Runnable;)V

    .line 2458
    return-void
.end method

.method public onReady(Lcom/sun/media/jfxmedia/events/PlayerStateEvent;)V
    .locals 3

    .prologue
    .line 2438
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaPlayer$_PlayerStateListener;
    move-object v1, p1

    .local v1, "evt":Lcom/sun/media/jfxmedia/events/PlayerStateEvent;
    move-object v2, v0

    invoke-static {v2}, Ljavafx/scene/media/MediaPlayer$_PlayerStateListener$$Lambda$1;->lambdaFactory$(Ljavafx/scene/media/MediaPlayer$_PlayerStateListener;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-static {v2}, Ljavafx/application/Platform;->runLater(Ljava/lang/Runnable;)V

    .line 2447
    return-void
.end method

.method public onStall(Lcom/sun/media/jfxmedia/events/PlayerStateEvent;)V
    .locals 3

    .prologue
    .line 2494
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaPlayer$_PlayerStateListener;
    move-object v1, p1

    .local v1, "evt":Lcom/sun/media/jfxmedia/events/PlayerStateEvent;
    move-object v2, v0

    invoke-static {v2}, Ljavafx/scene/media/MediaPlayer$_PlayerStateListener$$Lambda$6;->lambdaFactory$(Ljavafx/scene/media/MediaPlayer$_PlayerStateListener;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-static {v2}, Ljavafx/application/Platform;->runLater(Ljava/lang/Runnable;)V

    .line 2500
    return-void
.end method

.method public onStop(Lcom/sun/media/jfxmedia/events/PlayerStateEvent;)V
    .locals 3

    .prologue
    .line 2482
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaPlayer$_PlayerStateListener;
    move-object v1, p1

    .local v1, "evt":Lcom/sun/media/jfxmedia/events/PlayerStateEvent;
    move-object v2, v0

    invoke-static {v2}, Ljavafx/scene/media/MediaPlayer$_PlayerStateListener$$Lambda$5;->lambdaFactory$(Ljavafx/scene/media/MediaPlayer$_PlayerStateListener;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-static {v2}, Ljavafx/application/Platform;->runLater(Ljava/lang/Runnable;)V

    .line 2489
    return-void
.end method
