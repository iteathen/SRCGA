.class Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClipPlayer$SchedulerEntry;
.super Ljava/lang/Object;
.source "NativeMediaAudioClipPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClipPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SchedulerEntry"
.end annotation


# instance fields
.field private final clipURI:Ljava/net/URI;

.field private final command:I

.field private final commandSignal:Ljava/util/concurrent/CountDownLatch;

.field private final mediaPlayer:Lcom/sun/media/jfxmedia/MediaPlayer;

.field private final player:Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClipPlayer;


# direct methods
.method public constructor <init>(Lcom/sun/media/jfxmedia/MediaPlayer;)V
    .locals 4

    .prologue
    .line 480
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClipPlayer$SchedulerEntry;
    move-object v1, p1

    .local v1, "mediaPlayer":Lcom/sun/media/jfxmedia/MediaPlayer;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 481
    move-object v2, v0

    const/4 v3, 0x2

    iput v3, v2, Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClipPlayer$SchedulerEntry;->command:I

    .line 482
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClipPlayer$SchedulerEntry;->player:Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClipPlayer;

    .line 483
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClipPlayer$SchedulerEntry;->clipURI:Ljava/net/URI;

    .line 484
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClipPlayer$SchedulerEntry;->commandSignal:Ljava/util/concurrent/CountDownLatch;

    .line 485
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClipPlayer$SchedulerEntry;->mediaPlayer:Lcom/sun/media/jfxmedia/MediaPlayer;

    .line 486
    return-void
.end method

.method public constructor <init>(Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClipPlayer;)V
    .locals 4

    .prologue
    .line 462
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClipPlayer$SchedulerEntry;
    move-object v1, p1

    .local v1, "player":Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClipPlayer;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 463
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClipPlayer$SchedulerEntry;->command:I

    .line 464
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClipPlayer$SchedulerEntry;->player:Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClipPlayer;

    .line 465
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClipPlayer$SchedulerEntry;->clipURI:Ljava/net/URI;

    .line 466
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClipPlayer$SchedulerEntry;->commandSignal:Ljava/util/concurrent/CountDownLatch;

    .line 467
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClipPlayer$SchedulerEntry;->mediaPlayer:Lcom/sun/media/jfxmedia/MediaPlayer;

    .line 468
    return-void
.end method

.method public constructor <init>(Ljava/net/URI;Ljava/util/concurrent/CountDownLatch;)V
    .locals 5

    .prologue
    .line 471
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClipPlayer$SchedulerEntry;
    move-object v1, p1

    .local v1, "sourceURI":Ljava/net/URI;
    move-object v2, p2

    .local v2, "signal":Ljava/util/concurrent/CountDownLatch;
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 472
    move-object v3, v0

    const/4 v4, 0x1

    iput v4, v3, Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClipPlayer$SchedulerEntry;->command:I

    .line 473
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClipPlayer$SchedulerEntry;->player:Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClipPlayer;

    .line 474
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClipPlayer$SchedulerEntry;->clipURI:Ljava/net/URI;

    .line 475
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClipPlayer$SchedulerEntry;->commandSignal:Ljava/util/concurrent/CountDownLatch;

    .line 476
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClipPlayer$SchedulerEntry;->mediaPlayer:Lcom/sun/media/jfxmedia/MediaPlayer;

    .line 477
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    .line 513
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClipPlayer$SchedulerEntry;
    move-object v1, p1

    .local v1, "other":Ljava/lang/Object;
    move-object v2, v1

    instance-of v2, v2, Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClipPlayer$SchedulerEntry;

    if-eqz v2, :cond_0

    .line 514
    const/4 v2, 0x0

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClipPlayer$SchedulerEntry;->player:Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClipPlayer;

    if-eq v2, v3, :cond_0

    .line 515
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClipPlayer$SchedulerEntry;->player:Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClipPlayer;

    move-object v3, v1

    check-cast v3, Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClipPlayer$SchedulerEntry;

    invoke-virtual {v3}, Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClipPlayer$SchedulerEntry;->getPlayer()Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClipPlayer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClipPlayer;->equals(Ljava/lang/Object;)Z

    move-result v2

    move v0, v2

    .line 518
    .end local v0    # "this":Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClipPlayer$SchedulerEntry;
    :goto_0
    return v0

    .restart local v0    # "this":Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClipPlayer$SchedulerEntry;
    :cond_0
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method

.method public getClipURI()Ljava/net/URI;
    .locals 2

    .prologue
    .line 497
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClipPlayer$SchedulerEntry;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClipPlayer$SchedulerEntry;->clipURI:Ljava/net/URI;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClipPlayer$SchedulerEntry;
    return-object v0
.end method

.method public getCommand()I
    .locals 2

    .prologue
    .line 489
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClipPlayer$SchedulerEntry;
    move-object v1, v0

    iget v1, v1, Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClipPlayer$SchedulerEntry;->command:I

    move v0, v1

    .end local v0    # "this":Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClipPlayer$SchedulerEntry;
    return v0
.end method

.method public getMediaPlayer()Lcom/sun/media/jfxmedia/MediaPlayer;
    .locals 2

    .prologue
    .line 501
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClipPlayer$SchedulerEntry;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClipPlayer$SchedulerEntry;->mediaPlayer:Lcom/sun/media/jfxmedia/MediaPlayer;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClipPlayer$SchedulerEntry;
    return-object v0
.end method

.method public getPlayer()Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClipPlayer;
    .locals 2

    .prologue
    .line 493
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClipPlayer$SchedulerEntry;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClipPlayer$SchedulerEntry;->player:Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClipPlayer;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClipPlayer$SchedulerEntry;
    return-object v0
.end method

.method public signal()V
    .locals 3

    .prologue
    .line 505
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClipPlayer$SchedulerEntry;
    const/4 v1, 0x0

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClipPlayer$SchedulerEntry;->commandSignal:Ljava/util/concurrent/CountDownLatch;

    if-eq v1, v2, :cond_0

    .line 506
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClipPlayer$SchedulerEntry;->commandSignal:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 508
    :cond_0
    return-void
.end method
