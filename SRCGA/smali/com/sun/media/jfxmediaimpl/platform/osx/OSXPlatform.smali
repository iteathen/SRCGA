.class public final Lcom/sun/media/jfxmediaimpl/platform/osx/OSXPlatform;
.super Lcom/sun/media/jfxmediaimpl/platform/Platform;
.source "OSXPlatform.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/media/jfxmediaimpl/platform/osx/OSXPlatform$OSXPlatformInitializer;
    }
.end annotation


# static fields
.field private static final CONTENT_TYPES:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 49
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    const-string v3, "audio/x-aiff"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x1

    const-string v3, "audio/mp3"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x2

    const-string v3, "audio/mpeg"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x3

    const-string v3, "audio/x-m4a"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x4

    const-string v3, "video/mp4"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x5

    const-string v3, "video/x-m4v"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x6

    const-string v3, "application/vnd.apple.mpegurl"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x7

    const-string v3, "audio/mpegurl"

    aput-object v3, v1, v2

    sput-object v0, Lcom/sun/media/jfxmediaimpl/platform/osx/OSXPlatform;->CONTENT_TYPES:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 98
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/platform/osx/OSXPlatform;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/media/jfxmediaimpl/platform/Platform;-><init>()V

    .line 99
    return-void
.end method

.method synthetic constructor <init>(Lcom/sun/media/jfxmediaimpl/platform/osx/OSXPlatform$1;)V
    .locals 3

    .prologue
    .line 45
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/platform/osx/OSXPlatform;
    move-object v1, p1

    .local v1, "x0":Lcom/sun/media/jfxmediaimpl/platform/osx/OSXPlatform$1;
    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/media/jfxmediaimpl/platform/osx/OSXPlatform;-><init>()V

    return-void
.end method

.method public static getPlatformInstance()Lcom/sun/media/jfxmediaimpl/platform/Platform;
    .locals 1

    .prologue
    .line 95
    # getter for: Lcom/sun/media/jfxmediaimpl/platform/osx/OSXPlatform$OSXPlatformInitializer;->globalInstance:Lcom/sun/media/jfxmediaimpl/platform/osx/OSXPlatform;
    invoke-static {}, Lcom/sun/media/jfxmediaimpl/platform/osx/OSXPlatform$OSXPlatformInitializer;->access$100()Lcom/sun/media/jfxmediaimpl/platform/osx/OSXPlatform;

    move-result-object v0

    return-object v0
.end method

.method private static native osxPlatformInit()Z
.end method


# virtual methods
.method public createMedia(Lcom/sun/media/jfxmedia/locator/Locator;)Lcom/sun/media/jfxmedia/Media;
    .locals 6

    .prologue
    .line 131
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/platform/osx/OSXPlatform;
    move-object v1, p1

    .local v1, "source":Lcom/sun/media/jfxmedia/locator/Locator;
    new-instance v2, Lcom/sun/media/jfxmediaimpl/platform/osx/OSXMedia;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v1

    invoke-direct {v3, v4}, Lcom/sun/media/jfxmediaimpl/platform/osx/OSXMedia;-><init>(Lcom/sun/media/jfxmedia/locator/Locator;)V

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/media/jfxmediaimpl/platform/osx/OSXPlatform;
    return-object v0
.end method

.method public createMediaPlayer(Lcom/sun/media/jfxmedia/locator/Locator;)Lcom/sun/media/jfxmedia/MediaPlayer;
    .locals 7

    .prologue
    .line 137
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/platform/osx/OSXPlatform;
    move-object v1, p1

    .local v1, "source":Lcom/sun/media/jfxmedia/locator/Locator;
    :try_start_0
    new-instance v3, Lcom/sun/media/jfxmediaimpl/platform/osx/OSXMediaPlayer;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v1

    invoke-direct {v4, v5}, Lcom/sun/media/jfxmediaimpl/platform/osx/OSXMediaPlayer;-><init>(Lcom/sun/media/jfxmedia/locator/Locator;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v3

    .line 144
    .end local v0    # "this":Lcom/sun/media/jfxmediaimpl/platform/osx/OSXPlatform;
    :goto_0
    return-object v0

    .line 138
    .restart local v0    # "this":Lcom/sun/media/jfxmediaimpl/platform/osx/OSXPlatform;
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 139
    .local v2, "ex":Ljava/lang/Exception;
    const/4 v3, 0x1

    invoke-static {v3}, Lcom/sun/media/jfxmedia/logging/Logger;->canLog(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 140
    const/4 v3, 0x1

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "OSXPlatform caught exception while creating media player: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sun/media/jfxmedia/logging/Logger;->logMsg(ILjava/lang/String;)V

    .line 141
    move-object v3, v2

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 144
    :cond_0
    const/4 v3, 0x0

    move-object v0, v3

    goto :goto_0
.end method

.method public getSupportedContentTypes()[Ljava/lang/String;
    .locals 7

    .prologue
    .line 124
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/platform/osx/OSXPlatform;
    sget-object v2, Lcom/sun/media/jfxmediaimpl/platform/osx/OSXPlatform;->CONTENT_TYPES:[Ljava/lang/String;

    array-length v2, v2

    new-array v2, v2, [Ljava/lang/String;

    move-object v1, v2

    .line 125
    .local v1, "contentTypesCopy":[Ljava/lang/String;
    sget-object v2, Lcom/sun/media/jfxmediaimpl/platform/osx/OSXPlatform;->CONTENT_TYPES:[Ljava/lang/String;

    const/4 v3, 0x0

    move-object v4, v1

    const/4 v5, 0x0

    sget-object v6, Lcom/sun/media/jfxmediaimpl/platform/osx/OSXPlatform;->CONTENT_TYPES:[Ljava/lang/String;

    array-length v6, v6

    invoke-static {v2, v3, v4, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 126
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/media/jfxmediaimpl/platform/osx/OSXPlatform;
    return-object v0
.end method

.method public loadPlatform()Z
    .locals 4

    .prologue
    .line 106
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/platform/osx/OSXPlatform;
    invoke-static {}, Lcom/sun/media/jfxmediaimpl/HostUtils;->isMacOSX()Z

    move-result v2

    if-nez v2, :cond_0

    .line 107
    const/4 v2, 0x0

    move v0, v2

    .line 118
    .end local v0    # "this":Lcom/sun/media/jfxmediaimpl/platform/osx/OSXPlatform;
    .local v1, "ule":Ljava/lang/UnsatisfiedLinkError;
    :goto_0
    return v0

    .line 112
    .end local v1    # "ule":Ljava/lang/UnsatisfiedLinkError;
    .restart local v0    # "this":Lcom/sun/media/jfxmediaimpl/platform/osx/OSXPlatform;
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/sun/media/jfxmediaimpl/platform/osx/OSXPlatform;->osxPlatformInit()Z
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    move v0, v2

    goto :goto_0

    .line 113
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 114
    .restart local v1    # "ule":Ljava/lang/UnsatisfiedLinkError;
    const/4 v2, 0x1

    invoke-static {v2}, Lcom/sun/media/jfxmedia/logging/Logger;->canLog(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 115
    const/4 v2, 0x1

    const-string v3, "Unable to load OSX platform."

    invoke-static {v2, v3}, Lcom/sun/media/jfxmedia/logging/Logger;->logMsg(ILjava/lang/String;)V

    .line 118
    :cond_1
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method
