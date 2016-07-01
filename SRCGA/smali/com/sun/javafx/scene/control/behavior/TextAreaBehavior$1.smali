.class Lcom/sun/javafx/scene/control/behavior/TextAreaBehavior$1;
.super Ljava/lang/Object;
.source "TextAreaBehavior.java"

# interfaces
.implements Ljavafx/beans/value/ChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sun/javafx/scene/control/behavior/TextAreaBehavior;-><init>(Ljavafx/scene/control/TextArea;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljavafx/beans/value/ChangeListener",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sun/javafx/scene/control/behavior/TextAreaBehavior;


# direct methods
.method constructor <init>(Lcom/sun/javafx/scene/control/behavior/TextAreaBehavior;)V
    .locals 4

    .prologue
    .line 146
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TextAreaBehavior$1;
    move-object v1, p1

    .local v1, "this$0":Lcom/sun/javafx/scene/control/behavior/TextAreaBehavior;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/scene/control/behavior/TextAreaBehavior$1;->this$0:Lcom/sun/javafx/scene/control/behavior/TextAreaBehavior;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public changed(Ljavafx/beans/value/ObservableValue;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 44
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/value/ObservableValue",
            "<+",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            ")V"
        }
    .end annotation

    .prologue
    .line 153
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/behavior/TextAreaBehavior$1;
    move-object/from16 v2, p1

    .local v2, "observable":Ljavafx/beans/value/ObservableValue;, "Ljavafx/beans/value/ObservableValue<+Ljava/lang/Boolean;>;"
    move-object/from16 v3, p2

    .local v3, "oldValue":Ljava/lang/Boolean;
    move-object/from16 v4, p3

    .local v4, "newValue":Ljava/lang/Boolean;
    move-object v13, v1

    iget-object v13, v13, Lcom/sun/javafx/scene/control/behavior/TextAreaBehavior$1;->this$0:Lcom/sun/javafx/scene/control/behavior/TextAreaBehavior;

    invoke-virtual {v13}, Lcom/sun/javafx/scene/control/behavior/TextAreaBehavior;->getControl()Ljavafx/scene/control/Control;

    move-result-object v13

    check-cast v13, Ljavafx/scene/control/TextArea;

    move-object v5, v13

    .line 154
    .local v5, "textArea":Ljavafx/scene/control/TextArea;
    move-object v13, v5

    invoke-virtual {v13}, Ljavafx/scene/control/TextArea;->isFocused()Z

    move-result v13

    if-eqz v13, :cond_2

    .line 155
    invoke-static {}, Lcom/sun/javafx/PlatformUtil;->isIOS()Z

    move-result v13

    if-eqz v13, :cond_0

    .line 159
    move-object v13, v5

    invoke-virtual {v13}, Ljavafx/scene/control/TextArea;->getBoundsInParent()Ljavafx/geometry/Bounds;

    move-result-object v13

    move-object v6, v13

    .line 160
    .local v6, "bounds":Ljavafx/geometry/Bounds;
    move-object v13, v6

    invoke-virtual {v13}, Ljavafx/geometry/Bounds;->getWidth()D

    move-result-wide v13

    move-wide v7, v13

    .line 161
    .local v7, "w":D
    move-object v13, v6

    invoke-virtual {v13}, Ljavafx/geometry/Bounds;->getHeight()D

    move-result-wide v13

    move-wide v9, v13

    .line 162
    .local v9, "h":D
    move-object v13, v5

    invoke-static {v13}, Lcom/sun/javafx/scene/control/behavior/TextFieldBehavior;->calculateNodeToSceneTransform(Ljavafx/scene/Node;)Lcom/sun/javafx/geom/transform/Affine3D;

    move-result-object v13

    move-object v11, v13

    .line 163
    .local v11, "trans":Lcom/sun/javafx/geom/transform/Affine3D;
    move-object v13, v5

    invoke-virtual {v13}, Ljavafx/scene/control/TextArea;->textProperty()Ljavafx/beans/property/StringProperty;

    move-result-object v13

    invoke-virtual {v13}, Ljavafx/beans/property/StringProperty;->getValueSafe()Ljava/lang/String;

    move-result-object v13

    move-object v12, v13

    .line 167
    .local v12, "text":Ljava/lang/String;
    move-object v13, v5

    invoke-virtual {v13}, Ljavafx/scene/control/TextArea;->getScene()Ljavafx/scene/Scene;

    move-result-object v13

    invoke-virtual {v13}, Ljavafx/scene/Scene;->getWindow()Ljavafx/stage/Window;

    move-result-object v13

    invoke-virtual {v13}, Ljavafx/stage/Window;->impl_getPeer()Lcom/sun/javafx/tk/TKStage;

    move-result-object v13

    move-object v14, v12

    sget-object v15, Lcom/sun/javafx/scene/control/behavior/TextFieldBehavior$TextInputTypes;->TEXT_AREA:Lcom/sun/javafx/scene/control/behavior/TextFieldBehavior$TextInputTypes;

    invoke-virtual {v15}, Lcom/sun/javafx/scene/control/behavior/TextFieldBehavior$TextInputTypes;->ordinal()I

    move-result v15

    move-wide/from16 v16, v7

    move-wide/from16 v18, v9

    move-object/from16 v20, v11

    .line 168
    invoke-virtual/range {v20 .. v20}, Lcom/sun/javafx/geom/transform/Affine3D;->getMxx()D

    move-result-wide v20

    move-object/from16 v22, v11

    invoke-virtual/range {v22 .. v22}, Lcom/sun/javafx/geom/transform/Affine3D;->getMxy()D

    move-result-wide v22

    move-object/from16 v24, v11

    invoke-virtual/range {v24 .. v24}, Lcom/sun/javafx/geom/transform/Affine3D;->getMxz()D

    move-result-wide v24

    move-object/from16 v26, v11

    invoke-virtual/range {v26 .. v26}, Lcom/sun/javafx/geom/transform/Affine3D;->getMxt()D

    move-result-wide v26

    move-object/from16 v28, v11

    .line 169
    invoke-virtual/range {v28 .. v28}, Lcom/sun/javafx/geom/transform/Affine3D;->getMyx()D

    move-result-wide v28

    move-object/from16 v30, v11

    invoke-virtual/range {v30 .. v30}, Lcom/sun/javafx/geom/transform/Affine3D;->getMyy()D

    move-result-wide v30

    move-object/from16 v32, v11

    invoke-virtual/range {v32 .. v32}, Lcom/sun/javafx/geom/transform/Affine3D;->getMyz()D

    move-result-wide v32

    move-object/from16 v34, v11

    invoke-virtual/range {v34 .. v34}, Lcom/sun/javafx/geom/transform/Affine3D;->getMyt()D

    move-result-wide v34

    move-object/from16 v36, v11

    .line 170
    invoke-virtual/range {v36 .. v36}, Lcom/sun/javafx/geom/transform/Affine3D;->getMzx()D

    move-result-wide v36

    move-object/from16 v38, v11

    invoke-virtual/range {v38 .. v38}, Lcom/sun/javafx/geom/transform/Affine3D;->getMzy()D

    move-result-wide v38

    move-object/from16 v40, v11

    invoke-virtual/range {v40 .. v40}, Lcom/sun/javafx/geom/transform/Affine3D;->getMzz()D

    move-result-wide v40

    move-object/from16 v42, v11

    invoke-virtual/range {v42 .. v42}, Lcom/sun/javafx/geom/transform/Affine3D;->getMzt()D

    move-result-wide v42

    .line 167
    invoke-interface/range {v13 .. v43}, Lcom/sun/javafx/tk/TKStage;->requestInput(Ljava/lang/String;IDDDDDDDDDDDDDD)V

    .line 172
    .end local v6    # "bounds":Ljavafx/geometry/Bounds;
    .end local v7    # "w":D
    .end local v9    # "h":D
    .end local v11    # "trans":Lcom/sun/javafx/geom/transform/Affine3D;
    .end local v12    # "text":Ljava/lang/String;
    :cond_0
    move-object v13, v1

    iget-object v13, v13, Lcom/sun/javafx/scene/control/behavior/TextAreaBehavior$1;->this$0:Lcom/sun/javafx/scene/control/behavior/TextAreaBehavior;

    invoke-static {v13}, Lcom/sun/javafx/scene/control/behavior/TextAreaBehavior;->access$000(Lcom/sun/javafx/scene/control/behavior/TextAreaBehavior;)Z

    move-result v13

    if-nez v13, :cond_1

    .line 173
    move-object v13, v1

    iget-object v13, v13, Lcom/sun/javafx/scene/control/behavior/TextAreaBehavior$1;->this$0:Lcom/sun/javafx/scene/control/behavior/TextAreaBehavior;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Lcom/sun/javafx/scene/control/behavior/TextAreaBehavior;->setCaretAnimating(Z)V

    .line 184
    :cond_1
    :goto_0
    return-void

    .line 177
    :cond_2
    invoke-static {}, Lcom/sun/javafx/PlatformUtil;->isIOS()Z

    move-result v13

    if-eqz v13, :cond_3

    move-object v13, v5

    invoke-virtual {v13}, Ljavafx/scene/control/TextArea;->getScene()Ljavafx/scene/Scene;

    move-result-object v13

    if-eqz v13, :cond_3

    .line 179
    move-object v13, v5

    invoke-virtual {v13}, Ljavafx/scene/control/TextArea;->getScene()Ljavafx/scene/Scene;

    move-result-object v13

    invoke-virtual {v13}, Ljavafx/scene/Scene;->getWindow()Ljavafx/stage/Window;

    move-result-object v13

    invoke-virtual {v13}, Ljavafx/stage/Window;->impl_getPeer()Lcom/sun/javafx/tk/TKStage;

    move-result-object v13

    invoke-interface {v13}, Lcom/sun/javafx/tk/TKStage;->releaseInput()V

    .line 181
    :cond_3
    move-object v13, v1

    iget-object v13, v13, Lcom/sun/javafx/scene/control/behavior/TextAreaBehavior$1;->this$0:Lcom/sun/javafx/scene/control/behavior/TextAreaBehavior;

    const/4 v14, 0x0

    invoke-static {v13, v14}, Lcom/sun/javafx/scene/control/behavior/TextAreaBehavior;->access$002(Lcom/sun/javafx/scene/control/behavior/TextAreaBehavior;Z)Z

    move-result v13

    .line 182
    move-object v13, v1

    iget-object v13, v13, Lcom/sun/javafx/scene/control/behavior/TextAreaBehavior$1;->this$0:Lcom/sun/javafx/scene/control/behavior/TextAreaBehavior;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/sun/javafx/scene/control/behavior/TextAreaBehavior;->setCaretAnimating(Z)V

    goto :goto_0
.end method

.method public bridge synthetic changed(Ljavafx/beans/value/ObservableValue;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 8

    .prologue
    .line 146
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/behavior/TextAreaBehavior$1;
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    check-cast v6, Ljava/lang/Boolean;

    move-object v7, v3

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v4, v5, v6, v7}, Lcom/sun/javafx/scene/control/behavior/TextAreaBehavior$1;->changed(Ljavafx/beans/value/ObservableValue;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    return-void
.end method
