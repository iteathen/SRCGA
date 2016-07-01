.class Ljavafx/scene/media/MediaPlayer$_BufferListener;
.super Ljava/lang/Object;
.source "MediaPlayer.java"

# interfaces
.implements Lcom/sun/media/jfxmedia/events/BufferListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/media/MediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "_BufferListener"
.end annotation


# instance fields
.field bufferedTime:D

.field final synthetic this$0:Ljavafx/scene/media/MediaPlayer;


# direct methods
.method private constructor <init>(Ljavafx/scene/media/MediaPlayer;)V
    .locals 4

    .prologue
    .line 2616
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaPlayer$_BufferListener;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/media/MediaPlayer$_BufferListener;->this$0:Ljavafx/scene/media/MediaPlayer;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ljavafx/scene/media/MediaPlayer;Ljavafx/scene/media/MediaPlayer$1;)V
    .locals 5

    .prologue
    .line 2616
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaPlayer$_BufferListener;
    move-object v1, p1

    .local v1, "x0":Ljavafx/scene/media/MediaPlayer;
    move-object v2, p2

    .local v2, "x1":Ljavafx/scene/media/MediaPlayer$1;
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Ljavafx/scene/media/MediaPlayer$_BufferListener;-><init>(Ljavafx/scene/media/MediaPlayer;)V

    return-void
.end method

.method static synthetic access$lambda$0(Ljavafx/scene/media/MediaPlayer$_BufferListener;)V
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/media/MediaPlayer$_BufferListener;->lambda$onBufferProgress$25()V

    return-void
.end method

.method private synthetic lambda$onBufferProgress$25()V
    .locals 4

    .prologue
    .line 2629
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaPlayer$_BufferListener;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/media/MediaPlayer$_BufferListener;->this$0:Ljavafx/scene/media/MediaPlayer;

    move-object v2, v0

    iget-wide v2, v2, Ljavafx/scene/media/MediaPlayer$_BufferListener;->bufferedTime:D

    invoke-static {v2, v3}, Ljavafx/util/Duration;->millis(D)Ljavafx/util/Duration;

    move-result-object v2

    invoke-static {v1, v2}, Ljavafx/scene/media/MediaPlayer;->access$4900(Ljavafx/scene/media/MediaPlayer;Ljavafx/util/Duration;)V

    .line 2630
    return-void
.end method


# virtual methods
.method public onBufferProgress(Lcom/sun/media/jfxmedia/events/BufferProgressEvent;)V
    .locals 11

    .prologue
    .line 2621
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaPlayer$_BufferListener;
    move-object v1, p1

    .local v1, "evt":Lcom/sun/media/jfxmedia/events/BufferProgressEvent;
    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/media/MediaPlayer$_BufferListener;->this$0:Ljavafx/scene/media/MediaPlayer;

    invoke-static {v6}, Ljavafx/scene/media/MediaPlayer;->access$4600(Ljavafx/scene/media/MediaPlayer;)Ljavafx/scene/media/Media;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 2622
    move-object v6, v1

    invoke-virtual {v6}, Lcom/sun/media/jfxmedia/events/BufferProgressEvent;->getDuration()D

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmpl-double v6, v6, v8

    if-lez v6, :cond_1

    .line 2623
    move-object v6, v1

    invoke-virtual {v6}, Lcom/sun/media/jfxmedia/events/BufferProgressEvent;->getBufferPosition()J

    move-result-wide v6

    long-to-double v6, v6

    move-wide v2, v6

    .line 2624
    .local v2, "position":D
    move-object v6, v1

    invoke-virtual {v6}, Lcom/sun/media/jfxmedia/events/BufferProgressEvent;->getBufferStop()J

    move-result-wide v6

    long-to-double v6, v6

    move-wide v4, v6

    .line 2625
    .local v4, "stop":D
    move-object v6, v0

    move-wide v7, v2

    move-wide v9, v4

    div-double/2addr v7, v9

    move-object v9, v1

    invoke-virtual {v9}, Lcom/sun/media/jfxmedia/events/BufferProgressEvent;->getDuration()D

    move-result-wide v9

    mul-double/2addr v7, v9

    const-wide v9, 0x408f400000000000L    # 1000.0

    mul-double/2addr v7, v9

    iput-wide v7, v6, Ljavafx/scene/media/MediaPlayer$_BufferListener;->bufferedTime:D

    .line 2626
    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/media/MediaPlayer$_BufferListener;->this$0:Ljavafx/scene/media/MediaPlayer;

    const/4 v7, 0x0

    invoke-static {v6, v7}, Ljavafx/scene/media/MediaPlayer;->access$4802(Ljavafx/scene/media/MediaPlayer;Lcom/sun/media/jfxmedia/events/BufferProgressEvent;)Lcom/sun/media/jfxmedia/events/BufferProgressEvent;

    move-result-object v6

    .line 2628
    move-object v6, v0

    invoke-static {v6}, Ljavafx/scene/media/MediaPlayer$_BufferListener$$Lambda$1;->lambdaFactory$(Ljavafx/scene/media/MediaPlayer$_BufferListener;)Ljava/lang/Runnable;

    move-result-object v6

    invoke-static {v6}, Ljavafx/application/Platform;->runLater(Ljava/lang/Runnable;)V

    .line 2631
    .line 2635
    .end local v2    # "position":D
    .end local v4    # "stop":D
    :cond_0
    :goto_0
    return-void

    .line 2632
    :cond_1
    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/media/MediaPlayer$_BufferListener;->this$0:Ljavafx/scene/media/MediaPlayer;

    move-object v7, v1

    invoke-static {v6, v7}, Ljavafx/scene/media/MediaPlayer;->access$4802(Ljavafx/scene/media/MediaPlayer;Lcom/sun/media/jfxmedia/events/BufferProgressEvent;)Lcom/sun/media/jfxmedia/events/BufferProgressEvent;

    move-result-object v6

    goto :goto_0
.end method
