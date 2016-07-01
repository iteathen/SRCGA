.class public abstract Ljavafx/beans/binding/DoubleExpression;
.super Ljavafx/beans/binding/NumberExpressionBase;
.source "DoubleExpression.java"

# interfaces
.implements Ljavafx/beans/value/ObservableDoubleValue;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 45
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/DoubleExpression;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/beans/binding/NumberExpressionBase;-><init>()V

    return-void
.end method

.method public static doubleExpression(Ljavafx/beans/value/ObservableDoubleValue;)Ljavafx/beans/binding/DoubleExpression;
    .locals 5

    .prologue
    .line 90
    move-object v0, p0

    .local v0, "value":Ljavafx/beans/value/ObservableDoubleValue;
    move-object v1, v0

    if-nez v1, :cond_0

    .line 91
    new-instance v1, Ljava/lang/NullPointerException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string v3, "Value must be specified."

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 93
    :cond_0
    move-object v1, v0

    instance-of v1, v1, Ljavafx/beans/binding/DoubleExpression;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Ljavafx/beans/binding/DoubleExpression;

    :goto_0
    move-object v0, v1

    .end local v0    # "value":Ljavafx/beans/value/ObservableDoubleValue;
    return-object v0

    .restart local v0    # "value":Ljavafx/beans/value/ObservableDoubleValue;
    :cond_1
    new-instance v1, Ljavafx/beans/binding/DoubleExpression$1;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Ljavafx/beans/binding/DoubleExpression$1;-><init>(Ljavafx/beans/value/ObservableDoubleValue;)V

    goto :goto_0
.end method

.method public static doubleExpression(Ljavafx/beans/value/ObservableValue;)Ljavafx/beans/binding/DoubleExpression;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Number;",
            ">(",
            "Ljavafx/beans/value/ObservableValue",
            "<TT;>;)",
            "Ljavafx/beans/binding/DoubleExpression;"
        }
    .end annotation

    .prologue
    .line 147
    move-object v0, p0

    .local v0, "value":Ljavafx/beans/value/ObservableValue;, "Ljavafx/beans/value/ObservableValue<TT;>;"
    move-object v1, v0

    if-nez v1, :cond_0

    .line 148
    new-instance v1, Ljava/lang/NullPointerException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string v3, "Value must be specified."

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 150
    :cond_0
    move-object v1, v0

    instance-of v1, v1, Ljavafx/beans/binding/DoubleExpression;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Ljavafx/beans/binding/DoubleExpression;

    :goto_0
    move-object v0, v1

    .end local v0    # "value":Ljavafx/beans/value/ObservableValue;, "Ljavafx/beans/value/ObservableValue<TT;>;"
    return-object v0

    .restart local v0    # "value":Ljavafx/beans/value/ObservableValue;, "Ljavafx/beans/value/ObservableValue<TT;>;"
    :cond_1
    new-instance v1, Ljavafx/beans/binding/DoubleExpression$2;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Ljavafx/beans/binding/DoubleExpression$2;-><init>(Ljavafx/beans/value/ObservableValue;)V

    goto :goto_0
.end method


# virtual methods
.method public add(D)Ljavafx/beans/binding/DoubleBinding;
    .locals 7

    .prologue
    .line 187
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/DoubleExpression;
    move-wide v1, p1

    .local v1, "other":D
    move-object v3, v0

    move-wide v4, v1

    invoke-static {v3, v4, v5}, Ljavafx/beans/binding/Bindings;->add(Ljavafx/beans/value/ObservableNumberValue;D)Ljavafx/beans/binding/DoubleBinding;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Ljavafx/beans/binding/DoubleExpression;
    return-object v0
.end method

.method public add(F)Ljavafx/beans/binding/DoubleBinding;
    .locals 4

    .prologue
    .line 192
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/DoubleExpression;
    move v1, p1

    .local v1, "other":F
    move-object v2, v0

    move v3, v1

    invoke-static {v2, v3}, Ljavafx/beans/binding/Bindings;->add(Ljavafx/beans/value/ObservableNumberValue;F)Ljavafx/beans/binding/NumberBinding;

    move-result-object v2

    check-cast v2, Ljavafx/beans/binding/DoubleBinding;

    move-object v0, v2

    .end local v0    # "this":Ljavafx/beans/binding/DoubleExpression;
    return-object v0
.end method

.method public add(I)Ljavafx/beans/binding/DoubleBinding;
    .locals 4

    .prologue
    .line 202
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/DoubleExpression;
    move v1, p1

    .local v1, "other":I
    move-object v2, v0

    move v3, v1

    invoke-static {v2, v3}, Ljavafx/beans/binding/Bindings;->add(Ljavafx/beans/value/ObservableNumberValue;I)Ljavafx/beans/binding/NumberBinding;

    move-result-object v2

    check-cast v2, Ljavafx/beans/binding/DoubleBinding;

    move-object v0, v2

    .end local v0    # "this":Ljavafx/beans/binding/DoubleExpression;
    return-object v0
.end method

.method public add(J)Ljavafx/beans/binding/DoubleBinding;
    .locals 7

    .prologue
    .line 197
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/DoubleExpression;
    move-wide v1, p1

    .local v1, "other":J
    move-object v3, v0

    move-wide v4, v1

    invoke-static {v3, v4, v5}, Ljavafx/beans/binding/Bindings;->add(Ljavafx/beans/value/ObservableNumberValue;J)Ljavafx/beans/binding/NumberBinding;

    move-result-object v3

    check-cast v3, Ljavafx/beans/binding/DoubleBinding;

    move-object v0, v3

    .end local v0    # "this":Ljavafx/beans/binding/DoubleExpression;
    return-object v0
.end method

.method public add(Ljavafx/beans/value/ObservableNumberValue;)Ljavafx/beans/binding/DoubleBinding;
    .locals 4

    .prologue
    .line 182
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/DoubleExpression;
    move-object v1, p1

    .local v1, "other":Ljavafx/beans/value/ObservableNumberValue;
    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Ljavafx/beans/binding/Bindings;->add(Ljavafx/beans/value/ObservableNumberValue;Ljavafx/beans/value/ObservableNumberValue;)Ljavafx/beans/binding/NumberBinding;

    move-result-object v2

    check-cast v2, Ljavafx/beans/binding/DoubleBinding;

    move-object v0, v2

    .end local v0    # "this":Ljavafx/beans/binding/DoubleExpression;
    return-object v0
.end method

.method public bridge synthetic add(D)Ljavafx/beans/binding/NumberBinding;
    .locals 7

    .prologue
    .line 45
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/DoubleExpression;
    move-wide v1, p1

    move-object v3, v0

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/beans/binding/DoubleExpression;->add(D)Ljavafx/beans/binding/DoubleBinding;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Ljavafx/beans/binding/DoubleExpression;
    return-object v0
.end method

.method public bridge synthetic add(F)Ljavafx/beans/binding/NumberBinding;
    .locals 4

    .prologue
    .line 45
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/DoubleExpression;
    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/binding/DoubleExpression;->add(F)Ljavafx/beans/binding/DoubleBinding;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavafx/beans/binding/DoubleExpression;
    return-object v0
.end method

.method public bridge synthetic add(I)Ljavafx/beans/binding/NumberBinding;
    .locals 4

    .prologue
    .line 45
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/DoubleExpression;
    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/binding/DoubleExpression;->add(I)Ljavafx/beans/binding/DoubleBinding;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavafx/beans/binding/DoubleExpression;
    return-object v0
.end method

.method public bridge synthetic add(J)Ljavafx/beans/binding/NumberBinding;
    .locals 7

    .prologue
    .line 45
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/DoubleExpression;
    move-wide v1, p1

    move-object v3, v0

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/beans/binding/DoubleExpression;->add(J)Ljavafx/beans/binding/DoubleBinding;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Ljavafx/beans/binding/DoubleExpression;
    return-object v0
.end method

.method public bridge synthetic add(Ljavafx/beans/value/ObservableNumberValue;)Ljavafx/beans/binding/NumberBinding;
    .locals 4

    .prologue
    .line 45
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/DoubleExpression;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/binding/DoubleExpression;->add(Ljavafx/beans/value/ObservableNumberValue;)Ljavafx/beans/binding/DoubleBinding;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavafx/beans/binding/DoubleExpression;
    return-object v0
.end method

.method public asObject()Ljavafx/beans/binding/ObjectExpression;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/binding/ObjectExpression",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .prologue
    .line 290
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/DoubleExpression;
    new-instance v1, Ljavafx/beans/binding/DoubleExpression$3;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Ljavafx/beans/binding/DoubleExpression$3;-><init>(Ljavafx/beans/binding/DoubleExpression;)V

    move-object v0, v1

    .end local v0    # "this":Ljavafx/beans/binding/DoubleExpression;
    return-object v0
.end method

.method public divide(D)Ljavafx/beans/binding/DoubleBinding;
    .locals 7

    .prologue
    .line 262
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/DoubleExpression;
    move-wide v1, p1

    .local v1, "other":D
    move-object v3, v0

    move-wide v4, v1

    invoke-static {v3, v4, v5}, Ljavafx/beans/binding/Bindings;->divide(Ljavafx/beans/value/ObservableNumberValue;D)Ljavafx/beans/binding/DoubleBinding;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Ljavafx/beans/binding/DoubleExpression;
    return-object v0
.end method

.method public divide(F)Ljavafx/beans/binding/DoubleBinding;
    .locals 4

    .prologue
    .line 267
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/DoubleExpression;
    move v1, p1

    .local v1, "other":F
    move-object v2, v0

    move v3, v1

    invoke-static {v2, v3}, Ljavafx/beans/binding/Bindings;->divide(Ljavafx/beans/value/ObservableNumberValue;F)Ljavafx/beans/binding/NumberBinding;

    move-result-object v2

    check-cast v2, Ljavafx/beans/binding/DoubleBinding;

    move-object v0, v2

    .end local v0    # "this":Ljavafx/beans/binding/DoubleExpression;
    return-object v0
.end method

.method public divide(I)Ljavafx/beans/binding/DoubleBinding;
    .locals 4

    .prologue
    .line 277
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/DoubleExpression;
    move v1, p1

    .local v1, "other":I
    move-object v2, v0

    move v3, v1

    invoke-static {v2, v3}, Ljavafx/beans/binding/Bindings;->divide(Ljavafx/beans/value/ObservableNumberValue;I)Ljavafx/beans/binding/NumberBinding;

    move-result-object v2

    check-cast v2, Ljavafx/beans/binding/DoubleBinding;

    move-object v0, v2

    .end local v0    # "this":Ljavafx/beans/binding/DoubleExpression;
    return-object v0
.end method

.method public divide(J)Ljavafx/beans/binding/DoubleBinding;
    .locals 7

    .prologue
    .line 272
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/DoubleExpression;
    move-wide v1, p1

    .local v1, "other":J
    move-object v3, v0

    move-wide v4, v1

    invoke-static {v3, v4, v5}, Ljavafx/beans/binding/Bindings;->divide(Ljavafx/beans/value/ObservableNumberValue;J)Ljavafx/beans/binding/NumberBinding;

    move-result-object v3

    check-cast v3, Ljavafx/beans/binding/DoubleBinding;

    move-object v0, v3

    .end local v0    # "this":Ljavafx/beans/binding/DoubleExpression;
    return-object v0
.end method

.method public divide(Ljavafx/beans/value/ObservableNumberValue;)Ljavafx/beans/binding/DoubleBinding;
    .locals 4

    .prologue
    .line 257
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/DoubleExpression;
    move-object v1, p1

    .local v1, "other":Ljavafx/beans/value/ObservableNumberValue;
    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Ljavafx/beans/binding/Bindings;->divide(Ljavafx/beans/value/ObservableNumberValue;Ljavafx/beans/value/ObservableNumberValue;)Ljavafx/beans/binding/NumberBinding;

    move-result-object v2

    check-cast v2, Ljavafx/beans/binding/DoubleBinding;

    move-object v0, v2

    .end local v0    # "this":Ljavafx/beans/binding/DoubleExpression;
    return-object v0
.end method

.method public bridge synthetic divide(D)Ljavafx/beans/binding/NumberBinding;
    .locals 7

    .prologue
    .line 45
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/DoubleExpression;
    move-wide v1, p1

    move-object v3, v0

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/beans/binding/DoubleExpression;->divide(D)Ljavafx/beans/binding/DoubleBinding;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Ljavafx/beans/binding/DoubleExpression;
    return-object v0
.end method

.method public bridge synthetic divide(F)Ljavafx/beans/binding/NumberBinding;
    .locals 4

    .prologue
    .line 45
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/DoubleExpression;
    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/binding/DoubleExpression;->divide(F)Ljavafx/beans/binding/DoubleBinding;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavafx/beans/binding/DoubleExpression;
    return-object v0
.end method

.method public bridge synthetic divide(I)Ljavafx/beans/binding/NumberBinding;
    .locals 4

    .prologue
    .line 45
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/DoubleExpression;
    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/binding/DoubleExpression;->divide(I)Ljavafx/beans/binding/DoubleBinding;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavafx/beans/binding/DoubleExpression;
    return-object v0
.end method

.method public bridge synthetic divide(J)Ljavafx/beans/binding/NumberBinding;
    .locals 7

    .prologue
    .line 45
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/DoubleExpression;
    move-wide v1, p1

    move-object v3, v0

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/beans/binding/DoubleExpression;->divide(J)Ljavafx/beans/binding/DoubleBinding;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Ljavafx/beans/binding/DoubleExpression;
    return-object v0
.end method

.method public bridge synthetic divide(Ljavafx/beans/value/ObservableNumberValue;)Ljavafx/beans/binding/NumberBinding;
    .locals 4

    .prologue
    .line 45
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/DoubleExpression;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/binding/DoubleExpression;->divide(Ljavafx/beans/value/ObservableNumberValue;)Ljavafx/beans/binding/DoubleBinding;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavafx/beans/binding/DoubleExpression;
    return-object v0
.end method

.method public doubleValue()D
    .locals 3

    .prologue
    .line 65
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/DoubleExpression;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/beans/binding/DoubleExpression;->get()D

    move-result-wide v1

    move-wide v0, v1

    .end local v0    # "this":Ljavafx/beans/binding/DoubleExpression;
    return-wide v0
.end method

.method public floatValue()F
    .locals 4

    .prologue
    .line 60
    move-object v1, p0

    .local v1, "this":Ljavafx/beans/binding/DoubleExpression;
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/beans/binding/DoubleExpression;->get()D

    move-result-wide v2

    double-to-float v2, v2

    move v1, v2

    .end local v1    # "this":Ljavafx/beans/binding/DoubleExpression;
    return v1
.end method

.method public getValue()Ljava/lang/Double;
    .locals 4

    .prologue
    .line 70
    move-object v1, p0

    .local v1, "this":Ljavafx/beans/binding/DoubleExpression;
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/beans/binding/DoubleExpression;->get()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    move-object v1, v2

    .end local v1    # "this":Ljavafx/beans/binding/DoubleExpression;
    return-object v1
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 45
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/DoubleExpression;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/beans/binding/DoubleExpression;->getValue()Ljava/lang/Double;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/beans/binding/DoubleExpression;
    return-object v0
.end method

.method public intValue()I
    .locals 4

    .prologue
    .line 50
    move-object v1, p0

    .local v1, "this":Ljavafx/beans/binding/DoubleExpression;
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/beans/binding/DoubleExpression;->get()D

    move-result-wide v2

    double-to-int v2, v2

    move v1, v2

    .end local v1    # "this":Ljavafx/beans/binding/DoubleExpression;
    return v1
.end method

.method public longValue()J
    .locals 4

    .prologue
    .line 55
    move-object v1, p0

    .local v1, "this":Ljavafx/beans/binding/DoubleExpression;
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/beans/binding/DoubleExpression;->get()D

    move-result-wide v2

    double-to-long v2, v2

    move-wide v1, v2

    .end local v1    # "this":Ljavafx/beans/binding/DoubleExpression;
    return-wide v1
.end method

.method public multiply(D)Ljavafx/beans/binding/DoubleBinding;
    .locals 7

    .prologue
    .line 237
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/DoubleExpression;
    move-wide v1, p1

    .local v1, "other":D
    move-object v3, v0

    move-wide v4, v1

    invoke-static {v3, v4, v5}, Ljavafx/beans/binding/Bindings;->multiply(Ljavafx/beans/value/ObservableNumberValue;D)Ljavafx/beans/binding/DoubleBinding;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Ljavafx/beans/binding/DoubleExpression;
    return-object v0
.end method

.method public multiply(F)Ljavafx/beans/binding/DoubleBinding;
    .locals 4

    .prologue
    .line 242
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/DoubleExpression;
    move v1, p1

    .local v1, "other":F
    move-object v2, v0

    move v3, v1

    invoke-static {v2, v3}, Ljavafx/beans/binding/Bindings;->multiply(Ljavafx/beans/value/ObservableNumberValue;F)Ljavafx/beans/binding/NumberBinding;

    move-result-object v2

    check-cast v2, Ljavafx/beans/binding/DoubleBinding;

    move-object v0, v2

    .end local v0    # "this":Ljavafx/beans/binding/DoubleExpression;
    return-object v0
.end method

.method public multiply(I)Ljavafx/beans/binding/DoubleBinding;
    .locals 4

    .prologue
    .line 252
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/DoubleExpression;
    move v1, p1

    .local v1, "other":I
    move-object v2, v0

    move v3, v1

    invoke-static {v2, v3}, Ljavafx/beans/binding/Bindings;->multiply(Ljavafx/beans/value/ObservableNumberValue;I)Ljavafx/beans/binding/NumberBinding;

    move-result-object v2

    check-cast v2, Ljavafx/beans/binding/DoubleBinding;

    move-object v0, v2

    .end local v0    # "this":Ljavafx/beans/binding/DoubleExpression;
    return-object v0
.end method

.method public multiply(J)Ljavafx/beans/binding/DoubleBinding;
    .locals 7

    .prologue
    .line 247
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/DoubleExpression;
    move-wide v1, p1

    .local v1, "other":J
    move-object v3, v0

    move-wide v4, v1

    invoke-static {v3, v4, v5}, Ljavafx/beans/binding/Bindings;->multiply(Ljavafx/beans/value/ObservableNumberValue;J)Ljavafx/beans/binding/NumberBinding;

    move-result-object v3

    check-cast v3, Ljavafx/beans/binding/DoubleBinding;

    move-object v0, v3

    .end local v0    # "this":Ljavafx/beans/binding/DoubleExpression;
    return-object v0
.end method

.method public multiply(Ljavafx/beans/value/ObservableNumberValue;)Ljavafx/beans/binding/DoubleBinding;
    .locals 4

    .prologue
    .line 232
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/DoubleExpression;
    move-object v1, p1

    .local v1, "other":Ljavafx/beans/value/ObservableNumberValue;
    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Ljavafx/beans/binding/Bindings;->multiply(Ljavafx/beans/value/ObservableNumberValue;Ljavafx/beans/value/ObservableNumberValue;)Ljavafx/beans/binding/NumberBinding;

    move-result-object v2

    check-cast v2, Ljavafx/beans/binding/DoubleBinding;

    move-object v0, v2

    .end local v0    # "this":Ljavafx/beans/binding/DoubleExpression;
    return-object v0
.end method

.method public bridge synthetic multiply(D)Ljavafx/beans/binding/NumberBinding;
    .locals 7

    .prologue
    .line 45
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/DoubleExpression;
    move-wide v1, p1

    move-object v3, v0

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/beans/binding/DoubleExpression;->multiply(D)Ljavafx/beans/binding/DoubleBinding;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Ljavafx/beans/binding/DoubleExpression;
    return-object v0
.end method

.method public bridge synthetic multiply(F)Ljavafx/beans/binding/NumberBinding;
    .locals 4

    .prologue
    .line 45
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/DoubleExpression;
    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/binding/DoubleExpression;->multiply(F)Ljavafx/beans/binding/DoubleBinding;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavafx/beans/binding/DoubleExpression;
    return-object v0
.end method

.method public bridge synthetic multiply(I)Ljavafx/beans/binding/NumberBinding;
    .locals 4

    .prologue
    .line 45
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/DoubleExpression;
    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/binding/DoubleExpression;->multiply(I)Ljavafx/beans/binding/DoubleBinding;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavafx/beans/binding/DoubleExpression;
    return-object v0
.end method

.method public bridge synthetic multiply(J)Ljavafx/beans/binding/NumberBinding;
    .locals 7

    .prologue
    .line 45
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/DoubleExpression;
    move-wide v1, p1

    move-object v3, v0

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/beans/binding/DoubleExpression;->multiply(J)Ljavafx/beans/binding/DoubleBinding;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Ljavafx/beans/binding/DoubleExpression;
    return-object v0
.end method

.method public bridge synthetic multiply(Ljavafx/beans/value/ObservableNumberValue;)Ljavafx/beans/binding/NumberBinding;
    .locals 4

    .prologue
    .line 45
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/DoubleExpression;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/binding/DoubleExpression;->multiply(Ljavafx/beans/value/ObservableNumberValue;)Ljavafx/beans/binding/DoubleBinding;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavafx/beans/binding/DoubleExpression;
    return-object v0
.end method

.method public negate()Ljavafx/beans/binding/DoubleBinding;
    .locals 2

    .prologue
    .line 177
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/DoubleExpression;
    move-object v1, v0

    invoke-static {v1}, Ljavafx/beans/binding/Bindings;->negate(Ljavafx/beans/value/ObservableNumberValue;)Ljavafx/beans/binding/NumberBinding;

    move-result-object v1

    check-cast v1, Ljavafx/beans/binding/DoubleBinding;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/beans/binding/DoubleExpression;
    return-object v0
.end method

.method public bridge synthetic negate()Ljavafx/beans/binding/NumberBinding;
    .locals 2

    .prologue
    .line 45
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/DoubleExpression;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/beans/binding/DoubleExpression;->negate()Ljavafx/beans/binding/DoubleBinding;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/beans/binding/DoubleExpression;
    return-object v0
.end method

.method public subtract(D)Ljavafx/beans/binding/DoubleBinding;
    .locals 7

    .prologue
    .line 212
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/DoubleExpression;
    move-wide v1, p1

    .local v1, "other":D
    move-object v3, v0

    move-wide v4, v1

    invoke-static {v3, v4, v5}, Ljavafx/beans/binding/Bindings;->subtract(Ljavafx/beans/value/ObservableNumberValue;D)Ljavafx/beans/binding/DoubleBinding;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Ljavafx/beans/binding/DoubleExpression;
    return-object v0
.end method

.method public subtract(F)Ljavafx/beans/binding/DoubleBinding;
    .locals 4

    .prologue
    .line 217
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/DoubleExpression;
    move v1, p1

    .local v1, "other":F
    move-object v2, v0

    move v3, v1

    invoke-static {v2, v3}, Ljavafx/beans/binding/Bindings;->subtract(Ljavafx/beans/value/ObservableNumberValue;F)Ljavafx/beans/binding/NumberBinding;

    move-result-object v2

    check-cast v2, Ljavafx/beans/binding/DoubleBinding;

    move-object v0, v2

    .end local v0    # "this":Ljavafx/beans/binding/DoubleExpression;
    return-object v0
.end method

.method public subtract(I)Ljavafx/beans/binding/DoubleBinding;
    .locals 4

    .prologue
    .line 227
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/DoubleExpression;
    move v1, p1

    .local v1, "other":I
    move-object v2, v0

    move v3, v1

    invoke-static {v2, v3}, Ljavafx/beans/binding/Bindings;->subtract(Ljavafx/beans/value/ObservableNumberValue;I)Ljavafx/beans/binding/NumberBinding;

    move-result-object v2

    check-cast v2, Ljavafx/beans/binding/DoubleBinding;

    move-object v0, v2

    .end local v0    # "this":Ljavafx/beans/binding/DoubleExpression;
    return-object v0
.end method

.method public subtract(J)Ljavafx/beans/binding/DoubleBinding;
    .locals 7

    .prologue
    .line 222
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/DoubleExpression;
    move-wide v1, p1

    .local v1, "other":J
    move-object v3, v0

    move-wide v4, v1

    invoke-static {v3, v4, v5}, Ljavafx/beans/binding/Bindings;->subtract(Ljavafx/beans/value/ObservableNumberValue;J)Ljavafx/beans/binding/NumberBinding;

    move-result-object v3

    check-cast v3, Ljavafx/beans/binding/DoubleBinding;

    move-object v0, v3

    .end local v0    # "this":Ljavafx/beans/binding/DoubleExpression;
    return-object v0
.end method

.method public subtract(Ljavafx/beans/value/ObservableNumberValue;)Ljavafx/beans/binding/DoubleBinding;
    .locals 4

    .prologue
    .line 207
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/DoubleExpression;
    move-object v1, p1

    .local v1, "other":Ljavafx/beans/value/ObservableNumberValue;
    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Ljavafx/beans/binding/Bindings;->subtract(Ljavafx/beans/value/ObservableNumberValue;Ljavafx/beans/value/ObservableNumberValue;)Ljavafx/beans/binding/NumberBinding;

    move-result-object v2

    check-cast v2, Ljavafx/beans/binding/DoubleBinding;

    move-object v0, v2

    .end local v0    # "this":Ljavafx/beans/binding/DoubleExpression;
    return-object v0
.end method

.method public bridge synthetic subtract(D)Ljavafx/beans/binding/NumberBinding;
    .locals 7

    .prologue
    .line 45
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/DoubleExpression;
    move-wide v1, p1

    move-object v3, v0

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/beans/binding/DoubleExpression;->subtract(D)Ljavafx/beans/binding/DoubleBinding;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Ljavafx/beans/binding/DoubleExpression;
    return-object v0
.end method

.method public bridge synthetic subtract(F)Ljavafx/beans/binding/NumberBinding;
    .locals 4

    .prologue
    .line 45
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/DoubleExpression;
    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/binding/DoubleExpression;->subtract(F)Ljavafx/beans/binding/DoubleBinding;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavafx/beans/binding/DoubleExpression;
    return-object v0
.end method

.method public bridge synthetic subtract(I)Ljavafx/beans/binding/NumberBinding;
    .locals 4

    .prologue
    .line 45
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/DoubleExpression;
    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/binding/DoubleExpression;->subtract(I)Ljavafx/beans/binding/DoubleBinding;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavafx/beans/binding/DoubleExpression;
    return-object v0
.end method

.method public bridge synthetic subtract(J)Ljavafx/beans/binding/NumberBinding;
    .locals 7

    .prologue
    .line 45
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/DoubleExpression;
    move-wide v1, p1

    move-object v3, v0

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/beans/binding/DoubleExpression;->subtract(J)Ljavafx/beans/binding/DoubleBinding;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Ljavafx/beans/binding/DoubleExpression;
    return-object v0
.end method

.method public bridge synthetic subtract(Ljavafx/beans/value/ObservableNumberValue;)Ljavafx/beans/binding/NumberBinding;
    .locals 4

    .prologue
    .line 45
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/DoubleExpression;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/binding/DoubleExpression;->subtract(Ljavafx/beans/value/ObservableNumberValue;)Ljavafx/beans/binding/DoubleBinding;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavafx/beans/binding/DoubleExpression;
    return-object v0
.end method
