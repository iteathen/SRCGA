.class final Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMediaPlayer$NullAudioEQ;
.super Ljava/lang/Object;
.source "IOSMediaPlayer.java"

# interfaces
.implements Lcom/sun/media/jfxmedia/effects/AudioEqualizer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "NullAudioEQ"
.end annotation


# instance fields
.field private bands:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Double;",
            "Lcom/sun/media/jfxmedia/effects/EqualizerBand;",
            ">;"
        }
    .end annotation
.end field

.field private enabled:Z


# direct methods
.method private constructor <init>()V
    .locals 5

    .prologue
    .line 295
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMediaPlayer$NullAudioEQ;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 296
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMediaPlayer$NullAudioEQ;->enabled:Z

    .line 297
    move-object v1, v0

    new-instance v2, Ljava/util/HashMap;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v2, v1, Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMediaPlayer$NullAudioEQ;->bands:Ljava/util/Map;

    return-void
.end method

.method synthetic constructor <init>(Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMediaPlayer$1;)V
    .locals 3

    .prologue
    .line 295
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMediaPlayer$NullAudioEQ;
    move-object v1, p1

    .local v1, "x0":Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMediaPlayer$1;
    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMediaPlayer$NullAudioEQ;-><init>()V

    return-void
.end method


# virtual methods
.method public addBand(DDD)Lcom/sun/media/jfxmedia/effects/EqualizerBand;
    .locals 19

    .prologue
    .line 309
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMediaPlayer$NullAudioEQ;
    move-wide/from16 v2, p1

    .local v2, "centerFrequency":D
    move-wide/from16 v4, p3

    .local v4, "bandwidth":D
    move-wide/from16 v6, p5

    .local v6, "gain":D
    new-instance v10, Ljava/lang/Double;

    move-object/from16 v18, v10

    move-object/from16 v10, v18

    move-object/from16 v11, v18

    move-wide v12, v2

    invoke-direct {v11, v12, v13}, Ljava/lang/Double;-><init>(D)V

    move-object v8, v10

    .line 310
    .local v8, "key":Ljava/lang/Double;
    move-object v10, v1

    iget-object v10, v10, Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMediaPlayer$NullAudioEQ;->bands:Ljava/util/Map;

    move-object v11, v8

    invoke-interface {v10, v11}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 311
    move-object v10, v1

    move-wide v11, v2

    invoke-virtual {v10, v11, v12}, Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMediaPlayer$NullAudioEQ;->removeBand(D)Z

    move-result v10

    .line 314
    :cond_0
    new-instance v10, Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMediaPlayer$NullEQBand;

    move-object/from16 v18, v10

    move-object/from16 v10, v18

    move-object/from16 v11, v18

    move-wide v12, v2

    move-wide v14, v4

    move-wide/from16 v16, v6

    invoke-direct/range {v11 .. v17}, Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMediaPlayer$NullEQBand;-><init>(DDD)V

    move-object v9, v10

    .line 315
    .local v9, "newBand":Lcom/sun/media/jfxmedia/effects/EqualizerBand;
    move-object v10, v1

    iget-object v10, v10, Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMediaPlayer$NullAudioEQ;->bands:Ljava/util/Map;

    move-object v11, v8

    move-object v12, v9

    invoke-interface {v10, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .line 316
    move-object v10, v9

    move-object v1, v10

    .end local v1    # "this":Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMediaPlayer$NullAudioEQ;
    return-object v1
.end method

.method public getEnabled()Z
    .locals 2

    .prologue
    .line 301
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMediaPlayer$NullAudioEQ;
    move-object v1, v0

    iget-boolean v1, v1, Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMediaPlayer$NullAudioEQ;->enabled:Z

    move v0, v1

    .end local v0    # "this":Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMediaPlayer$NullAudioEQ;
    return v0
.end method

.method public removeBand(D)Z
    .locals 9

    .prologue
    .line 320
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMediaPlayer$NullAudioEQ;
    move-wide v1, p1

    .local v1, "centerFrequency":D
    new-instance v4, Ljava/lang/Double;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-wide v6, v1

    invoke-direct {v5, v6, v7}, Ljava/lang/Double;-><init>(D)V

    move-object v3, v4

    .line 321
    .local v3, "key":Ljava/lang/Double;
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMediaPlayer$NullAudioEQ;->bands:Ljava/util/Map;

    move-object v5, v3

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 322
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMediaPlayer$NullAudioEQ;->bands:Ljava/util/Map;

    move-object v5, v3

    invoke-interface {v4, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 323
    const/4 v4, 0x1

    move v0, v4

    .line 325
    .end local v0    # "this":Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMediaPlayer$NullAudioEQ;
    :goto_0
    return v0

    .restart local v0    # "this":Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMediaPlayer$NullAudioEQ;
    :cond_0
    const/4 v4, 0x0

    move v0, v4

    goto :goto_0
.end method

.method public setEnabled(Z)V
    .locals 4

    .prologue
    .line 305
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMediaPlayer$NullAudioEQ;
    move v1, p1

    .local v1, "bEnable":Z
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/sun/media/jfxmediaimpl/platform/ios/IOSMediaPlayer$NullAudioEQ;->enabled:Z

    .line 306
    return-void
.end method
