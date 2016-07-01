.class Ljavafx/scene/media/MediaPlayer$13;
.super Ljavafx/beans/property/DoublePropertyBase;
.source "MediaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/scene/media/MediaPlayer;->audioSpectrumIntervalProperty()Ljavafx/beans/property/DoubleProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/scene/media/MediaPlayer;


# direct methods
.method constructor <init>(Ljavafx/scene/media/MediaPlayer;D)V
    .locals 8

    .prologue
    .line 2205
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaPlayer$13;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/media/MediaPlayer;
    move-wide v2, p2

    .local v2, "x0":D
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Ljavafx/scene/media/MediaPlayer$13;->this$0:Ljavafx/scene/media/MediaPlayer;

    move-object v4, v0

    move-wide v5, v2

    invoke-direct {v4, v5, v6}, Ljavafx/beans/property/DoublePropertyBase;-><init>(D)V

    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 2222
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaPlayer$13;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/media/MediaPlayer$13;->this$0:Ljavafx/scene/media/MediaPlayer;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/media/MediaPlayer$13;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2227
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaPlayer$13;
    const-string v1, "audioSpectrumInterval"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/media/MediaPlayer$13;
    return-object v0
.end method

.method protected invalidated()V
    .locals 11

    .prologue
    .line 2209
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaPlayer$13;
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/media/MediaPlayer$13;->this$0:Ljavafx/scene/media/MediaPlayer;

    invoke-static {v3}, Ljavafx/scene/media/MediaPlayer;->access$1300(Ljavafx/scene/media/MediaPlayer;)Ljava/lang/Object;

    move-result-object v3

    move-object v10, v3

    move-object v3, v10

    move-object v4, v10

    move-object v1, v4

    monitor-enter v3

    .line 2210
    move-object v3, v0

    :try_start_0
    iget-object v3, v3, Ljavafx/scene/media/MediaPlayer$13;->this$0:Ljavafx/scene/media/MediaPlayer;

    invoke-virtual {v3}, Ljavafx/scene/media/MediaPlayer;->getStatus()Ljavafx/scene/media/MediaPlayer$Status;

    move-result-object v3

    sget-object v4, Ljavafx/scene/media/MediaPlayer$Status;->DISPOSED:Ljavafx/scene/media/MediaPlayer$Status;

    if-eq v3, v4, :cond_0

    .line 2211
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/media/MediaPlayer$13;->this$0:Ljavafx/scene/media/MediaPlayer;

    invoke-static {v3}, Ljavafx/scene/media/MediaPlayer;->access$1400(Ljavafx/scene/media/MediaPlayer;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2212
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/media/MediaPlayer$13;->this$0:Ljavafx/scene/media/MediaPlayer;

    invoke-static {v3}, Ljavafx/scene/media/MediaPlayer;->access$1500(Ljavafx/scene/media/MediaPlayer;)Lcom/sun/media/jfxmedia/MediaPlayer;

    move-result-object v3

    invoke-interface {v3}, Lcom/sun/media/jfxmedia/MediaPlayer;->getAudioSpectrum()Lcom/sun/media/jfxmedia/effects/AudioSpectrum;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/media/MediaPlayer$13;->this$0:Ljavafx/scene/media/MediaPlayer;

    invoke-static {v4}, Ljavafx/scene/media/MediaPlayer;->access$3400(Ljavafx/scene/media/MediaPlayer;)Ljavafx/beans/property/DoubleProperty;

    move-result-object v4

    invoke-virtual {v4}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v4

    const-wide v6, 0x3e112e0be826d695L    # 1.0E-9

    const-wide v8, 0x7fefffffffffffffL    # Double.MAX_VALUE

    invoke-static/range {v4 .. v9}, Ljavafx/scene/media/MediaPlayer;->access$1700(DDD)D

    move-result-wide v4

    invoke-interface {v3, v4, v5}, Lcom/sun/media/jfxmedia/effects/AudioSpectrum;->setInterval(D)V

    .line 2217
    :cond_0
    :goto_0
    move-object v3, v1

    monitor-exit v3

    .line 2218
    return-void

    .line 2214
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/media/MediaPlayer$13;->this$0:Ljavafx/scene/media/MediaPlayer;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Ljavafx/scene/media/MediaPlayer;->access$3502(Ljavafx/scene/media/MediaPlayer;Z)Z

    move-result v3

    goto :goto_0

    .line 2217
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
