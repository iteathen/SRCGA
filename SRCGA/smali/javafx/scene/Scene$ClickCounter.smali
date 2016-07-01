.class Ljavafx/scene/Scene$ClickCounter;
.super Ljava/lang/Object;
.source "Scene.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/Scene;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ClickCounter"
.end annotation


# instance fields
.field private count:I

.field private out:Z

.field private pressedX:D

.field private pressedY:D

.field private still:Z

.field private timeout:Ljavafx/animation/Timeline;

.field toolkit:Lcom/sun/javafx/tk/Toolkit;


# direct methods
.method constructor <init>()V
    .locals 3

    .prologue
    .line 3339
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene$ClickCounter;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 3340
    move-object v1, v0

    invoke-static {}, Lcom/sun/javafx/tk/Toolkit;->getToolkit()Lcom/sun/javafx/tk/Toolkit;

    move-result-object v2

    iput-object v2, v1, Ljavafx/scene/Scene$ClickCounter;->toolkit:Lcom/sun/javafx/tk/Toolkit;

    return-void
.end method

.method static synthetic access$6900(Ljavafx/scene/Scene$ClickCounter;DD)V
    .locals 11

    .prologue
    .line 3339
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/Scene$ClickCounter;
    move-wide v1, p1

    .local v1, "x1":D
    move-wide v3, p3

    .local v3, "x2":D
    move-object v5, v0

    move-wide v6, v1

    move-wide v8, v3

    invoke-direct {v5, v6, v7, v8, v9}, Ljavafx/scene/Scene$ClickCounter;->moved(DD)V

    return-void
.end method

.method static synthetic access$7000(Ljavafx/scene/Scene$ClickCounter;)Z
    .locals 2

    .prologue
    .line 3339
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/Scene$ClickCounter;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/Scene$ClickCounter;->isStill()Z

    move-result v1

    move v0, v1

    .end local v0    # "x0":Ljavafx/scene/Scene$ClickCounter;
    return v0
.end method

.method static synthetic access$7100(Ljavafx/scene/Scene$ClickCounter;)V
    .locals 2

    .prologue
    .line 3339
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/Scene$ClickCounter;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/Scene$ClickCounter;->clear()V

    return-void
.end method

.method static synthetic access$7200(Ljavafx/scene/Scene$ClickCounter;)V
    .locals 2

    .prologue
    .line 3339
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/Scene$ClickCounter;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/Scene$ClickCounter;->applyOut()V

    return-void
.end method

.method static synthetic access$7300(Ljavafx/scene/Scene$ClickCounter;)V
    .locals 2

    .prologue
    .line 3339
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/Scene$ClickCounter;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/Scene$ClickCounter;->inc()V

    return-void
.end method

.method static synthetic access$7400(Ljavafx/scene/Scene$ClickCounter;DD)V
    .locals 11

    .prologue
    .line 3339
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/Scene$ClickCounter;
    move-wide v1, p1

    .local v1, "x1":D
    move-wide v3, p3

    .local v3, "x2":D
    move-object v5, v0

    move-wide v6, v1

    move-wide v8, v3

    invoke-direct {v5, v6, v7, v8, v9}, Ljavafx/scene/Scene$ClickCounter;->start(DD)V

    return-void
.end method

.method static synthetic access$7500(Ljavafx/scene/Scene$ClickCounter;)I
    .locals 2

    .prologue
    .line 3339
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/Scene$ClickCounter;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/Scene$ClickCounter;->get()I

    move-result v1

    move v0, v1

    .end local v0    # "x0":Ljavafx/scene/Scene$ClickCounter;
    return v0
.end method

.method static synthetic access$lambda$0(Ljavafx/scene/Scene$ClickCounter;Ljavafx/event/ActionEvent;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljavafx/scene/Scene$ClickCounter;->lambda$start$10(Ljavafx/event/ActionEvent;)V

    return-void
.end method

.method private applyOut()V
    .locals 3

    .prologue
    .line 3362
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene$ClickCounter;
    move-object v1, v0

    iget-boolean v1, v1, Ljavafx/scene/Scene$ClickCounter;->out:Z

    if-eqz v1, :cond_0

    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/Scene$ClickCounter;->clear()V

    .line 3363
    :cond_0
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Ljavafx/scene/Scene$ClickCounter;->out:Z

    .line 3364
    return-void
.end method

.method private clear()V
    .locals 3

    .prologue
    .line 3352
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene$ClickCounter;
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Ljavafx/scene/Scene$ClickCounter;->count:I

    .line 3353
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/Scene$ClickCounter;->stopTimeout()V

    .line 3354
    return-void
.end method

.method private get()I
    .locals 2

    .prologue
    .line 3348
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene$ClickCounter;
    move-object v1, v0

    iget v1, v1, Ljavafx/scene/Scene$ClickCounter;->count:I

    move v0, v1

    .end local v0    # "this":Ljavafx/scene/Scene$ClickCounter;
    return v0
.end method

.method private inc()V
    .locals 5

    .prologue
    .line 3347
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene$ClickCounter;
    move-object v1, v0

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    iget v2, v2, Ljavafx/scene/Scene$ClickCounter;->count:I

    const/4 v3, 0x1

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Ljavafx/scene/Scene$ClickCounter;->count:I

    return-void
.end method

.method private isStill()Z
    .locals 2

    .prologue
    .line 3349
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene$ClickCounter;
    move-object v1, v0

    iget-boolean v1, v1, Ljavafx/scene/Scene$ClickCounter;->still:Z

    move v0, v1

    .end local v0    # "this":Ljavafx/scene/Scene$ClickCounter;
    return v0
.end method

.method private synthetic lambda$start$10(Ljavafx/event/ActionEvent;)V
    .locals 4

    .prologue
    .line 3386
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene$ClickCounter;
    move-object v1, p1

    .local v1, "event":Ljavafx/event/ActionEvent;
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Ljavafx/scene/Scene$ClickCounter;->out:Z

    .line 3387
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Ljavafx/scene/Scene$ClickCounter;->timeout:Ljavafx/animation/Timeline;

    .line 3388
    return-void
.end method

.method private moved(DD)V
    .locals 11

    .prologue
    .line 3367
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/Scene$ClickCounter;
    move-wide v2, p1

    .local v2, "x":D
    move-wide v4, p3

    .local v4, "y":D
    move-wide v6, v2

    move-object v8, v1

    iget-wide v8, v8, Ljavafx/scene/Scene$ClickCounter;->pressedX:D

    sub-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    move-object v8, v1

    iget-object v8, v8, Ljavafx/scene/Scene$ClickCounter;->toolkit:Lcom/sun/javafx/tk/Toolkit;

    invoke-virtual {v8}, Lcom/sun/javafx/tk/Toolkit;->getMultiClickMaxX()I

    move-result v8

    int-to-double v8, v8

    cmpl-double v6, v6, v8

    if-gtz v6, :cond_0

    move-wide v6, v4

    move-object v8, v1

    iget-wide v8, v8, Ljavafx/scene/Scene$ClickCounter;->pressedY:D

    sub-double/2addr v6, v8

    .line 3368
    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    move-object v8, v1

    iget-object v8, v8, Ljavafx/scene/Scene$ClickCounter;->toolkit:Lcom/sun/javafx/tk/Toolkit;

    invoke-virtual {v8}, Lcom/sun/javafx/tk/Toolkit;->getMultiClickMaxY()I

    move-result v8

    int-to-double v8, v8

    cmpl-double v6, v6, v8

    if-lez v6, :cond_1

    .line 3369
    :cond_0
    move-object v6, v1

    invoke-direct {v6}, Ljavafx/scene/Scene$ClickCounter;->out()V

    .line 3370
    move-object v6, v1

    const/4 v7, 0x0

    iput-boolean v7, v6, Ljavafx/scene/Scene$ClickCounter;->still:Z

    .line 3372
    :cond_1
    return-void
.end method

.method private out()V
    .locals 3

    .prologue
    .line 3357
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene$ClickCounter;
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Ljavafx/scene/Scene$ClickCounter;->out:Z

    .line 3358
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/Scene$ClickCounter;->stopTimeout()V

    .line 3359
    return-void
.end method

.method private start(DD)V
    .locals 13

    .prologue
    .line 3375
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene$ClickCounter;
    move-wide v1, p1

    .local v1, "x":D
    move-wide/from16 v3, p3

    .local v3, "y":D
    move-object v5, v0

    move-wide v6, v1

    iput-wide v6, v5, Ljavafx/scene/Scene$ClickCounter;->pressedX:D

    .line 3376
    move-object v5, v0

    move-wide v6, v3

    iput-wide v6, v5, Ljavafx/scene/Scene$ClickCounter;->pressedY:D

    .line 3377
    move-object v5, v0

    const/4 v6, 0x0

    iput-boolean v6, v5, Ljavafx/scene/Scene$ClickCounter;->out:Z

    .line 3379
    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/Scene$ClickCounter;->timeout:Ljavafx/animation/Timeline;

    if-eqz v5, :cond_0

    .line 3380
    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/Scene$ClickCounter;->timeout:Ljavafx/animation/Timeline;

    invoke-virtual {v5}, Ljavafx/animation/Timeline;->stop()V

    .line 3382
    :cond_0
    move-object v5, v0

    new-instance v6, Ljavafx/animation/Timeline;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    invoke-direct {v7}, Ljavafx/animation/Timeline;-><init>()V

    iput-object v6, v5, Ljavafx/scene/Scene$ClickCounter;->timeout:Ljavafx/animation/Timeline;

    .line 3383
    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/Scene$ClickCounter;->timeout:Ljavafx/animation/Timeline;

    invoke-virtual {v5}, Ljavafx/animation/Timeline;->getKeyFrames()Ljavafx/collections/ObservableList;

    move-result-object v5

    new-instance v6, Ljavafx/animation/KeyFrame;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    new-instance v8, Ljavafx/util/Duration;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    move-object v10, v0

    iget-object v10, v10, Ljavafx/scene/Scene$ClickCounter;->toolkit:Lcom/sun/javafx/tk/Toolkit;

    .line 3384
    invoke-virtual {v10}, Lcom/sun/javafx/tk/Toolkit;->getMultiClickTime()J

    move-result-wide v10

    long-to-double v10, v10

    invoke-direct {v9, v10, v11}, Ljavafx/util/Duration;-><init>(D)V

    move-object v9, v0

    invoke-static {v9}, Ljavafx/scene/Scene$ClickCounter$$Lambda$1;->lambdaFactory$(Ljavafx/scene/Scene$ClickCounter;)Ljavafx/event/EventHandler;

    move-result-object v9

    const/4 v10, 0x0

    new-array v10, v10, [Ljavafx/animation/KeyValue;

    invoke-direct {v7, v8, v9, v10}, Ljavafx/animation/KeyFrame;-><init>(Ljavafx/util/Duration;Ljavafx/event/EventHandler;[Ljavafx/animation/KeyValue;)V

    .line 3383
    invoke-interface {v5, v6}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v5

    .line 3390
    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/Scene$ClickCounter;->timeout:Ljavafx/animation/Timeline;

    invoke-virtual {v5}, Ljavafx/animation/Timeline;->play()V

    .line 3391
    move-object v5, v0

    const/4 v6, 0x1

    iput-boolean v6, v5, Ljavafx/scene/Scene$ClickCounter;->still:Z

    .line 3392
    return-void
.end method

.method private stopTimeout()V
    .locals 3

    .prologue
    .line 3395
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene$ClickCounter;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Scene$ClickCounter;->timeout:Ljavafx/animation/Timeline;

    if-eqz v1, :cond_0

    .line 3396
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Scene$ClickCounter;->timeout:Ljavafx/animation/Timeline;

    invoke-virtual {v1}, Ljavafx/animation/Timeline;->stop()V

    .line 3397
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Ljavafx/scene/Scene$ClickCounter;->timeout:Ljavafx/animation/Timeline;

    .line 3399
    :cond_0
    return-void
.end method
