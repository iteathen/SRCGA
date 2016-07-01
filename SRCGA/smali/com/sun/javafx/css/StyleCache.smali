.class public final Lcom/sun/javafx/css/StyleCache;
.super Ljava/lang/Object;
.source "StyleCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/javafx/css/StyleCache$Key;
    }
.end annotation


# instance fields
.field private entries:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/sun/javafx/css/StyleCacheEntry$Key;",
            "Lcom/sun/javafx/css/StyleCacheEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 82
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/StyleCache;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 84
    return-void
.end method


# virtual methods
.method public addStyleCacheEntry(Lcom/sun/javafx/css/StyleCacheEntry$Key;Lcom/sun/javafx/css/StyleCacheEntry;)V
    .locals 8

    .prologue
    .line 102
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/StyleCache;
    move-object v1, p1

    .local v1, "key":Lcom/sun/javafx/css/StyleCacheEntry$Key;
    move-object v2, p2

    .local v2, "entry":Lcom/sun/javafx/css/StyleCacheEntry;
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/css/StyleCache;->entries:Ljava/util/Map;

    if-nez v3, :cond_0

    .line 103
    move-object v3, v0

    new-instance v4, Ljava/util/HashMap;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    const/4 v6, 0x5

    invoke-direct {v5, v6}, Ljava/util/HashMap;-><init>(I)V

    iput-object v4, v3, Lcom/sun/javafx/css/StyleCache;->entries:Ljava/util/Map;

    .line 105
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/css/StyleCache;->entries:Ljava/util/Map;

    move-object v4, v1

    move-object v5, v2

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 106
    return-void
.end method

.method public clear()V
    .locals 2

    .prologue
    .line 87
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/StyleCache;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/css/StyleCache;->entries:Ljava/util/Map;

    if-nez v1, :cond_0

    .line 90
    :goto_0
    return-void

    .line 88
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->dumpStack()V

    .line 89
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/css/StyleCache;->entries:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 90
    goto :goto_0
.end method

.method public getStyleCacheEntry(Lcom/sun/javafx/css/StyleCacheEntry$Key;)Lcom/sun/javafx/css/StyleCacheEntry;
    .locals 5

    .prologue
    .line 94
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/StyleCache;
    move-object v1, p1

    .local v1, "key":Lcom/sun/javafx/css/StyleCacheEntry$Key;
    const/4 v3, 0x0

    move-object v2, v3

    .line 95
    .local v2, "entry":Lcom/sun/javafx/css/StyleCacheEntry;
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/css/StyleCache;->entries:Ljava/util/Map;

    if-eqz v3, :cond_0

    .line 96
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/css/StyleCache;->entries:Ljava/util/Map;

    move-object v4, v1

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sun/javafx/css/StyleCacheEntry;

    move-object v2, v3

    .line 98
    :cond_0
    move-object v3, v2

    move-object v0, v3

    .end local v0    # "this":Lcom/sun/javafx/css/StyleCache;
    return-object v0
.end method
