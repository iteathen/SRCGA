.class public Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;
.super Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;
.source "TitledPaneSkin.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/javafx/scene/control/skin/TitledPaneSkin$TitleRegion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sun/javafx/scene/control/skin/LabeledSkinBase",
        "<",
        "Ljavafx/scene/control/TitledPane;",
        "Lcom/sun/javafx/scene/control/behavior/TitledPaneBehavior;",
        ">;"
    }
.end annotation


# static fields
.field private static final CACHE_ANIMATION:Z

.field public static final TRANSITION_DURATION:Ljavafx/util/Duration;


# instance fields
.field private clipRect:Ljavafx/scene/shape/Rectangle;

.field private content:Ljavafx/scene/Node;

.field private final contentContainer:Ljavafx/scene/layout/StackPane;

.field private hpos:Ljavafx/geometry/HPos;

.field private pos:Ljavafx/geometry/Pos;

.field private prefHeightFromAccordion:D

.field private timeline:Ljavafx/animation/Timeline;

.field private final titleRegion:Lcom/sun/javafx/scene/control/skin/TitledPaneSkin$TitleRegion;

.field private transition:Ljavafx/beans/property/DoubleProperty;

.field private transitionStartValue:D

.field private vpos:Ljavafx/geometry/VPos;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 58
    new-instance v0, Ljavafx/util/Duration;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-wide v2, 0x4075e00000000000L    # 350.0

    invoke-direct {v1, v2, v3}, Ljavafx/util/Duration;-><init>(D)V

    sput-object v0, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;->TRANSITION_DURATION:Ljavafx/util/Duration;

    .line 63
    invoke-static {}, Lcom/sun/javafx/PlatformUtil;->isEmbedded()Z

    move-result v0

    sput-boolean v0, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;->CACHE_ANIMATION:Z

    return-void
.end method

.method public constructor <init>(Ljavafx/scene/control/TitledPane;)V
    .locals 9

    .prologue
    .line 76
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;
    move-object v2, p1

    .local v2, "titledPane":Ljavafx/scene/control/TitledPane;
    move-object v3, v1

    move-object v4, v2

    new-instance v5, Lcom/sun/javafx/scene/control/behavior/TitledPaneBehavior;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v2

    invoke-direct {v6, v7}, Lcom/sun/javafx/scene/control/behavior/TitledPaneBehavior;-><init>(Ljavafx/scene/control/TitledPane;)V

    invoke-direct {v3, v4, v5}, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;-><init>(Ljavafx/scene/control/Labeled;Lcom/sun/javafx/scene/control/behavior/BehaviorBase;)V

    .line 263
    move-object v3, v1

    const-wide/16 v4, 0x0

    iput-wide v4, v3, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;->prefHeightFromAccordion:D

    .line 78
    move-object v3, v1

    new-instance v4, Ljavafx/scene/shape/Rectangle;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    invoke-direct {v5}, Ljavafx/scene/shape/Rectangle;-><init>()V

    iput-object v4, v3, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;->clipRect:Ljavafx/scene/shape/Rectangle;

    .line 80
    move-object v3, v1

    const-wide/16 v4, 0x0

    iput-wide v4, v3, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;->transitionStartValue:D

    .line 81
    move-object v3, v1

    new-instance v4, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin$TitleRegion;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v1

    invoke-direct {v5, v6}, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin$TitleRegion;-><init>(Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;)V

    iput-object v4, v3, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;->titleRegion:Lcom/sun/javafx/scene/control/skin/TitledPaneSkin$TitleRegion;

    .line 83
    move-object v3, v1

    move-object v4, v1

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v4

    check-cast v4, Ljavafx/scene/control/TitledPane;

    invoke-virtual {v4}, Ljavafx/scene/control/TitledPane;->getContent()Ljavafx/scene/Node;

    move-result-object v4

    iput-object v4, v3, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;->content:Ljavafx/scene/Node;

    .line 84
    move-object v3, v1

    new-instance v4, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin$1;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v1

    invoke-direct {v5, v6}, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin$1;-><init>(Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;)V

    iput-object v4, v3, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;->contentContainer:Ljavafx/scene/layout/StackPane;

    .line 93
    move-object v3, v1

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;->contentContainer:Ljavafx/scene/layout/StackPane;

    move-object v4, v1

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;->clipRect:Ljavafx/scene/shape/Rectangle;

    invoke-virtual {v3, v4}, Ljavafx/scene/layout/StackPane;->setClip(Ljavafx/scene/Node;)V

    .line 95
    move-object v3, v2

    invoke-virtual {v3}, Ljavafx/scene/control/TitledPane;->isExpanded()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 96
    move-object v3, v1

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    invoke-direct {v3, v4, v5}, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;->setTransition(D)V

    .line 97
    move-object v3, v1

    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/scene/control/TitledPane;->isExpanded()Z

    move-result v4

    invoke-direct {v3, v4}, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;->setExpanded(Z)V

    .line 105
    :cond_0
    :goto_0
    move-object v3, v1

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljavafx/scene/Node;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    move-object v7, v1

    iget-object v7, v7, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;->contentContainer:Ljavafx/scene/layout/StackPane;

    aput-object v7, v5, v6

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x1

    move-object v7, v1

    iget-object v7, v7, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;->titleRegion:Lcom/sun/javafx/scene/control/skin/TitledPaneSkin$TitleRegion;

    aput-object v7, v5, v6

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->setAll([Ljava/lang/Object;)Z

    move-result v3

    .line 107
    move-object v3, v1

    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/scene/control/TitledPane;->contentProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v4

    const-string v5, "CONTENT"

    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;->registerChangeListener(Ljavafx/beans/value/ObservableValue;Ljava/lang/String;)V

    .line 108
    move-object v3, v1

    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/scene/control/TitledPane;->expandedProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v4

    const-string v5, "EXPANDED"

    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;->registerChangeListener(Ljavafx/beans/value/ObservableValue;Ljava/lang/String;)V

    .line 109
    move-object v3, v1

    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/scene/control/TitledPane;->collapsibleProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v4

    const-string v5, "COLLAPSIBLE"

    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;->registerChangeListener(Ljavafx/beans/value/ObservableValue;Ljava/lang/String;)V

    .line 110
    move-object v3, v1

    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/scene/control/TitledPane;->alignmentProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v4

    const-string v5, "ALIGNMENT"

    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;->registerChangeListener(Ljavafx/beans/value/ObservableValue;Ljava/lang/String;)V

    .line 111
    move-object v3, v1

    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/scene/control/TitledPane;->widthProperty()Ljavafx/beans/property/ReadOnlyDoubleProperty;

    move-result-object v4

    const-string v5, "WIDTH"

    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;->registerChangeListener(Ljavafx/beans/value/ObservableValue;Ljava/lang/String;)V

    .line 112
    move-object v3, v1

    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/scene/control/TitledPane;->heightProperty()Ljavafx/beans/property/ReadOnlyDoubleProperty;

    move-result-object v4

    const-string v5, "HEIGHT"

    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;->registerChangeListener(Ljavafx/beans/value/ObservableValue;Ljava/lang/String;)V

    .line 113
    move-object v3, v1

    move-object v4, v1

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;->titleRegion:Lcom/sun/javafx/scene/control/skin/TitledPaneSkin$TitleRegion;

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin$TitleRegion;->alignmentProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v4

    const-string v5, "TITLE_REGION_ALIGNMENT"

    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;->registerChangeListener(Ljavafx/beans/value/ObservableValue;Ljava/lang/String;)V

    .line 115
    move-object v3, v1

    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/scene/control/TitledPane;->getAlignment()Ljavafx/geometry/Pos;

    move-result-object v4

    iput-object v4, v3, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;->pos:Ljavafx/geometry/Pos;

    .line 116
    move-object v3, v1

    move-object v4, v1

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;->pos:Ljavafx/geometry/Pos;

    if-nez v4, :cond_2

    sget-object v4, Ljavafx/geometry/HPos;->LEFT:Ljavafx/geometry/HPos;

    :goto_1
    iput-object v4, v3, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;->hpos:Ljavafx/geometry/HPos;

    .line 117
    move-object v3, v1

    move-object v4, v1

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;->pos:Ljavafx/geometry/Pos;

    if-nez v4, :cond_3

    sget-object v4, Ljavafx/geometry/VPos;->CENTER:Ljavafx/geometry/VPos;

    :goto_2
    iput-object v4, v3, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;->vpos:Ljavafx/geometry/VPos;

    .line 118
    return-void

    .line 99
    :cond_1
    move-object v3, v1

    const-wide/16 v4, 0x0

    invoke-direct {v3, v4, v5}, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;->setTransition(D)V

    .line 100
    move-object v3, v1

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;->content:Ljavafx/scene/Node;

    if-eqz v3, :cond_0

    .line 101
    move-object v3, v1

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;->content:Ljavafx/scene/Node;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljavafx/scene/Node;->setVisible(Z)V

    goto/16 :goto_0

    .line 116
    :cond_2
    move-object v4, v1

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;->pos:Ljavafx/geometry/Pos;

    invoke-virtual {v4}, Ljavafx/geometry/Pos;->getHpos()Ljavafx/geometry/HPos;

    move-result-object v4

    goto :goto_1

    .line 117
    :cond_3
    move-object v4, v1

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;->pos:Ljavafx/geometry/Pos;

    invoke-virtual {v4}, Ljavafx/geometry/Pos;->getVpos()Ljavafx/geometry/VPos;

    move-result-object v4

    goto :goto_2
.end method

.method static synthetic access$000(Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;)Ljavafx/scene/Node;
    .locals 2

    .prologue
    .line 56
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;->content:Ljavafx/scene/Node;

    move-object v0, v1

    .end local v0    # "x0":Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;
    return-object v0
.end method

.method static synthetic access$200(Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;)Ljavafx/scene/layout/StackPane;
    .locals 2

    .prologue
    .line 56
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;->contentContainer:Ljavafx/scene/layout/StackPane;

    move-object v0, v1

    .end local v0    # "x0":Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;
    return-object v0
.end method

.method static synthetic access$300(Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;)Ljavafx/beans/property/DoubleProperty;
    .locals 2

    .prologue
    .line 56
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;->transitionProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "x0":Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;
    return-object v0
.end method

.method static synthetic access$400(Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;)D
    .locals 3

    .prologue
    .line 56
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;->getTransition()D

    move-result-wide v1

    move-wide v0, v1

    .end local v0    # "x0":Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;
    return-wide v0
.end method

.method static synthetic access$500(Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;)Ljavafx/geometry/HPos;
    .locals 2

    .prologue
    .line 56
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;->hpos:Ljavafx/geometry/HPos;

    move-object v0, v1

    .end local v0    # "x0":Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;
    return-object v0
.end method

.method static synthetic access$600(Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;)Ljavafx/geometry/VPos;
    .locals 2

    .prologue
    .line 56
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;->vpos:Ljavafx/geometry/VPos;

    move-object v0, v1

    .end local v0    # "x0":Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;
    return-object v0
.end method

.method static synthetic access$700(Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;)Ljavafx/geometry/Pos;
    .locals 2

    .prologue
    .line 56
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;->pos:Ljavafx/geometry/Pos;

    move-object v0, v1

    .end local v0    # "x0":Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;
    return-object v0
.end method

.method static synthetic access$lambda$0(Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;Ljavafx/event/ActionEvent;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;->lambda$doAnimationTransition$510(Ljavafx/event/ActionEvent;)V

    return-void
.end method

.method static synthetic access$lambda$1(Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;Ljavafx/event/ActionEvent;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;->lambda$doAnimationTransition$511(Ljavafx/event/ActionEvent;)V

    return-void
.end method

.method static synthetic access$lambda$2(Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;Ljavafx/event/ActionEvent;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;->lambda$doAnimationTransition$512(Ljavafx/event/ActionEvent;)V

    return-void
.end method

.method static synthetic access$lambda$3(Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;Ljavafx/event/ActionEvent;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;->lambda$doAnimationTransition$513(Ljavafx/event/ActionEvent;)V

    return-void
.end method

.method private doAnimationTransition()V
    .locals 17

    .prologue
    .line 275
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;->content:Ljavafx/scene/Node;

    if-nez v4, :cond_0

    .line 276
    .line 335
    :goto_0
    return-void

    .line 280
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;->timeline:Ljavafx/animation/Timeline;

    if-eqz v4, :cond_1

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;->timeline:Ljavafx/animation/Timeline;

    invoke-virtual {v4}, Ljavafx/animation/Timeline;->getStatus()Ljavafx/animation/Animation$Status;

    move-result-object v4

    sget-object v5, Ljavafx/animation/Animation$Status;->STOPPED:Ljavafx/animation/Animation$Status;

    if-eq v4, v5, :cond_1

    .line 281
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;->timeline:Ljavafx/animation/Timeline;

    invoke-virtual {v4}, Ljavafx/animation/Timeline;->getCurrentTime()Ljavafx/util/Duration;

    move-result-object v4

    move-object v1, v4

    .line 282
    .local v1, "duration":Ljavafx/util/Duration;
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;->timeline:Ljavafx/animation/Timeline;

    invoke-virtual {v4}, Ljavafx/animation/Timeline;->stop()V

    .line 287
    :goto_1
    move-object v4, v0

    new-instance v5, Ljavafx/animation/Timeline;

    move-object/from16 v16, v5

    move-object/from16 v5, v16

    move-object/from16 v6, v16

    invoke-direct {v6}, Ljavafx/animation/Timeline;-><init>()V

    iput-object v5, v4, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;->timeline:Ljavafx/animation/Timeline;

    .line 288
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;->timeline:Ljavafx/animation/Timeline;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljavafx/animation/Timeline;->setCycleCount(I)V

    .line 292
    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v4

    check-cast v4, Ljavafx/scene/control/TitledPane;

    invoke-virtual {v4}, Ljavafx/scene/control/TitledPane;->isExpanded()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 293
    new-instance v4, Ljavafx/animation/KeyFrame;

    move-object/from16 v16, v4

    move-object/from16 v4, v16

    move-object/from16 v5, v16

    sget-object v6, Ljavafx/util/Duration;->ZERO:Ljavafx/util/Duration;

    move-object v7, v0

    invoke-static {v7}, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin$$Lambda$1;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;)Ljavafx/event/EventHandler;

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

    .line 300
    invoke-direct {v13}, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;->transitionProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v13

    move-object v14, v0

    iget-wide v14, v14, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;->transitionStartValue:D

    invoke-static {v14, v15}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v14

    invoke-direct {v12, v13, v14}, Ljavafx/animation/KeyValue;-><init>(Ljavafx/beans/value/WritableValue;Ljava/lang/Object;)V

    aput-object v11, v9, v10

    invoke-direct {v5, v6, v7, v8}, Ljavafx/animation/KeyFrame;-><init>(Ljavafx/util/Duration;Ljavafx/event/EventHandler;[Ljavafx/animation/KeyValue;)V

    move-object v2, v4

    .line 303
    .local v2, "k1":Ljavafx/animation/KeyFrame;
    new-instance v4, Ljavafx/animation/KeyFrame;

    move-object/from16 v16, v4

    move-object/from16 v4, v16

    move-object/from16 v5, v16

    move-object v6, v1

    move-object v7, v0

    invoke-static {v7}, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin$$Lambda$2;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;)Ljavafx/event/EventHandler;

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

    .line 309
    invoke-direct {v13}, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;->transitionProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v13

    const/4 v14, 0x1

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    sget-object v15, Ljavafx/animation/Interpolator;->LINEAR:Ljavafx/animation/Interpolator;

    invoke-direct {v12, v13, v14, v15}, Ljavafx/animation/KeyValue;-><init>(Ljavafx/beans/value/WritableValue;Ljava/lang/Object;Ljavafx/animation/Interpolator;)V

    aput-object v11, v9, v10

    invoke-direct {v5, v6, v7, v8}, Ljavafx/animation/KeyFrame;-><init>(Ljavafx/util/Duration;Ljavafx/event/EventHandler;[Ljavafx/animation/KeyValue;)V

    move-object v3, v4

    .line 333
    .local v3, "k2":Ljavafx/animation/KeyFrame;
    :goto_2
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;->timeline:Ljavafx/animation/Timeline;

    invoke-virtual {v4}, Ljavafx/animation/Timeline;->getKeyFrames()Ljavafx/collections/ObservableList;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Ljavafx/animation/KeyFrame;

    move-object/from16 v16, v5

    move-object/from16 v5, v16

    move-object/from16 v6, v16

    const/4 v7, 0x0

    move-object v8, v2

    aput-object v8, v6, v7

    move-object/from16 v16, v5

    move-object/from16 v5, v16

    move-object/from16 v6, v16

    const/4 v7, 0x1

    move-object v8, v3

    aput-object v8, v6, v7

    invoke-interface {v4, v5}, Ljavafx/collections/ObservableList;->setAll([Ljava/lang/Object;)Z

    move-result v4

    .line 334
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;->timeline:Ljavafx/animation/Timeline;

    invoke-virtual {v4}, Ljavafx/animation/Timeline;->play()V

    .line 335
    goto/16 :goto_0

    .line 284
    .end local v1    # "duration":Ljavafx/util/Duration;
    .end local v2    # "k1":Ljavafx/animation/KeyFrame;
    .end local v3    # "k2":Ljavafx/animation/KeyFrame;
    :cond_1
    sget-object v4, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;->TRANSITION_DURATION:Ljavafx/util/Duration;

    move-object v1, v4

    .restart local v1    # "duration":Ljavafx/util/Duration;
    goto/16 :goto_1

    .line 313
    :cond_2
    new-instance v4, Ljavafx/animation/KeyFrame;

    move-object/from16 v16, v4

    move-object/from16 v4, v16

    move-object/from16 v5, v16

    sget-object v6, Ljavafx/util/Duration;->ZERO:Ljavafx/util/Duration;

    move-object v7, v0

    invoke-static {v7}, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin$$Lambda$3;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;)Ljavafx/event/EventHandler;

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

    .line 319
    invoke-direct {v13}, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;->transitionProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v13

    move-object v14, v0

    iget-wide v14, v14, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;->transitionStartValue:D

    invoke-static {v14, v15}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v14

    invoke-direct {v12, v13, v14}, Ljavafx/animation/KeyValue;-><init>(Ljavafx/beans/value/WritableValue;Ljava/lang/Object;)V

    aput-object v11, v9, v10

    invoke-direct {v5, v6, v7, v8}, Ljavafx/animation/KeyFrame;-><init>(Ljavafx/util/Duration;Ljavafx/event/EventHandler;[Ljavafx/animation/KeyValue;)V

    move-object v2, v4

    .line 322
    .restart local v2    # "k1":Ljavafx/animation/KeyFrame;
    new-instance v4, Ljavafx/animation/KeyFrame;

    move-object/from16 v16, v4

    move-object/from16 v4, v16

    move-object/from16 v5, v16

    move-object v6, v1

    move-object v7, v0

    invoke-static {v7}, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin$$Lambda$4;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;)Ljavafx/event/EventHandler;

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

    .line 329
    invoke-direct {v13}, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;->transitionProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v13

    const/4 v14, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    sget-object v15, Ljavafx/animation/Interpolator;->LINEAR:Ljavafx/animation/Interpolator;

    invoke-direct {v12, v13, v14, v15}, Ljavafx/animation/KeyValue;-><init>(Ljavafx/beans/value/WritableValue;Ljava/lang/Object;Ljavafx/animation/Interpolator;)V

    aput-object v11, v9, v10

    invoke-direct {v5, v6, v7, v8}, Ljavafx/animation/KeyFrame;-><init>(Ljavafx/util/Duration;Ljavafx/event/EventHandler;[Ljavafx/animation/KeyValue;)V

    move-object v3, v4

    .restart local v3    # "k2":Ljavafx/animation/KeyFrame;
    goto/16 :goto_2
.end method

.method private getTransition()D
    .locals 4

    .prologue
    .line 189
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;
    move-object v2, v1

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;->transition:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    const-wide/16 v2, 0x0

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;
    return-wide v1

    .restart local v1    # "this":Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;->transition:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v2}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v2

    goto :goto_0
.end method

.method private isInsideAccordion()Z
    .locals 2

    .prologue
    .line 202
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v1

    check-cast v1, Ljavafx/scene/control/TitledPane;

    invoke-virtual {v1}, Ljavafx/scene/control/TitledPane;->getParent()Ljavafx/scene/Parent;

    move-result-object v1

    if-eqz v1, :cond_0

    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v1

    check-cast v1, Ljavafx/scene/control/TitledPane;

    invoke-virtual {v1}, Ljavafx/scene/control/TitledPane;->getParent()Ljavafx/scene/Parent;

    move-result-object v1

    instance-of v1, v1, Ljavafx/scene/control/Accordion;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;
    return v0

    .restart local v0    # "this":Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private synthetic lambda$doAnimationTransition$510(Ljavafx/event/ActionEvent;)V
    .locals 4

    .prologue
    .line 297
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;
    move-object v1, p1

    .local v1, "event":Ljavafx/event/ActionEvent;
    sget-boolean v2, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;->CACHE_ANIMATION:Z

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;->content:Ljavafx/scene/Node;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljavafx/scene/Node;->setCache(Z)V

    .line 298
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;->content:Ljavafx/scene/Node;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljavafx/scene/Node;->setVisible(Z)V

    .line 299
    return-void
.end method

.method private synthetic lambda$doAnimationTransition$511(Ljavafx/event/ActionEvent;)V
    .locals 4

    .prologue
    .line 307
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;
    move-object v1, p1

    .local v1, "event":Ljavafx/event/ActionEvent;
    sget-boolean v2, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;->CACHE_ANIMATION:Z

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;->content:Ljavafx/scene/Node;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljavafx/scene/Node;->setCache(Z)V

    .line 308
    :cond_0
    return-void
.end method

.method private synthetic lambda$doAnimationTransition$512(Ljavafx/event/ActionEvent;)V
    .locals 4

    .prologue
    .line 317
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;
    move-object v1, p1

    .local v1, "event":Ljavafx/event/ActionEvent;
    sget-boolean v2, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;->CACHE_ANIMATION:Z

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;->content:Ljavafx/scene/Node;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljavafx/scene/Node;->setCache(Z)V

    .line 318
    :cond_0
    return-void
.end method

.method private synthetic lambda$doAnimationTransition$513(Ljavafx/event/ActionEvent;)V
    .locals 4

    .prologue
    .line 326
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;
    move-object v1, p1

    .local v1, "event":Ljavafx/event/ActionEvent;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;->content:Ljavafx/scene/Node;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljavafx/scene/Node;->setVisible(Z)V

    .line 327
    sget-boolean v2, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;->CACHE_ANIMATION:Z

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;->content:Ljavafx/scene/Node;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljavafx/scene/Node;->setCache(Z)V

    .line 328
    :cond_0
    return-void
.end method

.method private setExpanded(Z)V
    .locals 6

    .prologue
    .line 165
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;
    move v2, p1

    .local v2, "expanded":Z
    move-object v3, v1

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v3

    check-cast v3, Ljavafx/scene/control/TitledPane;

    invoke-virtual {v3}, Ljavafx/scene/control/TitledPane;->isCollapsible()Z

    move-result v3

    if-nez v3, :cond_0

    .line 166
    move-object v3, v1

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    invoke-direct {v3, v4, v5}, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;->setTransition(D)V

    .line 167
    .line 185
    :goto_0
    return-void

    .line 171
    :cond_0
    move-object v3, v1

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v3

    check-cast v3, Ljavafx/scene/control/TitledPane;

    invoke-virtual {v3}, Ljavafx/scene/control/TitledPane;->isAnimated()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 172
    move-object v3, v1

    move-object v4, v1

    invoke-direct {v4}, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;->getTransition()D

    move-result-wide v4

    iput-wide v4, v3, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;->transitionStartValue:D

    .line 173
    move-object v3, v1

    invoke-direct {v3}, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;->doAnimationTransition()V

    .line 185
    :goto_1
    goto :goto_0

    .line 175
    :cond_1
    move v3, v2

    if-eqz v3, :cond_3

    .line 176
    move-object v3, v1

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    invoke-direct {v3, v4, v5}, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;->setTransition(D)V

    .line 180
    :goto_2
    move-object v3, v1

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;->content:Ljavafx/scene/Node;

    if-eqz v3, :cond_2

    .line 181
    move-object v3, v1

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;->content:Ljavafx/scene/Node;

    move v4, v2

    invoke-virtual {v3, v4}, Ljavafx/scene/Node;->setVisible(Z)V

    .line 183
    :cond_2
    move-object v3, v1

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v3

    check-cast v3, Ljavafx/scene/control/TitledPane;

    invoke-virtual {v3}, Ljavafx/scene/control/TitledPane;->requestLayout()V

    goto :goto_1

    .line 178
    :cond_3
    move-object v3, v1

    const-wide/16 v4, 0x0

    invoke-direct {v3, v4, v5}, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;->setTransition(D)V

    goto :goto_2
.end method

.method private setTransition(D)V
    .locals 7

    .prologue
    .line 188
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;
    move-wide v1, p1

    .local v1, "value":D
    move-object v3, v0

    invoke-direct {v3}, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;->transitionProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v3

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    return-void
.end method

.method private transitionProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 11

    .prologue
    .line 191
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;
    move-object v2, v1

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;->transition:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    .line 192
    move-object v2, v1

    new-instance v3, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin$2;

    move-object v10, v3

    move-object v3, v10

    move-object v4, v10

    move-object v5, v1

    move-object v6, v1

    const-string v7, "transition"

    const-wide/16 v8, 0x0

    invoke-direct/range {v4 .. v9}, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin$2;-><init>(Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;Ljava/lang/Object;Ljava/lang/String;D)V

    iput-object v3, v2, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;->transition:Ljavafx/beans/property/DoubleProperty;

    .line 198
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;->transition:Ljavafx/beans/property/DoubleProperty;

    move-object v1, v2

    .end local v1    # "this":Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;
    return-object v1
.end method


# virtual methods
.method protected computeMaxWidth(DDDDD)D
    .locals 15

    .prologue
    .line 256
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;
    move-wide/from16 v2, p1

    .local v2, "height":D
    move-wide/from16 v4, p3

    .local v4, "topInset":D
    move-wide/from16 v6, p5

    .local v6, "rightInset":D
    move-wide/from16 v8, p7

    .local v8, "bottomInset":D
    move-wide/from16 v10, p9

    .local v10, "leftInset":D
    const-wide v12, 0x7fefffffffffffffL    # Double.MAX_VALUE

    move-wide v1, v12

    .end local v1    # "this":Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;
    return-wide v1
.end method

.method protected computeMinHeight(DDDDD)D
    .locals 21

    .prologue
    .line 238
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;
    move-wide/from16 v2, p1

    .local v2, "width":D
    move-wide/from16 v4, p3

    .local v4, "topInset":D
    move-wide/from16 v6, p5

    .local v6, "rightInset":D
    move-wide/from16 v8, p7

    .local v8, "bottomInset":D
    move-wide/from16 v10, p9

    .local v10, "leftInset":D
    move-object/from16 v16, v1

    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;->titleRegion:Lcom/sun/javafx/scene/control/skin/TitledPaneSkin$TitleRegion;

    move-object/from16 v17, v0

    move-wide/from16 v18, v2

    invoke-virtual/range {v17 .. v19}, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin$TitleRegion;->prefHeight(D)D

    move-result-wide v17

    invoke-virtual/range {v16 .. v18}, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;->snapSize(D)D

    move-result-wide v16

    move-wide/from16 v12, v16

    .line 239
    .local v12, "headerHeight":D
    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;->contentContainer:Ljavafx/scene/layout/StackPane;

    move-object/from16 v16, v0

    move-wide/from16 v17, v2

    invoke-virtual/range {v16 .. v18}, Ljavafx/scene/layout/StackPane;->minHeight(D)D

    move-result-wide v16

    move-object/from16 v18, v1

    invoke-direct/range {v18 .. v18}, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;->getTransition()D

    move-result-wide v18

    mul-double v16, v16, v18

    move-wide/from16 v14, v16

    .line 240
    .local v14, "contentHeight":D
    move-wide/from16 v16, v12

    move-object/from16 v18, v1

    move-wide/from16 v19, v14

    invoke-virtual/range {v18 .. v20}, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;->snapSize(D)D

    move-result-wide v18

    add-double v16, v16, v18

    move-wide/from16 v18, v4

    add-double v16, v16, v18

    move-wide/from16 v18, v8

    add-double v16, v16, v18

    move-wide/from16 v1, v16

    .end local v1    # "this":Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;
    return-wide v1
.end method

.method protected computeMinWidth(DDDDD)D
    .locals 21

    .prologue
    .line 232
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;
    move-wide/from16 v2, p1

    .local v2, "height":D
    move-wide/from16 v4, p3

    .local v4, "topInset":D
    move-wide/from16 v6, p5

    .local v6, "rightInset":D
    move-wide/from16 v8, p7

    .local v8, "bottomInset":D
    move-wide/from16 v10, p9

    .local v10, "leftInset":D
    move-object/from16 v16, v1

    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;->titleRegion:Lcom/sun/javafx/scene/control/skin/TitledPaneSkin$TitleRegion;

    move-object/from16 v17, v0

    move-wide/from16 v18, v2

    invoke-virtual/range {v17 .. v19}, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin$TitleRegion;->prefWidth(D)D

    move-result-wide v17

    invoke-virtual/range {v16 .. v18}, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;->snapSize(D)D

    move-result-wide v16

    move-wide/from16 v12, v16

    .line 233
    .local v12, "titleWidth":D
    move-object/from16 v16, v1

    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;->contentContainer:Ljavafx/scene/layout/StackPane;

    move-object/from16 v17, v0

    move-wide/from16 v18, v2

    invoke-virtual/range {v17 .. v19}, Ljavafx/scene/layout/StackPane;->minWidth(D)D

    move-result-wide v17

    invoke-virtual/range {v16 .. v18}, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;->snapSize(D)D

    move-result-wide v16

    move-wide/from16 v14, v16

    .line 234
    .local v14, "contentWidth":D
    move-wide/from16 v16, v12

    move-wide/from16 v18, v14

    invoke-static/range {v16 .. v19}, Ljava/lang/Math;->max(DD)D

    move-result-wide v16

    move-wide/from16 v18, v10

    add-double v16, v16, v18

    move-wide/from16 v18, v6

    add-double v16, v16, v18

    move-wide/from16 v1, v16

    .end local v1    # "this":Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;
    return-wide v1
.end method

.method protected computePrefHeight(DDDDD)D
    .locals 21

    .prologue
    .line 250
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;
    move-wide/from16 v2, p1

    .local v2, "width":D
    move-wide/from16 v4, p3

    .local v4, "topInset":D
    move-wide/from16 v6, p5

    .local v6, "rightInset":D
    move-wide/from16 v8, p7

    .local v8, "bottomInset":D
    move-wide/from16 v10, p9

    .local v10, "leftInset":D
    move-object/from16 v16, v1

    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;->titleRegion:Lcom/sun/javafx/scene/control/skin/TitledPaneSkin$TitleRegion;

    move-object/from16 v17, v0

    move-wide/from16 v18, v2

    invoke-virtual/range {v17 .. v19}, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin$TitleRegion;->prefHeight(D)D

    move-result-wide v17

    invoke-virtual/range {v16 .. v18}, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;->snapSize(D)D

    move-result-wide v16

    move-wide/from16 v12, v16

    .line 251
    .local v12, "headerHeight":D
    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;->contentContainer:Ljavafx/scene/layout/StackPane;

    move-object/from16 v16, v0

    move-wide/from16 v17, v2

    invoke-virtual/range {v16 .. v18}, Ljavafx/scene/layout/StackPane;->prefHeight(D)D

    move-result-wide v16

    move-object/from16 v18, v1

    invoke-direct/range {v18 .. v18}, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;->getTransition()D

    move-result-wide v18

    mul-double v16, v16, v18

    move-wide/from16 v14, v16

    .line 252
    .local v14, "contentHeight":D
    move-wide/from16 v16, v12

    move-object/from16 v18, v1

    move-wide/from16 v19, v14

    invoke-virtual/range {v18 .. v20}, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;->snapSize(D)D

    move-result-wide v18

    add-double v16, v16, v18

    move-wide/from16 v18, v4

    add-double v16, v16, v18

    move-wide/from16 v18, v8

    add-double v16, v16, v18

    move-wide/from16 v1, v16

    .end local v1    # "this":Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;
    return-wide v1
.end method

.method protected computePrefWidth(DDDDD)D
    .locals 21

    .prologue
    .line 244
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;
    move-wide/from16 v2, p1

    .local v2, "height":D
    move-wide/from16 v4, p3

    .local v4, "topInset":D
    move-wide/from16 v6, p5

    .local v6, "rightInset":D
    move-wide/from16 v8, p7

    .local v8, "bottomInset":D
    move-wide/from16 v10, p9

    .local v10, "leftInset":D
    move-object/from16 v16, v1

    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;->titleRegion:Lcom/sun/javafx/scene/control/skin/TitledPaneSkin$TitleRegion;

    move-object/from16 v17, v0

    move-wide/from16 v18, v2

    invoke-virtual/range {v17 .. v19}, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin$TitleRegion;->prefWidth(D)D

    move-result-wide v17

    invoke-virtual/range {v16 .. v18}, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;->snapSize(D)D

    move-result-wide v16

    move-wide/from16 v12, v16

    .line 245
    .local v12, "titleWidth":D
    move-object/from16 v16, v1

    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;->contentContainer:Ljavafx/scene/layout/StackPane;

    move-object/from16 v17, v0

    move-wide/from16 v18, v2

    invoke-virtual/range {v17 .. v19}, Ljavafx/scene/layout/StackPane;->prefWidth(D)D

    move-result-wide v17

    invoke-virtual/range {v16 .. v18}, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;->snapSize(D)D

    move-result-wide v16

    move-wide/from16 v14, v16

    .line 246
    .local v14, "contentWidth":D
    move-wide/from16 v16, v12

    move-wide/from16 v18, v14

    invoke-static/range {v16 .. v19}, Ljava/lang/Math;->max(DD)D

    move-result-wide v16

    move-wide/from16 v18, v10

    add-double v16, v16, v18

    move-wide/from16 v18, v6

    add-double v16, v16, v18

    move-wide/from16 v1, v16

    .end local v1    # "this":Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;
    return-wide v1
.end method

.method public getContentContainer()Ljavafx/scene/layout/StackPane;
    .locals 2

    .prologue
    .line 121
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;->contentContainer:Ljavafx/scene/layout/StackPane;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;
    return-object v0
.end method

.method getTitleRegionSize(D)D
    .locals 9

    .prologue
    .line 260
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;
    move-wide v2, p1

    .local v2, "width":D
    move-object v4, v1

    move-object v5, v1

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;->titleRegion:Lcom/sun/javafx/scene/control/skin/TitledPaneSkin$TitleRegion;

    move-wide v6, v2

    invoke-virtual {v5, v6, v7}, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin$TitleRegion;->prefHeight(D)D

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;->snapSize(D)D

    move-result-wide v4

    move-object v6, v1

    invoke-virtual {v6}, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;->snappedTopInset()D

    move-result-wide v6

    add-double/2addr v4, v6

    move-object v6, v1

    invoke-virtual {v6}, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;->snappedBottomInset()D

    move-result-wide v6

    add-double/2addr v4, v6

    move-wide v1, v4

    .end local v1    # "this":Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;
    return-wide v1
.end method

.method getTitledPaneHeightForAccordion()D
    .locals 11

    .prologue
    .line 269
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;
    move-object v6, v1

    move-object v7, v1

    iget-object v7, v7, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;->titleRegion:Lcom/sun/javafx/scene/control/skin/TitledPaneSkin$TitleRegion;

    const-wide/high16 v8, -0x4010000000000000L    # -1.0

    invoke-virtual {v7, v8, v9}, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin$TitleRegion;->prefHeight(D)D

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;->snapSize(D)D

    move-result-wide v6

    move-wide v2, v6

    .line 270
    .local v2, "headerHeight":D
    move-object v6, v1

    iget-wide v6, v6, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;->prefHeightFromAccordion:D

    move-wide v8, v2

    sub-double/2addr v6, v8

    move-object v8, v1

    invoke-direct {v8}, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;->getTransition()D

    move-result-wide v8

    mul-double/2addr v6, v8

    move-wide v4, v6

    .line 271
    .local v4, "contentHeight":D
    move-wide v6, v2

    move-object v8, v1

    move-wide v9, v4

    invoke-virtual {v8, v9, v10}, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;->snapSize(D)D

    move-result-wide v8

    add-double/2addr v6, v8

    move-object v8, v1

    invoke-virtual {v8}, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;->snappedTopInset()D

    move-result-wide v8

    add-double/2addr v6, v8

    move-object v8, v1

    invoke-virtual {v8}, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;->snappedBottomInset()D

    move-result-wide v8

    add-double/2addr v6, v8

    move-wide v1, v6

    .end local v1    # "this":Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;
    return-wide v1
.end method

.method protected handleControlPropertyChanged(Ljava/lang/String;)V
    .locals 9

    .prologue
    .line 126
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;
    move-object v2, p1

    .local v2, "property":Ljava/lang/String;
    move-object v3, v1

    move-object v4, v2

    invoke-super {v3, v4}, Lcom/sun/javafx/scene/control/skin/LabeledSkinBase;->handleControlPropertyChanged(Ljava/lang/String;)V

    .line 127
    const-string v3, "CONTENT"

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 128
    move-object v3, v1

    move-object v4, v1

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v4

    check-cast v4, Ljavafx/scene/control/TitledPane;

    invoke-virtual {v4}, Ljavafx/scene/control/TitledPane;->getContent()Ljavafx/scene/Node;

    move-result-object v4

    iput-object v4, v3, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;->content:Ljavafx/scene/Node;

    .line 129
    move-object v3, v1

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;->content:Ljavafx/scene/Node;

    if-nez v3, :cond_1

    .line 130
    move-object v3, v1

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;->contentContainer:Ljavafx/scene/layout/StackPane;

    invoke-virtual {v3}, Ljavafx/scene/layout/StackPane;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v3

    invoke-interface {v3}, Ljavafx/collections/ObservableList;->clear()V

    .line 153
    :cond_0
    :goto_0
    return-void

    .line 132
    :cond_1
    move-object v3, v1

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;->contentContainer:Ljavafx/scene/layout/StackPane;

    invoke-virtual {v3}, Ljavafx/scene/layout/StackPane;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljavafx/scene/Node;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    move-object v7, v1

    iget-object v7, v7, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;->content:Ljavafx/scene/Node;

    aput-object v7, v5, v6

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->setAll([Ljava/lang/Object;)Z

    move-result v3

    goto :goto_0

    .line 134
    :cond_2
    const-string v3, "EXPANDED"

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 135
    move-object v3, v1

    move-object v4, v1

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v4

    check-cast v4, Ljavafx/scene/control/TitledPane;

    invoke-virtual {v4}, Ljavafx/scene/control/TitledPane;->isExpanded()Z

    move-result v4

    invoke-direct {v3, v4}, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;->setExpanded(Z)V

    goto :goto_0

    .line 136
    :cond_3
    const-string v3, "COLLAPSIBLE"

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 137
    move-object v3, v1

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;->titleRegion:Lcom/sun/javafx/scene/control/skin/TitledPaneSkin$TitleRegion;

    invoke-static {v3}, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin$TitleRegion;->access$100(Lcom/sun/javafx/scene/control/skin/TitledPaneSkin$TitleRegion;)V

    goto :goto_0

    .line 138
    :cond_4
    const-string v3, "ALIGNMENT"

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 139
    move-object v3, v1

    move-object v4, v1

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v4

    check-cast v4, Ljavafx/scene/control/TitledPane;

    invoke-virtual {v4}, Ljavafx/scene/control/TitledPane;->getAlignment()Ljavafx/geometry/Pos;

    move-result-object v4

    iput-object v4, v3, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;->pos:Ljavafx/geometry/Pos;

    .line 140
    move-object v3, v1

    move-object v4, v1

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;->pos:Ljavafx/geometry/Pos;

    invoke-virtual {v4}, Ljavafx/geometry/Pos;->getHpos()Ljavafx/geometry/HPos;

    move-result-object v4

    iput-object v4, v3, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;->hpos:Ljavafx/geometry/HPos;

    .line 141
    move-object v3, v1

    move-object v4, v1

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;->pos:Ljavafx/geometry/Pos;

    invoke-virtual {v4}, Ljavafx/geometry/Pos;->getVpos()Ljavafx/geometry/VPos;

    move-result-object v4

    iput-object v4, v3, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;->vpos:Ljavafx/geometry/VPos;

    goto :goto_0

    .line 142
    :cond_5
    const-string v3, "TITLE_REGION_ALIGNMENT"

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 143
    move-object v3, v1

    move-object v4, v1

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;->titleRegion:Lcom/sun/javafx/scene/control/skin/TitledPaneSkin$TitleRegion;

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin$TitleRegion;->getAlignment()Ljavafx/geometry/Pos;

    move-result-object v4

    iput-object v4, v3, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;->pos:Ljavafx/geometry/Pos;

    .line 144
    move-object v3, v1

    move-object v4, v1

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;->pos:Ljavafx/geometry/Pos;

    invoke-virtual {v4}, Ljavafx/geometry/Pos;->getHpos()Ljavafx/geometry/HPos;

    move-result-object v4

    iput-object v4, v3, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;->hpos:Ljavafx/geometry/HPos;

    .line 145
    move-object v3, v1

    move-object v4, v1

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;->pos:Ljavafx/geometry/Pos;

    invoke-virtual {v4}, Ljavafx/geometry/Pos;->getVpos()Ljavafx/geometry/VPos;

    move-result-object v4

    iput-object v4, v3, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;->vpos:Ljavafx/geometry/VPos;

    goto/16 :goto_0

    .line 146
    :cond_6
    const-string v3, "WIDTH"

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 147
    move-object v3, v1

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;->clipRect:Ljavafx/scene/shape/Rectangle;

    move-object v4, v1

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v4

    check-cast v4, Ljavafx/scene/control/TitledPane;

    invoke-virtual {v4}, Ljavafx/scene/control/TitledPane;->getWidth()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/shape/Rectangle;->setWidth(D)V

    goto/16 :goto_0

    .line 148
    :cond_7
    const-string v3, "HEIGHT"

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 149
    move-object v3, v1

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;->clipRect:Ljavafx/scene/shape/Rectangle;

    move-object v4, v1

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;->contentContainer:Ljavafx/scene/layout/StackPane;

    invoke-virtual {v4}, Ljavafx/scene/layout/StackPane;->getHeight()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/shape/Rectangle;->setHeight(D)V

    goto/16 :goto_0

    .line 150
    :cond_8
    const-string v3, "GRAPHIC_TEXT_GAP"

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 151
    move-object v3, v1

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;->titleRegion:Lcom/sun/javafx/scene/control/skin/TitledPaneSkin$TitleRegion;

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin$TitleRegion;->requestLayout()V

    goto/16 :goto_0
.end method

.method protected layoutChildren(DDDD)V
    .locals 29

    .prologue
    .line 209
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;
    move-wide/from16 v2, p1

    .local v2, "x":D
    move-wide/from16 v4, p3

    .local v4, "y":D
    move-wide/from16 v6, p5

    .local v6, "w":D
    move-wide/from16 v8, p7

    .local v8, "h":D
    move-object v14, v1

    move-object v15, v1

    iget-object v15, v15, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;->titleRegion:Lcom/sun/javafx/scene/control/skin/TitledPaneSkin$TitleRegion;

    const-wide/high16 v16, -0x4010000000000000L    # -1.0

    invoke-virtual/range {v15 .. v17}, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin$TitleRegion;->prefHeight(D)D

    move-result-wide v15

    invoke-virtual/range {v14 .. v16}, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;->snapSize(D)D

    move-result-wide v14

    move-wide v10, v14

    .line 211
    .local v10, "headerHeight":D
    move-object v14, v1

    iget-object v14, v14, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;->titleRegion:Lcom/sun/javafx/scene/control/skin/TitledPaneSkin$TitleRegion;

    move-wide v15, v6

    move-wide/from16 v17, v10

    invoke-virtual/range {v14 .. v18}, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin$TitleRegion;->resize(DD)V

    .line 212
    move-object v14, v1

    move-object v15, v1

    iget-object v15, v15, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;->titleRegion:Lcom/sun/javafx/scene/control/skin/TitledPaneSkin$TitleRegion;

    move-wide/from16 v16, v2

    move-wide/from16 v18, v4

    move-wide/from16 v20, v6

    move-wide/from16 v22, v10

    const-wide/16 v24, 0x0

    sget-object v26, Ljavafx/geometry/HPos;->LEFT:Ljavafx/geometry/HPos;

    sget-object v27, Ljavafx/geometry/VPos;->CENTER:Ljavafx/geometry/VPos;

    invoke-virtual/range {v14 .. v27}, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;->positionInArea(Ljavafx/scene/Node;DDDDDLjavafx/geometry/HPos;Ljavafx/geometry/VPos;)V

    .line 216
    move-wide v14, v8

    move-wide/from16 v16, v10

    sub-double v14, v14, v16

    move-object/from16 v16, v1

    invoke-direct/range {v16 .. v16}, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;->getTransition()D

    move-result-wide v16

    mul-double v14, v14, v16

    move-wide v12, v14

    .line 217
    .local v12, "contentHeight":D
    move-object v14, v1

    invoke-direct {v14}, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;->isInsideAccordion()Z

    move-result v14

    if-eqz v14, :cond_0

    .line 218
    move-object v14, v1

    iget-wide v14, v14, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;->prefHeightFromAccordion:D

    const-wide/16 v16, 0x0

    cmpl-double v14, v14, v16

    if-eqz v14, :cond_0

    .line 219
    move-object v14, v1

    iget-wide v14, v14, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;->prefHeightFromAccordion:D

    move-wide/from16 v16, v10

    sub-double v14, v14, v16

    move-object/from16 v16, v1

    invoke-direct/range {v16 .. v16}, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;->getTransition()D

    move-result-wide v16

    mul-double v14, v14, v16

    move-wide v12, v14

    .line 222
    :cond_0
    move-object v14, v1

    move-wide v15, v12

    invoke-virtual/range {v14 .. v16}, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;->snapSize(D)D

    move-result-wide v14

    move-wide v12, v14

    .line 224
    move-wide v14, v4

    move-object/from16 v16, v1

    move-wide/from16 v17, v10

    invoke-virtual/range {v16 .. v18}, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;->snapSize(D)D

    move-result-wide v16

    add-double v14, v14, v16

    move-wide v4, v14

    .line 225
    move-object v14, v1

    iget-object v14, v14, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;->contentContainer:Ljavafx/scene/layout/StackPane;

    move-wide v15, v6

    move-wide/from16 v17, v12

    invoke-virtual/range {v14 .. v18}, Ljavafx/scene/layout/StackPane;->resize(DD)V

    .line 226
    move-object v14, v1

    iget-object v14, v14, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;->clipRect:Ljavafx/scene/shape/Rectangle;

    move-wide v15, v12

    invoke-virtual/range {v14 .. v16}, Ljavafx/scene/shape/Rectangle;->setHeight(D)V

    .line 227
    move-object v14, v1

    move-object v15, v1

    iget-object v15, v15, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;->contentContainer:Ljavafx/scene/layout/StackPane;

    move-wide/from16 v16, v2

    move-wide/from16 v18, v4

    move-wide/from16 v20, v6

    move-wide/from16 v22, v12

    const-wide/16 v24, 0x0

    sget-object v26, Ljavafx/geometry/HPos;->CENTER:Ljavafx/geometry/HPos;

    sget-object v27, Ljavafx/geometry/VPos;->CENTER:Ljavafx/geometry/VPos;

    invoke-virtual/range {v14 .. v27}, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;->positionInArea(Ljavafx/scene/Node;DDDDDLjavafx/geometry/HPos;Ljavafx/geometry/VPos;)V

    .line 229
    return-void
.end method

.method setMaxTitledPaneHeightForAccordion(D)V
    .locals 7

    .prologue
    .line 265
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;
    move-wide v1, p1

    .local v1, "height":D
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;->prefHeightFromAccordion:D

    .line 266
    return-void
.end method

.method protected updateChildren()V
    .locals 2

    .prologue
    .line 159
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;->titleRegion:Lcom/sun/javafx/scene/control/skin/TitledPaneSkin$TitleRegion;

    if-eqz v1, :cond_0

    .line 160
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;->titleRegion:Lcom/sun/javafx/scene/control/skin/TitledPaneSkin$TitleRegion;

    invoke-static {v1}, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin$TitleRegion;->access$100(Lcom/sun/javafx/scene/control/skin/TitledPaneSkin$TitleRegion;)V

    .line 162
    :cond_0
    return-void
.end method
