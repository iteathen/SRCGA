.class public Ljavafx/scene/control/Spinner;
.super Ljavafx/scene/control/Control;
.source "Spinner.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljavafx/scene/control/Control;"
    }
.end annotation


# static fields
.field private static final DEFAULT_STYLE_CLASS:Ljava/lang/String; = "spinner"

.field public static final STYLE_CLASS_ARROWS_ON_LEFT_HORIZONTAL:Ljava/lang/String; = "arrows-on-left-horizontal"

.field public static final STYLE_CLASS_ARROWS_ON_LEFT_VERTICAL:Ljava/lang/String; = "arrows-on-left-vertical"

.field public static final STYLE_CLASS_ARROWS_ON_RIGHT_HORIZONTAL:Ljava/lang/String; = "arrows-on-right-horizontal"

.field public static final STYLE_CLASS_SPLIT_ARROWS_HORIZONTAL:Ljava/lang/String; = "split-arrows-horizontal"

.field public static final STYLE_CLASS_SPLIT_ARROWS_VERTICAL:Ljava/lang/String; = "split-arrows-vertical"


# instance fields
.field private editable:Ljavafx/beans/property/BooleanProperty;

.field private editor:Ljavafx/beans/property/ReadOnlyObjectWrapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ReadOnlyObjectWrapper",
            "<",
            "Ljavafx/scene/control/TextField;",
            ">;"
        }
    .end annotation
.end field

.field private textField:Ljavafx/scene/control/TextField;

.field private value:Ljavafx/beans/property/ReadOnlyObjectWrapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ReadOnlyObjectWrapper",
            "<TT;>;"
        }
    .end annotation
.end field

.field private valueFactory:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/scene/control/SpinnerValueFactory",
            "<TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 8

    .prologue
    .line 128
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Spinner;, "Ljavafx/scene/control/Spinner<TT;>;"
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/control/Control;-><init>()V

    .line 460
    move-object v1, v0

    new-instance v2, Ljavafx/beans/property/ReadOnlyObjectWrapper;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v0

    const-string v5, "value"

    invoke-direct {v3, v4, v5}, Ljavafx/beans/property/ReadOnlyObjectWrapper;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v1, Ljavafx/scene/control/Spinner;->value:Ljavafx/beans/property/ReadOnlyObjectWrapper;

    .line 486
    move-object v1, v0

    new-instance v2, Ljavafx/scene/control/Spinner$1;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v0

    move-object v5, v0

    const-string v6, "valueFactory"

    invoke-direct {v3, v4, v5, v6}, Ljavafx/scene/control/Spinner$1;-><init>(Ljavafx/scene/control/Spinner;Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v1, Ljavafx/scene/control/Spinner;->valueFactory:Ljavafx/beans/property/ObjectProperty;

    .line 129
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/Spinner;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v1

    const-string v2, "spinner"

    invoke-interface {v1, v2}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v1

    .line 130
    move-object v1, v0

    sget-object v2, Ljavafx/scene/AccessibleRole;->SPINNER:Ljavafx/scene/AccessibleRole;

    invoke-virtual {v1, v2}, Ljavafx/scene/control/Spinner;->setAccessibleRole(Ljavafx/scene/AccessibleRole;)V

    .line 132
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/Spinner;->getEditor()Ljavafx/scene/control/TextField;

    move-result-object v1

    move-object v2, v0

    invoke-static {v2}, Ljavafx/scene/control/Spinner$$Lambda$1;->lambdaFactory$(Ljavafx/scene/control/Spinner;)Ljavafx/event/EventHandler;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljavafx/scene/control/TextField;->setOnAction(Ljavafx/event/EventHandler;)V

    .line 144
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/Spinner;->getEditor()Ljavafx/scene/control/TextField;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/scene/control/TextField;->editableProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v1

    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/Spinner;->editableProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljavafx/beans/property/BooleanProperty;->bind(Ljavafx/beans/value/ObservableValue;)V

    .line 146
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Spinner;->value:Ljavafx/beans/property/ReadOnlyObjectWrapper;

    move-object v2, v0

    invoke-static {v2}, Ljavafx/scene/control/Spinner$$Lambda$2;->lambdaFactory$(Ljavafx/scene/control/Spinner;)Ljavafx/beans/value/ChangeListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljavafx/beans/property/ReadOnlyObjectWrapper;->addListener(Ljavafx/beans/value/ChangeListener;)V

    .line 149
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/Spinner;->getProperties()Ljavafx/collections/ObservableMap;

    move-result-object v1

    move-object v2, v0

    invoke-static {v2}, Ljavafx/scene/control/Spinner$$Lambda$3;->lambdaFactory$(Ljavafx/scene/control/Spinner;)Ljavafx/collections/MapChangeListener;

    move-result-object v2

    invoke-interface {v1, v2}, Ljavafx/collections/ObservableMap;->addListener(Ljavafx/collections/MapChangeListener;)V

    .line 158
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
    .line 219
    move-object/from16 v0, p0

    .local v0, "this":Ljavafx/scene/control/Spinner;, "Ljavafx/scene/control/Spinner<TT;>;"
    move-wide/from16 v1, p1

    .local v1, "min":D
    move-wide/from16 v3, p3

    .local v3, "max":D
    move-wide/from16 v5, p5

    .local v5, "initialValue":D
    move-object v7, v0

    new-instance v8, Ljavafx/scene/control/SpinnerValueFactory$DoubleSpinnerValueFactory;

    move-object/from16 v16, v8

    move-object/from16 v8, v16

    move-object/from16 v9, v16

    move-wide v10, v1

    move-wide v12, v3

    move-wide v14, v5

    invoke-direct/range {v9 .. v15}, Ljavafx/scene/control/SpinnerValueFactory$DoubleSpinnerValueFactory;-><init>(DDD)V

    invoke-direct {v7, v8}, Ljavafx/scene/control/Spinner;-><init>(Ljavafx/scene/control/SpinnerValueFactory;)V

    .line 220
    return-void
.end method

.method public constructor <init>(DDDD)V
    .locals 21
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
    .line 241
    move-object/from16 v0, p0

    .local v0, "this":Ljavafx/scene/control/Spinner;, "Ljavafx/scene/control/Spinner<TT;>;"
    move-wide/from16 v1, p1

    .local v1, "min":D
    move-wide/from16 v3, p3

    .local v3, "max":D
    move-wide/from16 v5, p5

    .local v5, "initialValue":D
    move-wide/from16 v7, p7

    .local v7, "amountToStepBy":D
    move-object v9, v0

    new-instance v10, Ljavafx/scene/control/SpinnerValueFactory$DoubleSpinnerValueFactory;

    move-object/from16 v20, v10

    move-object/from16 v10, v20

    move-object/from16 v11, v20

    move-wide v12, v1

    move-wide v14, v3

    move-wide/from16 v16, v5

    move-wide/from16 v18, v7

    invoke-direct/range {v11 .. v19}, Ljavafx/scene/control/SpinnerValueFactory$DoubleSpinnerValueFactory;-><init>(DDDD)V

    invoke-direct {v9, v10}, Ljavafx/scene/control/Spinner;-><init>(Ljavafx/scene/control/SpinnerValueFactory;)V

    .line 242
    return-void
.end method

.method public constructor <init>(III)V
    .locals 11
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
    .line 177
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Spinner;, "Ljavafx/scene/control/Spinner<TT;>;"
    move v1, p1

    .local v1, "min":I
    move v2, p2

    .local v2, "max":I
    move v3, p3

    .local v3, "initialValue":I
    move-object v4, v0

    new-instance v5, Ljavafx/scene/control/SpinnerValueFactory$IntegerSpinnerValueFactory;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move v7, v1

    move v8, v2

    move v9, v3

    invoke-direct {v6, v7, v8, v9}, Ljavafx/scene/control/SpinnerValueFactory$IntegerSpinnerValueFactory;-><init>(III)V

    invoke-direct {v4, v5}, Ljavafx/scene/control/Spinner;-><init>(Ljavafx/scene/control/SpinnerValueFactory;)V

    .line 178
    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 13
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
    .line 199
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Spinner;, "Ljavafx/scene/control/Spinner<TT;>;"
    move v1, p1

    .local v1, "min":I
    move v2, p2

    .local v2, "max":I
    move/from16 v3, p3

    .local v3, "initialValue":I
    move/from16 v4, p4

    .local v4, "amountToStepBy":I
    move-object v5, v0

    new-instance v6, Ljavafx/scene/control/SpinnerValueFactory$IntegerSpinnerValueFactory;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    move v8, v1

    move v9, v2

    move v10, v3

    move v11, v4

    invoke-direct {v7, v8, v9, v10, v11}, Ljavafx/scene/control/SpinnerValueFactory$IntegerSpinnerValueFactory;-><init>(IIII)V

    invoke-direct {v5, v6}, Ljavafx/scene/control/Spinner;-><init>(Ljavafx/scene/control/SpinnerValueFactory;)V

    .line 200
    return-void
.end method

.method constructor <init>(Ljava/time/LocalDate;Ljava/time/LocalDate;Ljava/time/LocalDate;)V
    .locals 11
    .param p1    # Ljava/time/LocalDate;
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "min"
        .end annotation
    .end param
    .param p2    # Ljava/time/LocalDate;
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "max"
        .end annotation
    .end param
    .param p3    # Ljava/time/LocalDate;
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "initialValue"
        .end annotation
    .end param

    .prologue
    .line 261
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Spinner;, "Ljavafx/scene/control/Spinner<TT;>;"
    move-object v1, p1

    .local v1, "min":Ljava/time/LocalDate;
    move-object v2, p2

    .local v2, "max":Ljava/time/LocalDate;
    move-object v3, p3

    .local v3, "initialValue":Ljava/time/LocalDate;
    move-object v4, v0

    new-instance v5, Ljavafx/scene/control/SpinnerValueFactory$LocalDateSpinnerValueFactory;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v1

    move-object v8, v2

    move-object v9, v3

    invoke-direct {v6, v7, v8, v9}, Ljavafx/scene/control/SpinnerValueFactory$LocalDateSpinnerValueFactory;-><init>(Ljava/time/LocalDate;Ljava/time/LocalDate;Ljava/time/LocalDate;)V

    invoke-direct {v4, v5}, Ljavafx/scene/control/Spinner;-><init>(Ljavafx/scene/control/SpinnerValueFactory;)V

    .line 262
    return-void
.end method

.method constructor <init>(Ljava/time/LocalDate;Ljava/time/LocalDate;Ljava/time/LocalDate;JLjava/time/temporal/TemporalUnit;)V
    .locals 18
    .param p1    # Ljava/time/LocalDate;
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "min"
        .end annotation
    .end param
    .param p2    # Ljava/time/LocalDate;
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "max"
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
    .line 285
    move-object/from16 v0, p0

    .local v0, "this":Ljavafx/scene/control/Spinner;, "Ljavafx/scene/control/Spinner<TT;>;"
    move-object/from16 v1, p1

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

    new-instance v8, Ljavafx/scene/control/SpinnerValueFactory$LocalDateSpinnerValueFactory;

    move-object/from16 v16, v8

    move-object/from16 v8, v16

    move-object/from16 v9, v16

    move-object v10, v1

    move-object v11, v2

    move-object v12, v3

    move-wide v13, v4

    move-object v15, v6

    invoke-direct/range {v9 .. v15}, Ljavafx/scene/control/SpinnerValueFactory$LocalDateSpinnerValueFactory;-><init>(Ljava/time/LocalDate;Ljava/time/LocalDate;Ljava/time/LocalDate;JLjava/time/temporal/TemporalUnit;)V

    invoke-direct {v7, v8}, Ljavafx/scene/control/Spinner;-><init>(Ljavafx/scene/control/SpinnerValueFactory;)V

    .line 286
    return-void
.end method

.method constructor <init>(Ljava/time/LocalTime;Ljava/time/LocalTime;Ljava/time/LocalTime;)V
    .locals 11
    .param p1    # Ljava/time/LocalTime;
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "min"
        .end annotation
    .end param
    .param p2    # Ljava/time/LocalTime;
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "max"
        .end annotation
    .end param
    .param p3    # Ljava/time/LocalTime;
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "initialValue"
        .end annotation
    .end param

    .prologue
    .line 305
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Spinner;, "Ljavafx/scene/control/Spinner<TT;>;"
    move-object v1, p1

    .local v1, "min":Ljava/time/LocalTime;
    move-object v2, p2

    .local v2, "max":Ljava/time/LocalTime;
    move-object v3, p3

    .local v3, "initialValue":Ljava/time/LocalTime;
    move-object v4, v0

    new-instance v5, Ljavafx/scene/control/SpinnerValueFactory$LocalTimeSpinnerValueFactory;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v1

    move-object v8, v2

    move-object v9, v3

    invoke-direct {v6, v7, v8, v9}, Ljavafx/scene/control/SpinnerValueFactory$LocalTimeSpinnerValueFactory;-><init>(Ljava/time/LocalTime;Ljava/time/LocalTime;Ljava/time/LocalTime;)V

    invoke-direct {v4, v5}, Ljavafx/scene/control/Spinner;-><init>(Ljavafx/scene/control/SpinnerValueFactory;)V

    .line 306
    return-void
.end method

.method constructor <init>(Ljava/time/LocalTime;Ljava/time/LocalTime;Ljava/time/LocalTime;JLjava/time/temporal/TemporalUnit;)V
    .locals 18
    .param p1    # Ljava/time/LocalTime;
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "min"
        .end annotation
    .end param
    .param p2    # Ljava/time/LocalTime;
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "max"
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
    .line 329
    move-object/from16 v0, p0

    .local v0, "this":Ljavafx/scene/control/Spinner;, "Ljavafx/scene/control/Spinner<TT;>;"
    move-object/from16 v1, p1

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

    new-instance v8, Ljavafx/scene/control/SpinnerValueFactory$LocalTimeSpinnerValueFactory;

    move-object/from16 v16, v8

    move-object/from16 v8, v16

    move-object/from16 v9, v16

    move-object v10, v1

    move-object v11, v2

    move-object v12, v3

    move-wide v13, v4

    move-object v15, v6

    invoke-direct/range {v9 .. v15}, Ljavafx/scene/control/SpinnerValueFactory$LocalTimeSpinnerValueFactory;-><init>(Ljava/time/LocalTime;Ljava/time/LocalTime;Ljava/time/LocalTime;JLjava/time/temporal/TemporalUnit;)V

    invoke-direct {v7, v8}, Ljavafx/scene/control/Spinner;-><init>(Ljavafx/scene/control/SpinnerValueFactory;)V

    .line 330
    return-void
.end method

.method public constructor <init>(Ljavafx/collections/ObservableList;)V
    .locals 7
    .param p1    # Ljavafx/collections/ObservableList;
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "items"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/ObservableList",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 342
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Spinner;, "Ljavafx/scene/control/Spinner<TT;>;"
    move-object v1, p1

    .local v1, "items":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<TT;>;"
    move-object v2, v0

    new-instance v3, Ljavafx/scene/control/SpinnerValueFactory$ListSpinnerValueFactory;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v1

    invoke-direct {v4, v5}, Ljavafx/scene/control/SpinnerValueFactory$ListSpinnerValueFactory;-><init>(Ljavafx/collections/ObservableList;)V

    invoke-direct {v2, v3}, Ljavafx/scene/control/Spinner;-><init>(Ljavafx/scene/control/SpinnerValueFactory;)V

    .line 343
    return-void
.end method

.method public constructor <init>(Ljavafx/scene/control/SpinnerValueFactory;)V
    .locals 4
    .param p1    # Ljavafx/scene/control/SpinnerValueFactory;
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "valueFactory"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/control/SpinnerValueFactory",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 351
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Spinner;, "Ljavafx/scene/control/Spinner<TT;>;"
    move-object v1, p1

    .local v1, "valueFactory":Ljavafx/scene/control/SpinnerValueFactory;, "Ljavafx/scene/control/SpinnerValueFactory<TT;>;"
    move-object v2, v0

    invoke-direct {v2}, Ljavafx/scene/control/Spinner;-><init>()V

    .line 353
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/scene/control/Spinner;->setValueFactory(Ljavafx/scene/control/SpinnerValueFactory;)V

    .line 354
    return-void
.end method

.method static synthetic access$000(Ljavafx/scene/control/Spinner;)Ljavafx/beans/property/ReadOnlyObjectWrapper;
    .locals 2

    .prologue
    .line 96
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/control/Spinner;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Spinner;->value:Ljavafx/beans/property/ReadOnlyObjectWrapper;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/control/Spinner;
    return-object v0
.end method

.method static synthetic access$lambda$0(Ljavafx/scene/control/Spinner;Ljavafx/event/ActionEvent;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljavafx/scene/control/Spinner;->lambda$new$210(Ljavafx/event/ActionEvent;)V

    return-void
.end method

.method static synthetic access$lambda$1(Ljavafx/scene/control/Spinner;Ljavafx/beans/value/ObservableValue;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-direct {v4, v5, v6, v7}, Ljavafx/scene/control/Spinner;->lambda$new$211(Ljavafx/beans/value/ObservableValue;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$lambda$2(Ljavafx/scene/control/Spinner;Ljavafx/collections/MapChangeListener$Change;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljavafx/scene/control/Spinner;->lambda$new$212(Ljavafx/collections/MapChangeListener$Change;)V

    return-void
.end method

.method private commitEditorText()V
    .locals 7

    .prologue
    .line 632
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Spinner;, "Ljavafx/scene/control/Spinner<TT;>;"
    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/control/Spinner;->isEditable()Z

    move-result v5

    if-nez v5, :cond_0

    .line 642
    :goto_0
    return-void

    .line 633
    :cond_0
    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/control/Spinner;->getEditor()Ljavafx/scene/control/TextField;

    move-result-object v5

    invoke-virtual {v5}, Ljavafx/scene/control/TextField;->getText()Ljava/lang/String;

    move-result-object v5

    move-object v1, v5

    .line 634
    .local v1, "text":Ljava/lang/String;
    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/control/Spinner;->getValueFactory()Ljavafx/scene/control/SpinnerValueFactory;

    move-result-object v5

    move-object v2, v5

    .line 635
    .local v2, "valueFactory":Ljavafx/scene/control/SpinnerValueFactory;, "Ljavafx/scene/control/SpinnerValueFactory<TT;>;"
    move-object v5, v2

    if-eqz v5, :cond_1

    .line 636
    move-object v5, v2

    invoke-virtual {v5}, Ljavafx/scene/control/SpinnerValueFactory;->getConverter()Ljavafx/util/StringConverter;

    move-result-object v5

    move-object v3, v5

    .line 637
    .local v3, "converter":Ljavafx/util/StringConverter;, "Ljavafx/util/StringConverter<TT;>;"
    move-object v5, v3

    if-eqz v5, :cond_1

    .line 638
    move-object v5, v3

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljavafx/util/StringConverter;->fromString(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    move-object v4, v5

    .line 639
    .local v4, "value":Ljava/lang/Object;, "TT;"
    move-object v5, v2

    move-object v6, v4

    invoke-virtual {v5, v6}, Ljavafx/scene/control/SpinnerValueFactory;->setValue(Ljava/lang/Object;)V

    .line 642
    .end local v3    # "converter":Ljavafx/util/StringConverter;, "Ljavafx/util/StringConverter<TT;>;"
    .end local v4    # "value":Ljava/lang/Object;, "TT;"
    :cond_1
    goto :goto_0
.end method

.method private synthetic lambda$new$210(Ljavafx/event/ActionEvent;)V
    .locals 8

    .prologue
    .line 133
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Spinner;, "Ljavafx/scene/control/Spinner<TT;>;"
    move-object v1, p1

    .local v1, "action":Ljavafx/event/ActionEvent;
    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/scene/control/Spinner;->getEditor()Ljavafx/scene/control/TextField;

    move-result-object v6

    invoke-virtual {v6}, Ljavafx/scene/control/TextField;->getText()Ljava/lang/String;

    move-result-object v6

    move-object v2, v6

    .line 134
    .local v2, "text":Ljava/lang/String;
    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/scene/control/Spinner;->getValueFactory()Ljavafx/scene/control/SpinnerValueFactory;

    move-result-object v6

    move-object v3, v6

    .line 135
    .local v3, "valueFactory":Ljavafx/scene/control/SpinnerValueFactory;, "Ljavafx/scene/control/SpinnerValueFactory<TT;>;"
    move-object v6, v3

    if-eqz v6, :cond_0

    .line 136
    move-object v6, v3

    invoke-virtual {v6}, Ljavafx/scene/control/SpinnerValueFactory;->getConverter()Ljavafx/util/StringConverter;

    move-result-object v6

    move-object v4, v6

    .line 137
    .local v4, "converter":Ljavafx/util/StringConverter;, "Ljavafx/util/StringConverter<TT;>;"
    move-object v6, v4

    if-eqz v6, :cond_0

    .line 138
    move-object v6, v4

    move-object v7, v2

    invoke-virtual {v6, v7}, Ljavafx/util/StringConverter;->fromString(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    move-object v5, v6

    .line 139
    .local v5, "value":Ljava/lang/Object;, "TT;"
    move-object v6, v3

    move-object v7, v5

    invoke-virtual {v6, v7}, Ljavafx/scene/control/SpinnerValueFactory;->setValue(Ljava/lang/Object;)V

    .line 142
    .end local v4    # "converter":Ljavafx/util/StringConverter;, "Ljavafx/util/StringConverter<TT;>;"
    .end local v5    # "value":Ljava/lang/Object;, "TT;"
    :cond_0
    return-void
.end method

.method private synthetic lambda$new$211(Ljavafx/beans/value/ObservableValue;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6

    .prologue
    .line 146
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Spinner;, "Ljavafx/scene/control/Spinner<TT;>;"
    move-object v1, p1

    .local v1, "o":Ljavafx/beans/value/ObservableValue;
    move-object v2, p2

    .local v2, "oldValue":Ljava/lang/Object;
    move-object v3, p3

    .local v3, "newValue":Ljava/lang/Object;
    move-object v4, v0

    move-object v5, v3

    invoke-direct {v4, v5}, Ljavafx/scene/control/Spinner;->setText(Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$new$212(Ljavafx/collections/MapChangeListener$Change;)V
    .locals 4

    .prologue
    .line 150
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Spinner;, "Ljavafx/scene/control/Spinner<TT;>;"
    move-object v1, p1

    .local v1, "change":Ljavafx/collections/MapChangeListener$Change;
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/collections/MapChangeListener$Change;->wasAdded()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 151
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/collections/MapChangeListener$Change;->getKey()Ljava/lang/Object;

    move-result-object v2

    const-string v3, "FOCUSED"

    if-ne v2, v3, :cond_0

    .line 152
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/collections/MapChangeListener$Change;->getValueAdded()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljavafx/scene/control/Spinner;->setFocused(Z)V

    .line 153
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/Spinner;->getProperties()Ljavafx/collections/ObservableMap;

    move-result-object v2

    const-string v3, "FOCUSED"

    invoke-interface {v2, v3}, Ljavafx/collections/ObservableMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 156
    :cond_0
    return-void
.end method

.method private setText(Ljava/lang/Object;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 568
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Spinner;, "Ljavafx/scene/control/Spinner<TT;>;"
    move-object v1, p1

    .local v1, "value":Ljava/lang/Object;, "TT;"
    const/4 v5, 0x0

    move-object v2, v5

    .line 570
    .local v2, "text":Ljava/lang/String;
    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/control/Spinner;->getValueFactory()Ljavafx/scene/control/SpinnerValueFactory;

    move-result-object v5

    move-object v3, v5

    .line 571
    .local v3, "valueFactory":Ljavafx/scene/control/SpinnerValueFactory;, "Ljavafx/scene/control/SpinnerValueFactory<TT;>;"
    move-object v5, v3

    if-eqz v5, :cond_0

    .line 572
    move-object v5, v3

    invoke-virtual {v5}, Ljavafx/scene/control/SpinnerValueFactory;->getConverter()Ljavafx/util/StringConverter;

    move-result-object v5

    move-object v4, v5

    .line 573
    .local v4, "converter":Ljavafx/util/StringConverter;, "Ljavafx/util/StringConverter<TT;>;"
    move-object v5, v4

    if-eqz v5, :cond_0

    .line 574
    move-object v5, v4

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljavafx/util/StringConverter;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    move-object v2, v5

    .line 578
    .end local v4    # "converter":Ljavafx/util/StringConverter;, "Ljavafx/util/StringConverter<TT;>;"
    :cond_0
    move-object v5, v0

    sget-object v6, Ljavafx/scene/AccessibleAttribute;->TEXT:Ljavafx/scene/AccessibleAttribute;

    invoke-virtual {v5, v6}, Ljavafx/scene/control/Spinner;->notifyAccessibleAttributeChanged(Ljavafx/scene/AccessibleAttribute;)V

    .line 579
    move-object v5, v2

    if-nez v5, :cond_2

    .line 580
    move-object v5, v1

    if-nez v5, :cond_1

    .line 581
    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/control/Spinner;->getEditor()Ljavafx/scene/control/TextField;

    move-result-object v5

    invoke-virtual {v5}, Ljavafx/scene/control/TextField;->clear()V

    .line 582
    .line 589
    :goto_0
    return-void

    .line 584
    :cond_1
    move-object v5, v1

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v2, v5

    .line 588
    :cond_2
    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/control/Spinner;->getEditor()Ljavafx/scene/control/TextField;

    move-result-object v5

    move-object v6, v2

    invoke-virtual {v5, v6}, Ljavafx/scene/control/TextField;->setText(Ljava/lang/String;)V

    .line 589
    goto :goto_0
.end method

.method static wrapValue(III)I
    .locals 7

    .prologue
    .line 597
    move v0, p0

    .local v0, "value":I
    move v1, p1

    .local v1, "min":I
    move v2, p2

    .local v2, "max":I
    move v4, v2

    if-nez v4, :cond_0

    .line 598
    new-instance v4, Ljava/lang/RuntimeException;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/RuntimeException;-><init>()V

    throw v4

    .line 601
    :cond_0
    move v4, v0

    move v5, v2

    rem-int/2addr v4, v5

    move v3, v4

    .line 602
    .local v3, "r":I
    move v4, v3

    move v5, v1

    if-le v4, v5, :cond_2

    move v4, v2

    move v5, v1

    if-ge v4, v5, :cond_2

    .line 603
    move v4, v3

    move v5, v2

    add-int/2addr v4, v5

    move v5, v1

    sub-int/2addr v4, v5

    move v3, v4

    .line 607
    :cond_1
    :goto_0
    move v4, v3

    move v0, v4

    .end local v0    # "value":I
    return v0

    .line 604
    .restart local v0    # "value":I
    :cond_2
    move v4, v3

    move v5, v1

    if-ge v4, v5, :cond_1

    move v4, v2

    move v5, v1

    if-le v4, v5, :cond_1

    .line 605
    move v4, v3

    move v5, v2

    add-int/2addr v4, v5

    move v5, v1

    sub-int/2addr v4, v5

    move v3, v4

    goto :goto_0
.end method

.method static wrapValue(Ljava/math/BigDecimal;Ljava/math/BigDecimal;Ljava/math/BigDecimal;)Ljava/math/BigDecimal;
    .locals 9

    .prologue
    .line 616
    move-object v1, p0

    .local v1, "value":Ljava/math/BigDecimal;
    move-object v2, p1

    .local v2, "min":Ljava/math/BigDecimal;
    move-object v3, p2

    .local v3, "max":Ljava/math/BigDecimal;
    move-object v4, v3

    invoke-virtual {v4}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmpl-double v4, v4, v6

    if-nez v4, :cond_0

    .line 617
    new-instance v4, Ljava/lang/RuntimeException;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    invoke-direct {v5}, Ljava/lang/RuntimeException;-><init>()V

    throw v4

    .line 623
    :cond_0
    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v4, v5}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v4

    if-gez v4, :cond_1

    .line 624
    move-object v4, v3

    move-object v1, v4

    .line 628
    .end local v1    # "value":Ljava/math/BigDecimal;
    :goto_0
    return-object v1

    .line 625
    .restart local v1    # "value":Ljava/math/BigDecimal;
    :cond_1
    move-object v4, v1

    move-object v5, v3

    invoke-virtual {v4, v5}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v4

    if-lez v4, :cond_2

    .line 626
    move-object v4, v2

    move-object v1, v4

    goto :goto_0

    .line 628
    :cond_2
    move-object v4, v1

    move-object v1, v4

    goto :goto_0
.end method


# virtual methods
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
    .line 432
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Spinner;, "Ljavafx/scene/control/Spinner<TT;>;"
    new-instance v1, Lcom/sun/javafx/scene/control/skin/SpinnerSkin;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/skin/SpinnerSkin;-><init>(Ljavafx/scene/control/Spinner;)V

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/Spinner;, "Ljavafx/scene/control/Spinner<TT;>;"
    return-object v0
.end method

.method public decrement()V
    .locals 3

    .prologue
    .line 407
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Spinner;, "Ljavafx/scene/control/Spinner<TT;>;"
    move-object v1, v0

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljavafx/scene/control/Spinner;->decrement(I)V

    .line 408
    return-void
.end method

.method public decrement(I)V
    .locals 7

    .prologue
    .line 422
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Spinner;, "Ljavafx/scene/control/Spinner<TT;>;"
    move v1, p1

    .local v1, "steps":I
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/Spinner;->getValueFactory()Ljavafx/scene/control/SpinnerValueFactory;

    move-result-object v3

    move-object v2, v3

    .line 423
    .local v2, "valueFactory":Ljavafx/scene/control/SpinnerValueFactory;, "Ljavafx/scene/control/SpinnerValueFactory<TT;>;"
    move-object v3, v2

    if-nez v3, :cond_0

    .line 424
    new-instance v3, Ljava/lang/IllegalStateException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string v5, "Can\'t decrement Spinner with a null SpinnerValueFactory"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 426
    :cond_0
    move-object v3, v0

    invoke-direct {v3}, Ljavafx/scene/control/Spinner;->commitEditorText()V

    .line 427
    move-object v3, v2

    move v4, v1

    invoke-virtual {v3, v4}, Ljavafx/scene/control/SpinnerValueFactory;->decrement(I)V

    .line 428
    return-void
.end method

.method public final editableProperty()Ljavafx/beans/property/BooleanProperty;
    .locals 8

    .prologue
    .line 531
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Spinner;, "Ljavafx/scene/control/Spinner<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Spinner;->editable:Ljavafx/beans/property/BooleanProperty;

    if-nez v1, :cond_0

    .line 532
    move-object v1, v0

    new-instance v2, Ljavafx/beans/property/SimpleBooleanProperty;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v0

    const-string v5, "editable"

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Ljavafx/beans/property/SimpleBooleanProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;Z)V

    iput-object v2, v1, Ljavafx/scene/control/Spinner;->editable:Ljavafx/beans/property/BooleanProperty;

    .line 534
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Spinner;->editable:Ljavafx/beans/property/BooleanProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/Spinner;, "Ljavafx/scene/control/Spinner<TT;>;"
    return-object v0
.end method

.method public final editorProperty()Ljavafx/beans/property/ReadOnlyObjectProperty;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ReadOnlyObjectProperty",
            "<",
            "Ljavafx/scene/control/TextField;",
            ">;"
        }
    .end annotation

    .prologue
    .line 543
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Spinner;, "Ljavafx/scene/control/Spinner<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Spinner;->editor:Ljavafx/beans/property/ReadOnlyObjectWrapper;

    if-nez v1, :cond_0

    .line 544
    move-object v1, v0

    new-instance v2, Ljavafx/beans/property/ReadOnlyObjectWrapper;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    const-string v5, "editor"

    invoke-direct {v3, v4, v5}, Ljavafx/beans/property/ReadOnlyObjectWrapper;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v1, Ljavafx/scene/control/Spinner;->editor:Ljavafx/beans/property/ReadOnlyObjectWrapper;

    .line 545
    move-object v1, v0

    new-instance v2, Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl$FakeFocusTextField;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    invoke-direct {v3}, Lcom/sun/javafx/scene/control/skin/ComboBoxPopupControl$FakeFocusTextField;-><init>()V

    iput-object v2, v1, Ljavafx/scene/control/Spinner;->textField:Ljavafx/scene/control/TextField;

    .line 546
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Spinner;->editor:Ljavafx/beans/property/ReadOnlyObjectWrapper;

    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/Spinner;->textField:Ljavafx/scene/control/TextField;

    invoke-virtual {v1, v2}, Ljavafx/beans/property/ReadOnlyObjectWrapper;->set(Ljava/lang/Object;)V

    .line 548
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Spinner;->editor:Ljavafx/beans/property/ReadOnlyObjectWrapper;

    invoke-virtual {v1}, Ljavafx/beans/property/ReadOnlyObjectWrapper;->getReadOnlyProperty()Ljavafx/beans/property/ReadOnlyObjectProperty;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/Spinner;, "Ljavafx/scene/control/Spinner<TT;>;"
    return-object v0
.end method

.method public varargs executeAccessibleAction(Ljavafx/scene/AccessibleAction;[Ljava/lang/Object;)V
    .locals 6

    .prologue
    .line 671
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Spinner;, "Ljavafx/scene/control/Spinner<TT;>;"
    move-object v1, p1

    .local v1, "action":Ljavafx/scene/AccessibleAction;
    move-object v2, p2

    .local v2, "parameters":[Ljava/lang/Object;
    sget-object v3, Ljavafx/scene/control/Spinner$2;->$SwitchMap$javafx$scene$AccessibleAction:[I

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/AccessibleAction;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 678
    move-object v3, v0

    move-object v4, v1

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-super {v3, v4, v5}, Ljavafx/scene/control/Control;->executeAccessibleAction(Ljavafx/scene/AccessibleAction;[Ljava/lang/Object;)V

    .line 680
    :goto_0
    return-void

    .line 673
    :pswitch_0
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/Spinner;->increment()V

    .line 674
    goto :goto_0

    .line 676
    :pswitch_1
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/Spinner;->decrement()V

    .line 677
    goto :goto_0

    .line 671
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final getEditor()Ljavafx/scene/control/TextField;
    .locals 2

    .prologue
    .line 553
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Spinner;, "Ljavafx/scene/control/Spinner<TT;>;"
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/Spinner;->editorProperty()Ljavafx/beans/property/ReadOnlyObjectProperty;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/beans/property/ReadOnlyObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/scene/control/TextField;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/Spinner;, "Ljavafx/scene/control/Spinner<TT;>;"
    return-object v0
.end method

.method public final getValue()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 462
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Spinner;, "Ljavafx/scene/control/Spinner<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Spinner;->value:Ljavafx/beans/property/ReadOnlyObjectWrapper;

    invoke-virtual {v1}, Ljavafx/beans/property/ReadOnlyObjectWrapper;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/Spinner;, "Ljavafx/scene/control/Spinner<TT;>;"
    return-object v0
.end method

.method public final getValueFactory()Ljavafx/scene/control/SpinnerValueFactory;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/scene/control/SpinnerValueFactory",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 503
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Spinner;, "Ljavafx/scene/control/Spinner<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Spinner;->valueFactory:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/scene/control/SpinnerValueFactory;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/Spinner;, "Ljavafx/scene/control/Spinner<TT;>;"
    return-object v0
.end method

.method public increment()V
    .locals 3

    .prologue
    .line 374
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Spinner;, "Ljavafx/scene/control/Spinner<TT;>;"
    move-object v1, v0

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljavafx/scene/control/Spinner;->increment(I)V

    .line 375
    return-void
.end method

.method public increment(I)V
    .locals 7

    .prologue
    .line 389
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Spinner;, "Ljavafx/scene/control/Spinner<TT;>;"
    move v1, p1

    .local v1, "steps":I
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/Spinner;->getValueFactory()Ljavafx/scene/control/SpinnerValueFactory;

    move-result-object v3

    move-object v2, v3

    .line 390
    .local v2, "valueFactory":Ljavafx/scene/control/SpinnerValueFactory;, "Ljavafx/scene/control/SpinnerValueFactory<TT;>;"
    move-object v3, v2

    if-nez v3, :cond_0

    .line 391
    new-instance v3, Ljava/lang/IllegalStateException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string v5, "Can\'t increment Spinner with a null SpinnerValueFactory"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 393
    :cond_0
    move-object v3, v0

    invoke-direct {v3}, Ljavafx/scene/control/Spinner;->commitEditorText()V

    .line 394
    move-object v3, v2

    move v4, v1

    invoke-virtual {v3, v4}, Ljavafx/scene/control/SpinnerValueFactory;->increment(I)V

    .line 395
    return-void
.end method

.method public final isEditable()Z
    .locals 2

    .prologue
    .line 528
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Spinner;, "Ljavafx/scene/control/Spinner<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Spinner;->editable:Ljavafx/beans/property/BooleanProperty;

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Ljavafx/scene/control/Spinner;, "Ljavafx/scene/control/Spinner<TT;>;"
    return v0

    .restart local v0    # "this":Ljavafx/scene/control/Spinner;, "Ljavafx/scene/control/Spinner<TT;>;"
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Spinner;->editable:Ljavafx/beans/property/BooleanProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/BooleanProperty;->get()Z

    move-result v1

    goto :goto_0
.end method

.method public varargs queryAccessibleAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .prologue
    .line 653
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Spinner;, "Ljavafx/scene/control/Spinner<TT;>;"
    move-object v1, p1

    .local v1, "attribute":Ljavafx/scene/AccessibleAttribute;
    move-object v2, p2

    .local v2, "parameters":[Ljava/lang/Object;
    sget-object v6, Ljavafx/scene/control/Spinner$2;->$SwitchMap$javafx$scene$AccessibleAttribute:[I

    move-object v7, v1

    invoke-virtual {v7}, Ljavafx/scene/AccessibleAttribute;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 665
    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    invoke-super {v6, v7, v8}, Ljavafx/scene/control/Control;->queryAccessibleAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    .end local v0    # "this":Ljavafx/scene/control/Spinner;, "Ljavafx/scene/control/Spinner<TT;>;"
    :goto_0
    return-object v0

    .line 655
    .restart local v0    # "this":Ljavafx/scene/control/Spinner;, "Ljavafx/scene/control/Spinner<TT;>;"
    :pswitch_0
    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/scene/control/Spinner;->getValue()Ljava/lang/Object;

    move-result-object v6

    move-object v3, v6

    .line 656
    .local v3, "value":Ljava/lang/Object;, "TT;"
    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/scene/control/Spinner;->getValueFactory()Ljavafx/scene/control/SpinnerValueFactory;

    move-result-object v6

    move-object v4, v6

    .line 657
    .local v4, "factory":Ljavafx/scene/control/SpinnerValueFactory;, "Ljavafx/scene/control/SpinnerValueFactory<TT;>;"
    move-object v6, v4

    if-eqz v6, :cond_0

    .line 658
    move-object v6, v4

    invoke-virtual {v6}, Ljavafx/scene/control/SpinnerValueFactory;->getConverter()Ljavafx/util/StringConverter;

    move-result-object v6

    move-object v5, v6

    .line 659
    .local v5, "converter":Ljavafx/util/StringConverter;, "Ljavafx/util/StringConverter<TT;>;"
    move-object v6, v5

    if-eqz v6, :cond_0

    .line 660
    move-object v6, v5

    move-object v7, v3

    invoke-virtual {v6, v7}, Ljavafx/util/StringConverter;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    move-object v0, v6

    goto :goto_0

    .line 663
    .end local v5    # "converter":Ljavafx/util/StringConverter;, "Ljavafx/util/StringConverter<TT;>;"
    :cond_0
    move-object v6, v3

    if-eqz v6, :cond_1

    move-object v6, v3

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_1
    move-object v0, v6

    goto :goto_0

    :cond_1
    const-string v6, ""

    goto :goto_1

    .line 653
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public final setEditable(Z)V
    .locals 4

    .prologue
    .line 525
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Spinner;, "Ljavafx/scene/control/Spinner<TT;>;"
    move v1, p1

    .local v1, "value":Z
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/Spinner;->editableProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v2

    move v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/BooleanProperty;->set(Z)V

    .line 526
    return-void
.end method

.method public final setValueFactory(Ljavafx/scene/control/SpinnerValueFactory;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/control/SpinnerValueFactory",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 500
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Spinner;, "Ljavafx/scene/control/Spinner<TT;>;"
    move-object v1, p1

    .local v1, "value":Ljavafx/scene/control/SpinnerValueFactory;, "Ljavafx/scene/control/SpinnerValueFactory<TT;>;"
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/Spinner;->valueFactory:Ljavafx/beans/property/ObjectProperty;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->setValue(Ljava/lang/Object;)V

    .line 501
    return-void
.end method

.method public final valueFactoryProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/scene/control/SpinnerValueFactory",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 506
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Spinner;, "Ljavafx/scene/control/Spinner<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Spinner;->valueFactory:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/Spinner;, "Ljavafx/scene/control/Spinner<TT;>;"
    return-object v0
.end method

.method public final valueProperty()Ljavafx/beans/property/ReadOnlyObjectProperty;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ReadOnlyObjectProperty",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 465
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Spinner;, "Ljavafx/scene/control/Spinner<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Spinner;->value:Ljavafx/beans/property/ReadOnlyObjectWrapper;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/Spinner;, "Ljavafx/scene/control/Spinner<TT;>;"
    return-object v0
.end method
