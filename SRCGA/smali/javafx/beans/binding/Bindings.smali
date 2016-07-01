.class public final Ljavafx/beans/binding/Bindings;
.super Ljava/lang/Object;
.source "Bindings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavafx/beans/binding/Bindings$ShortCircuitOrInvalidator;,
        Ljavafx/beans/binding/Bindings$BooleanOrBinding;,
        Ljavafx/beans/binding/Bindings$ShortCircuitAndInvalidator;,
        Ljavafx/beans/binding/Bindings$BooleanAndBinding;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 108
    const-class v0, Ljavafx/beans/binding/Bindings;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Ljavafx/beans/binding/Bindings;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 110
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/Bindings;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 111
    return-void
.end method

.method static synthetic access$400(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 108
    move-object v0, p0

    .local v0, "x0":Ljava/lang/String;
    move-object v1, v0

    invoke-static {v1}, Ljavafx/beans/binding/Bindings;->getStringSafe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "x0":Ljava/lang/String;
    return-object v0
.end method

.method public static add(DLjavafx/beans/value/ObservableNumberValue;)Ljavafx/beans/binding/DoubleBinding;
    .locals 10

    .prologue
    .line 1363
    move-wide v0, p0

    .local v0, "op1":D
    move-object v2, p2

    .local v2, "op2":Ljavafx/beans/value/ObservableNumberValue;
    move-wide v3, v0

    invoke-static {v3, v4}, Lcom/sun/javafx/binding/DoubleConstant;->valueOf(D)Lcom/sun/javafx/binding/DoubleConstant;

    move-result-object v3

    move-object v4, v2

    const/4 v5, 0x1

    new-array v5, v5, [Ljavafx/beans/Observable;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    move-object v8, v2

    aput-object v8, v6, v7

    invoke-static {v3, v4, v5}, Ljavafx/beans/binding/Bindings;->add(Ljavafx/beans/value/ObservableNumberValue;Ljavafx/beans/value/ObservableNumberValue;[Ljavafx/beans/Observable;)Ljavafx/beans/binding/NumberBinding;

    move-result-object v3

    check-cast v3, Ljavafx/beans/binding/DoubleBinding;

    move-object v0, v3

    .end local v0    # "op1":D
    return-object v0
.end method

.method public static add(Ljavafx/beans/value/ObservableNumberValue;D)Ljavafx/beans/binding/DoubleBinding;
    .locals 11

    .prologue
    .line 1346
    move-object v0, p0

    .local v0, "op1":Ljavafx/beans/value/ObservableNumberValue;
    move-wide v1, p1

    .local v1, "op2":D
    move-object v3, v0

    move-wide v4, v1

    invoke-static {v4, v5}, Lcom/sun/javafx/binding/DoubleConstant;->valueOf(D)Lcom/sun/javafx/binding/DoubleConstant;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljavafx/beans/Observable;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    move-object v8, v0

    aput-object v8, v6, v7

    invoke-static {v3, v4, v5}, Ljavafx/beans/binding/Bindings;->add(Ljavafx/beans/value/ObservableNumberValue;Ljavafx/beans/value/ObservableNumberValue;[Ljavafx/beans/Observable;)Ljavafx/beans/binding/NumberBinding;

    move-result-object v3

    check-cast v3, Ljavafx/beans/binding/DoubleBinding;

    move-object v0, v3

    .end local v0    # "op1":Ljavafx/beans/value/ObservableNumberValue;
    return-object v0
.end method

.method public static add(FLjavafx/beans/value/ObservableNumberValue;)Ljavafx/beans/binding/NumberBinding;
    .locals 9

    .prologue
    .line 1397
    move v0, p0

    .local v0, "op1":F
    move-object v1, p1

    .local v1, "op2":Ljavafx/beans/value/ObservableNumberValue;
    move v2, v0

    invoke-static {v2}, Lcom/sun/javafx/binding/FloatConstant;->valueOf(F)Lcom/sun/javafx/binding/FloatConstant;

    move-result-object v2

    move-object v3, v1

    const/4 v4, 0x1

    new-array v4, v4, [Ljavafx/beans/Observable;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    move-object v7, v1

    aput-object v7, v5, v6

    invoke-static {v2, v3, v4}, Ljavafx/beans/binding/Bindings;->add(Ljavafx/beans/value/ObservableNumberValue;Ljavafx/beans/value/ObservableNumberValue;[Ljavafx/beans/Observable;)Ljavafx/beans/binding/NumberBinding;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "op1":F
    return-object v0
.end method

.method public static add(ILjavafx/beans/value/ObservableNumberValue;)Ljavafx/beans/binding/NumberBinding;
    .locals 9

    .prologue
    .line 1465
    move v0, p0

    .local v0, "op1":I
    move-object v1, p1

    .local v1, "op2":Ljavafx/beans/value/ObservableNumberValue;
    move v2, v0

    invoke-static {v2}, Lcom/sun/javafx/binding/IntegerConstant;->valueOf(I)Lcom/sun/javafx/binding/IntegerConstant;

    move-result-object v2

    move-object v3, v1

    const/4 v4, 0x1

    new-array v4, v4, [Ljavafx/beans/Observable;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    move-object v7, v1

    aput-object v7, v5, v6

    invoke-static {v2, v3, v4}, Ljavafx/beans/binding/Bindings;->add(Ljavafx/beans/value/ObservableNumberValue;Ljavafx/beans/value/ObservableNumberValue;[Ljavafx/beans/Observable;)Ljavafx/beans/binding/NumberBinding;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "op1":I
    return-object v0
.end method

.method public static add(JLjavafx/beans/value/ObservableNumberValue;)Ljavafx/beans/binding/NumberBinding;
    .locals 10

    .prologue
    .line 1431
    move-wide v0, p0

    .local v0, "op1":J
    move-object v2, p2

    .local v2, "op2":Ljavafx/beans/value/ObservableNumberValue;
    move-wide v3, v0

    invoke-static {v3, v4}, Lcom/sun/javafx/binding/LongConstant;->valueOf(J)Lcom/sun/javafx/binding/LongConstant;

    move-result-object v3

    move-object v4, v2

    const/4 v5, 0x1

    new-array v5, v5, [Ljavafx/beans/Observable;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    move-object v8, v2

    aput-object v8, v6, v7

    invoke-static {v3, v4, v5}, Ljavafx/beans/binding/Bindings;->add(Ljavafx/beans/value/ObservableNumberValue;Ljavafx/beans/value/ObservableNumberValue;[Ljavafx/beans/Observable;)Ljavafx/beans/binding/NumberBinding;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "op1":J
    return-object v0
.end method

.method public static add(Ljavafx/beans/value/ObservableNumberValue;F)Ljavafx/beans/binding/NumberBinding;
    .locals 9

    .prologue
    .line 1380
    move-object v0, p0

    .local v0, "op1":Ljavafx/beans/value/ObservableNumberValue;
    move v1, p1

    .local v1, "op2":F
    move-object v2, v0

    move v3, v1

    invoke-static {v3}, Lcom/sun/javafx/binding/FloatConstant;->valueOf(F)Lcom/sun/javafx/binding/FloatConstant;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljavafx/beans/Observable;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    move-object v7, v0

    aput-object v7, v5, v6

    invoke-static {v2, v3, v4}, Ljavafx/beans/binding/Bindings;->add(Ljavafx/beans/value/ObservableNumberValue;Ljavafx/beans/value/ObservableNumberValue;[Ljavafx/beans/Observable;)Ljavafx/beans/binding/NumberBinding;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "op1":Ljavafx/beans/value/ObservableNumberValue;
    return-object v0
.end method

.method public static add(Ljavafx/beans/value/ObservableNumberValue;I)Ljavafx/beans/binding/NumberBinding;
    .locals 9

    .prologue
    .line 1448
    move-object v0, p0

    .local v0, "op1":Ljavafx/beans/value/ObservableNumberValue;
    move v1, p1

    .local v1, "op2":I
    move-object v2, v0

    move v3, v1

    invoke-static {v3}, Lcom/sun/javafx/binding/IntegerConstant;->valueOf(I)Lcom/sun/javafx/binding/IntegerConstant;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljavafx/beans/Observable;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    move-object v7, v0

    aput-object v7, v5, v6

    invoke-static {v2, v3, v4}, Ljavafx/beans/binding/Bindings;->add(Ljavafx/beans/value/ObservableNumberValue;Ljavafx/beans/value/ObservableNumberValue;[Ljavafx/beans/Observable;)Ljavafx/beans/binding/NumberBinding;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "op1":Ljavafx/beans/value/ObservableNumberValue;
    return-object v0
.end method

.method public static add(Ljavafx/beans/value/ObservableNumberValue;J)Ljavafx/beans/binding/NumberBinding;
    .locals 11

    .prologue
    .line 1414
    move-object v0, p0

    .local v0, "op1":Ljavafx/beans/value/ObservableNumberValue;
    move-wide v1, p1

    .local v1, "op2":J
    move-object v3, v0

    move-wide v4, v1

    invoke-static {v4, v5}, Lcom/sun/javafx/binding/LongConstant;->valueOf(J)Lcom/sun/javafx/binding/LongConstant;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljavafx/beans/Observable;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    move-object v8, v0

    aput-object v8, v6, v7

    invoke-static {v3, v4, v5}, Ljavafx/beans/binding/Bindings;->add(Ljavafx/beans/value/ObservableNumberValue;Ljavafx/beans/value/ObservableNumberValue;[Ljavafx/beans/Observable;)Ljavafx/beans/binding/NumberBinding;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "op1":Ljavafx/beans/value/ObservableNumberValue;
    return-object v0
.end method

.method public static add(Ljavafx/beans/value/ObservableNumberValue;Ljavafx/beans/value/ObservableNumberValue;)Ljavafx/beans/binding/NumberBinding;
    .locals 9

    .prologue
    .line 1329
    move-object v0, p0

    .local v0, "op1":Ljavafx/beans/value/ObservableNumberValue;
    move-object v1, p1

    .local v1, "op2":Ljavafx/beans/value/ObservableNumberValue;
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x2

    new-array v4, v4, [Ljavafx/beans/Observable;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    move-object v7, v0

    aput-object v7, v5, v6

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x1

    move-object v7, v1

    aput-object v7, v5, v6

    invoke-static {v2, v3, v4}, Ljavafx/beans/binding/Bindings;->add(Ljavafx/beans/value/ObservableNumberValue;Ljavafx/beans/value/ObservableNumberValue;[Ljavafx/beans/Observable;)Ljavafx/beans/binding/NumberBinding;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "op1":Ljavafx/beans/value/ObservableNumberValue;
    return-object v0
.end method

.method private static varargs add(Ljavafx/beans/value/ObservableNumberValue;Ljavafx/beans/value/ObservableNumberValue;[Ljavafx/beans/Observable;)Ljavafx/beans/binding/NumberBinding;
    .locals 9

    .prologue
    .line 1211
    move-object v0, p0

    .local v0, "op1":Ljavafx/beans/value/ObservableNumberValue;
    move-object v1, p1

    .local v1, "op2":Ljavafx/beans/value/ObservableNumberValue;
    move-object v2, p2

    .local v2, "dependencies":[Ljavafx/beans/Observable;
    move-object v3, v0

    if-eqz v3, :cond_0

    move-object v3, v1

    if-nez v3, :cond_1

    .line 1212
    :cond_0
    new-instance v3, Ljava/lang/NullPointerException;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    const-string v5, "Operands cannot be null."

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1214
    :cond_1
    sget-boolean v3, Ljavafx/beans/binding/Bindings;->$assertionsDisabled:Z

    if-nez v3, :cond_3

    move-object v3, v2

    if-eqz v3, :cond_2

    move-object v3, v2

    array-length v3, v3

    if-gtz v3, :cond_3

    :cond_2
    new-instance v3, Ljava/lang/AssertionError;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 1216
    :cond_3
    move-object v3, v0

    instance-of v3, v3, Ljavafx/beans/value/ObservableDoubleValue;

    if-nez v3, :cond_4

    move-object v3, v1

    instance-of v3, v3, Ljavafx/beans/value/ObservableDoubleValue;

    if-eqz v3, :cond_5

    .line 1217
    :cond_4
    new-instance v3, Ljavafx/beans/binding/Bindings$12;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v2

    move-object v6, v0

    move-object v7, v1

    invoke-direct {v4, v5, v6, v7}, Ljavafx/beans/binding/Bindings$12;-><init>([Ljavafx/beans/Observable;Ljavafx/beans/value/ObservableNumberValue;Ljavafx/beans/value/ObservableNumberValue;)V

    move-object v0, v3

    .line 1289
    .end local v0    # "op1":Ljavafx/beans/value/ObservableNumberValue;
    :goto_0
    return-object v0

    .line 1240
    .restart local v0    # "op1":Ljavafx/beans/value/ObservableNumberValue;
    :cond_5
    move-object v3, v0

    instance-of v3, v3, Ljavafx/beans/value/ObservableFloatValue;

    if-nez v3, :cond_6

    move-object v3, v1

    instance-of v3, v3, Ljavafx/beans/value/ObservableFloatValue;

    if-eqz v3, :cond_7

    .line 1241
    :cond_6
    new-instance v3, Ljavafx/beans/binding/Bindings$13;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v2

    move-object v6, v0

    move-object v7, v1

    invoke-direct {v4, v5, v6, v7}, Ljavafx/beans/binding/Bindings$13;-><init>([Ljavafx/beans/Observable;Ljavafx/beans/value/ObservableNumberValue;Ljavafx/beans/value/ObservableNumberValue;)V

    move-object v0, v3

    goto :goto_0

    .line 1264
    :cond_7
    move-object v3, v0

    instance-of v3, v3, Ljavafx/beans/value/ObservableLongValue;

    if-nez v3, :cond_8

    move-object v3, v1

    instance-of v3, v3, Ljavafx/beans/value/ObservableLongValue;

    if-eqz v3, :cond_9

    .line 1265
    :cond_8
    new-instance v3, Ljavafx/beans/binding/Bindings$14;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v2

    move-object v6, v0

    move-object v7, v1

    invoke-direct {v4, v5, v6, v7}, Ljavafx/beans/binding/Bindings$14;-><init>([Ljavafx/beans/Observable;Ljavafx/beans/value/ObservableNumberValue;Ljavafx/beans/value/ObservableNumberValue;)V

    move-object v0, v3

    goto :goto_0

    .line 1289
    :cond_9
    new-instance v3, Ljavafx/beans/binding/Bindings$15;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v2

    move-object v6, v0

    move-object v7, v1

    invoke-direct {v4, v5, v6, v7}, Ljavafx/beans/binding/Bindings$15;-><init>([Ljavafx/beans/Observable;Ljavafx/beans/value/ObservableNumberValue;Ljavafx/beans/value/ObservableNumberValue;)V

    move-object v0, v3

    goto :goto_0
.end method

.method public static and(Ljavafx/beans/value/ObservableBooleanValue;Ljavafx/beans/value/ObservableBooleanValue;)Ljavafx/beans/binding/BooleanBinding;
    .locals 7

    .prologue
    .line 4576
    move-object v0, p0

    .local v0, "op1":Ljavafx/beans/value/ObservableBooleanValue;
    move-object v1, p1

    .local v1, "op2":Ljavafx/beans/value/ObservableBooleanValue;
    move-object v2, v0

    if-eqz v2, :cond_0

    move-object v2, v1

    if-nez v2, :cond_1

    .line 4577
    :cond_0
    new-instance v2, Ljava/lang/NullPointerException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const-string v4, "Operands cannot be null."

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 4580
    :cond_1
    new-instance v2, Ljavafx/beans/binding/Bindings$BooleanAndBinding;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Ljavafx/beans/binding/Bindings$BooleanAndBinding;-><init>(Ljavafx/beans/value/ObservableBooleanValue;Ljavafx/beans/value/ObservableBooleanValue;)V

    move-object v0, v2

    .end local v0    # "op1":Ljavafx/beans/value/ObservableBooleanValue;
    return-object v0
.end method

.method public static bindBidirectional(Ljavafx/beans/property/Property;Ljavafx/beans/property/Property;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljavafx/beans/property/Property",
            "<TT;>;",
            "Ljavafx/beans/property/Property",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 757
    move-object v0, p0

    .local v0, "property1":Ljavafx/beans/property/Property;, "Ljavafx/beans/property/Property<TT;>;"
    move-object v1, p1

    .local v1, "property2":Ljavafx/beans/property/Property;, "Ljavafx/beans/property/Property<TT;>;"
    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Lcom/sun/javafx/binding/BidirectionalBinding;->bind(Ljavafx/beans/property/Property;Ljavafx/beans/property/Property;)Lcom/sun/javafx/binding/BidirectionalBinding;

    move-result-object v2

    .line 758
    return-void
.end method

.method public static bindBidirectional(Ljavafx/beans/property/Property;Ljavafx/beans/property/Property;Ljava/text/Format;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/property/Property",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljavafx/beans/property/Property",
            "<*>;",
            "Ljava/text/Format;",
            ")V"
        }
    .end annotation

    .prologue
    .line 832
    move-object v0, p0

    .local v0, "stringProperty":Ljavafx/beans/property/Property;, "Ljavafx/beans/property/Property<Ljava/lang/String;>;"
    move-object v1, p1

    .local v1, "otherProperty":Ljavafx/beans/property/Property;, "Ljavafx/beans/property/Property<*>;"
    move-object v2, p2

    .local v2, "format":Ljava/text/Format;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-static {v3, v4, v5}, Lcom/sun/javafx/binding/BidirectionalBinding;->bind(Ljavafx/beans/property/Property;Ljavafx/beans/property/Property;Ljava/text/Format;)Ljava/lang/Object;

    move-result-object v3

    .line 833
    return-void
.end method

.method public static bindBidirectional(Ljavafx/beans/property/Property;Ljavafx/beans/property/Property;Ljavafx/util/StringConverter;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljavafx/beans/property/Property",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljavafx/beans/property/Property",
            "<TT;>;",
            "Ljavafx/util/StringConverter",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 869
    move-object v0, p0

    .local v0, "stringProperty":Ljavafx/beans/property/Property;, "Ljavafx/beans/property/Property<Ljava/lang/String;>;"
    move-object v1, p1

    .local v1, "otherProperty":Ljavafx/beans/property/Property;, "Ljavafx/beans/property/Property<TT;>;"
    move-object v2, p2

    .local v2, "converter":Ljavafx/util/StringConverter;, "Ljavafx/util/StringConverter<TT;>;"
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-static {v3, v4, v5}, Lcom/sun/javafx/binding/BidirectionalBinding;->bind(Ljavafx/beans/property/Property;Ljavafx/beans/property/Property;Ljavafx/util/StringConverter;)Ljava/lang/Object;

    move-result-object v3

    .line 870
    return-void
.end method

.method public static bindContent(Ljava/util/List;Ljavafx/collections/ObservableList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TE;>;",
            "Ljavafx/collections/ObservableList",
            "<+TE;>;)V"
        }
    .end annotation

    .prologue
    .line 1020
    move-object v0, p0

    .local v0, "list1":Ljava/util/List;, "Ljava/util/List<TE;>;"
    move-object v1, p1

    .local v1, "list2":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<+TE;>;"
    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Lcom/sun/javafx/binding/ContentBinding;->bind(Ljava/util/List;Ljavafx/collections/ObservableList;)Ljava/lang/Object;

    move-result-object v2

    .line 1021
    return-void
.end method

.method public static bindContent(Ljava/util/Map;Ljavafx/collections/ObservableMap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<TK;TV;>;",
            "Ljavafx/collections/ObservableMap",
            "<+TK;+TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1076
    move-object v0, p0

    .local v0, "map1":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    move-object v1, p1

    .local v1, "map2":Ljavafx/collections/ObservableMap;, "Ljavafx/collections/ObservableMap<+TK;+TV;>;"
    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Lcom/sun/javafx/binding/ContentBinding;->bind(Ljava/util/Map;Ljavafx/collections/ObservableMap;)Ljava/lang/Object;

    move-result-object v2

    .line 1077
    return-void
.end method

.method public static bindContent(Ljava/util/Set;Ljavafx/collections/ObservableSet;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set",
            "<TE;>;",
            "Ljavafx/collections/ObservableSet",
            "<+TE;>;)V"
        }
    .end annotation

    .prologue
    .line 1047
    move-object v0, p0

    .local v0, "set1":Ljava/util/Set;, "Ljava/util/Set<TE;>;"
    move-object v1, p1

    .local v1, "set2":Ljavafx/collections/ObservableSet;, "Ljavafx/collections/ObservableSet<+TE;>;"
    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Lcom/sun/javafx/binding/ContentBinding;->bind(Ljava/util/Set;Ljavafx/collections/ObservableSet;)Ljava/lang/Object;

    move-result-object v2

    .line 1048
    return-void
.end method

.method public static bindContentBidirectional(Ljavafx/collections/ObservableList;Ljavafx/collections/ObservableList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljavafx/collections/ObservableList",
            "<TE;>;",
            "Ljavafx/collections/ObservableList",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 908
    move-object v0, p0

    .local v0, "list1":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<TE;>;"
    move-object v1, p1

    .local v1, "list2":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<TE;>;"
    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Lcom/sun/javafx/binding/BidirectionalContentBinding;->bind(Ljavafx/collections/ObservableList;Ljavafx/collections/ObservableList;)Ljava/lang/Object;

    move-result-object v2

    .line 909
    return-void
.end method

.method public static bindContentBidirectional(Ljavafx/collections/ObservableMap;Ljavafx/collections/ObservableMap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljavafx/collections/ObservableMap",
            "<TK;TV;>;",
            "Ljavafx/collections/ObservableMap",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 984
    move-object v0, p0

    .local v0, "map1":Ljavafx/collections/ObservableMap;, "Ljavafx/collections/ObservableMap<TK;TV;>;"
    move-object v1, p1

    .local v1, "map2":Ljavafx/collections/ObservableMap;, "Ljavafx/collections/ObservableMap<TK;TV;>;"
    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Lcom/sun/javafx/binding/BidirectionalContentBinding;->bind(Ljavafx/collections/ObservableMap;Ljavafx/collections/ObservableMap;)Ljava/lang/Object;

    move-result-object v2

    .line 985
    return-void
.end method

.method public static bindContentBidirectional(Ljavafx/collections/ObservableSet;Ljavafx/collections/ObservableSet;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljavafx/collections/ObservableSet",
            "<TE;>;",
            "Ljavafx/collections/ObservableSet",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 947
    move-object v0, p0

    .local v0, "set1":Ljavafx/collections/ObservableSet;, "Ljavafx/collections/ObservableSet<TE;>;"
    move-object v1, p1

    .local v1, "set2":Ljavafx/collections/ObservableSet;, "Ljavafx/collections/ObservableSet<TE;>;"
    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Lcom/sun/javafx/binding/BidirectionalContentBinding;->bind(Ljavafx/collections/ObservableSet;Ljavafx/collections/ObservableSet;)Ljava/lang/Object;

    move-result-object v2

    .line 948
    return-void
.end method

.method public static booleanValueAt(Ljavafx/collections/ObservableList;I)Ljavafx/beans/binding/BooleanBinding;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/ObservableList",
            "<",
            "Ljava/lang/Boolean;",
            ">;I)",
            "Ljavafx/beans/binding/BooleanBinding;"
        }
    .end annotation

    .prologue
    .line 6192
    move-object v0, p0

    .local v0, "op":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<Ljava/lang/Boolean;>;"
    move v1, p1

    .local v1, "index":I
    move-object v2, v0

    if-nez v2, :cond_0

    .line 6193
    new-instance v2, Ljava/lang/NullPointerException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const-string v4, "List cannot be null."

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 6195
    :cond_0
    move v2, v1

    if-gez v2, :cond_1

    .line 6196
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const-string v4, "Index cannot be negative"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 6199
    :cond_1
    new-instance v2, Ljavafx/beans/binding/Bindings$73;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    move v5, v1

    invoke-direct {v3, v4, v5}, Ljavafx/beans/binding/Bindings$73;-><init>(Ljavafx/collections/ObservableList;I)V

    move-object v0, v2

    .end local v0    # "op":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<Ljava/lang/Boolean;>;"
    return-object v0
.end method

.method public static booleanValueAt(Ljavafx/collections/ObservableList;Ljavafx/beans/value/ObservableIntegerValue;)Ljavafx/beans/binding/BooleanBinding;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/ObservableList",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljavafx/beans/value/ObservableIntegerValue;",
            ")",
            "Ljavafx/beans/binding/BooleanBinding;"
        }
    .end annotation

    .prologue
    .line 6244
    move-object v0, p0

    .local v0, "op":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<Ljava/lang/Boolean;>;"
    move-object v1, p1

    .local v1, "index":Ljavafx/beans/value/ObservableIntegerValue;
    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Ljavafx/beans/binding/Bindings;->booleanValueAt(Ljavafx/collections/ObservableList;Ljavafx/beans/value/ObservableNumberValue;)Ljavafx/beans/binding/BooleanBinding;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "op":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<Ljava/lang/Boolean;>;"
    return-object v0
.end method

.method public static booleanValueAt(Ljavafx/collections/ObservableList;Ljavafx/beans/value/ObservableNumberValue;)Ljavafx/beans/binding/BooleanBinding;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/ObservableList",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljavafx/beans/value/ObservableNumberValue;",
            ")",
            "Ljavafx/beans/binding/BooleanBinding;"
        }
    .end annotation

    .prologue
    .line 6259
    move-object v0, p0

    .local v0, "op":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<Ljava/lang/Boolean;>;"
    move-object v1, p1

    .local v1, "index":Ljavafx/beans/value/ObservableNumberValue;
    move-object v2, v0

    if-eqz v2, :cond_0

    move-object v2, v1

    if-nez v2, :cond_1

    .line 6260
    :cond_0
    new-instance v2, Ljava/lang/NullPointerException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const-string v4, "Operands cannot be null."

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 6263
    :cond_1
    new-instance v2, Ljavafx/beans/binding/Bindings$74;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Ljavafx/beans/binding/Bindings$74;-><init>(Ljavafx/collections/ObservableList;Ljavafx/beans/value/ObservableNumberValue;)V

    move-object v0, v2

    .end local v0    # "op":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<Ljava/lang/Boolean;>;"
    return-object v0
.end method

.method public static booleanValueAt(Ljavafx/collections/ObservableMap;Ljava/lang/Object;)Ljavafx/beans/binding/BooleanBinding;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljavafx/collections/ObservableMap",
            "<TK;",
            "Ljava/lang/Boolean;",
            ">;TK;)",
            "Ljavafx/beans/binding/BooleanBinding;"
        }
    .end annotation

    .prologue
    .line 7487
    move-object v0, p0

    .local v0, "op":Ljavafx/collections/ObservableMap;, "Ljavafx/collections/ObservableMap<TK;Ljava/lang/Boolean;>;"
    move-object v1, p1

    .local v1, "key":Ljava/lang/Object;, "TK;"
    move-object v2, v0

    if-nez v2, :cond_0

    .line 7488
    new-instance v2, Ljava/lang/NullPointerException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const-string v4, "Map cannot be null."

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 7491
    :cond_0
    new-instance v2, Ljavafx/beans/binding/Bindings$98;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Ljavafx/beans/binding/Bindings$98;-><init>(Ljavafx/collections/ObservableMap;Ljava/lang/Object;)V

    move-object v0, v2

    .end local v0    # "op":Ljavafx/collections/ObservableMap;, "Ljavafx/collections/ObservableMap<TK;Ljava/lang/Boolean;>;"
    return-object v0
.end method

.method public static booleanValueAt(Ljavafx/collections/ObservableMap;Ljavafx/beans/value/ObservableValue;)Ljavafx/beans/binding/BooleanBinding;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljavafx/collections/ObservableMap",
            "<TK;",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljavafx/beans/value/ObservableValue",
            "<+TK;>;)",
            "Ljavafx/beans/binding/BooleanBinding;"
        }
    .end annotation

    .prologue
    .line 7541
    move-object v0, p0

    .local v0, "op":Ljavafx/collections/ObservableMap;, "Ljavafx/collections/ObservableMap<TK;Ljava/lang/Boolean;>;"
    move-object v1, p1

    .local v1, "key":Ljavafx/beans/value/ObservableValue;, "Ljavafx/beans/value/ObservableValue<+TK;>;"
    move-object v2, v0

    if-eqz v2, :cond_0

    move-object v2, v1

    if-nez v2, :cond_1

    .line 7542
    :cond_0
    new-instance v2, Ljava/lang/NullPointerException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const-string v4, "Operands cannot be null."

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 7545
    :cond_1
    new-instance v2, Ljavafx/beans/binding/Bindings$99;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Ljavafx/beans/binding/Bindings$99;-><init>(Ljavafx/collections/ObservableMap;Ljavafx/beans/value/ObservableValue;)V

    move-object v0, v2

    .end local v0    # "op":Ljavafx/collections/ObservableMap;, "Ljavafx/collections/ObservableMap<TK;Ljava/lang/Boolean;>;"
    return-object v0
.end method

.method public static varargs concat([Ljava/lang/Object;)Ljavafx/beans/binding/StringExpression;
    .locals 2

    .prologue
    .line 4823
    move-object v0, p0

    .local v0, "args":[Ljava/lang/Object;
    move-object v1, v0

    invoke-static {v1}, Lcom/sun/javafx/binding/StringFormatter;->concat([Ljava/lang/Object;)Ljavafx/beans/binding/StringExpression;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "args":[Ljava/lang/Object;
    return-object v0
.end method

.method public static convert(Ljavafx/beans/value/ObservableValue;)Ljavafx/beans/binding/StringExpression;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/value/ObservableValue",
            "<*>;)",
            "Ljavafx/beans/binding/StringExpression;"
        }
    .end annotation

    .prologue
    .line 4802
    move-object v0, p0

    .local v0, "observableValue":Ljavafx/beans/value/ObservableValue;, "Ljavafx/beans/value/ObservableValue<*>;"
    move-object v1, v0

    invoke-static {v1}, Lcom/sun/javafx/binding/StringFormatter;->convert(Ljavafx/beans/value/ObservableValue;)Ljavafx/beans/binding/StringExpression;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "observableValue":Ljavafx/beans/value/ObservableValue;, "Ljavafx/beans/value/ObservableValue<*>;"
    return-object v0
.end method

.method public static varargs createBooleanBinding(Ljava/util/concurrent/Callable;[Ljavafx/beans/Observable;)Ljavafx/beans/binding/BooleanBinding;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable",
            "<",
            "Ljava/lang/Boolean;",
            ">;[",
            "Ljavafx/beans/Observable;",
            ")",
            "Ljavafx/beans/binding/BooleanBinding;"
        }
    .end annotation

    .prologue
    .line 125
    move-object v0, p0

    .local v0, "func":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<Ljava/lang/Boolean;>;"
    move-object v1, p1

    .local v1, "dependencies":[Ljavafx/beans/Observable;
    new-instance v2, Ljavafx/beans/binding/Bindings$1;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v1

    move-object v5, v0

    invoke-direct {v3, v4, v5}, Ljavafx/beans/binding/Bindings$1;-><init>([Ljavafx/beans/Observable;Ljava/util/concurrent/Callable;)V

    move-object v0, v2

    .end local v0    # "func":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<Ljava/lang/Boolean;>;"
    return-object v0
.end method

.method public static varargs createDoubleBinding(Ljava/util/concurrent/Callable;[Ljavafx/beans/Observable;)Ljavafx/beans/binding/DoubleBinding;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable",
            "<",
            "Ljava/lang/Double;",
            ">;[",
            "Ljavafx/beans/Observable;",
            ")",
            "Ljavafx/beans/binding/DoubleBinding;"
        }
    .end annotation

    .prologue
    .line 166
    move-object v0, p0

    .local v0, "func":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<Ljava/lang/Double;>;"
    move-object v1, p1

    .local v1, "dependencies":[Ljavafx/beans/Observable;
    new-instance v2, Ljavafx/beans/binding/Bindings$2;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v1

    move-object v5, v0

    invoke-direct {v3, v4, v5}, Ljavafx/beans/binding/Bindings$2;-><init>([Ljavafx/beans/Observable;Ljava/util/concurrent/Callable;)V

    move-object v0, v2

    .end local v0    # "func":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<Ljava/lang/Double;>;"
    return-object v0
.end method

.method public static varargs createFloatBinding(Ljava/util/concurrent/Callable;[Ljavafx/beans/Observable;)Ljavafx/beans/binding/FloatBinding;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable",
            "<",
            "Ljava/lang/Float;",
            ">;[",
            "Ljavafx/beans/Observable;",
            ")",
            "Ljavafx/beans/binding/FloatBinding;"
        }
    .end annotation

    .prologue
    .line 207
    move-object v0, p0

    .local v0, "func":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<Ljava/lang/Float;>;"
    move-object v1, p1

    .local v1, "dependencies":[Ljavafx/beans/Observable;
    new-instance v2, Ljavafx/beans/binding/Bindings$3;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v1

    move-object v5, v0

    invoke-direct {v3, v4, v5}, Ljavafx/beans/binding/Bindings$3;-><init>([Ljavafx/beans/Observable;Ljava/util/concurrent/Callable;)V

    move-object v0, v2

    .end local v0    # "func":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<Ljava/lang/Float;>;"
    return-object v0
.end method

.method public static varargs createIntegerBinding(Ljava/util/concurrent/Callable;[Ljavafx/beans/Observable;)Ljavafx/beans/binding/IntegerBinding;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable",
            "<",
            "Ljava/lang/Integer;",
            ">;[",
            "Ljavafx/beans/Observable;",
            ")",
            "Ljavafx/beans/binding/IntegerBinding;"
        }
    .end annotation

    .prologue
    .line 248
    move-object v0, p0

    .local v0, "func":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<Ljava/lang/Integer;>;"
    move-object v1, p1

    .local v1, "dependencies":[Ljavafx/beans/Observable;
    new-instance v2, Ljavafx/beans/binding/Bindings$4;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v1

    move-object v5, v0

    invoke-direct {v3, v4, v5}, Ljavafx/beans/binding/Bindings$4;-><init>([Ljavafx/beans/Observable;Ljava/util/concurrent/Callable;)V

    move-object v0, v2

    .end local v0    # "func":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<Ljava/lang/Integer;>;"
    return-object v0
.end method

.method public static varargs createLongBinding(Ljava/util/concurrent/Callable;[Ljavafx/beans/Observable;)Ljavafx/beans/binding/LongBinding;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable",
            "<",
            "Ljava/lang/Long;",
            ">;[",
            "Ljavafx/beans/Observable;",
            ")",
            "Ljavafx/beans/binding/LongBinding;"
        }
    .end annotation

    .prologue
    .line 289
    move-object v0, p0

    .local v0, "func":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<Ljava/lang/Long;>;"
    move-object v1, p1

    .local v1, "dependencies":[Ljavafx/beans/Observable;
    new-instance v2, Ljavafx/beans/binding/Bindings$5;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v1

    move-object v5, v0

    invoke-direct {v3, v4, v5}, Ljavafx/beans/binding/Bindings$5;-><init>([Ljavafx/beans/Observable;Ljava/util/concurrent/Callable;)V

    move-object v0, v2

    .end local v0    # "func":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<Ljava/lang/Long;>;"
    return-object v0
.end method

.method public static varargs createObjectBinding(Ljava/util/concurrent/Callable;[Ljavafx/beans/Observable;)Ljavafx/beans/binding/ObjectBinding;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable",
            "<TT;>;[",
            "Ljavafx/beans/Observable;",
            ")",
            "Ljavafx/beans/binding/ObjectBinding",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 330
    move-object v0, p0

    .local v0, "func":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TT;>;"
    move-object v1, p1

    .local v1, "dependencies":[Ljavafx/beans/Observable;
    new-instance v2, Ljavafx/beans/binding/Bindings$6;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v1

    move-object v5, v0

    invoke-direct {v3, v4, v5}, Ljavafx/beans/binding/Bindings$6;-><init>([Ljavafx/beans/Observable;Ljava/util/concurrent/Callable;)V

    move-object v0, v2

    .end local v0    # "func":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TT;>;"
    return-object v0
.end method

.method public static varargs createStringBinding(Ljava/util/concurrent/Callable;[Ljavafx/beans/Observable;)Ljavafx/beans/binding/StringBinding;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable",
            "<",
            "Ljava/lang/String;",
            ">;[",
            "Ljavafx/beans/Observable;",
            ")",
            "Ljavafx/beans/binding/StringBinding;"
        }
    .end annotation

    .prologue
    .line 371
    move-object v0, p0

    .local v0, "func":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<Ljava/lang/String;>;"
    move-object v1, p1

    .local v1, "dependencies":[Ljavafx/beans/Observable;
    new-instance v2, Ljavafx/beans/binding/Bindings$7;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v1

    move-object v5, v0

    invoke-direct {v3, v4, v5}, Ljavafx/beans/binding/Bindings$7;-><init>([Ljavafx/beans/Observable;Ljava/util/concurrent/Callable;)V

    move-object v0, v2

    .end local v0    # "func":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<Ljava/lang/String;>;"
    return-object v0
.end method

.method public static divide(DLjavafx/beans/value/ObservableNumberValue;)Ljavafx/beans/binding/DoubleBinding;
    .locals 10

    .prologue
    .line 2146
    move-wide v0, p0

    .local v0, "op1":D
    move-object v2, p2

    .local v2, "op2":Ljavafx/beans/value/ObservableNumberValue;
    move-wide v3, v0

    invoke-static {v3, v4}, Lcom/sun/javafx/binding/DoubleConstant;->valueOf(D)Lcom/sun/javafx/binding/DoubleConstant;

    move-result-object v3

    move-object v4, v2

    const/4 v5, 0x1

    new-array v5, v5, [Ljavafx/beans/Observable;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    move-object v8, v2

    aput-object v8, v6, v7

    invoke-static {v3, v4, v5}, Ljavafx/beans/binding/Bindings;->divide(Ljavafx/beans/value/ObservableNumberValue;Ljavafx/beans/value/ObservableNumberValue;[Ljavafx/beans/Observable;)Ljavafx/beans/binding/NumberBinding;

    move-result-object v3

    check-cast v3, Ljavafx/beans/binding/DoubleBinding;

    move-object v0, v3

    .end local v0    # "op1":D
    return-object v0
.end method

.method public static divide(Ljavafx/beans/value/ObservableNumberValue;D)Ljavafx/beans/binding/DoubleBinding;
    .locals 11

    .prologue
    .line 2129
    move-object v0, p0

    .local v0, "op1":Ljavafx/beans/value/ObservableNumberValue;
    move-wide v1, p1

    .local v1, "op2":D
    move-object v3, v0

    move-wide v4, v1

    invoke-static {v4, v5}, Lcom/sun/javafx/binding/DoubleConstant;->valueOf(D)Lcom/sun/javafx/binding/DoubleConstant;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljavafx/beans/Observable;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    move-object v8, v0

    aput-object v8, v6, v7

    invoke-static {v3, v4, v5}, Ljavafx/beans/binding/Bindings;->divide(Ljavafx/beans/value/ObservableNumberValue;Ljavafx/beans/value/ObservableNumberValue;[Ljavafx/beans/Observable;)Ljavafx/beans/binding/NumberBinding;

    move-result-object v3

    check-cast v3, Ljavafx/beans/binding/DoubleBinding;

    move-object v0, v3

    .end local v0    # "op1":Ljavafx/beans/value/ObservableNumberValue;
    return-object v0
.end method

.method public static divide(FLjavafx/beans/value/ObservableNumberValue;)Ljavafx/beans/binding/NumberBinding;
    .locals 9

    .prologue
    .line 2180
    move v0, p0

    .local v0, "op1":F
    move-object v1, p1

    .local v1, "op2":Ljavafx/beans/value/ObservableNumberValue;
    move v2, v0

    invoke-static {v2}, Lcom/sun/javafx/binding/FloatConstant;->valueOf(F)Lcom/sun/javafx/binding/FloatConstant;

    move-result-object v2

    move-object v3, v1

    const/4 v4, 0x1

    new-array v4, v4, [Ljavafx/beans/Observable;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    move-object v7, v1

    aput-object v7, v5, v6

    invoke-static {v2, v3, v4}, Ljavafx/beans/binding/Bindings;->divide(Ljavafx/beans/value/ObservableNumberValue;Ljavafx/beans/value/ObservableNumberValue;[Ljavafx/beans/Observable;)Ljavafx/beans/binding/NumberBinding;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "op1":F
    return-object v0
.end method

.method public static divide(ILjavafx/beans/value/ObservableNumberValue;)Ljavafx/beans/binding/NumberBinding;
    .locals 9

    .prologue
    .line 2248
    move v0, p0

    .local v0, "op1":I
    move-object v1, p1

    .local v1, "op2":Ljavafx/beans/value/ObservableNumberValue;
    move v2, v0

    invoke-static {v2}, Lcom/sun/javafx/binding/IntegerConstant;->valueOf(I)Lcom/sun/javafx/binding/IntegerConstant;

    move-result-object v2

    move-object v3, v1

    const/4 v4, 0x1

    new-array v4, v4, [Ljavafx/beans/Observable;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    move-object v7, v1

    aput-object v7, v5, v6

    invoke-static {v2, v3, v4}, Ljavafx/beans/binding/Bindings;->divide(Ljavafx/beans/value/ObservableNumberValue;Ljavafx/beans/value/ObservableNumberValue;[Ljavafx/beans/Observable;)Ljavafx/beans/binding/NumberBinding;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "op1":I
    return-object v0
.end method

.method public static divide(JLjavafx/beans/value/ObservableNumberValue;)Ljavafx/beans/binding/NumberBinding;
    .locals 10

    .prologue
    .line 2214
    move-wide v0, p0

    .local v0, "op1":J
    move-object v2, p2

    .local v2, "op2":Ljavafx/beans/value/ObservableNumberValue;
    move-wide v3, v0

    invoke-static {v3, v4}, Lcom/sun/javafx/binding/LongConstant;->valueOf(J)Lcom/sun/javafx/binding/LongConstant;

    move-result-object v3

    move-object v4, v2

    const/4 v5, 0x1

    new-array v5, v5, [Ljavafx/beans/Observable;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    move-object v8, v2

    aput-object v8, v6, v7

    invoke-static {v3, v4, v5}, Ljavafx/beans/binding/Bindings;->divide(Ljavafx/beans/value/ObservableNumberValue;Ljavafx/beans/value/ObservableNumberValue;[Ljavafx/beans/Observable;)Ljavafx/beans/binding/NumberBinding;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "op1":J
    return-object v0
.end method

.method public static divide(Ljavafx/beans/value/ObservableNumberValue;F)Ljavafx/beans/binding/NumberBinding;
    .locals 9

    .prologue
    .line 2163
    move-object v0, p0

    .local v0, "op1":Ljavafx/beans/value/ObservableNumberValue;
    move v1, p1

    .local v1, "op2":F
    move-object v2, v0

    move v3, v1

    invoke-static {v3}, Lcom/sun/javafx/binding/FloatConstant;->valueOf(F)Lcom/sun/javafx/binding/FloatConstant;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljavafx/beans/Observable;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    move-object v7, v0

    aput-object v7, v5, v6

    invoke-static {v2, v3, v4}, Ljavafx/beans/binding/Bindings;->divide(Ljavafx/beans/value/ObservableNumberValue;Ljavafx/beans/value/ObservableNumberValue;[Ljavafx/beans/Observable;)Ljavafx/beans/binding/NumberBinding;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "op1":Ljavafx/beans/value/ObservableNumberValue;
    return-object v0
.end method

.method public static divide(Ljavafx/beans/value/ObservableNumberValue;I)Ljavafx/beans/binding/NumberBinding;
    .locals 9

    .prologue
    .line 2231
    move-object v0, p0

    .local v0, "op1":Ljavafx/beans/value/ObservableNumberValue;
    move v1, p1

    .local v1, "op2":I
    move-object v2, v0

    move v3, v1

    invoke-static {v3}, Lcom/sun/javafx/binding/IntegerConstant;->valueOf(I)Lcom/sun/javafx/binding/IntegerConstant;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljavafx/beans/Observable;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    move-object v7, v0

    aput-object v7, v5, v6

    invoke-static {v2, v3, v4}, Ljavafx/beans/binding/Bindings;->divide(Ljavafx/beans/value/ObservableNumberValue;Ljavafx/beans/value/ObservableNumberValue;[Ljavafx/beans/Observable;)Ljavafx/beans/binding/NumberBinding;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "op1":Ljavafx/beans/value/ObservableNumberValue;
    return-object v0
.end method

.method public static divide(Ljavafx/beans/value/ObservableNumberValue;J)Ljavafx/beans/binding/NumberBinding;
    .locals 11

    .prologue
    .line 2197
    move-object v0, p0

    .local v0, "op1":Ljavafx/beans/value/ObservableNumberValue;
    move-wide v1, p1

    .local v1, "op2":J
    move-object v3, v0

    move-wide v4, v1

    invoke-static {v4, v5}, Lcom/sun/javafx/binding/LongConstant;->valueOf(J)Lcom/sun/javafx/binding/LongConstant;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljavafx/beans/Observable;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    move-object v8, v0

    aput-object v8, v6, v7

    invoke-static {v3, v4, v5}, Ljavafx/beans/binding/Bindings;->divide(Ljavafx/beans/value/ObservableNumberValue;Ljavafx/beans/value/ObservableNumberValue;[Ljavafx/beans/Observable;)Ljavafx/beans/binding/NumberBinding;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "op1":Ljavafx/beans/value/ObservableNumberValue;
    return-object v0
.end method

.method public static divide(Ljavafx/beans/value/ObservableNumberValue;Ljavafx/beans/value/ObservableNumberValue;)Ljavafx/beans/binding/NumberBinding;
    .locals 9

    .prologue
    .line 2112
    move-object v0, p0

    .local v0, "op1":Ljavafx/beans/value/ObservableNumberValue;
    move-object v1, p1

    .local v1, "op2":Ljavafx/beans/value/ObservableNumberValue;
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x2

    new-array v4, v4, [Ljavafx/beans/Observable;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    move-object v7, v0

    aput-object v7, v5, v6

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x1

    move-object v7, v1

    aput-object v7, v5, v6

    invoke-static {v2, v3, v4}, Ljavafx/beans/binding/Bindings;->divide(Ljavafx/beans/value/ObservableNumberValue;Ljavafx/beans/value/ObservableNumberValue;[Ljavafx/beans/Observable;)Ljavafx/beans/binding/NumberBinding;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "op1":Ljavafx/beans/value/ObservableNumberValue;
    return-object v0
.end method

.method private static varargs divide(Ljavafx/beans/value/ObservableNumberValue;Ljavafx/beans/value/ObservableNumberValue;[Ljavafx/beans/Observable;)Ljavafx/beans/binding/NumberBinding;
    .locals 9

    .prologue
    .line 1994
    move-object v0, p0

    .local v0, "op1":Ljavafx/beans/value/ObservableNumberValue;
    move-object v1, p1

    .local v1, "op2":Ljavafx/beans/value/ObservableNumberValue;
    move-object v2, p2

    .local v2, "dependencies":[Ljavafx/beans/Observable;
    move-object v3, v0

    if-eqz v3, :cond_0

    move-object v3, v1

    if-nez v3, :cond_1

    .line 1995
    :cond_0
    new-instance v3, Ljava/lang/NullPointerException;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    const-string v5, "Operands cannot be null."

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1997
    :cond_1
    sget-boolean v3, Ljavafx/beans/binding/Bindings;->$assertionsDisabled:Z

    if-nez v3, :cond_3

    move-object v3, v2

    if-eqz v3, :cond_2

    move-object v3, v2

    array-length v3, v3

    if-gtz v3, :cond_3

    :cond_2
    new-instance v3, Ljava/lang/AssertionError;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 1999
    :cond_3
    move-object v3, v0

    instance-of v3, v3, Ljavafx/beans/value/ObservableDoubleValue;

    if-nez v3, :cond_4

    move-object v3, v1

    instance-of v3, v3, Ljavafx/beans/value/ObservableDoubleValue;

    if-eqz v3, :cond_5

    .line 2000
    :cond_4
    new-instance v3, Ljavafx/beans/binding/Bindings$24;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v2

    move-object v6, v0

    move-object v7, v1

    invoke-direct {v4, v5, v6, v7}, Ljavafx/beans/binding/Bindings$24;-><init>([Ljavafx/beans/Observable;Ljavafx/beans/value/ObservableNumberValue;Ljavafx/beans/value/ObservableNumberValue;)V

    move-object v0, v3

    .line 2072
    .end local v0    # "op1":Ljavafx/beans/value/ObservableNumberValue;
    :goto_0
    return-object v0

    .line 2023
    .restart local v0    # "op1":Ljavafx/beans/value/ObservableNumberValue;
    :cond_5
    move-object v3, v0

    instance-of v3, v3, Ljavafx/beans/value/ObservableFloatValue;

    if-nez v3, :cond_6

    move-object v3, v1

    instance-of v3, v3, Ljavafx/beans/value/ObservableFloatValue;

    if-eqz v3, :cond_7

    .line 2024
    :cond_6
    new-instance v3, Ljavafx/beans/binding/Bindings$25;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v2

    move-object v6, v0

    move-object v7, v1

    invoke-direct {v4, v5, v6, v7}, Ljavafx/beans/binding/Bindings$25;-><init>([Ljavafx/beans/Observable;Ljavafx/beans/value/ObservableNumberValue;Ljavafx/beans/value/ObservableNumberValue;)V

    move-object v0, v3

    goto :goto_0

    .line 2047
    :cond_7
    move-object v3, v0

    instance-of v3, v3, Ljavafx/beans/value/ObservableLongValue;

    if-nez v3, :cond_8

    move-object v3, v1

    instance-of v3, v3, Ljavafx/beans/value/ObservableLongValue;

    if-eqz v3, :cond_9

    .line 2048
    :cond_8
    new-instance v3, Ljavafx/beans/binding/Bindings$26;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v2

    move-object v6, v0

    move-object v7, v1

    invoke-direct {v4, v5, v6, v7}, Ljavafx/beans/binding/Bindings$26;-><init>([Ljavafx/beans/Observable;Ljavafx/beans/value/ObservableNumberValue;Ljavafx/beans/value/ObservableNumberValue;)V

    move-object v0, v3

    goto :goto_0

    .line 2072
    :cond_9
    new-instance v3, Ljavafx/beans/binding/Bindings$27;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v2

    move-object v6, v0

    move-object v7, v1

    invoke-direct {v4, v5, v6, v7}, Ljavafx/beans/binding/Bindings$27;-><init>([Ljavafx/beans/Observable;Ljavafx/beans/value/ObservableNumberValue;Ljavafx/beans/value/ObservableNumberValue;)V

    move-object v0, v3

    goto :goto_0
.end method

.method public static doubleValueAt(Ljavafx/collections/ObservableList;I)Ljavafx/beans/binding/DoubleBinding;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/ObservableList",
            "<+",
            "Ljava/lang/Number;",
            ">;I)",
            "Ljavafx/beans/binding/DoubleBinding;"
        }
    .end annotation

    .prologue
    .line 6309
    move-object v0, p0

    .local v0, "op":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<+Ljava/lang/Number;>;"
    move v1, p1

    .local v1, "index":I
    move-object v2, v0

    if-nez v2, :cond_0

    .line 6310
    new-instance v2, Ljava/lang/NullPointerException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const-string v4, "List cannot be null."

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 6312
    :cond_0
    move v2, v1

    if-gez v2, :cond_1

    .line 6313
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const-string v4, "Index cannot be negative"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 6316
    :cond_1
    new-instance v2, Ljavafx/beans/binding/Bindings$75;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    move v5, v1

    invoke-direct {v3, v4, v5}, Ljavafx/beans/binding/Bindings$75;-><init>(Ljavafx/collections/ObservableList;I)V

    move-object v0, v2

    .end local v0    # "op":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<+Ljava/lang/Number;>;"
    return-object v0
.end method

.method public static doubleValueAt(Ljavafx/collections/ObservableList;Ljavafx/beans/value/ObservableIntegerValue;)Ljavafx/beans/binding/DoubleBinding;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/ObservableList",
            "<+",
            "Ljava/lang/Number;",
            ">;",
            "Ljavafx/beans/value/ObservableIntegerValue;",
            ")",
            "Ljavafx/beans/binding/DoubleBinding;"
        }
    .end annotation

    .prologue
    .line 6361
    move-object v0, p0

    .local v0, "op":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<+Ljava/lang/Number;>;"
    move-object v1, p1

    .local v1, "index":Ljavafx/beans/value/ObservableIntegerValue;
    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Ljavafx/beans/binding/Bindings;->doubleValueAt(Ljavafx/collections/ObservableList;Ljavafx/beans/value/ObservableNumberValue;)Ljavafx/beans/binding/DoubleBinding;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "op":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<+Ljava/lang/Number;>;"
    return-object v0
.end method

.method public static doubleValueAt(Ljavafx/collections/ObservableList;Ljavafx/beans/value/ObservableNumberValue;)Ljavafx/beans/binding/DoubleBinding;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/ObservableList",
            "<+",
            "Ljava/lang/Number;",
            ">;",
            "Ljavafx/beans/value/ObservableNumberValue;",
            ")",
            "Ljavafx/beans/binding/DoubleBinding;"
        }
    .end annotation

    .prologue
    .line 6376
    move-object v0, p0

    .local v0, "op":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<+Ljava/lang/Number;>;"
    move-object v1, p1

    .local v1, "index":Ljavafx/beans/value/ObservableNumberValue;
    move-object v2, v0

    if-eqz v2, :cond_0

    move-object v2, v1

    if-nez v2, :cond_1

    .line 6377
    :cond_0
    new-instance v2, Ljava/lang/NullPointerException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const-string v4, "Operands cannot be null."

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 6380
    :cond_1
    new-instance v2, Ljavafx/beans/binding/Bindings$76;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Ljavafx/beans/binding/Bindings$76;-><init>(Ljavafx/collections/ObservableList;Ljavafx/beans/value/ObservableNumberValue;)V

    move-object v0, v2

    .end local v0    # "op":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<+Ljava/lang/Number;>;"
    return-object v0
.end method

.method public static doubleValueAt(Ljavafx/collections/ObservableMap;Ljava/lang/Object;)Ljavafx/beans/binding/DoubleBinding;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljavafx/collections/ObservableMap",
            "<TK;+",
            "Ljava/lang/Number;",
            ">;TK;)",
            "Ljavafx/beans/binding/DoubleBinding;"
        }
    .end annotation

    .prologue
    .line 7595
    move-object v0, p0

    .local v0, "op":Ljavafx/collections/ObservableMap;, "Ljavafx/collections/ObservableMap<TK;+Ljava/lang/Number;>;"
    move-object v1, p1

    .local v1, "key":Ljava/lang/Object;, "TK;"
    move-object v2, v0

    if-nez v2, :cond_0

    .line 7596
    new-instance v2, Ljava/lang/NullPointerException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const-string v4, "Map cannot be null."

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 7599
    :cond_0
    new-instance v2, Ljavafx/beans/binding/Bindings$100;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Ljavafx/beans/binding/Bindings$100;-><init>(Ljavafx/collections/ObservableMap;Ljava/lang/Object;)V

    move-object v0, v2

    .end local v0    # "op":Ljavafx/collections/ObservableMap;, "Ljavafx/collections/ObservableMap<TK;+Ljava/lang/Number;>;"
    return-object v0
.end method

.method public static doubleValueAt(Ljavafx/collections/ObservableMap;Ljavafx/beans/value/ObservableValue;)Ljavafx/beans/binding/DoubleBinding;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljavafx/collections/ObservableMap",
            "<TK;+",
            "Ljava/lang/Number;",
            ">;",
            "Ljavafx/beans/value/ObservableValue",
            "<+TK;>;)",
            "Ljavafx/beans/binding/DoubleBinding;"
        }
    .end annotation

    .prologue
    .line 7649
    move-object v0, p0

    .local v0, "op":Ljavafx/collections/ObservableMap;, "Ljavafx/collections/ObservableMap<TK;+Ljava/lang/Number;>;"
    move-object v1, p1

    .local v1, "key":Ljavafx/beans/value/ObservableValue;, "Ljavafx/beans/value/ObservableValue<+TK;>;"
    move-object v2, v0

    if-eqz v2, :cond_0

    move-object v2, v1

    if-nez v2, :cond_1

    .line 7650
    :cond_0
    new-instance v2, Ljava/lang/NullPointerException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const-string v4, "Operands cannot be null."

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 7653
    :cond_1
    new-instance v2, Ljavafx/beans/binding/Bindings$101;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Ljavafx/beans/binding/Bindings$101;-><init>(Ljavafx/collections/ObservableMap;Ljavafx/beans/value/ObservableValue;)V

    move-object v0, v2

    .end local v0    # "op":Ljavafx/collections/ObservableMap;, "Ljavafx/collections/ObservableMap<TK;+Ljava/lang/Number;>;"
    return-object v0
.end method

.method public static equal(DLjavafx/beans/value/ObservableNumberValue;D)Ljavafx/beans/binding/BooleanBinding;
    .locals 15

    .prologue
    .line 2453
    move-wide v1, p0

    .local v1, "op1":D
    move-object/from16 v3, p2

    .local v3, "op2":Ljavafx/beans/value/ObservableNumberValue;
    move-wide/from16 v4, p3

    .local v4, "epsilon":D
    move-wide v6, v1

    invoke-static {v6, v7}, Lcom/sun/javafx/binding/DoubleConstant;->valueOf(D)Lcom/sun/javafx/binding/DoubleConstant;

    move-result-object v6

    move-object v7, v3

    move-wide v8, v4

    const/4 v10, 0x1

    new-array v10, v10, [Ljavafx/beans/Observable;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    const/4 v12, 0x0

    move-object v13, v3

    aput-object v13, v11, v12

    invoke-static {v6, v7, v8, v9, v10}, Ljavafx/beans/binding/Bindings;->equal(Ljavafx/beans/value/ObservableNumberValue;Ljavafx/beans/value/ObservableNumberValue;D[Ljavafx/beans/Observable;)Ljavafx/beans/binding/BooleanBinding;

    move-result-object v6

    move-object v1, v6

    .end local v1    # "op1":D
    return-object v1
.end method

.method public static equal(FLjavafx/beans/value/ObservableNumberValue;D)Ljavafx/beans/binding/BooleanBinding;
    .locals 14

    .prologue
    .line 2503
    move v0, p0

    .local v0, "op1":F
    move-object v1, p1

    .local v1, "op2":Ljavafx/beans/value/ObservableNumberValue;
    move-wide/from16 v2, p2

    .local v2, "epsilon":D
    move v4, v0

    invoke-static {v4}, Lcom/sun/javafx/binding/FloatConstant;->valueOf(F)Lcom/sun/javafx/binding/FloatConstant;

    move-result-object v4

    move-object v5, v1

    move-wide v6, v2

    const/4 v8, 0x1

    new-array v8, v8, [Ljavafx/beans/Observable;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/4 v10, 0x0

    move-object v11, v1

    aput-object v11, v9, v10

    invoke-static {v4, v5, v6, v7, v8}, Ljavafx/beans/binding/Bindings;->equal(Ljavafx/beans/value/ObservableNumberValue;Ljavafx/beans/value/ObservableNumberValue;D[Ljavafx/beans/Observable;)Ljavafx/beans/binding/BooleanBinding;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "op1":F
    return-object v0
.end method

.method public static equal(ILjavafx/beans/value/ObservableNumberValue;)Ljavafx/beans/binding/BooleanBinding;
    .locals 11

    .prologue
    .line 2687
    move v0, p0

    .local v0, "op1":I
    move-object v1, p1

    .local v1, "op2":Ljavafx/beans/value/ObservableNumberValue;
    move v2, v0

    invoke-static {v2}, Lcom/sun/javafx/binding/IntegerConstant;->valueOf(I)Lcom/sun/javafx/binding/IntegerConstant;

    move-result-object v2

    move-object v3, v1

    const-wide/16 v4, 0x0

    const/4 v6, 0x1

    new-array v6, v6, [Ljavafx/beans/Observable;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x0

    move-object v9, v1

    aput-object v9, v7, v8

    invoke-static {v2, v3, v4, v5, v6}, Ljavafx/beans/binding/Bindings;->equal(Ljavafx/beans/value/ObservableNumberValue;Ljavafx/beans/value/ObservableNumberValue;D[Ljavafx/beans/Observable;)Ljavafx/beans/binding/BooleanBinding;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "op1":I
    return-object v0
.end method

.method public static equal(ILjavafx/beans/value/ObservableNumberValue;D)Ljavafx/beans/binding/BooleanBinding;
    .locals 14

    .prologue
    .line 2666
    move v0, p0

    .local v0, "op1":I
    move-object v1, p1

    .local v1, "op2":Ljavafx/beans/value/ObservableNumberValue;
    move-wide/from16 v2, p2

    .local v2, "epsilon":D
    move v4, v0

    invoke-static {v4}, Lcom/sun/javafx/binding/IntegerConstant;->valueOf(I)Lcom/sun/javafx/binding/IntegerConstant;

    move-result-object v4

    move-object v5, v1

    move-wide v6, v2

    const/4 v8, 0x1

    new-array v8, v8, [Ljavafx/beans/Observable;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/4 v10, 0x0

    move-object v11, v1

    aput-object v11, v9, v10

    invoke-static {v4, v5, v6, v7, v8}, Ljavafx/beans/binding/Bindings;->equal(Ljavafx/beans/value/ObservableNumberValue;Ljavafx/beans/value/ObservableNumberValue;D[Ljavafx/beans/Observable;)Ljavafx/beans/binding/BooleanBinding;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "op1":I
    return-object v0
.end method

.method public static equal(JLjavafx/beans/value/ObservableNumberValue;)Ljavafx/beans/binding/BooleanBinding;
    .locals 14

    .prologue
    .line 2595
    move-wide v1, p0

    .local v1, "op1":J
    move-object/from16 v3, p2

    .local v3, "op2":Ljavafx/beans/value/ObservableNumberValue;
    move-wide v4, v1

    invoke-static {v4, v5}, Lcom/sun/javafx/binding/LongConstant;->valueOf(J)Lcom/sun/javafx/binding/LongConstant;

    move-result-object v4

    move-object v5, v3

    const-wide/16 v6, 0x0

    const/4 v8, 0x1

    new-array v8, v8, [Ljavafx/beans/Observable;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/4 v10, 0x0

    move-object v11, v3

    aput-object v11, v9, v10

    invoke-static {v4, v5, v6, v7, v8}, Ljavafx/beans/binding/Bindings;->equal(Ljavafx/beans/value/ObservableNumberValue;Ljavafx/beans/value/ObservableNumberValue;D[Ljavafx/beans/Observable;)Ljavafx/beans/binding/BooleanBinding;

    move-result-object v4

    move-object v1, v4

    .end local v1    # "op1":J
    return-object v1
.end method

.method public static equal(JLjavafx/beans/value/ObservableNumberValue;D)Ljavafx/beans/binding/BooleanBinding;
    .locals 15

    .prologue
    .line 2574
    move-wide v1, p0

    .local v1, "op1":J
    move-object/from16 v3, p2

    .local v3, "op2":Ljavafx/beans/value/ObservableNumberValue;
    move-wide/from16 v4, p3

    .local v4, "epsilon":D
    move-wide v6, v1

    invoke-static {v6, v7}, Lcom/sun/javafx/binding/LongConstant;->valueOf(J)Lcom/sun/javafx/binding/LongConstant;

    move-result-object v6

    move-object v7, v3

    move-wide v8, v4

    const/4 v10, 0x1

    new-array v10, v10, [Ljavafx/beans/Observable;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    const/4 v12, 0x0

    move-object v13, v3

    aput-object v13, v11, v12

    invoke-static {v6, v7, v8, v9, v10}, Ljavafx/beans/binding/Bindings;->equal(Ljavafx/beans/value/ObservableNumberValue;Ljavafx/beans/value/ObservableNumberValue;D[Ljavafx/beans/Observable;)Ljavafx/beans/binding/BooleanBinding;

    move-result-object v6

    move-object v1, v6

    .end local v1    # "op1":J
    return-object v1
.end method

.method public static equal(Ljava/lang/Object;Ljavafx/beans/value/ObservableObjectValue;)Ljavafx/beans/binding/BooleanBinding;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljavafx/beans/value/ObservableObjectValue",
            "<*>;)",
            "Ljavafx/beans/binding/BooleanBinding;"
        }
    .end annotation

    .prologue
    .line 5781
    move-object v0, p0

    .local v0, "op1":Ljava/lang/Object;
    move-object v1, p1

    .local v1, "op2":Ljavafx/beans/value/ObservableObjectValue;, "Ljavafx/beans/value/ObservableObjectValue<*>;"
    move-object v2, v0

    invoke-static {v2}, Lcom/sun/javafx/binding/ObjectConstant;->valueOf(Ljava/lang/Object;)Lcom/sun/javafx/binding/ObjectConstant;

    move-result-object v2

    move-object v3, v1

    const/4 v4, 0x1

    new-array v4, v4, [Ljavafx/beans/Observable;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    move-object v7, v1

    aput-object v7, v5, v6

    invoke-static {v2, v3, v4}, Ljavafx/beans/binding/Bindings;->equal(Ljavafx/beans/value/ObservableObjectValue;Ljavafx/beans/value/ObservableObjectValue;[Ljavafx/beans/Observable;)Ljavafx/beans/binding/BooleanBinding;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "op1":Ljava/lang/Object;
    return-object v0
.end method

.method public static equal(Ljava/lang/String;Ljavafx/beans/value/ObservableStringValue;)Ljavafx/beans/binding/BooleanBinding;
    .locals 9

    .prologue
    .line 4970
    move-object v0, p0

    .local v0, "op1":Ljava/lang/String;
    move-object v1, p1

    .local v1, "op2":Ljavafx/beans/value/ObservableStringValue;
    move-object v2, v0

    invoke-static {v2}, Lcom/sun/javafx/binding/StringConstant;->valueOf(Ljava/lang/String;)Lcom/sun/javafx/binding/StringConstant;

    move-result-object v2

    move-object v3, v1

    const/4 v4, 0x1

    new-array v4, v4, [Ljavafx/beans/Observable;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    move-object v7, v1

    aput-object v7, v5, v6

    invoke-static {v2, v3, v4}, Ljavafx/beans/binding/Bindings;->equal(Ljavafx/beans/value/ObservableStringValue;Ljavafx/beans/value/ObservableStringValue;[Ljavafx/beans/Observable;)Ljavafx/beans/binding/BooleanBinding;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "op1":Ljava/lang/String;
    return-object v0
.end method

.method public static equal(Ljavafx/beans/value/ObservableBooleanValue;Ljavafx/beans/value/ObservableBooleanValue;)Ljavafx/beans/binding/BooleanBinding;
    .locals 7

    .prologue
    .line 4715
    move-object v0, p0

    .local v0, "op1":Ljavafx/beans/value/ObservableBooleanValue;
    move-object v1, p1

    .local v1, "op2":Ljavafx/beans/value/ObservableBooleanValue;
    move-object v2, v0

    if-eqz v2, :cond_0

    move-object v2, v1

    if-nez v2, :cond_1

    .line 4716
    :cond_0
    new-instance v2, Ljava/lang/NullPointerException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const-string v4, "Operands cannot be null."

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 4719
    :cond_1
    new-instance v2, Ljavafx/beans/binding/Bindings$53;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Ljavafx/beans/binding/Bindings$53;-><init>(Ljavafx/beans/value/ObservableBooleanValue;Ljavafx/beans/value/ObservableBooleanValue;)V

    move-object v0, v2

    .end local v0    # "op1":Ljavafx/beans/value/ObservableBooleanValue;
    return-object v0
.end method

.method public static equal(Ljavafx/beans/value/ObservableNumberValue;DD)Ljavafx/beans/binding/BooleanBinding;
    .locals 15

    .prologue
    .line 2428
    move-object v1, p0

    .local v1, "op1":Ljavafx/beans/value/ObservableNumberValue;
    move-wide/from16 v2, p1

    .local v2, "op2":D
    move-wide/from16 v4, p3

    .local v4, "epsilon":D
    move-object v6, v1

    move-wide v7, v2

    invoke-static {v7, v8}, Lcom/sun/javafx/binding/DoubleConstant;->valueOf(D)Lcom/sun/javafx/binding/DoubleConstant;

    move-result-object v7

    move-wide v8, v4

    const/4 v10, 0x1

    new-array v10, v10, [Ljavafx/beans/Observable;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    const/4 v12, 0x0

    move-object v13, v1

    aput-object v13, v11, v12

    invoke-static {v6, v7, v8, v9, v10}, Ljavafx/beans/binding/Bindings;->equal(Ljavafx/beans/value/ObservableNumberValue;Ljavafx/beans/value/ObservableNumberValue;D[Ljavafx/beans/Observable;)Ljavafx/beans/binding/BooleanBinding;

    move-result-object v6

    move-object v1, v6

    .end local v1    # "op1":Ljavafx/beans/value/ObservableNumberValue;
    return-object v1
.end method

.method public static equal(Ljavafx/beans/value/ObservableNumberValue;FD)Ljavafx/beans/binding/BooleanBinding;
    .locals 14

    .prologue
    .line 2478
    move-object v0, p0

    .local v0, "op1":Ljavafx/beans/value/ObservableNumberValue;
    move v1, p1

    .local v1, "op2":F
    move-wide/from16 v2, p2

    .local v2, "epsilon":D
    move-object v4, v0

    move v5, v1

    invoke-static {v5}, Lcom/sun/javafx/binding/FloatConstant;->valueOf(F)Lcom/sun/javafx/binding/FloatConstant;

    move-result-object v5

    move-wide v6, v2

    const/4 v8, 0x1

    new-array v8, v8, [Ljavafx/beans/Observable;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/4 v10, 0x0

    move-object v11, v0

    aput-object v11, v9, v10

    invoke-static {v4, v5, v6, v7, v8}, Ljavafx/beans/binding/Bindings;->equal(Ljavafx/beans/value/ObservableNumberValue;Ljavafx/beans/value/ObservableNumberValue;D[Ljavafx/beans/Observable;)Ljavafx/beans/binding/BooleanBinding;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "op1":Ljavafx/beans/value/ObservableNumberValue;
    return-object v0
.end method

.method public static equal(Ljavafx/beans/value/ObservableNumberValue;I)Ljavafx/beans/binding/BooleanBinding;
    .locals 11

    .prologue
    .line 2641
    move-object v0, p0

    .local v0, "op1":Ljavafx/beans/value/ObservableNumberValue;
    move v1, p1

    .local v1, "op2":I
    move-object v2, v0

    move v3, v1

    invoke-static {v3}, Lcom/sun/javafx/binding/IntegerConstant;->valueOf(I)Lcom/sun/javafx/binding/IntegerConstant;

    move-result-object v3

    const-wide/16 v4, 0x0

    const/4 v6, 0x1

    new-array v6, v6, [Ljavafx/beans/Observable;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x0

    move-object v9, v0

    aput-object v9, v7, v8

    invoke-static {v2, v3, v4, v5, v6}, Ljavafx/beans/binding/Bindings;->equal(Ljavafx/beans/value/ObservableNumberValue;Ljavafx/beans/value/ObservableNumberValue;D[Ljavafx/beans/Observable;)Ljavafx/beans/binding/BooleanBinding;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "op1":Ljavafx/beans/value/ObservableNumberValue;
    return-object v0
.end method

.method public static equal(Ljavafx/beans/value/ObservableNumberValue;ID)Ljavafx/beans/binding/BooleanBinding;
    .locals 14

    .prologue
    .line 2620
    move-object v0, p0

    .local v0, "op1":Ljavafx/beans/value/ObservableNumberValue;
    move v1, p1

    .local v1, "op2":I
    move-wide/from16 v2, p2

    .local v2, "epsilon":D
    move-object v4, v0

    move v5, v1

    invoke-static {v5}, Lcom/sun/javafx/binding/IntegerConstant;->valueOf(I)Lcom/sun/javafx/binding/IntegerConstant;

    move-result-object v5

    move-wide v6, v2

    const/4 v8, 0x1

    new-array v8, v8, [Ljavafx/beans/Observable;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/4 v10, 0x0

    move-object v11, v0

    aput-object v11, v9, v10

    invoke-static {v4, v5, v6, v7, v8}, Ljavafx/beans/binding/Bindings;->equal(Ljavafx/beans/value/ObservableNumberValue;Ljavafx/beans/value/ObservableNumberValue;D[Ljavafx/beans/Observable;)Ljavafx/beans/binding/BooleanBinding;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "op1":Ljavafx/beans/value/ObservableNumberValue;
    return-object v0
.end method

.method public static equal(Ljavafx/beans/value/ObservableNumberValue;J)Ljavafx/beans/binding/BooleanBinding;
    .locals 13

    .prologue
    .line 2549
    move-object v1, p0

    .local v1, "op1":Ljavafx/beans/value/ObservableNumberValue;
    move-wide v2, p1

    .local v2, "op2":J
    move-object v4, v1

    move-wide v5, v2

    invoke-static {v5, v6}, Lcom/sun/javafx/binding/LongConstant;->valueOf(J)Lcom/sun/javafx/binding/LongConstant;

    move-result-object v5

    const-wide/16 v6, 0x0

    const/4 v8, 0x1

    new-array v8, v8, [Ljavafx/beans/Observable;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/4 v10, 0x0

    move-object v11, v1

    aput-object v11, v9, v10

    invoke-static {v4, v5, v6, v7, v8}, Ljavafx/beans/binding/Bindings;->equal(Ljavafx/beans/value/ObservableNumberValue;Ljavafx/beans/value/ObservableNumberValue;D[Ljavafx/beans/Observable;)Ljavafx/beans/binding/BooleanBinding;

    move-result-object v4

    move-object v1, v4

    .end local v1    # "op1":Ljavafx/beans/value/ObservableNumberValue;
    return-object v1
.end method

.method public static equal(Ljavafx/beans/value/ObservableNumberValue;JD)Ljavafx/beans/binding/BooleanBinding;
    .locals 15

    .prologue
    .line 2528
    move-object v1, p0

    .local v1, "op1":Ljavafx/beans/value/ObservableNumberValue;
    move-wide/from16 v2, p1

    .local v2, "op2":J
    move-wide/from16 v4, p3

    .local v4, "epsilon":D
    move-object v6, v1

    move-wide v7, v2

    invoke-static {v7, v8}, Lcom/sun/javafx/binding/LongConstant;->valueOf(J)Lcom/sun/javafx/binding/LongConstant;

    move-result-object v7

    move-wide v8, v4

    const/4 v10, 0x1

    new-array v10, v10, [Ljavafx/beans/Observable;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    const/4 v12, 0x0

    move-object v13, v1

    aput-object v13, v11, v12

    invoke-static {v6, v7, v8, v9, v10}, Ljavafx/beans/binding/Bindings;->equal(Ljavafx/beans/value/ObservableNumberValue;Ljavafx/beans/value/ObservableNumberValue;D[Ljavafx/beans/Observable;)Ljavafx/beans/binding/BooleanBinding;

    move-result-object v6

    move-object v1, v6

    .end local v1    # "op1":Ljavafx/beans/value/ObservableNumberValue;
    return-object v1
.end method

.method public static equal(Ljavafx/beans/value/ObservableNumberValue;Ljavafx/beans/value/ObservableNumberValue;)Ljavafx/beans/binding/BooleanBinding;
    .locals 11

    .prologue
    .line 2403
    move-object v0, p0

    .local v0, "op1":Ljavafx/beans/value/ObservableNumberValue;
    move-object v1, p1

    .local v1, "op2":Ljavafx/beans/value/ObservableNumberValue;
    move-object v2, v0

    move-object v3, v1

    const-wide/16 v4, 0x0

    const/4 v6, 0x2

    new-array v6, v6, [Ljavafx/beans/Observable;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x0

    move-object v9, v0

    aput-object v9, v7, v8

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x1

    move-object v9, v1

    aput-object v9, v7, v8

    invoke-static {v2, v3, v4, v5, v6}, Ljavafx/beans/binding/Bindings;->equal(Ljavafx/beans/value/ObservableNumberValue;Ljavafx/beans/value/ObservableNumberValue;D[Ljavafx/beans/Observable;)Ljavafx/beans/binding/BooleanBinding;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "op1":Ljavafx/beans/value/ObservableNumberValue;
    return-object v0
.end method

.method public static equal(Ljavafx/beans/value/ObservableNumberValue;Ljavafx/beans/value/ObservableNumberValue;D)Ljavafx/beans/binding/BooleanBinding;
    .locals 14

    .prologue
    .line 2382
    move-object v0, p0

    .local v0, "op1":Ljavafx/beans/value/ObservableNumberValue;
    move-object v1, p1

    .local v1, "op2":Ljavafx/beans/value/ObservableNumberValue;
    move-wide/from16 v2, p2

    .local v2, "epsilon":D
    move-object v4, v0

    move-object v5, v1

    move-wide v6, v2

    const/4 v8, 0x2

    new-array v8, v8, [Ljavafx/beans/Observable;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/4 v10, 0x0

    move-object v11, v0

    aput-object v11, v9, v10

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/4 v10, 0x1

    move-object v11, v1

    aput-object v11, v9, v10

    invoke-static {v4, v5, v6, v7, v8}, Ljavafx/beans/binding/Bindings;->equal(Ljavafx/beans/value/ObservableNumberValue;Ljavafx/beans/value/ObservableNumberValue;D[Ljavafx/beans/Observable;)Ljavafx/beans/binding/BooleanBinding;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "op1":Ljavafx/beans/value/ObservableNumberValue;
    return-object v0
.end method

.method private static varargs equal(Ljavafx/beans/value/ObservableNumberValue;Ljavafx/beans/value/ObservableNumberValue;D[Ljavafx/beans/Observable;)Ljavafx/beans/binding/BooleanBinding;
    .locals 14

    .prologue
    .line 2255
    move-object v0, p0

    .local v0, "op1":Ljavafx/beans/value/ObservableNumberValue;
    move-object v1, p1

    .local v1, "op2":Ljavafx/beans/value/ObservableNumberValue;
    move-wide/from16 v2, p2

    .local v2, "epsilon":D
    move-object/from16 v4, p4

    .local v4, "dependencies":[Ljavafx/beans/Observable;
    move-object v5, v0

    if-eqz v5, :cond_0

    move-object v5, v1

    if-nez v5, :cond_1

    .line 2256
    :cond_0
    new-instance v5, Ljava/lang/NullPointerException;

    move-object v12, v5

    move-object v5, v12

    move-object v6, v12

    const-string v7, "Operands cannot be null."

    invoke-direct {v6, v7}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 2258
    :cond_1
    sget-boolean v5, Ljavafx/beans/binding/Bindings;->$assertionsDisabled:Z

    if-nez v5, :cond_3

    move-object v5, v4

    if-eqz v5, :cond_2

    move-object v5, v4

    array-length v5, v5

    if-gtz v5, :cond_3

    :cond_2
    new-instance v5, Ljava/lang/AssertionError;

    move-object v12, v5

    move-object v5, v12

    move-object v6, v12

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 2260
    :cond_3
    move-object v5, v0

    instance-of v5, v5, Ljavafx/beans/value/ObservableDoubleValue;

    if-nez v5, :cond_4

    move-object v5, v1

    instance-of v5, v5, Ljavafx/beans/value/ObservableDoubleValue;

    if-eqz v5, :cond_5

    .line 2261
    :cond_4
    new-instance v5, Ljavafx/beans/binding/Bindings$28;

    move-object v12, v5

    move-object v5, v12

    move-object v6, v12

    move-object v7, v4

    move-object v8, v0

    move-object v9, v1

    move-wide v10, v2

    invoke-direct/range {v6 .. v11}, Ljavafx/beans/binding/Bindings$28;-><init>([Ljavafx/beans/Observable;Ljavafx/beans/value/ObservableNumberValue;Ljavafx/beans/value/ObservableNumberValue;D)V

    move-object v0, v5

    .line 2333
    .end local v0    # "op1":Ljavafx/beans/value/ObservableNumberValue;
    :goto_0
    return-object v0

    .line 2284
    .restart local v0    # "op1":Ljavafx/beans/value/ObservableNumberValue;
    :cond_5
    move-object v5, v0

    instance-of v5, v5, Ljavafx/beans/value/ObservableFloatValue;

    if-nez v5, :cond_6

    move-object v5, v1

    instance-of v5, v5, Ljavafx/beans/value/ObservableFloatValue;

    if-eqz v5, :cond_7

    .line 2285
    :cond_6
    new-instance v5, Ljavafx/beans/binding/Bindings$29;

    move-object v12, v5

    move-object v5, v12

    move-object v6, v12

    move-object v7, v4

    move-object v8, v0

    move-object v9, v1

    move-wide v10, v2

    invoke-direct/range {v6 .. v11}, Ljavafx/beans/binding/Bindings$29;-><init>([Ljavafx/beans/Observable;Ljavafx/beans/value/ObservableNumberValue;Ljavafx/beans/value/ObservableNumberValue;D)V

    move-object v0, v5

    goto :goto_0

    .line 2308
    :cond_7
    move-object v5, v0

    instance-of v5, v5, Ljavafx/beans/value/ObservableLongValue;

    if-nez v5, :cond_8

    move-object v5, v1

    instance-of v5, v5, Ljavafx/beans/value/ObservableLongValue;

    if-eqz v5, :cond_9

    .line 2309
    :cond_8
    new-instance v5, Ljavafx/beans/binding/Bindings$30;

    move-object v12, v5

    move-object v5, v12

    move-object v6, v12

    move-object v7, v4

    move-object v8, v0

    move-object v9, v1

    move-wide v10, v2

    invoke-direct/range {v6 .. v11}, Ljavafx/beans/binding/Bindings$30;-><init>([Ljavafx/beans/Observable;Ljavafx/beans/value/ObservableNumberValue;Ljavafx/beans/value/ObservableNumberValue;D)V

    move-object v0, v5

    goto :goto_0

    .line 2333
    :cond_9
    new-instance v5, Ljavafx/beans/binding/Bindings$31;

    move-object v12, v5

    move-object v5, v12

    move-object v6, v12

    move-object v7, v4

    move-object v8, v0

    move-object v9, v1

    move-wide v10, v2

    invoke-direct/range {v6 .. v11}, Ljavafx/beans/binding/Bindings$31;-><init>([Ljavafx/beans/Observable;Ljavafx/beans/value/ObservableNumberValue;Ljavafx/beans/value/ObservableNumberValue;D)V

    move-object v0, v5

    goto :goto_0
.end method

.method public static equal(Ljavafx/beans/value/ObservableObjectValue;Ljava/lang/Object;)Ljavafx/beans/binding/BooleanBinding;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/value/ObservableObjectValue",
            "<*>;",
            "Ljava/lang/Object;",
            ")",
            "Ljavafx/beans/binding/BooleanBinding;"
        }
    .end annotation

    .prologue
    .line 5764
    move-object v0, p0

    .local v0, "op1":Ljavafx/beans/value/ObservableObjectValue;, "Ljavafx/beans/value/ObservableObjectValue<*>;"
    move-object v1, p1

    .local v1, "op2":Ljava/lang/Object;
    move-object v2, v0

    move-object v3, v1

    invoke-static {v3}, Lcom/sun/javafx/binding/ObjectConstant;->valueOf(Ljava/lang/Object;)Lcom/sun/javafx/binding/ObjectConstant;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljavafx/beans/Observable;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    move-object v7, v0

    aput-object v7, v5, v6

    invoke-static {v2, v3, v4}, Ljavafx/beans/binding/Bindings;->equal(Ljavafx/beans/value/ObservableObjectValue;Ljavafx/beans/value/ObservableObjectValue;[Ljavafx/beans/Observable;)Ljavafx/beans/binding/BooleanBinding;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "op1":Ljavafx/beans/value/ObservableObjectValue;, "Ljavafx/beans/value/ObservableObjectValue<*>;"
    return-object v0
.end method

.method public static equal(Ljavafx/beans/value/ObservableObjectValue;Ljavafx/beans/value/ObservableObjectValue;)Ljavafx/beans/binding/BooleanBinding;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/value/ObservableObjectValue",
            "<*>;",
            "Ljavafx/beans/value/ObservableObjectValue",
            "<*>;)",
            "Ljavafx/beans/binding/BooleanBinding;"
        }
    .end annotation

    .prologue
    .line 5747
    move-object v0, p0

    .local v0, "op1":Ljavafx/beans/value/ObservableObjectValue;, "Ljavafx/beans/value/ObservableObjectValue<*>;"
    move-object v1, p1

    .local v1, "op2":Ljavafx/beans/value/ObservableObjectValue;, "Ljavafx/beans/value/ObservableObjectValue<*>;"
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x2

    new-array v4, v4, [Ljavafx/beans/Observable;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    move-object v7, v0

    aput-object v7, v5, v6

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x1

    move-object v7, v1

    aput-object v7, v5, v6

    invoke-static {v2, v3, v4}, Ljavafx/beans/binding/Bindings;->equal(Ljavafx/beans/value/ObservableObjectValue;Ljavafx/beans/value/ObservableObjectValue;[Ljavafx/beans/Observable;)Ljavafx/beans/binding/BooleanBinding;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "op1":Ljavafx/beans/value/ObservableObjectValue;, "Ljavafx/beans/value/ObservableObjectValue<*>;"
    return-object v0
.end method

.method private static varargs equal(Ljavafx/beans/value/ObservableObjectValue;Ljavafx/beans/value/ObservableObjectValue;[Ljavafx/beans/Observable;)Ljavafx/beans/binding/BooleanBinding;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/value/ObservableObjectValue",
            "<*>;",
            "Ljavafx/beans/value/ObservableObjectValue",
            "<*>;[",
            "Ljavafx/beans/Observable;",
            ")",
            "Ljavafx/beans/binding/BooleanBinding;"
        }
    .end annotation

    .prologue
    .line 5701
    move-object v0, p0

    .local v0, "op1":Ljavafx/beans/value/ObservableObjectValue;, "Ljavafx/beans/value/ObservableObjectValue<*>;"
    move-object v1, p1

    .local v1, "op2":Ljavafx/beans/value/ObservableObjectValue;, "Ljavafx/beans/value/ObservableObjectValue<*>;"
    move-object v2, p2

    .local v2, "dependencies":[Ljavafx/beans/Observable;
    move-object v3, v0

    if-eqz v3, :cond_0

    move-object v3, v1

    if-nez v3, :cond_1

    .line 5702
    :cond_0
    new-instance v3, Ljava/lang/NullPointerException;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    const-string v5, "Operands cannot be null."

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 5704
    :cond_1
    sget-boolean v3, Ljavafx/beans/binding/Bindings;->$assertionsDisabled:Z

    if-nez v3, :cond_3

    move-object v3, v2

    if-eqz v3, :cond_2

    move-object v3, v2

    array-length v3, v3

    if-gtz v3, :cond_3

    :cond_2
    new-instance v3, Ljava/lang/AssertionError;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 5706
    :cond_3
    new-instance v3, Ljavafx/beans/binding/Bindings$64;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v2

    move-object v6, v0

    move-object v7, v1

    invoke-direct {v4, v5, v6, v7}, Ljavafx/beans/binding/Bindings$64;-><init>([Ljavafx/beans/Observable;Ljavafx/beans/value/ObservableObjectValue;Ljavafx/beans/value/ObservableObjectValue;)V

    move-object v0, v3

    .end local v0    # "op1":Ljavafx/beans/value/ObservableObjectValue;, "Ljavafx/beans/value/ObservableObjectValue<*>;"
    return-object v0
.end method

.method public static equal(Ljavafx/beans/value/ObservableStringValue;Ljava/lang/String;)Ljavafx/beans/binding/BooleanBinding;
    .locals 9

    .prologue
    .line 4950
    move-object v0, p0

    .local v0, "op1":Ljavafx/beans/value/ObservableStringValue;
    move-object v1, p1

    .local v1, "op2":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    invoke-static {v3}, Lcom/sun/javafx/binding/StringConstant;->valueOf(Ljava/lang/String;)Lcom/sun/javafx/binding/StringConstant;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljavafx/beans/Observable;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    move-object v7, v0

    aput-object v7, v5, v6

    invoke-static {v2, v3, v4}, Ljavafx/beans/binding/Bindings;->equal(Ljavafx/beans/value/ObservableStringValue;Ljavafx/beans/value/ObservableStringValue;[Ljavafx/beans/Observable;)Ljavafx/beans/binding/BooleanBinding;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "op1":Ljavafx/beans/value/ObservableStringValue;
    return-object v0
.end method

.method public static equal(Ljavafx/beans/value/ObservableStringValue;Ljavafx/beans/value/ObservableStringValue;)Ljavafx/beans/binding/BooleanBinding;
    .locals 9

    .prologue
    .line 4930
    move-object v0, p0

    .local v0, "op1":Ljavafx/beans/value/ObservableStringValue;
    move-object v1, p1

    .local v1, "op2":Ljavafx/beans/value/ObservableStringValue;
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x2

    new-array v4, v4, [Ljavafx/beans/Observable;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    move-object v7, v0

    aput-object v7, v5, v6

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x1

    move-object v7, v1

    aput-object v7, v5, v6

    invoke-static {v2, v3, v4}, Ljavafx/beans/binding/Bindings;->equal(Ljavafx/beans/value/ObservableStringValue;Ljavafx/beans/value/ObservableStringValue;[Ljavafx/beans/Observable;)Ljavafx/beans/binding/BooleanBinding;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "op1":Ljavafx/beans/value/ObservableStringValue;
    return-object v0
.end method

.method private static varargs equal(Ljavafx/beans/value/ObservableStringValue;Ljavafx/beans/value/ObservableStringValue;[Ljavafx/beans/Observable;)Ljavafx/beans/binding/BooleanBinding;
    .locals 9

    .prologue
    .line 4881
    move-object v0, p0

    .local v0, "op1":Ljavafx/beans/value/ObservableStringValue;
    move-object v1, p1

    .local v1, "op2":Ljavafx/beans/value/ObservableStringValue;
    move-object v2, p2

    .local v2, "dependencies":[Ljavafx/beans/Observable;
    move-object v3, v0

    if-eqz v3, :cond_0

    move-object v3, v1

    if-nez v3, :cond_1

    .line 4882
    :cond_0
    new-instance v3, Ljava/lang/NullPointerException;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    const-string v5, "Operands cannot be null."

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 4884
    :cond_1
    sget-boolean v3, Ljavafx/beans/binding/Bindings;->$assertionsDisabled:Z

    if-nez v3, :cond_3

    move-object v3, v2

    if-eqz v3, :cond_2

    move-object v3, v2

    array-length v3, v3

    if-gtz v3, :cond_3

    :cond_2
    new-instance v3, Ljava/lang/AssertionError;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 4886
    :cond_3
    new-instance v3, Ljavafx/beans/binding/Bindings$55;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v2

    move-object v6, v0

    move-object v7, v1

    invoke-direct {v4, v5, v6, v7}, Ljavafx/beans/binding/Bindings$55;-><init>([Ljavafx/beans/Observable;Ljavafx/beans/value/ObservableStringValue;Ljavafx/beans/value/ObservableStringValue;)V

    move-object v0, v3

    .end local v0    # "op1":Ljavafx/beans/value/ObservableStringValue;
    return-object v0
.end method

.method public static equalIgnoreCase(Ljava/lang/String;Ljavafx/beans/value/ObservableStringValue;)Ljavafx/beans/binding/BooleanBinding;
    .locals 9

    .prologue
    .line 5156
    move-object v0, p0

    .local v0, "op1":Ljava/lang/String;
    move-object v1, p1

    .local v1, "op2":Ljavafx/beans/value/ObservableStringValue;
    move-object v2, v0

    invoke-static {v2}, Lcom/sun/javafx/binding/StringConstant;->valueOf(Ljava/lang/String;)Lcom/sun/javafx/binding/StringConstant;

    move-result-object v2

    move-object v3, v1

    const/4 v4, 0x1

    new-array v4, v4, [Ljavafx/beans/Observable;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    move-object v7, v1

    aput-object v7, v5, v6

    invoke-static {v2, v3, v4}, Ljavafx/beans/binding/Bindings;->equalIgnoreCase(Ljavafx/beans/value/ObservableStringValue;Ljavafx/beans/value/ObservableStringValue;[Ljavafx/beans/Observable;)Ljavafx/beans/binding/BooleanBinding;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "op1":Ljava/lang/String;
    return-object v0
.end method

.method public static equalIgnoreCase(Ljavafx/beans/value/ObservableStringValue;Ljava/lang/String;)Ljavafx/beans/binding/BooleanBinding;
    .locals 9

    .prologue
    .line 5136
    move-object v0, p0

    .local v0, "op1":Ljavafx/beans/value/ObservableStringValue;
    move-object v1, p1

    .local v1, "op2":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    invoke-static {v3}, Lcom/sun/javafx/binding/StringConstant;->valueOf(Ljava/lang/String;)Lcom/sun/javafx/binding/StringConstant;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljavafx/beans/Observable;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    move-object v7, v0

    aput-object v7, v5, v6

    invoke-static {v2, v3, v4}, Ljavafx/beans/binding/Bindings;->equalIgnoreCase(Ljavafx/beans/value/ObservableStringValue;Ljavafx/beans/value/ObservableStringValue;[Ljavafx/beans/Observable;)Ljavafx/beans/binding/BooleanBinding;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "op1":Ljavafx/beans/value/ObservableStringValue;
    return-object v0
.end method

.method public static equalIgnoreCase(Ljavafx/beans/value/ObservableStringValue;Ljavafx/beans/value/ObservableStringValue;)Ljavafx/beans/binding/BooleanBinding;
    .locals 9

    .prologue
    .line 5116
    move-object v0, p0

    .local v0, "op1":Ljavafx/beans/value/ObservableStringValue;
    move-object v1, p1

    .local v1, "op2":Ljavafx/beans/value/ObservableStringValue;
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x2

    new-array v4, v4, [Ljavafx/beans/Observable;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    move-object v7, v0

    aput-object v7, v5, v6

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x1

    move-object v7, v1

    aput-object v7, v5, v6

    invoke-static {v2, v3, v4}, Ljavafx/beans/binding/Bindings;->equalIgnoreCase(Ljavafx/beans/value/ObservableStringValue;Ljavafx/beans/value/ObservableStringValue;[Ljavafx/beans/Observable;)Ljavafx/beans/binding/BooleanBinding;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "op1":Ljavafx/beans/value/ObservableStringValue;
    return-object v0
.end method

.method private static varargs equalIgnoreCase(Ljavafx/beans/value/ObservableStringValue;Ljavafx/beans/value/ObservableStringValue;[Ljavafx/beans/Observable;)Ljavafx/beans/binding/BooleanBinding;
    .locals 9

    .prologue
    .line 5067
    move-object v0, p0

    .local v0, "op1":Ljavafx/beans/value/ObservableStringValue;
    move-object v1, p1

    .local v1, "op2":Ljavafx/beans/value/ObservableStringValue;
    move-object v2, p2

    .local v2, "dependencies":[Ljavafx/beans/Observable;
    move-object v3, v0

    if-eqz v3, :cond_0

    move-object v3, v1

    if-nez v3, :cond_1

    .line 5068
    :cond_0
    new-instance v3, Ljava/lang/NullPointerException;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    const-string v5, "Operands cannot be null."

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 5070
    :cond_1
    sget-boolean v3, Ljavafx/beans/binding/Bindings;->$assertionsDisabled:Z

    if-nez v3, :cond_3

    move-object v3, v2

    if-eqz v3, :cond_2

    move-object v3, v2

    array-length v3, v3

    if-gtz v3, :cond_3

    :cond_2
    new-instance v3, Ljava/lang/AssertionError;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 5072
    :cond_3
    new-instance v3, Ljavafx/beans/binding/Bindings$57;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v2

    move-object v6, v0

    move-object v7, v1

    invoke-direct {v4, v5, v6, v7}, Ljavafx/beans/binding/Bindings$57;-><init>([Ljavafx/beans/Observable;Ljavafx/beans/value/ObservableStringValue;Ljavafx/beans/value/ObservableStringValue;)V

    move-object v0, v3

    .end local v0    # "op1":Ljavafx/beans/value/ObservableStringValue;
    return-object v0
.end method

.method public static floatValueAt(Ljavafx/collections/ObservableFloatArray;I)Ljavafx/beans/binding/FloatBinding;
    .locals 7

    .prologue
    .line 7048
    move-object v0, p0

    .local v0, "op":Ljavafx/collections/ObservableFloatArray;
    move v1, p1

    .local v1, "index":I
    move-object v2, v0

    if-nez v2, :cond_0

    .line 7049
    new-instance v2, Ljava/lang/NullPointerException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const-string v4, "Array cannot be null."

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 7051
    :cond_0
    move v2, v1

    if-gez v2, :cond_1

    .line 7052
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const-string v4, "Index cannot be negative"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 7055
    :cond_1
    new-instance v2, Ljavafx/beans/binding/Bindings$89;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    move v5, v1

    invoke-direct {v3, v4, v5}, Ljavafx/beans/binding/Bindings$89;-><init>(Ljavafx/collections/ObservableFloatArray;I)V

    move-object v0, v2

    .end local v0    # "op":Ljavafx/collections/ObservableFloatArray;
    return-object v0
.end method

.method public static floatValueAt(Ljavafx/collections/ObservableFloatArray;Ljavafx/beans/value/ObservableIntegerValue;)Ljavafx/beans/binding/FloatBinding;
    .locals 4

    .prologue
    .line 7095
    move-object v0, p0

    .local v0, "op":Ljavafx/collections/ObservableFloatArray;
    move-object v1, p1

    .local v1, "index":Ljavafx/beans/value/ObservableIntegerValue;
    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Ljavafx/beans/binding/Bindings;->floatValueAt(Ljavafx/collections/ObservableFloatArray;Ljavafx/beans/value/ObservableNumberValue;)Ljavafx/beans/binding/FloatBinding;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "op":Ljavafx/collections/ObservableFloatArray;
    return-object v0
.end method

.method public static floatValueAt(Ljavafx/collections/ObservableFloatArray;Ljavafx/beans/value/ObservableNumberValue;)Ljavafx/beans/binding/FloatBinding;
    .locals 7

    .prologue
    .line 7110
    move-object v0, p0

    .local v0, "op":Ljavafx/collections/ObservableFloatArray;
    move-object v1, p1

    .local v1, "index":Ljavafx/beans/value/ObservableNumberValue;
    move-object v2, v0

    if-eqz v2, :cond_0

    move-object v2, v1

    if-nez v2, :cond_1

    .line 7111
    :cond_0
    new-instance v2, Ljava/lang/NullPointerException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const-string v4, "Operands cannot be null."

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 7114
    :cond_1
    new-instance v2, Ljavafx/beans/binding/Bindings$90;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Ljavafx/beans/binding/Bindings$90;-><init>(Ljavafx/collections/ObservableFloatArray;Ljavafx/beans/value/ObservableNumberValue;)V

    move-object v0, v2

    .end local v0    # "op":Ljavafx/collections/ObservableFloatArray;
    return-object v0
.end method

.method public static floatValueAt(Ljavafx/collections/ObservableList;I)Ljavafx/beans/binding/FloatBinding;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/ObservableList",
            "<+",
            "Ljava/lang/Number;",
            ">;I)",
            "Ljavafx/beans/binding/FloatBinding;"
        }
    .end annotation

    .prologue
    .line 6426
    move-object v0, p0

    .local v0, "op":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<+Ljava/lang/Number;>;"
    move v1, p1

    .local v1, "index":I
    move-object v2, v0

    if-nez v2, :cond_0

    .line 6427
    new-instance v2, Ljava/lang/NullPointerException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const-string v4, "List cannot be null."

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 6429
    :cond_0
    move v2, v1

    if-gez v2, :cond_1

    .line 6430
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const-string v4, "Index cannot be negative"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 6433
    :cond_1
    new-instance v2, Ljavafx/beans/binding/Bindings$77;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    move v5, v1

    invoke-direct {v3, v4, v5}, Ljavafx/beans/binding/Bindings$77;-><init>(Ljavafx/collections/ObservableList;I)V

    move-object v0, v2

    .end local v0    # "op":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<+Ljava/lang/Number;>;"
    return-object v0
.end method

.method public static floatValueAt(Ljavafx/collections/ObservableList;Ljavafx/beans/value/ObservableIntegerValue;)Ljavafx/beans/binding/FloatBinding;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/ObservableList",
            "<+",
            "Ljava/lang/Number;",
            ">;",
            "Ljavafx/beans/value/ObservableIntegerValue;",
            ")",
            "Ljavafx/beans/binding/FloatBinding;"
        }
    .end annotation

    .prologue
    .line 6478
    move-object v0, p0

    .local v0, "op":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<+Ljava/lang/Number;>;"
    move-object v1, p1

    .local v1, "index":Ljavafx/beans/value/ObservableIntegerValue;
    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Ljavafx/beans/binding/Bindings;->floatValueAt(Ljavafx/collections/ObservableList;Ljavafx/beans/value/ObservableNumberValue;)Ljavafx/beans/binding/FloatBinding;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "op":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<+Ljava/lang/Number;>;"
    return-object v0
.end method

.method public static floatValueAt(Ljavafx/collections/ObservableList;Ljavafx/beans/value/ObservableNumberValue;)Ljavafx/beans/binding/FloatBinding;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/ObservableList",
            "<+",
            "Ljava/lang/Number;",
            ">;",
            "Ljavafx/beans/value/ObservableNumberValue;",
            ")",
            "Ljavafx/beans/binding/FloatBinding;"
        }
    .end annotation

    .prologue
    .line 6493
    move-object v0, p0

    .local v0, "op":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<+Ljava/lang/Number;>;"
    move-object v1, p1

    .local v1, "index":Ljavafx/beans/value/ObservableNumberValue;
    move-object v2, v0

    if-eqz v2, :cond_0

    move-object v2, v1

    if-nez v2, :cond_1

    .line 6494
    :cond_0
    new-instance v2, Ljava/lang/NullPointerException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const-string v4, "Operands cannot be null."

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 6497
    :cond_1
    new-instance v2, Ljavafx/beans/binding/Bindings$78;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Ljavafx/beans/binding/Bindings$78;-><init>(Ljavafx/collections/ObservableList;Ljavafx/beans/value/ObservableNumberValue;)V

    move-object v0, v2

    .end local v0    # "op":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<+Ljava/lang/Number;>;"
    return-object v0
.end method

.method public static floatValueAt(Ljavafx/collections/ObservableMap;Ljava/lang/Object;)Ljavafx/beans/binding/FloatBinding;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljavafx/collections/ObservableMap",
            "<TK;+",
            "Ljava/lang/Number;",
            ">;TK;)",
            "Ljavafx/beans/binding/FloatBinding;"
        }
    .end annotation

    .prologue
    .line 7703
    move-object v0, p0

    .local v0, "op":Ljavafx/collections/ObservableMap;, "Ljavafx/collections/ObservableMap<TK;+Ljava/lang/Number;>;"
    move-object v1, p1

    .local v1, "key":Ljava/lang/Object;, "TK;"
    move-object v2, v0

    if-nez v2, :cond_0

    .line 7704
    new-instance v2, Ljava/lang/NullPointerException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const-string v4, "Map cannot be null."

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 7707
    :cond_0
    new-instance v2, Ljavafx/beans/binding/Bindings$102;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Ljavafx/beans/binding/Bindings$102;-><init>(Ljavafx/collections/ObservableMap;Ljava/lang/Object;)V

    move-object v0, v2

    .end local v0    # "op":Ljavafx/collections/ObservableMap;, "Ljavafx/collections/ObservableMap<TK;+Ljava/lang/Number;>;"
    return-object v0
.end method

.method public static floatValueAt(Ljavafx/collections/ObservableMap;Ljavafx/beans/value/ObservableValue;)Ljavafx/beans/binding/FloatBinding;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljavafx/collections/ObservableMap",
            "<TK;+",
            "Ljava/lang/Number;",
            ">;",
            "Ljavafx/beans/value/ObservableValue",
            "<+TK;>;)",
            "Ljavafx/beans/binding/FloatBinding;"
        }
    .end annotation

    .prologue
    .line 7757
    move-object v0, p0

    .local v0, "op":Ljavafx/collections/ObservableMap;, "Ljavafx/collections/ObservableMap<TK;+Ljava/lang/Number;>;"
    move-object v1, p1

    .local v1, "key":Ljavafx/beans/value/ObservableValue;, "Ljavafx/beans/value/ObservableValue<+TK;>;"
    move-object v2, v0

    if-eqz v2, :cond_0

    move-object v2, v1

    if-nez v2, :cond_1

    .line 7758
    :cond_0
    new-instance v2, Ljava/lang/NullPointerException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const-string v4, "Operands cannot be null."

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 7761
    :cond_1
    new-instance v2, Ljavafx/beans/binding/Bindings$103;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Ljavafx/beans/binding/Bindings$103;-><init>(Ljavafx/collections/ObservableMap;Ljavafx/beans/value/ObservableValue;)V

    move-object v0, v2

    .end local v0    # "op":Ljavafx/collections/ObservableMap;, "Ljavafx/collections/ObservableMap<TK;+Ljava/lang/Number;>;"
    return-object v0
.end method

.method public static varargs format(Ljava/lang/String;[Ljava/lang/Object;)Ljavafx/beans/binding/StringExpression;
    .locals 4

    .prologue
    .line 4846
    move-object v0, p0

    .local v0, "format":Ljava/lang/String;
    move-object v1, p1

    .local v1, "args":[Ljava/lang/Object;
    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Lcom/sun/javafx/binding/StringFormatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljavafx/beans/binding/StringExpression;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "format":Ljava/lang/String;
    return-object v0
.end method

.method public static varargs format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljavafx/beans/binding/StringExpression;
    .locals 6

    .prologue
    .line 4873
    move-object v0, p0

    .local v0, "locale":Ljava/util/Locale;
    move-object v1, p1

    .local v1, "format":Ljava/lang/String;
    move-object v2, p2

    .local v2, "args":[Ljava/lang/Object;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-static {v3, v4, v5}, Lcom/sun/javafx/binding/StringFormatter;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljavafx/beans/binding/StringExpression;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "locale":Ljava/util/Locale;
    return-object v0
.end method

.method private static getStringSafe(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 4877
    move-object v0, p0

    .local v0, "value":Ljava/lang/String;
    move-object v1, v0

    if-nez v1, :cond_0

    const-string v1, ""

    :goto_0
    move-object v0, v1

    .end local v0    # "value":Ljava/lang/String;
    return-object v0

    .restart local v0    # "value":Ljava/lang/String;
    :cond_0
    move-object v1, v0

    goto :goto_0
.end method

.method public static greaterThan(DLjavafx/beans/value/ObservableNumberValue;)Ljavafx/beans/binding/BooleanBinding;
    .locals 10

    .prologue
    .line 3286
    move-wide v0, p0

    .local v0, "op1":D
    move-object v2, p2

    .local v2, "op2":Ljavafx/beans/value/ObservableNumberValue;
    move-wide v3, v0

    invoke-static {v3, v4}, Lcom/sun/javafx/binding/DoubleConstant;->valueOf(D)Lcom/sun/javafx/binding/DoubleConstant;

    move-result-object v3

    move-object v4, v2

    const/4 v5, 0x1

    new-array v5, v5, [Ljavafx/beans/Observable;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    move-object v8, v2

    aput-object v8, v6, v7

    invoke-static {v3, v4, v5}, Ljavafx/beans/binding/Bindings;->greaterThan(Ljavafx/beans/value/ObservableNumberValue;Ljavafx/beans/value/ObservableNumberValue;[Ljavafx/beans/Observable;)Ljavafx/beans/binding/BooleanBinding;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "op1":D
    return-object v0
.end method

.method public static greaterThan(FLjavafx/beans/value/ObservableNumberValue;)Ljavafx/beans/binding/BooleanBinding;
    .locals 9

    .prologue
    .line 3320
    move v0, p0

    .local v0, "op1":F
    move-object v1, p1

    .local v1, "op2":Ljavafx/beans/value/ObservableNumberValue;
    move v2, v0

    invoke-static {v2}, Lcom/sun/javafx/binding/FloatConstant;->valueOf(F)Lcom/sun/javafx/binding/FloatConstant;

    move-result-object v2

    move-object v3, v1

    const/4 v4, 0x1

    new-array v4, v4, [Ljavafx/beans/Observable;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    move-object v7, v1

    aput-object v7, v5, v6

    invoke-static {v2, v3, v4}, Ljavafx/beans/binding/Bindings;->greaterThan(Ljavafx/beans/value/ObservableNumberValue;Ljavafx/beans/value/ObservableNumberValue;[Ljavafx/beans/Observable;)Ljavafx/beans/binding/BooleanBinding;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "op1":F
    return-object v0
.end method

.method public static greaterThan(ILjavafx/beans/value/ObservableNumberValue;)Ljavafx/beans/binding/BooleanBinding;
    .locals 9

    .prologue
    .line 3388
    move v0, p0

    .local v0, "op1":I
    move-object v1, p1

    .local v1, "op2":Ljavafx/beans/value/ObservableNumberValue;
    move v2, v0

    invoke-static {v2}, Lcom/sun/javafx/binding/IntegerConstant;->valueOf(I)Lcom/sun/javafx/binding/IntegerConstant;

    move-result-object v2

    move-object v3, v1

    const/4 v4, 0x1

    new-array v4, v4, [Ljavafx/beans/Observable;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    move-object v7, v1

    aput-object v7, v5, v6

    invoke-static {v2, v3, v4}, Ljavafx/beans/binding/Bindings;->greaterThan(Ljavafx/beans/value/ObservableNumberValue;Ljavafx/beans/value/ObservableNumberValue;[Ljavafx/beans/Observable;)Ljavafx/beans/binding/BooleanBinding;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "op1":I
    return-object v0
.end method

.method public static greaterThan(JLjavafx/beans/value/ObservableNumberValue;)Ljavafx/beans/binding/BooleanBinding;
    .locals 10

    .prologue
    .line 3354
    move-wide v0, p0

    .local v0, "op1":J
    move-object v2, p2

    .local v2, "op2":Ljavafx/beans/value/ObservableNumberValue;
    move-wide v3, v0

    invoke-static {v3, v4}, Lcom/sun/javafx/binding/LongConstant;->valueOf(J)Lcom/sun/javafx/binding/LongConstant;

    move-result-object v3

    move-object v4, v2

    const/4 v5, 0x1

    new-array v5, v5, [Ljavafx/beans/Observable;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    move-object v8, v2

    aput-object v8, v6, v7

    invoke-static {v3, v4, v5}, Ljavafx/beans/binding/Bindings;->greaterThan(Ljavafx/beans/value/ObservableNumberValue;Ljavafx/beans/value/ObservableNumberValue;[Ljavafx/beans/Observable;)Ljavafx/beans/binding/BooleanBinding;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "op1":J
    return-object v0
.end method

.method public static greaterThan(Ljava/lang/String;Ljavafx/beans/value/ObservableStringValue;)Ljavafx/beans/binding/BooleanBinding;
    .locals 9

    .prologue
    .line 5344
    move-object v0, p0

    .local v0, "op1":Ljava/lang/String;
    move-object v1, p1

    .local v1, "op2":Ljavafx/beans/value/ObservableStringValue;
    move-object v2, v0

    invoke-static {v2}, Lcom/sun/javafx/binding/StringConstant;->valueOf(Ljava/lang/String;)Lcom/sun/javafx/binding/StringConstant;

    move-result-object v2

    move-object v3, v1

    const/4 v4, 0x1

    new-array v4, v4, [Ljavafx/beans/Observable;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    move-object v7, v1

    aput-object v7, v5, v6

    invoke-static {v2, v3, v4}, Ljavafx/beans/binding/Bindings;->greaterThan(Ljavafx/beans/value/ObservableStringValue;Ljavafx/beans/value/ObservableStringValue;[Ljavafx/beans/Observable;)Ljavafx/beans/binding/BooleanBinding;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "op1":Ljava/lang/String;
    return-object v0
.end method

.method public static greaterThan(Ljavafx/beans/value/ObservableNumberValue;D)Ljavafx/beans/binding/BooleanBinding;
    .locals 11

    .prologue
    .line 3269
    move-object v0, p0

    .local v0, "op1":Ljavafx/beans/value/ObservableNumberValue;
    move-wide v1, p1

    .local v1, "op2":D
    move-object v3, v0

    move-wide v4, v1

    invoke-static {v4, v5}, Lcom/sun/javafx/binding/DoubleConstant;->valueOf(D)Lcom/sun/javafx/binding/DoubleConstant;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljavafx/beans/Observable;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    move-object v8, v0

    aput-object v8, v6, v7

    invoke-static {v3, v4, v5}, Ljavafx/beans/binding/Bindings;->greaterThan(Ljavafx/beans/value/ObservableNumberValue;Ljavafx/beans/value/ObservableNumberValue;[Ljavafx/beans/Observable;)Ljavafx/beans/binding/BooleanBinding;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "op1":Ljavafx/beans/value/ObservableNumberValue;
    return-object v0
.end method

.method public static greaterThan(Ljavafx/beans/value/ObservableNumberValue;F)Ljavafx/beans/binding/BooleanBinding;
    .locals 9

    .prologue
    .line 3303
    move-object v0, p0

    .local v0, "op1":Ljavafx/beans/value/ObservableNumberValue;
    move v1, p1

    .local v1, "op2":F
    move-object v2, v0

    move v3, v1

    invoke-static {v3}, Lcom/sun/javafx/binding/FloatConstant;->valueOf(F)Lcom/sun/javafx/binding/FloatConstant;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljavafx/beans/Observable;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    move-object v7, v0

    aput-object v7, v5, v6

    invoke-static {v2, v3, v4}, Ljavafx/beans/binding/Bindings;->greaterThan(Ljavafx/beans/value/ObservableNumberValue;Ljavafx/beans/value/ObservableNumberValue;[Ljavafx/beans/Observable;)Ljavafx/beans/binding/BooleanBinding;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "op1":Ljavafx/beans/value/ObservableNumberValue;
    return-object v0
.end method

.method public static greaterThan(Ljavafx/beans/value/ObservableNumberValue;I)Ljavafx/beans/binding/BooleanBinding;
    .locals 9

    .prologue
    .line 3371
    move-object v0, p0

    .local v0, "op1":Ljavafx/beans/value/ObservableNumberValue;
    move v1, p1

    .local v1, "op2":I
    move-object v2, v0

    move v3, v1

    invoke-static {v3}, Lcom/sun/javafx/binding/IntegerConstant;->valueOf(I)Lcom/sun/javafx/binding/IntegerConstant;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljavafx/beans/Observable;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    move-object v7, v0

    aput-object v7, v5, v6

    invoke-static {v2, v3, v4}, Ljavafx/beans/binding/Bindings;->greaterThan(Ljavafx/beans/value/ObservableNumberValue;Ljavafx/beans/value/ObservableNumberValue;[Ljavafx/beans/Observable;)Ljavafx/beans/binding/BooleanBinding;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "op1":Ljavafx/beans/value/ObservableNumberValue;
    return-object v0
.end method

.method public static greaterThan(Ljavafx/beans/value/ObservableNumberValue;J)Ljavafx/beans/binding/BooleanBinding;
    .locals 11

    .prologue
    .line 3337
    move-object v0, p0

    .local v0, "op1":Ljavafx/beans/value/ObservableNumberValue;
    move-wide v1, p1

    .local v1, "op2":J
    move-object v3, v0

    move-wide v4, v1

    invoke-static {v4, v5}, Lcom/sun/javafx/binding/LongConstant;->valueOf(J)Lcom/sun/javafx/binding/LongConstant;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljavafx/beans/Observable;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    move-object v8, v0

    aput-object v8, v6, v7

    invoke-static {v3, v4, v5}, Ljavafx/beans/binding/Bindings;->greaterThan(Ljavafx/beans/value/ObservableNumberValue;Ljavafx/beans/value/ObservableNumberValue;[Ljavafx/beans/Observable;)Ljavafx/beans/binding/BooleanBinding;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "op1":Ljavafx/beans/value/ObservableNumberValue;
    return-object v0
.end method

.method public static greaterThan(Ljavafx/beans/value/ObservableNumberValue;Ljavafx/beans/value/ObservableNumberValue;)Ljavafx/beans/binding/BooleanBinding;
    .locals 9

    .prologue
    .line 3252
    move-object v0, p0

    .local v0, "op1":Ljavafx/beans/value/ObservableNumberValue;
    move-object v1, p1

    .local v1, "op2":Ljavafx/beans/value/ObservableNumberValue;
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x2

    new-array v4, v4, [Ljavafx/beans/Observable;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    move-object v7, v0

    aput-object v7, v5, v6

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x1

    move-object v7, v1

    aput-object v7, v5, v6

    invoke-static {v2, v3, v4}, Ljavafx/beans/binding/Bindings;->greaterThan(Ljavafx/beans/value/ObservableNumberValue;Ljavafx/beans/value/ObservableNumberValue;[Ljavafx/beans/Observable;)Ljavafx/beans/binding/BooleanBinding;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "op1":Ljavafx/beans/value/ObservableNumberValue;
    return-object v0
.end method

.method private static varargs greaterThan(Ljavafx/beans/value/ObservableNumberValue;Ljavafx/beans/value/ObservableNumberValue;[Ljavafx/beans/Observable;)Ljavafx/beans/binding/BooleanBinding;
    .locals 9

    .prologue
    .line 3133
    move-object v0, p0

    .local v0, "op1":Ljavafx/beans/value/ObservableNumberValue;
    move-object v1, p1

    .local v1, "op2":Ljavafx/beans/value/ObservableNumberValue;
    move-object v2, p2

    .local v2, "dependencies":[Ljavafx/beans/Observable;
    move-object v3, v0

    if-eqz v3, :cond_0

    move-object v3, v1

    if-nez v3, :cond_1

    .line 3134
    :cond_0
    new-instance v3, Ljava/lang/NullPointerException;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    const-string v5, "Operands cannot be null."

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 3136
    :cond_1
    sget-boolean v3, Ljavafx/beans/binding/Bindings;->$assertionsDisabled:Z

    if-nez v3, :cond_3

    move-object v3, v2

    if-eqz v3, :cond_2

    move-object v3, v2

    array-length v3, v3

    if-gtz v3, :cond_3

    :cond_2
    new-instance v3, Ljava/lang/AssertionError;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 3138
    :cond_3
    move-object v3, v0

    instance-of v3, v3, Ljavafx/beans/value/ObservableDoubleValue;

    if-nez v3, :cond_4

    move-object v3, v1

    instance-of v3, v3, Ljavafx/beans/value/ObservableDoubleValue;

    if-eqz v3, :cond_5

    .line 3139
    :cond_4
    new-instance v3, Ljavafx/beans/binding/Bindings$36;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v2

    move-object v6, v0

    move-object v7, v1

    invoke-direct {v4, v5, v6, v7}, Ljavafx/beans/binding/Bindings$36;-><init>([Ljavafx/beans/Observable;Ljavafx/beans/value/ObservableNumberValue;Ljavafx/beans/value/ObservableNumberValue;)V

    move-object v0, v3

    .line 3211
    .end local v0    # "op1":Ljavafx/beans/value/ObservableNumberValue;
    :goto_0
    return-object v0

    .line 3162
    .restart local v0    # "op1":Ljavafx/beans/value/ObservableNumberValue;
    :cond_5
    move-object v3, v0

    instance-of v3, v3, Ljavafx/beans/value/ObservableFloatValue;

    if-nez v3, :cond_6

    move-object v3, v1

    instance-of v3, v3, Ljavafx/beans/value/ObservableFloatValue;

    if-eqz v3, :cond_7

    .line 3163
    :cond_6
    new-instance v3, Ljavafx/beans/binding/Bindings$37;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v2

    move-object v6, v0

    move-object v7, v1

    invoke-direct {v4, v5, v6, v7}, Ljavafx/beans/binding/Bindings$37;-><init>([Ljavafx/beans/Observable;Ljavafx/beans/value/ObservableNumberValue;Ljavafx/beans/value/ObservableNumberValue;)V

    move-object v0, v3

    goto :goto_0

    .line 3186
    :cond_7
    move-object v3, v0

    instance-of v3, v3, Ljavafx/beans/value/ObservableLongValue;

    if-nez v3, :cond_8

    move-object v3, v1

    instance-of v3, v3, Ljavafx/beans/value/ObservableLongValue;

    if-eqz v3, :cond_9

    .line 3187
    :cond_8
    new-instance v3, Ljavafx/beans/binding/Bindings$38;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v2

    move-object v6, v0

    move-object v7, v1

    invoke-direct {v4, v5, v6, v7}, Ljavafx/beans/binding/Bindings$38;-><init>([Ljavafx/beans/Observable;Ljavafx/beans/value/ObservableNumberValue;Ljavafx/beans/value/ObservableNumberValue;)V

    move-object v0, v3

    goto :goto_0

    .line 3211
    :cond_9
    new-instance v3, Ljavafx/beans/binding/Bindings$39;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v2

    move-object v6, v0

    move-object v7, v1

    invoke-direct {v4, v5, v6, v7}, Ljavafx/beans/binding/Bindings$39;-><init>([Ljavafx/beans/Observable;Ljavafx/beans/value/ObservableNumberValue;Ljavafx/beans/value/ObservableNumberValue;)V

    move-object v0, v3

    goto :goto_0
.end method

.method public static greaterThan(Ljavafx/beans/value/ObservableStringValue;Ljava/lang/String;)Ljavafx/beans/binding/BooleanBinding;
    .locals 9

    .prologue
    .line 5324
    move-object v0, p0

    .local v0, "op1":Ljavafx/beans/value/ObservableStringValue;
    move-object v1, p1

    .local v1, "op2":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    invoke-static {v3}, Lcom/sun/javafx/binding/StringConstant;->valueOf(Ljava/lang/String;)Lcom/sun/javafx/binding/StringConstant;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljavafx/beans/Observable;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    move-object v7, v0

    aput-object v7, v5, v6

    invoke-static {v2, v3, v4}, Ljavafx/beans/binding/Bindings;->greaterThan(Ljavafx/beans/value/ObservableStringValue;Ljavafx/beans/value/ObservableStringValue;[Ljavafx/beans/Observable;)Ljavafx/beans/binding/BooleanBinding;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "op1":Ljavafx/beans/value/ObservableStringValue;
    return-object v0
.end method

.method public static greaterThan(Ljavafx/beans/value/ObservableStringValue;Ljavafx/beans/value/ObservableStringValue;)Ljavafx/beans/binding/BooleanBinding;
    .locals 9

    .prologue
    .line 5304
    move-object v0, p0

    .local v0, "op1":Ljavafx/beans/value/ObservableStringValue;
    move-object v1, p1

    .local v1, "op2":Ljavafx/beans/value/ObservableStringValue;
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x2

    new-array v4, v4, [Ljavafx/beans/Observable;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    move-object v7, v0

    aput-object v7, v5, v6

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x1

    move-object v7, v1

    aput-object v7, v5, v6

    invoke-static {v2, v3, v4}, Ljavafx/beans/binding/Bindings;->greaterThan(Ljavafx/beans/value/ObservableStringValue;Ljavafx/beans/value/ObservableStringValue;[Ljavafx/beans/Observable;)Ljavafx/beans/binding/BooleanBinding;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "op1":Ljavafx/beans/value/ObservableStringValue;
    return-object v0
.end method

.method private static varargs greaterThan(Ljavafx/beans/value/ObservableStringValue;Ljavafx/beans/value/ObservableStringValue;[Ljavafx/beans/Observable;)Ljavafx/beans/binding/BooleanBinding;
    .locals 9

    .prologue
    .line 5254
    move-object v0, p0

    .local v0, "op1":Ljavafx/beans/value/ObservableStringValue;
    move-object v1, p1

    .local v1, "op2":Ljavafx/beans/value/ObservableStringValue;
    move-object v2, p2

    .local v2, "dependencies":[Ljavafx/beans/Observable;
    move-object v3, v0

    if-eqz v3, :cond_0

    move-object v3, v1

    if-nez v3, :cond_1

    .line 5255
    :cond_0
    new-instance v3, Ljava/lang/NullPointerException;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    const-string v5, "Operands cannot be null."

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 5257
    :cond_1
    sget-boolean v3, Ljavafx/beans/binding/Bindings;->$assertionsDisabled:Z

    if-nez v3, :cond_3

    move-object v3, v2

    if-eqz v3, :cond_2

    move-object v3, v2

    array-length v3, v3

    if-gtz v3, :cond_3

    :cond_2
    new-instance v3, Ljava/lang/AssertionError;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 5259
    :cond_3
    new-instance v3, Ljavafx/beans/binding/Bindings$59;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v2

    move-object v6, v0

    move-object v7, v1

    invoke-direct {v4, v5, v6, v7}, Ljavafx/beans/binding/Bindings$59;-><init>([Ljavafx/beans/Observable;Ljavafx/beans/value/ObservableStringValue;Ljavafx/beans/value/ObservableStringValue;)V

    move-object v0, v3

    .end local v0    # "op1":Ljavafx/beans/value/ObservableStringValue;
    return-object v0
.end method

.method public static greaterThanOrEqual(DLjavafx/beans/value/ObservableNumberValue;)Ljavafx/beans/binding/BooleanBinding;
    .locals 10

    .prologue
    .line 3709
    move-wide v0, p0

    .local v0, "op1":D
    move-object v2, p2

    .local v2, "op2":Ljavafx/beans/value/ObservableNumberValue;
    move-wide v3, v0

    invoke-static {v3, v4}, Lcom/sun/javafx/binding/DoubleConstant;->valueOf(D)Lcom/sun/javafx/binding/DoubleConstant;

    move-result-object v3

    move-object v4, v2

    const/4 v5, 0x1

    new-array v5, v5, [Ljavafx/beans/Observable;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    move-object v8, v2

    aput-object v8, v6, v7

    invoke-static {v3, v4, v5}, Ljavafx/beans/binding/Bindings;->greaterThanOrEqual(Ljavafx/beans/value/ObservableNumberValue;Ljavafx/beans/value/ObservableNumberValue;[Ljavafx/beans/Observable;)Ljavafx/beans/binding/BooleanBinding;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "op1":D
    return-object v0
.end method

.method public static greaterThanOrEqual(FLjavafx/beans/value/ObservableNumberValue;)Ljavafx/beans/binding/BooleanBinding;
    .locals 9

    .prologue
    .line 3743
    move v0, p0

    .local v0, "op1":F
    move-object v1, p1

    .local v1, "op2":Ljavafx/beans/value/ObservableNumberValue;
    move v2, v0

    invoke-static {v2}, Lcom/sun/javafx/binding/FloatConstant;->valueOf(F)Lcom/sun/javafx/binding/FloatConstant;

    move-result-object v2

    move-object v3, v1

    const/4 v4, 0x1

    new-array v4, v4, [Ljavafx/beans/Observable;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    move-object v7, v1

    aput-object v7, v5, v6

    invoke-static {v2, v3, v4}, Ljavafx/beans/binding/Bindings;->greaterThanOrEqual(Ljavafx/beans/value/ObservableNumberValue;Ljavafx/beans/value/ObservableNumberValue;[Ljavafx/beans/Observable;)Ljavafx/beans/binding/BooleanBinding;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "op1":F
    return-object v0
.end method

.method public static greaterThanOrEqual(ILjavafx/beans/value/ObservableNumberValue;)Ljavafx/beans/binding/BooleanBinding;
    .locals 9

    .prologue
    .line 3811
    move v0, p0

    .local v0, "op1":I
    move-object v1, p1

    .local v1, "op2":Ljavafx/beans/value/ObservableNumberValue;
    move v2, v0

    invoke-static {v2}, Lcom/sun/javafx/binding/IntegerConstant;->valueOf(I)Lcom/sun/javafx/binding/IntegerConstant;

    move-result-object v2

    move-object v3, v1

    const/4 v4, 0x1

    new-array v4, v4, [Ljavafx/beans/Observable;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    move-object v7, v1

    aput-object v7, v5, v6

    invoke-static {v2, v3, v4}, Ljavafx/beans/binding/Bindings;->greaterThanOrEqual(Ljavafx/beans/value/ObservableNumberValue;Ljavafx/beans/value/ObservableNumberValue;[Ljavafx/beans/Observable;)Ljavafx/beans/binding/BooleanBinding;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "op1":I
    return-object v0
.end method

.method public static greaterThanOrEqual(JLjavafx/beans/value/ObservableNumberValue;)Ljavafx/beans/binding/BooleanBinding;
    .locals 10

    .prologue
    .line 3777
    move-wide v0, p0

    .local v0, "op1":J
    move-object v2, p2

    .local v2, "op2":Ljavafx/beans/value/ObservableNumberValue;
    move-wide v3, v0

    invoke-static {v3, v4}, Lcom/sun/javafx/binding/LongConstant;->valueOf(J)Lcom/sun/javafx/binding/LongConstant;

    move-result-object v3

    move-object v4, v2

    const/4 v5, 0x1

    new-array v5, v5, [Ljavafx/beans/Observable;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    move-object v8, v2

    aput-object v8, v6, v7

    invoke-static {v3, v4, v5}, Ljavafx/beans/binding/Bindings;->greaterThanOrEqual(Ljavafx/beans/value/ObservableNumberValue;Ljavafx/beans/value/ObservableNumberValue;[Ljavafx/beans/Observable;)Ljavafx/beans/binding/BooleanBinding;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "op1":J
    return-object v0
.end method

.method public static greaterThanOrEqual(Ljava/lang/String;Ljavafx/beans/value/ObservableStringValue;)Ljavafx/beans/binding/BooleanBinding;
    .locals 9

    .prologue
    .line 5503
    move-object v0, p0

    .local v0, "op1":Ljava/lang/String;
    move-object v1, p1

    .local v1, "op2":Ljavafx/beans/value/ObservableStringValue;
    move-object v2, v0

    invoke-static {v2}, Lcom/sun/javafx/binding/StringConstant;->valueOf(Ljava/lang/String;)Lcom/sun/javafx/binding/StringConstant;

    move-result-object v2

    move-object v3, v1

    const/4 v4, 0x1

    new-array v4, v4, [Ljavafx/beans/Observable;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    move-object v7, v1

    aput-object v7, v5, v6

    invoke-static {v2, v3, v4}, Ljavafx/beans/binding/Bindings;->greaterThanOrEqual(Ljavafx/beans/value/ObservableStringValue;Ljavafx/beans/value/ObservableStringValue;[Ljavafx/beans/Observable;)Ljavafx/beans/binding/BooleanBinding;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "op1":Ljava/lang/String;
    return-object v0
.end method

.method public static greaterThanOrEqual(Ljavafx/beans/value/ObservableNumberValue;D)Ljavafx/beans/binding/BooleanBinding;
    .locals 11

    .prologue
    .line 3692
    move-object v0, p0

    .local v0, "op1":Ljavafx/beans/value/ObservableNumberValue;
    move-wide v1, p1

    .local v1, "op2":D
    move-object v3, v0

    move-wide v4, v1

    invoke-static {v4, v5}, Lcom/sun/javafx/binding/DoubleConstant;->valueOf(D)Lcom/sun/javafx/binding/DoubleConstant;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljavafx/beans/Observable;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    move-object v8, v0

    aput-object v8, v6, v7

    invoke-static {v3, v4, v5}, Ljavafx/beans/binding/Bindings;->greaterThanOrEqual(Ljavafx/beans/value/ObservableNumberValue;Ljavafx/beans/value/ObservableNumberValue;[Ljavafx/beans/Observable;)Ljavafx/beans/binding/BooleanBinding;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "op1":Ljavafx/beans/value/ObservableNumberValue;
    return-object v0
.end method

.method public static greaterThanOrEqual(Ljavafx/beans/value/ObservableNumberValue;F)Ljavafx/beans/binding/BooleanBinding;
    .locals 9

    .prologue
    .line 3726
    move-object v0, p0

    .local v0, "op1":Ljavafx/beans/value/ObservableNumberValue;
    move v1, p1

    .local v1, "op2":F
    move-object v2, v0

    move v3, v1

    invoke-static {v3}, Lcom/sun/javafx/binding/FloatConstant;->valueOf(F)Lcom/sun/javafx/binding/FloatConstant;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljavafx/beans/Observable;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    move-object v7, v0

    aput-object v7, v5, v6

    invoke-static {v2, v3, v4}, Ljavafx/beans/binding/Bindings;->greaterThanOrEqual(Ljavafx/beans/value/ObservableNumberValue;Ljavafx/beans/value/ObservableNumberValue;[Ljavafx/beans/Observable;)Ljavafx/beans/binding/BooleanBinding;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "op1":Ljavafx/beans/value/ObservableNumberValue;
    return-object v0
.end method

.method public static greaterThanOrEqual(Ljavafx/beans/value/ObservableNumberValue;I)Ljavafx/beans/binding/BooleanBinding;
    .locals 9

    .prologue
    .line 3794
    move-object v0, p0

    .local v0, "op1":Ljavafx/beans/value/ObservableNumberValue;
    move v1, p1

    .local v1, "op2":I
    move-object v2, v0

    move v3, v1

    invoke-static {v3}, Lcom/sun/javafx/binding/IntegerConstant;->valueOf(I)Lcom/sun/javafx/binding/IntegerConstant;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljavafx/beans/Observable;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    move-object v7, v0

    aput-object v7, v5, v6

    invoke-static {v2, v3, v4}, Ljavafx/beans/binding/Bindings;->greaterThanOrEqual(Ljavafx/beans/value/ObservableNumberValue;Ljavafx/beans/value/ObservableNumberValue;[Ljavafx/beans/Observable;)Ljavafx/beans/binding/BooleanBinding;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "op1":Ljavafx/beans/value/ObservableNumberValue;
    return-object v0
.end method

.method public static greaterThanOrEqual(Ljavafx/beans/value/ObservableNumberValue;J)Ljavafx/beans/binding/BooleanBinding;
    .locals 11

    .prologue
    .line 3760
    move-object v0, p0

    .local v0, "op1":Ljavafx/beans/value/ObservableNumberValue;
    move-wide v1, p1

    .local v1, "op2":J
    move-object v3, v0

    move-wide v4, v1

    invoke-static {v4, v5}, Lcom/sun/javafx/binding/LongConstant;->valueOf(J)Lcom/sun/javafx/binding/LongConstant;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljavafx/beans/Observable;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    move-object v8, v0

    aput-object v8, v6, v7

    invoke-static {v3, v4, v5}, Ljavafx/beans/binding/Bindings;->greaterThanOrEqual(Ljavafx/beans/value/ObservableNumberValue;Ljavafx/beans/value/ObservableNumberValue;[Ljavafx/beans/Observable;)Ljavafx/beans/binding/BooleanBinding;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "op1":Ljavafx/beans/value/ObservableNumberValue;
    return-object v0
.end method

.method public static greaterThanOrEqual(Ljavafx/beans/value/ObservableNumberValue;Ljavafx/beans/value/ObservableNumberValue;)Ljavafx/beans/binding/BooleanBinding;
    .locals 9

    .prologue
    .line 3675
    move-object v0, p0

    .local v0, "op1":Ljavafx/beans/value/ObservableNumberValue;
    move-object v1, p1

    .local v1, "op2":Ljavafx/beans/value/ObservableNumberValue;
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x2

    new-array v4, v4, [Ljavafx/beans/Observable;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    move-object v7, v0

    aput-object v7, v5, v6

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x1

    move-object v7, v1

    aput-object v7, v5, v6

    invoke-static {v2, v3, v4}, Ljavafx/beans/binding/Bindings;->greaterThanOrEqual(Ljavafx/beans/value/ObservableNumberValue;Ljavafx/beans/value/ObservableNumberValue;[Ljavafx/beans/Observable;)Ljavafx/beans/binding/BooleanBinding;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "op1":Ljavafx/beans/value/ObservableNumberValue;
    return-object v0
.end method

.method private static varargs greaterThanOrEqual(Ljavafx/beans/value/ObservableNumberValue;Ljavafx/beans/value/ObservableNumberValue;[Ljavafx/beans/Observable;)Ljavafx/beans/binding/BooleanBinding;
    .locals 9

    .prologue
    .line 3556
    move-object v0, p0

    .local v0, "op1":Ljavafx/beans/value/ObservableNumberValue;
    move-object v1, p1

    .local v1, "op2":Ljavafx/beans/value/ObservableNumberValue;
    move-object v2, p2

    .local v2, "dependencies":[Ljavafx/beans/Observable;
    move-object v3, v0

    if-eqz v3, :cond_0

    move-object v3, v1

    if-nez v3, :cond_1

    .line 3557
    :cond_0
    new-instance v3, Ljava/lang/NullPointerException;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    const-string v5, "Operands cannot be null."

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 3559
    :cond_1
    sget-boolean v3, Ljavafx/beans/binding/Bindings;->$assertionsDisabled:Z

    if-nez v3, :cond_3

    move-object v3, v2

    if-eqz v3, :cond_2

    move-object v3, v2

    array-length v3, v3

    if-gtz v3, :cond_3

    :cond_2
    new-instance v3, Ljava/lang/AssertionError;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 3561
    :cond_3
    move-object v3, v0

    instance-of v3, v3, Ljavafx/beans/value/ObservableDoubleValue;

    if-nez v3, :cond_4

    move-object v3, v1

    instance-of v3, v3, Ljavafx/beans/value/ObservableDoubleValue;

    if-eqz v3, :cond_5

    .line 3562
    :cond_4
    new-instance v3, Ljavafx/beans/binding/Bindings$40;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v2

    move-object v6, v0

    move-object v7, v1

    invoke-direct {v4, v5, v6, v7}, Ljavafx/beans/binding/Bindings$40;-><init>([Ljavafx/beans/Observable;Ljavafx/beans/value/ObservableNumberValue;Ljavafx/beans/value/ObservableNumberValue;)V

    move-object v0, v3

    .line 3634
    .end local v0    # "op1":Ljavafx/beans/value/ObservableNumberValue;
    :goto_0
    return-object v0

    .line 3585
    .restart local v0    # "op1":Ljavafx/beans/value/ObservableNumberValue;
    :cond_5
    move-object v3, v0

    instance-of v3, v3, Ljavafx/beans/value/ObservableFloatValue;

    if-nez v3, :cond_6

    move-object v3, v1

    instance-of v3, v3, Ljavafx/beans/value/ObservableFloatValue;

    if-eqz v3, :cond_7

    .line 3586
    :cond_6
    new-instance v3, Ljavafx/beans/binding/Bindings$41;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v2

    move-object v6, v0

    move-object v7, v1

    invoke-direct {v4, v5, v6, v7}, Ljavafx/beans/binding/Bindings$41;-><init>([Ljavafx/beans/Observable;Ljavafx/beans/value/ObservableNumberValue;Ljavafx/beans/value/ObservableNumberValue;)V

    move-object v0, v3

    goto :goto_0

    .line 3609
    :cond_7
    move-object v3, v0

    instance-of v3, v3, Ljavafx/beans/value/ObservableLongValue;

    if-nez v3, :cond_8

    move-object v3, v1

    instance-of v3, v3, Ljavafx/beans/value/ObservableLongValue;

    if-eqz v3, :cond_9

    .line 3610
    :cond_8
    new-instance v3, Ljavafx/beans/binding/Bindings$42;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v2

    move-object v6, v0

    move-object v7, v1

    invoke-direct {v4, v5, v6, v7}, Ljavafx/beans/binding/Bindings$42;-><init>([Ljavafx/beans/Observable;Ljavafx/beans/value/ObservableNumberValue;Ljavafx/beans/value/ObservableNumberValue;)V

    move-object v0, v3

    goto :goto_0

    .line 3634
    :cond_9
    new-instance v3, Ljavafx/beans/binding/Bindings$43;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v2

    move-object v6, v0

    move-object v7, v1

    invoke-direct {v4, v5, v6, v7}, Ljavafx/beans/binding/Bindings$43;-><init>([Ljavafx/beans/Observable;Ljavafx/beans/value/ObservableNumberValue;Ljavafx/beans/value/ObservableNumberValue;)V

    move-object v0, v3

    goto :goto_0
.end method

.method public static greaterThanOrEqual(Ljavafx/beans/value/ObservableStringValue;Ljava/lang/String;)Ljavafx/beans/binding/BooleanBinding;
    .locals 9

    .prologue
    .line 5483
    move-object v0, p0

    .local v0, "op1":Ljavafx/beans/value/ObservableStringValue;
    move-object v1, p1

    .local v1, "op2":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    invoke-static {v3}, Lcom/sun/javafx/binding/StringConstant;->valueOf(Ljava/lang/String;)Lcom/sun/javafx/binding/StringConstant;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljavafx/beans/Observable;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    move-object v7, v0

    aput-object v7, v5, v6

    invoke-static {v2, v3, v4}, Ljavafx/beans/binding/Bindings;->greaterThanOrEqual(Ljavafx/beans/value/ObservableStringValue;Ljavafx/beans/value/ObservableStringValue;[Ljavafx/beans/Observable;)Ljavafx/beans/binding/BooleanBinding;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "op1":Ljavafx/beans/value/ObservableStringValue;
    return-object v0
.end method

.method public static greaterThanOrEqual(Ljavafx/beans/value/ObservableStringValue;Ljavafx/beans/value/ObservableStringValue;)Ljavafx/beans/binding/BooleanBinding;
    .locals 9

    .prologue
    .line 5463
    move-object v0, p0

    .local v0, "op1":Ljavafx/beans/value/ObservableStringValue;
    move-object v1, p1

    .local v1, "op2":Ljavafx/beans/value/ObservableStringValue;
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x2

    new-array v4, v4, [Ljavafx/beans/Observable;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    move-object v7, v0

    aput-object v7, v5, v6

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x1

    move-object v7, v1

    aput-object v7, v5, v6

    invoke-static {v2, v3, v4}, Ljavafx/beans/binding/Bindings;->greaterThanOrEqual(Ljavafx/beans/value/ObservableStringValue;Ljavafx/beans/value/ObservableStringValue;[Ljavafx/beans/Observable;)Ljavafx/beans/binding/BooleanBinding;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "op1":Ljavafx/beans/value/ObservableStringValue;
    return-object v0
.end method

.method private static varargs greaterThanOrEqual(Ljavafx/beans/value/ObservableStringValue;Ljavafx/beans/value/ObservableStringValue;[Ljavafx/beans/Observable;)Ljavafx/beans/binding/BooleanBinding;
    .locals 9

    .prologue
    .line 5413
    move-object v0, p0

    .local v0, "op1":Ljavafx/beans/value/ObservableStringValue;
    move-object v1, p1

    .local v1, "op2":Ljavafx/beans/value/ObservableStringValue;
    move-object v2, p2

    .local v2, "dependencies":[Ljavafx/beans/Observable;
    move-object v3, v0

    if-eqz v3, :cond_0

    move-object v3, v1

    if-nez v3, :cond_1

    .line 5414
    :cond_0
    new-instance v3, Ljava/lang/NullPointerException;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    const-string v5, "Operands cannot be null."

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 5416
    :cond_1
    sget-boolean v3, Ljavafx/beans/binding/Bindings;->$assertionsDisabled:Z

    if-nez v3, :cond_3

    move-object v3, v2

    if-eqz v3, :cond_2

    move-object v3, v2

    array-length v3, v3

    if-gtz v3, :cond_3

    :cond_2
    new-instance v3, Ljava/lang/AssertionError;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 5418
    :cond_3
    new-instance v3, Ljavafx/beans/binding/Bindings$60;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v2

    move-object v6, v0

    move-object v7, v1

    invoke-direct {v4, v5, v6, v7}, Ljavafx/beans/binding/Bindings$60;-><init>([Ljavafx/beans/Observable;Ljavafx/beans/value/ObservableStringValue;Ljavafx/beans/value/ObservableStringValue;)V

    move-object v0, v3

    .end local v0    # "op1":Ljavafx/beans/value/ObservableStringValue;
    return-object v0
.end method

.method public static integerValueAt(Ljavafx/collections/ObservableIntegerArray;I)Ljavafx/beans/binding/IntegerBinding;
    .locals 7

    .prologue
    .line 7155
    move-object v0, p0

    .local v0, "op":Ljavafx/collections/ObservableIntegerArray;
    move v1, p1

    .local v1, "index":I
    move-object v2, v0

    if-nez v2, :cond_0

    .line 7156
    new-instance v2, Ljava/lang/NullPointerException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const-string v4, "Array cannot be null."

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 7158
    :cond_0
    move v2, v1

    if-gez v2, :cond_1

    .line 7159
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const-string v4, "Index cannot be negative"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 7162
    :cond_1
    new-instance v2, Ljavafx/beans/binding/Bindings$91;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    move v5, v1

    invoke-direct {v3, v4, v5}, Ljavafx/beans/binding/Bindings$91;-><init>(Ljavafx/collections/ObservableIntegerArray;I)V

    move-object v0, v2

    .end local v0    # "op":Ljavafx/collections/ObservableIntegerArray;
    return-object v0
.end method

.method public static integerValueAt(Ljavafx/collections/ObservableIntegerArray;Ljavafx/beans/value/ObservableIntegerValue;)Ljavafx/beans/binding/IntegerBinding;
    .locals 4

    .prologue
    .line 7202
    move-object v0, p0

    .local v0, "op":Ljavafx/collections/ObservableIntegerArray;
    move-object v1, p1

    .local v1, "index":Ljavafx/beans/value/ObservableIntegerValue;
    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Ljavafx/beans/binding/Bindings;->integerValueAt(Ljavafx/collections/ObservableIntegerArray;Ljavafx/beans/value/ObservableNumberValue;)Ljavafx/beans/binding/IntegerBinding;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "op":Ljavafx/collections/ObservableIntegerArray;
    return-object v0
.end method

.method public static integerValueAt(Ljavafx/collections/ObservableIntegerArray;Ljavafx/beans/value/ObservableNumberValue;)Ljavafx/beans/binding/IntegerBinding;
    .locals 7

    .prologue
    .line 7217
    move-object v0, p0

    .local v0, "op":Ljavafx/collections/ObservableIntegerArray;
    move-object v1, p1

    .local v1, "index":Ljavafx/beans/value/ObservableNumberValue;
    move-object v2, v0

    if-eqz v2, :cond_0

    move-object v2, v1

    if-nez v2, :cond_1

    .line 7218
    :cond_0
    new-instance v2, Ljava/lang/NullPointerException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const-string v4, "Operands cannot be null."

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 7221
    :cond_1
    new-instance v2, Ljavafx/beans/binding/Bindings$92;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Ljavafx/beans/binding/Bindings$92;-><init>(Ljavafx/collections/ObservableIntegerArray;Ljavafx/beans/value/ObservableNumberValue;)V

    move-object v0, v2

    .end local v0    # "op":Ljavafx/collections/ObservableIntegerArray;
    return-object v0
.end method

.method public static integerValueAt(Ljavafx/collections/ObservableList;I)Ljavafx/beans/binding/IntegerBinding;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/ObservableList",
            "<+",
            "Ljava/lang/Number;",
            ">;I)",
            "Ljavafx/beans/binding/IntegerBinding;"
        }
    .end annotation

    .prologue
    .line 6543
    move-object v0, p0

    .local v0, "op":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<+Ljava/lang/Number;>;"
    move v1, p1

    .local v1, "index":I
    move-object v2, v0

    if-nez v2, :cond_0

    .line 6544
    new-instance v2, Ljava/lang/NullPointerException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const-string v4, "List cannot be null."

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 6546
    :cond_0
    move v2, v1

    if-gez v2, :cond_1

    .line 6547
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const-string v4, "Index cannot be negative"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 6550
    :cond_1
    new-instance v2, Ljavafx/beans/binding/Bindings$79;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    move v5, v1

    invoke-direct {v3, v4, v5}, Ljavafx/beans/binding/Bindings$79;-><init>(Ljavafx/collections/ObservableList;I)V

    move-object v0, v2

    .end local v0    # "op":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<+Ljava/lang/Number;>;"
    return-object v0
.end method

.method public static integerValueAt(Ljavafx/collections/ObservableList;Ljavafx/beans/value/ObservableIntegerValue;)Ljavafx/beans/binding/IntegerBinding;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/ObservableList",
            "<+",
            "Ljava/lang/Number;",
            ">;",
            "Ljavafx/beans/value/ObservableIntegerValue;",
            ")",
            "Ljavafx/beans/binding/IntegerBinding;"
        }
    .end annotation

    .prologue
    .line 6595
    move-object v0, p0

    .local v0, "op":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<+Ljava/lang/Number;>;"
    move-object v1, p1

    .local v1, "index":Ljavafx/beans/value/ObservableIntegerValue;
    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Ljavafx/beans/binding/Bindings;->integerValueAt(Ljavafx/collections/ObservableList;Ljavafx/beans/value/ObservableNumberValue;)Ljavafx/beans/binding/IntegerBinding;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "op":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<+Ljava/lang/Number;>;"
    return-object v0
.end method

.method public static integerValueAt(Ljavafx/collections/ObservableList;Ljavafx/beans/value/ObservableNumberValue;)Ljavafx/beans/binding/IntegerBinding;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/ObservableList",
            "<+",
            "Ljava/lang/Number;",
            ">;",
            "Ljavafx/beans/value/ObservableNumberValue;",
            ")",
            "Ljavafx/beans/binding/IntegerBinding;"
        }
    .end annotation

    .prologue
    .line 6610
    move-object v0, p0

    .local v0, "op":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<+Ljava/lang/Number;>;"
    move-object v1, p1

    .local v1, "index":Ljavafx/beans/value/ObservableNumberValue;
    move-object v2, v0

    if-eqz v2, :cond_0

    move-object v2, v1

    if-nez v2, :cond_1

    .line 6611
    :cond_0
    new-instance v2, Ljava/lang/NullPointerException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const-string v4, "Operands cannot be null."

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 6614
    :cond_1
    new-instance v2, Ljavafx/beans/binding/Bindings$80;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Ljavafx/beans/binding/Bindings$80;-><init>(Ljavafx/collections/ObservableList;Ljavafx/beans/value/ObservableNumberValue;)V

    move-object v0, v2

    .end local v0    # "op":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<+Ljava/lang/Number;>;"
    return-object v0
.end method

.method public static integerValueAt(Ljavafx/collections/ObservableMap;Ljava/lang/Object;)Ljavafx/beans/binding/IntegerBinding;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljavafx/collections/ObservableMap",
            "<TK;+",
            "Ljava/lang/Number;",
            ">;TK;)",
            "Ljavafx/beans/binding/IntegerBinding;"
        }
    .end annotation

    .prologue
    .line 7811
    move-object v0, p0

    .local v0, "op":Ljavafx/collections/ObservableMap;, "Ljavafx/collections/ObservableMap<TK;+Ljava/lang/Number;>;"
    move-object v1, p1

    .local v1, "key":Ljava/lang/Object;, "TK;"
    move-object v2, v0

    if-nez v2, :cond_0

    .line 7812
    new-instance v2, Ljava/lang/NullPointerException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const-string v4, "Map cannot be null."

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 7815
    :cond_0
    new-instance v2, Ljavafx/beans/binding/Bindings$104;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Ljavafx/beans/binding/Bindings$104;-><init>(Ljavafx/collections/ObservableMap;Ljava/lang/Object;)V

    move-object v0, v2

    .end local v0    # "op":Ljavafx/collections/ObservableMap;, "Ljavafx/collections/ObservableMap<TK;+Ljava/lang/Number;>;"
    return-object v0
.end method

.method public static integerValueAt(Ljavafx/collections/ObservableMap;Ljavafx/beans/value/ObservableValue;)Ljavafx/beans/binding/IntegerBinding;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljavafx/collections/ObservableMap",
            "<TK;+",
            "Ljava/lang/Number;",
            ">;",
            "Ljavafx/beans/value/ObservableValue",
            "<+TK;>;)",
            "Ljavafx/beans/binding/IntegerBinding;"
        }
    .end annotation

    .prologue
    .line 7865
    move-object v0, p0

    .local v0, "op":Ljavafx/collections/ObservableMap;, "Ljavafx/collections/ObservableMap<TK;+Ljava/lang/Number;>;"
    move-object v1, p1

    .local v1, "key":Ljavafx/beans/value/ObservableValue;, "Ljavafx/beans/value/ObservableValue<+TK;>;"
    move-object v2, v0

    if-eqz v2, :cond_0

    move-object v2, v1

    if-nez v2, :cond_1

    .line 7866
    :cond_0
    new-instance v2, Ljava/lang/NullPointerException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const-string v4, "Operands cannot be null."

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 7869
    :cond_1
    new-instance v2, Ljavafx/beans/binding/Bindings$105;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Ljavafx/beans/binding/Bindings$105;-><init>(Ljavafx/collections/ObservableMap;Ljavafx/beans/value/ObservableValue;)V

    move-object v0, v2

    .end local v0    # "op":Ljavafx/collections/ObservableMap;, "Ljavafx/collections/ObservableMap<TK;+Ljava/lang/Number;>;"
    return-object v0
.end method

.method public static isEmpty(Ljavafx/beans/value/ObservableStringValue;)Ljavafx/beans/binding/BooleanBinding;
    .locals 5

    .prologue
    .line 5628
    move-object v0, p0

    .local v0, "op":Ljavafx/beans/value/ObservableStringValue;
    move-object v1, v0

    if-nez v1, :cond_0

    .line 5629
    new-instance v1, Ljava/lang/NullPointerException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string v3, "Operand cannot be null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 5632
    :cond_0
    new-instance v1, Ljavafx/beans/binding/Bindings$62;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Ljavafx/beans/binding/Bindings$62;-><init>(Ljavafx/beans/value/ObservableStringValue;)V

    move-object v0, v1

    .end local v0    # "op":Ljavafx/beans/value/ObservableStringValue;
    return-object v0
.end method

.method public static isEmpty(Ljavafx/collections/ObservableList;)Ljavafx/beans/binding/BooleanBinding;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljavafx/collections/ObservableList",
            "<TE;>;)",
            "Ljavafx/beans/binding/BooleanBinding;"
        }
    .end annotation

    .prologue
    .line 6002
    move-object v0, p0

    .local v0, "op":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<TE;>;"
    move-object v1, v0

    if-nez v1, :cond_0

    .line 6003
    new-instance v1, Ljava/lang/NullPointerException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string v3, "List cannot be null."

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 6006
    :cond_0
    new-instance v1, Ljavafx/beans/binding/Bindings$69;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Ljavafx/beans/binding/Bindings$69;-><init>(Ljavafx/collections/ObservableList;)V

    move-object v0, v1

    .end local v0    # "op":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<TE;>;"
    return-object v0
.end method

.method public static isEmpty(Ljavafx/collections/ObservableMap;)Ljavafx/beans/binding/BooleanBinding;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljavafx/collections/ObservableMap",
            "<TK;TV;>;)",
            "Ljavafx/beans/binding/BooleanBinding;"
        }
    .end annotation

    .prologue
    .line 7308
    move-object v0, p0

    .local v0, "op":Ljavafx/collections/ObservableMap;, "Ljavafx/collections/ObservableMap<TK;TV;>;"
    move-object v1, v0

    if-nez v1, :cond_0

    .line 7309
    new-instance v1, Ljava/lang/NullPointerException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string v3, "Map cannot be null."

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 7312
    :cond_0
    new-instance v1, Ljavafx/beans/binding/Bindings$94;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Ljavafx/beans/binding/Bindings$94;-><init>(Ljavafx/collections/ObservableMap;)V

    move-object v0, v1

    .end local v0    # "op":Ljavafx/collections/ObservableMap;, "Ljavafx/collections/ObservableMap<TK;TV;>;"
    return-object v0
.end method

.method public static isEmpty(Ljavafx/collections/ObservableSet;)Ljavafx/beans/binding/BooleanBinding;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljavafx/collections/ObservableSet",
            "<TE;>;)",
            "Ljavafx/beans/binding/BooleanBinding;"
        }
    .end annotation

    .prologue
    .line 6927
    move-object v0, p0

    .local v0, "op":Ljavafx/collections/ObservableSet;, "Ljavafx/collections/ObservableSet<TE;>;"
    move-object v1, v0

    if-nez v1, :cond_0

    .line 6928
    new-instance v1, Ljava/lang/NullPointerException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string v3, "Set cannot be null."

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 6931
    :cond_0
    new-instance v1, Ljavafx/beans/binding/Bindings$86;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Ljavafx/beans/binding/Bindings$86;-><init>(Ljavafx/collections/ObservableSet;)V

    move-object v0, v1

    .end local v0    # "op":Ljavafx/collections/ObservableSet;, "Ljavafx/collections/ObservableSet<TE;>;"
    return-object v0
.end method

.method public static isNotEmpty(Ljavafx/beans/value/ObservableStringValue;)Ljavafx/beans/binding/BooleanBinding;
    .locals 5

    .prologue
    .line 5670
    move-object v0, p0

    .local v0, "op":Ljavafx/beans/value/ObservableStringValue;
    move-object v1, v0

    if-nez v1, :cond_0

    .line 5671
    new-instance v1, Ljava/lang/NullPointerException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string v3, "Operand cannot be null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 5674
    :cond_0
    new-instance v1, Ljavafx/beans/binding/Bindings$63;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Ljavafx/beans/binding/Bindings$63;-><init>(Ljavafx/beans/value/ObservableStringValue;)V

    move-object v0, v1

    .end local v0    # "op":Ljavafx/beans/value/ObservableStringValue;
    return-object v0
.end method

.method public static isNotEmpty(Ljavafx/collections/ObservableList;)Ljavafx/beans/binding/BooleanBinding;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljavafx/collections/ObservableList",
            "<TE;>;)",
            "Ljavafx/beans/binding/BooleanBinding;"
        }
    .end annotation

    .prologue
    .line 6042
    move-object v0, p0

    .local v0, "op":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<TE;>;"
    move-object v1, v0

    if-nez v1, :cond_0

    .line 6043
    new-instance v1, Ljava/lang/NullPointerException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string v3, "List cannot be null."

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 6046
    :cond_0
    new-instance v1, Ljavafx/beans/binding/Bindings$70;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Ljavafx/beans/binding/Bindings$70;-><init>(Ljavafx/collections/ObservableList;)V

    move-object v0, v1

    .end local v0    # "op":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<TE;>;"
    return-object v0
.end method

.method public static isNotEmpty(Ljavafx/collections/ObservableMap;)Ljavafx/beans/binding/BooleanBinding;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljavafx/collections/ObservableMap",
            "<TK;TV;>;)",
            "Ljavafx/beans/binding/BooleanBinding;"
        }
    .end annotation

    .prologue
    .line 7349
    move-object v0, p0

    .local v0, "op":Ljavafx/collections/ObservableMap;, "Ljavafx/collections/ObservableMap<TK;TV;>;"
    move-object v1, v0

    if-nez v1, :cond_0

    .line 7350
    new-instance v1, Ljava/lang/NullPointerException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string v3, "List cannot be null."

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 7353
    :cond_0
    new-instance v1, Ljavafx/beans/binding/Bindings$95;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Ljavafx/beans/binding/Bindings$95;-><init>(Ljavafx/collections/ObservableMap;)V

    move-object v0, v1

    .end local v0    # "op":Ljavafx/collections/ObservableMap;, "Ljavafx/collections/ObservableMap<TK;TV;>;"
    return-object v0
.end method

.method public static isNotEmpty(Ljavafx/collections/ObservableSet;)Ljavafx/beans/binding/BooleanBinding;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljavafx/collections/ObservableSet",
            "<TE;>;)",
            "Ljavafx/beans/binding/BooleanBinding;"
        }
    .end annotation

    .prologue
    .line 6967
    move-object v0, p0

    .local v0, "op":Ljavafx/collections/ObservableSet;, "Ljavafx/collections/ObservableSet<TE;>;"
    move-object v1, v0

    if-nez v1, :cond_0

    .line 6968
    new-instance v1, Ljava/lang/NullPointerException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string v3, "List cannot be null."

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 6971
    :cond_0
    new-instance v1, Ljavafx/beans/binding/Bindings$87;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Ljavafx/beans/binding/Bindings$87;-><init>(Ljavafx/collections/ObservableSet;)V

    move-object v0, v1

    .end local v0    # "op":Ljavafx/collections/ObservableSet;, "Ljavafx/collections/ObservableSet<TE;>;"
    return-object v0
.end method

.method public static isNotNull(Ljavafx/beans/value/ObservableObjectValue;)Ljavafx/beans/binding/BooleanBinding;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/value/ObservableObjectValue",
            "<*>;)",
            "Ljavafx/beans/binding/BooleanBinding;"
        }
    .end annotation

    .prologue
    .line 5919
    move-object v0, p0

    .local v0, "op":Ljavafx/beans/value/ObservableObjectValue;, "Ljavafx/beans/value/ObservableObjectValue<*>;"
    move-object v1, v0

    if-nez v1, :cond_0

    .line 5920
    new-instance v1, Ljava/lang/NullPointerException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string v3, "Operand cannot be null."

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 5923
    :cond_0
    new-instance v1, Ljavafx/beans/binding/Bindings$67;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Ljavafx/beans/binding/Bindings$67;-><init>(Ljavafx/beans/value/ObservableObjectValue;)V

    move-object v0, v1

    .end local v0    # "op":Ljavafx/beans/value/ObservableObjectValue;, "Ljavafx/beans/value/ObservableObjectValue<*>;"
    return-object v0
.end method

.method public static isNull(Ljavafx/beans/value/ObservableObjectValue;)Ljavafx/beans/binding/BooleanBinding;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/value/ObservableObjectValue",
            "<*>;)",
            "Ljavafx/beans/binding/BooleanBinding;"
        }
    .end annotation

    .prologue
    .line 5880
    move-object v0, p0

    .local v0, "op":Ljavafx/beans/value/ObservableObjectValue;, "Ljavafx/beans/value/ObservableObjectValue<*>;"
    move-object v1, v0

    if-nez v1, :cond_0

    .line 5881
    new-instance v1, Ljava/lang/NullPointerException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string v3, "Operand cannot be null."

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 5884
    :cond_0
    new-instance v1, Ljavafx/beans/binding/Bindings$66;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Ljavafx/beans/binding/Bindings$66;-><init>(Ljavafx/beans/value/ObservableObjectValue;)V

    move-object v0, v1

    .end local v0    # "op":Ljavafx/beans/value/ObservableObjectValue;, "Ljavafx/beans/value/ObservableObjectValue<*>;"
    return-object v0
.end method

.method public static length(Ljavafx/beans/value/ObservableStringValue;)Ljavafx/beans/binding/IntegerBinding;
    .locals 5

    .prologue
    .line 5586
    move-object v0, p0

    .local v0, "op":Ljavafx/beans/value/ObservableStringValue;
    move-object v1, v0

    if-nez v1, :cond_0

    .line 5587
    new-instance v1, Ljava/lang/NullPointerException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string v3, "Operand cannot be null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 5590
    :cond_0
    new-instance v1, Ljavafx/beans/binding/Bindings$61;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Ljavafx/beans/binding/Bindings$61;-><init>(Ljavafx/beans/value/ObservableStringValue;)V

    move-object v0, v1

    .end local v0    # "op":Ljavafx/beans/value/ObservableStringValue;
    return-object v0
.end method

.method public static lessThan(DLjavafx/beans/value/ObservableNumberValue;)Ljavafx/beans/binding/BooleanBinding;
    .locals 10

    .prologue
    .line 3447
    move-wide v0, p0

    .local v0, "op1":D
    move-object v2, p2

    .local v2, "op2":Ljavafx/beans/value/ObservableNumberValue;
    move-wide v3, v0

    invoke-static {v3, v4}, Lcom/sun/javafx/binding/DoubleConstant;->valueOf(D)Lcom/sun/javafx/binding/DoubleConstant;

    move-result-object v3

    move-object v4, v2

    const/4 v5, 0x1

    new-array v5, v5, [Ljavafx/beans/Observable;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    move-object v8, v2

    aput-object v8, v6, v7

    invoke-static {v3, v4, v5}, Ljavafx/beans/binding/Bindings;->lessThan(Ljavafx/beans/value/ObservableNumberValue;Ljavafx/beans/value/ObservableNumberValue;[Ljavafx/beans/Observable;)Ljavafx/beans/binding/BooleanBinding;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "op1":D
    return-object v0
.end method

.method public static lessThan(FLjavafx/beans/value/ObservableNumberValue;)Ljavafx/beans/binding/BooleanBinding;
    .locals 9

    .prologue
    .line 3481
    move v0, p0

    .local v0, "op1":F
    move-object v1, p1

    .local v1, "op2":Ljavafx/beans/value/ObservableNumberValue;
    move v2, v0

    invoke-static {v2}, Lcom/sun/javafx/binding/FloatConstant;->valueOf(F)Lcom/sun/javafx/binding/FloatConstant;

    move-result-object v2

    move-object v3, v1

    const/4 v4, 0x1

    new-array v4, v4, [Ljavafx/beans/Observable;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    move-object v7, v1

    aput-object v7, v5, v6

    invoke-static {v2, v3, v4}, Ljavafx/beans/binding/Bindings;->lessThan(Ljavafx/beans/value/ObservableNumberValue;Ljavafx/beans/value/ObservableNumberValue;[Ljavafx/beans/Observable;)Ljavafx/beans/binding/BooleanBinding;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "op1":F
    return-object v0
.end method

.method public static lessThan(ILjavafx/beans/value/ObservableNumberValue;)Ljavafx/beans/binding/BooleanBinding;
    .locals 9

    .prologue
    .line 3549
    move v0, p0

    .local v0, "op1":I
    move-object v1, p1

    .local v1, "op2":Ljavafx/beans/value/ObservableNumberValue;
    move v2, v0

    invoke-static {v2}, Lcom/sun/javafx/binding/IntegerConstant;->valueOf(I)Lcom/sun/javafx/binding/IntegerConstant;

    move-result-object v2

    move-object v3, v1

    const/4 v4, 0x1

    new-array v4, v4, [Ljavafx/beans/Observable;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    move-object v7, v1

    aput-object v7, v5, v6

    invoke-static {v2, v3, v4}, Ljavafx/beans/binding/Bindings;->lessThan(Ljavafx/beans/value/ObservableNumberValue;Ljavafx/beans/value/ObservableNumberValue;[Ljavafx/beans/Observable;)Ljavafx/beans/binding/BooleanBinding;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "op1":I
    return-object v0
.end method

.method public static lessThan(JLjavafx/beans/value/ObservableNumberValue;)Ljavafx/beans/binding/BooleanBinding;
    .locals 10

    .prologue
    .line 3515
    move-wide v0, p0

    .local v0, "op1":J
    move-object v2, p2

    .local v2, "op2":Ljavafx/beans/value/ObservableNumberValue;
    move-wide v3, v0

    invoke-static {v3, v4}, Lcom/sun/javafx/binding/LongConstant;->valueOf(J)Lcom/sun/javafx/binding/LongConstant;

    move-result-object v3

    move-object v4, v2

    const/4 v5, 0x1

    new-array v5, v5, [Ljavafx/beans/Observable;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    move-object v8, v2

    aput-object v8, v6, v7

    invoke-static {v3, v4, v5}, Ljavafx/beans/binding/Bindings;->lessThan(Ljavafx/beans/value/ObservableNumberValue;Ljavafx/beans/value/ObservableNumberValue;[Ljavafx/beans/Observable;)Ljavafx/beans/binding/BooleanBinding;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "op1":J
    return-object v0
.end method

.method public static lessThan(Ljava/lang/String;Ljavafx/beans/value/ObservableStringValue;)Ljavafx/beans/binding/BooleanBinding;
    .locals 9

    .prologue
    .line 5409
    move-object v0, p0

    .local v0, "op1":Ljava/lang/String;
    move-object v1, p1

    .local v1, "op2":Ljavafx/beans/value/ObservableStringValue;
    move-object v2, v0

    invoke-static {v2}, Lcom/sun/javafx/binding/StringConstant;->valueOf(Ljava/lang/String;)Lcom/sun/javafx/binding/StringConstant;

    move-result-object v2

    move-object v3, v1

    const/4 v4, 0x1

    new-array v4, v4, [Ljavafx/beans/Observable;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    move-object v7, v1

    aput-object v7, v5, v6

    invoke-static {v2, v3, v4}, Ljavafx/beans/binding/Bindings;->lessThan(Ljavafx/beans/value/ObservableStringValue;Ljavafx/beans/value/ObservableStringValue;[Ljavafx/beans/Observable;)Ljavafx/beans/binding/BooleanBinding;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "op1":Ljava/lang/String;
    return-object v0
.end method

.method public static lessThan(Ljavafx/beans/value/ObservableNumberValue;D)Ljavafx/beans/binding/BooleanBinding;
    .locals 11

    .prologue
    .line 3430
    move-object v0, p0

    .local v0, "op1":Ljavafx/beans/value/ObservableNumberValue;
    move-wide v1, p1

    .local v1, "op2":D
    move-object v3, v0

    move-wide v4, v1

    invoke-static {v4, v5}, Lcom/sun/javafx/binding/DoubleConstant;->valueOf(D)Lcom/sun/javafx/binding/DoubleConstant;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljavafx/beans/Observable;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    move-object v8, v0

    aput-object v8, v6, v7

    invoke-static {v3, v4, v5}, Ljavafx/beans/binding/Bindings;->lessThan(Ljavafx/beans/value/ObservableNumberValue;Ljavafx/beans/value/ObservableNumberValue;[Ljavafx/beans/Observable;)Ljavafx/beans/binding/BooleanBinding;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "op1":Ljavafx/beans/value/ObservableNumberValue;
    return-object v0
.end method

.method public static lessThan(Ljavafx/beans/value/ObservableNumberValue;F)Ljavafx/beans/binding/BooleanBinding;
    .locals 9

    .prologue
    .line 3464
    move-object v0, p0

    .local v0, "op1":Ljavafx/beans/value/ObservableNumberValue;
    move v1, p1

    .local v1, "op2":F
    move-object v2, v0

    move v3, v1

    invoke-static {v3}, Lcom/sun/javafx/binding/FloatConstant;->valueOf(F)Lcom/sun/javafx/binding/FloatConstant;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljavafx/beans/Observable;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    move-object v7, v0

    aput-object v7, v5, v6

    invoke-static {v2, v3, v4}, Ljavafx/beans/binding/Bindings;->lessThan(Ljavafx/beans/value/ObservableNumberValue;Ljavafx/beans/value/ObservableNumberValue;[Ljavafx/beans/Observable;)Ljavafx/beans/binding/BooleanBinding;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "op1":Ljavafx/beans/value/ObservableNumberValue;
    return-object v0
.end method

.method public static lessThan(Ljavafx/beans/value/ObservableNumberValue;I)Ljavafx/beans/binding/BooleanBinding;
    .locals 9

    .prologue
    .line 3532
    move-object v0, p0

    .local v0, "op1":Ljavafx/beans/value/ObservableNumberValue;
    move v1, p1

    .local v1, "op2":I
    move-object v2, v0

    move v3, v1

    invoke-static {v3}, Lcom/sun/javafx/binding/IntegerConstant;->valueOf(I)Lcom/sun/javafx/binding/IntegerConstant;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljavafx/beans/Observable;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    move-object v7, v0

    aput-object v7, v5, v6

    invoke-static {v2, v3, v4}, Ljavafx/beans/binding/Bindings;->lessThan(Ljavafx/beans/value/ObservableNumberValue;Ljavafx/beans/value/ObservableNumberValue;[Ljavafx/beans/Observable;)Ljavafx/beans/binding/BooleanBinding;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "op1":Ljavafx/beans/value/ObservableNumberValue;
    return-object v0
.end method

.method public static lessThan(Ljavafx/beans/value/ObservableNumberValue;J)Ljavafx/beans/binding/BooleanBinding;
    .locals 11

    .prologue
    .line 3498
    move-object v0, p0

    .local v0, "op1":Ljavafx/beans/value/ObservableNumberValue;
    move-wide v1, p1

    .local v1, "op2":J
    move-object v3, v0

    move-wide v4, v1

    invoke-static {v4, v5}, Lcom/sun/javafx/binding/LongConstant;->valueOf(J)Lcom/sun/javafx/binding/LongConstant;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljavafx/beans/Observable;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    move-object v8, v0

    aput-object v8, v6, v7

    invoke-static {v3, v4, v5}, Ljavafx/beans/binding/Bindings;->lessThan(Ljavafx/beans/value/ObservableNumberValue;Ljavafx/beans/value/ObservableNumberValue;[Ljavafx/beans/Observable;)Ljavafx/beans/binding/BooleanBinding;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "op1":Ljavafx/beans/value/ObservableNumberValue;
    return-object v0
.end method

.method public static lessThan(Ljavafx/beans/value/ObservableNumberValue;Ljavafx/beans/value/ObservableNumberValue;)Ljavafx/beans/binding/BooleanBinding;
    .locals 9

    .prologue
    .line 3413
    move-object v0, p0

    .local v0, "op1":Ljavafx/beans/value/ObservableNumberValue;
    move-object v1, p1

    .local v1, "op2":Ljavafx/beans/value/ObservableNumberValue;
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x2

    new-array v4, v4, [Ljavafx/beans/Observable;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    move-object v7, v0

    aput-object v7, v5, v6

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x1

    move-object v7, v1

    aput-object v7, v5, v6

    invoke-static {v2, v3, v4}, Ljavafx/beans/binding/Bindings;->lessThan(Ljavafx/beans/value/ObservableNumberValue;Ljavafx/beans/value/ObservableNumberValue;[Ljavafx/beans/Observable;)Ljavafx/beans/binding/BooleanBinding;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "op1":Ljavafx/beans/value/ObservableNumberValue;
    return-object v0
.end method

.method private static varargs lessThan(Ljavafx/beans/value/ObservableNumberValue;Ljavafx/beans/value/ObservableNumberValue;[Ljavafx/beans/Observable;)Ljavafx/beans/binding/BooleanBinding;
    .locals 6

    .prologue
    .line 3395
    move-object v0, p0

    .local v0, "op1":Ljavafx/beans/value/ObservableNumberValue;
    move-object v1, p1

    .local v1, "op2":Ljavafx/beans/value/ObservableNumberValue;
    move-object v2, p2

    .local v2, "dependencies":[Ljavafx/beans/Observable;
    move-object v3, v1

    move-object v4, v0

    move-object v5, v2

    invoke-static {v3, v4, v5}, Ljavafx/beans/binding/Bindings;->greaterThan(Ljavafx/beans/value/ObservableNumberValue;Ljavafx/beans/value/ObservableNumberValue;[Ljavafx/beans/Observable;)Ljavafx/beans/binding/BooleanBinding;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "op1":Ljavafx/beans/value/ObservableNumberValue;
    return-object v0
.end method

.method public static lessThan(Ljavafx/beans/value/ObservableStringValue;Ljava/lang/String;)Ljavafx/beans/binding/BooleanBinding;
    .locals 9

    .prologue
    .line 5389
    move-object v0, p0

    .local v0, "op1":Ljavafx/beans/value/ObservableStringValue;
    move-object v1, p1

    .local v1, "op2":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    invoke-static {v3}, Lcom/sun/javafx/binding/StringConstant;->valueOf(Ljava/lang/String;)Lcom/sun/javafx/binding/StringConstant;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljavafx/beans/Observable;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    move-object v7, v0

    aput-object v7, v5, v6

    invoke-static {v2, v3, v4}, Ljavafx/beans/binding/Bindings;->lessThan(Ljavafx/beans/value/ObservableStringValue;Ljavafx/beans/value/ObservableStringValue;[Ljavafx/beans/Observable;)Ljavafx/beans/binding/BooleanBinding;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "op1":Ljavafx/beans/value/ObservableStringValue;
    return-object v0
.end method

.method public static lessThan(Ljavafx/beans/value/ObservableStringValue;Ljavafx/beans/value/ObservableStringValue;)Ljavafx/beans/binding/BooleanBinding;
    .locals 9

    .prologue
    .line 5369
    move-object v0, p0

    .local v0, "op1":Ljavafx/beans/value/ObservableStringValue;
    move-object v1, p1

    .local v1, "op2":Ljavafx/beans/value/ObservableStringValue;
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x2

    new-array v4, v4, [Ljavafx/beans/Observable;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    move-object v7, v0

    aput-object v7, v5, v6

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x1

    move-object v7, v1

    aput-object v7, v5, v6

    invoke-static {v2, v3, v4}, Ljavafx/beans/binding/Bindings;->lessThan(Ljavafx/beans/value/ObservableStringValue;Ljavafx/beans/value/ObservableStringValue;[Ljavafx/beans/Observable;)Ljavafx/beans/binding/BooleanBinding;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "op1":Ljavafx/beans/value/ObservableStringValue;
    return-object v0
.end method

.method private static varargs lessThan(Ljavafx/beans/value/ObservableStringValue;Ljavafx/beans/value/ObservableStringValue;[Ljavafx/beans/Observable;)Ljavafx/beans/binding/BooleanBinding;
    .locals 6

    .prologue
    .line 5348
    move-object v0, p0

    .local v0, "op1":Ljavafx/beans/value/ObservableStringValue;
    move-object v1, p1

    .local v1, "op2":Ljavafx/beans/value/ObservableStringValue;
    move-object v2, p2

    .local v2, "dependencies":[Ljavafx/beans/Observable;
    move-object v3, v1

    move-object v4, v0

    move-object v5, v2

    invoke-static {v3, v4, v5}, Ljavafx/beans/binding/Bindings;->greaterThan(Ljavafx/beans/value/ObservableStringValue;Ljavafx/beans/value/ObservableStringValue;[Ljavafx/beans/Observable;)Ljavafx/beans/binding/BooleanBinding;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "op1":Ljavafx/beans/value/ObservableStringValue;
    return-object v0
.end method

.method public static lessThanOrEqual(DLjavafx/beans/value/ObservableNumberValue;)Ljavafx/beans/binding/BooleanBinding;
    .locals 10

    .prologue
    .line 3871
    move-wide v0, p0

    .local v0, "op1":D
    move-object v2, p2

    .local v2, "op2":Ljavafx/beans/value/ObservableNumberValue;
    move-wide v3, v0

    invoke-static {v3, v4}, Lcom/sun/javafx/binding/DoubleConstant;->valueOf(D)Lcom/sun/javafx/binding/DoubleConstant;

    move-result-object v3

    move-object v4, v2

    const/4 v5, 0x1

    new-array v5, v5, [Ljavafx/beans/Observable;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    move-object v8, v2

    aput-object v8, v6, v7

    invoke-static {v3, v4, v5}, Ljavafx/beans/binding/Bindings;->lessThanOrEqual(Ljavafx/beans/value/ObservableNumberValue;Ljavafx/beans/value/ObservableNumberValue;[Ljavafx/beans/Observable;)Ljavafx/beans/binding/BooleanBinding;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "op1":D
    return-object v0
.end method

.method public static lessThanOrEqual(FLjavafx/beans/value/ObservableNumberValue;)Ljavafx/beans/binding/BooleanBinding;
    .locals 9

    .prologue
    .line 3905
    move v0, p0

    .local v0, "op1":F
    move-object v1, p1

    .local v1, "op2":Ljavafx/beans/value/ObservableNumberValue;
    move v2, v0

    invoke-static {v2}, Lcom/sun/javafx/binding/FloatConstant;->valueOf(F)Lcom/sun/javafx/binding/FloatConstant;

    move-result-object v2

    move-object v3, v1

    const/4 v4, 0x1

    new-array v4, v4, [Ljavafx/beans/Observable;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    move-object v7, v1

    aput-object v7, v5, v6

    invoke-static {v2, v3, v4}, Ljavafx/beans/binding/Bindings;->lessThanOrEqual(Ljavafx/beans/value/ObservableNumberValue;Ljavafx/beans/value/ObservableNumberValue;[Ljavafx/beans/Observable;)Ljavafx/beans/binding/BooleanBinding;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "op1":F
    return-object v0
.end method

.method public static lessThanOrEqual(ILjavafx/beans/value/ObservableNumberValue;)Ljavafx/beans/binding/BooleanBinding;
    .locals 9

    .prologue
    .line 3973
    move v0, p0

    .local v0, "op1":I
    move-object v1, p1

    .local v1, "op2":Ljavafx/beans/value/ObservableNumberValue;
    move v2, v0

    invoke-static {v2}, Lcom/sun/javafx/binding/IntegerConstant;->valueOf(I)Lcom/sun/javafx/binding/IntegerConstant;

    move-result-object v2

    move-object v3, v1

    const/4 v4, 0x1

    new-array v4, v4, [Ljavafx/beans/Observable;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    move-object v7, v1

    aput-object v7, v5, v6

    invoke-static {v2, v3, v4}, Ljavafx/beans/binding/Bindings;->lessThanOrEqual(Ljavafx/beans/value/ObservableNumberValue;Ljavafx/beans/value/ObservableNumberValue;[Ljavafx/beans/Observable;)Ljavafx/beans/binding/BooleanBinding;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "op1":I
    return-object v0
.end method

.method public static lessThanOrEqual(JLjavafx/beans/value/ObservableNumberValue;)Ljavafx/beans/binding/BooleanBinding;
    .locals 10

    .prologue
    .line 3939
    move-wide v0, p0

    .local v0, "op1":J
    move-object v2, p2

    .local v2, "op2":Ljavafx/beans/value/ObservableNumberValue;
    move-wide v3, v0

    invoke-static {v3, v4}, Lcom/sun/javafx/binding/LongConstant;->valueOf(J)Lcom/sun/javafx/binding/LongConstant;

    move-result-object v3

    move-object v4, v2

    const/4 v5, 0x1

    new-array v5, v5, [Ljavafx/beans/Observable;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    move-object v8, v2

    aput-object v8, v6, v7

    invoke-static {v3, v4, v5}, Ljavafx/beans/binding/Bindings;->lessThanOrEqual(Ljavafx/beans/value/ObservableNumberValue;Ljavafx/beans/value/ObservableNumberValue;[Ljavafx/beans/Observable;)Ljavafx/beans/binding/BooleanBinding;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "op1":J
    return-object v0
.end method

.method public static lessThanOrEqual(Ljava/lang/String;Ljavafx/beans/value/ObservableStringValue;)Ljavafx/beans/binding/BooleanBinding;
    .locals 9

    .prologue
    .line 5568
    move-object v0, p0

    .local v0, "op1":Ljava/lang/String;
    move-object v1, p1

    .local v1, "op2":Ljavafx/beans/value/ObservableStringValue;
    move-object v2, v0

    invoke-static {v2}, Lcom/sun/javafx/binding/StringConstant;->valueOf(Ljava/lang/String;)Lcom/sun/javafx/binding/StringConstant;

    move-result-object v2

    move-object v3, v1

    const/4 v4, 0x1

    new-array v4, v4, [Ljavafx/beans/Observable;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    move-object v7, v1

    aput-object v7, v5, v6

    invoke-static {v2, v3, v4}, Ljavafx/beans/binding/Bindings;->lessThanOrEqual(Ljavafx/beans/value/ObservableStringValue;Ljavafx/beans/value/ObservableStringValue;[Ljavafx/beans/Observable;)Ljavafx/beans/binding/BooleanBinding;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "op1":Ljava/lang/String;
    return-object v0
.end method

.method public static lessThanOrEqual(Ljavafx/beans/value/ObservableNumberValue;D)Ljavafx/beans/binding/BooleanBinding;
    .locals 11

    .prologue
    .line 3854
    move-object v0, p0

    .local v0, "op1":Ljavafx/beans/value/ObservableNumberValue;
    move-wide v1, p1

    .local v1, "op2":D
    move-object v3, v0

    move-wide v4, v1

    invoke-static {v4, v5}, Lcom/sun/javafx/binding/DoubleConstant;->valueOf(D)Lcom/sun/javafx/binding/DoubleConstant;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljavafx/beans/Observable;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    move-object v8, v0

    aput-object v8, v6, v7

    invoke-static {v3, v4, v5}, Ljavafx/beans/binding/Bindings;->lessThanOrEqual(Ljavafx/beans/value/ObservableNumberValue;Ljavafx/beans/value/ObservableNumberValue;[Ljavafx/beans/Observable;)Ljavafx/beans/binding/BooleanBinding;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "op1":Ljavafx/beans/value/ObservableNumberValue;
    return-object v0
.end method

.method public static lessThanOrEqual(Ljavafx/beans/value/ObservableNumberValue;F)Ljavafx/beans/binding/BooleanBinding;
    .locals 9

    .prologue
    .line 3888
    move-object v0, p0

    .local v0, "op1":Ljavafx/beans/value/ObservableNumberValue;
    move v1, p1

    .local v1, "op2":F
    move-object v2, v0

    move v3, v1

    invoke-static {v3}, Lcom/sun/javafx/binding/FloatConstant;->valueOf(F)Lcom/sun/javafx/binding/FloatConstant;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljavafx/beans/Observable;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    move-object v7, v0

    aput-object v7, v5, v6

    invoke-static {v2, v3, v4}, Ljavafx/beans/binding/Bindings;->lessThanOrEqual(Ljavafx/beans/value/ObservableNumberValue;Ljavafx/beans/value/ObservableNumberValue;[Ljavafx/beans/Observable;)Ljavafx/beans/binding/BooleanBinding;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "op1":Ljavafx/beans/value/ObservableNumberValue;
    return-object v0
.end method

.method public static lessThanOrEqual(Ljavafx/beans/value/ObservableNumberValue;I)Ljavafx/beans/binding/BooleanBinding;
    .locals 9

    .prologue
    .line 3956
    move-object v0, p0

    .local v0, "op1":Ljavafx/beans/value/ObservableNumberValue;
    move v1, p1

    .local v1, "op2":I
    move-object v2, v0

    move v3, v1

    invoke-static {v3}, Lcom/sun/javafx/binding/IntegerConstant;->valueOf(I)Lcom/sun/javafx/binding/IntegerConstant;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljavafx/beans/Observable;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    move-object v7, v0

    aput-object v7, v5, v6

    invoke-static {v2, v3, v4}, Ljavafx/beans/binding/Bindings;->lessThanOrEqual(Ljavafx/beans/value/ObservableNumberValue;Ljavafx/beans/value/ObservableNumberValue;[Ljavafx/beans/Observable;)Ljavafx/beans/binding/BooleanBinding;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "op1":Ljavafx/beans/value/ObservableNumberValue;
    return-object v0
.end method

.method public static lessThanOrEqual(Ljavafx/beans/value/ObservableNumberValue;J)Ljavafx/beans/binding/BooleanBinding;
    .locals 11

    .prologue
    .line 3922
    move-object v0, p0

    .local v0, "op1":Ljavafx/beans/value/ObservableNumberValue;
    move-wide v1, p1

    .local v1, "op2":J
    move-object v3, v0

    move-wide v4, v1

    invoke-static {v4, v5}, Lcom/sun/javafx/binding/LongConstant;->valueOf(J)Lcom/sun/javafx/binding/LongConstant;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljavafx/beans/Observable;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    move-object v8, v0

    aput-object v8, v6, v7

    invoke-static {v3, v4, v5}, Ljavafx/beans/binding/Bindings;->lessThanOrEqual(Ljavafx/beans/value/ObservableNumberValue;Ljavafx/beans/value/ObservableNumberValue;[Ljavafx/beans/Observable;)Ljavafx/beans/binding/BooleanBinding;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "op1":Ljavafx/beans/value/ObservableNumberValue;
    return-object v0
.end method

.method public static lessThanOrEqual(Ljavafx/beans/value/ObservableNumberValue;Ljavafx/beans/value/ObservableNumberValue;)Ljavafx/beans/binding/BooleanBinding;
    .locals 9

    .prologue
    .line 3837
    move-object v0, p0

    .local v0, "op1":Ljavafx/beans/value/ObservableNumberValue;
    move-object v1, p1

    .local v1, "op2":Ljavafx/beans/value/ObservableNumberValue;
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x2

    new-array v4, v4, [Ljavafx/beans/Observable;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    move-object v7, v0

    aput-object v7, v5, v6

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x1

    move-object v7, v1

    aput-object v7, v5, v6

    invoke-static {v2, v3, v4}, Ljavafx/beans/binding/Bindings;->lessThanOrEqual(Ljavafx/beans/value/ObservableNumberValue;Ljavafx/beans/value/ObservableNumberValue;[Ljavafx/beans/Observable;)Ljavafx/beans/binding/BooleanBinding;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "op1":Ljavafx/beans/value/ObservableNumberValue;
    return-object v0
.end method

.method private static varargs lessThanOrEqual(Ljavafx/beans/value/ObservableNumberValue;Ljavafx/beans/value/ObservableNumberValue;[Ljavafx/beans/Observable;)Ljavafx/beans/binding/BooleanBinding;
    .locals 6

    .prologue
    .line 3818
    move-object v0, p0

    .local v0, "op1":Ljavafx/beans/value/ObservableNumberValue;
    move-object v1, p1

    .local v1, "op2":Ljavafx/beans/value/ObservableNumberValue;
    move-object v2, p2

    .local v2, "dependencies":[Ljavafx/beans/Observable;
    move-object v3, v1

    move-object v4, v0

    move-object v5, v2

    invoke-static {v3, v4, v5}, Ljavafx/beans/binding/Bindings;->greaterThanOrEqual(Ljavafx/beans/value/ObservableNumberValue;Ljavafx/beans/value/ObservableNumberValue;[Ljavafx/beans/Observable;)Ljavafx/beans/binding/BooleanBinding;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "op1":Ljavafx/beans/value/ObservableNumberValue;
    return-object v0
.end method

.method public static lessThanOrEqual(Ljavafx/beans/value/ObservableStringValue;Ljava/lang/String;)Ljavafx/beans/binding/BooleanBinding;
    .locals 9

    .prologue
    .line 5548
    move-object v0, p0

    .local v0, "op1":Ljavafx/beans/value/ObservableStringValue;
    move-object v1, p1

    .local v1, "op2":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    invoke-static {v3}, Lcom/sun/javafx/binding/StringConstant;->valueOf(Ljava/lang/String;)Lcom/sun/javafx/binding/StringConstant;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljavafx/beans/Observable;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    move-object v7, v0

    aput-object v7, v5, v6

    invoke-static {v2, v3, v4}, Ljavafx/beans/binding/Bindings;->lessThanOrEqual(Ljavafx/beans/value/ObservableStringValue;Ljavafx/beans/value/ObservableStringValue;[Ljavafx/beans/Observable;)Ljavafx/beans/binding/BooleanBinding;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "op1":Ljavafx/beans/value/ObservableStringValue;
    return-object v0
.end method

.method public static lessThanOrEqual(Ljavafx/beans/value/ObservableStringValue;Ljavafx/beans/value/ObservableStringValue;)Ljavafx/beans/binding/BooleanBinding;
    .locals 9

    .prologue
    .line 5528
    move-object v0, p0

    .local v0, "op1":Ljavafx/beans/value/ObservableStringValue;
    move-object v1, p1

    .local v1, "op2":Ljavafx/beans/value/ObservableStringValue;
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x2

    new-array v4, v4, [Ljavafx/beans/Observable;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    move-object v7, v0

    aput-object v7, v5, v6

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x1

    move-object v7, v1

    aput-object v7, v5, v6

    invoke-static {v2, v3, v4}, Ljavafx/beans/binding/Bindings;->lessThanOrEqual(Ljavafx/beans/value/ObservableStringValue;Ljavafx/beans/value/ObservableStringValue;[Ljavafx/beans/Observable;)Ljavafx/beans/binding/BooleanBinding;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "op1":Ljavafx/beans/value/ObservableStringValue;
    return-object v0
.end method

.method private static varargs lessThanOrEqual(Ljavafx/beans/value/ObservableStringValue;Ljavafx/beans/value/ObservableStringValue;[Ljavafx/beans/Observable;)Ljavafx/beans/binding/BooleanBinding;
    .locals 6

    .prologue
    .line 5507
    move-object v0, p0

    .local v0, "op1":Ljavafx/beans/value/ObservableStringValue;
    move-object v1, p1

    .local v1, "op2":Ljavafx/beans/value/ObservableStringValue;
    move-object v2, p2

    .local v2, "dependencies":[Ljavafx/beans/Observable;
    move-object v3, v1

    move-object v4, v0

    move-object v5, v2

    invoke-static {v3, v4, v5}, Ljavafx/beans/binding/Bindings;->greaterThanOrEqual(Ljavafx/beans/value/ObservableStringValue;Ljavafx/beans/value/ObservableStringValue;[Ljavafx/beans/Observable;)Ljavafx/beans/binding/BooleanBinding;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "op1":Ljavafx/beans/value/ObservableStringValue;
    return-object v0
.end method

.method public static longValueAt(Ljavafx/collections/ObservableList;I)Ljavafx/beans/binding/LongBinding;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/ObservableList",
            "<+",
            "Ljava/lang/Number;",
            ">;I)",
            "Ljavafx/beans/binding/LongBinding;"
        }
    .end annotation

    .prologue
    .line 6660
    move-object v0, p0

    .local v0, "op":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<+Ljava/lang/Number;>;"
    move v1, p1

    .local v1, "index":I
    move-object v2, v0

    if-nez v2, :cond_0

    .line 6661
    new-instance v2, Ljava/lang/NullPointerException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const-string v4, "List cannot be null."

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 6663
    :cond_0
    move v2, v1

    if-gez v2, :cond_1

    .line 6664
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const-string v4, "Index cannot be negative"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 6667
    :cond_1
    new-instance v2, Ljavafx/beans/binding/Bindings$81;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    move v5, v1

    invoke-direct {v3, v4, v5}, Ljavafx/beans/binding/Bindings$81;-><init>(Ljavafx/collections/ObservableList;I)V

    move-object v0, v2

    .end local v0    # "op":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<+Ljava/lang/Number;>;"
    return-object v0
.end method

.method public static longValueAt(Ljavafx/collections/ObservableList;Ljavafx/beans/value/ObservableIntegerValue;)Ljavafx/beans/binding/LongBinding;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/ObservableList",
            "<+",
            "Ljava/lang/Number;",
            ">;",
            "Ljavafx/beans/value/ObservableIntegerValue;",
            ")",
            "Ljavafx/beans/binding/LongBinding;"
        }
    .end annotation

    .prologue
    .line 6712
    move-object v0, p0

    .local v0, "op":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<+Ljava/lang/Number;>;"
    move-object v1, p1

    .local v1, "index":Ljavafx/beans/value/ObservableIntegerValue;
    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Ljavafx/beans/binding/Bindings;->longValueAt(Ljavafx/collections/ObservableList;Ljavafx/beans/value/ObservableNumberValue;)Ljavafx/beans/binding/LongBinding;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "op":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<+Ljava/lang/Number;>;"
    return-object v0
.end method

.method public static longValueAt(Ljavafx/collections/ObservableList;Ljavafx/beans/value/ObservableNumberValue;)Ljavafx/beans/binding/LongBinding;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/ObservableList",
            "<+",
            "Ljava/lang/Number;",
            ">;",
            "Ljavafx/beans/value/ObservableNumberValue;",
            ")",
            "Ljavafx/beans/binding/LongBinding;"
        }
    .end annotation

    .prologue
    .line 6727
    move-object v0, p0

    .local v0, "op":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<+Ljava/lang/Number;>;"
    move-object v1, p1

    .local v1, "index":Ljavafx/beans/value/ObservableNumberValue;
    move-object v2, v0

    if-eqz v2, :cond_0

    move-object v2, v1

    if-nez v2, :cond_1

    .line 6728
    :cond_0
    new-instance v2, Ljava/lang/NullPointerException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const-string v4, "Operands cannot be null."

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 6731
    :cond_1
    new-instance v2, Ljavafx/beans/binding/Bindings$82;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Ljavafx/beans/binding/Bindings$82;-><init>(Ljavafx/collections/ObservableList;Ljavafx/beans/value/ObservableNumberValue;)V

    move-object v0, v2

    .end local v0    # "op":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<+Ljava/lang/Number;>;"
    return-object v0
.end method

.method public static longValueAt(Ljavafx/collections/ObservableMap;Ljava/lang/Object;)Ljavafx/beans/binding/LongBinding;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljavafx/collections/ObservableMap",
            "<TK;+",
            "Ljava/lang/Number;",
            ">;TK;)",
            "Ljavafx/beans/binding/LongBinding;"
        }
    .end annotation

    .prologue
    .line 7919
    move-object v0, p0

    .local v0, "op":Ljavafx/collections/ObservableMap;, "Ljavafx/collections/ObservableMap<TK;+Ljava/lang/Number;>;"
    move-object v1, p1

    .local v1, "key":Ljava/lang/Object;, "TK;"
    move-object v2, v0

    if-nez v2, :cond_0

    .line 7920
    new-instance v2, Ljava/lang/NullPointerException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const-string v4, "Map cannot be null."

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 7923
    :cond_0
    new-instance v2, Ljavafx/beans/binding/Bindings$106;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Ljavafx/beans/binding/Bindings$106;-><init>(Ljavafx/collections/ObservableMap;Ljava/lang/Object;)V

    move-object v0, v2

    .end local v0    # "op":Ljavafx/collections/ObservableMap;, "Ljavafx/collections/ObservableMap<TK;+Ljava/lang/Number;>;"
    return-object v0
.end method

.method public static longValueAt(Ljavafx/collections/ObservableMap;Ljavafx/beans/value/ObservableValue;)Ljavafx/beans/binding/LongBinding;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljavafx/collections/ObservableMap",
            "<TK;+",
            "Ljava/lang/Number;",
            ">;",
            "Ljavafx/beans/value/ObservableValue",
            "<+TK;>;)",
            "Ljavafx/beans/binding/LongBinding;"
        }
    .end annotation

    .prologue
    .line 7973
    move-object v0, p0

    .local v0, "op":Ljavafx/collections/ObservableMap;, "Ljavafx/collections/ObservableMap<TK;+Ljava/lang/Number;>;"
    move-object v1, p1

    .local v1, "key":Ljavafx/beans/value/ObservableValue;, "Ljavafx/beans/value/ObservableValue<+TK;>;"
    move-object v2, v0

    if-eqz v2, :cond_0

    move-object v2, v1

    if-nez v2, :cond_1

    .line 7974
    :cond_0
    new-instance v2, Ljava/lang/NullPointerException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const-string v4, "Operands cannot be null."

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 7977
    :cond_1
    new-instance v2, Ljavafx/beans/binding/Bindings$107;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Ljavafx/beans/binding/Bindings$107;-><init>(Ljavafx/collections/ObservableMap;Ljavafx/beans/value/ObservableValue;)V

    move-object v0, v2

    .end local v0    # "op":Ljavafx/collections/ObservableMap;, "Ljavafx/collections/ObservableMap<TK;+Ljava/lang/Number;>;"
    return-object v0
.end method

.method public static max(DLjavafx/beans/value/ObservableNumberValue;)Ljavafx/beans/binding/DoubleBinding;
    .locals 10

    .prologue
    .line 4393
    move-wide v0, p0

    .local v0, "op1":D
    move-object v2, p2

    .local v2, "op2":Ljavafx/beans/value/ObservableNumberValue;
    move-wide v3, v0

    invoke-static {v3, v4}, Lcom/sun/javafx/binding/DoubleConstant;->valueOf(D)Lcom/sun/javafx/binding/DoubleConstant;

    move-result-object v3

    move-object v4, v2

    const/4 v5, 0x1

    new-array v5, v5, [Ljavafx/beans/Observable;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    move-object v8, v2

    aput-object v8, v6, v7

    invoke-static {v3, v4, v5}, Ljavafx/beans/binding/Bindings;->max(Ljavafx/beans/value/ObservableNumberValue;Ljavafx/beans/value/ObservableNumberValue;[Ljavafx/beans/Observable;)Ljavafx/beans/binding/NumberBinding;

    move-result-object v3

    check-cast v3, Ljavafx/beans/binding/DoubleBinding;

    move-object v0, v3

    .end local v0    # "op1":D
    return-object v0
.end method

.method public static max(Ljavafx/beans/value/ObservableNumberValue;D)Ljavafx/beans/binding/DoubleBinding;
    .locals 11

    .prologue
    .line 4376
    move-object v0, p0

    .local v0, "op1":Ljavafx/beans/value/ObservableNumberValue;
    move-wide v1, p1

    .local v1, "op2":D
    move-object v3, v0

    move-wide v4, v1

    invoke-static {v4, v5}, Lcom/sun/javafx/binding/DoubleConstant;->valueOf(D)Lcom/sun/javafx/binding/DoubleConstant;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljavafx/beans/Observable;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    move-object v8, v0

    aput-object v8, v6, v7

    invoke-static {v3, v4, v5}, Ljavafx/beans/binding/Bindings;->max(Ljavafx/beans/value/ObservableNumberValue;Ljavafx/beans/value/ObservableNumberValue;[Ljavafx/beans/Observable;)Ljavafx/beans/binding/NumberBinding;

    move-result-object v3

    check-cast v3, Ljavafx/beans/binding/DoubleBinding;

    move-object v0, v3

    .end local v0    # "op1":Ljavafx/beans/value/ObservableNumberValue;
    return-object v0
.end method

.method public static max(FLjavafx/beans/value/ObservableNumberValue;)Ljavafx/beans/binding/NumberBinding;
    .locals 9

    .prologue
    .line 4427
    move v0, p0

    .local v0, "op1":F
    move-object v1, p1

    .local v1, "op2":Ljavafx/beans/value/ObservableNumberValue;
    move v2, v0

    invoke-static {v2}, Lcom/sun/javafx/binding/FloatConstant;->valueOf(F)Lcom/sun/javafx/binding/FloatConstant;

    move-result-object v2

    move-object v3, v1

    const/4 v4, 0x1

    new-array v4, v4, [Ljavafx/beans/Observable;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    move-object v7, v1

    aput-object v7, v5, v6

    invoke-static {v2, v3, v4}, Ljavafx/beans/binding/Bindings;->max(Ljavafx/beans/value/ObservableNumberValue;Ljavafx/beans/value/ObservableNumberValue;[Ljavafx/beans/Observable;)Ljavafx/beans/binding/NumberBinding;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "op1":F
    return-object v0
.end method

.method public static max(ILjavafx/beans/value/ObservableNumberValue;)Ljavafx/beans/binding/NumberBinding;
    .locals 9

    .prologue
    .line 4495
    move v0, p0

    .local v0, "op1":I
    move-object v1, p1

    .local v1, "op2":Ljavafx/beans/value/ObservableNumberValue;
    move v2, v0

    invoke-static {v2}, Lcom/sun/javafx/binding/IntegerConstant;->valueOf(I)Lcom/sun/javafx/binding/IntegerConstant;

    move-result-object v2

    move-object v3, v1

    const/4 v4, 0x1

    new-array v4, v4, [Ljavafx/beans/Observable;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    move-object v7, v1

    aput-object v7, v5, v6

    invoke-static {v2, v3, v4}, Ljavafx/beans/binding/Bindings;->max(Ljavafx/beans/value/ObservableNumberValue;Ljavafx/beans/value/ObservableNumberValue;[Ljavafx/beans/Observable;)Ljavafx/beans/binding/NumberBinding;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "op1":I
    return-object v0
.end method

.method public static max(JLjavafx/beans/value/ObservableNumberValue;)Ljavafx/beans/binding/NumberBinding;
    .locals 10

    .prologue
    .line 4461
    move-wide v0, p0

    .local v0, "op1":J
    move-object v2, p2

    .local v2, "op2":Ljavafx/beans/value/ObservableNumberValue;
    move-wide v3, v0

    invoke-static {v3, v4}, Lcom/sun/javafx/binding/LongConstant;->valueOf(J)Lcom/sun/javafx/binding/LongConstant;

    move-result-object v3

    move-object v4, v2

    const/4 v5, 0x1

    new-array v5, v5, [Ljavafx/beans/Observable;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    move-object v8, v2

    aput-object v8, v6, v7

    invoke-static {v3, v4, v5}, Ljavafx/beans/binding/Bindings;->max(Ljavafx/beans/value/ObservableNumberValue;Ljavafx/beans/value/ObservableNumberValue;[Ljavafx/beans/Observable;)Ljavafx/beans/binding/NumberBinding;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "op1":J
    return-object v0
.end method

.method public static max(Ljavafx/beans/value/ObservableNumberValue;F)Ljavafx/beans/binding/NumberBinding;
    .locals 9

    .prologue
    .line 4410
    move-object v0, p0

    .local v0, "op1":Ljavafx/beans/value/ObservableNumberValue;
    move v1, p1

    .local v1, "op2":F
    move-object v2, v0

    move v3, v1

    invoke-static {v3}, Lcom/sun/javafx/binding/FloatConstant;->valueOf(F)Lcom/sun/javafx/binding/FloatConstant;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljavafx/beans/Observable;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    move-object v7, v0

    aput-object v7, v5, v6

    invoke-static {v2, v3, v4}, Ljavafx/beans/binding/Bindings;->max(Ljavafx/beans/value/ObservableNumberValue;Ljavafx/beans/value/ObservableNumberValue;[Ljavafx/beans/Observable;)Ljavafx/beans/binding/NumberBinding;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "op1":Ljavafx/beans/value/ObservableNumberValue;
    return-object v0
.end method

.method public static max(Ljavafx/beans/value/ObservableNumberValue;I)Ljavafx/beans/binding/NumberBinding;
    .locals 9

    .prologue
    .line 4478
    move-object v0, p0

    .local v0, "op1":Ljavafx/beans/value/ObservableNumberValue;
    move v1, p1

    .local v1, "op2":I
    move-object v2, v0

    move v3, v1

    invoke-static {v3}, Lcom/sun/javafx/binding/IntegerConstant;->valueOf(I)Lcom/sun/javafx/binding/IntegerConstant;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljavafx/beans/Observable;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    move-object v7, v0

    aput-object v7, v5, v6

    invoke-static {v2, v3, v4}, Ljavafx/beans/binding/Bindings;->max(Ljavafx/beans/value/ObservableNumberValue;Ljavafx/beans/value/ObservableNumberValue;[Ljavafx/beans/Observable;)Ljavafx/beans/binding/NumberBinding;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "op1":Ljavafx/beans/value/ObservableNumberValue;
    return-object v0
.end method

.method public static max(Ljavafx/beans/value/ObservableNumberValue;J)Ljavafx/beans/binding/NumberBinding;
    .locals 11

    .prologue
    .line 4444
    move-object v0, p0

    .local v0, "op1":Ljavafx/beans/value/ObservableNumberValue;
    move-wide v1, p1

    .local v1, "op2":J
    move-object v3, v0

    move-wide v4, v1

    invoke-static {v4, v5}, Lcom/sun/javafx/binding/LongConstant;->valueOf(J)Lcom/sun/javafx/binding/LongConstant;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljavafx/beans/Observable;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    move-object v8, v0

    aput-object v8, v6, v7

    invoke-static {v3, v4, v5}, Ljavafx/beans/binding/Bindings;->max(Ljavafx/beans/value/ObservableNumberValue;Ljavafx/beans/value/ObservableNumberValue;[Ljavafx/beans/Observable;)Ljavafx/beans/binding/NumberBinding;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "op1":Ljavafx/beans/value/ObservableNumberValue;
    return-object v0
.end method

.method public static max(Ljavafx/beans/value/ObservableNumberValue;Ljavafx/beans/value/ObservableNumberValue;)Ljavafx/beans/binding/NumberBinding;
    .locals 9

    .prologue
    .line 4359
    move-object v0, p0

    .local v0, "op1":Ljavafx/beans/value/ObservableNumberValue;
    move-object v1, p1

    .local v1, "op2":Ljavafx/beans/value/ObservableNumberValue;
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x2

    new-array v4, v4, [Ljavafx/beans/Observable;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    move-object v7, v0

    aput-object v7, v5, v6

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x1

    move-object v7, v1

    aput-object v7, v5, v6

    invoke-static {v2, v3, v4}, Ljavafx/beans/binding/Bindings;->max(Ljavafx/beans/value/ObservableNumberValue;Ljavafx/beans/value/ObservableNumberValue;[Ljavafx/beans/Observable;)Ljavafx/beans/binding/NumberBinding;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "op1":Ljavafx/beans/value/ObservableNumberValue;
    return-object v0
.end method

.method private static varargs max(Ljavafx/beans/value/ObservableNumberValue;Ljavafx/beans/value/ObservableNumberValue;[Ljavafx/beans/Observable;)Ljavafx/beans/binding/NumberBinding;
    .locals 9

    .prologue
    .line 4241
    move-object v0, p0

    .local v0, "op1":Ljavafx/beans/value/ObservableNumberValue;
    move-object v1, p1

    .local v1, "op2":Ljavafx/beans/value/ObservableNumberValue;
    move-object v2, p2

    .local v2, "dependencies":[Ljavafx/beans/Observable;
    move-object v3, v0

    if-eqz v3, :cond_0

    move-object v3, v1

    if-nez v3, :cond_1

    .line 4242
    :cond_0
    new-instance v3, Ljava/lang/NullPointerException;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    const-string v5, "Operands cannot be null."

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 4244
    :cond_1
    sget-boolean v3, Ljavafx/beans/binding/Bindings;->$assertionsDisabled:Z

    if-nez v3, :cond_3

    move-object v3, v2

    if-eqz v3, :cond_2

    move-object v3, v2

    array-length v3, v3

    if-gtz v3, :cond_3

    :cond_2
    new-instance v3, Ljava/lang/AssertionError;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 4246
    :cond_3
    move-object v3, v0

    instance-of v3, v3, Ljavafx/beans/value/ObservableDoubleValue;

    if-nez v3, :cond_4

    move-object v3, v1

    instance-of v3, v3, Ljavafx/beans/value/ObservableDoubleValue;

    if-eqz v3, :cond_5

    .line 4247
    :cond_4
    new-instance v3, Ljavafx/beans/binding/Bindings$48;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v2

    move-object v6, v0

    move-object v7, v1

    invoke-direct {v4, v5, v6, v7}, Ljavafx/beans/binding/Bindings$48;-><init>([Ljavafx/beans/Observable;Ljavafx/beans/value/ObservableNumberValue;Ljavafx/beans/value/ObservableNumberValue;)V

    move-object v0, v3

    .line 4319
    .end local v0    # "op1":Ljavafx/beans/value/ObservableNumberValue;
    :goto_0
    return-object v0

    .line 4270
    .restart local v0    # "op1":Ljavafx/beans/value/ObservableNumberValue;
    :cond_5
    move-object v3, v0

    instance-of v3, v3, Ljavafx/beans/value/ObservableFloatValue;

    if-nez v3, :cond_6

    move-object v3, v1

    instance-of v3, v3, Ljavafx/beans/value/ObservableFloatValue;

    if-eqz v3, :cond_7

    .line 4271
    :cond_6
    new-instance v3, Ljavafx/beans/binding/Bindings$49;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v2

    move-object v6, v0

    move-object v7, v1

    invoke-direct {v4, v5, v6, v7}, Ljavafx/beans/binding/Bindings$49;-><init>([Ljavafx/beans/Observable;Ljavafx/beans/value/ObservableNumberValue;Ljavafx/beans/value/ObservableNumberValue;)V

    move-object v0, v3

    goto :goto_0

    .line 4294
    :cond_7
    move-object v3, v0

    instance-of v3, v3, Ljavafx/beans/value/ObservableLongValue;

    if-nez v3, :cond_8

    move-object v3, v1

    instance-of v3, v3, Ljavafx/beans/value/ObservableLongValue;

    if-eqz v3, :cond_9

    .line 4295
    :cond_8
    new-instance v3, Ljavafx/beans/binding/Bindings$50;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v2

    move-object v6, v0

    move-object v7, v1

    invoke-direct {v4, v5, v6, v7}, Ljavafx/beans/binding/Bindings$50;-><init>([Ljavafx/beans/Observable;Ljavafx/beans/value/ObservableNumberValue;Ljavafx/beans/value/ObservableNumberValue;)V

    move-object v0, v3

    goto :goto_0

    .line 4319
    :cond_9
    new-instance v3, Ljavafx/beans/binding/Bindings$51;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v2

    move-object v6, v0

    move-object v7, v1

    invoke-direct {v4, v5, v6, v7}, Ljavafx/beans/binding/Bindings$51;-><init>([Ljavafx/beans/Observable;Ljavafx/beans/value/ObservableNumberValue;Ljavafx/beans/value/ObservableNumberValue;)V

    move-object v0, v3

    goto :goto_0
.end method

.method public static min(DLjavafx/beans/value/ObservableNumberValue;)Ljavafx/beans/binding/DoubleBinding;
    .locals 10

    .prologue
    .line 4132
    move-wide v0, p0

    .local v0, "op1":D
    move-object v2, p2

    .local v2, "op2":Ljavafx/beans/value/ObservableNumberValue;
    move-wide v3, v0

    invoke-static {v3, v4}, Lcom/sun/javafx/binding/DoubleConstant;->valueOf(D)Lcom/sun/javafx/binding/DoubleConstant;

    move-result-object v3

    move-object v4, v2

    const/4 v5, 0x1

    new-array v5, v5, [Ljavafx/beans/Observable;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    move-object v8, v2

    aput-object v8, v6, v7

    invoke-static {v3, v4, v5}, Ljavafx/beans/binding/Bindings;->min(Ljavafx/beans/value/ObservableNumberValue;Ljavafx/beans/value/ObservableNumberValue;[Ljavafx/beans/Observable;)Ljavafx/beans/binding/NumberBinding;

    move-result-object v3

    check-cast v3, Ljavafx/beans/binding/DoubleBinding;

    move-object v0, v3

    .end local v0    # "op1":D
    return-object v0
.end method

.method public static min(Ljavafx/beans/value/ObservableNumberValue;D)Ljavafx/beans/binding/DoubleBinding;
    .locals 11

    .prologue
    .line 4115
    move-object v0, p0

    .local v0, "op1":Ljavafx/beans/value/ObservableNumberValue;
    move-wide v1, p1

    .local v1, "op2":D
    move-object v3, v0

    move-wide v4, v1

    invoke-static {v4, v5}, Lcom/sun/javafx/binding/DoubleConstant;->valueOf(D)Lcom/sun/javafx/binding/DoubleConstant;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljavafx/beans/Observable;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    move-object v8, v0

    aput-object v8, v6, v7

    invoke-static {v3, v4, v5}, Ljavafx/beans/binding/Bindings;->min(Ljavafx/beans/value/ObservableNumberValue;Ljavafx/beans/value/ObservableNumberValue;[Ljavafx/beans/Observable;)Ljavafx/beans/binding/NumberBinding;

    move-result-object v3

    check-cast v3, Ljavafx/beans/binding/DoubleBinding;

    move-object v0, v3

    .end local v0    # "op1":Ljavafx/beans/value/ObservableNumberValue;
    return-object v0
.end method

.method public static min(FLjavafx/beans/value/ObservableNumberValue;)Ljavafx/beans/binding/NumberBinding;
    .locals 9

    .prologue
    .line 4166
    move v0, p0

    .local v0, "op1":F
    move-object v1, p1

    .local v1, "op2":Ljavafx/beans/value/ObservableNumberValue;
    move v2, v0

    invoke-static {v2}, Lcom/sun/javafx/binding/FloatConstant;->valueOf(F)Lcom/sun/javafx/binding/FloatConstant;

    move-result-object v2

    move-object v3, v1

    const/4 v4, 0x1

    new-array v4, v4, [Ljavafx/beans/Observable;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    move-object v7, v1

    aput-object v7, v5, v6

    invoke-static {v2, v3, v4}, Ljavafx/beans/binding/Bindings;->min(Ljavafx/beans/value/ObservableNumberValue;Ljavafx/beans/value/ObservableNumberValue;[Ljavafx/beans/Observable;)Ljavafx/beans/binding/NumberBinding;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "op1":F
    return-object v0
.end method

.method public static min(ILjavafx/beans/value/ObservableNumberValue;)Ljavafx/beans/binding/NumberBinding;
    .locals 9

    .prologue
    .line 4234
    move v0, p0

    .local v0, "op1":I
    move-object v1, p1

    .local v1, "op2":Ljavafx/beans/value/ObservableNumberValue;
    move v2, v0

    invoke-static {v2}, Lcom/sun/javafx/binding/IntegerConstant;->valueOf(I)Lcom/sun/javafx/binding/IntegerConstant;

    move-result-object v2

    move-object v3, v1

    const/4 v4, 0x1

    new-array v4, v4, [Ljavafx/beans/Observable;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    move-object v7, v1

    aput-object v7, v5, v6

    invoke-static {v2, v3, v4}, Ljavafx/beans/binding/Bindings;->min(Ljavafx/beans/value/ObservableNumberValue;Ljavafx/beans/value/ObservableNumberValue;[Ljavafx/beans/Observable;)Ljavafx/beans/binding/NumberBinding;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "op1":I
    return-object v0
.end method

.method public static min(JLjavafx/beans/value/ObservableNumberValue;)Ljavafx/beans/binding/NumberBinding;
    .locals 10

    .prologue
    .line 4200
    move-wide v0, p0

    .local v0, "op1":J
    move-object v2, p2

    .local v2, "op2":Ljavafx/beans/value/ObservableNumberValue;
    move-wide v3, v0

    invoke-static {v3, v4}, Lcom/sun/javafx/binding/LongConstant;->valueOf(J)Lcom/sun/javafx/binding/LongConstant;

    move-result-object v3

    move-object v4, v2

    const/4 v5, 0x1

    new-array v5, v5, [Ljavafx/beans/Observable;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    move-object v8, v2

    aput-object v8, v6, v7

    invoke-static {v3, v4, v5}, Ljavafx/beans/binding/Bindings;->min(Ljavafx/beans/value/ObservableNumberValue;Ljavafx/beans/value/ObservableNumberValue;[Ljavafx/beans/Observable;)Ljavafx/beans/binding/NumberBinding;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "op1":J
    return-object v0
.end method

.method public static min(Ljavafx/beans/value/ObservableNumberValue;F)Ljavafx/beans/binding/NumberBinding;
    .locals 9

    .prologue
    .line 4149
    move-object v0, p0

    .local v0, "op1":Ljavafx/beans/value/ObservableNumberValue;
    move v1, p1

    .local v1, "op2":F
    move-object v2, v0

    move v3, v1

    invoke-static {v3}, Lcom/sun/javafx/binding/FloatConstant;->valueOf(F)Lcom/sun/javafx/binding/FloatConstant;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljavafx/beans/Observable;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    move-object v7, v0

    aput-object v7, v5, v6

    invoke-static {v2, v3, v4}, Ljavafx/beans/binding/Bindings;->min(Ljavafx/beans/value/ObservableNumberValue;Ljavafx/beans/value/ObservableNumberValue;[Ljavafx/beans/Observable;)Ljavafx/beans/binding/NumberBinding;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "op1":Ljavafx/beans/value/ObservableNumberValue;
    return-object v0
.end method

.method public static min(Ljavafx/beans/value/ObservableNumberValue;I)Ljavafx/beans/binding/NumberBinding;
    .locals 9

    .prologue
    .line 4217
    move-object v0, p0

    .local v0, "op1":Ljavafx/beans/value/ObservableNumberValue;
    move v1, p1

    .local v1, "op2":I
    move-object v2, v0

    move v3, v1

    invoke-static {v3}, Lcom/sun/javafx/binding/IntegerConstant;->valueOf(I)Lcom/sun/javafx/binding/IntegerConstant;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljavafx/beans/Observable;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    move-object v7, v0

    aput-object v7, v5, v6

    invoke-static {v2, v3, v4}, Ljavafx/beans/binding/Bindings;->min(Ljavafx/beans/value/ObservableNumberValue;Ljavafx/beans/value/ObservableNumberValue;[Ljavafx/beans/Observable;)Ljavafx/beans/binding/NumberBinding;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "op1":Ljavafx/beans/value/ObservableNumberValue;
    return-object v0
.end method

.method public static min(Ljavafx/beans/value/ObservableNumberValue;J)Ljavafx/beans/binding/NumberBinding;
    .locals 11

    .prologue
    .line 4183
    move-object v0, p0

    .local v0, "op1":Ljavafx/beans/value/ObservableNumberValue;
    move-wide v1, p1

    .local v1, "op2":J
    move-object v3, v0

    move-wide v4, v1

    invoke-static {v4, v5}, Lcom/sun/javafx/binding/LongConstant;->valueOf(J)Lcom/sun/javafx/binding/LongConstant;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljavafx/beans/Observable;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    move-object v8, v0

    aput-object v8, v6, v7

    invoke-static {v3, v4, v5}, Ljavafx/beans/binding/Bindings;->min(Ljavafx/beans/value/ObservableNumberValue;Ljavafx/beans/value/ObservableNumberValue;[Ljavafx/beans/Observable;)Ljavafx/beans/binding/NumberBinding;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "op1":Ljavafx/beans/value/ObservableNumberValue;
    return-object v0
.end method

.method public static min(Ljavafx/beans/value/ObservableNumberValue;Ljavafx/beans/value/ObservableNumberValue;)Ljavafx/beans/binding/NumberBinding;
    .locals 9

    .prologue
    .line 4098
    move-object v0, p0

    .local v0, "op1":Ljavafx/beans/value/ObservableNumberValue;
    move-object v1, p1

    .local v1, "op2":Ljavafx/beans/value/ObservableNumberValue;
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x2

    new-array v4, v4, [Ljavafx/beans/Observable;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    move-object v7, v0

    aput-object v7, v5, v6

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x1

    move-object v7, v1

    aput-object v7, v5, v6

    invoke-static {v2, v3, v4}, Ljavafx/beans/binding/Bindings;->min(Ljavafx/beans/value/ObservableNumberValue;Ljavafx/beans/value/ObservableNumberValue;[Ljavafx/beans/Observable;)Ljavafx/beans/binding/NumberBinding;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "op1":Ljavafx/beans/value/ObservableNumberValue;
    return-object v0
.end method

.method private static varargs min(Ljavafx/beans/value/ObservableNumberValue;Ljavafx/beans/value/ObservableNumberValue;[Ljavafx/beans/Observable;)Ljavafx/beans/binding/NumberBinding;
    .locals 9

    .prologue
    .line 3980
    move-object v0, p0

    .local v0, "op1":Ljavafx/beans/value/ObservableNumberValue;
    move-object v1, p1

    .local v1, "op2":Ljavafx/beans/value/ObservableNumberValue;
    move-object v2, p2

    .local v2, "dependencies":[Ljavafx/beans/Observable;
    move-object v3, v0

    if-eqz v3, :cond_0

    move-object v3, v1

    if-nez v3, :cond_1

    .line 3981
    :cond_0
    new-instance v3, Ljava/lang/NullPointerException;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    const-string v5, "Operands cannot be null."

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 3983
    :cond_1
    sget-boolean v3, Ljavafx/beans/binding/Bindings;->$assertionsDisabled:Z

    if-nez v3, :cond_3

    move-object v3, v2

    if-eqz v3, :cond_2

    move-object v3, v2

    array-length v3, v3

    if-gtz v3, :cond_3

    :cond_2
    new-instance v3, Ljava/lang/AssertionError;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 3985
    :cond_3
    move-object v3, v0

    instance-of v3, v3, Ljavafx/beans/value/ObservableDoubleValue;

    if-nez v3, :cond_4

    move-object v3, v1

    instance-of v3, v3, Ljavafx/beans/value/ObservableDoubleValue;

    if-eqz v3, :cond_5

    .line 3986
    :cond_4
    new-instance v3, Ljavafx/beans/binding/Bindings$44;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v2

    move-object v6, v0

    move-object v7, v1

    invoke-direct {v4, v5, v6, v7}, Ljavafx/beans/binding/Bindings$44;-><init>([Ljavafx/beans/Observable;Ljavafx/beans/value/ObservableNumberValue;Ljavafx/beans/value/ObservableNumberValue;)V

    move-object v0, v3

    .line 4058
    .end local v0    # "op1":Ljavafx/beans/value/ObservableNumberValue;
    :goto_0
    return-object v0

    .line 4009
    .restart local v0    # "op1":Ljavafx/beans/value/ObservableNumberValue;
    :cond_5
    move-object v3, v0

    instance-of v3, v3, Ljavafx/beans/value/ObservableFloatValue;

    if-nez v3, :cond_6

    move-object v3, v1

    instance-of v3, v3, Ljavafx/beans/value/ObservableFloatValue;

    if-eqz v3, :cond_7

    .line 4010
    :cond_6
    new-instance v3, Ljavafx/beans/binding/Bindings$45;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v2

    move-object v6, v0

    move-object v7, v1

    invoke-direct {v4, v5, v6, v7}, Ljavafx/beans/binding/Bindings$45;-><init>([Ljavafx/beans/Observable;Ljavafx/beans/value/ObservableNumberValue;Ljavafx/beans/value/ObservableNumberValue;)V

    move-object v0, v3

    goto :goto_0

    .line 4033
    :cond_7
    move-object v3, v0

    instance-of v3, v3, Ljavafx/beans/value/ObservableLongValue;

    if-nez v3, :cond_8

    move-object v3, v1

    instance-of v3, v3, Ljavafx/beans/value/ObservableLongValue;

    if-eqz v3, :cond_9

    .line 4034
    :cond_8
    new-instance v3, Ljavafx/beans/binding/Bindings$46;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v2

    move-object v6, v0

    move-object v7, v1

    invoke-direct {v4, v5, v6, v7}, Ljavafx/beans/binding/Bindings$46;-><init>([Ljavafx/beans/Observable;Ljavafx/beans/value/ObservableNumberValue;Ljavafx/beans/value/ObservableNumberValue;)V

    move-object v0, v3

    goto :goto_0

    .line 4058
    :cond_9
    new-instance v3, Ljavafx/beans/binding/Bindings$47;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v2

    move-object v6, v0

    move-object v7, v1

    invoke-direct {v4, v5, v6, v7}, Ljavafx/beans/binding/Bindings$47;-><init>([Ljavafx/beans/Observable;Ljavafx/beans/value/ObservableNumberValue;Ljavafx/beans/value/ObservableNumberValue;)V

    move-object v0, v3

    goto :goto_0
.end method

.method public static multiply(DLjavafx/beans/value/ObservableNumberValue;)Ljavafx/beans/binding/DoubleBinding;
    .locals 10

    .prologue
    .line 1885
    move-wide v0, p0

    .local v0, "op1":D
    move-object v2, p2

    .local v2, "op2":Ljavafx/beans/value/ObservableNumberValue;
    move-wide v3, v0

    invoke-static {v3, v4}, Lcom/sun/javafx/binding/DoubleConstant;->valueOf(D)Lcom/sun/javafx/binding/DoubleConstant;

    move-result-object v3

    move-object v4, v2

    const/4 v5, 0x1

    new-array v5, v5, [Ljavafx/beans/Observable;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    move-object v8, v2

    aput-object v8, v6, v7

    invoke-static {v3, v4, v5}, Ljavafx/beans/binding/Bindings;->multiply(Ljavafx/beans/value/ObservableNumberValue;Ljavafx/beans/value/ObservableNumberValue;[Ljavafx/beans/Observable;)Ljavafx/beans/binding/NumberBinding;

    move-result-object v3

    check-cast v3, Ljavafx/beans/binding/DoubleBinding;

    move-object v0, v3

    .end local v0    # "op1":D
    return-object v0
.end method

.method public static multiply(Ljavafx/beans/value/ObservableNumberValue;D)Ljavafx/beans/binding/DoubleBinding;
    .locals 11

    .prologue
    .line 1868
    move-object v0, p0

    .local v0, "op1":Ljavafx/beans/value/ObservableNumberValue;
    move-wide v1, p1

    .local v1, "op2":D
    move-object v3, v0

    move-wide v4, v1

    invoke-static {v4, v5}, Lcom/sun/javafx/binding/DoubleConstant;->valueOf(D)Lcom/sun/javafx/binding/DoubleConstant;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljavafx/beans/Observable;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    move-object v8, v0

    aput-object v8, v6, v7

    invoke-static {v3, v4, v5}, Ljavafx/beans/binding/Bindings;->multiply(Ljavafx/beans/value/ObservableNumberValue;Ljavafx/beans/value/ObservableNumberValue;[Ljavafx/beans/Observable;)Ljavafx/beans/binding/NumberBinding;

    move-result-object v3

    check-cast v3, Ljavafx/beans/binding/DoubleBinding;

    move-object v0, v3

    .end local v0    # "op1":Ljavafx/beans/value/ObservableNumberValue;
    return-object v0
.end method

.method public static multiply(FLjavafx/beans/value/ObservableNumberValue;)Ljavafx/beans/binding/NumberBinding;
    .locals 9

    .prologue
    .line 1919
    move v0, p0

    .local v0, "op1":F
    move-object v1, p1

    .local v1, "op2":Ljavafx/beans/value/ObservableNumberValue;
    move v2, v0

    invoke-static {v2}, Lcom/sun/javafx/binding/FloatConstant;->valueOf(F)Lcom/sun/javafx/binding/FloatConstant;

    move-result-object v2

    move-object v3, v1

    const/4 v4, 0x1

    new-array v4, v4, [Ljavafx/beans/Observable;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    move-object v7, v1

    aput-object v7, v5, v6

    invoke-static {v2, v3, v4}, Ljavafx/beans/binding/Bindings;->multiply(Ljavafx/beans/value/ObservableNumberValue;Ljavafx/beans/value/ObservableNumberValue;[Ljavafx/beans/Observable;)Ljavafx/beans/binding/NumberBinding;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "op1":F
    return-object v0
.end method

.method public static multiply(ILjavafx/beans/value/ObservableNumberValue;)Ljavafx/beans/binding/NumberBinding;
    .locals 9

    .prologue
    .line 1987
    move v0, p0

    .local v0, "op1":I
    move-object v1, p1

    .local v1, "op2":Ljavafx/beans/value/ObservableNumberValue;
    move v2, v0

    invoke-static {v2}, Lcom/sun/javafx/binding/IntegerConstant;->valueOf(I)Lcom/sun/javafx/binding/IntegerConstant;

    move-result-object v2

    move-object v3, v1

    const/4 v4, 0x1

    new-array v4, v4, [Ljavafx/beans/Observable;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    move-object v7, v1

    aput-object v7, v5, v6

    invoke-static {v2, v3, v4}, Ljavafx/beans/binding/Bindings;->multiply(Ljavafx/beans/value/ObservableNumberValue;Ljavafx/beans/value/ObservableNumberValue;[Ljavafx/beans/Observable;)Ljavafx/beans/binding/NumberBinding;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "op1":I
    return-object v0
.end method

.method public static multiply(JLjavafx/beans/value/ObservableNumberValue;)Ljavafx/beans/binding/NumberBinding;
    .locals 10

    .prologue
    .line 1953
    move-wide v0, p0

    .local v0, "op1":J
    move-object v2, p2

    .local v2, "op2":Ljavafx/beans/value/ObservableNumberValue;
    move-wide v3, v0

    invoke-static {v3, v4}, Lcom/sun/javafx/binding/LongConstant;->valueOf(J)Lcom/sun/javafx/binding/LongConstant;

    move-result-object v3

    move-object v4, v2

    const/4 v5, 0x1

    new-array v5, v5, [Ljavafx/beans/Observable;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    move-object v8, v2

    aput-object v8, v6, v7

    invoke-static {v3, v4, v5}, Ljavafx/beans/binding/Bindings;->multiply(Ljavafx/beans/value/ObservableNumberValue;Ljavafx/beans/value/ObservableNumberValue;[Ljavafx/beans/Observable;)Ljavafx/beans/binding/NumberBinding;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "op1":J
    return-object v0
.end method

.method public static multiply(Ljavafx/beans/value/ObservableNumberValue;F)Ljavafx/beans/binding/NumberBinding;
    .locals 9

    .prologue
    .line 1902
    move-object v0, p0

    .local v0, "op1":Ljavafx/beans/value/ObservableNumberValue;
    move v1, p1

    .local v1, "op2":F
    move-object v2, v0

    move v3, v1

    invoke-static {v3}, Lcom/sun/javafx/binding/FloatConstant;->valueOf(F)Lcom/sun/javafx/binding/FloatConstant;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljavafx/beans/Observable;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    move-object v7, v0

    aput-object v7, v5, v6

    invoke-static {v2, v3, v4}, Ljavafx/beans/binding/Bindings;->multiply(Ljavafx/beans/value/ObservableNumberValue;Ljavafx/beans/value/ObservableNumberValue;[Ljavafx/beans/Observable;)Ljavafx/beans/binding/NumberBinding;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "op1":Ljavafx/beans/value/ObservableNumberValue;
    return-object v0
.end method

.method public static multiply(Ljavafx/beans/value/ObservableNumberValue;I)Ljavafx/beans/binding/NumberBinding;
    .locals 9

    .prologue
    .line 1970
    move-object v0, p0

    .local v0, "op1":Ljavafx/beans/value/ObservableNumberValue;
    move v1, p1

    .local v1, "op2":I
    move-object v2, v0

    move v3, v1

    invoke-static {v3}, Lcom/sun/javafx/binding/IntegerConstant;->valueOf(I)Lcom/sun/javafx/binding/IntegerConstant;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljavafx/beans/Observable;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    move-object v7, v0

    aput-object v7, v5, v6

    invoke-static {v2, v3, v4}, Ljavafx/beans/binding/Bindings;->multiply(Ljavafx/beans/value/ObservableNumberValue;Ljavafx/beans/value/ObservableNumberValue;[Ljavafx/beans/Observable;)Ljavafx/beans/binding/NumberBinding;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "op1":Ljavafx/beans/value/ObservableNumberValue;
    return-object v0
.end method

.method public static multiply(Ljavafx/beans/value/ObservableNumberValue;J)Ljavafx/beans/binding/NumberBinding;
    .locals 11

    .prologue
    .line 1936
    move-object v0, p0

    .local v0, "op1":Ljavafx/beans/value/ObservableNumberValue;
    move-wide v1, p1

    .local v1, "op2":J
    move-object v3, v0

    move-wide v4, v1

    invoke-static {v4, v5}, Lcom/sun/javafx/binding/LongConstant;->valueOf(J)Lcom/sun/javafx/binding/LongConstant;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljavafx/beans/Observable;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    move-object v8, v0

    aput-object v8, v6, v7

    invoke-static {v3, v4, v5}, Ljavafx/beans/binding/Bindings;->multiply(Ljavafx/beans/value/ObservableNumberValue;Ljavafx/beans/value/ObservableNumberValue;[Ljavafx/beans/Observable;)Ljavafx/beans/binding/NumberBinding;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "op1":Ljavafx/beans/value/ObservableNumberValue;
    return-object v0
.end method

.method public static multiply(Ljavafx/beans/value/ObservableNumberValue;Ljavafx/beans/value/ObservableNumberValue;)Ljavafx/beans/binding/NumberBinding;
    .locals 9

    .prologue
    .line 1851
    move-object v0, p0

    .local v0, "op1":Ljavafx/beans/value/ObservableNumberValue;
    move-object v1, p1

    .local v1, "op2":Ljavafx/beans/value/ObservableNumberValue;
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x2

    new-array v4, v4, [Ljavafx/beans/Observable;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    move-object v7, v0

    aput-object v7, v5, v6

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x1

    move-object v7, v1

    aput-object v7, v5, v6

    invoke-static {v2, v3, v4}, Ljavafx/beans/binding/Bindings;->multiply(Ljavafx/beans/value/ObservableNumberValue;Ljavafx/beans/value/ObservableNumberValue;[Ljavafx/beans/Observable;)Ljavafx/beans/binding/NumberBinding;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "op1":Ljavafx/beans/value/ObservableNumberValue;
    return-object v0
.end method

.method private static varargs multiply(Ljavafx/beans/value/ObservableNumberValue;Ljavafx/beans/value/ObservableNumberValue;[Ljavafx/beans/Observable;)Ljavafx/beans/binding/NumberBinding;
    .locals 9

    .prologue
    .line 1733
    move-object v0, p0

    .local v0, "op1":Ljavafx/beans/value/ObservableNumberValue;
    move-object v1, p1

    .local v1, "op2":Ljavafx/beans/value/ObservableNumberValue;
    move-object v2, p2

    .local v2, "dependencies":[Ljavafx/beans/Observable;
    move-object v3, v0

    if-eqz v3, :cond_0

    move-object v3, v1

    if-nez v3, :cond_1

    .line 1734
    :cond_0
    new-instance v3, Ljava/lang/NullPointerException;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    const-string v5, "Operands cannot be null."

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1736
    :cond_1
    sget-boolean v3, Ljavafx/beans/binding/Bindings;->$assertionsDisabled:Z

    if-nez v3, :cond_3

    move-object v3, v2

    if-eqz v3, :cond_2

    move-object v3, v2

    array-length v3, v3

    if-gtz v3, :cond_3

    :cond_2
    new-instance v3, Ljava/lang/AssertionError;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 1738
    :cond_3
    move-object v3, v0

    instance-of v3, v3, Ljavafx/beans/value/ObservableDoubleValue;

    if-nez v3, :cond_4

    move-object v3, v1

    instance-of v3, v3, Ljavafx/beans/value/ObservableDoubleValue;

    if-eqz v3, :cond_5

    .line 1739
    :cond_4
    new-instance v3, Ljavafx/beans/binding/Bindings$20;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v2

    move-object v6, v0

    move-object v7, v1

    invoke-direct {v4, v5, v6, v7}, Ljavafx/beans/binding/Bindings$20;-><init>([Ljavafx/beans/Observable;Ljavafx/beans/value/ObservableNumberValue;Ljavafx/beans/value/ObservableNumberValue;)V

    move-object v0, v3

    .line 1811
    .end local v0    # "op1":Ljavafx/beans/value/ObservableNumberValue;
    :goto_0
    return-object v0

    .line 1762
    .restart local v0    # "op1":Ljavafx/beans/value/ObservableNumberValue;
    :cond_5
    move-object v3, v0

    instance-of v3, v3, Ljavafx/beans/value/ObservableFloatValue;

    if-nez v3, :cond_6

    move-object v3, v1

    instance-of v3, v3, Ljavafx/beans/value/ObservableFloatValue;

    if-eqz v3, :cond_7

    .line 1763
    :cond_6
    new-instance v3, Ljavafx/beans/binding/Bindings$21;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v2

    move-object v6, v0

    move-object v7, v1

    invoke-direct {v4, v5, v6, v7}, Ljavafx/beans/binding/Bindings$21;-><init>([Ljavafx/beans/Observable;Ljavafx/beans/value/ObservableNumberValue;Ljavafx/beans/value/ObservableNumberValue;)V

    move-object v0, v3

    goto :goto_0

    .line 1786
    :cond_7
    move-object v3, v0

    instance-of v3, v3, Ljavafx/beans/value/ObservableLongValue;

    if-nez v3, :cond_8

    move-object v3, v1

    instance-of v3, v3, Ljavafx/beans/value/ObservableLongValue;

    if-eqz v3, :cond_9

    .line 1787
    :cond_8
    new-instance v3, Ljavafx/beans/binding/Bindings$22;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v2

    move-object v6, v0

    move-object v7, v1

    invoke-direct {v4, v5, v6, v7}, Ljavafx/beans/binding/Bindings$22;-><init>([Ljavafx/beans/Observable;Ljavafx/beans/value/ObservableNumberValue;Ljavafx/beans/value/ObservableNumberValue;)V

    move-object v0, v3

    goto :goto_0

    .line 1811
    :cond_9
    new-instance v3, Ljavafx/beans/binding/Bindings$23;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v2

    move-object v6, v0

    move-object v7, v1

    invoke-direct {v4, v5, v6, v7}, Ljavafx/beans/binding/Bindings$23;-><init>([Ljavafx/beans/Observable;Ljavafx/beans/value/ObservableNumberValue;Ljavafx/beans/value/ObservableNumberValue;)V

    move-object v0, v3

    goto :goto_0
.end method

.method public static negate(Ljavafx/beans/value/ObservableNumberValue;)Ljavafx/beans/binding/NumberBinding;
    .locals 5

    .prologue
    .line 1112
    move-object v0, p0

    .local v0, "value":Ljavafx/beans/value/ObservableNumberValue;
    move-object v1, v0

    if-nez v1, :cond_0

    .line 1113
    new-instance v1, Ljava/lang/NullPointerException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string v3, "Operand cannot be null."

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1116
    :cond_0
    move-object v1, v0

    instance-of v1, v1, Ljavafx/beans/value/ObservableDoubleValue;

    if-eqz v1, :cond_1

    .line 1117
    new-instance v1, Ljavafx/beans/binding/Bindings$8;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Ljavafx/beans/binding/Bindings$8;-><init>(Ljavafx/beans/value/ObservableNumberValue;)V

    move-object v0, v1

    .line 1183
    .end local v0    # "value":Ljavafx/beans/value/ObservableNumberValue;
    :goto_0
    return-object v0

    .line 1138
    .restart local v0    # "value":Ljavafx/beans/value/ObservableNumberValue;
    :cond_1
    move-object v1, v0

    instance-of v1, v1, Ljavafx/beans/value/ObservableFloatValue;

    if-eqz v1, :cond_2

    .line 1139
    new-instance v1, Ljavafx/beans/binding/Bindings$9;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Ljavafx/beans/binding/Bindings$9;-><init>(Ljavafx/beans/value/ObservableNumberValue;)V

    move-object v0, v1

    goto :goto_0

    .line 1160
    :cond_2
    move-object v1, v0

    instance-of v1, v1, Ljavafx/beans/value/ObservableLongValue;

    if-eqz v1, :cond_3

    .line 1161
    new-instance v1, Ljavafx/beans/binding/Bindings$10;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Ljavafx/beans/binding/Bindings$10;-><init>(Ljavafx/beans/value/ObservableNumberValue;)V

    move-object v0, v1

    goto :goto_0

    .line 1183
    :cond_3
    new-instance v1, Ljavafx/beans/binding/Bindings$11;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Ljavafx/beans/binding/Bindings$11;-><init>(Ljavafx/beans/value/ObservableNumberValue;)V

    move-object v0, v1

    goto :goto_0
.end method

.method public static not(Ljavafx/beans/value/ObservableBooleanValue;)Ljavafx/beans/binding/BooleanBinding;
    .locals 5

    .prologue
    .line 4675
    move-object v0, p0

    .local v0, "op":Ljavafx/beans/value/ObservableBooleanValue;
    move-object v1, v0

    if-nez v1, :cond_0

    .line 4676
    new-instance v1, Ljava/lang/NullPointerException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string v3, "Operand cannot be null."

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4679
    :cond_0
    new-instance v1, Ljavafx/beans/binding/Bindings$52;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Ljavafx/beans/binding/Bindings$52;-><init>(Ljavafx/beans/value/ObservableBooleanValue;)V

    move-object v0, v1

    .end local v0    # "op":Ljavafx/beans/value/ObservableBooleanValue;
    return-object v0
.end method

.method public static notEqual(DLjavafx/beans/value/ObservableNumberValue;D)Ljavafx/beans/binding/BooleanBinding;
    .locals 15

    .prologue
    .line 2892
    move-wide v1, p0

    .local v1, "op1":D
    move-object/from16 v3, p2

    .local v3, "op2":Ljavafx/beans/value/ObservableNumberValue;
    move-wide/from16 v4, p3

    .local v4, "epsilon":D
    move-wide v6, v1

    invoke-static {v6, v7}, Lcom/sun/javafx/binding/DoubleConstant;->valueOf(D)Lcom/sun/javafx/binding/DoubleConstant;

    move-result-object v6

    move-object v7, v3

    move-wide v8, v4

    const/4 v10, 0x1

    new-array v10, v10, [Ljavafx/beans/Observable;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    const/4 v12, 0x0

    move-object v13, v3

    aput-object v13, v11, v12

    invoke-static {v6, v7, v8, v9, v10}, Ljavafx/beans/binding/Bindings;->notEqual(Ljavafx/beans/value/ObservableNumberValue;Ljavafx/beans/value/ObservableNumberValue;D[Ljavafx/beans/Observable;)Ljavafx/beans/binding/BooleanBinding;

    move-result-object v6

    move-object v1, v6

    .end local v1    # "op1":D
    return-object v1
.end method

.method public static notEqual(FLjavafx/beans/value/ObservableNumberValue;D)Ljavafx/beans/binding/BooleanBinding;
    .locals 14

    .prologue
    .line 2942
    move v0, p0

    .local v0, "op1":F
    move-object v1, p1

    .local v1, "op2":Ljavafx/beans/value/ObservableNumberValue;
    move-wide/from16 v2, p2

    .local v2, "epsilon":D
    move v4, v0

    invoke-static {v4}, Lcom/sun/javafx/binding/FloatConstant;->valueOf(F)Lcom/sun/javafx/binding/FloatConstant;

    move-result-object v4

    move-object v5, v1

    move-wide v6, v2

    const/4 v8, 0x1

    new-array v8, v8, [Ljavafx/beans/Observable;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/4 v10, 0x0

    move-object v11, v1

    aput-object v11, v9, v10

    invoke-static {v4, v5, v6, v7, v8}, Ljavafx/beans/binding/Bindings;->notEqual(Ljavafx/beans/value/ObservableNumberValue;Ljavafx/beans/value/ObservableNumberValue;D[Ljavafx/beans/Observable;)Ljavafx/beans/binding/BooleanBinding;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "op1":F
    return-object v0
.end method

.method public static notEqual(ILjavafx/beans/value/ObservableNumberValue;)Ljavafx/beans/binding/BooleanBinding;
    .locals 11

    .prologue
    .line 3126
    move v0, p0

    .local v0, "op1":I
    move-object v1, p1

    .local v1, "op2":Ljavafx/beans/value/ObservableNumberValue;
    move v2, v0

    invoke-static {v2}, Lcom/sun/javafx/binding/IntegerConstant;->valueOf(I)Lcom/sun/javafx/binding/IntegerConstant;

    move-result-object v2

    move-object v3, v1

    const-wide/16 v4, 0x0

    const/4 v6, 0x1

    new-array v6, v6, [Ljavafx/beans/Observable;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x0

    move-object v9, v1

    aput-object v9, v7, v8

    invoke-static {v2, v3, v4, v5, v6}, Ljavafx/beans/binding/Bindings;->notEqual(Ljavafx/beans/value/ObservableNumberValue;Ljavafx/beans/value/ObservableNumberValue;D[Ljavafx/beans/Observable;)Ljavafx/beans/binding/BooleanBinding;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "op1":I
    return-object v0
.end method

.method public static notEqual(ILjavafx/beans/value/ObservableNumberValue;D)Ljavafx/beans/binding/BooleanBinding;
    .locals 14

    .prologue
    .line 3105
    move v0, p0

    .local v0, "op1":I
    move-object v1, p1

    .local v1, "op2":Ljavafx/beans/value/ObservableNumberValue;
    move-wide/from16 v2, p2

    .local v2, "epsilon":D
    move v4, v0

    invoke-static {v4}, Lcom/sun/javafx/binding/IntegerConstant;->valueOf(I)Lcom/sun/javafx/binding/IntegerConstant;

    move-result-object v4

    move-object v5, v1

    move-wide v6, v2

    const/4 v8, 0x1

    new-array v8, v8, [Ljavafx/beans/Observable;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/4 v10, 0x0

    move-object v11, v1

    aput-object v11, v9, v10

    invoke-static {v4, v5, v6, v7, v8}, Ljavafx/beans/binding/Bindings;->notEqual(Ljavafx/beans/value/ObservableNumberValue;Ljavafx/beans/value/ObservableNumberValue;D[Ljavafx/beans/Observable;)Ljavafx/beans/binding/BooleanBinding;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "op1":I
    return-object v0
.end method

.method public static notEqual(JLjavafx/beans/value/ObservableNumberValue;)Ljavafx/beans/binding/BooleanBinding;
    .locals 14

    .prologue
    .line 3034
    move-wide v1, p0

    .local v1, "op1":J
    move-object/from16 v3, p2

    .local v3, "op2":Ljavafx/beans/value/ObservableNumberValue;
    move-wide v4, v1

    invoke-static {v4, v5}, Lcom/sun/javafx/binding/LongConstant;->valueOf(J)Lcom/sun/javafx/binding/LongConstant;

    move-result-object v4

    move-object v5, v3

    const-wide/16 v6, 0x0

    const/4 v8, 0x1

    new-array v8, v8, [Ljavafx/beans/Observable;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/4 v10, 0x0

    move-object v11, v3

    aput-object v11, v9, v10

    invoke-static {v4, v5, v6, v7, v8}, Ljavafx/beans/binding/Bindings;->notEqual(Ljavafx/beans/value/ObservableNumberValue;Ljavafx/beans/value/ObservableNumberValue;D[Ljavafx/beans/Observable;)Ljavafx/beans/binding/BooleanBinding;

    move-result-object v4

    move-object v1, v4

    .end local v1    # "op1":J
    return-object v1
.end method

.method public static notEqual(JLjavafx/beans/value/ObservableNumberValue;D)Ljavafx/beans/binding/BooleanBinding;
    .locals 15

    .prologue
    .line 3013
    move-wide v1, p0

    .local v1, "op1":J
    move-object/from16 v3, p2

    .local v3, "op2":Ljavafx/beans/value/ObservableNumberValue;
    move-wide/from16 v4, p3

    .local v4, "epsilon":D
    move-wide v6, v1

    invoke-static {v6, v7}, Lcom/sun/javafx/binding/LongConstant;->valueOf(J)Lcom/sun/javafx/binding/LongConstant;

    move-result-object v6

    move-object v7, v3

    move-wide v8, v4

    const/4 v10, 0x1

    new-array v10, v10, [Ljavafx/beans/Observable;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    const/4 v12, 0x0

    move-object v13, v3

    aput-object v13, v11, v12

    invoke-static {v6, v7, v8, v9, v10}, Ljavafx/beans/binding/Bindings;->notEqual(Ljavafx/beans/value/ObservableNumberValue;Ljavafx/beans/value/ObservableNumberValue;D[Ljavafx/beans/Observable;)Ljavafx/beans/binding/BooleanBinding;

    move-result-object v6

    move-object v1, v6

    .end local v1    # "op1":J
    return-object v1
.end method

.method public static notEqual(Ljava/lang/Object;Ljavafx/beans/value/ObservableObjectValue;)Ljavafx/beans/binding/BooleanBinding;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljavafx/beans/value/ObservableObjectValue",
            "<*>;)",
            "Ljavafx/beans/binding/BooleanBinding;"
        }
    .end annotation

    .prologue
    .line 5865
    move-object v0, p0

    .local v0, "op1":Ljava/lang/Object;
    move-object v1, p1

    .local v1, "op2":Ljavafx/beans/value/ObservableObjectValue;, "Ljavafx/beans/value/ObservableObjectValue<*>;"
    move-object v2, v0

    invoke-static {v2}, Lcom/sun/javafx/binding/ObjectConstant;->valueOf(Ljava/lang/Object;)Lcom/sun/javafx/binding/ObjectConstant;

    move-result-object v2

    move-object v3, v1

    const/4 v4, 0x1

    new-array v4, v4, [Ljavafx/beans/Observable;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    move-object v7, v1

    aput-object v7, v5, v6

    invoke-static {v2, v3, v4}, Ljavafx/beans/binding/Bindings;->notEqual(Ljavafx/beans/value/ObservableObjectValue;Ljavafx/beans/value/ObservableObjectValue;[Ljavafx/beans/Observable;)Ljavafx/beans/binding/BooleanBinding;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "op1":Ljava/lang/Object;
    return-object v0
.end method

.method public static notEqual(Ljava/lang/String;Ljavafx/beans/value/ObservableStringValue;)Ljavafx/beans/binding/BooleanBinding;
    .locals 9

    .prologue
    .line 5063
    move-object v0, p0

    .local v0, "op1":Ljava/lang/String;
    move-object v1, p1

    .local v1, "op2":Ljavafx/beans/value/ObservableStringValue;
    move-object v2, v0

    invoke-static {v2}, Lcom/sun/javafx/binding/StringConstant;->valueOf(Ljava/lang/String;)Lcom/sun/javafx/binding/StringConstant;

    move-result-object v2

    move-object v3, v1

    const/4 v4, 0x1

    new-array v4, v4, [Ljavafx/beans/Observable;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    move-object v7, v1

    aput-object v7, v5, v6

    invoke-static {v2, v3, v4}, Ljavafx/beans/binding/Bindings;->notEqual(Ljavafx/beans/value/ObservableStringValue;Ljavafx/beans/value/ObservableStringValue;[Ljavafx/beans/Observable;)Ljavafx/beans/binding/BooleanBinding;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "op1":Ljava/lang/String;
    return-object v0
.end method

.method public static notEqual(Ljavafx/beans/value/ObservableBooleanValue;Ljavafx/beans/value/ObservableBooleanValue;)Ljavafx/beans/binding/BooleanBinding;
    .locals 7

    .prologue
    .line 4756
    move-object v0, p0

    .local v0, "op1":Ljavafx/beans/value/ObservableBooleanValue;
    move-object v1, p1

    .local v1, "op2":Ljavafx/beans/value/ObservableBooleanValue;
    move-object v2, v0

    if-eqz v2, :cond_0

    move-object v2, v1

    if-nez v2, :cond_1

    .line 4757
    :cond_0
    new-instance v2, Ljava/lang/NullPointerException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const-string v4, "Operands cannot be null."

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 4760
    :cond_1
    new-instance v2, Ljavafx/beans/binding/Bindings$54;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Ljavafx/beans/binding/Bindings$54;-><init>(Ljavafx/beans/value/ObservableBooleanValue;Ljavafx/beans/value/ObservableBooleanValue;)V

    move-object v0, v2

    .end local v0    # "op1":Ljavafx/beans/value/ObservableBooleanValue;
    return-object v0
.end method

.method public static notEqual(Ljavafx/beans/value/ObservableNumberValue;DD)Ljavafx/beans/binding/BooleanBinding;
    .locals 15

    .prologue
    .line 2867
    move-object v1, p0

    .local v1, "op1":Ljavafx/beans/value/ObservableNumberValue;
    move-wide/from16 v2, p1

    .local v2, "op2":D
    move-wide/from16 v4, p3

    .local v4, "epsilon":D
    move-object v6, v1

    move-wide v7, v2

    invoke-static {v7, v8}, Lcom/sun/javafx/binding/DoubleConstant;->valueOf(D)Lcom/sun/javafx/binding/DoubleConstant;

    move-result-object v7

    move-wide v8, v4

    const/4 v10, 0x1

    new-array v10, v10, [Ljavafx/beans/Observable;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    const/4 v12, 0x0

    move-object v13, v1

    aput-object v13, v11, v12

    invoke-static {v6, v7, v8, v9, v10}, Ljavafx/beans/binding/Bindings;->notEqual(Ljavafx/beans/value/ObservableNumberValue;Ljavafx/beans/value/ObservableNumberValue;D[Ljavafx/beans/Observable;)Ljavafx/beans/binding/BooleanBinding;

    move-result-object v6

    move-object v1, v6

    .end local v1    # "op1":Ljavafx/beans/value/ObservableNumberValue;
    return-object v1
.end method

.method public static notEqual(Ljavafx/beans/value/ObservableNumberValue;FD)Ljavafx/beans/binding/BooleanBinding;
    .locals 14

    .prologue
    .line 2917
    move-object v0, p0

    .local v0, "op1":Ljavafx/beans/value/ObservableNumberValue;
    move v1, p1

    .local v1, "op2":F
    move-wide/from16 v2, p2

    .local v2, "epsilon":D
    move-object v4, v0

    move v5, v1

    invoke-static {v5}, Lcom/sun/javafx/binding/FloatConstant;->valueOf(F)Lcom/sun/javafx/binding/FloatConstant;

    move-result-object v5

    move-wide v6, v2

    const/4 v8, 0x1

    new-array v8, v8, [Ljavafx/beans/Observable;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/4 v10, 0x0

    move-object v11, v0

    aput-object v11, v9, v10

    invoke-static {v4, v5, v6, v7, v8}, Ljavafx/beans/binding/Bindings;->notEqual(Ljavafx/beans/value/ObservableNumberValue;Ljavafx/beans/value/ObservableNumberValue;D[Ljavafx/beans/Observable;)Ljavafx/beans/binding/BooleanBinding;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "op1":Ljavafx/beans/value/ObservableNumberValue;
    return-object v0
.end method

.method public static notEqual(Ljavafx/beans/value/ObservableNumberValue;I)Ljavafx/beans/binding/BooleanBinding;
    .locals 11

    .prologue
    .line 3080
    move-object v0, p0

    .local v0, "op1":Ljavafx/beans/value/ObservableNumberValue;
    move v1, p1

    .local v1, "op2":I
    move-object v2, v0

    move v3, v1

    invoke-static {v3}, Lcom/sun/javafx/binding/IntegerConstant;->valueOf(I)Lcom/sun/javafx/binding/IntegerConstant;

    move-result-object v3

    const-wide/16 v4, 0x0

    const/4 v6, 0x1

    new-array v6, v6, [Ljavafx/beans/Observable;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x0

    move-object v9, v0

    aput-object v9, v7, v8

    invoke-static {v2, v3, v4, v5, v6}, Ljavafx/beans/binding/Bindings;->notEqual(Ljavafx/beans/value/ObservableNumberValue;Ljavafx/beans/value/ObservableNumberValue;D[Ljavafx/beans/Observable;)Ljavafx/beans/binding/BooleanBinding;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "op1":Ljavafx/beans/value/ObservableNumberValue;
    return-object v0
.end method

.method public static notEqual(Ljavafx/beans/value/ObservableNumberValue;ID)Ljavafx/beans/binding/BooleanBinding;
    .locals 14

    .prologue
    .line 3059
    move-object v0, p0

    .local v0, "op1":Ljavafx/beans/value/ObservableNumberValue;
    move v1, p1

    .local v1, "op2":I
    move-wide/from16 v2, p2

    .local v2, "epsilon":D
    move-object v4, v0

    move v5, v1

    invoke-static {v5}, Lcom/sun/javafx/binding/IntegerConstant;->valueOf(I)Lcom/sun/javafx/binding/IntegerConstant;

    move-result-object v5

    move-wide v6, v2

    const/4 v8, 0x1

    new-array v8, v8, [Ljavafx/beans/Observable;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/4 v10, 0x0

    move-object v11, v0

    aput-object v11, v9, v10

    invoke-static {v4, v5, v6, v7, v8}, Ljavafx/beans/binding/Bindings;->notEqual(Ljavafx/beans/value/ObservableNumberValue;Ljavafx/beans/value/ObservableNumberValue;D[Ljavafx/beans/Observable;)Ljavafx/beans/binding/BooleanBinding;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "op1":Ljavafx/beans/value/ObservableNumberValue;
    return-object v0
.end method

.method public static notEqual(Ljavafx/beans/value/ObservableNumberValue;J)Ljavafx/beans/binding/BooleanBinding;
    .locals 13

    .prologue
    .line 2988
    move-object v1, p0

    .local v1, "op1":Ljavafx/beans/value/ObservableNumberValue;
    move-wide v2, p1

    .local v2, "op2":J
    move-object v4, v1

    move-wide v5, v2

    invoke-static {v5, v6}, Lcom/sun/javafx/binding/LongConstant;->valueOf(J)Lcom/sun/javafx/binding/LongConstant;

    move-result-object v5

    const-wide/16 v6, 0x0

    const/4 v8, 0x1

    new-array v8, v8, [Ljavafx/beans/Observable;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/4 v10, 0x0

    move-object v11, v1

    aput-object v11, v9, v10

    invoke-static {v4, v5, v6, v7, v8}, Ljavafx/beans/binding/Bindings;->notEqual(Ljavafx/beans/value/ObservableNumberValue;Ljavafx/beans/value/ObservableNumberValue;D[Ljavafx/beans/Observable;)Ljavafx/beans/binding/BooleanBinding;

    move-result-object v4

    move-object v1, v4

    .end local v1    # "op1":Ljavafx/beans/value/ObservableNumberValue;
    return-object v1
.end method

.method public static notEqual(Ljavafx/beans/value/ObservableNumberValue;JD)Ljavafx/beans/binding/BooleanBinding;
    .locals 15

    .prologue
    .line 2967
    move-object v1, p0

    .local v1, "op1":Ljavafx/beans/value/ObservableNumberValue;
    move-wide/from16 v2, p1

    .local v2, "op2":J
    move-wide/from16 v4, p3

    .local v4, "epsilon":D
    move-object v6, v1

    move-wide v7, v2

    invoke-static {v7, v8}, Lcom/sun/javafx/binding/LongConstant;->valueOf(J)Lcom/sun/javafx/binding/LongConstant;

    move-result-object v7

    move-wide v8, v4

    const/4 v10, 0x1

    new-array v10, v10, [Ljavafx/beans/Observable;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    const/4 v12, 0x0

    move-object v13, v1

    aput-object v13, v11, v12

    invoke-static {v6, v7, v8, v9, v10}, Ljavafx/beans/binding/Bindings;->notEqual(Ljavafx/beans/value/ObservableNumberValue;Ljavafx/beans/value/ObservableNumberValue;D[Ljavafx/beans/Observable;)Ljavafx/beans/binding/BooleanBinding;

    move-result-object v6

    move-object v1, v6

    .end local v1    # "op1":Ljavafx/beans/value/ObservableNumberValue;
    return-object v1
.end method

.method public static notEqual(Ljavafx/beans/value/ObservableNumberValue;Ljavafx/beans/value/ObservableNumberValue;)Ljavafx/beans/binding/BooleanBinding;
    .locals 11

    .prologue
    .line 2842
    move-object v0, p0

    .local v0, "op1":Ljavafx/beans/value/ObservableNumberValue;
    move-object v1, p1

    .local v1, "op2":Ljavafx/beans/value/ObservableNumberValue;
    move-object v2, v0

    move-object v3, v1

    const-wide/16 v4, 0x0

    const/4 v6, 0x2

    new-array v6, v6, [Ljavafx/beans/Observable;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x0

    move-object v9, v0

    aput-object v9, v7, v8

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x1

    move-object v9, v1

    aput-object v9, v7, v8

    invoke-static {v2, v3, v4, v5, v6}, Ljavafx/beans/binding/Bindings;->notEqual(Ljavafx/beans/value/ObservableNumberValue;Ljavafx/beans/value/ObservableNumberValue;D[Ljavafx/beans/Observable;)Ljavafx/beans/binding/BooleanBinding;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "op1":Ljavafx/beans/value/ObservableNumberValue;
    return-object v0
.end method

.method public static notEqual(Ljavafx/beans/value/ObservableNumberValue;Ljavafx/beans/value/ObservableNumberValue;D)Ljavafx/beans/binding/BooleanBinding;
    .locals 14

    .prologue
    .line 2821
    move-object v0, p0

    .local v0, "op1":Ljavafx/beans/value/ObservableNumberValue;
    move-object v1, p1

    .local v1, "op2":Ljavafx/beans/value/ObservableNumberValue;
    move-wide/from16 v2, p2

    .local v2, "epsilon":D
    move-object v4, v0

    move-object v5, v1

    move-wide v6, v2

    const/4 v8, 0x2

    new-array v8, v8, [Ljavafx/beans/Observable;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/4 v10, 0x0

    move-object v11, v0

    aput-object v11, v9, v10

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/4 v10, 0x1

    move-object v11, v1

    aput-object v11, v9, v10

    invoke-static {v4, v5, v6, v7, v8}, Ljavafx/beans/binding/Bindings;->notEqual(Ljavafx/beans/value/ObservableNumberValue;Ljavafx/beans/value/ObservableNumberValue;D[Ljavafx/beans/Observable;)Ljavafx/beans/binding/BooleanBinding;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "op1":Ljavafx/beans/value/ObservableNumberValue;
    return-object v0
.end method

.method private static varargs notEqual(Ljavafx/beans/value/ObservableNumberValue;Ljavafx/beans/value/ObservableNumberValue;D[Ljavafx/beans/Observable;)Ljavafx/beans/binding/BooleanBinding;
    .locals 14

    .prologue
    .line 2694
    move-object v0, p0

    .local v0, "op1":Ljavafx/beans/value/ObservableNumberValue;
    move-object v1, p1

    .local v1, "op2":Ljavafx/beans/value/ObservableNumberValue;
    move-wide/from16 v2, p2

    .local v2, "epsilon":D
    move-object/from16 v4, p4

    .local v4, "dependencies":[Ljavafx/beans/Observable;
    move-object v5, v0

    if-eqz v5, :cond_0

    move-object v5, v1

    if-nez v5, :cond_1

    .line 2695
    :cond_0
    new-instance v5, Ljava/lang/NullPointerException;

    move-object v12, v5

    move-object v5, v12

    move-object v6, v12

    const-string v7, "Operands cannot be null."

    invoke-direct {v6, v7}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 2697
    :cond_1
    sget-boolean v5, Ljavafx/beans/binding/Bindings;->$assertionsDisabled:Z

    if-nez v5, :cond_3

    move-object v5, v4

    if-eqz v5, :cond_2

    move-object v5, v4

    array-length v5, v5

    if-gtz v5, :cond_3

    :cond_2
    new-instance v5, Ljava/lang/AssertionError;

    move-object v12, v5

    move-object v5, v12

    move-object v6, v12

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 2699
    :cond_3
    move-object v5, v0

    instance-of v5, v5, Ljavafx/beans/value/ObservableDoubleValue;

    if-nez v5, :cond_4

    move-object v5, v1

    instance-of v5, v5, Ljavafx/beans/value/ObservableDoubleValue;

    if-eqz v5, :cond_5

    .line 2700
    :cond_4
    new-instance v5, Ljavafx/beans/binding/Bindings$32;

    move-object v12, v5

    move-object v5, v12

    move-object v6, v12

    move-object v7, v4

    move-object v8, v0

    move-object v9, v1

    move-wide v10, v2

    invoke-direct/range {v6 .. v11}, Ljavafx/beans/binding/Bindings$32;-><init>([Ljavafx/beans/Observable;Ljavafx/beans/value/ObservableNumberValue;Ljavafx/beans/value/ObservableNumberValue;D)V

    move-object v0, v5

    .line 2772
    .end local v0    # "op1":Ljavafx/beans/value/ObservableNumberValue;
    :goto_0
    return-object v0

    .line 2723
    .restart local v0    # "op1":Ljavafx/beans/value/ObservableNumberValue;
    :cond_5
    move-object v5, v0

    instance-of v5, v5, Ljavafx/beans/value/ObservableFloatValue;

    if-nez v5, :cond_6

    move-object v5, v1

    instance-of v5, v5, Ljavafx/beans/value/ObservableFloatValue;

    if-eqz v5, :cond_7

    .line 2724
    :cond_6
    new-instance v5, Ljavafx/beans/binding/Bindings$33;

    move-object v12, v5

    move-object v5, v12

    move-object v6, v12

    move-object v7, v4

    move-object v8, v0

    move-object v9, v1

    move-wide v10, v2

    invoke-direct/range {v6 .. v11}, Ljavafx/beans/binding/Bindings$33;-><init>([Ljavafx/beans/Observable;Ljavafx/beans/value/ObservableNumberValue;Ljavafx/beans/value/ObservableNumberValue;D)V

    move-object v0, v5

    goto :goto_0

    .line 2747
    :cond_7
    move-object v5, v0

    instance-of v5, v5, Ljavafx/beans/value/ObservableLongValue;

    if-nez v5, :cond_8

    move-object v5, v1

    instance-of v5, v5, Ljavafx/beans/value/ObservableLongValue;

    if-eqz v5, :cond_9

    .line 2748
    :cond_8
    new-instance v5, Ljavafx/beans/binding/Bindings$34;

    move-object v12, v5

    move-object v5, v12

    move-object v6, v12

    move-object v7, v4

    move-object v8, v0

    move-object v9, v1

    move-wide v10, v2

    invoke-direct/range {v6 .. v11}, Ljavafx/beans/binding/Bindings$34;-><init>([Ljavafx/beans/Observable;Ljavafx/beans/value/ObservableNumberValue;Ljavafx/beans/value/ObservableNumberValue;D)V

    move-object v0, v5

    goto :goto_0

    .line 2772
    :cond_9
    new-instance v5, Ljavafx/beans/binding/Bindings$35;

    move-object v12, v5

    move-object v5, v12

    move-object v6, v12

    move-object v7, v4

    move-object v8, v0

    move-object v9, v1

    move-wide v10, v2

    invoke-direct/range {v6 .. v11}, Ljavafx/beans/binding/Bindings$35;-><init>([Ljavafx/beans/Observable;Ljavafx/beans/value/ObservableNumberValue;Ljavafx/beans/value/ObservableNumberValue;D)V

    move-object v0, v5

    goto :goto_0
.end method

.method public static notEqual(Ljavafx/beans/value/ObservableObjectValue;Ljava/lang/Object;)Ljavafx/beans/binding/BooleanBinding;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/value/ObservableObjectValue",
            "<*>;",
            "Ljava/lang/Object;",
            ")",
            "Ljavafx/beans/binding/BooleanBinding;"
        }
    .end annotation

    .prologue
    .line 5848
    move-object v0, p0

    .local v0, "op1":Ljavafx/beans/value/ObservableObjectValue;, "Ljavafx/beans/value/ObservableObjectValue<*>;"
    move-object v1, p1

    .local v1, "op2":Ljava/lang/Object;
    move-object v2, v0

    move-object v3, v1

    invoke-static {v3}, Lcom/sun/javafx/binding/ObjectConstant;->valueOf(Ljava/lang/Object;)Lcom/sun/javafx/binding/ObjectConstant;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljavafx/beans/Observable;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    move-object v7, v0

    aput-object v7, v5, v6

    invoke-static {v2, v3, v4}, Ljavafx/beans/binding/Bindings;->notEqual(Ljavafx/beans/value/ObservableObjectValue;Ljavafx/beans/value/ObservableObjectValue;[Ljavafx/beans/Observable;)Ljavafx/beans/binding/BooleanBinding;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "op1":Ljavafx/beans/value/ObservableObjectValue;, "Ljavafx/beans/value/ObservableObjectValue<*>;"
    return-object v0
.end method

.method public static notEqual(Ljavafx/beans/value/ObservableObjectValue;Ljavafx/beans/value/ObservableObjectValue;)Ljavafx/beans/binding/BooleanBinding;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/value/ObservableObjectValue",
            "<*>;",
            "Ljavafx/beans/value/ObservableObjectValue",
            "<*>;)",
            "Ljavafx/beans/binding/BooleanBinding;"
        }
    .end annotation

    .prologue
    .line 5831
    move-object v0, p0

    .local v0, "op1":Ljavafx/beans/value/ObservableObjectValue;, "Ljavafx/beans/value/ObservableObjectValue<*>;"
    move-object v1, p1

    .local v1, "op2":Ljavafx/beans/value/ObservableObjectValue;, "Ljavafx/beans/value/ObservableObjectValue<*>;"
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x2

    new-array v4, v4, [Ljavafx/beans/Observable;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    move-object v7, v0

    aput-object v7, v5, v6

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x1

    move-object v7, v1

    aput-object v7, v5, v6

    invoke-static {v2, v3, v4}, Ljavafx/beans/binding/Bindings;->notEqual(Ljavafx/beans/value/ObservableObjectValue;Ljavafx/beans/value/ObservableObjectValue;[Ljavafx/beans/Observable;)Ljavafx/beans/binding/BooleanBinding;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "op1":Ljavafx/beans/value/ObservableObjectValue;, "Ljavafx/beans/value/ObservableObjectValue<*>;"
    return-object v0
.end method

.method private static varargs notEqual(Ljavafx/beans/value/ObservableObjectValue;Ljavafx/beans/value/ObservableObjectValue;[Ljavafx/beans/Observable;)Ljavafx/beans/binding/BooleanBinding;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/value/ObservableObjectValue",
            "<*>;",
            "Ljavafx/beans/value/ObservableObjectValue",
            "<*>;[",
            "Ljavafx/beans/Observable;",
            ")",
            "Ljavafx/beans/binding/BooleanBinding;"
        }
    .end annotation

    .prologue
    .line 5785
    move-object v0, p0

    .local v0, "op1":Ljavafx/beans/value/ObservableObjectValue;, "Ljavafx/beans/value/ObservableObjectValue<*>;"
    move-object v1, p1

    .local v1, "op2":Ljavafx/beans/value/ObservableObjectValue;, "Ljavafx/beans/value/ObservableObjectValue<*>;"
    move-object v2, p2

    .local v2, "dependencies":[Ljavafx/beans/Observable;
    move-object v3, v0

    if-eqz v3, :cond_0

    move-object v3, v1

    if-nez v3, :cond_1

    .line 5786
    :cond_0
    new-instance v3, Ljava/lang/NullPointerException;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    const-string v5, "Operands cannot be null."

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 5788
    :cond_1
    sget-boolean v3, Ljavafx/beans/binding/Bindings;->$assertionsDisabled:Z

    if-nez v3, :cond_3

    move-object v3, v2

    if-eqz v3, :cond_2

    move-object v3, v2

    array-length v3, v3

    if-gtz v3, :cond_3

    :cond_2
    new-instance v3, Ljava/lang/AssertionError;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 5790
    :cond_3
    new-instance v3, Ljavafx/beans/binding/Bindings$65;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v2

    move-object v6, v0

    move-object v7, v1

    invoke-direct {v4, v5, v6, v7}, Ljavafx/beans/binding/Bindings$65;-><init>([Ljavafx/beans/Observable;Ljavafx/beans/value/ObservableObjectValue;Ljavafx/beans/value/ObservableObjectValue;)V

    move-object v0, v3

    .end local v0    # "op1":Ljavafx/beans/value/ObservableObjectValue;, "Ljavafx/beans/value/ObservableObjectValue<*>;"
    return-object v0
.end method

.method public static notEqual(Ljavafx/beans/value/ObservableStringValue;Ljava/lang/String;)Ljavafx/beans/binding/BooleanBinding;
    .locals 9

    .prologue
    .line 5043
    move-object v0, p0

    .local v0, "op1":Ljavafx/beans/value/ObservableStringValue;
    move-object v1, p1

    .local v1, "op2":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    invoke-static {v3}, Lcom/sun/javafx/binding/StringConstant;->valueOf(Ljava/lang/String;)Lcom/sun/javafx/binding/StringConstant;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljavafx/beans/Observable;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    move-object v7, v0

    aput-object v7, v5, v6

    invoke-static {v2, v3, v4}, Ljavafx/beans/binding/Bindings;->notEqual(Ljavafx/beans/value/ObservableStringValue;Ljavafx/beans/value/ObservableStringValue;[Ljavafx/beans/Observable;)Ljavafx/beans/binding/BooleanBinding;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "op1":Ljavafx/beans/value/ObservableStringValue;
    return-object v0
.end method

.method public static notEqual(Ljavafx/beans/value/ObservableStringValue;Ljavafx/beans/value/ObservableStringValue;)Ljavafx/beans/binding/BooleanBinding;
    .locals 9

    .prologue
    .line 5023
    move-object v0, p0

    .local v0, "op1":Ljavafx/beans/value/ObservableStringValue;
    move-object v1, p1

    .local v1, "op2":Ljavafx/beans/value/ObservableStringValue;
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x2

    new-array v4, v4, [Ljavafx/beans/Observable;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    move-object v7, v0

    aput-object v7, v5, v6

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x1

    move-object v7, v1

    aput-object v7, v5, v6

    invoke-static {v2, v3, v4}, Ljavafx/beans/binding/Bindings;->notEqual(Ljavafx/beans/value/ObservableStringValue;Ljavafx/beans/value/ObservableStringValue;[Ljavafx/beans/Observable;)Ljavafx/beans/binding/BooleanBinding;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "op1":Ljavafx/beans/value/ObservableStringValue;
    return-object v0
.end method

.method private static varargs notEqual(Ljavafx/beans/value/ObservableStringValue;Ljavafx/beans/value/ObservableStringValue;[Ljavafx/beans/Observable;)Ljavafx/beans/binding/BooleanBinding;
    .locals 9

    .prologue
    .line 4974
    move-object v0, p0

    .local v0, "op1":Ljavafx/beans/value/ObservableStringValue;
    move-object v1, p1

    .local v1, "op2":Ljavafx/beans/value/ObservableStringValue;
    move-object v2, p2

    .local v2, "dependencies":[Ljavafx/beans/Observable;
    move-object v3, v0

    if-eqz v3, :cond_0

    move-object v3, v1

    if-nez v3, :cond_1

    .line 4975
    :cond_0
    new-instance v3, Ljava/lang/NullPointerException;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    const-string v5, "Operands cannot be null."

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 4977
    :cond_1
    sget-boolean v3, Ljavafx/beans/binding/Bindings;->$assertionsDisabled:Z

    if-nez v3, :cond_3

    move-object v3, v2

    if-eqz v3, :cond_2

    move-object v3, v2

    array-length v3, v3

    if-gtz v3, :cond_3

    :cond_2
    new-instance v3, Ljava/lang/AssertionError;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 4979
    :cond_3
    new-instance v3, Ljavafx/beans/binding/Bindings$56;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v2

    move-object v6, v0

    move-object v7, v1

    invoke-direct {v4, v5, v6, v7}, Ljavafx/beans/binding/Bindings$56;-><init>([Ljavafx/beans/Observable;Ljavafx/beans/value/ObservableStringValue;Ljavafx/beans/value/ObservableStringValue;)V

    move-object v0, v3

    .end local v0    # "op1":Ljavafx/beans/value/ObservableStringValue;
    return-object v0
.end method

.method public static notEqualIgnoreCase(Ljava/lang/String;Ljavafx/beans/value/ObservableStringValue;)Ljavafx/beans/binding/BooleanBinding;
    .locals 9

    .prologue
    .line 5250
    move-object v0, p0

    .local v0, "op1":Ljava/lang/String;
    move-object v1, p1

    .local v1, "op2":Ljavafx/beans/value/ObservableStringValue;
    move-object v2, v0

    invoke-static {v2}, Lcom/sun/javafx/binding/StringConstant;->valueOf(Ljava/lang/String;)Lcom/sun/javafx/binding/StringConstant;

    move-result-object v2

    move-object v3, v1

    const/4 v4, 0x1

    new-array v4, v4, [Ljavafx/beans/Observable;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    move-object v7, v1

    aput-object v7, v5, v6

    invoke-static {v2, v3, v4}, Ljavafx/beans/binding/Bindings;->notEqualIgnoreCase(Ljavafx/beans/value/ObservableStringValue;Ljavafx/beans/value/ObservableStringValue;[Ljavafx/beans/Observable;)Ljavafx/beans/binding/BooleanBinding;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "op1":Ljava/lang/String;
    return-object v0
.end method

.method public static notEqualIgnoreCase(Ljavafx/beans/value/ObservableStringValue;Ljava/lang/String;)Ljavafx/beans/binding/BooleanBinding;
    .locals 9

    .prologue
    .line 5230
    move-object v0, p0

    .local v0, "op1":Ljavafx/beans/value/ObservableStringValue;
    move-object v1, p1

    .local v1, "op2":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    invoke-static {v3}, Lcom/sun/javafx/binding/StringConstant;->valueOf(Ljava/lang/String;)Lcom/sun/javafx/binding/StringConstant;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljavafx/beans/Observable;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    move-object v7, v0

    aput-object v7, v5, v6

    invoke-static {v2, v3, v4}, Ljavafx/beans/binding/Bindings;->notEqualIgnoreCase(Ljavafx/beans/value/ObservableStringValue;Ljavafx/beans/value/ObservableStringValue;[Ljavafx/beans/Observable;)Ljavafx/beans/binding/BooleanBinding;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "op1":Ljavafx/beans/value/ObservableStringValue;
    return-object v0
.end method

.method public static notEqualIgnoreCase(Ljavafx/beans/value/ObservableStringValue;Ljavafx/beans/value/ObservableStringValue;)Ljavafx/beans/binding/BooleanBinding;
    .locals 9

    .prologue
    .line 5210
    move-object v0, p0

    .local v0, "op1":Ljavafx/beans/value/ObservableStringValue;
    move-object v1, p1

    .local v1, "op2":Ljavafx/beans/value/ObservableStringValue;
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x2

    new-array v4, v4, [Ljavafx/beans/Observable;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    move-object v7, v0

    aput-object v7, v5, v6

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x1

    move-object v7, v1

    aput-object v7, v5, v6

    invoke-static {v2, v3, v4}, Ljavafx/beans/binding/Bindings;->notEqualIgnoreCase(Ljavafx/beans/value/ObservableStringValue;Ljavafx/beans/value/ObservableStringValue;[Ljavafx/beans/Observable;)Ljavafx/beans/binding/BooleanBinding;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "op1":Ljavafx/beans/value/ObservableStringValue;
    return-object v0
.end method

.method private static varargs notEqualIgnoreCase(Ljavafx/beans/value/ObservableStringValue;Ljavafx/beans/value/ObservableStringValue;[Ljavafx/beans/Observable;)Ljavafx/beans/binding/BooleanBinding;
    .locals 9

    .prologue
    .line 5160
    move-object v0, p0

    .local v0, "op1":Ljavafx/beans/value/ObservableStringValue;
    move-object v1, p1

    .local v1, "op2":Ljavafx/beans/value/ObservableStringValue;
    move-object v2, p2

    .local v2, "dependencies":[Ljavafx/beans/Observable;
    move-object v3, v0

    if-eqz v3, :cond_0

    move-object v3, v1

    if-nez v3, :cond_1

    .line 5161
    :cond_0
    new-instance v3, Ljava/lang/NullPointerException;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    const-string v5, "Operands cannot be null."

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 5163
    :cond_1
    sget-boolean v3, Ljavafx/beans/binding/Bindings;->$assertionsDisabled:Z

    if-nez v3, :cond_3

    move-object v3, v2

    if-eqz v3, :cond_2

    move-object v3, v2

    array-length v3, v3

    if-gtz v3, :cond_3

    :cond_2
    new-instance v3, Ljava/lang/AssertionError;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 5165
    :cond_3
    new-instance v3, Ljavafx/beans/binding/Bindings$58;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v2

    move-object v6, v0

    move-object v7, v1

    invoke-direct {v4, v5, v6, v7}, Ljavafx/beans/binding/Bindings$58;-><init>([Ljavafx/beans/Observable;Ljavafx/beans/value/ObservableStringValue;Ljavafx/beans/value/ObservableStringValue;)V

    move-object v0, v3

    .end local v0    # "op1":Ljavafx/beans/value/ObservableStringValue;
    return-object v0
.end method

.method public static or(Ljavafx/beans/value/ObservableBooleanValue;Ljavafx/beans/value/ObservableBooleanValue;)Ljavafx/beans/binding/BooleanBinding;
    .locals 7

    .prologue
    .line 4657
    move-object v0, p0

    .local v0, "op1":Ljavafx/beans/value/ObservableBooleanValue;
    move-object v1, p1

    .local v1, "op2":Ljavafx/beans/value/ObservableBooleanValue;
    move-object v2, v0

    if-eqz v2, :cond_0

    move-object v2, v1

    if-nez v2, :cond_1

    .line 4658
    :cond_0
    new-instance v2, Ljava/lang/NullPointerException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const-string v4, "Operands cannot be null."

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 4661
    :cond_1
    new-instance v2, Ljavafx/beans/binding/Bindings$BooleanOrBinding;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Ljavafx/beans/binding/Bindings$BooleanOrBinding;-><init>(Ljavafx/beans/value/ObservableBooleanValue;Ljavafx/beans/value/ObservableBooleanValue;)V

    move-object v0, v2

    .end local v0    # "op1":Ljavafx/beans/value/ObservableBooleanValue;
    return-object v0
.end method

.method public static varargs select(Ljava/lang/Object;[Ljava/lang/String;)Ljavafx/beans/binding/ObjectBinding;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljavafx/beans/binding/ObjectBinding",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 567
    move-object v0, p0

    .local v0, "root":Ljava/lang/Object;
    move-object v1, p1

    .local v1, "steps":[Ljava/lang/String;
    new-instance v2, Lcom/sun/javafx/binding/SelectBinding$AsObject;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Lcom/sun/javafx/binding/SelectBinding$AsObject;-><init>(Ljava/lang/Object;[Ljava/lang/String;)V

    move-object v0, v2

    .end local v0    # "root":Ljava/lang/Object;
    return-object v0
.end method

.method public static varargs select(Ljavafx/beans/value/ObservableValue;[Ljava/lang/String;)Ljavafx/beans/binding/ObjectBinding;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljavafx/beans/value/ObservableValue",
            "<*>;[",
            "Ljava/lang/String;",
            ")",
            "Ljavafx/beans/binding/ObjectBinding",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 424
    move-object v0, p0

    .local v0, "root":Ljavafx/beans/value/ObservableValue;, "Ljavafx/beans/value/ObservableValue<*>;"
    move-object v1, p1

    .local v1, "steps":[Ljava/lang/String;
    new-instance v2, Lcom/sun/javafx/binding/SelectBinding$AsObject;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Lcom/sun/javafx/binding/SelectBinding$AsObject;-><init>(Ljavafx/beans/value/ObservableValue;[Ljava/lang/String;)V

    move-object v0, v2

    .end local v0    # "root":Ljavafx/beans/value/ObservableValue;, "Ljavafx/beans/value/ObservableValue<*>;"
    return-object v0
.end method

.method public static varargs selectBoolean(Ljava/lang/Object;[Ljava/lang/String;)Ljavafx/beans/binding/BooleanBinding;
    .locals 7

    .prologue
    .line 682
    move-object v0, p0

    .local v0, "root":Ljava/lang/Object;
    move-object v1, p1

    .local v1, "steps":[Ljava/lang/String;
    new-instance v2, Lcom/sun/javafx/binding/SelectBinding$AsBoolean;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Lcom/sun/javafx/binding/SelectBinding$AsBoolean;-><init>(Ljava/lang/Object;[Ljava/lang/String;)V

    move-object v0, v2

    .end local v0    # "root":Ljava/lang/Object;
    return-object v0
.end method

.method public static varargs selectBoolean(Ljavafx/beans/value/ObservableValue;[Ljava/lang/String;)Ljavafx/beans/binding/BooleanBinding;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/value/ObservableValue",
            "<*>;[",
            "Ljava/lang/String;",
            ")",
            "Ljavafx/beans/binding/BooleanBinding;"
        }
    .end annotation

    .prologue
    .line 524
    move-object v0, p0

    .local v0, "root":Ljavafx/beans/value/ObservableValue;, "Ljavafx/beans/value/ObservableValue<*>;"
    move-object v1, p1

    .local v1, "steps":[Ljava/lang/String;
    new-instance v2, Lcom/sun/javafx/binding/SelectBinding$AsBoolean;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Lcom/sun/javafx/binding/SelectBinding$AsBoolean;-><init>(Ljavafx/beans/value/ObservableValue;[Ljava/lang/String;)V

    move-object v0, v2

    .end local v0    # "root":Ljavafx/beans/value/ObservableValue;, "Ljavafx/beans/value/ObservableValue<*>;"
    return-object v0
.end method

.method public static varargs selectDouble(Ljava/lang/Object;[Ljava/lang/String;)Ljavafx/beans/binding/DoubleBinding;
    .locals 7

    .prologue
    .line 590
    move-object v0, p0

    .local v0, "root":Ljava/lang/Object;
    move-object v1, p1

    .local v1, "steps":[Ljava/lang/String;
    new-instance v2, Lcom/sun/javafx/binding/SelectBinding$AsDouble;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Lcom/sun/javafx/binding/SelectBinding$AsDouble;-><init>(Ljava/lang/Object;[Ljava/lang/String;)V

    move-object v0, v2

    .end local v0    # "root":Ljava/lang/Object;
    return-object v0
.end method

.method public static varargs selectDouble(Ljavafx/beans/value/ObservableValue;[Ljava/lang/String;)Ljavafx/beans/binding/DoubleBinding;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/value/ObservableValue",
            "<*>;[",
            "Ljava/lang/String;",
            ")",
            "Ljavafx/beans/binding/DoubleBinding;"
        }
    .end annotation

    .prologue
    .line 444
    move-object v0, p0

    .local v0, "root":Ljavafx/beans/value/ObservableValue;, "Ljavafx/beans/value/ObservableValue<*>;"
    move-object v1, p1

    .local v1, "steps":[Ljava/lang/String;
    new-instance v2, Lcom/sun/javafx/binding/SelectBinding$AsDouble;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Lcom/sun/javafx/binding/SelectBinding$AsDouble;-><init>(Ljavafx/beans/value/ObservableValue;[Ljava/lang/String;)V

    move-object v0, v2

    .end local v0    # "root":Ljavafx/beans/value/ObservableValue;, "Ljavafx/beans/value/ObservableValue<*>;"
    return-object v0
.end method

.method public static varargs selectFloat(Ljava/lang/Object;[Ljava/lang/String;)Ljavafx/beans/binding/FloatBinding;
    .locals 7

    .prologue
    .line 613
    move-object v0, p0

    .local v0, "root":Ljava/lang/Object;
    move-object v1, p1

    .local v1, "steps":[Ljava/lang/String;
    new-instance v2, Lcom/sun/javafx/binding/SelectBinding$AsFloat;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Lcom/sun/javafx/binding/SelectBinding$AsFloat;-><init>(Ljava/lang/Object;[Ljava/lang/String;)V

    move-object v0, v2

    .end local v0    # "root":Ljava/lang/Object;
    return-object v0
.end method

.method public static varargs selectFloat(Ljavafx/beans/value/ObservableValue;[Ljava/lang/String;)Ljavafx/beans/binding/FloatBinding;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/value/ObservableValue",
            "<*>;[",
            "Ljava/lang/String;",
            ")",
            "Ljavafx/beans/binding/FloatBinding;"
        }
    .end annotation

    .prologue
    .line 464
    move-object v0, p0

    .local v0, "root":Ljavafx/beans/value/ObservableValue;, "Ljavafx/beans/value/ObservableValue<*>;"
    move-object v1, p1

    .local v1, "steps":[Ljava/lang/String;
    new-instance v2, Lcom/sun/javafx/binding/SelectBinding$AsFloat;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Lcom/sun/javafx/binding/SelectBinding$AsFloat;-><init>(Ljavafx/beans/value/ObservableValue;[Ljava/lang/String;)V

    move-object v0, v2

    .end local v0    # "root":Ljavafx/beans/value/ObservableValue;, "Ljavafx/beans/value/ObservableValue<*>;"
    return-object v0
.end method

.method public static varargs selectInteger(Ljava/lang/Object;[Ljava/lang/String;)Ljavafx/beans/binding/IntegerBinding;
    .locals 7

    .prologue
    .line 636
    move-object v0, p0

    .local v0, "root":Ljava/lang/Object;
    move-object v1, p1

    .local v1, "steps":[Ljava/lang/String;
    new-instance v2, Lcom/sun/javafx/binding/SelectBinding$AsInteger;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Lcom/sun/javafx/binding/SelectBinding$AsInteger;-><init>(Ljava/lang/Object;[Ljava/lang/String;)V

    move-object v0, v2

    .end local v0    # "root":Ljava/lang/Object;
    return-object v0
.end method

.method public static varargs selectInteger(Ljavafx/beans/value/ObservableValue;[Ljava/lang/String;)Ljavafx/beans/binding/IntegerBinding;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/value/ObservableValue",
            "<*>;[",
            "Ljava/lang/String;",
            ")",
            "Ljavafx/beans/binding/IntegerBinding;"
        }
    .end annotation

    .prologue
    .line 484
    move-object v0, p0

    .local v0, "root":Ljavafx/beans/value/ObservableValue;, "Ljavafx/beans/value/ObservableValue<*>;"
    move-object v1, p1

    .local v1, "steps":[Ljava/lang/String;
    new-instance v2, Lcom/sun/javafx/binding/SelectBinding$AsInteger;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Lcom/sun/javafx/binding/SelectBinding$AsInteger;-><init>(Ljavafx/beans/value/ObservableValue;[Ljava/lang/String;)V

    move-object v0, v2

    .end local v0    # "root":Ljavafx/beans/value/ObservableValue;, "Ljavafx/beans/value/ObservableValue<*>;"
    return-object v0
.end method

.method public static varargs selectLong(Ljava/lang/Object;[Ljava/lang/String;)Ljavafx/beans/binding/LongBinding;
    .locals 7

    .prologue
    .line 659
    move-object v0, p0

    .local v0, "root":Ljava/lang/Object;
    move-object v1, p1

    .local v1, "steps":[Ljava/lang/String;
    new-instance v2, Lcom/sun/javafx/binding/SelectBinding$AsLong;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Lcom/sun/javafx/binding/SelectBinding$AsLong;-><init>(Ljava/lang/Object;[Ljava/lang/String;)V

    move-object v0, v2

    .end local v0    # "root":Ljava/lang/Object;
    return-object v0
.end method

.method public static varargs selectLong(Ljavafx/beans/value/ObservableValue;[Ljava/lang/String;)Ljavafx/beans/binding/LongBinding;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/value/ObservableValue",
            "<*>;[",
            "Ljava/lang/String;",
            ")",
            "Ljavafx/beans/binding/LongBinding;"
        }
    .end annotation

    .prologue
    .line 504
    move-object v0, p0

    .local v0, "root":Ljavafx/beans/value/ObservableValue;, "Ljavafx/beans/value/ObservableValue<*>;"
    move-object v1, p1

    .local v1, "steps":[Ljava/lang/String;
    new-instance v2, Lcom/sun/javafx/binding/SelectBinding$AsLong;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Lcom/sun/javafx/binding/SelectBinding$AsLong;-><init>(Ljavafx/beans/value/ObservableValue;[Ljava/lang/String;)V

    move-object v0, v2

    .end local v0    # "root":Ljavafx/beans/value/ObservableValue;, "Ljavafx/beans/value/ObservableValue<*>;"
    return-object v0
.end method

.method public static varargs selectString(Ljava/lang/Object;[Ljava/lang/String;)Ljavafx/beans/binding/StringBinding;
    .locals 7

    .prologue
    .line 705
    move-object v0, p0

    .local v0, "root":Ljava/lang/Object;
    move-object v1, p1

    .local v1, "steps":[Ljava/lang/String;
    new-instance v2, Lcom/sun/javafx/binding/SelectBinding$AsString;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Lcom/sun/javafx/binding/SelectBinding$AsString;-><init>(Ljava/lang/Object;[Ljava/lang/String;)V

    move-object v0, v2

    .end local v0    # "root":Ljava/lang/Object;
    return-object v0
.end method

.method public static varargs selectString(Ljavafx/beans/value/ObservableValue;[Ljava/lang/String;)Ljavafx/beans/binding/StringBinding;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/value/ObservableValue",
            "<*>;[",
            "Ljava/lang/String;",
            ")",
            "Ljavafx/beans/binding/StringBinding;"
        }
    .end annotation

    .prologue
    .line 544
    move-object v0, p0

    .local v0, "root":Ljavafx/beans/value/ObservableValue;, "Ljavafx/beans/value/ObservableValue<*>;"
    move-object v1, p1

    .local v1, "steps":[Ljava/lang/String;
    new-instance v2, Lcom/sun/javafx/binding/SelectBinding$AsString;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Lcom/sun/javafx/binding/SelectBinding$AsString;-><init>(Ljavafx/beans/value/ObservableValue;[Ljava/lang/String;)V

    move-object v0, v2

    .end local v0    # "root":Ljavafx/beans/value/ObservableValue;, "Ljavafx/beans/value/ObservableValue<*>;"
    return-object v0
.end method

.method public static size(Ljavafx/collections/ObservableArray;)Ljavafx/beans/binding/IntegerBinding;
    .locals 5

    .prologue
    .line 7008
    move-object v0, p0

    .local v0, "op":Ljavafx/collections/ObservableArray;
    move-object v1, v0

    if-nez v1, :cond_0

    .line 7009
    new-instance v1, Ljava/lang/NullPointerException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string v3, "Array cannot be null."

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 7012
    :cond_0
    new-instance v1, Ljavafx/beans/binding/Bindings$88;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Ljavafx/beans/binding/Bindings$88;-><init>(Ljavafx/collections/ObservableArray;)V

    move-object v0, v1

    .end local v0    # "op":Ljavafx/collections/ObservableArray;
    return-object v0
.end method

.method public static size(Ljavafx/collections/ObservableList;)Ljavafx/beans/binding/IntegerBinding;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljavafx/collections/ObservableList",
            "<TE;>;)",
            "Ljavafx/beans/binding/IntegerBinding;"
        }
    .end annotation

    .prologue
    .line 5962
    move-object v0, p0

    .local v0, "op":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<TE;>;"
    move-object v1, v0

    if-nez v1, :cond_0

    .line 5963
    new-instance v1, Ljava/lang/NullPointerException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string v3, "List cannot be null."

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 5966
    :cond_0
    new-instance v1, Ljavafx/beans/binding/Bindings$68;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Ljavafx/beans/binding/Bindings$68;-><init>(Ljavafx/collections/ObservableList;)V

    move-object v0, v1

    .end local v0    # "op":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<TE;>;"
    return-object v0
.end method

.method public static size(Ljavafx/collections/ObservableMap;)Ljavafx/beans/binding/IntegerBinding;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljavafx/collections/ObservableMap",
            "<TK;TV;>;)",
            "Ljavafx/beans/binding/IntegerBinding;"
        }
    .end annotation

    .prologue
    .line 7267
    move-object v0, p0

    .local v0, "op":Ljavafx/collections/ObservableMap;, "Ljavafx/collections/ObservableMap<TK;TV;>;"
    move-object v1, v0

    if-nez v1, :cond_0

    .line 7268
    new-instance v1, Ljava/lang/NullPointerException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string v3, "Map cannot be null."

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 7271
    :cond_0
    new-instance v1, Ljavafx/beans/binding/Bindings$93;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Ljavafx/beans/binding/Bindings$93;-><init>(Ljavafx/collections/ObservableMap;)V

    move-object v0, v1

    .end local v0    # "op":Ljavafx/collections/ObservableMap;, "Ljavafx/collections/ObservableMap<TK;TV;>;"
    return-object v0
.end method

.method public static size(Ljavafx/collections/ObservableSet;)Ljavafx/beans/binding/IntegerBinding;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljavafx/collections/ObservableSet",
            "<TE;>;)",
            "Ljavafx/beans/binding/IntegerBinding;"
        }
    .end annotation

    .prologue
    .line 6887
    move-object v0, p0

    .local v0, "op":Ljavafx/collections/ObservableSet;, "Ljavafx/collections/ObservableSet<TE;>;"
    move-object v1, v0

    if-nez v1, :cond_0

    .line 6888
    new-instance v1, Ljava/lang/NullPointerException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string v3, "Set cannot be null."

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 6891
    :cond_0
    new-instance v1, Ljavafx/beans/binding/Bindings$85;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Ljavafx/beans/binding/Bindings$85;-><init>(Ljavafx/collections/ObservableSet;)V

    move-object v0, v1

    .end local v0    # "op":Ljavafx/collections/ObservableSet;, "Ljavafx/collections/ObservableSet<TE;>;"
    return-object v0
.end method

.method public static stringValueAt(Ljavafx/collections/ObservableList;I)Ljavafx/beans/binding/StringBinding;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/ObservableList",
            "<",
            "Ljava/lang/String;",
            ">;I)",
            "Ljavafx/beans/binding/StringBinding;"
        }
    .end annotation

    .prologue
    .line 6777
    move-object v0, p0

    .local v0, "op":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<Ljava/lang/String;>;"
    move v1, p1

    .local v1, "index":I
    move-object v2, v0

    if-nez v2, :cond_0

    .line 6778
    new-instance v2, Ljava/lang/NullPointerException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const-string v4, "List cannot be null."

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 6780
    :cond_0
    move v2, v1

    if-gez v2, :cond_1

    .line 6781
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const-string v4, "Index cannot be negative"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 6784
    :cond_1
    new-instance v2, Ljavafx/beans/binding/Bindings$83;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    move v5, v1

    invoke-direct {v3, v4, v5}, Ljavafx/beans/binding/Bindings$83;-><init>(Ljavafx/collections/ObservableList;I)V

    move-object v0, v2

    .end local v0    # "op":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<Ljava/lang/String;>;"
    return-object v0
.end method

.method public static stringValueAt(Ljavafx/collections/ObservableList;Ljavafx/beans/value/ObservableIntegerValue;)Ljavafx/beans/binding/StringBinding;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/ObservableList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljavafx/beans/value/ObservableIntegerValue;",
            ")",
            "Ljavafx/beans/binding/StringBinding;"
        }
    .end annotation

    .prologue
    .line 6824
    move-object v0, p0

    .local v0, "op":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<Ljava/lang/String;>;"
    move-object v1, p1

    .local v1, "index":Ljavafx/beans/value/ObservableIntegerValue;
    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Ljavafx/beans/binding/Bindings;->stringValueAt(Ljavafx/collections/ObservableList;Ljavafx/beans/value/ObservableNumberValue;)Ljavafx/beans/binding/StringBinding;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "op":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<Ljava/lang/String;>;"
    return-object v0
.end method

.method public static stringValueAt(Ljavafx/collections/ObservableList;Ljavafx/beans/value/ObservableNumberValue;)Ljavafx/beans/binding/StringBinding;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/ObservableList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljavafx/beans/value/ObservableNumberValue;",
            ")",
            "Ljavafx/beans/binding/StringBinding;"
        }
    .end annotation

    .prologue
    .line 6839
    move-object v0, p0

    .local v0, "op":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<Ljava/lang/String;>;"
    move-object v1, p1

    .local v1, "index":Ljavafx/beans/value/ObservableNumberValue;
    move-object v2, v0

    if-eqz v2, :cond_0

    move-object v2, v1

    if-nez v2, :cond_1

    .line 6840
    :cond_0
    new-instance v2, Ljava/lang/NullPointerException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const-string v4, "Operands cannot be null."

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 6843
    :cond_1
    new-instance v2, Ljavafx/beans/binding/Bindings$84;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Ljavafx/beans/binding/Bindings$84;-><init>(Ljavafx/collections/ObservableList;Ljavafx/beans/value/ObservableNumberValue;)V

    move-object v0, v2

    .end local v0    # "op":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<Ljava/lang/String;>;"
    return-object v0
.end method

.method public static stringValueAt(Ljavafx/collections/ObservableMap;Ljava/lang/Object;)Ljavafx/beans/binding/StringBinding;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljavafx/collections/ObservableMap",
            "<TK;",
            "Ljava/lang/String;",
            ">;TK;)",
            "Ljavafx/beans/binding/StringBinding;"
        }
    .end annotation

    .prologue
    .line 8027
    move-object v0, p0

    .local v0, "op":Ljavafx/collections/ObservableMap;, "Ljavafx/collections/ObservableMap<TK;Ljava/lang/String;>;"
    move-object v1, p1

    .local v1, "key":Ljava/lang/Object;, "TK;"
    move-object v2, v0

    if-nez v2, :cond_0

    .line 8028
    new-instance v2, Ljava/lang/NullPointerException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const-string v4, "Map cannot be null."

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 8031
    :cond_0
    new-instance v2, Ljavafx/beans/binding/Bindings$108;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Ljavafx/beans/binding/Bindings$108;-><init>(Ljavafx/collections/ObservableMap;Ljava/lang/Object;)V

    move-object v0, v2

    .end local v0    # "op":Ljavafx/collections/ObservableMap;, "Ljavafx/collections/ObservableMap<TK;Ljava/lang/String;>;"
    return-object v0
.end method

.method public static stringValueAt(Ljavafx/collections/ObservableMap;Ljavafx/beans/value/ObservableValue;)Ljavafx/beans/binding/StringBinding;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljavafx/collections/ObservableMap",
            "<TK;",
            "Ljava/lang/String;",
            ">;",
            "Ljavafx/beans/value/ObservableValue",
            "<+TK;>;)",
            "Ljavafx/beans/binding/StringBinding;"
        }
    .end annotation

    .prologue
    .line 8076
    move-object v0, p0

    .local v0, "op":Ljavafx/collections/ObservableMap;, "Ljavafx/collections/ObservableMap<TK;Ljava/lang/String;>;"
    move-object v1, p1

    .local v1, "key":Ljavafx/beans/value/ObservableValue;, "Ljavafx/beans/value/ObservableValue<+TK;>;"
    move-object v2, v0

    if-eqz v2, :cond_0

    move-object v2, v1

    if-nez v2, :cond_1

    .line 8077
    :cond_0
    new-instance v2, Ljava/lang/NullPointerException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const-string v4, "Operands cannot be null."

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 8080
    :cond_1
    new-instance v2, Ljavafx/beans/binding/Bindings$109;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Ljavafx/beans/binding/Bindings$109;-><init>(Ljavafx/collections/ObservableMap;Ljavafx/beans/value/ObservableValue;)V

    move-object v0, v2

    .end local v0    # "op":Ljavafx/collections/ObservableMap;, "Ljavafx/collections/ObservableMap<TK;Ljava/lang/String;>;"
    return-object v0
.end method

.method public static subtract(DLjavafx/beans/value/ObservableNumberValue;)Ljavafx/beans/binding/DoubleBinding;
    .locals 10

    .prologue
    .line 1624
    move-wide v0, p0

    .local v0, "op1":D
    move-object v2, p2

    .local v2, "op2":Ljavafx/beans/value/ObservableNumberValue;
    move-wide v3, v0

    invoke-static {v3, v4}, Lcom/sun/javafx/binding/DoubleConstant;->valueOf(D)Lcom/sun/javafx/binding/DoubleConstant;

    move-result-object v3

    move-object v4, v2

    const/4 v5, 0x1

    new-array v5, v5, [Ljavafx/beans/Observable;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    move-object v8, v2

    aput-object v8, v6, v7

    invoke-static {v3, v4, v5}, Ljavafx/beans/binding/Bindings;->subtract(Ljavafx/beans/value/ObservableNumberValue;Ljavafx/beans/value/ObservableNumberValue;[Ljavafx/beans/Observable;)Ljavafx/beans/binding/NumberBinding;

    move-result-object v3

    check-cast v3, Ljavafx/beans/binding/DoubleBinding;

    move-object v0, v3

    .end local v0    # "op1":D
    return-object v0
.end method

.method public static subtract(Ljavafx/beans/value/ObservableNumberValue;D)Ljavafx/beans/binding/DoubleBinding;
    .locals 11

    .prologue
    .line 1607
    move-object v0, p0

    .local v0, "op1":Ljavafx/beans/value/ObservableNumberValue;
    move-wide v1, p1

    .local v1, "op2":D
    move-object v3, v0

    move-wide v4, v1

    invoke-static {v4, v5}, Lcom/sun/javafx/binding/DoubleConstant;->valueOf(D)Lcom/sun/javafx/binding/DoubleConstant;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljavafx/beans/Observable;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    move-object v8, v0

    aput-object v8, v6, v7

    invoke-static {v3, v4, v5}, Ljavafx/beans/binding/Bindings;->subtract(Ljavafx/beans/value/ObservableNumberValue;Ljavafx/beans/value/ObservableNumberValue;[Ljavafx/beans/Observable;)Ljavafx/beans/binding/NumberBinding;

    move-result-object v3

    check-cast v3, Ljavafx/beans/binding/DoubleBinding;

    move-object v0, v3

    .end local v0    # "op1":Ljavafx/beans/value/ObservableNumberValue;
    return-object v0
.end method

.method public static subtract(FLjavafx/beans/value/ObservableNumberValue;)Ljavafx/beans/binding/NumberBinding;
    .locals 9

    .prologue
    .line 1658
    move v0, p0

    .local v0, "op1":F
    move-object v1, p1

    .local v1, "op2":Ljavafx/beans/value/ObservableNumberValue;
    move v2, v0

    invoke-static {v2}, Lcom/sun/javafx/binding/FloatConstant;->valueOf(F)Lcom/sun/javafx/binding/FloatConstant;

    move-result-object v2

    move-object v3, v1

    const/4 v4, 0x1

    new-array v4, v4, [Ljavafx/beans/Observable;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    move-object v7, v1

    aput-object v7, v5, v6

    invoke-static {v2, v3, v4}, Ljavafx/beans/binding/Bindings;->subtract(Ljavafx/beans/value/ObservableNumberValue;Ljavafx/beans/value/ObservableNumberValue;[Ljavafx/beans/Observable;)Ljavafx/beans/binding/NumberBinding;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "op1":F
    return-object v0
.end method

.method public static subtract(ILjavafx/beans/value/ObservableNumberValue;)Ljavafx/beans/binding/NumberBinding;
    .locals 9

    .prologue
    .line 1726
    move v0, p0

    .local v0, "op1":I
    move-object v1, p1

    .local v1, "op2":Ljavafx/beans/value/ObservableNumberValue;
    move v2, v0

    invoke-static {v2}, Lcom/sun/javafx/binding/IntegerConstant;->valueOf(I)Lcom/sun/javafx/binding/IntegerConstant;

    move-result-object v2

    move-object v3, v1

    const/4 v4, 0x1

    new-array v4, v4, [Ljavafx/beans/Observable;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    move-object v7, v1

    aput-object v7, v5, v6

    invoke-static {v2, v3, v4}, Ljavafx/beans/binding/Bindings;->subtract(Ljavafx/beans/value/ObservableNumberValue;Ljavafx/beans/value/ObservableNumberValue;[Ljavafx/beans/Observable;)Ljavafx/beans/binding/NumberBinding;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "op1":I
    return-object v0
.end method

.method public static subtract(JLjavafx/beans/value/ObservableNumberValue;)Ljavafx/beans/binding/NumberBinding;
    .locals 10

    .prologue
    .line 1692
    move-wide v0, p0

    .local v0, "op1":J
    move-object v2, p2

    .local v2, "op2":Ljavafx/beans/value/ObservableNumberValue;
    move-wide v3, v0

    invoke-static {v3, v4}, Lcom/sun/javafx/binding/LongConstant;->valueOf(J)Lcom/sun/javafx/binding/LongConstant;

    move-result-object v3

    move-object v4, v2

    const/4 v5, 0x1

    new-array v5, v5, [Ljavafx/beans/Observable;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    move-object v8, v2

    aput-object v8, v6, v7

    invoke-static {v3, v4, v5}, Ljavafx/beans/binding/Bindings;->subtract(Ljavafx/beans/value/ObservableNumberValue;Ljavafx/beans/value/ObservableNumberValue;[Ljavafx/beans/Observable;)Ljavafx/beans/binding/NumberBinding;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "op1":J
    return-object v0
.end method

.method public static subtract(Ljavafx/beans/value/ObservableNumberValue;F)Ljavafx/beans/binding/NumberBinding;
    .locals 9

    .prologue
    .line 1641
    move-object v0, p0

    .local v0, "op1":Ljavafx/beans/value/ObservableNumberValue;
    move v1, p1

    .local v1, "op2":F
    move-object v2, v0

    move v3, v1

    invoke-static {v3}, Lcom/sun/javafx/binding/FloatConstant;->valueOf(F)Lcom/sun/javafx/binding/FloatConstant;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljavafx/beans/Observable;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    move-object v7, v0

    aput-object v7, v5, v6

    invoke-static {v2, v3, v4}, Ljavafx/beans/binding/Bindings;->subtract(Ljavafx/beans/value/ObservableNumberValue;Ljavafx/beans/value/ObservableNumberValue;[Ljavafx/beans/Observable;)Ljavafx/beans/binding/NumberBinding;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "op1":Ljavafx/beans/value/ObservableNumberValue;
    return-object v0
.end method

.method public static subtract(Ljavafx/beans/value/ObservableNumberValue;I)Ljavafx/beans/binding/NumberBinding;
    .locals 9

    .prologue
    .line 1709
    move-object v0, p0

    .local v0, "op1":Ljavafx/beans/value/ObservableNumberValue;
    move v1, p1

    .local v1, "op2":I
    move-object v2, v0

    move v3, v1

    invoke-static {v3}, Lcom/sun/javafx/binding/IntegerConstant;->valueOf(I)Lcom/sun/javafx/binding/IntegerConstant;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljavafx/beans/Observable;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    move-object v7, v0

    aput-object v7, v5, v6

    invoke-static {v2, v3, v4}, Ljavafx/beans/binding/Bindings;->subtract(Ljavafx/beans/value/ObservableNumberValue;Ljavafx/beans/value/ObservableNumberValue;[Ljavafx/beans/Observable;)Ljavafx/beans/binding/NumberBinding;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "op1":Ljavafx/beans/value/ObservableNumberValue;
    return-object v0
.end method

.method public static subtract(Ljavafx/beans/value/ObservableNumberValue;J)Ljavafx/beans/binding/NumberBinding;
    .locals 11

    .prologue
    .line 1675
    move-object v0, p0

    .local v0, "op1":Ljavafx/beans/value/ObservableNumberValue;
    move-wide v1, p1

    .local v1, "op2":J
    move-object v3, v0

    move-wide v4, v1

    invoke-static {v4, v5}, Lcom/sun/javafx/binding/LongConstant;->valueOf(J)Lcom/sun/javafx/binding/LongConstant;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljavafx/beans/Observable;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    move-object v8, v0

    aput-object v8, v6, v7

    invoke-static {v3, v4, v5}, Ljavafx/beans/binding/Bindings;->subtract(Ljavafx/beans/value/ObservableNumberValue;Ljavafx/beans/value/ObservableNumberValue;[Ljavafx/beans/Observable;)Ljavafx/beans/binding/NumberBinding;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "op1":Ljavafx/beans/value/ObservableNumberValue;
    return-object v0
.end method

.method public static subtract(Ljavafx/beans/value/ObservableNumberValue;Ljavafx/beans/value/ObservableNumberValue;)Ljavafx/beans/binding/NumberBinding;
    .locals 9

    .prologue
    .line 1590
    move-object v0, p0

    .local v0, "op1":Ljavafx/beans/value/ObservableNumberValue;
    move-object v1, p1

    .local v1, "op2":Ljavafx/beans/value/ObservableNumberValue;
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x2

    new-array v4, v4, [Ljavafx/beans/Observable;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    move-object v7, v0

    aput-object v7, v5, v6

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x1

    move-object v7, v1

    aput-object v7, v5, v6

    invoke-static {v2, v3, v4}, Ljavafx/beans/binding/Bindings;->subtract(Ljavafx/beans/value/ObservableNumberValue;Ljavafx/beans/value/ObservableNumberValue;[Ljavafx/beans/Observable;)Ljavafx/beans/binding/NumberBinding;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "op1":Ljavafx/beans/value/ObservableNumberValue;
    return-object v0
.end method

.method private static varargs subtract(Ljavafx/beans/value/ObservableNumberValue;Ljavafx/beans/value/ObservableNumberValue;[Ljavafx/beans/Observable;)Ljavafx/beans/binding/NumberBinding;
    .locals 9

    .prologue
    .line 1472
    move-object v0, p0

    .local v0, "op1":Ljavafx/beans/value/ObservableNumberValue;
    move-object v1, p1

    .local v1, "op2":Ljavafx/beans/value/ObservableNumberValue;
    move-object v2, p2

    .local v2, "dependencies":[Ljavafx/beans/Observable;
    move-object v3, v0

    if-eqz v3, :cond_0

    move-object v3, v1

    if-nez v3, :cond_1

    .line 1473
    :cond_0
    new-instance v3, Ljava/lang/NullPointerException;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    const-string v5, "Operands cannot be null."

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1475
    :cond_1
    sget-boolean v3, Ljavafx/beans/binding/Bindings;->$assertionsDisabled:Z

    if-nez v3, :cond_3

    move-object v3, v2

    if-eqz v3, :cond_2

    move-object v3, v2

    array-length v3, v3

    if-gtz v3, :cond_3

    :cond_2
    new-instance v3, Ljava/lang/AssertionError;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 1477
    :cond_3
    move-object v3, v0

    instance-of v3, v3, Ljavafx/beans/value/ObservableDoubleValue;

    if-nez v3, :cond_4

    move-object v3, v1

    instance-of v3, v3, Ljavafx/beans/value/ObservableDoubleValue;

    if-eqz v3, :cond_5

    .line 1478
    :cond_4
    new-instance v3, Ljavafx/beans/binding/Bindings$16;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v2

    move-object v6, v0

    move-object v7, v1

    invoke-direct {v4, v5, v6, v7}, Ljavafx/beans/binding/Bindings$16;-><init>([Ljavafx/beans/Observable;Ljavafx/beans/value/ObservableNumberValue;Ljavafx/beans/value/ObservableNumberValue;)V

    move-object v0, v3

    .line 1550
    .end local v0    # "op1":Ljavafx/beans/value/ObservableNumberValue;
    :goto_0
    return-object v0

    .line 1501
    .restart local v0    # "op1":Ljavafx/beans/value/ObservableNumberValue;
    :cond_5
    move-object v3, v0

    instance-of v3, v3, Ljavafx/beans/value/ObservableFloatValue;

    if-nez v3, :cond_6

    move-object v3, v1

    instance-of v3, v3, Ljavafx/beans/value/ObservableFloatValue;

    if-eqz v3, :cond_7

    .line 1502
    :cond_6
    new-instance v3, Ljavafx/beans/binding/Bindings$17;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v2

    move-object v6, v0

    move-object v7, v1

    invoke-direct {v4, v5, v6, v7}, Ljavafx/beans/binding/Bindings$17;-><init>([Ljavafx/beans/Observable;Ljavafx/beans/value/ObservableNumberValue;Ljavafx/beans/value/ObservableNumberValue;)V

    move-object v0, v3

    goto :goto_0

    .line 1525
    :cond_7
    move-object v3, v0

    instance-of v3, v3, Ljavafx/beans/value/ObservableLongValue;

    if-nez v3, :cond_8

    move-object v3, v1

    instance-of v3, v3, Ljavafx/beans/value/ObservableLongValue;

    if-eqz v3, :cond_9

    .line 1526
    :cond_8
    new-instance v3, Ljavafx/beans/binding/Bindings$18;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v2

    move-object v6, v0

    move-object v7, v1

    invoke-direct {v4, v5, v6, v7}, Ljavafx/beans/binding/Bindings$18;-><init>([Ljavafx/beans/Observable;Ljavafx/beans/value/ObservableNumberValue;Ljavafx/beans/value/ObservableNumberValue;)V

    move-object v0, v3

    goto :goto_0

    .line 1550
    :cond_9
    new-instance v3, Ljavafx/beans/binding/Bindings$19;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v2

    move-object v6, v0

    move-object v7, v1

    invoke-direct {v4, v5, v6, v7}, Ljavafx/beans/binding/Bindings$19;-><init>([Ljavafx/beans/Observable;Ljavafx/beans/value/ObservableNumberValue;Ljavafx/beans/value/ObservableNumberValue;)V

    move-object v0, v3

    goto :goto_0
.end method

.method public static unbindBidirectional(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 795
    move-object v0, p0

    .local v0, "property1":Ljava/lang/Object;
    move-object v1, p1

    .local v1, "property2":Ljava/lang/Object;
    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Lcom/sun/javafx/binding/BidirectionalBinding;->unbind(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 796
    return-void
.end method

.method public static unbindBidirectional(Ljavafx/beans/property/Property;Ljavafx/beans/property/Property;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljavafx/beans/property/Property",
            "<TT;>;",
            "Ljavafx/beans/property/Property",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 776
    move-object v0, p0

    .local v0, "property1":Ljavafx/beans/property/Property;, "Ljavafx/beans/property/Property<TT;>;"
    move-object v1, p1

    .local v1, "property2":Ljavafx/beans/property/Property;, "Ljavafx/beans/property/Property<TT;>;"
    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Lcom/sun/javafx/binding/BidirectionalBinding;->unbind(Ljavafx/beans/property/Property;Ljavafx/beans/property/Property;)V

    .line 777
    return-void
.end method

.method public static unbindContent(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 1093
    move-object v0, p0

    .local v0, "obj1":Ljava/lang/Object;
    move-object v1, p1

    .local v1, "obj2":Ljava/lang/Object;
    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Lcom/sun/javafx/binding/ContentBinding;->unbind(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1094
    return-void
.end method

.method public static unbindContentBidirectional(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 997
    move-object v0, p0

    .local v0, "obj1":Ljava/lang/Object;
    move-object v1, p1

    .local v1, "obj2":Ljava/lang/Object;
    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Lcom/sun/javafx/binding/BidirectionalContentBinding;->unbind(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 998
    return-void
.end method

.method public static valueAt(Ljavafx/collections/ObservableList;I)Ljavafx/beans/binding/ObjectBinding;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljavafx/collections/ObservableList",
            "<TE;>;I)",
            "Ljavafx/beans/binding/ObjectBinding",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 6083
    move-object v0, p0

    .local v0, "op":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<TE;>;"
    move v1, p1

    .local v1, "index":I
    move-object v2, v0

    if-nez v2, :cond_0

    .line 6084
    new-instance v2, Ljava/lang/NullPointerException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const-string v4, "List cannot be null."

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 6086
    :cond_0
    move v2, v1

    if-gez v2, :cond_1

    .line 6087
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const-string v4, "Index cannot be negative"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 6090
    :cond_1
    new-instance v2, Ljavafx/beans/binding/Bindings$71;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    move v5, v1

    invoke-direct {v3, v4, v5}, Ljavafx/beans/binding/Bindings$71;-><init>(Ljavafx/collections/ObservableList;I)V

    move-object v0, v2

    .end local v0    # "op":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<TE;>;"
    return-object v0
.end method

.method public static valueAt(Ljavafx/collections/ObservableList;Ljavafx/beans/value/ObservableIntegerValue;)Ljavafx/beans/binding/ObjectBinding;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljavafx/collections/ObservableList",
            "<TE;>;",
            "Ljavafx/beans/value/ObservableIntegerValue;",
            ")",
            "Ljavafx/beans/binding/ObjectBinding",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 6131
    move-object v0, p0

    .local v0, "op":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<TE;>;"
    move-object v1, p1

    .local v1, "index":Ljavafx/beans/value/ObservableIntegerValue;
    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Ljavafx/beans/binding/Bindings;->valueAt(Ljavafx/collections/ObservableList;Ljavafx/beans/value/ObservableNumberValue;)Ljavafx/beans/binding/ObjectBinding;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "op":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<TE;>;"
    return-object v0
.end method

.method public static valueAt(Ljavafx/collections/ObservableList;Ljavafx/beans/value/ObservableNumberValue;)Ljavafx/beans/binding/ObjectBinding;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljavafx/collections/ObservableList",
            "<TE;>;",
            "Ljavafx/beans/value/ObservableNumberValue;",
            ")",
            "Ljavafx/beans/binding/ObjectBinding",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 6147
    move-object v0, p0

    .local v0, "op":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<TE;>;"
    move-object v1, p1

    .local v1, "index":Ljavafx/beans/value/ObservableNumberValue;
    move-object v2, v0

    if-eqz v2, :cond_0

    move-object v2, v1

    if-nez v2, :cond_1

    .line 6148
    :cond_0
    new-instance v2, Ljava/lang/NullPointerException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const-string v4, "Operands cannot be null."

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 6151
    :cond_1
    new-instance v2, Ljavafx/beans/binding/Bindings$72;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Ljavafx/beans/binding/Bindings$72;-><init>(Ljavafx/collections/ObservableList;Ljavafx/beans/value/ObservableNumberValue;)V

    move-object v0, v2

    .end local v0    # "op":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<TE;>;"
    return-object v0
.end method

.method public static valueAt(Ljavafx/collections/ObservableMap;Ljava/lang/Object;)Ljavafx/beans/binding/ObjectBinding;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljavafx/collections/ObservableMap",
            "<TK;TV;>;TK;)",
            "Ljavafx/beans/binding/ObjectBinding",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 7389
    move-object v0, p0

    .local v0, "op":Ljavafx/collections/ObservableMap;, "Ljavafx/collections/ObservableMap<TK;TV;>;"
    move-object v1, p1

    .local v1, "key":Ljava/lang/Object;, "TK;"
    move-object v2, v0

    if-nez v2, :cond_0

    .line 7390
    new-instance v2, Ljava/lang/NullPointerException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const-string v4, "Map cannot be null."

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 7393
    :cond_0
    new-instance v2, Ljavafx/beans/binding/Bindings$96;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Ljavafx/beans/binding/Bindings$96;-><init>(Ljavafx/collections/ObservableMap;Ljava/lang/Object;)V

    move-object v0, v2

    .end local v0    # "op":Ljavafx/collections/ObservableMap;, "Ljavafx/collections/ObservableMap<TK;TV;>;"
    return-object v0
.end method

.method public static valueAt(Ljavafx/collections/ObservableMap;Ljavafx/beans/value/ObservableValue;)Ljavafx/beans/binding/ObjectBinding;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljavafx/collections/ObservableMap",
            "<TK;TV;>;",
            "Ljavafx/beans/value/ObservableValue",
            "<+TK;>;)",
            "Ljavafx/beans/binding/ObjectBinding",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 7438
    move-object v0, p0

    .local v0, "op":Ljavafx/collections/ObservableMap;, "Ljavafx/collections/ObservableMap<TK;TV;>;"
    move-object v1, p1

    .local v1, "key":Ljavafx/beans/value/ObservableValue;, "Ljavafx/beans/value/ObservableValue<+TK;>;"
    move-object v2, v0

    if-eqz v2, :cond_0

    move-object v2, v1

    if-nez v2, :cond_1

    .line 7439
    :cond_0
    new-instance v2, Ljava/lang/NullPointerException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const-string v4, "Operands cannot be null."

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 7442
    :cond_1
    new-instance v2, Ljavafx/beans/binding/Bindings$97;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Ljavafx/beans/binding/Bindings$97;-><init>(Ljavafx/collections/ObservableMap;Ljavafx/beans/value/ObservableValue;)V

    move-object v0, v2

    .end local v0    # "op":Ljavafx/collections/ObservableMap;, "Ljavafx/collections/ObservableMap<TK;TV;>;"
    return-object v0
.end method

.method public static when(Ljavafx/beans/value/ObservableBooleanValue;)Ljavafx/beans/binding/When;
    .locals 5

    .prologue
    .line 719
    move-object v0, p0

    .local v0, "condition":Ljavafx/beans/value/ObservableBooleanValue;
    new-instance v1, Ljavafx/beans/binding/When;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Ljavafx/beans/binding/When;-><init>(Ljavafx/beans/value/ObservableBooleanValue;)V

    move-object v0, v1

    .end local v0    # "condition":Ljavafx/beans/value/ObservableBooleanValue;
    return-object v0
.end method
