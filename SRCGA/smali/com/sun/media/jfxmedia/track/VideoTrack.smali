.class public Lcom/sun/media/jfxmedia/track/VideoTrack;
.super Lcom/sun/media/jfxmedia/track/Track;
.source "VideoTrack.java"


# instance fields
.field private encodedFrameRate:F

.field private frameSize:Lcom/sun/media/jfxmedia/track/VideoResolution;

.field private hasAlphaChannel:Z


# direct methods
.method public constructor <init>(ZJLjava/lang/String;Ljava/util/Locale;Lcom/sun/media/jfxmedia/track/Track$Encoding;Lcom/sun/media/jfxmedia/track/VideoResolution;FZ)V
    .locals 18

    .prologue
    .line 63
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/media/jfxmedia/track/VideoTrack;
    move/from16 v1, p1

    .local v1, "enabled":Z
    move-wide/from16 v2, p2

    .local v2, "trackID":J
    move-object/from16 v4, p4

    .local v4, "name":Ljava/lang/String;
    move-object/from16 v5, p5

    .local v5, "locale":Ljava/util/Locale;
    move-object/from16 v6, p6

    .local v6, "encoding":Lcom/sun/media/jfxmedia/track/Track$Encoding;
    move-object/from16 v7, p7

    .local v7, "frameSize":Lcom/sun/media/jfxmedia/track/VideoResolution;
    move/from16 v8, p8

    .local v8, "encodedFrameRate":F
    move/from16 v9, p9

    .local v9, "hasAlphaChannel":Z
    move-object v10, v0

    move v11, v1

    move-wide v12, v2

    move-object v14, v4

    move-object v15, v5

    move-object/from16 v16, v6

    invoke-direct/range {v10 .. v16}, Lcom/sun/media/jfxmedia/track/Track;-><init>(ZJLjava/lang/String;Ljava/util/Locale;Lcom/sun/media/jfxmedia/track/Track$Encoding;)V

    .line 65
    move-object v10, v7

    if-nez v10, :cond_0

    .line 66
    new-instance v10, Ljava/lang/IllegalArgumentException;

    move-object/from16 v17, v10

    move-object/from16 v10, v17

    move-object/from16 v11, v17

    const-string v12, "frameSize == null!"

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 68
    :cond_0
    move-object v10, v7

    iget v10, v10, Lcom/sun/media/jfxmedia/track/VideoResolution;->width:I

    if-gtz v10, :cond_1

    .line 69
    new-instance v10, Ljava/lang/IllegalArgumentException;

    move-object/from16 v17, v10

    move-object/from16 v10, v17

    move-object/from16 v11, v17

    const-string v12, "frameSize.width <= 0!"

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 71
    :cond_1
    move-object v10, v7

    iget v10, v10, Lcom/sun/media/jfxmedia/track/VideoResolution;->height:I

    if-gtz v10, :cond_2

    .line 72
    new-instance v10, Ljava/lang/IllegalArgumentException;

    move-object/from16 v17, v10

    move-object/from16 v10, v17

    move-object/from16 v11, v17

    const-string v12, "frameSize.height <= 0!"

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 75
    :cond_2
    move v10, v8

    const/4 v11, 0x0

    cmpg-float v10, v10, v11

    if-gez v10, :cond_3

    .line 76
    new-instance v10, Ljava/lang/IllegalArgumentException;

    move-object/from16 v17, v10

    move-object/from16 v10, v17

    move-object/from16 v11, v17

    const-string v12, "encodedFrameRate < 0.0!"

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 79
    :cond_3
    move-object v10, v0

    move-object v11, v7

    iput-object v11, v10, Lcom/sun/media/jfxmedia/track/VideoTrack;->frameSize:Lcom/sun/media/jfxmedia/track/VideoResolution;

    .line 80
    move-object v10, v0

    move v11, v8

    iput v11, v10, Lcom/sun/media/jfxmedia/track/VideoTrack;->encodedFrameRate:F

    .line 81
    move-object v10, v0

    move v11, v9

    iput-boolean v11, v10, Lcom/sun/media/jfxmedia/track/VideoTrack;->hasAlphaChannel:Z

    .line 82
    return-void
.end method


# virtual methods
.method public getEncodedFrameRate()F
    .locals 2

    .prologue
    .line 100
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmedia/track/VideoTrack;
    move-object v1, v0

    iget v1, v1, Lcom/sun/media/jfxmedia/track/VideoTrack;->encodedFrameRate:F

    move v0, v1

    .end local v0    # "this":Lcom/sun/media/jfxmedia/track/VideoTrack;
    return v0
.end method

.method public getFrameSize()Lcom/sun/media/jfxmedia/track/VideoResolution;
    .locals 2

    .prologue
    .line 109
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmedia/track/VideoTrack;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/media/jfxmedia/track/VideoTrack;->frameSize:Lcom/sun/media/jfxmedia/track/VideoResolution;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/media/jfxmedia/track/VideoTrack;
    return-object v0
.end method

.method public hasAlphaChannel()Z
    .locals 2

    .prologue
    .line 90
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmedia/track/VideoTrack;
    move-object v1, v0

    iget-boolean v1, v1, Lcom/sun/media/jfxmedia/track/VideoTrack;->hasAlphaChannel:Z

    move v0, v1

    .end local v0    # "this":Lcom/sun/media/jfxmedia/track/VideoTrack;
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 115
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmedia/track/VideoTrack;
    new-instance v1, Ljava/lang/StringBuilder;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VideoTrack {\n    name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    .line 116
    invoke-virtual {v2}, Lcom/sun/media/jfxmedia/track/VideoTrack;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "    encoding: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    .line 117
    invoke-virtual {v2}, Lcom/sun/media/jfxmedia/track/VideoTrack;->getEncodingType()Lcom/sun/media/jfxmedia/track/Track$Encoding;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "    frameSize: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/media/jfxmedia/track/VideoTrack;->frameSize:Lcom/sun/media/jfxmedia/track/VideoResolution;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "    encodedFrameRate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget v2, v2, Lcom/sun/media/jfxmedia/track/VideoTrack;->encodedFrameRate:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "    hasAlphaChannel: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-boolean v2, v2, Lcom/sun/media/jfxmedia/track/VideoTrack;->hasAlphaChannel:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/media/jfxmedia/track/VideoTrack;
    return-object v0
.end method
