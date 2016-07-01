.class public final Ljavafx/scene/chart/NumberAxis;
.super Ljavafx/scene/chart/ValueAxis;
.source "NumberAxis.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavafx/scene/chart/NumberAxis$DefaultFormatter;,
        Ljavafx/scene/chart/NumberAxis$StyleableProperties;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljavafx/scene/chart/ValueAxis",
        "<",
        "Ljava/lang/Number;",
        ">;"
    }
.end annotation


# instance fields
.field private final animator:Lcom/sun/javafx/charts/ChartLayoutAnimator;

.field private currentAnimationID:Ljava/lang/Object;

.field private final currentFormatterProperty:Ljavafx/beans/property/StringProperty;

.field private final defaultFormatter:Ljavafx/scene/chart/NumberAxis$DefaultFormatter;

.field private forceZeroInRange:Ljavafx/beans/property/BooleanProperty;

.field private tickUnit:Ljavafx/beans/property/DoubleProperty;


# direct methods
.method public constructor <init>()V
    .locals 9

    .prologue
    .line 129
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/chart/NumberAxis;
    move-object v2, v1

    invoke-direct {v2}, Ljavafx/scene/chart/ValueAxis;-><init>()V

    .line 66
    move-object v2, v1

    new-instance v3, Lcom/sun/javafx/charts/ChartLayoutAnimator;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v1

    invoke-direct {v4, v5}, Lcom/sun/javafx/charts/ChartLayoutAnimator;-><init>(Ljavafx/scene/Parent;)V

    iput-object v3, v2, Ljavafx/scene/chart/NumberAxis;->animator:Lcom/sun/javafx/charts/ChartLayoutAnimator;

    .line 67
    move-object v2, v1

    new-instance v3, Ljavafx/beans/property/SimpleStringProperty;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v1

    const-string v6, "currentFormatter"

    const-string v7, ""

    invoke-direct {v4, v5, v6, v7}, Ljavafx/beans/property/SimpleStringProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v3, v2, Ljavafx/scene/chart/NumberAxis;->currentFormatterProperty:Ljavafx/beans/property/StringProperty;

    .line 68
    move-object v2, v1

    new-instance v3, Ljavafx/scene/chart/NumberAxis$DefaultFormatter;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v1

    invoke-direct {v4, v5}, Ljavafx/scene/chart/NumberAxis$DefaultFormatter;-><init>(Ljavafx/scene/chart/NumberAxis;)V

    iput-object v3, v2, Ljavafx/scene/chart/NumberAxis;->defaultFormatter:Ljavafx/scene/chart/NumberAxis$DefaultFormatter;

    .line 73
    move-object v2, v1

    new-instance v3, Ljavafx/scene/chart/NumberAxis$1;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v1

    const/4 v6, 0x1

    invoke-direct {v4, v5, v6}, Ljavafx/scene/chart/NumberAxis$1;-><init>(Ljavafx/scene/chart/NumberAxis;Z)V

    iput-object v3, v2, Ljavafx/scene/chart/NumberAxis;->forceZeroInRange:Ljavafx/beans/property/BooleanProperty;

    .line 97
    move-object v2, v1

    new-instance v3, Ljavafx/scene/chart/NumberAxis$2;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v1

    const-wide/high16 v6, 0x4014000000000000L    # 5.0

    invoke-direct {v4, v5, v6, v7}, Ljavafx/scene/chart/NumberAxis$2;-><init>(Ljavafx/scene/chart/NumberAxis;D)V

    iput-object v3, v2, Ljavafx/scene/chart/NumberAxis;->tickUnit:Ljavafx/beans/property/DoubleProperty;

    .line 129
    return-void
.end method

.method public constructor <init>(DDD)V
    .locals 15

    .prologue
    .line 139
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/chart/NumberAxis;
    move-wide/from16 v2, p1

    .local v2, "lowerBound":D
    move-wide/from16 v4, p3

    .local v4, "upperBound":D
    move-wide/from16 v6, p5

    .local v6, "tickUnit":D
    move-object v8, v1

    move-wide v9, v2

    move-wide v11, v4

    invoke-direct {v8, v9, v10, v11, v12}, Ljavafx/scene/chart/ValueAxis;-><init>(DD)V

    .line 66
    move-object v8, v1

    new-instance v9, Lcom/sun/javafx/charts/ChartLayoutAnimator;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    move-object v11, v1

    invoke-direct {v10, v11}, Lcom/sun/javafx/charts/ChartLayoutAnimator;-><init>(Ljavafx/scene/Parent;)V

    iput-object v9, v8, Ljavafx/scene/chart/NumberAxis;->animator:Lcom/sun/javafx/charts/ChartLayoutAnimator;

    .line 67
    move-object v8, v1

    new-instance v9, Ljavafx/beans/property/SimpleStringProperty;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    move-object v11, v1

    const-string v12, "currentFormatter"

    const-string v13, ""

    invoke-direct {v10, v11, v12, v13}, Ljavafx/beans/property/SimpleStringProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v9, v8, Ljavafx/scene/chart/NumberAxis;->currentFormatterProperty:Ljavafx/beans/property/StringProperty;

    .line 68
    move-object v8, v1

    new-instance v9, Ljavafx/scene/chart/NumberAxis$DefaultFormatter;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    move-object v11, v1

    invoke-direct {v10, v11}, Ljavafx/scene/chart/NumberAxis$DefaultFormatter;-><init>(Ljavafx/scene/chart/NumberAxis;)V

    iput-object v9, v8, Ljavafx/scene/chart/NumberAxis;->defaultFormatter:Ljavafx/scene/chart/NumberAxis$DefaultFormatter;

    .line 73
    move-object v8, v1

    new-instance v9, Ljavafx/scene/chart/NumberAxis$1;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    move-object v11, v1

    const/4 v12, 0x1

    invoke-direct {v10, v11, v12}, Ljavafx/scene/chart/NumberAxis$1;-><init>(Ljavafx/scene/chart/NumberAxis;Z)V

    iput-object v9, v8, Ljavafx/scene/chart/NumberAxis;->forceZeroInRange:Ljavafx/beans/property/BooleanProperty;

    .line 97
    move-object v8, v1

    new-instance v9, Ljavafx/scene/chart/NumberAxis$2;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    move-object v11, v1

    const-wide/high16 v12, 0x4014000000000000L    # 5.0

    invoke-direct {v10, v11, v12, v13}, Ljavafx/scene/chart/NumberAxis$2;-><init>(Ljavafx/scene/chart/NumberAxis;D)V

    iput-object v9, v8, Ljavafx/scene/chart/NumberAxis;->tickUnit:Ljavafx/beans/property/DoubleProperty;

    .line 140
    move-object v8, v1

    move-wide v9, v6

    invoke-virtual {v8, v9, v10}, Ljavafx/scene/chart/NumberAxis;->setTickUnit(D)V

    .line 141
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;DDD)V
    .locals 16

    .prologue
    .line 152
    move-object/from16 v0, p0

    .local v0, "this":Ljavafx/scene/chart/NumberAxis;
    move-object/from16 v1, p1

    .local v1, "axisLabel":Ljava/lang/String;
    move-wide/from16 v2, p2

    .local v2, "lowerBound":D
    move-wide/from16 v4, p4

    .local v4, "upperBound":D
    move-wide/from16 v6, p6

    .local v6, "tickUnit":D
    move-object v8, v0

    move-wide v9, v2

    move-wide v11, v4

    invoke-direct {v8, v9, v10, v11, v12}, Ljavafx/scene/chart/ValueAxis;-><init>(DD)V

    .line 66
    move-object v8, v0

    new-instance v9, Lcom/sun/javafx/charts/ChartLayoutAnimator;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    move-object v11, v0

    invoke-direct {v10, v11}, Lcom/sun/javafx/charts/ChartLayoutAnimator;-><init>(Ljavafx/scene/Parent;)V

    iput-object v9, v8, Ljavafx/scene/chart/NumberAxis;->animator:Lcom/sun/javafx/charts/ChartLayoutAnimator;

    .line 67
    move-object v8, v0

    new-instance v9, Ljavafx/beans/property/SimpleStringProperty;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    move-object v11, v0

    const-string v12, "currentFormatter"

    const-string v13, ""

    invoke-direct {v10, v11, v12, v13}, Ljavafx/beans/property/SimpleStringProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v9, v8, Ljavafx/scene/chart/NumberAxis;->currentFormatterProperty:Ljavafx/beans/property/StringProperty;

    .line 68
    move-object v8, v0

    new-instance v9, Ljavafx/scene/chart/NumberAxis$DefaultFormatter;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    move-object v11, v0

    invoke-direct {v10, v11}, Ljavafx/scene/chart/NumberAxis$DefaultFormatter;-><init>(Ljavafx/scene/chart/NumberAxis;)V

    iput-object v9, v8, Ljavafx/scene/chart/NumberAxis;->defaultFormatter:Ljavafx/scene/chart/NumberAxis$DefaultFormatter;

    .line 73
    move-object v8, v0

    new-instance v9, Ljavafx/scene/chart/NumberAxis$1;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    move-object v11, v0

    const/4 v12, 0x1

    invoke-direct {v10, v11, v12}, Ljavafx/scene/chart/NumberAxis$1;-><init>(Ljavafx/scene/chart/NumberAxis;Z)V

    iput-object v9, v8, Ljavafx/scene/chart/NumberAxis;->forceZeroInRange:Ljavafx/beans/property/BooleanProperty;

    .line 97
    move-object v8, v0

    new-instance v9, Ljavafx/scene/chart/NumberAxis$2;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    move-object v11, v0

    const-wide/high16 v12, 0x4014000000000000L    # 5.0

    invoke-direct {v10, v11, v12, v13}, Ljavafx/scene/chart/NumberAxis$2;-><init>(Ljavafx/scene/chart/NumberAxis;D)V

    iput-object v9, v8, Ljavafx/scene/chart/NumberAxis;->tickUnit:Ljavafx/beans/property/DoubleProperty;

    .line 153
    move-object v8, v0

    move-wide v9, v6

    invoke-virtual {v8, v9, v10}, Ljavafx/scene/chart/NumberAxis;->setTickUnit(D)V

    .line 154
    move-object v8, v0

    move-object v9, v1

    invoke-virtual {v8, v9}, Ljavafx/scene/chart/NumberAxis;->setLabel(Ljava/lang/String;)V

    .line 155
    return-void
.end method

.method static synthetic access$200(Ljavafx/scene/chart/NumberAxis;)Ljavafx/beans/property/DoubleProperty;
    .locals 2

    .prologue
    .line 63
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/chart/NumberAxis;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/chart/NumberAxis;->tickUnit:Ljavafx/beans/property/DoubleProperty;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/chart/NumberAxis;
    return-object v0
.end method

.method static synthetic access$400(Ljavafx/scene/chart/NumberAxis;)Ljavafx/beans/property/StringProperty;
    .locals 2

    .prologue
    .line 63
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/chart/NumberAxis;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/chart/NumberAxis;->currentFormatterProperty:Ljavafx/beans/property/StringProperty;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/chart/NumberAxis;
    return-object v0
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
    .line 476
    # getter for: Ljavafx/scene/chart/NumberAxis$StyleableProperties;->STYLEABLES:Ljava/util/List;
    invoke-static {}, Ljavafx/scene/chart/NumberAxis$StyleableProperties;->access$300()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private measureTickMarkSize(Ljava/lang/Number;DLjava/lang/String;)Ljavafx/geometry/Dimension2D;
    .locals 12

    .prologue
    .line 323
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/NumberAxis;
    move-object v1, p1

    .local v1, "value":Ljava/lang/Number;
    move-wide v2, p2

    .local v2, "rotation":D
    move-object/from16 v4, p4

    .local v4, "numFormatter":Ljava/lang/String;
    move-object v7, v0

    invoke-virtual {v7}, Ljavafx/scene/chart/NumberAxis;->getTickLabelFormatter()Ljavafx/util/StringConverter;

    move-result-object v7

    move-object v6, v7

    .line 324
    .local v6, "formatter":Ljavafx/util/StringConverter;, "Ljavafx/util/StringConverter<Ljava/lang/Number;>;"
    move-object v7, v6

    if-nez v7, :cond_0

    move-object v7, v0

    iget-object v7, v7, Ljavafx/scene/chart/NumberAxis;->defaultFormatter:Ljavafx/scene/chart/NumberAxis$DefaultFormatter;

    move-object v6, v7

    .line 325
    :cond_0
    move-object v7, v6

    instance-of v7, v7, Ljavafx/scene/chart/NumberAxis$DefaultFormatter;

    if-eqz v7, :cond_1

    .line 326
    move-object v7, v6

    check-cast v7, Ljavafx/scene/chart/NumberAxis$DefaultFormatter;

    move-object v8, v1

    move-object v9, v4

    invoke-static {v7, v8, v9}, Ljavafx/scene/chart/NumberAxis$DefaultFormatter;->access$100(Ljavafx/scene/chart/NumberAxis$DefaultFormatter;Ljava/lang/Number;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v5, v7

    .line 330
    .local v5, "labelText":Ljava/lang/String;
    :goto_0
    move-object v7, v0

    move-object v8, v5

    move-wide v9, v2

    invoke-virtual {v7, v8, v9, v10}, Ljavafx/scene/chart/NumberAxis;->measureTickMarkLabelSize(Ljava/lang/String;D)Ljavafx/geometry/Dimension2D;

    move-result-object v7

    move-object v0, v7

    .end local v0    # "this":Ljavafx/scene/chart/NumberAxis;
    return-object v0

    .line 328
    .end local v5    # "labelText":Ljava/lang/String;
    .restart local v0    # "this":Ljavafx/scene/chart/NumberAxis;
    :cond_1
    move-object v7, v6

    move-object v8, v1

    invoke-virtual {v7, v8}, Ljavafx/util/StringConverter;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    move-object v5, v7

    .restart local v5    # "labelText":Ljava/lang/String;
    goto :goto_0
.end method


# virtual methods
.method protected autoRange(DDDD)Ljava/lang/Object;
    .locals 57

    .prologue
    .line 343
    move-object/from16 v2, p0

    .local v2, "this":Ljavafx/scene/chart/NumberAxis;
    move-wide/from16 v3, p1

    .local v3, "minValue":D
    move-wide/from16 v5, p3

    .local v5, "maxValue":D
    move-wide/from16 v7, p5

    .local v7, "length":D
    move-wide/from16 v9, p7

    .local v9, "labelSize":D
    move-object/from16 v48, v2

    invoke-virtual/range {v48 .. v48}, Ljavafx/scene/chart/NumberAxis;->getEffectiveSide()Ljavafx/geometry/Side;

    move-result-object v48

    move-object/from16 v11, v48

    .line 345
    .local v11, "side":Ljavafx/geometry/Side;
    move-object/from16 v48, v2

    invoke-virtual/range {v48 .. v48}, Ljavafx/scene/chart/NumberAxis;->isForceZeroInRange()Z

    move-result v48

    if-eqz v48, :cond_0

    .line 346
    move-wide/from16 v48, v5

    const-wide/16 v50, 0x0

    cmpg-double v48, v48, v50

    if-gez v48, :cond_9

    .line 347
    const-wide/16 v48, 0x0

    move-wide/from16 v5, v48

    .line 352
    :cond_0
    :goto_0
    move-wide/from16 v48, v5

    move-wide/from16 v50, v3

    sub-double v48, v48, v50

    move-wide/from16 v12, v48

    .line 354
    .local v12, "range":D
    move-wide/from16 v48, v12

    const-wide/16 v50, 0x0

    cmpl-double v48, v48, v50

    if-nez v48, :cond_a

    const-wide/high16 v48, 0x4000000000000000L    # 2.0

    :goto_1
    move-wide/from16 v14, v48

    .line 355
    .local v14, "paddedRange":D
    move-wide/from16 v48, v14

    move-wide/from16 v50, v12

    sub-double v48, v48, v50

    const-wide/high16 v50, 0x4000000000000000L    # 2.0

    div-double v48, v48, v50

    move-wide/from16 v16, v48

    .line 357
    .local v16, "padding":D
    move-wide/from16 v48, v3

    move-wide/from16 v50, v16

    sub-double v48, v48, v50

    move-wide/from16 v18, v48

    .line 358
    .local v18, "paddedMin":D
    move-wide/from16 v48, v5

    move-wide/from16 v50, v16

    add-double v48, v48, v50

    move-wide/from16 v20, v48

    .line 360
    .local v20, "paddedMax":D
    move-wide/from16 v48, v18

    const-wide/16 v50, 0x0

    cmpg-double v48, v48, v50

    if-gez v48, :cond_1

    move-wide/from16 v48, v3

    const-wide/16 v50, 0x0

    cmpl-double v48, v48, v50

    if-gez v48, :cond_2

    :cond_1
    move-wide/from16 v48, v18

    const-wide/16 v50, 0x0

    cmpl-double v48, v48, v50

    if-lez v48, :cond_3

    move-wide/from16 v48, v3

    const-wide/16 v50, 0x0

    cmpg-double v48, v48, v50

    if-gtz v48, :cond_3

    .line 362
    :cond_2
    const-wide/16 v48, 0x0

    move-wide/from16 v18, v48

    .line 364
    :cond_3
    move-wide/from16 v48, v20

    const-wide/16 v50, 0x0

    cmpg-double v48, v48, v50

    if-gez v48, :cond_4

    move-wide/from16 v48, v5

    const-wide/16 v50, 0x0

    cmpl-double v48, v48, v50

    if-gez v48, :cond_5

    :cond_4
    move-wide/from16 v48, v20

    const-wide/16 v50, 0x0

    cmpl-double v48, v48, v50

    if-lez v48, :cond_6

    move-wide/from16 v48, v5

    const-wide/16 v50, 0x0

    cmpg-double v48, v48, v50

    if-gtz v48, :cond_6

    .line 366
    :cond_5
    const-wide/16 v48, 0x0

    move-wide/from16 v20, v48

    .line 369
    :cond_6
    move-wide/from16 v48, v7

    move-wide/from16 v50, v9

    div-double v48, v48, v50

    invoke-static/range {v48 .. v49}, Ljava/lang/Math;->floor(D)D

    move-result-wide v48

    move-wide/from16 v0, v48

    double-to-int v0, v0

    move/from16 v48, v0

    move/from16 v22, v48

    .line 371
    .local v22, "numOfTickMarks":I
    move/from16 v48, v22

    const/16 v49, 0x2

    invoke-static/range {v48 .. v49}, Ljava/lang/Math;->max(II)I

    move-result v48

    move/from16 v22, v48

    .line 373
    move-wide/from16 v48, v14

    move/from16 v50, v22

    move/from16 v0, v50

    int-to-double v0, v0

    move-wide/from16 v50, v0

    div-double v48, v48, v50

    move-wide/from16 v23, v48

    .line 375
    .local v23, "tickUnit":D
    const-wide/16 v48, 0x0

    move-wide/from16 v25, v48

    .line 376
    .local v25, "tickUnitRounded":D
    const-wide/16 v48, 0x0

    move-wide/from16 v27, v48

    .line 377
    .local v27, "minRounded":D
    const-wide/16 v48, 0x0

    move-wide/from16 v29, v48

    .line 378
    .local v29, "maxRounded":D
    const/16 v48, 0x0

    move/from16 v31, v48

    .line 379
    .local v31, "count":I
    const-wide v48, 0x7fefffffffffffffL    # Double.MAX_VALUE

    move-wide/from16 v32, v48

    .line 380
    .local v32, "reqLength":D
    const-string v48, "0.00000000"

    move-object/from16 v34, v48

    .line 382
    .local v34, "formatter":Ljava/lang/String;
    :goto_2
    move-wide/from16 v48, v32

    move-wide/from16 v50, v7

    cmpl-double v48, v48, v50

    if-gtz v48, :cond_7

    move/from16 v48, v31

    const/16 v49, 0x14

    move/from16 v0, v48

    move/from16 v1, v49

    if-le v0, v1, :cond_16

    .line 383
    :cond_7
    move-wide/from16 v48, v23

    invoke-static/range {v48 .. v49}, Ljava/lang/Math;->log10(D)D

    move-result-wide v48

    invoke-static/range {v48 .. v49}, Ljava/lang/Math;->floor(D)D

    move-result-wide v48

    move-wide/from16 v0, v48

    double-to-int v0, v0

    move/from16 v48, v0

    move/from16 v35, v48

    .line 384
    .local v35, "exp":I
    move-wide/from16 v48, v23

    const-wide/high16 v50, 0x4024000000000000L    # 10.0

    move/from16 v52, v35

    move/from16 v0, v52

    int-to-double v0, v0

    move-wide/from16 v52, v0

    invoke-static/range {v50 .. v53}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v50

    div-double v48, v48, v50

    move-wide/from16 v36, v48

    .line 385
    .local v36, "mant":D
    move-wide/from16 v48, v36

    move-wide/from16 v38, v48

    .line 386
    .local v38, "ratio":D
    move-wide/from16 v48, v36

    const-wide/high16 v50, 0x4014000000000000L    # 5.0

    cmpl-double v48, v48, v50

    if-lez v48, :cond_b

    .line 387
    add-int/lit8 v35, v35, 0x1

    .line 388
    const-wide/high16 v48, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v38, v48

    .line 392
    :cond_8
    :goto_3
    move/from16 v48, v35

    const/16 v49, 0x1

    move/from16 v0, v48

    move/from16 v1, v49

    if-le v0, v1, :cond_d

    .line 393
    const-string v48, "#,##0"

    move-object/from16 v34, v48

    .line 407
    :goto_4
    move-wide/from16 v48, v38

    const-wide/high16 v50, 0x4024000000000000L    # 10.0

    move/from16 v52, v35

    move/from16 v0, v52

    int-to-double v0, v0

    move-wide/from16 v52, v0

    invoke-static/range {v50 .. v53}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v50

    mul-double v48, v48, v50

    move-wide/from16 v25, v48

    .line 409
    move-wide/from16 v48, v18

    move-wide/from16 v50, v25

    div-double v48, v48, v50

    invoke-static/range {v48 .. v49}, Ljava/lang/Math;->floor(D)D

    move-result-wide v48

    move-wide/from16 v50, v25

    mul-double v48, v48, v50

    move-wide/from16 v27, v48

    .line 410
    move-wide/from16 v48, v20

    move-wide/from16 v50, v25

    div-double v48, v48, v50

    invoke-static/range {v48 .. v49}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v48

    move-wide/from16 v50, v25

    mul-double v48, v48, v50

    move-wide/from16 v29, v48

    .line 413
    const-wide/16 v48, 0x0

    move-wide/from16 v40, v48

    .line 414
    .local v40, "maxReqTickGap":D
    const-wide/16 v48, 0x0

    move-wide/from16 v42, v48

    .line 415
    .local v42, "last":D
    const/16 v48, 0x0

    move/from16 v31, v48

    .line 416
    move-wide/from16 v48, v27

    move-wide/from16 v44, v48

    .local v44, "major":D
    :goto_5
    move-wide/from16 v48, v44

    move-wide/from16 v50, v29

    cmpg-double v48, v48, v50

    if-gtz v48, :cond_15

    .line 417
    move-object/from16 v48, v11

    invoke-virtual/range {v48 .. v48}, Ljavafx/geometry/Side;->isVertical()Z

    move-result v48

    if-eqz v48, :cond_13

    move-object/from16 v48, v2

    move-wide/from16 v49, v44

    invoke-static/range {v49 .. v50}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v49

    move-object/from16 v50, v2

    invoke-virtual/range {v50 .. v50}, Ljavafx/scene/chart/NumberAxis;->getTickLabelRotation()D

    move-result-wide v50

    move-object/from16 v52, v34

    invoke-direct/range {v48 .. v52}, Ljavafx/scene/chart/NumberAxis;->measureTickMarkSize(Ljava/lang/Number;DLjava/lang/String;)Ljavafx/geometry/Dimension2D;

    move-result-object v48

    invoke-virtual/range {v48 .. v48}, Ljavafx/geometry/Dimension2D;->getHeight()D

    move-result-wide v48

    .line 418
    :goto_6
    move-wide/from16 v46, v48

    .line 419
    .local v46, "size":D
    move-wide/from16 v48, v44

    move-wide/from16 v50, v27

    cmpl-double v48, v48, v50

    if-nez v48, :cond_14

    .line 420
    move-wide/from16 v48, v46

    const-wide/high16 v50, 0x4000000000000000L    # 2.0

    div-double v48, v48, v50

    move-wide/from16 v42, v48

    .line 416
    :goto_7
    move-wide/from16 v48, v44

    move-wide/from16 v50, v25

    add-double v48, v48, v50

    move-wide/from16 v44, v48

    add-int/lit8 v31, v31, 0x1

    goto :goto_5

    .line 348
    .end local v12    # "range":D
    .end local v14    # "paddedRange":D
    .end local v16    # "padding":D
    .end local v18    # "paddedMin":D
    .end local v20    # "paddedMax":D
    .end local v22    # "numOfTickMarks":I
    .end local v23    # "tickUnit":D
    .end local v25    # "tickUnitRounded":D
    .end local v27    # "minRounded":D
    .end local v29    # "maxRounded":D
    .end local v31    # "count":I
    .end local v32    # "reqLength":D
    .end local v34    # "formatter":Ljava/lang/String;
    .end local v35    # "exp":I
    .end local v36    # "mant":D
    .end local v38    # "ratio":D
    .end local v40    # "maxReqTickGap":D
    .end local v42    # "last":D
    .end local v44    # "major":D
    .end local v46    # "size":D
    :cond_9
    move-wide/from16 v48, v3

    const-wide/16 v50, 0x0

    cmpl-double v48, v48, v50

    if-lez v48, :cond_0

    .line 349
    const-wide/16 v48, 0x0

    move-wide/from16 v3, v48

    goto/16 :goto_0

    .line 354
    .restart local v12    # "range":D
    :cond_a
    move-wide/from16 v48, v12

    invoke-static/range {v48 .. v49}, Ljava/lang/Math;->abs(D)D

    move-result-wide v48

    const-wide v50, 0x3ff051eb851eb852L    # 1.02

    mul-double v48, v48, v50

    goto/16 :goto_1

    .line 389
    .restart local v14    # "paddedRange":D
    .restart local v16    # "padding":D
    .restart local v18    # "paddedMin":D
    .restart local v20    # "paddedMax":D
    .restart local v22    # "numOfTickMarks":I
    .restart local v23    # "tickUnit":D
    .restart local v25    # "tickUnitRounded":D
    .restart local v27    # "minRounded":D
    .restart local v29    # "maxRounded":D
    .restart local v31    # "count":I
    .restart local v32    # "reqLength":D
    .restart local v34    # "formatter":Ljava/lang/String;
    .restart local v35    # "exp":I
    .restart local v36    # "mant":D
    .restart local v38    # "ratio":D
    :cond_b
    move-wide/from16 v48, v36

    const-wide/high16 v50, 0x3ff0000000000000L    # 1.0

    cmpl-double v48, v48, v50

    if-lez v48, :cond_8

    .line 390
    move-wide/from16 v48, v36

    const-wide/high16 v50, 0x4004000000000000L    # 2.5

    cmpl-double v48, v48, v50

    if-lez v48, :cond_c

    const-wide/high16 v48, 0x4014000000000000L    # 5.0

    :goto_8
    move-wide/from16 v38, v48

    goto/16 :goto_3

    :cond_c
    const-wide/high16 v48, 0x4004000000000000L    # 2.5

    goto :goto_8

    .line 394
    :cond_d
    move/from16 v48, v35

    const/16 v49, 0x1

    move/from16 v0, v48

    move/from16 v1, v49

    if-ne v0, v1, :cond_e

    .line 395
    const-string v48, "0"

    move-object/from16 v34, v48

    goto/16 :goto_4

    .line 397
    :cond_e
    move-wide/from16 v48, v38

    invoke-static/range {v48 .. v49}, Ljava/lang/Math;->rint(D)D

    move-result-wide v48

    move-wide/from16 v50, v38

    cmpl-double v48, v48, v50

    if-eqz v48, :cond_10

    const/16 v48, 0x1

    :goto_9
    move/from16 v40, v48

    .line 398
    .local v40, "ratioHasFrac":Z
    new-instance v48, Ljava/lang/StringBuilder;

    move-object/from16 v56, v48

    move-object/from16 v48, v56

    move-object/from16 v49, v56

    const-string v50, "0"

    invoke-direct/range {v49 .. v50}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v41, v48

    .line 399
    .local v41, "formatterB":Ljava/lang/StringBuilder;
    move/from16 v48, v40

    if-eqz v48, :cond_11

    move/from16 v48, v35

    invoke-static/range {v48 .. v48}, Ljava/lang/Math;->abs(I)I

    move-result v48

    const/16 v49, 0x1

    add-int/lit8 v48, v48, 0x1

    :goto_a
    move/from16 v42, v48

    .line 400
    .local v42, "n":I
    move/from16 v48, v42

    if-lez v48, :cond_f

    move-object/from16 v48, v41

    const-string v49, "."

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    .line 401
    :cond_f
    const/16 v48, 0x0

    move/from16 v43, v48

    .local v43, "i":I
    :goto_b
    move/from16 v48, v43

    move/from16 v49, v42

    move/from16 v0, v48

    move/from16 v1, v49

    if-ge v0, v1, :cond_12

    .line 402
    move-object/from16 v48, v41

    const-string v49, "0"

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    .line 401
    add-int/lit8 v43, v43, 0x1

    goto :goto_b

    .line 397
    .end local v40    # "ratioHasFrac":Z
    .end local v41    # "formatterB":Ljava/lang/StringBuilder;
    .end local v42    # "n":I
    .end local v43    # "i":I
    :cond_10
    const/16 v48, 0x0

    goto :goto_9

    .line 399
    .restart local v40    # "ratioHasFrac":Z
    .restart local v41    # "formatterB":Ljava/lang/StringBuilder;
    :cond_11
    move/from16 v48, v35

    invoke-static/range {v48 .. v48}, Ljava/lang/Math;->abs(I)I

    move-result v48

    goto :goto_a

    .line 404
    .restart local v42    # "n":I
    .restart local v43    # "i":I
    :cond_12
    move-object/from16 v48, v41

    invoke-virtual/range {v48 .. v48}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    move-object/from16 v34, v48

    goto/16 :goto_4

    .line 417
    .end local v41    # "formatterB":Ljava/lang/StringBuilder;
    .end local v43    # "i":I
    .local v40, "maxReqTickGap":D
    .local v42, "last":D
    .restart local v44    # "major":D
    :cond_13
    move-object/from16 v48, v2

    move-wide/from16 v49, v44

    .line 418
    invoke-static/range {v49 .. v50}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v49

    move-object/from16 v50, v2

    invoke-virtual/range {v50 .. v50}, Ljavafx/scene/chart/NumberAxis;->getTickLabelRotation()D

    move-result-wide v50

    move-object/from16 v52, v34

    invoke-direct/range {v48 .. v52}, Ljavafx/scene/chart/NumberAxis;->measureTickMarkSize(Ljava/lang/Number;DLjava/lang/String;)Ljavafx/geometry/Dimension2D;

    move-result-object v48

    invoke-virtual/range {v48 .. v48}, Ljavafx/geometry/Dimension2D;->getWidth()D

    move-result-wide v48

    goto/16 :goto_6

    .line 422
    .restart local v46    # "size":D
    :cond_14
    move-wide/from16 v48, v40

    move-wide/from16 v50, v42

    const-wide/high16 v52, 0x4018000000000000L    # 6.0

    add-double v50, v50, v52

    move-wide/from16 v52, v46

    const-wide/high16 v54, 0x4000000000000000L    # 2.0

    div-double v52, v52, v54

    add-double v50, v50, v52

    invoke-static/range {v48 .. v51}, Ljava/lang/Math;->max(DD)D

    move-result-wide v48

    move-wide/from16 v40, v48

    goto/16 :goto_7

    .line 425
    .end local v46    # "size":D
    :cond_15
    move/from16 v48, v31

    const/16 v49, 0x1

    add-int/lit8 v48, v48, -0x1

    move/from16 v0, v48

    int-to-double v0, v0

    move-wide/from16 v48, v0

    move-wide/from16 v50, v40

    mul-double v48, v48, v50

    move-wide/from16 v32, v48

    .line 426
    move-wide/from16 v48, v25

    move-wide/from16 v23, v48

    .line 431
    move/from16 v48, v22

    const/16 v49, 0x2

    move/from16 v0, v48

    move/from16 v1, v49

    if-ne v0, v1, :cond_17

    move-wide/from16 v48, v32

    move-wide/from16 v50, v7

    cmpl-double v48, v48, v50

    if-lez v48, :cond_17

    .line 432
    .line 437
    .end local v35    # "exp":I
    .end local v36    # "mant":D
    .end local v38    # "ratio":D
    .end local v40    # "maxReqTickGap":D
    .end local v42    # "last":D
    .end local v44    # "major":D
    :cond_16
    move-object/from16 v48, v2

    move-wide/from16 v49, v7

    move-wide/from16 v51, v27

    move-wide/from16 v53, v29

    invoke-virtual/range {v48 .. v54}, Ljavafx/scene/chart/NumberAxis;->calculateNewScale(DDD)D

    move-result-wide v48

    move-wide/from16 v35, v48

    .line 439
    .local v35, "newScale":D
    const/16 v48, 0x5

    move/from16 v0, v48

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v48, v0

    move-object/from16 v56, v48

    move-object/from16 v48, v56

    move-object/from16 v49, v56

    const/16 v50, 0x0

    move-wide/from16 v51, v27

    invoke-static/range {v51 .. v52}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v51

    aput-object v51, v49, v50

    move-object/from16 v56, v48

    move-object/from16 v48, v56

    move-object/from16 v49, v56

    const/16 v50, 0x1

    move-wide/from16 v51, v29

    invoke-static/range {v51 .. v52}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v51

    aput-object v51, v49, v50

    move-object/from16 v56, v48

    move-object/from16 v48, v56

    move-object/from16 v49, v56

    const/16 v50, 0x2

    move-wide/from16 v51, v25

    invoke-static/range {v51 .. v52}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v51

    aput-object v51, v49, v50

    move-object/from16 v56, v48

    move-object/from16 v48, v56

    move-object/from16 v49, v56

    const/16 v50, 0x3

    move-wide/from16 v51, v35

    invoke-static/range {v51 .. v52}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v51

    aput-object v51, v49, v50

    move-object/from16 v56, v48

    move-object/from16 v48, v56

    move-object/from16 v49, v56

    const/16 v50, 0x4

    move-object/from16 v51, v34

    aput-object v51, v49, v50

    move-object/from16 v2, v48

    .end local v2    # "this":Ljavafx/scene/chart/NumberAxis;
    return-object v2

    .line 434
    .restart local v2    # "this":Ljavafx/scene/chart/NumberAxis;
    .local v35, "exp":I
    .restart local v36    # "mant":D
    .restart local v38    # "ratio":D
    .restart local v40    # "maxReqTickGap":D
    .restart local v42    # "last":D
    .restart local v44    # "major":D
    :cond_17
    move-wide/from16 v48, v32

    move-wide/from16 v50, v7

    cmpl-double v48, v48, v50

    if-gtz v48, :cond_18

    move/from16 v48, v31

    const/16 v49, 0x14

    move/from16 v0, v48

    move/from16 v1, v49

    if-le v0, v1, :cond_19

    :cond_18
    move-wide/from16 v48, v23

    const-wide/high16 v50, 0x4000000000000000L    # 2.0

    mul-double v48, v48, v50

    move-wide/from16 v23, v48

    .line 435
    :cond_19
    goto/16 :goto_2
.end method

.method protected calculateMinorTickMarks()Ljava/util/List;
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation

    .prologue
    .line 269
    move-object/from16 v3, p0

    .local v3, "this":Ljavafx/scene/chart/NumberAxis;
    new-instance v20, Ljava/util/ArrayList;

    move-object/from16 v24, v20

    move-object/from16 v20, v24

    move-object/from16 v21, v24

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v4, v20

    .line 270
    .local v4, "minorTickMarks":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Number;>;"
    move-object/from16 v20, v3

    invoke-virtual/range {v20 .. v20}, Ljavafx/scene/chart/NumberAxis;->getLowerBound()D

    move-result-wide v20

    move-wide/from16 v5, v20

    .line 271
    .local v5, "lowerBound":D
    move-object/from16 v20, v3

    invoke-virtual/range {v20 .. v20}, Ljavafx/scene/chart/NumberAxis;->getUpperBound()D

    move-result-wide v20

    move-wide/from16 v7, v20

    .line 272
    .local v7, "upperBound":D
    move-object/from16 v20, v3

    invoke-virtual/range {v20 .. v20}, Ljavafx/scene/chart/NumberAxis;->getTickUnit()D

    move-result-wide v20

    move-wide/from16 v9, v20

    .line 273
    .local v9, "tickUnit":D
    move-wide/from16 v20, v9

    const/16 v22, 0x1

    move-object/from16 v23, v3

    invoke-virtual/range {v23 .. v23}, Ljavafx/scene/chart/NumberAxis;->getMinorTickCount()I

    move-result v23

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->max(II)I

    move-result v22

    move/from16 v0, v22

    int-to-double v0, v0

    move-wide/from16 v22, v0

    div-double v20, v20, v22

    move-wide/from16 v11, v20

    .line 274
    .local v11, "minorUnit":D
    move-wide/from16 v20, v9

    const-wide/16 v22, 0x0

    cmpl-double v20, v20, v22

    if-lez v20, :cond_6

    .line 275
    move-wide/from16 v20, v7

    move-wide/from16 v22, v5

    sub-double v20, v20, v22

    move-wide/from16 v22, v11

    div-double v20, v20, v22

    const-wide v22, 0x40c3880000000000L    # 10000.0

    cmpl-double v20, v20, v22

    if-lez v20, :cond_0

    .line 277
    sget-object v20, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v21, Ljava/lang/StringBuilder;

    move-object/from16 v24, v21

    move-object/from16 v21, v24

    move-object/from16 v22, v24

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Warning we tried to create more than 10000 minor tick marks on a NumberAxis. Lower Bound="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v22, v3

    .line 278
    invoke-virtual/range {v22 .. v22}, Ljavafx/scene/chart/NumberAxis;->getLowerBound()D

    move-result-wide v22

    invoke-virtual/range {v21 .. v23}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", Upper Bound="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v22, v3

    invoke-virtual/range {v22 .. v22}, Ljavafx/scene/chart/NumberAxis;->getUpperBound()D

    move-result-wide v22

    invoke-virtual/range {v21 .. v23}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", Tick Unit="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-wide/from16 v22, v9

    invoke-virtual/range {v21 .. v23}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 277
    invoke-virtual/range {v20 .. v21}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 279
    move-object/from16 v20, v4

    move-object/from16 v3, v20

    .line 297
    .end local v3    # "this":Ljavafx/scene/chart/NumberAxis;
    :goto_0
    return-object v3

    .line 281
    .restart local v3    # "this":Ljavafx/scene/chart/NumberAxis;
    :cond_0
    move-wide/from16 v20, v9

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->rint(D)D

    move-result-wide v20

    move-wide/from16 v22, v9

    cmpl-double v20, v20, v22

    if-nez v20, :cond_2

    const/16 v20, 0x1

    :goto_1
    move/from16 v13, v20

    .line 282
    .local v13, "tickUnitIsInteger":Z
    move/from16 v20, v13

    if-eqz v20, :cond_3

    .line 283
    move-wide/from16 v20, v5

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->floor(D)D

    move-result-wide v20

    move-wide/from16 v22, v11

    add-double v20, v20, v22

    move-wide/from16 v14, v20

    .local v14, "minor":D
    :goto_2
    move-wide/from16 v20, v14

    move-wide/from16 v22, v5

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v22

    cmpg-double v20, v20, v22

    if-gez v20, :cond_3

    .line 284
    move-wide/from16 v20, v14

    move-wide/from16 v22, v5

    cmpl-double v20, v20, v22

    if-lez v20, :cond_1

    .line 285
    move-object/from16 v20, v4

    move-wide/from16 v21, v14

    invoke-static/range {v21 .. v22}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v21

    invoke-interface/range {v20 .. v21}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v20

    .line 283
    :cond_1
    move-wide/from16 v20, v14

    move-wide/from16 v22, v11

    add-double v20, v20, v22

    move-wide/from16 v14, v20

    goto :goto_2

    .line 281
    .end local v13    # "tickUnitIsInteger":Z
    .end local v14    # "minor":D
    :cond_2
    const/16 v20, 0x0

    goto :goto_1

    .line 289
    .restart local v13    # "tickUnitIsInteger":Z
    :cond_3
    move/from16 v20, v13

    if-eqz v20, :cond_4

    move-wide/from16 v20, v5

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v20

    :goto_3
    move-wide/from16 v14, v20

    .line 290
    .local v14, "major":D
    :goto_4
    move-wide/from16 v20, v14

    move-wide/from16 v22, v7

    cmpg-double v20, v20, v22

    if-gez v20, :cond_6

    .line 291
    move-wide/from16 v20, v14

    move-wide/from16 v22, v9

    add-double v20, v20, v22

    move-wide/from16 v22, v7

    invoke-static/range {v20 .. v23}, Ljava/lang/Math;->min(DD)D

    move-result-wide v20

    move-wide/from16 v16, v20

    .line 292
    .local v16, "next":D
    move-wide/from16 v20, v14

    move-wide/from16 v22, v11

    add-double v20, v20, v22

    move-wide/from16 v18, v20

    .local v18, "minor":D
    :goto_5
    move-wide/from16 v20, v18

    move-wide/from16 v22, v16

    cmpg-double v20, v20, v22

    if-gez v20, :cond_5

    .line 293
    move-object/from16 v20, v4

    move-wide/from16 v21, v18

    invoke-static/range {v21 .. v22}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v21

    invoke-interface/range {v20 .. v21}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v20

    .line 292
    move-wide/from16 v20, v18

    move-wide/from16 v22, v11

    add-double v20, v20, v22

    move-wide/from16 v18, v20

    goto :goto_5

    .line 289
    .end local v14    # "major":D
    .end local v16    # "next":D
    .end local v18    # "minor":D
    :cond_4
    move-wide/from16 v20, v5

    goto :goto_3

    .line 290
    .restart local v14    # "major":D
    .restart local v16    # "next":D
    .restart local v18    # "minor":D
    :cond_5
    move-wide/from16 v20, v14

    move-wide/from16 v22, v9

    add-double v20, v20, v22

    move-wide/from16 v14, v20

    goto :goto_4

    .line 297
    .end local v13    # "tickUnitIsInteger":Z
    .end local v14    # "major":D
    .end local v16    # "next":D
    .end local v18    # "minor":D
    :cond_6
    move-object/from16 v20, v4

    move-object/from16 v3, v20

    goto/16 :goto_0
.end method

.method protected calculateTickValues(DLjava/lang/Object;)Ljava/util/List;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation

    .prologue
    .line 231
    move-object/from16 v0, p0

    .local v0, "this":Ljavafx/scene/chart/NumberAxis;
    move-wide/from16 v1, p1

    .local v1, "length":D
    move-object/from16 v3, p3

    .local v3, "range":Ljava/lang/Object;
    move-object/from16 v16, v3

    check-cast v16, [Ljava/lang/Object;

    check-cast v16, [Ljava/lang/Object;

    move-object/from16 v4, v16

    .line 232
    .local v4, "rangeProps":[Ljava/lang/Object;
    move-object/from16 v16, v4

    const/16 v17, 0x0

    aget-object v16, v16, v17

    check-cast v16, Ljava/lang/Double;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v16

    move-wide/from16 v5, v16

    .line 233
    .local v5, "lowerBound":D
    move-object/from16 v16, v4

    const/16 v17, 0x1

    aget-object v16, v16, v17

    check-cast v16, Ljava/lang/Double;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v16

    move-wide/from16 v7, v16

    .line 234
    .local v7, "upperBound":D
    move-object/from16 v16, v4

    const/16 v17, 0x2

    aget-object v16, v16, v17

    check-cast v16, Ljava/lang/Double;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v16

    move-wide/from16 v9, v16

    .line 235
    .local v9, "tickUnit":D
    new-instance v16, Ljava/util/ArrayList;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v11, v16

    .line 236
    .local v11, "tickValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Number;>;"
    move-wide/from16 v16, v5

    move-wide/from16 v18, v7

    cmpl-double v16, v16, v18

    if-nez v16, :cond_1

    .line 237
    move-object/from16 v16, v11

    move-wide/from16 v17, v5

    invoke-static/range {v17 .. v18}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v17

    invoke-interface/range {v16 .. v17}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v16

    .line 260
    :cond_0
    :goto_0
    move-object/from16 v16, v11

    move-object/from16 v0, v16

    .end local v0    # "this":Ljavafx/scene/chart/NumberAxis;
    return-object v0

    .line 238
    .restart local v0    # "this":Ljavafx/scene/chart/NumberAxis;
    :cond_1
    move-wide/from16 v16, v9

    const-wide/16 v18, 0x0

    cmpg-double v16, v16, v18

    if-gtz v16, :cond_2

    .line 239
    move-object/from16 v16, v11

    move-wide/from16 v17, v5

    invoke-static/range {v17 .. v18}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v17

    invoke-interface/range {v16 .. v17}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v16

    .line 240
    move-object/from16 v16, v11

    move-wide/from16 v17, v7

    invoke-static/range {v17 .. v18}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v17

    invoke-interface/range {v16 .. v17}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v16

    goto :goto_0

    .line 241
    :cond_2
    move-wide/from16 v16, v9

    const-wide/16 v18, 0x0

    cmpl-double v16, v16, v18

    if-lez v16, :cond_0

    .line 242
    move-object/from16 v16, v11

    move-wide/from16 v17, v5

    invoke-static/range {v17 .. v18}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v17

    invoke-interface/range {v16 .. v17}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v16

    .line 243
    move-wide/from16 v16, v7

    move-wide/from16 v18, v5

    sub-double v16, v16, v18

    move-wide/from16 v18, v9

    div-double v16, v16, v18

    const-wide v18, 0x409f400000000000L    # 2000.0

    cmpl-double v16, v16, v18

    if-lez v16, :cond_4

    .line 245
    sget-object v16, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v17, Ljava/lang/StringBuilder;

    move-object/from16 v20, v17

    move-object/from16 v17, v20

    move-object/from16 v18, v20

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Warning we tried to create more than 2000 major tick marks on a NumberAxis. Lower Bound="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-wide/from16 v18, v5

    invoke-virtual/range {v17 .. v19}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ", Upper Bound="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-wide/from16 v18, v7

    invoke-virtual/range {v17 .. v19}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ", Tick Unit="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-wide/from16 v18, v9

    invoke-virtual/range {v17 .. v19}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 258
    :cond_3
    move-object/from16 v16, v11

    move-wide/from16 v17, v7

    invoke-static/range {v17 .. v18}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v17

    invoke-interface/range {v16 .. v17}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v16

    goto/16 :goto_0

    .line 248
    :cond_4
    move-wide/from16 v16, v5

    move-wide/from16 v18, v9

    add-double v16, v16, v18

    move-wide/from16 v18, v7

    cmpg-double v16, v16, v18

    if-gez v16, :cond_3

    .line 250
    move-wide/from16 v16, v9

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->rint(D)D

    move-result-wide v16

    move-wide/from16 v18, v9

    cmpl-double v16, v16, v18

    if-nez v16, :cond_6

    move-wide/from16 v16, v5

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v16

    :goto_1
    move-wide/from16 v12, v16

    .line 251
    .local v12, "first":D
    move-wide/from16 v16, v12

    move-wide/from16 v14, v16

    .local v14, "major":D
    :goto_2
    move-wide/from16 v16, v14

    move-wide/from16 v18, v7

    cmpg-double v16, v16, v18

    if-gez v16, :cond_3

    .line 252
    move-object/from16 v16, v11

    move-wide/from16 v17, v14

    invoke-static/range {v17 .. v18}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v17

    invoke-interface/range {v16 .. v17}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_5

    .line 253
    move-object/from16 v16, v11

    move-wide/from16 v17, v14

    invoke-static/range {v17 .. v18}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v17

    invoke-interface/range {v16 .. v17}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v16

    .line 251
    :cond_5
    move-wide/from16 v16, v14

    move-wide/from16 v18, v9

    add-double v16, v16, v18

    move-wide/from16 v14, v16

    goto :goto_2

    .line 250
    .end local v12    # "first":D
    .end local v14    # "major":D
    :cond_6
    move-wide/from16 v16, v5

    move-wide/from16 v18, v9

    add-double v16, v16, v18

    goto :goto_1
.end method

.method public final forceZeroInRangeProperty()Ljavafx/beans/property/BooleanProperty;
    .locals 2

    .prologue
    .line 94
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/NumberAxis;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/chart/NumberAxis;->forceZeroInRange:Ljavafx/beans/property/BooleanProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/chart/NumberAxis;
    return-object v0
.end method

.method public getCssMetaData()Ljava/util/List;
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

    .prologue
    .line 485
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/NumberAxis;
    invoke-static {}, Ljavafx/scene/chart/NumberAxis;->getClassCssMetaData()Ljava/util/List;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/chart/NumberAxis;
    return-object v0
.end method

.method protected getRange()Ljava/lang/Object;
    .locals 7

    .prologue
    .line 177
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/NumberAxis;
    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    const/4 v3, 0x0

    move-object v4, v0

    .line 178
    invoke-virtual {v4}, Ljavafx/scene/chart/NumberAxis;->getLowerBound()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v2, v3

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    const/4 v3, 0x1

    move-object v4, v0

    .line 179
    invoke-virtual {v4}, Ljavafx/scene/chart/NumberAxis;->getUpperBound()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v2, v3

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    const/4 v3, 0x2

    move-object v4, v0

    .line 180
    invoke-virtual {v4}, Ljavafx/scene/chart/NumberAxis;->getTickUnit()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v2, v3

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    const/4 v3, 0x3

    move-object v4, v0

    .line 181
    invoke-virtual {v4}, Ljavafx/scene/chart/NumberAxis;->getScale()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v2, v3

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    const/4 v3, 0x4

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/chart/NumberAxis;->currentFormatterProperty:Ljavafx/beans/property/StringProperty;

    .line 182
    invoke-virtual {v4}, Ljavafx/beans/property/StringProperty;->get()Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v2, v3

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/chart/NumberAxis;
    return-object v0
.end method

.method protected getTickMarkLabel(Ljava/lang/Number;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 166
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/NumberAxis;
    move-object v1, p1

    .local v1, "value":Ljava/lang/Number;
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/chart/NumberAxis;->getTickLabelFormatter()Ljavafx/util/StringConverter;

    move-result-object v3

    move-object v2, v3

    .line 167
    .local v2, "formatter":Ljavafx/util/StringConverter;, "Ljavafx/util/StringConverter<Ljava/lang/Number;>;"
    move-object v3, v2

    if-nez v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/chart/NumberAxis;->defaultFormatter:Ljavafx/scene/chart/NumberAxis$DefaultFormatter;

    move-object v2, v3

    .line 168
    :cond_0
    move-object v3, v2

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljavafx/util/StringConverter;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Ljavafx/scene/chart/NumberAxis;
    return-object v0
.end method

.method protected bridge synthetic getTickMarkLabel(Ljava/lang/Object;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 63
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/NumberAxis;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v2, v3}, Ljavafx/scene/chart/NumberAxis;->getTickMarkLabel(Ljava/lang/Number;)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/chart/NumberAxis;
    return-object v0
.end method

.method public final getTickUnit()D
    .locals 3

    .prologue
    .line 120
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/NumberAxis;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/chart/NumberAxis;->tickUnit:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v1

    move-wide v0, v1

    .end local v0    # "this":Ljavafx/scene/chart/NumberAxis;
    return-wide v0
.end method

.method public final isForceZeroInRange()Z
    .locals 2

    .prologue
    .line 92
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/NumberAxis;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/chart/NumberAxis;->forceZeroInRange:Ljavafx/beans/property/BooleanProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/BooleanProperty;->getValue()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Ljavafx/scene/chart/NumberAxis;
    return v0
.end method

.method protected measureTickMarkSize(Ljava/lang/Number;Ljava/lang/Object;)Ljavafx/geometry/Dimension2D;
    .locals 11

    .prologue
    .line 308
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/chart/NumberAxis;
    move-object v2, p1

    .local v2, "value":Ljava/lang/Number;
    move-object v3, p2

    .local v3, "range":Ljava/lang/Object;
    move-object v6, v3

    check-cast v6, [Ljava/lang/Object;

    check-cast v6, [Ljava/lang/Object;

    move-object v4, v6

    .line 309
    .local v4, "rangeProps":[Ljava/lang/Object;
    move-object v6, v4

    const/4 v7, 0x4

    aget-object v6, v6, v7

    check-cast v6, Ljava/lang/String;

    move-object v5, v6

    .line 310
    .local v5, "formatter":Ljava/lang/String;
    move-object v6, v1

    move-object v7, v2

    move-object v8, v1

    invoke-virtual {v8}, Ljavafx/scene/chart/NumberAxis;->getTickLabelRotation()D

    move-result-wide v8

    move-object v10, v5

    invoke-direct {v6, v7, v8, v9, v10}, Ljavafx/scene/chart/NumberAxis;->measureTickMarkSize(Ljava/lang/Number;DLjava/lang/String;)Ljavafx/geometry/Dimension2D;

    move-result-object v6

    move-object v1, v6

    .end local v1    # "this":Ljavafx/scene/chart/NumberAxis;
    return-object v1
.end method

.method protected bridge synthetic measureTickMarkSize(Ljava/lang/Object;Ljava/lang/Object;)Ljavafx/geometry/Dimension2D;
    .locals 6

    .prologue
    .line 63
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/NumberAxis;
    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    check-cast v4, Ljava/lang/Number;

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/chart/NumberAxis;->measureTickMarkSize(Ljava/lang/Number;Ljava/lang/Object;)Ljavafx/geometry/Dimension2D;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Ljavafx/scene/chart/NumberAxis;
    return-object v0
.end method

.method public final setForceZeroInRange(Z)V
    .locals 4

    .prologue
    .line 93
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/NumberAxis;
    move v1, p1

    .local v1, "value":Z
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/chart/NumberAxis;->forceZeroInRange:Ljavafx/beans/property/BooleanProperty;

    move v3, v1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljavafx/beans/property/BooleanProperty;->setValue(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected setRange(Ljava/lang/Object;Z)V
    .locals 34

    .prologue
    .line 194
    move-object/from16 v2, p0

    .local v2, "this":Ljavafx/scene/chart/NumberAxis;
    move-object/from16 v3, p1

    .local v3, "range":Ljava/lang/Object;
    move/from16 v4, p2

    .local v4, "animate":Z
    move-object/from16 v17, v3

    check-cast v17, [Ljava/lang/Object;

    check-cast v17, [Ljava/lang/Object;

    move-object/from16 v5, v17

    .line 195
    .local v5, "rangeProps":[Ljava/lang/Object;
    move-object/from16 v17, v5

    const/16 v18, 0x0

    aget-object v17, v17, v18

    check-cast v17, Ljava/lang/Double;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v17

    move-wide/from16 v6, v17

    .line 196
    .local v6, "lowerBound":D
    move-object/from16 v17, v5

    const/16 v18, 0x1

    aget-object v17, v17, v18

    check-cast v17, Ljava/lang/Double;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v17

    move-wide/from16 v8, v17

    .line 197
    .local v8, "upperBound":D
    move-object/from16 v17, v5

    const/16 v18, 0x2

    aget-object v17, v17, v18

    check-cast v17, Ljava/lang/Double;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v17

    move-wide/from16 v10, v17

    .line 198
    .local v10, "tickUnit":D
    move-object/from16 v17, v5

    const/16 v18, 0x3

    aget-object v17, v17, v18

    check-cast v17, Ljava/lang/Double;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v17

    move-wide/from16 v12, v17

    .line 199
    .local v12, "scale":D
    move-object/from16 v17, v5

    const/16 v18, 0x4

    aget-object v17, v17, v18

    check-cast v17, Ljava/lang/String;

    move-object/from16 v14, v17

    .line 200
    .local v14, "formatter":Ljava/lang/String;
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Ljavafx/scene/chart/NumberAxis;->currentFormatterProperty:Ljavafx/beans/property/StringProperty;

    move-object/from16 v17, v0

    move-object/from16 v18, v14

    invoke-virtual/range {v17 .. v18}, Ljavafx/beans/property/StringProperty;->set(Ljava/lang/Object;)V

    .line 201
    move-object/from16 v17, v2

    invoke-virtual/range {v17 .. v17}, Ljavafx/scene/chart/NumberAxis;->getLowerBound()D

    move-result-wide v17

    move-wide/from16 v15, v17

    .line 202
    .local v15, "oldLowerBound":D
    move-object/from16 v17, v2

    move-wide/from16 v18, v6

    invoke-virtual/range {v17 .. v19}, Ljavafx/scene/chart/NumberAxis;->setLowerBound(D)V

    .line 203
    move-object/from16 v17, v2

    move-wide/from16 v18, v8

    invoke-virtual/range {v17 .. v19}, Ljavafx/scene/chart/NumberAxis;->setUpperBound(D)V

    .line 204
    move-object/from16 v17, v2

    move-wide/from16 v18, v10

    invoke-virtual/range {v17 .. v19}, Ljavafx/scene/chart/NumberAxis;->setTickUnit(D)V

    .line 205
    move/from16 v17, v4

    if-eqz v17, :cond_0

    .line 206
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Ljavafx/scene/chart/NumberAxis;->animator:Lcom/sun/javafx/charts/ChartLayoutAnimator;

    move-object/from16 v17, v0

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Ljavafx/scene/chart/NumberAxis;->currentAnimationID:Ljava/lang/Object;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/sun/javafx/charts/ChartLayoutAnimator;->stop(Ljava/lang/Object;)V

    .line 207
    move-object/from16 v17, v2

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Ljavafx/scene/chart/NumberAxis;->animator:Lcom/sun/javafx/charts/ChartLayoutAnimator;

    move-object/from16 v18, v0

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [Ljavafx/animation/KeyFrame;

    move-object/from16 v19, v0

    move-object/from16 v33, v19

    move-object/from16 v19, v33

    move-object/from16 v20, v33

    const/16 v21, 0x0

    new-instance v22, Ljavafx/animation/KeyFrame;

    move-object/from16 v33, v22

    move-object/from16 v22, v33

    move-object/from16 v23, v33

    sget-object v24, Ljavafx/util/Duration;->ZERO:Ljavafx/util/Duration;

    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v0, v0, [Ljavafx/animation/KeyValue;

    move-object/from16 v25, v0

    move-object/from16 v33, v25

    move-object/from16 v25, v33

    move-object/from16 v26, v33

    const/16 v27, 0x0

    new-instance v28, Ljavafx/animation/KeyValue;

    move-object/from16 v33, v28

    move-object/from16 v28, v33

    move-object/from16 v29, v33

    move-object/from16 v30, v2

    move-object/from16 v0, v30

    iget-object v0, v0, Ljavafx/scene/chart/NumberAxis;->currentLowerBound:Ljavafx/beans/property/DoubleProperty;

    move-object/from16 v30, v0

    move-wide/from16 v31, v15

    .line 209
    invoke-static/range {v31 .. v32}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v31

    invoke-direct/range {v29 .. v31}, Ljavafx/animation/KeyValue;-><init>(Ljavafx/beans/value/WritableValue;Ljava/lang/Object;)V

    aput-object v28, v26, v27

    move-object/from16 v33, v25

    move-object/from16 v25, v33

    move-object/from16 v26, v33

    const/16 v27, 0x1

    new-instance v28, Ljavafx/animation/KeyValue;

    move-object/from16 v33, v28

    move-object/from16 v28, v33

    move-object/from16 v29, v33

    move-object/from16 v30, v2

    .line 210
    invoke-virtual/range {v30 .. v30}, Ljavafx/scene/chart/NumberAxis;->scalePropertyImpl()Ljavafx/beans/property/ReadOnlyDoubleWrapper;

    move-result-object v30

    move-object/from16 v31, v2

    invoke-virtual/range {v31 .. v31}, Ljavafx/scene/chart/NumberAxis;->getScale()D

    move-result-wide v31

    invoke-static/range {v31 .. v32}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v31

    invoke-direct/range {v29 .. v31}, Ljavafx/animation/KeyValue;-><init>(Ljavafx/beans/value/WritableValue;Ljava/lang/Object;)V

    aput-object v28, v26, v27

    invoke-direct/range {v23 .. v25}, Ljavafx/animation/KeyFrame;-><init>(Ljavafx/util/Duration;[Ljavafx/animation/KeyValue;)V

    aput-object v22, v20, v21

    move-object/from16 v33, v19

    move-object/from16 v19, v33

    move-object/from16 v20, v33

    const/16 v21, 0x1

    new-instance v22, Ljavafx/animation/KeyFrame;

    move-object/from16 v33, v22

    move-object/from16 v22, v33

    move-object/from16 v23, v33

    const-wide v24, 0x4085e00000000000L    # 700.0

    .line 212
    invoke-static/range {v24 .. v25}, Ljavafx/util/Duration;->millis(D)Ljavafx/util/Duration;

    move-result-object v24

    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v0, v0, [Ljavafx/animation/KeyValue;

    move-object/from16 v25, v0

    move-object/from16 v33, v25

    move-object/from16 v25, v33

    move-object/from16 v26, v33

    const/16 v27, 0x0

    new-instance v28, Ljavafx/animation/KeyValue;

    move-object/from16 v33, v28

    move-object/from16 v28, v33

    move-object/from16 v29, v33

    move-object/from16 v30, v2

    move-object/from16 v0, v30

    iget-object v0, v0, Ljavafx/scene/chart/NumberAxis;->currentLowerBound:Ljavafx/beans/property/DoubleProperty;

    move-object/from16 v30, v0

    move-wide/from16 v31, v6

    .line 213
    invoke-static/range {v31 .. v32}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v31

    invoke-direct/range {v29 .. v31}, Ljavafx/animation/KeyValue;-><init>(Ljavafx/beans/value/WritableValue;Ljava/lang/Object;)V

    aput-object v28, v26, v27

    move-object/from16 v33, v25

    move-object/from16 v25, v33

    move-object/from16 v26, v33

    const/16 v27, 0x1

    new-instance v28, Ljavafx/animation/KeyValue;

    move-object/from16 v33, v28

    move-object/from16 v28, v33

    move-object/from16 v29, v33

    move-object/from16 v30, v2

    .line 214
    invoke-virtual/range {v30 .. v30}, Ljavafx/scene/chart/NumberAxis;->scalePropertyImpl()Ljavafx/beans/property/ReadOnlyDoubleWrapper;

    move-result-object v30

    move-wide/from16 v31, v12

    invoke-static/range {v31 .. v32}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v31

    invoke-direct/range {v29 .. v31}, Ljavafx/animation/KeyValue;-><init>(Ljavafx/beans/value/WritableValue;Ljava/lang/Object;)V

    aput-object v28, v26, v27

    invoke-direct/range {v23 .. v25}, Ljavafx/animation/KeyFrame;-><init>(Ljavafx/util/Duration;[Ljavafx/animation/KeyValue;)V

    aput-object v22, v20, v21

    .line 207
    invoke-virtual/range {v18 .. v19}, Lcom/sun/javafx/charts/ChartLayoutAnimator;->animate([Ljavafx/animation/KeyFrame;)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Ljavafx/scene/chart/NumberAxis;->currentAnimationID:Ljava/lang/Object;

    .line 221
    :goto_0
    return-void

    .line 218
    :cond_0
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Ljavafx/scene/chart/NumberAxis;->currentLowerBound:Ljavafx/beans/property/DoubleProperty;

    move-object/from16 v17, v0

    move-wide/from16 v18, v6

    invoke-virtual/range {v17 .. v19}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    .line 219
    move-object/from16 v17, v2

    move-wide/from16 v18, v12

    invoke-virtual/range {v17 .. v19}, Ljavafx/scene/chart/NumberAxis;->setScale(D)V

    goto :goto_0
.end method

.method public final setTickUnit(D)V
    .locals 7

    .prologue
    .line 121
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/NumberAxis;
    move-wide v1, p1

    .local v1, "value":D
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/chart/NumberAxis;->tickUnit:Ljavafx/beans/property/DoubleProperty;

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    return-void
.end method

.method public final tickUnitProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 2

    .prologue
    .line 122
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/NumberAxis;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/chart/NumberAxis;->tickUnit:Ljavafx/beans/property/DoubleProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/chart/NumberAxis;
    return-object v0
.end method
