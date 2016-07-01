.class public abstract Ljavafx/beans/binding/StringExpression;
.super Ljava/lang/Object;
.source "StringExpression.java"

# interfaces
.implements Ljavafx/beans/value/ObservableStringValue;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 47
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/StringExpression;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static stringExpression(Ljavafx/beans/value/ObservableValue;)Ljavafx/beans/binding/StringExpression;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/value/ObservableValue",
            "<*>;)",
            "Ljavafx/beans/binding/StringExpression;"
        }
    .end annotation

    .prologue
    .line 83
    move-object v0, p0

    .local v0, "value":Ljavafx/beans/value/ObservableValue;, "Ljavafx/beans/value/ObservableValue<*>;"
    move-object v1, v0

    if-nez v1, :cond_0

    .line 84
    new-instance v1, Ljava/lang/NullPointerException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string v3, "Value must be specified."

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 86
    :cond_0
    move-object v1, v0

    invoke-static {v1}, Lcom/sun/javafx/binding/StringFormatter;->convert(Ljavafx/beans/value/ObservableValue;)Ljavafx/beans/binding/StringExpression;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "value":Ljavafx/beans/value/ObservableValue;, "Ljavafx/beans/value/ObservableValue<*>;"
    return-object v0
.end method


# virtual methods
.method public concat(Ljava/lang/Object;)Ljavafx/beans/binding/StringExpression;
    .locals 7

    .prologue
    .line 105
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/StringExpression;
    move-object v1, p1

    .local v1, "other":Ljava/lang/Object;
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x0

    move-object v5, v0

    aput-object v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x1

    move-object v5, v1

    aput-object v5, v3, v4

    invoke-static {v2}, Ljavafx/beans/binding/Bindings;->concat([Ljava/lang/Object;)Ljavafx/beans/binding/StringExpression;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavafx/beans/binding/StringExpression;
    return-object v0
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 47
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/StringExpression;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/beans/binding/StringExpression;->getValue()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/beans/binding/StringExpression;
    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 2

    .prologue
    .line 51
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/StringExpression;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/beans/binding/StringExpression;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/beans/binding/StringExpression;
    return-object v0
.end method

.method public final getValueSafe()Ljava/lang/String;
    .locals 3

    .prologue
    .line 62
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/StringExpression;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/beans/binding/StringExpression;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object v1, v2

    .line 63
    .local v1, "value":Ljava/lang/String;
    move-object v2, v1

    if-nez v2, :cond_0

    const-string v2, ""

    :goto_0
    move-object v0, v2

    .end local v0    # "this":Ljavafx/beans/binding/StringExpression;
    return-object v0

    .restart local v0    # "this":Ljavafx/beans/binding/StringExpression;
    :cond_0
    move-object v2, v1

    goto :goto_0
.end method

.method public greaterThan(Ljava/lang/String;)Ljavafx/beans/binding/BooleanBinding;
    .locals 4

    .prologue
    .line 263
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/StringExpression;
    move-object v1, p1

    .local v1, "other":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Ljavafx/beans/binding/Bindings;->greaterThan(Ljavafx/beans/value/ObservableStringValue;Ljava/lang/String;)Ljavafx/beans/binding/BooleanBinding;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavafx/beans/binding/StringExpression;
    return-object v0
.end method

.method public greaterThan(Ljavafx/beans/value/ObservableStringValue;)Ljavafx/beans/binding/BooleanBinding;
    .locals 4

    .prologue
    .line 248
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/StringExpression;
    move-object v1, p1

    .local v1, "other":Ljavafx/beans/value/ObservableStringValue;
    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Ljavafx/beans/binding/Bindings;->greaterThan(Ljavafx/beans/value/ObservableStringValue;Ljavafx/beans/value/ObservableStringValue;)Ljavafx/beans/binding/BooleanBinding;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavafx/beans/binding/StringExpression;
    return-object v0
.end method

.method public greaterThanOrEqualTo(Ljava/lang/String;)Ljavafx/beans/binding/BooleanBinding;
    .locals 4

    .prologue
    .line 326
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/StringExpression;
    move-object v1, p1

    .local v1, "other":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Ljavafx/beans/binding/Bindings;->greaterThanOrEqual(Ljavafx/beans/value/ObservableStringValue;Ljava/lang/String;)Ljavafx/beans/binding/BooleanBinding;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavafx/beans/binding/StringExpression;
    return-object v0
.end method

.method public greaterThanOrEqualTo(Ljavafx/beans/value/ObservableStringValue;)Ljavafx/beans/binding/BooleanBinding;
    .locals 4

    .prologue
    .line 310
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/StringExpression;
    move-object v1, p1

    .local v1, "other":Ljavafx/beans/value/ObservableStringValue;
    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Ljavafx/beans/binding/Bindings;->greaterThanOrEqual(Ljavafx/beans/value/ObservableStringValue;Ljavafx/beans/value/ObservableStringValue;)Ljavafx/beans/binding/BooleanBinding;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavafx/beans/binding/StringExpression;
    return-object v0
.end method

.method public isEmpty()Ljavafx/beans/binding/BooleanBinding;
    .locals 2

    .prologue
    .line 406
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/StringExpression;
    move-object v1, v0

    invoke-static {v1}, Ljavafx/beans/binding/Bindings;->isEmpty(Ljavafx/beans/value/ObservableStringValue;)Ljavafx/beans/binding/BooleanBinding;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/beans/binding/StringExpression;
    return-object v0
.end method

.method public isEqualTo(Ljava/lang/String;)Ljavafx/beans/binding/BooleanBinding;
    .locals 4

    .prologue
    .line 136
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/StringExpression;
    move-object v1, p1

    .local v1, "other":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Ljavafx/beans/binding/Bindings;->equal(Ljavafx/beans/value/ObservableStringValue;Ljava/lang/String;)Ljavafx/beans/binding/BooleanBinding;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavafx/beans/binding/StringExpression;
    return-object v0
.end method

.method public isEqualTo(Ljavafx/beans/value/ObservableStringValue;)Ljavafx/beans/binding/BooleanBinding;
    .locals 4

    .prologue
    .line 121
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/StringExpression;
    move-object v1, p1

    .local v1, "other":Ljavafx/beans/value/ObservableStringValue;
    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Ljavafx/beans/binding/Bindings;->equal(Ljavafx/beans/value/ObservableStringValue;Ljavafx/beans/value/ObservableStringValue;)Ljavafx/beans/binding/BooleanBinding;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavafx/beans/binding/StringExpression;
    return-object v0
.end method

.method public isEqualToIgnoreCase(Ljava/lang/String;)Ljavafx/beans/binding/BooleanBinding;
    .locals 4

    .prologue
    .line 199
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/StringExpression;
    move-object v1, p1

    .local v1, "other":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Ljavafx/beans/binding/Bindings;->equalIgnoreCase(Ljavafx/beans/value/ObservableStringValue;Ljava/lang/String;)Ljavafx/beans/binding/BooleanBinding;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavafx/beans/binding/StringExpression;
    return-object v0
.end method

.method public isEqualToIgnoreCase(Ljavafx/beans/value/ObservableStringValue;)Ljavafx/beans/binding/BooleanBinding;
    .locals 4

    .prologue
    .line 183
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/StringExpression;
    move-object v1, p1

    .local v1, "other":Ljavafx/beans/value/ObservableStringValue;
    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Ljavafx/beans/binding/Bindings;->equalIgnoreCase(Ljavafx/beans/value/ObservableStringValue;Ljavafx/beans/value/ObservableStringValue;)Ljavafx/beans/binding/BooleanBinding;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavafx/beans/binding/StringExpression;
    return-object v0
.end method

.method public isNotEmpty()Ljavafx/beans/binding/BooleanBinding;
    .locals 2

    .prologue
    .line 420
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/StringExpression;
    move-object v1, v0

    invoke-static {v1}, Ljavafx/beans/binding/Bindings;->isNotEmpty(Ljavafx/beans/value/ObservableStringValue;)Ljavafx/beans/binding/BooleanBinding;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/beans/binding/StringExpression;
    return-object v0
.end method

.method public isNotEqualTo(Ljava/lang/String;)Ljavafx/beans/binding/BooleanBinding;
    .locals 4

    .prologue
    .line 167
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/StringExpression;
    move-object v1, p1

    .local v1, "other":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Ljavafx/beans/binding/Bindings;->notEqual(Ljavafx/beans/value/ObservableStringValue;Ljava/lang/String;)Ljavafx/beans/binding/BooleanBinding;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavafx/beans/binding/StringExpression;
    return-object v0
.end method

.method public isNotEqualTo(Ljavafx/beans/value/ObservableStringValue;)Ljavafx/beans/binding/BooleanBinding;
    .locals 4

    .prologue
    .line 152
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/StringExpression;
    move-object v1, p1

    .local v1, "other":Ljavafx/beans/value/ObservableStringValue;
    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Ljavafx/beans/binding/Bindings;->notEqual(Ljavafx/beans/value/ObservableStringValue;Ljavafx/beans/value/ObservableStringValue;)Ljavafx/beans/binding/BooleanBinding;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavafx/beans/binding/StringExpression;
    return-object v0
.end method

.method public isNotEqualToIgnoreCase(Ljava/lang/String;)Ljavafx/beans/binding/BooleanBinding;
    .locals 4

    .prologue
    .line 232
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/StringExpression;
    move-object v1, p1

    .local v1, "other":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Ljavafx/beans/binding/Bindings;->notEqualIgnoreCase(Ljavafx/beans/value/ObservableStringValue;Ljava/lang/String;)Ljavafx/beans/binding/BooleanBinding;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavafx/beans/binding/StringExpression;
    return-object v0
.end method

.method public isNotEqualToIgnoreCase(Ljavafx/beans/value/ObservableStringValue;)Ljavafx/beans/binding/BooleanBinding;
    .locals 4

    .prologue
    .line 216
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/StringExpression;
    move-object v1, p1

    .local v1, "other":Ljavafx/beans/value/ObservableStringValue;
    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Ljavafx/beans/binding/Bindings;->notEqualIgnoreCase(Ljavafx/beans/value/ObservableStringValue;Ljavafx/beans/value/ObservableStringValue;)Ljavafx/beans/binding/BooleanBinding;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavafx/beans/binding/StringExpression;
    return-object v0
.end method

.method public isNotNull()Ljavafx/beans/binding/BooleanBinding;
    .locals 2

    .prologue
    .line 378
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/StringExpression;
    move-object v1, v0

    invoke-static {v1}, Ljavafx/beans/binding/Bindings;->isNotNull(Ljavafx/beans/value/ObservableObjectValue;)Ljavafx/beans/binding/BooleanBinding;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/beans/binding/StringExpression;
    return-object v0
.end method

.method public isNull()Ljavafx/beans/binding/BooleanBinding;
    .locals 2

    .prologue
    .line 368
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/StringExpression;
    move-object v1, v0

    invoke-static {v1}, Ljavafx/beans/binding/Bindings;->isNull(Ljavafx/beans/value/ObservableObjectValue;)Ljavafx/beans/binding/BooleanBinding;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/beans/binding/StringExpression;
    return-object v0
.end method

.method public length()Ljavafx/beans/binding/IntegerBinding;
    .locals 2

    .prologue
    .line 392
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/StringExpression;
    move-object v1, v0

    invoke-static {v1}, Ljavafx/beans/binding/Bindings;->length(Ljavafx/beans/value/ObservableStringValue;)Ljavafx/beans/binding/IntegerBinding;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/beans/binding/StringExpression;
    return-object v0
.end method

.method public lessThan(Ljava/lang/String;)Ljavafx/beans/binding/BooleanBinding;
    .locals 4

    .prologue
    .line 294
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/StringExpression;
    move-object v1, p1

    .local v1, "other":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Ljavafx/beans/binding/Bindings;->lessThan(Ljavafx/beans/value/ObservableStringValue;Ljava/lang/String;)Ljavafx/beans/binding/BooleanBinding;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavafx/beans/binding/StringExpression;
    return-object v0
.end method

.method public lessThan(Ljavafx/beans/value/ObservableStringValue;)Ljavafx/beans/binding/BooleanBinding;
    .locals 4

    .prologue
    .line 279
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/StringExpression;
    move-object v1, p1

    .local v1, "other":Ljavafx/beans/value/ObservableStringValue;
    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Ljavafx/beans/binding/Bindings;->lessThan(Ljavafx/beans/value/ObservableStringValue;Ljavafx/beans/value/ObservableStringValue;)Ljavafx/beans/binding/BooleanBinding;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavafx/beans/binding/StringExpression;
    return-object v0
.end method

.method public lessThanOrEqualTo(Ljava/lang/String;)Ljavafx/beans/binding/BooleanBinding;
    .locals 4

    .prologue
    .line 358
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/StringExpression;
    move-object v1, p1

    .local v1, "other":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Ljavafx/beans/binding/Bindings;->lessThanOrEqual(Ljavafx/beans/value/ObservableStringValue;Ljava/lang/String;)Ljavafx/beans/binding/BooleanBinding;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavafx/beans/binding/StringExpression;
    return-object v0
.end method

.method public lessThanOrEqualTo(Ljavafx/beans/value/ObservableStringValue;)Ljavafx/beans/binding/BooleanBinding;
    .locals 4

    .prologue
    .line 342
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/StringExpression;
    move-object v1, p1

    .local v1, "other":Ljavafx/beans/value/ObservableStringValue;
    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Ljavafx/beans/binding/Bindings;->lessThanOrEqual(Ljavafx/beans/value/ObservableStringValue;Ljavafx/beans/value/ObservableStringValue;)Ljavafx/beans/binding/BooleanBinding;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavafx/beans/binding/StringExpression;
    return-object v0
.end method
