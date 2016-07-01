.class final Ljavafx/scene/chart/PieChart$LabelLayoutInfo;
.super Ljava/lang/Object;
.source "PieChart.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/chart/PieChart;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "LabelLayoutInfo"
.end annotation


# instance fields
.field endX:D

.field endY:D

.field size:D

.field startX:D

.field startY:D

.field text:Ljavafx/scene/text/Text;

.field textX:D

.field textY:D


# direct methods
.method public constructor <init>(DDDDDDLjavafx/scene/text/Text;D)V
    .locals 23

    .prologue
    .line 808
    move-object/from16 v3, p0

    .local v3, "this":Ljavafx/scene/chart/PieChart$LabelLayoutInfo;
    move-wide/from16 v4, p1

    .local v4, "startX":D
    move-wide/from16 v6, p3

    .local v6, "startY":D
    move-wide/from16 v8, p5

    .local v8, "endX":D
    move-wide/from16 v10, p7

    .local v10, "endY":D
    move-wide/from16 v12, p9

    .local v12, "textX":D
    move-wide/from16 v14, p11

    .local v14, "textY":D
    move-object/from16 v16, p13

    .local v16, "text":Ljavafx/scene/text/Text;
    move-wide/from16 v17, p14

    .local v17, "size":D
    move-object/from16 v19, v3

    invoke-direct/range {v19 .. v19}, Ljava/lang/Object;-><init>()V

    .line 809
    move-object/from16 v19, v3

    move-wide/from16 v20, v4

    move-wide/from16 v0, v20

    move-object/from16 v2, v19

    iput-wide v0, v2, Ljavafx/scene/chart/PieChart$LabelLayoutInfo;->startX:D

    .line 810
    move-object/from16 v19, v3

    move-wide/from16 v20, v6

    move-wide/from16 v0, v20

    move-object/from16 v2, v19

    iput-wide v0, v2, Ljavafx/scene/chart/PieChart$LabelLayoutInfo;->startY:D

    .line 811
    move-object/from16 v19, v3

    move-wide/from16 v20, v8

    move-wide/from16 v0, v20

    move-object/from16 v2, v19

    iput-wide v0, v2, Ljavafx/scene/chart/PieChart$LabelLayoutInfo;->endX:D

    .line 812
    move-object/from16 v19, v3

    move-wide/from16 v20, v10

    move-wide/from16 v0, v20

    move-object/from16 v2, v19

    iput-wide v0, v2, Ljavafx/scene/chart/PieChart$LabelLayoutInfo;->endY:D

    .line 813
    move-object/from16 v19, v3

    move-wide/from16 v20, v12

    move-wide/from16 v0, v20

    move-object/from16 v2, v19

    iput-wide v0, v2, Ljavafx/scene/chart/PieChart$LabelLayoutInfo;->textX:D

    .line 814
    move-object/from16 v19, v3

    move-wide/from16 v20, v14

    move-wide/from16 v0, v20

    move-object/from16 v2, v19

    iput-wide v0, v2, Ljavafx/scene/chart/PieChart$LabelLayoutInfo;->textY:D

    .line 815
    move-object/from16 v19, v3

    move-object/from16 v20, v16

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Ljavafx/scene/chart/PieChart$LabelLayoutInfo;->text:Ljavafx/scene/text/Text;

    .line 816
    move-object/from16 v19, v3

    move-wide/from16 v20, v17

    move-wide/from16 v0, v20

    move-object/from16 v2, v19

    iput-wide v0, v2, Ljavafx/scene/chart/PieChart$LabelLayoutInfo;->size:D

    .line 817
    return-void
.end method
