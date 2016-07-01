.class public abstract Ljavafx/beans/binding/FloatExpression;
.super Ljavafx/beans/binding/NumberExpressionBase;
.source "FloatExpression.java"

# interfaces
.implements Ljavafx/beans/value/ObservableFloatValue;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 44
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/FloatExpression;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/beans/binding/NumberExpressionBase;-><init>()V

    return-void
.end method

.method public static floatExpression(Ljavafx/beans/value/ObservableFloatValue;)Ljavafx/beans/binding/FloatExpression;
    .locals 5

    .prologue
    .line 89
    move-object v0, p0

    .local v0, "value":Ljavafx/beans/value/ObservableFloatValue;
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

    instance-of v1, v1, Ljavafx/beans/binding/FloatExpression;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Ljavafx/beans/binding/FloatExpression;

    :goto_0
    move-object v0, v1

    .end local v0    # "value":Ljavafx/beans/value/ObservableFloatValue;
    return-object v0

    .restart local v0    # "value":Ljavafx/beans/value/ObservableFloatValue;
    :cond_1
    new-instance v1, Ljavafx/beans/binding/FloatExpression$1;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Ljavafx/beans/binding/FloatExpression$1;-><init>(Ljavafx/beans/value/ObservableFloatValue;)V

    goto :goto_0
.end method

.method public static floatExpression(Ljavafx/beans/value/ObservableValue;)Ljavafx/beans/binding/FloatExpression;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Number;",
            ">(",
            "Ljavafx/beans/value/ObservableValue",
            "<TT;>;)",
            "Ljavafx/beans/binding/FloatExpression;"
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

    instance-of v1, v1, Ljavafx/beans/binding/FloatExpression;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Ljavafx/beans/binding/FloatExpression;

    :goto_0
    move-object v0, v1

    .end local v0    # "value":Ljavafx/beans/value/ObservableValue;, "Ljavafx/beans/value/ObservableValue<TT;>;"
    return-object v0

    .restart local v0    # "value":Ljavafx/beans/value/ObservableValue;, "Ljavafx/beans/value/ObservableValue<TT;>;"
    :cond_1
    new-instance v1, Ljavafx/beans/binding/FloatExpression$2;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Ljavafx/beans/binding/FloatExpression$2;-><init>(Ljavafx/beans/value/ObservableValue;)V

    goto :goto_0
.end method


# virtual methods
.method public add(D)Ljavafx/beans/binding/DoubleBinding;
    .locals 7

    .prologue
    .line 182
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/FloatExpression;
    move-wide v1, p1

    .local v1, "other":D
    move-object v3, v0

    move-wide v4, v1

    invoke-static {v3, v4, v5}, Ljavafx/beans/binding/Bindings;->add(Ljavafx/beans/value/ObservableNumberValue;D)Ljavafx/beans/binding/DoubleBinding;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Ljavafx/beans/binding/FloatExpression;
    return-object v0
.end method

.method public add(F)Ljavafx/beans/binding/FloatBinding;
    .locals 4

    .prologue
    .line 187
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/FloatExpression;
    move v1, p1

    .local v1, "other":F
    move-object v2, v0

    move v3, v1

    invoke-static {v2, v3}, Ljavafx/beans/binding/Bindings;->add(Ljavafx/beans/value/ObservableNumberValue;F)Ljavafx/beans/binding/NumberBinding;

    move-result-object v2

    check-cast v2, Ljavafx/beans/binding/FloatBinding;

    move-object v0, v2

    .end local v0    # "this":Ljavafx/beans/binding/FloatExpression;
    return-object v0
.end method

.method public add(I)Ljavafx/beans/binding/FloatBinding;
    .locals 4

    .prologue
    .line 197
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/FloatExpression;
    move v1, p1

    .local v1, "other":I
    move-object v2, v0

    move v3, v1

    invoke-static {v2, v3}, Ljavafx/beans/binding/Bindings;->add(Ljavafx/beans/value/ObservableNumberValue;I)Ljavafx/beans/binding/NumberBinding;

    move-result-object v2

    check-cast v2, Ljavafx/beans/binding/FloatBinding;

    move-object v0, v2

    .end local v0    # "this":Ljavafx/beans/binding/FloatExpression;
    return-object v0
.end method

.method public add(J)Ljavafx/beans/binding/FloatBinding;
    .locals 7

    .prologue
    .line 192
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/FloatExpression;
    move-wide v1, p1

    .local v1, "other":J
    move-object v3, v0

    move-wide v4, v1

    invoke-static {v3, v4, v5}, Ljavafx/beans/binding/Bindings;->add(Ljavafx/beans/value/ObservableNumberValue;J)Ljavafx/beans/binding/NumberBinding;

    move-result-object v3

    check-cast v3, Ljavafx/beans/binding/FloatBinding;

    move-object v0, v3

    .end local v0    # "this":Ljavafx/beans/binding/FloatExpression;
    return-object v0
.end method

.method public bridge synthetic add(D)Ljavafx/beans/binding/NumberBinding;
    .locals 7

    .prologue
    .line 44
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/FloatExpression;
    move-wide v1, p1

    move-object v3, v0

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/beans/binding/FloatExpression;->add(D)Ljavafx/beans/binding/DoubleBinding;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Ljavafx/beans/binding/FloatExpression;
    return-object v0
.end method

.method public bridge synthetic add(F)Ljavafx/beans/binding/NumberBinding;
    .locals 4

    .prologue
    .line 44
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/FloatExpression;
    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/binding/FloatExpression;->add(F)Ljavafx/beans/binding/FloatBinding;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavafx/beans/binding/FloatExpression;
    return-object v0
.end method

.method public bridge synthetic add(I)Ljavafx/beans/binding/NumberBinding;
    .locals 4

    .prologue
    .line 44
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/FloatExpression;
    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/binding/FloatExpression;->add(I)Ljavafx/beans/binding/FloatBinding;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavafx/beans/binding/FloatExpression;
    return-object v0
.end method

.method public bridge synthetic add(J)Ljavafx/beans/binding/NumberBinding;
    .locals 7

    .prologue
    .line 44
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/FloatExpression;
    move-wide v1, p1

    move-object v3, v0

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/beans/binding/FloatExpression;->add(J)Ljavafx/beans/binding/FloatBinding;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Ljavafx/beans/binding/FloatExpression;
    return-object v0
.end method

.method public asObject()Ljavafx/beans/binding/ObjectExpression;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/binding/ObjectExpression",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .prologue
    .line 270
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/FloatExpression;
    new-instance v1, Ljavafx/beans/binding/FloatExpression$3;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Ljavafx/beans/binding/FloatExpression$3;-><init>(Ljavafx/beans/binding/FloatExpression;)V

    move-object v0, v1

    .end local v0    # "this":Ljavafx/beans/binding/FloatExpression;
    return-object v0
.end method

.method public divide(D)Ljavafx/beans/binding/DoubleBinding;
    .locals 7

    .prologue
    .line 242
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/FloatExpression;
    move-wide v1, p1

    .local v1, "other":D
    move-object v3, v0

    move-wide v4, v1

    invoke-static {v3, v4, v5}, Ljavafx/beans/binding/Bindings;->divide(Ljavafx/beans/value/ObservableNumberValue;D)Ljavafx/beans/binding/DoubleBinding;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Ljavafx/beans/binding/FloatExpression;
    return-object v0
.end method

.method public divide(F)Ljavafx/beans/binding/FloatBinding;
    .locals 4

    .prologue
    .line 247
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/FloatExpression;
    move v1, p1

    .local v1, "other":F
    move-object v2, v0

    move v3, v1

    invoke-static {v2, v3}, Ljavafx/beans/binding/Bindings;->divide(Ljavafx/beans/value/ObservableNumberValue;F)Ljavafx/beans/binding/NumberBinding;

    move-result-object v2

    check-cast v2, Ljavafx/beans/binding/FloatBinding;

    move-object v0, v2

    .end local v0    # "this":Ljavafx/beans/binding/FloatExpression;
    return-object v0
.end method

.method public divide(I)Ljavafx/beans/binding/FloatBinding;
    .locals 4

    .prologue
    .line 257
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/FloatExpression;
    move v1, p1

    .local v1, "other":I
    move-object v2, v0

    move v3, v1

    invoke-static {v2, v3}, Ljavafx/beans/binding/Bindings;->divide(Ljavafx/beans/value/ObservableNumberValue;I)Ljavafx/beans/binding/NumberBinding;

    move-result-object v2

    check-cast v2, Ljavafx/beans/binding/FloatBinding;

    move-object v0, v2

    .end local v0    # "this":Ljavafx/beans/binding/FloatExpression;
    return-object v0
.end method

.method public divide(J)Ljavafx/beans/binding/FloatBinding;
    .locals 7

    .prologue
    .line 252
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/FloatExpression;
    move-wide v1, p1

    .local v1, "other":J
    move-object v3, v0

    move-wide v4, v1

    invoke-static {v3, v4, v5}, Ljavafx/beans/binding/Bindings;->divide(Ljavafx/beans/value/ObservableNumberValue;J)Ljavafx/beans/binding/NumberBinding;

    move-result-object v3

    check-cast v3, Ljavafx/beans/binding/FloatBinding;

    move-object v0, v3

    .end local v0    # "this":Ljavafx/beans/binding/FloatExpression;
    return-object v0
.end method

.method public bridge synthetic divide(D)Ljavafx/beans/binding/NumberBinding;
    .locals 7

    .prologue
    .line 44
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/FloatExpression;
    move-wide v1, p1

    move-object v3, v0

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/beans/binding/FloatExpression;->divide(D)Ljavafx/beans/binding/DoubleBinding;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Ljavafx/beans/binding/FloatExpression;
    return-object v0
.end method

.method public bridge synthetic divide(F)Ljavafx/beans/binding/NumberBinding;
    .locals 4

    .prologue
    .line 44
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/FloatExpression;
    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/binding/FloatExpression;->divide(F)Ljavafx/beans/binding/FloatBinding;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavafx/beans/binding/FloatExpression;
    return-object v0
.end method

.method public bridge synthetic divide(I)Ljavafx/beans/binding/NumberBinding;
    .locals 4

    .prologue
    .line 44
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/FloatExpression;
    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/binding/FloatExpression;->divide(I)Ljavafx/beans/binding/FloatBinding;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavafx/beans/binding/FloatExpression;
    return-object v0
.end method

.method public bridge synthetic divide(J)Ljavafx/beans/binding/NumberBinding;
    .locals 7

    .prologue
    .line 44
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/FloatExpression;
    move-wide v1, p1

    move-object v3, v0

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/beans/binding/FloatExpression;->divide(J)Ljavafx/beans/binding/FloatBinding;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Ljavafx/beans/binding/FloatExpression;
    return-object v0
.end method

.method public doubleValue()D
    .locals 3

    .prologue
    .line 64
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/FloatExpression;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/beans/binding/FloatExpression;->get()F

    move-result v1

    float-to-double v1, v1

    move-wide v0, v1

    .end local v0    # "this":Ljavafx/beans/binding/FloatExpression;
    return-wide v0
.end method

.method public floatValue()F
    .locals 2

    .prologue
    .line 59
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/FloatExpression;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/beans/binding/FloatExpression;->get()F

    move-result v1

    move v0, v1

    .end local v0    # "this":Ljavafx/beans/binding/FloatExpression;
    return v0
.end method

.method public getValue()Ljava/lang/Float;
    .locals 2

    .prologue
    .line 69
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/FloatExpression;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/beans/binding/FloatExpression;->get()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/beans/binding/FloatExpression;
    return-object v0
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 44
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/FloatExpression;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/beans/binding/FloatExpression;->getValue()Ljava/lang/Float;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/beans/binding/FloatExpression;
    return-object v0
.end method

.method public intValue()I
    .locals 2

    .prologue
    .line 49
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/FloatExpression;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/beans/binding/FloatExpression;->get()F

    move-result v1

    float-to-int v1, v1

    move v0, v1

    .end local v0    # "this":Ljavafx/beans/binding/FloatExpression;
    return v0
.end method

.method public longValue()J
    .locals 3

    .prologue
    .line 54
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/FloatExpression;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/beans/binding/FloatExpression;->get()F

    move-result v1

    float-to-long v1, v1

    move-wide v0, v1

    .end local v0    # "this":Ljavafx/beans/binding/FloatExpression;
    return-wide v0
.end method

.method public multiply(D)Ljavafx/beans/binding/DoubleBinding;
    .locals 7

    .prologue
    .line 222
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/FloatExpression;
    move-wide v1, p1

    .local v1, "other":D
    move-object v3, v0

    move-wide v4, v1

    invoke-static {v3, v4, v5}, Ljavafx/beans/binding/Bindings;->multiply(Ljavafx/beans/value/ObservableNumberValue;D)Ljavafx/beans/binding/DoubleBinding;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Ljavafx/beans/binding/FloatExpression;
    return-object v0
.end method

.method public multiply(F)Ljavafx/beans/binding/FloatBinding;
    .locals 4

    .prologue
    .line 227
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/FloatExpression;
    move v1, p1

    .local v1, "other":F
    move-object v2, v0

    move v3, v1

    invoke-static {v2, v3}, Ljavafx/beans/binding/Bindings;->multiply(Ljavafx/beans/value/ObservableNumberValue;F)Ljavafx/beans/binding/NumberBinding;

    move-result-object v2

    check-cast v2, Ljavafx/beans/binding/FloatBinding;

    move-object v0, v2

    .end local v0    # "this":Ljavafx/beans/binding/FloatExpression;
    return-object v0
.end method

.method public multiply(I)Ljavafx/beans/binding/FloatBinding;
    .locals 4

    .prologue
    .line 237
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/FloatExpression;
    move v1, p1

    .local v1, "other":I
    move-object v2, v0

    move v3, v1

    invoke-static {v2, v3}, Ljavafx/beans/binding/Bindings;->multiply(Ljavafx/beans/value/ObservableNumberValue;I)Ljavafx/beans/binding/NumberBinding;

    move-result-object v2

    check-cast v2, Ljavafx/beans/binding/FloatBinding;

    move-object v0, v2

    .end local v0    # "this":Ljavafx/beans/binding/FloatExpression;
    return-object v0
.end method

.method public multiply(J)Ljavafx/beans/binding/FloatBinding;
    .locals 7

    .prologue
    .line 232
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/FloatExpression;
    move-wide v1, p1

    .local v1, "other":J
    move-object v3, v0

    move-wide v4, v1

    invoke-static {v3, v4, v5}, Ljavafx/beans/binding/Bindings;->multiply(Ljavafx/beans/value/ObservableNumberValue;J)Ljavafx/beans/binding/NumberBinding;

    move-result-object v3

    check-cast v3, Ljavafx/beans/binding/FloatBinding;

    move-object v0, v3

    .end local v0    # "this":Ljavafx/beans/binding/FloatExpression;
    return-object v0
.end method

.method public bridge synthetic multiply(D)Ljavafx/beans/binding/NumberBinding;
    .locals 7

    .prologue
    .line 44
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/FloatExpression;
    move-wide v1, p1

    move-object v3, v0

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/beans/binding/FloatExpression;->multiply(D)Ljavafx/beans/binding/DoubleBinding;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Ljavafx/beans/binding/FloatExpression;
    return-object v0
.end method

.method public bridge synthetic multiply(F)Ljavafx/beans/binding/NumberBinding;
    .locals 4

    .prologue
    .line 44
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/FloatExpression;
    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/binding/FloatExpression;->multiply(F)Ljavafx/beans/binding/FloatBinding;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavafx/beans/binding/FloatExpression;
    return-object v0
.end method

.method public bridge synthetic multiply(I)Ljavafx/beans/binding/NumberBinding;
    .locals 4

    .prologue
    .line 44
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/FloatExpression;
    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/binding/FloatExpression;->multiply(I)Ljavafx/beans/binding/FloatBinding;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavafx/beans/binding/FloatExpression;
    return-object v0
.end method

.method public bridge synthetic multiply(J)Ljavafx/beans/binding/NumberBinding;
    .locals 7

    .prologue
    .line 44
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/FloatExpression;
    move-wide v1, p1

    move-object v3, v0

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/beans/binding/FloatExpression;->multiply(J)Ljavafx/beans/binding/FloatBinding;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Ljavafx/beans/binding/FloatExpression;
    return-object v0
.end method

.method public negate()Ljavafx/beans/binding/FloatBinding;
    .locals 2

    .prologue
    .line 177
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/FloatExpression;
    move-object v1, v0

    invoke-static {v1}, Ljavafx/beans/binding/Bindings;->negate(Ljavafx/beans/value/ObservableNumberValue;)Ljavafx/beans/binding/NumberBinding;

    move-result-object v1

    check-cast v1, Ljavafx/beans/binding/FloatBinding;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/beans/binding/FloatExpression;
    return-object v0
.end method

.method public bridge synthetic negate()Ljavafx/beans/binding/NumberBinding;
    .locals 2

    .prologue
    .line 44
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/FloatExpression;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/beans/binding/FloatExpression;->negate()Ljavafx/beans/binding/FloatBinding;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/beans/binding/FloatExpression;
    return-object v0
.end method

.method public subtract(D)Ljavafx/beans/binding/DoubleBinding;
    .locals 7

    .prologue
    .line 202
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/FloatExpression;
    move-wide v1, p1

    .local v1, "other":D
    move-object v3, v0

    move-wide v4, v1

    invoke-static {v3, v4, v5}, Ljavafx/beans/binding/Bindings;->subtract(Ljavafx/beans/value/ObservableNumberValue;D)Ljavafx/beans/binding/DoubleBinding;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Ljavafx/beans/binding/FloatExpression;
    return-object v0
.end method

.method public subtract(F)Ljavafx/beans/binding/FloatBinding;
    .locals 4

    .prologue
    .line 207
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/FloatExpression;
    move v1, p1

    .local v1, "other":F
    move-object v2, v0

    move v3, v1

    invoke-static {v2, v3}, Ljavafx/beans/binding/Bindings;->subtract(Ljavafx/beans/value/ObservableNumberValue;F)Ljavafx/beans/binding/NumberBinding;

    move-result-object v2

    check-cast v2, Ljavafx/beans/binding/FloatBinding;

    move-object v0, v2

    .end local v0    # "this":Ljavafx/beans/binding/FloatExpression;
    return-object v0
.end method

.method public subtract(I)Ljavafx/beans/binding/FloatBinding;
    .locals 4

    .prologue
    .line 217
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/FloatExpression;
    move v1, p1

    .local v1, "other":I
    move-object v2, v0

    move v3, v1

    invoke-static {v2, v3}, Ljavafx/beans/binding/Bindings;->subtract(Ljavafx/beans/value/ObservableNumberValue;I)Ljavafx/beans/binding/NumberBinding;

    move-result-object v2

    check-cast v2, Ljavafx/beans/binding/FloatBinding;

    move-object v0, v2

    .end local v0    # "this":Ljavafx/beans/binding/FloatExpression;
    return-object v0
.end method

.method public subtract(J)Ljavafx/beans/binding/FloatBinding;
    .locals 7

    .prologue
    .line 212
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/FloatExpression;
    move-wide v1, p1

    .local v1, "other":J
    move-object v3, v0

    move-wide v4, v1

    invoke-static {v3, v4, v5}, Ljavafx/beans/binding/Bindings;->subtract(Ljavafx/beans/value/ObservableNumberValue;J)Ljavafx/beans/binding/NumberBinding;

    move-result-object v3

    check-cast v3, Ljavafx/beans/binding/FloatBinding;

    move-object v0, v3

    .end local v0    # "this":Ljavafx/beans/binding/FloatExpression;
    return-object v0
.end method

.method public bridge synthetic subtract(D)Ljavafx/beans/binding/NumberBinding;
    .locals 7

    .prologue
    .line 44
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/FloatExpression;
    move-wide v1, p1

    move-object v3, v0

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/beans/binding/FloatExpression;->subtract(D)Ljavafx/beans/binding/DoubleBinding;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Ljavafx/beans/binding/FloatExpression;
    return-object v0
.end method

.method public bridge synthetic subtract(F)Ljavafx/beans/binding/NumberBinding;
    .locals 4

    .prologue
    .line 44
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/FloatExpression;
    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/binding/FloatExpression;->subtract(F)Ljavafx/beans/binding/FloatBinding;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavafx/beans/binding/FloatExpression;
    return-object v0
.end method

.method public bridge synthetic subtract(I)Ljavafx/beans/binding/NumberBinding;
    .locals 4

    .prologue
    .line 44
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/FloatExpression;
    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/binding/FloatExpression;->subtract(I)Ljavafx/beans/binding/FloatBinding;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavafx/beans/binding/FloatExpression;
    return-object v0
.end method

.method public bridge synthetic subtract(J)Ljavafx/beans/binding/NumberBinding;
    .locals 7

    .prologue
    .line 44
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/FloatExpression;
    move-wide v1, p1

    move-object v3, v0

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/beans/binding/FloatExpression;->subtract(J)Ljavafx/beans/binding/FloatBinding;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Ljavafx/beans/binding/FloatExpression;
    return-object v0
.end method
