.class Ljavafx/scene/control/HeavyweightDialog;
.super Ljavafx/scene/control/FXDialog;
.source "HeavyweightDialog.java"


# instance fields
.field private final DUMMY_ROOT:Ljavafx/scene/Parent;

.field private final dialog:Ljavafx/scene/control/Dialog;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/scene/control/Dialog",
            "<*>;"
        }
    .end annotation
.end field

.field private dialogPane:Ljavafx/scene/control/DialogPane;

.field private prefX:D

.field private prefY:D

.field private scene:Ljavafx/scene/Scene;

.field final stage:Ljavafx/stage/Stage;


# direct methods
.method constructor <init>(Ljavafx/scene/control/Dialog;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/control/Dialog",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 82
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/control/HeavyweightDialog;
    move-object v2, p1

    .local v2, "dialog":Ljavafx/scene/control/Dialog;, "Ljavafx/scene/control/Dialog<*>;"
    move-object v3, v1

    invoke-direct {v3}, Ljavafx/scene/control/FXDialog;-><init>()V

    .line 52
    move-object v3, v1

    new-instance v4, Ljavafx/scene/control/HeavyweightDialog$1;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v1

    invoke-direct {v5, v6}, Ljavafx/scene/control/HeavyweightDialog$1;-><init>(Ljavafx/scene/control/HeavyweightDialog;)V

    iput-object v4, v3, Ljavafx/scene/control/HeavyweightDialog;->stage:Ljavafx/stage/Stage;

    .line 67
    move-object v3, v1

    new-instance v4, Ljavafx/scene/layout/Region;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Ljavafx/scene/layout/Region;-><init>()V

    iput-object v4, v3, Ljavafx/scene/control/HeavyweightDialog;->DUMMY_ROOT:Ljavafx/scene/Parent;

    .line 71
    move-object v3, v1

    const-wide/high16 v4, 0x7ff8000000000000L    # NaN

    iput-wide v4, v3, Ljavafx/scene/control/HeavyweightDialog;->prefX:D

    .line 72
    move-object v3, v1

    const-wide/high16 v4, 0x7ff8000000000000L    # NaN

    iput-wide v4, v3, Ljavafx/scene/control/HeavyweightDialog;->prefY:D

    .line 83
    move-object v3, v1

    move-object v4, v2

    iput-object v4, v3, Ljavafx/scene/control/HeavyweightDialog;->dialog:Ljavafx/scene/control/Dialog;

    .line 85
    move-object v3, v1

    iget-object v3, v3, Ljavafx/scene/control/HeavyweightDialog;->stage:Ljavafx/stage/Stage;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljavafx/stage/Stage;->setResizable(Z)V

    .line 87
    move-object v3, v1

    iget-object v3, v3, Ljavafx/scene/control/HeavyweightDialog;->stage:Ljavafx/stage/Stage;

    move-object v4, v1

    move-object v5, v2

    invoke-static {v4, v5}, Ljavafx/scene/control/HeavyweightDialog$$Lambda$1;->lambdaFactory$(Ljavafx/scene/control/HeavyweightDialog;Ljavafx/scene/control/Dialog;)Ljavafx/event/EventHandler;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljavafx/stage/Stage;->setOnCloseRequest(Ljavafx/event/EventHandler;)V

    .line 96
    move-object v3, v1

    iget-object v3, v3, Ljavafx/scene/control/HeavyweightDialog;->stage:Ljavafx/stage/Stage;

    sget-object v4, Ljavafx/scene/input/KeyEvent;->KEY_RELEASED:Ljavafx/event/EventType;

    move-object v5, v1

    move-object v6, v2

    invoke-static {v5, v6}, Ljavafx/scene/control/HeavyweightDialog$$Lambda$2;->lambdaFactory$(Ljavafx/scene/control/HeavyweightDialog;Ljavafx/scene/control/Dialog;)Ljavafx/event/EventHandler;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljavafx/stage/Stage;->addEventHandler(Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V

    .line 104
    return-void
.end method

.method static synthetic access$000(Ljavafx/scene/control/HeavyweightDialog;)V
    .locals 2

    .prologue
    .line 44
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/control/HeavyweightDialog;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/control/HeavyweightDialog;->positionStage()V

    return-void
.end method

.method static synthetic access$lambda$0(Ljavafx/scene/control/HeavyweightDialog;Ljavafx/scene/control/Dialog;Ljavafx/stage/WindowEvent;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Ljavafx/scene/control/HeavyweightDialog;->lambda$new$608(Ljavafx/scene/control/Dialog;Ljavafx/stage/WindowEvent;)V

    return-void
.end method

.method static synthetic access$lambda$1(Ljavafx/scene/control/HeavyweightDialog;Ljavafx/scene/control/Dialog;Ljavafx/scene/input/KeyEvent;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Ljavafx/scene/control/HeavyweightDialog;->lambda$new$609(Ljavafx/scene/control/Dialog;Ljavafx/scene/input/KeyEvent;)V

    return-void
.end method

.method private synthetic lambda$new$608(Ljavafx/scene/control/Dialog;Ljavafx/stage/WindowEvent;)V
    .locals 5

    .prologue
    .line 88
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/HeavyweightDialog;
    move-object v1, p1

    .local v1, "dialog":Ljavafx/scene/control/Dialog;
    move-object v2, p2

    .local v2, "windowEvent":Ljavafx/stage/WindowEvent;
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljavafx/scene/control/HeavyweightDialog;->requestPermissionToClose(Ljavafx/scene/control/Dialog;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 89
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/control/Dialog;->close()V

    .line 94
    :goto_0
    return-void

    .line 92
    :cond_0
    move-object v3, v2

    invoke-virtual {v3}, Ljavafx/stage/WindowEvent;->consume()V

    goto :goto_0
.end method

.method private synthetic lambda$new$609(Ljavafx/scene/control/Dialog;Ljavafx/scene/input/KeyEvent;)V
    .locals 5

    .prologue
    .line 97
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/HeavyweightDialog;
    move-object v1, p1

    .local v1, "dialog":Ljavafx/scene/control/Dialog;
    move-object v2, p2

    .local v2, "keyEvent":Ljavafx/scene/input/KeyEvent;
    move-object v3, v2

    invoke-virtual {v3}, Ljavafx/scene/input/KeyEvent;->getCode()Ljavafx/scene/input/KeyCode;

    move-result-object v3

    sget-object v4, Ljavafx/scene/input/KeyCode;->ESCAPE:Ljavafx/scene/input/KeyCode;

    if-ne v3, v4, :cond_0

    .line 98
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljavafx/scene/control/HeavyweightDialog;->requestPermissionToClose(Ljavafx/scene/control/Dialog;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 99
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/control/Dialog;->close()V

    .line 100
    move-object v3, v2

    invoke-virtual {v3}, Ljavafx/scene/input/KeyEvent;->consume()V

    .line 103
    :cond_0
    return-void
.end method

.method private positionStage()V
    .locals 22

    .prologue
    .line 259
    move-object/from16 v3, p0

    .local v3, "this":Ljavafx/scene/control/HeavyweightDialog;
    move-object/from16 v16, v3

    invoke-virtual/range {v16 .. v16}, Ljavafx/scene/control/HeavyweightDialog;->getX()D

    move-result-wide v16

    move-wide/from16 v4, v16

    .line 260
    .local v4, "x":D
    move-object/from16 v16, v3

    invoke-virtual/range {v16 .. v16}, Ljavafx/scene/control/HeavyweightDialog;->getY()D

    move-result-wide v16

    move-wide/from16 v6, v16

    .line 263
    .local v6, "y":D
    move-wide/from16 v16, v4

    invoke-static/range {v16 .. v17}, Ljava/lang/Double;->isNaN(D)Z

    move-result v16

    if-nez v16, :cond_0

    move-wide/from16 v16, v6

    invoke-static/range {v16 .. v17}, Ljava/lang/Double;->isNaN(D)Z

    move-result v16

    if-nez v16, :cond_0

    move-wide/from16 v16, v4

    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-wide v0, v0, Ljavafx/scene/control/HeavyweightDialog;->prefX:D

    move-wide/from16 v18, v0

    .line 264
    invoke-static/range {v16 .. v19}, Ljava/lang/Double;->compare(DD)I

    move-result v16

    if-eqz v16, :cond_0

    move-wide/from16 v16, v6

    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-wide v0, v0, Ljavafx/scene/control/HeavyweightDialog;->prefY:D

    move-wide/from16 v18, v0

    invoke-static/range {v16 .. v19}, Ljava/lang/Double;->compare(DD)I

    move-result v16

    if-eqz v16, :cond_0

    .line 271
    move-object/from16 v16, v3

    move-wide/from16 v17, v4

    invoke-virtual/range {v16 .. v18}, Ljavafx/scene/control/HeavyweightDialog;->setX(D)V

    .line 272
    move-object/from16 v16, v3

    move-wide/from16 v17, v6

    invoke-virtual/range {v16 .. v18}, Ljavafx/scene/control/HeavyweightDialog;->setY(D)V

    .line 273
    .line 305
    :goto_0
    return-void

    .line 278
    :cond_0
    move-object/from16 v16, v3

    move-object/from16 v0, v16

    iget-object v0, v0, Ljavafx/scene/control/HeavyweightDialog;->dialogPane:Ljavafx/scene/control/DialogPane;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljavafx/scene/control/DialogPane;->applyCss()V

    .line 279
    move-object/from16 v16, v3

    move-object/from16 v0, v16

    iget-object v0, v0, Ljavafx/scene/control/HeavyweightDialog;->dialogPane:Ljavafx/scene/control/DialogPane;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljavafx/scene/control/DialogPane;->layout()V

    .line 281
    move-object/from16 v16, v3

    invoke-virtual/range {v16 .. v16}, Ljavafx/scene/control/HeavyweightDialog;->getOwner()Ljavafx/stage/Window;

    move-result-object v16

    move-object/from16 v8, v16

    .line 282
    .local v8, "owner":Ljavafx/stage/Window;
    move-object/from16 v16, v8

    invoke-virtual/range {v16 .. v16}, Ljavafx/stage/Window;->getScene()Ljavafx/scene/Scene;

    move-result-object v16

    move-object/from16 v9, v16

    .line 286
    .local v9, "ownerScene":Ljavafx/scene/Scene;
    move-object/from16 v16, v9

    invoke-virtual/range {v16 .. v16}, Ljavafx/scene/Scene;->getY()D

    move-result-wide v16

    move-wide/from16 v10, v16

    .line 292
    .local v10, "titleBarHeight":D
    move-object/from16 v16, v3

    move-object/from16 v0, v16

    iget-object v0, v0, Ljavafx/scene/control/HeavyweightDialog;->dialogPane:Ljavafx/scene/control/DialogPane;

    move-object/from16 v16, v0

    const-wide/high16 v17, -0x4010000000000000L    # -1.0

    invoke-virtual/range {v16 .. v18}, Ljavafx/scene/control/DialogPane;->prefWidth(D)D

    move-result-wide v16

    move-wide/from16 v12, v16

    .line 293
    .local v12, "dialogWidth":D
    move-object/from16 v16, v3

    move-object/from16 v0, v16

    iget-object v0, v0, Ljavafx/scene/control/HeavyweightDialog;->dialogPane:Ljavafx/scene/control/DialogPane;

    move-object/from16 v16, v0

    move-wide/from16 v17, v12

    invoke-virtual/range {v16 .. v18}, Ljavafx/scene/control/DialogPane;->prefHeight(D)D

    move-result-wide v16

    move-wide/from16 v14, v16

    .line 297
    .local v14, "dialogHeight":D
    move-object/from16 v16, v8

    invoke-virtual/range {v16 .. v16}, Ljavafx/stage/Window;->getX()D

    move-result-wide v16

    move-object/from16 v18, v9

    invoke-virtual/range {v18 .. v18}, Ljavafx/scene/Scene;->getWidth()D

    move-result-wide v18

    const-wide/high16 v20, 0x4000000000000000L    # 2.0

    div-double v18, v18, v20

    add-double v16, v16, v18

    move-wide/from16 v18, v12

    const-wide/high16 v20, 0x4000000000000000L    # 2.0

    div-double v18, v18, v20

    sub-double v16, v16, v18

    move-wide/from16 v4, v16

    .line 298
    move-object/from16 v16, v8

    invoke-virtual/range {v16 .. v16}, Ljavafx/stage/Window;->getY()D

    move-result-wide v16

    move-wide/from16 v18, v10

    const-wide/high16 v20, 0x4000000000000000L    # 2.0

    div-double v18, v18, v20

    add-double v16, v16, v18

    move-object/from16 v18, v9

    invoke-virtual/range {v18 .. v18}, Ljavafx/scene/Scene;->getHeight()D

    move-result-wide v18

    const-wide/high16 v20, 0x4000000000000000L    # 2.0

    div-double v18, v18, v20

    add-double v16, v16, v18

    move-wide/from16 v18, v14

    const-wide/high16 v20, 0x4000000000000000L    # 2.0

    div-double v18, v18, v20

    sub-double v16, v16, v18

    move-wide/from16 v6, v16

    .line 300
    move-object/from16 v16, v3

    move-wide/from16 v17, v4

    move-wide/from16 v0, v17

    move-object/from16 v2, v16

    iput-wide v0, v2, Ljavafx/scene/control/HeavyweightDialog;->prefX:D

    .line 301
    move-object/from16 v16, v3

    move-wide/from16 v17, v6

    move-wide/from16 v0, v17

    move-object/from16 v2, v16

    iput-wide v0, v2, Ljavafx/scene/control/HeavyweightDialog;->prefY:D

    .line 303
    move-object/from16 v16, v3

    move-wide/from16 v17, v4

    invoke-virtual/range {v16 .. v18}, Ljavafx/scene/control/HeavyweightDialog;->setX(D)V

    .line 304
    move-object/from16 v16, v3

    move-wide/from16 v17, v6

    invoke-virtual/range {v16 .. v18}, Ljavafx/scene/control/HeavyweightDialog;->setY(D)V

    .line 305
    goto/16 :goto_0
.end method

.method private updateStageBindings(Ljavafx/stage/Window;Ljavafx/stage/Window;)V
    .locals 8

    .prologue
    .line 310
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/HeavyweightDialog;
    move-object v1, p1

    .local v1, "oldOwner":Ljavafx/stage/Window;
    move-object v2, p2

    .local v2, "newOwner":Ljavafx/stage/Window;
    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/control/HeavyweightDialog;->stage:Ljavafx/stage/Stage;

    invoke-virtual {v6}, Ljavafx/stage/Stage;->getScene()Ljavafx/scene/Scene;

    move-result-object v6

    move-object v3, v6

    .line 312
    .local v3, "dialogScene":Ljavafx/scene/Scene;
    move-object v6, v1

    if-eqz v6, :cond_0

    move-object v6, v1

    instance-of v6, v6, Ljavafx/stage/Stage;

    if-eqz v6, :cond_0

    .line 313
    move-object v6, v1

    check-cast v6, Ljavafx/stage/Stage;

    move-object v4, v6

    .line 314
    .local v4, "oldStage":Ljavafx/stage/Stage;
    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/control/HeavyweightDialog;->stage:Ljavafx/stage/Stage;

    invoke-virtual {v6}, Ljavafx/stage/Stage;->getIcons()Ljavafx/collections/ObservableList;

    move-result-object v6

    move-object v7, v4

    invoke-virtual {v7}, Ljavafx/stage/Stage;->getIcons()Ljavafx/collections/ObservableList;

    move-result-object v7

    invoke-static {v6, v7}, Ljavafx/beans/binding/Bindings;->unbindContent(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 316
    move-object v6, v4

    invoke-virtual {v6}, Ljavafx/stage/Stage;->getScene()Ljavafx/scene/Scene;

    move-result-object v6

    move-object v5, v6

    .line 317
    .local v5, "oldScene":Ljavafx/scene/Scene;
    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/control/HeavyweightDialog;->scene:Ljavafx/scene/Scene;

    if-eqz v6, :cond_0

    move-object v6, v3

    if-eqz v6, :cond_0

    .line 318
    move-object v6, v3

    invoke-virtual {v6}, Ljavafx/scene/Scene;->getStylesheets()Ljavafx/collections/ObservableList;

    move-result-object v6

    move-object v7, v5

    invoke-virtual {v7}, Ljavafx/scene/Scene;->getStylesheets()Ljavafx/collections/ObservableList;

    move-result-object v7

    invoke-static {v6, v7}, Ljavafx/beans/binding/Bindings;->unbindContent(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 323
    .end local v4    # "oldStage":Ljavafx/stage/Stage;
    .end local v5    # "oldScene":Ljavafx/scene/Scene;
    :cond_0
    move-object v6, v2

    instance-of v6, v6, Ljavafx/stage/Stage;

    if-eqz v6, :cond_1

    .line 324
    move-object v6, v2

    check-cast v6, Ljavafx/stage/Stage;

    move-object v4, v6

    .line 325
    .local v4, "newStage":Ljavafx/stage/Stage;
    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/control/HeavyweightDialog;->stage:Ljavafx/stage/Stage;

    invoke-virtual {v6}, Ljavafx/stage/Stage;->getIcons()Ljavafx/collections/ObservableList;

    move-result-object v6

    move-object v7, v4

    invoke-virtual {v7}, Ljavafx/stage/Stage;->getIcons()Ljavafx/collections/ObservableList;

    move-result-object v7

    invoke-static {v6, v7}, Ljavafx/beans/binding/Bindings;->bindContent(Ljava/util/List;Ljavafx/collections/ObservableList;)V

    .line 327
    move-object v6, v4

    invoke-virtual {v6}, Ljavafx/stage/Stage;->getScene()Ljavafx/scene/Scene;

    move-result-object v6

    move-object v5, v6

    .line 328
    .local v5, "newScene":Ljavafx/scene/Scene;
    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/control/HeavyweightDialog;->scene:Ljavafx/scene/Scene;

    if-eqz v6, :cond_1

    move-object v6, v3

    if-eqz v6, :cond_1

    .line 329
    move-object v6, v3

    invoke-virtual {v6}, Ljavafx/scene/Scene;->getStylesheets()Ljavafx/collections/ObservableList;

    move-result-object v6

    move-object v7, v5

    invoke-virtual {v7}, Ljavafx/scene/Scene;->getStylesheets()Ljavafx/collections/ObservableList;

    move-result-object v7

    invoke-static {v6, v7}, Ljavafx/beans/binding/Bindings;->bindContent(Ljava/util/List;Ljavafx/collections/ObservableList;)V

    .line 332
    .end local v4    # "newStage":Ljavafx/stage/Stage;
    .end local v5    # "newScene":Ljavafx/scene/Scene;
    :cond_1
    return-void
.end method


# virtual methods
.method public close()V
    .locals 3

    .prologue
    .line 166
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/HeavyweightDialog;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/HeavyweightDialog;->stage:Ljavafx/stage/Stage;

    invoke-virtual {v1}, Ljavafx/stage/Stage;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 167
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/HeavyweightDialog;->stage:Ljavafx/stage/Stage;

    invoke-virtual {v1}, Ljavafx/stage/Stage;->hide()V

    .line 171
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/HeavyweightDialog;->scene:Ljavafx/scene/Scene;

    if-eqz v1, :cond_1

    .line 172
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/HeavyweightDialog;->scene:Ljavafx/scene/Scene;

    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/HeavyweightDialog;->DUMMY_ROOT:Ljavafx/scene/Parent;

    invoke-virtual {v1, v2}, Ljavafx/scene/Scene;->setRoot(Ljavafx/scene/Parent;)V

    .line 174
    :cond_1
    return-void
.end method

.method focusedProperty()Ljavafx/beans/property/ReadOnlyBooleanProperty;
    .locals 2

    .prologue
    .line 243
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/HeavyweightDialog;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/HeavyweightDialog;->stage:Ljavafx/stage/Stage;

    invoke-virtual {v1}, Ljavafx/stage/Stage;->focusedProperty()Ljavafx/beans/property/ReadOnlyBooleanProperty;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/HeavyweightDialog;
    return-object v0
.end method

.method public getModality()Ljavafx/stage/Modality;
    .locals 2

    .prologue
    .line 136
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/HeavyweightDialog;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/HeavyweightDialog;->stage:Ljavafx/stage/Stage;

    invoke-virtual {v1}, Ljavafx/stage/Stage;->getModality()Ljavafx/stage/Modality;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/HeavyweightDialog;
    return-object v0
.end method

.method public getOwner()Ljavafx/stage/Window;
    .locals 2

    .prologue
    .line 128
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/HeavyweightDialog;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/HeavyweightDialog;->stage:Ljavafx/stage/Stage;

    invoke-virtual {v1}, Ljavafx/stage/Stage;->getOwner()Ljavafx/stage/Window;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/HeavyweightDialog;
    return-object v0
.end method

.method public getRoot()Ljavafx/scene/Node;
    .locals 2

    .prologue
    .line 185
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/HeavyweightDialog;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/HeavyweightDialog;->stage:Ljavafx/stage/Stage;

    invoke-virtual {v1}, Ljavafx/stage/Stage;->getScene()Ljavafx/scene/Scene;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/scene/Scene;->getRoot()Ljavafx/scene/Parent;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/HeavyweightDialog;
    return-object v0
.end method

.method getSceneHeight()D
    .locals 4

    .prologue
    .line 223
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/control/HeavyweightDialog;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/control/HeavyweightDialog;->scene:Ljavafx/scene/Scene;

    if-nez v2, :cond_0

    const-wide/16 v2, 0x0

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Ljavafx/scene/control/HeavyweightDialog;
    return-wide v1

    .restart local v1    # "this":Ljavafx/scene/control/HeavyweightDialog;
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/control/HeavyweightDialog;->scene:Ljavafx/scene/Scene;

    invoke-virtual {v2}, Ljavafx/scene/Scene;->getHeight()D

    move-result-wide v2

    goto :goto_0
.end method

.method getStyle()Ljavafx/stage/StageStyle;
    .locals 2

    .prologue
    .line 119
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/HeavyweightDialog;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/HeavyweightDialog;->stage:Ljavafx/stage/Stage;

    invoke-virtual {v1}, Ljavafx/stage/Stage;->getStyle()Ljavafx/stage/StageStyle;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/HeavyweightDialog;
    return-object v0
.end method

.method public getWindow()Ljavafx/stage/Window;
    .locals 2

    .prologue
    .line 181
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/HeavyweightDialog;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/HeavyweightDialog;->stage:Ljavafx/stage/Stage;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/HeavyweightDialog;
    return-object v0
.end method

.method public getX()D
    .locals 3

    .prologue
    .line 190
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/HeavyweightDialog;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/HeavyweightDialog;->stage:Ljavafx/stage/Stage;

    invoke-virtual {v1}, Ljavafx/stage/Stage;->getX()D

    move-result-wide v1

    move-wide v0, v1

    .end local v0    # "this":Ljavafx/scene/control/HeavyweightDialog;
    return-wide v0
.end method

.method public getY()D
    .locals 3

    .prologue
    .line 203
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/HeavyweightDialog;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/HeavyweightDialog;->stage:Ljavafx/stage/Stage;

    invoke-virtual {v1}, Ljavafx/stage/Stage;->getY()D

    move-result-wide v1

    move-wide v0, v1

    .end local v0    # "this":Ljavafx/scene/control/HeavyweightDialog;
    return-wide v0
.end method

.method heightProperty()Ljavafx/beans/property/ReadOnlyDoubleProperty;
    .locals 2

    .prologue
    .line 215
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/HeavyweightDialog;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/HeavyweightDialog;->stage:Ljavafx/stage/Stage;

    invoke-virtual {v1}, Ljavafx/stage/Stage;->heightProperty()Ljavafx/beans/property/ReadOnlyDoubleProperty;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/HeavyweightDialog;
    return-object v0
.end method

.method public initModality(Ljavafx/stage/Modality;)V
    .locals 4

    .prologue
    .line 132
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/HeavyweightDialog;
    move-object v1, p1

    .local v1, "modality":Ljavafx/stage/Modality;
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/HeavyweightDialog;->stage:Ljavafx/stage/Stage;

    move-object v3, v1

    if-nez v3, :cond_0

    sget-object v3, Ljavafx/stage/Modality;->APPLICATION_MODAL:Ljavafx/stage/Modality;

    :goto_0
    invoke-virtual {v2, v3}, Ljavafx/stage/Stage;->initModality(Ljavafx/stage/Modality;)V

    .line 133
    return-void

    .line 132
    :cond_0
    move-object v3, v1

    goto :goto_0
.end method

.method public initOwner(Ljavafx/stage/Window;)V
    .locals 5

    .prologue
    .line 123
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/HeavyweightDialog;
    move-object v1, p1

    .local v1, "newOwner":Ljavafx/stage/Window;
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/control/HeavyweightDialog;->stage:Ljavafx/stage/Stage;

    invoke-virtual {v3}, Ljavafx/stage/Stage;->getOwner()Ljavafx/stage/Window;

    move-result-object v3

    move-object v4, v1

    invoke-direct {v2, v3, v4}, Ljavafx/scene/control/HeavyweightDialog;->updateStageBindings(Ljavafx/stage/Window;Ljavafx/stage/Window;)V

    .line 124
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/HeavyweightDialog;->stage:Ljavafx/stage/Stage;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/stage/Stage;->initOwner(Ljavafx/stage/Window;)V

    .line 125
    return-void
.end method

.method initStyle(Ljavafx/stage/StageStyle;)V
    .locals 4

    .prologue
    .line 115
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/HeavyweightDialog;
    move-object v1, p1

    .local v1, "style":Ljavafx/stage/StageStyle;
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/HeavyweightDialog;->stage:Ljavafx/stage/Stage;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/stage/Stage;->initStyle(Ljavafx/stage/StageStyle;)V

    .line 116
    return-void
.end method

.method resizableProperty()Ljavafx/beans/property/BooleanProperty;
    .locals 2

    .prologue
    .line 235
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/HeavyweightDialog;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/HeavyweightDialog;->stage:Ljavafx/stage/Stage;

    invoke-virtual {v1}, Ljavafx/stage/Stage;->resizableProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/HeavyweightDialog;
    return-object v0
.end method

.method public setDialogPane(Ljavafx/scene/control/DialogPane;)V
    .locals 7

    .prologue
    .line 140
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/HeavyweightDialog;
    move-object v1, p1

    .local v1, "dialogPane":Ljavafx/scene/control/DialogPane;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/control/HeavyweightDialog;->dialogPane:Ljavafx/scene/control/DialogPane;

    .line 142
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/HeavyweightDialog;->scene:Ljavafx/scene/Scene;

    if-nez v2, :cond_0

    .line 143
    move-object v2, v0

    new-instance v3, Ljavafx/scene/Scene;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v1

    invoke-direct {v4, v5}, Ljavafx/scene/Scene;-><init>(Ljavafx/scene/Parent;)V

    iput-object v3, v2, Ljavafx/scene/control/HeavyweightDialog;->scene:Ljavafx/scene/Scene;

    .line 144
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/HeavyweightDialog;->stage:Ljavafx/stage/Stage;

    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/control/HeavyweightDialog;->scene:Ljavafx/scene/Scene;

    invoke-virtual {v2, v3}, Ljavafx/stage/Stage;->setScene(Ljavafx/scene/Scene;)V

    .line 149
    :goto_0
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/control/DialogPane;->autosize()V

    .line 150
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/HeavyweightDialog;->stage:Ljavafx/stage/Stage;

    invoke-virtual {v2}, Ljavafx/stage/Stage;->sizeToScene()V

    .line 151
    return-void

    .line 146
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/HeavyweightDialog;->scene:Ljavafx/scene/Scene;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/scene/Scene;->setRoot(Ljavafx/scene/Parent;)V

    goto :goto_0
.end method

.method setHeight(D)V
    .locals 7

    .prologue
    .line 219
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/HeavyweightDialog;
    move-wide v1, p1

    .local v1, "height":D
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/control/HeavyweightDialog;->stage:Ljavafx/stage/Stage;

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/stage/Stage;->setHeight(D)V

    .line 220
    return-void
.end method

.method setWidth(D)V
    .locals 7

    .prologue
    .line 231
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/HeavyweightDialog;
    move-wide v1, p1

    .local v1, "width":D
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/control/HeavyweightDialog;->stage:Ljavafx/stage/Stage;

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/stage/Stage;->setWidth(D)V

    .line 232
    return-void
.end method

.method public setX(D)V
    .locals 7

    .prologue
    .line 194
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/HeavyweightDialog;
    move-wide v1, p1

    .local v1, "x":D
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/control/HeavyweightDialog;->stage:Ljavafx/stage/Stage;

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/stage/Stage;->setX(D)V

    .line 195
    return-void
.end method

.method public setY(D)V
    .locals 7

    .prologue
    .line 207
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/HeavyweightDialog;
    move-wide v1, p1

    .local v1, "y":D
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/control/HeavyweightDialog;->stage:Ljavafx/stage/Stage;

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/stage/Stage;->setY(D)V

    .line 208
    return-void
.end method

.method public show()V
    .locals 3

    .prologue
    .line 154
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/HeavyweightDialog;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/HeavyweightDialog;->scene:Ljavafx/scene/Scene;

    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/HeavyweightDialog;->dialogPane:Ljavafx/scene/control/DialogPane;

    invoke-virtual {v1, v2}, Ljavafx/scene/Scene;->setRoot(Ljavafx/scene/Parent;)V

    .line 155
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/HeavyweightDialog;->stage:Ljavafx/stage/Stage;

    invoke-virtual {v1}, Ljavafx/stage/Stage;->centerOnScreen()V

    .line 156
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/HeavyweightDialog;->stage:Ljavafx/stage/Stage;

    invoke-virtual {v1}, Ljavafx/stage/Stage;->show()V

    .line 157
    return-void
.end method

.method public showAndWait()V
    .locals 3

    .prologue
    .line 160
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/HeavyweightDialog;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/HeavyweightDialog;->scene:Ljavafx/scene/Scene;

    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/HeavyweightDialog;->dialogPane:Ljavafx/scene/control/DialogPane;

    invoke-virtual {v1, v2}, Ljavafx/scene/Scene;->setRoot(Ljavafx/scene/Parent;)V

    .line 161
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/HeavyweightDialog;->stage:Ljavafx/stage/Stage;

    invoke-virtual {v1}, Ljavafx/stage/Stage;->centerOnScreen()V

    .line 162
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/HeavyweightDialog;->stage:Ljavafx/stage/Stage;

    invoke-virtual {v1}, Ljavafx/stage/Stage;->showAndWait()V

    .line 163
    return-void
.end method

.method public showingProperty()Ljavafx/beans/property/ReadOnlyBooleanProperty;
    .locals 2

    .prologue
    .line 177
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/HeavyweightDialog;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/HeavyweightDialog;->stage:Ljavafx/stage/Stage;

    invoke-virtual {v1}, Ljavafx/stage/Stage;->showingProperty()Ljavafx/beans/property/ReadOnlyBooleanProperty;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/HeavyweightDialog;
    return-object v0
.end method

.method public sizeToScene()V
    .locals 2

    .prologue
    .line 247
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/HeavyweightDialog;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/HeavyweightDialog;->stage:Ljavafx/stage/Stage;

    invoke-virtual {v1}, Ljavafx/stage/Stage;->sizeToScene()V

    .line 248
    return-void
.end method

.method titleProperty()Ljavafx/beans/property/StringProperty;
    .locals 2

    .prologue
    .line 239
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/HeavyweightDialog;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/HeavyweightDialog;->stage:Ljavafx/stage/Stage;

    invoke-virtual {v1}, Ljavafx/stage/Stage;->titleProperty()Ljavafx/beans/property/StringProperty;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/HeavyweightDialog;
    return-object v0
.end method

.method widthProperty()Ljavafx/beans/property/ReadOnlyDoubleProperty;
    .locals 2

    .prologue
    .line 227
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/HeavyweightDialog;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/HeavyweightDialog;->stage:Ljavafx/stage/Stage;

    invoke-virtual {v1}, Ljavafx/stage/Stage;->widthProperty()Ljavafx/beans/property/ReadOnlyDoubleProperty;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/HeavyweightDialog;
    return-object v0
.end method

.method public xProperty()Ljavafx/beans/property/ReadOnlyDoubleProperty;
    .locals 2

    .prologue
    .line 198
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/HeavyweightDialog;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/HeavyweightDialog;->stage:Ljavafx/stage/Stage;

    invoke-virtual {v1}, Ljavafx/stage/Stage;->xProperty()Ljavafx/beans/property/ReadOnlyDoubleProperty;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/HeavyweightDialog;
    return-object v0
.end method

.method public yProperty()Ljavafx/beans/property/ReadOnlyDoubleProperty;
    .locals 2

    .prologue
    .line 211
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/HeavyweightDialog;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/HeavyweightDialog;->stage:Ljavafx/stage/Stage;

    invoke-virtual {v1}, Ljavafx/stage/Stage;->yProperty()Ljavafx/beans/property/ReadOnlyDoubleProperty;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/HeavyweightDialog;
    return-object v0
.end method
