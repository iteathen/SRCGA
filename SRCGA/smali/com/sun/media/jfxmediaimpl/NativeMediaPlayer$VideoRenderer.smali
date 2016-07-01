.class Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$VideoRenderer;
.super Ljava/lang/Object;
.source "NativeMediaPlayer.java"

# interfaces
.implements Lcom/sun/media/jfxmedia/control/VideoRenderControl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VideoRenderer"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;


# direct methods
.method private constructor <init>(Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;)V
    .locals 4

    .prologue
    .line 298
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$VideoRenderer;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$VideoRenderer;->this$0:Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$1;)V
    .locals 5

    .prologue
    .line 298
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$VideoRenderer;
    move-object v1, p1

    .local v1, "x0":Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;
    move-object v2, p2

    .local v2, "x1":Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$1;
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$VideoRenderer;-><init>(Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;)V

    return-void
.end method


# virtual methods
.method public addVideoFrameRateListener(Lcom/sun/media/jfxmedia/events/VideoFrameRateListener;)V
    .locals 7

    .prologue
    .line 343
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$VideoRenderer;
    move-object v1, p1

    .local v1, "listener":Lcom/sun/media/jfxmedia/events/VideoFrameRateListener;
    move-object v2, v1

    if-eqz v2, :cond_0

    .line 344
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$VideoRenderer;->this$0:Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;

    invoke-static {v2}, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->access$400(Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;)Ljava/util/List;

    move-result-object v2

    new-instance v3, Ljava/lang/ref/WeakReference;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v1

    invoke-direct {v4, v5}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 346
    :cond_0
    return-void
.end method

.method public addVideoRendererListener(Lcom/sun/media/jfxmedia/events/VideoRendererListener;)V
    .locals 9

    .prologue
    .line 310
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$VideoRenderer;
    move-object v1, p1

    .local v1, "listener":Lcom/sun/media/jfxmedia/events/VideoRendererListener;
    move-object v4, v1

    if-eqz v4, :cond_1

    .line 311
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$VideoRenderer;->this$0:Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;

    invoke-static {v4}, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->access$100(Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;)Ljava/lang/Object;

    move-result-object v4

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v2, v5

    monitor-enter v4

    .line 316
    move-object v4, v0

    :try_start_0
    iget-object v4, v4, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$VideoRenderer;->this$0:Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;

    invoke-static {v4}, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->access$200(Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;)Lcom/sun/media/jfxmedia/events/NewFrameEvent;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 317
    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$VideoRenderer;->this$0:Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;

    invoke-static {v5}, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->access$200(Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;)Lcom/sun/media/jfxmedia/events/NewFrameEvent;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/sun/media/jfxmedia/events/VideoRendererListener;->videoFrameUpdated(Lcom/sun/media/jfxmedia/events/NewFrameEvent;)V

    .line 319
    :cond_0
    move-object v4, v2

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 320
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$VideoRenderer;->this$0:Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;

    invoke-static {v4}, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->access$300(Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;)Ljava/util/List;

    move-result-object v4

    new-instance v5, Ljava/lang/ref/WeakReference;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v1

    invoke-direct {v6, v7}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v4

    .line 322
    :cond_1
    return-void

    .line 319
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
.end method

.method public getFrameHeight()I
    .locals 2

    .prologue
    .line 367
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$VideoRenderer;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$VideoRenderer;->this$0:Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;

    invoke-static {v1}, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->access$600(Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;)I

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$VideoRenderer;
    return v0
.end method

.method public getFrameWidth()I
    .locals 2

    .prologue
    .line 362
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$VideoRenderer;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$VideoRenderer;->this$0:Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;

    invoke-static {v1}, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->access$500(Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;)I

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$VideoRenderer;
    return v0
.end method

.method public removeVideoFrameRateListener(Lcom/sun/media/jfxmedia/events/VideoFrameRateListener;)V
    .locals 6

    .prologue
    .line 350
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$VideoRenderer;
    move-object v1, p1

    .local v1, "listener":Lcom/sun/media/jfxmedia/events/VideoFrameRateListener;
    move-object v4, v1

    if-eqz v4, :cond_2

    .line 351
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$VideoRenderer;->this$0:Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;

    invoke-static {v4}, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->access$400(Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v4

    move-object v2, v4

    .local v2, "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Ljava/lang/ref/WeakReference<Lcom/sun/media/jfxmedia/events/VideoFrameRateListener;>;>;"
    :goto_0
    move-object v4, v2

    invoke-interface {v4}, Ljava/util/ListIterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 352
    move-object v4, v2

    invoke-interface {v4}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/media/jfxmedia/events/VideoFrameRateListener;

    move-object v3, v4

    .line 353
    .local v3, "l":Lcom/sun/media/jfxmedia/events/VideoFrameRateListener;
    move-object v4, v3

    if-eqz v4, :cond_0

    move-object v4, v3

    move-object v5, v1

    if-ne v4, v5, :cond_1

    .line 354
    :cond_0
    move-object v4, v2

    invoke-interface {v4}, Ljava/util/ListIterator;->remove()V

    .line 356
    :cond_1
    goto :goto_0

    .line 358
    .end local v2    # "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Ljava/lang/ref/WeakReference<Lcom/sun/media/jfxmedia/events/VideoFrameRateListener;>;>;"
    .end local v3    # "l":Lcom/sun/media/jfxmedia/events/VideoFrameRateListener;
    :cond_2
    return-void
.end method

.method public removeVideoRendererListener(Lcom/sun/media/jfxmedia/events/VideoRendererListener;)V
    .locals 6

    .prologue
    .line 331
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$VideoRenderer;
    move-object v1, p1

    .local v1, "listener":Lcom/sun/media/jfxmedia/events/VideoRendererListener;
    move-object v4, v1

    if-eqz v4, :cond_2

    .line 332
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$VideoRenderer;->this$0:Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;

    invoke-static {v4}, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;->access$300(Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v4

    move-object v2, v4

    .local v2, "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Ljava/lang/ref/WeakReference<Lcom/sun/media/jfxmedia/events/VideoRendererListener;>;>;"
    :goto_0
    move-object v4, v2

    invoke-interface {v4}, Ljava/util/ListIterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 333
    move-object v4, v2

    invoke-interface {v4}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/media/jfxmedia/events/VideoRendererListener;

    move-object v3, v4

    .line 334
    .local v3, "l":Lcom/sun/media/jfxmedia/events/VideoRendererListener;
    move-object v4, v3

    if-eqz v4, :cond_0

    move-object v4, v3

    move-object v5, v1

    if-ne v4, v5, :cond_1

    .line 335
    :cond_0
    move-object v4, v2

    invoke-interface {v4}, Ljava/util/ListIterator;->remove()V

    .line 337
    :cond_1
    goto :goto_0

    .line 339
    .end local v2    # "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Ljava/lang/ref/WeakReference<Lcom/sun/media/jfxmedia/events/VideoRendererListener;>;>;"
    .end local v3    # "l":Lcom/sun/media/jfxmedia/events/VideoRendererListener;
    :cond_2
    return-void
.end method
