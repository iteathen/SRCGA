.class Lcom/sun/javafx/collections/ObservableMapWrapper$ObservableKeySet$1;
.super Ljava/lang/Object;
.source "ObservableMapWrapper.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sun/javafx/collections/ObservableMapWrapper$ObservableKeySet;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TK;>;"
    }
.end annotation


# instance fields
.field private entryIt:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field private lastKey:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field private lastValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field

.field final synthetic this$1:Lcom/sun/javafx/collections/ObservableMapWrapper$ObservableKeySet;


# direct methods
.method constructor <init>(Lcom/sun/javafx/collections/ObservableMapWrapper$ObservableKeySet;)V
    .locals 4

    .prologue
    .line 265
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/ObservableMapWrapper$ObservableKeySet$1;, "Lcom/sun/javafx/collections/ObservableMapWrapper$ObservableKeySet$1;"
    move-object v1, p1

    .local v1, "this$1":Lcom/sun/javafx/collections/ObservableMapWrapper$ObservableKeySet;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/collections/ObservableMapWrapper$ObservableKeySet$1;->this$1:Lcom/sun/javafx/collections/ObservableMapWrapper$ObservableKeySet;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 267
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/collections/ObservableMapWrapper$ObservableKeySet$1;->this$1:Lcom/sun/javafx/collections/ObservableMapWrapper$ObservableKeySet;

    iget-object v3, v3, Lcom/sun/javafx/collections/ObservableMapWrapper$ObservableKeySet;->this$0:Lcom/sun/javafx/collections/ObservableMapWrapper;

    invoke-static {v3}, Lcom/sun/javafx/collections/ObservableMapWrapper;->access$300(Lcom/sun/javafx/collections/ObservableMapWrapper;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    iput-object v3, v2, Lcom/sun/javafx/collections/ObservableMapWrapper$ObservableKeySet$1;->entryIt:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .prologue
    .line 272
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/ObservableMapWrapper$ObservableKeySet$1;, "Lcom/sun/javafx/collections/ObservableMapWrapper$ObservableKeySet$1;"
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/collections/ObservableMapWrapper$ObservableKeySet$1;->entryIt:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/collections/ObservableMapWrapper$ObservableKeySet$1;, "Lcom/sun/javafx/collections/ObservableMapWrapper$ObservableKeySet$1;"
    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 277
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/ObservableMapWrapper$ObservableKeySet$1;, "Lcom/sun/javafx/collections/ObservableMapWrapper$ObservableKeySet$1;"
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/collections/ObservableMapWrapper$ObservableKeySet$1;->entryIt:Ljava/util/Iterator;

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    move-object v1, v2

    .line 278
    .local v1, "last":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    iput-object v3, v2, Lcom/sun/javafx/collections/ObservableMapWrapper$ObservableKeySet$1;->lastKey:Ljava/lang/Object;

    .line 279
    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    iput-object v3, v2, Lcom/sun/javafx/collections/ObservableMapWrapper$ObservableKeySet$1;->lastValue:Ljava/lang/Object;

    .line 280
    move-object v2, v1

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/collections/ObservableMapWrapper$ObservableKeySet$1;, "Lcom/sun/javafx/collections/ObservableMapWrapper$ObservableKeySet$1;"
    return-object v0
.end method

.method public remove()V
    .locals 11

    .prologue
    .line 285
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/ObservableMapWrapper$ObservableKeySet$1;, "Lcom/sun/javafx/collections/ObservableMapWrapper$ObservableKeySet$1;"
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/collections/ObservableMapWrapper$ObservableKeySet$1;->entryIt:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 286
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/collections/ObservableMapWrapper$ObservableKeySet$1;->this$1:Lcom/sun/javafx/collections/ObservableMapWrapper$ObservableKeySet;

    iget-object v1, v1, Lcom/sun/javafx/collections/ObservableMapWrapper$ObservableKeySet;->this$0:Lcom/sun/javafx/collections/ObservableMapWrapper;

    new-instance v2, Lcom/sun/javafx/collections/ObservableMapWrapper$SimpleChange;

    move-object v10, v2

    move-object v2, v10

    move-object v3, v10

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/collections/ObservableMapWrapper$ObservableKeySet$1;->this$1:Lcom/sun/javafx/collections/ObservableMapWrapper$ObservableKeySet;

    iget-object v4, v4, Lcom/sun/javafx/collections/ObservableMapWrapper$ObservableKeySet;->this$0:Lcom/sun/javafx/collections/ObservableMapWrapper;

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/collections/ObservableMapWrapper$ObservableKeySet$1;->lastKey:Ljava/lang/Object;

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/collections/ObservableMapWrapper$ObservableKeySet$1;->lastValue:Ljava/lang/Object;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-direct/range {v3 .. v9}, Lcom/sun/javafx/collections/ObservableMapWrapper$SimpleChange;-><init>(Lcom/sun/javafx/collections/ObservableMapWrapper;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;ZZ)V

    invoke-virtual {v1, v2}, Lcom/sun/javafx/collections/ObservableMapWrapper;->callObservers(Ljavafx/collections/MapChangeListener$Change;)V

    .line 287
    return-void
.end method
