.class Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$MouseEventNotification;
.super Ljava/lang/Object;
.source "GlassViewEventHandler.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MouseEventNotification"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field button:I

.field isPopupTrigger:Z

.field isSynthesized:Z

.field modifiers:I

.field final synthetic this$0:Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;

.field time:J

.field type:I

.field view:Lcom/sun/glass/ui/View;

.field x:I

.field xAbs:I

.field y:I

.field yAbs:I


# direct methods
.method private constructor <init>(Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;)V
    .locals 4

    .prologue
    .line 275
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$MouseEventNotification;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$MouseEventNotification;->this$0:Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$1;)V
    .locals 5

    .prologue
    .line 275
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$MouseEventNotification;
    move-object v1, p1

    .local v1, "x0":Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;
    move-object v2, p2

    .local v2, "x1":Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$1;
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$MouseEventNotification;-><init>(Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 275
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$MouseEventNotification;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$MouseEventNotification;->run()Ljava/lang/Void;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$MouseEventNotification;
    return-object v0
.end method

.method public run()Ljava/lang/Void;
    .locals 37

    .prologue
    .line 287
    move-object/from16 v2, p0

    .local v2, "this":Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$MouseEventNotification;
    sget-boolean v16, Lcom/sun/javafx/logging/PulseLogger;->PULSE_LOGGING_ENABLED:Z

    if-eqz v16, :cond_0

    .line 288
    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget v0, v0, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$MouseEventNotification;->type:I

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;->access$500(I)Ljavafx/event/EventType;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljavafx/event/EventType;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/sun/javafx/logging/PulseLogger;->newInput(Ljava/lang/String;)V

    .line 292
    :cond_0
    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget v0, v0, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$MouseEventNotification;->button:I

    move/from16 v16, v0

    packed-switch v16, :pswitch_data_0

    .line 303
    const/16 v16, 0x0

    move/from16 v3, v16

    .line 307
    .local v3, "buttonMask":I
    :goto_0
    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget v0, v0, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$MouseEventNotification;->type:I

    move/from16 v16, v0

    packed-switch v16, :pswitch_data_1

    .line 331
    :pswitch_0
    sget-boolean v16, Lcom/sun/javafx/tk/quantum/QuantumToolkit;->verbose:Z

    if-eqz v16, :cond_1

    .line 332
    sget-object v16, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v17, Ljava/lang/StringBuilder;

    move-object/from16 v36, v17

    move-object/from16 v17, v36

    move-object/from16 v18, v36

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "handleMouseEvent: unhandled type: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget v0, v0, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$MouseEventNotification;->type:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 336
    :cond_1
    :goto_1
    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$MouseEventNotification;->this$0:Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;->access$200(Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;)Lcom/sun/javafx/tk/quantum/ViewScene;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/sun/javafx/tk/quantum/ViewScene;->getWindowStage()Lcom/sun/javafx/tk/quantum/WindowStage;

    move-result-object v16

    move-object/from16 v4, v16

    .line 338
    .local v4, "stage":Lcom/sun/javafx/tk/quantum/WindowStage;
    move-object/from16 v16, v4

    if-eqz v16, :cond_2

    .line 339
    move-object/from16 v16, v4

    const/16 v17, 0x1

    :try_start_0
    invoke-virtual/range {v16 .. v17}, Lcom/sun/javafx/tk/quantum/WindowStage;->setInEventHandler(Z)V

    .line 341
    :cond_2
    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$MouseEventNotification;->this$0:Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;->access$200(Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;)Lcom/sun/javafx/tk/quantum/ViewScene;

    move-result-object v16

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/sun/javafx/tk/quantum/ViewScene;->sceneListener:Lcom/sun/javafx/tk/TKSceneListener;

    move-object/from16 v16, v0

    if-eqz v16, :cond_3

    .line 342
    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget v0, v0, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$MouseEventNotification;->modifiers:I

    move/from16 v16, v0

    const/16 v17, 0x1

    and-int/lit8 v16, v16, 0x1

    if-eqz v16, :cond_7

    const/16 v16, 0x1

    :goto_2
    move/from16 v5, v16

    .line 343
    .local v5, "shiftDown":Z
    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget v0, v0, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$MouseEventNotification;->modifiers:I

    move/from16 v16, v0

    const/16 v17, 0x4

    and-int/lit8 v16, v16, 0x4

    if-eqz v16, :cond_8

    const/16 v16, 0x1

    :goto_3
    move/from16 v6, v16

    .line 344
    .local v6, "controlDown":Z
    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget v0, v0, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$MouseEventNotification;->modifiers:I

    move/from16 v16, v0

    const/16 v17, 0x8

    and-int/lit8 v16, v16, 0x8

    if-eqz v16, :cond_9

    const/16 v16, 0x1

    :goto_4
    move/from16 v7, v16

    .line 345
    .local v7, "altDown":Z
    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget v0, v0, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$MouseEventNotification;->modifiers:I

    move/from16 v16, v0

    const/16 v17, 0x10

    and-int/lit8 v16, v16, 0x10

    if-eqz v16, :cond_a

    const/16 v16, 0x1

    :goto_5
    move/from16 v8, v16

    .line 346
    .local v8, "metaDown":Z
    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget v0, v0, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$MouseEventNotification;->modifiers:I

    move/from16 v16, v0

    const/16 v17, 0x20

    and-int/lit8 v16, v16, 0x20

    if-eqz v16, :cond_b

    const/16 v16, 0x1

    :goto_6
    move/from16 v9, v16

    .line 347
    .local v9, "primaryButtonDown":Z
    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget v0, v0, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$MouseEventNotification;->modifiers:I

    move/from16 v16, v0

    const/16 v17, 0x80

    move/from16 v0, v16

    and-int/lit16 v0, v0, 0x80

    move/from16 v16, v0

    if-eqz v16, :cond_c

    const/16 v16, 0x1

    :goto_7
    move/from16 v10, v16

    .line 348
    .local v10, "middleButtonDown":Z
    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget v0, v0, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$MouseEventNotification;->modifiers:I

    move/from16 v16, v0

    const/16 v17, 0x40

    and-int/lit8 v16, v16, 0x40

    if-eqz v16, :cond_d

    const/16 v16, 0x1

    :goto_8
    move/from16 v11, v16

    .line 349
    .local v11, "secondaryButtonDown":Z
    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$MouseEventNotification;->view:Lcom/sun/glass/ui/View;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/sun/glass/ui/View;->getWindow()Lcom/sun/glass/ui/Window;

    move-result-object v16

    move-object/from16 v12, v16

    .line 350
    .local v12, "w":Lcom/sun/glass/ui/Window;
    move-object/from16 v16, v12

    if-nez v16, :cond_e

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    :goto_9
    move-wide/from16 v13, v16

    .line 352
    .local v13, "pScale":D
    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$MouseEventNotification;->this$0:Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;->access$200(Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;)Lcom/sun/javafx/tk/quantum/ViewScene;

    move-result-object v16

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/sun/javafx/tk/quantum/ViewScene;->sceneListener:Lcom/sun/javafx/tk/TKSceneListener;

    move-object/from16 v16, v0

    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget v0, v0, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$MouseEventNotification;->type:I

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;->access$500(I)Ljavafx/event/EventType;

    move-result-object v17

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget v0, v0, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$MouseEventNotification;->x:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-double v0, v0

    move-wide/from16 v18, v0

    move-wide/from16 v20, v13

    div-double v18, v18, v20

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget v0, v0, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$MouseEventNotification;->y:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-double v0, v0

    move-wide/from16 v20, v0

    move-wide/from16 v22, v13

    div-double v20, v20, v22

    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget v0, v0, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$MouseEventNotification;->xAbs:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-double v0, v0

    move-wide/from16 v22, v0

    move-wide/from16 v24, v13

    div-double v22, v22, v24

    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget v0, v0, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$MouseEventNotification;->yAbs:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-double v0, v0

    move-wide/from16 v24, v0

    move-wide/from16 v26, v13

    div-double v24, v24, v26

    move-object/from16 v26, v2

    move-object/from16 v0, v26

    iget v0, v0, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$MouseEventNotification;->button:I

    move/from16 v26, v0

    .line 354
    invoke-static/range {v26 .. v26}, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;->access$700(I)Ljavafx/scene/input/MouseButton;

    move-result-object v26

    move-object/from16 v27, v2

    move-object/from16 v0, v27

    iget-boolean v0, v0, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$MouseEventNotification;->isPopupTrigger:Z

    move/from16 v27, v0

    move-object/from16 v28, v2

    move-object/from16 v0, v28

    iget-boolean v0, v0, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$MouseEventNotification;->isSynthesized:Z

    move/from16 v28, v0

    move/from16 v29, v5

    move/from16 v30, v6

    move/from16 v31, v7

    move/from16 v32, v8

    move/from16 v33, v9

    move/from16 v34, v10

    move/from16 v35, v11

    .line 352
    invoke-interface/range {v16 .. v35}, Lcom/sun/javafx/tk/TKSceneListener;->mouseEvent(Ljavafx/event/EventType;DDDDLjavafx/scene/input/MouseButton;ZZZZZZZZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 359
    .end local v5    # "shiftDown":Z
    .end local v6    # "controlDown":Z
    .end local v7    # "altDown":Z
    .end local v8    # "metaDown":Z
    .end local v9    # "primaryButtonDown":Z
    .end local v10    # "middleButtonDown":Z
    .end local v11    # "secondaryButtonDown":Z
    .end local v12    # "w":Lcom/sun/glass/ui/Window;
    .end local v13    # "pScale":D
    :cond_3
    move-object/from16 v16, v4

    if-eqz v16, :cond_4

    .line 360
    move-object/from16 v16, v4

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Lcom/sun/javafx/tk/quantum/WindowStage;->setInEventHandler(Z)V

    .line 362
    :cond_4
    sget-boolean v16, Lcom/sun/javafx/logging/PulseLogger;->PULSE_LOGGING_ENABLED:Z

    if-eqz v16, :cond_5

    .line 363
    const/16 v16, 0x0

    invoke-static/range {v16 .. v16}, Lcom/sun/javafx/logging/PulseLogger;->newInput(Ljava/lang/String;)V

    .line 366
    :cond_5
    const/16 v16, 0x0

    move-object/from16 v2, v16

    .end local v2    # "this":Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$MouseEventNotification;
    .end local v4    # "stage":Lcom/sun/javafx/tk/quantum/WindowStage;
    :goto_a
    return-object v2

    .line 294
    .end local v3    # "buttonMask":I
    .restart local v2    # "this":Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$MouseEventNotification;
    :pswitch_1
    const/16 v16, 0x20

    move/from16 v3, v16

    .line 295
    .restart local v3    # "buttonMask":I
    goto/16 :goto_0

    .line 297
    .end local v3    # "buttonMask":I
    :pswitch_2
    const/16 v16, 0x80

    move/from16 v3, v16

    .line 298
    .restart local v3    # "buttonMask":I
    goto/16 :goto_0

    .line 300
    .end local v3    # "buttonMask":I
    :pswitch_3
    const/16 v16, 0x40

    move/from16 v3, v16

    .line 301
    .restart local v3    # "buttonMask":I
    goto/16 :goto_0

    .line 309
    :pswitch_4
    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget v0, v0, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$MouseEventNotification;->button:I

    move/from16 v16, v0

    const/16 v17, 0xd3

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_1

    .line 311
    const/16 v16, 0x0

    move-object/from16 v2, v16

    goto :goto_a

    .line 315
    :pswitch_5
    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$MouseEventNotification;->this$0:Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;->access$600(Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;)I

    move-result v16

    move/from16 v17, v3

    and-int v16, v16, v17

    if-nez v16, :cond_6

    .line 317
    const/16 v16, 0x0

    move-object/from16 v2, v16

    goto :goto_a

    .line 319
    :cond_6
    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$MouseEventNotification;->this$0:Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;

    move-object/from16 v16, v0

    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$MouseEventNotification;->this$0:Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;->access$600(Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;)I

    move-result v17

    move/from16 v18, v3

    const/16 v19, -0x1

    xor-int/lit8 v18, v18, -0x1

    and-int v17, v17, v18

    invoke-static/range {v16 .. v17}, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;->access$602(Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;I)I

    move-result v16

    .line 320
    goto/16 :goto_1

    .line 322
    :pswitch_6
    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$MouseEventNotification;->this$0:Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;

    move-object/from16 v16, v0

    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$MouseEventNotification;->this$0:Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;->access$600(Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;)I

    move-result v17

    move/from16 v18, v3

    or-int v17, v17, v18

    invoke-static/range {v16 .. v17}, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;->access$602(Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;I)I

    move-result v16

    .line 323
    goto/16 :goto_1

    .line 326
    :pswitch_7
    goto/16 :goto_1

    .line 329
    :pswitch_8
    const/16 v16, 0x0

    move-object/from16 v2, v16

    goto/16 :goto_a

    .line 342
    .restart local v4    # "stage":Lcom/sun/javafx/tk/quantum/WindowStage;
    :cond_7
    const/16 v16, 0x0

    goto/16 :goto_2

    .line 343
    .restart local v5    # "shiftDown":Z
    :cond_8
    const/16 v16, 0x0

    goto/16 :goto_3

    .line 344
    .restart local v6    # "controlDown":Z
    :cond_9
    const/16 v16, 0x0

    goto/16 :goto_4

    .line 345
    .restart local v7    # "altDown":Z
    :cond_a
    const/16 v16, 0x0

    goto/16 :goto_5

    .line 346
    .restart local v8    # "metaDown":Z
    :cond_b
    const/16 v16, 0x0

    goto/16 :goto_6

    .line 347
    .restart local v9    # "primaryButtonDown":Z
    :cond_c
    const/16 v16, 0x0

    goto/16 :goto_7

    .line 348
    .restart local v10    # "middleButtonDown":Z
    :cond_d
    const/16 v16, 0x0

    goto/16 :goto_8

    .line 350
    .restart local v11    # "secondaryButtonDown":Z
    .restart local v12    # "w":Lcom/sun/glass/ui/Window;
    :cond_e
    move-object/from16 v16, v12

    :try_start_1
    invoke-virtual/range {v16 .. v16}, Lcom/sun/glass/ui/Window;->getPlatformScale()F
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v16

    move/from16 v0, v16

    float-to-double v0, v0

    move-wide/from16 v16, v0

    goto/16 :goto_9

    .line 359
    .end local v5    # "shiftDown":Z
    .end local v6    # "controlDown":Z
    .end local v7    # "altDown":Z
    .end local v8    # "metaDown":Z
    .end local v9    # "primaryButtonDown":Z
    .end local v10    # "middleButtonDown":Z
    .end local v11    # "secondaryButtonDown":Z
    .end local v12    # "w":Lcom/sun/glass/ui/Window;
    :catchall_0
    move-exception v16

    move-object/from16 v15, v16

    move-object/from16 v16, v4

    if-eqz v16, :cond_f

    .line 360
    move-object/from16 v16, v4

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Lcom/sun/javafx/tk/quantum/WindowStage;->setInEventHandler(Z)V

    .line 362
    :cond_f
    sget-boolean v16, Lcom/sun/javafx/logging/PulseLogger;->PULSE_LOGGING_ENABLED:Z

    if-eqz v16, :cond_10

    .line 363
    const/16 v16, 0x0

    invoke-static/range {v16 .. v16}, Lcom/sun/javafx/logging/PulseLogger;->newInput(Ljava/lang/String;)V

    :cond_10
    move-object/from16 v16, v15

    throw v16

    .line 292
    nop

    :pswitch_data_0
    .packed-switch 0xd4
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch

    .line 307
    :pswitch_data_1
    .packed-switch 0xdd
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_7
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method
