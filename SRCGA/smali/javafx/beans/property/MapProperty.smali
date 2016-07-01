.class public abstract Ljavafx/beans/property/MapProperty;
.super Ljavafx/beans/property/ReadOnlyMapProperty;
.source "MapProperty.java"

# interfaces
.implements Ljavafx/beans/property/Property;
.implements Ljavafx/beans/value/WritableMapValue;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljavafx/beans/property/ReadOnlyMapProperty",
        "<TK;TV;>;",
        "Ljavafx/beans/property/Property",
        "<",
        "Ljavafx/collections/ObservableMap",
        "<TK;TV;>;>;",
        "Ljavafx/beans/value/WritableMapValue",
        "<TK;TV;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 57
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/MapProperty;, "Ljavafx/beans/property/MapProperty<TK;TV;>;"
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/beans/property/ReadOnlyMapProperty;-><init>()V

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
            "Ljavafx/collections/ObservableMap",
            "<TK;TV;>;>;)V"
        }
    .end annotation

    .prologue
    .line 72
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/MapProperty;, "Ljavafx/beans/property/MapProperty<TK;TV;>;"
    move-object v1, p1

    .local v1, "other":Ljavafx/beans/property/Property;, "Ljavafx/beans/property/Property<Ljavafx/collections/ObservableMap<TK;TV;>;>;"
    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Ljavafx/beans/binding/Bindings;->bindBidirectional(Ljavafx/beans/property/Property;Ljavafx/beans/property/Property;)V

    .line 73
    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 57
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/MapProperty;, "Ljavafx/beans/property/MapProperty<TK;TV;>;"
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    check-cast v3, Ljavafx/collections/ObservableMap;

    invoke-virtual {v2, v3}, Ljavafx/beans/property/MapProperty;->setValue(Ljavafx/collections/ObservableMap;)V

    return-void
.end method

.method public setValue(Ljavafx/collections/ObservableMap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/ObservableMap",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 64
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/MapProperty;, "Ljavafx/beans/property/MapProperty<TK;TV;>;"
    move-object v1, p1

    .local v1, "v":Ljavafx/collections/ObservableMap;, "Ljavafx/collections/ObservableMap<TK;TV;>;"
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/MapProperty;->set(Ljava/lang/Object;)V

    .line 65
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .prologue
    .line 89
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/MapProperty;, "Ljavafx/beans/property/MapProperty<TK;TV;>;"
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/beans/property/MapProperty;->getBean()Ljava/lang/Object;

    move-result-object v4

    move-object v1, v4

    .line 90
    .local v1, "bean":Ljava/lang/Object;
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/beans/property/MapProperty;->getName()Ljava/lang/String;

    move-result-object v4

    move-object v2, v4

    .line 91
    .local v2, "name":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    const-string v6, "MapProperty ["

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v3, v4

    .line 93
    .local v3, "result":Ljava/lang/StringBuilder;
    move-object v4, v1

    if-eqz v4, :cond_0

    .line 94
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

    .line 96
    :cond_0
    move-object v4, v2

    if-eqz v4, :cond_1

    move-object v4, v2

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 97
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

    .line 99
    :cond_1
    move-object v4, v3

    const-string v5, "value: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/beans/property/MapProperty;->get()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 100
    move-object v4, v3

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Ljavafx/beans/property/MapProperty;, "Ljavafx/beans/property/MapProperty<TK;TV;>;"
    return-object v0
.end method

.method public unbindBidirectional(Ljavafx/beans/property/Property;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/property/Property",
            "<",
            "Ljavafx/collections/ObservableMap",
            "<TK;TV;>;>;)V"
        }
    .end annotation

    .prologue
    .line 80
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/MapProperty;, "Ljavafx/beans/property/MapProperty<TK;TV;>;"
    move-object v1, p1

    .local v1, "other":Ljavafx/beans/property/Property;, "Ljavafx/beans/property/Property<Ljavafx/collections/ObservableMap<TK;TV;>;>;"
    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Ljavafx/beans/binding/Bindings;->unbindBidirectional(Ljavafx/beans/property/Property;Ljavafx/beans/property/Property;)V

    .line 81
    return-void
.end method
