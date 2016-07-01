.class Lcom/sun/javafx/tk/quantum/PixelUtils;
.super Ljava/lang/Object;
.source "PixelUtils.java"


# static fields
.field private static supportedFormats:[Lcom/sun/javafx/iio/ImageFormatDescription;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    invoke-static {}, Lcom/sun/javafx/iio/ImageStorage;->getSupportedDescriptions()[Lcom/sun/javafx/iio/ImageFormatDescription;

    move-result-object v0

    sput-object v0, Lcom/sun/javafx/tk/quantum/PixelUtils;->supportedFormats:[Lcom/sun/javafx/iio/ImageFormatDescription;

    .line 46
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 43
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/PixelUtils;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 44
    return-void
.end method

.method public static imageToPixels(Lcom/sun/prism/Image;)Lcom/sun/glass/ui/Pixels;
    .locals 20

    .prologue
    .line 61
    move-object/from16 v0, p0

    .local v0, "image":Lcom/sun/prism/Image;
    move-object v10, v0

    invoke-virtual {v10}, Lcom/sun/prism/Image;->getDataType()Lcom/sun/prism/PixelFormat$DataType;

    move-result-object v10

    move-object v1, v10

    .line 62
    .local v1, "pixelType":Lcom/sun/prism/PixelFormat$DataType;
    invoke-static {}, Lcom/sun/glass/ui/Application;->GetApplication()Lcom/sun/glass/ui/Application;

    move-result-object v10

    move-object v2, v10

    .line 63
    .local v2, "app":Lcom/sun/glass/ui/Application;
    invoke-static {}, Lcom/sun/glass/ui/Pixels;->getNativeFormat()I

    move-result v10

    move v3, v10

    .line 66
    .local v3, "nativeFormat":I
    move-object v10, v1

    sget-object v11, Lcom/sun/prism/PixelFormat$DataType;->BYTE:Lcom/sun/prism/PixelFormat$DataType;

    if-ne v10, v11, :cond_2

    .line 67
    move-object v10, v0

    invoke-virtual {v10}, Lcom/sun/prism/Image;->getPixelBuffer()Ljava/nio/Buffer;

    move-result-object v10

    check-cast v10, Ljava/nio/ByteBuffer;

    move-object v5, v10

    .line 68
    .local v5, "bytes":Ljava/nio/ByteBuffer;
    move-object v10, v0

    invoke-virtual {v10}, Lcom/sun/prism/Image;->getWidth()I

    move-result v10

    move v6, v10

    .line 69
    .local v6, "w":I
    move-object v10, v0

    invoke-virtual {v10}, Lcom/sun/prism/Image;->getHeight()I

    move-result v10

    move v7, v10

    .line 70
    .local v7, "h":I
    move-object v10, v0

    invoke-virtual {v10}, Lcom/sun/prism/Image;->getScanlineStride()I

    move-result v10

    move v8, v10

    .line 72
    .local v8, "scanBytes":I
    move-object v10, v0

    invoke-virtual {v10}, Lcom/sun/prism/Image;->getBytesPerPixelUnit()I

    move-result v10

    const/4 v11, 0x3

    if-ne v10, v11, :cond_1

    .line 73
    move v10, v3

    packed-switch v10, :pswitch_data_0

    .line 93
    new-instance v10, Ljava/lang/IllegalArgumentException;

    move-object/from16 v19, v10

    move-object/from16 v10, v19

    move-object/from16 v11, v19

    new-instance v12, Ljava/lang/StringBuilder;

    move-object/from16 v19, v12

    move-object/from16 v12, v19

    move-object/from16 v13, v19

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "unhandled native format: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move v13, v3

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 76
    :pswitch_0
    move v10, v6

    move v11, v7

    mul-int/2addr v10, v11

    const/4 v11, 0x4

    mul-int/lit8 v10, v10, 0x4

    new-array v10, v10, [B

    move-object v9, v10

    .line 77
    .local v9, "newbytes":[B
    invoke-static {}, Lcom/sun/javafx/image/impl/ByteRgb;->ToByteArgbConverter()Lcom/sun/javafx/image/ByteToBytePixelConverter;

    move-result-object v10

    move-object v11, v5

    const/4 v12, 0x0

    move v13, v8

    move-object v14, v9

    const/4 v15, 0x0

    move/from16 v16, v6

    const/16 v17, 0x4

    mul-int/lit8 v16, v16, 0x4

    move/from16 v17, v6

    move/from16 v18, v7

    invoke-interface/range {v10 .. v18}, Lcom/sun/javafx/image/ByteToBytePixelConverter;->convert(Ljava/nio/ByteBuffer;II[BIIII)V

    .line 80
    move-object v10, v9

    invoke-static {v10}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v10

    move-object v5, v10

    .line 98
    .end local v9    # "newbytes":[B
    :cond_0
    :goto_0
    move-object v10, v2

    move-object v11, v0

    invoke-virtual {v11}, Lcom/sun/prism/Image;->getWidth()I

    move-result v11

    move-object v12, v0

    .line 99
    invoke-virtual {v12}, Lcom/sun/prism/Image;->getHeight()I

    move-result v12

    move-object v13, v5

    .line 98
    invoke-virtual {v10, v11, v12, v13}, Lcom/sun/glass/ui/Application;->createPixels(IILjava/nio/ByteBuffer;)Lcom/sun/glass/ui/Pixels;

    move-result-object v10

    move-object v4, v10

    .line 100
    .local v4, "pixels":Lcom/sun/glass/ui/Pixels;
    move-object v10, v4

    move-object v0, v10

    .line 113
    .end local v0    # "image":Lcom/sun/prism/Image;
    .end local v5    # "bytes":Ljava/nio/ByteBuffer;
    .end local v6    # "w":I
    .end local v7    # "h":I
    .end local v8    # "scanBytes":I
    :goto_1
    return-object v0

    .line 85
    .end local v4    # "pixels":Lcom/sun/glass/ui/Pixels;
    .restart local v0    # "image":Lcom/sun/prism/Image;
    .restart local v5    # "bytes":Ljava/nio/ByteBuffer;
    .restart local v6    # "w":I
    .restart local v7    # "h":I
    .restart local v8    # "scanBytes":I
    :pswitch_1
    move v10, v6

    move v11, v7

    mul-int/2addr v10, v11

    const/4 v11, 0x4

    mul-int/lit8 v10, v10, 0x4

    new-array v10, v10, [B

    move-object v9, v10

    .line 86
    .restart local v9    # "newbytes":[B
    invoke-static {}, Lcom/sun/javafx/image/impl/ByteRgb;->ToByteBgraPreConverter()Lcom/sun/javafx/image/ByteToBytePixelConverter;

    move-result-object v10

    move-object v11, v5

    const/4 v12, 0x0

    move v13, v8

    move-object v14, v9

    const/4 v15, 0x0

    move/from16 v16, v6

    const/16 v17, 0x4

    mul-int/lit8 v16, v16, 0x4

    move/from16 v17, v6

    move/from16 v18, v7

    invoke-interface/range {v10 .. v18}, Lcom/sun/javafx/image/ByteToBytePixelConverter;->convert(Ljava/nio/ByteBuffer;II[BIIII)V

    .line 89
    move-object v10, v9

    invoke-static {v10}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v10

    move-object v5, v10

    .line 90
    goto :goto_0

    .line 95
    .end local v9    # "newbytes":[B
    :cond_1
    move-object v10, v0

    invoke-virtual {v10}, Lcom/sun/prism/Image;->getPixelFormat()Lcom/sun/prism/PixelFormat;

    move-result-object v10

    sget-object v11, Lcom/sun/prism/PixelFormat;->BYTE_BGRA_PRE:Lcom/sun/prism/PixelFormat;

    if-eq v10, v11, :cond_0

    .line 96
    new-instance v10, Ljava/lang/IllegalArgumentException;

    move-object/from16 v19, v10

    move-object/from16 v10, v19

    move-object/from16 v11, v19

    const-string v12, "non-RGB image format"

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 101
    .end local v5    # "bytes":Ljava/nio/ByteBuffer;
    .end local v6    # "w":I
    .end local v7    # "h":I
    .end local v8    # "scanBytes":I
    :cond_2
    move-object v10, v1

    sget-object v11, Lcom/sun/prism/PixelFormat$DataType;->INT:Lcom/sun/prism/PixelFormat$DataType;

    if-ne v10, v11, :cond_4

    .line 102
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v10

    sget-object v11, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    if-eq v10, v11, :cond_3

    .line 103
    const-string v10, "INT_ARGB_PRE only supported for LITTLE_ENDIAN machines"

    move-object v5, v10

    .line 104
    .local v5, "MSG":Ljava/lang/String;
    new-instance v10, Ljava/lang/UnsupportedOperationException;

    move-object/from16 v19, v10

    move-object/from16 v10, v19

    move-object/from16 v11, v19

    const-string v12, "INT_ARGB_PRE only supported for LITTLE_ENDIAN machines"

    invoke-direct {v11, v12}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 110
    .end local v5    # "MSG":Ljava/lang/String;
    :cond_3
    move-object v10, v0

    invoke-virtual {v10}, Lcom/sun/prism/Image;->getPixelBuffer()Ljava/nio/Buffer;

    move-result-object v10

    check-cast v10, Ljava/nio/IntBuffer;

    move-object v5, v10

    .line 111
    .local v5, "ints":Ljava/nio/IntBuffer;
    move-object v10, v2

    move-object v11, v0

    invoke-virtual {v11}, Lcom/sun/prism/Image;->getWidth()I

    move-result v11

    move-object v12, v0

    .line 112
    invoke-virtual {v12}, Lcom/sun/prism/Image;->getHeight()I

    move-result v12

    move-object v13, v5

    .line 111
    invoke-virtual {v10, v11, v12, v13}, Lcom/sun/glass/ui/Application;->createPixels(IILjava/nio/IntBuffer;)Lcom/sun/glass/ui/Pixels;

    move-result-object v10

    move-object v4, v10

    .line 113
    .restart local v4    # "pixels":Lcom/sun/glass/ui/Pixels;
    move-object v10, v4

    move-object v0, v10

    goto :goto_1

    .line 115
    .end local v4    # "pixels":Lcom/sun/glass/ui/Pixels;
    .end local v5    # "ints":Ljava/nio/IntBuffer;
    :cond_4
    new-instance v10, Ljava/lang/IllegalArgumentException;

    move-object/from16 v19, v10

    move-object/from16 v10, v19

    move-object/from16 v11, v19

    new-instance v12, Ljava/lang/StringBuilder;

    move-object/from16 v19, v12

    move-object/from16 v12, v19

    move-object/from16 v13, v19

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "unhandled image type: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object v13, v1

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 73
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static pixelsToImage(Lcom/sun/glass/ui/Pixels;)Lcom/sun/prism/Image;
    .locals 8

    .prologue
    .line 120
    move-object v0, p0

    .local v0, "pix":Lcom/sun/glass/ui/Pixels;
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/glass/ui/Pixels;->getPixels()Ljava/nio/Buffer;

    move-result-object v3

    move-object v1, v3

    .line 121
    .local v1, "pixbuf":Ljava/nio/Buffer;
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/glass/ui/Pixels;->getBytesPerComponent()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 122
    move-object v3, v1

    invoke-virtual {v3}, Ljava/nio/Buffer;->capacity()I

    move-result v3

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    move-object v2, v3

    .line 123
    .local v2, "buf":Ljava/nio/ByteBuffer;
    move-object v3, v2

    move-object v4, v1

    check-cast v4, Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 124
    move-object v3, v2

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    move-result-object v3

    .line 125
    move-object v3, v2

    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/glass/ui/Pixels;->getWidth()I

    move-result v4

    move-object v5, v0

    invoke-virtual {v5}, Lcom/sun/glass/ui/Pixels;->getHeight()I

    move-result v5

    invoke-static {v3, v4, v5}, Lcom/sun/prism/Image;->fromByteBgraPreData(Ljava/nio/ByteBuffer;II)Lcom/sun/prism/Image;

    move-result-object v3

    move-object v0, v3

    .line 130
    .end local v0    # "pix":Lcom/sun/glass/ui/Pixels;
    .end local v2    # "buf":Ljava/nio/ByteBuffer;
    :goto_0
    return-object v0

    .line 126
    .restart local v0    # "pix":Lcom/sun/glass/ui/Pixels;
    :cond_0
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/glass/ui/Pixels;->getBytesPerComponent()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_1

    .line 127
    move-object v3, v1

    invoke-virtual {v3}, Ljava/nio/Buffer;->capacity()I

    move-result v3

    invoke-static {v3}, Ljava/nio/IntBuffer;->allocate(I)Ljava/nio/IntBuffer;

    move-result-object v3

    move-object v2, v3

    .line 128
    .local v2, "buf":Ljava/nio/IntBuffer;
    move-object v3, v2

    move-object v4, v1

    check-cast v4, Ljava/nio/IntBuffer;

    invoke-virtual {v3, v4}, Ljava/nio/IntBuffer;->put(Ljava/nio/IntBuffer;)Ljava/nio/IntBuffer;

    move-result-object v3

    .line 129
    move-object v3, v2

    invoke-virtual {v3}, Ljava/nio/IntBuffer;->rewind()Ljava/nio/Buffer;

    move-result-object v3

    .line 130
    move-object v3, v1

    check-cast v3, Ljava/nio/IntBuffer;

    move-object v4, v0

    .line 131
    invoke-virtual {v4}, Lcom/sun/glass/ui/Pixels;->getWidth()I

    move-result v4

    move-object v5, v0

    invoke-virtual {v5}, Lcom/sun/glass/ui/Pixels;->getHeight()I

    move-result v5

    .line 130
    invoke-static {v3, v4, v5}, Lcom/sun/prism/Image;->fromIntArgbPreData(Ljava/nio/IntBuffer;II)Lcom/sun/prism/Image;

    move-result-object v3

    move-object v0, v3

    goto :goto_0

    .line 133
    .end local v2    # "buf":Ljava/nio/IntBuffer;
    :cond_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "unhandled pixel buffer: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v1

    .line 134
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method protected static supportedFormatType(Ljava/lang/String;)Z
    .locals 9

    .prologue
    .line 50
    move-object v0, p0

    .local v0, "type":Ljava/lang/String;
    sget-object v7, Lcom/sun/javafx/tk/quantum/PixelUtils;->supportedFormats:[Lcom/sun/javafx/iio/ImageFormatDescription;

    move-object v1, v7

    move-object v7, v1

    array-length v7, v7

    move v2, v7

    const/4 v7, 0x0

    move v3, v7

    :goto_0
    move v7, v3

    move v8, v2

    if-ge v7, v8, :cond_2

    move-object v7, v1

    move v8, v3

    aget-object v7, v7, v8

    move-object v4, v7

    .line 51
    .local v4, "ifd":Lcom/sun/javafx/iio/ImageFormatDescription;
    move-object v7, v4

    invoke-interface {v7}, Lcom/sun/javafx/iio/ImageFormatDescription;->getExtensions()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move-object v5, v7

    :goto_1
    move-object v7, v5

    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    move-object v7, v5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    move-object v6, v7

    .line 52
    .local v6, "ext":Ljava/lang/String;
    move-object v7, v0

    move-object v8, v6

    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 53
    const/4 v7, 0x1

    move v0, v7

    .line 57
    .end local v0    # "type":Ljava/lang/String;
    :goto_2
    return v0

    .line 55
    .restart local v0    # "type":Ljava/lang/String;
    :cond_0
    goto :goto_1

    .line 50
    .end local v6    # "ext":Ljava/lang/String;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 57
    .end local v4    # "ifd":Lcom/sun/javafx/iio/ImageFormatDescription;
    :cond_2
    const/4 v7, 0x0

    move v0, v7

    goto :goto_2
.end method
