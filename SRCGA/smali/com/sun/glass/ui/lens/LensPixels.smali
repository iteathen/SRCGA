.class final Lcom/sun/glass/ui/lens/LensPixels;
.super Lcom/sun/glass/ui/Pixels;
.source "LensPixels.java"


# direct methods
.method protected constructor <init>(IILjava/nio/ByteBuffer;)V
    .locals 8

    .prologue
    .line 36
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/lens/LensPixels;
    move v1, p1

    .local v1, "width":I
    move v2, p2

    .local v2, "height":I
    move-object v3, p3

    .local v3, "data":Ljava/nio/ByteBuffer;
    move-object v4, v0

    move v5, v1

    move v6, v2

    move-object v7, v3

    invoke-direct {v4, v5, v6, v7}, Lcom/sun/glass/ui/Pixels;-><init>(IILjava/nio/ByteBuffer;)V

    .line 37
    return-void
.end method

.method protected constructor <init>(IILjava/nio/IntBuffer;)V
    .locals 8

    .prologue
    .line 40
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/lens/LensPixels;
    move v1, p1

    .local v1, "width":I
    move v2, p2

    .local v2, "height":I
    move-object v3, p3

    .local v3, "data":Ljava/nio/IntBuffer;
    move-object v4, v0

    move v5, v1

    move v6, v2

    move-object v7, v3

    invoke-direct {v4, v5, v6, v7}, Lcom/sun/glass/ui/Pixels;-><init>(IILjava/nio/IntBuffer;)V

    .line 41
    return-void
.end method

.method protected constructor <init>(IILjava/nio/IntBuffer;F)V
    .locals 10

    .prologue
    .line 44
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/lens/LensPixels;
    move v1, p1

    .local v1, "width":I
    move v2, p2

    .local v2, "height":I
    move-object v3, p3

    .local v3, "data":Ljava/nio/IntBuffer;
    move v4, p4

    .local v4, "scale":F
    move-object v5, v0

    move v6, v1

    move v7, v2

    move-object v8, v3

    move v9, v4

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/sun/glass/ui/Pixels;-><init>(IILjava/nio/IntBuffer;F)V

    .line 45
    return-void
.end method

.method private native _copyPixels(Ljava/nio/Buffer;Ljava/nio/Buffer;I)V
.end method

.method static getNativeFormat_impl()I
    .locals 2

    .prologue
    .line 48
    invoke-static {}, Lcom/sun/glass/ui/lens/LensLogger;->getLogger()Lsun/util/logging/PlatformLogger;

    move-result-object v0

    const-string v1, "Querying native format"

    invoke-virtual {v0, v1}, Lsun/util/logging/PlatformLogger;->config(Ljava/lang/String;)V

    .line 51
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method protected _attachByte(JIILjava/nio/ByteBuffer;[BI)V
    .locals 13

    .prologue
    .line 91
    move-object v1, p0

    .local v1, "this":Lcom/sun/glass/ui/lens/LensPixels;
    move-wide v2, p1

    .local v2, "ptr":J
    move/from16 v4, p3

    .local v4, "w":I
    move/from16 v5, p4

    .local v5, "h":I
    move-object/from16 v6, p5

    .local v6, "bytes":Ljava/nio/ByteBuffer;
    move-object/from16 v7, p6

    .local v7, "array":[B
    move/from16 v8, p7

    .local v8, "offset":I
    invoke-static {}, Lcom/sun/glass/ui/lens/LensLogger;->getLogger()Lsun/util/logging/PlatformLogger;

    move-result-object v9

    const-string v10, "Not implemented"

    invoke-virtual {v9, v10}, Lsun/util/logging/PlatformLogger;->severe(Ljava/lang/String;)V

    .line 92
    new-instance v9, Ljava/lang/UnsupportedOperationException;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    const-string v11, "not implmented"

    invoke-direct {v10, v11}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v9
.end method

.method protected _attachInt(JIILjava/nio/IntBuffer;[II)V
    .locals 13

    .prologue
    .line 85
    move-object v1, p0

    .local v1, "this":Lcom/sun/glass/ui/lens/LensPixels;
    move-wide v2, p1

    .local v2, "nativeWindowPointer":J
    move/from16 v4, p3

    .local v4, "w":I
    move/from16 v5, p4

    .local v5, "h":I
    move-object/from16 v6, p5

    .local v6, "ints":Ljava/nio/IntBuffer;
    move-object/from16 v7, p6

    .local v7, "array":[I
    move/from16 v8, p7

    .local v8, "offset":I
    invoke-static {}, Lcom/sun/glass/ui/lens/LensLogger;->getLogger()Lsun/util/logging/PlatformLogger;

    move-result-object v9

    const-string v10, "Not implemented"

    invoke-virtual {v9, v10}, Lsun/util/logging/PlatformLogger;->severe(Ljava/lang/String;)V

    .line 86
    new-instance v9, Ljava/lang/UnsupportedOperationException;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    const-string v11, "not implmented"

    invoke-direct {v10, v11}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v9
.end method

.method protected _fillDirectByteBuffer(Ljava/nio/ByteBuffer;)V
    .locals 9

    .prologue
    .line 57
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/lens/LensPixels;
    move-object v1, p1

    .local v1, "bb":Ljava/nio/ByteBuffer;
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/glass/ui/lens/LensPixels;->bytes:Ljava/nio/ByteBuffer;

    if-eqz v4, :cond_1

    .line 58
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/glass/ui/lens/LensPixels;->bytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    move-result-object v4

    .line 59
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/glass/ui/lens/LensPixels;->bytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 60
    move-object v4, v0

    move-object v5, v1

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/glass/ui/lens/LensPixels;->bytes:Ljava/nio/ByteBuffer;

    move-object v7, v0

    invoke-virtual {v7}, Lcom/sun/glass/ui/lens/LensPixels;->getWidth()I

    move-result v7

    move-object v8, v0

    invoke-virtual {v8}, Lcom/sun/glass/ui/lens/LensPixels;->getHeight()I

    move-result v8

    mul-int/2addr v7, v8

    invoke-direct {v4, v5, v6, v7}, Lcom/sun/glass/ui/lens/LensPixels;->_copyPixels(Ljava/nio/Buffer;Ljava/nio/Buffer;I)V

    .line 64
    :goto_0
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/glass/ui/lens/LensPixels;->bytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    move-result-object v4

    .line 80
    :goto_1
    move-object v4, v1

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    move-result-object v4

    .line 81
    return-void

    .line 62
    :cond_0
    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/glass/ui/lens/LensPixels;->bytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v4

    goto :goto_0

    .line 66
    :cond_1
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/glass/ui/lens/LensPixels;->ints:Ljava/nio/IntBuffer;

    invoke-virtual {v4}, Ljava/nio/IntBuffer;->rewind()Ljava/nio/Buffer;

    move-result-object v4

    .line 67
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/glass/ui/lens/LensPixels;->ints:Ljava/nio/IntBuffer;

    invoke-virtual {v4}, Ljava/nio/IntBuffer;->isDirect()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 68
    move-object v4, v0

    move-object v5, v1

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/glass/ui/lens/LensPixels;->ints:Ljava/nio/IntBuffer;

    move-object v7, v0

    invoke-virtual {v7}, Lcom/sun/glass/ui/lens/LensPixels;->getWidth()I

    move-result v7

    move-object v8, v0

    invoke-virtual {v8}, Lcom/sun/glass/ui/lens/LensPixels;->getHeight()I

    move-result v8

    mul-int/2addr v7, v8

    invoke-direct {v4, v5, v6, v7}, Lcom/sun/glass/ui/lens/LensPixels;->_copyPixels(Ljava/nio/Buffer;Ljava/nio/Buffer;I)V

    .line 78
    :cond_2
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/glass/ui/lens/LensPixels;->ints:Ljava/nio/IntBuffer;

    invoke-virtual {v4}, Ljava/nio/IntBuffer;->rewind()Ljava/nio/Buffer;

    move-result-object v4

    goto :goto_1

    .line 70
    :cond_3
    const/4 v4, 0x0

    move v2, v4

    .local v2, "i":I
    :goto_2
    move v4, v2

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/glass/ui/lens/LensPixels;->ints:Ljava/nio/IntBuffer;

    invoke-virtual {v5}, Ljava/nio/IntBuffer;->capacity()I

    move-result v5

    if-ge v4, v5, :cond_2

    .line 71
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/glass/ui/lens/LensPixels;->ints:Ljava/nio/IntBuffer;

    invoke-virtual {v4}, Ljava/nio/IntBuffer;->get()I

    move-result v4

    move v3, v4

    .line 72
    .local v3, "data":I
    move-object v4, v1

    move v5, v3

    const/16 v6, 0xff

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 73
    move-object v4, v1

    move v5, v3

    const/16 v6, 0x8

    shr-int/lit8 v5, v5, 0x8

    const/16 v6, 0xff

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 74
    move-object v4, v1

    move v5, v3

    const/16 v6, 0x10

    shr-int/lit8 v5, v5, 0x10

    const/16 v6, 0xff

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 75
    move-object v4, v1

    move v5, v3

    const/16 v6, 0x18

    shr-int/lit8 v5, v5, 0x18

    const/16 v6, 0xff

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 70
    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method
