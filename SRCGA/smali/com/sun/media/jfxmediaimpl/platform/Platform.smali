.class public abstract Lcom/sun/media/jfxmediaimpl/platform/Platform;
.super Ljava/lang/Object;
.source "Platform.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 36
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/platform/Platform;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPlatformInstance()Lcom/sun/media/jfxmediaimpl/platform/Platform;
    .locals 4

    .prologue
    .line 41
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    const-string v2, "Invalid platform class."

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public canPlayContentType(Ljava/lang/String;)Z
    .locals 9

    .prologue
    .line 52
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/platform/Platform;
    move-object v1, p1

    .local v1, "contentType":Ljava/lang/String;
    move-object v7, v0

    invoke-virtual {v7}, Lcom/sun/media/jfxmediaimpl/platform/Platform;->getSupportedContentTypes()[Ljava/lang/String;

    move-result-object v7

    move-object v2, v7

    .line 53
    .local v2, "contentTypes":[Ljava/lang/String;
    move-object v7, v2

    if-eqz v7, :cond_1

    .line 54
    move-object v7, v2

    move-object v3, v7

    move-object v7, v3

    array-length v7, v7

    move v4, v7

    const/4 v7, 0x0

    move v5, v7

    :goto_0
    move v7, v5

    move v8, v4

    if-ge v7, v8, :cond_1

    move-object v7, v3

    move v8, v5

    aget-object v7, v7, v8

    move-object v6, v7

    .line 55
    .local v6, "type":Ljava/lang/String;
    move-object v7, v6

    move-object v8, v1

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 56
    const/4 v7, 0x1

    move v0, v7

    .line 60
    .end local v0    # "this":Lcom/sun/media/jfxmediaimpl/platform/Platform;
    .end local v6    # "type":Ljava/lang/String;
    :goto_1
    return v0

    .line 54
    .restart local v0    # "this":Lcom/sun/media/jfxmediaimpl/platform/Platform;
    .restart local v6    # "type":Ljava/lang/String;
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 60
    .end local v6    # "type":Ljava/lang/String;
    :cond_1
    const/4 v7, 0x0

    move v0, v7

    goto :goto_1
.end method

.method public abstract createMedia(Lcom/sun/media/jfxmedia/locator/Locator;)Lcom/sun/media/jfxmedia/Media;
.end method

.method public abstract createMediaPlayer(Lcom/sun/media/jfxmedia/locator/Locator;)Lcom/sun/media/jfxmedia/MediaPlayer;
.end method

.method public createMetadataParser(Lcom/sun/media/jfxmedia/locator/Locator;)Lcom/sun/media/jfxmedia/MetadataParser;
    .locals 3

    .prologue
    .line 72
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/platform/Platform;
    move-object v1, p1

    .local v1, "source":Lcom/sun/media/jfxmedia/locator/Locator;
    const/4 v2, 0x0

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/media/jfxmediaimpl/platform/Platform;
    return-object v0
.end method

.method public getSupportedContentTypes()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 67
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/platform/Platform;
    const/4 v1, 0x0

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/media/jfxmediaimpl/platform/Platform;
    return-object v0
.end method

.method public loadPlatform()Z
    .locals 2

    .prologue
    .line 48
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/platform/Platform;
    const/4 v1, 0x0

    move v0, v1

    .end local v0    # "this":Lcom/sun/media/jfxmediaimpl/platform/Platform;
    return v0
.end method
