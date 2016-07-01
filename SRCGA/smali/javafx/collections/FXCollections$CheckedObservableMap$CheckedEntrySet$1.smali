.class Ljavafx/collections/FXCollections$CheckedObservableMap$CheckedEntrySet$1;
.super Ljava/lang/Object;
.source "FXCollections.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/collections/FXCollections$CheckedObservableMap$CheckedEntrySet;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/collections/FXCollections$CheckedObservableMap$CheckedEntrySet;

.field final synthetic val$i:Ljava/util/Iterator;

.field final synthetic val$valueType:Ljava/lang/Class;


# direct methods
.method constructor <init>(Ljavafx/collections/FXCollections$CheckedObservableMap$CheckedEntrySet;Ljava/util/Iterator;Ljava/lang/Class;)V
    .locals 6

    .prologue
    .line 2327
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$CheckedObservableMap$CheckedEntrySet$1;, "Ljavafx/collections/FXCollections$CheckedObservableMap$CheckedEntrySet$1;"
    move-object v1, p1

    .local v1, "this$0":Ljavafx/collections/FXCollections$CheckedObservableMap$CheckedEntrySet;
    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Ljavafx/collections/FXCollections$CheckedObservableMap$CheckedEntrySet$1;->this$0:Ljavafx/collections/FXCollections$CheckedObservableMap$CheckedEntrySet;

    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Ljavafx/collections/FXCollections$CheckedObservableMap$CheckedEntrySet$1;->val$i:Ljava/util/Iterator;

    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Ljavafx/collections/FXCollections$CheckedObservableMap$CheckedEntrySet$1;->val$valueType:Ljava/lang/Class;

    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .prologue
    .line 2330
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$CheckedObservableMap$CheckedEntrySet$1;, "Ljavafx/collections/FXCollections$CheckedObservableMap$CheckedEntrySet$1;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/collections/FXCollections$CheckedObservableMap$CheckedEntrySet$1;->val$i:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Ljavafx/collections/FXCollections$CheckedObservableMap$CheckedEntrySet$1;, "Ljavafx/collections/FXCollections$CheckedObservableMap$CheckedEntrySet$1;"
    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 2327
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$CheckedObservableMap$CheckedEntrySet$1;, "Ljavafx/collections/FXCollections$CheckedObservableMap$CheckedEntrySet$1;"
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/collections/FXCollections$CheckedObservableMap$CheckedEntrySet$1;->next()Ljava/util/Map$Entry;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/collections/FXCollections$CheckedObservableMap$CheckedEntrySet$1;, "Ljavafx/collections/FXCollections$CheckedObservableMap$CheckedEntrySet$1;"
    return-object v0
.end method

.method public next()Ljava/util/Map$Entry;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2340
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$CheckedObservableMap$CheckedEntrySet$1;, "Ljavafx/collections/FXCollections$CheckedObservableMap$CheckedEntrySet$1;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/collections/FXCollections$CheckedObservableMap$CheckedEntrySet$1;->val$i:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    move-object v2, v0

    iget-object v2, v2, Ljavafx/collections/FXCollections$CheckedObservableMap$CheckedEntrySet$1;->val$valueType:Ljava/lang/Class;

    invoke-static {v1, v2}, Ljavafx/collections/FXCollections$CheckedObservableMap$CheckedEntrySet;->checkedEntry(Ljava/util/Map$Entry;Ljava/lang/Class;)Ljavafx/collections/FXCollections$CheckedObservableMap$CheckedEntrySet$CheckedEntry;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/collections/FXCollections$CheckedObservableMap$CheckedEntrySet$1;, "Ljavafx/collections/FXCollections$CheckedObservableMap$CheckedEntrySet$1;"
    return-object v0
.end method

.method public remove()V
    .locals 2

    .prologue
    .line 2335
    move-object v0, p0

    .local v0, "this":Ljavafx/collections/FXCollections$CheckedObservableMap$CheckedEntrySet$1;, "Ljavafx/collections/FXCollections$CheckedObservableMap$CheckedEntrySet$1;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/collections/FXCollections$CheckedObservableMap$CheckedEntrySet$1;->val$i:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 2336
    return-void
.end method
