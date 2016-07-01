.class public abstract Ljavafx/beans/property/StringProperty;
.super Ljavafx/beans/property/ReadOnlyStringProperty;
.source "StringProperty.java"

# interfaces
.implements Ljavafx/beans/property/Property;
.implements Ljavafx/beans/value/WritableStringValue;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljavafx/beans/property/ReadOnlyStringProperty;",
        "Ljavafx/beans/property/Property",
        "<",
        "Ljava/lang/String;",
        ">;",
        "Ljavafx/beans/value/WritableStringValue;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 57
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/StringProperty;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/beans/property/ReadOnlyStringProperty;-><init>()V

    return-void
.end method


# virtual methods
.method public bindBidirectional(Ljavafx/beans/property/Property;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/property/Property",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 73
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/StringProperty;
    move-object v1, p1

    .local v1, "other":Ljavafx/beans/property/Property;, "Ljavafx/beans/property/Property<Ljava/lang/String;>;"
    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Ljavafx/beans/binding/Bindings;->bindBidirectional(Ljavafx/beans/property/Property;Ljavafx/beans/property/Property;)V

    .line 74
    return-void
.end method

.method public bindBidirectional(Ljavafx/beans/property/Property;Ljava/text/Format;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/property/Property",
            "<*>;",
            "Ljava/text/Format;",
            ")V"
        }
    .end annotation

    .prologue
    .line 92
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/StringProperty;
    move-object v1, p1

    .local v1, "other":Ljavafx/beans/property/Property;, "Ljavafx/beans/property/Property<*>;"
    move-object v2, p2

    .local v2, "format":Ljava/text/Format;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-static {v3, v4, v5}, Ljavafx/beans/binding/Bindings;->bindBidirectional(Ljavafx/beans/property/Property;Ljavafx/beans/property/Property;Ljava/text/Format;)V

    .line 93
    return-void
.end method

.method public bindBidirectional(Ljavafx/beans/property/Property;Ljavafx/util/StringConverter;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljavafx/beans/property/Property",
            "<TT;>;",
            "Ljavafx/util/StringConverter",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 111
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/StringProperty;
    move-object v1, p1

    .local v1, "other":Ljavafx/beans/property/Property;, "Ljavafx/beans/property/Property<TT;>;"
    move-object v2, p2

    .local v2, "converter":Ljavafx/util/StringConverter;, "Ljavafx/util/StringConverter<TT;>;"
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-static {v3, v4, v5}, Ljavafx/beans/binding/Bindings;->bindBidirectional(Ljavafx/beans/property/Property;Ljavafx/beans/property/Property;Ljavafx/util/StringConverter;)V

    .line 112
    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 57
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/StringProperty;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljavafx/beans/property/StringProperty;->setValue(Ljava/lang/String;)V

    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 65
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/StringProperty;
    move-object v1, p1

    .local v1, "v":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/StringProperty;->set(Ljava/lang/Object;)V

    .line 66
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .prologue
    .line 147
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/StringProperty;
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/beans/property/StringProperty;->getBean()Ljava/lang/Object;

    move-result-object v4

    move-object v1, v4

    .line 148
    .local v1, "bean":Ljava/lang/Object;
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/beans/property/StringProperty;->getName()Ljava/lang/String;

    move-result-object v4

    move-object v2, v4

    .line 149
    .local v2, "name":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    const-string v6, "StringProperty ["

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v3, v4

    .line 151
    .local v3, "result":Ljava/lang/StringBuilder;
    move-object v4, v1

    if-eqz v4, :cond_0

    .line 152
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

    .line 154
    :cond_0
    move-object v4, v2

    if-eqz v4, :cond_1

    move-object v4, v2

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 155
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

    .line 157
    :cond_1
    move-object v4, v3

    const-string v5, "value: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/beans/property/StringProperty;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 158
    move-object v4, v3

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Ljavafx/beans/property/StringProperty;
    return-object v0
.end method

.method public unbindBidirectional(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 138
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/StringProperty;
    move-object v1, p1

    .local v1, "other":Ljava/lang/Object;
    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Ljavafx/beans/binding/Bindings;->unbindBidirectional(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 139
    return-void
.end method

.method public unbindBidirectional(Ljavafx/beans/property/Property;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/property/Property",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 119
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/StringProperty;
    move-object v1, p1

    .local v1, "other":Ljavafx/beans/property/Property;, "Ljavafx/beans/property/Property<Ljava/lang/String;>;"
    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Ljavafx/beans/binding/Bindings;->unbindBidirectional(Ljavafx/beans/property/Property;Ljavafx/beans/property/Property;)V

    .line 120
    return-void
.end method
