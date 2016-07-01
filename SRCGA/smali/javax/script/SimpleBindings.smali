.class public Ljavax/script/SimpleBindings;
.super Ljava/lang/Object;
.source "SimpleBindings.java"

# interfaces
.implements Ljavax/script/Bindings;


# instance fields
.field private map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    .line 63
    move-object v0, p0

    .local v0, "this":Ljavax/script/SimpleBindings;
    move-object v1, v0

    new-instance v2, Ljava/util/HashMap;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-direct {v1, v2}, Ljavax/script/SimpleBindings;-><init>(Ljava/util/Map;)V

    .line 64
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 52
    move-object v0, p0

    .local v0, "this":Ljavax/script/SimpleBindings;
    move-object v1, p1

    .local v1, "m":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 53
    move-object v2, v1

    if-nez v2, :cond_0

    .line 54
    new-instance v2, Ljava/lang/NullPointerException;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    .line 56
    :cond_0
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavax/script/SimpleBindings;->map:Ljava/util/Map;

    .line 57
    return-void
.end method

.method private checkKey(Ljava/lang/Object;)V
    .locals 6

    .prologue
    .line 213
    move-object v0, p0

    .local v0, "this":Ljavax/script/SimpleBindings;
    move-object v1, p1

    .local v1, "key":Ljava/lang/Object;
    move-object v2, v1

    if-nez v2, :cond_0

    .line 214
    new-instance v2, Ljava/lang/NullPointerException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "key can not be null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 216
    :cond_0
    move-object v2, v1

    instance-of v2, v2, Ljava/lang/String;

    if-nez v2, :cond_1

    .line 217
    new-instance v2, Ljava/lang/ClassCastException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "key should be a String"

    invoke-direct {v3, v4}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 219
    :cond_1
    move-object v2, v1

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 220
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "key can not be empty"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 222
    :cond_2
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    .line 106
    move-object v0, p0

    .local v0, "this":Ljavax/script/SimpleBindings;
    move-object v1, v0

    iget-object v1, v1, Ljavax/script/SimpleBindings;->map:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 107
    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    .line 125
    move-object v0, p0

    .local v0, "this":Ljavax/script/SimpleBindings;
    move-object v1, p1

    .local v1, "key":Ljava/lang/Object;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljavax/script/SimpleBindings;->checkKey(Ljava/lang/Object;)V

    .line 126
    move-object v2, v0

    iget-object v2, v2, Ljavax/script/SimpleBindings;->map:Ljava/util/Map;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    move v0, v2

    .end local v0    # "this":Ljavax/script/SimpleBindings;
    return v0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    .line 131
    move-object v0, p0

    .local v0, "this":Ljavax/script/SimpleBindings;
    move-object v1, p1

    .local v1, "value":Ljava/lang/Object;
    move-object v2, v0

    iget-object v2, v2, Ljavax/script/SimpleBindings;->map:Ljava/util/Map;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v2

    move v0, v2

    .end local v0    # "this":Ljavax/script/SimpleBindings;
    return v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 136
    move-object v0, p0

    .local v0, "this":Ljavax/script/SimpleBindings;
    move-object v1, v0

    iget-object v1, v1, Ljavax/script/SimpleBindings;->map:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavax/script/SimpleBindings;
    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 161
    move-object v0, p0

    .local v0, "this":Ljavax/script/SimpleBindings;
    move-object v1, p1

    .local v1, "key":Ljava/lang/Object;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljavax/script/SimpleBindings;->checkKey(Ljava/lang/Object;)V

    .line 162
    move-object v2, v0

    iget-object v2, v2, Ljavax/script/SimpleBindings;->map:Ljava/util/Map;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavax/script/SimpleBindings;
    return-object v0
.end method

.method public isEmpty()Z
    .locals 2

    .prologue
    .line 167
    move-object v0, p0

    .local v0, "this":Ljavax/script/SimpleBindings;
    move-object v1, v0

    iget-object v1, v1, Ljavax/script/SimpleBindings;->map:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Ljavax/script/SimpleBindings;
    return v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 172
    move-object v0, p0

    .local v0, "this":Ljavax/script/SimpleBindings;
    move-object v1, v0

    iget-object v1, v1, Ljavax/script/SimpleBindings;->map:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavax/script/SimpleBindings;
    return-object v0
.end method

.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .prologue
    .line 40
    move-object v0, p0

    .local v0, "this":Ljavax/script/SimpleBindings;
    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    check-cast v4, Ljava/lang/String;

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Ljavax/script/SimpleBindings;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Ljavax/script/SimpleBindings;
    return-object v0
.end method

.method public put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .prologue
    .line 79
    move-object v0, p0

    .local v0, "this":Ljavax/script/SimpleBindings;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object v2, p2

    .local v2, "value":Ljava/lang/Object;
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Ljavax/script/SimpleBindings;->checkKey(Ljava/lang/Object;)V

    .line 80
    move-object v3, v0

    iget-object v3, v3, Ljavax/script/SimpleBindings;->map:Ljava/util/Map;

    move-object v4, v1

    move-object v5, v2

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Ljavax/script/SimpleBindings;
    return-object v0
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 94
    move-object v0, p0

    .local v0, "this":Ljavax/script/SimpleBindings;
    move-object v1, p1

    .local v1, "toMerge":Ljava/util/Map;, "Ljava/util/Map<+Ljava/lang/String;+Ljava/lang/Object;>;"
    move-object v5, v1

    if-nez v5, :cond_0

    .line 95
    new-instance v5, Ljava/lang/NullPointerException;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    const-string v7, "toMerge map is null"

    invoke-direct {v6, v7}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 97
    :cond_0
    move-object v5, v1

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v2, v5

    :goto_0
    move-object v5, v2

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    move-object v5, v2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    move-object v3, v5

    .line 98
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+Ljava/lang/String;+Ljava/lang/Object;>;"
    move-object v5, v3

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    move-object v4, v5

    .line 99
    .local v4, "key":Ljava/lang/String;
    move-object v5, v0

    move-object v6, v4

    invoke-direct {v5, v6}, Ljavax/script/SimpleBindings;->checkKey(Ljava/lang/Object;)V

    .line 100
    move-object v5, v0

    move-object v6, v4

    move-object v7, v3

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljavax/script/SimpleBindings;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 101
    goto :goto_0

    .line 102
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+Ljava/lang/String;+Ljava/lang/Object;>;"
    .end local v4    # "key":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 198
    move-object v0, p0

    .local v0, "this":Ljavax/script/SimpleBindings;
    move-object v1, p1

    .local v1, "key":Ljava/lang/Object;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljavax/script/SimpleBindings;->checkKey(Ljava/lang/Object;)V

    .line 199
    move-object v2, v0

    iget-object v2, v2, Ljavax/script/SimpleBindings;->map:Ljava/util/Map;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavax/script/SimpleBindings;
    return-object v0
.end method

.method public size()I
    .locals 2

    .prologue
    .line 204
    move-object v0, p0

    .local v0, "this":Ljavax/script/SimpleBindings;
    move-object v1, v0

    iget-object v1, v1, Ljavax/script/SimpleBindings;->map:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Ljavax/script/SimpleBindings;
    return v0
.end method

.method public values()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 209
    move-object v0, p0

    .local v0, "this":Ljavax/script/SimpleBindings;
    move-object v1, v0

    iget-object v1, v1, Ljavax/script/SimpleBindings;->map:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavax/script/SimpleBindings;
    return-object v0
.end method
