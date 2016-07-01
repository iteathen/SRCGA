.class final Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClip;
.super Lcom/sun/media/jfxmedia/AudioClip;
.source "NativeMediaAudioClip.java"


# instance fields
.field private mediaLocator:Lcom/sun/media/jfxmedia/locator/Locator;

.field private playCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private sourceURI:Ljava/net/URI;


# direct methods
.method private constructor <init>(Ljava/net/URI;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;,
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 45
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClip;
    move-object v1, p1

    .local v1, "source":Ljava/net/URI;
    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/media/jfxmedia/AudioClip;-><init>()V

    .line 46
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClip;->sourceURI:Ljava/net/URI;

    .line 47
    move-object v2, v0

    new-instance v3, Ljava/util/concurrent/atomic/AtomicInteger;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v3, v2, Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClip;->playCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 49
    const/4 v2, 0x1

    invoke-static {v2}, Lcom/sun/media/jfxmedia/logging/Logger;->canLog(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 50
    const/4 v2, 0x1

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Creating AudioClip for URI "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sun/media/jfxmedia/logging/Logger;->logMsg(ILjava/lang/String;)V

    .line 53
    :cond_0
    move-object v2, v0

    new-instance v3, Lcom/sun/media/jfxmedia/locator/Locator;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClip;->sourceURI:Ljava/net/URI;

    invoke-direct {v4, v5}, Lcom/sun/media/jfxmedia/locator/Locator;-><init>(Ljava/net/URI;)V

    iput-object v3, v2, Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClip;->mediaLocator:Lcom/sun/media/jfxmedia/locator/Locator;

    .line 54
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClip;->mediaLocator:Lcom/sun/media/jfxmedia/locator/Locator;

    invoke-virtual {v2}, Lcom/sun/media/jfxmedia/locator/Locator;->init()V

    .line 55
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClip;->mediaLocator:Lcom/sun/media/jfxmedia/locator/Locator;

    invoke-virtual {v2}, Lcom/sun/media/jfxmedia/locator/Locator;->cacheMedia()V

    .line 56
    return-void
.end method

.method public static create([BIIIII)Lcom/sun/media/jfxmedia/AudioClip;
    .locals 10

    .prologue
    .line 71
    move-object v0, p0

    .local v0, "data":[B
    move v1, p1

    .local v1, "dataOffset":I
    move v2, p2

    .local v2, "sampleCount":I
    move v3, p3

    .local v3, "sampleFormat":I
    move v4, p4

    .local v4, "channels":I
    move v5, p5

    .local v5, "sampleRate":I
    new-instance v6, Ljava/lang/UnsupportedOperationException;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    const-string v8, "NativeMediaAudioClip does not support creating clips from raw sample data"

    invoke-direct {v7, v8}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method public static load(Ljava/net/URI;)Lcom/sun/media/jfxmedia/AudioClip;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;,
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 63
    move-object v0, p0

    .local v0, "source":Ljava/net/URI;
    new-instance v1, Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClip;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClip;-><init>(Ljava/net/URI;)V

    move-object v0, v1

    .end local v0    # "source":Ljava/net/URI;
    return-object v0
.end method

.method public static stopAllClips()V
    .locals 1

    .prologue
    .line 127
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClipPlayer;->stopPlayers(Lcom/sun/media/jfxmedia/locator/Locator;)V

    .line 128
    return-void
.end method


# virtual methods
.method public append(Lcom/sun/media/jfxmedia/AudioClip;)Lcom/sun/media/jfxmedia/AudioClip;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 91
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClip;
    move-object v1, p1

    .local v1, "clip":Lcom/sun/media/jfxmedia/AudioClip;
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "Not supported yet."

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public createSegment(DD)Lcom/sun/media/jfxmedia/AudioClip;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 76
    move-object v1, p0

    .local v1, "this":Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClip;
    move-wide v2, p1

    .local v2, "startTime":D
    move-wide v4, p3

    .local v4, "stopTime":D
    new-instance v6, Ljava/lang/UnsupportedOperationException;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    const-string v8, "Not supported yet."

    invoke-direct {v7, v8}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method public createSegment(II)Lcom/sun/media/jfxmedia/AudioClip;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 81
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClip;
    move v1, p1

    .local v1, "startSample":I
    move v2, p2

    .local v2, "endSample":I
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string v5, "Not supported yet."

    invoke-direct {v4, v5}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public flatten()Lcom/sun/media/jfxmedia/AudioClip;
    .locals 5

    .prologue
    .line 96
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClip;
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string v3, "Not supported yet."

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method getLocator()Lcom/sun/media/jfxmedia/locator/Locator;
    .locals 2

    .prologue
    .line 59
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClip;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClip;->mediaLocator:Lcom/sun/media/jfxmedia/locator/Locator;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClip;
    return-object v0
.end method

.method public isPlaying()Z
    .locals 2

    .prologue
    .line 101
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClip;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClip;->playCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClip;
    return v0

    .restart local v0    # "this":Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClip;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public play()V
    .locals 12

    .prologue
    .line 106
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClip;
    move-object v1, v0

    move-object v2, v0

    iget-wide v2, v2, Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClip;->clipVolume:D

    move-object v4, v0

    iget-wide v4, v4, Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClip;->clipBalance:D

    move-object v6, v0

    iget-wide v6, v6, Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClip;->clipRate:D

    move-object v8, v0

    iget-wide v8, v8, Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClip;->clipPan:D

    move-object v10, v0

    iget v10, v10, Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClip;->loopCount:I

    move-object v11, v0

    iget v11, v11, Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClip;->clipPriority:I

    invoke-virtual/range {v1 .. v11}, Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClip;->play(DDDDII)V

    .line 107
    return-void
.end method

.method public play(D)V
    .locals 15

    .prologue
    .line 111
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClip;
    move-wide/from16 v1, p1

    .local v1, "volume":D
    move-object v3, v0

    move-wide v4, v1

    move-object v6, v0

    iget-wide v6, v6, Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClip;->clipBalance:D

    move-object v8, v0

    iget-wide v8, v8, Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClip;->clipRate:D

    move-object v10, v0

    iget-wide v10, v10, Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClip;->clipPan:D

    move-object v12, v0

    iget v12, v12, Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClip;->loopCount:I

    move-object v13, v0

    iget v13, v13, Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClip;->clipPriority:I

    invoke-virtual/range {v3 .. v13}, Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClip;->play(DDDDII)V

    .line 112
    return-void
.end method

.method public play(DDDDII)V
    .locals 23

    .prologue
    .line 117
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClip;
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

    iget-object v11, v11, Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClip;->playCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v11}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v11

    .line 118
    move-object v11, v0

    move-wide v12, v1

    move-wide v14, v3

    move-wide/from16 v16, v5

    move-wide/from16 v18, v7

    move/from16 v20, v9

    move/from16 v21, v10

    invoke-static/range {v11 .. v21}, Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClipPlayer;->playClip(Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClip;DDDDII)V

    .line 119
    return-void
.end method

.method playFinished()V
    .locals 2

    .prologue
    .line 133
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClip;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClip;->playCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v1

    .line 134
    return-void
.end method

.method public resample(III)Lcom/sun/media/jfxmedia/AudioClip;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 86
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClip;
    move v1, p1

    .local v1, "startSample":I
    move v2, p2

    .local v2, "endSample":I
    move v3, p3

    .local v3, "newSampleRate":I
    new-instance v4, Ljava/lang/UnsupportedOperationException;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    const-string v6, "Not supported yet."

    invoke-direct {v5, v6}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 123
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClip;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClip;->mediaLocator:Lcom/sun/media/jfxmedia/locator/Locator;

    invoke-static {v1}, Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClipPlayer;->stopPlayers(Lcom/sun/media/jfxmedia/locator/Locator;)V

    .line 124
    return-void
.end method
