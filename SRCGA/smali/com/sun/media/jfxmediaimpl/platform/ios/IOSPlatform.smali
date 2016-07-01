.class public final Lcom/sun/media/jfxmediaimpl/platform/ios/IOSPlatform;
.super Lcom/sun/media/jfxmediaimpl/platform/Platform;
.source "IOSPlatform.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/media/jfxmediaimpl/platform/ios/IOSPlatform$IOSPlatformInitializer;
    }
.end annotation


# static fields
.field private static final CONTENT_TYPES:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 43
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    const-string v3, "video/mp4"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x1

    const-string v3, "audio/x-m4a"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x2

    const-string v3, "video/x-m4v"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x3

    const-string v3, "application/vnd.apple.mpegurl"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x4

    const-string v3, "audio/mpegurl"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x5

    const-string v3, "audio/mpeg"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x6

    const-string v3, "audio/mp3"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x7

    const-string v3, "audio/x-wav"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x8

    const-string v3, "video/quicktime"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0x9

    const-string v3, "video/x-quicktime"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/16 v2, 0xa

    const-string v3, "audio/x-aiff"

    aput-object v3, v1, v2

    sput-object v0, Lcom/sun/media/jfxmediaimpl/platform/ios/IOSPlatform;->CONTENT_TYPES:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 65
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/platform/ios/IOSPlatform;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/media/jfxmediaimpl/platform/Platform;-><init>()V

    .line 66
    return-void
.end method

.method synthetic constructor <init>(Lcom/sun/media/jfxmediaimpl/platform/ios/IOSPlatform$1;)V
    .locals 3

    .prologue
    .line 38
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/platform/ios/IOSPlatform;
    move-object v1, p1

    .local v1, "x0":Lcom/sun/media/jfxmediaimpl/platform/ios/IOSPlatform$1;
    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/media/jfxmediaimpl/platform/ios/IOSPlatform;-><init>()V

    return-void
.end method

.method public static getPlatformInstance()Lcom/sun/media/jfxmediaimpl/platform/Platform;
    .locals 1

    .prologue
    .line 62
    # getter for: Lcom/sun/media/jfxmediaimpl/platform/ios/IOSPlatform$IOSPlatformInitializer;->globalInstance:Lcom/sun/media/jfxmediaimpl/platform/ios/IOSPlatform;
    invoke-static {}, Lcom/sun/media/jfxmediaimpl/platform/ios/IOSPlatform$IOSPlatformInitializer;->access$100()Lcom/sun/media/jfxmediaimpl/platform/ios/IOSPlatform;

    move-result-object v0

    return-object v0
.end method

.method private static native iosPlatformInit()V
.end method


# virtual methods
.method public createMedia(Lcom/sun/media/jfxmedia/locator/Locator;)Lcom/sun/media/jfxmedia/Media;
    .locals 6

    .prologue
    .line 98
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/platform/ios/IOSPlatform;
    move-object v1, p1

    .local v1, "source":Lcom/sun/media/jfxmedia/locator/Locator;
    new-instance v2, Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMedia;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v1

    invoke-direct {v3, v4}, Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMedia;-><init>(Lcom/sun/media/jfxmedia/locator/Locator;)V

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/media/jfxmediaimpl/platform/ios/IOSPlatform;
    return-object v0
.end method

.method public createMediaPlayer(Lcom/sun/media/jfxmedia/locator/Locator;)Lcom/sun/media/jfxmedia/MediaPlayer;
    .locals 7

    .prologue
    .line 104
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/platform/ios/IOSPlatform;
    move-object v1, p1

    .local v1, "source":Lcom/sun/media/jfxmedia/locator/Locator;
    :try_start_0
    new-instance v3, Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMediaPlayer;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v1

    invoke-direct {v4, v5}, Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMediaPlayer;-><init>(Lcom/sun/media/jfxmedia/locator/Locator;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v3

    .line 110
    .end local v0    # "this":Lcom/sun/media/jfxmediaimpl/platform/ios/IOSPlatform;
    :goto_0
    return-object v0

    .line 105
    .restart local v0    # "this":Lcom/sun/media/jfxmediaimpl/platform/ios/IOSPlatform;
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 106
    .local v2, "e":Ljava/lang/Exception;
    const/4 v3, 0x1

    invoke-static {v3}, Lcom/sun/media/jfxmedia/logging/Logger;->canLog(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 107
    const/4 v3, 0x1

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IOSPlatform caught exception while creating media player: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sun/media/jfxmedia/logging/Logger;->logMsg(ILjava/lang/String;)V

    .line 110
    :cond_0
    const/4 v3, 0x0

    move-object v0, v3

    goto :goto_0
.end method

.method public getSupportedContentTypes()[Ljava/lang/String;
    .locals 7

    .prologue
    .line 91
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/platform/ios/IOSPlatform;
    sget-object v2, Lcom/sun/media/jfxmediaimpl/platform/ios/IOSPlatform;->CONTENT_TYPES:[Ljava/lang/String;

    array-length v2, v2

    new-array v2, v2, [Ljava/lang/String;

    move-object v1, v2

    .line 92
    .local v1, "contentTypesCopy":[Ljava/lang/String;
    sget-object v2, Lcom/sun/media/jfxmediaimpl/platform/ios/IOSPlatform;->CONTENT_TYPES:[Ljava/lang/String;

    const/4 v3, 0x0

    move-object v4, v1

    const/4 v5, 0x0

    sget-object v6, Lcom/sun/media/jfxmediaimpl/platform/ios/IOSPlatform;->CONTENT_TYPES:[Ljava/lang/String;

    array-length v6, v6

    invoke-static {v2, v3, v4, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 93
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/media/jfxmediaimpl/platform/ios/IOSPlatform;
    return-object v0
.end method

.method public loadPlatform()Z
    .locals 4

    .prologue
    .line 73
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/platform/ios/IOSPlatform;
    invoke-static {}, Lcom/sun/media/jfxmediaimpl/HostUtils;->isIOS()Z

    move-result v2

    if-nez v2, :cond_0

    .line 74
    const/4 v2, 0x0

    move v0, v2

    .line 86
    .end local v0    # "this":Lcom/sun/media/jfxmediaimpl/platform/ios/IOSPlatform;
    .local v1, "ule":Ljava/lang/UnsatisfiedLinkError;
    :goto_0
    return v0

    .line 78
    .end local v1    # "ule":Ljava/lang/UnsatisfiedLinkError;
    .restart local v0    # "this":Lcom/sun/media/jfxmediaimpl/platform/ios/IOSPlatform;
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/sun/media/jfxmediaimpl/platform/ios/IOSPlatform;->iosPlatformInit()V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    .line 86
    const/4 v2, 0x1

    move v0, v2

    goto :goto_0

    .line 79
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 80
    .restart local v1    # "ule":Ljava/lang/UnsatisfiedLinkError;
    const/4 v2, 0x1

    invoke-static {v2}, Lcom/sun/media/jfxmedia/logging/Logger;->canLog(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 81
    const/4 v2, 0x1

    const-string v3, "Unable to load iOS platform."

    invoke-static {v2, v3}, Lcom/sun/media/jfxmedia/logging/Logger;->logMsg(ILjava/lang/String;)V

    .line 84
    :cond_1
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method
