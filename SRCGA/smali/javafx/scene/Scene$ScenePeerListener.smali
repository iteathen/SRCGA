.class Ljavafx/scene/Scene$ScenePeerListener;
.super Ljava/lang/Object;
.source "Scene.java"

# interfaces
.implements Lcom/sun/javafx/tk/TKSceneListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/Scene;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ScenePeerListener"
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/scene/Scene;


# direct methods
.method constructor <init>(Ljavafx/scene/Scene;)V
    .locals 4

    .prologue
    .line 2471
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene$ScenePeerListener;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/Scene;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/Scene$ScenePeerListener;->this$0:Ljavafx/scene/Scene;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public changedLocation(FF)V
    .locals 8

    .prologue
    .line 2474
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/Scene$ScenePeerListener;
    move v2, p1

    .local v2, "x":F
    move v3, p2

    .local v3, "y":F
    move v4, v2

    float-to-double v4, v4

    move-object v6, v1

    iget-object v6, v6, Ljavafx/scene/Scene$ScenePeerListener;->this$0:Ljavafx/scene/Scene;

    invoke-virtual {v6}, Ljavafx/scene/Scene;->getX()D

    move-result-wide v6

    cmpl-double v4, v4, v6

    if-eqz v4, :cond_0

    .line 2475
    move-object v4, v1

    iget-object v4, v4, Ljavafx/scene/Scene$ScenePeerListener;->this$0:Ljavafx/scene/Scene;

    move v5, v2

    float-to-double v5, v5

    invoke-static {v4, v5, v6}, Ljavafx/scene/Scene;->access$4000(Ljavafx/scene/Scene;D)V

    .line 2477
    :cond_0
    move v4, v3

    float-to-double v4, v4

    move-object v6, v1

    iget-object v6, v6, Ljavafx/scene/Scene$ScenePeerListener;->this$0:Ljavafx/scene/Scene;

    invoke-virtual {v6}, Ljavafx/scene/Scene;->getY()D

    move-result-wide v6

    cmpl-double v4, v4, v6

    if-eqz v4, :cond_1

    .line 2478
    move-object v4, v1

    iget-object v4, v4, Ljavafx/scene/Scene$ScenePeerListener;->this$0:Ljavafx/scene/Scene;

    move v5, v3

    float-to-double v5, v5

    invoke-static {v4, v5, v6}, Ljavafx/scene/Scene;->access$4100(Ljavafx/scene/Scene;D)V

    .line 2480
    :cond_1
    return-void
.end method

.method public changedSize(FF)V
    .locals 8

    .prologue
    .line 2484
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/Scene$ScenePeerListener;
    move v2, p1

    .local v2, "w":F
    move v3, p2

    .local v3, "h":F
    move v4, v2

    float-to-double v4, v4

    move-object v6, v1

    iget-object v6, v6, Ljavafx/scene/Scene$ScenePeerListener;->this$0:Ljavafx/scene/Scene;

    invoke-virtual {v6}, Ljavafx/scene/Scene;->getWidth()D

    move-result-wide v6

    cmpl-double v4, v4, v6

    if-eqz v4, :cond_0

    move-object v4, v1

    iget-object v4, v4, Ljavafx/scene/Scene$ScenePeerListener;->this$0:Ljavafx/scene/Scene;

    move v5, v2

    float-to-double v5, v5

    invoke-static {v4, v5, v6}, Ljavafx/scene/Scene;->access$4200(Ljavafx/scene/Scene;D)V

    .line 2485
    :cond_0
    move v4, v3

    float-to-double v4, v4

    move-object v6, v1

    iget-object v6, v6, Ljavafx/scene/Scene$ScenePeerListener;->this$0:Ljavafx/scene/Scene;

    invoke-virtual {v6}, Ljavafx/scene/Scene;->getHeight()D

    move-result-wide v6

    cmpl-double v4, v4, v6

    if-eqz v4, :cond_1

    move-object v4, v1

    iget-object v4, v4, Ljavafx/scene/Scene$ScenePeerListener;->this$0:Ljavafx/scene/Scene;

    move v5, v3

    float-to-double v5, v5

    invoke-static {v4, v5, v6}, Ljavafx/scene/Scene;->access$4300(Ljavafx/scene/Scene;D)V

    .line 2486
    :cond_1
    return-void
.end method

.method public getSceneAccessible()Lcom/sun/glass/ui/Accessible;
    .locals 2

    .prologue
    .line 2777
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene$ScenePeerListener;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Scene$ScenePeerListener;->this$0:Ljavafx/scene/Scene;

    invoke-virtual {v1}, Ljavafx/scene/Scene;->getAccessible()Lcom/sun/glass/ui/Accessible;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Scene$ScenePeerListener;
    return-object v0
.end method

.method public inputMethodEvent(Ljavafx/event/EventType;Ljavafx/collections/ObservableList;Ljava/lang/String;I)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/event/EventType",
            "<",
            "Ljavafx/scene/input/InputMethodEvent;",
            ">;",
            "Ljavafx/collections/ObservableList",
            "<",
            "Ljavafx/scene/input/InputMethodTextRun;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 2513
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene$ScenePeerListener;
    move-object v1, p1

    .local v1, "type":Ljavafx/event/EventType;, "Ljavafx/event/EventType<Ljavafx/scene/input/InputMethodEvent;>;"
    move-object v2, p2

    .local v2, "composed":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<Ljavafx/scene/input/InputMethodTextRun;>;"
    move-object/from16 v3, p3

    .local v3, "committed":Ljava/lang/String;
    move/from16 v4, p4

    .local v4, "caretPosition":I
    new-instance v6, Ljavafx/scene/input/InputMethodEvent;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    move-object v8, v1

    move-object v9, v2

    move-object v10, v3

    move v11, v4

    invoke-direct {v7, v8, v9, v10, v11}, Ljavafx/scene/input/InputMethodEvent;-><init>(Ljavafx/event/EventType;Ljava/util/List;Ljava/lang/String;I)V

    move-object v5, v6

    .line 2515
    .local v5, "inputMethodEvent":Ljavafx/scene/input/InputMethodEvent;
    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/Scene$ScenePeerListener;->this$0:Ljavafx/scene/Scene;

    move-object v7, v5

    invoke-static {v6, v7}, Ljavafx/scene/Scene;->access$4400(Ljavafx/scene/Scene;Ljavafx/scene/input/InputMethodEvent;)V

    .line 2516
    return-void
.end method

.method public keyEvent(Ljavafx/scene/input/KeyEvent;)V
    .locals 4

    .prologue
    .line 2505
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene$ScenePeerListener;
    move-object v1, p1

    .local v1, "keyEvent":Ljavafx/scene/input/KeyEvent;
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/Scene$ScenePeerListener;->this$0:Ljavafx/scene/Scene;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/scene/Scene;->impl_processKeyEvent(Ljavafx/scene/input/KeyEvent;)V

    .line 2506
    return-void
.end method

.method public menuEvent(DDDDZ)V
    .locals 21

    .prologue
    .line 2520
    move-object/from16 v1, p0

    .local v1, "this":Ljavafx/scene/Scene$ScenePeerListener;
    move-wide/from16 v2, p1

    .local v2, "x":D
    move-wide/from16 v4, p3

    .local v4, "y":D
    move-wide/from16 v6, p5

    .local v6, "xAbs":D
    move-wide/from16 v8, p7

    .local v8, "yAbs":D
    move/from16 v10, p9

    .local v10, "isKeyboardTrigger":Z
    move-object v11, v1

    iget-object v11, v11, Ljavafx/scene/Scene$ScenePeerListener;->this$0:Ljavafx/scene/Scene;

    move-wide v12, v2

    move-wide v14, v4

    move-wide/from16 v16, v6

    move-wide/from16 v18, v8

    move/from16 v20, v10

    invoke-static/range {v11 .. v20}, Ljavafx/scene/Scene;->access$4500(Ljavafx/scene/Scene;DDDDZ)V

    .line 2521
    return-void
.end method

.method public mouseEvent(Ljavafx/event/EventType;DDDDLjavafx/scene/input/MouseButton;ZZZZZZZZZ)V
    .locals 48
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/event/EventType",
            "<",
            "Ljavafx/scene/input/MouseEvent;",
            ">;DDDD",
            "Ljavafx/scene/input/MouseButton;",
            "ZZZZZZZZZ)V"
        }
    .end annotation

    .prologue
    .line 2494
    move-object/from16 v2, p0

    .local v2, "this":Ljavafx/scene/Scene$ScenePeerListener;
    move-object/from16 v3, p1

    .local v3, "type":Ljavafx/event/EventType;, "Ljavafx/event/EventType<Ljavafx/scene/input/MouseEvent;>;"
    move-wide/from16 v4, p2

    .local v4, "x":D
    move-wide/from16 v6, p4

    .local v6, "y":D
    move-wide/from16 v8, p6

    .local v8, "screenX":D
    move-wide/from16 v10, p8

    .local v10, "screenY":D
    move-object/from16 v12, p10

    .local v12, "button":Ljavafx/scene/input/MouseButton;
    move/from16 v13, p11

    .local v13, "popupTrigger":Z
    move/from16 v14, p12

    .local v14, "synthesized":Z
    move/from16 v15, p13

    .local v15, "shiftDown":Z
    move/from16 v16, p14

    .local v16, "controlDown":Z
    move/from16 v17, p15

    .local v17, "altDown":Z
    move/from16 v18, p16

    .local v18, "metaDown":Z
    move/from16 v19, p17

    .local v19, "primaryDown":Z
    move/from16 v20, p18

    .local v20, "middleDown":Z
    move/from16 v21, p19

    .local v21, "secondaryDown":Z
    new-instance v23, Ljavafx/scene/input/MouseEvent;

    move-object/from16 v47, v23

    move-object/from16 v23, v47

    move-object/from16 v24, v47

    move-object/from16 v25, v3

    move-wide/from16 v26, v4

    move-wide/from16 v28, v6

    move-wide/from16 v30, v8

    move-wide/from16 v32, v10

    move-object/from16 v34, v12

    const/16 v35, 0x0

    move/from16 v36, v15

    move/from16 v37, v16

    move/from16 v38, v17

    move/from16 v39, v18

    move/from16 v40, v19

    move/from16 v41, v20

    move/from16 v42, v21

    move/from16 v43, v14

    move/from16 v44, v13

    const/16 v45, 0x0

    const/16 v46, 0x0

    invoke-direct/range {v24 .. v46}, Ljavafx/scene/input/MouseEvent;-><init>(Ljavafx/event/EventType;DDDDLjavafx/scene/input/MouseButton;IZZZZZZZZZZLjavafx/scene/input/PickResult;)V

    move-object/from16 v22, v23

    .line 2498
    .local v22, "mouseEvent":Ljavafx/scene/input/MouseEvent;
    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Ljavafx/scene/Scene$ScenePeerListener;->this$0:Ljavafx/scene/Scene;

    move-object/from16 v23, v0

    move-object/from16 v24, v22

    invoke-virtual/range {v23 .. v24}, Ljavafx/scene/Scene;->impl_processMouseEvent(Ljavafx/scene/input/MouseEvent;)V

    .line 2499
    return-void
.end method

.method public rotateEvent(Ljavafx/event/EventType;DDDDDDZZZZZZ)V
    .locals 50
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/event/EventType",
            "<",
            "Ljavafx/scene/input/RotateEvent;",
            ">;DDDDDDZZZZZZ)V"
        }
    .end annotation

    .prologue
    .line 2632
    move-object/from16 v2, p0

    .local v2, "this":Ljavafx/scene/Scene$ScenePeerListener;
    move-object/from16 v3, p1

    .local v3, "eventType":Ljavafx/event/EventType;, "Ljavafx/event/EventType<Ljavafx/scene/input/RotateEvent;>;"
    move-wide/from16 v4, p2

    .local v4, "angle":D
    move-wide/from16 v6, p4

    .local v6, "totalAngle":D
    move-wide/from16 v8, p6

    .local v8, "x":D
    move-wide/from16 v10, p8

    .local v10, "y":D
    move-wide/from16 v12, p10

    .local v12, "screenX":D
    move-wide/from16 v14, p12

    .local v14, "screenY":D
    move/from16 v16, p14

    .local v16, "_shiftDown":Z
    move/from16 v17, p15

    .local v17, "_controlDown":Z
    move/from16 v18, p16

    .local v18, "_altDown":Z
    move/from16 v19, p17

    .local v19, "_metaDown":Z
    move/from16 v20, p18

    .local v20, "_direct":Z
    move/from16 v21, p19

    .local v21, "_inertia":Z
    move-object/from16 v22, v3

    sget-object v23, Ljavafx/scene/input/RotateEvent;->ROTATION_FINISHED:Ljavafx/event/EventType;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_1

    .line 2633
    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget-object v0, v0, Ljavafx/scene/Scene$ScenePeerListener;->this$0:Ljavafx/scene/Scene;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljavafx/scene/Scene;->access$5100(Ljavafx/scene/Scene;)Ljavafx/scene/Scene$TouchGesture;

    move-result-object v22

    move-object/from16 v0, v22

    iget-object v0, v0, Ljavafx/scene/Scene$TouchGesture;->sceneCoords:Ljavafx/geometry/Point2D;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljavafx/geometry/Point2D;->getX()D

    move-result-wide v22

    move-wide/from16 v8, v22

    .line 2634
    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget-object v0, v0, Ljavafx/scene/Scene$ScenePeerListener;->this$0:Ljavafx/scene/Scene;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljavafx/scene/Scene;->access$5100(Ljavafx/scene/Scene;)Ljavafx/scene/Scene$TouchGesture;

    move-result-object v22

    move-object/from16 v0, v22

    iget-object v0, v0, Ljavafx/scene/Scene$TouchGesture;->sceneCoords:Ljavafx/geometry/Point2D;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljavafx/geometry/Point2D;->getY()D

    move-result-wide v22

    move-wide/from16 v10, v22

    .line 2635
    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget-object v0, v0, Ljavafx/scene/Scene$ScenePeerListener;->this$0:Ljavafx/scene/Scene;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljavafx/scene/Scene;->access$5100(Ljavafx/scene/Scene;)Ljavafx/scene/Scene$TouchGesture;

    move-result-object v22

    move-object/from16 v0, v22

    iget-object v0, v0, Ljavafx/scene/Scene$TouchGesture;->screenCoords:Ljavafx/geometry/Point2D;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljavafx/geometry/Point2D;->getX()D

    move-result-wide v22

    move-wide/from16 v12, v22

    .line 2636
    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget-object v0, v0, Ljavafx/scene/Scene$ScenePeerListener;->this$0:Ljavafx/scene/Scene;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljavafx/scene/Scene;->access$5100(Ljavafx/scene/Scene;)Ljavafx/scene/Scene$TouchGesture;

    move-result-object v22

    move-object/from16 v0, v22

    iget-object v0, v0, Ljavafx/scene/Scene$TouchGesture;->screenCoords:Ljavafx/geometry/Point2D;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljavafx/geometry/Point2D;->getY()D

    move-result-wide v22

    move-wide/from16 v14, v22

    .line 2648
    :cond_0
    :goto_0
    const/16 v22, 0x1

    invoke-static/range {v22 .. v22}, Ljavafx/scene/Scene;->access$4802(Z)Z

    move-result v22

    .line 2649
    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget-object v0, v0, Ljavafx/scene/Scene$ScenePeerListener;->this$0:Ljavafx/scene/Scene;

    move-object/from16 v22, v0

    new-instance v23, Ljavafx/scene/input/RotateEvent;

    move-object/from16 v49, v23

    move-object/from16 v23, v49

    move-object/from16 v24, v49

    move-object/from16 v25, v3

    move-wide/from16 v26, v8

    move-wide/from16 v28, v10

    move-wide/from16 v30, v12

    move-wide/from16 v32, v14

    move/from16 v34, v16

    move/from16 v35, v17

    move/from16 v36, v18

    move/from16 v37, v19

    move/from16 v38, v20

    move/from16 v39, v21

    move-wide/from16 v40, v4

    move-wide/from16 v42, v6

    move-object/from16 v44, v2

    move-object/from16 v0, v44

    iget-object v0, v0, Ljavafx/scene/Scene$ScenePeerListener;->this$0:Ljavafx/scene/Scene;

    move-object/from16 v44, v0

    move-wide/from16 v45, v8

    move-wide/from16 v47, v10

    .line 2652
    invoke-static/range {v44 .. v48}, Ljavafx/scene/Scene;->access$4900(Ljavafx/scene/Scene;DD)Ljavafx/scene/input/PickResult;

    move-result-object v44

    invoke-direct/range {v24 .. v44}, Ljavafx/scene/input/RotateEvent;-><init>(Ljavafx/event/EventType;DDDDZZZZZZDDLjavafx/scene/input/PickResult;)V

    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget-object v0, v0, Ljavafx/scene/Scene$ScenePeerListener;->this$0:Ljavafx/scene/Scene;

    move-object/from16 v24, v0

    .line 2653
    invoke-static/range {v24 .. v24}, Ljavafx/scene/Scene;->access$5100(Ljavafx/scene/Scene;)Ljavafx/scene/Scene$TouchGesture;

    move-result-object v24

    .line 2649
    invoke-static/range {v22 .. v24}, Ljavafx/scene/Scene;->access$300(Ljavafx/scene/Scene;Ljavafx/scene/input/GestureEvent;Ljavafx/scene/Scene$TouchGesture;)V

    .line 2654
    const/16 v22, 0x0

    invoke-static/range {v22 .. v22}, Ljavafx/scene/Scene;->access$4802(Z)Z

    move-result v22

    .line 2656
    :goto_1
    return-void

    .line 2637
    :cond_1
    move-wide/from16 v22, v8

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->isNaN(D)Z

    move-result v22

    if-nez v22, :cond_2

    move-wide/from16 v22, v10

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->isNaN(D)Z

    move-result v22

    if-nez v22, :cond_2

    move-wide/from16 v22, v12

    .line 2638
    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->isNaN(D)Z

    move-result v22

    if-nez v22, :cond_2

    move-wide/from16 v22, v14

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->isNaN(D)Z

    move-result v22

    if-eqz v22, :cond_0

    .line 2639
    :cond_2
    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget-object v0, v0, Ljavafx/scene/Scene$ScenePeerListener;->this$0:Ljavafx/scene/Scene;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljavafx/scene/Scene;->access$4600(Ljavafx/scene/Scene;)Ljavafx/geometry/Point2D;

    move-result-object v22

    if-eqz v22, :cond_3

    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget-object v0, v0, Ljavafx/scene/Scene$ScenePeerListener;->this$0:Ljavafx/scene/Scene;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljavafx/scene/Scene;->access$4700(Ljavafx/scene/Scene;)Ljavafx/geometry/Point2D;

    move-result-object v22

    if-nez v22, :cond_4

    .line 2640
    :cond_3
    goto :goto_1

    .line 2642
    :cond_4
    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget-object v0, v0, Ljavafx/scene/Scene$ScenePeerListener;->this$0:Ljavafx/scene/Scene;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljavafx/scene/Scene;->access$4600(Ljavafx/scene/Scene;)Ljavafx/geometry/Point2D;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljavafx/geometry/Point2D;->getX()D

    move-result-wide v22

    move-wide/from16 v8, v22

    .line 2643
    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget-object v0, v0, Ljavafx/scene/Scene$ScenePeerListener;->this$0:Ljavafx/scene/Scene;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljavafx/scene/Scene;->access$4600(Ljavafx/scene/Scene;)Ljavafx/geometry/Point2D;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljavafx/geometry/Point2D;->getY()D

    move-result-wide v22

    move-wide/from16 v10, v22

    .line 2644
    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget-object v0, v0, Ljavafx/scene/Scene$ScenePeerListener;->this$0:Ljavafx/scene/Scene;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljavafx/scene/Scene;->access$4700(Ljavafx/scene/Scene;)Ljavafx/geometry/Point2D;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljavafx/geometry/Point2D;->getX()D

    move-result-wide v22

    move-wide/from16 v12, v22

    .line 2645
    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget-object v0, v0, Ljavafx/scene/Scene$ScenePeerListener;->this$0:Ljavafx/scene/Scene;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljavafx/scene/Scene;->access$4700(Ljavafx/scene/Scene;)Ljavafx/geometry/Point2D;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljavafx/geometry/Point2D;->getY()D

    move-result-wide v22

    move-wide/from16 v14, v22

    goto/16 :goto_0
.end method

.method public scrollEvent(Ljavafx/event/EventType;DDDDDDIIIIIDDDDZZZZZZ)V
    .locals 86
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/event/EventType",
            "<",
            "Ljavafx/scene/input/ScrollEvent;",
            ">;DDDDDDIIIIIDDDDZZZZZZ)V"
        }
    .end annotation

    .prologue
    .line 2537
    move-object/from16 v3, p0

    .local v3, "this":Ljavafx/scene/Scene$ScenePeerListener;
    move-object/from16 v4, p1

    .local v4, "eventType":Ljavafx/event/EventType;, "Ljavafx/event/EventType<Ljavafx/scene/input/ScrollEvent;>;"
    move-wide/from16 v5, p2

    .local v5, "scrollX":D
    move-wide/from16 v7, p4

    .local v7, "scrollY":D
    move-wide/from16 v9, p6

    .local v9, "totalScrollX":D
    move-wide/from16 v11, p8

    .local v11, "totalScrollY":D
    move-wide/from16 v13, p10

    .local v13, "xMultiplier":D
    move-wide/from16 v15, p12

    .local v15, "yMultiplier":D
    move/from16 v17, p14

    .local v17, "touchCount":I
    move/from16 v18, p15

    .local v18, "scrollTextX":I
    move/from16 v19, p16

    .local v19, "scrollTextY":I
    move/from16 v20, p17

    .local v20, "defaultTextX":I
    move/from16 v21, p18

    .local v21, "defaultTextY":I
    move-wide/from16 v22, p19

    .local v22, "x":D
    move-wide/from16 v24, p21

    .local v24, "y":D
    move-wide/from16 v26, p23

    .local v26, "screenX":D
    move-wide/from16 v28, p25

    .local v28, "screenY":D
    move/from16 v30, p27

    .local v30, "_shiftDown":Z
    move/from16 v31, p28

    .local v31, "_controlDown":Z
    move/from16 v32, p29

    .local v32, "_altDown":Z
    move/from16 v33, p30

    .local v33, "_metaDown":Z
    move/from16 v34, p31

    .local v34, "_direct":Z
    move/from16 v35, p32

    .local v35, "_inertia":Z
    move/from16 v42, v18

    if-lez v42, :cond_1

    sget-object v42, Ljavafx/scene/input/ScrollEvent$HorizontalTextScrollUnits;->CHARACTERS:Ljavafx/scene/input/ScrollEvent$HorizontalTextScrollUnits;

    :goto_0
    move-object/from16 v36, v42

    .line 2541
    .local v36, "xUnits":Ljavafx/scene/input/ScrollEvent$HorizontalTextScrollUnits;
    move/from16 v42, v18

    if-gez v42, :cond_2

    const-wide/16 v42, 0x0

    :goto_1
    move-wide/from16 v37, v42

    .line 2543
    .local v37, "xText":D
    move/from16 v42, v19

    if-lez v42, :cond_3

    sget-object v42, Ljavafx/scene/input/ScrollEvent$VerticalTextScrollUnits;->LINES:Ljavafx/scene/input/ScrollEvent$VerticalTextScrollUnits;

    :goto_2
    move-object/from16 v39, v42

    .line 2549
    .local v39, "yUnits":Ljavafx/scene/input/ScrollEvent$VerticalTextScrollUnits;
    move/from16 v42, v19

    if-gez v42, :cond_5

    move-wide/from16 v42, v7

    :goto_3
    move-wide/from16 v40, v42

    .line 2551
    .local v40, "yText":D
    move/from16 v42, v20

    if-lez v42, :cond_6

    move/from16 v42, v18

    if-ltz v42, :cond_6

    move-wide/from16 v42, v13

    move/from16 v44, v18

    move/from16 v0, v44

    int-to-double v0, v0

    move-wide/from16 v44, v0

    mul-double v42, v42, v44

    move/from16 v44, v20

    move/from16 v0, v44

    int-to-double v0, v0

    move-wide/from16 v44, v0

    div-double v42, v42, v44

    .line 2552
    invoke-static/range {v42 .. v43}, Ljava/lang/Math;->round(D)J

    move-result-wide v42

    move-wide/from16 v0, v42

    long-to-double v0, v0

    move-wide/from16 v42, v0

    :goto_4
    move-wide/from16 v13, v42

    .line 2555
    move/from16 v42, v21

    if-lez v42, :cond_7

    move/from16 v42, v19

    if-ltz v42, :cond_7

    move-wide/from16 v42, v15

    move/from16 v44, v19

    move/from16 v0, v44

    int-to-double v0, v0

    move-wide/from16 v44, v0

    mul-double v42, v42, v44

    move/from16 v44, v21

    move/from16 v0, v44

    int-to-double v0, v0

    move-wide/from16 v44, v0

    div-double v42, v42, v44

    .line 2556
    invoke-static/range {v42 .. v43}, Ljava/lang/Math;->round(D)J

    move-result-wide v42

    move-wide/from16 v0, v42

    long-to-double v0, v0

    move-wide/from16 v42, v0

    :goto_5
    move-wide/from16 v15, v42

    .line 2559
    move-object/from16 v42, v4

    sget-object v43, Ljavafx/scene/input/ScrollEvent;->SCROLL_FINISHED:Ljavafx/event/EventType;

    move-object/from16 v0, v42

    move-object/from16 v1, v43

    if-ne v0, v1, :cond_8

    .line 2560
    move-object/from16 v42, v3

    move-object/from16 v0, v42

    iget-object v0, v0, Ljavafx/scene/Scene$ScenePeerListener;->this$0:Ljavafx/scene/Scene;

    move-object/from16 v42, v0

    invoke-static/range {v42 .. v42}, Ljavafx/scene/Scene;->access$200(Ljavafx/scene/Scene;)Ljavafx/scene/Scene$TouchGesture;

    move-result-object v42

    move-object/from16 v0, v42

    iget-object v0, v0, Ljavafx/scene/Scene$TouchGesture;->sceneCoords:Ljavafx/geometry/Point2D;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Ljavafx/geometry/Point2D;->getX()D

    move-result-wide v42

    move-wide/from16 v22, v42

    .line 2561
    move-object/from16 v42, v3

    move-object/from16 v0, v42

    iget-object v0, v0, Ljavafx/scene/Scene$ScenePeerListener;->this$0:Ljavafx/scene/Scene;

    move-object/from16 v42, v0

    invoke-static/range {v42 .. v42}, Ljavafx/scene/Scene;->access$200(Ljavafx/scene/Scene;)Ljavafx/scene/Scene$TouchGesture;

    move-result-object v42

    move-object/from16 v0, v42

    iget-object v0, v0, Ljavafx/scene/Scene$TouchGesture;->sceneCoords:Ljavafx/geometry/Point2D;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Ljavafx/geometry/Point2D;->getY()D

    move-result-wide v42

    move-wide/from16 v24, v42

    .line 2562
    move-object/from16 v42, v3

    move-object/from16 v0, v42

    iget-object v0, v0, Ljavafx/scene/Scene$ScenePeerListener;->this$0:Ljavafx/scene/Scene;

    move-object/from16 v42, v0

    invoke-static/range {v42 .. v42}, Ljavafx/scene/Scene;->access$200(Ljavafx/scene/Scene;)Ljavafx/scene/Scene$TouchGesture;

    move-result-object v42

    move-object/from16 v0, v42

    iget-object v0, v0, Ljavafx/scene/Scene$TouchGesture;->screenCoords:Ljavafx/geometry/Point2D;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Ljavafx/geometry/Point2D;->getX()D

    move-result-wide v42

    move-wide/from16 v26, v42

    .line 2563
    move-object/from16 v42, v3

    move-object/from16 v0, v42

    iget-object v0, v0, Ljavafx/scene/Scene$ScenePeerListener;->this$0:Ljavafx/scene/Scene;

    move-object/from16 v42, v0

    invoke-static/range {v42 .. v42}, Ljavafx/scene/Scene;->access$200(Ljavafx/scene/Scene;)Ljavafx/scene/Scene$TouchGesture;

    move-result-object v42

    move-object/from16 v0, v42

    iget-object v0, v0, Ljavafx/scene/Scene$TouchGesture;->screenCoords:Ljavafx/geometry/Point2D;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Ljavafx/geometry/Point2D;->getY()D

    move-result-wide v42

    move-wide/from16 v28, v42

    .line 2575
    :cond_0
    :goto_6
    const/16 v42, 0x1

    invoke-static/range {v42 .. v42}, Ljavafx/scene/Scene;->access$4802(Z)Z

    move-result v42

    .line 2576
    move-object/from16 v42, v3

    move-object/from16 v0, v42

    iget-object v0, v0, Ljavafx/scene/Scene$ScenePeerListener;->this$0:Ljavafx/scene/Scene;

    move-object/from16 v42, v0

    new-instance v43, Ljavafx/scene/input/ScrollEvent;

    move-object/from16 v84, v43

    move-object/from16 v43, v84

    move-object/from16 v44, v84

    move-object/from16 v45, v4

    move-wide/from16 v46, v22

    move-wide/from16 v48, v24

    move-wide/from16 v50, v26

    move-wide/from16 v52, v28

    move/from16 v54, v30

    move/from16 v55, v31

    move/from16 v56, v32

    move/from16 v57, v33

    move/from16 v58, v34

    move/from16 v59, v35

    move-wide/from16 v60, v5

    move-wide/from16 v62, v13

    mul-double v60, v60, v62

    move-wide/from16 v62, v7

    move-wide/from16 v64, v15

    mul-double v62, v62, v64

    move-wide/from16 v64, v9

    move-wide/from16 v66, v13

    mul-double v64, v64, v66

    move-wide/from16 v66, v11

    move-wide/from16 v68, v15

    mul-double v66, v66, v68

    move-wide/from16 v68, v13

    move-wide/from16 v70, v15

    move-object/from16 v72, v36

    move-wide/from16 v73, v37

    move-object/from16 v75, v39

    move-wide/from16 v76, v40

    move/from16 v78, v17

    move-object/from16 v79, v3

    move-object/from16 v0, v79

    iget-object v0, v0, Ljavafx/scene/Scene$ScenePeerListener;->this$0:Ljavafx/scene/Scene;

    move-object/from16 v79, v0

    move-wide/from16 v80, v22

    move-wide/from16 v82, v24

    .line 2584
    invoke-static/range {v79 .. v83}, Ljavafx/scene/Scene;->access$4900(Ljavafx/scene/Scene;DD)Ljavafx/scene/input/PickResult;

    move-result-object v79

    invoke-direct/range {v44 .. v79}, Ljavafx/scene/input/ScrollEvent;-><init>(Ljavafx/event/EventType;DDDDZZZZZZDDDDDDLjavafx/scene/input/ScrollEvent$HorizontalTextScrollUnits;DLjavafx/scene/input/ScrollEvent$VerticalTextScrollUnits;DILjavafx/scene/input/PickResult;)V

    move-object/from16 v44, v3

    move-object/from16 v0, v44

    iget-object v0, v0, Ljavafx/scene/Scene$ScenePeerListener;->this$0:Ljavafx/scene/Scene;

    move-object/from16 v44, v0

    .line 2585
    invoke-static/range {v44 .. v44}, Ljavafx/scene/Scene;->access$200(Ljavafx/scene/Scene;)Ljavafx/scene/Scene$TouchGesture;

    move-result-object v44

    .line 2576
    invoke-static/range {v42 .. v44}, Ljavafx/scene/Scene;->access$300(Ljavafx/scene/Scene;Ljavafx/scene/input/GestureEvent;Ljavafx/scene/Scene$TouchGesture;)V

    .line 2586
    const/16 v42, 0x0

    invoke-static/range {v42 .. v42}, Ljavafx/scene/Scene;->access$4802(Z)Z

    move-result v42

    .line 2587
    :goto_7
    return-void

    .line 2537
    .end local v36    # "xUnits":Ljavafx/scene/input/ScrollEvent$HorizontalTextScrollUnits;
    .end local v37    # "xText":D
    .end local v39    # "yUnits":Ljavafx/scene/input/ScrollEvent$VerticalTextScrollUnits;
    .end local v40    # "yText":D
    :cond_1
    sget-object v42, Ljavafx/scene/input/ScrollEvent$HorizontalTextScrollUnits;->NONE:Ljavafx/scene/input/ScrollEvent$HorizontalTextScrollUnits;

    goto/16 :goto_0

    .line 2541
    .restart local v36    # "xUnits":Ljavafx/scene/input/ScrollEvent$HorizontalTextScrollUnits;
    :cond_2
    move/from16 v42, v18

    move/from16 v0, v42

    int-to-double v0, v0

    move-wide/from16 v42, v0

    move-wide/from16 v44, v5

    mul-double v42, v42, v44

    goto/16 :goto_1

    .line 2543
    .restart local v37    # "xText":D
    :cond_3
    move/from16 v42, v19

    if-gez v42, :cond_4

    sget-object v42, Ljavafx/scene/input/ScrollEvent$VerticalTextScrollUnits;->PAGES:Ljavafx/scene/input/ScrollEvent$VerticalTextScrollUnits;

    goto/16 :goto_2

    :cond_4
    sget-object v42, Ljavafx/scene/input/ScrollEvent$VerticalTextScrollUnits;->NONE:Ljavafx/scene/input/ScrollEvent$VerticalTextScrollUnits;

    goto/16 :goto_2

    .line 2549
    .restart local v39    # "yUnits":Ljavafx/scene/input/ScrollEvent$VerticalTextScrollUnits;
    :cond_5
    move/from16 v42, v19

    move/from16 v0, v42

    int-to-double v0, v0

    move-wide/from16 v42, v0

    move-wide/from16 v44, v7

    mul-double v42, v42, v44

    goto/16 :goto_3

    .line 2552
    .restart local v40    # "yText":D
    :cond_6
    move-wide/from16 v42, v13

    goto/16 :goto_4

    .line 2556
    :cond_7
    move-wide/from16 v42, v15

    goto/16 :goto_5

    .line 2564
    :cond_8
    move-wide/from16 v42, v22

    invoke-static/range {v42 .. v43}, Ljava/lang/Double;->isNaN(D)Z

    move-result v42

    if-nez v42, :cond_9

    move-wide/from16 v42, v24

    invoke-static/range {v42 .. v43}, Ljava/lang/Double;->isNaN(D)Z

    move-result v42

    if-nez v42, :cond_9

    move-wide/from16 v42, v26

    .line 2565
    invoke-static/range {v42 .. v43}, Ljava/lang/Double;->isNaN(D)Z

    move-result v42

    if-nez v42, :cond_9

    move-wide/from16 v42, v28

    invoke-static/range {v42 .. v43}, Ljava/lang/Double;->isNaN(D)Z

    move-result v42

    if-eqz v42, :cond_0

    .line 2566
    :cond_9
    move-object/from16 v42, v3

    move-object/from16 v0, v42

    iget-object v0, v0, Ljavafx/scene/Scene$ScenePeerListener;->this$0:Ljavafx/scene/Scene;

    move-object/from16 v42, v0

    invoke-static/range {v42 .. v42}, Ljavafx/scene/Scene;->access$4600(Ljavafx/scene/Scene;)Ljavafx/geometry/Point2D;

    move-result-object v42

    if-eqz v42, :cond_a

    move-object/from16 v42, v3

    move-object/from16 v0, v42

    iget-object v0, v0, Ljavafx/scene/Scene$ScenePeerListener;->this$0:Ljavafx/scene/Scene;

    move-object/from16 v42, v0

    invoke-static/range {v42 .. v42}, Ljavafx/scene/Scene;->access$4700(Ljavafx/scene/Scene;)Ljavafx/geometry/Point2D;

    move-result-object v42

    if-nez v42, :cond_b

    .line 2567
    :cond_a
    goto :goto_7

    .line 2569
    :cond_b
    move-object/from16 v42, v3

    move-object/from16 v0, v42

    iget-object v0, v0, Ljavafx/scene/Scene$ScenePeerListener;->this$0:Ljavafx/scene/Scene;

    move-object/from16 v42, v0

    invoke-static/range {v42 .. v42}, Ljavafx/scene/Scene;->access$4600(Ljavafx/scene/Scene;)Ljavafx/geometry/Point2D;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljavafx/geometry/Point2D;->getX()D

    move-result-wide v42

    move-wide/from16 v22, v42

    .line 2570
    move-object/from16 v42, v3

    move-object/from16 v0, v42

    iget-object v0, v0, Ljavafx/scene/Scene$ScenePeerListener;->this$0:Ljavafx/scene/Scene;

    move-object/from16 v42, v0

    invoke-static/range {v42 .. v42}, Ljavafx/scene/Scene;->access$4600(Ljavafx/scene/Scene;)Ljavafx/geometry/Point2D;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljavafx/geometry/Point2D;->getY()D

    move-result-wide v42

    move-wide/from16 v24, v42

    .line 2571
    move-object/from16 v42, v3

    move-object/from16 v0, v42

    iget-object v0, v0, Ljavafx/scene/Scene$ScenePeerListener;->this$0:Ljavafx/scene/Scene;

    move-object/from16 v42, v0

    invoke-static/range {v42 .. v42}, Ljavafx/scene/Scene;->access$4700(Ljavafx/scene/Scene;)Ljavafx/geometry/Point2D;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljavafx/geometry/Point2D;->getX()D

    move-result-wide v42

    move-wide/from16 v26, v42

    .line 2572
    move-object/from16 v42, v3

    move-object/from16 v0, v42

    iget-object v0, v0, Ljavafx/scene/Scene$ScenePeerListener;->this$0:Ljavafx/scene/Scene;

    move-object/from16 v42, v0

    invoke-static/range {v42 .. v42}, Ljavafx/scene/Scene;->access$4700(Ljavafx/scene/Scene;)Ljavafx/geometry/Point2D;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljavafx/geometry/Point2D;->getY()D

    move-result-wide v42

    move-wide/from16 v28, v42

    goto/16 :goto_6
.end method

.method public swipeEvent(Ljavafx/event/EventType;IDDDDZZZZZ)V
    .locals 43
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/event/EventType",
            "<",
            "Ljavafx/scene/input/SwipeEvent;",
            ">;IDDDDZZZZZ)V"
        }
    .end annotation

    .prologue
    .line 2665
    move-object/from16 v2, p0

    .local v2, "this":Ljavafx/scene/Scene$ScenePeerListener;
    move-object/from16 v3, p1

    .local v3, "eventType":Ljavafx/event/EventType;, "Ljavafx/event/EventType<Ljavafx/scene/input/SwipeEvent;>;"
    move/from16 v4, p2

    .local v4, "touchCount":I
    move-wide/from16 v5, p3

    .local v5, "x":D
    move-wide/from16 v7, p5

    .local v7, "y":D
    move-wide/from16 v9, p7

    .local v9, "screenX":D
    move-wide/from16 v11, p9

    .local v11, "screenY":D
    move/from16 v13, p11

    .local v13, "_shiftDown":Z
    move/from16 v14, p12

    .local v14, "_controlDown":Z
    move/from16 v15, p13

    .local v15, "_altDown":Z
    move/from16 v16, p14

    .local v16, "_metaDown":Z
    move/from16 v17, p15

    .local v17, "_direct":Z
    move-wide/from16 v18, v5

    invoke-static/range {v18 .. v19}, Ljava/lang/Double;->isNaN(D)Z

    move-result v18

    if-nez v18, :cond_0

    move-wide/from16 v18, v7

    invoke-static/range {v18 .. v19}, Ljava/lang/Double;->isNaN(D)Z

    move-result v18

    if-nez v18, :cond_0

    move-wide/from16 v18, v9

    .line 2666
    invoke-static/range {v18 .. v19}, Ljava/lang/Double;->isNaN(D)Z

    move-result v18

    if-nez v18, :cond_0

    move-wide/from16 v18, v11

    invoke-static/range {v18 .. v19}, Ljava/lang/Double;->isNaN(D)Z

    move-result v18

    if-eqz v18, :cond_3

    .line 2667
    :cond_0
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Ljavafx/scene/Scene$ScenePeerListener;->this$0:Ljavafx/scene/Scene;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljavafx/scene/Scene;->access$4600(Ljavafx/scene/Scene;)Ljavafx/geometry/Point2D;

    move-result-object v18

    if-eqz v18, :cond_1

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Ljavafx/scene/Scene$ScenePeerListener;->this$0:Ljavafx/scene/Scene;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljavafx/scene/Scene;->access$4700(Ljavafx/scene/Scene;)Ljavafx/geometry/Point2D;

    move-result-object v18

    if-nez v18, :cond_2

    .line 2668
    .line 2683
    :cond_1
    :goto_0
    return-void

    .line 2670
    :cond_2
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Ljavafx/scene/Scene$ScenePeerListener;->this$0:Ljavafx/scene/Scene;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljavafx/scene/Scene;->access$4600(Ljavafx/scene/Scene;)Ljavafx/geometry/Point2D;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljavafx/geometry/Point2D;->getX()D

    move-result-wide v18

    move-wide/from16 v5, v18

    .line 2671
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Ljavafx/scene/Scene$ScenePeerListener;->this$0:Ljavafx/scene/Scene;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljavafx/scene/Scene;->access$4600(Ljavafx/scene/Scene;)Ljavafx/geometry/Point2D;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljavafx/geometry/Point2D;->getY()D

    move-result-wide v18

    move-wide/from16 v7, v18

    .line 2672
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Ljavafx/scene/Scene$ScenePeerListener;->this$0:Ljavafx/scene/Scene;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljavafx/scene/Scene;->access$4700(Ljavafx/scene/Scene;)Ljavafx/geometry/Point2D;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljavafx/geometry/Point2D;->getX()D

    move-result-wide v18

    move-wide/from16 v9, v18

    .line 2673
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Ljavafx/scene/Scene$ScenePeerListener;->this$0:Ljavafx/scene/Scene;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljavafx/scene/Scene;->access$4700(Ljavafx/scene/Scene;)Ljavafx/geometry/Point2D;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljavafx/geometry/Point2D;->getY()D

    move-result-wide v18

    move-wide/from16 v11, v18

    .line 2676
    :cond_3
    const/16 v18, 0x1

    invoke-static/range {v18 .. v18}, Ljavafx/scene/Scene;->access$4802(Z)Z

    move-result v18

    .line 2677
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Ljavafx/scene/Scene$ScenePeerListener;->this$0:Ljavafx/scene/Scene;

    move-object/from16 v18, v0

    new-instance v19, Ljavafx/scene/input/SwipeEvent;

    move-object/from16 v41, v19

    move-object/from16 v19, v41

    move-object/from16 v20, v41

    move-object/from16 v21, v3

    move-wide/from16 v22, v5

    move-wide/from16 v24, v7

    move-wide/from16 v26, v9

    move-wide/from16 v28, v11

    move/from16 v30, v13

    move/from16 v31, v14

    move/from16 v32, v15

    move/from16 v33, v16

    move/from16 v34, v17

    move/from16 v35, v4

    move-object/from16 v36, v2

    move-object/from16 v0, v36

    iget-object v0, v0, Ljavafx/scene/Scene$ScenePeerListener;->this$0:Ljavafx/scene/Scene;

    move-object/from16 v36, v0

    move-wide/from16 v37, v5

    move-wide/from16 v39, v7

    .line 2680
    invoke-static/range {v36 .. v40}, Ljavafx/scene/Scene;->access$4900(Ljavafx/scene/Scene;DD)Ljavafx/scene/input/PickResult;

    move-result-object v36

    invoke-direct/range {v20 .. v36}, Ljavafx/scene/input/SwipeEvent;-><init>(Ljavafx/event/EventType;DDDDZZZZZILjavafx/scene/input/PickResult;)V

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Ljavafx/scene/Scene$ScenePeerListener;->this$0:Ljavafx/scene/Scene;

    move-object/from16 v20, v0

    .line 2681
    invoke-static/range {v20 .. v20}, Ljavafx/scene/Scene;->access$5200(Ljavafx/scene/Scene;)Ljavafx/scene/Scene$TouchGesture;

    move-result-object v20

    .line 2677
    invoke-static/range {v18 .. v20}, Ljavafx/scene/Scene;->access$300(Ljavafx/scene/Scene;Ljavafx/scene/input/GestureEvent;Ljavafx/scene/Scene$TouchGesture;)V

    .line 2682
    const/16 v18, 0x0

    invoke-static/range {v18 .. v18}, Ljavafx/scene/Scene;->access$4802(Z)Z

    move-result v18

    .line 2683
    goto/16 :goto_0
.end method

.method public touchEventBegin(JIZZZZZ)V
    .locals 23

    .prologue
    .line 2691
    move-object/from16 v1, p0

    .local v1, "this":Ljavafx/scene/Scene$ScenePeerListener;
    move-wide/from16 v2, p1

    .local v2, "time":J
    move/from16 v4, p3

    .local v4, "touchCount":I
    move/from16 v5, p4

    .local v5, "isDirect":Z
    move/from16 v6, p5

    .local v6, "_shiftDown":Z
    move/from16 v7, p6

    .local v7, "_controlDown":Z
    move/from16 v8, p7

    .local v8, "_altDown":Z
    move/from16 v9, p8

    .local v9, "_metaDown":Z
    move v10, v5

    if-nez v10, :cond_0

    .line 2692
    move-object v10, v1

    iget-object v10, v10, Ljavafx/scene/Scene$ScenePeerListener;->this$0:Ljavafx/scene/Scene;

    const/4 v11, 0x0

    invoke-static {v10, v11}, Ljavafx/scene/Scene;->access$5302(Ljavafx/scene/Scene;Ljavafx/scene/input/TouchEvent;)Ljavafx/scene/input/TouchEvent;

    move-result-object v10

    .line 2693
    .line 2702
    :goto_0
    return-void

    .line 2695
    :cond_0
    move-object v10, v1

    iget-object v10, v10, Ljavafx/scene/Scene$ScenePeerListener;->this$0:Ljavafx/scene/Scene;

    new-instance v11, Ljavafx/scene/input/TouchEvent;

    move-object/from16 v21, v11

    move-object/from16 v11, v21

    move-object/from16 v12, v21

    sget-object v13, Ljavafx/scene/input/TouchEvent;->ANY:Ljavafx/event/EventType;

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move/from16 v17, v6

    move/from16 v18, v7

    move/from16 v19, v8

    move/from16 v20, v9

    invoke-direct/range {v12 .. v20}, Ljavafx/scene/input/TouchEvent;-><init>(Ljavafx/event/EventType;Ljavafx/scene/input/TouchPoint;Ljava/util/List;IZZZZ)V

    invoke-static {v10, v11}, Ljavafx/scene/Scene;->access$5302(Ljavafx/scene/Scene;Ljavafx/scene/input/TouchEvent;)Ljavafx/scene/input/TouchEvent;

    move-result-object v10

    .line 2698
    move-object v10, v1

    iget-object v10, v10, Ljavafx/scene/Scene$ScenePeerListener;->this$0:Ljavafx/scene/Scene;

    invoke-static {v10}, Ljavafx/scene/Scene;->access$5400(Ljavafx/scene/Scene;)[Ljavafx/scene/input/TouchPoint;

    move-result-object v10

    if-eqz v10, :cond_1

    move-object v10, v1

    iget-object v10, v10, Ljavafx/scene/Scene$ScenePeerListener;->this$0:Ljavafx/scene/Scene;

    invoke-static {v10}, Ljavafx/scene/Scene;->access$5400(Ljavafx/scene/Scene;)[Ljavafx/scene/input/TouchPoint;

    move-result-object v10

    array-length v10, v10

    move v11, v4

    if-eq v10, v11, :cond_2

    .line 2699
    :cond_1
    move-object v10, v1

    iget-object v10, v10, Ljavafx/scene/Scene$ScenePeerListener;->this$0:Ljavafx/scene/Scene;

    move v11, v4

    new-array v11, v11, [Ljavafx/scene/input/TouchPoint;

    invoke-static {v10, v11}, Ljavafx/scene/Scene;->access$5402(Ljavafx/scene/Scene;[Ljavafx/scene/input/TouchPoint;)[Ljavafx/scene/input/TouchPoint;

    move-result-object v10

    .line 2701
    :cond_2
    move-object v10, v1

    iget-object v10, v10, Ljavafx/scene/Scene$ScenePeerListener;->this$0:Ljavafx/scene/Scene;

    const/4 v11, 0x0

    invoke-static {v10, v11}, Ljavafx/scene/Scene;->access$5502(Ljavafx/scene/Scene;I)I

    move-result v10

    .line 2702
    goto :goto_0
.end method

.method public touchEventEnd()V
    .locals 5

    .prologue
    .line 2758
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene$ScenePeerListener;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Scene$ScenePeerListener;->this$0:Ljavafx/scene/Scene;

    invoke-static {v1}, Ljavafx/scene/Scene;->access$5300(Ljavafx/scene/Scene;)Ljavafx/scene/input/TouchEvent;

    move-result-object v1

    if-nez v1, :cond_0

    .line 2760
    .line 2773
    :goto_0
    return-void

    .line 2763
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Scene$ScenePeerListener;->this$0:Ljavafx/scene/Scene;

    invoke-static {v1}, Ljavafx/scene/Scene;->access$5500(Ljavafx/scene/Scene;)I

    move-result v1

    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/Scene$ScenePeerListener;->this$0:Ljavafx/scene/Scene;

    invoke-static {v2}, Ljavafx/scene/Scene;->access$5400(Ljavafx/scene/Scene;)[Ljavafx/scene/input/TouchPoint;

    move-result-object v2

    array-length v2, v2

    if-eq v1, v2, :cond_1

    .line 2764
    new-instance v1, Ljava/lang/RuntimeException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string v3, "Wrong number of touch points reported"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2767
    :cond_1
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Scene$ScenePeerListener;->this$0:Ljavafx/scene/Scene;

    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/Scene$ScenePeerListener;->this$0:Ljavafx/scene/Scene;

    invoke-static {v2}, Ljavafx/scene/Scene;->access$5300(Ljavafx/scene/Scene;)Ljavafx/scene/input/TouchEvent;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/Scene$ScenePeerListener;->this$0:Ljavafx/scene/Scene;

    invoke-static {v3}, Ljavafx/scene/Scene;->access$5400(Ljavafx/scene/Scene;)[Ljavafx/scene/input/TouchPoint;

    move-result-object v3

    invoke-static {v1, v2, v3}, Ljavafx/scene/Scene;->access$5800(Ljavafx/scene/Scene;Ljavafx/scene/input/TouchEvent;[Ljavafx/scene/input/TouchPoint;)V

    .line 2769
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Scene$ScenePeerListener;->this$0:Ljavafx/scene/Scene;

    invoke-static {v1}, Ljavafx/scene/Scene;->access$5600(Ljavafx/scene/Scene;)Ljavafx/scene/Scene$TouchMap;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/scene/Scene$TouchMap;->cleanup()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2771
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Scene$ScenePeerListener;->this$0:Ljavafx/scene/Scene;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljavafx/scene/Scene;->access$5902(Ljavafx/scene/Scene;I)I

    move-result v1

    .line 2773
    :cond_2
    goto :goto_0
.end method

.method public touchEventNext(Ljavafx/scene/input/TouchPoint$State;JDDDD)V
    .locals 36

    .prologue
    .line 2709
    move-object/from16 v2, p0

    .local v2, "this":Ljavafx/scene/Scene$ScenePeerListener;
    move-object/from16 v3, p1

    .local v3, "state":Ljavafx/scene/input/TouchPoint$State;
    move-wide/from16 v4, p2

    .local v4, "touchId":J
    move-wide/from16 v6, p4

    .local v6, "x":D
    move-wide/from16 v8, p6

    .local v8, "y":D
    move-wide/from16 v10, p8

    .local v10, "screenX":D
    move-wide/from16 v12, p10

    .local v12, "screenY":D
    const/16 v20, 0x1

    invoke-static/range {v20 .. v20}, Ljavafx/scene/Scene;->access$4802(Z)Z

    move-result v20

    .line 2710
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Ljavafx/scene/Scene$ScenePeerListener;->this$0:Ljavafx/scene/Scene;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljavafx/scene/Scene;->access$5300(Ljavafx/scene/Scene;)Ljavafx/scene/input/TouchEvent;

    move-result-object v20

    if-nez v20, :cond_0

    .line 2712
    .line 2754
    :goto_0
    return-void

    .line 2714
    :cond_0
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Ljavafx/scene/Scene$ScenePeerListener;->this$0:Ljavafx/scene/Scene;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljavafx/scene/Scene;->access$5508(Ljavafx/scene/Scene;)I

    move-result v20

    .line 2715
    move-object/from16 v20, v3

    sget-object v21, Ljavafx/scene/input/TouchPoint$State;->PRESSED:Ljavafx/scene/input/TouchPoint$State;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_2

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Ljavafx/scene/Scene$ScenePeerListener;->this$0:Ljavafx/scene/Scene;

    move-object/from16 v20, v0

    .line 2716
    invoke-static/range {v20 .. v20}, Ljavafx/scene/Scene;->access$5600(Ljavafx/scene/Scene;)Ljavafx/scene/Scene$TouchMap;

    move-result-object v20

    move-wide/from16 v21, v4

    invoke-virtual/range {v20 .. v22}, Ljavafx/scene/Scene$TouchMap;->add(J)I

    move-result v20

    :goto_1
    move/from16 v14, v20

    .line 2717
    .local v14, "id":I
    move-object/from16 v20, v3

    sget-object v21, Ljavafx/scene/input/TouchPoint$State;->RELEASED:Ljavafx/scene/input/TouchPoint$State;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_1

    .line 2718
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Ljavafx/scene/Scene$ScenePeerListener;->this$0:Ljavafx/scene/Scene;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljavafx/scene/Scene;->access$5600(Ljavafx/scene/Scene;)Ljavafx/scene/Scene$TouchMap;

    move-result-object v20

    move-wide/from16 v21, v4

    invoke-virtual/range {v20 .. v22}, Ljavafx/scene/Scene$TouchMap;->remove(J)V

    .line 2720
    :cond_1
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Ljavafx/scene/Scene$ScenePeerListener;->this$0:Ljavafx/scene/Scene;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljavafx/scene/Scene;->access$5600(Ljavafx/scene/Scene;)Ljavafx/scene/Scene$TouchMap;

    move-result-object v20

    move/from16 v21, v14

    invoke-virtual/range {v20 .. v21}, Ljavafx/scene/Scene$TouchMap;->getOrder(I)I

    move-result v20

    move/from16 v15, v20

    .line 2722
    .local v15, "order":I
    move/from16 v20, v15

    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget-object v0, v0, Ljavafx/scene/Scene$ScenePeerListener;->this$0:Ljavafx/scene/Scene;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljavafx/scene/Scene;->access$5400(Ljavafx/scene/Scene;)[Ljavafx/scene/input/TouchPoint;

    move-result-object v21

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-lt v0, v1, :cond_3

    .line 2723
    new-instance v20, Ljava/lang/RuntimeException;

    move-object/from16 v34, v20

    move-object/from16 v20, v34

    move-object/from16 v21, v34

    const-string v22, "Too many touch points reported"

    invoke-direct/range {v21 .. v22}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v20

    .line 2716
    .end local v14    # "id":I
    .end local v15    # "order":I
    :cond_2
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Ljavafx/scene/Scene$ScenePeerListener;->this$0:Ljavafx/scene/Scene;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljavafx/scene/Scene;->access$5600(Ljavafx/scene/Scene;)Ljavafx/scene/Scene$TouchMap;

    move-result-object v20

    move-wide/from16 v21, v4

    invoke-virtual/range {v20 .. v22}, Ljavafx/scene/Scene$TouchMap;->get(J)I

    move-result v20

    goto :goto_1

    .line 2727
    .restart local v14    # "id":I
    .restart local v15    # "order":I
    :cond_3
    const/16 v20, 0x0

    move/from16 v16, v20

    .line 2728
    .local v16, "isGrabbed":Z
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Ljavafx/scene/Scene$ScenePeerListener;->this$0:Ljavafx/scene/Scene;

    move-object/from16 v20, v0

    move-wide/from16 v21, v6

    move-wide/from16 v23, v8

    invoke-static/range {v20 .. v24}, Ljavafx/scene/Scene;->access$4900(Ljavafx/scene/Scene;DD)Ljavafx/scene/input/PickResult;

    move-result-object v20

    move-object/from16 v17, v20

    .line 2729
    .local v17, "pickRes":Ljavafx/scene/input/PickResult;
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Ljavafx/scene/Scene$ScenePeerListener;->this$0:Ljavafx/scene/Scene;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljavafx/scene/Scene;->access$5700(Ljavafx/scene/Scene;)Ljava/util/Map;

    move-result-object v20

    move/from16 v21, v14

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    invoke-interface/range {v20 .. v21}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljavafx/event/EventTarget;

    move-object/from16 v18, v20

    .line 2730
    .local v18, "pickedTarget":Ljavafx/event/EventTarget;
    move-object/from16 v20, v18

    if-nez v20, :cond_7

    .line 2731
    move-object/from16 v20, v17

    invoke-virtual/range {v20 .. v20}, Ljavafx/scene/input/PickResult;->getIntersectedNode()Ljavafx/scene/Node;

    move-result-object v20

    move-object/from16 v18, v20

    .line 2732
    move-object/from16 v20, v18

    if-nez v20, :cond_4

    .line 2733
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Ljavafx/scene/Scene$ScenePeerListener;->this$0:Ljavafx/scene/Scene;

    move-object/from16 v20, v0

    move-object/from16 v18, v20

    .line 2739
    :cond_4
    :goto_2
    new-instance v20, Ljavafx/scene/input/TouchPoint;

    move-object/from16 v34, v20

    move-object/from16 v20, v34

    move-object/from16 v21, v34

    move/from16 v22, v14

    move-object/from16 v23, v3

    move-wide/from16 v24, v6

    move-wide/from16 v26, v8

    move-wide/from16 v28, v10

    move-wide/from16 v30, v12

    move-object/from16 v32, v18

    move-object/from16 v33, v17

    invoke-direct/range {v21 .. v33}, Ljavafx/scene/input/TouchPoint;-><init>(ILjavafx/scene/input/TouchPoint$State;DDDDLjavafx/event/EventTarget;Ljavafx/scene/input/PickResult;)V

    move-object/from16 v19, v20

    .line 2742
    .local v19, "tp":Ljavafx/scene/input/TouchPoint;
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Ljavafx/scene/Scene$ScenePeerListener;->this$0:Ljavafx/scene/Scene;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljavafx/scene/Scene;->access$5400(Ljavafx/scene/Scene;)[Ljavafx/scene/input/TouchPoint;

    move-result-object v20

    move/from16 v21, v15

    move-object/from16 v22, v19

    aput-object v22, v20, v21

    .line 2744
    move/from16 v20, v16

    if-eqz v20, :cond_5

    .line 2745
    move-object/from16 v20, v19

    move-object/from16 v21, v18

    invoke-virtual/range {v20 .. v21}, Ljavafx/scene/input/TouchPoint;->grab(Ljavafx/event/EventTarget;)V

    .line 2747
    :cond_5
    move-object/from16 v20, v19

    invoke-virtual/range {v20 .. v20}, Ljavafx/scene/input/TouchPoint;->getState()Ljavafx/scene/input/TouchPoint$State;

    move-result-object v20

    sget-object v21, Ljavafx/scene/input/TouchPoint$State;->PRESSED:Ljavafx/scene/input/TouchPoint$State;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_8

    .line 2748
    move-object/from16 v20, v19

    move-object/from16 v21, v18

    invoke-virtual/range {v20 .. v21}, Ljavafx/scene/input/TouchPoint;->grab(Ljavafx/event/EventTarget;)V

    .line 2749
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Ljavafx/scene/Scene$ScenePeerListener;->this$0:Ljavafx/scene/Scene;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljavafx/scene/Scene;->access$5700(Ljavafx/scene/Scene;)Ljava/util/Map;

    move-result-object v20

    move-object/from16 v21, v19

    invoke-virtual/range {v21 .. v21}, Ljavafx/scene/input/TouchPoint;->getId()I

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v22, v18

    invoke-interface/range {v20 .. v22}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    .line 2753
    :cond_6
    :goto_3
    const/16 v20, 0x0

    invoke-static/range {v20 .. v20}, Ljavafx/scene/Scene;->access$4802(Z)Z

    move-result v20

    .line 2754
    goto/16 :goto_0

    .line 2736
    .end local v19    # "tp":Ljavafx/scene/input/TouchPoint;
    :cond_7
    const/16 v20, 0x1

    move/from16 v16, v20

    goto :goto_2

    .line 2750
    .restart local v19    # "tp":Ljavafx/scene/input/TouchPoint;
    :cond_8
    move-object/from16 v20, v19

    invoke-virtual/range {v20 .. v20}, Ljavafx/scene/input/TouchPoint;->getState()Ljavafx/scene/input/TouchPoint$State;

    move-result-object v20

    sget-object v21, Ljavafx/scene/input/TouchPoint$State;->RELEASED:Ljavafx/scene/input/TouchPoint$State;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_6

    .line 2751
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Ljavafx/scene/Scene$ScenePeerListener;->this$0:Ljavafx/scene/Scene;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljavafx/scene/Scene;->access$5700(Ljavafx/scene/Scene;)Ljava/util/Map;

    move-result-object v20

    move-object/from16 v21, v19

    invoke-virtual/range {v21 .. v21}, Ljavafx/scene/input/TouchPoint;->getId()I

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    invoke-interface/range {v20 .. v21}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    goto :goto_3
.end method

.method public zoomEvent(Ljavafx/event/EventType;DDDDDDZZZZZZ)V
    .locals 50
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/event/EventType",
            "<",
            "Ljavafx/scene/input/ZoomEvent;",
            ">;DDDDDDZZZZZZ)V"
        }
    .end annotation

    .prologue
    .line 2598
    move-object/from16 v2, p0

    .local v2, "this":Ljavafx/scene/Scene$ScenePeerListener;
    move-object/from16 v3, p1

    .local v3, "eventType":Ljavafx/event/EventType;, "Ljavafx/event/EventType<Ljavafx/scene/input/ZoomEvent;>;"
    move-wide/from16 v4, p2

    .local v4, "zoomFactor":D
    move-wide/from16 v6, p4

    .local v6, "totalZoomFactor":D
    move-wide/from16 v8, p6

    .local v8, "x":D
    move-wide/from16 v10, p8

    .local v10, "y":D
    move-wide/from16 v12, p10

    .local v12, "screenX":D
    move-wide/from16 v14, p12

    .local v14, "screenY":D
    move/from16 v16, p14

    .local v16, "_shiftDown":Z
    move/from16 v17, p15

    .local v17, "_controlDown":Z
    move/from16 v18, p16

    .local v18, "_altDown":Z
    move/from16 v19, p17

    .local v19, "_metaDown":Z
    move/from16 v20, p18

    .local v20, "_direct":Z
    move/from16 v21, p19

    .local v21, "_inertia":Z
    move-object/from16 v22, v3

    sget-object v23, Ljavafx/scene/input/ZoomEvent;->ZOOM_FINISHED:Ljavafx/event/EventType;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_1

    .line 2599
    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget-object v0, v0, Ljavafx/scene/Scene$ScenePeerListener;->this$0:Ljavafx/scene/Scene;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljavafx/scene/Scene;->access$5000(Ljavafx/scene/Scene;)Ljavafx/scene/Scene$TouchGesture;

    move-result-object v22

    move-object/from16 v0, v22

    iget-object v0, v0, Ljavafx/scene/Scene$TouchGesture;->sceneCoords:Ljavafx/geometry/Point2D;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljavafx/geometry/Point2D;->getX()D

    move-result-wide v22

    move-wide/from16 v8, v22

    .line 2600
    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget-object v0, v0, Ljavafx/scene/Scene$ScenePeerListener;->this$0:Ljavafx/scene/Scene;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljavafx/scene/Scene;->access$5000(Ljavafx/scene/Scene;)Ljavafx/scene/Scene$TouchGesture;

    move-result-object v22

    move-object/from16 v0, v22

    iget-object v0, v0, Ljavafx/scene/Scene$TouchGesture;->sceneCoords:Ljavafx/geometry/Point2D;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljavafx/geometry/Point2D;->getY()D

    move-result-wide v22

    move-wide/from16 v10, v22

    .line 2601
    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget-object v0, v0, Ljavafx/scene/Scene$ScenePeerListener;->this$0:Ljavafx/scene/Scene;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljavafx/scene/Scene;->access$5000(Ljavafx/scene/Scene;)Ljavafx/scene/Scene$TouchGesture;

    move-result-object v22

    move-object/from16 v0, v22

    iget-object v0, v0, Ljavafx/scene/Scene$TouchGesture;->screenCoords:Ljavafx/geometry/Point2D;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljavafx/geometry/Point2D;->getX()D

    move-result-wide v22

    move-wide/from16 v12, v22

    .line 2602
    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget-object v0, v0, Ljavafx/scene/Scene$ScenePeerListener;->this$0:Ljavafx/scene/Scene;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljavafx/scene/Scene;->access$5000(Ljavafx/scene/Scene;)Ljavafx/scene/Scene$TouchGesture;

    move-result-object v22

    move-object/from16 v0, v22

    iget-object v0, v0, Ljavafx/scene/Scene$TouchGesture;->screenCoords:Ljavafx/geometry/Point2D;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljavafx/geometry/Point2D;->getY()D

    move-result-wide v22

    move-wide/from16 v14, v22

    .line 2614
    :cond_0
    :goto_0
    const/16 v22, 0x1

    invoke-static/range {v22 .. v22}, Ljavafx/scene/Scene;->access$4802(Z)Z

    move-result v22

    .line 2615
    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget-object v0, v0, Ljavafx/scene/Scene$ScenePeerListener;->this$0:Ljavafx/scene/Scene;

    move-object/from16 v22, v0

    new-instance v23, Ljavafx/scene/input/ZoomEvent;

    move-object/from16 v49, v23

    move-object/from16 v23, v49

    move-object/from16 v24, v49

    move-object/from16 v25, v3

    move-wide/from16 v26, v8

    move-wide/from16 v28, v10

    move-wide/from16 v30, v12

    move-wide/from16 v32, v14

    move/from16 v34, v16

    move/from16 v35, v17

    move/from16 v36, v18

    move/from16 v37, v19

    move/from16 v38, v20

    move/from16 v39, v21

    move-wide/from16 v40, v4

    move-wide/from16 v42, v6

    move-object/from16 v44, v2

    move-object/from16 v0, v44

    iget-object v0, v0, Ljavafx/scene/Scene$ScenePeerListener;->this$0:Ljavafx/scene/Scene;

    move-object/from16 v44, v0

    move-wide/from16 v45, v8

    move-wide/from16 v47, v10

    .line 2619
    invoke-static/range {v44 .. v48}, Ljavafx/scene/Scene;->access$4900(Ljavafx/scene/Scene;DD)Ljavafx/scene/input/PickResult;

    move-result-object v44

    invoke-direct/range {v24 .. v44}, Ljavafx/scene/input/ZoomEvent;-><init>(Ljavafx/event/EventType;DDDDZZZZZZDDLjavafx/scene/input/PickResult;)V

    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget-object v0, v0, Ljavafx/scene/Scene$ScenePeerListener;->this$0:Ljavafx/scene/Scene;

    move-object/from16 v24, v0

    .line 2620
    invoke-static/range {v24 .. v24}, Ljavafx/scene/Scene;->access$5000(Ljavafx/scene/Scene;)Ljavafx/scene/Scene$TouchGesture;

    move-result-object v24

    .line 2615
    invoke-static/range {v22 .. v24}, Ljavafx/scene/Scene;->access$300(Ljavafx/scene/Scene;Ljavafx/scene/input/GestureEvent;Ljavafx/scene/Scene$TouchGesture;)V

    .line 2621
    const/16 v22, 0x0

    invoke-static/range {v22 .. v22}, Ljavafx/scene/Scene;->access$4802(Z)Z

    move-result v22

    .line 2622
    :goto_1
    return-void

    .line 2603
    :cond_1
    move-wide/from16 v22, v8

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->isNaN(D)Z

    move-result v22

    if-nez v22, :cond_2

    move-wide/from16 v22, v10

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->isNaN(D)Z

    move-result v22

    if-nez v22, :cond_2

    move-wide/from16 v22, v12

    .line 2604
    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->isNaN(D)Z

    move-result v22

    if-nez v22, :cond_2

    move-wide/from16 v22, v14

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->isNaN(D)Z

    move-result v22

    if-eqz v22, :cond_0

    .line 2605
    :cond_2
    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget-object v0, v0, Ljavafx/scene/Scene$ScenePeerListener;->this$0:Ljavafx/scene/Scene;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljavafx/scene/Scene;->access$4600(Ljavafx/scene/Scene;)Ljavafx/geometry/Point2D;

    move-result-object v22

    if-eqz v22, :cond_3

    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget-object v0, v0, Ljavafx/scene/Scene$ScenePeerListener;->this$0:Ljavafx/scene/Scene;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljavafx/scene/Scene;->access$4700(Ljavafx/scene/Scene;)Ljavafx/geometry/Point2D;

    move-result-object v22

    if-nez v22, :cond_4

    .line 2606
    :cond_3
    goto :goto_1

    .line 2608
    :cond_4
    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget-object v0, v0, Ljavafx/scene/Scene$ScenePeerListener;->this$0:Ljavafx/scene/Scene;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljavafx/scene/Scene;->access$4600(Ljavafx/scene/Scene;)Ljavafx/geometry/Point2D;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljavafx/geometry/Point2D;->getX()D

    move-result-wide v22

    move-wide/from16 v8, v22

    .line 2609
    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget-object v0, v0, Ljavafx/scene/Scene$ScenePeerListener;->this$0:Ljavafx/scene/Scene;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljavafx/scene/Scene;->access$4600(Ljavafx/scene/Scene;)Ljavafx/geometry/Point2D;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljavafx/geometry/Point2D;->getY()D

    move-result-wide v22

    move-wide/from16 v10, v22

    .line 2610
    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget-object v0, v0, Ljavafx/scene/Scene$ScenePeerListener;->this$0:Ljavafx/scene/Scene;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljavafx/scene/Scene;->access$4700(Ljavafx/scene/Scene;)Ljavafx/geometry/Point2D;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljavafx/geometry/Point2D;->getX()D

    move-result-wide v22

    move-wide/from16 v12, v22

    .line 2611
    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget-object v0, v0, Ljavafx/scene/Scene$ScenePeerListener;->this$0:Ljavafx/scene/Scene;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljavafx/scene/Scene;->access$4700(Ljavafx/scene/Scene;)Ljavafx/geometry/Point2D;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljavafx/geometry/Point2D;->getY()D

    move-result-wide v22

    move-wide/from16 v14, v22

    goto/16 :goto_0
.end method
