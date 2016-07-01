.class Ljavafx/scene/media/MediaView$1;
.super Ljavafx/beans/property/ObjectPropertyBase;
.source "MediaView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/scene/media/MediaView;->mediaPlayerProperty()Ljavafx/beans/property/ObjectProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljavafx/beans/property/ObjectPropertyBase",
        "<",
        "Ljavafx/scene/media/MediaPlayer;",
        ">;"
    }
.end annotation


# instance fields
.field oldValue:Ljavafx/scene/media/MediaPlayer;

.field final synthetic this$0:Ljavafx/scene/media/MediaView;


# direct methods
.method constructor <init>(Ljavafx/scene/media/MediaView;)V
    .locals 4

    .prologue
    .line 342
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaView$1;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/media/MediaView;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/media/MediaView$1;->this$0:Ljavafx/scene/media/MediaView;

    move-object v2, v0

    invoke-direct {v2}, Ljavafx/beans/property/ObjectPropertyBase;-><init>()V

    .line 343
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Ljavafx/scene/media/MediaView$1;->oldValue:Ljavafx/scene/media/MediaPlayer;

    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 383
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaView$1;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/media/MediaView$1;->this$0:Ljavafx/scene/media/MediaView;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/media/MediaView$1;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 388
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaView$1;
    const-string v1, "mediaPlayer"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/media/MediaView$1;
    return-object v0
.end method

.method protected invalidated()V
    .locals 5

    .prologue
    .line 345
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaView$1;
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/media/MediaView$1;->oldValue:Ljavafx/scene/media/MediaPlayer;

    if-eqz v3, :cond_2

    .line 346
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/media/MediaView$1;->oldValue:Ljavafx/scene/media/MediaPlayer;

    invoke-virtual {v3}, Ljavafx/scene/media/MediaPlayer;->getMedia()Ljavafx/scene/media/Media;

    move-result-object v3

    move-object v1, v3

    .line 347
    .local v1, "media":Ljavafx/scene/media/Media;
    move-object v3, v1

    if-eqz v3, :cond_0

    .line 348
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/media/Media;->widthProperty()Ljavafx/beans/property/ReadOnlyIntegerProperty;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/media/MediaView$1;->this$0:Ljavafx/scene/media/MediaView;

    invoke-static {v4}, Ljavafx/scene/media/MediaView;->access$200(Ljavafx/scene/media/MediaView;)Ljavafx/beans/InvalidationListener;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljavafx/beans/property/ReadOnlyIntegerProperty;->removeListener(Ljavafx/beans/InvalidationListener;)V

    .line 349
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/media/Media;->heightProperty()Ljavafx/beans/property/ReadOnlyIntegerProperty;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/media/MediaView$1;->this$0:Ljavafx/scene/media/MediaView;

    invoke-static {v4}, Ljavafx/scene/media/MediaView;->access$200(Ljavafx/scene/media/MediaView;)Ljavafx/beans/InvalidationListener;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljavafx/beans/property/ReadOnlyIntegerProperty;->removeListener(Ljavafx/beans/InvalidationListener;)V

    .line 351
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/media/MediaView$1;->this$0:Ljavafx/scene/media/MediaView;

    invoke-static {v3}, Ljavafx/scene/media/MediaView;->access$300(Ljavafx/scene/media/MediaView;)Lcom/sun/media/jfxmedia/events/VideoFrameRateListener;

    move-result-object v3

    if-eqz v3, :cond_1

    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/media/MediaView$1;->this$0:Ljavafx/scene/media/MediaView;

    invoke-virtual {v3}, Ljavafx/scene/media/MediaView;->getMediaPlayer()Ljavafx/scene/media/MediaPlayer;

    move-result-object v3

    invoke-virtual {v3}, Ljavafx/scene/media/MediaPlayer;->retrieveJfxPlayer()Lcom/sun/media/jfxmedia/MediaPlayer;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 352
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/media/MediaView$1;->this$0:Ljavafx/scene/media/MediaView;

    invoke-virtual {v3}, Ljavafx/scene/media/MediaView;->getMediaPlayer()Ljavafx/scene/media/MediaPlayer;

    move-result-object v3

    invoke-virtual {v3}, Ljavafx/scene/media/MediaPlayer;->retrieveJfxPlayer()Lcom/sun/media/jfxmedia/MediaPlayer;

    move-result-object v3

    invoke-interface {v3}, Lcom/sun/media/jfxmedia/MediaPlayer;->getVideoRenderControl()Lcom/sun/media/jfxmedia/control/VideoRenderControl;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/media/MediaView$1;->this$0:Ljavafx/scene/media/MediaView;

    invoke-static {v4}, Ljavafx/scene/media/MediaView;->access$300(Ljavafx/scene/media/MediaView;)Lcom/sun/media/jfxmedia/events/VideoFrameRateListener;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/sun/media/jfxmedia/control/VideoRenderControl;->removeVideoFrameRateListener(Lcom/sun/media/jfxmedia/events/VideoFrameRateListener;)V

    .line 354
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/media/MediaView$1;->oldValue:Ljavafx/scene/media/MediaPlayer;

    invoke-virtual {v3}, Ljavafx/scene/media/MediaPlayer;->errorProperty()Ljavafx/beans/property/ReadOnlyObjectProperty;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/media/MediaView$1;->this$0:Ljavafx/scene/media/MediaView;

    invoke-static {v4}, Ljavafx/scene/media/MediaView;->access$400(Ljavafx/scene/media/MediaView;)Ljavafx/beans/InvalidationListener;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljavafx/beans/property/ReadOnlyObjectProperty;->removeListener(Ljavafx/beans/InvalidationListener;)V

    .line 355
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/media/MediaView$1;->oldValue:Ljavafx/scene/media/MediaPlayer;

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/media/MediaView$1;->this$0:Ljavafx/scene/media/MediaView;

    invoke-static {v4}, Ljavafx/scene/media/MediaView;->access$000(Ljavafx/scene/media/MediaView;)Ljavafx/scene/media/MediaView;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljavafx/scene/media/MediaPlayer;->removeView(Ljavafx/scene/media/MediaView;)V

    .line 362
    .end local v1    # "media":Ljavafx/scene/media/Media;
    :cond_2
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/media/MediaView$1;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavafx/scene/media/MediaPlayer;

    move-object v1, v3

    .line 363
    .local v1, "newValue":Ljavafx/scene/media/MediaPlayer;
    move-object v3, v1

    if-eqz v3, :cond_4

    .line 364
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/media/MediaView$1;->this$0:Ljavafx/scene/media/MediaView;

    invoke-static {v4}, Ljavafx/scene/media/MediaView;->access$000(Ljavafx/scene/media/MediaView;)Ljavafx/scene/media/MediaView;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljavafx/scene/media/MediaPlayer;->addView(Ljavafx/scene/media/MediaView;)V

    .line 365
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/media/MediaPlayer;->errorProperty()Ljavafx/beans/property/ReadOnlyObjectProperty;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/media/MediaView$1;->this$0:Ljavafx/scene/media/MediaView;

    invoke-static {v4}, Ljavafx/scene/media/MediaView;->access$400(Ljavafx/scene/media/MediaView;)Ljavafx/beans/InvalidationListener;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljavafx/beans/property/ReadOnlyObjectProperty;->addListener(Ljavafx/beans/InvalidationListener;)V

    .line 366
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/media/MediaView$1;->this$0:Ljavafx/scene/media/MediaView;

    invoke-static {v3}, Ljavafx/scene/media/MediaView;->access$300(Ljavafx/scene/media/MediaView;)Lcom/sun/media/jfxmedia/events/VideoFrameRateListener;

    move-result-object v3

    if-eqz v3, :cond_5

    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/media/MediaView$1;->this$0:Ljavafx/scene/media/MediaView;

    invoke-virtual {v3}, Ljavafx/scene/media/MediaView;->getMediaPlayer()Ljavafx/scene/media/MediaPlayer;

    move-result-object v3

    invoke-virtual {v3}, Ljavafx/scene/media/MediaPlayer;->retrieveJfxPlayer()Lcom/sun/media/jfxmedia/MediaPlayer;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 367
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/media/MediaView$1;->this$0:Ljavafx/scene/media/MediaView;

    invoke-virtual {v3}, Ljavafx/scene/media/MediaView;->getMediaPlayer()Ljavafx/scene/media/MediaPlayer;

    move-result-object v3

    invoke-virtual {v3}, Ljavafx/scene/media/MediaPlayer;->retrieveJfxPlayer()Lcom/sun/media/jfxmedia/MediaPlayer;

    move-result-object v3

    invoke-interface {v3}, Lcom/sun/media/jfxmedia/MediaPlayer;->getVideoRenderControl()Lcom/sun/media/jfxmedia/control/VideoRenderControl;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/media/MediaView$1;->this$0:Ljavafx/scene/media/MediaView;

    invoke-static {v4}, Ljavafx/scene/media/MediaView;->access$300(Ljavafx/scene/media/MediaView;)Lcom/sun/media/jfxmedia/events/VideoFrameRateListener;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/sun/media/jfxmedia/control/VideoRenderControl;->addVideoFrameRateListener(Lcom/sun/media/jfxmedia/events/VideoFrameRateListener;)V

    .line 371
    :cond_3
    :goto_0
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/media/MediaPlayer;->getMedia()Ljavafx/scene/media/Media;

    move-result-object v3

    move-object v2, v3

    .line 372
    .local v2, "media":Ljavafx/scene/media/Media;
    move-object v3, v2

    if-eqz v3, :cond_4

    .line 373
    move-object v3, v2

    invoke-virtual {v3}, Ljavafx/scene/media/Media;->widthProperty()Ljavafx/beans/property/ReadOnlyIntegerProperty;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/media/MediaView$1;->this$0:Ljavafx/scene/media/MediaView;

    invoke-static {v4}, Ljavafx/scene/media/MediaView;->access$200(Ljavafx/scene/media/MediaView;)Ljavafx/beans/InvalidationListener;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljavafx/beans/property/ReadOnlyIntegerProperty;->addListener(Ljavafx/beans/InvalidationListener;)V

    .line 374
    move-object v3, v2

    invoke-virtual {v3}, Ljavafx/scene/media/Media;->heightProperty()Ljavafx/beans/property/ReadOnlyIntegerProperty;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/media/MediaView$1;->this$0:Ljavafx/scene/media/MediaView;

    invoke-static {v4}, Ljavafx/scene/media/MediaView;->access$200(Ljavafx/scene/media/MediaView;)Ljavafx/beans/InvalidationListener;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljavafx/beans/property/ReadOnlyIntegerProperty;->addListener(Ljavafx/beans/InvalidationListener;)V

    .line 377
    .end local v2    # "media":Ljavafx/scene/media/Media;
    :cond_4
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/media/MediaView$1;->this$0:Ljavafx/scene/media/MediaView;

    sget-object v4, Lcom/sun/javafx/scene/DirtyBits;->MEDIAVIEW_MEDIA:Lcom/sun/javafx/scene/DirtyBits;

    invoke-static {v3, v4}, Ljavafx/scene/media/MediaView;->access$600(Ljavafx/scene/media/MediaView;Lcom/sun/javafx/scene/DirtyBits;)V

    .line 378
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/media/MediaView$1;->this$0:Ljavafx/scene/media/MediaView;

    invoke-static {v3}, Ljavafx/scene/media/MediaView;->access$700(Ljavafx/scene/media/MediaView;)V

    .line 379
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Ljavafx/scene/media/MediaView$1;->oldValue:Ljavafx/scene/media/MediaPlayer;

    .line 380
    return-void

    .line 368
    :cond_5
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/media/MediaView$1;->this$0:Ljavafx/scene/media/MediaView;

    invoke-static {v3}, Ljavafx/scene/media/MediaView;->access$300(Ljavafx/scene/media/MediaView;)Lcom/sun/media/jfxmedia/events/VideoFrameRateListener;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 369
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/media/MediaView$1;->this$0:Ljavafx/scene/media/MediaView;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Ljavafx/scene/media/MediaView;->access$502(Ljavafx/scene/media/MediaView;Z)Z

    move-result v3

    goto :goto_0
.end method
