.class Ljavafx/scene/control/SpinnerValueFactory$LocalTimeSpinnerValueFactory;
.super Ljavafx/scene/control/SpinnerValueFactory;
.source "SpinnerValueFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/control/SpinnerValueFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LocalTimeSpinnerValueFactory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljavafx/scene/control/SpinnerValueFactory",
        "<",
        "Ljava/time/LocalTime;",
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
            "Ljava/time/LocalTime;",
            ">;"
        }
    .end annotation
.end field

.field private min:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljava/time/LocalTime;",
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
    .line 1133
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/SpinnerValueFactory$LocalTimeSpinnerValueFactory;
    move-object v1, v0

    invoke-static {}, Ljava/time/LocalTime;->now()Ljava/time/LocalTime;

    move-result-object v2

    invoke-direct {v1, v2}, Ljavafx/scene/control/SpinnerValueFactory$LocalTimeSpinnerValueFactory;-><init>(Ljava/time/LocalTime;)V

    .line 1134
    return-void
.end method

.method public constructor <init>(Ljava/time/LocalTime;)V
    .locals 6
    .param p1    # Ljava/time/LocalTime;
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "initialValue"
        .end annotation
    .end param

    .prologue
    .line 1143
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/SpinnerValueFactory$LocalTimeSpinnerValueFactory;
    move-object v1, p1

    .local v1, "initialValue":Ljava/time/LocalTime;
    move-object v2, v0

    sget-object v3, Ljava/time/LocalTime;->MIN:Ljava/time/LocalTime;

    sget-object v4, Ljava/time/LocalTime;->MAX:Ljava/time/LocalTime;

    move-object v5, v1

    invoke-direct {v2, v3, v4, v5}, Ljavafx/scene/control/SpinnerValueFactory$LocalTimeSpinnerValueFactory;-><init>(Ljava/time/LocalTime;Ljava/time/LocalTime;Ljava/time/LocalTime;)V

    .line 1144
    return-void
.end method

.method public constructor <init>(Ljava/time/LocalTime;Ljava/time/LocalTime;Ljava/time/LocalTime;)V
    .locals 11
    .param p1    # Ljava/time/LocalTime;
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "min"
        .end annotation
    .end param
    .param p2    # Ljava/time/LocalTime;
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "min"
        .end annotation
    .end param
    .param p3    # Ljava/time/LocalTime;
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "initialValue"
        .end annotation
    .end param

    .prologue
    .line 1157
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/SpinnerValueFactory$LocalTimeSpinnerValueFactory;
    move-object v1, p1

    .local v1, "min":Ljava/time/LocalTime;
    move-object v2, p2

    .local v2, "max":Ljava/time/LocalTime;
    move-object v3, p3

    .local v3, "initialValue":Ljava/time/LocalTime;
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    const-wide/16 v8, 0x1

    sget-object v10, Ljava/time/temporal/ChronoUnit;->HOURS:Ljava/time/temporal/ChronoUnit;

    invoke-direct/range {v4 .. v10}, Ljavafx/scene/control/SpinnerValueFactory$LocalTimeSpinnerValueFactory;-><init>(Ljava/time/LocalTime;Ljava/time/LocalTime;Ljava/time/LocalTime;JLjava/time/temporal/TemporalUnit;)V

    .line 1158
    return-void
.end method

.method public constructor <init>(Ljava/time/LocalTime;Ljava/time/LocalTime;Ljava/time/LocalTime;JLjava/time/temporal/TemporalUnit;)V
    .locals 14
    .param p1    # Ljava/time/LocalTime;
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "min"
        .end annotation
    .end param
    .param p2    # Ljava/time/LocalTime;
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "min"
        .end annotation
    .end param
    .param p3    # Ljava/time/LocalTime;
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
    .line 1182
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/SpinnerValueFactory$LocalTimeSpinnerValueFactory;
    move-object v1, p1

    .local v1, "min":Ljava/time/LocalTime;
    move-object/from16 v2, p2

    .local v2, "max":Ljava/time/LocalTime;
    move-object/from16 v3, p3

    .local v3, "initialValue":Ljava/time/LocalTime;
    move-wide/from16 v4, p4

    .local v4, "amountToStepBy":J
    move-object/from16 v6, p6

    .local v6, "temporalUnit":Ljava/time/temporal/TemporalUnit;
    move-object v7, v0

    invoke-direct {v7}, Ljavafx/scene/control/SpinnerValueFactory;-><init>()V

    .line 1223
    move-object v7, v0

    new-instance v8, Ljavafx/scene/control/SpinnerValueFactory$LocalTimeSpinnerValueFactory$2;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    move-object v10, v0

    move-object v11, v0

    const-string v12, "min"

    invoke-direct {v9, v10, v11, v12}, Ljavafx/scene/control/SpinnerValueFactory$LocalTimeSpinnerValueFactory$2;-><init>(Ljavafx/scene/control/SpinnerValueFactory$LocalTimeSpinnerValueFactory;Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v8, v7, Ljavafx/scene/control/SpinnerValueFactory$LocalTimeSpinnerValueFactory;->min:Ljavafx/beans/property/ObjectProperty;

    .line 1256
    move-object v7, v0

    new-instance v8, Ljavafx/scene/control/SpinnerValueFactory$LocalTimeSpinnerValueFactory$3;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    move-object v10, v0

    move-object v11, v0

    const-string v12, "max"

    invoke-direct {v9, v10, v11, v12}, Ljavafx/scene/control/SpinnerValueFactory$LocalTimeSpinnerValueFactory$3;-><init>(Ljavafx/scene/control/SpinnerValueFactory$LocalTimeSpinnerValueFactory;Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v8, v7, Ljavafx/scene/control/SpinnerValueFactory$LocalTimeSpinnerValueFactory;->max:Ljavafx/beans/property/ObjectProperty;

    .line 1289
    move-object v7, v0

    new-instance v8, Ljavafx/beans/property/SimpleObjectProperty;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    move-object v10, v0

    const-string v11, "temporalUnit"

    invoke-direct {v9, v10, v11}, Ljavafx/beans/property/SimpleObjectProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v8, v7, Ljavafx/scene/control/SpinnerValueFactory$LocalTimeSpinnerValueFactory;->temporalUnit:Ljavafx/beans/property/ObjectProperty;

    .line 1304
    move-object v7, v0

    new-instance v8, Ljavafx/beans/property/SimpleLongProperty;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    move-object v10, v0

    const-string v11, "amountToStepBy"

    invoke-direct {v9, v10, v11}, Ljavafx/beans/property/SimpleLongProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v8, v7, Ljavafx/scene/control/SpinnerValueFactory$LocalTimeSpinnerValueFactory;->amountToStepBy:Ljavafx/beans/property/LongProperty;

    .line 1183
    move-object v7, v0

    move-object v8, v1

    invoke-virtual {v7, v8}, Ljavafx/scene/control/SpinnerValueFactory$LocalTimeSpinnerValueFactory;->setMin(Ljava/time/LocalTime;)V

    .line 1184
    move-object v7, v0

    move-object v8, v2

    invoke-virtual {v7, v8}, Ljavafx/scene/control/SpinnerValueFactory$LocalTimeSpinnerValueFactory;->setMax(Ljava/time/LocalTime;)V

    .line 1185
    move-object v7, v0

    move-wide v8, v4

    invoke-virtual {v7, v8, v9}, Ljavafx/scene/control/SpinnerValueFactory$LocalTimeSpinnerValueFactory;->setAmountToStepBy(J)V

    .line 1186
    move-object v7, v0

    move-object v8, v6

    invoke-virtual {v7, v8}, Ljavafx/scene/control/SpinnerValueFactory$LocalTimeSpinnerValueFactory;->setTemporalUnit(Ljava/time/temporal/TemporalUnit;)V

    .line 1187
    move-object v7, v0

    new-instance v8, Ljavafx/scene/control/SpinnerValueFactory$LocalTimeSpinnerValueFactory$1;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    move-object v10, v0

    invoke-direct {v9, v10}, Ljavafx/scene/control/SpinnerValueFactory$LocalTimeSpinnerValueFactory$1;-><init>(Ljavafx/scene/control/SpinnerValueFactory$LocalTimeSpinnerValueFactory;)V

    invoke-virtual {v7, v8}, Ljavafx/scene/control/SpinnerValueFactory$LocalTimeSpinnerValueFactory;->setConverter(Ljavafx/util/StringConverter;)V

    .line 1202
    move-object v7, v0

    invoke-virtual {v7}, Ljavafx/scene/control/SpinnerValueFactory$LocalTimeSpinnerValueFactory;->valueProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v7

    move-object v8, v0

    invoke-static {v8}, Ljavafx/scene/control/SpinnerValueFactory$LocalTimeSpinnerValueFactory$$Lambda$1;->lambdaFactory$(Ljavafx/scene/control/SpinnerValueFactory$LocalTimeSpinnerValueFactory;)Ljavafx/beans/value/ChangeListener;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljavafx/beans/property/ObjectProperty;->addListener(Ljavafx/beans/value/ChangeListener;)V

    .line 1211
    move-object v7, v0

    move-object v8, v3

    if-eqz v8, :cond_0

    move-object v8, v3

    :goto_0
    invoke-virtual {v7, v8}, Ljavafx/scene/control/SpinnerValueFactory$LocalTimeSpinnerValueFactory;->setValue(Ljava/lang/Object;)V

    .line 1212
    return-void

    .line 1211
    :cond_0
    invoke-static {}, Ljava/time/LocalTime;->now()Ljava/time/LocalTime;

    move-result-object v8

    goto :goto_0
.end method

.method static synthetic access$lambda$0(Ljavafx/scene/control/SpinnerValueFactory$LocalTimeSpinnerValueFactory;Ljavafx/beans/value/ObservableValue;Ljava/time/LocalTime;Ljava/time/LocalTime;)V
    .locals 8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-direct {v4, v5, v6, v7}, Ljavafx/scene/control/SpinnerValueFactory$LocalTimeSpinnerValueFactory;->lambda$new$218(Ljavafx/beans/value/ObservableValue;Ljava/time/LocalTime;Ljava/time/LocalTime;)V

    return-void
.end method

.method private synthetic lambda$new$218(Ljavafx/beans/value/ObservableValue;Ljava/time/LocalTime;Ljava/time/LocalTime;)V
    .locals 6

    .prologue
    .line 1205
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/SpinnerValueFactory$LocalTimeSpinnerValueFactory;
    move-object v1, p1

    .local v1, "o":Ljavafx/beans/value/ObservableValue;
    move-object v2, p2

    .local v2, "oldValue":Ljava/time/LocalTime;
    move-object v3, p3

    .local v3, "newValue":Ljava/time/LocalTime;
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/control/SpinnerValueFactory$LocalTimeSpinnerValueFactory;->getMin()Ljava/time/LocalTime;

    move-result-object v4

    if-eqz v4, :cond_1

    move-object v4, v3

    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/control/SpinnerValueFactory$LocalTimeSpinnerValueFactory;->getMin()Ljava/time/LocalTime;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/time/LocalTime;->isBefore(Ljava/time/LocalTime;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1206
    move-object v4, v0

    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/control/SpinnerValueFactory$LocalTimeSpinnerValueFactory;->getMin()Ljava/time/LocalTime;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljavafx/scene/control/SpinnerValueFactory$LocalTimeSpinnerValueFactory;->setValue(Ljava/lang/Object;)V

    .line 1210
    :cond_0
    :goto_0
    return-void

    .line 1207
    :cond_1
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/control/SpinnerValueFactory$LocalTimeSpinnerValueFactory;->getMax()Ljava/time/LocalTime;

    move-result-object v4

    if-eqz v4, :cond_0

    move-object v4, v3

    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/control/SpinnerValueFactory$LocalTimeSpinnerValueFactory;->getMax()Ljava/time/LocalTime;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/time/LocalTime;->isAfter(Ljava/time/LocalTime;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1208
    move-object v4, v0

    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/control/SpinnerValueFactory$LocalTimeSpinnerValueFactory;->getMax()Ljava/time/LocalTime;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljavafx/scene/control/SpinnerValueFactory$LocalTimeSpinnerValueFactory;->setValue(Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public final amountToStepByProperty()Ljavafx/beans/property/LongProperty;
    .locals 2

    .prologue
    .line 1315
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/SpinnerValueFactory$LocalTimeSpinnerValueFactory;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/SpinnerValueFactory$LocalTimeSpinnerValueFactory;->amountToStepBy:Ljavafx/beans/property/LongProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/SpinnerValueFactory$LocalTimeSpinnerValueFactory;
    return-object v0
.end method

.method public decrement(I)V
    .locals 14

    .prologue
    .line 1328
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/control/SpinnerValueFactory$LocalTimeSpinnerValueFactory;
    move v2, p1

    .local v2, "steps":I
    move-object v10, v1

    invoke-virtual {v10}, Ljavafx/scene/control/SpinnerValueFactory$LocalTimeSpinnerValueFactory;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/time/LocalTime;

    move-object v3, v10

    .line 1329
    .local v3, "currentValue":Ljava/time/LocalTime;
    move-object v10, v1

    invoke-virtual {v10}, Ljavafx/scene/control/SpinnerValueFactory$LocalTimeSpinnerValueFactory;->getMin()Ljava/time/LocalTime;

    move-result-object v10

    move-object v4, v10

    .line 1331
    .local v4, "min":Ljava/time/LocalTime;
    move-object v10, v1

    invoke-virtual {v10}, Ljavafx/scene/control/SpinnerValueFactory$LocalTimeSpinnerValueFactory;->getAmountToStepBy()J

    move-result-wide v10

    move v12, v2

    int-to-long v12, v12

    mul-long/2addr v10, v12

    move-object v12, v1

    invoke-virtual {v12}, Ljavafx/scene/control/SpinnerValueFactory$LocalTimeSpinnerValueFactory;->getTemporalUnit()Ljava/time/temporal/TemporalUnit;

    move-result-object v12

    invoke-static {v10, v11, v12}, Ljava/time/Duration;->of(JLjava/time/temporal/TemporalUnit;)Ljava/time/Duration;

    move-result-object v10

    move-object v5, v10

    .line 1333
    .local v5, "duration":Ljava/time/Duration;
    move-object v10, v5

    invoke-virtual {v10}, Ljava/time/Duration;->toMinutes()J

    move-result-wide v10

    const-wide/16 v12, 0x3c

    mul-long/2addr v10, v12

    move-wide v6, v10

    .line 1334
    .local v6, "durationInSeconds":J
    move-object v10, v3

    invoke-virtual {v10}, Ljava/time/LocalTime;->toSecondOfDay()I

    move-result v10

    int-to-long v10, v10

    move-wide v8, v10

    .line 1336
    .local v8, "currentValueInSeconds":J
    move-object v10, v1

    invoke-virtual {v10}, Ljavafx/scene/control/SpinnerValueFactory$LocalTimeSpinnerValueFactory;->isWrapAround()Z

    move-result v10

    if-nez v10, :cond_1

    move-wide v10, v6

    move-wide v12, v8

    cmp-long v10, v10, v12

    if-lez v10, :cond_1

    .line 1337
    move-object v10, v1

    move-object v11, v4

    if-nez v11, :cond_0

    sget-object v11, Ljava/time/LocalTime;->MIN:Ljava/time/LocalTime;

    :goto_0
    invoke-virtual {v10, v11}, Ljavafx/scene/control/SpinnerValueFactory$LocalTimeSpinnerValueFactory;->setValue(Ljava/lang/Object;)V

    .line 1341
    :goto_1
    return-void

    .line 1337
    :cond_0
    move-object v11, v4

    goto :goto_0

    .line 1339
    :cond_1
    move-object v10, v1

    move-object v11, v3

    move-object v12, v5

    invoke-virtual {v11, v12}, Ljava/time/LocalTime;->minus(Ljava/time/temporal/TemporalAmount;)Ljava/time/LocalTime;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljavafx/scene/control/SpinnerValueFactory$LocalTimeSpinnerValueFactory;->setValue(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public final getAmountToStepBy()J
    .locals 3

    .prologue
    .line 1309
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/SpinnerValueFactory$LocalTimeSpinnerValueFactory;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/SpinnerValueFactory$LocalTimeSpinnerValueFactory;->amountToStepBy:Ljavafx/beans/property/LongProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/LongProperty;->get()J

    move-result-wide v1

    move-wide v0, v1

    .end local v0    # "this":Ljavafx/scene/control/SpinnerValueFactory$LocalTimeSpinnerValueFactory;
    return-wide v0
.end method

.method public final getMax()Ljava/time/LocalTime;
    .locals 2

    .prologue
    .line 1279
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/SpinnerValueFactory$LocalTimeSpinnerValueFactory;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/SpinnerValueFactory$LocalTimeSpinnerValueFactory;->max:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/time/LocalTime;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/SpinnerValueFactory$LocalTimeSpinnerValueFactory;
    return-object v0
.end method

.method public final getMin()Ljava/time/LocalTime;
    .locals 2

    .prologue
    .line 1246
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/SpinnerValueFactory$LocalTimeSpinnerValueFactory;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/SpinnerValueFactory$LocalTimeSpinnerValueFactory;->min:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/time/LocalTime;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/SpinnerValueFactory$LocalTimeSpinnerValueFactory;
    return-object v0
.end method

.method public final getTemporalUnit()Ljava/time/temporal/TemporalUnit;
    .locals 2

    .prologue
    .line 1294
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/SpinnerValueFactory$LocalTimeSpinnerValueFactory;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/SpinnerValueFactory$LocalTimeSpinnerValueFactory;->temporalUnit:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/time/temporal/TemporalUnit;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/SpinnerValueFactory$LocalTimeSpinnerValueFactory;
    return-object v0
.end method

.method public increment(I)V
    .locals 16

    .prologue
    .line 1345
    move-object/from16 v1, p0

    .local v1, "this":Ljavafx/scene/control/SpinnerValueFactory$LocalTimeSpinnerValueFactory;
    move/from16 v2, p1

    .local v2, "steps":I
    move-object v10, v1

    invoke-virtual {v10}, Ljavafx/scene/control/SpinnerValueFactory$LocalTimeSpinnerValueFactory;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/time/LocalTime;

    move-object v3, v10

    .line 1346
    .local v3, "currentValue":Ljava/time/LocalTime;
    move-object v10, v1

    invoke-virtual {v10}, Ljavafx/scene/control/SpinnerValueFactory$LocalTimeSpinnerValueFactory;->getMax()Ljava/time/LocalTime;

    move-result-object v10

    move-object v4, v10

    .line 1348
    .local v4, "max":Ljava/time/LocalTime;
    move-object v10, v1

    invoke-virtual {v10}, Ljavafx/scene/control/SpinnerValueFactory$LocalTimeSpinnerValueFactory;->getAmountToStepBy()J

    move-result-wide v10

    move v12, v2

    int-to-long v12, v12

    mul-long/2addr v10, v12

    move-object v12, v1

    invoke-virtual {v12}, Ljavafx/scene/control/SpinnerValueFactory$LocalTimeSpinnerValueFactory;->getTemporalUnit()Ljava/time/temporal/TemporalUnit;

    move-result-object v12

    invoke-static {v10, v11, v12}, Ljava/time/Duration;->of(JLjava/time/temporal/TemporalUnit;)Ljava/time/Duration;

    move-result-object v10

    move-object v5, v10

    .line 1350
    .local v5, "duration":Ljava/time/Duration;
    move-object v10, v5

    invoke-virtual {v10}, Ljava/time/Duration;->toMinutes()J

    move-result-wide v10

    const-wide/16 v12, 0x3c

    mul-long/2addr v10, v12

    move-wide v6, v10

    .line 1351
    .local v6, "durationInSeconds":J
    move-object v10, v3

    invoke-virtual {v10}, Ljava/time/LocalTime;->toSecondOfDay()I

    move-result v10

    int-to-long v10, v10

    move-wide v8, v10

    .line 1353
    .local v8, "currentValueInSeconds":J
    move-object v10, v1

    invoke-virtual {v10}, Ljavafx/scene/control/SpinnerValueFactory$LocalTimeSpinnerValueFactory;->isWrapAround()Z

    move-result v10

    if-nez v10, :cond_1

    move-wide v10, v6

    sget-object v12, Ljava/time/LocalTime;->MAX:Ljava/time/LocalTime;

    invoke-virtual {v12}, Ljava/time/LocalTime;->toSecondOfDay()I

    move-result v12

    int-to-long v12, v12

    move-wide v14, v8

    sub-long/2addr v12, v14

    cmp-long v10, v10, v12

    if-lez v10, :cond_1

    .line 1354
    move-object v10, v1

    move-object v11, v4

    if-nez v11, :cond_0

    sget-object v11, Ljava/time/LocalTime;->MAX:Ljava/time/LocalTime;

    :goto_0
    invoke-virtual {v10, v11}, Ljavafx/scene/control/SpinnerValueFactory$LocalTimeSpinnerValueFactory;->setValue(Ljava/lang/Object;)V

    .line 1358
    :goto_1
    return-void

    .line 1354
    :cond_0
    move-object v11, v4

    goto :goto_0

    .line 1356
    :cond_1
    move-object v10, v1

    move-object v11, v3

    move-object v12, v5

    invoke-virtual {v11, v12}, Ljava/time/LocalTime;->plus(Ljava/time/temporal/TemporalAmount;)Ljava/time/LocalTime;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljavafx/scene/control/SpinnerValueFactory$LocalTimeSpinnerValueFactory;->setValue(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public final maxProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljava/time/LocalTime;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1285
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/SpinnerValueFactory$LocalTimeSpinnerValueFactory;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/SpinnerValueFactory$LocalTimeSpinnerValueFactory;->max:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/SpinnerValueFactory$LocalTimeSpinnerValueFactory;
    return-object v0
.end method

.method public final minProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljava/time/LocalTime;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1252
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/SpinnerValueFactory$LocalTimeSpinnerValueFactory;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/SpinnerValueFactory$LocalTimeSpinnerValueFactory;->min:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/SpinnerValueFactory$LocalTimeSpinnerValueFactory;
    return-object v0
.end method

.method public final setAmountToStepBy(J)V
    .locals 7

    .prologue
    .line 1306
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/SpinnerValueFactory$LocalTimeSpinnerValueFactory;
    move-wide v1, p1

    .local v1, "value":J
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/control/SpinnerValueFactory$LocalTimeSpinnerValueFactory;->amountToStepBy:Ljavafx/beans/property/LongProperty;

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/beans/property/LongProperty;->set(J)V

    .line 1307
    return-void
.end method

.method public final setMax(Ljava/time/LocalTime;)V
    .locals 4

    .prologue
    .line 1276
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/SpinnerValueFactory$LocalTimeSpinnerValueFactory;
    move-object v1, p1

    .local v1, "value":Ljava/time/LocalTime;
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/SpinnerValueFactory$LocalTimeSpinnerValueFactory;->max:Ljavafx/beans/property/ObjectProperty;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 1277
    return-void
.end method

.method public final setMin(Ljava/time/LocalTime;)V
    .locals 4

    .prologue
    .line 1243
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/SpinnerValueFactory$LocalTimeSpinnerValueFactory;
    move-object v1, p1

    .local v1, "value":Ljava/time/LocalTime;
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/SpinnerValueFactory$LocalTimeSpinnerValueFactory;->min:Ljavafx/beans/property/ObjectProperty;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 1244
    return-void
.end method

.method public final setTemporalUnit(Ljava/time/temporal/TemporalUnit;)V
    .locals 4

    .prologue
    .line 1291
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/SpinnerValueFactory$LocalTimeSpinnerValueFactory;
    move-object v1, p1

    .local v1, "value":Ljava/time/temporal/TemporalUnit;
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/SpinnerValueFactory$LocalTimeSpinnerValueFactory;->temporalUnit:Ljavafx/beans/property/ObjectProperty;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 1292
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
    .line 1300
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/SpinnerValueFactory$LocalTimeSpinnerValueFactory;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/SpinnerValueFactory$LocalTimeSpinnerValueFactory;->temporalUnit:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/SpinnerValueFactory$LocalTimeSpinnerValueFactory;
    return-object v0
.end method
