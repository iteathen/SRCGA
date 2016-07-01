.class public final Lcom/sun/javafx/css/StyleCacheEntry;
.super Ljava/lang/Object;
.source "StyleCacheEntry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/javafx/css/StyleCacheEntry$Key;
    }
.end annotation


# instance fields
.field private calculatedValues:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/sun/javafx/css/CalculatedValue;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 40
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/StyleCacheEntry;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 41
    return-void
.end method


# virtual methods
.method public get(Ljava/lang/String;)Lcom/sun/javafx/css/CalculatedValue;
    .locals 5

    .prologue
    .line 45
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/StyleCacheEntry;
    move-object v1, p1

    .local v1, "property":Ljava/lang/String;
    const/4 v3, 0x0

    move-object v2, v3

    .line 46
    .local v2, "cv":Lcom/sun/javafx/css/CalculatedValue;
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/css/StyleCacheEntry;->calculatedValues:Ljava/util/Map;

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/css/StyleCacheEntry;->calculatedValues:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 47
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/css/StyleCacheEntry;->calculatedValues:Ljava/util/Map;

    move-object v4, v1

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sun/javafx/css/CalculatedValue;

    move-object v2, v3

    .line 49
    :cond_0
    move-object v3, v2

    move-object v0, v3

    .end local v0    # "this":Lcom/sun/javafx/css/StyleCacheEntry;
    return-object v0
.end method

.method public put(Ljava/lang/String;Lcom/sun/javafx/css/CalculatedValue;)V
    .locals 8

    .prologue
    .line 54
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/StyleCacheEntry;
    move-object v1, p1

    .local v1, "property":Ljava/lang/String;
    move-object v2, p2

    .local v2, "calculatedValue":Lcom/sun/javafx/css/CalculatedValue;
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/css/StyleCacheEntry;->calculatedValues:Ljava/util/Map;

    if-nez v3, :cond_0

    .line 55
    move-object v3, v0

    new-instance v4, Ljava/util/HashMap;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    const/4 v6, 0x5

    invoke-direct {v5, v6}, Ljava/util/HashMap;-><init>(I)V

    iput-object v4, v3, Lcom/sun/javafx/css/StyleCacheEntry;->calculatedValues:Ljava/util/Map;

    .line 58
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/css/StyleCacheEntry;->calculatedValues:Ljava/util/Map;

    move-object v4, v1

    move-object v5, v2

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 59
    return-void
.end method
