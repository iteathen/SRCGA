.class public final Ljavafx/scene/media/MediaException;
.super Ljava/lang/RuntimeException;
.source "MediaException.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavafx/scene/media/MediaException$Type;
    }
.end annotation


# instance fields
.field private final type:Ljavafx/scene/media/MediaException$Type;


# direct methods
.method constructor <init>(Ljavafx/scene/media/MediaException$Type;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 174
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaException;
    move-object v1, p1

    .local v1, "type":Ljavafx/scene/media/MediaException$Type;
    move-object v2, p2

    .local v2, "message":Ljava/lang/String;
    move-object v3, v0

    move-object v4, v2

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 175
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Ljavafx/scene/media/MediaException;->type:Ljavafx/scene/media/MediaException$Type;

    .line 176
    return-void
.end method

.method constructor <init>(Ljavafx/scene/media/MediaException$Type;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 7

    .prologue
    .line 169
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaException;
    move-object v1, p1

    .local v1, "type":Ljavafx/scene/media/MediaException$Type;
    move-object v2, p2

    .local v2, "message":Ljava/lang/String;
    move-object v3, p3

    .local v3, "t":Ljava/lang/Throwable;
    move-object v4, v0

    move-object v5, v2

    move-object v6, v3

    invoke-direct {v4, v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 170
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Ljavafx/scene/media/MediaException;->type:Ljavafx/scene/media/MediaException$Type;

    .line 171
    return-void
.end method

.method constructor <init>(Ljavafx/scene/media/MediaException$Type;Ljava/lang/Throwable;)V
    .locals 5

    .prologue
    .line 164
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaException;
    move-object v1, p1

    .local v1, "type":Ljavafx/scene/media/MediaException$Type;
    move-object v2, p2

    .local v2, "t":Ljava/lang/Throwable;
    move-object v3, v0

    move-object v4, v2

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 165
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Ljavafx/scene/media/MediaException;->type:Ljavafx/scene/media/MediaException$Type;

    .line 166
    return-void
.end method

.method static errorCodeToType(I)Ljavafx/scene/media/MediaException$Type;
    .locals 4

    .prologue
    .line 99
    move v0, p0

    .local v0, "errorCode":I
    move v2, v0

    sget-object v3, Lcom/sun/media/jfxmedia/MediaError;->ERROR_LOCATOR_CONNECTION_LOST:Lcom/sun/media/jfxmedia/MediaError;

    invoke-virtual {v3}, Lcom/sun/media/jfxmedia/MediaError;->code()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 100
    sget-object v2, Ljavafx/scene/media/MediaException$Type;->MEDIA_INACCESSIBLE:Ljavafx/scene/media/MediaException$Type;

    move-object v1, v2

    .line 125
    .local v1, "errorType":Ljavafx/scene/media/MediaException$Type;
    :goto_0
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "errorCode":I
    return-object v0

    .line 101
    .end local v1    # "errorType":Ljavafx/scene/media/MediaException$Type;
    .restart local v0    # "errorCode":I
    :cond_0
    move v2, v0

    sget-object v3, Lcom/sun/media/jfxmedia/MediaError;->ERROR_GSTREAMER_SOURCEFILE_NONEXISTENT:Lcom/sun/media/jfxmedia/MediaError;

    invoke-virtual {v3}, Lcom/sun/media/jfxmedia/MediaError;->code()I

    move-result v3

    if-eq v2, v3, :cond_1

    move v2, v0

    sget-object v3, Lcom/sun/media/jfxmedia/MediaError;->ERROR_GSTREAMER_SOURCEFILE_NONREGULAR:Lcom/sun/media/jfxmedia/MediaError;

    .line 102
    invoke-virtual {v3}, Lcom/sun/media/jfxmedia/MediaError;->code()I

    move-result v3

    if-ne v2, v3, :cond_2

    .line 103
    :cond_1
    sget-object v2, Ljavafx/scene/media/MediaException$Type;->MEDIA_UNAVAILABLE:Ljavafx/scene/media/MediaException$Type;

    move-object v1, v2

    .restart local v1    # "errorType":Ljavafx/scene/media/MediaException$Type;
    goto :goto_0

    .line 104
    .end local v1    # "errorType":Ljavafx/scene/media/MediaException$Type;
    :cond_2
    move v2, v0

    sget-object v3, Lcom/sun/media/jfxmedia/MediaError;->ERROR_MEDIA_AUDIO_FORMAT_UNSUPPORTED:Lcom/sun/media/jfxmedia/MediaError;

    invoke-virtual {v3}, Lcom/sun/media/jfxmedia/MediaError;->code()I

    move-result v3

    if-eq v2, v3, :cond_3

    move v2, v0

    sget-object v3, Lcom/sun/media/jfxmedia/MediaError;->ERROR_MEDIA_UNKNOWN_PIXEL_FORMAT:Lcom/sun/media/jfxmedia/MediaError;

    .line 105
    invoke-virtual {v3}, Lcom/sun/media/jfxmedia/MediaError;->code()I

    move-result v3

    if-eq v2, v3, :cond_3

    move v2, v0

    sget-object v3, Lcom/sun/media/jfxmedia/MediaError;->ERROR_MEDIA_VIDEO_FORMAT_UNSUPPORTED:Lcom/sun/media/jfxmedia/MediaError;

    .line 106
    invoke-virtual {v3}, Lcom/sun/media/jfxmedia/MediaError;->code()I

    move-result v3

    if-eq v2, v3, :cond_3

    move v2, v0

    sget-object v3, Lcom/sun/media/jfxmedia/MediaError;->ERROR_LOCATOR_CONTENT_TYPE_NULL:Lcom/sun/media/jfxmedia/MediaError;

    .line 107
    invoke-virtual {v3}, Lcom/sun/media/jfxmedia/MediaError;->code()I

    move-result v3

    if-eq v2, v3, :cond_3

    move v2, v0

    sget-object v3, Lcom/sun/media/jfxmedia/MediaError;->ERROR_LOCATOR_UNSUPPORTED_MEDIA_FORMAT:Lcom/sun/media/jfxmedia/MediaError;

    .line 108
    invoke-virtual {v3}, Lcom/sun/media/jfxmedia/MediaError;->code()I

    move-result v3

    if-eq v2, v3, :cond_3

    move v2, v0

    sget-object v3, Lcom/sun/media/jfxmedia/MediaError;->ERROR_LOCATOR_UNSUPPORTED_TYPE:Lcom/sun/media/jfxmedia/MediaError;

    .line 109
    invoke-virtual {v3}, Lcom/sun/media/jfxmedia/MediaError;->code()I

    move-result v3

    if-eq v2, v3, :cond_3

    move v2, v0

    sget-object v3, Lcom/sun/media/jfxmedia/MediaError;->ERROR_GSTREAMER_UNSUPPORTED_PROTOCOL:Lcom/sun/media/jfxmedia/MediaError;

    .line 110
    invoke-virtual {v3}, Lcom/sun/media/jfxmedia/MediaError;->code()I

    move-result v3

    if-eq v2, v3, :cond_3

    move v2, v0

    sget-object v3, Lcom/sun/media/jfxmedia/MediaError;->ERROR_MEDIA_MP3_FORMAT_UNSUPPORTED:Lcom/sun/media/jfxmedia/MediaError;

    .line 111
    invoke-virtual {v3}, Lcom/sun/media/jfxmedia/MediaError;->code()I

    move-result v3

    if-eq v2, v3, :cond_3

    move v2, v0

    sget-object v3, Lcom/sun/media/jfxmedia/MediaError;->ERROR_MEDIA_AAC_FORMAT_UNSUPPORTED:Lcom/sun/media/jfxmedia/MediaError;

    .line 112
    invoke-virtual {v3}, Lcom/sun/media/jfxmedia/MediaError;->code()I

    move-result v3

    if-eq v2, v3, :cond_3

    move v2, v0

    sget-object v3, Lcom/sun/media/jfxmedia/MediaError;->ERROR_MEDIA_H264_FORMAT_UNSUPPORTED:Lcom/sun/media/jfxmedia/MediaError;

    .line 113
    invoke-virtual {v3}, Lcom/sun/media/jfxmedia/MediaError;->code()I

    move-result v3

    if-eq v2, v3, :cond_3

    move v2, v0

    sget-object v3, Lcom/sun/media/jfxmedia/MediaError;->ERROR_MEDIA_HLS_FORMAT_UNSUPPORTED:Lcom/sun/media/jfxmedia/MediaError;

    .line 114
    invoke-virtual {v3}, Lcom/sun/media/jfxmedia/MediaError;->code()I

    move-result v3

    if-ne v2, v3, :cond_4

    .line 115
    :cond_3
    sget-object v2, Ljavafx/scene/media/MediaException$Type;->MEDIA_UNSUPPORTED:Ljavafx/scene/media/MediaException$Type;

    move-object v1, v2

    .restart local v1    # "errorType":Ljavafx/scene/media/MediaException$Type;
    goto :goto_0

    .line 116
    .end local v1    # "errorType":Ljavafx/scene/media/MediaException$Type;
    :cond_4
    move v2, v0

    sget-object v3, Lcom/sun/media/jfxmedia/MediaError;->ERROR_MEDIA_CORRUPTED:Lcom/sun/media/jfxmedia/MediaError;

    invoke-virtual {v3}, Lcom/sun/media/jfxmedia/MediaError;->code()I

    move-result v3

    if-ne v2, v3, :cond_5

    .line 117
    sget-object v2, Ljavafx/scene/media/MediaException$Type;->MEDIA_CORRUPTED:Ljavafx/scene/media/MediaException$Type;

    move-object v1, v2

    .restart local v1    # "errorType":Ljavafx/scene/media/MediaException$Type;
    goto/16 :goto_0

    .line 118
    .end local v1    # "errorType":Ljavafx/scene/media/MediaException$Type;
    :cond_5
    move v2, v0

    sget-object v3, Lcom/sun/media/jfxmedia/MediaError;->ERROR_BASE_GSTREAMER:Lcom/sun/media/jfxmedia/MediaError;

    invoke-virtual {v3}, Lcom/sun/media/jfxmedia/MediaError;->code()I

    move-result v3

    and-int/2addr v2, v3

    sget-object v3, Lcom/sun/media/jfxmedia/MediaError;->ERROR_BASE_GSTREAMER:Lcom/sun/media/jfxmedia/MediaError;

    invoke-virtual {v3}, Lcom/sun/media/jfxmedia/MediaError;->code()I

    move-result v3

    if-eq v2, v3, :cond_6

    move v2, v0

    sget-object v3, Lcom/sun/media/jfxmedia/MediaError;->ERROR_BASE_JNI:Lcom/sun/media/jfxmedia/MediaError;

    .line 119
    invoke-virtual {v3}, Lcom/sun/media/jfxmedia/MediaError;->code()I

    move-result v3

    and-int/2addr v2, v3

    sget-object v3, Lcom/sun/media/jfxmedia/MediaError;->ERROR_BASE_JNI:Lcom/sun/media/jfxmedia/MediaError;

    invoke-virtual {v3}, Lcom/sun/media/jfxmedia/MediaError;->code()I

    move-result v3

    if-ne v2, v3, :cond_7

    .line 120
    :cond_6
    sget-object v2, Ljavafx/scene/media/MediaException$Type;->PLAYBACK_ERROR:Ljavafx/scene/media/MediaException$Type;

    move-object v1, v2

    .restart local v1    # "errorType":Ljavafx/scene/media/MediaException$Type;
    goto/16 :goto_0

    .line 122
    .end local v1    # "errorType":Ljavafx/scene/media/MediaException$Type;
    :cond_7
    sget-object v2, Ljavafx/scene/media/MediaException$Type;->UNKNOWN:Ljavafx/scene/media/MediaException$Type;

    move-object v1, v2

    .restart local v1    # "errorType":Ljavafx/scene/media/MediaException$Type;
    goto/16 :goto_0
.end method

.method static exceptionToMediaException(Ljava/lang/Exception;)Ljavafx/scene/media/MediaException;
    .locals 9

    .prologue
    .line 132
    move-object v0, p0

    .local v0, "e":Ljava/lang/Exception;
    sget-object v4, Ljavafx/scene/media/MediaException$Type;->UNKNOWN:Ljavafx/scene/media/MediaException$Type;

    move-object v1, v4

    .line 134
    .local v1, "errType":Ljavafx/scene/media/MediaException$Type;
    move-object v4, v0

    invoke-virtual {v4}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    instance-of v4, v4, Ljava/net/UnknownHostException;

    if-eqz v4, :cond_1

    .line 135
    sget-object v4, Ljavafx/scene/media/MediaException$Type;->MEDIA_UNAVAILABLE:Ljavafx/scene/media/MediaException$Type;

    move-object v1, v4

    .line 146
    :cond_0
    :goto_0
    new-instance v4, Ljavafx/scene/media/MediaException;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v1

    move-object v7, v0

    invoke-direct {v5, v6, v7}, Ljavafx/scene/media/MediaException;-><init>(Ljavafx/scene/media/MediaException$Type;Ljava/lang/Throwable;)V

    move-object v0, v4

    .end local v0    # "e":Ljava/lang/Exception;
    return-object v0

    .line 136
    .restart local v0    # "e":Ljava/lang/Exception;
    :cond_1
    move-object v4, v0

    invoke-virtual {v4}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    instance-of v4, v4, Ljava/lang/IllegalArgumentException;

    if-eqz v4, :cond_2

    .line 137
    sget-object v4, Ljavafx/scene/media/MediaException$Type;->MEDIA_UNSUPPORTED:Ljavafx/scene/media/MediaException$Type;

    move-object v1, v4

    goto :goto_0

    .line 138
    :cond_2
    move-object v4, v0

    instance-of v4, v4, Lcom/sun/media/jfxmedia/MediaException;

    if-eqz v4, :cond_0

    .line 139
    move-object v4, v0

    check-cast v4, Lcom/sun/media/jfxmedia/MediaException;

    move-object v2, v4

    .line 140
    .local v2, "me":Lcom/sun/media/jfxmedia/MediaException;
    move-object v4, v2

    invoke-virtual {v4}, Lcom/sun/media/jfxmedia/MediaException;->getMediaError()Lcom/sun/media/jfxmedia/MediaError;

    move-result-object v4

    move-object v3, v4

    .line 141
    .local v3, "error":Lcom/sun/media/jfxmedia/MediaError;
    move-object v4, v3

    if-eqz v4, :cond_0

    .line 142
    move-object v4, v3

    invoke-virtual {v4}, Lcom/sun/media/jfxmedia/MediaError;->code()I

    move-result v4

    invoke-static {v4}, Ljavafx/scene/media/MediaException;->errorCodeToType(I)Ljavafx/scene/media/MediaException$Type;

    move-result-object v4

    move-object v1, v4

    goto :goto_0
.end method

.method static getMediaException(Ljava/lang/Object;ILjava/lang/String;)Ljavafx/scene/media/MediaException;
    .locals 11

    .prologue
    .line 155
    move-object v0, p0

    .local v0, "source":Ljava/lang/Object;
    move v1, p1

    .local v1, "errorCode":I
    move-object v2, p2

    .local v2, "message":Ljava/lang/String;
    move v6, v1

    invoke-static {v6}, Lcom/sun/media/jfxmedia/MediaError;->getFromCode(I)Lcom/sun/media/jfxmedia/MediaError;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sun/media/jfxmedia/MediaError;->description()Ljava/lang/String;

    move-result-object v6

    move-object v3, v6

    .line 156
    .local v3, "errorDescription":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v4, v6

    .line 159
    .local v4, "exceptionMessage":Ljava/lang/String;
    move v6, v1

    invoke-static {v6}, Ljavafx/scene/media/MediaException;->errorCodeToType(I)Ljavafx/scene/media/MediaException$Type;

    move-result-object v6

    move-object v5, v6

    .line 160
    .local v5, "errorType":Ljavafx/scene/media/MediaException$Type;
    new-instance v6, Ljavafx/scene/media/MediaException;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v8, v5

    move-object v9, v4

    invoke-direct {v7, v8, v9}, Ljavafx/scene/media/MediaException;-><init>(Ljavafx/scene/media/MediaException$Type;Ljava/lang/String;)V

    move-object v0, v6

    .end local v0    # "source":Ljava/lang/Object;
    return-object v0
.end method

.method static haltException(Ljava/lang/String;)Ljavafx/scene/media/MediaException;
    .locals 6

    .prologue
    .line 150
    move-object v0, p0

    .local v0, "message":Ljava/lang/String;
    new-instance v1, Ljavafx/scene/media/MediaException;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    sget-object v3, Ljavafx/scene/media/MediaException$Type;->PLAYBACK_HALTED:Ljavafx/scene/media/MediaException$Type;

    move-object v4, v0

    invoke-direct {v2, v3, v4}, Ljavafx/scene/media/MediaException;-><init>(Ljavafx/scene/media/MediaException$Type;Ljava/lang/String;)V

    move-object v0, v1

    .end local v0    # "message":Ljava/lang/String;
    return-object v0
.end method


# virtual methods
.method public getType()Ljavafx/scene/media/MediaException$Type;
    .locals 2

    .prologue
    .line 186
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaException;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/media/MediaException;->type:Ljavafx/scene/media/MediaException$Type;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/media/MediaException;
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 195
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaException;
    new-instance v2, Ljava/lang/StringBuilder;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MediaException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/media/MediaException;->type:Ljavafx/scene/media/MediaException$Type;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 196
    .local v1, "errString":Ljava/lang/String;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/media/MediaException;->getMessage()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/media/MediaException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 197
    :cond_0
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/media/MediaException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/media/MediaException;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 198
    :cond_1
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/media/MediaException;
    return-object v0
.end method
