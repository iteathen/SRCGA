.class public Lcom/sun/media/jfxmediaimpl/AudioClipProvider;
.super Ljava/lang/Object;
.source "AudioClipProvider.java"


# static fields
.field private static primaDonna:Lcom/sun/media/jfxmediaimpl/AudioClipProvider;


# instance fields
.field private useNative:Z


# direct methods
.method private constructor <init>()V
    .locals 6

    .prologue
    .line 49
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/AudioClipProvider;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 52
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/sun/media/jfxmediaimpl/AudioClipProvider;->useNative:Z

    .line 54
    move-object v2, v0

    :try_start_0
    invoke-static {}, Lcom/sun/media/jfxmediaimpl/NativeAudioClip;->init()Z

    move-result v3

    iput-boolean v3, v2, Lcom/sun/media/jfxmediaimpl/AudioClipProvider;->useNative:Z
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 59
    .line 60
    :goto_0
    return-void

    .line 55
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 56
    .local v1, "ule":Ljava/lang/UnsatisfiedLinkError;
    const/4 v2, 0x1

    const-string v3, "JavaFX AudioClip native methods not linked, using NativeMedia implementation"

    invoke-static {v2, v3}, Lcom/sun/media/jfxmedia/logging/Logger;->logMsg(ILjava/lang/String;)V

    .line 59
    goto :goto_0

    .line 57
    .end local v1    # "ule":Ljava/lang/UnsatisfiedLinkError;
    :catch_1
    move-exception v2

    move-object v1, v2

    .line 58
    .local v1, "t":Ljava/lang/Exception;
    const/4 v2, 0x4

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception while loading native AudioClip library: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sun/media/jfxmedia/logging/Logger;->logMsg(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public static declared-synchronized getProvider()Lcom/sun/media/jfxmediaimpl/AudioClipProvider;
    .locals 4

    .prologue
    .line 43
    const-class v2, Lcom/sun/media/jfxmediaimpl/AudioClipProvider;

    monitor-enter v2

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/sun/media/jfxmediaimpl/AudioClipProvider;->primaDonna:Lcom/sun/media/jfxmediaimpl/AudioClipProvider;

    if-ne v0, v1, :cond_0

    .line 44
    new-instance v0, Lcom/sun/media/jfxmediaimpl/AudioClipProvider;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    invoke-direct {v1}, Lcom/sun/media/jfxmediaimpl/AudioClipProvider;-><init>()V

    sput-object v0, Lcom/sun/media/jfxmediaimpl/AudioClipProvider;->primaDonna:Lcom/sun/media/jfxmediaimpl/AudioClipProvider;

    .line 46
    :cond_0
    sget-object v0, Lcom/sun/media/jfxmediaimpl/AudioClipProvider;->primaDonna:Lcom/sun/media/jfxmediaimpl/AudioClipProvider;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return-object v0

    .line 43
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method


# virtual methods
.method public create([BIIIII)Lcom/sun/media/jfxmedia/AudioClip;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 72
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/AudioClipProvider;
    move-object v1, p1

    .local v1, "data":[B
    move v2, p2

    .local v2, "dataOffset":I
    move/from16 v3, p3

    .local v3, "sampleCount":I
    move/from16 v4, p4

    .local v4, "sampleFormat":I
    move/from16 v5, p5

    .local v5, "channels":I
    move/from16 v6, p6

    .local v6, "sampleRate":I
    move-object v7, v0

    iget-boolean v7, v7, Lcom/sun/media/jfxmediaimpl/AudioClipProvider;->useNative:Z

    if-eqz v7, :cond_0

    .line 73
    move-object v7, v1

    move v8, v2

    move v9, v3

    move v10, v4

    move v11, v5

    move v12, v6

    invoke-static/range {v7 .. v12}, Lcom/sun/media/jfxmediaimpl/NativeAudioClip;->create([BIIIII)Lcom/sun/media/jfxmedia/AudioClip;

    move-result-object v7

    move-object v0, v7

    .line 75
    .end local v0    # "this":Lcom/sun/media/jfxmediaimpl/AudioClipProvider;
    :goto_0
    return-object v0

    .restart local v0    # "this":Lcom/sun/media/jfxmediaimpl/AudioClipProvider;
    :cond_0
    move-object v7, v1

    move v8, v2

    move v9, v3

    move v10, v4

    move v11, v5

    move v12, v6

    invoke-static/range {v7 .. v12}, Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClip;->create([BIIIII)Lcom/sun/media/jfxmedia/AudioClip;

    move-result-object v7

    move-object v0, v7

    goto :goto_0
.end method

.method public load(Ljava/net/URI;)Lcom/sun/media/jfxmedia/AudioClip;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;,
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 63
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/AudioClipProvider;
    move-object v1, p1

    .local v1, "source":Ljava/net/URI;
    move-object v2, v0

    iget-boolean v2, v2, Lcom/sun/media/jfxmediaimpl/AudioClipProvider;->useNative:Z

    if-eqz v2, :cond_0

    .line 64
    move-object v2, v1

    invoke-static {v2}, Lcom/sun/media/jfxmediaimpl/NativeAudioClip;->load(Ljava/net/URI;)Lcom/sun/media/jfxmedia/AudioClip;

    move-result-object v2

    move-object v0, v2

    .line 66
    .end local v0    # "this":Lcom/sun/media/jfxmediaimpl/AudioClipProvider;
    :goto_0
    return-object v0

    .restart local v0    # "this":Lcom/sun/media/jfxmediaimpl/AudioClipProvider;
    :cond_0
    move-object v2, v1

    invoke-static {v2}, Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClip;->load(Ljava/net/URI;)Lcom/sun/media/jfxmedia/AudioClip;

    move-result-object v2

    move-object v0, v2

    goto :goto_0
.end method

.method public stopAllClips()V
    .locals 2

    .prologue
    .line 79
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/AudioClipProvider;
    move-object v1, v0

    iget-boolean v1, v1, Lcom/sun/media/jfxmediaimpl/AudioClipProvider;->useNative:Z

    if-eqz v1, :cond_0

    .line 80
    invoke-static {}, Lcom/sun/media/jfxmediaimpl/NativeAudioClip;->stopAllClips()V

    .line 82
    :cond_0
    invoke-static {}, Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClip;->stopAllClips()V

    .line 83
    return-void
.end method
