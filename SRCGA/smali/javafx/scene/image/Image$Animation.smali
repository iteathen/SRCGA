.class final Ljavafx/scene/image/Image$Animation;
.super Ljava/lang/Object;
.source "Image.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/image/Image;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Animation"
.end annotation


# instance fields
.field final frameIndex:Ljavafx/beans/property/SimpleIntegerProperty;

.field final imageRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Ljavafx/scene/image/Image;",
            ">;"
        }
    .end annotation
.end field

.field final timeline:Ljavafx/animation/Timeline;


# direct methods
.method public constructor <init>(Ljavafx/scene/image/Image;Lcom/sun/javafx/tk/ImageLoader;)V
    .locals 13

    .prologue
    .line 875
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/image/Image$Animation;
    move-object v1, p1

    .local v1, "image":Ljavafx/scene/image/Image;
    move-object v2, p2

    .local v2, "loader":Lcom/sun/javafx/tk/ImageLoader;
    move-object v7, v0

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    .line 868
    move-object v7, v0

    new-instance v8, Ljavafx/scene/image/Image$Animation$1;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    move-object v10, v0

    invoke-direct {v9, v10}, Ljavafx/scene/image/Image$Animation$1;-><init>(Ljavafx/scene/image/Image$Animation;)V

    iput-object v8, v7, Ljavafx/scene/image/Image$Animation;->frameIndex:Ljavafx/beans/property/SimpleIntegerProperty;

    .line 876
    move-object v7, v0

    new-instance v8, Ljava/lang/ref/WeakReference;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    move-object v10, v1

    invoke-direct {v9, v10}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v8, v7, Ljavafx/scene/image/Image$Animation;->imageRef:Ljava/lang/ref/WeakReference;

    .line 877
    move-object v7, v0

    new-instance v8, Ljavafx/animation/Timeline;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    invoke-direct {v9}, Ljavafx/animation/Timeline;-><init>()V

    iput-object v8, v7, Ljavafx/scene/image/Image$Animation;->timeline:Ljavafx/animation/Timeline;

    .line 878
    move-object v7, v2

    invoke-interface {v7}, Lcom/sun/javafx/tk/ImageLoader;->getLoopCount()I

    move-result v7

    move v3, v7

    .line 879
    .local v3, "loopCount":I
    move-object v7, v0

    iget-object v7, v7, Ljavafx/scene/image/Image$Animation;->timeline:Ljavafx/animation/Timeline;

    move v8, v3

    if-nez v8, :cond_0

    const/4 v8, -0x1

    :goto_0
    invoke-virtual {v7, v8}, Ljavafx/animation/Timeline;->setCycleCount(I)V

    .line 881
    move-object v7, v2

    invoke-interface {v7}, Lcom/sun/javafx/tk/ImageLoader;->getFrameCount()I

    move-result v7

    move v4, v7

    .line 882
    .local v4, "frameCount":I
    const/4 v7, 0x0

    move v5, v7

    .line 884
    .local v5, "duration":I
    const/4 v7, 0x0

    move v6, v7

    .local v6, "i":I
    :goto_1
    move v7, v6

    move v8, v4

    if-ge v7, v8, :cond_1

    .line 885
    move-object v7, v0

    move v8, v6

    move v9, v5

    int-to-double v9, v9

    invoke-direct {v7, v8, v9, v10}, Ljavafx/scene/image/Image$Animation;->addKeyFrame(ID)V

    .line 886
    move v7, v5

    move-object v8, v2

    move v9, v6

    invoke-interface {v8, v9}, Lcom/sun/javafx/tk/ImageLoader;->getFrameDelay(I)I

    move-result v8

    add-int/2addr v7, v8

    move v5, v7

    .line 884
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 879
    .end local v4    # "frameCount":I
    .end local v5    # "duration":I
    .end local v6    # "i":I
    :cond_0
    move v8, v3

    goto :goto_0

    .line 891
    .restart local v4    # "frameCount":I
    .restart local v5    # "duration":I
    .restart local v6    # "i":I
    :cond_1
    move-object v7, v0

    iget-object v7, v7, Ljavafx/scene/image/Image$Animation;->timeline:Ljavafx/animation/Timeline;

    invoke-virtual {v7}, Ljavafx/animation/Timeline;->getKeyFrames()Ljavafx/collections/ObservableList;

    move-result-object v7

    new-instance v8, Ljavafx/animation/KeyFrame;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    move v10, v5

    int-to-double v10, v10

    invoke-static {v10, v11}, Ljavafx/util/Duration;->millis(D)Ljavafx/util/Duration;

    move-result-object v10

    const/4 v11, 0x0

    new-array v11, v11, [Ljavafx/animation/KeyValue;

    invoke-direct {v9, v10, v11}, Ljavafx/animation/KeyFrame;-><init>(Ljavafx/util/Duration;[Ljavafx/animation/KeyValue;)V

    invoke-interface {v7, v8}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v7

    .line 892
    return-void
.end method

.method static synthetic access$000(Ljavafx/scene/image/Image$Animation;I)V
    .locals 4

    .prologue
    .line 865
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/image/Image$Animation;
    move v1, p1

    .local v1, "x1":I
    move-object v2, v0

    move v3, v1

    invoke-direct {v2, v3}, Ljavafx/scene/image/Image$Animation;->updateImage(I)V

    return-void
.end method

.method private addKeyFrame(ID)V
    .locals 18

    .prologue
    .line 913
    move-object/from16 v0, p0

    .local v0, "this":Ljavafx/scene/image/Image$Animation;
    move/from16 v1, p1

    .local v1, "index":I
    move-wide/from16 v2, p2

    .local v2, "duration":D
    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/image/Image$Animation;->timeline:Ljavafx/animation/Timeline;

    invoke-virtual {v4}, Ljavafx/animation/Timeline;->getKeyFrames()Ljavafx/collections/ObservableList;

    move-result-object v4

    new-instance v5, Ljavafx/animation/KeyFrame;

    move-object/from16 v16, v5

    move-object/from16 v5, v16

    move-object/from16 v6, v16

    move-wide v7, v2

    .line 914
    invoke-static {v7, v8}, Ljavafx/util/Duration;->millis(D)Ljavafx/util/Duration;

    move-result-object v7

    const/4 v8, 0x1

    new-array v8, v8, [Ljavafx/animation/KeyValue;

    move-object/from16 v16, v8

    move-object/from16 v8, v16

    move-object/from16 v9, v16

    const/4 v10, 0x0

    new-instance v11, Ljavafx/animation/KeyValue;

    move-object/from16 v16, v11

    move-object/from16 v11, v16

    move-object/from16 v12, v16

    move-object v13, v0

    iget-object v13, v13, Ljavafx/scene/image/Image$Animation;->frameIndex:Ljavafx/beans/property/SimpleIntegerProperty;

    move v14, v1

    .line 915
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    sget-object v15, Ljavafx/animation/Interpolator;->DISCRETE:Ljavafx/animation/Interpolator;

    invoke-direct {v12, v13, v14, v15}, Ljavafx/animation/KeyValue;-><init>(Ljavafx/beans/value/WritableValue;Ljava/lang/Object;Ljavafx/animation/Interpolator;)V

    aput-object v11, v9, v10

    invoke-direct {v6, v7, v8}, Ljavafx/animation/KeyFrame;-><init>(Ljavafx/util/Duration;[Ljavafx/animation/KeyValue;)V

    .line 913
    invoke-interface {v4, v5}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v4

    .line 917
    return-void
.end method

.method private updateImage(I)V
    .locals 6

    .prologue
    .line 903
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/image/Image$Animation;
    move v1, p1

    .local v1, "frameIndex":I
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/image/Image$Animation;->imageRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavafx/scene/image/Image;

    move-object v2, v3

    .line 904
    .local v2, "image":Ljavafx/scene/image/Image;
    move-object v3, v2

    if-eqz v3, :cond_0

    .line 905
    move-object v3, v2

    invoke-static {v3}, Ljavafx/scene/image/Image;->access$200(Ljavafx/scene/image/Image;)Ljavafx/scene/image/Image$ObjectPropertyImpl;

    move-result-object v3

    move-object v4, v2

    .line 906
    invoke-static {v4}, Ljavafx/scene/image/Image;->access$100(Ljavafx/scene/image/Image;)[Lcom/sun/javafx/tk/PlatformImage;

    move-result-object v4

    move v5, v1

    aget-object v4, v4, v5

    .line 905
    invoke-virtual {v3, v4}, Ljavafx/scene/image/Image$ObjectPropertyImpl;->set(Ljava/lang/Object;)V

    .line 910
    :goto_0
    return-void

    .line 908
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/image/Image$Animation;->timeline:Ljavafx/animation/Timeline;

    invoke-virtual {v3}, Ljavafx/animation/Timeline;->stop()V

    goto :goto_0
.end method


# virtual methods
.method public start()V
    .locals 2

    .prologue
    .line 895
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/image/Image$Animation;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/image/Image$Animation;->timeline:Ljavafx/animation/Timeline;

    invoke-virtual {v1}, Ljavafx/animation/Timeline;->play()V

    .line 896
    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 899
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/image/Image$Animation;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/image/Image$Animation;->timeline:Ljavafx/animation/Timeline;

    invoke-virtual {v1}, Ljavafx/animation/Timeline;->stop()V

    .line 900
    return-void
.end method
