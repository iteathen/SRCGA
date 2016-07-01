.class public abstract Ljavafx/beans/binding/ObjectExpression;
.super Ljava/lang/Object;
.source "ObjectExpression.java"

# interfaces
.implements Ljavafx/beans/value/ObservableObjectValue;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljavafx/beans/value/ObservableObjectValue",
        "<TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 46
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/ObjectExpression;, "Ljavafx/beans/binding/ObjectExpression<TT;>;"
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static objectExpression(Ljavafx/beans/value/ObservableObjectValue;)Ljavafx/beans/binding/ObjectExpression;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljavafx/beans/value/ObservableObjectValue",
            "<TT;>;)",
            "Ljavafx/beans/binding/ObjectExpression",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 70
    move-object v0, p0

    .local v0, "value":Ljavafx/beans/value/ObservableObjectValue;, "Ljavafx/beans/value/ObservableObjectValue<TT;>;"
    move-object v1, v0

    if-nez v1, :cond_0

    .line 71
    new-instance v1, Ljava/lang/NullPointerException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string v3, "Value must be specified."

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 73
    :cond_0
    move-object v1, v0

    instance-of v1, v1, Ljavafx/beans/binding/ObjectExpression;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Ljavafx/beans/binding/ObjectExpression;

    :goto_0
    move-object v0, v1

    .end local v0    # "value":Ljavafx/beans/value/ObservableObjectValue;, "Ljavafx/beans/value/ObservableObjectValue<TT;>;"
    return-object v0

    .restart local v0    # "value":Ljavafx/beans/value/ObservableObjectValue;, "Ljavafx/beans/value/ObservableObjectValue<TT;>;"
    :cond_1
    new-instance v1, Ljavafx/beans/binding/ObjectExpression$1;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Ljavafx/beans/binding/ObjectExpression$1;-><init>(Ljavafx/beans/value/ObservableObjectValue;)V

    goto :goto_0
.end method


# virtual methods
.method public asString()Ljavafx/beans/binding/StringBinding;
    .locals 2

    .prologue
    .line 179
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/ObjectExpression;, "Ljavafx/beans/binding/ObjectExpression<TT;>;"
    move-object v1, v0

    invoke-static {v1}, Lcom/sun/javafx/binding/StringFormatter;->convert(Ljavafx/beans/value/ObservableValue;)Ljavafx/beans/binding/StringExpression;

    move-result-object v1

    check-cast v1, Ljavafx/beans/binding/StringBinding;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/beans/binding/ObjectExpression;, "Ljavafx/beans/binding/ObjectExpression<TT;>;"
    return-object v0
.end method

.method public asString(Ljava/lang/String;)Ljavafx/beans/binding/StringBinding;
    .locals 8

    .prologue
    .line 197
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/ObjectExpression;, "Ljavafx/beans/binding/ObjectExpression<TT;>;"
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

    .end local v0    # "this":Ljavafx/beans/binding/ObjectExpression;, "Ljavafx/beans/binding/ObjectExpression<TT;>;"
    return-object v0
.end method

.method public asString(Ljava/util/Locale;Ljava/lang/String;)Ljavafx/beans/binding/StringBinding;
    .locals 10

    .prologue
    .line 217
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/ObjectExpression;, "Ljavafx/beans/binding/ObjectExpression<TT;>;"
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

    .end local v0    # "this":Ljavafx/beans/binding/ObjectExpression;, "Ljavafx/beans/binding/ObjectExpression<TT;>;"
    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 50
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/ObjectExpression;, "Ljavafx/beans/binding/ObjectExpression<TT;>;"
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/beans/binding/ObjectExpression;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/beans/binding/ObjectExpression;, "Ljavafx/beans/binding/ObjectExpression<TT;>;"
    return-object v0
.end method

.method public isEqualTo(Ljava/lang/Object;)Ljavafx/beans/binding/BooleanBinding;
    .locals 4

    .prologue
    .line 120
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/ObjectExpression;, "Ljavafx/beans/binding/ObjectExpression<TT;>;"
    move-object v1, p1

    .local v1, "other":Ljava/lang/Object;
    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Ljavafx/beans/binding/Bindings;->equal(Ljavafx/beans/value/ObservableObjectValue;Ljava/lang/Object;)Ljavafx/beans/binding/BooleanBinding;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavafx/beans/binding/ObjectExpression;, "Ljavafx/beans/binding/ObjectExpression<TT;>;"
    return-object v0
.end method

.method public isEqualTo(Ljavafx/beans/value/ObservableObjectValue;)Ljavafx/beans/binding/BooleanBinding;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/value/ObservableObjectValue",
            "<*>;)",
            "Ljavafx/beans/binding/BooleanBinding;"
        }
    .end annotation

    .prologue
    .line 108
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/ObjectExpression;, "Ljavafx/beans/binding/ObjectExpression<TT;>;"
    move-object v1, p1

    .local v1, "other":Ljavafx/beans/value/ObservableObjectValue;, "Ljavafx/beans/value/ObservableObjectValue<*>;"
    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Ljavafx/beans/binding/Bindings;->equal(Ljavafx/beans/value/ObservableObjectValue;Ljavafx/beans/value/ObservableObjectValue;)Ljavafx/beans/binding/BooleanBinding;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavafx/beans/binding/ObjectExpression;, "Ljavafx/beans/binding/ObjectExpression<TT;>;"
    return-object v0
.end method

.method public isNotEqualTo(Ljava/lang/Object;)Ljavafx/beans/binding/BooleanBinding;
    .locals 4

    .prologue
    .line 146
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/ObjectExpression;, "Ljavafx/beans/binding/ObjectExpression<TT;>;"
    move-object v1, p1

    .local v1, "other":Ljava/lang/Object;
    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Ljavafx/beans/binding/Bindings;->notEqual(Ljavafx/beans/value/ObservableObjectValue;Ljava/lang/Object;)Ljavafx/beans/binding/BooleanBinding;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavafx/beans/binding/ObjectExpression;, "Ljavafx/beans/binding/ObjectExpression<TT;>;"
    return-object v0
.end method

.method public isNotEqualTo(Ljavafx/beans/value/ObservableObjectValue;)Ljavafx/beans/binding/BooleanBinding;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/value/ObservableObjectValue",
            "<*>;)",
            "Ljavafx/beans/binding/BooleanBinding;"
        }
    .end annotation

    .prologue
    .line 134
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/ObjectExpression;, "Ljavafx/beans/binding/ObjectExpression<TT;>;"
    move-object v1, p1

    .local v1, "other":Ljavafx/beans/value/ObservableObjectValue;, "Ljavafx/beans/value/ObservableObjectValue<*>;"
    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Ljavafx/beans/binding/Bindings;->notEqual(Ljavafx/beans/value/ObservableObjectValue;Ljavafx/beans/value/ObservableObjectValue;)Ljavafx/beans/binding/BooleanBinding;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavafx/beans/binding/ObjectExpression;, "Ljavafx/beans/binding/ObjectExpression<TT;>;"
    return-object v0
.end method

.method public isNotNull()Ljavafx/beans/binding/BooleanBinding;
    .locals 2

    .prologue
    .line 166
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/ObjectExpression;, "Ljavafx/beans/binding/ObjectExpression<TT;>;"
    move-object v1, v0

    invoke-static {v1}, Ljavafx/beans/binding/Bindings;->isNotNull(Ljavafx/beans/value/ObservableObjectValue;)Ljavafx/beans/binding/BooleanBinding;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/beans/binding/ObjectExpression;, "Ljavafx/beans/binding/ObjectExpression<TT;>;"
    return-object v0
.end method

.method public isNull()Ljavafx/beans/binding/BooleanBinding;
    .locals 2

    .prologue
    .line 156
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/ObjectExpression;, "Ljavafx/beans/binding/ObjectExpression<TT;>;"
    move-object v1, v0

    invoke-static {v1}, Ljavafx/beans/binding/Bindings;->isNull(Ljavafx/beans/value/ObservableObjectValue;)Ljavafx/beans/binding/BooleanBinding;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/beans/binding/ObjectExpression;, "Ljavafx/beans/binding/ObjectExpression<TT;>;"
    return-object v0
.end method
