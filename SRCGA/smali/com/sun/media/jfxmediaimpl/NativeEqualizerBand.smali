.class final Lcom/sun/media/jfxmediaimpl/NativeEqualizerBand;
.super Ljava/lang/Object;
.source "NativeEqualizerBand.java"

# interfaces
.implements Lcom/sun/media/jfxmedia/effects/EqualizerBand;


# instance fields
.field private final bandRef:J


# direct methods
.method private constructor <init>(J)V
    .locals 9

    .prologue
    .line 34
    move-object v1, p0

    .local v1, "this":Lcom/sun/media/jfxmediaimpl/NativeEqualizerBand;
    move-wide v2, p1

    .local v2, "bandRef":J
    move-object v4, v1

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 35
    move-wide v4, v2

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_0

    .line 36
    move-object v4, v1

    move-wide v5, v2

    iput-wide v5, v4, Lcom/sun/media/jfxmediaimpl/NativeEqualizerBand;->bandRef:J

    .line 40
    return-void

    .line 38
    :cond_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const-string v6, "bandRef == 0"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method private native nativeGetBandwidth(J)D
.end method

.method private native nativeGetCenterFrequency(J)D
.end method

.method private native nativeGetGain(J)D
.end method

.method private native nativeSetBandwidth(JD)V
.end method

.method private native nativeSetCenterFrequency(JD)V
.end method

.method private native nativeSetGain(JD)V
.end method


# virtual methods
.method public getBandwidth()D
    .locals 4

    .prologue
    .line 54
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/NativeEqualizerBand;
    move-object v1, v0

    move-object v2, v0

    iget-wide v2, v2, Lcom/sun/media/jfxmediaimpl/NativeEqualizerBand;->bandRef:J

    invoke-direct {v1, v2, v3}, Lcom/sun/media/jfxmediaimpl/NativeEqualizerBand;->nativeGetBandwidth(J)D

    move-result-wide v1

    move-wide v0, v1

    .end local v0    # "this":Lcom/sun/media/jfxmediaimpl/NativeEqualizerBand;
    return-wide v0
.end method

.method public getCenterFrequency()D
    .locals 4

    .prologue
    .line 44
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/NativeEqualizerBand;
    move-object v1, v0

    move-object v2, v0

    iget-wide v2, v2, Lcom/sun/media/jfxmediaimpl/NativeEqualizerBand;->bandRef:J

    invoke-direct {v1, v2, v3}, Lcom/sun/media/jfxmediaimpl/NativeEqualizerBand;->nativeGetCenterFrequency(J)D

    move-result-wide v1

    move-wide v0, v1

    .end local v0    # "this":Lcom/sun/media/jfxmediaimpl/NativeEqualizerBand;
    return-wide v0
.end method

.method public getGain()D
    .locals 4

    .prologue
    .line 64
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/NativeEqualizerBand;
    move-object v1, v0

    move-object v2, v0

    iget-wide v2, v2, Lcom/sun/media/jfxmediaimpl/NativeEqualizerBand;->bandRef:J

    invoke-direct {v1, v2, v3}, Lcom/sun/media/jfxmediaimpl/NativeEqualizerBand;->nativeGetGain(J)D

    move-result-wide v1

    move-wide v0, v1

    .end local v0    # "this":Lcom/sun/media/jfxmediaimpl/NativeEqualizerBand;
    return-wide v0
.end method

.method public setBandwidth(D)V
    .locals 9

    .prologue
    .line 59
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/NativeEqualizerBand;
    move-wide v1, p1

    .local v1, "bandwidth":D
    move-object v3, v0

    move-object v4, v0

    iget-wide v4, v4, Lcom/sun/media/jfxmediaimpl/NativeEqualizerBand;->bandRef:J

    move-wide v6, v1

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/sun/media/jfxmediaimpl/NativeEqualizerBand;->nativeSetBandwidth(JD)V

    .line 60
    return-void
.end method

.method public setCenterFrequency(D)V
    .locals 9

    .prologue
    .line 49
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/NativeEqualizerBand;
    move-wide v1, p1

    .local v1, "centerFrequency":D
    move-object v3, v0

    move-object v4, v0

    iget-wide v4, v4, Lcom/sun/media/jfxmediaimpl/NativeEqualizerBand;->bandRef:J

    move-wide v6, v1

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/sun/media/jfxmediaimpl/NativeEqualizerBand;->nativeSetCenterFrequency(JD)V

    .line 50
    return-void
.end method

.method public setGain(D)V
    .locals 9

    .prologue
    .line 69
    move-object v1, p0

    .local v1, "this":Lcom/sun/media/jfxmediaimpl/NativeEqualizerBand;
    move-wide v2, p1

    .local v2, "gain":D
    move-wide v4, v2

    const-wide/high16 v6, -0x3fc8000000000000L    # -24.0

    cmpl-double v4, v4, v6

    if-ltz v4, :cond_0

    move-wide v4, v2

    const-wide/high16 v6, 0x4028000000000000L    # 12.0

    cmpg-double v4, v4, v6

    if-gtz v4, :cond_0

    .line 70
    move-object v4, v1

    move-object v5, v1

    iget-wide v5, v5, Lcom/sun/media/jfxmediaimpl/NativeEqualizerBand;->bandRef:J

    move-wide v7, v2

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/sun/media/jfxmediaimpl/NativeEqualizerBand;->nativeSetGain(JD)V

    .line 72
    :cond_0
    return-void
.end method
