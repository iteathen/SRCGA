.class Ljavafx/scene/media/MediaPlayer$9;
.super Ljavafx/beans/property/ReadOnlyObjectWrapper;
.source "MediaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/scene/media/MediaPlayer;->statusPropertyImpl()Ljavafx/beans/property/ReadOnlyObjectWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljavafx/beans/property/ReadOnlyObjectWrapper",
        "<",
        "Ljavafx/scene/media/MediaPlayer$Status;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/scene/media/MediaPlayer;


# direct methods
.method constructor <init>(Ljavafx/scene/media/MediaPlayer;)V
    .locals 4

    .prologue
    .line 1455
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaPlayer$9;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/media/MediaPlayer;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/media/MediaPlayer$9;->this$0:Ljavafx/scene/media/MediaPlayer;

    move-object v2, v0

    invoke-direct {v2}, Ljavafx/beans/property/ReadOnlyObjectWrapper;-><init>()V

    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 1492
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaPlayer$9;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/media/MediaPlayer$9;->this$0:Ljavafx/scene/media/MediaPlayer;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/media/MediaPlayer$9;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1497
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaPlayer$9;
    const-string v1, "status"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/media/MediaPlayer$9;
    return-object v0
.end method

.method protected invalidated()V
    .locals 4

    .prologue
    .line 1460
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaPlayer$9;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/media/MediaPlayer$9;->get()Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Ljavafx/scene/media/MediaPlayer$Status;->PLAYING:Ljavafx/scene/media/MediaPlayer$Status;

    if-ne v1, v2, :cond_1

    .line 1461
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/media/MediaPlayer$9;->this$0:Ljavafx/scene/media/MediaPlayer;

    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/media/MediaPlayer$9;->this$0:Ljavafx/scene/media/MediaPlayer;

    invoke-virtual {v2}, Ljavafx/scene/media/MediaPlayer;->getRate()D

    move-result-wide v2

    invoke-static {v1, v2, v3}, Ljavafx/scene/media/MediaPlayer;->access$2900(Ljavafx/scene/media/MediaPlayer;D)V

    .line 1467
    :goto_0
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/media/MediaPlayer$9;->get()Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Ljavafx/scene/media/MediaPlayer$Status;->READY:Ljavafx/scene/media/MediaPlayer$Status;

    if-ne v1, v2, :cond_2

    .line 1468
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/media/MediaPlayer$9;->this$0:Ljavafx/scene/media/MediaPlayer;

    invoke-virtual {v1}, Ljavafx/scene/media/MediaPlayer;->getOnReady()Ljava/lang/Runnable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1469
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/media/MediaPlayer$9;->this$0:Ljavafx/scene/media/MediaPlayer;

    invoke-virtual {v1}, Ljavafx/scene/media/MediaPlayer;->getOnReady()Ljava/lang/Runnable;

    move-result-object v1

    invoke-static {v1}, Ljavafx/application/Platform;->runLater(Ljava/lang/Runnable;)V

    .line 1488
    :cond_0
    :goto_1
    return-void

    .line 1463
    :cond_1
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/media/MediaPlayer$9;->this$0:Ljavafx/scene/media/MediaPlayer;

    const-wide/16 v2, 0x0

    invoke-static {v1, v2, v3}, Ljavafx/scene/media/MediaPlayer;->access$2900(Ljavafx/scene/media/MediaPlayer;D)V

    goto :goto_0

    .line 1471
    :cond_2
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/media/MediaPlayer$9;->get()Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Ljavafx/scene/media/MediaPlayer$Status;->PLAYING:Ljavafx/scene/media/MediaPlayer$Status;

    if-ne v1, v2, :cond_3

    .line 1472
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/media/MediaPlayer$9;->this$0:Ljavafx/scene/media/MediaPlayer;

    invoke-virtual {v1}, Ljavafx/scene/media/MediaPlayer;->getOnPlaying()Ljava/lang/Runnable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1473
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/media/MediaPlayer$9;->this$0:Ljavafx/scene/media/MediaPlayer;

    invoke-virtual {v1}, Ljavafx/scene/media/MediaPlayer;->getOnPlaying()Ljava/lang/Runnable;

    move-result-object v1

    invoke-static {v1}, Ljavafx/application/Platform;->runLater(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 1475
    :cond_3
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/media/MediaPlayer$9;->get()Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Ljavafx/scene/media/MediaPlayer$Status;->PAUSED:Ljavafx/scene/media/MediaPlayer$Status;

    if-ne v1, v2, :cond_4

    .line 1476
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/media/MediaPlayer$9;->this$0:Ljavafx/scene/media/MediaPlayer;

    invoke-virtual {v1}, Ljavafx/scene/media/MediaPlayer;->getOnPaused()Ljava/lang/Runnable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1477
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/media/MediaPlayer$9;->this$0:Ljavafx/scene/media/MediaPlayer;

    invoke-virtual {v1}, Ljavafx/scene/media/MediaPlayer;->getOnPaused()Ljava/lang/Runnable;

    move-result-object v1

    invoke-static {v1}, Ljavafx/application/Platform;->runLater(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 1479
    :cond_4
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/media/MediaPlayer$9;->get()Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Ljavafx/scene/media/MediaPlayer$Status;->STOPPED:Ljavafx/scene/media/MediaPlayer$Status;

    if-ne v1, v2, :cond_5

    .line 1480
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/media/MediaPlayer$9;->this$0:Ljavafx/scene/media/MediaPlayer;

    invoke-virtual {v1}, Ljavafx/scene/media/MediaPlayer;->getOnStopped()Ljava/lang/Runnable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1481
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/media/MediaPlayer$9;->this$0:Ljavafx/scene/media/MediaPlayer;

    invoke-virtual {v1}, Ljavafx/scene/media/MediaPlayer;->getOnStopped()Ljava/lang/Runnable;

    move-result-object v1

    invoke-static {v1}, Ljavafx/application/Platform;->runLater(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 1483
    :cond_5
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/media/MediaPlayer$9;->get()Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Ljavafx/scene/media/MediaPlayer$Status;->STALLED:Ljavafx/scene/media/MediaPlayer$Status;

    if-ne v1, v2, :cond_0

    .line 1484
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/media/MediaPlayer$9;->this$0:Ljavafx/scene/media/MediaPlayer;

    invoke-virtual {v1}, Ljavafx/scene/media/MediaPlayer;->getOnStalled()Ljava/lang/Runnable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1485
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/media/MediaPlayer$9;->this$0:Ljavafx/scene/media/MediaPlayer;

    invoke-virtual {v1}, Ljavafx/scene/media/MediaPlayer;->getOnStalled()Ljava/lang/Runnable;

    move-result-object v1

    invoke-static {v1}, Ljavafx/application/Platform;->runLater(Ljava/lang/Runnable;)V

    goto :goto_1
.end method
