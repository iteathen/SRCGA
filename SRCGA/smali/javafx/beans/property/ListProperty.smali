.class public abstract Ljavafx/beans/property/ListProperty;
.super Ljavafx/beans/property/ReadOnlyListProperty;
.source "ListProperty.java"

# interfaces
.implements Ljavafx/beans/property/Property;
.implements Ljavafx/beans/value/WritableListValue;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljavafx/beans/property/ReadOnlyListProperty",
        "<TE;>;",
        "Ljavafx/beans/property/Property",
        "<",
        "Ljavafx/collections/ObservableList",
        "<TE;>;>;",
        "Ljavafx/beans/value/WritableListValue",
        "<TE;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 56
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/ListProperty;, "Ljavafx/beans/property/ListProperty<TE;>;"
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/beans/property/ReadOnlyListProperty;-><init>()V

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
            "Ljavafx/collections/ObservableList",
            "<TE;>;>;)V"
        }
    .end annotation

    .prologue
    .line 71
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/ListProperty;, "Ljavafx/beans/property/ListProperty<TE;>;"
    move-object v1, p1

    .local v1, "other":Ljavafx/beans/property/Property;, "Ljavafx/beans/property/Property<Ljavafx/collections/ObservableList<TE;>;>;"
    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Ljavafx/beans/binding/Bindings;->bindBidirectional(Ljavafx/beans/property/Property;Ljavafx/beans/property/Property;)V

    .line 72
    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 56
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/ListProperty;, "Ljavafx/beans/property/ListProperty<TE;>;"
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    check-cast v3, Ljavafx/collections/ObservableList;

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ListProperty;->setValue(Ljavafx/collections/ObservableList;)V

    return-void
.end method

.method public setValue(Ljavafx/collections/ObservableList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/ObservableList",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 63
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/ListProperty;, "Ljavafx/beans/property/ListProperty<TE;>;"
    move-object v1, p1

    .local v1, "v":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<TE;>;"
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ListProperty;->set(Ljava/lang/Object;)V

    .line 64
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .prologue
    .line 88
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/ListProperty;, "Ljavafx/beans/property/ListProperty<TE;>;"
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/beans/property/ListProperty;->getBean()Ljava/lang/Object;

    move-result-object v4

    move-object v1, v4

    .line 89
    .local v1, "bean":Ljava/lang/Object;
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/beans/property/ListProperty;->getName()Ljava/lang/String;

    move-result-object v4

    move-object v2, v4

    .line 90
    .local v2, "name":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    const-string v6, "ListProperty ["

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v3, v4

    .line 92
    .local v3, "result":Ljava/lang/StringBuilder;
    move-object v4, v1

    if-eqz v4, :cond_0

    .line 93
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

    .line 95
    :cond_0
    move-object v4, v2

    if-eqz v4, :cond_1

    move-object v4, v2

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 96
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

    .line 98
    :cond_1
    move-object v4, v3

    const-string v5, "value: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/beans/property/ListProperty;->get()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 99
    move-object v4, v3

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Ljavafx/beans/property/ListProperty;, "Ljavafx/beans/property/ListProperty<TE;>;"
    return-object v0
.end method

.method public unbindBidirectional(Ljavafx/beans/property/Property;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/property/Property",
            "<",
            "Ljavafx/collections/ObservableList",
            "<TE;>;>;)V"
        }
    .end annotation

    .prologue
    .line 79
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/ListProperty;, "Ljavafx/beans/property/ListProperty<TE;>;"
    move-object v1, p1

    .local v1, "other":Ljavafx/beans/property/Property;, "Ljavafx/beans/property/Property<Ljavafx/collections/ObservableList<TE;>;>;"
    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Ljavafx/beans/binding/Bindings;->unbindBidirectional(Ljavafx/beans/property/Property;Ljavafx/beans/property/Property;)V

    .line 80
    return-void
.end method
