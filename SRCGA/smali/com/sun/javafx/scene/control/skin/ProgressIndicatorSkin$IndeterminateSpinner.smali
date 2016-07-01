.class final Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$IndeterminateSpinner;
.super Ljavafx/scene/layout/Region;
.source "ProgressIndicatorSkin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "IndeterminateSpinner"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$IndeterminateSpinner$IndicatorPaths;
    }
.end annotation


# instance fields
.field private fillOverride:Ljavafx/scene/paint/Paint;

.field private final opacities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private pathsG:Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$IndeterminateSpinner$IndicatorPaths;

.field private spinEnabled:Z

.field final synthetic this$0:Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin;


# direct methods
.method private constructor <init>(Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin;ZLjavafx/scene/paint/Paint;)V
    .locals 10

    .prologue
    .line 553
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$IndeterminateSpinner;
    move-object v1, p1

    move v2, p2

    .local v2, "spinEnabled":Z
    move-object v3, p3

    .local v3, "fillOverride":Ljavafx/scene/paint/Paint;
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$IndeterminateSpinner;->this$0:Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin;

    move-object v4, v0

    invoke-direct {v4}, Ljavafx/scene/layout/Region;-><init>()V

    .line 549
    move-object v4, v0

    new-instance v5, Ljava/util/ArrayList;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v4, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$IndeterminateSpinner;->opacities:Ljava/util/List;

    .line 550
    move-object v4, v0

    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$IndeterminateSpinner;->spinEnabled:Z

    .line 551
    move-object v4, v0

    const/4 v5, 0x0

    iput-object v5, v4, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$IndeterminateSpinner;->fillOverride:Ljavafx/scene/paint/Paint;

    .line 554
    move-object v4, v0

    move v5, v2

    iput-boolean v5, v4, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$IndeterminateSpinner;->spinEnabled:Z

    .line 555
    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$IndeterminateSpinner;->fillOverride:Ljavafx/scene/paint/Paint;

    .line 557
    move-object v4, v0

    sget-object v5, Ljavafx/geometry/NodeOrientation;->LEFT_TO_RIGHT:Ljavafx/geometry/NodeOrientation;

    invoke-virtual {v4, v5}, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$IndeterminateSpinner;->setNodeOrientation(Ljavafx/geometry/NodeOrientation;)V

    .line 558
    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$IndeterminateSpinner;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    const-string v8, "spinner"

    aput-object v8, v6, v7

    invoke-interface {v4, v5}, Ljavafx/collections/ObservableList;->setAll([Ljava/lang/Object;)Z

    move-result v4

    .line 560
    move-object v4, v0

    new-instance v5, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$IndeterminateSpinner$IndicatorPaths;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v0

    const/4 v8, 0x0

    invoke-direct {v6, v7, v8}, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$IndeterminateSpinner$IndicatorPaths;-><init>(Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$IndeterminateSpinner;Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$1;)V

    iput-object v5, v4, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$IndeterminateSpinner;->pathsG:Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$IndeterminateSpinner$IndicatorPaths;

    .line 561
    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$IndeterminateSpinner;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$IndeterminateSpinner;->pathsG:Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$IndeterminateSpinner$IndicatorPaths;

    invoke-interface {v4, v5}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v4

    .line 562
    move-object v4, v0

    invoke-direct {v4}, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$IndeterminateSpinner;->rebuild()V

    .line 564
    move-object v4, v0

    invoke-direct {v4}, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$IndeterminateSpinner;->rebuildTimeline()V

    .line 566
    return-void
.end method

.method synthetic constructor <init>(Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin;ZLjavafx/scene/paint/Paint;Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$1;)V
    .locals 9

    .prologue
    .line 547
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$IndeterminateSpinner;
    move-object v1, p1

    .local v1, "x0":Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin;
    move v2, p2

    .local v2, "x1":Z
    move-object v3, p3

    .local v3, "x2":Ljavafx/scene/paint/Paint;
    move-object v4, p4

    .local v4, "x3":Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$1;
    move-object v5, v0

    move-object v6, v1

    move v7, v2

    move-object v8, v3

    invoke-direct {v5, v6, v7, v8}, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$IndeterminateSpinner;-><init>(Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin;ZLjavafx/scene/paint/Paint;)V

    return-void
.end method

.method static synthetic access$400(Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$IndeterminateSpinner;)V
    .locals 2

    .prologue
    .line 547
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$IndeterminateSpinner;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$IndeterminateSpinner;->rebuild()V

    return-void
.end method

.method static synthetic access$900(Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$IndeterminateSpinner;)V
    .locals 2

    .prologue
    .line 547
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$IndeterminateSpinner;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$IndeterminateSpinner;->rebuildTimeline()V

    return-void
.end method

.method static synthetic access$lambda$0(Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$IndeterminateSpinner;Ljavafx/event/ActionEvent;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$IndeterminateSpinner;->lambda$rebuildTimeline$430(Ljavafx/event/ActionEvent;)V

    return-void
.end method

.method private synthetic lambda$rebuildTimeline$430(Ljavafx/event/ActionEvent;)V
    .locals 3

    .prologue
    .line 594
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$IndeterminateSpinner;
    move-object v1, p1

    .local v1, "event":Ljavafx/event/ActionEvent;
    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$IndeterminateSpinner;->shiftColors()V

    return-void
.end method

.method private rebuild()V
    .locals 18

    .prologue
    .line 676
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$IndeterminateSpinner;
    move-object v8, v1

    iget-object v8, v8, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$IndeterminateSpinner;->this$0:Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin;

    invoke-static {v8}, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin;->access$1400(Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin;)Ljavafx/beans/property/IntegerProperty;

    move-result-object v8

    invoke-virtual {v8}, Ljavafx/beans/property/IntegerProperty;->get()I

    move-result v8

    move v2, v8

    .line 677
    .local v2, "segments":I
    move-object v8, v1

    iget-object v8, v8, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$IndeterminateSpinner;->opacities:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->clear()V

    .line 678
    move-object v8, v1

    iget-object v8, v8, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$IndeterminateSpinner;->pathsG:Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$IndeterminateSpinner$IndicatorPaths;

    invoke-virtual {v8}, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$IndeterminateSpinner$IndicatorPaths;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v8

    invoke-interface {v8}, Ljavafx/collections/ObservableList;->clear()V

    .line 679
    const-wide v8, 0x3fe999999999999aL    # 0.8

    move v10, v2

    const/4 v11, 0x1

    add-int/lit8 v10, v10, -0x1

    int-to-double v10, v10

    div-double/2addr v8, v10

    move-wide v3, v8

    .line 680
    .local v3, "step":D
    const/4 v8, 0x0

    move v5, v8

    .local v5, "i":I
    :goto_0
    move v8, v5

    move v9, v2

    if-ge v8, v9, :cond_1

    .line 681
    new-instance v8, Ljavafx/scene/layout/Region;

    move-object/from16 v17, v8

    move-object/from16 v8, v17

    move-object/from16 v9, v17

    invoke-direct {v9}, Ljavafx/scene/layout/Region;-><init>()V

    move-object v6, v8

    .line 682
    .local v6, "region":Ljavafx/scene/layout/Region;
    move-object v8, v6

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljavafx/scene/layout/Region;->setScaleShape(Z)V

    .line 683
    move-object v8, v6

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljavafx/scene/layout/Region;->setCenterShape(Z)V

    .line 684
    move-object v8, v6

    invoke-virtual {v8}, Ljavafx/scene/layout/Region;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v8

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/String;

    move-object/from16 v17, v9

    move-object/from16 v9, v17

    move-object/from16 v10, v17

    const/4 v11, 0x0

    const-string v12, "segment"

    aput-object v12, v10, v11

    move-object/from16 v17, v9

    move-object/from16 v9, v17

    move-object/from16 v10, v17

    const/4 v11, 0x1

    new-instance v12, Ljava/lang/StringBuilder;

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "segment"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move v13, v5

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-interface {v8, v9}, Ljavafx/collections/ObservableList;->addAll([Ljava/lang/Object;)Z

    move-result v8

    .line 685
    move-object v8, v1

    iget-object v8, v8, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$IndeterminateSpinner;->fillOverride:Ljavafx/scene/paint/Paint;

    instance-of v8, v8, Ljavafx/scene/paint/Color;

    if-eqz v8, :cond_0

    .line 686
    move-object v8, v1

    iget-object v8, v8, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$IndeterminateSpinner;->fillOverride:Ljavafx/scene/paint/Paint;

    check-cast v8, Ljavafx/scene/paint/Color;

    move-object v7, v8

    .line 687
    .local v7, "c":Ljavafx/scene/paint/Color;
    move-object v8, v6

    new-instance v9, Ljava/lang/StringBuilder;

    move-object/from16 v17, v9

    move-object/from16 v9, v17

    move-object/from16 v10, v17

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "-fx-background-color: rgba("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-wide v10, 0x406fe00000000000L    # 255.0

    move-object v12, v7

    invoke-virtual {v12}, Ljavafx/scene/paint/Color;->getRed()D

    move-result-wide v12

    mul-double/2addr v10, v12

    double-to-int v10, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-wide v10, 0x406fe00000000000L    # 255.0

    move-object v12, v7

    invoke-virtual {v12}, Ljavafx/scene/paint/Color;->getGreen()D

    move-result-wide v12

    mul-double/2addr v10, v12

    double-to-int v10, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-wide v10, 0x406fe00000000000L    # 255.0

    move-object v12, v7

    invoke-virtual {v12}, Ljavafx/scene/paint/Color;->getBlue()D

    move-result-wide v12

    mul-double/2addr v10, v12

    double-to-int v10, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v7

    invoke-virtual {v10}, Ljavafx/scene/paint/Color;->getOpacity()D

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ");"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljavafx/scene/layout/Region;->setStyle(Ljava/lang/String;)V

    .line 688
    .line 691
    .end local v7    # "c":Ljavafx/scene/paint/Color;
    :goto_1
    move-object v8, v1

    iget-object v8, v8, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$IndeterminateSpinner;->pathsG:Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$IndeterminateSpinner$IndicatorPaths;

    invoke-virtual {v8}, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$IndeterminateSpinner$IndicatorPaths;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v8

    move-object v9, v6

    invoke-interface {v8, v9}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v8

    .line 692
    move-object v8, v1

    iget-object v8, v8, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$IndeterminateSpinner;->opacities:Ljava/util/List;

    const-wide v9, 0x3fb999999999999aL    # 0.1

    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    move-wide v13, v3

    move v15, v5

    int-to-double v15, v15

    mul-double/2addr v13, v15

    sub-double/2addr v11, v13

    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->max(DD)D

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v8

    .line 680
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 689
    :cond_0
    move-object v8, v6

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljavafx/scene/layout/Region;->setStyle(Ljava/lang/String;)V

    goto :goto_1

    .line 694
    .end local v6    # "region":Ljavafx/scene/layout/Region;
    :cond_1
    return-void
.end method

.method private rebuildTimeline()V
    .locals 15

    .prologue
    .line 579
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$IndeterminateSpinner;
    move-object v3, v0

    iget-boolean v3, v3, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$IndeterminateSpinner;->spinEnabled:Z

    if-eqz v3, :cond_3

    .line 580
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$IndeterminateSpinner;->this$0:Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin;

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin;->indeterminateTransition:Ljavafx/animation/Animation;

    if-nez v3, :cond_0

    .line 581
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$IndeterminateSpinner;->this$0:Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin;

    new-instance v4, Ljavafx/animation/Timeline;

    move-object v14, v4

    move-object v4, v14

    move-object v5, v14

    invoke-direct {v5}, Ljavafx/animation/Timeline;-><init>()V

    iput-object v4, v3, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin;->indeterminateTransition:Ljavafx/animation/Animation;

    .line 582
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$IndeterminateSpinner;->this$0:Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin;

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin;->indeterminateTransition:Ljavafx/animation/Animation;

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Ljavafx/animation/Animation;->setCycleCount(I)V

    .line 583
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$IndeterminateSpinner;->this$0:Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin;

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin;->indeterminateTransition:Ljavafx/animation/Animation;

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$IndeterminateSpinner;->this$0:Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin;

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin;->UNCLIPPED_DELAY:Ljavafx/util/Duration;

    invoke-virtual {v3, v4}, Ljavafx/animation/Animation;->setDelay(Ljavafx/util/Duration;)V

    .line 588
    :goto_0
    invoke-static {}, Ljavafx/collections/FXCollections;->observableArrayList()Ljavafx/collections/ObservableList;

    move-result-object v3

    move-object v1, v3

    .line 590
    .local v1, "keyFrames":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<Ljavafx/animation/KeyFrame;>;"
    move-object v3, v1

    new-instance v4, Ljavafx/animation/KeyFrame;

    move-object v14, v4

    move-object v4, v14

    move-object v5, v14

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    invoke-static {v6, v7}, Ljavafx/util/Duration;->millis(D)Ljavafx/util/Duration;

    move-result-object v6

    const/4 v7, 0x1

    new-array v7, v7, [Ljavafx/animation/KeyValue;

    move-object v14, v7

    move-object v7, v14

    move-object v8, v14

    const/4 v9, 0x0

    new-instance v10, Ljavafx/animation/KeyValue;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    move-object v12, v0

    iget-object v12, v12, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$IndeterminateSpinner;->pathsG:Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$IndeterminateSpinner$IndicatorPaths;

    invoke-virtual {v12}, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$IndeterminateSpinner$IndicatorPaths;->rotateProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v12

    const/16 v13, 0x168

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-direct {v11, v12, v13}, Ljavafx/animation/KeyValue;-><init>(Ljavafx/beans/value/WritableValue;Ljava/lang/Object;)V

    aput-object v10, v8, v9

    invoke-direct {v5, v6, v7}, Ljavafx/animation/KeyFrame;-><init>(Ljavafx/util/Duration;[Ljavafx/animation/KeyValue;)V

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v3

    .line 591
    move-object v3, v1

    new-instance v4, Ljavafx/animation/KeyFrame;

    move-object v14, v4

    move-object v4, v14

    move-object v5, v14

    const-wide v6, 0x40ae780000000000L    # 3900.0

    invoke-static {v6, v7}, Ljavafx/util/Duration;->millis(D)Ljavafx/util/Duration;

    move-result-object v6

    const/4 v7, 0x1

    new-array v7, v7, [Ljavafx/animation/KeyValue;

    move-object v14, v7

    move-object v7, v14

    move-object v8, v14

    const/4 v9, 0x0

    new-instance v10, Ljavafx/animation/KeyValue;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    move-object v12, v0

    iget-object v12, v12, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$IndeterminateSpinner;->pathsG:Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$IndeterminateSpinner$IndicatorPaths;

    invoke-virtual {v12}, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$IndeterminateSpinner$IndicatorPaths;->rotateProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v12

    const/4 v13, 0x0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-direct {v11, v12, v13}, Ljavafx/animation/KeyValue;-><init>(Ljavafx/beans/value/WritableValue;Ljava/lang/Object;)V

    aput-object v10, v8, v9

    invoke-direct {v5, v6, v7}, Ljavafx/animation/KeyFrame;-><init>(Ljavafx/util/Duration;[Ljavafx/animation/KeyValue;)V

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v3

    .line 593
    const/16 v3, 0x64

    move v2, v3

    .local v2, "i":I
    :goto_1
    move v3, v2

    const/16 v4, 0xf3c

    if-gt v3, v4, :cond_1

    .line 594
    move-object v3, v1

    new-instance v4, Ljavafx/animation/KeyFrame;

    move-object v14, v4

    move-object v4, v14

    move-object v5, v14

    move v6, v2

    int-to-double v6, v6

    invoke-static {v6, v7}, Ljavafx/util/Duration;->millis(D)Ljavafx/util/Duration;

    move-result-object v6

    move-object v7, v0

    invoke-static {v7}, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$IndeterminateSpinner$$Lambda$1;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$IndeterminateSpinner;)Ljavafx/event/EventHandler;

    move-result-object v7

    const/4 v8, 0x0

    new-array v8, v8, [Ljavafx/animation/KeyValue;

    invoke-direct {v5, v6, v7, v8}, Ljavafx/animation/KeyFrame;-><init>(Ljavafx/util/Duration;Ljavafx/event/EventHandler;[Ljavafx/animation/KeyValue;)V

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v3

    .line 593
    add-int/lit8 v2, v2, 0x64

    goto :goto_1

    .line 585
    .end local v1    # "keyFrames":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<Ljavafx/animation/KeyFrame;>;"
    .end local v2    # "i":I
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$IndeterminateSpinner;->this$0:Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin;

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin;->indeterminateTransition:Ljavafx/animation/Animation;

    invoke-virtual {v3}, Ljavafx/animation/Animation;->stop()V

    .line 586
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$IndeterminateSpinner;->this$0:Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin;

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin;->indeterminateTransition:Ljavafx/animation/Animation;

    check-cast v3, Ljavafx/animation/Timeline;

    invoke-virtual {v3}, Ljavafx/animation/Timeline;->getKeyFrames()Ljavafx/collections/ObservableList;

    move-result-object v3

    invoke-interface {v3}, Ljavafx/collections/ObservableList;->clear()V

    goto/16 :goto_0

    .line 597
    .restart local v1    # "keyFrames":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<Ljavafx/animation/KeyFrame;>;"
    .restart local v2    # "i":I
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$IndeterminateSpinner;->this$0:Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin;

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin;->indeterminateTransition:Ljavafx/animation/Animation;

    check-cast v3, Ljavafx/animation/Timeline;

    invoke-virtual {v3}, Ljavafx/animation/Timeline;->getKeyFrames()Ljavafx/collections/ObservableList;

    move-result-object v3

    move-object v4, v1

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->setAll(Ljava/util/Collection;)Z

    move-result v3

    .line 598
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$IndeterminateSpinner;->this$0:Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin;

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin;->indeterminateTransition:Ljavafx/animation/Animation;

    invoke-virtual {v3}, Ljavafx/animation/Animation;->playFromStart()V

    .line 599
    .line 606
    .end local v1    # "keyFrames":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<Ljavafx/animation/KeyFrame;>;"
    .end local v2    # "i":I
    :cond_2
    :goto_2
    return-void

    .line 600
    :cond_3
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$IndeterminateSpinner;->this$0:Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin;

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin;->indeterminateTransition:Ljavafx/animation/Animation;

    if-eqz v3, :cond_2

    .line 601
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$IndeterminateSpinner;->this$0:Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin;

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin;->indeterminateTransition:Ljavafx/animation/Animation;

    invoke-virtual {v3}, Ljavafx/animation/Animation;->stop()V

    .line 602
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$IndeterminateSpinner;->this$0:Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin;

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin;->indeterminateTransition:Ljavafx/animation/Animation;

    check-cast v3, Ljavafx/animation/Timeline;

    invoke-virtual {v3}, Ljavafx/animation/Timeline;->getKeyFrames()Ljavafx/collections/ObservableList;

    move-result-object v3

    invoke-interface {v3}, Ljavafx/collections/ObservableList;->clear()V

    .line 603
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$IndeterminateSpinner;->this$0:Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin;

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin;->indeterminateTransition:Ljavafx/animation/Animation;

    goto :goto_2
.end method

.method private shiftColors()V
    .locals 6

    .prologue
    .line 697
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$IndeterminateSpinner;
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$IndeterminateSpinner;->opacities:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-gtz v3, :cond_0

    .line 703
    :goto_0
    return-void

    .line 698
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$IndeterminateSpinner;->this$0:Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin;

    invoke-static {v3}, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin;->access$1400(Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin;)Ljavafx/beans/property/IntegerProperty;

    move-result-object v3

    invoke-virtual {v3}, Ljavafx/beans/property/IntegerProperty;->get()I

    move-result v3

    move v1, v3

    .line 699
    .local v1, "segments":I
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$IndeterminateSpinner;->opacities:Ljava/util/List;

    const/4 v4, -0x1

    invoke-static {v3, v4}, Ljava/util/Collections;->rotate(Ljava/util/List;I)V

    .line 700
    const/4 v3, 0x0

    move v2, v3

    .local v2, "i":I
    :goto_1
    move v3, v2

    move v4, v1

    if-ge v3, v4, :cond_1

    .line 701
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$IndeterminateSpinner;->pathsG:Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$IndeterminateSpinner$IndicatorPaths;

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$IndeterminateSpinner$IndicatorPaths;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v3

    move v4, v2

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavafx/scene/Node;

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$IndeterminateSpinner;->opacities:Ljava/util/List;

    move v5, v2

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/Node;->setOpacity(D)V

    .line 700
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 703
    :cond_1
    goto :goto_0
.end method


# virtual methods
.method protected layoutChildren()V
    .locals 27

    .prologue
    .line 660
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$IndeterminateSpinner;
    move-object/from16 v18, v1

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$IndeterminateSpinner;->this$0:Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin;->access$1200(Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin;)Ljavafx/scene/control/ProgressIndicator;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljavafx/scene/control/ProgressIndicator;->getWidth()D

    move-result-wide v18

    move-object/from16 v20, v1

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$IndeterminateSpinner;->this$0:Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin;->access$1200(Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin;)Ljavafx/scene/control/ProgressIndicator;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljavafx/scene/control/ProgressIndicator;->snappedLeftInset()D

    move-result-wide v20

    sub-double v18, v18, v20

    move-object/from16 v20, v1

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$IndeterminateSpinner;->this$0:Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin;->access$1200(Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin;)Ljavafx/scene/control/ProgressIndicator;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljavafx/scene/control/ProgressIndicator;->snappedRightInset()D

    move-result-wide v20

    sub-double v18, v18, v20

    move-wide/from16 v2, v18

    .line 661
    .local v2, "w":D
    move-object/from16 v18, v1

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$IndeterminateSpinner;->this$0:Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin;->access$1200(Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin;)Ljavafx/scene/control/ProgressIndicator;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljavafx/scene/control/ProgressIndicator;->getHeight()D

    move-result-wide v18

    move-object/from16 v20, v1

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$IndeterminateSpinner;->this$0:Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin;->access$1200(Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin;)Ljavafx/scene/control/ProgressIndicator;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljavafx/scene/control/ProgressIndicator;->snappedTopInset()D

    move-result-wide v20

    sub-double v18, v18, v20

    move-object/from16 v20, v1

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$IndeterminateSpinner;->this$0:Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin;->access$1200(Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin;)Ljavafx/scene/control/ProgressIndicator;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljavafx/scene/control/ProgressIndicator;->snappedBottomInset()D

    move-result-wide v20

    sub-double v18, v18, v20

    move-wide/from16 v4, v18

    .line 662
    .local v4, "h":D
    move-object/from16 v18, v1

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$IndeterminateSpinner;->pathsG:Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$IndeterminateSpinner$IndicatorPaths;

    move-object/from16 v18, v0

    const-wide/high16 v19, -0x4010000000000000L    # -1.0

    invoke-virtual/range {v18 .. v20}, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$IndeterminateSpinner$IndicatorPaths;->prefWidth(D)D

    move-result-wide v18

    move-wide/from16 v6, v18

    .line 663
    .local v6, "prefW":D
    move-object/from16 v18, v1

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$IndeterminateSpinner;->pathsG:Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$IndeterminateSpinner$IndicatorPaths;

    move-object/from16 v18, v0

    const-wide/high16 v19, -0x4010000000000000L    # -1.0

    invoke-virtual/range {v18 .. v20}, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$IndeterminateSpinner$IndicatorPaths;->prefHeight(D)D

    move-result-wide v18

    move-wide/from16 v8, v18

    .line 664
    .local v8, "prefH":D
    move-wide/from16 v18, v2

    move-wide/from16 v20, v6

    div-double v18, v18, v20

    move-wide/from16 v10, v18

    .line 665
    .local v10, "scaleX":D
    move-wide/from16 v18, v10

    move-wide/from16 v12, v18

    .line 666
    .local v12, "scale":D
    move-wide/from16 v18, v10

    move-wide/from16 v20, v8

    mul-double v18, v18, v20

    move-wide/from16 v20, v4

    cmpl-double v18, v18, v20

    if-lez v18, :cond_0

    .line 667
    move-wide/from16 v18, v4

    move-wide/from16 v20, v8

    div-double v18, v18, v20

    move-wide/from16 v12, v18

    .line 669
    :cond_0
    move-wide/from16 v18, v6

    move-wide/from16 v20, v12

    mul-double v18, v18, v20

    move-wide/from16 v14, v18

    .line 670
    .local v14, "indicatorW":D
    move-wide/from16 v18, v8

    move-wide/from16 v20, v12

    mul-double v18, v18, v20

    move-wide/from16 v16, v18

    .line 671
    .local v16, "indicatorH":D
    move-object/from16 v18, v1

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$IndeterminateSpinner;->pathsG:Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$IndeterminateSpinner$IndicatorPaths;

    move-object/from16 v18, v0

    move-wide/from16 v19, v2

    move-wide/from16 v21, v14

    sub-double v19, v19, v21

    const-wide/high16 v21, 0x4000000000000000L    # 2.0

    div-double v19, v19, v21

    move-wide/from16 v21, v4

    move-wide/from16 v23, v16

    sub-double v21, v21, v23

    const-wide/high16 v23, 0x4000000000000000L    # 2.0

    div-double v21, v21, v23

    move-wide/from16 v23, v14

    move-wide/from16 v25, v16

    invoke-virtual/range {v18 .. v26}, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$IndeterminateSpinner$IndicatorPaths;->resizeRelocate(DDDD)V

    .line 672
    return-void
.end method

.method public setFillOverride(Ljavafx/scene/paint/Paint;)V
    .locals 4

    .prologue
    .line 569
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$IndeterminateSpinner;
    move-object v1, p1

    .local v1, "fillOverride":Ljavafx/scene/paint/Paint;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$IndeterminateSpinner;->fillOverride:Ljavafx/scene/paint/Paint;

    .line 570
    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$IndeterminateSpinner;->rebuild()V

    .line 571
    return-void
.end method

.method public setSpinEnabled(Z)V
    .locals 4

    .prologue
    .line 574
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$IndeterminateSpinner;
    move v1, p1

    .local v1, "spinEnabled":Z
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$IndeterminateSpinner;->spinEnabled:Z

    .line 575
    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$IndeterminateSpinner;->rebuildTimeline()V

    .line 576
    return-void
.end method
