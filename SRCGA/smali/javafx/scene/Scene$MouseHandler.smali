.class Ljavafx/scene/Scene$MouseHandler;
.super Ljava/lang/Object;
.source "Scene.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/Scene;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MouseHandler"
.end annotation


# instance fields
.field private currCursor:Ljavafx/scene/Cursor;

.field private currCursorFrame:Lcom/sun/javafx/cursor/CursorFrame;

.field private currentEventTarget:Ljavafx/event/EventTarget;

.field private final currentEventTargets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljavafx/event/EventTarget;",
            ">;"
        }
    .end annotation
.end field

.field private final fullPDRCurrentEventTargets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljavafx/event/EventTarget;",
            ">;"
        }
    .end annotation
.end field

.field private fullPDRCurrentTarget:Ljavafx/event/EventTarget;

.field private fullPDREntered:Z

.field private final fullPDRNewEventTargets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljavafx/event/EventTarget;",
            ">;"
        }
    .end annotation
.end field

.field private fullPDRSource:Ljavafx/event/EventTarget;

.field private fullPDRTmpTargetWrapper:Ljavafx/scene/Scene$TargetWrapper;

.field private hover:Z

.field private lastEvent:Ljavafx/scene/input/MouseEvent;

.field private middleButtonDown:Z

.field private final newEventTargets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljavafx/event/EventTarget;",
            ">;"
        }
    .end annotation
.end field

.field private pdrEventTarget:Ljavafx/scene/Scene$TargetWrapper;

.field private final pdrEventTargets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljavafx/event/EventTarget;",
            ">;"
        }
    .end annotation
.end field

.field private pdrInProgress:Z

.field private pickProcess:Ljava/lang/Runnable;

.field private primaryButtonDown:Z

.field private queue:Lcom/sun/javafx/event/EventQueue;

.field private secondaryButtonDown:Z

.field final synthetic this$0:Ljavafx/scene/Scene;


# direct methods
.method constructor <init>(Ljavafx/scene/Scene;)V
    .locals 7

    .prologue
    .line 3489
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene$MouseHandler;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/Scene;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/Scene$MouseHandler;->this$0:Ljavafx/scene/Scene;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 3490
    move-object v2, v0

    new-instance v3, Ljavafx/scene/Scene$TargetWrapper;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Ljavafx/scene/Scene$TargetWrapper;-><init>(Ljavafx/scene/Scene$1;)V

    iput-object v3, v2, Ljavafx/scene/Scene$MouseHandler;->pdrEventTarget:Ljavafx/scene/Scene$TargetWrapper;

    .line 3491
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Ljavafx/scene/Scene$MouseHandler;->pdrInProgress:Z

    .line 3492
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Ljavafx/scene/Scene$MouseHandler;->fullPDREntered:Z

    .line 3494
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Ljavafx/scene/Scene$MouseHandler;->currentEventTarget:Ljavafx/event/EventTarget;

    .line 3496
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Ljavafx/scene/Scene$MouseHandler;->hover:Z

    .line 3498
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Ljavafx/scene/Scene$MouseHandler;->primaryButtonDown:Z

    .line 3499
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Ljavafx/scene/Scene$MouseHandler;->secondaryButtonDown:Z

    .line 3500
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Ljavafx/scene/Scene$MouseHandler;->middleButtonDown:Z

    .line 3502
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Ljavafx/scene/Scene$MouseHandler;->fullPDRSource:Ljavafx/event/EventTarget;

    .line 3503
    move-object v2, v0

    new-instance v3, Ljavafx/scene/Scene$TargetWrapper;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Ljavafx/scene/Scene$TargetWrapper;-><init>(Ljavafx/scene/Scene$1;)V

    iput-object v3, v2, Ljavafx/scene/Scene$MouseHandler;->fullPDRTmpTargetWrapper:Ljavafx/scene/Scene$TargetWrapper;

    .line 3506
    move-object v2, v0

    new-instance v3, Ljava/util/ArrayList;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Ljavafx/scene/Scene$MouseHandler;->pdrEventTargets:Ljava/util/List;

    .line 3507
    move-object v2, v0

    new-instance v3, Ljava/util/ArrayList;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Ljavafx/scene/Scene$MouseHandler;->currentEventTargets:Ljava/util/List;

    .line 3508
    move-object v2, v0

    new-instance v3, Ljava/util/ArrayList;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Ljavafx/scene/Scene$MouseHandler;->newEventTargets:Ljava/util/List;

    .line 3510
    move-object v2, v0

    new-instance v3, Ljava/util/ArrayList;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Ljavafx/scene/Scene$MouseHandler;->fullPDRCurrentEventTargets:Ljava/util/List;

    .line 3511
    move-object v2, v0

    new-instance v3, Ljava/util/ArrayList;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Ljavafx/scene/Scene$MouseHandler;->fullPDRNewEventTargets:Ljava/util/List;

    .line 3512
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Ljavafx/scene/Scene$MouseHandler;->fullPDRCurrentTarget:Ljavafx/event/EventTarget;

    .line 3516
    move-object v2, v0

    new-instance v3, Lcom/sun/javafx/event/EventQueue;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Lcom/sun/javafx/event/EventQueue;-><init>()V

    iput-object v3, v2, Ljavafx/scene/Scene$MouseHandler;->queue:Lcom/sun/javafx/event/EventQueue;

    .line 3518
    move-object v2, v0

    new-instance v3, Ljavafx/scene/Scene$MouseHandler$1;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    invoke-direct {v4, v5}, Ljavafx/scene/Scene$MouseHandler$1;-><init>(Ljavafx/scene/Scene$MouseHandler;)V

    iput-object v3, v2, Ljavafx/scene/Scene$MouseHandler;->pickProcess:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$1500(Ljavafx/scene/Scene$MouseHandler;Ljavafx/scene/input/MouseEvent;Z)V
    .locals 6

    .prologue
    .line 3489
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/Scene$MouseHandler;
    move-object v1, p1

    .local v1, "x1":Ljavafx/scene/input/MouseEvent;
    move v2, p2

    .local v2, "x2":Z
    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-direct {v3, v4, v5}, Ljavafx/scene/Scene$MouseHandler;->process(Ljavafx/scene/input/MouseEvent;Z)V

    return-void
.end method

.method static synthetic access$1600(Ljavafx/scene/Scene$MouseHandler;Lcom/sun/javafx/geom/PickRay;)Ljavafx/scene/input/PickResult;
    .locals 4

    .prologue
    .line 3489
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/Scene$MouseHandler;
    move-object v1, p1

    .local v1, "x1":Lcom/sun/javafx/geom/PickRay;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljavafx/scene/Scene$MouseHandler;->pickNode(Lcom/sun/javafx/geom/PickRay;)Ljavafx/scene/input/PickResult;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "x0":Ljavafx/scene/Scene$MouseHandler;
    return-object v0
.end method

.method static synthetic access$3100(Ljavafx/scene/Scene$MouseHandler;Ljavafx/scene/Cursor;)V
    .locals 4

    .prologue
    .line 3489
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/Scene$MouseHandler;
    move-object v1, p1

    .local v1, "x1":Ljavafx/scene/Cursor;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljavafx/scene/Scene$MouseHandler;->updateCursor(Ljavafx/scene/Cursor;)V

    return-void
.end method

.method static synthetic access$3900(Ljavafx/scene/Scene$MouseHandler;)V
    .locals 2

    .prologue
    .line 3489
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/Scene$MouseHandler;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/Scene$MouseHandler;->pulse()V

    return-void
.end method

.method static synthetic access$7600(Ljavafx/scene/Scene$MouseHandler;Ljavafx/scene/Node;)V
    .locals 4

    .prologue
    .line 3489
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/Scene$MouseHandler;
    move-object v1, p1

    .local v1, "x1":Ljavafx/scene/Node;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljavafx/scene/Scene$MouseHandler;->handleNodeRemoval(Ljavafx/scene/Node;)V

    return-void
.end method

.method static synthetic access$7700(Ljavafx/scene/Scene$MouseHandler;)Ljavafx/scene/input/MouseEvent;
    .locals 2

    .prologue
    .line 3489
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/Scene$MouseHandler;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Scene$MouseHandler;->lastEvent:Ljavafx/scene/input/MouseEvent;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/Scene$MouseHandler;
    return-object v0
.end method

.method private clearPDREventTargets()V
    .locals 4

    .prologue
    .line 3538
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene$MouseHandler;
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Ljavafx/scene/Scene$MouseHandler;->pdrInProgress:Z

    .line 3539
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/Scene$MouseHandler;->currentEventTargets:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/Scene$MouseHandler;->currentEventTargets:Ljava/util/List;

    const/4 v3, 0x0

    .line 3540
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavafx/event/EventTarget;

    :goto_0
    iput-object v2, v1, Ljavafx/scene/Scene$MouseHandler;->currentEventTarget:Ljavafx/event/EventTarget;

    .line 3541
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Scene$MouseHandler;->pdrEventTarget:Ljavafx/scene/Scene$TargetWrapper;

    invoke-virtual {v1}, Ljavafx/scene/Scene$TargetWrapper;->clear()V

    .line 3542
    return-void

    .line 3540
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private handleEnterExit(Ljavafx/scene/input/MouseEvent;Ljavafx/scene/Scene$TargetWrapper;)V
    .locals 14

    .prologue
    .line 3630
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene$MouseHandler;
    move-object v1, p1

    .local v1, "e":Ljavafx/scene/input/MouseEvent;
    move-object/from16 v2, p2

    .local v2, "pickedTarget":Ljavafx/scene/Scene$TargetWrapper;
    move-object v9, v2

    invoke-virtual {v9}, Ljavafx/scene/Scene$TargetWrapper;->getEventTarget()Ljavafx/event/EventTarget;

    move-result-object v9

    move-object v10, v0

    iget-object v10, v10, Ljavafx/scene/Scene$MouseHandler;->currentEventTarget:Ljavafx/event/EventTarget;

    if-ne v9, v10, :cond_0

    move-object v9, v1

    .line 3631
    invoke-virtual {v9}, Ljavafx/scene/input/MouseEvent;->getEventType()Ljavafx/event/EventType;

    move-result-object v9

    sget-object v10, Ljavafx/scene/input/MouseEvent;->MOUSE_EXITED:Ljavafx/event/EventType;

    if-ne v9, v10, :cond_7

    .line 3633
    :cond_0
    move-object v9, v1

    invoke-virtual {v9}, Ljavafx/scene/input/MouseEvent;->getEventType()Ljavafx/event/EventType;

    move-result-object v9

    sget-object v10, Ljavafx/scene/input/MouseEvent;->MOUSE_EXITED:Ljavafx/event/EventType;

    if-ne v9, v10, :cond_1

    .line 3634
    move-object v9, v0

    iget-object v9, v9, Ljavafx/scene/Scene$MouseHandler;->newEventTargets:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->clear()V

    .line 3639
    :goto_0
    move-object v9, v0

    iget-object v9, v9, Ljavafx/scene/Scene$MouseHandler;->newEventTargets:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    move v3, v9

    .line 3640
    .local v3, "newTargetsSize":I
    move-object v9, v0

    iget-object v9, v9, Ljavafx/scene/Scene$MouseHandler;->currentEventTargets:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    const/4 v10, 0x1

    add-int/lit8 v9, v9, -0x1

    move v4, v9

    .line 3641
    .local v4, "i":I
    move v9, v3

    const/4 v10, 0x1

    add-int/lit8 v9, v9, -0x1

    move v5, v9

    .line 3642
    .local v5, "j":I
    move-object v9, v0

    iget-object v9, v9, Ljavafx/scene/Scene$MouseHandler;->pdrEventTargets:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    const/4 v10, 0x1

    add-int/lit8 v9, v9, -0x1

    move v6, v9

    .line 3644
    .local v6, "k":I
    :goto_1
    move v9, v4

    if-ltz v9, :cond_2

    move v9, v5

    if-ltz v9, :cond_2

    move-object v9, v0

    iget-object v9, v9, Ljavafx/scene/Scene$MouseHandler;->currentEventTargets:Ljava/util/List;

    move v10, v4

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    move-object v10, v0

    iget-object v10, v10, Ljavafx/scene/Scene$MouseHandler;->newEventTargets:Ljava/util/List;

    move v11, v5

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    if-ne v9, v10, :cond_2

    .line 3645
    add-int/lit8 v4, v4, -0x1

    .line 3646
    add-int/lit8 v5, v5, -0x1

    .line 3647
    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    .line 3636
    .end local v3    # "newTargetsSize":I
    .end local v4    # "i":I
    .end local v5    # "j":I
    .end local v6    # "k":I
    :cond_1
    move-object v9, v2

    move-object v10, v0

    iget-object v10, v10, Ljavafx/scene/Scene$MouseHandler;->newEventTargets:Ljava/util/List;

    invoke-virtual {v9, v10}, Ljavafx/scene/Scene$TargetWrapper;->fillHierarchy(Ljava/util/List;)V

    goto :goto_0

    .line 3650
    .restart local v3    # "newTargetsSize":I
    .restart local v4    # "i":I
    .restart local v5    # "j":I
    .restart local v6    # "k":I
    :cond_2
    move v9, v6

    move v7, v9

    .line 3651
    .local v7, "memk":I
    :goto_2
    move v9, v4

    if-ltz v9, :cond_3

    .line 3652
    move-object v9, v0

    iget-object v9, v9, Ljavafx/scene/Scene$MouseHandler;->currentEventTargets:Ljava/util/List;

    move v10, v4

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljavafx/event/EventTarget;

    move-object v8, v9

    .line 3653
    .local v8, "exitedEventTarget":Ljavafx/event/EventTarget;
    move-object v9, v0

    iget-boolean v9, v9, Ljavafx/scene/Scene$MouseHandler;->pdrInProgress:Z

    if-eqz v9, :cond_5

    move v9, v6

    if-ltz v9, :cond_3

    move-object v9, v8

    move-object v10, v0

    iget-object v10, v10, Ljavafx/scene/Scene$MouseHandler;->pdrEventTargets:Ljava/util/List;

    move v11, v6

    .line 3654
    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    if-eq v9, v10, :cond_5

    .line 3655
    .line 3662
    .end local v8    # "exitedEventTarget":Ljavafx/event/EventTarget;
    :cond_3
    move v9, v7

    move v6, v9

    .line 3663
    :goto_3
    move v9, v5

    if-ltz v9, :cond_4

    .line 3664
    move-object v9, v0

    iget-object v9, v9, Ljavafx/scene/Scene$MouseHandler;->newEventTargets:Ljava/util/List;

    move v10, v5

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljavafx/event/EventTarget;

    move-object v8, v9

    .line 3665
    .local v8, "enteredEventTarget":Ljavafx/event/EventTarget;
    move-object v9, v0

    iget-boolean v9, v9, Ljavafx/scene/Scene$MouseHandler;->pdrInProgress:Z

    if-eqz v9, :cond_6

    move v9, v6

    if-ltz v9, :cond_4

    move-object v9, v8

    move-object v10, v0

    iget-object v10, v10, Ljavafx/scene/Scene$MouseHandler;->pdrEventTargets:Ljava/util/List;

    move v11, v6

    .line 3666
    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    if-eq v9, v10, :cond_6

    .line 3667
    .line 3674
    .end local v8    # "enteredEventTarget":Ljavafx/event/EventTarget;
    :cond_4
    move-object v9, v0

    move-object v10, v2

    invoke-virtual {v10}, Ljavafx/scene/Scene$TargetWrapper;->getEventTarget()Ljavafx/event/EventTarget;

    move-result-object v10

    iput-object v10, v9, Ljavafx/scene/Scene$MouseHandler;->currentEventTarget:Ljavafx/event/EventTarget;

    .line 3675
    move-object v9, v0

    iget-object v9, v9, Ljavafx/scene/Scene$MouseHandler;->currentEventTargets:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->clear()V

    .line 3676
    add-int/lit8 v5, v5, 0x1

    :goto_4
    move v9, v5

    move v10, v3

    if-ge v9, v10, :cond_7

    .line 3677
    move-object v9, v0

    iget-object v9, v9, Ljavafx/scene/Scene$MouseHandler;->currentEventTargets:Ljava/util/List;

    move-object v10, v0

    iget-object v10, v10, Ljavafx/scene/Scene$MouseHandler;->newEventTargets:Ljava/util/List;

    move v11, v5

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v9

    .line 3676
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 3657
    .local v8, "exitedEventTarget":Ljavafx/event/EventTarget;
    :cond_5
    move-object v9, v0

    iget-object v9, v9, Ljavafx/scene/Scene$MouseHandler;->queue:Lcom/sun/javafx/event/EventQueue;

    move-object v10, v1

    move-object v11, v8

    move-object v12, v8

    sget-object v13, Ljavafx/scene/input/MouseEvent;->MOUSE_EXITED_TARGET:Ljavafx/event/EventType;

    invoke-virtual {v10, v11, v12, v13}, Ljavafx/scene/input/MouseEvent;->copyFor(Ljava/lang/Object;Ljavafx/event/EventTarget;Ljavafx/event/EventType;)Ljavafx/scene/input/MouseEvent;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/sun/javafx/event/EventQueue;->postEvent(Ljavafx/event/Event;)V

    .line 3651
    add-int/lit8 v4, v4, -0x1

    add-int/lit8 v6, v6, -0x1

    goto :goto_2

    .line 3669
    .local v8, "enteredEventTarget":Ljavafx/event/EventTarget;
    :cond_6
    move-object v9, v0

    iget-object v9, v9, Ljavafx/scene/Scene$MouseHandler;->queue:Lcom/sun/javafx/event/EventQueue;

    move-object v10, v1

    move-object v11, v8

    move-object v12, v8

    sget-object v13, Ljavafx/scene/input/MouseEvent;->MOUSE_ENTERED_TARGET:Ljavafx/event/EventType;

    invoke-virtual {v10, v11, v12, v13}, Ljavafx/scene/input/MouseEvent;->copyFor(Ljava/lang/Object;Ljavafx/event/EventTarget;Ljavafx/event/EventType;)Ljavafx/scene/input/MouseEvent;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/sun/javafx/event/EventQueue;->postEvent(Ljavafx/event/Event;)V

    .line 3663
    add-int/lit8 v5, v5, -0x1

    add-int/lit8 v6, v6, -0x1

    goto :goto_3

    .line 3680
    .end local v3    # "newTargetsSize":I
    .end local v4    # "i":I
    .end local v5    # "j":I
    .end local v6    # "k":I
    .end local v7    # "memk":I
    .end local v8    # "enteredEventTarget":Ljavafx/event/EventTarget;
    :cond_7
    move-object v9, v0

    iget-object v9, v9, Ljavafx/scene/Scene$MouseHandler;->queue:Lcom/sun/javafx/event/EventQueue;

    invoke-virtual {v9}, Lcom/sun/javafx/event/EventQueue;->fire()V

    .line 3681
    return-void
.end method

.method private handleNodeRemoval(Ljavafx/scene/Node;)V
    .locals 13

    .prologue
    .line 3569
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene$MouseHandler;
    move-object v1, p1

    .local v1, "removing":Ljavafx/scene/Node;
    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/Scene$MouseHandler;->lastEvent:Ljavafx/scene/input/MouseEvent;

    if-nez v5, :cond_0

    .line 3571
    .line 3627
    :goto_0
    return-void

    .line 3575
    :cond_0
    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/Scene$MouseHandler;->currentEventTargets:Ljava/util/List;

    move-object v6, v1

    invoke-interface {v5, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 3576
    const/4 v5, 0x0

    move v2, v5

    .line 3577
    .local v2, "i":I
    const/4 v5, 0x0

    move-object v3, v5

    .line 3578
    .local v3, "trg":Ljavafx/event/EventTarget;
    :goto_1
    move-object v5, v3

    move-object v6, v1

    if-eq v5, v6, :cond_1

    .line 3579
    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/Scene$MouseHandler;->currentEventTargets:Ljava/util/List;

    move v6, v2

    add-int/lit8 v2, v2, 0x1

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljavafx/event/EventTarget;

    move-object v3, v5

    .line 3581
    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/Scene$MouseHandler;->queue:Lcom/sun/javafx/event/EventQueue;

    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/Scene$MouseHandler;->lastEvent:Ljavafx/scene/input/MouseEvent;

    move-object v7, v3

    move-object v8, v3

    sget-object v9, Ljavafx/scene/input/MouseEvent;->MOUSE_EXITED_TARGET:Ljavafx/event/EventType;

    invoke-virtual {v6, v7, v8, v9}, Ljavafx/scene/input/MouseEvent;->copyFor(Ljava/lang/Object;Ljavafx/event/EventTarget;Ljavafx/event/EventType;)Ljavafx/scene/input/MouseEvent;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sun/javafx/event/EventQueue;->postEvent(Ljavafx/event/Event;)V

    goto :goto_1

    .line 3584
    :cond_1
    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/Scene$MouseHandler;->currentEventTargets:Ljava/util/List;

    const/4 v6, 0x0

    move v7, v2

    invoke-interface {v5, v6, v7}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 3587
    .end local v2    # "i":I
    .end local v3    # "trg":Ljavafx/event/EventTarget;
    :cond_2
    move-object v5, v0

    iget-boolean v5, v5, Ljavafx/scene/Scene$MouseHandler;->fullPDREntered:Z

    if-eqz v5, :cond_4

    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/Scene$MouseHandler;->fullPDRCurrentEventTargets:Ljava/util/List;

    move-object v6, v1

    invoke-interface {v5, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 3588
    const/4 v5, 0x0

    move v2, v5

    .line 3589
    .restart local v2    # "i":I
    const/4 v5, 0x0

    move-object v3, v5

    .line 3590
    .restart local v3    # "trg":Ljavafx/event/EventTarget;
    :goto_2
    move-object v5, v3

    move-object v6, v1

    if-eq v5, v6, :cond_3

    .line 3591
    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/Scene$MouseHandler;->fullPDRCurrentEventTargets:Ljava/util/List;

    move v6, v2

    add-int/lit8 v2, v2, 0x1

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljavafx/event/EventTarget;

    move-object v3, v5

    .line 3593
    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/Scene$MouseHandler;->queue:Lcom/sun/javafx/event/EventQueue;

    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/Scene$MouseHandler;->lastEvent:Ljavafx/scene/input/MouseEvent;

    move-object v7, v3

    move-object v8, v3

    sget-object v9, Ljavafx/scene/input/MouseDragEvent;->MOUSE_DRAG_EXITED_TARGET:Ljavafx/event/EventType;

    move-object v10, v0

    iget-object v10, v10, Ljavafx/scene/Scene$MouseHandler;->fullPDRSource:Ljavafx/event/EventTarget;

    move-object v11, v0

    iget-object v11, v11, Ljavafx/scene/Scene$MouseHandler;->lastEvent:Ljavafx/scene/input/MouseEvent;

    .line 3596
    invoke-virtual {v11}, Ljavafx/scene/input/MouseEvent;->getPickResult()Ljavafx/scene/input/PickResult;

    move-result-object v11

    .line 3594
    invoke-static/range {v6 .. v11}, Ljavafx/scene/input/MouseEvent;->copyForMouseDragEvent(Ljavafx/scene/input/MouseEvent;Ljava/lang/Object;Ljavafx/event/EventTarget;Ljavafx/event/EventType;Ljava/lang/Object;Ljavafx/scene/input/PickResult;)Ljavafx/scene/input/MouseDragEvent;

    move-result-object v6

    .line 3593
    invoke-virtual {v5, v6}, Lcom/sun/javafx/event/EventQueue;->postEvent(Ljavafx/event/Event;)V

    goto :goto_2

    .line 3599
    :cond_3
    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/Scene$MouseHandler;->fullPDRCurrentEventTargets:Ljava/util/List;

    const/4 v6, 0x0

    move v7, v2

    invoke-interface {v5, v6, v7}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 3602
    .end local v2    # "i":I
    .end local v3    # "trg":Ljavafx/event/EventTarget;
    :cond_4
    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/Scene$MouseHandler;->queue:Lcom/sun/javafx/event/EventQueue;

    invoke-virtual {v5}, Lcom/sun/javafx/event/EventQueue;->fire()V

    .line 3604
    move-object v5, v0

    iget-boolean v5, v5, Ljavafx/scene/Scene$MouseHandler;->pdrInProgress:Z

    if-eqz v5, :cond_6

    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/Scene$MouseHandler;->pdrEventTargets:Ljava/util/List;

    move-object v6, v1

    invoke-interface {v5, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 3605
    const/4 v5, 0x0

    move v2, v5

    .line 3606
    .restart local v2    # "i":I
    const/4 v5, 0x0

    move-object v3, v5

    .line 3607
    .restart local v3    # "trg":Ljavafx/event/EventTarget;
    :goto_3
    move-object v5, v3

    move-object v6, v1

    if-eq v5, v6, :cond_5

    .line 3608
    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/Scene$MouseHandler;->pdrEventTargets:Ljava/util/List;

    move v6, v2

    add-int/lit8 v2, v2, 0x1

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljavafx/event/EventTarget;

    move-object v3, v5

    .line 3612
    move-object v5, v3

    check-cast v5, Ljavafx/scene/Node;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljavafx/scene/Node;->setPressed(Z)V

    goto :goto_3

    .line 3614
    :cond_5
    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/Scene$MouseHandler;->pdrEventTargets:Ljava/util/List;

    const/4 v6, 0x0

    move v7, v2

    invoke-interface {v5, v6, v7}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 3616
    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/Scene$MouseHandler;->pdrEventTargets:Ljava/util/List;

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljavafx/event/EventTarget;

    move-object v3, v5

    .line 3617
    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/Scene$MouseHandler;->pdrEventTarget:Ljavafx/scene/Scene$TargetWrapper;

    invoke-virtual {v5}, Ljavafx/scene/Scene$TargetWrapper;->getResult()Ljavafx/scene/input/PickResult;

    move-result-object v5

    move-object v4, v5

    .line 3618
    .local v4, "res":Ljavafx/scene/input/PickResult;
    move-object v5, v3

    instance-of v5, v5, Ljavafx/scene/Node;

    if-eqz v5, :cond_7

    .line 3619
    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/Scene$MouseHandler;->pdrEventTarget:Ljavafx/scene/Scene$TargetWrapper;

    new-instance v6, Ljavafx/scene/input/PickResult;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    move-object v8, v3

    check-cast v8, Ljavafx/scene/Node;

    move-object v9, v4

    .line 3620
    invoke-virtual {v9}, Ljavafx/scene/input/PickResult;->getIntersectedPoint()Ljavafx/geometry/Point3D;

    move-result-object v9

    move-object v10, v4

    invoke-virtual {v10}, Ljavafx/scene/input/PickResult;->getIntersectedDistance()D

    move-result-wide v10

    invoke-direct {v7, v8, v9, v10, v11}, Ljavafx/scene/input/PickResult;-><init>(Ljavafx/scene/Node;Ljavafx/geometry/Point3D;D)V

    .line 3619
    invoke-virtual {v5, v6}, Ljavafx/scene/Scene$TargetWrapper;->setNodeResult(Ljavafx/scene/input/PickResult;)V

    .line 3627
    .end local v2    # "i":I
    .end local v3    # "trg":Ljavafx/event/EventTarget;
    .end local v4    # "res":Ljavafx/scene/input/PickResult;
    :cond_6
    :goto_4
    goto/16 :goto_0

    .line 3622
    .restart local v2    # "i":I
    .restart local v3    # "trg":Ljavafx/event/EventTarget;
    .restart local v4    # "res":Ljavafx/scene/input/PickResult;
    :cond_7
    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/Scene$MouseHandler;->pdrEventTarget:Ljavafx/scene/Scene$TargetWrapper;

    new-instance v6, Ljavafx/scene/input/PickResult;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    const/4 v8, 0x0

    move-object v9, v4

    .line 3623
    invoke-virtual {v9}, Ljavafx/scene/input/PickResult;->getIntersectedPoint()Ljavafx/geometry/Point3D;

    move-result-object v9

    move-object v10, v4

    invoke-virtual {v10}, Ljavafx/scene/input/PickResult;->getIntersectedDistance()D

    move-result-wide v10

    invoke-direct {v7, v8, v9, v10, v11}, Ljavafx/scene/input/PickResult;-><init>(Ljavafx/scene/Node;Ljavafx/geometry/Point3D;D)V

    move-object v7, v3

    check-cast v7, Ljavafx/scene/Scene;

    .line 3622
    invoke-virtual {v5, v6, v7}, Ljavafx/scene/Scene$TargetWrapper;->setSceneResult(Ljavafx/scene/input/PickResult;Ljavafx/scene/Scene;)V

    goto :goto_4
.end method

.method private pickNode(Lcom/sun/javafx/geom/PickRay;)Ljavafx/scene/input/PickResult;
    .locals 7

    .prologue
    .line 3902
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene$MouseHandler;
    move-object v1, p1

    .local v1, "pickRay":Lcom/sun/javafx/geom/PickRay;
    new-instance v3, Lcom/sun/javafx/scene/input/PickResultChooser;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Lcom/sun/javafx/scene/input/PickResultChooser;-><init>()V

    move-object v2, v3

    .line 3903
    .local v2, "r":Lcom/sun/javafx/scene/input/PickResultChooser;
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/Scene$MouseHandler;->this$0:Ljavafx/scene/Scene;

    invoke-virtual {v3}, Ljavafx/scene/Scene;->getRoot()Ljavafx/scene/Parent;

    move-result-object v3

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/Parent;->impl_pickNode(Lcom/sun/javafx/geom/PickRay;Lcom/sun/javafx/scene/input/PickResultChooser;)V

    .line 3904
    move-object v3, v2

    invoke-virtual {v3}, Lcom/sun/javafx/scene/input/PickResultChooser;->toPickResult()Ljavafx/scene/input/PickResult;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Ljavafx/scene/Scene$MouseHandler;
    return-object v0
.end method

.method private process(Ljavafx/scene/input/MouseEvent;Z)V
    .locals 32

    .prologue
    .line 3684
    move-object/from16 v0, p0

    .local v0, "this":Ljavafx/scene/Scene$MouseHandler;
    move-object/from16 v1, p1

    .local v1, "e":Ljavafx/scene/input/MouseEvent;
    move/from16 v2, p2

    .local v2, "onPulse":Z
    invoke-static {}, Lcom/sun/javafx/tk/Toolkit;->getToolkit()Lcom/sun/javafx/tk/Toolkit;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sun/javafx/tk/Toolkit;->checkFxUserThread()V

    .line 3685
    const/4 v7, 0x1

    invoke-static {v7}, Ljavafx/scene/Scene;->access$4802(Z)Z

    move-result v7

    .line 3687
    move-object v7, v0

    iget-object v7, v7, Ljavafx/scene/Scene$MouseHandler;->this$0:Ljavafx/scene/Scene;

    new-instance v8, Ljavafx/geometry/Point2D;

    move-object/from16 v31, v8

    move-object/from16 v8, v31

    move-object/from16 v9, v31

    move-object v10, v1

    invoke-virtual {v10}, Ljavafx/scene/input/MouseEvent;->getScreenX()D

    move-result-wide v10

    move-object v12, v1

    invoke-virtual {v12}, Ljavafx/scene/input/MouseEvent;->getScreenY()D

    move-result-wide v12

    invoke-direct {v9, v10, v11, v12, v13}, Ljavafx/geometry/Point2D;-><init>(DD)V

    invoke-static {v7, v8}, Ljavafx/scene/Scene;->access$4702(Ljavafx/scene/Scene;Ljavafx/geometry/Point2D;)Ljavafx/geometry/Point2D;

    move-result-object v7

    .line 3688
    move-object v7, v0

    iget-object v7, v7, Ljavafx/scene/Scene$MouseHandler;->this$0:Ljavafx/scene/Scene;

    new-instance v8, Ljavafx/geometry/Point2D;

    move-object/from16 v31, v8

    move-object/from16 v8, v31

    move-object/from16 v9, v31

    move-object v10, v1

    invoke-virtual {v10}, Ljavafx/scene/input/MouseEvent;->getSceneX()D

    move-result-wide v10

    move-object v12, v1

    invoke-virtual {v12}, Ljavafx/scene/input/MouseEvent;->getSceneY()D

    move-result-wide v12

    invoke-direct {v9, v10, v11, v12, v13}, Ljavafx/geometry/Point2D;-><init>(DD)V

    invoke-static {v7, v8}, Ljavafx/scene/Scene;->access$4602(Ljavafx/scene/Scene;Ljavafx/geometry/Point2D;)Ljavafx/geometry/Point2D;

    move-result-object v7

    .line 3690
    const/4 v7, 0x0

    move v3, v7

    .line 3691
    .local v3, "gestureStarted":Z
    move v7, v2

    if-nez v7, :cond_1

    .line 3692
    move-object v7, v1

    invoke-virtual {v7}, Ljavafx/scene/input/MouseEvent;->getEventType()Ljavafx/event/EventType;

    move-result-object v7

    sget-object v8, Ljavafx/scene/input/MouseEvent;->MOUSE_PRESSED:Ljavafx/event/EventType;

    if-ne v7, v8, :cond_10

    .line 3693
    move-object v7, v0

    iget-boolean v7, v7, Ljavafx/scene/Scene$MouseHandler;->primaryButtonDown:Z

    if-nez v7, :cond_0

    move-object v7, v0

    iget-boolean v7, v7, Ljavafx/scene/Scene$MouseHandler;->secondaryButtonDown:Z

    if-nez v7, :cond_0

    move-object v7, v0

    iget-boolean v7, v7, Ljavafx/scene/Scene$MouseHandler;->middleButtonDown:Z

    if-nez v7, :cond_0

    .line 3695
    const/4 v7, 0x1

    move v3, v7

    .line 3697
    move-object v7, v0

    iget-object v7, v7, Ljavafx/scene/Scene$MouseHandler;->this$0:Ljavafx/scene/Scene;

    new-instance v8, Ljavafx/scene/Scene$DnDGesture;

    move-object/from16 v31, v8

    move-object/from16 v8, v31

    move-object/from16 v9, v31

    move-object v10, v0

    iget-object v10, v10, Ljavafx/scene/Scene$MouseHandler;->this$0:Ljavafx/scene/Scene;

    invoke-direct {v9, v10}, Ljavafx/scene/Scene$DnDGesture;-><init>(Ljavafx/scene/Scene;)V

    iput-object v8, v7, Ljavafx/scene/Scene;->dndGesture:Ljavafx/scene/Scene$DnDGesture;

    .line 3699
    move-object v7, v0

    invoke-direct {v7}, Ljavafx/scene/Scene$MouseHandler;->clearPDREventTargets()V

    .line 3710
    :cond_0
    :goto_0
    move-object v7, v0

    move-object v8, v1

    invoke-virtual {v8}, Ljavafx/scene/input/MouseEvent;->isPrimaryButtonDown()Z

    move-result v8

    iput-boolean v8, v7, Ljavafx/scene/Scene$MouseHandler;->primaryButtonDown:Z

    .line 3711
    move-object v7, v0

    move-object v8, v1

    invoke-virtual {v8}, Ljavafx/scene/input/MouseEvent;->isSecondaryButtonDown()Z

    move-result v8

    iput-boolean v8, v7, Ljavafx/scene/Scene$MouseHandler;->secondaryButtonDown:Z

    .line 3712
    move-object v7, v0

    move-object v8, v1

    invoke-virtual {v8}, Ljavafx/scene/input/MouseEvent;->isMiddleButtonDown()Z

    move-result v8

    iput-boolean v8, v7, Ljavafx/scene/Scene$MouseHandler;->middleButtonDown:Z

    .line 3715
    :cond_1
    move-object v7, v0

    iget-object v7, v7, Ljavafx/scene/Scene$MouseHandler;->this$0:Ljavafx/scene/Scene;

    move-object v8, v0

    iget-object v8, v8, Ljavafx/scene/Scene$MouseHandler;->this$0:Ljavafx/scene/Scene;

    invoke-static {v8}, Ljavafx/scene/Scene;->access$6600(Ljavafx/scene/Scene;)Ljavafx/scene/Scene$TargetWrapper;

    move-result-object v8

    move-object v9, v1

    invoke-virtual {v9}, Ljavafx/scene/input/MouseEvent;->getSceneX()D

    move-result-wide v9

    move-object v11, v1

    invoke-virtual {v11}, Ljavafx/scene/input/MouseEvent;->getSceneY()D

    move-result-wide v11

    invoke-static/range {v7 .. v12}, Ljavafx/scene/Scene;->access$6700(Ljavafx/scene/Scene;Ljavafx/scene/Scene$TargetWrapper;DD)V

    .line 3716
    move-object v7, v0

    iget-object v7, v7, Ljavafx/scene/Scene$MouseHandler;->this$0:Ljavafx/scene/Scene;

    invoke-static {v7}, Ljavafx/scene/Scene;->access$6600(Ljavafx/scene/Scene;)Ljavafx/scene/Scene$TargetWrapper;

    move-result-object v7

    invoke-virtual {v7}, Ljavafx/scene/Scene$TargetWrapper;->getResult()Ljavafx/scene/input/PickResult;

    move-result-object v7

    move-object v4, v7

    .line 3717
    .local v4, "res":Ljavafx/scene/input/PickResult;
    move-object v7, v4

    if-eqz v7, :cond_2

    .line 3718
    new-instance v7, Ljavafx/scene/input/MouseEvent;

    move-object/from16 v31, v7

    move-object/from16 v7, v31

    move-object/from16 v8, v31

    move-object v9, v1

    invoke-virtual {v9}, Ljavafx/scene/input/MouseEvent;->getEventType()Ljavafx/event/EventType;

    move-result-object v9

    move-object v10, v1

    invoke-virtual {v10}, Ljavafx/scene/input/MouseEvent;->getSceneX()D

    move-result-wide v10

    move-object v12, v1

    invoke-virtual {v12}, Ljavafx/scene/input/MouseEvent;->getSceneY()D

    move-result-wide v12

    move-object v14, v1

    .line 3719
    invoke-virtual {v14}, Ljavafx/scene/input/MouseEvent;->getScreenX()D

    move-result-wide v14

    move-object/from16 v16, v1

    invoke-virtual/range {v16 .. v16}, Ljavafx/scene/input/MouseEvent;->getScreenY()D

    move-result-wide v16

    move-object/from16 v18, v1

    invoke-virtual/range {v18 .. v18}, Ljavafx/scene/input/MouseEvent;->getButton()Ljavafx/scene/input/MouseButton;

    move-result-object v18

    move-object/from16 v19, v1

    invoke-virtual/range {v19 .. v19}, Ljavafx/scene/input/MouseEvent;->getClickCount()I

    move-result v19

    move-object/from16 v20, v1

    .line 3720
    invoke-virtual/range {v20 .. v20}, Ljavafx/scene/input/MouseEvent;->isShiftDown()Z

    move-result v20

    move-object/from16 v21, v1

    invoke-virtual/range {v21 .. v21}, Ljavafx/scene/input/MouseEvent;->isControlDown()Z

    move-result v21

    move-object/from16 v22, v1

    invoke-virtual/range {v22 .. v22}, Ljavafx/scene/input/MouseEvent;->isAltDown()Z

    move-result v22

    move-object/from16 v23, v1

    invoke-virtual/range {v23 .. v23}, Ljavafx/scene/input/MouseEvent;->isMetaDown()Z

    move-result v23

    move-object/from16 v24, v1

    .line 3721
    invoke-virtual/range {v24 .. v24}, Ljavafx/scene/input/MouseEvent;->isPrimaryButtonDown()Z

    move-result v24

    move-object/from16 v25, v1

    invoke-virtual/range {v25 .. v25}, Ljavafx/scene/input/MouseEvent;->isMiddleButtonDown()Z

    move-result v25

    move-object/from16 v26, v1

    invoke-virtual/range {v26 .. v26}, Ljavafx/scene/input/MouseEvent;->isSecondaryButtonDown()Z

    move-result v26

    move-object/from16 v27, v1

    .line 3722
    invoke-virtual/range {v27 .. v27}, Ljavafx/scene/input/MouseEvent;->isSynthesized()Z

    move-result v27

    move-object/from16 v28, v1

    invoke-virtual/range {v28 .. v28}, Ljavafx/scene/input/MouseEvent;->isPopupTrigger()Z

    move-result v28

    move-object/from16 v29, v1

    invoke-virtual/range {v29 .. v29}, Ljavafx/scene/input/MouseEvent;->isStillSincePress()Z

    move-result v29

    move-object/from16 v30, v4

    invoke-direct/range {v8 .. v30}, Ljavafx/scene/input/MouseEvent;-><init>(Ljavafx/event/EventType;DDDDLjavafx/scene/input/MouseButton;IZZZZZZZZZZLjavafx/scene/input/PickResult;)V

    move-object v1, v7

    .line 3725
    :cond_2
    move-object v7, v1

    invoke-virtual {v7}, Ljavafx/scene/input/MouseEvent;->getEventType()Ljavafx/event/EventType;

    move-result-object v7

    sget-object v8, Ljavafx/scene/input/MouseEvent;->MOUSE_EXITED:Ljavafx/event/EventType;

    if-ne v7, v8, :cond_3

    .line 3726
    move-object v7, v0

    iget-object v7, v7, Ljavafx/scene/Scene$MouseHandler;->this$0:Ljavafx/scene/Scene;

    invoke-static {v7}, Ljavafx/scene/Scene;->access$6600(Ljavafx/scene/Scene;)Ljavafx/scene/Scene$TargetWrapper;

    move-result-object v7

    invoke-virtual {v7}, Ljavafx/scene/Scene$TargetWrapper;->clear()V

    .line 3730
    :cond_3
    move-object v7, v0

    iget-boolean v7, v7, Ljavafx/scene/Scene$MouseHandler;->pdrInProgress:Z

    if-eqz v7, :cond_13

    .line 3731
    move-object v7, v0

    iget-object v7, v7, Ljavafx/scene/Scene$MouseHandler;->pdrEventTarget:Ljavafx/scene/Scene$TargetWrapper;

    move-object v5, v7

    .line 3736
    .local v5, "target":Ljavafx/scene/Scene$TargetWrapper;
    :goto_1
    move v7, v3

    if-eqz v7, :cond_4

    .line 3737
    move-object v7, v0

    iget-object v7, v7, Ljavafx/scene/Scene$MouseHandler;->pdrEventTarget:Ljavafx/scene/Scene$TargetWrapper;

    move-object v8, v5

    invoke-virtual {v7, v8}, Ljavafx/scene/Scene$TargetWrapper;->copy(Ljavafx/scene/Scene$TargetWrapper;)V

    .line 3738
    move-object v7, v0

    iget-object v7, v7, Ljavafx/scene/Scene$MouseHandler;->pdrEventTarget:Ljavafx/scene/Scene$TargetWrapper;

    move-object v8, v0

    iget-object v8, v8, Ljavafx/scene/Scene$MouseHandler;->pdrEventTargets:Ljava/util/List;

    invoke-virtual {v7, v8}, Ljavafx/scene/Scene$TargetWrapper;->fillHierarchy(Ljava/util/List;)V

    .line 3741
    :cond_4
    move v7, v2

    if-nez v7, :cond_5

    .line 3742
    move-object v7, v0

    iget-object v7, v7, Ljavafx/scene/Scene$MouseHandler;->this$0:Ljavafx/scene/Scene;

    invoke-static {v7}, Ljavafx/scene/Scene;->access$7800(Ljavafx/scene/Scene;)Ljavafx/scene/Scene$ClickGenerator;

    move-result-object v7

    move-object v8, v1

    invoke-static {v7, v8}, Ljavafx/scene/Scene$ClickGenerator;->access$7900(Ljavafx/scene/Scene$ClickGenerator;Ljavafx/scene/input/MouseEvent;)Ljavafx/scene/input/MouseEvent;

    move-result-object v7

    move-object v1, v7

    .line 3746
    :cond_5
    move-object v7, v0

    move-object v8, v1

    move-object v9, v0

    iget-object v9, v9, Ljavafx/scene/Scene$MouseHandler;->this$0:Ljavafx/scene/Scene;

    invoke-static {v9}, Ljavafx/scene/Scene;->access$6600(Ljavafx/scene/Scene;)Ljavafx/scene/Scene$TargetWrapper;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Ljavafx/scene/Scene$MouseHandler;->handleEnterExit(Ljavafx/scene/input/MouseEvent;Ljavafx/scene/Scene$TargetWrapper;)V

    .line 3749
    move-object v7, v0

    iget-object v7, v7, Ljavafx/scene/Scene$MouseHandler;->this$0:Ljavafx/scene/Scene;

    iget-object v7, v7, Ljavafx/scene/Scene;->dndGesture:Ljavafx/scene/Scene$DnDGesture;

    if-eqz v7, :cond_6

    .line 3750
    move-object v7, v0

    iget-object v7, v7, Ljavafx/scene/Scene$MouseHandler;->this$0:Ljavafx/scene/Scene;

    iget-object v7, v7, Ljavafx/scene/Scene;->dndGesture:Ljavafx/scene/Scene$DnDGesture;

    move-object v8, v1

    invoke-static {v7, v8}, Ljavafx/scene/Scene$DnDGesture;->access$8000(Ljavafx/scene/Scene$DnDGesture;Ljavafx/scene/input/MouseEvent;)V

    .line 3753
    :cond_6
    move-object v7, v0

    iget-boolean v7, v7, Ljavafx/scene/Scene$MouseHandler;->fullPDREntered:Z

    if-eqz v7, :cond_7

    move-object v7, v1

    invoke-virtual {v7}, Ljavafx/scene/input/MouseEvent;->getEventType()Ljavafx/event/EventType;

    move-result-object v7

    sget-object v8, Ljavafx/scene/input/MouseEvent;->MOUSE_RELEASED:Ljavafx/event/EventType;

    if-ne v7, v8, :cond_7

    .line 3754
    move-object v7, v0

    move-object v8, v1

    move v9, v2

    invoke-direct {v7, v8, v9}, Ljavafx/scene/Scene$MouseHandler;->processFullPDR(Ljavafx/scene/input/MouseEvent;Z)V

    .line 3757
    :cond_7
    move-object v7, v5

    invoke-virtual {v7}, Ljavafx/scene/Scene$TargetWrapper;->getEventTarget()Ljavafx/event/EventTarget;

    move-result-object v7

    if-eqz v7, :cond_8

    .line 3758
    move-object v7, v1

    invoke-virtual {v7}, Ljavafx/scene/input/MouseEvent;->getEventType()Ljavafx/event/EventType;

    move-result-object v7

    sget-object v8, Ljavafx/scene/input/MouseEvent;->MOUSE_ENTERED:Ljavafx/event/EventType;

    if-eq v7, v8, :cond_8

    move-object v7, v1

    .line 3759
    invoke-virtual {v7}, Ljavafx/scene/input/MouseEvent;->getEventType()Ljavafx/event/EventType;

    move-result-object v7

    sget-object v8, Ljavafx/scene/input/MouseEvent;->MOUSE_EXITED:Ljavafx/event/EventType;

    if-eq v7, v8, :cond_8

    move v7, v2

    if-nez v7, :cond_8

    .line 3761
    move-object v7, v5

    invoke-virtual {v7}, Ljavafx/scene/Scene$TargetWrapper;->getEventTarget()Ljavafx/event/EventTarget;

    move-result-object v7

    move-object v8, v1

    invoke-static {v7, v8}, Ljavafx/event/Event;->fireEvent(Ljavafx/event/EventTarget;Ljavafx/event/Event;)V

    .line 3765
    :cond_8
    move-object v7, v0

    iget-boolean v7, v7, Ljavafx/scene/Scene$MouseHandler;->fullPDREntered:Z

    if-eqz v7, :cond_9

    move-object v7, v1

    invoke-virtual {v7}, Ljavafx/scene/input/MouseEvent;->getEventType()Ljavafx/event/EventType;

    move-result-object v7

    sget-object v8, Ljavafx/scene/input/MouseEvent;->MOUSE_RELEASED:Ljavafx/event/EventType;

    if-eq v7, v8, :cond_9

    .line 3766
    move-object v7, v0

    move-object v8, v1

    move v9, v2

    invoke-direct {v7, v8, v9}, Ljavafx/scene/Scene$MouseHandler;->processFullPDR(Ljavafx/scene/input/MouseEvent;Z)V

    .line 3769
    :cond_9
    move v7, v2

    if-nez v7, :cond_a

    .line 3770
    move-object v7, v0

    iget-object v7, v7, Ljavafx/scene/Scene$MouseHandler;->this$0:Ljavafx/scene/Scene;

    invoke-static {v7}, Ljavafx/scene/Scene;->access$7800(Ljavafx/scene/Scene;)Ljavafx/scene/Scene$ClickGenerator;

    move-result-object v7

    move-object v8, v1

    move-object v9, v5

    move-object v10, v0

    iget-object v10, v10, Ljavafx/scene/Scene$MouseHandler;->this$0:Ljavafx/scene/Scene;

    invoke-static {v10}, Ljavafx/scene/Scene;->access$6600(Ljavafx/scene/Scene;)Ljavafx/scene/Scene$TargetWrapper;

    move-result-object v10

    invoke-static {v7, v8, v9, v10}, Ljavafx/scene/Scene$ClickGenerator;->access$8100(Ljavafx/scene/Scene$ClickGenerator;Ljavafx/scene/input/MouseEvent;Ljavafx/scene/Scene$TargetWrapper;Ljavafx/scene/Scene$TargetWrapper;)V

    .line 3775
    :cond_a
    move v7, v2

    if-nez v7, :cond_b

    .line 3776
    move-object v7, v0

    iget-object v7, v7, Ljavafx/scene/Scene$MouseHandler;->this$0:Ljavafx/scene/Scene;

    iget-object v7, v7, Ljavafx/scene/Scene;->dndGesture:Ljavafx/scene/Scene$DnDGesture;

    if-eqz v7, :cond_b

    .line 3777
    move-object v7, v0

    iget-object v7, v7, Ljavafx/scene/Scene$MouseHandler;->this$0:Ljavafx/scene/Scene;

    iget-object v7, v7, Ljavafx/scene/Scene;->dndGesture:Ljavafx/scene/Scene$DnDGesture;

    move-object v8, v1

    move-object v9, v5

    invoke-virtual {v9}, Ljavafx/scene/Scene$TargetWrapper;->getEventTarget()Ljavafx/event/EventTarget;

    move-result-object v9

    invoke-static {v7, v8, v9}, Ljavafx/scene/Scene$DnDGesture;->access$8200(Ljavafx/scene/Scene$DnDGesture;Ljavafx/scene/input/MouseEvent;Ljavafx/event/EventTarget;)Z

    move-result v7

    if-nez v7, :cond_b

    .line 3778
    move-object v7, v0

    iget-object v7, v7, Ljavafx/scene/Scene$MouseHandler;->this$0:Ljavafx/scene/Scene;

    const/4 v8, 0x0

    iput-object v8, v7, Ljavafx/scene/Scene;->dndGesture:Ljavafx/scene/Scene$DnDGesture;

    .line 3783
    :cond_b
    move-object v7, v5

    invoke-virtual {v7}, Ljavafx/scene/Scene$TargetWrapper;->getCursor()Ljavafx/scene/Cursor;

    move-result-object v7

    move-object v6, v7

    .line 3784
    .local v6, "cursor":Ljavafx/scene/Cursor;
    move-object v7, v1

    invoke-virtual {v7}, Ljavafx/scene/input/MouseEvent;->getEventType()Ljavafx/event/EventType;

    move-result-object v7

    sget-object v8, Ljavafx/scene/input/MouseEvent;->MOUSE_EXITED:Ljavafx/event/EventType;

    if-eq v7, v8, :cond_d

    .line 3785
    move-object v7, v6

    if-nez v7, :cond_c

    move-object v7, v0

    iget-boolean v7, v7, Ljavafx/scene/Scene$MouseHandler;->hover:Z

    if-eqz v7, :cond_c

    .line 3786
    move-object v7, v0

    iget-object v7, v7, Ljavafx/scene/Scene$MouseHandler;->this$0:Ljavafx/scene/Scene;

    invoke-virtual {v7}, Ljavafx/scene/Scene;->getCursor()Ljavafx/scene/Cursor;

    move-result-object v7

    move-object v6, v7

    .line 3789
    :cond_c
    move-object v7, v0

    move-object v8, v6

    invoke-direct {v7, v8}, Ljavafx/scene/Scene$MouseHandler;->updateCursor(Ljavafx/scene/Cursor;)V

    .line 3790
    move-object v7, v0

    invoke-virtual {v7}, Ljavafx/scene/Scene$MouseHandler;->updateCursorFrame()V

    .line 3793
    :cond_d
    move v7, v3

    if-eqz v7, :cond_e

    .line 3794
    move-object v7, v0

    const/4 v8, 0x1

    iput-boolean v8, v7, Ljavafx/scene/Scene$MouseHandler;->pdrInProgress:Z

    .line 3797
    :cond_e
    move-object v7, v0

    iget-boolean v7, v7, Ljavafx/scene/Scene$MouseHandler;->pdrInProgress:Z

    if-eqz v7, :cond_f

    move-object v7, v0

    iget-boolean v7, v7, Ljavafx/scene/Scene$MouseHandler;->primaryButtonDown:Z

    if-nez v7, :cond_f

    move-object v7, v0

    iget-boolean v7, v7, Ljavafx/scene/Scene$MouseHandler;->secondaryButtonDown:Z

    if-nez v7, :cond_f

    move-object v7, v0

    iget-boolean v7, v7, Ljavafx/scene/Scene$MouseHandler;->middleButtonDown:Z

    if-nez v7, :cond_f

    .line 3799
    move-object v7, v0

    invoke-direct {v7}, Ljavafx/scene/Scene$MouseHandler;->clearPDREventTargets()V

    .line 3800
    move-object v7, v0

    move-object v8, v1

    invoke-virtual {v7, v8}, Ljavafx/scene/Scene$MouseHandler;->exitFullPDR(Ljavafx/scene/input/MouseEvent;)V

    .line 3803
    move-object v7, v0

    iget-object v7, v7, Ljavafx/scene/Scene$MouseHandler;->this$0:Ljavafx/scene/Scene;

    move-object v8, v0

    iget-object v8, v8, Ljavafx/scene/Scene$MouseHandler;->this$0:Ljavafx/scene/Scene;

    invoke-static {v8}, Ljavafx/scene/Scene;->access$6600(Ljavafx/scene/Scene;)Ljavafx/scene/Scene$TargetWrapper;

    move-result-object v8

    move-object v9, v1

    invoke-virtual {v9}, Ljavafx/scene/input/MouseEvent;->getSceneX()D

    move-result-wide v9

    move-object v11, v1

    invoke-virtual {v11}, Ljavafx/scene/input/MouseEvent;->getSceneY()D

    move-result-wide v11

    invoke-static/range {v7 .. v12}, Ljavafx/scene/Scene;->access$6700(Ljavafx/scene/Scene;Ljavafx/scene/Scene$TargetWrapper;DD)V

    .line 3804
    move-object v7, v0

    move-object v8, v1

    move-object v9, v0

    iget-object v9, v9, Ljavafx/scene/Scene$MouseHandler;->this$0:Ljavafx/scene/Scene;

    invoke-static {v9}, Ljavafx/scene/Scene;->access$6600(Ljavafx/scene/Scene;)Ljavafx/scene/Scene$TargetWrapper;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Ljavafx/scene/Scene$MouseHandler;->handleEnterExit(Ljavafx/scene/input/MouseEvent;Ljavafx/scene/Scene$TargetWrapper;)V

    .line 3807
    :cond_f
    move-object v7, v0

    move-object v8, v1

    invoke-virtual {v8}, Ljavafx/scene/input/MouseEvent;->getEventType()Ljavafx/event/EventType;

    move-result-object v8

    sget-object v9, Ljavafx/scene/input/MouseEvent;->MOUSE_EXITED:Ljavafx/event/EventType;

    if-ne v8, v9, :cond_14

    const/4 v8, 0x0

    :goto_2
    iput-object v8, v7, Ljavafx/scene/Scene$MouseHandler;->lastEvent:Ljavafx/scene/input/MouseEvent;

    .line 3808
    const/4 v7, 0x0

    invoke-static {v7}, Ljavafx/scene/Scene;->access$4802(Z)Z

    move-result v7

    .line 3809
    return-void

    .line 3701
    .end local v4    # "res":Ljavafx/scene/input/PickResult;
    .end local v5    # "target":Ljavafx/scene/Scene$TargetWrapper;
    .end local v6    # "cursor":Ljavafx/scene/Cursor;
    :cond_10
    move-object v7, v1

    invoke-virtual {v7}, Ljavafx/scene/input/MouseEvent;->getEventType()Ljavafx/event/EventType;

    move-result-object v7

    sget-object v8, Ljavafx/scene/input/MouseEvent;->MOUSE_MOVED:Ljavafx/event/EventType;

    if-ne v7, v8, :cond_11

    .line 3703
    move-object v7, v0

    invoke-direct {v7}, Ljavafx/scene/Scene$MouseHandler;->clearPDREventTargets()V

    goto/16 :goto_0

    .line 3704
    :cond_11
    move-object v7, v1

    invoke-virtual {v7}, Ljavafx/scene/input/MouseEvent;->getEventType()Ljavafx/event/EventType;

    move-result-object v7

    sget-object v8, Ljavafx/scene/input/MouseEvent;->MOUSE_ENTERED:Ljavafx/event/EventType;

    if-ne v7, v8, :cond_12

    .line 3705
    move-object v7, v0

    const/4 v8, 0x1

    iput-boolean v8, v7, Ljavafx/scene/Scene$MouseHandler;->hover:Z

    goto/16 :goto_0

    .line 3706
    :cond_12
    move-object v7, v1

    invoke-virtual {v7}, Ljavafx/scene/input/MouseEvent;->getEventType()Ljavafx/event/EventType;

    move-result-object v7

    sget-object v8, Ljavafx/scene/input/MouseEvent;->MOUSE_EXITED:Ljavafx/event/EventType;

    if-ne v7, v8, :cond_0

    .line 3707
    move-object v7, v0

    const/4 v8, 0x0

    iput-boolean v8, v7, Ljavafx/scene/Scene$MouseHandler;->hover:Z

    goto/16 :goto_0

    .line 3733
    .restart local v4    # "res":Ljavafx/scene/input/PickResult;
    :cond_13
    move-object v7, v0

    iget-object v7, v7, Ljavafx/scene/Scene$MouseHandler;->this$0:Ljavafx/scene/Scene;

    invoke-static {v7}, Ljavafx/scene/Scene;->access$6600(Ljavafx/scene/Scene;)Ljavafx/scene/Scene$TargetWrapper;

    move-result-object v7

    move-object v5, v7

    .restart local v5    # "target":Ljavafx/scene/Scene$TargetWrapper;
    goto/16 :goto_1

    .line 3807
    .restart local v6    # "cursor":Ljavafx/scene/Cursor;
    :cond_14
    move-object v8, v1

    goto :goto_2
.end method

.method private processFullPDR(Ljavafx/scene/input/MouseEvent;Z)V
    .locals 17

    .prologue
    .line 3813
    move-object/from16 v1, p0

    .local v1, "this":Ljavafx/scene/Scene$MouseHandler;
    move-object/from16 v2, p1

    .local v2, "e":Ljavafx/scene/input/MouseEvent;
    move/from16 v3, p2

    .local v3, "onPulse":Z
    move-object v10, v1

    iget-object v10, v10, Ljavafx/scene/Scene$MouseHandler;->this$0:Ljavafx/scene/Scene;

    move-object v11, v1

    iget-object v11, v11, Ljavafx/scene/Scene$MouseHandler;->fullPDRTmpTargetWrapper:Ljavafx/scene/Scene$TargetWrapper;

    move-object v12, v2

    invoke-virtual {v12}, Ljavafx/scene/input/MouseEvent;->getSceneX()D

    move-result-wide v12

    move-object v14, v2

    invoke-virtual {v14}, Ljavafx/scene/input/MouseEvent;->getSceneY()D

    move-result-wide v14

    invoke-static/range {v10 .. v15}, Ljavafx/scene/Scene;->access$6700(Ljavafx/scene/Scene;Ljavafx/scene/Scene$TargetWrapper;DD)V

    .line 3814
    move-object v10, v1

    iget-object v10, v10, Ljavafx/scene/Scene$MouseHandler;->fullPDRTmpTargetWrapper:Ljavafx/scene/Scene$TargetWrapper;

    invoke-virtual {v10}, Ljavafx/scene/Scene$TargetWrapper;->getResult()Ljavafx/scene/input/PickResult;

    move-result-object v10

    move-object v4, v10

    .line 3816
    .local v4, "result":Ljavafx/scene/input/PickResult;
    move-object v10, v1

    iget-object v10, v10, Ljavafx/scene/Scene$MouseHandler;->fullPDRTmpTargetWrapper:Ljavafx/scene/Scene$TargetWrapper;

    invoke-virtual {v10}, Ljavafx/scene/Scene$TargetWrapper;->getEventTarget()Ljavafx/event/EventTarget;

    move-result-object v10

    move-object v5, v10

    .line 3819
    .local v5, "eventTarget":Ljavafx/event/EventTarget;
    move-object v10, v5

    move-object v11, v1

    iget-object v11, v11, Ljavafx/scene/Scene$MouseHandler;->fullPDRCurrentTarget:Ljavafx/event/EventTarget;

    if-eq v10, v11, :cond_3

    .line 3821
    move-object v10, v1

    iget-object v10, v10, Ljavafx/scene/Scene$MouseHandler;->fullPDRTmpTargetWrapper:Ljavafx/scene/Scene$TargetWrapper;

    move-object v11, v1

    iget-object v11, v11, Ljavafx/scene/Scene$MouseHandler;->fullPDRNewEventTargets:Ljava/util/List;

    invoke-virtual {v10, v11}, Ljavafx/scene/Scene$TargetWrapper;->fillHierarchy(Ljava/util/List;)V

    .line 3823
    move-object v10, v1

    iget-object v10, v10, Ljavafx/scene/Scene$MouseHandler;->fullPDRNewEventTargets:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    move v6, v10

    .line 3824
    .local v6, "newTargetsSize":I
    move-object v10, v1

    iget-object v10, v10, Ljavafx/scene/Scene$MouseHandler;->fullPDRCurrentEventTargets:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    const/4 v11, 0x1

    add-int/lit8 v10, v10, -0x1

    move v7, v10

    .line 3825
    .local v7, "i":I
    move v10, v6

    const/4 v11, 0x1

    add-int/lit8 v10, v10, -0x1

    move v8, v10

    .line 3827
    .local v8, "j":I
    :goto_0
    move v10, v7

    if-ltz v10, :cond_0

    move v10, v8

    if-ltz v10, :cond_0

    move-object v10, v1

    iget-object v10, v10, Ljavafx/scene/Scene$MouseHandler;->fullPDRCurrentEventTargets:Ljava/util/List;

    move v11, v7

    .line 3828
    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    move-object v11, v1

    iget-object v11, v11, Ljavafx/scene/Scene$MouseHandler;->fullPDRNewEventTargets:Ljava/util/List;

    move v12, v8

    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    if-ne v10, v11, :cond_0

    .line 3829
    add-int/lit8 v7, v7, -0x1

    .line 3830
    add-int/lit8 v8, v8, -0x1

    goto :goto_0

    .line 3833
    :cond_0
    :goto_1
    move v10, v7

    if-ltz v10, :cond_1

    .line 3834
    move-object v10, v1

    iget-object v10, v10, Ljavafx/scene/Scene$MouseHandler;->fullPDRCurrentEventTargets:Ljava/util/List;

    move v11, v7

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljavafx/event/EventTarget;

    move-object v9, v10

    .line 3835
    .local v9, "exitedEventTarget":Ljavafx/event/EventTarget;
    move-object v10, v9

    move-object v11, v2

    move-object v12, v9

    move-object v13, v9

    sget-object v14, Ljavafx/scene/input/MouseDragEvent;->MOUSE_DRAG_EXITED_TARGET:Ljavafx/event/EventType;

    move-object v15, v1

    iget-object v15, v15, Ljavafx/scene/Scene$MouseHandler;->fullPDRSource:Ljavafx/event/EventTarget;

    move-object/from16 v16, v4

    invoke-static/range {v11 .. v16}, Ljavafx/scene/input/MouseEvent;->copyForMouseDragEvent(Ljavafx/scene/input/MouseEvent;Ljava/lang/Object;Ljavafx/event/EventTarget;Ljavafx/event/EventType;Ljava/lang/Object;Ljavafx/scene/input/PickResult;)Ljavafx/scene/input/MouseDragEvent;

    move-result-object v11

    invoke-static {v10, v11}, Ljavafx/event/Event;->fireEvent(Ljavafx/event/EventTarget;Ljavafx/event/Event;)V

    .line 3833
    add-int/lit8 v7, v7, -0x1

    goto :goto_1

    .line 3841
    .end local v9    # "exitedEventTarget":Ljavafx/event/EventTarget;
    :cond_1
    :goto_2
    move v10, v8

    if-ltz v10, :cond_2

    .line 3842
    move-object v10, v1

    iget-object v10, v10, Ljavafx/scene/Scene$MouseHandler;->fullPDRNewEventTargets:Ljava/util/List;

    move v11, v8

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljavafx/event/EventTarget;

    move-object v9, v10

    .line 3843
    .local v9, "enteredEventTarget":Ljavafx/event/EventTarget;
    move-object v10, v9

    move-object v11, v2

    move-object v12, v9

    move-object v13, v9

    sget-object v14, Ljavafx/scene/input/MouseDragEvent;->MOUSE_DRAG_ENTERED_TARGET:Ljavafx/event/EventType;

    move-object v15, v1

    iget-object v15, v15, Ljavafx/scene/Scene$MouseHandler;->fullPDRSource:Ljavafx/event/EventTarget;

    move-object/from16 v16, v4

    invoke-static/range {v11 .. v16}, Ljavafx/scene/input/MouseEvent;->copyForMouseDragEvent(Ljavafx/scene/input/MouseEvent;Ljava/lang/Object;Ljavafx/event/EventTarget;Ljavafx/event/EventType;Ljava/lang/Object;Ljavafx/scene/input/PickResult;)Ljavafx/scene/input/MouseDragEvent;

    move-result-object v11

    invoke-static {v10, v11}, Ljavafx/event/Event;->fireEvent(Ljavafx/event/EventTarget;Ljavafx/event/Event;)V

    .line 3841
    add-int/lit8 v8, v8, -0x1

    goto :goto_2

    .line 3849
    .end local v9    # "enteredEventTarget":Ljavafx/event/EventTarget;
    :cond_2
    move-object v10, v1

    move-object v11, v5

    iput-object v11, v10, Ljavafx/scene/Scene$MouseHandler;->fullPDRCurrentTarget:Ljavafx/event/EventTarget;

    .line 3850
    move-object v10, v1

    iget-object v10, v10, Ljavafx/scene/Scene$MouseHandler;->fullPDRCurrentEventTargets:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->clear()V

    .line 3851
    move-object v10, v1

    iget-object v10, v10, Ljavafx/scene/Scene$MouseHandler;->fullPDRCurrentEventTargets:Ljava/util/List;

    move-object v11, v1

    iget-object v11, v11, Ljavafx/scene/Scene$MouseHandler;->fullPDRNewEventTargets:Ljava/util/List;

    invoke-interface {v10, v11}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-result v10

    .line 3852
    move-object v10, v1

    iget-object v10, v10, Ljavafx/scene/Scene$MouseHandler;->fullPDRNewEventTargets:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->clear()V

    .line 3857
    .end local v6    # "newTargetsSize":I
    .end local v7    # "i":I
    .end local v8    # "j":I
    :cond_3
    move-object v10, v5

    if-eqz v10, :cond_5

    move v10, v3

    if-nez v10, :cond_5

    .line 3858
    move-object v10, v2

    invoke-virtual {v10}, Ljavafx/scene/input/MouseEvent;->getEventType()Ljavafx/event/EventType;

    move-result-object v10

    sget-object v11, Ljavafx/scene/input/MouseEvent;->MOUSE_DRAGGED:Ljavafx/event/EventType;

    if-ne v10, v11, :cond_4

    .line 3859
    move-object v10, v5

    move-object v11, v2

    move-object v12, v5

    move-object v13, v5

    sget-object v14, Ljavafx/scene/input/MouseDragEvent;->MOUSE_DRAG_OVER:Ljavafx/event/EventType;

    move-object v15, v1

    iget-object v15, v15, Ljavafx/scene/Scene$MouseHandler;->fullPDRSource:Ljavafx/event/EventTarget;

    move-object/from16 v16, v4

    invoke-static/range {v11 .. v16}, Ljavafx/scene/input/MouseEvent;->copyForMouseDragEvent(Ljavafx/scene/input/MouseEvent;Ljava/lang/Object;Ljavafx/event/EventTarget;Ljavafx/event/EventType;Ljava/lang/Object;Ljavafx/scene/input/PickResult;)Ljavafx/scene/input/MouseDragEvent;

    move-result-object v11

    invoke-static {v10, v11}, Ljavafx/event/Event;->fireEvent(Ljavafx/event/EventTarget;Ljavafx/event/Event;)V

    .line 3864
    :cond_4
    move-object v10, v2

    invoke-virtual {v10}, Ljavafx/scene/input/MouseEvent;->getEventType()Ljavafx/event/EventType;

    move-result-object v10

    sget-object v11, Ljavafx/scene/input/MouseEvent;->MOUSE_RELEASED:Ljavafx/event/EventType;

    if-ne v10, v11, :cond_5

    .line 3865
    move-object v10, v5

    move-object v11, v2

    move-object v12, v5

    move-object v13, v5

    sget-object v14, Ljavafx/scene/input/MouseDragEvent;->MOUSE_DRAG_RELEASED:Ljavafx/event/EventType;

    move-object v15, v1

    iget-object v15, v15, Ljavafx/scene/Scene$MouseHandler;->fullPDRSource:Ljavafx/event/EventTarget;

    move-object/from16 v16, v4

    invoke-static/range {v11 .. v16}, Ljavafx/scene/input/MouseEvent;->copyForMouseDragEvent(Ljavafx/scene/input/MouseEvent;Ljava/lang/Object;Ljavafx/event/EventTarget;Ljavafx/event/EventType;Ljava/lang/Object;Ljavafx/scene/input/PickResult;)Ljavafx/scene/input/MouseDragEvent;

    move-result-object v11

    invoke-static {v10, v11}, Ljavafx/event/Event;->fireEvent(Ljavafx/event/EventTarget;Ljavafx/event/Event;)V

    .line 3871
    :cond_5
    return-void
.end method

.method private pulse()V
    .locals 2

    .prologue
    .line 3531
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene$MouseHandler;
    move-object v1, v0

    iget-boolean v1, v1, Ljavafx/scene/Scene$MouseHandler;->hover:Z

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Scene$MouseHandler;->lastEvent:Ljavafx/scene/input/MouseEvent;

    if-eqz v1, :cond_0

    .line 3533
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Scene$MouseHandler;->pickProcess:Ljava/lang/Runnable;

    invoke-static {v1}, Ljavafx/application/Platform;->runLater(Ljava/lang/Runnable;)V

    .line 3535
    :cond_0
    return-void
.end method

.method private updateCursor(Ljavafx/scene/Cursor;)V
    .locals 4

    .prologue
    .line 3874
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene$MouseHandler;
    move-object v1, p1

    .local v1, "newCursor":Ljavafx/scene/Cursor;
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/Scene$MouseHandler;->currCursor:Ljavafx/scene/Cursor;

    move-object v3, v1

    if-eq v2, v3, :cond_2

    .line 3875
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/Scene$MouseHandler;->currCursor:Ljavafx/scene/Cursor;

    if-eqz v2, :cond_0

    .line 3876
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/Scene$MouseHandler;->currCursor:Ljavafx/scene/Cursor;

    invoke-virtual {v2}, Ljavafx/scene/Cursor;->deactivate()V

    .line 3879
    :cond_0
    move-object v2, v1

    if-eqz v2, :cond_1

    .line 3880
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/Cursor;->activate()V

    .line 3883
    :cond_1
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/Scene$MouseHandler;->currCursor:Ljavafx/scene/Cursor;

    .line 3885
    :cond_2
    return-void
.end method


# virtual methods
.method public enterFullPDR(Ljavafx/event/EventTarget;)V
    .locals 4

    .prologue
    .line 3545
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene$MouseHandler;
    move-object v1, p1

    .local v1, "gestureSource":Ljavafx/event/EventTarget;
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Ljavafx/scene/Scene$MouseHandler;->fullPDREntered:Z

    .line 3546
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/Scene$MouseHandler;->fullPDRSource:Ljavafx/event/EventTarget;

    .line 3547
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Ljavafx/scene/Scene$MouseHandler;->fullPDRCurrentTarget:Ljavafx/event/EventTarget;

    .line 3548
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/Scene$MouseHandler;->fullPDRCurrentEventTargets:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 3549
    return-void
.end method

.method public exitFullPDR(Ljavafx/scene/input/MouseEvent;)V
    .locals 11

    .prologue
    .line 3552
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene$MouseHandler;
    move-object v1, p1

    .local v1, "e":Ljavafx/scene/input/MouseEvent;
    move-object v4, v0

    iget-boolean v4, v4, Ljavafx/scene/Scene$MouseHandler;->fullPDREntered:Z

    if-nez v4, :cond_0

    .line 3553
    .line 3566
    :goto_0
    return-void

    .line 3555
    :cond_0
    move-object v4, v0

    const/4 v5, 0x0

    iput-boolean v5, v4, Ljavafx/scene/Scene$MouseHandler;->fullPDREntered:Z

    .line 3556
    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/Scene$MouseHandler;->fullPDRCurrentEventTargets:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    move v2, v4

    .local v2, "i":I
    :goto_1
    move v4, v2

    if-ltz v4, :cond_1

    .line 3557
    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/Scene$MouseHandler;->fullPDRCurrentEventTargets:Ljava/util/List;

    move v5, v2

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavafx/event/EventTarget;

    move-object v3, v4

    .line 3558
    .local v3, "entered":Ljavafx/event/EventTarget;
    move-object v4, v3

    move-object v5, v1

    move-object v6, v3

    move-object v7, v3

    sget-object v8, Ljavafx/scene/input/MouseDragEvent;->MOUSE_DRAG_EXITED_TARGET:Ljavafx/event/EventType;

    move-object v9, v0

    iget-object v9, v9, Ljavafx/scene/Scene$MouseHandler;->fullPDRSource:Ljavafx/event/EventTarget;

    move-object v10, v1

    .line 3561
    invoke-virtual {v10}, Ljavafx/scene/input/MouseEvent;->getPickResult()Ljavafx/scene/input/PickResult;

    move-result-object v10

    .line 3558
    invoke-static/range {v5 .. v10}, Ljavafx/scene/input/MouseEvent;->copyForMouseDragEvent(Ljavafx/scene/input/MouseEvent;Ljava/lang/Object;Ljavafx/event/EventTarget;Ljavafx/event/EventType;Ljava/lang/Object;Ljavafx/scene/input/PickResult;)Ljavafx/scene/input/MouseDragEvent;

    move-result-object v5

    invoke-static {v4, v5}, Ljavafx/event/Event;->fireEvent(Ljavafx/event/EventTarget;Ljavafx/event/Event;)V

    .line 3556
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 3563
    .end local v3    # "entered":Ljavafx/event/EventTarget;
    :cond_1
    move-object v4, v0

    const/4 v5, 0x0

    iput-object v5, v4, Ljavafx/scene/Scene$MouseHandler;->fullPDRSource:Ljavafx/event/EventTarget;

    .line 3564
    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/Scene$MouseHandler;->fullPDRCurrentEventTargets:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 3565
    move-object v4, v0

    const/4 v5, 0x0

    iput-object v5, v4, Ljavafx/scene/Scene$MouseHandler;->fullPDRCurrentTarget:Ljavafx/event/EventTarget;

    .line 3566
    goto :goto_0
.end method

.method public updateCursorFrame()V
    .locals 4

    .prologue
    .line 3888
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene$MouseHandler;
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/Scene$MouseHandler;->currCursor:Ljavafx/scene/Cursor;

    if-eqz v2, :cond_2

    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/Scene$MouseHandler;->currCursor:Ljavafx/scene/Cursor;

    .line 3890
    invoke-virtual {v2}, Ljavafx/scene/Cursor;->getCurrentFrame()Lcom/sun/javafx/cursor/CursorFrame;

    move-result-object v2

    .line 3891
    :goto_0
    move-object v1, v2

    .line 3892
    .local v1, "newCursorFrame":Lcom/sun/javafx/cursor/CursorFrame;
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/Scene$MouseHandler;->currCursorFrame:Lcom/sun/javafx/cursor/CursorFrame;

    move-object v3, v1

    if-eq v2, v3, :cond_1

    .line 3893
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/Scene$MouseHandler;->this$0:Ljavafx/scene/Scene;

    invoke-static {v2}, Ljavafx/scene/Scene;->access$2900(Ljavafx/scene/Scene;)Lcom/sun/javafx/tk/TKScene;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3894
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/Scene$MouseHandler;->this$0:Ljavafx/scene/Scene;

    invoke-static {v2}, Ljavafx/scene/Scene;->access$2900(Ljavafx/scene/Scene;)Lcom/sun/javafx/tk/TKScene;

    move-result-object v2

    move-object v3, v1

    invoke-interface {v2, v3}, Lcom/sun/javafx/tk/TKScene;->setCursor(Ljava/lang/Object;)V

    .line 3897
    :cond_0
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/Scene$MouseHandler;->currCursorFrame:Lcom/sun/javafx/cursor/CursorFrame;

    .line 3899
    :cond_1
    return-void

    .line 3890
    .end local v1    # "newCursorFrame":Lcom/sun/javafx/cursor/CursorFrame;
    :cond_2
    sget-object v2, Ljavafx/scene/Cursor;->DEFAULT:Ljavafx/scene/Cursor;

    .line 3891
    invoke-virtual {v2}, Ljavafx/scene/Cursor;->getCurrentFrame()Lcom/sun/javafx/cursor/CursorFrame;

    move-result-object v2

    goto :goto_0
.end method
