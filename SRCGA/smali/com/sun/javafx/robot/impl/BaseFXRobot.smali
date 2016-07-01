.class public Lcom/sun/javafx/robot/impl/BaseFXRobot;
.super Lcom/sun/javafx/robot/FXRobot;
.source "BaseFXRobot.java"


# static fields
.field private static final debugOut:Z

.field private static keyTextMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljavafx/scene/input/KeyCode;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private isAltDown:Z

.field private isButton1Pressed:Z

.field private isButton2Pressed:Z

.field private isButton3Pressed:Z

.field private isControlDown:Z

.field private isMetaDown:Z

.field private isShiftDown:Z

.field private lastButtonPressed:Ljavafx/scene/input/MouseButton;

.field private lastConvertedImage:Lcom/sun/javafx/robot/FXRobotImage;

.field private lastImage:Ljava/lang/Object;

.field private sceneMouseX:D

.field private sceneMouseY:D

.field private screenMouseX:D

.field private screenMouseY:D

.field private target:Ljavafx/scene/Scene;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 55
    sget-object v1, Ljavafx/scene/input/KeyEvent;->CHAR_UNDEFINED:Ljava/lang/String;

    move-object v0, v1

    .line 58
    invoke-static {}, Lcom/sun/javafx/robot/impl/BaseFXRobot;->computeDebugOut()Z

    move-result v1

    sput-boolean v1, Lcom/sun/javafx/robot/impl/BaseFXRobot;->debugOut:Z

    return-void
.end method

.method public constructor <init>(Ljavafx/scene/Scene;)V
    .locals 4

    .prologue
    .line 81
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/robot/impl/BaseFXRobot;
    move-object v1, p1

    .local v1, "target":Ljavafx/scene/Scene;
    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/robot/FXRobot;-><init>()V

    .line 85
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/sun/javafx/robot/impl/BaseFXRobot;->isShiftDown:Z

    .line 86
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/sun/javafx/robot/impl/BaseFXRobot;->isControlDown:Z

    .line 87
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/sun/javafx/robot/impl/BaseFXRobot;->isAltDown:Z

    .line 88
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/sun/javafx/robot/impl/BaseFXRobot;->isMetaDown:Z

    .line 90
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/sun/javafx/robot/impl/BaseFXRobot;->isButton1Pressed:Z

    .line 91
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/sun/javafx/robot/impl/BaseFXRobot;->isButton2Pressed:Z

    .line 92
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/sun/javafx/robot/impl/BaseFXRobot;->isButton3Pressed:Z

    .line 94
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/sun/javafx/robot/impl/BaseFXRobot;->lastButtonPressed:Ljavafx/scene/input/MouseButton;

    .line 82
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/robot/impl/BaseFXRobot;->target:Ljavafx/scene/Scene;

    .line 83
    return-void
.end method

.method static synthetic access$lambda$0(Ljava/util/concurrent/CountDownLatch;)V
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-static {v1}, Lcom/sun/javafx/robot/impl/BaseFXRobot;->lambda$waitForIdle$250(Ljava/util/concurrent/CountDownLatch;)V

    return-void
.end method

.method static synthetic access$lambda$1(Lcom/sun/javafx/robot/impl/BaseFXRobot;Ljavafx/scene/input/KeyEvent;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/robot/impl/BaseFXRobot;->lambda$doKeyEvent$251(Ljavafx/scene/input/KeyEvent;)V

    return-void
.end method

.method static synthetic access$lambda$2(Lcom/sun/javafx/robot/impl/BaseFXRobot;Ljavafx/scene/input/MouseEvent;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/robot/impl/BaseFXRobot;->lambda$doMouseEvent$252(Ljavafx/scene/input/MouseEvent;)V

    return-void
.end method

.method static synthetic access$lambda$3(Lcom/sun/javafx/robot/impl/BaseFXRobot;Ljavafx/scene/input/ScrollEvent;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/robot/impl/BaseFXRobot;->lambda$doScrollEvent$253(Ljavafx/scene/input/ScrollEvent;)V

    return-void
.end method

.method private static computeDebugOut()Z
    .locals 5

    .prologue
    .line 61
    const/4 v2, 0x0

    move v0, v2

    .line 63
    .local v0, "debug":Z
    :try_start_0
    const-string v2, "true"

    const-string v3, "fxrobot.verbose"

    const-string v4, "false"

    invoke-static {v3, v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    move v0, v2

    .line 64
    .line 65
    :goto_0
    move v2, v0

    move v0, v2

    .end local v0    # "debug":Z
    return v0

    .line 64
    .restart local v0    # "debug":Z
    :catch_0
    move-exception v2

    move-object v1, v2

    goto :goto_0
.end method

.method private doKeyEvent(Ljavafx/event/EventType;Ljavafx/scene/input/KeyCode;Ljava/lang/String;)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/event/EventType",
            "<",
            "Ljavafx/scene/input/KeyEvent;",
            ">;",
            "Ljavafx/scene/input/KeyCode;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 187
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/javafx/robot/impl/BaseFXRobot;
    move-object/from16 v2, p1

    .local v2, "eventType":Ljavafx/event/EventType;, "Ljavafx/event/EventType<Ljavafx/scene/input/KeyEvent;>;"
    move-object/from16 v3, p2

    .local v3, "keyCode":Ljavafx/scene/input/KeyCode;
    move-object/from16 v4, p3

    .local v4, "character":Ljava/lang/String;
    move-object v10, v2

    sget-object v11, Ljavafx/scene/input/KeyEvent;->KEY_PRESSED:Ljavafx/event/EventType;

    if-ne v10, v11, :cond_5

    const/4 v10, 0x1

    :goto_0
    move v5, v10

    .line 188
    .local v5, "pressed":Z
    move-object v10, v2

    sget-object v11, Ljavafx/scene/input/KeyEvent;->KEY_TYPED:Ljavafx/event/EventType;

    if-ne v10, v11, :cond_6

    const/4 v10, 0x1

    :goto_1
    move v6, v10

    .line 189
    .local v6, "typed":Z
    move-object v10, v3

    sget-object v11, Ljavafx/scene/input/KeyCode;->SHIFT:Ljavafx/scene/input/KeyCode;

    if-ne v10, v11, :cond_0

    .line 190
    move-object v10, v1

    move v11, v5

    iput-boolean v11, v10, Lcom/sun/javafx/robot/impl/BaseFXRobot;->isShiftDown:Z

    .line 192
    :cond_0
    move-object v10, v3

    sget-object v11, Ljavafx/scene/input/KeyCode;->CONTROL:Ljavafx/scene/input/KeyCode;

    if-ne v10, v11, :cond_1

    .line 193
    move-object v10, v1

    move v11, v5

    iput-boolean v11, v10, Lcom/sun/javafx/robot/impl/BaseFXRobot;->isControlDown:Z

    .line 195
    :cond_1
    move-object v10, v3

    sget-object v11, Ljavafx/scene/input/KeyCode;->ALT:Ljavafx/scene/input/KeyCode;

    if-ne v10, v11, :cond_2

    .line 196
    move-object v10, v1

    move v11, v5

    iput-boolean v11, v10, Lcom/sun/javafx/robot/impl/BaseFXRobot;->isAltDown:Z

    .line 198
    :cond_2
    move-object v10, v3

    sget-object v11, Ljavafx/scene/input/KeyCode;->META:Ljavafx/scene/input/KeyCode;

    if-ne v10, v11, :cond_3

    .line 199
    move-object v10, v1

    move v11, v5

    iput-boolean v11, v10, Lcom/sun/javafx/robot/impl/BaseFXRobot;->isMetaDown:Z

    .line 202
    :cond_3
    move v10, v6

    if-eqz v10, :cond_7

    const-string v10, ""

    :goto_2
    move-object v7, v10

    .line 203
    .local v7, "keyText":Ljava/lang/String;
    move v10, v6

    if-eqz v10, :cond_8

    move-object v10, v4

    :goto_3
    move-object v8, v10

    .line 205
    .local v8, "keyChar":Ljava/lang/String;
    sget-object v10, Lcom/sun/javafx/robot/impl/FXRobotHelper;->inputAccessor:Lcom/sun/javafx/robot/impl/FXRobotHelper$FXRobotInputAccessor;

    move-object v11, v2

    move-object v12, v3

    move-object v13, v8

    move-object v14, v7

    move-object v15, v1

    iget-boolean v15, v15, Lcom/sun/javafx/robot/impl/BaseFXRobot;->isShiftDown:Z

    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget-boolean v0, v0, Lcom/sun/javafx/robot/impl/BaseFXRobot;->isControlDown:Z

    move/from16 v16, v0

    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget-boolean v0, v0, Lcom/sun/javafx/robot/impl/BaseFXRobot;->isAltDown:Z

    move/from16 v17, v0

    move-object/from16 v18, v1

    move-object/from16 v0, v18

    iget-boolean v0, v0, Lcom/sun/javafx/robot/impl/BaseFXRobot;->isMetaDown:Z

    move/from16 v18, v0

    .line 206
    invoke-virtual/range {v10 .. v18}, Lcom/sun/javafx/robot/impl/FXRobotHelper$FXRobotInputAccessor;->createKeyEvent(Ljavafx/event/EventType;Ljavafx/scene/input/KeyCode;Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljavafx/scene/input/KeyEvent;

    move-result-object v10

    move-object v9, v10

    .line 209
    .local v9, "e":Ljavafx/scene/input/KeyEvent;
    move-object v10, v1

    move-object v11, v9

    invoke-static {v10, v11}, Lcom/sun/javafx/robot/impl/BaseFXRobot$$Lambda$2;->lambdaFactory$(Lcom/sun/javafx/robot/impl/BaseFXRobot;Ljavafx/scene/input/KeyEvent;)Ljava/lang/Runnable;

    move-result-object v10

    invoke-static {v10}, Lcom/sun/javafx/application/PlatformImpl;->runLater(Ljava/lang/Runnable;)V

    .line 213
    move-object v10, v1

    iget-boolean v10, v10, Lcom/sun/javafx/robot/impl/BaseFXRobot;->autoWait:Z

    if-eqz v10, :cond_4

    .line 214
    move-object v10, v1

    invoke-virtual {v10}, Lcom/sun/javafx/robot/impl/BaseFXRobot;->waitForIdle()V

    .line 216
    :cond_4
    return-void

    .line 187
    .end local v5    # "pressed":Z
    .end local v6    # "typed":Z
    .end local v7    # "keyText":Ljava/lang/String;
    .end local v8    # "keyChar":Ljava/lang/String;
    .end local v9    # "e":Ljavafx/scene/input/KeyEvent;
    :cond_5
    const/4 v10, 0x0

    goto :goto_0

    .line 188
    .restart local v5    # "pressed":Z
    :cond_6
    const/4 v10, 0x0

    goto :goto_1

    .line 202
    .restart local v6    # "typed":Z
    :cond_7
    move-object v10, v3

    invoke-static {v10}, Lcom/sun/javafx/robot/impl/BaseFXRobot;->getKeyText(Ljavafx/scene/input/KeyCode;)Ljava/lang/String;

    move-result-object v10

    goto :goto_2

    .line 203
    .restart local v7    # "keyText":Ljava/lang/String;
    :cond_8
    sget-object v10, Ljavafx/scene/input/KeyEvent;->CHAR_UNDEFINED:Ljava/lang/String;

    goto :goto_3
.end method

.method private doMouseEvent(DDLjavafx/scene/input/MouseButton;ILjavafx/event/EventType;)V
    .locals 29
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DD",
            "Ljavafx/scene/input/MouseButton;",
            "I",
            "Ljavafx/event/EventType",
            "<",
            "Ljavafx/scene/input/MouseEvent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 221
    move-object/from16 v2, p0

    .local v2, "this":Lcom/sun/javafx/robot/impl/BaseFXRobot;
    move-wide/from16 v3, p1

    .local v3, "x":D
    move-wide/from16 v5, p3

    .local v5, "y":D
    move-object/from16 v7, p5

    .local v7, "passedButton":Ljavafx/scene/input/MouseButton;
    move/from16 v8, p6

    .local v8, "clickCount":I
    move-object/from16 v9, p7

    .local v9, "passedType":Ljavafx/event/EventType;, "Ljavafx/event/EventType<Ljavafx/scene/input/MouseEvent;>;"
    move-object v13, v2

    move-object v14, v2

    iget-object v14, v14, Lcom/sun/javafx/robot/impl/BaseFXRobot;->target:Ljavafx/scene/Scene;

    invoke-virtual {v14}, Ljavafx/scene/Scene;->getWindow()Ljavafx/stage/Window;

    move-result-object v14

    invoke-virtual {v14}, Ljavafx/stage/Window;->getX()D

    move-result-wide v14

    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/sun/javafx/robot/impl/BaseFXRobot;->target:Ljavafx/scene/Scene;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljavafx/scene/Scene;->getX()D

    move-result-wide v16

    add-double v14, v14, v16

    move-wide/from16 v16, v3

    add-double v14, v14, v16

    iput-wide v14, v13, Lcom/sun/javafx/robot/impl/BaseFXRobot;->screenMouseX:D

    .line 222
    move-object v13, v2

    move-object v14, v2

    iget-object v14, v14, Lcom/sun/javafx/robot/impl/BaseFXRobot;->target:Ljavafx/scene/Scene;

    invoke-virtual {v14}, Ljavafx/scene/Scene;->getWindow()Ljavafx/stage/Window;

    move-result-object v14

    invoke-virtual {v14}, Ljavafx/stage/Window;->getY()D

    move-result-wide v14

    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/sun/javafx/robot/impl/BaseFXRobot;->target:Ljavafx/scene/Scene;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljavafx/scene/Scene;->getY()D

    move-result-wide v16

    add-double v14, v14, v16

    move-wide/from16 v16, v5

    add-double v14, v14, v16

    iput-wide v14, v13, Lcom/sun/javafx/robot/impl/BaseFXRobot;->screenMouseY:D

    .line 223
    move-object v13, v2

    move-wide v14, v3

    iput-wide v14, v13, Lcom/sun/javafx/robot/impl/BaseFXRobot;->sceneMouseX:D

    .line 224
    move-object v13, v2

    move-wide v14, v5

    iput-wide v14, v13, Lcom/sun/javafx/robot/impl/BaseFXRobot;->sceneMouseY:D

    .line 226
    move-object v13, v7

    move-object v10, v13

    .line 227
    .local v10, "button":Ljavafx/scene/input/MouseButton;
    move-object v13, v9

    move-object v11, v13

    .line 228
    .local v11, "type":Ljavafx/event/EventType;, "Ljavafx/event/EventType<Ljavafx/scene/input/MouseEvent;>;"
    move-object v13, v11

    sget-object v14, Ljavafx/scene/input/MouseEvent;->MOUSE_PRESSED:Ljavafx/event/EventType;

    if-eq v13, v14, :cond_0

    move-object v13, v11

    sget-object v14, Ljavafx/scene/input/MouseEvent;->MOUSE_RELEASED:Ljavafx/event/EventType;

    if-ne v13, v14, :cond_8

    .line 229
    :cond_0
    move-object v13, v11

    sget-object v14, Ljavafx/scene/input/MouseEvent;->MOUSE_PRESSED:Ljavafx/event/EventType;

    if-ne v13, v14, :cond_4

    const/4 v13, 0x1

    :goto_0
    move v12, v13

    .line 230
    .local v12, "pressed":Z
    move-object v13, v10

    sget-object v14, Ljavafx/scene/input/MouseButton;->PRIMARY:Ljavafx/scene/input/MouseButton;

    if-ne v13, v14, :cond_5

    .line 231
    move-object v13, v2

    move v14, v12

    iput-boolean v14, v13, Lcom/sun/javafx/robot/impl/BaseFXRobot;->isButton1Pressed:Z

    .line 237
    :cond_1
    :goto_1
    move v13, v12

    if-eqz v13, :cond_7

    .line 238
    move-object v13, v2

    move-object v14, v10

    iput-object v14, v13, Lcom/sun/javafx/robot/impl/BaseFXRobot;->lastButtonPressed:Ljavafx/scene/input/MouseButton;

    .line 244
    .line 252
    .end local v12    # "pressed":Z
    :cond_2
    :goto_2
    sget-object v13, Lcom/sun/javafx/robot/impl/FXRobotHelper;->inputAccessor:Lcom/sun/javafx/robot/impl/FXRobotHelper$FXRobotInputAccessor;

    move-object v14, v11

    move-object v15, v2

    iget-wide v15, v15, Lcom/sun/javafx/robot/impl/BaseFXRobot;->sceneMouseX:D

    double-to-int v15, v15

    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/sun/javafx/robot/impl/BaseFXRobot;->sceneMouseY:D

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    double-to-int v0, v0

    move/from16 v16, v0

    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-wide v0, v0, Lcom/sun/javafx/robot/impl/BaseFXRobot;->screenMouseX:D

    move-wide/from16 v17, v0

    move-wide/from16 v0, v17

    double-to-int v0, v0

    move/from16 v17, v0

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/sun/javafx/robot/impl/BaseFXRobot;->screenMouseY:D

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    double-to-int v0, v0

    move/from16 v18, v0

    move-object/from16 v19, v10

    move/from16 v20, v8

    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget-boolean v0, v0, Lcom/sun/javafx/robot/impl/BaseFXRobot;->isShiftDown:Z

    move/from16 v21, v0

    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget-boolean v0, v0, Lcom/sun/javafx/robot/impl/BaseFXRobot;->isControlDown:Z

    move/from16 v22, v0

    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-boolean v0, v0, Lcom/sun/javafx/robot/impl/BaseFXRobot;->isAltDown:Z

    move/from16 v23, v0

    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget-boolean v0, v0, Lcom/sun/javafx/robot/impl/BaseFXRobot;->isMetaDown:Z

    move/from16 v24, v0

    move-object/from16 v25, v10

    sget-object v26, Ljavafx/scene/input/MouseButton;->SECONDARY:Ljavafx/scene/input/MouseButton;

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    if-ne v0, v1, :cond_b

    const/16 v25, 0x1

    :goto_3
    move-object/from16 v26, v2

    move-object/from16 v0, v26

    iget-boolean v0, v0, Lcom/sun/javafx/robot/impl/BaseFXRobot;->isButton1Pressed:Z

    move/from16 v26, v0

    move-object/from16 v27, v2

    move-object/from16 v0, v27

    iget-boolean v0, v0, Lcom/sun/javafx/robot/impl/BaseFXRobot;->isButton2Pressed:Z

    move/from16 v27, v0

    move-object/from16 v28, v2

    move-object/from16 v0, v28

    iget-boolean v0, v0, Lcom/sun/javafx/robot/impl/BaseFXRobot;->isButton3Pressed:Z

    move/from16 v28, v0

    .line 253
    invoke-virtual/range {v13 .. v28}, Lcom/sun/javafx/robot/impl/FXRobotHelper$FXRobotInputAccessor;->createMouseEvent(Ljavafx/event/EventType;IIIILjavafx/scene/input/MouseButton;IZZZZZZZZ)Ljavafx/scene/input/MouseEvent;

    move-result-object v13

    move-object v12, v13

    .line 264
    .local v12, "e":Ljavafx/scene/input/MouseEvent;
    move-object v13, v2

    move-object v14, v12

    invoke-static {v13, v14}, Lcom/sun/javafx/robot/impl/BaseFXRobot$$Lambda$3;->lambdaFactory$(Lcom/sun/javafx/robot/impl/BaseFXRobot;Ljavafx/scene/input/MouseEvent;)Ljava/lang/Runnable;

    move-result-object v13

    invoke-static {v13}, Lcom/sun/javafx/application/PlatformImpl;->runLater(Ljava/lang/Runnable;)V

    .line 268
    move-object v13, v2

    iget-boolean v13, v13, Lcom/sun/javafx/robot/impl/BaseFXRobot;->autoWait:Z

    if-eqz v13, :cond_3

    .line 269
    move-object v13, v2

    invoke-virtual {v13}, Lcom/sun/javafx/robot/impl/BaseFXRobot;->waitForIdle()V

    .line 271
    :cond_3
    return-void

    .line 229
    .end local v12    # "e":Ljavafx/scene/input/MouseEvent;
    :cond_4
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 232
    .local v12, "pressed":Z
    :cond_5
    move-object v13, v10

    sget-object v14, Ljavafx/scene/input/MouseButton;->MIDDLE:Ljavafx/scene/input/MouseButton;

    if-ne v13, v14, :cond_6

    .line 233
    move-object v13, v2

    move v14, v12

    iput-boolean v14, v13, Lcom/sun/javafx/robot/impl/BaseFXRobot;->isButton2Pressed:Z

    goto/16 :goto_1

    .line 234
    :cond_6
    move-object v13, v10

    sget-object v14, Ljavafx/scene/input/MouseButton;->SECONDARY:Ljavafx/scene/input/MouseButton;

    if-ne v13, v14, :cond_1

    .line 235
    move-object v13, v2

    move v14, v12

    iput-boolean v14, v13, Lcom/sun/javafx/robot/impl/BaseFXRobot;->isButton3Pressed:Z

    goto/16 :goto_1

    .line 240
    :cond_7
    move-object v13, v2

    iget-boolean v13, v13, Lcom/sun/javafx/robot/impl/BaseFXRobot;->isButton1Pressed:Z

    if-nez v13, :cond_2

    move-object v13, v2

    iget-boolean v13, v13, Lcom/sun/javafx/robot/impl/BaseFXRobot;->isButton2Pressed:Z

    if-nez v13, :cond_2

    move-object v13, v2

    iget-boolean v13, v13, Lcom/sun/javafx/robot/impl/BaseFXRobot;->isButton3Pressed:Z

    if-nez v13, :cond_2

    .line 241
    move-object v13, v2

    sget-object v14, Ljavafx/scene/input/MouseButton;->NONE:Ljavafx/scene/input/MouseButton;

    iput-object v14, v13, Lcom/sun/javafx/robot/impl/BaseFXRobot;->lastButtonPressed:Ljavafx/scene/input/MouseButton;

    goto/16 :goto_2

    .line 244
    .end local v12    # "pressed":Z
    :cond_8
    move-object v13, v11

    sget-object v14, Ljavafx/scene/input/MouseEvent;->MOUSE_MOVED:Ljavafx/event/EventType;

    if-ne v13, v14, :cond_2

    .line 245
    move-object v13, v2

    iget-boolean v13, v13, Lcom/sun/javafx/robot/impl/BaseFXRobot;->isButton1Pressed:Z

    if-nez v13, :cond_9

    move-object v13, v2

    iget-boolean v13, v13, Lcom/sun/javafx/robot/impl/BaseFXRobot;->isButton2Pressed:Z

    if-nez v13, :cond_9

    move-object v13, v2

    iget-boolean v13, v13, Lcom/sun/javafx/robot/impl/BaseFXRobot;->isButton3Pressed:Z

    if-eqz v13, :cond_a

    :cond_9
    const/4 v13, 0x1

    :goto_4
    move v12, v13

    .line 246
    .local v12, "someButtonPressed":Z
    move v13, v12

    if-eqz v13, :cond_2

    .line 247
    sget-object v13, Ljavafx/scene/input/MouseEvent;->MOUSE_DRAGGED:Ljavafx/event/EventType;

    move-object v11, v13

    .line 248
    sget-object v13, Ljavafx/scene/input/MouseButton;->NONE:Ljavafx/scene/input/MouseButton;

    move-object v10, v13

    goto/16 :goto_2

    .line 245
    .end local v12    # "someButtonPressed":Z
    :cond_a
    const/4 v13, 0x0

    goto :goto_4

    .line 252
    :cond_b
    const/16 v25, 0x0

    goto/16 :goto_3
.end method

.method private doScrollEvent(DDDLjavafx/event/EventType;)V
    .locals 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DDD",
            "Ljavafx/event/EventType",
            "<",
            "Ljavafx/scene/input/ScrollEvent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 276
    move-object/from16 v2, p0

    .local v2, "this":Lcom/sun/javafx/robot/impl/BaseFXRobot;
    move-wide/from16 v3, p1

    .local v3, "x":D
    move-wide/from16 v5, p3

    .local v5, "y":D
    move-wide/from16 v7, p5

    .local v7, "rotation":D
    move-object/from16 v9, p7

    .local v9, "type":Ljavafx/event/EventType;, "Ljavafx/event/EventType<Ljavafx/scene/input/ScrollEvent;>;"
    move-object v11, v2

    move-object v12, v2

    iget-object v12, v12, Lcom/sun/javafx/robot/impl/BaseFXRobot;->target:Ljavafx/scene/Scene;

    invoke-virtual {v12}, Ljavafx/scene/Scene;->getWindow()Ljavafx/stage/Window;

    move-result-object v12

    invoke-virtual {v12}, Ljavafx/stage/Window;->getX()D

    move-result-wide v12

    move-object v14, v2

    iget-object v14, v14, Lcom/sun/javafx/robot/impl/BaseFXRobot;->target:Ljavafx/scene/Scene;

    invoke-virtual {v14}, Ljavafx/scene/Scene;->getX()D

    move-result-wide v14

    add-double/2addr v12, v14

    move-wide v14, v3

    add-double/2addr v12, v14

    iput-wide v12, v11, Lcom/sun/javafx/robot/impl/BaseFXRobot;->screenMouseX:D

    .line 277
    move-object v11, v2

    move-object v12, v2

    iget-object v12, v12, Lcom/sun/javafx/robot/impl/BaseFXRobot;->target:Ljavafx/scene/Scene;

    invoke-virtual {v12}, Ljavafx/scene/Scene;->getWindow()Ljavafx/stage/Window;

    move-result-object v12

    invoke-virtual {v12}, Ljavafx/stage/Window;->getY()D

    move-result-wide v12

    move-object v14, v2

    iget-object v14, v14, Lcom/sun/javafx/robot/impl/BaseFXRobot;->target:Ljavafx/scene/Scene;

    invoke-virtual {v14}, Ljavafx/scene/Scene;->getY()D

    move-result-wide v14

    add-double/2addr v12, v14

    move-wide v14, v5

    add-double/2addr v12, v14

    iput-wide v12, v11, Lcom/sun/javafx/robot/impl/BaseFXRobot;->screenMouseY:D

    .line 278
    move-object v11, v2

    move-wide v12, v3

    iput-wide v12, v11, Lcom/sun/javafx/robot/impl/BaseFXRobot;->sceneMouseX:D

    .line 279
    move-object v11, v2

    move-wide v12, v5

    iput-wide v12, v11, Lcom/sun/javafx/robot/impl/BaseFXRobot;->sceneMouseY:D

    .line 281
    sget-object v11, Lcom/sun/javafx/robot/impl/FXRobotHelper;->inputAccessor:Lcom/sun/javafx/robot/impl/FXRobotHelper$FXRobotInputAccessor;

    move-object v12, v9

    const/4 v13, 0x0

    move-wide v14, v7

    double-to-int v14, v14

    const/16 v15, 0x28

    mul-int/lit8 v14, v14, 0x28

    sget-object v15, Ljavafx/scene/input/ScrollEvent$HorizontalTextScrollUnits;->NONE:Ljavafx/scene/input/ScrollEvent$HorizontalTextScrollUnits;

    const/16 v16, 0x0

    sget-object v17, Ljavafx/scene/input/ScrollEvent$VerticalTextScrollUnits;->NONE:Ljavafx/scene/input/ScrollEvent$VerticalTextScrollUnits;

    const/16 v18, 0x0

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-wide v0, v0, Lcom/sun/javafx/robot/impl/BaseFXRobot;->sceneMouseX:D

    move-wide/from16 v19, v0

    move-wide/from16 v0, v19

    double-to-int v0, v0

    move/from16 v19, v0

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/sun/javafx/robot/impl/BaseFXRobot;->sceneMouseY:D

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    double-to-int v0, v0

    move/from16 v20, v0

    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget-wide v0, v0, Lcom/sun/javafx/robot/impl/BaseFXRobot;->screenMouseX:D

    move-wide/from16 v21, v0

    move-wide/from16 v0, v21

    double-to-int v0, v0

    move/from16 v21, v0

    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget-wide v0, v0, Lcom/sun/javafx/robot/impl/BaseFXRobot;->screenMouseY:D

    move-wide/from16 v22, v0

    move-wide/from16 v0, v22

    double-to-int v0, v0

    move/from16 v22, v0

    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-boolean v0, v0, Lcom/sun/javafx/robot/impl/BaseFXRobot;->isShiftDown:Z

    move/from16 v23, v0

    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget-boolean v0, v0, Lcom/sun/javafx/robot/impl/BaseFXRobot;->isControlDown:Z

    move/from16 v24, v0

    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget-boolean v0, v0, Lcom/sun/javafx/robot/impl/BaseFXRobot;->isAltDown:Z

    move/from16 v25, v0

    move-object/from16 v26, v2

    move-object/from16 v0, v26

    iget-boolean v0, v0, Lcom/sun/javafx/robot/impl/BaseFXRobot;->isMetaDown:Z

    move/from16 v26, v0

    .line 282
    invoke-virtual/range {v11 .. v26}, Lcom/sun/javafx/robot/impl/FXRobotHelper$FXRobotInputAccessor;->createScrollEvent(Ljavafx/event/EventType;IILjavafx/scene/input/ScrollEvent$HorizontalTextScrollUnits;ILjavafx/scene/input/ScrollEvent$VerticalTextScrollUnits;IIIIIZZZZ)Ljavafx/scene/input/ScrollEvent;

    move-result-object v11

    move-object v10, v11

    .line 291
    .local v10, "e":Ljavafx/scene/input/ScrollEvent;
    move-object v11, v2

    move-object v12, v10

    invoke-static {v11, v12}, Lcom/sun/javafx/robot/impl/BaseFXRobot$$Lambda$4;->lambdaFactory$(Lcom/sun/javafx/robot/impl/BaseFXRobot;Ljavafx/scene/input/ScrollEvent;)Ljava/lang/Runnable;

    move-result-object v11

    invoke-static {v11}, Lcom/sun/javafx/application/PlatformImpl;->runLater(Ljava/lang/Runnable;)V

    .line 295
    move-object v11, v2

    iget-boolean v11, v11, Lcom/sun/javafx/robot/impl/BaseFXRobot;->autoWait:Z

    if-eqz v11, :cond_0

    .line 296
    move-object v11, v2

    invoke-virtual {v11}, Lcom/sun/javafx/robot/impl/BaseFXRobot;->waitForIdle()V

    .line 298
    :cond_0
    return-void
.end method

.method private static getKeyText(Ljavafx/scene/input/KeyCode;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 76
    move-object v0, p0

    .local v0, "keyCode":Ljavafx/scene/input/KeyCode;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/input/KeyCode;->getName()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "keyCode":Ljavafx/scene/input/KeyCode;
    return-object v0
.end method

.method private synthetic lambda$doKeyEvent$251(Ljavafx/scene/input/KeyEvent;)V
    .locals 5

    .prologue
    .line 210
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/robot/impl/BaseFXRobot;
    move-object v1, p1

    .local v1, "e":Ljavafx/scene/input/KeyEvent;
    const-string v2, "doKeyEvent: injecting: {e}"

    invoke-static {v2}, Lcom/sun/javafx/robot/impl/BaseFXRobot;->out(Ljava/lang/String;)V

    .line 211
    sget-object v2, Lcom/sun/javafx/robot/impl/FXRobotHelper;->sceneAccessor:Lcom/sun/javafx/robot/impl/FXRobotHelper$FXRobotSceneAccessor;

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/robot/impl/BaseFXRobot;->target:Ljavafx/scene/Scene;

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Lcom/sun/javafx/robot/impl/FXRobotHelper$FXRobotSceneAccessor;->processKeyEvent(Ljavafx/scene/Scene;Ljavafx/scene/input/KeyEvent;)V

    .line 212
    return-void
.end method

.method private synthetic lambda$doMouseEvent$252(Ljavafx/scene/input/MouseEvent;)V
    .locals 6

    .prologue
    .line 265
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/robot/impl/BaseFXRobot;
    move-object v1, p1

    .local v1, "e":Ljavafx/scene/input/MouseEvent;
    new-instance v2, Ljava/lang/StringBuilder;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doMouseEvent: injecting: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sun/javafx/robot/impl/BaseFXRobot;->out(Ljava/lang/String;)V

    .line 266
    sget-object v2, Lcom/sun/javafx/robot/impl/FXRobotHelper;->sceneAccessor:Lcom/sun/javafx/robot/impl/FXRobotHelper$FXRobotSceneAccessor;

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/robot/impl/BaseFXRobot;->target:Ljavafx/scene/Scene;

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Lcom/sun/javafx/robot/impl/FXRobotHelper$FXRobotSceneAccessor;->processMouseEvent(Ljavafx/scene/Scene;Ljavafx/scene/input/MouseEvent;)V

    .line 267
    return-void
.end method

.method private synthetic lambda$doScrollEvent$253(Ljavafx/scene/input/ScrollEvent;)V
    .locals 6

    .prologue
    .line 292
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/robot/impl/BaseFXRobot;
    move-object v1, p1

    .local v1, "e":Ljavafx/scene/input/ScrollEvent;
    new-instance v2, Ljava/lang/StringBuilder;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doScrollEvent: injecting: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sun/javafx/robot/impl/BaseFXRobot;->out(Ljava/lang/String;)V

    .line 293
    sget-object v2, Lcom/sun/javafx/robot/impl/FXRobotHelper;->sceneAccessor:Lcom/sun/javafx/robot/impl/FXRobotHelper$FXRobotSceneAccessor;

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/robot/impl/BaseFXRobot;->target:Ljavafx/scene/Scene;

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Lcom/sun/javafx/robot/impl/FXRobotHelper$FXRobotSceneAccessor;->processScrollEvent(Ljavafx/scene/Scene;Ljavafx/scene/input/ScrollEvent;)V

    .line 294
    return-void
.end method

.method private static synthetic lambda$waitForIdle$250(Ljava/util/concurrent/CountDownLatch;)V
    .locals 2

    .prologue
    .line 125
    move-object v0, p0

    .local v0, "latch":Ljava/util/concurrent/CountDownLatch;
    move-object v1, v0

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method private static out(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 69
    move-object v0, p0

    .local v0, "s":Ljava/lang/String;
    sget-boolean v1, Lcom/sun/javafx/robot/impl/BaseFXRobot;->debugOut:Z

    if-eqz v1, :cond_0

    .line 70
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[FXRobot] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 72
    :cond_0
    return-void
.end method


# virtual methods
.method public getPixelColor(II)I
    .locals 9

    .prologue
    .line 167
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/robot/impl/BaseFXRobot;
    move v1, p1

    .local v1, "x":I
    move v2, p2

    .local v2, "y":I
    move-object v4, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x64

    const/16 v8, 0x64

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/sun/javafx/robot/impl/BaseFXRobot;->getSceneCapture(IIII)Lcom/sun/javafx/robot/FXRobotImage;

    move-result-object v4

    move-object v3, v4

    .line 168
    .local v3, "image":Lcom/sun/javafx/robot/FXRobotImage;
    move-object v4, v3

    if-eqz v4, :cond_0

    .line 169
    move-object v4, v3

    move v5, v1

    move v6, v2

    invoke-virtual {v4, v5, v6}, Lcom/sun/javafx/robot/FXRobotImage;->getArgb(II)I

    move-result v4

    move v0, v4

    .line 171
    .end local v0    # "this":Lcom/sun/javafx/robot/impl/BaseFXRobot;
    :goto_0
    return v0

    .restart local v0    # "this":Lcom/sun/javafx/robot/impl/BaseFXRobot;
    :cond_0
    const/4 v4, 0x0

    move v0, v4

    goto :goto_0
.end method

.method public getSceneCapture(IIII)Lcom/sun/javafx/robot/FXRobotImage;
    .locals 9

    .prologue
    .line 177
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/robot/impl/BaseFXRobot;
    move v1, p1

    .local v1, "x":I
    move v2, p2

    .local v2, "y":I
    move v3, p3

    .local v3, "w":I
    move v4, p4

    .local v4, "h":I
    sget-object v6, Lcom/sun/javafx/robot/impl/FXRobotHelper;->sceneAccessor:Lcom/sun/javafx/robot/impl/FXRobotHelper$FXRobotSceneAccessor;

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/robot/impl/BaseFXRobot;->target:Ljavafx/scene/Scene;

    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/robot/impl/BaseFXRobot;->lastImage:Ljava/lang/Object;

    invoke-virtual {v6, v7, v8}, Lcom/sun/javafx/robot/impl/FXRobotHelper$FXRobotSceneAccessor;->renderToImage(Ljavafx/scene/Scene;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v5, v6

    .line 178
    .local v5, "ret":Ljava/lang/Object;
    move-object v6, v5

    if-eqz v6, :cond_0

    .line 179
    move-object v6, v0

    move-object v7, v5

    iput-object v7, v6, Lcom/sun/javafx/robot/impl/BaseFXRobot;->lastImage:Ljava/lang/Object;

    .line 180
    move-object v6, v0

    sget-object v7, Lcom/sun/javafx/robot/impl/FXRobotHelper;->imageConvertor:Lcom/sun/javafx/robot/impl/FXRobotHelper$FXRobotImageConvertor;

    move-object v8, v5

    .line 181
    invoke-virtual {v7, v8}, Lcom/sun/javafx/robot/impl/FXRobotHelper$FXRobotImageConvertor;->convertToFXRobotImage(Ljava/lang/Object;)Lcom/sun/javafx/robot/FXRobotImage;

    move-result-object v7

    iput-object v7, v6, Lcom/sun/javafx/robot/impl/BaseFXRobot;->lastConvertedImage:Lcom/sun/javafx/robot/FXRobotImage;

    .line 183
    :cond_0
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/robot/impl/BaseFXRobot;->lastConvertedImage:Lcom/sun/javafx/robot/FXRobotImage;

    move-object v0, v6

    .end local v0    # "this":Lcom/sun/javafx/robot/impl/BaseFXRobot;
    return-object v0
.end method

.method public keyPress(Ljavafx/scene/input/KeyCode;)V
    .locals 6

    .prologue
    .line 135
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/robot/impl/BaseFXRobot;
    move-object v1, p1

    .local v1, "keyCode":Ljavafx/scene/input/KeyCode;
    move-object v2, v0

    sget-object v3, Ljavafx/scene/input/KeyEvent;->KEY_PRESSED:Ljavafx/event/EventType;

    move-object v4, v1

    const-string v5, ""

    invoke-direct {v2, v3, v4, v5}, Lcom/sun/javafx/robot/impl/BaseFXRobot;->doKeyEvent(Ljavafx/event/EventType;Ljavafx/scene/input/KeyCode;Ljava/lang/String;)V

    .line 136
    return-void
.end method

.method public keyRelease(Ljavafx/scene/input/KeyCode;)V
    .locals 6

    .prologue
    .line 139
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/robot/impl/BaseFXRobot;
    move-object v1, p1

    .local v1, "keyCode":Ljavafx/scene/input/KeyCode;
    move-object v2, v0

    sget-object v3, Ljavafx/scene/input/KeyEvent;->KEY_RELEASED:Ljavafx/event/EventType;

    move-object v4, v1

    const-string v5, ""

    invoke-direct {v2, v3, v4, v5}, Lcom/sun/javafx/robot/impl/BaseFXRobot;->doKeyEvent(Ljavafx/event/EventType;Ljavafx/scene/input/KeyCode;Ljava/lang/String;)V

    .line 140
    return-void
.end method

.method public keyType(Ljavafx/scene/input/KeyCode;Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 143
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/robot/impl/BaseFXRobot;
    move-object v1, p1

    .local v1, "keyCode":Ljavafx/scene/input/KeyCode;
    move-object v2, p2

    .local v2, "keyChar":Ljava/lang/String;
    move-object v3, v0

    sget-object v4, Ljavafx/scene/input/KeyEvent;->KEY_TYPED:Ljavafx/event/EventType;

    move-object v5, v1

    move-object v6, v2

    invoke-direct {v3, v4, v5, v6}, Lcom/sun/javafx/robot/impl/BaseFXRobot;->doKeyEvent(Ljavafx/event/EventType;Ljavafx/scene/input/KeyCode;Ljava/lang/String;)V

    .line 144
    return-void
.end method

.method public mouseClick(Ljavafx/scene/input/MouseButton;I)V
    .locals 11

    .prologue
    .line 156
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/robot/impl/BaseFXRobot;
    move-object v1, p1

    .local v1, "button":Ljavafx/scene/input/MouseButton;
    move v2, p2

    .local v2, "clickCount":I
    move-object v3, v0

    move-object v4, v0

    iget-wide v4, v4, Lcom/sun/javafx/robot/impl/BaseFXRobot;->sceneMouseX:D

    move-object v6, v0

    iget-wide v6, v6, Lcom/sun/javafx/robot/impl/BaseFXRobot;->sceneMouseY:D

    move-object v8, v1

    move v9, v2

    sget-object v10, Ljavafx/scene/input/MouseEvent;->MOUSE_CLICKED:Ljavafx/event/EventType;

    invoke-direct/range {v3 .. v10}, Lcom/sun/javafx/robot/impl/BaseFXRobot;->doMouseEvent(DDLjavafx/scene/input/MouseButton;ILjavafx/event/EventType;)V

    .line 158
    return-void
.end method

.method public mouseDrag(Ljavafx/scene/input/MouseButton;)V
    .locals 11

    .prologue
    .line 160
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/robot/impl/BaseFXRobot;
    move-object v2, p1

    .local v2, "button":Ljavafx/scene/input/MouseButton;
    move-object v3, v1

    move-object v4, v1

    iget-wide v4, v4, Lcom/sun/javafx/robot/impl/BaseFXRobot;->sceneMouseX:D

    move-object v6, v1

    iget-wide v6, v6, Lcom/sun/javafx/robot/impl/BaseFXRobot;->sceneMouseY:D

    move-object v8, v2

    const/4 v9, 0x0

    sget-object v10, Ljavafx/scene/input/MouseEvent;->MOUSE_DRAGGED:Ljavafx/event/EventType;

    invoke-direct/range {v3 .. v10}, Lcom/sun/javafx/robot/impl/BaseFXRobot;->doMouseEvent(DDLjavafx/scene/input/MouseButton;ILjavafx/event/EventType;)V

    .line 161
    return-void
.end method

.method public mouseMove(II)V
    .locals 11

    .prologue
    .line 147
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/robot/impl/BaseFXRobot;
    move v1, p1

    .local v1, "x":I
    move v2, p2

    .local v2, "y":I
    move-object v3, v0

    move v4, v1

    int-to-double v4, v4

    move v6, v2

    int-to-double v6, v6

    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/robot/impl/BaseFXRobot;->lastButtonPressed:Ljavafx/scene/input/MouseButton;

    const/4 v9, 0x0

    sget-object v10, Ljavafx/scene/input/MouseEvent;->MOUSE_MOVED:Ljavafx/event/EventType;

    invoke-direct/range {v3 .. v10}, Lcom/sun/javafx/robot/impl/BaseFXRobot;->doMouseEvent(DDLjavafx/scene/input/MouseButton;ILjavafx/event/EventType;)V

    .line 148
    return-void
.end method

.method public mousePress(Ljavafx/scene/input/MouseButton;I)V
    .locals 11

    .prologue
    .line 150
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/robot/impl/BaseFXRobot;
    move-object v1, p1

    .local v1, "button":Ljavafx/scene/input/MouseButton;
    move v2, p2

    .local v2, "clickCount":I
    move-object v3, v0

    move-object v4, v0

    iget-wide v4, v4, Lcom/sun/javafx/robot/impl/BaseFXRobot;->sceneMouseX:D

    move-object v6, v0

    iget-wide v6, v6, Lcom/sun/javafx/robot/impl/BaseFXRobot;->sceneMouseY:D

    move-object v8, v1

    move v9, v2

    sget-object v10, Ljavafx/scene/input/MouseEvent;->MOUSE_PRESSED:Ljavafx/event/EventType;

    invoke-direct/range {v3 .. v10}, Lcom/sun/javafx/robot/impl/BaseFXRobot;->doMouseEvent(DDLjavafx/scene/input/MouseButton;ILjavafx/event/EventType;)V

    .line 151
    return-void
.end method

.method public mouseRelease(Ljavafx/scene/input/MouseButton;I)V
    .locals 11

    .prologue
    .line 153
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/robot/impl/BaseFXRobot;
    move-object v1, p1

    .local v1, "button":Ljavafx/scene/input/MouseButton;
    move v2, p2

    .local v2, "clickCount":I
    move-object v3, v0

    move-object v4, v0

    iget-wide v4, v4, Lcom/sun/javafx/robot/impl/BaseFXRobot;->sceneMouseX:D

    move-object v6, v0

    iget-wide v6, v6, Lcom/sun/javafx/robot/impl/BaseFXRobot;->sceneMouseY:D

    move-object v8, v1

    move v9, v2

    sget-object v10, Ljavafx/scene/input/MouseEvent;->MOUSE_RELEASED:Ljavafx/event/EventType;

    invoke-direct/range {v3 .. v10}, Lcom/sun/javafx/robot/impl/BaseFXRobot;->doMouseEvent(DDLjavafx/scene/input/MouseButton;ILjavafx/event/EventType;)V

    .line 154
    return-void
.end method

.method public mouseWheel(I)V
    .locals 11

    .prologue
    .line 163
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/robot/impl/BaseFXRobot;
    move v2, p1

    .local v2, "wheelAmt":I
    move-object v3, v1

    move-object v4, v1

    iget-wide v4, v4, Lcom/sun/javafx/robot/impl/BaseFXRobot;->sceneMouseX:D

    move-object v6, v1

    iget-wide v6, v6, Lcom/sun/javafx/robot/impl/BaseFXRobot;->sceneMouseY:D

    move v8, v2

    int-to-double v8, v8

    sget-object v10, Ljavafx/scene/input/ScrollEvent;->SCROLL:Ljavafx/event/EventType;

    invoke-direct/range {v3 .. v10}, Lcom/sun/javafx/robot/impl/BaseFXRobot;->doScrollEvent(DDDLjavafx/event/EventType;)V

    .line 164
    return-void
.end method

.method public waitForIdle()V
    .locals 7

    .prologue
    .line 124
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/robot/impl/BaseFXRobot;
    new-instance v3, Ljava/util/concurrent/CountDownLatch;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    move-object v1, v3

    .line 125
    .local v1, "latch":Ljava/util/concurrent/CountDownLatch;
    move-object v3, v1

    invoke-static {v3}, Lcom/sun/javafx/robot/impl/BaseFXRobot$$Lambda$1;->lambdaFactory$(Ljava/util/concurrent/CountDownLatch;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-static {v3}, Lcom/sun/javafx/application/PlatformImpl;->runLater(Ljava/lang/Runnable;)V

    .line 128
    :goto_0
    move-object v3, v1

    :try_start_0
    invoke-virtual {v3}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    .line 132
    return-void

    .line 130
    :catch_0
    move-exception v3

    move-object v2, v3

    goto :goto_0
.end method
