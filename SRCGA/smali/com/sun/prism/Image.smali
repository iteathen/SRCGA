.class public Lcom/sun/prism/Image;
.super Ljava/lang/Object;
.source "Image.java"

# interfaces
.implements Lcom/sun/javafx/tk/PlatformImage;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/prism/Image$ByteRgbAccess;,
        Lcom/sun/prism/Image$UnsupportedAccess;,
        Lcom/sun/prism/Image$IntAccess;,
        Lcom/sun/prism/Image$ByteAccess;,
        Lcom/sun/prism/Image$BaseAccessor;,
        Lcom/sun/prism/Image$ScaledAccessor;,
        Lcom/sun/prism/Image$Accessor;
    }
.end annotation


# static fields
.field static final FX_ByteBgraPre_FORMAT:Ljavafx/scene/image/WritablePixelFormat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/scene/image/WritablePixelFormat",
            "<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field static FX_ByteGray_FORMAT:Ljavafx/scene/image/PixelFormat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/scene/image/PixelFormat",
            "<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field static final FX_ByteRgb_FORMAT:Ljavafx/scene/image/PixelFormat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/scene/image/PixelFormat",
            "<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field static final FX_IntArgbPre_FORMAT:Ljavafx/scene/image/WritablePixelFormat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/scene/image/WritablePixelFormat",
            "<",
            "Ljava/nio/IntBuffer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final height:I

.field private final minX:I

.field private final minY:I

.field private final pixelBuffer:Ljava/nio/Buffer;

.field private final pixelFormat:Lcom/sun/prism/PixelFormat;

.field private final pixelScale:F

.field private pixelaccessor:Lcom/sun/prism/Image$Accessor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sun/prism/Image$Accessor",
            "<*>;"
        }
    .end annotation
.end field

.field private final scanlineStride:I

.field serial:[I

.field private final width:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    invoke-static {}, Ljavafx/scene/image/PixelFormat;->getByteBgraPreInstance()Ljavafx/scene/image/WritablePixelFormat;

    move-result-object v0

    sput-object v0, Lcom/sun/prism/Image;->FX_ByteBgraPre_FORMAT:Ljavafx/scene/image/WritablePixelFormat;

    .line 62
    invoke-static {}, Ljavafx/scene/image/PixelFormat;->getIntArgbPreInstance()Ljavafx/scene/image/WritablePixelFormat;

    move-result-object v0

    sput-object v0, Lcom/sun/prism/Image;->FX_IntArgbPre_FORMAT:Ljavafx/scene/image/WritablePixelFormat;

    .line 64
    invoke-static {}, Ljavafx/scene/image/PixelFormat;->getByteRgbInstance()Ljavafx/scene/image/PixelFormat;

    move-result-object v0

    sput-object v0, Lcom/sun/prism/Image;->FX_ByteRgb_FORMAT:Ljavafx/scene/image/PixelFormat;

    .line 63
    return-void
.end method

.method private constructor <init>(Lcom/sun/prism/PixelFormat;Ljava/nio/Buffer;II)V
    .locals 14

    .prologue
    .line 268
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/Image;
    move-object v1, p1

    .local v1, "pixelFormat":Lcom/sun/prism/PixelFormat;
    move-object/from16 v2, p2

    .local v2, "pixelBuffer":Ljava/nio/Buffer;
    move/from16 v3, p3

    .local v3, "width":I
    move/from16 v4, p4

    .local v4, "height":I
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move v8, v3

    move v9, v4

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/high16 v13, 0x3f800000    # 1.0f

    invoke-direct/range {v5 .. v13}, Lcom/sun/prism/Image;-><init>(Lcom/sun/prism/PixelFormat;Ljava/nio/Buffer;IIIIIF)V

    .line 269
    return-void
.end method

.method private constructor <init>(Lcom/sun/prism/PixelFormat;Ljava/nio/Buffer;IIIII)V
    .locals 17

    .prologue
    .line 274
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/prism/Image;
    move-object/from16 v1, p1

    .local v1, "pixelFormat":Lcom/sun/prism/PixelFormat;
    move-object/from16 v2, p2

    .local v2, "pixelBuffer":Ljava/nio/Buffer;
    move/from16 v3, p3

    .local v3, "width":I
    move/from16 v4, p4

    .local v4, "height":I
    move/from16 v5, p5

    .local v5, "minX":I
    move/from16 v6, p6

    .local v6, "minY":I
    move/from16 v7, p7

    .local v7, "scanlineStride":I
    move-object v8, v0

    move-object v9, v1

    move-object v10, v2

    move v11, v3

    move v12, v4

    move v13, v5

    move v14, v6

    move v15, v7

    const/high16 v16, 0x3f800000    # 1.0f

    invoke-direct/range {v8 .. v16}, Lcom/sun/prism/Image;-><init>(Lcom/sun/prism/PixelFormat;Ljava/nio/Buffer;IIIIIF)V

    .line 275
    return-void
.end method

.method private constructor <init>(Lcom/sun/prism/PixelFormat;Ljava/nio/Buffer;IIIIIF)V
    .locals 14

    .prologue
    .line 280
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/Image;
    move-object v1, p1

    .local v1, "pixelFormat":Lcom/sun/prism/PixelFormat;
    move-object/from16 v2, p2

    .local v2, "pixelBuffer":Ljava/nio/Buffer;
    move/from16 v3, p3

    .local v3, "width":I
    move/from16 v4, p4

    .local v4, "height":I
    move/from16 v5, p5

    .local v5, "minX":I
    move/from16 v6, p6

    .local v6, "minY":I
    move/from16 v7, p7

    .local v7, "scanlineStride":I
    move/from16 v8, p8

    .local v8, "pixelScale":F
    move-object v9, v0

    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    .line 74
    move-object v9, v0

    const/4 v10, 0x1

    new-array v10, v10, [I

    iput-object v10, v9, Lcom/sun/prism/Image;->serial:[I

    .line 281
    move-object v9, v1

    sget-object v10, Lcom/sun/prism/PixelFormat;->MULTI_YCbCr_420:Lcom/sun/prism/PixelFormat;

    if-ne v9, v10, :cond_0

    .line 282
    new-instance v9, Ljava/lang/IllegalArgumentException;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    new-instance v11, Ljava/lang/StringBuilder;

    move-object v13, v11

    move-object v11, v13

    move-object v12, v13

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Format not supported "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object v12, v1

    invoke-virtual {v12}, Lcom/sun/prism/PixelFormat;->name()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 284
    :cond_0
    move v9, v7

    if-nez v9, :cond_1

    .line 285
    move v9, v3

    move-object v10, v1

    invoke-virtual {v10}, Lcom/sun/prism/PixelFormat;->getBytesPerPixelUnit()I

    move-result v10

    mul-int/2addr v9, v10

    move v7, v9

    .line 288
    :cond_1
    move-object v9, v2

    if-nez v9, :cond_2

    .line 289
    new-instance v9, Ljava/lang/IllegalArgumentException;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    const-string v11, "Pixel buffer must be non-null"

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 291
    :cond_2
    move v9, v3

    if-lez v9, :cond_3

    move v9, v4

    if-gtz v9, :cond_4

    .line 292
    :cond_3
    new-instance v9, Ljava/lang/IllegalArgumentException;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    const-string v11, "Image dimensions must be > 0"

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 294
    :cond_4
    move v9, v5

    if-ltz v9, :cond_5

    move v9, v6

    if-gez v9, :cond_6

    .line 295
    :cond_5
    new-instance v9, Ljava/lang/IllegalArgumentException;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    const-string v11, "Image minX and minY must be >= 0"

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 297
    :cond_6
    move v9, v5

    move v10, v3

    add-int/2addr v9, v10

    move-object v10, v1

    invoke-virtual {v10}, Lcom/sun/prism/PixelFormat;->getBytesPerPixelUnit()I

    move-result v10

    mul-int/2addr v9, v10

    move v10, v7

    if-le v9, v10, :cond_7

    .line 298
    new-instance v9, Ljava/lang/IllegalArgumentException;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    const-string v11, "Image scanlineStride is too small"

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 300
    :cond_7
    move v9, v7

    move-object v10, v1

    invoke-virtual {v10}, Lcom/sun/prism/PixelFormat;->getBytesPerPixelUnit()I

    move-result v10

    rem-int/2addr v9, v10

    if-eqz v9, :cond_8

    .line 301
    new-instance v9, Ljava/lang/IllegalArgumentException;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    const-string v11, "Image scanlineStride must be a multiple of the pixel stride"

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 304
    :cond_8
    move-object v9, v0

    move-object v10, v1

    iput-object v10, v9, Lcom/sun/prism/Image;->pixelFormat:Lcom/sun/prism/PixelFormat;

    .line 305
    move-object v9, v0

    move-object v10, v2

    iput-object v10, v9, Lcom/sun/prism/Image;->pixelBuffer:Ljava/nio/Buffer;

    .line 306
    move-object v9, v0

    move v10, v3

    iput v10, v9, Lcom/sun/prism/Image;->width:I

    .line 307
    move-object v9, v0

    move v10, v4

    iput v10, v9, Lcom/sun/prism/Image;->height:I

    .line 308
    move-object v9, v0

    move v10, v5

    iput v10, v9, Lcom/sun/prism/Image;->minX:I

    .line 309
    move-object v9, v0

    move v10, v6

    iput v10, v9, Lcom/sun/prism/Image;->minY:I

    .line 310
    move-object v9, v0

    move v10, v7

    iput v10, v9, Lcom/sun/prism/Image;->scanlineStride:I

    .line 311
    move-object v9, v0

    move v10, v8

    iput v10, v9, Lcom/sun/prism/Image;->pixelScale:F

    .line 312
    return-void
.end method

.method private constructor <init>(Lcom/sun/prism/PixelFormat;[BII)V
    .locals 14

    .prologue
    .line 262
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/Image;
    move-object v1, p1

    .local v1, "pixelFormat":Lcom/sun/prism/PixelFormat;
    move-object/from16 v2, p2

    .local v2, "pixels":[B
    move/from16 v3, p3

    .local v3, "width":I
    move/from16 v4, p4

    .local v4, "height":I
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    invoke-static {v7}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v7

    move v8, v3

    move v9, v4

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/high16 v13, 0x3f800000    # 1.0f

    invoke-direct/range {v5 .. v13}, Lcom/sun/prism/Image;-><init>(Lcom/sun/prism/PixelFormat;Ljava/nio/Buffer;IIIIIF)V

    .line 263
    return-void
.end method

.method private constructor <init>(Lcom/sun/prism/PixelFormat;[III)V
    .locals 14

    .prologue
    .line 256
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/Image;
    move-object v1, p1

    .local v1, "pixelFormat":Lcom/sun/prism/PixelFormat;
    move-object/from16 v2, p2

    .local v2, "pixels":[I
    move/from16 v3, p3

    .local v3, "width":I
    move/from16 v4, p4

    .local v4, "height":I
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    invoke-static {v7}, Ljava/nio/IntBuffer;->wrap([I)Ljava/nio/IntBuffer;

    move-result-object v7

    move v8, v3

    move v9, v4

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/high16 v13, 0x3f800000    # 1.0f

    invoke-direct/range {v5 .. v13}, Lcom/sun/prism/Image;-><init>(Lcom/sun/prism/PixelFormat;Ljava/nio/Buffer;IIIIIF)V

    .line 257
    return-void
.end method

.method static synthetic access$100(Lcom/sun/prism/Image;)I
    .locals 2

    .prologue
    .line 58
    move-object v0, p0

    .local v0, "x0":Lcom/sun/prism/Image;
    move-object v1, v0

    iget v1, v1, Lcom/sun/prism/Image;->scanlineStride:I

    move v0, v1

    .end local v0    # "x0":Lcom/sun/prism/Image;
    return v0
.end method

.method static synthetic access$200(Lcom/sun/prism/Image;)Lcom/sun/prism/PixelFormat;
    .locals 2

    .prologue
    .line 58
    move-object v0, p0

    .local v0, "x0":Lcom/sun/prism/Image;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/prism/Image;->pixelFormat:Lcom/sun/prism/PixelFormat;

    move-object v0, v1

    .end local v0    # "x0":Lcom/sun/prism/Image;
    return-object v0
.end method

.method static synthetic access$300(Lcom/sun/prism/Image;)I
    .locals 2

    .prologue
    .line 58
    move-object v0, p0

    .local v0, "x0":Lcom/sun/prism/Image;
    move-object v1, v0

    iget v1, v1, Lcom/sun/prism/Image;->minY:I

    move v0, v1

    .end local v0    # "x0":Lcom/sun/prism/Image;
    return v0
.end method

.method static synthetic access$400(Lcom/sun/prism/Image;)I
    .locals 2

    .prologue
    .line 58
    move-object v0, p0

    .local v0, "x0":Lcom/sun/prism/Image;
    move-object v1, v0

    iget v1, v1, Lcom/sun/prism/Image;->minX:I

    move v0, v1

    .end local v0    # "x0":Lcom/sun/prism/Image;
    return v0
.end method

.method static synthetic access$500(Lcom/sun/prism/Image;)I
    .locals 2

    .prologue
    .line 58
    move-object v0, p0

    .local v0, "x0":Lcom/sun/prism/Image;
    move-object v1, v0

    iget v1, v1, Lcom/sun/prism/Image;->width:I

    move v0, v1

    .end local v0    # "x0":Lcom/sun/prism/Image;
    return v0
.end method

.method static synthetic access$600(Lcom/sun/prism/Image;)I
    .locals 2

    .prologue
    .line 58
    move-object v0, p0

    .local v0, "x0":Lcom/sun/prism/Image;
    move-object v1, v0

    iget v1, v1, Lcom/sun/prism/Image;->height:I

    move v0, v1

    .end local v0    # "x0":Lcom/sun/prism/Image;
    return v0
.end method

.method public static convertImageFrame(Lcom/sun/javafx/iio/ImageFrame;)Lcom/sun/prism/Image;
    .locals 18

    .prologue
    .line 207
    move-object/from16 v0, p0

    .local v0, "frame":Lcom/sun/javafx/iio/ImageFrame;
    move-object v8, v0

    invoke-virtual {v8}, Lcom/sun/javafx/iio/ImageFrame;->getImageData()Ljava/nio/Buffer;

    move-result-object v8

    check-cast v8, Ljava/nio/ByteBuffer;

    move-object v1, v8

    .line 208
    .local v1, "buffer":Ljava/nio/ByteBuffer;
    move-object v8, v0

    invoke-virtual {v8}, Lcom/sun/javafx/iio/ImageFrame;->getImageType()Lcom/sun/javafx/iio/ImageStorage$ImageType;

    move-result-object v8

    move-object v2, v8

    .line 209
    .local v2, "type":Lcom/sun/javafx/iio/ImageStorage$ImageType;
    move-object v8, v0

    invoke-virtual {v8}, Lcom/sun/javafx/iio/ImageFrame;->getWidth()I

    move-result v8

    move v3, v8

    .local v3, "w":I
    move-object v8, v0

    invoke-virtual {v8}, Lcom/sun/javafx/iio/ImageFrame;->getHeight()I

    move-result v8

    move v4, v8

    .line 210
    .local v4, "h":I
    move-object v8, v0

    invoke-virtual {v8}, Lcom/sun/javafx/iio/ImageFrame;->getStride()I

    move-result v8

    move v5, v8

    .line 211
    .local v5, "scanBytes":I
    move-object v8, v0

    invoke-virtual {v8}, Lcom/sun/javafx/iio/ImageFrame;->getPixelScale()F

    move-result v8

    move v6, v8

    .line 213
    .local v6, "ps":F
    sget-object v8, Lcom/sun/prism/Image$1;->$SwitchMap$com$sun$javafx$iio$ImageStorage$ImageType:[I

    move-object v9, v2

    invoke-virtual {v9}, Lcom/sun/javafx/iio/ImageStorage$ImageType;->ordinal()I

    move-result v9

    aget v8, v8, v9

    packed-switch v8, :pswitch_data_0

    .line 249
    new-instance v8, Ljava/lang/RuntimeException;

    move-object/from16 v17, v8

    move-object/from16 v8, v17

    move-object/from16 v9, v17

    new-instance v10, Ljava/lang/StringBuilder;

    move-object/from16 v17, v10

    move-object/from16 v10, v17

    move-object/from16 v11, v17

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unknown image type: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object v11, v2

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 215
    :pswitch_0
    move-object v8, v1

    move v9, v3

    move v10, v4

    move v11, v5

    move v12, v6

    invoke-static {v8, v9, v10, v11, v12}, Lcom/sun/prism/Image;->fromByteGrayData(Ljava/nio/ByteBuffer;IIIF)Lcom/sun/prism/Image;

    move-result-object v8

    move-object v0, v8

    .line 247
    .end local v0    # "frame":Lcom/sun/javafx/iio/ImageFrame;
    :goto_0
    return-object v0

    .line 218
    .restart local v0    # "frame":Lcom/sun/javafx/iio/ImageFrame;
    :pswitch_1
    move-object v8, v1

    move v9, v3

    move v10, v4

    move v11, v5

    move v12, v6

    invoke-static {v8, v9, v10, v11, v12}, Lcom/sun/prism/Image;->fromByteRgbData(Ljava/nio/ByteBuffer;IIIF)Lcom/sun/prism/Image;

    move-result-object v8

    move-object v0, v8

    goto :goto_0

    .line 223
    :pswitch_2
    invoke-static {}, Lcom/sun/javafx/image/impl/ByteBgra;->ToByteBgraPreConverter()Lcom/sun/javafx/image/ByteToBytePixelConverter;

    move-result-object v8

    move-object v9, v1

    const/4 v10, 0x0

    move v11, v5

    move-object v12, v1

    const/4 v13, 0x0

    move v14, v5

    move v15, v3

    move/from16 v16, v4

    invoke-interface/range {v8 .. v16}, Lcom/sun/javafx/image/ByteToBytePixelConverter;->convert(Ljava/nio/Buffer;IILjava/nio/Buffer;IIII)V

    .line 228
    :pswitch_3
    invoke-static {}, Lcom/sun/javafx/image/impl/ByteRgba;->ToByteBgraConverter()Lcom/sun/javafx/image/ByteToBytePixelConverter;

    move-result-object v8

    move-object v9, v1

    const/4 v10, 0x0

    move v11, v5

    move-object v12, v1

    const/4 v13, 0x0

    move v14, v5

    move v15, v3

    move/from16 v16, v4

    invoke-interface/range {v8 .. v16}, Lcom/sun/javafx/image/ByteToBytePixelConverter;->convert(Ljava/nio/Buffer;IILjava/nio/Buffer;IIII)V

    .line 231
    move-object v8, v1

    move v9, v3

    move v10, v4

    move v11, v5

    move v12, v6

    invoke-static {v8, v9, v10, v11, v12}, Lcom/sun/prism/Image;->fromByteBgraPreData(Ljava/nio/ByteBuffer;IIIF)Lcom/sun/prism/Image;

    move-result-object v8

    move-object v0, v8

    goto :goto_0

    .line 235
    :pswitch_4
    invoke-static {}, Lcom/sun/javafx/image/impl/ByteGrayAlpha;->ToByteGrayAlphaPreConverter()Lcom/sun/javafx/image/ByteToBytePixelConverter;

    move-result-object v8

    move-object v9, v1

    const/4 v10, 0x0

    move v11, v5

    move-object v12, v1

    const/4 v13, 0x0

    move v14, v5

    move v15, v3

    move/from16 v16, v4

    invoke-interface/range {v8 .. v16}, Lcom/sun/javafx/image/ByteToBytePixelConverter;->convert(Ljava/nio/Buffer;IILjava/nio/Buffer;IIII)V

    .line 240
    :pswitch_5
    move v8, v5

    move v9, v3

    const/4 v10, 0x2

    mul-int/lit8 v9, v9, 0x2

    if-eq v8, v9, :cond_0

    .line 241
    new-instance v8, Ljava/lang/AssertionError;

    move-object/from16 v17, v8

    move-object/from16 v8, v17

    move-object/from16 v9, v17

    const-string v10, "Bad stride for GRAY_ALPHA"

    invoke-direct {v9, v10}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v8

    .line 243
    :cond_0
    move v8, v3

    move v9, v4

    mul-int/2addr v8, v9

    const/4 v9, 0x4

    mul-int/lit8 v8, v8, 0x4

    new-array v8, v8, [B

    move-object v7, v8

    .line 244
    .local v7, "newbuf":[B
    invoke-static {}, Lcom/sun/javafx/image/impl/ByteGrayAlphaPre;->ToByteBgraPreConverter()Lcom/sun/javafx/image/ByteToBytePixelConverter;

    move-result-object v8

    move-object v9, v1

    const/4 v10, 0x0

    move v11, v5

    move-object v12, v7

    const/4 v13, 0x0

    move v14, v3

    const/4 v15, 0x4

    mul-int/lit8 v14, v14, 0x4

    move v15, v3

    move/from16 v16, v4

    invoke-interface/range {v8 .. v16}, Lcom/sun/javafx/image/ByteToBytePixelConverter;->convert(Ljava/nio/ByteBuffer;II[BIIII)V

    .line 247
    move-object v8, v7

    move v9, v3

    move v10, v4

    move v11, v6

    invoke-static {v8, v9, v10, v11}, Lcom/sun/prism/Image;->fromByteBgraPreData([BIIF)Lcom/sun/prism/Image;

    move-result-object v8

    move-object v0, v8

    goto/16 :goto_0

    .line 213
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public static createPackedBuffer(Ljava/nio/Buffer;Lcom/sun/prism/PixelFormat;IIIII)Ljava/nio/Buffer;
    .locals 29

    .prologue
    .line 457
    move-object/from16 v2, p0

    .local v2, "pixels":Ljava/nio/Buffer;
    move-object/from16 v3, p1

    .local v3, "format":Lcom/sun/prism/PixelFormat;
    move/from16 v4, p2

    .local v4, "minX":I
    move/from16 v5, p3

    .local v5, "minY":I
    move/from16 v6, p4

    .local v6, "width":I
    move/from16 v7, p5

    .local v7, "height":I
    move/from16 v8, p6

    .local v8, "scanlineStride":I
    move/from16 v24, v8

    move-object/from16 v25, v3

    invoke-virtual/range {v25 .. v25}, Lcom/sun/prism/PixelFormat;->getBytesPerPixelUnit()I

    move-result v25

    rem-int v24, v24, v25

    if-eqz v24, :cond_0

    .line 458
    new-instance v24, Ljava/lang/IllegalArgumentException;

    move-object/from16 v28, v24

    move-object/from16 v24, v28

    move-object/from16 v25, v28

    const-string v26, "Image scanlineStride must be a multiple of the pixel stride"

    invoke-direct/range {v25 .. v26}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v24

    .line 461
    :cond_0
    move-object/from16 v24, v3

    sget-object v25, Lcom/sun/prism/PixelFormat;->MULTI_YCbCr_420:Lcom/sun/prism/PixelFormat;

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    if-ne v0, v1, :cond_1

    .line 462
    new-instance v24, Ljava/lang/IllegalArgumentException;

    move-object/from16 v28, v24

    move-object/from16 v24, v28

    move-object/from16 v25, v28

    new-instance v26, Ljava/lang/StringBuilder;

    move-object/from16 v28, v26

    move-object/from16 v26, v28

    move-object/from16 v27, v28

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Format unsupported "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v27, v3

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-direct/range {v25 .. v26}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v24

    .line 465
    :cond_1
    move-object/from16 v24, v3

    invoke-virtual/range {v24 .. v24}, Lcom/sun/prism/PixelFormat;->getElemsPerPixelUnit()I

    move-result v24

    move/from16 v9, v24

    .line 466
    .local v9, "elemsPerPixel":I
    move/from16 v24, v8

    move-object/from16 v25, v3

    invoke-virtual/range {v25 .. v25}, Lcom/sun/prism/PixelFormat;->getBytesPerPixelUnit()I

    move-result v25

    div-int v24, v24, v25

    move/from16 v10, v24

    .line 467
    .local v10, "oldRowLength":I
    move/from16 v24, v10

    move/from16 v25, v9

    mul-int v24, v24, v25

    move/from16 v11, v24

    .line 468
    .local v11, "oldElemsPerRow":I
    move/from16 v24, v6

    move/from16 v25, v9

    mul-int v24, v24, v25

    move/from16 v12, v24

    .line 469
    .local v12, "newElemsPerRow":I
    move/from16 v24, v12

    move/from16 v25, v7

    mul-int v24, v24, v25

    move/from16 v13, v24

    .line 470
    .local v13, "newSizeInElems":I
    move/from16 v24, v4

    move/from16 v25, v9

    mul-int v24, v24, v25

    move/from16 v25, v5

    move/from16 v26, v11

    mul-int v25, v25, v26

    add-int v24, v24, v25

    move/from16 v14, v24

    .line 471
    .local v14, "oldpos":I
    const/16 v24, 0x0

    move/from16 v15, v24

    .line 474
    .local v15, "newpos":I
    sget-object v24, Lcom/sun/prism/Image$1;->$SwitchMap$com$sun$prism$PixelFormat$DataType:[I

    move-object/from16 v25, v3

    invoke-virtual/range {v25 .. v25}, Lcom/sun/prism/PixelFormat;->getDataType()Lcom/sun/prism/PixelFormat$DataType;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/sun/prism/PixelFormat$DataType;->ordinal()I

    move-result v25

    aget v24, v24, v25

    packed-switch v24, :pswitch_data_0

    .line 518
    new-instance v24, Ljava/lang/InternalError;

    move-object/from16 v28, v24

    move-object/from16 v24, v28

    move-object/from16 v25, v28

    const-string v26, "Unknown data type"

    invoke-direct/range {v25 .. v26}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v24

    .line 476
    :pswitch_0
    move-object/from16 v24, v2

    check-cast v24, Ljava/nio/ByteBuffer;

    move-object/from16 v17, v24

    .line 477
    .local v17, "oldbbuf":Ljava/nio/ByteBuffer;
    move/from16 v24, v13

    invoke-static/range {v24 .. v24}, Lcom/sun/prism/impl/BufferUtil;->newByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v24

    move-object/from16 v18, v24

    .line 478
    .local v18, "newbbuf":Ljava/nio/ByteBuffer;
    const/16 v24, 0x0

    move/from16 v19, v24

    .local v19, "y":I
    :goto_0
    move/from16 v24, v19

    move/from16 v25, v7

    move/from16 v0, v24

    move/from16 v1, v25

    if-ge v0, v1, :cond_2

    .line 479
    move-object/from16 v24, v17

    move/from16 v25, v14

    move/from16 v26, v12

    add-int v25, v25, v26

    invoke-virtual/range {v24 .. v25}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    move-result-object v24

    .line 480
    move-object/from16 v24, v17

    move/from16 v25, v14

    invoke-virtual/range {v24 .. v25}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v24

    .line 481
    move-object/from16 v24, v18

    move/from16 v25, v15

    move/from16 v26, v12

    add-int v25, v25, v26

    invoke-virtual/range {v24 .. v25}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    move-result-object v24

    .line 482
    move-object/from16 v24, v18

    move/from16 v25, v15

    invoke-virtual/range {v24 .. v25}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v24

    .line 483
    move-object/from16 v24, v18

    move-object/from16 v25, v17

    invoke-virtual/range {v24 .. v25}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v24

    .line 484
    move/from16 v24, v14

    move/from16 v25, v11

    add-int v24, v24, v25

    move/from16 v14, v24

    .line 485
    move/from16 v24, v15

    move/from16 v25, v12

    add-int v24, v24, v25

    move/from16 v15, v24

    .line 478
    add-int/lit8 v19, v19, 0x1

    goto :goto_0

    .line 487
    :cond_2
    move-object/from16 v24, v18

    move-object/from16 v16, v24

    .line 521
    .end local v17    # "oldbbuf":Ljava/nio/ByteBuffer;
    .end local v18    # "newbbuf":Ljava/nio/ByteBuffer;
    .end local v19    # "y":I
    .local v16, "newBuf":Ljava/nio/Buffer;
    :goto_1
    move-object/from16 v24, v2

    move-object/from16 v25, v2

    invoke-virtual/range {v25 .. v25}, Ljava/nio/Buffer;->capacity()I

    move-result v25

    invoke-virtual/range {v24 .. v25}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    move-result-object v24

    .line 522
    move-object/from16 v24, v2

    invoke-virtual/range {v24 .. v24}, Ljava/nio/Buffer;->rewind()Ljava/nio/Buffer;

    move-result-object v24

    .line 523
    move-object/from16 v24, v16

    move-object/from16 v25, v16

    invoke-virtual/range {v25 .. v25}, Ljava/nio/Buffer;->capacity()I

    move-result v25

    invoke-virtual/range {v24 .. v25}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    move-result-object v24

    .line 524
    move-object/from16 v24, v16

    invoke-virtual/range {v24 .. v24}, Ljava/nio/Buffer;->rewind()Ljava/nio/Buffer;

    move-result-object v24

    .line 526
    move-object/from16 v24, v16

    move-object/from16 v2, v24

    .end local v2    # "pixels":Ljava/nio/Buffer;
    return-object v2

    .line 490
    .end local v16    # "newBuf":Ljava/nio/Buffer;
    .restart local v2    # "pixels":Ljava/nio/Buffer;
    :pswitch_1
    move-object/from16 v24, v2

    check-cast v24, Ljava/nio/IntBuffer;

    move-object/from16 v19, v24

    .line 491
    .local v19, "oldibuf":Ljava/nio/IntBuffer;
    move/from16 v24, v13

    invoke-static/range {v24 .. v24}, Lcom/sun/prism/impl/BufferUtil;->newIntBuffer(I)Ljava/nio/IntBuffer;

    move-result-object v24

    move-object/from16 v20, v24

    .line 492
    .local v20, "newibuf":Ljava/nio/IntBuffer;
    const/16 v24, 0x0

    move/from16 v21, v24

    .local v21, "y":I
    :goto_2
    move/from16 v24, v21

    move/from16 v25, v7

    move/from16 v0, v24

    move/from16 v1, v25

    if-ge v0, v1, :cond_3

    .line 493
    move-object/from16 v24, v19

    move/from16 v25, v14

    move/from16 v26, v12

    add-int v25, v25, v26

    invoke-virtual/range {v24 .. v25}, Ljava/nio/IntBuffer;->limit(I)Ljava/nio/Buffer;

    move-result-object v24

    .line 494
    move-object/from16 v24, v19

    move/from16 v25, v14

    invoke-virtual/range {v24 .. v25}, Ljava/nio/IntBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v24

    .line 495
    move-object/from16 v24, v20

    move/from16 v25, v15

    move/from16 v26, v12

    add-int v25, v25, v26

    invoke-virtual/range {v24 .. v25}, Ljava/nio/IntBuffer;->limit(I)Ljava/nio/Buffer;

    move-result-object v24

    .line 496
    move-object/from16 v24, v20

    move/from16 v25, v15

    invoke-virtual/range {v24 .. v25}, Ljava/nio/IntBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v24

    .line 497
    move-object/from16 v24, v20

    move-object/from16 v25, v19

    invoke-virtual/range {v24 .. v25}, Ljava/nio/IntBuffer;->put(Ljava/nio/IntBuffer;)Ljava/nio/IntBuffer;

    move-result-object v24

    .line 498
    move/from16 v24, v14

    move/from16 v25, v11

    add-int v24, v24, v25

    move/from16 v14, v24

    .line 499
    move/from16 v24, v15

    move/from16 v25, v12

    add-int v24, v24, v25

    move/from16 v15, v24

    .line 492
    add-int/lit8 v21, v21, 0x1

    goto :goto_2

    .line 501
    :cond_3
    move-object/from16 v24, v20

    move-object/from16 v16, v24

    .line 502
    .restart local v16    # "newBuf":Ljava/nio/Buffer;
    goto/16 :goto_1

    .line 504
    .end local v16    # "newBuf":Ljava/nio/Buffer;
    .end local v19    # "oldibuf":Ljava/nio/IntBuffer;
    .end local v20    # "newibuf":Ljava/nio/IntBuffer;
    .end local v21    # "y":I
    :pswitch_2
    move-object/from16 v24, v2

    check-cast v24, Ljava/nio/FloatBuffer;

    move-object/from16 v21, v24

    .line 505
    .local v21, "oldfbuf":Ljava/nio/FloatBuffer;
    move/from16 v24, v13

    invoke-static/range {v24 .. v24}, Lcom/sun/prism/impl/BufferUtil;->newFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v24

    move-object/from16 v22, v24

    .line 506
    .local v22, "newfbuf":Ljava/nio/FloatBuffer;
    const/16 v24, 0x0

    move/from16 v23, v24

    .local v23, "y":I
    :goto_3
    move/from16 v24, v23

    move/from16 v25, v7

    move/from16 v0, v24

    move/from16 v1, v25

    if-ge v0, v1, :cond_4

    .line 507
    move-object/from16 v24, v21

    move/from16 v25, v14

    move/from16 v26, v12

    add-int v25, v25, v26

    invoke-virtual/range {v24 .. v25}, Ljava/nio/FloatBuffer;->limit(I)Ljava/nio/Buffer;

    move-result-object v24

    .line 508
    move-object/from16 v24, v21

    move/from16 v25, v14

    invoke-virtual/range {v24 .. v25}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v24

    .line 509
    move-object/from16 v24, v22

    move/from16 v25, v15

    move/from16 v26, v12

    add-int v25, v25, v26

    invoke-virtual/range {v24 .. v25}, Ljava/nio/FloatBuffer;->limit(I)Ljava/nio/Buffer;

    move-result-object v24

    .line 510
    move-object/from16 v24, v22

    move/from16 v25, v15

    invoke-virtual/range {v24 .. v25}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v24

    .line 511
    move-object/from16 v24, v22

    move-object/from16 v25, v21

    invoke-virtual/range {v24 .. v25}, Ljava/nio/FloatBuffer;->put(Ljava/nio/FloatBuffer;)Ljava/nio/FloatBuffer;

    move-result-object v24

    .line 512
    move/from16 v24, v14

    move/from16 v25, v11

    add-int v24, v24, v25

    move/from16 v14, v24

    .line 513
    move/from16 v24, v15

    move/from16 v25, v12

    add-int v24, v24, v25

    move/from16 v15, v24

    .line 506
    add-int/lit8 v23, v23, 0x1

    goto :goto_3

    .line 515
    :cond_4
    move-object/from16 v24, v22

    move-object/from16 v16, v24

    .line 516
    .restart local v16    # "newBuf":Ljava/nio/Buffer;
    goto/16 :goto_1

    .line 474
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static fromByteAlphaData(Ljava/nio/ByteBuffer;II)Lcom/sun/prism/Image;
    .locals 10

    .prologue
    .line 174
    move-object v0, p0

    .local v0, "pixels":Ljava/nio/ByteBuffer;
    move v1, p1

    .local v1, "width":I
    move v2, p2

    .local v2, "height":I
    new-instance v3, Lcom/sun/prism/Image;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    sget-object v5, Lcom/sun/prism/PixelFormat;->BYTE_ALPHA:Lcom/sun/prism/PixelFormat;

    move-object v6, v0

    move v7, v1

    move v8, v2

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/sun/prism/Image;-><init>(Lcom/sun/prism/PixelFormat;Ljava/nio/Buffer;II)V

    move-object v0, v3

    .end local v0    # "pixels":Ljava/nio/ByteBuffer;
    return-object v0
.end method

.method public static fromByteAlphaData(Ljava/nio/ByteBuffer;III)Lcom/sun/prism/Image;
    .locals 14

    .prologue
    .line 178
    move-object v0, p0

    .local v0, "pixels":Ljava/nio/ByteBuffer;
    move v1, p1

    .local v1, "width":I
    move/from16 v2, p2

    .local v2, "height":I
    move/from16 v3, p3

    .local v3, "scanlineStride":I
    new-instance v4, Lcom/sun/prism/Image;

    move-object v13, v4

    move-object v4, v13

    move-object v5, v13

    sget-object v6, Lcom/sun/prism/PixelFormat;->BYTE_ALPHA:Lcom/sun/prism/PixelFormat;

    move-object v7, v0

    move v8, v1

    move v9, v2

    const/4 v10, 0x0

    const/4 v11, 0x0

    move v12, v3

    invoke-direct/range {v5 .. v12}, Lcom/sun/prism/Image;-><init>(Lcom/sun/prism/PixelFormat;Ljava/nio/Buffer;IIIII)V

    move-object v0, v4

    .end local v0    # "pixels":Ljava/nio/ByteBuffer;
    return-object v0
.end method

.method public static fromByteAlphaData([BII)Lcom/sun/prism/Image;
    .locals 10

    .prologue
    .line 170
    move-object v0, p0

    .local v0, "pixels":[B
    move v1, p1

    .local v1, "width":I
    move v2, p2

    .local v2, "height":I
    new-instance v3, Lcom/sun/prism/Image;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    sget-object v5, Lcom/sun/prism/PixelFormat;->BYTE_ALPHA:Lcom/sun/prism/PixelFormat;

    move-object v6, v0

    move v7, v1

    move v8, v2

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/sun/prism/Image;-><init>(Lcom/sun/prism/PixelFormat;[BII)V

    move-object v0, v3

    .end local v0    # "pixels":[B
    return-object v0
.end method

.method public static fromByteApple422Data(Ljava/nio/ByteBuffer;II)Lcom/sun/prism/Image;
    .locals 10

    .prologue
    .line 186
    move-object v0, p0

    .local v0, "pixels":Ljava/nio/ByteBuffer;
    move v1, p1

    .local v1, "width":I
    move v2, p2

    .local v2, "height":I
    new-instance v3, Lcom/sun/prism/Image;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    sget-object v5, Lcom/sun/prism/PixelFormat;->BYTE_APPLE_422:Lcom/sun/prism/PixelFormat;

    move-object v6, v0

    move v7, v1

    move v8, v2

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/sun/prism/Image;-><init>(Lcom/sun/prism/PixelFormat;Ljava/nio/Buffer;II)V

    move-object v0, v3

    .end local v0    # "pixels":Ljava/nio/ByteBuffer;
    return-object v0
.end method

.method public static fromByteApple422Data(Ljava/nio/ByteBuffer;III)Lcom/sun/prism/Image;
    .locals 14

    .prologue
    .line 190
    move-object v0, p0

    .local v0, "pixels":Ljava/nio/ByteBuffer;
    move v1, p1

    .local v1, "width":I
    move/from16 v2, p2

    .local v2, "height":I
    move/from16 v3, p3

    .local v3, "scanlineStride":I
    new-instance v4, Lcom/sun/prism/Image;

    move-object v13, v4

    move-object v4, v13

    move-object v5, v13

    sget-object v6, Lcom/sun/prism/PixelFormat;->BYTE_APPLE_422:Lcom/sun/prism/PixelFormat;

    move-object v7, v0

    move v8, v1

    move v9, v2

    const/4 v10, 0x0

    const/4 v11, 0x0

    move v12, v3

    invoke-direct/range {v5 .. v12}, Lcom/sun/prism/Image;-><init>(Lcom/sun/prism/PixelFormat;Ljava/nio/Buffer;IIIII)V

    move-object v0, v4

    .end local v0    # "pixels":Ljava/nio/ByteBuffer;
    return-object v0
.end method

.method public static fromByteApple422Data([BII)Lcom/sun/prism/Image;
    .locals 10

    .prologue
    .line 182
    move-object v0, p0

    .local v0, "pixels":[B
    move v1, p1

    .local v1, "width":I
    move v2, p2

    .local v2, "height":I
    new-instance v3, Lcom/sun/prism/Image;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    sget-object v5, Lcom/sun/prism/PixelFormat;->BYTE_APPLE_422:Lcom/sun/prism/PixelFormat;

    move-object v6, v0

    move v7, v1

    move v8, v2

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/sun/prism/Image;-><init>(Lcom/sun/prism/PixelFormat;[BII)V

    move-object v0, v3

    .end local v0    # "pixels":[B
    return-object v0
.end method

.method public static fromByteBgraPreData(Ljava/nio/ByteBuffer;II)Lcom/sun/prism/Image;
    .locals 10

    .prologue
    .line 111
    move-object v0, p0

    .local v0, "pixels":Ljava/nio/ByteBuffer;
    move v1, p1

    .local v1, "width":I
    move v2, p2

    .local v2, "height":I
    new-instance v3, Lcom/sun/prism/Image;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    sget-object v5, Lcom/sun/prism/PixelFormat;->BYTE_BGRA_PRE:Lcom/sun/prism/PixelFormat;

    move-object v6, v0

    move v7, v1

    move v8, v2

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/sun/prism/Image;-><init>(Lcom/sun/prism/PixelFormat;Ljava/nio/Buffer;II)V

    move-object v0, v3

    .end local v0    # "pixels":Ljava/nio/ByteBuffer;
    return-object v0
.end method

.method public static fromByteBgraPreData(Ljava/nio/ByteBuffer;III)Lcom/sun/prism/Image;
    .locals 14

    .prologue
    .line 115
    move-object v0, p0

    .local v0, "pixels":Ljava/nio/ByteBuffer;
    move v1, p1

    .local v1, "width":I
    move/from16 v2, p2

    .local v2, "height":I
    move/from16 v3, p3

    .local v3, "scanlineStride":I
    new-instance v4, Lcom/sun/prism/Image;

    move-object v13, v4

    move-object v4, v13

    move-object v5, v13

    sget-object v6, Lcom/sun/prism/PixelFormat;->BYTE_BGRA_PRE:Lcom/sun/prism/PixelFormat;

    move-object v7, v0

    move v8, v1

    move v9, v2

    const/4 v10, 0x0

    const/4 v11, 0x0

    move v12, v3

    invoke-direct/range {v5 .. v12}, Lcom/sun/prism/Image;-><init>(Lcom/sun/prism/PixelFormat;Ljava/nio/Buffer;IIIII)V

    move-object v0, v4

    .end local v0    # "pixels":Ljava/nio/ByteBuffer;
    return-object v0
.end method

.method public static fromByteBgraPreData(Ljava/nio/ByteBuffer;IIIF)Lcom/sun/prism/Image;
    .locals 16

    .prologue
    .line 122
    move-object/from16 v0, p0

    .local v0, "pixels":Ljava/nio/ByteBuffer;
    move/from16 v1, p1

    .local v1, "width":I
    move/from16 v2, p2

    .local v2, "height":I
    move/from16 v3, p3

    .local v3, "scanlineStride":I
    move/from16 v4, p4

    .local v4, "pixelScale":F
    new-instance v5, Lcom/sun/prism/Image;

    move-object v15, v5

    move-object v5, v15

    move-object v6, v15

    sget-object v7, Lcom/sun/prism/PixelFormat;->BYTE_BGRA_PRE:Lcom/sun/prism/PixelFormat;

    move-object v8, v0

    move v9, v1

    move v10, v2

    const/4 v11, 0x0

    const/4 v12, 0x0

    move v13, v3

    move v14, v4

    invoke-direct/range {v6 .. v14}, Lcom/sun/prism/Image;-><init>(Lcom/sun/prism/PixelFormat;Ljava/nio/Buffer;IIIIIF)V

    move-object v0, v5

    .end local v0    # "pixels":Ljava/nio/ByteBuffer;
    return-object v0
.end method

.method public static fromByteBgraPreData([BII)Lcom/sun/prism/Image;
    .locals 10

    .prologue
    .line 98
    move-object v0, p0

    .local v0, "pixels":[B
    move v1, p1

    .local v1, "width":I
    move v2, p2

    .local v2, "height":I
    new-instance v3, Lcom/sun/prism/Image;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    sget-object v5, Lcom/sun/prism/PixelFormat;->BYTE_BGRA_PRE:Lcom/sun/prism/PixelFormat;

    move-object v6, v0

    move v7, v1

    move v8, v2

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/sun/prism/Image;-><init>(Lcom/sun/prism/PixelFormat;[BII)V

    move-object v0, v3

    .end local v0    # "pixels":[B
    return-object v0
.end method

.method public static fromByteBgraPreData([BIIF)Lcom/sun/prism/Image;
    .locals 15

    .prologue
    .line 105
    move-object v0, p0

    .local v0, "pixels":[B
    move/from16 v1, p1

    .local v1, "width":I
    move/from16 v2, p2

    .local v2, "height":I
    move/from16 v3, p3

    .local v3, "pixelScale":F
    new-instance v4, Lcom/sun/prism/Image;

    move-object v14, v4

    move-object v4, v14

    move-object v5, v14

    sget-object v6, Lcom/sun/prism/PixelFormat;->BYTE_BGRA_PRE:Lcom/sun/prism/PixelFormat;

    move-object v7, v0

    invoke-static {v7}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v7

    move v8, v1

    move v9, v2

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move v13, v3

    invoke-direct/range {v5 .. v13}, Lcom/sun/prism/Image;-><init>(Lcom/sun/prism/PixelFormat;Ljava/nio/Buffer;IIIIIF)V

    move-object v0, v4

    .end local v0    # "pixels":[B
    return-object v0
.end method

.method public static fromByteGrayData(Ljava/nio/ByteBuffer;II)Lcom/sun/prism/Image;
    .locals 10

    .prologue
    .line 153
    move-object v0, p0

    .local v0, "pixels":Ljava/nio/ByteBuffer;
    move v1, p1

    .local v1, "width":I
    move v2, p2

    .local v2, "height":I
    new-instance v3, Lcom/sun/prism/Image;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    sget-object v5, Lcom/sun/prism/PixelFormat;->BYTE_GRAY:Lcom/sun/prism/PixelFormat;

    move-object v6, v0

    move v7, v1

    move v8, v2

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/sun/prism/Image;-><init>(Lcom/sun/prism/PixelFormat;Ljava/nio/Buffer;II)V

    move-object v0, v3

    .end local v0    # "pixels":Ljava/nio/ByteBuffer;
    return-object v0
.end method

.method public static fromByteGrayData(Ljava/nio/ByteBuffer;III)Lcom/sun/prism/Image;
    .locals 14

    .prologue
    .line 157
    move-object v0, p0

    .local v0, "pixels":Ljava/nio/ByteBuffer;
    move v1, p1

    .local v1, "width":I
    move/from16 v2, p2

    .local v2, "height":I
    move/from16 v3, p3

    .local v3, "scanlineStride":I
    new-instance v4, Lcom/sun/prism/Image;

    move-object v13, v4

    move-object v4, v13

    move-object v5, v13

    sget-object v6, Lcom/sun/prism/PixelFormat;->BYTE_GRAY:Lcom/sun/prism/PixelFormat;

    move-object v7, v0

    move v8, v1

    move v9, v2

    const/4 v10, 0x0

    const/4 v11, 0x0

    move v12, v3

    invoke-direct/range {v5 .. v12}, Lcom/sun/prism/Image;-><init>(Lcom/sun/prism/PixelFormat;Ljava/nio/Buffer;IIIII)V

    move-object v0, v4

    .end local v0    # "pixels":Ljava/nio/ByteBuffer;
    return-object v0
.end method

.method public static fromByteGrayData(Ljava/nio/ByteBuffer;IIIF)Lcom/sun/prism/Image;
    .locals 16

    .prologue
    .line 164
    move-object/from16 v0, p0

    .local v0, "pixels":Ljava/nio/ByteBuffer;
    move/from16 v1, p1

    .local v1, "width":I
    move/from16 v2, p2

    .local v2, "height":I
    move/from16 v3, p3

    .local v3, "scanlineStride":I
    move/from16 v4, p4

    .local v4, "pixelScale":F
    new-instance v5, Lcom/sun/prism/Image;

    move-object v15, v5

    move-object v5, v15

    move-object v6, v15

    sget-object v7, Lcom/sun/prism/PixelFormat;->BYTE_GRAY:Lcom/sun/prism/PixelFormat;

    move-object v8, v0

    move v9, v1

    move v10, v2

    const/4 v11, 0x0

    const/4 v12, 0x0

    move v13, v3

    move v14, v4

    invoke-direct/range {v6 .. v14}, Lcom/sun/prism/Image;-><init>(Lcom/sun/prism/PixelFormat;Ljava/nio/Buffer;IIIIIF)V

    move-object v0, v5

    .end local v0    # "pixels":Ljava/nio/ByteBuffer;
    return-object v0
.end method

.method public static fromByteGrayData([BII)Lcom/sun/prism/Image;
    .locals 10

    .prologue
    .line 149
    move-object v0, p0

    .local v0, "pixels":[B
    move v1, p1

    .local v1, "width":I
    move v2, p2

    .local v2, "height":I
    new-instance v3, Lcom/sun/prism/Image;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    sget-object v5, Lcom/sun/prism/PixelFormat;->BYTE_GRAY:Lcom/sun/prism/PixelFormat;

    move-object v6, v0

    move v7, v1

    move v8, v2

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/sun/prism/Image;-><init>(Lcom/sun/prism/PixelFormat;[BII)V

    move-object v0, v3

    .end local v0    # "pixels":[B
    return-object v0
.end method

.method public static fromByteRgbData(Ljava/nio/ByteBuffer;II)Lcom/sun/prism/Image;
    .locals 10

    .prologue
    .line 132
    move-object v0, p0

    .local v0, "pixels":Ljava/nio/ByteBuffer;
    move v1, p1

    .local v1, "width":I
    move v2, p2

    .local v2, "height":I
    new-instance v3, Lcom/sun/prism/Image;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    sget-object v5, Lcom/sun/prism/PixelFormat;->BYTE_RGB:Lcom/sun/prism/PixelFormat;

    move-object v6, v0

    move v7, v1

    move v8, v2

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/sun/prism/Image;-><init>(Lcom/sun/prism/PixelFormat;Ljava/nio/Buffer;II)V

    move-object v0, v3

    .end local v0    # "pixels":Ljava/nio/ByteBuffer;
    return-object v0
.end method

.method public static fromByteRgbData(Ljava/nio/ByteBuffer;III)Lcom/sun/prism/Image;
    .locals 14

    .prologue
    .line 136
    move-object v0, p0

    .local v0, "pixels":Ljava/nio/ByteBuffer;
    move v1, p1

    .local v1, "width":I
    move/from16 v2, p2

    .local v2, "height":I
    move/from16 v3, p3

    .local v3, "scanlineStride":I
    new-instance v4, Lcom/sun/prism/Image;

    move-object v13, v4

    move-object v4, v13

    move-object v5, v13

    sget-object v6, Lcom/sun/prism/PixelFormat;->BYTE_RGB:Lcom/sun/prism/PixelFormat;

    move-object v7, v0

    move v8, v1

    move v9, v2

    const/4 v10, 0x0

    const/4 v11, 0x0

    move v12, v3

    invoke-direct/range {v5 .. v12}, Lcom/sun/prism/Image;-><init>(Lcom/sun/prism/PixelFormat;Ljava/nio/Buffer;IIIII)V

    move-object v0, v4

    .end local v0    # "pixels":Ljava/nio/ByteBuffer;
    return-object v0
.end method

.method public static fromByteRgbData(Ljava/nio/ByteBuffer;IIIF)Lcom/sun/prism/Image;
    .locals 16

    .prologue
    .line 143
    move-object/from16 v0, p0

    .local v0, "pixels":Ljava/nio/ByteBuffer;
    move/from16 v1, p1

    .local v1, "width":I
    move/from16 v2, p2

    .local v2, "height":I
    move/from16 v3, p3

    .local v3, "scanlineStride":I
    move/from16 v4, p4

    .local v4, "pixelScale":F
    new-instance v5, Lcom/sun/prism/Image;

    move-object v15, v5

    move-object v5, v15

    move-object v6, v15

    sget-object v7, Lcom/sun/prism/PixelFormat;->BYTE_RGB:Lcom/sun/prism/PixelFormat;

    move-object v8, v0

    move v9, v1

    move v10, v2

    const/4 v11, 0x0

    const/4 v12, 0x0

    move v13, v3

    move v14, v4

    invoke-direct/range {v6 .. v14}, Lcom/sun/prism/Image;-><init>(Lcom/sun/prism/PixelFormat;Ljava/nio/Buffer;IIIIIF)V

    move-object v0, v5

    .end local v0    # "pixels":Ljava/nio/ByteBuffer;
    return-object v0
.end method

.method public static fromByteRgbData([BII)Lcom/sun/prism/Image;
    .locals 10

    .prologue
    .line 128
    move-object v0, p0

    .local v0, "pixels":[B
    move v1, p1

    .local v1, "width":I
    move v2, p2

    .local v2, "height":I
    new-instance v3, Lcom/sun/prism/Image;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    sget-object v5, Lcom/sun/prism/PixelFormat;->BYTE_RGB:Lcom/sun/prism/PixelFormat;

    move-object v6, v0

    move v7, v1

    move v8, v2

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/sun/prism/Image;-><init>(Lcom/sun/prism/PixelFormat;[BII)V

    move-object v0, v3

    .end local v0    # "pixels":[B
    return-object v0
.end method

.method public static fromFloatMapData(Ljava/nio/FloatBuffer;II)Lcom/sun/prism/Image;
    .locals 10

    .prologue
    .line 194
    move-object v0, p0

    .local v0, "pixels":Ljava/nio/FloatBuffer;
    move v1, p1

    .local v1, "width":I
    move v2, p2

    .local v2, "height":I
    new-instance v3, Lcom/sun/prism/Image;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    sget-object v5, Lcom/sun/prism/PixelFormat;->FLOAT_XYZW:Lcom/sun/prism/PixelFormat;

    move-object v6, v0

    move v7, v1

    move v8, v2

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/sun/prism/Image;-><init>(Lcom/sun/prism/PixelFormat;Ljava/nio/Buffer;II)V

    move-object v0, v3

    .end local v0    # "pixels":Ljava/nio/FloatBuffer;
    return-object v0
.end method

.method public static fromIntArgbPreData(Ljava/nio/IntBuffer;II)Lcom/sun/prism/Image;
    .locals 10

    .prologue
    .line 81
    move-object v0, p0

    .local v0, "pixels":Ljava/nio/IntBuffer;
    move v1, p1

    .local v1, "width":I
    move v2, p2

    .local v2, "height":I
    new-instance v3, Lcom/sun/prism/Image;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    sget-object v5, Lcom/sun/prism/PixelFormat;->INT_ARGB_PRE:Lcom/sun/prism/PixelFormat;

    move-object v6, v0

    move v7, v1

    move v8, v2

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/sun/prism/Image;-><init>(Lcom/sun/prism/PixelFormat;Ljava/nio/Buffer;II)V

    move-object v0, v3

    .end local v0    # "pixels":Ljava/nio/IntBuffer;
    return-object v0
.end method

.method public static fromIntArgbPreData(Ljava/nio/IntBuffer;III)Lcom/sun/prism/Image;
    .locals 14

    .prologue
    .line 85
    move-object v0, p0

    .local v0, "pixels":Ljava/nio/IntBuffer;
    move v1, p1

    .local v1, "width":I
    move/from16 v2, p2

    .local v2, "height":I
    move/from16 v3, p3

    .local v3, "scanlineStride":I
    new-instance v4, Lcom/sun/prism/Image;

    move-object v13, v4

    move-object v4, v13

    move-object v5, v13

    sget-object v6, Lcom/sun/prism/PixelFormat;->INT_ARGB_PRE:Lcom/sun/prism/PixelFormat;

    move-object v7, v0

    move v8, v1

    move v9, v2

    const/4 v10, 0x0

    const/4 v11, 0x0

    move v12, v3

    invoke-direct/range {v5 .. v12}, Lcom/sun/prism/Image;-><init>(Lcom/sun/prism/PixelFormat;Ljava/nio/Buffer;IIIII)V

    move-object v0, v4

    .end local v0    # "pixels":Ljava/nio/IntBuffer;
    return-object v0
.end method

.method public static fromIntArgbPreData(Ljava/nio/IntBuffer;IIIF)Lcom/sun/prism/Image;
    .locals 16

    .prologue
    .line 92
    move-object/from16 v0, p0

    .local v0, "pixels":Ljava/nio/IntBuffer;
    move/from16 v1, p1

    .local v1, "width":I
    move/from16 v2, p2

    .local v2, "height":I
    move/from16 v3, p3

    .local v3, "scanlineStride":I
    move/from16 v4, p4

    .local v4, "pixelScale":F
    new-instance v5, Lcom/sun/prism/Image;

    move-object v15, v5

    move-object v5, v15

    move-object v6, v15

    sget-object v7, Lcom/sun/prism/PixelFormat;->INT_ARGB_PRE:Lcom/sun/prism/PixelFormat;

    move-object v8, v0

    move v9, v1

    move v10, v2

    const/4 v11, 0x0

    const/4 v12, 0x0

    move v13, v3

    move v14, v4

    invoke-direct/range {v6 .. v14}, Lcom/sun/prism/Image;-><init>(Lcom/sun/prism/PixelFormat;Ljava/nio/Buffer;IIIIIF)V

    move-object v0, v5

    .end local v0    # "pixels":Ljava/nio/IntBuffer;
    return-object v0
.end method

.method public static fromIntArgbPreData([III)Lcom/sun/prism/Image;
    .locals 10

    .prologue
    .line 77
    move-object v0, p0

    .local v0, "pixels":[I
    move v1, p1

    .local v1, "width":I
    move v2, p2

    .local v2, "height":I
    new-instance v3, Lcom/sun/prism/Image;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    sget-object v5, Lcom/sun/prism/PixelFormat;->INT_ARGB_PRE:Lcom/sun/prism/PixelFormat;

    move-object v6, v0

    move v7, v1

    move v8, v2

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/sun/prism/Image;-><init>(Lcom/sun/prism/PixelFormat;[III)V

    move-object v0, v3

    .end local v0    # "pixels":[I
    return-object v0
.end method

.method static getGrayFXPixelFormat()Ljavafx/scene/image/PixelFormat;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/scene/image/PixelFormat",
            "<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1159
    sget-object v3, Lcom/sun/prism/Image;->FX_ByteGray_FORMAT:Ljavafx/scene/image/PixelFormat;

    if-nez v3, :cond_1

    .line 1160
    const/16 v3, 0x100

    new-array v3, v3, [I

    move-object v0, v3

    .line 1161
    .local v0, "grays":[I
    const/high16 v3, -0x1000000

    move v1, v3

    .line 1162
    .local v1, "gray":I
    const/4 v3, 0x0

    move v2, v3

    .local v2, "i":I
    :goto_0
    move v3, v2

    const/16 v4, 0x100

    if-ge v3, v4, :cond_0

    .line 1163
    move-object v3, v0

    move v4, v2

    move v5, v1

    aput v5, v3, v4

    .line 1164
    move v3, v1

    const v4, 0x10101

    add-int/2addr v3, v4

    move v1, v3

    .line 1162
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1166
    :cond_0
    move-object v3, v0

    .line 1167
    invoke-static {v3}, Ljavafx/scene/image/PixelFormat;->createByteIndexedPremultipliedInstance([I)Ljavafx/scene/image/PixelFormat;

    move-result-object v3

    sput-object v3, Lcom/sun/prism/Image;->FX_ByteGray_FORMAT:Ljavafx/scene/image/PixelFormat;

    .line 1169
    :cond_1
    sget-object v3, Lcom/sun/prism/Image;->FX_ByteGray_FORMAT:Ljavafx/scene/image/PixelFormat;

    move-object v0, v3

    .end local v0    # "grays":[I
    return-object v0
.end method

.method private getPixelAccessor()Lcom/sun/prism/Image$Accessor;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/sun/prism/Image$Accessor",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 592
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/Image;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/prism/Image;->pixelaccessor:Lcom/sun/prism/Image$Accessor;

    if-nez v1, :cond_0

    .line 593
    sget-object v1, Lcom/sun/prism/Image$1;->$SwitchMap$com$sun$prism$PixelFormat:[I

    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/prism/Image;->getPixelFormat()Lcom/sun/prism/PixelFormat;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sun/prism/PixelFormat;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 599
    move-object v1, v0

    new-instance v2, Lcom/sun/prism/Image$UnsupportedAccess;

    move-object v10, v2

    move-object v2, v10

    move-object v3, v10

    move-object v4, v0

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/sun/prism/Image$UnsupportedAccess;-><init>(Lcom/sun/prism/Image;Lcom/sun/prism/Image$1;)V

    iput-object v2, v1, Lcom/sun/prism/Image;->pixelaccessor:Lcom/sun/prism/Image$Accessor;

    .line 600
    .line 619
    :cond_0
    :goto_0
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/prism/Image;->pixelaccessor:Lcom/sun/prism/Image$Accessor;

    if-eqz v1, :cond_1

    move-object v1, v0

    iget v1, v1, Lcom/sun/prism/Image;->pixelScale:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_1

    .line 620
    move-object v1, v0

    new-instance v2, Lcom/sun/prism/Image$ScaledAccessor;

    move-object v10, v2

    move-object v2, v10

    move-object v3, v10

    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/prism/Image;->pixelaccessor:Lcom/sun/prism/Image$Accessor;

    move-object v6, v0

    iget v6, v6, Lcom/sun/prism/Image;->pixelScale:F

    invoke-direct {v3, v4, v5, v6}, Lcom/sun/prism/Image$ScaledAccessor;-><init>(Lcom/sun/prism/Image;Lcom/sun/prism/Image$Accessor;F)V

    iput-object v2, v1, Lcom/sun/prism/Image;->pixelaccessor:Lcom/sun/prism/Image$Accessor;

    .line 622
    :cond_1
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/prism/Image;->pixelaccessor:Lcom/sun/prism/Image$Accessor;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/prism/Image;
    return-object v0

    .line 602
    .restart local v0    # "this":Lcom/sun/prism/Image;
    :pswitch_0
    move-object v1, v0

    new-instance v2, Lcom/sun/prism/Image$ByteAccess;

    move-object v10, v2

    move-object v2, v10

    move-object v3, v10

    move-object v4, v0

    invoke-static {}, Lcom/sun/prism/Image;->getGrayFXPixelFormat()Ljavafx/scene/image/PixelFormat;

    move-result-object v5

    sget-object v6, Lcom/sun/javafx/image/impl/ByteGray;->getter:Lcom/sun/javafx/image/BytePixelGetter;

    const/4 v7, 0x0

    move-object v8, v0

    iget-object v8, v8, Lcom/sun/prism/Image;->pixelBuffer:Ljava/nio/Buffer;

    check-cast v8, Ljava/nio/ByteBuffer;

    const/4 v9, 0x1

    invoke-direct/range {v3 .. v9}, Lcom/sun/prism/Image$ByteAccess;-><init>(Lcom/sun/prism/Image;Ljavafx/scene/image/PixelFormat;Lcom/sun/javafx/image/PixelGetter;Lcom/sun/javafx/image/PixelSetter;Ljava/nio/ByteBuffer;I)V

    iput-object v2, v1, Lcom/sun/prism/Image;->pixelaccessor:Lcom/sun/prism/Image$Accessor;

    .line 605
    goto :goto_0

    .line 607
    :pswitch_1
    move-object v1, v0

    new-instance v2, Lcom/sun/prism/Image$ByteRgbAccess;

    move-object v10, v2

    move-object v2, v10

    move-object v3, v10

    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/prism/Image;->pixelBuffer:Ljava/nio/Buffer;

    check-cast v5, Ljava/nio/ByteBuffer;

    invoke-direct {v3, v4, v5}, Lcom/sun/prism/Image$ByteRgbAccess;-><init>(Lcom/sun/prism/Image;Ljava/nio/ByteBuffer;)V

    iput-object v2, v1, Lcom/sun/prism/Image;->pixelaccessor:Lcom/sun/prism/Image$Accessor;

    .line 608
    goto :goto_0

    .line 610
    :pswitch_2
    move-object v1, v0

    new-instance v2, Lcom/sun/prism/Image$ByteAccess;

    move-object v10, v2

    move-object v2, v10

    move-object v3, v10

    move-object v4, v0

    sget-object v5, Lcom/sun/prism/Image;->FX_ByteBgraPre_FORMAT:Ljavafx/scene/image/WritablePixelFormat;

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/prism/Image;->pixelBuffer:Ljava/nio/Buffer;

    check-cast v6, Ljava/nio/ByteBuffer;

    const/4 v7, 0x4

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/sun/prism/Image$ByteAccess;-><init>(Lcom/sun/prism/Image;Ljavafx/scene/image/PixelFormat;Ljava/nio/ByteBuffer;I)V

    iput-object v2, v1, Lcom/sun/prism/Image;->pixelaccessor:Lcom/sun/prism/Image$Accessor;

    .line 612
    goto :goto_0

    .line 614
    :pswitch_3
    move-object v1, v0

    new-instance v2, Lcom/sun/prism/Image$IntAccess;

    move-object v10, v2

    move-object v2, v10

    move-object v3, v10

    move-object v4, v0

    sget-object v5, Lcom/sun/prism/Image;->FX_IntArgbPre_FORMAT:Ljavafx/scene/image/WritablePixelFormat;

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/prism/Image;->pixelBuffer:Ljava/nio/Buffer;

    check-cast v6, Ljava/nio/IntBuffer;

    invoke-direct {v3, v4, v5, v6}, Lcom/sun/prism/Image$IntAccess;-><init>(Lcom/sun/prism/Image;Ljavafx/scene/image/PixelFormat;Ljava/nio/IntBuffer;)V

    iput-object v2, v1, Lcom/sun/prism/Image;->pixelaccessor:Lcom/sun/prism/Image$Accessor;

    goto :goto_0

    .line 593
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method static getSetterIfWritable(Ljavafx/scene/image/PixelFormat;)Lcom/sun/javafx/image/PixelSetter;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/nio/Buffer;",
            ">(",
            "Ljavafx/scene/image/PixelFormat",
            "<TI;>;)",
            "Lcom/sun/javafx/image/PixelSetter",
            "<TI;>;"
        }
    .end annotation

    .prologue
    .line 898
    move-object v0, p0

    .local v0, "theFormat":Ljavafx/scene/image/PixelFormat;, "Ljavafx/scene/image/PixelFormat<TI;>;"
    move-object v1, v0

    instance-of v1, v1, Ljavafx/scene/image/WritablePixelFormat;

    if-eqz v1, :cond_0

    .line 899
    move-object v1, v0

    check-cast v1, Ljavafx/scene/image/WritablePixelFormat;

    invoke-static {v1}, Lcom/sun/javafx/image/PixelUtils;->getSetter(Ljavafx/scene/image/WritablePixelFormat;)Lcom/sun/javafx/image/PixelSetter;

    move-result-object v1

    move-object v0, v1

    .line 901
    .end local v0    # "theFormat":Ljavafx/scene/image/PixelFormat;, "Ljavafx/scene/image/PixelFormat<TI;>;"
    :goto_0
    return-object v0

    .restart local v0    # "theFormat":Ljavafx/scene/image/PixelFormat;, "Ljavafx/scene/image/PixelFormat<TI;>;"
    :cond_0
    const/4 v1, 0x0

    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method public createPackedCopy()Lcom/sun/prism/Image;
    .locals 13

    .prologue
    .line 411
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/Image;
    move-object v3, v0

    iget v3, v3, Lcom/sun/prism/Image;->width:I

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/prism/Image;->pixelFormat:Lcom/sun/prism/PixelFormat;

    invoke-virtual {v4}, Lcom/sun/prism/PixelFormat;->getBytesPerPixelUnit()I

    move-result v4

    mul-int/2addr v3, v4

    move v1, v3

    .line 412
    .local v1, "newBytesPerRow":I
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/prism/Image;->pixelBuffer:Ljava/nio/Buffer;

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/prism/Image;->pixelFormat:Lcom/sun/prism/PixelFormat;

    move-object v5, v0

    iget v5, v5, Lcom/sun/prism/Image;->minX:I

    move-object v6, v0

    iget v6, v6, Lcom/sun/prism/Image;->minY:I

    move-object v7, v0

    iget v7, v7, Lcom/sun/prism/Image;->width:I

    move-object v8, v0

    iget v8, v8, Lcom/sun/prism/Image;->height:I

    move-object v9, v0

    iget v9, v9, Lcom/sun/prism/Image;->scanlineStride:I

    invoke-static/range {v3 .. v9}, Lcom/sun/prism/Image;->createPackedBuffer(Ljava/nio/Buffer;Lcom/sun/prism/PixelFormat;IIIII)Ljava/nio/Buffer;

    move-result-object v3

    move-object v2, v3

    .line 415
    .local v2, "newBuf":Ljava/nio/Buffer;
    new-instance v3, Lcom/sun/prism/Image;

    move-object v12, v3

    move-object v3, v12

    move-object v4, v12

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/prism/Image;->pixelFormat:Lcom/sun/prism/PixelFormat;

    move-object v6, v2

    move-object v7, v0

    iget v7, v7, Lcom/sun/prism/Image;->width:I

    move-object v8, v0

    iget v8, v8, Lcom/sun/prism/Image;->height:I

    const/4 v9, 0x0

    const/4 v10, 0x0

    move v11, v1

    invoke-direct/range {v4 .. v11}, Lcom/sun/prism/Image;-><init>(Lcom/sun/prism/PixelFormat;Ljava/nio/Buffer;IIIII)V

    move-object v0, v3

    .end local v0    # "this":Lcom/sun/prism/Image;
    return-object v0
.end method

.method public createPackedCopyIfNeeded()Lcom/sun/prism/Image;
    .locals 4

    .prologue
    .line 428
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/Image;
    move-object v2, v0

    iget v2, v2, Lcom/sun/prism/Image;->width:I

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/prism/Image;->pixelFormat:Lcom/sun/prism/PixelFormat;

    invoke-virtual {v3}, Lcom/sun/prism/PixelFormat;->getBytesPerPixelUnit()I

    move-result v3

    mul-int/2addr v2, v3

    move v1, v2

    .line 430
    .local v1, "newBytesPerRow":I
    move v2, v1

    move-object v3, v0

    iget v3, v3, Lcom/sun/prism/Image;->scanlineStride:I

    if-ne v2, v3, :cond_0

    move-object v2, v0

    iget v2, v2, Lcom/sun/prism/Image;->minX:I

    if-nez v2, :cond_0

    move-object v2, v0

    iget v2, v2, Lcom/sun/prism/Image;->minY:I

    if-nez v2, :cond_0

    .line 431
    move-object v2, v0

    move-object v0, v2

    .line 433
    .end local v0    # "this":Lcom/sun/prism/Image;
    :goto_0
    return-object v0

    .restart local v0    # "this":Lcom/sun/prism/Image;
    :cond_0
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/prism/Image;->createPackedCopy()Lcom/sun/prism/Image;

    move-result-object v2

    move-object v0, v2

    goto :goto_0
.end method

.method public createSubImage(IIII)Lcom/sun/prism/Image;
    .locals 16

    .prologue
    .line 380
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/prism/Image;
    move/from16 v1, p1

    .local v1, "x":I
    move/from16 v2, p2

    .local v2, "y":I
    move/from16 v3, p3

    .local v3, "w":I
    move/from16 v4, p4

    .local v4, "h":I
    move v6, v3

    if-lez v6, :cond_0

    move v6, v4

    if-gtz v6, :cond_1

    .line 381
    :cond_0
    new-instance v6, Ljava/lang/IllegalArgumentException;

    move-object v15, v6

    move-object v6, v15

    move-object v7, v15

    const-string v8, "Subimage dimensions must be > 0"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 383
    :cond_1
    move v6, v1

    if-ltz v6, :cond_2

    move v6, v2

    if-gez v6, :cond_3

    .line 384
    :cond_2
    new-instance v6, Ljava/lang/IllegalArgumentException;

    move-object v15, v6

    move-object v6, v15

    move-object v7, v15

    const-string v8, "Subimage minX and minY must be >= 0"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 386
    :cond_3
    move v6, v1

    move v7, v3

    add-int/2addr v6, v7

    move-object v7, v0

    iget v7, v7, Lcom/sun/prism/Image;->width:I

    if-le v6, v7, :cond_4

    .line 387
    new-instance v6, Ljava/lang/IllegalArgumentException;

    move-object v15, v6

    move-object v6, v15

    move-object v7, v15

    const-string v8, "Subimage minX+width must be <= width of parent image"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 390
    :cond_4
    move v6, v2

    move v7, v4

    add-int/2addr v6, v7

    move-object v7, v0

    iget v7, v7, Lcom/sun/prism/Image;->height:I

    if-le v6, v7, :cond_5

    .line 391
    new-instance v6, Ljava/lang/IllegalArgumentException;

    move-object v15, v6

    move-object v6, v15

    move-object v7, v15

    const-string v8, "Subimage minY+height must be <= height of parent image"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 394
    :cond_5
    new-instance v6, Lcom/sun/prism/Image;

    move-object v15, v6

    move-object v6, v15

    move-object v7, v15

    move-object v8, v0

    iget-object v8, v8, Lcom/sun/prism/Image;->pixelFormat:Lcom/sun/prism/PixelFormat;

    move-object v9, v0

    iget-object v9, v9, Lcom/sun/prism/Image;->pixelBuffer:Ljava/nio/Buffer;

    move v10, v3

    move v11, v4

    move-object v12, v0

    iget v12, v12, Lcom/sun/prism/Image;->minX:I

    move v13, v1

    add-int/2addr v12, v13

    move-object v13, v0

    iget v13, v13, Lcom/sun/prism/Image;->minY:I

    move v14, v2

    add-int/2addr v13, v14

    move-object v14, v0

    iget v14, v14, Lcom/sun/prism/Image;->scanlineStride:I

    invoke-direct/range {v7 .. v14}, Lcom/sun/prism/Image;-><init>(Lcom/sun/prism/PixelFormat;Ljava/nio/Buffer;IIIII)V

    move-object v5, v6

    .line 396
    .local v5, "subimg":Lcom/sun/prism/Image;
    move-object v6, v5

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/prism/Image;->serial:[I

    iput-object v7, v6, Lcom/sun/prism/Image;->serial:[I

    .line 397
    move-object v6, v5

    move-object v0, v6

    .end local v0    # "this":Lcom/sun/prism/Image;
    return-object v0
.end method

.method public getArgb(II)I
    .locals 6

    .prologue
    .line 642
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/Image;
    move v1, p1

    .local v1, "x":I
    move v2, p2

    .local v2, "y":I
    move-object v3, v0

    invoke-direct {v3}, Lcom/sun/prism/Image;->getPixelAccessor()Lcom/sun/prism/Image$Accessor;

    move-result-object v3

    move v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/sun/prism/Image$Accessor;->getArgb(II)I

    move-result v3

    move v0, v3

    .end local v0    # "this":Lcom/sun/prism/Image;
    return v0
.end method

.method public getBytesPerPixelUnit()I
    .locals 2

    .prologue
    .line 323
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/Image;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/prism/Image;->pixelFormat:Lcom/sun/prism/PixelFormat;

    invoke-virtual {v1}, Lcom/sun/prism/PixelFormat;->getBytesPerPixelUnit()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/prism/Image;
    return v0
.end method

.method public getDataType()Lcom/sun/prism/PixelFormat$DataType;
    .locals 2

    .prologue
    .line 319
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/Image;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/prism/Image;->pixelFormat:Lcom/sun/prism/PixelFormat;

    invoke-virtual {v1}, Lcom/sun/prism/PixelFormat;->getDataType()Lcom/sun/prism/PixelFormat$DataType;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/prism/Image;
    return-object v0
.end method

.method public getHeight()I
    .locals 2

    .prologue
    .line 343
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/Image;
    move-object v1, v0

    iget v1, v1, Lcom/sun/prism/Image;->height:I

    move v0, v1

    .end local v0    # "this":Lcom/sun/prism/Image;
    return v0
.end method

.method public getMinX()I
    .locals 2

    .prologue
    .line 331
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/Image;
    move-object v1, v0

    iget v1, v1, Lcom/sun/prism/Image;->minX:I

    move v0, v1

    .end local v0    # "this":Lcom/sun/prism/Image;
    return v0
.end method

.method public getMinY()I
    .locals 2

    .prologue
    .line 335
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/Image;
    move-object v1, v0

    iget v1, v1, Lcom/sun/prism/Image;->minY:I

    move v0, v1

    .end local v0    # "this":Lcom/sun/prism/Image;
    return v0
.end method

.method public getPixelBuffer()Ljava/nio/Buffer;
    .locals 2

    .prologue
    .line 327
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/Image;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/prism/Image;->pixelBuffer:Ljava/nio/Buffer;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/prism/Image;
    return-object v0
.end method

.method public getPixelFormat()Lcom/sun/prism/PixelFormat;
    .locals 2

    .prologue
    .line 315
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/Image;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/prism/Image;->pixelFormat:Lcom/sun/prism/PixelFormat;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/prism/Image;
    return-object v0
.end method

.method public getPixelScale()F
    .locals 2

    .prologue
    .line 352
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/Image;
    move-object v1, v0

    iget v1, v1, Lcom/sun/prism/Image;->pixelScale:F

    move v0, v1

    .end local v0    # "this":Lcom/sun/prism/Image;
    return v0
.end method

.method public getPixels(IIIILjavafx/scene/image/WritablePixelFormat;Ljava/nio/Buffer;I)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/nio/Buffer;",
            ">(IIII",
            "Ljavafx/scene/image/WritablePixelFormat",
            "<TT;>;TT;I)V"
        }
    .end annotation

    .prologue
    .line 657
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/prism/Image;
    move/from16 v1, p1

    .local v1, "x":I
    move/from16 v2, p2

    .local v2, "y":I
    move/from16 v3, p3

    .local v3, "w":I
    move/from16 v4, p4

    .local v4, "h":I
    move-object/from16 v5, p5

    .local v5, "pixelformat":Ljavafx/scene/image/WritablePixelFormat;, "Ljavafx/scene/image/WritablePixelFormat<TT;>;"
    move-object/from16 v6, p6

    .local v6, "pixels":Ljava/nio/Buffer;, "TT;"
    move/from16 v7, p7

    .local v7, "scanlineBytes":I
    move-object v8, v0

    invoke-direct {v8}, Lcom/sun/prism/Image;->getPixelAccessor()Lcom/sun/prism/Image$Accessor;

    move-result-object v8

    move v9, v1

    move v10, v2

    move v11, v3

    move v12, v4

    move-object v13, v5

    move-object v14, v6

    move v15, v7

    invoke-virtual/range {v8 .. v15}, Lcom/sun/prism/Image$Accessor;->getPixels(IIIILjavafx/scene/image/WritablePixelFormat;Ljava/nio/Buffer;I)V

    .line 659
    return-void
.end method

.method public getPixels(IIIILjavafx/scene/image/WritablePixelFormat;[BII)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII",
            "Ljavafx/scene/image/WritablePixelFormat",
            "<",
            "Ljava/nio/ByteBuffer;",
            ">;[BII)V"
        }
    .end annotation

    .prologue
    .line 666
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/prism/Image;
    move/from16 v1, p1

    .local v1, "x":I
    move/from16 v2, p2

    .local v2, "y":I
    move/from16 v3, p3

    .local v3, "w":I
    move/from16 v4, p4

    .local v4, "h":I
    move-object/from16 v5, p5

    .local v5, "pixelformat":Ljavafx/scene/image/WritablePixelFormat;, "Ljavafx/scene/image/WritablePixelFormat<Ljava/nio/ByteBuffer;>;"
    move-object/from16 v6, p6

    .local v6, "pixels":[B
    move/from16 v7, p7

    .local v7, "offset":I
    move/from16 v8, p8

    .local v8, "scanlineBytes":I
    move-object v9, v0

    invoke-direct {v9}, Lcom/sun/prism/Image;->getPixelAccessor()Lcom/sun/prism/Image$Accessor;

    move-result-object v9

    move v10, v1

    move v11, v2

    move v12, v3

    move v13, v4

    move-object v14, v5

    move-object v15, v6

    move/from16 v16, v7

    move/from16 v17, v8

    invoke-virtual/range {v9 .. v17}, Lcom/sun/prism/Image$Accessor;->getPixels(IIIILjavafx/scene/image/WritablePixelFormat;[BII)V

    .line 668
    return-void
.end method

.method public getPixels(IIIILjavafx/scene/image/WritablePixelFormat;[III)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII",
            "Ljavafx/scene/image/WritablePixelFormat",
            "<",
            "Ljava/nio/IntBuffer;",
            ">;[III)V"
        }
    .end annotation

    .prologue
    .line 675
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/prism/Image;
    move/from16 v1, p1

    .local v1, "x":I
    move/from16 v2, p2

    .local v2, "y":I
    move/from16 v3, p3

    .local v3, "w":I
    move/from16 v4, p4

    .local v4, "h":I
    move-object/from16 v5, p5

    .local v5, "pixelformat":Ljavafx/scene/image/WritablePixelFormat;, "Ljavafx/scene/image/WritablePixelFormat<Ljava/nio/IntBuffer;>;"
    move-object/from16 v6, p6

    .local v6, "pixels":[I
    move/from16 v7, p7

    .local v7, "offset":I
    move/from16 v8, p8

    .local v8, "scanlineInts":I
    move-object v9, v0

    invoke-direct {v9}, Lcom/sun/prism/Image;->getPixelAccessor()Lcom/sun/prism/Image$Accessor;

    move-result-object v9

    move v10, v1

    move v11, v2

    move v12, v3

    move v13, v4

    move-object v14, v5

    move-object v15, v6

    move/from16 v16, v7

    move/from16 v17, v8

    invoke-virtual/range {v9 .. v17}, Lcom/sun/prism/Image$Accessor;->getPixels(IIIILjavafx/scene/image/WritablePixelFormat;[III)V

    .line 677
    return-void
.end method

.method public getPlatformPixelFormat()Ljavafx/scene/image/PixelFormat;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/scene/image/PixelFormat",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 627
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/Image;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/prism/Image;->getPixelAccessor()Lcom/sun/prism/Image$Accessor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/prism/Image$Accessor;->getPlatformPixelFormat()Ljavafx/scene/image/PixelFormat;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/prism/Image;
    return-object v0
.end method

.method public getRowLength()I
    .locals 3

    .prologue
    .line 358
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/Image;
    move-object v1, v0

    iget v1, v1, Lcom/sun/prism/Image;->scanlineStride:I

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/prism/Image;->pixelFormat:Lcom/sun/prism/PixelFormat;

    invoke-virtual {v2}, Lcom/sun/prism/PixelFormat;->getBytesPerPixelUnit()I

    move-result v2

    div-int/2addr v1, v2

    move v0, v1

    .end local v0    # "this":Lcom/sun/prism/Image;
    return v0
.end method

.method public getScanlineStride()I
    .locals 2

    .prologue
    .line 347
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/Image;
    move-object v1, v0

    iget v1, v1, Lcom/sun/prism/Image;->scanlineStride:I

    move v0, v1

    .end local v0    # "this":Lcom/sun/prism/Image;
    return v0
.end method

.method public getSerial()I
    .locals 3

    .prologue
    .line 576
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/Image;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/prism/Image;->serial:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    move v0, v1

    .end local v0    # "this":Lcom/sun/prism/Image;
    return v0
.end method

.method public getWidth()I
    .locals 2

    .prologue
    .line 339
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/Image;
    move-object v1, v0

    iget v1, v1, Lcom/sun/prism/Image;->width:I

    move v0, v1

    .end local v0    # "this":Lcom/sun/prism/Image;
    return v0
.end method

.method public iconify(Ljava/nio/ByteBuffer;II)Lcom/sun/prism/Image;
    .locals 18

    .prologue
    .line 535
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/prism/Image;
    move-object/from16 v1, p1

    .local v1, "iconBuffer":Ljava/nio/ByteBuffer;
    move/from16 v2, p2

    .local v2, "twidth":I
    move/from16 v3, p3

    .local v3, "theight":I
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/prism/Image;->pixelFormat:Lcom/sun/prism/PixelFormat;

    sget-object v9, Lcom/sun/prism/PixelFormat;->MULTI_YCbCr_420:Lcom/sun/prism/PixelFormat;

    if-ne v8, v9, :cond_0

    .line 536
    new-instance v8, Ljava/lang/IllegalArgumentException;

    move-object/from16 v17, v8

    move-object/from16 v8, v17

    move-object/from16 v9, v17

    new-instance v10, Ljava/lang/StringBuilder;

    move-object/from16 v17, v10

    move-object/from16 v10, v17

    move-object/from16 v11, v17

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Format not supported "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object v11, v0

    iget-object v11, v11, Lcom/sun/prism/Image;->pixelFormat:Lcom/sun/prism/PixelFormat;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 541
    :cond_0
    move-object v8, v0

    invoke-virtual {v8}, Lcom/sun/prism/Image;->getBytesPerPixelUnit()I

    move-result v8

    move v4, v8

    .line 544
    .local v4, "tnumBands":I
    move v8, v2

    move v9, v4

    mul-int/2addr v8, v9

    move v5, v8

    .line 547
    .local v5, "tscanlineStride":I
    move v8, v4

    const/4 v9, 0x1

    if-ne v8, v9, :cond_1

    .line 548
    invoke-static {}, Lcom/sun/javafx/image/impl/ByteGray;->ToIntArgbPreConverter()Lcom/sun/javafx/image/ByteToIntPixelConverter;

    move-result-object v8

    move-object v6, v8

    .line 556
    .local v6, "converter":Lcom/sun/javafx/image/ByteToIntPixelConverter;
    :goto_0
    move v8, v2

    move v9, v3

    mul-int/2addr v8, v9

    new-array v8, v8, [I

    move-object v7, v8

    .line 557
    .local v7, "newImage":[I
    move-object v8, v6

    move-object v9, v1

    const/4 v10, 0x0

    move v11, v5

    move-object v12, v7

    const/4 v13, 0x0

    move v14, v2

    move v15, v2

    move/from16 v16, v3

    invoke-interface/range {v8 .. v16}, Lcom/sun/javafx/image/ByteToIntPixelConverter;->convert(Ljava/nio/ByteBuffer;II[IIIII)V

    .line 562
    new-instance v8, Lcom/sun/prism/Image;

    move-object/from16 v17, v8

    move-object/from16 v8, v17

    move-object/from16 v9, v17

    sget-object v10, Lcom/sun/prism/PixelFormat;->INT_ARGB_PRE:Lcom/sun/prism/PixelFormat;

    move-object v11, v7

    move v12, v2

    move v13, v3

    invoke-direct {v9, v10, v11, v12, v13}, Lcom/sun/prism/Image;-><init>(Lcom/sun/prism/PixelFormat;[III)V

    move-object v0, v8

    .end local v0    # "this":Lcom/sun/prism/Image;
    return-object v0

    .line 549
    .end local v6    # "converter":Lcom/sun/javafx/image/ByteToIntPixelConverter;
    .end local v7    # "newImage":[I
    .restart local v0    # "this":Lcom/sun/prism/Image;
    :cond_1
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/prism/Image;->pixelFormat:Lcom/sun/prism/PixelFormat;

    sget-object v9, Lcom/sun/prism/PixelFormat;->BYTE_BGRA_PRE:Lcom/sun/prism/PixelFormat;

    if-ne v8, v9, :cond_2

    .line 550
    invoke-static {}, Lcom/sun/javafx/image/impl/ByteBgraPre;->ToIntArgbPreConverter()Lcom/sun/javafx/image/ByteToIntPixelConverter;

    move-result-object v8

    move-object v6, v8

    .restart local v6    # "converter":Lcom/sun/javafx/image/ByteToIntPixelConverter;
    goto :goto_0

    .line 552
    .end local v6    # "converter":Lcom/sun/javafx/image/ByteToIntPixelConverter;
    :cond_2
    invoke-static {}, Lcom/sun/javafx/image/impl/ByteRgb;->ToIntArgbPreConverter()Lcom/sun/javafx/image/ByteToIntPixelConverter;

    move-result-object v8

    move-object v6, v8

    .restart local v6    # "converter":Lcom/sun/javafx/image/ByteToIntPixelConverter;
    goto :goto_0
.end method

.method public isOpaque()Z
    .locals 2

    .prologue
    .line 719
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/Image;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/prism/Image;->pixelFormat:Lcom/sun/prism/PixelFormat;

    invoke-virtual {v1}, Lcom/sun/prism/PixelFormat;->isOpaque()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/prism/Image;
    return v0
.end method

.method public isTightlyPacked()Z
    .locals 3

    .prologue
    .line 362
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/Image;
    move-object v1, v0

    iget v1, v1, Lcom/sun/prism/Image;->minX:I

    if-nez v1, :cond_0

    move-object v1, v0

    iget v1, v1, Lcom/sun/prism/Image;->minY:I

    if-nez v1, :cond_0

    move-object v1, v0

    iget v1, v1, Lcom/sun/prism/Image;->width:I

    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/prism/Image;->getRowLength()I

    move-result v2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/sun/prism/Image;
    return v0

    .restart local v0    # "this":Lcom/sun/prism/Image;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isWritable()Z
    .locals 2

    .prologue
    .line 632
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/Image;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/prism/Image;->getPixelAccessor()Lcom/sun/prism/Image$Accessor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/prism/Image$Accessor;->isWritable()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/prism/Image;
    return v0
.end method

.method public promoteByteRgbToByteBgra()Lcom/sun/prism/Image;
    .locals 15

    .prologue
    .line 580
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/Image;
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/prism/Image;->pixelBuffer:Ljava/nio/Buffer;

    check-cast v4, Ljava/nio/ByteBuffer;

    move-object v1, v4

    .line 581
    .local v1, "oldbuf":Ljava/nio/ByteBuffer;
    move-object v4, v0

    iget v4, v4, Lcom/sun/prism/Image;->width:I

    move-object v5, v0

    iget v5, v5, Lcom/sun/prism/Image;->height:I

    mul-int/2addr v4, v5

    const/4 v5, 0x4

    mul-int/lit8 v4, v4, 0x4

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    move-object v2, v4

    .line 582
    .local v2, "newbuf":Ljava/nio/ByteBuffer;
    move-object v4, v0

    iget v4, v4, Lcom/sun/prism/Image;->minY:I

    move-object v5, v0

    iget v5, v5, Lcom/sun/prism/Image;->scanlineStride:I

    mul-int/2addr v4, v5

    move-object v5, v0

    iget v5, v5, Lcom/sun/prism/Image;->minX:I

    const/4 v6, 0x3

    mul-int/lit8 v5, v5, 0x3

    add-int/2addr v4, v5

    move v3, v4

    .line 583
    .local v3, "oldpos":I
    invoke-static {}, Lcom/sun/javafx/image/impl/ByteRgb;->ToByteBgraPreConverter()Lcom/sun/javafx/image/ByteToBytePixelConverter;

    move-result-object v4

    move-object v5, v1

    move v6, v3

    move-object v7, v0

    iget v7, v7, Lcom/sun/prism/Image;->scanlineStride:I

    move-object v8, v2

    const/4 v9, 0x0

    move-object v10, v0

    iget v10, v10, Lcom/sun/prism/Image;->width:I

    const/4 v11, 0x4

    mul-int/lit8 v10, v10, 0x4

    move-object v11, v0

    iget v11, v11, Lcom/sun/prism/Image;->width:I

    move-object v12, v0

    iget v12, v12, Lcom/sun/prism/Image;->height:I

    invoke-interface/range {v4 .. v12}, Lcom/sun/javafx/image/ByteToBytePixelConverter;->convert(Ljava/nio/Buffer;IILjava/nio/Buffer;IIII)V

    .line 586
    new-instance v4, Lcom/sun/prism/Image;

    move-object v14, v4

    move-object v4, v14

    move-object v5, v14

    sget-object v6, Lcom/sun/prism/PixelFormat;->BYTE_BGRA_PRE:Lcom/sun/prism/PixelFormat;

    move-object v7, v2

    move-object v8, v0

    iget v8, v8, Lcom/sun/prism/Image;->width:I

    move-object v9, v0

    iget v9, v9, Lcom/sun/prism/Image;->height:I

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v12, v0

    iget v12, v12, Lcom/sun/prism/Image;->width:I

    const/4 v13, 0x4

    mul-int/lit8 v12, v12, 0x4

    move-object v13, v0

    .line 587
    invoke-virtual {v13}, Lcom/sun/prism/Image;->getPixelScale()F

    move-result v13

    invoke-direct/range {v5 .. v13}, Lcom/sun/prism/Image;-><init>(Lcom/sun/prism/PixelFormat;Ljava/nio/Buffer;IIIIIF)V

    move-object v0, v4

    .end local v0    # "this":Lcom/sun/prism/Image;
    return-object v0
.end method

.method public promoteToWritableImage()Lcom/sun/javafx/tk/PlatformImage;
    .locals 2

    .prologue
    .line 637
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/Image;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/prism/Image;->getPixelAccessor()Lcom/sun/prism/Image$Accessor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/prism/Image$Accessor;->promoteToWritableImage()Lcom/sun/javafx/tk/PlatformImage;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/prism/Image;
    return-object v0
.end method

.method public setArgb(III)V
    .locals 10

    .prologue
    .line 647
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/Image;
    move v1, p1

    .local v1, "x":I
    move v2, p2

    .local v2, "y":I
    move v3, p3

    .local v3, "argb":I
    move-object v4, v0

    invoke-direct {v4}, Lcom/sun/prism/Image;->getPixelAccessor()Lcom/sun/prism/Image$Accessor;

    move-result-object v4

    move v5, v1

    move v6, v2

    move v7, v3

    invoke-virtual {v4, v5, v6, v7}, Lcom/sun/prism/Image$Accessor;->setArgb(III)V

    .line 648
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/prism/Image;->serial:[I

    const/4 v5, 0x0

    move-object v8, v4

    move v9, v5

    move-object v4, v8

    move v5, v9

    move-object v6, v8

    move v7, v9

    aget v6, v6, v7

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    aput v6, v4, v5

    .line 649
    return-void
.end method

.method public setPixels(IIIILjavafx/scene/image/PixelFormat;Ljava/nio/Buffer;I)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/nio/Buffer;",
            ">(IIII",
            "Ljavafx/scene/image/PixelFormat",
            "<TT;>;TT;I)V"
        }
    .end annotation

    .prologue
    .line 685
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/prism/Image;
    move/from16 v1, p1

    .local v1, "x":I
    move/from16 v2, p2

    .local v2, "y":I
    move/from16 v3, p3

    .local v3, "w":I
    move/from16 v4, p4

    .local v4, "h":I
    move-object/from16 v5, p5

    .local v5, "pixelformat":Ljavafx/scene/image/PixelFormat;, "Ljavafx/scene/image/PixelFormat<TT;>;"
    move-object/from16 v6, p6

    .local v6, "pixels":Ljava/nio/Buffer;, "TT;"
    move/from16 v7, p7

    .local v7, "scanlineBytes":I
    move-object v8, v0

    invoke-direct {v8}, Lcom/sun/prism/Image;->getPixelAccessor()Lcom/sun/prism/Image$Accessor;

    move-result-object v8

    move v9, v1

    move v10, v2

    move v11, v3

    move v12, v4

    move-object v13, v5

    move-object v14, v6

    move v15, v7

    invoke-virtual/range {v8 .. v15}, Lcom/sun/prism/Image$Accessor;->setPixels(IIIILjavafx/scene/image/PixelFormat;Ljava/nio/Buffer;I)V

    .line 687
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/prism/Image;->serial:[I

    const/4 v9, 0x0

    move-object/from16 v16, v8

    move/from16 v17, v9

    move-object/from16 v8, v16

    move/from16 v9, v17

    move-object/from16 v10, v16

    move/from16 v11, v17

    aget v10, v10, v11

    const/4 v11, 0x1

    add-int/lit8 v10, v10, 0x1

    aput v10, v8, v9

    .line 688
    return-void
.end method

.method public setPixels(IIIILjavafx/scene/image/PixelFormat;[BII)V
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII",
            "Ljavafx/scene/image/PixelFormat",
            "<",
            "Ljava/nio/ByteBuffer;",
            ">;[BII)V"
        }
    .end annotation

    .prologue
    .line 695
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/prism/Image;
    move/from16 v1, p1

    .local v1, "x":I
    move/from16 v2, p2

    .local v2, "y":I
    move/from16 v3, p3

    .local v3, "w":I
    move/from16 v4, p4

    .local v4, "h":I
    move-object/from16 v5, p5

    .local v5, "pixelformat":Ljavafx/scene/image/PixelFormat;, "Ljavafx/scene/image/PixelFormat<Ljava/nio/ByteBuffer;>;"
    move-object/from16 v6, p6

    .local v6, "pixels":[B
    move/from16 v7, p7

    .local v7, "offset":I
    move/from16 v8, p8

    .local v8, "scanlineBytes":I
    move-object v9, v0

    invoke-direct {v9}, Lcom/sun/prism/Image;->getPixelAccessor()Lcom/sun/prism/Image$Accessor;

    move-result-object v9

    move v10, v1

    move v11, v2

    move v12, v3

    move v13, v4

    move-object v14, v5

    move-object v15, v6

    move/from16 v16, v7

    move/from16 v17, v8

    invoke-virtual/range {v9 .. v17}, Lcom/sun/prism/Image$Accessor;->setPixels(IIIILjavafx/scene/image/PixelFormat;[BII)V

    .line 697
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/prism/Image;->serial:[I

    const/4 v10, 0x0

    move-object/from16 v18, v9

    move/from16 v19, v10

    move-object/from16 v9, v18

    move/from16 v10, v19

    move-object/from16 v11, v18

    move/from16 v12, v19

    aget v11, v11, v12

    const/4 v12, 0x1

    add-int/lit8 v11, v11, 0x1

    aput v11, v9, v10

    .line 698
    return-void
.end method

.method public setPixels(IIIILjavafx/scene/image/PixelFormat;[III)V
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII",
            "Ljavafx/scene/image/PixelFormat",
            "<",
            "Ljava/nio/IntBuffer;",
            ">;[III)V"
        }
    .end annotation

    .prologue
    .line 705
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/prism/Image;
    move/from16 v1, p1

    .local v1, "x":I
    move/from16 v2, p2

    .local v2, "y":I
    move/from16 v3, p3

    .local v3, "w":I
    move/from16 v4, p4

    .local v4, "h":I
    move-object/from16 v5, p5

    .local v5, "pixelformat":Ljavafx/scene/image/PixelFormat;, "Ljavafx/scene/image/PixelFormat<Ljava/nio/IntBuffer;>;"
    move-object/from16 v6, p6

    .local v6, "pixels":[I
    move/from16 v7, p7

    .local v7, "offset":I
    move/from16 v8, p8

    .local v8, "scanlineInts":I
    move-object v9, v0

    invoke-direct {v9}, Lcom/sun/prism/Image;->getPixelAccessor()Lcom/sun/prism/Image$Accessor;

    move-result-object v9

    move v10, v1

    move v11, v2

    move v12, v3

    move v13, v4

    move-object v14, v5

    move-object v15, v6

    move/from16 v16, v7

    move/from16 v17, v8

    invoke-virtual/range {v9 .. v17}, Lcom/sun/prism/Image$Accessor;->setPixels(IIIILjavafx/scene/image/PixelFormat;[III)V

    .line 707
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/prism/Image;->serial:[I

    const/4 v10, 0x0

    move-object/from16 v18, v9

    move/from16 v19, v10

    move-object/from16 v9, v18

    move/from16 v10, v19

    move-object/from16 v11, v18

    move/from16 v12, v19

    aget v11, v11, v12

    const/4 v12, 0x1

    add-int/lit8 v11, v11, 0x1

    aput v11, v9, v10

    .line 708
    return-void
.end method

.method public setPixels(IIIILjavafx/scene/image/PixelReader;II)V
    .locals 18

    .prologue
    .line 714
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/prism/Image;
    move/from16 v1, p1

    .local v1, "dstx":I
    move/from16 v2, p2

    .local v2, "dsty":I
    move/from16 v3, p3

    .local v3, "w":I
    move/from16 v4, p4

    .local v4, "h":I
    move-object/from16 v5, p5

    .local v5, "reader":Ljavafx/scene/image/PixelReader;
    move/from16 v6, p6

    .local v6, "srcx":I
    move/from16 v7, p7

    .local v7, "srcy":I
    move-object v8, v0

    invoke-direct {v8}, Lcom/sun/prism/Image;->getPixelAccessor()Lcom/sun/prism/Image$Accessor;

    move-result-object v8

    move v9, v1

    move v10, v2

    move v11, v3

    move v12, v4

    move-object v13, v5

    move v14, v6

    move v15, v7

    invoke-virtual/range {v8 .. v15}, Lcom/sun/prism/Image$Accessor;->setPixels(IIIILjavafx/scene/image/PixelReader;II)V

    .line 715
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/prism/Image;->serial:[I

    const/4 v9, 0x0

    move-object/from16 v16, v8

    move/from16 v17, v9

    move-object/from16 v8, v16

    move/from16 v9, v17

    move-object/from16 v10, v16

    move/from16 v11, v17

    aget v10, v10, v11

    const/4 v11, 0x1

    add-int/lit8 v10, v10, 0x1

    aput v10, v8, v9

    .line 716
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 567
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/Image;
    new-instance v1, Ljava/lang/StringBuilder;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object v2, v0

    invoke-super {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " [format="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/prism/Image;->pixelFormat:Lcom/sun/prism/PixelFormat;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " width="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget v2, v2, Lcom/sun/prism/Image;->width:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " height="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget v2, v2, Lcom/sun/prism/Image;->height:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " scanlineStride="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget v2, v2, Lcom/sun/prism/Image;->scanlineStride:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " minX="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget v2, v2, Lcom/sun/prism/Image;->minX:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " minY="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget v2, v2, Lcom/sun/prism/Image;->minY:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " pixelBuffer="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/prism/Image;->pixelBuffer:Ljava/nio/Buffer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bpp="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    .line 572
    invoke-virtual {v2}, Lcom/sun/prism/Image;->getBytesPerPixelUnit()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/prism/Image;
    return-object v0
.end method
