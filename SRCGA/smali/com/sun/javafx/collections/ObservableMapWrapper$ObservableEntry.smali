.class Lcom/sun/javafx/collections/ObservableMapWrapper$ObservableEntry;
.super Ljava/lang/Object;
.source "ObservableMapWrapper.java"

# interfaces
.implements Ljava/util/Map$Entry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/collections/ObservableMapWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ObservableEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field private final backingEntry:Ljava/util/Map$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/sun/javafx/collections/ObservableMapWrapper;


# direct methods
.method public constructor <init>(Lcom/sun/javafx/collections/ObservableMapWrapper;Ljava/util/Map$Entry;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 505
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/ObservableMapWrapper$ObservableEntry;, "Lcom/sun/javafx/collections/ObservableMapWrapper<TK;TV;>.ObservableEntry;"
    move-object v1, p1

    move-object v2, p2

    .local v2, "backingEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/sun/javafx/collections/ObservableMapWrapper$ObservableEntry;->this$0:Lcom/sun/javafx/collections/ObservableMapWrapper;

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 506
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/sun/javafx/collections/ObservableMapWrapper$ObservableEntry;->backingEntry:Ljava/util/Map$Entry;

    .line 507
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 9

    .prologue
    .line 528
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/ObservableMapWrapper$ObservableEntry;, "Lcom/sun/javafx/collections/ObservableMapWrapper<TK;TV;>.ObservableEntry;"
    move-object v1, p1

    .local v1, "o":Ljava/lang/Object;
    move-object v7, v1

    instance-of v7, v7, Ljava/util/Map$Entry;

    if-nez v7, :cond_0

    .line 529
    const/4 v7, 0x0

    move v0, v7

    .line 541
    .end local v0    # "this":Lcom/sun/javafx/collections/ObservableMapWrapper$ObservableEntry;, "Lcom/sun/javafx/collections/ObservableMapWrapper<TK;TV;>.ObservableEntry;"
    :goto_0
    return v0

    .line 531
    .restart local v0    # "this":Lcom/sun/javafx/collections/ObservableMapWrapper$ObservableEntry;, "Lcom/sun/javafx/collections/ObservableMapWrapper<TK;TV;>.ObservableEntry;"
    :cond_0
    move-object v7, v1

    check-cast v7, Ljava/util/Map$Entry;

    move-object v2, v7

    .line 532
    .local v2, "e":Ljava/util/Map$Entry;
    move-object v7, v0

    invoke-virtual {v7}, Lcom/sun/javafx/collections/ObservableMapWrapper$ObservableEntry;->getKey()Ljava/lang/Object;

    move-result-object v7

    move-object v3, v7

    .line 533
    .local v3, "k1":Ljava/lang/Object;
    move-object v7, v2

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    move-object v4, v7

    .line 534
    .local v4, "k2":Ljava/lang/Object;
    move-object v7, v3

    move-object v8, v4

    if-eq v7, v8, :cond_1

    move-object v7, v3

    if-eqz v7, :cond_3

    move-object v7, v3

    move-object v8, v4

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 535
    :cond_1
    move-object v7, v0

    invoke-virtual {v7}, Lcom/sun/javafx/collections/ObservableMapWrapper$ObservableEntry;->getValue()Ljava/lang/Object;

    move-result-object v7

    move-object v5, v7

    .line 536
    .local v5, "v1":Ljava/lang/Object;
    move-object v7, v2

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    move-object v6, v7

    .line 537
    .local v6, "v2":Ljava/lang/Object;
    move-object v7, v5

    move-object v8, v6

    if-eq v7, v8, :cond_2

    move-object v7, v5

    if-eqz v7, :cond_3

    move-object v7, v5

    move-object v8, v6

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 538
    :cond_2
    const/4 v7, 0x1

    move v0, v7

    goto :goto_0

    .line 541
    .end local v5    # "v1":Ljava/lang/Object;
    .end local v6    # "v2":Ljava/lang/Object;
    :cond_3
    const/4 v7, 0x0

    move v0, v7

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
    .line 511
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/ObservableMapWrapper$ObservableEntry;, "Lcom/sun/javafx/collections/ObservableMapWrapper<TK;TV;>.ObservableEntry;"
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/collections/ObservableMapWrapper$ObservableEntry;->backingEntry:Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/collections/ObservableMapWrapper$ObservableEntry;, "Lcom/sun/javafx/collections/ObservableMapWrapper<TK;TV;>.ObservableEntry;"
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
    .line 516
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/ObservableMapWrapper$ObservableEntry;, "Lcom/sun/javafx/collections/ObservableMapWrapper<TK;TV;>.ObservableEntry;"
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/collections/ObservableMapWrapper$ObservableEntry;->backingEntry:Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/collections/ObservableMapWrapper$ObservableEntry;, "Lcom/sun/javafx/collections/ObservableMapWrapper<TK;TV;>.ObservableEntry;"
    return-object v0
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    .line 546
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/ObservableMapWrapper$ObservableEntry;, "Lcom/sun/javafx/collections/ObservableMapWrapper<TK;TV;>.ObservableEntry;"
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/collections/ObservableMapWrapper$ObservableEntry;->getKey()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move-object v2, v0

    .line 547
    invoke-virtual {v2}, Lcom/sun/javafx/collections/ObservableMapWrapper$ObservableEntry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    const/4 v2, 0x0

    :goto_1
    xor-int/2addr v1, v2

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/collections/ObservableMapWrapper$ObservableEntry;, "Lcom/sun/javafx/collections/ObservableMapWrapper<TK;TV;>.ObservableEntry;"
    return v0

    .line 546
    .restart local v0    # "this":Lcom/sun/javafx/collections/ObservableMapWrapper$ObservableEntry;, "Lcom/sun/javafx/collections/ObservableMapWrapper<TK;TV;>.ObservableEntry;"
    :cond_0
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/collections/ObservableMapWrapper$ObservableEntry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_0

    .line 547
    :cond_1
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/collections/ObservableMapWrapper$ObservableEntry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .prologue
    .line 521
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/ObservableMapWrapper$ObservableEntry;, "Lcom/sun/javafx/collections/ObservableMapWrapper<TK;TV;>.ObservableEntry;"
    move-object v1, p1

    .local v1, "value":Ljava/lang/Object;, "TV;"
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/collections/ObservableMapWrapper$ObservableEntry;->backingEntry:Ljava/util/Map$Entry;

    move-object v4, v1

    invoke-interface {v3, v4}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v2, v3

    .line 522
    .local v2, "oldValue":Ljava/lang/Object;, "TV;"
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/collections/ObservableMapWrapper$ObservableEntry;->this$0:Lcom/sun/javafx/collections/ObservableMapWrapper;

    new-instance v4, Lcom/sun/javafx/collections/ObservableMapWrapper$SimpleChange;

    move-object v12, v4

    move-object v4, v12

    move-object v5, v12

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/collections/ObservableMapWrapper$ObservableEntry;->this$0:Lcom/sun/javafx/collections/ObservableMapWrapper;

    move-object v7, v0

    invoke-virtual {v7}, Lcom/sun/javafx/collections/ObservableMapWrapper$ObservableEntry;->getKey()Ljava/lang/Object;

    move-result-object v7

    move-object v8, v2

    move-object v9, v1

    const/4 v10, 0x1

    const/4 v11, 0x1

    invoke-direct/range {v5 .. v11}, Lcom/sun/javafx/collections/ObservableMapWrapper$SimpleChange;-><init>(Lcom/sun/javafx/collections/ObservableMapWrapper;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;ZZ)V

    invoke-virtual {v3, v4}, Lcom/sun/javafx/collections/ObservableMapWrapper;->callObservers(Ljavafx/collections/MapChangeListener$Change;)V

    .line 523
    move-object v3, v2

    move-object v0, v3

    .end local v0    # "this":Lcom/sun/javafx/collections/ObservableMapWrapper$ObservableEntry;, "Lcom/sun/javafx/collections/ObservableMapWrapper<TK;TV;>.ObservableEntry;"
    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 552
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/ObservableMapWrapper$ObservableEntry;, "Lcom/sun/javafx/collections/ObservableMapWrapper<TK;TV;>.ObservableEntry;"
    new-instance v1, Ljava/lang/StringBuilder;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/collections/ObservableMapWrapper$ObservableEntry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/collections/ObservableMapWrapper$ObservableEntry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/collections/ObservableMapWrapper$ObservableEntry;, "Lcom/sun/javafx/collections/ObservableMapWrapper<TK;TV;>.ObservableEntry;"
    return-object v0
.end method
