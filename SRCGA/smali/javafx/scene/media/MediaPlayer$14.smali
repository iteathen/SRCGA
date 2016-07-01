.class Ljavafx/scene/media/MediaPlayer$14;
.super Ljavafx/beans/property/IntegerPropertyBase;
.source "MediaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/scene/media/MediaPlayer;->audioSpectrumThresholdProperty()Ljavafx/beans/property/IntegerProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/scene/media/MediaPlayer;


# direct methods
.method constructor <init>(Ljavafx/scene/media/MediaPlayer;I)V
    .locals 5

    .prologue
    .line 2260
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaPlayer$14;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/media/MediaPlayer;
    move v2, p2

    .local v2, "x0":I
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Ljavafx/scene/media/MediaPlayer$14;->this$0:Ljavafx/scene/media/MediaPlayer;

    move-object v3, v0

    move v4, v2

    invoke-direct {v3, v4}, Ljavafx/beans/property/IntegerPropertyBase;-><init>(I)V

    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 2277
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaPlayer$14;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/media/MediaPlayer$14;->this$0:Ljavafx/scene/media/MediaPlayer;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/media/MediaPlayer$14;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2282
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaPlayer$14;
    const-string v1, "audioSpectrumThreshold"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/media/MediaPlayer$14;
    return-object v0
.end method

.method protected invalidated()V
    .locals 8

    .prologue
    .line 2264
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaPlayer$14;
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/media/MediaPlayer$14;->this$0:Ljavafx/scene/media/MediaPlayer;

    invoke-static {v3}, Ljavafx/scene/media/MediaPlayer;->access$1300(Ljavafx/scene/media/MediaPlayer;)Ljava/lang/Object;

    move-result-object v3

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v1, v4

    monitor-enter v3

    .line 2265
    move-object v3, v0

    :try_start_0
    iget-object v3, v3, Ljavafx/scene/media/MediaPlayer$14;->this$0:Ljavafx/scene/media/MediaPlayer;

    invoke-virtual {v3}, Ljavafx/scene/media/MediaPlayer;->getStatus()Ljavafx/scene/media/MediaPlayer$Status;

    move-result-object v3

    sget-object v4, Ljavafx/scene/media/MediaPlayer$Status;->DISPOSED:Ljavafx/scene/media/MediaPlayer$Status;

    if-eq v3, v4, :cond_0

    .line 2266
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/media/MediaPlayer$14;->this$0:Ljavafx/scene/media/MediaPlayer;

    invoke-static {v3}, Ljavafx/scene/media/MediaPlayer;->access$1400(Ljavafx/scene/media/MediaPlayer;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2267
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/media/MediaPlayer$14;->this$0:Ljavafx/scene/media/MediaPlayer;

    invoke-static {v3}, Ljavafx/scene/media/MediaPlayer;->access$1500(Ljavafx/scene/media/MediaPlayer;)Lcom/sun/media/jfxmedia/MediaPlayer;

    move-result-object v3

    invoke-interface {v3}, Lcom/sun/media/jfxmedia/MediaPlayer;->getAudioSpectrum()Lcom/sun/media/jfxmedia/effects/AudioSpectrum;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/media/MediaPlayer$14;->this$0:Ljavafx/scene/media/MediaPlayer;

    invoke-static {v4}, Ljavafx/scene/media/MediaPlayer;->access$3600(Ljavafx/scene/media/MediaPlayer;)Ljavafx/beans/property/IntegerProperty;

    move-result-object v4

    invoke-virtual {v4}, Ljavafx/beans/property/IntegerProperty;->get()I

    move-result v4

    const/high16 v5, -0x80000000

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Ljavafx/scene/media/MediaPlayer;->access$3200(III)I

    move-result v4

    invoke-interface {v3, v4}, Lcom/sun/media/jfxmedia/effects/AudioSpectrum;->setSensitivityThreshold(I)V

    .line 2272
    :cond_0
    :goto_0
    move-object v3, v1

    monitor-exit v3

    .line 2273
    return-void

    .line 2269
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/media/MediaPlayer$14;->this$0:Ljavafx/scene/media/MediaPlayer;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Ljavafx/scene/media/MediaPlayer;->access$3702(Ljavafx/scene/media/MediaPlayer;Z)Z

    move-result v3

    goto :goto_0

    .line 2272
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
