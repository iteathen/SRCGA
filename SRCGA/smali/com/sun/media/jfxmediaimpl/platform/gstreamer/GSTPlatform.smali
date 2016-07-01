.class public final Lcom/sun/media/jfxmediaimpl/platform/gstreamer/GSTPlatform;
.super Lcom/sun/media/jfxmediaimpl/platform/Platform;
.source "GSTPlatform.java"


# static fields
.field private static final CONTENT_TYPES:[Ljava/lang/String;

.field private static final contentTypes:[Ljava/lang/String;

.field private static globalInstance:Lcom/sun/media/jfxmediaimpl/platform/gstreamer/GSTPlatform;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 45
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const/4 v2, 0x0

    const-string v3, "audio/x-aiff"

    aput-object v3, v1, v2

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const/4 v2, 0x1

    const-string v3, "audio/mp3"

    aput-object v3, v1, v2

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const/4 v2, 0x2

    const-string v3, "audio/mpeg"

    aput-object v3, v1, v2

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const/4 v2, 0x3

    const-string v3, "audio/x-wav"

    aput-object v3, v1, v2

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const/4 v2, 0x4

    const-string v3, "video/x-javafx"

    aput-object v3, v1, v2

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const/4 v2, 0x5

    const-string v3, "video/x-flv"

    aput-object v3, v1, v2

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const/4 v2, 0x6

    const-string v3, "video/x-fxm"

    aput-object v3, v1, v2

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const/4 v2, 0x7

    const-string v3, "video/mp4"

    aput-object v3, v1, v2

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const/16 v2, 0x8

    const-string v3, "audio/x-m4a"

    aput-object v3, v1, v2

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const/16 v2, 0x9

    const-string v3, "video/x-m4v"

    aput-object v3, v1, v2

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const/16 v2, 0xa

    const-string v3, "application/vnd.apple.mpegurl"

    aput-object v3, v1, v2

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const/16 v2, 0xb

    const-string v3, "audio/mpegurl"

    aput-object v3, v1, v2

    sput-object v0, Lcom/sun/media/jfxmediaimpl/platform/gstreamer/GSTPlatform;->CONTENT_TYPES:[Ljava/lang/String;

    .line 60
    const/4 v0, 0x0

    sput-object v0, Lcom/sun/media/jfxmediaimpl/platform/gstreamer/GSTPlatform;->globalInstance:Lcom/sun/media/jfxmediaimpl/platform/gstreamer/GSTPlatform;

    .line 67
    invoke-static {}, Lcom/sun/media/jfxmediaimpl/HostUtils;->isMacOSX()Z

    move-result v0

    if-nez v0, :cond_0

    .line 68
    sget-object v0, Lcom/sun/media/jfxmediaimpl/platform/gstreamer/GSTPlatform;->CONTENT_TYPES:[Ljava/lang/String;

    array-length v0, v0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/sun/media/jfxmediaimpl/platform/gstreamer/GSTPlatform;->contentTypes:[Ljava/lang/String;

    .line 69
    sget-object v0, Lcom/sun/media/jfxmediaimpl/platform/gstreamer/GSTPlatform;->CONTENT_TYPES:[Ljava/lang/String;

    const/4 v1, 0x0

    sget-object v2, Lcom/sun/media/jfxmediaimpl/platform/gstreamer/GSTPlatform;->contentTypes:[Ljava/lang/String;

    const/4 v3, 0x0

    sget-object v4, Lcom/sun/media/jfxmediaimpl/platform/gstreamer/GSTPlatform;->CONTENT_TYPES:[Ljava/lang/String;

    array-length v4, v4

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 74
    :goto_0
    return-void

    .line 72
    :cond_0
    sget-object v0, Lcom/sun/media/jfxmediaimpl/platform/gstreamer/GSTPlatform;->CONTENT_TYPES:[Ljava/lang/String;

    sput-object v0, Lcom/sun/media/jfxmediaimpl/platform/gstreamer/GSTPlatform;->contentTypes:[Ljava/lang/String;

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 103
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/platform/gstreamer/GSTPlatform;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/media/jfxmediaimpl/platform/Platform;-><init>()V

    return-void
.end method

.method public static declared-synchronized getPlatformInstance()Lcom/sun/media/jfxmediaimpl/platform/Platform;
    .locals 4

    .prologue
    .line 96
    const-class v2, Lcom/sun/media/jfxmediaimpl/platform/gstreamer/GSTPlatform;

    monitor-enter v2

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/sun/media/jfxmediaimpl/platform/gstreamer/GSTPlatform;->globalInstance:Lcom/sun/media/jfxmediaimpl/platform/gstreamer/GSTPlatform;

    if-ne v0, v1, :cond_0

    .line 97
    new-instance v0, Lcom/sun/media/jfxmediaimpl/platform/gstreamer/GSTPlatform;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    invoke-direct {v1}, Lcom/sun/media/jfxmediaimpl/platform/gstreamer/GSTPlatform;-><init>()V

    sput-object v0, Lcom/sun/media/jfxmediaimpl/platform/gstreamer/GSTPlatform;->globalInstance:Lcom/sun/media/jfxmediaimpl/platform/gstreamer/GSTPlatform;

    .line 100
    :cond_0
    sget-object v0, Lcom/sun/media/jfxmediaimpl/platform/gstreamer/GSTPlatform;->globalInstance:Lcom/sun/media/jfxmediaimpl/platform/gstreamer/GSTPlatform;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return-object v0

    .line 96
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method private static native gstInitPlatform()I
.end method


# virtual methods
.method public createMedia(Lcom/sun/media/jfxmedia/locator/Locator;)Lcom/sun/media/jfxmedia/Media;
    .locals 6

    .prologue
    .line 114
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/platform/gstreamer/GSTPlatform;
    move-object v1, p1

    .local v1, "source":Lcom/sun/media/jfxmedia/locator/Locator;
    new-instance v2, Lcom/sun/media/jfxmediaimpl/platform/gstreamer/GSTMedia;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v1

    invoke-direct {v3, v4}, Lcom/sun/media/jfxmediaimpl/platform/gstreamer/GSTMedia;-><init>(Lcom/sun/media/jfxmedia/locator/Locator;)V

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/media/jfxmediaimpl/platform/gstreamer/GSTPlatform;
    return-object v0
.end method

.method public createMediaPlayer(Lcom/sun/media/jfxmedia/locator/Locator;)Lcom/sun/media/jfxmedia/MediaPlayer;
    .locals 19

    .prologue
    .line 121
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/platform/gstreamer/GSTPlatform;
    move-object/from16 v1, p1

    .local v1, "source":Lcom/sun/media/jfxmedia/locator/Locator;
    :try_start_0
    new-instance v14, Lcom/sun/media/jfxmediaimpl/platform/gstreamer/GSTMediaPlayer;

    move-object/from16 v18, v14

    move-object/from16 v14, v18

    move-object/from16 v15, v18

    move-object/from16 v16, v1

    invoke-direct/range {v15 .. v16}, Lcom/sun/media/jfxmediaimpl/platform/gstreamer/GSTMediaPlayer;-><init>(Lcom/sun/media/jfxmedia/locator/Locator;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v14

    .line 127
    .line 130
    .local v2, "player":Lcom/sun/media/jfxmediaimpl/platform/gstreamer/GSTMediaPlayer;
    invoke-static {}, Lcom/sun/media/jfxmediaimpl/HostUtils;->isMacOSX()Z

    move-result v14

    if-eqz v14, :cond_5

    .line 131
    move-object v14, v1

    invoke-virtual {v14}, Lcom/sun/media/jfxmedia/locator/Locator;->getContentType()Ljava/lang/String;

    move-result-object v14

    move-object v3, v14

    .line 132
    .local v3, "contentType":Ljava/lang/String;
    const-string v14, "video/mp4"

    move-object v15, v3

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_0

    const-string v14, "video/x-m4v"

    move-object v15, v3

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_0

    move-object v14, v1

    .line 133
    invoke-virtual {v14}, Lcom/sun/media/jfxmedia/locator/Locator;->getStringLocation()Ljava/lang/String;

    move-result-object v14

    const-string v15, ".m3u8"

    invoke-virtual {v14, v15}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 138
    :cond_0
    move-object v14, v1

    invoke-virtual {v14}, Lcom/sun/media/jfxmedia/locator/Locator;->getURI()Ljava/net/URI;

    move-result-object v14

    invoke-virtual {v14}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v14

    const-string v15, "http"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3

    const-wide/32 v14, 0xea60

    :goto_0
    move-wide v4, v14

    .line 140
    .local v4, "timeout":J
    const-wide/16 v14, 0x32

    move-wide v6, v14

    .line 141
    .local v6, "iterationTime":J
    const-wide/16 v14, 0x0

    move-wide v8, v14

    .line 143
    .local v8, "timeWaited":J
    new-instance v14, Ljava/lang/Object;

    move-object/from16 v18, v14

    move-object/from16 v14, v18

    move-object/from16 v15, v18

    invoke-direct {v15}, Ljava/lang/Object;-><init>()V

    move-object v10, v14

    .line 144
    .local v10, "lock":Ljava/lang/Object;
    move-object v14, v2

    invoke-virtual {v14}, Lcom/sun/media/jfxmediaimpl/platform/gstreamer/GSTMediaPlayer;->getState()Lcom/sun/media/jfxmedia/events/PlayerStateEvent$PlayerState;

    move-result-object v14

    move-object v11, v14

    .line 146
    .local v11, "state":Lcom/sun/media/jfxmedia/events/PlayerStateEvent$PlayerState;
    :goto_1
    move-wide v14, v8

    move-wide/from16 v16, v4

    cmp-long v14, v14, v16

    if-gez v14, :cond_4

    move-object v14, v11

    sget-object v15, Lcom/sun/media/jfxmedia/events/PlayerStateEvent$PlayerState;->UNKNOWN:Lcom/sun/media/jfxmedia/events/PlayerStateEvent$PlayerState;

    if-eq v14, v15, :cond_1

    move-object v14, v11

    sget-object v15, Lcom/sun/media/jfxmedia/events/PlayerStateEvent$PlayerState;->STALLED:Lcom/sun/media/jfxmedia/events/PlayerStateEvent$PlayerState;

    if-ne v14, v15, :cond_4

    .line 149
    :cond_1
    move-object v14, v10

    move-object/from16 v18, v14

    move-object/from16 v14, v18

    move-object/from16 v15, v18

    move-object v12, v15

    :try_start_1
    monitor-enter v14
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 150
    move-object v14, v10

    const-wide/16 v15, 0x32

    :try_start_2
    invoke-virtual/range {v14 .. v16}, Ljava/lang/Object;->wait(J)V

    .line 151
    move-wide v14, v8

    const-wide/16 v16, 0x32

    add-long v14, v14, v16

    move-wide v8, v14

    .line 152
    move-object v14, v12

    monitor-exit v14
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 155
    .line 157
    :goto_2
    move-object v14, v2

    invoke-virtual {v14}, Lcom/sun/media/jfxmediaimpl/platform/gstreamer/GSTMediaPlayer;->getState()Lcom/sun/media/jfxmedia/events/PlayerStateEvent$PlayerState;

    move-result-object v14

    move-object v11, v14

    goto :goto_1

    .line 122
    .end local v2    # "player":Lcom/sun/media/jfxmediaimpl/platform/gstreamer/GSTMediaPlayer;
    .end local v3    # "contentType":Ljava/lang/String;
    .end local v4    # "timeout":J
    .end local v6    # "iterationTime":J
    .end local v8    # "timeWaited":J
    .end local v10    # "lock":Ljava/lang/Object;
    .end local v11    # "state":Lcom/sun/media/jfxmedia/events/PlayerStateEvent$PlayerState;
    :catch_0
    move-exception v14

    move-object v3, v14

    .line 123
    .local v3, "e":Ljava/lang/Exception;
    const/4 v14, 0x1

    invoke-static {v14}, Lcom/sun/media/jfxmedia/logging/Logger;->canLog(I)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 124
    const/4 v14, 0x1

    new-instance v15, Ljava/lang/StringBuilder;

    move-object/from16 v18, v15

    move-object/from16 v15, v18

    move-object/from16 v16, v18

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "GSTPlatform caught exception while creating media player: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v16, v3

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/sun/media/jfxmedia/logging/Logger;->logMsg(ILjava/lang/String;)V

    .line 126
    :cond_2
    const/4 v14, 0x0

    move-object v0, v14

    .line 167
    .end local v0    # "this":Lcom/sun/media/jfxmediaimpl/platform/gstreamer/GSTPlatform;
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_3
    return-object v0

    .line 138
    .restart local v0    # "this":Lcom/sun/media/jfxmediaimpl/platform/gstreamer/GSTPlatform;
    .restart local v2    # "player":Lcom/sun/media/jfxmediaimpl/platform/gstreamer/GSTMediaPlayer;
    .local v3, "contentType":Ljava/lang/String;
    :cond_3
    const-wide/16 v14, 0x1388

    goto :goto_0

    .line 152
    .restart local v4    # "timeout":J
    .restart local v6    # "iterationTime":J
    .restart local v8    # "timeWaited":J
    .restart local v10    # "lock":Ljava/lang/Object;
    .restart local v11    # "state":Lcom/sun/media/jfxmedia/events/PlayerStateEvent$PlayerState;
    :catchall_0
    move-exception v14

    move-object v13, v14

    move-object v14, v12

    :try_start_3
    monitor-exit v14
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v14, v13

    :try_start_4
    throw v14
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1

    .line 153
    :catch_1
    move-exception v14

    move-object v12, v14

    goto :goto_2

    .line 161
    :cond_4
    move-object v14, v2

    invoke-virtual {v14}, Lcom/sun/media/jfxmediaimpl/platform/gstreamer/GSTMediaPlayer;->getState()Lcom/sun/media/jfxmedia/events/PlayerStateEvent$PlayerState;

    move-result-object v14

    sget-object v15, Lcom/sun/media/jfxmedia/events/PlayerStateEvent$PlayerState;->READY:Lcom/sun/media/jfxmedia/events/PlayerStateEvent$PlayerState;

    if-eq v14, v15, :cond_5

    .line 162
    move-object v14, v2

    invoke-virtual {v14}, Lcom/sun/media/jfxmediaimpl/platform/gstreamer/GSTMediaPlayer;->dispose()V

    .line 163
    const/4 v14, 0x0

    move-object v2, v14

    .line 167
    .end local v3    # "contentType":Ljava/lang/String;
    .end local v4    # "timeout":J
    .end local v6    # "iterationTime":J
    .end local v8    # "timeWaited":J
    .end local v10    # "lock":Ljava/lang/Object;
    .end local v11    # "state":Lcom/sun/media/jfxmedia/events/PlayerStateEvent$PlayerState;
    :cond_5
    move-object v14, v2

    move-object v0, v14

    goto :goto_3
.end method

.method public getSupportedContentTypes()[Ljava/lang/String;
    .locals 7

    .prologue
    .line 107
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/platform/gstreamer/GSTPlatform;
    sget-object v2, Lcom/sun/media/jfxmediaimpl/platform/gstreamer/GSTPlatform;->contentTypes:[Ljava/lang/String;

    array-length v2, v2

    new-array v2, v2, [Ljava/lang/String;

    move-object v1, v2

    .line 108
    .local v1, "contentTypesCopy":[Ljava/lang/String;
    sget-object v2, Lcom/sun/media/jfxmediaimpl/platform/gstreamer/GSTPlatform;->contentTypes:[Ljava/lang/String;

    const/4 v3, 0x0

    move-object v4, v1

    const/4 v5, 0x0

    sget-object v6, Lcom/sun/media/jfxmediaimpl/platform/gstreamer/GSTPlatform;->contentTypes:[Ljava/lang/String;

    array-length v6, v6

    invoke-static {v2, v3, v4, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 109
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/media/jfxmediaimpl/platform/gstreamer/GSTPlatform;
    return-object v0
.end method

.method public loadPlatform()Z
    .locals 5

    .prologue
    .line 81
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/platform/gstreamer/GSTPlatform;
    :try_start_0
    invoke-static {}, Lcom/sun/media/jfxmediaimpl/platform/gstreamer/GSTPlatform;->gstInitPlatform()I

    move-result v3

    invoke-static {v3}, Lcom/sun/media/jfxmedia/MediaError;->getFromCode(I)Lcom/sun/media/jfxmedia/MediaError;
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    move-object v1, v3

    .line 84
    .line 86
    .local v1, "ret":Lcom/sun/media/jfxmedia/MediaError;
    :goto_0
    move-object v3, v1

    sget-object v4, Lcom/sun/media/jfxmedia/MediaError;->ERROR_NONE:Lcom/sun/media/jfxmedia/MediaError;

    if-eq v3, v4, :cond_0

    .line 87
    const-class v3, Lcom/sun/media/jfxmediaimpl/platform/gstreamer/GSTPlatform;

    move-object v4, v1

    invoke-static {v3, v4}, Lcom/sun/media/jfxmediaimpl/MediaUtils;->nativeError(Ljava/lang/Object;Lcom/sun/media/jfxmedia/MediaError;)V

    .line 89
    :cond_0
    const/4 v3, 0x1

    move v0, v3

    .end local v0    # "this":Lcom/sun/media/jfxmediaimpl/platform/gstreamer/GSTPlatform;
    return v0

    .line 82
    .end local v1    # "ret":Lcom/sun/media/jfxmedia/MediaError;
    .restart local v0    # "this":Lcom/sun/media/jfxmediaimpl/platform/gstreamer/GSTPlatform;
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 83
    .local v2, "ule":Ljava/lang/UnsatisfiedLinkError;
    sget-object v3, Lcom/sun/media/jfxmedia/MediaError;->ERROR_MANAGER_ENGINEINIT_FAIL:Lcom/sun/media/jfxmedia/MediaError;

    move-object v1, v3

    .restart local v1    # "ret":Lcom/sun/media/jfxmedia/MediaError;
    goto :goto_0
.end method
