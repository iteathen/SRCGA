.class public abstract Ljavafx/beans/property/DoubleProperty;
.super Ljavafx/beans/property/ReadOnlyDoubleProperty;
.source "DoubleProperty.java"

# interfaces
.implements Ljavafx/beans/property/Property;
.implements Ljavafx/beans/value/WritableDoubleValue;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljavafx/beans/property/ReadOnlyDoubleProperty;",
        "Ljavafx/beans/property/Property",
        "<",
        "Ljava/lang/Number;",
        ">;",
        "Ljavafx/beans/value/WritableDoubleValue;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 57
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/DoubleProperty;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/beans/property/ReadOnlyDoubleProperty;-><init>()V

    return-void
.end method

.method public static doubleProperty(Ljavafx/beans/property/Property;)Ljavafx/beans/property/DoubleProperty;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/property/Property",
            "<",
            "Ljava/lang/Double;",
            ">;)",
            "Ljavafx/beans/property/DoubleProperty;"
        }
    .end annotation

    .prologue
    .line 145
    move-object v0, p0

    .local v0, "property":Ljavafx/beans/property/Property;, "Ljavafx/beans/property/Property<Ljava/lang/Double;>;"
    move-object v1, v0

    if-nez v1, :cond_0

    .line 146
    new-instance v1, Ljava/lang/NullPointerException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string v3, "Property cannot be null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 148
    :cond_0
    new-instance v1, Ljavafx/beans/property/DoubleProperty$1;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Ljavafx/beans/property/DoubleProperty$1;-><init>(Ljavafx/beans/property/Property;)V

    move-object v0, v1

    .end local v0    # "property":Ljavafx/beans/property/Property;, "Ljavafx/beans/property/Property<Ljava/lang/Double;>;"
    return-object v0
.end method


# virtual methods
.method public bridge synthetic asObject()Ljavafx/beans/binding/ObjectExpression;
    .locals 2

    .prologue
    .line 57
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/DoubleProperty;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/beans/property/DoubleProperty;->asObject()Ljavafx/beans/property/ObjectProperty;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/beans/property/DoubleProperty;
    return-object v0
.end method

.method public asObject()Ljavafx/beans/property/ObjectProperty;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .prologue
    .line 195
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/DoubleProperty;
    new-instance v1, Ljavafx/beans/property/DoubleProperty$2;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Ljavafx/beans/property/DoubleProperty$2;-><init>(Ljavafx/beans/property/DoubleProperty;)V

    move-object v0, v1

    .end local v0    # "this":Ljavafx/beans/property/DoubleProperty;
    return-object v0
.end method

.method public bridge synthetic asObject()Ljavafx/beans/property/ReadOnlyObjectProperty;
    .locals 2

    .prologue
    .line 57
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/DoubleProperty;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/beans/property/DoubleProperty;->asObject()Ljavafx/beans/property/ObjectProperty;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/beans/property/DoubleProperty;
    return-object v0
.end method

.method public bindBidirectional(Ljavafx/beans/property/Property;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/property/Property",
            "<",
            "Ljava/lang/Number;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 78
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/DoubleProperty;
    move-object v1, p1

    .local v1, "other":Ljavafx/beans/property/Property;, "Ljavafx/beans/property/Property<Ljava/lang/Number;>;"
    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Ljavafx/beans/binding/Bindings;->bindBidirectional(Ljavafx/beans/property/Property;Ljavafx/beans/property/Property;)V

    .line 79
    return-void
.end method

.method public setValue(Ljava/lang/Number;)V
    .locals 8

    .prologue
    .line 65
    move-object v1, p0

    .local v1, "this":Ljavafx/beans/property/DoubleProperty;
    move-object v2, p1

    .local v2, "v":Ljava/lang/Number;
    move-object v3, v2

    if-nez v3, :cond_0

    .line 66
    invoke-static {}, Lcom/sun/javafx/binding/Logging;->getLogger()Lsun/util/logging/PlatformLogger;

    move-result-object v3

    const-string v4, "Attempt to set double property to null, using default value instead."

    new-instance v5, Ljava/lang/NullPointerException;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/NullPointerException;-><init>()V

    invoke-virtual {v3, v4, v5}, Lsun/util/logging/PlatformLogger;->fine(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 67
    move-object v3, v1

    const-wide/16 v4, 0x0

    invoke-virtual {v3, v4, v5}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    .line 71
    :goto_0
    return-void

    .line 69
    :cond_0
    move-object v3, v1

    move-object v4, v2

    invoke-virtual {v4}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    goto :goto_0
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 57
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/DoubleProperty;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v2, v3}, Ljavafx/beans/property/DoubleProperty;->setValue(Ljava/lang/Number;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 9

    .prologue
    .line 95
    move-object v1, p0

    .local v1, "this":Ljavafx/beans/property/DoubleProperty;
    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/beans/property/DoubleProperty;->getBean()Ljava/lang/Object;

    move-result-object v5

    move-object v2, v5

    .line 96
    .local v2, "bean":Ljava/lang/Object;
    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/beans/property/DoubleProperty;->getName()Ljava/lang/String;

    move-result-object v5

    move-object v3, v5

    .line 97
    .local v3, "name":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    const-string v7, "DoubleProperty ["

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v4, v5

    .line 99
    .local v4, "result":Ljava/lang/StringBuilder;
    move-object v5, v2

    if-eqz v5, :cond_0

    .line 100
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

    .line 102
    :cond_0
    move-object v5, v3

    if-eqz v5, :cond_1

    move-object v5, v3

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 103
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

    .line 105
    :cond_1
    move-object v5, v4

    const-string v6, "value: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 106
    move-object v5, v4

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v1, v5

    .end local v1    # "this":Ljavafx/beans/property/DoubleProperty;
    return-object v1
.end method

.method public unbindBidirectional(Ljavafx/beans/property/Property;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/property/Property",
            "<",
            "Ljava/lang/Number;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 86
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/DoubleProperty;
    move-object v1, p1

    .local v1, "other":Ljavafx/beans/property/Property;, "Ljavafx/beans/property/Property<Ljava/lang/Number;>;"
    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Ljavafx/beans/binding/Bindings;->unbindBidirectional(Ljavafx/beans/property/Property;Ljavafx/beans/property/Property;)V

    .line 87
    return-void
.end method
