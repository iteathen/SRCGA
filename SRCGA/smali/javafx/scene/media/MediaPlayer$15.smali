.class Ljavafx/scene/media/MediaPlayer$15;
.super Ljavafx/beans/property/ObjectPropertyBase;
.source "MediaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/scene/media/MediaPlayer;->audioSpectrumListenerProperty()Ljavafx/beans/property/ObjectProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljavafx/beans/property/ObjectPropertyBase",
        "<",
        "Ljavafx/scene/media/AudioSpectrumListener;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/scene/media/MediaPlayer;


# direct methods
.method constructor <init>(Ljavafx/scene/media/MediaPlayer;)V
    .locals 4

    .prologue
    .line 2319
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaPlayer$15;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/media/MediaPlayer;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/media/MediaPlayer$15;->this$0:Ljavafx/scene/media/MediaPlayer;

    move-object v2, v0

    invoke-direct {v2}, Ljavafx/beans/property/ObjectPropertyBase;-><init>()V

    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 2337
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaPlayer$15;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/media/MediaPlayer$15;->this$0:Ljavafx/scene/media/MediaPlayer;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/media/MediaPlayer$15;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2342
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaPlayer$15;
    const-string v1, "audioSpectrumListener"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/media/MediaPlayer$15;
    return-object v0
.end method

.method protected invalidated()V
    .locals 7

    .prologue
    .line 2323
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaPlayer$15;
    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/media/MediaPlayer$15;->this$0:Ljavafx/scene/media/MediaPlayer;

    invoke-static {v4}, Ljavafx/scene/media/MediaPlayer;->access$1300(Ljavafx/scene/media/MediaPlayer;)Ljava/lang/Object;

    move-result-object v4

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    move-object v1, v5

    monitor-enter v4

    .line 2324
    move-object v4, v0

    :try_start_0
    iget-object v4, v4, Ljavafx/scene/media/MediaPlayer$15;->this$0:Ljavafx/scene/media/MediaPlayer;

    invoke-virtual {v4}, Ljavafx/scene/media/MediaPlayer;->getStatus()Ljavafx/scene/media/MediaPlayer$Status;

    move-result-object v4

    sget-object v5, Ljavafx/scene/media/MediaPlayer$Status;->DISPOSED:Ljavafx/scene/media/MediaPlayer$Status;

    if-eq v4, v5, :cond_0

    .line 2325
    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/media/MediaPlayer$15;->this$0:Ljavafx/scene/media/MediaPlayer;

    invoke-static {v4}, Ljavafx/scene/media/MediaPlayer;->access$1400(Ljavafx/scene/media/MediaPlayer;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2326
    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/media/MediaPlayer$15;->this$0:Ljavafx/scene/media/MediaPlayer;

    invoke-static {v4}, Ljavafx/scene/media/MediaPlayer;->access$3800(Ljavafx/scene/media/MediaPlayer;)Ljavafx/beans/property/ObjectProperty;

    move-result-object v4

    invoke-virtual {v4}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    :goto_0
    move v2, v4

    .line 2327
    .local v2, "enabled":Z
    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/media/MediaPlayer$15;->this$0:Ljavafx/scene/media/MediaPlayer;

    invoke-static {v4}, Ljavafx/scene/media/MediaPlayer;->access$1500(Ljavafx/scene/media/MediaPlayer;)Lcom/sun/media/jfxmedia/MediaPlayer;

    move-result-object v4

    invoke-interface {v4}, Lcom/sun/media/jfxmedia/MediaPlayer;->getAudioSpectrum()Lcom/sun/media/jfxmedia/effects/AudioSpectrum;

    move-result-object v4

    move v5, v2

    invoke-interface {v4, v5}, Lcom/sun/media/jfxmedia/effects/AudioSpectrum;->setEnabled(Z)V

    .line 2328
    .line 2332
    .end local v2    # "enabled":Z
    :cond_0
    :goto_1
    move-object v4, v1

    monitor-exit v4

    .line 2333
    return-void

    .line 2326
    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    .line 2329
    :cond_2
    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/media/MediaPlayer$15;->this$0:Ljavafx/scene/media/MediaPlayer;

    const/4 v5, 0x1

    invoke-static {v4, v5}, Ljavafx/scene/media/MediaPlayer;->access$3902(Ljavafx/scene/media/MediaPlayer;Z)Z

    move-result v4

    goto :goto_1

    .line 2332
    :catchall_0
    move-exception v4

    move-object v3, v4

    move-object v4, v1

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v4, v3

    throw v4
.end method
