.class public abstract Ljavafx/beans/property/ReadOnlyMapProperty;
.super Ljavafx/beans/binding/MapExpression;
.source "ReadOnlyMapProperty.java"

# interfaces
.implements Ljavafx/beans/property/ReadOnlyProperty;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljavafx/beans/binding/MapExpression",
        "<TK;TV;>;",
        "Ljavafx/beans/property/ReadOnlyProperty",
        "<",
        "Ljavafx/collections/ObservableMap",
        "<TK;TV;>;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 50
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/ReadOnlyMapProperty;, "Ljavafx/beans/property/ReadOnlyMapProperty<TK;TV;>;"
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/beans/binding/MapExpression;-><init>()V

    .line 51
    return-void
.end method


# virtual methods
.method public bindContent(Ljavafx/collections/ObservableMap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/ObservableMap",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 93
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/ReadOnlyMapProperty;, "Ljavafx/beans/property/ReadOnlyMapProperty<TK;TV;>;"
    move-object v1, p1

    .local v1, "map":Ljavafx/collections/ObservableMap;, "Ljavafx/collections/ObservableMap<TK;TV;>;"
    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Ljavafx/beans/binding/Bindings;->bindContent(Ljava/util/Map;Ljavafx/collections/ObservableMap;)V

    .line 94
    return-void
.end method

.method public bindContentBidirectional(Ljavafx/collections/ObservableMap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/ObservableMap",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 65
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/ReadOnlyMapProperty;, "Ljavafx/beans/property/ReadOnlyMapProperty<TK;TV;>;"
    move-object v1, p1

    .local v1, "map":Ljavafx/collections/ObservableMap;, "Ljavafx/collections/ObservableMap<TK;TV;>;"
    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Ljavafx/beans/binding/Bindings;->bindContentBidirectional(Ljavafx/collections/ObservableMap;Ljavafx/collections/ObservableMap;)V

    .line 66
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 10

    .prologue
    .line 110
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/ReadOnlyMapProperty;, "Ljavafx/beans/property/ReadOnlyMapProperty<TK;TV;>;"
    move-object v1, p1

    .local v1, "obj":Ljava/lang/Object;
    move-object v7, v1

    move-object v8, v0

    if-ne v7, v8, :cond_0

    .line 111
    const/4 v7, 0x1

    move v0, v7

    .line 137
    .end local v0    # "this":Ljavafx/beans/property/ReadOnlyMapProperty;, "Ljavafx/beans/property/ReadOnlyMapProperty<TK;TV;>;"
    :goto_0
    return v0

    .line 113
    .restart local v0    # "this":Ljavafx/beans/property/ReadOnlyMapProperty;, "Ljavafx/beans/property/ReadOnlyMapProperty<TK;TV;>;"
    :cond_0
    move-object v7, v1

    instance-of v7, v7, Ljava/util/Map;

    if-nez v7, :cond_1

    .line 114
    const/4 v7, 0x0

    move v0, v7

    goto :goto_0

    .line 115
    :cond_1
    move-object v7, v1

    check-cast v7, Ljava/util/Map;

    move-object v2, v7

    .line 116
    .local v2, "m":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    move-object v7, v2

    invoke-interface {v7}, Ljava/util/Map;->size()I

    move-result v7

    move-object v8, v0

    invoke-virtual {v8}, Ljavafx/beans/property/ReadOnlyMapProperty;->size()I

    move-result v8

    if-eq v7, v8, :cond_2

    .line 117
    const/4 v7, 0x0

    move v0, v7

    goto :goto_0

    .line 120
    :cond_2
    move-object v7, v0

    :try_start_0
    invoke-virtual {v7}, Ljavafx/beans/property/ReadOnlyMapProperty;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move-object v3, v7

    :goto_1
    move-object v7, v3

    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    move-object v7, v3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    move-object v4, v7

    .line 121
    .local v4, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    move-object v7, v4

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    move-object v5, v7

    .line 122
    .local v5, "key":Ljava/lang/Object;, "TK;"
    move-object v7, v4

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    move-object v6, v7

    .line 123
    .local v6, "value":Ljava/lang/Object;, "TV;"
    move-object v7, v6

    if-nez v7, :cond_4

    .line 124
    move-object v7, v2

    move-object v8, v5

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_3

    move-object v7, v2

    move-object v8, v5

    invoke-interface {v7, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 125
    :cond_3
    const/4 v7, 0x0

    move v0, v7

    goto :goto_0

    .line 127
    :cond_4
    move-object v7, v6

    move-object v8, v2

    move-object v9, v5

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v7

    if-nez v7, :cond_5

    .line 128
    const/4 v7, 0x0

    move v0, v7

    goto :goto_0

    .line 130
    :cond_5
    goto :goto_1

    .line 135
    .line 137
    .end local v4    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    .end local v5    # "key":Ljava/lang/Object;, "TK;"
    .end local v6    # "value":Ljava/lang/Object;, "TV;"
    :cond_6
    const/4 v7, 0x1

    move v0, v7

    goto :goto_0

    .line 131
    :catch_0
    move-exception v7

    move-object v3, v7

    .line 132
    .local v3, "unused":Ljava/lang/ClassCastException;
    const/4 v7, 0x0

    move v0, v7

    goto :goto_0

    .line 133
    .end local v3    # "unused":Ljava/lang/ClassCastException;
    :catch_1
    move-exception v7

    move-object v3, v7

    .line 134
    .local v3, "unused":Ljava/lang/NullPointerException;
    const/4 v7, 0x0

    move v0, v7

    goto :goto_0
.end method

.method public hashCode()I
    .locals 6

    .prologue
    .line 146
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/ReadOnlyMapProperty;, "Ljavafx/beans/property/ReadOnlyMapProperty<TK;TV;>;"
    const/4 v4, 0x0

    move v1, v4

    .line 147
    .local v1, "h":I
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/beans/property/ReadOnlyMapProperty;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v2, v4

    :goto_0
    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    move-object v3, v4

    .line 148
    .local v3, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    move v4, v1

    move-object v5, v3

    invoke-interface {v5}, Ljava/util/Map$Entry;->hashCode()I

    move-result v5

    add-int/2addr v4, v5

    move v1, v4

    .line 149
    goto :goto_0

    .line 150
    .end local v3    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    :cond_0
    move v4, v1

    move v0, v4

    .end local v0    # "this":Ljavafx/beans/property/ReadOnlyMapProperty;, "Ljavafx/beans/property/ReadOnlyMapProperty<TK;TV;>;"
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .prologue
    .line 159
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/ReadOnlyMapProperty;, "Ljavafx/beans/property/ReadOnlyMapProperty<TK;TV;>;"
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/beans/property/ReadOnlyMapProperty;->getBean()Ljava/lang/Object;

    move-result-object v4

    move-object v1, v4

    .line 160
    .local v1, "bean":Ljava/lang/Object;
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/beans/property/ReadOnlyMapProperty;->getName()Ljava/lang/String;

    move-result-object v4

    move-object v2, v4

    .line 161
    .local v2, "name":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    const-string v6, "ReadOnlyMapProperty ["

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v3, v4

    .line 163
    .local v3, "result":Ljava/lang/StringBuilder;
    move-object v4, v1

    if-eqz v4, :cond_0

    .line 164
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

    .line 166
    :cond_0
    move-object v4, v2

    if-eqz v4, :cond_1

    move-object v4, v2

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 167
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

    .line 169
    :cond_1
    move-object v4, v3

    const-string v5, "value: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/beans/property/ReadOnlyMapProperty;->get()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 170
    move-object v4, v3

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Ljavafx/beans/property/ReadOnlyMapProperty;, "Ljavafx/beans/property/ReadOnlyMapProperty<TK;TV;>;"
    return-object v0
.end method

.method public unbindContent(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 105
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/ReadOnlyMapProperty;, "Ljavafx/beans/property/ReadOnlyMapProperty<TK;TV;>;"
    move-object v1, p1

    .local v1, "object":Ljava/lang/Object;
    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Ljavafx/beans/binding/Bindings;->unbindContent(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 106
    return-void
.end method

.method public unbindContentBidirectional(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 77
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/property/ReadOnlyMapProperty;, "Ljavafx/beans/property/ReadOnlyMapProperty<TK;TV;>;"
    move-object v1, p1

    .local v1, "object":Ljava/lang/Object;
    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Ljavafx/beans/binding/Bindings;->unbindContentBidirectional(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 78
    return-void
.end method
