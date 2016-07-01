.class Ljavafx/scene/Scene$ClickGenerator;
.super Ljava/lang/Object;
.source "Scene.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/Scene;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ClickGenerator"
.end annotation


# instance fields
.field private counters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljavafx/scene/input/MouseButton;",
            "Ljavafx/scene/Scene$ClickCounter;",
            ">;"
        }
    .end annotation
.end field

.field private lastPress:Ljavafx/scene/Scene$ClickCounter;

.field private pressedTargets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljavafx/event/EventTarget;",
            ">;"
        }
    .end annotation
.end field

.field private releasedTargets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljavafx/event/EventTarget;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 10

    .prologue
    .line 3410
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene$ClickGenerator;
    move-object v5, v0

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 3403
    move-object v5, v0

    const/4 v6, 0x0

    iput-object v6, v5, Ljavafx/scene/Scene$ClickGenerator;->lastPress:Ljavafx/scene/Scene$ClickCounter;

    .line 3405
    move-object v5, v0

    new-instance v6, Ljava/util/EnumMap;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    const-class v8, Ljavafx/scene/input/MouseButton;

    invoke-direct {v7, v8}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v6, v5, Ljavafx/scene/Scene$ClickGenerator;->counters:Ljava/util/Map;

    .line 3407
    move-object v5, v0

    new-instance v6, Ljava/util/ArrayList;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, v5, Ljavafx/scene/Scene$ClickGenerator;->pressedTargets:Ljava/util/List;

    .line 3408
    move-object v5, v0

    new-instance v6, Ljava/util/ArrayList;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, v5, Ljavafx/scene/Scene$ClickGenerator;->releasedTargets:Ljava/util/List;

    .line 3411
    invoke-static {}, Ljavafx/scene/input/MouseButton;->values()[Ljavafx/scene/input/MouseButton;

    move-result-object v5

    move-object v1, v5

    move-object v5, v1

    array-length v5, v5

    move v2, v5

    const/4 v5, 0x0

    move v3, v5

    :goto_0
    move v5, v3

    move v6, v2

    if-ge v5, v6, :cond_1

    move-object v5, v1

    move v6, v3

    aget-object v5, v5, v6

    move-object v4, v5

    .line 3412
    .local v4, "mb":Ljavafx/scene/input/MouseButton;
    move-object v5, v4

    sget-object v6, Ljavafx/scene/input/MouseButton;->NONE:Ljavafx/scene/input/MouseButton;

    if-eq v5, v6, :cond_0

    .line 3413
    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/Scene$ClickGenerator;->counters:Ljava/util/Map;

    move-object v6, v4

    new-instance v7, Ljavafx/scene/Scene$ClickCounter;

    move-object v9, v7

    move-object v7, v9

    move-object v8, v9

    invoke-direct {v8}, Ljavafx/scene/Scene$ClickCounter;-><init>()V

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 3411
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3416
    .end local v4    # "mb":Ljavafx/scene/input/MouseButton;
    :cond_1
    return-void
.end method

.method static synthetic access$7900(Ljavafx/scene/Scene$ClickGenerator;Ljavafx/scene/input/MouseEvent;)Ljavafx/scene/input/MouseEvent;
    .locals 4

    .prologue
    .line 3402
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/Scene$ClickGenerator;
    move-object v1, p1

    .local v1, "x1":Ljavafx/scene/input/MouseEvent;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljavafx/scene/Scene$ClickGenerator;->preProcess(Ljavafx/scene/input/MouseEvent;)Ljavafx/scene/input/MouseEvent;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "x0":Ljavafx/scene/Scene$ClickGenerator;
    return-object v0
.end method

.method static synthetic access$8100(Ljavafx/scene/Scene$ClickGenerator;Ljavafx/scene/input/MouseEvent;Ljavafx/scene/Scene$TargetWrapper;Ljavafx/scene/Scene$TargetWrapper;)V
    .locals 8

    .prologue
    .line 3402
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/Scene$ClickGenerator;
    move-object v1, p1

    .local v1, "x1":Ljavafx/scene/input/MouseEvent;
    move-object v2, p2

    .local v2, "x2":Ljavafx/scene/Scene$TargetWrapper;
    move-object v3, p3

    .local v3, "x3":Ljavafx/scene/Scene$TargetWrapper;
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-direct {v4, v5, v6, v7}, Ljavafx/scene/Scene$ClickGenerator;->postProcess(Ljavafx/scene/input/MouseEvent;Ljavafx/scene/Scene$TargetWrapper;Ljavafx/scene/Scene$TargetWrapper;)V

    return-void
.end method

.method private postProcess(Ljavafx/scene/input/MouseEvent;Ljavafx/scene/Scene$TargetWrapper;Ljavafx/scene/Scene$TargetWrapper;)V
    .locals 38

    .prologue
    .line 3448
    move-object/from16 v2, p0

    .local v2, "this":Ljavafx/scene/Scene$ClickGenerator;
    move-object/from16 v3, p1

    .local v3, "e":Ljavafx/scene/input/MouseEvent;
    move-object/from16 v4, p2

    .local v4, "target":Ljavafx/scene/Scene$TargetWrapper;
    move-object/from16 v5, p3

    .local v5, "pickedTarget":Ljavafx/scene/Scene$TargetWrapper;
    move-object v11, v3

    invoke-virtual {v11}, Ljavafx/scene/input/MouseEvent;->getEventType()Ljavafx/event/EventType;

    move-result-object v11

    sget-object v12, Ljavafx/scene/input/MouseEvent;->MOUSE_RELEASED:Ljavafx/event/EventType;

    if-ne v11, v12, :cond_1

    .line 3449
    move-object v11, v2

    iget-object v11, v11, Ljavafx/scene/Scene$ClickGenerator;->counters:Ljava/util/Map;

    move-object v12, v3

    invoke-virtual {v12}, Ljavafx/scene/input/MouseEvent;->getButton()Ljavafx/scene/input/MouseButton;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljavafx/scene/Scene$ClickCounter;

    move-object v6, v11

    .line 3451
    .local v6, "cc":Ljavafx/scene/Scene$ClickCounter;
    move-object v11, v4

    move-object v12, v2

    iget-object v12, v12, Ljavafx/scene/Scene$ClickGenerator;->pressedTargets:Ljava/util/List;

    invoke-virtual {v11, v12}, Ljavafx/scene/Scene$TargetWrapper;->fillHierarchy(Ljava/util/List;)V

    .line 3452
    move-object v11, v5

    move-object v12, v2

    iget-object v12, v12, Ljavafx/scene/Scene$ClickGenerator;->releasedTargets:Ljava/util/List;

    invoke-virtual {v11, v12}, Ljavafx/scene/Scene$TargetWrapper;->fillHierarchy(Ljava/util/List;)V

    .line 3453
    move-object v11, v2

    iget-object v11, v11, Ljavafx/scene/Scene$ClickGenerator;->pressedTargets:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    const/4 v12, 0x1

    add-int/lit8 v11, v11, -0x1

    move v7, v11

    .line 3454
    .local v7, "i":I
    move-object v11, v2

    iget-object v11, v11, Ljavafx/scene/Scene$ClickGenerator;->releasedTargets:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    const/4 v12, 0x1

    add-int/lit8 v11, v11, -0x1

    move v8, v11

    .line 3456
    .local v8, "j":I
    const/4 v11, 0x0

    move-object v9, v11

    .line 3457
    .local v9, "clickedTarget":Ljavafx/event/EventTarget;
    :goto_0
    move v11, v7

    if-ltz v11, :cond_0

    move v11, v8

    if-ltz v11, :cond_0

    move-object v11, v2

    iget-object v11, v11, Ljavafx/scene/Scene$ClickGenerator;->pressedTargets:Ljava/util/List;

    move v12, v7

    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    move-object v12, v2

    iget-object v12, v12, Ljavafx/scene/Scene$ClickGenerator;->releasedTargets:Ljava/util/List;

    move v13, v8

    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    if-ne v11, v12, :cond_0

    .line 3458
    move-object v11, v2

    iget-object v11, v11, Ljavafx/scene/Scene$ClickGenerator;->pressedTargets:Ljava/util/List;

    move v12, v7

    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljavafx/event/EventTarget;

    move-object v9, v11

    .line 3459
    add-int/lit8 v7, v7, -0x1

    .line 3460
    add-int/lit8 v8, v8, -0x1

    goto :goto_0

    .line 3463
    :cond_0
    move-object v11, v2

    iget-object v11, v11, Ljavafx/scene/Scene$ClickGenerator;->pressedTargets:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->clear()V

    .line 3464
    move-object v11, v2

    iget-object v11, v11, Ljavafx/scene/Scene$ClickGenerator;->releasedTargets:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->clear()V

    .line 3466
    move-object v11, v9

    if-eqz v11, :cond_1

    move-object v11, v2

    iget-object v11, v11, Ljavafx/scene/Scene$ClickGenerator;->lastPress:Ljavafx/scene/Scene$ClickCounter;

    if-eqz v11, :cond_1

    .line 3467
    new-instance v11, Ljavafx/scene/input/MouseEvent;

    move-object/from16 v37, v11

    move-object/from16 v11, v37

    move-object/from16 v12, v37

    const/4 v13, 0x0

    move-object v14, v9

    sget-object v15, Ljavafx/scene/input/MouseEvent;->MOUSE_CLICKED:Ljavafx/event/EventType;

    move-object/from16 v16, v3

    .line 3468
    invoke-virtual/range {v16 .. v16}, Ljavafx/scene/input/MouseEvent;->getSceneX()D

    move-result-wide v16

    move-object/from16 v18, v3

    invoke-virtual/range {v18 .. v18}, Ljavafx/scene/input/MouseEvent;->getSceneY()D

    move-result-wide v18

    move-object/from16 v20, v3

    .line 3469
    invoke-virtual/range {v20 .. v20}, Ljavafx/scene/input/MouseEvent;->getScreenX()D

    move-result-wide v20

    move-object/from16 v22, v3

    invoke-virtual/range {v22 .. v22}, Ljavafx/scene/input/MouseEvent;->getScreenY()D

    move-result-wide v22

    move-object/from16 v24, v3

    invoke-virtual/range {v24 .. v24}, Ljavafx/scene/input/MouseEvent;->getButton()Ljavafx/scene/input/MouseButton;

    move-result-object v24

    move-object/from16 v25, v6

    .line 3470
    invoke-static/range {v25 .. v25}, Ljavafx/scene/Scene$ClickCounter;->access$7500(Ljavafx/scene/Scene$ClickCounter;)I

    move-result v25

    move-object/from16 v26, v3

    .line 3471
    invoke-virtual/range {v26 .. v26}, Ljavafx/scene/input/MouseEvent;->isShiftDown()Z

    move-result v26

    move-object/from16 v27, v3

    invoke-virtual/range {v27 .. v27}, Ljavafx/scene/input/MouseEvent;->isControlDown()Z

    move-result v27

    move-object/from16 v28, v3

    invoke-virtual/range {v28 .. v28}, Ljavafx/scene/input/MouseEvent;->isAltDown()Z

    move-result v28

    move-object/from16 v29, v3

    invoke-virtual/range {v29 .. v29}, Ljavafx/scene/input/MouseEvent;->isMetaDown()Z

    move-result v29

    move-object/from16 v30, v3

    .line 3472
    invoke-virtual/range {v30 .. v30}, Ljavafx/scene/input/MouseEvent;->isPrimaryButtonDown()Z

    move-result v30

    move-object/from16 v31, v3

    invoke-virtual/range {v31 .. v31}, Ljavafx/scene/input/MouseEvent;->isMiddleButtonDown()Z

    move-result v31

    move-object/from16 v32, v3

    invoke-virtual/range {v32 .. v32}, Ljavafx/scene/input/MouseEvent;->isSecondaryButtonDown()Z

    move-result v32

    move-object/from16 v33, v3

    .line 3473
    invoke-virtual/range {v33 .. v33}, Ljavafx/scene/input/MouseEvent;->isSynthesized()Z

    move-result v33

    move-object/from16 v34, v3

    invoke-virtual/range {v34 .. v34}, Ljavafx/scene/input/MouseEvent;->isPopupTrigger()Z

    move-result v34

    move-object/from16 v35, v2

    move-object/from16 v0, v35

    iget-object v0, v0, Ljavafx/scene/Scene$ClickGenerator;->lastPress:Ljavafx/scene/Scene$ClickCounter;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Ljavafx/scene/Scene$ClickCounter;->access$7000(Ljavafx/scene/Scene$ClickCounter;)Z

    move-result v35

    move-object/from16 v36, v3

    invoke-virtual/range {v36 .. v36}, Ljavafx/scene/input/MouseEvent;->getPickResult()Ljavafx/scene/input/PickResult;

    move-result-object v36

    invoke-direct/range {v12 .. v36}, Ljavafx/scene/input/MouseEvent;-><init>(Ljava/lang/Object;Ljavafx/event/EventTarget;Ljavafx/event/EventType;DDDDLjavafx/scene/input/MouseButton;IZZZZZZZZZZLjavafx/scene/input/PickResult;)V

    move-object v10, v11

    .line 3474
    .local v10, "click":Ljavafx/scene/input/MouseEvent;
    move-object v11, v9

    move-object v12, v10

    invoke-static {v11, v12}, Ljavafx/event/Event;->fireEvent(Ljavafx/event/EventTarget;Ljavafx/event/Event;)V

    .line 3477
    .end local v6    # "cc":Ljavafx/scene/Scene$ClickCounter;
    .end local v7    # "i":I
    .end local v8    # "j":I
    .end local v9    # "clickedTarget":Ljavafx/event/EventTarget;
    .end local v10    # "click":Ljavafx/scene/input/MouseEvent;
    :cond_1
    return-void
.end method

.method private preProcess(Ljavafx/scene/input/MouseEvent;)Ljavafx/scene/input/MouseEvent;
    .locals 32

    .prologue
    .line 3419
    move-object/from16 v3, p0

    .local v3, "this":Ljavafx/scene/Scene$ClickGenerator;
    move-object/from16 v4, p1

    .local v4, "e":Ljavafx/scene/input/MouseEvent;
    move-object v7, v3

    iget-object v7, v7, Ljavafx/scene/Scene$ClickGenerator;->counters:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move-object v5, v7

    :goto_0
    move-object v7, v5

    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    move-object v7, v5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljavafx/scene/Scene$ClickCounter;

    move-object v6, v7

    .line 3420
    .local v6, "cc":Ljavafx/scene/Scene$ClickCounter;
    move-object v7, v6

    move-object v8, v4

    invoke-virtual {v8}, Ljavafx/scene/input/MouseEvent;->getSceneX()D

    move-result-wide v8

    move-object v10, v4

    invoke-virtual {v10}, Ljavafx/scene/input/MouseEvent;->getSceneY()D

    move-result-wide v10

    invoke-static {v7, v8, v9, v10, v11}, Ljavafx/scene/Scene$ClickCounter;->access$6900(Ljavafx/scene/Scene$ClickCounter;DD)V

    .line 3421
    goto :goto_0

    .line 3423
    .end local v6    # "cc":Ljavafx/scene/Scene$ClickCounter;
    :cond_0
    move-object v7, v3

    iget-object v7, v7, Ljavafx/scene/Scene$ClickGenerator;->counters:Ljava/util/Map;

    move-object v8, v4

    invoke-virtual {v8}, Ljavafx/scene/input/MouseEvent;->getButton()Ljavafx/scene/input/MouseButton;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljavafx/scene/Scene$ClickCounter;

    move-object v5, v7

    .line 3424
    .local v5, "cc":Ljavafx/scene/Scene$ClickCounter;
    move-object v7, v3

    iget-object v7, v7, Ljavafx/scene/Scene$ClickGenerator;->lastPress:Ljavafx/scene/Scene$ClickCounter;

    if-eqz v7, :cond_5

    move-object v7, v3

    iget-object v7, v7, Ljavafx/scene/Scene$ClickGenerator;->lastPress:Ljavafx/scene/Scene$ClickCounter;

    invoke-static {v7}, Ljavafx/scene/Scene$ClickCounter;->access$7000(Ljavafx/scene/Scene$ClickCounter;)Z

    move-result v7

    :goto_1
    move v6, v7

    .line 3426
    .local v6, "still":Z
    move-object v7, v4

    invoke-virtual {v7}, Ljavafx/scene/input/MouseEvent;->getEventType()Ljavafx/event/EventType;

    move-result-object v7

    sget-object v8, Ljavafx/scene/input/MouseEvent;->MOUSE_PRESSED:Ljavafx/event/EventType;

    if-ne v7, v8, :cond_4

    .line 3428
    move-object v7, v4

    invoke-virtual {v7}, Ljavafx/scene/input/MouseEvent;->isPrimaryButtonDown()Z

    move-result v7

    if-nez v7, :cond_1

    move-object v7, v3

    iget-object v7, v7, Ljavafx/scene/Scene$ClickGenerator;->counters:Ljava/util/Map;

    sget-object v8, Ljavafx/scene/input/MouseButton;->PRIMARY:Ljavafx/scene/input/MouseButton;

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljavafx/scene/Scene$ClickCounter;

    invoke-static {v7}, Ljavafx/scene/Scene$ClickCounter;->access$7100(Ljavafx/scene/Scene$ClickCounter;)V

    .line 3429
    :cond_1
    move-object v7, v4

    invoke-virtual {v7}, Ljavafx/scene/input/MouseEvent;->isSecondaryButtonDown()Z

    move-result v7

    if-nez v7, :cond_2

    move-object v7, v3

    iget-object v7, v7, Ljavafx/scene/Scene$ClickGenerator;->counters:Ljava/util/Map;

    sget-object v8, Ljavafx/scene/input/MouseButton;->SECONDARY:Ljavafx/scene/input/MouseButton;

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljavafx/scene/Scene$ClickCounter;

    invoke-static {v7}, Ljavafx/scene/Scene$ClickCounter;->access$7100(Ljavafx/scene/Scene$ClickCounter;)V

    .line 3430
    :cond_2
    move-object v7, v4

    invoke-virtual {v7}, Ljavafx/scene/input/MouseEvent;->isMiddleButtonDown()Z

    move-result v7

    if-nez v7, :cond_3

    move-object v7, v3

    iget-object v7, v7, Ljavafx/scene/Scene$ClickGenerator;->counters:Ljava/util/Map;

    sget-object v8, Ljavafx/scene/input/MouseButton;->MIDDLE:Ljavafx/scene/input/MouseButton;

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljavafx/scene/Scene$ClickCounter;

    invoke-static {v7}, Ljavafx/scene/Scene$ClickCounter;->access$7100(Ljavafx/scene/Scene$ClickCounter;)V

    .line 3432
    :cond_3
    move-object v7, v5

    invoke-static {v7}, Ljavafx/scene/Scene$ClickCounter;->access$7200(Ljavafx/scene/Scene$ClickCounter;)V

    .line 3433
    move-object v7, v5

    invoke-static {v7}, Ljavafx/scene/Scene$ClickCounter;->access$7300(Ljavafx/scene/Scene$ClickCounter;)V

    .line 3434
    move-object v7, v5

    move-object v8, v4

    invoke-virtual {v8}, Ljavafx/scene/input/MouseEvent;->getSceneX()D

    move-result-wide v8

    move-object v10, v4

    invoke-virtual {v10}, Ljavafx/scene/input/MouseEvent;->getSceneY()D

    move-result-wide v10

    invoke-static {v7, v8, v9, v10, v11}, Ljavafx/scene/Scene$ClickCounter;->access$7400(Ljavafx/scene/Scene$ClickCounter;DD)V

    .line 3435
    move-object v7, v3

    move-object v8, v5

    iput-object v8, v7, Ljavafx/scene/Scene$ClickGenerator;->lastPress:Ljavafx/scene/Scene$ClickCounter;

    .line 3438
    :cond_4
    new-instance v7, Ljavafx/scene/input/MouseEvent;

    move-object/from16 v31, v7

    move-object/from16 v7, v31

    move-object/from16 v8, v31

    move-object v9, v4

    invoke-virtual {v9}, Ljavafx/scene/input/MouseEvent;->getEventType()Ljavafx/event/EventType;

    move-result-object v9

    move-object v10, v4

    invoke-virtual {v10}, Ljavafx/scene/input/MouseEvent;->getSceneX()D

    move-result-wide v10

    move-object v12, v4

    invoke-virtual {v12}, Ljavafx/scene/input/MouseEvent;->getSceneY()D

    move-result-wide v12

    move-object v14, v4

    .line 3439
    invoke-virtual {v14}, Ljavafx/scene/input/MouseEvent;->getScreenX()D

    move-result-wide v14

    move-object/from16 v16, v4

    invoke-virtual/range {v16 .. v16}, Ljavafx/scene/input/MouseEvent;->getScreenY()D

    move-result-wide v16

    move-object/from16 v18, v4

    invoke-virtual/range {v18 .. v18}, Ljavafx/scene/input/MouseEvent;->getButton()Ljavafx/scene/input/MouseButton;

    move-result-object v18

    move-object/from16 v19, v5

    if-eqz v19, :cond_6

    move-object/from16 v19, v4

    .line 3440
    invoke-virtual/range {v19 .. v19}, Ljavafx/scene/input/MouseEvent;->getEventType()Ljavafx/event/EventType;

    move-result-object v19

    sget-object v20, Ljavafx/scene/input/MouseEvent;->MOUSE_MOVED:Ljavafx/event/EventType;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-eq v0, v1, :cond_6

    move-object/from16 v19, v5

    invoke-static/range {v19 .. v19}, Ljavafx/scene/Scene$ClickCounter;->access$7500(Ljavafx/scene/Scene$ClickCounter;)I

    move-result v19

    :goto_2
    move-object/from16 v20, v4

    .line 3441
    invoke-virtual/range {v20 .. v20}, Ljavafx/scene/input/MouseEvent;->isShiftDown()Z

    move-result v20

    move-object/from16 v21, v4

    invoke-virtual/range {v21 .. v21}, Ljavafx/scene/input/MouseEvent;->isControlDown()Z

    move-result v21

    move-object/from16 v22, v4

    invoke-virtual/range {v22 .. v22}, Ljavafx/scene/input/MouseEvent;->isAltDown()Z

    move-result v22

    move-object/from16 v23, v4

    invoke-virtual/range {v23 .. v23}, Ljavafx/scene/input/MouseEvent;->isMetaDown()Z

    move-result v23

    move-object/from16 v24, v4

    .line 3442
    invoke-virtual/range {v24 .. v24}, Ljavafx/scene/input/MouseEvent;->isPrimaryButtonDown()Z

    move-result v24

    move-object/from16 v25, v4

    invoke-virtual/range {v25 .. v25}, Ljavafx/scene/input/MouseEvent;->isMiddleButtonDown()Z

    move-result v25

    move-object/from16 v26, v4

    invoke-virtual/range {v26 .. v26}, Ljavafx/scene/input/MouseEvent;->isSecondaryButtonDown()Z

    move-result v26

    move-object/from16 v27, v4

    .line 3443
    invoke-virtual/range {v27 .. v27}, Ljavafx/scene/input/MouseEvent;->isSynthesized()Z

    move-result v27

    move-object/from16 v28, v4

    invoke-virtual/range {v28 .. v28}, Ljavafx/scene/input/MouseEvent;->isPopupTrigger()Z

    move-result v28

    move/from16 v29, v6

    move-object/from16 v30, v4

    invoke-virtual/range {v30 .. v30}, Ljavafx/scene/input/MouseEvent;->getPickResult()Ljavafx/scene/input/PickResult;

    move-result-object v30

    invoke-direct/range {v8 .. v30}, Ljavafx/scene/input/MouseEvent;-><init>(Ljavafx/event/EventType;DDDDLjavafx/scene/input/MouseButton;IZZZZZZZZZZLjavafx/scene/input/PickResult;)V

    move-object v3, v7

    .end local v3    # "this":Ljavafx/scene/Scene$ClickGenerator;
    return-object v3

    .line 3424
    .end local v6    # "still":Z
    .restart local v3    # "this":Ljavafx/scene/Scene$ClickGenerator;
    :cond_5
    const/4 v7, 0x0

    goto/16 :goto_1

    .line 3440
    .restart local v6    # "still":Z
    :cond_6
    const/16 v19, 0x0

    goto :goto_2
.end method
