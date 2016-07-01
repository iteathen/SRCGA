.class Lcom/sun/javafx/scene/KeyboardShortcutsHandler$CopyOnWriteMap$1$1;
.super Ljava/lang/Object;
.source "KeyboardShortcutsHandler.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sun/javafx/scene/KeyboardShortcutsHandler$CopyOnWriteMap$1;->iterator()Ljava/util/Iterator;
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
.field private backingIt:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field private backingMapAtCreation:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private lastNext:Ljava/util/Map$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field final synthetic this$1:Lcom/sun/javafx/scene/KeyboardShortcutsHandler$CopyOnWriteMap$1;


# direct methods
.method constructor <init>(Lcom/sun/javafx/scene/KeyboardShortcutsHandler$CopyOnWriteMap$1;)V
    .locals 4

    .prologue
    .line 429
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/KeyboardShortcutsHandler$CopyOnWriteMap$1$1;, "Lcom/sun/javafx/scene/KeyboardShortcutsHandler$CopyOnWriteMap$1$1;"
    move-object v1, p1

    .local v1, "this$1":Lcom/sun/javafx/scene/KeyboardShortcutsHandler$CopyOnWriteMap$1;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/scene/KeyboardShortcutsHandler$CopyOnWriteMap$1$1;->this$1:Lcom/sun/javafx/scene/KeyboardShortcutsHandler$CopyOnWriteMap$1;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 431
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/KeyboardShortcutsHandler$CopyOnWriteMap$1$1;->this$1:Lcom/sun/javafx/scene/KeyboardShortcutsHandler$CopyOnWriteMap$1;

    iget-object v3, v3, Lcom/sun/javafx/scene/KeyboardShortcutsHandler$CopyOnWriteMap$1;->this$0:Lcom/sun/javafx/scene/KeyboardShortcutsHandler$CopyOnWriteMap;

    invoke-static {v3}, Lcom/sun/javafx/scene/KeyboardShortcutsHandler$CopyOnWriteMap;->access$100(Lcom/sun/javafx/scene/KeyboardShortcutsHandler$CopyOnWriteMap;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    iput-object v3, v2, Lcom/sun/javafx/scene/KeyboardShortcutsHandler$CopyOnWriteMap$1$1;->backingIt:Ljava/util/Iterator;

    .line 432
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/KeyboardShortcutsHandler$CopyOnWriteMap$1$1;->this$1:Lcom/sun/javafx/scene/KeyboardShortcutsHandler$CopyOnWriteMap$1;

    iget-object v3, v3, Lcom/sun/javafx/scene/KeyboardShortcutsHandler$CopyOnWriteMap$1;->this$0:Lcom/sun/javafx/scene/KeyboardShortcutsHandler$CopyOnWriteMap;

    invoke-static {v3}, Lcom/sun/javafx/scene/KeyboardShortcutsHandler$CopyOnWriteMap;->access$100(Lcom/sun/javafx/scene/KeyboardShortcutsHandler$CopyOnWriteMap;)Ljava/util/Map;

    move-result-object v3

    iput-object v3, v2, Lcom/sun/javafx/scene/KeyboardShortcutsHandler$CopyOnWriteMap$1$1;->backingMapAtCreation:Ljava/util/Map;

    .line 433
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/sun/javafx/scene/KeyboardShortcutsHandler$CopyOnWriteMap$1$1;->lastNext:Ljava/util/Map$Entry;

    return-void
.end method

.method private checkCoMod()V
    .locals 4

    .prologue
    .line 442
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/KeyboardShortcutsHandler$CopyOnWriteMap$1$1;, "Lcom/sun/javafx/scene/KeyboardShortcutsHandler$CopyOnWriteMap$1$1;"
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/KeyboardShortcutsHandler$CopyOnWriteMap$1$1;->this$1:Lcom/sun/javafx/scene/KeyboardShortcutsHandler$CopyOnWriteMap$1;

    iget-object v1, v1, Lcom/sun/javafx/scene/KeyboardShortcutsHandler$CopyOnWriteMap$1;->this$0:Lcom/sun/javafx/scene/KeyboardShortcutsHandler$CopyOnWriteMap;

    invoke-static {v1}, Lcom/sun/javafx/scene/KeyboardShortcutsHandler$CopyOnWriteMap;->access$100(Lcom/sun/javafx/scene/KeyboardShortcutsHandler$CopyOnWriteMap;)Ljava/util/Map;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/KeyboardShortcutsHandler$CopyOnWriteMap$1$1;->backingMapAtCreation:Ljava/util/Map;

    if-eq v1, v2, :cond_0

    .line 443
    new-instance v1, Ljava/util/ConcurrentModificationException;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v1

    .line 445
    :cond_0
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .prologue
    .line 437
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/KeyboardShortcutsHandler$CopyOnWriteMap$1$1;, "Lcom/sun/javafx/scene/KeyboardShortcutsHandler$CopyOnWriteMap$1$1;"
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/scene/KeyboardShortcutsHandler$CopyOnWriteMap$1$1;->checkCoMod()V

    .line 438
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/KeyboardShortcutsHandler$CopyOnWriteMap$1$1;->backingIt:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/KeyboardShortcutsHandler$CopyOnWriteMap$1$1;, "Lcom/sun/javafx/scene/KeyboardShortcutsHandler$CopyOnWriteMap$1$1;"
    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 429
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/KeyboardShortcutsHandler$CopyOnWriteMap$1$1;, "Lcom/sun/javafx/scene/KeyboardShortcutsHandler$CopyOnWriteMap$1$1;"
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/KeyboardShortcutsHandler$CopyOnWriteMap$1$1;->next()Ljava/util/Map$Entry;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/KeyboardShortcutsHandler$CopyOnWriteMap$1$1;, "Lcom/sun/javafx/scene/KeyboardShortcutsHandler$CopyOnWriteMap$1$1;"
    return-object v0
.end method

.method public next()Ljava/util/Map$Entry;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 449
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/KeyboardShortcutsHandler$CopyOnWriteMap$1$1;, "Lcom/sun/javafx/scene/KeyboardShortcutsHandler$CopyOnWriteMap$1$1;"
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/scene/KeyboardShortcutsHandler$CopyOnWriteMap$1$1;->checkCoMod()V

    .line 450
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/KeyboardShortcutsHandler$CopyOnWriteMap$1$1;->backingIt:Ljava/util/Iterator;

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    move-object v4, v1

    move-object v5, v2

    move-object v1, v5

    move-object v2, v4

    move-object v3, v5

    iput-object v3, v2, Lcom/sun/javafx/scene/KeyboardShortcutsHandler$CopyOnWriteMap$1$1;->lastNext:Ljava/util/Map$Entry;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/KeyboardShortcutsHandler$CopyOnWriteMap$1$1;, "Lcom/sun/javafx/scene/KeyboardShortcutsHandler$CopyOnWriteMap$1$1;"
    return-object v0
.end method

.method public remove()V
    .locals 6

    .prologue
    .line 455
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/KeyboardShortcutsHandler$CopyOnWriteMap$1$1;, "Lcom/sun/javafx/scene/KeyboardShortcutsHandler$CopyOnWriteMap$1$1;"
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/scene/KeyboardShortcutsHandler$CopyOnWriteMap$1$1;->checkCoMod()V

    .line 456
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/KeyboardShortcutsHandler$CopyOnWriteMap$1$1;->lastNext:Ljava/util/Map$Entry;

    if-nez v1, :cond_0

    .line 457
    new-instance v1, Ljava/lang/IllegalStateException;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 459
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/KeyboardShortcutsHandler$CopyOnWriteMap$1$1;->this$1:Lcom/sun/javafx/scene/KeyboardShortcutsHandler$CopyOnWriteMap$1;

    iget-object v1, v1, Lcom/sun/javafx/scene/KeyboardShortcutsHandler$CopyOnWriteMap$1;->this$0:Lcom/sun/javafx/scene/KeyboardShortcutsHandler$CopyOnWriteMap;

    invoke-static {v1}, Lcom/sun/javafx/scene/KeyboardShortcutsHandler$CopyOnWriteMap;->access$200(Lcom/sun/javafx/scene/KeyboardShortcutsHandler$CopyOnWriteMap;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 460
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/KeyboardShortcutsHandler$CopyOnWriteMap$1$1;->this$1:Lcom/sun/javafx/scene/KeyboardShortcutsHandler$CopyOnWriteMap$1;

    iget-object v1, v1, Lcom/sun/javafx/scene/KeyboardShortcutsHandler$CopyOnWriteMap$1;->this$0:Lcom/sun/javafx/scene/KeyboardShortcutsHandler$CopyOnWriteMap;

    new-instance v2, Ljava/util/HashMap;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/KeyboardShortcutsHandler$CopyOnWriteMap$1$1;->this$1:Lcom/sun/javafx/scene/KeyboardShortcutsHandler$CopyOnWriteMap$1;

    iget-object v4, v4, Lcom/sun/javafx/scene/KeyboardShortcutsHandler$CopyOnWriteMap$1;->this$0:Lcom/sun/javafx/scene/KeyboardShortcutsHandler$CopyOnWriteMap;

    invoke-static {v4}, Lcom/sun/javafx/scene/KeyboardShortcutsHandler$CopyOnWriteMap;->access$100(Lcom/sun/javafx/scene/KeyboardShortcutsHandler$CopyOnWriteMap;)Ljava/util/Map;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-static {v1, v2}, Lcom/sun/javafx/scene/KeyboardShortcutsHandler$CopyOnWriteMap;->access$102(Lcom/sun/javafx/scene/KeyboardShortcutsHandler$CopyOnWriteMap;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    .line 461
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/KeyboardShortcutsHandler$CopyOnWriteMap$1$1;->this$1:Lcom/sun/javafx/scene/KeyboardShortcutsHandler$CopyOnWriteMap$1;

    iget-object v2, v2, Lcom/sun/javafx/scene/KeyboardShortcutsHandler$CopyOnWriteMap$1;->this$0:Lcom/sun/javafx/scene/KeyboardShortcutsHandler$CopyOnWriteMap;

    invoke-static {v2}, Lcom/sun/javafx/scene/KeyboardShortcutsHandler$CopyOnWriteMap;->access$100(Lcom/sun/javafx/scene/KeyboardShortcutsHandler$CopyOnWriteMap;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    iput-object v2, v1, Lcom/sun/javafx/scene/KeyboardShortcutsHandler$CopyOnWriteMap$1$1;->backingIt:Ljava/util/Iterator;

    .line 462
    :goto_0
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/KeyboardShortcutsHandler$CopyOnWriteMap$1$1;->lastNext:Ljava/util/Map$Entry;

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/KeyboardShortcutsHandler$CopyOnWriteMap$1$1;->backingIt:Ljava/util/Iterator;

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map$Entry;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 463
    :cond_1
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/KeyboardShortcutsHandler$CopyOnWriteMap$1$1;->this$1:Lcom/sun/javafx/scene/KeyboardShortcutsHandler$CopyOnWriteMap$1;

    iget-object v1, v1, Lcom/sun/javafx/scene/KeyboardShortcutsHandler$CopyOnWriteMap$1;->this$0:Lcom/sun/javafx/scene/KeyboardShortcutsHandler$CopyOnWriteMap;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/sun/javafx/scene/KeyboardShortcutsHandler$CopyOnWriteMap;->access$202(Lcom/sun/javafx/scene/KeyboardShortcutsHandler$CopyOnWriteMap;Z)Z

    move-result v1

    .line 465
    :cond_2
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/KeyboardShortcutsHandler$CopyOnWriteMap$1$1;->backingIt:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 466
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/sun/javafx/scene/KeyboardShortcutsHandler$CopyOnWriteMap$1$1;->lastNext:Ljava/util/Map$Entry;

    .line 467
    return-void
.end method
