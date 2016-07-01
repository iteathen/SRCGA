.class Ljavafx/scene/chart/Chart$1;
.super Ljavafx/scene/layout/Pane;
.source "Chart.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/chart/Chart;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/scene/chart/Chart;


# direct methods
.method constructor <init>(Ljavafx/scene/chart/Chart;)V
    .locals 4

    .prologue
    .line 84
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/Chart$1;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/chart/Chart;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/chart/Chart$1;->this$0:Ljavafx/scene/chart/Chart;

    move-object v2, v0

    invoke-direct {v2}, Ljavafx/scene/layout/Pane;-><init>()V

    return-void
.end method


# virtual methods
.method protected layoutChildren()V
    .locals 27

    .prologue
    .line 86
    move-object/from16 v1, p0

    .local v1, "this":Ljavafx/scene/chart/Chart$1;
    move-object/from16 v18, v1

    invoke-virtual/range {v18 .. v18}, Ljavafx/scene/chart/Chart$1;->snappedTopInset()D

    move-result-wide v18

    move-wide/from16 v2, v18

    .line 87
    .local v2, "top":D
    move-object/from16 v18, v1

    invoke-virtual/range {v18 .. v18}, Ljavafx/scene/chart/Chart$1;->snappedLeftInset()D

    move-result-wide v18

    move-wide/from16 v4, v18

    .line 88
    .local v4, "left":D
    move-object/from16 v18, v1

    invoke-virtual/range {v18 .. v18}, Ljavafx/scene/chart/Chart$1;->snappedBottomInset()D

    move-result-wide v18

    move-wide/from16 v6, v18

    .line 89
    .local v6, "bottom":D
    move-object/from16 v18, v1

    invoke-virtual/range {v18 .. v18}, Ljavafx/scene/chart/Chart$1;->snappedRightInset()D

    move-result-wide v18

    move-wide/from16 v8, v18

    .line 90
    .local v8, "right":D
    move-object/from16 v18, v1

    invoke-virtual/range {v18 .. v18}, Ljavafx/scene/chart/Chart$1;->getWidth()D

    move-result-wide v18

    move-wide/from16 v10, v18

    .line 91
    .local v10, "width":D
    move-object/from16 v18, v1

    invoke-virtual/range {v18 .. v18}, Ljavafx/scene/chart/Chart$1;->getHeight()D

    move-result-wide v18

    move-wide/from16 v12, v18

    .line 92
    .local v12, "height":D
    move-object/from16 v18, v1

    move-wide/from16 v19, v10

    move-wide/from16 v21, v4

    move-wide/from16 v23, v8

    add-double v21, v21, v23

    sub-double v19, v19, v21

    invoke-virtual/range {v18 .. v20}, Ljavafx/scene/chart/Chart$1;->snapSize(D)D

    move-result-wide v18

    move-wide/from16 v14, v18

    .line 93
    .local v14, "contentWidth":D
    move-object/from16 v18, v1

    move-wide/from16 v19, v12

    move-wide/from16 v21, v2

    move-wide/from16 v23, v6

    add-double v21, v21, v23

    sub-double v19, v19, v21

    invoke-virtual/range {v18 .. v20}, Ljavafx/scene/chart/Chart$1;->snapSize(D)D

    move-result-wide v18

    move-wide/from16 v16, v18

    .line 94
    .local v16, "contentHeight":D
    move-object/from16 v18, v1

    move-object/from16 v0, v18

    iget-object v0, v0, Ljavafx/scene/chart/Chart$1;->this$0:Ljavafx/scene/chart/Chart;

    move-object/from16 v18, v0

    move-object/from16 v19, v1

    move-wide/from16 v20, v2

    invoke-virtual/range {v19 .. v21}, Ljavafx/scene/chart/Chart$1;->snapPosition(D)D

    move-result-wide v19

    move-object/from16 v21, v1

    move-wide/from16 v22, v4

    invoke-virtual/range {v21 .. v23}, Ljavafx/scene/chart/Chart$1;->snapPosition(D)D

    move-result-wide v21

    move-wide/from16 v23, v14

    move-wide/from16 v25, v16

    invoke-virtual/range {v18 .. v26}, Ljavafx/scene/chart/Chart;->layoutChartChildren(DDDD)V

    .line 95
    return-void
.end method

.method public usesMirroring()Z
    .locals 2

    .prologue
    .line 97
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/Chart$1;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/chart/Chart$1;->this$0:Ljavafx/scene/chart/Chart;

    iget-boolean v1, v1, Ljavafx/scene/chart/Chart;->useChartContentMirroring:Z

    move v0, v1

    .end local v0    # "this":Ljavafx/scene/chart/Chart$1;
    return v0
.end method
