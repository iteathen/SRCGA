.class public Lcom/sun/prism/impl/shape/MaskData;
.super Ljava/lang/Object;
.source "MaskData.java"


# instance fields
.field private height:I

.field private maskBuffer:Ljava/nio/ByteBuffer;

.field private originX:I

.field private originY:I

.field private width:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 40
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/shape/MaskData;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 41
    return-void
.end method

.method public static create([BIIII)Lcom/sun/prism/impl/shape/MaskData;
    .locals 13

    .prologue
    .line 86
    move-object v0, p0

    .local v0, "pixels":[B
    move v1, p1

    .local v1, "originX":I
    move v2, p2

    .local v2, "originY":I
    move/from16 v3, p3

    .local v3, "width":I
    move/from16 v4, p4

    .local v4, "height":I
    new-instance v6, Lcom/sun/prism/impl/shape/MaskData;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    invoke-direct {v7}, Lcom/sun/prism/impl/shape/MaskData;-><init>()V

    move-object v5, v6

    .line 87
    .local v5, "maskData":Lcom/sun/prism/impl/shape/MaskData;
    move-object v6, v5

    move-object v7, v0

    invoke-static {v7}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v7

    move v8, v1

    move v9, v2

    move v10, v3

    move v11, v4

    invoke-virtual/range {v6 .. v11}, Lcom/sun/prism/impl/shape/MaskData;->update(Ljava/nio/ByteBuffer;IIII)V

    .line 88
    move-object v6, v5

    move-object v0, v6

    .end local v0    # "pixels":[B
    return-object v0
.end method


# virtual methods
.method public getHeight()I
    .locals 2

    .prologue
    .line 60
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/shape/MaskData;
    move-object v1, v0

    iget v1, v1, Lcom/sun/prism/impl/shape/MaskData;->height:I

    move v0, v1

    .end local v0    # "this":Lcom/sun/prism/impl/shape/MaskData;
    return v0
.end method

.method public getMaskBuffer()Ljava/nio/ByteBuffer;
    .locals 2

    .prologue
    .line 44
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/shape/MaskData;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/prism/impl/shape/MaskData;->maskBuffer:Ljava/nio/ByteBuffer;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/prism/impl/shape/MaskData;
    return-object v0
.end method

.method public getOriginX()I
    .locals 2

    .prologue
    .line 48
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/shape/MaskData;
    move-object v1, v0

    iget v1, v1, Lcom/sun/prism/impl/shape/MaskData;->originX:I

    move v0, v1

    .end local v0    # "this":Lcom/sun/prism/impl/shape/MaskData;
    return v0
.end method

.method public getOriginY()I
    .locals 2

    .prologue
    .line 52
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/shape/MaskData;
    move-object v1, v0

    iget v1, v1, Lcom/sun/prism/impl/shape/MaskData;->originY:I

    move v0, v1

    .end local v0    # "this":Lcom/sun/prism/impl/shape/MaskData;
    return v0
.end method

.method public getWidth()I
    .locals 2

    .prologue
    .line 56
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/shape/MaskData;
    move-object v1, v0

    iget v1, v1, Lcom/sun/prism/impl/shape/MaskData;->width:I

    move v0, v1

    .end local v0    # "this":Lcom/sun/prism/impl/shape/MaskData;
    return v0
.end method

.method public update(Ljava/nio/ByteBuffer;IIII)V
    .locals 8

    .prologue
    .line 75
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/shape/MaskData;
    move-object v1, p1

    .local v1, "maskBuffer":Ljava/nio/ByteBuffer;
    move v2, p2

    .local v2, "originX":I
    move v3, p3

    .local v3, "originY":I
    move v4, p4

    .local v4, "width":I
    move v5, p5

    .local v5, "height":I
    move-object v6, v0

    move-object v7, v1

    iput-object v7, v6, Lcom/sun/prism/impl/shape/MaskData;->maskBuffer:Ljava/nio/ByteBuffer;

    .line 76
    move-object v6, v0

    move v7, v2

    iput v7, v6, Lcom/sun/prism/impl/shape/MaskData;->originX:I

    .line 77
    move-object v6, v0

    move v7, v3

    iput v7, v6, Lcom/sun/prism/impl/shape/MaskData;->originY:I

    .line 78
    move-object v6, v0

    move v7, v4

    iput v7, v6, Lcom/sun/prism/impl/shape/MaskData;->width:I

    .line 79
    move-object v6, v0

    move v7, v5

    iput v7, v6, Lcom/sun/prism/impl/shape/MaskData;->height:I

    .line 80
    return-void
.end method

.method public uploadToTexture(Lcom/sun/prism/Texture;IIZ)V
    .locals 17

    .prologue
    .line 66
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/prism/impl/shape/MaskData;
    move-object/from16 v1, p1

    .local v1, "tex":Lcom/sun/prism/Texture;
    move/from16 v2, p2

    .local v2, "dstx":I
    move/from16 v3, p3

    .local v3, "dsty":I
    move/from16 v4, p4

    .local v4, "skipFlush":Z
    move-object v6, v0

    iget v6, v6, Lcom/sun/prism/impl/shape/MaskData;->width:I

    move-object v7, v1

    invoke-interface {v7}, Lcom/sun/prism/Texture;->getPixelFormat()Lcom/sun/prism/PixelFormat;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sun/prism/PixelFormat;->getBytesPerPixelUnit()I

    move-result v7

    mul-int/2addr v6, v7

    move v5, v6

    .line 67
    .local v5, "scan":I
    move-object v6, v1

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/prism/impl/shape/MaskData;->maskBuffer:Ljava/nio/ByteBuffer;

    move-object v8, v1

    invoke-interface {v8}, Lcom/sun/prism/Texture;->getPixelFormat()Lcom/sun/prism/PixelFormat;

    move-result-object v8

    move v9, v2

    move v10, v3

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v13, v0

    iget v13, v13, Lcom/sun/prism/impl/shape/MaskData;->width:I

    move-object v14, v0

    iget v14, v14, Lcom/sun/prism/impl/shape/MaskData;->height:I

    move v15, v5

    move/from16 v16, v4

    invoke-interface/range {v6 .. v16}, Lcom/sun/prism/Texture;->update(Ljava/nio/Buffer;Lcom/sun/prism/PixelFormat;IIIIIIIZ)V

    .line 70
    return-void
.end method
