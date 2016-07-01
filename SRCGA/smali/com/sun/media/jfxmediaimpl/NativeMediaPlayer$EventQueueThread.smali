.class Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$EventQueueThread;
.super Ljava/lang/Thread;
.source "NativeMediaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventQueueThread"
.end annotation


# instance fields
.field private final eventQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/sun/media/jfxmedia/events/PlayerEvent;",
            ">;"
        }
    .end annotation
.end field

.field private volatile stopped:Z

.field final synthetic this$0:Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;


# direct methods
.method constructor <init>(Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;)V
    .locals 6

    .prologue
    .line 386
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$EventQueueThread;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$EventQueueThread;->this$0:Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Thread;-><init>()V

    .line 382
    move-object v2, v0

    new-instance v3, Ljava/util/concurrent/LinkedBlockingQueue;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v3, v2, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$EventQueueThread;->eventQueue:Ljava/util/concurrent/BlockingQueue;

    .line 384
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$EventQueueThread;->stopped:Z

    .line 387
    move-object v2, v0

    const-string v3, "JFXMedia Player EventQueueThread"

    invoke-virtual {v2, v3}, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$EventQueueThread;->setName(Ljava/lang/String;)V

    .line 388
    move-object v2, v0

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$EventQueueThread;->setDaemon(Z)V

    .line 389
    return-void
.end method

.method private HandleAudioSpectrumEvents(Lcom/sun/media/jfxmedia/events/AudioSpectrumEvent;)V
    .locals 6

    .prologue
    .line 718
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$EventQueueThread;
    move-object v1, p1

    .local v1, "evt":Lcom/sun/media/jfxmedia/events/AudioSpectrumEvent;
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$EventQueueThread;->this$0:Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;

    invoke-static {v4}, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->access$2900(Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v4

    move-object v2, v4

    .local v2, "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Ljava/lang/ref/WeakReference<Lcom/sun/media/jfxmedia/events/AudioSpectrumListener;>;>;"
    :goto_0
    move-object v4, v2

    invoke-interface {v4}, Ljava/util/ListIterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 719
    move-object v4, v2

    invoke-interface {v4}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/media/jfxmedia/events/AudioSpectrumListener;

    move-object v3, v4

    .line 720
    .local v3, "listener":Lcom/sun/media/jfxmedia/events/AudioSpectrumListener;
    move-object v4, v3

    if-eqz v4, :cond_0

    .line 721
    move-object v4, v3

    move-object v5, v1

    invoke-interface {v4, v5}, Lcom/sun/media/jfxmedia/events/AudioSpectrumListener;->onAudioSpectrumEvent(Lcom/sun/media/jfxmedia/events/AudioSpectrumEvent;)V

    .line 725
    :goto_1
    goto :goto_0

    .line 723
    :cond_0
    move-object v4, v2

    invoke-interface {v4}, Ljava/util/ListIterator;->remove()V

    goto :goto_1

    .line 726
    .end local v3    # "listener":Lcom/sun/media/jfxmedia/events/AudioSpectrumListener;
    :cond_1
    return-void
.end method

.method private HandleBufferEvents(Lcom/sun/media/jfxmedia/events/BufferProgressEvent;)V
    .locals 7

    .prologue
    .line 699
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$EventQueueThread;
    move-object v1, p1

    .local v1, "evt":Lcom/sun/media/jfxmedia/events/BufferProgressEvent;
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$EventQueueThread;->this$0:Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;

    invoke-static {v4}, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->access$2700(Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;)Ljava/util/List;

    move-result-object v4

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    move-object v2, v5

    monitor-enter v4

    .line 700
    move-object v4, v0

    :try_start_0
    iget-object v4, v4, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$EventQueueThread;->this$0:Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;

    invoke-static {v4}, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->access$2800(Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 702
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$EventQueueThread;->this$0:Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;

    invoke-static {v4}, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->access$2700(Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;)Ljava/util/List;

    move-result-object v4

    move-object v5, v1

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v4

    .line 703
    move-object v4, v2

    monitor-exit v4

    .line 715
    :goto_0
    return-void

    .line 705
    :cond_0
    move-object v4, v2

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 707
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$EventQueueThread;->this$0:Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;

    invoke-static {v4}, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->access$2800(Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v4

    move-object v2, v4

    .local v2, "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Ljava/lang/ref/WeakReference<Lcom/sun/media/jfxmedia/events/BufferListener;>;>;"
    :goto_1
    move-object v4, v2

    invoke-interface {v4}, Ljava/util/ListIterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 708
    move-object v4, v2

    invoke-interface {v4}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/media/jfxmedia/events/BufferListener;

    move-object v3, v4

    .line 709
    .local v3, "listener":Lcom/sun/media/jfxmedia/events/BufferListener;
    move-object v4, v3

    if-eqz v4, :cond_1

    .line 710
    move-object v4, v3

    move-object v5, v1

    invoke-interface {v4, v5}, Lcom/sun/media/jfxmedia/events/BufferListener;->onBufferProgress(Lcom/sun/media/jfxmedia/events/BufferProgressEvent;)V

    .line 714
    :goto_2
    goto :goto_1

    .line 705
    .end local v2    # "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Ljava/lang/ref/WeakReference<Lcom/sun/media/jfxmedia/events/BufferListener;>;>;"
    .end local v3    # "listener":Lcom/sun/media/jfxmedia/events/BufferListener;
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

    .line 712
    .restart local v2    # "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Ljava/lang/ref/WeakReference<Lcom/sun/media/jfxmedia/events/BufferListener;>;>;"
    .restart local v3    # "listener":Lcom/sun/media/jfxmedia/events/BufferListener;
    :cond_1
    move-object v4, v2

    invoke-interface {v4}, Ljava/util/ListIterator;->remove()V

    goto :goto_2

    .line 715
    .end local v3    # "listener":Lcom/sun/media/jfxmedia/events/BufferListener;
    :cond_2
    goto :goto_0
.end method

.method private HandleErrorEvents(Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$MediaErrorEvent;)V
    .locals 9

    .prologue
    .line 678
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$EventQueueThread;
    move-object v1, p1

    .local v1, "evt":Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$MediaErrorEvent;
    const/4 v4, 0x4

    move-object v5, v1

    invoke-virtual {v5}, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$MediaErrorEvent;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sun/media/jfxmedia/logging/Logger;->logMsg(ILjava/lang/String;)V

    .line 680
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$EventQueueThread;->this$0:Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;

    invoke-static {v4}, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->access$2500(Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;)Ljava/util/List;

    move-result-object v4

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v2, v5

    monitor-enter v4

    .line 681
    move-object v4, v0

    :try_start_0
    iget-object v4, v4, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$EventQueueThread;->this$0:Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;

    invoke-static {v4}, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->access$2600(Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 683
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$EventQueueThread;->this$0:Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;

    invoke-static {v4}, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->access$2500(Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;)Ljava/util/List;

    move-result-object v4

    move-object v5, v1

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v4

    .line 684
    move-object v4, v2

    monitor-exit v4

    .line 696
    :goto_0
    return-void

    .line 686
    :cond_0
    move-object v4, v2

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 688
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$EventQueueThread;->this$0:Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;

    invoke-static {v4}, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->access$2600(Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v4

    move-object v2, v4

    .local v2, "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Ljava/lang/ref/WeakReference<Lcom/sun/media/jfxmedia/events/MediaErrorListener;>;>;"
    :goto_1
    move-object v4, v2

    invoke-interface {v4}, Ljava/util/ListIterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 689
    move-object v4, v2

    invoke-interface {v4}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/media/jfxmedia/events/MediaErrorListener;

    move-object v3, v4

    .line 690
    .local v3, "l":Lcom/sun/media/jfxmedia/events/MediaErrorListener;
    move-object v4, v3

    if-eqz v4, :cond_1

    .line 691
    move-object v4, v3

    move-object v5, v1

    invoke-virtual {v5}, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$MediaErrorEvent;->getSource()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v1

    invoke-virtual {v6}, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$MediaErrorEvent;->getErrorCode()I

    move-result v6

    move-object v7, v1

    invoke-virtual {v7}, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$MediaErrorEvent;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v5, v6, v7}, Lcom/sun/media/jfxmedia/events/MediaErrorListener;->onError(Ljava/lang/Object;ILjava/lang/String;)V

    .line 695
    :goto_2
    goto :goto_1

    .line 686
    .end local v2    # "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Ljava/lang/ref/WeakReference<Lcom/sun/media/jfxmedia/events/MediaErrorListener;>;>;"
    .end local v3    # "l":Lcom/sun/media/jfxmedia/events/MediaErrorListener;
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

    .line 693
    .restart local v2    # "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Ljava/lang/ref/WeakReference<Lcom/sun/media/jfxmedia/events/MediaErrorListener;>;>;"
    .restart local v3    # "l":Lcom/sun/media/jfxmedia/events/MediaErrorListener;
    :cond_1
    move-object v4, v2

    invoke-interface {v4}, Ljava/util/ListIterator;->remove()V

    goto :goto_2

    .line 696
    .end local v3    # "l":Lcom/sun/media/jfxmedia/events/MediaErrorListener;
    :cond_2
    goto :goto_0
.end method

.method private HandleFrameSizeChangedEvents(Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$FrameSizeChangedEvent;)V
    .locals 8

    .prologue
    .line 641
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$EventQueueThread;
    move-object v1, p1

    .local v1, "evt":Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$FrameSizeChangedEvent;
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$EventQueueThread;->this$0:Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;

    move-object v5, v1

    invoke-virtual {v5}, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$FrameSizeChangedEvent;->getWidth()I

    move-result v5

    invoke-static {v4, v5}, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->access$502(Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;I)I

    move-result v4

    .line 642
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$EventQueueThread;->this$0:Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;

    move-object v5, v1

    invoke-virtual {v5}, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$FrameSizeChangedEvent;->getHeight()I

    move-result v5

    invoke-static {v4, v5}, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->access$602(Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;I)I

    move-result v4

    .line 643
    const/4 v4, 0x1

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "** Frame size changed ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$EventQueueThread;->this$0:Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;

    invoke-static {v6}, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->access$500(Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$EventQueueThread;->this$0:Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;

    invoke-static {v6}, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->access$600(Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sun/media/jfxmedia/logging/Logger;->logMsg(ILjava/lang/String;)V

    .line 644
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$EventQueueThread;->this$0:Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;

    invoke-static {v4}, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->access$2200(Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v4

    move-object v2, v4

    .local v2, "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Ljava/lang/ref/WeakReference<Lcom/sun/media/jfxmedia/events/VideoTrackSizeListener;>;>;"
    :goto_0
    move-object v4, v2

    invoke-interface {v4}, Ljava/util/ListIterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 645
    move-object v4, v2

    invoke-interface {v4}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/media/jfxmedia/events/VideoTrackSizeListener;

    move-object v3, v4

    .line 646
    .local v3, "listener":Lcom/sun/media/jfxmedia/events/VideoTrackSizeListener;
    move-object v4, v3

    if-eqz v4, :cond_0

    .line 647
    move-object v4, v3

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$EventQueueThread;->this$0:Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;

    invoke-static {v5}, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->access$500(Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;)I

    move-result v5

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$EventQueueThread;->this$0:Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;

    invoke-static {v6}, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->access$600(Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;)I

    move-result v6

    invoke-interface {v4, v5, v6}, Lcom/sun/media/jfxmedia/events/VideoTrackSizeListener;->onSizeChanged(II)V

    .line 651
    :goto_1
    goto :goto_0

    .line 649
    :cond_0
    move-object v4, v2

    invoke-interface {v4}, Ljava/util/ListIterator;->remove()V

    goto :goto_1

    .line 652
    .end local v3    # "listener":Lcom/sun/media/jfxmedia/events/VideoTrackSizeListener;
    :cond_1
    return-void
.end method

.method private HandleMarkerEvents(Lcom/sun/media/jfxmedia/events/MarkerEvent;)V
    .locals 6

    .prologue
    .line 663
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$EventQueueThread;
    move-object v1, p1

    .local v1, "evt":Lcom/sun/media/jfxmedia/events/MarkerEvent;
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$EventQueueThread;->this$0:Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;

    invoke-static {v4}, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->access$2400(Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v4

    move-object v2, v4

    .local v2, "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Ljava/lang/ref/WeakReference<Lcom/sun/media/jfxmedia/events/MarkerListener;>;>;"
    :goto_0
    move-object v4, v2

    invoke-interface {v4}, Ljava/util/ListIterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 664
    move-object v4, v2

    invoke-interface {v4}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/media/jfxmedia/events/MarkerListener;

    move-object v3, v4

    .line 665
    .local v3, "listener":Lcom/sun/media/jfxmedia/events/MarkerListener;
    move-object v4, v3

    if-eqz v4, :cond_0

    .line 666
    move-object v4, v3

    move-object v5, v1

    invoke-interface {v4, v5}, Lcom/sun/media/jfxmedia/events/MarkerListener;->onMarker(Lcom/sun/media/jfxmedia/events/MarkerEvent;)V

    .line 670
    :goto_1
    goto :goto_0

    .line 668
    :cond_0
    move-object v4, v2

    invoke-interface {v4}, Ljava/util/ListIterator;->remove()V

    goto :goto_1

    .line 671
    .end local v3    # "listener":Lcom/sun/media/jfxmedia/events/MarkerListener;
    :cond_1
    return-void
.end method

.method private HandlePlayerTimeEvents(Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$PlayerTimeEvent;)V
    .locals 9

    .prologue
    .line 622
    move-object v1, p0

    .local v1, "this":Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$EventQueueThread;
    move-object v2, p1

    .local v2, "evt":Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$PlayerTimeEvent;
    move-object v5, v1

    iget-object v5, v5, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$EventQueueThread;->this$0:Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;

    invoke-static {v5}, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->access$2000(Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;)Ljava/util/List;

    move-result-object v5

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v3, v6

    monitor-enter v5

    .line 623
    move-object v5, v1

    :try_start_0
    iget-object v5, v5, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$EventQueueThread;->this$0:Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;

    invoke-static {v5}, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->access$2100(Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 625
    move-object v5, v1

    iget-object v5, v5, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$EventQueueThread;->this$0:Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;

    invoke-static {v5}, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->access$2000(Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;)Ljava/util/List;

    move-result-object v5

    move-object v6, v2

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v5

    .line 626
    move-object v5, v3

    monitor-exit v5

    .line 638
    :goto_0
    return-void

    .line 628
    :cond_0
    move-object v5, v3

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 630
    move-object v5, v1

    iget-object v5, v5, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$EventQueueThread;->this$0:Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;

    invoke-static {v5}, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->access$2100(Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v5

    move-object v3, v5

    .local v3, "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Ljava/lang/ref/WeakReference<Lcom/sun/media/jfxmedia/events/PlayerTimeListener;>;>;"
    :goto_1
    move-object v5, v3

    invoke-interface {v5}, Ljava/util/ListIterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 631
    move-object v5, v3

    invoke-interface {v5}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sun/media/jfxmedia/events/PlayerTimeListener;

    move-object v4, v5

    .line 632
    .local v4, "listener":Lcom/sun/media/jfxmedia/events/PlayerTimeListener;
    move-object v5, v4

    if-eqz v5, :cond_1

    .line 633
    move-object v5, v4

    move-object v6, v2

    invoke-virtual {v6}, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$PlayerTimeEvent;->getTime()D

    move-result-wide v6

    invoke-interface {v5, v6, v7}, Lcom/sun/media/jfxmedia/events/PlayerTimeListener;->onDurationChanged(D)V

    .line 637
    :goto_2
    goto :goto_1

    .line 628
    .end local v3    # "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Ljava/lang/ref/WeakReference<Lcom/sun/media/jfxmedia/events/PlayerTimeListener;>;>;"
    .end local v4    # "listener":Lcom/sun/media/jfxmedia/events/PlayerTimeListener;
    :catchall_0
    move-exception v5

    move-object v4, v5

    move-object v5, v3

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v5, v4

    throw v5

    .line 635
    .restart local v3    # "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Ljava/lang/ref/WeakReference<Lcom/sun/media/jfxmedia/events/PlayerTimeListener;>;>;"
    .restart local v4    # "listener":Lcom/sun/media/jfxmedia/events/PlayerTimeListener;
    :cond_1
    move-object v5, v3

    invoke-interface {v5}, Ljava/util/ListIterator;->remove()V

    goto :goto_2

    .line 638
    .end local v4    # "listener":Lcom/sun/media/jfxmedia/events/PlayerTimeListener;
    :cond_2
    goto :goto_0
.end method

.method private HandleRendererEvents(Lcom/sun/media/jfxmedia/events/NewFrameEvent;)V
    .locals 17

    .prologue
    .line 441
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$EventQueueThread;
    move-object/from16 v1, p1

    .local v1, "evt":Lcom/sun/media/jfxmedia/events/NewFrameEvent;
    move-object v10, v0

    iget-object v10, v10, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$EventQueueThread;->this$0:Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;

    invoke-static {v10}, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->access$700(Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 444
    move-object v10, v0

    iget-object v10, v10, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$EventQueueThread;->this$0:Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;

    const/4 v11, 0x0

    invoke-static {v10, v11}, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->access$702(Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;Z)Z

    move-result v10

    .line 445
    move-object v10, v0

    iget-object v10, v10, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$EventQueueThread;->this$0:Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;

    invoke-static {v10}, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->access$100(Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;)Ljava/lang/Object;

    move-result-object v10

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    move-object v2, v11

    monitor-enter v10

    .line 446
    move-object v10, v0

    :try_start_0
    iget-object v10, v10, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$EventQueueThread;->this$0:Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;

    move-object v11, v1

    invoke-static {v10, v11}, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->access$202(Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;Lcom/sun/media/jfxmedia/events/NewFrameEvent;)Lcom/sun/media/jfxmedia/events/NewFrameEvent;

    move-result-object v10

    .line 447
    move-object v10, v0

    iget-object v10, v10, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$EventQueueThread;->this$0:Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;

    move-object v11, v0

    iget-object v11, v11, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$EventQueueThread;->this$0:Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;

    invoke-static {v11}, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->access$200(Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;)Lcom/sun/media/jfxmedia/events/NewFrameEvent;

    move-result-object v11

    invoke-virtual {v11}, Lcom/sun/media/jfxmedia/events/NewFrameEvent;->getFrameData()Lcom/sun/media/jfxmedia/control/VideoDataBuffer;

    move-result-object v11

    invoke-interface {v11}, Lcom/sun/media/jfxmedia/control/VideoDataBuffer;->getTimestamp()D

    move-result-wide v11

    invoke-static {v10, v11, v12}, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->access$802(Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;D)D

    move-result-wide v10

    .line 448
    move-object v10, v0

    iget-object v10, v10, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$EventQueueThread;->this$0:Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;

    invoke-static {v10}, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->access$200(Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;)Lcom/sun/media/jfxmedia/events/NewFrameEvent;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sun/media/jfxmedia/events/NewFrameEvent;->getFrameData()Lcom/sun/media/jfxmedia/control/VideoDataBuffer;

    move-result-object v10

    invoke-interface {v10}, Lcom/sun/media/jfxmedia/control/VideoDataBuffer;->holdFrame()V

    .line 449
    move-object v10, v2

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 467
    :cond_0
    :goto_0
    move-object v10, v0

    iget-object v10, v10, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$EventQueueThread;->this$0:Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;

    invoke-static {v10}, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->access$300(Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v10

    move-object v2, v10

    .local v2, "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Ljava/lang/ref/WeakReference<Lcom/sun/media/jfxmedia/events/VideoRendererListener;>;>;"
    :goto_1
    move-object v10, v2

    invoke-interface {v10}, Ljava/util/ListIterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 468
    move-object v10, v2

    invoke-interface {v10}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/ref/WeakReference;

    invoke-virtual {v10}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/sun/media/jfxmedia/events/VideoRendererListener;

    move-object v3, v10

    .line 469
    .local v3, "l":Lcom/sun/media/jfxmedia/events/VideoRendererListener;
    move-object v10, v3

    if-eqz v10, :cond_2

    .line 470
    move-object v10, v3

    move-object v11, v1

    invoke-interface {v10, v11}, Lcom/sun/media/jfxmedia/events/VideoRendererListener;->videoFrameUpdated(Lcom/sun/media/jfxmedia/events/NewFrameEvent;)V

    .line 474
    :goto_2
    goto :goto_1

    .line 449
    .end local v2    # "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Ljava/lang/ref/WeakReference<Lcom/sun/media/jfxmedia/events/VideoRendererListener;>;>;"
    .end local v3    # "l":Lcom/sun/media/jfxmedia/events/VideoRendererListener;
    :catchall_0
    move-exception v10

    move-object v3, v10

    move-object v10, v2

    :try_start_1
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v10, v3

    throw v10

    .line 450
    :cond_1
    move-object v10, v0

    iget-object v10, v10, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$EventQueueThread;->this$0:Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;

    invoke-static {v10}, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->access$200(Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;)Lcom/sun/media/jfxmedia/events/NewFrameEvent;

    move-result-object v10

    if-eqz v10, :cond_0

    move-object v10, v0

    iget-object v10, v10, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$EventQueueThread;->this$0:Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;

    .line 451
    invoke-static {v10}, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->access$800(Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;)D

    move-result-wide v10

    move-object v12, v1

    invoke-virtual {v12}, Lcom/sun/media/jfxmedia/events/NewFrameEvent;->getFrameData()Lcom/sun/media/jfxmedia/control/VideoDataBuffer;

    move-result-object v12

    invoke-interface {v12}, Lcom/sun/media/jfxmedia/control/VideoDataBuffer;->getTimestamp()D

    move-result-wide v12

    cmpl-double v10, v10, v12

    if-eqz v10, :cond_0

    .line 460
    move-object v10, v0

    iget-object v10, v10, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$EventQueueThread;->this$0:Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;

    invoke-static {v10}, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->access$100(Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;)Ljava/lang/Object;

    move-result-object v10

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    move-object v2, v11

    monitor-enter v10

    .line 461
    move-object v10, v0

    :try_start_2
    iget-object v10, v10, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$EventQueueThread;->this$0:Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;

    invoke-static {v10}, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->access$200(Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;)Lcom/sun/media/jfxmedia/events/NewFrameEvent;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sun/media/jfxmedia/events/NewFrameEvent;->getFrameData()Lcom/sun/media/jfxmedia/control/VideoDataBuffer;

    move-result-object v10

    invoke-interface {v10}, Lcom/sun/media/jfxmedia/control/VideoDataBuffer;->releaseFrame()V

    .line 462
    move-object v10, v0

    iget-object v10, v10, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$EventQueueThread;->this$0:Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;

    const/4 v11, 0x0

    invoke-static {v10, v11}, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->access$202(Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;Lcom/sun/media/jfxmedia/events/NewFrameEvent;)Lcom/sun/media/jfxmedia/events/NewFrameEvent;

    move-result-object v10

    .line 463
    move-object v10, v2

    monitor-exit v10

    goto :goto_0

    :catchall_1
    move-exception v10

    move-object v4, v10

    move-object v10, v2

    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v10, v4

    throw v10

    .line 472
    .restart local v2    # "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Ljava/lang/ref/WeakReference<Lcom/sun/media/jfxmedia/events/VideoRendererListener;>;>;"
    .restart local v3    # "l":Lcom/sun/media/jfxmedia/events/VideoRendererListener;
    :cond_2
    move-object v10, v2

    invoke-interface {v10}, Ljava/util/ListIterator;->remove()V

    goto :goto_2

    .line 476
    .end local v3    # "l":Lcom/sun/media/jfxmedia/events/VideoRendererListener;
    :cond_3
    move-object v10, v1

    invoke-virtual {v10}, Lcom/sun/media/jfxmedia/events/NewFrameEvent;->getFrameData()Lcom/sun/media/jfxmedia/control/VideoDataBuffer;

    move-result-object v10

    invoke-interface {v10}, Lcom/sun/media/jfxmedia/control/VideoDataBuffer;->releaseFrame()V

    .line 478
    move-object v10, v0

    iget-object v10, v10, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$EventQueueThread;->this$0:Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;

    invoke-static {v10}, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->access$400(Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_4

    .line 480
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v10

    long-to-double v10, v10

    const-wide v12, 0x41cdcd6500000000L    # 1.0E9

    div-double/2addr v10, v12

    move-wide v2, v10

    .line 482
    .local v2, "currentFrameTime":D
    move-object v10, v0

    iget-object v10, v10, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$EventQueueThread;->this$0:Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;

    invoke-static {v10}, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->access$900(Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 484
    move-object v10, v0

    iget-object v10, v10, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$EventQueueThread;->this$0:Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;

    const/4 v11, 0x0

    invoke-static {v10, v11}, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->access$902(Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;Z)Z

    move-result v10

    .line 485
    move-object v10, v0

    iget-object v10, v10, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$EventQueueThread;->this$0:Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;

    move-wide v11, v2

    invoke-static {v10, v11, v12}, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->access$1002(Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;D)D

    move-result-wide v10

    .line 486
    move-object v10, v0

    iget-object v10, v10, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$EventQueueThread;->this$0:Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;

    const-wide/16 v11, 0x1

    invoke-static {v10, v11, v12}, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->access$1102(Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;J)J

    move-result-wide v10

    .line 541
    .end local v2    # "currentFrameTime":D
    :cond_4
    :goto_3
    return-void

    .line 488
    .restart local v2    # "currentFrameTime":D
    :cond_5
    const/4 v10, 0x0

    move v4, v10

    .line 490
    .local v4, "fireFrameRateEvent":Z
    move-object v10, v0

    iget-object v10, v10, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$EventQueueThread;->this$0:Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;

    invoke-static {v10}, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->access$1100(Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;)J

    move-result-wide v10

    const-wide/16 v12, 0x1

    cmp-long v10, v10, v12

    if-nez v10, :cond_7

    .line 493
    move-object v10, v0

    iget-object v10, v10, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$EventQueueThread;->this$0:Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;

    move-wide v11, v2

    move-object v13, v0

    iget-object v13, v13, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$EventQueueThread;->this$0:Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;

    invoke-static {v13}, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->access$1000(Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;)D

    move-result-wide v13

    sub-double/2addr v11, v13

    invoke-static {v10, v11, v12}, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->access$1202(Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;D)D

    move-result-wide v10

    .line 494
    move-object v10, v0

    iget-object v10, v10, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$EventQueueThread;->this$0:Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;

    invoke-static {v10}, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->access$1200(Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;)D

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmpl-double v10, v10, v12

    if-lez v10, :cond_6

    .line 495
    move-object v10, v0

    iget-object v10, v10, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$EventQueueThread;->this$0:Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;

    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    move-object v13, v0

    iget-object v13, v13, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$EventQueueThread;->this$0:Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;

    invoke-static {v13}, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->access$1200(Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;)D

    move-result-wide v13

    div-double/2addr v11, v13

    invoke-static {v10, v11, v12}, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->access$1302(Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;D)D

    move-result-wide v10

    .line 496
    const/4 v10, 0x1

    move v4, v10

    .line 524
    :cond_6
    :goto_4
    move v10, v4

    if-eqz v10, :cond_b

    .line 526
    move-object v10, v0

    iget-object v10, v10, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$EventQueueThread;->this$0:Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;

    invoke-static {v10}, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->access$400(Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v10

    move-object v5, v10

    .local v5, "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Ljava/lang/ref/WeakReference<Lcom/sun/media/jfxmedia/events/VideoFrameRateListener;>;>;"
    :goto_5
    move-object v10, v5

    invoke-interface {v10}, Ljava/util/ListIterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_b

    .line 527
    move-object v10, v5

    invoke-interface {v10}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/ref/WeakReference;

    invoke-virtual {v10}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/sun/media/jfxmedia/events/VideoFrameRateListener;

    move-object v6, v10

    .line 528
    .local v6, "l":Lcom/sun/media/jfxmedia/events/VideoFrameRateListener;
    move-object v10, v6

    if-eqz v10, :cond_a

    .line 529
    move-object v10, v6

    move-object v11, v0

    iget-object v11, v11, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$EventQueueThread;->this$0:Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;

    invoke-static {v11}, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->access$1300(Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;)D

    move-result-wide v11

    invoke-interface {v10, v11, v12}, Lcom/sun/media/jfxmedia/events/VideoFrameRateListener;->onFrameRateChanged(D)V

    .line 533
    :goto_6
    goto :goto_5

    .line 501
    .end local v5    # "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Ljava/lang/ref/WeakReference<Lcom/sun/media/jfxmedia/events/VideoFrameRateListener;>;>;"
    .end local v6    # "l":Lcom/sun/media/jfxmedia/events/VideoFrameRateListener;
    :cond_7
    move-object v10, v0

    iget-object v10, v10, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$EventQueueThread;->this$0:Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;

    invoke-static {v10}, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->access$1200(Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;)D

    move-result-wide v10

    move-wide v5, v10

    .line 504
    .local v5, "previousMeanFrameDuration":D
    move-object v10, v0

    iget-object v10, v10, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$EventQueueThread;->this$0:Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;

    invoke-static {v10}, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->access$1400(Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;)D

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmpl-double v10, v10, v12

    if-eqz v10, :cond_8

    move-object v10, v0

    iget-object v10, v10, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$EventQueueThread;->this$0:Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;

    .line 505
    invoke-static {v10}, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->access$1400(Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;)D

    move-result-wide v10

    const-wide/high16 v12, 0x3fe0000000000000L    # 0.5

    add-double/2addr v10, v12

    double-to-int v10, v10

    :goto_7
    move v7, v10

    .line 508
    .local v7, "movingAverageLength":I
    move-object v10, v0

    iget-object v10, v10, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$EventQueueThread;->this$0:Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;

    invoke-static {v10}, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->access$1100(Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;)J

    move-result-wide v10

    move v12, v7

    int-to-long v12, v12

    cmp-long v10, v10, v12

    if-gez v10, :cond_9

    move-object v10, v0

    iget-object v10, v10, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$EventQueueThread;->this$0:Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;

    .line 509
    invoke-static {v10}, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->access$1100(Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;)J

    move-result-wide v10

    :goto_8
    move-wide v8, v10

    .line 512
    .local v8, "numFrames":J
    move-object v10, v0

    iget-object v10, v10, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$EventQueueThread;->this$0:Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;

    move-wide v11, v8

    const-wide/16 v13, 0x1

    sub-long/2addr v11, v13

    long-to-double v11, v11

    move-wide v13, v5

    mul-double/2addr v11, v13

    move-wide v13, v2

    add-double/2addr v11, v13

    move-object v13, v0

    iget-object v13, v13, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$EventQueueThread;->this$0:Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;

    .line 513
    invoke-static {v13}, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->access$1000(Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;)D

    move-result-wide v13

    sub-double/2addr v11, v13

    move-wide v13, v8

    long-to-double v13, v13

    div-double/2addr v11, v13

    .line 512
    invoke-static {v10, v11, v12}, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->access$1202(Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;D)D

    move-result-wide v10

    .line 517
    move-object v10, v0

    iget-object v10, v10, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$EventQueueThread;->this$0:Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;

    invoke-static {v10}, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->access$1200(Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;)D

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmpl-double v10, v10, v12

    if-lez v10, :cond_6

    move-object v10, v0

    iget-object v10, v10, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$EventQueueThread;->this$0:Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;

    .line 518
    invoke-static {v10}, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->access$1300(Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;)D

    move-result-wide v10

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    move-object v14, v0

    iget-object v14, v14, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$EventQueueThread;->this$0:Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;

    invoke-static {v14}, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->access$1200(Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;)D

    move-result-wide v14

    div-double/2addr v12, v14

    sub-double/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->abs(D)D

    move-result-wide v10

    const-wide/high16 v12, 0x3fe0000000000000L    # 0.5

    cmpl-double v10, v10, v12

    if-lez v10, :cond_6

    .line 519
    move-object v10, v0

    iget-object v10, v10, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$EventQueueThread;->this$0:Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;

    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    move-object v13, v0

    iget-object v13, v13, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$EventQueueThread;->this$0:Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;

    invoke-static {v13}, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->access$1200(Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;)D

    move-result-wide v13

    div-double/2addr v11, v13

    invoke-static {v10, v11, v12}, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->access$1302(Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;D)D

    move-result-wide v10

    .line 520
    const/4 v10, 0x1

    move v4, v10

    goto/16 :goto_4

    .line 505
    .end local v7    # "movingAverageLength":I
    .end local v8    # "numFrames":J
    :cond_8
    const/16 v10, 0x1e

    goto :goto_7

    .line 509
    .restart local v7    # "movingAverageLength":I
    :cond_9
    move v10, v7

    int-to-long v10, v10

    goto :goto_8

    .line 531
    .end local v7    # "movingAverageLength":I
    .local v5, "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Ljava/lang/ref/WeakReference<Lcom/sun/media/jfxmedia/events/VideoFrameRateListener;>;>;"
    .restart local v6    # "l":Lcom/sun/media/jfxmedia/events/VideoFrameRateListener;
    :cond_a
    move-object v10, v5

    invoke-interface {v10}, Ljava/util/ListIterator;->remove()V

    goto/16 :goto_6

    .line 537
    .end local v5    # "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Ljava/lang/ref/WeakReference<Lcom/sun/media/jfxmedia/events/VideoFrameRateListener;>;>;"
    .end local v6    # "l":Lcom/sun/media/jfxmedia/events/VideoFrameRateListener;
    :cond_b
    move-object v10, v0

    iget-object v10, v10, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$EventQueueThread;->this$0:Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;

    move-wide v11, v2

    invoke-static {v10, v11, v12}, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->access$1002(Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;D)D

    move-result-wide v10

    .line 538
    move-object v10, v0

    iget-object v10, v10, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$EventQueueThread;->this$0:Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;

    invoke-static {v10}, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->access$1108(Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;)J

    move-result-wide v10

    goto/16 :goto_3
.end method

.method private HandleStateEvents(Lcom/sun/media/jfxmedia/events/PlayerStateEvent;)V
    .locals 8

    .prologue
    .line 544
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$EventQueueThread;
    move-object v1, p1

    .local v1, "evt":Lcom/sun/media/jfxmedia/events/PlayerStateEvent;
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$EventQueueThread;->this$0:Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;

    move-object v5, v1

    invoke-virtual {v5}, Lcom/sun/media/jfxmedia/events/PlayerStateEvent;->getState()Lcom/sun/media/jfxmedia/events/PlayerStateEvent$PlayerState;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->access$1502(Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;Lcom/sun/media/jfxmedia/events/PlayerStateEvent$PlayerState;)Lcom/sun/media/jfxmedia/events/PlayerStateEvent$PlayerState;

    move-result-object v4

    .line 546
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$EventQueueThread;->this$0:Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;

    sget-object v5, Lcom/sun/media/jfxmedia/events/PlayerStateEvent$PlayerState;->PLAYING:Lcom/sun/media/jfxmedia/events/PlayerStateEvent$PlayerState;

    move-object v6, v1

    invoke-virtual {v6}, Lcom/sun/media/jfxmedia/events/PlayerStateEvent;->getState()Lcom/sun/media/jfxmedia/events/PlayerStateEvent$PlayerState;

    move-result-object v6

    if-ne v5, v6, :cond_0

    const/4 v5, 0x1

    :goto_0
    invoke-static {v4, v5}, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->access$902(Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;Z)Z

    move-result v4

    .line 548
    sget-object v4, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$1;->$SwitchMap$com$sun$media$jfxmedia$events$PlayerStateEvent$PlayerState:[I

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$EventQueueThread;->this$0:Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;

    invoke-static {v5}, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->access$1500(Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;)Lcom/sun/media/jfxmedia/events/PlayerStateEvent$PlayerState;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sun/media/jfxmedia/events/PlayerStateEvent$PlayerState;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 570
    :goto_1
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$EventQueueThread;->this$0:Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;

    invoke-static {v4}, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->access$1800(Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;)Ljava/util/List;

    move-result-object v4

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v2, v5

    monitor-enter v4

    .line 571
    move-object v4, v0

    :try_start_0
    iget-object v4, v4, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$EventQueueThread;->this$0:Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;

    invoke-static {v4}, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->access$1900(Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 573
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$EventQueueThread;->this$0:Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;

    invoke-static {v4}, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->access$1800(Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;)Ljava/util/List;

    move-result-object v4

    move-object v5, v1

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v4

    .line 574
    move-object v4, v2

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 619
    :goto_2
    return-void

    .line 546
    :cond_0
    const/4 v5, 0x0

    goto :goto_0

    .line 550
    :pswitch_0
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$EventQueueThread;->this$0:Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;

    invoke-static {v4}, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->access$1600(Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;)V

    .line 551
    move-object v4, v0

    invoke-direct {v4}, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$EventQueueThread;->sendFakeBufferProgressEvent()V

    .line 552
    goto :goto_1

    .line 554
    :pswitch_1
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$EventQueueThread;->this$0:Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;

    invoke-static {v4}, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->access$1700(Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 555
    goto :goto_1

    .line 560
    :pswitch_2
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$EventQueueThread;->this$0:Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;

    invoke-virtual {v4}, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->doMediaPulseTask()Z

    move-result v4

    .line 564
    :pswitch_3
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$EventQueueThread;->this$0:Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;

    invoke-static {v4}, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->access$1700(Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 565
    goto :goto_1

    .line 576
    :cond_1
    move-object v4, v2

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 578
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$EventQueueThread;->this$0:Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;

    invoke-static {v4}, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->access$1900(Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v4

    move-object v2, v4

    .local v2, "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Ljava/lang/ref/WeakReference<Lcom/sun/media/jfxmedia/events/PlayerStateListener;>;>;"
    :goto_3
    move-object v4, v2

    invoke-interface {v4}, Ljava/util/ListIterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 579
    move-object v4, v2

    invoke-interface {v4}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/media/jfxmedia/events/PlayerStateListener;

    move-object v3, v4

    .line 580
    .local v3, "listener":Lcom/sun/media/jfxmedia/events/PlayerStateListener;
    move-object v4, v3

    if-eqz v4, :cond_2

    .line 581
    sget-object v4, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$1;->$SwitchMap$com$sun$media$jfxmedia$events$PlayerStateEvent$PlayerState:[I

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$EventQueueThread;->this$0:Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;

    invoke-static {v5}, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->access$1500(Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;)Lcom/sun/media/jfxmedia/events/PlayerStateEvent$PlayerState;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sun/media/jfxmedia/events/PlayerStateEvent$PlayerState;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_1

    .line 613
    .line 618
    :goto_4
    goto :goto_3

    .line 576
    .end local v2    # "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Ljava/lang/ref/WeakReference<Lcom/sun/media/jfxmedia/events/PlayerStateListener;>;>;"
    .end local v3    # "listener":Lcom/sun/media/jfxmedia/events/PlayerStateListener;
    :catchall_0
    move-exception v4

    move-object v3, v4

    move-object v4, v2

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v4, v3

    throw v4

    .line 583
    .restart local v2    # "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Ljava/lang/ref/WeakReference<Lcom/sun/media/jfxmedia/events/PlayerStateListener;>;>;"
    .restart local v3    # "listener":Lcom/sun/media/jfxmedia/events/PlayerStateListener;
    :pswitch_4
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$EventQueueThread;->this$0:Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;

    invoke-static {v4}, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->access$1600(Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;)V

    .line 584
    move-object v4, v0

    invoke-direct {v4}, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$EventQueueThread;->sendFakeBufferProgressEvent()V

    .line 585
    move-object v4, v3

    move-object v5, v1

    invoke-interface {v4, v5}, Lcom/sun/media/jfxmedia/events/PlayerStateListener;->onReady(Lcom/sun/media/jfxmedia/events/PlayerStateEvent;)V

    .line 586
    goto :goto_4

    .line 589
    :pswitch_5
    move-object v4, v3

    move-object v5, v1

    invoke-interface {v4, v5}, Lcom/sun/media/jfxmedia/events/PlayerStateListener;->onPlaying(Lcom/sun/media/jfxmedia/events/PlayerStateEvent;)V

    .line 590
    goto :goto_4

    .line 593
    :pswitch_6
    move-object v4, v3

    move-object v5, v1

    invoke-interface {v4, v5}, Lcom/sun/media/jfxmedia/events/PlayerStateListener;->onPause(Lcom/sun/media/jfxmedia/events/PlayerStateEvent;)V

    .line 594
    goto :goto_4

    .line 597
    :pswitch_7
    move-object v4, v3

    move-object v5, v1

    invoke-interface {v4, v5}, Lcom/sun/media/jfxmedia/events/PlayerStateListener;->onStop(Lcom/sun/media/jfxmedia/events/PlayerStateEvent;)V

    .line 598
    goto :goto_4

    .line 601
    :pswitch_8
    move-object v4, v3

    move-object v5, v1

    invoke-interface {v4, v5}, Lcom/sun/media/jfxmedia/events/PlayerStateListener;->onStall(Lcom/sun/media/jfxmedia/events/PlayerStateEvent;)V

    .line 602
    goto :goto_4

    .line 605
    :pswitch_9
    move-object v4, v3

    move-object v5, v1

    invoke-interface {v4, v5}, Lcom/sun/media/jfxmedia/events/PlayerStateListener;->onFinish(Lcom/sun/media/jfxmedia/events/PlayerStateEvent;)V

    .line 606
    goto :goto_4

    .line 609
    :pswitch_a
    move-object v4, v3

    move-object v5, v1

    invoke-interface {v4, v5}, Lcom/sun/media/jfxmedia/events/PlayerStateListener;->onHalt(Lcom/sun/media/jfxmedia/events/PlayerStateEvent;)V

    .line 610
    goto :goto_4

    .line 616
    :cond_2
    move-object v4, v2

    invoke-interface {v4}, Ljava/util/ListIterator;->remove()V

    goto :goto_4

    .line 619
    .end local v3    # "listener":Lcom/sun/media/jfxmedia/events/PlayerStateListener;
    :cond_3
    goto/16 :goto_2

    .line 548
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch

    .line 581
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
        :pswitch_7
        :pswitch_9
        :pswitch_6
        :pswitch_8
        :pswitch_a
    .end packed-switch
.end method

.method private HandleTrackEvents(Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$TrackEvent;)V
    .locals 6

    .prologue
    .line 655
    move-object v1, p0

    .local v1, "this":Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$EventQueueThread;
    move-object v2, p1

    .local v2, "evt":Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$TrackEvent;
    move-object v3, v1

    iget-object v3, v3, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$EventQueueThread;->this$0:Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;

    invoke-static {v3}, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->access$2300(Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;)Lcom/sun/media/jfxmediaimpl/NativeMedia;

    move-result-object v3

    move-object v4, v2

    invoke-virtual {v4}, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$TrackEvent;->getTrack()Lcom/sun/media/jfxmedia/track/Track;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sun/media/jfxmediaimpl/NativeMedia;->addTrack(Lcom/sun/media/jfxmedia/track/Track;)V

    .line 657
    move-object v3, v2

    invoke-virtual {v3}, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$TrackEvent;->getTrack()Lcom/sun/media/jfxmedia/track/Track;

    move-result-object v3

    instance-of v3, v3, Lcom/sun/media/jfxmedia/track/VideoTrack;

    if-eqz v3, :cond_0

    .line 658
    move-object v3, v1

    iget-object v3, v3, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$EventQueueThread;->this$0:Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;

    move-object v4, v2

    invoke-virtual {v4}, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$TrackEvent;->getTrack()Lcom/sun/media/jfxmedia/track/Track;

    move-result-object v4

    check-cast v4, Lcom/sun/media/jfxmedia/track/VideoTrack;

    invoke-virtual {v4}, Lcom/sun/media/jfxmedia/track/VideoTrack;->getEncodedFrameRate()F

    move-result v4

    float-to-double v4, v4

    invoke-static {v3, v4, v5}, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->access$1402(Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;D)D

    move-result-wide v3

    .line 660
    :cond_0
    return-void
.end method

.method private HandleWarningEvents(Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$WarningEvent;)V
    .locals 6

    .prologue
    .line 674
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$EventQueueThread;
    move-object v1, p1

    .local v1, "evt":Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$WarningEvent;
    const/4 v2, 0x3

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object v4, v1

    invoke-virtual {v4}, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$WarningEvent;->getSource()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v4}, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$WarningEvent;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sun/media/jfxmedia/logging/Logger;->logMsg(ILjava/lang/String;)V

    .line 675
    return-void
.end method

.method static synthetic access$3000(Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$EventQueueThread;)Ljava/util/concurrent/BlockingQueue;
    .locals 2

    .prologue
    .line 380
    move-object v0, p0

    .local v0, "x0":Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$EventQueueThread;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$EventQueueThread;->eventQueue:Ljava/util/concurrent/BlockingQueue;

    move-object v0, v1

    .end local v0    # "x0":Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$EventQueueThread;
    return-object v0
.end method

.method private sendFakeBufferProgressEvent()V
    .locals 15

    .prologue
    .line 750
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$EventQueueThread;
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$EventQueueThread;->this$0:Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;

    invoke-static {v3}, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->access$2300(Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;)Lcom/sun/media/jfxmediaimpl/NativeMedia;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sun/media/jfxmediaimpl/NativeMedia;->getLocator()Lcom/sun/media/jfxmedia/locator/Locator;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sun/media/jfxmedia/locator/Locator;->getContentType()Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    .line 751
    .local v1, "contentType":Ljava/lang/String;
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$EventQueueThread;->this$0:Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;

    invoke-static {v3}, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->access$2300(Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;)Lcom/sun/media/jfxmediaimpl/NativeMedia;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sun/media/jfxmediaimpl/NativeMedia;->getLocator()Lcom/sun/media/jfxmedia/locator/Locator;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sun/media/jfxmedia/locator/Locator;->getProtocol()Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 752
    .local v2, "protocol":Ljava/lang/String;
    move-object v3, v1

    if-eqz v3, :cond_0

    move-object v3, v1

    const-string v4, "audio/mpegurl"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    move-object v3, v1

    const-string v4, "application/vnd.apple.mpegurl"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    move-object v3, v2

    if-eqz v3, :cond_2

    move-object v3, v2

    const-string v4, "http"

    .line 753
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 754
    :cond_1
    move-object v3, v0

    new-instance v4, Lcom/sun/media/jfxmedia/events/BufferProgressEvent;

    move-object v14, v4

    move-object v4, v14

    move-object v5, v14

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$EventQueueThread;->this$0:Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;

    invoke-virtual {v6}, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->getDuration()D

    move-result-wide v6

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x1

    const-wide/16 v12, 0x1

    invoke-direct/range {v5 .. v13}, Lcom/sun/media/jfxmedia/events/BufferProgressEvent;-><init>(DJJJ)V

    invoke-direct {v3, v4}, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$EventQueueThread;->HandleBufferEvents(Lcom/sun/media/jfxmedia/events/BufferProgressEvent;)V

    .line 756
    :cond_2
    return-void
.end method


# virtual methods
.method public postEvent(Lcom/sun/media/jfxmedia/events/PlayerEvent;)V
    .locals 4

    .prologue
    .line 732
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$EventQueueThread;
    move-object v1, p1

    .local v1, "event":Lcom/sun/media/jfxmedia/events/PlayerEvent;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$EventQueueThread;->eventQueue:Ljava/util/concurrent/BlockingQueue;

    if-eqz v2, :cond_0

    .line 733
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$EventQueueThread;->eventQueue:Ljava/util/concurrent/BlockingQueue;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    move-result v2

    .line 735
    :cond_0
    return-void
.end method

.method public run()V
    .locals 7

    .prologue
    .line 393
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$EventQueueThread;
    :goto_0
    move-object v3, v0

    iget-boolean v3, v3, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$EventQueueThread;->stopped:Z

    if-nez v3, :cond_b

    .line 397
    move-object v3, v0

    :try_start_0
    iget-object v3, v3, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$EventQueueThread;->eventQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v3}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sun/media/jfxmedia/events/PlayerEvent;

    move-object v1, v3

    .line 399
    .local v1, "evt":Lcom/sun/media/jfxmedia/events/PlayerEvent;
    move-object v3, v0

    iget-boolean v3, v3, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$EventQueueThread;->stopped:Z

    if-nez v3, :cond_0

    .line 400
    move-object v3, v1

    instance-of v3, v3, Lcom/sun/media/jfxmedia/events/NewFrameEvent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v3, :cond_2

    .line 402
    move-object v3, v0

    move-object v4, v1

    :try_start_1
    check-cast v4, Lcom/sun/media/jfxmedia/events/NewFrameEvent;

    invoke-direct {v3, v4}, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$EventQueueThread;->HandleRendererEvents(Lcom/sun/media/jfxmedia/events/NewFrameEvent;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 407
    .line 434
    :cond_0
    :goto_1
    goto :goto_0

    .line 403
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 404
    .local v2, "t":Ljava/lang/Throwable;
    const/4 v3, 0x4

    :try_start_2
    invoke-static {v3}, Lcom/sun/media/jfxmedia/logging/Logger;->canLog(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 405
    const/4 v3, 0x4

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Caught exception in HandleRendererEvents: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v2

    invoke-virtual {v5}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sun/media/jfxmedia/logging/Logger;->logMsg(ILjava/lang/String;)V

    .line 407
    :cond_1
    goto :goto_1

    .line 408
    .end local v2    # "t":Ljava/lang/Throwable;
    :cond_2
    move-object v3, v1

    instance-of v3, v3, Lcom/sun/media/jfxmedia/events/PlayerStateEvent;

    if-eqz v3, :cond_3

    .line 409
    move-object v3, v0

    move-object v4, v1

    check-cast v4, Lcom/sun/media/jfxmedia/events/PlayerStateEvent;

    invoke-direct {v3, v4}, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$EventQueueThread;->HandleStateEvents(Lcom/sun/media/jfxmedia/events/PlayerStateEvent;)V

    goto :goto_1

    .line 410
    :cond_3
    move-object v3, v1

    instance-of v3, v3, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$FrameSizeChangedEvent;

    if-eqz v3, :cond_4

    .line 411
    move-object v3, v0

    move-object v4, v1

    check-cast v4, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$FrameSizeChangedEvent;

    invoke-direct {v3, v4}, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$EventQueueThread;->HandleFrameSizeChangedEvents(Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$FrameSizeChangedEvent;)V

    goto :goto_1

    .line 412
    :cond_4
    move-object v3, v1

    instance-of v3, v3, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$TrackEvent;

    if-eqz v3, :cond_5

    .line 413
    move-object v3, v0

    move-object v4, v1

    check-cast v4, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$TrackEvent;

    invoke-direct {v3, v4}, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$EventQueueThread;->HandleTrackEvents(Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$TrackEvent;)V

    goto :goto_1

    .line 414
    :cond_5
    move-object v3, v1

    instance-of v3, v3, Lcom/sun/media/jfxmedia/events/MarkerEvent;

    if-eqz v3, :cond_6

    .line 415
    move-object v3, v0

    move-object v4, v1

    check-cast v4, Lcom/sun/media/jfxmedia/events/MarkerEvent;

    invoke-direct {v3, v4}, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$EventQueueThread;->HandleMarkerEvents(Lcom/sun/media/jfxmedia/events/MarkerEvent;)V

    goto :goto_1

    .line 416
    :cond_6
    move-object v3, v1

    instance-of v3, v3, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$WarningEvent;

    if-eqz v3, :cond_7

    .line 417
    move-object v3, v0

    move-object v4, v1

    check-cast v4, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$WarningEvent;

    invoke-direct {v3, v4}, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$EventQueueThread;->HandleWarningEvents(Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$WarningEvent;)V

    goto :goto_1

    .line 418
    :cond_7
    move-object v3, v1

    instance-of v3, v3, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$PlayerTimeEvent;

    if-eqz v3, :cond_8

    .line 419
    move-object v3, v0

    move-object v4, v1

    check-cast v4, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$PlayerTimeEvent;

    invoke-direct {v3, v4}, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$EventQueueThread;->HandlePlayerTimeEvents(Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$PlayerTimeEvent;)V

    goto :goto_1

    .line 420
    :cond_8
    move-object v3, v1

    instance-of v3, v3, Lcom/sun/media/jfxmedia/events/BufferProgressEvent;

    if-eqz v3, :cond_9

    .line 421
    move-object v3, v0

    move-object v4, v1

    check-cast v4, Lcom/sun/media/jfxmedia/events/BufferProgressEvent;

    invoke-direct {v3, v4}, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$EventQueueThread;->HandleBufferEvents(Lcom/sun/media/jfxmedia/events/BufferProgressEvent;)V

    goto/16 :goto_1

    .line 422
    :cond_9
    move-object v3, v1

    instance-of v3, v3, Lcom/sun/media/jfxmedia/events/AudioSpectrumEvent;

    if-eqz v3, :cond_a

    .line 423
    move-object v3, v0

    move-object v4, v1

    check-cast v4, Lcom/sun/media/jfxmedia/events/AudioSpectrumEvent;

    invoke-direct {v3, v4}, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$EventQueueThread;->HandleAudioSpectrumEvents(Lcom/sun/media/jfxmedia/events/AudioSpectrumEvent;)V

    goto/16 :goto_1

    .line 424
    :cond_a
    move-object v3, v1

    instance-of v3, v3, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$MediaErrorEvent;

    if-eqz v3, :cond_0

    .line 425
    move-object v3, v0

    move-object v4, v1

    check-cast v4, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$MediaErrorEvent;

    invoke-direct {v3, v4}, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$EventQueueThread;->HandleErrorEvents(Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$MediaErrorEvent;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_1

    .line 428
    .end local v1    # "evt":Lcom/sun/media/jfxmedia/events/PlayerEvent;
    :catch_1
    move-exception v3

    move-object v1, v3

    .line 434
    goto/16 :goto_0

    .line 437
    :cond_b
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$EventQueueThread;->eventQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v3}, Ljava/util/concurrent/BlockingQueue;->clear()V

    .line 438
    return-void
.end method

.method public terminateLoop()V
    .locals 6

    .prologue
    .line 741
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$EventQueueThread;
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$EventQueueThread;->stopped:Z

    .line 744
    move-object v2, v0

    :try_start_0
    iget-object v2, v2, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$EventQueueThread;->eventQueue:Ljava/util/concurrent/BlockingQueue;

    new-instance v3, Lcom/sun/media/jfxmedia/events/PlayerEvent;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Lcom/sun/media/jfxmedia/events/PlayerEvent;-><init>()V

    invoke-interface {v2, v3}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 745
    .line 746
    :goto_0
    return-void

    .line 745
    :catch_0
    move-exception v2

    move-object v1, v2

    goto :goto_0
.end method
