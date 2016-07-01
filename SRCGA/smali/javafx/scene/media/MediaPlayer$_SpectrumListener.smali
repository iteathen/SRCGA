.class Ljavafx/scene/media/MediaPlayer$_SpectrumListener;
.super Ljava/lang/Object;
.source "MediaPlayer.java"

# interfaces
.implements Lcom/sun/media/jfxmedia/events/AudioSpectrumListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/media/MediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "_SpectrumListener"
.end annotation


# instance fields
.field private magnitudes:[F

.field private phases:[F

.field final synthetic this$0:Ljavafx/scene/media/MediaPlayer;


# direct methods
.method private constructor <init>(Ljavafx/scene/media/MediaPlayer;)V
    .locals 4

    .prologue
    .line 2638
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaPlayer$_SpectrumListener;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/media/MediaPlayer$_SpectrumListener;->this$0:Ljavafx/scene/media/MediaPlayer;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ljavafx/scene/media/MediaPlayer;Ljavafx/scene/media/MediaPlayer$1;)V
    .locals 5

    .prologue
    .line 2638
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaPlayer$_SpectrumListener;
    move-object v1, p1

    .local v1, "x0":Ljavafx/scene/media/MediaPlayer;
    move-object v2, p2

    .local v2, "x1":Ljavafx/scene/media/MediaPlayer$1;
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Ljavafx/scene/media/MediaPlayer$_SpectrumListener;-><init>(Ljavafx/scene/media/MediaPlayer;)V

    return-void
.end method

.method static synthetic access$lambda$0(Ljavafx/scene/media/MediaPlayer$_SpectrumListener;Lcom/sun/media/jfxmedia/events/AudioSpectrumEvent;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljavafx/scene/media/MediaPlayer$_SpectrumListener;->lambda$onAudioSpectrumEvent$26(Lcom/sun/media/jfxmedia/events/AudioSpectrumEvent;)V

    return-void
.end method

.method private synthetic lambda$onAudioSpectrumEvent$26(Lcom/sun/media/jfxmedia/events/AudioSpectrumEvent;)V
    .locals 14

    .prologue
    .line 2644
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaPlayer$_SpectrumListener;
    move-object v1, p1

    .local v1, "evt":Lcom/sun/media/jfxmedia/events/AudioSpectrumEvent;
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/media/MediaPlayer$_SpectrumListener;->this$0:Ljavafx/scene/media/MediaPlayer;

    invoke-virtual {v3}, Ljavafx/scene/media/MediaPlayer;->getAudioSpectrumListener()Ljavafx/scene/media/AudioSpectrumListener;

    move-result-object v3

    move-object v2, v3

    .line 2645
    .local v2, "listener":Ljavafx/scene/media/AudioSpectrumListener;
    move-object v3, v2

    if-eqz v3, :cond_0

    .line 2646
    move-object v3, v2

    move-object v4, v1

    invoke-virtual {v4}, Lcom/sun/media/jfxmedia/events/AudioSpectrumEvent;->getTimestamp()D

    move-result-wide v4

    move-object v6, v1

    .line 2647
    invoke-virtual {v6}, Lcom/sun/media/jfxmedia/events/AudioSpectrumEvent;->getDuration()D

    move-result-wide v6

    move-object v8, v0

    move-object v9, v1

    .line 2648
    invoke-virtual {v9}, Lcom/sun/media/jfxmedia/events/AudioSpectrumEvent;->getSource()Lcom/sun/media/jfxmedia/effects/AudioSpectrum;

    move-result-object v9

    move-object v10, v0

    iget-object v10, v10, Ljavafx/scene/media/MediaPlayer$_SpectrumListener;->magnitudes:[F

    invoke-interface {v9, v10}, Lcom/sun/media/jfxmedia/effects/AudioSpectrum;->getMagnitudes([F)[F

    move-result-object v9

    move-object v12, v8

    move-object v13, v9

    move-object v8, v13

    move-object v9, v12

    move-object v10, v13

    iput-object v10, v9, Ljavafx/scene/media/MediaPlayer$_SpectrumListener;->magnitudes:[F

    move-object v9, v0

    move-object v10, v1

    .line 2649
    invoke-virtual {v10}, Lcom/sun/media/jfxmedia/events/AudioSpectrumEvent;->getSource()Lcom/sun/media/jfxmedia/effects/AudioSpectrum;

    move-result-object v10

    move-object v11, v0

    iget-object v11, v11, Ljavafx/scene/media/MediaPlayer$_SpectrumListener;->phases:[F

    invoke-interface {v10, v11}, Lcom/sun/media/jfxmedia/effects/AudioSpectrum;->getPhases([F)[F

    move-result-object v10

    move-object v12, v9

    move-object v13, v10

    move-object v9, v13

    move-object v10, v12

    move-object v11, v13

    iput-object v11, v10, Ljavafx/scene/media/MediaPlayer$_SpectrumListener;->phases:[F

    .line 2646
    invoke-interface/range {v3 .. v9}, Ljavafx/scene/media/AudioSpectrumListener;->spectrumDataUpdate(DD[F[F)V

    .line 2651
    :cond_0
    return-void
.end method


# virtual methods
.method public onAudioSpectrumEvent(Lcom/sun/media/jfxmedia/events/AudioSpectrumEvent;)V
    .locals 4

    .prologue
    .line 2643
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaPlayer$_SpectrumListener;
    move-object v1, p1

    .local v1, "evt":Lcom/sun/media/jfxmedia/events/AudioSpectrumEvent;
    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Ljavafx/scene/media/MediaPlayer$_SpectrumListener$$Lambda$1;->lambdaFactory$(Ljavafx/scene/media/MediaPlayer$_SpectrumListener;Lcom/sun/media/jfxmedia/events/AudioSpectrumEvent;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-static {v2}, Ljavafx/application/Platform;->runLater(Ljava/lang/Runnable;)V

    .line 2652
    return-void
.end method
