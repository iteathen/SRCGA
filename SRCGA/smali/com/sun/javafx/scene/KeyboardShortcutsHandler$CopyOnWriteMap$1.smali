.class Lcom/sun/javafx/scene/KeyboardShortcutsHandler$CopyOnWriteMap$1;
.super Ljava/util/AbstractSet;
.source "KeyboardShortcutsHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sun/javafx/scene/KeyboardShortcutsHandler$CopyOnWriteMap;->entrySet()Ljava/util/Set;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sun/javafx/scene/KeyboardShortcutsHandler$CopyOnWriteMap;


# direct methods
.method constructor <init>(Lcom/sun/javafx/scene/KeyboardShortcutsHandler$CopyOnWriteMap;)V
    .locals 4

    .prologue
    .line 426
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/KeyboardShortcutsHandler$CopyOnWriteMap$1;, "Lcom/sun/javafx/scene/KeyboardShortcutsHandler$CopyOnWriteMap$1;"
    move-object v1, p1

    .local v1, "this$0":Lcom/sun/javafx/scene/KeyboardShortcutsHandler$CopyOnWriteMap;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/scene/KeyboardShortcutsHandler$CopyOnWriteMap$1;->this$0:Lcom/sun/javafx/scene/KeyboardShortcutsHandler$CopyOnWriteMap;

    move-object v2, v0

    invoke-direct {v2}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 429
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/KeyboardShortcutsHandler$CopyOnWriteMap$1;, "Lcom/sun/javafx/scene/KeyboardShortcutsHandler$CopyOnWriteMap$1;"
    new-instance v1, Lcom/sun/javafx/scene/KeyboardShortcutsHandler$CopyOnWriteMap$1$1;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/KeyboardShortcutsHandler$CopyOnWriteMap$1$1;-><init>(Lcom/sun/javafx/scene/KeyboardShortcutsHandler$CopyOnWriteMap$1;)V

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/KeyboardShortcutsHandler$CopyOnWriteMap$1;, "Lcom/sun/javafx/scene/KeyboardShortcutsHandler$CopyOnWriteMap$1;"
    return-object v0
.end method

.method public size()I
    .locals 2

    .prologue
    .line 473
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/KeyboardShortcutsHandler$CopyOnWriteMap$1;, "Lcom/sun/javafx/scene/KeyboardShortcutsHandler$CopyOnWriteMap$1;"
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/KeyboardShortcutsHandler$CopyOnWriteMap$1;->this$0:Lcom/sun/javafx/scene/KeyboardShortcutsHandler$CopyOnWriteMap;

    invoke-static {v1}, Lcom/sun/javafx/scene/KeyboardShortcutsHandler$CopyOnWriteMap;->access$100(Lcom/sun/javafx/scene/KeyboardShortcutsHandler$CopyOnWriteMap;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/KeyboardShortcutsHandler$CopyOnWriteMap$1;, "Lcom/sun/javafx/scene/KeyboardShortcutsHandler$CopyOnWriteMap$1;"
    return v0
.end method
