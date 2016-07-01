.class public abstract Ljavafx/beans/binding/LongExpression;
.super Ljavafx/beans/binding/NumberExpressionBase;
.source "LongExpression.java"

# interfaces
.implements Ljavafx/beans/value/ObservableLongValue;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 43
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/LongExpression;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/beans/binding/NumberExpressionBase;-><init>()V

    return-void
.end method

.method public static longExpression(Ljavafx/beans/value/ObservableLongValue;)Ljavafx/beans/binding/LongExpression;
    .locals 5

    .prologue
    .line 86
    move-object v0, p0

    .local v0, "value":Ljavafx/beans/value/ObservableLongValue;
    move-object v1, v0

    if-nez v1, :cond_0

    .line 87
    new-instance v1, Ljava/lang/NullPointerException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string v3, "Value must be specified."

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 89
    :cond_0
    move-object v1, v0

    instance-of v1, v1, Ljavafx/beans/binding/LongExpression;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Ljavafx/beans/binding/LongExpression;

    :goto_0
    move-object v0, v1

    .end local v0    # "value":Ljavafx/beans/value/ObservableLongValue;
    return-object v0

    .restart local v0    # "value":Ljavafx/beans/value/ObservableLongValue;
    :cond_1
    new-instance v1, Ljavafx/beans/binding/LongExpression$1;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Ljavafx/beans/binding/LongExpression$1;-><init>(Ljavafx/beans/value/ObservableLongValue;)V

    goto :goto_0
.end method

.method public static longExpression(Ljavafx/beans/value/ObservableValue;)Ljavafx/beans/binding/LongExpression;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Number;",
            ">(",
            "Ljavafx/beans/value/ObservableValue",
            "<TT;>;)",
            "Ljavafx/beans/binding/LongExpression;"
        }
    .end annotation

    .prologue
    .line 143
    move-object v0, p0

    .local v0, "value":Ljavafx/beans/value/ObservableValue;, "Ljavafx/beans/value/ObservableValue<TT;>;"
    move-object v1, v0

    if-nez v1, :cond_0

    .line 144
    new-instance v1, Ljava/lang/NullPointerException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string v3, "Value must be specified."

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 146
    :cond_0
    move-object v1, v0

    instance-of v1, v1, Ljavafx/beans/binding/LongExpression;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Ljavafx/beans/binding/LongExpression;

    :goto_0
    move-object v0, v1

    .end local v0    # "value":Ljavafx/beans/value/ObservableValue;, "Ljavafx/beans/value/ObservableValue<TT;>;"
    return-object v0

    .restart local v0    # "value":Ljavafx/beans/value/ObservableValue;, "Ljavafx/beans/value/ObservableValue<TT;>;"
    :cond_1
    new-instance v1, Ljavafx/beans/binding/LongExpression$2;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Ljavafx/beans/binding/LongExpression$2;-><init>(Ljavafx/beans/value/ObservableValue;)V

    goto :goto_0
.end method


# virtual methods
.method public add(D)Ljavafx/beans/binding/DoubleBinding;
    .locals 7

    .prologue
    .line 179
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/LongExpression;
    move-wide v1, p1

    .local v1, "other":D
    move-object v3, v0

    move-wide v4, v1

    invoke-static {v3, v4, v5}, Ljavafx/beans/binding/Bindings;->add(Ljavafx/beans/value/ObservableNumberValue;D)Ljavafx/beans/binding/DoubleBinding;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Ljavafx/beans/binding/LongExpression;
    return-object v0
.end method

.method public add(F)Ljavafx/beans/binding/FloatBinding;
    .locals 4

    .prologue
    .line 184
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/LongExpression;
    move v1, p1

    .local v1, "other":F
    move-object v2, v0

    move v3, v1

    invoke-static {v2, v3}, Ljavafx/beans/binding/Bindings;->add(Ljavafx/beans/value/ObservableNumberValue;F)Ljavafx/beans/binding/NumberBinding;

    move-result-object v2

    check-cast v2, Ljavafx/beans/binding/FloatBinding;

    move-object v0, v2

    .end local v0    # "this":Ljavafx/beans/binding/LongExpression;
    return-object v0
.end method

.method public add(I)Ljavafx/beans/binding/LongBinding;
    .locals 4

    .prologue
    .line 194
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/LongExpression;
    move v1, p1

    .local v1, "other":I
    move-object v2, v0

    move v3, v1

    invoke-static {v2, v3}, Ljavafx/beans/binding/Bindings;->add(Ljavafx/beans/value/ObservableNumberValue;I)Ljavafx/beans/binding/NumberBinding;

    move-result-object v2

    check-cast v2, Ljavafx/beans/binding/LongBinding;

    move-object v0, v2

    .end local v0    # "this":Ljavafx/beans/binding/LongExpression;
    return-object v0
.end method

.method public add(J)Ljavafx/beans/binding/LongBinding;
    .locals 7

    .prologue
    .line 189
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/LongExpression;
    move-wide v1, p1

    .local v1, "other":J
    move-object v3, v0

    move-wide v4, v1

    invoke-static {v3, v4, v5}, Ljavafx/beans/binding/Bindings;->add(Ljavafx/beans/value/ObservableNumberValue;J)Ljavafx/beans/binding/NumberBinding;

    move-result-object v3

    check-cast v3, Ljavafx/beans/binding/LongBinding;

    move-object v0, v3

    .end local v0    # "this":Ljavafx/beans/binding/LongExpression;
    return-object v0
.end method

.method public bridge synthetic add(D)Ljavafx/beans/binding/NumberBinding;
    .locals 7

    .prologue
    .line 43
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/LongExpression;
    move-wide v1, p1

    move-object v3, v0

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/beans/binding/LongExpression;->add(D)Ljavafx/beans/binding/DoubleBinding;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Ljavafx/beans/binding/LongExpression;
    return-object v0
.end method

.method public bridge synthetic add(F)Ljavafx/beans/binding/NumberBinding;
    .locals 4

    .prologue
    .line 43
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/LongExpression;
    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/binding/LongExpression;->add(F)Ljavafx/beans/binding/FloatBinding;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavafx/beans/binding/LongExpression;
    return-object v0
.end method

.method public bridge synthetic add(I)Ljavafx/beans/binding/NumberBinding;
    .locals 4

    .prologue
    .line 43
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/LongExpression;
    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/binding/LongExpression;->add(I)Ljavafx/beans/binding/LongBinding;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavafx/beans/binding/LongExpression;
    return-object v0
.end method

.method public bridge synthetic add(J)Ljavafx/beans/binding/NumberBinding;
    .locals 7

    .prologue
    .line 43
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/LongExpression;
    move-wide v1, p1

    move-object v3, v0

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/beans/binding/LongExpression;->add(J)Ljavafx/beans/binding/LongBinding;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Ljavafx/beans/binding/LongExpression;
    return-object v0
.end method

.method public asObject()Ljavafx/beans/binding/ObjectExpression;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/binding/ObjectExpression",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 267
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/LongExpression;
    new-instance v1, Ljavafx/beans/binding/LongExpression$3;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Ljavafx/beans/binding/LongExpression$3;-><init>(Ljavafx/beans/binding/LongExpression;)V

    move-object v0, v1

    .end local v0    # "this":Ljavafx/beans/binding/LongExpression;
    return-object v0
.end method

.method public divide(D)Ljavafx/beans/binding/DoubleBinding;
    .locals 7

    .prologue
    .line 239
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/LongExpression;
    move-wide v1, p1

    .local v1, "other":D
    move-object v3, v0

    move-wide v4, v1

    invoke-static {v3, v4, v5}, Ljavafx/beans/binding/Bindings;->divide(Ljavafx/beans/value/ObservableNumberValue;D)Ljavafx/beans/binding/DoubleBinding;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Ljavafx/beans/binding/LongExpression;
    return-object v0
.end method

.method public divide(F)Ljavafx/beans/binding/FloatBinding;
    .locals 4

    .prologue
    .line 244
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/LongExpression;
    move v1, p1

    .local v1, "other":F
    move-object v2, v0

    move v3, v1

    invoke-static {v2, v3}, Ljavafx/beans/binding/Bindings;->divide(Ljavafx/beans/value/ObservableNumberValue;F)Ljavafx/beans/binding/NumberBinding;

    move-result-object v2

    check-cast v2, Ljavafx/beans/binding/FloatBinding;

    move-object v0, v2

    .end local v0    # "this":Ljavafx/beans/binding/LongExpression;
    return-object v0
.end method

.method public divide(I)Ljavafx/beans/binding/LongBinding;
    .locals 4

    .prologue
    .line 254
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/LongExpression;
    move v1, p1

    .local v1, "other":I
    move-object v2, v0

    move v3, v1

    invoke-static {v2, v3}, Ljavafx/beans/binding/Bindings;->divide(Ljavafx/beans/value/ObservableNumberValue;I)Ljavafx/beans/binding/NumberBinding;

    move-result-object v2

    check-cast v2, Ljavafx/beans/binding/LongBinding;

    move-object v0, v2

    .end local v0    # "this":Ljavafx/beans/binding/LongExpression;
    return-object v0
.end method

.method public divide(J)Ljavafx/beans/binding/LongBinding;
    .locals 7

    .prologue
    .line 249
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/LongExpression;
    move-wide v1, p1

    .local v1, "other":J
    move-object v3, v0

    move-wide v4, v1

    invoke-static {v3, v4, v5}, Ljavafx/beans/binding/Bindings;->divide(Ljavafx/beans/value/ObservableNumberValue;J)Ljavafx/beans/binding/NumberBinding;

    move-result-object v3

    check-cast v3, Ljavafx/beans/binding/LongBinding;

    move-object v0, v3

    .end local v0    # "this":Ljavafx/beans/binding/LongExpression;
    return-object v0
.end method

.method public bridge synthetic divide(D)Ljavafx/beans/binding/NumberBinding;
    .locals 7

    .prologue
    .line 43
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/LongExpression;
    move-wide v1, p1

    move-object v3, v0

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/beans/binding/LongExpression;->divide(D)Ljavafx/beans/binding/DoubleBinding;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Ljavafx/beans/binding/LongExpression;
    return-object v0
.end method

.method public bridge synthetic divide(F)Ljavafx/beans/binding/NumberBinding;
    .locals 4

    .prologue
    .line 43
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/LongExpression;
    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/binding/LongExpression;->divide(F)Ljavafx/beans/binding/FloatBinding;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavafx/beans/binding/LongExpression;
    return-object v0
.end method

.method public bridge synthetic divide(I)Ljavafx/beans/binding/NumberBinding;
    .locals 4

    .prologue
    .line 43
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/LongExpression;
    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/binding/LongExpression;->divide(I)Ljavafx/beans/binding/LongBinding;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavafx/beans/binding/LongExpression;
    return-object v0
.end method

.method public bridge synthetic divide(J)Ljavafx/beans/binding/NumberBinding;
    .locals 7

    .prologue
    .line 43
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/LongExpression;
    move-wide v1, p1

    move-object v3, v0

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/beans/binding/LongExpression;->divide(J)Ljavafx/beans/binding/LongBinding;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Ljavafx/beans/binding/LongExpression;
    return-object v0
.end method

.method public doubleValue()D
    .locals 4

    .prologue
    .line 63
    move-object v1, p0

    .local v1, "this":Ljavafx/beans/binding/LongExpression;
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/beans/binding/LongExpression;->get()J

    move-result-wide v2

    long-to-double v2, v2

    move-wide v1, v2

    .end local v1    # "this":Ljavafx/beans/binding/LongExpression;
    return-wide v1
.end method

.method public floatValue()F
    .locals 4

    .prologue
    .line 58
    move-object v1, p0

    .local v1, "this":Ljavafx/beans/binding/LongExpression;
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/beans/binding/LongExpression;->get()J

    move-result-wide v2

    long-to-float v2, v2

    move v1, v2

    .end local v1    # "this":Ljavafx/beans/binding/LongExpression;
    return v1
.end method

.method public getValue()Ljava/lang/Long;
    .locals 4

    .prologue
    .line 68
    move-object v1, p0

    .local v1, "this":Ljavafx/beans/binding/LongExpression;
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/beans/binding/LongExpression;->get()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object v1, v2

    .end local v1    # "this":Ljavafx/beans/binding/LongExpression;
    return-object v1
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 43
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/LongExpression;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/beans/binding/LongExpression;->getValue()Ljava/lang/Long;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/beans/binding/LongExpression;
    return-object v0
.end method

.method public intValue()I
    .locals 4

    .prologue
    .line 48
    move-object v1, p0

    .local v1, "this":Ljavafx/beans/binding/LongExpression;
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/beans/binding/LongExpression;->get()J

    move-result-wide v2

    long-to-int v2, v2

    move v1, v2

    .end local v1    # "this":Ljavafx/beans/binding/LongExpression;
    return v1
.end method

.method public longValue()J
    .locals 3

    .prologue
    .line 53
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/LongExpression;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/beans/binding/LongExpression;->get()J

    move-result-wide v1

    move-wide v0, v1

    .end local v0    # "this":Ljavafx/beans/binding/LongExpression;
    return-wide v0
.end method

.method public multiply(D)Ljavafx/beans/binding/DoubleBinding;
    .locals 7

    .prologue
    .line 219
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/LongExpression;
    move-wide v1, p1

    .local v1, "other":D
    move-object v3, v0

    move-wide v4, v1

    invoke-static {v3, v4, v5}, Ljavafx/beans/binding/Bindings;->multiply(Ljavafx/beans/value/ObservableNumberValue;D)Ljavafx/beans/binding/DoubleBinding;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Ljavafx/beans/binding/LongExpression;
    return-object v0
.end method

.method public multiply(F)Ljavafx/beans/binding/FloatBinding;
    .locals 4

    .prologue
    .line 224
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/LongExpression;
    move v1, p1

    .local v1, "other":F
    move-object v2, v0

    move v3, v1

    invoke-static {v2, v3}, Ljavafx/beans/binding/Bindings;->multiply(Ljavafx/beans/value/ObservableNumberValue;F)Ljavafx/beans/binding/NumberBinding;

    move-result-object v2

    check-cast v2, Ljavafx/beans/binding/FloatBinding;

    move-object v0, v2

    .end local v0    # "this":Ljavafx/beans/binding/LongExpression;
    return-object v0
.end method

.method public multiply(I)Ljavafx/beans/binding/LongBinding;
    .locals 4

    .prologue
    .line 234
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/LongExpression;
    move v1, p1

    .local v1, "other":I
    move-object v2, v0

    move v3, v1

    invoke-static {v2, v3}, Ljavafx/beans/binding/Bindings;->multiply(Ljavafx/beans/value/ObservableNumberValue;I)Ljavafx/beans/binding/NumberBinding;

    move-result-object v2

    check-cast v2, Ljavafx/beans/binding/LongBinding;

    move-object v0, v2

    .end local v0    # "this":Ljavafx/beans/binding/LongExpression;
    return-object v0
.end method

.method public multiply(J)Ljavafx/beans/binding/LongBinding;
    .locals 7

    .prologue
    .line 229
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/LongExpression;
    move-wide v1, p1

    .local v1, "other":J
    move-object v3, v0

    move-wide v4, v1

    invoke-static {v3, v4, v5}, Ljavafx/beans/binding/Bindings;->multiply(Ljavafx/beans/value/ObservableNumberValue;J)Ljavafx/beans/binding/NumberBinding;

    move-result-object v3

    check-cast v3, Ljavafx/beans/binding/LongBinding;

    move-object v0, v3

    .end local v0    # "this":Ljavafx/beans/binding/LongExpression;
    return-object v0
.end method

.method public bridge synthetic multiply(D)Ljavafx/beans/binding/NumberBinding;
    .locals 7

    .prologue
    .line 43
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/LongExpression;
    move-wide v1, p1

    move-object v3, v0

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/beans/binding/LongExpression;->multiply(D)Ljavafx/beans/binding/DoubleBinding;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Ljavafx/beans/binding/LongExpression;
    return-object v0
.end method

.method public bridge synthetic multiply(F)Ljavafx/beans/binding/NumberBinding;
    .locals 4

    .prologue
    .line 43
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/LongExpression;
    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/binding/LongExpression;->multiply(F)Ljavafx/beans/binding/FloatBinding;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavafx/beans/binding/LongExpression;
    return-object v0
.end method

.method public bridge synthetic multiply(I)Ljavafx/beans/binding/NumberBinding;
    .locals 4

    .prologue
    .line 43
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/LongExpression;
    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/binding/LongExpression;->multiply(I)Ljavafx/beans/binding/LongBinding;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavafx/beans/binding/LongExpression;
    return-object v0
.end method

.method public bridge synthetic multiply(J)Ljavafx/beans/binding/NumberBinding;
    .locals 7

    .prologue
    .line 43
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/LongExpression;
    move-wide v1, p1

    move-object v3, v0

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/beans/binding/LongExpression;->multiply(J)Ljavafx/beans/binding/LongBinding;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Ljavafx/beans/binding/LongExpression;
    return-object v0
.end method

.method public negate()Ljavafx/beans/binding/LongBinding;
    .locals 2

    .prologue
    .line 174
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/LongExpression;
    move-object v1, v0

    invoke-static {v1}, Ljavafx/beans/binding/Bindings;->negate(Ljavafx/beans/value/ObservableNumberValue;)Ljavafx/beans/binding/NumberBinding;

    move-result-object v1

    check-cast v1, Ljavafx/beans/binding/LongBinding;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/beans/binding/LongExpression;
    return-object v0
.end method

.method public bridge synthetic negate()Ljavafx/beans/binding/NumberBinding;
    .locals 2

    .prologue
    .line 43
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/LongExpression;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/beans/binding/LongExpression;->negate()Ljavafx/beans/binding/LongBinding;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/beans/binding/LongExpression;
    return-object v0
.end method

.method public subtract(D)Ljavafx/beans/binding/DoubleBinding;
    .locals 7

    .prologue
    .line 199
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/LongExpression;
    move-wide v1, p1

    .local v1, "other":D
    move-object v3, v0

    move-wide v4, v1

    invoke-static {v3, v4, v5}, Ljavafx/beans/binding/Bindings;->subtract(Ljavafx/beans/value/ObservableNumberValue;D)Ljavafx/beans/binding/DoubleBinding;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Ljavafx/beans/binding/LongExpression;
    return-object v0
.end method

.method public subtract(F)Ljavafx/beans/binding/FloatBinding;
    .locals 4

    .prologue
    .line 204
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/LongExpression;
    move v1, p1

    .local v1, "other":F
    move-object v2, v0

    move v3, v1

    invoke-static {v2, v3}, Ljavafx/beans/binding/Bindings;->subtract(Ljavafx/beans/value/ObservableNumberValue;F)Ljavafx/beans/binding/NumberBinding;

    move-result-object v2

    check-cast v2, Ljavafx/beans/binding/FloatBinding;

    move-object v0, v2

    .end local v0    # "this":Ljavafx/beans/binding/LongExpression;
    return-object v0
.end method

.method public subtract(I)Ljavafx/beans/binding/LongBinding;
    .locals 4

    .prologue
    .line 214
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/LongExpression;
    move v1, p1

    .local v1, "other":I
    move-object v2, v0

    move v3, v1

    invoke-static {v2, v3}, Ljavafx/beans/binding/Bindings;->subtract(Ljavafx/beans/value/ObservableNumberValue;I)Ljavafx/beans/binding/NumberBinding;

    move-result-object v2

    check-cast v2, Ljavafx/beans/binding/LongBinding;

    move-object v0, v2

    .end local v0    # "this":Ljavafx/beans/binding/LongExpression;
    return-object v0
.end method

.method public subtract(J)Ljavafx/beans/binding/LongBinding;
    .locals 7

    .prologue
    .line 209
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/LongExpression;
    move-wide v1, p1

    .local v1, "other":J
    move-object v3, v0

    move-wide v4, v1

    invoke-static {v3, v4, v5}, Ljavafx/beans/binding/Bindings;->subtract(Ljavafx/beans/value/ObservableNumberValue;J)Ljavafx/beans/binding/NumberBinding;

    move-result-object v3

    check-cast v3, Ljavafx/beans/binding/LongBinding;

    move-object v0, v3

    .end local v0    # "this":Ljavafx/beans/binding/LongExpression;
    return-object v0
.end method

.method public bridge synthetic subtract(D)Ljavafx/beans/binding/NumberBinding;
    .locals 7

    .prologue
    .line 43
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/LongExpression;
    move-wide v1, p1

    move-object v3, v0

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/beans/binding/LongExpression;->subtract(D)Ljavafx/beans/binding/DoubleBinding;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Ljavafx/beans/binding/LongExpression;
    return-object v0
.end method

.method public bridge synthetic subtract(F)Ljavafx/beans/binding/NumberBinding;
    .locals 4

    .prologue
    .line 43
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/LongExpression;
    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/binding/LongExpression;->subtract(F)Ljavafx/beans/binding/FloatBinding;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavafx/beans/binding/LongExpression;
    return-object v0
.end method

.method public bridge synthetic subtract(I)Ljavafx/beans/binding/NumberBinding;
    .locals 4

    .prologue
    .line 43
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/LongExpression;
    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/binding/LongExpression;->subtract(I)Ljavafx/beans/binding/LongBinding;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavafx/beans/binding/LongExpression;
    return-object v0
.end method

.method public bridge synthetic subtract(J)Ljavafx/beans/binding/NumberBinding;
    .locals 7

    .prologue
    .line 43
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/LongExpression;
    move-wide v1, p1

    move-object v3, v0

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/beans/binding/LongExpression;->subtract(J)Ljavafx/beans/binding/LongBinding;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Ljavafx/beans/binding/LongExpression;
    return-object v0
.end method
