.class Lcom/sun/javafx/scene/control/skin/ProgressBarSkin$IndeterminateTransition;
.super Ljavafx/animation/Transition;
.source "ProgressBarSkin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/scene/control/skin/ProgressBarSkin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IndeterminateTransition"
.end annotation


# instance fields
.field private final endX:D

.field private final flip:Z

.field private final skin:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/sun/javafx/scene/control/skin/ProgressBarSkin;",
            ">;"
        }
    .end annotation
.end field

.field private final startX:D


# direct methods
.method public constructor <init>(DDLcom/sun/javafx/scene/control/skin/ProgressBarSkin;)V
    .locals 13

    .prologue
    .line 492
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/ProgressBarSkin$IndeterminateTransition;
    move-wide v2, p1

    .local v2, "startX":D
    move-wide/from16 v4, p3

    .local v4, "endX":D
    move-object/from16 v6, p5

    .local v6, "progressBarSkin":Lcom/sun/javafx/scene/control/skin/ProgressBarSkin;
    move-object v7, v1

    invoke-direct {v7}, Ljavafx/animation/Transition;-><init>()V

    .line 493
    move-object v7, v1

    move-wide v8, v2

    iput-wide v8, v7, Lcom/sun/javafx/scene/control/skin/ProgressBarSkin$IndeterminateTransition;->startX:D

    .line 494
    move-object v7, v1

    move-wide v8, v4

    iput-wide v8, v7, Lcom/sun/javafx/scene/control/skin/ProgressBarSkin$IndeterminateTransition;->endX:D

    .line 495
    move-object v7, v1

    new-instance v8, Ljava/lang/ref/WeakReference;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    move-object v10, v6

    invoke-direct {v9, v10}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v8, v7, Lcom/sun/javafx/scene/control/skin/ProgressBarSkin$IndeterminateTransition;->skin:Ljava/lang/ref/WeakReference;

    .line 496
    move-object v7, v1

    move-object v8, v6

    invoke-static {v8}, Lcom/sun/javafx/scene/control/skin/ProgressBarSkin;->access$1300(Lcom/sun/javafx/scene/control/skin/ProgressBarSkin;)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    iput-boolean v8, v7, Lcom/sun/javafx/scene/control/skin/ProgressBarSkin$IndeterminateTransition;->flip:Z

    .line 497
    move-object v7, v6

    invoke-static {v7}, Lcom/sun/javafx/scene/control/skin/ProgressBarSkin;->access$1400(Lcom/sun/javafx/scene/control/skin/ProgressBarSkin;)Ljava/lang/Boolean;

    move-result-object v7

    .line 498
    move-object v7, v1

    move-object v8, v6

    invoke-static {v8}, Lcom/sun/javafx/scene/control/skin/ProgressBarSkin;->access$1500(Lcom/sun/javafx/scene/control/skin/ProgressBarSkin;)D

    move-result-wide v8

    move-object v10, v1

    iget-boolean v10, v10, Lcom/sun/javafx/scene/control/skin/ProgressBarSkin$IndeterminateTransition;->flip:Z

    if-eqz v10, :cond_0

    const/4 v10, 0x2

    :goto_0
    int-to-double v10, v10

    mul-double/2addr v8, v10

    invoke-static {v8, v9}, Ljavafx/util/Duration;->seconds(D)Ljavafx/util/Duration;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/sun/javafx/scene/control/skin/ProgressBarSkin$IndeterminateTransition;->setCycleDuration(Ljavafx/util/Duration;)V

    .line 499
    return-void

    .line 498
    :cond_0
    const/4 v10, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected interpolate(D)V
    .locals 15

    .prologue
    .line 503
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/ProgressBarSkin$IndeterminateTransition;
    move-wide/from16 v2, p1

    .local v2, "frac":D
    move-object v5, v1

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/ProgressBarSkin$IndeterminateTransition;->skin:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sun/javafx/scene/control/skin/ProgressBarSkin;

    move-object v4, v5

    .line 504
    .local v4, "s":Lcom/sun/javafx/scene/control/skin/ProgressBarSkin;
    move-object v5, v4

    if-nez v5, :cond_0

    .line 505
    move-object v5, v1

    invoke-virtual {v5}, Lcom/sun/javafx/scene/control/skin/ProgressBarSkin$IndeterminateTransition;->stop()V

    .line 515
    :goto_0
    return-void

    .line 507
    :cond_0
    move-wide v5, v2

    const-wide/high16 v7, 0x3fe0000000000000L    # 0.5

    cmpg-double v5, v5, v7

    if-lez v5, :cond_1

    move-object v5, v1

    iget-boolean v5, v5, Lcom/sun/javafx/scene/control/skin/ProgressBarSkin$IndeterminateTransition;->flip:Z

    if-nez v5, :cond_3

    .line 508
    :cond_1
    move-object v5, v4

    invoke-static {v5}, Lcom/sun/javafx/scene/control/skin/ProgressBarSkin;->access$1600(Lcom/sun/javafx/scene/control/skin/ProgressBarSkin;)Ljavafx/scene/layout/StackPane;

    move-result-object v5

    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/layout/StackPane;->setScaleX(D)V

    .line 509
    move-object v5, v4

    invoke-static {v5}, Lcom/sun/javafx/scene/control/skin/ProgressBarSkin;->access$1600(Lcom/sun/javafx/scene/control/skin/ProgressBarSkin;)Ljavafx/scene/layout/StackPane;

    move-result-object v5

    move-object v6, v1

    iget-wide v6, v6, Lcom/sun/javafx/scene/control/skin/ProgressBarSkin$IndeterminateTransition;->startX:D

    move-object v8, v1

    iget-boolean v8, v8, Lcom/sun/javafx/scene/control/skin/ProgressBarSkin$IndeterminateTransition;->flip:Z

    if-eqz v8, :cond_2

    const/4 v8, 0x2

    :goto_1
    int-to-double v8, v8

    move-wide v10, v2

    mul-double/2addr v8, v10

    move-object v10, v1

    iget-wide v10, v10, Lcom/sun/javafx/scene/control/skin/ProgressBarSkin$IndeterminateTransition;->endX:D

    move-object v12, v1

    iget-wide v12, v12, Lcom/sun/javafx/scene/control/skin/ProgressBarSkin$IndeterminateTransition;->startX:D

    sub-double/2addr v10, v12

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/layout/StackPane;->setTranslateX(D)V

    goto :goto_0

    :cond_2
    const/4 v8, 0x1

    goto :goto_1

    .line 511
    :cond_3
    move-object v5, v4

    invoke-static {v5}, Lcom/sun/javafx/scene/control/skin/ProgressBarSkin;->access$1600(Lcom/sun/javafx/scene/control/skin/ProgressBarSkin;)Ljavafx/scene/layout/StackPane;

    move-result-object v5

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/layout/StackPane;->setScaleX(D)V

    .line 512
    move-object v5, v4

    invoke-static {v5}, Lcom/sun/javafx/scene/control/skin/ProgressBarSkin;->access$1600(Lcom/sun/javafx/scene/control/skin/ProgressBarSkin;)Ljavafx/scene/layout/StackPane;

    move-result-object v5

    move-object v6, v1

    iget-wide v6, v6, Lcom/sun/javafx/scene/control/skin/ProgressBarSkin$IndeterminateTransition;->startX:D

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    move-wide v12, v2

    sub-double/2addr v10, v12

    mul-double/2addr v8, v10

    move-object v10, v1

    iget-wide v10, v10, Lcom/sun/javafx/scene/control/skin/ProgressBarSkin$IndeterminateTransition;->endX:D

    move-object v12, v1

    iget-wide v12, v12, Lcom/sun/javafx/scene/control/skin/ProgressBarSkin$IndeterminateTransition;->startX:D

    sub-double/2addr v10, v12

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/layout/StackPane;->setTranslateX(D)V

    goto :goto_0
.end method
