.class Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$DeterminateIndicator;
.super Ljavafx/scene/layout/Region;
.source "ProgressIndicatorSkin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeterminateIndicator"
.end annotation


# instance fields
.field private arcShape:Ljavafx/scene/shape/Arc;

.field private degProgress:I

.field private indicator:Ljavafx/scene/layout/StackPane;

.field private indicatorCircle:Ljavafx/scene/shape/Circle;

.field private intProgress:I

.field private progress:Ljavafx/scene/layout/StackPane;

.field private text:Ljavafx/scene/text/Text;

.field private textGap:D

.field final synthetic this$0:Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin;

.field private tick:Ljavafx/scene/layout/StackPane;


# direct methods
.method public constructor <init>(Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin;Ljavafx/scene/control/ProgressIndicator;Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin;Ljavafx/scene/paint/Paint;)V
    .locals 13

    .prologue
    .line 354
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$DeterminateIndicator;
    move-object v1, p1

    move-object v2, p2

    .local v2, "control":Ljavafx/scene/control/ProgressIndicator;
    move-object/from16 v3, p3

    .local v3, "s":Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin;
    move-object/from16 v4, p4

    .local v4, "fillOverride":Ljavafx/scene/paint/Paint;
    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$DeterminateIndicator;->this$0:Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin;

    move-object v5, v0

    invoke-direct {v5}, Ljavafx/scene/layout/Region;-><init>()V

    .line 340
    move-object v5, v0

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    iput-wide v6, v5, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$DeterminateIndicator;->textGap:D

    .line 356
    move-object v5, v0

    invoke-virtual {v5}, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$DeterminateIndicator;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v5

    const-string v6, "determinate-indicator"

    invoke-interface {v5, v6}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v5

    .line 358
    move-object v5, v0

    move-object v6, v2

    invoke-virtual {v6}, Ljavafx/scene/control/ProgressIndicator;->getProgress()D

    move-result-wide v6

    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    mul-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    long-to-int v6, v6

    iput v6, v5, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$DeterminateIndicator;->intProgress:I

    .line 359
    move-object v5, v0

    const-wide v6, 0x4076800000000000L    # 360.0

    move-object v8, v2

    invoke-virtual {v8}, Ljavafx/scene/control/ProgressIndicator;->getProgress()D

    move-result-wide v8

    mul-double/2addr v6, v8

    double-to-int v6, v6

    iput v6, v5, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$DeterminateIndicator;->degProgress:I

    .line 361
    move-object v5, v0

    invoke-virtual {v5}, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$DeterminateIndicator;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v5

    invoke-interface {v5}, Ljavafx/collections/ObservableList;->clear()V

    .line 363
    move-object v5, v0

    new-instance v6, Ljavafx/scene/text/Text;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    move-object v8, v2

    invoke-virtual {v8}, Ljavafx/scene/control/ProgressIndicator;->getProgress()D

    move-result-wide v8

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    cmpl-double v8, v8, v10

    if-ltz v8, :cond_0

    # getter for: Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin;->DONE:Ljava/lang/String;
    invoke-static {}, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin;->access$1000()Ljava/lang/String;

    move-result-object v8

    :goto_0
    invoke-direct {v7, v8}, Ljavafx/scene/text/Text;-><init>(Ljava/lang/String;)V

    iput-object v6, v5, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$DeterminateIndicator;->text:Ljavafx/scene/text/Text;

    .line 364
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$DeterminateIndicator;->text:Ljavafx/scene/text/Text;

    sget-object v6, Ljavafx/geometry/VPos;->TOP:Ljavafx/geometry/VPos;

    invoke-virtual {v5, v6}, Ljavafx/scene/text/Text;->setTextOrigin(Ljavafx/geometry/VPos;)V

    .line 365
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$DeterminateIndicator;->text:Ljavafx/scene/text/Text;

    invoke-virtual {v5}, Ljavafx/scene/text/Text;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v5

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    const/4 v8, 0x0

    const-string v9, "text"

    aput-object v9, v7, v8

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    const/4 v8, 0x1

    const-string v9, "percentage"

    aput-object v9, v7, v8

    invoke-interface {v5, v6}, Ljavafx/collections/ObservableList;->setAll([Ljava/lang/Object;)Z

    move-result v5

    .line 368
    move-object v5, v0

    new-instance v6, Ljavafx/scene/layout/StackPane;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    invoke-direct {v7}, Ljavafx/scene/layout/StackPane;-><init>()V

    iput-object v6, v5, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$DeterminateIndicator;->indicator:Ljavafx/scene/layout/StackPane;

    .line 369
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$DeterminateIndicator;->indicator:Ljavafx/scene/layout/StackPane;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljavafx/scene/layout/StackPane;->setScaleShape(Z)V

    .line 370
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$DeterminateIndicator;->indicator:Ljavafx/scene/layout/StackPane;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljavafx/scene/layout/StackPane;->setCenterShape(Z)V

    .line 371
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$DeterminateIndicator;->indicator:Ljavafx/scene/layout/StackPane;

    invoke-virtual {v5}, Ljavafx/scene/layout/StackPane;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    const/4 v8, 0x0

    const-string v9, "indicator"

    aput-object v9, v7, v8

    invoke-interface {v5, v6}, Ljavafx/collections/ObservableList;->setAll([Ljava/lang/Object;)Z

    move-result v5

    .line 372
    move-object v5, v0

    new-instance v6, Ljavafx/scene/shape/Circle;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    invoke-direct {v7}, Ljavafx/scene/shape/Circle;-><init>()V

    iput-object v6, v5, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$DeterminateIndicator;->indicatorCircle:Ljavafx/scene/shape/Circle;

    .line 373
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$DeterminateIndicator;->indicator:Ljavafx/scene/layout/StackPane;

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$DeterminateIndicator;->indicatorCircle:Ljavafx/scene/shape/Circle;

    invoke-virtual {v5, v6}, Ljavafx/scene/layout/StackPane;->setShape(Ljavafx/scene/shape/Shape;)V

    .line 376
    move-object v5, v0

    new-instance v6, Ljavafx/scene/shape/Arc;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    invoke-direct {v7}, Ljavafx/scene/shape/Arc;-><init>()V

    iput-object v6, v5, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$DeterminateIndicator;->arcShape:Ljavafx/scene/shape/Arc;

    .line 377
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$DeterminateIndicator;->arcShape:Ljavafx/scene/shape/Arc;

    sget-object v6, Ljavafx/scene/shape/ArcType;->ROUND:Ljavafx/scene/shape/ArcType;

    invoke-virtual {v5, v6}, Ljavafx/scene/shape/Arc;->setType(Ljavafx/scene/shape/ArcType;)V

    .line 378
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$DeterminateIndicator;->arcShape:Ljavafx/scene/shape/Arc;

    const-wide v6, 0x4056800000000000L    # 90.0

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/shape/Arc;->setStartAngle(D)V

    .line 381
    move-object v5, v0

    new-instance v6, Ljavafx/scene/layout/StackPane;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    invoke-direct {v7}, Ljavafx/scene/layout/StackPane;-><init>()V

    iput-object v6, v5, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$DeterminateIndicator;->progress:Ljavafx/scene/layout/StackPane;

    .line 382
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$DeterminateIndicator;->progress:Ljavafx/scene/layout/StackPane;

    invoke-virtual {v5}, Ljavafx/scene/layout/StackPane;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    const/4 v8, 0x0

    const-string v9, "progress"

    aput-object v9, v7, v8

    invoke-interface {v5, v6}, Ljavafx/collections/ObservableList;->setAll([Ljava/lang/Object;)Z

    move-result v5

    .line 383
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$DeterminateIndicator;->progress:Ljavafx/scene/layout/StackPane;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljavafx/scene/layout/StackPane;->setScaleShape(Z)V

    .line 384
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$DeterminateIndicator;->progress:Ljavafx/scene/layout/StackPane;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljavafx/scene/layout/StackPane;->setCenterShape(Z)V

    .line 385
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$DeterminateIndicator;->progress:Ljavafx/scene/layout/StackPane;

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$DeterminateIndicator;->arcShape:Ljavafx/scene/shape/Arc;

    invoke-virtual {v5, v6}, Ljavafx/scene/layout/StackPane;->setShape(Ljavafx/scene/shape/Shape;)V

    .line 386
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$DeterminateIndicator;->progress:Ljavafx/scene/layout/StackPane;

    invoke-virtual {v5}, Ljavafx/scene/layout/StackPane;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v5

    invoke-interface {v5}, Ljavafx/collections/ObservableList;->clear()V

    .line 387
    move-object v5, v0

    move-object v6, v4

    invoke-direct {v5, v6}, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$DeterminateIndicator;->setFillOverride(Ljavafx/scene/paint/Paint;)V

    .line 390
    move-object v5, v0

    new-instance v6, Ljavafx/scene/layout/StackPane;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    invoke-direct {v7}, Ljavafx/scene/layout/StackPane;-><init>()V

    iput-object v6, v5, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$DeterminateIndicator;->tick:Ljavafx/scene/layout/StackPane;

    .line 391
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$DeterminateIndicator;->tick:Ljavafx/scene/layout/StackPane;

    invoke-virtual {v5}, Ljavafx/scene/layout/StackPane;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    const/4 v8, 0x0

    const-string v9, "tick"

    aput-object v9, v7, v8

    invoke-interface {v5, v6}, Ljavafx/collections/ObservableList;->setAll([Ljava/lang/Object;)Z

    move-result v5

    .line 393
    move-object v5, v0

    invoke-virtual {v5}, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$DeterminateIndicator;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v5

    const/4 v6, 0x4

    new-array v6, v6, [Ljavafx/scene/Node;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    const/4 v8, 0x0

    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$DeterminateIndicator;->indicator:Ljavafx/scene/layout/StackPane;

    aput-object v9, v7, v8

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    const/4 v8, 0x1

    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$DeterminateIndicator;->progress:Ljavafx/scene/layout/StackPane;

    aput-object v9, v7, v8

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    const/4 v8, 0x2

    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$DeterminateIndicator;->text:Ljavafx/scene/text/Text;

    aput-object v9, v7, v8

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    const/4 v8, 0x3

    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$DeterminateIndicator;->tick:Ljavafx/scene/layout/StackPane;

    aput-object v9, v7, v8

    invoke-interface {v5, v6}, Ljavafx/collections/ObservableList;->setAll([Ljava/lang/Object;)Z

    move-result v5

    .line 394
    move-object v5, v0

    move-object v6, v2

    invoke-virtual {v6}, Ljavafx/scene/control/ProgressIndicator;->getProgress()D

    move-result-wide v6

    invoke-direct {v5, v6, v7}, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$DeterminateIndicator;->updateProgress(D)V

    .line 395
    return-void

    .line 363
    :cond_0
    new-instance v8, Ljava/lang/StringBuilder;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v0

    iget v9, v9, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$DeterminateIndicator;->intProgress:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "%"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_0
.end method

.method static synthetic access$200(Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$DeterminateIndicator;Ljavafx/scene/paint/Paint;)V
    .locals 4

    .prologue
    .line 339
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$DeterminateIndicator;
    move-object v1, p1

    .local v1, "x1":Ljavafx/scene/paint/Paint;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$DeterminateIndicator;->setFillOverride(Ljavafx/scene/paint/Paint;)V

    return-void
.end method

.method static synthetic access$800(Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$DeterminateIndicator;D)V
    .locals 7

    .prologue
    .line 339
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$DeterminateIndicator;
    move-wide v1, p1

    .local v1, "x1":D
    move-object v3, v0

    move-wide v4, v1

    invoke-direct {v3, v4, v5}, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$DeterminateIndicator;->updateProgress(D)V

    return-void
.end method

.method private setFillOverride(Ljavafx/scene/paint/Paint;)V
    .locals 11

    .prologue
    .line 398
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$DeterminateIndicator;
    move-object v2, p1

    .local v2, "fillOverride":Ljavafx/scene/paint/Paint;
    move-object v4, v2

    instance-of v4, v4, Ljavafx/scene/paint/Color;

    if-eqz v4, :cond_0

    .line 399
    move-object v4, v2

    check-cast v4, Ljavafx/scene/paint/Color;

    move-object v3, v4

    .line 400
    .local v3, "c":Ljavafx/scene/paint/Color;
    move-object v4, v1

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$DeterminateIndicator;->progress:Ljavafx/scene/layout/StackPane;

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "-fx-background-color: rgba("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-wide v6, 0x406fe00000000000L    # 255.0

    move-object v8, v3

    invoke-virtual {v8}, Ljavafx/scene/paint/Color;->getRed()D

    move-result-wide v8

    mul-double/2addr v6, v8

    double-to-int v6, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-wide v6, 0x406fe00000000000L    # 255.0

    move-object v8, v3

    invoke-virtual {v8}, Ljavafx/scene/paint/Color;->getGreen()D

    move-result-wide v8

    mul-double/2addr v6, v8

    double-to-int v6, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-wide v6, 0x406fe00000000000L    # 255.0

    move-object v8, v3

    invoke-virtual {v8}, Ljavafx/scene/paint/Color;->getBlue()D

    move-result-wide v8

    mul-double/2addr v6, v8

    double-to-int v6, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v3

    invoke-virtual {v6}, Ljavafx/scene/paint/Color;->getOpacity()D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ");"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljavafx/scene/layout/StackPane;->setStyle(Ljava/lang/String;)V

    .line 401
    .line 404
    .end local v3    # "c":Ljavafx/scene/paint/Color;
    :goto_0
    return-void

    .line 402
    :cond_0
    move-object v4, v1

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$DeterminateIndicator;->progress:Ljavafx/scene/layout/StackPane;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljavafx/scene/layout/StackPane;->setStyle(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateProgress(D)V
    .locals 9

    .prologue
    .line 414
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$DeterminateIndicator;
    move-wide v1, p1

    .local v1, "progress":D
    move-object v3, v0

    move-wide v4, v1

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-int v4, v4

    iput v4, v3, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$DeterminateIndicator;->intProgress:I

    .line 415
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$DeterminateIndicator;->text:Ljavafx/scene/text/Text;

    move-wide v4, v1

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    cmpl-double v4, v4, v6

    if-ltz v4, :cond_0

    # getter for: Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin;->DONE:Ljava/lang/String;
    invoke-static {}, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin;->access$1000()Ljava/lang/String;

    move-result-object v4

    :goto_0
    invoke-virtual {v3, v4}, Ljavafx/scene/text/Text;->setText(Ljava/lang/String;)V

    .line 417
    move-object v3, v0

    const-wide v4, 0x4076800000000000L    # 360.0

    move-wide v6, v1

    mul-double/2addr v4, v6

    double-to-int v4, v4

    iput v4, v3, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$DeterminateIndicator;->degProgress:I

    .line 418
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$DeterminateIndicator;->arcShape:Ljavafx/scene/shape/Arc;

    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$DeterminateIndicator;->degProgress:I

    neg-int v4, v4

    int-to-double v4, v4

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/shape/Arc;->setLength(D)V

    .line 419
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$DeterminateIndicator;->requestLayout()V

    .line 420
    return-void

    .line 415
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$DeterminateIndicator;->intProgress:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method


# virtual methods
.method protected computeMaxHeight(D)D
    .locals 7

    .prologue
    .line 532
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$DeterminateIndicator;
    move-wide v1, p1

    .local v1, "width":D
    move-object v3, v0

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$DeterminateIndicator;->computePrefHeight(D)D

    move-result-wide v3

    move-wide v0, v3

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$DeterminateIndicator;
    return-wide v0
.end method

.method protected computeMaxWidth(D)D
    .locals 7

    .prologue
    .line 528
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$DeterminateIndicator;
    move-wide v1, p1

    .local v1, "height":D
    move-object v3, v0

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$DeterminateIndicator;->computePrefWidth(D)D

    move-result-wide v3

    move-wide v0, v3

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$DeterminateIndicator;
    return-wide v0
.end method

.method protected computePrefHeight(D)D
    .locals 43

    .prologue
    .line 509
    move-object/from16 v3, p0

    .local v3, "this":Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$DeterminateIndicator;
    move-wide/from16 v4, p1

    .local v4, "width":D
    move-object/from16 v36, v3

    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$DeterminateIndicator;->this$0:Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin;

    move-object/from16 v36, v0

    invoke-static/range {v36 .. v36}, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin;->access$1200(Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin;)Ljavafx/scene/control/ProgressIndicator;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljavafx/scene/control/ProgressIndicator;->snappedTopInset()D

    move-result-wide v36

    move-wide/from16 v6, v36

    .line 510
    .local v6, "top":D
    move-object/from16 v36, v3

    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$DeterminateIndicator;->this$0:Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin;

    move-object/from16 v36, v0

    invoke-static/range {v36 .. v36}, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin;->access$1200(Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin;)Ljavafx/scene/control/ProgressIndicator;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljavafx/scene/control/ProgressIndicator;->snappedBottomInset()D

    move-result-wide v36

    move-wide/from16 v8, v36

    .line 511
    .local v8, "bottom":D
    move-object/from16 v36, v3

    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$DeterminateIndicator;->indicator:Ljavafx/scene/layout/StackPane;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Ljavafx/scene/layout/StackPane;->snappedLeftInset()D

    move-result-wide v36

    move-wide/from16 v10, v36

    .line 512
    .local v10, "iLeft":D
    move-object/from16 v36, v3

    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$DeterminateIndicator;->indicator:Ljavafx/scene/layout/StackPane;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Ljavafx/scene/layout/StackPane;->snappedRightInset()D

    move-result-wide v36

    move-wide/from16 v12, v36

    .line 513
    .local v12, "iRight":D
    move-object/from16 v36, v3

    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$DeterminateIndicator;->indicator:Ljavafx/scene/layout/StackPane;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Ljavafx/scene/layout/StackPane;->snappedTopInset()D

    move-result-wide v36

    move-wide/from16 v14, v36

    .line 514
    .local v14, "iTop":D
    move-object/from16 v36, v3

    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$DeterminateIndicator;->indicator:Ljavafx/scene/layout/StackPane;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Ljavafx/scene/layout/StackPane;->snappedBottomInset()D

    move-result-wide v36

    move-wide/from16 v16, v36

    .line 515
    .local v16, "iBottom":D
    move-object/from16 v36, v3

    move-wide/from16 v37, v10

    move-wide/from16 v39, v12

    invoke-static/range {v37 .. v40}, Ljava/lang/Math;->max(DD)D

    move-result-wide v37

    move-wide/from16 v39, v14

    move-wide/from16 v41, v16

    invoke-static/range {v39 .. v42}, Ljava/lang/Math;->max(DD)D

    move-result-wide v39

    invoke-static/range {v37 .. v40}, Ljava/lang/Math;->max(DD)D

    move-result-wide v37

    invoke-virtual/range {v36 .. v38}, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$DeterminateIndicator;->snapSize(D)D

    move-result-wide v36

    move-wide/from16 v18, v36

    .line 516
    .local v18, "indicatorMax":D
    move-object/from16 v36, v3

    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$DeterminateIndicator;->progress:Ljavafx/scene/layout/StackPane;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Ljavafx/scene/layout/StackPane;->snappedLeftInset()D

    move-result-wide v36

    move-wide/from16 v20, v36

    .line 517
    .local v20, "pLeft":D
    move-object/from16 v36, v3

    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$DeterminateIndicator;->progress:Ljavafx/scene/layout/StackPane;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Ljavafx/scene/layout/StackPane;->snappedRightInset()D

    move-result-wide v36

    move-wide/from16 v22, v36

    .line 518
    .local v22, "pRight":D
    move-object/from16 v36, v3

    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$DeterminateIndicator;->progress:Ljavafx/scene/layout/StackPane;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Ljavafx/scene/layout/StackPane;->snappedTopInset()D

    move-result-wide v36

    move-wide/from16 v24, v36

    .line 519
    .local v24, "pTop":D
    move-object/from16 v36, v3

    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$DeterminateIndicator;->progress:Ljavafx/scene/layout/StackPane;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Ljavafx/scene/layout/StackPane;->snappedBottomInset()D

    move-result-wide v36

    move-wide/from16 v26, v36

    .line 520
    .local v26, "pBottom":D
    move-object/from16 v36, v3

    move-wide/from16 v37, v20

    move-wide/from16 v39, v22

    invoke-static/range {v37 .. v40}, Ljava/lang/Math;->max(DD)D

    move-result-wide v37

    move-wide/from16 v39, v24

    move-wide/from16 v41, v26

    invoke-static/range {v39 .. v42}, Ljava/lang/Math;->max(DD)D

    move-result-wide v39

    invoke-static/range {v37 .. v40}, Ljava/lang/Math;->max(DD)D

    move-result-wide v37

    invoke-virtual/range {v36 .. v38}, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$DeterminateIndicator;->snapSize(D)D

    move-result-wide v36

    move-wide/from16 v28, v36

    .line 521
    .local v28, "progressMax":D
    move-object/from16 v36, v3

    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$DeterminateIndicator;->tick:Ljavafx/scene/layout/StackPane;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Ljavafx/scene/layout/StackPane;->snappedTopInset()D

    move-result-wide v36

    move-wide/from16 v30, v36

    .line 522
    .local v30, "tTop":D
    move-object/from16 v36, v3

    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$DeterminateIndicator;->tick:Ljavafx/scene/layout/StackPane;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Ljavafx/scene/layout/StackPane;->snappedBottomInset()D

    move-result-wide v36

    move-wide/from16 v32, v36

    .line 523
    .local v32, "tBottom":D
    move-wide/from16 v36, v18

    move-wide/from16 v38, v28

    add-double v36, v36, v38

    move-wide/from16 v38, v30

    add-double v36, v36, v38

    move-wide/from16 v38, v32

    add-double v36, v36, v38

    move-wide/from16 v38, v28

    add-double v36, v36, v38

    move-wide/from16 v38, v18

    add-double v36, v36, v38

    move-wide/from16 v34, v36

    .line 524
    .local v34, "indicatorHeight":D
    move-wide/from16 v36, v6

    move-wide/from16 v38, v34

    add-double v36, v36, v38

    move-object/from16 v38, v3

    move-object/from16 v0, v38

    iget-wide v0, v0, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$DeterminateIndicator;->textGap:D

    move-wide/from16 v38, v0

    add-double v36, v36, v38

    # getter for: Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin;->doneText:Ljavafx/scene/text/Text;
    invoke-static {}, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin;->access$1100()Ljavafx/scene/text/Text;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljavafx/scene/text/Text;->getLayoutBounds()Ljavafx/geometry/Bounds;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljavafx/geometry/Bounds;->getHeight()D

    move-result-wide v38

    add-double v36, v36, v38

    move-wide/from16 v38, v8

    add-double v36, v36, v38

    move-wide/from16 v3, v36

    .end local v3    # "this":Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$DeterminateIndicator;
    return-wide v3
.end method

.method protected computePrefWidth(D)D
    .locals 41

    .prologue
    .line 490
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$DeterminateIndicator;
    move-wide/from16 v2, p1

    .local v2, "height":D
    move-object/from16 v34, v1

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$DeterminateIndicator;->this$0:Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin;

    move-object/from16 v34, v0

    invoke-static/range {v34 .. v34}, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin;->access$1200(Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin;)Ljavafx/scene/control/ProgressIndicator;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljavafx/scene/control/ProgressIndicator;->snappedLeftInset()D

    move-result-wide v34

    move-wide/from16 v4, v34

    .line 491
    .local v4, "left":D
    move-object/from16 v34, v1

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$DeterminateIndicator;->this$0:Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin;

    move-object/from16 v34, v0

    invoke-static/range {v34 .. v34}, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin;->access$1200(Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin;)Ljavafx/scene/control/ProgressIndicator;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljavafx/scene/control/ProgressIndicator;->snappedRightInset()D

    move-result-wide v34

    move-wide/from16 v6, v34

    .line 492
    .local v6, "right":D
    move-object/from16 v34, v1

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$DeterminateIndicator;->indicator:Ljavafx/scene/layout/StackPane;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Ljavafx/scene/layout/StackPane;->snappedLeftInset()D

    move-result-wide v34

    move-wide/from16 v8, v34

    .line 493
    .local v8, "iLeft":D
    move-object/from16 v34, v1

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$DeterminateIndicator;->indicator:Ljavafx/scene/layout/StackPane;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Ljavafx/scene/layout/StackPane;->snappedRightInset()D

    move-result-wide v34

    move-wide/from16 v10, v34

    .line 494
    .local v10, "iRight":D
    move-object/from16 v34, v1

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$DeterminateIndicator;->indicator:Ljavafx/scene/layout/StackPane;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Ljavafx/scene/layout/StackPane;->snappedTopInset()D

    move-result-wide v34

    move-wide/from16 v12, v34

    .line 495
    .local v12, "iTop":D
    move-object/from16 v34, v1

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$DeterminateIndicator;->indicator:Ljavafx/scene/layout/StackPane;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Ljavafx/scene/layout/StackPane;->snappedBottomInset()D

    move-result-wide v34

    move-wide/from16 v14, v34

    .line 496
    .local v14, "iBottom":D
    move-object/from16 v34, v1

    move-wide/from16 v35, v8

    move-wide/from16 v37, v10

    invoke-static/range {v35 .. v38}, Ljava/lang/Math;->max(DD)D

    move-result-wide v35

    move-wide/from16 v37, v12

    move-wide/from16 v39, v14

    invoke-static/range {v37 .. v40}, Ljava/lang/Math;->max(DD)D

    move-result-wide v37

    invoke-static/range {v35 .. v38}, Ljava/lang/Math;->max(DD)D

    move-result-wide v35

    invoke-virtual/range {v34 .. v36}, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$DeterminateIndicator;->snapSize(D)D

    move-result-wide v34

    move-wide/from16 v16, v34

    .line 497
    .local v16, "indicatorMax":D
    move-object/from16 v34, v1

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$DeterminateIndicator;->progress:Ljavafx/scene/layout/StackPane;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Ljavafx/scene/layout/StackPane;->snappedLeftInset()D

    move-result-wide v34

    move-wide/from16 v18, v34

    .line 498
    .local v18, "pLeft":D
    move-object/from16 v34, v1

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$DeterminateIndicator;->progress:Ljavafx/scene/layout/StackPane;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Ljavafx/scene/layout/StackPane;->snappedRightInset()D

    move-result-wide v34

    move-wide/from16 v20, v34

    .line 499
    .local v20, "pRight":D
    move-object/from16 v34, v1

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$DeterminateIndicator;->progress:Ljavafx/scene/layout/StackPane;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Ljavafx/scene/layout/StackPane;->snappedTopInset()D

    move-result-wide v34

    move-wide/from16 v22, v34

    .line 500
    .local v22, "pTop":D
    move-object/from16 v34, v1

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$DeterminateIndicator;->progress:Ljavafx/scene/layout/StackPane;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Ljavafx/scene/layout/StackPane;->snappedBottomInset()D

    move-result-wide v34

    move-wide/from16 v24, v34

    .line 501
    .local v24, "pBottom":D
    move-object/from16 v34, v1

    move-wide/from16 v35, v18

    move-wide/from16 v37, v20

    invoke-static/range {v35 .. v38}, Ljava/lang/Math;->max(DD)D

    move-result-wide v35

    move-wide/from16 v37, v22

    move-wide/from16 v39, v24

    invoke-static/range {v37 .. v40}, Ljava/lang/Math;->max(DD)D

    move-result-wide v37

    invoke-static/range {v35 .. v38}, Ljava/lang/Math;->max(DD)D

    move-result-wide v35

    invoke-virtual/range {v34 .. v36}, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$DeterminateIndicator;->snapSize(D)D

    move-result-wide v34

    move-wide/from16 v26, v34

    .line 502
    .local v26, "progressMax":D
    move-object/from16 v34, v1

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$DeterminateIndicator;->tick:Ljavafx/scene/layout/StackPane;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Ljavafx/scene/layout/StackPane;->snappedLeftInset()D

    move-result-wide v34

    move-wide/from16 v28, v34

    .line 503
    .local v28, "tLeft":D
    move-object/from16 v34, v1

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$DeterminateIndicator;->tick:Ljavafx/scene/layout/StackPane;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Ljavafx/scene/layout/StackPane;->snappedRightInset()D

    move-result-wide v34

    move-wide/from16 v30, v34

    .line 504
    .local v30, "tRight":D
    move-wide/from16 v34, v16

    move-wide/from16 v36, v26

    add-double v34, v34, v36

    move-wide/from16 v36, v28

    add-double v34, v34, v36

    move-wide/from16 v36, v30

    add-double v34, v34, v36

    move-wide/from16 v36, v26

    add-double v34, v34, v36

    move-wide/from16 v36, v16

    add-double v34, v34, v36

    move-wide/from16 v32, v34

    .line 505
    .local v32, "indicatorWidth":D
    move-wide/from16 v34, v4

    move-wide/from16 v36, v32

    # getter for: Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin;->doneText:Ljavafx/scene/text/Text;
    invoke-static {}, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin;->access$1100()Ljavafx/scene/text/Text;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljavafx/scene/text/Text;->getLayoutBounds()Ljavafx/geometry/Bounds;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljavafx/geometry/Bounds;->getWidth()D

    move-result-wide v38

    invoke-static/range {v36 .. v39}, Ljava/lang/Math;->max(DD)D

    move-result-wide v36

    add-double v34, v34, v36

    move-wide/from16 v36, v6

    add-double v34, v34, v36

    move-wide/from16 v1, v34

    .end local v1    # "this":Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$DeterminateIndicator;
    return-wide v1
.end method

.method protected layoutChildren()V
    .locals 65

    .prologue
    .line 424
    move-object/from16 v3, p0

    .local v3, "this":Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$DeterminateIndicator;
    # getter for: Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin;->doneText:Ljavafx/scene/text/Text;
    invoke-static {}, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin;->access$1100()Ljavafx/scene/text/Text;

    move-result-object v56

    invoke-virtual/range {v56 .. v56}, Ljavafx/scene/text/Text;->getLayoutBounds()Ljavafx/geometry/Bounds;

    move-result-object v56

    invoke-virtual/range {v56 .. v56}, Ljavafx/geometry/Bounds;->getHeight()D

    move-result-wide v56

    move-wide/from16 v4, v56

    .line 425
    .local v4, "doneTextHeight":D
    move-object/from16 v56, v3

    move-object/from16 v0, v56

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$DeterminateIndicator;->this$0:Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin;

    move-object/from16 v56, v0

    invoke-static/range {v56 .. v56}, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin;->access$1200(Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin;)Ljavafx/scene/control/ProgressIndicator;

    move-result-object v56

    invoke-virtual/range {v56 .. v56}, Ljavafx/scene/control/ProgressIndicator;->snappedLeftInset()D

    move-result-wide v56

    move-wide/from16 v6, v56

    .line 426
    .local v6, "left":D
    move-object/from16 v56, v3

    move-object/from16 v0, v56

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$DeterminateIndicator;->this$0:Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin;

    move-object/from16 v56, v0

    invoke-static/range {v56 .. v56}, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin;->access$1200(Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin;)Ljavafx/scene/control/ProgressIndicator;

    move-result-object v56

    invoke-virtual/range {v56 .. v56}, Ljavafx/scene/control/ProgressIndicator;->snappedRightInset()D

    move-result-wide v56

    move-wide/from16 v8, v56

    .line 427
    .local v8, "right":D
    move-object/from16 v56, v3

    move-object/from16 v0, v56

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$DeterminateIndicator;->this$0:Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin;

    move-object/from16 v56, v0

    invoke-static/range {v56 .. v56}, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin;->access$1200(Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin;)Ljavafx/scene/control/ProgressIndicator;

    move-result-object v56

    invoke-virtual/range {v56 .. v56}, Ljavafx/scene/control/ProgressIndicator;->snappedTopInset()D

    move-result-wide v56

    move-wide/from16 v10, v56

    .line 428
    .local v10, "top":D
    move-object/from16 v56, v3

    move-object/from16 v0, v56

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$DeterminateIndicator;->this$0:Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin;

    move-object/from16 v56, v0

    invoke-static/range {v56 .. v56}, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin;->access$1200(Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin;)Ljavafx/scene/control/ProgressIndicator;

    move-result-object v56

    invoke-virtual/range {v56 .. v56}, Ljavafx/scene/control/ProgressIndicator;->snappedBottomInset()D

    move-result-wide v56

    move-wide/from16 v12, v56

    .line 433
    .local v12, "bottom":D
    move-object/from16 v56, v3

    move-object/from16 v0, v56

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$DeterminateIndicator;->this$0:Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin;

    move-object/from16 v56, v0

    invoke-static/range {v56 .. v56}, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin;->access$1200(Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin;)Ljavafx/scene/control/ProgressIndicator;

    move-result-object v56

    invoke-virtual/range {v56 .. v56}, Ljavafx/scene/control/ProgressIndicator;->getWidth()D

    move-result-wide v56

    move-wide/from16 v58, v6

    sub-double v56, v56, v58

    move-wide/from16 v58, v8

    sub-double v56, v56, v58

    move-wide/from16 v14, v56

    .line 434
    .local v14, "areaW":D
    move-object/from16 v56, v3

    move-object/from16 v0, v56

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$DeterminateIndicator;->this$0:Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin;

    move-object/from16 v56, v0

    invoke-static/range {v56 .. v56}, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin;->access$1200(Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin;)Ljavafx/scene/control/ProgressIndicator;

    move-result-object v56

    invoke-virtual/range {v56 .. v56}, Ljavafx/scene/control/ProgressIndicator;->getHeight()D

    move-result-wide v56

    move-wide/from16 v58, v10

    sub-double v56, v56, v58

    move-wide/from16 v58, v12

    sub-double v56, v56, v58

    move-object/from16 v58, v3

    move-object/from16 v0, v58

    iget-wide v0, v0, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$DeterminateIndicator;->textGap:D

    move-wide/from16 v58, v0

    sub-double v56, v56, v58

    move-wide/from16 v58, v4

    sub-double v56, v56, v58

    move-wide/from16 v16, v56

    .line 435
    .local v16, "areaH":D
    move-wide/from16 v56, v14

    const-wide/high16 v58, 0x4000000000000000L    # 2.0

    div-double v56, v56, v58

    move-wide/from16 v18, v56

    .line 436
    .local v18, "radiusW":D
    move-wide/from16 v56, v16

    const-wide/high16 v58, 0x4000000000000000L    # 2.0

    div-double v56, v56, v58

    move-wide/from16 v20, v56

    .line 437
    .local v20, "radiusH":D
    move-wide/from16 v56, v18

    move-wide/from16 v58, v20

    invoke-static/range {v56 .. v59}, Ljava/lang/Math;->min(DD)D

    move-result-wide v56

    invoke-static/range {v56 .. v57}, Ljava/lang/Math;->floor(D)D

    move-result-wide v56

    move-wide/from16 v22, v56

    .line 438
    .local v22, "radius":D
    move-object/from16 v56, v3

    move-wide/from16 v57, v6

    move-wide/from16 v59, v18

    add-double v57, v57, v59

    invoke-virtual/range {v56 .. v58}, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$DeterminateIndicator;->snapPosition(D)D

    move-result-wide v56

    move-wide/from16 v24, v56

    .line 439
    .local v24, "centerX":D
    move-object/from16 v56, v3

    move-wide/from16 v57, v10

    move-wide/from16 v59, v22

    add-double v57, v57, v59

    invoke-virtual/range {v56 .. v58}, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$DeterminateIndicator;->snapPosition(D)D

    move-result-wide v56

    move-wide/from16 v26, v56

    .line 442
    .local v26, "centerY":D
    move-object/from16 v56, v3

    move-object/from16 v0, v56

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$DeterminateIndicator;->indicator:Ljavafx/scene/layout/StackPane;

    move-object/from16 v56, v0

    invoke-virtual/range {v56 .. v56}, Ljavafx/scene/layout/StackPane;->snappedLeftInset()D

    move-result-wide v56

    move-wide/from16 v28, v56

    .line 443
    .local v28, "iLeft":D
    move-object/from16 v56, v3

    move-object/from16 v0, v56

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$DeterminateIndicator;->indicator:Ljavafx/scene/layout/StackPane;

    move-object/from16 v56, v0

    invoke-virtual/range {v56 .. v56}, Ljavafx/scene/layout/StackPane;->snappedRightInset()D

    move-result-wide v56

    move-wide/from16 v30, v56

    .line 444
    .local v30, "iRight":D
    move-object/from16 v56, v3

    move-object/from16 v0, v56

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$DeterminateIndicator;->indicator:Ljavafx/scene/layout/StackPane;

    move-object/from16 v56, v0

    invoke-virtual/range {v56 .. v56}, Ljavafx/scene/layout/StackPane;->snappedTopInset()D

    move-result-wide v56

    move-wide/from16 v32, v56

    .line 445
    .local v32, "iTop":D
    move-object/from16 v56, v3

    move-object/from16 v0, v56

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$DeterminateIndicator;->indicator:Ljavafx/scene/layout/StackPane;

    move-object/from16 v56, v0

    invoke-virtual/range {v56 .. v56}, Ljavafx/scene/layout/StackPane;->snappedBottomInset()D

    move-result-wide v56

    move-wide/from16 v34, v56

    .line 446
    .local v34, "iBottom":D
    move-object/from16 v56, v3

    move-wide/from16 v57, v22

    move-wide/from16 v59, v28

    sub-double v57, v57, v59

    move-wide/from16 v59, v22

    move-wide/from16 v61, v30

    sub-double v59, v59, v61

    .line 447
    invoke-static/range {v57 .. v60}, Ljava/lang/Math;->min(DD)D

    move-result-wide v57

    move-wide/from16 v59, v22

    move-wide/from16 v61, v32

    sub-double v59, v59, v61

    move-wide/from16 v61, v22

    move-wide/from16 v63, v34

    sub-double v61, v61, v63

    .line 448
    invoke-static/range {v59 .. v62}, Ljava/lang/Math;->min(DD)D

    move-result-wide v59

    .line 446
    invoke-static/range {v57 .. v60}, Ljava/lang/Math;->min(DD)D

    move-result-wide v57

    invoke-virtual/range {v56 .. v58}, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$DeterminateIndicator;->snapSize(D)D

    move-result-wide v56

    move-wide/from16 v36, v56

    .line 450
    .local v36, "progressRadius":D
    move-object/from16 v56, v3

    move-object/from16 v0, v56

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$DeterminateIndicator;->indicatorCircle:Ljavafx/scene/shape/Circle;

    move-object/from16 v56, v0

    move-wide/from16 v57, v22

    invoke-virtual/range {v56 .. v58}, Ljavafx/scene/shape/Circle;->setRadius(D)V

    .line 451
    move-object/from16 v56, v3

    move-object/from16 v0, v56

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$DeterminateIndicator;->indicator:Ljavafx/scene/layout/StackPane;

    move-object/from16 v56, v0

    move-wide/from16 v57, v24

    invoke-virtual/range {v56 .. v58}, Ljavafx/scene/layout/StackPane;->setLayoutX(D)V

    .line 452
    move-object/from16 v56, v3

    move-object/from16 v0, v56

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$DeterminateIndicator;->indicator:Ljavafx/scene/layout/StackPane;

    move-object/from16 v56, v0

    move-wide/from16 v57, v26

    invoke-virtual/range {v56 .. v58}, Ljavafx/scene/layout/StackPane;->setLayoutY(D)V

    .line 454
    move-object/from16 v56, v3

    move-object/from16 v0, v56

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$DeterminateIndicator;->arcShape:Ljavafx/scene/shape/Arc;

    move-object/from16 v56, v0

    move-wide/from16 v57, v36

    invoke-virtual/range {v56 .. v58}, Ljavafx/scene/shape/Arc;->setRadiusX(D)V

    .line 455
    move-object/from16 v56, v3

    move-object/from16 v0, v56

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$DeterminateIndicator;->arcShape:Ljavafx/scene/shape/Arc;

    move-object/from16 v56, v0

    move-wide/from16 v57, v36

    invoke-virtual/range {v56 .. v58}, Ljavafx/scene/shape/Arc;->setRadiusY(D)V

    .line 456
    move-object/from16 v56, v3

    move-object/from16 v0, v56

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$DeterminateIndicator;->progress:Ljavafx/scene/layout/StackPane;

    move-object/from16 v56, v0

    move-wide/from16 v57, v24

    invoke-virtual/range {v56 .. v58}, Ljavafx/scene/layout/StackPane;->setLayoutX(D)V

    .line 457
    move-object/from16 v56, v3

    move-object/from16 v0, v56

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$DeterminateIndicator;->progress:Ljavafx/scene/layout/StackPane;

    move-object/from16 v56, v0

    move-wide/from16 v57, v26

    invoke-virtual/range {v56 .. v58}, Ljavafx/scene/layout/StackPane;->setLayoutY(D)V

    .line 460
    move-object/from16 v56, v3

    move-object/from16 v0, v56

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$DeterminateIndicator;->progress:Ljavafx/scene/layout/StackPane;

    move-object/from16 v56, v0

    invoke-virtual/range {v56 .. v56}, Ljavafx/scene/layout/StackPane;->snappedLeftInset()D

    move-result-wide v56

    move-wide/from16 v38, v56

    .line 461
    .local v38, "pLeft":D
    move-object/from16 v56, v3

    move-object/from16 v0, v56

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$DeterminateIndicator;->progress:Ljavafx/scene/layout/StackPane;

    move-object/from16 v56, v0

    invoke-virtual/range {v56 .. v56}, Ljavafx/scene/layout/StackPane;->snappedRightInset()D

    move-result-wide v56

    move-wide/from16 v40, v56

    .line 462
    .local v40, "pRight":D
    move-object/from16 v56, v3

    move-object/from16 v0, v56

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$DeterminateIndicator;->progress:Ljavafx/scene/layout/StackPane;

    move-object/from16 v56, v0

    invoke-virtual/range {v56 .. v56}, Ljavafx/scene/layout/StackPane;->snappedTopInset()D

    move-result-wide v56

    move-wide/from16 v42, v56

    .line 463
    .local v42, "pTop":D
    move-object/from16 v56, v3

    move-object/from16 v0, v56

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$DeterminateIndicator;->progress:Ljavafx/scene/layout/StackPane;

    move-object/from16 v56, v0

    invoke-virtual/range {v56 .. v56}, Ljavafx/scene/layout/StackPane;->snappedBottomInset()D

    move-result-wide v56

    move-wide/from16 v44, v56

    .line 464
    .local v44, "pBottom":D
    move-object/from16 v56, v3

    move-wide/from16 v57, v36

    move-wide/from16 v59, v38

    sub-double v57, v57, v59

    move-wide/from16 v59, v36

    move-wide/from16 v61, v40

    sub-double v59, v59, v61

    .line 465
    invoke-static/range {v57 .. v60}, Ljava/lang/Math;->min(DD)D

    move-result-wide v57

    move-wide/from16 v59, v36

    move-wide/from16 v61, v42

    sub-double v59, v59, v61

    move-wide/from16 v61, v36

    move-wide/from16 v63, v44

    sub-double v61, v61, v63

    .line 466
    invoke-static/range {v59 .. v62}, Ljava/lang/Math;->min(DD)D

    move-result-wide v59

    .line 464
    invoke-static/range {v57 .. v60}, Ljava/lang/Math;->min(DD)D

    move-result-wide v57

    invoke-virtual/range {v56 .. v58}, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$DeterminateIndicator;->snapSize(D)D

    move-result-wide v56

    move-wide/from16 v46, v56

    .line 469
    .local v46, "indicatorRadius":D
    move-wide/from16 v56, v46

    move-wide/from16 v58, v46

    mul-double v56, v56, v58

    const-wide/high16 v58, 0x4000000000000000L    # 2.0

    div-double v56, v56, v58

    invoke-static/range {v56 .. v57}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v56

    invoke-static/range {v56 .. v57}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v56

    move-wide/from16 v48, v56

    .line 470
    .local v48, "squareBoxHalfWidth":D
    move-wide/from16 v56, v46

    const-wide/high16 v58, 0x4000000000000000L    # 2.0

    invoke-static/range {v58 .. v59}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v58

    const-wide/high16 v60, 0x4000000000000000L    # 2.0

    div-double v58, v58, v60

    mul-double v56, v56, v58

    move-wide/from16 v50, v56

    .line 472
    .local v50, "squareBoxHalfWidth2":D
    move-object/from16 v56, v3

    move-object/from16 v0, v56

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$DeterminateIndicator;->tick:Ljavafx/scene/layout/StackPane;

    move-object/from16 v56, v0

    move-wide/from16 v57, v24

    move-wide/from16 v59, v48

    sub-double v57, v57, v59

    invoke-virtual/range {v56 .. v58}, Ljavafx/scene/layout/StackPane;->setLayoutX(D)V

    .line 473
    move-object/from16 v56, v3

    move-object/from16 v0, v56

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$DeterminateIndicator;->tick:Ljavafx/scene/layout/StackPane;

    move-object/from16 v56, v0

    move-wide/from16 v57, v26

    move-wide/from16 v59, v48

    sub-double v57, v57, v59

    invoke-virtual/range {v56 .. v58}, Ljavafx/scene/layout/StackPane;->setLayoutY(D)V

    .line 474
    move-object/from16 v56, v3

    move-object/from16 v0, v56

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$DeterminateIndicator;->tick:Ljavafx/scene/layout/StackPane;

    move-object/from16 v56, v0

    move-wide/from16 v57, v48

    move-wide/from16 v59, v48

    add-double v57, v57, v59

    move-wide/from16 v59, v48

    move-wide/from16 v61, v48

    add-double v59, v59, v61

    invoke-virtual/range {v56 .. v60}, Ljavafx/scene/layout/StackPane;->resize(DD)V

    .line 475
    move-object/from16 v56, v3

    move-object/from16 v0, v56

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$DeterminateIndicator;->tick:Ljavafx/scene/layout/StackPane;

    move-object/from16 v56, v0

    move-object/from16 v57, v3

    move-object/from16 v0, v57

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$DeterminateIndicator;->this$0:Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin;

    move-object/from16 v57, v0

    invoke-static/range {v57 .. v57}, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin;->access$1200(Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin;)Ljavafx/scene/control/ProgressIndicator;

    move-result-object v57

    invoke-virtual/range {v57 .. v57}, Ljavafx/scene/control/ProgressIndicator;->getProgress()D

    move-result-wide v57

    const-wide/high16 v59, 0x3ff0000000000000L    # 1.0

    cmpl-double v57, v57, v59

    if-ltz v57, :cond_2

    const/16 v57, 0x1

    :goto_0
    invoke-virtual/range {v56 .. v57}, Ljavafx/scene/layout/StackPane;->setVisible(Z)V

    .line 478
    move-object/from16 v56, v3

    move-object/from16 v0, v56

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$DeterminateIndicator;->text:Ljavafx/scene/text/Text;

    move-object/from16 v56, v0

    invoke-virtual/range {v56 .. v56}, Ljavafx/scene/text/Text;->getLayoutBounds()Ljavafx/geometry/Bounds;

    move-result-object v56

    invoke-virtual/range {v56 .. v56}, Ljavafx/geometry/Bounds;->getWidth()D

    move-result-wide v56

    move-wide/from16 v52, v56

    .line 479
    .local v52, "textWidth":D
    move-object/from16 v56, v3

    move-object/from16 v0, v56

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$DeterminateIndicator;->text:Ljavafx/scene/text/Text;

    move-object/from16 v56, v0

    invoke-virtual/range {v56 .. v56}, Ljavafx/scene/text/Text;->getLayoutBounds()Ljavafx/geometry/Bounds;

    move-result-object v56

    invoke-virtual/range {v56 .. v56}, Ljavafx/geometry/Bounds;->getHeight()D

    move-result-wide v56

    move-wide/from16 v54, v56

    .line 480
    .local v54, "textHeight":D
    move-object/from16 v56, v3

    move-object/from16 v0, v56

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$DeterminateIndicator;->this$0:Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin;

    move-object/from16 v56, v0

    invoke-static/range {v56 .. v56}, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin;->access$1200(Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin;)Ljavafx/scene/control/ProgressIndicator;

    move-result-object v56

    invoke-virtual/range {v56 .. v56}, Ljavafx/scene/control/ProgressIndicator;->getWidth()D

    move-result-wide v56

    move-wide/from16 v58, v52

    cmpl-double v56, v56, v58

    if-ltz v56, :cond_3

    move-object/from16 v56, v3

    move-object/from16 v0, v56

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$DeterminateIndicator;->this$0:Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin;

    move-object/from16 v56, v0

    invoke-static/range {v56 .. v56}, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin;->access$1200(Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin;)Ljavafx/scene/control/ProgressIndicator;

    move-result-object v56

    invoke-virtual/range {v56 .. v56}, Ljavafx/scene/control/ProgressIndicator;->getHeight()D

    move-result-wide v56

    move-wide/from16 v58, v54

    cmpl-double v56, v56, v58

    if-ltz v56, :cond_3

    .line 481
    move-object/from16 v56, v3

    move-object/from16 v0, v56

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$DeterminateIndicator;->text:Ljavafx/scene/text/Text;

    move-object/from16 v56, v0

    invoke-virtual/range {v56 .. v56}, Ljavafx/scene/text/Text;->isVisible()Z

    move-result v56

    if-nez v56, :cond_0

    move-object/from16 v56, v3

    move-object/from16 v0, v56

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$DeterminateIndicator;->text:Ljavafx/scene/text/Text;

    move-object/from16 v56, v0

    const/16 v57, 0x1

    invoke-virtual/range {v56 .. v57}, Ljavafx/scene/text/Text;->setVisible(Z)V

    .line 482
    :cond_0
    move-object/from16 v56, v3

    move-object/from16 v0, v56

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$DeterminateIndicator;->text:Ljavafx/scene/text/Text;

    move-object/from16 v56, v0

    move-object/from16 v57, v3

    move-wide/from16 v58, v26

    move-wide/from16 v60, v22

    add-double v58, v58, v60

    move-object/from16 v60, v3

    move-object/from16 v0, v60

    iget-wide v0, v0, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$DeterminateIndicator;->textGap:D

    move-wide/from16 v60, v0

    add-double v58, v58, v60

    invoke-virtual/range {v57 .. v59}, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$DeterminateIndicator;->snapPosition(D)D

    move-result-wide v57

    invoke-virtual/range {v56 .. v58}, Ljavafx/scene/text/Text;->setLayoutY(D)V

    .line 483
    move-object/from16 v56, v3

    move-object/from16 v0, v56

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$DeterminateIndicator;->text:Ljavafx/scene/text/Text;

    move-object/from16 v56, v0

    move-object/from16 v57, v3

    move-wide/from16 v58, v24

    move-wide/from16 v60, v52

    const-wide/high16 v62, 0x4000000000000000L    # 2.0

    div-double v60, v60, v62

    sub-double v58, v58, v60

    invoke-virtual/range {v57 .. v59}, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$DeterminateIndicator;->snapPosition(D)D

    move-result-wide v57

    invoke-virtual/range {v56 .. v58}, Ljavafx/scene/text/Text;->setLayoutX(D)V

    .line 487
    :cond_1
    :goto_1
    return-void

    .line 475
    .end local v52    # "textWidth":D
    .end local v54    # "textHeight":D
    :cond_2
    const/16 v57, 0x0

    goto/16 :goto_0

    .line 485
    .restart local v52    # "textWidth":D
    .restart local v54    # "textHeight":D
    :cond_3
    move-object/from16 v56, v3

    move-object/from16 v0, v56

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$DeterminateIndicator;->text:Ljavafx/scene/text/Text;

    move-object/from16 v56, v0

    invoke-virtual/range {v56 .. v56}, Ljavafx/scene/text/Text;->isVisible()Z

    move-result v56

    if-eqz v56, :cond_1

    move-object/from16 v56, v3

    move-object/from16 v0, v56

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$DeterminateIndicator;->text:Ljavafx/scene/text/Text;

    move-object/from16 v56, v0

    const/16 v57, 0x0

    invoke-virtual/range {v56 .. v57}, Ljavafx/scene/text/Text;->setVisible(Z)V

    goto :goto_1
.end method

.method public usesMirroring()Z
    .locals 2

    .prologue
    .line 410
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$DeterminateIndicator;
    const/4 v1, 0x0

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$DeterminateIndicator;
    return v0
.end method
