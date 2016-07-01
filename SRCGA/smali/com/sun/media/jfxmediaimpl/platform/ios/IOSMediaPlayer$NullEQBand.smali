.class final Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMediaPlayer$NullEQBand;
.super Ljava/lang/Object;
.source "IOSMediaPlayer.java"

# interfaces
.implements Lcom/sun/media/jfxmedia/effects/EqualizerBand;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "NullEQBand"
.end annotation


# instance fields
.field private bandwidth:D

.field private center:D

.field private gain:D


# direct methods
.method constructor <init>(DDD)V
    .locals 11

    .prologue
    .line 393
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMediaPlayer$NullEQBand;
    move-wide v1, p1

    .local v1, "center":D
    move-wide v3, p3

    .local v3, "bandwidth":D
    move-wide/from16 v5, p5

    .local v5, "gain":D
    move-object v7, v0

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    .line 394
    move-object v7, v0

    move-wide v8, v1

    iput-wide v8, v7, Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMediaPlayer$NullEQBand;->center:D

    .line 395
    move-object v7, v0

    move-wide v8, v3

    iput-wide v8, v7, Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMediaPlayer$NullEQBand;->bandwidth:D

    .line 396
    move-object v7, v0

    move-wide v8, v5

    iput-wide v8, v7, Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMediaPlayer$NullEQBand;->gain:D

    .line 397
    return-void
.end method


# virtual methods
.method public getBandwidth()D
    .locals 3

    .prologue
    .line 408
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMediaPlayer$NullEQBand;
    move-object v1, v0

    iget-wide v1, v1, Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMediaPlayer$NullEQBand;->bandwidth:D

    move-wide v0, v1

    .end local v0    # "this":Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMediaPlayer$NullEQBand;
    return-wide v0
.end method

.method public getCenterFrequency()D
    .locals 3

    .prologue
    .line 400
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMediaPlayer$NullEQBand;
    move-object v1, v0

    iget-wide v1, v1, Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMediaPlayer$NullEQBand;->center:D

    move-wide v0, v1

    .end local v0    # "this":Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMediaPlayer$NullEQBand;
    return-wide v0
.end method

.method public getGain()D
    .locals 3

    .prologue
    .line 416
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMediaPlayer$NullEQBand;
    move-object v1, v0

    iget-wide v1, v1, Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMediaPlayer$NullEQBand;->gain:D

    move-wide v0, v1

    .end local v0    # "this":Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMediaPlayer$NullEQBand;
    return-wide v0
.end method

.method public setBandwidth(D)V
    .locals 7

    .prologue
    .line 412
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMediaPlayer$NullEQBand;
    move-wide v1, p1

    .local v1, "bandwidth":D
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMediaPlayer$NullEQBand;->bandwidth:D

    .line 413
    return-void
.end method

.method public setCenterFrequency(D)V
    .locals 7

    .prologue
    .line 404
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMediaPlayer$NullEQBand;
    move-wide v1, p1

    .local v1, "centerFrequency":D
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMediaPlayer$NullEQBand;->center:D

    .line 405
    return-void
.end method

.method public setGain(D)V
    .locals 7

    .prologue
    .line 420
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMediaPlayer$NullEQBand;
    move-wide v1, p1

    .local v1, "gain":D
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMediaPlayer$NullEQBand;->gain:D

    .line 421
    return-void
.end method
