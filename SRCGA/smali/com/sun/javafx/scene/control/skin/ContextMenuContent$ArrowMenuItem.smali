.class Lcom/sun/javafx/scene/control/skin/ContextMenuContent$ArrowMenuItem;
.super Ljavafx/scene/layout/StackPane;
.source "ContextMenuContent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/scene/control/skin/ContextMenuContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ArrowMenuItem"
.end annotation


# instance fields
.field private popupMenuContent:Lcom/sun/javafx/scene/control/skin/ContextMenuContent;

.field private scrollTimeline:Ljavafx/animation/Timeline;

.field final synthetic this$0:Lcom/sun/javafx/scene/control/skin/ContextMenuContent;

.field private up:Z

.field private upDownArrow:Ljavafx/scene/layout/StackPane;


# direct methods
.method public constructor <init>(Lcom/sun/javafx/scene/control/skin/ContextMenuContent;Lcom/sun/javafx/scene/control/skin/ContextMenuContent;)V
    .locals 9

    .prologue
    .line 1038
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ContextMenuContent$ArrowMenuItem;
    move-object v1, p1

    .local v1, "this$0":Lcom/sun/javafx/scene/control/skin/ContextMenuContent;
    move-object v2, p2

    .local v2, "pmc":Lcom/sun/javafx/scene/control/skin/ContextMenuContent;
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$ArrowMenuItem;->this$0:Lcom/sun/javafx/scene/control/skin/ContextMenuContent;

    move-object v3, v0

    invoke-direct {v3}, Ljavafx/scene/layout/StackPane;-><init>()V

    .line 1027
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$ArrowMenuItem;->up:Z

    .line 1039
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$ArrowMenuItem;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    const-string v7, "scroll-arrow"

    aput-object v7, v5, v6

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->setAll([Ljava/lang/Object;)Z

    move-result v3

    .line 1040
    move-object v3, v0

    new-instance v4, Ljavafx/scene/layout/StackPane;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    invoke-direct {v5}, Ljavafx/scene/layout/StackPane;-><init>()V

    iput-object v4, v3, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$ArrowMenuItem;->upDownArrow:Ljavafx/scene/layout/StackPane;

    .line 1041
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$ArrowMenuItem;->popupMenuContent:Lcom/sun/javafx/scene/control/skin/ContextMenuContent;

    .line 1042
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$ArrowMenuItem;->upDownArrow:Ljavafx/scene/layout/StackPane;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljavafx/scene/layout/StackPane;->setMouseTransparent(Z)V

    .line 1043
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$ArrowMenuItem;->upDownArrow:Ljavafx/scene/layout/StackPane;

    invoke-virtual {v3}, Ljavafx/scene/layout/StackPane;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    move-object v7, v0

    invoke-virtual {v7}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$ArrowMenuItem;->isUp()Z

    move-result v7

    if-eqz v7, :cond_0

    const-string v7, "menu-up-arrow"

    :goto_0
    aput-object v7, v5, v6

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->setAll([Ljava/lang/Object;)Z

    move-result v3

    .line 1045
    move-object v3, v0

    sget-object v4, Ljavafx/scene/input/MouseEvent;->MOUSE_ENTERED:Ljavafx/event/EventType;

    move-object v5, v0

    invoke-static {v5}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$ArrowMenuItem$$Lambda$1;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/ContextMenuContent$ArrowMenuItem;)Ljavafx/event/EventHandler;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$ArrowMenuItem;->addEventHandler(Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V

    .line 1051
    move-object v3, v0

    sget-object v4, Ljavafx/scene/input/MouseEvent;->MOUSE_EXITED:Ljavafx/event/EventType;

    move-object v5, v0

    invoke-static {v5}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$ArrowMenuItem$$Lambda$2;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/ContextMenuContent$ArrowMenuItem;)Ljavafx/event/EventHandler;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$ArrowMenuItem;->addEventHandler(Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V

    .line 1054
    move-object v3, v0

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$ArrowMenuItem;->setVisible(Z)V

    .line 1055
    move-object v3, v0

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$ArrowMenuItem;->setManaged(Z)V

    .line 1056
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$ArrowMenuItem;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$ArrowMenuItem;->upDownArrow:Ljavafx/scene/layout/StackPane;

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v3

    .line 1057
    return-void

    .line 1043
    :cond_0
    const-string v7, "menu-down-arrow"

    goto :goto_0
.end method

.method static synthetic access$lambda$0(Lcom/sun/javafx/scene/control/skin/ContextMenuContent$ArrowMenuItem;Ljavafx/scene/input/MouseEvent;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$ArrowMenuItem;->lambda$new$334(Ljavafx/scene/input/MouseEvent;)V

    return-void
.end method

.method static synthetic access$lambda$1(Lcom/sun/javafx/scene/control/skin/ContextMenuContent$ArrowMenuItem;Ljavafx/scene/input/MouseEvent;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$ArrowMenuItem;->lambda$new$335(Ljavafx/scene/input/MouseEvent;)V

    return-void
.end method

.method static synthetic access$lambda$2(Lcom/sun/javafx/scene/control/skin/ContextMenuContent$ArrowMenuItem;Ljavafx/event/ActionEvent;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$ArrowMenuItem;->lambda$startTimeline$336(Ljavafx/event/ActionEvent;)V

    return-void
.end method

.method private adjust()V
    .locals 4

    .prologue
    .line 1078
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ContextMenuContent$ArrowMenuItem;
    move-object v1, v0

    iget-boolean v1, v1, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$ArrowMenuItem;->up:Z

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$ArrowMenuItem;->popupMenuContent:Lcom/sun/javafx/scene/control/skin/ContextMenuContent;

    const-wide/high16 v2, 0x4028000000000000L    # 12.0

    invoke-virtual {v1, v2, v3}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->scroll(D)V

    .line 1079
    :goto_0
    return-void

    .line 1078
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$ArrowMenuItem;->popupMenuContent:Lcom/sun/javafx/scene/control/skin/ContextMenuContent;

    const-wide/high16 v2, -0x3fd8000000000000L    # -12.0

    invoke-virtual {v1, v2, v3}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->scroll(D)V

    goto :goto_0
.end method

.method private synthetic lambda$new$334(Ljavafx/scene/input/MouseEvent;)V
    .locals 4

    .prologue
    .line 1046
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ContextMenuContent$ArrowMenuItem;
    move-object v1, p1

    .local v1, "me":Ljavafx/scene/input/MouseEvent;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$ArrowMenuItem;->scrollTimeline:Ljavafx/animation/Timeline;

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$ArrowMenuItem;->scrollTimeline:Ljavafx/animation/Timeline;

    invoke-virtual {v2}, Ljavafx/animation/Timeline;->getStatus()Ljavafx/animation/Animation$Status;

    move-result-object v2

    sget-object v3, Ljavafx/animation/Animation$Status;->STOPPED:Ljavafx/animation/Animation$Status;

    if-eq v2, v3, :cond_0

    .line 1047
    .line 1050
    :goto_0
    return-void

    .line 1049
    :cond_0
    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$ArrowMenuItem;->startTimeline()V

    .line 1050
    goto :goto_0
.end method

.method private synthetic lambda$new$335(Ljavafx/scene/input/MouseEvent;)V
    .locals 3

    .prologue
    .line 1052
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ContextMenuContent$ArrowMenuItem;
    move-object v1, p1

    .local v1, "me":Ljavafx/scene/input/MouseEvent;
    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$ArrowMenuItem;->stopTimeline()V

    .line 1053
    return-void
.end method

.method private synthetic lambda$startTimeline$336(Ljavafx/event/ActionEvent;)V
    .locals 3

    .prologue
    .line 1087
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ContextMenuContent$ArrowMenuItem;
    move-object v1, p1

    .local v1, "event":Ljavafx/event/ActionEvent;
    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$ArrowMenuItem;->adjust()V

    .line 1088
    return-void
.end method

.method private startTimeline()V
    .locals 8

    .prologue
    .line 1082
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ContextMenuContent$ArrowMenuItem;
    move-object v2, v0

    new-instance v3, Ljavafx/animation/Timeline;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    invoke-direct {v4}, Ljavafx/animation/Timeline;-><init>()V

    iput-object v3, v2, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$ArrowMenuItem;->scrollTimeline:Ljavafx/animation/Timeline;

    .line 1083
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$ArrowMenuItem;->scrollTimeline:Ljavafx/animation/Timeline;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Ljavafx/animation/Timeline;->setCycleCount(I)V

    .line 1084
    new-instance v2, Ljavafx/animation/KeyFrame;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    const-wide/high16 v4, 0x404e000000000000L    # 60.0

    .line 1085
    invoke-static {v4, v5}, Ljavafx/util/Duration;->millis(D)Ljavafx/util/Duration;

    move-result-object v4

    move-object v5, v0

    invoke-static {v5}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$ArrowMenuItem$$Lambda$3;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/ContextMenuContent$ArrowMenuItem;)Ljavafx/event/EventHandler;

    move-result-object v5

    const/4 v6, 0x0

    new-array v6, v6, [Ljavafx/animation/KeyValue;

    invoke-direct {v3, v4, v5, v6}, Ljavafx/animation/KeyFrame;-><init>(Ljavafx/util/Duration;Ljavafx/event/EventHandler;[Ljavafx/animation/KeyValue;)V

    move-object v1, v2

    .line 1090
    .local v1, "kf":Ljavafx/animation/KeyFrame;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$ArrowMenuItem;->scrollTimeline:Ljavafx/animation/Timeline;

    invoke-virtual {v2}, Ljavafx/animation/Timeline;->getKeyFrames()Ljavafx/collections/ObservableList;

    move-result-object v2

    invoke-interface {v2}, Ljavafx/collections/ObservableList;->clear()V

    .line 1091
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$ArrowMenuItem;->scrollTimeline:Ljavafx/animation/Timeline;

    invoke-virtual {v2}, Ljavafx/animation/Timeline;->getKeyFrames()Ljavafx/collections/ObservableList;

    move-result-object v2

    move-object v3, v1

    invoke-interface {v2, v3}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 1092
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$ArrowMenuItem;->scrollTimeline:Ljavafx/animation/Timeline;

    invoke-virtual {v2}, Ljavafx/animation/Timeline;->play()V

    .line 1093
    return-void
.end method

.method private stopTimeline()V
    .locals 3

    .prologue
    .line 1096
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ContextMenuContent$ArrowMenuItem;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$ArrowMenuItem;->scrollTimeline:Ljavafx/animation/Timeline;

    invoke-virtual {v1}, Ljavafx/animation/Timeline;->stop()V

    .line 1097
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$ArrowMenuItem;->scrollTimeline:Ljavafx/animation/Timeline;

    .line 1098
    return-void
.end method


# virtual methods
.method protected computePrefHeight(D)D
    .locals 9

    .prologue
    .line 1065
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/ContextMenuContent$ArrowMenuItem;
    move-wide v2, p1

    .local v2, "width":D
    move-object v4, v1

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$ArrowMenuItem;->snappedTopInset()D

    move-result-wide v4

    move-object v6, v1

    iget-object v6, v6, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$ArrowMenuItem;->upDownArrow:Ljavafx/scene/layout/StackPane;

    const-wide/high16 v7, -0x4010000000000000L    # -1.0

    invoke-virtual {v6, v7, v8}, Ljavafx/scene/layout/StackPane;->prefHeight(D)D

    move-result-wide v6

    add-double/2addr v4, v6

    move-object v6, v1

    invoke-virtual {v6}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$ArrowMenuItem;->snappedBottomInset()D

    move-result-wide v6

    add-double/2addr v4, v6

    move-wide v1, v4

    .end local v1    # "this":Lcom/sun/javafx/scene/control/skin/ContextMenuContent$ArrowMenuItem;
    return-wide v1
.end method

.method protected computePrefWidth(D)D
    .locals 7

    .prologue
    .line 1061
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/ContextMenuContent$ArrowMenuItem;
    move-wide v2, p1

    .local v2, "height":D
    move-object v4, v1

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$ArrowMenuItem;->this$0:Lcom/sun/javafx/scene/control/skin/ContextMenuContent;

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/ContextMenuContent;->itemsContainer:Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuBox;

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$MenuBox;->getWidth()D

    move-result-wide v4

    move-wide v1, v4

    .end local v1    # "this":Lcom/sun/javafx/scene/control/skin/ContextMenuContent$ArrowMenuItem;
    return-wide v1
.end method

.method public final isUp()Z
    .locals 2

    .prologue
    .line 1028
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ContextMenuContent$ArrowMenuItem;
    move-object v1, v0

    iget-boolean v1, v1, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$ArrowMenuItem;->up:Z

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/ContextMenuContent$ArrowMenuItem;
    return v0
.end method

.method protected layoutChildren()V
    .locals 20

    .prologue
    .line 1069
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/ContextMenuContent$ArrowMenuItem;
    move-object v6, v1

    move-object v7, v1

    iget-object v7, v7, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$ArrowMenuItem;->upDownArrow:Ljavafx/scene/layout/StackPane;

    const-wide/high16 v8, -0x4010000000000000L    # -1.0

    invoke-virtual {v7, v8, v9}, Ljavafx/scene/layout/StackPane;->prefWidth(D)D

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$ArrowMenuItem;->snapSize(D)D

    move-result-wide v6

    move-wide v2, v6

    .line 1070
    .local v2, "w":D
    move-object v6, v1

    move-object v7, v1

    iget-object v7, v7, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$ArrowMenuItem;->upDownArrow:Ljavafx/scene/layout/StackPane;

    const-wide/high16 v8, -0x4010000000000000L    # -1.0

    invoke-virtual {v7, v8, v9}, Ljavafx/scene/layout/StackPane;->prefHeight(D)D

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$ArrowMenuItem;->snapSize(D)D

    move-result-wide v6

    move-wide v4, v6

    .line 1072
    .local v4, "h":D
    move-object v6, v1

    iget-object v6, v6, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$ArrowMenuItem;->upDownArrow:Ljavafx/scene/layout/StackPane;

    move-wide v7, v2

    move-wide v9, v4

    invoke-virtual {v6, v7, v8, v9, v10}, Ljavafx/scene/layout/StackPane;->resize(DD)V

    .line 1073
    move-object v6, v1

    move-object v7, v1

    iget-object v7, v7, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$ArrowMenuItem;->upDownArrow:Ljavafx/scene/layout/StackPane;

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    move-object v12, v1

    invoke-virtual {v12}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$ArrowMenuItem;->getWidth()D

    move-result-wide v12

    move-object v14, v1

    invoke-virtual {v14}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$ArrowMenuItem;->getHeight()D

    move-result-wide v14

    const-wide/16 v16, 0x0

    sget-object v18, Ljavafx/geometry/HPos;->CENTER:Ljavafx/geometry/HPos;

    sget-object v19, Ljavafx/geometry/VPos;->CENTER:Ljavafx/geometry/VPos;

    invoke-virtual/range {v6 .. v19}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$ArrowMenuItem;->positionInArea(Ljavafx/scene/Node;DDDDDLjavafx/geometry/HPos;Ljavafx/geometry/VPos;)V

    .line 1075
    return-void
.end method

.method public setUp(Z)V
    .locals 8

    .prologue
    .line 1030
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ContextMenuContent$ArrowMenuItem;
    move v1, p1

    .local v1, "value":Z
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$ArrowMenuItem;->up:Z

    .line 1031
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$ArrowMenuItem;->upDownArrow:Ljavafx/scene/layout/StackPane;

    invoke-virtual {v2}, Ljavafx/scene/layout/StackPane;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x0

    move-object v6, v0

    invoke-virtual {v6}, Lcom/sun/javafx/scene/control/skin/ContextMenuContent$ArrowMenuItem;->isUp()Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "menu-up-arrow"

    :goto_0
    aput-object v6, v4, v5

    invoke-interface {v2, v3}, Ljavafx/collections/ObservableList;->setAll([Ljava/lang/Object;)Z

    move-result v2

    .line 1032
    return-void

    .line 1031
    :cond_0
    const-string v6, "menu-down-arrow"

    goto :goto_0
.end method
