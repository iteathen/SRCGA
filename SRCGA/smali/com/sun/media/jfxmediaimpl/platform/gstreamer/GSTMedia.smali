.class final Lcom/sun/media/jfxmediaimpl/platform/gstreamer/GSTMedia;
.super Lcom/sun/media/jfxmediaimpl/NativeMedia;
.source "GSTMedia.java"


# instance fields
.field private final markerMutex:Ljava/lang/Object;

.field protected refNativeMedia:J


# direct methods
.method constructor <init>(Lcom/sun/media/jfxmedia/locator/Locator;)V
    .locals 6

    .prologue
    .line 50
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/platform/gstreamer/GSTMedia;
    move-object v1, p1

    .local v1, "locator":Lcom/sun/media/jfxmedia/locator/Locator;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/media/jfxmediaimpl/NativeMedia;-><init>(Lcom/sun/media/jfxmedia/locator/Locator;)V

    .line 42
    move-object v2, v0

    new-instance v3, Ljava/lang/Object;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput-object v3, v2, Lcom/sun/media/jfxmediaimpl/platform/gstreamer/GSTMedia;->markerMutex:Ljava/lang/Object;

    .line 52
    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/media/jfxmediaimpl/platform/gstreamer/GSTMedia;->init()V

    .line 53
    return-void
.end method

.method private native gstDispose(J)V
.end method

.method private native gstInitNativeMedia(Lcom/sun/media/jfxmedia/locator/Locator;Ljava/lang/String;J[J)I
.end method

.method private init()V
    .locals 11

    .prologue
    .line 62
    move-object v1, p0

    .local v1, "this":Lcom/sun/media/jfxmediaimpl/platform/gstreamer/GSTMedia;
    const/4 v5, 0x1

    new-array v5, v5, [J

    move-object v2, v5

    .line 64
    .local v2, "nativeMediaHandle":[J
    move-object v5, v1

    invoke-virtual {v5}, Lcom/sun/media/jfxmediaimpl/platform/gstreamer/GSTMedia;->getLocator()Lcom/sun/media/jfxmedia/locator/Locator;

    move-result-object v5

    move-object v4, v5

    .line 65
    .local v4, "loc":Lcom/sun/media/jfxmedia/locator/Locator;
    move-object v5, v1

    move-object v6, v4

    move-object v7, v4

    .line 66
    invoke-virtual {v7}, Lcom/sun/media/jfxmedia/locator/Locator;->getContentType()Ljava/lang/String;

    move-result-object v7

    move-object v8, v4

    invoke-virtual {v8}, Lcom/sun/media/jfxmedia/locator/Locator;->getContentLength()J

    move-result-wide v8

    move-object v10, v2

    .line 65
    invoke-direct/range {v5 .. v10}, Lcom/sun/media/jfxmediaimpl/platform/gstreamer/GSTMedia;->gstInitNativeMedia(Lcom/sun/media/jfxmedia/locator/Locator;Ljava/lang/String;J[J)I

    move-result v5

    invoke-static {v5}, Lcom/sun/media/jfxmedia/MediaError;->getFromCode(I)Lcom/sun/media/jfxmedia/MediaError;

    move-result-object v5

    move-object v3, v5

    .line 68
    .local v3, "ret":Lcom/sun/media/jfxmedia/MediaError;
    move-object v5, v3

    sget-object v6, Lcom/sun/media/jfxmedia/MediaError;->ERROR_NONE:Lcom/sun/media/jfxmedia/MediaError;

    if-eq v5, v6, :cond_0

    move-object v5, v3

    sget-object v6, Lcom/sun/media/jfxmedia/MediaError;->ERROR_PLATFORM_UNSUPPORTED:Lcom/sun/media/jfxmedia/MediaError;

    if-eq v5, v6, :cond_0

    .line 69
    move-object v5, v1

    move-object v6, v3

    invoke-static {v5, v6}, Lcom/sun/media/jfxmediaimpl/MediaUtils;->nativeError(Ljava/lang/Object;Lcom/sun/media/jfxmedia/MediaError;)V

    .line 71
    :cond_0
    move-object v5, v1

    move-object v6, v2

    const/4 v7, 0x0

    aget-wide v6, v6, v7

    iput-wide v6, v5, Lcom/sun/media/jfxmediaimpl/platform/gstreamer/GSTMedia;->refNativeMedia:J

    .line 72
    return-void
.end method


# virtual methods
.method public declared-synchronized dispose()V
    .locals 6

    .prologue
    .line 80
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/platform/gstreamer/GSTMedia;
    move-object v5, p0

    monitor-enter v5

    const-wide/16 v1, 0x0

    move-object v3, v0

    :try_start_0
    iget-wide v3, v3, Lcom/sun/media/jfxmediaimpl/platform/gstreamer/GSTMedia;->refNativeMedia:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    .line 81
    move-object v1, v0

    move-object v2, v0

    iget-wide v2, v2, Lcom/sun/media/jfxmediaimpl/platform/gstreamer/GSTMedia;->refNativeMedia:J

    invoke-direct {v1, v2, v3}, Lcom/sun/media/jfxmediaimpl/platform/gstreamer/GSTMedia;->gstDispose(J)V

    .line 82
    move-object v1, v0

    const-wide/16 v2, 0x0

    iput-wide v2, v1, Lcom/sun/media/jfxmediaimpl/platform/gstreamer/GSTMedia;->refNativeMedia:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    :cond_0
    monitor-exit v5

    return-void

    .line 80
    :catchall_0
    move-exception v0

    monitor-exit v5

    .end local v0    # "this":Lcom/sun/media/jfxmediaimpl/platform/gstreamer/GSTMedia;
    throw v0
.end method

.method getNativeMediaRef()J
    .locals 3

    .prologue
    .line 75
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/platform/gstreamer/GSTMedia;
    move-object v1, v0

    iget-wide v1, v1, Lcom/sun/media/jfxmediaimpl/platform/gstreamer/GSTMedia;->refNativeMedia:J

    move-wide v0, v1

    .end local v0    # "this":Lcom/sun/media/jfxmediaimpl/platform/gstreamer/GSTMedia;
    return-wide v0
.end method

.method public getPlatform()Lcom/sun/media/jfxmediaimpl/platform/Platform;
    .locals 2

    .prologue
    .line 57
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/platform/gstreamer/GSTMedia;
    invoke-static {}, Lcom/sun/media/jfxmediaimpl/platform/gstreamer/GSTPlatform;->getPlatformInstance()Lcom/sun/media/jfxmediaimpl/platform/Platform;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/media/jfxmediaimpl/platform/gstreamer/GSTMedia;
    return-object v0
.end method
