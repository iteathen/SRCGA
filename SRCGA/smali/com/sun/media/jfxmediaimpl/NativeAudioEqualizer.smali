.class final Lcom/sun/media/jfxmediaimpl/NativeAudioEqualizer;
.super Ljava/lang/Object;
.source "NativeAudioEqualizer.java"

# interfaces
.implements Lcom/sun/media/jfxmedia/effects/AudioEqualizer;


# instance fields
.field private final nativeRef:J


# direct methods
.method constructor <init>(J)V
    .locals 9

    .prologue
    .line 45
    move-object v1, p0

    .local v1, "this":Lcom/sun/media/jfxmediaimpl/NativeAudioEqualizer;
    move-wide v2, p1

    .local v2, "nativeRef":J
    move-object v4, v1

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 46
    move-wide v4, v2

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    .line 47
    new-instance v4, Ljava/lang/IllegalArgumentException;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const-string v6, "Invalid native media reference"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 50
    :cond_0
    move-object v4, v1

    move-wide v5, v2

    iput-wide v5, v4, Lcom/sun/media/jfxmediaimpl/NativeAudioEqualizer;->nativeRef:J

    .line 51
    return-void
.end method

.method private native nativeAddBand(JDDD)Lcom/sun/media/jfxmedia/effects/EqualizerBand;
.end method

.method private native nativeGetEnabled(J)Z
.end method

.method private native nativeGetNumBands(J)I
.end method

.method private native nativeRemoveBand(JD)Z
.end method

.method private native nativeSetEnabled(JZ)V
.end method


# virtual methods
.method public addBand(DDD)Lcom/sun/media/jfxmedia/effects/EqualizerBand;
    .locals 17

    .prologue
    .line 69
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/media/jfxmediaimpl/NativeAudioEqualizer;
    move-wide/from16 v2, p1

    .local v2, "centerFrequency":D
    move-wide/from16 v4, p3

    .local v4, "bandwidth":D
    move-wide/from16 v6, p5

    .local v6, "gain":D
    move-object v8, v1

    move-object v9, v1

    iget-wide v9, v9, Lcom/sun/media/jfxmediaimpl/NativeAudioEqualizer;->nativeRef:J

    invoke-direct {v8, v9, v10}, Lcom/sun/media/jfxmediaimpl/NativeAudioEqualizer;->nativeGetNumBands(J)I

    move-result v8

    const/16 v9, 0x40

    if-lt v8, v9, :cond_0

    move-wide v8, v6

    const-wide/high16 v10, -0x3fc8000000000000L    # -24.0

    cmpl-double v8, v8, v10

    if-ltz v8, :cond_0

    move-wide v8, v6

    const-wide/high16 v10, 0x4028000000000000L    # 12.0

    cmpg-double v8, v8, v10

    if-gtz v8, :cond_0

    const/4 v8, 0x0

    .line 71
    :goto_0
    move-object v1, v8

    .end local v1    # "this":Lcom/sun/media/jfxmediaimpl/NativeAudioEqualizer;
    return-object v1

    .line 69
    .restart local v1    # "this":Lcom/sun/media/jfxmediaimpl/NativeAudioEqualizer;
    :cond_0
    move-object v8, v1

    move-object v9, v1

    iget-wide v9, v9, Lcom/sun/media/jfxmediaimpl/NativeAudioEqualizer;->nativeRef:J

    move-wide v11, v2

    move-wide v13, v4

    move-wide v15, v6

    .line 71
    invoke-direct/range {v8 .. v16}, Lcom/sun/media/jfxmediaimpl/NativeAudioEqualizer;->nativeAddBand(JDDD)Lcom/sun/media/jfxmedia/effects/EqualizerBand;

    move-result-object v8

    goto :goto_0
.end method

.method public getEnabled()Z
    .locals 4

    .prologue
    .line 59
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/NativeAudioEqualizer;
    move-object v1, v0

    move-object v2, v0

    iget-wide v2, v2, Lcom/sun/media/jfxmediaimpl/NativeAudioEqualizer;->nativeRef:J

    invoke-direct {v1, v2, v3}, Lcom/sun/media/jfxmediaimpl/NativeAudioEqualizer;->nativeGetEnabled(J)Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/media/jfxmediaimpl/NativeAudioEqualizer;
    return v0
.end method

.method public removeBand(D)Z
    .locals 9

    .prologue
    .line 76
    move-object v1, p0

    .local v1, "this":Lcom/sun/media/jfxmediaimpl/NativeAudioEqualizer;
    move-wide v2, p1

    .local v2, "centerFrequency":D
    move-wide v4, v2

    const-wide/16 v6, 0x0

    cmpl-double v4, v4, v6

    if-lez v4, :cond_0

    move-object v4, v1

    move-object v5, v1

    iget-wide v5, v5, Lcom/sun/media/jfxmediaimpl/NativeAudioEqualizer;->nativeRef:J

    move-wide v7, v2

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/sun/media/jfxmediaimpl/NativeAudioEqualizer;->nativeRemoveBand(JD)Z

    move-result v4

    :goto_0
    move v1, v4

    .end local v1    # "this":Lcom/sun/media/jfxmediaimpl/NativeAudioEqualizer;
    return v1

    .restart local v1    # "this":Lcom/sun/media/jfxmediaimpl/NativeAudioEqualizer;
    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public setEnabled(Z)V
    .locals 7

    .prologue
    .line 64
    move-object v1, p0

    .local v1, "this":Lcom/sun/media/jfxmediaimpl/NativeAudioEqualizer;
    move v2, p1

    .local v2, "enable":Z
    move-object v3, v1

    move-object v4, v1

    iget-wide v4, v4, Lcom/sun/media/jfxmediaimpl/NativeAudioEqualizer;->nativeRef:J

    move v6, v2

    invoke-direct {v3, v4, v5, v6}, Lcom/sun/media/jfxmediaimpl/NativeAudioEqualizer;->nativeSetEnabled(JZ)V

    .line 65
    return-void
.end method
