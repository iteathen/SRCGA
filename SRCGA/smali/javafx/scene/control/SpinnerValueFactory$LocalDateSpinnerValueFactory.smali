.class Ljavafx/scene/control/SpinnerValueFactory$LocalDateSpinnerValueFactory;
.super Ljavafx/scene/control/SpinnerValueFactory;
.source "SpinnerValueFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/control/SpinnerValueFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LocalDateSpinnerValueFactory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljavafx/scene/control/SpinnerValueFactory",
        "<",
        "Ljava/time/LocalDate;",
        ">;"
    }
.end annotation


# instance fields
.field private amountToStepBy:Ljavafx/beans/property/LongProperty;

.field private max:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljava/time/LocalDate;",
            ">;"
        }
    .end annotation
.end field

.field private min:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljava/time/LocalDate;",
            ">;"
        }
    .end annotation
.end field

.field private temporalUnit:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljava/time/temporal/TemporalUnit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 878
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/SpinnerValueFactory$LocalDateSpinnerValueFactory;
    move-object v1, v0

    invoke-static {}, Ljava/time/LocalDate;->now()Ljava/time/LocalDate;

    move-result-object v2

    invoke-direct {v1, v2}, Ljavafx/scene/control/SpinnerValueFactory$LocalDateSpinnerValueFactory;-><init>(Ljava/time/LocalDate;)V

    .line 879
    return-void
.end method

.method public constructor <init>(Ljava/time/LocalDate;)V
    .locals 6
    .param p1    # Ljava/time/LocalDate;
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "initialValue"
        .end annotation
    .end param

    .prologue
    .line 888
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/SpinnerValueFactory$LocalDateSpinnerValueFactory;
    move-object v1, p1

    .local v1, "initialValue":Ljava/time/LocalDate;
    move-object v2, v0

    sget-object v3, Ljava/time/LocalDate;->MIN:Ljava/time/LocalDate;

    sget-object v4, Ljava/time/LocalDate;->MAX:Ljava/time/LocalDate;

    move-object v5, v1

    invoke-direct {v2, v3, v4, v5}, Ljavafx/scene/control/SpinnerValueFactory$LocalDateSpinnerValueFactory;-><init>(Ljava/time/LocalDate;Ljava/time/LocalDate;Ljava/time/LocalDate;)V

    .line 889
    return-void
.end method

.method public constructor <init>(Ljava/time/LocalDate;Ljava/time/LocalDate;Ljava/time/LocalDate;)V
    .locals 11
    .param p1    # Ljava/time/LocalDate;
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "min"
        .end annotation
    .end param
    .param p2    # Ljava/time/LocalDate;
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "min"
        .end annotation
    .end param
    .param p3    # Ljava/time/LocalDate;
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "initialValue"
        .end annotation
    .end param

    .prologue
    .line 902
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/SpinnerValueFactory$LocalDateSpinnerValueFactory;
    move-object v1, p1

    .local v1, "min":Ljava/time/LocalDate;
    move-object v2, p2

    .local v2, "max":Ljava/time/LocalDate;
    move-object v3, p3

    .local v3, "initialValue":Ljava/time/LocalDate;
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    const-wide/16 v8, 0x1

    sget-object v10, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    invoke-direct/range {v4 .. v10}, Ljavafx/scene/control/SpinnerValueFactory$LocalDateSpinnerValueFactory;-><init>(Ljava/time/LocalDate;Ljava/time/LocalDate;Ljava/time/LocalDate;JLjava/time/temporal/TemporalUnit;)V

    .line 903
    return-void
.end method

.method public constructor <init>(Ljava/time/LocalDate;Ljava/time/LocalDate;Ljava/time/LocalDate;JLjava/time/temporal/TemporalUnit;)V
    .locals 14
    .param p1    # Ljava/time/LocalDate;
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "min"
        .end annotation
    .end param
    .param p2    # Ljava/time/LocalDate;
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "min"
        .end annotation
    .end param
    .param p3    # Ljava/time/LocalDate;
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "initialValue"
        .end annotation
    .end param
    .param p4    # J
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "amountToStepBy"
        .end annotation
    .end param
    .param p6    # Ljava/time/temporal/TemporalUnit;
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "temporalUnit"
        .end annotation
    .end param

    .prologue
    .line 928
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/SpinnerValueFactory$LocalDateSpinnerValueFactory;
    move-object v1, p1

    .local v1, "min":Ljava/time/LocalDate;
    move-object/from16 v2, p2

    .local v2, "max":Ljava/time/LocalDate;
    move-object/from16 v3, p3

    .local v3, "initialValue":Ljava/time/LocalDate;
    move-wide/from16 v4, p4

    .local v4, "amountToStepBy":J
    move-object/from16 v6, p6

    .local v6, "temporalUnit":Ljava/time/temporal/TemporalUnit;
    move-object v7, v0

    invoke-direct {v7}, Ljavafx/scene/control/SpinnerValueFactory;-><init>()V

    .line 967
    move-object v7, v0

    new-instance v8, Ljavafx/scene/control/SpinnerValueFactory$LocalDateSpinnerValueFactory$2;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    move-object v10, v0

    move-object v11, v0

    const-string v12, "min"

    invoke-direct {v9, v10, v11, v12}, Ljavafx/scene/control/SpinnerValueFactory$LocalDateSpinnerValueFactory$2;-><init>(Ljavafx/scene/control/SpinnerValueFactory$LocalDateSpinnerValueFactory;Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v8, v7, Ljavafx/scene/control/SpinnerValueFactory$LocalDateSpinnerValueFactory;->min:Ljavafx/beans/property/ObjectProperty;

    .line 1000
    move-object v7, v0

    new-instance v8, Ljavafx/scene/control/SpinnerValueFactory$LocalDateSpinnerValueFactory$3;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    move-object v10, v0

    move-object v11, v0

    const-string v12, "max"

    invoke-direct {v9, v10, v11, v12}, Ljavafx/scene/control/SpinnerValueFactory$LocalDateSpinnerValueFactory$3;-><init>(Ljavafx/scene/control/SpinnerValueFactory$LocalDateSpinnerValueFactory;Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v8, v7, Ljavafx/scene/control/SpinnerValueFactory$LocalDateSpinnerValueFactory;->max:Ljavafx/beans/property/ObjectProperty;

    .line 1033
    move-object v7, v0

    new-instance v8, Ljavafx/beans/property/SimpleObjectProperty;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    move-object v10, v0

    const-string v11, "temporalUnit"

    invoke-direct {v9, v10, v11}, Ljavafx/beans/property/SimpleObjectProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v8, v7, Ljavafx/scene/control/SpinnerValueFactory$LocalDateSpinnerValueFactory;->temporalUnit:Ljavafx/beans/property/ObjectProperty;

    .line 1048
    move-object v7, v0

    new-instance v8, Ljavafx/beans/property/SimpleLongProperty;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    move-object v10, v0

    const-string v11, "amountToStepBy"

    invoke-direct {v9, v10, v11}, Ljavafx/beans/property/SimpleLongProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v8, v7, Ljavafx/scene/control/SpinnerValueFactory$LocalDateSpinnerValueFactory;->amountToStepBy:Ljavafx/beans/property/LongProperty;

    .line 929
    move-object v7, v0

    move-object v8, v1

    invoke-virtual {v7, v8}, Ljavafx/scene/control/SpinnerValueFactory$LocalDateSpinnerValueFactory;->setMin(Ljava/time/LocalDate;)V

    .line 930
    move-object v7, v0

    move-object v8, v2

    invoke-virtual {v7, v8}, Ljavafx/scene/control/SpinnerValueFactory$LocalDateSpinnerValueFactory;->setMax(Ljava/time/LocalDate;)V

    .line 931
    move-object v7, v0

    move-wide v8, v4

    invoke-virtual {v7, v8, v9}, Ljavafx/scene/control/SpinnerValueFactory$LocalDateSpinnerValueFactory;->setAmountToStepBy(J)V

    .line 932
    move-object v7, v0

    move-object v8, v6

    invoke-virtual {v7, v8}, Ljavafx/scene/control/SpinnerValueFactory$LocalDateSpinnerValueFactory;->setTemporalUnit(Ljava/time/temporal/TemporalUnit;)V

    .line 933
    move-object v7, v0

    new-instance v8, Ljavafx/scene/control/SpinnerValueFactory$LocalDateSpinnerValueFactory$1;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    move-object v10, v0

    invoke-direct {v9, v10}, Ljavafx/scene/control/SpinnerValueFactory$LocalDateSpinnerValueFactory$1;-><init>(Ljavafx/scene/control/SpinnerValueFactory$LocalDateSpinnerValueFactory;)V

    invoke-virtual {v7, v8}, Ljavafx/scene/control/SpinnerValueFactory$LocalDateSpinnerValueFactory;->setConverter(Ljavafx/util/StringConverter;)V

    .line 946
    move-object v7, v0

    invoke-virtual {v7}, Ljavafx/scene/control/SpinnerValueFactory$LocalDateSpinnerValueFactory;->valueProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v7

    move-object v8, v0

    invoke-static {v8}, Ljavafx/scene/control/SpinnerValueFactory$LocalDateSpinnerValueFactory$$Lambda$1;->lambdaFactory$(Ljavafx/scene/control/SpinnerValueFactory$LocalDateSpinnerValueFactory;)Ljavafx/beans/value/ChangeListener;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljavafx/beans/property/ObjectProperty;->addListener(Ljavafx/beans/value/ChangeListener;)V

    .line 955
    move-object v7, v0

    move-object v8, v3

    if-eqz v8, :cond_0

    move-object v8, v3

    :goto_0
    invoke-virtual {v7, v8}, Ljavafx/scene/control/SpinnerValueFactory$LocalDateSpinnerValueFactory;->setValue(Ljava/lang/Object;)V

    .line 956
    return-void

    .line 955
    :cond_0
    invoke-static {}, Ljava/time/LocalDate;->now()Ljava/time/LocalDate;

    move-result-object v8

    goto :goto_0
.end method

.method static synthetic access$lambda$0(Ljavafx/scene/control/SpinnerValueFactory$LocalDateSpinnerValueFactory;Ljavafx/beans/value/ObservableValue;Ljava/time/LocalDate;Ljava/time/LocalDate;)V
    .locals 8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-direct {v4, v5, v6, v7}, Ljavafx/scene/control/SpinnerValueFactory$LocalDateSpinnerValueFactory;->lambda$new$217(Ljavafx/beans/value/ObservableValue;Ljava/time/LocalDate;Ljava/time/LocalDate;)V

    return-void
.end method

.method private synthetic lambda$new$217(Ljavafx/beans/value/ObservableValue;Ljava/time/LocalDate;Ljava/time/LocalDate;)V
    .locals 6

    .prologue
    .line 949
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/SpinnerValueFactory$LocalDateSpinnerValueFactory;
    move-object v1, p1

    .local v1, "o":Ljavafx/beans/value/ObservableValue;
    move-object v2, p2

    .local v2, "oldValue":Ljava/time/LocalDate;
    move-object v3, p3

    .local v3, "newValue":Ljava/time/LocalDate;
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/control/SpinnerValueFactory$LocalDateSpinnerValueFactory;->getMin()Ljava/time/LocalDate;

    move-result-object v4

    if-eqz v4, :cond_1

    move-object v4, v3

    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/control/SpinnerValueFactory$LocalDateSpinnerValueFactory;->getMin()Ljava/time/LocalDate;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/time/LocalDate;->isBefore(Ljava/time/chrono/ChronoLocalDate;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 950
    move-object v4, v0

    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/control/SpinnerValueFactory$LocalDateSpinnerValueFactory;->getMin()Ljava/time/LocalDate;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljavafx/scene/control/SpinnerValueFactory$LocalDateSpinnerValueFactory;->setValue(Ljava/lang/Object;)V

    .line 954
    :cond_0
    :goto_0
    return-void

    .line 951
    :cond_1
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/control/SpinnerValueFactory$LocalDateSpinnerValueFactory;->getMax()Ljava/time/LocalDate;

    move-result-object v4

    if-eqz v4, :cond_0

    move-object v4, v3

    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/control/SpinnerValueFactory$LocalDateSpinnerValueFactory;->getMax()Ljava/time/LocalDate;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/time/LocalDate;->isAfter(Ljava/time/chrono/ChronoLocalDate;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 952
    move-object v4, v0

    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/control/SpinnerValueFactory$LocalDateSpinnerValueFactory;->getMax()Ljava/time/LocalDate;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljavafx/scene/control/SpinnerValueFactory$LocalDateSpinnerValueFactory;->setValue(Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public final amountToStepByProperty()Ljavafx/beans/property/LongProperty;
    .locals 2

    .prologue
    .line 1059
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/SpinnerValueFactory$LocalDateSpinnerValueFactory;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/SpinnerValueFactory$LocalDateSpinnerValueFactory;->amountToStepBy:Ljavafx/beans/property/LongProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/SpinnerValueFactory$LocalDateSpinnerValueFactory;
    return-object v0
.end method

.method public decrement(I)V
    .locals 10

    .prologue
    .line 1072
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/SpinnerValueFactory$LocalDateSpinnerValueFactory;
    move v1, p1

    .local v1, "steps":I
    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/control/SpinnerValueFactory$LocalDateSpinnerValueFactory;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/time/LocalDate;

    move-object v2, v5

    .line 1073
    .local v2, "currentValue":Ljava/time/LocalDate;
    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/control/SpinnerValueFactory$LocalDateSpinnerValueFactory;->getMin()Ljava/time/LocalDate;

    move-result-object v5

    move-object v3, v5

    .line 1074
    .local v3, "min":Ljava/time/LocalDate;
    move-object v5, v2

    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/scene/control/SpinnerValueFactory$LocalDateSpinnerValueFactory;->getAmountToStepBy()J

    move-result-wide v6

    move v8, v1

    int-to-long v8, v8

    mul-long/2addr v6, v8

    move-object v8, v0

    invoke-virtual {v8}, Ljavafx/scene/control/SpinnerValueFactory$LocalDateSpinnerValueFactory;->getTemporalUnit()Ljava/time/temporal/TemporalUnit;

    move-result-object v8

    invoke-virtual {v5, v6, v7, v8}, Ljava/time/LocalDate;->minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/LocalDate;

    move-result-object v5

    move-object v4, v5

    .line 1076
    .local v4, "newValue":Ljava/time/LocalDate;
    move-object v5, v3

    if-eqz v5, :cond_0

    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/control/SpinnerValueFactory$LocalDateSpinnerValueFactory;->isWrapAround()Z

    move-result v5

    if-eqz v5, :cond_0

    move-object v5, v4

    move-object v6, v3

    invoke-virtual {v5, v6}, Ljava/time/LocalDate;->isBefore(Ljava/time/chrono/ChronoLocalDate;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1078
    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/control/SpinnerValueFactory$LocalDateSpinnerValueFactory;->getMax()Ljava/time/LocalDate;

    move-result-object v5

    move-object v4, v5

    .line 1081
    :cond_0
    move-object v5, v0

    move-object v6, v4

    invoke-virtual {v5, v6}, Ljavafx/scene/control/SpinnerValueFactory$LocalDateSpinnerValueFactory;->setValue(Ljava/lang/Object;)V

    .line 1082
    return-void
.end method

.method public final getAmountToStepBy()J
    .locals 3

    .prologue
    .line 1053
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/SpinnerValueFactory$LocalDateSpinnerValueFactory;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/SpinnerValueFactory$LocalDateSpinnerValueFactory;->amountToStepBy:Ljavafx/beans/property/LongProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/LongProperty;->get()J

    move-result-wide v1

    move-wide v0, v1

    .end local v0    # "this":Ljavafx/scene/control/SpinnerValueFactory$LocalDateSpinnerValueFactory;
    return-wide v0
.end method

.method public final getMax()Ljava/time/LocalDate;
    .locals 2

    .prologue
    .line 1023
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/SpinnerValueFactory$LocalDateSpinnerValueFactory;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/SpinnerValueFactory$LocalDateSpinnerValueFactory;->max:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/time/LocalDate;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/SpinnerValueFactory$LocalDateSpinnerValueFactory;
    return-object v0
.end method

.method public final getMin()Ljava/time/LocalDate;
    .locals 2

    .prologue
    .line 990
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/SpinnerValueFactory$LocalDateSpinnerValueFactory;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/SpinnerValueFactory$LocalDateSpinnerValueFactory;->min:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/time/LocalDate;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/SpinnerValueFactory$LocalDateSpinnerValueFactory;
    return-object v0
.end method

.method public final getTemporalUnit()Ljava/time/temporal/TemporalUnit;
    .locals 2

    .prologue
    .line 1038
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/SpinnerValueFactory$LocalDateSpinnerValueFactory;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/SpinnerValueFactory$LocalDateSpinnerValueFactory;->temporalUnit:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/time/temporal/TemporalUnit;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/SpinnerValueFactory$LocalDateSpinnerValueFactory;
    return-object v0
.end method

.method public increment(I)V
    .locals 10

    .prologue
    .line 1086
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/SpinnerValueFactory$LocalDateSpinnerValueFactory;
    move v1, p1

    .local v1, "steps":I
    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/control/SpinnerValueFactory$LocalDateSpinnerValueFactory;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/time/LocalDate;

    move-object v2, v5

    .line 1087
    .local v2, "currentValue":Ljava/time/LocalDate;
    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/control/SpinnerValueFactory$LocalDateSpinnerValueFactory;->getMax()Ljava/time/LocalDate;

    move-result-object v5

    move-object v3, v5

    .line 1088
    .local v3, "max":Ljava/time/LocalDate;
    move-object v5, v2

    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/scene/control/SpinnerValueFactory$LocalDateSpinnerValueFactory;->getAmountToStepBy()J

    move-result-wide v6

    move v8, v1

    int-to-long v8, v8

    mul-long/2addr v6, v8

    move-object v8, v0

    invoke-virtual {v8}, Ljavafx/scene/control/SpinnerValueFactory$LocalDateSpinnerValueFactory;->getTemporalUnit()Ljava/time/temporal/TemporalUnit;

    move-result-object v8

    invoke-virtual {v5, v6, v7, v8}, Ljava/time/LocalDate;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/LocalDate;

    move-result-object v5

    move-object v4, v5

    .line 1090
    .local v4, "newValue":Ljava/time/LocalDate;
    move-object v5, v3

    if-eqz v5, :cond_0

    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/control/SpinnerValueFactory$LocalDateSpinnerValueFactory;->isWrapAround()Z

    move-result v5

    if-eqz v5, :cond_0

    move-object v5, v4

    move-object v6, v3

    invoke-virtual {v5, v6}, Ljava/time/LocalDate;->isAfter(Ljava/time/chrono/ChronoLocalDate;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1092
    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/control/SpinnerValueFactory$LocalDateSpinnerValueFactory;->getMin()Ljava/time/LocalDate;

    move-result-object v5

    move-object v4, v5

    .line 1095
    :cond_0
    move-object v5, v0

    move-object v6, v4

    invoke-virtual {v5, v6}, Ljavafx/scene/control/SpinnerValueFactory$LocalDateSpinnerValueFactory;->setValue(Ljava/lang/Object;)V

    .line 1096
    return-void
.end method

.method public final maxProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljava/time/LocalDate;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1029
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/SpinnerValueFactory$LocalDateSpinnerValueFactory;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/SpinnerValueFactory$LocalDateSpinnerValueFactory;->max:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/SpinnerValueFactory$LocalDateSpinnerValueFactory;
    return-object v0
.end method

.method public final minProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljava/time/LocalDate;",
            ">;"
        }
    .end annotation

    .prologue
    .line 996
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/SpinnerValueFactory$LocalDateSpinnerValueFactory;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/SpinnerValueFactory$LocalDateSpinnerValueFactory;->min:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/SpinnerValueFactory$LocalDateSpinnerValueFactory;
    return-object v0
.end method

.method public final setAmountToStepBy(J)V
    .locals 7

    .prologue
    .line 1050
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/SpinnerValueFactory$LocalDateSpinnerValueFactory;
    move-wide v1, p1

    .local v1, "value":J
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/control/SpinnerValueFactory$LocalDateSpinnerValueFactory;->amountToStepBy:Ljavafx/beans/property/LongProperty;

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/beans/property/LongProperty;->set(J)V

    .line 1051
    return-void
.end method

.method public final setMax(Ljava/time/LocalDate;)V
    .locals 4

    .prologue
    .line 1020
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/SpinnerValueFactory$LocalDateSpinnerValueFactory;
    move-object v1, p1

    .local v1, "value":Ljava/time/LocalDate;
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/SpinnerValueFactory$LocalDateSpinnerValueFactory;->max:Ljavafx/beans/property/ObjectProperty;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 1021
    return-void
.end method

.method public final setMin(Ljava/time/LocalDate;)V
    .locals 4

    .prologue
    .line 987
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/SpinnerValueFactory$LocalDateSpinnerValueFactory;
    move-object v1, p1

    .local v1, "value":Ljava/time/LocalDate;
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/SpinnerValueFactory$LocalDateSpinnerValueFactory;->min:Ljavafx/beans/property/ObjectProperty;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 988
    return-void
.end method

.method public final setTemporalUnit(Ljava/time/temporal/TemporalUnit;)V
    .locals 4

    .prologue
    .line 1035
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/SpinnerValueFactory$LocalDateSpinnerValueFactory;
    move-object v1, p1

    .local v1, "value":Ljava/time/temporal/TemporalUnit;
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/SpinnerValueFactory$LocalDateSpinnerValueFactory;->temporalUnit:Ljavafx/beans/property/ObjectProperty;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 1036
    return-void
.end method

.method public final temporalUnitProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljava/time/temporal/TemporalUnit;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1044
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/SpinnerValueFactory$LocalDateSpinnerValueFactory;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/SpinnerValueFactory$LocalDateSpinnerValueFactory;->temporalUnit:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/SpinnerValueFactory$LocalDateSpinnerValueFactory;
    return-object v0
.end method
