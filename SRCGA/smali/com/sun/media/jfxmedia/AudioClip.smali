.class public abstract Lcom/sun/media/jfxmedia/AudioClip;
.super Ljava/lang/Object;
.source "AudioClip.java"


# static fields
.field public static final SAMPLE_FORMAT_S16BE:I = 0x2

.field public static final SAMPLE_FORMAT_S16LE:I = 0x4

.field public static final SAMPLE_FORMAT_S24BE:I = 0x6

.field public static final SAMPLE_FORMAT_S24LE:I = 0x8

.field public static final SAMPLE_FORMAT_S8:I = 0x0

.field public static final SAMPLE_FORMAT_U16BE:I = 0x3

.field public static final SAMPLE_FORMAT_U16LE:I = 0x5

.field public static final SAMPLE_FORMAT_U24BE:I = 0x7

.field public static final SAMPLE_FORMAT_U24LE:I = 0x9

.field public static final SAMPLE_FORMAT_U8:I = 0x1


# instance fields
.field protected clipBalance:D

.field protected clipPan:D

.field protected clipPriority:I

.field protected clipRate:D

.field protected clipVolume:D

.field protected loopCount:I


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 97
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmedia/AudioClip;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 99
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Lcom/sun/media/jfxmedia/AudioClip;->clipPriority:I

    .line 100
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Lcom/sun/media/jfxmedia/AudioClip;->loopCount:I

    .line 101
    move-object v1, v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    iput-wide v2, v1, Lcom/sun/media/jfxmedia/AudioClip;->clipVolume:D

    .line 102
    move-object v1, v0

    const-wide/16 v2, 0x0

    iput-wide v2, v1, Lcom/sun/media/jfxmedia/AudioClip;->clipBalance:D

    .line 103
    move-object v1, v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    iput-wide v2, v1, Lcom/sun/media/jfxmedia/AudioClip;->clipRate:D

    .line 104
    move-object v1, v0

    const-wide/16 v2, 0x0

    iput-wide v2, v1, Lcom/sun/media/jfxmedia/AudioClip;->clipPan:D

    return-void
.end method

.method public static create([BIIIII)Lcom/sun/media/jfxmedia/AudioClip;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 160
    move-object v0, p0

    .local v0, "data":[B
    move v1, p1

    .local v1, "dataOffset":I
    move v2, p2

    .local v2, "sampleCount":I
    move/from16 v3, p3

    .local v3, "sampleFormat":I
    move/from16 v4, p4

    .local v4, "channels":I
    move/from16 v5, p5

    .local v5, "sampleRate":I
    invoke-static {}, Lcom/sun/media/jfxmediaimpl/AudioClipProvider;->getProvider()Lcom/sun/media/jfxmediaimpl/AudioClipProvider;

    move-result-object v6

    move-object v7, v0

    move v8, v1

    move v9, v2

    move v10, v3

    move v11, v4

    move v12, v5

    invoke-virtual/range {v6 .. v12}, Lcom/sun/media/jfxmediaimpl/AudioClipProvider;->create([BIIIII)Lcom/sun/media/jfxmedia/AudioClip;

    move-result-object v6

    move-object v0, v6

    .end local v0    # "data":[B
    return-object v0
.end method

.method public static load(Ljava/net/URI;)Lcom/sun/media/jfxmedia/AudioClip;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;,
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 135
    move-object v0, p0

    .local v0, "source":Ljava/net/URI;
    invoke-static {}, Lcom/sun/media/jfxmediaimpl/AudioClipProvider;->getProvider()Lcom/sun/media/jfxmediaimpl/AudioClipProvider;

    move-result-object v1

    move-object v2, v0

    invoke-virtual {v1, v2}, Lcom/sun/media/jfxmediaimpl/AudioClipProvider;->load(Ljava/net/URI;)Lcom/sun/media/jfxmedia/AudioClip;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "source":Ljava/net/URI;
    return-object v0
.end method

.method public static stopAllClips()V
    .locals 1

    .prologue
    .line 167
    invoke-static {}, Lcom/sun/media/jfxmediaimpl/AudioClipProvider;->getProvider()Lcom/sun/media/jfxmediaimpl/AudioClipProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/media/jfxmediaimpl/AudioClipProvider;->stopAllClips()V

    .line 168
    return-void
.end method


# virtual methods
.method public abstract append(Lcom/sun/media/jfxmedia/AudioClip;)Lcom/sun/media/jfxmedia/AudioClip;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public balance()D
    .locals 3

    .prologue
    .line 316
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmedia/AudioClip;
    move-object v1, v0

    iget-wide v1, v1, Lcom/sun/media/jfxmedia/AudioClip;->clipBalance:D

    move-wide v0, v1

    .end local v0    # "this":Lcom/sun/media/jfxmedia/AudioClip;
    return-wide v0
.end method

.method public abstract createSegment(DD)Lcom/sun/media/jfxmedia/AudioClip;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method public abstract createSegment(II)Lcom/sun/media/jfxmedia/AudioClip;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method public abstract flatten()Lcom/sun/media/jfxmedia/AudioClip;
.end method

.method public abstract isPlaying()Z
.end method

.method public loopCount()I
    .locals 2

    .prologue
    .line 273
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmedia/AudioClip;
    move-object v1, v0

    iget v1, v1, Lcom/sun/media/jfxmedia/AudioClip;->loopCount:I

    move v0, v1

    .end local v0    # "this":Lcom/sun/media/jfxmedia/AudioClip;
    return v0
.end method

.method public pan()D
    .locals 3

    .prologue
    .line 364
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmedia/AudioClip;
    move-object v1, v0

    iget-wide v1, v1, Lcom/sun/media/jfxmedia/AudioClip;->clipPan:D

    move-wide v0, v1

    .end local v0    # "this":Lcom/sun/media/jfxmedia/AudioClip;
    return-wide v0
.end method

.method public abstract play()V
.end method

.method public abstract play(D)V
.end method

.method public abstract play(DDDDII)V
.end method

.method public playbackRate()D
    .locals 3

    .prologue
    .line 338
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmedia/AudioClip;
    move-object v1, v0

    iget-wide v1, v1, Lcom/sun/media/jfxmedia/AudioClip;->clipRate:D

    move-wide v0, v1

    .end local v0    # "this":Lcom/sun/media/jfxmedia/AudioClip;
    return-wide v0
.end method

.method public priority()I
    .locals 2

    .prologue
    .line 259
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmedia/AudioClip;
    move-object v1, v0

    iget v1, v1, Lcom/sun/media/jfxmedia/AudioClip;->clipPriority:I

    move v0, v1

    .end local v0    # "this":Lcom/sun/media/jfxmedia/AudioClip;
    return v0
.end method

.method public abstract resample(III)Lcom/sun/media/jfxmedia/AudioClip;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public setBalance(D)V
    .locals 7

    .prologue
    .line 326
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmedia/AudioClip;
    move-wide v1, p1

    .local v1, "bal":D
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Lcom/sun/media/jfxmedia/AudioClip;->clipBalance:D

    .line 327
    return-void
.end method

.method public setLoopCount(I)V
    .locals 4

    .prologue
    .line 288
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmedia/AudioClip;
    move v1, p1

    .local v1, "loopCount":I
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/sun/media/jfxmedia/AudioClip;->loopCount:I

    .line 289
    return-void
.end method

.method public setPan(D)V
    .locals 7

    .prologue
    .line 378
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmedia/AudioClip;
    move-wide v1, p1

    .local v1, "pan":D
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Lcom/sun/media/jfxmedia/AudioClip;->clipPan:D

    .line 379
    return-void
.end method

.method public setPlaybackRate(D)V
    .locals 7

    .prologue
    .line 355
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmedia/AudioClip;
    move-wide v1, p1

    .local v1, "rate":D
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Lcom/sun/media/jfxmedia/AudioClip;->clipRate:D

    .line 356
    return-void
.end method

.method public setPriority(I)V
    .locals 4

    .prologue
    .line 262
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmedia/AudioClip;
    move v1, p1

    .local v1, "prio":I
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/sun/media/jfxmedia/AudioClip;->clipPriority:I

    .line 263
    return-void
.end method

.method public setVolume(D)V
    .locals 7

    .prologue
    .line 307
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmedia/AudioClip;
    move-wide v1, p1

    .local v1, "vol":D
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Lcom/sun/media/jfxmedia/AudioClip;->clipVolume:D

    .line 308
    return-void
.end method

.method public abstract stop()V
.end method

.method public volume()D
    .locals 3

    .prologue
    .line 297
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmedia/AudioClip;
    move-object v1, v0

    iget-wide v1, v1, Lcom/sun/media/jfxmedia/AudioClip;->clipVolume:D

    move-wide v0, v1

    .end local v0    # "this":Lcom/sun/media/jfxmedia/AudioClip;
    return-wide v0
.end method
