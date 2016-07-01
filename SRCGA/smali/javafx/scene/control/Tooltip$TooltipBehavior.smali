.class Ljavafx/scene/control/Tooltip$TooltipBehavior;
.super Ljava/lang/Object;
.source "Tooltip.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/control/Tooltip;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TooltipBehavior"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private KILL_HANDLER:Ljavafx/event/EventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/scene/input/MouseEvent;",
            ">;"
        }
    .end annotation
.end field

.field private LEAVING_HANDLER:Ljavafx/event/EventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/scene/input/MouseEvent;",
            ">;"
        }
    .end annotation
.end field

.field private MOVE_HANDLER:Ljavafx/event/EventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/scene/input/MouseEvent;",
            ">;"
        }
    .end annotation
.end field

.field private activatedTooltip:Ljavafx/scene/control/Tooltip;

.field private activationTimer:Ljavafx/animation/Timeline;

.field private hideOnExit:Z

.field private hideTimer:Ljavafx/animation/Timeline;

.field private hoveredNode:Ljavafx/scene/Node;

.field private lastMouseX:D

.field private lastMouseY:D

.field private leftTimer:Ljavafx/animation/Timeline;

.field private visibleTooltip:Ljavafx/scene/control/Tooltip;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 673
    const-class v0, Ljavafx/scene/control/Tooltip;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Ljavafx/scene/control/Tooltip$TooltipBehavior;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Ljavafx/util/Duration;Ljavafx/util/Duration;Ljavafx/util/Duration;Z)V
    .locals 11

    .prologue
    .line 739
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Tooltip$TooltipBehavior;
    move-object v1, p1

    .local v1, "openDelay":Ljavafx/util/Duration;
    move-object v2, p2

    .local v2, "visibleDuration":Ljavafx/util/Duration;
    move-object v3, p3

    .local v3, "closeDelay":Ljavafx/util/Duration;
    move v4, p4

    .local v4, "hideOnExit":Z
    move-object v5, v0

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 709
    move-object v5, v0

    new-instance v6, Ljavafx/animation/Timeline;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    invoke-direct {v7}, Ljavafx/animation/Timeline;-><init>()V

    iput-object v6, v5, Ljavafx/scene/control/Tooltip$TooltipBehavior;->activationTimer:Ljavafx/animation/Timeline;

    .line 710
    move-object v5, v0

    new-instance v6, Ljavafx/animation/Timeline;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    invoke-direct {v7}, Ljavafx/animation/Timeline;-><init>()V

    iput-object v6, v5, Ljavafx/scene/control/Tooltip$TooltipBehavior;->hideTimer:Ljavafx/animation/Timeline;

    .line 711
    move-object v5, v0

    new-instance v6, Ljavafx/animation/Timeline;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    invoke-direct {v7}, Ljavafx/animation/Timeline;-><init>()V

    iput-object v6, v5, Ljavafx/scene/control/Tooltip$TooltipBehavior;->leftTimer:Ljavafx/animation/Timeline;

    .line 832
    move-object v5, v0

    move-object v6, v0

    invoke-static {v6}, Ljavafx/scene/control/Tooltip$TooltipBehavior$$Lambda$1;->lambdaFactory$(Ljavafx/scene/control/Tooltip$TooltipBehavior;)Ljavafx/event/EventHandler;

    move-result-object v6

    iput-object v6, v5, Ljavafx/scene/control/Tooltip$TooltipBehavior;->MOVE_HANDLER:Ljavafx/event/EventHandler;

    .line 889
    move-object v5, v0

    move-object v6, v0

    invoke-static {v6}, Ljavafx/scene/control/Tooltip$TooltipBehavior$$Lambda$2;->lambdaFactory$(Ljavafx/scene/control/Tooltip$TooltipBehavior;)Ljavafx/event/EventHandler;

    move-result-object v6

    iput-object v6, v5, Ljavafx/scene/control/Tooltip$TooltipBehavior;->LEAVING_HANDLER:Ljavafx/event/EventHandler;

    .line 910
    move-object v5, v0

    move-object v6, v0

    invoke-static {v6}, Ljavafx/scene/control/Tooltip$TooltipBehavior$$Lambda$3;->lambdaFactory$(Ljavafx/scene/control/Tooltip$TooltipBehavior;)Ljavafx/event/EventHandler;

    move-result-object v6

    iput-object v6, v5, Ljavafx/scene/control/Tooltip$TooltipBehavior;->KILL_HANDLER:Ljavafx/event/EventHandler;

    .line 740
    move-object v5, v0

    move v6, v4

    iput-boolean v6, v5, Ljavafx/scene/control/Tooltip$TooltipBehavior;->hideOnExit:Z

    .line 742
    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/control/Tooltip$TooltipBehavior;->activationTimer:Ljavafx/animation/Timeline;

    invoke-virtual {v5}, Ljavafx/animation/Timeline;->getKeyFrames()Ljavafx/collections/ObservableList;

    move-result-object v5

    new-instance v6, Ljavafx/animation/KeyFrame;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v8, v1

    const/4 v9, 0x0

    new-array v9, v9, [Ljavafx/animation/KeyValue;

    invoke-direct {v7, v8, v9}, Ljavafx/animation/KeyFrame;-><init>(Ljavafx/util/Duration;[Ljavafx/animation/KeyValue;)V

    invoke-interface {v5, v6}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v5

    .line 743
    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/control/Tooltip$TooltipBehavior;->activationTimer:Ljavafx/animation/Timeline;

    move-object v6, v0

    invoke-static {v6}, Ljavafx/scene/control/Tooltip$TooltipBehavior$$Lambda$4;->lambdaFactory$(Ljavafx/scene/control/Tooltip$TooltipBehavior;)Ljavafx/event/EventHandler;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljavafx/animation/Timeline;->setOnFinished(Ljavafx/event/EventHandler;)V

    .line 804
    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/control/Tooltip$TooltipBehavior;->hideTimer:Ljavafx/animation/Timeline;

    invoke-virtual {v5}, Ljavafx/animation/Timeline;->getKeyFrames()Ljavafx/collections/ObservableList;

    move-result-object v5

    new-instance v6, Ljavafx/animation/KeyFrame;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v8, v2

    const/4 v9, 0x0

    new-array v9, v9, [Ljavafx/animation/KeyValue;

    invoke-direct {v7, v8, v9}, Ljavafx/animation/KeyFrame;-><init>(Ljavafx/util/Duration;[Ljavafx/animation/KeyValue;)V

    invoke-interface {v5, v6}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v5

    .line 805
    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/control/Tooltip$TooltipBehavior;->hideTimer:Ljavafx/animation/Timeline;

    move-object v6, v0

    invoke-static {v6}, Ljavafx/scene/control/Tooltip$TooltipBehavior$$Lambda$5;->lambdaFactory$(Ljavafx/scene/control/Tooltip$TooltipBehavior;)Ljavafx/event/EventHandler;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljavafx/animation/Timeline;->setOnFinished(Ljavafx/event/EventHandler;)V

    .line 813
    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/control/Tooltip$TooltipBehavior;->leftTimer:Ljavafx/animation/Timeline;

    invoke-virtual {v5}, Ljavafx/animation/Timeline;->getKeyFrames()Ljavafx/collections/ObservableList;

    move-result-object v5

    new-instance v6, Ljavafx/animation/KeyFrame;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v8, v3

    const/4 v9, 0x0

    new-array v9, v9, [Ljavafx/animation/KeyValue;

    invoke-direct {v7, v8, v9}, Ljavafx/animation/KeyFrame;-><init>(Ljavafx/util/Duration;[Ljavafx/animation/KeyValue;)V

    invoke-interface {v5, v6}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v5

    .line 814
    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/control/Tooltip$TooltipBehavior;->leftTimer:Ljavafx/animation/Timeline;

    move-object v6, v0

    move v7, v4

    invoke-static {v6, v7}, Ljavafx/scene/control/Tooltip$TooltipBehavior$$Lambda$6;->lambdaFactory$(Ljavafx/scene/control/Tooltip$TooltipBehavior;Z)Ljavafx/event/EventHandler;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljavafx/animation/Timeline;->setOnFinished(Ljavafx/event/EventHandler;)V

    .line 823
    return-void
.end method

.method static synthetic access$000(Ljavafx/scene/control/Tooltip$TooltipBehavior;Ljavafx/scene/Node;Ljavafx/scene/control/Tooltip;)V
    .locals 6

    .prologue
    .line 673
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/control/Tooltip$TooltipBehavior;
    move-object v1, p1

    .local v1, "x1":Ljavafx/scene/Node;
    move-object v2, p2

    .local v2, "x2":Ljavafx/scene/control/Tooltip;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Ljavafx/scene/control/Tooltip$TooltipBehavior;->install(Ljavafx/scene/Node;Ljavafx/scene/control/Tooltip;)V

    return-void
.end method

.method static synthetic access$100(Ljavafx/scene/control/Tooltip$TooltipBehavior;Ljavafx/scene/Node;)V
    .locals 4

    .prologue
    .line 673
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/control/Tooltip$TooltipBehavior;
    move-object v1, p1

    .local v1, "x1":Ljavafx/scene/Node;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljavafx/scene/control/Tooltip$TooltipBehavior;->uninstall(Ljavafx/scene/Node;)V

    return-void
.end method

.method static synthetic access$1100(Ljavafx/scene/control/Tooltip$TooltipBehavior;)Ljavafx/scene/Node;
    .locals 2

    .prologue
    .line 673
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/control/Tooltip$TooltipBehavior;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Tooltip$TooltipBehavior;->hoveredNode:Ljavafx/scene/Node;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/control/Tooltip$TooltipBehavior;
    return-object v0
.end method

.method static synthetic access$300(Ljavafx/scene/control/Tooltip$TooltipBehavior;)D
    .locals 3

    .prologue
    .line 673
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/control/Tooltip$TooltipBehavior;
    move-object v1, v0

    iget-wide v1, v1, Ljavafx/scene/control/Tooltip$TooltipBehavior;->lastMouseX:D

    move-wide v0, v1

    .end local v0    # "x0":Ljavafx/scene/control/Tooltip$TooltipBehavior;
    return-wide v0
.end method

.method static synthetic access$400(Ljavafx/scene/control/Tooltip$TooltipBehavior;)D
    .locals 3

    .prologue
    .line 673
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/control/Tooltip$TooltipBehavior;
    move-object v1, v0

    iget-wide v1, v1, Ljavafx/scene/control/Tooltip$TooltipBehavior;->lastMouseY:D

    move-wide v0, v1

    .end local v0    # "x0":Ljavafx/scene/control/Tooltip$TooltipBehavior;
    return-wide v0
.end method

.method static synthetic access$lambda$0(Ljavafx/scene/control/Tooltip$TooltipBehavior;Ljavafx/scene/input/MouseEvent;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljavafx/scene/control/Tooltip$TooltipBehavior;->lambda$new$7(Ljavafx/scene/input/MouseEvent;)V

    return-void
.end method

.method static synthetic access$lambda$1(Ljavafx/scene/control/Tooltip$TooltipBehavior;Ljavafx/scene/input/MouseEvent;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljavafx/scene/control/Tooltip$TooltipBehavior;->lambda$new$8(Ljavafx/scene/input/MouseEvent;)V

    return-void
.end method

.method static synthetic access$lambda$2(Ljavafx/scene/control/Tooltip$TooltipBehavior;Ljavafx/scene/input/MouseEvent;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljavafx/scene/control/Tooltip$TooltipBehavior;->lambda$new$9(Ljavafx/scene/input/MouseEvent;)V

    return-void
.end method

.method static synthetic access$lambda$3(Ljavafx/scene/control/Tooltip$TooltipBehavior;Ljavafx/event/ActionEvent;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljavafx/scene/control/Tooltip$TooltipBehavior;->lambda$new$4(Ljavafx/event/ActionEvent;)V

    return-void
.end method

.method static synthetic access$lambda$4(Ljavafx/scene/control/Tooltip$TooltipBehavior;Ljavafx/event/ActionEvent;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljavafx/scene/control/Tooltip$TooltipBehavior;->lambda$new$5(Ljavafx/event/ActionEvent;)V

    return-void
.end method

.method static synthetic access$lambda$5(Ljavafx/scene/control/Tooltip$TooltipBehavior;ZLjavafx/event/ActionEvent;)V
    .locals 6

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, v0

    move v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Ljavafx/scene/control/Tooltip$TooltipBehavior;->lambda$new$6(ZLjavafx/event/ActionEvent;)V

    return-void
.end method

.method private getWindow(Ljavafx/scene/Node;)Ljavafx/stage/Window;
    .locals 4

    .prologue
    .line 952
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Tooltip$TooltipBehavior;
    move-object v1, p1

    .local v1, "node":Ljavafx/scene/Node;
    move-object v3, v1

    if-nez v3, :cond_0

    const/4 v3, 0x0

    :goto_0
    move-object v2, v3

    .line 953
    .local v2, "scene":Ljavafx/scene/Scene;
    move-object v3, v2

    if-nez v3, :cond_1

    const/4 v3, 0x0

    :goto_1
    move-object v0, v3

    .end local v0    # "this":Ljavafx/scene/control/Tooltip$TooltipBehavior;
    return-object v0

    .line 952
    .end local v2    # "scene":Ljavafx/scene/Scene;
    .restart local v0    # "this":Ljavafx/scene/control/Tooltip$TooltipBehavior;
    :cond_0
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/Node;->getScene()Ljavafx/scene/Scene;

    move-result-object v3

    goto :goto_0

    .line 953
    .restart local v2    # "scene":Ljavafx/scene/Scene;
    :cond_1
    move-object v3, v2

    invoke-virtual {v3}, Ljavafx/scene/Scene;->getWindow()Ljavafx/stage/Window;

    move-result-object v3

    goto :goto_1
.end method

.method private install(Ljavafx/scene/Node;Ljavafx/scene/control/Tooltip;)V
    .locals 6

    .prologue
    .line 925
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Tooltip$TooltipBehavior;
    move-object v1, p1

    .local v1, "node":Ljavafx/scene/Node;
    move-object v2, p2

    .local v2, "t":Ljavafx/scene/control/Tooltip;
    move-object v3, v1

    if-nez v3, :cond_0

    .line 930
    :goto_0
    return-void

    .line 926
    :cond_0
    move-object v3, v1

    sget-object v4, Ljavafx/scene/input/MouseEvent;->MOUSE_MOVED:Ljavafx/event/EventType;

    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/control/Tooltip$TooltipBehavior;->MOVE_HANDLER:Ljavafx/event/EventHandler;

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/Node;->addEventHandler(Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V

    .line 927
    move-object v3, v1

    sget-object v4, Ljavafx/scene/input/MouseEvent;->MOUSE_EXITED:Ljavafx/event/EventType;

    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/control/Tooltip$TooltipBehavior;->LEAVING_HANDLER:Ljavafx/event/EventHandler;

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/Node;->addEventHandler(Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V

    .line 928
    move-object v3, v1

    sget-object v4, Ljavafx/scene/input/MouseEvent;->MOUSE_PRESSED:Ljavafx/event/EventType;

    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/control/Tooltip$TooltipBehavior;->KILL_HANDLER:Ljavafx/event/EventHandler;

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/Node;->addEventHandler(Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V

    .line 929
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/Node;->getProperties()Ljavafx/collections/ObservableMap;

    move-result-object v3

    # getter for: Ljavafx/scene/control/Tooltip;->TOOLTIP_PROP_KEY:Ljava/lang/String;
    invoke-static {}, Ljavafx/scene/control/Tooltip;->access$1200()Ljava/lang/String;

    move-result-object v4

    move-object v5, v2

    invoke-interface {v3, v4, v5}, Ljavafx/collections/ObservableMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 930
    goto :goto_0
.end method

.method private isWindowHierarchyVisible(Ljavafx/scene/Node;)Z
    .locals 5

    .prologue
    .line 962
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Tooltip$TooltipBehavior;
    move-object v1, p1

    .local v1, "node":Ljavafx/scene/Node;
    move-object v4, v1

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    :goto_0
    move v2, v4

    .line 963
    .local v2, "treeVisible":Z
    move-object v4, v1

    if-nez v4, :cond_1

    const/4 v4, 0x0

    :goto_1
    move-object v3, v4

    .line 964
    .local v3, "parent":Ljavafx/scene/Parent;
    :goto_2
    move-object v4, v3

    if-eqz v4, :cond_2

    move v4, v2

    if-eqz v4, :cond_2

    .line 965
    move-object v4, v3

    invoke-virtual {v4}, Ljavafx/scene/Parent;->isVisible()Z

    move-result v4

    move v2, v4

    .line 966
    move-object v4, v3

    invoke-virtual {v4}, Ljavafx/scene/Parent;->getParent()Ljavafx/scene/Parent;

    move-result-object v4

    move-object v3, v4

    goto :goto_2

    .line 962
    .end local v2    # "treeVisible":Z
    .end local v3    # "parent":Ljavafx/scene/Parent;
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 963
    .restart local v2    # "treeVisible":Z
    :cond_1
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/Node;->getParent()Ljavafx/scene/Parent;

    move-result-object v4

    goto :goto_1

    .line 968
    .restart local v3    # "parent":Ljavafx/scene/Parent;
    :cond_2
    move v4, v2

    move v0, v4

    .end local v0    # "this":Ljavafx/scene/control/Tooltip$TooltipBehavior;
    return v0
.end method

.method private synthetic lambda$new$4(Ljavafx/event/ActionEvent;)V
    .locals 21

    .prologue
    .line 746
    move-object/from16 v3, p0

    .local v3, "this":Ljavafx/scene/control/Tooltip$TooltipBehavior;
    move-object/from16 v4, p1

    .local v4, "event":Ljavafx/event/ActionEvent;
    sget-boolean v12, Ljavafx/scene/control/Tooltip$TooltipBehavior;->$assertionsDisabled:Z

    if-nez v12, :cond_0

    move-object v12, v3

    iget-object v12, v12, Ljavafx/scene/control/Tooltip$TooltipBehavior;->activatedTooltip:Ljavafx/scene/control/Tooltip;

    if-nez v12, :cond_0

    new-instance v12, Ljava/lang/AssertionError;

    move-object/from16 v20, v12

    move-object/from16 v12, v20

    move-object/from16 v13, v20

    invoke-direct {v13}, Ljava/lang/AssertionError;-><init>()V

    throw v12

    .line 747
    :cond_0
    move-object v12, v3

    move-object v13, v3

    iget-object v13, v13, Ljavafx/scene/control/Tooltip$TooltipBehavior;->hoveredNode:Ljavafx/scene/Node;

    invoke-direct {v12, v13}, Ljavafx/scene/control/Tooltip$TooltipBehavior;->getWindow(Ljavafx/scene/Node;)Ljavafx/stage/Window;

    move-result-object v12

    move-object v5, v12

    .line 748
    .local v5, "owner":Ljavafx/stage/Window;
    move-object v12, v3

    move-object v13, v3

    iget-object v13, v13, Ljavafx/scene/control/Tooltip$TooltipBehavior;->hoveredNode:Ljavafx/scene/Node;

    invoke-direct {v12, v13}, Ljavafx/scene/control/Tooltip$TooltipBehavior;->isWindowHierarchyVisible(Ljavafx/scene/Node;)Z

    move-result v12

    move v6, v12

    .line 761
    .local v6, "treeVisible":Z
    move-object v12, v5

    if-eqz v12, :cond_3

    move-object v12, v5

    invoke-virtual {v12}, Ljavafx/stage/Window;->isShowing()Z

    move-result v12

    if-eqz v12, :cond_3

    move v12, v6

    if-eqz v12, :cond_3

    .line 762
    move-object v12, v3

    iget-wide v12, v12, Ljavafx/scene/control/Tooltip$TooltipBehavior;->lastMouseX:D

    move-wide v7, v12

    .line 763
    .local v7, "x":D
    move-object v12, v3

    iget-wide v12, v12, Ljavafx/scene/control/Tooltip$TooltipBehavior;->lastMouseY:D

    move-wide v9, v12

    .line 770
    .local v9, "y":D
    move-object v12, v3

    iget-object v12, v12, Ljavafx/scene/control/Tooltip$TooltipBehavior;->hoveredNode:Ljavafx/scene/Node;

    invoke-virtual {v12}, Ljavafx/scene/Node;->getEffectiveNodeOrientation()Ljavafx/geometry/NodeOrientation;

    move-result-object v12

    move-object v11, v12

    .line 771
    .local v11, "nodeOrientation":Ljavafx/geometry/NodeOrientation;
    move-object v12, v3

    iget-object v12, v12, Ljavafx/scene/control/Tooltip$TooltipBehavior;->activatedTooltip:Ljavafx/scene/control/Tooltip;

    invoke-virtual {v12}, Ljavafx/scene/control/Tooltip;->getScene()Ljavafx/scene/Scene;

    move-result-object v12

    move-object v13, v11

    invoke-virtual {v12, v13}, Ljavafx/scene/Scene;->setNodeOrientation(Ljavafx/geometry/NodeOrientation;)V

    .line 772
    move-object v12, v11

    sget-object v13, Ljavafx/geometry/NodeOrientation;->RIGHT_TO_LEFT:Ljavafx/geometry/NodeOrientation;

    if-ne v12, v13, :cond_1

    .line 773
    move-wide v12, v7

    move-object v14, v3

    iget-object v14, v14, Ljavafx/scene/control/Tooltip$TooltipBehavior;->activatedTooltip:Ljavafx/scene/control/Tooltip;

    invoke-virtual {v14}, Ljavafx/scene/control/Tooltip;->getWidth()D

    move-result-wide v14

    sub-double/2addr v12, v14

    move-wide v7, v12

    .line 776
    :cond_1
    move-object v12, v3

    iget-object v12, v12, Ljavafx/scene/control/Tooltip$TooltipBehavior;->activatedTooltip:Ljavafx/scene/control/Tooltip;

    move-object v13, v5

    move-wide v14, v7

    # getter for: Ljavafx/scene/control/Tooltip;->TOOLTIP_XOFFSET:I
    invoke-static {}, Ljavafx/scene/control/Tooltip;->access$1300()I

    move-result v16

    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v16, v0

    add-double v14, v14, v16

    move-wide/from16 v16, v9

    # getter for: Ljavafx/scene/control/Tooltip;->TOOLTIP_YOFFSET:I
    invoke-static {}, Ljavafx/scene/control/Tooltip;->access$1400()I

    move-result v18

    move/from16 v0, v18

    int-to-double v0, v0

    move-wide/from16 v18, v0

    add-double v16, v16, v18

    invoke-virtual/range {v12 .. v17}, Ljavafx/scene/control/Tooltip;->show(Ljavafx/stage/Window;DD)V

    .line 781
    move-wide v12, v9

    # getter for: Ljavafx/scene/control/Tooltip;->TOOLTIP_YOFFSET:I
    invoke-static {}, Ljavafx/scene/control/Tooltip;->access$1400()I

    move-result v14

    int-to-double v14, v14

    add-double/2addr v12, v14

    move-object v14, v3

    iget-object v14, v14, Ljavafx/scene/control/Tooltip$TooltipBehavior;->activatedTooltip:Ljavafx/scene/control/Tooltip;

    invoke-virtual {v14}, Ljavafx/scene/control/Tooltip;->getAnchorY()D

    move-result-wide v14

    cmpl-double v12, v12, v14

    if-lez v12, :cond_2

    .line 786
    move-object v12, v3

    iget-object v12, v12, Ljavafx/scene/control/Tooltip$TooltipBehavior;->activatedTooltip:Ljavafx/scene/control/Tooltip;

    invoke-virtual {v12}, Ljavafx/scene/control/Tooltip;->hide()V

    .line 788
    move-wide v12, v9

    move-object v14, v3

    iget-object v14, v14, Ljavafx/scene/control/Tooltip$TooltipBehavior;->activatedTooltip:Ljavafx/scene/control/Tooltip;

    invoke-virtual {v14}, Ljavafx/scene/control/Tooltip;->getHeight()D

    move-result-wide v14

    sub-double/2addr v12, v14

    move-wide v9, v12

    .line 789
    move-object v12, v3

    iget-object v12, v12, Ljavafx/scene/control/Tooltip$TooltipBehavior;->activatedTooltip:Ljavafx/scene/control/Tooltip;

    move-object v13, v5

    move-wide v14, v7

    # getter for: Ljavafx/scene/control/Tooltip;->TOOLTIP_XOFFSET:I
    invoke-static {}, Ljavafx/scene/control/Tooltip;->access$1300()I

    move-result v16

    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v16, v0

    add-double v14, v14, v16

    move-wide/from16 v16, v9

    invoke-virtual/range {v12 .. v17}, Ljavafx/scene/control/Tooltip;->show(Ljavafx/stage/Window;DD)V

    .line 792
    :cond_2
    move-object v12, v3

    move-object v13, v3

    iget-object v13, v13, Ljavafx/scene/control/Tooltip$TooltipBehavior;->activatedTooltip:Ljavafx/scene/control/Tooltip;

    iput-object v13, v12, Ljavafx/scene/control/Tooltip$TooltipBehavior;->visibleTooltip:Ljavafx/scene/control/Tooltip;

    .line 793
    move-object v12, v3

    const/4 v13, 0x0

    iput-object v13, v12, Ljavafx/scene/control/Tooltip$TooltipBehavior;->hoveredNode:Ljavafx/scene/Node;

    .line 794
    move-object v12, v3

    iget-object v12, v12, Ljavafx/scene/control/Tooltip$TooltipBehavior;->hideTimer:Ljavafx/animation/Timeline;

    invoke-virtual {v12}, Ljavafx/animation/Timeline;->playFromStart()V

    .line 800
    .end local v7    # "x":D
    .end local v9    # "y":D
    .end local v11    # "nodeOrientation":Ljavafx/geometry/NodeOrientation;
    :cond_3
    move-object v12, v3

    iget-object v12, v12, Ljavafx/scene/control/Tooltip$TooltipBehavior;->activatedTooltip:Ljavafx/scene/control/Tooltip;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Ljavafx/scene/control/Tooltip;->setActivated(Z)V

    .line 801
    move-object v12, v3

    const/4 v13, 0x0

    iput-object v13, v12, Ljavafx/scene/control/Tooltip$TooltipBehavior;->activatedTooltip:Ljavafx/scene/control/Tooltip;

    .line 802
    return-void
.end method

.method private synthetic lambda$new$5(Ljavafx/event/ActionEvent;)V
    .locals 5

    .prologue
    .line 807
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Tooltip$TooltipBehavior;
    move-object v1, p1

    .local v1, "event":Ljavafx/event/ActionEvent;
    sget-boolean v2, Ljavafx/scene/control/Tooltip$TooltipBehavior;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/Tooltip$TooltipBehavior;->visibleTooltip:Ljavafx/scene/control/Tooltip;

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 808
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/Tooltip$TooltipBehavior;->visibleTooltip:Ljavafx/scene/control/Tooltip;

    invoke-virtual {v2}, Ljavafx/scene/control/Tooltip;->hide()V

    .line 809
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Ljavafx/scene/control/Tooltip$TooltipBehavior;->visibleTooltip:Ljavafx/scene/control/Tooltip;

    .line 810
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Ljavafx/scene/control/Tooltip$TooltipBehavior;->hoveredNode:Ljavafx/scene/Node;

    .line 811
    return-void
.end method

.method private synthetic lambda$new$6(ZLjavafx/event/ActionEvent;)V
    .locals 6

    .prologue
    .line 815
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Tooltip$TooltipBehavior;
    move v1, p1

    .local v1, "hideOnExit":Z
    move-object v2, p2

    .local v2, "event":Ljavafx/event/ActionEvent;
    move v3, v1

    if-nez v3, :cond_1

    .line 817
    sget-boolean v3, Ljavafx/scene/control/Tooltip$TooltipBehavior;->$assertionsDisabled:Z

    if-nez v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/control/Tooltip$TooltipBehavior;->visibleTooltip:Ljavafx/scene/control/Tooltip;

    if-nez v3, :cond_0

    new-instance v3, Ljava/lang/AssertionError;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 818
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/control/Tooltip$TooltipBehavior;->visibleTooltip:Ljavafx/scene/control/Tooltip;

    invoke-virtual {v3}, Ljavafx/scene/control/Tooltip;->hide()V

    .line 819
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Ljavafx/scene/control/Tooltip$TooltipBehavior;->visibleTooltip:Ljavafx/scene/control/Tooltip;

    .line 820
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Ljavafx/scene/control/Tooltip$TooltipBehavior;->hoveredNode:Ljavafx/scene/Node;

    .line 822
    :cond_1
    return-void
.end method

.method private synthetic lambda$new$7(Ljavafx/scene/input/MouseEvent;)V
    .locals 14

    .prologue
    .line 836
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/control/Tooltip$TooltipBehavior;
    move-object v2, p1

    .local v2, "event":Ljavafx/scene/input/MouseEvent;
    move-object v6, v1

    move-object v7, v2

    invoke-virtual {v7}, Ljavafx/scene/input/MouseEvent;->getScreenX()D

    move-result-wide v7

    iput-wide v7, v6, Ljavafx/scene/control/Tooltip$TooltipBehavior;->lastMouseX:D

    .line 837
    move-object v6, v1

    move-object v7, v2

    invoke-virtual {v7}, Ljavafx/scene/input/MouseEvent;->getScreenY()D

    move-result-wide v7

    iput-wide v7, v6, Ljavafx/scene/control/Tooltip$TooltipBehavior;->lastMouseY:D

    .line 841
    move-object v6, v1

    iget-object v6, v6, Ljavafx/scene/control/Tooltip$TooltipBehavior;->hideTimer:Ljavafx/animation/Timeline;

    invoke-virtual {v6}, Ljavafx/animation/Timeline;->getStatus()Ljavafx/animation/Animation$Status;

    move-result-object v6

    sget-object v7, Ljavafx/animation/Animation$Status;->RUNNING:Ljavafx/animation/Animation$Status;

    if-ne v6, v7, :cond_0

    .line 842
    .line 882
    :goto_0
    return-void

    .line 848
    :cond_0
    move-object v6, v1

    move-object v7, v2

    invoke-virtual {v7}, Ljavafx/scene/input/MouseEvent;->getSource()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljavafx/scene/Node;

    iput-object v7, v6, Ljavafx/scene/control/Tooltip$TooltipBehavior;->hoveredNode:Ljavafx/scene/Node;

    .line 849
    move-object v6, v1

    iget-object v6, v6, Ljavafx/scene/control/Tooltip$TooltipBehavior;->hoveredNode:Ljavafx/scene/Node;

    invoke-virtual {v6}, Ljavafx/scene/Node;->getProperties()Ljavafx/collections/ObservableMap;

    move-result-object v6

    # getter for: Ljavafx/scene/control/Tooltip;->TOOLTIP_PROP_KEY:Ljava/lang/String;
    invoke-static {}, Ljavafx/scene/control/Tooltip;->access$1200()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljavafx/collections/ObservableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljavafx/scene/control/Tooltip;

    move-object v3, v6

    .line 850
    .local v3, "t":Ljavafx/scene/control/Tooltip;
    move-object v6, v3

    if-eqz v6, :cond_2

    .line 855
    move-object v6, v1

    move-object v7, v1

    iget-object v7, v7, Ljavafx/scene/control/Tooltip$TooltipBehavior;->hoveredNode:Ljavafx/scene/Node;

    invoke-direct {v6, v7}, Ljavafx/scene/control/Tooltip$TooltipBehavior;->getWindow(Ljavafx/scene/Node;)Ljavafx/stage/Window;

    move-result-object v6

    move-object v4, v6

    .line 856
    .local v4, "owner":Ljavafx/stage/Window;
    move-object v6, v1

    move-object v7, v1

    iget-object v7, v7, Ljavafx/scene/control/Tooltip$TooltipBehavior;->hoveredNode:Ljavafx/scene/Node;

    invoke-direct {v6, v7}, Ljavafx/scene/control/Tooltip$TooltipBehavior;->isWindowHierarchyVisible(Ljavafx/scene/Node;)Z

    move-result v6

    move v5, v6

    .line 857
    .local v5, "treeVisible":Z
    move-object v6, v4

    if-eqz v6, :cond_2

    move v6, v5

    if-eqz v6, :cond_2

    .line 863
    move-object v6, v1

    iget-object v6, v6, Ljavafx/scene/control/Tooltip$TooltipBehavior;->leftTimer:Ljavafx/animation/Timeline;

    invoke-virtual {v6}, Ljavafx/animation/Timeline;->getStatus()Ljavafx/animation/Animation$Status;

    move-result-object v6

    sget-object v7, Ljavafx/animation/Animation$Status;->RUNNING:Ljavafx/animation/Animation$Status;

    if-ne v6, v7, :cond_3

    .line 864
    move-object v6, v1

    iget-object v6, v6, Ljavafx/scene/control/Tooltip$TooltipBehavior;->visibleTooltip:Ljavafx/scene/control/Tooltip;

    if-eqz v6, :cond_1

    move-object v6, v1

    iget-object v6, v6, Ljavafx/scene/control/Tooltip$TooltipBehavior;->visibleTooltip:Ljavafx/scene/control/Tooltip;

    invoke-virtual {v6}, Ljavafx/scene/control/Tooltip;->hide()V

    .line 865
    :cond_1
    move-object v6, v1

    move-object v7, v3

    iput-object v7, v6, Ljavafx/scene/control/Tooltip$TooltipBehavior;->visibleTooltip:Ljavafx/scene/control/Tooltip;

    .line 866
    move-object v6, v3

    move-object v7, v4

    move-object v8, v2

    invoke-virtual {v8}, Ljavafx/scene/input/MouseEvent;->getScreenX()D

    move-result-wide v8

    # getter for: Ljavafx/scene/control/Tooltip;->TOOLTIP_XOFFSET:I
    invoke-static {}, Ljavafx/scene/control/Tooltip;->access$1300()I

    move-result v10

    int-to-double v10, v10

    add-double/2addr v8, v10

    move-object v10, v2

    .line 867
    invoke-virtual {v10}, Ljavafx/scene/input/MouseEvent;->getScreenY()D

    move-result-wide v10

    # getter for: Ljavafx/scene/control/Tooltip;->TOOLTIP_YOFFSET:I
    invoke-static {}, Ljavafx/scene/control/Tooltip;->access$1400()I

    move-result v12

    int-to-double v12, v12

    add-double/2addr v10, v12

    .line 866
    invoke-virtual/range {v6 .. v11}, Ljavafx/scene/control/Tooltip;->show(Ljavafx/stage/Window;DD)V

    .line 868
    move-object v6, v1

    iget-object v6, v6, Ljavafx/scene/control/Tooltip$TooltipBehavior;->leftTimer:Ljavafx/animation/Timeline;

    invoke-virtual {v6}, Ljavafx/animation/Timeline;->stop()V

    .line 869
    move-object v6, v1

    iget-object v6, v6, Ljavafx/scene/control/Tooltip$TooltipBehavior;->hideTimer:Ljavafx/animation/Timeline;

    invoke-virtual {v6}, Ljavafx/animation/Timeline;->playFromStart()V

    .line 882
    .end local v4    # "owner":Ljavafx/stage/Window;
    .end local v5    # "treeVisible":Z
    :cond_2
    :goto_1
    goto :goto_0

    .line 873
    .restart local v4    # "owner":Ljavafx/stage/Window;
    .restart local v5    # "treeVisible":Z
    :cond_3
    move-object v6, v3

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Ljavafx/scene/control/Tooltip;->setActivated(Z)V

    .line 874
    move-object v6, v1

    move-object v7, v3

    iput-object v7, v6, Ljavafx/scene/control/Tooltip$TooltipBehavior;->activatedTooltip:Ljavafx/scene/control/Tooltip;

    .line 875
    move-object v6, v1

    iget-object v6, v6, Ljavafx/scene/control/Tooltip$TooltipBehavior;->activationTimer:Ljavafx/animation/Timeline;

    invoke-virtual {v6}, Ljavafx/animation/Timeline;->stop()V

    .line 876
    move-object v6, v1

    iget-object v6, v6, Ljavafx/scene/control/Tooltip$TooltipBehavior;->activationTimer:Ljavafx/animation/Timeline;

    invoke-virtual {v6}, Ljavafx/animation/Timeline;->playFromStart()V

    goto :goto_1
.end method

.method private synthetic lambda$new$8(Ljavafx/scene/input/MouseEvent;)V
    .locals 5

    .prologue
    .line 891
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Tooltip$TooltipBehavior;
    move-object v1, p1

    .local v1, "event":Ljavafx/scene/input/MouseEvent;
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/Tooltip$TooltipBehavior;->activationTimer:Ljavafx/animation/Timeline;

    invoke-virtual {v2}, Ljavafx/animation/Timeline;->getStatus()Ljavafx/animation/Animation$Status;

    move-result-object v2

    sget-object v3, Ljavafx/animation/Animation$Status;->RUNNING:Ljavafx/animation/Animation$Status;

    if-ne v2, v3, :cond_2

    .line 892
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/Tooltip$TooltipBehavior;->activationTimer:Ljavafx/animation/Timeline;

    invoke-virtual {v2}, Ljavafx/animation/Timeline;->stop()V

    .line 900
    :cond_0
    :goto_0
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Ljavafx/scene/control/Tooltip$TooltipBehavior;->hoveredNode:Ljavafx/scene/Node;

    .line 901
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Ljavafx/scene/control/Tooltip$TooltipBehavior;->activatedTooltip:Ljavafx/scene/control/Tooltip;

    .line 902
    move-object v2, v0

    iget-boolean v2, v2, Ljavafx/scene/control/Tooltip$TooltipBehavior;->hideOnExit:Z

    if-eqz v2, :cond_1

    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Ljavafx/scene/control/Tooltip$TooltipBehavior;->visibleTooltip:Ljavafx/scene/control/Tooltip;

    .line 903
    :cond_1
    return-void

    .line 893
    :cond_2
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/Tooltip$TooltipBehavior;->hideTimer:Ljavafx/animation/Timeline;

    invoke-virtual {v2}, Ljavafx/animation/Timeline;->getStatus()Ljavafx/animation/Animation$Status;

    move-result-object v2

    sget-object v3, Ljavafx/animation/Animation$Status;->RUNNING:Ljavafx/animation/Animation$Status;

    if-ne v2, v3, :cond_0

    .line 894
    sget-boolean v2, Ljavafx/scene/control/Tooltip$TooltipBehavior;->$assertionsDisabled:Z

    if-nez v2, :cond_3

    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/Tooltip$TooltipBehavior;->visibleTooltip:Ljavafx/scene/control/Tooltip;

    if-nez v2, :cond_3

    new-instance v2, Ljava/lang/AssertionError;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 895
    :cond_3
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/Tooltip$TooltipBehavior;->hideTimer:Ljavafx/animation/Timeline;

    invoke-virtual {v2}, Ljavafx/animation/Timeline;->stop()V

    .line 896
    move-object v2, v0

    iget-boolean v2, v2, Ljavafx/scene/control/Tooltip$TooltipBehavior;->hideOnExit:Z

    if-eqz v2, :cond_4

    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/Tooltip$TooltipBehavior;->visibleTooltip:Ljavafx/scene/control/Tooltip;

    invoke-virtual {v2}, Ljavafx/scene/control/Tooltip;->hide()V

    .line 897
    :cond_4
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/Tooltip$TooltipBehavior;->leftTimer:Ljavafx/animation/Timeline;

    invoke-virtual {v2}, Ljavafx/animation/Timeline;->playFromStart()V

    goto :goto_0
.end method

.method private synthetic lambda$new$9(Ljavafx/scene/input/MouseEvent;)V
    .locals 4

    .prologue
    .line 911
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Tooltip$TooltipBehavior;
    move-object v1, p1

    .local v1, "event":Ljavafx/scene/input/MouseEvent;
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/Tooltip$TooltipBehavior;->activationTimer:Ljavafx/animation/Timeline;

    invoke-virtual {v2}, Ljavafx/animation/Timeline;->stop()V

    .line 912
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/Tooltip$TooltipBehavior;->hideTimer:Ljavafx/animation/Timeline;

    invoke-virtual {v2}, Ljavafx/animation/Timeline;->stop()V

    .line 913
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/Tooltip$TooltipBehavior;->leftTimer:Ljavafx/animation/Timeline;

    invoke-virtual {v2}, Ljavafx/animation/Timeline;->stop()V

    .line 914
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/Tooltip$TooltipBehavior;->visibleTooltip:Ljavafx/scene/control/Tooltip;

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/Tooltip$TooltipBehavior;->visibleTooltip:Ljavafx/scene/control/Tooltip;

    invoke-virtual {v2}, Ljavafx/scene/control/Tooltip;->hide()V

    .line 915
    :cond_0
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Ljavafx/scene/control/Tooltip$TooltipBehavior;->hoveredNode:Ljavafx/scene/Node;

    .line 916
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Ljavafx/scene/control/Tooltip$TooltipBehavior;->activatedTooltip:Ljavafx/scene/control/Tooltip;

    .line 917
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Ljavafx/scene/control/Tooltip$TooltipBehavior;->visibleTooltip:Ljavafx/scene/control/Tooltip;

    .line 918
    return-void
.end method

.method private uninstall(Ljavafx/scene/Node;)V
    .locals 6

    .prologue
    .line 933
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Tooltip$TooltipBehavior;
    move-object v1, p1

    .local v1, "node":Ljavafx/scene/Node;
    move-object v3, v1

    if-nez v3, :cond_0

    .line 944
    :goto_0
    return-void

    .line 934
    :cond_0
    move-object v3, v1

    sget-object v4, Ljavafx/scene/input/MouseEvent;->MOUSE_MOVED:Ljavafx/event/EventType;

    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/control/Tooltip$TooltipBehavior;->MOVE_HANDLER:Ljavafx/event/EventHandler;

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/Node;->removeEventHandler(Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V

    .line 935
    move-object v3, v1

    sget-object v4, Ljavafx/scene/input/MouseEvent;->MOUSE_EXITED:Ljavafx/event/EventType;

    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/control/Tooltip$TooltipBehavior;->LEAVING_HANDLER:Ljavafx/event/EventHandler;

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/Node;->removeEventHandler(Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V

    .line 936
    move-object v3, v1

    sget-object v4, Ljavafx/scene/input/MouseEvent;->MOUSE_PRESSED:Ljavafx/event/EventType;

    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/control/Tooltip$TooltipBehavior;->KILL_HANDLER:Ljavafx/event/EventHandler;

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/Node;->removeEventHandler(Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V

    .line 937
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/Node;->getProperties()Ljavafx/collections/ObservableMap;

    move-result-object v3

    # getter for: Ljavafx/scene/control/Tooltip;->TOOLTIP_PROP_KEY:Ljava/lang/String;
    invoke-static {}, Ljavafx/scene/control/Tooltip;->access$1200()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavafx/scene/control/Tooltip;

    move-object v2, v3

    .line 938
    .local v2, "t":Ljavafx/scene/control/Tooltip;
    move-object v3, v2

    if-eqz v3, :cond_2

    .line 939
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/Node;->getProperties()Ljavafx/collections/ObservableMap;

    move-result-object v3

    # getter for: Ljavafx/scene/control/Tooltip;->TOOLTIP_PROP_KEY:Ljava/lang/String;
    invoke-static {}, Ljavafx/scene/control/Tooltip;->access$1200()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 940
    move-object v3, v2

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/control/Tooltip$TooltipBehavior;->visibleTooltip:Ljavafx/scene/control/Tooltip;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    move-object v3, v2

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/control/Tooltip$TooltipBehavior;->activatedTooltip:Ljavafx/scene/control/Tooltip;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 941
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/control/Tooltip$TooltipBehavior;->KILL_HANDLER:Ljavafx/event/EventHandler;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljavafx/event/EventHandler;->handle(Ljavafx/event/Event;)V

    .line 944
    :cond_2
    goto :goto_0
.end method
