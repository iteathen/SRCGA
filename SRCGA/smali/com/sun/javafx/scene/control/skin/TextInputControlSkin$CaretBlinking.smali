.class final Lcom/sun/javafx/scene/control/skin/TextInputControlSkin$CaretBlinking;
.super Ljava/lang/Object;
.source "TextInputControlSkin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/scene/control/skin/TextInputControlSkin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CaretBlinking"
.end annotation


# instance fields
.field private final blinkPropertyRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Ljavafx/beans/property/BooleanProperty;",
            ">;"
        }
    .end annotation
.end field

.field private final caretTimeline:Ljavafx/animation/Timeline;


# direct methods
.method public constructor <init>(Ljavafx/beans/property/BooleanProperty;)V
    .locals 12

    .prologue
    .line 627
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TextInputControlSkin$CaretBlinking;
    move-object v1, p1

    .local v1, "blinkProperty":Ljavafx/beans/property/BooleanProperty;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 628
    move-object v2, v0

    new-instance v3, Ljava/lang/ref/WeakReference;

    move-object v11, v3

    move-object v3, v11

    move-object v4, v11

    move-object v5, v1

    invoke-direct {v4, v5}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v3, v2, Lcom/sun/javafx/scene/control/skin/TextInputControlSkin$CaretBlinking;->blinkPropertyRef:Ljava/lang/ref/WeakReference;

    .line 631
    move-object v2, v0

    new-instance v3, Ljavafx/animation/Timeline;

    move-object v11, v3

    move-object v3, v11

    move-object v4, v11

    invoke-direct {v4}, Ljavafx/animation/Timeline;-><init>()V

    iput-object v3, v2, Lcom/sun/javafx/scene/control/skin/TextInputControlSkin$CaretBlinking;->caretTimeline:Ljavafx/animation/Timeline;

    .line 632
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/TextInputControlSkin$CaretBlinking;->caretTimeline:Ljavafx/animation/Timeline;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Ljavafx/animation/Timeline;->setCycleCount(I)V

    .line 633
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/TextInputControlSkin$CaretBlinking;->caretTimeline:Ljavafx/animation/Timeline;

    invoke-virtual {v2}, Ljavafx/animation/Timeline;->getKeyFrames()Ljavafx/collections/ObservableList;

    move-result-object v2

    const/4 v3, 0x3

    new-array v3, v3, [Ljavafx/animation/KeyFrame;

    move-object v11, v3

    move-object v3, v11

    move-object v4, v11

    const/4 v5, 0x0

    new-instance v6, Ljavafx/animation/KeyFrame;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    sget-object v8, Ljavafx/util/Duration;->ZERO:Ljavafx/util/Duration;

    move-object v9, v0

    invoke-static {v9}, Lcom/sun/javafx/scene/control/skin/TextInputControlSkin$CaretBlinking$$Lambda$1;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/TextInputControlSkin$CaretBlinking;)Ljavafx/event/EventHandler;

    move-result-object v9

    const/4 v10, 0x0

    new-array v10, v10, [Ljavafx/animation/KeyValue;

    invoke-direct {v7, v8, v9, v10}, Ljavafx/animation/KeyFrame;-><init>(Ljavafx/util/Duration;Ljavafx/event/EventHandler;[Ljavafx/animation/KeyValue;)V

    aput-object v6, v4, v5

    move-object v11, v3

    move-object v3, v11

    move-object v4, v11

    const/4 v5, 0x1

    new-instance v6, Ljavafx/animation/KeyFrame;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    .line 639
    invoke-static {v8, v9}, Ljavafx/util/Duration;->seconds(D)Ljavafx/util/Duration;

    move-result-object v8

    move-object v9, v0

    invoke-static {v9}, Lcom/sun/javafx/scene/control/skin/TextInputControlSkin$CaretBlinking$$Lambda$2;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/TextInputControlSkin$CaretBlinking;)Ljavafx/event/EventHandler;

    move-result-object v9

    const/4 v10, 0x0

    new-array v10, v10, [Ljavafx/animation/KeyValue;

    invoke-direct {v7, v8, v9, v10}, Ljavafx/animation/KeyFrame;-><init>(Ljavafx/util/Duration;Ljavafx/event/EventHandler;[Ljavafx/animation/KeyValue;)V

    aput-object v6, v4, v5

    move-object v11, v3

    move-object v3, v11

    move-object v4, v11

    const/4 v5, 0x2

    new-instance v6, Ljavafx/animation/KeyFrame;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    .line 644
    invoke-static {v8, v9}, Ljavafx/util/Duration;->seconds(D)Ljavafx/util/Duration;

    move-result-object v8

    const/4 v9, 0x0

    new-array v9, v9, [Ljavafx/animation/KeyValue;

    invoke-direct {v7, v8, v9}, Ljavafx/animation/KeyFrame;-><init>(Ljavafx/util/Duration;[Ljavafx/animation/KeyValue;)V

    aput-object v6, v4, v5

    .line 633
    invoke-interface {v2, v3}, Ljavafx/collections/ObservableList;->addAll([Ljava/lang/Object;)Z

    move-result v2

    .line 645
    return-void
.end method

.method static synthetic access$lambda$0(Lcom/sun/javafx/scene/control/skin/TextInputControlSkin$CaretBlinking;Ljavafx/event/ActionEvent;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/skin/TextInputControlSkin$CaretBlinking;->lambda$new$191(Ljavafx/event/ActionEvent;)V

    return-void
.end method

.method static synthetic access$lambda$1(Lcom/sun/javafx/scene/control/skin/TextInputControlSkin$CaretBlinking;Ljavafx/event/ActionEvent;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/skin/TextInputControlSkin$CaretBlinking;->lambda$new$192(Ljavafx/event/ActionEvent;)V

    return-void
.end method

.method private synthetic lambda$new$191(Ljavafx/event/ActionEvent;)V
    .locals 4

    .prologue
    .line 636
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TextInputControlSkin$CaretBlinking;
    move-object v1, p1

    .local v1, "event":Ljavafx/event/ActionEvent;
    move-object v2, v0

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/skin/TextInputControlSkin$CaretBlinking;->setBlink(Z)V

    .line 637
    return-void
.end method

.method private synthetic lambda$new$192(Ljavafx/event/ActionEvent;)V
    .locals 4

    .prologue
    .line 641
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TextInputControlSkin$CaretBlinking;
    move-object v1, p1

    .local v1, "event":Ljavafx/event/ActionEvent;
    move-object v2, v0

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/skin/TextInputControlSkin$CaretBlinking;->setBlink(Z)V

    .line 642
    return-void
.end method

.method private setBlink(Z)V
    .locals 5

    .prologue
    .line 656
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TextInputControlSkin$CaretBlinking;
    move v1, p1

    .local v1, "value":Z
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/TextInputControlSkin$CaretBlinking;->blinkPropertyRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavafx/beans/property/BooleanProperty;

    move-object v2, v3

    .line 657
    .local v2, "blinkProperty":Ljavafx/beans/property/BooleanProperty;
    move-object v3, v2

    if-nez v3, :cond_0

    .line 658
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/TextInputControlSkin$CaretBlinking;->caretTimeline:Ljavafx/animation/Timeline;

    invoke-virtual {v3}, Ljavafx/animation/Timeline;->stop()V

    .line 659
    .line 663
    :goto_0
    return-void

    .line 662
    :cond_0
    move-object v3, v2

    move v4, v1

    invoke-virtual {v3, v4}, Ljavafx/beans/property/BooleanProperty;->set(Z)V

    .line 663
    goto :goto_0
.end method


# virtual methods
.method public start()V
    .locals 2

    .prologue
    .line 648
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TextInputControlSkin$CaretBlinking;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/TextInputControlSkin$CaretBlinking;->caretTimeline:Ljavafx/animation/Timeline;

    invoke-virtual {v1}, Ljavafx/animation/Timeline;->play()V

    .line 649
    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 652
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TextInputControlSkin$CaretBlinking;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/TextInputControlSkin$CaretBlinking;->caretTimeline:Ljavafx/animation/Timeline;

    invoke-virtual {v1}, Ljavafx/animation/Timeline;->stop()V

    .line 653
    return-void
.end method
