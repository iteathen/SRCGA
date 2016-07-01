.class Lcom/sun/javafx/scene/control/skin/DatePickerContent$1;
.super Ljavafx/scene/layout/GridPane;
.source "DatePickerContent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sun/javafx/scene/control/skin/DatePickerContent;-><init>(Ljavafx/scene/control/DatePicker;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sun/javafx/scene/control/skin/DatePickerContent;

.field final synthetic val$datePicker:Ljavafx/scene/control/DatePicker;


# direct methods
.method constructor <init>(Lcom/sun/javafx/scene/control/skin/DatePickerContent;Ljavafx/scene/control/DatePicker;)V
    .locals 5

    .prologue
    .line 137
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/DatePickerContent$1;
    move-object v1, p1

    .local v1, "this$0":Lcom/sun/javafx/scene/control/skin/DatePickerContent;
    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/sun/javafx/scene/control/skin/DatePickerContent$1;->this$0:Lcom/sun/javafx/scene/control/skin/DatePickerContent;

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/sun/javafx/scene/control/skin/DatePickerContent$1;->val$datePicker:Ljavafx/scene/control/DatePicker;

    move-object v3, v0

    invoke-direct {v3}, Ljavafx/scene/layout/GridPane;-><init>()V

    return-void
.end method


# virtual methods
.method protected computePrefWidth(D)D
    .locals 23

    .prologue
    .line 139
    move-object/from16 v2, p0

    .local v2, "this":Lcom/sun/javafx/scene/control/skin/DatePickerContent$1;
    move-wide/from16 v3, p1

    .local v3, "height":D
    move-object/from16 v18, v2

    move-wide/from16 v19, v3

    invoke-super/range {v18 .. v20}, Ljavafx/scene/layout/GridPane;->computePrefWidth(D)D

    move-result-wide v18

    move-wide/from16 v5, v18

    .line 144
    .local v5, "width":D
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/DatePickerContent$1;->this$0:Lcom/sun/javafx/scene/control/skin/DatePickerContent;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/sun/javafx/scene/control/skin/DatePickerContent;->access$000(Lcom/sun/javafx/scene/control/skin/DatePickerContent;)I

    move-result v18

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/DatePickerContent$1;->val$datePicker:Ljavafx/scene/control/DatePicker;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljavafx/scene/control/DatePicker;->isShowWeekNumbers()Z

    move-result v19

    if-eqz v19, :cond_0

    const/16 v19, 0x1

    :goto_0
    add-int v18, v18, v19

    move/from16 v7, v18

    .line 145
    .local v7, "nCols":I
    move-object/from16 v18, v2

    move-object/from16 v19, v2

    invoke-virtual/range {v19 .. v19}, Lcom/sun/javafx/scene/control/skin/DatePickerContent$1;->getHgap()D

    move-result-wide v19

    invoke-virtual/range {v18 .. v20}, Lcom/sun/javafx/scene/control/skin/DatePickerContent$1;->snapSpace(D)D

    move-result-wide v18

    move-wide/from16 v8, v18

    .line 146
    .local v8, "snaphgap":D
    move-object/from16 v18, v2

    move-object/from16 v19, v2

    invoke-virtual/range {v19 .. v19}, Lcom/sun/javafx/scene/control/skin/DatePickerContent$1;->getInsets()Ljavafx/geometry/Insets;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljavafx/geometry/Insets;->getLeft()D

    move-result-wide v19

    invoke-virtual/range {v18 .. v20}, Lcom/sun/javafx/scene/control/skin/DatePickerContent$1;->snapSpace(D)D

    move-result-wide v18

    move-wide/from16 v10, v18

    .line 147
    .local v10, "left":D
    move-object/from16 v18, v2

    move-object/from16 v19, v2

    invoke-virtual/range {v19 .. v19}, Lcom/sun/javafx/scene/control/skin/DatePickerContent$1;->getInsets()Ljavafx/geometry/Insets;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljavafx/geometry/Insets;->getRight()D

    move-result-wide v19

    invoke-virtual/range {v18 .. v20}, Lcom/sun/javafx/scene/control/skin/DatePickerContent$1;->snapSpace(D)D

    move-result-wide v18

    move-wide/from16 v12, v18

    .line 148
    .local v12, "right":D
    move-wide/from16 v18, v8

    move/from16 v20, v7

    const/16 v21, 0x1

    add-int/lit8 v20, v20, -0x1

    move/from16 v0, v20

    int-to-double v0, v0

    move-wide/from16 v20, v0

    mul-double v18, v18, v20

    move-wide/from16 v14, v18

    .line 149
    .local v14, "hgaps":D
    move-wide/from16 v18, v5

    move-wide/from16 v20, v10

    sub-double v18, v18, v20

    move-wide/from16 v20, v12

    sub-double v18, v18, v20

    move-wide/from16 v20, v14

    sub-double v18, v18, v20

    move-wide/from16 v16, v18

    .line 150
    .local v16, "contentWidth":D
    move-object/from16 v18, v2

    move-wide/from16 v19, v16

    move/from16 v21, v7

    move/from16 v0, v21

    int-to-double v0, v0

    move-wide/from16 v21, v0

    div-double v19, v19, v21

    invoke-virtual/range {v18 .. v20}, Lcom/sun/javafx/scene/control/skin/DatePickerContent$1;->snapSize(D)D

    move-result-wide v18

    move/from16 v20, v7

    move/from16 v0, v20

    int-to-double v0, v0

    move-wide/from16 v20, v0

    mul-double v18, v18, v20

    move-wide/from16 v20, v10

    add-double v18, v18, v20

    move-wide/from16 v20, v12

    add-double v18, v18, v20

    move-wide/from16 v20, v14

    add-double v18, v18, v20

    move-wide/from16 v2, v18

    .end local v2    # "this":Lcom/sun/javafx/scene/control/skin/DatePickerContent$1;
    return-wide v2

    .line 144
    .end local v7    # "nCols":I
    .end local v8    # "snaphgap":D
    .end local v10    # "left":D
    .end local v12    # "right":D
    .end local v14    # "hgaps":D
    .end local v16    # "contentWidth":D
    .restart local v2    # "this":Lcom/sun/javafx/scene/control/skin/DatePickerContent$1;
    :cond_0
    const/16 v19, 0x0

    goto/16 :goto_0
.end method

.method protected layoutChildren()V
    .locals 6

    .prologue
    .line 155
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/DatePickerContent$1;
    move-object v2, v1

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/DatePickerContent$1;->getWidth()D

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-lez v2, :cond_0

    move-object v2, v1

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/DatePickerContent$1;->getHeight()D

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-lez v2, :cond_0

    .line 156
    move-object v2, v1

    invoke-super {v2}, Ljavafx/scene/layout/GridPane;->layoutChildren()V

    .line 158
    :cond_0
    return-void
.end method
