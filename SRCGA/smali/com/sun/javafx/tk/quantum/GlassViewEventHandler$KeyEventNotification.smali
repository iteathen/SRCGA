.class Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$KeyEventNotification;
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
    name = "KeyEventNotification"
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
.field chars:[C

.field key:I

.field modifiers:I

.field final synthetic this$0:Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;

.field time:J

.field type:I

.field view:Lcom/sun/glass/ui/View;


# direct methods
.method private constructor <init>(Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;)V
    .locals 4

    .prologue
    .line 147
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$KeyEventNotification;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$KeyEventNotification;->this$0:Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$1;)V
    .locals 5

    .prologue
    .line 147
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$KeyEventNotification;
    move-object v1, p1

    .local v1, "x0":Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;
    move-object v2, p2

    .local v2, "x1":Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$1;
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$KeyEventNotification;-><init>(Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 147
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$KeyEventNotification;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$KeyEventNotification;->run()Ljava/lang/Void;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$KeyEventNotification;
    return-object v0
.end method

.method public run()Ljava/lang/Void;
    .locals 21

    .prologue
    .line 157
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$KeyEventNotification;
    sget-boolean v10, Lcom/sun/javafx/logging/PulseLogger;->PULSE_LOGGING_ENABLED:Z

    if-eqz v10, :cond_0

    .line 158
    move-object v10, v0

    iget v10, v10, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$KeyEventNotification;->type:I

    invoke-static {v10}, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;->access$100(I)Ljavafx/event/EventType;

    move-result-object v10

    invoke-virtual {v10}, Ljavafx/event/EventType;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/sun/javafx/logging/PulseLogger;->newInput(Ljava/lang/String;)V

    .line 160
    :cond_0
    move-object v10, v0

    iget-object v10, v10, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$KeyEventNotification;->this$0:Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;

    invoke-static {v10}, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;->access$200(Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;)Lcom/sun/javafx/tk/quantum/ViewScene;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sun/javafx/tk/quantum/ViewScene;->getWindowStage()Lcom/sun/javafx/tk/quantum/WindowStage;

    move-result-object v10

    move-object v1, v10

    .line 162
    .local v1, "stage":Lcom/sun/javafx/tk/quantum/WindowStage;
    move-object v10, v1

    if-eqz v10, :cond_1

    .line 163
    move-object v10, v1

    const/4 v11, 0x1

    :try_start_0
    invoke-virtual {v10, v11}, Lcom/sun/javafx/tk/quantum/WindowStage;->setInEventHandler(Z)V

    .line 166
    :cond_1
    move-object v10, v0

    iget v10, v10, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$KeyEventNotification;->modifiers:I

    const/4 v11, 0x1

    and-int/lit8 v10, v10, 0x1

    if-eqz v10, :cond_5

    const/4 v10, 0x1

    :goto_0
    move v2, v10

    .line 167
    .local v2, "shiftDown":Z
    move-object v10, v0

    iget v10, v10, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$KeyEventNotification;->modifiers:I

    const/4 v11, 0x4

    and-int/lit8 v10, v10, 0x4

    if-eqz v10, :cond_6

    const/4 v10, 0x1

    :goto_1
    move v3, v10

    .line 168
    .local v3, "controlDown":Z
    move-object v10, v0

    iget v10, v10, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$KeyEventNotification;->modifiers:I

    const/16 v11, 0x8

    and-int/lit8 v10, v10, 0x8

    if-eqz v10, :cond_7

    const/4 v10, 0x1

    :goto_2
    move v4, v10

    .line 169
    .local v4, "altDown":Z
    move-object v10, v0

    iget v10, v10, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$KeyEventNotification;->modifiers:I

    const/16 v11, 0x10

    and-int/lit8 v10, v10, 0x10

    if-eqz v10, :cond_8

    const/4 v10, 0x1

    :goto_3
    move v5, v10

    .line 171
    .local v5, "metaDown":Z
    new-instance v10, Ljava/lang/String;

    move-object/from16 v20, v10

    move-object/from16 v10, v20

    move-object/from16 v11, v20

    move-object v12, v0

    iget-object v12, v12, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$KeyEventNotification;->chars:[C

    invoke-direct {v11, v12}, Ljava/lang/String;-><init>([C)V

    move-object v6, v10

    .line 172
    .local v6, "str":Ljava/lang/String;
    move-object v10, v6

    move-object v7, v10

    .line 174
    .local v7, "text":Ljava/lang/String;
    new-instance v10, Ljavafx/scene/input/KeyEvent;

    move-object/from16 v20, v10

    move-object/from16 v10, v20

    move-object/from16 v11, v20

    move-object v12, v0

    iget v12, v12, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$KeyEventNotification;->type:I

    .line 175
    invoke-static {v12}, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;->access$100(I)Ljavafx/event/EventType;

    move-result-object v12

    move-object v13, v6

    move-object v14, v7

    move-object v15, v0

    iget v15, v15, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$KeyEventNotification;->key:I

    .line 177
    invoke-static {v15}, Lcom/sun/javafx/scene/input/KeyCodeMap;->valueOf(I)Ljavafx/scene/input/KeyCode;

    move-result-object v15

    move/from16 v16, v2

    move/from16 v17, v3

    move/from16 v18, v4

    move/from16 v19, v5

    invoke-direct/range {v11 .. v19}, Ljavafx/scene/input/KeyEvent;-><init>(Ljavafx/event/EventType;Ljava/lang/String;Ljava/lang/String;Ljavafx/scene/input/KeyCode;ZZZZ)V

    move-object v8, v10

    .line 180
    .local v8, "keyEvent":Ljavafx/scene/input/KeyEvent;
    move-object v10, v0

    iget v10, v10, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$KeyEventNotification;->type:I

    packed-switch v10, :pswitch_data_0

    .line 201
    sget-boolean v10, Lcom/sun/javafx/tk/quantum/QuantumToolkit;->verbose:Z

    if-eqz v10, :cond_2

    .line 202
    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v11, Ljava/lang/StringBuilder;

    move-object/from16 v20, v11

    move-object/from16 v11, v20

    move-object/from16 v12, v20

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "handleKeyEvent: unhandled type: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object v12, v0

    iget v12, v12, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$KeyEventNotification;->type:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 206
    :cond_2
    :goto_4
    move-object v10, v1

    if-eqz v10, :cond_3

    .line 207
    move-object v10, v1

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/sun/javafx/tk/quantum/WindowStage;->setInEventHandler(Z)V

    .line 209
    :cond_3
    sget-boolean v10, Lcom/sun/javafx/logging/PulseLogger;->PULSE_LOGGING_ENABLED:Z

    if-eqz v10, :cond_4

    .line 210
    const/4 v10, 0x0

    invoke-static {v10}, Lcom/sun/javafx/logging/PulseLogger;->newInput(Ljava/lang/String;)V

    .line 213
    :cond_4
    const/4 v10, 0x0

    move-object v0, v10

    .end local v0    # "this":Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$KeyEventNotification;
    return-object v0

    .line 166
    .end local v2    # "shiftDown":Z
    .end local v3    # "controlDown":Z
    .end local v4    # "altDown":Z
    .end local v5    # "metaDown":Z
    .end local v6    # "str":Ljava/lang/String;
    .end local v7    # "text":Ljava/lang/String;
    .end local v8    # "keyEvent":Ljavafx/scene/input/KeyEvent;
    .restart local v0    # "this":Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$KeyEventNotification;
    :cond_5
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 167
    .restart local v2    # "shiftDown":Z
    :cond_6
    const/4 v10, 0x0

    goto/16 :goto_1

    .line 168
    .restart local v3    # "controlDown":Z
    :cond_7
    const/4 v10, 0x0

    goto/16 :goto_2

    .line 169
    .restart local v4    # "altDown":Z
    :cond_8
    const/4 v10, 0x0

    goto :goto_3

    .line 182
    .restart local v5    # "metaDown":Z
    .restart local v6    # "str":Ljava/lang/String;
    .restart local v7    # "text":Ljava/lang/String;
    .restart local v8    # "keyEvent":Ljavafx/scene/input/KeyEvent;
    :pswitch_0
    move-object v10, v0

    :try_start_1
    iget-object v10, v10, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$KeyEventNotification;->view:Lcom/sun/glass/ui/View;

    invoke-virtual {v10}, Lcom/sun/glass/ui/View;->isInFullscreen()Z

    move-result v10

    if-eqz v10, :cond_9

    move-object v10, v1

    if-eqz v10, :cond_9

    .line 183
    move-object v10, v1

    invoke-virtual {v10}, Lcom/sun/javafx/tk/quantum/WindowStage;->getSavedFullScreenExitKey()Ljavafx/scene/input/KeyCombination;

    move-result-object v10

    if-eqz v10, :cond_9

    move-object v10, v1

    .line 184
    invoke-virtual {v10}, Lcom/sun/javafx/tk/quantum/WindowStage;->getSavedFullScreenExitKey()Ljavafx/scene/input/KeyCombination;

    move-result-object v10

    move-object v11, v8

    invoke-virtual {v10, v11}, Ljavafx/scene/input/KeyCombination;->match(Ljavafx/scene/input/KeyEvent;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 185
    move-object v10, v1

    invoke-virtual {v10}, Lcom/sun/javafx/tk/quantum/WindowStage;->exitFullScreen()V

    .line 191
    :cond_9
    :pswitch_1
    move-object v10, v0

    iget-object v10, v10, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$KeyEventNotification;->view:Lcom/sun/glass/ui/View;

    invoke-virtual {v10}, Lcom/sun/glass/ui/View;->isInFullscreen()Z

    move-result v10

    if-eqz v10, :cond_a

    .line 192
    move-object v10, v0

    iget-object v10, v10, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$KeyEventNotification;->this$0:Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;

    move-object v11, v0

    iget v11, v11, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$KeyEventNotification;->type:I

    move-object v12, v0

    iget v12, v12, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$KeyEventNotification;->key:I

    move-object v13, v0

    iget-object v13, v13, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$KeyEventNotification;->chars:[C

    move-object v14, v0

    iget v14, v14, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$KeyEventNotification;->modifiers:I

    invoke-static {v10, v11, v12, v13, v14}, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;->access$300(Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;II[CI)Z

    move-result v10

    if-nez v10, :cond_a

    .line 193
    goto :goto_4

    .line 196
    :cond_a
    move-object v10, v0

    iget-object v10, v10, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$KeyEventNotification;->this$0:Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;

    invoke-static {v10}, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;->access$200(Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;)Lcom/sun/javafx/tk/quantum/ViewScene;

    move-result-object v10

    iget-object v10, v10, Lcom/sun/javafx/tk/quantum/ViewScene;->sceneListener:Lcom/sun/javafx/tk/TKSceneListener;

    if-eqz v10, :cond_2

    .line 197
    move-object v10, v0

    iget-object v10, v10, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler$KeyEventNotification;->this$0:Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;

    invoke-static {v10}, Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;->access$200(Lcom/sun/javafx/tk/quantum/GlassViewEventHandler;)Lcom/sun/javafx/tk/quantum/ViewScene;

    move-result-object v10

    iget-object v10, v10, Lcom/sun/javafx/tk/quantum/ViewScene;->sceneListener:Lcom/sun/javafx/tk/TKSceneListener;

    move-object v11, v8

    invoke-interface {v10, v11}, Lcom/sun/javafx/tk/TKSceneListener;->keyEvent(Ljavafx/scene/input/KeyEvent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    .line 206
    .end local v2    # "shiftDown":Z
    .end local v3    # "controlDown":Z
    .end local v4    # "altDown":Z
    .end local v5    # "metaDown":Z
    .end local v6    # "str":Ljava/lang/String;
    .end local v7    # "text":Ljava/lang/String;
    .end local v8    # "keyEvent":Ljavafx/scene/input/KeyEvent;
    :catchall_0
    move-exception v10

    move-object v9, v10

    move-object v10, v1

    if-eqz v10, :cond_b

    .line 207
    move-object v10, v1

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/sun/javafx/tk/quantum/WindowStage;->setInEventHandler(Z)V

    .line 209
    :cond_b
    sget-boolean v10, Lcom/sun/javafx/logging/PulseLogger;->PULSE_LOGGING_ENABLED:Z

    if-eqz v10, :cond_c

    .line 210
    const/4 v10, 0x0

    invoke-static {v10}, Lcom/sun/javafx/logging/PulseLogger;->newInput(Ljava/lang/String;)V

    :cond_c
    move-object v10, v9

    throw v10

    .line 180
    nop

    :pswitch_data_0
    .packed-switch 0x6f
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
