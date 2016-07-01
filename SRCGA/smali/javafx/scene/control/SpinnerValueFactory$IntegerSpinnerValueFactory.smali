.class public Ljavafx/scene/control/SpinnerValueFactory$IntegerSpinnerValueFactory;
.super Ljavafx/scene/control/SpinnerValueFactory;
.source "SpinnerValueFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/control/SpinnerValueFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IntegerSpinnerValueFactory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljavafx/scene/control/SpinnerValueFactory",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private amountToStepBy:Ljavafx/beans/property/IntegerProperty;

.field private max:Ljavafx/beans/property/IntegerProperty;

.field private min:Ljavafx/beans/property/IntegerProperty;


# direct methods
.method public constructor <init>(II)V
    .locals 7
    .param p1    # I
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "min"
        .end annotation
    .end param
    .param p2    # I
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "max"
        .end annotation
    .end param

    .prologue
    .line 427
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/SpinnerValueFactory$IntegerSpinnerValueFactory;
    move v1, p1

    .local v1, "min":I
    move v2, p2

    .local v2, "max":I
    move-object v3, v0

    move v4, v1

    move v5, v2

    move v6, v1

    invoke-direct {v3, v4, v5, v6}, Ljavafx/scene/control/SpinnerValueFactory$IntegerSpinnerValueFactory;-><init>(III)V

    .line 428
    return-void
.end method

.method public constructor <init>(III)V
    .locals 9
    .param p1    # I
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "min"
        .end annotation
    .end param
    .param p2    # I
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "max"
        .end annotation
    .end param
    .param p3    # I
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "initialValue"
        .end annotation
    .end param

    .prologue
    .line 443
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/SpinnerValueFactory$IntegerSpinnerValueFactory;
    move v1, p1

    .local v1, "min":I
    move v2, p2

    .local v2, "max":I
    move v3, p3

    .local v3, "initialValue":I
    move-object v4, v0

    move v5, v1

    move v6, v2

    move v7, v3

    const/4 v8, 0x1

    invoke-direct {v4, v5, v6, v7, v8}, Ljavafx/scene/control/SpinnerValueFactory$IntegerSpinnerValueFactory;-><init>(IIII)V

    .line 444
    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 12
    .param p1    # I
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "min"
        .end annotation
    .end param
    .param p2    # I
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "max"
        .end annotation
    .end param
    .param p3    # I
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "initialValue"
        .end annotation
    .end param
    .param p4    # I
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "amountToStepBy"
        .end annotation
    .end param

    .prologue
    .line 459
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/SpinnerValueFactory$IntegerSpinnerValueFactory;
    move v1, p1

    .local v1, "min":I
    move v2, p2

    .local v2, "max":I
    move v3, p3

    .local v3, "initialValue":I
    move/from16 v4, p4

    .local v4, "amountToStepBy":I
    move-object v5, v0

    invoke-direct {v5}, Ljavafx/scene/control/SpinnerValueFactory;-><init>()V

    .line 485
    move-object v5, v0

    new-instance v6, Ljavafx/scene/control/SpinnerValueFactory$IntegerSpinnerValueFactory$1;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    move-object v8, v0

    move-object v9, v0

    const-string v10, "min"

    invoke-direct {v7, v8, v9, v10}, Ljavafx/scene/control/SpinnerValueFactory$IntegerSpinnerValueFactory$1;-><init>(Ljavafx/scene/control/SpinnerValueFactory$IntegerSpinnerValueFactory;Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v6, v5, Ljavafx/scene/control/SpinnerValueFactory$IntegerSpinnerValueFactory;->min:Ljavafx/beans/property/IntegerProperty;

    .line 518
    move-object v5, v0

    new-instance v6, Ljavafx/scene/control/SpinnerValueFactory$IntegerSpinnerValueFactory$2;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    move-object v8, v0

    move-object v9, v0

    const-string v10, "max"

    invoke-direct {v7, v8, v9, v10}, Ljavafx/scene/control/SpinnerValueFactory$IntegerSpinnerValueFactory$2;-><init>(Ljavafx/scene/control/SpinnerValueFactory$IntegerSpinnerValueFactory;Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v6, v5, Ljavafx/scene/control/SpinnerValueFactory$IntegerSpinnerValueFactory;->max:Ljavafx/beans/property/IntegerProperty;

    .line 551
    move-object v5, v0

    new-instance v6, Ljavafx/beans/property/SimpleIntegerProperty;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    move-object v8, v0

    const-string v9, "amountToStepBy"

    invoke-direct {v7, v8, v9}, Ljavafx/beans/property/SimpleIntegerProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v6, v5, Ljavafx/scene/control/SpinnerValueFactory$IntegerSpinnerValueFactory;->amountToStepBy:Ljavafx/beans/property/IntegerProperty;

    .line 460
    move-object v5, v0

    move v6, v1

    invoke-virtual {v5, v6}, Ljavafx/scene/control/SpinnerValueFactory$IntegerSpinnerValueFactory;->setMin(I)V

    .line 461
    move-object v5, v0

    move v6, v2

    invoke-virtual {v5, v6}, Ljavafx/scene/control/SpinnerValueFactory$IntegerSpinnerValueFactory;->setMax(I)V

    .line 462
    move-object v5, v0

    move v6, v4

    invoke-virtual {v5, v6}, Ljavafx/scene/control/SpinnerValueFactory$IntegerSpinnerValueFactory;->setAmountToStepBy(I)V

    .line 463
    move-object v5, v0

    new-instance v6, Ljavafx/util/converter/IntegerStringConverter;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    invoke-direct {v7}, Ljavafx/util/converter/IntegerStringConverter;-><init>()V

    invoke-virtual {v5, v6}, Ljavafx/scene/control/SpinnerValueFactory$IntegerSpinnerValueFactory;->setConverter(Ljavafx/util/StringConverter;)V

    .line 465
    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/control/SpinnerValueFactory$IntegerSpinnerValueFactory;->valueProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v5

    move-object v6, v0

    invoke-static {v6}, Ljavafx/scene/control/SpinnerValueFactory$IntegerSpinnerValueFactory$$Lambda$1;->lambdaFactory$(Ljavafx/scene/control/SpinnerValueFactory$IntegerSpinnerValueFactory;)Ljavafx/beans/value/ChangeListener;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljavafx/beans/property/ObjectProperty;->addListener(Ljavafx/beans/value/ChangeListener;)V

    .line 474
    move-object v5, v0

    move v6, v3

    move v7, v1

    if-lt v6, v7, :cond_0

    move v6, v3

    move v7, v2

    if-gt v6, v7, :cond_0

    move v6, v3

    :goto_0
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljavafx/scene/control/SpinnerValueFactory$IntegerSpinnerValueFactory;->setValue(Ljava/lang/Object;)V

    .line 475
    return-void

    .line 474
    :cond_0
    move v6, v1

    goto :goto_0
.end method

.method static synthetic access$lambda$0(Ljavafx/scene/control/SpinnerValueFactory$IntegerSpinnerValueFactory;Ljavafx/beans/value/ObservableValue;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-direct {v4, v5, v6, v7}, Ljavafx/scene/control/SpinnerValueFactory$IntegerSpinnerValueFactory;->lambda$new$215(Ljavafx/beans/value/ObservableValue;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-void
.end method

.method private synthetic lambda$new$215(Ljavafx/beans/value/ObservableValue;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 6

    .prologue
    .line 468
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/SpinnerValueFactory$IntegerSpinnerValueFactory;
    move-object v1, p1

    .local v1, "o":Ljavafx/beans/value/ObservableValue;
    move-object v2, p2

    .local v2, "oldValue":Ljava/lang/Integer;
    move-object v3, p3

    .local v3, "newValue":Ljava/lang/Integer;
    move-object v4, v3

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/control/SpinnerValueFactory$IntegerSpinnerValueFactory;->getMin()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 469
    move-object v4, v0

    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/control/SpinnerValueFactory$IntegerSpinnerValueFactory;->getMin()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljavafx/scene/control/SpinnerValueFactory$IntegerSpinnerValueFactory;->setValue(Ljava/lang/Object;)V

    .line 473
    :cond_0
    :goto_0
    return-void

    .line 470
    :cond_1
    move-object v4, v3

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/control/SpinnerValueFactory$IntegerSpinnerValueFactory;->getMax()I

    move-result v5

    if-le v4, v5, :cond_0

    .line 471
    move-object v4, v0

    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/control/SpinnerValueFactory$IntegerSpinnerValueFactory;->getMax()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljavafx/scene/control/SpinnerValueFactory$IntegerSpinnerValueFactory;->setValue(Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public final amountToStepByProperty()Ljavafx/beans/property/IntegerProperty;
    .locals 2

    .prologue
    .line 562
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/SpinnerValueFactory$IntegerSpinnerValueFactory;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/SpinnerValueFactory$IntegerSpinnerValueFactory;->amountToStepBy:Ljavafx/beans/property/IntegerProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/SpinnerValueFactory$IntegerSpinnerValueFactory;
    return-object v0
.end method

.method public decrement(I)V
    .locals 9

    .prologue
    .line 575
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/SpinnerValueFactory$IntegerSpinnerValueFactory;
    move v1, p1

    .local v1, "steps":I
    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/control/SpinnerValueFactory$IntegerSpinnerValueFactory;->getMin()I

    move-result v5

    move v2, v5

    .line 576
    .local v2, "min":I
    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/control/SpinnerValueFactory$IntegerSpinnerValueFactory;->getMax()I

    move-result v5

    move v3, v5

    .line 577
    .local v3, "max":I
    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/control/SpinnerValueFactory$IntegerSpinnerValueFactory;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    move v6, v1

    move-object v7, v0

    invoke-virtual {v7}, Ljavafx/scene/control/SpinnerValueFactory$IntegerSpinnerValueFactory;->getAmountToStepBy()I

    move-result v7

    mul-int/2addr v6, v7

    sub-int/2addr v5, v6

    move v4, v5

    .line 578
    .local v4, "newIndex":I
    move-object v5, v0

    move v6, v4

    move v7, v2

    if-lt v6, v7, :cond_0

    move v6, v4

    :goto_0
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljavafx/scene/control/SpinnerValueFactory$IntegerSpinnerValueFactory;->setValue(Ljava/lang/Object;)V

    .line 579
    return-void

    .line 578
    :cond_0
    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/scene/control/SpinnerValueFactory$IntegerSpinnerValueFactory;->isWrapAround()Z

    move-result v6

    if-eqz v6, :cond_1

    move v6, v4

    move v7, v2

    move v8, v3

    invoke-static {v6, v7, v8}, Ljavafx/scene/control/Spinner;->wrapValue(III)I

    move-result v6

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    move v6, v2

    goto :goto_0
.end method

.method public final getAmountToStepBy()I
    .locals 2

    .prologue
    .line 556
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/SpinnerValueFactory$IntegerSpinnerValueFactory;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/SpinnerValueFactory$IntegerSpinnerValueFactory;->amountToStepBy:Ljavafx/beans/property/IntegerProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/IntegerProperty;->get()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Ljavafx/scene/control/SpinnerValueFactory$IntegerSpinnerValueFactory;
    return v0
.end method

.method public final getMax()I
    .locals 2

    .prologue
    .line 541
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/SpinnerValueFactory$IntegerSpinnerValueFactory;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/SpinnerValueFactory$IntegerSpinnerValueFactory;->max:Ljavafx/beans/property/IntegerProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/IntegerProperty;->get()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Ljavafx/scene/control/SpinnerValueFactory$IntegerSpinnerValueFactory;
    return v0
.end method

.method public final getMin()I
    .locals 2

    .prologue
    .line 508
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/SpinnerValueFactory$IntegerSpinnerValueFactory;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/SpinnerValueFactory$IntegerSpinnerValueFactory;->min:Ljavafx/beans/property/IntegerProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/IntegerProperty;->get()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Ljavafx/scene/control/SpinnerValueFactory$IntegerSpinnerValueFactory;
    return v0
.end method

.method public increment(I)V
    .locals 10

    .prologue
    .line 583
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/SpinnerValueFactory$IntegerSpinnerValueFactory;
    move v1, p1

    .local v1, "steps":I
    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/scene/control/SpinnerValueFactory$IntegerSpinnerValueFactory;->getMin()I

    move-result v6

    move v2, v6

    .line 584
    .local v2, "min":I
    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/scene/control/SpinnerValueFactory$IntegerSpinnerValueFactory;->getMax()I

    move-result v6

    move v3, v6

    .line 585
    .local v3, "max":I
    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/scene/control/SpinnerValueFactory$IntegerSpinnerValueFactory;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    move v4, v6

    .line 586
    .local v4, "currentValue":I
    move v6, v4

    move v7, v1

    move-object v8, v0

    invoke-virtual {v8}, Ljavafx/scene/control/SpinnerValueFactory$IntegerSpinnerValueFactory;->getAmountToStepBy()I

    move-result v8

    mul-int/2addr v7, v8

    add-int/2addr v6, v7

    move v5, v6

    .line 587
    .local v5, "newIndex":I
    move-object v6, v0

    move v7, v5

    move v8, v3

    if-gt v7, v8, :cond_0

    move v7, v5

    :goto_0
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljavafx/scene/control/SpinnerValueFactory$IntegerSpinnerValueFactory;->setValue(Ljava/lang/Object;)V

    .line 588
    return-void

    .line 587
    :cond_0
    move-object v7, v0

    invoke-virtual {v7}, Ljavafx/scene/control/SpinnerValueFactory$IntegerSpinnerValueFactory;->isWrapAround()Z

    move-result v7

    if-eqz v7, :cond_1

    move v7, v5

    move v8, v2

    move v9, v3

    invoke-static {v7, v8, v9}, Ljavafx/scene/control/Spinner;->wrapValue(III)I

    move-result v7

    const/4 v8, 0x1

    add-int/lit8 v7, v7, -0x1

    goto :goto_0

    :cond_1
    move v7, v3

    goto :goto_0
.end method

.method public final maxProperty()Ljavafx/beans/property/IntegerProperty;
    .locals 2

    .prologue
    .line 547
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/SpinnerValueFactory$IntegerSpinnerValueFactory;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/SpinnerValueFactory$IntegerSpinnerValueFactory;->max:Ljavafx/beans/property/IntegerProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/SpinnerValueFactory$IntegerSpinnerValueFactory;
    return-object v0
.end method

.method public final minProperty()Ljavafx/beans/property/IntegerProperty;
    .locals 2

    .prologue
    .line 514
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/SpinnerValueFactory$IntegerSpinnerValueFactory;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/SpinnerValueFactory$IntegerSpinnerValueFactory;->min:Ljavafx/beans/property/IntegerProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/SpinnerValueFactory$IntegerSpinnerValueFactory;
    return-object v0
.end method

.method public final setAmountToStepBy(I)V
    .locals 4

    .prologue
    .line 553
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/SpinnerValueFactory$IntegerSpinnerValueFactory;
    move v1, p1

    .local v1, "value":I
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/SpinnerValueFactory$IntegerSpinnerValueFactory;->amountToStepBy:Ljavafx/beans/property/IntegerProperty;

    move v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/IntegerProperty;->set(I)V

    .line 554
    return-void
.end method

.method public final setMax(I)V
    .locals 4

    .prologue
    .line 538
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/SpinnerValueFactory$IntegerSpinnerValueFactory;
    move v1, p1

    .local v1, "value":I
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/SpinnerValueFactory$IntegerSpinnerValueFactory;->max:Ljavafx/beans/property/IntegerProperty;

    move v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/IntegerProperty;->set(I)V

    .line 539
    return-void
.end method

.method public final setMin(I)V
    .locals 4

    .prologue
    .line 505
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/SpinnerValueFactory$IntegerSpinnerValueFactory;
    move v1, p1

    .local v1, "value":I
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/SpinnerValueFactory$IntegerSpinnerValueFactory;->min:Ljavafx/beans/property/IntegerProperty;

    move v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/IntegerProperty;->set(I)V

    .line 506
    return-void
.end method
