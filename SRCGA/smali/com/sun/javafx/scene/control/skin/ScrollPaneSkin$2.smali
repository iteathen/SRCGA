.class Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin$2;
.super Ljava/lang/Object;
.source "ScrollPaneSkin.java"

# interfaces
.implements Ljavafx/beans/value/ChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;
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
        "Ljavafx/geometry/Bounds;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;


# direct methods
.method constructor <init>(Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;)V
    .locals 4

    .prologue
    .line 178
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin$2;
    move-object v1, p1

    .local v1, "this$0":Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin$2;->this$0:Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic changed(Ljavafx/beans/value/ObservableValue;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 8

    .prologue
    .line 178
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin$2;
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    check-cast v6, Ljavafx/geometry/Bounds;

    move-object v7, v3

    check-cast v7, Ljavafx/geometry/Bounds;

    invoke-virtual {v4, v5, v6, v7}, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin$2;->changed(Ljavafx/beans/value/ObservableValue;Ljavafx/geometry/Bounds;Ljavafx/geometry/Bounds;)V

    return-void
.end method

.method public changed(Ljavafx/beans/value/ObservableValue;Ljavafx/geometry/Bounds;Ljavafx/geometry/Bounds;)V
    .locals 29
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/value/ObservableValue",
            "<+",
            "Ljavafx/geometry/Bounds;",
            ">;",
            "Ljavafx/geometry/Bounds;",
            "Ljavafx/geometry/Bounds;",
            ")V"
        }
    .end annotation

    .prologue
    .line 187
    move-object/from16 v2, p0

    .local v2, "this":Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin$2;
    move-object/from16 v3, p1

    .local v3, "observable":Ljavafx/beans/value/ObservableValue;, "Ljavafx/beans/value/ObservableValue<+Ljavafx/geometry/Bounds;>;"
    move-object/from16 v4, p2

    .local v4, "oldBounds":Ljavafx/geometry/Bounds;
    move-object/from16 v5, p3

    .local v5, "newBounds":Ljavafx/geometry/Bounds;
    move-object/from16 v20, v4

    invoke-virtual/range {v20 .. v20}, Ljavafx/geometry/Bounds;->getHeight()D

    move-result-wide v20

    move-wide/from16 v6, v20

    .line 188
    .local v6, "oldHeight":D
    move-object/from16 v20, v5

    invoke-virtual/range {v20 .. v20}, Ljavafx/geometry/Bounds;->getHeight()D

    move-result-wide v20

    move-wide/from16 v8, v20

    .line 189
    .local v8, "newHeight":D
    move-wide/from16 v20, v6

    const-wide/16 v22, 0x0

    cmpl-double v20, v20, v22

    if-lez v20, :cond_0

    move-wide/from16 v20, v6

    move-wide/from16 v22, v8

    cmpl-double v20, v20, v22

    if-eqz v20, :cond_0

    .line 190
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin$2;->this$0:Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;

    move-object/from16 v20, v0

    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin$2;->this$0:Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->access$1100(Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;)D

    move-result-wide v21

    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin$2;->this$0:Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->access$1200(Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;)D

    move-result-wide v23

    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin$2;->this$0:Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->vsb:Ljavafx/scene/control/ScrollBar;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljavafx/scene/control/ScrollBar;->getMax()D

    move-result-wide v25

    move-object/from16 v27, v2

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin$2;->this$0:Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->vsb:Ljavafx/scene/control/ScrollBar;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljavafx/scene/control/ScrollBar;->getMin()D

    move-result-wide v27

    sub-double v25, v25, v27

    div-double v23, v23, v25

    move-wide/from16 v25, v6

    move-object/from16 v27, v2

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin$2;->this$0:Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->access$1300(Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;)D

    move-result-wide v27

    sub-double v25, v25, v27

    mul-double v23, v23, v25

    sub-double v21, v21, v23

    invoke-static/range {v20 .. v22}, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->access$1400(Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;D)D

    move-result-wide v20

    move-wide/from16 v10, v20

    .line 191
    .local v10, "oldPositionY":D
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin$2;->this$0:Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;

    move-object/from16 v20, v0

    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin$2;->this$0:Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->access$1500(Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;)D

    move-result-wide v21

    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin$2;->this$0:Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->access$1200(Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;)D

    move-result-wide v23

    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin$2;->this$0:Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->vsb:Ljavafx/scene/control/ScrollBar;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljavafx/scene/control/ScrollBar;->getMax()D

    move-result-wide v25

    move-object/from16 v27, v2

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin$2;->this$0:Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->vsb:Ljavafx/scene/control/ScrollBar;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljavafx/scene/control/ScrollBar;->getMin()D

    move-result-wide v27

    sub-double v25, v25, v27

    div-double v23, v23, v25

    move-wide/from16 v25, v8

    move-object/from16 v27, v2

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin$2;->this$0:Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->access$1300(Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;)D

    move-result-wide v27

    sub-double v25, v25, v27

    mul-double v23, v23, v25

    sub-double v21, v21, v23

    invoke-static/range {v20 .. v22}, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->access$1600(Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;D)D

    move-result-wide v20

    move-wide/from16 v12, v20

    .line 193
    .local v12, "newPositionY":D
    move-wide/from16 v20, v10

    move-wide/from16 v22, v12

    div-double v20, v20, v22

    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin$2;->this$0:Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->vsb:Ljavafx/scene/control/ScrollBar;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljavafx/scene/control/ScrollBar;->getValue()D

    move-result-wide v22

    mul-double v20, v20, v22

    move-wide/from16 v14, v20

    .line 194
    .local v14, "newValueY":D
    move-wide/from16 v20, v14

    const-wide/16 v22, 0x0

    cmpg-double v20, v20, v22

    if-gez v20, :cond_2

    .line 195
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin$2;->this$0:Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->vsb:Ljavafx/scene/control/ScrollBar;

    move-object/from16 v20, v0

    const-wide/16 v21, 0x0

    invoke-virtual/range {v20 .. v22}, Ljavafx/scene/control/ScrollBar;->setValue(D)V

    .line 211
    .end local v10    # "oldPositionY":D
    .end local v12    # "newPositionY":D
    .end local v14    # "newValueY":D
    :cond_0
    :goto_0
    move-object/from16 v20, v4

    invoke-virtual/range {v20 .. v20}, Ljavafx/geometry/Bounds;->getWidth()D

    move-result-wide v20

    move-wide/from16 v10, v20

    .line 212
    .local v10, "oldWidth":D
    move-object/from16 v20, v5

    invoke-virtual/range {v20 .. v20}, Ljavafx/geometry/Bounds;->getWidth()D

    move-result-wide v20

    move-wide/from16 v12, v20

    .line 213
    .local v12, "newWidth":D
    move-wide/from16 v20, v10

    const-wide/16 v22, 0x0

    cmpl-double v20, v20, v22

    if-lez v20, :cond_1

    move-wide/from16 v20, v10

    move-wide/from16 v22, v12

    cmpl-double v20, v20, v22

    if-eqz v20, :cond_1

    .line 214
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin$2;->this$0:Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;

    move-object/from16 v20, v0

    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin$2;->this$0:Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->access$1700(Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;)D

    move-result-wide v21

    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin$2;->this$0:Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->access$1800(Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;)D

    move-result-wide v23

    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin$2;->this$0:Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->hsb:Ljavafx/scene/control/ScrollBar;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljavafx/scene/control/ScrollBar;->getMax()D

    move-result-wide v25

    move-object/from16 v27, v2

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin$2;->this$0:Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->hsb:Ljavafx/scene/control/ScrollBar;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljavafx/scene/control/ScrollBar;->getMin()D

    move-result-wide v27

    sub-double v25, v25, v27

    div-double v23, v23, v25

    move-wide/from16 v25, v10

    move-object/from16 v27, v2

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin$2;->this$0:Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->access$1900(Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;)D

    move-result-wide v27

    sub-double v25, v25, v27

    mul-double v23, v23, v25

    sub-double v21, v21, v23

    invoke-static/range {v20 .. v22}, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->access$2000(Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;D)D

    move-result-wide v20

    move-wide/from16 v14, v20

    .line 215
    .local v14, "oldPositionX":D
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin$2;->this$0:Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;

    move-object/from16 v20, v0

    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin$2;->this$0:Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->access$2100(Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;)D

    move-result-wide v21

    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin$2;->this$0:Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->access$1800(Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;)D

    move-result-wide v23

    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin$2;->this$0:Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->hsb:Ljavafx/scene/control/ScrollBar;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljavafx/scene/control/ScrollBar;->getMax()D

    move-result-wide v25

    move-object/from16 v27, v2

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin$2;->this$0:Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->hsb:Ljavafx/scene/control/ScrollBar;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljavafx/scene/control/ScrollBar;->getMin()D

    move-result-wide v27

    sub-double v25, v25, v27

    div-double v23, v23, v25

    move-wide/from16 v25, v12

    move-object/from16 v27, v2

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin$2;->this$0:Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->access$1900(Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;)D

    move-result-wide v27

    sub-double v25, v25, v27

    mul-double v23, v23, v25

    sub-double v21, v21, v23

    invoke-static/range {v20 .. v22}, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->access$2200(Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;D)D

    move-result-wide v20

    move-wide/from16 v16, v20

    .line 217
    .local v16, "newPositionX":D
    move-wide/from16 v20, v14

    move-wide/from16 v22, v16

    div-double v20, v20, v22

    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin$2;->this$0:Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->hsb:Ljavafx/scene/control/ScrollBar;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljavafx/scene/control/ScrollBar;->getValue()D

    move-result-wide v22

    mul-double v20, v20, v22

    move-wide/from16 v18, v20

    .line 218
    .local v18, "newValueX":D
    move-wide/from16 v20, v18

    const-wide/16 v22, 0x0

    cmpg-double v20, v20, v22

    if-gez v20, :cond_4

    .line 219
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin$2;->this$0:Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->hsb:Ljavafx/scene/control/ScrollBar;

    move-object/from16 v20, v0

    const-wide/16 v21, 0x0

    invoke-virtual/range {v20 .. v22}, Ljavafx/scene/control/ScrollBar;->setValue(D)V

    .line 228
    .end local v14    # "oldPositionX":D
    .end local v16    # "newPositionX":D
    .end local v18    # "newValueX":D
    :cond_1
    :goto_1
    return-void

    .line 197
    .local v10, "oldPositionY":D
    .local v12, "newPositionY":D
    .local v14, "newValueY":D
    :cond_2
    move-wide/from16 v20, v14

    const-wide/high16 v22, 0x3ff0000000000000L    # 1.0

    cmpg-double v20, v20, v22

    if-gez v20, :cond_3

    .line 198
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin$2;->this$0:Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->vsb:Ljavafx/scene/control/ScrollBar;

    move-object/from16 v20, v0

    move-wide/from16 v21, v14

    invoke-virtual/range {v20 .. v22}, Ljavafx/scene/control/ScrollBar;->setValue(D)V

    goto/16 :goto_0

    .line 200
    :cond_3
    move-wide/from16 v20, v14

    const-wide/high16 v22, 0x3ff0000000000000L    # 1.0

    cmpl-double v20, v20, v22

    if-lez v20, :cond_0

    .line 201
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin$2;->this$0:Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->vsb:Ljavafx/scene/control/ScrollBar;

    move-object/from16 v20, v0

    const-wide/high16 v21, 0x3ff0000000000000L    # 1.0

    invoke-virtual/range {v20 .. v22}, Ljavafx/scene/control/ScrollBar;->setValue(D)V

    goto/16 :goto_0

    .line 221
    .local v10, "oldWidth":D
    .local v12, "newWidth":D
    .local v14, "oldPositionX":D
    .restart local v16    # "newPositionX":D
    .restart local v18    # "newValueX":D
    :cond_4
    move-wide/from16 v20, v18

    const-wide/high16 v22, 0x3ff0000000000000L    # 1.0

    cmpg-double v20, v20, v22

    if-gez v20, :cond_5

    .line 222
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin$2;->this$0:Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->hsb:Ljavafx/scene/control/ScrollBar;

    move-object/from16 v20, v0

    move-wide/from16 v21, v18

    invoke-virtual/range {v20 .. v22}, Ljavafx/scene/control/ScrollBar;->setValue(D)V

    goto :goto_1

    .line 224
    :cond_5
    move-wide/from16 v20, v18

    const-wide/high16 v22, 0x3ff0000000000000L    # 1.0

    cmpl-double v20, v20, v22

    if-lez v20, :cond_1

    .line 225
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin$2;->this$0:Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;->hsb:Ljavafx/scene/control/ScrollBar;

    move-object/from16 v20, v0

    const-wide/high16 v21, 0x3ff0000000000000L    # 1.0

    invoke-virtual/range {v20 .. v22}, Ljavafx/scene/control/ScrollBar;->setValue(D)V

    goto :goto_1
.end method
