.class public Lcom/sun/javafx/scene/control/behavior/TextFieldBehavior;
.super Lcom/sun/javafx/scene/control/behavior/TextInputControlBehavior;
.source "TextFieldBehavior.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/javafx/scene/control/behavior/TextFieldBehavior$TextInputTypes;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sun/javafx/scene/control/behavior/TextInputControlBehavior",
        "<",
        "Ljavafx/scene/control/TextField;",
        ">;"
    }
.end annotation


# instance fields
.field private contextMenu:Ljavafx/scene/control/ContextMenu;

.field private deferClick:Z

.field private focusGainedByMouseClick:Z

.field private focusOwnerListener:Ljavafx/beans/value/ChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/value/ChangeListener",
            "<",
            "Ljavafx/scene/Node;",
            ">;"
        }
    .end annotation
.end field

.field private sceneListener:Ljavafx/beans/value/ChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/value/ChangeListener",
            "<",
            "Ljavafx/scene/Scene;",
            ">;"
        }
    .end annotation
.end field

.field private shiftDown:Z

.field private skin:Lcom/sun/javafx/scene/control/skin/TextFieldSkin;

.field private tlFocus:Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusBehavior;


# direct methods
.method public constructor <init>(Ljavafx/scene/control/TextField;)V
    .locals 8

    .prologue
    .line 62
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TextFieldBehavior;
    move-object v1, p1

    .local v1, "textField":Ljavafx/scene/control/TextField;
    move-object v3, v0

    move-object v4, v1

    sget-object v5, Lcom/sun/javafx/scene/control/behavior/TextFieldBehavior;->TEXT_INPUT_BINDINGS:Ljava/util/List;

    invoke-direct {v3, v4, v5}, Lcom/sun/javafx/scene/control/behavior/TextInputControlBehavior;-><init>(Ljavafx/scene/control/TextInputControl;Ljava/util/List;)V

    .line 233
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/sun/javafx/scene/control/behavior/TextFieldBehavior;->focusGainedByMouseClick:Z

    .line 234
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/sun/javafx/scene/control/behavior/TextFieldBehavior;->shiftDown:Z

    .line 235
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/sun/javafx/scene/control/behavior/TextFieldBehavior;->deferClick:Z

    .line 64
    move-object v3, v0

    new-instance v4, Ljavafx/scene/control/ContextMenu;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Ljavafx/scene/control/ContextMenu;-><init>()V

    iput-object v4, v3, Lcom/sun/javafx/scene/control/behavior/TextFieldBehavior;->contextMenu:Ljavafx/scene/control/ContextMenu;

    .line 65
    sget-boolean v3, Lcom/sun/javafx/scene/control/behavior/TextFieldBehavior;->IS_TOUCH_SUPPORTED:Z

    if-eqz v3, :cond_0

    .line 66
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/behavior/TextFieldBehavior;->contextMenu:Ljavafx/scene/control/ContextMenu;

    invoke-virtual {v3}, Ljavafx/scene/control/ContextMenu;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v3

    const-string v4, "text-input-context-menu"

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v3

    .line 69
    :cond_0
    move-object v3, v0

    invoke-direct {v3}, Lcom/sun/javafx/scene/control/behavior/TextFieldBehavior;->handleFocusChange()V

    .line 72
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/control/TextField;->focusedProperty()Ljavafx/beans/property/ReadOnlyBooleanProperty;

    move-result-object v3

    move-object v4, v0

    invoke-static {v4}, Lcom/sun/javafx/scene/control/behavior/TextFieldBehavior$$Lambda$1;->lambdaFactory$(Lcom/sun/javafx/scene/control/behavior/TextFieldBehavior;)Ljavafx/beans/value/ChangeListener;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljavafx/beans/property/ReadOnlyBooleanProperty;->addListener(Ljavafx/beans/value/ChangeListener;)V

    .line 76
    move-object v3, v0

    move-object v4, v0

    move-object v5, v1

    invoke-static {v4, v5}, Lcom/sun/javafx/scene/control/behavior/TextFieldBehavior$$Lambda$2;->lambdaFactory$(Lcom/sun/javafx/scene/control/behavior/TextFieldBehavior;Ljavafx/scene/control/TextField;)Ljavafx/beans/value/ChangeListener;

    move-result-object v4

    iput-object v4, v3, Lcom/sun/javafx/scene/control/behavior/TextFieldBehavior;->focusOwnerListener:Ljavafx/beans/value/ChangeListener;

    .line 89
    new-instance v3, Ljavafx/beans/value/WeakChangeListener;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/behavior/TextFieldBehavior;->focusOwnerListener:Ljavafx/beans/value/ChangeListener;

    invoke-direct {v4, v5}, Ljavafx/beans/value/WeakChangeListener;-><init>(Ljavafx/beans/value/ChangeListener;)V

    move-object v2, v3

    .line 91
    .local v2, "weakFocusOwnerListener":Ljavafx/beans/value/WeakChangeListener;, "Ljavafx/beans/value/WeakChangeListener<Ljavafx/scene/Node;>;"
    move-object v3, v0

    move-object v4, v2

    invoke-static {v4}, Lcom/sun/javafx/scene/control/behavior/TextFieldBehavior$$Lambda$3;->lambdaFactory$(Ljavafx/beans/value/WeakChangeListener;)Ljavafx/beans/value/ChangeListener;

    move-result-object v4

    iput-object v4, v3, Lcom/sun/javafx/scene/control/behavior/TextFieldBehavior;->sceneListener:Ljavafx/beans/value/ChangeListener;

    .line 99
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/control/TextField;->sceneProperty()Ljavafx/beans/property/ReadOnlyObjectProperty;

    move-result-object v3

    new-instance v4, Ljavafx/beans/value/WeakChangeListener;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/scene/control/behavior/TextFieldBehavior;->sceneListener:Ljavafx/beans/value/ChangeListener;

    invoke-direct {v5, v6}, Ljavafx/beans/value/WeakChangeListener;-><init>(Ljavafx/beans/value/ChangeListener;)V

    invoke-virtual {v3, v4}, Ljavafx/beans/property/ReadOnlyObjectProperty;->addListener(Ljavafx/beans/value/ChangeListener;)V

    .line 101
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/control/TextField;->getScene()Ljavafx/scene/Scene;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 102
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/control/TextField;->getScene()Ljavafx/scene/Scene;

    move-result-object v3

    invoke-virtual {v3}, Ljavafx/scene/Scene;->focusOwnerProperty()Ljavafx/beans/property/ReadOnlyObjectProperty;

    move-result-object v3

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljavafx/beans/property/ReadOnlyObjectProperty;->addListener(Ljavafx/beans/value/ChangeListener;)V

    .line 106
    :cond_1
    invoke-static {}, Lcom/sun/javafx/scene/control/skin/Utils;->isTwoLevelFocus()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 107
    move-object v3, v0

    new-instance v4, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusBehavior;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v1

    invoke-direct {v5, v6}, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusBehavior;-><init>(Ljavafx/scene/Node;)V

    iput-object v4, v3, Lcom/sun/javafx/scene/control/behavior/TextFieldBehavior;->tlFocus:Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusBehavior;

    .line 109
    :cond_2
    return-void
.end method

.method static synthetic access$lambda$0(Lcom/sun/javafx/scene/control/behavior/TextFieldBehavior;Ljavafx/beans/value/ObservableValue;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-direct {v4, v5, v6, v7}, Lcom/sun/javafx/scene/control/behavior/TextFieldBehavior;->lambda$new$185(Ljavafx/beans/value/ObservableValue;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    return-void
.end method

.method static synthetic access$lambda$1(Lcom/sun/javafx/scene/control/behavior/TextFieldBehavior;Ljavafx/scene/control/TextField;Ljavafx/beans/value/ObservableValue;Ljavafx/scene/Node;Ljavafx/scene/Node;)V
    .locals 10

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    move-object v9, v4

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/sun/javafx/scene/control/behavior/TextFieldBehavior;->lambda$new$186(Ljavafx/scene/control/TextField;Ljavafx/beans/value/ObservableValue;Ljavafx/scene/Node;Ljavafx/scene/Node;)V

    return-void
.end method

.method static synthetic access$lambda$2(Ljavafx/beans/value/WeakChangeListener;Ljavafx/beans/value/ObservableValue;Ljavafx/scene/Scene;Ljavafx/scene/Scene;)V
    .locals 8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-static {v4, v5, v6, v7}, Lcom/sun/javafx/scene/control/behavior/TextFieldBehavior;->lambda$new$187(Ljavafx/beans/value/WeakChangeListener;Ljavafx/beans/value/ObservableValue;Ljavafx/scene/Scene;Ljavafx/scene/Scene;)V

    return-void
.end method

.method private beep()V
    .locals 0

    .prologue
    .line 227
    return-void
.end method

.method static calculateNodeToSceneTransform(Ljavafx/scene/Node;)Lcom/sun/javafx/geom/transform/Affine3D;
    .locals 5

    .prologue
    .line 160
    move-object v0, p0

    .local v0, "node":Ljavafx/scene/Node;
    new-instance v2, Lcom/sun/javafx/geom/transform/Affine3D;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Lcom/sun/javafx/geom/transform/Affine3D;-><init>()V

    move-object v1, v2

    .line 162
    .local v1, "transform":Lcom/sun/javafx/geom/transform/Affine3D;
    :cond_0
    move-object v2, v1

    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/Node;->impl_getLeafTransform()Lcom/sun/javafx/geom/transform/BaseTransform;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sun/javafx/geom/transform/Affine3D;->preConcatenate(Lcom/sun/javafx/geom/transform/BaseTransform;)V

    .line 163
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/Node;->getParent()Ljavafx/scene/Parent;

    move-result-object v2

    move-object v0, v2

    .line 164
    move-object v2, v0

    if-nez v2, :cond_0

    .line 166
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "node":Ljavafx/scene/Node;
    return-object v0
.end method

.method private handleFocusChange()V
    .locals 42

    .prologue
    .line 117
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/behavior/TextFieldBehavior;
    move-object v11, v1

    invoke-virtual {v11}, Lcom/sun/javafx/scene/control/behavior/TextFieldBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v11

    check-cast v11, Ljavafx/scene/control/TextField;

    move-object v2, v11

    .line 119
    .local v2, "textField":Ljavafx/scene/control/TextField;
    move-object v11, v2

    invoke-virtual {v11}, Ljavafx/scene/control/TextField;->isFocused()Z

    move-result v11

    if-eqz v11, :cond_4

    .line 120
    invoke-static {}, Lcom/sun/javafx/PlatformUtil;->isIOS()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 124
    sget-object v11, Lcom/sun/javafx/scene/control/behavior/TextFieldBehavior$TextInputTypes;->TEXT_FIELD:Lcom/sun/javafx/scene/control/behavior/TextFieldBehavior$TextInputTypes;

    move-object v3, v11

    .line 125
    .local v3, "type":Lcom/sun/javafx/scene/control/behavior/TextFieldBehavior$TextInputTypes;
    move-object v11, v2

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    const-class v12, Ljavafx/scene/control/PasswordField;

    invoke-virtual {v11, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 126
    sget-object v11, Lcom/sun/javafx/scene/control/behavior/TextFieldBehavior$TextInputTypes;->PASSWORD_FIELD:Lcom/sun/javafx/scene/control/behavior/TextFieldBehavior$TextInputTypes;

    move-object v3, v11

    .line 130
    :cond_0
    :goto_0
    move-object v11, v2

    invoke-virtual {v11}, Ljavafx/scene/control/TextField;->getBoundsInParent()Ljavafx/geometry/Bounds;

    move-result-object v11

    move-object v4, v11

    .line 131
    .local v4, "bounds":Ljavafx/geometry/Bounds;
    move-object v11, v4

    invoke-virtual {v11}, Ljavafx/geometry/Bounds;->getWidth()D

    move-result-wide v11

    move-wide v5, v11

    .line 132
    .local v5, "w":D
    move-object v11, v4

    invoke-virtual {v11}, Ljavafx/geometry/Bounds;->getHeight()D

    move-result-wide v11

    move-wide v7, v11

    .line 133
    .local v7, "h":D
    move-object v11, v2

    invoke-static {v11}, Lcom/sun/javafx/scene/control/behavior/TextFieldBehavior;->calculateNodeToSceneTransform(Ljavafx/scene/Node;)Lcom/sun/javafx/geom/transform/Affine3D;

    move-result-object v11

    move-object v9, v11

    .line 137
    .local v9, "trans":Lcom/sun/javafx/geom/transform/Affine3D;
    move-object v11, v2

    invoke-virtual {v11}, Ljavafx/scene/control/TextField;->getText()Ljava/lang/String;

    move-result-object v11

    move-object v10, v11

    .line 141
    .local v10, "text":Ljava/lang/String;
    move-object v11, v2

    invoke-virtual {v11}, Ljavafx/scene/control/TextField;->getScene()Ljavafx/scene/Scene;

    move-result-object v11

    invoke-virtual {v11}, Ljavafx/scene/Scene;->getWindow()Ljavafx/stage/Window;

    move-result-object v11

    invoke-virtual {v11}, Ljavafx/stage/Window;->impl_getPeer()Lcom/sun/javafx/tk/TKStage;

    move-result-object v11

    move-object v12, v10

    move-object v13, v3

    invoke-virtual {v13}, Lcom/sun/javafx/scene/control/behavior/TextFieldBehavior$TextInputTypes;->ordinal()I

    move-result v13

    move-wide v14, v5

    move-wide/from16 v16, v7

    move-object/from16 v18, v9

    .line 142
    invoke-virtual/range {v18 .. v18}, Lcom/sun/javafx/geom/transform/Affine3D;->getMxx()D

    move-result-wide v18

    move-object/from16 v20, v9

    invoke-virtual/range {v20 .. v20}, Lcom/sun/javafx/geom/transform/Affine3D;->getMxy()D

    move-result-wide v20

    move-object/from16 v22, v9

    invoke-virtual/range {v22 .. v22}, Lcom/sun/javafx/geom/transform/Affine3D;->getMxz()D

    move-result-wide v22

    move-object/from16 v24, v9

    invoke-virtual/range {v24 .. v24}, Lcom/sun/javafx/geom/transform/Affine3D;->getMxt()D

    move-result-wide v24

    move-object/from16 v26, v9

    .line 143
    invoke-virtual/range {v26 .. v26}, Lcom/sun/javafx/geom/transform/Affine3D;->getMyx()D

    move-result-wide v26

    move-object/from16 v28, v9

    invoke-virtual/range {v28 .. v28}, Lcom/sun/javafx/geom/transform/Affine3D;->getMyy()D

    move-result-wide v28

    move-object/from16 v30, v9

    invoke-virtual/range {v30 .. v30}, Lcom/sun/javafx/geom/transform/Affine3D;->getMyz()D

    move-result-wide v30

    move-object/from16 v32, v9

    invoke-virtual/range {v32 .. v32}, Lcom/sun/javafx/geom/transform/Affine3D;->getMyt()D

    move-result-wide v32

    move-object/from16 v34, v9

    .line 144
    invoke-virtual/range {v34 .. v34}, Lcom/sun/javafx/geom/transform/Affine3D;->getMzx()D

    move-result-wide v34

    move-object/from16 v36, v9

    invoke-virtual/range {v36 .. v36}, Lcom/sun/javafx/geom/transform/Affine3D;->getMzy()D

    move-result-wide v36

    move-object/from16 v38, v9

    invoke-virtual/range {v38 .. v38}, Lcom/sun/javafx/geom/transform/Affine3D;->getMzz()D

    move-result-wide v38

    move-object/from16 v40, v9

    invoke-virtual/range {v40 .. v40}, Lcom/sun/javafx/geom/transform/Affine3D;->getMzt()D

    move-result-wide v40

    .line 141
    invoke-interface/range {v11 .. v41}, Lcom/sun/javafx/tk/TKStage;->requestInput(Ljava/lang/String;IDDDDDDDDDDDDDD)V

    .line 146
    .end local v3    # "type":Lcom/sun/javafx/scene/control/behavior/TextFieldBehavior$TextInputTypes;
    .end local v4    # "bounds":Ljavafx/geometry/Bounds;
    .end local v5    # "w":D
    .end local v7    # "h":D
    .end local v9    # "trans":Lcom/sun/javafx/geom/transform/Affine3D;
    .end local v10    # "text":Ljava/lang/String;
    :cond_1
    move-object v11, v1

    iget-boolean v11, v11, Lcom/sun/javafx/scene/control/behavior/TextFieldBehavior;->focusGainedByMouseClick:Z

    if-nez v11, :cond_2

    .line 147
    move-object v11, v1

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lcom/sun/javafx/scene/control/behavior/TextFieldBehavior;->setCaretAnimating(Z)V

    .line 157
    :cond_2
    :goto_1
    return-void

    .line 127
    .restart local v3    # "type":Lcom/sun/javafx/scene/control/behavior/TextFieldBehavior$TextInputTypes;
    :cond_3
    move-object v11, v2

    invoke-virtual {v11}, Ljavafx/scene/control/TextField;->getParent()Ljavafx/scene/Parent;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    const-class v12, Ljavafx/scene/control/ComboBox;

    invoke-virtual {v11, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 128
    sget-object v11, Lcom/sun/javafx/scene/control/behavior/TextFieldBehavior$TextInputTypes;->EDITABLE_COMBO:Lcom/sun/javafx/scene/control/behavior/TextFieldBehavior$TextInputTypes;

    move-object v3, v11

    goto/16 :goto_0

    .line 150
    .end local v3    # "type":Lcom/sun/javafx/scene/control/behavior/TextFieldBehavior$TextInputTypes;
    :cond_4
    invoke-static {}, Lcom/sun/javafx/PlatformUtil;->isIOS()Z

    move-result v11

    if-eqz v11, :cond_5

    move-object v11, v2

    invoke-virtual {v11}, Ljavafx/scene/control/TextField;->getScene()Ljavafx/scene/Scene;

    move-result-object v11

    if-eqz v11, :cond_5

    .line 152
    move-object v11, v2

    invoke-virtual {v11}, Ljavafx/scene/control/TextField;->getScene()Ljavafx/scene/Scene;

    move-result-object v11

    invoke-virtual {v11}, Ljavafx/scene/Scene;->getWindow()Ljavafx/stage/Window;

    move-result-object v11

    invoke-virtual {v11}, Ljavafx/stage/Window;->impl_getPeer()Lcom/sun/javafx/tk/TKStage;

    move-result-object v11

    invoke-interface {v11}, Lcom/sun/javafx/tk/TKStage;->releaseInput()V

    .line 154
    :cond_5
    move-object v11, v1

    const/4 v12, 0x0

    iput-boolean v12, v11, Lcom/sun/javafx/scene/control/behavior/TextFieldBehavior;->focusGainedByMouseClick:Z

    .line 155
    move-object v11, v1

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/sun/javafx/scene/control/behavior/TextFieldBehavior;->setCaretAnimating(Z)V

    goto :goto_1
.end method

.method private synthetic lambda$new$185(Ljavafx/beans/value/ObservableValue;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 5

    .prologue
    .line 73
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TextFieldBehavior;
    move-object v1, p1

    .local v1, "observable":Ljavafx/beans/value/ObservableValue;
    move-object v2, p2

    .local v2, "oldValue":Ljava/lang/Boolean;
    move-object v3, p3

    .local v3, "newValue":Ljava/lang/Boolean;
    move-object v4, v0

    invoke-direct {v4}, Lcom/sun/javafx/scene/control/behavior/TextFieldBehavior;->handleFocusChange()V

    .line 74
    return-void
.end method

.method private synthetic lambda$new$186(Ljavafx/scene/control/TextField;Ljavafx/beans/value/ObservableValue;Ljavafx/scene/Node;Ljavafx/scene/Node;)V
    .locals 8

    .prologue
    .line 80
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TextFieldBehavior;
    move-object v1, p1

    .local v1, "textField":Ljavafx/scene/control/TextField;
    move-object v2, p2

    .local v2, "observable":Ljavafx/beans/value/ObservableValue;
    move-object v3, p3

    .local v3, "oldValue":Ljavafx/scene/Node;
    move-object v4, p4

    .local v4, "newValue":Ljavafx/scene/Node;
    move-object v5, v4

    move-object v6, v1

    if-ne v5, v6, :cond_1

    .line 81
    move-object v5, v0

    iget-boolean v5, v5, Lcom/sun/javafx/scene/control/behavior/TextFieldBehavior;->focusGainedByMouseClick:Z

    if-nez v5, :cond_0

    .line 82
    move-object v5, v1

    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/control/TextField;->getLength()I

    move-result v6

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/control/TextField;->selectRange(II)V

    .line 87
    :cond_0
    :goto_0
    return-void

    .line 85
    :cond_1
    move-object v5, v1

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/control/TextField;->selectRange(II)V

    goto :goto_0
.end method

.method private static synthetic lambda$new$187(Ljavafx/beans/value/WeakChangeListener;Ljavafx/beans/value/ObservableValue;Ljavafx/scene/Scene;Ljavafx/scene/Scene;)V
    .locals 6

    .prologue
    .line 92
    move-object v0, p0

    .local v0, "weakFocusOwnerListener":Ljavafx/beans/value/WeakChangeListener;
    move-object v1, p1

    .local v1, "observable":Ljavafx/beans/value/ObservableValue;
    move-object v2, p2

    .local v2, "oldValue":Ljavafx/scene/Scene;
    move-object v3, p3

    .local v3, "newValue":Ljavafx/scene/Scene;
    move-object v4, v2

    if-eqz v4, :cond_0

    .line 93
    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/scene/Scene;->focusOwnerProperty()Ljavafx/beans/property/ReadOnlyObjectProperty;

    move-result-object v4

    move-object v5, v0

    invoke-virtual {v4, v5}, Ljavafx/beans/property/ReadOnlyObjectProperty;->removeListener(Ljavafx/beans/value/ChangeListener;)V

    .line 95
    :cond_0
    move-object v4, v3

    if-eqz v4, :cond_1

    .line 96
    move-object v4, v3

    invoke-virtual {v4}, Ljavafx/scene/Scene;->focusOwnerProperty()Ljavafx/beans/property/ReadOnlyObjectProperty;

    move-result-object v4

    move-object v5, v0

    invoke-virtual {v4, v5}, Ljavafx/beans/property/ReadOnlyObjectProperty;->addListener(Ljavafx/beans/value/ChangeListener;)V

    .line 98
    :cond_1
    return-void
.end method


# virtual methods
.method protected cancelEdit(Ljavafx/scene/input/KeyEvent;)V
    .locals 5

    .prologue
    .line 189
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TextFieldBehavior;
    move-object v1, p1

    .local v1, "event":Ljavafx/scene/input/KeyEvent;
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/behavior/TextFieldBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v3

    check-cast v3, Ljavafx/scene/control/TextField;

    move-object v2, v3

    .line 190
    .local v2, "textField":Ljavafx/scene/control/TextField;
    move-object v3, v2

    invoke-virtual {v3}, Ljavafx/scene/control/TextField;->getTextFormatter()Ljavafx/scene/control/TextFormatter;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 191
    move-object v3, v2

    invoke-virtual {v3}, Ljavafx/scene/control/TextField;->cancelEdit()V

    .line 195
    :goto_0
    return-void

    .line 193
    :cond_0
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Lcom/sun/javafx/scene/control/behavior/TextFieldBehavior;->forwardToParent(Ljavafx/scene/input/KeyEvent;)V

    goto :goto_0
.end method

.method public contextMenuRequested(Ljavafx/scene/input/ContextMenuEvent;)V
    .locals 27

    .prologue
    .line 339
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/behavior/TextFieldBehavior;
    move-object/from16 v2, p1

    .local v2, "e":Ljavafx/scene/input/ContextMenuEvent;
    move-object/from16 v18, v1

    invoke-virtual/range {v18 .. v18}, Lcom/sun/javafx/scene/control/behavior/TextFieldBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v18

    check-cast v18, Ljavafx/scene/control/TextField;

    move-object/from16 v3, v18

    .line 341
    .local v3, "textField":Ljavafx/scene/control/TextField;
    move-object/from16 v18, v1

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sun/javafx/scene/control/behavior/TextFieldBehavior;->contextMenu:Ljavafx/scene/control/ContextMenu;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljavafx/scene/control/ContextMenu;->isShowing()Z

    move-result v18

    if-eqz v18, :cond_1

    .line 342
    move-object/from16 v18, v1

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sun/javafx/scene/control/behavior/TextFieldBehavior;->contextMenu:Ljavafx/scene/control/ContextMenu;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljavafx/scene/control/ContextMenu;->hide()V

    .line 395
    :cond_0
    :goto_0
    move-object/from16 v18, v2

    invoke-virtual/range {v18 .. v18}, Ljavafx/scene/input/ContextMenuEvent;->consume()V

    .line 396
    return-void

    .line 343
    :cond_1
    move-object/from16 v18, v3

    invoke-virtual/range {v18 .. v18}, Ljavafx/scene/control/TextField;->getContextMenu()Ljavafx/scene/control/ContextMenu;

    move-result-object v18

    if-nez v18, :cond_0

    .line 344
    move-object/from16 v18, v2

    invoke-virtual/range {v18 .. v18}, Ljavafx/scene/input/ContextMenuEvent;->getScreenX()D

    move-result-wide v18

    move-wide/from16 v4, v18

    .line 345
    .local v4, "screenX":D
    move-object/from16 v18, v2

    invoke-virtual/range {v18 .. v18}, Ljavafx/scene/input/ContextMenuEvent;->getScreenY()D

    move-result-wide v18

    move-wide/from16 v6, v18

    .line 346
    .local v6, "screenY":D
    move-object/from16 v18, v2

    invoke-virtual/range {v18 .. v18}, Ljavafx/scene/input/ContextMenuEvent;->getSceneX()D

    move-result-wide v18

    move-wide/from16 v8, v18

    .line 348
    .local v8, "sceneX":D
    sget-boolean v18, Lcom/sun/javafx/scene/control/behavior/TextFieldBehavior;->IS_TOUCH_SUPPORTED:Z

    if-eqz v18, :cond_3

    .line 350
    move-object/from16 v18, v3

    invoke-virtual/range {v18 .. v18}, Ljavafx/scene/control/TextField;->getSelection()Ljavafx/scene/control/IndexRange;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljavafx/scene/control/IndexRange;->getLength()I

    move-result v18

    if-nez v18, :cond_4

    .line 351
    move-object/from16 v18, v1

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sun/javafx/scene/control/behavior/TextFieldBehavior;->skin:Lcom/sun/javafx/scene/control/skin/TextFieldSkin;

    move-object/from16 v18, v0

    move-object/from16 v19, v1

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/sun/javafx/scene/control/behavior/TextFieldBehavior;->skin:Lcom/sun/javafx/scene/control/skin/TextFieldSkin;

    move-object/from16 v19, v0

    move-object/from16 v20, v2

    invoke-virtual/range {v20 .. v20}, Ljavafx/scene/input/ContextMenuEvent;->getX()D

    move-result-wide v20

    move-object/from16 v22, v2

    invoke-virtual/range {v22 .. v22}, Ljavafx/scene/input/ContextMenuEvent;->getY()D

    move-result-wide v22

    invoke-virtual/range {v19 .. v23}, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->getIndex(DD)Lcom/sun/javafx/scene/text/HitInfo;

    move-result-object v19

    const/16 v20, 0x0

    invoke-virtual/range {v18 .. v20}, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->positionCaret(Lcom/sun/javafx/scene/text/HitInfo;Z)V

    .line 352
    move-object/from16 v18, v1

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sun/javafx/scene/control/behavior/TextFieldBehavior;->skin:Lcom/sun/javafx/scene/control/skin/TextFieldSkin;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->getMenuPosition()Ljavafx/geometry/Point2D;

    move-result-object v18

    move-object/from16 v10, v18

    .line 361
    .local v10, "menuPos":Ljavafx/geometry/Point2D;
    :cond_2
    :goto_1
    move-object/from16 v18, v10

    if-eqz v18, :cond_3

    .line 362
    move-object/from16 v18, v1

    invoke-virtual/range {v18 .. v18}, Lcom/sun/javafx/scene/control/behavior/TextFieldBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v18

    check-cast v18, Ljavafx/scene/control/TextField;

    move-object/from16 v19, v10

    invoke-virtual/range {v18 .. v19}, Ljavafx/scene/control/TextField;->localToScene(Ljavafx/geometry/Point2D;)Ljavafx/geometry/Point2D;

    move-result-object v18

    move-object/from16 v11, v18

    .line 363
    .local v11, "p":Ljavafx/geometry/Point2D;
    move-object/from16 v18, v1

    invoke-virtual/range {v18 .. v18}, Lcom/sun/javafx/scene/control/behavior/TextFieldBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v18

    check-cast v18, Ljavafx/scene/control/TextField;

    invoke-virtual/range {v18 .. v18}, Ljavafx/scene/control/TextField;->getScene()Ljavafx/scene/Scene;

    move-result-object v18

    move-object/from16 v12, v18

    .line 364
    .local v12, "scene":Ljavafx/scene/Scene;
    move-object/from16 v18, v12

    invoke-virtual/range {v18 .. v18}, Ljavafx/scene/Scene;->getWindow()Ljavafx/stage/Window;

    move-result-object v18

    move-object/from16 v13, v18

    .line 365
    .local v13, "window":Ljavafx/stage/Window;
    new-instance v18, Ljavafx/geometry/Point2D;

    move-object/from16 v26, v18

    move-object/from16 v18, v26

    move-object/from16 v19, v26

    move-object/from16 v20, v13

    invoke-virtual/range {v20 .. v20}, Ljavafx/stage/Window;->getX()D

    move-result-wide v20

    move-object/from16 v22, v12

    invoke-virtual/range {v22 .. v22}, Ljavafx/scene/Scene;->getX()D

    move-result-wide v22

    add-double v20, v20, v22

    move-object/from16 v22, v11

    invoke-virtual/range {v22 .. v22}, Ljavafx/geometry/Point2D;->getX()D

    move-result-wide v22

    add-double v20, v20, v22

    move-object/from16 v22, v13

    .line 366
    invoke-virtual/range {v22 .. v22}, Ljavafx/stage/Window;->getY()D

    move-result-wide v22

    move-object/from16 v24, v12

    invoke-virtual/range {v24 .. v24}, Ljavafx/scene/Scene;->getY()D

    move-result-wide v24

    add-double v22, v22, v24

    move-object/from16 v24, v11

    invoke-virtual/range {v24 .. v24}, Ljavafx/geometry/Point2D;->getY()D

    move-result-wide v24

    add-double v22, v22, v24

    invoke-direct/range {v19 .. v23}, Ljavafx/geometry/Point2D;-><init>(DD)V

    move-object/from16 v14, v18

    .line 367
    .local v14, "location":Ljavafx/geometry/Point2D;
    move-object/from16 v18, v14

    invoke-virtual/range {v18 .. v18}, Ljavafx/geometry/Point2D;->getX()D

    move-result-wide v18

    move-wide/from16 v4, v18

    .line 368
    move-object/from16 v18, v11

    invoke-virtual/range {v18 .. v18}, Ljavafx/geometry/Point2D;->getX()D

    move-result-wide v18

    move-wide/from16 v8, v18

    .line 369
    move-object/from16 v18, v14

    invoke-virtual/range {v18 .. v18}, Ljavafx/geometry/Point2D;->getY()D

    move-result-wide v18

    move-wide/from16 v6, v18

    .line 373
    .end local v10    # "menuPos":Ljavafx/geometry/Point2D;
    .end local v11    # "p":Ljavafx/geometry/Point2D;
    .end local v12    # "scene":Ljavafx/scene/Scene;
    .end local v13    # "window":Ljavafx/stage/Window;
    .end local v14    # "location":Ljavafx/geometry/Point2D;
    :cond_3
    move-object/from16 v18, v1

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sun/javafx/scene/control/behavior/TextFieldBehavior;->skin:Lcom/sun/javafx/scene/control/skin/TextFieldSkin;

    move-object/from16 v18, v0

    move-object/from16 v19, v1

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/sun/javafx/scene/control/behavior/TextFieldBehavior;->contextMenu:Ljavafx/scene/control/ContextMenu;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->populateContextMenu(Ljavafx/scene/control/ContextMenu;)V

    .line 374
    move-object/from16 v18, v1

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sun/javafx/scene/control/behavior/TextFieldBehavior;->contextMenu:Ljavafx/scene/control/ContextMenu;

    move-object/from16 v18, v0

    const-wide/high16 v19, -0x4010000000000000L    # -1.0

    invoke-virtual/range {v18 .. v20}, Ljavafx/scene/control/ContextMenu;->prefWidth(D)D

    move-result-wide v18

    move-wide/from16 v10, v18

    .line 375
    .local v10, "menuWidth":D
    move-wide/from16 v18, v4

    sget-boolean v20, Lcom/sun/javafx/scene/control/behavior/TextFieldBehavior;->IS_TOUCH_SUPPORTED:Z

    if-eqz v20, :cond_6

    move-wide/from16 v20, v10

    const-wide/high16 v22, 0x4000000000000000L    # 2.0

    div-double v20, v20, v22

    :goto_2
    sub-double v18, v18, v20

    move-wide/from16 v12, v18

    .line 376
    .local v12, "menuX":D
    move-wide/from16 v18, v4

    const-wide/16 v20, 0x0

    invoke-static/range {v18 .. v21}, Lcom/sun/javafx/util/Utils;->getScreenForPoint(DD)Ljavafx/stage/Screen;

    move-result-object v18

    move-object/from16 v14, v18

    .line 377
    .local v14, "currentScreen":Ljavafx/stage/Screen;
    move-object/from16 v18, v14

    invoke-virtual/range {v18 .. v18}, Ljavafx/stage/Screen;->getBounds()Ljavafx/geometry/Rectangle2D;

    move-result-object v18

    move-object/from16 v15, v18

    .line 379
    .local v15, "bounds":Ljavafx/geometry/Rectangle2D;
    move-wide/from16 v18, v12

    move-object/from16 v20, v15

    invoke-virtual/range {v20 .. v20}, Ljavafx/geometry/Rectangle2D;->getMinX()D

    move-result-wide v20

    cmpg-double v18, v18, v20

    if-gez v18, :cond_7

    .line 380
    move-object/from16 v18, v1

    invoke-virtual/range {v18 .. v18}, Lcom/sun/javafx/scene/control/behavior/TextFieldBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v18

    check-cast v18, Ljavafx/scene/control/TextField;

    invoke-virtual/range {v18 .. v18}, Ljavafx/scene/control/TextField;->getProperties()Ljavafx/collections/ObservableMap;

    move-result-object v18

    const-string v19, "CONTEXT_MENU_SCREEN_X"

    move-wide/from16 v20, v4

    invoke-static/range {v20 .. v21}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v20

    invoke-interface/range {v18 .. v20}, Ljavafx/collections/ObservableMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    .line 381
    move-object/from16 v18, v1

    invoke-virtual/range {v18 .. v18}, Lcom/sun/javafx/scene/control/behavior/TextFieldBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v18

    check-cast v18, Ljavafx/scene/control/TextField;

    invoke-virtual/range {v18 .. v18}, Ljavafx/scene/control/TextField;->getProperties()Ljavafx/collections/ObservableMap;

    move-result-object v18

    const-string v19, "CONTEXT_MENU_SCENE_X"

    move-wide/from16 v20, v8

    invoke-static/range {v20 .. v21}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v20

    invoke-interface/range {v18 .. v20}, Ljavafx/collections/ObservableMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    .line 382
    move-object/from16 v18, v1

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sun/javafx/scene/control/behavior/TextFieldBehavior;->contextMenu:Ljavafx/scene/control/ContextMenu;

    move-object/from16 v18, v0

    move-object/from16 v19, v1

    invoke-virtual/range {v19 .. v19}, Lcom/sun/javafx/scene/control/behavior/TextFieldBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v19

    move-object/from16 v20, v15

    invoke-virtual/range {v20 .. v20}, Ljavafx/geometry/Rectangle2D;->getMinX()D

    move-result-wide v20

    move-wide/from16 v22, v6

    invoke-virtual/range {v18 .. v23}, Ljavafx/scene/control/ContextMenu;->show(Ljavafx/scene/Node;DD)V

    goto/16 :goto_0

    .line 354
    .end local v10    # "menuWidth":D
    .end local v12    # "menuX":D
    .end local v14    # "currentScreen":Ljavafx/stage/Screen;
    .end local v15    # "bounds":Ljavafx/geometry/Rectangle2D;
    :cond_4
    move-object/from16 v18, v1

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sun/javafx/scene/control/behavior/TextFieldBehavior;->skin:Lcom/sun/javafx/scene/control/skin/TextFieldSkin;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->getMenuPosition()Ljavafx/geometry/Point2D;

    move-result-object v18

    move-object/from16 v10, v18

    .line 355
    .local v10, "menuPos":Ljavafx/geometry/Point2D;
    move-object/from16 v18, v10

    if-eqz v18, :cond_2

    move-object/from16 v18, v10

    invoke-virtual/range {v18 .. v18}, Ljavafx/geometry/Point2D;->getX()D

    move-result-wide v18

    const-wide/16 v20, 0x0

    cmpg-double v18, v18, v20

    if-lez v18, :cond_5

    move-object/from16 v18, v10

    invoke-virtual/range {v18 .. v18}, Ljavafx/geometry/Point2D;->getY()D

    move-result-wide v18

    const-wide/16 v20, 0x0

    cmpg-double v18, v18, v20

    if-gtz v18, :cond_2

    .line 356
    :cond_5
    move-object/from16 v18, v1

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sun/javafx/scene/control/behavior/TextFieldBehavior;->skin:Lcom/sun/javafx/scene/control/skin/TextFieldSkin;

    move-object/from16 v18, v0

    move-object/from16 v19, v1

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/sun/javafx/scene/control/behavior/TextFieldBehavior;->skin:Lcom/sun/javafx/scene/control/skin/TextFieldSkin;

    move-object/from16 v19, v0

    move-object/from16 v20, v2

    invoke-virtual/range {v20 .. v20}, Ljavafx/scene/input/ContextMenuEvent;->getX()D

    move-result-wide v20

    move-object/from16 v22, v2

    invoke-virtual/range {v22 .. v22}, Ljavafx/scene/input/ContextMenuEvent;->getY()D

    move-result-wide v22

    invoke-virtual/range {v19 .. v23}, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->getIndex(DD)Lcom/sun/javafx/scene/text/HitInfo;

    move-result-object v19

    const/16 v20, 0x0

    invoke-virtual/range {v18 .. v20}, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->positionCaret(Lcom/sun/javafx/scene/text/HitInfo;Z)V

    .line 357
    move-object/from16 v18, v1

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sun/javafx/scene/control/behavior/TextFieldBehavior;->skin:Lcom/sun/javafx/scene/control/skin/TextFieldSkin;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->getMenuPosition()Ljavafx/geometry/Point2D;

    move-result-object v18

    move-object/from16 v10, v18

    goto/16 :goto_1

    .line 375
    .local v10, "menuWidth":D
    :cond_6
    const-wide/16 v20, 0x0

    goto/16 :goto_2

    .line 383
    .restart local v12    # "menuX":D
    .restart local v14    # "currentScreen":Ljavafx/stage/Screen;
    .restart local v15    # "bounds":Ljavafx/geometry/Rectangle2D;
    :cond_7
    move-wide/from16 v18, v4

    move-wide/from16 v20, v10

    add-double v18, v18, v20

    move-object/from16 v20, v15

    invoke-virtual/range {v20 .. v20}, Ljavafx/geometry/Rectangle2D;->getMaxX()D

    move-result-wide v20

    cmpl-double v18, v18, v20

    if-lez v18, :cond_8

    .line 384
    move-wide/from16 v18, v10

    move-object/from16 v20, v15

    invoke-virtual/range {v20 .. v20}, Ljavafx/geometry/Rectangle2D;->getMaxX()D

    move-result-wide v20

    move-wide/from16 v22, v4

    sub-double v20, v20, v22

    sub-double v18, v18, v20

    move-wide/from16 v16, v18

    .line 385
    .local v16, "leftOver":D
    move-object/from16 v18, v1

    invoke-virtual/range {v18 .. v18}, Lcom/sun/javafx/scene/control/behavior/TextFieldBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v18

    check-cast v18, Ljavafx/scene/control/TextField;

    invoke-virtual/range {v18 .. v18}, Ljavafx/scene/control/TextField;->getProperties()Ljavafx/collections/ObservableMap;

    move-result-object v18

    const-string v19, "CONTEXT_MENU_SCREEN_X"

    move-wide/from16 v20, v4

    invoke-static/range {v20 .. v21}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v20

    invoke-interface/range {v18 .. v20}, Ljavafx/collections/ObservableMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    .line 386
    move-object/from16 v18, v1

    invoke-virtual/range {v18 .. v18}, Lcom/sun/javafx/scene/control/behavior/TextFieldBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v18

    check-cast v18, Ljavafx/scene/control/TextField;

    invoke-virtual/range {v18 .. v18}, Ljavafx/scene/control/TextField;->getProperties()Ljavafx/collections/ObservableMap;

    move-result-object v18

    const-string v19, "CONTEXT_MENU_SCENE_X"

    move-wide/from16 v20, v8

    invoke-static/range {v20 .. v21}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v20

    invoke-interface/range {v18 .. v20}, Ljavafx/collections/ObservableMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    .line 387
    move-object/from16 v18, v1

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sun/javafx/scene/control/behavior/TextFieldBehavior;->contextMenu:Ljavafx/scene/control/ContextMenu;

    move-object/from16 v18, v0

    move-object/from16 v19, v1

    invoke-virtual/range {v19 .. v19}, Lcom/sun/javafx/scene/control/behavior/TextFieldBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v19

    move-wide/from16 v20, v4

    move-wide/from16 v22, v16

    sub-double v20, v20, v22

    move-wide/from16 v22, v6

    invoke-virtual/range {v18 .. v23}, Ljavafx/scene/control/ContextMenu;->show(Ljavafx/scene/Node;DD)V

    .line 388
    goto/16 :goto_0

    .line 389
    .end local v16    # "leftOver":D
    :cond_8
    move-object/from16 v18, v1

    invoke-virtual/range {v18 .. v18}, Lcom/sun/javafx/scene/control/behavior/TextFieldBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v18

    check-cast v18, Ljavafx/scene/control/TextField;

    invoke-virtual/range {v18 .. v18}, Ljavafx/scene/control/TextField;->getProperties()Ljavafx/collections/ObservableMap;

    move-result-object v18

    const-string v19, "CONTEXT_MENU_SCREEN_X"

    const/16 v20, 0x0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-interface/range {v18 .. v20}, Ljavafx/collections/ObservableMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    .line 390
    move-object/from16 v18, v1

    invoke-virtual/range {v18 .. v18}, Lcom/sun/javafx/scene/control/behavior/TextFieldBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v18

    check-cast v18, Ljavafx/scene/control/TextField;

    invoke-virtual/range {v18 .. v18}, Ljavafx/scene/control/TextField;->getProperties()Ljavafx/collections/ObservableMap;

    move-result-object v18

    const-string v19, "CONTEXT_MENU_SCENE_X"

    const/16 v20, 0x0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-interface/range {v18 .. v20}, Ljavafx/collections/ObservableMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    .line 391
    move-object/from16 v18, v1

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sun/javafx/scene/control/behavior/TextFieldBehavior;->contextMenu:Ljavafx/scene/control/ContextMenu;

    move-object/from16 v18, v0

    move-object/from16 v19, v1

    invoke-virtual/range {v19 .. v19}, Lcom/sun/javafx/scene/control/behavior/TextFieldBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v19

    move-wide/from16 v20, v12

    move-wide/from16 v22, v6

    invoke-virtual/range {v18 .. v23}, Ljavafx/scene/control/ContextMenu;->show(Ljavafx/scene/Node;DD)V

    goto/16 :goto_0
.end method

.method protected deleteChar(Z)V
    .locals 4

    .prologue
    .line 198
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TextFieldBehavior;
    move v1, p1

    .local v1, "previous":Z
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/behavior/TextFieldBehavior;->skin:Lcom/sun/javafx/scene/control/skin/TextFieldSkin;

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->deleteChar(Z)V

    .line 199
    return-void
.end method

.method protected deleteFromLineStart()V
    .locals 7

    .prologue
    .line 206
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TextFieldBehavior;
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/behavior/TextFieldBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v3

    check-cast v3, Ljavafx/scene/control/TextField;

    move-object v1, v3

    .line 207
    .local v1, "textField":Ljavafx/scene/control/TextField;
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/control/TextField;->getCaretPosition()I

    move-result v3

    move v2, v3

    .line 209
    .local v2, "end":I
    move v3, v2

    if-lez v3, :cond_0

    .line 210
    move-object v3, v0

    const/4 v4, 0x0

    move v5, v2

    const-string v6, ""

    invoke-virtual {v3, v4, v5, v6}, Lcom/sun/javafx/scene/control/behavior/TextFieldBehavior;->replaceText(IILjava/lang/String;)V

    .line 212
    :cond_0
    return-void
.end method

.method public dispose()V
    .locals 2

    .prologue
    .line 112
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TextFieldBehavior;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/behavior/TextFieldBehavior;->tlFocus:Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusBehavior;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/behavior/TextFieldBehavior;->tlFocus:Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusBehavior;

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/behavior/TwoLevelFocusBehavior;->dispose()V

    .line 113
    :cond_0
    move-object v1, v0

    invoke-super {v1}, Lcom/sun/javafx/scene/control/behavior/TextInputControlBehavior;->dispose()V

    .line 114
    return-void
.end method

.method protected fire(Ljavafx/scene/input/KeyEvent;)V
    .locals 10

    .prologue
    .line 175
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TextFieldBehavior;
    move-object v1, p1

    .local v1, "event":Ljavafx/scene/input/KeyEvent;
    move-object v5, v0

    invoke-virtual {v5}, Lcom/sun/javafx/scene/control/behavior/TextFieldBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v5

    check-cast v5, Ljavafx/scene/control/TextField;

    move-object v2, v5

    .line 176
    .local v2, "textField":Ljavafx/scene/control/TextField;
    move-object v5, v2

    invoke-virtual {v5}, Ljavafx/scene/control/TextField;->getOnAction()Ljavafx/event/EventHandler;

    move-result-object v5

    move-object v3, v5

    .line 177
    .local v3, "onAction":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<Ljavafx/event/ActionEvent;>;"
    new-instance v5, Ljavafx/event/ActionEvent;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v2

    const/4 v8, 0x0

    invoke-direct {v6, v7, v8}, Ljavafx/event/ActionEvent;-><init>(Ljava/lang/Object;Ljavafx/event/EventTarget;)V

    move-object v4, v5

    .line 179
    .local v4, "actionEvent":Ljavafx/event/ActionEvent;
    move-object v5, v2

    move-object v6, v4

    invoke-virtual {v5, v6}, Ljavafx/scene/control/TextField;->fireEvent(Ljavafx/event/Event;)V

    .line 180
    move-object v5, v2

    invoke-virtual {v5}, Ljavafx/scene/control/TextField;->commitValue()V

    .line 182
    move-object v5, v3

    if-nez v5, :cond_0

    move-object v5, v4

    invoke-virtual {v5}, Ljavafx/event/ActionEvent;->isConsumed()Z

    move-result v5

    if-nez v5, :cond_0

    .line 183
    move-object v5, v0

    move-object v6, v1

    invoke-virtual {v5, v6}, Lcom/sun/javafx/scene/control/behavior/TextFieldBehavior;->forwardToParent(Ljavafx/scene/input/KeyEvent;)V

    .line 185
    :cond_0
    return-void
.end method

.method protected mouseDoubleClick(Lcom/sun/javafx/scene/text/HitInfo;)V
    .locals 4

    .prologue
    .line 427
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TextFieldBehavior;
    move-object v1, p1

    .local v1, "hit":Lcom/sun/javafx/scene/text/HitInfo;
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/behavior/TextFieldBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v3

    check-cast v3, Ljavafx/scene/control/TextField;

    move-object v2, v3

    .line 428
    .local v2, "textField":Ljavafx/scene/control/TextField;
    move-object v3, v2

    invoke-virtual {v3}, Ljavafx/scene/control/TextField;->previousWord()V

    .line 429
    invoke-static {}, Lcom/sun/javafx/PlatformUtil;->isWindows()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 430
    move-object v3, v2

    invoke-virtual {v3}, Ljavafx/scene/control/TextField;->selectNextWord()V

    .line 434
    :goto_0
    return-void

    .line 432
    :cond_0
    move-object v3, v2

    invoke-virtual {v3}, Ljavafx/scene/control/TextField;->selectEndOfNextWord()V

    goto :goto_0
.end method

.method public mouseDragged(Ljavafx/scene/input/MouseEvent;)V
    .locals 10

    .prologue
    .line 310
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/behavior/TextFieldBehavior;
    move-object v2, p1

    .local v2, "e":Ljavafx/scene/input/MouseEvent;
    move-object v4, v1

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/behavior/TextFieldBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v4

    check-cast v4, Ljavafx/scene/control/TextField;

    move-object v3, v4

    .line 313
    .local v3, "textField":Ljavafx/scene/control/TextField;
    move-object v4, v3

    invoke-virtual {v4}, Ljavafx/scene/control/TextField;->isDisabled()Z

    move-result v4

    if-nez v4, :cond_0

    move-object v4, v1

    iget-boolean v4, v4, Lcom/sun/javafx/scene/control/behavior/TextFieldBehavior;->deferClick:Z

    if-nez v4, :cond_0

    .line 314
    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/scene/input/MouseEvent;->isPrimaryButtonDown()Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/scene/input/MouseEvent;->isMiddleButtonDown()Z

    move-result v4

    if-nez v4, :cond_0

    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/scene/input/MouseEvent;->isSecondaryButtonDown()Z

    move-result v4

    if-nez v4, :cond_0

    .line 315
    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/scene/input/MouseEvent;->isControlDown()Z

    move-result v4

    if-nez v4, :cond_0

    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/scene/input/MouseEvent;->isAltDown()Z

    move-result v4

    if-nez v4, :cond_0

    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/scene/input/MouseEvent;->isShiftDown()Z

    move-result v4

    if-nez v4, :cond_0

    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/scene/input/MouseEvent;->isMetaDown()Z

    move-result v4

    if-nez v4, :cond_0

    .line 316
    move-object v4, v1

    iget-object v4, v4, Lcom/sun/javafx/scene/control/behavior/TextFieldBehavior;->skin:Lcom/sun/javafx/scene/control/skin/TextFieldSkin;

    move-object v5, v1

    iget-object v5, v5, Lcom/sun/javafx/scene/control/behavior/TextFieldBehavior;->skin:Lcom/sun/javafx/scene/control/skin/TextFieldSkin;

    move-object v6, v2

    invoke-virtual {v6}, Ljavafx/scene/input/MouseEvent;->getX()D

    move-result-wide v6

    move-object v8, v2

    invoke-virtual {v8}, Ljavafx/scene/input/MouseEvent;->getY()D

    move-result-wide v8

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->getIndex(DD)Lcom/sun/javafx/scene/text/HitInfo;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->positionCaret(Lcom/sun/javafx/scene/text/HitInfo;Z)V

    .line 320
    :cond_0
    return-void
.end method

.method public mousePressed(Ljavafx/scene/input/MouseEvent;)V
    .locals 14

    .prologue
    .line 238
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/behavior/TextFieldBehavior;
    move-object v2, p1

    .local v2, "e":Ljavafx/scene/input/MouseEvent;
    move-object v9, v1

    invoke-virtual {v9}, Lcom/sun/javafx/scene/control/behavior/TextFieldBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v9

    check-cast v9, Ljavafx/scene/control/TextField;

    move-object v3, v9

    .line 239
    .local v3, "textField":Ljavafx/scene/control/TextField;
    move-object v9, v1

    move-object v10, v2

    invoke-super {v9, v10}, Lcom/sun/javafx/scene/control/behavior/TextInputControlBehavior;->mousePressed(Ljavafx/scene/input/MouseEvent;)V

    .line 241
    move-object v9, v3

    invoke-virtual {v9}, Ljavafx/scene/control/TextField;->isDisabled()Z

    move-result v9

    if-nez v9, :cond_4

    .line 246
    move-object v9, v3

    invoke-virtual {v9}, Ljavafx/scene/control/TextField;->isFocused()Z

    move-result v9

    if-nez v9, :cond_0

    .line 247
    move-object v9, v1

    const/4 v10, 0x1

    iput-boolean v10, v9, Lcom/sun/javafx/scene/control/behavior/TextFieldBehavior;->focusGainedByMouseClick:Z

    .line 248
    move-object v9, v3

    invoke-virtual {v9}, Ljavafx/scene/control/TextField;->requestFocus()V

    .line 252
    :cond_0
    move-object v9, v1

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/sun/javafx/scene/control/behavior/TextFieldBehavior;->setCaretAnimating(Z)V

    .line 257
    move-object v9, v2

    invoke-virtual {v9}, Ljavafx/scene/input/MouseEvent;->isPrimaryButtonDown()Z

    move-result v9

    if-eqz v9, :cond_4

    move-object v9, v2

    invoke-virtual {v9}, Ljavafx/scene/input/MouseEvent;->isMiddleButtonDown()Z

    move-result v9

    if-nez v9, :cond_4

    move-object v9, v2

    invoke-virtual {v9}, Ljavafx/scene/input/MouseEvent;->isSecondaryButtonDown()Z

    move-result v9

    if-nez v9, :cond_4

    .line 258
    move-object v9, v1

    iget-object v9, v9, Lcom/sun/javafx/scene/control/behavior/TextFieldBehavior;->skin:Lcom/sun/javafx/scene/control/skin/TextFieldSkin;

    move-object v10, v2

    invoke-virtual {v10}, Ljavafx/scene/input/MouseEvent;->getX()D

    move-result-wide v10

    move-object v12, v2

    invoke-virtual {v12}, Ljavafx/scene/input/MouseEvent;->getY()D

    move-result-wide v12

    invoke-virtual {v9, v10, v11, v12, v13}, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->getIndex(DD)Lcom/sun/javafx/scene/text/HitInfo;

    move-result-object v9

    move-object v4, v9

    .line 259
    .local v4, "hit":Lcom/sun/javafx/scene/text/HitInfo;
    move-object v9, v3

    invoke-virtual {v9}, Ljavafx/scene/control/TextField;->textProperty()Ljavafx/beans/property/StringProperty;

    move-result-object v9

    invoke-virtual {v9}, Ljavafx/beans/property/StringProperty;->getValueSafe()Ljava/lang/String;

    move-result-object v9

    move-object v5, v9

    .line 260
    .local v5, "text":Ljava/lang/String;
    move-object v9, v4

    move-object v10, v5

    invoke-static {v9, v10}, Lcom/sun/javafx/scene/control/skin/Utils;->getHitInsertionIndex(Lcom/sun/javafx/scene/text/HitInfo;Ljava/lang/String;)I

    move-result v9

    move v6, v9

    .line 261
    .local v6, "i":I
    move-object v9, v3

    invoke-virtual {v9}, Ljavafx/scene/control/TextField;->getAnchor()I

    move-result v9

    move v7, v9

    .line 262
    .local v7, "anchor":I
    move-object v9, v3

    invoke-virtual {v9}, Ljavafx/scene/control/TextField;->getCaretPosition()I

    move-result v9

    move v8, v9

    .line 263
    .local v8, "caretPosition":I
    move-object v9, v2

    invoke-virtual {v9}, Ljavafx/scene/input/MouseEvent;->getClickCount()I

    move-result v9

    const/4 v10, 0x2

    if-ge v9, v10, :cond_6

    sget-boolean v9, Lcom/sun/javafx/scene/control/behavior/TextFieldBehavior;->IS_TOUCH_SUPPORTED:Z

    if-nez v9, :cond_2

    move v9, v7

    move v10, v8

    if-eq v9, v10, :cond_6

    move v9, v6

    move v10, v7

    if-le v9, v10, :cond_1

    move v9, v6

    move v10, v8

    if-lt v9, v10, :cond_2

    :cond_1
    move v9, v6

    move v10, v7

    if-ge v9, v10, :cond_6

    move v9, v6

    move v10, v8

    if-le v9, v10, :cond_6

    .line 273
    :cond_2
    move-object v9, v1

    const/4 v10, 0x1

    iput-boolean v10, v9, Lcom/sun/javafx/scene/control/behavior/TextFieldBehavior;->deferClick:Z

    .line 299
    :cond_3
    :goto_0
    move-object v9, v1

    iget-object v9, v9, Lcom/sun/javafx/scene/control/behavior/TextFieldBehavior;->skin:Lcom/sun/javafx/scene/control/skin/TextFieldSkin;

    move-object v10, v4

    invoke-virtual {v10}, Lcom/sun/javafx/scene/text/HitInfo;->isLeading()Z

    move-result v10

    invoke-virtual {v9, v10}, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->setForwardBias(Z)V

    .line 304
    .end local v4    # "hit":Lcom/sun/javafx/scene/text/HitInfo;
    .end local v5    # "text":Ljava/lang/String;
    .end local v6    # "i":I
    .end local v7    # "anchor":I
    .end local v8    # "caretPosition":I
    :cond_4
    move-object v9, v1

    iget-object v9, v9, Lcom/sun/javafx/scene/control/behavior/TextFieldBehavior;->contextMenu:Ljavafx/scene/control/ContextMenu;

    invoke-virtual {v9}, Ljavafx/scene/control/ContextMenu;->isShowing()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 305
    move-object v9, v1

    iget-object v9, v9, Lcom/sun/javafx/scene/control/behavior/TextFieldBehavior;->contextMenu:Ljavafx/scene/control/ContextMenu;

    invoke-virtual {v9}, Ljavafx/scene/control/ContextMenu;->hide()V

    .line 307
    :cond_5
    return-void

    .line 277
    .restart local v4    # "hit":Lcom/sun/javafx/scene/text/HitInfo;
    .restart local v5    # "text":Ljava/lang/String;
    .restart local v6    # "i":I
    .restart local v7    # "anchor":I
    .restart local v8    # "caretPosition":I
    :cond_6
    move-object v9, v2

    invoke-virtual {v9}, Ljavafx/scene/input/MouseEvent;->isControlDown()Z

    move-result v9

    if-nez v9, :cond_7

    move-object v9, v2

    invoke-virtual {v9}, Ljavafx/scene/input/MouseEvent;->isAltDown()Z

    move-result v9

    if-nez v9, :cond_7

    move-object v9, v2

    invoke-virtual {v9}, Ljavafx/scene/input/MouseEvent;->isShiftDown()Z

    move-result v9

    if-nez v9, :cond_7

    move-object v9, v2

    invoke-virtual {v9}, Ljavafx/scene/input/MouseEvent;->isMetaDown()Z

    move-result v9

    if-nez v9, :cond_7

    .line 278
    move-object v9, v2

    invoke-virtual {v9}, Ljavafx/scene/input/MouseEvent;->getClickCount()I

    move-result v9

    packed-switch v9, :pswitch_data_0

    .line 281
    goto :goto_0

    .line 279
    :pswitch_0
    move-object v9, v1

    move-object v10, v4

    invoke-virtual {v9, v10}, Lcom/sun/javafx/scene/control/behavior/TextFieldBehavior;->mouseSingleClick(Lcom/sun/javafx/scene/text/HitInfo;)V

    goto :goto_0

    .line 280
    :pswitch_1
    move-object v9, v1

    move-object v10, v4

    invoke-virtual {v9, v10}, Lcom/sun/javafx/scene/control/behavior/TextFieldBehavior;->mouseDoubleClick(Lcom/sun/javafx/scene/text/HitInfo;)V

    goto :goto_0

    .line 281
    :pswitch_2
    move-object v9, v1

    move-object v10, v4

    invoke-virtual {v9, v10}, Lcom/sun/javafx/scene/control/behavior/TextFieldBehavior;->mouseTripleClick(Lcom/sun/javafx/scene/text/HitInfo;)V

    goto :goto_0

    .line 284
    :cond_7
    move-object v9, v2

    invoke-virtual {v9}, Ljavafx/scene/input/MouseEvent;->isShiftDown()Z

    move-result v9

    if-eqz v9, :cond_3

    move-object v9, v2

    invoke-virtual {v9}, Ljavafx/scene/input/MouseEvent;->isControlDown()Z

    move-result v9

    if-nez v9, :cond_3

    move-object v9, v2

    invoke-virtual {v9}, Ljavafx/scene/input/MouseEvent;->isAltDown()Z

    move-result v9

    if-nez v9, :cond_3

    move-object v9, v2

    invoke-virtual {v9}, Ljavafx/scene/input/MouseEvent;->isMetaDown()Z

    move-result v9

    if-nez v9, :cond_3

    move-object v9, v2

    invoke-virtual {v9}, Ljavafx/scene/input/MouseEvent;->getClickCount()I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_3

    .line 286
    move-object v9, v1

    const/4 v10, 0x1

    iput-boolean v10, v9, Lcom/sun/javafx/scene/control/behavior/TextFieldBehavior;->shiftDown:Z

    .line 293
    invoke-static {}, Lcom/sun/javafx/PlatformUtil;->isMac()Z

    move-result v9

    if-eqz v9, :cond_8

    .line 294
    move-object v9, v3

    move v10, v6

    invoke-virtual {v9, v10}, Ljavafx/scene/control/TextField;->extendSelection(I)V

    goto/16 :goto_0

    .line 296
    :cond_8
    move-object v9, v1

    iget-object v9, v9, Lcom/sun/javafx/scene/control/behavior/TextFieldBehavior;->skin:Lcom/sun/javafx/scene/control/skin/TextFieldSkin;

    move-object v10, v4

    const/4 v11, 0x1

    invoke-virtual {v9, v10, v11}, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->positionCaret(Lcom/sun/javafx/scene/text/HitInfo;Z)V

    goto/16 :goto_0

    .line 278
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public mouseReleased(Ljavafx/scene/input/MouseEvent;)V
    .locals 10

    .prologue
    .line 323
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/behavior/TextFieldBehavior;
    move-object v2, p1

    .local v2, "e":Ljavafx/scene/input/MouseEvent;
    move-object v4, v1

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/behavior/TextFieldBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v4

    check-cast v4, Ljavafx/scene/control/TextField;

    move-object v3, v4

    .line 324
    .local v3, "textField":Ljavafx/scene/control/TextField;
    move-object v4, v1

    move-object v5, v2

    invoke-super {v4, v5}, Lcom/sun/javafx/scene/control/behavior/TextInputControlBehavior;->mouseReleased(Ljavafx/scene/input/MouseEvent;)V

    .line 327
    move-object v4, v3

    invoke-virtual {v4}, Ljavafx/scene/control/TextField;->isDisabled()Z

    move-result v4

    if-nez v4, :cond_1

    .line 328
    move-object v4, v1

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/sun/javafx/scene/control/behavior/TextFieldBehavior;->setCaretAnimating(Z)V

    .line 329
    move-object v4, v1

    iget-boolean v4, v4, Lcom/sun/javafx/scene/control/behavior/TextFieldBehavior;->deferClick:Z

    if-eqz v4, :cond_0

    .line 330
    move-object v4, v1

    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/sun/javafx/scene/control/behavior/TextFieldBehavior;->deferClick:Z

    .line 331
    move-object v4, v1

    iget-object v4, v4, Lcom/sun/javafx/scene/control/behavior/TextFieldBehavior;->skin:Lcom/sun/javafx/scene/control/skin/TextFieldSkin;

    move-object v5, v1

    iget-object v5, v5, Lcom/sun/javafx/scene/control/behavior/TextFieldBehavior;->skin:Lcom/sun/javafx/scene/control/skin/TextFieldSkin;

    move-object v6, v2

    invoke-virtual {v6}, Ljavafx/scene/input/MouseEvent;->getX()D

    move-result-wide v6

    move-object v8, v2

    invoke-virtual {v8}, Ljavafx/scene/input/MouseEvent;->getY()D

    move-result-wide v8

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->getIndex(DD)Lcom/sun/javafx/scene/text/HitInfo;

    move-result-object v5

    move-object v6, v1

    iget-boolean v6, v6, Lcom/sun/javafx/scene/control/behavior/TextFieldBehavior;->shiftDown:Z

    invoke-virtual {v4, v5, v6}, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->positionCaret(Lcom/sun/javafx/scene/text/HitInfo;Z)V

    .line 332
    move-object v4, v1

    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/sun/javafx/scene/control/behavior/TextFieldBehavior;->shiftDown:Z

    .line 334
    :cond_0
    move-object v4, v1

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/sun/javafx/scene/control/behavior/TextFieldBehavior;->setCaretAnimating(Z)V

    .line 336
    :cond_1
    return-void
.end method

.method protected mouseSingleClick(Lcom/sun/javafx/scene/text/HitInfo;)V
    .locals 5

    .prologue
    .line 423
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TextFieldBehavior;
    move-object v1, p1

    .local v1, "hit":Lcom/sun/javafx/scene/text/HitInfo;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/behavior/TextFieldBehavior;->skin:Lcom/sun/javafx/scene/control/skin/TextFieldSkin;

    move-object v3, v1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->positionCaret(Lcom/sun/javafx/scene/text/HitInfo;Z)V

    .line 424
    return-void
.end method

.method protected mouseTripleClick(Lcom/sun/javafx/scene/text/HitInfo;)V
    .locals 3

    .prologue
    .line 437
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TextFieldBehavior;
    move-object v1, p1

    .local v1, "hit":Lcom/sun/javafx/scene/text/HitInfo;
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/behavior/TextFieldBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v2

    check-cast v2, Ljavafx/scene/control/TextField;

    invoke-virtual {v2}, Ljavafx/scene/control/TextField;->selectAll()V

    .line 438
    return-void
.end method

.method protected replaceText(IILjava/lang/String;)V
    .locals 8

    .prologue
    .line 202
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TextFieldBehavior;
    move v1, p1

    .local v1, "start":I
    move v2, p2

    .local v2, "end":I
    move-object v3, p3

    .local v3, "txt":Ljava/lang/String;
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/behavior/TextFieldBehavior;->skin:Lcom/sun/javafx/scene/control/skin/TextFieldSkin;

    move v5, v1

    move v6, v2

    move-object v7, v3

    invoke-virtual {v4, v5, v6, v7}, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->replaceText(IILjava/lang/String;)V

    .line 203
    return-void
.end method

.method protected setCaretAnimating(Z)V
    .locals 4

    .prologue
    .line 215
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TextFieldBehavior;
    move v1, p1

    .local v1, "play":Z
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/behavior/TextFieldBehavior;->skin:Lcom/sun/javafx/scene/control/skin/TextFieldSkin;

    if-eqz v2, :cond_0

    .line 216
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/behavior/TextFieldBehavior;->skin:Lcom/sun/javafx/scene/control/skin/TextFieldSkin;

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/javafx/scene/control/skin/TextFieldSkin;->setCaretAnimating(Z)V

    .line 218
    :cond_0
    return-void
.end method

.method public setTextFieldSkin(Lcom/sun/javafx/scene/control/skin/TextFieldSkin;)V
    .locals 4

    .prologue
    .line 171
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TextFieldBehavior;
    move-object v1, p1

    .local v1, "skin":Lcom/sun/javafx/scene/control/skin/TextFieldSkin;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/scene/control/behavior/TextFieldBehavior;->skin:Lcom/sun/javafx/scene/control/skin/TextFieldSkin;

    .line 172
    return-void
.end method
