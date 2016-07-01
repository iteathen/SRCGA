.class public Ljavafx/scene/control/Slider;
.super Ljavafx/scene/control/Control;
.source "Slider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavafx/scene/control/Slider$StyleableProperties;
    }
.end annotation


# static fields
.field private static final DEFAULT_STYLE_CLASS:Ljava/lang/String; = "slider"

.field private static final HORIZONTAL_PSEUDOCLASS_STATE:Ljavafx/css/PseudoClass;

.field private static final VERTICAL_PSEUDOCLASS_STATE:Ljavafx/css/PseudoClass;


# instance fields
.field private blockIncrement:Ljavafx/beans/property/DoubleProperty;

.field private labelFormatter:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/util/StringConverter",
            "<",
            "Ljava/lang/Double;",
            ">;>;"
        }
    .end annotation
.end field

.field private majorTickUnit:Ljavafx/beans/property/DoubleProperty;

.field private max:Ljavafx/beans/property/DoubleProperty;

.field private min:Ljavafx/beans/property/DoubleProperty;

.field private minorTickCount:Ljavafx/beans/property/IntegerProperty;

.field private orientation:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/geometry/Orientation;",
            ">;"
        }
    .end annotation
.end field

.field private showTickLabels:Ljavafx/beans/property/BooleanProperty;

.field private showTickMarks:Ljavafx/beans/property/BooleanProperty;

.field private snapToTicks:Ljavafx/beans/property/BooleanProperty;

.field private value:Ljavafx/beans/property/DoubleProperty;

.field private valueChanging:Ljavafx/beans/property/BooleanProperty;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 805
    const-string v0, "vertical"

    .line 806
    invoke-static {v0}, Ljavafx/css/PseudoClass;->getPseudoClass(Ljava/lang/String;)Ljavafx/css/PseudoClass;

    move-result-object v0

    sput-object v0, Ljavafx/scene/control/Slider;->VERTICAL_PSEUDOCLASS_STATE:Ljavafx/css/PseudoClass;

    .line 807
    const-string v0, "horizontal"

    .line 808
    invoke-static {v0}, Ljavafx/css/PseudoClass;->getPseudoClass(Ljava/lang/String;)Ljavafx/css/PseudoClass;

    move-result-object v0

    sput-object v0, Ljavafx/scene/control/Slider;->HORIZONTAL_PSEUDOCLASS_STATE:Ljavafx/css/PseudoClass;

    .line 807
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 107
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Slider;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/control/Control;-><init>()V

    .line 108
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/control/Slider;->initialize()V

    .line 109
    return-void
.end method

.method public constructor <init>(DDD)V
    .locals 11

    .prologue
    .line 117
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Slider;
    move-wide v1, p1

    .local v1, "min":D
    move-wide v3, p3

    .local v3, "max":D
    move-wide/from16 v5, p5

    .local v5, "value":D
    move-object v7, v0

    invoke-direct {v7}, Ljavafx/scene/control/Control;-><init>()V

    .line 118
    move-object v7, v0

    move-wide v8, v3

    invoke-virtual {v7, v8, v9}, Ljavafx/scene/control/Slider;->setMax(D)V

    .line 119
    move-object v7, v0

    move-wide v8, v1

    invoke-virtual {v7, v8, v9}, Ljavafx/scene/control/Slider;->setMin(D)V

    .line 120
    move-object v7, v0

    move-wide v8, v5

    invoke-virtual {v7, v8, v9}, Ljavafx/scene/control/Slider;->setValue(D)V

    .line 121
    move-object v7, v0

    invoke-direct {v7}, Ljavafx/scene/control/Slider;->adjustValues()V

    .line 122
    move-object v7, v0

    invoke-direct {v7}, Ljavafx/scene/control/Slider;->initialize()V

    .line 123
    return-void
.end method

.method static synthetic access$000(Ljavafx/scene/control/Slider;)V
    .locals 2

    .prologue
    .line 102
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/control/Slider;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/control/Slider;->adjustValues()V

    return-void
.end method

.method static synthetic access$100()Ljavafx/css/PseudoClass;
    .locals 1

    .prologue
    .line 102
    sget-object v0, Ljavafx/scene/control/Slider;->VERTICAL_PSEUDOCLASS_STATE:Ljavafx/css/PseudoClass;

    return-object v0
.end method

.method static synthetic access$1000(Ljavafx/scene/control/Slider;)Ljavafx/beans/property/DoubleProperty;
    .locals 2

    .prologue
    .line 102
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/control/Slider;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Slider;->blockIncrement:Ljavafx/beans/property/DoubleProperty;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/control/Slider;
    return-object v0
.end method

.method static synthetic access$1100(Ljavafx/scene/control/Slider;)Ljavafx/beans/property/BooleanProperty;
    .locals 2

    .prologue
    .line 102
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/control/Slider;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Slider;->showTickLabels:Ljavafx/beans/property/BooleanProperty;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/control/Slider;
    return-object v0
.end method

.method static synthetic access$1200(Ljavafx/scene/control/Slider;)Ljavafx/beans/property/BooleanProperty;
    .locals 2

    .prologue
    .line 102
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/control/Slider;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Slider;->showTickMarks:Ljavafx/beans/property/BooleanProperty;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/control/Slider;
    return-object v0
.end method

.method static synthetic access$1300(Ljavafx/scene/control/Slider;)Ljavafx/beans/property/BooleanProperty;
    .locals 2

    .prologue
    .line 102
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/control/Slider;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Slider;->snapToTicks:Ljavafx/beans/property/BooleanProperty;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/control/Slider;
    return-object v0
.end method

.method static synthetic access$1400(Ljavafx/scene/control/Slider;)Ljavafx/beans/property/DoubleProperty;
    .locals 2

    .prologue
    .line 102
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/control/Slider;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Slider;->majorTickUnit:Ljavafx/beans/property/DoubleProperty;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/control/Slider;
    return-object v0
.end method

.method static synthetic access$1500(Ljavafx/scene/control/Slider;)Ljavafx/beans/property/IntegerProperty;
    .locals 2

    .prologue
    .line 102
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/control/Slider;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Slider;->minorTickCount:Ljavafx/beans/property/IntegerProperty;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/control/Slider;
    return-object v0
.end method

.method static synthetic access$1600(Ljavafx/scene/control/Slider;)Ljavafx/beans/property/ObjectProperty;
    .locals 2

    .prologue
    .line 102
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/control/Slider;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Slider;->orientation:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/control/Slider;
    return-object v0
.end method

.method static synthetic access$200()Ljavafx/css/PseudoClass;
    .locals 1

    .prologue
    .line 102
    sget-object v0, Ljavafx/scene/control/Slider;->HORIZONTAL_PSEUDOCLASS_STATE:Ljavafx/css/PseudoClass;

    return-object v0
.end method

.method private adjustValues()V
    .locals 8

    .prologue
    .line 612
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Slider;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/Slider;->getValue()D

    move-result-wide v1

    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/Slider;->getMin()D

    move-result-wide v3

    cmpg-double v1, v1, v3

    if-ltz v1, :cond_0

    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/Slider;->getValue()D

    move-result-wide v1

    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/Slider;->getMax()D

    move-result-wide v3

    cmpl-double v1, v1, v3

    if-lez v1, :cond_1

    .line 613
    :cond_0
    move-object v1, v0

    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/Slider;->getMin()D

    move-result-wide v2

    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/control/Slider;->getValue()D

    move-result-wide v4

    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/scene/control/Slider;->getMax()D

    move-result-wide v6

    invoke-static/range {v2 .. v7}, Lcom/sun/javafx/util/Utils;->clamp(DDD)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljavafx/scene/control/Slider;->setValue(D)V

    .line 614
    :cond_1
    return-void
.end method

.method public static getClassCssMetaData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljavafx/css/CssMetaData",
            "<+",
            "Ljavafx/css/Styleable;",
            "*>;>;"
        }
    .end annotation

    .prologue
    .line 791
    # getter for: Ljavafx/scene/control/Slider$StyleableProperties;->STYLEABLES:Ljava/util/List;
    invoke-static {}, Ljavafx/scene/control/Slider$StyleableProperties;->access$1700()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private initialize()V
    .locals 7

    .prologue
    .line 127
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Slider;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/Slider;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x0

    const-string v5, "slider"

    aput-object v5, v3, v4

    invoke-interface {v1, v2}, Ljavafx/collections/ObservableList;->setAll([Ljava/lang/Object;)Z

    move-result v1

    .line 128
    move-object v1, v0

    sget-object v2, Ljavafx/scene/AccessibleRole;->SLIDER:Ljavafx/scene/AccessibleRole;

    invoke-virtual {v1, v2}, Ljavafx/scene/control/Slider;->setAccessibleRole(Ljavafx/scene/AccessibleRole;)V

    .line 129
    return-void
.end method

.method private snapValueToTicks(D)D
    .locals 19

    .prologue
    .line 626
    move-object/from16 v0, p0

    .local v0, "this":Ljavafx/scene/control/Slider;
    move-wide/from16 v1, p1

    .local v1, "val":D
    move-wide v12, v1

    move-wide v3, v12

    .line 627
    .local v3, "v":D
    move-object v12, v0

    invoke-virtual {v12}, Ljavafx/scene/control/Slider;->isSnapToTicks()Z

    move-result v12

    if-eqz v12, :cond_0

    .line 628
    const-wide/16 v12, 0x0

    move-wide v5, v12

    .line 630
    .local v5, "tickSpacing":D
    move-object v12, v0

    invoke-virtual {v12}, Ljavafx/scene/control/Slider;->getMinorTickCount()I

    move-result v12

    if-eqz v12, :cond_1

    .line 631
    move-object v12, v0

    invoke-virtual {v12}, Ljavafx/scene/control/Slider;->getMajorTickUnit()D

    move-result-wide v12

    move-object v14, v0

    invoke-virtual {v14}, Ljavafx/scene/control/Slider;->getMinorTickCount()I

    move-result v14

    const/4 v15, 0x0

    invoke-static {v14, v15}, Ljava/lang/Math;->max(II)I

    move-result v14

    const/4 v15, 0x1

    add-int/lit8 v14, v14, 0x1

    int-to-double v14, v14

    div-double/2addr v12, v14

    move-wide v5, v12

    .line 635
    :goto_0
    move-wide v12, v3

    move-object v14, v0

    invoke-virtual {v14}, Ljavafx/scene/control/Slider;->getMin()D

    move-result-wide v14

    sub-double/2addr v12, v14

    move-wide v14, v5

    div-double/2addr v12, v14

    double-to-int v12, v12

    move v7, v12

    .line 636
    .local v7, "prevTick":I
    move v12, v7

    int-to-double v12, v12

    move-wide v14, v5

    mul-double/2addr v12, v14

    move-object v14, v0

    invoke-virtual {v14}, Ljavafx/scene/control/Slider;->getMin()D

    move-result-wide v14

    add-double/2addr v12, v14

    move-wide v8, v12

    .line 637
    .local v8, "prevTickValue":D
    move v12, v7

    const/4 v13, 0x1

    add-int/lit8 v12, v12, 0x1

    int-to-double v12, v12

    move-wide v14, v5

    mul-double/2addr v12, v14

    move-object v14, v0

    invoke-virtual {v14}, Ljavafx/scene/control/Slider;->getMin()D

    move-result-wide v14

    add-double/2addr v12, v14

    move-wide v10, v12

    .line 638
    .local v10, "nextTickValue":D
    move-wide v12, v8

    move-wide v14, v3

    move-wide/from16 v16, v10

    invoke-static/range {v12 .. v17}, Lcom/sun/javafx/util/Utils;->nearest(DDD)D

    move-result-wide v12

    move-wide v3, v12

    .line 640
    .end local v5    # "tickSpacing":D
    .end local v7    # "prevTick":I
    .end local v8    # "prevTickValue":D
    .end local v10    # "nextTickValue":D
    :cond_0
    move-object v12, v0

    invoke-virtual {v12}, Ljavafx/scene/control/Slider;->getMin()D

    move-result-wide v12

    move-wide v14, v3

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljavafx/scene/control/Slider;->getMax()D

    move-result-wide v16

    invoke-static/range {v12 .. v17}, Lcom/sun/javafx/util/Utils;->clamp(DDD)D

    move-result-wide v12

    move-wide v0, v12

    .end local v0    # "this":Ljavafx/scene/control/Slider;
    return-wide v0

    .line 633
    .restart local v0    # "this":Ljavafx/scene/control/Slider;
    .restart local v5    # "tickSpacing":D
    :cond_1
    move-object v12, v0

    invoke-virtual {v12}, Ljavafx/scene/control/Slider;->getMajorTickUnit()D

    move-result-wide v12

    move-wide v5, v12

    goto :goto_0
.end method


# virtual methods
.method public adjustValue(D)V
    .locals 13

    .prologue
    .line 581
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/control/Slider;
    move-wide v2, p1

    .local v2, "newValue":D
    move-object v8, v1

    invoke-virtual {v8}, Ljavafx/scene/control/Slider;->getMin()D

    move-result-wide v8

    move-wide v4, v8

    .line 582
    .local v4, "_min":D
    move-object v8, v1

    invoke-virtual {v8}, Ljavafx/scene/control/Slider;->getMax()D

    move-result-wide v8

    move-wide v6, v8

    .line 583
    .local v6, "_max":D
    move-wide v8, v6

    move-wide v10, v4

    cmpg-double v8, v8, v10

    if-gtz v8, :cond_0

    .line 588
    :goto_0
    return-void

    .line 584
    :cond_0
    move-wide v8, v2

    move-wide v10, v4

    cmpg-double v8, v8, v10

    if-gez v8, :cond_1

    move-wide v8, v4

    :goto_1
    move-wide v2, v8

    .line 585
    move-wide v8, v2

    move-wide v10, v6

    cmpl-double v8, v8, v10

    if-lez v8, :cond_2

    move-wide v8, v6

    :goto_2
    move-wide v2, v8

    .line 587
    move-object v8, v1

    move-object v9, v1

    move-wide v10, v2

    invoke-direct {v9, v10, v11}, Ljavafx/scene/control/Slider;->snapValueToTicks(D)D

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljavafx/scene/control/Slider;->setValue(D)V

    .line 588
    goto :goto_0

    .line 584
    :cond_1
    move-wide v8, v2

    goto :goto_1

    .line 585
    :cond_2
    move-wide v8, v2

    goto :goto_2
.end method

.method public final blockIncrementProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 9

    .prologue
    .line 545
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/control/Slider;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/control/Slider;->blockIncrement:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    .line 546
    move-object v2, v1

    new-instance v3, Ljavafx/scene/control/Slider$10;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v1

    const-wide/high16 v6, 0x4024000000000000L    # 10.0

    invoke-direct {v4, v5, v6, v7}, Ljavafx/scene/control/Slider$10;-><init>(Ljavafx/scene/control/Slider;D)V

    iput-object v3, v2, Ljavafx/scene/control/Slider;->blockIncrement:Ljavafx/beans/property/DoubleProperty;

    .line 564
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/control/Slider;->blockIncrement:Ljavafx/beans/property/DoubleProperty;

    move-object v1, v2

    .end local v1    # "this":Ljavafx/scene/control/Slider;
    return-object v1
.end method

.method protected createDefaultSkin()Ljavafx/scene/control/Skin;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/scene/control/Skin",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 645
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Slider;
    new-instance v1, Lcom/sun/javafx/scene/control/skin/SliderSkin;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/skin/SliderSkin;-><init>(Ljavafx/scene/control/Slider;)V

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/Slider;
    return-object v0
.end method

.method public decrement()V
    .locals 6

    .prologue
    .line 603
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Slider;
    move-object v1, v0

    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/Slider;->getValue()D

    move-result-wide v2

    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/control/Slider;->getBlockIncrement()D

    move-result-wide v4

    sub-double/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljavafx/scene/control/Slider;->adjustValue(D)V

    .line 604
    return-void
.end method

.method public varargs executeAccessibleAction(Ljavafx/scene/AccessibleAction;[Ljava/lang/Object;)V
    .locals 8

    .prologue
    .line 831
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/control/Slider;
    move-object v2, p1

    .local v2, "action":Ljavafx/scene/AccessibleAction;
    move-object v3, p2

    .local v3, "parameters":[Ljava/lang/Object;
    sget-object v5, Ljavafx/scene/control/Slider$11;->$SwitchMap$javafx$scene$AccessibleAction:[I

    move-object v6, v2

    invoke-virtual {v6}, Ljavafx/scene/AccessibleAction;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 839
    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-super {v5, v6, v7}, Ljavafx/scene/control/Control;->executeAccessibleAction(Ljavafx/scene/AccessibleAction;[Ljava/lang/Object;)V

    .line 841
    :cond_0
    :goto_0
    return-void

    .line 832
    :pswitch_0
    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/scene/control/Slider;->increment()V

    goto :goto_0

    .line 833
    :pswitch_1
    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/scene/control/Slider;->decrement()V

    goto :goto_0

    .line 835
    :pswitch_2
    move-object v5, v3

    const/4 v6, 0x0

    aget-object v5, v5, v6

    check-cast v5, Ljava/lang/Double;

    move-object v4, v5

    .line 836
    .local v4, "value":Ljava/lang/Double;
    move-object v5, v4

    if-eqz v5, :cond_0

    move-object v5, v1

    move-object v6, v4

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/control/Slider;->setValue(D)V

    goto :goto_0

    .line 831
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final getBlockIncrement()D
    .locals 4

    .prologue
    .line 541
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/control/Slider;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/control/Slider;->blockIncrement:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Ljavafx/scene/control/Slider;
    return-wide v1

    .restart local v1    # "this":Ljavafx/scene/control/Slider;
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/control/Slider;->blockIncrement:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v2}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v2

    goto :goto_0
.end method

.method protected getControlCssMetaData()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljavafx/css/CssMetaData",
            "<+",
            "Ljavafx/css/Styleable;",
            "*>;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 802
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Slider;
    invoke-static {}, Ljavafx/scene/control/Slider;->getClassCssMetaData()Ljava/util/List;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/Slider;
    return-object v0
.end method

.method public final getLabelFormatter()Ljavafx/util/StringConverter;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/util/StringConverter",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .prologue
    .line 520
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Slider;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Slider;->labelFormatter:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/Slider;
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/control/Slider;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Slider;->labelFormatter:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/util/StringConverter;

    goto :goto_0
.end method

.method public final getMajorTickUnit()D
    .locals 4

    .prologue
    .line 403
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/control/Slider;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/control/Slider;->majorTickUnit:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    const-wide/high16 v2, 0x4039000000000000L    # 25.0

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Ljavafx/scene/control/Slider;
    return-wide v1

    .restart local v1    # "this":Ljavafx/scene/control/Slider;
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/control/Slider;->majorTickUnit:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v2}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v2

    goto :goto_0
.end method

.method public final getMax()D
    .locals 4

    .prologue
    .line 140
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/control/Slider;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/control/Slider;->max:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Ljavafx/scene/control/Slider;
    return-wide v1

    .restart local v1    # "this":Ljavafx/scene/control/Slider;
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/control/Slider;->max:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v2}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v2

    goto :goto_0
.end method

.method public final getMin()D
    .locals 4

    .prologue
    .line 177
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/control/Slider;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/control/Slider;->min:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    const-wide/16 v2, 0x0

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Ljavafx/scene/control/Slider;
    return-wide v1

    .restart local v1    # "this":Ljavafx/scene/control/Slider;
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/control/Slider;->min:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v2}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v2

    goto :goto_0
.end method

.method public final getMinorTickCount()I
    .locals 2

    .prologue
    .line 445
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Slider;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Slider;->minorTickCount:Ljavafx/beans/property/IntegerProperty;

    if-nez v1, :cond_0

    const/4 v1, 0x3

    :goto_0
    move v0, v1

    .end local v0    # "this":Ljavafx/scene/control/Slider;
    return v0

    .restart local v0    # "this":Ljavafx/scene/control/Slider;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Slider;->minorTickCount:Ljavafx/beans/property/IntegerProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/IntegerProperty;->get()I

    move-result v1

    goto :goto_0
.end method

.method public final getOrientation()Ljavafx/geometry/Orientation;
    .locals 2

    .prologue
    .line 279
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Slider;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Slider;->orientation:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    sget-object v1, Ljavafx/geometry/Orientation;->HORIZONTAL:Ljavafx/geometry/Orientation;

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/Slider;
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/control/Slider;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Slider;->orientation:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/geometry/Orientation;

    goto :goto_0
.end method

.method public final getValue()D
    .locals 4

    .prologue
    .line 217
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/control/Slider;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/control/Slider;->value:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    const-wide/16 v2, 0x0

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Ljavafx/scene/control/Slider;
    return-wide v1

    .restart local v1    # "this":Ljavafx/scene/control/Slider;
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/control/Slider;->value:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v2}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v2

    goto :goto_0
.end method

.method public increment()V
    .locals 6

    .prologue
    .line 595
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Slider;
    move-object v1, v0

    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/Slider;->getValue()D

    move-result-wide v2

    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/control/Slider;->getBlockIncrement()D

    move-result-wide v4

    add-double/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljavafx/scene/control/Slider;->adjustValue(D)V

    .line 596
    return-void
.end method

.method public final isShowTickLabels()Z
    .locals 2

    .prologue
    .line 322
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Slider;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Slider;->showTickLabels:Ljavafx/beans/property/BooleanProperty;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move v0, v1

    .end local v0    # "this":Ljavafx/scene/control/Slider;
    return v0

    .restart local v0    # "this":Ljavafx/scene/control/Slider;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Slider;->showTickLabels:Ljavafx/beans/property/BooleanProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/BooleanProperty;->get()Z

    move-result v1

    goto :goto_0
.end method

.method public final isShowTickMarks()Z
    .locals 2

    .prologue
    .line 357
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Slider;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Slider;->showTickMarks:Ljavafx/beans/property/BooleanProperty;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move v0, v1

    .end local v0    # "this":Ljavafx/scene/control/Slider;
    return v0

    .restart local v0    # "this":Ljavafx/scene/control/Slider;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Slider;->showTickMarks:Ljavafx/beans/property/BooleanProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/BooleanProperty;->get()Z

    move-result v1

    goto :goto_0
.end method

.method public final isSnapToTicks()Z
    .locals 2

    .prologue
    .line 482
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Slider;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Slider;->snapToTicks:Ljavafx/beans/property/BooleanProperty;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move v0, v1

    .end local v0    # "this":Ljavafx/scene/control/Slider;
    return v0

    .restart local v0    # "this":Ljavafx/scene/control/Slider;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Slider;->snapToTicks:Ljavafx/beans/property/BooleanProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/BooleanProperty;->get()Z

    move-result v1

    goto :goto_0
.end method

.method public final isValueChanging()Z
    .locals 2

    .prologue
    .line 253
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Slider;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Slider;->valueChanging:Ljavafx/beans/property/BooleanProperty;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move v0, v1

    .end local v0    # "this":Ljavafx/scene/control/Slider;
    return v0

    .restart local v0    # "this":Ljavafx/scene/control/Slider;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Slider;->valueChanging:Ljavafx/beans/property/BooleanProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/BooleanProperty;->get()Z

    move-result v1

    goto :goto_0
.end method

.method public final labelFormatterProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/util/StringConverter",
            "<",
            "Ljava/lang/Double;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 524
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Slider;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Slider;->labelFormatter:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    .line 525
    move-object v1, v0

    new-instance v2, Ljavafx/beans/property/SimpleObjectProperty;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    const-string v5, "labelFormatter"

    invoke-direct {v3, v4, v5}, Ljavafx/beans/property/SimpleObjectProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v1, Ljavafx/scene/control/Slider;->labelFormatter:Ljavafx/beans/property/ObjectProperty;

    .line 527
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Slider;->labelFormatter:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/Slider;
    return-object v0
.end method

.method public final majorTickUnitProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 9

    .prologue
    .line 407
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/control/Slider;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/control/Slider;->majorTickUnit:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    .line 408
    move-object v2, v1

    new-instance v3, Ljavafx/scene/control/Slider$7;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v1

    const-wide/high16 v6, 0x4039000000000000L    # 25.0

    invoke-direct {v4, v5, v6, v7}, Ljavafx/scene/control/Slider$7;-><init>(Ljavafx/scene/control/Slider;D)V

    iput-object v3, v2, Ljavafx/scene/control/Slider;->majorTickUnit:Ljavafx/beans/property/DoubleProperty;

    .line 432
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/control/Slider;->majorTickUnit:Ljavafx/beans/property/DoubleProperty;

    move-object v1, v2

    .end local v1    # "this":Ljavafx/scene/control/Slider;
    return-object v1
.end method

.method public final maxProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 9

    .prologue
    .line 144
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/control/Slider;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/control/Slider;->max:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    .line 145
    move-object v2, v1

    new-instance v3, Ljavafx/scene/control/Slider$1;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v1

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    invoke-direct {v4, v5, v6, v7}, Ljavafx/scene/control/Slider$1;-><init>(Ljavafx/scene/control/Slider;D)V

    iput-object v3, v2, Ljavafx/scene/control/Slider;->max:Ljavafx/beans/property/DoubleProperty;

    .line 165
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/control/Slider;->max:Ljavafx/beans/property/DoubleProperty;

    move-object v1, v2

    .end local v1    # "this":Ljavafx/scene/control/Slider;
    return-object v1
.end method

.method public final minProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 9

    .prologue
    .line 181
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/control/Slider;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/control/Slider;->min:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    .line 182
    move-object v2, v1

    new-instance v3, Ljavafx/scene/control/Slider$2;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v1

    const-wide/16 v6, 0x0

    invoke-direct {v4, v5, v6, v7}, Ljavafx/scene/control/Slider$2;-><init>(Ljavafx/scene/control/Slider;D)V

    iput-object v3, v2, Ljavafx/scene/control/Slider;->min:Ljavafx/beans/property/DoubleProperty;

    .line 202
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/control/Slider;->min:Ljavafx/beans/property/DoubleProperty;

    move-object v1, v2

    .end local v1    # "this":Ljavafx/scene/control/Slider;
    return-object v1
.end method

.method public final minorTickCountProperty()Ljavafx/beans/property/IntegerProperty;
    .locals 7

    .prologue
    .line 449
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Slider;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Slider;->minorTickCount:Ljavafx/beans/property/IntegerProperty;

    if-nez v1, :cond_0

    .line 450
    move-object v1, v0

    new-instance v2, Ljavafx/scene/control/Slider$8;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Ljavafx/scene/control/Slider$8;-><init>(Ljavafx/scene/control/Slider;I)V

    iput-object v2, v1, Ljavafx/scene/control/Slider;->minorTickCount:Ljavafx/beans/property/IntegerProperty;

    .line 469
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Slider;->minorTickCount:Ljavafx/beans/property/IntegerProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/Slider;
    return-object v0
.end method

.method public final orientationProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/geometry/Orientation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 283
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Slider;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Slider;->orientation:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    .line 284
    move-object v1, v0

    new-instance v2, Ljavafx/scene/control/Slider$4;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    sget-object v5, Ljavafx/geometry/Orientation;->HORIZONTAL:Ljavafx/geometry/Orientation;

    invoke-direct {v3, v4, v5}, Ljavafx/scene/control/Slider$4;-><init>(Ljavafx/scene/control/Slider;Ljavafx/geometry/Orientation;)V

    iput-object v2, v1, Ljavafx/scene/control/Slider;->orientation:Ljavafx/beans/property/ObjectProperty;

    .line 307
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Slider;->orientation:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/Slider;
    return-object v0
.end method

.method public varargs queryAccessibleAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .prologue
    .line 820
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/control/Slider;
    move-object v2, p1

    .local v2, "attribute":Ljavafx/scene/AccessibleAttribute;
    move-object v3, p2

    .local v3, "parameters":[Ljava/lang/Object;
    sget-object v4, Ljavafx/scene/control/Slider$11;->$SwitchMap$javafx$scene$AccessibleAttribute:[I

    move-object v5, v2

    invoke-virtual {v5}, Ljavafx/scene/AccessibleAttribute;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 825
    move-object v4, v1

    move-object v5, v2

    move-object v6, v3

    invoke-super {v4, v5, v6}, Ljavafx/scene/control/Control;->queryAccessibleAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v1, v4

    .end local v1    # "this":Ljavafx/scene/control/Slider;
    :goto_0
    return-object v1

    .line 821
    .restart local v1    # "this":Ljavafx/scene/control/Slider;
    :pswitch_0
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/control/Slider;->getValue()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    move-object v1, v4

    goto :goto_0

    .line 822
    :pswitch_1
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/control/Slider;->getMax()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    move-object v1, v4

    goto :goto_0

    .line 823
    :pswitch_2
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/control/Slider;->getMin()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    move-object v1, v4

    goto :goto_0

    .line 824
    :pswitch_3
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/control/Slider;->getOrientation()Ljavafx/geometry/Orientation;

    move-result-object v4

    move-object v1, v4

    goto :goto_0

    .line 820
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public final setBlockIncrement(D)V
    .locals 7

    .prologue
    .line 537
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Slider;
    move-wide v1, p1

    .local v1, "value":D
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/Slider;->blockIncrementProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v3

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    .line 538
    return-void
.end method

.method public final setLabelFormatter(Ljavafx/util/StringConverter;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/util/StringConverter",
            "<",
            "Ljava/lang/Double;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 516
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Slider;
    move-object v1, p1

    .local v1, "value":Ljavafx/util/StringConverter;, "Ljavafx/util/StringConverter<Ljava/lang/Double;>;"
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/Slider;->labelFormatterProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 517
    return-void
.end method

.method public final setMajorTickUnit(D)V
    .locals 9

    .prologue
    .line 396
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/control/Slider;
    move-wide v2, p1

    .local v2, "value":D
    move-wide v4, v2

    const-wide/16 v6, 0x0

    cmpg-double v4, v4, v6

    if-gtz v4, :cond_0

    .line 397
    new-instance v4, Ljava/lang/IllegalArgumentException;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const-string v6, "MajorTickUnit cannot be less than or equal to 0."

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 399
    :cond_0
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/control/Slider;->majorTickUnitProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v4

    move-wide v5, v2

    invoke-virtual {v4, v5, v6}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    .line 400
    return-void
.end method

.method public final setMax(D)V
    .locals 7

    .prologue
    .line 136
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Slider;
    move-wide v1, p1

    .local v1, "value":D
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/Slider;->maxProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v3

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    .line 137
    return-void
.end method

.method public final setMin(D)V
    .locals 7

    .prologue
    .line 173
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Slider;
    move-wide v1, p1

    .local v1, "value":D
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/Slider;->minProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v3

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    .line 174
    return-void
.end method

.method public final setMinorTickCount(I)V
    .locals 4

    .prologue
    .line 441
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Slider;
    move v1, p1

    .local v1, "value":I
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/Slider;->minorTickCountProperty()Ljavafx/beans/property/IntegerProperty;

    move-result-object v2

    move v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/IntegerProperty;->set(I)V

    .line 442
    return-void
.end method

.method public final setOrientation(Ljavafx/geometry/Orientation;)V
    .locals 4

    .prologue
    .line 275
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Slider;
    move-object v1, p1

    .local v1, "value":Ljavafx/geometry/Orientation;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/Slider;->orientationProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 276
    return-void
.end method

.method public final setShowTickLabels(Z)V
    .locals 4

    .prologue
    .line 318
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Slider;
    move v1, p1

    .local v1, "value":Z
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/Slider;->showTickLabelsProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v2

    move v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/BooleanProperty;->set(Z)V

    .line 319
    return-void
.end method

.method public final setShowTickMarks(Z)V
    .locals 4

    .prologue
    .line 353
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Slider;
    move v1, p1

    .local v1, "value":Z
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/Slider;->showTickMarksProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v2

    move v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/BooleanProperty;->set(Z)V

    .line 354
    return-void
.end method

.method public final setSnapToTicks(Z)V
    .locals 4

    .prologue
    .line 478
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Slider;
    move v1, p1

    .local v1, "value":Z
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/Slider;->snapToTicksProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v2

    move v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/BooleanProperty;->set(Z)V

    .line 479
    return-void
.end method

.method public final setValue(D)V
    .locals 7

    .prologue
    .line 213
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Slider;
    move-wide v1, p1

    .local v1, "value":D
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/Slider;->valueProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v3

    invoke-virtual {v3}, Ljavafx/beans/property/DoubleProperty;->isBound()Z

    move-result v3

    if-nez v3, :cond_0

    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/Slider;->valueProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v3

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    .line 214
    :cond_0
    return-void
.end method

.method public final setValueChanging(Z)V
    .locals 4

    .prologue
    .line 249
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Slider;
    move v1, p1

    .local v1, "value":Z
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/Slider;->valueChangingProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v2

    move v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/BooleanProperty;->set(Z)V

    .line 250
    return-void
.end method

.method public final showTickLabelsProperty()Ljavafx/beans/property/BooleanProperty;
    .locals 7

    .prologue
    .line 326
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Slider;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Slider;->showTickLabels:Ljavafx/beans/property/BooleanProperty;

    if-nez v1, :cond_0

    .line 327
    move-object v1, v0

    new-instance v2, Ljavafx/scene/control/Slider$5;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Ljavafx/scene/control/Slider$5;-><init>(Ljavafx/scene/control/Slider;Z)V

    iput-object v2, v1, Ljavafx/scene/control/Slider;->showTickLabels:Ljavafx/beans/property/BooleanProperty;

    .line 346
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Slider;->showTickLabels:Ljavafx/beans/property/BooleanProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/Slider;
    return-object v0
.end method

.method public final showTickMarksProperty()Ljavafx/beans/property/BooleanProperty;
    .locals 7

    .prologue
    .line 361
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Slider;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Slider;->showTickMarks:Ljavafx/beans/property/BooleanProperty;

    if-nez v1, :cond_0

    .line 362
    move-object v1, v0

    new-instance v2, Ljavafx/scene/control/Slider$6;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Ljavafx/scene/control/Slider$6;-><init>(Ljavafx/scene/control/Slider;Z)V

    iput-object v2, v1, Ljavafx/scene/control/Slider;->showTickMarks:Ljavafx/beans/property/BooleanProperty;

    .line 381
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Slider;->showTickMarks:Ljavafx/beans/property/BooleanProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/Slider;
    return-object v0
.end method

.method public final snapToTicksProperty()Ljavafx/beans/property/BooleanProperty;
    .locals 7

    .prologue
    .line 486
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Slider;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Slider;->snapToTicks:Ljavafx/beans/property/BooleanProperty;

    if-nez v1, :cond_0

    .line 487
    move-object v1, v0

    new-instance v2, Ljavafx/scene/control/Slider$9;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Ljavafx/scene/control/Slider$9;-><init>(Ljavafx/scene/control/Slider;Z)V

    iput-object v2, v1, Ljavafx/scene/control/Slider;->snapToTicks:Ljavafx/beans/property/BooleanProperty;

    .line 505
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Slider;->snapToTicks:Ljavafx/beans/property/BooleanProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/Slider;
    return-object v0
.end method

.method public final valueChangingProperty()Ljavafx/beans/property/BooleanProperty;
    .locals 8

    .prologue
    .line 257
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Slider;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Slider;->valueChanging:Ljavafx/beans/property/BooleanProperty;

    if-nez v1, :cond_0

    .line 258
    move-object v1, v0

    new-instance v2, Ljavafx/beans/property/SimpleBooleanProperty;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v0

    const-string v5, "valueChanging"

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Ljavafx/beans/property/SimpleBooleanProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;Z)V

    iput-object v2, v1, Ljavafx/scene/control/Slider;->valueChanging:Ljavafx/beans/property/BooleanProperty;

    .line 260
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Slider;->valueChanging:Ljavafx/beans/property/BooleanProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/Slider;
    return-object v0
.end method

.method public final valueProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 9

    .prologue
    .line 221
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/control/Slider;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/control/Slider;->value:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    .line 222
    move-object v2, v1

    new-instance v3, Ljavafx/scene/control/Slider$3;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v1

    const-wide/16 v6, 0x0

    invoke-direct {v4, v5, v6, v7}, Ljavafx/scene/control/Slider$3;-><init>(Ljavafx/scene/control/Slider;D)V

    iput-object v3, v2, Ljavafx/scene/control/Slider;->value:Ljavafx/beans/property/DoubleProperty;

    .line 239
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/control/Slider;->value:Ljavafx/beans/property/DoubleProperty;

    move-object v1, v2

    .end local v1    # "this":Ljavafx/scene/control/Slider;
    return-object v1
.end method
