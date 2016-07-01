.class Lcom/sun/javafx/scene/control/skin/SliderSkin$3;
.super Ljavafx/animation/Transition;
.source "SliderSkin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sun/javafx/scene/control/skin/SliderSkin;->positionThumb(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sun/javafx/scene/control/skin/SliderSkin;

.field final synthetic val$endX:D

.field final synthetic val$endY:D

.field final synthetic val$startX:D

.field final synthetic val$startY:D


# direct methods
.method constructor <init>(Lcom/sun/javafx/scene/control/skin/SliderSkin;DDDD)V
    .locals 14

    .prologue
    .line 253
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/SliderSkin$3;
    move-object v2, p1

    .local v2, "this$0":Lcom/sun/javafx/scene/control/skin/SliderSkin;
    move-wide/from16 v3, p2

    move-wide/from16 v5, p4

    move-wide/from16 v7, p6

    move-wide/from16 v9, p8

    move-object v11, v1

    move-object v12, v2

    iput-object v12, v11, Lcom/sun/javafx/scene/control/skin/SliderSkin$3;->this$0:Lcom/sun/javafx/scene/control/skin/SliderSkin;

    move-object v11, v1

    move-wide v12, v3

    iput-wide v12, v11, Lcom/sun/javafx/scene/control/skin/SliderSkin$3;->val$startX:D

    move-object v11, v1

    move-wide v12, v5

    iput-wide v12, v11, Lcom/sun/javafx/scene/control/skin/SliderSkin$3;->val$endX:D

    move-object v11, v1

    move-wide v12, v7

    iput-wide v12, v11, Lcom/sun/javafx/scene/control/skin/SliderSkin$3;->val$startY:D

    move-object v11, v1

    move-wide v12, v9

    iput-wide v12, v11, Lcom/sun/javafx/scene/control/skin/SliderSkin$3;->val$endY:D

    move-object v11, v1

    invoke-direct {v11}, Ljavafx/animation/Transition;-><init>()V

    .line 255
    move-object v11, v1

    const-wide/high16 v12, 0x4069000000000000L    # 200.0

    invoke-static {v12, v13}, Ljavafx/util/Duration;->millis(D)Ljavafx/util/Duration;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/sun/javafx/scene/control/skin/SliderSkin$3;->setCycleDuration(Ljavafx/util/Duration;)V

    .line 256
    return-void
.end method


# virtual methods
.method protected interpolate(D)V
    .locals 13

    .prologue
    .line 259
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/SliderSkin$3;
    move-wide v1, p1

    .local v1, "frac":D
    move-object v3, v0

    iget-wide v3, v3, Lcom/sun/javafx/scene/control/skin/SliderSkin$3;->val$startX:D

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    move-result v3

    if-nez v3, :cond_0

    .line 260
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/SliderSkin$3;->this$0:Lcom/sun/javafx/scene/control/skin/SliderSkin;

    invoke-static {v3}, Lcom/sun/javafx/scene/control/skin/SliderSkin;->access$000(Lcom/sun/javafx/scene/control/skin/SliderSkin;)Ljavafx/scene/layout/StackPane;

    move-result-object v3

    move-object v4, v0

    iget-wide v4, v4, Lcom/sun/javafx/scene/control/skin/SliderSkin$3;->val$startX:D

    move-wide v6, v1

    move-object v8, v0

    iget-wide v8, v8, Lcom/sun/javafx/scene/control/skin/SliderSkin$3;->val$endX:D

    move-object v10, v0

    iget-wide v10, v10, Lcom/sun/javafx/scene/control/skin/SliderSkin$3;->val$startX:D

    sub-double/2addr v8, v10

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/layout/StackPane;->setLayoutX(D)V

    .line 262
    :cond_0
    move-object v3, v0

    iget-wide v3, v3, Lcom/sun/javafx/scene/control/skin/SliderSkin$3;->val$startY:D

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    move-result v3

    if-nez v3, :cond_1

    .line 263
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/SliderSkin$3;->this$0:Lcom/sun/javafx/scene/control/skin/SliderSkin;

    invoke-static {v3}, Lcom/sun/javafx/scene/control/skin/SliderSkin;->access$000(Lcom/sun/javafx/scene/control/skin/SliderSkin;)Ljavafx/scene/layout/StackPane;

    move-result-object v3

    move-object v4, v0

    iget-wide v4, v4, Lcom/sun/javafx/scene/control/skin/SliderSkin$3;->val$startY:D

    move-wide v6, v1

    move-object v8, v0

    iget-wide v8, v8, Lcom/sun/javafx/scene/control/skin/SliderSkin$3;->val$endY:D

    move-object v10, v0

    iget-wide v10, v10, Lcom/sun/javafx/scene/control/skin/SliderSkin$3;->val$startY:D

    sub-double/2addr v8, v10

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/layout/StackPane;->setLayoutY(D)V

    .line 265
    :cond_1
    return-void
.end method
