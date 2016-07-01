.class public abstract Ljavafx/beans/binding/NumberExpressionBase;
.super Ljava/lang/Object;
.source "NumberExpressionBase.java"

# interfaces
.implements Ljavafx/beans/binding/NumberExpression;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 50
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/NumberExpressionBase;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static numberExpression(Ljavafx/beans/value/ObservableNumberValue;)Ljavafx/beans/binding/NumberExpressionBase;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Number;",
            ">(",
            "Ljavafx/beans/value/ObservableNumberValue;",
            ")",
            "Ljavafx/beans/binding/NumberExpressionBase;"
        }
    .end annotation

    .prologue
    .line 69
    move-object v0, p0

    .local v0, "value":Ljavafx/beans/value/ObservableNumberValue;
    move-object v2, v0

    if-nez v2, :cond_0

    .line 70
    new-instance v2, Ljava/lang/NullPointerException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "Value must be specified."

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 72
    :cond_0
    move-object v2, v0

    instance-of v2, v2, Ljavafx/beans/binding/NumberExpressionBase;

    if-eqz v2, :cond_1

    move-object v2, v0

    .line 80
    :goto_0
    check-cast v2, Ljavafx/beans/binding/NumberExpressionBase;

    check-cast v2, Ljavafx/beans/binding/NumberExpressionBase;

    move-object v1, v2

    .line 82
    .local v1, "result":Ljavafx/beans/binding/NumberExpressionBase;
    move-object v2, v1

    if-eqz v2, :cond_6

    .line 83
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "value":Ljavafx/beans/value/ObservableNumberValue;
    return-object v0

    .line 72
    .end local v1    # "result":Ljavafx/beans/binding/NumberExpressionBase;
    .restart local v0    # "value":Ljavafx/beans/value/ObservableNumberValue;
    :cond_1
    move-object v2, v0

    instance-of v2, v2, Ljavafx/beans/value/ObservableIntegerValue;

    if-eqz v2, :cond_2

    move-object v2, v0

    check-cast v2, Ljavafx/beans/value/ObservableIntegerValue;

    .line 74
    invoke-static {v2}, Ljavafx/beans/binding/IntegerExpression;->integerExpression(Ljavafx/beans/value/ObservableIntegerValue;)Ljavafx/beans/binding/IntegerExpression;

    move-result-object v2

    goto :goto_0

    :cond_2
    move-object v2, v0

    instance-of v2, v2, Ljavafx/beans/value/ObservableDoubleValue;

    if-eqz v2, :cond_3

    move-object v2, v0

    check-cast v2, Ljavafx/beans/value/ObservableDoubleValue;

    .line 76
    invoke-static {v2}, Ljavafx/beans/binding/DoubleExpression;->doubleExpression(Ljavafx/beans/value/ObservableDoubleValue;)Ljavafx/beans/binding/DoubleExpression;

    move-result-object v2

    goto :goto_0

    :cond_3
    move-object v2, v0

    instance-of v2, v2, Ljavafx/beans/value/ObservableFloatValue;

    if-eqz v2, :cond_4

    move-object v2, v0

    check-cast v2, Ljavafx/beans/value/ObservableFloatValue;

    .line 78
    invoke-static {v2}, Ljavafx/beans/binding/FloatExpression;->floatExpression(Ljavafx/beans/value/ObservableFloatValue;)Ljavafx/beans/binding/FloatExpression;

    move-result-object v2

    goto :goto_0

    :cond_4
    move-object v2, v0

    instance-of v2, v2, Ljavafx/beans/value/ObservableLongValue;

    if-eqz v2, :cond_5

    move-object v2, v0

    check-cast v2, Ljavafx/beans/value/ObservableLongValue;

    .line 80
    invoke-static {v2}, Ljavafx/beans/binding/LongExpression;->longExpression(Ljavafx/beans/value/ObservableLongValue;)Ljavafx/beans/binding/LongExpression;

    move-result-object v2

    goto :goto_0

    :cond_5
    const/4 v2, 0x0

    goto :goto_0

    .line 85
    .restart local v1    # "result":Ljavafx/beans/binding/NumberExpressionBase;
    :cond_6
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "Unsupported Type"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public add(Ljavafx/beans/value/ObservableNumberValue;)Ljavafx/beans/binding/NumberBinding;
    .locals 4

    .prologue
    .line 91
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/NumberExpressionBase;
    move-object v1, p1

    .local v1, "other":Ljavafx/beans/value/ObservableNumberValue;
    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Ljavafx/beans/binding/Bindings;->add(Ljavafx/beans/value/ObservableNumberValue;Ljavafx/beans/value/ObservableNumberValue;)Ljavafx/beans/binding/NumberBinding;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavafx/beans/binding/NumberExpressionBase;
    return-object v0
.end method

.method public asString()Ljavafx/beans/binding/StringBinding;
    .locals 2

    .prologue
    .line 314
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/NumberExpressionBase;
    move-object v1, v0

    invoke-static {v1}, Lcom/sun/javafx/binding/StringFormatter;->convert(Ljavafx/beans/value/ObservableValue;)Ljavafx/beans/binding/StringExpression;

    move-result-object v1

    check-cast v1, Ljavafx/beans/binding/StringBinding;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/beans/binding/NumberExpressionBase;
    return-object v0
.end method

.method public asString(Ljava/lang/String;)Ljavafx/beans/binding/StringBinding;
    .locals 8

    .prologue
    .line 319
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/NumberExpressionBase;
    move-object v1, p1

    .local v1, "format":Ljava/lang/String;
    move-object v2, v1

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x0

    move-object v6, v0

    aput-object v6, v4, v5

    invoke-static {v2, v3}, Ljavafx/beans/binding/Bindings;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljavafx/beans/binding/StringExpression;

    move-result-object v2

    check-cast v2, Ljavafx/beans/binding/StringBinding;

    move-object v0, v2

    .end local v0    # "this":Ljavafx/beans/binding/NumberExpressionBase;
    return-object v0
.end method

.method public asString(Ljava/util/Locale;Ljava/lang/String;)Ljavafx/beans/binding/StringBinding;
    .locals 10

    .prologue
    .line 324
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/NumberExpressionBase;
    move-object v1, p1

    .local v1, "locale":Ljava/util/Locale;
    move-object v2, p2

    .local v2, "format":Ljava/lang/String;
    move-object v3, v1

    move-object v4, v2

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    move-object v8, v0

    aput-object v8, v6, v7

    invoke-static {v3, v4, v5}, Ljavafx/beans/binding/Bindings;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljavafx/beans/binding/StringExpression;

    move-result-object v3

    check-cast v3, Ljavafx/beans/binding/StringBinding;

    move-object v0, v3

    .end local v0    # "this":Ljavafx/beans/binding/NumberExpressionBase;
    return-object v0
.end method

.method public divide(Ljavafx/beans/value/ObservableNumberValue;)Ljavafx/beans/binding/NumberBinding;
    .locals 4

    .prologue
    .line 106
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/NumberExpressionBase;
    move-object v1, p1

    .local v1, "other":Ljavafx/beans/value/ObservableNumberValue;
    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Ljavafx/beans/binding/Bindings;->divide(Ljavafx/beans/value/ObservableNumberValue;Ljavafx/beans/value/ObservableNumberValue;)Ljavafx/beans/binding/NumberBinding;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavafx/beans/binding/NumberExpressionBase;
    return-object v0
.end method

.method public greaterThan(D)Ljavafx/beans/binding/BooleanBinding;
    .locals 7

    .prologue
    .line 207
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/NumberExpressionBase;
    move-wide v1, p1

    .local v1, "other":D
    move-object v3, v0

    move-wide v4, v1

    invoke-static {v3, v4, v5}, Ljavafx/beans/binding/Bindings;->greaterThan(Ljavafx/beans/value/ObservableNumberValue;D)Ljavafx/beans/binding/BooleanBinding;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Ljavafx/beans/binding/NumberExpressionBase;
    return-object v0
.end method

.method public greaterThan(F)Ljavafx/beans/binding/BooleanBinding;
    .locals 4

    .prologue
    .line 212
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/NumberExpressionBase;
    move v1, p1

    .local v1, "other":F
    move-object v2, v0

    move v3, v1

    invoke-static {v2, v3}, Ljavafx/beans/binding/Bindings;->greaterThan(Ljavafx/beans/value/ObservableNumberValue;F)Ljavafx/beans/binding/BooleanBinding;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavafx/beans/binding/NumberExpressionBase;
    return-object v0
.end method

.method public greaterThan(I)Ljavafx/beans/binding/BooleanBinding;
    .locals 4

    .prologue
    .line 222
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/NumberExpressionBase;
    move v1, p1

    .local v1, "other":I
    move-object v2, v0

    move v3, v1

    invoke-static {v2, v3}, Ljavafx/beans/binding/Bindings;->greaterThan(Ljavafx/beans/value/ObservableNumberValue;I)Ljavafx/beans/binding/BooleanBinding;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavafx/beans/binding/NumberExpressionBase;
    return-object v0
.end method

.method public greaterThan(J)Ljavafx/beans/binding/BooleanBinding;
    .locals 7

    .prologue
    .line 217
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/NumberExpressionBase;
    move-wide v1, p1

    .local v1, "other":J
    move-object v3, v0

    move-wide v4, v1

    invoke-static {v3, v4, v5}, Ljavafx/beans/binding/Bindings;->greaterThan(Ljavafx/beans/value/ObservableNumberValue;J)Ljavafx/beans/binding/BooleanBinding;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Ljavafx/beans/binding/NumberExpressionBase;
    return-object v0
.end method

.method public greaterThan(Ljavafx/beans/value/ObservableNumberValue;)Ljavafx/beans/binding/BooleanBinding;
    .locals 4

    .prologue
    .line 202
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/NumberExpressionBase;
    move-object v1, p1

    .local v1, "other":Ljavafx/beans/value/ObservableNumberValue;
    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Ljavafx/beans/binding/Bindings;->greaterThan(Ljavafx/beans/value/ObservableNumberValue;Ljavafx/beans/value/ObservableNumberValue;)Ljavafx/beans/binding/BooleanBinding;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavafx/beans/binding/NumberExpressionBase;
    return-object v0
.end method

.method public greaterThanOrEqualTo(D)Ljavafx/beans/binding/BooleanBinding;
    .locals 7

    .prologue
    .line 263
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/NumberExpressionBase;
    move-wide v1, p1

    .local v1, "other":D
    move-object v3, v0

    move-wide v4, v1

    invoke-static {v3, v4, v5}, Ljavafx/beans/binding/Bindings;->greaterThanOrEqual(Ljavafx/beans/value/ObservableNumberValue;D)Ljavafx/beans/binding/BooleanBinding;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Ljavafx/beans/binding/NumberExpressionBase;
    return-object v0
.end method

.method public greaterThanOrEqualTo(F)Ljavafx/beans/binding/BooleanBinding;
    .locals 4

    .prologue
    .line 268
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/NumberExpressionBase;
    move v1, p1

    .local v1, "other":F
    move-object v2, v0

    move v3, v1

    invoke-static {v2, v3}, Ljavafx/beans/binding/Bindings;->greaterThanOrEqual(Ljavafx/beans/value/ObservableNumberValue;F)Ljavafx/beans/binding/BooleanBinding;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavafx/beans/binding/NumberExpressionBase;
    return-object v0
.end method

.method public greaterThanOrEqualTo(I)Ljavafx/beans/binding/BooleanBinding;
    .locals 4

    .prologue
    .line 278
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/NumberExpressionBase;
    move v1, p1

    .local v1, "other":I
    move-object v2, v0

    move v3, v1

    invoke-static {v2, v3}, Ljavafx/beans/binding/Bindings;->greaterThanOrEqual(Ljavafx/beans/value/ObservableNumberValue;I)Ljavafx/beans/binding/BooleanBinding;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavafx/beans/binding/NumberExpressionBase;
    return-object v0
.end method

.method public greaterThanOrEqualTo(J)Ljavafx/beans/binding/BooleanBinding;
    .locals 7

    .prologue
    .line 273
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/NumberExpressionBase;
    move-wide v1, p1

    .local v1, "other":J
    move-object v3, v0

    move-wide v4, v1

    invoke-static {v3, v4, v5}, Ljavafx/beans/binding/Bindings;->greaterThanOrEqual(Ljavafx/beans/value/ObservableNumberValue;J)Ljavafx/beans/binding/BooleanBinding;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Ljavafx/beans/binding/NumberExpressionBase;
    return-object v0
.end method

.method public greaterThanOrEqualTo(Ljavafx/beans/value/ObservableNumberValue;)Ljavafx/beans/binding/BooleanBinding;
    .locals 4

    .prologue
    .line 258
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/NumberExpressionBase;
    move-object v1, p1

    .local v1, "other":Ljavafx/beans/value/ObservableNumberValue;
    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Ljavafx/beans/binding/Bindings;->greaterThanOrEqual(Ljavafx/beans/value/ObservableNumberValue;Ljavafx/beans/value/ObservableNumberValue;)Ljavafx/beans/binding/BooleanBinding;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavafx/beans/binding/NumberExpressionBase;
    return-object v0
.end method

.method public isEqualTo(DD)Ljavafx/beans/binding/BooleanBinding;
    .locals 11

    .prologue
    .line 125
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/NumberExpressionBase;
    move-wide v1, p1

    .local v1, "other":D
    move-wide v3, p3

    .local v3, "epsilon":D
    move-object v5, v0

    move-wide v6, v1

    move-wide v8, v3

    invoke-static {v5, v6, v7, v8, v9}, Ljavafx/beans/binding/Bindings;->equal(Ljavafx/beans/value/ObservableNumberValue;DD)Ljavafx/beans/binding/BooleanBinding;

    move-result-object v5

    move-object v0, v5

    .end local v0    # "this":Ljavafx/beans/binding/NumberExpressionBase;
    return-object v0
.end method

.method public isEqualTo(FD)Ljavafx/beans/binding/BooleanBinding;
    .locals 8

    .prologue
    .line 130
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/NumberExpressionBase;
    move v1, p1

    .local v1, "other":F
    move-wide v2, p2

    .local v2, "epsilon":D
    move-object v4, v0

    move v5, v1

    move-wide v6, v2

    invoke-static {v4, v5, v6, v7}, Ljavafx/beans/binding/Bindings;->equal(Ljavafx/beans/value/ObservableNumberValue;FD)Ljavafx/beans/binding/BooleanBinding;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Ljavafx/beans/binding/NumberExpressionBase;
    return-object v0
.end method

.method public isEqualTo(I)Ljavafx/beans/binding/BooleanBinding;
    .locals 4

    .prologue
    .line 145
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/NumberExpressionBase;
    move v1, p1

    .local v1, "other":I
    move-object v2, v0

    move v3, v1

    invoke-static {v2, v3}, Ljavafx/beans/binding/Bindings;->equal(Ljavafx/beans/value/ObservableNumberValue;I)Ljavafx/beans/binding/BooleanBinding;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavafx/beans/binding/NumberExpressionBase;
    return-object v0
.end method

.method public isEqualTo(ID)Ljavafx/beans/binding/BooleanBinding;
    .locals 8

    .prologue
    .line 150
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/NumberExpressionBase;
    move v1, p1

    .local v1, "other":I
    move-wide v2, p2

    .local v2, "epsilon":D
    move-object v4, v0

    move v5, v1

    move-wide v6, v2

    invoke-static {v4, v5, v6, v7}, Ljavafx/beans/binding/Bindings;->equal(Ljavafx/beans/value/ObservableNumberValue;ID)Ljavafx/beans/binding/BooleanBinding;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Ljavafx/beans/binding/NumberExpressionBase;
    return-object v0
.end method

.method public isEqualTo(J)Ljavafx/beans/binding/BooleanBinding;
    .locals 7

    .prologue
    .line 135
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/NumberExpressionBase;
    move-wide v1, p1

    .local v1, "other":J
    move-object v3, v0

    move-wide v4, v1

    invoke-static {v3, v4, v5}, Ljavafx/beans/binding/Bindings;->equal(Ljavafx/beans/value/ObservableNumberValue;J)Ljavafx/beans/binding/BooleanBinding;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Ljavafx/beans/binding/NumberExpressionBase;
    return-object v0
.end method

.method public isEqualTo(JD)Ljavafx/beans/binding/BooleanBinding;
    .locals 11

    .prologue
    .line 140
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/NumberExpressionBase;
    move-wide v1, p1

    .local v1, "other":J
    move-wide v3, p3

    .local v3, "epsilon":D
    move-object v5, v0

    move-wide v6, v1

    move-wide v8, v3

    invoke-static {v5, v6, v7, v8, v9}, Ljavafx/beans/binding/Bindings;->equal(Ljavafx/beans/value/ObservableNumberValue;JD)Ljavafx/beans/binding/BooleanBinding;

    move-result-object v5

    move-object v0, v5

    .end local v0    # "this":Ljavafx/beans/binding/NumberExpressionBase;
    return-object v0
.end method

.method public isEqualTo(Ljavafx/beans/value/ObservableNumberValue;)Ljavafx/beans/binding/BooleanBinding;
    .locals 4

    .prologue
    .line 114
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/NumberExpressionBase;
    move-object v1, p1

    .local v1, "other":Ljavafx/beans/value/ObservableNumberValue;
    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Ljavafx/beans/binding/Bindings;->equal(Ljavafx/beans/value/ObservableNumberValue;Ljavafx/beans/value/ObservableNumberValue;)Ljavafx/beans/binding/BooleanBinding;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavafx/beans/binding/NumberExpressionBase;
    return-object v0
.end method

.method public isEqualTo(Ljavafx/beans/value/ObservableNumberValue;D)Ljavafx/beans/binding/BooleanBinding;
    .locals 8

    .prologue
    .line 120
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/NumberExpressionBase;
    move-object v1, p1

    .local v1, "other":Ljavafx/beans/value/ObservableNumberValue;
    move-wide v2, p2

    .local v2, "epsilon":D
    move-object v4, v0

    move-object v5, v1

    move-wide v6, v2

    invoke-static {v4, v5, v6, v7}, Ljavafx/beans/binding/Bindings;->equal(Ljavafx/beans/value/ObservableNumberValue;Ljavafx/beans/value/ObservableNumberValue;D)Ljavafx/beans/binding/BooleanBinding;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Ljavafx/beans/binding/NumberExpressionBase;
    return-object v0
.end method

.method public isNotEqualTo(DD)Ljavafx/beans/binding/BooleanBinding;
    .locals 11

    .prologue
    .line 169
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/NumberExpressionBase;
    move-wide v1, p1

    .local v1, "other":D
    move-wide v3, p3

    .local v3, "epsilon":D
    move-object v5, v0

    move-wide v6, v1

    move-wide v8, v3

    invoke-static {v5, v6, v7, v8, v9}, Ljavafx/beans/binding/Bindings;->notEqual(Ljavafx/beans/value/ObservableNumberValue;DD)Ljavafx/beans/binding/BooleanBinding;

    move-result-object v5

    move-object v0, v5

    .end local v0    # "this":Ljavafx/beans/binding/NumberExpressionBase;
    return-object v0
.end method

.method public isNotEqualTo(FD)Ljavafx/beans/binding/BooleanBinding;
    .locals 8

    .prologue
    .line 174
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/NumberExpressionBase;
    move v1, p1

    .local v1, "other":F
    move-wide v2, p2

    .local v2, "epsilon":D
    move-object v4, v0

    move v5, v1

    move-wide v6, v2

    invoke-static {v4, v5, v6, v7}, Ljavafx/beans/binding/Bindings;->notEqual(Ljavafx/beans/value/ObservableNumberValue;FD)Ljavafx/beans/binding/BooleanBinding;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Ljavafx/beans/binding/NumberExpressionBase;
    return-object v0
.end method

.method public isNotEqualTo(I)Ljavafx/beans/binding/BooleanBinding;
    .locals 4

    .prologue
    .line 189
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/NumberExpressionBase;
    move v1, p1

    .local v1, "other":I
    move-object v2, v0

    move v3, v1

    invoke-static {v2, v3}, Ljavafx/beans/binding/Bindings;->notEqual(Ljavafx/beans/value/ObservableNumberValue;I)Ljavafx/beans/binding/BooleanBinding;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavafx/beans/binding/NumberExpressionBase;
    return-object v0
.end method

.method public isNotEqualTo(ID)Ljavafx/beans/binding/BooleanBinding;
    .locals 8

    .prologue
    .line 194
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/NumberExpressionBase;
    move v1, p1

    .local v1, "other":I
    move-wide v2, p2

    .local v2, "epsilon":D
    move-object v4, v0

    move v5, v1

    move-wide v6, v2

    invoke-static {v4, v5, v6, v7}, Ljavafx/beans/binding/Bindings;->notEqual(Ljavafx/beans/value/ObservableNumberValue;ID)Ljavafx/beans/binding/BooleanBinding;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Ljavafx/beans/binding/NumberExpressionBase;
    return-object v0
.end method

.method public isNotEqualTo(J)Ljavafx/beans/binding/BooleanBinding;
    .locals 7

    .prologue
    .line 179
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/NumberExpressionBase;
    move-wide v1, p1

    .local v1, "other":J
    move-object v3, v0

    move-wide v4, v1

    invoke-static {v3, v4, v5}, Ljavafx/beans/binding/Bindings;->notEqual(Ljavafx/beans/value/ObservableNumberValue;J)Ljavafx/beans/binding/BooleanBinding;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Ljavafx/beans/binding/NumberExpressionBase;
    return-object v0
.end method

.method public isNotEqualTo(JD)Ljavafx/beans/binding/BooleanBinding;
    .locals 11

    .prologue
    .line 184
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/NumberExpressionBase;
    move-wide v1, p1

    .local v1, "other":J
    move-wide v3, p3

    .local v3, "epsilon":D
    move-object v5, v0

    move-wide v6, v1

    move-wide v8, v3

    invoke-static {v5, v6, v7, v8, v9}, Ljavafx/beans/binding/Bindings;->notEqual(Ljavafx/beans/value/ObservableNumberValue;JD)Ljavafx/beans/binding/BooleanBinding;

    move-result-object v5

    move-object v0, v5

    .end local v0    # "this":Ljavafx/beans/binding/NumberExpressionBase;
    return-object v0
.end method

.method public isNotEqualTo(Ljavafx/beans/value/ObservableNumberValue;)Ljavafx/beans/binding/BooleanBinding;
    .locals 4

    .prologue
    .line 158
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/NumberExpressionBase;
    move-object v1, p1

    .local v1, "other":Ljavafx/beans/value/ObservableNumberValue;
    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Ljavafx/beans/binding/Bindings;->notEqual(Ljavafx/beans/value/ObservableNumberValue;Ljavafx/beans/value/ObservableNumberValue;)Ljavafx/beans/binding/BooleanBinding;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavafx/beans/binding/NumberExpressionBase;
    return-object v0
.end method

.method public isNotEqualTo(Ljavafx/beans/value/ObservableNumberValue;D)Ljavafx/beans/binding/BooleanBinding;
    .locals 8

    .prologue
    .line 164
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/NumberExpressionBase;
    move-object v1, p1

    .local v1, "other":Ljavafx/beans/value/ObservableNumberValue;
    move-wide v2, p2

    .local v2, "epsilon":D
    move-object v4, v0

    move-object v5, v1

    move-wide v6, v2

    invoke-static {v4, v5, v6, v7}, Ljavafx/beans/binding/Bindings;->notEqual(Ljavafx/beans/value/ObservableNumberValue;Ljavafx/beans/value/ObservableNumberValue;D)Ljavafx/beans/binding/BooleanBinding;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Ljavafx/beans/binding/NumberExpressionBase;
    return-object v0
.end method

.method public lessThan(D)Ljavafx/beans/binding/BooleanBinding;
    .locals 7

    .prologue
    .line 235
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/NumberExpressionBase;
    move-wide v1, p1

    .local v1, "other":D
    move-object v3, v0

    move-wide v4, v1

    invoke-static {v3, v4, v5}, Ljavafx/beans/binding/Bindings;->lessThan(Ljavafx/beans/value/ObservableNumberValue;D)Ljavafx/beans/binding/BooleanBinding;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Ljavafx/beans/binding/NumberExpressionBase;
    return-object v0
.end method

.method public lessThan(F)Ljavafx/beans/binding/BooleanBinding;
    .locals 4

    .prologue
    .line 240
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/NumberExpressionBase;
    move v1, p1

    .local v1, "other":F
    move-object v2, v0

    move v3, v1

    invoke-static {v2, v3}, Ljavafx/beans/binding/Bindings;->lessThan(Ljavafx/beans/value/ObservableNumberValue;F)Ljavafx/beans/binding/BooleanBinding;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavafx/beans/binding/NumberExpressionBase;
    return-object v0
.end method

.method public lessThan(I)Ljavafx/beans/binding/BooleanBinding;
    .locals 4

    .prologue
    .line 250
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/NumberExpressionBase;
    move v1, p1

    .local v1, "other":I
    move-object v2, v0

    move v3, v1

    invoke-static {v2, v3}, Ljavafx/beans/binding/Bindings;->lessThan(Ljavafx/beans/value/ObservableNumberValue;I)Ljavafx/beans/binding/BooleanBinding;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavafx/beans/binding/NumberExpressionBase;
    return-object v0
.end method

.method public lessThan(J)Ljavafx/beans/binding/BooleanBinding;
    .locals 7

    .prologue
    .line 245
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/NumberExpressionBase;
    move-wide v1, p1

    .local v1, "other":J
    move-object v3, v0

    move-wide v4, v1

    invoke-static {v3, v4, v5}, Ljavafx/beans/binding/Bindings;->lessThan(Ljavafx/beans/value/ObservableNumberValue;J)Ljavafx/beans/binding/BooleanBinding;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Ljavafx/beans/binding/NumberExpressionBase;
    return-object v0
.end method

.method public lessThan(Ljavafx/beans/value/ObservableNumberValue;)Ljavafx/beans/binding/BooleanBinding;
    .locals 4

    .prologue
    .line 230
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/NumberExpressionBase;
    move-object v1, p1

    .local v1, "other":Ljavafx/beans/value/ObservableNumberValue;
    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Ljavafx/beans/binding/Bindings;->lessThan(Ljavafx/beans/value/ObservableNumberValue;Ljavafx/beans/value/ObservableNumberValue;)Ljavafx/beans/binding/BooleanBinding;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavafx/beans/binding/NumberExpressionBase;
    return-object v0
.end method

.method public lessThanOrEqualTo(D)Ljavafx/beans/binding/BooleanBinding;
    .locals 7

    .prologue
    .line 291
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/NumberExpressionBase;
    move-wide v1, p1

    .local v1, "other":D
    move-object v3, v0

    move-wide v4, v1

    invoke-static {v3, v4, v5}, Ljavafx/beans/binding/Bindings;->lessThanOrEqual(Ljavafx/beans/value/ObservableNumberValue;D)Ljavafx/beans/binding/BooleanBinding;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Ljavafx/beans/binding/NumberExpressionBase;
    return-object v0
.end method

.method public lessThanOrEqualTo(F)Ljavafx/beans/binding/BooleanBinding;
    .locals 4

    .prologue
    .line 296
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/NumberExpressionBase;
    move v1, p1

    .local v1, "other":F
    move-object v2, v0

    move v3, v1

    invoke-static {v2, v3}, Ljavafx/beans/binding/Bindings;->lessThanOrEqual(Ljavafx/beans/value/ObservableNumberValue;F)Ljavafx/beans/binding/BooleanBinding;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavafx/beans/binding/NumberExpressionBase;
    return-object v0
.end method

.method public lessThanOrEqualTo(I)Ljavafx/beans/binding/BooleanBinding;
    .locals 4

    .prologue
    .line 306
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/NumberExpressionBase;
    move v1, p1

    .local v1, "other":I
    move-object v2, v0

    move v3, v1

    invoke-static {v2, v3}, Ljavafx/beans/binding/Bindings;->lessThanOrEqual(Ljavafx/beans/value/ObservableNumberValue;I)Ljavafx/beans/binding/BooleanBinding;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavafx/beans/binding/NumberExpressionBase;
    return-object v0
.end method

.method public lessThanOrEqualTo(J)Ljavafx/beans/binding/BooleanBinding;
    .locals 7

    .prologue
    .line 301
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/NumberExpressionBase;
    move-wide v1, p1

    .local v1, "other":J
    move-object v3, v0

    move-wide v4, v1

    invoke-static {v3, v4, v5}, Ljavafx/beans/binding/Bindings;->lessThanOrEqual(Ljavafx/beans/value/ObservableNumberValue;J)Ljavafx/beans/binding/BooleanBinding;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Ljavafx/beans/binding/NumberExpressionBase;
    return-object v0
.end method

.method public lessThanOrEqualTo(Ljavafx/beans/value/ObservableNumberValue;)Ljavafx/beans/binding/BooleanBinding;
    .locals 4

    .prologue
    .line 286
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/NumberExpressionBase;
    move-object v1, p1

    .local v1, "other":Ljavafx/beans/value/ObservableNumberValue;
    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Ljavafx/beans/binding/Bindings;->lessThanOrEqual(Ljavafx/beans/value/ObservableNumberValue;Ljavafx/beans/value/ObservableNumberValue;)Ljavafx/beans/binding/BooleanBinding;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavafx/beans/binding/NumberExpressionBase;
    return-object v0
.end method

.method public multiply(Ljavafx/beans/value/ObservableNumberValue;)Ljavafx/beans/binding/NumberBinding;
    .locals 4

    .prologue
    .line 101
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/NumberExpressionBase;
    move-object v1, p1

    .local v1, "other":Ljavafx/beans/value/ObservableNumberValue;
    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Ljavafx/beans/binding/Bindings;->multiply(Ljavafx/beans/value/ObservableNumberValue;Ljavafx/beans/value/ObservableNumberValue;)Ljavafx/beans/binding/NumberBinding;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavafx/beans/binding/NumberExpressionBase;
    return-object v0
.end method

.method public subtract(Ljavafx/beans/value/ObservableNumberValue;)Ljavafx/beans/binding/NumberBinding;
    .locals 4

    .prologue
    .line 96
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/NumberExpressionBase;
    move-object v1, p1

    .local v1, "other":Ljavafx/beans/value/ObservableNumberValue;
    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Ljavafx/beans/binding/Bindings;->subtract(Ljavafx/beans/value/ObservableNumberValue;Ljavafx/beans/value/ObservableNumberValue;)Ljavafx/beans/binding/NumberBinding;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavafx/beans/binding/NumberExpressionBase;
    return-object v0
.end method
