.class public Ljavafx/scene/input/Clipboard;
.super Ljava/lang/Object;
.source "Clipboard.java"


# static fields
.field private static localClipboard:Ljavafx/scene/input/Clipboard;

.field private static systemClipboard:Ljavafx/scene/input/Clipboard;


# instance fields
.field private final acc:Ljava/security/AccessControlContext;

.field private contentPut:Z

.field peer:Lcom/sun/javafx/tk/TKClipboard;


# direct methods
.method constructor <init>(Lcom/sun/javafx/tk/TKClipboard;)V
    .locals 5

    .prologue
    .line 184
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/input/Clipboard;
    move-object v1, p1

    .local v1, "peer":Lcom/sun/javafx/tk/TKClipboard;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 125
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Ljavafx/scene/input/Clipboard;->contentPut:Z

    .line 162
    move-object v2, v0

    invoke-static {}, Ljava/security/AccessController;->getContext()Ljava/security/AccessControlContext;

    move-result-object v3

    iput-object v3, v2, Ljavafx/scene/input/Clipboard;->acc:Ljava/security/AccessControlContext;

    .line 185
    invoke-static {}, Lcom/sun/javafx/tk/Toolkit;->getToolkit()Lcom/sun/javafx/tk/Toolkit;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sun/javafx/tk/Toolkit;->checkFxUserThread()V

    .line 186
    move-object v2, v1

    if-nez v2, :cond_0

    .line 187
    new-instance v2, Ljava/lang/NullPointerException;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    .line 189
    :cond_0
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/input/Clipboard;->acc:Ljava/security/AccessControlContext;

    invoke-interface {v2, v3}, Lcom/sun/javafx/tk/TKClipboard;->setSecurityContext(Ljava/security/AccessControlContext;)V

    .line 190
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/input/Clipboard;->peer:Lcom/sun/javafx/tk/TKClipboard;

    .line 191
    return-void
.end method

.method private static declared-synchronized getLocalClipboardImpl()Ljavafx/scene/input/Clipboard;
    .locals 5

    .prologue
    .line 418
    const-class v3, Ljavafx/scene/input/Clipboard;

    monitor-enter v3

    :try_start_0
    sget-object v0, Ljavafx/scene/input/Clipboard;->localClipboard:Ljavafx/scene/input/Clipboard;

    if-nez v0, :cond_0

    .line 419
    new-instance v0, Ljavafx/scene/input/Clipboard;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    .line 420
    invoke-static {}, Lcom/sun/javafx/tk/Toolkit;->getToolkit()Lcom/sun/javafx/tk/Toolkit;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sun/javafx/tk/Toolkit;->createLocalClipboard()Lcom/sun/javafx/tk/TKClipboard;

    move-result-object v2

    invoke-direct {v1, v2}, Ljavafx/scene/input/Clipboard;-><init>(Lcom/sun/javafx/tk/TKClipboard;)V

    sput-object v0, Ljavafx/scene/input/Clipboard;->localClipboard:Ljavafx/scene/input/Clipboard;

    .line 422
    :cond_0
    sget-object v0, Ljavafx/scene/input/Clipboard;->localClipboard:Ljavafx/scene/input/Clipboard;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    return-object v0

    .line 418
    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0
.end method

.method public static getSystemClipboard()Ljavafx/scene/input/Clipboard;
    .locals 5

    .prologue
    .line 171
    :try_start_0
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v1

    move-object v0, v1

    .line 172
    .local v0, "securityManager":Ljava/lang/SecurityManager;
    move-object v1, v0

    if-eqz v1, :cond_0

    .line 173
    move-object v1, v0

    new-instance v2, Ljava/security/AllPermission;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/security/AllPermission;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 175
    :cond_0
    invoke-static {}, Ljavafx/scene/input/Clipboard;->getSystemClipboardImpl()Ljavafx/scene/input/Clipboard;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    move-object v0, v1

    .line 177
    .end local v0    # "securityManager":Ljava/lang/SecurityManager;
    :goto_0
    return-object v0

    .line 176
    .restart local v0    # "securityManager":Ljava/lang/SecurityManager;
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 177
    .local v0, "e":Ljava/lang/SecurityException;
    invoke-static {}, Ljavafx/scene/input/Clipboard;->getLocalClipboardImpl()Ljavafx/scene/input/Clipboard;

    move-result-object v1

    move-object v0, v1

    goto :goto_0
.end method

.method private static declared-synchronized getSystemClipboardImpl()Ljavafx/scene/input/Clipboard;
    .locals 5

    .prologue
    .line 408
    const-class v3, Ljavafx/scene/input/Clipboard;

    monitor-enter v3

    :try_start_0
    sget-object v0, Ljavafx/scene/input/Clipboard;->systemClipboard:Ljavafx/scene/input/Clipboard;

    if-nez v0, :cond_0

    .line 409
    new-instance v0, Ljavafx/scene/input/Clipboard;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    .line 410
    invoke-static {}, Lcom/sun/javafx/tk/Toolkit;->getToolkit()Lcom/sun/javafx/tk/Toolkit;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sun/javafx/tk/Toolkit;->getSystemClipboard()Lcom/sun/javafx/tk/TKClipboard;

    move-result-object v2

    invoke-direct {v1, v2}, Ljavafx/scene/input/Clipboard;-><init>(Lcom/sun/javafx/tk/TKClipboard;)V

    sput-object v0, Ljavafx/scene/input/Clipboard;->systemClipboard:Ljavafx/scene/input/Clipboard;

    .line 412
    :cond_0
    sget-object v0, Ljavafx/scene/input/Clipboard;->systemClipboard:Ljavafx/scene/input/Clipboard;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    return-object v0

    .line 408
    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0
.end method


# virtual methods
.method public final clear()V
    .locals 3

    .prologue
    .line 199
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/input/Clipboard;
    move-object v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljavafx/scene/input/Clipboard;->setContent(Ljava/util/Map;)Z

    move-result v1

    .line 200
    return-void
.end method

.method public final getContent(Ljavafx/scene/input/DataFormat;)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 250
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/input/Clipboard;
    move-object v1, p1

    .local v1, "dataFormat":Ljavafx/scene/input/DataFormat;
    invoke-static {}, Lcom/sun/javafx/tk/Toolkit;->getToolkit()Lcom/sun/javafx/tk/Toolkit;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sun/javafx/tk/Toolkit;->checkFxUserThread()V

    .line 251
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/scene/input/Clipboard;->getContentImpl(Ljavafx/scene/input/DataFormat;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/input/Clipboard;
    return-object v0
.end method

.method getContentImpl(Ljavafx/scene/input/DataFormat;)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 258
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/input/Clipboard;
    move-object v1, p1

    .local v1, "dataFormat":Ljavafx/scene/input/DataFormat;
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/input/Clipboard;->peer:Lcom/sun/javafx/tk/TKClipboard;

    move-object v3, v1

    invoke-interface {v2, v3}, Lcom/sun/javafx/tk/TKClipboard;->getContent(Ljavafx/scene/input/DataFormat;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/input/Clipboard;
    return-object v0
.end method

.method public final getContentTypes()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljavafx/scene/input/DataFormat;",
            ">;"
        }
    .end annotation

    .prologue
    .line 211
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/input/Clipboard;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/input/Clipboard;->peer:Lcom/sun/javafx/tk/TKClipboard;

    invoke-interface {v1}, Lcom/sun/javafx/tk/TKClipboard;->getContentTypes()Ljava/util/Set;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/input/Clipboard;
    return-object v0
.end method

.method public final getFiles()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .prologue
    .line 393
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/input/Clipboard;
    move-object v1, v0

    sget-object v2, Ljavafx/scene/input/DataFormat;->FILES:Ljavafx/scene/input/DataFormat;

    invoke-virtual {v1, v2}, Ljavafx/scene/input/Clipboard;->getContent(Ljavafx/scene/input/DataFormat;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/input/Clipboard;
    return-object v0
.end method

.method public final getHtml()Ljava/lang/String;
    .locals 3

    .prologue
    .line 330
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/input/Clipboard;
    move-object v1, v0

    sget-object v2, Ljavafx/scene/input/DataFormat;->HTML:Ljavafx/scene/input/DataFormat;

    invoke-virtual {v1, v2}, Ljavafx/scene/input/Clipboard;->getContent(Ljavafx/scene/input/DataFormat;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/input/Clipboard;
    return-object v0
.end method

.method public final getImage()Ljavafx/scene/image/Image;
    .locals 3

    .prologue
    .line 372
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/input/Clipboard;
    move-object v1, v0

    sget-object v2, Ljavafx/scene/input/DataFormat;->IMAGE:Ljavafx/scene/input/DataFormat;

    invoke-virtual {v1, v2}, Ljavafx/scene/input/Clipboard;->getContent(Ljavafx/scene/input/DataFormat;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/scene/image/Image;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/input/Clipboard;
    return-object v0
.end method

.method public final getRtf()Ljava/lang/String;
    .locals 3

    .prologue
    .line 351
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/input/Clipboard;
    move-object v1, v0

    sget-object v2, Ljavafx/scene/input/DataFormat;->RTF:Ljavafx/scene/input/DataFormat;

    invoke-virtual {v1, v2}, Ljavafx/scene/input/Clipboard;->getContent(Ljavafx/scene/input/DataFormat;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/input/Clipboard;
    return-object v0
.end method

.method public final getString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 288
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/input/Clipboard;
    move-object v1, v0

    sget-object v2, Ljavafx/scene/input/DataFormat;->PLAIN_TEXT:Ljavafx/scene/input/DataFormat;

    invoke-virtual {v1, v2}, Ljavafx/scene/input/Clipboard;->getContent(Ljavafx/scene/input/DataFormat;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/input/Clipboard;
    return-object v0
.end method

.method public final getUrl()Ljava/lang/String;
    .locals 3

    .prologue
    .line 309
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/input/Clipboard;
    move-object v1, v0

    sget-object v2, Ljavafx/scene/input/DataFormat;->URL:Ljavafx/scene/input/DataFormat;

    invoke-virtual {v1, v2}, Ljavafx/scene/input/Clipboard;->getContent(Ljavafx/scene/input/DataFormat;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/input/Clipboard;
    return-object v0
.end method

.method public final hasContent(Ljavafx/scene/input/DataFormat;)Z
    .locals 4

    .prologue
    .line 266
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/input/Clipboard;
    move-object v1, p1

    .local v1, "dataFormat":Ljavafx/scene/input/DataFormat;
    invoke-static {}, Lcom/sun/javafx/tk/Toolkit;->getToolkit()Lcom/sun/javafx/tk/Toolkit;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sun/javafx/tk/Toolkit;->checkFxUserThread()V

    .line 267
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/input/Clipboard;->peer:Lcom/sun/javafx/tk/TKClipboard;

    move-object v3, v1

    invoke-interface {v2, v3}, Lcom/sun/javafx/tk/TKClipboard;->hasContent(Ljavafx/scene/input/DataFormat;)Z

    move-result v2

    move v0, v2

    .end local v0    # "this":Ljavafx/scene/input/Clipboard;
    return v0
.end method

.method public final hasFiles()Z
    .locals 3

    .prologue
    .line 381
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/input/Clipboard;
    move-object v1, v0

    sget-object v2, Ljavafx/scene/input/DataFormat;->FILES:Ljavafx/scene/input/DataFormat;

    invoke-virtual {v1, v2}, Ljavafx/scene/input/Clipboard;->hasContent(Ljavafx/scene/input/DataFormat;)Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Ljavafx/scene/input/Clipboard;
    return v0
.end method

.method public final hasHtml()Z
    .locals 3

    .prologue
    .line 318
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/input/Clipboard;
    move-object v1, v0

    sget-object v2, Ljavafx/scene/input/DataFormat;->HTML:Ljavafx/scene/input/DataFormat;

    invoke-virtual {v1, v2}, Ljavafx/scene/input/Clipboard;->hasContent(Ljavafx/scene/input/DataFormat;)Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Ljavafx/scene/input/Clipboard;
    return v0
.end method

.method public final hasImage()Z
    .locals 3

    .prologue
    .line 360
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/input/Clipboard;
    move-object v1, v0

    sget-object v2, Ljavafx/scene/input/DataFormat;->IMAGE:Ljavafx/scene/input/DataFormat;

    invoke-virtual {v1, v2}, Ljavafx/scene/input/Clipboard;->hasContent(Ljavafx/scene/input/DataFormat;)Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Ljavafx/scene/input/Clipboard;
    return v0
.end method

.method public final hasRtf()Z
    .locals 3

    .prologue
    .line 339
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/input/Clipboard;
    move-object v1, v0

    sget-object v2, Ljavafx/scene/input/DataFormat;->RTF:Ljavafx/scene/input/DataFormat;

    invoke-virtual {v1, v2}, Ljavafx/scene/input/Clipboard;->hasContent(Ljavafx/scene/input/DataFormat;)Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Ljavafx/scene/input/Clipboard;
    return v0
.end method

.method public final hasString()Z
    .locals 3

    .prologue
    .line 276
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/input/Clipboard;
    move-object v1, v0

    sget-object v2, Ljavafx/scene/input/DataFormat;->PLAIN_TEXT:Ljavafx/scene/input/DataFormat;

    invoke-virtual {v1, v2}, Ljavafx/scene/input/Clipboard;->hasContent(Ljavafx/scene/input/DataFormat;)Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Ljavafx/scene/input/Clipboard;
    return v0
.end method

.method public final hasUrl()Z
    .locals 3

    .prologue
    .line 297
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/input/Clipboard;
    move-object v1, v0

    sget-object v2, Ljavafx/scene/input/DataFormat;->URL:Ljavafx/scene/input/DataFormat;

    invoke-virtual {v1, v2}, Ljavafx/scene/input/Clipboard;->hasContent(Ljavafx/scene/input/DataFormat;)Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Ljavafx/scene/input/Clipboard;
    return v0
.end method

.method public impl_contentPut()Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 402
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/input/Clipboard;
    move-object v1, v0

    iget-boolean v1, v1, Ljavafx/scene/input/Clipboard;->contentPut:Z

    move v0, v1

    .end local v0    # "this":Ljavafx/scene/input/Clipboard;
    return v0
.end method

.method public final setContent(Ljava/util/Map;)Z
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljavafx/scene/input/DataFormat;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 228
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/input/Clipboard;
    move-object v1, p1

    .local v1, "content":Ljava/util/Map;, "Ljava/util/Map<Ljavafx/scene/input/DataFormat;Ljava/lang/Object;>;"
    invoke-static {}, Lcom/sun/javafx/tk/Toolkit;->getToolkit()Lcom/sun/javafx/tk/Toolkit;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sun/javafx/tk/Toolkit;->checkFxUserThread()V

    .line 229
    move-object v6, v1

    if-nez v6, :cond_0

    .line 230
    move-object v6, v0

    const/4 v7, 0x0

    iput-boolean v7, v6, Ljavafx/scene/input/Clipboard;->contentPut:Z

    .line 231
    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/input/Clipboard;->peer:Lcom/sun/javafx/tk/TKClipboard;

    const/4 v7, 0x0

    new-array v7, v7, [Ljavafx/util/Pair;

    invoke-interface {v6, v7}, Lcom/sun/javafx/tk/TKClipboard;->putContent([Ljavafx/util/Pair;)Z

    move-result v6

    .line 232
    const/4 v6, 0x1

    move v0, v6

    .line 240
    .end local v0    # "this":Ljavafx/scene/input/Clipboard;
    :goto_0
    return v0

    .line 234
    .restart local v0    # "this":Ljavafx/scene/input/Clipboard;
    :cond_0
    move-object v6, v1

    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v6

    new-array v6, v6, [Ljavafx/util/Pair;

    move-object v2, v6

    .line 235
    .local v2, "data":[Ljavafx/util/Pair;, "[Ljavafx/util/Pair<Ljavafx/scene/input/DataFormat;Ljava/lang/Object;>;"
    const/4 v6, 0x0

    move v3, v6

    .line 236
    .local v3, "index":I
    move-object v6, v1

    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-object v4, v6

    :goto_1
    move-object v6, v4

    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    move-object v6, v4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    move-object v5, v6

    .line 237
    .local v5, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljavafx/scene/input/DataFormat;Ljava/lang/Object;>;"
    move-object v6, v2

    move v7, v3

    add-int/lit8 v3, v3, 0x1

    new-instance v8, Ljavafx/util/Pair;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    move-object v10, v5

    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    move-object v11, v5

    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Ljavafx/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v8, v6, v7

    .line 238
    goto :goto_1

    .line 239
    .end local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljavafx/scene/input/DataFormat;Ljava/lang/Object;>;"
    :cond_1
    move-object v6, v0

    move-object v7, v0

    iget-object v7, v7, Ljavafx/scene/input/Clipboard;->peer:Lcom/sun/javafx/tk/TKClipboard;

    move-object v8, v2

    invoke-interface {v7, v8}, Lcom/sun/javafx/tk/TKClipboard;->putContent([Ljavafx/util/Pair;)Z

    move-result v7

    iput-boolean v7, v6, Ljavafx/scene/input/Clipboard;->contentPut:Z

    .line 240
    move-object v6, v0

    iget-boolean v6, v6, Ljavafx/scene/input/Clipboard;->contentPut:Z

    move v0, v6

    goto :goto_0
.end method
