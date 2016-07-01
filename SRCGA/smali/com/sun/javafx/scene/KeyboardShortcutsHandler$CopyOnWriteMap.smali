.class Lcom/sun/javafx/scene/KeyboardShortcutsHandler$CopyOnWriteMap;
.super Ljava/util/AbstractMap;
.source "KeyboardShortcutsHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/scene/KeyboardShortcutsHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CopyOnWriteMap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractMap",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field private backingMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private lock:Z


# direct methods
.method private constructor <init>()V
    .locals 5

    .prologue
    .line 402
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/KeyboardShortcutsHandler$CopyOnWriteMap;, "Lcom/sun/javafx/scene/KeyboardShortcutsHandler$CopyOnWriteMap<TK;TV;>;"
    move-object v1, v0

    invoke-direct {v1}, Ljava/util/AbstractMap;-><init>()V

    .line 404
    move-object v1, v0

    new-instance v2, Ljava/util/HashMap;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v2, v1, Lcom/sun/javafx/scene/KeyboardShortcutsHandler$CopyOnWriteMap;->backingMap:Ljava/util/Map;

    return-void
.end method

.method synthetic constructor <init>(Lcom/sun/javafx/scene/KeyboardShortcutsHandler$1;)V
    .locals 3

    .prologue
    .line 402
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/KeyboardShortcutsHandler$CopyOnWriteMap;, "Lcom/sun/javafx/scene/KeyboardShortcutsHandler$CopyOnWriteMap<TK;TV;>;"
    move-object v1, p1

    .local v1, "x0":Lcom/sun/javafx/scene/KeyboardShortcutsHandler$1;
    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/scene/KeyboardShortcutsHandler$CopyOnWriteMap;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/sun/javafx/scene/KeyboardShortcutsHandler$CopyOnWriteMap;)Ljava/util/Map;
    .locals 2

    .prologue
    .line 402
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/KeyboardShortcutsHandler$CopyOnWriteMap;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/KeyboardShortcutsHandler$CopyOnWriteMap;->backingMap:Ljava/util/Map;

    move-object v0, v1

    .end local v0    # "x0":Lcom/sun/javafx/scene/KeyboardShortcutsHandler$CopyOnWriteMap;
    return-object v0
.end method

.method static synthetic access$102(Lcom/sun/javafx/scene/KeyboardShortcutsHandler$CopyOnWriteMap;Ljava/util/Map;)Ljava/util/Map;
    .locals 7

    .prologue
    .line 402
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/KeyboardShortcutsHandler$CopyOnWriteMap;
    move-object v1, p1

    .local v1, "x1":Ljava/util/Map;
    move-object v2, v0

    move-object v3, v1

    move-object v5, v2

    move-object v6, v3

    move-object v2, v6

    move-object v3, v5

    move-object v4, v6

    iput-object v4, v3, Lcom/sun/javafx/scene/KeyboardShortcutsHandler$CopyOnWriteMap;->backingMap:Ljava/util/Map;

    move-object v0, v2

    .end local v0    # "x0":Lcom/sun/javafx/scene/KeyboardShortcutsHandler$CopyOnWriteMap;
    return-object v0
.end method

.method static synthetic access$200(Lcom/sun/javafx/scene/KeyboardShortcutsHandler$CopyOnWriteMap;)Z
    .locals 2

    .prologue
    .line 402
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/KeyboardShortcutsHandler$CopyOnWriteMap;
    move-object v1, v0

    iget-boolean v1, v1, Lcom/sun/javafx/scene/KeyboardShortcutsHandler$CopyOnWriteMap;->lock:Z

    move v0, v1

    .end local v0    # "x0":Lcom/sun/javafx/scene/KeyboardShortcutsHandler$CopyOnWriteMap;
    return v0
.end method

.method static synthetic access$202(Lcom/sun/javafx/scene/KeyboardShortcutsHandler$CopyOnWriteMap;Z)Z
    .locals 7

    .prologue
    .line 402
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/KeyboardShortcutsHandler$CopyOnWriteMap;
    move v1, p1

    .local v1, "x1":Z
    move-object v2, v0

    move v3, v1

    move-object v5, v2

    move v6, v3

    move v2, v6

    move-object v3, v5

    move v4, v6

    iput-boolean v4, v3, Lcom/sun/javafx/scene/KeyboardShortcutsHandler$CopyOnWriteMap;->lock:Z

    move v0, v2

    .end local v0    # "x0":Lcom/sun/javafx/scene/KeyboardShortcutsHandler$CopyOnWriteMap;
    return v0
.end method


# virtual methods
.method public entrySet()Ljava/util/Set;
    .locals 5
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
    .line 426
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/KeyboardShortcutsHandler$CopyOnWriteMap;, "Lcom/sun/javafx/scene/KeyboardShortcutsHandler$CopyOnWriteMap<TK;TV;>;"
    new-instance v1, Lcom/sun/javafx/scene/KeyboardShortcutsHandler$CopyOnWriteMap$1;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/KeyboardShortcutsHandler$CopyOnWriteMap$1;-><init>(Lcom/sun/javafx/scene/KeyboardShortcutsHandler$CopyOnWriteMap;)V

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/KeyboardShortcutsHandler$CopyOnWriteMap;, "Lcom/sun/javafx/scene/KeyboardShortcutsHandler$CopyOnWriteMap<TK;TV;>;"
    return-object v0
.end method

.method public lock()V
    .locals 3

    .prologue
    .line 408
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/KeyboardShortcutsHandler$CopyOnWriteMap;, "Lcom/sun/javafx/scene/KeyboardShortcutsHandler$CopyOnWriteMap<TK;TV;>;"
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/sun/javafx/scene/KeyboardShortcutsHandler$CopyOnWriteMap;->lock:Z

    .line 409
    return-void
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 417
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/KeyboardShortcutsHandler$CopyOnWriteMap;, "Lcom/sun/javafx/scene/KeyboardShortcutsHandler$CopyOnWriteMap<TK;TV;>;"
    move-object v1, p1

    .local v1, "key":Ljava/lang/Object;, "TK;"
    move-object v2, p2

    .local v2, "value":Ljava/lang/Object;, "TV;"
    move-object v3, v0

    iget-boolean v3, v3, Lcom/sun/javafx/scene/KeyboardShortcutsHandler$CopyOnWriteMap;->lock:Z

    if-eqz v3, :cond_0

    .line 418
    move-object v3, v0

    new-instance v4, Ljava/util/HashMap;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/scene/KeyboardShortcutsHandler$CopyOnWriteMap;->backingMap:Ljava/util/Map;

    invoke-direct {v5, v6}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v4, v3, Lcom/sun/javafx/scene/KeyboardShortcutsHandler$CopyOnWriteMap;->backingMap:Ljava/util/Map;

    .line 419
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/sun/javafx/scene/KeyboardShortcutsHandler$CopyOnWriteMap;->lock:Z

    .line 421
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/KeyboardShortcutsHandler$CopyOnWriteMap;->backingMap:Ljava/util/Map;

    move-object v4, v1

    move-object v5, v2

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lcom/sun/javafx/scene/KeyboardShortcutsHandler$CopyOnWriteMap;, "Lcom/sun/javafx/scene/KeyboardShortcutsHandler$CopyOnWriteMap<TK;TV;>;"
    return-object v0
.end method

.method public unlock()V
    .locals 3

    .prologue
    .line 412
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/KeyboardShortcutsHandler$CopyOnWriteMap;, "Lcom/sun/javafx/scene/KeyboardShortcutsHandler$CopyOnWriteMap<TK;TV;>;"
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/sun/javafx/scene/KeyboardShortcutsHandler$CopyOnWriteMap;->lock:Z

    .line 413
    return-void
.end method
