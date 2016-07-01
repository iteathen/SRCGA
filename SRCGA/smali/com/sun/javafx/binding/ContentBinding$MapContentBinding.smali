.class Lcom/sun/javafx/binding/ContentBinding$MapContentBinding;
.super Ljava/lang/Object;
.source "ContentBinding.java"

# interfaces
.implements Ljavafx/collections/MapChangeListener;
.implements Ljavafx/beans/WeakListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/binding/ContentBinding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MapContentBinding"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljavafx/collections/MapChangeListener",
        "<TK;TV;>;",
        "Ljavafx/beans/WeakListener;"
    }
.end annotation


# instance fields
.field private final mapRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Ljava/util/Map",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 212
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/binding/ContentBinding$MapContentBinding;, "Lcom/sun/javafx/binding/ContentBinding$MapContentBinding<TK;TV;>;"
    move-object v1, p1

    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 213
    move-object v2, v0

    new-instance v3, Ljava/lang/ref/WeakReference;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v1

    invoke-direct {v4, v5}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v3, v2, Lcom/sun/javafx/binding/ContentBinding$MapContentBinding;->mapRef:Ljava/lang/ref/WeakReference;

    .line 214
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    .prologue
    .line 243
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/binding/ContentBinding$MapContentBinding;, "Lcom/sun/javafx/binding/ContentBinding$MapContentBinding<TK;TV;>;"
    move-object v1, p1

    .local v1, "obj":Ljava/lang/Object;
    move-object v5, v0

    move-object v6, v1

    if-ne v5, v6, :cond_0

    .line 244
    const/4 v5, 0x1

    move v0, v5

    .line 257
    .end local v0    # "this":Lcom/sun/javafx/binding/ContentBinding$MapContentBinding;, "Lcom/sun/javafx/binding/ContentBinding$MapContentBinding<TK;TV;>;"
    :goto_0
    return v0

    .line 247
    .restart local v0    # "this":Lcom/sun/javafx/binding/ContentBinding$MapContentBinding;, "Lcom/sun/javafx/binding/ContentBinding$MapContentBinding<TK;TV;>;"
    :cond_0
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/binding/ContentBinding$MapContentBinding;->mapRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    move-object v2, v5

    .line 248
    .local v2, "map1":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    move-object v5, v2

    if-nez v5, :cond_1

    .line 249
    const/4 v5, 0x0

    move v0, v5

    goto :goto_0

    .line 252
    :cond_1
    move-object v5, v1

    instance-of v5, v5, Lcom/sun/javafx/binding/ContentBinding$MapContentBinding;

    if-eqz v5, :cond_3

    .line 253
    move-object v5, v1

    check-cast v5, Lcom/sun/javafx/binding/ContentBinding$MapContentBinding;

    move-object v3, v5

    .line 254
    .local v3, "other":Lcom/sun/javafx/binding/ContentBinding$MapContentBinding;, "Lcom/sun/javafx/binding/ContentBinding$MapContentBinding<**>;"
    move-object v5, v3

    iget-object v5, v5, Lcom/sun/javafx/binding/ContentBinding$MapContentBinding;->mapRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    move-object v4, v5

    .line 255
    .local v4, "map2":Ljava/util/Map;, "Ljava/util/Map<**>;"
    move-object v5, v2

    move-object v6, v4

    if-ne v5, v6, :cond_2

    const/4 v5, 0x1

    :goto_1
    move v0, v5

    goto :goto_0

    :cond_2
    const/4 v5, 0x0

    goto :goto_1

    .line 257
    .end local v3    # "other":Lcom/sun/javafx/binding/ContentBinding$MapContentBinding;, "Lcom/sun/javafx/binding/ContentBinding$MapContentBinding<**>;"
    .end local v4    # "map2":Ljava/util/Map;, "Ljava/util/Map<**>;"
    :cond_3
    const/4 v5, 0x0

    move v0, v5

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 237
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/binding/ContentBinding$MapContentBinding;, "Lcom/sun/javafx/binding/ContentBinding$MapContentBinding<TK;TV;>;"
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/binding/ContentBinding$MapContentBinding;->mapRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    move-object v1, v2

    .line 238
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    move-object v2, v1

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    move v0, v2

    .end local v0    # "this":Lcom/sun/javafx/binding/ContentBinding$MapContentBinding;, "Lcom/sun/javafx/binding/ContentBinding$MapContentBinding<TK;TV;>;"
    return v0

    .restart local v0    # "this":Lcom/sun/javafx/binding/ContentBinding$MapContentBinding;, "Lcom/sun/javafx/binding/ContentBinding$MapContentBinding<TK;TV;>;"
    :cond_0
    move-object v2, v1

    invoke-interface {v2}, Ljava/util/Map;->hashCode()I

    move-result v2

    goto :goto_0
.end method

.method public onChanged(Ljavafx/collections/MapChangeListener$Change;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/MapChangeListener$Change",
            "<+TK;+TV;>;)V"
        }
    .end annotation

    .prologue
    .line 218
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/binding/ContentBinding$MapContentBinding;, "Lcom/sun/javafx/binding/ContentBinding$MapContentBinding<TK;TV;>;"
    move-object v1, p1

    .local v1, "change":Ljavafx/collections/MapChangeListener$Change;, "Ljavafx/collections/MapChangeListener$Change<+TK;+TV;>;"
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/binding/ContentBinding$MapContentBinding;->mapRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    move-object v2, v3

    .line 219
    .local v2, "map":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    move-object v3, v2

    if-nez v3, :cond_0

    .line 220
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/collections/MapChangeListener$Change;->getMap()Ljavafx/collections/ObservableMap;

    move-result-object v3

    move-object v4, v0

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableMap;->removeListener(Ljavafx/collections/MapChangeListener;)V

    .line 228
    :goto_0
    return-void

    .line 222
    :cond_0
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/collections/MapChangeListener$Change;->wasRemoved()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 223
    move-object v3, v2

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/collections/MapChangeListener$Change;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_0

    .line 225
    :cond_1
    move-object v3, v2

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/collections/MapChangeListener$Change;->getKey()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/collections/MapChangeListener$Change;->getValueAdded()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_0
.end method

.method public wasGarbageCollected()Z
    .locals 2

    .prologue
    .line 232
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/binding/ContentBinding$MapContentBinding;, "Lcom/sun/javafx/binding/ContentBinding$MapContentBinding<TK;TV;>;"
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/binding/ContentBinding$MapContentBinding;->mapRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/binding/ContentBinding$MapContentBinding;, "Lcom/sun/javafx/binding/ContentBinding$MapContentBinding<TK;TV;>;"
    return v0

    .restart local v0    # "this":Lcom/sun/javafx/binding/ContentBinding$MapContentBinding;, "Lcom/sun/javafx/binding/ContentBinding$MapContentBinding<TK;TV;>;"
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
