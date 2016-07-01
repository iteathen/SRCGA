.class Ljavafx/collections/FXCollections$CheckedObservableMap$CheckedEntrySet$CheckedEntry;
.super Ljava/lang/Object;
.source "FXCollections.java"

# interfaces
.implements Ljava/util/Map$Entry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/collections/FXCollections$CheckedObservableMap$CheckedEntrySet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CheckedEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field private final e:Ljava/util/Map$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private final valueType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Map$Entry;Ljava/lang/Class;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 2469
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$CheckedObservableMap$CheckedEntrySet$CheckedEntry;, "Ljavafx/collections/FXCollections$CheckedObservableMap$CheckedEntrySet$CheckedEntry<TK;TV;TT;>;"
    move-object v1, p1

    .local v1, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    move-object v2, p2

    .local v2, "valueType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 2470
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Ljavafx/collections/FXCollections$CheckedObservableMap$CheckedEntrySet$CheckedEntry;->e:Ljava/util/Map$Entry;

    .line 2471
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Ljavafx/collections/FXCollections$CheckedObservableMap$CheckedEntrySet$CheckedEntry;->valueType:Ljava/lang/Class;

    .line 2472
    return-void
.end method

.method private badValueMsg(Ljava/lang/Object;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 2502
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$CheckedObservableMap$CheckedEntrySet$CheckedEntry;, "Ljavafx/collections/FXCollections$CheckedObservableMap$CheckedEntrySet$CheckedEntry<TK;TV;TT;>;"
    move-object v1, p1

    .local v1, "value":Ljava/lang/Object;
    new-instance v2, Ljava/lang/StringBuilder;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempt to insert "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " value into map with value type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Ljavafx/collections/FXCollections$CheckedObservableMap$CheckedEntrySet$CheckedEntry;->valueType:Ljava/lang/Class;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavafx/collections/FXCollections$CheckedObservableMap$CheckedEntrySet$CheckedEntry;, "Ljavafx/collections/FXCollections$CheckedObservableMap$CheckedEntrySet$CheckedEntry<TK;TV;TT;>;"
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    .prologue
    .line 2508
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$CheckedObservableMap$CheckedEntrySet$CheckedEntry;, "Ljavafx/collections/FXCollections$CheckedObservableMap$CheckedEntrySet$CheckedEntry<TK;TV;TT;>;"
    move-object v1, p1

    .local v1, "o":Ljava/lang/Object;
    move-object v2, v1

    move-object v3, v0

    if-ne v2, v3, :cond_0

    .line 2509
    const/4 v2, 0x1

    move v0, v2

    .line 2512
    .end local v0    # "this":Ljavafx/collections/FXCollections$CheckedObservableMap$CheckedEntrySet$CheckedEntry;, "Ljavafx/collections/FXCollections$CheckedObservableMap$CheckedEntrySet$CheckedEntry<TK;TV;TT;>;"
    :goto_0
    return v0

    .line 2510
    .restart local v0    # "this":Ljavafx/collections/FXCollections$CheckedObservableMap$CheckedEntrySet$CheckedEntry;, "Ljavafx/collections/FXCollections$CheckedObservableMap$CheckedEntrySet$CheckedEntry<TK;TV;TT;>;"
    :cond_0
    move-object v2, v1

    instance-of v2, v2, Ljava/util/Map$Entry;

    if-nez v2, :cond_1

    .line 2511
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0

    .line 2512
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Ljavafx/collections/FXCollections$CheckedObservableMap$CheckedEntrySet$CheckedEntry;->e:Ljava/util/Map$Entry;

    new-instance v3, Ljava/util/AbstractMap$SimpleImmutableEntry;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v1

    check-cast v5, Ljava/util/Map$Entry;

    invoke-direct {v4, v5}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/util/Map$Entry;)V

    invoke-interface {v2, v3}, Ljava/util/Map$Entry;->equals(Ljava/lang/Object;)Z

    move-result v2

    move v0, v2

    goto :goto_0
.end method

.method public getKey()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 2476
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$CheckedObservableMap$CheckedEntrySet$CheckedEntry;, "Ljavafx/collections/FXCollections$CheckedObservableMap$CheckedEntrySet$CheckedEntry<TK;TV;TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/collections/FXCollections$CheckedObservableMap$CheckedEntrySet$CheckedEntry;->e:Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/collections/FXCollections$CheckedObservableMap$CheckedEntrySet$CheckedEntry;, "Ljavafx/collections/FXCollections$CheckedObservableMap$CheckedEntrySet$CheckedEntry<TK;TV;TT;>;"
    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 2481
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$CheckedObservableMap$CheckedEntrySet$CheckedEntry;, "Ljavafx/collections/FXCollections$CheckedObservableMap$CheckedEntrySet$CheckedEntry<TK;TV;TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/collections/FXCollections$CheckedObservableMap$CheckedEntrySet$CheckedEntry;->e:Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/collections/FXCollections$CheckedObservableMap$CheckedEntrySet$CheckedEntry;, "Ljavafx/collections/FXCollections$CheckedObservableMap$CheckedEntrySet$CheckedEntry<TK;TV;TT;>;"
    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 2486
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$CheckedObservableMap$CheckedEntrySet$CheckedEntry;, "Ljavafx/collections/FXCollections$CheckedObservableMap$CheckedEntrySet$CheckedEntry<TK;TV;TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/collections/FXCollections$CheckedObservableMap$CheckedEntrySet$CheckedEntry;->e:Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->hashCode()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Ljavafx/collections/FXCollections$CheckedObservableMap$CheckedEntrySet$CheckedEntry;, "Ljavafx/collections/FXCollections$CheckedObservableMap$CheckedEntrySet$CheckedEntry<TK;TV;TT;>;"
    return v0
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .prologue
    .line 2496
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$CheckedObservableMap$CheckedEntrySet$CheckedEntry;, "Ljavafx/collections/FXCollections$CheckedObservableMap$CheckedEntrySet$CheckedEntry<TK;TV;TT;>;"
    move-object v1, p1

    .local v1, "value":Ljava/lang/Object;, "TV;"
    move-object v2, v1

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Ljavafx/collections/FXCollections$CheckedObservableMap$CheckedEntrySet$CheckedEntry;->valueType:Ljava/lang/Class;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2497
    new-instance v2, Ljava/lang/ClassCastException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    move-object v5, v1

    invoke-direct {v4, v5}, Ljavafx/collections/FXCollections$CheckedObservableMap$CheckedEntrySet$CheckedEntry;->badValueMsg(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2498
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Ljavafx/collections/FXCollections$CheckedObservableMap$CheckedEntrySet$CheckedEntry;->e:Ljava/util/Map$Entry;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavafx/collections/FXCollections$CheckedObservableMap$CheckedEntrySet$CheckedEntry;, "Ljavafx/collections/FXCollections$CheckedObservableMap$CheckedEntrySet$CheckedEntry<TK;TV;TT;>;"
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2491
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$CheckedObservableMap$CheckedEntrySet$CheckedEntry;, "Ljavafx/collections/FXCollections$CheckedObservableMap$CheckedEntrySet$CheckedEntry<TK;TV;TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/collections/FXCollections$CheckedObservableMap$CheckedEntrySet$CheckedEntry;->e:Ljava/util/Map$Entry;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/collections/FXCollections$CheckedObservableMap$CheckedEntrySet$CheckedEntry;, "Ljavafx/collections/FXCollections$CheckedObservableMap$CheckedEntrySet$CheckedEntry<TK;TV;TT;>;"
    return-object v0
.end method
