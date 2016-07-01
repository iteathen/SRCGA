.class Ljavafx/scene/media/MediaPlayer$_VideoTrackSizeListener;
.super Ljava/lang/Object;
.source "MediaPlayer.java"

# interfaces
.implements Lcom/sun/media/jfxmedia/events/VideoTrackSizeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/media/MediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "_VideoTrackSizeListener"
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/scene/media/MediaPlayer;

.field trackHeight:I

.field trackWidth:I


# direct methods
.method private constructor <init>(Ljavafx/scene/media/MediaPlayer;)V
    .locals 4

    .prologue
    .line 2577
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaPlayer$_VideoTrackSizeListener;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/media/MediaPlayer$_VideoTrackSizeListener;->this$0:Ljavafx/scene/media/MediaPlayer;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ljavafx/scene/media/MediaPlayer;Ljavafx/scene/media/MediaPlayer$1;)V
    .locals 5

    .prologue
    .line 2577
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaPlayer$_VideoTrackSizeListener;
    move-object v1, p1

    .local v1, "x0":Ljavafx/scene/media/MediaPlayer;
    move-object v2, p2

    .local v2, "x1":Ljavafx/scene/media/MediaPlayer$1;
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Ljavafx/scene/media/MediaPlayer$_VideoTrackSizeListener;-><init>(Ljavafx/scene/media/MediaPlayer;)V

    return-void
.end method

.method static synthetic access$lambda$0(Ljavafx/scene/media/MediaPlayer$_VideoTrackSizeListener;II)V
    .locals 6

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    move v4, v1

    move v5, v2

    invoke-direct {v3, v4, v5}, Ljavafx/scene/media/MediaPlayer$_VideoTrackSizeListener;->lambda$onSizeChanged$24(II)V

    return-void
.end method

.method private synthetic lambda$onSizeChanged$24(II)V
    .locals 5

    .prologue
    .line 2584
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaPlayer$_VideoTrackSizeListener;
    move v1, p1

    .local v1, "width":I
    move v2, p2

    .local v2, "height":I
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/media/MediaPlayer$_VideoTrackSizeListener;->this$0:Ljavafx/scene/media/MediaPlayer;

    invoke-static {v3}, Ljavafx/scene/media/MediaPlayer;->access$4600(Ljavafx/scene/media/MediaPlayer;)Ljavafx/scene/media/Media;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2585
    move-object v3, v0

    move v4, v1

    iput v4, v3, Ljavafx/scene/media/MediaPlayer$_VideoTrackSizeListener;->trackWidth:I

    .line 2586
    move-object v3, v0

    move v4, v2

    iput v4, v3, Ljavafx/scene/media/MediaPlayer$_VideoTrackSizeListener;->trackHeight:I

    .line 2587
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/media/MediaPlayer$_VideoTrackSizeListener;->setSize()V

    .line 2589
    :cond_0
    return-void
.end method


# virtual methods
.method public onSizeChanged(II)V
    .locals 6

    .prologue
    .line 2583
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaPlayer$_VideoTrackSizeListener;
    move v1, p1

    .local v1, "width":I
    move v2, p2

    .local v2, "height":I
    move-object v3, v0

    move v4, v1

    move v5, v2

    invoke-static {v3, v4, v5}, Ljavafx/scene/media/MediaPlayer$_VideoTrackSizeListener$$Lambda$1;->lambdaFactory$(Ljavafx/scene/media/MediaPlayer$_VideoTrackSizeListener;II)Ljava/lang/Runnable;

    move-result-object v3

    invoke-static {v3}, Ljavafx/application/Platform;->runLater(Ljava/lang/Runnable;)V

    .line 2590
    return-void
.end method

.method setSize()V
    .locals 9

    .prologue
    .line 2593
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaPlayer$_VideoTrackSizeListener;
    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/media/MediaPlayer$_VideoTrackSizeListener;->this$0:Ljavafx/scene/media/MediaPlayer;

    invoke-static {v6}, Ljavafx/scene/media/MediaPlayer;->access$4600(Ljavafx/scene/media/MediaPlayer;)Ljavafx/scene/media/Media;

    move-result-object v6

    move-object v7, v0

    iget v7, v7, Ljavafx/scene/media/MediaPlayer$_VideoTrackSizeListener;->trackWidth:I

    invoke-virtual {v6, v7}, Ljavafx/scene/media/Media;->setWidth(I)V

    .line 2594
    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/media/MediaPlayer$_VideoTrackSizeListener;->this$0:Ljavafx/scene/media/MediaPlayer;

    invoke-static {v6}, Ljavafx/scene/media/MediaPlayer;->access$4600(Ljavafx/scene/media/MediaPlayer;)Ljavafx/scene/media/Media;

    move-result-object v6

    move-object v7, v0

    iget v7, v7, Ljavafx/scene/media/MediaPlayer$_VideoTrackSizeListener;->trackHeight:I

    invoke-virtual {v6, v7}, Ljavafx/scene/media/Media;->setHeight(I)V

    .line 2596
    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/media/MediaPlayer$_VideoTrackSizeListener;->this$0:Ljavafx/scene/media/MediaPlayer;

    invoke-static {v6}, Ljavafx/scene/media/MediaPlayer;->access$4700(Ljavafx/scene/media/MediaPlayer;)Ljava/util/Set;

    move-result-object v6

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    move-object v1, v7

    monitor-enter v6

    .line 2597
    move-object v6, v0

    :try_start_0
    iget-object v6, v6, Ljavafx/scene/media/MediaPlayer$_VideoTrackSizeListener;->this$0:Ljavafx/scene/media/MediaPlayer;

    invoke-static {v6}, Ljavafx/scene/media/MediaPlayer;->access$4700(Ljavafx/scene/media/MediaPlayer;)Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-object v2, v6

    :goto_0
    move-object v6, v2

    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    move-object v6, v2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/ref/WeakReference;

    move-object v3, v6

    .line 2598
    .local v3, "vref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Ljavafx/scene/media/MediaView;>;"
    move-object v6, v3

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljavafx/scene/media/MediaView;

    move-object v4, v6

    .line 2599
    .local v4, "v":Ljavafx/scene/media/MediaView;
    move-object v6, v4

    if-eqz v6, :cond_0

    .line 2600
    move-object v6, v4

    invoke-virtual {v6}, Ljavafx/scene/media/MediaView;->notifyMediaSizeChange()V

    .line 2602
    :cond_0
    goto :goto_0

    .line 2603
    .end local v3    # "vref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Ljavafx/scene/media/MediaView;>;"
    .end local v4    # "v":Ljavafx/scene/media/MediaView;
    :cond_1
    move-object v6, v1

    monitor-exit v6

    .line 2604
    return-void

    .line 2603
    :catchall_0
    move-exception v6

    move-object v5, v6

    move-object v6, v1

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v6, v5

    throw v6
.end method
