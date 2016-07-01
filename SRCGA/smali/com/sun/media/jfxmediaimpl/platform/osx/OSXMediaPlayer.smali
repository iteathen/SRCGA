.class final Lcom/sun/media/jfxmediaimpl/platform/osx/OSXMediaPlayer;
.super Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;
.source "OSXMediaPlayer.java"


# instance fields
.field private final audioEq:Lcom/sun/media/jfxmedia/effects/AudioEqualizer;

.field private final audioSpectrum:Lcom/sun/media/jfxmedia/effects/AudioSpectrum;

.field private final mediaLocator:Lcom/sun/media/jfxmedia/locator/Locator;


# direct methods
.method constructor <init>(Lcom/sun/media/jfxmedia/locator/Locator;)V
    .locals 7

    .prologue
    .line 54
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/platform/osx/OSXMediaPlayer;
    move-object v1, p1

    .local v1, "source":Lcom/sun/media/jfxmedia/locator/Locator;
    move-object v2, v0

    new-instance v3, Lcom/sun/media/jfxmediaimpl/platform/osx/OSXMedia;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v1

    invoke-direct {v4, v5}, Lcom/sun/media/jfxmediaimpl/platform/osx/OSXMedia;-><init>(Lcom/sun/media/jfxmedia/locator/Locator;)V

    invoke-direct {v2, v3}, Lcom/sun/media/jfxmediaimpl/platform/osx/OSXMediaPlayer;-><init>(Lcom/sun/media/jfxmediaimpl/NativeMedia;)V

    .line 55
    return-void
.end method

.method constructor <init>(Lcom/sun/media/jfxmediaimpl/NativeMedia;)V
    .locals 6

    .prologue
    .line 44
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/platform/osx/OSXMediaPlayer;
    move-object v1, p1

    .local v1, "sourceMedia":Lcom/sun/media/jfxmediaimpl/NativeMedia;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;-><init>(Lcom/sun/media/jfxmediaimpl/NativeMedia;)V

    .line 45
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/media/jfxmediaimpl/platform/osx/OSXMediaPlayer;->init()V

    .line 46
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Lcom/sun/media/jfxmediaimpl/NativeMedia;->getLocator()Lcom/sun/media/jfxmedia/locator/Locator;

    move-result-object v3

    iput-object v3, v2, Lcom/sun/media/jfxmediaimpl/platform/osx/OSXMediaPlayer;->mediaLocator:Lcom/sun/media/jfxmedia/locator/Locator;

    .line 48
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/media/jfxmediaimpl/platform/osx/OSXMediaPlayer;->mediaLocator:Lcom/sun/media/jfxmedia/locator/Locator;

    invoke-virtual {v3}, Lcom/sun/media/jfxmedia/locator/Locator;->getStringLocation()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/sun/media/jfxmediaimpl/platform/osx/OSXMediaPlayer;->osxCreatePlayer(Ljava/lang/String;)V

    .line 49
    move-object v2, v0

    move-object v3, v0

    move-object v4, v0

    invoke-direct {v4}, Lcom/sun/media/jfxmediaimpl/platform/osx/OSXMediaPlayer;->osxGetAudioEqualizerRef()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/sun/media/jfxmediaimpl/platform/osx/OSXMediaPlayer;->createNativeAudioEqualizer(J)Lcom/sun/media/jfxmedia/effects/AudioEqualizer;

    move-result-object v3

    iput-object v3, v2, Lcom/sun/media/jfxmediaimpl/platform/osx/OSXMediaPlayer;->audioEq:Lcom/sun/media/jfxmedia/effects/AudioEqualizer;

    .line 50
    move-object v2, v0

    move-object v3, v0

    move-object v4, v0

    invoke-direct {v4}, Lcom/sun/media/jfxmediaimpl/platform/osx/OSXMediaPlayer;->osxGetAudioSpectrumRef()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/sun/media/jfxmediaimpl/platform/osx/OSXMediaPlayer;->createNativeAudioSpectrum(J)Lcom/sun/media/jfxmedia/effects/AudioSpectrum;

    move-result-object v3

    iput-object v3, v2, Lcom/sun/media/jfxmediaimpl/platform/osx/OSXMediaPlayer;->audioSpectrum:Lcom/sun/media/jfxmedia/effects/AudioSpectrum;

    .line 51
    return-void
.end method

.method private native osxCreatePlayer(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/media/jfxmedia/MediaException;
        }
    .end annotation
.end method

.method private native osxDispose()V
.end method

.method private native osxFinish()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/media/jfxmedia/MediaException;
        }
    .end annotation
.end method

.method private native osxGetAudioEqualizerRef()J
.end method

.method private native osxGetAudioSpectrumRef()J
.end method

.method private native osxGetAudioSyncDelay()J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/media/jfxmedia/MediaException;
        }
    .end annotation
.end method

.method private native osxGetBalance()F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/media/jfxmedia/MediaException;
        }
    .end annotation
.end method

.method private native osxGetDuration()D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/media/jfxmedia/MediaException;
        }
    .end annotation
.end method

.method private native osxGetMute()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/media/jfxmedia/MediaException;
        }
    .end annotation
.end method

.method private native osxGetPresentationTime()D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/media/jfxmedia/MediaException;
        }
    .end annotation
.end method

.method private native osxGetRate()F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/media/jfxmedia/MediaException;
        }
    .end annotation
.end method

.method private native osxGetVolume()F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/media/jfxmedia/MediaException;
        }
    .end annotation
.end method

.method private native osxPause()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/media/jfxmedia/MediaException;
        }
    .end annotation
.end method

.method private native osxPlay()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/media/jfxmedia/MediaException;
        }
    .end annotation
.end method

.method private native osxSeek(D)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/media/jfxmedia/MediaException;
        }
    .end annotation
.end method

.method private native osxSetAudioSyncDelay(J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/media/jfxmedia/MediaException;
        }
    .end annotation
.end method

.method private native osxSetBalance(F)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/media/jfxmedia/MediaException;
        }
    .end annotation
.end method

.method private native osxSetMute(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/media/jfxmedia/MediaException;
        }
    .end annotation
.end method

.method private native osxSetRate(F)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/media/jfxmedia/MediaException;
        }
    .end annotation
.end method

.method private native osxSetVolume(F)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/media/jfxmedia/MediaException;
        }
    .end annotation
.end method

.method private native osxStop()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/media/jfxmedia/MediaException;
        }
    .end annotation
.end method


# virtual methods
.method public getAudioSpectrum()Lcom/sun/media/jfxmedia/effects/AudioSpectrum;
    .locals 2

    .prologue
    .line 64
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/platform/osx/OSXMediaPlayer;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/media/jfxmediaimpl/platform/osx/OSXMediaPlayer;->audioSpectrum:Lcom/sun/media/jfxmedia/effects/AudioSpectrum;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/media/jfxmediaimpl/platform/osx/OSXMediaPlayer;
    return-object v0
.end method

.method public getEqualizer()Lcom/sun/media/jfxmedia/effects/AudioEqualizer;
    .locals 2

    .prologue
    .line 59
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/platform/osx/OSXMediaPlayer;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/media/jfxmediaimpl/platform/osx/OSXMediaPlayer;->audioEq:Lcom/sun/media/jfxmedia/effects/AudioEqualizer;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/media/jfxmediaimpl/platform/osx/OSXMediaPlayer;
    return-object v0
.end method

.method protected playerDispose()V
    .locals 2

    .prologue
    .line 159
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/platform/osx/OSXMediaPlayer;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/media/jfxmediaimpl/platform/osx/OSXMediaPlayer;->osxDispose()V

    .line 160
    return-void
.end method

.method protected playerFinish()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/media/jfxmedia/MediaException;
        }
    .end annotation

    .prologue
    .line 94
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/platform/osx/OSXMediaPlayer;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/media/jfxmediaimpl/platform/osx/OSXMediaPlayer;->osxFinish()V

    .line 95
    return-void
.end method

.method protected playerGetAudioSyncDelay()J
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/media/jfxmedia/MediaException;
        }
    .end annotation

    .prologue
    .line 69
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/platform/osx/OSXMediaPlayer;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/media/jfxmediaimpl/platform/osx/OSXMediaPlayer;->osxGetAudioSyncDelay()J

    move-result-wide v1

    move-wide v0, v1

    .end local v0    # "this":Lcom/sun/media/jfxmediaimpl/platform/osx/OSXMediaPlayer;
    return-wide v0
.end method

.method protected playerGetBalance()F
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/media/jfxmedia/MediaException;
        }
    .end annotation

    .prologue
    .line 134
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/platform/osx/OSXMediaPlayer;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/media/jfxmediaimpl/platform/osx/OSXMediaPlayer;->osxGetBalance()F

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/media/jfxmediaimpl/platform/osx/OSXMediaPlayer;
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
    .line 144
    move-object v1, p0

    .local v1, "this":Lcom/sun/media/jfxmediaimpl/platform/osx/OSXMediaPlayer;
    move-object v4, v1

    invoke-direct {v4}, Lcom/sun/media/jfxmediaimpl/platform/osx/OSXMediaPlayer;->osxGetDuration()D

    move-result-wide v4

    move-wide v2, v4

    .line 145
    .local v2, "duration":D
    move-wide v4, v2

    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    cmpl-double v4, v4, v6

    if-nez v4, :cond_0

    .line 146
    const-wide/high16 v4, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    move-wide v1, v4

    .line 149
    .end local v1    # "this":Lcom/sun/media/jfxmediaimpl/platform/osx/OSXMediaPlayer;
    :goto_0
    return-wide v1

    .restart local v1    # "this":Lcom/sun/media/jfxmediaimpl/platform/osx/OSXMediaPlayer;
    :cond_0
    move-wide v4, v2

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
    .line 114
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/platform/osx/OSXMediaPlayer;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/media/jfxmediaimpl/platform/osx/OSXMediaPlayer;->osxGetMute()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/media/jfxmediaimpl/platform/osx/OSXMediaPlayer;
    return v0
.end method

.method protected playerGetPresentationTime()D
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/media/jfxmedia/MediaException;
        }
    .end annotation

    .prologue
    .line 109
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/platform/osx/OSXMediaPlayer;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/media/jfxmediaimpl/platform/osx/OSXMediaPlayer;->osxGetPresentationTime()D

    move-result-wide v1

    move-wide v0, v1

    .end local v0    # "this":Lcom/sun/media/jfxmediaimpl/platform/osx/OSXMediaPlayer;
    return-wide v0
.end method

.method protected playerGetRate()F
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/media/jfxmedia/MediaException;
        }
    .end annotation

    .prologue
    .line 99
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/platform/osx/OSXMediaPlayer;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/media/jfxmediaimpl/platform/osx/OSXMediaPlayer;->osxGetRate()F

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/media/jfxmediaimpl/platform/osx/OSXMediaPlayer;
    return v0
.end method

.method protected playerGetVolume()F
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/media/jfxmedia/MediaException;
        }
    .end annotation

    .prologue
    .line 124
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/platform/osx/OSXMediaPlayer;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/media/jfxmediaimpl/platform/osx/OSXMediaPlayer;->osxGetVolume()F

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/media/jfxmediaimpl/platform/osx/OSXMediaPlayer;
    return v0
.end method

.method public playerInit()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/media/jfxmedia/MediaException;
        }
    .end annotation

    .prologue
    .line 164
    return-void
.end method

.method protected playerPause()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/media/jfxmedia/MediaException;
        }
    .end annotation

    .prologue
    .line 89
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/platform/osx/OSXMediaPlayer;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/media/jfxmediaimpl/platform/osx/OSXMediaPlayer;->osxPause()V

    .line 90
    return-void
.end method

.method protected playerPlay()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/media/jfxmedia/MediaException;
        }
    .end annotation

    .prologue
    .line 79
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/platform/osx/OSXMediaPlayer;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/media/jfxmediaimpl/platform/osx/OSXMediaPlayer;->osxPlay()V

    .line 80
    return-void
.end method

.method protected playerSeek(D)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/media/jfxmedia/MediaException;
        }
    .end annotation

    .prologue
    .line 154
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/platform/osx/OSXMediaPlayer;
    move-wide v1, p1

    .local v1, "streamTime":D
    move-object v3, v0

    move-wide v4, v1

    invoke-direct {v3, v4, v5}, Lcom/sun/media/jfxmediaimpl/platform/osx/OSXMediaPlayer;->osxSeek(D)V

    .line 155
    return-void
.end method

.method protected playerSetAudioSyncDelay(J)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/media/jfxmedia/MediaException;
        }
    .end annotation

    .prologue
    .line 74
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/platform/osx/OSXMediaPlayer;
    move-wide v1, p1

    .local v1, "delay":J
    move-object v3, v0

    move-wide v4, v1

    invoke-direct {v3, v4, v5}, Lcom/sun/media/jfxmediaimpl/platform/osx/OSXMediaPlayer;->osxSetAudioSyncDelay(J)V

    .line 75
    return-void
.end method

.method protected playerSetBalance(F)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/media/jfxmedia/MediaException;
        }
    .end annotation

    .prologue
    .line 139
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/platform/osx/OSXMediaPlayer;
    move v1, p1

    .local v1, "balance":F
    move-object v2, v0

    move v3, v1

    invoke-direct {v2, v3}, Lcom/sun/media/jfxmediaimpl/platform/osx/OSXMediaPlayer;->osxSetBalance(F)V

    .line 140
    return-void
.end method

.method protected playerSetMute(Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/media/jfxmedia/MediaException;
        }
    .end annotation

    .prologue
    .line 119
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/platform/osx/OSXMediaPlayer;
    move v1, p1

    .local v1, "state":Z
    move-object v2, v0

    move v3, v1

    invoke-direct {v2, v3}, Lcom/sun/media/jfxmediaimpl/platform/osx/OSXMediaPlayer;->osxSetMute(Z)V

    .line 120
    return-void
.end method

.method protected playerSetRate(F)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/media/jfxmedia/MediaException;
        }
    .end annotation

    .prologue
    .line 104
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/platform/osx/OSXMediaPlayer;
    move v1, p1

    .local v1, "rate":F
    move-object v2, v0

    move v3, v1

    invoke-direct {v2, v3}, Lcom/sun/media/jfxmediaimpl/platform/osx/OSXMediaPlayer;->osxSetRate(F)V

    .line 105
    return-void
.end method

.method protected playerSetVolume(F)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/media/jfxmedia/MediaException;
        }
    .end annotation

    .prologue
    .line 129
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/platform/osx/OSXMediaPlayer;
    move v1, p1

    .local v1, "volume":F
    move-object v2, v0

    move v3, v1

    invoke-direct {v2, v3}, Lcom/sun/media/jfxmediaimpl/platform/osx/OSXMediaPlayer;->osxSetVolume(F)V

    .line 130
    return-void
.end method

.method protected playerStop()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/media/jfxmedia/MediaException;
        }
    .end annotation

    .prologue
    .line 84
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/platform/osx/OSXMediaPlayer;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/media/jfxmediaimpl/platform/osx/OSXMediaPlayer;->osxStop()V

    .line 85
    return-void
.end method
