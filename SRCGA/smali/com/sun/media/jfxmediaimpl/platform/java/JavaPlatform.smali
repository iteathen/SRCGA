.class public final Lcom/sun/media/jfxmediaimpl/platform/java/JavaPlatform;
.super Lcom/sun/media/jfxmediaimpl/platform/Platform;
.source "JavaPlatform.java"


# static fields
.field private static globalInstance:Lcom/sun/media/jfxmediaimpl/platform/java/JavaPlatform;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x0

    sput-object v0, Lcom/sun/media/jfxmediaimpl/platform/java/JavaPlatform;->globalInstance:Lcom/sun/media/jfxmediaimpl/platform/java/JavaPlatform;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    .line 49
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/platform/java/JavaPlatform;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/media/jfxmediaimpl/platform/Platform;-><init>()V

    return-void
.end method

.method public static declared-synchronized getPlatformInstance()Lcom/sun/media/jfxmediaimpl/platform/Platform;
    .locals 4

    .prologue
    .line 42
    const-class v2, Lcom/sun/media/jfxmediaimpl/platform/java/JavaPlatform;

    monitor-enter v2

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/sun/media/jfxmediaimpl/platform/java/JavaPlatform;->globalInstance:Lcom/sun/media/jfxmediaimpl/platform/java/JavaPlatform;

    if-ne v0, v1, :cond_0

    .line 43
    new-instance v0, Lcom/sun/media/jfxmediaimpl/platform/java/JavaPlatform;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    invoke-direct {v1}, Lcom/sun/media/jfxmediaimpl/platform/java/JavaPlatform;-><init>()V

    sput-object v0, Lcom/sun/media/jfxmediaimpl/platform/java/JavaPlatform;->globalInstance:Lcom/sun/media/jfxmediaimpl/platform/java/JavaPlatform;

    .line 46
    :cond_0
    sget-object v0, Lcom/sun/media/jfxmediaimpl/platform/java/JavaPlatform;->globalInstance:Lcom/sun/media/jfxmediaimpl/platform/java/JavaPlatform;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return-object v0

    .line 42
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method


# virtual methods
.method public createMedia(Lcom/sun/media/jfxmedia/locator/Locator;)Lcom/sun/media/jfxmedia/Media;
    .locals 3

    .prologue
    .line 72
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/platform/java/JavaPlatform;
    move-object v1, p1

    .local v1, "source":Lcom/sun/media/jfxmedia/locator/Locator;
    const/4 v2, 0x0

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/media/jfxmediaimpl/platform/java/JavaPlatform;
    return-object v0
.end method

.method public createMediaPlayer(Lcom/sun/media/jfxmedia/locator/Locator;)Lcom/sun/media/jfxmedia/MediaPlayer;
    .locals 3

    .prologue
    .line 77
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/platform/java/JavaPlatform;
    move-object v1, p1

    .local v1, "source":Lcom/sun/media/jfxmedia/locator/Locator;
    const/4 v2, 0x0

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/media/jfxmediaimpl/platform/java/JavaPlatform;
    return-object v0
.end method

.method public createMetadataParser(Lcom/sun/media/jfxmedia/locator/Locator;)Lcom/sun/media/jfxmedia/MetadataParser;
    .locals 7

    .prologue
    .line 59
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/platform/java/JavaPlatform;
    move-object v1, p1

    .local v1, "source":Lcom/sun/media/jfxmedia/locator/Locator;
    move-object v3, v1

    invoke-virtual {v3}, Lcom/sun/media/jfxmedia/locator/Locator;->getContentType()Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 60
    .local v2, "contentType":Ljava/lang/String;
    move-object v3, v2

    const-string v4, "video/x-javafx"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move-object v3, v2

    const-string v4, "video/x-flv"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 61
    :cond_0
    new-instance v3, Lcom/sun/media/jfxmediaimpl/platform/java/FLVMetadataParser;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v1

    invoke-direct {v4, v5}, Lcom/sun/media/jfxmediaimpl/platform/java/FLVMetadataParser;-><init>(Lcom/sun/media/jfxmedia/locator/Locator;)V

    move-object v0, v3

    .line 67
    .end local v0    # "this":Lcom/sun/media/jfxmediaimpl/platform/java/JavaPlatform;
    :goto_0
    return-object v0

    .line 62
    .restart local v0    # "this":Lcom/sun/media/jfxmediaimpl/platform/java/JavaPlatform;
    :cond_1
    move-object v3, v2

    const-string v4, "audio/mpeg"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    move-object v3, v2

    const-string v4, "audio/mp3"

    .line 63
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 64
    :cond_2
    new-instance v3, Lcom/sun/media/jfxmediaimpl/platform/java/ID3MetadataParser;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v1

    invoke-direct {v4, v5}, Lcom/sun/media/jfxmediaimpl/platform/java/ID3MetadataParser;-><init>(Lcom/sun/media/jfxmedia/locator/Locator;)V

    move-object v0, v3

    goto :goto_0

    .line 67
    :cond_3
    const/4 v3, 0x0

    move-object v0, v3

    goto :goto_0
.end method

.method public loadPlatform()Z
    .locals 2

    .prologue
    .line 53
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/platform/java/JavaPlatform;
    const/4 v1, 0x1

    move v0, v1

    .end local v0    # "this":Lcom/sun/media/jfxmediaimpl/platform/java/JavaPlatform;
    return v0
.end method
