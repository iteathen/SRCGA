.class public Lcom/sun/media/jfxmedia/MediaManager;
.super Ljava/lang/Object;
.source "MediaManager.java"


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 42
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmedia/MediaManager;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 44
    return-void
.end method

.method public static addMediaErrorListener(Lcom/sun/media/jfxmedia/events/MediaErrorListener;)V
    .locals 5

    .prologue
    .line 116
    move-object v0, p0

    .local v0, "listener":Lcom/sun/media/jfxmedia/events/MediaErrorListener;
    move-object v1, v0

    if-nez v1, :cond_0

    .line 117
    new-instance v1, Ljava/lang/IllegalArgumentException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string v3, "listener == null!"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 119
    :cond_0
    invoke-static {}, Lcom/sun/media/jfxmediaimpl/NativeMediaManager;->getDefaultInstance()Lcom/sun/media/jfxmediaimpl/NativeMediaManager;

    move-result-object v1

    move-object v2, v0

    invoke-virtual {v1, v2}, Lcom/sun/media/jfxmediaimpl/NativeMediaManager;->addMediaErrorListener(Lcom/sun/media/jfxmedia/events/MediaErrorListener;)V

    .line 120
    return-void
.end method

.method public static canPlayContentType(Ljava/lang/String;)Z
    .locals 5

    .prologue
    .line 61
    move-object v0, p0

    .local v0, "contentType":Ljava/lang/String;
    move-object v1, v0

    if-nez v1, :cond_0

    .line 62
    new-instance v1, Ljava/lang/IllegalArgumentException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string v3, "contentType == null!"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 64
    :cond_0
    invoke-static {}, Lcom/sun/media/jfxmediaimpl/NativeMediaManager;->getDefaultInstance()Lcom/sun/media/jfxmediaimpl/NativeMediaManager;

    move-result-object v1

    move-object v2, v0

    invoke-virtual {v1, v2}, Lcom/sun/media/jfxmediaimpl/NativeMediaManager;->canPlayContentType(Ljava/lang/String;)Z

    move-result v1

    move v0, v1

    .end local v0    # "contentType":Ljava/lang/String;
    return v0
.end method

.method public static getAllMediaPlayers()Ljava/util/List;
    .locals 1
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
    .line 152
    invoke-static {}, Lcom/sun/media/jfxmediaimpl/NativeMediaManager;->getDefaultInstance()Lcom/sun/media/jfxmediaimpl/NativeMediaManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/media/jfxmediaimpl/NativeMediaManager;->getAllMediaPlayers()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getMedia(Lcom/sun/media/jfxmedia/locator/Locator;)Lcom/sun/media/jfxmedia/Media;
    .locals 5

    .prologue
    .line 86
    move-object v0, p0

    .local v0, "locator":Lcom/sun/media/jfxmedia/locator/Locator;
    move-object v1, v0

    if-nez v1, :cond_0

    .line 87
    new-instance v1, Ljava/lang/IllegalArgumentException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string v3, "locator == null!"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 89
    :cond_0
    invoke-static {}, Lcom/sun/media/jfxmediaimpl/NativeMediaManager;->getDefaultInstance()Lcom/sun/media/jfxmediaimpl/NativeMediaManager;

    move-result-object v1

    move-object v2, v0

    invoke-virtual {v1, v2}, Lcom/sun/media/jfxmediaimpl/NativeMediaManager;->getMedia(Lcom/sun/media/jfxmedia/locator/Locator;)Lcom/sun/media/jfxmedia/Media;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "locator":Lcom/sun/media/jfxmedia/locator/Locator;
    return-object v0
.end method

.method public static getMetadataParser(Lcom/sun/media/jfxmedia/locator/Locator;)Lcom/sun/media/jfxmedia/MetadataParser;
    .locals 5

    .prologue
    .line 70
    move-object v0, p0

    .local v0, "locator":Lcom/sun/media/jfxmedia/locator/Locator;
    move-object v1, v0

    if-nez v1, :cond_0

    .line 71
    new-instance v1, Ljava/lang/IllegalArgumentException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string v3, "locator == null!"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 73
    :cond_0
    invoke-static {}, Lcom/sun/media/jfxmediaimpl/NativeMediaManager;->getDefaultInstance()Lcom/sun/media/jfxmediaimpl/NativeMediaManager;

    move-result-object v1

    move-object v1, v0

    invoke-static {v1}, Lcom/sun/media/jfxmediaimpl/NativeMediaManager;->getMetadataParser(Lcom/sun/media/jfxmedia/locator/Locator;)Lcom/sun/media/jfxmedia/MetadataParser;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "locator":Lcom/sun/media/jfxmedia/locator/Locator;
    return-object v0
.end method

.method public static getPlayer(Lcom/sun/media/jfxmedia/locator/Locator;)Lcom/sun/media/jfxmedia/MediaPlayer;
    .locals 5

    .prologue
    .line 101
    move-object v0, p0

    .local v0, "locator":Lcom/sun/media/jfxmedia/locator/Locator;
    move-object v1, v0

    if-nez v1, :cond_0

    .line 102
    new-instance v1, Ljava/lang/IllegalArgumentException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string v3, "locator == null!"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 104
    :cond_0
    invoke-static {}, Lcom/sun/media/jfxmediaimpl/NativeMediaManager;->getDefaultInstance()Lcom/sun/media/jfxmediaimpl/NativeMediaManager;

    move-result-object v1

    move-object v2, v0

    invoke-virtual {v1, v2}, Lcom/sun/media/jfxmediaimpl/NativeMediaManager;->getPlayer(Lcom/sun/media/jfxmedia/locator/Locator;)Lcom/sun/media/jfxmedia/MediaPlayer;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "locator":Lcom/sun/media/jfxmedia/locator/Locator;
    return-object v0
.end method

.method public static getSupportedContentTypes()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    invoke-static {}, Lcom/sun/media/jfxmediaimpl/NativeMediaManager;->getDefaultInstance()Lcom/sun/media/jfxmediaimpl/NativeMediaManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/media/jfxmediaimpl/NativeMediaManager;->getSupportedContentTypes()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static registerMediaPlayerForDispose(Ljava/lang/Object;Lcom/sun/media/jfxmedia/MediaPlayer;)V
    .locals 4

    .prologue
    .line 144
    move-object v0, p0

    .local v0, "obj":Ljava/lang/Object;
    move-object v1, p1

    .local v1, "player":Lcom/sun/media/jfxmedia/MediaPlayer;
    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Lcom/sun/media/jfxmediaimpl/NativeMediaManager;->registerMediaPlayerForDispose(Ljava/lang/Object;Lcom/sun/media/jfxmedia/MediaPlayer;)V

    .line 145
    return-void
.end method

.method public static removeMediaErrorListener(Lcom/sun/media/jfxmedia/events/MediaErrorListener;)V
    .locals 5

    .prologue
    .line 130
    move-object v0, p0

    .local v0, "listener":Lcom/sun/media/jfxmedia/events/MediaErrorListener;
    move-object v1, v0

    if-nez v1, :cond_0

    .line 131
    new-instance v1, Ljava/lang/IllegalArgumentException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string v3, "listener == null!"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 133
    :cond_0
    invoke-static {}, Lcom/sun/media/jfxmediaimpl/NativeMediaManager;->getDefaultInstance()Lcom/sun/media/jfxmediaimpl/NativeMediaManager;

    move-result-object v1

    move-object v2, v0

    invoke-virtual {v1, v2}, Lcom/sun/media/jfxmediaimpl/NativeMediaManager;->removeMediaErrorListener(Lcom/sun/media/jfxmedia/events/MediaErrorListener;)V

    .line 134
    return-void
.end method
