.class public Ljavafx/scene/control/SpinnerValueFactory$DoubleSpinnerValueFactory;
.super Ljavafx/scene/control/SpinnerValueFactory;
.source "SpinnerValueFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/control/SpinnerValueFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DoubleSpinnerValueFactory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljavafx/scene/control/SpinnerValueFactory",
        "<",
        "Ljava/lang/Double;",
        ">;"
    }
.end annotation


# instance fields
.field private amountToStepBy:Ljavafx/beans/property/DoubleProperty;

.field private max:Ljavafx/beans/property/DoubleProperty;

.field private min:Ljavafx/beans/property/DoubleProperty;


# direct methods
.method public constructor <init>(DD)V
    .locals 13
    .param p1    # D
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "min"
        .end annotation
    .end param
    .param p3    # D
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "max"
        .end annotation
    .end param

    .prologue
    .line 653
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/SpinnerValueFactory$DoubleSpinnerValueFactory;
    move-wide v1, p1

    .local v1, "min":D
    move-wide/from16 v3, p3

    .local v3, "max":D
    move-object v5, v0

    move-wide v6, v1

    move-wide v8, v3

    move-wide v10, v1

    invoke-direct/range {v5 .. v11}, Ljavafx/scene/control/SpinnerValueFactory$DoubleSpinnerValueFactory;-><init>(DDD)V

    .line 654
    return-void
.end method

.method public constructor <init>(DDD)V
    .locals 17
    .param p1    # D
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "min"
        .end annotation
    .end param
    .param p3    # D
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "max"
        .end annotation
    .end param
    .param p5    # D
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "initialValue"
        .end annotation
    .end param

    .prologue
    .line 669
    move-object/from16 v0, p0

    .local v0, "this":Ljavafx/scene/control/SpinnerValueFactory$DoubleSpinnerValueFactory;
    move-wide/from16 v1, p1

    .local v1, "min":D
    move-wide/from16 v3, p3

    .local v3, "max":D
    move-wide/from16 v5, p5

    .local v5, "initialValue":D
    move-object v7, v0

    move-wide v8, v1

    move-wide v10, v3

    move-wide v12, v5

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    invoke-direct/range {v7 .. v15}, Ljavafx/scene/control/SpinnerValueFactory$DoubleSpinnerValueFactory;-><init>(DDDD)V

    .line 670
    return-void
.end method

.method public constructor <init>(DDDD)V
    .locals 17
    .param p1    # D
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "min"
        .end annotation
    .end param
    .param p3    # D
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "max"
        .end annotation
    .end param
    .param p5    # D
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "initialValue"
        .end annotation
    .end param
    .param p7    # D
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "amountToStepBy"
        .end annotation
    .end param

    .prologue
    .line 685
    move-object/from16 v0, p0

    .local v0, "this":Ljavafx/scene/control/SpinnerValueFactory$DoubleSpinnerValueFactory;
    move-wide/from16 v1, p1

    .local v1, "min":D
    move-wide/from16 v3, p3

    .local v3, "max":D
    move-wide/from16 v5, p5

    .local v5, "initialValue":D
    move-wide/from16 v7, p7

    .local v7, "amountToStepBy":D
    move-object v9, v0

    invoke-direct {v9}, Ljavafx/scene/control/SpinnerValueFactory;-><init>()V

    .line 743
    move-object v9, v0

    new-instance v10, Ljavafx/scene/control/SpinnerValueFactory$DoubleSpinnerValueFactory$2;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    move-object v12, v0

    move-object v13, v0

    const-string v14, "min"

    invoke-direct {v11, v12, v13, v14}, Ljavafx/scene/control/SpinnerValueFactory$DoubleSpinnerValueFactory$2;-><init>(Ljavafx/scene/control/SpinnerValueFactory$DoubleSpinnerValueFactory;Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v10, v9, Ljavafx/scene/control/SpinnerValueFactory$DoubleSpinnerValueFactory;->min:Ljavafx/beans/property/DoubleProperty;

    .line 776
    move-object v9, v0

    new-instance v10, Ljavafx/scene/control/SpinnerValueFactory$DoubleSpinnerValueFactory$3;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    move-object v12, v0

    move-object v13, v0

    const-string v14, "max"

    invoke-direct {v11, v12, v13, v14}, Ljavafx/scene/control/SpinnerValueFactory$DoubleSpinnerValueFactory$3;-><init>(Ljavafx/scene/control/SpinnerValueFactory$DoubleSpinnerValueFactory;Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v10, v9, Ljavafx/scene/control/SpinnerValueFactory$DoubleSpinnerValueFactory;->max:Ljavafx/beans/property/DoubleProperty;

    .line 809
    move-object v9, v0

    new-instance v10, Ljavafx/beans/property/SimpleDoubleProperty;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    move-object v12, v0

    const-string v13, "amountToStepBy"

    invoke-direct {v11, v12, v13}, Ljavafx/beans/property/SimpleDoubleProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v10, v9, Ljavafx/scene/control/SpinnerValueFactory$DoubleSpinnerValueFactory;->amountToStepBy:Ljavafx/beans/property/DoubleProperty;

    .line 686
    move-object v9, v0

    move-wide v10, v1

    invoke-virtual {v9, v10, v11}, Ljavafx/scene/control/SpinnerValueFactory$DoubleSpinnerValueFactory;->setMin(D)V

    .line 687
    move-object v9, v0

    move-wide v10, v3

    invoke-virtual {v9, v10, v11}, Ljavafx/scene/control/SpinnerValueFactory$DoubleSpinnerValueFactory;->setMax(D)V

    .line 688
    move-object v9, v0

    move-wide v10, v7

    invoke-virtual {v9, v10, v11}, Ljavafx/scene/control/SpinnerValueFactory$DoubleSpinnerValueFactory;->setAmountToStepBy(D)V

    .line 689
    move-object v9, v0

    new-instance v10, Ljavafx/scene/control/SpinnerValueFactory$DoubleSpinnerValueFactory$1;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    move-object v12, v0

    invoke-direct {v11, v12}, Ljavafx/scene/control/SpinnerValueFactory$DoubleSpinnerValueFactory$1;-><init>(Ljavafx/scene/control/SpinnerValueFactory$DoubleSpinnerValueFactory;)V

    invoke-virtual {v9, v10}, Ljavafx/scene/control/SpinnerValueFactory$DoubleSpinnerValueFactory;->setConverter(Ljavafx/util/StringConverter;)V

    .line 722
    move-object v9, v0

    invoke-virtual {v9}, Ljavafx/scene/control/SpinnerValueFactory$DoubleSpinnerValueFactory;->valueProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v9

    move-object v10, v0

    invoke-static {v10}, Ljavafx/scene/control/SpinnerValueFactory$DoubleSpinnerValueFactory$$Lambda$1;->lambdaFactory$(Ljavafx/scene/control/SpinnerValueFactory$DoubleSpinnerValueFactory;)Ljavafx/beans/value/ChangeListener;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljavafx/beans/property/ObjectProperty;->addListener(Ljavafx/beans/value/ChangeListener;)V

    .line 731
    move-object v9, v0

    move-wide v10, v5

    move-wide v12, v1

    cmpl-double v10, v10, v12

    if-ltz v10, :cond_0

    move-wide v10, v5

    move-wide v12, v3

    cmpg-double v10, v10, v12

    if-gtz v10, :cond_0

    move-wide v10, v5

    :goto_0
    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljavafx/scene/control/SpinnerValueFactory$DoubleSpinnerValueFactory;->setValue(Ljava/lang/Object;)V

    .line 732
    return-void

    .line 731
    :cond_0
    move-wide v10, v1

    goto :goto_0
.end method

.method static synthetic access$lambda$0(Ljavafx/scene/control/SpinnerValueFactory$DoubleSpinnerValueFactory;Ljavafx/beans/value/ObservableValue;Ljava/lang/Double;Ljava/lang/Double;)V
    .locals 8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-direct {v4, v5, v6, v7}, Ljavafx/scene/control/SpinnerValueFactory$DoubleSpinnerValueFactory;->lambda$new$216(Ljavafx/beans/value/ObservableValue;Ljava/lang/Double;Ljava/lang/Double;)V

    return-void
.end method

.method private synthetic lambda$new$216(Ljavafx/beans/value/ObservableValue;Ljava/lang/Double;Ljava/lang/Double;)V
    .locals 8

    .prologue
    .line 725
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/SpinnerValueFactory$DoubleSpinnerValueFactory;
    move-object v1, p1

    .local v1, "o":Ljavafx/beans/value/ObservableValue;
    move-object v2, p2

    .local v2, "oldValue":Ljava/lang/Double;
    move-object v3, p3

    .local v3, "newValue":Ljava/lang/Double;
    move-object v4, v3

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/scene/control/SpinnerValueFactory$DoubleSpinnerValueFactory;->getMin()D

    move-result-wide v6

    cmpg-double v4, v4, v6

    if-gez v4, :cond_1

    .line 726
    move-object v4, v0

    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/control/SpinnerValueFactory$DoubleSpinnerValueFactory;->getMin()D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljavafx/scene/control/SpinnerValueFactory$DoubleSpinnerValueFactory;->setValue(Ljava/lang/Object;)V

    .line 730
    :cond_0
    :goto_0
    return-void

    .line 727
    :cond_1
    move-object v4, v3

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/scene/control/SpinnerValueFactory$DoubleSpinnerValueFactory;->getMax()D

    move-result-wide v6

    cmpl-double v4, v4, v6

    if-lez v4, :cond_0

    .line 728
    move-object v4, v0

    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/control/SpinnerValueFactory$DoubleSpinnerValueFactory;->getMax()D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljavafx/scene/control/SpinnerValueFactory$DoubleSpinnerValueFactory;->setValue(Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public final amountToStepByProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 2

    .prologue
    .line 820
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/SpinnerValueFactory$DoubleSpinnerValueFactory;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/SpinnerValueFactory$DoubleSpinnerValueFactory;->amountToStepBy:Ljavafx/beans/property/DoubleProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/SpinnerValueFactory$DoubleSpinnerValueFactory;
    return-object v0
.end method

.method public decrement(I)V
    .locals 12

    .prologue
    .line 827
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/control/SpinnerValueFactory$DoubleSpinnerValueFactory;
    move v2, p1

    .local v2, "steps":I
    move-object v8, v1

    invoke-virtual {v8}, Ljavafx/scene/control/SpinnerValueFactory$DoubleSpinnerValueFactory;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Double;

    invoke-virtual {v8}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v8

    move-object v3, v8

    .line 828
    .local v3, "currentValue":Ljava/math/BigDecimal;
    move-object v8, v1

    invoke-virtual {v8}, Ljavafx/scene/control/SpinnerValueFactory$DoubleSpinnerValueFactory;->getMin()D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v8

    move-object v4, v8

    .line 829
    .local v4, "minBigDecimal":Ljava/math/BigDecimal;
    move-object v8, v1

    invoke-virtual {v8}, Ljavafx/scene/control/SpinnerValueFactory$DoubleSpinnerValueFactory;->getMax()D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v8

    move-object v5, v8

    .line 830
    .local v5, "maxBigDecimal":Ljava/math/BigDecimal;
    move-object v8, v1

    invoke-virtual {v8}, Ljavafx/scene/control/SpinnerValueFactory$DoubleSpinnerValueFactory;->getAmountToStepBy()D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v8

    move-object v6, v8

    .line 831
    .local v6, "amountToStepByBigDecimal":Ljava/math/BigDecimal;
    move-object v8, v3

    move-object v9, v6

    move v10, v2

    int-to-long v10, v10

    invoke-static {v10, v11}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v8

    move-object v7, v8

    .line 832
    .local v7, "newValue":Ljava/math/BigDecimal;
    move-object v8, v1

    move-object v9, v7

    move-object v10, v4

    invoke-virtual {v9, v10}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v9

    if-ltz v9, :cond_0

    move-object v9, v7

    invoke-virtual {v9}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v9

    :goto_0
    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljavafx/scene/control/SpinnerValueFactory$DoubleSpinnerValueFactory;->setValue(Ljava/lang/Object;)V

    .line 834
    return-void

    .line 832
    :cond_0
    move-object v9, v1

    .line 833
    invoke-virtual {v9}, Ljavafx/scene/control/SpinnerValueFactory$DoubleSpinnerValueFactory;->isWrapAround()Z

    move-result v9

    if-eqz v9, :cond_1

    move-object v9, v7

    move-object v10, v4

    move-object v11, v5

    invoke-static {v9, v10, v11}, Ljavafx/scene/control/Spinner;->wrapValue(Ljava/math/BigDecimal;Ljava/math/BigDecimal;Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v9

    invoke-virtual {v9}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v9

    goto :goto_0

    :cond_1
    move-object v9, v1

    invoke-virtual {v9}, Ljavafx/scene/control/SpinnerValueFactory$DoubleSpinnerValueFactory;->getMin()D

    move-result-wide v9

    goto :goto_0
.end method

.method public final getAmountToStepBy()D
    .locals 3

    .prologue
    .line 814
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/SpinnerValueFactory$DoubleSpinnerValueFactory;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/SpinnerValueFactory$DoubleSpinnerValueFactory;->amountToStepBy:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v1

    move-wide v0, v1

    .end local v0    # "this":Ljavafx/scene/control/SpinnerValueFactory$DoubleSpinnerValueFactory;
    return-wide v0
.end method

.method public final getMax()D
    .locals 3

    .prologue
    .line 799
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/SpinnerValueFactory$DoubleSpinnerValueFactory;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/SpinnerValueFactory$DoubleSpinnerValueFactory;->max:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v1

    move-wide v0, v1

    .end local v0    # "this":Ljavafx/scene/control/SpinnerValueFactory$DoubleSpinnerValueFactory;
    return-wide v0
.end method

.method public final getMin()D
    .locals 3

    .prologue
    .line 766
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/SpinnerValueFactory$DoubleSpinnerValueFactory;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/SpinnerValueFactory$DoubleSpinnerValueFactory;->min:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v1

    move-wide v0, v1

    .end local v0    # "this":Ljavafx/scene/control/SpinnerValueFactory$DoubleSpinnerValueFactory;
    return-wide v0
.end method

.method public increment(I)V
    .locals 12

    .prologue
    .line 838
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/control/SpinnerValueFactory$DoubleSpinnerValueFactory;
    move v2, p1

    .local v2, "steps":I
    move-object v8, v1

    invoke-virtual {v8}, Ljavafx/scene/control/SpinnerValueFactory$DoubleSpinnerValueFactory;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Double;

    invoke-virtual {v8}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v8

    move-object v3, v8

    .line 839
    .local v3, "currentValue":Ljava/math/BigDecimal;
    move-object v8, v1

    invoke-virtual {v8}, Ljavafx/scene/control/SpinnerValueFactory$DoubleSpinnerValueFactory;->getMin()D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v8

    move-object v4, v8

    .line 840
    .local v4, "minBigDecimal":Ljava/math/BigDecimal;
    move-object v8, v1

    invoke-virtual {v8}, Ljavafx/scene/control/SpinnerValueFactory$DoubleSpinnerValueFactory;->getMax()D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v8

    move-object v5, v8

    .line 841
    .local v5, "maxBigDecimal":Ljava/math/BigDecimal;
    move-object v8, v1

    invoke-virtual {v8}, Ljavafx/scene/control/SpinnerValueFactory$DoubleSpinnerValueFactory;->getAmountToStepBy()D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v8

    move-object v6, v8

    .line 842
    .local v6, "amountToStepByBigDecimal":Ljava/math/BigDecimal;
    move-object v8, v3

    move-object v9, v6

    move v10, v2

    int-to-long v10, v10

    invoke-static {v10, v11}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v8

    move-object v7, v8

    .line 843
    .local v7, "newValue":Ljava/math/BigDecimal;
    move-object v8, v1

    move-object v9, v7

    move-object v10, v5

    invoke-virtual {v9, v10}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v9

    if-gtz v9, :cond_0

    move-object v9, v7

    invoke-virtual {v9}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v9

    :goto_0
    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljavafx/scene/control/SpinnerValueFactory$DoubleSpinnerValueFactory;->setValue(Ljava/lang/Object;)V

    .line 845
    return-void

    .line 843
    :cond_0
    move-object v9, v1

    .line 844
    invoke-virtual {v9}, Ljavafx/scene/control/SpinnerValueFactory$DoubleSpinnerValueFactory;->isWrapAround()Z

    move-result v9

    if-eqz v9, :cond_1

    move-object v9, v7

    move-object v10, v4

    move-object v11, v5

    invoke-static {v9, v10, v11}, Ljavafx/scene/control/Spinner;->wrapValue(Ljava/math/BigDecimal;Ljava/math/BigDecimal;Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v9

    invoke-virtual {v9}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v9

    goto :goto_0

    :cond_1
    move-object v9, v1

    invoke-virtual {v9}, Ljavafx/scene/control/SpinnerValueFactory$DoubleSpinnerValueFactory;->getMax()D

    move-result-wide v9

    goto :goto_0
.end method

.method public final maxProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 2

    .prologue
    .line 805
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/SpinnerValueFactory$DoubleSpinnerValueFactory;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/SpinnerValueFactory$DoubleSpinnerValueFactory;->max:Ljavafx/beans/property/DoubleProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/SpinnerValueFactory$DoubleSpinnerValueFactory;
    return-object v0
.end method

.method public final minProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 2

    .prologue
    .line 772
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/SpinnerValueFactory$DoubleSpinnerValueFactory;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/SpinnerValueFactory$DoubleSpinnerValueFactory;->min:Ljavafx/beans/property/DoubleProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/SpinnerValueFactory$DoubleSpinnerValueFactory;
    return-object v0
.end method

.method public final setAmountToStepBy(D)V
    .locals 7

    .prologue
    .line 811
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/SpinnerValueFactory$DoubleSpinnerValueFactory;
    move-wide v1, p1

    .local v1, "value":D
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/control/SpinnerValueFactory$DoubleSpinnerValueFactory;->amountToStepBy:Ljavafx/beans/property/DoubleProperty;

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    .line 812
    return-void
.end method

.method public final setMax(D)V
    .locals 7

    .prologue
    .line 796
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/SpinnerValueFactory$DoubleSpinnerValueFactory;
    move-wide v1, p1

    .local v1, "value":D
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/control/SpinnerValueFactory$DoubleSpinnerValueFactory;->max:Ljavafx/beans/property/DoubleProperty;

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    .line 797
    return-void
.end method

.method public final setMin(D)V
    .locals 7

    .prologue
    .line 763
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/SpinnerValueFactory$DoubleSpinnerValueFactory;
    move-wide v1, p1

    .local v1, "value":D
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/control/SpinnerValueFactory$DoubleSpinnerValueFactory;->min:Ljavafx/beans/property/DoubleProperty;

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    .line 764
    return-void
.end method
