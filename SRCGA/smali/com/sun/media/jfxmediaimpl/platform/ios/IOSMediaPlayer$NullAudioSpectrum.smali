.class final Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMediaPlayer$NullAudioSpectrum;
.super Ljava/lang/Object;
.source "IOSMediaPlayer.java"

# interfaces
.implements Lcom/sun/media/jfxmedia/effects/AudioSpectrum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "NullAudioSpectrum"
.end annotation


# instance fields
.field private bandCount:I

.field private enabled:Z

.field private fakeData:[F

.field private interval:D

.field private threshold:I


# direct methods
.method private constructor <init>()V
    .locals 4

    .prologue
    .line 329
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMediaPlayer$NullAudioSpectrum;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 330
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMediaPlayer$NullAudioSpectrum;->enabled:Z

    .line 331
    move-object v1, v0

    const/16 v2, 0x80

    iput v2, v1, Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMediaPlayer$NullAudioSpectrum;->bandCount:I

    .line 332
    move-object v1, v0

    const-wide v2, 0x3fb999999999999aL    # 0.1

    iput-wide v2, v1, Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMediaPlayer$NullAudioSpectrum;->interval:D

    .line 333
    move-object v1, v0

    const/16 v2, 0x3c

    iput v2, v1, Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMediaPlayer$NullAudioSpectrum;->threshold:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMediaPlayer$1;)V
    .locals 3

    .prologue
    .line 329
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMediaPlayer$NullAudioSpectrum;
    move-object v1, p1

    .local v1, "x0":Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMediaPlayer$1;
    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMediaPlayer$NullAudioSpectrum;-><init>()V

    return-void
.end method


# virtual methods
.method public getBandCount()I
    .locals 2

    .prologue
    .line 345
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMediaPlayer$NullAudioSpectrum;
    move-object v1, v0

    iget v1, v1, Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMediaPlayer$NullAudioSpectrum;->bandCount:I

    move v0, v1

    .end local v0    # "this":Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMediaPlayer$NullAudioSpectrum;
    return v0
.end method

.method public getEnabled()Z
    .locals 2

    .prologue
    .line 337
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMediaPlayer$NullAudioSpectrum;
    move-object v1, v0

    iget-boolean v1, v1, Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMediaPlayer$NullAudioSpectrum;->enabled:Z

    move v0, v1

    .end local v0    # "this":Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMediaPlayer$NullAudioSpectrum;
    return v0
.end method

.method public getInterval()D
    .locals 3

    .prologue
    .line 354
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMediaPlayer$NullAudioSpectrum;
    move-object v1, v0

    iget-wide v1, v1, Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMediaPlayer$NullAudioSpectrum;->interval:D

    move-wide v0, v1

    .end local v0    # "this":Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMediaPlayer$NullAudioSpectrum;
    return-wide v0
.end method

.method public getMagnitudes([F)[F
    .locals 8

    .prologue
    .line 370
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMediaPlayer$NullAudioSpectrum;
    move-object v1, p1

    .local v1, "mag":[F
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMediaPlayer$NullAudioSpectrum;->fakeData:[F

    array-length v3, v3

    move v2, v3

    .line 371
    .local v2, "size":I
    move-object v3, v1

    if-eqz v3, :cond_0

    move-object v3, v1

    array-length v3, v3

    move v4, v2

    if-ge v3, v4, :cond_1

    .line 372
    :cond_0
    move v3, v2

    new-array v3, v3, [F

    move-object v1, v3

    .line 374
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMediaPlayer$NullAudioSpectrum;->fakeData:[F

    const/4 v4, 0x0

    move-object v5, v1

    const/4 v6, 0x0

    move v7, v2

    invoke-static {v3, v4, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 375
    move-object v3, v1

    move-object v0, v3

    .end local v0    # "this":Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMediaPlayer$NullAudioSpectrum;
    return-object v0
.end method

.method public getPhases([F)[F
    .locals 8

    .prologue
    .line 379
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMediaPlayer$NullAudioSpectrum;
    move-object v1, p1

    .local v1, "phs":[F
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMediaPlayer$NullAudioSpectrum;->fakeData:[F

    array-length v3, v3

    move v2, v3

    .line 380
    .local v2, "size":I
    move-object v3, v1

    if-eqz v3, :cond_0

    move-object v3, v1

    array-length v3, v3

    move v4, v2

    if-ge v3, v4, :cond_1

    .line 381
    :cond_0
    move v3, v2

    new-array v3, v3, [F

    move-object v1, v3

    .line 383
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMediaPlayer$NullAudioSpectrum;->fakeData:[F

    const/4 v4, 0x0

    move-object v5, v1

    const/4 v6, 0x0

    move v7, v2

    invoke-static {v3, v4, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 384
    move-object v3, v1

    move-object v0, v3

    .end local v0    # "this":Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMediaPlayer$NullAudioSpectrum;
    return-object v0
.end method

.method public getSensitivityThreshold()I
    .locals 2

    .prologue
    .line 362
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMediaPlayer$NullAudioSpectrum;
    move-object v1, v0

    iget v1, v1, Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMediaPlayer$NullAudioSpectrum;->threshold:I

    move v0, v1

    .end local v0    # "this":Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMediaPlayer$NullAudioSpectrum;
    return v0
.end method

.method public setBandCount(I)V
    .locals 4

    .prologue
    .line 349
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMediaPlayer$NullAudioSpectrum;
    move v1, p1

    .local v1, "bands":I
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMediaPlayer$NullAudioSpectrum;->bandCount:I

    .line 350
    move-object v2, v0

    move-object v3, v0

    iget v3, v3, Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMediaPlayer$NullAudioSpectrum;->bandCount:I

    new-array v3, v3, [F

    iput-object v3, v2, Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMediaPlayer$NullAudioSpectrum;->fakeData:[F

    .line 351
    return-void
.end method

.method public setEnabled(Z)V
    .locals 4

    .prologue
    .line 341
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMediaPlayer$NullAudioSpectrum;
    move v1, p1

    .local v1, "enabled":Z
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMediaPlayer$NullAudioSpectrum;->enabled:Z

    .line 342
    return-void
.end method

.method public setInterval(D)V
    .locals 7

    .prologue
    .line 358
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMediaPlayer$NullAudioSpectrum;
    move-wide v1, p1

    .local v1, "interval":D
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMediaPlayer$NullAudioSpectrum;->interval:D

    .line 359
    return-void
.end method

.method public setSensitivityThreshold(I)V
    .locals 4

    .prologue
    .line 366
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMediaPlayer$NullAudioSpectrum;
    move v1, p1

    .local v1, "threshold":I
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMediaPlayer$NullAudioSpectrum;->threshold:I

    .line 367
    return-void
.end method
