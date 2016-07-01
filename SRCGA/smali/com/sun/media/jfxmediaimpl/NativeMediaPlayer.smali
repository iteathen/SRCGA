.class public abstract Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;
.super Ljava/lang/Object;
.source "NativeMediaPlayer.java"

# interfaces
.implements Lcom/sun/media/jfxmedia/MediaPlayer;
.implements Lcom/sun/media/jfxmediaimpl/MarkerStateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$EventQueueThread;,
        Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$VideoRenderer;,
        Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$FrameSizeChangedEvent;,
        Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$TrackEvent;,
        Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$PlayerTimeEvent;,
        Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$MediaErrorEvent;,
        Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$WarningEvent;
    }
.end annotation


# static fields
.field private static final NOMINAL_VIDEO_FPS:I = 0x1e

.field public static final ONE_SECOND:J = 0x3b9aca00L

.field public static final eventPlayerError:I = 0x6b

.field public static final eventPlayerFinished:I = 0x6a

.field public static final eventPlayerPaused:I = 0x67

.field public static final eventPlayerPlaying:I = 0x66

.field public static final eventPlayerReady:I = 0x65

.field public static final eventPlayerStalled:I = 0x69

.field public static final eventPlayerStopped:I = 0x68

.field public static final eventPlayerUnknown:I = 0x64


# instance fields
.field private final audioSpectrumListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/sun/media/jfxmedia/events/AudioSpectrumListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private final bufferListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/sun/media/jfxmedia/events/BufferListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private final cachedBufferEvents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sun/media/jfxmedia/events/BufferProgressEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final cachedErrorEvents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$MediaErrorEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final cachedStateEvents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sun/media/jfxmedia/events/PlayerStateEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final cachedTimeEvents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$PlayerTimeEvent;",
            ">;"
        }
    .end annotation
.end field

.field private checkSeek:Z

.field private decodedFrameRate:D

.field private final disposeLock:Ljava/util/concurrent/locks/Lock;

.field private encodedFrameRate:D

.field private final errorListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/sun/media/jfxmedia/events/MediaErrorListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private eventLoop:Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$EventQueueThread;

.field private firedMarkerTime:D

.field private firstFrameEvent:Lcom/sun/media/jfxmedia/events/NewFrameEvent;

.field private final firstFrameLock:Ljava/lang/Object;

.field private firstFrameTime:D

.field private frameHeight:I

.field private frameWidth:I

.field private isDisposed:Z

.field private isFirstFrame:Z

.field private final isMediaPulseEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private isStartTimeUpdated:Z

.field private isStopTimeSet:Z

.field private final markerListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/sun/media/jfxmedia/events/MarkerListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private final markerLock:Ljava/util/concurrent/locks/Lock;

.field private meanFrameDuration:D

.field private media:Lcom/sun/media/jfxmediaimpl/NativeMedia;

.field private final mediaPulseLock:Ljava/util/concurrent/locks/Lock;

.field private mediaPulseTimer:Ljava/util/Timer;

.field private numFramesSincePlaying:J

.field private onDispose:Ljava/lang/Runnable;

.field private playerState:Lcom/sun/media/jfxmedia/events/PlayerStateEvent$PlayerState;

.field private final playerStateListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/sun/media/jfxmedia/events/PlayerStateListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private final playerTimeListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/sun/media/jfxmedia/events/PlayerTimeListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private previousFrameTime:D

.field private previousTime:D

.field private recomputeFrameRate:Z

.field private startTime:D

.field private stopTime:D

.field private timeAfterSeek:D

.field private timeBeforeSeek:D

.field private final videoFrameRateListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/sun/media/jfxmedia/events/VideoFrameRateListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private videoRenderControl:Lcom/sun/media/jfxmedia/control/VideoRenderControl;

.field private final videoTrackSizeListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/sun/media/jfxmedia/events/VideoTrackSizeListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private final videoUpdateListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/sun/media/jfxmedia/events/VideoRendererListener;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/sun/media/jfxmediaimpl/NativeMedia;)V
    .locals 9

    .prologue
    .line 150
    move-object v1, p0

    .local v1, "this":Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;
    move-object v2, p1

    .local v2, "clip":Lcom/sun/media/jfxmediaimpl/NativeMedia;
    move-object v3, v1

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 92
    move-object v3, v1

    new-instance v4, Ljava/util/ArrayList;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v3, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->errorListeners:Ljava/util/List;

    .line 93
    move-object v3, v1

    new-instance v4, Ljava/util/ArrayList;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v3, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->playerStateListeners:Ljava/util/List;

    .line 94
    move-object v3, v1

    new-instance v4, Ljava/util/ArrayList;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v3, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->playerTimeListeners:Ljava/util/List;

    .line 95
    move-object v3, v1

    new-instance v4, Ljava/util/ArrayList;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v3, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->videoTrackSizeListeners:Ljava/util/List;

    .line 96
    move-object v3, v1

    new-instance v4, Ljava/util/ArrayList;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v3, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->videoUpdateListeners:Ljava/util/List;

    .line 97
    move-object v3, v1

    new-instance v4, Ljava/util/ArrayList;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v3, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->videoFrameRateListeners:Ljava/util/List;

    .line 98
    move-object v3, v1

    new-instance v4, Ljava/util/ArrayList;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v3, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->markerListeners:Ljava/util/List;

    .line 99
    move-object v3, v1

    new-instance v4, Ljava/util/ArrayList;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v3, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->bufferListeners:Ljava/util/List;

    .line 100
    move-object v3, v1

    new-instance v4, Ljava/util/ArrayList;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v3, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->audioSpectrumListeners:Ljava/util/List;

    .line 101
    move-object v3, v1

    new-instance v4, Ljava/util/ArrayList;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v3, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->cachedStateEvents:Ljava/util/List;

    .line 102
    move-object v3, v1

    new-instance v4, Ljava/util/ArrayList;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v3, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->cachedTimeEvents:Ljava/util/List;

    .line 103
    move-object v3, v1

    new-instance v4, Ljava/util/ArrayList;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v3, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->cachedBufferEvents:Ljava/util/List;

    .line 104
    move-object v3, v1

    new-instance v4, Ljava/util/ArrayList;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v3, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->cachedErrorEvents:Ljava/util/List;

    .line 105
    move-object v3, v1

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->isFirstFrame:Z

    .line 106
    move-object v3, v1

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->firstFrameEvent:Lcom/sun/media/jfxmedia/events/NewFrameEvent;

    .line 108
    move-object v3, v1

    new-instance v4, Ljava/lang/Object;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    iput-object v4, v3, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->firstFrameLock:Ljava/lang/Object;

    .line 109
    move-object v3, v1

    new-instance v4, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$EventQueueThread;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v1

    invoke-direct {v5, v6}, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$EventQueueThread;-><init>(Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;)V

    iput-object v4, v3, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->eventLoop:Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$EventQueueThread;

    .line 110
    move-object v3, v1

    const/4 v4, -0x1

    iput v4, v3, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->frameWidth:I

    .line 111
    move-object v3, v1

    const/4 v4, -0x1

    iput v4, v3, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->frameHeight:I

    .line 112
    move-object v3, v1

    new-instance v4, Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v4, v3, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->isMediaPulseEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 113
    move-object v3, v1

    new-instance v4, Ljava/util/concurrent/locks/ReentrantLock;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    invoke-direct {v5}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v4, v3, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->mediaPulseLock:Ljava/util/concurrent/locks/Lock;

    .line 115
    move-object v3, v1

    new-instance v4, Ljava/util/concurrent/locks/ReentrantLock;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    invoke-direct {v5}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v4, v3, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->markerLock:Ljava/util/concurrent/locks/Lock;

    .line 116
    move-object v3, v1

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->checkSeek:Z

    .line 117
    move-object v3, v1

    const-wide/16 v4, 0x0

    iput-wide v4, v3, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->timeBeforeSeek:D

    .line 118
    move-object v3, v1

    const-wide/16 v4, 0x0

    iput-wide v4, v3, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->timeAfterSeek:D

    .line 119
    move-object v3, v1

    const-wide/16 v4, 0x0

    iput-wide v4, v3, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->previousTime:D

    .line 120
    move-object v3, v1

    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    iput-wide v4, v3, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->firedMarkerTime:D

    .line 121
    move-object v3, v1

    const-wide/16 v4, 0x0

    iput-wide v4, v3, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->startTime:D

    .line 122
    move-object v3, v1

    const-wide/high16 v4, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    iput-wide v4, v3, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->stopTime:D

    .line 123
    move-object v3, v1

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->isStartTimeUpdated:Z

    .line 124
    move-object v3, v1

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->isStopTimeSet:Z

    .line 127
    move-object v3, v1

    const-wide/16 v4, 0x0

    iput-wide v4, v3, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->encodedFrameRate:D

    .line 128
    move-object v3, v1

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->recomputeFrameRate:Z

    .line 134
    move-object v3, v1

    sget-object v4, Lcom/sun/media/jfxmedia/events/PlayerStateEvent$PlayerState;->UNKNOWN:Lcom/sun/media/jfxmedia/events/PlayerStateEvent$PlayerState;

    iput-object v4, v3, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->playerState:Lcom/sun/media/jfxmedia/events/PlayerStateEvent$PlayerState;

    .line 135
    move-object v3, v1

    new-instance v4, Ljava/util/concurrent/locks/ReentrantLock;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    invoke-direct {v5}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v4, v3, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->disposeLock:Ljava/util/concurrent/locks/Lock;

    .line 136
    move-object v3, v1

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->isDisposed:Z

    .line 151
    move-object v3, v2

    if-nez v3, :cond_0

    .line 152
    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    const-string v5, "clip == null!"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 154
    :cond_0
    move-object v3, v1

    move-object v4, v2

    iput-object v4, v3, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->media:Lcom/sun/media/jfxmediaimpl/NativeMedia;

    .line 155
    move-object v3, v1

    new-instance v4, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$VideoRenderer;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v1

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$VideoRenderer;-><init>(Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$1;)V

    iput-object v4, v3, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->videoRenderControl:Lcom/sun/media/jfxmedia/control/VideoRenderControl;

    .line 156
    return-void
.end method

.method static synthetic access$100(Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 70
    move-object v0, p0

    .local v0, "x0":Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->firstFrameLock:Ljava/lang/Object;

    move-object v0, v1

    .end local v0    # "x0":Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;
    return-object v0
.end method

.method static synthetic access$1000(Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;)D
    .locals 3

    .prologue
    .line 70
    move-object v0, p0

    .local v0, "x0":Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;
    move-object v1, v0

    iget-wide v1, v1, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->previousFrameTime:D

    move-wide v0, v1

    .end local v0    # "x0":Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;
    return-wide v0
.end method

.method static synthetic access$1002(Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;D)D
    .locals 13

    .prologue
    .line 70
    move-object v1, p0

    .local v1, "x0":Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;
    move-wide v2, p1

    .local v2, "x1":D
    move-object v4, v1

    move-wide v5, v2

    move-object v9, v4

    move-wide v10, v5

    move-wide v4, v10

    move-object v6, v9

    move-wide v7, v10

    iput-wide v7, v6, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->previousFrameTime:D

    move-wide v1, v4

    .end local v1    # "x0":Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;
    return-wide v1
.end method

.method static synthetic access$1100(Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;)J
    .locals 3

    .prologue
    .line 70
    move-object v0, p0

    .local v0, "x0":Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;
    move-object v1, v0

    iget-wide v1, v1, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->numFramesSincePlaying:J

    move-wide v0, v1

    .end local v0    # "x0":Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;
    return-wide v0
.end method

.method static synthetic access$1102(Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;J)J
    .locals 13

    .prologue
    .line 70
    move-object v1, p0

    .local v1, "x0":Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;
    move-wide v2, p1

    .local v2, "x1":J
    move-object v4, v1

    move-wide v5, v2

    move-object v9, v4

    move-wide v10, v5

    move-wide v4, v10

    move-object v6, v9

    move-wide v7, v10

    iput-wide v7, v6, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->numFramesSincePlaying:J

    move-wide v1, v4

    .end local v1    # "x0":Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;
    return-wide v1
.end method

.method static synthetic access$1108(Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;)J
    .locals 11

    .prologue
    .line 70
    move-object v0, p0

    .local v0, "x0":Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;
    move-object v1, v0

    move-object v8, v1

    move-object v1, v8

    move-object v2, v8

    iget-wide v2, v2, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->numFramesSincePlaying:J

    move-object v8, v1

    move-wide v9, v2

    move-wide v1, v9

    move-object v3, v8

    move-wide v4, v9

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    iput-wide v4, v3, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->numFramesSincePlaying:J

    move-wide v0, v1

    .end local v0    # "x0":Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;
    return-wide v0
.end method

.method static synthetic access$1200(Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;)D
    .locals 3

    .prologue
    .line 70
    move-object v0, p0

    .local v0, "x0":Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;
    move-object v1, v0

    iget-wide v1, v1, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->meanFrameDuration:D

    move-wide v0, v1

    .end local v0    # "x0":Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;
    return-wide v0
.end method

.method static synthetic access$1202(Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;D)D
    .locals 13

    .prologue
    .line 70
    move-object v1, p0

    .local v1, "x0":Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;
    move-wide v2, p1

    .local v2, "x1":D
    move-object v4, v1

    move-wide v5, v2

    move-object v9, v4

    move-wide v10, v5

    move-wide v4, v10

    move-object v6, v9

    move-wide v7, v10

    iput-wide v7, v6, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->meanFrameDuration:D

    move-wide v1, v4

    .end local v1    # "x0":Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;
    return-wide v1
.end method

.method static synthetic access$1300(Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;)D
    .locals 3

    .prologue
    .line 70
    move-object v0, p0

    .local v0, "x0":Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;
    move-object v1, v0

    iget-wide v1, v1, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->decodedFrameRate:D

    move-wide v0, v1

    .end local v0    # "x0":Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;
    return-wide v0
.end method

.method static synthetic access$1302(Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;D)D
    .locals 13

    .prologue
    .line 70
    move-object v1, p0

    .local v1, "x0":Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;
    move-wide v2, p1

    .local v2, "x1":D
    move-object v4, v1

    move-wide v5, v2

    move-object v9, v4

    move-wide v10, v5

    move-wide v4, v10

    move-object v6, v9

    move-wide v7, v10

    iput-wide v7, v6, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->decodedFrameRate:D

    move-wide v1, v4

    .end local v1    # "x0":Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;
    return-wide v1
.end method

.method static synthetic access$1400(Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;)D
    .locals 3

    .prologue
    .line 70
    move-object v0, p0

    .local v0, "x0":Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;
    move-object v1, v0

    iget-wide v1, v1, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->encodedFrameRate:D

    move-wide v0, v1

    .end local v0    # "x0":Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;
    return-wide v0
.end method

.method static synthetic access$1402(Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;D)D
    .locals 13

    .prologue
    .line 70
    move-object v1, p0

    .local v1, "x0":Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;
    move-wide v2, p1

    .local v2, "x1":D
    move-object v4, v1

    move-wide v5, v2

    move-object v9, v4

    move-wide v10, v5

    move-wide v4, v10

    move-object v6, v9

    move-wide v7, v10

    iput-wide v7, v6, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->encodedFrameRate:D

    move-wide v1, v4

    .end local v1    # "x0":Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;
    return-wide v1
.end method

.method static synthetic access$1500(Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;)Lcom/sun/media/jfxmedia/events/PlayerStateEvent$PlayerState;
    .locals 2

    .prologue
    .line 70
    move-object v0, p0

    .local v0, "x0":Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->playerState:Lcom/sun/media/jfxmedia/events/PlayerStateEvent$PlayerState;

    move-object v0, v1

    .end local v0    # "x0":Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;
    return-object v0
.end method

.method static synthetic access$1502(Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;Lcom/sun/media/jfxmedia/events/PlayerStateEvent$PlayerState;)Lcom/sun/media/jfxmedia/events/PlayerStateEvent$PlayerState;
    .locals 7

    .prologue
    .line 70
    move-object v0, p0

    .local v0, "x0":Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;
    move-object v1, p1

    .local v1, "x1":Lcom/sun/media/jfxmedia/events/PlayerStateEvent$PlayerState;
    move-object v2, v0

    move-object v3, v1

    move-object v5, v2

    move-object v6, v3

    move-object v2, v6

    move-object v3, v5

    move-object v4, v6

    iput-object v4, v3, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->playerState:Lcom/sun/media/jfxmedia/events/PlayerStateEvent$PlayerState;

    move-object v0, v2

    .end local v0    # "x0":Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;
    return-object v0
.end method

.method static synthetic access$1600(Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;)V
    .locals 2

    .prologue
    .line 70
    move-object v0, p0

    .local v0, "x0":Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->onNativeInit()V

    return-void
.end method

.method static synthetic access$1700(Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 2

    .prologue
    .line 70
    move-object v0, p0

    .local v0, "x0":Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->isMediaPulseEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object v0, v1

    .end local v0    # "x0":Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;
    return-object v0
.end method

.method static synthetic access$1800(Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;)Ljava/util/List;
    .locals 2

    .prologue
    .line 70
    move-object v0, p0

    .local v0, "x0":Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->cachedStateEvents:Ljava/util/List;

    move-object v0, v1

    .end local v0    # "x0":Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;
    return-object v0
.end method

.method static synthetic access$1900(Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;)Ljava/util/List;
    .locals 2

    .prologue
    .line 70
    move-object v0, p0

    .local v0, "x0":Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->playerStateListeners:Ljava/util/List;

    move-object v0, v1

    .end local v0    # "x0":Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;
    return-object v0
.end method

.method static synthetic access$200(Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;)Lcom/sun/media/jfxmedia/events/NewFrameEvent;
    .locals 2

    .prologue
    .line 70
    move-object v0, p0

    .local v0, "x0":Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->firstFrameEvent:Lcom/sun/media/jfxmedia/events/NewFrameEvent;

    move-object v0, v1

    .end local v0    # "x0":Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;
    return-object v0
.end method

.method static synthetic access$2000(Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;)Ljava/util/List;
    .locals 2

    .prologue
    .line 70
    move-object v0, p0

    .local v0, "x0":Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->cachedTimeEvents:Ljava/util/List;

    move-object v0, v1

    .end local v0    # "x0":Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;
    return-object v0
.end method

.method static synthetic access$202(Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;Lcom/sun/media/jfxmedia/events/NewFrameEvent;)Lcom/sun/media/jfxmedia/events/NewFrameEvent;
    .locals 7

    .prologue
    .line 70
    move-object v0, p0

    .local v0, "x0":Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;
    move-object v1, p1

    .local v1, "x1":Lcom/sun/media/jfxmedia/events/NewFrameEvent;
    move-object v2, v0

    move-object v3, v1

    move-object v5, v2

    move-object v6, v3

    move-object v2, v6

    move-object v3, v5

    move-object v4, v6

    iput-object v4, v3, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->firstFrameEvent:Lcom/sun/media/jfxmedia/events/NewFrameEvent;

    move-object v0, v2

    .end local v0    # "x0":Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;
    return-object v0
.end method

.method static synthetic access$2100(Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;)Ljava/util/List;
    .locals 2

    .prologue
    .line 70
    move-object v0, p0

    .local v0, "x0":Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->playerTimeListeners:Ljava/util/List;

    move-object v0, v1

    .end local v0    # "x0":Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;
    return-object v0
.end method

.method static synthetic access$2200(Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;)Ljava/util/List;
    .locals 2

    .prologue
    .line 70
    move-object v0, p0

    .local v0, "x0":Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->videoTrackSizeListeners:Ljava/util/List;

    move-object v0, v1

    .end local v0    # "x0":Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;
    return-object v0
.end method

.method static synthetic access$2300(Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;)Lcom/sun/media/jfxmediaimpl/NativeMedia;
    .locals 2

    .prologue
    .line 70
    move-object v0, p0

    .local v0, "x0":Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->media:Lcom/sun/media/jfxmediaimpl/NativeMedia;

    move-object v0, v1

    .end local v0    # "x0":Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;
    return-object v0
.end method

.method static synthetic access$2400(Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;)Ljava/util/List;
    .locals 2

    .prologue
    .line 70
    move-object v0, p0

    .local v0, "x0":Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->markerListeners:Ljava/util/List;

    move-object v0, v1

    .end local v0    # "x0":Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;
    return-object v0
.end method

.method static synthetic access$2500(Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;)Ljava/util/List;
    .locals 2

    .prologue
    .line 70
    move-object v0, p0

    .local v0, "x0":Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->cachedErrorEvents:Ljava/util/List;

    move-object v0, v1

    .end local v0    # "x0":Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;
    return-object v0
.end method

.method static synthetic access$2600(Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;)Ljava/util/List;
    .locals 2

    .prologue
    .line 70
    move-object v0, p0

    .local v0, "x0":Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->errorListeners:Ljava/util/List;

    move-object v0, v1

    .end local v0    # "x0":Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;
    return-object v0
.end method

.method static synthetic access$2700(Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;)Ljava/util/List;
    .locals 2

    .prologue
    .line 70
    move-object v0, p0

    .local v0, "x0":Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->cachedBufferEvents:Ljava/util/List;

    move-object v0, v1

    .end local v0    # "x0":Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;
    return-object v0
.end method

.method static synthetic access$2800(Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;)Ljava/util/List;
    .locals 2

    .prologue
    .line 70
    move-object v0, p0

    .local v0, "x0":Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->bufferListeners:Ljava/util/List;

    move-object v0, v1

    .end local v0    # "x0":Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;
    return-object v0
.end method

.method static synthetic access$2900(Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;)Ljava/util/List;
    .locals 2

    .prologue
    .line 70
    move-object v0, p0

    .local v0, "x0":Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->audioSpectrumListeners:Ljava/util/List;

    move-object v0, v1

    .end local v0    # "x0":Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;
    return-object v0
.end method

.method static synthetic access$300(Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;)Ljava/util/List;
    .locals 2

    .prologue
    .line 70
    move-object v0, p0

    .local v0, "x0":Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->videoUpdateListeners:Ljava/util/List;

    move-object v0, v1

    .end local v0    # "x0":Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;
    return-object v0
.end method

.method static synthetic access$400(Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;)Ljava/util/List;
    .locals 2

    .prologue
    .line 70
    move-object v0, p0

    .local v0, "x0":Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->videoFrameRateListeners:Ljava/util/List;

    move-object v0, v1

    .end local v0    # "x0":Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;
    return-object v0
.end method

.method static synthetic access$500(Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;)I
    .locals 2

    .prologue
    .line 70
    move-object v0, p0

    .local v0, "x0":Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;
    move-object v1, v0

    iget v1, v1, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->frameWidth:I

    move v0, v1

    .end local v0    # "x0":Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;
    return v0
.end method

.method static synthetic access$502(Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;I)I
    .locals 7

    .prologue
    .line 70
    move-object v0, p0

    .local v0, "x0":Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;
    move v1, p1

    .local v1, "x1":I
    move-object v2, v0

    move v3, v1

    move-object v5, v2

    move v6, v3

    move v2, v6

    move-object v3, v5

    move v4, v6

    iput v4, v3, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->frameWidth:I

    move v0, v2

    .end local v0    # "x0":Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;
    return v0
.end method

.method static synthetic access$600(Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;)I
    .locals 2

    .prologue
    .line 70
    move-object v0, p0

    .local v0, "x0":Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;
    move-object v1, v0

    iget v1, v1, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->frameHeight:I

    move v0, v1

    .end local v0    # "x0":Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;
    return v0
.end method

.method static synthetic access$602(Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;I)I
    .locals 7

    .prologue
    .line 70
    move-object v0, p0

    .local v0, "x0":Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;
    move v1, p1

    .local v1, "x1":I
    move-object v2, v0

    move v3, v1

    move-object v5, v2

    move v6, v3

    move v2, v6

    move-object v3, v5

    move v4, v6

    iput v4, v3, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->frameHeight:I

    move v0, v2

    .end local v0    # "x0":Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;
    return v0
.end method

.method static synthetic access$700(Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;)Z
    .locals 2

    .prologue
    .line 70
    move-object v0, p0

    .local v0, "x0":Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;
    move-object v1, v0

    iget-boolean v1, v1, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->isFirstFrame:Z

    move v0, v1

    .end local v0    # "x0":Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;
    return v0
.end method

.method static synthetic access$702(Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;Z)Z
    .locals 7

    .prologue
    .line 70
    move-object v0, p0

    .local v0, "x0":Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;
    move v1, p1

    .local v1, "x1":Z
    move-object v2, v0

    move v3, v1

    move-object v5, v2

    move v6, v3

    move v2, v6

    move-object v3, v5

    move v4, v6

    iput-boolean v4, v3, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->isFirstFrame:Z

    move v0, v2

    .end local v0    # "x0":Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;
    return v0
.end method

.method static synthetic access$800(Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;)D
    .locals 3

    .prologue
    .line 70
    move-object v0, p0

    .local v0, "x0":Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;
    move-object v1, v0

    iget-wide v1, v1, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->firstFrameTime:D

    move-wide v0, v1

    .end local v0    # "x0":Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;
    return-wide v0
.end method

.method static synthetic access$802(Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;D)D
    .locals 13

    .prologue
    .line 70
    move-object v1, p0

    .local v1, "x0":Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;
    move-wide v2, p1

    .local v2, "x1":D
    move-object v4, v1

    move-wide v5, v2

    move-object v9, v4

    move-wide v10, v5

    move-wide v4, v10

    move-object v6, v9

    move-wide v7, v10

    iput-wide v7, v6, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->firstFrameTime:D

    move-wide v1, v4

    .end local v1    # "x0":Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;
    return-wide v1
.end method

.method static synthetic access$900(Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;)Z
    .locals 2

    .prologue
    .line 70
    move-object v0, p0

    .local v0, "x0":Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;
    move-object v1, v0

    iget-boolean v1, v1, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->recomputeFrameRate:Z

    move v0, v1

    .end local v0    # "x0":Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;
    return v0
.end method

.method static synthetic access$902(Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;Z)Z
    .locals 7

    .prologue
    .line 70
    move-object v0, p0

    .local v0, "x0":Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;
    move v1, p1

    .local v1, "x1":Z
    move-object v2, v0

    move v3, v1

    move-object v5, v2

    move v6, v3

    move v2, v6

    move-object v3, v5

    move v4, v6

    iput-boolean v4, v3, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->recomputeFrameRate:Z

    move v0, v2

    .end local v0    # "x0":Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;
    return v0
.end method

.method static synthetic access$lambda$0(Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$MediaErrorEvent;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->lambda$addMediaErrorListener$6(Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$MediaErrorEvent;)V

    return-void
.end method

.method static synthetic access$lambda$1(Lcom/sun/media/jfxmedia/events/BufferListener;Lcom/sun/media/jfxmedia/events/BufferProgressEvent;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->lambda$addBufferListener$7(Lcom/sun/media/jfxmedia/events/BufferListener;Lcom/sun/media/jfxmedia/events/BufferProgressEvent;)V

    return-void
.end method

.method private createMediaPulse()V
    .locals 9

    .prologue
    .line 1566
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->mediaPulseLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 1568
    move-object v2, v0

    :try_start_0
    iget-object v2, v2, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->mediaPulseTimer:Ljava/util/Timer;

    if-nez v2, :cond_0

    .line 1569
    move-object v2, v0

    new-instance v3, Ljava/util/Timer;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Ljava/util/Timer;-><init>(Z)V

    iput-object v3, v2, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->mediaPulseTimer:Ljava/util/Timer;

    .line 1570
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->mediaPulseTimer:Ljava/util/Timer;

    new-instance v3, Lcom/sun/media/jfxmediaimpl/MediaPulseTask;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    invoke-direct {v4, v5}, Lcom/sun/media/jfxmediaimpl/MediaPulseTask;-><init>(Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;)V

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x28

    invoke-virtual/range {v2 .. v7}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1575
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->mediaPulseLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 1576
    .line 1577
    return-void

    .line 1575
    :catchall_0
    move-exception v2

    move-object v1, v2

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->mediaPulseLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    move-object v2, v1

    throw v2
.end method

.method private destroyMediaPulse()V
    .locals 4

    .prologue
    .line 1580
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->mediaPulseLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 1582
    move-object v2, v0

    :try_start_0
    iget-object v2, v2, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->mediaPulseTimer:Ljava/util/Timer;

    if-eqz v2, :cond_0

    .line 1583
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->mediaPulseTimer:Ljava/util/Timer;

    invoke-virtual {v2}, Ljava/util/Timer;->cancel()V

    .line 1584
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->mediaPulseTimer:Ljava/util/Timer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1587
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->mediaPulseLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 1588
    .line 1589
    return-void

    .line 1587
    :catchall_0
    move-exception v2

    move-object v1, v2

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->mediaPulseLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    move-object v2, v1

    throw v2
.end method

.method private static synthetic lambda$addBufferListener$7(Lcom/sun/media/jfxmedia/events/BufferListener;Lcom/sun/media/jfxmedia/events/BufferProgressEvent;)V
    .locals 4

    .prologue
    .line 942
    move-object v0, p0

    .local v0, "listener":Lcom/sun/media/jfxmedia/events/BufferListener;
    move-object v1, p1

    .local v1, "evt":Lcom/sun/media/jfxmedia/events/BufferProgressEvent;
    move-object v2, v0

    move-object v3, v1

    invoke-interface {v2, v3}, Lcom/sun/media/jfxmedia/events/BufferListener;->onBufferProgress(Lcom/sun/media/jfxmedia/events/BufferProgressEvent;)V

    .line 943
    return-void
.end method

.method private synthetic lambda$addMediaErrorListener$6(Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$MediaErrorEvent;)V
    .locals 4

    .prologue
    .line 782
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;
    move-object v1, p1

    .local v1, "evt":Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$MediaErrorEvent;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->sendPlayerEvent(Lcom/sun/media/jfxmedia/events/PlayerEvent;)V

    .line 783
    return-void
.end method

.method private declared-synchronized onNativeInit()V
    .locals 5

    .prologue
    .line 764
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;
    move-object v4, p0

    monitor-enter v4

    move-object v2, v0

    :try_start_0
    invoke-virtual {v2}, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->playerInit()V
    :try_end_0
    .catch Lcom/sun/media/jfxmedia/MediaException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 767
    .line 768
    :goto_0
    monitor-exit v4

    return-void

    .line 765
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 766
    .local v1, "me":Lcom/sun/media/jfxmedia/MediaException;
    move-object v2, v0

    move-object v3, v1

    :try_start_1
    invoke-virtual {v3}, Lcom/sun/media/jfxmedia/MediaException;->getMediaError()Lcom/sun/media/jfxmedia/MediaError;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sun/media/jfxmedia/MediaError;->code()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->sendPlayerMediaErrorEvent(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 764
    .end local v1    # "me":Lcom/sun/media/jfxmedia/MediaException;
    :catchall_0
    move-exception v0

    monitor-exit v4

    .end local v0    # "this":Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;
    throw v0
.end method


# virtual methods
.method public addAudioSpectrumListener(Lcom/sun/media/jfxmedia/events/AudioSpectrumListener;)V
    .locals 7

    .prologue
    .line 967
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;
    move-object v1, p1

    .local v1, "listener":Lcom/sun/media/jfxmedia/events/AudioSpectrumListener;
    move-object v2, v1

    if-eqz v2, :cond_0

    .line 968
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->audioSpectrumListeners:Ljava/util/List;

    new-instance v3, Ljava/lang/ref/WeakReference;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v1

    invoke-direct {v4, v5}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 970
    :cond_0
    return-void
.end method

.method public addBufferListener(Lcom/sun/media/jfxmedia/events/BufferListener;)V
    .locals 9

    .prologue
    .line 938
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;
    move-object v1, p1

    .local v1, "listener":Lcom/sun/media/jfxmedia/events/BufferListener;
    move-object v4, v1

    if-eqz v4, :cond_1

    .line 939
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->cachedBufferEvents:Ljava/util/List;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v2, v5

    monitor-enter v4

    .line 940
    move-object v4, v0

    :try_start_0
    iget-object v4, v4, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->cachedBufferEvents:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->bufferListeners:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 941
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->cachedBufferEvents:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v4

    move-object v5, v1

    invoke-static {v5}, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$$Lambda$2;->lambdaFactory$(Lcom/sun/media/jfxmedia/events/BufferListener;)Ljava/util/function/Consumer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 945
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->cachedBufferEvents:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 948
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->bufferListeners:Ljava/util/List;

    new-instance v5, Ljava/lang/ref/WeakReference;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v1

    invoke-direct {v6, v7}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v4

    .line 949
    move-object v4, v2

    monitor-exit v4

    .line 951
    :cond_1
    return-void

    .line 949
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

.method public addMarkerListener(Lcom/sun/media/jfxmedia/events/MarkerListener;)V
    .locals 7

    .prologue
    .line 919
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;
    move-object v1, p1

    .local v1, "listener":Lcom/sun/media/jfxmedia/events/MarkerListener;
    move-object v2, v1

    if-eqz v2, :cond_0

    .line 920
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->markerListeners:Ljava/util/List;

    new-instance v3, Ljava/lang/ref/WeakReference;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v1

    invoke-direct {v4, v5}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 922
    :cond_0
    return-void
.end method

.method public addMediaErrorListener(Lcom/sun/media/jfxmedia/events/MediaErrorListener;)V
    .locals 9

    .prologue
    .line 776
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;
    move-object v1, p1

    .local v1, "listener":Lcom/sun/media/jfxmedia/events/MediaErrorListener;
    move-object v4, v1

    if-eqz v4, :cond_1

    .line 777
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->errorListeners:Ljava/util/List;

    new-instance v5, Ljava/lang/ref/WeakReference;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v1

    invoke-direct {v6, v7}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v4

    .line 779
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->cachedErrorEvents:Ljava/util/List;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v2, v5

    monitor-enter v4

    .line 780
    move-object v4, v0

    :try_start_0
    iget-object v4, v4, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->cachedErrorEvents:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->errorListeners:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 781
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->cachedErrorEvents:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v4

    move-object v5, v0

    invoke-static {v5}, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$$Lambda$1;->lambdaFactory$(Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;)Ljava/util/function/Consumer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 784
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->cachedErrorEvents:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 786
    :cond_0
    move-object v4, v2

    monitor-exit v4

    .line 788
    :cond_1
    return-void

    .line 786
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

.method public addMediaPlayerListener(Lcom/sun/media/jfxmedia/events/PlayerStateListener;)V
    .locals 11

    .prologue
    .line 804
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;
    move-object v1, p1

    .local v1, "listener":Lcom/sun/media/jfxmedia/events/PlayerStateListener;
    move-object v6, v1

    if-eqz v6, :cond_2

    .line 805
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->cachedStateEvents:Ljava/util/List;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v2, v7

    monitor-enter v6

    .line 806
    move-object v6, v0

    :try_start_0
    iget-object v6, v6, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->cachedStateEvents:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->playerStateListeners:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 808
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->cachedStateEvents:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-object v3, v6

    .line 809
    .local v3, "events":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sun/media/jfxmedia/events/PlayerStateEvent;>;"
    :goto_0
    move-object v6, v3

    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 810
    move-object v6, v3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sun/media/jfxmedia/events/PlayerStateEvent;

    move-object v4, v6

    .line 811
    .local v4, "evt":Lcom/sun/media/jfxmedia/events/PlayerStateEvent;
    sget-object v6, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$1;->$SwitchMap$com$sun$media$jfxmedia$events$PlayerStateEvent$PlayerState:[I

    move-object v7, v4

    invoke-virtual {v7}, Lcom/sun/media/jfxmedia/events/PlayerStateEvent;->getState()Lcom/sun/media/jfxmedia/events/PlayerStateEvent$PlayerState;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sun/media/jfxmedia/events/PlayerStateEvent$PlayerState;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 833
    :goto_1
    goto :goto_0

    .line 813
    :pswitch_0
    move-object v6, v1

    move-object v7, v4

    invoke-interface {v6, v7}, Lcom/sun/media/jfxmedia/events/PlayerStateListener;->onReady(Lcom/sun/media/jfxmedia/events/PlayerStateEvent;)V

    .line 814
    goto :goto_1

    .line 816
    :pswitch_1
    move-object v6, v1

    move-object v7, v4

    invoke-interface {v6, v7}, Lcom/sun/media/jfxmedia/events/PlayerStateListener;->onPlaying(Lcom/sun/media/jfxmedia/events/PlayerStateEvent;)V

    .line 817
    goto :goto_1

    .line 819
    :pswitch_2
    move-object v6, v1

    move-object v7, v4

    invoke-interface {v6, v7}, Lcom/sun/media/jfxmedia/events/PlayerStateListener;->onPause(Lcom/sun/media/jfxmedia/events/PlayerStateEvent;)V

    .line 820
    goto :goto_1

    .line 822
    :pswitch_3
    move-object v6, v1

    move-object v7, v4

    invoke-interface {v6, v7}, Lcom/sun/media/jfxmedia/events/PlayerStateListener;->onStop(Lcom/sun/media/jfxmedia/events/PlayerStateEvent;)V

    .line 823
    goto :goto_1

    .line 825
    :pswitch_4
    move-object v6, v1

    move-object v7, v4

    invoke-interface {v6, v7}, Lcom/sun/media/jfxmedia/events/PlayerStateListener;->onStall(Lcom/sun/media/jfxmedia/events/PlayerStateEvent;)V

    .line 826
    goto :goto_1

    .line 828
    :pswitch_5
    move-object v6, v1

    move-object v7, v4

    invoke-interface {v6, v7}, Lcom/sun/media/jfxmedia/events/PlayerStateListener;->onFinish(Lcom/sun/media/jfxmedia/events/PlayerStateEvent;)V

    .line 829
    goto :goto_1

    .line 836
    .end local v4    # "evt":Lcom/sun/media/jfxmedia/events/PlayerStateEvent;
    :cond_0
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->cachedStateEvents:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->clear()V

    .line 839
    .end local v3    # "events":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sun/media/jfxmedia/events/PlayerStateEvent;>;"
    :cond_1
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->playerStateListeners:Ljava/util/List;

    new-instance v7, Ljava/lang/ref/WeakReference;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    move-object v9, v1

    invoke-direct {v8, v9}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v6

    .line 840
    move-object v6, v2

    monitor-exit v6

    .line 842
    :cond_2
    return-void

    .line 840
    :catchall_0
    move-exception v6

    move-object v5, v6

    move-object v6, v2

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v6, v5

    throw v6

    .line 811
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_5
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method public addMediaTimeListener(Lcom/sun/media/jfxmedia/events/PlayerTimeListener;)V
    .locals 12

    .prologue
    .line 858
    move-object v1, p0

    .local v1, "this":Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;
    move-object v2, p1

    .local v2, "listener":Lcom/sun/media/jfxmedia/events/PlayerTimeListener;
    move-object v7, v2

    if-eqz v7, :cond_2

    .line 859
    move-object v7, v1

    iget-object v7, v7, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->cachedTimeEvents:Ljava/util/List;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    move-object v3, v8

    monitor-enter v7

    .line 860
    move-object v7, v1

    :try_start_0
    iget-object v7, v7, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->cachedTimeEvents:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_3

    move-object v7, v1

    iget-object v7, v7, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->playerTimeListeners:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 862
    move-object v7, v1

    iget-object v7, v7, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->cachedTimeEvents:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move-object v4, v7

    .line 863
    .local v4, "events":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$PlayerTimeEvent;>;"
    :goto_0
    move-object v7, v4

    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 864
    move-object v7, v4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$PlayerTimeEvent;

    move-object v5, v7

    .line 865
    .local v5, "evt":Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$PlayerTimeEvent;
    move-object v7, v2

    move-object v8, v5

    invoke-virtual {v8}, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$PlayerTimeEvent;->getTime()D

    move-result-wide v8

    invoke-interface {v7, v8, v9}, Lcom/sun/media/jfxmedia/events/PlayerTimeListener;->onDurationChanged(D)V

    .line 866
    goto :goto_0

    .line 869
    .end local v5    # "evt":Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$PlayerTimeEvent;
    :cond_0
    move-object v7, v1

    iget-object v7, v7, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->cachedTimeEvents:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->clear()V

    .line 870
    .line 878
    .end local v4    # "events":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$PlayerTimeEvent;>;"
    :cond_1
    :goto_1
    move-object v7, v1

    iget-object v7, v7, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->playerTimeListeners:Ljava/util/List;

    new-instance v8, Ljava/lang/ref/WeakReference;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    move-object v10, v2

    invoke-direct {v9, v10}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v7

    .line 879
    move-object v7, v3

    monitor-exit v7

    .line 881
    :cond_2
    return-void

    .line 872
    :cond_3
    move-object v7, v1

    invoke-virtual {v7}, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->getDuration()D

    move-result-wide v7

    move-wide v4, v7

    .line 873
    .local v4, "duration":D
    move-wide v7, v4

    const-wide/high16 v9, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    cmpl-double v7, v7, v9

    if-eqz v7, :cond_1

    .line 874
    move-object v7, v2

    move-wide v8, v4

    invoke-interface {v7, v8, v9}, Lcom/sun/media/jfxmedia/events/PlayerTimeListener;->onDurationChanged(D)V

    goto :goto_1

    .line 879
    .end local v4    # "duration":D
    :catchall_0
    move-exception v7

    move-object v6, v7

    move-object v7, v3

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v7, v6

    throw v7
.end method

.method public addVideoTrackSizeListener(Lcom/sun/media/jfxmedia/events/VideoTrackSizeListener;)V
    .locals 7

    .prologue
    .line 897
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;
    move-object v1, p1

    .local v1, "listener":Lcom/sun/media/jfxmedia/events/VideoTrackSizeListener;
    move-object v2, v1

    if-eqz v2, :cond_1

    .line 898
    move-object v2, v0

    iget v2, v2, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->frameWidth:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    move-object v2, v0

    iget v2, v2, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->frameHeight:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 899
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->frameWidth:I

    move-object v4, v0

    iget v4, v4, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->frameHeight:I

    invoke-interface {v2, v3, v4}, Lcom/sun/media/jfxmedia/events/VideoTrackSizeListener;->onSizeChanged(II)V

    .line 901
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->videoTrackSizeListeners:Ljava/util/List;

    new-instance v3, Ljava/lang/ref/WeakReference;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v1

    invoke-direct {v4, v5}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 903
    :cond_1
    return-void
.end method

.method protected createNativeAudioEqualizer(J)Lcom/sun/media/jfxmedia/effects/AudioEqualizer;
    .locals 9

    .prologue
    .line 1675
    move-object v1, p0

    .local v1, "this":Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;
    move-wide v2, p1

    .local v2, "nativeRef":J
    new-instance v4, Lcom/sun/media/jfxmediaimpl/NativeAudioEqualizer;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-wide v6, v2

    invoke-direct {v5, v6, v7}, Lcom/sun/media/jfxmediaimpl/NativeAudioEqualizer;-><init>(J)V

    move-object v1, v4

    .end local v1    # "this":Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;
    return-object v1
.end method

.method protected createNativeAudioSpectrum(J)Lcom/sun/media/jfxmedia/effects/AudioSpectrum;
    .locals 9

    .prologue
    .line 1679
    move-object v1, p0

    .local v1, "this":Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;
    move-wide v2, p1

    .local v2, "nativeRef":J
    new-instance v4, Lcom/sun/media/jfxmediaimpl/NativeAudioSpectrum;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-wide v6, v2

    invoke-direct {v5, v6, v7}, Lcom/sun/media/jfxmediaimpl/NativeAudioSpectrum;-><init>(J)V

    move-object v1, v4

    .end local v1    # "this":Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;
    return-object v1
.end method

.method public final dispose()V
    .locals 7

    .prologue
    .line 1311
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->disposeLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 1313
    move-object v4, v0

    :try_start_0
    iget-boolean v4, v4, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->isDisposed:Z

    if-nez v4, :cond_14

    .line 1315
    move-object v4, v0

    invoke-direct {v4}, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->destroyMediaPulse()V

    .line 1317
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->eventLoop:Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$EventQueueThread;

    if-eqz v4, :cond_0

    .line 1318
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->eventLoop:Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$EventQueueThread;

    invoke-virtual {v4}, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$EventQueueThread;->terminateLoop()V

    .line 1321
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->firstFrameLock:Ljava/lang/Object;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    move-object v1, v5

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1322
    move-object v4, v0

    :try_start_1
    iget-object v4, v4, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->firstFrameEvent:Lcom/sun/media/jfxmedia/events/NewFrameEvent;

    if-eqz v4, :cond_1

    .line 1323
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->firstFrameEvent:Lcom/sun/media/jfxmedia/events/NewFrameEvent;

    invoke-virtual {v4}, Lcom/sun/media/jfxmedia/events/NewFrameEvent;->getFrameData()Lcom/sun/media/jfxmedia/control/VideoDataBuffer;

    move-result-object v4

    invoke-interface {v4}, Lcom/sun/media/jfxmedia/control/VideoDataBuffer;->releaseFrame()V

    .line 1324
    move-object v4, v0

    const/4 v5, 0x0

    iput-object v5, v4, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->firstFrameEvent:Lcom/sun/media/jfxmedia/events/NewFrameEvent;

    .line 1326
    :cond_1
    move-object v4, v1

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1329
    move-object v4, v0

    :try_start_2
    invoke-virtual {v4}, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->playerDispose()V

    .line 1332
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->media:Lcom/sun/media/jfxmediaimpl/NativeMedia;

    if-eqz v4, :cond_2

    .line 1333
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->media:Lcom/sun/media/jfxmediaimpl/NativeMedia;

    invoke-virtual {v4}, Lcom/sun/media/jfxmediaimpl/NativeMedia;->dispose()V

    .line 1334
    move-object v4, v0

    const/4 v5, 0x0

    iput-object v5, v4, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->media:Lcom/sun/media/jfxmediaimpl/NativeMedia;

    .line 1338
    :cond_2
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->eventLoop:Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$EventQueueThread;

    if-eqz v4, :cond_3

    .line 1339
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->eventLoop:Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$EventQueueThread;

    invoke-static {v4}, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$EventQueueThread;->access$3000(Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$EventQueueThread;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/concurrent/BlockingQueue;->clear()V

    .line 1340
    move-object v4, v0

    const/4 v5, 0x0

    iput-object v5, v4, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->eventLoop:Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$EventQueueThread;

    .line 1343
    :cond_3
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->videoUpdateListeners:Ljava/util/List;

    if-eqz v4, :cond_6

    .line 1344
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->videoUpdateListeners:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v4

    move-object v1, v4

    .local v1, "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Ljava/lang/ref/WeakReference<Lcom/sun/media/jfxmedia/events/VideoRendererListener;>;>;"
    :goto_0
    move-object v4, v1

    invoke-interface {v4}, Ljava/util/ListIterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1345
    move-object v4, v1

    invoke-interface {v4}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/media/jfxmedia/events/VideoRendererListener;

    move-object v2, v4

    .line 1346
    .local v2, "l":Lcom/sun/media/jfxmedia/events/VideoRendererListener;
    move-object v4, v2

    if-eqz v4, :cond_4

    .line 1347
    move-object v4, v2

    invoke-interface {v4}, Lcom/sun/media/jfxmedia/events/VideoRendererListener;->releaseVideoFrames()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1351
    :goto_1
    goto :goto_0

    .line 1326
    .end local v1    # "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Ljava/lang/ref/WeakReference<Lcom/sun/media/jfxmedia/events/VideoRendererListener;>;>;"
    .end local v2    # "l":Lcom/sun/media/jfxmedia/events/VideoRendererListener;
    :catchall_0
    move-exception v4

    move-object v2, v4

    move-object v4, v1

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v4, v2

    :try_start_4
    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1411
    :catchall_1
    move-exception v4

    move-object v3, v4

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->disposeLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    move-object v4, v3

    throw v4

    .line 1349
    .restart local v1    # "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Ljava/lang/ref/WeakReference<Lcom/sun/media/jfxmedia/events/VideoRendererListener;>;>;"
    .restart local v2    # "l":Lcom/sun/media/jfxmedia/events/VideoRendererListener;
    :cond_4
    move-object v4, v1

    :try_start_5
    invoke-interface {v4}, Ljava/util/ListIterator;->remove()V

    goto :goto_1

    .line 1353
    .end local v2    # "l":Lcom/sun/media/jfxmedia/events/VideoRendererListener;
    :cond_5
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->videoUpdateListeners:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 1356
    .end local v1    # "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Ljava/lang/ref/WeakReference<Lcom/sun/media/jfxmedia/events/VideoRendererListener;>;>;"
    :cond_6
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->playerStateListeners:Ljava/util/List;

    if-eqz v4, :cond_7

    .line 1357
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->playerStateListeners:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 1360
    :cond_7
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->videoTrackSizeListeners:Ljava/util/List;

    if-eqz v4, :cond_8

    .line 1361
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->videoTrackSizeListeners:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 1364
    :cond_8
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->videoFrameRateListeners:Ljava/util/List;

    if-eqz v4, :cond_9

    .line 1365
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->videoFrameRateListeners:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 1368
    :cond_9
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->cachedStateEvents:Ljava/util/List;

    if-eqz v4, :cond_a

    .line 1369
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->cachedStateEvents:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 1372
    :cond_a
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->cachedTimeEvents:Ljava/util/List;

    if-eqz v4, :cond_b

    .line 1373
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->cachedTimeEvents:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 1376
    :cond_b
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->cachedBufferEvents:Ljava/util/List;

    if-eqz v4, :cond_c

    .line 1377
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->cachedBufferEvents:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 1380
    :cond_c
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->errorListeners:Ljava/util/List;

    if-eqz v4, :cond_d

    .line 1381
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->errorListeners:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 1384
    :cond_d
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->playerTimeListeners:Ljava/util/List;

    if-eqz v4, :cond_e

    .line 1385
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->playerTimeListeners:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 1388
    :cond_e
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->markerListeners:Ljava/util/List;

    if-eqz v4, :cond_f

    .line 1389
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->markerListeners:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 1392
    :cond_f
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->bufferListeners:Ljava/util/List;

    if-eqz v4, :cond_10

    .line 1393
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->bufferListeners:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 1396
    :cond_10
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->audioSpectrumListeners:Ljava/util/List;

    if-eqz v4, :cond_11

    .line 1397
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->audioSpectrumListeners:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 1400
    :cond_11
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->videoRenderControl:Lcom/sun/media/jfxmedia/control/VideoRenderControl;

    if-eqz v4, :cond_12

    .line 1401
    move-object v4, v0

    const/4 v5, 0x0

    iput-object v5, v4, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->videoRenderControl:Lcom/sun/media/jfxmedia/control/VideoRenderControl;

    .line 1404
    :cond_12
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->onDispose:Ljava/lang/Runnable;

    if-eqz v4, :cond_13

    .line 1405
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->onDispose:Ljava/lang/Runnable;

    invoke-interface {v4}, Ljava/lang/Runnable;->run()V

    .line 1408
    :cond_13
    move-object v4, v0

    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->isDisposed:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1411
    :cond_14
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->disposeLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 1412
    .line 1413
    return-void
.end method

.method doMediaPulseTask()Z
    .locals 16

    .prologue
    .line 1592
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;
    move-object v10, v0

    iget-object v10, v10, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->isMediaPulseEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 1593
    move-object v10, v0

    iget-object v10, v10, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->disposeLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v10}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 1595
    move-object v10, v0

    iget-boolean v10, v10, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->isDisposed:Z

    if-eqz v10, :cond_0

    .line 1596
    move-object v10, v0

    iget-object v10, v10, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->disposeLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v10}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 1597
    const/4 v10, 0x0

    move v0, v10

    .line 1670
    .end local v0    # "this":Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;
    .local v1, "thisTime":D
    :goto_0
    return v0

    .line 1600
    .end local v1    # "thisTime":D
    .restart local v0    # "this":Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;
    :cond_0
    move-object v10, v0

    invoke-virtual {v10}, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->getPresentationTime()D

    move-result-wide v10

    move-wide v1, v10

    .line 1602
    .restart local v1    # "thisTime":D
    move-object v10, v0

    iget-object v10, v10, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->markerLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v10}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 1607
    move-object v10, v0

    :try_start_0
    iget-boolean v10, v10, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->checkSeek:Z

    if-eqz v10, :cond_1

    .line 1608
    move-object v10, v0

    iget-wide v10, v10, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->timeAfterSeek:D

    move-object v12, v0

    iget-wide v12, v12, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->timeBeforeSeek:D

    cmpl-double v10, v10, v12

    if-lez v10, :cond_6

    .line 1610
    move-wide v10, v1

    move-object v12, v0

    iget-wide v12, v12, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->timeAfterSeek:D

    cmpl-double v10, v10, v12

    if-ltz v10, :cond_5

    .line 1612
    move-object v10, v0

    const/4 v11, 0x0

    iput-boolean v11, v10, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->checkSeek:Z

    .line 1627
    :cond_1
    :goto_1
    move-object v10, v0

    iget-object v10, v10, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->media:Lcom/sun/media/jfxmediaimpl/NativeMedia;

    move-object v11, v0

    iget-wide v11, v11, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->previousTime:D

    const/4 v13, 0x1

    invoke-virtual {v10, v11, v12, v13}, Lcom/sun/media/jfxmediaimpl/NativeMedia;->getNextMarker(DZ)Ljava/util/Map$Entry;

    move-result-object v10

    move-object v3, v10

    .line 1633
    .local v3, "marker":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Double;Ljava/lang/String;>;"
    :goto_2
    move-object v10, v3

    if-eqz v10, :cond_2

    .line 1634
    move-object v10, v3

    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Double;

    invoke-virtual {v10}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    move-wide v4, v10

    .line 1635
    .local v4, "nextMarkerTime":D
    move-wide v10, v4

    move-wide v12, v1

    cmpl-double v10, v10, v12

    if-lez v10, :cond_8

    .line 1636
    .line 1658
    .end local v4    # "nextMarkerTime":D
    :cond_2
    move-object v10, v0

    move-wide v11, v1

    iput-wide v11, v10, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->previousTime:D

    .line 1661
    move-object v10, v0

    iget-boolean v10, v10, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->isStopTimeSet:Z

    if-eqz v10, :cond_3

    move-wide v10, v1

    move-object v12, v0

    iget-wide v12, v12, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->stopTime:D

    cmpl-double v10, v10, v12

    if-ltz v10, :cond_3

    .line 1662
    move-object v10, v0

    invoke-virtual {v10}, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->playerFinish()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1665
    :cond_3
    move-object v10, v0

    iget-object v10, v10, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->disposeLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v10}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 1666
    move-object v10, v0

    iget-object v10, v10, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->markerLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v10}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 1667
    .line 1670
    .end local v1    # "thisTime":D
    .end local v3    # "marker":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Double;Ljava/lang/String;>;"
    :cond_4
    const/4 v10, 0x1

    move v0, v10

    goto :goto_0

    .line 1614
    .restart local v1    # "thisTime":D
    :cond_5
    const/4 v10, 0x1

    move v3, v10

    .line 1665
    move-object v10, v0

    iget-object v10, v10, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->disposeLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v10}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 1666
    move-object v10, v0

    iget-object v10, v10, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->markerLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v10}, Ljava/util/concurrent/locks/Lock;->unlock()V

    move v10, v3

    move v0, v10

    goto :goto_0

    .line 1616
    :cond_6
    move-object v10, v0

    :try_start_1
    iget-wide v10, v10, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->timeAfterSeek:D

    move-object v12, v0

    iget-wide v12, v12, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->timeBeforeSeek:D

    cmpg-double v10, v10, v12

    if-gez v10, :cond_1

    .line 1618
    move-wide v10, v1

    move-object v12, v0

    iget-wide v12, v12, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->timeBeforeSeek:D
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    cmpl-double v10, v10, v12

    if-ltz v10, :cond_7

    .line 1620
    const/4 v10, 0x1

    move v3, v10

    .line 1665
    move-object v10, v0

    iget-object v10, v10, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->disposeLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v10}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 1666
    move-object v10, v0

    iget-object v10, v10, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->markerLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v10}, Ljava/util/concurrent/locks/Lock;->unlock()V

    move v10, v3

    move v0, v10

    goto/16 :goto_0

    .line 1622
    :cond_7
    move-object v10, v0

    const/4 v11, 0x0

    :try_start_2
    iput-boolean v11, v10, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->checkSeek:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 1665
    :catchall_0
    move-exception v10

    move-object v9, v10

    move-object v10, v0

    iget-object v10, v10, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->disposeLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v10}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 1666
    move-object v10, v0

    iget-object v10, v10, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->markerLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v10}, Ljava/util/concurrent/locks/Lock;->unlock()V

    move-object v10, v9

    throw v10

    .line 1637
    .restart local v3    # "marker":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Double;Ljava/lang/String;>;"
    .restart local v4    # "nextMarkerTime":D
    :cond_8
    move-wide v10, v4

    move-object v12, v0

    :try_start_3
    iget-wide v12, v12, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->firedMarkerTime:D

    cmpl-double v10, v10, v12

    if-eqz v10, :cond_b

    move-wide v10, v4

    move-object v12, v0

    iget-wide v12, v12, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->previousTime:D

    cmpl-double v10, v10, v12

    if-ltz v10, :cond_b

    move-wide v10, v4

    move-object v12, v0

    .line 1639
    invoke-virtual {v12}, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->getStartTime()D

    move-result-wide v12

    cmpl-double v10, v10, v12

    if-ltz v10, :cond_b

    move-wide v10, v4

    move-object v12, v0

    .line 1640
    invoke-virtual {v12}, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->getStopTime()D

    move-result-wide v12

    cmpg-double v10, v10, v12

    if-gtz v10, :cond_b

    .line 1644
    new-instance v10, Lcom/sun/media/jfxmedia/events/MarkerEvent;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    move-object v12, v3

    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    move-wide v13, v4

    invoke-direct {v11, v12, v13, v14}, Lcom/sun/media/jfxmedia/events/MarkerEvent;-><init>(Ljava/lang/String;D)V

    move-object v6, v10

    .line 1645
    .local v6, "evt":Lcom/sun/media/jfxmedia/events/MarkerEvent;
    move-object v10, v0

    iget-object v10, v10, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->markerListeners:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v10

    move-object v7, v10

    .local v7, "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Ljava/lang/ref/WeakReference<Lcom/sun/media/jfxmedia/events/MarkerListener;>;>;"
    :goto_3
    move-object v10, v7

    invoke-interface {v10}, Ljava/util/ListIterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_a

    .line 1646
    move-object v10, v7

    invoke-interface {v10}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/ref/WeakReference;

    invoke-virtual {v10}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/sun/media/jfxmedia/events/MarkerListener;

    move-object v8, v10

    .line 1647
    .local v8, "listener":Lcom/sun/media/jfxmedia/events/MarkerListener;
    move-object v10, v8

    if-eqz v10, :cond_9

    .line 1648
    move-object v10, v8

    move-object v11, v6

    invoke-interface {v10, v11}, Lcom/sun/media/jfxmedia/events/MarkerListener;->onMarker(Lcom/sun/media/jfxmedia/events/MarkerEvent;)V

    .line 1652
    :goto_4
    goto :goto_3

    .line 1650
    :cond_9
    move-object v10, v7

    invoke-interface {v10}, Ljava/util/ListIterator;->remove()V

    goto :goto_4

    .line 1653
    .end local v8    # "listener":Lcom/sun/media/jfxmedia/events/MarkerListener;
    :cond_a
    move-object v10, v0

    move-wide v11, v4

    iput-wide v11, v10, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->firedMarkerTime:D

    .line 1655
    .end local v6    # "evt":Lcom/sun/media/jfxmedia/events/MarkerEvent;
    .end local v7    # "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Ljava/lang/ref/WeakReference<Lcom/sun/media/jfxmedia/events/MarkerListener;>;>;"
    :cond_b
    move-object v10, v0

    iget-object v10, v10, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->media:Lcom/sun/media/jfxmediaimpl/NativeMedia;

    move-wide v11, v4

    const/4 v13, 0x0

    invoke-virtual {v10, v11, v12, v13}, Lcom/sun/media/jfxmediaimpl/NativeMedia;->getNextMarker(DZ)Ljava/util/Map$Entry;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v10

    move-object v3, v10

    .line 1656
    goto/16 :goto_2
.end method

.method public abstract getAudioSpectrum()Lcom/sun/media/jfxmedia/effects/AudioSpectrum;
.end method

.method public getAudioSyncDelay()J
    .locals 8

    .prologue
    .line 1007
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;
    move-object v2, v0

    :try_start_0
    invoke-virtual {v2}, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->playerGetAudioSyncDelay()J
    :try_end_0
    .catch Lcom/sun/media/jfxmedia/MediaException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    move-wide v0, v2

    .line 1011
    .end local v0    # "this":Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;
    .local v1, "me":Lcom/sun/media/jfxmedia/MediaException;
    :goto_0
    return-wide v0

    .line 1008
    .end local v1    # "me":Lcom/sun/media/jfxmedia/MediaException;
    .restart local v0    # "this":Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 1009
    .restart local v1    # "me":Lcom/sun/media/jfxmedia/MediaException;
    move-object v2, v0

    new-instance v3, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$MediaErrorEvent;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    move-object v6, v1

    invoke-virtual {v6}, Lcom/sun/media/jfxmedia/MediaException;->getMediaError()Lcom/sun/media/jfxmedia/MediaError;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$MediaErrorEvent;-><init>(Ljava/lang/Object;Lcom/sun/media/jfxmedia/MediaError;)V

    invoke-virtual {v2, v3}, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->sendPlayerEvent(Lcom/sun/media/jfxmedia/events/PlayerEvent;)V

    .line 1011
    const-wide/16 v2, 0x0

    move-wide v0, v2

    goto :goto_0
.end method

.method public getBalance()F
    .locals 8

    .prologue
    .line 1129
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;
    move-object v2, v0

    :try_start_0
    invoke-virtual {v2}, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->playerGetBalance()F
    :try_end_0
    .catch Lcom/sun/media/jfxmedia/MediaException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    move v0, v2

    .line 1133
    .end local v0    # "this":Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;
    .local v1, "me":Lcom/sun/media/jfxmedia/MediaException;
    :goto_0
    return v0

    .line 1130
    .end local v1    # "me":Lcom/sun/media/jfxmedia/MediaException;
    .restart local v0    # "this":Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 1131
    .restart local v1    # "me":Lcom/sun/media/jfxmedia/MediaException;
    move-object v2, v0

    new-instance v3, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$MediaErrorEvent;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    move-object v6, v1

    invoke-virtual {v6}, Lcom/sun/media/jfxmedia/MediaException;->getMediaError()Lcom/sun/media/jfxmedia/MediaError;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$MediaErrorEvent;-><init>(Ljava/lang/Object;Lcom/sun/media/jfxmedia/MediaError;)V

    invoke-virtual {v2, v3}, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->sendPlayerEvent(Lcom/sun/media/jfxmedia/events/PlayerEvent;)V

    .line 1133
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method

.method public getDuration()D
    .locals 4

    .prologue
    .line 1160
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;
    move-object v2, v0

    :try_start_0
    invoke-virtual {v2}, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->playerGetDuration()D
    :try_end_0
    .catch Lcom/sun/media/jfxmedia/MediaException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    move-wide v0, v2

    .line 1164
    .end local v0    # "this":Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;
    :goto_0
    return-wide v0

    .line 1161
    .restart local v0    # "this":Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 1164
    const-wide/high16 v2, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    move-wide v0, v2

    goto :goto_0
.end method

.method public abstract getEqualizer()Lcom/sun/media/jfxmedia/effects/AudioEqualizer;
.end method

.method public getMedia()Lcom/sun/media/jfxmedia/Media;
    .locals 2

    .prologue
    .line 992
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->media:Lcom/sun/media/jfxmediaimpl/NativeMedia;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;
    return-object v0
.end method

.method public getMute()Z
    .locals 8

    .prologue
    .line 1106
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;
    move-object v2, v0

    :try_start_0
    invoke-virtual {v2}, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->playerGetMute()Z
    :try_end_0
    .catch Lcom/sun/media/jfxmedia/MediaException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    move v0, v2

    .line 1110
    .end local v0    # "this":Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;
    .local v1, "me":Lcom/sun/media/jfxmedia/MediaException;
    :goto_0
    return v0

    .line 1107
    .end local v1    # "me":Lcom/sun/media/jfxmedia/MediaException;
    .restart local v0    # "this":Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 1108
    .restart local v1    # "me":Lcom/sun/media/jfxmedia/MediaException;
    move-object v2, v0

    new-instance v3, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$MediaErrorEvent;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    move-object v6, v1

    invoke-virtual {v6}, Lcom/sun/media/jfxmedia/MediaException;->getMediaError()Lcom/sun/media/jfxmedia/MediaError;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$MediaErrorEvent;-><init>(Ljava/lang/Object;Lcom/sun/media/jfxmedia/MediaError;)V

    invoke-virtual {v2, v3}, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->sendPlayerEvent(Lcom/sun/media/jfxmedia/events/PlayerEvent;)V

    .line 1110
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method

.method public getPresentationTime()D
    .locals 4

    .prologue
    .line 1071
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;
    move-object v2, v0

    :try_start_0
    invoke-virtual {v2}, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->playerGetPresentationTime()D
    :try_end_0
    .catch Lcom/sun/media/jfxmedia/MediaException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    move-wide v0, v2

    .line 1075
    .end local v0    # "this":Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;
    :goto_0
    return-wide v0

    .line 1072
    .restart local v0    # "this":Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 1075
    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    move-wide v0, v2

    goto :goto_0
.end method

.method public getRate()F
    .locals 8

    .prologue
    .line 1050
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;
    move-object v2, v0

    :try_start_0
    invoke-virtual {v2}, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->playerGetRate()F
    :try_end_0
    .catch Lcom/sun/media/jfxmedia/MediaException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    move v0, v2

    .line 1054
    .end local v0    # "this":Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;
    .local v1, "me":Lcom/sun/media/jfxmedia/MediaException;
    :goto_0
    return v0

    .line 1051
    .end local v1    # "me":Lcom/sun/media/jfxmedia/MediaException;
    .restart local v0    # "this":Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 1052
    .restart local v1    # "me":Lcom/sun/media/jfxmedia/MediaException;
    move-object v2, v0

    new-instance v3, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$MediaErrorEvent;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    move-object v6, v1

    invoke-virtual {v6}, Lcom/sun/media/jfxmedia/MediaException;->getMediaError()Lcom/sun/media/jfxmedia/MediaError;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$MediaErrorEvent;-><init>(Ljava/lang/Object;Lcom/sun/media/jfxmedia/MediaError;)V

    invoke-virtual {v2, v3}, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->sendPlayerEvent(Lcom/sun/media/jfxmedia/events/PlayerEvent;)V

    .line 1054
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method

.method public getStartTime()D
    .locals 3

    .prologue
    .line 1172
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;
    move-object v1, v0

    iget-wide v1, v1, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->startTime:D

    move-wide v0, v1

    .end local v0    # "this":Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;
    return-wide v0
.end method

.method public getState()Lcom/sun/media/jfxmedia/events/PlayerStateEvent$PlayerState;
    .locals 2

    .prologue
    .line 1306
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->playerState:Lcom/sun/media/jfxmedia/events/PlayerStateEvent$PlayerState;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;
    return-object v0
.end method

.method public getStopTime()D
    .locals 3

    .prologue
    .line 1198
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;
    move-object v1, v0

    iget-wide v1, v1, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->stopTime:D

    move-wide v0, v1

    .end local v0    # "this":Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;
    return-wide v0
.end method

.method public getVideoRenderControl()Lcom/sun/media/jfxmedia/control/VideoRenderControl;
    .locals 2

    .prologue
    .line 987
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->videoRenderControl:Lcom/sun/media/jfxmedia/control/VideoRenderControl;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;
    return-object v0
.end method

.method public getVolume()F
    .locals 8

    .prologue
    .line 1081
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;
    move-object v2, v0

    :try_start_0
    invoke-virtual {v2}, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->playerGetVolume()F
    :try_end_0
    .catch Lcom/sun/media/jfxmedia/MediaException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    move v0, v2

    .line 1085
    .end local v0    # "this":Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;
    .local v1, "me":Lcom/sun/media/jfxmedia/MediaException;
    :goto_0
    return v0

    .line 1082
    .end local v1    # "me":Lcom/sun/media/jfxmedia/MediaException;
    .restart local v0    # "this":Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 1083
    .restart local v1    # "me":Lcom/sun/media/jfxmedia/MediaException;
    move-object v2, v0

    new-instance v3, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$MediaErrorEvent;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    move-object v6, v1

    invoke-virtual {v6}, Lcom/sun/media/jfxmedia/MediaException;->getMediaError()Lcom/sun/media/jfxmedia/MediaError;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$MediaErrorEvent;-><init>(Ljava/lang/Object;Lcom/sun/media/jfxmedia/MediaError;)V

    invoke-virtual {v2, v3}, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->sendPlayerEvent(Lcom/sun/media/jfxmedia/events/PlayerEvent;)V

    .line 1085
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method

.method protected init()V
    .locals 3

    .prologue
    .line 164
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->media:Lcom/sun/media/jfxmediaimpl/NativeMedia;

    move-object v2, v0

    invoke-virtual {v1, v2}, Lcom/sun/media/jfxmediaimpl/NativeMedia;->addMarkerStateListener(Lcom/sun/media/jfxmediaimpl/MarkerStateListener;)V

    .line 165
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->eventLoop:Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$EventQueueThread;

    invoke-virtual {v1}, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$EventQueueThread;->start()V

    .line 166
    return-void
.end method

.method public markerStateChanged(Z)V
    .locals 6

    .prologue
    .line 1550
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;
    move v1, p1

    .local v1, "hasMarkers":Z
    move v3, v1

    if-eqz v3, :cond_1

    .line 1551
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->markerLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 1553
    move-object v3, v0

    move-object v4, v0

    :try_start_0
    invoke-virtual {v4}, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->getPresentationTime()D

    move-result-wide v4

    iput-wide v4, v3, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->previousTime:D
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1555
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->markerLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 1556
    .line 1557
    move-object v3, v0

    invoke-direct {v3}, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->createMediaPulse()V

    .line 1563
    :cond_0
    :goto_0
    return-void

    .line 1555
    :catchall_0
    move-exception v3

    move-object v2, v3

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->markerLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    move-object v3, v2

    throw v3

    .line 1559
    :cond_1
    move-object v3, v0

    iget-boolean v3, v3, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->isStopTimeSet:Z

    if-nez v3, :cond_0

    .line 1560
    move-object v3, v0

    invoke-direct {v3}, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->destroyMediaPulse()V

    goto :goto_0
.end method

.method public pause()V
    .locals 8

    .prologue
    .line 1041
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;
    move-object v2, v0

    :try_start_0
    invoke-virtual {v2}, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->playerPause()V
    :try_end_0
    .catch Lcom/sun/media/jfxmedia/MediaException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1044
    .line 1045
    :goto_0
    return-void

    .line 1042
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 1043
    .local v1, "me":Lcom/sun/media/jfxmedia/MediaException;
    move-object v2, v0

    new-instance v3, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$MediaErrorEvent;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    move-object v6, v1

    invoke-virtual {v6}, Lcom/sun/media/jfxmedia/MediaException;->getMediaError()Lcom/sun/media/jfxmedia/MediaError;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$MediaErrorEvent;-><init>(Ljava/lang/Object;Lcom/sun/media/jfxmedia/MediaError;)V

    invoke-virtual {v2, v3}, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->sendPlayerEvent(Lcom/sun/media/jfxmedia/events/PlayerEvent;)V

    goto :goto_0
.end method

.method public play()V
    .locals 9

    .prologue
    .line 1017
    move-object v1, p0

    .local v1, "this":Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;
    move-object v3, v1

    :try_start_0
    iget-boolean v3, v3, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->isStartTimeUpdated:Z

    if-eqz v3, :cond_0

    .line 1018
    move-object v3, v1

    move-object v4, v1

    iget-wide v4, v4, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->startTime:D

    invoke-virtual {v3, v4, v5}, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->playerSeek(D)V

    .line 1020
    :cond_0
    move-object v3, v1

    iget-object v3, v3, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->isMediaPulseEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1021
    move-object v3, v1

    invoke-virtual {v3}, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->playerPlay()V
    :try_end_0
    .catch Lcom/sun/media/jfxmedia/MediaException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1024
    .line 1025
    :goto_0
    return-void

    .line 1022
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 1023
    .local v2, "me":Lcom/sun/media/jfxmedia/MediaException;
    move-object v3, v1

    new-instance v4, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$MediaErrorEvent;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v1

    move-object v7, v2

    invoke-virtual {v7}, Lcom/sun/media/jfxmedia/MediaException;->getMediaError()Lcom/sun/media/jfxmedia/MediaError;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$MediaErrorEvent;-><init>(Ljava/lang/Object;Lcom/sun/media/jfxmedia/MediaError;)V

    invoke-virtual {v3, v4}, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->sendPlayerEvent(Lcom/sun/media/jfxmedia/events/PlayerEvent;)V

    goto :goto_0
.end method

.method protected abstract playerDispose()V
.end method

.method protected abstract playerFinish()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/media/jfxmedia/MediaException;
        }
    .end annotation
.end method

.method protected abstract playerGetAudioSyncDelay()J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/media/jfxmedia/MediaException;
        }
    .end annotation
.end method

.method protected abstract playerGetBalance()F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/media/jfxmedia/MediaException;
        }
    .end annotation
.end method

.method protected abstract playerGetDuration()D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/media/jfxmedia/MediaException;
        }
    .end annotation
.end method

.method protected abstract playerGetMute()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/media/jfxmedia/MediaException;
        }
    .end annotation
.end method

.method protected abstract playerGetPresentationTime()D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/media/jfxmedia/MediaException;
        }
    .end annotation
.end method

.method protected abstract playerGetRate()F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/media/jfxmedia/MediaException;
        }
    .end annotation
.end method

.method protected abstract playerGetVolume()F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/media/jfxmedia/MediaException;
        }
    .end annotation
.end method

.method protected abstract playerInit()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/media/jfxmedia/MediaException;
        }
    .end annotation
.end method

.method protected abstract playerPause()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/media/jfxmedia/MediaException;
        }
    .end annotation
.end method

.method protected abstract playerPlay()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/media/jfxmedia/MediaException;
        }
    .end annotation
.end method

.method protected abstract playerSeek(D)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/media/jfxmedia/MediaException;
        }
    .end annotation
.end method

.method protected abstract playerSetAudioSyncDelay(J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/media/jfxmedia/MediaException;
        }
    .end annotation
.end method

.method protected abstract playerSetBalance(F)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/media/jfxmedia/MediaException;
        }
    .end annotation
.end method

.method protected abstract playerSetMute(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/media/jfxmedia/MediaException;
        }
    .end annotation
.end method

.method protected abstract playerSetRate(F)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/media/jfxmedia/MediaException;
        }
    .end annotation
.end method

.method protected abstract playerSetVolume(F)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/media/jfxmedia/MediaException;
        }
    .end annotation
.end method

.method protected abstract playerStop()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/media/jfxmedia/MediaException;
        }
    .end annotation
.end method

.method public removeAudioSpectrumListener(Lcom/sun/media/jfxmedia/events/AudioSpectrumListener;)V
    .locals 6

    .prologue
    .line 974
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;
    move-object v1, p1

    .local v1, "listener":Lcom/sun/media/jfxmedia/events/AudioSpectrumListener;
    move-object v4, v1

    if-eqz v4, :cond_2

    .line 975
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->audioSpectrumListeners:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v4

    move-object v2, v4

    .local v2, "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Ljava/lang/ref/WeakReference<Lcom/sun/media/jfxmedia/events/AudioSpectrumListener;>;>;"
    :goto_0
    move-object v4, v2

    invoke-interface {v4}, Ljava/util/ListIterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 976
    move-object v4, v2

    invoke-interface {v4}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/media/jfxmedia/events/AudioSpectrumListener;

    move-object v3, v4

    .line 977
    .local v3, "l":Lcom/sun/media/jfxmedia/events/AudioSpectrumListener;
    move-object v4, v3

    if-eqz v4, :cond_0

    move-object v4, v3

    move-object v5, v1

    if-ne v4, v5, :cond_1

    .line 978
    :cond_0
    move-object v4, v2

    invoke-interface {v4}, Ljava/util/ListIterator;->remove()V

    .line 980
    :cond_1
    goto :goto_0

    .line 982
    .end local v2    # "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Ljava/lang/ref/WeakReference<Lcom/sun/media/jfxmedia/events/AudioSpectrumListener;>;>;"
    .end local v3    # "l":Lcom/sun/media/jfxmedia/events/AudioSpectrumListener;
    :cond_2
    return-void
.end method

.method public removeBufferListener(Lcom/sun/media/jfxmedia/events/BufferListener;)V
    .locals 6

    .prologue
    .line 955
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;
    move-object v1, p1

    .local v1, "listener":Lcom/sun/media/jfxmedia/events/BufferListener;
    move-object v4, v1

    if-eqz v4, :cond_2

    .line 956
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->bufferListeners:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v4

    move-object v2, v4

    .local v2, "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Ljava/lang/ref/WeakReference<Lcom/sun/media/jfxmedia/events/BufferListener;>;>;"
    :goto_0
    move-object v4, v2

    invoke-interface {v4}, Ljava/util/ListIterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 957
    move-object v4, v2

    invoke-interface {v4}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/media/jfxmedia/events/BufferListener;

    move-object v3, v4

    .line 958
    .local v3, "l":Lcom/sun/media/jfxmedia/events/BufferListener;
    move-object v4, v3

    if-eqz v4, :cond_0

    move-object v4, v3

    move-object v5, v1

    if-ne v4, v5, :cond_1

    .line 959
    :cond_0
    move-object v4, v2

    invoke-interface {v4}, Ljava/util/ListIterator;->remove()V

    .line 961
    :cond_1
    goto :goto_0

    .line 963
    .end local v2    # "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Ljava/lang/ref/WeakReference<Lcom/sun/media/jfxmedia/events/BufferListener;>;>;"
    .end local v3    # "l":Lcom/sun/media/jfxmedia/events/BufferListener;
    :cond_2
    return-void
.end method

.method public removeMarkerListener(Lcom/sun/media/jfxmedia/events/MarkerListener;)V
    .locals 6

    .prologue
    .line 926
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;
    move-object v1, p1

    .local v1, "listener":Lcom/sun/media/jfxmedia/events/MarkerListener;
    move-object v4, v1

    if-eqz v4, :cond_2

    .line 927
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->markerListeners:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v4

    move-object v2, v4

    .local v2, "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Ljava/lang/ref/WeakReference<Lcom/sun/media/jfxmedia/events/MarkerListener;>;>;"
    :goto_0
    move-object v4, v2

    invoke-interface {v4}, Ljava/util/ListIterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 928
    move-object v4, v2

    invoke-interface {v4}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/media/jfxmedia/events/MarkerListener;

    move-object v3, v4

    .line 929
    .local v3, "l":Lcom/sun/media/jfxmedia/events/MarkerListener;
    move-object v4, v3

    if-eqz v4, :cond_0

    move-object v4, v3

    move-object v5, v1

    if-ne v4, v5, :cond_1

    .line 930
    :cond_0
    move-object v4, v2

    invoke-interface {v4}, Ljava/util/ListIterator;->remove()V

    .line 932
    :cond_1
    goto :goto_0

    .line 934
    .end local v2    # "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Ljava/lang/ref/WeakReference<Lcom/sun/media/jfxmedia/events/MarkerListener;>;>;"
    .end local v3    # "l":Lcom/sun/media/jfxmedia/events/MarkerListener;
    :cond_2
    return-void
.end method

.method public removeMediaErrorListener(Lcom/sun/media/jfxmedia/events/MediaErrorListener;)V
    .locals 6

    .prologue
    .line 792
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;
    move-object v1, p1

    .local v1, "listener":Lcom/sun/media/jfxmedia/events/MediaErrorListener;
    move-object v4, v1

    if-eqz v4, :cond_2

    .line 793
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->errorListeners:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v4

    move-object v2, v4

    .local v2, "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Ljava/lang/ref/WeakReference<Lcom/sun/media/jfxmedia/events/MediaErrorListener;>;>;"
    :goto_0
    move-object v4, v2

    invoke-interface {v4}, Ljava/util/ListIterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 794
    move-object v4, v2

    invoke-interface {v4}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/media/jfxmedia/events/MediaErrorListener;

    move-object v3, v4

    .line 795
    .local v3, "l":Lcom/sun/media/jfxmedia/events/MediaErrorListener;
    move-object v4, v3

    if-eqz v4, :cond_0

    move-object v4, v3

    move-object v5, v1

    if-ne v4, v5, :cond_1

    .line 796
    :cond_0
    move-object v4, v2

    invoke-interface {v4}, Ljava/util/ListIterator;->remove()V

    .line 798
    :cond_1
    goto :goto_0

    .line 800
    .end local v2    # "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Ljava/lang/ref/WeakReference<Lcom/sun/media/jfxmedia/events/MediaErrorListener;>;>;"
    .end local v3    # "l":Lcom/sun/media/jfxmedia/events/MediaErrorListener;
    :cond_2
    return-void
.end method

.method public removeMediaPlayerListener(Lcom/sun/media/jfxmedia/events/PlayerStateListener;)V
    .locals 6

    .prologue
    .line 846
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;
    move-object v1, p1

    .local v1, "listener":Lcom/sun/media/jfxmedia/events/PlayerStateListener;
    move-object v4, v1

    if-eqz v4, :cond_2

    .line 847
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->playerStateListeners:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v4

    move-object v2, v4

    .local v2, "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Ljava/lang/ref/WeakReference<Lcom/sun/media/jfxmedia/events/PlayerStateListener;>;>;"
    :goto_0
    move-object v4, v2

    invoke-interface {v4}, Ljava/util/ListIterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 848
    move-object v4, v2

    invoke-interface {v4}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/media/jfxmedia/events/PlayerStateListener;

    move-object v3, v4

    .line 849
    .local v3, "l":Lcom/sun/media/jfxmedia/events/PlayerStateListener;
    move-object v4, v3

    if-eqz v4, :cond_0

    move-object v4, v3

    move-object v5, v1

    if-ne v4, v5, :cond_1

    .line 850
    :cond_0
    move-object v4, v2

    invoke-interface {v4}, Ljava/util/ListIterator;->remove()V

    .line 852
    :cond_1
    goto :goto_0

    .line 854
    .end local v2    # "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Ljava/lang/ref/WeakReference<Lcom/sun/media/jfxmedia/events/PlayerStateListener;>;>;"
    .end local v3    # "l":Lcom/sun/media/jfxmedia/events/PlayerStateListener;
    :cond_2
    return-void
.end method

.method public removeMediaTimeListener(Lcom/sun/media/jfxmedia/events/PlayerTimeListener;)V
    .locals 6

    .prologue
    .line 885
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;
    move-object v1, p1

    .local v1, "listener":Lcom/sun/media/jfxmedia/events/PlayerTimeListener;
    move-object v4, v1

    if-eqz v4, :cond_2

    .line 886
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->playerTimeListeners:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v4

    move-object v2, v4

    .local v2, "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Ljava/lang/ref/WeakReference<Lcom/sun/media/jfxmedia/events/PlayerTimeListener;>;>;"
    :goto_0
    move-object v4, v2

    invoke-interface {v4}, Ljava/util/ListIterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 887
    move-object v4, v2

    invoke-interface {v4}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/media/jfxmedia/events/PlayerTimeListener;

    move-object v3, v4

    .line 888
    .local v3, "l":Lcom/sun/media/jfxmedia/events/PlayerTimeListener;
    move-object v4, v3

    if-eqz v4, :cond_0

    move-object v4, v3

    move-object v5, v1

    if-ne v4, v5, :cond_1

    .line 889
    :cond_0
    move-object v4, v2

    invoke-interface {v4}, Ljava/util/ListIterator;->remove()V

    .line 891
    :cond_1
    goto :goto_0

    .line 893
    .end local v2    # "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Ljava/lang/ref/WeakReference<Lcom/sun/media/jfxmedia/events/PlayerTimeListener;>;>;"
    .end local v3    # "l":Lcom/sun/media/jfxmedia/events/PlayerTimeListener;
    :cond_2
    return-void
.end method

.method public removeVideoTrackSizeListener(Lcom/sun/media/jfxmedia/events/VideoTrackSizeListener;)V
    .locals 6

    .prologue
    .line 907
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;
    move-object v1, p1

    .local v1, "listener":Lcom/sun/media/jfxmedia/events/VideoTrackSizeListener;
    move-object v4, v1

    if-eqz v4, :cond_2

    .line 908
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->videoTrackSizeListeners:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v4

    move-object v2, v4

    .local v2, "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Ljava/lang/ref/WeakReference<Lcom/sun/media/jfxmedia/events/VideoTrackSizeListener;>;>;"
    :goto_0
    move-object v4, v2

    invoke-interface {v4}, Ljava/util/ListIterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 909
    move-object v4, v2

    invoke-interface {v4}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/media/jfxmedia/events/VideoTrackSizeListener;

    move-object v3, v4

    .line 910
    .local v3, "l":Lcom/sun/media/jfxmedia/events/VideoTrackSizeListener;
    move-object v4, v3

    if-eqz v4, :cond_0

    move-object v4, v3

    move-object v5, v1

    if-ne v4, v5, :cond_1

    .line 911
    :cond_0
    move-object v4, v2

    invoke-interface {v4}, Ljava/util/ListIterator;->remove()V

    .line 913
    :cond_1
    goto :goto_0

    .line 915
    .end local v2    # "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Ljava/lang/ref/WeakReference<Lcom/sun/media/jfxmedia/events/VideoTrackSizeListener;>;>;"
    .end local v3    # "l":Lcom/sun/media/jfxmedia/events/VideoTrackSizeListener;
    :cond_2
    return-void
.end method

.method public seek(D)V
    .locals 13

    .prologue
    .line 1218
    move-object v1, p0

    .local v1, "this":Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;
    move-wide v2, p1

    .local v2, "streamTime":D
    move-object v7, v1

    iget-object v7, v7, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->playerState:Lcom/sun/media/jfxmedia/events/PlayerStateEvent$PlayerState;

    sget-object v8, Lcom/sun/media/jfxmedia/events/PlayerStateEvent$PlayerState;->STOPPED:Lcom/sun/media/jfxmedia/events/PlayerStateEvent$PlayerState;

    if-ne v7, v8, :cond_0

    .line 1219
    .line 1259
    :goto_0
    return-void

    .line 1222
    :cond_0
    move-wide v7, v2

    const-wide/16 v9, 0x0

    cmpg-double v7, v7, v9

    if-gez v7, :cond_4

    .line 1223
    const-wide/16 v7, 0x0

    move-wide v2, v7

    .line 1231
    :cond_1
    :goto_1
    move-object v7, v1

    iget-object v7, v7, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->isMediaPulseEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v7

    if-nez v7, :cond_3

    .line 1232
    move-object v7, v1

    iget-object v7, v7, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->playerState:Lcom/sun/media/jfxmedia/events/PlayerStateEvent$PlayerState;

    sget-object v8, Lcom/sun/media/jfxmedia/events/PlayerStateEvent$PlayerState;->PLAYING:Lcom/sun/media/jfxmedia/events/PlayerStateEvent$PlayerState;

    if-eq v7, v8, :cond_2

    move-object v7, v1

    iget-object v7, v7, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->playerState:Lcom/sun/media/jfxmedia/events/PlayerStateEvent$PlayerState;

    sget-object v8, Lcom/sun/media/jfxmedia/events/PlayerStateEvent$PlayerState;->PAUSED:Lcom/sun/media/jfxmedia/events/PlayerStateEvent$PlayerState;

    if-eq v7, v8, :cond_2

    move-object v7, v1

    iget-object v7, v7, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->playerState:Lcom/sun/media/jfxmedia/events/PlayerStateEvent$PlayerState;

    sget-object v8, Lcom/sun/media/jfxmedia/events/PlayerStateEvent$PlayerState;->FINISHED:Lcom/sun/media/jfxmedia/events/PlayerStateEvent$PlayerState;

    if-ne v7, v8, :cond_3

    :cond_2
    move-object v7, v1

    .line 1235
    invoke-virtual {v7}, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->getStartTime()D

    move-result-wide v7

    move-wide v9, v2

    cmpg-double v7, v7, v9

    if-gtz v7, :cond_3

    move-wide v7, v2

    move-object v9, v1

    invoke-virtual {v9}, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->getStopTime()D

    move-result-wide v9

    cmpg-double v7, v7, v9

    if-gtz v7, :cond_3

    .line 1236
    move-object v7, v1

    iget-object v7, v7, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->isMediaPulseEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1240
    :cond_3
    move-object v7, v1

    iget-object v7, v7, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->markerLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v7}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 1242
    move-object v7, v1

    move-object v8, v1

    :try_start_0
    invoke-virtual {v8}, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->getPresentationTime()D

    move-result-wide v8

    iput-wide v8, v7, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->timeBeforeSeek:D

    .line 1243
    move-object v7, v1

    move-wide v8, v2

    iput-wide v8, v7, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->timeAfterSeek:D

    .line 1244
    move-object v7, v1

    move-object v8, v1

    iget-wide v8, v8, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->timeBeforeSeek:D

    move-object v10, v1

    iget-wide v10, v10, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->timeAfterSeek:D

    cmpl-double v8, v8, v10

    if-eqz v8, :cond_5

    const/4 v8, 0x1

    :goto_2
    iput-boolean v8, v7, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->checkSeek:Z

    .line 1245
    move-object v7, v1

    move-wide v8, v2

    iput-wide v8, v7, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->previousTime:D

    .line 1246
    move-object v7, v1

    const-wide/high16 v8, -0x4010000000000000L    # -1.0

    iput-wide v8, v7, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->firedMarkerTime:D
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1251
    move-object v7, v1

    move-wide v8, v2

    :try_start_1
    invoke-virtual {v7, v8, v9}, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->playerSeek(D)V
    :try_end_1
    .catch Lcom/sun/media/jfxmedia/MediaException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1255
    .line 1257
    :goto_3
    move-object v7, v1

    iget-object v7, v7, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->markerLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v7}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 1258
    .line 1259
    goto :goto_0

    .line 1225
    :cond_4
    move-object v7, v1

    invoke-virtual {v7}, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->getDuration()D

    move-result-wide v7

    move-wide v4, v7

    .line 1226
    .local v4, "duration":D
    move-wide v7, v4

    const-wide/16 v9, 0x0

    cmpl-double v7, v7, v9

    if-ltz v7, :cond_1

    move-wide v7, v2

    move-wide v9, v4

    cmpl-double v7, v7, v9

    if-lez v7, :cond_1

    .line 1227
    move-wide v7, v4

    move-wide v2, v7

    goto/16 :goto_1

    .line 1244
    .end local v4    # "duration":D
    :cond_5
    const/4 v8, 0x0

    goto :goto_2

    .line 1252
    :catch_0
    move-exception v7

    move-object v4, v7

    .line 1254
    .local v4, "me":Lcom/sun/media/jfxmedia/MediaException;
    move-object v7, v1

    :try_start_2
    new-instance v8, Ljava/lang/StringBuilder;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "seek("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-wide v9, v2

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ") failed!"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/sun/media/jfxmediaimpl/MediaUtils;->warning(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    .line 1257
    .end local v4    # "me":Lcom/sun/media/jfxmedia/MediaException;
    :catchall_0
    move-exception v7

    move-object v6, v7

    move-object v7, v1

    iget-object v7, v7, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->markerLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v7}, Ljava/util/concurrent/locks/Lock;->unlock()V

    move-object v7, v6

    throw v7
.end method

.method protected sendAudioSpectrumEvent(DD)V
    .locals 15

    .prologue
    .line 1545
    move-object v1, p0

    .local v1, "this":Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;
    move-wide/from16 v2, p1

    .local v2, "timestamp":D
    move-wide/from16 v4, p3

    .local v4, "duration":D
    move-object v6, v1

    new-instance v7, Lcom/sun/media/jfxmedia/events/AudioSpectrumEvent;

    move-object v14, v7

    move-object v7, v14

    move-object v8, v14

    move-object v9, v1

    invoke-virtual {v9}, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->getAudioSpectrum()Lcom/sun/media/jfxmedia/effects/AudioSpectrum;

    move-result-object v9

    move-wide v10, v2

    move-wide v12, v4

    invoke-direct/range {v8 .. v13}, Lcom/sun/media/jfxmedia/events/AudioSpectrumEvent;-><init>(Lcom/sun/media/jfxmedia/effects/AudioSpectrum;DD)V

    invoke-virtual {v6, v7}, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->sendPlayerEvent(Lcom/sun/media/jfxmedia/events/PlayerEvent;)V

    .line 1546
    return-void
.end method

.method protected sendAudioTrack(ZJLjava/lang/String;ILjava/lang/String;IIF)V
    .locals 26

    .prologue
    .line 1492
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;
    move/from16 v1, p1

    .local v1, "enabled":Z
    move-wide/from16 v2, p2

    .local v2, "trackID":J
    move-object/from16 v4, p4

    .local v4, "name":Ljava/lang/String;
    move/from16 v5, p5

    .local v5, "encoding":I
    move-object/from16 v6, p6

    .local v6, "language":Ljava/lang/String;
    move/from16 v7, p7

    .local v7, "numChannels":I
    move/from16 v8, p8

    .local v8, "channelMask":I
    move/from16 v9, p9

    .local v9, "sampleRate":F
    const/4 v13, 0x0

    move-object v10, v13

    .line 1493
    .local v10, "locale":Ljava/util/Locale;
    move-object v13, v6

    const-string v14, "und"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_0

    .line 1494
    new-instance v13, Ljava/util/Locale;

    move-object/from16 v24, v13

    move-object/from16 v13, v24

    move-object/from16 v14, v24

    move-object v15, v6

    invoke-direct {v14, v15}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    move-object v10, v13

    .line 1497
    :cond_0
    new-instance v13, Lcom/sun/media/jfxmedia/track/AudioTrack;

    move-object/from16 v24, v13

    move-object/from16 v13, v24

    move-object/from16 v14, v24

    move v15, v1

    move-wide/from16 v16, v2

    move-object/from16 v18, v4

    move-object/from16 v19, v10

    move/from16 v20, v5

    .line 1498
    invoke-static/range {v20 .. v20}, Lcom/sun/media/jfxmedia/track/Track$Encoding;->toEncoding(I)Lcom/sun/media/jfxmedia/track/Track$Encoding;

    move-result-object v20

    move/from16 v21, v7

    move/from16 v22, v8

    move/from16 v23, v9

    invoke-direct/range {v14 .. v23}, Lcom/sun/media/jfxmedia/track/AudioTrack;-><init>(ZJLjava/lang/String;Ljava/util/Locale;Lcom/sun/media/jfxmedia/track/Track$Encoding;IIF)V

    move-object v11, v13

    .line 1501
    .local v11, "track":Lcom/sun/media/jfxmedia/track/Track;
    new-instance v13, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$TrackEvent;

    move-object/from16 v24, v13

    move-object/from16 v13, v24

    move-object/from16 v14, v24

    move-object v15, v11

    invoke-direct {v14, v15}, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$TrackEvent;-><init>(Lcom/sun/media/jfxmedia/track/Track;)V

    move-object v12, v13

    .line 1503
    .local v12, "evt":Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$TrackEvent;
    move-object v13, v0

    move-object v14, v12

    invoke-virtual {v13, v14}, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->sendPlayerEvent(Lcom/sun/media/jfxmedia/events/PlayerEvent;)V

    .line 1504
    return-void
.end method

.method protected sendBufferProgressEvent(DJJJ)V
    .locals 21

    .prologue
    .line 1541
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;
    move-wide/from16 v1, p1

    .local v1, "clipDuration":D
    move-wide/from16 v3, p3

    .local v3, "bufferStart":J
    move-wide/from16 v5, p5

    .local v5, "bufferStop":J
    move-wide/from16 v7, p7

    .local v7, "bufferPosition":J
    move-object v9, v0

    new-instance v10, Lcom/sun/media/jfxmedia/events/BufferProgressEvent;

    move-object/from16 v20, v10

    move-object/from16 v10, v20

    move-object/from16 v11, v20

    move-wide v12, v1

    move-wide v14, v3

    move-wide/from16 v16, v5

    move-wide/from16 v18, v7

    invoke-direct/range {v11 .. v19}, Lcom/sun/media/jfxmedia/events/BufferProgressEvent;-><init>(DJJJ)V

    invoke-virtual {v9, v10}, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->sendPlayerEvent(Lcom/sun/media/jfxmedia/events/PlayerEvent;)V

    .line 1542
    return-void
.end method

.method protected sendDurationUpdateEvent(D)V
    .locals 9

    .prologue
    .line 1537
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;
    move-wide v1, p1

    .local v1, "duration":D
    move-object v3, v0

    new-instance v4, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$PlayerTimeEvent;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-wide v6, v1

    invoke-direct {v5, v6, v7}, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$PlayerTimeEvent;-><init>(D)V

    invoke-virtual {v3, v4}, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->sendPlayerEvent(Lcom/sun/media/jfxmedia/events/PlayerEvent;)V

    .line 1538
    return-void
.end method

.method protected sendFrameSizeChangedEvent(II)V
    .locals 9

    .prologue
    .line 1486
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;
    move v1, p1

    .local v1, "width":I
    move v2, p2

    .local v2, "height":I
    move-object v3, v0

    new-instance v4, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$FrameSizeChangedEvent;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move v6, v1

    move v7, v2

    invoke-direct {v5, v6, v7}, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$FrameSizeChangedEvent;-><init>(II)V

    invoke-virtual {v3, v4}, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->sendPlayerEvent(Lcom/sun/media/jfxmedia/events/PlayerEvent;)V

    .line 1487
    return-void
.end method

.method protected sendMarkerEvent(Ljava/lang/String;D)V
    .locals 12

    .prologue
    .line 1533
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-wide v2, p2

    .local v2, "time":D
    move-object v4, v0

    new-instance v5, Lcom/sun/media/jfxmedia/events/MarkerEvent;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v1

    move-wide v8, v2

    invoke-direct {v6, v7, v8, v9}, Lcom/sun/media/jfxmedia/events/MarkerEvent;-><init>(Ljava/lang/String;D)V

    invoke-virtual {v4, v5}, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->sendPlayerEvent(Lcom/sun/media/jfxmedia/events/PlayerEvent;)V

    .line 1534
    return-void
.end method

.method protected sendNewFrameEvent(J)V
    .locals 9

    .prologue
    .line 1479
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;
    move-wide v1, p1

    .local v1, "nativeRef":J
    move-wide v4, v1

    invoke-static {v4, v5}, Lcom/sun/media/jfxmediaimpl/NativeVideoBuffer;->createVideoBuffer(J)Lcom/sun/media/jfxmediaimpl/NativeVideoBuffer;

    move-result-object v4

    move-object v3, v4

    .line 1482
    .local v3, "newFrameData":Lcom/sun/media/jfxmediaimpl/NativeVideoBuffer;
    move-object v4, v0

    new-instance v5, Lcom/sun/media/jfxmedia/events/NewFrameEvent;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v3

    invoke-direct {v6, v7}, Lcom/sun/media/jfxmedia/events/NewFrameEvent;-><init>(Lcom/sun/media/jfxmedia/control/VideoDataBuffer;)V

    invoke-virtual {v4, v5}, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->sendPlayerEvent(Lcom/sun/media/jfxmedia/events/PlayerEvent;)V

    .line 1483
    return-void
.end method

.method protected sendPlayerEvent(Lcom/sun/media/jfxmedia/events/PlayerEvent;)V
    .locals 4

    .prologue
    .line 1434
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;
    move-object v1, p1

    .local v1, "evt":Lcom/sun/media/jfxmedia/events/PlayerEvent;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->eventLoop:Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$EventQueueThread;

    if-eqz v2, :cond_0

    .line 1435
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->eventLoop:Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$EventQueueThread;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$EventQueueThread;->postEvent(Lcom/sun/media/jfxmedia/events/PlayerEvent;)V

    .line 1437
    :cond_0
    return-void
.end method

.method protected sendPlayerHaltEvent(Ljava/lang/String;D)V
    .locals 12

    .prologue
    .line 1442
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;
    move-object v1, p1

    .local v1, "message":Ljava/lang/String;
    move-wide v2, p2

    .local v2, "time":D
    const/4 v4, 0x4

    move-object v5, v1

    invoke-static {v4, v5}, Lcom/sun/media/jfxmedia/logging/Logger;->logMsg(ILjava/lang/String;)V

    .line 1444
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->eventLoop:Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$EventQueueThread;

    if-eqz v4, :cond_0

    .line 1445
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->eventLoop:Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$EventQueueThread;

    new-instance v5, Lcom/sun/media/jfxmedia/events/PlayerStateEvent;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    sget-object v7, Lcom/sun/media/jfxmedia/events/PlayerStateEvent$PlayerState;->HALTED:Lcom/sun/media/jfxmedia/events/PlayerStateEvent$PlayerState;

    move-wide v8, v2

    move-object v10, v1

    invoke-direct {v6, v7, v8, v9, v10}, Lcom/sun/media/jfxmedia/events/PlayerStateEvent;-><init>(Lcom/sun/media/jfxmedia/events/PlayerStateEvent$PlayerState;DLjava/lang/String;)V

    invoke-virtual {v4, v5}, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$EventQueueThread;->postEvent(Lcom/sun/media/jfxmedia/events/PlayerEvent;)V

    .line 1447
    :cond_0
    return-void
.end method

.method protected sendPlayerMediaErrorEvent(I)V
    .locals 8

    .prologue
    .line 1450
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;
    move v1, p1

    .local v1, "errorCode":I
    move-object v2, v0

    new-instance v3, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$MediaErrorEvent;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    move v6, v1

    invoke-static {v6}, Lcom/sun/media/jfxmedia/MediaError;->getFromCode(I)Lcom/sun/media/jfxmedia/MediaError;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$MediaErrorEvent;-><init>(Ljava/lang/Object;Lcom/sun/media/jfxmedia/MediaError;)V

    invoke-virtual {v2, v3}, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->sendPlayerEvent(Lcom/sun/media/jfxmedia/events/PlayerEvent;)V

    .line 1451
    return-void
.end method

.method protected sendPlayerStateEvent(ID)V
    .locals 12

    .prologue
    .line 1454
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;
    move v1, p1

    .local v1, "eventID":I
    move-wide v2, p2

    .local v2, "time":D
    move v4, v1

    packed-switch v4, :pswitch_data_0

    .line 1476
    :goto_0
    return-void

    .line 1456
    :pswitch_0
    move-object v4, v0

    new-instance v5, Lcom/sun/media/jfxmedia/events/PlayerStateEvent;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    sget-object v7, Lcom/sun/media/jfxmedia/events/PlayerStateEvent$PlayerState;->READY:Lcom/sun/media/jfxmedia/events/PlayerStateEvent$PlayerState;

    move-wide v8, v2

    invoke-direct {v6, v7, v8, v9}, Lcom/sun/media/jfxmedia/events/PlayerStateEvent;-><init>(Lcom/sun/media/jfxmedia/events/PlayerStateEvent$PlayerState;D)V

    invoke-virtual {v4, v5}, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->sendPlayerEvent(Lcom/sun/media/jfxmedia/events/PlayerEvent;)V

    .line 1457
    goto :goto_0

    .line 1459
    :pswitch_1
    move-object v4, v0

    new-instance v5, Lcom/sun/media/jfxmedia/events/PlayerStateEvent;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    sget-object v7, Lcom/sun/media/jfxmedia/events/PlayerStateEvent$PlayerState;->PLAYING:Lcom/sun/media/jfxmedia/events/PlayerStateEvent$PlayerState;

    move-wide v8, v2

    invoke-direct {v6, v7, v8, v9}, Lcom/sun/media/jfxmedia/events/PlayerStateEvent;-><init>(Lcom/sun/media/jfxmedia/events/PlayerStateEvent$PlayerState;D)V

    invoke-virtual {v4, v5}, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->sendPlayerEvent(Lcom/sun/media/jfxmedia/events/PlayerEvent;)V

    .line 1460
    goto :goto_0

    .line 1462
    :pswitch_2
    move-object v4, v0

    new-instance v5, Lcom/sun/media/jfxmedia/events/PlayerStateEvent;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    sget-object v7, Lcom/sun/media/jfxmedia/events/PlayerStateEvent$PlayerState;->PAUSED:Lcom/sun/media/jfxmedia/events/PlayerStateEvent$PlayerState;

    move-wide v8, v2

    invoke-direct {v6, v7, v8, v9}, Lcom/sun/media/jfxmedia/events/PlayerStateEvent;-><init>(Lcom/sun/media/jfxmedia/events/PlayerStateEvent$PlayerState;D)V

    invoke-virtual {v4, v5}, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->sendPlayerEvent(Lcom/sun/media/jfxmedia/events/PlayerEvent;)V

    .line 1463
    goto :goto_0

    .line 1465
    :pswitch_3
    move-object v4, v0

    new-instance v5, Lcom/sun/media/jfxmedia/events/PlayerStateEvent;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    sget-object v7, Lcom/sun/media/jfxmedia/events/PlayerStateEvent$PlayerState;->STOPPED:Lcom/sun/media/jfxmedia/events/PlayerStateEvent$PlayerState;

    move-wide v8, v2

    invoke-direct {v6, v7, v8, v9}, Lcom/sun/media/jfxmedia/events/PlayerStateEvent;-><init>(Lcom/sun/media/jfxmedia/events/PlayerStateEvent$PlayerState;D)V

    invoke-virtual {v4, v5}, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->sendPlayerEvent(Lcom/sun/media/jfxmedia/events/PlayerEvent;)V

    .line 1466
    goto :goto_0

    .line 1468
    :pswitch_4
    move-object v4, v0

    new-instance v5, Lcom/sun/media/jfxmedia/events/PlayerStateEvent;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    sget-object v7, Lcom/sun/media/jfxmedia/events/PlayerStateEvent$PlayerState;->STALLED:Lcom/sun/media/jfxmedia/events/PlayerStateEvent$PlayerState;

    move-wide v8, v2

    invoke-direct {v6, v7, v8, v9}, Lcom/sun/media/jfxmedia/events/PlayerStateEvent;-><init>(Lcom/sun/media/jfxmedia/events/PlayerStateEvent$PlayerState;D)V

    invoke-virtual {v4, v5}, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->sendPlayerEvent(Lcom/sun/media/jfxmedia/events/PlayerEvent;)V

    .line 1469
    goto :goto_0

    .line 1471
    :pswitch_5
    move-object v4, v0

    new-instance v5, Lcom/sun/media/jfxmedia/events/PlayerStateEvent;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    sget-object v7, Lcom/sun/media/jfxmedia/events/PlayerStateEvent$PlayerState;->FINISHED:Lcom/sun/media/jfxmedia/events/PlayerStateEvent$PlayerState;

    move-wide v8, v2

    invoke-direct {v6, v7, v8, v9}, Lcom/sun/media/jfxmedia/events/PlayerStateEvent;-><init>(Lcom/sun/media/jfxmedia/events/PlayerStateEvent$PlayerState;D)V

    invoke-virtual {v4, v5}, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->sendPlayerEvent(Lcom/sun/media/jfxmedia/events/PlayerEvent;)V

    .line 1472
    goto :goto_0

    .line 1454
    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method protected sendSubtitleTrack(ZJLjava/lang/String;ILjava/lang/String;)V
    .locals 18

    .prologue
    .line 1522
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;
    move/from16 v1, p1

    .local v1, "enabled":Z
    move-wide/from16 v2, p2

    .local v2, "trackID":J
    move-object/from16 v4, p4

    .local v4, "name":Ljava/lang/String;
    move/from16 v5, p5

    .local v5, "encoding":I
    move-object/from16 v6, p6

    .local v6, "language":Ljava/lang/String;
    const/4 v9, 0x0

    move-object v7, v9

    .line 1523
    .local v7, "locale":Ljava/util/Locale;
    const/4 v9, 0x0

    move-object v10, v6

    if-eq v9, v10, :cond_0

    .line 1524
    new-instance v9, Ljava/util/Locale;

    move-object/from16 v17, v9

    move-object/from16 v9, v17

    move-object/from16 v10, v17

    move-object v11, v6

    invoke-direct {v10, v11}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    move-object v7, v9

    .line 1526
    :cond_0
    new-instance v9, Lcom/sun/media/jfxmedia/track/SubtitleTrack;

    move-object/from16 v17, v9

    move-object/from16 v9, v17

    move-object/from16 v10, v17

    move v11, v1

    move-wide v12, v2

    move-object v14, v4

    move-object v15, v7

    move/from16 v16, v5

    .line 1527
    invoke-static/range {v16 .. v16}, Lcom/sun/media/jfxmedia/track/Track$Encoding;->toEncoding(I)Lcom/sun/media/jfxmedia/track/Track$Encoding;

    move-result-object v16

    invoke-direct/range {v10 .. v16}, Lcom/sun/media/jfxmedia/track/SubtitleTrack;-><init>(ZJLjava/lang/String;Ljava/util/Locale;Lcom/sun/media/jfxmedia/track/Track$Encoding;)V

    move-object v8, v9

    .line 1529
    .local v8, "track":Lcom/sun/media/jfxmedia/track/Track;
    move-object v9, v0

    new-instance v10, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$TrackEvent;

    move-object/from16 v17, v10

    move-object/from16 v10, v17

    move-object/from16 v11, v17

    move-object v12, v8

    invoke-direct {v11, v12}, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$TrackEvent;-><init>(Lcom/sun/media/jfxmedia/track/Track;)V

    invoke-virtual {v9, v10}, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->sendPlayerEvent(Lcom/sun/media/jfxmedia/events/PlayerEvent;)V

    .line 1530
    return-void
.end method

.method protected sendVideoTrack(ZJLjava/lang/String;IIIFZ)V
    .locals 26

    .prologue
    .line 1510
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;
    move/from16 v1, p1

    .local v1, "enabled":Z
    move-wide/from16 v2, p2

    .local v2, "trackID":J
    move-object/from16 v4, p4

    .local v4, "name":Ljava/lang/String;
    move/from16 v5, p5

    .local v5, "encoding":I
    move/from16 v6, p6

    .local v6, "width":I
    move/from16 v7, p7

    .local v7, "height":I
    move/from16 v8, p8

    .local v8, "frameRate":F
    move/from16 v9, p9

    .local v9, "hasAlphaChannel":Z
    new-instance v12, Lcom/sun/media/jfxmedia/track/VideoTrack;

    move-object/from16 v24, v12

    move-object/from16 v12, v24

    move-object/from16 v13, v24

    move v14, v1

    move-wide v15, v2

    move-object/from16 v17, v4

    const/16 v18, 0x0

    move/from16 v19, v5

    .line 1511
    invoke-static/range {v19 .. v19}, Lcom/sun/media/jfxmedia/track/Track$Encoding;->toEncoding(I)Lcom/sun/media/jfxmedia/track/Track$Encoding;

    move-result-object v19

    new-instance v20, Lcom/sun/media/jfxmedia/track/VideoResolution;

    move-object/from16 v24, v20

    move-object/from16 v20, v24

    move-object/from16 v21, v24

    move/from16 v22, v6

    move/from16 v23, v7

    invoke-direct/range {v21 .. v23}, Lcom/sun/media/jfxmedia/track/VideoResolution;-><init>(II)V

    move/from16 v21, v8

    move/from16 v22, v9

    invoke-direct/range {v13 .. v22}, Lcom/sun/media/jfxmedia/track/VideoTrack;-><init>(ZJLjava/lang/String;Ljava/util/Locale;Lcom/sun/media/jfxmedia/track/Track$Encoding;Lcom/sun/media/jfxmedia/track/VideoResolution;FZ)V

    move-object v10, v12

    .line 1514
    .local v10, "track":Lcom/sun/media/jfxmedia/track/Track;
    new-instance v12, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$TrackEvent;

    move-object/from16 v24, v12

    move-object/from16 v12, v24

    move-object/from16 v13, v24

    move-object v14, v10

    invoke-direct {v13, v14}, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$TrackEvent;-><init>(Lcom/sun/media/jfxmedia/track/Track;)V

    move-object v11, v12

    .line 1516
    .local v11, "evt":Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$TrackEvent;
    move-object v12, v0

    move-object v13, v11

    invoke-virtual {v12, v13}, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->sendPlayerEvent(Lcom/sun/media/jfxmedia/events/PlayerEvent;)V

    .line 1517
    return-void
.end method

.method protected sendWarning(ILjava/lang/String;)V
    .locals 10

    .prologue
    .line 1423
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;
    move v1, p1

    .local v1, "warningCode":I
    move-object v2, p2

    .local v2, "warningMessage":Ljava/lang/String;
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->eventLoop:Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$EventQueueThread;

    if-eqz v4, :cond_1

    .line 1424
    const-string v4, "Internal media warning: %d"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    move v8, v1

    .line 1425
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    .line 1424
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    .line 1426
    .local v3, "message":Ljava/lang/String;
    move-object v4, v2

    if-eqz v4, :cond_0

    .line 1427
    new-instance v4, Ljava/lang/StringBuilder;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    .line 1429
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->eventLoop:Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$EventQueueThread;

    new-instance v5, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$WarningEvent;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v0

    move-object v8, v3

    invoke-direct {v6, v7, v8}, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$WarningEvent;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$EventQueueThread;->postEvent(Lcom/sun/media/jfxmedia/events/PlayerEvent;)V

    .line 1431
    .end local v3    # "message":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public setAudioSyncDelay(J)V
    .locals 11

    .prologue
    .line 998
    move-object v1, p0

    .local v1, "this":Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;
    move-wide v2, p1

    .local v2, "delay":J
    move-object v5, v1

    move-wide v6, v2

    :try_start_0
    invoke-virtual {v5, v6, v7}, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->playerSetAudioSyncDelay(J)V
    :try_end_0
    .catch Lcom/sun/media/jfxmedia/MediaException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1001
    .line 1002
    :goto_0
    return-void

    .line 999
    :catch_0
    move-exception v5

    move-object v4, v5

    .line 1000
    .local v4, "me":Lcom/sun/media/jfxmedia/MediaException;
    move-object v5, v1

    new-instance v6, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$MediaErrorEvent;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v8, v1

    move-object v9, v4

    invoke-virtual {v9}, Lcom/sun/media/jfxmedia/MediaException;->getMediaError()Lcom/sun/media/jfxmedia/MediaError;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$MediaErrorEvent;-><init>(Ljava/lang/Object;Lcom/sun/media/jfxmedia/MediaError;)V

    invoke-virtual {v5, v6}, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->sendPlayerEvent(Lcom/sun/media/jfxmedia/events/PlayerEvent;)V

    goto :goto_0
.end method

.method public setBalance(F)V
    .locals 9

    .prologue
    .line 1138
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;
    move v1, p1

    .local v1, "bal":F
    move v3, v1

    const/high16 v4, -0x40800000    # -1.0f

    cmpg-float v3, v3, v4

    if-gez v3, :cond_1

    .line 1139
    const/high16 v3, -0x40800000    # -1.0f

    move v1, v3

    .line 1145
    :cond_0
    :goto_0
    move-object v3, v0

    move v4, v1

    :try_start_0
    invoke-virtual {v3, v4}, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->playerSetBalance(F)V
    :try_end_0
    .catch Lcom/sun/media/jfxmedia/MediaException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1148
    .line 1149
    :goto_1
    return-void

    .line 1140
    :cond_1
    move v3, v1

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v3, v3, v4

    if-lez v3, :cond_0

    .line 1141
    const/high16 v3, 0x3f800000    # 1.0f

    move v1, v3

    goto :goto_0

    .line 1146
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 1147
    .local v2, "me":Lcom/sun/media/jfxmedia/MediaException;
    move-object v3, v0

    new-instance v4, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$MediaErrorEvent;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v0

    move-object v7, v2

    invoke-virtual {v7}, Lcom/sun/media/jfxmedia/MediaException;->getMediaError()Lcom/sun/media/jfxmedia/MediaError;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$MediaErrorEvent;-><init>(Ljava/lang/Object;Lcom/sun/media/jfxmedia/MediaError;)V

    invoke-virtual {v3, v4}, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->sendPlayerEvent(Lcom/sun/media/jfxmedia/events/PlayerEvent;)V

    goto :goto_1
.end method

.method public setMute(Z)V
    .locals 9

    .prologue
    .line 1120
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;
    move v1, p1

    .local v1, "enable":Z
    move-object v3, v0

    move v4, v1

    :try_start_0
    invoke-virtual {v3, v4}, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->playerSetMute(Z)V
    :try_end_0
    .catch Lcom/sun/media/jfxmedia/MediaException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1123
    .line 1124
    :goto_0
    return-void

    .line 1121
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 1122
    .local v2, "me":Lcom/sun/media/jfxmedia/MediaException;
    move-object v3, v0

    new-instance v4, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$MediaErrorEvent;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v0

    move-object v7, v2

    invoke-virtual {v7}, Lcom/sun/media/jfxmedia/MediaException;->getMediaError()Lcom/sun/media/jfxmedia/MediaError;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$MediaErrorEvent;-><init>(Ljava/lang/Object;Lcom/sun/media/jfxmedia/MediaError;)V

    invoke-virtual {v3, v4}, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->sendPlayerEvent(Lcom/sun/media/jfxmedia/events/PlayerEvent;)V

    goto :goto_0
.end method

.method setOnDispose(Ljava/lang/Runnable;)V
    .locals 5

    .prologue
    .line 175
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;
    move-object v1, p1

    .local v1, "onDispose":Ljava/lang/Runnable;
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->disposeLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 177
    move-object v3, v0

    :try_start_0
    iget-boolean v3, v3, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->isDisposed:Z

    if-nez v3, :cond_0

    .line 178
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->onDispose:Ljava/lang/Runnable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 181
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->disposeLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 182
    .line 183
    return-void

    .line 181
    :catchall_0
    move-exception v3

    move-object v2, v3

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->disposeLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    move-object v3, v2

    throw v3
.end method

.method public setRate(F)V
    .locals 7

    .prologue
    .line 1061
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;
    move v1, p1

    .local v1, "rate":F
    move-object v3, v0

    move v4, v1

    :try_start_0
    invoke-virtual {v3, v4}, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->playerSetRate(F)V
    :try_end_0
    .catch Lcom/sun/media/jfxmedia/MediaException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1065
    .line 1066
    :goto_0
    return-void

    .line 1062
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 1064
    .local v2, "me":Lcom/sun/media/jfxmedia/MediaException;
    move-object v3, v0

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setRate("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") failed!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sun/media/jfxmediaimpl/MediaUtils;->warning(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setStartTime(D)V
    .locals 9

    .prologue
    .line 1181
    move-object v1, p0

    .local v1, "this":Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;
    move-wide v2, p1

    .local v2, "startTime":D
    move-object v5, v1

    :try_start_0
    iget-object v5, v5, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->markerLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 1182
    move-object v5, v1

    move-wide v6, v2

    iput-wide v6, v5, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->startTime:D

    .line 1183
    move-object v5, v1

    iget-object v5, v5, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->playerState:Lcom/sun/media/jfxmedia/events/PlayerStateEvent$PlayerState;

    sget-object v6, Lcom/sun/media/jfxmedia/events/PlayerStateEvent$PlayerState;->PLAYING:Lcom/sun/media/jfxmedia/events/PlayerStateEvent$PlayerState;

    if-eq v5, v6, :cond_1

    move-object v5, v1

    iget-object v5, v5, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->playerState:Lcom/sun/media/jfxmedia/events/PlayerStateEvent$PlayerState;

    sget-object v6, Lcom/sun/media/jfxmedia/events/PlayerStateEvent$PlayerState;->FINISHED:Lcom/sun/media/jfxmedia/events/PlayerStateEvent$PlayerState;

    if-eq v5, v6, :cond_1

    move-object v5, v1

    iget-object v5, v5, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->playerState:Lcom/sun/media/jfxmedia/events/PlayerStateEvent$PlayerState;

    sget-object v6, Lcom/sun/media/jfxmedia/events/PlayerStateEvent$PlayerState;->STOPPED:Lcom/sun/media/jfxmedia/events/PlayerStateEvent$PlayerState;

    if-eq v5, v6, :cond_1

    .line 1184
    move-object v5, v1

    move-wide v6, v2

    invoke-virtual {v5, v6, v7}, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->playerSeek(D)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1189
    :cond_0
    :goto_0
    move-object v5, v1

    iget-object v5, v5, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->markerLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 1190
    .line 1191
    return-void

    .line 1185
    :cond_1
    move-object v5, v1

    :try_start_1
    iget-object v5, v5, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->playerState:Lcom/sun/media/jfxmedia/events/PlayerStateEvent$PlayerState;

    sget-object v6, Lcom/sun/media/jfxmedia/events/PlayerStateEvent$PlayerState;->STOPPED:Lcom/sun/media/jfxmedia/events/PlayerStateEvent$PlayerState;

    if-ne v5, v6, :cond_0

    .line 1186
    move-object v5, v1

    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->isStartTimeUpdated:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1189
    :catchall_0
    move-exception v5

    move-object v4, v5

    move-object v5, v1

    iget-object v5, v5, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->markerLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->unlock()V

    move-object v5, v4

    throw v5
.end method

.method public setStopTime(D)V
    .locals 9

    .prologue
    .line 1207
    move-object v1, p0

    .local v1, "this":Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;
    move-wide v2, p1

    .local v2, "stopTime":D
    move-object v5, v1

    :try_start_0
    iget-object v5, v5, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->markerLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 1208
    move-object v5, v1

    move-wide v6, v2

    iput-wide v6, v5, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->stopTime:D

    .line 1209
    move-object v5, v1

    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->isStopTimeSet:Z

    .line 1210
    move-object v5, v1

    invoke-direct {v5}, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->createMediaPulse()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1212
    move-object v5, v1

    iget-object v5, v5, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->markerLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 1213
    .line 1214
    return-void

    .line 1212
    :catchall_0
    move-exception v5

    move-object v4, v5

    move-object v5, v1

    iget-object v5, v5, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->markerLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->unlock()V

    move-object v5, v4

    throw v5
.end method

.method public setVolume(F)V
    .locals 9

    .prologue
    .line 1090
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;
    move v1, p1

    .local v1, "vol":F
    move v3, v1

    const/4 v4, 0x0

    cmpg-float v3, v3, v4

    if-gez v3, :cond_1

    .line 1091
    const/4 v3, 0x0

    move v1, v3

    .line 1097
    :cond_0
    :goto_0
    move-object v3, v0

    move v4, v1

    :try_start_0
    invoke-virtual {v3, v4}, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->playerSetVolume(F)V
    :try_end_0
    .catch Lcom/sun/media/jfxmedia/MediaException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1100
    .line 1101
    :goto_1
    return-void

    .line 1092
    :cond_1
    move v3, v1

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v3, v3, v4

    if-lez v3, :cond_0

    .line 1093
    const/high16 v3, 0x3f800000    # 1.0f

    move v1, v3

    goto :goto_0

    .line 1098
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 1099
    .local v2, "me":Lcom/sun/media/jfxmedia/MediaException;
    move-object v3, v0

    new-instance v4, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$MediaErrorEvent;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v0

    move-object v7, v2

    invoke-virtual {v7}, Lcom/sun/media/jfxmedia/MediaException;->getMediaError()Lcom/sun/media/jfxmedia/MediaError;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$MediaErrorEvent;-><init>(Ljava/lang/Object;Lcom/sun/media/jfxmedia/MediaError;)V

    invoke-virtual {v3, v4}, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->sendPlayerEvent(Lcom/sun/media/jfxmedia/events/PlayerEvent;)V

    goto :goto_1
.end method

.method public stop()V
    .locals 6

    .prologue
    .line 1030
    move-object v1, p0

    .local v1, "this":Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;
    move-object v3, v1

    :try_start_0
    invoke-virtual {v3}, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->playerStop()V

    .line 1031
    move-object v3, v1

    move-object v4, v1

    iget-wide v4, v4, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->startTime:D

    invoke-virtual {v3, v4, v5}, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->playerSeek(D)V
    :try_end_0
    .catch Lcom/sun/media/jfxmedia/MediaException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1035
    .line 1036
    :goto_0
    return-void

    .line 1032
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 1034
    .local v2, "me":Lcom/sun/media/jfxmedia/MediaException;
    move-object v3, v1

    const-string v4, "stop() failed!"

    invoke-static {v3, v4}, Lcom/sun/media/jfxmediaimpl/MediaUtils;->warning(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method
