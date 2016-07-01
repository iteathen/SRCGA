.class Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin$4;
.super Ljavafx/scene/layout/StackPane;
.source "TabPaneSkin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;-><init>(Lcom/sun/javafx/scene/control/skin/TabPaneSkin;Ljavafx/scene/control/Tab;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;

.field final synthetic val$focusIndicator:Ljavafx/scene/layout/Region;

.field final synthetic val$this$0:Lcom/sun/javafx/scene/control/skin/TabPaneSkin;


# direct methods
.method constructor <init>(Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;Lcom/sun/javafx/scene/control/skin/TabPaneSkin;Ljavafx/scene/layout/Region;)V
    .locals 6

    .prologue
    .line 1191
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin$4;
    move-object v1, p1

    .local v1, "this$1":Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;
    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin$4;->this$1:Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;

    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin$4;->val$this$0:Lcom/sun/javafx/scene/control/skin/TabPaneSkin;

    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin$4;->val$focusIndicator:Ljavafx/scene/layout/Region;

    move-object v4, v0

    invoke-direct {v4}, Ljavafx/scene/layout/StackPane;-><init>()V

    return-void
.end method


# virtual methods
.method protected layoutChildren()V
    .locals 60

    .prologue
    .line 1193
    move-object/from16 v2, p0

    .local v2, "this":Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin$4;
    move-object/from16 v46, v2

    move-object/from16 v0, v46

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin$4;->this$1:Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;->this$0:Lcom/sun/javafx/scene/control/skin/TabPaneSkin;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v46

    check-cast v46, Ljavafx/scene/control/TabPane;

    move-object/from16 v3, v46

    .line 1195
    .local v3, "skinnable":Ljavafx/scene/control/TabPane;
    move-object/from16 v46, v2

    invoke-virtual/range {v46 .. v46}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin$4;->snappedTopInset()D

    move-result-wide v46

    move-wide/from16 v4, v46

    .line 1196
    .local v4, "paddingTop":D
    move-object/from16 v46, v2

    invoke-virtual/range {v46 .. v46}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin$4;->snappedRightInset()D

    move-result-wide v46

    move-wide/from16 v6, v46

    .line 1197
    .local v6, "paddingRight":D
    move-object/from16 v46, v2

    invoke-virtual/range {v46 .. v46}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin$4;->snappedBottomInset()D

    move-result-wide v46

    move-wide/from16 v8, v46

    .line 1198
    .local v8, "paddingBottom":D
    move-object/from16 v46, v2

    invoke-virtual/range {v46 .. v46}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin$4;->snappedLeftInset()D

    move-result-wide v46

    move-wide/from16 v10, v46

    .line 1199
    .local v10, "paddingLeft":D
    move-object/from16 v46, v2

    invoke-virtual/range {v46 .. v46}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin$4;->getWidth()D

    move-result-wide v46

    move-wide/from16 v48, v10

    move-wide/from16 v50, v6

    add-double v48, v48, v50

    sub-double v46, v46, v48

    move-wide/from16 v12, v46

    .line 1200
    .local v12, "w":D
    move-object/from16 v46, v2

    invoke-virtual/range {v46 .. v46}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin$4;->getHeight()D

    move-result-wide v46

    move-wide/from16 v48, v4

    move-wide/from16 v50, v8

    add-double v48, v48, v50

    sub-double v46, v46, v48

    move-wide/from16 v14, v46

    .line 1202
    .local v14, "h":D
    move-object/from16 v46, v2

    move-object/from16 v47, v2

    move-object/from16 v0, v47

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin$4;->this$1:Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;

    move-object/from16 v47, v0

    invoke-static/range {v47 .. v47}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;->access$3200(Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;)Ljavafx/scene/control/Label;

    move-result-object v47

    const-wide/high16 v48, -0x4010000000000000L    # -1.0

    invoke-virtual/range {v47 .. v49}, Ljavafx/scene/control/Label;->prefWidth(D)D

    move-result-wide v47

    invoke-virtual/range {v46 .. v48}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin$4;->snapSize(D)D

    move-result-wide v46

    move-wide/from16 v16, v46

    .line 1203
    .local v16, "prefLabelWidth":D
    move-object/from16 v46, v2

    move-object/from16 v47, v2

    move-object/from16 v0, v47

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin$4;->this$1:Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;

    move-object/from16 v47, v0

    invoke-static/range {v47 .. v47}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;->access$3200(Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;)Ljavafx/scene/control/Label;

    move-result-object v47

    const-wide/high16 v48, -0x4010000000000000L    # -1.0

    invoke-virtual/range {v47 .. v49}, Ljavafx/scene/control/Label;->prefHeight(D)D

    move-result-wide v47

    invoke-virtual/range {v46 .. v48}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin$4;->snapSize(D)D

    move-result-wide v46

    move-wide/from16 v18, v46

    .line 1205
    .local v18, "prefLabelHeight":D
    move-object/from16 v46, v2

    move-object/from16 v0, v46

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin$4;->this$1:Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;

    move-object/from16 v46, v0

    invoke-static/range {v46 .. v46}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;->access$3300(Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;)Z

    move-result v46

    if-eqz v46, :cond_3

    move-object/from16 v46, v2

    move-object/from16 v47, v2

    move-object/from16 v0, v47

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin$4;->this$1:Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;

    move-object/from16 v47, v0

    invoke-static/range {v47 .. v47}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;->access$3400(Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;)Ljavafx/scene/layout/StackPane;

    move-result-object v47

    const-wide/high16 v48, -0x4010000000000000L    # -1.0

    invoke-virtual/range {v47 .. v49}, Ljavafx/scene/layout/StackPane;->prefWidth(D)D

    move-result-wide v47

    invoke-virtual/range {v46 .. v48}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin$4;->snapSize(D)D

    move-result-wide v46

    :goto_0
    move-wide/from16 v20, v46

    .line 1206
    .local v20, "closeBtnWidth":D
    move-object/from16 v46, v2

    move-object/from16 v0, v46

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin$4;->this$1:Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;

    move-object/from16 v46, v0

    invoke-static/range {v46 .. v46}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;->access$3300(Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;)Z

    move-result v46

    if-eqz v46, :cond_4

    move-object/from16 v46, v2

    move-object/from16 v47, v2

    move-object/from16 v0, v47

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin$4;->this$1:Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;

    move-object/from16 v47, v0

    invoke-static/range {v47 .. v47}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;->access$3400(Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;)Ljavafx/scene/layout/StackPane;

    move-result-object v47

    const-wide/high16 v48, -0x4010000000000000L    # -1.0

    invoke-virtual/range {v47 .. v49}, Ljavafx/scene/layout/StackPane;->prefHeight(D)D

    move-result-wide v47

    invoke-virtual/range {v46 .. v48}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin$4;->snapSize(D)D

    move-result-wide v46

    :goto_1
    move-wide/from16 v22, v46

    .line 1207
    .local v22, "closeBtnHeight":D
    move-object/from16 v46, v2

    move-object/from16 v47, v3

    invoke-virtual/range {v47 .. v47}, Ljavafx/scene/control/TabPane;->getTabMinWidth()D

    move-result-wide v47

    invoke-virtual/range {v46 .. v48}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin$4;->snapSize(D)D

    move-result-wide v46

    move-wide/from16 v24, v46

    .line 1208
    .local v24, "minWidth":D
    move-object/from16 v46, v2

    move-object/from16 v47, v3

    invoke-virtual/range {v47 .. v47}, Ljavafx/scene/control/TabPane;->getTabMaxWidth()D

    move-result-wide v47

    invoke-virtual/range {v46 .. v48}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin$4;->snapSize(D)D

    move-result-wide v46

    move-wide/from16 v26, v46

    .line 1209
    .local v26, "maxWidth":D
    move-object/from16 v46, v2

    move-object/from16 v47, v3

    invoke-virtual/range {v47 .. v47}, Ljavafx/scene/control/TabPane;->getTabMaxHeight()D

    move-result-wide v47

    invoke-virtual/range {v46 .. v48}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin$4;->snapSize(D)D

    move-result-wide v46

    move-wide/from16 v28, v46

    .line 1211
    .local v28, "maxHeight":D
    move-wide/from16 v46, v16

    move-wide/from16 v30, v46

    .line 1212
    .local v30, "labelAreaWidth":D
    move-wide/from16 v46, v16

    move-wide/from16 v32, v46

    .line 1213
    .local v32, "labelWidth":D
    move-wide/from16 v46, v18

    move-wide/from16 v34, v46

    .line 1215
    .local v34, "labelHeight":D
    move-wide/from16 v46, v30

    move-wide/from16 v48, v20

    add-double v46, v46, v48

    move-wide/from16 v36, v46

    .line 1216
    .local v36, "childrenWidth":D
    move-wide/from16 v46, v34

    move-wide/from16 v48, v22

    invoke-static/range {v46 .. v49}, Ljava/lang/Math;->max(DD)D

    move-result-wide v46

    move-wide/from16 v38, v46

    .line 1218
    .local v38, "childrenHeight":D
    move-wide/from16 v46, v36

    move-wide/from16 v48, v26

    cmpl-double v46, v46, v48

    if-lez v46, :cond_5

    move-wide/from16 v46, v26

    const-wide v48, 0x7fefffffffffffffL    # Double.MAX_VALUE

    cmpl-double v46, v46, v48

    if-eqz v46, :cond_5

    .line 1219
    move-wide/from16 v46, v26

    move-wide/from16 v48, v20

    sub-double v46, v46, v48

    move-wide/from16 v30, v46

    .line 1220
    move-wide/from16 v46, v26

    move-wide/from16 v48, v20

    sub-double v46, v46, v48

    move-wide/from16 v32, v46

    .line 1225
    :cond_0
    :goto_2
    move-wide/from16 v46, v38

    move-wide/from16 v48, v28

    cmpl-double v46, v46, v48

    if-lez v46, :cond_1

    move-wide/from16 v46, v28

    const-wide v48, 0x7fefffffffffffffL    # Double.MAX_VALUE

    cmpl-double v46, v46, v48

    if-eqz v46, :cond_1

    .line 1226
    move-wide/from16 v46, v28

    move-wide/from16 v34, v46

    .line 1229
    :cond_1
    move-object/from16 v46, v2

    move-object/from16 v0, v46

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin$4;->this$1:Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;

    move-object/from16 v46, v0

    invoke-static/range {v46 .. v46}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;->access$700(Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;)Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabAnimationState;

    move-result-object v46

    sget-object v47, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabAnimationState;->NONE:Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabAnimationState;

    move-object/from16 v0, v46

    move-object/from16 v1, v47

    if-eq v0, v1, :cond_6

    .line 1233
    move-wide/from16 v46, v30

    move-object/from16 v48, v2

    move-object/from16 v0, v48

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin$4;->this$1:Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;

    move-object/from16 v48, v0

    invoke-static/range {v48 .. v48}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;->access$1200(Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;)Ljavafx/beans/property/DoubleProperty;

    move-result-object v48

    invoke-virtual/range {v48 .. v48}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v48

    mul-double v46, v46, v48

    move-wide/from16 v30, v46

    .line 1234
    move-object/from16 v46, v2

    move-object/from16 v0, v46

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin$4;->this$1:Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;

    move-object/from16 v46, v0

    invoke-static/range {v46 .. v46}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;->access$3400(Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;)Ljavafx/scene/layout/StackPane;

    move-result-object v46

    const/16 v47, 0x0

    invoke-virtual/range {v46 .. v47}, Ljavafx/scene/layout/StackPane;->setVisible(Z)V

    .line 1240
    :goto_3
    move-object/from16 v46, v2

    move-object/from16 v0, v46

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin$4;->this$1:Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;

    move-object/from16 v46, v0

    invoke-static/range {v46 .. v46}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;->access$3200(Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;)Ljavafx/scene/control/Label;

    move-result-object v46

    move-wide/from16 v47, v32

    move-wide/from16 v49, v34

    invoke-virtual/range {v46 .. v50}, Ljavafx/scene/control/Label;->resize(DD)V

    .line 1243
    move-wide/from16 v46, v10

    move-wide/from16 v40, v46

    .line 1250
    .local v40, "labelStartX":D
    move-wide/from16 v46, v26

    const-wide v48, 0x7fefffffffffffffL    # Double.MAX_VALUE

    cmpg-double v46, v46, v48

    if-gez v46, :cond_7

    move-wide/from16 v46, v12

    move-wide/from16 v48, v26

    invoke-static/range {v46 .. v49}, Ljava/lang/Math;->min(DD)D

    move-result-wide v46

    :goto_4
    move-wide/from16 v48, v6

    sub-double v46, v46, v48

    move-wide/from16 v48, v20

    sub-double v46, v46, v48

    move-wide/from16 v42, v46

    .line 1252
    .local v42, "closeBtnStartX":D
    move-object/from16 v46, v2

    move-object/from16 v47, v2

    move-object/from16 v0, v47

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin$4;->this$1:Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;

    move-object/from16 v47, v0

    invoke-static/range {v47 .. v47}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;->access$3200(Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;)Ljavafx/scene/control/Label;

    move-result-object v47

    move-wide/from16 v48, v40

    move-wide/from16 v50, v4

    move-wide/from16 v52, v30

    move-wide/from16 v54, v14

    const-wide/16 v56, 0x0

    sget-object v58, Ljavafx/geometry/HPos;->CENTER:Ljavafx/geometry/HPos;

    sget-object v59, Ljavafx/geometry/VPos;->CENTER:Ljavafx/geometry/VPos;

    invoke-virtual/range {v46 .. v59}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin$4;->positionInArea(Ljavafx/scene/Node;DDDDDLjavafx/geometry/HPos;Ljavafx/geometry/VPos;)V

    .line 1255
    move-object/from16 v46, v2

    move-object/from16 v0, v46

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin$4;->this$1:Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;

    move-object/from16 v46, v0

    invoke-static/range {v46 .. v46}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;->access$3400(Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;)Ljavafx/scene/layout/StackPane;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljavafx/scene/layout/StackPane;->isVisible()Z

    move-result v46

    if-eqz v46, :cond_2

    .line 1256
    move-object/from16 v46, v2

    move-object/from16 v0, v46

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin$4;->this$1:Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;

    move-object/from16 v46, v0

    invoke-static/range {v46 .. v46}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;->access$3400(Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;)Ljavafx/scene/layout/StackPane;

    move-result-object v46

    move-wide/from16 v47, v20

    move-wide/from16 v49, v22

    invoke-virtual/range {v46 .. v50}, Ljavafx/scene/layout/StackPane;->resize(DD)V

    .line 1257
    move-object/from16 v46, v2

    move-object/from16 v47, v2

    move-object/from16 v0, v47

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin$4;->this$1:Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;

    move-object/from16 v47, v0

    invoke-static/range {v47 .. v47}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;->access$3400(Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;)Ljavafx/scene/layout/StackPane;

    move-result-object v47

    move-wide/from16 v48, v42

    move-wide/from16 v50, v4

    move-wide/from16 v52, v20

    move-wide/from16 v54, v14

    const-wide/16 v56, 0x0

    sget-object v58, Ljavafx/geometry/HPos;->CENTER:Ljavafx/geometry/HPos;

    sget-object v59, Ljavafx/geometry/VPos;->CENTER:Ljavafx/geometry/VPos;

    invoke-virtual/range {v46 .. v59}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin$4;->positionInArea(Ljavafx/scene/Node;DDDDDLjavafx/geometry/HPos;Ljavafx/geometry/VPos;)V

    .line 1268
    :cond_2
    invoke-static {}, Lcom/sun/javafx/util/Utils;->isMac()Z

    move-result v46

    if-eqz v46, :cond_8

    const/16 v46, 0x2

    :goto_5
    move/from16 v44, v46

    .line 1269
    .local v44, "vPadding":I
    invoke-static {}, Lcom/sun/javafx/util/Utils;->isMac()Z

    move-result v46

    if-eqz v46, :cond_9

    const/16 v46, 0x2

    :goto_6
    move/from16 v45, v46

    .line 1270
    .local v45, "hPadding":I
    move-object/from16 v46, v2

    move-object/from16 v0, v46

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin$4;->val$focusIndicator:Ljavafx/scene/layout/Region;

    move-object/from16 v46, v0

    move-wide/from16 v47, v10

    move/from16 v49, v45

    move/from16 v0, v49

    int-to-double v0, v0

    move-wide/from16 v49, v0

    sub-double v47, v47, v49

    move-wide/from16 v49, v4

    move/from16 v51, v44

    move/from16 v0, v51

    int-to-double v0, v0

    move-wide/from16 v51, v0

    add-double v49, v49, v51

    move-wide/from16 v51, v12

    const/16 v53, 0x2

    move/from16 v54, v45

    mul-int v53, v53, v54

    move/from16 v0, v53

    int-to-double v0, v0

    move-wide/from16 v53, v0

    add-double v51, v51, v53

    move-wide/from16 v53, v14

    const/16 v55, 0x2

    move/from16 v56, v44

    mul-int v55, v55, v56

    move/from16 v0, v55

    int-to-double v0, v0

    move-wide/from16 v55, v0

    sub-double v53, v53, v55

    invoke-virtual/range {v46 .. v54}, Ljavafx/scene/layout/Region;->resizeRelocate(DDDD)V

    .line 1275
    return-void

    .line 1205
    .end local v20    # "closeBtnWidth":D
    .end local v22    # "closeBtnHeight":D
    .end local v24    # "minWidth":D
    .end local v26    # "maxWidth":D
    .end local v28    # "maxHeight":D
    .end local v30    # "labelAreaWidth":D
    .end local v32    # "labelWidth":D
    .end local v34    # "labelHeight":D
    .end local v36    # "childrenWidth":D
    .end local v38    # "childrenHeight":D
    .end local v40    # "labelStartX":D
    .end local v42    # "closeBtnStartX":D
    .end local v44    # "vPadding":I
    .end local v45    # "hPadding":I
    :cond_3
    const-wide/16 v46, 0x0

    goto/16 :goto_0

    .line 1206
    .restart local v20    # "closeBtnWidth":D
    :cond_4
    const-wide/16 v46, 0x0

    goto/16 :goto_1

    .line 1221
    .restart local v22    # "closeBtnHeight":D
    .restart local v24    # "minWidth":D
    .restart local v26    # "maxWidth":D
    .restart local v28    # "maxHeight":D
    .restart local v30    # "labelAreaWidth":D
    .restart local v32    # "labelWidth":D
    .restart local v34    # "labelHeight":D
    .restart local v36    # "childrenWidth":D
    .restart local v38    # "childrenHeight":D
    :cond_5
    move-wide/from16 v46, v36

    move-wide/from16 v48, v24

    cmpg-double v46, v46, v48

    if-gez v46, :cond_0

    .line 1222
    move-wide/from16 v46, v24

    move-wide/from16 v48, v20

    sub-double v46, v46, v48

    move-wide/from16 v30, v46

    goto/16 :goto_2

    .line 1236
    :cond_6
    move-object/from16 v46, v2

    move-object/from16 v0, v46

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin$4;->this$1:Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;

    move-object/from16 v46, v0

    invoke-static/range {v46 .. v46}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;->access$3400(Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;)Ljavafx/scene/layout/StackPane;

    move-result-object v46

    move-object/from16 v47, v2

    move-object/from16 v0, v47

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin$4;->this$1:Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;

    move-object/from16 v47, v0

    invoke-static/range {v47 .. v47}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;->access$3300(Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;)Z

    move-result v47

    invoke-virtual/range {v46 .. v47}, Ljavafx/scene/layout/StackPane;->setVisible(Z)V

    goto/16 :goto_3

    .line 1250
    .restart local v40    # "labelStartX":D
    :cond_7
    move-wide/from16 v46, v12

    goto/16 :goto_4

    .line 1268
    .restart local v42    # "closeBtnStartX":D
    :cond_8
    const/16 v46, 0x3

    goto/16 :goto_5

    .line 1269
    .restart local v44    # "vPadding":I
    :cond_9
    const/16 v46, 0x1

    goto/16 :goto_6
.end method
