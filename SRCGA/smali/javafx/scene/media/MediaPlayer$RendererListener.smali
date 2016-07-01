.class Ljavafx/scene/media/MediaPlayer$RendererListener;
.super Ljava/lang/Object;
.source "MediaPlayer.java"

# interfaces
.implements Lcom/sun/media/jfxmedia/events/VideoRendererListener;
.implements Lcom/sun/javafx/tk/TKPulseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/media/MediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RendererListener"
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/scene/media/MediaPlayer;

.field updateMediaViews:Z


# direct methods
.method private constructor <init>(Ljavafx/scene/media/MediaPlayer;)V
    .locals 4

    .prologue
    .line 2678
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaPlayer$RendererListener;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/media/MediaPlayer$RendererListener;->this$0:Ljavafx/scene/media/MediaPlayer;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ljavafx/scene/media/MediaPlayer;Ljavafx/scene/media/MediaPlayer$1;)V
    .locals 5

    .prologue
    .line 2678
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaPlayer$RendererListener;
    move-object v1, p1

    .local v1, "x0":Ljavafx/scene/media/MediaPlayer;
    move-object v2, p2

    .local v2, "x1":Ljavafx/scene/media/MediaPlayer$1;
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Ljavafx/scene/media/MediaPlayer$RendererListener;-><init>(Ljavafx/scene/media/MediaPlayer;)V

    return-void
.end method


# virtual methods
.method public pulse()V
    .locals 8

    .prologue
    .line 2728
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaPlayer$RendererListener;
    move-object v5, v0

    iget-boolean v5, v5, Ljavafx/scene/media/MediaPlayer$RendererListener;->updateMediaViews:Z

    if-eqz v5, :cond_4

    .line 2729
    move-object v5, v0

    const/4 v6, 0x0

    iput-boolean v6, v5, Ljavafx/scene/media/MediaPlayer$RendererListener;->updateMediaViews:Z

    .line 2735
    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/media/MediaPlayer$RendererListener;->this$0:Ljavafx/scene/media/MediaPlayer;

    invoke-static {v5}, Ljavafx/scene/media/MediaPlayer;->access$5000(Ljavafx/scene/media/MediaPlayer;)Ljava/lang/Object;

    move-result-object v5

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    move-object v1, v6

    monitor-enter v5

    .line 2736
    const/4 v5, 0x0

    move-object v6, v0

    :try_start_0
    iget-object v6, v6, Ljavafx/scene/media/MediaPlayer$RendererListener;->this$0:Ljavafx/scene/media/MediaPlayer;

    invoke-static {v6}, Ljavafx/scene/media/MediaPlayer;->access$5100(Ljavafx/scene/media/MediaPlayer;)Lcom/sun/media/jfxmedia/control/VideoDataBuffer;

    move-result-object v6

    if-eq v5, v6, :cond_1

    .line 2737
    const/4 v5, 0x0

    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/media/MediaPlayer$RendererListener;->this$0:Ljavafx/scene/media/MediaPlayer;

    invoke-static {v6}, Ljavafx/scene/media/MediaPlayer;->access$5200(Ljavafx/scene/media/MediaPlayer;)Lcom/sun/media/jfxmedia/control/VideoDataBuffer;

    move-result-object v6

    if-eq v5, v6, :cond_0

    .line 2738
    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/media/MediaPlayer$RendererListener;->this$0:Ljavafx/scene/media/MediaPlayer;

    invoke-static {v5}, Ljavafx/scene/media/MediaPlayer;->access$5200(Ljavafx/scene/media/MediaPlayer;)Lcom/sun/media/jfxmedia/control/VideoDataBuffer;

    move-result-object v5

    invoke-interface {v5}, Lcom/sun/media/jfxmedia/control/VideoDataBuffer;->releaseFrame()V

    .line 2740
    :cond_0
    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/media/MediaPlayer$RendererListener;->this$0:Ljavafx/scene/media/MediaPlayer;

    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/media/MediaPlayer$RendererListener;->this$0:Ljavafx/scene/media/MediaPlayer;

    invoke-static {v6}, Ljavafx/scene/media/MediaPlayer;->access$5100(Ljavafx/scene/media/MediaPlayer;)Lcom/sun/media/jfxmedia/control/VideoDataBuffer;

    move-result-object v6

    invoke-static {v5, v6}, Ljavafx/scene/media/MediaPlayer;->access$5202(Ljavafx/scene/media/MediaPlayer;Lcom/sun/media/jfxmedia/control/VideoDataBuffer;)Lcom/sun/media/jfxmedia/control/VideoDataBuffer;

    move-result-object v5

    .line 2741
    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/media/MediaPlayer$RendererListener;->this$0:Ljavafx/scene/media/MediaPlayer;

    const/4 v6, 0x0

    invoke-static {v5, v6}, Ljavafx/scene/media/MediaPlayer;->access$5102(Ljavafx/scene/media/MediaPlayer;Lcom/sun/media/jfxmedia/control/VideoDataBuffer;)Lcom/sun/media/jfxmedia/control/VideoDataBuffer;

    move-result-object v5

    .line 2743
    :cond_1
    move-object v5, v1

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2746
    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/media/MediaPlayer$RendererListener;->this$0:Ljavafx/scene/media/MediaPlayer;

    invoke-static {v5}, Ljavafx/scene/media/MediaPlayer;->access$4700(Ljavafx/scene/media/MediaPlayer;)Ljava/util/Set;

    move-result-object v5

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    move-object v1, v6

    monitor-enter v5

    .line 2747
    move-object v5, v0

    :try_start_1
    iget-object v5, v5, Ljavafx/scene/media/MediaPlayer$RendererListener;->this$0:Ljavafx/scene/media/MediaPlayer;

    invoke-static {v5}, Ljavafx/scene/media/MediaPlayer;->access$4700(Ljavafx/scene/media/MediaPlayer;)Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v2, v5

    .line 2748
    .local v2, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Ljavafx/scene/media/MediaView;>;>;"
    :goto_0
    move-object v5, v2

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 2749
    move-object v5, v2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljavafx/scene/media/MediaView;

    move-object v3, v5

    .line 2750
    .local v3, "view":Ljavafx/scene/media/MediaView;
    const/4 v5, 0x0

    move-object v6, v3

    if-eq v5, v6, :cond_2

    .line 2751
    move-object v5, v3

    invoke-virtual {v5}, Ljavafx/scene/media/MediaView;->notifyMediaFrameUpdated()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2755
    :goto_1
    goto :goto_0

    .line 2743
    .end local v2    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Ljavafx/scene/media/MediaView;>;>;"
    .end local v3    # "view":Ljavafx/scene/media/MediaView;
    :catchall_0
    move-exception v5

    move-object v2, v5

    move-object v5, v1

    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v5, v2

    throw v5

    .line 2753
    .restart local v2    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Ljavafx/scene/media/MediaView;>;>;"
    .restart local v3    # "view":Ljavafx/scene/media/MediaView;
    :cond_2
    move-object v5, v2

    :try_start_3
    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 2756
    .end local v2    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Ljavafx/scene/media/MediaView;>;>;"
    .end local v3    # "view":Ljavafx/scene/media/MediaView;
    :catchall_1
    move-exception v5

    move-object v4, v5

    move-object v5, v1

    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object v5, v4

    throw v5

    .restart local v2    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Ljavafx/scene/media/MediaView;>;>;"
    :cond_3
    move-object v5, v1

    :try_start_4
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 2758
    .end local v2    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Ljavafx/scene/media/MediaView;>;>;"
    :cond_4
    return-void
.end method

.method public releaseVideoFrames()V
    .locals 6

    .prologue
    .line 2713
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaPlayer$RendererListener;
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/media/MediaPlayer$RendererListener;->this$0:Ljavafx/scene/media/MediaPlayer;

    invoke-static {v3}, Ljavafx/scene/media/MediaPlayer;->access$5000(Ljavafx/scene/media/MediaPlayer;)Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    move-object v1, v4

    monitor-enter v3

    .line 2714
    const/4 v3, 0x0

    move-object v4, v0

    :try_start_0
    iget-object v4, v4, Ljavafx/scene/media/MediaPlayer$RendererListener;->this$0:Ljavafx/scene/media/MediaPlayer;

    invoke-static {v4}, Ljavafx/scene/media/MediaPlayer;->access$5200(Ljavafx/scene/media/MediaPlayer;)Lcom/sun/media/jfxmedia/control/VideoDataBuffer;

    move-result-object v4

    if-eq v3, v4, :cond_0

    .line 2715
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/media/MediaPlayer$RendererListener;->this$0:Ljavafx/scene/media/MediaPlayer;

    invoke-static {v3}, Ljavafx/scene/media/MediaPlayer;->access$5200(Ljavafx/scene/media/MediaPlayer;)Lcom/sun/media/jfxmedia/control/VideoDataBuffer;

    move-result-object v3

    invoke-interface {v3}, Lcom/sun/media/jfxmedia/control/VideoDataBuffer;->releaseFrame()V

    .line 2716
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/media/MediaPlayer$RendererListener;->this$0:Ljavafx/scene/media/MediaPlayer;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Ljavafx/scene/media/MediaPlayer;->access$5202(Ljavafx/scene/media/MediaPlayer;Lcom/sun/media/jfxmedia/control/VideoDataBuffer;)Lcom/sun/media/jfxmedia/control/VideoDataBuffer;

    move-result-object v3

    .line 2719
    :cond_0
    const/4 v3, 0x0

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/media/MediaPlayer$RendererListener;->this$0:Ljavafx/scene/media/MediaPlayer;

    invoke-static {v4}, Ljavafx/scene/media/MediaPlayer;->access$5100(Ljavafx/scene/media/MediaPlayer;)Lcom/sun/media/jfxmedia/control/VideoDataBuffer;

    move-result-object v4

    if-eq v3, v4, :cond_1

    .line 2720
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/media/MediaPlayer$RendererListener;->this$0:Ljavafx/scene/media/MediaPlayer;

    invoke-static {v3}, Ljavafx/scene/media/MediaPlayer;->access$5100(Ljavafx/scene/media/MediaPlayer;)Lcom/sun/media/jfxmedia/control/VideoDataBuffer;

    move-result-object v3

    invoke-interface {v3}, Lcom/sun/media/jfxmedia/control/VideoDataBuffer;->releaseFrame()V

    .line 2721
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/media/MediaPlayer$RendererListener;->this$0:Ljavafx/scene/media/MediaPlayer;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Ljavafx/scene/media/MediaPlayer;->access$5102(Ljavafx/scene/media/MediaPlayer;Lcom/sun/media/jfxmedia/control/VideoDataBuffer;)Lcom/sun/media/jfxmedia/control/VideoDataBuffer;

    move-result-object v3

    .line 2723
    :cond_1
    move-object v3, v1

    monitor-exit v3

    .line 2724
    return-void

    .line 2723
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

.method public videoFrameUpdated(Lcom/sun/media/jfxmedia/events/NewFrameEvent;)V
    .locals 15

    .prologue
    .line 2686
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/media/MediaPlayer$RendererListener;
    move-object/from16 v2, p1

    .local v2, "nfe":Lcom/sun/media/jfxmedia/events/NewFrameEvent;
    move-object v8, v2

    invoke-virtual {v8}, Lcom/sun/media/jfxmedia/events/NewFrameEvent;->getFrameData()Lcom/sun/media/jfxmedia/control/VideoDataBuffer;

    move-result-object v8

    move-object v3, v8

    .line 2687
    .local v3, "vdb":Lcom/sun/media/jfxmedia/control/VideoDataBuffer;
    const/4 v8, 0x0

    move-object v9, v3

    if-eq v8, v9, :cond_2

    .line 2689
    new-instance v8, Ljavafx/util/Duration;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    move-object v10, v3

    invoke-interface {v10}, Lcom/sun/media/jfxmedia/control/VideoDataBuffer;->getTimestamp()D

    move-result-wide v10

    const-wide v12, 0x408f400000000000L    # 1000.0

    mul-double/2addr v10, v12

    invoke-direct {v9, v10, v11}, Ljavafx/util/Duration;-><init>(D)V

    move-object v4, v8

    .line 2690
    .local v4, "frameTS":Ljavafx/util/Duration;
    move-object v8, v1

    iget-object v8, v8, Ljavafx/scene/media/MediaPlayer$RendererListener;->this$0:Ljavafx/scene/media/MediaPlayer;

    invoke-virtual {v8}, Ljavafx/scene/media/MediaPlayer;->getStopTime()Ljavafx/util/Duration;

    move-result-object v8

    move-object v5, v8

    .line 2691
    .local v5, "stopTime":Ljavafx/util/Duration;
    move-object v8, v4

    move-object v9, v1

    iget-object v9, v9, Ljavafx/scene/media/MediaPlayer$RendererListener;->this$0:Ljavafx/scene/media/MediaPlayer;

    invoke-virtual {v9}, Ljavafx/scene/media/MediaPlayer;->getStartTime()Ljavafx/util/Duration;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljavafx/util/Duration;->greaterThanOrEqualTo(Ljavafx/util/Duration;)Z

    move-result v8

    if-eqz v8, :cond_3

    move-object v8, v5

    invoke-virtual {v8}, Ljavafx/util/Duration;->isUnknown()Z

    move-result v8

    if-nez v8, :cond_0

    move-object v8, v4

    move-object v9, v5

    invoke-virtual {v8, v9}, Ljavafx/util/Duration;->lessThanOrEqualTo(Ljavafx/util/Duration;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 2692
    :cond_0
    move-object v8, v1

    const/4 v9, 0x1

    iput-boolean v9, v8, Ljavafx/scene/media/MediaPlayer$RendererListener;->updateMediaViews:Z

    .line 2694
    move-object v8, v1

    iget-object v8, v8, Ljavafx/scene/media/MediaPlayer$RendererListener;->this$0:Ljavafx/scene/media/MediaPlayer;

    invoke-static {v8}, Ljavafx/scene/media/MediaPlayer;->access$5000(Ljavafx/scene/media/MediaPlayer;)Ljava/lang/Object;

    move-result-object v8

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    move-object v6, v9

    monitor-enter v8

    .line 2695
    move-object v8, v3

    :try_start_0
    invoke-interface {v8}, Lcom/sun/media/jfxmedia/control/VideoDataBuffer;->holdFrame()V

    .line 2698
    const/4 v8, 0x0

    move-object v9, v1

    iget-object v9, v9, Ljavafx/scene/media/MediaPlayer$RendererListener;->this$0:Ljavafx/scene/media/MediaPlayer;

    invoke-static {v9}, Ljavafx/scene/media/MediaPlayer;->access$5100(Ljavafx/scene/media/MediaPlayer;)Lcom/sun/media/jfxmedia/control/VideoDataBuffer;

    move-result-object v9

    if-eq v8, v9, :cond_1

    .line 2699
    move-object v8, v1

    iget-object v8, v8, Ljavafx/scene/media/MediaPlayer$RendererListener;->this$0:Ljavafx/scene/media/MediaPlayer;

    invoke-static {v8}, Ljavafx/scene/media/MediaPlayer;->access$5100(Ljavafx/scene/media/MediaPlayer;)Lcom/sun/media/jfxmedia/control/VideoDataBuffer;

    move-result-object v8

    invoke-interface {v8}, Lcom/sun/media/jfxmedia/control/VideoDataBuffer;->releaseFrame()V

    .line 2701
    :cond_1
    move-object v8, v1

    iget-object v8, v8, Ljavafx/scene/media/MediaPlayer$RendererListener;->this$0:Ljavafx/scene/media/MediaPlayer;

    move-object v9, v3

    invoke-static {v8, v9}, Ljavafx/scene/media/MediaPlayer;->access$5102(Ljavafx/scene/media/MediaPlayer;Lcom/sun/media/jfxmedia/control/VideoDataBuffer;)Lcom/sun/media/jfxmedia/control/VideoDataBuffer;

    move-result-object v8

    .line 2702
    move-object v8, v6

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2704
    invoke-static {}, Lcom/sun/javafx/tk/Toolkit;->getToolkit()Lcom/sun/javafx/tk/Toolkit;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sun/javafx/tk/Toolkit;->requestNextPulse()V

    .line 2709
    .end local v4    # "frameTS":Ljavafx/util/Duration;
    .end local v5    # "stopTime":Ljavafx/util/Duration;
    :cond_2
    :goto_0
    return-void

    .line 2702
    .restart local v4    # "frameTS":Ljavafx/util/Duration;
    .restart local v5    # "stopTime":Ljavafx/util/Duration;
    :catchall_0
    move-exception v8

    move-object v7, v8

    move-object v8, v6

    :try_start_1
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v8, v7

    throw v8

    .line 2706
    :cond_3
    move-object v8, v3

    invoke-interface {v8}, Lcom/sun/media/jfxmedia/control/VideoDataBuffer;->releaseFrame()V

    goto :goto_0
.end method
