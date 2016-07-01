.class public abstract Ljavafx/beans/binding/MapExpression;
.super Ljava/lang/Object;
.source "MapExpression.java"

# interfaces
.implements Ljavafx/beans/value/ObservableMapValue;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavafx/beans/binding/MapExpression$EmptyObservableMap;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljavafx/beans/value/ObservableMapValue",
        "<TK;TV;>;"
    }
.end annotation


# static fields
.field private static final EMPTY_MAP:Ljavafx/collections/ObservableMap;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 60
    new-instance v0, Ljavafx/beans/binding/MapExpression$EmptyObservableMap;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljavafx/beans/binding/MapExpression$EmptyObservableMap;-><init>(Ljavafx/beans/binding/MapExpression$1;)V

    sput-object v0, Ljavafx/beans/binding/MapExpression;->EMPTY_MAP:Ljavafx/collections/ObservableMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 58
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/MapExpression;, "Ljavafx/beans/binding/MapExpression<TK;TV;>;"
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static mapExpression(Ljavafx/beans/value/ObservableMapValue;)Ljavafx/beans/binding/MapExpression;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljavafx/beans/value/ObservableMapValue",
            "<TK;TV;>;)",
            "Ljavafx/beans/binding/MapExpression",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 111
    move-object v0, p0

    .local v0, "value":Ljavafx/beans/value/ObservableMapValue;, "Ljavafx/beans/value/ObservableMapValue<TK;TV;>;"
    move-object v1, v0

    if-nez v1, :cond_0

    .line 112
    new-instance v1, Ljava/lang/NullPointerException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string v3, "Map must be specified."

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 114
    :cond_0
    move-object v1, v0

    instance-of v1, v1, Ljavafx/beans/binding/MapExpression;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Ljavafx/beans/binding/MapExpression;

    :goto_0
    move-object v0, v1

    .end local v0    # "value":Ljavafx/beans/value/ObservableMapValue;, "Ljavafx/beans/value/ObservableMapValue<TK;TV;>;"
    return-object v0

    .restart local v0    # "value":Ljavafx/beans/value/ObservableMapValue;, "Ljavafx/beans/value/ObservableMapValue<TK;TV;>;"
    :cond_1
    new-instance v1, Ljavafx/beans/binding/MapExpression$1;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Ljavafx/beans/binding/MapExpression$1;-><init>(Ljavafx/beans/value/ObservableMapValue;)V

    goto :goto_0
.end method


# virtual methods
.method public asString()Ljavafx/beans/binding/StringBinding;
    .locals 2

    .prologue
    .line 232
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/MapExpression;, "Ljavafx/beans/binding/MapExpression<TK;TV;>;"
    move-object v1, v0

    invoke-static {v1}, Lcom/sun/javafx/binding/StringFormatter;->convert(Ljavafx/beans/value/ObservableValue;)Ljavafx/beans/binding/StringExpression;

    move-result-object v1

    check-cast v1, Ljavafx/beans/binding/StringBinding;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/beans/binding/MapExpression;, "Ljavafx/beans/binding/MapExpression<TK;TV;>;"
    return-object v0
.end method

.method public clear()V
    .locals 3

    .prologue
    .line 283
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/MapExpression;, "Ljavafx/beans/binding/MapExpression<TK;TV;>;"
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/beans/binding/MapExpression;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavafx/collections/ObservableMap;

    move-object v1, v2

    .line 284
    .local v1, "map":Ljavafx/collections/ObservableMap;, "Ljavafx/collections/ObservableMap<TK;TV;>;"
    move-object v2, v1

    if-nez v2, :cond_0

    .line 285
    sget-object v2, Ljavafx/beans/binding/MapExpression;->EMPTY_MAP:Ljavafx/collections/ObservableMap;

    invoke-interface {v2}, Ljavafx/collections/ObservableMap;->clear()V

    .line 289
    :goto_0
    return-void

    .line 287
    :cond_0
    move-object v2, v1

    invoke-interface {v2}, Ljavafx/collections/ObservableMap;->clear()V

    goto :goto_0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    .line 249
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/MapExpression;, "Ljavafx/beans/binding/MapExpression<TK;TV;>;"
    move-object v1, p1

    .local v1, "obj":Ljava/lang/Object;
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/beans/binding/MapExpression;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavafx/collections/ObservableMap;

    move-object v2, v3

    .line 250
    .local v2, "map":Ljavafx/collections/ObservableMap;, "Ljavafx/collections/ObservableMap<TK;TV;>;"
    move-object v3, v2

    if-nez v3, :cond_0

    sget-object v3, Ljavafx/beans/binding/MapExpression;->EMPTY_MAP:Ljavafx/collections/ObservableMap;

    move-object v4, v1

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    :goto_0
    move v0, v3

    .end local v0    # "this":Ljavafx/beans/binding/MapExpression;, "Ljavafx/beans/binding/MapExpression<TK;TV;>;"
    return v0

    .restart local v0    # "this":Ljavafx/beans/binding/MapExpression;, "Ljavafx/beans/binding/MapExpression<TK;TV;>;"
    :cond_0
    move-object v3, v2

    move-object v4, v1

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    goto :goto_0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    .line 255
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/MapExpression;, "Ljavafx/beans/binding/MapExpression<TK;TV;>;"
    move-object v1, p1

    .local v1, "obj":Ljava/lang/Object;
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/beans/binding/MapExpression;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavafx/collections/ObservableMap;

    move-object v2, v3

    .line 256
    .local v2, "map":Ljavafx/collections/ObservableMap;, "Ljavafx/collections/ObservableMap<TK;TV;>;"
    move-object v3, v2

    if-nez v3, :cond_0

    sget-object v3, Ljavafx/beans/binding/MapExpression;->EMPTY_MAP:Ljavafx/collections/ObservableMap;

    move-object v4, v1

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableMap;->containsValue(Ljava/lang/Object;)Z

    move-result v3

    :goto_0
    move v0, v3

    .end local v0    # "this":Ljavafx/beans/binding/MapExpression;, "Ljavafx/beans/binding/MapExpression<TK;TV;>;"
    return v0

    .restart local v0    # "this":Ljavafx/beans/binding/MapExpression;, "Ljavafx/beans/binding/MapExpression<TK;TV;>;"
    :cond_0
    move-object v3, v2

    move-object v4, v1

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableMap;->containsValue(Ljava/lang/Object;)Z

    move-result v3

    goto :goto_0
.end method

.method public abstract emptyProperty()Ljavafx/beans/property/ReadOnlyBooleanProperty;
.end method

.method public entrySet()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 305
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/MapExpression;, "Ljavafx/beans/binding/MapExpression<TK;TV;>;"
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/beans/binding/MapExpression;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavafx/collections/ObservableMap;

    move-object v1, v2

    .line 306
    .local v1, "map":Ljavafx/collections/ObservableMap;, "Ljavafx/collections/ObservableMap<TK;TV;>;"
    move-object v2, v1

    if-nez v2, :cond_0

    sget-object v2, Ljavafx/beans/binding/MapExpression;->EMPTY_MAP:Ljavafx/collections/ObservableMap;

    invoke-interface {v2}, Ljavafx/collections/ObservableMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    :goto_0
    move-object v0, v2

    .end local v0    # "this":Ljavafx/beans/binding/MapExpression;, "Ljavafx/beans/binding/MapExpression<TK;TV;>;"
    return-object v0

    .restart local v0    # "this":Ljavafx/beans/binding/MapExpression;, "Ljavafx/beans/binding/MapExpression<TK;TV;>;"
    :cond_0
    move-object v2, v1

    invoke-interface {v2}, Ljavafx/collections/ObservableMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    goto :goto_0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 311
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/MapExpression;, "Ljavafx/beans/binding/MapExpression<TK;TV;>;"
    move-object v1, p1

    .local v1, "key":Ljava/lang/Object;
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/beans/binding/MapExpression;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavafx/collections/ObservableMap;

    move-object v2, v3

    .line 312
    .local v2, "map":Ljavafx/collections/ObservableMap;, "Ljavafx/collections/ObservableMap<TK;TV;>;"
    move-object v3, v2

    if-nez v3, :cond_0

    sget-object v3, Ljavafx/beans/binding/MapExpression;->EMPTY_MAP:Ljavafx/collections/ObservableMap;

    move-object v4, v1

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    :goto_0
    move-object v0, v3

    .end local v0    # "this":Ljavafx/beans/binding/MapExpression;, "Ljavafx/beans/binding/MapExpression<TK;TV;>;"
    return-object v0

    .restart local v0    # "this":Ljavafx/beans/binding/MapExpression;, "Ljavafx/beans/binding/MapExpression<TK;TV;>;"
    :cond_0
    move-object v3, v2

    move-object v4, v1

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_0
.end method

.method public getSize()I
    .locals 2

    .prologue
    .line 142
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/MapExpression;, "Ljavafx/beans/binding/MapExpression<TK;TV;>;"
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/beans/binding/MapExpression;->size()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Ljavafx/beans/binding/MapExpression;, "Ljavafx/beans/binding/MapExpression<TK;TV;>;"
    return v0
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 58
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/MapExpression;, "Ljavafx/beans/binding/MapExpression<TK;TV;>;"
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/beans/binding/MapExpression;->getValue()Ljavafx/collections/ObservableMap;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/beans/binding/MapExpression;, "Ljavafx/beans/binding/MapExpression<TK;TV;>;"
    return-object v0
.end method

.method public getValue()Ljavafx/collections/ObservableMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/collections/ObservableMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 92
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/MapExpression;, "Ljavafx/beans/binding/MapExpression<TK;TV;>;"
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/beans/binding/MapExpression;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/collections/ObservableMap;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/beans/binding/MapExpression;, "Ljavafx/beans/binding/MapExpression<TK;TV;>;"
    return-object v0
.end method

.method public isEmpty()Z
    .locals 3

    .prologue
    .line 243
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/MapExpression;, "Ljavafx/beans/binding/MapExpression<TK;TV;>;"
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/beans/binding/MapExpression;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavafx/collections/ObservableMap;

    move-object v1, v2

    .line 244
    .local v1, "map":Ljavafx/collections/ObservableMap;, "Ljavafx/collections/ObservableMap<TK;TV;>;"
    move-object v2, v1

    if-nez v2, :cond_0

    sget-object v2, Ljavafx/beans/binding/MapExpression;->EMPTY_MAP:Ljavafx/collections/ObservableMap;

    invoke-interface {v2}, Ljavafx/collections/ObservableMap;->isEmpty()Z

    move-result v2

    :goto_0
    move v0, v2

    .end local v0    # "this":Ljavafx/beans/binding/MapExpression;, "Ljavafx/beans/binding/MapExpression<TK;TV;>;"
    return v0

    .restart local v0    # "this":Ljavafx/beans/binding/MapExpression;, "Ljavafx/beans/binding/MapExpression<TK;TV;>;"
    :cond_0
    move-object v2, v1

    invoke-interface {v2}, Ljavafx/collections/ObservableMap;->isEmpty()Z

    move-result v2

    goto :goto_0
.end method

.method public isEqualTo(Ljavafx/collections/ObservableMap;)Ljavafx/beans/binding/BooleanBinding;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/ObservableMap",
            "<**>;)",
            "Ljavafx/beans/binding/BooleanBinding;"
        }
    .end annotation

    .prologue
    .line 188
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/MapExpression;, "Ljavafx/beans/binding/MapExpression<TK;TV;>;"
    move-object v1, p1

    .local v1, "other":Ljavafx/collections/ObservableMap;, "Ljavafx/collections/ObservableMap<**>;"
    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Ljavafx/beans/binding/Bindings;->equal(Ljavafx/beans/value/ObservableObjectValue;Ljava/lang/Object;)Ljavafx/beans/binding/BooleanBinding;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavafx/beans/binding/MapExpression;, "Ljavafx/beans/binding/MapExpression<TK;TV;>;"
    return-object v0
.end method

.method public isNotEqualTo(Ljavafx/collections/ObservableMap;)Ljavafx/beans/binding/BooleanBinding;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/ObservableMap",
            "<**>;)",
            "Ljavafx/beans/binding/BooleanBinding;"
        }
    .end annotation

    .prologue
    .line 202
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/MapExpression;, "Ljavafx/beans/binding/MapExpression<TK;TV;>;"
    move-object v1, p1

    .local v1, "other":Ljavafx/collections/ObservableMap;, "Ljavafx/collections/ObservableMap<**>;"
    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Ljavafx/beans/binding/Bindings;->notEqual(Ljavafx/beans/value/ObservableObjectValue;Ljava/lang/Object;)Ljavafx/beans/binding/BooleanBinding;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavafx/beans/binding/MapExpression;, "Ljavafx/beans/binding/MapExpression<TK;TV;>;"
    return-object v0
.end method

.method public isNotNull()Ljavafx/beans/binding/BooleanBinding;
    .locals 2

    .prologue
    .line 220
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/MapExpression;, "Ljavafx/beans/binding/MapExpression<TK;TV;>;"
    move-object v1, v0

    invoke-static {v1}, Ljavafx/beans/binding/Bindings;->isNotNull(Ljavafx/beans/value/ObservableObjectValue;)Ljavafx/beans/binding/BooleanBinding;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/beans/binding/MapExpression;, "Ljavafx/beans/binding/MapExpression<TK;TV;>;"
    return-object v0
.end method

.method public isNull()Ljavafx/beans/binding/BooleanBinding;
    .locals 2

    .prologue
    .line 211
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/MapExpression;, "Ljavafx/beans/binding/MapExpression<TK;TV;>;"
    move-object v1, v0

    invoke-static {v1}, Ljavafx/beans/binding/Bindings;->isNull(Ljavafx/beans/value/ObservableObjectValue;)Ljavafx/beans/binding/BooleanBinding;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/beans/binding/MapExpression;, "Ljavafx/beans/binding/MapExpression<TK;TV;>;"
    return-object v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 293
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/MapExpression;, "Ljavafx/beans/binding/MapExpression<TK;TV;>;"
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/beans/binding/MapExpression;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavafx/collections/ObservableMap;

    move-object v1, v2

    .line 294
    .local v1, "map":Ljavafx/collections/ObservableMap;, "Ljavafx/collections/ObservableMap<TK;TV;>;"
    move-object v2, v1

    if-nez v2, :cond_0

    sget-object v2, Ljavafx/beans/binding/MapExpression;->EMPTY_MAP:Ljavafx/collections/ObservableMap;

    invoke-interface {v2}, Ljavafx/collections/ObservableMap;->keySet()Ljava/util/Set;

    move-result-object v2

    :goto_0
    move-object v0, v2

    .end local v0    # "this":Ljavafx/beans/binding/MapExpression;, "Ljavafx/beans/binding/MapExpression<TK;TV;>;"
    return-object v0

    .restart local v0    # "this":Ljavafx/beans/binding/MapExpression;, "Ljavafx/beans/binding/MapExpression<TK;TV;>;"
    :cond_0
    move-object v2, v1

    invoke-interface {v2}, Ljavafx/collections/ObservableMap;->keySet()Ljava/util/Set;

    move-result-object v2

    goto :goto_0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 261
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/MapExpression;, "Ljavafx/beans/binding/MapExpression<TK;TV;>;"
    move-object v1, p1

    .local v1, "key":Ljava/lang/Object;, "TK;"
    move-object v2, p2

    .local v2, "value":Ljava/lang/Object;, "TV;"
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/beans/binding/MapExpression;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavafx/collections/ObservableMap;

    move-object v3, v4

    .line 262
    .local v3, "map":Ljavafx/collections/ObservableMap;, "Ljavafx/collections/ObservableMap<TK;TV;>;"
    move-object v4, v3

    if-nez v4, :cond_0

    sget-object v4, Ljavafx/beans/binding/MapExpression;->EMPTY_MAP:Ljavafx/collections/ObservableMap;

    move-object v5, v1

    move-object v6, v2

    invoke-interface {v4, v5, v6}, Ljavafx/collections/ObservableMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    :goto_0
    move-object v0, v4

    .end local v0    # "this":Ljavafx/beans/binding/MapExpression;, "Ljavafx/beans/binding/MapExpression<TK;TV;>;"
    return-object v0

    .restart local v0    # "this":Ljavafx/beans/binding/MapExpression;, "Ljavafx/beans/binding/MapExpression<TK;TV;>;"
    :cond_0
    move-object v4, v3

    move-object v5, v1

    move-object v6, v2

    invoke-interface {v4, v5, v6}, Ljavafx/collections/ObservableMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    goto :goto_0
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+TK;+TV;>;)V"
        }
    .end annotation

    .prologue
    .line 273
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/MapExpression;, "Ljavafx/beans/binding/MapExpression<TK;TV;>;"
    move-object v1, p1

    .local v1, "elements":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/beans/binding/MapExpression;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavafx/collections/ObservableMap;

    move-object v2, v3

    .line 274
    .local v2, "map":Ljavafx/collections/ObservableMap;, "Ljavafx/collections/ObservableMap<TK;TV;>;"
    move-object v3, v2

    if-nez v3, :cond_0

    .line 275
    sget-object v3, Ljavafx/beans/binding/MapExpression;->EMPTY_MAP:Ljavafx/collections/ObservableMap;

    move-object v4, v1

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableMap;->putAll(Ljava/util/Map;)V

    .line 279
    :goto_0
    return-void

    .line 277
    :cond_0
    move-object v3, v2

    move-object v4, v1

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableMap;->putAll(Ljava/util/Map;)V

    goto :goto_0
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 267
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/MapExpression;, "Ljavafx/beans/binding/MapExpression<TK;TV;>;"
    move-object v1, p1

    .local v1, "obj":Ljava/lang/Object;
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/beans/binding/MapExpression;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavafx/collections/ObservableMap;

    move-object v2, v3

    .line 268
    .local v2, "map":Ljavafx/collections/ObservableMap;, "Ljavafx/collections/ObservableMap<TK;TV;>;"
    move-object v3, v2

    if-nez v3, :cond_0

    sget-object v3, Ljavafx/beans/binding/MapExpression;->EMPTY_MAP:Ljavafx/collections/ObservableMap;

    move-object v4, v1

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    :goto_0
    move-object v0, v3

    .end local v0    # "this":Ljavafx/beans/binding/MapExpression;, "Ljavafx/beans/binding/MapExpression<TK;TV;>;"
    return-object v0

    .restart local v0    # "this":Ljavafx/beans/binding/MapExpression;, "Ljavafx/beans/binding/MapExpression<TK;TV;>;"
    :cond_0
    move-object v3, v2

    move-object v4, v1

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_0
.end method

.method public size()I
    .locals 3

    .prologue
    .line 237
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/MapExpression;, "Ljavafx/beans/binding/MapExpression<TK;TV;>;"
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/beans/binding/MapExpression;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavafx/collections/ObservableMap;

    move-object v1, v2

    .line 238
    .local v1, "map":Ljavafx/collections/ObservableMap;, "Ljavafx/collections/ObservableMap<TK;TV;>;"
    move-object v2, v1

    if-nez v2, :cond_0

    sget-object v2, Ljavafx/beans/binding/MapExpression;->EMPTY_MAP:Ljavafx/collections/ObservableMap;

    invoke-interface {v2}, Ljavafx/collections/ObservableMap;->size()I

    move-result v2

    :goto_0
    move v0, v2

    .end local v0    # "this":Ljavafx/beans/binding/MapExpression;, "Ljavafx/beans/binding/MapExpression<TK;TV;>;"
    return v0

    .restart local v0    # "this":Ljavafx/beans/binding/MapExpression;, "Ljavafx/beans/binding/MapExpression<TK;TV;>;"
    :cond_0
    move-object v2, v1

    invoke-interface {v2}, Ljavafx/collections/ObservableMap;->size()I

    move-result v2

    goto :goto_0
.end method

.method public abstract sizeProperty()Ljavafx/beans/property/ReadOnlyIntegerProperty;
.end method

.method public valueAt(Ljava/lang/Object;)Ljavafx/beans/binding/ObjectBinding;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljavafx/beans/binding/ObjectBinding",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 163
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/MapExpression;, "Ljavafx/beans/binding/MapExpression<TK;TV;>;"
    move-object v1, p1

    .local v1, "key":Ljava/lang/Object;, "TK;"
    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Ljavafx/beans/binding/Bindings;->valueAt(Ljavafx/collections/ObservableMap;Ljava/lang/Object;)Ljavafx/beans/binding/ObjectBinding;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavafx/beans/binding/MapExpression;, "Ljavafx/beans/binding/MapExpression<TK;TV;>;"
    return-object v0
.end method

.method public valueAt(Ljavafx/beans/value/ObservableValue;)Ljavafx/beans/binding/ObjectBinding;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/value/ObservableValue",
            "<TK;>;)",
            "Ljavafx/beans/binding/ObjectBinding",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 174
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/MapExpression;, "Ljavafx/beans/binding/MapExpression<TK;TV;>;"
    move-object v1, p1

    .local v1, "key":Ljavafx/beans/value/ObservableValue;, "Ljavafx/beans/value/ObservableValue<TK;>;"
    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Ljavafx/beans/binding/Bindings;->valueAt(Ljavafx/collections/ObservableMap;Ljavafx/beans/value/ObservableValue;)Ljavafx/beans/binding/ObjectBinding;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavafx/beans/binding/MapExpression;, "Ljavafx/beans/binding/MapExpression<TK;TV;>;"
    return-object v0
.end method

.method public values()Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 299
    move-object v0, p0

    .local v0, "this":Ljavafx/beans/binding/MapExpression;, "Ljavafx/beans/binding/MapExpression<TK;TV;>;"
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/beans/binding/MapExpression;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavafx/collections/ObservableMap;

    move-object v1, v2

    .line 300
    .local v1, "map":Ljavafx/collections/ObservableMap;, "Ljavafx/collections/ObservableMap<TK;TV;>;"
    move-object v2, v1

    if-nez v2, :cond_0

    sget-object v2, Ljavafx/beans/binding/MapExpression;->EMPTY_MAP:Ljavafx/collections/ObservableMap;

    invoke-interface {v2}, Ljavafx/collections/ObservableMap;->values()Ljava/util/Collection;

    move-result-object v2

    :goto_0
    move-object v0, v2

    .end local v0    # "this":Ljavafx/beans/binding/MapExpression;, "Ljavafx/beans/binding/MapExpression<TK;TV;>;"
    return-object v0

    .restart local v0    # "this":Ljavafx/beans/binding/MapExpression;, "Ljavafx/beans/binding/MapExpression<TK;TV;>;"
    :cond_0
    move-object v2, v1

    invoke-interface {v2}, Ljavafx/collections/ObservableMap;->values()Ljava/util/Collection;

    move-result-object v2

    goto :goto_0
.end method
