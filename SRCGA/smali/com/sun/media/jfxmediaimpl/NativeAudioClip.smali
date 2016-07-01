.class final Lcom/sun/media/jfxmediaimpl/NativeAudioClip;
.super Lcom/sun/media/jfxmedia/AudioClip;
.source "NativeAudioClip.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/media/jfxmediaimpl/NativeAudioClip$NativeAudioClipDisposer;
    }
.end annotation


# static fields
.field private static clipDisposer:Lcom/sun/media/jfxmediaimpl/NativeAudioClip$NativeAudioClipDisposer;


# instance fields
.field private final mediaSource:Lcom/sun/media/jfxmedia/locator/Locator;

.field private nativeHandle:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 39
    new-instance v0, Lcom/sun/media/jfxmediaimpl/NativeAudioClip$NativeAudioClipDisposer;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/sun/media/jfxmediaimpl/NativeAudioClip$NativeAudioClipDisposer;-><init>(Lcom/sun/media/jfxmediaimpl/NativeAudioClip$1;)V

    sput-object v0, Lcom/sun/media/jfxmediaimpl/NativeAudioClip;->clipDisposer:Lcom/sun/media/jfxmediaimpl/NativeAudioClip$NativeAudioClipDisposer;

    return-void
.end method

.method private constructor <init>(Lcom/sun/media/jfxmedia/locator/Locator;)V
    .locals 6

    .prologue
    .line 92
    move-object v1, p0

    .local v1, "this":Lcom/sun/media/jfxmediaimpl/NativeAudioClip;
    move-object v2, p1

    .local v2, "source":Lcom/sun/media/jfxmedia/locator/Locator;
    move-object v3, v1

    invoke-direct {v3}, Lcom/sun/media/jfxmedia/AudioClip;-><init>()V

    .line 37
    move-object v3, v1

    const-wide/16 v4, 0x0

    iput-wide v4, v3, Lcom/sun/media/jfxmediaimpl/NativeAudioClip;->nativeHandle:J

    .line 93
    move-object v3, v1

    move-object v4, v2

    iput-object v4, v3, Lcom/sun/media/jfxmediaimpl/NativeAudioClip;->mediaSource:Lcom/sun/media/jfxmedia/locator/Locator;

    .line 94
    move-object v3, v1

    move-object v4, v1

    iget-object v4, v4, Lcom/sun/media/jfxmediaimpl/NativeAudioClip;->mediaSource:Lcom/sun/media/jfxmedia/locator/Locator;

    invoke-static {v4}, Lcom/sun/media/jfxmediaimpl/NativeAudioClip;->nacLoad(Lcom/sun/media/jfxmedia/locator/Locator;)J

    move-result-wide v4

    iput-wide v4, v3, Lcom/sun/media/jfxmediaimpl/NativeAudioClip;->nativeHandle:J

    .line 95
    return-void
.end method

.method private constructor <init>([BIIIII)V
    .locals 14

    .prologue
    .line 97
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/NativeAudioClip;
    move-object v1, p1

    .local v1, "data":[B
    move/from16 v2, p2

    .local v2, "dataOffset":I
    move/from16 v3, p3

    .local v3, "sampleCount":I
    move/from16 v4, p4

    .local v4, "sampleFormat":I
    move/from16 v5, p5

    .local v5, "channels":I
    move/from16 v6, p6

    .local v6, "sampleRate":I
    move-object v7, v0

    invoke-direct {v7}, Lcom/sun/media/jfxmedia/AudioClip;-><init>()V

    .line 37
    move-object v7, v0

    const-wide/16 v8, 0x0

    iput-wide v8, v7, Lcom/sun/media/jfxmediaimpl/NativeAudioClip;->nativeHandle:J

    .line 98
    move-object v7, v0

    const/4 v8, 0x0

    iput-object v8, v7, Lcom/sun/media/jfxmediaimpl/NativeAudioClip;->mediaSource:Lcom/sun/media/jfxmedia/locator/Locator;

    .line 99
    move-object v7, v0

    move-object v8, v1

    move v9, v2

    move v10, v3

    move v11, v4

    move v12, v5

    move v13, v6

    invoke-static/range {v8 .. v13}, Lcom/sun/media/jfxmediaimpl/NativeAudioClip;->nacCreate([BIIIII)J

    move-result-wide v8

    iput-wide v8, v7, Lcom/sun/media/jfxmediaimpl/NativeAudioClip;->nativeHandle:J

    .line 100
    return-void
.end method

.method static synthetic access$100(J)V
    .locals 4

    .prologue
    .line 35
    move-wide v0, p0

    .local v0, "x0":J
    move-wide v2, v0

    invoke-static {v2, v3}, Lcom/sun/media/jfxmediaimpl/NativeAudioClip;->nacUnload(J)V

    return-void
.end method

.method public static create([BIIIII)Lcom/sun/media/jfxmedia/AudioClip;
    .locals 17

    .prologue
    .line 72
    move-object/from16 v1, p0

    .local v1, "data":[B
    move/from16 v2, p1

    .local v2, "dataOffset":I
    move/from16 v3, p2

    .local v3, "sampleCount":I
    move/from16 v4, p3

    .local v4, "sampleFormat":I
    move/from16 v5, p4

    .local v5, "channels":I
    move/from16 v6, p5

    .local v6, "sampleRate":I
    new-instance v8, Lcom/sun/media/jfxmediaimpl/NativeAudioClip;

    move-object/from16 v16, v8

    move-object/from16 v8, v16

    move-object/from16 v9, v16

    move-object v10, v1

    move v11, v2

    move v12, v3

    move v13, v4

    move v14, v5

    move v15, v6

    invoke-direct/range {v9 .. v15}, Lcom/sun/media/jfxmediaimpl/NativeAudioClip;-><init>([BIIIII)V

    move-object v7, v8

    .line 73
    .local v7, "newClip":Lcom/sun/media/jfxmediaimpl/NativeAudioClip;
    const/4 v8, 0x0

    move-object v9, v7

    if-eq v8, v9, :cond_0

    const-wide/16 v8, 0x0

    move-object v10, v7

    invoke-virtual {v10}, Lcom/sun/media/jfxmediaimpl/NativeAudioClip;->getNativeHandle()J

    move-result-wide v10

    cmp-long v8, v8, v10

    if-eqz v8, :cond_0

    .line 74
    move-object v8, v7

    move-object v9, v7

    invoke-virtual {v9}, Lcom/sun/media/jfxmediaimpl/NativeAudioClip;->getNativeHandle()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    sget-object v10, Lcom/sun/media/jfxmediaimpl/NativeAudioClip;->clipDisposer:Lcom/sun/media/jfxmediaimpl/NativeAudioClip$NativeAudioClipDisposer;

    invoke-static {v8, v9, v10}, Lcom/sun/media/jfxmediaimpl/MediaDisposer;->addResourceDisposer(Ljava/lang/Object;Ljava/lang/Object;Lcom/sun/media/jfxmediaimpl/MediaDisposer$ResourceDisposer;)V

    .line 79
    move-object v8, v7

    move-object v1, v8

    .end local v1    # "data":[B
    return-object v1

    .line 76
    .restart local v1    # "data":[B
    :cond_0
    const/4 v8, 0x0

    move-object v7, v8

    .line 77
    new-instance v8, Lcom/sun/media/jfxmedia/MediaException;

    move-object/from16 v16, v8

    move-object/from16 v8, v16

    move-object/from16 v9, v16

    const-string v10, "Cannot create audio clip"

    invoke-direct {v9, v10}, Lcom/sun/media/jfxmedia/MediaException;-><init>(Ljava/lang/String;)V

    throw v8
.end method

.method public static declared-synchronized init()Z
    .locals 2

    .prologue
    .line 48
    const-class v1, Lcom/sun/media/jfxmediaimpl/NativeAudioClip;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/sun/media/jfxmediaimpl/NativeAudioClip;->nacInit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static load(Ljava/net/URI;)Lcom/sun/media/jfxmedia/AudioClip;
    .locals 9

    .prologue
    .line 52
    move-object v1, p0

    .local v1, "source":Ljava/net/URI;
    const/4 v4, 0x0

    move-object v2, v4

    .line 54
    .local v2, "newClip":Lcom/sun/media/jfxmediaimpl/NativeAudioClip;
    :try_start_0
    new-instance v4, Lcom/sun/media/jfxmedia/locator/Locator;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v1

    invoke-direct {v5, v6}, Lcom/sun/media/jfxmedia/locator/Locator;-><init>(Ljava/net/URI;)V

    move-object v3, v4

    .line 55
    .local v3, "locator":Lcom/sun/media/jfxmedia/locator/Locator;
    move-object v4, v3

    invoke-virtual {v4}, Lcom/sun/media/jfxmedia/locator/Locator;->init()V

    .line 56
    new-instance v4, Lcom/sun/media/jfxmediaimpl/NativeAudioClip;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v3

    invoke-direct {v5, v6}, Lcom/sun/media/jfxmediaimpl/NativeAudioClip;-><init>(Lcom/sun/media/jfxmedia/locator/Locator;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v2, v4

    .line 61
    .line 62
    const/4 v4, 0x0

    move-object v5, v2

    if-eq v4, v5, :cond_0

    const-wide/16 v4, 0x0

    move-object v6, v2

    invoke-virtual {v6}, Lcom/sun/media/jfxmediaimpl/NativeAudioClip;->getNativeHandle()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-eqz v4, :cond_0

    .line 63
    move-object v4, v2

    move-object v5, v2

    invoke-virtual {v5}, Lcom/sun/media/jfxmediaimpl/NativeAudioClip;->getNativeHandle()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    sget-object v6, Lcom/sun/media/jfxmediaimpl/NativeAudioClip;->clipDisposer:Lcom/sun/media/jfxmediaimpl/NativeAudioClip$NativeAudioClipDisposer;

    invoke-static {v4, v5, v6}, Lcom/sun/media/jfxmediaimpl/MediaDisposer;->addResourceDisposer(Ljava/lang/Object;Ljava/lang/Object;Lcom/sun/media/jfxmediaimpl/MediaDisposer$ResourceDisposer;)V

    .line 68
    move-object v4, v2

    move-object v1, v4

    .end local v1    # "source":Ljava/net/URI;
    return-object v1

    .line 57
    .end local v3    # "locator":Lcom/sun/media/jfxmedia/locator/Locator;
    .restart local v1    # "source":Ljava/net/URI;
    :catch_0
    move-exception v4

    move-object v3, v4

    .line 58
    .local v3, "ex":Ljava/net/URISyntaxException;
    new-instance v4, Lcom/sun/media/jfxmedia/MediaException;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const-string v6, "Non-compliant URI"

    move-object v7, v3

    invoke-direct {v5, v6, v7}, Lcom/sun/media/jfxmedia/MediaException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 59
    .end local v3    # "ex":Ljava/net/URISyntaxException;
    :catch_1
    move-exception v4

    move-object v3, v4

    .line 60
    .local v3, "ex":Ljava/io/IOException;
    new-instance v4, Lcom/sun/media/jfxmedia/MediaException;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const-string v6, "Cannot connect to media"

    move-object v7, v3

    invoke-direct {v5, v6, v7}, Lcom/sun/media/jfxmedia/MediaException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 65
    .local v3, "locator":Lcom/sun/media/jfxmedia/locator/Locator;
    :cond_0
    const/4 v4, 0x0

    move-object v2, v4

    .line 66
    new-instance v4, Lcom/sun/media/jfxmedia/MediaException;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const-string v6, "Cannot create audio clip"

    invoke-direct {v5, v6}, Lcom/sun/media/jfxmedia/MediaException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method private native nacAppend(JJ)Lcom/sun/media/jfxmediaimpl/NativeAudioClip;
.end method

.method private static native nacCreate([BIIIII)J
.end method

.method private native nacCreateSegment(JDD)Lcom/sun/media/jfxmediaimpl/NativeAudioClip;
.end method

.method private native nacCreateSegment(JII)Lcom/sun/media/jfxmediaimpl/NativeAudioClip;
.end method

.method private static native nacInit()Z
.end method

.method private native nacIsPlaying(J)Z
.end method

.method private static native nacLoad(Lcom/sun/media/jfxmedia/locator/Locator;)J
.end method

.method private native nacPlay(JDDDDII)V
.end method

.method private native nacResample(JIII)Lcom/sun/media/jfxmediaimpl/NativeAudioClip;
.end method

.method private native nacStop(J)V
.end method

.method private static native nacStopAll()V
.end method

.method private static native nacUnload(J)V
.end method

.method public static stopAllClips()V
    .locals 0

    .prologue
    .line 162
    invoke-static {}, Lcom/sun/media/jfxmediaimpl/NativeAudioClip;->nacStopAll()V

    .line 163
    return-void
.end method


# virtual methods
.method public append(Lcom/sun/media/jfxmedia/AudioClip;)Lcom/sun/media/jfxmedia/AudioClip;
    .locals 9

    .prologue
    .line 124
    move-object v1, p0

    .local v1, "this":Lcom/sun/media/jfxmediaimpl/NativeAudioClip;
    move-object v2, p1

    .local v2, "clip":Lcom/sun/media/jfxmedia/AudioClip;
    move-object v3, v2

    instance-of v3, v3, Lcom/sun/media/jfxmediaimpl/NativeAudioClip;

    if-nez v3, :cond_0

    .line 125
    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    const-string v5, "AudioClip type mismatch, cannot append"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 127
    :cond_0
    move-object v3, v1

    move-object v4, v1

    iget-wide v4, v4, Lcom/sun/media/jfxmediaimpl/NativeAudioClip;->nativeHandle:J

    move-object v6, v2

    check-cast v6, Lcom/sun/media/jfxmediaimpl/NativeAudioClip;

    invoke-virtual {v6}, Lcom/sun/media/jfxmediaimpl/NativeAudioClip;->getNativeHandle()J

    move-result-wide v6

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/sun/media/jfxmediaimpl/NativeAudioClip;->nacAppend(JJ)Lcom/sun/media/jfxmediaimpl/NativeAudioClip;

    move-result-object v3

    move-object v1, v3

    .end local v1    # "this":Lcom/sun/media/jfxmediaimpl/NativeAudioClip;
    return-object v1
.end method

.method public createSegment(DD)Lcom/sun/media/jfxmedia/AudioClip;
    .locals 13

    .prologue
    .line 108
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/NativeAudioClip;
    move-wide v1, p1

    .local v1, "startTime":D
    move-wide/from16 v3, p3

    .local v3, "stopTime":D
    move-object v5, v0

    move-object v6, v0

    iget-wide v6, v6, Lcom/sun/media/jfxmediaimpl/NativeAudioClip;->nativeHandle:J

    move-wide v8, v1

    move-wide v10, v3

    invoke-direct/range {v5 .. v11}, Lcom/sun/media/jfxmediaimpl/NativeAudioClip;->nacCreateSegment(JDD)Lcom/sun/media/jfxmediaimpl/NativeAudioClip;

    move-result-object v5

    move-object v0, v5

    .end local v0    # "this":Lcom/sun/media/jfxmediaimpl/NativeAudioClip;
    return-object v0
.end method

.method public createSegment(II)Lcom/sun/media/jfxmedia/AudioClip;
    .locals 8

    .prologue
    .line 113
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/NativeAudioClip;
    move v1, p1

    .local v1, "startSample":I
    move v2, p2

    .local v2, "endSample":I
    move-object v3, v0

    move-object v4, v0

    iget-wide v4, v4, Lcom/sun/media/jfxmediaimpl/NativeAudioClip;->nativeHandle:J

    move v6, v1

    move v7, v2

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/sun/media/jfxmediaimpl/NativeAudioClip;->nacCreateSegment(JII)Lcom/sun/media/jfxmediaimpl/NativeAudioClip;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lcom/sun/media/jfxmediaimpl/NativeAudioClip;
    return-object v0
.end method

.method public flatten()Lcom/sun/media/jfxmedia/AudioClip;
    .locals 2

    .prologue
    .line 133
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/NativeAudioClip;
    move-object v1, v0

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/media/jfxmediaimpl/NativeAudioClip;
    return-object v0
.end method

.method getNativeHandle()J
    .locals 3

    .prologue
    .line 103
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/NativeAudioClip;
    move-object v1, v0

    iget-wide v1, v1, Lcom/sun/media/jfxmediaimpl/NativeAudioClip;->nativeHandle:J

    move-wide v0, v1

    .end local v0    # "this":Lcom/sun/media/jfxmediaimpl/NativeAudioClip;
    return-wide v0
.end method

.method public isPlaying()Z
    .locals 4

    .prologue
    .line 138
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/NativeAudioClip;
    move-object v1, v0

    move-object v2, v0

    iget-wide v2, v2, Lcom/sun/media/jfxmediaimpl/NativeAudioClip;->nativeHandle:J

    invoke-direct {v1, v2, v3}, Lcom/sun/media/jfxmediaimpl/NativeAudioClip;->nacIsPlaying(J)Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/media/jfxmediaimpl/NativeAudioClip;
    return v0
.end method

.method public play()V
    .locals 14

    .prologue
    .line 143
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/NativeAudioClip;
    move-object v1, v0

    move-object v2, v0

    iget-wide v2, v2, Lcom/sun/media/jfxmediaimpl/NativeAudioClip;->nativeHandle:J

    move-object v4, v0

    iget-wide v4, v4, Lcom/sun/media/jfxmediaimpl/NativeAudioClip;->clipVolume:D

    move-object v6, v0

    iget-wide v6, v6, Lcom/sun/media/jfxmediaimpl/NativeAudioClip;->clipBalance:D

    move-object v8, v0

    iget-wide v8, v8, Lcom/sun/media/jfxmediaimpl/NativeAudioClip;->clipPan:D

    move-object v10, v0

    iget-wide v10, v10, Lcom/sun/media/jfxmediaimpl/NativeAudioClip;->clipRate:D

    move-object v12, v0

    iget v12, v12, Lcom/sun/media/jfxmediaimpl/NativeAudioClip;->loopCount:I

    move-object v13, v0

    iget v13, v13, Lcom/sun/media/jfxmediaimpl/NativeAudioClip;->clipPriority:I

    invoke-direct/range {v1 .. v13}, Lcom/sun/media/jfxmediaimpl/NativeAudioClip;->nacPlay(JDDDDII)V

    .line 144
    return-void
.end method

.method public play(D)V
    .locals 17

    .prologue
    .line 148
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/NativeAudioClip;
    move-wide/from16 v1, p1

    .local v1, "volume":D
    move-object v3, v0

    move-object v4, v0

    iget-wide v4, v4, Lcom/sun/media/jfxmediaimpl/NativeAudioClip;->nativeHandle:J

    move-wide v6, v1

    move-object v8, v0

    iget-wide v8, v8, Lcom/sun/media/jfxmediaimpl/NativeAudioClip;->clipBalance:D

    move-object v10, v0

    iget-wide v10, v10, Lcom/sun/media/jfxmediaimpl/NativeAudioClip;->clipPan:D

    move-object v12, v0

    iget-wide v12, v12, Lcom/sun/media/jfxmediaimpl/NativeAudioClip;->clipRate:D

    move-object v14, v0

    iget v14, v14, Lcom/sun/media/jfxmediaimpl/NativeAudioClip;->loopCount:I

    move-object v15, v0

    iget v15, v15, Lcom/sun/media/jfxmediaimpl/NativeAudioClip;->clipPriority:I

    invoke-direct/range {v3 .. v15}, Lcom/sun/media/jfxmediaimpl/NativeAudioClip;->nacPlay(JDDDDII)V

    .line 149
    return-void
.end method

.method public play(DDDDII)V
    .locals 25

    .prologue
    .line 153
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/NativeAudioClip;
    move-wide/from16 v1, p1

    .local v1, "volume":D
    move-wide/from16 v3, p3

    .local v3, "balance":D
    move-wide/from16 v5, p5

    .local v5, "rate":D
    move-wide/from16 v7, p7

    .local v7, "pan":D
    move/from16 v9, p9

    .local v9, "loopCount":I
    move/from16 v10, p10

    .local v10, "priority":I
    move-object v11, v0

    move-object v12, v0

    iget-wide v12, v12, Lcom/sun/media/jfxmediaimpl/NativeAudioClip;->nativeHandle:J

    move-wide v14, v1

    move-wide/from16 v16, v3

    move-wide/from16 v18, v7

    move-wide/from16 v20, v5

    move/from16 v22, v9

    move/from16 v23, v10

    invoke-direct/range {v11 .. v23}, Lcom/sun/media/jfxmediaimpl/NativeAudioClip;->nacPlay(JDDDDII)V

    .line 154
    return-void
.end method

.method public resample(III)Lcom/sun/media/jfxmedia/AudioClip;
    .locals 11

    .prologue
    .line 118
    move-object v1, p0

    .local v1, "this":Lcom/sun/media/jfxmediaimpl/NativeAudioClip;
    move v2, p1

    .local v2, "startSample":I
    move v3, p2

    .local v3, "endSample":I
    move v4, p3

    .local v4, "newSampleRate":I
    move-object v5, v1

    move-object v6, v1

    iget-wide v6, v6, Lcom/sun/media/jfxmediaimpl/NativeAudioClip;->nativeHandle:J

    move v8, v2

    move v9, v3

    move v10, v4

    invoke-direct/range {v5 .. v10}, Lcom/sun/media/jfxmediaimpl/NativeAudioClip;->nacResample(JIII)Lcom/sun/media/jfxmediaimpl/NativeAudioClip;

    move-result-object v5

    move-object v1, v5

    .end local v1    # "this":Lcom/sun/media/jfxmediaimpl/NativeAudioClip;
    return-object v1
.end method

.method public stop()V
    .locals 4

    .prologue
    .line 158
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/NativeAudioClip;
    move-object v1, v0

    move-object v2, v0

    iget-wide v2, v2, Lcom/sun/media/jfxmediaimpl/NativeAudioClip;->nativeHandle:J

    invoke-direct {v1, v2, v3}, Lcom/sun/media/jfxmediaimpl/NativeAudioClip;->nacStop(J)V

    .line 159
    return-void
.end method
