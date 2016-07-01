.class final Ljavafx/scene/input/KeyEvent$1;
.super Lcom/sun/javafx/robot/impl/FXRobotHelper$FXRobotInputAccessor;
.source "KeyEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/input/KeyEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 118
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/input/KeyEvent$1;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/robot/impl/FXRobotHelper$FXRobotInputAccessor;-><init>()V

    return-void
.end method


# virtual methods
.method public createKeyEvent(Ljavafx/event/EventType;Ljavafx/scene/input/KeyCode;Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljavafx/scene/input/KeyEvent;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/event/EventType",
            "<+",
            "Ljavafx/scene/input/KeyEvent;",
            ">;",
            "Ljavafx/scene/input/KeyCode;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZZZZ)",
            "Ljavafx/scene/input/KeyEvent;"
        }
    .end annotation

    .prologue
    .line 131
    move-object/from16 v0, p0

    .local v0, "this":Ljavafx/scene/input/KeyEvent$1;
    move-object/from16 v1, p1

    .local v1, "eventType":Ljavafx/event/EventType;, "Ljavafx/event/EventType<+Ljavafx/scene/input/KeyEvent;>;"
    move-object/from16 v2, p2

    .local v2, "code":Ljavafx/scene/input/KeyCode;
    move-object/from16 v3, p3

    .local v3, "character":Ljava/lang/String;
    move-object/from16 v4, p4

    .local v4, "text":Ljava/lang/String;
    move/from16 v5, p5

    .local v5, "shiftDown":Z
    move/from16 v6, p6

    .local v6, "controlDown":Z
    move/from16 v7, p7

    .local v7, "altDown":Z
    move/from16 v8, p8

    .local v8, "metaDown":Z
    new-instance v9, Ljavafx/scene/input/KeyEvent;

    move-object/from16 v19, v9

    move-object/from16 v9, v19

    move-object/from16 v10, v19

    move-object v11, v1

    move-object v12, v3

    move-object v13, v4

    move-object v14, v2

    move v15, v5

    move/from16 v16, v6

    move/from16 v17, v7

    move/from16 v18, v8

    invoke-direct/range {v10 .. v18}, Ljavafx/scene/input/KeyEvent;-><init>(Ljavafx/event/EventType;Ljava/lang/String;Ljava/lang/String;Ljavafx/scene/input/KeyCode;ZZZZ)V

    move-object v0, v9

    .end local v0    # "this":Ljavafx/scene/input/KeyEvent$1;
    return-object v0
.end method

.method public createMouseEvent(Ljavafx/event/EventType;IIIILjavafx/scene/input/MouseButton;IZZZZZZZZ)Ljavafx/scene/input/MouseEvent;
    .locals 44
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/event/EventType",
            "<+",
            "Ljavafx/scene/input/MouseEvent;",
            ">;IIII",
            "Ljavafx/scene/input/MouseButton;",
            "IZZZZZZZZ)",
            "Ljavafx/scene/input/MouseEvent;"
        }
    .end annotation

    .prologue
    .line 142
    move-object/from16 v3, p0

    .local v3, "this":Ljavafx/scene/input/KeyEvent$1;
    move-object/from16 v4, p1

    .local v4, "eventType":Ljavafx/event/EventType;, "Ljavafx/event/EventType<+Ljavafx/scene/input/MouseEvent;>;"
    move/from16 v5, p2

    .local v5, "x":I
    move/from16 v6, p3

    .local v6, "y":I
    move/from16 v7, p4

    .local v7, "screenX":I
    move/from16 v8, p5

    .local v8, "screenY":I
    move-object/from16 v9, p6

    .local v9, "button":Ljavafx/scene/input/MouseButton;
    move/from16 v10, p7

    .local v10, "clickCount":I
    move/from16 v11, p8

    .local v11, "shiftDown":Z
    move/from16 v12, p9

    .local v12, "controlDown":Z
    move/from16 v13, p10

    .local v13, "altDown":Z
    move/from16 v14, p11

    .local v14, "metaDown":Z
    move/from16 v15, p12

    .local v15, "popupTrigger":Z
    move/from16 v16, p13

    .local v16, "primaryButtonDown":Z
    move/from16 v17, p14

    .local v17, "middleButtonDown":Z
    move/from16 v18, p15

    .local v18, "secondaryButtonDown":Z
    new-instance v19, Ljavafx/scene/input/MouseEvent;

    move-object/from16 v43, v19

    move-object/from16 v19, v43

    move-object/from16 v20, v43

    move-object/from16 v21, v4

    move/from16 v22, v5

    move/from16 v0, v22

    int-to-double v0, v0

    move-wide/from16 v22, v0

    move/from16 v24, v6

    move/from16 v0, v24

    int-to-double v0, v0

    move-wide/from16 v24, v0

    move/from16 v26, v7

    move/from16 v0, v26

    int-to-double v0, v0

    move-wide/from16 v26, v0

    move/from16 v28, v8

    move/from16 v0, v28

    int-to-double v0, v0

    move-wide/from16 v28, v0

    move-object/from16 v30, v9

    move/from16 v31, v10

    move/from16 v32, v11

    move/from16 v33, v12

    move/from16 v34, v13

    move/from16 v35, v14

    move/from16 v36, v16

    move/from16 v37, v17

    move/from16 v38, v18

    const/16 v39, 0x0

    move/from16 v40, v15

    const/16 v41, 0x0

    const/16 v42, 0x0

    invoke-direct/range {v20 .. v42}, Ljavafx/scene/input/MouseEvent;-><init>(Ljavafx/event/EventType;DDDDLjavafx/scene/input/MouseButton;IZZZZZZZZZZLjavafx/scene/input/PickResult;)V

    move-object/from16 v3, v19

    .end local v3    # "this":Ljavafx/scene/input/KeyEvent$1;
    return-object v3
.end method

.method public createScrollEvent(Ljavafx/event/EventType;IILjavafx/scene/input/ScrollEvent$HorizontalTextScrollUnits;ILjavafx/scene/input/ScrollEvent$VerticalTextScrollUnits;IIIIIZZZZ)Ljavafx/scene/input/ScrollEvent;
    .locals 53
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/event/EventType",
            "<+",
            "Ljavafx/scene/input/ScrollEvent;",
            ">;II",
            "Ljavafx/scene/input/ScrollEvent$HorizontalTextScrollUnits;",
            "I",
            "Ljavafx/scene/input/ScrollEvent$VerticalTextScrollUnits;",
            "IIIIIZZZZ)",
            "Ljavafx/scene/input/ScrollEvent;"
        }
    .end annotation

    .prologue
    .line 168
    move-object/from16 v3, p0

    .local v3, "this":Ljavafx/scene/input/KeyEvent$1;
    move-object/from16 v4, p1

    .local v4, "eventType":Ljavafx/event/EventType;, "Ljavafx/event/EventType<+Ljavafx/scene/input/ScrollEvent;>;"
    move/from16 v5, p2

    .local v5, "scrollX":I
    move/from16 v6, p3

    .local v6, "scrollY":I
    move-object/from16 v7, p4

    .local v7, "xTextUnits":Ljavafx/scene/input/ScrollEvent$HorizontalTextScrollUnits;
    move/from16 v8, p5

    .local v8, "xText":I
    move-object/from16 v9, p6

    .local v9, "yTextUnits":Ljavafx/scene/input/ScrollEvent$VerticalTextScrollUnits;
    move/from16 v10, p7

    .local v10, "yText":I
    move/from16 v11, p8

    .local v11, "x":I
    move/from16 v12, p9

    .local v12, "y":I
    move/from16 v13, p10

    .local v13, "screenX":I
    move/from16 v14, p11

    .local v14, "screenY":I
    move/from16 v15, p12

    .local v15, "shiftDown":Z
    move/from16 v16, p13

    .local v16, "controlDown":Z
    move/from16 v17, p14

    .local v17, "altDown":Z
    move/from16 v18, p15

    .local v18, "metaDown":Z
    new-instance v19, Ljavafx/scene/input/ScrollEvent;

    move-object/from16 v52, v19

    move-object/from16 v19, v52

    move-object/from16 v20, v52

    sget-object v21, Ljavafx/scene/input/ScrollEvent;->SCROLL:Ljavafx/event/EventType;

    move/from16 v22, v11

    move/from16 v0, v22

    int-to-double v0, v0

    move-wide/from16 v22, v0

    move/from16 v24, v12

    move/from16 v0, v24

    int-to-double v0, v0

    move-wide/from16 v24, v0

    move/from16 v26, v13

    move/from16 v0, v26

    int-to-double v0, v0

    move-wide/from16 v26, v0

    move/from16 v28, v14

    move/from16 v0, v28

    int-to-double v0, v0

    move-wide/from16 v28, v0

    move/from16 v30, v15

    move/from16 v31, v16

    move/from16 v32, v17

    move/from16 v33, v18

    const/16 v34, 0x0

    const/16 v35, 0x0

    move/from16 v36, v5

    move/from16 v0, v36

    int-to-double v0, v0

    move-wide/from16 v36, v0

    move/from16 v38, v6

    move/from16 v0, v38

    int-to-double v0, v0

    move-wide/from16 v38, v0

    const-wide/16 v40, 0x0

    const-wide/16 v42, 0x0

    move-object/from16 v44, v7

    move/from16 v45, v8

    move/from16 v0, v45

    int-to-double v0, v0

    move-wide/from16 v45, v0

    move-object/from16 v47, v9

    move/from16 v48, v10

    move/from16 v0, v48

    int-to-double v0, v0

    move-wide/from16 v48, v0

    const/16 v50, 0x0

    const/16 v51, 0x0

    invoke-direct/range {v20 .. v51}, Ljavafx/scene/input/ScrollEvent;-><init>(Ljavafx/event/EventType;DDDDZZZZZZDDDDLjavafx/scene/input/ScrollEvent$HorizontalTextScrollUnits;DLjavafx/scene/input/ScrollEvent$VerticalTextScrollUnits;DILjavafx/scene/input/PickResult;)V

    move-object/from16 v3, v19

    .end local v3    # "this":Ljavafx/scene/input/KeyEvent$1;
    return-object v3
.end method

.method public getCodeForKeyCode(Ljavafx/scene/input/KeyCode;)I
    .locals 3

    .prologue
    .line 120
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/input/KeyEvent$1;
    move-object v1, p1

    .local v1, "keyCode":Ljavafx/scene/input/KeyCode;
    move-object v2, v1

    iget v2, v2, Ljavafx/scene/input/KeyCode;->code:I

    move v0, v2

    .end local v0    # "this":Ljavafx/scene/input/KeyEvent$1;
    return v0
.end method

.method public getKeyCodeForCode(I)Ljavafx/scene/input/KeyCode;
    .locals 3

    .prologue
    .line 123
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/input/KeyEvent$1;
    move v1, p1

    .local v1, "code":I
    move v2, v1

    invoke-static {v2}, Lcom/sun/javafx/scene/input/KeyCodeMap;->valueOf(I)Ljavafx/scene/input/KeyCode;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/input/KeyEvent$1;
    return-object v0
.end method
