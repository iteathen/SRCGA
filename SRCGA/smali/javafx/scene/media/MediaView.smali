.class public Ljavafx/scene/media/MediaView;
.super Ljavafx/scene/Node;
.source "MediaView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavafx/scene/media/MediaView$MediaViewFrameTracker;,
        Ljavafx/scene/media/MediaView$MediaErrorInvalidationListener;
    }
.end annotation


# static fields
.field private static final DEFAULT_STYLE_CLASS:Ljava/lang/String; = "media-view"

.field private static final VIDEO_FRAME_RATE_PROPERTY_NAME:Ljava/lang/String; = "jfxmedia.decodedVideoFPS"


# instance fields
.field private decodedFrameCount:I

.field private decodedFrameRateListener:Lcom/sun/media/jfxmedia/events/VideoFrameRateListener;

.field private errorListener:Ljavafx/beans/InvalidationListener;

.field private fitHeight:Ljavafx/beans/property/DoubleProperty;

.field private fitWidth:Ljavafx/beans/property/DoubleProperty;

.field private mediaDimensionListener:Ljavafx/beans/InvalidationListener;

.field private mediaPlayer:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/scene/media/MediaPlayer;",
            ">;"
        }
    .end annotation
.end field

.field private mediaPlayerReady:Z

.field private onError:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/scene/media/MediaErrorEvent;",
            ">;>;"
        }
    .end annotation
.end field

.field private opacityListener:Ljavafx/beans/value/ChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/value/ChangeListener",
            "<",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation
.end field

.field private parentListener:Ljavafx/beans/value/ChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/value/ChangeListener",
            "<",
            "Ljavafx/scene/Parent;",
            ">;"
        }
    .end annotation
.end field

.field private preserveRatio:Ljavafx/beans/property/BooleanProperty;

.field private registerVideoFrameRateListener:Z

.field private renderedFrameCount:I

.field private smooth:Ljavafx/beans/property/BooleanProperty;

.field private treeVisibleListener:Ljavafx/beans/value/ChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/value/ChangeListener",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private viewport:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/geometry/Rectangle2D;",
            ">;"
        }
    .end annotation
.end field

.field private x:Ljavafx/beans/property/DoubleProperty;

.field private y:Ljavafx/beans/property/DoubleProperty;


# direct methods
.method public constructor <init>()V
    .locals 7

    .prologue
    .line 281
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaView;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/Node;-><init>()V

    .line 113
    move-object v1, v0

    new-instance v2, Ljavafx/scene/media/MediaView$MediaErrorInvalidationListener;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Ljavafx/scene/media/MediaView$MediaErrorInvalidationListener;-><init>(Ljavafx/scene/media/MediaView;Ljavafx/scene/media/MediaView$1;)V

    iput-object v2, v1, Ljavafx/scene/media/MediaView;->errorListener:Ljavafx/beans/InvalidationListener;

    .line 116
    move-object v1, v0

    move-object v2, v0

    invoke-static {v2}, Ljavafx/scene/media/MediaView$$Lambda$5;->lambdaFactory$(Ljavafx/scene/media/MediaView;)Ljavafx/beans/InvalidationListener;

    move-result-object v2

    iput-object v2, v1, Ljavafx/scene/media/MediaView;->mediaDimensionListener:Ljavafx/beans/InvalidationListener;

    .line 123
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Ljavafx/scene/media/MediaView;->registerVideoFrameRateListener:Z

    .line 282
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/media/MediaView;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v1

    const-string v2, "media-view"

    invoke-interface {v1, v2}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v1

    .line 283
    move-object v1, v0

    invoke-static {}, Lcom/sun/javafx/tk/Toolkit;->getToolkit()Lcom/sun/javafx/tk/Toolkit;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sun/javafx/tk/Toolkit;->getDefaultImageSmooth()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljavafx/scene/media/MediaView;->setSmooth(Z)V

    .line 284
    move-object v1, v0

    move-object v2, v0

    invoke-direct {v2}, Ljavafx/scene/media/MediaView;->createVideoFrameRateListener()Lcom/sun/media/jfxmedia/events/VideoFrameRateListener;

    move-result-object v2

    iput-object v2, v1, Ljavafx/scene/media/MediaView;->decodedFrameRateListener:Lcom/sun/media/jfxmedia/events/VideoFrameRateListener;

    .line 285
    move-object v1, v0

    sget-object v2, Ljavafx/geometry/NodeOrientation;->LEFT_TO_RIGHT:Ljavafx/geometry/NodeOrientation;

    invoke-virtual {v1, v2}, Ljavafx/scene/media/MediaView;->setNodeOrientation(Ljavafx/geometry/NodeOrientation;)V

    .line 286
    invoke-static {}, Lcom/sun/media/jfxmediaimpl/HostUtils;->isIOS()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 287
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/media/MediaView;->createListeners()V

    .line 288
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/media/MediaView;->parentProperty()Ljavafx/beans/property/ReadOnlyObjectProperty;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/media/MediaView;->parentListener:Ljavafx/beans/value/ChangeListener;

    invoke-virtual {v1, v2}, Ljavafx/beans/property/ReadOnlyObjectProperty;->addListener(Ljavafx/beans/value/ChangeListener;)V

    .line 289
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/media/MediaView;->impl_treeVisibleProperty()Ljavafx/beans/binding/BooleanExpression;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/media/MediaView;->treeVisibleListener:Ljavafx/beans/value/ChangeListener;

    invoke-virtual {v1, v2}, Ljavafx/beans/binding/BooleanExpression;->addListener(Ljavafx/beans/value/ChangeListener;)V

    .line 290
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/media/MediaView;->opacityProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/media/MediaView;->opacityListener:Ljavafx/beans/value/ChangeListener;

    invoke-virtual {v1, v2}, Ljavafx/beans/property/DoubleProperty;->addListener(Ljavafx/beans/value/ChangeListener;)V

    .line 292
    :cond_0
    return-void
.end method

.method public constructor <init>(Ljavafx/scene/media/MediaPlayer;)V
    .locals 4

    .prologue
    .line 307
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaView;
    move-object v1, p1

    .local v1, "mediaPlayer":Ljavafx/scene/media/MediaPlayer;
    move-object v2, v0

    invoke-direct {v2}, Ljavafx/scene/media/MediaView;-><init>()V

    .line 308
    move-object v2, v0

    sget-object v3, Ljavafx/geometry/NodeOrientation;->LEFT_TO_RIGHT:Ljavafx/geometry/NodeOrientation;

    invoke-virtual {v2, v3}, Ljavafx/scene/media/MediaView;->setNodeOrientation(Ljavafx/geometry/NodeOrientation;)V

    .line 309
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/scene/media/MediaView;->setMediaPlayer(Ljavafx/scene/media/MediaPlayer;)V

    .line 310
    return-void
.end method

.method static synthetic access$000(Ljavafx/scene/media/MediaView;)Ljavafx/scene/media/MediaView;
    .locals 2

    .prologue
    .line 90
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/media/MediaView;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/media/MediaView;->getMediaView()Ljavafx/scene/media/MediaView;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/media/MediaView;
    return-object v0
.end method

.method static synthetic access$1000(Ljavafx/scene/media/MediaView;Lcom/sun/javafx/scene/DirtyBits;)V
    .locals 4

    .prologue
    .line 90
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/media/MediaView;
    move-object v1, p1

    .local v1, "x1":Lcom/sun/javafx/scene/DirtyBits;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/scene/media/MediaView;->impl_markDirty(Lcom/sun/javafx/scene/DirtyBits;)V

    return-void
.end method

.method static synthetic access$1100(Ljavafx/scene/media/MediaView;)V
    .locals 2

    .prologue
    .line 90
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/media/MediaView;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/media/MediaView;->impl_geomChanged()V

    return-void
.end method

.method static synthetic access$1200(Ljavafx/scene/media/MediaView;Lcom/sun/javafx/scene/DirtyBits;)V
    .locals 4

    .prologue
    .line 90
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/media/MediaView;
    move-object v1, p1

    .local v1, "x1":Lcom/sun/javafx/scene/DirtyBits;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/scene/media/MediaView;->impl_markDirty(Lcom/sun/javafx/scene/DirtyBits;)V

    return-void
.end method

.method static synthetic access$1300(Ljavafx/scene/media/MediaView;)V
    .locals 2

    .prologue
    .line 90
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/media/MediaView;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/media/MediaView;->updateOverlayX()V

    return-void
.end method

.method static synthetic access$1400(Ljavafx/scene/media/MediaView;Lcom/sun/javafx/scene/DirtyBits;)V
    .locals 4

    .prologue
    .line 90
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/media/MediaView;
    move-object v1, p1

    .local v1, "x1":Lcom/sun/javafx/scene/DirtyBits;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/scene/media/MediaView;->impl_markDirty(Lcom/sun/javafx/scene/DirtyBits;)V

    return-void
.end method

.method static synthetic access$1500(Ljavafx/scene/media/MediaView;)V
    .locals 2

    .prologue
    .line 90
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/media/MediaView;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/media/MediaView;->impl_geomChanged()V

    return-void
.end method

.method static synthetic access$1600(Ljavafx/scene/media/MediaView;)V
    .locals 2

    .prologue
    .line 90
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/media/MediaView;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/media/MediaView;->updateOverlayY()V

    return-void
.end method

.method static synthetic access$1700(Ljavafx/scene/media/MediaView;Lcom/sun/javafx/scene/DirtyBits;)V
    .locals 4

    .prologue
    .line 90
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/media/MediaView;
    move-object v1, p1

    .local v1, "x1":Lcom/sun/javafx/scene/DirtyBits;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/scene/media/MediaView;->impl_markDirty(Lcom/sun/javafx/scene/DirtyBits;)V

    return-void
.end method

.method static synthetic access$1800(Ljavafx/scene/media/MediaView;)V
    .locals 2

    .prologue
    .line 90
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/media/MediaView;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/media/MediaView;->impl_geomChanged()V

    return-void
.end method

.method static synthetic access$1900(Ljavafx/scene/media/MediaView;)V
    .locals 2

    .prologue
    .line 90
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/media/MediaView;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/media/MediaView;->updateOverlayWidth()V

    return-void
.end method

.method static synthetic access$200(Ljavafx/scene/media/MediaView;)Ljavafx/beans/InvalidationListener;
    .locals 2

    .prologue
    .line 90
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/media/MediaView;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/media/MediaView;->mediaDimensionListener:Ljavafx/beans/InvalidationListener;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/media/MediaView;
    return-object v0
.end method

.method static synthetic access$2000(Ljavafx/scene/media/MediaView;Lcom/sun/javafx/scene/DirtyBits;)V
    .locals 4

    .prologue
    .line 90
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/media/MediaView;
    move-object v1, p1

    .local v1, "x1":Lcom/sun/javafx/scene/DirtyBits;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/scene/media/MediaView;->impl_markDirty(Lcom/sun/javafx/scene/DirtyBits;)V

    return-void
.end method

.method static synthetic access$2100(Ljavafx/scene/media/MediaView;)V
    .locals 2

    .prologue
    .line 90
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/media/MediaView;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/media/MediaView;->impl_geomChanged()V

    return-void
.end method

.method static synthetic access$2200(Ljavafx/scene/media/MediaView;)V
    .locals 2

    .prologue
    .line 90
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/media/MediaView;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/media/MediaView;->updateOverlayHeight()V

    return-void
.end method

.method static synthetic access$2300(Ljavafx/scene/media/MediaView;Lcom/sun/javafx/scene/DirtyBits;)V
    .locals 4

    .prologue
    .line 90
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/media/MediaView;
    move-object v1, p1

    .local v1, "x1":Lcom/sun/javafx/scene/DirtyBits;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/scene/media/MediaView;->impl_markDirty(Lcom/sun/javafx/scene/DirtyBits;)V

    return-void
.end method

.method static synthetic access$2400(Ljavafx/scene/media/MediaView;)V
    .locals 2

    .prologue
    .line 90
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/media/MediaView;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/media/MediaView;->impl_geomChanged()V

    return-void
.end method

.method static synthetic access$2500(Ljavafx/scene/media/MediaView;Lcom/sun/javafx/scene/DirtyBits;)V
    .locals 4

    .prologue
    .line 90
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/media/MediaView;
    move-object v1, p1

    .local v1, "x1":Lcom/sun/javafx/scene/DirtyBits;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/scene/media/MediaView;->impl_markDirty(Lcom/sun/javafx/scene/DirtyBits;)V

    return-void
.end method

.method static synthetic access$2600(Ljavafx/scene/media/MediaView;)V
    .locals 2

    .prologue
    .line 90
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/media/MediaView;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/media/MediaView;->impl_geomChanged()V

    return-void
.end method

.method static synthetic access$2800(Ljavafx/scene/media/MediaView;)I
    .locals 2

    .prologue
    .line 90
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/media/MediaView;
    move-object v1, v0

    iget v1, v1, Ljavafx/scene/media/MediaView;->decodedFrameCount:I

    move v0, v1

    .end local v0    # "x0":Ljavafx/scene/media/MediaView;
    return v0
.end method

.method static synthetic access$2802(Ljavafx/scene/media/MediaView;I)I
    .locals 7

    .prologue
    .line 90
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/media/MediaView;
    move v1, p1

    .local v1, "x1":I
    move-object v2, v0

    move v3, v1

    move-object v5, v2

    move v6, v3

    move v2, v6

    move-object v3, v5

    move v4, v6

    iput v4, v3, Ljavafx/scene/media/MediaView;->decodedFrameCount:I

    move v0, v2

    .end local v0    # "x0":Ljavafx/scene/media/MediaView;
    return v0
.end method

.method static synthetic access$2900(Ljavafx/scene/media/MediaView;)I
    .locals 2

    .prologue
    .line 90
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/media/MediaView;
    move-object v1, v0

    iget v1, v1, Ljavafx/scene/media/MediaView;->renderedFrameCount:I

    move v0, v1

    .end local v0    # "x0":Ljavafx/scene/media/MediaView;
    return v0
.end method

.method static synthetic access$2902(Ljavafx/scene/media/MediaView;I)I
    .locals 7

    .prologue
    .line 90
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/media/MediaView;
    move v1, p1

    .local v1, "x1":I
    move-object v2, v0

    move v3, v1

    move-object v5, v2

    move v6, v3

    move v2, v6

    move-object v3, v5

    move v4, v6

    iput v4, v3, Ljavafx/scene/media/MediaView;->renderedFrameCount:I

    move v0, v2

    .end local v0    # "x0":Ljavafx/scene/media/MediaView;
    return v0
.end method

.method static synthetic access$300(Ljavafx/scene/media/MediaView;)Lcom/sun/media/jfxmedia/events/VideoFrameRateListener;
    .locals 2

    .prologue
    .line 90
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/media/MediaView;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/media/MediaView;->decodedFrameRateListener:Lcom/sun/media/jfxmedia/events/VideoFrameRateListener;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/media/MediaView;
    return-object v0
.end method

.method static synthetic access$400(Ljavafx/scene/media/MediaView;)Ljavafx/beans/InvalidationListener;
    .locals 2

    .prologue
    .line 90
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/media/MediaView;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/media/MediaView;->errorListener:Ljavafx/beans/InvalidationListener;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/media/MediaView;
    return-object v0
.end method

.method static synthetic access$502(Ljavafx/scene/media/MediaView;Z)Z
    .locals 7

    .prologue
    .line 90
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/media/MediaView;
    move v1, p1

    .local v1, "x1":Z
    move-object v2, v0

    move v3, v1

    move-object v5, v2

    move v6, v3

    move v2, v6

    move-object v3, v5

    move v4, v6

    iput-boolean v4, v3, Ljavafx/scene/media/MediaView;->registerVideoFrameRateListener:Z

    move v0, v2

    .end local v0    # "x0":Ljavafx/scene/media/MediaView;
    return v0
.end method

.method static synthetic access$600(Ljavafx/scene/media/MediaView;Lcom/sun/javafx/scene/DirtyBits;)V
    .locals 4

    .prologue
    .line 90
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/media/MediaView;
    move-object v1, p1

    .local v1, "x1":Lcom/sun/javafx/scene/DirtyBits;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/scene/media/MediaView;->impl_markDirty(Lcom/sun/javafx/scene/DirtyBits;)V

    return-void
.end method

.method static synthetic access$700(Ljavafx/scene/media/MediaView;)V
    .locals 2

    .prologue
    .line 90
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/media/MediaView;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/media/MediaView;->impl_geomChanged()V

    return-void
.end method

.method static synthetic access$800(Ljavafx/scene/media/MediaView;Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V
    .locals 6

    .prologue
    .line 90
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/media/MediaView;
    move-object v1, p1

    .local v1, "x1":Ljavafx/event/EventType;
    move-object v2, p2

    .local v2, "x2":Ljavafx/event/EventHandler;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/media/MediaView;->setEventHandler(Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V

    return-void
.end method

.method static synthetic access$900(Ljavafx/scene/media/MediaView;)V
    .locals 2

    .prologue
    .line 90
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/media/MediaView;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/media/MediaView;->updateOverlayPreserveRatio()V

    return-void
.end method

.method static synthetic access$lambda$0(Ljavafx/scene/media/MediaView;D)V
    .locals 7

    move-object v0, p0

    move-wide v1, p1

    move-object v3, v0

    move-wide v4, v1

    invoke-direct {v3, v4, v5}, Ljavafx/scene/media/MediaView;->lambda$createVideoFrameRateListener$30(D)V

    return-void
.end method

.method static synthetic access$lambda$1(Ljavafx/scene/media/MediaView;Ljavafx/beans/value/ObservableValue;Ljavafx/scene/Parent;Ljavafx/scene/Parent;)V
    .locals 8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-direct {v4, v5, v6, v7}, Ljavafx/scene/media/MediaView;->lambda$createListeners$31(Ljavafx/beans/value/ObservableValue;Ljavafx/scene/Parent;Ljavafx/scene/Parent;)V

    return-void
.end method

.method static synthetic access$lambda$2(Ljavafx/scene/media/MediaView;Ljavafx/beans/value/ObservableValue;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-direct {v4, v5, v6, v7}, Ljavafx/scene/media/MediaView;->lambda$createListeners$32(Ljavafx/beans/value/ObservableValue;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    return-void
.end method

.method static synthetic access$lambda$3(Ljavafx/scene/media/MediaView;Ljavafx/beans/value/ObservableValue;Ljava/lang/Number;Ljava/lang/Number;)V
    .locals 8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-direct {v4, v5, v6, v7}, Ljavafx/scene/media/MediaView;->lambda$createListeners$33(Ljavafx/beans/value/ObservableValue;Ljava/lang/Number;Ljava/lang/Number;)V

    return-void
.end method

.method static synthetic access$lambda$4(Ljavafx/scene/media/MediaView;Ljavafx/beans/Observable;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljavafx/scene/media/MediaView;->lambda$new$28(Ljavafx/beans/Observable;)V

    return-void
.end method

.method static synthetic access$lambda$5(Ljavafx/scene/media/MediaView;D)V
    .locals 7

    move-object v0, p0

    move-wide v1, p1

    move-object v3, v0

    move-wide v4, v1

    invoke-direct {v3, v4, v5}, Ljavafx/scene/media/MediaView;->lambda$null$29(D)V

    return-void
.end method

.method private static calculateNodeToSceneTransform(Ljavafx/scene/Node;)Lcom/sun/javafx/geom/transform/Affine3D;
    .locals 5

    .prologue
    .line 221
    move-object v0, p0

    .local v0, "node":Ljavafx/scene/Node;
    new-instance v2, Lcom/sun/javafx/geom/transform/Affine3D;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Lcom/sun/javafx/geom/transform/Affine3D;-><init>()V

    move-object v1, v2

    .line 223
    .local v1, "transform":Lcom/sun/javafx/geom/transform/Affine3D;
    :cond_0
    move-object v2, v1

    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/Node;->impl_getLeafTransform()Lcom/sun/javafx/geom/transform/BaseTransform;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sun/javafx/geom/transform/Affine3D;->preConcatenate(Lcom/sun/javafx/geom/transform/BaseTransform;)V

    .line 224
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/Node;->getParent()Ljavafx/scene/Parent;

    move-result-object v2

    move-object v0, v2

    .line 225
    move-object v2, v0

    if-nez v2, :cond_0

    .line 227
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "node":Ljavafx/scene/Node;
    return-object v0
.end method

.method private createListeners()V
    .locals 3

    .prologue
    .line 157
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaView;
    move-object v1, v0

    move-object v2, v0

    invoke-static {v2}, Ljavafx/scene/media/MediaView$$Lambda$2;->lambdaFactory$(Ljavafx/scene/media/MediaView;)Ljavafx/beans/value/ChangeListener;

    move-result-object v2

    iput-object v2, v1, Ljavafx/scene/media/MediaView;->parentListener:Ljavafx/beans/value/ChangeListener;

    .line 161
    move-object v1, v0

    move-object v2, v0

    invoke-static {v2}, Ljavafx/scene/media/MediaView$$Lambda$3;->lambdaFactory$(Ljavafx/scene/media/MediaView;)Ljavafx/beans/value/ChangeListener;

    move-result-object v2

    iput-object v2, v1, Ljavafx/scene/media/MediaView;->treeVisibleListener:Ljavafx/beans/value/ChangeListener;

    .line 165
    move-object v1, v0

    move-object v2, v0

    invoke-static {v2}, Ljavafx/scene/media/MediaView$$Lambda$4;->lambdaFactory$(Ljavafx/scene/media/MediaView;)Ljavafx/beans/value/ChangeListener;

    move-result-object v2

    iput-object v2, v1, Ljavafx/scene/media/MediaView;->opacityListener:Ljavafx/beans/value/ChangeListener;

    .line 168
    return-void
.end method

.method private createVideoFrameRateListener()Lcom/sun/media/jfxmedia/events/VideoFrameRateListener;
    .locals 4

    .prologue
    .line 130
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaView;
    const/4 v3, 0x0

    move-object v1, v3

    .line 132
    .local v1, "listenerProp":Ljava/lang/String;
    :try_start_0
    const-string v3, "jfxmedia.decodedVideoFPS"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    move-object v1, v3

    .line 134
    .line 136
    :goto_0
    move-object v3, v1

    if-eqz v3, :cond_0

    const-string v3, "jfxmedia.decodedVideoFPS"

    invoke-static {v3}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 137
    :cond_0
    const/4 v3, 0x0

    move-object v0, v3

    .line 139
    .end local v0    # "this":Ljavafx/scene/media/MediaView;
    :goto_1
    return-object v0

    .line 133
    .restart local v0    # "this":Ljavafx/scene/media/MediaView;
    :catch_0
    move-exception v3

    move-object v2, v3

    goto :goto_0

    .line 139
    :cond_1
    move-object v3, v0

    invoke-static {v3}, Ljavafx/scene/media/MediaView$$Lambda$1;->lambdaFactory$(Ljavafx/scene/media/MediaView;)Lcom/sun/media/jfxmedia/events/VideoFrameRateListener;

    move-result-object v3

    move-object v0, v3

    goto :goto_1
.end method

.method private determineVisibility()Z
    .locals 2

    .prologue
    .line 175
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaView;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/media/MediaView;->getParent()Ljavafx/scene/Parent;

    move-result-object v1

    if-eqz v1, :cond_0

    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/media/MediaView;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Ljavafx/scene/media/MediaView;
    return v0

    .restart local v0    # "this":Ljavafx/scene/media/MediaView;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getIOSPlayer()Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMediaPlayer;
    .locals 2

    .prologue
    .line 171
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaView;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/media/MediaView;->getMediaPlayer()Ljavafx/scene/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/scene/media/MediaPlayer;->retrieveJfxPlayer()Lcom/sun/media/jfxmedia/MediaPlayer;

    move-result-object v1

    check-cast v1, Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMediaPlayer;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/media/MediaView;
    return-object v0
.end method

.method private getMediaView()Ljavafx/scene/media/MediaView;
    .locals 2

    .prologue
    .line 274
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaView;
    move-object v1, v0

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/media/MediaView;
    return-object v0
.end method

.method private synthetic lambda$createListeners$31(Ljavafx/beans/value/ObservableValue;Ljavafx/scene/Parent;Ljavafx/scene/Parent;)V
    .locals 5

    .prologue
    .line 158
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaView;
    move-object v1, p1

    .local v1, "ov2":Ljavafx/beans/value/ObservableValue;
    move-object v2, p2

    .local v2, "oldParent":Ljavafx/scene/Parent;
    move-object v3, p3

    .local v3, "newParent":Ljavafx/scene/Parent;
    move-object v4, v0

    invoke-direct {v4}, Ljavafx/scene/media/MediaView;->updateOverlayVisibility()V

    .line 159
    return-void
.end method

.method private synthetic lambda$createListeners$32(Ljavafx/beans/value/ObservableValue;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 5

    .prologue
    .line 162
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaView;
    move-object v1, p1

    .local v1, "ov1":Ljavafx/beans/value/ObservableValue;
    move-object v2, p2

    .local v2, "oldVisible":Ljava/lang/Boolean;
    move-object v3, p3

    .local v3, "newVisible":Ljava/lang/Boolean;
    move-object v4, v0

    invoke-direct {v4}, Ljavafx/scene/media/MediaView;->updateOverlayVisibility()V

    .line 163
    return-void
.end method

.method private synthetic lambda$createListeners$33(Ljavafx/beans/value/ObservableValue;Ljava/lang/Number;Ljava/lang/Number;)V
    .locals 5

    .prologue
    .line 166
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaView;
    move-object v1, p1

    .local v1, "ov":Ljavafx/beans/value/ObservableValue;
    move-object v2, p2

    .local v2, "oldOpacity":Ljava/lang/Number;
    move-object v3, p3

    .local v3, "newOpacity":Ljava/lang/Number;
    move-object v4, v0

    invoke-direct {v4}, Ljavafx/scene/media/MediaView;->updateOverlayOpacity()V

    .line 167
    return-void
.end method

.method private synthetic lambda$createVideoFrameRateListener$30(D)V
    .locals 7

    .prologue
    .line 140
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaView;
    move-wide v1, p1

    .local v1, "videoFrameRate":D
    move-object v3, v0

    move-wide v4, v1

    invoke-static {v3, v4, v5}, Ljavafx/scene/media/MediaView$$Lambda$6;->lambdaFactory$(Ljavafx/scene/media/MediaView;D)Ljava/lang/Runnable;

    move-result-object v3

    invoke-static {v3}, Ljavafx/application/Platform;->runLater(Ljava/lang/Runnable;)V

    .line 144
    return-void
.end method

.method private synthetic lambda$new$28(Ljavafx/beans/Observable;)V
    .locals 4

    .prologue
    .line 117
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaView;
    move-object v1, p1

    .local v1, "value":Ljavafx/beans/Observable;
    move-object v2, v0

    sget-object v3, Lcom/sun/javafx/scene/DirtyBits;->NODE_VIEWPORT:Lcom/sun/javafx/scene/DirtyBits;

    invoke-virtual {v2, v3}, Ljavafx/scene/media/MediaView;->impl_markDirty(Lcom/sun/javafx/scene/DirtyBits;)V

    .line 118
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/media/MediaView;->impl_geomChanged()V

    .line 119
    return-void
.end method

.method private synthetic lambda$null$29(D)V
    .locals 9

    .prologue
    .line 141
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaView;
    move-wide v1, p1

    .local v1, "videoFrameRate":D
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/media/MediaView;->getProperties()Ljavafx/collections/ObservableMap;

    move-result-object v4

    move-object v3, v4

    .line 142
    .local v3, "props":Ljavafx/collections/ObservableMap;
    move-object v4, v3

    const-string v5, "jfxmedia.decodedVideoFPS"

    move-wide v6, v1

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljavafx/collections/ObservableMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 143
    return-void
.end method

.method private updateIOSOverlay()V
    .locals 4

    .prologue
    .line 245
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaView;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/media/MediaView;->getIOSPlayer()Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMediaPlayer;

    move-result-object v1

    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/media/MediaView;->getX()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMediaPlayer;->setOverlayX(D)V

    .line 246
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/media/MediaView;->getIOSPlayer()Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMediaPlayer;

    move-result-object v1

    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/media/MediaView;->getY()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMediaPlayer;->setOverlayY(D)V

    .line 247
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/media/MediaView;->getIOSPlayer()Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMediaPlayer;

    move-result-object v1

    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/media/MediaView;->isPreserveRatio()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMediaPlayer;->setOverlayPreserveRatio(Z)V

    .line 248
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/media/MediaView;->getIOSPlayer()Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMediaPlayer;

    move-result-object v1

    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/media/MediaView;->getFitWidth()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMediaPlayer;->setOverlayWidth(D)V

    .line 249
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/media/MediaView;->getIOSPlayer()Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMediaPlayer;

    move-result-object v1

    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/media/MediaView;->getFitHeight()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMediaPlayer;->setOverlayHeight(D)V

    .line 250
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/media/MediaView;->getIOSPlayer()Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMediaPlayer;

    move-result-object v1

    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/media/MediaView;->getOpacity()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMediaPlayer;->setOverlayOpacity(D)V

    .line 251
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/media/MediaView;->getIOSPlayer()Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMediaPlayer;

    move-result-object v1

    move-object v2, v0

    invoke-direct {v2}, Ljavafx/scene/media/MediaView;->determineVisibility()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMediaPlayer;->setOverlayVisible(Z)V

    .line 252
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/media/MediaView;->updateOverlayTransformDirectly()V

    .line 253
    return-void
.end method

.method private declared-synchronized updateOverlayHeight()V
    .locals 5

    .prologue
    .line 209
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaView;
    move-object v4, p0

    monitor-enter v4

    move-object v1, v0

    :try_start_0
    iget-boolean v1, v1, Ljavafx/scene/media/MediaView;->mediaPlayerReady:Z

    if-eqz v1, :cond_0

    .line 210
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/media/MediaView;->getIOSPlayer()Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMediaPlayer;

    move-result-object v1

    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/media/MediaView;->getFitHeight()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMediaPlayer;->setOverlayHeight(D)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 212
    :cond_0
    monitor-exit v4

    return-void

    .line 209
    :catchall_0
    move-exception v0

    monitor-exit v4

    .end local v0    # "this":Ljavafx/scene/media/MediaView;
    throw v0
.end method

.method private declared-synchronized updateOverlayOpacity()V
    .locals 5

    .prologue
    .line 185
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaView;
    move-object v4, p0

    monitor-enter v4

    move-object v1, v0

    :try_start_0
    iget-boolean v1, v1, Ljavafx/scene/media/MediaView;->mediaPlayerReady:Z

    if-eqz v1, :cond_0

    .line 186
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/media/MediaView;->getIOSPlayer()Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMediaPlayer;

    move-result-object v1

    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/media/MediaView;->getOpacity()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMediaPlayer;->setOverlayOpacity(D)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 188
    :cond_0
    monitor-exit v4

    return-void

    .line 185
    :catchall_0
    move-exception v0

    monitor-exit v4

    .end local v0    # "this":Ljavafx/scene/media/MediaView;
    throw v0
.end method

.method private declared-synchronized updateOverlayPreserveRatio()V
    .locals 4

    .prologue
    .line 215
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaView;
    move-object v3, p0

    monitor-enter v3

    move-object v1, v0

    :try_start_0
    iget-boolean v1, v1, Ljavafx/scene/media/MediaView;->mediaPlayerReady:Z

    if-eqz v1, :cond_0

    .line 216
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/media/MediaView;->getIOSPlayer()Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMediaPlayer;

    move-result-object v1

    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/media/MediaView;->isPreserveRatio()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMediaPlayer;->setOverlayPreserveRatio(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 218
    :cond_0
    monitor-exit v3

    return-void

    .line 215
    :catchall_0
    move-exception v0

    monitor-exit v3

    .end local v0    # "this":Ljavafx/scene/media/MediaView;
    throw v0
.end method

.method private declared-synchronized updateOverlayTransform()V
    .locals 3

    .prologue
    .line 239
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaView;
    move-object v2, p0

    monitor-enter v2

    move-object v1, v0

    :try_start_0
    iget-boolean v1, v1, Ljavafx/scene/media/MediaView;->mediaPlayerReady:Z

    if-eqz v1, :cond_0

    .line 240
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/media/MediaView;->updateOverlayTransformDirectly()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 242
    :cond_0
    monitor-exit v2

    return-void

    .line 239
    :catchall_0
    move-exception v0

    monitor-exit v2

    .end local v0    # "this":Ljavafx/scene/media/MediaView;
    throw v0
.end method

.method private updateOverlayTransformDirectly()V
    .locals 28

    .prologue
    .line 231
    move-object/from16 v1, p0

    .local v1, "this":Ljavafx/scene/media/MediaView;
    move-object v3, v1

    invoke-static {v3}, Ljavafx/scene/media/MediaView;->calculateNodeToSceneTransform(Ljavafx/scene/Node;)Lcom/sun/javafx/geom/transform/Affine3D;

    move-result-object v3

    move-object v2, v3

    .line 232
    .local v2, "trans":Lcom/sun/javafx/geom/transform/Affine3D;
    move-object v3, v1

    invoke-direct {v3}, Ljavafx/scene/media/MediaView;->getIOSPlayer()Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMediaPlayer;

    move-result-object v3

    move-object v4, v2

    .line 233
    invoke-virtual {v4}, Lcom/sun/javafx/geom/transform/Affine3D;->getMxx()D

    move-result-wide v4

    move-object v6, v2

    invoke-virtual {v6}, Lcom/sun/javafx/geom/transform/Affine3D;->getMxy()D

    move-result-wide v6

    move-object v8, v2

    invoke-virtual {v8}, Lcom/sun/javafx/geom/transform/Affine3D;->getMxz()D

    move-result-wide v8

    move-object v10, v2

    invoke-virtual {v10}, Lcom/sun/javafx/geom/transform/Affine3D;->getMxt()D

    move-result-wide v10

    move-object v12, v2

    .line 234
    invoke-virtual {v12}, Lcom/sun/javafx/geom/transform/Affine3D;->getMyx()D

    move-result-wide v12

    move-object v14, v2

    invoke-virtual {v14}, Lcom/sun/javafx/geom/transform/Affine3D;->getMyy()D

    move-result-wide v14

    move-object/from16 v16, v2

    invoke-virtual/range {v16 .. v16}, Lcom/sun/javafx/geom/transform/Affine3D;->getMyz()D

    move-result-wide v16

    move-object/from16 v18, v2

    invoke-virtual/range {v18 .. v18}, Lcom/sun/javafx/geom/transform/Affine3D;->getMyt()D

    move-result-wide v18

    move-object/from16 v20, v2

    .line 235
    invoke-virtual/range {v20 .. v20}, Lcom/sun/javafx/geom/transform/Affine3D;->getMzx()D

    move-result-wide v20

    move-object/from16 v22, v2

    invoke-virtual/range {v22 .. v22}, Lcom/sun/javafx/geom/transform/Affine3D;->getMzy()D

    move-result-wide v22

    move-object/from16 v24, v2

    invoke-virtual/range {v24 .. v24}, Lcom/sun/javafx/geom/transform/Affine3D;->getMzz()D

    move-result-wide v24

    move-object/from16 v26, v2

    invoke-virtual/range {v26 .. v26}, Lcom/sun/javafx/geom/transform/Affine3D;->getMzt()D

    move-result-wide v26

    .line 232
    invoke-virtual/range {v3 .. v27}, Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMediaPlayer;->setOverlayTransform(DDDDDDDDDDDD)V

    .line 236
    return-void
.end method

.method private declared-synchronized updateOverlayVisibility()V
    .locals 4

    .prologue
    .line 179
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaView;
    move-object v3, p0

    monitor-enter v3

    move-object v1, v0

    :try_start_0
    iget-boolean v1, v1, Ljavafx/scene/media/MediaView;->mediaPlayerReady:Z

    if-eqz v1, :cond_0

    .line 180
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/media/MediaView;->getIOSPlayer()Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMediaPlayer;

    move-result-object v1

    move-object v2, v0

    invoke-direct {v2}, Ljavafx/scene/media/MediaView;->determineVisibility()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMediaPlayer;->setOverlayVisible(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 182
    :cond_0
    monitor-exit v3

    return-void

    .line 179
    :catchall_0
    move-exception v0

    monitor-exit v3

    .end local v0    # "this":Ljavafx/scene/media/MediaView;
    throw v0
.end method

.method private declared-synchronized updateOverlayWidth()V
    .locals 5

    .prologue
    .line 203
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaView;
    move-object v4, p0

    monitor-enter v4

    move-object v1, v0

    :try_start_0
    iget-boolean v1, v1, Ljavafx/scene/media/MediaView;->mediaPlayerReady:Z

    if-eqz v1, :cond_0

    .line 204
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/media/MediaView;->getIOSPlayer()Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMediaPlayer;

    move-result-object v1

    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/media/MediaView;->getFitWidth()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMediaPlayer;->setOverlayWidth(D)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 206
    :cond_0
    monitor-exit v4

    return-void

    .line 203
    :catchall_0
    move-exception v0

    monitor-exit v4

    .end local v0    # "this":Ljavafx/scene/media/MediaView;
    throw v0
.end method

.method private declared-synchronized updateOverlayX()V
    .locals 5

    .prologue
    .line 191
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaView;
    move-object v4, p0

    monitor-enter v4

    move-object v1, v0

    :try_start_0
    iget-boolean v1, v1, Ljavafx/scene/media/MediaView;->mediaPlayerReady:Z

    if-eqz v1, :cond_0

    .line 192
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/media/MediaView;->getIOSPlayer()Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMediaPlayer;

    move-result-object v1

    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/media/MediaView;->getX()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMediaPlayer;->setOverlayX(D)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 194
    :cond_0
    monitor-exit v4

    return-void

    .line 191
    :catchall_0
    move-exception v0

    monitor-exit v4

    .end local v0    # "this":Ljavafx/scene/media/MediaView;
    throw v0
.end method

.method private declared-synchronized updateOverlayY()V
    .locals 5

    .prologue
    .line 197
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaView;
    move-object v4, p0

    monitor-enter v4

    move-object v1, v0

    :try_start_0
    iget-boolean v1, v1, Ljavafx/scene/media/MediaView;->mediaPlayerReady:Z

    if-eqz v1, :cond_0

    .line 198
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/media/MediaView;->getIOSPlayer()Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMediaPlayer;

    move-result-object v1

    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/media/MediaView;->getY()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMediaPlayer;->setOverlayY(D)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 200
    :cond_0
    monitor-exit v4

    return-void

    .line 197
    :catchall_0
    move-exception v0

    monitor-exit v4

    .end local v0    # "this":Ljavafx/scene/media/MediaView;
    throw v0
.end method


# virtual methods
.method _mediaPlayerOnReady()V
    .locals 6

    .prologue
    .line 1033
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaView;
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/media/MediaView;->decodedFrameRateListener:Lcom/sun/media/jfxmedia/events/VideoFrameRateListener;

    if-eqz v3, :cond_0

    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/media/MediaView;->getMediaPlayer()Ljavafx/scene/media/MediaPlayer;

    move-result-object v3

    invoke-virtual {v3}, Ljavafx/scene/media/MediaPlayer;->retrieveJfxPlayer()Lcom/sun/media/jfxmedia/MediaPlayer;

    move-result-object v3

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-boolean v3, v3, Ljavafx/scene/media/MediaView;->registerVideoFrameRateListener:Z

    if-eqz v3, :cond_0

    .line 1034
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/media/MediaView;->getMediaPlayer()Ljavafx/scene/media/MediaPlayer;

    move-result-object v3

    invoke-virtual {v3}, Ljavafx/scene/media/MediaPlayer;->retrieveJfxPlayer()Lcom/sun/media/jfxmedia/MediaPlayer;

    move-result-object v3

    invoke-interface {v3}, Lcom/sun/media/jfxmedia/MediaPlayer;->getVideoRenderControl()Lcom/sun/media/jfxmedia/control/VideoRenderControl;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/media/MediaView;->decodedFrameRateListener:Lcom/sun/media/jfxmedia/events/VideoFrameRateListener;

    invoke-interface {v3, v4}, Lcom/sun/media/jfxmedia/control/VideoRenderControl;->addVideoFrameRateListener(Lcom/sun/media/jfxmedia/events/VideoFrameRateListener;)V

    .line 1035
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Ljavafx/scene/media/MediaView;->registerVideoFrameRateListener:Z

    .line 1037
    :cond_0
    invoke-static {}, Lcom/sun/media/jfxmediaimpl/HostUtils;->isIOS()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1038
    move-object v3, v0

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    move-object v1, v4

    monitor-enter v3

    .line 1039
    move-object v3, v0

    :try_start_0
    invoke-direct {v3}, Ljavafx/scene/media/MediaView;->updateIOSOverlay()V

    .line 1040
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Ljavafx/scene/media/MediaView;->mediaPlayerReady:Z

    .line 1041
    move-object v3, v1

    monitor-exit v3

    .line 1043
    :cond_1
    return-void

    .line 1041
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

.method public final fitHeightProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 6

    .prologue
    .line 730
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaView;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/media/MediaView;->fitHeight:Ljavafx/beans/property/DoubleProperty;

    if-nez v1, :cond_0

    .line 731
    move-object v1, v0

    new-instance v2, Ljavafx/scene/media/MediaView$8;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/media/MediaView$8;-><init>(Ljavafx/scene/media/MediaView;)V

    iput-object v2, v1, Ljavafx/scene/media/MediaView;->fitHeight:Ljavafx/beans/property/DoubleProperty;

    .line 755
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/media/MediaView;->fitHeight:Ljavafx/beans/property/DoubleProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/media/MediaView;
    return-object v0
.end method

.method public final fitWidthProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 6

    .prologue
    .line 673
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaView;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/media/MediaView;->fitWidth:Ljavafx/beans/property/DoubleProperty;

    if-nez v1, :cond_0

    .line 674
    move-object v1, v0

    new-instance v2, Ljavafx/scene/media/MediaView$7;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/media/MediaView$7;-><init>(Ljavafx/scene/media/MediaView;)V

    iput-object v2, v1, Ljavafx/scene/media/MediaView;->fitWidth:Ljavafx/beans/property/DoubleProperty;

    .line 698
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/media/MediaView;->fitWidth:Ljavafx/beans/property/DoubleProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/media/MediaView;
    return-object v0
.end method

.method public final getFitHeight()D
    .locals 4

    .prologue
    .line 726
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/media/MediaView;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/media/MediaView;->fitHeight:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    const-wide/16 v2, 0x0

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Ljavafx/scene/media/MediaView;
    return-wide v1

    .restart local v1    # "this":Ljavafx/scene/media/MediaView;
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/media/MediaView;->fitHeight:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v2}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v2

    goto :goto_0
.end method

.method public final getFitWidth()D
    .locals 4

    .prologue
    .line 669
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/media/MediaView;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/media/MediaView;->fitWidth:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    const-wide/16 v2, 0x0

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Ljavafx/scene/media/MediaView;
    return-wide v1

    .restart local v1    # "this":Ljavafx/scene/media/MediaView;
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/media/MediaView;->fitWidth:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v2}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v2

    goto :goto_0
.end method

.method public final getMediaPlayer()Ljavafx/scene/media/MediaPlayer;
    .locals 2

    .prologue
    .line 337
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaView;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/media/MediaView;->mediaPlayer:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/media/MediaView;
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/media/MediaView;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/media/MediaView;->mediaPlayer:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/scene/media/MediaPlayer;

    goto :goto_0
.end method

.method public final getOnError()Ljavafx/event/EventHandler;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/scene/media/MediaErrorEvent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 415
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaView;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/media/MediaView;->onError:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/media/MediaView;
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/media/MediaView;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/media/MediaView;->onError:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/event/EventHandler;

    goto :goto_0
.end method

.method public final getViewport()Ljavafx/geometry/Rectangle2D;
    .locals 2

    .prologue
    .line 782
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaView;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/media/MediaView;->viewport:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/media/MediaView;
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/media/MediaView;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/media/MediaView;->viewport:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/geometry/Rectangle2D;

    goto :goto_0
.end method

.method public final getX()D
    .locals 4

    .prologue
    .line 562
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/media/MediaView;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/media/MediaView;->x:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    const-wide/16 v2, 0x0

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Ljavafx/scene/media/MediaView;
    return-wide v1

    .restart local v1    # "this":Ljavafx/scene/media/MediaView;
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/media/MediaView;->x:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v2}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v2

    goto :goto_0
.end method

.method public final getY()D
    .locals 4

    .prologue
    .line 612
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/media/MediaView;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/media/MediaView;->y:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    const-wide/16 v2, 0x0

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Ljavafx/scene/media/MediaView;
    return-wide v1

    .restart local v1    # "this":Ljavafx/scene/media/MediaView;
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/media/MediaView;->y:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v2}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v2

    goto :goto_0
.end method

.method protected impl_computeContains(DD)Z
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 917
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/media/MediaView;
    move-wide v2, p1

    .local v2, "localX":D
    move-wide v4, p3

    .local v4, "localY":D
    const/4 v6, 0x1

    move v1, v6

    .end local v1    # "this":Ljavafx/scene/media/MediaView;
    return v1
.end method

.method public impl_computeGeomBounds(Lcom/sun/javafx/geom/BaseBounds;Lcom/sun/javafx/geom/transform/BaseTransform;)Lcom/sun/javafx/geom/BaseBounds;
    .locals 29
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 852
    move-object/from16 v2, p0

    .local v2, "this":Ljavafx/scene/media/MediaView;
    move-object/from16 v3, p1

    .local v3, "bounds":Lcom/sun/javafx/geom/BaseBounds;
    move-object/from16 v4, p2

    .local v4, "tx":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object/from16 v20, v2

    invoke-virtual/range {v20 .. v20}, Ljavafx/scene/media/MediaView;->getMediaPlayer()Ljavafx/scene/media/MediaPlayer;

    move-result-object v20

    if-nez v20, :cond_5

    const/16 v20, 0x0

    :goto_0
    move-object/from16 v5, v20

    .line 853
    .local v5, "media":Ljavafx/scene/media/Media;
    move-object/from16 v20, v5

    if-eqz v20, :cond_6

    move-object/from16 v20, v5

    invoke-virtual/range {v20 .. v20}, Ljavafx/scene/media/Media;->getWidth()I

    move-result v20

    move/from16 v0, v20

    int-to-double v0, v0

    move-wide/from16 v20, v0

    :goto_1
    move-wide/from16 v6, v20

    .line 854
    .local v6, "w":D
    move-object/from16 v20, v5

    if-eqz v20, :cond_7

    move-object/from16 v20, v5

    invoke-virtual/range {v20 .. v20}, Ljavafx/scene/media/Media;->getHeight()I

    move-result v20

    move/from16 v0, v20

    int-to-double v0, v0

    move-wide/from16 v20, v0

    :goto_2
    move-wide/from16 v8, v20

    .line 855
    .local v8, "h":D
    move-object/from16 v20, v2

    invoke-virtual/range {v20 .. v20}, Ljavafx/scene/media/MediaView;->getFitWidth()D

    move-result-wide v20

    move-wide/from16 v10, v20

    .line 856
    .local v10, "newW":D
    move-object/from16 v20, v2

    invoke-virtual/range {v20 .. v20}, Ljavafx/scene/media/MediaView;->getFitHeight()D

    move-result-wide v20

    move-wide/from16 v12, v20

    .line 857
    .local v12, "newH":D
    move-object/from16 v20, v2

    invoke-virtual/range {v20 .. v20}, Ljavafx/scene/media/MediaView;->getViewport()Ljavafx/geometry/Rectangle2D;

    move-result-object v20

    if-eqz v20, :cond_8

    move-object/from16 v20, v2

    invoke-virtual/range {v20 .. v20}, Ljavafx/scene/media/MediaView;->getViewport()Ljavafx/geometry/Rectangle2D;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljavafx/geometry/Rectangle2D;->getWidth()D

    move-result-wide v20

    :goto_3
    move-wide/from16 v14, v20

    .line 858
    .local v14, "vw":D
    move-object/from16 v20, v2

    invoke-virtual/range {v20 .. v20}, Ljavafx/scene/media/MediaView;->getViewport()Ljavafx/geometry/Rectangle2D;

    move-result-object v20

    if-eqz v20, :cond_9

    move-object/from16 v20, v2

    invoke-virtual/range {v20 .. v20}, Ljavafx/scene/media/MediaView;->getViewport()Ljavafx/geometry/Rectangle2D;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljavafx/geometry/Rectangle2D;->getHeight()D

    move-result-wide v20

    :goto_4
    move-wide/from16 v16, v20

    .line 860
    .local v16, "vh":D
    move-wide/from16 v20, v14

    const-wide/16 v22, 0x0

    cmpl-double v20, v20, v22

    if-lez v20, :cond_0

    move-wide/from16 v20, v16

    const-wide/16 v22, 0x0

    cmpl-double v20, v20, v22

    if-lez v20, :cond_0

    .line 861
    move-wide/from16 v20, v14

    move-wide/from16 v6, v20

    .line 862
    move-wide/from16 v20, v16

    move-wide/from16 v8, v20

    .line 865
    :cond_0
    move-object/from16 v20, v2

    invoke-virtual/range {v20 .. v20}, Ljavafx/scene/media/MediaView;->getFitWidth()D

    move-result-wide v20

    const-wide/16 v22, 0x0

    cmpg-double v20, v20, v22

    if-gtz v20, :cond_a

    move-object/from16 v20, v2

    invoke-virtual/range {v20 .. v20}, Ljavafx/scene/media/MediaView;->getFitHeight()D

    move-result-wide v20

    const-wide/16 v22, 0x0

    cmpg-double v20, v20, v22

    if-gtz v20, :cond_a

    .line 866
    move-wide/from16 v20, v6

    move-wide/from16 v10, v20

    .line 867
    move-wide/from16 v20, v8

    move-wide/from16 v12, v20

    .line 887
    :cond_1
    :goto_5
    move-wide/from16 v20, v12

    const-wide/high16 v22, 0x3ff0000000000000L    # 1.0

    cmpg-double v20, v20, v22

    if-gez v20, :cond_2

    .line 888
    const-wide/high16 v20, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v12, v20

    .line 890
    :cond_2
    move-wide/from16 v20, v10

    const-wide/high16 v22, 0x3ff0000000000000L    # 1.0

    cmpg-double v20, v20, v22

    if-gez v20, :cond_3

    .line 891
    const-wide/high16 v20, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v10, v20

    .line 894
    :cond_3
    move-wide/from16 v20, v10

    move-wide/from16 v6, v20

    .line 895
    move-wide/from16 v20, v12

    move-wide/from16 v8, v20

    .line 899
    move-wide/from16 v20, v6

    const-wide/16 v22, 0x0

    cmpg-double v20, v20, v22

    if-lez v20, :cond_4

    move-wide/from16 v20, v8

    const-wide/16 v22, 0x0

    cmpg-double v20, v20, v22

    if-gtz v20, :cond_13

    .line 900
    :cond_4
    move-object/from16 v20, v3

    invoke-virtual/range {v20 .. v20}, Lcom/sun/javafx/geom/BaseBounds;->makeEmpty()Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v20

    move-object/from16 v2, v20

    .line 905
    .end local v2    # "this":Ljavafx/scene/media/MediaView;
    :goto_6
    return-object v2

    .line 852
    .end local v5    # "media":Ljavafx/scene/media/Media;
    .end local v6    # "w":D
    .end local v8    # "h":D
    .end local v10    # "newW":D
    .end local v12    # "newH":D
    .end local v14    # "vw":D
    .end local v16    # "vh":D
    .restart local v2    # "this":Ljavafx/scene/media/MediaView;
    :cond_5
    move-object/from16 v20, v2

    invoke-virtual/range {v20 .. v20}, Ljavafx/scene/media/MediaView;->getMediaPlayer()Ljavafx/scene/media/MediaPlayer;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljavafx/scene/media/MediaPlayer;->getMedia()Ljavafx/scene/media/Media;

    move-result-object v20

    goto/16 :goto_0

    .line 853
    .restart local v5    # "media":Ljavafx/scene/media/Media;
    :cond_6
    const-wide/16 v20, 0x0

    goto/16 :goto_1

    .line 854
    .restart local v6    # "w":D
    :cond_7
    const-wide/16 v20, 0x0

    goto/16 :goto_2

    .line 857
    .restart local v8    # "h":D
    .restart local v10    # "newW":D
    .restart local v12    # "newH":D
    :cond_8
    const-wide/16 v20, 0x0

    goto/16 :goto_3

    .line 858
    .restart local v14    # "vw":D
    :cond_9
    const-wide/16 v20, 0x0

    goto/16 :goto_4

    .line 868
    .restart local v16    # "vh":D
    :cond_a
    move-object/from16 v20, v2

    invoke-virtual/range {v20 .. v20}, Ljavafx/scene/media/MediaView;->isPreserveRatio()Z

    move-result v20

    if-eqz v20, :cond_11

    .line 869
    move-object/from16 v20, v2

    invoke-virtual/range {v20 .. v20}, Ljavafx/scene/media/MediaView;->getFitWidth()D

    move-result-wide v20

    const-wide/16 v22, 0x0

    cmpg-double v20, v20, v22

    if-gtz v20, :cond_c

    .line 870
    move-wide/from16 v20, v8

    const-wide/16 v22, 0x0

    cmpl-double v20, v20, v22

    if-lez v20, :cond_b

    move-wide/from16 v20, v6

    move-object/from16 v22, v2

    invoke-virtual/range {v22 .. v22}, Ljavafx/scene/media/MediaView;->getFitHeight()D

    move-result-wide v22

    move-wide/from16 v24, v8

    div-double v22, v22, v24

    mul-double v20, v20, v22

    :goto_7
    move-wide/from16 v10, v20

    .line 871
    move-object/from16 v20, v2

    invoke-virtual/range {v20 .. v20}, Ljavafx/scene/media/MediaView;->getFitHeight()D

    move-result-wide v20

    move-wide/from16 v12, v20

    goto/16 :goto_5

    .line 870
    :cond_b
    const-wide/16 v20, 0x0

    goto :goto_7

    .line 872
    :cond_c
    move-object/from16 v20, v2

    invoke-virtual/range {v20 .. v20}, Ljavafx/scene/media/MediaView;->getFitHeight()D

    move-result-wide v20

    const-wide/16 v22, 0x0

    cmpg-double v20, v20, v22

    if-gtz v20, :cond_e

    .line 873
    move-object/from16 v20, v2

    invoke-virtual/range {v20 .. v20}, Ljavafx/scene/media/MediaView;->getFitWidth()D

    move-result-wide v20

    move-wide/from16 v10, v20

    .line 874
    move-wide/from16 v20, v6

    const-wide/16 v22, 0x0

    cmpl-double v20, v20, v22

    if-lez v20, :cond_d

    move-wide/from16 v20, v8

    move-object/from16 v22, v2

    invoke-virtual/range {v22 .. v22}, Ljavafx/scene/media/MediaView;->getFitWidth()D

    move-result-wide v22

    move-wide/from16 v24, v6

    div-double v22, v22, v24

    mul-double v20, v20, v22

    :goto_8
    move-wide/from16 v12, v20

    goto/16 :goto_5

    :cond_d
    const-wide/16 v20, 0x0

    goto :goto_8

    .line 876
    :cond_e
    move-wide/from16 v20, v6

    const-wide/16 v22, 0x0

    cmpl-double v20, v20, v22

    if-nez v20, :cond_f

    move-object/from16 v20, v2

    invoke-virtual/range {v20 .. v20}, Ljavafx/scene/media/MediaView;->getFitWidth()D

    move-result-wide v20

    move-wide/from16 v6, v20

    .line 877
    :cond_f
    move-wide/from16 v20, v8

    const-wide/16 v22, 0x0

    cmpl-double v20, v20, v22

    if-nez v20, :cond_10

    move-object/from16 v20, v2

    invoke-virtual/range {v20 .. v20}, Ljavafx/scene/media/MediaView;->getFitHeight()D

    move-result-wide v20

    move-wide/from16 v8, v20

    .line 878
    :cond_10
    move-object/from16 v20, v2

    invoke-virtual/range {v20 .. v20}, Ljavafx/scene/media/MediaView;->getFitWidth()D

    move-result-wide v20

    move-wide/from16 v22, v6

    div-double v20, v20, v22

    move-object/from16 v22, v2

    invoke-virtual/range {v22 .. v22}, Ljavafx/scene/media/MediaView;->getFitHeight()D

    move-result-wide v22

    move-wide/from16 v24, v8

    div-double v22, v22, v24

    invoke-static/range {v20 .. v23}, Ljava/lang/Math;->min(DD)D

    move-result-wide v20

    move-wide/from16 v18, v20

    .line 879
    .local v18, "scale":D
    move-wide/from16 v20, v6

    move-wide/from16 v22, v18

    mul-double v20, v20, v22

    move-wide/from16 v10, v20

    .line 880
    move-wide/from16 v20, v8

    move-wide/from16 v22, v18

    mul-double v20, v20, v22

    move-wide/from16 v12, v20

    .line 881
    goto/16 :goto_5

    .line 882
    .end local v18    # "scale":D
    :cond_11
    move-object/from16 v20, v2

    invoke-virtual/range {v20 .. v20}, Ljavafx/scene/media/MediaView;->getFitHeight()D

    move-result-wide v20

    const-wide/16 v22, 0x0

    cmpg-double v20, v20, v22

    if-gtz v20, :cond_12

    .line 883
    move-wide/from16 v20, v8

    move-wide/from16 v12, v20

    goto/16 :goto_5

    .line 884
    :cond_12
    move-object/from16 v20, v2

    invoke-virtual/range {v20 .. v20}, Ljavafx/scene/media/MediaView;->getFitWidth()D

    move-result-wide v20

    const-wide/16 v22, 0x0

    cmpg-double v20, v20, v22

    if-gtz v20, :cond_1

    .line 885
    move-wide/from16 v20, v6

    move-wide/from16 v10, v20

    goto/16 :goto_5

    .line 902
    :cond_13
    move-object/from16 v20, v3

    move-object/from16 v21, v2

    invoke-virtual/range {v21 .. v21}, Ljavafx/scene/media/MediaView;->getX()D

    move-result-wide v21

    move-wide/from16 v0, v21

    double-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v22, v2

    invoke-virtual/range {v22 .. v22}, Ljavafx/scene/media/MediaView;->getY()D

    move-result-wide v22

    move-wide/from16 v0, v22

    double-to-float v0, v0

    move/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v24, v2

    .line 903
    invoke-virtual/range {v24 .. v24}, Ljavafx/scene/media/MediaView;->getX()D

    move-result-wide v24

    move-wide/from16 v26, v6

    add-double v24, v24, v26

    move-wide/from16 v0, v24

    double-to-float v0, v0

    move/from16 v24, v0

    move-object/from16 v25, v2

    invoke-virtual/range {v25 .. v25}, Ljavafx/scene/media/MediaView;->getY()D

    move-result-wide v25

    move-wide/from16 v27, v8

    add-double v25, v25, v27

    move-wide/from16 v0, v25

    double-to-float v0, v0

    move/from16 v25, v0

    const/16 v26, 0x0

    .line 902
    invoke-virtual/range {v20 .. v26}, Lcom/sun/javafx/geom/BaseBounds;->deriveWithNewBounds(FFFFFF)Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v20

    move-object/from16 v3, v20

    .line 904
    move-object/from16 v20, v4

    move-object/from16 v21, v3

    move-object/from16 v22, v3

    invoke-virtual/range {v20 .. v22}, Lcom/sun/javafx/geom/transform/BaseTransform;->transform(Lcom/sun/javafx/geom/BaseBounds;Lcom/sun/javafx/geom/BaseBounds;)Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v20

    move-object/from16 v3, v20

    .line 905
    move-object/from16 v20, v3

    move-object/from16 v2, v20

    goto/16 :goto_6
.end method

.method protected impl_createPeer()Lcom/sun/javafx/sg/prism/NGNode;
    .locals 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 837
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaView;
    new-instance v2, Ljavafx/scene/media/NGMediaView;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    invoke-direct {v3}, Ljavafx/scene/media/NGMediaView;-><init>()V

    move-object v1, v2

    .line 839
    .local v1, "peer":Ljavafx/scene/media/NGMediaView;
    move-object v2, v1

    new-instance v3, Ljavafx/scene/media/MediaView$MediaViewFrameTracker;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Ljavafx/scene/media/MediaView$MediaViewFrameTracker;-><init>(Ljavafx/scene/media/MediaView;Ljavafx/scene/media/MediaView$1;)V

    invoke-virtual {v2, v3}, Ljavafx/scene/media/NGMediaView;->setFrameTracker(Lcom/sun/javafx/sg/prism/MediaFrameTracker;)V

    .line 840
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/media/MediaView;
    return-object v0
.end method

.method public impl_perfGetDecodedFrameCount()I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 995
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaView;
    move-object v1, v0

    iget v1, v1, Ljavafx/scene/media/MediaView;->decodedFrameCount:I

    move v0, v1

    .end local v0    # "this":Ljavafx/scene/media/MediaView;
    return v0
.end method

.method public impl_perfGetRenderedFrameCount()I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1005
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaView;
    move-object v1, v0

    iget v1, v1, Ljavafx/scene/media/MediaView;->renderedFrameCount:I

    move v0, v1

    .end local v0    # "this":Ljavafx/scene/media/MediaView;
    return v0
.end method

.method public impl_perfReset()V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 984
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaView;
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Ljavafx/scene/media/MediaView;->decodedFrameCount:I

    .line 985
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Ljavafx/scene/media/MediaView;->renderedFrameCount:I

    .line 986
    return-void
.end method

.method public impl_processMXNode(Lcom/sun/javafx/jmx/MXNodeAlgorithm;Lcom/sun/javafx/jmx/MXNodeAlgorithmContext;)Ljava/lang/Object;
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1026
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaView;
    move-object v1, p1

    .local v1, "alg":Lcom/sun/javafx/jmx/MXNodeAlgorithm;
    move-object v2, p2

    .local v2, "ctx":Lcom/sun/javafx/jmx/MXNodeAlgorithmContext;
    move-object v3, v1

    move-object v4, v0

    move-object v5, v2

    invoke-interface {v3, v4, v5}, Lcom/sun/javafx/jmx/MXNodeAlgorithm;->processLeafNode(Ljavafx/scene/Node;Lcom/sun/javafx/jmx/MXNodeAlgorithmContext;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Ljavafx/scene/media/MediaView;
    return-object v0
.end method

.method public impl_transformsChanged()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 262
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaView;
    move-object v1, v0

    invoke-super {v1}, Ljavafx/scene/Node;->impl_transformsChanged()V

    .line 263
    invoke-static {}, Lcom/sun/media/jfxmediaimpl/HostUtils;->isIOS()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 264
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/media/MediaView;->updateOverlayTransform()V

    .line 266
    :cond_0
    return-void
.end method

.method public impl_updatePeer()V
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 947
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaView;
    move-object v3, v0

    invoke-super {v3}, Ljavafx/scene/Node;->impl_updatePeer()V

    .line 949
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/media/MediaView;->impl_getPeer()Lcom/sun/javafx/sg/prism/NGNode;

    move-result-object v3

    check-cast v3, Ljavafx/scene/media/NGMediaView;

    move-object v1, v3

    .line 950
    .local v1, "peer":Ljavafx/scene/media/NGMediaView;
    move-object v3, v0

    sget-object v4, Lcom/sun/javafx/scene/DirtyBits;->NODE_GEOMETRY:Lcom/sun/javafx/scene/DirtyBits;

    invoke-virtual {v3, v4}, Ljavafx/scene/media/MediaView;->impl_isDirty(Lcom/sun/javafx/scene/DirtyBits;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 951
    move-object v3, v1

    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/media/MediaView;->getX()D

    move-result-wide v4

    double-to-float v4, v4

    invoke-virtual {v3, v4}, Ljavafx/scene/media/NGMediaView;->setX(F)V

    .line 952
    move-object v3, v1

    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/media/MediaView;->getY()D

    move-result-wide v4

    double-to-float v4, v4

    invoke-virtual {v3, v4}, Ljavafx/scene/media/NGMediaView;->setY(F)V

    .line 954
    :cond_0
    move-object v3, v0

    sget-object v4, Lcom/sun/javafx/scene/DirtyBits;->NODE_SMOOTH:Lcom/sun/javafx/scene/DirtyBits;

    invoke-virtual {v3, v4}, Ljavafx/scene/media/MediaView;->impl_isDirty(Lcom/sun/javafx/scene/DirtyBits;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 955
    move-object v3, v1

    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/media/MediaView;->isSmooth()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljavafx/scene/media/NGMediaView;->setSmooth(Z)V

    .line 957
    :cond_1
    move-object v3, v0

    sget-object v4, Lcom/sun/javafx/scene/DirtyBits;->NODE_VIEWPORT:Lcom/sun/javafx/scene/DirtyBits;

    invoke-virtual {v3, v4}, Ljavafx/scene/media/MediaView;->impl_isDirty(Lcom/sun/javafx/scene/DirtyBits;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 958
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/media/MediaView;->updateViewport()V

    .line 960
    :cond_2
    move-object v3, v0

    sget-object v4, Lcom/sun/javafx/scene/DirtyBits;->NODE_CONTENTS:Lcom/sun/javafx/scene/DirtyBits;

    invoke-virtual {v3, v4}, Ljavafx/scene/media/MediaView;->impl_isDirty(Lcom/sun/javafx/scene/DirtyBits;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 961
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/media/NGMediaView;->renderNextFrame()V

    .line 963
    :cond_3
    move-object v3, v0

    sget-object v4, Lcom/sun/javafx/scene/DirtyBits;->MEDIAVIEW_MEDIA:Lcom/sun/javafx/scene/DirtyBits;

    invoke-virtual {v3, v4}, Ljavafx/scene/media/MediaView;->impl_isDirty(Lcom/sun/javafx/scene/DirtyBits;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 964
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/media/MediaView;->getMediaPlayer()Ljavafx/scene/media/MediaPlayer;

    move-result-object v3

    move-object v2, v3

    .line 965
    .local v2, "player":Ljavafx/scene/media/MediaPlayer;
    move-object v3, v2

    if-eqz v3, :cond_5

    .line 966
    move-object v3, v1

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljavafx/scene/media/NGMediaView;->setMediaProvider(Ljava/lang/Object;)V

    .line 967
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/media/MediaView;->updateViewport()V

    .line 972
    .end local v2    # "player":Ljavafx/scene/media/MediaPlayer;
    :cond_4
    :goto_0
    return-void

    .line 969
    .restart local v2    # "player":Ljavafx/scene/media/MediaPlayer;
    :cond_5
    move-object v3, v1

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljavafx/scene/media/NGMediaView;->setMediaProvider(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final isPreserveRatio()Z
    .locals 2

    .prologue
    .line 461
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaView;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/media/MediaView;->preserveRatio:Ljavafx/beans/property/BooleanProperty;

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Ljavafx/scene/media/MediaView;
    return v0

    .restart local v0    # "this":Ljavafx/scene/media/MediaView;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/media/MediaView;->preserveRatio:Ljavafx/beans/property/BooleanProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/BooleanProperty;->get()Z

    move-result v1

    goto :goto_0
.end method

.method public final isSmooth()Z
    .locals 2

    .prologue
    .line 518
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaView;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/media/MediaView;->smooth:Ljavafx/beans/property/BooleanProperty;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move v0, v1

    .end local v0    # "this":Ljavafx/scene/media/MediaView;
    return v0

    .restart local v0    # "this":Ljavafx/scene/media/MediaView;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/media/MediaView;->smooth:Ljavafx/beans/property/BooleanProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/BooleanProperty;->get()Z

    move-result v1

    goto :goto_0
.end method

.method public final mediaPlayerProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/scene/media/MediaPlayer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 341
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaView;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/media/MediaView;->mediaPlayer:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    .line 342
    move-object v1, v0

    new-instance v2, Ljavafx/scene/media/MediaView$1;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/media/MediaView$1;-><init>(Ljavafx/scene/media/MediaView;)V

    iput-object v2, v1, Ljavafx/scene/media/MediaView;->mediaPlayer:Ljavafx/beans/property/ObjectProperty;

    .line 392
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/media/MediaView;->mediaPlayer:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/media/MediaView;
    return-object v0
.end method

.method notifyMediaChange()V
    .locals 5

    .prologue
    .line 810
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaView;
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/media/MediaView;->getMediaPlayer()Ljavafx/scene/media/MediaPlayer;

    move-result-object v3

    move-object v1, v3

    .line 811
    .local v1, "player":Ljavafx/scene/media/MediaPlayer;
    move-object v3, v1

    if-eqz v3, :cond_0

    .line 812
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/media/MediaView;->impl_getPeer()Lcom/sun/javafx/sg/prism/NGNode;

    move-result-object v3

    check-cast v3, Ljavafx/scene/media/NGMediaView;

    move-object v2, v3

    .line 813
    .local v2, "peer":Ljavafx/scene/media/NGMediaView;
    move-object v3, v2

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljavafx/scene/media/NGMediaView;->setMediaProvider(Ljava/lang/Object;)V

    .line 816
    .end local v2    # "peer":Ljavafx/scene/media/NGMediaView;
    :cond_0
    move-object v3, v0

    sget-object v4, Lcom/sun/javafx/scene/DirtyBits;->MEDIAVIEW_MEDIA:Lcom/sun/javafx/scene/DirtyBits;

    invoke-virtual {v3, v4}, Ljavafx/scene/media/MediaView;->impl_markDirty(Lcom/sun/javafx/scene/DirtyBits;)V

    .line 817
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/media/MediaView;->impl_geomChanged()V

    .line 818
    return-void
.end method

.method notifyMediaFrameUpdated()V
    .locals 5

    .prologue
    .line 826
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaView;
    move-object v1, v0

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    iget v2, v2, Ljavafx/scene/media/MediaView;->decodedFrameCount:I

    const/4 v3, 0x1

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Ljavafx/scene/media/MediaView;->decodedFrameCount:I

    .line 827
    move-object v1, v0

    sget-object v2, Lcom/sun/javafx/scene/DirtyBits;->NODE_CONTENTS:Lcom/sun/javafx/scene/DirtyBits;

    invoke-virtual {v1, v2}, Ljavafx/scene/media/MediaView;->impl_markDirty(Lcom/sun/javafx/scene/DirtyBits;)V

    .line 828
    return-void
.end method

.method notifyMediaSizeChange()V
    .locals 3

    .prologue
    .line 821
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaView;
    move-object v1, v0

    sget-object v2, Lcom/sun/javafx/scene/DirtyBits;->NODE_VIEWPORT:Lcom/sun/javafx/scene/DirtyBits;

    invoke-virtual {v1, v2}, Ljavafx/scene/media/MediaView;->impl_markDirty(Lcom/sun/javafx/scene/DirtyBits;)V

    .line 822
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/media/MediaView;->impl_geomChanged()V

    .line 823
    return-void
.end method

.method public final onErrorProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/scene/media/MediaErrorEvent;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 419
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaView;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/media/MediaView;->onError:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    .line 420
    move-object v1, v0

    new-instance v2, Ljavafx/scene/media/MediaView$2;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/media/MediaView$2;-><init>(Ljavafx/scene/media/MediaView;)V

    iput-object v2, v1, Ljavafx/scene/media/MediaView;->onError:Ljavafx/beans/property/ObjectProperty;

    .line 438
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/media/MediaView;->onError:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/media/MediaView;
    return-object v0
.end method

.method public final preserveRatioProperty()Ljavafx/beans/property/BooleanProperty;
    .locals 7

    .prologue
    .line 465
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaView;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/media/MediaView;->preserveRatio:Ljavafx/beans/property/BooleanProperty;

    if-nez v1, :cond_0

    .line 466
    move-object v1, v0

    new-instance v2, Ljavafx/scene/media/MediaView$3;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Ljavafx/scene/media/MediaView$3;-><init>(Ljavafx/scene/media/MediaView;Z)V

    iput-object v2, v1, Ljavafx/scene/media/MediaView;->preserveRatio:Ljavafx/beans/property/BooleanProperty;

    .line 490
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/media/MediaView;->preserveRatio:Ljavafx/beans/property/BooleanProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/media/MediaView;
    return-object v0
.end method

.method public final setFitHeight(D)V
    .locals 7

    .prologue
    .line 718
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaView;
    move-wide v1, p1

    .local v1, "value":D
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/media/MediaView;->fitHeightProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v3

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    .line 719
    return-void
.end method

.method public final setFitWidth(D)V
    .locals 7

    .prologue
    .line 661
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaView;
    move-wide v1, p1

    .local v1, "value":D
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/media/MediaView;->fitWidthProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v3

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    .line 662
    return-void
.end method

.method public final setMediaPlayer(Ljavafx/scene/media/MediaPlayer;)V
    .locals 4

    .prologue
    .line 328
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaView;
    move-object v1, p1

    .local v1, "value":Ljavafx/scene/media/MediaPlayer;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/media/MediaView;->mediaPlayerProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 329
    return-void
.end method

.method public final setOnError(Ljavafx/event/EventHandler;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/scene/media/MediaErrorEvent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 407
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaView;
    move-object v1, p1

    .local v1, "value":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<Ljavafx/scene/media/MediaErrorEvent;>;"
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/media/MediaView;->onErrorProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 408
    return-void
.end method

.method public final setPreserveRatio(Z)V
    .locals 4

    .prologue
    .line 453
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaView;
    move v1, p1

    .local v1, "value":Z
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/media/MediaView;->preserveRatioProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v2

    move v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/BooleanProperty;->set(Z)V

    .line 454
    return-void
.end method

.method public final setSmooth(Z)V
    .locals 4

    .prologue
    .line 510
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaView;
    move v1, p1

    .local v1, "value":Z
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/media/MediaView;->smoothProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v2

    move v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/BooleanProperty;->set(Z)V

    .line 511
    return-void
.end method

.method public final setViewport(Ljavafx/geometry/Rectangle2D;)V
    .locals 4

    .prologue
    .line 774
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaView;
    move-object v1, p1

    .local v1, "value":Ljavafx/geometry/Rectangle2D;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/media/MediaView;->viewportProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 775
    return-void
.end method

.method public final setX(D)V
    .locals 7

    .prologue
    .line 554
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaView;
    move-wide v1, p1

    .local v1, "value":D
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/media/MediaView;->xProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v3

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    .line 555
    return-void
.end method

.method public final setY(D)V
    .locals 7

    .prologue
    .line 604
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaView;
    move-wide v1, p1

    .local v1, "value":D
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/media/MediaView;->yProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v3

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    .line 605
    return-void
.end method

.method public final smoothProperty()Ljavafx/beans/property/BooleanProperty;
    .locals 6

    .prologue
    .line 522
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaView;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/media/MediaView;->smooth:Ljavafx/beans/property/BooleanProperty;

    if-nez v1, :cond_0

    .line 523
    move-object v1, v0

    new-instance v2, Ljavafx/scene/media/MediaView$4;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/media/MediaView$4;-><init>(Ljavafx/scene/media/MediaView;)V

    iput-object v2, v1, Ljavafx/scene/media/MediaView;->smooth:Ljavafx/beans/property/BooleanProperty;

    .line 541
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/media/MediaView;->smooth:Ljavafx/beans/property/BooleanProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/media/MediaView;
    return-object v0
.end method

.method updateViewport()V
    .locals 10

    .prologue
    .line 922
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaView;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/media/MediaView;->getMediaPlayer()Ljavafx/scene/media/MediaPlayer;

    move-result-object v2

    if-nez v2, :cond_0

    .line 923
    .line 937
    :goto_0
    return-void

    .line 926
    :cond_0
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/media/MediaView;->impl_getPeer()Lcom/sun/javafx/sg/prism/NGNode;

    move-result-object v2

    check-cast v2, Ljavafx/scene/media/NGMediaView;

    move-object v1, v2

    .line 927
    .local v1, "peer":Ljavafx/scene/media/NGMediaView;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/media/MediaView;->getViewport()Ljavafx/geometry/Rectangle2D;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 928
    move-object v2, v1

    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/media/MediaView;->getFitWidth()D

    move-result-wide v3

    double-to-float v3, v3

    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/media/MediaView;->getFitHeight()D

    move-result-wide v4

    double-to-float v4, v4

    move-object v5, v0

    .line 929
    invoke-virtual {v5}, Ljavafx/scene/media/MediaView;->getViewport()Ljavafx/geometry/Rectangle2D;

    move-result-object v5

    invoke-virtual {v5}, Ljavafx/geometry/Rectangle2D;->getMinX()D

    move-result-wide v5

    double-to-float v5, v5

    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/scene/media/MediaView;->getViewport()Ljavafx/geometry/Rectangle2D;

    move-result-object v6

    invoke-virtual {v6}, Ljavafx/geometry/Rectangle2D;->getMinY()D

    move-result-wide v6

    double-to-float v6, v6

    move-object v7, v0

    .line 930
    invoke-virtual {v7}, Ljavafx/scene/media/MediaView;->getViewport()Ljavafx/geometry/Rectangle2D;

    move-result-object v7

    invoke-virtual {v7}, Ljavafx/geometry/Rectangle2D;->getWidth()D

    move-result-wide v7

    double-to-float v7, v7

    move-object v8, v0

    invoke-virtual {v8}, Ljavafx/scene/media/MediaView;->getViewport()Ljavafx/geometry/Rectangle2D;

    move-result-object v8

    invoke-virtual {v8}, Ljavafx/geometry/Rectangle2D;->getHeight()D

    move-result-wide v8

    double-to-float v8, v8

    move-object v9, v0

    .line 931
    invoke-virtual {v9}, Ljavafx/scene/media/MediaView;->isPreserveRatio()Z

    move-result v9

    .line 928
    invoke-virtual/range {v2 .. v9}, Ljavafx/scene/media/NGMediaView;->setViewport(FFFFFFZ)V

    .line 937
    :goto_1
    goto :goto_0

    .line 933
    :cond_1
    move-object v2, v1

    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/media/MediaView;->getFitWidth()D

    move-result-wide v3

    double-to-float v3, v3

    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/media/MediaView;->getFitHeight()D

    move-result-wide v4

    double-to-float v4, v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v9, v0

    .line 935
    invoke-virtual {v9}, Ljavafx/scene/media/MediaView;->isPreserveRatio()Z

    move-result v9

    .line 933
    invoke-virtual/range {v2 .. v9}, Ljavafx/scene/media/NGMediaView;->setViewport(FFFFFFZ)V

    goto :goto_1
.end method

.method public final viewportProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/geometry/Rectangle2D;",
            ">;"
        }
    .end annotation

    .prologue
    .line 786
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaView;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/media/MediaView;->viewport:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    .line 787
    move-object v1, v0

    new-instance v2, Ljavafx/scene/media/MediaView$9;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/media/MediaView$9;-><init>(Ljavafx/scene/media/MediaView;)V

    iput-object v2, v1, Ljavafx/scene/media/MediaView;->viewport:Ljavafx/beans/property/ObjectProperty;

    .line 806
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/media/MediaView;->viewport:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/media/MediaView;
    return-object v0
.end method

.method public final xProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 6

    .prologue
    .line 566
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaView;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/media/MediaView;->x:Ljavafx/beans/property/DoubleProperty;

    if-nez v1, :cond_0

    .line 567
    move-object v1, v0

    new-instance v2, Ljavafx/scene/media/MediaView$5;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/media/MediaView$5;-><init>(Ljavafx/scene/media/MediaView;)V

    iput-object v2, v1, Ljavafx/scene/media/MediaView;->x:Ljavafx/beans/property/DoubleProperty;

    .line 591
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/media/MediaView;->x:Ljavafx/beans/property/DoubleProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/media/MediaView;
    return-object v0
.end method

.method public final yProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 6

    .prologue
    .line 616
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaView;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/media/MediaView;->y:Ljavafx/beans/property/DoubleProperty;

    if-nez v1, :cond_0

    .line 617
    move-object v1, v0

    new-instance v2, Ljavafx/scene/media/MediaView$6;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/media/MediaView$6;-><init>(Ljavafx/scene/media/MediaView;)V

    iput-object v2, v1, Ljavafx/scene/media/MediaView;->y:Ljavafx/beans/property/DoubleProperty;

    .line 641
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/media/MediaView;->y:Ljavafx/beans/property/DoubleProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/media/MediaView;
    return-object v0
.end method
