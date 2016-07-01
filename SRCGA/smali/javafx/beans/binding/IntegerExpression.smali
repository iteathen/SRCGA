.class public abstract Ljavafx/beans/binding/IntegerExpression;
.super Ljavafx/beans/binding/NumberExpressionBase;
.source "IntegerExpression.java"

# interfaces
.implements Ljavafx/beans/value/ObservableIntegerValue;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 44
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/IntegerExpression;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/beans/binding/NumberExpressionBase;-><init>()V

    return-void
.end method

.method public static integerExpression(Ljavafx/beans/value/ObservableIntegerValue;)Ljavafx/beans/binding/IntegerExpression;
    .locals 5

    .prologue
    .line 89
    move-object v0, p0

    .local v0, "value":Ljavafx/beans/value/ObservableIntegerValue;
    move-object v1, v0

    if-nez v1, :cond_0

    .line 90
    new-instance v1, Ljava/lang/NullPointerException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string v3, "Value must be specified."

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 92
    :cond_0
    move-object v1, v0

    instance-of v1, v1, Ljavafx/beans/binding/IntegerExpression;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Ljavafx/beans/binding/IntegerExpression;

    :goto_0
    move-object v0, v1

    .end local v0    # "value":Ljavafx/beans/value/ObservableIntegerValue;
    return-object v0

    .restart local v0    # "value":Ljavafx/beans/value/ObservableIntegerValue;
    :cond_1
    new-instance v1, Ljavafx/beans/binding/IntegerExpression$1;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Ljavafx/beans/binding/IntegerExpression$1;-><init>(Ljavafx/beans/value/ObservableIntegerValue;)V

    goto :goto_0
.end method

.method public static integerExpression(Ljavafx/beans/value/ObservableValue;)Ljavafx/beans/binding/IntegerExpression;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Number;",
            ">(",
            "Ljavafx/beans/value/ObservableValue",
            "<TT;>;)",
            "Ljavafx/beans/binding/IntegerExpression;"
        }
    .end annotation

    .prologue
    .line 146
    move-object v0, p0

    .local v0, "value":Ljavafx/beans/value/ObservableValue;, "Ljavafx/beans/value/ObservableValue<TT;>;"
    move-object v1, v0

    if-nez v1, :cond_0

    .line 147
    new-instance v1, Ljava/lang/NullPointerException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string v3, "Value must be specified."

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 149
    :cond_0
    move-object v1, v0

    instance-of v1, v1, Ljavafx/beans/binding/IntegerExpression;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Ljavafx/beans/binding/IntegerExpression;

    :goto_0
    move-object v0, v1

    .end local v0    # "value":Ljavafx/beans/value/ObservableValue;, "Ljavafx/beans/value/ObservableValue<TT;>;"
    return-object v0

    .restart local v0    # "value":Ljavafx/beans/value/ObservableValue;, "Ljavafx/beans/value/ObservableValue<TT;>;"
    :cond_1
    new-instance v1, Ljavafx/beans/binding/IntegerExpression$2;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Ljavafx/beans/binding/IntegerExpression$2;-><init>(Ljavafx/beans/value/ObservableValue;)V

    goto :goto_0
.end method


# virtual methods
.method public add(D)Ljavafx/beans/binding/DoubleBinding;
    .locals 7

    .prologue
    .line 182
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/IntegerExpression;
    move-wide v1, p1

    .local v1, "other":D
    move-object v3, v0

    move-wide v4, v1

    invoke-static {v3, v4, v5}, Ljavafx/beans/binding/Bindings;->add(Ljavafx/beans/value/ObservableNumberValue;D)Ljavafx/beans/binding/DoubleBinding;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Ljavafx/beans/binding/IntegerExpression;
    return-object v0
.end method

.method public add(F)Ljavafx/beans/binding/FloatBinding;
    .locals 4

    .prologue
    .line 187
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/IntegerExpression;
    move v1, p1

    .local v1, "other":F
    move-object v2, v0

    move v3, v1

    invoke-static {v2, v3}, Ljavafx/beans/binding/Bindings;->add(Ljavafx/beans/value/ObservableNumberValue;F)Ljavafx/beans/binding/NumberBinding;

    move-result-object v2

    check-cast v2, Ljavafx/beans/binding/FloatBinding;

    move-object v0, v2

    .end local v0    # "this":Ljavafx/beans/binding/IntegerExpression;
    return-object v0
.end method

.method public add(I)Ljavafx/beans/binding/IntegerBinding;
    .locals 4

    .prologue
    .line 197
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/IntegerExpression;
    move v1, p1

    .local v1, "other":I
    move-object v2, v0

    move v3, v1

    invoke-static {v2, v3}, Ljavafx/beans/binding/Bindings;->add(Ljavafx/beans/value/ObservableNumberValue;I)Ljavafx/beans/binding/NumberBinding;

    move-result-object v2

    check-cast v2, Ljavafx/beans/binding/IntegerBinding;

    move-object v0, v2

    .end local v0    # "this":Ljavafx/beans/binding/IntegerExpression;
    return-object v0
.end method

.method public add(J)Ljavafx/beans/binding/LongBinding;
    .locals 7

    .prologue
    .line 192
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/IntegerExpression;
    move-wide v1, p1

    .local v1, "other":J
    move-object v3, v0

    move-wide v4, v1

    invoke-static {v3, v4, v5}, Ljavafx/beans/binding/Bindings;->add(Ljavafx/beans/value/ObservableNumberValue;J)Ljavafx/beans/binding/NumberBinding;

    move-result-object v3

    check-cast v3, Ljavafx/beans/binding/LongBinding;

    move-object v0, v3

    .end local v0    # "this":Ljavafx/beans/binding/IntegerExpression;
    return-object v0
.end method

.method public bridge synthetic add(D)Ljavafx/beans/binding/NumberBinding;
    .locals 7

    .prologue
    .line 44
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/IntegerExpression;
    move-wide v1, p1

    move-object v3, v0

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/beans/binding/IntegerExpression;->add(D)Ljavafx/beans/binding/DoubleBinding;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Ljavafx/beans/binding/IntegerExpression;
    return-object v0
.end method

.method public bridge synthetic add(F)Ljavafx/beans/binding/NumberBinding;
    .locals 4

    .prologue
    .line 44
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/IntegerExpression;
    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/binding/IntegerExpression;->add(F)Ljavafx/beans/binding/FloatBinding;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavafx/beans/binding/IntegerExpression;
    return-object v0
.end method

.method public bridge synthetic add(I)Ljavafx/beans/binding/NumberBinding;
    .locals 4

    .prologue
    .line 44
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/IntegerExpression;
    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/binding/IntegerExpression;->add(I)Ljavafx/beans/binding/IntegerBinding;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavafx/beans/binding/IntegerExpression;
    return-object v0
.end method

.method public bridge synthetic add(J)Ljavafx/beans/binding/NumberBinding;
    .locals 7

    .prologue
    .line 44
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/IntegerExpression;
    move-wide v1, p1

    move-object v3, v0

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/beans/binding/IntegerExpression;->add(J)Ljavafx/beans/binding/LongBinding;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Ljavafx/beans/binding/IntegerExpression;
    return-object v0
.end method

.method public asObject()Ljavafx/beans/binding/ObjectExpression;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/binding/ObjectExpression",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 270
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/IntegerExpression;
    new-instance v1, Ljavafx/beans/binding/IntegerExpression$3;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Ljavafx/beans/binding/IntegerExpression$3;-><init>(Ljavafx/beans/binding/IntegerExpression;)V

    move-object v0, v1

    .end local v0    # "this":Ljavafx/beans/binding/IntegerExpression;
    return-object v0
.end method

.method public divide(D)Ljavafx/beans/binding/DoubleBinding;
    .locals 7

    .prologue
    .line 242
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/IntegerExpression;
    move-wide v1, p1

    .local v1, "other":D
    move-object v3, v0

    move-wide v4, v1

    invoke-static {v3, v4, v5}, Ljavafx/beans/binding/Bindings;->divide(Ljavafx/beans/value/ObservableNumberValue;D)Ljavafx/beans/binding/DoubleBinding;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Ljavafx/beans/binding/IntegerExpression;
    return-object v0
.end method

.method public divide(F)Ljavafx/beans/binding/FloatBinding;
    .locals 4

    .prologue
    .line 247
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/IntegerExpression;
    move v1, p1

    .local v1, "other":F
    move-object v2, v0

    move v3, v1

    invoke-static {v2, v3}, Ljavafx/beans/binding/Bindings;->divide(Ljavafx/beans/value/ObservableNumberValue;F)Ljavafx/beans/binding/NumberBinding;

    move-result-object v2

    check-cast v2, Ljavafx/beans/binding/FloatBinding;

    move-object v0, v2

    .end local v0    # "this":Ljavafx/beans/binding/IntegerExpression;
    return-object v0
.end method

.method public divide(I)Ljavafx/beans/binding/IntegerBinding;
    .locals 4

    .prologue
    .line 257
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/IntegerExpression;
    move v1, p1

    .local v1, "other":I
    move-object v2, v0

    move v3, v1

    invoke-static {v2, v3}, Ljavafx/beans/binding/Bindings;->divide(Ljavafx/beans/value/ObservableNumberValue;I)Ljavafx/beans/binding/NumberBinding;

    move-result-object v2

    check-cast v2, Ljavafx/beans/binding/IntegerBinding;

    move-object v0, v2

    .end local v0    # "this":Ljavafx/beans/binding/IntegerExpression;
    return-object v0
.end method

.method public divide(J)Ljavafx/beans/binding/LongBinding;
    .locals 7

    .prologue
    .line 252
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/IntegerExpression;
    move-wide v1, p1

    .local v1, "other":J
    move-object v3, v0

    move-wide v4, v1

    invoke-static {v3, v4, v5}, Ljavafx/beans/binding/Bindings;->divide(Ljavafx/beans/value/ObservableNumberValue;J)Ljavafx/beans/binding/NumberBinding;

    move-result-object v3

    check-cast v3, Ljavafx/beans/binding/LongBinding;

    move-object v0, v3

    .end local v0    # "this":Ljavafx/beans/binding/IntegerExpression;
    return-object v0
.end method

.method public bridge synthetic divide(D)Ljavafx/beans/binding/NumberBinding;
    .locals 7

    .prologue
    .line 44
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/IntegerExpression;
    move-wide v1, p1

    move-object v3, v0

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/beans/binding/IntegerExpression;->divide(D)Ljavafx/beans/binding/DoubleBinding;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Ljavafx/beans/binding/IntegerExpression;
    return-object v0
.end method

.method public bridge synthetic divide(F)Ljavafx/beans/binding/NumberBinding;
    .locals 4

    .prologue
    .line 44
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/IntegerExpression;
    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/binding/IntegerExpression;->divide(F)Ljavafx/beans/binding/FloatBinding;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavafx/beans/binding/IntegerExpression;
    return-object v0
.end method

.method public bridge synthetic divide(I)Ljavafx/beans/binding/NumberBinding;
    .locals 4

    .prologue
    .line 44
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/IntegerExpression;
    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/binding/IntegerExpression;->divide(I)Ljavafx/beans/binding/IntegerBinding;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavafx/beans/binding/IntegerExpression;
    return-object v0
.end method

.method public bridge synthetic divide(J)Ljavafx/beans/binding/NumberBinding;
    .locals 7

    .prologue
    .line 44
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/IntegerExpression;
    move-wide v1, p1

    move-object v3, v0

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/beans/binding/IntegerExpression;->divide(J)Ljavafx/beans/binding/LongBinding;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Ljavafx/beans/binding/IntegerExpression;
    return-object v0
.end method

.method public doubleValue()D
    .locals 3

    .prologue
    .line 64
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/IntegerExpression;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/beans/binding/IntegerExpression;->get()I

    move-result v1

    int-to-double v1, v1

    move-wide v0, v1

    .end local v0    # "this":Ljavafx/beans/binding/IntegerExpression;
    return-wide v0
.end method

.method public floatValue()F
    .locals 2

    .prologue
    .line 59
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/IntegerExpression;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/beans/binding/IntegerExpression;->get()I

    move-result v1

    int-to-float v1, v1

    move v0, v1

    .end local v0    # "this":Ljavafx/beans/binding/IntegerExpression;
    return v0
.end method

.method public getValue()Ljava/lang/Integer;
    .locals 2

    .prologue
    .line 69
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/IntegerExpression;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/beans/binding/IntegerExpression;->get()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/beans/binding/IntegerExpression;
    return-object v0
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 44
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/IntegerExpression;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/beans/binding/IntegerExpression;->getValue()Ljava/lang/Integer;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/beans/binding/IntegerExpression;
    return-object v0
.end method

.method public intValue()I
    .locals 2

    .prologue
    .line 49
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/IntegerExpression;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/beans/binding/IntegerExpression;->get()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Ljavafx/beans/binding/IntegerExpression;
    return v0
.end method

.method public longValue()J
    .locals 3

    .prologue
    .line 54
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/IntegerExpression;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/beans/binding/IntegerExpression;->get()I

    move-result v1

    int-to-long v1, v1

    move-wide v0, v1

    .end local v0    # "this":Ljavafx/beans/binding/IntegerExpression;
    return-wide v0
.end method

.method public multiply(D)Ljavafx/beans/binding/DoubleBinding;
    .locals 7

    .prologue
    .line 222
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/IntegerExpression;
    move-wide v1, p1

    .local v1, "other":D
    move-object v3, v0

    move-wide v4, v1

    invoke-static {v3, v4, v5}, Ljavafx/beans/binding/Bindings;->multiply(Ljavafx/beans/value/ObservableNumberValue;D)Ljavafx/beans/binding/DoubleBinding;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Ljavafx/beans/binding/IntegerExpression;
    return-object v0
.end method

.method public multiply(F)Ljavafx/beans/binding/FloatBinding;
    .locals 4

    .prologue
    .line 227
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/IntegerExpression;
    move v1, p1

    .local v1, "other":F
    move-object v2, v0

    move v3, v1

    invoke-static {v2, v3}, Ljavafx/beans/binding/Bindings;->multiply(Ljavafx/beans/value/ObservableNumberValue;F)Ljavafx/beans/binding/NumberBinding;

    move-result-object v2

    check-cast v2, Ljavafx/beans/binding/FloatBinding;

    move-object v0, v2

    .end local v0    # "this":Ljavafx/beans/binding/IntegerExpression;
    return-object v0
.end method

.method public multiply(I)Ljavafx/beans/binding/IntegerBinding;
    .locals 4

    .prologue
    .line 237
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/IntegerExpression;
    move v1, p1

    .local v1, "other":I
    move-object v2, v0

    move v3, v1

    invoke-static {v2, v3}, Ljavafx/beans/binding/Bindings;->multiply(Ljavafx/beans/value/ObservableNumberValue;I)Ljavafx/beans/binding/NumberBinding;

    move-result-object v2

    check-cast v2, Ljavafx/beans/binding/IntegerBinding;

    move-object v0, v2

    .end local v0    # "this":Ljavafx/beans/binding/IntegerExpression;
    return-object v0
.end method

.method public multiply(J)Ljavafx/beans/binding/LongBinding;
    .locals 7

    .prologue
    .line 232
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/IntegerExpression;
    move-wide v1, p1

    .local v1, "other":J
    move-object v3, v0

    move-wide v4, v1

    invoke-static {v3, v4, v5}, Ljavafx/beans/binding/Bindings;->multiply(Ljavafx/beans/value/ObservableNumberValue;J)Ljavafx/beans/binding/NumberBinding;

    move-result-object v3

    check-cast v3, Ljavafx/beans/binding/LongBinding;

    move-object v0, v3

    .end local v0    # "this":Ljavafx/beans/binding/IntegerExpression;
    return-object v0
.end method

.method public bridge synthetic multiply(D)Ljavafx/beans/binding/NumberBinding;
    .locals 7

    .prologue
    .line 44
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/IntegerExpression;
    move-wide v1, p1

    move-object v3, v0

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/beans/binding/IntegerExpression;->multiply(D)Ljavafx/beans/binding/DoubleBinding;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Ljavafx/beans/binding/IntegerExpression;
    return-object v0
.end method

.method public bridge synthetic multiply(F)Ljavafx/beans/binding/NumberBinding;
    .locals 4

    .prologue
    .line 44
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/IntegerExpression;
    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/binding/IntegerExpression;->multiply(F)Ljavafx/beans/binding/FloatBinding;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavafx/beans/binding/IntegerExpression;
    return-object v0
.end method

.method public bridge synthetic multiply(I)Ljavafx/beans/binding/NumberBinding;
    .locals 4

    .prologue
    .line 44
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/IntegerExpression;
    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/binding/IntegerExpression;->multiply(I)Ljavafx/beans/binding/IntegerBinding;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavafx/beans/binding/IntegerExpression;
    return-object v0
.end method

.method public bridge synthetic multiply(J)Ljavafx/beans/binding/NumberBinding;
    .locals 7

    .prologue
    .line 44
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/IntegerExpression;
    move-wide v1, p1

    move-object v3, v0

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/beans/binding/IntegerExpression;->multiply(J)Ljavafx/beans/binding/LongBinding;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Ljavafx/beans/binding/IntegerExpression;
    return-object v0
.end method

.method public negate()Ljavafx/beans/binding/IntegerBinding;
    .locals 2

    .prologue
    .line 177
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/IntegerExpression;
    move-object v1, v0

    invoke-static {v1}, Ljavafx/beans/binding/Bindings;->negate(Ljavafx/beans/value/ObservableNumberValue;)Ljavafx/beans/binding/NumberBinding;

    move-result-object v1

    check-cast v1, Ljavafx/beans/binding/IntegerBinding;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/beans/binding/IntegerExpression;
    return-object v0
.end method

.method public bridge synthetic negate()Ljavafx/beans/binding/NumberBinding;
    .locals 2

    .prologue
    .line 44
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/IntegerExpression;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/beans/binding/IntegerExpression;->negate()Ljavafx/beans/binding/IntegerBinding;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/beans/binding/IntegerExpression;
    return-object v0
.end method

.method public subtract(D)Ljavafx/beans/binding/DoubleBinding;
    .locals 7

    .prologue
    .line 202
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/IntegerExpression;
    move-wide v1, p1

    .local v1, "other":D
    move-object v3, v0

    move-wide v4, v1

    invoke-static {v3, v4, v5}, Ljavafx/beans/binding/Bindings;->subtract(Ljavafx/beans/value/ObservableNumberValue;D)Ljavafx/beans/binding/DoubleBinding;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Ljavafx/beans/binding/IntegerExpression;
    return-object v0
.end method

.method public subtract(F)Ljavafx/beans/binding/FloatBinding;
    .locals 4

    .prologue
    .line 207
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/IntegerExpression;
    move v1, p1

    .local v1, "other":F
    move-object v2, v0

    move v3, v1

    invoke-static {v2, v3}, Ljavafx/beans/binding/Bindings;->subtract(Ljavafx/beans/value/ObservableNumberValue;F)Ljavafx/beans/binding/NumberBinding;

    move-result-object v2

    check-cast v2, Ljavafx/beans/binding/FloatBinding;

    move-object v0, v2

    .end local v0    # "this":Ljavafx/beans/binding/IntegerExpression;
    return-object v0
.end method

.method public subtract(I)Ljavafx/beans/binding/IntegerBinding;
    .locals 4

    .prologue
    .line 217
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/IntegerExpression;
    move v1, p1

    .local v1, "other":I
    move-object v2, v0

    move v3, v1

    invoke-static {v2, v3}, Ljavafx/beans/binding/Bindings;->subtract(Ljavafx/beans/value/ObservableNumberValue;I)Ljavafx/beans/binding/NumberBinding;

    move-result-object v2

    check-cast v2, Ljavafx/beans/binding/IntegerBinding;

    move-object v0, v2

    .end local v0    # "this":Ljavafx/beans/binding/IntegerExpression;
    return-object v0
.end method

.method public subtract(J)Ljavafx/beans/binding/LongBinding;
    .locals 7

    .prologue
    .line 212
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/IntegerExpression;
    move-wide v1, p1

    .local v1, "other":J
    move-object v3, v0

    move-wide v4, v1

    invoke-static {v3, v4, v5}, Ljavafx/beans/binding/Bindings;->subtract(Ljavafx/beans/value/ObservableNumberValue;J)Ljavafx/beans/binding/NumberBinding;

    move-result-object v3

    check-cast v3, Ljavafx/beans/binding/LongBinding;

    move-object v0, v3

    .end local v0    # "this":Ljavafx/beans/binding/IntegerExpression;
    return-object v0
.end method

.method public bridge synthetic subtract(D)Ljavafx/beans/binding/NumberBinding;
    .locals 7

    .prologue
    .line 44
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/IntegerExpression;
    move-wide v1, p1

    move-object v3, v0

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/beans/binding/IntegerExpression;->subtract(D)Ljavafx/beans/binding/DoubleBinding;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Ljavafx/beans/binding/IntegerExpression;
    return-object v0
.end method

.method public bridge synthetic subtract(F)Ljavafx/beans/binding/NumberBinding;
    .locals 4

    .prologue
    .line 44
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/IntegerExpression;
    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/binding/IntegerExpression;->subtract(F)Ljavafx/beans/binding/FloatBinding;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavafx/beans/binding/IntegerExpression;
    return-object v0
.end method

.method public bridge synthetic subtract(I)Ljavafx/beans/binding/NumberBinding;
    .locals 4

    .prologue
    .line 44
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/IntegerExpression;
    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/binding/IntegerExpression;->subtract(I)Ljavafx/beans/binding/IntegerBinding;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavafx/beans/binding/IntegerExpression;
    return-object v0
.end method

.method public bridge synthetic subtract(J)Ljavafx/beans/binding/NumberBinding;
    .locals 7

    .prologue
    .line 44
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/IntegerExpression;
    move-wide v1, p1

    move-object v3, v0

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/beans/binding/IntegerExpression;->subtract(J)Ljavafx/beans/binding/LongBinding;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Ljavafx/beans/binding/IntegerExpression;
    return-object v0
.end method
