.class public Lcom/sun/javafx/scene/control/skin/VirtualFlow;
.super Ljavafx/scene/layout/Region;
.source "VirtualFlow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;,
        Lcom/sun/javafx/scene/control/skin/VirtualFlow$ClippedContainer;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljavafx/scene/control/IndexedCell;",
        ">",
        "Ljavafx/scene/layout/Region;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final GOLDEN_RATIO_MULTIPLIER:D = 0.618033987

.field private static final MIN_SCROLLING_LINES_PER_PAGE:I = 0x8

.field private static final NEW_CELL:Ljava/lang/String; = "newcell"


# instance fields
.field accumCell:Ljavafx/scene/control/IndexedCell;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field accumCellParent:Ljavafx/scene/Group;

.field private allowHiDPI:Z

.field private cellCount:I

.field final cells:Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList",
            "<TT;>;"
        }
    .end annotation
.end field

.field clipView:Lcom/sun/javafx/scene/control/skin/VirtualFlow$ClippedContainer;

.field corner:Ljavafx/scene/layout/StackPane;

.field private createCell:Ljavafx/util/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/util/Callback",
            "<",
            "Lcom/sun/javafx/scene/control/skin/VirtualFlow;",
            "TT;>;"
        }
    .end annotation
.end field

.field private final dirtyCells:Ljava/util/BitSet;

.field private fixedCellSize:D

.field private fixedCellSizeEnabled:Z

.field private hbar:Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;

.field private isPanning:Z

.field lastCellBreadth:D

.field lastCellCount:I

.field lastCellLength:D

.field lastHeight:D

.field lastPosition:D

.field lastVertical:Z

.field lastWidth:D

.field private lastX:D

.field private lastY:D

.field private maxPrefBreadth:D

.field private mouseDown:Z

.field private needBreadthBar:Z

.field private needLengthBar:Z

.field private needsCellsLayout:Z

.field private needsRebuildCells:Z

.field private needsReconfigureCells:Z

.field private needsRecreateCells:Z

.field private pannable:Z

.field final pile:Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList",
            "<TT;>;"
        }
    .end annotation
.end field

.field private position:D

.field private final privateCells:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field

.field sbTouchKF1:Ljavafx/animation/KeyFrame;

.field sbTouchKF2:Ljavafx/animation/KeyFrame;

.field sbTouchTimeline:Ljavafx/animation/Timeline;

.field final sheet:Ljavafx/scene/Group;

.field final sheetChildren:Ljavafx/collections/ObservableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/collections/ObservableList",
            "<",
            "Ljavafx/scene/Node;",
            ">;"
        }
    .end annotation
.end field

.field private sizeChanged:Z

.field private tempVisibility:Z

.field private touchDetected:Z

.field private vbar:Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;

.field private vertical:Ljavafx/beans/property/BooleanProperty;

.field private viewportBreadth:D

.field private viewportLength:D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 68
    const-class v0, Lcom/sun/javafx/scene/control/skin/VirtualFlow;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 15

    .prologue
    .line 476
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/VirtualFlow;, "Lcom/sun/javafx/scene/control/skin/VirtualFlow<TT;>;"
    move-object v7, v1

    invoke-direct {v7}, Ljavafx/scene/layout/Region;-><init>()V

    .line 70
    move-object v7, v1

    const-string v8, "prism.allowhidpi"

    const-string v9, "false"

    invoke-static {v8, v9}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    iput-boolean v8, v7, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->allowHiDPI:Z

    .line 83
    move-object v7, v1

    const/4 v8, 0x0

    iput-boolean v8, v7, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->touchDetected:Z

    .line 84
    move-object v7, v1

    const/4 v8, 0x0

    iput-boolean v8, v7, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->mouseDown:Z

    .line 190
    move-object v7, v1

    const/4 v8, 0x1

    iput-boolean v8, v7, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->pannable:Z

    .line 273
    move-object v7, v1

    const-wide/16 v8, 0x0

    iput-wide v8, v7, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->fixedCellSize:D

    .line 274
    move-object v7, v1

    const/4 v8, 0x0

    iput-boolean v8, v7, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->fixedCellSizeEnabled:Z

    .line 351
    move-object v7, v1

    const-wide/high16 v8, -0x4010000000000000L    # -1.0

    iput-wide v8, v7, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->lastWidth:D

    .line 357
    move-object v7, v1

    const-wide/high16 v8, -0x4010000000000000L    # -1.0

    iput-wide v8, v7, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->lastHeight:D

    .line 364
    move-object v7, v1

    const/4 v8, 0x0

    iput v8, v7, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->lastCellCount:I

    .line 385
    move-object v7, v1

    const-wide/high16 v8, -0x4010000000000000L    # -1.0

    iput-wide v8, v7, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->lastCellBreadth:D

    .line 390
    move-object v7, v1

    const-wide/high16 v8, -0x4010000000000000L    # -1.0

    iput-wide v8, v7, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->lastCellLength:D

    .line 401
    move-object v7, v1

    new-instance v8, Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    invoke-direct {v9}, Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;-><init>()V

    iput-object v8, v7, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->cells:Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;

    .line 413
    move-object v7, v1

    new-instance v8, Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    invoke-direct {v9}, Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;-><init>()V

    iput-object v8, v7, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->pile:Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;

    .line 441
    move-object v7, v1

    new-instance v8, Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    move-object v10, v1

    invoke-direct {v9, v10}, Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;-><init>(Lcom/sun/javafx/scene/control/skin/VirtualFlow;)V

    iput-object v8, v7, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->hbar:Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;

    .line 450
    move-object v7, v1

    new-instance v8, Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    move-object v10, v1

    invoke-direct {v9, v10}, Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;-><init>(Lcom/sun/javafx/scene/control/skin/VirtualFlow;)V

    iput-object v8, v7, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->vbar:Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;

    .line 474
    move-object v7, v1

    const/4 v8, 0x0

    iput-boolean v8, v7, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->isPanning:Z

    .line 1864
    move-object v7, v1

    new-instance v8, Ljava/util/ArrayList;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, v7, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->privateCells:Ljava/util/List;

    .line 2436
    move-object v7, v1

    const/4 v8, 0x0

    iput-boolean v8, v7, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->needsReconfigureCells:Z

    .line 2437
    move-object v7, v1

    const/4 v8, 0x0

    iput-boolean v8, v7, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->needsRecreateCells:Z

    .line 2438
    move-object v7, v1

    const/4 v8, 0x0

    iput-boolean v8, v7, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->needsRebuildCells:Z

    .line 2439
    move-object v7, v1

    const/4 v8, 0x0

    iput-boolean v8, v7, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->needsCellsLayout:Z

    .line 2440
    move-object v7, v1

    const/4 v8, 0x0

    iput-boolean v8, v7, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->sizeChanged:Z

    .line 2441
    move-object v7, v1

    new-instance v8, Ljava/util/BitSet;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    invoke-direct {v9}, Ljava/util/BitSet;-><init>()V

    iput-object v8, v7, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->dirtyCells:Ljava/util/BitSet;

    .line 2862
    move-object v7, v1

    const/4 v8, 0x0

    iput-boolean v8, v7, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->tempVisibility:Z

    .line 477
    move-object v7, v1

    invoke-virtual {v7}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v7

    const-string v8, "virtual-flow"

    invoke-interface {v7, v8}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v7

    .line 478
    move-object v7, v1

    const-string v8, "virtual-flow"

    invoke-virtual {v7, v8}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->setId(Ljava/lang/String;)V

    .line 482
    move-object v7, v1

    new-instance v8, Ljavafx/scene/Group;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    invoke-direct {v9}, Ljavafx/scene/Group;-><init>()V

    iput-object v8, v7, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->sheet:Ljavafx/scene/Group;

    .line 483
    move-object v7, v1

    iget-object v7, v7, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->sheet:Ljavafx/scene/Group;

    invoke-virtual {v7}, Ljavafx/scene/Group;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v7

    const-string v8, "sheet"

    invoke-interface {v7, v8}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v7

    .line 484
    move-object v7, v1

    iget-object v7, v7, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->sheet:Ljavafx/scene/Group;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Ljavafx/scene/Group;->setAutoSizeChildren(Z)V

    .line 486
    move-object v7, v1

    move-object v8, v1

    iget-object v8, v8, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->sheet:Ljavafx/scene/Group;

    invoke-virtual {v8}, Ljavafx/scene/Group;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v8

    iput-object v8, v7, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->sheetChildren:Ljavafx/collections/ObservableList;

    .line 489
    move-object v7, v1

    new-instance v8, Lcom/sun/javafx/scene/control/skin/VirtualFlow$ClippedContainer;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    move-object v10, v1

    invoke-direct {v9, v10}, Lcom/sun/javafx/scene/control/skin/VirtualFlow$ClippedContainer;-><init>(Lcom/sun/javafx/scene/control/skin/VirtualFlow;)V

    iput-object v8, v7, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->clipView:Lcom/sun/javafx/scene/control/skin/VirtualFlow$ClippedContainer;

    .line 490
    move-object v7, v1

    iget-object v7, v7, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->clipView:Lcom/sun/javafx/scene/control/skin/VirtualFlow$ClippedContainer;

    move-object v8, v1

    iget-object v8, v8, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->sheet:Ljavafx/scene/Group;

    invoke-virtual {v7, v8}, Lcom/sun/javafx/scene/control/skin/VirtualFlow$ClippedContainer;->setNode(Ljavafx/scene/Node;)V

    .line 491
    move-object v7, v1

    invoke-virtual {v7}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v7

    move-object v8, v1

    iget-object v8, v8, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->clipView:Lcom/sun/javafx/scene/control/skin/VirtualFlow$ClippedContainer;

    invoke-interface {v7, v8}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v7

    .line 494
    move-object v7, v1

    new-instance v8, Ljavafx/scene/Group;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    invoke-direct {v9}, Ljavafx/scene/Group;-><init>()V

    iput-object v8, v7, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->accumCellParent:Ljavafx/scene/Group;

    .line 495
    move-object v7, v1

    iget-object v7, v7, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->accumCellParent:Ljavafx/scene/Group;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Ljavafx/scene/Group;->setVisible(Z)V

    .line 496
    move-object v7, v1

    invoke-virtual {v7}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v7

    move-object v8, v1

    iget-object v8, v8, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->accumCellParent:Ljavafx/scene/Group;

    invoke-interface {v7, v8}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v7

    .line 505
    invoke-static {}, Lcom/sun/javafx/scene/control/skin/VirtualFlow$$Lambda$1;->lambdaFactory$()Ljavafx/event/EventDispatcher;

    move-result-object v7

    move-object v2, v7

    .line 507
    .local v2, "blockEventDispatcher":Ljavafx/event/EventDispatcher;
    move-object v7, v1

    iget-object v7, v7, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->hbar:Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;

    invoke-virtual {v7}, Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;->getEventDispatcher()Ljavafx/event/EventDispatcher;

    move-result-object v7

    move-object v3, v7

    .line 508
    .local v3, "oldHsbEventDispatcher":Ljavafx/event/EventDispatcher;
    move-object v7, v1

    iget-object v7, v7, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->hbar:Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;

    move-object v8, v2

    move-object v9, v3

    invoke-static {v8, v9}, Lcom/sun/javafx/scene/control/skin/VirtualFlow$$Lambda$2;->lambdaFactory$(Ljavafx/event/EventDispatcher;Ljavafx/event/EventDispatcher;)Ljavafx/event/EventDispatcher;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;->setEventDispatcher(Ljavafx/event/EventDispatcher;)V

    .line 518
    move-object v7, v1

    iget-object v7, v7, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->vbar:Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;

    invoke-virtual {v7}, Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;->getEventDispatcher()Ljavafx/event/EventDispatcher;

    move-result-object v7

    move-object v4, v7

    .line 519
    .local v4, "oldVsbEventDispatcher":Ljavafx/event/EventDispatcher;
    move-object v7, v1

    iget-object v7, v7, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->vbar:Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;

    move-object v8, v2

    move-object v9, v4

    invoke-static {v8, v9}, Lcom/sun/javafx/scene/control/skin/VirtualFlow$$Lambda$3;->lambdaFactory$(Ljavafx/event/EventDispatcher;Ljavafx/event/EventDispatcher;)Ljavafx/event/EventDispatcher;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;->setEventDispatcher(Ljavafx/event/EventDispatcher;)V

    .line 533
    move-object v7, v1

    new-instance v8, Lcom/sun/javafx/scene/control/skin/VirtualFlow$2;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    move-object v10, v1

    invoke-direct {v9, v10}, Lcom/sun/javafx/scene/control/skin/VirtualFlow$2;-><init>(Lcom/sun/javafx/scene/control/skin/VirtualFlow;)V

    invoke-virtual {v7, v8}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->setOnScroll(Ljavafx/event/EventHandler;)V

    .line 616
    move-object v7, v1

    sget-object v8, Ljavafx/scene/input/MouseEvent;->MOUSE_PRESSED:Ljavafx/event/EventType;

    new-instance v9, Lcom/sun/javafx/scene/control/skin/VirtualFlow$3;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    move-object v11, v1

    invoke-direct {v10, v11}, Lcom/sun/javafx/scene/control/skin/VirtualFlow$3;-><init>(Lcom/sun/javafx/scene/control/skin/VirtualFlow;)V

    invoke-virtual {v7, v8, v9}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->addEventFilter(Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V

    .line 662
    move-object v7, v1

    sget-object v8, Ljavafx/scene/input/MouseEvent;->MOUSE_RELEASED:Ljavafx/event/EventType;

    move-object v9, v1

    invoke-static {v9}, Lcom/sun/javafx/scene/control/skin/VirtualFlow$$Lambda$4;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/VirtualFlow;)Ljavafx/event/EventHandler;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->addEventFilter(Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V

    .line 668
    move-object v7, v1

    sget-object v8, Ljavafx/scene/input/MouseEvent;->MOUSE_DRAGGED:Ljavafx/event/EventType;

    move-object v9, v1

    invoke-static {v9}, Lcom/sun/javafx/scene/control/skin/VirtualFlow$$Lambda$5;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/VirtualFlow;)Ljavafx/event/EventHandler;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->addEventFilter(Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V

    .line 722
    move-object v7, v1

    iget-object v7, v7, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->vbar:Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;

    sget-object v8, Ljavafx/geometry/Orientation;->VERTICAL:Ljavafx/geometry/Orientation;

    invoke-virtual {v7, v8}, Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;->setOrientation(Ljavafx/geometry/Orientation;)V

    .line 723
    move-object v7, v1

    iget-object v7, v7, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->vbar:Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;

    sget-object v8, Ljavafx/scene/input/MouseEvent;->ANY:Ljavafx/event/EventType;

    invoke-static {}, Lcom/sun/javafx/scene/control/skin/VirtualFlow$$Lambda$6;->lambdaFactory$()Ljavafx/event/EventHandler;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;->addEventHandler(Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V

    .line 726
    move-object v7, v1

    invoke-virtual {v7}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v7

    move-object v8, v1

    iget-object v8, v8, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->vbar:Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;

    invoke-interface {v7, v8}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v7

    .line 729
    move-object v7, v1

    iget-object v7, v7, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->hbar:Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;

    sget-object v8, Ljavafx/geometry/Orientation;->HORIZONTAL:Ljavafx/geometry/Orientation;

    invoke-virtual {v7, v8}, Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;->setOrientation(Ljavafx/geometry/Orientation;)V

    .line 730
    move-object v7, v1

    iget-object v7, v7, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->hbar:Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;

    sget-object v8, Ljavafx/scene/input/MouseEvent;->ANY:Ljavafx/event/EventType;

    invoke-static {}, Lcom/sun/javafx/scene/control/skin/VirtualFlow$$Lambda$7;->lambdaFactory$()Ljavafx/event/EventHandler;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;->addEventHandler(Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V

    .line 733
    move-object v7, v1

    invoke-virtual {v7}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v7

    move-object v8, v1

    iget-object v8, v8, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->hbar:Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;

    invoke-interface {v7, v8}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v7

    .line 736
    move-object v7, v1

    new-instance v8, Ljavafx/scene/layout/StackPane;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    invoke-direct {v9}, Ljavafx/scene/layout/StackPane;-><init>()V

    iput-object v8, v7, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->corner:Ljavafx/scene/layout/StackPane;

    .line 737
    move-object v7, v1

    iget-object v7, v7, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->corner:Ljavafx/scene/layout/StackPane;

    invoke-virtual {v7}, Ljavafx/scene/layout/StackPane;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v7

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    const/4 v10, 0x0

    const-string v11, "corner"

    aput-object v11, v9, v10

    invoke-interface {v7, v8}, Ljavafx/collections/ObservableList;->setAll([Ljava/lang/Object;)Z

    move-result v7

    .line 738
    move-object v7, v1

    invoke-virtual {v7}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v7

    move-object v8, v1

    iget-object v8, v8, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->corner:Ljavafx/scene/layout/StackPane;

    invoke-interface {v7, v8}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v7

    .line 744
    move-object v7, v1

    invoke-static {v7}, Lcom/sun/javafx/scene/control/skin/VirtualFlow$$Lambda$8;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/VirtualFlow;)Ljavafx/beans/InvalidationListener;

    move-result-object v7

    move-object v5, v7

    .line 747
    .local v5, "listenerX":Ljavafx/beans/InvalidationListener;
    move-object v7, v1

    invoke-virtual {v7}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->verticalProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v7

    move-object v8, v5

    invoke-virtual {v7, v8}, Ljavafx/beans/property/BooleanProperty;->addListener(Ljavafx/beans/InvalidationListener;)V

    .line 748
    move-object v7, v1

    iget-object v7, v7, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->hbar:Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;

    invoke-virtual {v7}, Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;->valueProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v7

    move-object v8, v5

    invoke-virtual {v7, v8}, Ljavafx/beans/property/DoubleProperty;->addListener(Ljavafx/beans/InvalidationListener;)V

    .line 749
    move-object v7, v1

    iget-object v7, v7, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->hbar:Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;

    invoke-virtual {v7}, Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;->visibleProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v7

    move-object v8, v5

    invoke-virtual {v7, v8}, Ljavafx/beans/property/BooleanProperty;->addListener(Ljavafx/beans/InvalidationListener;)V

    .line 759
    move-object v7, v1

    invoke-static {v7}, Lcom/sun/javafx/scene/control/skin/VirtualFlow$$Lambda$9;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/VirtualFlow;)Ljavafx/beans/value/ChangeListener;

    move-result-object v7

    move-object v6, v7

    .line 762
    .local v6, "listenerY":Ljavafx/beans/value/ChangeListener;, "Ljavafx/beans/value/ChangeListener<Ljava/lang/Number;>;"
    move-object v7, v1

    iget-object v7, v7, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->vbar:Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;

    invoke-virtual {v7}, Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;->valueProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v7

    move-object v8, v6

    invoke-virtual {v7, v8}, Ljavafx/beans/property/DoubleProperty;->addListener(Ljavafx/beans/value/ChangeListener;)V

    .line 764
    move-object v7, v1

    invoke-super {v7}, Ljavafx/scene/layout/Region;->heightProperty()Ljavafx/beans/property/ReadOnlyDoubleProperty;

    move-result-object v7

    move-object v8, v1

    invoke-static {v8}, Lcom/sun/javafx/scene/control/skin/VirtualFlow$$Lambda$10;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/VirtualFlow;)Ljavafx/beans/value/ChangeListener;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljavafx/beans/property/ReadOnlyDoubleProperty;->addListener(Ljavafx/beans/value/ChangeListener;)V

    .line 777
    move-object v7, v1

    move-object v8, v1

    invoke-static {v8}, Lcom/sun/javafx/scene/control/skin/VirtualFlow$$Lambda$11;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/VirtualFlow;)Ljavafx/event/EventHandler;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->setOnTouchPressed(Ljavafx/event/EventHandler;)V

    .line 782
    move-object v7, v1

    move-object v8, v1

    invoke-static {v8}, Lcom/sun/javafx/scene/control/skin/VirtualFlow$$Lambda$12;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/VirtualFlow;)Ljavafx/event/EventHandler;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->setOnTouchReleased(Ljavafx/event/EventHandler;)V

    .line 787
    move-object v7, v1

    new-instance v8, Lcom/sun/javafx/scene/traversal/ParentTraversalEngine;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    move-object v10, v1

    new-instance v11, Lcom/sun/javafx/scene/control/skin/VirtualFlow$4;

    move-object v14, v11

    move-object v11, v14

    move-object v12, v14

    move-object v13, v1

    invoke-direct {v12, v13}, Lcom/sun/javafx/scene/control/skin/VirtualFlow$4;-><init>(Lcom/sun/javafx/scene/control/skin/VirtualFlow;)V

    invoke-direct {v9, v10, v11}, Lcom/sun/javafx/scene/traversal/ParentTraversalEngine;-><init>(Ljavafx/scene/Parent;Lcom/sun/javafx/scene/traversal/Algorithm;)V

    invoke-virtual {v7, v8}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->setImpl_traversalEngine(Lcom/sun/javafx/scene/traversal/ParentTraversalEngine;)V

    .line 880
    return-void
.end method

.method static synthetic access$000(Lcom/sun/javafx/scene/control/skin/VirtualFlow;)Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;
    .locals 2

    .prologue
    .line 68
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/VirtualFlow;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->hbar:Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;

    move-object v0, v1

    .end local v0    # "x0":Lcom/sun/javafx/scene/control/skin/VirtualFlow;
    return-object v0
.end method

.method static synthetic access$100(Lcom/sun/javafx/scene/control/skin/VirtualFlow;)Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;
    .locals 2

    .prologue
    .line 68
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/VirtualFlow;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->vbar:Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;

    move-object v0, v1

    .end local v0    # "x0":Lcom/sun/javafx/scene/control/skin/VirtualFlow;
    return-object v0
.end method

.method static synthetic access$1002(Lcom/sun/javafx/scene/control/skin/VirtualFlow;Z)Z
    .locals 7

    .prologue
    .line 68
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/VirtualFlow;
    move v1, p1

    .local v1, "x1":Z
    move-object v2, v0

    move v3, v1

    move-object v5, v2

    move v6, v3

    move v2, v6

    move-object v3, v5

    move v4, v6

    iput-boolean v4, v3, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->isPanning:Z

    move v0, v2

    .end local v0    # "x0":Lcom/sun/javafx/scene/control/skin/VirtualFlow;
    return v0
.end method

.method static synthetic access$200(Lcom/sun/javafx/scene/control/skin/VirtualFlow;Z)V
    .locals 4

    .prologue
    .line 68
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/VirtualFlow;
    move v1, p1

    .local v1, "x1":Z
    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->setNeedsLayout(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/sun/javafx/scene/control/skin/VirtualFlow;)Z
    .locals 2

    .prologue
    .line 68
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/VirtualFlow;
    move-object v1, v0

    iget-boolean v1, v1, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->touchDetected:Z

    move v0, v1

    .end local v0    # "x0":Lcom/sun/javafx/scene/control/skin/VirtualFlow;
    return v0
.end method

.method static synthetic access$400(Lcom/sun/javafx/scene/control/skin/VirtualFlow;)Z
    .locals 2

    .prologue
    .line 68
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/VirtualFlow;
    move-object v1, v0

    iget-boolean v1, v1, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->mouseDown:Z

    move v0, v1

    .end local v0    # "x0":Lcom/sun/javafx/scene/control/skin/VirtualFlow;
    return v0
.end method

.method static synthetic access$402(Lcom/sun/javafx/scene/control/skin/VirtualFlow;Z)Z
    .locals 7

    .prologue
    .line 68
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/VirtualFlow;
    move v1, p1

    .local v1, "x1":Z
    move-object v2, v0

    move v3, v1

    move-object v5, v2

    move v6, v3

    move v2, v6

    move-object v3, v5

    move v4, v6

    iput-boolean v4, v3, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->mouseDown:Z

    move v0, v2

    .end local v0    # "x0":Lcom/sun/javafx/scene/control/skin/VirtualFlow;
    return v0
.end method

.method static synthetic access$500(Lcom/sun/javafx/scene/control/skin/VirtualFlow;)Z
    .locals 2

    .prologue
    .line 68
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/VirtualFlow;
    move-object v1, v0

    iget-boolean v1, v1, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->fixedCellSizeEnabled:Z

    move v0, v1

    .end local v0    # "x0":Lcom/sun/javafx/scene/control/skin/VirtualFlow;
    return v0
.end method

.method static synthetic access$600(Lcom/sun/javafx/scene/control/skin/VirtualFlow;)D
    .locals 3

    .prologue
    .line 68
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/VirtualFlow;
    move-object v1, v0

    iget-wide v1, v1, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->fixedCellSize:D

    move-wide v0, v1

    .end local v0    # "x0":Lcom/sun/javafx/scene/control/skin/VirtualFlow;
    return-wide v0
.end method

.method static synthetic access$700(Lcom/sun/javafx/scene/control/skin/VirtualFlow;)Z
    .locals 2

    .prologue
    .line 68
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/VirtualFlow;
    move-object v1, v0

    iget-boolean v1, v1, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->needBreadthBar:Z

    move v0, v1

    .end local v0    # "x0":Lcom/sun/javafx/scene/control/skin/VirtualFlow;
    return v0
.end method

.method static synthetic access$802(Lcom/sun/javafx/scene/control/skin/VirtualFlow;D)D
    .locals 13

    .prologue
    .line 68
    move-object v1, p0

    .local v1, "x0":Lcom/sun/javafx/scene/control/skin/VirtualFlow;
    move-wide v2, p1

    .local v2, "x1":D
    move-object v4, v1

    move-wide v5, v2

    move-object v9, v4

    move-wide v10, v5

    move-wide v4, v10

    move-object v6, v9

    move-wide v7, v10

    iput-wide v7, v6, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->lastX:D

    move-wide v1, v4

    .end local v1    # "x0":Lcom/sun/javafx/scene/control/skin/VirtualFlow;
    return-wide v1
.end method

.method static synthetic access$902(Lcom/sun/javafx/scene/control/skin/VirtualFlow;D)D
    .locals 13

    .prologue
    .line 68
    move-object v1, p0

    .local v1, "x0":Lcom/sun/javafx/scene/control/skin/VirtualFlow;
    move-wide v2, p1

    .local v2, "x1":D
    move-object v4, v1

    move-wide v5, v2

    move-object v9, v4

    move-wide v10, v5

    move-wide v4, v10

    move-object v6, v9

    move-wide v7, v10

    iput-wide v7, v6, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->lastY:D

    move-wide v1, v4

    .end local v1    # "x0":Lcom/sun/javafx/scene/control/skin/VirtualFlow;
    return-wide v1
.end method

.method static synthetic access$lambda$0(Ljavafx/event/Event;Ljavafx/event/EventDispatchChain;)Ljavafx/event/Event;
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->lambda$new$84(Ljavafx/event/Event;Ljavafx/event/EventDispatchChain;)Ljavafx/event/Event;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method static synthetic access$lambda$1(Ljavafx/event/EventDispatcher;Ljavafx/event/EventDispatcher;Ljavafx/event/Event;Ljavafx/event/EventDispatchChain;)Ljavafx/event/Event;
    .locals 8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-static {v4, v5, v6, v7}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->lambda$new$85(Ljavafx/event/EventDispatcher;Ljavafx/event/EventDispatcher;Ljavafx/event/Event;Ljavafx/event/EventDispatchChain;)Ljavafx/event/Event;

    move-result-object v4

    move-object v0, v4

    return-object v0
.end method

.method static synthetic access$lambda$10(Lcom/sun/javafx/scene/control/skin/VirtualFlow;Ljavafx/scene/input/TouchEvent;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->lambda$new$94(Ljavafx/scene/input/TouchEvent;)V

    return-void
.end method

.method static synthetic access$lambda$11(Lcom/sun/javafx/scene/control/skin/VirtualFlow;Ljavafx/scene/input/TouchEvent;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->lambda$new$95(Ljavafx/scene/input/TouchEvent;)V

    return-void
.end method

.method static synthetic access$lambda$12(Lcom/sun/javafx/scene/control/skin/VirtualFlow;Ljavafx/beans/Observable;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->lambda$getCell$96(Ljavafx/beans/Observable;)V

    return-void
.end method

.method static synthetic access$lambda$13(Lcom/sun/javafx/scene/control/skin/VirtualFlow;Ljavafx/event/ActionEvent;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->lambda$startSBReleasedAnimation$99(Ljavafx/event/ActionEvent;)V

    return-void
.end method

.method static synthetic access$lambda$14(Lcom/sun/javafx/scene/control/skin/VirtualFlow;Ljavafx/event/ActionEvent;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->lambda$startSBReleasedAnimation$100(Ljavafx/event/ActionEvent;)V

    return-void
.end method

.method static synthetic access$lambda$2(Ljavafx/event/EventDispatcher;Ljavafx/event/EventDispatcher;Ljavafx/event/Event;Ljavafx/event/EventDispatchChain;)Ljavafx/event/Event;
    .locals 8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-static {v4, v5, v6, v7}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->lambda$new$86(Ljavafx/event/EventDispatcher;Ljavafx/event/EventDispatcher;Ljavafx/event/Event;Ljavafx/event/EventDispatchChain;)Ljavafx/event/Event;

    move-result-object v4

    move-object v0, v4

    return-object v0
.end method

.method static synthetic access$lambda$3(Lcom/sun/javafx/scene/control/skin/VirtualFlow;Ljavafx/scene/input/MouseEvent;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->lambda$new$87(Ljavafx/scene/input/MouseEvent;)V

    return-void
.end method

.method static synthetic access$lambda$4(Lcom/sun/javafx/scene/control/skin/VirtualFlow;Ljavafx/scene/input/MouseEvent;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->lambda$new$88(Ljavafx/scene/input/MouseEvent;)V

    return-void
.end method

.method static synthetic access$lambda$5(Ljavafx/scene/input/MouseEvent;)V
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-static {v1}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->lambda$new$89(Ljavafx/scene/input/MouseEvent;)V

    return-void
.end method

.method static synthetic access$lambda$6(Ljavafx/scene/input/MouseEvent;)V
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-static {v1}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->lambda$new$90(Ljavafx/scene/input/MouseEvent;)V

    return-void
.end method

.method static synthetic access$lambda$7(Lcom/sun/javafx/scene/control/skin/VirtualFlow;Ljavafx/beans/Observable;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->lambda$new$91(Ljavafx/beans/Observable;)V

    return-void
.end method

.method static synthetic access$lambda$8(Lcom/sun/javafx/scene/control/skin/VirtualFlow;Ljavafx/beans/value/ObservableValue;Ljava/lang/Number;Ljava/lang/Number;)V
    .locals 8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-direct {v4, v5, v6, v7}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->lambda$new$92(Ljavafx/beans/value/ObservableValue;Ljava/lang/Number;Ljava/lang/Number;)V

    return-void
.end method

.method static synthetic access$lambda$9(Lcom/sun/javafx/scene/control/skin/VirtualFlow;Ljavafx/beans/value/ObservableValue;Ljava/lang/Number;Ljava/lang/Number;)V
    .locals 8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-direct {v4, v5, v6, v7}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->lambda$new$93(Ljavafx/beans/value/ObservableValue;Ljava/lang/Number;Ljava/lang/Number;)V

    return-void
.end method

.method private addToPile(Ljavafx/scene/control/IndexedCell;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 2057
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/VirtualFlow;, "Lcom/sun/javafx/scene/control/skin/VirtualFlow<TT;>;"
    move-object v1, p1

    .local v1, "cell":Ljavafx/scene/control/IndexedCell;, "TT;"
    sget-boolean v2, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    move-object v2, v1

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 2058
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->pile:Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;->addLast(Ljava/lang/Object;)V

    .line 2059
    return-void
.end method

.method private adjustByPixelAmount(D)V
    .locals 39

    .prologue
    .line 2553
    move-object/from16 v2, p0

    .local v2, "this":Lcom/sun/javafx/scene/control/skin/VirtualFlow;, "Lcom/sun/javafx/scene/control/skin/VirtualFlow<TT;>;"
    move-wide/from16 v3, p1

    .local v3, "numPixels":D
    move-wide/from16 v30, v3

    const-wide/16 v32, 0x0

    cmpl-double v30, v30, v32

    if-nez v30, :cond_0

    .line 2621
    :goto_0
    return-void

    .line 2563
    :cond_0
    move-wide/from16 v30, v3

    const-wide/16 v32, 0x0

    cmpl-double v30, v30, v32

    if-lez v30, :cond_1

    const/16 v30, 0x1

    :goto_1
    move/from16 v5, v30

    .line 2564
    .local v5, "forward":Z
    move-object/from16 v30, v2

    invoke-virtual/range {v30 .. v30}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->getCellCount()I

    move-result v30

    move/from16 v6, v30

    .line 2565
    .local v6, "cellCount":I
    move-object/from16 v30, v2

    invoke-virtual/range {v30 .. v30}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->getPosition()D

    move-result-wide v30

    move/from16 v32, v6

    move/from16 v0, v32

    int-to-double v0, v0

    move-wide/from16 v32, v0

    mul-double v30, v30, v32

    move-wide/from16 v7, v30

    .line 2566
    .local v7, "fractionalPosition":D
    move-wide/from16 v30, v7

    move-wide/from16 v0, v30

    double-to-int v0, v0

    move/from16 v30, v0

    move/from16 v9, v30

    .line 2567
    .local v9, "cellIndex":I
    move/from16 v30, v5

    if-eqz v30, :cond_2

    move/from16 v30, v9

    move/from16 v31, v6

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_2

    goto :goto_0

    .line 2563
    .end local v5    # "forward":Z
    .end local v6    # "cellCount":I
    .end local v7    # "fractionalPosition":D
    .end local v9    # "cellIndex":I
    :cond_1
    const/16 v30, 0x0

    goto :goto_1

    .line 2568
    .restart local v5    # "forward":Z
    .restart local v6    # "cellCount":I
    .restart local v7    # "fractionalPosition":D
    .restart local v9    # "cellIndex":I
    :cond_2
    move-object/from16 v30, v2

    move/from16 v31, v9

    invoke-virtual/range {v30 .. v31}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->getCellLength(I)D

    move-result-wide v30

    move-wide/from16 v10, v30

    .line 2569
    .local v10, "cellSize":D
    move-wide/from16 v30, v7

    move/from16 v32, v9

    move/from16 v0, v32

    int-to-double v0, v0

    move-wide/from16 v32, v0

    sub-double v30, v30, v32

    move-wide/from16 v12, v30

    .line 2570
    .local v12, "fraction":D
    move-wide/from16 v30, v10

    move-wide/from16 v32, v12

    mul-double v30, v30, v32

    move-wide/from16 v14, v30

    .line 2573
    .local v14, "pixelOffset":D
    const-wide/high16 v30, 0x3ff0000000000000L    # 1.0

    move/from16 v32, v6

    move/from16 v0, v32

    int-to-double v0, v0

    move-wide/from16 v32, v0

    div-double v30, v30, v32

    move-wide/from16 v16, v30

    .line 2579
    .local v16, "cellPercent":D
    move-object/from16 v30, v2

    move/from16 v31, v9

    invoke-direct/range {v30 .. v31}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->computeOffsetForCell(I)D

    move-result-wide v30

    move-wide/from16 v18, v30

    .line 2580
    .local v18, "start":D
    move-wide/from16 v30, v10

    move-object/from16 v32, v2

    move/from16 v33, v9

    const/16 v34, 0x1

    add-int/lit8 v33, v33, 0x1

    invoke-direct/range {v32 .. v33}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->computeOffsetForCell(I)D

    move-result-wide v32

    add-double v30, v30, v32

    move-wide/from16 v20, v30

    .line 2584
    .local v20, "end":D
    move-wide/from16 v30, v20

    move-wide/from16 v32, v18

    sub-double v30, v30, v32

    move-wide/from16 v22, v30

    .line 2587
    .local v22, "remaining":D
    move/from16 v30, v5

    if-eqz v30, :cond_5

    move-wide/from16 v30, v3

    move-wide/from16 v32, v14

    add-double v30, v30, v32

    move-object/from16 v32, v2

    .line 2588
    invoke-virtual/range {v32 .. v32}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->getViewportLength()D

    move-result-wide v32

    move-object/from16 v34, v2

    invoke-virtual/range {v34 .. v34}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->getPosition()D

    move-result-wide v34

    mul-double v32, v32, v34

    sub-double v30, v30, v32

    move-wide/from16 v32, v18

    sub-double v30, v30, v32

    .line 2589
    :goto_2
    move-wide/from16 v24, v30

    .line 2595
    .local v24, "n":D
    move-wide/from16 v30, v16

    move/from16 v32, v9

    move/from16 v0, v32

    int-to-double v0, v0

    move-wide/from16 v32, v0

    mul-double v30, v30, v32

    move-wide/from16 v26, v30

    .line 2599
    .local v26, "p":D
    :goto_3
    move-wide/from16 v30, v24

    move-wide/from16 v32, v22

    cmpl-double v30, v30, v32

    if-lez v30, :cond_7

    move/from16 v30, v5

    if-eqz v30, :cond_3

    move/from16 v30, v9

    move/from16 v31, v6

    const/16 v32, 0x1

    add-int/lit8 v31, v31, -0x1

    move/from16 v0, v30

    move/from16 v1, v31

    if-lt v0, v1, :cond_4

    :cond_3
    move/from16 v30, v5

    if-nez v30, :cond_7

    move/from16 v30, v9

    if-lez v30, :cond_7

    .line 2600
    :cond_4
    move/from16 v30, v5

    if-eqz v30, :cond_6

    add-int/lit8 v9, v9, 0x1

    .line 2601
    :goto_4
    move-wide/from16 v30, v24

    move-wide/from16 v32, v22

    sub-double v30, v30, v32

    move-wide/from16 v24, v30

    .line 2602
    move-object/from16 v30, v2

    move/from16 v31, v9

    invoke-virtual/range {v30 .. v31}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->getCellLength(I)D

    move-result-wide v30

    move-wide/from16 v10, v30

    .line 2603
    move-object/from16 v30, v2

    move/from16 v31, v9

    invoke-direct/range {v30 .. v31}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->computeOffsetForCell(I)D

    move-result-wide v30

    move-wide/from16 v18, v30

    .line 2604
    move-wide/from16 v30, v10

    move-object/from16 v32, v2

    move/from16 v33, v9

    const/16 v34, 0x1

    add-int/lit8 v33, v33, 0x1

    invoke-direct/range {v32 .. v33}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->computeOffsetForCell(I)D

    move-result-wide v32

    add-double v30, v30, v32

    move-wide/from16 v20, v30

    .line 2605
    move-wide/from16 v30, v20

    move-wide/from16 v32, v18

    sub-double v30, v30, v32

    move-wide/from16 v22, v30

    .line 2606
    move-wide/from16 v30, v16

    move/from16 v32, v9

    move/from16 v0, v32

    int-to-double v0, v0

    move-wide/from16 v32, v0

    mul-double v30, v30, v32

    move-wide/from16 v26, v30

    goto :goto_3

    .line 2588
    .end local v24    # "n":D
    .end local v26    # "p":D
    :cond_5
    move-wide/from16 v30, v3

    move-wide/from16 v0, v30

    neg-double v0, v0

    move-wide/from16 v30, v0

    move-wide/from16 v32, v20

    add-double v30, v30, v32

    move-wide/from16 v32, v14

    move-object/from16 v34, v2

    .line 2589
    invoke-virtual/range {v34 .. v34}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->getViewportLength()D

    move-result-wide v34

    move-object/from16 v36, v2

    invoke-virtual/range {v36 .. v36}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->getPosition()D

    move-result-wide v36

    mul-double v34, v34, v36

    sub-double v32, v32, v34

    sub-double v30, v30, v32

    goto/16 :goto_2

    .line 2600
    .restart local v24    # "n":D
    .restart local v26    # "p":D
    :cond_6
    add-int/lit8 v9, v9, -0x1

    goto :goto_4

    .line 2612
    :cond_7
    move-wide/from16 v30, v24

    move-wide/from16 v32, v22

    cmpl-double v30, v30, v32

    if-lez v30, :cond_9

    .line 2613
    move-object/from16 v30, v2

    move/from16 v31, v5

    if-eqz v31, :cond_8

    const-wide/high16 v31, 0x3ff0000000000000L    # 1.0

    :goto_5
    invoke-virtual/range {v30 .. v32}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->setPosition(D)V

    .line 2621
    :goto_6
    goto/16 :goto_0

    .line 2613
    :cond_8
    const-wide/16 v31, 0x0

    goto :goto_5

    .line 2614
    :cond_9
    move/from16 v30, v5

    if-eqz v30, :cond_a

    .line 2615
    move-wide/from16 v30, v16

    move-wide/from16 v32, v20

    move-wide/from16 v34, v18

    sub-double v32, v32, v34

    invoke-static/range {v32 .. v33}, Ljava/lang/Math;->abs(D)D

    move-result-wide v32

    div-double v30, v30, v32

    move-wide/from16 v28, v30

    .line 2616
    .local v28, "rate":D
    move-object/from16 v30, v2

    move-wide/from16 v31, v26

    move-wide/from16 v33, v28

    move-wide/from16 v35, v24

    mul-double v33, v33, v35

    add-double v31, v31, v33

    invoke-virtual/range {v30 .. v32}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->setPosition(D)V

    .line 2617
    goto :goto_6

    .line 2618
    .end local v28    # "rate":D
    :cond_a
    move-wide/from16 v30, v16

    move-wide/from16 v32, v20

    move-wide/from16 v34, v18

    sub-double v32, v32, v34

    invoke-static/range {v32 .. v33}, Ljava/lang/Math;->abs(D)D

    move-result-wide v32

    div-double v30, v30, v32

    move-wide/from16 v28, v30

    .line 2619
    .restart local v28    # "rate":D
    move-object/from16 v30, v2

    move-wide/from16 v31, v26

    move-wide/from16 v33, v16

    add-double v31, v31, v33

    move-wide/from16 v33, v28

    move-wide/from16 v35, v24

    mul-double v33, v33, v35

    sub-double v31, v31, v33

    invoke-virtual/range {v30 .. v32}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->setPosition(D)V

    goto :goto_6
.end method

.method private adjustPositionToIndex(I)V
    .locals 8

    .prologue
    .line 2537
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/VirtualFlow;, "Lcom/sun/javafx/scene/control/skin/VirtualFlow<TT;>;"
    move v1, p1

    .local v1, "index":I
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->getCellCount()I

    move-result v3

    move v2, v3

    .line 2538
    .local v2, "cellCount":I
    move v3, v2

    if-gtz v3, :cond_0

    .line 2539
    move-object v3, v0

    const-wide/16 v4, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->setPosition(D)V

    .line 2543
    :goto_0
    return-void

    .line 2541
    :cond_0
    move-object v3, v0

    move v4, v1

    int-to-double v4, v4

    move v6, v2

    int-to-double v6, v6

    div-double/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->setPosition(D)V

    goto :goto_0
.end method

.method private cleanPile()V
    .locals 7

    .prologue
    .line 2062
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/VirtualFlow;, "Lcom/sun/javafx/scene/control/skin/VirtualFlow<TT;>;"
    const/4 v5, 0x0

    move v1, v5

    .line 2064
    .local v1, "wasFocusOwner":Z
    const/4 v5, 0x0

    move v2, v5

    .local v2, "i":I
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->pile:Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;

    invoke-virtual {v5}, Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;->size()I

    move-result v5

    move v3, v5

    .local v3, "max":I
    :goto_0
    move v5, v2

    move v6, v3

    if-ge v5, v6, :cond_2

    .line 2065
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->pile:Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;

    move v6, v2

    invoke-virtual {v5, v6}, Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljavafx/scene/control/IndexedCell;

    move-object v4, v5

    .line 2066
    .local v4, "cell":Ljavafx/scene/control/IndexedCell;, "TT;"
    move v5, v1

    if-nez v5, :cond_0

    move-object v5, v0

    move-object v6, v4

    invoke-direct {v5, v6}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->doesCellContainFocus(Ljavafx/scene/control/Cell;)Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    const/4 v5, 0x1

    :goto_1
    move v1, v5

    .line 2067
    move-object v5, v4

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljavafx/scene/control/IndexedCell;->setVisible(Z)V

    .line 2064
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2066
    :cond_1
    const/4 v5, 0x0

    goto :goto_1

    .line 2073
    .end local v4    # "cell":Ljavafx/scene/control/IndexedCell;, "TT;"
    :cond_2
    move v5, v1

    if-eqz v5, :cond_3

    .line 2074
    move-object v5, v0

    invoke-virtual {v5}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->requestFocus()V

    .line 2076
    :cond_3
    return-void
.end method

.method private computeBarVisiblity()Z
    .locals 16

    .prologue
    .line 1421
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/VirtualFlow;, "Lcom/sun/javafx/scene/control/skin/VirtualFlow<TT;>;"
    move-object v12, v1

    iget-object v12, v12, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->cells:Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;

    invoke-virtual {v12}, Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_0

    .line 1423
    move-object v12, v1

    const/4 v13, 0x0

    iput-boolean v13, v12, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->needLengthBar:Z

    .line 1424
    move-object v12, v1

    const/4 v13, 0x0

    iput-boolean v13, v12, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->needBreadthBar:Z

    .line 1425
    const/4 v12, 0x1

    move v1, v12

    .line 1470
    .end local v1    # "this":Lcom/sun/javafx/scene/control/skin/VirtualFlow;, "Lcom/sun/javafx/scene/control/skin/VirtualFlow<TT;>;"
    .local v2, "isVertical":Z
    .local v3, "barVisibilityChanged":Z
    .local v4, "breadthBar":Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;
    .local v5, "lengthBar":Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;
    .local v6, "viewportBreadth":D
    .local v8, "cellsSize":I
    .local v9, "i":I
    :goto_0
    return v1

    .line 1428
    .end local v2    # "isVertical":Z
    .end local v3    # "barVisibilityChanged":Z
    .end local v4    # "breadthBar":Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;
    .end local v5    # "lengthBar":Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;
    .end local v6    # "viewportBreadth":D
    .end local v8    # "cellsSize":I
    .end local v9    # "i":I
    .restart local v1    # "this":Lcom/sun/javafx/scene/control/skin/VirtualFlow;, "Lcom/sun/javafx/scene/control/skin/VirtualFlow<TT;>;"
    :cond_0
    move-object v12, v1

    invoke-virtual {v12}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->isVertical()Z

    move-result v12

    move v2, v12

    .line 1429
    .restart local v2    # "isVertical":Z
    const/4 v12, 0x0

    move v3, v12

    .line 1431
    .restart local v3    # "barVisibilityChanged":Z
    move v12, v2

    if-eqz v12, :cond_5

    move-object v12, v1

    iget-object v12, v12, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->hbar:Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;

    :goto_1
    move-object v4, v12

    .line 1432
    .restart local v4    # "breadthBar":Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;
    move v12, v2

    if-eqz v12, :cond_6

    move-object v12, v1

    iget-object v12, v12, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->vbar:Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;

    :goto_2
    move-object v5, v12

    .line 1434
    .restart local v5    # "lengthBar":Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;
    move-object v12, v1

    invoke-virtual {v12}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->getViewportBreadth()D

    move-result-wide v12

    move-wide v6, v12

    .line 1436
    .restart local v6    # "viewportBreadth":D
    move-object v12, v1

    iget-object v12, v12, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->cells:Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;

    invoke-virtual {v12}, Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;->size()I

    move-result v12

    move v8, v12

    .line 1437
    .restart local v8    # "cellsSize":I
    const/4 v12, 0x0

    move v9, v12

    .restart local v9    # "i":I
    :goto_3
    move v12, v9

    const/4 v13, 0x2

    if-ge v12, v13, :cond_9

    .line 1438
    move-object v12, v1

    invoke-virtual {v12}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->getPosition()D

    move-result-wide v12

    const-wide/16 v14, 0x0

    cmpl-double v12, v12, v14

    if-gtz v12, :cond_2

    move-object v12, v1

    iget v12, v12, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->cellCount:I

    move v13, v8

    if-gt v12, v13, :cond_2

    move-object v12, v1

    iget v12, v12, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->cellCount:I

    move v13, v8

    if-ne v12, v13, :cond_1

    move-object v12, v1

    move-object v13, v1

    iget-object v13, v13, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->cells:Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;

    .line 1440
    invoke-virtual {v13}, Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;->getLast()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljavafx/scene/control/IndexedCell;

    invoke-virtual {v12, v13}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->getCellPosition(Ljavafx/scene/control/IndexedCell;)D

    move-result-wide v12

    move-object v14, v1

    move-object v15, v1

    iget-object v15, v15, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->cells:Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;

    invoke-virtual {v15}, Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;->getLast()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljavafx/scene/control/IndexedCell;

    invoke-virtual {v14, v15}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->getCellLength(Ljavafx/scene/control/IndexedCell;)D

    move-result-wide v14

    add-double/2addr v12, v14

    move-object v14, v1

    invoke-virtual {v14}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->getViewportLength()D

    move-result-wide v14

    cmpl-double v12, v12, v14

    if-gtz v12, :cond_2

    :cond_1
    move-object v12, v1

    iget v12, v12, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->cellCount:I

    move v13, v8

    const/4 v14, 0x1

    add-int/lit8 v13, v13, -0x1

    if-ne v12, v13, :cond_7

    move v12, v3

    if-eqz v12, :cond_7

    move-object v12, v1

    iget-boolean v12, v12, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->needBreadthBar:Z

    if-eqz v12, :cond_7

    :cond_2
    const/4 v12, 0x1

    :goto_4
    move v10, v12

    .line 1443
    .local v10, "lengthBarVisible":Z
    move v12, v10

    move-object v13, v1

    iget-boolean v13, v13, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->needLengthBar:Z

    xor-int/2addr v12, v13

    if-eqz v12, :cond_3

    .line 1444
    move-object v12, v1

    move v13, v10

    iput-boolean v13, v12, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->needLengthBar:Z

    .line 1445
    const/4 v12, 0x1

    move v3, v12

    .line 1449
    :cond_3
    move-object v12, v1

    iget-wide v12, v12, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->maxPrefBreadth:D

    move-wide v14, v6

    cmpl-double v12, v12, v14

    if-lez v12, :cond_8

    const/4 v12, 0x1

    :goto_5
    move v11, v12

    .line 1450
    .local v11, "breadthBarVisible":Z
    move v12, v11

    move-object v13, v1

    iget-boolean v13, v13, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->needBreadthBar:Z

    xor-int/2addr v12, v13

    if-eqz v12, :cond_4

    .line 1451
    move-object v12, v1

    move v13, v11

    iput-boolean v13, v12, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->needBreadthBar:Z

    .line 1452
    const/4 v12, 0x1

    move v3, v12

    .line 1437
    :cond_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 1431
    .end local v4    # "breadthBar":Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;
    .end local v5    # "lengthBar":Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;
    .end local v6    # "viewportBreadth":D
    .end local v8    # "cellsSize":I
    .end local v9    # "i":I
    .end local v10    # "lengthBarVisible":Z
    .end local v11    # "breadthBarVisible":Z
    :cond_5
    move-object v12, v1

    iget-object v12, v12, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->vbar:Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;

    goto/16 :goto_1

    .line 1432
    .restart local v4    # "breadthBar":Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;
    :cond_6
    move-object v12, v1

    iget-object v12, v12, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->hbar:Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;

    goto/16 :goto_2

    .line 1440
    .restart local v5    # "lengthBar":Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;
    .restart local v6    # "viewportBreadth":D
    .restart local v8    # "cellsSize":I
    .restart local v9    # "i":I
    :cond_7
    const/4 v12, 0x0

    goto :goto_4

    .line 1449
    .restart local v10    # "lengthBarVisible":Z
    :cond_8
    const/4 v12, 0x0

    goto :goto_5

    .line 1461
    .end local v10    # "lengthBarVisible":Z
    :cond_9
    sget-boolean v12, Lcom/sun/javafx/scene/control/skin/BehaviorSkinBase;->IS_TOUCH_SUPPORTED:Z

    if-nez v12, :cond_a

    .line 1462
    move-object v12, v1

    invoke-direct {v12}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->updateViewportDimensions()V

    .line 1463
    move-object v12, v4

    move-object v13, v1

    iget-boolean v13, v13, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->needBreadthBar:Z

    invoke-virtual {v12, v13}, Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;->setVisible(Z)V

    .line 1464
    move-object v12, v5

    move-object v13, v1

    iget-boolean v13, v13, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->needLengthBar:Z

    invoke-virtual {v12, v13}, Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;->setVisible(Z)V

    .line 1470
    :goto_6
    move v12, v3

    move v1, v12

    goto/16 :goto_0

    .line 1466
    :cond_a
    move-object v12, v4

    move-object v13, v1

    iget-boolean v13, v13, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->needBreadthBar:Z

    if-eqz v13, :cond_b

    move-object v13, v1

    iget-boolean v13, v13, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->tempVisibility:Z

    if-eqz v13, :cond_b

    const/4 v13, 0x1

    :goto_7
    invoke-virtual {v12, v13}, Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;->setVisible(Z)V

    .line 1467
    move-object v12, v5

    move-object v13, v1

    iget-boolean v13, v13, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->needLengthBar:Z

    if-eqz v13, :cond_c

    move-object v13, v1

    iget-boolean v13, v13, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->tempVisibility:Z

    if-eqz v13, :cond_c

    const/4 v13, 0x1

    :goto_8
    invoke-virtual {v12, v13}, Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;->setVisible(Z)V

    goto :goto_6

    .line 1466
    :cond_b
    const/4 v13, 0x0

    goto :goto_7

    .line 1467
    :cond_c
    const/4 v13, 0x0

    goto :goto_8
.end method

.method private computeCurrentIndex()I
    .locals 6

    .prologue
    .line 2624
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/VirtualFlow;, "Lcom/sun/javafx/scene/control/skin/VirtualFlow<TT;>;"
    move-object v2, v1

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->getPosition()D

    move-result-wide v2

    move-object v4, v1

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->getCellCount()I

    move-result v4

    int-to-double v4, v4

    mul-double/2addr v2, v4

    double-to-int v2, v2

    move v1, v2

    .end local v1    # "this":Lcom/sun/javafx/scene/control/skin/VirtualFlow;, "Lcom/sun/javafx/scene/control/skin/VirtualFlow<TT;>;"
    return v1
.end method

.method private computeOffsetForCell(I)D
    .locals 12

    .prologue
    .line 2635
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/VirtualFlow;, "Lcom/sun/javafx/scene/control/skin/VirtualFlow<TT;>;"
    move v1, p1

    .local v1, "itemIndex":I
    move-object v6, v0

    invoke-virtual {v6}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->getCellCount()I

    move-result v6

    int-to-double v6, v6

    move-wide v2, v6

    .line 2636
    .local v2, "cellCount":D
    const-wide/16 v6, 0x0

    move v8, v1

    int-to-double v8, v8

    move-wide v10, v2

    invoke-static/range {v6 .. v11}, Lcom/sun/javafx/util/Utils;->clamp(DDD)D

    move-result-wide v6

    move-wide v8, v2

    div-double/2addr v6, v8

    move-wide v4, v6

    .line 2637
    .local v4, "p":D
    move-object v6, v0

    invoke-virtual {v6}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->getViewportLength()D

    move-result-wide v6

    move-wide v8, v4

    mul-double/2addr v6, v8

    neg-double v6, v6

    move-wide v0, v6

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/VirtualFlow;, "Lcom/sun/javafx/scene/control/skin/VirtualFlow<TT;>;"
    return-wide v0
.end method

.method private computeViewportOffset(D)D
    .locals 25

    .prologue
    .line 2526
    move-object/from16 v2, p0

    .local v2, "this":Lcom/sun/javafx/scene/control/skin/VirtualFlow;, "Lcom/sun/javafx/scene/control/skin/VirtualFlow<TT;>;"
    move-wide/from16 v3, p1

    .local v3, "position":D
    const-wide/16 v18, 0x0

    move-wide/from16 v20, v3

    const-wide/high16 v22, 0x3ff0000000000000L    # 1.0

    invoke-static/range {v18 .. v23}, Lcom/sun/javafx/util/Utils;->clamp(DDD)D

    move-result-wide v18

    move-wide/from16 v5, v18

    .line 2527
    .local v5, "p":D
    move-wide/from16 v18, v5

    move-object/from16 v20, v2

    invoke-virtual/range {v20 .. v20}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->getCellCount()I

    move-result v20

    move/from16 v0, v20

    int-to-double v0, v0

    move-wide/from16 v20, v0

    mul-double v18, v18, v20

    move-wide/from16 v7, v18

    .line 2528
    .local v7, "fractionalPosition":D
    move-wide/from16 v18, v7

    move-wide/from16 v0, v18

    double-to-int v0, v0

    move/from16 v18, v0

    move/from16 v9, v18

    .line 2529
    .local v9, "cellIndex":I
    move-wide/from16 v18, v7

    move/from16 v20, v9

    move/from16 v0, v20

    int-to-double v0, v0

    move-wide/from16 v20, v0

    sub-double v18, v18, v20

    move-wide/from16 v10, v18

    .line 2530
    .local v10, "fraction":D
    move-object/from16 v18, v2

    move/from16 v19, v9

    invoke-virtual/range {v18 .. v19}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->getCellLength(I)D

    move-result-wide v18

    move-wide/from16 v12, v18

    .line 2531
    .local v12, "cellSize":D
    move-wide/from16 v18, v12

    move-wide/from16 v20, v10

    mul-double v18, v18, v20

    move-wide/from16 v14, v18

    .line 2532
    .local v14, "pixelOffset":D
    move-object/from16 v18, v2

    invoke-virtual/range {v18 .. v18}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->getViewportLength()D

    move-result-wide v18

    move-wide/from16 v20, v5

    mul-double v18, v18, v20

    move-wide/from16 v16, v18

    .line 2533
    .local v16, "viewportOffset":D
    move-wide/from16 v18, v14

    move-wide/from16 v20, v16

    sub-double v18, v18, v20

    move-wide/from16 v2, v18

    .end local v2    # "this":Lcom/sun/javafx/scene/control/skin/VirtualFlow;, "Lcom/sun/javafx/scene/control/skin/VirtualFlow<TT;>;"
    return-wide v2
.end method

.method private cull()V
    .locals 16

    .prologue
    .line 1717
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/VirtualFlow;, "Lcom/sun/javafx/scene/control/skin/VirtualFlow<TT;>;"
    move-object v12, v1

    invoke-virtual {v12}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->getViewportLength()D

    move-result-wide v12

    move-wide v2, v12

    .line 1718
    .local v2, "viewportLength":D
    move-object v12, v1

    iget-object v12, v12, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->cells:Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;

    invoke-virtual {v12}, Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;->size()I

    move-result v12

    const/4 v13, 0x1

    add-int/lit8 v12, v12, -0x1

    move v4, v12

    .local v4, "i":I
    :goto_0
    move v12, v4

    if-ltz v12, :cond_2

    .line 1719
    move-object v12, v1

    iget-object v12, v12, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->cells:Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;

    move v13, v4

    invoke-virtual {v12, v13}, Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljavafx/scene/control/IndexedCell;

    move-object v5, v12

    .line 1720
    .local v5, "cell":Ljavafx/scene/control/IndexedCell;, "TT;"
    move-object v12, v1

    move-object v13, v5

    invoke-virtual {v12, v13}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->getCellLength(Ljavafx/scene/control/IndexedCell;)D

    move-result-wide v12

    move-wide v6, v12

    .line 1721
    .local v6, "cellSize":D
    move-object v12, v1

    move-object v13, v5

    invoke-virtual {v12, v13}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->getCellPosition(Ljavafx/scene/control/IndexedCell;)D

    move-result-wide v12

    move-wide v8, v12

    .line 1722
    .local v8, "cellStart":D
    move-wide v12, v8

    move-wide v14, v6

    add-double/2addr v12, v14

    move-wide v10, v12

    .line 1723
    .local v10, "cellEnd":D
    move-wide v12, v8

    move-wide v14, v2

    cmpl-double v12, v12, v14

    if-gez v12, :cond_0

    move-wide v12, v10

    const-wide/16 v14, 0x0

    cmpg-double v12, v12, v14

    if-gez v12, :cond_1

    .line 1724
    :cond_0
    move-object v12, v1

    move-object v13, v1

    iget-object v13, v13, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->cells:Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;

    move v14, v4

    invoke-virtual {v13, v14}, Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;->remove(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljavafx/scene/control/IndexedCell;

    invoke-direct {v12, v13}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->addToPile(Ljavafx/scene/control/IndexedCell;)V

    .line 1718
    :cond_1
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 1727
    .end local v5    # "cell":Ljavafx/scene/control/IndexedCell;, "TT;"
    .end local v6    # "cellSize":D
    .end local v8    # "cellStart":D
    .end local v10    # "cellEnd":D
    :cond_2
    return-void
.end method

.method private doesCellContainFocus(Ljavafx/scene/control/Cell;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/control/Cell",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 2079
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/VirtualFlow;, "Lcom/sun/javafx/scene/control/skin/VirtualFlow<TT;>;"
    move-object v1, p1

    .local v1, "c":Ljavafx/scene/control/Cell;, "Ljavafx/scene/control/Cell<*>;"
    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/scene/control/Cell;->getScene()Ljavafx/scene/Scene;

    move-result-object v5

    move-object v2, v5

    .line 2080
    .local v2, "scene":Ljavafx/scene/Scene;
    move-object v5, v2

    if-nez v5, :cond_0

    const/4 v5, 0x0

    :goto_0
    move-object v3, v5

    .line 2082
    .local v3, "focusOwner":Ljavafx/scene/Node;
    move-object v5, v3

    if-eqz v5, :cond_3

    .line 2083
    move-object v5, v1

    move-object v6, v3

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2084
    const/4 v5, 0x1

    move v0, v5

    .line 2096
    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/VirtualFlow;, "Lcom/sun/javafx/scene/control/skin/VirtualFlow<TT;>;"
    :goto_1
    return v0

    .line 2080
    .end local v3    # "focusOwner":Ljavafx/scene/Node;
    .restart local v0    # "this":Lcom/sun/javafx/scene/control/skin/VirtualFlow;, "Lcom/sun/javafx/scene/control/skin/VirtualFlow<TT;>;"
    :cond_0
    move-object v5, v2

    invoke-virtual {v5}, Ljavafx/scene/Scene;->getFocusOwner()Ljavafx/scene/Node;

    move-result-object v5

    goto :goto_0

    .line 2087
    .restart local v3    # "focusOwner":Ljavafx/scene/Node;
    :cond_1
    move-object v5, v3

    invoke-virtual {v5}, Ljavafx/scene/Node;->getParent()Ljavafx/scene/Parent;

    move-result-object v5

    move-object v4, v5

    .line 2088
    .local v4, "p":Ljavafx/scene/Parent;
    :goto_2
    move-object v5, v4

    if-eqz v5, :cond_3

    move-object v5, v4

    instance-of v5, v5, Lcom/sun/javafx/scene/control/skin/VirtualFlow;

    if-nez v5, :cond_3

    .line 2089
    move-object v5, v1

    move-object v6, v4

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2090
    const/4 v5, 0x1

    move v0, v5

    goto :goto_1

    .line 2092
    :cond_2
    move-object v5, v4

    invoke-virtual {v5}, Ljavafx/scene/Parent;->getParent()Ljavafx/scene/Parent;

    move-result-object v5

    move-object v4, v5

    goto :goto_2

    .line 2096
    .end local v4    # "p":Ljavafx/scene/Parent;
    :cond_3
    const/4 v5, 0x0

    move v0, v5

    goto :goto_1
.end method

.method private fitCells()V
    .locals 13

    .prologue
    .line 1701
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/VirtualFlow;, "Lcom/sun/javafx/scene/control/skin/VirtualFlow<TT;>;"
    move-object v7, v1

    invoke-virtual {v7}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->getMaxPrefBreadth()D

    move-result-wide v7

    move-object v9, v1

    invoke-virtual {v9}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->getViewportBreadth()D

    move-result-wide v9

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->max(DD)D

    move-result-wide v7

    move-wide v2, v7

    .line 1702
    .local v2, "size":D
    move-object v7, v1

    invoke-virtual {v7}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->isVertical()Z

    move-result v7

    move v4, v7

    .line 1706
    .local v4, "isVertical":Z
    const/4 v7, 0x0

    move v5, v7

    .local v5, "i":I
    :goto_0
    move v7, v5

    move-object v8, v1

    iget-object v8, v8, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->cells:Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;

    invoke-virtual {v8}, Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;->size()I

    move-result v8

    if-ge v7, v8, :cond_1

    .line 1707
    move-object v7, v1

    iget-object v7, v7, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->cells:Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;

    move v8, v5

    invoke-virtual {v7, v8}, Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljavafx/scene/control/Cell;

    move-object v6, v7

    .line 1708
    .local v6, "cell":Ljavafx/scene/control/Cell;, "Ljavafx/scene/control/Cell<*>;"
    move v7, v4

    if-eqz v7, :cond_0

    .line 1709
    move-object v7, v6

    move-wide v8, v2

    move-object v10, v6

    move-wide v11, v2

    invoke-virtual {v10, v11, v12}, Ljavafx/scene/control/Cell;->prefHeight(D)D

    move-result-wide v10

    invoke-virtual {v7, v8, v9, v10, v11}, Ljavafx/scene/control/Cell;->resize(DD)V

    .line 1706
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1711
    :cond_0
    move-object v7, v6

    move-object v8, v6

    move-wide v9, v2

    invoke-virtual {v8, v9, v10}, Ljavafx/scene/control/Cell;->prefWidth(D)D

    move-result-wide v8

    move-wide v10, v2

    invoke-virtual {v7, v8, v9, v10, v11}, Ljavafx/scene/control/Cell;->resize(DD)V

    goto :goto_1

    .line 1714
    .end local v6    # "cell":Ljavafx/scene/control/Cell;, "Ljavafx/scene/control/Cell<*>;"
    :cond_1
    return-void
.end method

.method private getPrefBreadth(D)D
    .locals 15

    .prologue
    .line 2471
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/VirtualFlow;, "Lcom/sun/javafx/scene/control/skin/VirtualFlow<TT;>;"
    move-wide/from16 v2, p1

    .local v2, "oppDimension":D
    move-object v8, v1

    const/16 v9, 0xa

    invoke-virtual {v8, v9}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->getMaxCellWidth(I)D

    move-result-wide v8

    move-wide v4, v8

    .line 2477
    .local v4, "max":D
    move-wide v8, v2

    const-wide/high16 v10, -0x4010000000000000L    # -1.0

    cmpl-double v8, v8, v10

    if-lez v8, :cond_0

    .line 2478
    move-object v8, v1

    invoke-direct {v8}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->getPrefLength()D

    move-result-wide v8

    move-wide v6, v8

    .line 2479
    .local v6, "prefLength":D
    move-wide v8, v4

    move-wide v10, v6

    const-wide v12, 0x3fe3c6ef363f685cL    # 0.618033987

    mul-double/2addr v10, v12

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->max(DD)D

    move-result-wide v8

    move-wide v4, v8

    .line 2482
    .end local v6    # "prefLength":D
    :cond_0
    move-wide v8, v4

    move-wide v1, v8

    .end local v1    # "this":Lcom/sun/javafx/scene/control/skin/VirtualFlow;, "Lcom/sun/javafx/scene/control/skin/VirtualFlow<TT;>;"
    return-wide v1
.end method

.method private getPrefLength()D
    .locals 10

    .prologue
    .line 2486
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/VirtualFlow;, "Lcom/sun/javafx/scene/control/skin/VirtualFlow<TT;>;"
    const-wide/16 v6, 0x0

    move-wide v2, v6

    .line 2487
    .local v2, "sum":D
    const/16 v6, 0xa

    move-object v7, v1

    iget v7, v7, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->cellCount:I

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    move v4, v6

    .line 2488
    .local v4, "rows":I
    const/4 v6, 0x0

    move v5, v6

    .local v5, "i":I
    :goto_0
    move v6, v5

    move v7, v4

    if-ge v6, v7, :cond_0

    .line 2489
    move-wide v6, v2

    move-object v8, v1

    move v9, v5

    invoke-virtual {v8, v9}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->getCellLength(I)D

    move-result-wide v8

    add-double/2addr v6, v8

    move-wide v2, v6

    .line 2488
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 2491
    :cond_0
    move-wide v6, v2

    move-wide v1, v6

    .end local v1    # "this":Lcom/sun/javafx/scene/control/skin/VirtualFlow;, "Lcom/sun/javafx/scene/control/skin/VirtualFlow<TT;>;"
    return-wide v1
.end method

.method private initViewport()V
    .locals 6

    .prologue
    .line 1485
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/VirtualFlow;, "Lcom/sun/javafx/scene/control/skin/VirtualFlow<TT;>;"
    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->isVertical()Z

    move-result v4

    move v1, v4

    .line 1487
    .local v1, "isVertical":Z
    move-object v4, v0

    invoke-direct {v4}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->updateViewportDimensions()V

    .line 1489
    move v4, v1

    if-eqz v4, :cond_0

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->hbar:Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;

    :goto_0
    move-object v2, v4

    .line 1490
    .local v2, "breadthBar":Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;
    move v4, v1

    if-eqz v4, :cond_1

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->vbar:Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;

    :goto_1
    move-object v3, v4

    .line 1494
    .local v3, "lengthBar":Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;
    move-object v4, v2

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;->setVirtual(Z)V

    .line 1495
    move-object v4, v3

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;->setVirtual(Z)V

    .line 1496
    return-void

    .line 1489
    .end local v2    # "breadthBar":Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;
    .end local v3    # "lengthBar":Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->vbar:Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;

    goto :goto_0

    .line 1490
    .restart local v2    # "breadthBar":Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;
    :cond_1
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->hbar:Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;

    goto :goto_1
.end method

.method private synthetic lambda$getCell$96(Ljavafx/beans/Observable;)V
    .locals 6

    .prologue
    .line 1793
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/VirtualFlow;, "Lcom/sun/javafx/scene/control/skin/VirtualFlow<TT;>;"
    move-object v1, p1

    .local v1, "c":Ljavafx/beans/Observable;
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->accumCell:Ljavafx/scene/control/IndexedCell;

    invoke-virtual {v4}, Ljavafx/scene/control/IndexedCell;->getChildrenUnmodifiable()Ljavafx/collections/ObservableList;

    move-result-object v4

    invoke-interface {v4}, Ljavafx/collections/ObservableList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v2, v4

    :goto_0
    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavafx/scene/Node;

    move-object v3, v4

    .line 1794
    .local v3, "n":Ljavafx/scene/Node;
    move-object v4, v3

    sget-object v5, Ljavafx/scene/AccessibleRole;->NODE:Ljavafx/scene/AccessibleRole;

    invoke-virtual {v4, v5}, Ljavafx/scene/Node;->setAccessibleRole(Ljavafx/scene/AccessibleRole;)V

    .line 1795
    goto :goto_0

    .line 1796
    .end local v3    # "n":Ljavafx/scene/Node;
    :cond_0
    return-void
.end method

.method private static synthetic lambda$new$84(Ljavafx/event/Event;Ljavafx/event/EventDispatchChain;)Ljavafx/event/Event;
    .locals 3

    .prologue
    .line 505
    move-object v0, p0

    .local v0, "event":Ljavafx/event/Event;
    move-object v1, p1

    .local v1, "tail":Ljavafx/event/EventDispatchChain;
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "event":Ljavafx/event/Event;
    return-object v0
.end method

.method private static synthetic lambda$new$85(Ljavafx/event/EventDispatcher;Ljavafx/event/EventDispatcher;Ljavafx/event/Event;Ljavafx/event/EventDispatchChain;)Ljavafx/event/Event;
    .locals 7

    .prologue
    .line 509
    move-object v0, p0

    .local v0, "blockEventDispatcher":Ljavafx/event/EventDispatcher;
    move-object v1, p1

    .local v1, "oldHsbEventDispatcher":Ljavafx/event/EventDispatcher;
    move-object v2, p2

    .local v2, "event":Ljavafx/event/Event;
    move-object v3, p3

    .local v3, "tail":Ljavafx/event/EventDispatchChain;
    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/event/Event;->getEventType()Ljavafx/event/EventType;

    move-result-object v4

    sget-object v5, Ljavafx/scene/input/ScrollEvent;->SCROLL:Ljavafx/event/EventType;

    if-ne v4, v5, :cond_0

    move-object v4, v2

    check-cast v4, Ljavafx/scene/input/ScrollEvent;

    .line 510
    invoke-virtual {v4}, Ljavafx/scene/input/ScrollEvent;->isDirect()Z

    move-result v4

    if-nez v4, :cond_0

    .line 511
    move-object v4, v3

    move-object v5, v0

    invoke-interface {v4, v5}, Ljavafx/event/EventDispatchChain;->prepend(Ljavafx/event/EventDispatcher;)Ljavafx/event/EventDispatchChain;

    move-result-object v4

    move-object v3, v4

    .line 512
    move-object v4, v3

    move-object v5, v1

    invoke-interface {v4, v5}, Ljavafx/event/EventDispatchChain;->prepend(Ljavafx/event/EventDispatcher;)Ljavafx/event/EventDispatchChain;

    move-result-object v4

    move-object v3, v4

    .line 513
    move-object v4, v3

    move-object v5, v2

    invoke-interface {v4, v5}, Ljavafx/event/EventDispatchChain;->dispatchEvent(Ljavafx/event/Event;)Ljavafx/event/Event;

    move-result-object v4

    move-object v0, v4

    .line 515
    .end local v0    # "blockEventDispatcher":Ljavafx/event/EventDispatcher;
    :goto_0
    return-object v0

    .restart local v0    # "blockEventDispatcher":Ljavafx/event/EventDispatcher;
    :cond_0
    move-object v4, v1

    move-object v5, v2

    move-object v6, v3

    invoke-interface {v4, v5, v6}, Ljavafx/event/EventDispatcher;->dispatchEvent(Ljavafx/event/Event;Ljavafx/event/EventDispatchChain;)Ljavafx/event/Event;

    move-result-object v4

    move-object v0, v4

    goto :goto_0
.end method

.method private static synthetic lambda$new$86(Ljavafx/event/EventDispatcher;Ljavafx/event/EventDispatcher;Ljavafx/event/Event;Ljavafx/event/EventDispatchChain;)Ljavafx/event/Event;
    .locals 7

    .prologue
    .line 520
    move-object v0, p0

    .local v0, "blockEventDispatcher":Ljavafx/event/EventDispatcher;
    move-object v1, p1

    .local v1, "oldVsbEventDispatcher":Ljavafx/event/EventDispatcher;
    move-object v2, p2

    .local v2, "event":Ljavafx/event/Event;
    move-object v3, p3

    .local v3, "tail":Ljavafx/event/EventDispatchChain;
    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/event/Event;->getEventType()Ljavafx/event/EventType;

    move-result-object v4

    sget-object v5, Ljavafx/scene/input/ScrollEvent;->SCROLL:Ljavafx/event/EventType;

    if-ne v4, v5, :cond_0

    move-object v4, v2

    check-cast v4, Ljavafx/scene/input/ScrollEvent;

    .line 521
    invoke-virtual {v4}, Ljavafx/scene/input/ScrollEvent;->isDirect()Z

    move-result v4

    if-nez v4, :cond_0

    .line 522
    move-object v4, v3

    move-object v5, v0

    invoke-interface {v4, v5}, Ljavafx/event/EventDispatchChain;->prepend(Ljavafx/event/EventDispatcher;)Ljavafx/event/EventDispatchChain;

    move-result-object v4

    move-object v3, v4

    .line 523
    move-object v4, v3

    move-object v5, v1

    invoke-interface {v4, v5}, Ljavafx/event/EventDispatchChain;->prepend(Ljavafx/event/EventDispatcher;)Ljavafx/event/EventDispatchChain;

    move-result-object v4

    move-object v3, v4

    .line 524
    move-object v4, v3

    move-object v5, v2

    invoke-interface {v4, v5}, Ljavafx/event/EventDispatchChain;->dispatchEvent(Ljavafx/event/Event;)Ljavafx/event/Event;

    move-result-object v4

    move-object v0, v4

    .line 526
    .end local v0    # "blockEventDispatcher":Ljavafx/event/EventDispatcher;
    :goto_0
    return-object v0

    .restart local v0    # "blockEventDispatcher":Ljavafx/event/EventDispatcher;
    :cond_0
    move-object v4, v1

    move-object v5, v2

    move-object v6, v3

    invoke-interface {v4, v5, v6}, Ljavafx/event/EventDispatcher;->dispatchEvent(Ljavafx/event/Event;Ljavafx/event/EventDispatchChain;)Ljavafx/event/Event;

    move-result-object v4

    move-object v0, v4

    goto :goto_0
.end method

.method private synthetic lambda$new$87(Ljavafx/scene/input/MouseEvent;)V
    .locals 4

    .prologue
    .line 663
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/VirtualFlow;, "Lcom/sun/javafx/scene/control/skin/VirtualFlow<TT;>;"
    move-object v1, p1

    .local v1, "e":Ljavafx/scene/input/MouseEvent;
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->mouseDown:Z

    .line 664
    sget-boolean v2, Lcom/sun/javafx/scene/control/skin/BehaviorSkinBase;->IS_TOUCH_SUPPORTED:Z

    if-eqz v2, :cond_0

    .line 665
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->startSBReleasedAnimation()V

    .line 667
    :cond_0
    return-void
.end method

.method private synthetic lambda$new$88(Ljavafx/scene/input/MouseEvent;)V
    .locals 22

    .prologue
    .line 669
    move-object/from16 v3, p0

    .local v3, "this":Lcom/sun/javafx/scene/control/skin/VirtualFlow;, "Lcom/sun/javafx/scene/control/skin/VirtualFlow<TT;>;"
    move-object/from16 v4, p1

    .local v4, "e":Ljavafx/scene/input/MouseEvent;
    sget-boolean v18, Lcom/sun/javafx/scene/control/skin/BehaviorSkinBase;->IS_TOUCH_SUPPORTED:Z

    if-eqz v18, :cond_0

    .line 670
    move-object/from16 v18, v3

    invoke-virtual/range {v18 .. v18}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->scrollBarOn()V

    .line 672
    :cond_0
    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-boolean v0, v0, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->isPanning:Z

    move/from16 v18, v0

    if-eqz v18, :cond_1

    move-object/from16 v18, v3

    invoke-virtual/range {v18 .. v18}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->isPannable()Z

    move-result v18

    if-nez v18, :cond_2

    .line 712
    :cond_1
    :goto_0
    return-void

    .line 677
    :cond_2
    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->lastX:D

    move-wide/from16 v18, v0

    move-object/from16 v20, v4

    invoke-virtual/range {v20 .. v20}, Ljavafx/scene/input/MouseEvent;->getX()D

    move-result-wide v20

    sub-double v18, v18, v20

    move-wide/from16 v5, v18

    .line 678
    .local v5, "xDelta":D
    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->lastY:D

    move-wide/from16 v18, v0

    move-object/from16 v20, v4

    invoke-virtual/range {v20 .. v20}, Ljavafx/scene/input/MouseEvent;->getY()D

    move-result-wide v20

    sub-double v18, v18, v20

    move-wide/from16 v7, v18

    .line 683
    .local v7, "yDelta":D
    move-object/from16 v18, v3

    invoke-virtual/range {v18 .. v18}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->isVertical()Z

    move-result v18

    if-eqz v18, :cond_5

    move-wide/from16 v18, v7

    :goto_1
    move-wide/from16 v9, v18

    .line 684
    .local v9, "virtualDelta":D
    move-object/from16 v18, v3

    move-wide/from16 v19, v9

    invoke-virtual/range {v18 .. v20}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->adjustPixels(D)D

    move-result-wide v18

    move-wide/from16 v11, v18

    .line 685
    .local v11, "actual":D
    move-wide/from16 v18, v11

    const-wide/16 v20, 0x0

    cmpl-double v18, v18, v20

    if-eqz v18, :cond_3

    .line 691
    move-object/from16 v18, v3

    invoke-virtual/range {v18 .. v18}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->isVertical()Z

    move-result v18

    if-eqz v18, :cond_6

    move-object/from16 v18, v3

    move-object/from16 v19, v4

    invoke-virtual/range {v19 .. v19}, Ljavafx/scene/input/MouseEvent;->getY()D

    move-result-wide v19

    move-wide/from16 v0, v19

    move-object/from16 v2, v18

    iput-wide v0, v2, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->lastY:D

    .line 696
    :cond_3
    :goto_2
    move-object/from16 v18, v3

    invoke-virtual/range {v18 .. v18}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->isVertical()Z

    move-result v18

    if-eqz v18, :cond_7

    move-wide/from16 v18, v5

    :goto_3
    move-wide/from16 v13, v18

    .line 697
    .local v13, "nonVirtualDelta":D
    move-object/from16 v18, v3

    invoke-virtual/range {v18 .. v18}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->isVertical()Z

    move-result v18

    if-eqz v18, :cond_8

    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->hbar:Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;

    move-object/from16 v18, v0

    :goto_4
    move-object/from16 v15, v18

    .line 698
    .local v15, "nonVirtualBar":Ljavafx/scene/control/ScrollBar;
    move-object/from16 v18, v15

    invoke-virtual/range {v18 .. v18}, Ljavafx/scene/control/ScrollBar;->isVisible()Z

    move-result v18

    if-eqz v18, :cond_4

    .line 699
    move-object/from16 v18, v15

    invoke-virtual/range {v18 .. v18}, Ljavafx/scene/control/ScrollBar;->getValue()D

    move-result-wide v18

    move-wide/from16 v20, v13

    add-double v18, v18, v20

    move-wide/from16 v16, v18

    .line 700
    .local v16, "newValue":D
    move-wide/from16 v18, v16

    move-object/from16 v20, v15

    invoke-virtual/range {v20 .. v20}, Ljavafx/scene/control/ScrollBar;->getMin()D

    move-result-wide v20

    cmpg-double v18, v18, v20

    if-gez v18, :cond_9

    .line 701
    move-object/from16 v18, v15

    move-object/from16 v19, v15

    invoke-virtual/range {v19 .. v19}, Ljavafx/scene/control/ScrollBar;->getMin()D

    move-result-wide v19

    invoke-virtual/range {v18 .. v20}, Ljavafx/scene/control/ScrollBar;->setValue(D)V

    .line 712
    .end local v16    # "newValue":D
    :cond_4
    :goto_5
    goto/16 :goto_0

    .line 683
    .end local v9    # "virtualDelta":D
    .end local v11    # "actual":D
    .end local v13    # "nonVirtualDelta":D
    .end local v15    # "nonVirtualBar":Ljavafx/scene/control/ScrollBar;
    :cond_5
    move-wide/from16 v18, v5

    goto :goto_1

    .line 692
    .restart local v9    # "virtualDelta":D
    .restart local v11    # "actual":D
    :cond_6
    move-object/from16 v18, v3

    move-object/from16 v19, v4

    invoke-virtual/range {v19 .. v19}, Ljavafx/scene/input/MouseEvent;->getX()D

    move-result-wide v19

    move-wide/from16 v0, v19

    move-object/from16 v2, v18

    iput-wide v0, v2, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->lastX:D

    goto :goto_2

    .line 696
    :cond_7
    move-wide/from16 v18, v7

    goto :goto_3

    .line 697
    .restart local v13    # "nonVirtualDelta":D
    :cond_8
    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->vbar:Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;

    move-object/from16 v18, v0

    goto :goto_4

    .line 702
    .restart local v15    # "nonVirtualBar":Ljavafx/scene/control/ScrollBar;
    .restart local v16    # "newValue":D
    :cond_9
    move-wide/from16 v18, v16

    move-object/from16 v20, v15

    invoke-virtual/range {v20 .. v20}, Ljavafx/scene/control/ScrollBar;->getMax()D

    move-result-wide v20

    cmpl-double v18, v18, v20

    if-lez v18, :cond_a

    .line 703
    move-object/from16 v18, v15

    move-object/from16 v19, v15

    invoke-virtual/range {v19 .. v19}, Ljavafx/scene/control/ScrollBar;->getMax()D

    move-result-wide v19

    invoke-virtual/range {v18 .. v20}, Ljavafx/scene/control/ScrollBar;->setValue(D)V

    goto :goto_5

    .line 705
    :cond_a
    move-object/from16 v18, v15

    move-wide/from16 v19, v16

    invoke-virtual/range {v18 .. v20}, Ljavafx/scene/control/ScrollBar;->setValue(D)V

    .line 708
    move-object/from16 v18, v3

    invoke-virtual/range {v18 .. v18}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->isVertical()Z

    move-result v18

    if-eqz v18, :cond_b

    move-object/from16 v18, v3

    move-object/from16 v19, v4

    invoke-virtual/range {v19 .. v19}, Ljavafx/scene/input/MouseEvent;->getX()D

    move-result-wide v19

    move-wide/from16 v0, v19

    move-object/from16 v2, v18

    iput-wide v0, v2, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->lastX:D

    goto :goto_5

    .line 709
    :cond_b
    move-object/from16 v18, v3

    move-object/from16 v19, v4

    invoke-virtual/range {v19 .. v19}, Ljavafx/scene/input/MouseEvent;->getY()D

    move-result-wide v19

    move-wide/from16 v0, v19

    move-object/from16 v2, v18

    iput-wide v0, v2, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->lastY:D

    goto :goto_5
.end method

.method private static synthetic lambda$new$89(Ljavafx/scene/input/MouseEvent;)V
    .locals 2

    .prologue
    .line 724
    move-object v0, p0

    .local v0, "event":Ljavafx/scene/input/MouseEvent;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/input/MouseEvent;->consume()V

    .line 725
    return-void
.end method

.method private static synthetic lambda$new$90(Ljavafx/scene/input/MouseEvent;)V
    .locals 2

    .prologue
    .line 731
    move-object v0, p0

    .local v0, "event":Ljavafx/scene/input/MouseEvent;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/input/MouseEvent;->consume()V

    .line 732
    return-void
.end method

.method private synthetic lambda$new$91(Ljavafx/beans/Observable;)V
    .locals 3

    .prologue
    .line 745
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/VirtualFlow;, "Lcom/sun/javafx/scene/control/skin/VirtualFlow<TT;>;"
    move-object v1, p1

    .local v1, "valueModel":Ljavafx/beans/Observable;
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->updateHbar()V

    .line 746
    return-void
.end method

.method private synthetic lambda$new$92(Ljavafx/beans/value/ObservableValue;Ljava/lang/Number;Ljava/lang/Number;)V
    .locals 8

    .prologue
    .line 760
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/VirtualFlow;, "Lcom/sun/javafx/scene/control/skin/VirtualFlow<TT;>;"
    move-object v2, p1

    .local v2, "ov":Ljavafx/beans/value/ObservableValue;
    move-object v3, p2

    .local v3, "t":Ljava/lang/Number;
    move-object v4, p3

    .local v4, "t1":Ljava/lang/Number;
    move-object v5, v1

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->clipView:Lcom/sun/javafx/scene/control/skin/VirtualFlow$ClippedContainer;

    move-object v6, v1

    invoke-virtual {v6}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->isVertical()Z

    move-result v6

    if-eqz v6, :cond_0

    const-wide/16 v6, 0x0

    :goto_0
    invoke-virtual {v5, v6, v7}, Lcom/sun/javafx/scene/control/skin/VirtualFlow$ClippedContainer;->setClipY(D)V

    .line 761
    return-void

    .line 760
    :cond_0
    move-object v6, v1

    iget-object v6, v6, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->vbar:Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;

    invoke-virtual {v6}, Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;->getValue()D

    move-result-wide v6

    goto :goto_0
.end method

.method private synthetic lambda$new$93(Ljavafx/beans/value/ObservableValue;Ljava/lang/Number;Ljava/lang/Number;)V
    .locals 8

    .prologue
    .line 767
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/VirtualFlow;, "Lcom/sun/javafx/scene/control/skin/VirtualFlow<TT;>;"
    move-object v1, p1

    .local v1, "observable":Ljavafx/beans/value/ObservableValue;
    move-object v2, p2

    .local v2, "oldHeight":Ljava/lang/Number;
    move-object v3, p3

    .local v3, "newHeight":Ljava/lang/Number;
    move-object v4, v2

    invoke-virtual {v4}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmpl-double v4, v4, v6

    if-nez v4, :cond_0

    move-object v4, v3

    invoke-virtual {v4}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmpl-double v4, v4, v6

    if-lez v4, :cond_0

    .line 768
    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->recreateCells()V

    .line 770
    :cond_0
    return-void
.end method

.method private synthetic lambda$new$94(Ljavafx/scene/input/TouchEvent;)V
    .locals 4

    .prologue
    .line 778
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/VirtualFlow;, "Lcom/sun/javafx/scene/control/skin/VirtualFlow<TT;>;"
    move-object v1, p1

    .local v1, "e":Ljavafx/scene/input/TouchEvent;
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->touchDetected:Z

    .line 779
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->scrollBarOn()V

    .line 780
    return-void
.end method

.method private synthetic lambda$new$95(Ljavafx/scene/input/TouchEvent;)V
    .locals 4

    .prologue
    .line 783
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/VirtualFlow;, "Lcom/sun/javafx/scene/control/skin/VirtualFlow<TT;>;"
    move-object v1, p1

    .local v1, "e":Ljavafx/scene/input/TouchEvent;
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->touchDetected:Z

    .line 784
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->startSBReleasedAnimation()V

    .line 785
    return-void
.end method

.method private synthetic lambda$startSBReleasedAnimation$100(Ljavafx/event/ActionEvent;)V
    .locals 4

    .prologue
    .line 2877
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/VirtualFlow;, "Lcom/sun/javafx/scene/control/skin/VirtualFlow<TT;>;"
    move-object v1, p1

    .local v1, "event":Ljavafx/event/ActionEvent;
    move-object v2, v0

    iget-boolean v2, v2, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->touchDetected:Z

    if-nez v2, :cond_0

    move-object v2, v0

    iget-boolean v2, v2, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->mouseDown:Z

    if-nez v2, :cond_0

    .line 2878
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->tempVisibility:Z

    .line 2879
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->requestLayout()V

    .line 2881
    :cond_0
    return-void
.end method

.method private synthetic lambda$startSBReleasedAnimation$99(Ljavafx/event/ActionEvent;)V
    .locals 4

    .prologue
    .line 2872
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/VirtualFlow;, "Lcom/sun/javafx/scene/control/skin/VirtualFlow<TT;>;"
    move-object v1, p1

    .local v1, "event":Ljavafx/event/ActionEvent;
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->tempVisibility:Z

    .line 2873
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->requestLayout()V

    .line 2874
    return-void
.end method

.method private releaseAllPrivateCells()V
    .locals 3

    .prologue
    .line 1867
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/VirtualFlow;, "Lcom/sun/javafx/scene/control/skin/VirtualFlow<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->sheetChildren:Ljavafx/collections/ObservableList;

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->privateCells:Ljava/util/List;

    invoke-interface {v1, v2}, Ljavafx/collections/ObservableList;->removeAll(Ljava/util/Collection;)Z

    move-result v1

    .line 1868
    return-void
.end method

.method private releaseCell(Ljavafx/scene/control/IndexedCell;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 1808
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/VirtualFlow;, "Lcom/sun/javafx/scene/control/skin/VirtualFlow<TT;>;"
    move-object v1, p1

    .local v1, "cell":Ljavafx/scene/control/IndexedCell;, "TT;"
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->accumCell:Ljavafx/scene/control/IndexedCell;

    if-eqz v2, :cond_0

    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->accumCell:Ljavafx/scene/control/IndexedCell;

    if-ne v2, v3, :cond_0

    .line 1809
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->accumCell:Ljavafx/scene/control/IndexedCell;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Ljavafx/scene/control/IndexedCell;->updateIndex(I)V

    .line 1811
    :cond_0
    return-void
.end method

.method private updateScrollBarsAndCells(Z)V
    .locals 31

    .prologue
    .line 1519
    move-object/from16 v3, p0

    .local v3, "this":Lcom/sun/javafx/scene/control/skin/VirtualFlow;, "Lcom/sun/javafx/scene/control/skin/VirtualFlow<TT;>;"
    move/from16 v4, p1

    .local v4, "recreate":Z
    move-object/from16 v21, v3

    invoke-virtual/range {v21 .. v21}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->isVertical()Z

    move-result v21

    move/from16 v5, v21

    .line 1520
    .local v5, "isVertical":Z
    move/from16 v21, v5

    if-eqz v21, :cond_0

    move-object/from16 v21, v3

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->hbar:Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;

    move-object/from16 v21, v0

    :goto_0
    move-object/from16 v6, v21

    .line 1521
    .local v6, "breadthBar":Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;
    move/from16 v21, v5

    if-eqz v21, :cond_1

    move-object/from16 v21, v3

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->vbar:Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;

    move-object/from16 v21, v0

    :goto_1
    move-object/from16 v7, v21

    .line 1529
    .local v7, "lengthBar":Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;
    move-object/from16 v21, v3

    invoke-direct/range {v21 .. v21}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->fitCells()V

    .line 1536
    move-object/from16 v21, v3

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->cells:Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;->isEmpty()Z

    move-result v21

    if-nez v21, :cond_3

    .line 1537
    move-object/from16 v21, v3

    move-object/from16 v22, v3

    invoke-virtual/range {v22 .. v22}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->getPosition()D

    move-result-wide v22

    invoke-direct/range {v21 .. v23}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->computeViewportOffset(D)D

    move-result-wide v21

    move-wide/from16 v0, v21

    neg-double v0, v0

    move-wide/from16 v21, v0

    move-wide/from16 v8, v21

    .line 1538
    .local v8, "currOffset":D
    move-object/from16 v21, v3

    invoke-direct/range {v21 .. v21}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->computeCurrentIndex()I

    move-result v21

    move-object/from16 v22, v3

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->cells:Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljavafx/scene/control/IndexedCell;

    invoke-virtual/range {v22 .. v22}, Ljavafx/scene/control/IndexedCell;->getIndex()I

    move-result v22

    sub-int v21, v21, v22

    move/from16 v10, v21

    .line 1539
    .local v10, "currIndex":I
    move-object/from16 v21, v3

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->cells:Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;->size()I

    move-result v21

    move/from16 v11, v21

    .line 1542
    .local v11, "size":I
    move-wide/from16 v21, v8

    move-wide/from16 v12, v21

    .line 1544
    .local v12, "offset":D
    move/from16 v21, v10

    const/16 v22, 0x1

    add-int/lit8 v21, v21, -0x1

    move/from16 v14, v21

    .local v14, "i":I
    :goto_2
    move/from16 v21, v14

    if-ltz v21, :cond_2

    move/from16 v21, v14

    move/from16 v22, v11

    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_2

    .line 1545
    move-object/from16 v21, v3

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->cells:Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;

    move-object/from16 v21, v0

    move/from16 v22, v14

    invoke-virtual/range {v21 .. v22}, Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljavafx/scene/control/IndexedCell;

    move-object/from16 v15, v21

    .line 1547
    .local v15, "cell":Ljavafx/scene/control/IndexedCell;, "TT;"
    move-wide/from16 v21, v12

    move-object/from16 v23, v3

    move-object/from16 v24, v15

    invoke-virtual/range {v23 .. v24}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->getCellLength(Ljavafx/scene/control/IndexedCell;)D

    move-result-wide v23

    sub-double v21, v21, v23

    move-wide/from16 v12, v21

    .line 1549
    move-object/from16 v21, v3

    move-object/from16 v22, v15

    move-wide/from16 v23, v12

    invoke-virtual/range {v21 .. v24}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->positionCell(Ljavafx/scene/control/IndexedCell;D)V

    .line 1544
    add-int/lit8 v14, v14, -0x1

    goto :goto_2

    .line 1520
    .end local v6    # "breadthBar":Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;
    .end local v7    # "lengthBar":Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;
    .end local v8    # "currOffset":D
    .end local v10    # "currIndex":I
    .end local v11    # "size":I
    .end local v12    # "offset":D
    .end local v14    # "i":I
    .end local v15    # "cell":Ljavafx/scene/control/IndexedCell;, "TT;"
    :cond_0
    move-object/from16 v21, v3

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->vbar:Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;

    move-object/from16 v21, v0

    goto/16 :goto_0

    .line 1521
    .restart local v6    # "breadthBar":Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;
    :cond_1
    move-object/from16 v21, v3

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->hbar:Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;

    move-object/from16 v21, v0

    goto/16 :goto_1

    .line 1553
    .restart local v7    # "lengthBar":Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;
    .restart local v8    # "currOffset":D
    .restart local v10    # "currIndex":I
    .restart local v11    # "size":I
    .restart local v12    # "offset":D
    .restart local v14    # "i":I
    :cond_2
    move-wide/from16 v21, v8

    move-wide/from16 v12, v21

    .line 1554
    move/from16 v21, v10

    move/from16 v14, v21

    :goto_3
    move/from16 v21, v14

    if-ltz v21, :cond_3

    move/from16 v21, v14

    move/from16 v22, v11

    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_3

    .line 1555
    move-object/from16 v21, v3

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->cells:Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;

    move-object/from16 v21, v0

    move/from16 v22, v14

    invoke-virtual/range {v21 .. v22}, Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljavafx/scene/control/IndexedCell;

    move-object/from16 v15, v21

    .line 1556
    .restart local v15    # "cell":Ljavafx/scene/control/IndexedCell;, "TT;"
    move-object/from16 v21, v3

    move-object/from16 v22, v15

    move-wide/from16 v23, v12

    invoke-virtual/range {v21 .. v24}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->positionCell(Ljavafx/scene/control/IndexedCell;D)V

    .line 1558
    move-wide/from16 v21, v12

    move-object/from16 v23, v3

    move-object/from16 v24, v15

    invoke-virtual/range {v23 .. v24}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->getCellLength(Ljavafx/scene/control/IndexedCell;)D

    move-result-wide v23

    add-double v21, v21, v23

    move-wide/from16 v12, v21

    .line 1554
    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    .line 1563
    .end local v8    # "currOffset":D
    .end local v10    # "currIndex":I
    .end local v11    # "size":I
    .end local v12    # "offset":D
    .end local v14    # "i":I
    .end local v15    # "cell":Ljavafx/scene/control/IndexedCell;, "TT;"
    :cond_3
    move-object/from16 v21, v3

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->corner:Ljavafx/scene/layout/StackPane;

    move-object/from16 v21, v0

    move-object/from16 v22, v6

    invoke-virtual/range {v22 .. v22}, Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;->isVisible()Z

    move-result v22

    if-eqz v22, :cond_d

    move-object/from16 v22, v7

    invoke-virtual/range {v22 .. v22}, Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;->isVisible()Z

    move-result v22

    if-eqz v22, :cond_d

    const/16 v22, 0x1

    :goto_4
    invoke-virtual/range {v21 .. v22}, Ljavafx/scene/layout/StackPane;->setVisible(Z)V

    .line 1565
    const-wide/16 v21, 0x0

    move-wide/from16 v8, v21

    .line 1566
    .local v8, "sumCellLength":D
    move/from16 v21, v5

    if-eqz v21, :cond_e

    move-object/from16 v21, v3

    invoke-virtual/range {v21 .. v21}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->getHeight()D

    move-result-wide v21

    :goto_5
    move-object/from16 v23, v6

    .line 1567
    invoke-virtual/range {v23 .. v23}, Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;->isVisible()Z

    move-result v23

    if-eqz v23, :cond_f

    move-object/from16 v23, v6

    const-wide/high16 v24, -0x4010000000000000L    # -1.0

    invoke-virtual/range {v23 .. v25}, Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;->prefHeight(D)D

    move-result-wide v23

    :goto_6
    sub-double v21, v21, v23

    move-wide/from16 v10, v21

    .line 1569
    .local v10, "flowLength":D
    move-object/from16 v21, v3

    invoke-virtual/range {v21 .. v21}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->getViewportBreadth()D

    move-result-wide v21

    move-wide/from16 v12, v21

    .line 1570
    .local v12, "viewportBreadth":D
    move-object/from16 v21, v3

    invoke-virtual/range {v21 .. v21}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->getViewportLength()D

    move-result-wide v21

    move-wide/from16 v14, v21

    .line 1573
    .local v14, "viewportLength":D
    move-object/from16 v21, v6

    invoke-virtual/range {v21 .. v21}, Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;->isVisible()Z

    move-result v21

    if-eqz v21, :cond_6

    .line 1577
    sget-boolean v21, Lcom/sun/javafx/scene/control/skin/BehaviorSkinBase;->IS_TOUCH_SUPPORTED:Z

    if-nez v21, :cond_11

    .line 1578
    move/from16 v21, v5

    if-eqz v21, :cond_10

    .line 1579
    move-object/from16 v21, v3

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->hbar:Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;

    move-object/from16 v21, v0

    const-wide/16 v22, 0x0

    move-wide/from16 v24, v14

    move-wide/from16 v26, v12

    move-object/from16 v28, v3

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->hbar:Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;

    move-object/from16 v28, v0

    move-wide/from16 v29, v12

    .line 1580
    invoke-virtual/range {v28 .. v30}, Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;->prefHeight(D)D

    move-result-wide v28

    .line 1579
    invoke-virtual/range {v21 .. v29}, Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;->resizeRelocate(DDDD)V

    .line 1596
    :goto_7
    move-object/from16 v21, v3

    invoke-virtual/range {v21 .. v21}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->getMaxPrefBreadth()D

    move-result-wide v21

    const-wide/high16 v23, -0x4010000000000000L    # -1.0

    cmpl-double v21, v21, v23

    if-eqz v21, :cond_6

    .line 1597
    const-wide/high16 v21, 0x3ff0000000000000L    # 1.0

    move-object/from16 v23, v3

    invoke-virtual/range {v23 .. v23}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->getMaxPrefBreadth()D

    move-result-wide v23

    move-wide/from16 v25, v12

    sub-double v23, v23, v25

    invoke-static/range {v21 .. v24}, Ljava/lang/Math;->max(DD)D

    move-result-wide v21

    move-wide/from16 v16, v21

    .line 1598
    .local v16, "newMax":D
    move-wide/from16 v21, v16

    move-object/from16 v23, v6

    invoke-virtual/range {v23 .. v23}, Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;->getMax()D

    move-result-wide v23

    cmpl-double v21, v21, v23

    if-eqz v21, :cond_6

    .line 1599
    move-object/from16 v21, v6

    move-wide/from16 v22, v16

    invoke-virtual/range {v21 .. v23}, Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;->setMax(D)V

    .line 1601
    move-object/from16 v21, v6

    invoke-virtual/range {v21 .. v21}, Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;->getValue()D

    move-result-wide v21

    move-wide/from16 v18, v21

    .line 1602
    .local v18, "breadthBarValue":D
    move-wide/from16 v21, v18

    const-wide/16 v23, 0x0

    cmpl-double v21, v21, v23

    if-eqz v21, :cond_13

    move-wide/from16 v21, v16

    move-wide/from16 v23, v18

    cmpl-double v21, v21, v23

    if-nez v21, :cond_13

    const/16 v21, 0x1

    :goto_8
    move/from16 v20, v21

    .line 1603
    .local v20, "maxed":Z
    move/from16 v21, v20

    if-nez v21, :cond_4

    move-wide/from16 v21, v18

    move-wide/from16 v23, v16

    cmpl-double v21, v21, v23

    if-lez v21, :cond_5

    .line 1604
    :cond_4
    move-object/from16 v21, v6

    move-wide/from16 v22, v16

    invoke-virtual/range {v21 .. v23}, Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;->setValue(D)V

    .line 1607
    :cond_5
    move-object/from16 v21, v6

    move-wide/from16 v22, v12

    move-object/from16 v24, v3

    invoke-virtual/range {v24 .. v24}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->getMaxPrefBreadth()D

    move-result-wide v24

    div-double v22, v22, v24

    move-wide/from16 v24, v16

    mul-double v22, v22, v24

    invoke-virtual/range {v21 .. v23}, Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;->setVisibleAmount(D)V

    .line 1614
    .end local v16    # "newMax":D
    .end local v18    # "breadthBarValue":D
    .end local v20    # "maxed":Z
    :cond_6
    move/from16 v21, v4

    if-eqz v21, :cond_9

    move-object/from16 v21, v7

    invoke-virtual/range {v21 .. v21}, Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;->isVisible()Z

    move-result v21

    if-nez v21, :cond_7

    sget-boolean v21, Lcom/sun/javafx/scene/control/skin/BehaviorSkinBase;->IS_TOUCH_SUPPORTED:Z

    if-eqz v21, :cond_9

    .line 1615
    :cond_7
    const/16 v21, 0x0

    move/from16 v16, v21

    .line 1616
    .local v16, "numCellsVisibleOnScreen":I
    const/16 v21, 0x0

    move/from16 v17, v21

    .local v17, "i":I
    move-object/from16 v21, v3

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->cells:Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;->size()I

    move-result v21

    move/from16 v18, v21

    .local v18, "max":I
    :goto_9
    move/from16 v21, v17

    move/from16 v22, v18

    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_8

    .line 1617
    move-object/from16 v21, v3

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->cells:Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;

    move-object/from16 v21, v0

    move/from16 v22, v17

    invoke-virtual/range {v21 .. v22}, Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljavafx/scene/control/IndexedCell;

    move-object/from16 v19, v21

    .line 1618
    .local v19, "cell":Ljavafx/scene/control/IndexedCell;, "TT;"
    move-object/from16 v21, v19

    if-eqz v21, :cond_16

    move-object/from16 v21, v19

    invoke-virtual/range {v21 .. v21}, Ljavafx/scene/control/IndexedCell;->isEmpty()Z

    move-result v21

    if-nez v21, :cond_16

    .line 1619
    move-wide/from16 v21, v8

    move/from16 v23, v5

    if-eqz v23, :cond_14

    move-object/from16 v23, v19

    invoke-virtual/range {v23 .. v23}, Ljavafx/scene/control/IndexedCell;->getHeight()D

    move-result-wide v23

    :goto_a
    add-double v21, v21, v23

    move-wide/from16 v8, v21

    .line 1620
    move-wide/from16 v21, v8

    move-wide/from16 v23, v10

    cmpl-double v21, v21, v23

    if-lez v21, :cond_15

    .line 1621
    .line 1628
    .end local v19    # "cell":Ljavafx/scene/control/IndexedCell;, "TT;"
    :cond_8
    move-object/from16 v21, v7

    const-wide/high16 v22, 0x3ff0000000000000L    # 1.0

    invoke-virtual/range {v21 .. v23}, Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;->setMax(D)V

    .line 1629
    move/from16 v21, v16

    if-nez v21, :cond_17

    move-object/from16 v21, v3

    move-object/from16 v0, v21

    iget v0, v0, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->cellCount:I

    move/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_17

    .line 1632
    move-object/from16 v21, v7

    move-wide/from16 v22, v10

    move-wide/from16 v24, v8

    div-double v22, v22, v24

    invoke-virtual/range {v21 .. v23}, Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;->setVisibleAmount(D)V

    .line 1638
    .end local v16    # "numCellsVisibleOnScreen":I
    .end local v17    # "i":I
    .end local v18    # "max":I
    :cond_9
    :goto_b
    move-object/from16 v21, v7

    invoke-virtual/range {v21 .. v21}, Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;->isVisible()Z

    move-result v21

    if-eqz v21, :cond_a

    .line 1655
    sget-boolean v21, Lcom/sun/javafx/scene/control/skin/BehaviorSkinBase;->IS_TOUCH_SUPPORTED:Z

    if-nez v21, :cond_19

    .line 1656
    move/from16 v21, v5

    if-eqz v21, :cond_18

    .line 1657
    move-object/from16 v21, v3

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->vbar:Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;

    move-object/from16 v21, v0

    move-wide/from16 v22, v12

    const-wide/16 v24, 0x0

    move-object/from16 v26, v3

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->vbar:Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;

    move-object/from16 v26, v0

    move-wide/from16 v27, v14

    invoke-virtual/range {v26 .. v28}, Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;->prefWidth(D)D

    move-result-wide v26

    move-wide/from16 v28, v14

    invoke-virtual/range {v21 .. v29}, Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;->resizeRelocate(DDDD)V

    .line 1671
    :cond_a
    :goto_c
    move-object/from16 v21, v3

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->corner:Ljavafx/scene/layout/StackPane;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljavafx/scene/layout/StackPane;->isVisible()Z

    move-result v21

    if-eqz v21, :cond_b

    .line 1672
    sget-boolean v21, Lcom/sun/javafx/scene/control/skin/BehaviorSkinBase;->IS_TOUCH_SUPPORTED:Z

    if-nez v21, :cond_1b

    .line 1673
    move-object/from16 v21, v3

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->corner:Ljavafx/scene/layout/StackPane;

    move-object/from16 v21, v0

    move-object/from16 v22, v3

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->vbar:Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;->getWidth()D

    move-result-wide v22

    move-object/from16 v24, v3

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->hbar:Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;->getHeight()D

    move-result-wide v24

    invoke-virtual/range {v21 .. v25}, Ljavafx/scene/layout/StackPane;->resize(DD)V

    .line 1674
    move-object/from16 v21, v3

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->corner:Ljavafx/scene/layout/StackPane;

    move-object/from16 v21, v0

    move-object/from16 v22, v3

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->hbar:Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;->getLayoutX()D

    move-result-wide v22

    move-object/from16 v24, v3

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->hbar:Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;->getWidth()D

    move-result-wide v24

    add-double v22, v22, v24

    move-object/from16 v24, v3

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->vbar:Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;->getLayoutY()D

    move-result-wide v24

    move-object/from16 v26, v3

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->vbar:Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;->getHeight()D

    move-result-wide v26

    add-double v24, v24, v26

    invoke-virtual/range {v21 .. v25}, Ljavafx/scene/layout/StackPane;->relocate(DD)V

    .line 1684
    :cond_b
    :goto_d
    move-object/from16 v21, v3

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->clipView:Lcom/sun/javafx/scene/control/skin/VirtualFlow$ClippedContainer;

    move-object/from16 v21, v0

    move-object/from16 v22, v3

    move/from16 v23, v5

    if-eqz v23, :cond_1c

    move-wide/from16 v23, v12

    :goto_e
    invoke-virtual/range {v22 .. v24}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->snapSize(D)D

    move-result-wide v22

    move-object/from16 v24, v3

    move/from16 v25, v5

    if-eqz v25, :cond_1d

    move-wide/from16 v25, v14

    .line 1685
    :goto_f
    invoke-virtual/range {v24 .. v26}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->snapSize(D)D

    move-result-wide v24

    .line 1684
    invoke-virtual/range {v21 .. v25}, Lcom/sun/javafx/scene/control/skin/VirtualFlow$ClippedContainer;->resize(DD)V

    .line 1689
    move-object/from16 v21, v3

    invoke-virtual/range {v21 .. v21}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->getPosition()D

    move-result-wide v21

    move-object/from16 v23, v7

    invoke-virtual/range {v23 .. v23}, Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;->getValue()D

    move-result-wide v23

    cmpl-double v21, v21, v23

    if-eqz v21, :cond_c

    .line 1690
    move-object/from16 v21, v7

    move-object/from16 v22, v3

    invoke-virtual/range {v22 .. v22}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->getPosition()D

    move-result-wide v22

    invoke-virtual/range {v21 .. v23}, Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;->setValue(D)V

    .line 1692
    :cond_c
    return-void

    .line 1563
    .end local v8    # "sumCellLength":D
    .end local v10    # "flowLength":D
    .end local v12    # "viewportBreadth":D
    .end local v14    # "viewportLength":D
    :cond_d
    const/16 v22, 0x0

    goto/16 :goto_4

    .line 1566
    .restart local v8    # "sumCellLength":D
    :cond_e
    move-object/from16 v21, v3

    invoke-virtual/range {v21 .. v21}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->getWidth()D

    move-result-wide v21

    goto/16 :goto_5

    .line 1567
    :cond_f
    const-wide/16 v23, 0x0

    goto/16 :goto_6

    .line 1582
    .restart local v10    # "flowLength":D
    .restart local v12    # "viewportBreadth":D
    .restart local v14    # "viewportLength":D
    :cond_10
    move-object/from16 v21, v3

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->vbar:Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;

    move-object/from16 v21, v0

    move-wide/from16 v22, v14

    const-wide/16 v24, 0x0

    move-object/from16 v26, v3

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->vbar:Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;

    move-object/from16 v26, v0

    move-wide/from16 v27, v12

    .line 1583
    invoke-virtual/range {v26 .. v28}, Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;->prefWidth(D)D

    move-result-wide v26

    move-wide/from16 v28, v12

    .line 1582
    invoke-virtual/range {v21 .. v29}, Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;->resizeRelocate(DDDD)V

    goto/16 :goto_7

    .line 1587
    :cond_11
    move/from16 v21, v5

    if-eqz v21, :cond_12

    .line 1588
    move-object/from16 v21, v3

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->hbar:Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;

    move-object/from16 v21, v0

    const-wide/16 v22, 0x0

    move-wide/from16 v24, v14

    move-object/from16 v26, v3

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->hbar:Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;->getHeight()D

    move-result-wide v26

    sub-double v24, v24, v26

    move-wide/from16 v26, v12

    move-object/from16 v28, v3

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->hbar:Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;

    move-object/from16 v28, v0

    move-wide/from16 v29, v12

    .line 1589
    invoke-virtual/range {v28 .. v30}, Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;->prefHeight(D)D

    move-result-wide v28

    .line 1588
    invoke-virtual/range {v21 .. v29}, Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;->resizeRelocate(DDDD)V

    goto/16 :goto_7

    .line 1591
    :cond_12
    move-object/from16 v21, v3

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->vbar:Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;

    move-object/from16 v21, v0

    move-wide/from16 v22, v14

    move-object/from16 v24, v3

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->vbar:Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;->getWidth()D

    move-result-wide v24

    sub-double v22, v22, v24

    const-wide/16 v24, 0x0

    move-object/from16 v26, v3

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->vbar:Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;

    move-object/from16 v26, v0

    move-wide/from16 v27, v12

    .line 1592
    invoke-virtual/range {v26 .. v28}, Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;->prefWidth(D)D

    move-result-wide v26

    move-wide/from16 v28, v12

    .line 1591
    invoke-virtual/range {v21 .. v29}, Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;->resizeRelocate(DDDD)V

    goto/16 :goto_7

    .line 1602
    .local v16, "newMax":D
    .local v18, "breadthBarValue":D
    :cond_13
    const/16 v21, 0x0

    goto/16 :goto_8

    .line 1619
    .local v16, "numCellsVisibleOnScreen":I
    .restart local v17    # "i":I
    .local v18, "max":I
    .restart local v19    # "cell":Ljavafx/scene/control/IndexedCell;, "TT;"
    :cond_14
    move-object/from16 v23, v19

    invoke-virtual/range {v23 .. v23}, Ljavafx/scene/control/IndexedCell;->getWidth()D

    move-result-wide v23

    goto/16 :goto_a

    .line 1624
    :cond_15
    add-int/lit8 v16, v16, 0x1

    .line 1616
    :cond_16
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_9

    .line 1634
    .end local v19    # "cell":Ljavafx/scene/control/IndexedCell;, "TT;"
    :cond_17
    move-object/from16 v21, v7

    move/from16 v22, v16

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    move-object/from16 v23, v3

    move-object/from16 v0, v23

    iget v0, v0, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->cellCount:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    div-float v22, v22, v23

    move/from16 v0, v22

    float-to-double v0, v0

    move-wide/from16 v22, v0

    invoke-virtual/range {v21 .. v23}, Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;->setVisibleAmount(D)V

    goto/16 :goto_b

    .line 1659
    .end local v16    # "numCellsVisibleOnScreen":I
    .end local v17    # "i":I
    .end local v18    # "max":I
    :cond_18
    move-object/from16 v21, v3

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->hbar:Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;

    move-object/from16 v21, v0

    const-wide/16 v22, 0x0

    move-wide/from16 v24, v12

    move-wide/from16 v26, v14

    move-object/from16 v28, v3

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->hbar:Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;

    move-object/from16 v28, v0

    const-wide/high16 v29, -0x4010000000000000L    # -1.0

    invoke-virtual/range {v28 .. v30}, Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;->prefHeight(D)D

    move-result-wide v28

    invoke-virtual/range {v21 .. v29}, Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;->resizeRelocate(DDDD)V

    goto/16 :goto_c

    .line 1663
    :cond_19
    move/from16 v21, v5

    if-eqz v21, :cond_1a

    .line 1664
    move-object/from16 v21, v3

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->vbar:Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;

    move-object/from16 v21, v0

    move-wide/from16 v22, v12

    move-object/from16 v24, v3

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->vbar:Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;->getWidth()D

    move-result-wide v24

    sub-double v22, v22, v24

    const-wide/16 v24, 0x0

    move-object/from16 v26, v3

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->vbar:Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;

    move-object/from16 v26, v0

    move-wide/from16 v27, v14

    invoke-virtual/range {v26 .. v28}, Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;->prefWidth(D)D

    move-result-wide v26

    move-wide/from16 v28, v14

    invoke-virtual/range {v21 .. v29}, Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;->resizeRelocate(DDDD)V

    goto/16 :goto_c

    .line 1666
    :cond_1a
    move-object/from16 v21, v3

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->hbar:Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;

    move-object/from16 v21, v0

    const-wide/16 v22, 0x0

    move-wide/from16 v24, v12

    move-object/from16 v26, v3

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->hbar:Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;->getHeight()D

    move-result-wide v26

    sub-double v24, v24, v26

    move-wide/from16 v26, v14

    move-object/from16 v28, v3

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->hbar:Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;

    move-object/from16 v28, v0

    const-wide/high16 v29, -0x4010000000000000L    # -1.0

    invoke-virtual/range {v28 .. v30}, Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;->prefHeight(D)D

    move-result-wide v28

    invoke-virtual/range {v21 .. v29}, Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;->resizeRelocate(DDDD)V

    goto/16 :goto_c

    .line 1677
    :cond_1b
    move-object/from16 v21, v3

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->corner:Ljavafx/scene/layout/StackPane;

    move-object/from16 v21, v0

    move-object/from16 v22, v3

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->vbar:Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;->getWidth()D

    move-result-wide v22

    move-object/from16 v24, v3

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->hbar:Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;->getHeight()D

    move-result-wide v24

    invoke-virtual/range {v21 .. v25}, Ljavafx/scene/layout/StackPane;->resize(DD)V

    .line 1678
    move-object/from16 v21, v3

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->corner:Ljavafx/scene/layout/StackPane;

    move-object/from16 v21, v0

    move-object/from16 v22, v3

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->hbar:Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;->getLayoutX()D

    move-result-wide v22

    move-object/from16 v24, v3

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->hbar:Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;->getWidth()D

    move-result-wide v24

    move-object/from16 v26, v3

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->vbar:Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;->getWidth()D

    move-result-wide v26

    sub-double v24, v24, v26

    add-double v22, v22, v24

    move-object/from16 v24, v3

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->vbar:Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;->getLayoutY()D

    move-result-wide v24

    move-object/from16 v26, v3

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->vbar:Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;->getHeight()D

    move-result-wide v26

    move-object/from16 v28, v3

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->hbar:Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;->getHeight()D

    move-result-wide v28

    sub-double v26, v26, v28

    add-double v24, v24, v26

    invoke-virtual/range {v21 .. v25}, Ljavafx/scene/layout/StackPane;->relocate(DD)V

    .line 1679
    move-object/from16 v21, v3

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->hbar:Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;

    move-object/from16 v21, v0

    move-object/from16 v22, v3

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->hbar:Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;->getWidth()D

    move-result-wide v22

    move-object/from16 v24, v3

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->vbar:Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;->getWidth()D

    move-result-wide v24

    sub-double v22, v22, v24

    move-object/from16 v24, v3

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->hbar:Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;->getHeight()D

    move-result-wide v24

    invoke-virtual/range {v21 .. v25}, Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;->resize(DD)V

    .line 1680
    move-object/from16 v21, v3

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->vbar:Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;

    move-object/from16 v21, v0

    move-object/from16 v22, v3

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->vbar:Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;->getWidth()D

    move-result-wide v22

    move-object/from16 v24, v3

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->vbar:Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;->getHeight()D

    move-result-wide v24

    move-object/from16 v26, v3

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->hbar:Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;->getHeight()D

    move-result-wide v26

    sub-double v24, v24, v26

    invoke-virtual/range {v21 .. v25}, Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;->resize(DD)V

    goto/16 :goto_d

    .line 1684
    :cond_1c
    move-wide/from16 v23, v14

    goto/16 :goto_e

    :cond_1d
    move-wide/from16 v25, v12

    goto/16 :goto_f
.end method

.method private updateViewportDimensions()V
    .locals 12

    .prologue
    .line 1474
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/VirtualFlow;, "Lcom/sun/javafx/scene/control/skin/VirtualFlow<TT;>;"
    move-object v7, v1

    invoke-virtual {v7}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->isVertical()Z

    move-result v7

    move v2, v7

    .line 1475
    .local v2, "isVertical":Z
    move-object v7, v1

    move v8, v2

    if-eqz v8, :cond_0

    move-object v8, v1

    iget-object v8, v8, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->hbar:Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;

    const-wide/high16 v9, -0x4010000000000000L    # -1.0

    invoke-virtual {v8, v9, v10}, Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;->prefHeight(D)D

    move-result-wide v8

    :goto_0
    invoke-virtual {v7, v8, v9}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->snapSize(D)D

    move-result-wide v7

    move-wide v3, v7

    .line 1476
    .local v3, "breadthBarLength":D
    move-object v7, v1

    move v8, v2

    if-eqz v8, :cond_1

    move-object v8, v1

    iget-object v8, v8, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->vbar:Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;

    const-wide/high16 v9, -0x4010000000000000L    # -1.0

    invoke-virtual {v8, v9, v10}, Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;->prefWidth(D)D

    move-result-wide v8

    :goto_1
    invoke-virtual {v7, v8, v9}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->snapSize(D)D

    move-result-wide v7

    move-wide v5, v7

    .line 1478
    .local v5, "lengthBarBreadth":D
    move-object v7, v1

    move v8, v2

    if-eqz v8, :cond_2

    move-object v8, v1

    invoke-virtual {v8}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->getWidth()D

    move-result-wide v8

    :goto_2
    move-object v10, v1

    iget-boolean v10, v10, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->needLengthBar:Z

    if-eqz v10, :cond_3

    move-wide v10, v5

    :goto_3
    sub-double/2addr v8, v10

    invoke-virtual {v7, v8, v9}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->setViewportBreadth(D)V

    .line 1479
    move-object v7, v1

    move v8, v2

    if-eqz v8, :cond_4

    move-object v8, v1

    invoke-virtual {v8}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->getHeight()D

    move-result-wide v8

    :goto_4
    move-object v10, v1

    iget-boolean v10, v10, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->needBreadthBar:Z

    if-eqz v10, :cond_5

    move-wide v10, v3

    :goto_5
    sub-double/2addr v8, v10

    invoke-virtual {v7, v8, v9}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->setViewportLength(D)V

    .line 1480
    return-void

    .line 1475
    .end local v3    # "breadthBarLength":D
    .end local v5    # "lengthBarBreadth":D
    :cond_0
    move-object v8, v1

    iget-object v8, v8, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->vbar:Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;

    const-wide/high16 v9, -0x4010000000000000L    # -1.0

    invoke-virtual {v8, v9, v10}, Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;->prefWidth(D)D

    move-result-wide v8

    goto :goto_0

    .line 1476
    .restart local v3    # "breadthBarLength":D
    :cond_1
    move-object v8, v1

    iget-object v8, v8, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->hbar:Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;

    const-wide/high16 v9, -0x4010000000000000L    # -1.0

    invoke-virtual {v8, v9, v10}, Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;->prefHeight(D)D

    move-result-wide v8

    goto :goto_1

    .line 1478
    .restart local v5    # "lengthBarBreadth":D
    :cond_2
    move-object v8, v1

    invoke-virtual {v8}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->getHeight()D

    move-result-wide v8

    goto :goto_2

    :cond_3
    const-wide/16 v10, 0x0

    goto :goto_3

    .line 1479
    :cond_4
    move-object v8, v1

    invoke-virtual {v8}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->getWidth()D

    move-result-wide v8

    goto :goto_4

    :cond_5
    const-wide/16 v10, 0x0

    goto :goto_5
.end method


# virtual methods
.method protected addAllToPile()V
    .locals 5

    .prologue
    .line 2047
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/VirtualFlow;, "Lcom/sun/javafx/scene/control/skin/VirtualFlow<TT;>;"
    const/4 v3, 0x0

    move v1, v3

    .local v1, "i":I
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->cells:Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;->size()I

    move-result v3

    move v2, v3

    .local v2, "max":I
    :goto_0
    move v3, v1

    move v4, v2

    if-ge v3, v4, :cond_0

    .line 2048
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->cells:Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavafx/scene/control/IndexedCell;

    invoke-direct {v3, v4}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->addToPile(Ljavafx/scene/control/IndexedCell;)V

    .line 2047
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2050
    :cond_0
    return-void
.end method

.method protected addLeadingCells(ID)V
    .locals 20

    .prologue
    .line 1226
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/VirtualFlow;, "Lcom/sun/javafx/scene/control/skin/VirtualFlow<TT;>;"
    move/from16 v2, p1

    .local v2, "currentIndex":I
    move-wide/from16 v3, p2

    .local v3, "startOffset":D
    move-wide v14, v3

    move-wide v5, v14

    .line 1228
    .local v5, "offset":D
    move v14, v2

    move v7, v14

    .line 1231
    .local v7, "index":I
    const/4 v14, 0x1

    move v8, v14

    .line 1239
    .local v8, "first":Z
    const/4 v14, 0x0

    move-object v9, v14

    .line 1242
    .local v9, "cell":Ljavafx/scene/control/IndexedCell;, "TT;"
    move v14, v7

    move-object v15, v1

    iget v15, v15, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->cellCount:I

    if-ne v14, v15, :cond_0

    move-wide v14, v5

    move-object/from16 v16, v1

    invoke-virtual/range {v16 .. v16}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->getViewportLength()D

    move-result-wide v16

    cmpl-double v14, v14, v16

    if-nez v14, :cond_0

    .line 1243
    add-int/lit8 v7, v7, -0x1

    .line 1244
    const/4 v14, 0x0

    move v8, v14

    .line 1246
    :cond_0
    :goto_0
    move v14, v7

    if-ltz v14, :cond_3

    move-wide v14, v5

    const-wide/16 v16, 0x0

    cmpl-double v14, v14, v16

    if-gtz v14, :cond_1

    move v14, v8

    if-eqz v14, :cond_3

    .line 1247
    :cond_1
    move-object v14, v1

    move v15, v7

    invoke-virtual {v14, v15}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->getAvailableCell(I)Ljavafx/scene/control/IndexedCell;

    move-result-object v14

    move-object v9, v14

    .line 1248
    move-object v14, v1

    move-object v15, v9

    move/from16 v16, v7

    invoke-virtual/range {v14 .. v16}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->setCellIndex(Ljavafx/scene/control/IndexedCell;I)V

    .line 1249
    move-object v14, v1

    move-object v15, v9

    invoke-virtual {v14, v15}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->resizeCellSize(Ljavafx/scene/control/IndexedCell;)V

    .line 1250
    move-object v14, v1

    iget-object v14, v14, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->cells:Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;

    move-object v15, v9

    invoke-virtual {v14, v15}, Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;->addFirst(Ljava/lang/Object;)V

    .line 1257
    move v14, v8

    if-eqz v14, :cond_2

    .line 1258
    const/4 v14, 0x0

    move v8, v14

    .line 1264
    :goto_1
    move-object v14, v1

    move-object v15, v9

    move-wide/from16 v16, v5

    invoke-virtual/range {v14 .. v17}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->positionCell(Ljavafx/scene/control/IndexedCell;D)V

    .line 1265
    move-object v14, v1

    move-object v15, v1

    invoke-virtual {v15}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->getMaxPrefBreadth()D

    move-result-wide v15

    move-object/from16 v17, v1

    move-object/from16 v18, v9

    invoke-virtual/range {v17 .. v18}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->getCellBreadth(Ljavafx/scene/control/Cell;)D

    move-result-wide v17

    invoke-static/range {v15 .. v18}, Ljava/lang/Math;->max(DD)D

    move-result-wide v15

    invoke-virtual/range {v14 .. v16}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->setMaxPrefBreadth(D)V

    .line 1266
    move-object v14, v9

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Ljavafx/scene/control/IndexedCell;->setVisible(Z)V

    .line 1267
    add-int/lit8 v7, v7, -0x1

    goto :goto_0

    .line 1260
    :cond_2
    move-wide v14, v5

    move-object/from16 v16, v1

    move-object/from16 v17, v9

    invoke-virtual/range {v16 .. v17}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->getCellLength(Ljavafx/scene/control/IndexedCell;)D

    move-result-wide v16

    sub-double v14, v14, v16

    move-wide v5, v14

    goto :goto_1

    .line 1275
    :cond_3
    move-object v14, v1

    iget-object v14, v14, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->cells:Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;

    invoke-virtual {v14}, Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;->size()I

    move-result v14

    if-lez v14, :cond_5

    .line 1276
    move-object v14, v1

    iget-object v14, v14, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->cells:Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;

    invoke-virtual {v14}, Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljavafx/scene/control/IndexedCell;

    move-object v9, v14

    .line 1277
    move-object v14, v1

    move-object v15, v9

    invoke-virtual {v14, v15}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->getCellIndex(Ljavafx/scene/control/IndexedCell;)I

    move-result v14

    move v10, v14

    .line 1278
    .local v10, "firstIndex":I
    move-object v14, v1

    move-object v15, v9

    invoke-virtual {v14, v15}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->getCellPosition(Ljavafx/scene/control/IndexedCell;)D

    move-result-wide v14

    move-wide v11, v14

    .line 1279
    .local v11, "firstCellPos":D
    move v14, v10

    if-nez v14, :cond_4

    move-wide v14, v11

    const-wide/16 v16, 0x0

    cmpl-double v14, v14, v16

    if-lez v14, :cond_4

    .line 1280
    move-object v14, v1

    const-wide/16 v15, 0x0

    invoke-virtual/range {v14 .. v16}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->setPosition(D)V

    .line 1281
    const-wide/16 v14, 0x0

    move-wide v5, v14

    .line 1282
    const/4 v14, 0x0

    move v13, v14

    .local v13, "i":I
    :goto_2
    move v14, v13

    move-object v15, v1

    iget-object v15, v15, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->cells:Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;

    invoke-virtual {v15}, Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;->size()I

    move-result v15

    if-ge v14, v15, :cond_4

    .line 1283
    move-object v14, v1

    iget-object v14, v14, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->cells:Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;

    move v15, v13

    invoke-virtual {v14, v15}, Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljavafx/scene/control/IndexedCell;

    move-object v9, v14

    .line 1284
    move-object v14, v1

    move-object v15, v9

    move-wide/from16 v16, v5

    invoke-virtual/range {v14 .. v17}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->positionCell(Ljavafx/scene/control/IndexedCell;D)V

    .line 1285
    move-wide v14, v5

    move-object/from16 v16, v1

    move-object/from16 v17, v9

    invoke-virtual/range {v16 .. v17}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->getCellLength(Ljavafx/scene/control/IndexedCell;)D

    move-result-wide v16

    add-double v14, v14, v16

    move-wide v5, v14

    .line 1282
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 1288
    .line 1293
    .end local v10    # "firstIndex":I
    .end local v11    # "firstCellPos":D
    .end local v13    # "i":I
    :cond_4
    :goto_3
    return-void

    .line 1290
    :cond_5
    move-object v14, v1

    iget-object v14, v14, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->vbar:Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;

    const-wide/16 v15, 0x0

    invoke-virtual/range {v14 .. v16}, Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;->setValue(D)V

    .line 1291
    move-object v14, v1

    iget-object v14, v14, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->hbar:Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;

    const-wide/16 v15, 0x0

    invoke-virtual/range {v14 .. v16}, Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;->setValue(D)V

    goto :goto_3
.end method

.method protected addTrailingCells(Z)Z
    .locals 35

    .prologue
    .line 1302
    move-object/from16 v3, p0

    .local v3, "this":Lcom/sun/javafx/scene/control/skin/VirtualFlow;, "Lcom/sun/javafx/scene/control/skin/VirtualFlow<TT;>;"
    move/from16 v4, p1

    .local v4, "fillEmptyCells":Z
    move-object/from16 v28, v3

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->cells:Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;->isEmpty()Z

    move-result v28

    if-eqz v28, :cond_0

    const/16 v28, 0x0

    move/from16 v3, v28

    .line 1414
    .end local v3    # "this":Lcom/sun/javafx/scene/control/skin/VirtualFlow;, "Lcom/sun/javafx/scene/control/skin/VirtualFlow<TT;>;"
    :goto_0
    return v3

    .line 1308
    .restart local v3    # "this":Lcom/sun/javafx/scene/control/skin/VirtualFlow;, "Lcom/sun/javafx/scene/control/skin/VirtualFlow<TT;>;"
    :cond_0
    move-object/from16 v28, v3

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->cells:Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;->getLast()Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljavafx/scene/control/IndexedCell;

    move-object/from16 v5, v28

    .line 1309
    .local v5, "startCell":Ljavafx/scene/control/IndexedCell;, "TT;"
    move-object/from16 v28, v3

    move-object/from16 v29, v5

    invoke-virtual/range {v28 .. v29}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->getCellPosition(Ljavafx/scene/control/IndexedCell;)D

    move-result-wide v28

    move-object/from16 v30, v3

    move-object/from16 v31, v5

    invoke-virtual/range {v30 .. v31}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->getCellLength(Ljavafx/scene/control/IndexedCell;)D

    move-result-wide v30

    add-double v28, v28, v30

    move-wide/from16 v6, v28

    .line 1310
    .local v6, "offset":D
    move-object/from16 v28, v3

    move-object/from16 v29, v5

    invoke-virtual/range {v28 .. v29}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->getCellIndex(Ljavafx/scene/control/IndexedCell;)I

    move-result v28

    const/16 v29, 0x1

    add-int/lit8 v28, v28, 0x1

    move/from16 v8, v28

    .line 1311
    .local v8, "index":I
    move/from16 v28, v8

    move-object/from16 v29, v3

    move-object/from16 v0, v29

    iget v0, v0, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->cellCount:I

    move/from16 v29, v0

    move/from16 v0, v28

    move/from16 v1, v29

    if-gt v0, v1, :cond_1

    const/16 v28, 0x1

    :goto_1
    move/from16 v9, v28

    .line 1313
    .local v9, "filledWithNonEmpty":Z
    move-object/from16 v28, v3

    invoke-virtual/range {v28 .. v28}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->getViewportLength()D

    move-result-wide v28

    move-wide/from16 v10, v28

    .line 1316
    .local v10, "viewportLength":D
    move-wide/from16 v28, v6

    const-wide/16 v30, 0x0

    cmpg-double v28, v28, v30

    if-gez v28, :cond_2

    move/from16 v28, v4

    if-nez v28, :cond_2

    .line 1317
    const/16 v28, 0x0

    move/from16 v3, v28

    goto :goto_0

    .line 1311
    .end local v9    # "filledWithNonEmpty":Z
    .end local v10    # "viewportLength":D
    :cond_1
    const/16 v28, 0x0

    goto :goto_1

    .line 1327
    .restart local v9    # "filledWithNonEmpty":Z
    .restart local v10    # "viewportLength":D
    :cond_2
    move-wide/from16 v28, v10

    move-wide/from16 v30, v6

    sub-double v28, v28, v30

    move-wide/from16 v12, v28

    .line 1328
    .local v12, "maxCellCount":D
    :goto_2
    move-wide/from16 v28, v6

    move-wide/from16 v30, v10

    cmpg-double v28, v28, v30

    if-gez v28, :cond_8

    .line 1329
    move/from16 v28, v8

    move-object/from16 v29, v3

    move-object/from16 v0, v29

    iget v0, v0, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->cellCount:I

    move/from16 v29, v0

    move/from16 v0, v28

    move/from16 v1, v29

    if-lt v0, v1, :cond_7

    .line 1330
    move-wide/from16 v28, v6

    move-wide/from16 v30, v10

    cmpg-double v28, v28, v30

    if-gez v28, :cond_3

    const/16 v28, 0x0

    move/from16 v9, v28

    .line 1331
    :cond_3
    move/from16 v28, v4

    if-nez v28, :cond_4

    move/from16 v28, v9

    move/from16 v3, v28

    goto/16 :goto_0

    .line 1333
    :cond_4
    move/from16 v28, v8

    move/from16 v0, v28

    int-to-double v0, v0

    move-wide/from16 v28, v0

    move-wide/from16 v30, v12

    cmpl-double v28, v28, v30

    if-lez v28, :cond_7

    .line 1334
    invoke-static {}, Lcom/sun/javafx/scene/control/Logging;->getControlsLogger()Lsun/util/logging/PlatformLogger;

    move-result-object v28

    move-object/from16 v14, v28

    .line 1335
    .local v14, "logger":Lsun/util/logging/PlatformLogger;
    move-object/from16 v28, v14

    sget-object v29, Lsun/util/logging/PlatformLogger$Level;->INFO:Lsun/util/logging/PlatformLogger$Level;

    invoke-virtual/range {v28 .. v29}, Lsun/util/logging/PlatformLogger;->isLoggable(Lsun/util/logging/PlatformLogger$Level;)Z

    move-result v28

    if-eqz v28, :cond_5

    .line 1336
    move-object/from16 v28, v5

    if-eqz v28, :cond_6

    .line 1337
    move-object/from16 v28, v14

    new-instance v29, Ljava/lang/StringBuilder;

    move-object/from16 v34, v29

    move-object/from16 v29, v34

    move-object/from16 v30, v34

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "index exceeds maxCellCount. Check size calculations for "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v30, v5

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Lsun/util/logging/PlatformLogger;->info(Ljava/lang/String;)V

    .line 1342
    :cond_5
    :goto_3
    move/from16 v28, v9

    move/from16 v3, v28

    goto/16 :goto_0

    .line 1339
    :cond_6
    move-object/from16 v28, v14

    const-string v29, "index exceeds maxCellCount"

    invoke-virtual/range {v28 .. v29}, Lsun/util/logging/PlatformLogger;->info(Ljava/lang/String;)V

    goto :goto_3

    .line 1345
    .end local v14    # "logger":Lsun/util/logging/PlatformLogger;
    :cond_7
    move-object/from16 v28, v3

    move/from16 v29, v8

    invoke-virtual/range {v28 .. v29}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->getAvailableCell(I)Ljavafx/scene/control/IndexedCell;

    move-result-object v28

    move-object/from16 v14, v28

    .line 1346
    .local v14, "cell":Ljavafx/scene/control/IndexedCell;, "TT;"
    move-object/from16 v28, v3

    move-object/from16 v29, v14

    move/from16 v30, v8

    invoke-virtual/range {v28 .. v30}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->setCellIndex(Ljavafx/scene/control/IndexedCell;I)V

    .line 1347
    move-object/from16 v28, v3

    move-object/from16 v29, v14

    invoke-virtual/range {v28 .. v29}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->resizeCellSize(Ljavafx/scene/control/IndexedCell;)V

    .line 1348
    move-object/from16 v28, v3

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->cells:Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;

    move-object/from16 v28, v0

    move-object/from16 v29, v14

    invoke-virtual/range {v28 .. v29}, Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;->addLast(Ljava/lang/Object;)V

    .line 1351
    move-object/from16 v28, v3

    move-object/from16 v29, v14

    move-wide/from16 v30, v6

    invoke-virtual/range {v28 .. v31}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->positionCell(Ljavafx/scene/control/IndexedCell;D)V

    .line 1352
    move-object/from16 v28, v3

    move-object/from16 v29, v3

    invoke-virtual/range {v29 .. v29}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->getMaxPrefBreadth()D

    move-result-wide v29

    move-object/from16 v31, v3

    move-object/from16 v32, v14

    invoke-virtual/range {v31 .. v32}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->getCellBreadth(Ljavafx/scene/control/Cell;)D

    move-result-wide v31

    invoke-static/range {v29 .. v32}, Ljava/lang/Math;->max(DD)D

    move-result-wide v29

    invoke-virtual/range {v28 .. v30}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->setMaxPrefBreadth(D)V

    .line 1354
    move-wide/from16 v28, v6

    move-object/from16 v30, v3

    move-object/from16 v31, v14

    invoke-virtual/range {v30 .. v31}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->getCellLength(Ljavafx/scene/control/IndexedCell;)D

    move-result-wide v30

    add-double v28, v28, v30

    move-wide/from16 v6, v28

    .line 1355
    move-object/from16 v28, v14

    const/16 v29, 0x1

    invoke-virtual/range {v28 .. v29}, Ljavafx/scene/control/IndexedCell;->setVisible(Z)V

    .line 1356
    add-int/lit8 v8, v8, 0x1

    .line 1357
    goto/16 :goto_2

    .line 1366
    .end local v14    # "cell":Ljavafx/scene/control/IndexedCell;, "TT;"
    :cond_8
    move-object/from16 v28, v3

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->cells:Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljavafx/scene/control/IndexedCell;

    move-object/from16 v14, v28

    .line 1367
    .local v14, "firstCell":Ljavafx/scene/control/IndexedCell;, "TT;"
    move-object/from16 v28, v3

    move-object/from16 v29, v14

    invoke-virtual/range {v28 .. v29}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->getCellIndex(Ljavafx/scene/control/IndexedCell;)I

    move-result v28

    move/from16 v8, v28

    .line 1368
    move-object/from16 v28, v3

    invoke-virtual/range {v28 .. v28}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->getLastVisibleCell()Ljavafx/scene/control/IndexedCell;

    move-result-object v28

    move-object/from16 v15, v28

    .line 1369
    .local v15, "lastNonEmptyCell":Ljavafx/scene/control/IndexedCell;, "TT;"
    move-object/from16 v28, v3

    move-object/from16 v29, v14

    invoke-virtual/range {v28 .. v29}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->getCellPosition(Ljavafx/scene/control/IndexedCell;)D

    move-result-wide v28

    move-wide/from16 v16, v28

    .line 1370
    .local v16, "start":D
    move-object/from16 v28, v3

    move-object/from16 v29, v15

    invoke-virtual/range {v28 .. v29}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->getCellPosition(Ljavafx/scene/control/IndexedCell;)D

    move-result-wide v28

    move-object/from16 v30, v3

    move-object/from16 v31, v15

    invoke-virtual/range {v30 .. v31}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->getCellLength(Ljavafx/scene/control/IndexedCell;)D

    move-result-wide v30

    add-double v28, v28, v30

    move-wide/from16 v18, v28

    .line 1371
    .local v18, "end":D
    move/from16 v28, v8

    if-nez v28, :cond_9

    move/from16 v28, v8

    if-nez v28, :cond_d

    move-wide/from16 v28, v16

    const-wide/16 v30, 0x0

    cmpg-double v28, v28, v30

    if-gez v28, :cond_d

    :cond_9
    move/from16 v28, v4

    if-eqz v28, :cond_d

    move-object/from16 v28, v15

    if-eqz v28, :cond_d

    move-object/from16 v28, v3

    move-object/from16 v29, v15

    .line 1372
    invoke-virtual/range {v28 .. v29}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->getCellIndex(Ljavafx/scene/control/IndexedCell;)I

    move-result v28

    move-object/from16 v29, v3

    move-object/from16 v0, v29

    iget v0, v0, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->cellCount:I

    move/from16 v29, v0

    const/16 v30, 0x1

    add-int/lit8 v29, v29, -0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_d

    move-wide/from16 v28, v18

    move-wide/from16 v30, v10

    cmpg-double v28, v28, v30

    if-gez v28, :cond_d

    .line 1374
    move-wide/from16 v28, v18

    move-wide/from16 v20, v28

    .line 1375
    .local v20, "prospectiveEnd":D
    move-wide/from16 v28, v10

    move-wide/from16 v30, v18

    sub-double v28, v28, v30

    move-wide/from16 v22, v28

    .line 1376
    .local v22, "distance":D
    :goto_4
    move-wide/from16 v28, v20

    move-wide/from16 v30, v10

    cmpg-double v28, v28, v30

    if-gez v28, :cond_a

    move/from16 v28, v8

    if-eqz v28, :cond_a

    move-wide/from16 v28, v16

    move-wide/from16 v0, v28

    neg-double v0, v0

    move-wide/from16 v28, v0

    move-wide/from16 v30, v22

    cmpg-double v28, v28, v30

    if-gez v28, :cond_a

    .line 1377
    add-int/lit8 v8, v8, -0x1

    .line 1378
    move-object/from16 v28, v3

    move/from16 v29, v8

    invoke-virtual/range {v28 .. v29}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->getAvailableCell(I)Ljavafx/scene/control/IndexedCell;

    move-result-object v28

    move-object/from16 v24, v28

    .line 1379
    .local v24, "cell":Ljavafx/scene/control/IndexedCell;, "TT;"
    move-object/from16 v28, v3

    move-object/from16 v29, v24

    move/from16 v30, v8

    invoke-virtual/range {v28 .. v30}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->setCellIndex(Ljavafx/scene/control/IndexedCell;I)V

    .line 1380
    move-object/from16 v28, v3

    move-object/from16 v29, v24

    invoke-virtual/range {v28 .. v29}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->resizeCellSize(Ljavafx/scene/control/IndexedCell;)V

    .line 1381
    move-object/from16 v28, v3

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->cells:Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;

    move-object/from16 v28, v0

    move-object/from16 v29, v24

    invoke-virtual/range {v28 .. v29}, Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;->addFirst(Ljava/lang/Object;)V

    .line 1382
    move-object/from16 v28, v3

    move-object/from16 v29, v24

    invoke-virtual/range {v28 .. v29}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->getCellLength(Ljavafx/scene/control/IndexedCell;)D

    move-result-wide v28

    move-wide/from16 v25, v28

    .line 1383
    .local v25, "cellLength":D
    move-wide/from16 v28, v16

    move-wide/from16 v30, v25

    sub-double v28, v28, v30

    move-wide/from16 v16, v28

    .line 1384
    move-wide/from16 v28, v20

    move-wide/from16 v30, v25

    add-double v28, v28, v30

    move-wide/from16 v20, v28

    .line 1385
    move-object/from16 v28, v3

    move-object/from16 v29, v24

    move-wide/from16 v30, v16

    invoke-virtual/range {v28 .. v31}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->positionCell(Ljavafx/scene/control/IndexedCell;D)V

    .line 1386
    move-object/from16 v28, v3

    move-object/from16 v29, v3

    invoke-virtual/range {v29 .. v29}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->getMaxPrefBreadth()D

    move-result-wide v29

    move-object/from16 v31, v3

    move-object/from16 v32, v24

    invoke-virtual/range {v31 .. v32}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->getCellBreadth(Ljavafx/scene/control/Cell;)D

    move-result-wide v31

    invoke-static/range {v29 .. v32}, Ljava/lang/Math;->max(DD)D

    move-result-wide v29

    invoke-virtual/range {v28 .. v30}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->setMaxPrefBreadth(D)V

    .line 1387
    move-object/from16 v28, v24

    const/16 v29, 0x1

    invoke-virtual/range {v28 .. v29}, Ljavafx/scene/control/IndexedCell;->setVisible(Z)V

    .line 1388
    goto/16 :goto_4

    .line 1391
    .end local v24    # "cell":Ljavafx/scene/control/IndexedCell;, "TT;"
    .end local v25    # "cellLength":D
    :cond_a
    move-object/from16 v28, v3

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->cells:Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljavafx/scene/control/IndexedCell;

    move-object/from16 v14, v28

    .line 1392
    move-object/from16 v28, v3

    move-object/from16 v29, v14

    invoke-virtual/range {v28 .. v29}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->getCellPosition(Ljavafx/scene/control/IndexedCell;)D

    move-result-wide v28

    move-wide/from16 v16, v28

    .line 1393
    move-wide/from16 v28, v10

    move-wide/from16 v30, v18

    sub-double v28, v28, v30

    move-wide/from16 v24, v28

    .line 1394
    .local v24, "delta":D
    move-object/from16 v28, v3

    move-object/from16 v29, v14

    invoke-virtual/range {v28 .. v29}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->getCellIndex(Ljavafx/scene/control/IndexedCell;)I

    move-result v28

    if-nez v28, :cond_b

    move-wide/from16 v28, v24

    move-wide/from16 v30, v16

    move-wide/from16 v0, v30

    neg-double v0, v0

    move-wide/from16 v30, v0

    cmpl-double v28, v28, v30

    if-lez v28, :cond_b

    .line 1395
    move-wide/from16 v28, v16

    move-wide/from16 v0, v28

    neg-double v0, v0

    move-wide/from16 v28, v0

    move-wide/from16 v24, v28

    .line 1398
    :cond_b
    const/16 v28, 0x0

    move/from16 v26, v28

    .local v26, "i":I
    :goto_5
    move/from16 v28, v26

    move-object/from16 v29, v3

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->cells:Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;->size()I

    move-result v29

    move/from16 v0, v28

    move/from16 v1, v29

    if-ge v0, v1, :cond_c

    .line 1399
    move-object/from16 v28, v3

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->cells:Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;

    move-object/from16 v28, v0

    move/from16 v29, v26

    invoke-virtual/range {v28 .. v29}, Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljavafx/scene/control/IndexedCell;

    move-object/from16 v27, v28

    .line 1400
    .local v27, "cell":Ljavafx/scene/control/IndexedCell;, "TT;"
    move-object/from16 v28, v3

    move-object/from16 v29, v27

    move-object/from16 v30, v3

    move-object/from16 v31, v27

    invoke-virtual/range {v30 .. v31}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->getCellPosition(Ljavafx/scene/control/IndexedCell;)D

    move-result-wide v30

    move-wide/from16 v32, v24

    add-double v30, v30, v32

    invoke-virtual/range {v28 .. v31}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->positionCell(Ljavafx/scene/control/IndexedCell;D)V

    .line 1398
    add-int/lit8 v26, v26, 0x1

    goto :goto_5

    .line 1406
    .end local v27    # "cell":Ljavafx/scene/control/IndexedCell;, "TT;"
    :cond_c
    move-object/from16 v28, v3

    move-object/from16 v29, v14

    invoke-virtual/range {v28 .. v29}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->getCellPosition(Ljavafx/scene/control/IndexedCell;)D

    move-result-wide v28

    move-wide/from16 v16, v28

    .line 1407
    move-object/from16 v28, v3

    move-object/from16 v29, v14

    invoke-virtual/range {v28 .. v29}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->getCellIndex(Ljavafx/scene/control/IndexedCell;)I

    move-result v28

    if-nez v28, :cond_e

    move-wide/from16 v28, v16

    const-wide/16 v30, 0x0

    cmpl-double v28, v28, v30

    if-nez v28, :cond_e

    .line 1408
    move-object/from16 v28, v3

    const-wide/16 v29, 0x0

    invoke-virtual/range {v28 .. v30}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->setPosition(D)V

    .line 1414
    .end local v20    # "prospectiveEnd":D
    .end local v22    # "distance":D
    .end local v24    # "delta":D
    .end local v26    # "i":I
    :cond_d
    :goto_6
    move/from16 v28, v9

    move/from16 v3, v28

    goto/16 :goto_0

    .line 1409
    .restart local v20    # "prospectiveEnd":D
    .restart local v22    # "distance":D
    .restart local v24    # "delta":D
    .restart local v26    # "i":I
    :cond_e
    move-object/from16 v28, v3

    invoke-virtual/range {v28 .. v28}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->getPosition()D

    move-result-wide v28

    const-wide/high16 v30, 0x3ff0000000000000L    # 1.0

    cmpl-double v28, v28, v30

    if-eqz v28, :cond_d

    .line 1410
    move-object/from16 v28, v3

    const-wide/high16 v29, 0x3ff0000000000000L    # 1.0

    invoke-virtual/range {v28 .. v30}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->setPosition(D)V

    goto :goto_6
.end method

.method public adjustPixels(D)D
    .locals 31

    .prologue
    .line 2321
    move-object/from16 v3, p0

    .local v3, "this":Lcom/sun/javafx/scene/control/skin/VirtualFlow;, "Lcom/sun/javafx/scene/control/skin/VirtualFlow<TT;>;"
    move-wide/from16 v4, p1

    .local v4, "delta":D
    move-wide/from16 v24, v4

    const-wide/16 v26, 0x0

    cmpl-double v24, v24, v26

    if-nez v24, :cond_0

    const-wide/16 v24, 0x0

    move-wide/from16 v3, v24

    .line 2433
    .end local v3    # "this":Lcom/sun/javafx/scene/control/skin/VirtualFlow;, "Lcom/sun/javafx/scene/control/skin/VirtualFlow<TT;>;"
    :goto_0
    return-wide v3

    .line 2323
    .restart local v3    # "this":Lcom/sun/javafx/scene/control/skin/VirtualFlow;, "Lcom/sun/javafx/scene/control/skin/VirtualFlow<TT;>;"
    :cond_0
    move-object/from16 v24, v3

    invoke-virtual/range {v24 .. v24}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->isVertical()Z

    move-result v24

    move/from16 v6, v24

    .line 2324
    .local v6, "isVertical":Z
    move/from16 v24, v6

    if-eqz v24, :cond_3

    move-object/from16 v24, v3

    move-object/from16 v0, v24

    iget-boolean v0, v0, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->tempVisibility:Z

    move/from16 v24, v0

    if-eqz v24, :cond_2

    move-object/from16 v24, v3

    move-object/from16 v0, v24

    iget-boolean v0, v0, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->needLengthBar:Z

    move/from16 v24, v0

    if-nez v24, :cond_3

    .line 2325
    :cond_1
    :goto_1
    const-wide/16 v24, 0x0

    move-wide/from16 v3, v24

    goto :goto_0

    .line 2324
    :cond_2
    move-object/from16 v24, v3

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->vbar:Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;->isVisible()Z

    move-result v24

    if-eqz v24, :cond_1

    :cond_3
    move/from16 v24, v6

    if-nez v24, :cond_5

    move-object/from16 v24, v3

    move-object/from16 v0, v24

    iget-boolean v0, v0, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->tempVisibility:Z

    move/from16 v24, v0

    if-eqz v24, :cond_4

    move-object/from16 v24, v3

    move-object/from16 v0, v24

    iget-boolean v0, v0, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->needLengthBar:Z

    move/from16 v24, v0

    if-nez v24, :cond_5

    goto :goto_1

    :cond_4
    move-object/from16 v24, v3

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->hbar:Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;

    move-object/from16 v24, v0

    .line 2325
    invoke-virtual/range {v24 .. v24}, Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;->isVisible()Z

    move-result v24

    if-eqz v24, :cond_1

    .line 2327
    :cond_5
    move-object/from16 v24, v3

    invoke-virtual/range {v24 .. v24}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->getPosition()D

    move-result-wide v24

    move-wide/from16 v7, v24

    .line 2328
    .local v7, "pos":D
    move-wide/from16 v24, v7

    const-wide/16 v26, 0x0

    cmpl-double v24, v24, v26

    if-nez v24, :cond_6

    move-wide/from16 v24, v4

    const-wide/16 v26, 0x0

    cmpg-double v24, v24, v26

    if-gez v24, :cond_6

    const-wide/16 v24, 0x0

    move-wide/from16 v3, v24

    goto :goto_0

    .line 2329
    :cond_6
    move-wide/from16 v24, v7

    const-wide/high16 v26, 0x3ff0000000000000L    # 1.0

    cmpl-double v24, v24, v26

    if-nez v24, :cond_7

    move-wide/from16 v24, v4

    const-wide/16 v26, 0x0

    cmpl-double v24, v24, v26

    if-lez v24, :cond_7

    const-wide/16 v24, 0x0

    move-wide/from16 v3, v24

    goto/16 :goto_0

    .line 2331
    :cond_7
    move-object/from16 v24, v3

    move-wide/from16 v25, v4

    invoke-direct/range {v24 .. v26}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->adjustByPixelAmount(D)V

    .line 2332
    move-wide/from16 v24, v7

    move-object/from16 v26, v3

    invoke-virtual/range {v26 .. v26}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->getPosition()D

    move-result-wide v26

    cmpl-double v24, v24, v26

    if-nez v24, :cond_8

    .line 2335
    const-wide/16 v24, 0x0

    move-wide/from16 v3, v24

    goto/16 :goto_0

    .line 2351
    :cond_8
    move-object/from16 v24, v3

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->cells:Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;->size()I

    move-result v24

    if-lez v24, :cond_11

    .line 2352
    const/16 v24, 0x0

    move/from16 v9, v24

    .local v9, "i":I
    :goto_2
    move/from16 v24, v9

    move-object/from16 v25, v3

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->cells:Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;->size()I

    move-result v25

    move/from16 v0, v24

    move/from16 v1, v25

    if-ge v0, v1, :cond_a

    .line 2353
    move-object/from16 v24, v3

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->cells:Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;

    move-object/from16 v24, v0

    move/from16 v25, v9

    invoke-virtual/range {v24 .. v25}, Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljavafx/scene/control/IndexedCell;

    move-object/from16 v10, v24

    .line 2354
    .local v10, "cell":Ljavafx/scene/control/IndexedCell;, "TT;"
    sget-boolean v24, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->$assertionsDisabled:Z

    if-nez v24, :cond_9

    move-object/from16 v24, v10

    if-nez v24, :cond_9

    new-instance v24, Ljava/lang/AssertionError;

    move-object/from16 v30, v24

    move-object/from16 v24, v30

    move-object/from16 v25, v30

    invoke-direct/range {v25 .. v25}, Ljava/lang/AssertionError;-><init>()V

    throw v24

    .line 2355
    :cond_9
    move-object/from16 v24, v3

    move-object/from16 v25, v10

    move-object/from16 v26, v3

    move-object/from16 v27, v10

    invoke-virtual/range {v26 .. v27}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->getCellPosition(Ljavafx/scene/control/IndexedCell;)D

    move-result-wide v26

    move-wide/from16 v28, v4

    sub-double v26, v26, v28

    invoke-virtual/range {v24 .. v27}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->positionCell(Ljavafx/scene/control/IndexedCell;D)V

    .line 2352
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 2359
    .end local v10    # "cell":Ljavafx/scene/control/IndexedCell;, "TT;"
    :cond_a
    move-object/from16 v24, v3

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->cells:Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljavafx/scene/control/IndexedCell;

    move-object/from16 v9, v24

    .line 2360
    .local v9, "firstCell":Ljavafx/scene/control/IndexedCell;, "TT;"
    move-object/from16 v24, v9

    if-nez v24, :cond_b

    const-wide/16 v24, 0x0

    :goto_3
    move-wide/from16 v10, v24

    .line 2361
    .local v10, "layoutY":D
    const/16 v24, 0x0

    move/from16 v12, v24

    .local v12, "i":I
    :goto_4
    move/from16 v24, v12

    move-object/from16 v25, v3

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->cells:Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;->size()I

    move-result v25

    move/from16 v0, v24

    move/from16 v1, v25

    if-ge v0, v1, :cond_e

    .line 2362
    move-object/from16 v24, v3

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->cells:Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;

    move-object/from16 v24, v0

    move/from16 v25, v12

    invoke-virtual/range {v24 .. v25}, Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljavafx/scene/control/IndexedCell;

    move-object/from16 v13, v24

    .line 2363
    .local v13, "cell":Ljavafx/scene/control/IndexedCell;, "TT;"
    sget-boolean v24, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->$assertionsDisabled:Z

    if-nez v24, :cond_c

    move-object/from16 v24, v13

    if-nez v24, :cond_c

    new-instance v24, Ljava/lang/AssertionError;

    move-object/from16 v30, v24

    move-object/from16 v24, v30

    move-object/from16 v25, v30

    invoke-direct/range {v25 .. v25}, Ljava/lang/AssertionError;-><init>()V

    throw v24

    .line 2360
    .end local v10    # "layoutY":D
    .end local v12    # "i":I
    .end local v13    # "cell":Ljavafx/scene/control/IndexedCell;, "TT;"
    :cond_b
    move-object/from16 v24, v3

    move-object/from16 v25, v9

    invoke-virtual/range {v24 .. v25}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->getCellPosition(Ljavafx/scene/control/IndexedCell;)D

    move-result-wide v24

    goto :goto_3

    .line 2364
    .restart local v10    # "layoutY":D
    .restart local v12    # "i":I
    .restart local v13    # "cell":Ljavafx/scene/control/IndexedCell;, "TT;"
    :cond_c
    move-object/from16 v24, v3

    move-object/from16 v25, v13

    invoke-virtual/range {v24 .. v25}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->getCellPosition(Ljavafx/scene/control/IndexedCell;)D

    move-result-wide v24

    move-wide/from16 v14, v24

    .line 2365
    .local v14, "actualLayoutY":D
    move-wide/from16 v24, v14

    move-wide/from16 v26, v10

    cmpl-double v24, v24, v26

    if-eqz v24, :cond_d

    .line 2367
    move-object/from16 v24, v3

    move-object/from16 v25, v13

    move-wide/from16 v26, v10

    invoke-virtual/range {v24 .. v27}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->positionCell(Ljavafx/scene/control/IndexedCell;D)V

    .line 2370
    :cond_d
    move-wide/from16 v24, v10

    move-object/from16 v26, v3

    move-object/from16 v27, v13

    invoke-virtual/range {v26 .. v27}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->getCellLength(Ljavafx/scene/control/IndexedCell;)D

    move-result-wide v26

    add-double v24, v24, v26

    move-wide/from16 v10, v24

    .line 2361
    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    .line 2373
    .end local v13    # "cell":Ljavafx/scene/control/IndexedCell;, "TT;"
    .end local v14    # "actualLayoutY":D
    :cond_e
    move-object/from16 v24, v3

    invoke-direct/range {v24 .. v24}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->cull()V

    .line 2374
    move-object/from16 v24, v3

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->cells:Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljavafx/scene/control/IndexedCell;

    move-object/from16 v9, v24

    .line 2377
    move-object/from16 v24, v9

    if-eqz v24, :cond_f

    .line 2378
    move-object/from16 v24, v3

    move-object/from16 v25, v9

    invoke-virtual/range {v24 .. v25}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->getCellIndex(Ljavafx/scene/control/IndexedCell;)I

    move-result v24

    move/from16 v12, v24

    .line 2379
    .local v12, "firstIndex":I
    move-object/from16 v24, v3

    move/from16 v25, v12

    const/16 v26, 0x1

    add-int/lit8 v25, v25, -0x1

    invoke-virtual/range {v24 .. v25}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->getCellLength(I)D

    move-result-wide v24

    move-wide/from16 v13, v24

    .line 2380
    .local v13, "prevIndexSize":D
    move-object/from16 v24, v3

    move/from16 v25, v12

    const/16 v26, 0x1

    add-int/lit8 v25, v25, -0x1

    move-object/from16 v26, v3

    move-object/from16 v27, v9

    invoke-virtual/range {v26 .. v27}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->getCellPosition(Ljavafx/scene/control/IndexedCell;)D

    move-result-wide v26

    move-wide/from16 v28, v13

    sub-double v26, v26, v28

    invoke-virtual/range {v24 .. v27}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->addLeadingCells(ID)V

    .line 2381
    .line 2399
    .end local v12    # "firstIndex":I
    .end local v13    # "prevIndexSize":D
    :goto_5
    move-object/from16 v24, v3

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->addTrailingCells(Z)Z

    move-result v24

    if-nez v24, :cond_11

    .line 2403
    move-object/from16 v24, v3

    invoke-virtual/range {v24 .. v24}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->getLastVisibleCell()Ljavafx/scene/control/IndexedCell;

    move-result-object v24

    move-object/from16 v12, v24

    .line 2404
    .local v12, "lastCell":Ljavafx/scene/control/IndexedCell;, "TT;"
    move-object/from16 v24, v3

    move-object/from16 v25, v12

    invoke-virtual/range {v24 .. v25}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->getCellLength(Ljavafx/scene/control/IndexedCell;)D

    move-result-wide v24

    move-wide/from16 v13, v24

    .line 2405
    .local v13, "lastCellSize":D
    move-object/from16 v24, v3

    move-object/from16 v25, v12

    invoke-virtual/range {v24 .. v25}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->getCellPosition(Ljavafx/scene/control/IndexedCell;)D

    move-result-wide v24

    move-wide/from16 v26, v13

    add-double v24, v24, v26

    move-wide/from16 v15, v24

    .line 2406
    .local v15, "cellEnd":D
    move-object/from16 v24, v3

    invoke-virtual/range {v24 .. v24}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->getViewportLength()D

    move-result-wide v24

    move-wide/from16 v17, v24

    .line 2408
    .local v17, "viewportLength":D
    move-wide/from16 v24, v15

    move-wide/from16 v26, v17

    cmpg-double v24, v24, v26

    if-gez v24, :cond_11

    .line 2410
    move-wide/from16 v24, v17

    move-wide/from16 v26, v15

    sub-double v24, v24, v26

    move-wide/from16 v19, v24

    .line 2411
    .local v19, "emptySize":D
    const/16 v24, 0x0

    move/from16 v21, v24

    .local v21, "i":I
    :goto_6
    move/from16 v24, v21

    move-object/from16 v25, v3

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->cells:Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;->size()I

    move-result v25

    move/from16 v0, v24

    move/from16 v1, v25

    if-ge v0, v1, :cond_10

    .line 2412
    move-object/from16 v24, v3

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->cells:Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;

    move-object/from16 v24, v0

    move/from16 v25, v21

    invoke-virtual/range {v24 .. v25}, Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljavafx/scene/control/IndexedCell;

    move-object/from16 v22, v24

    .line 2413
    .local v22, "cell":Ljavafx/scene/control/IndexedCell;, "TT;"
    move-object/from16 v24, v3

    move-object/from16 v25, v22

    move-object/from16 v26, v3

    move-object/from16 v27, v22

    invoke-virtual/range {v26 .. v27}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->getCellPosition(Ljavafx/scene/control/IndexedCell;)D

    move-result-wide v26

    move-wide/from16 v28, v19

    add-double v26, v26, v28

    invoke-virtual/range {v24 .. v27}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->positionCell(Ljavafx/scene/control/IndexedCell;D)V

    .line 2411
    add-int/lit8 v21, v21, 0x1

    goto :goto_6

    .line 2382
    .end local v13    # "lastCellSize":D
    .end local v15    # "cellEnd":D
    .end local v17    # "viewportLength":D
    .end local v19    # "emptySize":D
    .end local v21    # "i":I
    .end local v22    # "cell":Ljavafx/scene/control/IndexedCell;, "TT;"
    .local v12, "i":I
    :cond_f
    move-object/from16 v24, v3

    invoke-direct/range {v24 .. v24}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->computeCurrentIndex()I

    move-result v24

    move/from16 v12, v24

    .line 2386
    .local v12, "currentIndex":I
    move-object/from16 v24, v3

    move-object/from16 v25, v3

    invoke-virtual/range {v25 .. v25}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->getPosition()D

    move-result-wide v25

    invoke-direct/range {v24 .. v26}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->computeViewportOffset(D)D

    move-result-wide v24

    move-wide/from16 v0, v24

    neg-double v0, v0

    move-wide/from16 v24, v0

    move-wide/from16 v13, v24

    .line 2391
    .local v13, "offset":D
    move-object/from16 v24, v3

    move/from16 v25, v12

    move-wide/from16 v26, v13

    invoke-virtual/range {v24 .. v27}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->addLeadingCells(ID)V

    goto/16 :goto_5

    .line 2415
    .local v12, "lastCell":Ljavafx/scene/control/IndexedCell;, "TT;"
    .local v13, "lastCellSize":D
    .restart local v15    # "cellEnd":D
    .restart local v17    # "viewportLength":D
    .restart local v19    # "emptySize":D
    .restart local v21    # "i":I
    :cond_10
    move-object/from16 v24, v3

    const-wide/high16 v25, 0x3ff0000000000000L    # 1.0

    invoke-virtual/range {v24 .. v26}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->setPosition(D)V

    .line 2417
    move-object/from16 v24, v3

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->cells:Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljavafx/scene/control/IndexedCell;

    move-object/from16 v9, v24

    .line 2418
    move-object/from16 v24, v3

    move-object/from16 v25, v9

    invoke-virtual/range {v24 .. v25}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->getCellIndex(Ljavafx/scene/control/IndexedCell;)I

    move-result v24

    move/from16 v21, v24

    .line 2419
    .local v21, "firstIndex":I
    move-object/from16 v24, v3

    move/from16 v25, v21

    const/16 v26, 0x1

    add-int/lit8 v25, v25, -0x1

    invoke-virtual/range {v24 .. v25}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->getCellLength(I)D

    move-result-wide v24

    move-wide/from16 v22, v24

    .line 2420
    .local v22, "prevIndexSize":D
    move-object/from16 v24, v3

    move/from16 v25, v21

    const/16 v26, 0x1

    add-int/lit8 v25, v25, -0x1

    move-object/from16 v26, v3

    move-object/from16 v27, v9

    invoke-virtual/range {v26 .. v27}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->getCellPosition(Ljavafx/scene/control/IndexedCell;)D

    move-result-wide v26

    move-wide/from16 v28, v22

    sub-double v26, v26, v28

    invoke-virtual/range {v24 .. v27}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->addLeadingCells(ID)V

    .line 2426
    .end local v9    # "firstCell":Ljavafx/scene/control/IndexedCell;, "TT;"
    .end local v10    # "layoutY":D
    .end local v12    # "lastCell":Ljavafx/scene/control/IndexedCell;, "TT;"
    .end local v13    # "lastCellSize":D
    .end local v15    # "cellEnd":D
    .end local v17    # "viewportLength":D
    .end local v19    # "emptySize":D
    .end local v21    # "firstIndex":I
    .end local v22    # "prevIndexSize":D
    :cond_11
    move-object/from16 v24, v3

    invoke-direct/range {v24 .. v24}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->cull()V

    .line 2429
    move-object/from16 v24, v3

    const/16 v25, 0x0

    invoke-direct/range {v24 .. v25}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->updateScrollBarsAndCells(Z)V

    .line 2430
    move-object/from16 v24, v3

    move-object/from16 v25, v3

    invoke-virtual/range {v25 .. v25}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->getPosition()D

    move-result-wide v25

    move-wide/from16 v0, v25

    move-object/from16 v2, v24

    iput-wide v0, v2, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->lastPosition:D

    .line 2433
    move-wide/from16 v24, v4

    move-wide/from16 v3, v24

    goto/16 :goto_0
.end method

.method protected computePrefHeight(D)D
    .locals 11

    .prologue
    .line 2500
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/VirtualFlow;, "Lcom/sun/javafx/scene/control/skin/VirtualFlow<TT;>;"
    move-wide v2, p1

    .local v2, "width":D
    move-object v6, v1

    invoke-virtual {v6}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->isVertical()Z

    move-result v6

    if-eqz v6, :cond_0

    move-object v6, v1

    invoke-direct {v6}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->getPrefLength()D

    move-result-wide v6

    :goto_0
    move-wide v4, v6

    .line 2501
    .local v4, "h":D
    move-wide v6, v4

    move-object v8, v1

    iget-object v8, v8, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->hbar:Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;

    const-wide/high16 v9, -0x4010000000000000L    # -1.0

    invoke-virtual {v8, v9, v10}, Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;->prefHeight(D)D

    move-result-wide v8

    add-double/2addr v6, v8

    move-wide v1, v6

    .end local v1    # "this":Lcom/sun/javafx/scene/control/skin/VirtualFlow;, "Lcom/sun/javafx/scene/control/skin/VirtualFlow<TT;>;"
    return-wide v1

    .line 2500
    .end local v4    # "h":D
    .restart local v1    # "this":Lcom/sun/javafx/scene/control/skin/VirtualFlow;, "Lcom/sun/javafx/scene/control/skin/VirtualFlow<TT;>;"
    :cond_0
    move-object v6, v1

    move-wide v7, v2

    invoke-direct {v6, v7, v8}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->getPrefBreadth(D)D

    move-result-wide v6

    goto :goto_0
.end method

.method protected computePrefWidth(D)D
    .locals 11

    .prologue
    .line 2495
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/VirtualFlow;, "Lcom/sun/javafx/scene/control/skin/VirtualFlow<TT;>;"
    move-wide v2, p1

    .local v2, "height":D
    move-object v6, v1

    invoke-virtual {v6}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->isVertical()Z

    move-result v6

    if-eqz v6, :cond_0

    move-object v6, v1

    move-wide v7, v2

    invoke-direct {v6, v7, v8}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->getPrefBreadth(D)D

    move-result-wide v6

    :goto_0
    move-wide v4, v6

    .line 2496
    .local v4, "w":D
    move-wide v6, v4

    move-object v8, v1

    iget-object v8, v8, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->vbar:Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;

    const-wide/high16 v9, -0x4010000000000000L    # -1.0

    invoke-virtual {v8, v9, v10}, Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;->prefWidth(D)D

    move-result-wide v8

    add-double/2addr v6, v8

    move-wide v1, v6

    .end local v1    # "this":Lcom/sun/javafx/scene/control/skin/VirtualFlow;, "Lcom/sun/javafx/scene/control/skin/VirtualFlow<TT;>;"
    return-wide v1

    .line 2495
    .end local v4    # "w":D
    .restart local v1    # "this":Lcom/sun/javafx/scene/control/skin/VirtualFlow;, "Lcom/sun/javafx/scene/control/skin/VirtualFlow<TT;>;"
    :cond_0
    move-object v6, v1

    invoke-direct {v6}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->getPrefLength()D

    move-result-wide v6

    goto :goto_0
.end method

.method protected getAvailableCell(I)Ljavafx/scene/control/IndexedCell;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .prologue
    .line 1991
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/VirtualFlow;, "Lcom/sun/javafx/scene/control/skin/VirtualFlow<TT;>;"
    move v1, p1

    .local v1, "prefIndex":I
    const/4 v8, 0x0

    move-object v2, v8

    .line 1995
    .local v2, "cell":Ljavafx/scene/control/IndexedCell;, "TT;"
    const/4 v8, 0x0

    move v3, v8

    .local v3, "i":I
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->pile:Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;

    invoke-virtual {v8}, Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;->size()I

    move-result v8

    move v4, v8

    .local v4, "max":I
    :goto_0
    move v8, v3

    move v9, v4

    if-ge v8, v9, :cond_1

    .line 1996
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->pile:Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;

    move v9, v3

    invoke-virtual {v8, v9}, Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljavafx/scene/control/IndexedCell;

    move-object v5, v8

    .line 1997
    .local v5, "_cell":Ljavafx/scene/control/IndexedCell;, "TT;"
    sget-boolean v8, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->$assertionsDisabled:Z

    if-nez v8, :cond_0

    move-object v8, v5

    if-nez v8, :cond_0

    new-instance v8, Ljava/lang/AssertionError;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    invoke-direct {v9}, Ljava/lang/AssertionError;-><init>()V

    throw v8

    .line 1999
    :cond_0
    move-object v8, v0

    move-object v9, v5

    invoke-virtual {v8, v9}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->getCellIndex(Ljavafx/scene/control/IndexedCell;)I

    move-result v8

    move v9, v1

    if-ne v8, v9, :cond_5

    .line 2000
    move-object v8, v5

    move-object v2, v8

    .line 2001
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->pile:Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;

    move v9, v3

    invoke-virtual {v8, v9}, Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;->remove(I)Ljava/lang/Object;

    move-result-object v8

    .line 2002
    .line 2007
    .end local v5    # "_cell":Ljavafx/scene/control/IndexedCell;, "TT;"
    :cond_1
    move-object v8, v2

    if-nez v8, :cond_3

    .line 2008
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->pile:Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;

    invoke-virtual {v8}, Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;->size()I

    move-result v8

    if-lez v8, :cond_9

    .line 2013
    move v8, v1

    const/4 v9, 0x1

    and-int/lit8 v8, v8, 0x1

    if-nez v8, :cond_6

    const/4 v8, 0x1

    :goto_1
    move v3, v8

    .line 2014
    .local v3, "prefIndexIsEven":Z
    const/4 v8, 0x0

    move v4, v8

    .local v4, "i":I
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->pile:Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;

    invoke-virtual {v8}, Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;->size()I

    move-result v8

    move v5, v8

    .local v5, "max":I
    :goto_2
    move v8, v4

    move v9, v5

    if-ge v8, v9, :cond_2

    .line 2015
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->pile:Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;

    move v9, v4

    invoke-virtual {v8, v9}, Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljavafx/scene/control/IndexedCell;

    move-object v6, v8

    .line 2016
    .local v6, "c":Ljavafx/scene/control/IndexedCell;, "TT;"
    move-object v8, v0

    move-object v9, v6

    invoke-virtual {v8, v9}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->getCellIndex(Ljavafx/scene/control/IndexedCell;)I

    move-result v8

    move v7, v8

    .line 2018
    .local v7, "cellIndex":I
    move v8, v7

    const/4 v9, 0x1

    and-int/lit8 v8, v8, 0x1

    if-nez v8, :cond_7

    move v8, v3

    if-eqz v8, :cond_7

    .line 2019
    move-object v8, v6

    move-object v2, v8

    .line 2020
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->pile:Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;

    move v9, v4

    invoke-virtual {v8, v9}, Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;->remove(I)Ljava/lang/Object;

    move-result-object v8

    .line 2021
    .line 2029
    .end local v6    # "c":Ljavafx/scene/control/IndexedCell;, "TT;"
    .end local v7    # "cellIndex":I
    :cond_2
    :goto_3
    move-object v8, v2

    if-nez v8, :cond_3

    .line 2030
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->pile:Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;

    invoke-virtual {v8}, Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljavafx/scene/control/IndexedCell;

    move-object v2, v8

    .line 2032
    .line 2038
    .end local v3    # "prefIndexIsEven":Z
    .end local v4    # "i":I
    .end local v5    # "max":I
    :cond_3
    :goto_4
    move-object v8, v2

    invoke-virtual {v8}, Ljavafx/scene/control/IndexedCell;->getParent()Ljavafx/scene/Parent;

    move-result-object v8

    if-nez v8, :cond_4

    .line 2039
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->sheetChildren:Ljavafx/collections/ObservableList;

    move-object v9, v2

    invoke-interface {v8, v9}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v8

    .line 2042
    :cond_4
    move-object v8, v2

    move-object v0, v8

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/VirtualFlow;, "Lcom/sun/javafx/scene/control/skin/VirtualFlow<TT;>;"
    return-object v0

    .line 2004
    .restart local v0    # "this":Lcom/sun/javafx/scene/control/skin/VirtualFlow;, "Lcom/sun/javafx/scene/control/skin/VirtualFlow<TT;>;"
    .local v3, "i":I
    .local v4, "max":I
    .local v5, "_cell":Ljavafx/scene/control/IndexedCell;, "TT;"
    :cond_5
    const/4 v8, 0x0

    move-object v2, v8

    .line 1995
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 2013
    .end local v5    # "_cell":Ljavafx/scene/control/IndexedCell;, "TT;"
    :cond_6
    const/4 v8, 0x0

    goto :goto_1

    .line 2022
    .local v3, "prefIndexIsEven":Z
    .local v4, "i":I
    .local v5, "max":I
    .restart local v6    # "c":Ljavafx/scene/control/IndexedCell;, "TT;"
    .restart local v7    # "cellIndex":I
    :cond_7
    move v8, v7

    const/4 v9, 0x1

    and-int/lit8 v8, v8, 0x1

    const/4 v9, 0x1

    if-ne v8, v9, :cond_8

    move v8, v3

    if-nez v8, :cond_8

    .line 2023
    move-object v8, v6

    move-object v2, v8

    .line 2024
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->pile:Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;

    move v9, v4

    invoke-virtual {v8, v9}, Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;->remove(I)Ljava/lang/Object;

    move-result-object v8

    .line 2025
    goto :goto_3

    .line 2014
    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 2033
    .end local v5    # "max":I
    .end local v6    # "c":Ljavafx/scene/control/IndexedCell;, "TT;"
    .end local v7    # "cellIndex":I
    .local v3, "i":I
    .local v4, "max":I
    :cond_9
    move-object v8, v0

    invoke-virtual {v8}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->getCreateCell()Ljavafx/util/Callback;

    move-result-object v8

    move-object v9, v0

    invoke-interface {v8, v9}, Ljavafx/util/Callback;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljavafx/scene/control/IndexedCell;

    move-object v2, v8

    .line 2034
    move-object v8, v2

    invoke-virtual {v8}, Ljavafx/scene/control/IndexedCell;->getProperties()Ljavafx/collections/ObservableMap;

    move-result-object v8

    const-string v9, "newcell"

    const/4 v10, 0x0

    invoke-interface {v8, v9, v10}, Ljavafx/collections/ObservableMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    goto :goto_4
.end method

.method public getCell(I)Ljavafx/scene/control/IndexedCell;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .prologue
    .line 1752
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/VirtualFlow;, "Lcom/sun/javafx/scene/control/skin/VirtualFlow<TT;>;"
    move v1, p1

    .local v1, "index":I
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->cells:Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1755
    move-object v4, v0

    move v5, v1

    invoke-virtual {v4, v5}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->getVisibleCell(I)Ljavafx/scene/control/IndexedCell;

    move-result-object v4

    move-object v2, v4

    .line 1756
    .local v2, "cell":Ljavafx/scene/control/IndexedCell;, "TT;"
    move-object v4, v2

    if-eqz v4, :cond_0

    move-object v4, v2

    move-object v0, v4

    .line 1801
    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/VirtualFlow;, "Lcom/sun/javafx/scene/control/skin/VirtualFlow<TT;>;"
    .end local v2    # "cell":Ljavafx/scene/control/IndexedCell;, "TT;"
    :goto_0
    return-object v0

    .line 1760
    .restart local v0    # "this":Lcom/sun/javafx/scene/control/skin/VirtualFlow;, "Lcom/sun/javafx/scene/control/skin/VirtualFlow<TT;>;"
    :cond_0
    const/4 v4, 0x0

    move v2, v4

    .local v2, "i":I
    :goto_1
    move v4, v2

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->pile:Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;

    invoke-virtual {v5}, Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;->size()I

    move-result v5

    if-ge v4, v5, :cond_2

    .line 1761
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->pile:Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;

    move v5, v2

    invoke-virtual {v4, v5}, Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavafx/scene/control/IndexedCell;

    move-object v3, v4

    .line 1762
    .local v3, "cell":Ljavafx/scene/control/IndexedCell;, "TT;"
    move-object v4, v0

    move-object v5, v3

    invoke-virtual {v4, v5}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->getCellIndex(Ljavafx/scene/control/IndexedCell;)I

    move-result v4

    move v5, v1

    if-ne v4, v5, :cond_1

    .line 1767
    move-object v4, v3

    move-object v0, v4

    goto :goto_0

    .line 1760
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1771
    .end local v3    # "cell":Ljavafx/scene/control/IndexedCell;, "TT;"
    :cond_2
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->pile:Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;->size()I

    move-result v4

    if-lez v4, :cond_3

    .line 1772
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->pile:Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavafx/scene/control/IndexedCell;

    move-object v0, v4

    goto :goto_0

    .line 1776
    :cond_3
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->accumCell:Ljavafx/scene/control/IndexedCell;

    if-nez v4, :cond_4

    .line 1777
    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->getCreateCell()Ljavafx/util/Callback;

    move-result-object v4

    move-object v2, v4

    .line 1778
    .local v2, "createCell":Ljavafx/util/Callback;, "Ljavafx/util/Callback<Lcom/sun/javafx/scene/control/skin/VirtualFlow;TT;>;"
    move-object v4, v2

    if-eqz v4, :cond_4

    .line 1779
    move-object v4, v0

    move-object v5, v2

    move-object v6, v0

    invoke-interface {v5, v6}, Ljavafx/util/Callback;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljavafx/scene/control/IndexedCell;

    iput-object v5, v4, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->accumCell:Ljavafx/scene/control/IndexedCell;

    .line 1780
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->accumCell:Ljavafx/scene/control/IndexedCell;

    invoke-virtual {v4}, Ljavafx/scene/control/IndexedCell;->getProperties()Ljavafx/collections/ObservableMap;

    move-result-object v4

    const-string v5, "newcell"

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Ljavafx/collections/ObservableMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 1781
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->accumCellParent:Ljavafx/scene/Group;

    invoke-virtual {v4}, Ljavafx/scene/Group;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljavafx/scene/Node;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->accumCell:Ljavafx/scene/control/IndexedCell;

    aput-object v8, v6, v7

    invoke-interface {v4, v5}, Ljavafx/collections/ObservableList;->setAll([Ljava/lang/Object;)Z

    move-result v4

    .line 1791
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->accumCell:Ljavafx/scene/control/IndexedCell;

    sget-object v5, Ljavafx/scene/AccessibleRole;->NODE:Ljavafx/scene/AccessibleRole;

    invoke-virtual {v4, v5}, Ljavafx/scene/control/IndexedCell;->setAccessibleRole(Ljavafx/scene/AccessibleRole;)V

    .line 1792
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->accumCell:Ljavafx/scene/control/IndexedCell;

    invoke-virtual {v4}, Ljavafx/scene/control/IndexedCell;->getChildrenUnmodifiable()Ljavafx/collections/ObservableList;

    move-result-object v4

    move-object v5, v0

    invoke-static {v5}, Lcom/sun/javafx/scene/control/skin/VirtualFlow$$Lambda$13;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/VirtualFlow;)Ljavafx/beans/InvalidationListener;

    move-result-object v5

    invoke-interface {v4, v5}, Ljavafx/collections/ObservableList;->addListener(Ljavafx/beans/InvalidationListener;)V

    .line 1799
    .end local v2    # "createCell":Ljavafx/util/Callback;, "Ljavafx/util/Callback<Lcom/sun/javafx/scene/control/skin/VirtualFlow;TT;>;"
    :cond_4
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->accumCell:Ljavafx/scene/control/IndexedCell;

    move v6, v1

    invoke-virtual {v4, v5, v6}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->setCellIndex(Ljavafx/scene/control/IndexedCell;I)V

    .line 1800
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->accumCell:Ljavafx/scene/control/IndexedCell;

    invoke-virtual {v4, v5}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->resizeCellSize(Ljavafx/scene/control/IndexedCell;)V

    .line 1801
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->accumCell:Ljavafx/scene/control/IndexedCell;

    move-object v0, v4

    goto/16 :goto_0
.end method

.method protected getCellBreadth(I)D
    .locals 8

    .prologue
    .line 1890
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/VirtualFlow;, "Lcom/sun/javafx/scene/control/skin/VirtualFlow<TT;>;"
    move v2, p1

    .local v2, "index":I
    move-object v6, v1

    move v7, v2

    invoke-virtual {v6, v7}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->getCell(I)Ljavafx/scene/control/IndexedCell;

    move-result-object v6

    move-object v3, v6

    .line 1891
    .local v3, "cell":Ljavafx/scene/control/IndexedCell;, "TT;"
    move-object v6, v1

    move-object v7, v3

    invoke-virtual {v6, v7}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->getCellBreadth(Ljavafx/scene/control/Cell;)D

    move-result-wide v6

    move-wide v4, v6

    .line 1892
    .local v4, "b":D
    move-object v6, v1

    move-object v7, v3

    invoke-direct {v6, v7}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->releaseCell(Ljavafx/scene/control/IndexedCell;)V

    .line 1893
    move-wide v6, v4

    move-wide v1, v6

    .end local v1    # "this":Lcom/sun/javafx/scene/control/skin/VirtualFlow;, "Lcom/sun/javafx/scene/control/skin/VirtualFlow<TT;>;"
    return-wide v1
.end method

.method protected getCellBreadth(Ljavafx/scene/control/Cell;)D
    .locals 5

    .prologue
    .line 1918
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/VirtualFlow;, "Lcom/sun/javafx/scene/control/skin/VirtualFlow<TT;>;"
    move-object v1, p1

    .local v1, "cell":Ljavafx/scene/control/Cell;
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->isVertical()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v1

    const-wide/high16 v3, -0x4010000000000000L    # -1.0

    .line 1919
    invoke-virtual {v2, v3, v4}, Ljavafx/scene/control/Cell;->prefWidth(D)D

    move-result-wide v2

    .line 1920
    :goto_0
    move-wide v0, v2

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/VirtualFlow;, "Lcom/sun/javafx/scene/control/skin/VirtualFlow<TT;>;"
    return-wide v0

    .line 1919
    .restart local v0    # "this":Lcom/sun/javafx/scene/control/skin/VirtualFlow;, "Lcom/sun/javafx/scene/control/skin/VirtualFlow<TT;>;"
    :cond_0
    move-object v2, v1

    const-wide/high16 v3, -0x4010000000000000L    # -1.0

    .line 1920
    invoke-virtual {v2, v3, v4}, Ljavafx/scene/control/Cell;->prefHeight(D)D

    move-result-wide v2

    goto :goto_0
.end method

.method public getCellCount()I
    .locals 2

    .prologue
    .line 202
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/VirtualFlow;, "Lcom/sun/javafx/scene/control/skin/VirtualFlow<TT;>;"
    move-object v1, v0

    iget v1, v1, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->cellCount:I

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/VirtualFlow;, "Lcom/sun/javafx/scene/control/skin/VirtualFlow<TT;>;"
    return v0
.end method

.method protected getCellIndex(Ljavafx/scene/control/IndexedCell;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .prologue
    .line 1740
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/VirtualFlow;, "Lcom/sun/javafx/scene/control/skin/VirtualFlow<TT;>;"
    move-object v1, p1

    .local v1, "cell":Ljavafx/scene/control/IndexedCell;, "TT;"
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/control/IndexedCell;->getIndex()I

    move-result v2

    move v0, v2

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/VirtualFlow;, "Lcom/sun/javafx/scene/control/skin/VirtualFlow<TT;>;"
    return v0
.end method

.method protected getCellLength(I)D
    .locals 8

    .prologue
    .line 1879
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/VirtualFlow;, "Lcom/sun/javafx/scene/control/skin/VirtualFlow<TT;>;"
    move v2, p1

    .local v2, "index":I
    move-object v6, v1

    iget-boolean v6, v6, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->fixedCellSizeEnabled:Z

    if-eqz v6, :cond_0

    move-object v6, v1

    iget-wide v6, v6, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->fixedCellSize:D

    move-wide v1, v6

    .line 1884
    .end local v1    # "this":Lcom/sun/javafx/scene/control/skin/VirtualFlow;, "Lcom/sun/javafx/scene/control/skin/VirtualFlow<TT;>;"
    :goto_0
    return-wide v1

    .line 1881
    .restart local v1    # "this":Lcom/sun/javafx/scene/control/skin/VirtualFlow;, "Lcom/sun/javafx/scene/control/skin/VirtualFlow<TT;>;"
    :cond_0
    move-object v6, v1

    move v7, v2

    invoke-virtual {v6, v7}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->getCell(I)Ljavafx/scene/control/IndexedCell;

    move-result-object v6

    move-object v3, v6

    .line 1882
    .local v3, "cell":Ljavafx/scene/control/IndexedCell;, "TT;"
    move-object v6, v1

    move-object v7, v3

    invoke-virtual {v6, v7}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->getCellLength(Ljavafx/scene/control/IndexedCell;)D

    move-result-wide v6

    move-wide v4, v6

    .line 1883
    .local v4, "length":D
    move-object v6, v1

    move-object v7, v3

    invoke-direct {v6, v7}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->releaseCell(Ljavafx/scene/control/IndexedCell;)V

    .line 1884
    move-wide v6, v4

    move-wide v1, v6

    goto :goto_0
.end method

.method protected getCellLength(Ljavafx/scene/control/IndexedCell;)D
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)D"
        }
    .end annotation

    .prologue
    .line 1900
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/VirtualFlow;, "Lcom/sun/javafx/scene/control/skin/VirtualFlow<TT;>;"
    move-object v1, p1

    .local v1, "cell":Ljavafx/scene/control/IndexedCell;, "TT;"
    move-object v2, v1

    if-nez v2, :cond_0

    const-wide/16 v2, 0x0

    move-wide v0, v2

    .line 1905
    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/VirtualFlow;, "Lcom/sun/javafx/scene/control/skin/VirtualFlow<TT;>;"
    :goto_0
    return-wide v0

    .line 1901
    .restart local v0    # "this":Lcom/sun/javafx/scene/control/skin/VirtualFlow;, "Lcom/sun/javafx/scene/control/skin/VirtualFlow<TT;>;"
    :cond_0
    move-object v2, v0

    iget-boolean v2, v2, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->fixedCellSizeEnabled:Z

    if-eqz v2, :cond_1

    move-object v2, v0

    iget-wide v2, v2, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->fixedCellSize:D

    move-wide v0, v2

    goto :goto_0

    .line 1903
    :cond_1
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->isVertical()Z

    move-result v2

    if-eqz v2, :cond_2

    move-object v2, v1

    .line 1904
    invoke-virtual {v2}, Ljavafx/scene/control/IndexedCell;->getLayoutBounds()Ljavafx/geometry/Bounds;

    move-result-object v2

    invoke-virtual {v2}, Ljavafx/geometry/Bounds;->getHeight()D

    move-result-wide v2

    .line 1905
    :goto_1
    move-wide v0, v2

    goto :goto_0

    .line 1904
    :cond_2
    move-object v2, v1

    .line 1905
    invoke-virtual {v2}, Ljavafx/scene/control/IndexedCell;->getLayoutBounds()Ljavafx/geometry/Bounds;

    move-result-object v2

    invoke-virtual {v2}, Ljavafx/geometry/Bounds;->getWidth()D

    move-result-wide v2

    goto :goto_1
.end method

.method protected getCellPosition(Ljavafx/scene/control/IndexedCell;)D
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)D"
        }
    .end annotation

    .prologue
    .line 1927
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/VirtualFlow;, "Lcom/sun/javafx/scene/control/skin/VirtualFlow<TT;>;"
    move-object v1, p1

    .local v1, "cell":Ljavafx/scene/control/IndexedCell;, "TT;"
    move-object v2, v1

    if-nez v2, :cond_0

    const-wide/16 v2, 0x0

    move-wide v0, v2

    .line 1931
    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/VirtualFlow;, "Lcom/sun/javafx/scene/control/skin/VirtualFlow<TT;>;"
    :goto_0
    return-wide v0

    .line 1929
    .restart local v0    # "this":Lcom/sun/javafx/scene/control/skin/VirtualFlow;, "Lcom/sun/javafx/scene/control/skin/VirtualFlow<TT;>;"
    :cond_0
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->isVertical()Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v2, v1

    .line 1930
    invoke-virtual {v2}, Ljavafx/scene/control/IndexedCell;->getLayoutY()D

    move-result-wide v2

    .line 1931
    :goto_1
    move-wide v0, v2

    goto :goto_0

    .line 1930
    :cond_1
    move-object v2, v1

    .line 1931
    invoke-virtual {v2}, Ljavafx/scene/control/IndexedCell;->getLayoutX()D

    move-result-wide v2

    goto :goto_1
.end method

.method protected getCells()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 403
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/VirtualFlow;, "Lcom/sun/javafx/scene/control/skin/VirtualFlow<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->cells:Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/VirtualFlow;, "Lcom/sun/javafx/scene/control/skin/VirtualFlow<TT;>;"
    return-object v0
.end method

.method public getCreateCell()Ljavafx/util/Callback;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/util/Callback",
            "<",
            "Lcom/sun/javafx/scene/control/skin/VirtualFlow;",
            "TT;>;"
        }
    .end annotation

    .prologue
    .line 289
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/VirtualFlow;, "Lcom/sun/javafx/scene/control/skin/VirtualFlow<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->createCell:Ljavafx/util/Callback;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/VirtualFlow;, "Lcom/sun/javafx/scene/control/skin/VirtualFlow<TT;>;"
    return-object v0
.end method

.method public getFirstVisibleCell()Ljavafx/scene/control/IndexedCell;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 2154
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/VirtualFlow;, "Lcom/sun/javafx/scene/control/skin/VirtualFlow<TT;>;"
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->cells:Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->getViewportLength()D

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmpg-double v2, v2, v4

    if-gtz v2, :cond_1

    :cond_0
    const/4 v2, 0x0

    move-object v0, v2

    .line 2156
    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/VirtualFlow;, "Lcom/sun/javafx/scene/control/skin/VirtualFlow<TT;>;"
    .local v1, "cell":Ljavafx/scene/control/IndexedCell;, "TT;"
    :goto_0
    return-object v0

    .line 2155
    .end local v1    # "cell":Ljavafx/scene/control/IndexedCell;, "TT;"
    .restart local v0    # "this":Lcom/sun/javafx/scene/control/skin/VirtualFlow;, "Lcom/sun/javafx/scene/control/skin/VirtualFlow<TT;>;"
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->cells:Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavafx/scene/control/IndexedCell;

    move-object v1, v2

    .line 2156
    .restart local v1    # "cell":Ljavafx/scene/control/IndexedCell;, "TT;"
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/control/IndexedCell;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    :goto_1
    move-object v0, v2

    goto :goto_0

    :cond_2
    move-object v2, v1

    goto :goto_1
.end method

.method public getFirstVisibleCellWithinViewPort()Ljavafx/scene/control/IndexedCell;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 2184
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/VirtualFlow;, "Lcom/sun/javafx/scene/control/skin/VirtualFlow<TT;>;"
    move-object v6, v1

    iget-object v6, v6, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->cells:Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;

    invoke-virtual {v6}, Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    move-object v6, v1

    invoke-virtual {v6}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->getViewportLength()D

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmpg-double v6, v6, v8

    if-gtz v6, :cond_1

    :cond_0
    const/4 v6, 0x0

    move-object v1, v6

    .line 2197
    .end local v1    # "this":Lcom/sun/javafx/scene/control/skin/VirtualFlow;, "Lcom/sun/javafx/scene/control/skin/VirtualFlow<TT;>;"
    .local v3, "i":I
    :goto_0
    return-object v1

    .line 2187
    .end local v3    # "i":I
    .restart local v1    # "this":Lcom/sun/javafx/scene/control/skin/VirtualFlow;, "Lcom/sun/javafx/scene/control/skin/VirtualFlow<TT;>;"
    :cond_1
    const/4 v6, 0x0

    move v3, v6

    .restart local v3    # "i":I
    :goto_1
    move v6, v3

    move-object v7, v1

    iget-object v7, v7, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->cells:Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;

    invoke-virtual {v7}, Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;->size()I

    move-result v7

    if-ge v6, v7, :cond_4

    .line 2188
    move-object v6, v1

    iget-object v6, v6, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->cells:Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;

    move v7, v3

    invoke-virtual {v6, v7}, Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljavafx/scene/control/IndexedCell;

    move-object v2, v6

    .line 2189
    .local v2, "cell":Ljavafx/scene/control/IndexedCell;, "TT;"
    move-object v6, v2

    invoke-virtual {v6}, Ljavafx/scene/control/IndexedCell;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 2187
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2191
    :cond_3
    move-object v6, v1

    move-object v7, v2

    invoke-virtual {v6, v7}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->getCellPosition(Ljavafx/scene/control/IndexedCell;)D

    move-result-wide v6

    move-wide v4, v6

    .line 2192
    .local v4, "cellStart":D
    move-wide v6, v4

    const-wide/16 v8, 0x0

    cmpl-double v6, v6, v8

    if-ltz v6, :cond_2

    .line 2193
    move-object v6, v2

    move-object v1, v6

    goto :goto_0

    .line 2197
    .end local v2    # "cell":Ljavafx/scene/control/IndexedCell;, "TT;"
    .end local v4    # "cellStart":D
    :cond_4
    const/4 v6, 0x0

    move-object v1, v6

    goto :goto_0
.end method

.method protected final getHbar()Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;
    .locals 2

    .prologue
    .line 444
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/VirtualFlow;, "Lcom/sun/javafx/scene/control/skin/VirtualFlow<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->hbar:Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/VirtualFlow;, "Lcom/sun/javafx/scene/control/skin/VirtualFlow<TT;>;"
    return-object v0
.end method

.method public getLastVisibleCell()Ljavafx/scene/control/IndexedCell;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 2135
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/VirtualFlow;, "Lcom/sun/javafx/scene/control/skin/VirtualFlow<TT;>;"
    move-object v4, v1

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->cells:Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    move-object v4, v1

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->getViewportLength()D

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmpg-double v4, v4, v6

    if-gtz v4, :cond_1

    :cond_0
    const/4 v4, 0x0

    move-object v1, v4

    .line 2145
    .end local v1    # "this":Lcom/sun/javafx/scene/control/skin/VirtualFlow;, "Lcom/sun/javafx/scene/control/skin/VirtualFlow<TT;>;"
    .local v3, "i":I
    :goto_0
    return-object v1

    .line 2138
    .end local v3    # "i":I
    .restart local v1    # "this":Lcom/sun/javafx/scene/control/skin/VirtualFlow;, "Lcom/sun/javafx/scene/control/skin/VirtualFlow<TT;>;"
    :cond_1
    move-object v4, v1

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->cells:Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;->size()I

    move-result v4

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    move v3, v4

    .restart local v3    # "i":I
    :goto_1
    move v4, v3

    if-ltz v4, :cond_3

    .line 2139
    move-object v4, v1

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->cells:Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;

    move v5, v3

    invoke-virtual {v4, v5}, Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavafx/scene/control/IndexedCell;

    move-object v2, v4

    .line 2140
    .local v2, "cell":Ljavafx/scene/control/IndexedCell;, "TT;"
    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/scene/control/IndexedCell;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    .line 2141
    move-object v4, v2

    move-object v1, v4

    goto :goto_0

    .line 2138
    :cond_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 2145
    .end local v2    # "cell":Ljavafx/scene/control/IndexedCell;, "TT;"
    :cond_3
    const/4 v4, 0x0

    move-object v1, v4

    goto :goto_0
.end method

.method public getLastVisibleCellWithinViewPort()Ljavafx/scene/control/IndexedCell;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 2161
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/VirtualFlow;, "Lcom/sun/javafx/scene/control/skin/VirtualFlow<TT;>;"
    move-object v10, v1

    iget-object v10, v10, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->cells:Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;

    invoke-virtual {v10}, Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_0

    move-object v10, v1

    invoke-virtual {v10}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->getViewportLength()D

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmpg-double v10, v10, v12

    if-gtz v10, :cond_1

    :cond_0
    const/4 v10, 0x0

    move-object v1, v10

    .line 2179
    .end local v1    # "this":Lcom/sun/javafx/scene/control/skin/VirtualFlow;, "Lcom/sun/javafx/scene/control/skin/VirtualFlow<TT;>;"
    .local v3, "max":D
    .local v5, "i":I
    :goto_0
    return-object v1

    .line 2164
    .end local v3    # "max":D
    .end local v5    # "i":I
    .restart local v1    # "this":Lcom/sun/javafx/scene/control/skin/VirtualFlow;, "Lcom/sun/javafx/scene/control/skin/VirtualFlow<TT;>;"
    :cond_1
    move-object v10, v1

    invoke-virtual {v10}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->getViewportLength()D

    move-result-wide v10

    move-wide v3, v10

    .line 2165
    .restart local v3    # "max":D
    move-object v10, v1

    iget-object v10, v10, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->cells:Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;

    invoke-virtual {v10}, Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;->size()I

    move-result v10

    const/4 v11, 0x1

    add-int/lit8 v10, v10, -0x1

    move v5, v10

    .restart local v5    # "i":I
    :goto_1
    move v10, v5

    if-ltz v10, :cond_4

    .line 2166
    move-object v10, v1

    iget-object v10, v10, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->cells:Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;

    move v11, v5

    invoke-virtual {v10, v11}, Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljavafx/scene/control/IndexedCell;

    move-object v2, v10

    .line 2167
    .local v2, "cell":Ljavafx/scene/control/IndexedCell;, "TT;"
    move-object v10, v2

    invoke-virtual {v10}, Ljavafx/scene/control/IndexedCell;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 2165
    :cond_2
    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    .line 2169
    :cond_3
    move-object v10, v1

    move-object v11, v2

    invoke-virtual {v10, v11}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->getCellPosition(Ljavafx/scene/control/IndexedCell;)D

    move-result-wide v10

    move-wide v6, v10

    .line 2170
    .local v6, "cellStart":D
    move-wide v10, v6

    move-object v12, v1

    move-object v13, v2

    invoke-virtual {v12, v13}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->getCellLength(Ljavafx/scene/control/IndexedCell;)D

    move-result-wide v12

    add-double/2addr v10, v12

    move-wide v8, v10

    .line 2174
    .local v8, "cellEnd":D
    move-wide v10, v8

    move-wide v12, v3

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    add-double/2addr v12, v14

    cmpg-double v10, v10, v12

    if-gtz v10, :cond_2

    .line 2175
    move-object v10, v2

    move-object v1, v10

    goto :goto_0

    .line 2179
    .end local v2    # "cell":Ljavafx/scene/control/IndexedCell;, "TT;"
    .end local v6    # "cellStart":D
    .end local v8    # "cellEnd":D
    :cond_4
    const/4 v10, 0x0

    move-object v1, v10

    goto :goto_0
.end method

.method getMaxCellWidth(I)D
    .locals 10

    .prologue
    .line 2505
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/VirtualFlow;, "Lcom/sun/javafx/scene/control/skin/VirtualFlow<TT;>;"
    move v1, p1

    .local v1, "rowsToCount":I
    const-wide/16 v6, 0x0

    move-wide v2, v6

    .line 2508
    .local v2, "max":D
    const/4 v6, 0x1

    move v7, v1

    const/4 v8, -0x1

    if-ne v7, v8, :cond_0

    move-object v7, v0

    iget v7, v7, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->cellCount:I

    :goto_0
    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    move v4, v6

    .line 2509
    .local v4, "rows":I
    const/4 v6, 0x0

    move v5, v6

    .local v5, "i":I
    :goto_1
    move v6, v5

    move v7, v4

    if-ge v6, v7, :cond_1

    .line 2510
    move-wide v6, v2

    move-object v8, v0

    move v9, v5

    invoke-virtual {v8, v9}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->getCellBreadth(I)D

    move-result-wide v8

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(DD)D

    move-result-wide v6

    move-wide v2, v6

    .line 2509
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 2508
    .end local v4    # "rows":I
    .end local v5    # "i":I
    :cond_0
    move v7, v1

    goto :goto_0

    .line 2512
    .restart local v4    # "rows":I
    .restart local v5    # "i":I
    :cond_1
    move-wide v6, v2

    move-wide v0, v6

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/VirtualFlow;, "Lcom/sun/javafx/scene/control/skin/VirtualFlow<TT;>;"
    return-wide v0
.end method

.method protected final getMaxPrefBreadth()D
    .locals 3

    .prologue
    .line 315
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/VirtualFlow;, "Lcom/sun/javafx/scene/control/skin/VirtualFlow<TT;>;"
    move-object v1, v0

    iget-wide v1, v1, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->maxPrefBreadth:D

    move-wide v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/VirtualFlow;, "Lcom/sun/javafx/scene/control/skin/VirtualFlow<TT;>;"
    return-wide v0
.end method

.method public getPosition()D
    .locals 3

    .prologue
    .line 257
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/VirtualFlow;, "Lcom/sun/javafx/scene/control/skin/VirtualFlow<TT;>;"
    move-object v1, v0

    iget-wide v1, v1, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->position:D

    move-wide v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/VirtualFlow;, "Lcom/sun/javafx/scene/control/skin/VirtualFlow<TT;>;"
    return-wide v0
.end method

.method getPrivateCell(I)Ljavafx/scene/control/IndexedCell;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .prologue
    .line 1820
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/VirtualFlow;, "Lcom/sun/javafx/scene/control/skin/VirtualFlow<TT;>;"
    move v1, p1

    .local v1, "index":I
    const/4 v5, 0x0

    move-object v2, v5

    .line 1823
    .local v2, "cell":Ljavafx/scene/control/IndexedCell;, "TT;"
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->cells:Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;

    invoke-virtual {v5}, Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 1826
    move-object v5, v0

    move v6, v1

    invoke-virtual {v5, v6}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->getVisibleCell(I)Ljavafx/scene/control/IndexedCell;

    move-result-object v5

    move-object v2, v5

    .line 1827
    move-object v5, v2

    if-eqz v5, :cond_0

    .line 1831
    move-object v5, v2

    invoke-virtual {v5}, Ljavafx/scene/control/IndexedCell;->layout()V

    .line 1832
    move-object v5, v2

    move-object v0, v5

    .line 1861
    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/VirtualFlow;, "Lcom/sun/javafx/scene/control/skin/VirtualFlow<TT;>;"
    :goto_0
    return-object v0

    .line 1837
    .restart local v0    # "this":Lcom/sun/javafx/scene/control/skin/VirtualFlow;, "Lcom/sun/javafx/scene/control/skin/VirtualFlow<TT;>;"
    :cond_0
    move-object v5, v2

    if-nez v5, :cond_2

    .line 1838
    const/4 v5, 0x0

    move v3, v5

    .local v3, "i":I
    :goto_1
    move v5, v3

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->sheetChildren:Ljavafx/collections/ObservableList;

    invoke-interface {v6}, Ljavafx/collections/ObservableList;->size()I

    move-result v6

    if-ge v5, v6, :cond_2

    .line 1839
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->sheetChildren:Ljavafx/collections/ObservableList;

    move v6, v3

    invoke-interface {v5, v6}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljavafx/scene/control/IndexedCell;

    move-object v4, v5

    .line 1840
    .local v4, "_cell":Ljavafx/scene/control/IndexedCell;, "TT;"
    move-object v5, v0

    move-object v6, v4

    invoke-virtual {v5, v6}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->getCellIndex(Ljavafx/scene/control/IndexedCell;)I

    move-result v5

    move v6, v1

    if-ne v5, v6, :cond_1

    .line 1841
    move-object v5, v4

    move-object v0, v5

    goto :goto_0

    .line 1838
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1846
    .end local v3    # "i":I
    .end local v4    # "_cell":Ljavafx/scene/control/IndexedCell;, "TT;"
    :cond_2
    move-object v5, v2

    if-nez v5, :cond_3

    .line 1847
    move-object v5, v0

    invoke-virtual {v5}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->getCreateCell()Ljavafx/util/Callback;

    move-result-object v5

    move-object v3, v5

    .line 1848
    .local v3, "createCell":Ljavafx/util/Callback;, "Ljavafx/util/Callback<Lcom/sun/javafx/scene/control/skin/VirtualFlow;TT;>;"
    move-object v5, v3

    if-eqz v5, :cond_3

    .line 1849
    move-object v5, v3

    move-object v6, v0

    invoke-interface {v5, v6}, Ljavafx/util/Callback;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljavafx/scene/control/IndexedCell;

    move-object v2, v5

    .line 1853
    .end local v3    # "createCell":Ljavafx/util/Callback;, "Ljavafx/util/Callback<Lcom/sun/javafx/scene/control/skin/VirtualFlow;TT;>;"
    :cond_3
    move-object v5, v2

    if-eqz v5, :cond_4

    .line 1854
    move-object v5, v0

    move-object v6, v2

    move v7, v1

    invoke-virtual {v5, v6, v7}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->setCellIndex(Ljavafx/scene/control/IndexedCell;I)V

    .line 1855
    move-object v5, v0

    move-object v6, v2

    invoke-virtual {v5, v6}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->resizeCellSize(Ljavafx/scene/control/IndexedCell;)V

    .line 1856
    move-object v5, v2

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljavafx/scene/control/IndexedCell;->setVisible(Z)V

    .line 1857
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->sheetChildren:Ljavafx/collections/ObservableList;

    move-object v6, v2

    invoke-interface {v5, v6}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v5

    .line 1858
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->privateCells:Ljava/util/List;

    move-object v6, v2

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v5

    .line 1861
    :cond_4
    move-object v5, v2

    move-object v0, v5

    goto :goto_0
.end method

.method protected final getVbar()Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;
    .locals 2

    .prologue
    .line 453
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/VirtualFlow;, "Lcom/sun/javafx/scene/control/skin/VirtualFlow<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->vbar:Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/VirtualFlow;, "Lcom/sun/javafx/scene/control/skin/VirtualFlow<TT;>;"
    return-object v0
.end method

.method protected final getViewportBreadth()D
    .locals 3

    .prologue
    .line 329
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/VirtualFlow;, "Lcom/sun/javafx/scene/control/skin/VirtualFlow<TT;>;"
    move-object v1, v0

    iget-wide v1, v1, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->viewportBreadth:D

    move-wide v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/VirtualFlow;, "Lcom/sun/javafx/scene/control/skin/VirtualFlow<TT;>;"
    return-wide v0
.end method

.method protected getViewportLength()D
    .locals 3

    .prologue
    .line 343
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/VirtualFlow;, "Lcom/sun/javafx/scene/control/skin/VirtualFlow<TT;>;"
    move-object v1, v0

    iget-wide v1, v1, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->viewportLength:D

    move-wide v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/VirtualFlow;, "Lcom/sun/javafx/scene/control/skin/VirtualFlow<TT;>;"
    return-wide v0
.end method

.method public getVisibleCell(I)Ljavafx/scene/control/IndexedCell;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .prologue
    .line 2107
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/VirtualFlow;, "Lcom/sun/javafx/scene/control/skin/VirtualFlow<TT;>;"
    move v1, p1

    .local v1, "index":I
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->cells:Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;

    invoke-virtual {v7}, Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v7, 0x0

    move-object v0, v7

    .line 2126
    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/VirtualFlow;, "Lcom/sun/javafx/scene/control/skin/VirtualFlow<TT;>;"
    :goto_0
    return-object v0

    .line 2110
    .restart local v0    # "this":Lcom/sun/javafx/scene/control/skin/VirtualFlow;, "Lcom/sun/javafx/scene/control/skin/VirtualFlow<TT;>;"
    :cond_0
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->cells:Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;

    invoke-virtual {v7}, Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;->getLast()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljavafx/scene/control/IndexedCell;

    move-object v2, v7

    .line 2111
    .local v2, "lastCell":Ljavafx/scene/control/IndexedCell;, "TT;"
    move-object v7, v0

    move-object v8, v2

    invoke-virtual {v7, v8}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->getCellIndex(Ljavafx/scene/control/IndexedCell;)I

    move-result v7

    move v3, v7

    .line 2112
    .local v3, "lastIndex":I
    move v7, v1

    move v8, v3

    if-ne v7, v8, :cond_1

    move-object v7, v2

    move-object v0, v7

    goto :goto_0

    .line 2115
    :cond_1
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->cells:Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;

    invoke-virtual {v7}, Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljavafx/scene/control/IndexedCell;

    move-object v4, v7

    .line 2116
    .local v4, "firstCell":Ljavafx/scene/control/IndexedCell;, "TT;"
    move-object v7, v0

    move-object v8, v4

    invoke-virtual {v7, v8}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->getCellIndex(Ljavafx/scene/control/IndexedCell;)I

    move-result v7

    move v5, v7

    .line 2117
    .local v5, "firstIndex":I
    move v7, v1

    move v8, v5

    if-ne v7, v8, :cond_2

    move-object v7, v4

    move-object v0, v7

    goto :goto_0

    .line 2120
    :cond_2
    move v7, v1

    move v8, v5

    if-le v7, v8, :cond_3

    move v7, v1

    move v8, v3

    if-ge v7, v8, :cond_3

    .line 2121
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->cells:Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;

    move v8, v1

    move v9, v5

    sub-int/2addr v8, v9

    invoke-virtual {v7, v8}, Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljavafx/scene/control/IndexedCell;

    move-object v6, v7

    .line 2122
    .local v6, "cell":Ljavafx/scene/control/IndexedCell;, "TT;"
    move-object v7, v0

    move-object v8, v6

    invoke-virtual {v7, v8}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->getCellIndex(Ljavafx/scene/control/IndexedCell;)I

    move-result v7

    move v8, v1

    if-ne v7, v8, :cond_3

    move-object v7, v6

    move-object v0, v7

    goto :goto_0

    .line 2126
    .end local v6    # "cell":Ljavafx/scene/control/IndexedCell;, "TT;"
    :cond_3
    const/4 v7, 0x0

    move-object v0, v7

    goto :goto_0
.end method

.method public isPannable()Z
    .locals 2

    .prologue
    .line 191
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/VirtualFlow;, "Lcom/sun/javafx/scene/control/skin/VirtualFlow<TT;>;"
    move-object v1, v0

    iget-boolean v1, v1, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->pannable:Z

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/VirtualFlow;, "Lcom/sun/javafx/scene/control/skin/VirtualFlow<TT;>;"
    return v0
.end method

.method public final isVertical()Z
    .locals 2

    .prologue
    .line 150
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/VirtualFlow;, "Lcom/sun/javafx/scene/control/skin/VirtualFlow<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->vertical:Ljavafx/beans/property/BooleanProperty;

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/VirtualFlow;, "Lcom/sun/javafx/scene/control/skin/VirtualFlow<TT;>;"
    return v0

    .restart local v0    # "this":Lcom/sun/javafx/scene/control/skin/VirtualFlow;, "Lcom/sun/javafx/scene/control/skin/VirtualFlow<TT;>;"
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->vertical:Ljavafx/beans/property/BooleanProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/BooleanProperty;->get()Z

    move-result v1

    goto :goto_0
.end method

.method protected layoutChildren()V
    .locals 30

    .prologue
    .line 923
    move-object/from16 v3, p0

    .local v3, "this":Lcom/sun/javafx/scene/control/skin/VirtualFlow;, "Lcom/sun/javafx/scene/control/skin/VirtualFlow<TT;>;"
    move-object/from16 v24, v3

    move-object/from16 v0, v24

    iget-boolean v0, v0, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->needsRecreateCells:Z

    move/from16 v24, v0

    if-eqz v24, :cond_3

    .line 924
    move-object/from16 v24, v3

    const-wide/high16 v25, -0x4010000000000000L    # -1.0

    move-wide/from16 v0, v25

    move-object/from16 v2, v24

    iput-wide v0, v2, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->lastWidth:D

    .line 925
    move-object/from16 v24, v3

    const-wide/high16 v25, -0x4010000000000000L    # -1.0

    move-wide/from16 v0, v25

    move-object/from16 v2, v24

    iput-wide v0, v2, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->lastHeight:D

    .line 926
    move-object/from16 v24, v3

    move-object/from16 v25, v3

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->accumCell:Ljavafx/scene/control/IndexedCell;

    move-object/from16 v25, v0

    invoke-direct/range {v24 .. v25}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->releaseCell(Ljavafx/scene/control/IndexedCell;)V

    .line 929
    move-object/from16 v24, v3

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->sheet:Ljavafx/scene/Group;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljavafx/scene/Group;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v24

    invoke-interface/range {v24 .. v24}, Ljavafx/collections/ObservableList;->clear()V

    .line 930
    const/16 v24, 0x0

    move/from16 v4, v24

    .local v4, "i":I
    move-object/from16 v24, v3

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->cells:Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;->size()I

    move-result v24

    move/from16 v5, v24

    .local v5, "max":I
    :goto_0
    move/from16 v24, v4

    move/from16 v25, v5

    move/from16 v0, v24

    move/from16 v1, v25

    if-ge v0, v1, :cond_0

    .line 931
    move-object/from16 v24, v3

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->cells:Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;

    move-object/from16 v24, v0

    move/from16 v25, v4

    invoke-virtual/range {v24 .. v25}, Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljavafx/scene/control/IndexedCell;

    const/16 v25, -0x1

    invoke-virtual/range {v24 .. v25}, Ljavafx/scene/control/IndexedCell;->updateIndex(I)V

    .line 930
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 933
    :cond_0
    move-object/from16 v24, v3

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->cells:Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;->clear()V

    .line 934
    move-object/from16 v24, v3

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->pile:Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;->clear()V

    .line 935
    move-object/from16 v24, v3

    invoke-direct/range {v24 .. v24}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->releaseAllPrivateCells()V

    .line 951
    .end local v4    # "i":I
    .end local v5    # "max":I
    :cond_1
    :goto_1
    move-object/from16 v24, v3

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->dirtyCells:Ljava/util/BitSet;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/util/BitSet;->isEmpty()Z

    move-result v24

    if-nez v24, :cond_7

    .line 953
    move-object/from16 v24, v3

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->cells:Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;->size()I

    move-result v24

    move/from16 v5, v24

    .line 954
    .local v5, "cellsSize":I
    :goto_2
    move-object/from16 v24, v3

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->dirtyCells:Ljava/util/BitSet;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v24

    move/from16 v29, v24

    move/from16 v24, v29

    move/from16 v25, v29

    move/from16 v4, v25

    .local v4, "index":I
    const/16 v25, -0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_6

    move/from16 v24, v4

    move/from16 v25, v5

    move/from16 v0, v24

    move/from16 v1, v25

    if-ge v0, v1, :cond_6

    .line 955
    move-object/from16 v24, v3

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->cells:Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;

    move-object/from16 v24, v0

    move/from16 v25, v4

    invoke-virtual/range {v24 .. v25}, Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljavafx/scene/control/IndexedCell;

    move-object/from16 v6, v24

    .line 959
    .local v6, "cell":Ljavafx/scene/control/IndexedCell;, "TT;"
    move-object/from16 v24, v6

    if-eqz v24, :cond_2

    .line 960
    move-object/from16 v24, v6

    invoke-virtual/range {v24 .. v24}, Ljavafx/scene/control/IndexedCell;->requestLayout()V

    .line 962
    :cond_2
    move-object/from16 v24, v3

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->dirtyCells:Ljava/util/BitSet;

    move-object/from16 v24, v0

    move/from16 v25, v4

    invoke-virtual/range {v24 .. v25}, Ljava/util/BitSet;->clear(I)V

    .line 963
    goto :goto_2

    .line 936
    .end local v4    # "index":I
    .end local v5    # "cellsSize":I
    .end local v6    # "cell":Ljavafx/scene/control/IndexedCell;, "TT;"
    :cond_3
    move-object/from16 v24, v3

    move-object/from16 v0, v24

    iget-boolean v0, v0, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->needsRebuildCells:Z

    move/from16 v24, v0

    if-eqz v24, :cond_5

    .line 937
    move-object/from16 v24, v3

    const-wide/high16 v25, -0x4010000000000000L    # -1.0

    move-wide/from16 v0, v25

    move-object/from16 v2, v24

    iput-wide v0, v2, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->lastWidth:D

    .line 938
    move-object/from16 v24, v3

    const-wide/high16 v25, -0x4010000000000000L    # -1.0

    move-wide/from16 v0, v25

    move-object/from16 v2, v24

    iput-wide v0, v2, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->lastHeight:D

    .line 939
    move-object/from16 v24, v3

    move-object/from16 v25, v3

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->accumCell:Ljavafx/scene/control/IndexedCell;

    move-object/from16 v25, v0

    invoke-direct/range {v24 .. v25}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->releaseCell(Ljavafx/scene/control/IndexedCell;)V

    .line 940
    const/16 v24, 0x0

    move/from16 v4, v24

    .local v4, "i":I
    :goto_3
    move/from16 v24, v4

    move-object/from16 v25, v3

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->cells:Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;->size()I

    move-result v25

    move/from16 v0, v24

    move/from16 v1, v25

    if-ge v0, v1, :cond_4

    .line 941
    move-object/from16 v24, v3

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->cells:Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;

    move-object/from16 v24, v0

    move/from16 v25, v4

    invoke-virtual/range {v24 .. v25}, Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljavafx/scene/control/IndexedCell;

    const/16 v25, -0x1

    invoke-virtual/range {v24 .. v25}, Ljavafx/scene/control/IndexedCell;->updateIndex(I)V

    .line 940
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 943
    :cond_4
    move-object/from16 v24, v3

    invoke-virtual/range {v24 .. v24}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->addAllToPile()V

    .line 944
    move-object/from16 v24, v3

    invoke-direct/range {v24 .. v24}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->releaseAllPrivateCells()V

    goto/16 :goto_1

    .line 945
    .end local v4    # "i":I
    :cond_5
    move-object/from16 v24, v3

    move-object/from16 v0, v24

    iget-boolean v0, v0, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->needsReconfigureCells:Z

    move/from16 v24, v0

    if-eqz v24, :cond_1

    .line 946
    move-object/from16 v24, v3

    const-wide/high16 v25, -0x4010000000000000L    # -1.0

    invoke-virtual/range {v24 .. v26}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->setMaxPrefBreadth(D)V

    .line 947
    move-object/from16 v24, v3

    const-wide/high16 v25, -0x4010000000000000L    # -1.0

    move-wide/from16 v0, v25

    move-object/from16 v2, v24

    iput-wide v0, v2, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->lastWidth:D

    .line 948
    move-object/from16 v24, v3

    const-wide/high16 v25, -0x4010000000000000L    # -1.0

    move-wide/from16 v0, v25

    move-object/from16 v2, v24

    iput-wide v0, v2, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->lastHeight:D

    goto/16 :goto_1

    .line 965
    .local v4, "index":I
    .restart local v5    # "cellsSize":I
    :cond_6
    move-object/from16 v24, v3

    const-wide/high16 v25, -0x4010000000000000L    # -1.0

    invoke-virtual/range {v24 .. v26}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->setMaxPrefBreadth(D)V

    .line 966
    move-object/from16 v24, v3

    const-wide/high16 v25, -0x4010000000000000L    # -1.0

    move-wide/from16 v0, v25

    move-object/from16 v2, v24

    iput-wide v0, v2, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->lastWidth:D

    .line 967
    move-object/from16 v24, v3

    const-wide/high16 v25, -0x4010000000000000L    # -1.0

    move-wide/from16 v0, v25

    move-object/from16 v2, v24

    iput-wide v0, v2, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->lastHeight:D

    .line 970
    .end local v4    # "index":I
    .end local v5    # "cellsSize":I
    :cond_7
    move-object/from16 v24, v3

    move-object/from16 v0, v24

    iget-boolean v0, v0, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->sizeChanged:Z

    move/from16 v24, v0

    move/from16 v4, v24

    .line 971
    .local v4, "hasSizeChange":Z
    move-object/from16 v24, v3

    move-object/from16 v0, v24

    iget-boolean v0, v0, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->needsRebuildCells:Z

    move/from16 v24, v0

    if-nez v24, :cond_8

    move-object/from16 v24, v3

    move-object/from16 v0, v24

    iget-boolean v0, v0, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->needsRecreateCells:Z

    move/from16 v24, v0

    if-nez v24, :cond_8

    move-object/from16 v24, v3

    move-object/from16 v0, v24

    iget-boolean v0, v0, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->sizeChanged:Z

    move/from16 v24, v0

    if-eqz v24, :cond_a

    :cond_8
    const/16 v24, 0x1

    :goto_4
    move/from16 v5, v24

    .line 973
    .local v5, "recreatedOrRebuilt":Z
    move-object/from16 v24, v3

    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, v24

    iput-boolean v0, v1, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->needsRecreateCells:Z

    .line 974
    move-object/from16 v24, v3

    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, v24

    iput-boolean v0, v1, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->needsReconfigureCells:Z

    .line 975
    move-object/from16 v24, v3

    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, v24

    iput-boolean v0, v1, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->needsRebuildCells:Z

    .line 976
    move-object/from16 v24, v3

    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, v24

    iput-boolean v0, v1, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->sizeChanged:Z

    .line 978
    move-object/from16 v24, v3

    move-object/from16 v0, v24

    iget-boolean v0, v0, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->needsCellsLayout:Z

    move/from16 v24, v0

    if-eqz v24, :cond_c

    .line 979
    const/16 v24, 0x0

    move/from16 v6, v24

    .local v6, "i":I
    move-object/from16 v24, v3

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->cells:Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;->size()I

    move-result v24

    move/from16 v7, v24

    .local v7, "max":I
    :goto_5
    move/from16 v24, v6

    move/from16 v25, v7

    move/from16 v0, v24

    move/from16 v1, v25

    if-ge v0, v1, :cond_b

    .line 980
    move-object/from16 v24, v3

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->cells:Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;

    move-object/from16 v24, v0

    move/from16 v25, v6

    invoke-virtual/range {v24 .. v25}, Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljavafx/scene/control/Cell;

    move-object/from16 v8, v24

    .line 981
    .local v8, "cell":Ljavafx/scene/control/Cell;, "Ljavafx/scene/control/Cell<*>;"
    move-object/from16 v24, v8

    if-eqz v24, :cond_9

    .line 982
    move-object/from16 v24, v8

    invoke-virtual/range {v24 .. v24}, Ljavafx/scene/control/Cell;->requestLayout()V

    .line 979
    :cond_9
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 971
    .end local v5    # "recreatedOrRebuilt":Z
    .end local v6    # "i":I
    .end local v7    # "max":I
    .end local v8    # "cell":Ljavafx/scene/control/Cell;, "Ljavafx/scene/control/Cell<*>;"
    :cond_a
    const/16 v24, 0x0

    goto :goto_4

    .line 985
    .restart local v5    # "recreatedOrRebuilt":Z
    .restart local v6    # "i":I
    .restart local v7    # "max":I
    :cond_b
    move-object/from16 v24, v3

    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, v24

    iput-boolean v0, v1, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->needsCellsLayout:Z

    .line 989
    .line 1214
    .end local v6    # "i":I
    .end local v7    # "max":I
    :goto_6
    return-void

    .line 992
    :cond_c
    move-object/from16 v24, v3

    invoke-virtual/range {v24 .. v24}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->getWidth()D

    move-result-wide v24

    move-wide/from16 v6, v24

    .line 993
    .local v6, "width":D
    move-object/from16 v24, v3

    invoke-virtual/range {v24 .. v24}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->getHeight()D

    move-result-wide v24

    move-wide/from16 v8, v24

    .line 994
    .local v8, "height":D
    move-object/from16 v24, v3

    invoke-virtual/range {v24 .. v24}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->isVertical()Z

    move-result v24

    move/from16 v10, v24

    .line 995
    .local v10, "isVertical":Z
    move-object/from16 v24, v3

    invoke-virtual/range {v24 .. v24}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->getPosition()D

    move-result-wide v24

    move-wide/from16 v11, v24

    .line 999
    .local v11, "position":D
    move-wide/from16 v24, v6

    const-wide/16 v26, 0x0

    cmpg-double v24, v24, v26

    if-lez v24, :cond_d

    move-wide/from16 v24, v8

    const-wide/16 v26, 0x0

    cmpg-double v24, v24, v26

    if-gtz v24, :cond_e

    .line 1000
    :cond_d
    move-object/from16 v24, v3

    invoke-virtual/range {v24 .. v24}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->addAllToPile()V

    .line 1001
    move-object/from16 v24, v3

    move-wide/from16 v25, v6

    move-wide/from16 v0, v25

    move-object/from16 v2, v24

    iput-wide v0, v2, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->lastWidth:D

    .line 1002
    move-object/from16 v24, v3

    move-wide/from16 v25, v8

    move-wide/from16 v0, v25

    move-object/from16 v2, v24

    iput-wide v0, v2, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->lastHeight:D

    .line 1003
    move-object/from16 v24, v3

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->hbar:Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;->setVisible(Z)V

    .line 1004
    move-object/from16 v24, v3

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->vbar:Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;->setVisible(Z)V

    .line 1005
    move-object/from16 v24, v3

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->corner:Ljavafx/scene/layout/StackPane;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Ljavafx/scene/layout/StackPane;->setVisible(Z)V

    .line 1006
    goto :goto_6

    .line 1014
    :cond_e
    const/16 v24, 0x0

    move/from16 v13, v24

    .line 1015
    .local v13, "cellNeedsLayout":Z
    const/16 v24, 0x0

    move/from16 v14, v24

    .line 1017
    .local v14, "thumbNeedsLayout":Z
    sget-boolean v24, Lcom/sun/javafx/scene/control/skin/BehaviorSkinBase;->IS_TOUCH_SUPPORTED:Z

    if-eqz v24, :cond_11

    .line 1018
    move-object/from16 v24, v3

    move-object/from16 v0, v24

    iget-boolean v0, v0, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->tempVisibility:Z

    move/from16 v24, v0

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_f

    move-object/from16 v24, v3

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->hbar:Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;->isVisible()Z

    move-result v24

    if-eqz v24, :cond_10

    move-object/from16 v24, v3

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->vbar:Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;->isVisible()Z

    move-result v24

    if-eqz v24, :cond_10

    :cond_f
    move-object/from16 v24, v3

    move-object/from16 v0, v24

    iget-boolean v0, v0, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->tempVisibility:Z

    move/from16 v24, v0

    if-nez v24, :cond_11

    move-object/from16 v24, v3

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->hbar:Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;

    move-object/from16 v24, v0

    .line 1019
    invoke-virtual/range {v24 .. v24}, Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;->isVisible()Z

    move-result v24

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_10

    move-object/from16 v24, v3

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->vbar:Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;->isVisible()Z

    move-result v24

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_11

    .line 1020
    :cond_10
    const/16 v24, 0x1

    move/from16 v14, v24

    .line 1024
    :cond_11
    move/from16 v24, v13

    if-nez v24, :cond_12

    .line 1025
    const/16 v24, 0x0

    move/from16 v15, v24

    .local v15, "i":I
    :goto_7
    move/from16 v24, v15

    move-object/from16 v25, v3

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->cells:Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;->size()I

    move-result v25

    move/from16 v0, v24

    move/from16 v1, v25

    if-ge v0, v1, :cond_12

    .line 1026
    move-object/from16 v24, v3

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->cells:Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;

    move-object/from16 v24, v0

    move/from16 v25, v15

    invoke-virtual/range {v24 .. v25}, Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljavafx/scene/control/Cell;

    move-object/from16 v16, v24

    .line 1027
    .local v16, "cell":Ljavafx/scene/control/Cell;, "Ljavafx/scene/control/Cell<*>;"
    move-object/from16 v24, v16

    invoke-virtual/range {v24 .. v24}, Ljavafx/scene/control/Cell;->isNeedsLayout()Z

    move-result v24

    move/from16 v13, v24

    .line 1028
    move/from16 v24, v13

    if-eqz v24, :cond_15

    .line 1033
    .end local v15    # "i":I
    .end local v16    # "cell":Ljavafx/scene/control/Cell;, "Ljavafx/scene/control/Cell<*>;"
    :cond_12
    move-object/from16 v24, v3

    invoke-virtual/range {v24 .. v24}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->getFirstVisibleCell()Ljavafx/scene/control/IndexedCell;

    move-result-object v24

    move-object/from16 v15, v24

    .line 1038
    .local v15, "firstCell":Ljavafx/scene/control/IndexedCell;, "TT;"
    move/from16 v24, v13

    if-nez v24, :cond_17

    move/from16 v24, v14

    if-nez v24, :cond_17

    .line 1039
    const/16 v24, 0x0

    move/from16 v16, v24

    .line 1040
    .local v16, "cellSizeChanged":Z
    move-object/from16 v24, v15

    if-eqz v24, :cond_14

    .line 1041
    move-object/from16 v24, v3

    move-object/from16 v25, v15

    invoke-virtual/range {v24 .. v25}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->getCellBreadth(Ljavafx/scene/control/Cell;)D

    move-result-wide v24

    move-wide/from16 v17, v24

    .line 1042
    .local v17, "breadth":D
    move-object/from16 v24, v3

    move-object/from16 v25, v15

    invoke-virtual/range {v24 .. v25}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->getCellLength(Ljavafx/scene/control/IndexedCell;)D

    move-result-wide v24

    move-wide/from16 v19, v24

    .line 1043
    .local v19, "length":D
    move-wide/from16 v24, v17

    move-object/from16 v26, v3

    move-object/from16 v0, v26

    iget-wide v0, v0, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->lastCellBreadth:D

    move-wide/from16 v26, v0

    cmpl-double v24, v24, v26

    if-nez v24, :cond_13

    move-wide/from16 v24, v19

    move-object/from16 v26, v3

    move-object/from16 v0, v26

    iget-wide v0, v0, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->lastCellLength:D

    move-wide/from16 v26, v0

    cmpl-double v24, v24, v26

    if-eqz v24, :cond_16

    :cond_13
    const/16 v24, 0x1

    :goto_8
    move/from16 v16, v24

    .line 1044
    move-object/from16 v24, v3

    move-wide/from16 v25, v17

    move-wide/from16 v0, v25

    move-object/from16 v2, v24

    iput-wide v0, v2, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->lastCellBreadth:D

    .line 1045
    move-object/from16 v24, v3

    move-wide/from16 v25, v19

    move-wide/from16 v0, v25

    move-object/from16 v2, v24

    iput-wide v0, v2, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->lastCellLength:D

    .line 1048
    .end local v17    # "breadth":D
    .end local v19    # "length":D
    :cond_14
    move-wide/from16 v24, v6

    move-object/from16 v26, v3

    move-object/from16 v0, v26

    iget-wide v0, v0, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->lastWidth:D

    move-wide/from16 v26, v0

    cmpl-double v24, v24, v26

    if-nez v24, :cond_17

    move-wide/from16 v24, v8

    move-object/from16 v26, v3

    move-object/from16 v0, v26

    iget-wide v0, v0, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->lastHeight:D

    move-wide/from16 v26, v0

    cmpl-double v24, v24, v26

    if-nez v24, :cond_17

    move-object/from16 v24, v3

    move-object/from16 v0, v24

    iget v0, v0, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->cellCount:I

    move/from16 v24, v0

    move-object/from16 v25, v3

    move-object/from16 v0, v25

    iget v0, v0, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->lastCellCount:I

    move/from16 v25, v0

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_17

    move/from16 v24, v10

    move-object/from16 v25, v3

    move-object/from16 v0, v25

    iget-boolean v0, v0, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->lastVertical:Z

    move/from16 v25, v0

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_17

    move-wide/from16 v24, v11

    move-object/from16 v26, v3

    move-object/from16 v0, v26

    iget-wide v0, v0, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->lastPosition:D

    move-wide/from16 v26, v0

    cmpl-double v24, v24, v26

    if-nez v24, :cond_17

    move/from16 v24, v16

    if-nez v24, :cond_17

    .line 1062
    goto/16 :goto_6

    .line 1025
    .local v15, "i":I
    .local v16, "cell":Ljavafx/scene/control/Cell;, "Ljavafx/scene/control/Cell<*>;"
    :cond_15
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_7

    .line 1043
    .local v15, "firstCell":Ljavafx/scene/control/IndexedCell;, "TT;"
    .local v16, "cellSizeChanged":Z
    .restart local v17    # "breadth":D
    .restart local v19    # "length":D
    :cond_16
    const/16 v24, 0x0

    goto :goto_8

    .line 1119
    .end local v16    # "cellSizeChanged":Z
    .end local v17    # "breadth":D
    .end local v19    # "length":D
    :cond_17
    const/16 v24, 0x0

    move/from16 v16, v24

    .line 1120
    .local v16, "needTrailingCells":Z
    move/from16 v24, v13

    if-nez v24, :cond_19

    move/from16 v24, v10

    move-object/from16 v25, v3

    move-object/from16 v0, v25

    iget-boolean v0, v0, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->lastVertical:Z

    move/from16 v25, v0

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_19

    move-object/from16 v24, v3

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->cells:Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;

    move-object/from16 v24, v0

    .line 1122
    invoke-virtual/range {v24 .. v24}, Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;->isEmpty()Z

    move-result v24

    if-nez v24, :cond_19

    move-object/from16 v24, v3

    .line 1123
    invoke-virtual/range {v24 .. v24}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->getMaxPrefBreadth()D

    move-result-wide v24

    const-wide/high16 v26, -0x4010000000000000L    # -1.0

    cmpl-double v24, v24, v26

    if-eqz v24, :cond_19

    move-wide/from16 v24, v11

    move-object/from16 v26, v3

    move-object/from16 v0, v26

    iget-wide v0, v0, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->lastPosition:D

    move-wide/from16 v26, v0

    cmpl-double v24, v24, v26

    if-nez v24, :cond_19

    move-object/from16 v24, v3

    move-object/from16 v0, v24

    iget v0, v0, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->cellCount:I

    move/from16 v24, v0

    move-object/from16 v25, v3

    move-object/from16 v0, v25

    iget v0, v0, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->lastCellCount:I

    move/from16 v25, v0

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_19

    move/from16 v24, v4

    if-nez v24, :cond_19

    move/from16 v24, v10

    if-eqz v24, :cond_18

    move-wide/from16 v24, v8

    move-object/from16 v26, v3

    move-object/from16 v0, v26

    iget-wide v0, v0, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->lastHeight:D

    move-wide/from16 v26, v0

    cmpg-double v24, v24, v26

    if-ltz v24, :cond_19

    :cond_18
    move/from16 v24, v10

    if-nez v24, :cond_1b

    move-wide/from16 v24, v6

    move-object/from16 v26, v3

    move-object/from16 v0, v26

    iget-wide v0, v0, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->lastWidth:D

    move-wide/from16 v26, v0

    cmpg-double v24, v24, v26

    if-gez v24, :cond_1b

    :cond_19
    const/16 v24, 0x1

    :goto_9
    move/from16 v17, v24

    .line 1129
    .local v17, "rebuild":Z
    move/from16 v24, v17

    if-nez v24, :cond_1e

    .line 1131
    move-object/from16 v24, v3

    invoke-virtual/range {v24 .. v24}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->getMaxPrefBreadth()D

    move-result-wide v24

    move-wide/from16 v18, v24

    .line 1132
    .local v18, "maxPrefBreadth":D
    const/16 v24, 0x0

    move/from16 v20, v24

    .line 1133
    .local v20, "foundMax":Z
    const/16 v24, 0x0

    move/from16 v21, v24

    .local v21, "i":I
    :goto_a
    move/from16 v24, v21

    move-object/from16 v25, v3

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->cells:Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;->size()I

    move-result v25

    move/from16 v0, v24

    move/from16 v1, v25

    if-ge v0, v1, :cond_1d

    .line 1134
    move-object/from16 v24, v3

    move-object/from16 v25, v3

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->cells:Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;

    move-object/from16 v25, v0

    move/from16 v26, v21

    invoke-virtual/range {v25 .. v26}, Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljavafx/scene/control/Cell;

    invoke-virtual/range {v24 .. v25}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->getCellBreadth(Ljavafx/scene/control/Cell;)D

    move-result-wide v24

    move-wide/from16 v22, v24

    .line 1135
    .local v22, "breadth":D
    move-wide/from16 v24, v18

    move-wide/from16 v26, v22

    cmpl-double v24, v24, v26

    if-nez v24, :cond_1c

    .line 1136
    const/16 v24, 0x1

    move/from16 v20, v24

    .line 1133
    :cond_1a
    add-int/lit8 v21, v21, 0x1

    goto :goto_a

    .line 1123
    .end local v17    # "rebuild":Z
    .end local v18    # "maxPrefBreadth":D
    .end local v20    # "foundMax":Z
    .end local v21    # "i":I
    .end local v22    # "breadth":D
    :cond_1b
    const/16 v24, 0x0

    goto :goto_9

    .line 1137
    .restart local v17    # "rebuild":Z
    .restart local v18    # "maxPrefBreadth":D
    .restart local v20    # "foundMax":Z
    .restart local v21    # "i":I
    .restart local v22    # "breadth":D
    :cond_1c
    move-wide/from16 v24, v22

    move-wide/from16 v26, v18

    cmpl-double v24, v24, v26

    if-lez v24, :cond_1a

    .line 1138
    const/16 v24, 0x1

    move/from16 v17, v24

    .line 1142
    .end local v22    # "breadth":D
    :cond_1d
    move/from16 v24, v20

    if-nez v24, :cond_1e

    .line 1143
    const/16 v24, 0x1

    move/from16 v17, v24

    .line 1147
    .end local v18    # "maxPrefBreadth":D
    .end local v20    # "foundMax":Z
    .end local v21    # "i":I
    :cond_1e
    move/from16 v24, v17

    if-nez v24, :cond_21

    .line 1148
    move/from16 v24, v10

    if-eqz v24, :cond_1f

    move-wide/from16 v24, v8

    move-object/from16 v26, v3

    move-object/from16 v0, v26

    iget-wide v0, v0, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->lastHeight:D

    move-wide/from16 v26, v0

    cmpl-double v24, v24, v26

    if-gtz v24, :cond_20

    :cond_1f
    move/from16 v24, v10

    if-nez v24, :cond_21

    move-wide/from16 v24, v6

    move-object/from16 v26, v3

    move-object/from16 v0, v26

    iget-wide v0, v0, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->lastWidth:D

    move-wide/from16 v26, v0

    cmpl-double v24, v24, v26

    if-lez v24, :cond_21

    .line 1150
    :cond_20
    const/16 v24, 0x1

    move/from16 v16, v24

    .line 1154
    :cond_21
    move-object/from16 v24, v3

    invoke-direct/range {v24 .. v24}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->initViewport()V

    .line 1157
    move-object/from16 v24, v3

    invoke-direct/range {v24 .. v24}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->computeCurrentIndex()I

    move-result v24

    move/from16 v18, v24

    .line 1158
    .local v18, "currentIndex":I
    move-object/from16 v24, v3

    move-object/from16 v0, v24

    iget v0, v0, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->lastCellCount:I

    move/from16 v24, v0

    move-object/from16 v25, v3

    move-object/from16 v0, v25

    iget v0, v0, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->cellCount:I

    move/from16 v25, v0

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_23

    .line 1165
    move-wide/from16 v24, v11

    const-wide/16 v26, 0x0

    cmpl-double v24, v24, v26

    if-eqz v24, :cond_22

    move-wide/from16 v24, v11

    const-wide/high16 v26, 0x3ff0000000000000L    # 1.0

    cmpl-double v24, v24, v26

    if-nez v24, :cond_25

    .line 1181
    :cond_22
    :goto_b
    move-object/from16 v24, v3

    invoke-direct/range {v24 .. v24}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->computeCurrentIndex()I

    move-result v24

    move/from16 v18, v24

    .line 1184
    :cond_23
    move/from16 v24, v17

    if-eqz v24, :cond_27

    .line 1185
    move-object/from16 v24, v3

    const-wide/high16 v25, -0x4010000000000000L    # -1.0

    invoke-virtual/range {v24 .. v26}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->setMaxPrefBreadth(D)V

    .line 1187
    move-object/from16 v24, v3

    invoke-virtual/range {v24 .. v24}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->addAllToPile()V

    .line 1191
    move-object/from16 v24, v3

    move-object/from16 v25, v3

    invoke-virtual/range {v25 .. v25}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->getPosition()D

    move-result-wide v25

    invoke-direct/range {v24 .. v26}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->computeViewportOffset(D)D

    move-result-wide v24

    move-wide/from16 v0, v24

    neg-double v0, v0

    move-wide/from16 v24, v0

    move-wide/from16 v19, v24

    .line 1196
    .local v19, "offset":D
    move-object/from16 v24, v3

    move/from16 v25, v18

    move-wide/from16 v26, v19

    invoke-virtual/range {v24 .. v27}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->addLeadingCells(ID)V

    .line 1199
    move-object/from16 v24, v3

    const/16 v25, 0x1

    invoke-virtual/range {v24 .. v25}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->addTrailingCells(Z)Z

    move-result v24

    .line 1200
    .line 1204
    .end local v19    # "offset":D
    :cond_24
    :goto_c
    move-object/from16 v24, v3

    invoke-direct/range {v24 .. v24}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->computeBarVisiblity()Z

    move-result v24

    .line 1205
    move-object/from16 v24, v3

    move/from16 v25, v5

    invoke-direct/range {v24 .. v25}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->updateScrollBarsAndCells(Z)V

    .line 1207
    move-object/from16 v24, v3

    move-object/from16 v25, v3

    invoke-virtual/range {v25 .. v25}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->getWidth()D

    move-result-wide v25

    move-wide/from16 v0, v25

    move-object/from16 v2, v24

    iput-wide v0, v2, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->lastWidth:D

    .line 1208
    move-object/from16 v24, v3

    move-object/from16 v25, v3

    invoke-virtual/range {v25 .. v25}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->getHeight()D

    move-result-wide v25

    move-wide/from16 v0, v25

    move-object/from16 v2, v24

    iput-wide v0, v2, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->lastHeight:D

    .line 1209
    move-object/from16 v24, v3

    move-object/from16 v25, v3

    invoke-virtual/range {v25 .. v25}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->getCellCount()I

    move-result v25

    move/from16 v0, v25

    move-object/from16 v1, v24

    iput v0, v1, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->lastCellCount:I

    .line 1210
    move-object/from16 v24, v3

    move-object/from16 v25, v3

    invoke-virtual/range {v25 .. v25}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->isVertical()Z

    move-result v25

    move/from16 v0, v25

    move-object/from16 v1, v24

    iput-boolean v0, v1, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->lastVertical:Z

    .line 1211
    move-object/from16 v24, v3

    move-object/from16 v25, v3

    invoke-virtual/range {v25 .. v25}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->getPosition()D

    move-result-wide v25

    move-wide/from16 v0, v25

    move-object/from16 v2, v24

    iput-wide v0, v2, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->lastPosition:D

    .line 1213
    move-object/from16 v24, v3

    invoke-direct/range {v24 .. v24}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->cleanPile()V

    .line 1214
    goto/16 :goto_6

    .line 1168
    :cond_25
    move/from16 v24, v18

    move-object/from16 v25, v3

    move-object/from16 v0, v25

    iget v0, v0, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->cellCount:I

    move/from16 v25, v0

    move/from16 v0, v24

    move/from16 v1, v25

    if-lt v0, v1, :cond_26

    .line 1169
    move-object/from16 v24, v3

    const-wide/high16 v25, 0x3ff0000000000000L    # 1.0

    invoke-virtual/range {v24 .. v26}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->setPosition(D)V

    goto/16 :goto_b

    .line 1171
    :cond_26
    move-object/from16 v24, v15

    if-eqz v24, :cond_22

    .line 1172
    move-object/from16 v24, v3

    move-object/from16 v25, v15

    invoke-virtual/range {v24 .. v25}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->getCellPosition(Ljavafx/scene/control/IndexedCell;)D

    move-result-wide v24

    move-wide/from16 v19, v24

    .line 1173
    .local v19, "firstCellOffset":D
    move-object/from16 v24, v3

    move-object/from16 v25, v15

    invoke-virtual/range {v24 .. v25}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->getCellIndex(Ljavafx/scene/control/IndexedCell;)I

    move-result v24

    move/from16 v21, v24

    .line 1175
    .local v21, "firstCellIndex":I
    move-object/from16 v24, v3

    move/from16 v25, v21

    invoke-direct/range {v24 .. v25}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->adjustPositionToIndex(I)V

    .line 1176
    move-object/from16 v24, v3

    move/from16 v25, v21

    invoke-direct/range {v24 .. v25}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->computeOffsetForCell(I)D

    move-result-wide v24

    move-wide/from16 v0, v24

    neg-double v0, v0

    move-wide/from16 v24, v0

    move-wide/from16 v22, v24

    .line 1177
    .local v22, "viewportTopToCellTop":D
    move-object/from16 v24, v3

    move-wide/from16 v25, v22

    move-wide/from16 v27, v19

    sub-double v25, v25, v27

    invoke-direct/range {v24 .. v26}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->adjustByPixelAmount(D)V

    goto/16 :goto_b

    .line 1200
    .end local v19    # "firstCellOffset":D
    .end local v21    # "firstCellIndex":I
    .end local v22    # "viewportTopToCellTop":D
    :cond_27
    move/from16 v24, v16

    if-eqz v24, :cond_24

    .line 1201
    move-object/from16 v24, v3

    const/16 v25, 0x1

    invoke-virtual/range {v24 .. v25}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->addTrailingCells(Z)Z

    move-result v24

    goto/16 :goto_c
.end method

.method protected positionCell(Ljavafx/scene/control/IndexedCell;D)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;D)V"
        }
    .end annotation

    .prologue
    .line 1935
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/VirtualFlow;, "Lcom/sun/javafx/scene/control/skin/VirtualFlow<TT;>;"
    move-object v2, p1

    .local v2, "cell":Ljavafx/scene/control/IndexedCell;, "TT;"
    move-wide v3, p2

    .local v3, "position":D
    move-object v5, v1

    invoke-virtual {v5}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->isVertical()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1936
    move-object v5, v2

    const-wide/16 v6, 0x0

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/control/IndexedCell;->setLayoutX(D)V

    .line 1937
    move-object v5, v2

    move-object v6, v1

    move-wide v7, v3

    invoke-virtual {v6, v7, v8}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->snapSize(D)D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/control/IndexedCell;->setLayoutY(D)V

    .line 1942
    :goto_0
    return-void

    .line 1939
    :cond_0
    move-object v5, v2

    move-object v6, v1

    move-wide v7, v3

    invoke-virtual {v6, v7, v8}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->snapSize(D)D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/control/IndexedCell;->setLayoutX(D)V

    .line 1940
    move-object v5, v2

    const-wide/16 v6, 0x0

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/control/IndexedCell;->setLayoutY(D)V

    goto :goto_0
.end method

.method public rebuildCells()V
    .locals 3

    .prologue
    .line 2454
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/VirtualFlow;, "Lcom/sun/javafx/scene/control/skin/VirtualFlow<TT;>;"
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->needsRebuildCells:Z

    .line 2455
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->requestLayout()V

    .line 2456
    return-void
.end method

.method public reconfigureCells()V
    .locals 3

    .prologue
    .line 2444
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/VirtualFlow;, "Lcom/sun/javafx/scene/control/skin/VirtualFlow<TT;>;"
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->needsReconfigureCells:Z

    .line 2445
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->requestLayout()V

    .line 2446
    return-void
.end method

.method public recreateCells()V
    .locals 3

    .prologue
    .line 2449
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/VirtualFlow;, "Lcom/sun/javafx/scene/control/skin/VirtualFlow<TT;>;"
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->needsRecreateCells:Z

    .line 2450
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->requestLayout()V

    .line 2451
    return-void
.end method

.method public requestCellLayout()V
    .locals 3

    .prologue
    .line 2459
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/VirtualFlow;, "Lcom/sun/javafx/scene/control/skin/VirtualFlow<TT;>;"
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->needsCellsLayout:Z

    .line 2460
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->requestLayout()V

    .line 2461
    return-void
.end method

.method public requestLayout()V
    .locals 3

    .prologue
    .line 919
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/VirtualFlow;, "Lcom/sun/javafx/scene/control/skin/VirtualFlow<TT;>;"
    move-object v1, v0

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->setNeedsLayout(Z)V

    .line 920
    return-void
.end method

.method protected resizeCellSize(Ljavafx/scene/control/IndexedCell;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 1945
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/VirtualFlow;, "Lcom/sun/javafx/scene/control/skin/VirtualFlow<TT;>;"
    move-object v1, p1

    .local v1, "cell":Ljavafx/scene/control/IndexedCell;, "TT;"
    move-object v4, v1

    if-nez v4, :cond_0

    .line 1954
    :goto_0
    return-void

    .line 1947
    :cond_0
    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->isVertical()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1948
    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->getMaxPrefBreadth()D

    move-result-wide v4

    move-object v6, v0

    invoke-virtual {v6}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->getViewportBreadth()D

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    move-wide v2, v4

    .line 1949
    .local v2, "width":D
    move-object v4, v1

    move-wide v5, v2

    move-object v7, v0

    iget-boolean v7, v7, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->fixedCellSizeEnabled:Z

    if-eqz v7, :cond_1

    move-object v7, v0

    iget-wide v7, v7, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->fixedCellSize:D

    :goto_1
    invoke-virtual {v4, v5, v6, v7, v8}, Ljavafx/scene/control/IndexedCell;->resize(DD)V

    .line 1950
    .line 1954
    .end local v2    # "width":D
    :goto_2
    goto :goto_0

    .line 1949
    .restart local v2    # "width":D
    :cond_1
    move-object v7, v1

    move-wide v8, v2

    invoke-virtual {v7, v8, v9}, Ljavafx/scene/control/IndexedCell;->prefHeight(D)D

    move-result-wide v7

    move-object v9, v1

    move-wide v10, v2

    invoke-virtual {v9, v10, v11}, Ljavafx/scene/control/IndexedCell;->minHeight(D)D

    move-result-wide v9

    move-object v11, v1

    move-wide v12, v2

    invoke-virtual {v11, v12, v13}, Ljavafx/scene/control/IndexedCell;->maxHeight(D)D

    move-result-wide v11

    invoke-static/range {v7 .. v12}, Lcom/sun/javafx/scene/control/skin/Utils;->boundedSize(DDD)D

    move-result-wide v7

    goto :goto_1

    .line 1951
    .end local v2    # "width":D
    :cond_2
    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->getMaxPrefBreadth()D

    move-result-wide v4

    move-object v6, v0

    invoke-virtual {v6}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->getViewportBreadth()D

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    move-wide v2, v4

    .line 1952
    .local v2, "height":D
    move-object v4, v1

    move-object v5, v0

    iget-boolean v5, v5, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->fixedCellSizeEnabled:Z

    if-eqz v5, :cond_3

    move-object v5, v0

    iget-wide v5, v5, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->fixedCellSize:D

    :goto_3
    move-wide v7, v2

    invoke-virtual {v4, v5, v6, v7, v8}, Ljavafx/scene/control/IndexedCell;->resize(DD)V

    goto :goto_2

    :cond_3
    move-object v5, v1

    move-wide v6, v2

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/control/IndexedCell;->prefWidth(D)D

    move-result-wide v5

    move-object v7, v1

    move-wide v8, v2

    invoke-virtual {v7, v8, v9}, Ljavafx/scene/control/IndexedCell;->minWidth(D)D

    move-result-wide v7

    move-object v9, v1

    move-wide v10, v2

    invoke-virtual {v9, v10, v11}, Ljavafx/scene/control/IndexedCell;->maxWidth(D)D

    move-result-wide v9

    invoke-static/range {v5 .. v10}, Lcom/sun/javafx/scene/control/skin/Utils;->boundedSize(DDD)D

    move-result-wide v5

    goto :goto_3
.end method

.method protected scrollBarOn()V
    .locals 3

    .prologue
    .line 2888
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/VirtualFlow;, "Lcom/sun/javafx/scene/control/skin/VirtualFlow<TT;>;"
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->tempVisibility:Z

    .line 2889
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->requestLayout()V

    .line 2890
    return-void
.end method

.method public scrollTo(I)V
    .locals 8

    .prologue
    .line 2288
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/VirtualFlow;, "Lcom/sun/javafx/scene/control/skin/VirtualFlow<TT;>;"
    move v1, p1

    .local v1, "index":I
    const/4 v5, 0x0

    move v2, v5

    .line 2290
    .local v2, "posSet":Z
    move v5, v1

    move-object v6, v0

    iget v6, v6, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->cellCount:I

    const/4 v7, 0x1

    add-int/lit8 v6, v6, -0x1

    if-lt v5, v6, :cond_2

    .line 2291
    move-object v5, v0

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v5, v6, v7}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->setPosition(D)V

    .line 2292
    const/4 v5, 0x1

    move v2, v5

    .line 2298
    :cond_0
    :goto_0
    move v5, v2

    if-nez v5, :cond_1

    .line 2299
    move-object v5, v0

    move v6, v1

    invoke-direct {v5, v6}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->adjustPositionToIndex(I)V

    .line 2300
    move-object v5, v0

    move v6, v1

    invoke-direct {v5, v6}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->computeOffsetForCell(I)D

    move-result-wide v5

    neg-double v5, v5

    move-wide v3, v5

    .line 2301
    .local v3, "offset":D
    move-object v5, v0

    move-wide v6, v3

    invoke-direct {v5, v6, v7}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->adjustByPixelAmount(D)V

    .line 2304
    .end local v3    # "offset":D
    :cond_1
    move-object v5, v0

    invoke-virtual {v5}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->requestLayout()V

    .line 2305
    return-void

    .line 2293
    :cond_2
    move v5, v1

    if-gez v5, :cond_0

    .line 2294
    move-object v5, v0

    const-wide/16 v6, 0x0

    invoke-virtual {v5, v6, v7}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->setPosition(D)V

    .line 2295
    const/4 v5, 0x1

    move v2, v5

    goto :goto_0
.end method

.method public scrollToOffset(I)V
    .locals 8

    .prologue
    .line 2310
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/VirtualFlow;, "Lcom/sun/javafx/scene/control/skin/VirtualFlow<TT;>;"
    move v2, p1

    .local v2, "offset":I
    move-object v3, v1

    move v4, v2

    int-to-double v4, v4

    move-object v6, v1

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->getCellLength(I)D

    move-result-wide v6

    mul-double/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->adjustPixels(D)D

    move-result-wide v3

    .line 2311
    return-void
.end method

.method public setCellCount(I)V
    .locals 8

    .prologue
    .line 204
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/VirtualFlow;, "Lcom/sun/javafx/scene/control/skin/VirtualFlow<TT;>;"
    move v1, p1

    .local v1, "i":I
    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->cellCount:I

    move v2, v5

    .line 205
    .local v2, "oldCount":I
    move-object v5, v0

    move v6, v1

    iput v6, v5, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->cellCount:I

    .line 207
    move v5, v2

    move-object v6, v0

    iget v6, v6, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->cellCount:I

    if-eq v5, v6, :cond_2

    const/4 v5, 0x1

    :goto_0
    move v3, v5

    .line 211
    .local v3, "countChanged":Z
    move v5, v3

    if-eqz v5, :cond_0

    .line 212
    move-object v5, v0

    invoke-virtual {v5}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->isVertical()Z

    move-result v5

    if-eqz v5, :cond_3

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->vbar:Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;

    :goto_1
    move-object v4, v5

    .line 213
    .local v4, "lengthBar":Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;
    move-object v5, v4

    move v6, v1

    int-to-double v6, v6

    invoke-virtual {v5, v6, v7}, Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;->setMax(D)V

    .line 232
    .end local v4    # "lengthBar":Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;
    :cond_0
    move v5, v3

    if-eqz v5, :cond_1

    .line 233
    move-object v5, v0

    invoke-virtual {v5}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->layoutChildren()V

    .line 239
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->sheetChildren:Ljavafx/collections/ObservableList;

    invoke-interface {v5}, Ljavafx/collections/ObservableList;->clear()V

    .line 241
    move-object v5, v0

    invoke-virtual {v5}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->getParent()Ljavafx/scene/Parent;

    move-result-object v5

    move-object v4, v5

    .line 242
    .local v4, "parent":Ljavafx/scene/Parent;
    move-object v5, v4

    if-eqz v5, :cond_1

    move-object v5, v4

    invoke-virtual {v5}, Ljavafx/scene/Parent;->requestLayout()V

    .line 248
    .end local v4    # "parent":Ljavafx/scene/Parent;
    :cond_1
    return-void

    .line 207
    .end local v3    # "countChanged":Z
    :cond_2
    const/4 v5, 0x0

    goto :goto_0

    .line 212
    .restart local v3    # "countChanged":Z
    :cond_3
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->hbar:Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;

    goto :goto_1
.end method

.method public setCellDirty(I)V
    .locals 4

    .prologue
    .line 2464
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/VirtualFlow;, "Lcom/sun/javafx/scene/control/skin/VirtualFlow<TT;>;"
    move v1, p1

    .local v1, "index":I
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->dirtyCells:Ljava/util/BitSet;

    move v3, v1

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    .line 2465
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->requestLayout()V

    .line 2466
    return-void
.end method

.method protected setCellIndex(Ljavafx/scene/control/IndexedCell;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)V"
        }
    .end annotation

    .prologue
    .line 1957
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/VirtualFlow;, "Lcom/sun/javafx/scene/control/skin/VirtualFlow<TT;>;"
    move-object v1, p1

    .local v1, "cell":Ljavafx/scene/control/IndexedCell;, "TT;"
    move v2, p2

    .local v2, "index":I
    sget-boolean v3, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->$assertionsDisabled:Z

    if-nez v3, :cond_0

    move-object v3, v1

    if-nez v3, :cond_0

    new-instance v3, Ljava/lang/AssertionError;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 1959
    :cond_0
    move-object v3, v1

    move v4, v2

    invoke-virtual {v3, v4}, Ljavafx/scene/control/IndexedCell;->updateIndex(I)V

    .line 1965
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/control/IndexedCell;->isNeedsLayout()Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/control/IndexedCell;->getScene()Ljavafx/scene/Scene;

    move-result-object v3

    if-nez v3, :cond_2

    :cond_1
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/control/IndexedCell;->getProperties()Ljavafx/collections/ObservableMap;

    move-result-object v3

    const-string v4, "newcell"

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1966
    :cond_2
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/control/IndexedCell;->applyCss()V

    .line 1967
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/control/IndexedCell;->getProperties()Ljavafx/collections/ObservableMap;

    move-result-object v3

    const-string v4, "newcell"

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 1969
    :cond_3
    return-void
.end method

.method public setCreateCell(Ljavafx/util/Callback;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/util/Callback",
            "<",
            "Lcom/sun/javafx/scene/control/skin/VirtualFlow;",
            "TT;>;)V"
        }
    .end annotation

    .prologue
    .line 291
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/VirtualFlow;, "Lcom/sun/javafx/scene/control/skin/VirtualFlow<TT;>;"
    move-object v1, p1

    .local v1, "cc":Ljavafx/util/Callback;, "Ljavafx/util/Callback<Lcom/sun/javafx/scene/control/skin/VirtualFlow;TT;>;"
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->createCell:Ljavafx/util/Callback;

    .line 293
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->createCell:Ljavafx/util/Callback;

    if-eqz v2, :cond_0

    .line 294
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->accumCell:Ljavafx/scene/control/IndexedCell;

    .line 295
    move-object v2, v0

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->setNeedsLayout(Z)V

    .line 296
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->recreateCells()V

    .line 297
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->getParent()Ljavafx/scene/Parent;

    move-result-object v2

    if-eqz v2, :cond_0

    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->getParent()Ljavafx/scene/Parent;

    move-result-object v2

    invoke-virtual {v2}, Ljavafx/scene/Parent;->requestLayout()V

    .line 299
    :cond_0
    return-void
.end method

.method public setFixedCellSize(D)V
    .locals 9

    .prologue
    .line 277
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/VirtualFlow;, "Lcom/sun/javafx/scene/control/skin/VirtualFlow<TT;>;"
    move-wide v1, p1

    .local v1, "value":D
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->fixedCellSize:D

    .line 278
    move-object v3, v0

    move-object v4, v0

    iget-wide v4, v4, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->fixedCellSize:D

    const-wide/16 v6, 0x0

    cmpl-double v4, v4, v6

    if-lez v4, :cond_0

    const/4 v4, 0x1

    :goto_0
    iput-boolean v4, v3, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->fixedCellSizeEnabled:Z

    .line 279
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->needsCellsLayout:Z

    .line 280
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->layoutChildren()V

    .line 281
    return-void

    .line 278
    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method protected setHeight(D)V
    .locals 9

    .prologue
    .line 1508
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/VirtualFlow;, "Lcom/sun/javafx/scene/control/skin/VirtualFlow<TT;>;"
    move-wide v2, p1

    .local v2, "value":D
    move-wide v4, v2

    move-object v6, v1

    iget-wide v6, v6, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->lastHeight:D

    cmpl-double v4, v4, v6

    if-eqz v4, :cond_0

    .line 1509
    move-object v4, v1

    move-wide v5, v2

    invoke-super {v4, v5, v6}, Ljavafx/scene/layout/Region;->setHeight(D)V

    .line 1510
    move-object v4, v1

    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->sizeChanged:Z

    .line 1511
    move-object v4, v1

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->setNeedsLayout(Z)V

    .line 1512
    move-object v4, v1

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->requestLayout()V

    .line 1514
    :cond_0
    return-void
.end method

.method protected final setMaxPrefBreadth(D)V
    .locals 7

    .prologue
    .line 312
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/VirtualFlow;, "Lcom/sun/javafx/scene/control/skin/VirtualFlow<TT;>;"
    move-wide v1, p1

    .local v1, "value":D
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->maxPrefBreadth:D

    .line 313
    return-void
.end method

.method public setPannable(Z)V
    .locals 4

    .prologue
    .line 192
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/VirtualFlow;, "Lcom/sun/javafx/scene/control/skin/VirtualFlow<TT;>;"
    move v1, p1

    .local v1, "value":Z
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->pannable:Z

    return-void
.end method

.method public setPosition(D)V
    .locals 13

    .prologue
    .line 261
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/VirtualFlow;, "Lcom/sun/javafx/scene/control/skin/VirtualFlow<TT;>;"
    move-wide v2, p1

    .local v2, "newPosition":D
    move-object v5, v1

    iget-wide v5, v5, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->position:D

    move-wide v7, v2

    cmpl-double v5, v5, v7

    if-eqz v5, :cond_1

    const/4 v5, 0x1

    :goto_0
    move v4, v5

    .line 262
    .local v4, "needsUpdate":Z
    move-object v5, v1

    const-wide/16 v6, 0x0

    move-wide v8, v2

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    invoke-static/range {v6 .. v11}, Lcom/sun/javafx/util/Utils;->clamp(DDD)D

    move-result-wide v6

    iput-wide v6, v5, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->position:D

    .line 263
    move v5, v4

    if-eqz v5, :cond_0

    .line 264
    move-object v5, v1

    invoke-virtual {v5}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->requestLayout()V

    .line 266
    :cond_0
    return-void

    .line 261
    .end local v4    # "needsUpdate":Z
    :cond_1
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public final setVertical(Z)V
    .locals 4

    .prologue
    .line 146
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/VirtualFlow;, "Lcom/sun/javafx/scene/control/skin/VirtualFlow<TT;>;"
    move v1, p1

    .local v1, "value":Z
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->verticalProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v2

    move v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/BooleanProperty;->set(Z)V

    .line 147
    return-void
.end method

.method protected final setViewportBreadth(D)V
    .locals 7

    .prologue
    .line 326
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/VirtualFlow;, "Lcom/sun/javafx/scene/control/skin/VirtualFlow<TT;>;"
    move-wide v1, p1

    .local v1, "value":D
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->viewportBreadth:D

    .line 327
    return-void
.end method

.method setViewportLength(D)V
    .locals 7

    .prologue
    .line 340
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/VirtualFlow;, "Lcom/sun/javafx/scene/control/skin/VirtualFlow<TT;>;"
    move-wide v1, p1

    .local v1, "value":D
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->viewportLength:D

    .line 341
    return-void
.end method

.method protected setWidth(D)V
    .locals 9

    .prologue
    .line 1499
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/VirtualFlow;, "Lcom/sun/javafx/scene/control/skin/VirtualFlow<TT;>;"
    move-wide v2, p1

    .local v2, "value":D
    move-wide v4, v2

    move-object v6, v1

    iget-wide v6, v6, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->lastWidth:D

    cmpl-double v4, v4, v6

    if-eqz v4, :cond_0

    .line 1500
    move-object v4, v1

    move-wide v5, v2

    invoke-super {v4, v5, v6}, Ljavafx/scene/layout/Region;->setWidth(D)V

    .line 1501
    move-object v4, v1

    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->sizeChanged:Z

    .line 1502
    move-object v4, v1

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->setNeedsLayout(Z)V

    .line 1503
    move-object v4, v1

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->requestLayout()V

    .line 1505
    :cond_0
    return-void
.end method

.method public show(I)V
    .locals 11

    .prologue
    .line 2242
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/VirtualFlow;, "Lcom/sun/javafx/scene/control/skin/VirtualFlow<TT;>;"
    move v1, p1

    .local v1, "index":I
    move-object v5, v0

    move v6, v1

    invoke-virtual {v5, v6}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->getVisibleCell(I)Ljavafx/scene/control/IndexedCell;

    move-result-object v5

    move-object v2, v5

    .line 2243
    .local v2, "cell":Ljavafx/scene/control/IndexedCell;, "TT;"
    move-object v5, v2

    if-eqz v5, :cond_0

    .line 2244
    move-object v5, v0

    move-object v6, v2

    invoke-virtual {v5, v6}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->show(Ljavafx/scene/control/IndexedCell;)V

    .line 2285
    :goto_0
    return-void

    .line 2247
    :cond_0
    move-object v5, v0

    move v6, v1

    const/4 v7, 0x1

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v6}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->getVisibleCell(I)Ljavafx/scene/control/IndexedCell;

    move-result-object v5

    move-object v3, v5

    .line 2248
    .local v3, "prev":Ljavafx/scene/control/IndexedCell;, "TT;"
    move-object v5, v3

    if-eqz v5, :cond_1

    .line 2251
    move-object v5, v0

    move v6, v1

    invoke-virtual {v5, v6}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->getAvailableCell(I)Ljavafx/scene/control/IndexedCell;

    move-result-object v5

    move-object v2, v5

    .line 2252
    move-object v5, v0

    move-object v6, v2

    move v7, v1

    invoke-virtual {v5, v6, v7}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->setCellIndex(Ljavafx/scene/control/IndexedCell;I)V

    .line 2253
    move-object v5, v0

    move-object v6, v2

    invoke-virtual {v5, v6}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->resizeCellSize(Ljavafx/scene/control/IndexedCell;)V

    .line 2254
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->cells:Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;

    move-object v6, v2

    invoke-virtual {v5, v6}, Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;->addLast(Ljava/lang/Object;)V

    .line 2255
    move-object v5, v0

    move-object v6, v2

    move-object v7, v0

    move-object v8, v3

    invoke-virtual {v7, v8}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->getCellPosition(Ljavafx/scene/control/IndexedCell;)D

    move-result-wide v7

    move-object v9, v0

    move-object v10, v3

    invoke-virtual {v9, v10}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->getCellLength(Ljavafx/scene/control/IndexedCell;)D

    move-result-wide v9

    add-double/2addr v7, v9

    invoke-virtual {v5, v6, v7, v8}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->positionCell(Ljavafx/scene/control/IndexedCell;D)V

    .line 2256
    move-object v5, v0

    move-object v6, v0

    invoke-virtual {v6}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->getMaxPrefBreadth()D

    move-result-wide v6

    move-object v8, v0

    move-object v9, v2

    invoke-virtual {v8, v9}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->getCellBreadth(Ljavafx/scene/control/Cell;)D

    move-result-wide v8

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(DD)D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->setMaxPrefBreadth(D)V

    .line 2257
    move-object v5, v2

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljavafx/scene/control/IndexedCell;->setVisible(Z)V

    .line 2258
    move-object v5, v0

    move-object v6, v2

    invoke-virtual {v5, v6}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->show(Ljavafx/scene/control/IndexedCell;)V

    .line 2260
    goto :goto_0

    .line 2263
    :cond_1
    move-object v5, v0

    move v6, v1

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v5, v6}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->getVisibleCell(I)Ljavafx/scene/control/IndexedCell;

    move-result-object v5

    move-object v4, v5

    .line 2264
    .local v4, "next":Ljavafx/scene/control/IndexedCell;, "TT;"
    move-object v5, v4

    if-eqz v5, :cond_2

    .line 2266
    move-object v5, v0

    move v6, v1

    invoke-virtual {v5, v6}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->getAvailableCell(I)Ljavafx/scene/control/IndexedCell;

    move-result-object v5

    move-object v2, v5

    .line 2267
    move-object v5, v0

    move-object v6, v2

    move v7, v1

    invoke-virtual {v5, v6, v7}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->setCellIndex(Ljavafx/scene/control/IndexedCell;I)V

    .line 2268
    move-object v5, v0

    move-object v6, v2

    invoke-virtual {v5, v6}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->resizeCellSize(Ljavafx/scene/control/IndexedCell;)V

    .line 2269
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->cells:Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;

    move-object v6, v2

    invoke-virtual {v5, v6}, Lcom/sun/javafx/scene/control/skin/VirtualFlow$ArrayLinkedList;->addFirst(Ljava/lang/Object;)V

    .line 2270
    move-object v5, v0

    move-object v6, v2

    move-object v7, v0

    move-object v8, v4

    invoke-virtual {v7, v8}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->getCellPosition(Ljavafx/scene/control/IndexedCell;)D

    move-result-wide v7

    move-object v9, v0

    move-object v10, v2

    invoke-virtual {v9, v10}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->getCellLength(Ljavafx/scene/control/IndexedCell;)D

    move-result-wide v9

    sub-double/2addr v7, v9

    invoke-virtual {v5, v6, v7, v8}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->positionCell(Ljavafx/scene/control/IndexedCell;D)V

    .line 2271
    move-object v5, v0

    move-object v6, v0

    invoke-virtual {v6}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->getMaxPrefBreadth()D

    move-result-wide v6

    move-object v8, v0

    move-object v9, v2

    invoke-virtual {v8, v9}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->getCellBreadth(Ljavafx/scene/control/Cell;)D

    move-result-wide v8

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(DD)D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->setMaxPrefBreadth(D)V

    .line 2272
    move-object v5, v2

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljavafx/scene/control/IndexedCell;->setVisible(Z)V

    .line 2273
    move-object v5, v0

    move-object v6, v2

    invoke-virtual {v5, v6}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->show(Ljavafx/scene/control/IndexedCell;)V

    .line 2275
    goto/16 :goto_0

    .line 2280
    :cond_2
    move-object v5, v0

    move v6, v1

    invoke-direct {v5, v6}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->adjustPositionToIndex(I)V

    .line 2281
    move-object v5, v0

    invoke-virtual {v5}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->addAllToPile()V

    .line 2282
    move-object v5, v0

    invoke-virtual {v5}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->requestLayout()V

    goto/16 :goto_0
.end method

.method public show(Ljavafx/scene/control/IndexedCell;)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 2227
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/VirtualFlow;, "Lcom/sun/javafx/scene/control/skin/VirtualFlow<TT;>;"
    move-object/from16 v1, p1

    .local v1, "cell":Ljavafx/scene/control/IndexedCell;, "TT;"
    move-object v10, v1

    if-eqz v10, :cond_0

    .line 2228
    move-object v10, v0

    move-object v11, v1

    invoke-virtual {v10, v11}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->getCellPosition(Ljavafx/scene/control/IndexedCell;)D

    move-result-wide v10

    move-wide v2, v10

    .line 2229
    .local v2, "start":D
    move-object v10, v0

    move-object v11, v1

    invoke-virtual {v10, v11}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->getCellLength(Ljavafx/scene/control/IndexedCell;)D

    move-result-wide v10

    move-wide v4, v10

    .line 2230
    .local v4, "length":D
    move-wide v10, v2

    move-wide v12, v4

    add-double/2addr v10, v12

    move-wide v6, v10

    .line 2231
    .local v6, "end":D
    move-object v10, v0

    invoke-virtual {v10}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->getViewportLength()D

    move-result-wide v10

    move-wide v8, v10

    .line 2233
    .local v8, "viewportLength":D
    move-wide v10, v2

    const-wide/16 v12, 0x0

    cmpg-double v10, v10, v12

    if-gez v10, :cond_1

    .line 2234
    move-object v10, v0

    move-wide v11, v2

    invoke-virtual {v10, v11, v12}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->adjustPixels(D)D

    move-result-wide v10

    .line 2239
    .end local v2    # "start":D
    .end local v4    # "length":D
    .end local v6    # "end":D
    .end local v8    # "viewportLength":D
    :cond_0
    :goto_0
    return-void

    .line 2235
    .restart local v2    # "start":D
    .restart local v4    # "length":D
    .restart local v6    # "end":D
    .restart local v8    # "viewportLength":D
    :cond_1
    move-wide v10, v6

    move-wide v12, v8

    cmpl-double v10, v10, v12

    if-lez v10, :cond_0

    .line 2236
    move-object v10, v0

    move-wide v11, v6

    move-wide v13, v8

    sub-double/2addr v11, v13

    invoke-virtual {v10, v11, v12}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->adjustPixels(D)D

    move-result-wide v10

    goto :goto_0
.end method

.method public showAsFirst(Ljavafx/scene/control/IndexedCell;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 2206
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/VirtualFlow;, "Lcom/sun/javafx/scene/control/skin/VirtualFlow<TT;>;"
    move-object v2, p1

    .local v2, "firstCell":Ljavafx/scene/control/IndexedCell;, "TT;"
    move-object v3, v2

    if-eqz v3, :cond_0

    .line 2207
    move-object v3, v1

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v4, v5}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->getCellPosition(Ljavafx/scene/control/IndexedCell;)D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->adjustPixels(D)D

    move-result-wide v3

    .line 2209
    :cond_0
    return-void
.end method

.method public showAsLast(Ljavafx/scene/control/IndexedCell;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 2217
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/VirtualFlow;, "Lcom/sun/javafx/scene/control/skin/VirtualFlow<TT;>;"
    move-object v2, p1

    .local v2, "lastCell":Ljavafx/scene/control/IndexedCell;, "TT;"
    move-object v3, v2

    if-eqz v3, :cond_0

    .line 2218
    move-object v3, v1

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v4, v5}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->getCellPosition(Ljavafx/scene/control/IndexedCell;)D

    move-result-wide v4

    move-object v6, v1

    move-object v7, v2

    invoke-virtual {v6, v7}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->getCellLength(Ljavafx/scene/control/IndexedCell;)D

    move-result-wide v6

    add-double/2addr v4, v6

    move-object v6, v1

    invoke-virtual {v6}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->getViewportLength()D

    move-result-wide v6

    sub-double/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->adjustPixels(D)D

    move-result-wide v3

    .line 2220
    :cond_0
    return-void
.end method

.method protected snapSize(D)D
    .locals 7

    .prologue
    .line 2894
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/VirtualFlow;, "Lcom/sun/javafx/scene/control/skin/VirtualFlow<TT;>;"
    move-wide v2, p1

    .local v2, "v":D
    move-object v4, v1

    iget-boolean v4, v4, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->allowHiDPI:Z

    if-eqz v4, :cond_0

    .line 2895
    move-wide v4, v2

    move-wide v1, v4

    .line 2898
    .end local v1    # "this":Lcom/sun/javafx/scene/control/skin/VirtualFlow;, "Lcom/sun/javafx/scene/control/skin/VirtualFlow<TT;>;"
    :goto_0
    return-wide v1

    .restart local v1    # "this":Lcom/sun/javafx/scene/control/skin/VirtualFlow;, "Lcom/sun/javafx/scene/control/skin/VirtualFlow<TT;>;"
    :cond_0
    move-object v4, v1

    move-wide v5, v2

    invoke-super {v4, v5, v6}, Ljavafx/scene/layout/Region;->snapSize(D)D

    move-result-wide v4

    move-wide v1, v4

    goto :goto_0
.end method

.method protected startSBReleasedAnimation()V
    .locals 8

    .prologue
    .line 2865
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/VirtualFlow;, "Lcom/sun/javafx/scene/control/skin/VirtualFlow<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->sbTouchTimeline:Ljavafx/animation/Timeline;

    if-nez v1, :cond_0

    .line 2870
    move-object v1, v0

    new-instance v2, Ljavafx/animation/Timeline;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    invoke-direct {v3}, Ljavafx/animation/Timeline;-><init>()V

    iput-object v2, v1, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->sbTouchTimeline:Ljavafx/animation/Timeline;

    .line 2871
    move-object v1, v0

    new-instance v2, Ljavafx/animation/KeyFrame;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljavafx/util/Duration;->millis(D)Ljavafx/util/Duration;

    move-result-object v4

    move-object v5, v0

    invoke-static {v5}, Lcom/sun/javafx/scene/control/skin/VirtualFlow$$Lambda$14;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/VirtualFlow;)Ljavafx/event/EventHandler;

    move-result-object v5

    const/4 v6, 0x0

    new-array v6, v6, [Ljavafx/animation/KeyValue;

    invoke-direct {v3, v4, v5, v6}, Ljavafx/animation/KeyFrame;-><init>(Ljavafx/util/Duration;Ljavafx/event/EventHandler;[Ljavafx/animation/KeyValue;)V

    iput-object v2, v1, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->sbTouchKF1:Ljavafx/animation/KeyFrame;

    .line 2876
    move-object v1, v0

    new-instance v2, Ljavafx/animation/KeyFrame;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    const-wide v4, 0x408f400000000000L    # 1000.0

    invoke-static {v4, v5}, Ljavafx/util/Duration;->millis(D)Ljavafx/util/Duration;

    move-result-object v4

    move-object v5, v0

    invoke-static {v5}, Lcom/sun/javafx/scene/control/skin/VirtualFlow$$Lambda$15;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/VirtualFlow;)Ljavafx/event/EventHandler;

    move-result-object v5

    const/4 v6, 0x0

    new-array v6, v6, [Ljavafx/animation/KeyValue;

    invoke-direct {v3, v4, v5, v6}, Ljavafx/animation/KeyFrame;-><init>(Ljavafx/util/Duration;Ljavafx/event/EventHandler;[Ljavafx/animation/KeyValue;)V

    iput-object v2, v1, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->sbTouchKF2:Ljavafx/animation/KeyFrame;

    .line 2882
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->sbTouchTimeline:Ljavafx/animation/Timeline;

    invoke-virtual {v1}, Ljavafx/animation/Timeline;->getKeyFrames()Ljavafx/collections/ObservableList;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljavafx/animation/KeyFrame;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    const/4 v4, 0x0

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->sbTouchKF1:Ljavafx/animation/KeyFrame;

    aput-object v5, v3, v4

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    const/4 v4, 0x1

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->sbTouchKF2:Ljavafx/animation/KeyFrame;

    aput-object v5, v3, v4

    invoke-interface {v1, v2}, Ljavafx/collections/ObservableList;->addAll([Ljava/lang/Object;)Z

    move-result v1

    .line 2884
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->sbTouchTimeline:Ljavafx/animation/Timeline;

    invoke-virtual {v1}, Ljavafx/animation/Timeline;->playFromStart()V

    .line 2885
    return-void
.end method

.method updateHbar()V
    .locals 4

    .prologue
    .line 885
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/VirtualFlow;, "Lcom/sun/javafx/scene/control/skin/VirtualFlow<TT;>;"
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->getScene()Ljavafx/scene/Scene;

    move-result-object v1

    if-nez v1, :cond_1

    .line 898
    :cond_0
    :goto_0
    return-void

    .line 887
    :cond_1
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->isVertical()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 888
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->hbar:Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 889
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->clipView:Lcom/sun/javafx/scene/control/skin/VirtualFlow$ClippedContainer;

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->hbar:Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;->getValue()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/sun/javafx/scene/control/skin/VirtualFlow$ClippedContainer;->setClipX(D)V

    .line 898
    :cond_2
    :goto_1
    goto :goto_0

    .line 894
    :cond_3
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->clipView:Lcom/sun/javafx/scene/control/skin/VirtualFlow$ClippedContainer;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/sun/javafx/scene/control/skin/VirtualFlow$ClippedContainer;->setClipX(D)V

    .line 895
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->hbar:Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/sun/javafx/scene/control/skin/VirtualScrollBar;->setValue(D)V

    goto :goto_1
.end method

.method public final verticalProperty()Ljavafx/beans/property/BooleanProperty;
    .locals 7

    .prologue
    .line 154
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/VirtualFlow;, "Lcom/sun/javafx/scene/control/skin/VirtualFlow<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->vertical:Ljavafx/beans/property/BooleanProperty;

    if-nez v1, :cond_0

    .line 155
    move-object v1, v0

    new-instance v2, Lcom/sun/javafx/scene/control/skin/VirtualFlow$1;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Lcom/sun/javafx/scene/control/skin/VirtualFlow$1;-><init>(Lcom/sun/javafx/scene/control/skin/VirtualFlow;Z)V

    iput-object v2, v1, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->vertical:Ljavafx/beans/property/BooleanProperty;

    .line 183
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/VirtualFlow;->vertical:Ljavafx/beans/property/BooleanProperty;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/VirtualFlow;, "Lcom/sun/javafx/scene/control/skin/VirtualFlow<TT;>;"
    return-object v0
.end method
