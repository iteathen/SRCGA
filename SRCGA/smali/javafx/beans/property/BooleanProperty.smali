.class public abstract Ljavafx/beans/property/BooleanProperty;
.super Ljavafx/beans/property/ReadOnlyBooleanProperty;
.source "BooleanProperty.java"

# interfaces
.implements Ljavafx/beans/property/Property;
.implements Ljavafx/beans/value/WritableBooleanValue;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljavafx/beans/property/ReadOnlyBooleanProperty;",
        "Ljavafx/beans/property/Property",
        "<",
        "Ljava/lang/Boolean;",
        ">;",
        "Ljavafx/beans/value/WritableBooleanValue;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 65
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/BooleanProperty;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/beans/property/ReadOnlyBooleanProperty;-><init>()V

    .line 66
    return-void
.end method

.method public static booleanProperty(Ljavafx/beans/property/Property;)Ljavafx/beans/property/BooleanProperty;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/property/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljavafx/beans/property/BooleanProperty;"
        }
    .end annotation

    .prologue
    .line 136
    move-object v0, p0

    .local v0, "property":Ljavafx/beans/property/Property;, "Ljavafx/beans/property/Property<Ljava/lang/Boolean;>;"
    move-object v1, v0

    if-nez v1, :cond_0

    .line 137
    new-instance v1, Ljava/lang/NullPointerException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string v3, "Property cannot be null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 139
    :cond_0
    move-object v1, v0

    instance-of v1, v1, Ljavafx/beans/property/BooleanProperty;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Ljavafx/beans/property/BooleanProperty;

    :goto_0
    move-object v0, v1

    .end local v0    # "property":Ljavafx/beans/property/Property;, "Ljavafx/beans/property/Property<Ljava/lang/Boolean;>;"
    return-object v0

    .restart local v0    # "property":Ljavafx/beans/property/Property;, "Ljavafx/beans/property/Property<Ljava/lang/Boolean;>;"
    :cond_1
    new-instance v1, Ljavafx/beans/property/BooleanProperty$1;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Ljavafx/beans/property/BooleanProperty$1;-><init>(Ljavafx/beans/property/Property;)V

    goto :goto_0
.end method


# virtual methods
.method public bridge synthetic asObject()Ljavafx/beans/binding/ObjectExpression;
    .locals 2

    .prologue
    .line 59
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/BooleanProperty;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/beans/property/BooleanProperty;->asObject()Ljavafx/beans/property/ObjectProperty;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/beans/property/BooleanProperty;
    return-object v0
.end method

.method public asObject()Ljavafx/beans/property/ObjectProperty;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 176
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/BooleanProperty;
    new-instance v1, Ljavafx/beans/property/BooleanProperty$2;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Ljavafx/beans/property/BooleanProperty$2;-><init>(Ljavafx/beans/property/BooleanProperty;)V

    move-object v0, v1

    .end local v0    # "this":Ljavafx/beans/property/BooleanProperty;
    return-object v0
.end method

.method public bridge synthetic asObject()Ljavafx/beans/property/ReadOnlyObjectProperty;
    .locals 2

    .prologue
    .line 59
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/BooleanProperty;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/beans/property/BooleanProperty;->asObject()Ljavafx/beans/property/ObjectProperty;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/beans/property/BooleanProperty;
    return-object v0
.end method

.method public bindBidirectional(Ljavafx/beans/property/Property;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/property/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 86
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/BooleanProperty;
    move-object v1, p1

    .local v1, "other":Ljavafx/beans/property/Property;, "Ljavafx/beans/property/Property<Ljava/lang/Boolean;>;"
    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Ljavafx/beans/binding/Bindings;->bindBidirectional(Ljavafx/beans/property/Property;Ljavafx/beans/property/Property;)V

    .line 87
    return-void
.end method

.method public setValue(Ljava/lang/Boolean;)V
    .locals 7

    .prologue
    .line 73
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/BooleanProperty;
    move-object v1, p1

    .local v1, "v":Ljava/lang/Boolean;
    move-object v2, v1

    if-nez v2, :cond_0

    .line 74
    invoke-static {}, Lcom/sun/javafx/binding/Logging;->getLogger()Lsun/util/logging/PlatformLogger;

    move-result-object v2

    const-string v3, "Attempt to set boolean property to null, using default value instead."

    new-instance v4, Ljava/lang/NullPointerException;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/NullPointerException;-><init>()V

    invoke-virtual {v2, v3, v4}, Lsun/util/logging/PlatformLogger;->fine(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 75
    move-object v2, v0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljavafx/beans/property/BooleanProperty;->set(Z)V

    .line 79
    :goto_0
    return-void

    .line 77
    :cond_0
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljavafx/beans/property/BooleanProperty;->set(Z)V

    goto :goto_0
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 59
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/BooleanProperty;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Ljavafx/beans/property/BooleanProperty;->setValue(Ljava/lang/Boolean;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .prologue
    .line 103
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/BooleanProperty;
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/beans/property/BooleanProperty;->getBean()Ljava/lang/Object;

    move-result-object v4

    move-object v1, v4

    .line 104
    .local v1, "bean":Ljava/lang/Object;
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/beans/property/BooleanProperty;->getName()Ljava/lang/String;

    move-result-object v4

    move-object v2, v4

    .line 105
    .local v2, "name":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    const-string v6, "BooleanProperty ["

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v3, v4

    .line 107
    .local v3, "result":Ljava/lang/StringBuilder;
    move-object v4, v1

    if-eqz v4, :cond_0

    .line 108
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

    .line 110
    :cond_0
    move-object v4, v2

    if-eqz v4, :cond_1

    move-object v4, v2

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 111
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

    .line 113
    :cond_1
    move-object v4, v3

    const-string v5, "value: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/beans/property/BooleanProperty;->get()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 114
    move-object v4, v3

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Ljavafx/beans/property/BooleanProperty;
    return-object v0
.end method

.method public unbindBidirectional(Ljavafx/beans/property/Property;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/property/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 94
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/BooleanProperty;
    move-object v1, p1

    .local v1, "other":Ljavafx/beans/property/Property;, "Ljavafx/beans/property/Property<Ljava/lang/Boolean;>;"
    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Ljavafx/beans/binding/Bindings;->unbindBidirectional(Ljavafx/beans/property/Property;Ljavafx/beans/property/Property;)V

    .line 95
    return-void
.end method
