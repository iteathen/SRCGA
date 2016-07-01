.class public abstract Ljavafx/beans/property/ReadOnlyBooleanProperty;
.super Ljavafx/beans/binding/BooleanExpression;
.source "ReadOnlyBooleanProperty.java"

# interfaces
.implements Ljavafx/beans/property/ReadOnlyProperty;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljavafx/beans/binding/BooleanExpression;",
        "Ljavafx/beans/property/ReadOnlyProperty",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 47
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/ReadOnlyBooleanProperty;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/beans/binding/BooleanExpression;-><init>()V

    .line 48
    return-void
.end method

.method public static readOnlyBooleanProperty(Ljavafx/beans/property/ReadOnlyProperty;)Ljavafx/beans/property/ReadOnlyBooleanProperty;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/property/ReadOnlyProperty",
            "<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljavafx/beans/property/ReadOnlyBooleanProperty;"
        }
    .end annotation

    .prologue
    .line 89
    move-object v0, p0

    .local v0, "property":Ljavafx/beans/property/ReadOnlyProperty;, "Ljavafx/beans/property/ReadOnlyProperty<Ljava/lang/Boolean;>;"
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

    instance-of v1, v1, Ljavafx/beans/property/ReadOnlyBooleanProperty;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Ljavafx/beans/property/ReadOnlyBooleanProperty;

    :goto_0
    move-object v0, v1

    .end local v0    # "property":Ljavafx/beans/property/ReadOnlyProperty;, "Ljavafx/beans/property/ReadOnlyProperty<Ljava/lang/Boolean;>;"
    return-object v0

    .restart local v0    # "property":Ljavafx/beans/property/ReadOnlyProperty;, "Ljavafx/beans/property/ReadOnlyProperty<Ljava/lang/Boolean;>;"
    :cond_1
    new-instance v1, Ljavafx/beans/property/ReadOnlyBooleanProperty$1;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Ljavafx/beans/property/ReadOnlyBooleanProperty$1;-><init>(Ljavafx/beans/property/ReadOnlyProperty;)V

    goto :goto_0
.end method


# virtual methods
.method public bridge synthetic asObject()Ljavafx/beans/binding/ObjectExpression;
    .locals 2

    .prologue
    .line 41
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/ReadOnlyBooleanProperty;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/beans/property/ReadOnlyBooleanProperty;->asObject()Ljavafx/beans/property/ReadOnlyObjectProperty;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/beans/property/ReadOnlyBooleanProperty;
    return-object v0
.end method

.method public asObject()Ljavafx/beans/property/ReadOnlyObjectProperty;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ReadOnlyObjectProperty",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 137
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/ReadOnlyBooleanProperty;
    new-instance v1, Ljavafx/beans/property/ReadOnlyBooleanProperty$2;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Ljavafx/beans/property/ReadOnlyBooleanProperty$2;-><init>(Ljavafx/beans/property/ReadOnlyBooleanProperty;)V

    move-object v0, v1

    .end local v0    # "this":Ljavafx/beans/property/ReadOnlyBooleanProperty;
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .prologue
    .line 56
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/ReadOnlyBooleanProperty;
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/beans/property/ReadOnlyBooleanProperty;->getBean()Ljava/lang/Object;

    move-result-object v4

    move-object v1, v4

    .line 57
    .local v1, "bean":Ljava/lang/Object;
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/beans/property/ReadOnlyBooleanProperty;->getName()Ljava/lang/String;

    move-result-object v4

    move-object v2, v4

    .line 58
    .local v2, "name":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    const-string v6, "ReadOnlyBooleanProperty ["

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v3, v4

    .line 60
    .local v3, "result":Ljava/lang/StringBuilder;
    move-object v4, v1

    if-eqz v4, :cond_0

    .line 61
    move-object v4, v3

    const-string v5, "bean: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 63
    :cond_0
    move-object v4, v2

    if-eqz v4, :cond_1

    move-object v4, v2

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 64
    move-object v4, v3

    const-string v5, "name: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 66
    :cond_1
    move-object v4, v3

    const-string v5, "value: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/beans/property/ReadOnlyBooleanProperty;->get()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 67
    move-object v4, v3

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Ljavafx/beans/property/ReadOnlyBooleanProperty;
    return-object v0
.end method
