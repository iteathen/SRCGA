.class public Lcom/sun/media/jfxmedia/track/AudioTrack;
.super Lcom/sun/media/jfxmedia/track/Track;
.source "AudioTrack.java"


# static fields
.field public static final FRONT_CENTER:I = 0x4

.field public static final FRONT_LEFT:I = 0x1

.field public static final FRONT_RIGHT:I = 0x2

.field public static final REAR_CENTER:I = 0x20

.field public static final REAR_LEFT:I = 0x8

.field public static final REAR_RIGHT:I = 0x10

.field public static final UNKNOWN:I


# instance fields
.field private channelMask:I

.field private encodedSampleRate:F

.field private numChannels:I


# direct methods
.method public constructor <init>(ZJLjava/lang/String;Ljava/util/Locale;Lcom/sun/media/jfxmedia/track/Track$Encoding;IIF)V
    .locals 18

    .prologue
    .line 96
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/media/jfxmedia/track/AudioTrack;
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
    move/from16 v7, p7

    .local v7, "numChannels":I
    move/from16 v8, p8

    .local v8, "channelMask":I
    move/from16 v9, p9

    .local v9, "encodedSampleRate":F
    move-object v10, v0

    move v11, v1

    move-wide v12, v2

    move-object v14, v4

    move-object v15, v5

    move-object/from16 v16, v6

    invoke-direct/range {v10 .. v16}, Lcom/sun/media/jfxmedia/track/Track;-><init>(ZJLjava/lang/String;Ljava/util/Locale;Lcom/sun/media/jfxmedia/track/Track$Encoding;)V

    .line 98
    move v10, v7

    const/4 v11, 0x1

    if-ge v10, v11, :cond_0

    .line 99
    new-instance v10, Ljava/lang/IllegalArgumentException;

    move-object/from16 v17, v10

    move-object/from16 v10, v17

    move-object/from16 v11, v17

    const-string v12, "numChannels < 1!"

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 102
    :cond_0
    move v10, v9

    const/4 v11, 0x0

    cmpg-float v10, v10, v11

    if-gtz v10, :cond_1

    .line 103
    new-instance v10, Ljava/lang/IllegalArgumentException;

    move-object/from16 v17, v10

    move-object/from16 v10, v17

    move-object/from16 v11, v17

    const-string v12, "encodedSampleRate <= 0.0"

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 106
    :cond_1
    move-object v10, v0

    move v11, v7

    iput v11, v10, Lcom/sun/media/jfxmedia/track/AudioTrack;->numChannels:I

    .line 107
    move-object v10, v0

    move v11, v8

    iput v11, v10, Lcom/sun/media/jfxmedia/track/AudioTrack;->channelMask:I

    .line 108
    move-object v10, v0

    move v11, v9

    iput v11, v10, Lcom/sun/media/jfxmedia/track/AudioTrack;->encodedSampleRate:F

    .line 109
    return-void
.end method


# virtual methods
.method public getChannelMask()I
    .locals 2

    .prologue
    .line 126
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmedia/track/AudioTrack;
    move-object v1, v0

    iget v1, v1, Lcom/sun/media/jfxmedia/track/AudioTrack;->channelMask:I

    move v0, v1

    .end local v0    # "this":Lcom/sun/media/jfxmedia/track/AudioTrack;
    return v0
.end method

.method public getEncodedSampleRate()F
    .locals 2

    .prologue
    .line 135
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmedia/track/AudioTrack;
    move-object v1, v0

    iget v1, v1, Lcom/sun/media/jfxmedia/track/AudioTrack;->encodedSampleRate:F

    move v0, v1

    .end local v0    # "this":Lcom/sun/media/jfxmedia/track/AudioTrack;
    return v0
.end method

.method public getNumChannels()I
    .locals 2

    .prologue
    .line 117
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmedia/track/AudioTrack;
    move-object v1, v0

    iget v1, v1, Lcom/sun/media/jfxmedia/track/AudioTrack;->numChannels:I

    move v0, v1

    .end local v0    # "this":Lcom/sun/media/jfxmedia/track/AudioTrack;
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 140
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmedia/track/AudioTrack;
    new-instance v1, Ljava/lang/StringBuilder;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AudioTrack {\n    name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    .line 141
    invoke-virtual {v2}, Lcom/sun/media/jfxmedia/track/AudioTrack;->getName()Ljava/lang/String;

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

    .line 142
    invoke-virtual {v2}, Lcom/sun/media/jfxmedia/track/AudioTrack;->getEncodingType()Lcom/sun/media/jfxmedia/track/Track$Encoding;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "    language: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    .line 143
    invoke-virtual {v2}, Lcom/sun/media/jfxmedia/track/AudioTrack;->getLocale()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "    numChannels: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget v2, v2, Lcom/sun/media/jfxmedia/track/AudioTrack;->numChannels:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "    channelMask: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget v2, v2, Lcom/sun/media/jfxmedia/track/AudioTrack;->channelMask:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "    encodedSampleRate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget v2, v2, Lcom/sun/media/jfxmedia/track/AudioTrack;->encodedSampleRate:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

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

    .end local v0    # "this":Lcom/sun/media/jfxmedia/track/AudioTrack;
    return-object v0
.end method
