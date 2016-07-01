.class public Lcom/sun/media/jfxmediaimpl/NativeMediaManager;
.super Ljava/lang/Object;
.source "NativeMediaManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/media/jfxmediaimpl/NativeMediaManager$NativeMediaPlayerDisposer;,
        Lcom/sun/media/jfxmediaimpl/NativeMediaManager$NativeMediaManagerInitializer;
    }
.end annotation


# static fields
.field private static final allMediaPlayers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/sun/media/jfxmedia/MediaPlayer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static isNativeLayerInitialized:Z

.field private static final playerDisposer:Lcom/sun/media/jfxmediaimpl/NativeMediaManager$NativeMediaPlayerDisposer;


# instance fields
.field private final errorListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/sun/media/jfxmedia/events/MediaErrorListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private final supportedContentTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 51
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sun/media/jfxmediaimpl/NativeMediaManager;->isNativeLayerInitialized:Z

    .line 58
    new-instance v0, Lcom/sun/media/jfxmediaimpl/NativeMediaManager$NativeMediaPlayerDisposer;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/sun/media/jfxmediaimpl/NativeMediaManager$NativeMediaPlayerDisposer;-><init>(Lcom/sun/media/jfxmediaimpl/NativeMediaManager$1;)V

    sput-object v0, Lcom/sun/media/jfxmediaimpl/NativeMediaManager;->playerDisposer:Lcom/sun/media/jfxmediaimpl/NativeMediaManager$NativeMediaPlayerDisposer;

    .line 63
    new-instance v0, Ljava/util/WeakHashMap;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    invoke-direct {v1}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/sun/media/jfxmediaimpl/NativeMediaManager;->allMediaPlayers:Ljava/util/Map;

    return-void
.end method

.method protected constructor <init>()V
    .locals 7

    .prologue
    .line 96
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/NativeMediaManager;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 56
    move-object v2, v0

    new-instance v3, Ljava/util/ArrayList;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Lcom/sun/media/jfxmediaimpl/NativeMediaManager;->errorListeners:Ljava/util/List;

    .line 68
    move-object v2, v0

    new-instance v3, Ljava/util/ArrayList;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Lcom/sun/media/jfxmediaimpl/NativeMediaManager;->supportedContentTypes:Ljava/util/List;

    .line 104
    :try_start_0
    invoke-static {}, Lcom/sun/media/jfxmediaimpl/NativeMediaManager$$Lambda$1;->lambdaFactory$()Ljava/security/PrivilegedExceptionAction;

    move-result-object v2

    invoke-static {v2}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/security/PrivilegedActionException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 119
    .line 122
    :goto_0
    invoke-static {}, Lcom/sun/media/jfxmedia/logging/Logger;->initNative()Z

    move-result v2

    if-nez v2, :cond_0

    .line 123
    const/4 v2, 0x0

    sget-object v3, Lcom/sun/media/jfxmedia/MediaError;->ERROR_MANAGER_LOGGER_INIT:Lcom/sun/media/jfxmedia/MediaError;

    invoke-virtual {v3}, Lcom/sun/media/jfxmedia/MediaError;->code()I

    move-result v3

    const-string v4, "Unable to init logger"

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v5}, Lcom/sun/media/jfxmediaimpl/MediaUtils;->error(Ljava/lang/Object;ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 126
    :cond_0
    return-void

    .line 116
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 117
    .local v1, "pae":Ljava/security/PrivilegedActionException;
    const/4 v2, 0x0

    sget-object v3, Lcom/sun/media/jfxmedia/MediaError;->ERROR_MANAGER_ENGINEINIT_FAIL:Lcom/sun/media/jfxmedia/MediaError;

    invoke-virtual {v3}, Lcom/sun/media/jfxmedia/MediaError;->code()I

    move-result v3

    const-string v4, "Unable to load one or more dependent libraries."

    move-object v5, v1

    invoke-static {v2, v3, v4, v5}, Lcom/sun/media/jfxmediaimpl/MediaUtils;->error(Ljava/lang/Object;ILjava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method static synthetic access$lambda$0()Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lcom/sun/media/jfxmediaimpl/NativeMediaManager;->lambda$new$5()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static getDefaultInstance()Lcom/sun/media/jfxmediaimpl/NativeMediaManager;
    .locals 1

    .prologue
    .line 87
    # getter for: Lcom/sun/media/jfxmediaimpl/NativeMediaManager$NativeMediaManagerInitializer;->globalInstance:Lcom/sun/media/jfxmediaimpl/NativeMediaManager;
    invoke-static {}, Lcom/sun/media/jfxmediaimpl/NativeMediaManager$NativeMediaManagerInitializer;->access$100()Lcom/sun/media/jfxmediaimpl/NativeMediaManager;

    move-result-object v0

    return-object v0
.end method

.method public static getMetadataParser(Lcom/sun/media/jfxmedia/locator/Locator;)Lcom/sun/media/jfxmedia/MetadataParser;
    .locals 3

    .prologue
    .line 212
    move-object v0, p0

    .local v0, "locator":Lcom/sun/media/jfxmedia/locator/Locator;
    invoke-static {}, Lcom/sun/media/jfxmediaimpl/platform/PlatformManager;->getManager()Lcom/sun/media/jfxmediaimpl/platform/PlatformManager;

    move-result-object v1

    move-object v2, v0

    invoke-virtual {v1, v2}, Lcom/sun/media/jfxmediaimpl/platform/PlatformManager;->createMetadataParser(Lcom/sun/media/jfxmedia/locator/Locator;)Lcom/sun/media/jfxmedia/MetadataParser;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "locator":Lcom/sun/media/jfxmedia/locator/Locator;
    return-object v0
.end method

.method static declared-synchronized initNativeLayer()V
    .locals 2

    .prologue
    .line 132
    const-class v1, Lcom/sun/media/jfxmediaimpl/NativeMediaManager;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lcom/sun/media/jfxmediaimpl/NativeMediaManager;->isNativeLayerInitialized:Z

    if-nez v0, :cond_0

    .line 134
    invoke-static {}, Lcom/sun/media/jfxmediaimpl/platform/PlatformManager;->getManager()Lcom/sun/media/jfxmediaimpl/platform/PlatformManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/media/jfxmediaimpl/platform/PlatformManager;->loadPlatforms()V

    .line 137
    const/4 v0, 0x1

    sput-boolean v0, Lcom/sun/media/jfxmediaimpl/NativeMediaManager;->isNativeLayerInitialized:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 139
    :cond_0
    monitor-exit v1

    return-void

    .line 132
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static synthetic lambda$new$5()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 105
    invoke-static {}, Lcom/sun/media/jfxmediaimpl/HostUtils;->isWindows()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/sun/media/jfxmediaimpl/HostUtils;->isMacOSX()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 106
    :cond_0
    const-string v0, "glib-lite"

    invoke-static {v0}, Lcom/sun/glass/utils/NativeLibLoader;->loadLibrary(Ljava/lang/String;)V

    .line 109
    :cond_1
    invoke-static {}, Lcom/sun/media/jfxmediaimpl/HostUtils;->isLinux()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/sun/media/jfxmediaimpl/HostUtils;->isIOS()Z

    move-result v0

    if-nez v0, :cond_2

    .line 110
    const-string v0, "gstreamer-lite"

    invoke-static {v0}, Lcom/sun/glass/utils/NativeLibLoader;->loadLibrary(Ljava/lang/String;)V

    .line 113
    :cond_2
    const-string v0, "jfxmedia"

    invoke-static {v0}, Lcom/sun/glass/utils/NativeLibLoader;->loadLibrary(Ljava/lang/String;)V

    .line 114
    const/4 v0, 0x0

    return-object v0
.end method

.method private declared-synchronized loadContentTypes()V
    .locals 10

    .prologue
    .line 146
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/NativeMediaManager;
    move-object v8, p0

    monitor-enter v8

    move-object v5, v0

    :try_start_0
    iget-object v5, v5, Lcom/sun/media/jfxmediaimpl/NativeMediaManager;->supportedContentTypes:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-nez v5, :cond_0

    .line 148
    .line 165
    :goto_0
    monitor-exit v8

    return-void

    .line 151
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/sun/media/jfxmediaimpl/platform/PlatformManager;->getManager()Lcom/sun/media/jfxmediaimpl/platform/PlatformManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sun/media/jfxmediaimpl/platform/PlatformManager;->getSupportedContentTypes()Ljava/util/List;

    move-result-object v5

    move-object v1, v5

    .line 152
    .local v1, "npt":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v5, 0x0

    move-object v6, v1

    if-eq v5, v6, :cond_1

    move-object v5, v1

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    .line 153
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/media/jfxmediaimpl/NativeMediaManager;->supportedContentTypes:Ljava/util/List;

    move-object v6, v1

    invoke-interface {v5, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-result v5

    .line 156
    :cond_1
    const/4 v5, 0x1

    invoke-static {v5}, Lcom/sun/media/jfxmedia/logging/Logger;->canLog(I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 157
    new-instance v5, Ljava/lang/StringBuilder;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const-string v7, "JFXMedia supported content types:\n"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v2, v5

    .line 158
    .local v2, "sb":Ljava/lang/StringBuilder;
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/media/jfxmediaimpl/NativeMediaManager;->supportedContentTypes:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v3, v5

    :goto_1
    move-object v5, v3

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    move-object v5, v3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    move-object v4, v5

    .line 159
    .local v4, "type":Ljava/lang/String;
    move-object v5, v2

    const-string v6, "    "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 160
    move-object v5, v2

    move-object v6, v4

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 161
    move-object v5, v2

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 162
    goto :goto_1

    .line 163
    .end local v4    # "type":Ljava/lang/String;
    :cond_2
    const/4 v5, 0x1

    move-object v6, v2

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sun/media/jfxmedia/logging/Logger;->logMsg(ILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 165
    .end local v2    # "sb":Ljava/lang/StringBuilder;
    :cond_3
    goto :goto_0

    .line 146
    .end local v1    # "npt":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_0
    move-exception v0

    monitor-exit v8

    .end local v0    # "this":Lcom/sun/media/jfxmediaimpl/NativeMediaManager;
    throw v0
.end method

.method public static registerMediaPlayerForDispose(Ljava/lang/Object;Lcom/sun/media/jfxmedia/MediaPlayer;)V
    .locals 5

    .prologue
    .line 295
    move-object v0, p0

    .local v0, "obj":Ljava/lang/Object;
    move-object v1, p1

    .local v1, "player":Lcom/sun/media/jfxmedia/MediaPlayer;
    move-object v2, v0

    move-object v3, v1

    sget-object v4, Lcom/sun/media/jfxmediaimpl/NativeMediaManager;->playerDisposer:Lcom/sun/media/jfxmediaimpl/NativeMediaManager$NativeMediaPlayerDisposer;

    invoke-static {v2, v3, v4}, Lcom/sun/media/jfxmediaimpl/MediaDisposer;->addResourceDisposer(Ljava/lang/Object;Ljava/lang/Object;Lcom/sun/media/jfxmediaimpl/MediaDisposer$ResourceDisposer;)V

    .line 296
    return-void
.end method


# virtual methods
.method public addMediaErrorListener(Lcom/sun/media/jfxmedia/events/MediaErrorListener;)V
    .locals 9

    .prologue
    .line 253
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/NativeMediaManager;
    move-object v1, p1

    .local v1, "listener":Lcom/sun/media/jfxmedia/events/MediaErrorListener;
    move-object v4, v1

    if-eqz v4, :cond_2

    .line 258
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/media/jfxmediaimpl/NativeMediaManager;->errorListeners:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v4

    move-object v2, v4

    .local v2, "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Ljava/lang/ref/WeakReference<Lcom/sun/media/jfxmedia/events/MediaErrorListener;>;>;"
    :goto_0
    move-object v4, v2

    invoke-interface {v4}, Ljava/util/ListIterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 259
    move-object v4, v2

    invoke-interface {v4}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/media/jfxmedia/events/MediaErrorListener;

    move-object v3, v4

    .line 260
    .local v3, "l":Lcom/sun/media/jfxmedia/events/MediaErrorListener;
    move-object v4, v3

    if-nez v4, :cond_0

    .line 261
    move-object v4, v2

    invoke-interface {v4}, Ljava/util/ListIterator;->remove()V

    .line 263
    :cond_0
    goto :goto_0

    .line 265
    .end local v3    # "l":Lcom/sun/media/jfxmedia/events/MediaErrorListener;
    :cond_1
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/media/jfxmediaimpl/NativeMediaManager;->errorListeners:Ljava/util/List;

    new-instance v5, Ljava/lang/ref/WeakReference;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v1

    invoke-direct {v6, v7}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v4

    .line 267
    .end local v2    # "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Ljava/lang/ref/WeakReference<Lcom/sun/media/jfxmedia/events/MediaErrorListener;>;>;"
    :cond_2
    return-void
.end method

.method public canPlayContentType(Ljava/lang/String;)Z
    .locals 8

    .prologue
    .line 177
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/NativeMediaManager;
    move-object v1, p1

    .local v1, "contentType":Ljava/lang/String;
    move-object v4, v1

    if-nez v4, :cond_0

    .line 178
    new-instance v4, Ljava/lang/IllegalArgumentException;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    const-string v6, "contentType == null!"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 181
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/media/jfxmediaimpl/NativeMediaManager;->supportedContentTypes:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 182
    move-object v4, v0

    invoke-direct {v4}, Lcom/sun/media/jfxmediaimpl/NativeMediaManager;->loadContentTypes()V

    .line 189
    :cond_1
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/media/jfxmediaimpl/NativeMediaManager;->supportedContentTypes:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v2, v4

    :goto_0
    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object v3, v4

    .line 190
    .local v3, "type":Ljava/lang/String;
    move-object v4, v1

    move-object v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 191
    const/4 v4, 0x1

    move v0, v4

    .line 195
    .end local v0    # "this":Lcom/sun/media/jfxmediaimpl/NativeMediaManager;
    .end local v3    # "type":Ljava/lang/String;
    :goto_1
    return v0

    .line 193
    .restart local v0    # "this":Lcom/sun/media/jfxmediaimpl/NativeMediaManager;
    .restart local v3    # "type":Ljava/lang/String;
    :cond_2
    goto :goto_0

    .line 195
    .end local v3    # "type":Ljava/lang/String;
    :cond_3
    const/4 v4, 0x0

    move v0, v4

    goto :goto_1
.end method

.method public getAllMediaPlayers()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sun/media/jfxmedia/MediaPlayer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 305
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/NativeMediaManager;
    const/4 v2, 0x0

    move-object v1, v2

    .line 307
    .local v1, "allPlayers":Ljava/util/List;, "Ljava/util/List<Lcom/sun/media/jfxmedia/MediaPlayer;>;"
    sget-object v2, Lcom/sun/media/jfxmediaimpl/NativeMediaManager;->allMediaPlayers:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 308
    new-instance v2, Ljava/util/ArrayList;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    sget-object v4, Lcom/sun/media/jfxmediaimpl/NativeMediaManager;->allMediaPlayers:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v1, v2

    .line 311
    :cond_0
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/media/jfxmediaimpl/NativeMediaManager;
    return-object v0
.end method

.method public getMedia(Lcom/sun/media/jfxmedia/locator/Locator;)Lcom/sun/media/jfxmedia/Media;
    .locals 4

    .prologue
    .line 244
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/NativeMediaManager;
    move-object v1, p1

    .local v1, "locator":Lcom/sun/media/jfxmedia/locator/Locator;
    invoke-static {}, Lcom/sun/media/jfxmediaimpl/NativeMediaManager;->initNativeLayer()V

    .line 245
    invoke-static {}, Lcom/sun/media/jfxmediaimpl/platform/PlatformManager;->getManager()Lcom/sun/media/jfxmediaimpl/platform/PlatformManager;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/media/jfxmediaimpl/platform/PlatformManager;->createMedia(Lcom/sun/media/jfxmedia/locator/Locator;)Lcom/sun/media/jfxmedia/Media;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/media/jfxmediaimpl/NativeMediaManager;
    return-object v0
.end method

.method getMediaErrorListeners()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/sun/media/jfxmedia/events/MediaErrorListener;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 318
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/NativeMediaManager;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/media/jfxmediaimpl/NativeMediaManager;->errorListeners:Ljava/util/List;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/media/jfxmediaimpl/NativeMediaManager;
    return-object v0
.end method

.method public getPlayer(Lcom/sun/media/jfxmedia/locator/Locator;)Lcom/sun/media/jfxmedia/MediaPlayer;
    .locals 7

    .prologue
    .line 220
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/NativeMediaManager;
    move-object v1, p1

    .local v1, "locator":Lcom/sun/media/jfxmedia/locator/Locator;
    invoke-static {}, Lcom/sun/media/jfxmediaimpl/NativeMediaManager;->initNativeLayer()V

    .line 222
    invoke-static {}, Lcom/sun/media/jfxmediaimpl/platform/PlatformManager;->getManager()Lcom/sun/media/jfxmediaimpl/platform/PlatformManager;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v3, v4}, Lcom/sun/media/jfxmediaimpl/platform/PlatformManager;->createMediaPlayer(Lcom/sun/media/jfxmedia/locator/Locator;)Lcom/sun/media/jfxmedia/MediaPlayer;

    move-result-object v3

    move-object v2, v3

    .line 223
    .local v2, "player":Lcom/sun/media/jfxmedia/MediaPlayer;
    const/4 v3, 0x0

    move-object v4, v2

    if-ne v3, v4, :cond_0

    .line 224
    new-instance v3, Lcom/sun/media/jfxmedia/MediaException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string v5, "Could not create player!"

    invoke-direct {v4, v5}, Lcom/sun/media/jfxmedia/MediaException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 228
    :cond_0
    sget-object v3, Lcom/sun/media/jfxmediaimpl/NativeMediaManager;->allMediaPlayers:Ljava/util/Map;

    move-object v4, v2

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 230
    move-object v3, v2

    move-object v0, v3

    .end local v0    # "this":Lcom/sun/media/jfxmediaimpl/NativeMediaManager;
    return-object v0
.end method

.method public getSupportedContentTypes()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 204
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/NativeMediaManager;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/media/jfxmediaimpl/NativeMediaManager;->supportedContentTypes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 205
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/media/jfxmediaimpl/NativeMediaManager;->loadContentTypes()V

    .line 208
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/media/jfxmediaimpl/NativeMediaManager;->supportedContentTypes:Ljava/util/List;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/media/jfxmediaimpl/NativeMediaManager;
    return-object v0
.end method

.method public removeMediaErrorListener(Lcom/sun/media/jfxmedia/events/MediaErrorListener;)V
    .locals 6

    .prologue
    .line 274
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/NativeMediaManager;
    move-object v1, p1

    .local v1, "listener":Lcom/sun/media/jfxmedia/events/MediaErrorListener;
    move-object v4, v1

    if-eqz v4, :cond_2

    .line 276
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/media/jfxmediaimpl/NativeMediaManager;->errorListeners:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v4

    move-object v2, v4

    .local v2, "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Ljava/lang/ref/WeakReference<Lcom/sun/media/jfxmedia/events/MediaErrorListener;>;>;"
    :goto_0
    move-object v4, v2

    invoke-interface {v4}, Ljava/util/ListIterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 277
    move-object v4, v2

    invoke-interface {v4}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/media/jfxmedia/events/MediaErrorListener;

    move-object v3, v4

    .line 278
    .local v3, "l":Lcom/sun/media/jfxmedia/events/MediaErrorListener;
    move-object v4, v3

    if-eqz v4, :cond_0

    move-object v4, v3

    move-object v5, v1

    if-ne v4, v5, :cond_1

    .line 279
    :cond_0
    move-object v4, v2

    invoke-interface {v4}, Ljava/util/ListIterator;->remove()V

    .line 281
    :cond_1
    goto :goto_0

    .line 283
    .end local v2    # "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Ljava/lang/ref/WeakReference<Lcom/sun/media/jfxmedia/events/MediaErrorListener;>;>;"
    .end local v3    # "l":Lcom/sun/media/jfxmedia/events/MediaErrorListener;
    :cond_2
    return-void
.end method
