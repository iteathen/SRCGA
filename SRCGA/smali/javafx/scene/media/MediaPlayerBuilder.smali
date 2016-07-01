.class public final Ljavafx/scene/media/MediaPlayerBuilder;
.super Ljava/lang/Object;
.source "MediaPlayerBuilder.java"

# interfaces
.implements Ljavafx/util/Builder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljavafx/util/Builder",
        "<",
        "Ljavafx/scene/media/MediaPlayer;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private __set:I

.field private audioSpectrumInterval:D

.field private audioSpectrumListener:Ljavafx/scene/media/AudioSpectrumListener;

.field private audioSpectrumNumBands:I

.field private audioSpectrumThreshold:I

.field private autoPlay:Z

.field private balance:D

.field private cycleCount:I

.field private media:Ljavafx/scene/media/Media;

.field private mute:Z

.field private onEndOfMedia:Ljava/lang/Runnable;

.field private onError:Ljava/lang/Runnable;

.field private onHalted:Ljava/lang/Runnable;

.field private onMarker:Ljavafx/event/EventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/scene/media/MediaMarkerEvent;",
            ">;"
        }
    .end annotation
.end field

.field private onPaused:Ljava/lang/Runnable;

.field private onPlaying:Ljava/lang/Runnable;

.field private onReady:Ljava/lang/Runnable;

.field private onRepeat:Ljava/lang/Runnable;

.field private onStalled:Ljava/lang/Runnable;

.field private onStopped:Ljava/lang/Runnable;

.field private rate:D

.field private startTime:Ljavafx/util/Duration;

.field private stopTime:Ljavafx/util/Duration;

.field private volume:D


# direct methods
.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaPlayerBuilder;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 38
    return-void
.end method

.method private __set(I)V
    .locals 7

    .prologue
    .line 48
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaPlayerBuilder;
    move v1, p1

    .local v1, "i":I
    move-object v2, v0

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    iget v3, v3, Ljavafx/scene/media/MediaPlayerBuilder;->__set:I

    const/4 v4, 0x1

    move v5, v1

    shl-int/2addr v4, v5

    or-int/2addr v3, v4

    iput v3, v2, Ljavafx/scene/media/MediaPlayerBuilder;->__set:I

    .line 49
    return-void
.end method

.method public static create()Ljavafx/scene/media/MediaPlayerBuilder;
    .locals 3

    .prologue
    .line 43
    new-instance v0, Ljavafx/scene/media/MediaPlayerBuilder;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljavafx/scene/media/MediaPlayerBuilder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public applyTo(Ljavafx/scene/media/MediaPlayer;)V
    .locals 8

    .prologue
    .line 51
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/media/MediaPlayerBuilder;
    move-object v2, p1

    .local v2, "x":Ljavafx/scene/media/MediaPlayer;
    move-object v5, v1

    iget v5, v5, Ljavafx/scene/media/MediaPlayerBuilder;->__set:I

    move v3, v5

    .line 52
    .local v3, "set":I
    :goto_0
    move v5, v3

    if-eqz v5, :cond_0

    .line 53
    move v5, v3

    invoke-static {v5}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v5

    move v4, v5

    .line 54
    .local v4, "i":I
    move v5, v3

    const/4 v6, 0x1

    move v7, v4

    shl-int/2addr v6, v7

    const/4 v7, -0x1

    xor-int/lit8 v6, v6, -0x1

    and-int/2addr v5, v6

    move v3, v5

    .line 55
    move v5, v4

    packed-switch v5, :pswitch_data_0

    .line 79
    :goto_1
    goto :goto_0

    .line 56
    :pswitch_0
    move-object v5, v2

    move-object v6, v1

    iget-wide v6, v6, Ljavafx/scene/media/MediaPlayerBuilder;->audioSpectrumInterval:D

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/media/MediaPlayer;->setAudioSpectrumInterval(D)V

    goto :goto_1

    .line 57
    :pswitch_1
    move-object v5, v2

    move-object v6, v1

    iget-object v6, v6, Ljavafx/scene/media/MediaPlayerBuilder;->audioSpectrumListener:Ljavafx/scene/media/AudioSpectrumListener;

    invoke-virtual {v5, v6}, Ljavafx/scene/media/MediaPlayer;->setAudioSpectrumListener(Ljavafx/scene/media/AudioSpectrumListener;)V

    goto :goto_1

    .line 58
    :pswitch_2
    move-object v5, v2

    move-object v6, v1

    iget v6, v6, Ljavafx/scene/media/MediaPlayerBuilder;->audioSpectrumNumBands:I

    invoke-virtual {v5, v6}, Ljavafx/scene/media/MediaPlayer;->setAudioSpectrumNumBands(I)V

    goto :goto_1

    .line 59
    :pswitch_3
    move-object v5, v2

    move-object v6, v1

    iget v6, v6, Ljavafx/scene/media/MediaPlayerBuilder;->audioSpectrumThreshold:I

    invoke-virtual {v5, v6}, Ljavafx/scene/media/MediaPlayer;->setAudioSpectrumThreshold(I)V

    goto :goto_1

    .line 60
    :pswitch_4
    move-object v5, v2

    move-object v6, v1

    iget-boolean v6, v6, Ljavafx/scene/media/MediaPlayerBuilder;->autoPlay:Z

    invoke-virtual {v5, v6}, Ljavafx/scene/media/MediaPlayer;->setAutoPlay(Z)V

    goto :goto_1

    .line 61
    :pswitch_5
    move-object v5, v2

    move-object v6, v1

    iget-wide v6, v6, Ljavafx/scene/media/MediaPlayerBuilder;->balance:D

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/media/MediaPlayer;->setBalance(D)V

    goto :goto_1

    .line 62
    :pswitch_6
    move-object v5, v2

    move-object v6, v1

    iget v6, v6, Ljavafx/scene/media/MediaPlayerBuilder;->cycleCount:I

    invoke-virtual {v5, v6}, Ljavafx/scene/media/MediaPlayer;->setCycleCount(I)V

    goto :goto_1

    .line 63
    :pswitch_7
    move-object v5, v2

    move-object v6, v1

    iget-boolean v6, v6, Ljavafx/scene/media/MediaPlayerBuilder;->mute:Z

    invoke-virtual {v5, v6}, Ljavafx/scene/media/MediaPlayer;->setMute(Z)V

    goto :goto_1

    .line 64
    :pswitch_8
    move-object v5, v2

    move-object v6, v1

    iget-object v6, v6, Ljavafx/scene/media/MediaPlayerBuilder;->onEndOfMedia:Ljava/lang/Runnable;

    invoke-virtual {v5, v6}, Ljavafx/scene/media/MediaPlayer;->setOnEndOfMedia(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 65
    :pswitch_9
    move-object v5, v2

    move-object v6, v1

    iget-object v6, v6, Ljavafx/scene/media/MediaPlayerBuilder;->onError:Ljava/lang/Runnable;

    invoke-virtual {v5, v6}, Ljavafx/scene/media/MediaPlayer;->setOnError(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 66
    :pswitch_a
    move-object v5, v2

    move-object v6, v1

    iget-object v6, v6, Ljavafx/scene/media/MediaPlayerBuilder;->onHalted:Ljava/lang/Runnable;

    invoke-virtual {v5, v6}, Ljavafx/scene/media/MediaPlayer;->setOnHalted(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 67
    :pswitch_b
    move-object v5, v2

    move-object v6, v1

    iget-object v6, v6, Ljavafx/scene/media/MediaPlayerBuilder;->onMarker:Ljavafx/event/EventHandler;

    invoke-virtual {v5, v6}, Ljavafx/scene/media/MediaPlayer;->setOnMarker(Ljavafx/event/EventHandler;)V

    goto :goto_1

    .line 68
    :pswitch_c
    move-object v5, v2

    move-object v6, v1

    iget-object v6, v6, Ljavafx/scene/media/MediaPlayerBuilder;->onPaused:Ljava/lang/Runnable;

    invoke-virtual {v5, v6}, Ljavafx/scene/media/MediaPlayer;->setOnPaused(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 69
    :pswitch_d
    move-object v5, v2

    move-object v6, v1

    iget-object v6, v6, Ljavafx/scene/media/MediaPlayerBuilder;->onPlaying:Ljava/lang/Runnable;

    invoke-virtual {v5, v6}, Ljavafx/scene/media/MediaPlayer;->setOnPlaying(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 70
    :pswitch_e
    move-object v5, v2

    move-object v6, v1

    iget-object v6, v6, Ljavafx/scene/media/MediaPlayerBuilder;->onReady:Ljava/lang/Runnable;

    invoke-virtual {v5, v6}, Ljavafx/scene/media/MediaPlayer;->setOnReady(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 71
    :pswitch_f
    move-object v5, v2

    move-object v6, v1

    iget-object v6, v6, Ljavafx/scene/media/MediaPlayerBuilder;->onRepeat:Ljava/lang/Runnable;

    invoke-virtual {v5, v6}, Ljavafx/scene/media/MediaPlayer;->setOnRepeat(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 72
    :pswitch_10
    move-object v5, v2

    move-object v6, v1

    iget-object v6, v6, Ljavafx/scene/media/MediaPlayerBuilder;->onStalled:Ljava/lang/Runnable;

    invoke-virtual {v5, v6}, Ljavafx/scene/media/MediaPlayer;->setOnStalled(Ljava/lang/Runnable;)V

    goto/16 :goto_1

    .line 73
    :pswitch_11
    move-object v5, v2

    move-object v6, v1

    iget-object v6, v6, Ljavafx/scene/media/MediaPlayerBuilder;->onStopped:Ljava/lang/Runnable;

    invoke-virtual {v5, v6}, Ljavafx/scene/media/MediaPlayer;->setOnStopped(Ljava/lang/Runnable;)V

    goto/16 :goto_1

    .line 74
    :pswitch_12
    move-object v5, v2

    move-object v6, v1

    iget-wide v6, v6, Ljavafx/scene/media/MediaPlayerBuilder;->rate:D

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/media/MediaPlayer;->setRate(D)V

    goto/16 :goto_1

    .line 75
    :pswitch_13
    move-object v5, v2

    move-object v6, v1

    iget-object v6, v6, Ljavafx/scene/media/MediaPlayerBuilder;->startTime:Ljavafx/util/Duration;

    invoke-virtual {v5, v6}, Ljavafx/scene/media/MediaPlayer;->setStartTime(Ljavafx/util/Duration;)V

    goto/16 :goto_1

    .line 76
    :pswitch_14
    move-object v5, v2

    move-object v6, v1

    iget-object v6, v6, Ljavafx/scene/media/MediaPlayerBuilder;->stopTime:Ljavafx/util/Duration;

    invoke-virtual {v5, v6}, Ljavafx/scene/media/MediaPlayer;->setStopTime(Ljavafx/util/Duration;)V

    goto/16 :goto_1

    .line 77
    :pswitch_15
    move-object v5, v2

    move-object v6, v1

    iget-wide v6, v6, Ljavafx/scene/media/MediaPlayerBuilder;->volume:D

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/media/MediaPlayer;->setVolume(D)V

    goto/16 :goto_1

    .line 80
    .end local v4    # "i":I
    :cond_0
    return-void

    .line 55
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
    .end packed-switch
.end method

.method public audioSpectrumInterval(D)Ljavafx/scene/media/MediaPlayerBuilder;
    .locals 7

    .prologue
    .line 87
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaPlayerBuilder;
    move-wide v1, p1

    .local v1, "x":D
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Ljavafx/scene/media/MediaPlayerBuilder;->audioSpectrumInterval:D

    .line 88
    move-object v3, v0

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Ljavafx/scene/media/MediaPlayerBuilder;->__set(I)V

    .line 89
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Ljavafx/scene/media/MediaPlayerBuilder;
    return-object v0
.end method

.method public audioSpectrumListener(Ljavafx/scene/media/AudioSpectrumListener;)Ljavafx/scene/media/MediaPlayerBuilder;
    .locals 4

    .prologue
    .line 97
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaPlayerBuilder;
    move-object v1, p1

    .local v1, "x":Ljavafx/scene/media/AudioSpectrumListener;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/media/MediaPlayerBuilder;->audioSpectrumListener:Ljavafx/scene/media/AudioSpectrumListener;

    .line 98
    move-object v2, v0

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljavafx/scene/media/MediaPlayerBuilder;->__set(I)V

    .line 99
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/media/MediaPlayerBuilder;
    return-object v0
.end method

.method public audioSpectrumNumBands(I)Ljavafx/scene/media/MediaPlayerBuilder;
    .locals 4

    .prologue
    .line 107
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaPlayerBuilder;
    move v1, p1

    .local v1, "x":I
    move-object v2, v0

    move v3, v1

    iput v3, v2, Ljavafx/scene/media/MediaPlayerBuilder;->audioSpectrumNumBands:I

    .line 108
    move-object v2, v0

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Ljavafx/scene/media/MediaPlayerBuilder;->__set(I)V

    .line 109
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/media/MediaPlayerBuilder;
    return-object v0
.end method

.method public audioSpectrumThreshold(I)Ljavafx/scene/media/MediaPlayerBuilder;
    .locals 4

    .prologue
    .line 117
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaPlayerBuilder;
    move v1, p1

    .local v1, "x":I
    move-object v2, v0

    move v3, v1

    iput v3, v2, Ljavafx/scene/media/MediaPlayerBuilder;->audioSpectrumThreshold:I

    .line 118
    move-object v2, v0

    const/4 v3, 0x3

    invoke-direct {v2, v3}, Ljavafx/scene/media/MediaPlayerBuilder;->__set(I)V

    .line 119
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/media/MediaPlayerBuilder;
    return-object v0
.end method

.method public autoPlay(Z)Ljavafx/scene/media/MediaPlayerBuilder;
    .locals 4

    .prologue
    .line 127
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaPlayerBuilder;
    move v1, p1

    .local v1, "x":Z
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Ljavafx/scene/media/MediaPlayerBuilder;->autoPlay:Z

    .line 128
    move-object v2, v0

    const/4 v3, 0x4

    invoke-direct {v2, v3}, Ljavafx/scene/media/MediaPlayerBuilder;->__set(I)V

    .line 129
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/media/MediaPlayerBuilder;
    return-object v0
.end method

.method public balance(D)Ljavafx/scene/media/MediaPlayerBuilder;
    .locals 7

    .prologue
    .line 137
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaPlayerBuilder;
    move-wide v1, p1

    .local v1, "x":D
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Ljavafx/scene/media/MediaPlayerBuilder;->balance:D

    .line 138
    move-object v3, v0

    const/4 v4, 0x5

    invoke-direct {v3, v4}, Ljavafx/scene/media/MediaPlayerBuilder;->__set(I)V

    .line 139
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Ljavafx/scene/media/MediaPlayerBuilder;
    return-object v0
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaPlayerBuilder;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/media/MediaPlayerBuilder;->build()Ljavafx/scene/media/MediaPlayer;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/media/MediaPlayerBuilder;
    return-object v0
.end method

.method public build()Ljavafx/scene/media/MediaPlayer;
    .locals 6

    .prologue
    .line 315
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaPlayerBuilder;
    new-instance v2, Ljavafx/scene/media/MediaPlayer;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/media/MediaPlayerBuilder;->media:Ljavafx/scene/media/Media;

    invoke-direct {v3, v4}, Ljavafx/scene/media/MediaPlayer;-><init>(Ljavafx/scene/media/Media;)V

    move-object v1, v2

    .line 316
    .local v1, "x":Ljavafx/scene/media/MediaPlayer;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/scene/media/MediaPlayerBuilder;->applyTo(Ljavafx/scene/media/MediaPlayer;)V

    .line 317
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/media/MediaPlayerBuilder;
    return-object v0
.end method

.method public cycleCount(I)Ljavafx/scene/media/MediaPlayerBuilder;
    .locals 4

    .prologue
    .line 147
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaPlayerBuilder;
    move v1, p1

    .local v1, "x":I
    move-object v2, v0

    move v3, v1

    iput v3, v2, Ljavafx/scene/media/MediaPlayerBuilder;->cycleCount:I

    .line 148
    move-object v2, v0

    const/4 v3, 0x6

    invoke-direct {v2, v3}, Ljavafx/scene/media/MediaPlayerBuilder;->__set(I)V

    .line 149
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/media/MediaPlayerBuilder;
    return-object v0
.end method

.method public media(Ljavafx/scene/media/Media;)Ljavafx/scene/media/MediaPlayerBuilder;
    .locals 4

    .prologue
    .line 157
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaPlayerBuilder;
    move-object v1, p1

    .local v1, "x":Ljavafx/scene/media/Media;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/media/MediaPlayerBuilder;->media:Ljavafx/scene/media/Media;

    .line 158
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/media/MediaPlayerBuilder;
    return-object v0
.end method

.method public mute(Z)Ljavafx/scene/media/MediaPlayerBuilder;
    .locals 4

    .prologue
    .line 166
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaPlayerBuilder;
    move v1, p1

    .local v1, "x":Z
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Ljavafx/scene/media/MediaPlayerBuilder;->mute:Z

    .line 167
    move-object v2, v0

    const/4 v3, 0x7

    invoke-direct {v2, v3}, Ljavafx/scene/media/MediaPlayerBuilder;->__set(I)V

    .line 168
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/media/MediaPlayerBuilder;
    return-object v0
.end method

.method public onEndOfMedia(Ljava/lang/Runnable;)Ljavafx/scene/media/MediaPlayerBuilder;
    .locals 4

    .prologue
    .line 176
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaPlayerBuilder;
    move-object v1, p1

    .local v1, "x":Ljava/lang/Runnable;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/media/MediaPlayerBuilder;->onEndOfMedia:Ljava/lang/Runnable;

    .line 177
    move-object v2, v0

    const/16 v3, 0x8

    invoke-direct {v2, v3}, Ljavafx/scene/media/MediaPlayerBuilder;->__set(I)V

    .line 178
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/media/MediaPlayerBuilder;
    return-object v0
.end method

.method public onError(Ljava/lang/Runnable;)Ljavafx/scene/media/MediaPlayerBuilder;
    .locals 4

    .prologue
    .line 186
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaPlayerBuilder;
    move-object v1, p1

    .local v1, "x":Ljava/lang/Runnable;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/media/MediaPlayerBuilder;->onError:Ljava/lang/Runnable;

    .line 187
    move-object v2, v0

    const/16 v3, 0x9

    invoke-direct {v2, v3}, Ljavafx/scene/media/MediaPlayerBuilder;->__set(I)V

    .line 188
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/media/MediaPlayerBuilder;
    return-object v0
.end method

.method public onHalted(Ljava/lang/Runnable;)Ljavafx/scene/media/MediaPlayerBuilder;
    .locals 4

    .prologue
    .line 196
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaPlayerBuilder;
    move-object v1, p1

    .local v1, "x":Ljava/lang/Runnable;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/media/MediaPlayerBuilder;->onHalted:Ljava/lang/Runnable;

    .line 197
    move-object v2, v0

    const/16 v3, 0xa

    invoke-direct {v2, v3}, Ljavafx/scene/media/MediaPlayerBuilder;->__set(I)V

    .line 198
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/media/MediaPlayerBuilder;
    return-object v0
.end method

.method public onMarker(Ljavafx/event/EventHandler;)Ljavafx/scene/media/MediaPlayerBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/scene/media/MediaMarkerEvent;",
            ">;)",
            "Ljavafx/scene/media/MediaPlayerBuilder;"
        }
    .end annotation

    .prologue
    .line 206
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaPlayerBuilder;
    move-object v1, p1

    .local v1, "x":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<Ljavafx/scene/media/MediaMarkerEvent;>;"
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/media/MediaPlayerBuilder;->onMarker:Ljavafx/event/EventHandler;

    .line 207
    move-object v2, v0

    const/16 v3, 0xb

    invoke-direct {v2, v3}, Ljavafx/scene/media/MediaPlayerBuilder;->__set(I)V

    .line 208
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/media/MediaPlayerBuilder;
    return-object v0
.end method

.method public onPaused(Ljava/lang/Runnable;)Ljavafx/scene/media/MediaPlayerBuilder;
    .locals 4

    .prologue
    .line 216
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaPlayerBuilder;
    move-object v1, p1

    .local v1, "x":Ljava/lang/Runnable;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/media/MediaPlayerBuilder;->onPaused:Ljava/lang/Runnable;

    .line 217
    move-object v2, v0

    const/16 v3, 0xc

    invoke-direct {v2, v3}, Ljavafx/scene/media/MediaPlayerBuilder;->__set(I)V

    .line 218
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/media/MediaPlayerBuilder;
    return-object v0
.end method

.method public onPlaying(Ljava/lang/Runnable;)Ljavafx/scene/media/MediaPlayerBuilder;
    .locals 4

    .prologue
    .line 226
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaPlayerBuilder;
    move-object v1, p1

    .local v1, "x":Ljava/lang/Runnable;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/media/MediaPlayerBuilder;->onPlaying:Ljava/lang/Runnable;

    .line 227
    move-object v2, v0

    const/16 v3, 0xd

    invoke-direct {v2, v3}, Ljavafx/scene/media/MediaPlayerBuilder;->__set(I)V

    .line 228
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/media/MediaPlayerBuilder;
    return-object v0
.end method

.method public onReady(Ljava/lang/Runnable;)Ljavafx/scene/media/MediaPlayerBuilder;
    .locals 4

    .prologue
    .line 236
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaPlayerBuilder;
    move-object v1, p1

    .local v1, "x":Ljava/lang/Runnable;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/media/MediaPlayerBuilder;->onReady:Ljava/lang/Runnable;

    .line 237
    move-object v2, v0

    const/16 v3, 0xe

    invoke-direct {v2, v3}, Ljavafx/scene/media/MediaPlayerBuilder;->__set(I)V

    .line 238
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/media/MediaPlayerBuilder;
    return-object v0
.end method

.method public onRepeat(Ljava/lang/Runnable;)Ljavafx/scene/media/MediaPlayerBuilder;
    .locals 4

    .prologue
    .line 246
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaPlayerBuilder;
    move-object v1, p1

    .local v1, "x":Ljava/lang/Runnable;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/media/MediaPlayerBuilder;->onRepeat:Ljava/lang/Runnable;

    .line 247
    move-object v2, v0

    const/16 v3, 0xf

    invoke-direct {v2, v3}, Ljavafx/scene/media/MediaPlayerBuilder;->__set(I)V

    .line 248
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/media/MediaPlayerBuilder;
    return-object v0
.end method

.method public onStalled(Ljava/lang/Runnable;)Ljavafx/scene/media/MediaPlayerBuilder;
    .locals 4

    .prologue
    .line 256
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaPlayerBuilder;
    move-object v1, p1

    .local v1, "x":Ljava/lang/Runnable;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/media/MediaPlayerBuilder;->onStalled:Ljava/lang/Runnable;

    .line 257
    move-object v2, v0

    const/16 v3, 0x10

    invoke-direct {v2, v3}, Ljavafx/scene/media/MediaPlayerBuilder;->__set(I)V

    .line 258
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/media/MediaPlayerBuilder;
    return-object v0
.end method

.method public onStopped(Ljava/lang/Runnable;)Ljavafx/scene/media/MediaPlayerBuilder;
    .locals 4

    .prologue
    .line 266
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaPlayerBuilder;
    move-object v1, p1

    .local v1, "x":Ljava/lang/Runnable;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/media/MediaPlayerBuilder;->onStopped:Ljava/lang/Runnable;

    .line 267
    move-object v2, v0

    const/16 v3, 0x11

    invoke-direct {v2, v3}, Ljavafx/scene/media/MediaPlayerBuilder;->__set(I)V

    .line 268
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/media/MediaPlayerBuilder;
    return-object v0
.end method

.method public rate(D)Ljavafx/scene/media/MediaPlayerBuilder;
    .locals 7

    .prologue
    .line 276
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaPlayerBuilder;
    move-wide v1, p1

    .local v1, "x":D
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Ljavafx/scene/media/MediaPlayerBuilder;->rate:D

    .line 277
    move-object v3, v0

    const/16 v4, 0x12

    invoke-direct {v3, v4}, Ljavafx/scene/media/MediaPlayerBuilder;->__set(I)V

    .line 278
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Ljavafx/scene/media/MediaPlayerBuilder;
    return-object v0
.end method

.method public startTime(Ljavafx/util/Duration;)Ljavafx/scene/media/MediaPlayerBuilder;
    .locals 4

    .prologue
    .line 286
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaPlayerBuilder;
    move-object v1, p1

    .local v1, "x":Ljavafx/util/Duration;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/media/MediaPlayerBuilder;->startTime:Ljavafx/util/Duration;

    .line 287
    move-object v2, v0

    const/16 v3, 0x13

    invoke-direct {v2, v3}, Ljavafx/scene/media/MediaPlayerBuilder;->__set(I)V

    .line 288
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/media/MediaPlayerBuilder;
    return-object v0
.end method

.method public stopTime(Ljavafx/util/Duration;)Ljavafx/scene/media/MediaPlayerBuilder;
    .locals 4

    .prologue
    .line 296
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaPlayerBuilder;
    move-object v1, p1

    .local v1, "x":Ljavafx/util/Duration;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/media/MediaPlayerBuilder;->stopTime:Ljavafx/util/Duration;

    .line 297
    move-object v2, v0

    const/16 v3, 0x14

    invoke-direct {v2, v3}, Ljavafx/scene/media/MediaPlayerBuilder;->__set(I)V

    .line 298
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/media/MediaPlayerBuilder;
    return-object v0
.end method

.method public volume(D)Ljavafx/scene/media/MediaPlayerBuilder;
    .locals 7

    .prologue
    .line 306
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaPlayerBuilder;
    move-wide v1, p1

    .local v1, "x":D
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Ljavafx/scene/media/MediaPlayerBuilder;->volume:D

    .line 307
    move-object v3, v0

    const/16 v4, 0x15

    invoke-direct {v3, v4}, Ljavafx/scene/media/MediaPlayerBuilder;->__set(I)V

    .line 308
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Ljavafx/scene/media/MediaPlayerBuilder;
    return-object v0
.end method
