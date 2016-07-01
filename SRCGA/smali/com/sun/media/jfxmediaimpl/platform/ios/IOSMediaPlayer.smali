.class public final Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMediaPlayer;
.super Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;
.source "IOSMediaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMediaPlayer$NullEQBand;,
        Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMediaPlayer$NullAudioSpectrum;,
        Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMediaPlayer$NullAudioEQ;
    }
.end annotation


# instance fields
.field private final audioEqualizer:Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMediaPlayer$NullAudioEQ;

.field private final audioSpectrum:Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMediaPlayer$NullAudioSpectrum;

.field private iosMedia:Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMedia;

.field private muteEnabled:Z

.field private mutedVolume:F


# direct methods
.method constructor <init>(Lcom/sun/media/jfxmedia/locator/Locator;)V
    .locals 7

    .prologue
    .line 66
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMediaPlayer;
    move-object v1, p1

    .local v1, "source":Lcom/sun/media/jfxmedia/locator/Locator;
    move-object v2, v0

    new-instance v3, Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMedia;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v1

    invoke-direct {v4, v5}, Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMedia;-><init>(Lcom/sun/media/jfxmedia/locator/Locator;)V

    invoke-direct {v2, v3}, Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMediaPlayer;-><init>(Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMedia;)V

    .line 67
    return-void
.end method

.method private constructor <init>(Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMedia;)V
    .locals 7

    .prologue
    .line 53
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMediaPlayer;
    move-object v1, p1

    .local v1, "sourceMedia":Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMedia;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;-><init>(Lcom/sun/media/jfxmediaimpl/NativeMedia;)V

    .line 49
    move-object v2, v0

    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, v2, Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMediaPlayer;->mutedVolume:F

    .line 54
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMediaPlayer;->iosMedia:Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMedia;

    .line 57
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMediaPlayer;->init()V

    .line 59
    move-object v2, v0

    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMediaPlayer;->iosMedia:Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMedia;

    invoke-virtual {v4}, Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMedia;->getNativeMediaRef()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMediaPlayer;->iosInitPlayer(J)I

    move-result v3

    invoke-direct {v2, v3}, Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMediaPlayer;->handleError(I)V

    .line 61
    move-object v2, v0

    new-instance v3, Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMediaPlayer$NullAudioEQ;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMediaPlayer$NullAudioEQ;-><init>(Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMediaPlayer$1;)V

    iput-object v3, v2, Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMediaPlayer;->audioEqualizer:Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMediaPlayer$NullAudioEQ;

    .line 62
    move-object v2, v0

    new-instance v3, Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMediaPlayer$NullAudioSpectrum;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMediaPlayer$NullAudioSpectrum;-><init>(Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMediaPlayer$1;)V

    iput-object v3, v2, Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMediaPlayer;->audioSpectrum:Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMediaPlayer$NullAudioSpectrum;

    .line 63
    return-void
.end method

.method private handleError(I)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/media/jfxmedia/MediaException;
        }
    .end annotation

    .prologue
    .line 80
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMediaPlayer;
    move v1, p1

    .local v1, "err":I
    const/4 v3, 0x0

    move v4, v1

    if-eq v3, v4, :cond_0

    .line 81
    move v3, v1

    invoke-static {v3}, Lcom/sun/media/jfxmedia/MediaError;->getFromCode(I)Lcom/sun/media/jfxmedia/MediaError;

    move-result-object v3

    move-object v2, v3

    .line 82
    .local v2, "me":Lcom/sun/media/jfxmedia/MediaError;
    new-instance v3, Lcom/sun/media/jfxmedia/MediaException;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    const-string v5, "Media error occurred"

    const/4 v6, 0x0

    move-object v7, v2

    invoke-direct {v4, v5, v6, v7}, Lcom/sun/media/jfxmedia/MediaException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lcom/sun/media/jfxmedia/MediaError;)V

    throw v3

    .line 84
    .end local v2    # "me":Lcom/sun/media/jfxmedia/MediaError;
    :cond_0
    return-void
.end method

.method private native iosDispose(J)V
.end method

.method private native iosFinish(J)I
.end method

.method private native iosGetAudioSyncDelay(J[J)I
.end method

.method private native iosGetBalance(J[F)I
.end method

.method private native iosGetDuration(J[D)I
.end method

.method private native iosGetPresentationTime(J[D)I
.end method

.method private native iosGetRate(J[F)I
.end method

.method private native iosGetVolume(J[F)I
.end method

.method private native iosInitPlayer(J)I
.end method

.method private native iosPause(J)I
.end method

.method private native iosPlay(J)I
.end method

.method private native iosSeek(JD)I
.end method

.method private native iosSetAudioSyncDelay(JJ)I
.end method

.method private native iosSetBalance(JF)I
.end method

.method private native iosSetOverlayHeight(JD)I
.end method

.method private native iosSetOverlayOpacity(JD)I
.end method

.method private native iosSetOverlayPreserveRatio(JZ)I
.end method

.method private native iosSetOverlayTransform(JDDDDDDDDDDDD)I
.end method

.method private native iosSetOverlayVisible(JZ)I
.end method

.method private native iosSetOverlayWidth(JD)I
.end method

.method private native iosSetOverlayX(JD)I
.end method

.method private native iosSetOverlayY(JD)I
.end method

.method private native iosSetRate(JF)I
.end method

.method private native iosSetVolume(JF)I
.end method

.method private native iosStop(J)I
.end method


# virtual methods
.method public getAudioSpectrum()Lcom/sun/media/jfxmedia/effects/AudioSpectrum;
    .locals 2

    .prologue
    .line 76
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMediaPlayer;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMediaPlayer;->audioSpectrum:Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMediaPlayer$NullAudioSpectrum;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMediaPlayer;
    return-object v0
.end method

.method public getEqualizer()Lcom/sun/media/jfxmedia/effects/AudioEqualizer;
    .locals 2

    .prologue
    .line 71
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMediaPlayer;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMediaPlayer;->audioEqualizer:Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMediaPlayer$NullAudioEQ;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMediaPlayer;
    return-object v0
.end method

.method protected playerDispose()V
    .locals 4

    .prologue
    .line 220
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMediaPlayer;
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMediaPlayer;->iosMedia:Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMedia;

    invoke-virtual {v2}, Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMedia;->getNativeMediaRef()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMediaPlayer;->iosDispose(J)V

    .line 221
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMediaPlayer;->iosMedia:Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMedia;

    .line 222
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
    .line 215
    move-object v1, p0

    .local v1, "this":Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMediaPlayer;
    move-object v2, v1

    move-object v3, v1

    move-object v4, v1

    iget-object v4, v4, Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMediaPlayer;->iosMedia:Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMedia;

    invoke-virtual {v4}, Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMedia;->getNativeMediaRef()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMediaPlayer;->iosFinish(J)I

    move-result v3

    invoke-direct {v2, v3}, Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMediaPlayer;->handleError(I)V

    .line 216
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
    .line 88
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMediaPlayer;
    const/4 v2, 0x1

    new-array v2, v2, [J

    move-object v1, v2

    .line 89
    .local v1, "audioSyncDelay":[J
    move-object v2, v0

    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMediaPlayer;->iosMedia:Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMedia;

    invoke-virtual {v4}, Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMedia;->getNativeMediaRef()J

    move-result-wide v4

    move-object v6, v1

    invoke-direct {v3, v4, v5, v6}, Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMediaPlayer;->iosGetAudioSyncDelay(J[J)I

    move-result v3

    invoke-direct {v2, v3}, Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMediaPlayer;->handleError(I)V

    .line 90
    move-object v2, v1

    const/4 v3, 0x0

    aget-wide v2, v2, v3

    move-wide v0, v2

    .end local v0    # "this":Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMediaPlayer;
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
    .line 181
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMediaPlayer;
    const/4 v2, 0x1

    new-array v2, v2, [F

    move-object v1, v2

    .line 182
    .local v1, "balance":[F
    move-object v2, v0

    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMediaPlayer;->iosMedia:Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMedia;

    invoke-virtual {v4}, Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMedia;->getNativeMediaRef()J

    move-result-wide v4

    move-object v6, v1

    invoke-direct {v3, v4, v5, v6}, Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMediaPlayer;->iosGetBalance(J[F)I

    move-result v3

    invoke-direct {v2, v3}, Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMediaPlayer;->handleError(I)V

    .line 183
    move-object v2, v1

    const/4 v3, 0x0

    aget v2, v2, v3

    move v0, v2

    .end local v0    # "this":Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMediaPlayer;
    return v0
.end method

.method protected playerGetDuration()D
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/media/jfxmedia/MediaException;
        }
    .end annotation

    .prologue
    .line 193
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMediaPlayer;
    const/4 v4, 0x1

    new-array v4, v4, [D

    move-object v1, v4

    .line 194
    .local v1, "durationArr":[D
    move-object v4, v0

    move-object v5, v0

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMediaPlayer;->iosMedia:Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMedia;

    invoke-virtual {v6}, Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMedia;->getNativeMediaRef()J

    move-result-wide v6

    move-object v8, v1

    invoke-direct {v5, v6, v7, v8}, Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMediaPlayer;->iosGetDuration(J[D)I

    move-result v5

    invoke-direct {v4, v5}, Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMediaPlayer;->handleError(I)V

    .line 196
    move-object v4, v1

    const/4 v5, 0x0

    aget-wide v4, v4, v5

    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    cmpl-double v4, v4, v6

    if-nez v4, :cond_0

    .line 197
    const-wide/high16 v4, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    move-wide v2, v4

    .line 201
    .local v2, "duration":D
    :goto_0
    move-wide v4, v2

    move-wide v0, v4

    .end local v0    # "this":Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMediaPlayer;
    return-wide v0

    .line 199
    .end local v2    # "duration":D
    .restart local v0    # "this":Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMediaPlayer;
    :cond_0
    move-object v4, v1

    const/4 v5, 0x0

    aget-wide v4, v4, v5

    move-wide v2, v4

    .restart local v2    # "duration":D
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
    .line 134
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMediaPlayer;
    move-object v1, v0

    iget-boolean v1, v1, Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMediaPlayer;->muteEnabled:Z

    move v0, v1

    .end local v0    # "this":Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMediaPlayer;
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
    .line 127
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMediaPlayer;
    const/4 v2, 0x1

    new-array v2, v2, [D

    move-object v1, v2

    .line 128
    .local v1, "presentationTime":[D
    move-object v2, v0

    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMediaPlayer;->iosMedia:Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMedia;

    invoke-virtual {v4}, Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMedia;->getNativeMediaRef()J

    move-result-wide v4

    move-object v6, v1

    invoke-direct {v3, v4, v5, v6}, Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMediaPlayer;->iosGetPresentationTime(J[D)I

    move-result v3

    invoke-direct {v2, v3}, Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMediaPlayer;->handleError(I)V

    .line 129
    move-object v2, v1

    const/4 v3, 0x0

    aget-wide v2, v2, v3

    move-wide v0, v2

    .end local v0    # "this":Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMediaPlayer;
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
    .line 115
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMediaPlayer;
    const/4 v2, 0x1

    new-array v2, v2, [F

    move-object v1, v2

    .line 116
    .local v1, "rate":[F
    move-object v2, v0

    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMediaPlayer;->iosMedia:Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMedia;

    invoke-virtual {v4}, Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMedia;->getNativeMediaRef()J

    move-result-wide v4

    move-object v6, v1

    invoke-direct {v3, v4, v5, v6}, Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMediaPlayer;->iosGetRate(J[F)I

    move-result v3

    invoke-direct {v2, v3}, Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMediaPlayer;->handleError(I)V

    .line 117
    move-object v2, v1

    const/4 v3, 0x0

    aget v2, v2, v3

    move v0, v2

    .end local v0    # "this":Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMediaPlayer;
    return v0
.end method

.method protected playerGetVolume()F
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/media/jfxmedia/MediaException;
        }
    .end annotation

    .prologue
    .line 155
    move-object v1, p0

    .local v1, "this":Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMediaPlayer;
    move-object v4, v1

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v2, v5

    monitor-enter v4

    .line 156
    move-object v4, v1

    :try_start_0
    iget-boolean v4, v4, Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMediaPlayer;->muteEnabled:Z

    if-eqz v4, :cond_0

    .line 157
    move-object v4, v1

    iget v4, v4, Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMediaPlayer;->mutedVolume:F

    move-object v5, v2

    monitor-exit v5

    move v1, v4

    .line 162
    .end local v1    # "this":Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMediaPlayer;
    .local v2, "volume":[F
    :goto_0
    return v1

    .line 159
    .end local v2    # "volume":[F
    .restart local v1    # "this":Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMediaPlayer;
    :cond_0
    move-object v4, v2

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 160
    const/4 v4, 0x1

    new-array v4, v4, [F

    move-object v2, v4

    .line 161
    .restart local v2    # "volume":[F
    move-object v4, v1

    move-object v5, v1

    move-object v6, v1

    iget-object v6, v6, Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMediaPlayer;->iosMedia:Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMedia;

    invoke-virtual {v6}, Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMedia;->getNativeMediaRef()J

    move-result-wide v6

    move-object v8, v2

    invoke-direct {v5, v6, v7, v8}, Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMediaPlayer;->iosGetVolume(J[F)I

    move-result v5

    invoke-direct {v4, v5}, Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMediaPlayer;->handleError(I)V

    .line 162
    move-object v4, v2

    const/4 v5, 0x0

    aget v4, v4, v5

    move v1, v4

    goto :goto_0

    .line 159
    .end local v2    # "volume":[F
    :catchall_0
    move-exception v4

    move-object v3, v4

    move-object v4, v2

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v4, v3

    throw v4
.end method

.method protected playerInit()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/media/jfxmedia/MediaException;
        }
    .end annotation

    .prologue
    .line 211
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
    .line 110
    move-object v1, p0

    .local v1, "this":Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMediaPlayer;
    move-object v2, v1

    move-object v3, v1

    move-object v4, v1

    iget-object v4, v4, Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMediaPlayer;->iosMedia:Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMedia;

    invoke-virtual {v4}, Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMedia;->getNativeMediaRef()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMediaPlayer;->iosPause(J)I

    move-result v3

    invoke-direct {v2, v3}, Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMediaPlayer;->handleError(I)V

    .line 111
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
    .line 100
    move-object v1, p0

    .local v1, "this":Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMediaPlayer;
    move-object v2, v1

    move-object v3, v1

    move-object v4, v1

    iget-object v4, v4, Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMediaPlayer;->iosMedia:Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMedia;

    invoke-virtual {v4}, Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMedia;->getNativeMediaRef()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMediaPlayer;->iosPlay(J)I

    move-result v3

    invoke-direct {v2, v3}, Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMediaPlayer;->handleError(I)V

    .line 101
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
    .line 206
    move-object v1, p0

    .local v1, "this":Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMediaPlayer;
    move-wide v2, p1

    .local v2, "streamTime":D
    move-object v4, v1

    move-object v5, v1

    move-object v6, v1

    iget-object v6, v6, Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMediaPlayer;->iosMedia:Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMedia;

    invoke-virtual {v6}, Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMedia;->getNativeMediaRef()J

    move-result-wide v6

    move-wide v8, v2

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMediaPlayer;->iosSeek(JD)I

    move-result v5

    invoke-direct {v4, v5}, Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMediaPlayer;->handleError(I)V

    .line 207
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

    .local v1, "this":Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMediaPlayer;
    move-wide v2, p1

    .local v2, "delay":J
    move-object v4, v1

    move-object v5, v1

    move-object v6, v1

    iget-object v6, v6, Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMediaPlayer;->iosMedia:Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMedia;

    invoke-virtual {v6}, Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMedia;->getNativeMediaRef()J

    move-result-wide v6

    move-wide v8, v2

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMediaPlayer;->iosSetAudioSyncDelay(JJ)I

    move-result v5

    invoke-direct {v4, v5}, Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMediaPlayer;->handleError(I)V

    .line 96
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
    .line 188
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMediaPlayer;
    move v1, p1

    .local v1, "balance":F
    move-object v2, v0

    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMediaPlayer;->iosMedia:Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMedia;

    invoke-virtual {v4}, Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMedia;->getNativeMediaRef()J

    move-result-wide v4

    move v6, v1

    invoke-direct {v3, v4, v5, v6}, Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMediaPlayer;->iosSetBalance(JF)I

    move-result v3

    invoke-direct {v2, v3}, Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMediaPlayer;->handleError(I)V

    .line 189
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
    .line 139
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMediaPlayer;
    move v1, p1

    .local v1, "enable":Z
    move-object v5, p0

    monitor-enter v5

    move v3, v1

    move-object v4, v0

    :try_start_0
    iget-boolean v4, v4, Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMediaPlayer;->muteEnabled:Z

    if-eq v3, v4, :cond_0

    .line 140
    move v3, v1

    if-eqz v3, :cond_1

    .line 141
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMediaPlayer;->getVolume()F

    move-result v3

    move v2, v3

    .line 142
    .local v2, "currentVolume":F
    move-object v3, v0

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMediaPlayer;->playerSetVolume(F)V

    .line 143
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMediaPlayer;->muteEnabled:Z

    .line 144
    move-object v3, v0

    move v4, v2

    iput v4, v3, Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMediaPlayer;->mutedVolume:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 145
    .line 151
    .end local v2    # "currentVolume":F
    :cond_0
    :goto_0
    monitor-exit v5

    return-void

    .line 147
    :cond_1
    move-object v3, v0

    const/4 v4, 0x0

    :try_start_1
    iput-boolean v4, v3, Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMediaPlayer;->muteEnabled:Z

    .line 148
    move-object v3, v0

    move-object v4, v0

    iget v4, v4, Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMediaPlayer;->mutedVolume:F

    invoke-virtual {v3, v4}, Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMediaPlayer;->playerSetVolume(F)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 139
    :catchall_0
    move-exception v0

    monitor-exit v5

    .end local v0    # "this":Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMediaPlayer;
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
    .line 122
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMediaPlayer;
    move v1, p1

    .local v1, "rate":F
    move-object v2, v0

    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMediaPlayer;->iosMedia:Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMedia;

    invoke-virtual {v4}, Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMedia;->getNativeMediaRef()J

    move-result-wide v4

    move v6, v1

    invoke-direct {v3, v4, v5, v6}, Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMediaPlayer;->iosSetRate(JF)I

    move-result v3

    invoke-direct {v2, v3}, Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMediaPlayer;->handleError(I)V

    .line 123
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
    .line 167
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMediaPlayer;
    move v1, p1

    .local v1, "volume":F
    move-object v7, p0

    monitor-enter v7

    move-object v3, v0

    :try_start_0
    iget-boolean v3, v3, Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMediaPlayer;->muteEnabled:Z

    if-nez v3, :cond_1

    .line 168
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMediaPlayer;->iosMedia:Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMedia;

    invoke-virtual {v4}, Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMedia;->getNativeMediaRef()J

    move-result-wide v4

    move v6, v1

    invoke-direct {v3, v4, v5, v6}, Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMediaPlayer;->iosSetVolume(JF)I

    move-result v3

    move v2, v3

    .line 169
    .local v2, "err":I
    const/4 v3, 0x0

    move v4, v2

    if-eq v3, v4, :cond_0

    .line 170
    move-object v3, v0

    move v4, v2

    invoke-direct {v3, v4}, Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMediaPlayer;->handleError(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 174
    .line 177
    .end local v2    # "err":I
    :goto_0
    monitor-exit v7

    return-void

    .line 172
    .restart local v2    # "err":I
    :cond_0
    move-object v3, v0

    move v4, v1

    :try_start_1
    iput v4, v3, Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMediaPlayer;->mutedVolume:F
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 167
    .end local v2    # "err":I
    :catchall_0
    move-exception v0

    monitor-exit v7

    .end local v0    # "this":Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMediaPlayer;
    throw v0

    .line 175
    .restart local v0    # "this":Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMediaPlayer;
    :cond_1
    move-object v3, v0

    move v4, v1

    :try_start_2
    iput v4, v3, Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMediaPlayer;->mutedVolume:F
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
    .line 105
    move-object v1, p0

    .local v1, "this":Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMediaPlayer;
    move-object v2, v1

    move-object v3, v1

    move-object v4, v1

    iget-object v4, v4, Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMediaPlayer;->iosMedia:Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMedia;

    invoke-virtual {v4}, Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMedia;->getNativeMediaRef()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMediaPlayer;->iosStop(J)I

    move-result v3

    invoke-direct {v2, v3}, Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMediaPlayer;->handleError(I)V

    .line 106
    return-void
.end method

.method public setOverlayHeight(D)V
    .locals 11

    .prologue
    .line 241
    move-object v1, p0

    .local v1, "this":Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMediaPlayer;
    move-wide v2, p1

    .local v2, "height":D
    move-object v4, v1

    move-object v5, v1

    move-object v6, v1

    iget-object v6, v6, Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMediaPlayer;->iosMedia:Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMedia;

    invoke-virtual {v6}, Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMedia;->getNativeMediaRef()J

    move-result-wide v6

    move-wide v8, v2

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMediaPlayer;->iosSetOverlayHeight(JD)I

    move-result v5

    invoke-direct {v4, v5}, Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMediaPlayer;->handleError(I)V

    .line 242
    return-void
.end method

.method public setOverlayOpacity(D)V
    .locals 11

    .prologue
    .line 249
    move-object v1, p0

    .local v1, "this":Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMediaPlayer;
    move-wide v2, p1

    .local v2, "opacity":D
    move-object v4, v1

    move-object v5, v1

    move-object v6, v1

    iget-object v6, v6, Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMediaPlayer;->iosMedia:Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMedia;

    invoke-virtual {v6}, Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMedia;->getNativeMediaRef()J

    move-result-wide v6

    move-wide v8, v2

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMediaPlayer;->iosSetOverlayOpacity(JD)I

    move-result v5

    invoke-direct {v4, v5}, Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMediaPlayer;->handleError(I)V

    .line 250
    return-void
.end method

.method public setOverlayPreserveRatio(Z)V
    .locals 7

    .prologue
    .line 245
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMediaPlayer;
    move v1, p1

    .local v1, "preserveRatio":Z
    move-object v2, v0

    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMediaPlayer;->iosMedia:Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMedia;

    invoke-virtual {v4}, Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMedia;->getNativeMediaRef()J

    move-result-wide v4

    move v6, v1

    invoke-direct {v3, v4, v5, v6}, Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMediaPlayer;->iosSetOverlayPreserveRatio(JZ)I

    move-result v3

    invoke-direct {v2, v3}, Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMediaPlayer;->handleError(I)V

    .line 246
    return-void
.end method

.method public setOverlayTransform(DDDDDDDDDDDD)V
    .locals 55

    .prologue
    .line 256
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMediaPlayer;
    move-wide/from16 v2, p1

    .local v2, "mxx":D
    move-wide/from16 v4, p3

    .local v4, "mxy":D
    move-wide/from16 v6, p5

    .local v6, "mxz":D
    move-wide/from16 v8, p7

    .local v8, "mxt":D
    move-wide/from16 v10, p9

    .local v10, "myx":D
    move-wide/from16 v12, p11

    .local v12, "myy":D
    move-wide/from16 v14, p13

    .local v14, "myz":D
    move-wide/from16 v16, p15

    .local v16, "myt":D
    move-wide/from16 v18, p17

    .local v18, "mzx":D
    move-wide/from16 v20, p19

    .local v20, "mzy":D
    move-wide/from16 v22, p21

    .local v22, "mzz":D
    move-wide/from16 v24, p23

    .local v24, "mzt":D
    move-object/from16 v26, v1

    move-object/from16 v27, v1

    move-object/from16 v28, v1

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMediaPlayer;->iosMedia:Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMedia;

    move-object/from16 v28, v0

    .line 257
    invoke-virtual/range {v28 .. v28}, Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMedia;->getNativeMediaRef()J

    move-result-wide v28

    move-wide/from16 v30, v2

    move-wide/from16 v32, v4

    move-wide/from16 v34, v6

    move-wide/from16 v36, v8

    move-wide/from16 v38, v10

    move-wide/from16 v40, v12

    move-wide/from16 v42, v14

    move-wide/from16 v44, v16

    move-wide/from16 v46, v18

    move-wide/from16 v48, v20

    move-wide/from16 v50, v22

    move-wide/from16 v52, v24

    .line 256
    invoke-direct/range {v27 .. v53}, Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMediaPlayer;->iosSetOverlayTransform(JDDDDDDDDDDDD)I

    move-result v27

    invoke-direct/range {v26 .. v27}, Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMediaPlayer;->handleError(I)V

    .line 261
    return-void
.end method

.method public setOverlayVisible(Z)V
    .locals 7

    .prologue
    .line 233
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMediaPlayer;
    move v1, p1

    .local v1, "visible":Z
    move-object v2, v0

    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMediaPlayer;->iosMedia:Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMedia;

    invoke-virtual {v4}, Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMedia;->getNativeMediaRef()J

    move-result-wide v4

    move v6, v1

    invoke-direct {v3, v4, v5, v6}, Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMediaPlayer;->iosSetOverlayVisible(JZ)I

    move-result v3

    invoke-direct {v2, v3}, Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMediaPlayer;->handleError(I)V

    .line 234
    return-void
.end method

.method public setOverlayWidth(D)V
    .locals 11

    .prologue
    .line 237
    move-object v1, p0

    .local v1, "this":Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMediaPlayer;
    move-wide v2, p1

    .local v2, "width":D
    move-object v4, v1

    move-object v5, v1

    move-object v6, v1

    iget-object v6, v6, Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMediaPlayer;->iosMedia:Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMedia;

    invoke-virtual {v6}, Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMedia;->getNativeMediaRef()J

    move-result-wide v6

    move-wide v8, v2

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMediaPlayer;->iosSetOverlayWidth(JD)I

    move-result v5

    invoke-direct {v4, v5}, Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMediaPlayer;->handleError(I)V

    .line 238
    return-void
.end method

.method public setOverlayX(D)V
    .locals 11

    .prologue
    .line 225
    move-object v1, p0

    .local v1, "this":Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMediaPlayer;
    move-wide v2, p1

    .local v2, "x":D
    move-object v4, v1

    move-object v5, v1

    move-object v6, v1

    iget-object v6, v6, Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMediaPlayer;->iosMedia:Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMedia;

    invoke-virtual {v6}, Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMedia;->getNativeMediaRef()J

    move-result-wide v6

    move-wide v8, v2

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMediaPlayer;->iosSetOverlayX(JD)I

    move-result v5

    invoke-direct {v4, v5}, Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMediaPlayer;->handleError(I)V

    .line 226
    return-void
.end method

.method public setOverlayY(D)V
    .locals 11

    .prologue
    .line 229
    move-object v1, p0

    .local v1, "this":Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMediaPlayer;
    move-wide v2, p1

    .local v2, "y":D
    move-object v4, v1

    move-object v5, v1

    move-object v6, v1

    iget-object v6, v6, Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMediaPlayer;->iosMedia:Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMedia;

    invoke-virtual {v6}, Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMedia;->getNativeMediaRef()J

    move-result-wide v6

    move-wide v8, v2

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMediaPlayer;->iosSetOverlayY(JD)I

    move-result v5

    invoke-direct {v4, v5}, Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMediaPlayer;->handleError(I)V

    .line 230
    return-void
.end method
