.class Lcom/sun/javafx/css/StyleManager$CacheContainer;
.super Ljava/lang/Object;
.source "StyleManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/css/StyleManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CacheContainer"
.end annotation


# instance fields
.field private baseStyleMapId:I

.field private cacheMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Lcom/sun/javafx/css/StyleManager$Key;",
            "Lcom/sun/javafx/css/StyleManager$Cache;",
            ">;>;"
        }
    .end annotation
.end field

.field private inlineStylesCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/sun/javafx/css/Selector;",
            ">;"
        }
    .end annotation
.end field

.field private styleCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/sun/javafx/css/StyleCache$Key;",
            "Lcom/sun/javafx/css/StyleCache;",
            ">;"
        }
    .end annotation
.end field

.field private styleMapId:I

.field private styleMapList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sun/javafx/css/StyleMap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 3

    .prologue
    .line 1889
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/StyleManager$CacheContainer;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 2051
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Lcom/sun/javafx/css/StyleManager$CacheContainer;->styleMapId:I

    .line 2057
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Lcom/sun/javafx/css/StyleManager$CacheContainer;->baseStyleMapId:I

    return-void
.end method

.method static synthetic access$100(Lcom/sun/javafx/css/StyleManager$CacheContainer;)Ljava/util/Map;
    .locals 2

    .prologue
    .line 1889
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/css/StyleManager$CacheContainer;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/css/StyleManager$CacheContainer;->getStyleCache()Ljava/util/Map;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "x0":Lcom/sun/javafx/css/StyleManager$CacheContainer;
    return-object v0
.end method

.method static synthetic access$1000(Lcom/sun/javafx/css/StyleManager$CacheContainer;)I
    .locals 2

    .prologue
    .line 1889
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/css/StyleManager$CacheContainer;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/css/StyleManager$CacheContainer;->nextSmapId()I

    move-result v1

    move v0, v1

    .end local v0    # "x0":Lcom/sun/javafx/css/StyleManager$CacheContainer;
    return v0
.end method

.method static synthetic access$1100(Lcom/sun/javafx/css/StyleManager$CacheContainer;Lcom/sun/javafx/css/StyleMap;)V
    .locals 4

    .prologue
    .line 1889
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/css/StyleManager$CacheContainer;
    move-object v1, p1

    .local v1, "x1":Lcom/sun/javafx/css/StyleMap;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/css/StyleManager$CacheContainer;->addStyleMap(Lcom/sun/javafx/css/StyleMap;)V

    return-void
.end method

.method static synthetic access$200(Lcom/sun/javafx/css/StyleManager$CacheContainer;)V
    .locals 2

    .prologue
    .line 1889
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/css/StyleManager$CacheContainer;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/css/StyleManager$CacheContainer;->clearCache()V

    return-void
.end method

.method static synthetic access$300(Lcom/sun/javafx/css/StyleManager$CacheContainer;)Ljava/util/Map;
    .locals 2

    .prologue
    .line 1889
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/css/StyleManager$CacheContainer;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/css/StyleManager$CacheContainer;->cacheMap:Ljava/util/Map;

    move-object v0, v1

    .end local v0    # "x0":Lcom/sun/javafx/css/StyleManager$CacheContainer;
    return-object v0
.end method

.method static synthetic access$500(Lcom/sun/javafx/css/StyleManager$CacheContainer;Ljava/util/List;Ljava/lang/String;)Ljava/util/Map;
    .locals 6

    .prologue
    .line 1889
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/css/StyleManager$CacheContainer;
    move-object v1, p1

    .local v1, "x1":Ljava/util/List;
    move-object v2, p2

    .local v2, "x2":Ljava/lang/String;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Lcom/sun/javafx/css/StyleManager$CacheContainer;->getCacheMap(Ljava/util/List;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "x0":Lcom/sun/javafx/css/StyleManager$CacheContainer;
    return-object v0
.end method

.method static synthetic access$900(Lcom/sun/javafx/css/StyleManager$CacheContainer;Ljava/lang/String;)Lcom/sun/javafx/css/Selector;
    .locals 4

    .prologue
    .line 1889
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/css/StyleManager$CacheContainer;
    move-object v1, p1

    .local v1, "x1":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/css/StyleManager$CacheContainer;->getInlineStyleSelector(Ljava/lang/String;)Lcom/sun/javafx/css/Selector;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "x0":Lcom/sun/javafx/css/StyleManager$CacheContainer;
    return-object v0
.end method

.method private addStyleMap(Lcom/sun/javafx/css/StyleMap;)V
    .locals 4

    .prologue
    .line 1955
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/StyleManager$CacheContainer;
    move-object v1, p1

    .local v1, "smap":Lcom/sun/javafx/css/StyleMap;
    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/css/StyleManager$CacheContainer;->getStyleMapList()Ljava/util/List;

    move-result-object v2

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 1956
    return-void
.end method

.method private clearCache()V
    .locals 7

    .prologue
    .line 1971
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/StyleManager$CacheContainer;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/css/StyleManager$CacheContainer;->cacheMap:Ljava/util/Map;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/css/StyleManager$CacheContainer;->cacheMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 1972
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/css/StyleManager$CacheContainer;->styleCache:Ljava/util/Map;

    if-eqz v1, :cond_1

    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/css/StyleManager$CacheContainer;->styleCache:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 1973
    :cond_1
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/css/StyleManager$CacheContainer;->styleMapList:Ljava/util/List;

    if-eqz v1, :cond_2

    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/css/StyleManager$CacheContainer;->styleMapList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 1975
    :cond_2
    move-object v1, v0

    move-object v2, v0

    iget v2, v2, Lcom/sun/javafx/css/StyleManager$CacheContainer;->styleMapId:I

    iput v2, v1, Lcom/sun/javafx/css/StyleManager$CacheContainer;->baseStyleMapId:I

    .line 1977
    move-object v1, v0

    iget v1, v1, Lcom/sun/javafx/css/StyleManager$CacheContainer;->baseStyleMapId:I

    const v2, 0x6ffffff9

    if-le v1, v2, :cond_3

    .line 1978
    move-object v1, v0

    move-object v2, v0

    const/4 v3, 0x0

    move-object v5, v2

    move v6, v3

    move v2, v6

    move-object v3, v5

    move v4, v6

    iput v4, v3, Lcom/sun/javafx/css/StyleManager$CacheContainer;->styleMapId:I

    iput v2, v1, Lcom/sun/javafx/css/StyleManager$CacheContainer;->baseStyleMapId:I

    .line 1980
    :cond_3
    return-void
.end method

.method private getCacheMap(Ljava/util/List;Ljava/lang/String;)Ljava/util/Map;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sun/javafx/css/StyleManager$StylesheetContainer;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Lcom/sun/javafx/css/StyleManager$Key;",
            "Lcom/sun/javafx/css/StyleManager$Cache;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1898
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/StyleManager$CacheContainer;
    move-object v1, p1

    .local v1, "parentStylesheets":Ljava/util/List;, "Ljava/util/List<Lcom/sun/javafx/css/StyleManager$StylesheetContainer;>;"
    move-object v2, p2

    .local v2, "regionUserAgentStylesheet":Ljava/lang/String;
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/css/StyleManager$CacheContainer;->cacheMap:Ljava/util/Map;

    if-nez v8, :cond_0

    .line 1899
    move-object v8, v0

    new-instance v9, Ljava/util/HashMap;

    move-object v11, v9

    move-object v9, v11

    move-object v10, v11

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    iput-object v9, v8, Lcom/sun/javafx/css/StyleManager$CacheContainer;->cacheMap:Ljava/util/Map;

    .line 1902
    :cond_0
    # getter for: Lcom/sun/javafx/css/StyleManager;->styleLock:Ljava/lang/Object;
    invoke-static {}, Lcom/sun/javafx/css/StyleManager;->access$700()Ljava/lang/Object;

    move-result-object v8

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    move-object v3, v9

    monitor-enter v8

    .line 1903
    move-object v8, v1

    if-eqz v8, :cond_1

    move-object v8, v1

    :try_start_0
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_4

    :cond_1
    move-object v8, v2

    if-eqz v8, :cond_2

    move-object v8, v2

    .line 1904
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1906
    :cond_2
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/css/StyleManager$CacheContainer;->cacheMap:Ljava/util/Map;

    const/4 v9, 0x0

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map;

    move-object v4, v8

    .line 1907
    .local v4, "cmap":Ljava/util/Map;, "Ljava/util/Map<Lcom/sun/javafx/css/StyleManager$Key;Lcom/sun/javafx/css/StyleManager$Cache;>;"
    move-object v8, v4

    if-nez v8, :cond_3

    .line 1908
    new-instance v8, Ljava/util/HashMap;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    move-object v4, v8

    .line 1909
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/css/StyleManager$CacheContainer;->cacheMap:Ljava/util/Map;

    const/4 v9, 0x0

    move-object v10, v4

    invoke-interface {v8, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 1911
    :cond_3
    move-object v8, v4

    move-object v9, v3

    monitor-exit v9

    move-object v0, v8

    .line 1937
    .end local v0    # "this":Lcom/sun/javafx/css/StyleManager$CacheContainer;
    .end local v4    # "cmap":Ljava/util/Map;, "Ljava/util/Map<Lcom/sun/javafx/css/StyleManager$Key;Lcom/sun/javafx/css/StyleManager$Cache;>;"
    :goto_0
    return-object v0

    .line 1915
    .restart local v0    # "this":Lcom/sun/javafx/css/StyleManager$CacheContainer;
    :cond_4
    move-object v8, v1

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    move v4, v8

    .line 1916
    .local v4, "nMax":I
    # getter for: Lcom/sun/javafx/css/StyleManager;->cacheMapKey:Ljava/util/List;
    invoke-static {}, Lcom/sun/javafx/css/StyleManager;->access$800()Ljava/util/List;

    move-result-object v8

    if-nez v8, :cond_5

    .line 1917
    new-instance v8, Ljava/util/ArrayList;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    move v10, v4

    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {v8}, Lcom/sun/javafx/css/StyleManager;->access$802(Ljava/util/List;)Ljava/util/List;

    move-result-object v8

    .line 1919
    :cond_5
    const/4 v8, 0x0

    move v5, v8

    .local v5, "n":I
    :goto_1
    move v8, v5

    move v9, v4

    if-ge v8, v9, :cond_8

    .line 1920
    move-object v8, v1

    move v9, v5

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sun/javafx/css/StyleManager$StylesheetContainer;

    move-object v6, v8

    .line 1921
    .local v6, "sc":Lcom/sun/javafx/css/StyleManager$StylesheetContainer;
    move-object v8, v6

    if-eqz v8, :cond_6

    move-object v8, v6

    iget-object v8, v8, Lcom/sun/javafx/css/StyleManager$StylesheetContainer;->fname:Ljava/lang/String;

    if-eqz v8, :cond_6

    move-object v8, v6

    iget-object v8, v8, Lcom/sun/javafx/css/StyleManager$StylesheetContainer;->fname:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 1919
    :cond_6
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1922
    :cond_7
    # getter for: Lcom/sun/javafx/css/StyleManager;->cacheMapKey:Ljava/util/List;
    invoke-static {}, Lcom/sun/javafx/css/StyleManager;->access$800()Ljava/util/List;

    move-result-object v8

    move-object v9, v6

    iget-object v9, v9, Lcom/sun/javafx/css/StyleManager$StylesheetContainer;->fname:Ljava/lang/String;

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v8

    goto :goto_2

    .line 1924
    .end local v6    # "sc":Lcom/sun/javafx/css/StyleManager$StylesheetContainer;
    :cond_8
    move-object v8, v2

    if-eqz v8, :cond_9

    .line 1925
    # getter for: Lcom/sun/javafx/css/StyleManager;->cacheMapKey:Ljava/util/List;
    invoke-static {}, Lcom/sun/javafx/css/StyleManager;->access$800()Ljava/util/List;

    move-result-object v8

    move-object v9, v2

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v8

    .line 1927
    :cond_9
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/css/StyleManager$CacheContainer;->cacheMap:Ljava/util/Map;

    # getter for: Lcom/sun/javafx/css/StyleManager;->cacheMapKey:Ljava/util/List;
    invoke-static {}, Lcom/sun/javafx/css/StyleManager;->access$800()Ljava/util/List;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map;

    move-object v5, v8

    .line 1928
    .local v5, "cmap":Ljava/util/Map;, "Ljava/util/Map<Lcom/sun/javafx/css/StyleManager$Key;Lcom/sun/javafx/css/StyleManager$Cache;>;"
    move-object v8, v5

    if-nez v8, :cond_a

    .line 1929
    new-instance v8, Ljava/util/HashMap;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    move-object v5, v8

    .line 1930
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/css/StyleManager$CacheContainer;->cacheMap:Ljava/util/Map;

    # getter for: Lcom/sun/javafx/css/StyleManager;->cacheMapKey:Ljava/util/List;
    invoke-static {}, Lcom/sun/javafx/css/StyleManager;->access$800()Ljava/util/List;

    move-result-object v9

    move-object v10, v5

    invoke-interface {v8, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 1932
    const/4 v8, 0x0

    invoke-static {v8}, Lcom/sun/javafx/css/StyleManager;->access$802(Ljava/util/List;)Ljava/util/List;

    move-result-object v8

    .line 1937
    :goto_3
    move-object v8, v5

    move-object v9, v3

    monitor-exit v9

    move-object v0, v8

    goto/16 :goto_0

    .line 1935
    :cond_a
    # getter for: Lcom/sun/javafx/css/StyleManager;->cacheMapKey:Ljava/util/List;
    invoke-static {}, Lcom/sun/javafx/css/StyleManager;->access$800()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->clear()V

    goto :goto_3

    .line 1940
    .end local v4    # "nMax":I
    .end local v5    # "cmap":Ljava/util/Map;, "Ljava/util/Map<Lcom/sun/javafx/css/StyleManager$Key;Lcom/sun/javafx/css/StyleManager$Cache;>;"
    :catchall_0
    move-exception v8

    move-object v7, v8

    move-object v8, v3

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v8, v7

    throw v8
.end method

.method private getInlineStyleSelector(Ljava/lang/String;)Lcom/sun/javafx/css/Selector;
    .locals 11

    .prologue
    .line 1988
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/StyleManager$CacheContainer;
    move-object v1, p1

    .local v1, "inlineStyle":Ljava/lang/String;
    move-object v7, v1

    if-eqz v7, :cond_0

    move-object v7, v1

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_1

    :cond_0
    const/4 v7, 0x0

    move-object v0, v7

    .line 2030
    .end local v0    # "this":Lcom/sun/javafx/css/StyleManager$CacheContainer;
    :goto_0
    return-object v0

    .line 1990
    .restart local v0    # "this":Lcom/sun/javafx/css/StyleManager$CacheContainer;
    :cond_1
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/css/StyleManager$CacheContainer;->inlineStylesCache:Ljava/util/Map;

    if-eqz v7, :cond_2

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/css/StyleManager$CacheContainer;->inlineStylesCache:Ljava/util/Map;

    move-object v8, v1

    invoke-interface {v7, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1992
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/css/StyleManager$CacheContainer;->inlineStylesCache:Ljava/util/Map;

    move-object v8, v1

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sun/javafx/css/Selector;

    move-object v0, v7

    goto :goto_0

    .line 1999
    :cond_2
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/css/StyleManager$CacheContainer;->inlineStylesCache:Ljava/util/Map;

    if-nez v7, :cond_3

    .line 2000
    move-object v7, v0

    new-instance v8, Ljava/util/HashMap;

    move-object v10, v8

    move-object v8, v10

    move-object v9, v10

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    iput-object v8, v7, Lcom/sun/javafx/css/StyleManager$CacheContainer;->inlineStylesCache:Ljava/util/Map;

    .line 2003
    :cond_3
    new-instance v7, Lcom/sun/javafx/css/parser/CSSParser;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    invoke-direct {v8}, Lcom/sun/javafx/css/parser/CSSParser;-><init>()V

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v10, v8

    move-object v8, v10

    move-object v9, v10

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "*{"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "}"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 2004
    invoke-virtual {v7, v8}, Lcom/sun/javafx/css/parser/CSSParser;->parse(Ljava/lang/String;)Lcom/sun/javafx/css/Stylesheet;

    move-result-object v7

    move-object v2, v7

    .line 2006
    .local v2, "inlineStylesheet":Lcom/sun/javafx/css/Stylesheet;
    move-object v7, v2

    if-eqz v7, :cond_7

    .line 2008
    move-object v7, v2

    sget-object v8, Ljavafx/css/StyleOrigin;->INLINE:Ljavafx/css/StyleOrigin;

    invoke-virtual {v7, v8}, Lcom/sun/javafx/css/Stylesheet;->setOrigin(Ljavafx/css/StyleOrigin;)V

    .line 2010
    move-object v7, v2

    invoke-virtual {v7}, Lcom/sun/javafx/css/Stylesheet;->getRules()Ljava/util/List;

    move-result-object v7

    move-object v3, v7

    .line 2011
    .local v3, "rules":Ljava/util/List;, "Ljava/util/List<Lcom/sun/javafx/css/Rule;>;"
    move-object v7, v3

    if-eqz v7, :cond_4

    move-object v7, v3

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_4

    move-object v7, v3

    const/4 v8, 0x0

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sun/javafx/css/Rule;

    :goto_1
    move-object v4, v7

    .line 2013
    .local v4, "rule":Lcom/sun/javafx/css/Rule;
    move-object v7, v4

    if-eqz v7, :cond_5

    move-object v7, v4

    invoke-virtual {v7}, Lcom/sun/javafx/css/Rule;->getUnobservedSelectorList()Ljava/util/List;

    move-result-object v7

    :goto_2
    move-object v5, v7

    .line 2014
    .local v5, "selectors":Ljava/util/List;, "Ljava/util/List<Lcom/sun/javafx/css/Selector;>;"
    move-object v7, v5

    if-eqz v7, :cond_6

    move-object v7, v5

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_6

    move-object v7, v5

    const/4 v8, 0x0

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sun/javafx/css/Selector;

    :goto_3
    move-object v6, v7

    .line 2017
    .local v6, "selector":Lcom/sun/javafx/css/Selector;
    move-object v7, v6

    if-eqz v7, :cond_7

    .line 2018
    move-object v7, v6

    const/4 v8, -0x1

    invoke-virtual {v7, v8}, Lcom/sun/javafx/css/Selector;->setOrdinal(I)V

    .line 2020
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/css/StyleManager$CacheContainer;->inlineStylesCache:Ljava/util/Map;

    move-object v8, v1

    move-object v9, v6

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 2021
    move-object v7, v6

    move-object v0, v7

    goto/16 :goto_0

    .line 2011
    .end local v4    # "rule":Lcom/sun/javafx/css/Rule;
    .end local v5    # "selectors":Ljava/util/List;, "Ljava/util/List<Lcom/sun/javafx/css/Selector;>;"
    .end local v6    # "selector":Lcom/sun/javafx/css/Selector;
    :cond_4
    const/4 v7, 0x0

    goto :goto_1

    .line 2013
    .restart local v4    # "rule":Lcom/sun/javafx/css/Rule;
    :cond_5
    const/4 v7, 0x0

    goto :goto_2

    .line 2014
    .restart local v5    # "selectors":Ljava/util/List;, "Ljava/util/List<Lcom/sun/javafx/css/Selector;>;"
    :cond_6
    const/4 v7, 0x0

    goto :goto_3

    .line 2029
    .end local v3    # "rules":Ljava/util/List;, "Ljava/util/List<Lcom/sun/javafx/css/Rule;>;"
    .end local v4    # "rule":Lcom/sun/javafx/css/Rule;
    .end local v5    # "selectors":Ljava/util/List;, "Ljava/util/List<Lcom/sun/javafx/css/Selector;>;"
    :cond_7
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/css/StyleManager$CacheContainer;->inlineStylesCache:Ljava/util/Map;

    move-object v8, v1

    const/4 v9, 0x0

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 2030
    const/4 v7, 0x0

    move-object v0, v7

    goto/16 :goto_0
.end method

.method private getStyleCache()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lcom/sun/javafx/css/StyleCache$Key;",
            "Lcom/sun/javafx/css/StyleCache;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1892
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/StyleManager$CacheContainer;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/css/StyleManager$CacheContainer;->styleCache:Ljava/util/Map;

    if-nez v1, :cond_0

    move-object v1, v0

    new-instance v2, Ljava/util/HashMap;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v2, v1, Lcom/sun/javafx/css/StyleManager$CacheContainer;->styleCache:Ljava/util/Map;

    .line 1893
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/css/StyleManager$CacheContainer;->styleCache:Ljava/util/Map;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/css/StyleManager$CacheContainer;
    return-object v0
.end method

.method private getStyleMapList()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sun/javafx/css/StyleMap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1945
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/StyleManager$CacheContainer;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/css/StyleManager$CacheContainer;->styleMapList:Ljava/util/List;

    if-nez v1, :cond_0

    move-object v1, v0

    new-instance v2, Ljava/util/ArrayList;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Lcom/sun/javafx/css/StyleManager$CacheContainer;->styleMapList:Ljava/util/List;

    .line 1946
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/css/StyleManager$CacheContainer;->styleMapList:Ljava/util/List;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/css/StyleManager$CacheContainer;
    return-object v0
.end method

.method private nextSmapId()I
    .locals 4

    .prologue
    .line 1950
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/StyleManager$CacheContainer;
    move-object v1, v0

    move-object v2, v0

    iget v2, v2, Lcom/sun/javafx/css/StyleManager$CacheContainer;->baseStyleMapId:I

    move-object v3, v0

    invoke-direct {v3}, Lcom/sun/javafx/css/StyleManager$CacheContainer;->getStyleMapList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Lcom/sun/javafx/css/StyleManager$CacheContainer;->styleMapId:I

    .line 1951
    move-object v1, v0

    iget v1, v1, Lcom/sun/javafx/css/StyleManager$CacheContainer;->styleMapId:I

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/css/StyleManager$CacheContainer;
    return v0
.end method


# virtual methods
.method public getStyleMap(I)Lcom/sun/javafx/css/StyleMap;
    .locals 5

    .prologue
    .line 1960
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/StyleManager$CacheContainer;
    move v1, p1

    .local v1, "smapId":I
    move v3, v1

    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/css/StyleManager$CacheContainer;->baseStyleMapId:I

    sub-int/2addr v3, v4

    move v2, v3

    .line 1962
    .local v2, "correctedId":I
    const/4 v3, 0x0

    move v4, v2

    if-gt v3, v4, :cond_0

    move v3, v2

    move-object v4, v0

    invoke-direct {v4}, Lcom/sun/javafx/css/StyleManager$CacheContainer;->getStyleMapList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 1963
    move-object v3, v0

    invoke-direct {v3}, Lcom/sun/javafx/css/StyleManager$CacheContainer;->getStyleMapList()Ljava/util/List;

    move-result-object v3

    move v4, v2

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sun/javafx/css/StyleMap;

    move-object v0, v3

    .line 1966
    .end local v0    # "this":Lcom/sun/javafx/css/StyleManager$CacheContainer;
    :goto_0
    return-object v0

    .restart local v0    # "this":Lcom/sun/javafx/css/StyleManager$CacheContainer;
    :cond_0
    sget-object v3, Lcom/sun/javafx/css/StyleMap;->EMPTY_MAP:Lcom/sun/javafx/css/StyleMap;

    move-object v0, v3

    goto :goto_0
.end method
