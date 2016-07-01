.class public final Ljavafx/scene/media/MediaPlayer;
.super Ljava/lang/Object;
.source "MediaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavafx/scene/media/MediaPlayer$RendererListener;,
        Ljavafx/scene/media/MediaPlayer$_SpectrumListener;,
        Ljavafx/scene/media/MediaPlayer$_BufferListener;,
        Ljavafx/scene/media/MediaPlayer$_MediaErrorListener;,
        Ljavafx/scene/media/MediaPlayer$_VideoTrackSizeListener;,
        Ljavafx/scene/media/MediaPlayer$_PlayerTimeListener;,
        Ljavafx/scene/media/MediaPlayer$_PlayerStateListener;,
        Ljavafx/scene/media/MediaPlayer$_MarkerListener;,
        Ljavafx/scene/media/MediaPlayer$MarkerMapChangeListener;,
        Ljavafx/scene/media/MediaPlayer$InitMediaPlayer;,
        Ljavafx/scene/media/MediaPlayer$Status;
    }
.end annotation


# static fields
.field private static final AUDIOSPECTRUM_INTERVAL_MIN:D = 1.0E-9

.field private static final AUDIOSPECTRUM_NUMBANDS_MIN:I = 0x2

.field private static final AUDIOSPECTRUM_THRESHOLD_MAX:I = 0x0

.field private static final DEFAULT_SPECTRUM_BAND_COUNT:I = 0x80

.field private static final DEFAULT_SPECTRUM_INTERVAL:D = 0.1

.field private static final DEFAULT_SPECTRUM_THRESHOLD:I = -0x3c

.field public static final INDEFINITE:I = -0x1

.field private static final RATE_MAX:D = 8.0

.field private static final RATE_MIN:D


# instance fields
.field private audioEqualizer:Ljavafx/scene/media/AudioEqualizer;

.field private audioSpectrumEnabledChangeRequested:Z

.field private audioSpectrumInterval:Ljavafx/beans/property/DoubleProperty;

.field private audioSpectrumIntervalChangeRequested:Z

.field private audioSpectrumListener:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/scene/media/AudioSpectrumListener;",
            ">;"
        }
    .end annotation
.end field

.field private audioSpectrumNumBands:Ljavafx/beans/property/IntegerProperty;

.field private audioSpectrumNumBandsChangeRequested:Z

.field private audioSpectrumThreshold:Ljavafx/beans/property/IntegerProperty;

.field private audioSpectrumThresholdChangeRequested:Z

.field private autoPlay:Ljavafx/beans/property/BooleanProperty;

.field private balance:Ljavafx/beans/property/DoubleProperty;

.field private balanceChangeRequested:Z

.field private bufferListener:Lcom/sun/media/jfxmedia/events/BufferListener;

.field private bufferProgressTime:Ljavafx/beans/property/ReadOnlyObjectWrapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ReadOnlyObjectWrapper",
            "<",
            "Ljavafx/util/Duration;",
            ">;"
        }
    .end annotation
.end field

.field private currentCount:Ljavafx/beans/property/ReadOnlyIntegerWrapper;

.field private currentRate:Ljavafx/beans/property/ReadOnlyDoubleWrapper;

.field private currentRenderFrame:Lcom/sun/media/jfxmedia/control/VideoDataBuffer;

.field private currentTime:Ljavafx/beans/property/ReadOnlyObjectWrapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ReadOnlyObjectWrapper",
            "<",
            "Ljavafx/util/Duration;",
            ">;"
        }
    .end annotation
.end field

.field private cycleCount:Ljavafx/beans/property/IntegerProperty;

.field private cycleDuration:Ljavafx/beans/property/ReadOnlyObjectWrapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ReadOnlyObjectWrapper",
            "<",
            "Ljavafx/util/Duration;",
            ">;"
        }
    .end annotation
.end field

.field private final disposeLock:Ljava/lang/Object;

.field private error:Ljavafx/beans/property/ReadOnlyObjectWrapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ReadOnlyObjectWrapper",
            "<",
            "Ljavafx/scene/media/MediaException;",
            ">;"
        }
    .end annotation
.end field

.field private errorListener:Lcom/sun/media/jfxmedia/events/MediaErrorListener;

.field private isEOS:Z

.field private isUpdateTimeEnabled:Z

.field private jfxPlayer:Lcom/sun/media/jfxmedia/MediaPlayer;

.field private lastBufferEvent:Lcom/sun/media/jfxmedia/events/BufferProgressEvent;

.field private markerEventListener:Lcom/sun/media/jfxmedia/events/MarkerListener;

.field private markerMapListener:Ljavafx/collections/MapChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/collections/MapChangeListener",
            "<",
            "Ljava/lang/String;",
            "Ljavafx/util/Duration;",
            ">;"
        }
    .end annotation
.end field

.field private media:Ljavafx/scene/media/Media;

.field private mediaTimerTask:Ljavafx/scene/media/MediaTimerTask;

.field private mute:Ljavafx/beans/property/BooleanProperty;

.field private muteChangeRequested:Z

.field private nextRenderFrame:Lcom/sun/media/jfxmedia/control/VideoDataBuffer;

.field private onEndOfMedia:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private onError:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private onHalted:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private onMarker:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/scene/media/MediaMarkerEvent;",
            ">;>;"
        }
    .end annotation
.end field

.field private onPaused:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private onPlaying:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private onReady:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private onRepeat:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private onStalled:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private onStopped:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private playRequested:Z

.field private playerReady:Z

.field private prevTimeMs:D

.field private rate:Ljavafx/beans/property/DoubleProperty;

.field private rateChangeRequested:Z

.field private final renderLock:Ljava/lang/Object;

.field private rendererListener:Ljavafx/scene/media/MediaPlayer$RendererListener;

.field private sizeListener:Lcom/sun/media/jfxmedia/events/VideoTrackSizeListener;

.field private spectrumListener:Lcom/sun/media/jfxmedia/events/AudioSpectrumListener;

.field private startTime:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/util/Duration;",
            ">;"
        }
    .end annotation
.end field

.field private startTimeAtStop:Ljavafx/util/Duration;

.field private startTimeChangeRequested:Z

.field private stateListener:Lcom/sun/media/jfxmedia/events/PlayerStateListener;

.field private status:Ljavafx/beans/property/ReadOnlyObjectWrapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ReadOnlyObjectWrapper",
            "<",
            "Ljavafx/scene/media/MediaPlayer$Status;",
            ">;"
        }
    .end annotation
.end field

.field private stopTime:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/util/Duration;",
            ">;"
        }
    .end annotation
.end field

.field private stopTimeChangeRequested:Z

.field private timeListener:Lcom/sun/media/jfxmedia/events/PlayerTimeListener;

.field private totalDuration:Ljavafx/beans/property/ReadOnlyObjectWrapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ReadOnlyObjectWrapper",
            "<",
            "Ljavafx/util/Duration;",
            ">;"
        }
    .end annotation
.end field

.field private final viewRefs:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Ljavafx/scene/media/MediaView;",
            ">;>;"
        }
    .end annotation
.end field

.field private volume:Ljavafx/beans/property/DoubleProperty;

.field private volumeChangeRequested:Z


# direct methods
.method public constructor <init>(Ljavafx/scene/media/Media;)V
    .locals 11
    .param p1    # Ljavafx/scene/media/Media;
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "media"
        .end annotation
    .end param

    .prologue
    .line 394
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaPlayer;
    move-object v1, p1

    .local v1, "media":Ljavafx/scene/media/Media;
    move-object v5, v0

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 286
    move-object v5, v0

    const/4 v6, 0x0

    iput-object v6, v5, Ljavafx/scene/media/MediaPlayer;->markerMapListener:Ljavafx/collections/MapChangeListener;

    .line 287
    move-object v5, v0

    const/4 v6, 0x0

    iput-object v6, v5, Ljavafx/scene/media/MediaPlayer;->markerEventListener:Lcom/sun/media/jfxmedia/events/MarkerListener;

    .line 289
    move-object v5, v0

    const/4 v6, 0x0

    iput-object v6, v5, Ljavafx/scene/media/MediaPlayer;->stateListener:Lcom/sun/media/jfxmedia/events/PlayerStateListener;

    .line 290
    move-object v5, v0

    const/4 v6, 0x0

    iput-object v6, v5, Ljavafx/scene/media/MediaPlayer;->timeListener:Lcom/sun/media/jfxmedia/events/PlayerTimeListener;

    .line 291
    move-object v5, v0

    const/4 v6, 0x0

    iput-object v6, v5, Ljavafx/scene/media/MediaPlayer;->sizeListener:Lcom/sun/media/jfxmedia/events/VideoTrackSizeListener;

    .line 292
    move-object v5, v0

    const/4 v6, 0x0

    iput-object v6, v5, Ljavafx/scene/media/MediaPlayer;->errorListener:Lcom/sun/media/jfxmedia/events/MediaErrorListener;

    .line 293
    move-object v5, v0

    const/4 v6, 0x0

    iput-object v6, v5, Ljavafx/scene/media/MediaPlayer;->bufferListener:Lcom/sun/media/jfxmedia/events/BufferListener;

    .line 294
    move-object v5, v0

    const/4 v6, 0x0

    iput-object v6, v5, Ljavafx/scene/media/MediaPlayer;->spectrumListener:Lcom/sun/media/jfxmedia/events/AudioSpectrumListener;

    .line 295
    move-object v5, v0

    const/4 v6, 0x0

    iput-object v6, v5, Ljavafx/scene/media/MediaPlayer;->rendererListener:Ljavafx/scene/media/MediaPlayer$RendererListener;

    .line 298
    move-object v5, v0

    const/4 v6, 0x0

    iput-boolean v6, v5, Ljavafx/scene/media/MediaPlayer;->rateChangeRequested:Z

    .line 299
    move-object v5, v0

    const/4 v6, 0x0

    iput-boolean v6, v5, Ljavafx/scene/media/MediaPlayer;->volumeChangeRequested:Z

    .line 300
    move-object v5, v0

    const/4 v6, 0x0

    iput-boolean v6, v5, Ljavafx/scene/media/MediaPlayer;->balanceChangeRequested:Z

    .line 301
    move-object v5, v0

    const/4 v6, 0x0

    iput-boolean v6, v5, Ljavafx/scene/media/MediaPlayer;->startTimeChangeRequested:Z

    .line 302
    move-object v5, v0

    const/4 v6, 0x0

    iput-boolean v6, v5, Ljavafx/scene/media/MediaPlayer;->stopTimeChangeRequested:Z

    .line 303
    move-object v5, v0

    const/4 v6, 0x0

    iput-boolean v6, v5, Ljavafx/scene/media/MediaPlayer;->muteChangeRequested:Z

    .line 304
    move-object v5, v0

    const/4 v6, 0x0

    iput-boolean v6, v5, Ljavafx/scene/media/MediaPlayer;->playRequested:Z

    .line 305
    move-object v5, v0

    const/4 v6, 0x0

    iput-boolean v6, v5, Ljavafx/scene/media/MediaPlayer;->audioSpectrumNumBandsChangeRequested:Z

    .line 306
    move-object v5, v0

    const/4 v6, 0x0

    iput-boolean v6, v5, Ljavafx/scene/media/MediaPlayer;->audioSpectrumIntervalChangeRequested:Z

    .line 307
    move-object v5, v0

    const/4 v6, 0x0

    iput-boolean v6, v5, Ljavafx/scene/media/MediaPlayer;->audioSpectrumThresholdChangeRequested:Z

    .line 308
    move-object v5, v0

    const/4 v6, 0x0

    iput-boolean v6, v5, Ljavafx/scene/media/MediaPlayer;->audioSpectrumEnabledChangeRequested:Z

    .line 310
    move-object v5, v0

    const/4 v6, 0x0

    iput-object v6, v5, Ljavafx/scene/media/MediaPlayer;->mediaTimerTask:Ljavafx/scene/media/MediaTimerTask;

    .line 311
    move-object v5, v0

    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    iput-wide v6, v5, Ljavafx/scene/media/MediaPlayer;->prevTimeMs:D

    .line 312
    move-object v5, v0

    const/4 v6, 0x0

    iput-boolean v6, v5, Ljavafx/scene/media/MediaPlayer;->isUpdateTimeEnabled:Z

    .line 313
    move-object v5, v0

    const/4 v6, 0x0

    iput-object v6, v5, Ljavafx/scene/media/MediaPlayer;->lastBufferEvent:Lcom/sun/media/jfxmedia/events/BufferProgressEvent;

    .line 314
    move-object v5, v0

    const/4 v6, 0x0

    iput-object v6, v5, Ljavafx/scene/media/MediaPlayer;->startTimeAtStop:Ljavafx/util/Duration;

    .line 315
    move-object v5, v0

    const/4 v6, 0x0

    iput-boolean v6, v5, Ljavafx/scene/media/MediaPlayer;->isEOS:Z

    .line 317
    move-object v5, v0

    new-instance v6, Ljava/lang/Object;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    iput-object v6, v5, Ljavafx/scene/media/MediaPlayer;->disposeLock:Ljava/lang/Object;

    .line 324
    move-object v5, v0

    new-instance v6, Ljava/util/HashSet;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    iput-object v6, v5, Ljavafx/scene/media/MediaPlayer;->viewRefs:Ljava/util/Set;

    .line 2655
    move-object v5, v0

    new-instance v6, Ljava/lang/Object;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    iput-object v6, v5, Ljavafx/scene/media/MediaPlayer;->renderLock:Ljava/lang/Object;

    .line 395
    const/4 v5, 0x0

    move-object v6, v1

    if-ne v5, v6, :cond_0

    .line 396
    new-instance v5, Ljava/lang/NullPointerException;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    const-string v7, "media == null!"

    invoke-direct {v6, v7}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 399
    :cond_0
    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Ljavafx/scene/media/MediaPlayer;->media:Ljavafx/scene/media/Media;

    .line 402
    move-object v5, v0

    new-instance v6, Ljavafx/scene/media/MediaPlayer$_MediaErrorListener;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v8, v0

    const/4 v9, 0x0

    invoke-direct {v7, v8, v9}, Ljavafx/scene/media/MediaPlayer$_MediaErrorListener;-><init>(Ljavafx/scene/media/MediaPlayer;Ljavafx/scene/media/MediaPlayer$1;)V

    iput-object v6, v5, Ljavafx/scene/media/MediaPlayer;->errorListener:Lcom/sun/media/jfxmedia/events/MediaErrorListener;

    .line 403
    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/media/MediaPlayer;->errorListener:Lcom/sun/media/jfxmedia/events/MediaErrorListener;

    invoke-static {v5}, Lcom/sun/media/jfxmedia/MediaManager;->addMediaErrorListener(Lcom/sun/media/jfxmedia/events/MediaErrorListener;)V

    .line 407
    move-object v5, v1

    :try_start_0
    invoke-virtual {v5}, Ljavafx/scene/media/Media;->retrieveJfxLocator()Lcom/sun/media/jfxmedia/locator/Locator;

    move-result-object v5

    move-object v2, v5

    .line 408
    .local v2, "locator":Lcom/sun/media/jfxmedia/locator/Locator;
    move-object v5, v2

    invoke-virtual {v5}, Lcom/sun/media/jfxmedia/locator/Locator;->canBlock()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 409
    new-instance v5, Ljavafx/scene/media/MediaPlayer$InitMediaPlayer;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v0

    const/4 v8, 0x0

    invoke-direct {v6, v7, v8}, Ljavafx/scene/media/MediaPlayer$InitMediaPlayer;-><init>(Ljavafx/scene/media/MediaPlayer;Ljavafx/scene/media/MediaPlayer$1;)V

    move-object v3, v5

    .line 410
    .local v3, "initMediaPlayer":Ljavafx/scene/media/MediaPlayer$InitMediaPlayer;
    new-instance v5, Ljava/lang/Thread;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v3

    invoke-direct {v6, v7}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    move-object v4, v5

    .line 411
    .local v4, "t":Ljava/lang/Thread;
    move-object v5, v4

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 412
    move-object v5, v4

    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    .line 413
    .line 420
    .line 421
    .end local v3    # "initMediaPlayer":Ljavafx/scene/media/MediaPlayer$InitMediaPlayer;
    .end local v4    # "t":Ljava/lang/Thread;
    :goto_0
    return-void

    .line 414
    :cond_1
    move-object v5, v0

    invoke-direct {v5}, Ljavafx/scene/media/MediaPlayer;->init()V
    :try_end_0
    .catch Lcom/sun/media/jfxmedia/MediaException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavafx/scene/media/MediaException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 416
    .end local v2    # "locator":Lcom/sun/media/jfxmedia/locator/Locator;
    :catch_0
    move-exception v5

    move-object v2, v5

    .line 417
    .local v2, "e":Lcom/sun/media/jfxmedia/MediaException;
    move-object v5, v2

    invoke-static {v5}, Ljavafx/scene/media/MediaException;->exceptionToMediaException(Ljava/lang/Exception;)Ljavafx/scene/media/MediaException;

    move-result-object v5

    throw v5

    .line 418
    .end local v2    # "e":Lcom/sun/media/jfxmedia/MediaException;
    :catch_1
    move-exception v5

    move-object v2, v5

    .line 419
    .local v2, "e":Ljavafx/scene/media/MediaException;
    move-object v5, v2

    throw v5
.end method

.method static synthetic access$1000(Ljavafx/scene/media/MediaPlayer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavafx/scene/media/MediaException;
        }
    .end annotation

    .prologue
    .line 150
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/media/MediaPlayer;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/media/MediaPlayer;->init()V

    return-void
.end method

.method static synthetic access$1100(Ljavafx/scene/media/MediaPlayer;)Ljavafx/beans/property/BooleanProperty;
    .locals 2

    .prologue
    .line 150
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/media/MediaPlayer;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/media/MediaPlayer;->autoPlay:Ljavafx/beans/property/BooleanProperty;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/media/MediaPlayer;
    return-object v0
.end method

.method static synthetic access$1202(Ljavafx/scene/media/MediaPlayer;Z)Z
    .locals 7

    .prologue
    .line 150
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/media/MediaPlayer;
    move v1, p1

    .local v1, "x1":Z
    move-object v2, v0

    move v3, v1

    move-object v5, v2

    move v6, v3

    move v2, v6

    move-object v3, v5

    move v4, v6

    iput-boolean v4, v3, Ljavafx/scene/media/MediaPlayer;->playRequested:Z

    move v0, v2

    .end local v0    # "x0":Ljavafx/scene/media/MediaPlayer;
    return v0
.end method

.method static synthetic access$1300(Ljavafx/scene/media/MediaPlayer;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 150
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/media/MediaPlayer;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/media/MediaPlayer;->disposeLock:Ljava/lang/Object;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/media/MediaPlayer;
    return-object v0
.end method

.method static synthetic access$1400(Ljavafx/scene/media/MediaPlayer;)Z
    .locals 2

    .prologue
    .line 150
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/media/MediaPlayer;
    move-object v1, v0

    iget-boolean v1, v1, Ljavafx/scene/media/MediaPlayer;->playerReady:Z

    move v0, v1

    .end local v0    # "x0":Ljavafx/scene/media/MediaPlayer;
    return v0
.end method

.method static synthetic access$1500(Ljavafx/scene/media/MediaPlayer;)Lcom/sun/media/jfxmedia/MediaPlayer;
    .locals 2

    .prologue
    .line 150
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/media/MediaPlayer;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/media/MediaPlayer;->jfxPlayer:Lcom/sun/media/jfxmedia/MediaPlayer;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/media/MediaPlayer;
    return-object v0
.end method

.method static synthetic access$1600(Ljavafx/scene/media/MediaPlayer;)Ljavafx/beans/property/DoubleProperty;
    .locals 2

    .prologue
    .line 150
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/media/MediaPlayer;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/media/MediaPlayer;->rate:Ljavafx/beans/property/DoubleProperty;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/media/MediaPlayer;
    return-object v0
.end method

.method static synthetic access$1700(DDD)D
    .locals 12

    .prologue
    .line 150
    move-wide v0, p0

    .local v0, "x0":D
    move-wide v2, p2

    .local v2, "x1":D
    move-wide/from16 v4, p4

    .local v4, "x2":D
    move-wide v6, v0

    move-wide v8, v2

    move-wide v10, v4

    invoke-static/range {v6 .. v11}, Ljavafx/scene/media/MediaPlayer;->clamp(DDD)D

    move-result-wide v6

    move-wide v0, v6

    .end local v0    # "x0":D
    return-wide v0
.end method

.method static synthetic access$1802(Ljavafx/scene/media/MediaPlayer;Z)Z
    .locals 7

    .prologue
    .line 150
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/media/MediaPlayer;
    move v1, p1

    .local v1, "x1":Z
    move-object v2, v0

    move v3, v1

    move-object v5, v2

    move v6, v3

    move v2, v6

    move-object v3, v5

    move v4, v6

    iput-boolean v4, v3, Ljavafx/scene/media/MediaPlayer;->rateChangeRequested:Z

    move v0, v2

    .end local v0    # "x0":Ljavafx/scene/media/MediaPlayer;
    return v0
.end method

.method static synthetic access$1900(Ljavafx/scene/media/MediaPlayer;)Ljavafx/beans/property/DoubleProperty;
    .locals 2

    .prologue
    .line 150
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/media/MediaPlayer;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/media/MediaPlayer;->volume:Ljavafx/beans/property/DoubleProperty;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/media/MediaPlayer;
    return-object v0
.end method

.method static synthetic access$2002(Ljavafx/scene/media/MediaPlayer;Z)Z
    .locals 7

    .prologue
    .line 150
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/media/MediaPlayer;
    move v1, p1

    .local v1, "x1":Z
    move-object v2, v0

    move v3, v1

    move-object v5, v2

    move v6, v3

    move v2, v6

    move-object v3, v5

    move v4, v6

    iput-boolean v4, v3, Ljavafx/scene/media/MediaPlayer;->volumeChangeRequested:Z

    move v0, v2

    .end local v0    # "x0":Ljavafx/scene/media/MediaPlayer;
    return v0
.end method

.method static synthetic access$2100(Ljavafx/scene/media/MediaPlayer;)Ljavafx/beans/property/DoubleProperty;
    .locals 2

    .prologue
    .line 150
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/media/MediaPlayer;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/media/MediaPlayer;->balance:Ljavafx/beans/property/DoubleProperty;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/media/MediaPlayer;
    return-object v0
.end method

.method static synthetic access$2202(Ljavafx/scene/media/MediaPlayer;Z)Z
    .locals 7

    .prologue
    .line 150
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/media/MediaPlayer;
    move v1, p1

    .local v1, "x1":Z
    move-object v2, v0

    move v3, v1

    move-object v5, v2

    move v6, v3

    move v2, v6

    move-object v3, v5

    move v4, v6

    iput-boolean v4, v3, Ljavafx/scene/media/MediaPlayer;->balanceChangeRequested:Z

    move v0, v2

    .end local v0    # "x0":Ljavafx/scene/media/MediaPlayer;
    return v0
.end method

.method static synthetic access$2300(Ljavafx/scene/media/MediaPlayer;)Ljavafx/beans/property/ObjectProperty;
    .locals 2

    .prologue
    .line 150
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/media/MediaPlayer;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/media/MediaPlayer;->startTime:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/media/MediaPlayer;
    return-object v0
.end method

.method static synthetic access$2400(Ljavafx/scene/media/MediaPlayer;Ljavafx/util/Duration;ZLjavafx/util/Duration;Z)V
    .locals 10

    .prologue
    .line 150
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/media/MediaPlayer;
    move-object v1, p1

    .local v1, "x1":Ljavafx/util/Duration;
    move v2, p2

    .local v2, "x2":Z
    move-object v3, p3

    .local v3, "x3":Ljavafx/util/Duration;
    move v4, p4

    .local v4, "x4":Z
    move-object v5, v0

    move-object v6, v1

    move v7, v2

    move-object v8, v3

    move v9, v4

    invoke-direct {v5, v6, v7, v8, v9}, Ljavafx/scene/media/MediaPlayer;->setStartStopTimes(Ljavafx/util/Duration;ZLjavafx/util/Duration;Z)V

    return-void
.end method

.method static synthetic access$2502(Ljavafx/scene/media/MediaPlayer;Z)Z
    .locals 7

    .prologue
    .line 150
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/media/MediaPlayer;
    move v1, p1

    .local v1, "x1":Z
    move-object v2, v0

    move v3, v1

    move-object v5, v2

    move v6, v3

    move v2, v6

    move-object v3, v5

    move v4, v6

    iput-boolean v4, v3, Ljavafx/scene/media/MediaPlayer;->startTimeChangeRequested:Z

    move v0, v2

    .end local v0    # "x0":Ljavafx/scene/media/MediaPlayer;
    return v0
.end method

.method static synthetic access$2600(Ljavafx/scene/media/MediaPlayer;)V
    .locals 2

    .prologue
    .line 150
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/media/MediaPlayer;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/media/MediaPlayer;->calculateCycleDuration()V

    return-void
.end method

.method static synthetic access$2700(Ljavafx/scene/media/MediaPlayer;)Ljavafx/beans/property/ObjectProperty;
    .locals 2

    .prologue
    .line 150
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/media/MediaPlayer;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/media/MediaPlayer;->stopTime:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/media/MediaPlayer;
    return-object v0
.end method

.method static synthetic access$2802(Ljavafx/scene/media/MediaPlayer;Z)Z
    .locals 7

    .prologue
    .line 150
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/media/MediaPlayer;
    move v1, p1

    .local v1, "x1":Z
    move-object v2, v0

    move v3, v1

    move-object v5, v2

    move v6, v3

    move v2, v6

    move-object v3, v5

    move v4, v6

    iput-boolean v4, v3, Ljavafx/scene/media/MediaPlayer;->stopTimeChangeRequested:Z

    move v0, v2

    .end local v0    # "x0":Ljavafx/scene/media/MediaPlayer;
    return v0
.end method

.method static synthetic access$2900(Ljavafx/scene/media/MediaPlayer;D)V
    .locals 7

    .prologue
    .line 150
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/media/MediaPlayer;
    move-wide v1, p1

    .local v1, "x1":D
    move-object v3, v0

    move-wide v4, v1

    invoke-direct {v3, v4, v5}, Ljavafx/scene/media/MediaPlayer;->setCurrentRate(D)V

    return-void
.end method

.method static synthetic access$3002(Ljavafx/scene/media/MediaPlayer;Z)Z
    .locals 7

    .prologue
    .line 150
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/media/MediaPlayer;
    move v1, p1

    .local v1, "x1":Z
    move-object v2, v0

    move v3, v1

    move-object v5, v2

    move v6, v3

    move v2, v6

    move-object v3, v5

    move v4, v6

    iput-boolean v4, v3, Ljavafx/scene/media/MediaPlayer;->muteChangeRequested:Z

    move v0, v2

    .end local v0    # "x0":Ljavafx/scene/media/MediaPlayer;
    return v0
.end method

.method static synthetic access$3100(Ljavafx/scene/media/MediaPlayer;)Ljavafx/beans/property/IntegerProperty;
    .locals 2

    .prologue
    .line 150
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/media/MediaPlayer;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/media/MediaPlayer;->audioSpectrumNumBands:Ljavafx/beans/property/IntegerProperty;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/media/MediaPlayer;
    return-object v0
.end method

.method static synthetic access$3200(III)I
    .locals 6

    .prologue
    .line 150
    move v0, p0

    .local v0, "x0":I
    move v1, p1

    .local v1, "x1":I
    move v2, p2

    .local v2, "x2":I
    move v3, v0

    move v4, v1

    move v5, v2

    invoke-static {v3, v4, v5}, Ljavafx/scene/media/MediaPlayer;->clamp(III)I

    move-result v3

    move v0, v3

    .end local v0    # "x0":I
    return v0
.end method

.method static synthetic access$3302(Ljavafx/scene/media/MediaPlayer;Z)Z
    .locals 7

    .prologue
    .line 150
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/media/MediaPlayer;
    move v1, p1

    .local v1, "x1":Z
    move-object v2, v0

    move v3, v1

    move-object v5, v2

    move v6, v3

    move v2, v6

    move-object v3, v5

    move v4, v6

    iput-boolean v4, v3, Ljavafx/scene/media/MediaPlayer;->audioSpectrumNumBandsChangeRequested:Z

    move v0, v2

    .end local v0    # "x0":Ljavafx/scene/media/MediaPlayer;
    return v0
.end method

.method static synthetic access$3400(Ljavafx/scene/media/MediaPlayer;)Ljavafx/beans/property/DoubleProperty;
    .locals 2

    .prologue
    .line 150
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/media/MediaPlayer;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/media/MediaPlayer;->audioSpectrumInterval:Ljavafx/beans/property/DoubleProperty;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/media/MediaPlayer;
    return-object v0
.end method

.method static synthetic access$3502(Ljavafx/scene/media/MediaPlayer;Z)Z
    .locals 7

    .prologue
    .line 150
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/media/MediaPlayer;
    move v1, p1

    .local v1, "x1":Z
    move-object v2, v0

    move v3, v1

    move-object v5, v2

    move v6, v3

    move v2, v6

    move-object v3, v5

    move v4, v6

    iput-boolean v4, v3, Ljavafx/scene/media/MediaPlayer;->audioSpectrumIntervalChangeRequested:Z

    move v0, v2

    .end local v0    # "x0":Ljavafx/scene/media/MediaPlayer;
    return v0
.end method

.method static synthetic access$3600(Ljavafx/scene/media/MediaPlayer;)Ljavafx/beans/property/IntegerProperty;
    .locals 2

    .prologue
    .line 150
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/media/MediaPlayer;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/media/MediaPlayer;->audioSpectrumThreshold:Ljavafx/beans/property/IntegerProperty;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/media/MediaPlayer;
    return-object v0
.end method

.method static synthetic access$3702(Ljavafx/scene/media/MediaPlayer;Z)Z
    .locals 7

    .prologue
    .line 150
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/media/MediaPlayer;
    move v1, p1

    .local v1, "x1":Z
    move-object v2, v0

    move v3, v1

    move-object v5, v2

    move v6, v3

    move v2, v6

    move-object v3, v5

    move v4, v6

    iput-boolean v4, v3, Ljavafx/scene/media/MediaPlayer;->audioSpectrumThresholdChangeRequested:Z

    move v0, v2

    .end local v0    # "x0":Ljavafx/scene/media/MediaPlayer;
    return v0
.end method

.method static synthetic access$3800(Ljavafx/scene/media/MediaPlayer;)Ljavafx/beans/property/ObjectProperty;
    .locals 2

    .prologue
    .line 150
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/media/MediaPlayer;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/media/MediaPlayer;->audioSpectrumListener:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/media/MediaPlayer;
    return-object v0
.end method

.method static synthetic access$3902(Ljavafx/scene/media/MediaPlayer;Z)Z
    .locals 7

    .prologue
    .line 150
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/media/MediaPlayer;
    move v1, p1

    .local v1, "x1":Z
    move-object v2, v0

    move v3, v1

    move-object v5, v2

    move v6, v3

    move v2, v6

    move-object v3, v5

    move v4, v6

    iput-boolean v4, v3, Ljavafx/scene/media/MediaPlayer;->audioSpectrumEnabledChangeRequested:Z

    move v0, v2

    .end local v0    # "x0":Ljavafx/scene/media/MediaPlayer;
    return v0
.end method

.method static synthetic access$4000(Ljavafx/scene/media/MediaPlayer;)Ljavafx/util/Duration;
    .locals 2

    .prologue
    .line 150
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/media/MediaPlayer;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/media/MediaPlayer;->startTimeAtStop:Ljavafx/util/Duration;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/media/MediaPlayer;
    return-object v0
.end method

.method static synthetic access$4002(Ljavafx/scene/media/MediaPlayer;Ljavafx/util/Duration;)Ljavafx/util/Duration;
    .locals 7

    .prologue
    .line 150
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/media/MediaPlayer;
    move-object v1, p1

    .local v1, "x1":Ljavafx/util/Duration;
    move-object v2, v0

    move-object v3, v1

    move-object v5, v2

    move-object v6, v3

    move-object v2, v6

    move-object v3, v5

    move-object v4, v6

    iput-object v4, v3, Ljavafx/scene/media/MediaPlayer;->startTimeAtStop:Ljavafx/util/Duration;

    move-object v0, v2

    .end local v0    # "x0":Ljavafx/scene/media/MediaPlayer;
    return-object v0
.end method

.method static synthetic access$4100(Ljavafx/scene/media/MediaPlayer;I)V
    .locals 4

    .prologue
    .line 150
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/media/MediaPlayer;
    move v1, p1

    .local v1, "x1":I
    move-object v2, v0

    move v3, v1

    invoke-direct {v2, v3}, Ljavafx/scene/media/MediaPlayer;->setCurrentCount(I)V

    return-void
.end method

.method static synthetic access$4202(Ljavafx/scene/media/MediaPlayer;Z)Z
    .locals 7

    .prologue
    .line 150
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/media/MediaPlayer;
    move v1, p1

    .local v1, "x1":Z
    move-object v2, v0

    move v3, v1

    move-object v5, v2

    move v6, v3

    move v2, v6

    move-object v3, v5

    move v4, v6

    iput-boolean v4, v3, Ljavafx/scene/media/MediaPlayer;->isUpdateTimeEnabled:Z

    move v0, v2

    .end local v0    # "x0":Ljavafx/scene/media/MediaPlayer;
    return v0
.end method

.method static synthetic access$4302(Ljavafx/scene/media/MediaPlayer;Z)Z
    .locals 7

    .prologue
    .line 150
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/media/MediaPlayer;
    move v1, p1

    .local v1, "x1":Z
    move-object v2, v0

    move v3, v1

    move-object v5, v2

    move v6, v3

    move v2, v6

    move-object v3, v5

    move v4, v6

    iput-boolean v4, v3, Ljavafx/scene/media/MediaPlayer;->isEOS:Z

    move v0, v2

    .end local v0    # "x0":Ljavafx/scene/media/MediaPlayer;
    return v0
.end method

.method static synthetic access$4400(Ljavafx/scene/media/MediaPlayer;Ljavafx/scene/media/MediaPlayer$Status;)V
    .locals 4

    .prologue
    .line 150
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/media/MediaPlayer;
    move-object v1, p1

    .local v1, "x1":Ljavafx/scene/media/MediaPlayer$Status;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljavafx/scene/media/MediaPlayer;->setStatus(Ljavafx/scene/media/MediaPlayer$Status;)V

    return-void
.end method

.method static synthetic access$4500(Ljavafx/scene/media/MediaPlayer;Ljavafx/util/Duration;)V
    .locals 4

    .prologue
    .line 150
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/media/MediaPlayer;
    move-object v1, p1

    .local v1, "x1":Ljavafx/util/Duration;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljavafx/scene/media/MediaPlayer;->setCurrentTime(Ljavafx/util/Duration;)V

    return-void
.end method

.method static synthetic access$4600(Ljavafx/scene/media/MediaPlayer;)Ljavafx/scene/media/Media;
    .locals 2

    .prologue
    .line 150
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/media/MediaPlayer;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/media/MediaPlayer;->media:Ljavafx/scene/media/Media;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/media/MediaPlayer;
    return-object v0
.end method

.method static synthetic access$4700(Ljavafx/scene/media/MediaPlayer;)Ljava/util/Set;
    .locals 2

    .prologue
    .line 150
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/media/MediaPlayer;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/media/MediaPlayer;->viewRefs:Ljava/util/Set;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/media/MediaPlayer;
    return-object v0
.end method

.method static synthetic access$4802(Ljavafx/scene/media/MediaPlayer;Lcom/sun/media/jfxmedia/events/BufferProgressEvent;)Lcom/sun/media/jfxmedia/events/BufferProgressEvent;
    .locals 7

    .prologue
    .line 150
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/media/MediaPlayer;
    move-object v1, p1

    .local v1, "x1":Lcom/sun/media/jfxmedia/events/BufferProgressEvent;
    move-object v2, v0

    move-object v3, v1

    move-object v5, v2

    move-object v6, v3

    move-object v2, v6

    move-object v3, v5

    move-object v4, v6

    iput-object v4, v3, Ljavafx/scene/media/MediaPlayer;->lastBufferEvent:Lcom/sun/media/jfxmedia/events/BufferProgressEvent;

    move-object v0, v2

    .end local v0    # "x0":Ljavafx/scene/media/MediaPlayer;
    return-object v0
.end method

.method static synthetic access$4900(Ljavafx/scene/media/MediaPlayer;Ljavafx/util/Duration;)V
    .locals 4

    .prologue
    .line 150
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/media/MediaPlayer;
    move-object v1, p1

    .local v1, "x1":Ljavafx/util/Duration;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljavafx/scene/media/MediaPlayer;->setBufferProgressTime(Ljavafx/util/Duration;)V

    return-void
.end method

.method static synthetic access$5000(Ljavafx/scene/media/MediaPlayer;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 150
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/media/MediaPlayer;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/media/MediaPlayer;->renderLock:Ljava/lang/Object;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/media/MediaPlayer;
    return-object v0
.end method

.method static synthetic access$5100(Ljavafx/scene/media/MediaPlayer;)Lcom/sun/media/jfxmedia/control/VideoDataBuffer;
    .locals 2

    .prologue
    .line 150
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/media/MediaPlayer;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/media/MediaPlayer;->nextRenderFrame:Lcom/sun/media/jfxmedia/control/VideoDataBuffer;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/media/MediaPlayer;
    return-object v0
.end method

.method static synthetic access$5102(Ljavafx/scene/media/MediaPlayer;Lcom/sun/media/jfxmedia/control/VideoDataBuffer;)Lcom/sun/media/jfxmedia/control/VideoDataBuffer;
    .locals 7

    .prologue
    .line 150
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/media/MediaPlayer;
    move-object v1, p1

    .local v1, "x1":Lcom/sun/media/jfxmedia/control/VideoDataBuffer;
    move-object v2, v0

    move-object v3, v1

    move-object v5, v2

    move-object v6, v3

    move-object v2, v6

    move-object v3, v5

    move-object v4, v6

    iput-object v4, v3, Ljavafx/scene/media/MediaPlayer;->nextRenderFrame:Lcom/sun/media/jfxmedia/control/VideoDataBuffer;

    move-object v0, v2

    .end local v0    # "x0":Ljavafx/scene/media/MediaPlayer;
    return-object v0
.end method

.method static synthetic access$5200(Ljavafx/scene/media/MediaPlayer;)Lcom/sun/media/jfxmedia/control/VideoDataBuffer;
    .locals 2

    .prologue
    .line 150
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/media/MediaPlayer;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/media/MediaPlayer;->currentRenderFrame:Lcom/sun/media/jfxmedia/control/VideoDataBuffer;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/media/MediaPlayer;
    return-object v0
.end method

.method static synthetic access$5202(Ljavafx/scene/media/MediaPlayer;Lcom/sun/media/jfxmedia/control/VideoDataBuffer;)Lcom/sun/media/jfxmedia/control/VideoDataBuffer;
    .locals 7

    .prologue
    .line 150
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/media/MediaPlayer;
    move-object v1, p1

    .local v1, "x1":Lcom/sun/media/jfxmedia/control/VideoDataBuffer;
    move-object v2, v0

    move-object v3, v1

    move-object v5, v2

    move-object v6, v3

    move-object v2, v6

    move-object v3, v5

    move-object v4, v6

    iput-object v4, v3, Ljavafx/scene/media/MediaPlayer;->currentRenderFrame:Lcom/sun/media/jfxmedia/control/VideoDataBuffer;

    move-object v0, v2

    .end local v0    # "x0":Ljavafx/scene/media/MediaPlayer;
    return-object v0
.end method

.method static synthetic access$lambda$0(Ljavafx/scene/media/MediaPlayer;)V
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/media/MediaPlayer;->lambda$init$11()V

    return-void
.end method

.method static synthetic access$lambda$1(Ljavafx/scene/media/MediaPlayer;)V
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/media/MediaPlayer;->lambda$setStartStopTimes$12()V

    return-void
.end method

.method static synthetic access$lambda$2(Ljavafx/scene/media/MediaPlayer;Ljavafx/scene/media/MediaException;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljavafx/scene/media/MediaPlayer;->lambda$handleError$13(Ljavafx/scene/media/MediaException;)V

    return-void
.end method

.method private bufferProgressTimePropertyImpl()Ljavafx/beans/property/ReadOnlyObjectWrapper;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ReadOnlyObjectWrapper",
            "<",
            "Ljavafx/util/Duration;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1532
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaPlayer;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/media/MediaPlayer;->bufferProgressTime:Ljavafx/beans/property/ReadOnlyObjectWrapper;

    if-nez v1, :cond_0

    .line 1533
    move-object v1, v0

    new-instance v2, Ljavafx/beans/property/ReadOnlyObjectWrapper;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    const-string v5, "bufferProgressTime"

    invoke-direct {v3, v4, v5}, Ljavafx/beans/property/ReadOnlyObjectWrapper;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v1, Ljavafx/scene/media/MediaPlayer;->bufferProgressTime:Ljavafx/beans/property/ReadOnlyObjectWrapper;

    .line 1535
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/media/MediaPlayer;->bufferProgressTime:Ljavafx/beans/property/ReadOnlyObjectWrapper;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/media/MediaPlayer;
    return-object v0
.end method

.method private calculateCycleDuration()V
    .locals 6

    .prologue
    .line 1213
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaPlayer;
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/media/MediaPlayer;->media:Ljavafx/scene/media/Media;

    invoke-virtual {v3}, Ljavafx/scene/media/Media;->getDuration()Ljavafx/util/Duration;

    move-result-object v3

    move-object v2, v3

    .line 1215
    .local v2, "mediaDuration":Ljavafx/util/Duration;
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/media/MediaPlayer;->getStopTime()Ljavafx/util/Duration;

    move-result-object v3

    invoke-virtual {v3}, Ljavafx/util/Duration;->isUnknown()Z

    move-result v3

    if-nez v3, :cond_3

    .line 1216
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/media/MediaPlayer;->getStopTime()Ljavafx/util/Duration;

    move-result-object v3

    move-object v1, v3

    .line 1220
    .local v1, "endTime":Ljavafx/util/Duration;
    :goto_0
    move-object v3, v1

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljavafx/util/Duration;->greaterThan(Ljavafx/util/Duration;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1221
    move-object v3, v2

    move-object v1, v3

    .line 1225
    :cond_0
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/util/Duration;->isUnknown()Z

    move-result v3

    if-nez v3, :cond_1

    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/media/MediaPlayer;->getStartTime()Ljavafx/util/Duration;

    move-result-object v3

    invoke-virtual {v3}, Ljavafx/util/Duration;->isUnknown()Z

    move-result v3

    if-nez v3, :cond_1

    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/media/MediaPlayer;->getStartTime()Ljavafx/util/Duration;

    move-result-object v3

    invoke-virtual {v3}, Ljavafx/util/Duration;->isIndefinite()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1226
    :cond_1
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/media/MediaPlayer;->getCycleDuration()Ljavafx/util/Duration;

    move-result-object v3

    invoke-virtual {v3}, Ljavafx/util/Duration;->isUnknown()Z

    move-result v3

    if-nez v3, :cond_2

    .line 1227
    move-object v3, v0

    sget-object v4, Ljavafx/util/Duration;->UNKNOWN:Ljavafx/util/Duration;

    invoke-direct {v3, v4}, Ljavafx/scene/media/MediaPlayer;->setCycleDuration(Ljavafx/util/Duration;)V

    .line 1230
    :cond_2
    move-object v3, v0

    move-object v4, v1

    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/media/MediaPlayer;->getStartTime()Ljavafx/util/Duration;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljavafx/util/Duration;->subtract(Ljavafx/util/Duration;)Ljavafx/util/Duration;

    move-result-object v4

    invoke-direct {v3, v4}, Ljavafx/scene/media/MediaPlayer;->setCycleDuration(Ljavafx/util/Duration;)V

    .line 1231
    move-object v3, v0

    invoke-direct {v3}, Ljavafx/scene/media/MediaPlayer;->calculateTotalDuration()V

    .line 1232
    return-void

    .line 1218
    .end local v1    # "endTime":Ljavafx/util/Duration;
    :cond_3
    move-object v3, v2

    move-object v1, v3

    .restart local v1    # "endTime":Ljavafx/util/Duration;
    goto :goto_0
.end method

.method private calculateStartStopTimes(Ljavafx/util/Duration;Ljavafx/util/Duration;)[D
    .locals 21

    .prologue
    .line 983
    move-object/from16 v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaPlayer;
    move-object/from16 v1, p1

    .local v1, "startValue":Ljavafx/util/Duration;
    move-object/from16 v2, p2

    .local v2, "stopValue":Ljavafx/util/Duration;
    move-object v14, v1

    if-eqz v14, :cond_0

    move-object v14, v1

    sget-object v15, Ljavafx/util/Duration;->ZERO:Ljavafx/util/Duration;

    invoke-virtual {v14, v15}, Ljavafx/util/Duration;->lessThan(Ljavafx/util/Duration;)Z

    move-result v14

    if-nez v14, :cond_0

    move-object v14, v1

    sget-object v15, Ljavafx/util/Duration;->UNKNOWN:Ljavafx/util/Duration;

    .line 984
    invoke-virtual {v14, v15}, Ljavafx/util/Duration;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 985
    :cond_0
    const-wide/16 v14, 0x0

    move-wide v3, v14

    .line 994
    .local v3, "newStart":D
    :goto_0
    move-object v14, v2

    if-eqz v14, :cond_1

    move-object v14, v2

    sget-object v15, Ljavafx/util/Duration;->UNKNOWN:Ljavafx/util/Duration;

    invoke-virtual {v14, v15}, Ljavafx/util/Duration;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_1

    move-object v14, v2

    sget-object v15, Ljavafx/util/Duration;->INDEFINITE:Ljavafx/util/Duration;

    .line 995
    invoke-virtual {v14, v15}, Ljavafx/util/Duration;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 996
    :cond_1
    const-wide v14, 0x7fefffffffffffffL    # Double.MAX_VALUE

    move-wide v5, v14

    .line 1004
    .local v5, "newStop":D
    :goto_1
    move-object v14, v0

    iget-object v14, v14, Ljavafx/scene/media/MediaPlayer;->media:Ljavafx/scene/media/Media;

    invoke-virtual {v14}, Ljavafx/scene/media/Media;->getDuration()Ljavafx/util/Duration;

    move-result-object v14

    move-object v7, v14

    .line 1005
    .local v7, "mediaDuration":Ljavafx/util/Duration;
    move-object v14, v7

    sget-object v15, Ljavafx/util/Duration;->UNKNOWN:Ljavafx/util/Duration;

    if-ne v14, v15, :cond_7

    const-wide v14, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 1006
    :goto_2
    move-wide v8, v14

    .line 1009
    .local v8, "duration":D
    move-wide v14, v3

    const-wide/16 v16, 0x0

    move-wide/from16 v18, v8

    invoke-static/range {v14 .. v19}, Ljavafx/scene/media/MediaPlayer;->clamp(DDD)D

    move-result-wide v14

    move-wide v10, v14

    .line 1010
    .local v10, "actualStart":D
    move-wide v14, v5

    const-wide/16 v16, 0x0

    move-wide/from16 v18, v8

    invoke-static/range {v14 .. v19}, Ljavafx/scene/media/MediaPlayer;->clamp(DDD)D

    move-result-wide v14

    move-wide v12, v14

    .line 1013
    .local v12, "actualStop":D
    move-wide v14, v10

    move-wide/from16 v16, v12

    cmpl-double v14, v14, v16

    if-lez v14, :cond_2

    .line 1014
    move-wide v14, v10

    move-wide v12, v14

    .line 1017
    :cond_2
    const/4 v14, 0x2

    new-array v14, v14, [D

    move-object/from16 v20, v14

    move-object/from16 v14, v20

    move-object/from16 v15, v20

    const/16 v16, 0x0

    move-wide/from16 v17, v10

    aput-wide v17, v15, v16

    move-object/from16 v20, v14

    move-object/from16 v14, v20

    move-object/from16 v15, v20

    const/16 v16, 0x1

    move-wide/from16 v17, v12

    aput-wide v17, v15, v16

    move-object v0, v14

    .end local v0    # "this":Ljavafx/scene/media/MediaPlayer;
    return-object v0

    .line 986
    .end local v3    # "newStart":D
    .end local v5    # "newStop":D
    .end local v7    # "mediaDuration":Ljavafx/util/Duration;
    .end local v8    # "duration":D
    .end local v10    # "actualStart":D
    .end local v12    # "actualStop":D
    .restart local v0    # "this":Ljavafx/scene/media/MediaPlayer;
    :cond_3
    move-object v14, v1

    sget-object v15, Ljavafx/util/Duration;->INDEFINITE:Ljavafx/util/Duration;

    invoke-virtual {v14, v15}, Ljavafx/util/Duration;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 987
    const-wide v14, 0x7fefffffffffffffL    # Double.MAX_VALUE

    move-wide v3, v14

    .restart local v3    # "newStart":D
    goto :goto_0

    .line 989
    .end local v3    # "newStart":D
    :cond_4
    move-object v14, v1

    invoke-virtual {v14}, Ljavafx/util/Duration;->toMillis()D

    move-result-wide v14

    const-wide v16, 0x408f400000000000L    # 1000.0

    div-double v14, v14, v16

    move-wide v3, v14

    .restart local v3    # "newStart":D
    goto/16 :goto_0

    .line 997
    :cond_5
    move-object v14, v2

    sget-object v15, Ljavafx/util/Duration;->ZERO:Ljavafx/util/Duration;

    invoke-virtual {v14, v15}, Ljavafx/util/Duration;->lessThan(Ljavafx/util/Duration;)Z

    move-result v14

    if-eqz v14, :cond_6

    .line 998
    const-wide/16 v14, 0x0

    move-wide v5, v14

    .restart local v5    # "newStop":D
    goto :goto_1

    .line 1000
    .end local v5    # "newStop":D
    :cond_6
    move-object v14, v2

    invoke-virtual {v14}, Ljavafx/util/Duration;->toMillis()D

    move-result-wide v14

    const-wide v16, 0x408f400000000000L    # 1000.0

    div-double v14, v14, v16

    move-wide v5, v14

    .restart local v5    # "newStop":D
    goto/16 :goto_1

    .line 1005
    .restart local v7    # "mediaDuration":Ljavafx/util/Duration;
    :cond_7
    move-object v14, v7

    .line 1006
    invoke-virtual {v14}, Ljavafx/util/Duration;->toMillis()D

    move-result-wide v14

    const-wide v16, 0x408f400000000000L    # 1000.0

    div-double v14, v14, v16

    goto/16 :goto_2
.end method

.method private calculateTotalDuration()V
    .locals 6

    .prologue
    .line 1266
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/media/MediaPlayer;
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/media/MediaPlayer;->getCycleCount()I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 1267
    move-object v2, v1

    sget-object v3, Ljavafx/util/Duration;->INDEFINITE:Ljavafx/util/Duration;

    invoke-direct {v2, v3}, Ljavafx/scene/media/MediaPlayer;->setTotalDuration(Ljavafx/util/Duration;)V

    .line 1273
    :goto_0
    return-void

    .line 1268
    :cond_0
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/media/MediaPlayer;->getCycleDuration()Ljavafx/util/Duration;

    move-result-object v2

    invoke-virtual {v2}, Ljavafx/util/Duration;->isUnknown()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1269
    move-object v2, v1

    sget-object v3, Ljavafx/util/Duration;->UNKNOWN:Ljavafx/util/Duration;

    invoke-direct {v2, v3}, Ljavafx/scene/media/MediaPlayer;->setTotalDuration(Ljavafx/util/Duration;)V

    goto :goto_0

    .line 1271
    :cond_1
    move-object v2, v1

    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/media/MediaPlayer;->getCycleDuration()Ljavafx/util/Duration;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/media/MediaPlayer;->getCycleCount()I

    move-result v4

    int-to-double v4, v4

    invoke-virtual {v3, v4, v5}, Ljavafx/util/Duration;->multiply(D)Ljavafx/util/Duration;

    move-result-object v3

    invoke-direct {v2, v3}, Ljavafx/scene/media/MediaPlayer;->setTotalDuration(Ljavafx/util/Duration;)V

    goto :goto_0
.end method

.method private static clamp(DDD)D
    .locals 10

    .prologue
    .line 334
    move-wide v0, p0

    .local v0, "dvalue":D
    move-wide v2, p2

    .local v2, "dmin":D
    move-wide v4, p4

    .local v4, "dmax":D
    move-wide v6, v2

    const-wide/16 v8, 0x1

    cmpl-double v6, v6, v8

    if-eqz v6, :cond_0

    move-wide v6, v0

    move-wide v8, v2

    cmpg-double v6, v6, v8

    if-gez v6, :cond_0

    .line 335
    move-wide v6, v2

    move-wide v0, v6

    .line 339
    .end local v0    # "dvalue":D
    :goto_0
    return-wide v0

    .line 336
    .restart local v0    # "dvalue":D
    :cond_0
    move-wide v6, v4

    const-wide v8, 0x7fefffffffffffffL    # Double.MAX_VALUE

    cmpl-double v6, v6, v8

    if-eqz v6, :cond_1

    move-wide v6, v0

    move-wide v8, v4

    cmpl-double v6, v6, v8

    if-lez v6, :cond_1

    .line 337
    move-wide v6, v4

    move-wide v0, v6

    goto :goto_0

    .line 339
    :cond_1
    move-wide v6, v0

    move-wide v0, v6

    goto :goto_0
.end method

.method private static clamp(III)I
    .locals 5

    .prologue
    .line 344
    move v0, p0

    .local v0, "ivalue":I
    move v1, p1

    .local v1, "imin":I
    move v2, p2

    .local v2, "imax":I
    move v3, v1

    const/high16 v4, -0x80000000

    if-eq v3, v4, :cond_0

    move v3, v0

    move v4, v1

    if-ge v3, v4, :cond_0

    .line 345
    move v3, v1

    move v0, v3

    .line 349
    .end local v0    # "ivalue":I
    :goto_0
    return v0

    .line 346
    .restart local v0    # "ivalue":I
    :cond_0
    move v3, v2

    const v4, 0x7fffffff

    if-eq v3, v4, :cond_1

    move v3, v0

    move v4, v2

    if-le v3, v4, :cond_1

    .line 347
    move v3, v2

    move v0, v3

    goto :goto_0

    .line 349
    :cond_1
    move v3, v0

    move v0, v3

    goto :goto_0
.end method

.method private currentCountPropertyImpl()Ljavafx/beans/property/ReadOnlyIntegerWrapper;
    .locals 7

    .prologue
    .line 1611
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaPlayer;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/media/MediaPlayer;->currentCount:Ljavafx/beans/property/ReadOnlyIntegerWrapper;

    if-nez v1, :cond_0

    .line 1612
    move-object v1, v0

    new-instance v2, Ljavafx/beans/property/ReadOnlyIntegerWrapper;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    const-string v5, "currentCount"

    invoke-direct {v3, v4, v5}, Ljavafx/beans/property/ReadOnlyIntegerWrapper;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v1, Ljavafx/scene/media/MediaPlayer;->currentCount:Ljavafx/beans/property/ReadOnlyIntegerWrapper;

    .line 1614
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/media/MediaPlayer;->currentCount:Ljavafx/beans/property/ReadOnlyIntegerWrapper;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/media/MediaPlayer;
    return-object v0
.end method

.method private currentRatePropertyImpl()Ljavafx/beans/property/ReadOnlyDoubleWrapper;
    .locals 7

    .prologue
    .line 849
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaPlayer;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/media/MediaPlayer;->currentRate:Ljavafx/beans/property/ReadOnlyDoubleWrapper;

    if-nez v1, :cond_0

    .line 850
    move-object v1, v0

    new-instance v2, Ljavafx/beans/property/ReadOnlyDoubleWrapper;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    const-string v5, "currentRate"

    invoke-direct {v3, v4, v5}, Ljavafx/beans/property/ReadOnlyDoubleWrapper;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v1, Ljavafx/scene/media/MediaPlayer;->currentRate:Ljavafx/beans/property/ReadOnlyDoubleWrapper;

    .line 852
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/media/MediaPlayer;->currentRate:Ljavafx/beans/property/ReadOnlyDoubleWrapper;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/media/MediaPlayer;
    return-object v0
.end method

.method private currentTimePropertyImpl()Ljavafx/beans/property/ReadOnlyObjectWrapper;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ReadOnlyObjectWrapper",
            "<",
            "Ljavafx/util/Duration;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1345
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaPlayer;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/media/MediaPlayer;->currentTime:Ljavafx/beans/property/ReadOnlyObjectWrapper;

    if-nez v1, :cond_0

    .line 1346
    move-object v1, v0

    new-instance v2, Ljavafx/beans/property/ReadOnlyObjectWrapper;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    const-string v5, "currentTime"

    invoke-direct {v3, v4, v5}, Ljavafx/beans/property/ReadOnlyObjectWrapper;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v1, Ljavafx/scene/media/MediaPlayer;->currentTime:Ljavafx/beans/property/ReadOnlyObjectWrapper;

    .line 1347
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/media/MediaPlayer;->currentTime:Ljavafx/beans/property/ReadOnlyObjectWrapper;

    sget-object v2, Ljavafx/util/Duration;->ZERO:Ljavafx/util/Duration;

    invoke-virtual {v1, v2}, Ljavafx/beans/property/ReadOnlyObjectWrapper;->setValue(Ljava/lang/Object;)V

    .line 1348
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/media/MediaPlayer;->updateTime()V

    .line 1350
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/media/MediaPlayer;->currentTime:Ljavafx/beans/property/ReadOnlyObjectWrapper;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/media/MediaPlayer;
    return-object v0
.end method

.method private cycleDurationPropertyImpl()Ljavafx/beans/property/ReadOnlyObjectWrapper;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ReadOnlyObjectWrapper",
            "<",
            "Ljavafx/util/Duration;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1203
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaPlayer;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/media/MediaPlayer;->cycleDuration:Ljavafx/beans/property/ReadOnlyObjectWrapper;

    if-nez v1, :cond_0

    .line 1204
    move-object v1, v0

    new-instance v2, Ljavafx/beans/property/ReadOnlyObjectWrapper;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    const-string v5, "cycleDuration"

    invoke-direct {v3, v4, v5}, Ljavafx/beans/property/ReadOnlyObjectWrapper;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v1, Ljavafx/scene/media/MediaPlayer;->cycleDuration:Ljavafx/beans/property/ReadOnlyObjectWrapper;

    .line 1206
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/media/MediaPlayer;->cycleDuration:Ljavafx/beans/property/ReadOnlyObjectWrapper;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/media/MediaPlayer;
    return-object v0
.end method

.method private errorPropertyImpl()Ljavafx/beans/property/ReadOnlyObjectWrapper;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ReadOnlyObjectWrapper",
            "<",
            "Ljavafx/scene/media/MediaException;",
            ">;"
        }
    .end annotation

    .prologue
    .line 561
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaPlayer;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/media/MediaPlayer;->error:Ljavafx/beans/property/ReadOnlyObjectWrapper;

    if-nez v1, :cond_0

    .line 562
    move-object v1, v0

    new-instance v2, Ljavafx/scene/media/MediaPlayer$1;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/media/MediaPlayer$1;-><init>(Ljavafx/scene/media/MediaPlayer;)V

    iput-object v2, v1, Ljavafx/scene/media/MediaPlayer;->error:Ljavafx/beans/property/ReadOnlyObjectWrapper;

    .line 582
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/media/MediaPlayer;->error:Ljavafx/beans/property/ReadOnlyObjectWrapper;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/media/MediaPlayer;
    return-object v0
.end method

.method private init()V
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavafx/scene/media/MediaException;
        }
    .end annotation

    .prologue
    .line 456
    move-object/from16 v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaPlayer;
    move-object v12, v0

    :try_start_0
    iget-object v12, v12, Ljavafx/scene/media/MediaPlayer;->media:Ljavafx/scene/media/Media;

    invoke-virtual {v12}, Ljavafx/scene/media/Media;->retrieveJfxLocator()Lcom/sun/media/jfxmedia/locator/Locator;

    move-result-object v12

    move-object v1, v12

    .line 460
    .local v1, "locator":Lcom/sun/media/jfxmedia/locator/Locator;
    move-object v12, v1

    invoke-virtual {v12}, Lcom/sun/media/jfxmedia/locator/Locator;->waitForReadySignal()V

    .line 462
    move-object v12, v0

    iget-object v12, v12, Ljavafx/scene/media/MediaPlayer;->disposeLock:Ljava/lang/Object;

    move-object/from16 v18, v12

    move-object/from16 v12, v18

    move-object/from16 v13, v18

    move-object v2, v13

    monitor-enter v12
    :try_end_0
    .catch Lcom/sun/media/jfxmedia/MediaException; {:try_start_0 .. :try_end_0} :catch_0

    .line 463
    move-object v12, v0

    :try_start_1
    invoke-virtual {v12}, Ljavafx/scene/media/MediaPlayer;->getStatus()Ljavafx/scene/media/MediaPlayer$Status;

    move-result-object v12

    sget-object v13, Ljavafx/scene/media/MediaPlayer$Status;->DISPOSED:Ljavafx/scene/media/MediaPlayer$Status;

    if-ne v12, v13, :cond_0

    .line 464
    move-object v12, v2

    monitor-exit v12

    .line 518
    :goto_0
    return-void

    .line 467
    :cond_0
    move-object v12, v0

    move-object v13, v1

    invoke-static {v13}, Lcom/sun/media/jfxmedia/MediaManager;->getPlayer(Lcom/sun/media/jfxmedia/locator/Locator;)Lcom/sun/media/jfxmedia/MediaPlayer;

    move-result-object v13

    iput-object v13, v12, Ljavafx/scene/media/MediaPlayer;->jfxPlayer:Lcom/sun/media/jfxmedia/MediaPlayer;

    .line 469
    move-object v12, v0

    iget-object v12, v12, Ljavafx/scene/media/MediaPlayer;->jfxPlayer:Lcom/sun/media/jfxmedia/MediaPlayer;

    if-eqz v12, :cond_1

    .line 471
    move-object v12, v0

    invoke-static {v12}, Ljavafx/scene/media/MediaPlayerShutdownHook;->addMediaPlayer(Ljavafx/scene/media/MediaPlayer;)V

    .line 474
    move-object v12, v0

    iget-object v12, v12, Ljavafx/scene/media/MediaPlayer;->jfxPlayer:Lcom/sun/media/jfxmedia/MediaPlayer;

    move-object v13, v0

    invoke-virtual {v13}, Ljavafx/scene/media/MediaPlayer;->getBalance()D

    move-result-wide v13

    double-to-float v13, v13

    invoke-interface {v12, v13}, Lcom/sun/media/jfxmedia/MediaPlayer;->setBalance(F)V

    .line 475
    move-object v12, v0

    iget-object v12, v12, Ljavafx/scene/media/MediaPlayer;->jfxPlayer:Lcom/sun/media/jfxmedia/MediaPlayer;

    move-object v13, v0

    invoke-virtual {v13}, Ljavafx/scene/media/MediaPlayer;->isMute()Z

    move-result v13

    invoke-interface {v12, v13}, Lcom/sun/media/jfxmedia/MediaPlayer;->setMute(Z)V

    .line 476
    move-object v12, v0

    iget-object v12, v12, Ljavafx/scene/media/MediaPlayer;->jfxPlayer:Lcom/sun/media/jfxmedia/MediaPlayer;

    move-object v13, v0

    invoke-virtual {v13}, Ljavafx/scene/media/MediaPlayer;->getVolume()D

    move-result-wide v13

    double-to-float v13, v13

    invoke-interface {v12, v13}, Lcom/sun/media/jfxmedia/MediaPlayer;->setVolume(F)V

    .line 479
    move-object v12, v0

    new-instance v13, Ljavafx/scene/media/MediaPlayer$_VideoTrackSizeListener;

    move-object/from16 v18, v13

    move-object/from16 v13, v18

    move-object/from16 v14, v18

    move-object v15, v0

    const/16 v16, 0x0

    invoke-direct/range {v14 .. v16}, Ljavafx/scene/media/MediaPlayer$_VideoTrackSizeListener;-><init>(Ljavafx/scene/media/MediaPlayer;Ljavafx/scene/media/MediaPlayer$1;)V

    iput-object v13, v12, Ljavafx/scene/media/MediaPlayer;->sizeListener:Lcom/sun/media/jfxmedia/events/VideoTrackSizeListener;

    .line 480
    move-object v12, v0

    new-instance v13, Ljavafx/scene/media/MediaPlayer$_PlayerStateListener;

    move-object/from16 v18, v13

    move-object/from16 v13, v18

    move-object/from16 v14, v18

    move-object v15, v0

    const/16 v16, 0x0

    invoke-direct/range {v14 .. v16}, Ljavafx/scene/media/MediaPlayer$_PlayerStateListener;-><init>(Ljavafx/scene/media/MediaPlayer;Ljavafx/scene/media/MediaPlayer$1;)V

    iput-object v13, v12, Ljavafx/scene/media/MediaPlayer;->stateListener:Lcom/sun/media/jfxmedia/events/PlayerStateListener;

    .line 481
    move-object v12, v0

    new-instance v13, Ljavafx/scene/media/MediaPlayer$_PlayerTimeListener;

    move-object/from16 v18, v13

    move-object/from16 v13, v18

    move-object/from16 v14, v18

    move-object v15, v0

    const/16 v16, 0x0

    invoke-direct/range {v14 .. v16}, Ljavafx/scene/media/MediaPlayer$_PlayerTimeListener;-><init>(Ljavafx/scene/media/MediaPlayer;Ljavafx/scene/media/MediaPlayer$1;)V

    iput-object v13, v12, Ljavafx/scene/media/MediaPlayer;->timeListener:Lcom/sun/media/jfxmedia/events/PlayerTimeListener;

    .line 482
    move-object v12, v0

    new-instance v13, Ljavafx/scene/media/MediaPlayer$_BufferListener;

    move-object/from16 v18, v13

    move-object/from16 v13, v18

    move-object/from16 v14, v18

    move-object v15, v0

    const/16 v16, 0x0

    invoke-direct/range {v14 .. v16}, Ljavafx/scene/media/MediaPlayer$_BufferListener;-><init>(Ljavafx/scene/media/MediaPlayer;Ljavafx/scene/media/MediaPlayer$1;)V

    iput-object v13, v12, Ljavafx/scene/media/MediaPlayer;->bufferListener:Lcom/sun/media/jfxmedia/events/BufferListener;

    .line 483
    move-object v12, v0

    new-instance v13, Ljavafx/scene/media/MediaPlayer$_MarkerListener;

    move-object/from16 v18, v13

    move-object/from16 v13, v18

    move-object/from16 v14, v18

    move-object v15, v0

    const/16 v16, 0x0

    invoke-direct/range {v14 .. v16}, Ljavafx/scene/media/MediaPlayer$_MarkerListener;-><init>(Ljavafx/scene/media/MediaPlayer;Ljavafx/scene/media/MediaPlayer$1;)V

    iput-object v13, v12, Ljavafx/scene/media/MediaPlayer;->markerEventListener:Lcom/sun/media/jfxmedia/events/MarkerListener;

    .line 484
    move-object v12, v0

    new-instance v13, Ljavafx/scene/media/MediaPlayer$_SpectrumListener;

    move-object/from16 v18, v13

    move-object/from16 v13, v18

    move-object/from16 v14, v18

    move-object v15, v0

    const/16 v16, 0x0

    invoke-direct/range {v14 .. v16}, Ljavafx/scene/media/MediaPlayer$_SpectrumListener;-><init>(Ljavafx/scene/media/MediaPlayer;Ljavafx/scene/media/MediaPlayer$1;)V

    iput-object v13, v12, Ljavafx/scene/media/MediaPlayer;->spectrumListener:Lcom/sun/media/jfxmedia/events/AudioSpectrumListener;

    .line 485
    move-object v12, v0

    new-instance v13, Ljavafx/scene/media/MediaPlayer$RendererListener;

    move-object/from16 v18, v13

    move-object/from16 v13, v18

    move-object/from16 v14, v18

    move-object v15, v0

    const/16 v16, 0x0

    invoke-direct/range {v14 .. v16}, Ljavafx/scene/media/MediaPlayer$RendererListener;-><init>(Ljavafx/scene/media/MediaPlayer;Ljavafx/scene/media/MediaPlayer$1;)V

    iput-object v13, v12, Ljavafx/scene/media/MediaPlayer;->rendererListener:Ljavafx/scene/media/MediaPlayer$RendererListener;

    .line 490
    :cond_1
    move-object v12, v0

    new-instance v13, Ljavafx/scene/media/MediaPlayer$MarkerMapChangeListener;

    move-object/from16 v18, v13

    move-object/from16 v13, v18

    move-object/from16 v14, v18

    move-object v15, v0

    const/16 v16, 0x0

    invoke-direct/range {v14 .. v16}, Ljavafx/scene/media/MediaPlayer$MarkerMapChangeListener;-><init>(Ljavafx/scene/media/MediaPlayer;Ljavafx/scene/media/MediaPlayer$1;)V

    iput-object v13, v12, Ljavafx/scene/media/MediaPlayer;->markerMapListener:Ljavafx/collections/MapChangeListener;

    .line 491
    move-object v12, v0

    iget-object v12, v12, Ljavafx/scene/media/MediaPlayer;->media:Ljavafx/scene/media/Media;

    invoke-virtual {v12}, Ljavafx/scene/media/Media;->getMarkers()Ljavafx/collections/ObservableMap;

    move-result-object v12

    move-object v3, v12

    .line 492
    .local v3, "markers":Ljavafx/collections/ObservableMap;, "Ljavafx/collections/ObservableMap<Ljava/lang/String;Ljavafx/util/Duration;>;"
    move-object v12, v3

    move-object v13, v0

    iget-object v13, v13, Ljavafx/scene/media/MediaPlayer;->markerMapListener:Ljavafx/collections/MapChangeListener;

    invoke-interface {v12, v13}, Ljavafx/collections/ObservableMap;->addListener(Ljavafx/collections/MapChangeListener;)V

    .line 496
    move-object v12, v0

    iget-object v12, v12, Ljavafx/scene/media/MediaPlayer;->jfxPlayer:Lcom/sun/media/jfxmedia/MediaPlayer;

    invoke-interface {v12}, Lcom/sun/media/jfxmedia/MediaPlayer;->getMedia()Lcom/sun/media/jfxmedia/Media;

    move-result-object v12

    move-object v4, v12

    .line 497
    .local v4, "jfxMedia":Lcom/sun/media/jfxmedia/Media;
    move-object v12, v3

    invoke-interface {v12}, Ljavafx/collections/ObservableMap;->entrySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    move-object v5, v12

    :goto_1
    move-object v12, v5

    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_3

    move-object v12, v5

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map$Entry;

    move-object v6, v12

    .line 498
    .local v6, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljavafx/util/Duration;>;"
    move-object v12, v6

    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    move-object v7, v12

    .line 499
    .local v7, "markerName":Ljava/lang/String;
    move-object v12, v7

    if-eqz v12, :cond_2

    .line 500
    move-object v12, v6

    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljavafx/util/Duration;

    move-object v8, v12

    .line 501
    .local v8, "markerTime":Ljavafx/util/Duration;
    move-object v12, v8

    if-eqz v12, :cond_2

    .line 502
    move-object v12, v8

    invoke-virtual {v12}, Ljavafx/util/Duration;->toMillis()D

    move-result-wide v12

    move-wide v9, v12

    .line 503
    .local v9, "msec":D
    move-wide v12, v9

    const-wide/16 v14, 0x0

    cmpl-double v12, v12, v14

    if-ltz v12, :cond_2

    .line 504
    move-object v12, v4

    move-object v13, v7

    move-wide v14, v9

    const-wide v16, 0x408f400000000000L    # 1000.0

    div-double v14, v14, v16

    invoke-virtual {v12, v13, v14, v15}, Lcom/sun/media/jfxmedia/Media;->addMarker(Ljava/lang/String;D)V

    .line 508
    .end local v8    # "markerTime":Ljavafx/util/Duration;
    .end local v9    # "msec":D
    :cond_2
    goto :goto_1

    .line 509
    .end local v6    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljavafx/util/Duration;>;"
    .end local v7    # "markerName":Ljava/lang/String;
    :cond_3
    move-object v12, v2

    monitor-exit v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 512
    .line 515
    move-object v12, v0

    invoke-static {v12}, Ljavafx/scene/media/MediaPlayer$$Lambda$1;->lambdaFactory$(Ljavafx/scene/media/MediaPlayer;)Ljava/lang/Runnable;

    move-result-object v12

    invoke-static {v12}, Ljavafx/application/Platform;->runLater(Ljava/lang/Runnable;)V

    .line 518
    goto/16 :goto_0

    .line 509
    .end local v3    # "markers":Ljavafx/collections/ObservableMap;, "Ljavafx/collections/ObservableMap<Ljava/lang/String;Ljavafx/util/Duration;>;"
    .end local v4    # "jfxMedia":Lcom/sun/media/jfxmedia/Media;
    :catchall_0
    move-exception v12

    move-object v11, v12

    move-object v12, v2

    :try_start_2
    monitor-exit v12
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v12, v11

    :try_start_3
    throw v12
    :try_end_3
    .catch Lcom/sun/media/jfxmedia/MediaException; {:try_start_3 .. :try_end_3} :catch_0

    .line 510
    .end local v1    # "locator":Lcom/sun/media/jfxmedia/locator/Locator;
    :catch_0
    move-exception v12

    move-object v1, v12

    .line 511
    .local v1, "e":Lcom/sun/media/jfxmedia/MediaException;
    move-object v12, v1

    invoke-static {v12}, Ljavafx/scene/media/MediaException;->exceptionToMediaException(Ljava/lang/Exception;)Ljavafx/scene/media/MediaException;

    move-result-object v12

    throw v12
.end method

.method private synthetic lambda$handleError$13(Ljavafx/scene/media/MediaException;)V
    .locals 5

    .prologue
    .line 1724
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaPlayer;
    move-object v1, p1

    .local v1, "error":Ljavafx/scene/media/MediaException;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljavafx/scene/media/MediaPlayer;->setError(Ljavafx/scene/media/MediaException;)V

    .line 1727
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/media/MediaException;->getType()Ljavafx/scene/media/MediaException$Type;

    move-result-object v2

    sget-object v3, Ljavafx/scene/media/MediaException$Type;->MEDIA_CORRUPTED:Ljavafx/scene/media/MediaException$Type;

    if-eq v2, v3, :cond_0

    move-object v2, v1

    .line 1728
    invoke-virtual {v2}, Ljavafx/scene/media/MediaException;->getType()Ljavafx/scene/media/MediaException$Type;

    move-result-object v2

    sget-object v3, Ljavafx/scene/media/MediaException$Type;->MEDIA_UNSUPPORTED:Ljavafx/scene/media/MediaException$Type;

    if-eq v2, v3, :cond_0

    move-object v2, v1

    .line 1729
    invoke-virtual {v2}, Ljavafx/scene/media/MediaException;->getType()Ljavafx/scene/media/MediaException$Type;

    move-result-object v2

    sget-object v3, Ljavafx/scene/media/MediaException$Type;->MEDIA_INACCESSIBLE:Ljavafx/scene/media/MediaException$Type;

    if-eq v2, v3, :cond_0

    move-object v2, v1

    .line 1730
    invoke-virtual {v2}, Ljavafx/scene/media/MediaException;->getType()Ljavafx/scene/media/MediaException$Type;

    move-result-object v2

    sget-object v3, Ljavafx/scene/media/MediaException$Type;->MEDIA_UNAVAILABLE:Ljavafx/scene/media/MediaException$Type;

    if-ne v2, v3, :cond_1

    .line 1731
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/media/MediaPlayer;->media:Ljavafx/scene/media/Media;

    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/media/MediaException;->getType()Ljavafx/scene/media/MediaException$Type;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/media/MediaException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljavafx/scene/media/Media;->_setError(Ljavafx/scene/media/MediaException$Type;Ljava/lang/String;)V

    .line 1733
    :cond_1
    return-void
.end method

.method private synthetic lambda$init$11()V
    .locals 2

    .prologue
    .line 516
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaPlayer;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/media/MediaPlayer;->registerListeners()V

    .line 517
    return-void
.end method

.method private synthetic lambda$setStartStopTimes$12()V
    .locals 3

    .prologue
    .line 1040
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaPlayer;
    move-object v1, v0

    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/media/MediaPlayer;->getStartTime()Ljavafx/util/Duration;

    move-result-object v2

    invoke-direct {v1, v2}, Ljavafx/scene/media/MediaPlayer;->setCurrentTime(Ljavafx/util/Duration;)V

    .line 1041
    return-void
.end method

.method private setBufferProgressTime(Ljavafx/util/Duration;)V
    .locals 4

    .prologue
    .line 1516
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaPlayer;
    move-object v1, p1

    .local v1, "value":Ljavafx/util/Duration;
    move-object v2, v0

    invoke-direct {v2}, Ljavafx/scene/media/MediaPlayer;->bufferProgressTimePropertyImpl()Ljavafx/beans/property/ReadOnlyObjectWrapper;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ReadOnlyObjectWrapper;->set(Ljava/lang/Object;)V

    .line 1517
    return-void
.end method

.method private setCurrentCount(I)V
    .locals 4

    .prologue
    .line 1595
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaPlayer;
    move v1, p1

    .local v1, "value":I
    move-object v2, v0

    invoke-direct {v2}, Ljavafx/scene/media/MediaPlayer;->currentCountPropertyImpl()Ljavafx/beans/property/ReadOnlyIntegerWrapper;

    move-result-object v2

    move v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ReadOnlyIntegerWrapper;->set(I)V

    .line 1596
    return-void
.end method

.method private setCurrentRate(D)V
    .locals 7

    .prologue
    .line 833
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaPlayer;
    move-wide v1, p1

    .local v1, "value":D
    move-object v3, v0

    invoke-direct {v3}, Ljavafx/scene/media/MediaPlayer;->currentRatePropertyImpl()Ljavafx/beans/property/ReadOnlyDoubleWrapper;

    move-result-object v3

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/beans/property/ReadOnlyDoubleWrapper;->set(D)V

    .line 834
    return-void
.end method

.method private setCurrentTime(Ljavafx/util/Duration;)V
    .locals 4

    .prologue
    .line 1285
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaPlayer;
    move-object v1, p1

    .local v1, "value":Ljavafx/util/Duration;
    move-object v2, v0

    invoke-direct {v2}, Ljavafx/scene/media/MediaPlayer;->currentTimePropertyImpl()Ljavafx/beans/property/ReadOnlyObjectWrapper;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ReadOnlyObjectWrapper;->set(Ljava/lang/Object;)V

    .line 1286
    return-void
.end method

.method private setCycleDuration(Ljavafx/util/Duration;)V
    .locals 4

    .prologue
    .line 1187
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaPlayer;
    move-object v1, p1

    .local v1, "value":Ljavafx/util/Duration;
    move-object v2, v0

    invoke-direct {v2}, Ljavafx/scene/media/MediaPlayer;->cycleDurationPropertyImpl()Ljavafx/beans/property/ReadOnlyObjectWrapper;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ReadOnlyObjectWrapper;->set(Ljava/lang/Object;)V

    .line 1188
    return-void
.end method

.method private setError(Ljavafx/scene/media/MediaException;)V
    .locals 4

    .prologue
    .line 542
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaPlayer;
    move-object v1, p1

    .local v1, "value":Ljavafx/scene/media/MediaException;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/media/MediaPlayer;->getError()Ljavafx/scene/media/MediaException;

    move-result-object v2

    if-nez v2, :cond_0

    .line 543
    move-object v2, v0

    invoke-direct {v2}, Ljavafx/scene/media/MediaPlayer;->errorPropertyImpl()Ljavafx/beans/property/ReadOnlyObjectWrapper;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ReadOnlyObjectWrapper;->set(Ljava/lang/Object;)V

    .line 545
    :cond_0
    return-void
.end method

.method private setStartStopTimes(Ljavafx/util/Duration;ZLjavafx/util/Duration;Z)V
    .locals 10

    .prologue
    .line 1028
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaPlayer;
    move-object v1, p1

    .local v1, "startValue":Ljavafx/util/Duration;
    move v2, p2

    .local v2, "isStartValueSet":Z
    move-object v3, p3

    .local v3, "stopValue":Ljavafx/util/Duration;
    move v4, p4

    .local v4, "isStopValueSet":Z
    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/media/MediaPlayer;->jfxPlayer:Lcom/sun/media/jfxmedia/MediaPlayer;

    invoke-interface {v6}, Lcom/sun/media/jfxmedia/MediaPlayer;->getDuration()D

    move-result-wide v6

    const-wide/high16 v8, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    cmpl-double v6, v6, v8

    if-nez v6, :cond_0

    .line 1029
    .line 1047
    :goto_0
    return-void

    .line 1033
    :cond_0
    move-object v6, v0

    move-object v7, v1

    move-object v8, v3

    invoke-direct {v6, v7, v8}, Ljavafx/scene/media/MediaPlayer;->calculateStartStopTimes(Ljavafx/util/Duration;Ljavafx/util/Duration;)[D

    move-result-object v6

    move-object v5, v6

    .line 1036
    .local v5, "startStop":[D
    move v6, v2

    if-eqz v6, :cond_2

    .line 1037
    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/media/MediaPlayer;->jfxPlayer:Lcom/sun/media/jfxmedia/MediaPlayer;

    move-object v7, v5

    const/4 v8, 0x0

    aget-wide v7, v7, v8

    invoke-interface {v6, v7, v8}, Lcom/sun/media/jfxmedia/MediaPlayer;->setStartTime(D)V

    .line 1038
    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/scene/media/MediaPlayer;->getStatus()Ljavafx/scene/media/MediaPlayer$Status;

    move-result-object v6

    sget-object v7, Ljavafx/scene/media/MediaPlayer$Status;->READY:Ljavafx/scene/media/MediaPlayer$Status;

    if-eq v6, v7, :cond_1

    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/scene/media/MediaPlayer;->getStatus()Ljavafx/scene/media/MediaPlayer$Status;

    move-result-object v6

    sget-object v7, Ljavafx/scene/media/MediaPlayer$Status;->PAUSED:Ljavafx/scene/media/MediaPlayer$Status;

    if-ne v6, v7, :cond_2

    .line 1039
    :cond_1
    move-object v6, v0

    invoke-static {v6}, Ljavafx/scene/media/MediaPlayer$$Lambda$2;->lambdaFactory$(Ljavafx/scene/media/MediaPlayer;)Ljava/lang/Runnable;

    move-result-object v6

    invoke-static {v6}, Ljavafx/application/Platform;->runLater(Ljava/lang/Runnable;)V

    .line 1044
    :cond_2
    move v6, v4

    if-eqz v6, :cond_3

    .line 1045
    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/media/MediaPlayer;->jfxPlayer:Lcom/sun/media/jfxmedia/MediaPlayer;

    move-object v7, v5

    const/4 v8, 0x1

    aget-wide v7, v7, v8

    invoke-interface {v6, v7, v8}, Lcom/sun/media/jfxmedia/MediaPlayer;->setStopTime(D)V

    .line 1047
    :cond_3
    goto :goto_0
.end method

.method private setStatus(Ljavafx/scene/media/MediaPlayer$Status;)V
    .locals 4

    .prologue
    .line 1438
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaPlayer;
    move-object v1, p1

    .local v1, "value":Ljavafx/scene/media/MediaPlayer$Status;
    move-object v2, v0

    invoke-direct {v2}, Ljavafx/scene/media/MediaPlayer;->statusPropertyImpl()Ljavafx/beans/property/ReadOnlyObjectWrapper;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ReadOnlyObjectWrapper;->set(Ljava/lang/Object;)V

    .line 1439
    return-void
.end method

.method private setTotalDuration(Ljavafx/util/Duration;)V
    .locals 4

    .prologue
    .line 1244
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaPlayer;
    move-object v1, p1

    .local v1, "value":Ljavafx/util/Duration;
    move-object v2, v0

    invoke-direct {v2}, Ljavafx/scene/media/MediaPlayer;->totalDurationPropertyImpl()Ljavafx/beans/property/ReadOnlyObjectWrapper;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ReadOnlyObjectWrapper;->set(Ljava/lang/Object;)V

    .line 1245
    return-void
.end method

.method private statusPropertyImpl()Ljavafx/beans/property/ReadOnlyObjectWrapper;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ReadOnlyObjectWrapper",
            "<",
            "Ljavafx/scene/media/MediaPlayer$Status;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1454
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaPlayer;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/media/MediaPlayer;->status:Ljavafx/beans/property/ReadOnlyObjectWrapper;

    if-nez v1, :cond_0

    .line 1455
    move-object v1, v0

    new-instance v2, Ljavafx/scene/media/MediaPlayer$9;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/media/MediaPlayer$9;-><init>(Ljavafx/scene/media/MediaPlayer;)V

    iput-object v2, v1, Ljavafx/scene/media/MediaPlayer;->status:Ljavafx/beans/property/ReadOnlyObjectWrapper;

    .line 1501
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/media/MediaPlayer;->status:Ljavafx/beans/property/ReadOnlyObjectWrapper;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/media/MediaPlayer;
    return-object v0
.end method

.method private totalDurationPropertyImpl()Ljavafx/beans/property/ReadOnlyObjectWrapper;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ReadOnlyObjectWrapper",
            "<",
            "Ljavafx/util/Duration;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1260
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaPlayer;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/media/MediaPlayer;->totalDuration:Ljavafx/beans/property/ReadOnlyObjectWrapper;

    if-nez v1, :cond_0

    .line 1261
    move-object v1, v0

    new-instance v2, Ljavafx/beans/property/ReadOnlyObjectWrapper;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    const-string v5, "totalDuration"

    invoke-direct {v3, v4, v5}, Ljavafx/beans/property/ReadOnlyObjectWrapper;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v1, Ljavafx/scene/media/MediaPlayer;->totalDuration:Ljavafx/beans/property/ReadOnlyObjectWrapper;

    .line 1263
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/media/MediaPlayer;->totalDuration:Ljavafx/beans/property/ReadOnlyObjectWrapper;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/media/MediaPlayer;
    return-object v0
.end method


# virtual methods
.method addView(Ljavafx/scene/media/MediaView;)V
    .locals 9

    .prologue
    .line 1704
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaPlayer;
    move-object v1, p1

    .local v1, "view":Ljavafx/scene/media/MediaView;
    new-instance v5, Ljava/lang/ref/WeakReference;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v1

    invoke-direct {v6, v7}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    move-object v2, v5

    .line 1705
    .local v2, "vref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Ljavafx/scene/media/MediaView;>;"
    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/media/MediaPlayer;->viewRefs:Ljava/util/Set;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v3, v6

    monitor-enter v5

    .line 1706
    move-object v5, v0

    :try_start_0
    iget-object v5, v5, Ljavafx/scene/media/MediaPlayer;->viewRefs:Ljava/util/Set;

    move-object v6, v2

    invoke-interface {v5, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v5

    .line 1707
    move-object v5, v3

    monitor-exit v5

    .line 1708
    return-void

    .line 1707
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

.method public audioSpectrumIntervalProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 9

    .prologue
    .line 2204
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/media/MediaPlayer;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/media/MediaPlayer;->audioSpectrumInterval:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    .line 2205
    move-object v2, v1

    new-instance v3, Ljavafx/scene/media/MediaPlayer$13;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v1

    const-wide v6, 0x3fb999999999999aL    # 0.1

    invoke-direct {v4, v5, v6, v7}, Ljavafx/scene/media/MediaPlayer$13;-><init>(Ljavafx/scene/media/MediaPlayer;D)V

    iput-object v3, v2, Ljavafx/scene/media/MediaPlayer;->audioSpectrumInterval:Ljavafx/beans/property/DoubleProperty;

    .line 2231
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/media/MediaPlayer;->audioSpectrumInterval:Ljavafx/beans/property/DoubleProperty;

    move-object v1, v2

    .end local v1    # "this":Ljavafx/scene/media/MediaPlayer;
    return-object v1
.end method

.method public audioSpectrumListenerProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/scene/media/AudioSpectrumListener;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2318
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaPlayer;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/media/MediaPlayer;->audioSpectrumListener:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    .line 2319
    move-object v1, v0

    new-instance v2, Ljavafx/scene/media/MediaPlayer$15;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/media/MediaPlayer$15;-><init>(Ljavafx/scene/media/MediaPlayer;)V

    iput-object v2, v1, Ljavafx/scene/media/MediaPlayer;->audioSpectrumListener:Ljavafx/beans/property/ObjectProperty;

    .line 2346
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/media/MediaPlayer;->audioSpectrumListener:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/media/MediaPlayer;
    return-object v0
.end method

.method public audioSpectrumNumBandsProperty()Ljavafx/beans/property/IntegerProperty;
    .locals 7

    .prologue
    .line 2151
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaPlayer;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/media/MediaPlayer;->audioSpectrumNumBands:Ljavafx/beans/property/IntegerProperty;

    if-nez v1, :cond_0

    .line 2152
    move-object v1, v0

    new-instance v2, Ljavafx/scene/media/MediaPlayer$12;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    const/16 v5, 0x80

    invoke-direct {v3, v4, v5}, Ljavafx/scene/media/MediaPlayer$12;-><init>(Ljavafx/scene/media/MediaPlayer;I)V

    iput-object v2, v1, Ljavafx/scene/media/MediaPlayer;->audioSpectrumNumBands:Ljavafx/beans/property/IntegerProperty;

    .line 2178
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/media/MediaPlayer;->audioSpectrumNumBands:Ljavafx/beans/property/IntegerProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/media/MediaPlayer;
    return-object v0
.end method

.method public audioSpectrumThresholdProperty()Ljavafx/beans/property/IntegerProperty;
    .locals 7

    .prologue
    .line 2259
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaPlayer;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/media/MediaPlayer;->audioSpectrumThreshold:Ljavafx/beans/property/IntegerProperty;

    if-nez v1, :cond_0

    .line 2260
    move-object v1, v0

    new-instance v2, Ljavafx/scene/media/MediaPlayer$14;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    const/16 v5, -0x3c

    invoke-direct {v3, v4, v5}, Ljavafx/scene/media/MediaPlayer$14;-><init>(Ljavafx/scene/media/MediaPlayer;I)V

    iput-object v2, v1, Ljavafx/scene/media/MediaPlayer;->audioSpectrumThreshold:Ljavafx/beans/property/IntegerProperty;

    .line 2286
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/media/MediaPlayer;->audioSpectrumThreshold:Ljavafx/beans/property/IntegerProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/media/MediaPlayer;
    return-object v0
.end method

.method public autoPlayProperty()Ljavafx/beans/property/BooleanProperty;
    .locals 6

    .prologue
    .line 677
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaPlayer;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/media/MediaPlayer;->autoPlay:Ljavafx/beans/property/BooleanProperty;

    if-nez v1, :cond_0

    .line 678
    move-object v1, v0

    new-instance v2, Ljavafx/scene/media/MediaPlayer$3;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/media/MediaPlayer$3;-><init>(Ljavafx/scene/media/MediaPlayer;)V

    iput-object v2, v1, Ljavafx/scene/media/MediaPlayer;->autoPlay:Ljavafx/beans/property/BooleanProperty;

    .line 700
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/media/MediaPlayer;->autoPlay:Ljavafx/beans/property/BooleanProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/media/MediaPlayer;
    return-object v0
.end method

.method public balanceProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 6

    .prologue
    .line 937
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaPlayer;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/media/MediaPlayer;->balance:Ljavafx/beans/property/DoubleProperty;

    if-nez v1, :cond_0

    .line 938
    move-object v1, v0

    new-instance v2, Ljavafx/scene/media/MediaPlayer$6;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/media/MediaPlayer$6;-><init>(Ljavafx/scene/media/MediaPlayer;)V

    iput-object v2, v1, Ljavafx/scene/media/MediaPlayer;->balance:Ljavafx/beans/property/DoubleProperty;

    .line 964
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/media/MediaPlayer;->balance:Ljavafx/beans/property/DoubleProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/media/MediaPlayer;
    return-object v0
.end method

.method public bufferProgressTimeProperty()Ljavafx/beans/property/ReadOnlyObjectProperty;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ReadOnlyObjectProperty",
            "<",
            "Ljavafx/util/Duration;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1528
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaPlayer;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/media/MediaPlayer;->bufferProgressTimePropertyImpl()Ljavafx/beans/property/ReadOnlyObjectWrapper;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/beans/property/ReadOnlyObjectWrapper;->getReadOnlyProperty()Ljavafx/beans/property/ReadOnlyObjectProperty;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/media/MediaPlayer;
    return-object v0
.end method

.method createMediaTimer()V
    .locals 8

    .prologue
    .line 1737
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaPlayer;
    sget-object v3, Ljavafx/scene/media/MediaTimerTask;->timerLock:Ljava/lang/Object;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v1, v4

    monitor-enter v3

    .line 1738
    move-object v3, v0

    :try_start_0
    iget-object v3, v3, Ljavafx/scene/media/MediaPlayer;->mediaTimerTask:Ljavafx/scene/media/MediaTimerTask;

    if-nez v3, :cond_0

    .line 1739
    move-object v3, v0

    new-instance v4, Ljavafx/scene/media/MediaTimerTask;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v0

    invoke-direct {v5, v6}, Ljavafx/scene/media/MediaTimerTask;-><init>(Ljavafx/scene/media/MediaPlayer;)V

    iput-object v4, v3, Ljavafx/scene/media/MediaPlayer;->mediaTimerTask:Ljavafx/scene/media/MediaTimerTask;

    .line 1740
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/media/MediaPlayer;->mediaTimerTask:Ljavafx/scene/media/MediaTimerTask;

    invoke-virtual {v3}, Ljavafx/scene/media/MediaTimerTask;->start()V

    .line 1742
    :cond_0
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Ljavafx/scene/media/MediaPlayer;->isUpdateTimeEnabled:Z

    .line 1743
    move-object v3, v1

    monitor-exit v3

    .line 1744
    return-void

    .line 1743
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

.method public currentCountProperty()Ljavafx/beans/property/ReadOnlyIntegerProperty;
    .locals 2

    .prologue
    .line 1607
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaPlayer;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/media/MediaPlayer;->currentCountPropertyImpl()Ljavafx/beans/property/ReadOnlyIntegerWrapper;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/beans/property/ReadOnlyIntegerWrapper;->getReadOnlyProperty()Ljavafx/beans/property/ReadOnlyIntegerProperty;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/media/MediaPlayer;
    return-object v0
.end method

.method public currentRateProperty()Ljavafx/beans/property/ReadOnlyDoubleProperty;
    .locals 2

    .prologue
    .line 845
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaPlayer;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/media/MediaPlayer;->currentRatePropertyImpl()Ljavafx/beans/property/ReadOnlyDoubleWrapper;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/beans/property/ReadOnlyDoubleWrapper;->getReadOnlyProperty()Ljavafx/beans/property/ReadOnlyDoubleProperty;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/media/MediaPlayer;
    return-object v0
.end method

.method public currentTimeProperty()Ljavafx/beans/property/ReadOnlyObjectProperty;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ReadOnlyObjectProperty",
            "<",
            "Ljavafx/util/Duration;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1341
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaPlayer;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/media/MediaPlayer;->currentTimePropertyImpl()Ljavafx/beans/property/ReadOnlyObjectWrapper;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/beans/property/ReadOnlyObjectWrapper;->getReadOnlyProperty()Ljavafx/beans/property/ReadOnlyObjectProperty;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/media/MediaPlayer;
    return-object v0
.end method

.method public cycleCountProperty()Ljavafx/beans/property/IntegerProperty;
    .locals 7

    .prologue
    .line 1568
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaPlayer;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/media/MediaPlayer;->cycleCount:Ljavafx/beans/property/IntegerProperty;

    if-nez v1, :cond_0

    .line 1569
    move-object v1, v0

    new-instance v2, Ljavafx/scene/media/MediaPlayer$10;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Ljavafx/scene/media/MediaPlayer$10;-><init>(Ljavafx/scene/media/MediaPlayer;I)V

    iput-object v2, v1, Ljavafx/scene/media/MediaPlayer;->cycleCount:Ljavafx/beans/property/IntegerProperty;

    .line 1582
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/media/MediaPlayer;->cycleCount:Ljavafx/beans/property/IntegerProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/media/MediaPlayer;
    return-object v0
.end method

.method public cycleDurationProperty()Ljavafx/beans/property/ReadOnlyObjectProperty;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ReadOnlyObjectProperty",
            "<",
            "Ljavafx/util/Duration;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1199
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaPlayer;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/media/MediaPlayer;->cycleDurationPropertyImpl()Ljavafx/beans/property/ReadOnlyObjectWrapper;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/beans/property/ReadOnlyObjectWrapper;->getReadOnlyProperty()Ljavafx/beans/property/ReadOnlyObjectProperty;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/media/MediaPlayer;
    return-object v0
.end method

.method destroyMediaTimer()V
    .locals 6

    .prologue
    .line 1747
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaPlayer;
    sget-object v3, Ljavafx/scene/media/MediaTimerTask;->timerLock:Ljava/lang/Object;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    move-object v1, v4

    monitor-enter v3

    .line 1748
    move-object v3, v0

    :try_start_0
    iget-object v3, v3, Ljavafx/scene/media/MediaPlayer;->mediaTimerTask:Ljavafx/scene/media/MediaTimerTask;

    if-eqz v3, :cond_0

    .line 1749
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Ljavafx/scene/media/MediaPlayer;->isUpdateTimeEnabled:Z

    .line 1750
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/media/MediaPlayer;->mediaTimerTask:Ljavafx/scene/media/MediaTimerTask;

    invoke-virtual {v3}, Ljavafx/scene/media/MediaTimerTask;->stop()V

    .line 1751
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Ljavafx/scene/media/MediaPlayer;->mediaTimerTask:Ljavafx/scene/media/MediaTimerTask;

    .line 1753
    :cond_0
    move-object v3, v1

    monitor-exit v3

    .line 1754
    return-void

    .line 1753
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

.method public declared-synchronized dispose()V
    .locals 9

    .prologue
    .line 2356
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaPlayer;
    move-object v7, p0

    monitor-enter v7

    move-object v5, v0

    :try_start_0
    iget-object v5, v5, Ljavafx/scene/media/MediaPlayer;->disposeLock:Ljava/lang/Object;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v1, v6

    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 2357
    move-object v5, v0

    :try_start_1
    sget-object v6, Ljavafx/scene/media/MediaPlayer$Status;->DISPOSED:Ljavafx/scene/media/MediaPlayer$Status;

    invoke-direct {v5, v6}, Ljavafx/scene/media/MediaPlayer;->setStatus(Ljavafx/scene/media/MediaPlayer$Status;)V

    .line 2359
    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/media/MediaPlayer;->destroyMediaTimer()V

    .line 2361
    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/media/MediaPlayer;->audioEqualizer:Ljavafx/scene/media/AudioEqualizer;

    if-eqz v5, :cond_0

    .line 2362
    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/media/MediaPlayer;->audioEqualizer:Ljavafx/scene/media/AudioEqualizer;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljavafx/scene/media/AudioEqualizer;->setAudioEqualizer(Lcom/sun/media/jfxmedia/effects/AudioEqualizer;)V

    .line 2363
    move-object v5, v0

    const/4 v6, 0x0

    iput-object v6, v5, Ljavafx/scene/media/MediaPlayer;->audioEqualizer:Ljavafx/scene/media/AudioEqualizer;

    .line 2366
    :cond_0
    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/media/MediaPlayer;->jfxPlayer:Lcom/sun/media/jfxmedia/MediaPlayer;

    if-eqz v5, :cond_2

    .line 2367
    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/media/MediaPlayer;->jfxPlayer:Lcom/sun/media/jfxmedia/MediaPlayer;

    invoke-interface {v5}, Lcom/sun/media/jfxmedia/MediaPlayer;->dispose()V

    .line 2368
    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/media/MediaPlayer;->renderLock:Ljava/lang/Object;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v2, v6

    monitor-enter v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2369
    move-object v5, v0

    :try_start_2
    iget-object v5, v5, Ljavafx/scene/media/MediaPlayer;->rendererListener:Ljavafx/scene/media/MediaPlayer$RendererListener;

    if-eqz v5, :cond_1

    .line 2370
    invoke-static {}, Lcom/sun/javafx/tk/Toolkit;->getToolkit()Lcom/sun/javafx/tk/Toolkit;

    move-result-object v5

    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/media/MediaPlayer;->rendererListener:Ljavafx/scene/media/MediaPlayer$RendererListener;

    invoke-virtual {v5, v6}, Lcom/sun/javafx/tk/Toolkit;->removeStageTkPulseListener(Lcom/sun/javafx/tk/TKPulseListener;)V

    .line 2371
    move-object v5, v0

    const/4 v6, 0x0

    iput-object v6, v5, Ljavafx/scene/media/MediaPlayer;->rendererListener:Ljavafx/scene/media/MediaPlayer$RendererListener;

    .line 2373
    :cond_1
    move-object v5, v2

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2374
    move-object v5, v0

    const/4 v6, 0x0

    :try_start_3
    iput-object v6, v5, Ljavafx/scene/media/MediaPlayer;->jfxPlayer:Lcom/sun/media/jfxmedia/MediaPlayer;

    .line 2376
    :cond_2
    move-object v5, v1

    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2377
    monitor-exit v7

    return-void

    .line 2373
    :catchall_0
    move-exception v5

    move-object v3, v5

    move-object v5, v2

    :try_start_4
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object v5, v3

    :try_start_5
    throw v5

    .line 2376
    :catchall_1
    move-exception v5

    move-object v4, v5

    move-object v5, v1

    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-object v5, v4

    :try_start_6
    throw v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 2356
    :catchall_2
    move-exception v0

    monitor-exit v7

    .end local v0    # "this":Ljavafx/scene/media/MediaPlayer;
    throw v0
.end method

.method public errorProperty()Ljavafx/beans/property/ReadOnlyObjectProperty;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ReadOnlyObjectProperty",
            "<",
            "Ljavafx/scene/media/MediaException;",
            ">;"
        }
    .end annotation

    .prologue
    .line 557
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaPlayer;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/media/MediaPlayer;->errorPropertyImpl()Ljavafx/beans/property/ReadOnlyObjectWrapper;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/beans/property/ReadOnlyObjectWrapper;->getReadOnlyProperty()Ljavafx/beans/property/ReadOnlyObjectProperty;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/media/MediaPlayer;
    return-object v0
.end method

.method public final getAudioEqualizer()Ljavafx/scene/media/AudioEqualizer;
    .locals 7

    .prologue
    .line 358
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaPlayer;
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/media/MediaPlayer;->disposeLock:Ljava/lang/Object;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v1, v4

    monitor-enter v3

    .line 359
    move-object v3, v0

    :try_start_0
    invoke-virtual {v3}, Ljavafx/scene/media/MediaPlayer;->getStatus()Ljavafx/scene/media/MediaPlayer$Status;

    move-result-object v3

    sget-object v4, Ljavafx/scene/media/MediaPlayer$Status;->DISPOSED:Ljavafx/scene/media/MediaPlayer$Status;

    if-ne v3, v4, :cond_0

    .line 360
    const/4 v3, 0x0

    move-object v4, v1

    monitor-exit v4

    move-object v0, v3

    .line 370
    .end local v0    # "this":Ljavafx/scene/media/MediaPlayer;
    :goto_0
    return-object v0

    .line 363
    .restart local v0    # "this":Ljavafx/scene/media/MediaPlayer;
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/media/MediaPlayer;->audioEqualizer:Ljavafx/scene/media/AudioEqualizer;

    if-nez v3, :cond_2

    .line 364
    move-object v3, v0

    new-instance v4, Ljavafx/scene/media/AudioEqualizer;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljavafx/scene/media/AudioEqualizer;-><init>()V

    iput-object v4, v3, Ljavafx/scene/media/MediaPlayer;->audioEqualizer:Ljavafx/scene/media/AudioEqualizer;

    .line 365
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/media/MediaPlayer;->jfxPlayer:Lcom/sun/media/jfxmedia/MediaPlayer;

    if-eqz v3, :cond_1

    .line 366
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/media/MediaPlayer;->audioEqualizer:Ljavafx/scene/media/AudioEqualizer;

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/media/MediaPlayer;->jfxPlayer:Lcom/sun/media/jfxmedia/MediaPlayer;

    invoke-interface {v4}, Lcom/sun/media/jfxmedia/MediaPlayer;->getEqualizer()Lcom/sun/media/jfxmedia/effects/AudioEqualizer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljavafx/scene/media/AudioEqualizer;->setAudioEqualizer(Lcom/sun/media/jfxmedia/effects/AudioEqualizer;)V

    .line 368
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/media/MediaPlayer;->audioEqualizer:Ljavafx/scene/media/AudioEqualizer;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljavafx/scene/media/AudioEqualizer;->setEnabled(Z)V

    .line 370
    :cond_2
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/media/MediaPlayer;->audioEqualizer:Ljavafx/scene/media/AudioEqualizer;

    move-object v4, v1

    monitor-exit v4

    move-object v0, v3

    goto :goto_0

    .line 371
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

.method public final getAudioSpectrumInterval()D
    .locals 3

    .prologue
    .line 2200
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaPlayer;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/media/MediaPlayer;->audioSpectrumIntervalProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v1

    move-wide v0, v1

    .end local v0    # "this":Ljavafx/scene/media/MediaPlayer;
    return-wide v0
.end method

.method public final getAudioSpectrumListener()Ljavafx/scene/media/AudioSpectrumListener;
    .locals 2

    .prologue
    .line 2314
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaPlayer;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/media/MediaPlayer;->audioSpectrumListenerProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/scene/media/AudioSpectrumListener;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/media/MediaPlayer;
    return-object v0
.end method

.method public final getAudioSpectrumNumBands()I
    .locals 2

    .prologue
    .line 2147
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaPlayer;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/media/MediaPlayer;->audioSpectrumNumBandsProperty()Ljavafx/beans/property/IntegerProperty;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/beans/property/IntegerProperty;->getValue()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Ljavafx/scene/media/MediaPlayer;
    return v0
.end method

.method public final getAudioSpectrumThreshold()I
    .locals 2

    .prologue
    .line 2255
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaPlayer;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/media/MediaPlayer;->audioSpectrumThresholdProperty()Ljavafx/beans/property/IntegerProperty;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/beans/property/IntegerProperty;->get()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Ljavafx/scene/media/MediaPlayer;
    return v0
.end method

.method public final getBalance()D
    .locals 4

    .prologue
    .line 933
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/media/MediaPlayer;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/media/MediaPlayer;->balance:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    const-wide/16 v2, 0x0

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Ljavafx/scene/media/MediaPlayer;
    return-wide v1

    .restart local v1    # "this":Ljavafx/scene/media/MediaPlayer;
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/media/MediaPlayer;->balance:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v2}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v2

    goto :goto_0
.end method

.method public final getBufferProgressTime()Ljavafx/util/Duration;
    .locals 2

    .prologue
    .line 1524
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaPlayer;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/media/MediaPlayer;->bufferProgressTime:Ljavafx/beans/property/ReadOnlyObjectWrapper;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/media/MediaPlayer;
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/media/MediaPlayer;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/media/MediaPlayer;->bufferProgressTime:Ljavafx/beans/property/ReadOnlyObjectWrapper;

    invoke-virtual {v1}, Ljavafx/beans/property/ReadOnlyObjectWrapper;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/util/Duration;

    goto :goto_0
.end method

.method public final getCurrentCount()I
    .locals 2

    .prologue
    .line 1603
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaPlayer;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/media/MediaPlayer;->currentCount:Ljavafx/beans/property/ReadOnlyIntegerWrapper;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move v0, v1

    .end local v0    # "this":Ljavafx/scene/media/MediaPlayer;
    return v0

    .restart local v0    # "this":Ljavafx/scene/media/MediaPlayer;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/media/MediaPlayer;->currentCount:Ljavafx/beans/property/ReadOnlyIntegerWrapper;

    invoke-virtual {v1}, Ljavafx/beans/property/ReadOnlyIntegerWrapper;->get()I

    move-result v1

    goto :goto_0
.end method

.method public final getCurrentRate()D
    .locals 4

    .prologue
    .line 841
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/media/MediaPlayer;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/media/MediaPlayer;->currentRate:Ljavafx/beans/property/ReadOnlyDoubleWrapper;

    if-nez v2, :cond_0

    const-wide/16 v2, 0x0

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Ljavafx/scene/media/MediaPlayer;
    return-wide v1

    .restart local v1    # "this":Ljavafx/scene/media/MediaPlayer;
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/media/MediaPlayer;->currentRate:Ljavafx/beans/property/ReadOnlyDoubleWrapper;

    invoke-virtual {v2}, Ljavafx/beans/property/ReadOnlyDoubleWrapper;->get()D

    move-result-wide v2

    goto :goto_0
.end method

.method public final getCurrentTime()Ljavafx/util/Duration;
    .locals 11

    .prologue
    .line 1293
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaPlayer;
    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/media/MediaPlayer;->disposeLock:Ljava/lang/Object;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v1, v7

    monitor-enter v6

    .line 1294
    move-object v6, v0

    :try_start_0
    invoke-virtual {v6}, Ljavafx/scene/media/MediaPlayer;->getStatus()Ljavafx/scene/media/MediaPlayer$Status;

    move-result-object v6

    sget-object v7, Ljavafx/scene/media/MediaPlayer$Status;->DISPOSED:Ljavafx/scene/media/MediaPlayer$Status;

    if-ne v6, v7, :cond_0

    .line 1295
    sget-object v6, Ljavafx/util/Duration;->ZERO:Ljavafx/util/Duration;

    move-object v7, v1

    monitor-exit v7

    move-object v0, v6

    .line 1336
    .end local v0    # "this":Ljavafx/scene/media/MediaPlayer;
    :goto_0
    return-object v0

    .line 1298
    .restart local v0    # "this":Ljavafx/scene/media/MediaPlayer;
    :cond_0
    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/scene/media/MediaPlayer;->getStatus()Ljavafx/scene/media/MediaPlayer$Status;

    move-result-object v6

    sget-object v7, Ljavafx/scene/media/MediaPlayer$Status;->STOPPED:Ljavafx/scene/media/MediaPlayer$Status;

    if-ne v6, v7, :cond_1

    .line 1299
    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/scene/media/MediaPlayer;->getStartTime()Ljavafx/util/Duration;

    move-result-object v6

    invoke-virtual {v6}, Ljavafx/util/Duration;->toMillis()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljavafx/util/Duration;->millis(D)Ljavafx/util/Duration;

    move-result-object v6

    move-object v7, v1

    monitor-exit v7

    move-object v0, v6

    goto :goto_0

    .line 1302
    :cond_1
    move-object v6, v0

    iget-boolean v6, v6, Ljavafx/scene/media/MediaPlayer;->isEOS:Z

    if-eqz v6, :cond_3

    .line 1303
    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/media/MediaPlayer;->media:Ljavafx/scene/media/Media;

    invoke-virtual {v6}, Ljavafx/scene/media/Media;->getDuration()Ljavafx/util/Duration;

    move-result-object v6

    move-object v2, v6

    .line 1304
    .local v2, "duration":Ljavafx/util/Duration;
    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/scene/media/MediaPlayer;->getStopTime()Ljavafx/util/Duration;

    move-result-object v6

    move-object v3, v6

    .line 1305
    .local v3, "stopTime":Ljavafx/util/Duration;
    move-object v6, v3

    sget-object v7, Ljavafx/util/Duration;->UNKNOWN:Ljavafx/util/Duration;

    if-eq v6, v7, :cond_3

    move-object v6, v2

    sget-object v7, Ljavafx/util/Duration;->UNKNOWN:Ljavafx/util/Duration;

    if-eq v6, v7, :cond_3

    .line 1306
    move-object v6, v3

    move-object v7, v2

    invoke-virtual {v6, v7}, Ljavafx/util/Duration;->greaterThan(Ljavafx/util/Duration;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1307
    move-object v6, v2

    invoke-virtual {v6}, Ljavafx/util/Duration;->toMillis()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljavafx/util/Duration;->millis(D)Ljavafx/util/Duration;

    move-result-object v6

    move-object v7, v1

    monitor-exit v7

    move-object v0, v6

    goto :goto_0

    .line 1309
    :cond_2
    move-object v6, v3

    invoke-virtual {v6}, Ljavafx/util/Duration;->toMillis()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljavafx/util/Duration;->millis(D)Ljavafx/util/Duration;

    move-result-object v6

    move-object v7, v1

    monitor-exit v7

    move-object v0, v6

    goto :goto_0

    .line 1319
    .end local v2    # "duration":Ljavafx/util/Duration;
    .end local v3    # "stopTime":Ljavafx/util/Duration;
    :cond_3
    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/scene/media/MediaPlayer;->currentTimeProperty()Ljavafx/beans/property/ReadOnlyObjectProperty;

    move-result-object v6

    invoke-virtual {v6}, Ljavafx/beans/property/ReadOnlyObjectProperty;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljavafx/util/Duration;

    move-object v2, v6

    .line 1324
    .local v2, "theCurrentTime":Ljavafx/util/Duration;
    move-object v6, v0

    iget-boolean v6, v6, Ljavafx/scene/media/MediaPlayer;->playerReady:Z

    if-eqz v6, :cond_4

    .line 1325
    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/media/MediaPlayer;->jfxPlayer:Lcom/sun/media/jfxmedia/MediaPlayer;

    invoke-interface {v6}, Lcom/sun/media/jfxmedia/MediaPlayer;->getPresentationTime()D

    move-result-wide v6

    move-wide v3, v6

    .line 1326
    .local v3, "timeSeconds":D
    move-wide v6, v3

    const-wide/16 v8, 0x0

    cmpl-double v6, v6, v8

    if-ltz v6, :cond_4

    .line 1327
    move-wide v6, v3

    invoke-static {v6, v7}, Ljavafx/util/Duration;->seconds(D)Ljavafx/util/Duration;

    move-result-object v6

    move-object v2, v6

    .line 1336
    .end local v3    # "timeSeconds":D
    :cond_4
    move-object v6, v2

    move-object v7, v1

    monitor-exit v7

    move-object v0, v6

    goto/16 :goto_0

    .line 1337
    .end local v2    # "theCurrentTime":Ljavafx/util/Duration;
    :catchall_0
    move-exception v6

    move-object v5, v6

    move-object v6, v1

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v6, v5

    throw v6
.end method

.method public final getCycleCount()I
    .locals 2

    .prologue
    .line 1564
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaPlayer;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/media/MediaPlayer;->cycleCount:Ljavafx/beans/property/IntegerProperty;

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Ljavafx/scene/media/MediaPlayer;
    return v0

    .restart local v0    # "this":Ljavafx/scene/media/MediaPlayer;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/media/MediaPlayer;->cycleCount:Ljavafx/beans/property/IntegerProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/IntegerProperty;->get()I

    move-result v1

    goto :goto_0
.end method

.method public final getCycleDuration()Ljavafx/util/Duration;
    .locals 2

    .prologue
    .line 1195
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaPlayer;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/media/MediaPlayer;->cycleDuration:Ljavafx/beans/property/ReadOnlyObjectWrapper;

    if-nez v1, :cond_0

    sget-object v1, Ljavafx/util/Duration;->UNKNOWN:Ljavafx/util/Duration;

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/media/MediaPlayer;
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/media/MediaPlayer;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/media/MediaPlayer;->cycleDuration:Ljavafx/beans/property/ReadOnlyObjectWrapper;

    invoke-virtual {v1}, Ljavafx/beans/property/ReadOnlyObjectWrapper;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/util/Duration;

    goto :goto_0
.end method

.method public final getError()Ljavafx/scene/media/MediaException;
    .locals 2

    .prologue
    .line 553
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaPlayer;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/media/MediaPlayer;->error:Ljavafx/beans/property/ReadOnlyObjectWrapper;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/media/MediaPlayer;
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/media/MediaPlayer;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/media/MediaPlayer;->error:Ljavafx/beans/property/ReadOnlyObjectWrapper;

    invoke-virtual {v1}, Ljavafx/beans/property/ReadOnlyObjectWrapper;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/scene/media/MediaException;

    goto :goto_0
.end method

.method public final getMedia()Ljavafx/scene/media/Media;
    .locals 2

    .prologue
    .line 648
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaPlayer;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/media/MediaPlayer;->media:Ljavafx/scene/media/Media;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/media/MediaPlayer;
    return-object v0
.end method

.method public final getOnEndOfMedia()Ljava/lang/Runnable;
    .locals 2

    .prologue
    .line 1906
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaPlayer;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/media/MediaPlayer;->onEndOfMedia:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/media/MediaPlayer;
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/media/MediaPlayer;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/media/MediaPlayer;->onEndOfMedia:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    goto :goto_0
.end method

.method public final getOnError()Ljava/lang/Runnable;
    .locals 2

    .prologue
    .line 603
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaPlayer;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/media/MediaPlayer;->onError:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/media/MediaPlayer;
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/media/MediaPlayer;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/media/MediaPlayer;->onError:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    goto :goto_0
.end method

.method public final getOnHalted()Ljava/lang/Runnable;
    .locals 2

    .prologue
    .line 2049
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaPlayer;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/media/MediaPlayer;->onHalted:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/media/MediaPlayer;
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/media/MediaPlayer;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/media/MediaPlayer;->onHalted:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    goto :goto_0
.end method

.method public final getOnMarker()Ljavafx/event/EventHandler;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/scene/media/MediaMarkerEvent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1693
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaPlayer;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/media/MediaPlayer;->onMarker:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/media/MediaPlayer;
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/media/MediaPlayer;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/media/MediaPlayer;->onMarker:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/event/EventHandler;

    goto :goto_0
.end method

.method public final getOnPaused()Ljava/lang/Runnable;
    .locals 2

    .prologue
    .line 1992
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaPlayer;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/media/MediaPlayer;->onPaused:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/media/MediaPlayer;
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/media/MediaPlayer;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/media/MediaPlayer;->onPaused:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    goto :goto_0
.end method

.method public final getOnPlaying()Ljava/lang/Runnable;
    .locals 2

    .prologue
    .line 1964
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaPlayer;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/media/MediaPlayer;->onPlaying:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/media/MediaPlayer;
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/media/MediaPlayer;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/media/MediaPlayer;->onPlaying:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    goto :goto_0
.end method

.method public final getOnReady()Ljava/lang/Runnable;
    .locals 2

    .prologue
    .line 1935
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaPlayer;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/media/MediaPlayer;->onReady:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/media/MediaPlayer;
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/media/MediaPlayer;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/media/MediaPlayer;->onReady:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    goto :goto_0
.end method

.method public final getOnRepeat()Ljava/lang/Runnable;
    .locals 2

    .prologue
    .line 2080
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaPlayer;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/media/MediaPlayer;->onRepeat:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/media/MediaPlayer;
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/media/MediaPlayer;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/media/MediaPlayer;->onRepeat:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    goto :goto_0
.end method

.method public final getOnStalled()Ljava/lang/Runnable;
    .locals 2

    .prologue
    .line 2109
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaPlayer;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/media/MediaPlayer;->onStalled:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/media/MediaPlayer;
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/media/MediaPlayer;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/media/MediaPlayer;->onStalled:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    goto :goto_0
.end method

.method public final getOnStopped()Ljava/lang/Runnable;
    .locals 2

    .prologue
    .line 2021
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaPlayer;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/media/MediaPlayer;->onStopped:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/media/MediaPlayer;
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/media/MediaPlayer;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/media/MediaPlayer;->onStopped:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    goto :goto_0
.end method

.method public final getRate()D
    .locals 4

    .prologue
    .line 788
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/media/MediaPlayer;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/media/MediaPlayer;->rate:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Ljavafx/scene/media/MediaPlayer;
    return-wide v1

    .restart local v1    # "this":Ljavafx/scene/media/MediaPlayer;
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/media/MediaPlayer;->rate:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v2}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v2

    goto :goto_0
.end method

.method public final getStartTime()Ljavafx/util/Duration;
    .locals 2

    .prologue
    .line 1081
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaPlayer;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/media/MediaPlayer;->startTime:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    sget-object v1, Ljavafx/util/Duration;->ZERO:Ljavafx/util/Duration;

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/media/MediaPlayer;
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/media/MediaPlayer;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/media/MediaPlayer;->startTime:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/util/Duration;

    goto :goto_0
.end method

.method public final getStatus()Ljavafx/scene/media/MediaPlayer$Status;
    .locals 2

    .prologue
    .line 1446
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaPlayer;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/media/MediaPlayer;->status:Ljavafx/beans/property/ReadOnlyObjectWrapper;

    if-nez v1, :cond_0

    sget-object v1, Ljavafx/scene/media/MediaPlayer$Status;->UNKNOWN:Ljavafx/scene/media/MediaPlayer$Status;

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/media/MediaPlayer;
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/media/MediaPlayer;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/media/MediaPlayer;->status:Ljavafx/beans/property/ReadOnlyObjectWrapper;

    invoke-virtual {v1}, Ljavafx/beans/property/ReadOnlyObjectWrapper;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/scene/media/MediaPlayer$Status;

    goto :goto_0
.end method

.method public final getStopTime()Ljavafx/util/Duration;
    .locals 2

    .prologue
    .line 1142
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaPlayer;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/media/MediaPlayer;->stopTime:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/media/MediaPlayer;->media:Ljavafx/scene/media/Media;

    invoke-virtual {v1}, Ljavafx/scene/media/Media;->getDuration()Ljavafx/util/Duration;

    move-result-object v1

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/media/MediaPlayer;
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/media/MediaPlayer;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/media/MediaPlayer;->stopTime:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/util/Duration;

    goto :goto_0
.end method

.method public final getTotalDuration()Ljavafx/util/Duration;
    .locals 2

    .prologue
    .line 1252
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaPlayer;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/media/MediaPlayer;->totalDuration:Ljavafx/beans/property/ReadOnlyObjectWrapper;

    if-nez v1, :cond_0

    sget-object v1, Ljavafx/util/Duration;->UNKNOWN:Ljavafx/util/Duration;

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/media/MediaPlayer;
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/media/MediaPlayer;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/media/MediaPlayer;->totalDuration:Ljavafx/beans/property/ReadOnlyObjectWrapper;

    invoke-virtual {v1}, Ljavafx/beans/property/ReadOnlyObjectWrapper;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/util/Duration;

    goto :goto_0
.end method

.method public final getVolume()D
    .locals 4

    .prologue
    .line 877
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/media/MediaPlayer;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/media/MediaPlayer;->volume:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Ljavafx/scene/media/MediaPlayer;
    return-wide v1

    .restart local v1    # "this":Ljavafx/scene/media/MediaPlayer;
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/media/MediaPlayer;->volume:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v2}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v2

    goto :goto_0
.end method

.method handleError(Ljavafx/scene/media/MediaException;)V
    .locals 4

    .prologue
    .line 1723
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaPlayer;
    move-object v1, p1

    .local v1, "error":Ljavafx/scene/media/MediaException;
    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Ljavafx/scene/media/MediaPlayer$$Lambda$3;->lambdaFactory$(Ljavafx/scene/media/MediaPlayer;Ljavafx/scene/media/MediaException;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-static {v2}, Ljavafx/application/Platform;->runLater(Ljava/lang/Runnable;)V

    .line 1734
    return-void
.end method

.method handleRequestedChanges()V
    .locals 12

    .prologue
    .line 1781
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/media/MediaPlayer;
    move-object v3, v1

    iget-boolean v3, v3, Ljavafx/scene/media/MediaPlayer;->rateChangeRequested:Z

    if-eqz v3, :cond_1

    .line 1782
    move-object v3, v1

    iget-object v3, v3, Ljavafx/scene/media/MediaPlayer;->jfxPlayer:Lcom/sun/media/jfxmedia/MediaPlayer;

    invoke-interface {v3}, Lcom/sun/media/jfxmedia/MediaPlayer;->getDuration()D

    move-result-wide v3

    const-wide/high16 v5, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    cmpl-double v3, v3, v5

    if-eqz v3, :cond_0

    .line 1783
    move-object v3, v1

    iget-object v3, v3, Ljavafx/scene/media/MediaPlayer;->jfxPlayer:Lcom/sun/media/jfxmedia/MediaPlayer;

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/media/MediaPlayer;->getRate()D

    move-result-wide v4

    const-wide/16 v6, 0x0

    const-wide/high16 v8, 0x4020000000000000L    # 8.0

    invoke-static/range {v4 .. v9}, Ljavafx/scene/media/MediaPlayer;->clamp(DDD)D

    move-result-wide v4

    double-to-float v4, v4

    invoke-interface {v3, v4}, Lcom/sun/media/jfxmedia/MediaPlayer;->setRate(F)V

    .line 1785
    :cond_0
    move-object v3, v1

    const/4 v4, 0x0

    iput-boolean v4, v3, Ljavafx/scene/media/MediaPlayer;->rateChangeRequested:Z

    .line 1788
    :cond_1
    move-object v3, v1

    iget-boolean v3, v3, Ljavafx/scene/media/MediaPlayer;->volumeChangeRequested:Z

    if-eqz v3, :cond_2

    .line 1789
    move-object v3, v1

    iget-object v3, v3, Ljavafx/scene/media/MediaPlayer;->jfxPlayer:Lcom/sun/media/jfxmedia/MediaPlayer;

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/media/MediaPlayer;->getVolume()D

    move-result-wide v4

    const-wide/16 v6, 0x0

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    invoke-static/range {v4 .. v9}, Ljavafx/scene/media/MediaPlayer;->clamp(DDD)D

    move-result-wide v4

    double-to-float v4, v4

    invoke-interface {v3, v4}, Lcom/sun/media/jfxmedia/MediaPlayer;->setVolume(F)V

    .line 1790
    move-object v3, v1

    const/4 v4, 0x0

    iput-boolean v4, v3, Ljavafx/scene/media/MediaPlayer;->volumeChangeRequested:Z

    .line 1793
    :cond_2
    move-object v3, v1

    iget-boolean v3, v3, Ljavafx/scene/media/MediaPlayer;->balanceChangeRequested:Z

    if-eqz v3, :cond_3

    .line 1794
    move-object v3, v1

    iget-object v3, v3, Ljavafx/scene/media/MediaPlayer;->jfxPlayer:Lcom/sun/media/jfxmedia/MediaPlayer;

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/media/MediaPlayer;->getBalance()D

    move-result-wide v4

    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    invoke-static/range {v4 .. v9}, Ljavafx/scene/media/MediaPlayer;->clamp(DDD)D

    move-result-wide v4

    double-to-float v4, v4

    invoke-interface {v3, v4}, Lcom/sun/media/jfxmedia/MediaPlayer;->setBalance(F)V

    .line 1795
    move-object v3, v1

    const/4 v4, 0x0

    iput-boolean v4, v3, Ljavafx/scene/media/MediaPlayer;->balanceChangeRequested:Z

    .line 1798
    :cond_3
    move-object v3, v1

    iget-boolean v3, v3, Ljavafx/scene/media/MediaPlayer;->startTimeChangeRequested:Z

    if-nez v3, :cond_4

    move-object v3, v1

    iget-boolean v3, v3, Ljavafx/scene/media/MediaPlayer;->stopTimeChangeRequested:Z

    if-eqz v3, :cond_5

    .line 1799
    :cond_4
    move-object v3, v1

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/media/MediaPlayer;->getStartTime()Ljavafx/util/Duration;

    move-result-object v4

    move-object v5, v1

    iget-boolean v5, v5, Ljavafx/scene/media/MediaPlayer;->startTimeChangeRequested:Z

    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/media/MediaPlayer;->getStopTime()Ljavafx/util/Duration;

    move-result-object v6

    move-object v7, v1

    iget-boolean v7, v7, Ljavafx/scene/media/MediaPlayer;->stopTimeChangeRequested:Z

    invoke-direct {v3, v4, v5, v6, v7}, Ljavafx/scene/media/MediaPlayer;->setStartStopTimes(Ljavafx/util/Duration;ZLjavafx/util/Duration;Z)V

    .line 1800
    move-object v3, v1

    move-object v4, v1

    const/4 v5, 0x0

    move-object v10, v4

    move v11, v5

    move v4, v11

    move-object v5, v10

    move v6, v11

    iput-boolean v6, v5, Ljavafx/scene/media/MediaPlayer;->stopTimeChangeRequested:Z

    iput-boolean v4, v3, Ljavafx/scene/media/MediaPlayer;->startTimeChangeRequested:Z

    .line 1803
    :cond_5
    move-object v3, v1

    iget-boolean v3, v3, Ljavafx/scene/media/MediaPlayer;->muteChangeRequested:Z

    if-eqz v3, :cond_6

    .line 1804
    move-object v3, v1

    iget-object v3, v3, Ljavafx/scene/media/MediaPlayer;->jfxPlayer:Lcom/sun/media/jfxmedia/MediaPlayer;

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/media/MediaPlayer;->isMute()Z

    move-result v4

    invoke-interface {v3, v4}, Lcom/sun/media/jfxmedia/MediaPlayer;->setMute(Z)V

    .line 1805
    move-object v3, v1

    const/4 v4, 0x0

    iput-boolean v4, v3, Ljavafx/scene/media/MediaPlayer;->muteChangeRequested:Z

    .line 1808
    :cond_6
    move-object v3, v1

    iget-boolean v3, v3, Ljavafx/scene/media/MediaPlayer;->audioSpectrumNumBandsChangeRequested:Z

    if-eqz v3, :cond_7

    .line 1809
    move-object v3, v1

    iget-object v3, v3, Ljavafx/scene/media/MediaPlayer;->jfxPlayer:Lcom/sun/media/jfxmedia/MediaPlayer;

    invoke-interface {v3}, Lcom/sun/media/jfxmedia/MediaPlayer;->getAudioSpectrum()Lcom/sun/media/jfxmedia/effects/AudioSpectrum;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/media/MediaPlayer;->getAudioSpectrumNumBands()I

    move-result v4

    const/4 v5, 0x2

    const v6, 0x7fffffff

    invoke-static {v4, v5, v6}, Ljavafx/scene/media/MediaPlayer;->clamp(III)I

    move-result v4

    invoke-interface {v3, v4}, Lcom/sun/media/jfxmedia/effects/AudioSpectrum;->setBandCount(I)V

    .line 1810
    move-object v3, v1

    const/4 v4, 0x0

    iput-boolean v4, v3, Ljavafx/scene/media/MediaPlayer;->audioSpectrumNumBandsChangeRequested:Z

    .line 1813
    :cond_7
    move-object v3, v1

    iget-boolean v3, v3, Ljavafx/scene/media/MediaPlayer;->audioSpectrumIntervalChangeRequested:Z

    if-eqz v3, :cond_8

    .line 1814
    move-object v3, v1

    iget-object v3, v3, Ljavafx/scene/media/MediaPlayer;->jfxPlayer:Lcom/sun/media/jfxmedia/MediaPlayer;

    invoke-interface {v3}, Lcom/sun/media/jfxmedia/MediaPlayer;->getAudioSpectrum()Lcom/sun/media/jfxmedia/effects/AudioSpectrum;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/media/MediaPlayer;->getAudioSpectrumInterval()D

    move-result-wide v4

    const-wide v6, 0x3e112e0be826d695L    # 1.0E-9

    const-wide v8, 0x7fefffffffffffffL    # Double.MAX_VALUE

    invoke-static/range {v4 .. v9}, Ljavafx/scene/media/MediaPlayer;->clamp(DDD)D

    move-result-wide v4

    invoke-interface {v3, v4, v5}, Lcom/sun/media/jfxmedia/effects/AudioSpectrum;->setInterval(D)V

    .line 1815
    move-object v3, v1

    const/4 v4, 0x0

    iput-boolean v4, v3, Ljavafx/scene/media/MediaPlayer;->audioSpectrumIntervalChangeRequested:Z

    .line 1818
    :cond_8
    move-object v3, v1

    iget-boolean v3, v3, Ljavafx/scene/media/MediaPlayer;->audioSpectrumThresholdChangeRequested:Z

    if-eqz v3, :cond_9

    .line 1819
    move-object v3, v1

    iget-object v3, v3, Ljavafx/scene/media/MediaPlayer;->jfxPlayer:Lcom/sun/media/jfxmedia/MediaPlayer;

    invoke-interface {v3}, Lcom/sun/media/jfxmedia/MediaPlayer;->getAudioSpectrum()Lcom/sun/media/jfxmedia/effects/AudioSpectrum;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/media/MediaPlayer;->getAudioSpectrumThreshold()I

    move-result v4

    const/high16 v5, -0x80000000

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Ljavafx/scene/media/MediaPlayer;->clamp(III)I

    move-result v4

    invoke-interface {v3, v4}, Lcom/sun/media/jfxmedia/effects/AudioSpectrum;->setSensitivityThreshold(I)V

    .line 1820
    move-object v3, v1

    const/4 v4, 0x0

    iput-boolean v4, v3, Ljavafx/scene/media/MediaPlayer;->audioSpectrumThresholdChangeRequested:Z

    .line 1823
    :cond_9
    move-object v3, v1

    iget-boolean v3, v3, Ljavafx/scene/media/MediaPlayer;->audioSpectrumEnabledChangeRequested:Z

    if-eqz v3, :cond_a

    .line 1824
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/media/MediaPlayer;->getAudioSpectrumListener()Ljavafx/scene/media/AudioSpectrumListener;

    move-result-object v3

    if-eqz v3, :cond_c

    const/4 v3, 0x1

    :goto_0
    move v2, v3

    .line 1825
    .local v2, "enabled":Z
    move-object v3, v1

    iget-object v3, v3, Ljavafx/scene/media/MediaPlayer;->jfxPlayer:Lcom/sun/media/jfxmedia/MediaPlayer;

    invoke-interface {v3}, Lcom/sun/media/jfxmedia/MediaPlayer;->getAudioSpectrum()Lcom/sun/media/jfxmedia/effects/AudioSpectrum;

    move-result-object v3

    move v4, v2

    invoke-interface {v3, v4}, Lcom/sun/media/jfxmedia/effects/AudioSpectrum;->setEnabled(Z)V

    .line 1826
    move-object v3, v1

    const/4 v4, 0x0

    iput-boolean v4, v3, Ljavafx/scene/media/MediaPlayer;->audioSpectrumEnabledChangeRequested:Z

    .line 1829
    .end local v2    # "enabled":Z
    :cond_a
    move-object v3, v1

    iget-boolean v3, v3, Ljavafx/scene/media/MediaPlayer;->playRequested:Z

    if-eqz v3, :cond_b

    .line 1830
    move-object v3, v1

    iget-object v3, v3, Ljavafx/scene/media/MediaPlayer;->jfxPlayer:Lcom/sun/media/jfxmedia/MediaPlayer;

    invoke-interface {v3}, Lcom/sun/media/jfxmedia/MediaPlayer;->play()V

    .line 1831
    move-object v3, v1

    const/4 v4, 0x0

    iput-boolean v4, v3, Ljavafx/scene/media/MediaPlayer;->playRequested:Z

    .line 1833
    :cond_b
    return-void

    .line 1824
    :cond_c
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public impl_getLatestFrame()Lcom/sun/media/jfxmedia/control/VideoDataBuffer;
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2670
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaPlayer;
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/media/MediaPlayer;->renderLock:Ljava/lang/Object;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    move-object v1, v4

    monitor-enter v3

    .line 2671
    const/4 v3, 0x0

    move-object v4, v0

    :try_start_0
    iget-object v4, v4, Ljavafx/scene/media/MediaPlayer;->currentRenderFrame:Lcom/sun/media/jfxmedia/control/VideoDataBuffer;

    if-eq v3, v4, :cond_0

    .line 2672
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/media/MediaPlayer;->currentRenderFrame:Lcom/sun/media/jfxmedia/control/VideoDataBuffer;

    invoke-interface {v3}, Lcom/sun/media/jfxmedia/control/VideoDataBuffer;->holdFrame()V

    .line 2674
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/media/MediaPlayer;->currentRenderFrame:Lcom/sun/media/jfxmedia/control/VideoDataBuffer;

    move-object v4, v1

    monitor-exit v4

    move-object v0, v3

    .end local v0    # "this":Ljavafx/scene/media/MediaPlayer;
    return-object v0

    .line 2675
    .restart local v0    # "this":Ljavafx/scene/media/MediaPlayer;
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

.method public final isAutoPlay()Z
    .locals 2

    .prologue
    .line 673
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaPlayer;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/media/MediaPlayer;->autoPlay:Ljavafx/beans/property/BooleanProperty;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move v0, v1

    .end local v0    # "this":Ljavafx/scene/media/MediaPlayer;
    return v0

    .restart local v0    # "this":Ljavafx/scene/media/MediaPlayer;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/media/MediaPlayer;->autoPlay:Ljavafx/beans/property/BooleanProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/BooleanProperty;->get()Z

    move-result v1

    goto :goto_0
.end method

.method public final isMute()Z
    .locals 2

    .prologue
    .line 1640
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaPlayer;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/media/MediaPlayer;->mute:Ljavafx/beans/property/BooleanProperty;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move v0, v1

    .end local v0    # "this":Ljavafx/scene/media/MediaPlayer;
    return v0

    .restart local v0    # "this":Ljavafx/scene/media/MediaPlayer;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/media/MediaPlayer;->mute:Ljavafx/beans/property/BooleanProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/BooleanProperty;->get()Z

    move-result v1

    goto :goto_0
.end method

.method loopPlayback()V
    .locals 3

    .prologue
    .line 1772
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaPlayer;
    move-object v1, v0

    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/media/MediaPlayer;->getStartTime()Ljavafx/util/Duration;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljavafx/scene/media/MediaPlayer;->seek(Ljavafx/util/Duration;)V

    .line 1773
    return-void
.end method

.method public muteProperty()Ljavafx/beans/property/BooleanProperty;
    .locals 6

    .prologue
    .line 1644
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaPlayer;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/media/MediaPlayer;->mute:Ljavafx/beans/property/BooleanProperty;

    if-nez v1, :cond_0

    .line 1645
    move-object v1, v0

    new-instance v2, Ljavafx/scene/media/MediaPlayer$11;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/media/MediaPlayer$11;-><init>(Ljavafx/scene/media/MediaPlayer;)V

    iput-object v2, v1, Ljavafx/scene/media/MediaPlayer;->mute:Ljavafx/beans/property/BooleanProperty;

    .line 1671
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/media/MediaPlayer;->mute:Ljavafx/beans/property/BooleanProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/media/MediaPlayer;
    return-object v0
.end method

.method public onEndOfMediaProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1910
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaPlayer;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/media/MediaPlayer;->onEndOfMedia:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    .line 1911
    move-object v1, v0

    new-instance v2, Ljavafx/beans/property/SimpleObjectProperty;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    const-string v5, "onEndOfMedia"

    invoke-direct {v3, v4, v5}, Ljavafx/beans/property/SimpleObjectProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v1, Ljavafx/scene/media/MediaPlayer;->onEndOfMedia:Ljavafx/beans/property/ObjectProperty;

    .line 1913
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/media/MediaPlayer;->onEndOfMedia:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/media/MediaPlayer;
    return-object v0
.end method

.method public onErrorProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 607
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaPlayer;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/media/MediaPlayer;->onError:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    .line 608
    move-object v1, v0

    new-instance v2, Ljavafx/scene/media/MediaPlayer$2;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/media/MediaPlayer$2;-><init>(Ljavafx/scene/media/MediaPlayer;)V

    iput-object v2, v1, Ljavafx/scene/media/MediaPlayer;->onError:Ljavafx/beans/property/ObjectProperty;

    .line 633
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/media/MediaPlayer;->onError:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/media/MediaPlayer;
    return-object v0
.end method

.method public onHaltedProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2053
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaPlayer;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/media/MediaPlayer;->onHalted:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    .line 2054
    move-object v1, v0

    new-instance v2, Ljavafx/beans/property/SimpleObjectProperty;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    const-string v5, "onHalted"

    invoke-direct {v3, v4, v5}, Ljavafx/beans/property/SimpleObjectProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v1, Ljavafx/scene/media/MediaPlayer;->onHalted:Ljavafx/beans/property/ObjectProperty;

    .line 2056
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/media/MediaPlayer;->onHalted:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/media/MediaPlayer;
    return-object v0
.end method

.method public onMarkerProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/scene/media/MediaMarkerEvent;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 1697
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaPlayer;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/media/MediaPlayer;->onMarker:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    .line 1698
    move-object v1, v0

    new-instance v2, Ljavafx/beans/property/SimpleObjectProperty;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    const-string v5, "onMarker"

    invoke-direct {v3, v4, v5}, Ljavafx/beans/property/SimpleObjectProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v1, Ljavafx/scene/media/MediaPlayer;->onMarker:Ljavafx/beans/property/ObjectProperty;

    .line 1700
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/media/MediaPlayer;->onMarker:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/media/MediaPlayer;
    return-object v0
.end method

.method public onPausedProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1996
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaPlayer;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/media/MediaPlayer;->onPaused:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    .line 1997
    move-object v1, v0

    new-instance v2, Ljavafx/beans/property/SimpleObjectProperty;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    const-string v5, "onPaused"

    invoke-direct {v3, v4, v5}, Ljavafx/beans/property/SimpleObjectProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v1, Ljavafx/scene/media/MediaPlayer;->onPaused:Ljavafx/beans/property/ObjectProperty;

    .line 1999
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/media/MediaPlayer;->onPaused:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/media/MediaPlayer;
    return-object v0
.end method

.method public onPlayingProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1968
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaPlayer;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/media/MediaPlayer;->onPlaying:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    .line 1969
    move-object v1, v0

    new-instance v2, Ljavafx/beans/property/SimpleObjectProperty;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    const-string v5, "onPlaying"

    invoke-direct {v3, v4, v5}, Ljavafx/beans/property/SimpleObjectProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v1, Ljavafx/scene/media/MediaPlayer;->onPlaying:Ljavafx/beans/property/ObjectProperty;

    .line 1971
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/media/MediaPlayer;->onPlaying:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/media/MediaPlayer;
    return-object v0
.end method

.method public onReadyProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1939
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaPlayer;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/media/MediaPlayer;->onReady:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    .line 1940
    move-object v1, v0

    new-instance v2, Ljavafx/beans/property/SimpleObjectProperty;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    const-string v5, "onReady"

    invoke-direct {v3, v4, v5}, Ljavafx/beans/property/SimpleObjectProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v1, Ljavafx/scene/media/MediaPlayer;->onReady:Ljavafx/beans/property/ObjectProperty;

    .line 1942
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/media/MediaPlayer;->onReady:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/media/MediaPlayer;
    return-object v0
.end method

.method public onRepeatProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2084
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaPlayer;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/media/MediaPlayer;->onRepeat:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    .line 2085
    move-object v1, v0

    new-instance v2, Ljavafx/beans/property/SimpleObjectProperty;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    const-string v5, "onRepeat"

    invoke-direct {v3, v4, v5}, Ljavafx/beans/property/SimpleObjectProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v1, Ljavafx/scene/media/MediaPlayer;->onRepeat:Ljavafx/beans/property/ObjectProperty;

    .line 2087
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/media/MediaPlayer;->onRepeat:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/media/MediaPlayer;
    return-object v0
.end method

.method public onStalledProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2113
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaPlayer;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/media/MediaPlayer;->onStalled:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    .line 2114
    move-object v1, v0

    new-instance v2, Ljavafx/beans/property/SimpleObjectProperty;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    const-string v5, "onStalled"

    invoke-direct {v3, v4, v5}, Ljavafx/beans/property/SimpleObjectProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v1, Ljavafx/scene/media/MediaPlayer;->onStalled:Ljavafx/beans/property/ObjectProperty;

    .line 2116
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/media/MediaPlayer;->onStalled:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/media/MediaPlayer;
    return-object v0
.end method

.method public onStoppedProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2025
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaPlayer;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/media/MediaPlayer;->onStopped:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    .line 2026
    move-object v1, v0

    new-instance v2, Ljavafx/beans/property/SimpleObjectProperty;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    const-string v5, "onStopped"

    invoke-direct {v3, v4, v5}, Ljavafx/beans/property/SimpleObjectProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v1, Ljavafx/scene/media/MediaPlayer;->onStopped:Ljavafx/beans/property/ObjectProperty;

    .line 2028
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/media/MediaPlayer;->onStopped:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/media/MediaPlayer;
    return-object v0
.end method

.method public pause()V
    .locals 6

    .prologue
    .line 728
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaPlayer;
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/media/MediaPlayer;->disposeLock:Ljava/lang/Object;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    move-object v1, v4

    monitor-enter v3

    .line 729
    move-object v3, v0

    :try_start_0
    invoke-virtual {v3}, Ljavafx/scene/media/MediaPlayer;->getStatus()Ljavafx/scene/media/MediaPlayer$Status;

    move-result-object v3

    sget-object v4, Ljavafx/scene/media/MediaPlayer$Status;->DISPOSED:Ljavafx/scene/media/MediaPlayer$Status;

    if-eq v3, v4, :cond_0

    .line 730
    move-object v3, v0

    iget-boolean v3, v3, Ljavafx/scene/media/MediaPlayer;->playerReady:Z

    if-eqz v3, :cond_1

    .line 731
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/media/MediaPlayer;->jfxPlayer:Lcom/sun/media/jfxmedia/MediaPlayer;

    invoke-interface {v3}, Lcom/sun/media/jfxmedia/MediaPlayer;->pause()V

    .line 736
    :cond_0
    :goto_0
    move-object v3, v1

    monitor-exit v3

    .line 737
    return-void

    .line 733
    :cond_1
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Ljavafx/scene/media/MediaPlayer;->playRequested:Z

    goto :goto_0

    .line 736
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

.method public play()V
    .locals 6

    .prologue
    .line 712
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaPlayer;
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/media/MediaPlayer;->disposeLock:Ljava/lang/Object;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    move-object v1, v4

    monitor-enter v3

    .line 713
    move-object v3, v0

    :try_start_0
    invoke-virtual {v3}, Ljavafx/scene/media/MediaPlayer;->getStatus()Ljavafx/scene/media/MediaPlayer$Status;

    move-result-object v3

    sget-object v4, Ljavafx/scene/media/MediaPlayer$Status;->DISPOSED:Ljavafx/scene/media/MediaPlayer$Status;

    if-eq v3, v4, :cond_0

    .line 714
    move-object v3, v0

    iget-boolean v3, v3, Ljavafx/scene/media/MediaPlayer;->playerReady:Z

    if-eqz v3, :cond_1

    .line 715
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/media/MediaPlayer;->jfxPlayer:Lcom/sun/media/jfxmedia/MediaPlayer;

    invoke-interface {v3}, Lcom/sun/media/jfxmedia/MediaPlayer;->play()V

    .line 720
    :cond_0
    :goto_0
    move-object v3, v1

    monitor-exit v3

    .line 721
    return-void

    .line 717
    :cond_1
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Ljavafx/scene/media/MediaPlayer;->playRequested:Z

    goto :goto_0

    .line 720
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

.method preReady()V
    .locals 15

    .prologue
    .line 1841
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaPlayer;
    move-object v10, v0

    iget-object v10, v10, Ljavafx/scene/media/MediaPlayer;->viewRefs:Ljava/util/Set;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    move-object v1, v11

    monitor-enter v10

    .line 1842
    move-object v10, v0

    :try_start_0
    iget-object v10, v10, Ljavafx/scene/media/MediaPlayer;->viewRefs:Ljava/util/Set;

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move-object v2, v10

    :goto_0
    move-object v10, v2

    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    move-object v10, v2

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/ref/WeakReference;

    move-object v3, v10

    .line 1843
    .local v3, "vref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Ljavafx/scene/media/MediaView;>;"
    move-object v10, v3

    invoke-virtual {v10}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljavafx/scene/media/MediaView;

    move-object v4, v10

    .line 1844
    .local v4, "v":Ljavafx/scene/media/MediaView;
    move-object v10, v4

    if-eqz v10, :cond_0

    .line 1845
    move-object v10, v4

    invoke-virtual {v10}, Ljavafx/scene/media/MediaView;->_mediaPlayerOnReady()V

    .line 1847
    :cond_0
    goto :goto_0

    .line 1848
    .end local v3    # "vref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Ljavafx/scene/media/MediaView;>;"
    .end local v4    # "v":Ljavafx/scene/media/MediaView;
    :cond_1
    move-object v10, v1

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1851
    move-object v10, v0

    iget-object v10, v10, Ljavafx/scene/media/MediaPlayer;->audioEqualizer:Ljavafx/scene/media/AudioEqualizer;

    if-eqz v10, :cond_2

    .line 1852
    move-object v10, v0

    iget-object v10, v10, Ljavafx/scene/media/MediaPlayer;->audioEqualizer:Ljavafx/scene/media/AudioEqualizer;

    move-object v11, v0

    iget-object v11, v11, Ljavafx/scene/media/MediaPlayer;->jfxPlayer:Lcom/sun/media/jfxmedia/MediaPlayer;

    invoke-interface {v11}, Lcom/sun/media/jfxmedia/MediaPlayer;->getEqualizer()Lcom/sun/media/jfxmedia/effects/AudioEqualizer;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljavafx/scene/media/AudioEqualizer;->setAudioEqualizer(Lcom/sun/media/jfxmedia/effects/AudioEqualizer;)V

    .line 1856
    :cond_2
    move-object v10, v0

    iget-object v10, v10, Ljavafx/scene/media/MediaPlayer;->jfxPlayer:Lcom/sun/media/jfxmedia/MediaPlayer;

    invoke-interface {v10}, Lcom/sun/media/jfxmedia/MediaPlayer;->getDuration()D

    move-result-wide v10

    move-wide v1, v10

    .line 1858
    .local v1, "durationSeconds":D
    move-wide v10, v1

    const-wide/16 v12, 0x0

    cmpl-double v10, v10, v12

    if-ltz v10, :cond_4

    move-wide v10, v1

    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    move-result v10

    if-nez v10, :cond_4

    .line 1859
    move-wide v10, v1

    const-wide v12, 0x408f400000000000L    # 1000.0

    mul-double/2addr v10, v12

    invoke-static {v10, v11}, Ljavafx/util/Duration;->millis(D)Ljavafx/util/Duration;

    move-result-object v10

    move-object v3, v10

    .line 1864
    .local v3, "duration":Ljavafx/util/Duration;
    :goto_1
    move-object v10, v0

    const/4 v11, 0x1

    iput-boolean v11, v10, Ljavafx/scene/media/MediaPlayer;->playerReady:Z

    .line 1866
    move-object v10, v0

    iget-object v10, v10, Ljavafx/scene/media/MediaPlayer;->media:Ljavafx/scene/media/Media;

    move-object v11, v3

    invoke-virtual {v10, v11}, Ljavafx/scene/media/Media;->setDuration(Ljavafx/util/Duration;)V

    .line 1867
    move-object v10, v0

    iget-object v10, v10, Ljavafx/scene/media/MediaPlayer;->media:Ljavafx/scene/media/Media;

    move-object v11, v0

    iget-object v11, v11, Ljavafx/scene/media/MediaPlayer;->jfxPlayer:Lcom/sun/media/jfxmedia/MediaPlayer;

    invoke-interface {v11}, Lcom/sun/media/jfxmedia/MediaPlayer;->getMedia()Lcom/sun/media/jfxmedia/Media;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljavafx/scene/media/Media;->_updateMedia(Lcom/sun/media/jfxmedia/Media;)V

    .line 1871
    move-object v10, v0

    invoke-virtual {v10}, Ljavafx/scene/media/MediaPlayer;->handleRequestedChanges()V

    .line 1874
    move-object v10, v0

    invoke-direct {v10}, Ljavafx/scene/media/MediaPlayer;->calculateCycleDuration()V

    .line 1877
    move-object v10, v0

    iget-object v10, v10, Ljavafx/scene/media/MediaPlayer;->lastBufferEvent:Lcom/sun/media/jfxmedia/events/BufferProgressEvent;

    if-eqz v10, :cond_3

    move-object v10, v3

    invoke-virtual {v10}, Ljavafx/util/Duration;->toMillis()D

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmpl-double v10, v10, v12

    if-lez v10, :cond_3

    .line 1878
    move-object v10, v0

    iget-object v10, v10, Ljavafx/scene/media/MediaPlayer;->lastBufferEvent:Lcom/sun/media/jfxmedia/events/BufferProgressEvent;

    invoke-virtual {v10}, Lcom/sun/media/jfxmedia/events/BufferProgressEvent;->getBufferPosition()J

    move-result-wide v10

    long-to-double v10, v10

    move-wide v4, v10

    .line 1879
    .local v4, "position":D
    move-object v10, v0

    iget-object v10, v10, Ljavafx/scene/media/MediaPlayer;->lastBufferEvent:Lcom/sun/media/jfxmedia/events/BufferProgressEvent;

    invoke-virtual {v10}, Lcom/sun/media/jfxmedia/events/BufferProgressEvent;->getBufferStop()J

    move-result-wide v10

    long-to-double v10, v10

    move-wide v6, v10

    .line 1880
    .local v6, "stop":D
    move-wide v10, v4

    move-wide v12, v6

    div-double/2addr v10, v12

    move-object v12, v3

    invoke-virtual {v12}, Ljavafx/util/Duration;->toMillis()D

    move-result-wide v12

    mul-double/2addr v10, v12

    move-wide v8, v10

    .line 1881
    .local v8, "bufferedTime":D
    move-object v10, v0

    const/4 v11, 0x0

    iput-object v11, v10, Ljavafx/scene/media/MediaPlayer;->lastBufferEvent:Lcom/sun/media/jfxmedia/events/BufferProgressEvent;

    .line 1882
    move-object v10, v0

    move-wide v11, v8

    invoke-static {v11, v12}, Ljavafx/util/Duration;->millis(D)Ljavafx/util/Duration;

    move-result-object v11

    invoke-direct {v10, v11}, Ljavafx/scene/media/MediaPlayer;->setBufferProgressTime(Ljavafx/util/Duration;)V

    .line 1885
    .end local v4    # "position":D
    .end local v6    # "stop":D
    .end local v8    # "bufferedTime":D
    :cond_3
    move-object v10, v0

    sget-object v11, Ljavafx/scene/media/MediaPlayer$Status;->READY:Ljavafx/scene/media/MediaPlayer$Status;

    invoke-direct {v10, v11}, Ljavafx/scene/media/MediaPlayer;->setStatus(Ljavafx/scene/media/MediaPlayer$Status;)V

    .line 1886
    return-void

    .line 1848
    .end local v1    # "durationSeconds":D
    .end local v3    # "duration":Ljavafx/util/Duration;
    :catchall_0
    move-exception v10

    move-object v5, v10

    move-object v10, v1

    :try_start_1
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v10, v5

    throw v10

    .line 1861
    .restart local v1    # "durationSeconds":D
    :cond_4
    sget-object v10, Ljavafx/util/Duration;->UNKNOWN:Ljavafx/util/Duration;

    move-object v3, v10

    .restart local v3    # "duration":Ljavafx/util/Duration;
    goto :goto_1
.end method

.method public rateProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 9

    .prologue
    .line 792
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/media/MediaPlayer;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/media/MediaPlayer;->rate:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    .line 793
    move-object v2, v1

    new-instance v3, Ljavafx/scene/media/MediaPlayer$4;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v1

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    invoke-direct {v4, v5, v6, v7}, Ljavafx/scene/media/MediaPlayer$4;-><init>(Ljavafx/scene/media/MediaPlayer;D)V

    iput-object v3, v2, Ljavafx/scene/media/MediaPlayer;->rate:Ljavafx/beans/property/DoubleProperty;

    .line 821
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/media/MediaPlayer;->rate:Ljavafx/beans/property/DoubleProperty;

    move-object v1, v2

    .end local v1    # "this":Ljavafx/scene/media/MediaPlayer;
    return-object v1
.end method

.method registerListeners()V
    .locals 6

    .prologue
    .line 424
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaPlayer;
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/media/MediaPlayer;->disposeLock:Ljava/lang/Object;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    move-object v1, v4

    monitor-enter v3

    .line 425
    move-object v3, v0

    :try_start_0
    invoke-virtual {v3}, Ljavafx/scene/media/MediaPlayer;->getStatus()Ljavafx/scene/media/MediaPlayer$Status;

    move-result-object v3

    sget-object v4, Ljavafx/scene/media/MediaPlayer$Status;->DISPOSED:Ljavafx/scene/media/MediaPlayer$Status;

    if-ne v3, v4, :cond_0

    .line 426
    move-object v3, v1

    monitor-exit v3

    .line 451
    :goto_0
    return-void

    .line 429
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/media/MediaPlayer;->jfxPlayer:Lcom/sun/media/jfxmedia/MediaPlayer;

    if-eqz v3, :cond_1

    .line 432
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/media/MediaPlayer;->jfxPlayer:Lcom/sun/media/jfxmedia/MediaPlayer;

    invoke-static {v3, v4}, Lcom/sun/media/jfxmedia/MediaManager;->registerMediaPlayerForDispose(Ljava/lang/Object;Lcom/sun/media/jfxmedia/MediaPlayer;)V

    .line 434
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/media/MediaPlayer;->jfxPlayer:Lcom/sun/media/jfxmedia/MediaPlayer;

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/media/MediaPlayer;->errorListener:Lcom/sun/media/jfxmedia/events/MediaErrorListener;

    invoke-interface {v3, v4}, Lcom/sun/media/jfxmedia/MediaPlayer;->addMediaErrorListener(Lcom/sun/media/jfxmedia/events/MediaErrorListener;)V

    .line 436
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/media/MediaPlayer;->jfxPlayer:Lcom/sun/media/jfxmedia/MediaPlayer;

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/media/MediaPlayer;->timeListener:Lcom/sun/media/jfxmedia/events/PlayerTimeListener;

    invoke-interface {v3, v4}, Lcom/sun/media/jfxmedia/MediaPlayer;->addMediaTimeListener(Lcom/sun/media/jfxmedia/events/PlayerTimeListener;)V

    .line 437
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/media/MediaPlayer;->jfxPlayer:Lcom/sun/media/jfxmedia/MediaPlayer;

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/media/MediaPlayer;->sizeListener:Lcom/sun/media/jfxmedia/events/VideoTrackSizeListener;

    invoke-interface {v3, v4}, Lcom/sun/media/jfxmedia/MediaPlayer;->addVideoTrackSizeListener(Lcom/sun/media/jfxmedia/events/VideoTrackSizeListener;)V

    .line 438
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/media/MediaPlayer;->jfxPlayer:Lcom/sun/media/jfxmedia/MediaPlayer;

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/media/MediaPlayer;->bufferListener:Lcom/sun/media/jfxmedia/events/BufferListener;

    invoke-interface {v3, v4}, Lcom/sun/media/jfxmedia/MediaPlayer;->addBufferListener(Lcom/sun/media/jfxmedia/events/BufferListener;)V

    .line 439
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/media/MediaPlayer;->jfxPlayer:Lcom/sun/media/jfxmedia/MediaPlayer;

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/media/MediaPlayer;->markerEventListener:Lcom/sun/media/jfxmedia/events/MarkerListener;

    invoke-interface {v3, v4}, Lcom/sun/media/jfxmedia/MediaPlayer;->addMarkerListener(Lcom/sun/media/jfxmedia/events/MarkerListener;)V

    .line 440
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/media/MediaPlayer;->jfxPlayer:Lcom/sun/media/jfxmedia/MediaPlayer;

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/media/MediaPlayer;->spectrumListener:Lcom/sun/media/jfxmedia/events/AudioSpectrumListener;

    invoke-interface {v3, v4}, Lcom/sun/media/jfxmedia/MediaPlayer;->addAudioSpectrumListener(Lcom/sun/media/jfxmedia/events/AudioSpectrumListener;)V

    .line 441
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/media/MediaPlayer;->jfxPlayer:Lcom/sun/media/jfxmedia/MediaPlayer;

    invoke-interface {v3}, Lcom/sun/media/jfxmedia/MediaPlayer;->getVideoRenderControl()Lcom/sun/media/jfxmedia/control/VideoRenderControl;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/media/MediaPlayer;->rendererListener:Ljavafx/scene/media/MediaPlayer$RendererListener;

    invoke-interface {v3, v4}, Lcom/sun/media/jfxmedia/control/VideoRenderControl;->addVideoRendererListener(Lcom/sun/media/jfxmedia/events/VideoRendererListener;)V

    .line 442
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/media/MediaPlayer;->jfxPlayer:Lcom/sun/media/jfxmedia/MediaPlayer;

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/media/MediaPlayer;->stateListener:Lcom/sun/media/jfxmedia/events/PlayerStateListener;

    invoke-interface {v3, v4}, Lcom/sun/media/jfxmedia/MediaPlayer;->addMediaPlayerListener(Lcom/sun/media/jfxmedia/events/PlayerStateListener;)V

    .line 445
    :cond_1
    const/4 v3, 0x0

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/media/MediaPlayer;->rendererListener:Ljavafx/scene/media/MediaPlayer$RendererListener;

    if-eq v3, v4, :cond_2

    .line 448
    invoke-static {}, Lcom/sun/javafx/tk/Toolkit;->getToolkit()Lcom/sun/javafx/tk/Toolkit;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/media/MediaPlayer;->rendererListener:Ljavafx/scene/media/MediaPlayer$RendererListener;

    invoke-virtual {v3, v4}, Lcom/sun/javafx/tk/Toolkit;->addStageTkPulseListener(Lcom/sun/javafx/tk/TKPulseListener;)V

    .line 450
    :cond_2
    move-object v3, v1

    monitor-exit v3

    .line 451
    goto :goto_0

    .line 450
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

.method removeView(Ljavafx/scene/media/MediaView;)V
    .locals 10

    .prologue
    .line 1711
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaPlayer;
    move-object v1, p1

    .local v1, "view":Ljavafx/scene/media/MediaView;
    move-object v7, v0

    iget-object v7, v7, Ljavafx/scene/media/MediaPlayer;->viewRefs:Ljava/util/Set;

    move-object v9, v7

    move-object v7, v9

    move-object v8, v9

    move-object v2, v8

    monitor-enter v7

    .line 1712
    move-object v7, v0

    :try_start_0
    iget-object v7, v7, Ljavafx/scene/media/MediaPlayer;->viewRefs:Ljava/util/Set;

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move-object v3, v7

    :goto_0
    move-object v7, v3

    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    move-object v7, v3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/ref/WeakReference;

    move-object v4, v7

    .line 1713
    .local v4, "vref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Ljavafx/scene/media/MediaView;>;"
    move-object v7, v4

    invoke-virtual {v7}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljavafx/scene/media/MediaView;

    move-object v5, v7

    .line 1714
    .local v5, "v":Ljavafx/scene/media/MediaView;
    move-object v7, v5

    if-eqz v7, :cond_0

    move-object v7, v5

    move-object v8, v1

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1715
    move-object v7, v0

    iget-object v7, v7, Ljavafx/scene/media/MediaPlayer;->viewRefs:Ljava/util/Set;

    move-object v8, v4

    invoke-interface {v7, v8}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v7

    .line 1717
    :cond_0
    goto :goto_0

    .line 1718
    .end local v4    # "vref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Ljavafx/scene/media/MediaView;>;"
    .end local v5    # "v":Ljavafx/scene/media/MediaView;
    :cond_1
    move-object v7, v2

    monitor-exit v7

    .line 1719
    return-void

    .line 1718
    :catchall_0
    move-exception v7

    move-object v6, v7

    move-object v7, v2

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v7, v6

    throw v7
.end method

.method retrieveJfxPlayer()Lcom/sun/media/jfxmedia/MediaPlayer;
    .locals 6

    .prologue
    .line 281
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaPlayer;
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/media/MediaPlayer;->disposeLock:Ljava/lang/Object;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    move-object v1, v4

    monitor-enter v3

    .line 282
    move-object v3, v0

    :try_start_0
    iget-object v3, v3, Ljavafx/scene/media/MediaPlayer;->jfxPlayer:Lcom/sun/media/jfxmedia/MediaPlayer;

    move-object v4, v1

    monitor-exit v4

    move-object v0, v3

    .end local v0    # "this":Ljavafx/scene/media/MediaPlayer;
    return-object v0

    .line 283
    .restart local v0    # "this":Ljavafx/scene/media/MediaPlayer;
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

.method public seek(Ljavafx/util/Duration;)V
    .locals 13

    .prologue
    .line 1374
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/media/MediaPlayer;
    move-object v2, p1

    .local v2, "seekTime":Ljavafx/util/Duration;
    move-object v8, v1

    iget-object v8, v8, Ljavafx/scene/media/MediaPlayer;->disposeLock:Ljava/lang/Object;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    move-object v3, v9

    monitor-enter v8

    .line 1375
    move-object v8, v1

    :try_start_0
    invoke-virtual {v8}, Ljavafx/scene/media/MediaPlayer;->getStatus()Ljavafx/scene/media/MediaPlayer$Status;

    move-result-object v8

    sget-object v9, Ljavafx/scene/media/MediaPlayer$Status;->DISPOSED:Ljavafx/scene/media/MediaPlayer$Status;

    if-ne v8, v9, :cond_0

    .line 1376
    move-object v8, v3

    monitor-exit v8

    .line 1431
    :goto_0
    return-void

    .line 1380
    :cond_0
    move-object v8, v1

    iget-boolean v8, v8, Ljavafx/scene/media/MediaPlayer;->playerReady:Z

    if-eqz v8, :cond_7

    move-object v8, v2

    if-eqz v8, :cond_7

    move-object v8, v2

    invoke-virtual {v8}, Ljavafx/util/Duration;->isUnknown()Z

    move-result v8

    if-nez v8, :cond_7

    .line 1381
    move-object v8, v1

    iget-object v8, v8, Ljavafx/scene/media/MediaPlayer;->jfxPlayer:Lcom/sun/media/jfxmedia/MediaPlayer;

    invoke-interface {v8}, Lcom/sun/media/jfxmedia/MediaPlayer;->getDuration()D

    move-result-wide v8

    const-wide/high16 v10, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    cmpl-double v8, v8, v10

    if-nez v8, :cond_1

    .line 1382
    move-object v8, v3

    monitor-exit v8

    goto :goto_0

    .line 1389
    :cond_1
    move-object v8, v2

    invoke-virtual {v8}, Ljavafx/util/Duration;->isIndefinite()Z

    move-result v8

    if-eqz v8, :cond_8

    .line 1391
    move-object v8, v1

    iget-object v8, v8, Ljavafx/scene/media/MediaPlayer;->media:Ljavafx/scene/media/Media;

    invoke-virtual {v8}, Ljavafx/scene/media/Media;->getDuration()Ljavafx/util/Duration;

    move-result-object v8

    move-object v6, v8

    .line 1392
    .local v6, "duration":Ljavafx/util/Duration;
    move-object v8, v6

    if-eqz v8, :cond_2

    move-object v8, v6

    .line 1393
    invoke-virtual {v8}, Ljavafx/util/Duration;->isUnknown()Z

    move-result v8

    if-nez v8, :cond_2

    move-object v8, v6

    .line 1394
    invoke-virtual {v8}, Ljavafx/util/Duration;->isIndefinite()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1395
    :cond_2
    const-wide v8, 0x7fefffffffffffffL    # Double.MAX_VALUE

    invoke-static {v8, v9}, Ljavafx/util/Duration;->millis(D)Ljavafx/util/Duration;

    move-result-object v8

    move-object v6, v8

    .line 1399
    :cond_3
    move-object v8, v6

    invoke-virtual {v8}, Ljavafx/util/Duration;->toMillis()D

    move-result-wide v8

    const-wide v10, 0x408f400000000000L    # 1000.0

    div-double/2addr v8, v10

    move-wide v4, v8

    .line 1413
    .end local v6    # "duration":Ljavafx/util/Duration;
    .local v4, "seekSeconds":D
    :cond_4
    :goto_1
    move-object v8, v1

    iget-boolean v8, v8, Ljavafx/scene/media/MediaPlayer;->isUpdateTimeEnabled:Z

    if-nez v8, :cond_6

    .line 1416
    move-object v8, v1

    invoke-virtual {v8}, Ljavafx/scene/media/MediaPlayer;->getStatus()Ljavafx/scene/media/MediaPlayer$Status;

    move-result-object v8

    move-object v6, v8

    .line 1417
    .local v6, "playerStatus":Ljavafx/scene/media/MediaPlayer$Status;
    move-object v8, v6

    sget-object v9, Ljavafx/scene/media/MediaPlayer$Status;->PLAYING:Ljavafx/scene/media/MediaPlayer$Status;

    if-eq v8, v9, :cond_5

    move-object v8, v6

    sget-object v9, Ljavafx/scene/media/MediaPlayer$Status;->PAUSED:Ljavafx/scene/media/MediaPlayer$Status;

    if-ne v8, v9, :cond_6

    :cond_5
    move-object v8, v1

    .line 1419
    invoke-virtual {v8}, Ljavafx/scene/media/MediaPlayer;->getStartTime()Ljavafx/util/Duration;

    move-result-object v8

    invoke-virtual {v8}, Ljavafx/util/Duration;->toSeconds()D

    move-result-wide v8

    move-wide v10, v4

    cmpg-double v8, v8, v10

    if-gtz v8, :cond_6

    move-wide v8, v4

    move-object v10, v1

    .line 1420
    invoke-virtual {v10}, Ljavafx/scene/media/MediaPlayer;->getStopTime()Ljavafx/util/Duration;

    move-result-object v10

    invoke-virtual {v10}, Ljavafx/util/Duration;->toSeconds()D

    move-result-wide v10

    cmpg-double v8, v8, v10

    if-gtz v8, :cond_6

    .line 1421
    move-object v8, v1

    const/4 v9, 0x0

    iput-boolean v9, v8, Ljavafx/scene/media/MediaPlayer;->isEOS:Z

    .line 1422
    move-object v8, v1

    const/4 v9, 0x1

    iput-boolean v9, v8, Ljavafx/scene/media/MediaPlayer;->isUpdateTimeEnabled:Z

    .line 1423
    move-object v8, v1

    move-object v9, v1

    invoke-virtual {v9}, Ljavafx/scene/media/MediaPlayer;->getRate()D

    move-result-wide v9

    invoke-direct {v8, v9, v10}, Ljavafx/scene/media/MediaPlayer;->setCurrentRate(D)V

    .line 1428
    .end local v6    # "playerStatus":Ljavafx/scene/media/MediaPlayer$Status;
    :cond_6
    move-object v8, v1

    iget-object v8, v8, Ljavafx/scene/media/MediaPlayer;->jfxPlayer:Lcom/sun/media/jfxmedia/MediaPlayer;

    move-wide v9, v4

    invoke-interface {v8, v9, v10}, Lcom/sun/media/jfxmedia/MediaPlayer;->seek(D)V

    .line 1430
    .end local v4    # "seekSeconds":D
    :cond_7
    move-object v8, v3

    monitor-exit v8

    .line 1431
    goto/16 :goto_0

    .line 1402
    :cond_8
    move-object v8, v2

    invoke-virtual {v8}, Ljavafx/util/Duration;->toMillis()D

    move-result-wide v8

    const-wide v10, 0x408f400000000000L    # 1000.0

    div-double/2addr v8, v10

    move-wide v4, v8

    .line 1405
    .restart local v4    # "seekSeconds":D
    move-object v8, v1

    move-object v9, v1

    invoke-virtual {v9}, Ljavafx/scene/media/MediaPlayer;->getStartTime()Ljavafx/util/Duration;

    move-result-object v9

    move-object v10, v1

    invoke-virtual {v10}, Ljavafx/scene/media/MediaPlayer;->getStopTime()Ljavafx/util/Duration;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Ljavafx/scene/media/MediaPlayer;->calculateStartStopTimes(Ljavafx/util/Duration;Ljavafx/util/Duration;)[D

    move-result-object v8

    move-object v6, v8

    .line 1406
    .local v6, "startStop":[D
    move-wide v8, v4

    move-object v10, v6

    const/4 v11, 0x0

    aget-wide v10, v10, v11

    cmpg-double v8, v8, v10

    if-gez v8, :cond_9

    .line 1407
    move-object v8, v6

    const/4 v9, 0x0

    aget-wide v8, v8, v9

    move-wide v4, v8

    goto :goto_1

    .line 1408
    :cond_9
    move-wide v8, v4

    move-object v10, v6

    const/4 v11, 0x1

    aget-wide v10, v10, v11

    cmpl-double v8, v8, v10

    if-lez v8, :cond_4

    .line 1409
    move-object v8, v6

    const/4 v9, 0x1

    aget-wide v8, v8, v9

    move-wide v4, v8

    goto/16 :goto_1

    .line 1430
    .end local v4    # "seekSeconds":D
    .end local v6    # "startStop":[D
    :catchall_0
    move-exception v8

    move-object v7, v8

    move-object v8, v3

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v8, v7

    throw v8
.end method

.method public final setAudioSpectrumInterval(D)V
    .locals 7

    .prologue
    .line 2192
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaPlayer;
    move-wide v1, p1

    .local v1, "value":D
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/media/MediaPlayer;->audioSpectrumIntervalProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v3

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    .line 2193
    return-void
.end method

.method public final setAudioSpectrumListener(Ljavafx/scene/media/AudioSpectrumListener;)V
    .locals 4

    .prologue
    .line 2306
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaPlayer;
    move-object v1, p1

    .local v1, "listener":Ljavafx/scene/media/AudioSpectrumListener;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/media/MediaPlayer;->audioSpectrumListenerProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 2307
    return-void
.end method

.method public final setAudioSpectrumNumBands(I)V
    .locals 4

    .prologue
    .line 2139
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaPlayer;
    move v1, p1

    .local v1, "value":I
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/media/MediaPlayer;->audioSpectrumNumBandsProperty()Ljavafx/beans/property/IntegerProperty;

    move-result-object v2

    move v3, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljavafx/beans/property/IntegerProperty;->setValue(Ljava/lang/Number;)V

    .line 2140
    return-void
.end method

.method public final setAudioSpectrumThreshold(I)V
    .locals 4

    .prologue
    .line 2247
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaPlayer;
    move v1, p1

    .local v1, "value":I
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/media/MediaPlayer;->audioSpectrumThresholdProperty()Ljavafx/beans/property/IntegerProperty;

    move-result-object v2

    move v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/IntegerProperty;->set(I)V

    .line 2248
    return-void
.end method

.method public final setAutoPlay(Z)V
    .locals 4

    .prologue
    .line 665
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaPlayer;
    move v1, p1

    .local v1, "value":Z
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/media/MediaPlayer;->autoPlayProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v2

    move v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/BooleanProperty;->set(Z)V

    .line 666
    return-void
.end method

.method public final setBalance(D)V
    .locals 7

    .prologue
    .line 925
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaPlayer;
    move-wide v1, p1

    .local v1, "value":D
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/media/MediaPlayer;->balanceProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v3

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    .line 926
    return-void
.end method

.method public final setCycleCount(I)V
    .locals 4

    .prologue
    .line 1556
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaPlayer;
    move v1, p1

    .local v1, "value":I
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/media/MediaPlayer;->cycleCountProperty()Ljavafx/beans/property/IntegerProperty;

    move-result-object v2

    move v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/IntegerProperty;->set(I)V

    .line 1557
    return-void
.end method

.method public final setMute(Z)V
    .locals 4

    .prologue
    .line 1632
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaPlayer;
    move v1, p1

    .local v1, "value":Z
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/media/MediaPlayer;->muteProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v2

    move v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/BooleanProperty;->set(Z)V

    .line 1633
    return-void
.end method

.method public final setOnEndOfMedia(Ljava/lang/Runnable;)V
    .locals 4

    .prologue
    .line 1898
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaPlayer;
    move-object v1, p1

    .local v1, "value":Ljava/lang/Runnable;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/media/MediaPlayer;->onEndOfMediaProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 1899
    return-void
.end method

.method public final setOnError(Ljava/lang/Runnable;)V
    .locals 4

    .prologue
    .line 595
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaPlayer;
    move-object v1, p1

    .local v1, "value":Ljava/lang/Runnable;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/media/MediaPlayer;->onErrorProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 596
    return-void
.end method

.method public final setOnHalted(Ljava/lang/Runnable;)V
    .locals 4

    .prologue
    .line 2041
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaPlayer;
    move-object v1, p1

    .local v1, "value":Ljava/lang/Runnable;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/media/MediaPlayer;->onHaltedProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 2042
    return-void
.end method

.method public final setOnMarker(Ljavafx/event/EventHandler;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/scene/media/MediaMarkerEvent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1685
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaPlayer;
    move-object v1, p1

    .local v1, "onMarker":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<Ljavafx/scene/media/MediaMarkerEvent;>;"
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/media/MediaPlayer;->onMarkerProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 1686
    return-void
.end method

.method public final setOnPaused(Ljava/lang/Runnable;)V
    .locals 4

    .prologue
    .line 1984
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaPlayer;
    move-object v1, p1

    .local v1, "value":Ljava/lang/Runnable;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/media/MediaPlayer;->onPausedProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 1985
    return-void
.end method

.method public final setOnPlaying(Ljava/lang/Runnable;)V
    .locals 4

    .prologue
    .line 1956
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaPlayer;
    move-object v1, p1

    .local v1, "value":Ljava/lang/Runnable;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/media/MediaPlayer;->onPlayingProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 1957
    return-void
.end method

.method public final setOnReady(Ljava/lang/Runnable;)V
    .locals 4

    .prologue
    .line 1927
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaPlayer;
    move-object v1, p1

    .local v1, "value":Ljava/lang/Runnable;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/media/MediaPlayer;->onReadyProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 1928
    return-void
.end method

.method public final setOnRepeat(Ljava/lang/Runnable;)V
    .locals 4

    .prologue
    .line 2072
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaPlayer;
    move-object v1, p1

    .local v1, "value":Ljava/lang/Runnable;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/media/MediaPlayer;->onRepeatProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 2073
    return-void
.end method

.method public final setOnStalled(Ljava/lang/Runnable;)V
    .locals 4

    .prologue
    .line 2101
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaPlayer;
    move-object v1, p1

    .local v1, "value":Ljava/lang/Runnable;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/media/MediaPlayer;->onStalledProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 2102
    return-void
.end method

.method public final setOnStopped(Ljava/lang/Runnable;)V
    .locals 4

    .prologue
    .line 2013
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaPlayer;
    move-object v1, p1

    .local v1, "value":Ljava/lang/Runnable;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/media/MediaPlayer;->onStoppedProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 2014
    return-void
.end method

.method public final setRate(D)V
    .locals 7

    .prologue
    .line 780
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaPlayer;
    move-wide v1, p1

    .local v1, "value":D
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/media/MediaPlayer;->rateProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v3

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    .line 781
    return-void
.end method

.method public final setStartTime(Ljavafx/util/Duration;)V
    .locals 4

    .prologue
    .line 1073
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaPlayer;
    move-object v1, p1

    .local v1, "value":Ljavafx/util/Duration;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/media/MediaPlayer;->startTimeProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 1074
    return-void
.end method

.method public final setStopTime(Ljavafx/util/Duration;)V
    .locals 4

    .prologue
    .line 1131
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaPlayer;
    move-object v1, p1

    .local v1, "value":Ljavafx/util/Duration;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/media/MediaPlayer;->stopTimeProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 1132
    return-void
.end method

.method public final setVolume(D)V
    .locals 7

    .prologue
    .line 869
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaPlayer;
    move-wide v1, p1

    .local v1, "value":D
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/media/MediaPlayer;->volumeProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v3

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    .line 870
    return-void
.end method

.method public startTimeProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/util/Duration;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1085
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaPlayer;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/media/MediaPlayer;->startTime:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    .line 1086
    move-object v1, v0

    new-instance v2, Ljavafx/scene/media/MediaPlayer$7;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/media/MediaPlayer$7;-><init>(Ljavafx/scene/media/MediaPlayer;)V

    iput-object v2, v1, Ljavafx/scene/media/MediaPlayer;->startTime:Ljavafx/beans/property/ObjectProperty;

    .line 1113
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/media/MediaPlayer;->startTime:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/media/MediaPlayer;
    return-object v0
.end method

.method public statusProperty()Ljavafx/beans/property/ReadOnlyObjectProperty;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ReadOnlyObjectProperty",
            "<",
            "Ljavafx/scene/media/MediaPlayer$Status;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1450
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaPlayer;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/media/MediaPlayer;->statusPropertyImpl()Ljavafx/beans/property/ReadOnlyObjectWrapper;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/beans/property/ReadOnlyObjectWrapper;->getReadOnlyProperty()Ljavafx/beans/property/ReadOnlyObjectProperty;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/media/MediaPlayer;
    return-object v0
.end method

.method public stop()V
    .locals 6

    .prologue
    .line 751
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaPlayer;
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/media/MediaPlayer;->disposeLock:Ljava/lang/Object;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    move-object v1, v4

    monitor-enter v3

    .line 752
    move-object v3, v0

    :try_start_0
    invoke-virtual {v3}, Ljavafx/scene/media/MediaPlayer;->getStatus()Ljavafx/scene/media/MediaPlayer$Status;

    move-result-object v3

    sget-object v4, Ljavafx/scene/media/MediaPlayer$Status;->DISPOSED:Ljavafx/scene/media/MediaPlayer$Status;

    if-eq v3, v4, :cond_0

    .line 753
    move-object v3, v0

    iget-boolean v3, v3, Ljavafx/scene/media/MediaPlayer;->playerReady:Z

    if-eqz v3, :cond_1

    .line 754
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/media/MediaPlayer;->jfxPlayer:Lcom/sun/media/jfxmedia/MediaPlayer;

    invoke-interface {v3}, Lcom/sun/media/jfxmedia/MediaPlayer;->stop()V

    .line 755
    move-object v3, v0

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Ljavafx/scene/media/MediaPlayer;->setCurrentCount(I)V

    .line 756
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/media/MediaPlayer;->destroyMediaTimer()V

    .line 761
    :cond_0
    :goto_0
    move-object v3, v1

    monitor-exit v3

    .line 762
    return-void

    .line 758
    :cond_1
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Ljavafx/scene/media/MediaPlayer;->playRequested:Z

    goto :goto_0

    .line 761
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

.method public stopTimeProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/util/Duration;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1146
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaPlayer;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/media/MediaPlayer;->stopTime:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    .line 1147
    move-object v1, v0

    new-instance v2, Ljavafx/scene/media/MediaPlayer$8;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/media/MediaPlayer$8;-><init>(Ljavafx/scene/media/MediaPlayer;)V

    iput-object v2, v1, Ljavafx/scene/media/MediaPlayer;->stopTime:Ljavafx/beans/property/ObjectProperty;

    .line 1174
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/media/MediaPlayer;->stopTime:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/media/MediaPlayer;
    return-object v0
.end method

.method public totalDurationProperty()Ljavafx/beans/property/ReadOnlyObjectProperty;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ReadOnlyObjectProperty",
            "<",
            "Ljavafx/util/Duration;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1256
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaPlayer;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/media/MediaPlayer;->totalDurationPropertyImpl()Ljavafx/beans/property/ReadOnlyObjectWrapper;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/beans/property/ReadOnlyObjectWrapper;->getReadOnlyProperty()Ljavafx/beans/property/ReadOnlyObjectProperty;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/media/MediaPlayer;
    return-object v0
.end method

.method updateTime()V
    .locals 10

    .prologue
    .line 1758
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/media/MediaPlayer;
    move-object v6, v1

    iget-boolean v6, v6, Ljavafx/scene/media/MediaPlayer;->playerReady:Z

    if-eqz v6, :cond_0

    move-object v6, v1

    iget-boolean v6, v6, Ljavafx/scene/media/MediaPlayer;->isUpdateTimeEnabled:Z

    if-eqz v6, :cond_0

    move-object v6, v1

    iget-object v6, v6, Ljavafx/scene/media/MediaPlayer;->jfxPlayer:Lcom/sun/media/jfxmedia/MediaPlayer;

    if-eqz v6, :cond_0

    .line 1759
    move-object v6, v1

    iget-object v6, v6, Ljavafx/scene/media/MediaPlayer;->jfxPlayer:Lcom/sun/media/jfxmedia/MediaPlayer;

    invoke-interface {v6}, Lcom/sun/media/jfxmedia/MediaPlayer;->getPresentationTime()D

    move-result-wide v6

    move-wide v2, v6

    .line 1760
    .local v2, "timeSeconds":D
    move-wide v6, v2

    const-wide/16 v8, 0x0

    cmpl-double v6, v6, v8

    if-ltz v6, :cond_0

    .line 1761
    move-wide v6, v2

    const-wide v8, 0x408f400000000000L    # 1000.0

    mul-double/2addr v6, v8

    move-wide v4, v6

    .line 1763
    .local v4, "newTimeMs":D
    move-wide v6, v4

    move-object v8, v1

    iget-wide v8, v8, Ljavafx/scene/media/MediaPlayer;->prevTimeMs:D

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Double;->compare(DD)I

    move-result v6

    if-eqz v6, :cond_0

    .line 1764
    move-object v6, v1

    move-wide v7, v4

    invoke-static {v7, v8}, Ljavafx/util/Duration;->millis(D)Ljavafx/util/Duration;

    move-result-object v7

    invoke-direct {v6, v7}, Ljavafx/scene/media/MediaPlayer;->setCurrentTime(Ljavafx/util/Duration;)V

    .line 1765
    move-object v6, v1

    move-wide v7, v4

    iput-wide v7, v6, Ljavafx/scene/media/MediaPlayer;->prevTimeMs:D

    .line 1769
    .end local v2    # "timeSeconds":D
    .end local v4    # "newTimeMs":D
    :cond_0
    return-void
.end method

.method public volumeProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 9

    .prologue
    .line 881
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/media/MediaPlayer;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/media/MediaPlayer;->volume:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    .line 882
    move-object v2, v1

    new-instance v3, Ljavafx/scene/media/MediaPlayer$5;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v1

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    invoke-direct {v4, v5, v6, v7}, Ljavafx/scene/media/MediaPlayer$5;-><init>(Ljavafx/scene/media/MediaPlayer;D)V

    iput-object v3, v2, Ljavafx/scene/media/MediaPlayer;->volume:Ljavafx/beans/property/DoubleProperty;

    .line 908
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/media/MediaPlayer;->volume:Ljavafx/beans/property/DoubleProperty;

    move-object v1, v2

    .end local v1    # "this":Ljavafx/scene/media/MediaPlayer;
    return-object v1
.end method
