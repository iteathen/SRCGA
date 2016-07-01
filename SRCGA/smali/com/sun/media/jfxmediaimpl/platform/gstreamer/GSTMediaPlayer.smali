.class final Lcom/sun/media/jfxmediaimpl/platform/gstreamer/GSTMediaPlayer;
.super Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;
.source "GSTMediaPlayer.java"


# instance fields
.field private audioEqualizer:Lcom/sun/media/jfxmedia/effects/AudioEqualizer;

.field private audioSpectrum:Lcom/sun/media/jfxmedia/effects/AudioSpectrum;

.field private gstMedia:Lcom/sun/media/jfxmediaimpl/platform/gstreamer/GSTMedia;

.field private muteEnabled:Z

.field private mutedVolume:F


# direct methods
.method constructor <init>(Lcom/sun/media/jfxmedia/locator/Locator;)V
    .locals 7

    .prologue
    .line 62
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/platform/gstreamer/GSTMediaPlayer;
    move-object v1, p1

    .local v1, "source":Lcom/sun/media/jfxmedia/locator/Locator;
    move-object v2, v0

    new-instance v3, Lcom/sun/media/jfxmediaimpl/platform/gstreamer/GSTMedia;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v1

    invoke-direct {v4, v5}, Lcom/sun/media/jfxmediaimpl/platform/gstreamer/GSTMedia;-><init>(Lcom/sun/media/jfxmedia/locator/Locator;)V

    invoke-direct {v2, v3}, Lcom/sun/media/jfxmediaimpl/platform/gstreamer/GSTMediaPlayer;-><init>(Lcom/sun/media/jfxmediaimpl/platform/gstreamer/GSTMedia;)V

    .line 63
    return-void
.end method

.method private constructor <init>(Lcom/sun/media/jfxmediaimpl/platform/gstreamer/GSTMedia;)V
    .locals 11

    .prologue
    .line 46
    move-object v1, p0

    .local v1, "this":Lcom/sun/media/jfxmediaimpl/platform/gstreamer/GSTMediaPlayer;
    move-object v2, p1

    .local v2, "sourceMedia":Lcom/sun/media/jfxmediaimpl/platform/gstreamer/GSTMedia;
    move-object v6, v1

    move-object v7, v2

    invoke-direct {v6, v7}, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;-><init>(Lcom/sun/media/jfxmediaimpl/NativeMedia;)V

    .line 39
    move-object v6, v1

    const/4 v7, 0x0

    iput-object v7, v6, Lcom/sun/media/jfxmediaimpl/platform/gstreamer/GSTMediaPlayer;->gstMedia:Lcom/sun/media/jfxmediaimpl/platform/gstreamer/GSTMedia;

    .line 40
    move-object v6, v1

    const/high16 v7, 0x3f800000    # 1.0f

    iput v7, v6, Lcom/sun/media/jfxmediaimpl/platform/gstreamer/GSTMediaPlayer;->mutedVolume:F

    .line 41
    move-object v6, v1

    const/4 v7, 0x0

    iput-boolean v7, v6, Lcom/sun/media/jfxmediaimpl/platform/gstreamer/GSTMediaPlayer;->muteEnabled:Z

    .line 47
    move-object v6, v1

    invoke-virtual {v6}, Lcom/sun/media/jfxmediaimpl/platform/gstreamer/GSTMediaPlayer;->init()V

    .line 48
    move-object v6, v1

    move-object v7, v2

    iput-object v7, v6, Lcom/sun/media/jfxmediaimpl/platform/gstreamer/GSTMediaPlayer;->gstMedia:Lcom/sun/media/jfxmediaimpl/platform/gstreamer/GSTMedia;

    .line 50
    move-object v6, v1

    move-object v7, v1

    iget-object v7, v7, Lcom/sun/media/jfxmediaimpl/platform/gstreamer/GSTMediaPlayer;->gstMedia:Lcom/sun/media/jfxmediaimpl/platform/gstreamer/GSTMedia;

    invoke-virtual {v7}, Lcom/sun/media/jfxmediaimpl/platform/gstreamer/GSTMedia;->getNativeMediaRef()J

    move-result-wide v7

    invoke-direct {v6, v7, v8}, Lcom/sun/media/jfxmediaimpl/platform/gstreamer/GSTMediaPlayer;->gstInitPlayer(J)I

    move-result v6

    move v3, v6

    .line 51
    .local v3, "rc":I
    const/4 v6, 0x0

    move v7, v3

    if-eq v6, v7, :cond_0

    .line 52
    move-object v6, v1

    invoke-virtual {v6}, Lcom/sun/media/jfxmediaimpl/platform/gstreamer/GSTMediaPlayer;->dispose()V

    .line 53
    move-object v6, v1

    move v7, v3

    const/4 v8, 0x0

    invoke-direct {v6, v7, v8}, Lcom/sun/media/jfxmediaimpl/platform/gstreamer/GSTMediaPlayer;->throwMediaErrorException(ILjava/lang/String;)V

    .line 56
    :cond_0
    move-object v6, v1

    iget-object v6, v6, Lcom/sun/media/jfxmediaimpl/platform/gstreamer/GSTMediaPlayer;->gstMedia:Lcom/sun/media/jfxmediaimpl/platform/gstreamer/GSTMedia;

    invoke-virtual {v6}, Lcom/sun/media/jfxmediaimpl/platform/gstreamer/GSTMedia;->getNativeMediaRef()J

    move-result-wide v6

    move-wide v4, v6

    .line 57
    .local v4, "mediaRef":J
    move-object v6, v1

    move-object v7, v1

    move-object v8, v1

    move-wide v9, v4

    invoke-direct {v8, v9, v10}, Lcom/sun/media/jfxmediaimpl/platform/gstreamer/GSTMediaPlayer;->gstGetAudioSpectrum(J)J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Lcom/sun/media/jfxmediaimpl/platform/gstreamer/GSTMediaPlayer;->createNativeAudioSpectrum(J)Lcom/sun/media/jfxmedia/effects/AudioSpectrum;

    move-result-object v7

    iput-object v7, v6, Lcom/sun/media/jfxmediaimpl/platform/gstreamer/GSTMediaPlayer;->audioSpectrum:Lcom/sun/media/jfxmedia/effects/AudioSpectrum;

    .line 58
    move-object v6, v1

    move-object v7, v1

    move-object v8, v1

    move-wide v9, v4

    invoke-direct {v8, v9, v10}, Lcom/sun/media/jfxmediaimpl/platform/gstreamer/GSTMediaPlayer;->gstGetAudioEqualizer(J)J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Lcom/sun/media/jfxmediaimpl/platform/gstreamer/GSTMediaPlayer;->createNativeAudioEqualizer(J)Lcom/sun/media/jfxmedia/effects/AudioEqualizer;

    move-result-object v7

    iput-object v7, v6, Lcom/sun/media/jfxmediaimpl/platform/gstreamer/GSTMediaPlayer;->audioEqualizer:Lcom/sun/media/jfxmedia/effects/AudioEqualizer;

    .line 59
    return-void
.end method

.method private native gstFinish(J)I
.end method

.method private native gstGetAudioEqualizer(J)J
.end method

.method private native gstGetAudioSpectrum(J)J
.end method

.method private native gstGetAudioSyncDelay(J[J)I
.end method

.method private native gstGetBalance(J[F)I
.end method

.method private native gstGetDuration(J[D)I
.end method

.method private native gstGetPresentationTime(J[D)I
.end method

.method private native gstGetRate(J[F)I
.end method

.method private native gstGetVolume(J[F)I
.end method

.method private native gstInitPlayer(J)I
.end method

.method private native gstPause(J)I
.end method

.method private native gstPlay(J)I
.end method

.method private native gstSeek(JD)I
.end method

.method private native gstSetAudioSyncDelay(JJ)I
.end method

.method private native gstSetBalance(JF)I
.end method

.method private native gstSetRate(JF)I
.end method

.method private native gstSetVolume(JF)I
.end method

.method private native gstStop(J)I
.end method

.method private throwMediaErrorException(ILjava/lang/String;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/media/jfxmedia/MediaException;
        }
    .end annotation

    .prologue
    .line 79
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/platform/gstreamer/GSTMediaPlayer;
    move v1, p1

    .local v1, "code":I
    move-object v2, p2

    .local v2, "message":Ljava/lang/String;
    move v4, v1

    invoke-static {v4}, Lcom/sun/media/jfxmedia/MediaError;->getFromCode(I)Lcom/sun/media/jfxmedia/MediaError;

    move-result-object v4

    move-object v3, v4

    .line 80
    .local v3, "me":Lcom/sun/media/jfxmedia/MediaError;
    new-instance v4, Lcom/sun/media/jfxmedia/MediaException;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v6, v2

    const/4 v7, 0x0

    move-object v8, v3

    invoke-direct {v5, v6, v7, v8}, Lcom/sun/media/jfxmedia/MediaException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lcom/sun/media/jfxmedia/MediaError;)V

    throw v4
.end method


# virtual methods
.method public getAudioSpectrum()Lcom/sun/media/jfxmedia/effects/AudioSpectrum;
    .locals 2

    .prologue
    .line 72
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/platform/gstreamer/GSTMediaPlayer;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/media/jfxmediaimpl/platform/gstreamer/GSTMediaPlayer;->audioSpectrum:Lcom/sun/media/jfxmedia/effects/AudioSpectrum;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/media/jfxmediaimpl/platform/gstreamer/GSTMediaPlayer;
    return-object v0
.end method

.method public getEqualizer()Lcom/sun/media/jfxmedia/effects/AudioEqualizer;
    .locals 2

    .prologue
    .line 67
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/platform/gstreamer/GSTMediaPlayer;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/media/jfxmediaimpl/platform/gstreamer/GSTMediaPlayer;->audioEqualizer:Lcom/sun/media/jfxmedia/effects/AudioEqualizer;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/media/jfxmediaimpl/platform/gstreamer/GSTMediaPlayer;
    return-object v0
.end method

.method protected playerDispose()V
    .locals 3

    .prologue
    .line 270
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/platform/gstreamer/GSTMediaPlayer;
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/sun/media/jfxmediaimpl/platform/gstreamer/GSTMediaPlayer;->audioEqualizer:Lcom/sun/media/jfxmedia/effects/AudioEqualizer;

    .line 271
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/sun/media/jfxmediaimpl/platform/gstreamer/GSTMediaPlayer;->audioSpectrum:Lcom/sun/media/jfxmedia/effects/AudioSpectrum;

    .line 272
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/sun/media/jfxmediaimpl/platform/gstreamer/GSTMediaPlayer;->gstMedia:Lcom/sun/media/jfxmediaimpl/platform/gstreamer/GSTMedia;

    .line 273
    return-void
.end method

.method protected playerFinish()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/media/jfxmedia/MediaException;
        }
    .end annotation

    .prologue
    .line 127
    move-object v1, p0

    .local v1, "this":Lcom/sun/media/jfxmediaimpl/platform/gstreamer/GSTMediaPlayer;
    move-object v3, v1

    move-object v4, v1

    iget-object v4, v4, Lcom/sun/media/jfxmediaimpl/platform/gstreamer/GSTMediaPlayer;->gstMedia:Lcom/sun/media/jfxmediaimpl/platform/gstreamer/GSTMedia;

    invoke-virtual {v4}, Lcom/sun/media/jfxmediaimpl/platform/gstreamer/GSTMedia;->getNativeMediaRef()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Lcom/sun/media/jfxmediaimpl/platform/gstreamer/GSTMediaPlayer;->gstFinish(J)I

    move-result v3

    move v2, v3

    .line 128
    .local v2, "rc":I
    const/4 v3, 0x0

    move v4, v2

    if-eq v3, v4, :cond_0

    .line 129
    move-object v3, v1

    move v4, v2

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/sun/media/jfxmediaimpl/platform/gstreamer/GSTMediaPlayer;->throwMediaErrorException(ILjava/lang/String;)V

    .line 131
    :cond_0
    return-void
.end method

.method protected playerGetAudioSyncDelay()J
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/media/jfxmedia/MediaException;
        }
    .end annotation

    .prologue
    .line 85
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/platform/gstreamer/GSTMediaPlayer;
    const/4 v3, 0x1

    new-array v3, v3, [J

    move-object v1, v3

    .line 86
    .local v1, "audioSyncDelay":[J
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/media/jfxmediaimpl/platform/gstreamer/GSTMediaPlayer;->gstMedia:Lcom/sun/media/jfxmediaimpl/platform/gstreamer/GSTMedia;

    invoke-virtual {v4}, Lcom/sun/media/jfxmediaimpl/platform/gstreamer/GSTMedia;->getNativeMediaRef()J

    move-result-wide v4

    move-object v6, v1

    invoke-direct {v3, v4, v5, v6}, Lcom/sun/media/jfxmediaimpl/platform/gstreamer/GSTMediaPlayer;->gstGetAudioSyncDelay(J[J)I

    move-result v3

    move v2, v3

    .line 87
    .local v2, "rc":I
    const/4 v3, 0x0

    move v4, v2

    if-eq v3, v4, :cond_0

    .line 88
    move-object v3, v0

    move v4, v2

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/sun/media/jfxmediaimpl/platform/gstreamer/GSTMediaPlayer;->throwMediaErrorException(ILjava/lang/String;)V

    .line 90
    :cond_0
    move-object v3, v1

    const/4 v4, 0x0

    aget-wide v3, v3, v4

    move-wide v0, v3

    .end local v0    # "this":Lcom/sun/media/jfxmediaimpl/platform/gstreamer/GSTMediaPlayer;
    return-wide v0
.end method

.method protected playerGetBalance()F
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/media/jfxmedia/MediaException;
        }
    .end annotation

    .prologue
    .line 226
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/platform/gstreamer/GSTMediaPlayer;
    const/4 v3, 0x1

    new-array v3, v3, [F

    move-object v1, v3

    .line 227
    .local v1, "balance":[F
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/media/jfxmediaimpl/platform/gstreamer/GSTMediaPlayer;->gstMedia:Lcom/sun/media/jfxmediaimpl/platform/gstreamer/GSTMedia;

    invoke-virtual {v4}, Lcom/sun/media/jfxmediaimpl/platform/gstreamer/GSTMedia;->getNativeMediaRef()J

    move-result-wide v4

    move-object v6, v1

    invoke-direct {v3, v4, v5, v6}, Lcom/sun/media/jfxmediaimpl/platform/gstreamer/GSTMediaPlayer;->gstGetBalance(J[F)I

    move-result v3

    move v2, v3

    .line 228
    .local v2, "rc":I
    const/4 v3, 0x0

    move v4, v2

    if-eq v3, v4, :cond_0

    .line 229
    move-object v3, v0

    move v4, v2

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/sun/media/jfxmediaimpl/platform/gstreamer/GSTMediaPlayer;->throwMediaErrorException(ILjava/lang/String;)V

    .line 231
    :cond_0
    move-object v3, v1

    const/4 v4, 0x0

    aget v3, v3, v4

    move v0, v3

    .end local v0    # "this":Lcom/sun/media/jfxmediaimpl/platform/gstreamer/GSTMediaPlayer;
    return v0
.end method

.method protected playerGetDuration()D
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/media/jfxmedia/MediaException;
        }
    .end annotation

    .prologue
    .line 244
    move-object v1, p0

    .local v1, "this":Lcom/sun/media/jfxmediaimpl/platform/gstreamer/GSTMediaPlayer;
    const/4 v4, 0x1

    new-array v4, v4, [D

    move-object v2, v4

    .line 245
    .local v2, "duration":[D
    move-object v4, v1

    move-object v5, v1

    iget-object v5, v5, Lcom/sun/media/jfxmediaimpl/platform/gstreamer/GSTMediaPlayer;->gstMedia:Lcom/sun/media/jfxmediaimpl/platform/gstreamer/GSTMedia;

    invoke-virtual {v5}, Lcom/sun/media/jfxmediaimpl/platform/gstreamer/GSTMedia;->getNativeMediaRef()J

    move-result-wide v5

    move-object v7, v2

    invoke-direct {v4, v5, v6, v7}, Lcom/sun/media/jfxmediaimpl/platform/gstreamer/GSTMediaPlayer;->gstGetDuration(J[D)I

    move-result v4

    move v3, v4

    .line 246
    .local v3, "rc":I
    const/4 v4, 0x0

    move v5, v3

    if-eq v4, v5, :cond_0

    .line 247
    move-object v4, v1

    move v5, v3

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Lcom/sun/media/jfxmediaimpl/platform/gstreamer/GSTMediaPlayer;->throwMediaErrorException(ILjava/lang/String;)V

    .line 249
    :cond_0
    move-object v4, v2

    const/4 v5, 0x0

    aget-wide v4, v4, v5

    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    cmpl-double v4, v4, v6

    if-nez v4, :cond_1

    .line 250
    const-wide/high16 v4, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    move-wide v1, v4

    .line 252
    .end local v1    # "this":Lcom/sun/media/jfxmediaimpl/platform/gstreamer/GSTMediaPlayer;
    :goto_0
    return-wide v1

    .restart local v1    # "this":Lcom/sun/media/jfxmediaimpl/platform/gstreamer/GSTMediaPlayer;
    :cond_1
    move-object v4, v2

    const/4 v5, 0x0

    aget-wide v4, v4, v5

    move-wide v1, v4

    goto :goto_0
.end method

.method protected playerGetMute()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/media/jfxmedia/MediaException;
        }
    .end annotation

    .prologue
    .line 163
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/platform/gstreamer/GSTMediaPlayer;
    move-object v1, v0

    iget-boolean v1, v1, Lcom/sun/media/jfxmediaimpl/platform/gstreamer/GSTMediaPlayer;->muteEnabled:Z

    move v0, v1

    .end local v0    # "this":Lcom/sun/media/jfxmediaimpl/platform/gstreamer/GSTMediaPlayer;
    return v0
.end method

.method protected playerGetPresentationTime()D
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/media/jfxmedia/MediaException;
        }
    .end annotation

    .prologue
    .line 153
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/platform/gstreamer/GSTMediaPlayer;
    const/4 v3, 0x1

    new-array v3, v3, [D

    move-object v1, v3

    .line 154
    .local v1, "presentationTime":[D
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/media/jfxmediaimpl/platform/gstreamer/GSTMediaPlayer;->gstMedia:Lcom/sun/media/jfxmediaimpl/platform/gstreamer/GSTMedia;

    invoke-virtual {v4}, Lcom/sun/media/jfxmediaimpl/platform/gstreamer/GSTMedia;->getNativeMediaRef()J

    move-result-wide v4

    move-object v6, v1

    invoke-direct {v3, v4, v5, v6}, Lcom/sun/media/jfxmediaimpl/platform/gstreamer/GSTMediaPlayer;->gstGetPresentationTime(J[D)I

    move-result v3

    move v2, v3

    .line 155
    .local v2, "rc":I
    const/4 v3, 0x0

    move v4, v2

    if-eq v3, v4, :cond_0

    .line 156
    move-object v3, v0

    move v4, v2

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/sun/media/jfxmediaimpl/platform/gstreamer/GSTMediaPlayer;->throwMediaErrorException(ILjava/lang/String;)V

    .line 158
    :cond_0
    move-object v3, v1

    const/4 v4, 0x0

    aget-wide v3, v3, v4

    move-wide v0, v3

    .end local v0    # "this":Lcom/sun/media/jfxmediaimpl/platform/gstreamer/GSTMediaPlayer;
    return-wide v0
.end method

.method protected playerGetRate()F
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/media/jfxmedia/MediaException;
        }
    .end annotation

    .prologue
    .line 135
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/platform/gstreamer/GSTMediaPlayer;
    const/4 v3, 0x1

    new-array v3, v3, [F

    move-object v1, v3

    .line 136
    .local v1, "rate":[F
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/media/jfxmediaimpl/platform/gstreamer/GSTMediaPlayer;->gstMedia:Lcom/sun/media/jfxmediaimpl/platform/gstreamer/GSTMedia;

    invoke-virtual {v4}, Lcom/sun/media/jfxmediaimpl/platform/gstreamer/GSTMedia;->getNativeMediaRef()J

    move-result-wide v4

    move-object v6, v1

    invoke-direct {v3, v4, v5, v6}, Lcom/sun/media/jfxmediaimpl/platform/gstreamer/GSTMediaPlayer;->gstGetRate(J[F)I

    move-result v3

    move v2, v3

    .line 137
    .local v2, "rc":I
    const/4 v3, 0x0

    move v4, v2

    if-eq v3, v4, :cond_0

    .line 138
    move-object v3, v0

    move v4, v2

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/sun/media/jfxmediaimpl/platform/gstreamer/GSTMediaPlayer;->throwMediaErrorException(ILjava/lang/String;)V

    .line 140
    :cond_0
    move-object v3, v1

    const/4 v4, 0x0

    aget v3, v3, v4

    move v0, v3

    .end local v0    # "this":Lcom/sun/media/jfxmediaimpl/platform/gstreamer/GSTMediaPlayer;
    return v0
.end method

.method protected playerGetVolume()F
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/media/jfxmedia/MediaException;
        }
    .end annotation

    .prologue
    .line 198
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/platform/gstreamer/GSTMediaPlayer;
    move-object v3, v0

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v1, v4

    monitor-enter v3

    .line 199
    move-object v3, v0

    :try_start_0
    iget-boolean v3, v3, Lcom/sun/media/jfxmediaimpl/platform/gstreamer/GSTMediaPlayer;->muteEnabled:Z

    if-eqz v3, :cond_0

    .line 200
    move-object v3, v0

    iget v3, v3, Lcom/sun/media/jfxmediaimpl/platform/gstreamer/GSTMediaPlayer;->mutedVolume:F

    move-object v4, v1

    monitor-exit v4

    move v0, v3

    .line 207
    .end local v0    # "this":Lcom/sun/media/jfxmediaimpl/platform/gstreamer/GSTMediaPlayer;
    .local v1, "volume":[F
    .local v2, "rc":I
    :goto_0
    return v0

    .line 201
    .end local v1    # "volume":[F
    .end local v2    # "rc":I
    .restart local v0    # "this":Lcom/sun/media/jfxmediaimpl/platform/gstreamer/GSTMediaPlayer;
    :cond_0
    move-object v3, v1

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 202
    const/4 v3, 0x1

    new-array v3, v3, [F

    move-object v1, v3

    .line 203
    .restart local v1    # "volume":[F
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/media/jfxmediaimpl/platform/gstreamer/GSTMediaPlayer;->gstMedia:Lcom/sun/media/jfxmediaimpl/platform/gstreamer/GSTMedia;

    invoke-virtual {v4}, Lcom/sun/media/jfxmediaimpl/platform/gstreamer/GSTMedia;->getNativeMediaRef()J

    move-result-wide v4

    move-object v6, v1

    invoke-direct {v3, v4, v5, v6}, Lcom/sun/media/jfxmediaimpl/platform/gstreamer/GSTMediaPlayer;->gstGetVolume(J[F)I

    move-result v3

    move v2, v3

    .line 204
    .restart local v2    # "rc":I
    const/4 v3, 0x0

    move v4, v2

    if-eq v3, v4, :cond_1

    .line 205
    move-object v3, v0

    move v4, v2

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/sun/media/jfxmediaimpl/platform/gstreamer/GSTMediaPlayer;->throwMediaErrorException(ILjava/lang/String;)V

    .line 207
    :cond_1
    move-object v3, v1

    const/4 v4, 0x0

    aget v3, v3, v4

    move v0, v3

    goto :goto_0

    .line 201
    .end local v1    # "volume":[F
    .end local v2    # "rc":I
    :catchall_0
    move-exception v3

    move-object v2, v3

    move-object v3, v1

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v3, v2

    throw v3
.end method

.method protected playerInit()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/media/jfxmedia/MediaException;
        }
    .end annotation

    .prologue
    .line 266
    return-void
.end method

.method protected playerPause()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/media/jfxmedia/MediaException;
        }
    .end annotation

    .prologue
    .line 119
    move-object v1, p0

    .local v1, "this":Lcom/sun/media/jfxmediaimpl/platform/gstreamer/GSTMediaPlayer;
    move-object v3, v1

    move-object v4, v1

    iget-object v4, v4, Lcom/sun/media/jfxmediaimpl/platform/gstreamer/GSTMediaPlayer;->gstMedia:Lcom/sun/media/jfxmediaimpl/platform/gstreamer/GSTMedia;

    invoke-virtual {v4}, Lcom/sun/media/jfxmediaimpl/platform/gstreamer/GSTMedia;->getNativeMediaRef()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Lcom/sun/media/jfxmediaimpl/platform/gstreamer/GSTMediaPlayer;->gstPause(J)I

    move-result v3

    move v2, v3

    .line 120
    .local v2, "rc":I
    const/4 v3, 0x0

    move v4, v2

    if-eq v3, v4, :cond_0

    .line 121
    move-object v3, v1

    move v4, v2

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/sun/media/jfxmediaimpl/platform/gstreamer/GSTMediaPlayer;->throwMediaErrorException(ILjava/lang/String;)V

    .line 123
    :cond_0
    return-void
.end method

.method protected playerPlay()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/media/jfxmedia/MediaException;
        }
    .end annotation

    .prologue
    .line 103
    move-object v1, p0

    .local v1, "this":Lcom/sun/media/jfxmediaimpl/platform/gstreamer/GSTMediaPlayer;
    move-object v3, v1

    move-object v4, v1

    iget-object v4, v4, Lcom/sun/media/jfxmediaimpl/platform/gstreamer/GSTMediaPlayer;->gstMedia:Lcom/sun/media/jfxmediaimpl/platform/gstreamer/GSTMedia;

    invoke-virtual {v4}, Lcom/sun/media/jfxmediaimpl/platform/gstreamer/GSTMedia;->getNativeMediaRef()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Lcom/sun/media/jfxmediaimpl/platform/gstreamer/GSTMediaPlayer;->gstPlay(J)I

    move-result v3

    move v2, v3

    .line 104
    .local v2, "rc":I
    const/4 v3, 0x0

    move v4, v2

    if-eq v3, v4, :cond_0

    .line 105
    move-object v3, v1

    move v4, v2

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/sun/media/jfxmediaimpl/platform/gstreamer/GSTMediaPlayer;->throwMediaErrorException(ILjava/lang/String;)V

    .line 107
    :cond_0
    return-void
.end method

.method protected playerSeek(D)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/media/jfxmedia/MediaException;
        }
    .end annotation

    .prologue
    .line 258
    move-object v1, p0

    .local v1, "this":Lcom/sun/media/jfxmediaimpl/platform/gstreamer/GSTMediaPlayer;
    move-wide v2, p1

    .local v2, "streamTime":D
    move-object v5, v1

    move-object v6, v1

    iget-object v6, v6, Lcom/sun/media/jfxmediaimpl/platform/gstreamer/GSTMediaPlayer;->gstMedia:Lcom/sun/media/jfxmediaimpl/platform/gstreamer/GSTMedia;

    invoke-virtual {v6}, Lcom/sun/media/jfxmediaimpl/platform/gstreamer/GSTMedia;->getNativeMediaRef()J

    move-result-wide v6

    move-wide v8, v2

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/sun/media/jfxmediaimpl/platform/gstreamer/GSTMediaPlayer;->gstSeek(JD)I

    move-result v5

    move v4, v5

    .line 259
    .local v4, "rc":I
    const/4 v5, 0x0

    move v6, v4

    if-eq v5, v6, :cond_0

    .line 260
    move-object v5, v1

    move v6, v4

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Lcom/sun/media/jfxmediaimpl/platform/gstreamer/GSTMediaPlayer;->throwMediaErrorException(ILjava/lang/String;)V

    .line 262
    :cond_0
    return-void
.end method

.method protected playerSetAudioSyncDelay(J)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/media/jfxmedia/MediaException;
        }
    .end annotation

    .prologue
    .line 95
    move-object v1, p0

    .local v1, "this":Lcom/sun/media/jfxmediaimpl/platform/gstreamer/GSTMediaPlayer;
    move-wide v2, p1

    .local v2, "delay":J
    move-object v5, v1

    move-object v6, v1

    iget-object v6, v6, Lcom/sun/media/jfxmediaimpl/platform/gstreamer/GSTMediaPlayer;->gstMedia:Lcom/sun/media/jfxmediaimpl/platform/gstreamer/GSTMedia;

    invoke-virtual {v6}, Lcom/sun/media/jfxmediaimpl/platform/gstreamer/GSTMedia;->getNativeMediaRef()J

    move-result-wide v6

    move-wide v8, v2

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/sun/media/jfxmediaimpl/platform/gstreamer/GSTMediaPlayer;->gstSetAudioSyncDelay(JJ)I

    move-result v5

    move v4, v5

    .line 96
    .local v4, "rc":I
    const/4 v5, 0x0

    move v6, v4

    if-eq v5, v6, :cond_0

    .line 97
    move-object v5, v1

    move v6, v4

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Lcom/sun/media/jfxmediaimpl/platform/gstreamer/GSTMediaPlayer;->throwMediaErrorException(ILjava/lang/String;)V

    .line 99
    :cond_0
    return-void
.end method

.method protected playerSetBalance(F)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/media/jfxmedia/MediaException;
        }
    .end annotation

    .prologue
    .line 236
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/platform/gstreamer/GSTMediaPlayer;
    move v1, p1

    .local v1, "balance":F
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/media/jfxmediaimpl/platform/gstreamer/GSTMediaPlayer;->gstMedia:Lcom/sun/media/jfxmediaimpl/platform/gstreamer/GSTMedia;

    invoke-virtual {v4}, Lcom/sun/media/jfxmediaimpl/platform/gstreamer/GSTMedia;->getNativeMediaRef()J

    move-result-wide v4

    move v6, v1

    invoke-direct {v3, v4, v5, v6}, Lcom/sun/media/jfxmediaimpl/platform/gstreamer/GSTMediaPlayer;->gstSetBalance(JF)I

    move-result v3

    move v2, v3

    .line 237
    .local v2, "rc":I
    const/4 v3, 0x0

    move v4, v2

    if-eq v3, v4, :cond_0

    .line 238
    move-object v3, v0

    move v4, v2

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/sun/media/jfxmediaimpl/platform/gstreamer/GSTMediaPlayer;->throwMediaErrorException(ILjava/lang/String;)V

    .line 240
    :cond_0
    return-void
.end method

.method protected declared-synchronized playerSetMute(Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/media/jfxmedia/MediaException;
        }
    .end annotation

    .prologue
    .line 168
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/platform/gstreamer/GSTMediaPlayer;
    move v1, p1

    .local v1, "enable":Z
    move-object v5, p0

    monitor-enter v5

    move v3, v1

    move-object v4, v0

    :try_start_0
    iget-boolean v4, v4, Lcom/sun/media/jfxmediaimpl/platform/gstreamer/GSTMediaPlayer;->muteEnabled:Z

    if-eq v3, v4, :cond_0

    .line 169
    move v3, v1

    if-eqz v3, :cond_1

    .line 171
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/media/jfxmediaimpl/platform/gstreamer/GSTMediaPlayer;->getVolume()F

    move-result v3

    move v2, v3

    .line 174
    .local v2, "currentVolume":F
    move-object v3, v0

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/sun/media/jfxmediaimpl/platform/gstreamer/GSTMediaPlayer;->playerSetVolume(F)V

    .line 179
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/sun/media/jfxmediaimpl/platform/gstreamer/GSTMediaPlayer;->muteEnabled:Z

    .line 182
    move-object v3, v0

    move v4, v2

    iput v4, v3, Lcom/sun/media/jfxmediaimpl/platform/gstreamer/GSTMediaPlayer;->mutedVolume:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 183
    .line 194
    .end local v2    # "currentVolume":F
    :cond_0
    :goto_0
    monitor-exit v5

    return-void

    .line 188
    :cond_1
    move-object v3, v0

    const/4 v4, 0x0

    :try_start_1
    iput-boolean v4, v3, Lcom/sun/media/jfxmediaimpl/platform/gstreamer/GSTMediaPlayer;->muteEnabled:Z

    .line 191
    move-object v3, v0

    move-object v4, v0

    iget v4, v4, Lcom/sun/media/jfxmediaimpl/platform/gstreamer/GSTMediaPlayer;->mutedVolume:F

    invoke-virtual {v3, v4}, Lcom/sun/media/jfxmediaimpl/platform/gstreamer/GSTMediaPlayer;->playerSetVolume(F)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 168
    :catchall_0
    move-exception v0

    monitor-exit v5

    .end local v0    # "this":Lcom/sun/media/jfxmediaimpl/platform/gstreamer/GSTMediaPlayer;
    throw v0
.end method

.method protected playerSetRate(F)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/media/jfxmedia/MediaException;
        }
    .end annotation

    .prologue
    .line 145
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/platform/gstreamer/GSTMediaPlayer;
    move v1, p1

    .local v1, "rate":F
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/media/jfxmediaimpl/platform/gstreamer/GSTMediaPlayer;->gstMedia:Lcom/sun/media/jfxmediaimpl/platform/gstreamer/GSTMedia;

    invoke-virtual {v4}, Lcom/sun/media/jfxmediaimpl/platform/gstreamer/GSTMedia;->getNativeMediaRef()J

    move-result-wide v4

    move v6, v1

    invoke-direct {v3, v4, v5, v6}, Lcom/sun/media/jfxmediaimpl/platform/gstreamer/GSTMediaPlayer;->gstSetRate(JF)I

    move-result v3

    move v2, v3

    .line 146
    .local v2, "rc":I
    const/4 v3, 0x0

    move v4, v2

    if-eq v3, v4, :cond_0

    .line 147
    move-object v3, v0

    move v4, v2

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/sun/media/jfxmediaimpl/platform/gstreamer/GSTMediaPlayer;->throwMediaErrorException(ILjava/lang/String;)V

    .line 149
    :cond_0
    return-void
.end method

.method protected declared-synchronized playerSetVolume(F)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/media/jfxmedia/MediaException;
        }
    .end annotation

    .prologue
    .line 212
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/platform/gstreamer/GSTMediaPlayer;
    move v1, p1

    .local v1, "volume":F
    move-object v7, p0

    monitor-enter v7

    move-object v3, v0

    :try_start_0
    iget-boolean v3, v3, Lcom/sun/media/jfxmediaimpl/platform/gstreamer/GSTMediaPlayer;->muteEnabled:Z

    if-nez v3, :cond_1

    .line 213
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/media/jfxmediaimpl/platform/gstreamer/GSTMediaPlayer;->gstMedia:Lcom/sun/media/jfxmediaimpl/platform/gstreamer/GSTMedia;

    invoke-virtual {v4}, Lcom/sun/media/jfxmediaimpl/platform/gstreamer/GSTMedia;->getNativeMediaRef()J

    move-result-wide v4

    move v6, v1

    invoke-direct {v3, v4, v5, v6}, Lcom/sun/media/jfxmediaimpl/platform/gstreamer/GSTMediaPlayer;->gstSetVolume(JF)I

    move-result v3

    move v2, v3

    .line 214
    .local v2, "rc":I
    const/4 v3, 0x0

    move v4, v2

    if-eq v3, v4, :cond_0

    .line 215
    move-object v3, v0

    move v4, v2

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/sun/media/jfxmediaimpl/platform/gstreamer/GSTMediaPlayer;->throwMediaErrorException(ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 219
    .line 222
    .end local v2    # "rc":I
    :goto_0
    monitor-exit v7

    return-void

    .line 217
    .restart local v2    # "rc":I
    :cond_0
    move-object v3, v0

    move v4, v1

    :try_start_1
    iput v4, v3, Lcom/sun/media/jfxmediaimpl/platform/gstreamer/GSTMediaPlayer;->mutedVolume:F
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 212
    .end local v2    # "rc":I
    :catchall_0
    move-exception v0

    monitor-exit v7

    .end local v0    # "this":Lcom/sun/media/jfxmediaimpl/platform/gstreamer/GSTMediaPlayer;
    throw v0

    .line 220
    .restart local v0    # "this":Lcom/sun/media/jfxmediaimpl/platform/gstreamer/GSTMediaPlayer;
    :cond_1
    move-object v3, v0

    move v4, v1

    :try_start_2
    iput v4, v3, Lcom/sun/media/jfxmediaimpl/platform/gstreamer/GSTMediaPlayer;->mutedVolume:F
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method protected playerStop()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/media/jfxmedia/MediaException;
        }
    .end annotation

    .prologue
    .line 111
    move-object v1, p0

    .local v1, "this":Lcom/sun/media/jfxmediaimpl/platform/gstreamer/GSTMediaPlayer;
    move-object v3, v1

    move-object v4, v1

    iget-object v4, v4, Lcom/sun/media/jfxmediaimpl/platform/gstreamer/GSTMediaPlayer;->gstMedia:Lcom/sun/media/jfxmediaimpl/platform/gstreamer/GSTMedia;

    invoke-virtual {v4}, Lcom/sun/media/jfxmediaimpl/platform/gstreamer/GSTMedia;->getNativeMediaRef()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Lcom/sun/media/jfxmediaimpl/platform/gstreamer/GSTMediaPlayer;->gstStop(J)I

    move-result v3

    move v2, v3

    .line 112
    .local v2, "rc":I
    const/4 v3, 0x0

    move v4, v2

    if-eq v3, v4, :cond_0

    .line 113
    move-object v3, v1

    move v4, v2

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/sun/media/jfxmediaimpl/platform/gstreamer/GSTMediaPlayer;->throwMediaErrorException(ILjava/lang/String;)V

    .line 115
    :cond_0
    return-void
.end method
