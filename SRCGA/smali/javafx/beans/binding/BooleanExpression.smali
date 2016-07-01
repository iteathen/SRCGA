.class public abstract Ljavafx/beans/binding/BooleanExpression;
.super Ljava/lang/Object;
.source "BooleanExpression.java"

# interfaces
.implements Ljavafx/beans/value/ObservableBooleanValue;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 51
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/BooleanExpression;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 52
    return-void
.end method

.method public static booleanExpression(Ljavafx/beans/value/ObservableBooleanValue;)Ljavafx/beans/binding/BooleanExpression;
    .locals 5

    .prologue
    .line 76
    move-object v0, p0

    .local v0, "value":Ljavafx/beans/value/ObservableBooleanValue;
    move-object v1, v0

    if-nez v1, :cond_0

    .line 77
    new-instance v1, Ljava/lang/NullPointerException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string v3, "Value must be specified."

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 79
    :cond_0
    move-object v1, v0

    instance-of v1, v1, Ljavafx/beans/binding/BooleanExpression;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Ljavafx/beans/binding/BooleanExpression;

    :goto_0
    move-object v0, v1

    .end local v0    # "value":Ljavafx/beans/value/ObservableBooleanValue;
    return-object v0

    .restart local v0    # "value":Ljavafx/beans/value/ObservableBooleanValue;
    :cond_1
    new-instance v1, Ljavafx/beans/binding/BooleanExpression$1;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Ljavafx/beans/binding/BooleanExpression$1;-><init>(Ljavafx/beans/value/ObservableBooleanValue;)V

    goto :goto_0
.end method

.method public static booleanExpression(Ljavafx/beans/value/ObservableValue;)Ljavafx/beans/binding/BooleanExpression;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/value/ObservableValue",
            "<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljavafx/beans/binding/BooleanExpression;"
        }
    .end annotation

    .prologue
    .line 122
    move-object v0, p0

    .local v0, "value":Ljavafx/beans/value/ObservableValue;, "Ljavafx/beans/value/ObservableValue<Ljava/lang/Boolean;>;"
    move-object v1, v0

    if-nez v1, :cond_0

    .line 123
    new-instance v1, Ljava/lang/NullPointerException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string v3, "Value must be specified."

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 125
    :cond_0
    move-object v1, v0

    instance-of v1, v1, Ljavafx/beans/binding/BooleanExpression;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Ljavafx/beans/binding/BooleanExpression;

    :goto_0
    move-object v0, v1

    .end local v0    # "value":Ljavafx/beans/value/ObservableValue;, "Ljavafx/beans/value/ObservableValue<Ljava/lang/Boolean;>;"
    return-object v0

    .restart local v0    # "value":Ljavafx/beans/value/ObservableValue;, "Ljavafx/beans/value/ObservableValue<Ljava/lang/Boolean;>;"
    :cond_1
    new-instance v1, Ljavafx/beans/binding/BooleanExpression$2;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Ljavafx/beans/binding/BooleanExpression$2;-><init>(Ljavafx/beans/value/ObservableValue;)V

    goto :goto_0
.end method


# virtual methods
.method public and(Ljavafx/beans/value/ObservableBooleanValue;)Ljavafx/beans/binding/BooleanBinding;
    .locals 4

    .prologue
    .line 162
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/BooleanExpression;
    move-object v1, p1

    .local v1, "other":Ljavafx/beans/value/ObservableBooleanValue;
    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Ljavafx/beans/binding/Bindings;->and(Ljavafx/beans/value/ObservableBooleanValue;Ljavafx/beans/value/ObservableBooleanValue;)Ljavafx/beans/binding/BooleanBinding;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavafx/beans/binding/BooleanExpression;
    return-object v0
.end method

.method public asObject()Ljavafx/beans/binding/ObjectExpression;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/binding/ObjectExpression",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 240
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/BooleanExpression;
    new-instance v1, Ljavafx/beans/binding/BooleanExpression$3;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Ljavafx/beans/binding/BooleanExpression$3;-><init>(Ljavafx/beans/binding/BooleanExpression;)V

    move-object v0, v1

    .end local v0    # "this":Ljavafx/beans/binding/BooleanExpression;
    return-object v0
.end method

.method public asString()Ljavafx/beans/binding/StringBinding;
    .locals 2

    .prologue
    .line 227
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/BooleanExpression;
    move-object v1, v0

    invoke-static {v1}, Lcom/sun/javafx/binding/StringFormatter;->convert(Ljavafx/beans/value/ObservableValue;)Ljavafx/beans/binding/StringExpression;

    move-result-object v1

    check-cast v1, Ljavafx/beans/binding/StringBinding;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/beans/binding/BooleanExpression;
    return-object v0
.end method

.method public getValue()Ljava/lang/Boolean;
    .locals 2

    .prologue
    .line 56
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/BooleanExpression;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/beans/binding/BooleanExpression;->get()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/beans/binding/BooleanExpression;
    return-object v0
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 46
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/BooleanExpression;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/beans/binding/BooleanExpression;->getValue()Ljava/lang/Boolean;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/beans/binding/BooleanExpression;
    return-object v0
.end method

.method public isEqualTo(Ljavafx/beans/value/ObservableBooleanValue;)Ljavafx/beans/binding/BooleanBinding;
    .locals 4

    .prologue
    .line 201
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/BooleanExpression;
    move-object v1, p1

    .local v1, "other":Ljavafx/beans/value/ObservableBooleanValue;
    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Ljavafx/beans/binding/Bindings;->equal(Ljavafx/beans/value/ObservableBooleanValue;Ljavafx/beans/value/ObservableBooleanValue;)Ljavafx/beans/binding/BooleanBinding;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavafx/beans/binding/BooleanExpression;
    return-object v0
.end method

.method public isNotEqualTo(Ljavafx/beans/value/ObservableBooleanValue;)Ljavafx/beans/binding/BooleanBinding;
    .locals 4

    .prologue
    .line 215
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/BooleanExpression;
    move-object v1, p1

    .local v1, "other":Ljavafx/beans/value/ObservableBooleanValue;
    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Ljavafx/beans/binding/Bindings;->notEqual(Ljavafx/beans/value/ObservableBooleanValue;Ljavafx/beans/value/ObservableBooleanValue;)Ljavafx/beans/binding/BooleanBinding;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavafx/beans/binding/BooleanExpression;
    return-object v0
.end method

.method public not()Ljavafx/beans/binding/BooleanBinding;
    .locals 2

    .prologue
    .line 187
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/BooleanExpression;
    move-object v1, v0

    invoke-static {v1}, Ljavafx/beans/binding/Bindings;->not(Ljavafx/beans/value/ObservableBooleanValue;)Ljavafx/beans/binding/BooleanBinding;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/beans/binding/BooleanExpression;
    return-object v0
.end method

.method public or(Ljavafx/beans/value/ObservableBooleanValue;)Ljavafx/beans/binding/BooleanBinding;
    .locals 4

    .prologue
    .line 177
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/BooleanExpression;
    move-object v1, p1

    .local v1, "other":Ljavafx/beans/value/ObservableBooleanValue;
    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Ljavafx/beans/binding/Bindings;->or(Ljavafx/beans/value/ObservableBooleanValue;Ljavafx/beans/value/ObservableBooleanValue;)Ljavafx/beans/binding/BooleanBinding;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavafx/beans/binding/BooleanExpression;
    return-object v0
.end method
