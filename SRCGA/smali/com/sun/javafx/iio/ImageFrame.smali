.class public Lcom/sun/javafx/iio/ImageFrame;
.super Ljava/lang/Object;
.source "ImageFrame.java"


# instance fields
.field private height:I

.field private imageData:Ljava/nio/ByteBuffer;

.field private imageType:Lcom/sun/javafx/iio/ImageStorage$ImageType;

.field private metadata:Lcom/sun/javafx/iio/ImageMetadata;

.field private palette:[[B

.field private pixelScale:F

.field private stride:I

.field private width:I


# direct methods
.method public constructor <init>(Lcom/sun/javafx/iio/ImageStorage$ImageType;Ljava/nio/ByteBuffer;III[[BFLcom/sun/javafx/iio/ImageMetadata;)V
    .locals 11

    .prologue
    .line 87
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/iio/ImageFrame;
    move-object v1, p1

    .local v1, "imageType":Lcom/sun/javafx/iio/ImageStorage$ImageType;
    move-object v2, p2

    .local v2, "imageData":Ljava/nio/ByteBuffer;
    move v3, p3

    .local v3, "width":I
    move v4, p4

    .local v4, "height":I
    move/from16 v5, p5

    .local v5, "stride":I
    move-object/from16 v6, p6

    .local v6, "palette":[[B
    move/from16 v7, p7

    .local v7, "pixelScale":F
    move-object/from16 v8, p8

    .local v8, "metadata":Lcom/sun/javafx/iio/ImageMetadata;
    move-object v9, v0

    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    .line 88
    move-object v9, v0

    move-object v10, v1

    iput-object v10, v9, Lcom/sun/javafx/iio/ImageFrame;->imageType:Lcom/sun/javafx/iio/ImageStorage$ImageType;

    .line 89
    move-object v9, v0

    move-object v10, v2

    iput-object v10, v9, Lcom/sun/javafx/iio/ImageFrame;->imageData:Ljava/nio/ByteBuffer;

    .line 90
    move-object v9, v0

    move v10, v3

    iput v10, v9, Lcom/sun/javafx/iio/ImageFrame;->width:I

    .line 91
    move-object v9, v0

    move v10, v4

    iput v10, v9, Lcom/sun/javafx/iio/ImageFrame;->height:I

    .line 92
    move-object v9, v0

    move v10, v5

    iput v10, v9, Lcom/sun/javafx/iio/ImageFrame;->stride:I

    .line 93
    move-object v9, v0

    move-object v10, v6

    iput-object v10, v9, Lcom/sun/javafx/iio/ImageFrame;->palette:[[B

    .line 94
    move-object v9, v0

    move v10, v7

    iput v10, v9, Lcom/sun/javafx/iio/ImageFrame;->pixelScale:F

    .line 95
    move-object v9, v0

    move-object v10, v8

    iput-object v10, v9, Lcom/sun/javafx/iio/ImageFrame;->metadata:Lcom/sun/javafx/iio/ImageMetadata;

    .line 96
    return-void
.end method

.method public constructor <init>(Lcom/sun/javafx/iio/ImageStorage$ImageType;Ljava/nio/ByteBuffer;III[[BLcom/sun/javafx/iio/ImageMetadata;)V
    .locals 17

    .prologue
    .line 63
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/javafx/iio/ImageFrame;
    move-object/from16 v1, p1

    .local v1, "imageType":Lcom/sun/javafx/iio/ImageStorage$ImageType;
    move-object/from16 v2, p2

    .local v2, "imageData":Ljava/nio/ByteBuffer;
    move/from16 v3, p3

    .local v3, "width":I
    move/from16 v4, p4

    .local v4, "height":I
    move/from16 v5, p5

    .local v5, "stride":I
    move-object/from16 v6, p6

    .local v6, "palette":[[B
    move-object/from16 v7, p7

    .local v7, "metadata":Lcom/sun/javafx/iio/ImageMetadata;
    move-object v8, v0

    move-object v9, v1

    move-object v10, v2

    move v11, v3

    move v12, v4

    move v13, v5

    move-object v14, v6

    const/high16 v15, 0x3f800000    # 1.0f

    move-object/from16 v16, v7

    invoke-direct/range {v8 .. v16}, Lcom/sun/javafx/iio/ImageFrame;-><init>(Lcom/sun/javafx/iio/ImageStorage$ImageType;Ljava/nio/ByteBuffer;III[[BFLcom/sun/javafx/iio/ImageMetadata;)V

    .line 66
    return-void
.end method


# virtual methods
.method public getHeight()I
    .locals 2

    .prologue
    .line 111
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/iio/ImageFrame;
    move-object v1, v0

    iget v1, v1, Lcom/sun/javafx/iio/ImageFrame;->height:I

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/iio/ImageFrame;
    return v0
.end method

.method public getImageData()Ljava/nio/Buffer;
    .locals 2

    .prologue
    .line 103
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/iio/ImageFrame;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/iio/ImageFrame;->imageData:Ljava/nio/ByteBuffer;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/iio/ImageFrame;
    return-object v0
.end method

.method public getImageType()Lcom/sun/javafx/iio/ImageStorage$ImageType;
    .locals 2

    .prologue
    .line 99
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/iio/ImageFrame;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/iio/ImageFrame;->imageType:Lcom/sun/javafx/iio/ImageStorage$ImageType;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/iio/ImageFrame;
    return-object v0
.end method

.method public getMetadata()Lcom/sun/javafx/iio/ImageMetadata;
    .locals 2

    .prologue
    .line 131
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/iio/ImageFrame;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/iio/ImageFrame;->metadata:Lcom/sun/javafx/iio/ImageMetadata;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/iio/ImageFrame;
    return-object v0
.end method

.method public getPalette()[[B
    .locals 2

    .prologue
    .line 119
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/iio/ImageFrame;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/iio/ImageFrame;->palette:[[B

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/iio/ImageFrame;
    return-object v0
.end method

.method public getPixelScale()F
    .locals 2

    .prologue
    .line 127
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/iio/ImageFrame;
    move-object v1, v0

    iget v1, v1, Lcom/sun/javafx/iio/ImageFrame;->pixelScale:F

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/iio/ImageFrame;
    return v0
.end method

.method public getStride()I
    .locals 2

    .prologue
    .line 115
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/iio/ImageFrame;
    move-object v1, v0

    iget v1, v1, Lcom/sun/javafx/iio/ImageFrame;->stride:I

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/iio/ImageFrame;
    return v0
.end method

.method public getWidth()I
    .locals 2

    .prologue
    .line 107
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/iio/ImageFrame;
    move-object v1, v0

    iget v1, v1, Lcom/sun/javafx/iio/ImageFrame;->width:I

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/iio/ImageFrame;
    return v0
.end method

.method public setPixelScale(F)V
    .locals 4

    .prologue
    .line 123
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/iio/ImageFrame;
    move v1, p1

    .local v1, "pixelScale":F
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/sun/javafx/iio/ImageFrame;->pixelScale:F

    .line 124
    return-void
.end method
