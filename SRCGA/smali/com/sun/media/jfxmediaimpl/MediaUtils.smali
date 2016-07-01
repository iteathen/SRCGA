.class public Lcom/sun/media/jfxmediaimpl/MediaUtils;
.super Ljava/lang/Object;
.source "MediaUtils.java"


# static fields
.field public static final CONTENT_TYPE_AIFF:Ljava/lang/String; = "audio/x-aiff"

.field public static final CONTENT_TYPE_FLV:Ljava/lang/String; = "video/x-flv"

.field public static final CONTENT_TYPE_JFX:Ljava/lang/String; = "video/x-javafx"

.field public static final CONTENT_TYPE_M3U:Ljava/lang/String; = "audio/mpegurl"

.field public static final CONTENT_TYPE_M3U8:Ljava/lang/String; = "application/vnd.apple.mpegurl"

.field public static final CONTENT_TYPE_M4A:Ljava/lang/String; = "audio/x-m4a"

.field public static final CONTENT_TYPE_M4V:Ljava/lang/String; = "video/x-m4v"

.field public static final CONTENT_TYPE_MP3:Ljava/lang/String; = "audio/mp3"

.field public static final CONTENT_TYPE_MP4:Ljava/lang/String; = "video/mp4"

.field public static final CONTENT_TYPE_MPA:Ljava/lang/String; = "audio/mpeg"

.field public static final CONTENT_TYPE_WAV:Ljava/lang/String; = "audio/x-wav"

.field private static final FILE_TYPE_AIF:Ljava/lang/String; = "aif"

.field private static final FILE_TYPE_AIFF:Ljava/lang/String; = "aiff"

.field private static final FILE_TYPE_FLV:Ljava/lang/String; = "flv"

.field private static final FILE_TYPE_FXM:Ljava/lang/String; = "fxm"

.field private static final FILE_TYPE_M3U:Ljava/lang/String; = "m3u"

.field private static final FILE_TYPE_M3U8:Ljava/lang/String; = "m3u8"

.field private static final FILE_TYPE_M4A:Ljava/lang/String; = "m4a"

.field private static final FILE_TYPE_M4V:Ljava/lang/String; = "m4v"

.field private static final FILE_TYPE_MP4:Ljava/lang/String; = "mp4"

.field private static final FILE_TYPE_MPA:Ljava/lang/String; = "mp3"

.field private static final FILE_TYPE_WAV:Ljava/lang/String; = "wav"

.field public static final MAX_FILE_SIGNATURE_LENGTH:I = 0x16

.field static final NATIVE_MEDIA_ERROR_FORMAT:Ljava/lang/String; = "Internal media error: %d"

.field static final NATIVE_MEDIA_WARNING_FORMAT:Ljava/lang/String; = "Internal media warning: %d"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 40
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/MediaUtils;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static error(Ljava/lang/Object;ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 13

    .prologue
    .line 230
    move-object v0, p0

    .local v0, "source":Ljava/lang/Object;
    move v1, p1

    .local v1, "errCode":I
    move-object v2, p2

    .local v2, "message":Ljava/lang/String;
    move-object/from16 v3, p3

    .local v3, "cause":Ljava/lang/Throwable;
    move-object v7, v3

    if-eqz v7, :cond_0

    .line 231
    move-object v7, v3

    invoke-virtual {v7}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v7

    move-object v4, v7

    .line 232
    .local v4, "stackTrace":[Ljava/lang/StackTraceElement;
    move-object v7, v4

    if-eqz v7, :cond_0

    move-object v7, v4

    array-length v7, v7

    if-lez v7, :cond_0

    .line 233
    move-object v7, v4

    const/4 v8, 0x0

    aget-object v7, v7, v8

    move-object v5, v7

    .line 234
    .local v5, "trace":Ljava/lang/StackTraceElement;
    const/4 v7, 0x4

    move-object v8, v5

    .line 235
    invoke-virtual {v8}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v8

    move-object v9, v5

    invoke-virtual {v9}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    move-object v12, v10

    move-object v10, v12

    move-object v11, v12

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "( "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object v11, v5

    .line 236
    invoke-virtual {v11}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ") "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object v11, v2

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 234
    invoke-static {v7, v8, v9, v10}, Lcom/sun/media/jfxmedia/logging/Logger;->logMsg(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    .end local v4    # "stackTrace":[Ljava/lang/StackTraceElement;
    .end local v5    # "trace":Ljava/lang/StackTraceElement;
    :cond_0
    invoke-static {}, Lcom/sun/media/jfxmediaimpl/NativeMediaManager;->getDefaultInstance()Lcom/sun/media/jfxmediaimpl/NativeMediaManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sun/media/jfxmediaimpl/NativeMediaManager;->getMediaErrorListeners()Ljava/util/List;

    move-result-object v7

    move-object v4, v7

    .line 243
    .local v4, "listeners":Ljava/util/List;, "Ljava/util/List<Ljava/lang/ref/WeakReference<Lcom/sun/media/jfxmedia/events/MediaErrorListener;>;>;"
    move-object v7, v4

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_3

    .line 244
    move-object v7, v4

    invoke-interface {v7}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v7

    move-object v5, v7

    .local v5, "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Ljava/lang/ref/WeakReference<Lcom/sun/media/jfxmedia/events/MediaErrorListener;>;>;"
    :goto_0
    move-object v7, v5

    invoke-interface {v7}, Ljava/util/ListIterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 245
    move-object v7, v5

    invoke-interface {v7}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/ref/WeakReference;

    invoke-virtual {v7}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sun/media/jfxmedia/events/MediaErrorListener;

    move-object v6, v7

    .line 246
    .local v6, "l":Lcom/sun/media/jfxmedia/events/MediaErrorListener;
    move-object v7, v6

    if-eqz v7, :cond_1

    .line 247
    move-object v7, v6

    move-object v8, v0

    move v9, v1

    move-object v10, v2

    invoke-interface {v7, v8, v9, v10}, Lcom/sun/media/jfxmedia/events/MediaErrorListener;->onError(Ljava/lang/Object;ILjava/lang/String;)V

    .line 251
    :goto_1
    goto :goto_0

    .line 249
    :cond_1
    move-object v7, v5

    invoke-interface {v7}, Ljava/util/ListIterator;->remove()V

    goto :goto_1

    .line 251
    .line 257
    .end local v6    # "l":Lcom/sun/media/jfxmedia/events/MediaErrorListener;
    :cond_2
    return-void

    .line 253
    .end local v5    # "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Ljava/lang/ref/WeakReference<Lcom/sun/media/jfxmedia/events/MediaErrorListener;>;>;"
    :cond_3
    move-object v7, v3

    instance-of v7, v7, Lcom/sun/media/jfxmedia/MediaException;

    if-eqz v7, :cond_4

    move-object v7, v3

    check-cast v7, Lcom/sun/media/jfxmedia/MediaException;

    :goto_2
    move-object v5, v7

    .line 255
    .local v5, "e":Lcom/sun/media/jfxmedia/MediaException;
    move-object v7, v5

    throw v7

    .line 253
    .end local v5    # "e":Lcom/sun/media/jfxmedia/MediaException;
    :cond_4
    new-instance v7, Lcom/sun/media/jfxmedia/MediaException;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    move-object v9, v2

    move-object v10, v3

    invoke-direct {v8, v9, v10}, Lcom/sun/media/jfxmedia/MediaException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method public static fileSignatureToContentType([BI)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/media/jfxmedia/MediaException;
        }
    .end annotation

    .prologue
    .line 86
    move-object v0, p0

    .local v0, "buf":[B
    move v1, p1

    .local v1, "size":I
    const-string v3, "application/octet-stream"

    move-object v2, v3

    .line 88
    .local v2, "contentType":Ljava/lang/String;
    move v3, v1

    const/16 v4, 0x16

    if-ge v3, v4, :cond_0

    .line 89
    new-instance v3, Lcom/sun/media/jfxmedia/MediaException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string v5, "Empty signature!"

    invoke-direct {v4, v5}, Lcom/sun/media/jfxmedia/MediaException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 90
    :cond_0
    move-object v3, v0

    array-length v3, v3

    const/16 v4, 0x16

    if-ge v3, v4, :cond_1

    .line 91
    move-object v3, v2

    move-object v0, v3

    .line 162
    .end local v0    # "buf":[B
    :goto_0
    return-object v0

    .line 92
    .restart local v0    # "buf":[B
    :cond_1
    move-object v3, v0

    const/4 v4, 0x0

    aget-byte v3, v3, v4

    const/16 v4, 0xff

    and-int/lit16 v3, v3, 0xff

    const/16 v4, 0x46

    if-ne v3, v4, :cond_3

    move-object v3, v0

    const/4 v4, 0x1

    aget-byte v3, v3, v4

    const/16 v4, 0xff

    and-int/lit16 v3, v3, 0xff

    const/16 v4, 0x4c

    if-ne v3, v4, :cond_3

    move-object v3, v0

    const/4 v4, 0x2

    aget-byte v3, v3, v4

    const/16 v4, 0xff

    and-int/lit16 v3, v3, 0xff

    const/16 v4, 0x56

    if-ne v3, v4, :cond_3

    .line 95
    const-string v3, "video/x-javafx"

    move-object v2, v3

    .line 162
    :cond_2
    :goto_1
    move-object v3, v2

    move-object v0, v3

    goto :goto_0

    .line 96
    :cond_3
    move-object v3, v0

    const/4 v4, 0x0

    aget-byte v3, v3, v4

    const/16 v4, 0xff

    and-int/lit16 v3, v3, 0xff

    const/16 v4, 0x18

    shl-int/lit8 v3, v3, 0x18

    move-object v4, v0

    const/4 v5, 0x1

    aget-byte v4, v4, v5

    const/16 v5, 0xff

    and-int/lit16 v4, v4, 0xff

    const/16 v5, 0x10

    shl-int/lit8 v4, v4, 0x10

    or-int/2addr v3, v4

    move-object v4, v0

    const/4 v5, 0x2

    aget-byte v4, v4, v5

    const/16 v5, 0xff

    and-int/lit16 v4, v4, 0xff

    const/16 v5, 0x8

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v3, v4

    move-object v4, v0

    const/4 v5, 0x3

    aget-byte v4, v4, v5

    const/16 v5, 0xff

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v3, v4

    const v4, 0x52494646

    if-ne v3, v4, :cond_7

    move-object v3, v0

    const/16 v4, 0x8

    aget-byte v3, v3, v4

    const/16 v4, 0xff

    and-int/lit16 v3, v3, 0xff

    const/16 v4, 0x18

    shl-int/lit8 v3, v3, 0x18

    move-object v4, v0

    const/16 v5, 0x9

    aget-byte v4, v4, v5

    const/16 v5, 0xff

    and-int/lit16 v4, v4, 0xff

    const/16 v5, 0x10

    shl-int/lit8 v4, v4, 0x10

    or-int/2addr v3, v4

    move-object v4, v0

    const/16 v5, 0xa

    aget-byte v4, v4, v5

    const/16 v5, 0xff

    and-int/lit16 v4, v4, 0xff

    const/16 v5, 0x8

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v3, v4

    move-object v4, v0

    const/16 v5, 0xb

    aget-byte v4, v4, v5

    const/16 v5, 0xff

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v3, v4

    const v4, 0x57415645

    if-ne v3, v4, :cond_7

    move-object v3, v0

    const/16 v4, 0xc

    aget-byte v3, v3, v4

    const/16 v4, 0xff

    and-int/lit16 v3, v3, 0xff

    const/16 v4, 0x18

    shl-int/lit8 v3, v3, 0x18

    move-object v4, v0

    const/16 v5, 0xd

    aget-byte v4, v4, v5

    const/16 v5, 0xff

    and-int/lit16 v4, v4, 0xff

    const/16 v5, 0x10

    shl-int/lit8 v4, v4, 0x10

    or-int/2addr v3, v4

    move-object v4, v0

    const/16 v5, 0xe

    aget-byte v4, v4, v5

    const/16 v5, 0xff

    and-int/lit16 v4, v4, 0xff

    const/16 v5, 0x8

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v3, v4

    move-object v4, v0

    const/16 v5, 0xf

    aget-byte v4, v4, v5

    const/16 v5, 0xff

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v3, v4

    const v4, 0x666d7420

    if-ne v3, v4, :cond_7

    .line 108
    move-object v3, v0

    const/16 v4, 0x14

    aget-byte v3, v3, v4

    const/16 v4, 0xff

    and-int/lit16 v3, v3, 0xff

    const/4 v4, 0x1

    if-ne v3, v4, :cond_4

    move-object v3, v0

    const/16 v4, 0x15

    aget-byte v3, v3, v4

    const/16 v4, 0xff

    and-int/lit16 v3, v3, 0xff

    if-eqz v3, :cond_5

    :cond_4
    move-object v3, v0

    const/16 v4, 0x14

    aget-byte v3, v3, v4

    const/16 v4, 0xff

    and-int/lit16 v3, v3, 0xff

    const/4 v4, 0x3

    if-ne v3, v4, :cond_6

    move-object v3, v0

    const/16 v4, 0x15

    aget-byte v3, v3, v4

    const/16 v4, 0xff

    and-int/lit16 v3, v3, 0xff

    if-nez v3, :cond_6

    .line 109
    :cond_5
    const-string v3, "audio/x-wav"

    move-object v2, v3

    goto/16 :goto_1

    .line 111
    :cond_6
    new-instance v3, Lcom/sun/media/jfxmedia/MediaException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string v5, "Compressed WAVE is not supported!"

    invoke-direct {v4, v5}, Lcom/sun/media/jfxmedia/MediaException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 113
    :cond_7
    move-object v3, v0

    const/4 v4, 0x0

    aget-byte v3, v3, v4

    const/16 v4, 0xff

    and-int/lit16 v3, v3, 0xff

    const/16 v4, 0x18

    shl-int/lit8 v3, v3, 0x18

    move-object v4, v0

    const/4 v5, 0x1

    aget-byte v4, v4, v5

    const/16 v5, 0xff

    and-int/lit16 v4, v4, 0xff

    const/16 v5, 0x10

    shl-int/lit8 v4, v4, 0x10

    or-int/2addr v3, v4

    move-object v4, v0

    const/4 v5, 0x2

    aget-byte v4, v4, v5

    const/16 v5, 0xff

    and-int/lit16 v4, v4, 0xff

    const/16 v5, 0x8

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v3, v4

    move-object v4, v0

    const/4 v5, 0x3

    aget-byte v4, v4, v5

    const/16 v5, 0xff

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v3, v4

    const v4, 0x52494646

    if-ne v3, v4, :cond_8

    move-object v3, v0

    const/16 v4, 0x8

    aget-byte v3, v3, v4

    const/16 v4, 0xff

    and-int/lit16 v3, v3, 0xff

    const/16 v4, 0x18

    shl-int/lit8 v3, v3, 0x18

    move-object v4, v0

    const/16 v5, 0x9

    aget-byte v4, v4, v5

    const/16 v5, 0xff

    and-int/lit16 v4, v4, 0xff

    const/16 v5, 0x10

    shl-int/lit8 v4, v4, 0x10

    or-int/2addr v3, v4

    move-object v4, v0

    const/16 v5, 0xa

    aget-byte v4, v4, v5

    const/16 v5, 0xff

    and-int/lit16 v4, v4, 0xff

    const/16 v5, 0x8

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v3, v4

    move-object v4, v0

    const/16 v5, 0xb

    aget-byte v4, v4, v5

    const/16 v5, 0xff

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v3, v4

    const v4, 0x57415645

    if-ne v3, v4, :cond_8

    .line 122
    const-string v3, "audio/x-wav"

    move-object v2, v3

    goto/16 :goto_1

    .line 123
    :cond_8
    move-object v3, v0

    const/4 v4, 0x0

    aget-byte v3, v3, v4

    const/16 v4, 0xff

    and-int/lit16 v3, v3, 0xff

    const/16 v4, 0x18

    shl-int/lit8 v3, v3, 0x18

    move-object v4, v0

    const/4 v5, 0x1

    aget-byte v4, v4, v5

    const/16 v5, 0xff

    and-int/lit16 v4, v4, 0xff

    const/16 v5, 0x10

    shl-int/lit8 v4, v4, 0x10

    or-int/2addr v3, v4

    move-object v4, v0

    const/4 v5, 0x2

    aget-byte v4, v4, v5

    const/16 v5, 0xff

    and-int/lit16 v4, v4, 0xff

    const/16 v5, 0x8

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v3, v4

    move-object v4, v0

    const/4 v5, 0x3

    aget-byte v4, v4, v5

    const/16 v5, 0xff

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v3, v4

    const v4, 0x464f524d

    if-ne v3, v4, :cond_9

    move-object v3, v0

    const/16 v4, 0x8

    aget-byte v3, v3, v4

    const/16 v4, 0xff

    and-int/lit16 v3, v3, 0xff

    const/16 v4, 0x18

    shl-int/lit8 v3, v3, 0x18

    move-object v4, v0

    const/16 v5, 0x9

    aget-byte v4, v4, v5

    const/16 v5, 0xff

    and-int/lit16 v4, v4, 0xff

    const/16 v5, 0x10

    shl-int/lit8 v4, v4, 0x10

    or-int/2addr v3, v4

    move-object v4, v0

    const/16 v5, 0xa

    aget-byte v4, v4, v5

    const/16 v5, 0xff

    and-int/lit16 v4, v4, 0xff

    const/16 v5, 0x8

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v3, v4

    move-object v4, v0

    const/16 v5, 0xb

    aget-byte v4, v4, v5

    const/16 v5, 0xff

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v3, v4

    const v4, 0x41494646

    if-ne v3, v4, :cond_9

    move-object v3, v0

    const/16 v4, 0xc

    aget-byte v3, v3, v4

    const/16 v4, 0xff

    and-int/lit16 v3, v3, 0xff

    const/16 v4, 0x18

    shl-int/lit8 v3, v3, 0x18

    move-object v4, v0

    const/16 v5, 0xd

    aget-byte v4, v4, v5

    const/16 v5, 0xff

    and-int/lit16 v4, v4, 0xff

    const/16 v5, 0x10

    shl-int/lit8 v4, v4, 0x10

    or-int/2addr v3, v4

    move-object v4, v0

    const/16 v5, 0xe

    aget-byte v4, v4, v5

    const/16 v5, 0xff

    and-int/lit16 v4, v4, 0xff

    const/16 v5, 0x8

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v3, v4

    move-object v4, v0

    const/16 v5, 0xf

    aget-byte v4, v4, v5

    const/16 v5, 0xff

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v3, v4

    const v4, 0x434f4d4d

    if-ne v3, v4, :cond_9

    .line 135
    const-string v3, "audio/x-aiff"

    move-object v2, v3

    goto/16 :goto_1

    .line 136
    :cond_9
    move-object v3, v0

    const/4 v4, 0x0

    aget-byte v3, v3, v4

    const/16 v4, 0xff

    and-int/lit16 v3, v3, 0xff

    const/16 v4, 0x49

    if-ne v3, v4, :cond_a

    move-object v3, v0

    const/4 v4, 0x1

    aget-byte v3, v3, v4

    const/16 v4, 0xff

    and-int/lit16 v3, v3, 0xff

    const/16 v4, 0x44

    if-ne v3, v4, :cond_a

    move-object v3, v0

    const/4 v4, 0x2

    aget-byte v3, v3, v4

    const/16 v4, 0xff

    and-int/lit16 v3, v3, 0xff

    const/16 v4, 0x33

    if-ne v3, v4, :cond_a

    .line 139
    const-string v3, "audio/mpeg"

    move-object v2, v3

    goto/16 :goto_1

    .line 140
    :cond_a
    move-object v3, v0

    const/4 v4, 0x0

    aget-byte v3, v3, v4

    const/16 v4, 0xff

    and-int/lit16 v3, v3, 0xff

    const/16 v4, 0xff

    if-ne v3, v4, :cond_b

    move-object v3, v0

    const/4 v4, 0x1

    aget-byte v3, v3, v4

    const/16 v4, 0xe0

    and-int/lit16 v3, v3, 0xe0

    const/16 v4, 0xe0

    if-ne v3, v4, :cond_b

    move-object v3, v0

    const/4 v4, 0x2

    aget-byte v3, v3, v4

    const/16 v4, 0x18

    and-int/lit8 v3, v3, 0x18

    const/16 v4, 0x8

    if-eq v3, v4, :cond_b

    move-object v3, v0

    const/4 v4, 0x3

    aget-byte v3, v3, v4

    const/4 v4, 0x6

    and-int/lit8 v3, v3, 0x6

    if-eqz v3, :cond_b

    .line 143
    const-string v3, "audio/mpeg"

    move-object v2, v3

    goto/16 :goto_1

    .line 144
    :cond_b
    move-object v3, v0

    const/4 v4, 0x4

    aget-byte v3, v3, v4

    const/16 v4, 0xff

    and-int/lit16 v3, v3, 0xff

    const/16 v4, 0x18

    shl-int/lit8 v3, v3, 0x18

    move-object v4, v0

    const/4 v5, 0x5

    aget-byte v4, v4, v5

    const/16 v5, 0xff

    and-int/lit16 v4, v4, 0xff

    const/16 v5, 0x10

    shl-int/lit8 v4, v4, 0x10

    or-int/2addr v3, v4

    move-object v4, v0

    const/4 v5, 0x6

    aget-byte v4, v4, v5

    const/16 v5, 0xff

    and-int/lit16 v4, v4, 0xff

    const/16 v5, 0x8

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v3, v4

    move-object v4, v0

    const/4 v5, 0x7

    aget-byte v4, v4, v5

    const/16 v5, 0xff

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v3, v4

    const v4, 0x66747970

    if-ne v3, v4, :cond_10

    .line 148
    move-object v3, v0

    const/16 v4, 0x8

    aget-byte v3, v3, v4

    const/16 v4, 0xff

    and-int/lit16 v3, v3, 0xff

    const/16 v4, 0x4d

    if-ne v3, v4, :cond_c

    move-object v3, v0

    const/16 v4, 0x9

    aget-byte v3, v3, v4

    const/16 v4, 0xff

    and-int/lit16 v3, v3, 0xff

    const/16 v4, 0x34

    if-ne v3, v4, :cond_c

    move-object v3, v0

    const/16 v4, 0xa

    aget-byte v3, v3, v4

    const/16 v4, 0xff

    and-int/lit16 v3, v3, 0xff

    const/16 v4, 0x41

    if-ne v3, v4, :cond_c

    move-object v3, v0

    const/16 v4, 0xb

    aget-byte v3, v3, v4

    const/16 v4, 0xff

    and-int/lit16 v3, v3, 0xff

    const/16 v4, 0x20

    if-ne v3, v4, :cond_c

    .line 149
    const-string v3, "audio/x-m4a"

    move-object v2, v3

    goto/16 :goto_1

    .line 150
    :cond_c
    move-object v3, v0

    const/16 v4, 0x8

    aget-byte v3, v3, v4

    const/16 v4, 0xff

    and-int/lit16 v3, v3, 0xff

    const/16 v4, 0x4d

    if-ne v3, v4, :cond_d

    move-object v3, v0

    const/16 v4, 0x9

    aget-byte v3, v3, v4

    const/16 v4, 0xff

    and-int/lit16 v3, v3, 0xff

    const/16 v4, 0x34

    if-ne v3, v4, :cond_d

    move-object v3, v0

    const/16 v4, 0xa

    aget-byte v3, v3, v4

    const/16 v4, 0xff

    and-int/lit16 v3, v3, 0xff

    const/16 v4, 0x56

    if-ne v3, v4, :cond_d

    move-object v3, v0

    const/16 v4, 0xb

    aget-byte v3, v3, v4

    const/16 v4, 0xff

    and-int/lit16 v3, v3, 0xff

    const/16 v4, 0x20

    if-ne v3, v4, :cond_d

    .line 151
    const-string v3, "video/x-m4v"

    move-object v2, v3

    goto/16 :goto_1

    .line 152
    :cond_d
    move-object v3, v0

    const/16 v4, 0x8

    aget-byte v3, v3, v4

    const/16 v4, 0xff

    and-int/lit16 v3, v3, 0xff

    const/16 v4, 0x6d

    if-ne v3, v4, :cond_e

    move-object v3, v0

    const/16 v4, 0x9

    aget-byte v3, v3, v4

    const/16 v4, 0xff

    and-int/lit16 v3, v3, 0xff

    const/16 v4, 0x70

    if-ne v3, v4, :cond_e

    move-object v3, v0

    const/16 v4, 0xa

    aget-byte v3, v3, v4

    const/16 v4, 0xff

    and-int/lit16 v3, v3, 0xff

    const/16 v4, 0x34

    if-ne v3, v4, :cond_e

    move-object v3, v0

    const/16 v4, 0xb

    aget-byte v3, v3, v4

    const/16 v4, 0xff

    and-int/lit16 v3, v3, 0xff

    const/16 v4, 0x32

    if-ne v3, v4, :cond_e

    .line 153
    const-string v3, "video/mp4"

    move-object v2, v3

    goto/16 :goto_1

    .line 154
    :cond_e
    move-object v3, v0

    const/16 v4, 0x8

    aget-byte v3, v3, v4

    const/16 v4, 0xff

    and-int/lit16 v3, v3, 0xff

    const/16 v4, 0x69

    if-ne v3, v4, :cond_f

    move-object v3, v0

    const/16 v4, 0x9

    aget-byte v3, v3, v4

    const/16 v4, 0xff

    and-int/lit16 v3, v3, 0xff

    const/16 v4, 0x73

    if-ne v3, v4, :cond_f

    move-object v3, v0

    const/16 v4, 0xa

    aget-byte v3, v3, v4

    const/16 v4, 0xff

    and-int/lit16 v3, v3, 0xff

    const/16 v4, 0x6f

    if-ne v3, v4, :cond_f

    move-object v3, v0

    const/16 v4, 0xb

    aget-byte v3, v3, v4

    const/16 v4, 0xff

    and-int/lit16 v3, v3, 0xff

    const/16 v4, 0x6d

    if-ne v3, v4, :cond_f

    .line 155
    const-string v3, "video/mp4"

    move-object v2, v3

    goto/16 :goto_1

    .line 156
    :cond_f
    move-object v3, v0

    const/16 v4, 0x8

    aget-byte v3, v3, v4

    const/16 v4, 0xff

    and-int/lit16 v3, v3, 0xff

    const/16 v4, 0x4d

    if-ne v3, v4, :cond_2

    move-object v3, v0

    const/16 v4, 0x9

    aget-byte v3, v3, v4

    const/16 v4, 0xff

    and-int/lit16 v3, v3, 0xff

    const/16 v4, 0x50

    if-ne v3, v4, :cond_2

    move-object v3, v0

    const/16 v4, 0xa

    aget-byte v3, v3, v4

    const/16 v4, 0xff

    and-int/lit16 v3, v3, 0xff

    const/16 v4, 0x34

    if-ne v3, v4, :cond_2

    move-object v3, v0

    const/16 v4, 0xb

    aget-byte v3, v3, v4

    const/16 v4, 0xff

    and-int/lit16 v3, v3, 0xff

    const/16 v4, 0x20

    if-ne v3, v4, :cond_2

    .line 157
    const-string v3, "video/mp4"

    move-object v2, v3

    goto/16 :goto_1

    .line 159
    :cond_10
    new-instance v3, Lcom/sun/media/jfxmedia/MediaException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string v5, "Unrecognized file signature!"

    invoke-direct {v4, v5}, Lcom/sun/media/jfxmedia/MediaException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static filenameToContentType(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .prologue
    .line 172
    move-object v0, p0

    .local v0, "filename":Ljava/lang/String;
    const-string v4, "application/octet-stream"

    move-object v1, v4

    .line 174
    .local v1, "contentType":Ljava/lang/String;
    move-object v4, v0

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    move v2, v4

    .line 176
    .local v2, "dotIndex":I
    move v4, v2

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    .line 177
    move-object v4, v0

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    move v5, v2

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    .line 179
    .local v3, "extension":Ljava/lang/String;
    move-object v4, v3

    const-string v5, "aif"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    move-object v4, v3

    const-string v5, "aiff"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 180
    :cond_0
    const-string v4, "audio/x-aiff"

    move-object v1, v4

    .line 200
    .end local v3    # "extension":Ljava/lang/String;
    :cond_1
    :goto_0
    move-object v4, v1

    move-object v0, v4

    .end local v0    # "filename":Ljava/lang/String;
    return-object v0

    .line 181
    .restart local v0    # "filename":Ljava/lang/String;
    .restart local v3    # "extension":Ljava/lang/String;
    :cond_2
    move-object v4, v3

    const-string v5, "flv"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    move-object v4, v3

    const-string v5, "fxm"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 182
    :cond_3
    const-string v4, "video/x-javafx"

    move-object v1, v4

    goto :goto_0

    .line 183
    :cond_4
    move-object v4, v3

    const-string v5, "mp3"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 184
    const-string v4, "audio/mpeg"

    move-object v1, v4

    goto :goto_0

    .line 185
    :cond_5
    move-object v4, v3

    const-string v5, "wav"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 186
    const-string v4, "audio/x-wav"

    move-object v1, v4

    goto :goto_0

    .line 187
    :cond_6
    move-object v4, v3

    const-string v5, "mp4"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 188
    const-string v4, "video/mp4"

    move-object v1, v4

    goto :goto_0

    .line 189
    :cond_7
    move-object v4, v3

    const-string v5, "m4a"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 190
    const-string v4, "audio/x-m4a"

    move-object v1, v4

    goto :goto_0

    .line 191
    :cond_8
    move-object v4, v3

    const-string v5, "m4v"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 192
    const-string v4, "video/x-m4v"

    move-object v1, v4

    goto :goto_0

    .line 193
    :cond_9
    move-object v4, v3

    const-string v5, "m3u8"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 194
    const-string v4, "application/vnd.apple.mpegurl"

    move-object v1, v4

    goto :goto_0

    .line 195
    :cond_a
    move-object v4, v3

    const-string v5, "m3u"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 196
    const-string v4, "audio/mpegurl"

    move-object v1, v4

    goto :goto_0
.end method

.method public static nativeError(Ljava/lang/Object;Lcom/sun/media/jfxmedia/MediaError;)V
    .locals 11

    .prologue
    .line 284
    move-object v0, p0

    .local v0, "source":Ljava/lang/Object;
    move-object v1, p1

    .local v1, "error":Lcom/sun/media/jfxmedia/MediaError;
    const/4 v5, 0x4

    move-object v6, v1

    invoke-virtual {v6}, Lcom/sun/media/jfxmedia/MediaError;->description()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sun/media/jfxmedia/logging/Logger;->logMsg(ILjava/lang/String;)V

    .line 288
    invoke-static {}, Lcom/sun/media/jfxmediaimpl/NativeMediaManager;->getDefaultInstance()Lcom/sun/media/jfxmediaimpl/NativeMediaManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sun/media/jfxmediaimpl/NativeMediaManager;->getMediaErrorListeners()Ljava/util/List;

    move-result-object v5

    move-object v2, v5

    .line 289
    .local v2, "listeners":Ljava/util/List;, "Ljava/util/List<Ljava/lang/ref/WeakReference<Lcom/sun/media/jfxmedia/events/MediaErrorListener;>;>;"
    move-object v5, v2

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    .line 290
    move-object v5, v2

    invoke-interface {v5}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v5

    move-object v3, v5

    .local v3, "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Ljava/lang/ref/WeakReference<Lcom/sun/media/jfxmedia/events/MediaErrorListener;>;>;"
    :goto_0
    move-object v5, v3

    invoke-interface {v5}, Ljava/util/ListIterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 291
    move-object v5, v3

    invoke-interface {v5}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sun/media/jfxmedia/events/MediaErrorListener;

    move-object v4, v5

    .line 292
    .local v4, "l":Lcom/sun/media/jfxmedia/events/MediaErrorListener;
    move-object v5, v4

    if-eqz v5, :cond_0

    .line 293
    move-object v5, v4

    move-object v6, v0

    move-object v7, v1

    invoke-virtual {v7}, Lcom/sun/media/jfxmedia/MediaError;->code()I

    move-result v7

    move-object v8, v1

    invoke-virtual {v8}, Lcom/sun/media/jfxmedia/MediaError;->description()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5, v6, v7, v8}, Lcom/sun/media/jfxmedia/events/MediaErrorListener;->onError(Ljava/lang/Object;ILjava/lang/String;)V

    .line 297
    :goto_1
    goto :goto_0

    .line 295
    :cond_0
    move-object v5, v3

    invoke-interface {v5}, Ljava/util/ListIterator;->remove()V

    goto :goto_1

    .line 297
    .line 301
    .end local v4    # "l":Lcom/sun/media/jfxmedia/events/MediaErrorListener;
    :cond_1
    return-void

    .line 299
    .end local v3    # "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Ljava/lang/ref/WeakReference<Lcom/sun/media/jfxmedia/events/MediaErrorListener;>;>;"
    :cond_2
    new-instance v5, Lcom/sun/media/jfxmedia/MediaException;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v1

    invoke-virtual {v7}, Lcom/sun/media/jfxmedia/MediaError;->description()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    move-object v9, v1

    invoke-direct {v6, v7, v8, v9}, Lcom/sun/media/jfxmedia/MediaException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lcom/sun/media/jfxmedia/MediaError;)V

    throw v5
.end method

.method public static nativeWarning(Ljava/lang/Object;ILjava/lang/String;)V
    .locals 10

    .prologue
    .line 266
    move-object v0, p0

    .local v0, "source":Ljava/lang/Object;
    move v1, p1

    .local v1, "warningCode":I
    move-object v2, p2

    .local v2, "warningMessage":Ljava/lang/String;
    const-string v4, "Internal media warning: %d"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    move v8, v1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    .line 268
    .local v3, "message":Ljava/lang/String;
    move-object v4, v2

    if-eqz v4, :cond_0

    .line 269
    new-instance v4, Ljava/lang/StringBuilder;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    .line 273
    :cond_0
    const/4 v4, 0x3

    move-object v5, v3

    invoke-static {v4, v5}, Lcom/sun/media/jfxmedia/logging/Logger;->logMsg(ILjava/lang/String;)V

    .line 274
    return-void
.end method

.method public static warning(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 214
    move-object v0, p0

    .local v0, "source":Ljava/lang/Object;
    move-object v1, p1

    .local v1, "message":Ljava/lang/String;
    move-object v2, v0

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    :goto_0
    move-object v3, v1

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    :goto_1
    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    .line 215
    const/4 v2, 0x3

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object v4, v0

    .line 216
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 215
    invoke-static {v2, v3}, Lcom/sun/media/jfxmedia/logging/Logger;->logMsg(ILjava/lang/String;)V

    .line 218
    :cond_0
    return-void

    .line 214
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method
