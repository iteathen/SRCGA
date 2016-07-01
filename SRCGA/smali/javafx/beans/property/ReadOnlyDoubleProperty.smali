.class public abstract Ljavafx/beans/property/ReadOnlyDoubleProperty;
.super Ljavafx/beans/binding/DoubleExpression;
.source "ReadOnlyDoubleProperty.java"

# interfaces
.implements Ljavafx/beans/property/ReadOnlyProperty;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljavafx/beans/binding/DoubleExpression;",
        "Ljavafx/beans/property/ReadOnlyProperty",
        "<",
        "Ljava/lang/Number;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 47
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/ReadOnlyDoubleProperty;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/beans/binding/DoubleExpression;-><init>()V

    .line 48
    return-void
.end method

.method public static readOnlyDoubleProperty(Ljavafx/beans/property/ReadOnlyProperty;)Ljavafx/beans/property/ReadOnlyDoubleProperty;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Number;",
            ">(",
            "Ljavafx/beans/property/ReadOnlyProperty",
            "<TT;>;)",
            "Ljavafx/beans/property/ReadOnlyDoubleProperty;"
        }
    .end annotation

    .prologue
    .line 89
    move-object v0, p0

    .local v0, "property":Ljavafx/beans/property/ReadOnlyProperty;, "Ljavafx/beans/property/ReadOnlyProperty<TT;>;"
    move-object v1, v0

    if-nez v1, :cond_0

    .line 90
    new-instance v1, Ljava/lang/NullPointerException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string v3, "Property cannot be null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 93
    :cond_0
    move-object v1, v0

    instance-of v1, v1, Ljavafx/beans/property/ReadOnlyDoubleProperty;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Ljavafx/beans/property/ReadOnlyDoubleProperty;

    :goto_0
    move-object v0, v1

    .end local v0    # "property":Ljavafx/beans/property/ReadOnlyProperty;, "Ljavafx/beans/property/ReadOnlyProperty<TT;>;"
    return-object v0

    .restart local v0    # "property":Ljavafx/beans/property/ReadOnlyProperty;, "Ljavafx/beans/property/ReadOnlyProperty<TT;>;"
    :cond_1
    new-instance v1, Ljavafx/beans/property/ReadOnlyDoubleProperty$1;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Ljavafx/beans/property/ReadOnlyDoubleProperty$1;-><init>(Ljavafx/beans/property/ReadOnlyProperty;)V

    goto :goto_0
.end method


# virtual methods
.method public bridge synthetic asObject()Ljavafx/beans/binding/ObjectExpression;
    .locals 2

    .prologue
    .line 41
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/ReadOnlyDoubleProperty;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/beans/property/ReadOnlyDoubleProperty;->asObject()Ljavafx/beans/property/ReadOnlyObjectProperty;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/beans/property/ReadOnlyDoubleProperty;
    return-object v0
.end method

.method public asObject()Ljavafx/beans/property/ReadOnlyObjectProperty;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ReadOnlyObjectProperty",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .prologue
    .line 137
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/ReadOnlyDoubleProperty;
    new-instance v1, Ljavafx/beans/property/ReadOnlyDoubleProperty$2;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Ljavafx/beans/property/ReadOnlyDoubleProperty$2;-><init>(Ljavafx/beans/property/ReadOnlyDoubleProperty;)V

    move-object v0, v1

    .end local v0    # "this":Ljavafx/beans/property/ReadOnlyDoubleProperty;
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 9

    .prologue
    .line 56
    move-object v1, p0

    .local v1, "this":Ljavafx/beans/property/ReadOnlyDoubleProperty;
    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/beans/property/ReadOnlyDoubleProperty;->getBean()Ljava/lang/Object;

    move-result-object v5

    move-object v2, v5

    .line 57
    .local v2, "bean":Ljava/lang/Object;
    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/beans/property/ReadOnlyDoubleProperty;->getName()Ljava/lang/String;

    move-result-object v5

    move-object v3, v5

    .line 58
    .local v3, "name":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    const-string v7, "ReadOnlyDoubleProperty ["

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v4, v5

    .line 60
    .local v4, "result":Ljava/lang/StringBuilder;
    move-object v5, v2

    if-eqz v5, :cond_0

    .line 61
    move-object v5, v4

    const-string v6, "bean: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 63
    :cond_0
    move-object v5, v3

    if-eqz v5, :cond_1

    move-object v5, v3

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 64
    move-object v5, v4

    const-string v6, "name: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 66
    :cond_1
    move-object v5, v4

    const-string v6, "value: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/beans/property/ReadOnlyDoubleProperty;->get()D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 67
    move-object v5, v4

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v1, v5

    .end local v1    # "this":Ljavafx/beans/property/ReadOnlyDoubleProperty;
    return-object v1
.end method
