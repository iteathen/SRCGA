.class public final Lcom/sun/javafx/css/StyleManager;
.super Ljava/lang/Object;
.source "StyleManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/javafx/css/StyleManager$Key;,
        Lcom/sun/javafx/css/StyleManager$Cache;,
        Lcom/sun/javafx/css/StyleManager$CacheContainer;,
        Lcom/sun/javafx/css/StyleManager$RefList;,
        Lcom/sun/javafx/css/StyleManager$StylesheetContainer;,
        Lcom/sun/javafx/css/StyleManager$InstanceHolder;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static LOGGER:Lsun/util/logging/PlatformLogger;

.field static final cacheContainerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljavafx/scene/Parent;",
            "Lcom/sun/javafx/css/StyleManager$CacheContainer;",
            ">;"
        }
    .end annotation
.end field

.field private static cacheMapKey:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static errors:Ljavafx/collections/ObservableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/collections/ObservableList",
            "<",
            "Lcom/sun/javafx/css/CssError;",
            ">;"
        }
    .end annotation
.end field

.field private static final styleLock:Ljava/lang/Object;


# instance fields
.field hasDefaultUserAgentStylesheet:Z

.field private final imageCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljavafx/scene/image/Image;",
            ">;"
        }
    .end annotation
.end field

.field private key:Lcom/sun/javafx/css/StyleManager$Key;

.field final platformUserAgentStylesheetContainers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sun/javafx/css/StyleManager$StylesheetContainer;",
            ">;"
        }
    .end annotation
.end field

.field final stylesheetContainerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/sun/javafx/css/StyleManager$StylesheetContainer;",
            ">;"
        }
    .end annotation
.end field

.field final userAgentStylesheetContainers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sun/javafx/css/StyleManager$StylesheetContainer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 121
    const-class v0, Lcom/sun/javafx/css/StyleManager;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/sun/javafx/css/StyleManager;->$assertionsDisabled:Z

    .line 131
    new-instance v0, Ljava/lang/Object;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/sun/javafx/css/StyleManager;->styleLock:Ljava/lang/Object;

    .line 160
    new-instance v0, Ljava/util/WeakHashMap;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/sun/javafx/css/StyleManager;->cacheContainerMap:Ljava/util/Map;

    .line 1848
    const/4 v0, 0x0

    sput-object v0, Lcom/sun/javafx/css/StyleManager;->errors:Ljavafx/collections/ObservableList;

    return-void

    .line 121
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 5

    .prologue
    .line 151
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/StyleManager;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 235
    move-object v1, v0

    new-instance v2, Ljava/util/ArrayList;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Lcom/sun/javafx/css/StyleManager;->userAgentStylesheetContainers:Ljava/util/List;

    .line 242
    move-object v1, v0

    new-instance v2, Ljava/util/ArrayList;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Lcom/sun/javafx/css/StyleManager;->platformUserAgentStylesheetContainers:Ljava/util/List;

    .line 244
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/sun/javafx/css/StyleManager;->hasDefaultUserAgentStylesheet:Z

    .line 423
    move-object v1, v0

    new-instance v2, Ljava/util/HashMap;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v2, v1, Lcom/sun/javafx/css/StyleManager;->stylesheetContainerMap:Ljava/util/Map;

    .line 749
    move-object v1, v0

    new-instance v2, Ljava/util/HashMap;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v2, v1, Lcom/sun/javafx/css/StyleManager;->imageCache:Ljava/util/Map;

    .line 1610
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/sun/javafx/css/StyleManager;->key:Lcom/sun/javafx/css/StyleManager$Key;

    .line 152
    return-void
.end method

.method synthetic constructor <init>(Lcom/sun/javafx/css/StyleManager$1;)V
    .locals 3

    .prologue
    .line 121
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/StyleManager;
    move-object v1, p1

    .local v1, "x0":Lcom/sun/javafx/css/StyleManager$1;
    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/css/StyleManager;-><init>()V

    return-void
.end method

.method private _addUserAgentStylesheet(Ljava/lang/String;)Z
    .locals 13

    .prologue
    .line 1254
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/StyleManager;
    move-object v1, p1

    .local v1, "fname":Ljava/lang/String;
    sget-object v7, Lcom/sun/javafx/css/StyleManager;->styleLock:Ljava/lang/Object;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    move-object v2, v8

    monitor-enter v7

    .line 1256
    const/4 v7, 0x0

    move v3, v7

    .local v3, "n":I
    move-object v7, v0

    :try_start_0
    iget-object v7, v7, Lcom/sun/javafx/css/StyleManager;->platformUserAgentStylesheetContainers:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    move v4, v7

    .local v4, "nMax":I
    :goto_0
    move v7, v3

    move v8, v4

    if-ge v7, v8, :cond_1

    .line 1257
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/css/StyleManager;->platformUserAgentStylesheetContainers:Ljava/util/List;

    move v8, v3

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sun/javafx/css/StyleManager$StylesheetContainer;

    move-object v5, v7

    .line 1258
    .local v5, "container":Lcom/sun/javafx/css/StyleManager$StylesheetContainer;
    move-object v7, v1

    move-object v8, v5

    iget-object v8, v8, Lcom/sun/javafx/css/StyleManager$StylesheetContainer;->fname:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1259
    const/4 v7, 0x0

    move-object v8, v2

    monitor-exit v8

    move v0, v7

    .line 1269
    .end local v0    # "this":Lcom/sun/javafx/css/StyleManager;
    .end local v3    # "n":I
    .end local v5    # "container":Lcom/sun/javafx/css/StyleManager$StylesheetContainer;
    :goto_1
    return v0

    .line 1256
    .restart local v0    # "this":Lcom/sun/javafx/css/StyleManager;
    .restart local v3    # "n":I
    .restart local v5    # "container":Lcom/sun/javafx/css/StyleManager$StylesheetContainer;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1263
    .end local v5    # "container":Lcom/sun/javafx/css/StyleManager$StylesheetContainer;
    :cond_1
    move-object v7, v1

    invoke-static {v7}, Lcom/sun/javafx/css/StyleManager;->loadStylesheet(Ljava/lang/String;)Lcom/sun/javafx/css/Stylesheet;

    move-result-object v7

    move-object v3, v7

    .line 1265
    .local v3, "ua_stylesheet":Lcom/sun/javafx/css/Stylesheet;
    move-object v7, v3

    if-nez v7, :cond_2

    const/4 v7, 0x0

    move-object v8, v2

    monitor-exit v8

    move v0, v7

    goto :goto_1

    .line 1267
    :cond_2
    move-object v7, v3

    sget-object v8, Ljavafx/css/StyleOrigin;->USER_AGENT:Ljavafx/css/StyleOrigin;

    invoke-virtual {v7, v8}, Lcom/sun/javafx/css/Stylesheet;->setOrigin(Ljavafx/css/StyleOrigin;)V

    .line 1268
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/css/StyleManager;->platformUserAgentStylesheetContainers:Ljava/util/List;

    new-instance v8, Lcom/sun/javafx/css/StyleManager$StylesheetContainer;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    move-object v10, v1

    move-object v11, v3

    invoke-direct {v9, v10, v11}, Lcom/sun/javafx/css/StyleManager$StylesheetContainer;-><init>(Ljava/lang/String;Lcom/sun/javafx/css/Stylesheet;)V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v7

    .line 1269
    const/4 v7, 0x1

    move-object v8, v2

    monitor-exit v8

    move v0, v7

    goto :goto_1

    .line 1270
    .end local v3    # "ua_stylesheet":Lcom/sun/javafx/css/Stylesheet;
    .end local v4    # "nMax":I
    :catchall_0
    move-exception v7

    move-object v6, v7

    move-object v7, v2

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v7, v6

    throw v7
.end method

.method private _setDefaultUserAgentStylesheet(Ljava/lang/String;)Z
    .locals 12

    .prologue
    .line 1352
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/StyleManager;
    move-object v1, p1

    .local v1, "fname":Ljava/lang/String;
    sget-object v7, Lcom/sun/javafx/css/StyleManager;->styleLock:Ljava/lang/Object;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    move-object v2, v8

    monitor-enter v7

    .line 1354
    const/4 v7, 0x0

    move v3, v7

    .local v3, "n":I
    move-object v7, v0

    :try_start_0
    iget-object v7, v7, Lcom/sun/javafx/css/StyleManager;->platformUserAgentStylesheetContainers:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    move v4, v7

    .local v4, "nMax":I
    :goto_0
    move v7, v3

    move v8, v4

    if-ge v7, v8, :cond_4

    .line 1355
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/css/StyleManager;->platformUserAgentStylesheetContainers:Ljava/util/List;

    move v8, v3

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sun/javafx/css/StyleManager$StylesheetContainer;

    move-object v5, v7

    .line 1356
    .local v5, "container":Lcom/sun/javafx/css/StyleManager$StylesheetContainer;
    move-object v7, v1

    move-object v8, v5

    iget-object v8, v8, Lcom/sun/javafx/css/StyleManager$StylesheetContainer;->fname:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1357
    move v7, v3

    if-lez v7, :cond_0

    .line 1358
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/css/StyleManager;->platformUserAgentStylesheetContainers:Ljava/util/List;

    move v8, v3

    invoke-interface {v7, v8}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v7

    .line 1359
    move-object v7, v0

    iget-boolean v7, v7, Lcom/sun/javafx/css/StyleManager;->hasDefaultUserAgentStylesheet:Z

    if-eqz v7, :cond_1

    .line 1360
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/css/StyleManager;->platformUserAgentStylesheetContainers:Ljava/util/List;

    const/4 v8, 0x0

    move-object v9, v5

    invoke-interface {v7, v8, v9}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 1366
    :cond_0
    :goto_1
    move v7, v3

    if-lez v7, :cond_2

    const/4 v7, 0x1

    :goto_2
    move-object v8, v2

    monitor-exit v8

    move v0, v7

    .line 1388
    .end local v0    # "this":Lcom/sun/javafx/css/StyleManager;
    .end local v3    # "n":I
    .end local v4    # "nMax":I
    .end local v5    # "container":Lcom/sun/javafx/css/StyleManager$StylesheetContainer;
    :goto_3
    return v0

    .line 1362
    .restart local v0    # "this":Lcom/sun/javafx/css/StyleManager;
    .restart local v3    # "n":I
    .restart local v4    # "nMax":I
    .restart local v5    # "container":Lcom/sun/javafx/css/StyleManager$StylesheetContainer;
    :cond_1
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/css/StyleManager;->platformUserAgentStylesheetContainers:Ljava/util/List;

    const/4 v8, 0x0

    move-object v9, v5

    invoke-interface {v7, v8, v9}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_1

    .line 1389
    .end local v3    # "n":I
    .end local v4    # "nMax":I
    .end local v5    # "container":Lcom/sun/javafx/css/StyleManager$StylesheetContainer;
    :catchall_0
    move-exception v7

    move-object v6, v7

    move-object v7, v2

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v7, v6

    throw v7

    .line 1366
    .restart local v3    # "n":I
    .restart local v4    # "nMax":I
    .restart local v5    # "container":Lcom/sun/javafx/css/StyleManager$StylesheetContainer;
    :cond_2
    const/4 v7, 0x0

    goto :goto_2

    .line 1354
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1370
    .end local v5    # "container":Lcom/sun/javafx/css/StyleManager$StylesheetContainer;
    :cond_4
    move-object v7, v1

    :try_start_1
    invoke-static {v7}, Lcom/sun/javafx/css/StyleManager;->loadStylesheet(Ljava/lang/String;)Lcom/sun/javafx/css/Stylesheet;

    move-result-object v7

    move-object v3, v7

    .line 1372
    .local v3, "ua_stylesheet":Lcom/sun/javafx/css/Stylesheet;
    move-object v7, v3

    if-nez v7, :cond_5

    const/4 v7, 0x0

    move-object v8, v2

    monitor-exit v8

    move v0, v7

    goto :goto_3

    .line 1374
    :cond_5
    move-object v7, v3

    sget-object v8, Ljavafx/css/StyleOrigin;->USER_AGENT:Ljavafx/css/StyleOrigin;

    invoke-virtual {v7, v8}, Lcom/sun/javafx/css/Stylesheet;->setOrigin(Ljavafx/css/StyleOrigin;)V

    .line 1375
    new-instance v7, Lcom/sun/javafx/css/StyleManager$StylesheetContainer;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    move-object v9, v1

    move-object v10, v3

    invoke-direct {v8, v9, v10}, Lcom/sun/javafx/css/StyleManager$StylesheetContainer;-><init>(Ljava/lang/String;Lcom/sun/javafx/css/Stylesheet;)V

    move-object v4, v7

    .line 1377
    .local v4, "sc":Lcom/sun/javafx/css/StyleManager$StylesheetContainer;
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/css/StyleManager;->platformUserAgentStylesheetContainers:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-nez v7, :cond_6

    .line 1378
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/css/StyleManager;->platformUserAgentStylesheetContainers:Ljava/util/List;

    move-object v8, v4

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v7

    .line 1386
    :goto_4
    move-object v7, v0

    const/4 v8, 0x1

    iput-boolean v8, v7, Lcom/sun/javafx/css/StyleManager;->hasDefaultUserAgentStylesheet:Z

    .line 1388
    const/4 v7, 0x1

    move-object v8, v2

    monitor-exit v8

    move v0, v7

    goto :goto_3

    .line 1380
    :cond_6
    move-object v7, v0

    iget-boolean v7, v7, Lcom/sun/javafx/css/StyleManager;->hasDefaultUserAgentStylesheet:Z

    if-eqz v7, :cond_7

    .line 1381
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/css/StyleManager;->platformUserAgentStylesheetContainers:Ljava/util/List;

    const/4 v8, 0x0

    move-object v9, v4

    invoke-interface {v7, v8, v9}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    goto :goto_4

    .line 1384
    :cond_7
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/css/StyleManager;->platformUserAgentStylesheetContainers:Ljava/util/List;

    const/4 v8, 0x0

    move-object v9, v4

    invoke-interface {v7, v8, v9}, Ljava/util/List;->add(ILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4
.end method

.method static synthetic access$700()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 121
    sget-object v0, Lcom/sun/javafx/css/StyleManager;->styleLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$800()Ljava/util/List;
    .locals 1

    .prologue
    .line 121
    sget-object v0, Lcom/sun/javafx/css/StyleManager;->cacheMapKey:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$802(Ljava/util/List;)Ljava/util/List;
    .locals 4

    .prologue
    .line 121
    move-object v0, p0

    .local v0, "x0":Ljava/util/List;
    move-object v1, v0

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    sput-object v2, Lcom/sun/javafx/css/StyleManager;->cacheMapKey:Ljava/util/List;

    move-object v0, v1

    .end local v0    # "x0":Ljava/util/List;
    return-object v0
.end method

.method static synthetic access$lambda$0()Ljava/net/URI;
    .locals 1

    invoke-static {}, Lcom/sun/javafx/css/StyleManager;->lambda$loadStylesheet$170()Ljava/net/URI;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$lambda$1(Ljava/lang/String;)Ljava/util/jar/JarFile;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-static {v1}, Lcom/sun/javafx/css/StyleManager;->lambda$loadStylesheet$171(Ljava/lang/String;)Ljava/util/jar/JarFile;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$lambda$2(Ljava/lang/String;)Lcom/sun/javafx/css/Stylesheet;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-static {v1}, Lcom/sun/javafx/css/StyleManager;->lambda$loadStylesheet$172(Ljava/lang/String;)Lcom/sun/javafx/css/Stylesheet;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$lambda$3(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-static {v1}, Lcom/sun/javafx/css/StyleManager;->lambda$loadStylesheetUnPrivileged$173(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method static calculateCheckSum(Ljava/lang/String;)[B
    .locals 17

    .prologue
    .line 881
    move-object/from16 v0, p0

    .local v0, "fname":Ljava/lang/String;
    move-object v12, v0

    if-eqz v12, :cond_0

    move-object v12, v0

    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_1

    :cond_0
    const/4 v12, 0x0

    new-array v12, v12, [B

    move-object v0, v12

    .line 905
    .end local v0    # "fname":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 884
    .restart local v0    # "fname":Ljava/lang/String;
    :cond_1
    move-object v12, v0

    :try_start_0
    invoke-static {v12}, Lcom/sun/javafx/css/StyleManager;->getURL(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v12

    move-object v1, v12

    .line 887
    .local v1, "url":Ljava/net/URL;
    move-object v12, v1

    if-eqz v12, :cond_b

    const-string v12, "file"

    move-object v13, v1

    invoke-virtual {v13}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_b

    .line 890
    move-object v12, v1

    invoke-virtual {v12}, Ljava/net/URL;->openStream()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_9

    move-result-object v12

    move-object v2, v12

    .local v2, "stream":Ljava/io/InputStream;
    const/4 v12, 0x0

    move-object v3, v12

    .line 891
    :try_start_1
    new-instance v12, Ljava/security/DigestInputStream;

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    move-object v14, v2

    const-string v15, "MD5"

    invoke-static {v15}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v15

    invoke-direct {v13, v14, v15}, Ljava/security/DigestInputStream;-><init>(Ljava/io/InputStream;Ljava/security/MessageDigest;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v4, v12

    .line 890
    .local v4, "dis":Ljava/security/DigestInputStream;
    const/4 v12, 0x0

    move-object v5, v12

    .line 892
    move-object v12, v4

    :try_start_2
    invoke-virtual {v12}, Ljava/security/DigestInputStream;->getMessageDigest()Ljava/security/MessageDigest;

    move-result-object v12

    invoke-virtual {v12}, Ljava/security/MessageDigest;->reset()V

    .line 893
    :goto_1
    move-object v12, v4

    invoke-virtual {v12}, Ljava/security/DigestInputStream;->read()I

    move-result v12

    const/4 v13, -0x1

    if-eq v12, v13, :cond_2

    goto :goto_1

    .line 894
    :cond_2
    move-object v12, v4

    invoke-virtual {v12}, Ljava/security/DigestInputStream;->getMessageDigest()Ljava/security/MessageDigest;

    move-result-object v12

    invoke-virtual {v12}, Ljava/security/MessageDigest;->digest()[B
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v12

    move-object v6, v12

    .line 895
    move-object v12, v4

    if-eqz v12, :cond_3

    move-object v12, v5

    if-eqz v12, :cond_5

    move-object v12, v4

    :try_start_3
    invoke-virtual {v12}, Ljava/security/DigestInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_3
    :goto_2
    move-object v12, v2

    if-eqz v12, :cond_4

    move-object v12, v3

    if-eqz v12, :cond_7

    move-object v12, v2

    :try_start_4
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_8
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_9

    :cond_4
    :goto_3
    move-object v12, v6

    move-object v0, v12

    goto :goto_0

    :catch_0
    move-exception v12

    move-object v7, v12

    move-object v12, v5

    move-object v13, v7

    :try_start_5
    invoke-virtual {v12, v13}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_5
    move-object v12, v4

    invoke-virtual {v12}, Ljava/security/DigestInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    .line 890
    .end local v4    # "dis":Ljava/security/DigestInputStream;
    :catch_1
    move-exception v12

    move-object v4, v12

    move-object v12, v4

    move-object v3, v12

    move-object v12, v4

    :try_start_6
    throw v12
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 895
    :catchall_0
    move-exception v12

    move-object v10, v12

    move-object v12, v2

    if-eqz v12, :cond_6

    move-object v12, v3

    if-eqz v12, :cond_a

    move-object v12, v2

    :try_start_7
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_8
    .catch Ljava/lang/SecurityException; {:try_start_7 .. :try_end_7} :catch_9

    :cond_6
    :goto_4
    move-object v12, v10

    :try_start_8
    throw v12
    :try_end_8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_8 .. :try_end_8} :catch_4
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_8
    .catch Ljava/lang/SecurityException; {:try_start_8 .. :try_end_8} :catch_9

    .line 899
    .end local v1    # "url":Ljava/net/URL;
    .end local v2    # "stream":Ljava/io/InputStream;
    :catch_2
    move-exception v12

    :goto_5
    move-object v1, v12

    .line 905
    :goto_6
    const/4 v12, 0x0

    new-array v12, v12, [B

    move-object v0, v12

    goto/16 :goto_0

    .line 895
    .restart local v1    # "url":Ljava/net/URL;
    .restart local v2    # "stream":Ljava/io/InputStream;
    .restart local v4    # "dis":Ljava/security/DigestInputStream;
    :catch_3
    move-exception v12

    move-object v7, v12

    move-object v12, v3

    move-object v13, v7

    :try_start_9
    invoke-virtual {v12, v13}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_7
    move-object v12, v2

    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_9 .. :try_end_9} :catch_4
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_8
    .catch Ljava/lang/SecurityException; {:try_start_9 .. :try_end_9} :catch_9

    goto :goto_3

    .line 899
    .end local v1    # "url":Ljava/net/URL;
    .end local v2    # "stream":Ljava/io/InputStream;
    .end local v4    # "dis":Ljava/security/DigestInputStream;
    :catch_4
    move-exception v12

    goto :goto_5

    .line 890
    .restart local v1    # "url":Ljava/net/URL;
    .restart local v2    # "stream":Ljava/io/InputStream;
    .restart local v4    # "dis":Ljava/security/DigestInputStream;
    :catch_5
    move-exception v12

    move-object v6, v12

    move-object v12, v6

    move-object v5, v12

    move-object v12, v6

    :try_start_a
    throw v12
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 895
    :catchall_1
    move-exception v12

    move-object v8, v12

    move-object v12, v4

    if-eqz v12, :cond_8

    move-object v12, v5

    if-eqz v12, :cond_9

    move-object v12, v4

    :try_start_b
    invoke-virtual {v12}, Ljava/security/DigestInputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_6
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    :cond_8
    :goto_7
    move-object v12, v8

    :try_start_c
    throw v12

    :catch_6
    move-exception v12

    move-object v9, v12

    move-object v12, v5

    move-object v13, v9

    invoke-virtual {v12, v13}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_7

    :cond_9
    move-object v12, v4

    invoke-virtual {v12}, Ljava/security/DigestInputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_1
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto :goto_7

    .end local v4    # "dis":Ljava/security/DigestInputStream;
    :catch_7
    move-exception v12

    move-object v11, v12

    move-object v12, v3

    move-object v13, v11

    :try_start_d
    invoke-virtual {v12, v13}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_a
    move-object v12, v2

    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_d .. :try_end_d} :catch_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_d .. :try_end_d} :catch_4
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_8
    .catch Ljava/lang/SecurityException; {:try_start_d .. :try_end_d} :catch_9

    goto :goto_4

    .line 899
    .end local v1    # "url":Ljava/net/URL;
    .end local v2    # "stream":Ljava/io/InputStream;
    :catch_8
    move-exception v12

    goto :goto_5

    .line 904
    .restart local v1    # "url":Ljava/net/URL;
    :cond_b
    goto :goto_6

    .line 899
    .end local v1    # "url":Ljava/net/URL;
    :catch_9
    move-exception v12

    goto :goto_5
.end method

.method private cleanUpImageCache(Ljava/lang/String;)V
    .locals 23

    .prologue
    .line 800
    move-object/from16 v2, p0

    .local v2, "this":Lcom/sun/javafx/css/StyleManager;
    move-object/from16 v3, p1

    .local v3, "imgFname":Ljava/lang/String;
    sget-object v19, Lcom/sun/javafx/css/StyleManager;->styleLock:Ljava/lang/Object;

    move-object/from16 v22, v19

    move-object/from16 v19, v22

    move-object/from16 v20, v22

    move-object/from16 v4, v20

    monitor-enter v19

    .line 801
    move-object/from16 v19, v3

    if-nez v19, :cond_0

    move-object/from16 v19, v2

    :try_start_0
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/sun/javafx/css/StyleManager;->imageCache:Ljava/util/Map;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/util/Map;->isEmpty()Z

    move-result v19

    if-eqz v19, :cond_0

    move-object/from16 v19, v4

    monitor-exit v19

    .line 831
    :goto_0
    return-void

    .line 803
    :cond_0
    move-object/from16 v19, v3

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v5, v19

    .line 804
    .local v5, "fname":Ljava/lang/String;
    move-object/from16 v19, v5

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->isEmpty()Z

    move-result v19

    if-eqz v19, :cond_1

    move-object/from16 v19, v4

    monitor-exit v19

    goto :goto_0

    .line 806
    :cond_1
    move-object/from16 v19, v5

    const/16 v20, 0x2f

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v19

    move/from16 v6, v19

    .line 807
    .local v6, "len":I
    move/from16 v19, v6

    if-lez v19, :cond_3

    move-object/from16 v19, v5

    const/16 v20, 0x0

    move/from16 v21, v6

    invoke-virtual/range {v19 .. v21}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    :goto_1
    move-object/from16 v7, v19

    .line 808
    .local v7, "path":Ljava/lang/String;
    move-object/from16 v19, v7

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v19

    move/from16 v8, v19

    .line 810
    .local v8, "plen":I
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/sun/javafx/css/StyleManager;->imageCache:Ljava/util/Map;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/util/Map;->size()I

    move-result v19

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v9, v19

    .line 811
    .local v9, "entriesToRemove":[Ljava/lang/String;
    const/16 v19, 0x0

    move/from16 v10, v19

    .line 813
    .local v10, "count":I
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/sun/javafx/css/StyleManager;->imageCache:Ljava/util/Map;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v19

    move-object/from16 v11, v19

    .line 814
    .local v11, "entrySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljavafx/scene/image/Image;>;>;"
    move-object/from16 v19, v11

    invoke-interface/range {v19 .. v19}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v19

    move-object/from16 v12, v19

    :goto_2
    move-object/from16 v19, v12

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_6

    move-object/from16 v19, v12

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/util/Map$Entry;

    move-object/from16 v13, v19

    .line 816
    .local v13, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljavafx/scene/image/Image;>;"
    move-object/from16 v19, v13

    invoke-interface/range {v19 .. v19}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    move-object/from16 v14, v19

    .line 817
    .local v14, "key":Ljava/lang/String;
    move-object/from16 v19, v14

    const/16 v20, 0x2f

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v19

    move/from16 v6, v19

    .line 818
    move/from16 v19, v6

    if-lez v19, :cond_4

    move-object/from16 v19, v14

    const/16 v20, 0x0

    move/from16 v21, v6

    invoke-virtual/range {v19 .. v21}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    :goto_3
    move-object/from16 v15, v19

    .line 819
    .local v15, "kpath":Ljava/lang/String;
    move-object/from16 v19, v15

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v19

    move/from16 v16, v19

    .line 823
    .local v16, "klen":I
    move/from16 v19, v16

    move/from16 v20, v8

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_5

    move-object/from16 v19, v15

    move-object/from16 v20, v7

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v19

    :goto_4
    move/from16 v17, v19

    .line 824
    .local v17, "match":Z
    move/from16 v19, v17

    if-eqz v19, :cond_2

    move-object/from16 v19, v9

    move/from16 v20, v10

    add-int/lit8 v10, v10, 0x1

    move-object/from16 v21, v14

    aput-object v21, v19, v20

    .line 825
    :cond_2
    goto :goto_2

    .line 807
    .end local v7    # "path":Ljava/lang/String;
    .end local v8    # "plen":I
    .end local v9    # "entriesToRemove":[Ljava/lang/String;
    .end local v10    # "count":I
    .end local v11    # "entrySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljavafx/scene/image/Image;>;>;"
    .end local v13    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljavafx/scene/image/Image;>;"
    .end local v14    # "key":Ljava/lang/String;
    .end local v15    # "kpath":Ljava/lang/String;
    .end local v16    # "klen":I
    .end local v17    # "match":Z
    :cond_3
    move-object/from16 v19, v5

    goto/16 :goto_1

    .line 818
    .restart local v7    # "path":Ljava/lang/String;
    .restart local v8    # "plen":I
    .restart local v9    # "entriesToRemove":[Ljava/lang/String;
    .restart local v10    # "count":I
    .restart local v11    # "entrySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljavafx/scene/image/Image;>;>;"
    .restart local v13    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljavafx/scene/image/Image;>;"
    .restart local v14    # "key":Ljava/lang/String;
    :cond_4
    move-object/from16 v19, v14

    goto :goto_3

    .line 823
    .restart local v15    # "kpath":Ljava/lang/String;
    .restart local v16    # "klen":I
    :cond_5
    move-object/from16 v19, v7

    move-object/from16 v20, v15

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v19

    goto :goto_4

    .line 827
    .end local v13    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljavafx/scene/image/Image;>;"
    .end local v14    # "key":Ljava/lang/String;
    .end local v15    # "kpath":Ljava/lang/String;
    .end local v16    # "klen":I
    :cond_6
    const/16 v19, 0x0

    move/from16 v12, v19

    .local v12, "n":I
    :goto_5
    move/from16 v19, v12

    move/from16 v20, v10

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_7

    .line 828
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/sun/javafx/css/StyleManager;->imageCache:Ljava/util/Map;

    move-object/from16 v19, v0

    move-object/from16 v20, v9

    move/from16 v21, v12

    aget-object v20, v20, v21

    invoke-interface/range {v19 .. v20}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljavafx/scene/image/Image;

    move-object/from16 v13, v19

    .line 827
    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    .line 830
    :cond_7
    move-object/from16 v19, v4

    monitor-exit v19

    .line 831
    goto/16 :goto_0

    .line 830
    .end local v5    # "fname":Ljava/lang/String;
    .end local v6    # "len":I
    .end local v7    # "path":Ljava/lang/String;
    .end local v8    # "plen":I
    .end local v9    # "entriesToRemove":[Ljava/lang/String;
    .end local v10    # "count":I
    .end local v11    # "entrySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljavafx/scene/image/Image;>;>;"
    .end local v12    # "n":I
    :catchall_0
    move-exception v19

    move-object/from16 v18, v19

    move-object/from16 v19, v4

    monitor-exit v19
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object/from16 v19, v18

    throw v19
.end method

.method public static errorsProperty()Ljavafx/collections/ObservableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/collections/ObservableList",
            "<",
            "Lcom/sun/javafx/css/CssError;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1861
    sget-object v0, Lcom/sun/javafx/css/StyleManager;->errors:Ljavafx/collections/ObservableList;

    if-nez v0, :cond_0

    .line 1862
    invoke-static {}, Ljavafx/collections/FXCollections;->observableArrayList()Ljavafx/collections/ObservableList;

    move-result-object v0

    sput-object v0, Lcom/sun/javafx/css/StyleManager;->errors:Ljavafx/collections/ObservableList;

    .line 1864
    :cond_0
    sget-object v0, Lcom/sun/javafx/css/StyleManager;->errors:Ljavafx/collections/ObservableList;

    return-object v0
.end method

.method private gatherParentStylesheets(Ljavafx/scene/Parent;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/Parent;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/sun/javafx/css/StyleManager$StylesheetContainer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1558
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/StyleManager;
    move-object v1, p1

    .local v1, "parent":Ljavafx/scene/Parent;
    move-object v6, v1

    if-nez v6, :cond_0

    .line 1559
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v6

    move-object v0, v6

    .line 1577
    .end local v0    # "this":Lcom/sun/javafx/css/StyleManager;
    :goto_0
    return-object v0

    .line 1562
    .restart local v0    # "this":Lcom/sun/javafx/css/StyleManager;
    :cond_0
    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/Parent;->impl_getAllParentStylesheets()Ljava/util/List;

    move-result-object v6

    move-object v2, v6

    .line 1564
    .local v2, "parentStylesheets":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object v6, v2

    if-eqz v6, :cond_1

    move-object v6, v2

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1565
    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v6

    move-object v0, v6

    goto :goto_0

    .line 1568
    :cond_2
    sget-object v6, Lcom/sun/javafx/css/StyleManager;->styleLock:Ljava/lang/Object;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    move-object v3, v7

    monitor-enter v6

    .line 1570
    move-object v6, v1

    :try_start_0
    invoke-virtual {v6}, Ljavafx/scene/Parent;->getScene()Ljavafx/scene/Scene;

    move-result-object v6

    invoke-static {v6}, Lcom/sun/javafx/css/CssError;->setCurrentScene(Ljavafx/scene/Scene;)V

    .line 1572
    move-object v6, v0

    move-object v7, v2

    move-object v8, v1

    invoke-direct {v6, v7, v8}, Lcom/sun/javafx/css/StyleManager;->processStylesheets(Ljava/util/List;Ljavafx/scene/Parent;)Ljava/util/List;

    move-result-object v6

    move-object v4, v6

    .line 1575
    .local v4, "list":Ljava/util/List;, "Ljava/util/List<Lcom/sun/javafx/css/StyleManager$StylesheetContainer;>;"
    const/4 v6, 0x0

    invoke-static {v6}, Lcom/sun/javafx/css/CssError;->setCurrentScene(Ljavafx/scene/Scene;)V

    .line 1577
    move-object v6, v4

    move-object v7, v3

    monitor-exit v7

    move-object v0, v6

    goto :goto_0

    .line 1578
    .end local v4    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/sun/javafx/css/StyleManager$StylesheetContainer;>;"
    :catchall_0
    move-exception v6

    move-object v5, v6

    move-object v6, v3

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v6, v5

    throw v6
.end method

.method private gatherSceneStylesheets(Ljavafx/scene/Scene;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/Scene;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/sun/javafx/css/StyleManager$StylesheetContainer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1586
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/StyleManager;
    move-object v1, p1

    .local v1, "scene":Ljavafx/scene/Scene;
    move-object v6, v1

    if-nez v6, :cond_0

    .line 1587
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v6

    move-object v0, v6

    .line 1605
    .end local v0    # "this":Lcom/sun/javafx/css/StyleManager;
    :goto_0
    return-object v0

    .line 1590
    .restart local v0    # "this":Lcom/sun/javafx/css/StyleManager;
    :cond_0
    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/Scene;->getStylesheets()Ljavafx/collections/ObservableList;

    move-result-object v6

    move-object v2, v6

    .line 1592
    .local v2, "sceneStylesheets":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object v6, v2

    if-eqz v6, :cond_1

    move-object v6, v2

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1593
    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v6

    move-object v0, v6

    goto :goto_0

    .line 1596
    :cond_2
    sget-object v6, Lcom/sun/javafx/css/StyleManager;->styleLock:Ljava/lang/Object;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    move-object v3, v7

    monitor-enter v6

    .line 1598
    move-object v6, v1

    :try_start_0
    invoke-static {v6}, Lcom/sun/javafx/css/CssError;->setCurrentScene(Ljavafx/scene/Scene;)V

    .line 1600
    move-object v6, v0

    move-object v7, v2

    move-object v8, v1

    invoke-virtual {v8}, Ljavafx/scene/Scene;->getRoot()Ljavafx/scene/Parent;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lcom/sun/javafx/css/StyleManager;->processStylesheets(Ljava/util/List;Ljavafx/scene/Parent;)Ljava/util/List;

    move-result-object v6

    move-object v4, v6

    .line 1603
    .local v4, "list":Ljava/util/List;, "Ljava/util/List<Lcom/sun/javafx/css/StyleManager$StylesheetContainer;>;"
    const/4 v6, 0x0

    invoke-static {v6}, Lcom/sun/javafx/css/CssError;->setCurrentScene(Ljavafx/scene/Scene;)V

    .line 1605
    move-object v6, v4

    move-object v7, v3

    monitor-exit v7

    move-object v0, v6

    goto :goto_0

    .line 1606
    .end local v4    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/sun/javafx/css/StyleManager$StylesheetContainer;>;"
    :catchall_0
    move-exception v6

    move-object v5, v6

    move-object v6, v3

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v6, v5

    throw v6
.end method

.method public static getErrors()Ljavafx/collections/ObservableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/collections/ObservableList",
            "<",
            "Lcom/sun/javafx/css/CssError;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1876
    sget-object v0, Lcom/sun/javafx/css/StyleManager;->errors:Ljavafx/collections/ObservableList;

    return-object v0
.end method

.method public static getInstance()Lcom/sun/javafx/css/StyleManager;
    .locals 1

    .prologue
    .line 148
    sget-object v0, Lcom/sun/javafx/css/StyleManager$InstanceHolder;->INSTANCE:Lcom/sun/javafx/css/StyleManager;

    return-object v0
.end method

.method private static getLogger()Lsun/util/logging/PlatformLogger;
    .locals 1

    .prologue
    .line 135
    sget-object v0, Lcom/sun/javafx/css/StyleManager;->LOGGER:Lsun/util/logging/PlatformLogger;

    if-nez v0, :cond_0

    .line 136
    invoke-static {}, Lcom/sun/javafx/util/Logging;->getCSSLogger()Lsun/util/logging/PlatformLogger;

    move-result-object v0

    sput-object v0, Lcom/sun/javafx/css/StyleManager;->LOGGER:Lsun/util/logging/PlatformLogger;

    .line 138
    :cond_0
    sget-object v0, Lcom/sun/javafx/css/StyleManager;->LOGGER:Lsun/util/logging/PlatformLogger;

    return-object v0
.end method

.method private static getURL(Ljava/lang/String;)Ljava/net/URL;
    .locals 9

    .prologue
    .line 843
    move-object v0, p0

    .local v0, "str":Ljava/lang/String;
    move-object v5, v0

    if-eqz v5, :cond_0

    move-object v5, v0

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    const/4 v5, 0x0

    move-object v0, v5

    .line 874
    .end local v0    # "str":Ljava/lang/String;
    .local v1, "uri":Ljava/net/URI;
    :goto_0
    return-object v0

    .line 847
    .end local v1    # "uri":Ljava/net/URI;
    .restart local v0    # "str":Ljava/lang/String;
    :cond_1
    :try_start_0
    new-instance v5, Ljava/net/URI;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v0

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    move-object v1, v5

    .line 850
    .restart local v1    # "uri":Ljava/net/URI;
    move-object v5, v1

    invoke-virtual {v5}, Ljava/net/URI;->isAbsolute()Z

    move-result v5

    if-nez v5, :cond_3

    .line 852
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    move-object v2, v5

    .line 853
    .local v2, "contextClassLoader":Ljava/lang/ClassLoader;
    move-object v5, v1

    invoke-virtual {v5}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v5

    move-object v3, v5

    .line 855
    .local v3, "path":Ljava/lang/String;
    const/4 v5, 0x0

    move-object v4, v5

    .line 857
    .local v4, "resource":Ljava/net/URL;
    move-object v5, v3

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 858
    move-object v5, v2

    move-object v6, v3

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v5

    move-object v4, v5

    .line 863
    :goto_1
    move-object v5, v4

    move-object v0, v5

    goto :goto_0

    .line 860
    :cond_2
    move-object v5, v2

    move-object v6, v3

    invoke-virtual {v5, v6}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v5

    move-object v4, v5

    goto :goto_1

    .line 867
    .end local v2    # "contextClassLoader":Ljava/lang/ClassLoader;
    .end local v3    # "path":Ljava/lang/String;
    .end local v4    # "resource":Ljava/net/URL;
    :cond_3
    move-object v5, v1

    invoke-virtual {v5}, Ljava/net/URI;->toURL()Ljava/net/URL;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v5

    move-object v0, v5

    goto :goto_0

    .line 869
    .end local v1    # "uri":Ljava/net/URI;
    :catch_0
    move-exception v5

    move-object v1, v5

    .line 872
    .local v1, "malf":Ljava/net/MalformedURLException;
    const/4 v5, 0x0

    move-object v0, v5

    goto :goto_0

    .line 873
    .end local v1    # "malf":Ljava/net/MalformedURLException;
    :catch_1
    move-exception v5

    move-object v1, v5

    .line 874
    .local v1, "urise":Ljava/net/URISyntaxException;
    const/4 v5, 0x0

    move-object v0, v5

    goto :goto_0
.end method

.method private static synthetic lambda$loadStylesheet$170()Ljava/net/URI;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 943
    const-class v0, Lcom/sun/javafx/css/StyleManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getProtectionDomain()Ljava/security/ProtectionDomain;

    move-result-object v0

    invoke-virtual {v0}, Ljava/security/ProtectionDomain;->getCodeSource()Ljava/security/CodeSource;

    move-result-object v0

    invoke-virtual {v0}, Ljava/security/CodeSource;->getLocation()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->toURI()Ljava/net/URI;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic lambda$loadStylesheet$171(Ljava/lang/String;)Ljava/util/jar/JarFile;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 979
    move-object v0, p0

    .local v0, "styleManagerJarPath":Ljava/lang/String;
    new-instance v1, Ljava/util/jar/JarFile;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Ljava/util/jar/JarFile;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    .end local v0    # "styleManagerJarPath":Ljava/lang/String;
    return-object v0
.end method

.method private static synthetic lambda$loadStylesheet$172(Ljava/lang/String;)Lcom/sun/javafx/css/Stylesheet;
    .locals 2

    .prologue
    .line 998
    move-object v0, p0

    .local v0, "fname":Ljava/lang/String;
    move-object v1, v0

    invoke-static {v1}, Lcom/sun/javafx/css/StyleManager;->loadStylesheetUnPrivileged(Ljava/lang/String;)Lcom/sun/javafx/css/Stylesheet;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "fname":Ljava/lang/String;
    return-object v0
.end method

.method private static synthetic lambda$loadStylesheetUnPrivileged$173(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 4

    .prologue
    .line 1031
    move-object v0, p0

    .local v0, "fname":Ljava/lang/String;
    const-string v2, "binary.css"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 1035
    .local v1, "bss":Ljava/lang/String;
    move-object v2, v0

    const-string v3, ".bss"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    move-object v2, v1

    if-eqz v2, :cond_1

    move-object v2, v1

    .line 1036
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    .line 1035
    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "fname":Ljava/lang/String;
    return-object v0

    .line 1036
    .restart local v0    # "fname":Ljava/lang/String;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    goto :goto_0
.end method

.method public static loadStylesheet(Ljava/lang/String;)Lcom/sun/javafx/css/Stylesheet;
    .locals 23

    .prologue
    .line 910
    move-object/from16 v0, p0

    .local v0, "fname":Ljava/lang/String;
    move-object v13, v0

    :try_start_0
    invoke-static {v13}, Lcom/sun/javafx/css/StyleManager;->loadStylesheetUnPrivileged(Ljava/lang/String;)Lcom/sun/javafx/css/Stylesheet;
    :try_end_0
    .catch Ljava/security/AccessControlException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v13

    move-object v0, v13

    .line 1020
    .end local v0    # "fname":Ljava/lang/String;
    .local v1, "ace":Ljava/security/AccessControlException;
    :goto_0
    return-object v0

    .line 911
    .end local v1    # "ace":Ljava/security/AccessControlException;
    .restart local v0    # "fname":Ljava/lang/String;
    :catch_0
    move-exception v13

    move-object v1, v13

    .line 923
    .restart local v1    # "ace":Ljava/security/AccessControlException;
    move-object v13, v0

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    const/4 v14, 0x7

    if-ge v13, v14, :cond_0

    move-object v13, v0

    const-string v14, "!/"

    invoke-virtual {v13, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v13

    move-object v14, v0

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    const/4 v15, 0x7

    add-int/lit8 v14, v14, -0x7

    if-ge v13, v14, :cond_0

    .line 924
    const/4 v13, 0x0

    move-object v0, v13

    goto :goto_0

    .line 933
    :cond_0
    :try_start_1
    new-instance v13, Ljava/net/URI;

    move-object/from16 v22, v13

    move-object/from16 v13, v22

    move-object/from16 v14, v22

    move-object v15, v0

    invoke-direct {v14, v15}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    move-object v2, v13

    .line 938
    .local v2, "requestedFileUrI":Ljava/net/URI;
    const-string v13, "jar"

    move-object v14, v2

    invoke-virtual {v14}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 943
    invoke-static {}, Lcom/sun/javafx/css/StyleManager$$Lambda$1;->lambdaFactory$()Ljava/security/PrivilegedExceptionAction;

    move-result-object v13

    invoke-static {v13}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/net/URI;

    move-object v3, v13

    .line 945
    .local v3, "styleManagerJarURI":Ljava/net/URI;
    move-object v13, v3

    invoke-virtual {v13}, Ljava/net/URI;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v13

    move-object v4, v13

    .line 946
    .local v4, "styleManagerJarPath":Ljava/lang/String;
    move-object v13, v2

    invoke-virtual {v13}, Ljava/net/URI;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v13

    move-object v5, v13

    .line 947
    .local v5, "requestedFilePath":Ljava/lang/String;
    move-object v13, v5

    move-object v14, v5

    const/16 v15, 0x2f

    invoke-virtual {v14, v15}, Ljava/lang/String;->indexOf(I)I

    move-result v14

    move-object v15, v5

    const-string v16, "!/"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v15

    invoke-virtual {v13, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    move-object v6, v13

    .line 952
    .local v6, "requestedFileJarPart":Ljava/lang/String;
    move-object v13, v4

    move-object v14, v6

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 957
    move-object v13, v0

    move-object v14, v0

    const-string v15, "!/"

    invoke-virtual {v14, v15}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    const/4 v15, 0x2

    add-int/lit8 v14, v14, 0x2

    invoke-virtual {v13, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    move-object v7, v13

    .line 961
    .local v7, "requestedFileJarPathNoLeadingSlash":Ljava/lang/String;
    move-object v13, v0

    const-string v14, ".css"

    invoke-virtual {v13, v14}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_1

    move-object v13, v0

    const-string v14, ".bss"

    invoke-virtual {v13, v14}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 965
    :cond_1
    new-instance v13, Ljava/io/FilePermission;

    move-object/from16 v22, v13

    move-object/from16 v13, v22

    move-object/from16 v14, v22

    move-object v15, v4

    const-string v16, "read"

    invoke-direct/range {v14 .. v16}, Ljava/io/FilePermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v8, v13

    .line 967
    .local v8, "perm":Ljava/io/FilePermission;
    move-object v13, v8

    invoke-virtual {v13}, Ljava/io/FilePermission;->newPermissionCollection()Ljava/security/PermissionCollection;

    move-result-object v13

    move-object v9, v13

    .line 968
    .local v9, "perms":Ljava/security/PermissionCollection;
    move-object v13, v9

    move-object v14, v8

    invoke-virtual {v13, v14}, Ljava/security/PermissionCollection;->add(Ljava/security/Permission;)V

    .line 969
    new-instance v13, Ljava/security/AccessControlContext;

    move-object/from16 v22, v13

    move-object/from16 v13, v22

    move-object/from16 v14, v22

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/security/ProtectionDomain;

    move-object/from16 v22, v15

    move-object/from16 v15, v22

    move-object/from16 v16, v22

    const/16 v17, 0x0

    new-instance v18, Ljava/security/ProtectionDomain;

    move-object/from16 v22, v18

    move-object/from16 v18, v22

    move-object/from16 v19, v22

    const/16 v20, 0x0

    move-object/from16 v21, v9

    invoke-direct/range {v19 .. v21}, Ljava/security/ProtectionDomain;-><init>(Ljava/security/CodeSource;Ljava/security/PermissionCollection;)V

    aput-object v18, v16, v17

    invoke-direct {v14, v15}, Ljava/security/AccessControlContext;-><init>([Ljava/security/ProtectionDomain;)V
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/security/PrivilegedActionException; {:try_start_1 .. :try_end_1} :catch_3

    move-object v10, v13

    .line 977
    .local v10, "permsAcc":Ljava/security/AccessControlContext;
    const/4 v13, 0x0

    move-object v11, v13

    .line 979
    .local v11, "jar":Ljava/util/jar/JarFile;
    move-object v13, v4

    :try_start_2
    invoke-static {v13}, Lcom/sun/javafx/css/StyleManager$$Lambda$2;->lambdaFactory$(Ljava/lang/String;)Ljava/security/PrivilegedExceptionAction;

    move-result-object v13

    move-object v14, v10

    invoke-static {v13, v14}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;Ljava/security/AccessControlContext;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/jar/JarFile;
    :try_end_2
    .catch Ljava/security/PrivilegedActionException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/net/URISyntaxException; {:try_start_2 .. :try_end_2} :catch_2

    move-object v11, v13

    .line 987
    .line 988
    move-object v13, v11

    if-eqz v13, :cond_2

    .line 992
    move-object v13, v11

    move-object v14, v7

    :try_start_3
    invoke-virtual {v13, v14}, Ljava/util/jar/JarFile;->getJarEntry(Ljava/lang/String;)Ljava/util/jar/JarEntry;

    move-result-object v13

    move-object v12, v13

    .line 993
    .local v12, "entry":Ljava/util/jar/JarEntry;
    move-object v13, v12

    if-eqz v13, :cond_2

    .line 997
    move-object v13, v0

    invoke-static {v13}, Lcom/sun/javafx/css/StyleManager$$Lambda$3;->lambdaFactory$(Ljava/lang/String;)Ljava/security/PrivilegedAction;

    move-result-object v13

    move-object v14, v10

    invoke-static {v13, v14}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;Ljava/security/AccessControlContext;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/sun/javafx/css/Stylesheet;
    :try_end_3
    .catch Ljava/net/URISyntaxException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/security/PrivilegedActionException; {:try_start_3 .. :try_end_3} :catch_3

    move-object v0, v13

    goto/16 :goto_0

    .line 980
    .end local v12    # "entry":Ljava/util/jar/JarEntry;
    :catch_1
    move-exception v13

    move-object v12, v13

    .line 986
    .local v12, "pae":Ljava/security/PrivilegedActionException;
    const/4 v13, 0x0

    move-object v0, v13

    goto/16 :goto_0

    .line 1009
    .end local v3    # "styleManagerJarURI":Ljava/net/URI;
    .end local v4    # "styleManagerJarPath":Ljava/lang/String;
    .end local v5    # "requestedFilePath":Ljava/lang/String;
    .end local v6    # "requestedFileJarPart":Ljava/lang/String;
    .end local v7    # "requestedFileJarPathNoLeadingSlash":Ljava/lang/String;
    .end local v8    # "perm":Ljava/io/FilePermission;
    .end local v9    # "perms":Ljava/security/PermissionCollection;
    .end local v10    # "permsAcc":Ljava/security/AccessControlContext;
    .end local v11    # "jar":Ljava/util/jar/JarFile;
    .end local v12    # "pae":Ljava/security/PrivilegedActionException;
    :cond_2
    const/4 v13, 0x0

    move-object v0, v13

    goto/16 :goto_0

    .line 1016
    .end local v2    # "requestedFileUrI":Ljava/net/URI;
    :catch_2
    move-exception v13

    move-object v2, v13

    .line 1017
    .local v2, "e":Ljava/net/URISyntaxException;
    const/4 v13, 0x0

    move-object v0, v13

    goto/16 :goto_0

    .line 1019
    .end local v2    # "e":Ljava/net/URISyntaxException;
    :catch_3
    move-exception v13

    move-object v2, v13

    .line 1020
    .local v2, "e":Ljava/security/PrivilegedActionException;
    const/4 v13, 0x0

    move-object v0, v13

    goto/16 :goto_0
.end method

.method private static loadStylesheetUnPrivileged(Ljava/lang/String;)Lcom/sun/javafx/css/Stylesheet;
    .locals 20

    .prologue
    .line 1028
    move-object/from16 v1, p0

    .local v1, "fname":Ljava/lang/String;
    sget-object v13, Lcom/sun/javafx/css/StyleManager;->styleLock:Ljava/lang/Object;

    move-object/from16 v19, v13

    move-object/from16 v13, v19

    move-object/from16 v14, v19

    move-object v2, v14

    monitor-enter v13

    .line 1029
    move-object v13, v1

    :try_start_0
    invoke-static {v13}, Lcom/sun/javafx/css/StyleManager$$Lambda$4;->lambdaFactory$(Ljava/lang/String;)Ljava/security/PrivilegedAction;

    move-result-object v13

    invoke-static {v13}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Boolean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v3, v13

    .line 1040
    .local v3, "parse":Ljava/lang/Boolean;
    move-object v13, v3

    :try_start_1
    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    if-eqz v13, :cond_5

    const-string v13, ".css"

    :goto_0
    move-object v4, v13

    .line 1041
    .local v4, "ext":Ljava/lang/String;
    const/4 v13, 0x0

    move-object v5, v13

    .line 1042
    .local v5, "url":Ljava/net/URL;
    const/4 v13, 0x0

    move-object v6, v13

    .line 1044
    .local v6, "stylesheet":Lcom/sun/javafx/css/Stylesheet;
    move-object v13, v1

    const-string v14, ".css"

    invoke-virtual {v13, v14}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_6

    move-object v13, v1

    const-string v14, ".bss"

    invoke-virtual {v13, v14}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_6

    .line 1045
    move-object v13, v1

    invoke-static {v13}, Lcom/sun/javafx/css/StyleManager;->getURL(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v13

    move-object v5, v13

    .line 1046
    const/4 v13, 0x1

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    move-object v3, v13

    .line 1078
    :cond_0
    :goto_1
    move-object v13, v5

    if-eqz v13, :cond_1

    move-object v13, v3

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    if-eqz v13, :cond_1

    .line 1079
    new-instance v13, Lcom/sun/javafx/css/parser/CSSParser;

    move-object/from16 v19, v13

    move-object/from16 v13, v19

    move-object/from16 v14, v19

    invoke-direct {v14}, Lcom/sun/javafx/css/parser/CSSParser;-><init>()V

    move-object v14, v5

    invoke-virtual {v13, v14}, Lcom/sun/javafx/css/parser/CSSParser;->parse(Ljava/net/URL;)Lcom/sun/javafx/css/Stylesheet;

    move-result-object v13

    move-object v6, v13

    .line 1082
    :cond_1
    move-object v13, v6

    if-nez v13, :cond_3

    .line 1083
    sget-object v13, Lcom/sun/javafx/css/StyleManager;->errors:Ljavafx/collections/ObservableList;

    if-eqz v13, :cond_2

    .line 1084
    new-instance v13, Lcom/sun/javafx/css/CssError;

    move-object/from16 v19, v13

    move-object/from16 v13, v19

    move-object/from16 v14, v19

    new-instance v15, Ljava/lang/StringBuilder;

    move-object/from16 v19, v15

    move-object/from16 v15, v19

    move-object/from16 v16, v19

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Resource \""

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v16, v1

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "\" not found."

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Lcom/sun/javafx/css/CssError;-><init>(Ljava/lang/String;)V

    move-object v7, v13

    .line 1088
    .local v7, "error":Lcom/sun/javafx/css/CssError;
    sget-object v13, Lcom/sun/javafx/css/StyleManager;->errors:Ljavafx/collections/ObservableList;

    move-object v14, v7

    invoke-interface {v13, v14}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v13

    .line 1090
    .end local v7    # "error":Lcom/sun/javafx/css/CssError;
    :cond_2
    invoke-static {}, Lcom/sun/javafx/css/StyleManager;->getLogger()Lsun/util/logging/PlatformLogger;

    move-result-object v13

    sget-object v14, Lsun/util/logging/PlatformLogger$Level;->WARNING:Lsun/util/logging/PlatformLogger$Level;

    invoke-virtual {v13, v14}, Lsun/util/logging/PlatformLogger;->isLoggable(Lsun/util/logging/PlatformLogger$Level;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 1091
    invoke-static {}, Lcom/sun/javafx/css/StyleManager;->getLogger()Lsun/util/logging/PlatformLogger;

    move-result-object v13

    const-string v14, "Resource \"%s\" not found."

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    move-object/from16 v19, v15

    move-object/from16 v15, v19

    move-object/from16 v16, v19

    const/16 v17, 0x0

    move-object/from16 v18, v1

    aput-object v18, v16, v17

    .line 1092
    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    .line 1091
    invoke-virtual {v13, v14}, Lsun/util/logging/PlatformLogger;->warning(Ljava/lang/String;)V

    .line 1098
    :cond_3
    move-object v13, v6

    if-eqz v13, :cond_c

    .line 1099
    move-object v13, v6

    invoke-virtual {v13}, Lcom/sun/javafx/css/Stylesheet;->getFontFaces()Ljava/util/List;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    move-object v7, v13

    :cond_4
    :goto_2
    move-object v13, v7

    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_c

    move-object v13, v7

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/sun/javafx/css/FontFace;

    move-object v8, v13

    .line 1100
    .local v8, "fontFace":Lcom/sun/javafx/css/FontFace;
    move-object v13, v8

    invoke-virtual {v13}, Lcom/sun/javafx/css/FontFace;->getSources()Ljava/util/List;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    move-object v9, v13

    :goto_3
    move-object v13, v9

    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_b

    move-object v13, v9

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/sun/javafx/css/FontFace$FontFaceSrc;

    move-object v10, v13

    .line 1101
    .local v10, "src":Lcom/sun/javafx/css/FontFace$FontFaceSrc;
    move-object v13, v10

    invoke-virtual {v13}, Lcom/sun/javafx/css/FontFace$FontFaceSrc;->getType()Lcom/sun/javafx/css/FontFace$FontFaceSrcType;

    move-result-object v13

    sget-object v14, Lcom/sun/javafx/css/FontFace$FontFaceSrcType;->URL:Lcom/sun/javafx/css/FontFace$FontFaceSrcType;

    if-ne v13, v14, :cond_a

    .line 1102
    move-object v13, v10

    invoke-virtual {v13}, Lcom/sun/javafx/css/FontFace$FontFaceSrc;->getSrc()Ljava/lang/String;

    move-result-object v13

    const-wide/high16 v14, 0x4024000000000000L    # 10.0

    invoke-static {v13, v14, v15}, Ljavafx/scene/text/Font;->loadFont(Ljava/lang/String;D)Ljavafx/scene/text/Font;

    move-result-object v13

    move-object v11, v13

    .line 1103
    .local v11, "loadedFont":Ljavafx/scene/text/Font;
    move-object v13, v11

    if-nez v13, :cond_4

    .line 1104
    invoke-static {}, Lcom/sun/javafx/css/StyleManager;->getLogger()Lsun/util/logging/PlatformLogger;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    move-object/from16 v19, v14

    move-object/from16 v14, v19

    move-object/from16 v15, v19

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Could not load @font-face font ["

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object v15, v10

    invoke-virtual {v15}, Lcom/sun/javafx/css/FontFace$FontFaceSrc;->getSrc()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "]"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lsun/util/logging/PlatformLogger;->info(Ljava/lang/String;)V

    goto :goto_2

    .line 1040
    .end local v4    # "ext":Ljava/lang/String;
    .end local v5    # "url":Ljava/net/URL;
    .end local v6    # "stylesheet":Lcom/sun/javafx/css/Stylesheet;
    .end local v8    # "fontFace":Lcom/sun/javafx/css/FontFace;
    .end local v10    # "src":Lcom/sun/javafx/css/FontFace$FontFaceSrc;
    .end local v11    # "loadedFont":Ljavafx/scene/text/Font;
    :cond_5
    const-string v13, ".bss"

    goto/16 :goto_0

    .line 1048
    .restart local v4    # "ext":Ljava/lang/String;
    .restart local v5    # "url":Ljava/net/URL;
    .restart local v6    # "stylesheet":Lcom/sun/javafx/css/Stylesheet;
    :cond_6
    move-object v13, v1

    const/4 v14, 0x0

    move-object v15, v1

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    const/16 v16, 0x4

    add-int/lit8 v15, v15, -0x4

    invoke-virtual {v13, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    move-object v7, v13

    .line 1050
    .local v7, "name":Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    move-object/from16 v19, v13

    move-object/from16 v13, v19

    move-object/from16 v14, v19

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object v14, v7

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object v14, v4

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/sun/javafx/css/StyleManager;->getURL(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v13

    move-object v5, v13

    .line 1051
    move-object v13, v5

    if-nez v13, :cond_7

    move-object v13, v3

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    if-nez v13, :cond_8

    const/4 v13, 0x1

    :goto_4
    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    move-object/from16 v19, v13

    move-object/from16 v13, v19

    move-object/from16 v14, v19

    move-object v3, v14

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    if-eqz v13, :cond_7

    .line 1055
    new-instance v13, Ljava/lang/StringBuilder;

    move-object/from16 v19, v13

    move-object/from16 v13, v19

    move-object/from16 v14, v19

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object v14, v7

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ".css"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/sun/javafx/css/StyleManager;->getURL(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v13

    move-object v5, v13

    .line 1058
    :cond_7
    move-object v13, v5

    if-eqz v13, :cond_0

    move-object v13, v3

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v13

    if-nez v13, :cond_0

    .line 1062
    move-object v13, v5

    :try_start_2
    invoke-static {v13}, Lcom/sun/javafx/css/Stylesheet;->loadBinary(Ljava/net/URL;)Lcom/sun/javafx/css/Stylesheet;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v13

    move-object v6, v13

    .line 1065
    .line 1067
    :goto_5
    move-object v13, v6

    if-nez v13, :cond_0

    move-object v13, v3

    :try_start_3
    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    if-nez v13, :cond_9

    const/4 v13, 0x1

    :goto_6
    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    move-object/from16 v19, v13

    move-object/from16 v13, v19

    move-object/from16 v14, v19

    move-object v3, v14

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    if-eqz v13, :cond_0

    .line 1071
    move-object v13, v1

    invoke-static {v13}, Lcom/sun/javafx/css/StyleManager;->getURL(Ljava/lang/String;)Ljava/net/URL;
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v13

    move-object v5, v13

    goto/16 :goto_1

    .line 1051
    :cond_8
    const/4 v13, 0x0

    goto :goto_4

    .line 1063
    :catch_0
    move-exception v13

    move-object v8, v13

    .line 1064
    .local v8, "ioe":Ljava/io/IOException;
    const/4 v13, 0x0

    move-object v6, v13

    goto :goto_5

    .line 1067
    .end local v8    # "ioe":Ljava/io/IOException;
    :cond_9
    const/4 v13, 0x0

    goto :goto_6

    .line 1108
    .end local v7    # "name":Ljava/lang/String;
    .local v8, "fontFace":Lcom/sun/javafx/css/FontFace;
    .restart local v10    # "src":Lcom/sun/javafx/css/FontFace$FontFaceSrc;
    :cond_a
    goto/16 :goto_3

    .line 1109
    .end local v10    # "src":Lcom/sun/javafx/css/FontFace$FontFaceSrc;
    :cond_b
    goto/16 :goto_2

    .line 1112
    .end local v8    # "fontFace":Lcom/sun/javafx/css/FontFace;
    :cond_c
    move-object v13, v6

    move-object v14, v2

    :try_start_4
    monitor-exit v14

    move-object v1, v13

    .line 1137
    .end local v1    # "fname":Ljava/lang/String;
    .end local v4    # "ext":Ljava/lang/String;
    .end local v5    # "url":Ljava/net/URL;
    .end local v6    # "stylesheet":Lcom/sun/javafx/css/Stylesheet;
    :goto_7
    return-object v1

    .line 1114
    .restart local v1    # "fname":Ljava/lang/String;
    :catch_1
    move-exception v13

    move-object v4, v13

    .line 1115
    .local v4, "fnfe":Ljava/io/FileNotFoundException;
    sget-object v13, Lcom/sun/javafx/css/StyleManager;->errors:Ljavafx/collections/ObservableList;

    if-eqz v13, :cond_d

    .line 1116
    new-instance v13, Lcom/sun/javafx/css/CssError;

    move-object/from16 v19, v13

    move-object/from16 v13, v19

    move-object/from16 v14, v19

    new-instance v15, Ljava/lang/StringBuilder;

    move-object/from16 v19, v15

    move-object/from16 v15, v19

    move-object/from16 v16, v19

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Stylesheet \""

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v16, v1

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "\" not found."

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Lcom/sun/javafx/css/CssError;-><init>(Ljava/lang/String;)V

    move-object v5, v13

    .line 1120
    .local v5, "error":Lcom/sun/javafx/css/CssError;
    sget-object v13, Lcom/sun/javafx/css/StyleManager;->errors:Ljavafx/collections/ObservableList;

    move-object v14, v5

    invoke-interface {v13, v14}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v13

    .line 1122
    .end local v5    # "error":Lcom/sun/javafx/css/CssError;
    :cond_d
    invoke-static {}, Lcom/sun/javafx/css/StyleManager;->getLogger()Lsun/util/logging/PlatformLogger;

    move-result-object v13

    sget-object v14, Lsun/util/logging/PlatformLogger$Level;->INFO:Lsun/util/logging/PlatformLogger$Level;

    invoke-virtual {v13, v14}, Lsun/util/logging/PlatformLogger;->isLoggable(Lsun/util/logging/PlatformLogger$Level;)Z

    move-result v13

    if-eqz v13, :cond_e

    .line 1123
    invoke-static {}, Lcom/sun/javafx/css/StyleManager;->getLogger()Lsun/util/logging/PlatformLogger;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    move-object/from16 v19, v14

    move-object/from16 v14, v19

    move-object/from16 v15, v19

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Could not find stylesheet: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object v15, v1

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lsun/util/logging/PlatformLogger;->info(Ljava/lang/String;)V

    .line 1136
    .line 1137
    .end local v4    # "fnfe":Ljava/io/FileNotFoundException;
    :cond_e
    :goto_8
    const/4 v13, 0x0

    move-object v14, v2

    monitor-exit v14

    move-object v1, v13

    goto :goto_7

    .line 1125
    :catch_2
    move-exception v13

    move-object v4, v13

    .line 1126
    .local v4, "ioe":Ljava/io/IOException;
    sget-object v13, Lcom/sun/javafx/css/StyleManager;->errors:Ljavafx/collections/ObservableList;

    if-eqz v13, :cond_f

    .line 1127
    new-instance v13, Lcom/sun/javafx/css/CssError;

    move-object/from16 v19, v13

    move-object/from16 v13, v19

    move-object/from16 v14, v19

    new-instance v15, Ljava/lang/StringBuilder;

    move-object/from16 v19, v15

    move-object/from16 v15, v19

    move-object/from16 v16, v19

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Could not load stylesheet: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v16, v1

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Lcom/sun/javafx/css/CssError;-><init>(Ljava/lang/String;)V

    move-object v5, v13

    .line 1131
    .restart local v5    # "error":Lcom/sun/javafx/css/CssError;
    sget-object v13, Lcom/sun/javafx/css/StyleManager;->errors:Ljavafx/collections/ObservableList;

    move-object v14, v5

    invoke-interface {v13, v14}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v13

    .line 1133
    .end local v5    # "error":Lcom/sun/javafx/css/CssError;
    :cond_f
    invoke-static {}, Lcom/sun/javafx/css/StyleManager;->getLogger()Lsun/util/logging/PlatformLogger;

    move-result-object v13

    sget-object v14, Lsun/util/logging/PlatformLogger$Level;->INFO:Lsun/util/logging/PlatformLogger$Level;

    invoke-virtual {v13, v14}, Lsun/util/logging/PlatformLogger;->isLoggable(Lsun/util/logging/PlatformLogger$Level;)Z

    move-result v13

    if-eqz v13, :cond_e

    .line 1134
    invoke-static {}, Lcom/sun/javafx/css/StyleManager;->getLogger()Lsun/util/logging/PlatformLogger;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    move-object/from16 v19, v14

    move-object/from16 v14, v19

    move-object/from16 v15, v19

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Could not load stylesheet: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object v15, v1

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lsun/util/logging/PlatformLogger;->info(Ljava/lang/String;)V

    goto :goto_8

    .line 1138
    .end local v3    # "parse":Ljava/lang/Boolean;
    .end local v4    # "ioe":Ljava/io/IOException;
    :catchall_0
    move-exception v13

    move-object v12, v13

    move-object v13, v2

    monitor-exit v13
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object v13, v12

    throw v13
.end method

.method private processStylesheets(Ljava/util/List;Ljavafx/scene/Parent;)Ljava/util/List;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljavafx/scene/Parent;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/sun/javafx/css/StyleManager$StylesheetContainer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1498
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/javafx/css/StyleManager;
    move-object/from16 v1, p1

    .local v1, "stylesheets":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v2, p2

    .local v2, "parent":Ljavafx/scene/Parent;
    sget-object v12, Lcom/sun/javafx/css/StyleManager;->styleLock:Ljava/lang/Object;

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    move-object v3, v13

    monitor-enter v12

    .line 1499
    :try_start_0
    new-instance v12, Ljava/util/ArrayList;

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    move-object v4, v12

    .line 1500
    .local v4, "list":Ljava/util/List;, "Ljava/util/List<Lcom/sun/javafx/css/StyleManager$StylesheetContainer;>;"
    const/4 v12, 0x0

    move v5, v12

    .local v5, "n":I
    move-object v12, v1

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    move v6, v12

    .local v6, "nMax":I
    :goto_0
    move v12, v5

    move v13, v6

    if-ge v12, v13, :cond_4

    .line 1501
    move-object v12, v1

    move v13, v5

    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    move-object v7, v12

    .line 1503
    .local v7, "fname":Ljava/lang/String;
    const/4 v12, 0x0

    move-object v8, v12

    .line 1504
    .local v8, "container":Lcom/sun/javafx/css/StyleManager$StylesheetContainer;
    move-object v12, v0

    iget-object v12, v12, Lcom/sun/javafx/css/StyleManager;->stylesheetContainerMap:Ljava/util/Map;

    move-object v13, v7

    invoke-interface {v12, v13}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 1505
    move-object v12, v0

    iget-object v12, v12, Lcom/sun/javafx/css/StyleManager;->stylesheetContainerMap:Ljava/util/Map;

    move-object v13, v7

    invoke-interface {v12, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/sun/javafx/css/StyleManager$StylesheetContainer;

    move-object v8, v12

    .line 1507
    move-object v12, v4

    move-object v13, v8

    invoke-interface {v12, v13}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1

    .line 1509
    move-object v12, v8

    iget-boolean v12, v12, Lcom/sun/javafx/css/StyleManager$StylesheetContainer;->checksumInvalid:Z

    if-eqz v12, :cond_0

    .line 1510
    move-object v12, v7

    invoke-static {v12}, Lcom/sun/javafx/css/StyleManager;->calculateCheckSum(Ljava/lang/String;)[B

    move-result-object v12

    move-object v9, v12

    .line 1511
    .local v9, "checksum":[B
    move-object v12, v9

    move-object v13, v8

    iget-object v13, v13, Lcom/sun/javafx/css/StyleManager$StylesheetContainer;->checksum:[B

    invoke-static {v12, v13}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v12

    if-nez v12, :cond_2

    .line 1512
    move-object v12, v0

    move-object v13, v8

    invoke-direct {v12, v13}, Lcom/sun/javafx/css/StyleManager;->removeStylesheetContainer(Lcom/sun/javafx/css/StyleManager$StylesheetContainer;)V

    .line 1515
    move-object v12, v7

    invoke-static {v12}, Lcom/sun/javafx/css/StyleManager;->loadStylesheet(Ljava/lang/String;)Lcom/sun/javafx/css/Stylesheet;

    move-result-object v12

    move-object v10, v12

    .line 1516
    .local v10, "stylesheet":Lcom/sun/javafx/css/Stylesheet;
    new-instance v12, Lcom/sun/javafx/css/StyleManager$StylesheetContainer;

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    move-object v14, v7

    move-object v15, v10

    move-object/from16 v16, v9

    invoke-direct/range {v13 .. v16}, Lcom/sun/javafx/css/StyleManager$StylesheetContainer;-><init>(Ljava/lang/String;Lcom/sun/javafx/css/Stylesheet;[B)V

    move-object v8, v12

    .line 1517
    move-object v12, v0

    iget-object v12, v12, Lcom/sun/javafx/css/StyleManager;->stylesheetContainerMap:Ljava/util/Map;

    move-object v13, v7

    move-object v14, v8

    invoke-interface {v12, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    .line 1518
    .line 1522
    .end local v9    # "checksum":[B
    .end local v10    # "stylesheet":Lcom/sun/javafx/css/Stylesheet;
    :cond_0
    :goto_1
    move-object v12, v4

    move-object v13, v8

    invoke-interface {v12, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v12

    .line 1528
    :cond_1
    move-object v12, v8

    iget-object v12, v12, Lcom/sun/javafx/css/StyleManager$StylesheetContainer;->parentUsers:Lcom/sun/javafx/css/StyleManager$RefList;

    move-object v13, v2

    invoke-virtual {v12, v13}, Lcom/sun/javafx/css/StyleManager$RefList;->add(Ljava/lang/Object;)V

    .line 1500
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1519
    .restart local v9    # "checksum":[B
    :cond_2
    move-object v12, v8

    const/4 v13, 0x0

    iput-boolean v13, v12, Lcom/sun/javafx/css/StyleManager$StylesheetContainer;->checksumInvalid:Z

    goto :goto_1

    .line 1547
    .end local v4    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/sun/javafx/css/StyleManager$StylesheetContainer;>;"
    .end local v5    # "n":I
    .end local v6    # "nMax":I
    .end local v7    # "fname":Ljava/lang/String;
    .end local v8    # "container":Lcom/sun/javafx/css/StyleManager$StylesheetContainer;
    .end local v9    # "checksum":[B
    :catchall_0
    move-exception v12

    move-object v11, v12

    move-object v12, v3

    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v12, v11

    throw v12

    .line 1531
    .restart local v4    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/sun/javafx/css/StyleManager$StylesheetContainer;>;"
    .restart local v5    # "n":I
    .restart local v6    # "nMax":I
    .restart local v7    # "fname":Ljava/lang/String;
    .restart local v8    # "container":Lcom/sun/javafx/css/StyleManager$StylesheetContainer;
    :cond_3
    move-object v12, v7

    :try_start_1
    invoke-static {v12}, Lcom/sun/javafx/css/StyleManager;->loadStylesheet(Ljava/lang/String;)Lcom/sun/javafx/css/Stylesheet;

    move-result-object v12

    move-object v9, v12

    .line 1536
    .local v9, "stylesheet":Lcom/sun/javafx/css/Stylesheet;
    new-instance v12, Lcom/sun/javafx/css/StyleManager$StylesheetContainer;

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    move-object v14, v7

    move-object v15, v9

    invoke-direct {v13, v14, v15}, Lcom/sun/javafx/css/StyleManager$StylesheetContainer;-><init>(Ljava/lang/String;Lcom/sun/javafx/css/Stylesheet;)V

    move-object v8, v12

    .line 1540
    move-object v12, v8

    iget-object v12, v12, Lcom/sun/javafx/css/StyleManager$StylesheetContainer;->parentUsers:Lcom/sun/javafx/css/StyleManager$RefList;

    move-object v13, v2

    invoke-virtual {v12, v13}, Lcom/sun/javafx/css/StyleManager$RefList;->add(Ljava/lang/Object;)V

    .line 1541
    move-object v12, v0

    iget-object v12, v12, Lcom/sun/javafx/css/StyleManager;->stylesheetContainerMap:Ljava/util/Map;

    move-object v13, v7

    move-object v14, v8

    invoke-interface {v12, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    .line 1543
    move-object v12, v4

    move-object v13, v8

    invoke-interface {v12, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v12

    goto :goto_2

    .line 1546
    .end local v7    # "fname":Ljava/lang/String;
    .end local v8    # "container":Lcom/sun/javafx/css/StyleManager$StylesheetContainer;
    .end local v9    # "stylesheet":Lcom/sun/javafx/css/Stylesheet;
    :cond_4
    move-object v12, v4

    move-object v13, v3

    monitor-exit v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v12

    .end local v0    # "this":Lcom/sun/javafx/css/StyleManager;
    return-object v0
.end method

.method private removeStylesheetContainer(Lcom/sun/javafx/css/StyleManager$StylesheetContainer;)V
    .locals 15

    .prologue
    .line 680
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/StyleManager;
    move-object/from16 v1, p1

    .local v1, "stylesheetContainer":Lcom/sun/javafx/css/StyleManager$StylesheetContainer;
    move-object v12, v1

    if-nez v12, :cond_0

    .line 741
    :goto_0
    return-void

    .line 682
    :cond_0
    sget-object v12, Lcom/sun/javafx/css/StyleManager;->styleLock:Ljava/lang/Object;

    move-object v14, v12

    move-object v12, v14

    move-object v13, v14

    move-object v2, v13

    monitor-enter v12

    .line 683
    move-object v12, v1

    :try_start_0
    iget-object v12, v12, Lcom/sun/javafx/css/StyleManager$StylesheetContainer;->fname:Ljava/lang/String;

    move-object v3, v12

    .line 685
    .local v3, "fname":Ljava/lang/String;
    move-object v12, v0

    iget-object v12, v12, Lcom/sun/javafx/css/StyleManager;->stylesheetContainerMap:Ljava/util/Map;

    move-object v13, v3

    invoke-interface {v12, v13}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    .line 687
    move-object v12, v1

    iget-object v12, v12, Lcom/sun/javafx/css/StyleManager$StylesheetContainer;->selectorPartitioning:Lcom/sun/javafx/css/SelectorPartitioning;

    if-eqz v12, :cond_1

    .line 688
    move-object v12, v1

    iget-object v12, v12, Lcom/sun/javafx/css/StyleManager$StylesheetContainer;->selectorPartitioning:Lcom/sun/javafx/css/SelectorPartitioning;

    invoke-virtual {v12}, Lcom/sun/javafx/css/SelectorPartitioning;->reset()V

    .line 692
    :cond_1
    sget-object v12, Lcom/sun/javafx/css/StyleManager;->cacheContainerMap:Ljava/util/Map;

    invoke-interface {v12}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    move-object v4, v12

    :cond_2
    :goto_1
    move-object v12, v4

    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_9

    move-object v12, v4

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map$Entry;

    move-object v5, v12

    .line 694
    .local v5, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljavafx/scene/Parent;Lcom/sun/javafx/css/StyleManager$CacheContainer;>;"
    move-object v12, v5

    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/sun/javafx/css/StyleManager$CacheContainer;

    move-object v6, v12

    .line 695
    .local v6, "container":Lcom/sun/javafx/css/StyleManager$CacheContainer;
    move-object v12, v6

    if-eqz v12, :cond_2

    move-object v12, v6

    invoke-static {v12}, Lcom/sun/javafx/css/StyleManager$CacheContainer;->access$300(Lcom/sun/javafx/css/StyleManager$CacheContainer;)Ljava/util/Map;

    move-result-object v12

    if-eqz v12, :cond_2

    move-object v12, v6

    invoke-static {v12}, Lcom/sun/javafx/css/StyleManager$CacheContainer;->access$300(Lcom/sun/javafx/css/StyleManager$CacheContainer;)Ljava/util/Map;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Map;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_3

    .line 696
    goto :goto_1

    .line 699
    :cond_3
    new-instance v12, Ljava/util/ArrayList;

    move-object v14, v12

    move-object v12, v14

    move-object v13, v14

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    move-object v7, v12

    .line 701
    .local v7, "entriesToRemove":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/String;>;>;"
    move-object v12, v6

    invoke-static {v12}, Lcom/sun/javafx/css/StyleManager$CacheContainer;->access$300(Lcom/sun/javafx/css/StyleManager$CacheContainer;)Ljava/util/Map;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    move-object v8, v12

    :goto_2
    move-object v12, v8

    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_6

    move-object v12, v8

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map$Entry;

    move-object v9, v12

    .line 702
    .local v9, "cacheMapEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/util/List<Ljava/lang/String;>;Ljava/util/Map<Lcom/sun/javafx/css/StyleManager$Key;Lcom/sun/javafx/css/StyleManager$Cache;>;>;"
    move-object v12, v9

    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/List;

    move-object v10, v12

    .line 703
    .local v10, "cacheMapKey":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object v12, v10

    if-eqz v12, :cond_5

    move-object v12, v10

    move-object v13, v3

    invoke-interface {v12, v13}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 704
    :goto_3
    move-object v12, v7

    move-object v13, v10

    invoke-interface {v12, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v12

    .line 706
    :cond_4
    goto :goto_2

    .line 703
    :cond_5
    move-object v12, v3

    if-nez v12, :cond_4

    goto :goto_3

    .line 708
    .end local v9    # "cacheMapEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/util/List<Ljava/lang/String;>;Ljava/util/Map<Lcom/sun/javafx/css/StyleManager$Key;Lcom/sun/javafx/css/StyleManager$Cache;>;>;"
    .end local v10    # "cacheMapKey":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_6
    move-object v12, v7

    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_8

    .line 709
    move-object v12, v7

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    move-object v8, v12

    :goto_4
    move-object v12, v8

    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_8

    move-object v12, v8

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/List;

    move-object v9, v12

    .line 710
    .local v9, "cacheMapKey":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object v12, v6

    invoke-static {v12}, Lcom/sun/javafx/css/StyleManager$CacheContainer;->access$300(Lcom/sun/javafx/css/StyleManager$CacheContainer;)Ljava/util/Map;

    move-result-object v12

    move-object v13, v9

    invoke-interface {v12, v13}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map;

    move-object v10, v12

    .line 711
    .local v10, "cacheEntry":Ljava/util/Map;, "Ljava/util/Map<Lcom/sun/javafx/css/StyleManager$Key;Lcom/sun/javafx/css/StyleManager$Cache;>;"
    move-object v12, v10

    if-eqz v12, :cond_7

    .line 712
    move-object v12, v10

    invoke-interface {v12}, Ljava/util/Map;->clear()V

    .line 714
    :cond_7
    goto :goto_4

    .line 716
    .end local v9    # "cacheMapKey":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v10    # "cacheEntry":Ljava/util/Map;, "Ljava/util/Map<Lcom/sun/javafx/css/StyleManager$Key;Lcom/sun/javafx/css/StyleManager$Cache;>;"
    :cond_8
    goto/16 :goto_1

    .line 720
    .end local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljavafx/scene/Parent;Lcom/sun/javafx/css/StyleManager$CacheContainer;>;"
    .end local v6    # "container":Lcom/sun/javafx/css/StyleManager$CacheContainer;
    .end local v7    # "entriesToRemove":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/String;>;>;"
    :cond_9
    move-object v12, v0

    move-object v13, v3

    invoke-direct {v12, v13}, Lcom/sun/javafx/css/StyleManager;->cleanUpImageCache(Ljava/lang/String;)V

    .line 722
    move-object v12, v1

    iget-object v12, v12, Lcom/sun/javafx/css/StyleManager$StylesheetContainer;->parentUsers:Lcom/sun/javafx/css/StyleManager$RefList;

    iget-object v12, v12, Lcom/sun/javafx/css/StyleManager$RefList;->list:Ljava/util/List;

    move-object v4, v12

    .line 724
    .local v4, "parentList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/ref/Reference<Ljavafx/scene/Parent;>;>;"
    move-object v12, v4

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    const/4 v13, 0x1

    add-int/lit8 v12, v12, -0x1

    move v5, v12

    .local v5, "n":I
    :goto_5
    const/4 v12, 0x0

    move v13, v5

    if-gt v12, v13, :cond_c

    .line 726
    move-object v12, v4

    move v13, v5

    invoke-interface {v12, v13}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/ref/Reference;

    move-object v6, v12

    .line 727
    .local v6, "ref":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<Ljavafx/scene/Parent;>;"
    move-object v12, v6

    invoke-virtual {v12}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljavafx/scene/Parent;

    move-object v7, v12

    .line 728
    .local v7, "parent":Ljavafx/scene/Parent;
    move-object v12, v6

    invoke-virtual {v12}, Ljava/lang/ref/Reference;->clear()V

    .line 729
    move-object v12, v7

    if-eqz v12, :cond_a

    move-object v12, v7

    invoke-virtual {v12}, Ljavafx/scene/Parent;->getScene()Ljavafx/scene/Scene;

    move-result-object v12

    if-nez v12, :cond_b

    .line 730
    .line 724
    :cond_a
    :goto_6
    add-int/lit8 v5, v5, -0x1

    goto :goto_5

    .line 738
    :cond_b
    move-object v12, v7

    invoke-virtual {v12}, Ljavafx/scene/Parent;->impl_reapplyCSS()V

    goto :goto_6

    .line 740
    .end local v3    # "fname":Ljava/lang/String;
    .end local v4    # "parentList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/ref/Reference<Ljavafx/scene/Parent;>;>;"
    .end local v5    # "n":I
    .end local v6    # "ref":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<Ljavafx/scene/Parent;>;"
    .end local v7    # "parent":Ljavafx/scene/Parent;
    :catchall_0
    move-exception v12

    move-object v11, v12

    move-object v12, v2

    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v12, v11

    throw v12

    .restart local v3    # "fname":Ljava/lang/String;
    .restart local v4    # "parentList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/ref/Reference<Ljavafx/scene/Parent;>;>;"
    .restart local v5    # "n":I
    :cond_c
    move-object v12, v2

    :try_start_1
    monitor-exit v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 741
    goto/16 :goto_0
.end method

.method private stylesheetRemoved(Ljavafx/scene/Parent;Ljava/lang/String;)V
    .locals 9

    .prologue
    .line 592
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/StyleManager;
    move-object v1, p1

    .local v1, "parent":Ljavafx/scene/Parent;
    move-object v2, p2

    .local v2, "fname":Ljava/lang/String;
    sget-object v6, Lcom/sun/javafx/css/StyleManager;->styleLock:Ljava/lang/Object;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    move-object v3, v7

    monitor-enter v6

    .line 593
    move-object v6, v0

    :try_start_0
    iget-object v6, v6, Lcom/sun/javafx/css/StyleManager;->stylesheetContainerMap:Ljava/util/Map;

    move-object v7, v2

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sun/javafx/css/StyleManager$StylesheetContainer;

    move-object v4, v6

    .line 595
    .local v4, "stylesheetContainer":Lcom/sun/javafx/css/StyleManager$StylesheetContainer;
    move-object v6, v4

    if-nez v6, :cond_0

    move-object v6, v3

    monitor-exit v6

    .line 603
    :goto_0
    return-void

    .line 597
    :cond_0
    move-object v6, v4

    iget-object v6, v6, Lcom/sun/javafx/css/StyleManager$StylesheetContainer;->parentUsers:Lcom/sun/javafx/css/StyleManager$RefList;

    move-object v7, v1

    invoke-virtual {v6, v7}, Lcom/sun/javafx/css/StyleManager$RefList;->remove(Ljava/lang/Object;)V

    .line 599
    move-object v6, v4

    iget-object v6, v6, Lcom/sun/javafx/css/StyleManager$StylesheetContainer;->parentUsers:Lcom/sun/javafx/css/StyleManager$RefList;

    iget-object v6, v6, Lcom/sun/javafx/css/StyleManager$RefList;->list:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 600
    move-object v6, v0

    move-object v7, v4

    invoke-direct {v6, v7}, Lcom/sun/javafx/css/StyleManager;->removeStylesheetContainer(Lcom/sun/javafx/css/StyleManager$StylesheetContainer;)V

    .line 602
    :cond_1
    move-object v6, v3

    monitor-exit v6

    .line 603
    goto :goto_0

    .line 602
    .end local v4    # "stylesheetContainer":Lcom/sun/javafx/css/StyleManager$StylesheetContainer;
    :catchall_0
    move-exception v6

    move-object v5, v6

    move-object v6, v3

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v6, v5

    throw v6
.end method

.method private stylesheetRemoved(Ljavafx/scene/Scene;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 519
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/StyleManager;
    move-object v1, p1

    .local v1, "scene":Ljavafx/scene/Scene;
    move-object v2, p2

    .local v2, "fname":Ljava/lang/String;
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/Scene;->getRoot()Ljavafx/scene/Parent;

    move-result-object v4

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Lcom/sun/javafx/css/StyleManager;->stylesheetRemoved(Ljavafx/scene/Parent;Ljava/lang/String;)V

    .line 520
    return-void
.end method

.method private userAgentStylesheetsChanged()V
    .locals 9

    .prologue
    .line 1476
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/StyleManager;
    new-instance v6, Ljava/util/ArrayList;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v6

    .line 1478
    .local v1, "parents":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/Parent;>;"
    sget-object v6, Lcom/sun/javafx/css/StyleManager;->styleLock:Ljava/lang/Object;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    move-object v2, v7

    monitor-enter v6

    .line 1479
    :try_start_0
    sget-object v6, Lcom/sun/javafx/css/StyleManager;->cacheContainerMap:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-object v3, v6

    :goto_0
    move-object v6, v3

    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    move-object v6, v3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sun/javafx/css/StyleManager$CacheContainer;

    move-object v4, v6

    .line 1480
    .local v4, "container":Lcom/sun/javafx/css/StyleManager$CacheContainer;
    move-object v6, v4

    invoke-static {v6}, Lcom/sun/javafx/css/StyleManager$CacheContainer;->access$200(Lcom/sun/javafx/css/StyleManager$CacheContainer;)V

    .line 1481
    goto :goto_0

    .line 1483
    .end local v4    # "container":Lcom/sun/javafx/css/StyleManager$CacheContainer;
    :cond_0
    invoke-static {}, Lcom/sun/javafx/css/StyleConverterImpl;->clearCache()V

    .line 1485
    sget-object v6, Lcom/sun/javafx/css/StyleManager;->cacheContainerMap:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-object v3, v6

    :goto_1
    move-object v6, v3

    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    move-object v6, v3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljavafx/scene/Parent;

    move-object v4, v6

    .line 1486
    .local v4, "root":Ljavafx/scene/Parent;
    move-object v6, v4

    if-nez v6, :cond_1

    .line 1487
    goto :goto_1

    .line 1489
    :cond_1
    move-object v6, v1

    move-object v7, v4

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v6

    .line 1490
    goto :goto_1

    .line 1491
    .end local v4    # "root":Ljavafx/scene/Parent;
    :cond_2
    move-object v6, v2

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1493
    move-object v6, v1

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-object v2, v6

    :goto_2
    move-object v6, v2

    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    move-object v6, v2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljavafx/scene/Parent;

    move-object v3, v6

    .local v3, "root":Ljavafx/scene/Parent;
    move-object v6, v3

    invoke-virtual {v6}, Ljavafx/scene/Parent;->impl_reapplyCSS()V

    goto :goto_2

    .line 1491
    .end local v3    # "root":Ljavafx/scene/Parent;
    :catchall_0
    move-exception v6

    move-object v5, v6

    move-object v6, v2

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v6, v5

    throw v6

    .line 1494
    :cond_3
    return-void
.end method


# virtual methods
.method public addUserAgentStylesheet(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 1221
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/StyleManager;
    move-object v1, p1

    .local v1, "fname":Ljava/lang/String;
    move-object v2, v0

    const/4 v3, 0x0

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Lcom/sun/javafx/css/StyleManager;->addUserAgentStylesheet(Ljavafx/scene/Scene;Ljava/lang/String;)V

    .line 1222
    return-void
.end method

.method public addUserAgentStylesheet(Ljavafx/scene/Scene;Lcom/sun/javafx/css/Stylesheet;)V
    .locals 16

    .prologue
    .line 1281
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/javafx/css/StyleManager;
    move-object/from16 v1, p1

    .local v1, "scene":Ljavafx/scene/Scene;
    move-object/from16 v2, p2

    .local v2, "ua_stylesheet":Lcom/sun/javafx/css/Stylesheet;
    move-object v10, v2

    if-nez v10, :cond_0

    .line 1282
    new-instance v10, Ljava/lang/IllegalArgumentException;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    const-string v12, "null arg ua_stylesheet"

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 1286
    :cond_0
    move-object v10, v2

    invoke-virtual {v10}, Lcom/sun/javafx/css/Stylesheet;->getUrl()Ljava/lang/String;

    move-result-object v10

    move-object v3, v10

    .line 1287
    .local v3, "url":Ljava/lang/String;
    move-object v10, v3

    if-eqz v10, :cond_1

    move-object v10, v3

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    :goto_0
    move-object v4, v10

    .line 1289
    .local v4, "fname":Ljava/lang/String;
    sget-object v10, Lcom/sun/javafx/css/StyleManager;->styleLock:Ljava/lang/Object;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    move-object v5, v11

    monitor-enter v10

    .line 1291
    const/4 v10, 0x0

    move v6, v10

    .local v6, "n":I
    move-object v10, v0

    :try_start_0
    iget-object v10, v10, Lcom/sun/javafx/css/StyleManager;->platformUserAgentStylesheetContainers:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    move v7, v10

    .local v7, "nMax":I
    :goto_1
    move v10, v6

    move v11, v7

    if-ge v10, v11, :cond_3

    .line 1292
    move-object v10, v0

    iget-object v10, v10, Lcom/sun/javafx/css/StyleManager;->platformUserAgentStylesheetContainers:Ljava/util/List;

    move v11, v6

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/sun/javafx/css/StyleManager$StylesheetContainer;

    move-object v8, v10

    .line 1293
    .local v8, "container":Lcom/sun/javafx/css/StyleManager$StylesheetContainer;
    move-object v10, v4

    move-object v11, v8

    iget-object v11, v11, Lcom/sun/javafx/css/StyleManager$StylesheetContainer;->fname:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 1294
    move-object v10, v5

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1311
    .end local v8    # "container":Lcom/sun/javafx/css/StyleManager$StylesheetContainer;
    :goto_2
    return-void

    .line 1287
    .end local v4    # "fname":Ljava/lang/String;
    .end local v6    # "n":I
    .end local v7    # "nMax":I
    :cond_1
    const-string v10, ""

    goto :goto_0

    .line 1291
    .restart local v4    # "fname":Ljava/lang/String;
    .restart local v6    # "n":I
    .restart local v7    # "nMax":I
    .restart local v8    # "container":Lcom/sun/javafx/css/StyleManager$StylesheetContainer;
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 1299
    .end local v8    # "container":Lcom/sun/javafx/css/StyleManager$StylesheetContainer;
    :cond_3
    move-object v10, v1

    :try_start_1
    invoke-static {v10}, Lcom/sun/javafx/css/CssError;->setCurrentScene(Ljavafx/scene/Scene;)V

    .line 1301
    move-object v10, v0

    iget-object v10, v10, Lcom/sun/javafx/css/StyleManager;->platformUserAgentStylesheetContainers:Ljava/util/List;

    new-instance v11, Lcom/sun/javafx/css/StyleManager$StylesheetContainer;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    move-object v13, v4

    move-object v14, v2

    invoke-direct {v12, v13, v14}, Lcom/sun/javafx/css/StyleManager$StylesheetContainer;-><init>(Ljava/lang/String;Lcom/sun/javafx/css/Stylesheet;)V

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v10

    .line 1303
    move-object v10, v2

    if-eqz v10, :cond_4

    .line 1304
    move-object v10, v2

    sget-object v11, Ljavafx/css/StyleOrigin;->USER_AGENT:Ljavafx/css/StyleOrigin;

    invoke-virtual {v10, v11}, Lcom/sun/javafx/css/Stylesheet;->setOrigin(Ljavafx/css/StyleOrigin;)V

    .line 1306
    :cond_4
    move-object v10, v0

    invoke-direct {v10}, Lcom/sun/javafx/css/StyleManager;->userAgentStylesheetsChanged()V

    .line 1309
    const/4 v10, 0x0

    invoke-static {v10}, Lcom/sun/javafx/css/CssError;->setCurrentScene(Ljavafx/scene/Scene;)V

    .line 1310
    move-object v10, v5

    monitor-exit v10

    .line 1311
    goto :goto_2

    .line 1310
    .end local v7    # "nMax":I
    :catchall_0
    move-exception v10

    move-object v9, v10

    move-object v10, v5

    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v10, v9

    throw v10
.end method

.method public addUserAgentStylesheet(Ljavafx/scene/Scene;Ljava/lang/String;)V
    .locals 9

    .prologue
    .line 1233
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/StyleManager;
    move-object v1, p1

    .local v1, "scene":Ljavafx/scene/Scene;
    move-object v2, p2

    .local v2, "url":Ljava/lang/String;
    move-object v6, v2

    if-eqz v6, :cond_1

    move-object v6, v2

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    :goto_0
    move-object v3, v6

    .line 1234
    .local v3, "fname":Ljava/lang/String;
    move-object v6, v3

    if-eqz v6, :cond_0

    move-object v6, v3

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1235
    .line 1249
    :cond_0
    :goto_1
    return-void

    .line 1233
    .end local v3    # "fname":Ljava/lang/String;
    :cond_1
    const/4 v6, 0x0

    goto :goto_0

    .line 1238
    .restart local v3    # "fname":Ljava/lang/String;
    :cond_2
    sget-object v6, Lcom/sun/javafx/css/StyleManager;->styleLock:Ljava/lang/Object;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    move-object v4, v7

    monitor-enter v6

    .line 1240
    move-object v6, v1

    :try_start_0
    invoke-static {v6}, Lcom/sun/javafx/css/CssError;->setCurrentScene(Ljavafx/scene/Scene;)V

    .line 1242
    move-object v6, v0

    move-object v7, v3

    invoke-direct {v6, v7}, Lcom/sun/javafx/css/StyleManager;->_addUserAgentStylesheet(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1243
    move-object v6, v0

    invoke-direct {v6}, Lcom/sun/javafx/css/StyleManager;->userAgentStylesheetsChanged()V

    .line 1247
    :cond_3
    const/4 v6, 0x0

    invoke-static {v6}, Lcom/sun/javafx/css/CssError;->setCurrentScene(Ljavafx/scene/Scene;)V

    .line 1248
    move-object v6, v4

    monitor-exit v6

    .line 1249
    goto :goto_1

    .line 1248
    :catchall_0
    move-exception v6

    move-object v5, v6

    move-object v6, v4

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v6, v5

    throw v6
.end method

.method public findMatchingStyles(Ljavafx/scene/Node;Ljavafx/scene/SubScene;[Ljava/util/Set;)Lcom/sun/javafx/css/StyleMap;
    .locals 40
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/Node;",
            "Ljavafx/scene/SubScene;",
            "[",
            "Ljava/util/Set",
            "<",
            "Ljavafx/css/PseudoClass;",
            ">;)",
            "Lcom/sun/javafx/css/StyleMap;"
        }
    .end annotation

    .prologue
    .line 1617
    move-object/from16 v2, p0

    .local v2, "this":Lcom/sun/javafx/css/StyleManager;
    move-object/from16 v3, p1

    .local v3, "node":Ljavafx/scene/Node;
    move-object/from16 v4, p2

    .local v4, "subScene":Ljavafx/scene/SubScene;
    move-object/from16 v5, p3

    .local v5, "triggerStates":[Ljava/util/Set;, "[Ljava/util/Set<Ljavafx/css/PseudoClass;>;"
    move-object/from16 v34, v3

    invoke-virtual/range {v34 .. v34}, Ljavafx/scene/Node;->getScene()Ljavafx/scene/Scene;

    move-result-object v34

    move-object/from16 v6, v34

    .line 1618
    .local v6, "scene":Ljavafx/scene/Scene;
    move-object/from16 v34, v6

    if-nez v34, :cond_0

    .line 1619
    sget-object v34, Lcom/sun/javafx/css/StyleMap;->EMPTY_MAP:Lcom/sun/javafx/css/StyleMap;

    move-object/from16 v2, v34

    .line 1838
    .end local v2    # "this":Lcom/sun/javafx/css/StyleManager;
    :goto_0
    return-object v2

    .line 1622
    .restart local v2    # "this":Lcom/sun/javafx/css/StyleManager;
    :cond_0
    move-object/from16 v34, v2

    move-object/from16 v35, v3

    move-object/from16 v36, v4

    invoke-virtual/range {v34 .. v36}, Lcom/sun/javafx/css/StyleManager;->getCacheContainer(Ljavafx/css/Styleable;Ljavafx/scene/SubScene;)Lcom/sun/javafx/css/StyleManager$CacheContainer;

    move-result-object v34

    move-object/from16 v7, v34

    .line 1623
    .local v7, "cacheContainer":Lcom/sun/javafx/css/StyleManager$CacheContainer;
    move-object/from16 v34, v7

    if-nez v34, :cond_2

    .line 1624
    sget-boolean v34, Lcom/sun/javafx/css/StyleManager;->$assertionsDisabled:Z

    if-nez v34, :cond_1

    new-instance v34, Ljava/lang/AssertionError;

    move-object/from16 v39, v34

    move-object/from16 v34, v39

    move-object/from16 v35, v39

    move-object/from16 v36, v3

    invoke-virtual/range {v36 .. v36}, Ljavafx/scene/Node;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-direct/range {v35 .. v36}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v34

    .line 1625
    :cond_1
    sget-object v34, Lcom/sun/javafx/css/StyleMap;->EMPTY_MAP:Lcom/sun/javafx/css/StyleMap;

    move-object/from16 v2, v34

    goto :goto_0

    .line 1628
    :cond_2
    sget-object v34, Lcom/sun/javafx/css/StyleManager;->styleLock:Ljava/lang/Object;

    move-object/from16 v39, v34

    move-object/from16 v34, v39

    move-object/from16 v35, v39

    move-object/from16 v8, v35

    monitor-enter v34

    .line 1629
    move-object/from16 v34, v3

    :try_start_0
    move-object/from16 v0, v34

    instance-of v0, v0, Ljavafx/scene/Parent;

    move/from16 v34, v0

    if-eqz v34, :cond_4

    move-object/from16 v34, v3

    check-cast v34, Ljavafx/scene/Parent;

    .line 1631
    :goto_1
    move-object/from16 v9, v34

    .line 1633
    .local v9, "parent":Ljavafx/scene/Parent;
    move-object/from16 v34, v2

    move-object/from16 v35, v9

    .line 1634
    invoke-direct/range {v34 .. v35}, Lcom/sun/javafx/css/StyleManager;->gatherParentStylesheets(Ljavafx/scene/Parent;)Ljava/util/List;

    move-result-object v34

    move-object/from16 v10, v34

    .line 1636
    .local v10, "parentStylesheets":Ljava/util/List;, "Ljava/util/List<Lcom/sun/javafx/css/StyleManager$StylesheetContainer;>;"
    move-object/from16 v34, v10

    invoke-interface/range {v34 .. v34}, Ljava/util/List;->isEmpty()Z

    move-result v34

    if-nez v34, :cond_5

    const/16 v34, 0x1

    :goto_2
    move/from16 v11, v34

    .line 1638
    .local v11, "hasParentStylesheets":Z
    move-object/from16 v34, v2

    move-object/from16 v35, v6

    invoke-direct/range {v34 .. v35}, Lcom/sun/javafx/css/StyleManager;->gatherSceneStylesheets(Ljavafx/scene/Scene;)Ljava/util/List;

    move-result-object v34

    move-object/from16 v12, v34

    .line 1640
    .local v12, "sceneStylesheets":Ljava/util/List;, "Ljava/util/List<Lcom/sun/javafx/css/StyleManager$StylesheetContainer;>;"
    move-object/from16 v34, v12

    invoke-interface/range {v34 .. v34}, Ljava/util/List;->isEmpty()Z

    move-result v34

    if-nez v34, :cond_6

    const/16 v34, 0x1

    :goto_3
    move/from16 v13, v34

    .line 1642
    .local v13, "hasSceneStylesheets":Z
    move-object/from16 v34, v3

    invoke-virtual/range {v34 .. v34}, Ljavafx/scene/Node;->getStyle()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v14, v34

    .line 1643
    .local v14, "inlineStyle":Ljava/lang/String;
    move-object/from16 v34, v14

    if-eqz v34, :cond_7

    move-object/from16 v34, v14

    invoke-virtual/range {v34 .. v34}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/String;->isEmpty()Z

    move-result v34

    if-nez v34, :cond_7

    const/16 v34, 0x1

    :goto_4
    move/from16 v15, v34

    .line 1645
    .local v15, "hasInlineStyles":Z
    move-object/from16 v34, v6

    invoke-virtual/range {v34 .. v34}, Ljavafx/scene/Scene;->getUserAgentStylesheet()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v16, v34

    .line 1646
    .local v16, "sceneUserAgentStylesheet":Ljava/lang/String;
    move-object/from16 v34, v16

    if-eqz v34, :cond_8

    move-object/from16 v34, v16

    .line 1647
    invoke-virtual/range {v34 .. v34}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/String;->isEmpty()Z

    move-result v34

    if-nez v34, :cond_8

    const/16 v34, 0x1

    :goto_5
    move/from16 v17, v34

    .line 1649
    .local v17, "hasSceneUserAgentStylesheet":Z
    move-object/from16 v34, v4

    if-eqz v34, :cond_9

    move-object/from16 v34, v4

    .line 1650
    invoke-virtual/range {v34 .. v34}, Ljavafx/scene/SubScene;->getUserAgentStylesheet()Ljava/lang/String;

    move-result-object v34

    :goto_6
    move-object/from16 v18, v34

    .line 1651
    .local v18, "subSceneUserAgentStylesheet":Ljava/lang/String;
    move-object/from16 v34, v18

    if-eqz v34, :cond_a

    move-object/from16 v34, v18

    .line 1652
    invoke-virtual/range {v34 .. v34}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/String;->isEmpty()Z

    move-result v34

    if-nez v34, :cond_a

    const/16 v34, 0x1

    :goto_7
    move/from16 v19, v34

    .line 1654
    .local v19, "hasSubSceneUserAgentStylesheet":Z
    const/16 v34, 0x0

    move-object/from16 v20, v34

    .line 1656
    .local v20, "regionUserAgentStylesheet":Ljava/lang/String;
    move-object/from16 v34, v3

    move-object/from16 v21, v34

    .line 1657
    .local v21, "region":Ljavafx/scene/Node;
    :goto_8
    move-object/from16 v34, v21

    if-eqz v34, :cond_3

    .line 1658
    move-object/from16 v34, v21

    move-object/from16 v0, v34

    instance-of v0, v0, Ljavafx/scene/layout/Region;

    move/from16 v34, v0

    if-eqz v34, :cond_b

    move-object/from16 v34, v21

    check-cast v34, Ljavafx/scene/layout/Region;

    invoke-virtual/range {v34 .. v34}, Ljavafx/scene/layout/Region;->getUserAgentStylesheet()Ljava/lang/String;

    move-result-object v34

    :goto_9
    move-object/from16 v20, v34

    .line 1659
    move-object/from16 v34, v20

    if-eqz v34, :cond_c

    .line 1662
    .line 1668
    :cond_3
    move-object/from16 v34, v20

    if-eqz v34, :cond_d

    move-object/from16 v34, v20

    .line 1669
    invoke-virtual/range {v34 .. v34}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/String;->isEmpty()Z

    move-result v34

    if-nez v34, :cond_d

    const/16 v34, 0x1

    :goto_a
    move/from16 v22, v34

    .line 1676
    .local v22, "hasRegionUserAgentStylesheet":Z
    move/from16 v34, v15

    if-nez v34, :cond_e

    move/from16 v34, v11

    if-nez v34, :cond_e

    move/from16 v34, v13

    if-nez v34, :cond_e

    move/from16 v34, v17

    if-nez v34, :cond_e

    move/from16 v34, v19

    if-nez v34, :cond_e

    move/from16 v34, v22

    if-nez v34, :cond_e

    move-object/from16 v34, v2

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/sun/javafx/css/StyleManager;->platformUserAgentStylesheetContainers:Ljava/util/List;

    move-object/from16 v34, v0

    .line 1682
    invoke-interface/range {v34 .. v34}, Ljava/util/List;->isEmpty()Z

    move-result v34

    if-eqz v34, :cond_e

    .line 1683
    sget-object v34, Lcom/sun/javafx/css/StyleMap;->EMPTY_MAP:Lcom/sun/javafx/css/StyleMap;

    move-object/from16 v35, v8

    monitor-exit v35

    move-object/from16 v2, v34

    goto/16 :goto_0

    .line 1629
    .end local v9    # "parent":Ljavafx/scene/Parent;
    .end local v10    # "parentStylesheets":Ljava/util/List;, "Ljava/util/List<Lcom/sun/javafx/css/StyleManager$StylesheetContainer;>;"
    .end local v11    # "hasParentStylesheets":Z
    .end local v12    # "sceneStylesheets":Ljava/util/List;, "Ljava/util/List<Lcom/sun/javafx/css/StyleManager$StylesheetContainer;>;"
    .end local v13    # "hasSceneStylesheets":Z
    .end local v14    # "inlineStyle":Ljava/lang/String;
    .end local v15    # "hasInlineStyles":Z
    .end local v16    # "sceneUserAgentStylesheet":Ljava/lang/String;
    .end local v17    # "hasSceneUserAgentStylesheet":Z
    .end local v18    # "subSceneUserAgentStylesheet":Ljava/lang/String;
    .end local v19    # "hasSubSceneUserAgentStylesheet":Z
    .end local v20    # "regionUserAgentStylesheet":Ljava/lang/String;
    .end local v21    # "region":Ljavafx/scene/Node;
    .end local v22    # "hasRegionUserAgentStylesheet":Z
    :cond_4
    move-object/from16 v34, v3

    .line 1631
    invoke-virtual/range {v34 .. v34}, Ljavafx/scene/Node;->getParent()Ljavafx/scene/Parent;

    move-result-object v34

    goto/16 :goto_1

    .line 1636
    .restart local v9    # "parent":Ljavafx/scene/Parent;
    .restart local v10    # "parentStylesheets":Ljava/util/List;, "Ljava/util/List<Lcom/sun/javafx/css/StyleManager$StylesheetContainer;>;"
    :cond_5
    const/16 v34, 0x0

    goto/16 :goto_2

    .line 1640
    .restart local v11    # "hasParentStylesheets":Z
    .restart local v12    # "sceneStylesheets":Ljava/util/List;, "Ljava/util/List<Lcom/sun/javafx/css/StyleManager$StylesheetContainer;>;"
    :cond_6
    const/16 v34, 0x0

    goto/16 :goto_3

    .line 1643
    .restart local v13    # "hasSceneStylesheets":Z
    .restart local v14    # "inlineStyle":Ljava/lang/String;
    :cond_7
    const/16 v34, 0x0

    goto/16 :goto_4

    .line 1647
    .restart local v15    # "hasInlineStyles":Z
    .restart local v16    # "sceneUserAgentStylesheet":Ljava/lang/String;
    :cond_8
    const/16 v34, 0x0

    goto/16 :goto_5

    .line 1650
    .restart local v17    # "hasSceneUserAgentStylesheet":Z
    :cond_9
    const/16 v34, 0x0

    goto/16 :goto_6

    .line 1652
    .restart local v18    # "subSceneUserAgentStylesheet":Ljava/lang/String;
    :cond_a
    const/16 v34, 0x0

    goto/16 :goto_7

    .line 1658
    .restart local v19    # "hasSubSceneUserAgentStylesheet":Z
    .restart local v20    # "regionUserAgentStylesheet":Ljava/lang/String;
    .restart local v21    # "region":Ljavafx/scene/Node;
    :cond_b
    const/16 v34, 0x0

    goto :goto_9

    .line 1664
    :cond_c
    move-object/from16 v34, v21

    invoke-virtual/range {v34 .. v34}, Ljavafx/scene/Node;->getParent()Ljavafx/scene/Parent;

    move-result-object v34

    move-object/from16 v21, v34

    goto/16 :goto_8

    .line 1669
    :cond_d
    const/16 v34, 0x0

    goto :goto_a

    .line 1686
    .restart local v22    # "hasRegionUserAgentStylesheet":Z
    :cond_e
    move-object/from16 v34, v3

    invoke-virtual/range {v34 .. v34}, Ljavafx/scene/Node;->getTypeSelector()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v23, v34

    .line 1687
    .local v23, "cname":Ljava/lang/String;
    move-object/from16 v34, v3

    invoke-virtual/range {v34 .. v34}, Ljavafx/scene/Node;->getId()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v24, v34

    .line 1688
    .local v24, "id":Ljava/lang/String;
    move-object/from16 v34, v3

    invoke-virtual/range {v34 .. v34}, Ljavafx/scene/Node;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v34

    move-object/from16 v25, v34

    .line 1690
    .local v25, "styleClasses":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v34, v2

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/sun/javafx/css/StyleManager;->key:Lcom/sun/javafx/css/StyleManager$Key;

    move-object/from16 v34, v0

    if-nez v34, :cond_f

    .line 1691
    move-object/from16 v34, v2

    new-instance v35, Lcom/sun/javafx/css/StyleManager$Key;

    move-object/from16 v39, v35

    move-object/from16 v35, v39

    move-object/from16 v36, v39

    const/16 v37, 0x0

    invoke-direct/range {v36 .. v37}, Lcom/sun/javafx/css/StyleManager$Key;-><init>(Lcom/sun/javafx/css/StyleManager$1;)V

    move-object/from16 v0, v35

    move-object/from16 v1, v34

    iput-object v0, v1, Lcom/sun/javafx/css/StyleManager;->key:Lcom/sun/javafx/css/StyleManager$Key;

    .line 1694
    :cond_f
    move-object/from16 v34, v2

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/sun/javafx/css/StyleManager;->key:Lcom/sun/javafx/css/StyleManager$Key;

    move-object/from16 v34, v0

    move-object/from16 v35, v23

    move-object/from16 v0, v35

    move-object/from16 v1, v34

    iput-object v0, v1, Lcom/sun/javafx/css/StyleManager$Key;->className:Ljava/lang/String;

    .line 1695
    move-object/from16 v34, v2

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/sun/javafx/css/StyleManager;->key:Lcom/sun/javafx/css/StyleManager$Key;

    move-object/from16 v34, v0

    move-object/from16 v35, v24

    move-object/from16 v0, v35

    move-object/from16 v1, v34

    iput-object v0, v1, Lcom/sun/javafx/css/StyleManager$Key;->id:Ljava/lang/String;

    .line 1696
    const/16 v34, 0x0

    move/from16 v26, v34

    .local v26, "n":I
    move-object/from16 v34, v25

    invoke-interface/range {v34 .. v34}, Ljava/util/List;->size()I

    move-result v34

    move/from16 v27, v34

    .local v27, "nMax":I
    :goto_b
    move/from16 v34, v26

    move/from16 v35, v27

    move/from16 v0, v34

    move/from16 v1, v35

    if-ge v0, v1, :cond_12

    .line 1698
    move-object/from16 v34, v25

    move/from16 v35, v26

    invoke-interface/range {v34 .. v35}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Ljava/lang/String;

    move-object/from16 v28, v34

    .line 1699
    .local v28, "styleClass":Ljava/lang/String;
    move-object/from16 v34, v28

    if-eqz v34, :cond_10

    move-object/from16 v34, v28

    invoke-virtual/range {v34 .. v34}, Ljava/lang/String;->isEmpty()Z

    move-result v34

    if-eqz v34, :cond_11

    .line 1696
    :cond_10
    :goto_c
    add-int/lit8 v26, v26, 0x1

    goto :goto_b

    .line 1701
    :cond_11
    move-object/from16 v34, v2

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/sun/javafx/css/StyleManager;->key:Lcom/sun/javafx/css/StyleManager$Key;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/sun/javafx/css/StyleManager$Key;->styleClasses:Lcom/sun/javafx/css/StyleClassSet;

    move-object/from16 v34, v0

    move-object/from16 v35, v28

    invoke-static/range {v35 .. v35}, Lcom/sun/javafx/css/StyleClassSet;->getStyleClass(Ljava/lang/String;)Lcom/sun/javafx/css/StyleClass;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Lcom/sun/javafx/css/StyleClassSet;->add(Ljava/lang/Object;)Z

    move-result v34

    goto :goto_c

    .line 1704
    .end local v28    # "styleClass":Ljava/lang/String;
    :cond_12
    move-object/from16 v34, v7

    move-object/from16 v35, v10

    move-object/from16 v36, v20

    invoke-static/range {v34 .. v36}, Lcom/sun/javafx/css/StyleManager$CacheContainer;->access$500(Lcom/sun/javafx/css/StyleManager$CacheContainer;Ljava/util/List;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v34

    move-object/from16 v26, v34

    .line 1705
    .local v26, "cacheMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/sun/javafx/css/StyleManager$Key;Lcom/sun/javafx/css/StyleManager$Cache;>;"
    move-object/from16 v34, v26

    move-object/from16 v35, v2

    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/sun/javafx/css/StyleManager;->key:Lcom/sun/javafx/css/StyleManager$Key;

    move-object/from16 v35, v0

    invoke-interface/range {v34 .. v35}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Lcom/sun/javafx/css/StyleManager$Cache;

    move-object/from16 v27, v34

    .line 1707
    .local v27, "cache":Lcom/sun/javafx/css/StyleManager$Cache;
    move-object/from16 v34, v27

    if-eqz v34, :cond_13

    .line 1709
    move-object/from16 v34, v2

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/sun/javafx/css/StyleManager;->key:Lcom/sun/javafx/css/StyleManager$Key;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/sun/javafx/css/StyleManager$Key;->styleClasses:Lcom/sun/javafx/css/StyleClassSet;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Lcom/sun/javafx/css/StyleClassSet;->clear()V

    .line 1836
    :goto_d
    move-object/from16 v34, v27

    move-object/from16 v35, v7

    move-object/from16 v36, v3

    move-object/from16 v37, v5

    move/from16 v38, v15

    invoke-static/range {v34 .. v38}, Lcom/sun/javafx/css/StyleManager$Cache;->access$600(Lcom/sun/javafx/css/StyleManager$Cache;Lcom/sun/javafx/css/StyleManager$CacheContainer;Ljavafx/scene/Node;[Ljava/util/Set;Z)Lcom/sun/javafx/css/StyleMap;

    move-result-object v34

    move-object/from16 v28, v34

    .line 1838
    .local v28, "smap":Lcom/sun/javafx/css/StyleMap;
    move-object/from16 v34, v28

    move-object/from16 v35, v8

    monitor-exit v35

    move-object/from16 v2, v34

    goto/16 :goto_0

    .line 1717
    .end local v28    # "smap":Lcom/sun/javafx/css/StyleMap;
    :cond_13
    new-instance v34, Ljava/util/ArrayList;

    move-object/from16 v39, v34

    move-object/from16 v34, v39

    move-object/from16 v35, v39

    invoke-direct/range {v35 .. v35}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v28, v34

    .line 1720
    .local v28, "selectorData":Ljava/util/List;, "Ljava/util/List<Lcom/sun/javafx/css/Selector;>;"
    move/from16 v34, v19

    if-nez v34, :cond_14

    move/from16 v34, v17

    if-eqz v34, :cond_21

    .line 1723
    :cond_14
    move/from16 v34, v19

    if-eqz v34, :cond_1e

    move-object/from16 v34, v4

    .line 1724
    invoke-virtual/range {v34 .. v34}, Ljavafx/scene/SubScene;->getUserAgentStylesheet()Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v34

    .line 1725
    :goto_e
    move-object/from16 v29, v34

    .line 1728
    .local v29, "uaFileName":Ljava/lang/String;
    const/16 v34, 0x0

    move-object/from16 v30, v34

    .line 1729
    .local v30, "container":Lcom/sun/javafx/css/StyleManager$StylesheetContainer;
    const/16 v34, 0x0

    move/from16 v31, v34

    .local v31, "n":I
    move-object/from16 v34, v2

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/sun/javafx/css/StyleManager;->userAgentStylesheetContainers:Ljava/util/List;

    move-object/from16 v34, v0

    invoke-interface/range {v34 .. v34}, Ljava/util/List;->size()I

    move-result v34

    move/from16 v32, v34

    .local v32, "nMax":I
    :goto_f
    move/from16 v34, v31

    move/from16 v35, v32

    move/from16 v0, v34

    move/from16 v1, v35

    if-ge v0, v1, :cond_15

    .line 1730
    move-object/from16 v34, v2

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/sun/javafx/css/StyleManager;->userAgentStylesheetContainers:Ljava/util/List;

    move-object/from16 v34, v0

    move/from16 v35, v31

    invoke-interface/range {v34 .. v35}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Lcom/sun/javafx/css/StyleManager$StylesheetContainer;

    move-object/from16 v30, v34

    .line 1731
    move-object/from16 v34, v29

    move-object/from16 v35, v30

    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/sun/javafx/css/StyleManager$StylesheetContainer;->fname:Ljava/lang/String;

    move-object/from16 v35, v0

    invoke-virtual/range {v34 .. v35}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_1f

    .line 1732
    .line 1737
    :cond_15
    move-object/from16 v34, v30

    if-nez v34, :cond_17

    .line 1738
    move-object/from16 v34, v29

    invoke-static/range {v34 .. v34}, Lcom/sun/javafx/css/StyleManager;->loadStylesheet(Ljava/lang/String;)Lcom/sun/javafx/css/Stylesheet;

    move-result-object v34

    move-object/from16 v31, v34

    .line 1739
    .local v31, "stylesheet":Lcom/sun/javafx/css/Stylesheet;
    move-object/from16 v34, v31

    if-eqz v34, :cond_16

    .line 1740
    move-object/from16 v34, v31

    sget-object v35, Ljavafx/css/StyleOrigin;->USER_AGENT:Ljavafx/css/StyleOrigin;

    invoke-virtual/range {v34 .. v35}, Lcom/sun/javafx/css/Stylesheet;->setOrigin(Ljavafx/css/StyleOrigin;)V

    .line 1742
    :cond_16
    new-instance v34, Lcom/sun/javafx/css/StyleManager$StylesheetContainer;

    move-object/from16 v39, v34

    move-object/from16 v34, v39

    move-object/from16 v35, v39

    move-object/from16 v36, v29

    move-object/from16 v37, v31

    invoke-direct/range {v35 .. v37}, Lcom/sun/javafx/css/StyleManager$StylesheetContainer;-><init>(Ljava/lang/String;Lcom/sun/javafx/css/Stylesheet;)V

    move-object/from16 v30, v34

    .line 1743
    move-object/from16 v34, v2

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/sun/javafx/css/StyleManager;->userAgentStylesheetContainers:Ljava/util/List;

    move-object/from16 v34, v0

    move-object/from16 v35, v30

    invoke-interface/range {v34 .. v35}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v34

    .line 1746
    .end local v31    # "stylesheet":Lcom/sun/javafx/css/Stylesheet;
    :cond_17
    move-object/from16 v34, v30

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/sun/javafx/css/StyleManager$StylesheetContainer;->selectorPartitioning:Lcom/sun/javafx/css/SelectorPartitioning;

    move-object/from16 v34, v0

    if-eqz v34, :cond_18

    .line 1748
    move/from16 v34, v19

    if-eqz v34, :cond_20

    move-object/from16 v34, v4

    invoke-virtual/range {v34 .. v34}, Ljavafx/scene/SubScene;->getRoot()Ljavafx/scene/Parent;

    move-result-object v34

    :goto_10
    move-object/from16 v31, v34

    .line 1749
    .local v31, "root":Ljavafx/scene/Parent;
    move-object/from16 v34, v30

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/sun/javafx/css/StyleManager$StylesheetContainer;->parentUsers:Lcom/sun/javafx/css/StyleManager$RefList;

    move-object/from16 v34, v0

    move-object/from16 v35, v31

    invoke-virtual/range {v34 .. v35}, Lcom/sun/javafx/css/StyleManager$RefList;->add(Ljava/lang/Object;)V

    .line 1751
    move-object/from16 v34, v30

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/sun/javafx/css/StyleManager$StylesheetContainer;->selectorPartitioning:Lcom/sun/javafx/css/SelectorPartitioning;

    move-object/from16 v34, v0

    move-object/from16 v35, v24

    move-object/from16 v36, v23

    move-object/from16 v37, v2

    move-object/from16 v0, v37

    iget-object v0, v0, Lcom/sun/javafx/css/StyleManager;->key:Lcom/sun/javafx/css/StyleManager$Key;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget-object v0, v0, Lcom/sun/javafx/css/StyleManager$Key;->styleClasses:Lcom/sun/javafx/css/StyleClassSet;

    move-object/from16 v37, v0

    .line 1752
    invoke-virtual/range {v34 .. v37}, Lcom/sun/javafx/css/SelectorPartitioning;->match(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Ljava/util/List;

    move-result-object v34

    move-object/from16 v32, v34

    .line 1753
    .local v32, "matchingRules":Ljava/util/List;, "Ljava/util/List<Lcom/sun/javafx/css/Selector;>;"
    move-object/from16 v34, v28

    move-object/from16 v35, v32

    invoke-interface/range {v34 .. v35}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-result v34

    .line 1756
    .line 1767
    .end local v29    # "uaFileName":Ljava/lang/String;
    .end local v30    # "container":Lcom/sun/javafx/css/StyleManager$StylesheetContainer;
    .end local v31    # "root":Ljavafx/scene/Parent;
    .end local v32    # "matchingRules":Ljava/util/List;, "Ljava/util/List<Lcom/sun/javafx/css/Selector;>;"
    :cond_18
    move/from16 v34, v22

    if-eqz v34, :cond_1c

    .line 1769
    const/16 v34, 0x0

    move-object/from16 v29, v34

    .line 1770
    .local v29, "container":Lcom/sun/javafx/css/StyleManager$StylesheetContainer;
    const/16 v34, 0x0

    move/from16 v30, v34

    .local v30, "n":I
    move-object/from16 v34, v2

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/sun/javafx/css/StyleManager;->userAgentStylesheetContainers:Ljava/util/List;

    move-object/from16 v34, v0

    invoke-interface/range {v34 .. v34}, Ljava/util/List;->size()I

    move-result v34

    move/from16 v31, v34

    .local v31, "nMax":I
    :goto_11
    move/from16 v34, v30

    move/from16 v35, v31

    move/from16 v0, v34

    move/from16 v1, v35

    if-ge v0, v1, :cond_19

    .line 1771
    move-object/from16 v34, v2

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/sun/javafx/css/StyleManager;->userAgentStylesheetContainers:Ljava/util/List;

    move-object/from16 v34, v0

    move/from16 v35, v30

    invoke-interface/range {v34 .. v35}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Lcom/sun/javafx/css/StyleManager$StylesheetContainer;

    move-object/from16 v29, v34

    .line 1772
    move-object/from16 v34, v20

    move-object/from16 v35, v29

    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/sun/javafx/css/StyleManager$StylesheetContainer;->fname:Ljava/lang/String;

    move-object/from16 v35, v0

    invoke-virtual/range {v34 .. v35}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_23

    .line 1773
    .line 1778
    :cond_19
    move-object/from16 v34, v29

    if-nez v34, :cond_1b

    .line 1779
    move-object/from16 v34, v20

    invoke-static/range {v34 .. v34}, Lcom/sun/javafx/css/StyleManager;->loadStylesheet(Ljava/lang/String;)Lcom/sun/javafx/css/Stylesheet;

    move-result-object v34

    move-object/from16 v30, v34

    .line 1780
    .local v30, "stylesheet":Lcom/sun/javafx/css/Stylesheet;
    move-object/from16 v34, v30

    if-eqz v34, :cond_1a

    .line 1781
    move-object/from16 v34, v30

    sget-object v35, Ljavafx/css/StyleOrigin;->USER_AGENT:Ljavafx/css/StyleOrigin;

    invoke-virtual/range {v34 .. v35}, Lcom/sun/javafx/css/Stylesheet;->setOrigin(Ljavafx/css/StyleOrigin;)V

    .line 1783
    :cond_1a
    new-instance v34, Lcom/sun/javafx/css/StyleManager$StylesheetContainer;

    move-object/from16 v39, v34

    move-object/from16 v34, v39

    move-object/from16 v35, v39

    move-object/from16 v36, v20

    move-object/from16 v37, v30

    invoke-direct/range {v35 .. v37}, Lcom/sun/javafx/css/StyleManager$StylesheetContainer;-><init>(Ljava/lang/String;Lcom/sun/javafx/css/Stylesheet;)V

    move-object/from16 v29, v34

    .line 1784
    move-object/from16 v34, v2

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/sun/javafx/css/StyleManager;->userAgentStylesheetContainers:Ljava/util/List;

    move-object/from16 v34, v0

    move-object/from16 v35, v29

    invoke-interface/range {v34 .. v35}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v34

    .line 1787
    .end local v30    # "stylesheet":Lcom/sun/javafx/css/Stylesheet;
    :cond_1b
    move-object/from16 v34, v29

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/sun/javafx/css/StyleManager$StylesheetContainer;->selectorPartitioning:Lcom/sun/javafx/css/SelectorPartitioning;

    move-object/from16 v34, v0

    if-eqz v34, :cond_1c

    .line 1790
    move-object/from16 v34, v29

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/sun/javafx/css/StyleManager$StylesheetContainer;->parentUsers:Lcom/sun/javafx/css/StyleManager$RefList;

    move-object/from16 v34, v0

    move-object/from16 v35, v21

    check-cast v35, Ljavafx/scene/Parent;

    invoke-virtual/range {v34 .. v35}, Lcom/sun/javafx/css/StyleManager$RefList;->add(Ljava/lang/Object;)V

    .line 1792
    move-object/from16 v34, v29

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/sun/javafx/css/StyleManager$StylesheetContainer;->selectorPartitioning:Lcom/sun/javafx/css/SelectorPartitioning;

    move-object/from16 v34, v0

    move-object/from16 v35, v24

    move-object/from16 v36, v23

    move-object/from16 v37, v2

    move-object/from16 v0, v37

    iget-object v0, v0, Lcom/sun/javafx/css/StyleManager;->key:Lcom/sun/javafx/css/StyleManager$Key;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget-object v0, v0, Lcom/sun/javafx/css/StyleManager$Key;->styleClasses:Lcom/sun/javafx/css/StyleClassSet;

    move-object/from16 v37, v0

    .line 1793
    invoke-virtual/range {v34 .. v37}, Lcom/sun/javafx/css/SelectorPartitioning;->match(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Ljava/util/List;

    move-result-object v34

    move-object/from16 v30, v34

    .line 1794
    .local v30, "matchingRules":Ljava/util/List;, "Ljava/util/List<Lcom/sun/javafx/css/Selector;>;"
    move-object/from16 v34, v28

    move-object/from16 v35, v30

    invoke-interface/range {v34 .. v35}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-result v34

    .line 1801
    .end local v29    # "container":Lcom/sun/javafx/css/StyleManager$StylesheetContainer;
    .end local v30    # "matchingRules":Ljava/util/List;, "Ljava/util/List<Lcom/sun/javafx/css/Selector;>;"
    .end local v31    # "nMax":I
    :cond_1c
    move-object/from16 v34, v12

    invoke-interface/range {v34 .. v34}, Ljava/util/List;->isEmpty()Z

    move-result v34

    if-nez v34, :cond_24

    .line 1802
    const/16 v34, 0x0

    move/from16 v29, v34

    .local v29, "n":I
    move-object/from16 v34, v12

    invoke-interface/range {v34 .. v34}, Ljava/util/List;->size()I

    move-result v34

    move/from16 v30, v34

    .local v30, "nMax":I
    :goto_12
    move/from16 v34, v29

    move/from16 v35, v30

    move/from16 v0, v34

    move/from16 v1, v35

    if-ge v0, v1, :cond_24

    .line 1803
    move-object/from16 v34, v12

    move/from16 v35, v29

    invoke-interface/range {v34 .. v35}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Lcom/sun/javafx/css/StyleManager$StylesheetContainer;

    move-object/from16 v31, v34

    .line 1804
    .local v31, "container":Lcom/sun/javafx/css/StyleManager$StylesheetContainer;
    move-object/from16 v34, v31

    if-eqz v34, :cond_1d

    move-object/from16 v34, v31

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/sun/javafx/css/StyleManager$StylesheetContainer;->selectorPartitioning:Lcom/sun/javafx/css/SelectorPartitioning;

    move-object/from16 v34, v0

    if-eqz v34, :cond_1d

    .line 1805
    move-object/from16 v34, v31

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/sun/javafx/css/StyleManager$StylesheetContainer;->selectorPartitioning:Lcom/sun/javafx/css/SelectorPartitioning;

    move-object/from16 v34, v0

    move-object/from16 v35, v24

    move-object/from16 v36, v23

    move-object/from16 v37, v2

    move-object/from16 v0, v37

    iget-object v0, v0, Lcom/sun/javafx/css/StyleManager;->key:Lcom/sun/javafx/css/StyleManager$Key;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget-object v0, v0, Lcom/sun/javafx/css/StyleManager$Key;->styleClasses:Lcom/sun/javafx/css/StyleClassSet;

    move-object/from16 v37, v0

    .line 1806
    invoke-virtual/range {v34 .. v37}, Lcom/sun/javafx/css/SelectorPartitioning;->match(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Ljava/util/List;

    move-result-object v34

    move-object/from16 v32, v34

    .line 1807
    .restart local v32    # "matchingRules":Ljava/util/List;, "Ljava/util/List<Lcom/sun/javafx/css/Selector;>;"
    move-object/from16 v34, v28

    move-object/from16 v35, v32

    invoke-interface/range {v34 .. v35}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-result v34

    .line 1802
    .end local v32    # "matchingRules":Ljava/util/List;, "Ljava/util/List<Lcom/sun/javafx/css/Selector;>;"
    :cond_1d
    add-int/lit8 v29, v29, 0x1

    goto :goto_12

    .line 1724
    .end local v29    # "n":I
    .end local v30    # "nMax":I
    .end local v31    # "container":Lcom/sun/javafx/css/StyleManager$StylesheetContainer;
    :cond_1e
    move-object/from16 v34, v6

    .line 1725
    invoke-virtual/range {v34 .. v34}, Ljavafx/scene/Scene;->getUserAgentStylesheet()Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v34

    goto/16 :goto_e

    .line 1734
    .local v29, "uaFileName":Ljava/lang/String;
    .local v30, "container":Lcom/sun/javafx/css/StyleManager$StylesheetContainer;
    .local v31, "n":I
    .local v32, "nMax":I
    :cond_1f
    const/16 v34, 0x0

    move-object/from16 v30, v34

    .line 1729
    add-int/lit8 v31, v31, 0x1

    goto/16 :goto_f

    .line 1748
    .end local v31    # "n":I
    :cond_20
    move-object/from16 v34, v6

    invoke-virtual/range {v34 .. v34}, Ljavafx/scene/Scene;->getRoot()Ljavafx/scene/Parent;

    move-result-object v34

    goto/16 :goto_10

    .line 1756
    .end local v29    # "uaFileName":Ljava/lang/String;
    .end local v30    # "container":Lcom/sun/javafx/css/StyleManager$StylesheetContainer;
    .end local v32    # "nMax":I
    :cond_21
    move-object/from16 v34, v2

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/sun/javafx/css/StyleManager;->platformUserAgentStylesheetContainers:Ljava/util/List;

    move-object/from16 v34, v0

    invoke-interface/range {v34 .. v34}, Ljava/util/List;->isEmpty()Z

    move-result v34

    if-nez v34, :cond_18

    .line 1757
    const/16 v34, 0x0

    move/from16 v29, v34

    .local v29, "n":I
    move-object/from16 v34, v2

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/sun/javafx/css/StyleManager;->platformUserAgentStylesheetContainers:Ljava/util/List;

    move-object/from16 v34, v0

    invoke-interface/range {v34 .. v34}, Ljava/util/List;->size()I

    move-result v34

    move/from16 v30, v34

    .local v30, "nMax":I
    :goto_13
    move/from16 v34, v29

    move/from16 v35, v30

    move/from16 v0, v34

    move/from16 v1, v35

    if-ge v0, v1, :cond_18

    .line 1758
    move-object/from16 v34, v2

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/sun/javafx/css/StyleManager;->platformUserAgentStylesheetContainers:Ljava/util/List;

    move-object/from16 v34, v0

    move/from16 v35, v29

    invoke-interface/range {v34 .. v35}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Lcom/sun/javafx/css/StyleManager$StylesheetContainer;

    move-object/from16 v31, v34

    .line 1759
    .local v31, "container":Lcom/sun/javafx/css/StyleManager$StylesheetContainer;
    move-object/from16 v34, v31

    if-eqz v34, :cond_22

    move-object/from16 v34, v31

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/sun/javafx/css/StyleManager$StylesheetContainer;->selectorPartitioning:Lcom/sun/javafx/css/SelectorPartitioning;

    move-object/from16 v34, v0

    if-eqz v34, :cond_22

    .line 1760
    move-object/from16 v34, v31

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/sun/javafx/css/StyleManager$StylesheetContainer;->selectorPartitioning:Lcom/sun/javafx/css/SelectorPartitioning;

    move-object/from16 v34, v0

    move-object/from16 v35, v24

    move-object/from16 v36, v23

    move-object/from16 v37, v2

    move-object/from16 v0, v37

    iget-object v0, v0, Lcom/sun/javafx/css/StyleManager;->key:Lcom/sun/javafx/css/StyleManager$Key;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget-object v0, v0, Lcom/sun/javafx/css/StyleManager$Key;->styleClasses:Lcom/sun/javafx/css/StyleClassSet;

    move-object/from16 v37, v0

    .line 1761
    invoke-virtual/range {v34 .. v37}, Lcom/sun/javafx/css/SelectorPartitioning;->match(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Ljava/util/List;

    move-result-object v34

    move-object/from16 v32, v34

    .line 1762
    .local v32, "matchingRules":Ljava/util/List;, "Ljava/util/List<Lcom/sun/javafx/css/Selector;>;"
    move-object/from16 v34, v28

    move-object/from16 v35, v32

    invoke-interface/range {v34 .. v35}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-result v34

    .line 1757
    .end local v32    # "matchingRules":Ljava/util/List;, "Ljava/util/List<Lcom/sun/javafx/css/Selector;>;"
    :cond_22
    add-int/lit8 v29, v29, 0x1

    goto :goto_13

    .line 1775
    .local v29, "container":Lcom/sun/javafx/css/StyleManager$StylesheetContainer;
    .local v30, "n":I
    .local v31, "nMax":I
    :cond_23
    const/16 v34, 0x0

    move-object/from16 v29, v34

    .line 1770
    add-int/lit8 v30, v30, 0x1

    goto/16 :goto_11

    .line 1813
    .end local v29    # "container":Lcom/sun/javafx/css/StyleManager$StylesheetContainer;
    .end local v30    # "n":I
    .end local v31    # "nMax":I
    :cond_24
    move/from16 v34, v11

    if-eqz v34, :cond_27

    .line 1814
    move-object/from16 v34, v10

    if-nez v34, :cond_26

    const/16 v34, 0x0

    :goto_14
    move/from16 v29, v34

    .line 1815
    .local v29, "nMax":I
    const/16 v34, 0x0

    move/from16 v30, v34

    .restart local v30    # "n":I
    :goto_15
    move/from16 v34, v30

    move/from16 v35, v29

    move/from16 v0, v34

    move/from16 v1, v35

    if-ge v0, v1, :cond_27

    .line 1816
    move-object/from16 v34, v10

    move/from16 v35, v30

    invoke-interface/range {v34 .. v35}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Lcom/sun/javafx/css/StyleManager$StylesheetContainer;

    move-object/from16 v31, v34

    .line 1817
    .local v31, "container":Lcom/sun/javafx/css/StyleManager$StylesheetContainer;
    move-object/from16 v34, v31

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/sun/javafx/css/StyleManager$StylesheetContainer;->selectorPartitioning:Lcom/sun/javafx/css/SelectorPartitioning;

    move-object/from16 v34, v0

    if-eqz v34, :cond_25

    .line 1818
    move-object/from16 v34, v31

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/sun/javafx/css/StyleManager$StylesheetContainer;->selectorPartitioning:Lcom/sun/javafx/css/SelectorPartitioning;

    move-object/from16 v34, v0

    move-object/from16 v35, v24

    move-object/from16 v36, v23

    move-object/from16 v37, v2

    move-object/from16 v0, v37

    iget-object v0, v0, Lcom/sun/javafx/css/StyleManager;->key:Lcom/sun/javafx/css/StyleManager$Key;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget-object v0, v0, Lcom/sun/javafx/css/StyleManager$Key;->styleClasses:Lcom/sun/javafx/css/StyleClassSet;

    move-object/from16 v37, v0

    .line 1819
    invoke-virtual/range {v34 .. v37}, Lcom/sun/javafx/css/SelectorPartitioning;->match(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Ljava/util/List;

    move-result-object v34

    move-object/from16 v32, v34

    .line 1820
    .restart local v32    # "matchingRules":Ljava/util/List;, "Ljava/util/List<Lcom/sun/javafx/css/Selector;>;"
    move-object/from16 v34, v28

    move-object/from16 v35, v32

    invoke-interface/range {v34 .. v35}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-result v34

    .line 1815
    .end local v32    # "matchingRules":Ljava/util/List;, "Ljava/util/List<Lcom/sun/javafx/css/Selector;>;"
    :cond_25
    add-int/lit8 v30, v30, 0x1

    goto :goto_15

    .line 1814
    .end local v29    # "nMax":I
    .end local v30    # "n":I
    .end local v31    # "container":Lcom/sun/javafx/css/StyleManager$StylesheetContainer;
    :cond_26
    move-object/from16 v34, v10

    invoke-interface/range {v34 .. v34}, Ljava/util/List;->size()I

    move-result v34

    goto :goto_14

    .line 1826
    :cond_27
    new-instance v34, Lcom/sun/javafx/css/StyleManager$Cache;

    move-object/from16 v39, v34

    move-object/from16 v34, v39

    move-object/from16 v35, v39

    move-object/from16 v36, v28

    invoke-direct/range {v35 .. v36}, Lcom/sun/javafx/css/StyleManager$Cache;-><init>(Ljava/util/List;)V

    move-object/from16 v27, v34

    .line 1827
    move-object/from16 v34, v26

    move-object/from16 v35, v2

    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/sun/javafx/css/StyleManager;->key:Lcom/sun/javafx/css/StyleManager$Key;

    move-object/from16 v35, v0

    move-object/from16 v36, v27

    invoke-interface/range {v34 .. v36}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v34

    .line 1830
    move-object/from16 v34, v2

    const/16 v35, 0x0

    move-object/from16 v0, v35

    move-object/from16 v1, v34

    iput-object v0, v1, Lcom/sun/javafx/css/StyleManager;->key:Lcom/sun/javafx/css/StyleManager$Key;

    goto/16 :goto_d

    .line 1839
    .end local v9    # "parent":Ljavafx/scene/Parent;
    .end local v10    # "parentStylesheets":Ljava/util/List;, "Ljava/util/List<Lcom/sun/javafx/css/StyleManager$StylesheetContainer;>;"
    .end local v11    # "hasParentStylesheets":Z
    .end local v12    # "sceneStylesheets":Ljava/util/List;, "Ljava/util/List<Lcom/sun/javafx/css/StyleManager$StylesheetContainer;>;"
    .end local v13    # "hasSceneStylesheets":Z
    .end local v14    # "inlineStyle":Ljava/lang/String;
    .end local v15    # "hasInlineStyles":Z
    .end local v16    # "sceneUserAgentStylesheet":Ljava/lang/String;
    .end local v17    # "hasSceneUserAgentStylesheet":Z
    .end local v18    # "subSceneUserAgentStylesheet":Ljava/lang/String;
    .end local v19    # "hasSubSceneUserAgentStylesheet":Z
    .end local v20    # "regionUserAgentStylesheet":Ljava/lang/String;
    .end local v21    # "region":Ljavafx/scene/Node;
    .end local v22    # "hasRegionUserAgentStylesheet":Z
    .end local v23    # "cname":Ljava/lang/String;
    .end local v24    # "id":Ljava/lang/String;
    .end local v25    # "styleClasses":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v26    # "cacheMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/sun/javafx/css/StyleManager$Key;Lcom/sun/javafx/css/StyleManager$Cache;>;"
    .end local v27    # "cache":Lcom/sun/javafx/css/StyleManager$Cache;
    .end local v28    # "selectorData":Ljava/util/List;, "Ljava/util/List<Lcom/sun/javafx/css/Selector;>;"
    :catchall_0
    move-exception v34

    move-object/from16 v33, v34

    move-object/from16 v34, v8

    monitor-exit v34
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object/from16 v34, v33

    throw v34
.end method

.method public forget(Ljavafx/scene/Parent;)V
    .locals 13

    .prologue
    .line 528
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/StyleManager;
    move-object v1, p1

    .local v1, "parent":Ljavafx/scene/Parent;
    move-object v9, v1

    if-nez v9, :cond_0

    .line 567
    :goto_0
    return-void

    .line 530
    :cond_0
    sget-object v9, Lcom/sun/javafx/css/StyleManager;->styleLock:Ljava/lang/Object;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    move-object v2, v10

    monitor-enter v9

    .line 532
    :try_start_0
    sget-object v9, Lcom/sun/javafx/css/StyleManager;->cacheContainerMap:Ljava/util/Map;

    move-object v10, v1

    invoke-interface {v9, v10}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 533
    sget-object v9, Lcom/sun/javafx/css/StyleManager;->cacheContainerMap:Ljava/util/Map;

    move-object v10, v1

    invoke-interface {v9, v10}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sun/javafx/css/StyleManager$CacheContainer;

    move-object v3, v9

    .line 534
    .local v3, "container":Lcom/sun/javafx/css/StyleManager$CacheContainer;
    move-object v9, v3

    invoke-static {v9}, Lcom/sun/javafx/css/StyleManager$CacheContainer;->access$200(Lcom/sun/javafx/css/StyleManager$CacheContainer;)V

    .line 537
    .end local v3    # "container":Lcom/sun/javafx/css/StyleManager$CacheContainer;
    :cond_1
    move-object v9, v1

    invoke-virtual {v9}, Ljavafx/scene/Parent;->getStylesheets()Ljavafx/collections/ObservableList;

    move-result-object v9

    move-object v3, v9

    .line 538
    .local v3, "stylesheets":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object v9, v3

    if-eqz v9, :cond_2

    move-object v9, v3

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_2

    .line 539
    move-object v9, v3

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move-object v4, v9

    :goto_1
    move-object v9, v4

    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    move-object v9, v4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    move-object v5, v9

    .line 540
    .local v5, "fname":Ljava/lang/String;
    move-object v9, v0

    move-object v10, v1

    move-object v11, v5

    invoke-direct {v9, v10, v11}, Lcom/sun/javafx/css/StyleManager;->stylesheetRemoved(Ljavafx/scene/Parent;Ljava/lang/String;)V

    .line 541
    goto :goto_1

    .line 544
    .end local v5    # "fname":Ljava/lang/String;
    :cond_2
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/css/StyleManager;->stylesheetContainerMap:Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move-object v4, v9

    .line 545
    .local v4, "containerIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/sun/javafx/css/StyleManager$StylesheetContainer;>;>;"
    :goto_2
    move-object v9, v4

    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 546
    move-object v9, v4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    move-object v5, v9

    .line 547
    .local v5, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/sun/javafx/css/StyleManager$StylesheetContainer;>;"
    move-object v9, v5

    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sun/javafx/css/StyleManager$StylesheetContainer;

    move-object v6, v9

    .line 548
    .local v6, "container":Lcom/sun/javafx/css/StyleManager$StylesheetContainer;
    move-object v9, v6

    iget-object v9, v9, Lcom/sun/javafx/css/StyleManager$StylesheetContainer;->parentUsers:Lcom/sun/javafx/css/StyleManager$RefList;

    move-object v10, v1

    invoke-virtual {v9, v10}, Lcom/sun/javafx/css/StyleManager$RefList;->remove(Ljava/lang/Object;)V

    .line 549
    move-object v9, v6

    iget-object v9, v9, Lcom/sun/javafx/css/StyleManager$StylesheetContainer;->parentUsers:Lcom/sun/javafx/css/StyleManager$RefList;

    iget-object v9, v9, Lcom/sun/javafx/css/StyleManager$RefList;->list:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 551
    move-object v9, v4

    invoke-interface {v9}, Ljava/util/Iterator;->remove()V

    .line 553
    move-object v9, v6

    iget-object v9, v9, Lcom/sun/javafx/css/StyleManager$StylesheetContainer;->selectorPartitioning:Lcom/sun/javafx/css/SelectorPartitioning;

    if-eqz v9, :cond_3

    .line 554
    move-object v9, v6

    iget-object v9, v9, Lcom/sun/javafx/css/StyleManager$StylesheetContainer;->selectorPartitioning:Lcom/sun/javafx/css/SelectorPartitioning;

    invoke-virtual {v9}, Lcom/sun/javafx/css/SelectorPartitioning;->reset()V

    .line 560
    :cond_3
    move-object v9, v6

    iget-object v9, v9, Lcom/sun/javafx/css/StyleManager$StylesheetContainer;->fname:Ljava/lang/String;

    move-object v7, v9

    .line 561
    .local v7, "fname":Ljava/lang/String;
    move-object v9, v0

    move-object v10, v7

    invoke-direct {v9, v10}, Lcom/sun/javafx/css/StyleManager;->cleanUpImageCache(Ljava/lang/String;)V

    .line 563
    .end local v7    # "fname":Ljava/lang/String;
    :cond_4
    goto :goto_2

    .line 566
    .end local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/sun/javafx/css/StyleManager$StylesheetContainer;>;"
    .end local v6    # "container":Lcom/sun/javafx/css/StyleManager$StylesheetContainer;
    :cond_5
    move-object v9, v2

    monitor-exit v9

    .line 567
    goto/16 :goto_0

    .line 566
    .end local v3    # "stylesheets":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "containerIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/sun/javafx/css/StyleManager$StylesheetContainer;>;>;"
    :catchall_0
    move-exception v9

    move-object v8, v9

    move-object v9, v2

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v9, v8

    throw v9
.end method

.method public forget(Ljavafx/scene/Scene;)V
    .locals 15

    .prologue
    .line 431
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/StyleManager;
    move-object/from16 v1, p1

    .local v1, "scene":Ljavafx/scene/Scene;
    move-object v12, v1

    if-nez v12, :cond_0

    .line 482
    :goto_0
    return-void

    .line 433
    :cond_0
    move-object v12, v0

    move-object v13, v1

    invoke-virtual {v13}, Ljavafx/scene/Scene;->getRoot()Ljavafx/scene/Parent;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/sun/javafx/css/StyleManager;->forget(Ljavafx/scene/Parent;)V

    .line 435
    sget-object v12, Lcom/sun/javafx/css/StyleManager;->styleLock:Ljava/lang/Object;

    move-object v14, v12

    move-object v12, v14

    move-object v13, v14

    move-object v2, v13

    monitor-enter v12

    .line 439
    const/4 v12, 0x0

    move-object v3, v12

    .line 440
    .local v3, "sceneUserAgentStylesheet":Ljava/lang/String;
    move-object v12, v1

    :try_start_0
    invoke-virtual {v12}, Ljavafx/scene/Scene;->getUserAgentStylesheet()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_2

    move-object v12, v1

    .line 441
    invoke-virtual {v12}, Ljavafx/scene/Scene;->getUserAgentStylesheet()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    move-object v14, v12

    move-object v12, v14

    move-object v13, v14

    move-object v3, v13

    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_2

    .line 443
    move-object v12, v0

    iget-object v12, v12, Lcom/sun/javafx/css/StyleManager;->userAgentStylesheetContainers:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    const/4 v13, 0x1

    add-int/lit8 v12, v12, -0x1

    move v4, v12

    .local v4, "n":I
    :goto_1
    const/4 v12, 0x0

    move v13, v4

    if-gt v12, v13, :cond_2

    .line 444
    move-object v12, v0

    iget-object v12, v12, Lcom/sun/javafx/css/StyleManager;->userAgentStylesheetContainers:Ljava/util/List;

    move v13, v4

    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/sun/javafx/css/StyleManager$StylesheetContainer;

    move-object v5, v12

    .line 445
    .local v5, "container":Lcom/sun/javafx/css/StyleManager$StylesheetContainer;
    move-object v12, v3

    move-object v13, v5

    iget-object v13, v13, Lcom/sun/javafx/css/StyleManager$StylesheetContainer;->fname:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 446
    move-object v12, v5

    iget-object v12, v12, Lcom/sun/javafx/css/StyleManager$StylesheetContainer;->parentUsers:Lcom/sun/javafx/css/StyleManager$RefList;

    move-object v13, v1

    invoke-virtual {v13}, Ljavafx/scene/Scene;->getRoot()Ljavafx/scene/Parent;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/sun/javafx/css/StyleManager$RefList;->remove(Ljava/lang/Object;)V

    .line 447
    move-object v12, v5

    iget-object v12, v12, Lcom/sun/javafx/css/StyleManager$StylesheetContainer;->parentUsers:Lcom/sun/javafx/css/StyleManager$RefList;

    iget-object v12, v12, Lcom/sun/javafx/css/StyleManager$RefList;->list:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    if-nez v12, :cond_1

    .line 448
    move-object v12, v0

    iget-object v12, v12, Lcom/sun/javafx/css/StyleManager;->userAgentStylesheetContainers:Ljava/util/List;

    move v13, v4

    invoke-interface {v12, v13}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v12

    .line 443
    :cond_1
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 457
    .end local v4    # "n":I
    .end local v5    # "container":Lcom/sun/javafx/css/StyleManager$StylesheetContainer;
    :cond_2
    move-object v12, v0

    iget-object v12, v12, Lcom/sun/javafx/css/StyleManager;->stylesheetContainerMap:Ljava/util/Map;

    invoke-interface {v12}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v12

    move-object v4, v12

    .line 458
    .local v4, "stylesheetContainers":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/sun/javafx/css/StyleManager$StylesheetContainer;>;>;"
    move-object v12, v4

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    move-object v5, v12

    .line 460
    .local v5, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/sun/javafx/css/StyleManager$StylesheetContainer;>;>;"
    :goto_2
    move-object v12, v5

    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_7

    .line 462
    move-object v12, v5

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map$Entry;

    move-object v6, v12

    .line 463
    .local v6, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/sun/javafx/css/StyleManager$StylesheetContainer;>;"
    move-object v12, v6

    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/sun/javafx/css/StyleManager$StylesheetContainer;

    move-object v7, v12

    .line 465
    .local v7, "container":Lcom/sun/javafx/css/StyleManager$StylesheetContainer;
    move-object v12, v7

    iget-object v12, v12, Lcom/sun/javafx/css/StyleManager$StylesheetContainer;->parentUsers:Lcom/sun/javafx/css/StyleManager$RefList;

    iget-object v12, v12, Lcom/sun/javafx/css/StyleManager$RefList;->list:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    move-object v8, v12

    .line 466
    .local v8, "parentIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/ref/Reference<Ljavafx/scene/Parent;>;>;"
    :goto_3
    move-object v12, v8

    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_5

    .line 468
    move-object v12, v8

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/ref/Reference;

    move-object v9, v12

    .line 469
    .local v9, "ref":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<Ljavafx/scene/Parent;>;"
    move-object v12, v9

    invoke-virtual {v12}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljavafx/scene/Parent;

    move-object v10, v12

    .line 471
    .local v10, "_parent":Ljavafx/scene/Parent;
    move-object v12, v10

    if-eqz v12, :cond_3

    move-object v12, v10

    invoke-virtual {v12}, Ljavafx/scene/Parent;->getScene()Ljavafx/scene/Scene;

    move-result-object v12

    move-object v13, v1

    if-eq v12, v13, :cond_3

    move-object v12, v10

    invoke-virtual {v12}, Ljavafx/scene/Parent;->getScene()Ljavafx/scene/Scene;

    move-result-object v12

    if-nez v12, :cond_4

    .line 472
    :cond_3
    move-object v12, v9

    invoke-virtual {v12}, Ljava/lang/ref/Reference;->clear()V

    .line 473
    move-object v12, v8

    invoke-interface {v12}, Ljava/util/Iterator;->remove()V

    .line 475
    :cond_4
    goto :goto_3

    .line 477
    .end local v9    # "ref":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<Ljavafx/scene/Parent;>;"
    .end local v10    # "_parent":Ljavafx/scene/Parent;
    :cond_5
    move-object v12, v7

    iget-object v12, v12, Lcom/sun/javafx/css/StyleManager$StylesheetContainer;->parentUsers:Lcom/sun/javafx/css/StyleManager$RefList;

    iget-object v12, v12, Lcom/sun/javafx/css/StyleManager$RefList;->list:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_6

    .line 478
    move-object v12, v5

    invoke-interface {v12}, Ljava/util/Iterator;->remove()V

    .line 480
    :cond_6
    goto :goto_2

    .line 481
    .end local v6    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/sun/javafx/css/StyleManager$StylesheetContainer;>;"
    .end local v7    # "container":Lcom/sun/javafx/css/StyleManager$StylesheetContainer;
    .end local v8    # "parentIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/ref/Reference<Ljavafx/scene/Parent;>;>;"
    :cond_7
    move-object v12, v2

    monitor-exit v12

    .line 482
    goto/16 :goto_0

    .line 481
    .end local v4    # "stylesheetContainers":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/sun/javafx/css/StyleManager$StylesheetContainer;>;>;"
    .end local v5    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/sun/javafx/css/StyleManager$StylesheetContainer;>;>;"
    :catchall_0
    move-exception v12

    move-object v11, v12

    move-object v12, v2

    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v12, v11

    throw v12
.end method

.method public forget(Ljavafx/scene/SubScene;)V
    .locals 17

    .prologue
    .line 610
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/javafx/css/StyleManager;
    move-object/from16 v1, p1

    .local v1, "subScene":Ljavafx/scene/SubScene;
    move-object v13, v1

    if-nez v13, :cond_0

    .line 676
    :goto_0
    return-void

    .line 611
    :cond_0
    move-object v13, v1

    invoke-virtual {v13}, Ljavafx/scene/SubScene;->getRoot()Ljavafx/scene/Parent;

    move-result-object v13

    move-object v2, v13

    .line 613
    .local v2, "subSceneRoot":Ljavafx/scene/Parent;
    move-object v13, v2

    if-nez v13, :cond_1

    goto :goto_0

    .line 614
    :cond_1
    move-object v13, v0

    move-object v14, v2

    invoke-virtual {v13, v14}, Lcom/sun/javafx/css/StyleManager;->forget(Ljavafx/scene/Parent;)V

    .line 616
    sget-object v13, Lcom/sun/javafx/css/StyleManager;->styleLock:Ljava/lang/Object;

    move-object/from16 v16, v13

    move-object/from16 v13, v16

    move-object/from16 v14, v16

    move-object v3, v14

    monitor-enter v13

    .line 620
    const/4 v13, 0x0

    move-object v4, v13

    .line 621
    .local v4, "sceneUserAgentStylesheet":Ljava/lang/String;
    move-object v13, v1

    :try_start_0
    invoke-virtual {v13}, Ljavafx/scene/SubScene;->getUserAgentStylesheet()Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_3

    move-object v13, v1

    .line 622
    invoke-virtual {v13}, Ljavafx/scene/SubScene;->getUserAgentStylesheet()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v16, v13

    move-object/from16 v13, v16

    move-object/from16 v14, v16

    move-object v4, v14

    invoke-virtual {v13}, Ljava/lang/String;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_3

    .line 624
    move-object v13, v0

    iget-object v13, v13, Lcom/sun/javafx/css/StyleManager;->userAgentStylesheetContainers:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    move-object v5, v13

    .line 625
    .local v5, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sun/javafx/css/StyleManager$StylesheetContainer;>;"
    :goto_1
    move-object v13, v5

    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_3

    .line 626
    move-object v13, v5

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/sun/javafx/css/StyleManager$StylesheetContainer;

    move-object v6, v13

    .line 627
    .local v6, "container":Lcom/sun/javafx/css/StyleManager$StylesheetContainer;
    move-object v13, v4

    move-object v14, v6

    iget-object v14, v14, Lcom/sun/javafx/css/StyleManager$StylesheetContainer;->fname:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 628
    move-object v13, v6

    iget-object v13, v13, Lcom/sun/javafx/css/StyleManager$StylesheetContainer;->parentUsers:Lcom/sun/javafx/css/StyleManager$RefList;

    move-object v14, v1

    invoke-virtual {v14}, Ljavafx/scene/SubScene;->getRoot()Ljavafx/scene/Parent;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/sun/javafx/css/StyleManager$RefList;->remove(Ljava/lang/Object;)V

    .line 629
    move-object v13, v6

    iget-object v13, v13, Lcom/sun/javafx/css/StyleManager$StylesheetContainer;->parentUsers:Lcom/sun/javafx/css/StyleManager$RefList;

    iget-object v13, v13, Lcom/sun/javafx/css/StyleManager$RefList;->list:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    if-nez v13, :cond_2

    .line 630
    move-object v13, v5

    invoke-interface {v13}, Ljava/util/Iterator;->remove()V

    .line 633
    :cond_2
    goto :goto_1

    .line 640
    .end local v5    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sun/javafx/css/StyleManager$StylesheetContainer;>;"
    .end local v6    # "container":Lcom/sun/javafx/css/StyleManager$StylesheetContainer;
    :cond_3
    new-instance v13, Ljava/util/ArrayList;

    move-object/from16 v16, v13

    move-object/from16 v13, v16

    move-object/from16 v14, v16

    move-object v15, v0

    iget-object v15, v15, Lcom/sun/javafx/css/StyleManager;->stylesheetContainerMap:Ljava/util/Map;

    invoke-interface {v15}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v5, v13

    .line 642
    .local v5, "stylesheetContainers":Ljava/util/List;, "Ljava/util/List<Lcom/sun/javafx/css/StyleManager$StylesheetContainer;>;"
    move-object v13, v5

    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    move-object v6, v13

    .line 644
    .local v6, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sun/javafx/css/StyleManager$StylesheetContainer;>;"
    :goto_2
    move-object v13, v6

    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_7

    .line 646
    move-object v13, v6

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/sun/javafx/css/StyleManager$StylesheetContainer;

    move-object v7, v13

    .line 648
    .local v7, "container":Lcom/sun/javafx/css/StyleManager$StylesheetContainer;
    move-object v13, v7

    iget-object v13, v13, Lcom/sun/javafx/css/StyleManager$StylesheetContainer;->parentUsers:Lcom/sun/javafx/css/StyleManager$RefList;

    iget-object v13, v13, Lcom/sun/javafx/css/StyleManager$RefList;->list:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    move-object v8, v13

    .line 649
    .local v8, "parentIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/ref/Reference<Ljavafx/scene/Parent;>;>;"
    :goto_3
    move-object v13, v8

    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_6

    .line 651
    move-object v13, v8

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/ref/Reference;

    move-object v9, v13

    .line 652
    .local v9, "ref":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<Ljavafx/scene/Parent;>;"
    move-object v13, v9

    invoke-virtual {v13}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljavafx/scene/Parent;

    move-object v10, v13

    .line 654
    .local v10, "_parent":Ljavafx/scene/Parent;
    move-object v13, v10

    if-eqz v13, :cond_4

    .line 656
    move-object v13, v10

    move-object v11, v13

    .line 657
    .local v11, "p":Ljavafx/scene/Parent;
    :goto_4
    move-object v13, v11

    if-eqz v13, :cond_4

    .line 658
    move-object v13, v2

    move-object v14, v11

    invoke-virtual {v14}, Ljavafx/scene/Parent;->getParent()Ljavafx/scene/Parent;

    move-result-object v14

    if-ne v13, v14, :cond_5

    .line 659
    move-object v13, v9

    invoke-virtual {v13}, Ljava/lang/ref/Reference;->clear()V

    .line 660
    move-object v13, v8

    invoke-interface {v13}, Ljava/util/Iterator;->remove()V

    .line 661
    move-object v13, v0

    move-object v14, v10

    invoke-virtual {v13, v14}, Lcom/sun/javafx/css/StyleManager;->forget(Ljavafx/scene/Parent;)V

    .line 662
    .line 667
    .end local v11    # "p":Ljavafx/scene/Parent;
    :cond_4
    goto :goto_3

    .line 664
    .restart local v11    # "p":Ljavafx/scene/Parent;
    :cond_5
    move-object v13, v11

    invoke-virtual {v13}, Ljavafx/scene/Parent;->getParent()Ljavafx/scene/Parent;

    move-result-object v13

    move-object v11, v13

    goto :goto_4

    .line 673
    .end local v9    # "ref":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<Ljavafx/scene/Parent;>;"
    .end local v10    # "_parent":Ljavafx/scene/Parent;
    .end local v11    # "p":Ljavafx/scene/Parent;
    :cond_6
    goto :goto_2

    .line 674
    .end local v7    # "container":Lcom/sun/javafx/css/StyleManager$StylesheetContainer;
    .end local v8    # "parentIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/ref/Reference<Ljavafx/scene/Parent;>;>;"
    :cond_7
    move-object v13, v3

    monitor-exit v13

    .line 676
    goto/16 :goto_0

    .line 674
    .end local v5    # "stylesheetContainers":Ljava/util/List;, "Ljava/util/List<Lcom/sun/javafx/css/StyleManager$StylesheetContainer;>;"
    .end local v6    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sun/javafx/css/StyleManager$StylesheetContainer;>;"
    :catchall_0
    move-exception v13

    move-object v12, v13

    move-object v13, v3

    monitor-exit v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v13, v12

    throw v13
.end method

.method getCacheContainer(Ljavafx/css/Styleable;Ljavafx/scene/SubScene;)Lcom/sun/javafx/css/StyleManager$CacheContainer;
    .locals 11

    .prologue
    .line 165
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/StyleManager;
    move-object v1, p1

    .local v1, "styleable":Ljavafx/css/Styleable;
    move-object v2, p2

    .local v2, "subScene":Ljavafx/scene/SubScene;
    move-object v7, v1

    if-nez v7, :cond_0

    move-object v7, v2

    if-nez v7, :cond_0

    const/4 v7, 0x0

    move-object v0, v7

    .line 194
    .end local v0    # "this":Lcom/sun/javafx/css/StyleManager;
    :goto_0
    return-object v0

    .line 167
    .restart local v0    # "this":Lcom/sun/javafx/css/StyleManager;
    :cond_0
    const/4 v7, 0x0

    move-object v3, v7

    .line 169
    .local v3, "root":Ljavafx/scene/Parent;
    move-object v7, v2

    if-eqz v7, :cond_2

    .line 170
    move-object v7, v2

    invoke-virtual {v7}, Ljavafx/scene/SubScene;->getRoot()Ljavafx/scene/Parent;

    move-result-object v7

    move-object v3, v7

    .line 185
    :cond_1
    :goto_1
    move-object v7, v3

    if-nez v7, :cond_5

    const/4 v7, 0x0

    move-object v0, v7

    goto :goto_0

    .line 172
    :cond_2
    move-object v7, v1

    instance-of v7, v7, Ljavafx/scene/Node;

    if-eqz v7, :cond_4

    .line 174
    move-object v7, v1

    check-cast v7, Ljavafx/scene/Node;

    move-object v4, v7

    .line 175
    .local v4, "node":Ljavafx/scene/Node;
    move-object v7, v4

    invoke-virtual {v7}, Ljavafx/scene/Node;->getScene()Ljavafx/scene/Scene;

    move-result-object v7

    move-object v5, v7

    .line 176
    .local v5, "scene":Ljavafx/scene/Scene;
    move-object v7, v5

    if-eqz v7, :cond_3

    move-object v7, v5

    invoke-virtual {v7}, Ljavafx/scene/Scene;->getRoot()Ljavafx/scene/Parent;

    move-result-object v7

    move-object v3, v7

    .line 178
    :cond_3
    goto :goto_1

    .end local v4    # "node":Ljavafx/scene/Node;
    .end local v5    # "scene":Ljavafx/scene/Scene;
    :cond_4
    move-object v7, v1

    instance-of v7, v7, Ljavafx/stage/Window;

    if-eqz v7, :cond_1

    .line 180
    move-object v7, v1

    check-cast v7, Ljavafx/stage/Window;

    invoke-virtual {v7}, Ljavafx/stage/Window;->getScene()Ljavafx/scene/Scene;

    move-result-object v7

    move-object v4, v7

    .line 181
    .local v4, "scene":Ljavafx/scene/Scene;
    move-object v7, v4

    if-eqz v7, :cond_1

    move-object v7, v4

    invoke-virtual {v7}, Ljavafx/scene/Scene;->getRoot()Ljavafx/scene/Parent;

    move-result-object v7

    move-object v3, v7

    goto :goto_1

    .line 187
    .end local v4    # "scene":Ljavafx/scene/Scene;
    :cond_5
    sget-object v7, Lcom/sun/javafx/css/StyleManager;->styleLock:Ljava/lang/Object;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    move-object v4, v8

    monitor-enter v7

    .line 188
    :try_start_0
    sget-object v7, Lcom/sun/javafx/css/StyleManager;->cacheContainerMap:Ljava/util/Map;

    move-object v8, v3

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sun/javafx/css/StyleManager$CacheContainer;

    move-object v5, v7

    .line 189
    .local v5, "container":Lcom/sun/javafx/css/StyleManager$CacheContainer;
    move-object v7, v5

    if-nez v7, :cond_6

    .line 190
    new-instance v7, Lcom/sun/javafx/css/StyleManager$CacheContainer;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    invoke-direct {v8}, Lcom/sun/javafx/css/StyleManager$CacheContainer;-><init>()V

    move-object v5, v7

    .line 191
    sget-object v7, Lcom/sun/javafx/css/StyleManager;->cacheContainerMap:Ljava/util/Map;

    move-object v8, v3

    move-object v9, v5

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 194
    :cond_6
    move-object v7, v5

    move-object v8, v4

    monitor-exit v8

    move-object v0, v7

    goto :goto_0

    .line 195
    .end local v5    # "container":Lcom/sun/javafx/css/StyleManager$CacheContainer;
    :catchall_0
    move-exception v7

    move-object v6, v7

    move-object v7, v4

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v7, v6

    throw v7
.end method

.method public getCachedImage(Ljava/lang/String;)Ljavafx/scene/image/Image;
    .locals 11

    .prologue
    .line 753
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/StyleManager;
    move-object v1, p1

    .local v1, "url":Ljava/lang/String;
    sget-object v7, Lcom/sun/javafx/css/StyleManager;->styleLock:Ljava/lang/Object;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    move-object v2, v8

    monitor-enter v7

    .line 754
    const/4 v7, 0x0

    move-object v3, v7

    .line 755
    .local v3, "image":Ljavafx/scene/image/Image;
    move-object v7, v0

    :try_start_0
    iget-object v7, v7, Lcom/sun/javafx/css/StyleManager;->imageCache:Ljava/util/Map;

    move-object v8, v1

    invoke-interface {v7, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 757
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/css/StyleManager;->imageCache:Ljava/util/Map;

    move-object v8, v1

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljavafx/scene/image/Image;

    move-object v3, v7

    .line 794
    :cond_0
    :goto_0
    move-object v7, v3

    move-object v8, v2

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v7

    .end local v0    # "this":Lcom/sun/javafx/css/StyleManager;
    return-object v0

    .line 763
    .restart local v0    # "this":Lcom/sun/javafx/css/StyleManager;
    :cond_1
    :try_start_1
    new-instance v7, Ljavafx/scene/image/Image;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    move-object v9, v1

    invoke-direct {v8, v9}, Ljavafx/scene/image/Image;-><init>(Ljava/lang/String;)V

    move-object v3, v7

    .line 766
    move-object v7, v3

    invoke-virtual {v7}, Ljavafx/scene/image/Image;->isError()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 768
    invoke-static {}, Lcom/sun/javafx/css/StyleManager;->getLogger()Lsun/util/logging/PlatformLogger;

    move-result-object v7

    move-object v4, v7

    .line 769
    .local v4, "logger":Lsun/util/logging/PlatformLogger;
    move-object v7, v4

    if-eqz v7, :cond_2

    move-object v7, v4

    sget-object v8, Lsun/util/logging/PlatformLogger$Level;->WARNING:Lsun/util/logging/PlatformLogger$Level;

    invoke-virtual {v7, v8}, Lsun/util/logging/PlatformLogger;->isLoggable(Lsun/util/logging/PlatformLogger$Level;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 770
    move-object v7, v4

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v10, v8

    move-object v8, v10

    move-object v9, v10

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error loading image: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lsun/util/logging/PlatformLogger;->warning(Ljava/lang/String;)V

    .line 773
    :cond_2
    const/4 v7, 0x0

    move-object v3, v7

    .line 776
    .end local v4    # "logger":Lsun/util/logging/PlatformLogger;
    :cond_3
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/css/StyleManager;->imageCache:Ljava/util/Map;

    move-object v8, v1

    move-object v9, v3

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v7

    .line 791
    goto :goto_0

    .line 778
    :catch_0
    move-exception v7

    move-object v4, v7

    .line 780
    .local v4, "iae":Ljava/lang/IllegalArgumentException;
    :try_start_2
    invoke-static {}, Lcom/sun/javafx/css/StyleManager;->getLogger()Lsun/util/logging/PlatformLogger;

    move-result-object v7

    move-object v5, v7

    .line 781
    .local v5, "logger":Lsun/util/logging/PlatformLogger;
    move-object v7, v5

    if-eqz v7, :cond_4

    move-object v7, v5

    sget-object v8, Lsun/util/logging/PlatformLogger$Level;->WARNING:Lsun/util/logging/PlatformLogger$Level;

    invoke-virtual {v7, v8}, Lsun/util/logging/PlatformLogger;->isLoggable(Lsun/util/logging/PlatformLogger$Level;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 782
    move-object v7, v5

    move-object v8, v4

    invoke-virtual {v8}, Ljava/lang/IllegalArgumentException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lsun/util/logging/PlatformLogger;->warning(Ljava/lang/String;)V

    .line 791
    :cond_4
    goto :goto_0

    .line 785
    .end local v4    # "iae":Ljava/lang/IllegalArgumentException;
    .end local v5    # "logger":Lsun/util/logging/PlatformLogger;
    :catch_1
    move-exception v7

    move-object v4, v7

    .line 787
    .local v4, "npe":Ljava/lang/NullPointerException;
    invoke-static {}, Lcom/sun/javafx/css/StyleManager;->getLogger()Lsun/util/logging/PlatformLogger;

    move-result-object v7

    move-object v5, v7

    .line 788
    .restart local v5    # "logger":Lsun/util/logging/PlatformLogger;
    move-object v7, v5

    if-eqz v7, :cond_0

    move-object v7, v5

    sget-object v8, Lsun/util/logging/PlatformLogger$Level;->WARNING:Lsun/util/logging/PlatformLogger$Level;

    invoke-virtual {v7, v8}, Lsun/util/logging/PlatformLogger;->isLoggable(Lsun/util/logging/PlatformLogger$Level;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 789
    move-object v7, v5

    move-object v8, v4

    invoke-virtual {v8}, Ljava/lang/NullPointerException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lsun/util/logging/PlatformLogger;->warning(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 795
    .end local v4    # "npe":Ljava/lang/NullPointerException;
    .end local v5    # "logger":Lsun/util/logging/PlatformLogger;
    :catchall_0
    move-exception v7

    move-object v6, v7

    move-object v7, v2

    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v7, v6

    throw v7
.end method

.method public getSharedCache(Ljavafx/css/Styleable;Ljavafx/scene/SubScene;Lcom/sun/javafx/css/StyleCache$Key;)Lcom/sun/javafx/css/StyleCache;
    .locals 12

    .prologue
    .line 204
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/StyleManager;
    move-object v1, p1

    .local v1, "styleable":Ljavafx/css/Styleable;
    move-object v2, p2

    .local v2, "subScene":Ljavafx/scene/SubScene;
    move-object v3, p3

    .local v3, "key":Lcom/sun/javafx/css/StyleCache$Key;
    move-object v7, v0

    move-object v8, v1

    move-object v9, v2

    invoke-virtual {v7, v8, v9}, Lcom/sun/javafx/css/StyleManager;->getCacheContainer(Ljavafx/css/Styleable;Ljavafx/scene/SubScene;)Lcom/sun/javafx/css/StyleManager$CacheContainer;

    move-result-object v7

    move-object v4, v7

    .line 205
    .local v4, "container":Lcom/sun/javafx/css/StyleManager$CacheContainer;
    move-object v7, v4

    if-nez v7, :cond_0

    const/4 v7, 0x0

    move-object v0, v7

    .line 216
    .end local v0    # "this":Lcom/sun/javafx/css/StyleManager;
    :goto_0
    return-object v0

    .line 207
    .restart local v0    # "this":Lcom/sun/javafx/css/StyleManager;
    :cond_0
    move-object v7, v4

    invoke-static {v7}, Lcom/sun/javafx/css/StyleManager$CacheContainer;->access$100(Lcom/sun/javafx/css/StyleManager$CacheContainer;)Ljava/util/Map;

    move-result-object v7

    move-object v5, v7

    .line 208
    .local v5, "styleCache":Ljava/util/Map;, "Ljava/util/Map<Lcom/sun/javafx/css/StyleCache$Key;Lcom/sun/javafx/css/StyleCache;>;"
    move-object v7, v5

    if-nez v7, :cond_1

    const/4 v7, 0x0

    move-object v0, v7

    goto :goto_0

    .line 210
    :cond_1
    move-object v7, v5

    move-object v8, v3

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sun/javafx/css/StyleCache;

    move-object v6, v7

    .line 211
    .local v6, "sharedCache":Lcom/sun/javafx/css/StyleCache;
    move-object v7, v6

    if-nez v7, :cond_2

    .line 212
    new-instance v7, Lcom/sun/javafx/css/StyleCache;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    invoke-direct {v8}, Lcom/sun/javafx/css/StyleCache;-><init>()V

    move-object v6, v7

    .line 213
    move-object v7, v5

    new-instance v8, Lcom/sun/javafx/css/StyleCache$Key;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    move-object v10, v3

    invoke-direct {v9, v10}, Lcom/sun/javafx/css/StyleCache$Key;-><init>(Lcom/sun/javafx/css/StyleCache$Key;)V

    move-object v9, v6

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 216
    :cond_2
    move-object v7, v6

    move-object v0, v7

    goto :goto_0
.end method

.method public getStyleMap(Ljavafx/css/Styleable;Ljavafx/scene/SubScene;I)Lcom/sun/javafx/css/StyleMap;
    .locals 8

    .prologue
    .line 221
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/StyleManager;
    move-object v1, p1

    .local v1, "styleable":Ljavafx/css/Styleable;
    move-object v2, p2

    .local v2, "subScene":Ljavafx/scene/SubScene;
    move v3, p3

    .local v3, "smapId":I
    move v5, v3

    const/4 v6, -0x1

    if-ne v5, v6, :cond_0

    sget-object v5, Lcom/sun/javafx/css/StyleMap;->EMPTY_MAP:Lcom/sun/javafx/css/StyleMap;

    move-object v0, v5

    .line 226
    .end local v0    # "this":Lcom/sun/javafx/css/StyleManager;
    :goto_0
    return-object v0

    .line 223
    .restart local v0    # "this":Lcom/sun/javafx/css/StyleManager;
    :cond_0
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    invoke-virtual {v5, v6, v7}, Lcom/sun/javafx/css/StyleManager;->getCacheContainer(Ljavafx/css/Styleable;Ljavafx/scene/SubScene;)Lcom/sun/javafx/css/StyleManager$CacheContainer;

    move-result-object v5

    move-object v4, v5

    .line 224
    .local v4, "container":Lcom/sun/javafx/css/StyleManager$CacheContainer;
    move-object v5, v4

    if-nez v5, :cond_1

    sget-object v5, Lcom/sun/javafx/css/StyleMap;->EMPTY_MAP:Lcom/sun/javafx/css/StyleMap;

    move-object v0, v5

    goto :goto_0

    .line 226
    :cond_1
    move-object v5, v4

    move v6, v3

    invoke-virtual {v5, v6}, Lcom/sun/javafx/css/StyleManager$CacheContainer;->getStyleMap(I)Lcom/sun/javafx/css/StyleMap;

    move-result-object v5

    move-object v0, v5

    goto :goto_0
.end method

.method public removeUserAgentStylesheet(Ljava/lang/String;)V
    .locals 11

    .prologue
    .line 1399
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/StyleManager;
    move-object v1, p1

    .local v1, "url":Ljava/lang/String;
    move-object v8, v1

    if-eqz v8, :cond_1

    move-object v8, v1

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    :goto_0
    move-object v2, v8

    .line 1400
    .local v2, "fname":Ljava/lang/String;
    move-object v8, v2

    if-eqz v8, :cond_0

    move-object v8, v2

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1401
    .line 1424
    :cond_0
    :goto_1
    return-void

    .line 1399
    .end local v2    # "fname":Ljava/lang/String;
    :cond_1
    const/4 v8, 0x0

    goto :goto_0

    .line 1404
    .restart local v2    # "fname":Ljava/lang/String;
    :cond_2
    sget-object v8, Lcom/sun/javafx/css/StyleManager;->styleLock:Ljava/lang/Object;

    move-object v10, v8

    move-object v8, v10

    move-object v9, v10

    move-object v3, v9

    monitor-enter v8

    .line 1406
    const/4 v8, 0x0

    move v4, v8

    .line 1407
    .local v4, "removed":Z
    move-object v8, v0

    :try_start_0
    iget-object v8, v8, Lcom/sun/javafx/css/StyleManager;->platformUserAgentStylesheetContainers:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    const/4 v9, 0x1

    add-int/lit8 v8, v8, -0x1

    move v5, v8

    .local v5, "n":I
    :goto_2
    move v8, v5

    if-ltz v8, :cond_5

    .line 1409
    move-object v8, v2

    invoke-static {}, Ljavafx/application/Application;->getUserAgentStylesheet()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1410
    .line 1407
    :cond_3
    :goto_3
    add-int/lit8 v5, v5, -0x1

    goto :goto_2

    .line 1413
    :cond_4
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/css/StyleManager;->platformUserAgentStylesheetContainers:Ljava/util/List;

    move v9, v5

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sun/javafx/css/StyleManager$StylesheetContainer;

    move-object v6, v8

    .line 1414
    .local v6, "container":Lcom/sun/javafx/css/StyleManager$StylesheetContainer;
    move-object v8, v2

    move-object v9, v6

    iget-object v9, v9, Lcom/sun/javafx/css/StyleManager$StylesheetContainer;->fname:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1415
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/css/StyleManager;->platformUserAgentStylesheetContainers:Ljava/util/List;

    move v9, v5

    invoke-interface {v8, v9}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v8

    .line 1416
    const/4 v8, 0x1

    move v4, v8

    goto :goto_3

    .line 1420
    .end local v6    # "container":Lcom/sun/javafx/css/StyleManager$StylesheetContainer;
    :cond_5
    move v8, v4

    if-eqz v8, :cond_6

    .line 1421
    move-object v8, v0

    invoke-direct {v8}, Lcom/sun/javafx/css/StyleManager;->userAgentStylesheetsChanged()V

    .line 1423
    :cond_6
    move-object v8, v3

    monitor-exit v8

    .line 1424
    goto :goto_1

    .line 1423
    .end local v5    # "n":I
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

.method public setDefaultUserAgentStylesheet(Lcom/sun/javafx/css/Stylesheet;)V
    .locals 14

    .prologue
    .line 1431
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/StyleManager;
    move-object v1, p1

    .local v1, "ua_stylesheet":Lcom/sun/javafx/css/Stylesheet;
    move-object v9, v1

    if-nez v9, :cond_0

    .line 1432
    .line 1469
    :goto_0
    return-void

    .line 1436
    :cond_0
    move-object v9, v1

    invoke-virtual {v9}, Lcom/sun/javafx/css/Stylesheet;->getUrl()Ljava/lang/String;

    move-result-object v9

    move-object v2, v9

    .line 1437
    .local v2, "url":Ljava/lang/String;
    move-object v9, v2

    if-eqz v9, :cond_2

    move-object v9, v2

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    :goto_1
    move-object v3, v9

    .line 1439
    .local v3, "fname":Ljava/lang/String;
    sget-object v9, Lcom/sun/javafx/css/StyleManager;->styleLock:Ljava/lang/Object;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    move-object v4, v10

    monitor-enter v9

    .line 1441
    const/4 v9, 0x0

    move v5, v9

    .local v5, "n":I
    move-object v9, v0

    :try_start_0
    iget-object v9, v9, Lcom/sun/javafx/css/StyleManager;->platformUserAgentStylesheetContainers:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    move v6, v9

    .local v6, "nMax":I
    :goto_2
    move v9, v5

    move v10, v6

    if-ge v9, v10, :cond_5

    .line 1442
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/css/StyleManager;->platformUserAgentStylesheetContainers:Ljava/util/List;

    move v10, v5

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sun/javafx/css/StyleManager$StylesheetContainer;

    move-object v7, v9

    .line 1443
    .local v7, "container":Lcom/sun/javafx/css/StyleManager$StylesheetContainer;
    move-object v9, v3

    move-object v10, v7

    iget-object v10, v10, Lcom/sun/javafx/css/StyleManager$StylesheetContainer;->fname:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 1444
    move v9, v5

    if-lez v9, :cond_1

    .line 1445
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/css/StyleManager;->platformUserAgentStylesheetContainers:Ljava/util/List;

    move v10, v5

    invoke-interface {v9, v10}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v9

    .line 1446
    move-object v9, v0

    iget-boolean v9, v9, Lcom/sun/javafx/css/StyleManager;->hasDefaultUserAgentStylesheet:Z

    if-eqz v9, :cond_3

    .line 1447
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/css/StyleManager;->platformUserAgentStylesheetContainers:Ljava/util/List;

    const/4 v10, 0x0

    move-object v11, v7

    invoke-interface {v9, v10, v11}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .line 1452
    :cond_1
    :goto_3
    move-object v9, v4

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1437
    .end local v3    # "fname":Ljava/lang/String;
    .end local v5    # "n":I
    .end local v6    # "nMax":I
    .end local v7    # "container":Lcom/sun/javafx/css/StyleManager$StylesheetContainer;
    :cond_2
    const-string v9, ""

    goto :goto_1

    .line 1449
    .restart local v3    # "fname":Ljava/lang/String;
    .restart local v5    # "n":I
    .restart local v6    # "nMax":I
    .restart local v7    # "container":Lcom/sun/javafx/css/StyleManager$StylesheetContainer;
    :cond_3
    move-object v9, v0

    :try_start_1
    iget-object v9, v9, Lcom/sun/javafx/css/StyleManager;->platformUserAgentStylesheetContainers:Ljava/util/List;

    const/4 v10, 0x0

    move-object v11, v7

    invoke-interface {v9, v10, v11}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_3

    .line 1468
    .end local v5    # "n":I
    .end local v6    # "nMax":I
    .end local v7    # "container":Lcom/sun/javafx/css/StyleManager$StylesheetContainer;
    :catchall_0
    move-exception v9

    move-object v8, v9

    move-object v9, v4

    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v9, v8

    throw v9

    .line 1441
    .restart local v5    # "n":I
    .restart local v6    # "nMax":I
    .restart local v7    # "container":Lcom/sun/javafx/css/StyleManager$StylesheetContainer;
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 1456
    .end local v7    # "container":Lcom/sun/javafx/css/StyleManager$StylesheetContainer;
    :cond_5
    :try_start_2
    new-instance v9, Lcom/sun/javafx/css/StyleManager$StylesheetContainer;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    move-object v11, v3

    move-object v12, v1

    invoke-direct {v10, v11, v12}, Lcom/sun/javafx/css/StyleManager$StylesheetContainer;-><init>(Ljava/lang/String;Lcom/sun/javafx/css/Stylesheet;)V

    move-object v5, v9

    .line 1457
    .local v5, "sc":Lcom/sun/javafx/css/StyleManager$StylesheetContainer;
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/css/StyleManager;->platformUserAgentStylesheetContainers:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-nez v9, :cond_6

    .line 1458
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/css/StyleManager;->platformUserAgentStylesheetContainers:Ljava/util/List;

    move-object v10, v5

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v9

    .line 1464
    :goto_4
    move-object v9, v0

    const/4 v10, 0x1

    iput-boolean v10, v9, Lcom/sun/javafx/css/StyleManager;->hasDefaultUserAgentStylesheet:Z

    .line 1466
    move-object v9, v1

    sget-object v10, Ljavafx/css/StyleOrigin;->USER_AGENT:Ljavafx/css/StyleOrigin;

    invoke-virtual {v9, v10}, Lcom/sun/javafx/css/Stylesheet;->setOrigin(Ljavafx/css/StyleOrigin;)V

    .line 1467
    move-object v9, v0

    invoke-direct {v9}, Lcom/sun/javafx/css/StyleManager;->userAgentStylesheetsChanged()V

    .line 1468
    move-object v9, v4

    monitor-exit v9

    .line 1469
    goto/16 :goto_0

    .line 1459
    :cond_6
    move-object v9, v0

    iget-boolean v9, v9, Lcom/sun/javafx/css/StyleManager;->hasDefaultUserAgentStylesheet:Z

    if-eqz v9, :cond_7

    .line 1460
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/css/StyleManager;->platformUserAgentStylesheetContainers:Ljava/util/List;

    const/4 v10, 0x0

    move-object v11, v5

    invoke-interface {v9, v10, v11}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    goto :goto_4

    .line 1462
    :cond_7
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/css/StyleManager;->platformUserAgentStylesheetContainers:Ljava/util/List;

    const/4 v10, 0x0

    move-object v11, v5

    invoke-interface {v9, v10, v11}, Ljava/util/List;->add(ILjava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4
.end method

.method public setDefaultUserAgentStylesheet(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 1319
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/StyleManager;
    move-object v1, p1

    .local v1, "fname":Ljava/lang/String;
    move-object v2, v0

    const/4 v3, 0x0

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Lcom/sun/javafx/css/StyleManager;->setDefaultUserAgentStylesheet(Ljavafx/scene/Scene;Ljava/lang/String;)V

    .line 1320
    return-void
.end method

.method public setDefaultUserAgentStylesheet(Ljavafx/scene/Scene;Ljava/lang/String;)V
    .locals 9

    .prologue
    .line 1330
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/StyleManager;
    move-object v1, p1

    .local v1, "scene":Ljavafx/scene/Scene;
    move-object v2, p2

    .local v2, "url":Ljava/lang/String;
    move-object v6, v2

    if-eqz v6, :cond_1

    move-object v6, v2

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    :goto_0
    move-object v3, v6

    .line 1331
    .local v3, "fname":Ljava/lang/String;
    move-object v6, v3

    if-eqz v6, :cond_0

    move-object v6, v3

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1332
    .line 1347
    :cond_0
    :goto_1
    return-void

    .line 1330
    .end local v3    # "fname":Ljava/lang/String;
    :cond_1
    const/4 v6, 0x0

    goto :goto_0

    .line 1335
    .restart local v3    # "fname":Ljava/lang/String;
    :cond_2
    sget-object v6, Lcom/sun/javafx/css/StyleManager;->styleLock:Ljava/lang/Object;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    move-object v4, v7

    monitor-enter v6

    .line 1338
    move-object v6, v1

    :try_start_0
    invoke-static {v6}, Lcom/sun/javafx/css/CssError;->setCurrentScene(Ljavafx/scene/Scene;)V

    .line 1340
    move-object v6, v0

    move-object v7, v3

    invoke-direct {v6, v7}, Lcom/sun/javafx/css/StyleManager;->_setDefaultUserAgentStylesheet(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1341
    move-object v6, v0

    invoke-direct {v6}, Lcom/sun/javafx/css/StyleManager;->userAgentStylesheetsChanged()V

    .line 1345
    :cond_3
    const/4 v6, 0x0

    invoke-static {v6}, Lcom/sun/javafx/css/CssError;->setCurrentScene(Ljavafx/scene/Scene;)V

    .line 1346
    move-object v6, v4

    monitor-exit v6

    .line 1347
    goto :goto_1

    .line 1346
    :catchall_0
    move-exception v6

    move-object v5, v6

    move-object v6, v4

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v6, v5

    throw v6
.end method

.method public setUserAgentStylesheets(Ljava/util/List;)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1157
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/StyleManager;
    move-object/from16 v1, p1

    .local v1, "urls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object v12, v1

    if-eqz v12, :cond_0

    move-object v12, v1

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    if-nez v12, :cond_1

    .line 1212
    :cond_0
    :goto_0
    return-void

    .line 1159
    :cond_1
    sget-object v12, Lcom/sun/javafx/css/StyleManager;->styleLock:Ljava/lang/Object;

    move-object v14, v12

    move-object v12, v14

    move-object v13, v14

    move-object v2, v13

    monitor-enter v12

    .line 1161
    move-object v12, v1

    :try_start_0
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    move-object v13, v0

    iget-object v13, v13, Lcom/sun/javafx/css/StyleManager;->platformUserAgentStylesheetContainers:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    if-ne v12, v13, :cond_6

    .line 1162
    const/4 v12, 0x1

    move v3, v12

    .line 1163
    .local v3, "isSame":Z
    const/4 v12, 0x0

    move v4, v12

    .local v4, "n":I
    move-object v12, v1

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    move v5, v12

    .local v5, "nMax":I
    :goto_1
    move v12, v4

    move v13, v5

    if-ge v12, v13, :cond_2

    move v12, v3

    if-eqz v12, :cond_2

    .line 1165
    move-object v12, v1

    move v13, v4

    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    move-object v6, v12

    .line 1166
    .local v6, "url":Ljava/lang/String;
    move-object v12, v6

    if-eqz v12, :cond_3

    move-object v12, v6

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    :goto_2
    move-object v7, v12

    .line 1168
    .local v7, "fname":Ljava/lang/String;
    move-object v12, v7

    if-eqz v12, :cond_2

    move-object v12, v7

    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_4

    .line 1183
    .end local v6    # "url":Ljava/lang/String;
    .end local v7    # "fname":Ljava/lang/String;
    :cond_2
    move v12, v3

    if-eqz v12, :cond_6

    move-object v12, v2

    monitor-exit v12

    goto :goto_0

    .line 1166
    .restart local v6    # "url":Ljava/lang/String;
    :cond_3
    const/4 v12, 0x0

    goto :goto_2

    .line 1170
    .restart local v7    # "fname":Ljava/lang/String;
    :cond_4
    move-object v12, v0

    iget-object v12, v12, Lcom/sun/javafx/css/StyleManager;->platformUserAgentStylesheetContainers:Ljava/util/List;

    move v13, v4

    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/sun/javafx/css/StyleManager$StylesheetContainer;

    move-object v8, v12

    .line 1172
    .local v8, "container":Lcom/sun/javafx/css/StyleManager$StylesheetContainer;
    move-object v12, v7

    move-object v13, v8

    iget-object v13, v13, Lcom/sun/javafx/css/StyleManager$StylesheetContainer;->fname:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    move v14, v12

    move v12, v14

    move v13, v14

    move v3, v13

    if-eqz v12, :cond_5

    .line 1178
    move-object v12, v8

    iget-object v12, v12, Lcom/sun/javafx/css/StyleManager$StylesheetContainer;->stylesheet:Lcom/sun/javafx/css/Stylesheet;

    invoke-virtual {v12}, Lcom/sun/javafx/css/Stylesheet;->getUrl()Ljava/lang/String;

    move-result-object v12

    move-object v9, v12

    .line 1179
    .local v9, "stylesheetUrl":Ljava/lang/String;
    move-object v12, v9

    invoke-static {v12}, Lcom/sun/javafx/css/StyleManager;->calculateCheckSum(Ljava/lang/String;)[B

    move-result-object v12

    move-object v10, v12

    .line 1180
    .local v10, "checksum":[B
    move-object v12, v10

    move-object v13, v8

    iget-object v13, v13, Lcom/sun/javafx/css/StyleManager$StylesheetContainer;->checksum:[B

    invoke-static {v12, v13}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v12

    move v3, v12

    .line 1163
    .end local v9    # "stylesheetUrl":Ljava/lang/String;
    .end local v10    # "checksum":[B
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1186
    .end local v3    # "isSame":Z
    .end local v4    # "n":I
    .end local v5    # "nMax":I
    .end local v6    # "url":Ljava/lang/String;
    .end local v7    # "fname":Ljava/lang/String;
    .end local v8    # "container":Lcom/sun/javafx/css/StyleManager$StylesheetContainer;
    :cond_6
    const/4 v12, 0x0

    move v3, v12

    .line 1188
    .local v3, "modified":Z
    const/4 v12, 0x0

    move v4, v12

    .restart local v4    # "n":I
    move-object v12, v1

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    move v5, v12

    .restart local v5    # "nMax":I
    :goto_3
    move v12, v4

    move v13, v5

    if-ge v12, v13, :cond_c

    .line 1190
    move-object v12, v1

    move v13, v4

    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    move-object v6, v12

    .line 1191
    .restart local v6    # "url":Ljava/lang/String;
    move-object v12, v6

    if-eqz v12, :cond_8

    move-object v12, v6

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    :goto_4
    move-object v7, v12

    .line 1193
    .restart local v7    # "fname":Ljava/lang/String;
    move-object v12, v7

    if-eqz v12, :cond_7

    move-object v12, v7

    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_9

    .line 1188
    :cond_7
    :goto_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 1191
    .end local v7    # "fname":Ljava/lang/String;
    :cond_8
    const/4 v12, 0x0

    goto :goto_4

    .line 1195
    .restart local v7    # "fname":Ljava/lang/String;
    :cond_9
    move v12, v3

    if-nez v12, :cond_a

    .line 1197
    move-object v12, v0

    iget-object v12, v12, Lcom/sun/javafx/css/StyleManager;->platformUserAgentStylesheetContainers:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->clear()V

    .line 1198
    const/4 v12, 0x1

    move v3, v12

    .line 1201
    :cond_a
    move v12, v4

    if-nez v12, :cond_b

    .line 1202
    move-object v12, v0

    move-object v13, v7

    invoke-direct {v12, v13}, Lcom/sun/javafx/css/StyleManager;->_setDefaultUserAgentStylesheet(Ljava/lang/String;)Z

    move-result v12

    goto :goto_5

    .line 1204
    :cond_b
    move-object v12, v0

    move-object v13, v7

    invoke-direct {v12, v13}, Lcom/sun/javafx/css/StyleManager;->_addUserAgentStylesheet(Ljava/lang/String;)Z

    move-result v12

    goto :goto_5

    .line 1208
    .end local v6    # "url":Ljava/lang/String;
    .end local v7    # "fname":Ljava/lang/String;
    :cond_c
    move v12, v3

    if-eqz v12, :cond_d

    .line 1209
    move-object v12, v0

    invoke-direct {v12}, Lcom/sun/javafx/css/StyleManager;->userAgentStylesheetsChanged()V

    .line 1211
    :cond_d
    move-object v12, v2

    monitor-exit v12

    .line 1212
    goto/16 :goto_0

    .line 1211
    .end local v3    # "modified":Z
    .end local v4    # "n":I
    .end local v5    # "nMax":I
    :catchall_0
    move-exception v12

    move-object v11, v12

    move-object v12, v2

    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v12, v11

    throw v12
.end method

.method public stylesheetsChanged(Ljavafx/scene/Parent;Ljavafx/collections/ListChangeListener$Change;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/Parent;",
            "Ljavafx/collections/ListChangeListener$Change",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 573
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/StyleManager;
    move-object v1, p1

    .local v1, "parent":Ljavafx/scene/Parent;
    move-object v2, p2

    .local v2, "c":Ljavafx/collections/ListChangeListener$Change;, "Ljavafx/collections/ListChangeListener$Change<Ljava/lang/String;>;"
    sget-object v8, Lcom/sun/javafx/css/StyleManager;->styleLock:Ljava/lang/Object;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    move-object v3, v9

    monitor-enter v8

    .line 574
    move-object v8, v2

    :try_start_0
    invoke-virtual {v8}, Ljavafx/collections/ListChangeListener$Change;->reset()V

    .line 575
    :cond_0
    :goto_0
    move-object v8, v2

    invoke-virtual {v8}, Ljavafx/collections/ListChangeListener$Change;->next()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 576
    move-object v8, v2

    invoke-virtual {v8}, Ljavafx/collections/ListChangeListener$Change;->wasRemoved()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 577
    move-object v8, v2

    invoke-virtual {v8}, Ljavafx/collections/ListChangeListener$Change;->getRemoved()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move-object v4, v8

    :goto_1
    move-object v8, v4

    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    move-object v8, v4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    move-object v5, v8

    .line 578
    .local v5, "fname":Ljava/lang/String;
    move-object v8, v0

    move-object v9, v1

    move-object v10, v5

    invoke-direct {v8, v9, v10}, Lcom/sun/javafx/css/StyleManager;->stylesheetRemoved(Ljavafx/scene/Parent;Ljava/lang/String;)V

    .line 580
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/css/StyleManager;->stylesheetContainerMap:Ljava/util/Map;

    move-object v9, v5

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sun/javafx/css/StyleManager$StylesheetContainer;

    move-object v6, v8

    .line 581
    .local v6, "stylesheetContainer":Lcom/sun/javafx/css/StyleManager$StylesheetContainer;
    move-object v8, v6

    if-eqz v8, :cond_1

    .line 582
    move-object v8, v6

    invoke-virtual {v8}, Lcom/sun/javafx/css/StyleManager$StylesheetContainer;->invalidateChecksum()V

    .line 584
    :cond_1
    goto :goto_1

    .end local v5    # "fname":Ljava/lang/String;
    .end local v6    # "stylesheetContainer":Lcom/sun/javafx/css/StyleManager$StylesheetContainer;
    :cond_2
    goto :goto_0

    .line 587
    :cond_3
    move-object v8, v3

    monitor-exit v8

    .line 588
    return-void

    .line 587
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

.method public stylesheetsChanged(Ljavafx/scene/Scene;Ljavafx/collections/ListChangeListener$Change;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/Scene;",
            "Ljavafx/collections/ListChangeListener$Change",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 489
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/StyleManager;
    move-object v1, p1

    .local v1, "scene":Ljavafx/scene/Scene;
    move-object/from16 v2, p2

    .local v2, "c":Ljavafx/collections/ListChangeListener$Change;, "Ljavafx/collections/ListChangeListener$Change<Ljava/lang/String;>;"
    sget-object v10, Lcom/sun/javafx/css/StyleManager;->styleLock:Ljava/lang/Object;

    move-object v13, v10

    move-object v10, v13

    move-object v11, v13

    move-object v3, v11

    monitor-enter v10

    .line 491
    :try_start_0
    sget-object v10, Lcom/sun/javafx/css/StyleManager;->cacheContainerMap:Ljava/util/Map;

    invoke-interface {v10}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v10

    move-object v4, v10

    .line 492
    .local v4, "entrySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljavafx/scene/Parent;Lcom/sun/javafx/css/StyleManager$CacheContainer;>;>;"
    move-object v10, v4

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move-object v5, v10

    :goto_0
    move-object v10, v5

    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    move-object v10, v5

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map$Entry;

    move-object v6, v10

    .line 493
    .local v6, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljavafx/scene/Parent;Lcom/sun/javafx/css/StyleManager$CacheContainer;>;"
    move-object v10, v6

    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljavafx/scene/Parent;

    move-object v7, v10

    .line 494
    .local v7, "parent":Ljavafx/scene/Parent;
    move-object v10, v6

    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/sun/javafx/css/StyleManager$CacheContainer;

    move-object v8, v10

    .line 495
    .local v8, "container":Lcom/sun/javafx/css/StyleManager$CacheContainer;
    move-object v10, v7

    invoke-virtual {v10}, Ljavafx/scene/Parent;->getScene()Ljavafx/scene/Scene;

    move-result-object v10

    move-object v11, v1

    if-ne v10, v11, :cond_0

    .line 496
    move-object v10, v8

    invoke-static {v10}, Lcom/sun/javafx/css/StyleManager$CacheContainer;->access$200(Lcom/sun/javafx/css/StyleManager$CacheContainer;)V

    .line 499
    :cond_0
    goto :goto_0

    .line 501
    .end local v6    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljavafx/scene/Parent;Lcom/sun/javafx/css/StyleManager$CacheContainer;>;"
    .end local v7    # "parent":Ljavafx/scene/Parent;
    .end local v8    # "container":Lcom/sun/javafx/css/StyleManager$CacheContainer;
    :cond_1
    move-object v10, v2

    invoke-virtual {v10}, Ljavafx/collections/ListChangeListener$Change;->reset()V

    .line 502
    :cond_2
    :goto_1
    move-object v10, v2

    invoke-virtual {v10}, Ljavafx/collections/ListChangeListener$Change;->next()Z

    move-result v10

    if-eqz v10, :cond_5

    .line 503
    move-object v10, v2

    invoke-virtual {v10}, Ljavafx/collections/ListChangeListener$Change;->wasRemoved()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 504
    move-object v10, v2

    invoke-virtual {v10}, Ljavafx/collections/ListChangeListener$Change;->getRemoved()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move-object v5, v10

    :goto_2
    move-object v10, v5

    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    move-object v10, v5

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    move-object v6, v10

    .line 505
    .local v6, "fname":Ljava/lang/String;
    move-object v10, v0

    move-object v11, v1

    move-object v12, v6

    invoke-direct {v10, v11, v12}, Lcom/sun/javafx/css/StyleManager;->stylesheetRemoved(Ljavafx/scene/Scene;Ljava/lang/String;)V

    .line 507
    move-object v10, v0

    iget-object v10, v10, Lcom/sun/javafx/css/StyleManager;->stylesheetContainerMap:Ljava/util/Map;

    move-object v11, v6

    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/sun/javafx/css/StyleManager$StylesheetContainer;

    move-object v7, v10

    .line 508
    .local v7, "stylesheetContainer":Lcom/sun/javafx/css/StyleManager$StylesheetContainer;
    move-object v10, v7

    if-eqz v10, :cond_3

    .line 509
    move-object v10, v7

    invoke-virtual {v10}, Lcom/sun/javafx/css/StyleManager$StylesheetContainer;->invalidateChecksum()V

    .line 512
    :cond_3
    goto :goto_2

    .end local v6    # "fname":Ljava/lang/String;
    .end local v7    # "stylesheetContainer":Lcom/sun/javafx/css/StyleManager$StylesheetContainer;
    :cond_4
    goto :goto_1

    .line 515
    :cond_5
    move-object v10, v3

    monitor-exit v10

    .line 516
    return-void

    .line 515
    .end local v4    # "entrySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljavafx/scene/Parent;Lcom/sun/javafx/css/StyleManager$CacheContainer;>;>;"
    :catchall_0
    move-exception v10

    move-object v9, v10

    move-object v10, v3

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v10, v9

    throw v10
.end method
