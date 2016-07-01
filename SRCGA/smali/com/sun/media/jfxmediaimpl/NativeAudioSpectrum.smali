.class final Lcom/sun/media/jfxmediaimpl/NativeAudioSpectrum;
.super Ljava/lang/Object;
.source "NativeAudioSpectrum.java"

# interfaces
.implements Lcom/sun/media/jfxmedia/effects/AudioSpectrum;


# static fields
.field public static final DEFAULT_BANDS:I = 0x80

.field public static final DEFAULT_INTERVAL:D = 0.1

.field public static final DEFAULT_THRESHOLD:I = -0x3c

.field private static final EMPTY_FLOAT_ARRAY:[F


# instance fields
.field private magnitudes:[F

.field private final nativeRef:J

.field private phases:[F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x0

    new-array v0, v0, [F

    sput-object v0, Lcom/sun/media/jfxmediaimpl/NativeAudioSpectrum;->EMPTY_FLOAT_ARRAY:[F

    return-void
.end method

.method constructor <init>(J)V
    .locals 9

    .prologue
    .line 52
    move-object v1, p0

    .local v1, "this":Lcom/sun/media/jfxmediaimpl/NativeAudioSpectrum;
    move-wide v2, p1

    .local v2, "refMedia":J
    move-object v4, v1

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 41
    move-object v4, v1

    sget-object v5, Lcom/sun/media/jfxmediaimpl/NativeAudioSpectrum;->EMPTY_FLOAT_ARRAY:[F

    iput-object v5, v4, Lcom/sun/media/jfxmediaimpl/NativeAudioSpectrum;->magnitudes:[F

    .line 42
    move-object v4, v1

    sget-object v5, Lcom/sun/media/jfxmediaimpl/NativeAudioSpectrum;->EMPTY_FLOAT_ARRAY:[F

    iput-object v5, v4, Lcom/sun/media/jfxmediaimpl/NativeAudioSpectrum;->phases:[F

    .line 53
    move-wide v4, v2

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    .line 54
    new-instance v4, Ljava/lang/IllegalArgumentException;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const-string v6, "Invalid native media reference"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 57
    :cond_0
    move-object v4, v1

    move-wide v5, v2

    iput-wide v5, v4, Lcom/sun/media/jfxmediaimpl/NativeAudioSpectrum;->nativeRef:J

    .line 58
    move-object v4, v1

    const/16 v5, 0x80

    invoke-virtual {v4, v5}, Lcom/sun/media/jfxmediaimpl/NativeAudioSpectrum;->setBandCount(I)V

    .line 59
    return-void
.end method

.method private native nativeGetEnabled(J)Z
.end method

.method private native nativeGetInterval(J)D
.end method

.method private native nativeGetThreshold(J)I
.end method

.method private native nativeSetBands(JI[F[F)V
.end method

.method private native nativeSetEnabled(JZ)V
.end method

.method private native nativeSetInterval(JD)V
.end method

.method private native nativeSetThreshold(JI)V
.end method


# virtual methods
.method public getBandCount()I
    .locals 2

    .prologue
    .line 77
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/NativeAudioSpectrum;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/media/jfxmediaimpl/NativeAudioSpectrum;->phases:[F

    array-length v1, v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/media/jfxmediaimpl/NativeAudioSpectrum;
    return v0
.end method

.method public getEnabled()Z
    .locals 4

    .prologue
    .line 66
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/NativeAudioSpectrum;
    move-object v1, v0

    move-object v2, v0

    iget-wide v2, v2, Lcom/sun/media/jfxmediaimpl/NativeAudioSpectrum;->nativeRef:J

    invoke-direct {v1, v2, v3}, Lcom/sun/media/jfxmediaimpl/NativeAudioSpectrum;->nativeGetEnabled(J)Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/media/jfxmediaimpl/NativeAudioSpectrum;
    return v0
.end method

.method public getInterval()D
    .locals 4

    .prologue
    .line 100
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/NativeAudioSpectrum;
    move-object v1, v0

    move-object v2, v0

    iget-wide v2, v2, Lcom/sun/media/jfxmediaimpl/NativeAudioSpectrum;->nativeRef:J

    invoke-direct {v1, v2, v3}, Lcom/sun/media/jfxmediaimpl/NativeAudioSpectrum;->nativeGetInterval(J)D

    move-result-wide v1

    move-wide v0, v1

    .end local v0    # "this":Lcom/sun/media/jfxmediaimpl/NativeAudioSpectrum;
    return-wide v0
.end method

.method public getMagnitudes([F)[F
    .locals 8

    .prologue
    .line 128
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/NativeAudioSpectrum;
    move-object v1, p1

    .local v1, "mag":[F
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/media/jfxmediaimpl/NativeAudioSpectrum;->magnitudes:[F

    array-length v3, v3

    move v2, v3

    .line 129
    .local v2, "size":I
    move-object v3, v1

    if-eqz v3, :cond_0

    move-object v3, v1

    array-length v3, v3

    move v4, v2

    if-ge v3, v4, :cond_1

    .line 130
    :cond_0
    move v3, v2

    new-array v3, v3, [F

    move-object v1, v3

    .line 132
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/media/jfxmediaimpl/NativeAudioSpectrum;->magnitudes:[F

    const/4 v4, 0x0

    move-object v5, v1

    const/4 v6, 0x0

    move v7, v2

    invoke-static {v3, v4, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 133
    move-object v3, v1

    move-object v0, v3

    .end local v0    # "this":Lcom/sun/media/jfxmediaimpl/NativeAudioSpectrum;
    return-object v0
.end method

.method public getPhases([F)[F
    .locals 8

    .prologue
    .line 138
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/NativeAudioSpectrum;
    move-object v1, p1

    .local v1, "phs":[F
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/media/jfxmediaimpl/NativeAudioSpectrum;->phases:[F

    array-length v3, v3

    move v2, v3

    .line 139
    .local v2, "size":I
    move-object v3, v1

    if-eqz v3, :cond_0

    move-object v3, v1

    array-length v3, v3

    move v4, v2

    if-ge v3, v4, :cond_1

    .line 140
    :cond_0
    move v3, v2

    new-array v3, v3, [F

    move-object v1, v3

    .line 142
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/media/jfxmediaimpl/NativeAudioSpectrum;->phases:[F

    const/4 v4, 0x0

    move-object v5, v1

    const/4 v6, 0x0

    move v7, v2

    invoke-static {v3, v4, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 143
    move-object v3, v1

    move-object v0, v3

    .end local v0    # "this":Lcom/sun/media/jfxmediaimpl/NativeAudioSpectrum;
    return-object v0
.end method

.method public getSensitivityThreshold()I
    .locals 4

    .prologue
    .line 114
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/NativeAudioSpectrum;
    move-object v1, v0

    move-object v2, v0

    iget-wide v2, v2, Lcom/sun/media/jfxmediaimpl/NativeAudioSpectrum;->nativeRef:J

    invoke-direct {v1, v2, v3}, Lcom/sun/media/jfxmediaimpl/NativeAudioSpectrum;->nativeGetThreshold(J)I

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/media/jfxmediaimpl/NativeAudioSpectrum;
    return v0
.end method

.method public setBandCount(I)V
    .locals 10

    .prologue
    .line 82
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/NativeAudioSpectrum;
    move v1, p1

    .local v1, "bands":I
    move v3, v1

    const/4 v4, 0x1

    if-le v3, v4, :cond_1

    .line 83
    move-object v3, v0

    move v4, v1

    new-array v4, v4, [F

    iput-object v4, v3, Lcom/sun/media/jfxmediaimpl/NativeAudioSpectrum;->magnitudes:[F

    .line 84
    const/4 v3, 0x0

    move v2, v3

    .local v2, "i":I
    :goto_0
    move v3, v2

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/media/jfxmediaimpl/NativeAudioSpectrum;->magnitudes:[F

    array-length v4, v4

    if-ge v3, v4, :cond_0

    .line 85
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/media/jfxmediaimpl/NativeAudioSpectrum;->magnitudes:[F

    move v4, v2

    const/high16 v5, -0x3d900000    # -60.0f

    aput v5, v3, v4

    .line 84
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 88
    :cond_0
    move-object v3, v0

    move v4, v1

    new-array v4, v4, [F

    iput-object v4, v3, Lcom/sun/media/jfxmediaimpl/NativeAudioSpectrum;->phases:[F

    .line 89
    move-object v3, v0

    move-object v4, v0

    iget-wide v4, v4, Lcom/sun/media/jfxmediaimpl/NativeAudioSpectrum;->nativeRef:J

    move v6, v1

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/media/jfxmediaimpl/NativeAudioSpectrum;->magnitudes:[F

    move-object v8, v0

    iget-object v8, v8, Lcom/sun/media/jfxmediaimpl/NativeAudioSpectrum;->phases:[F

    invoke-direct/range {v3 .. v8}, Lcom/sun/media/jfxmediaimpl/NativeAudioSpectrum;->nativeSetBands(JI[F[F)V

    .line 96
    return-void

    .line 91
    .end local v2    # "i":I
    :cond_1
    move-object v3, v0

    sget-object v4, Lcom/sun/media/jfxmediaimpl/NativeAudioSpectrum;->EMPTY_FLOAT_ARRAY:[F

    iput-object v4, v3, Lcom/sun/media/jfxmediaimpl/NativeAudioSpectrum;->magnitudes:[F

    .line 92
    move-object v3, v0

    sget-object v4, Lcom/sun/media/jfxmediaimpl/NativeAudioSpectrum;->EMPTY_FLOAT_ARRAY:[F

    iput-object v4, v3, Lcom/sun/media/jfxmediaimpl/NativeAudioSpectrum;->phases:[F

    .line 94
    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    const-string v5, "Number of bands must at least be 2"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public setEnabled(Z)V
    .locals 7

    .prologue
    .line 71
    move-object v1, p0

    .local v1, "this":Lcom/sun/media/jfxmediaimpl/NativeAudioSpectrum;
    move v2, p1

    .local v2, "enabled":Z
    move-object v3, v1

    move-object v4, v1

    iget-wide v4, v4, Lcom/sun/media/jfxmediaimpl/NativeAudioSpectrum;->nativeRef:J

    move v6, v2

    invoke-direct {v3, v4, v5, v6}, Lcom/sun/media/jfxmediaimpl/NativeAudioSpectrum;->nativeSetEnabled(JZ)V

    .line 72
    return-void
.end method

.method public setInterval(D)V
    .locals 11

    .prologue
    .line 105
    move-object v1, p0

    .local v1, "this":Lcom/sun/media/jfxmediaimpl/NativeAudioSpectrum;
    move-wide v2, p1

    .local v2, "interval":D
    move-wide v4, v2

    const-wide v6, 0x41cdcd6500000000L    # 1.0E9

    mul-double/2addr v4, v6

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    cmpl-double v4, v4, v6

    if-ltz v4, :cond_0

    .line 106
    move-object v4, v1

    move-object v5, v1

    iget-wide v5, v5, Lcom/sun/media/jfxmediaimpl/NativeAudioSpectrum;->nativeRef:J

    move-wide v7, v2

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/sun/media/jfxmediaimpl/NativeAudioSpectrum;->nativeSetInterval(JD)V

    .line 110
    return-void

    .line 108
    :cond_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    const-string v6, "Interval can\'t be less that 1 nanosecond"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public setSensitivityThreshold(I)V
    .locals 11

    .prologue
    .line 119
    move-object v1, p0

    .local v1, "this":Lcom/sun/media/jfxmediaimpl/NativeAudioSpectrum;
    move v2, p1

    .local v2, "threshold":I
    move v3, v2

    if-gtz v3, :cond_0

    .line 120
    move-object v3, v1

    move-object v4, v1

    iget-wide v4, v4, Lcom/sun/media/jfxmediaimpl/NativeAudioSpectrum;->nativeRef:J

    move v6, v2

    invoke-direct {v3, v4, v5, v6}, Lcom/sun/media/jfxmediaimpl/NativeAudioSpectrum;->nativeSetThreshold(JI)V

    .line 124
    return-void

    .line 122
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v10, v3

    move-object v3, v10

    move-object v4, v10

    const-string v5, "Sensitivity threshold must be less than 0: %d"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x0

    move v9, v2

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method
