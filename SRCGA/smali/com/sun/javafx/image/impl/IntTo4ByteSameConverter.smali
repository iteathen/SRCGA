.class Lcom/sun/javafx/image/impl/IntTo4ByteSameConverter;
.super Lcom/sun/javafx/image/impl/BaseIntToByteConverter;
.source "IntTo4ByteSameConverter.java"


# direct methods
.method constructor <init>(Lcom/sun/javafx/image/IntPixelGetter;Lcom/sun/javafx/image/BytePixelSetter;)V
    .locals 6

    .prologue
    .line 36
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/image/impl/IntTo4ByteSameConverter;
    move-object v1, p1

    .local v1, "getter":Lcom/sun/javafx/image/IntPixelGetter;
    move-object v2, p2

    .local v2, "setter":Lcom/sun/javafx/image/BytePixelSetter;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Lcom/sun/javafx/image/impl/BaseIntToByteConverter;-><init>(Lcom/sun/javafx/image/IntPixelGetter;Lcom/sun/javafx/image/BytePixelSetter;)V

    .line 37
    return-void
.end method


# virtual methods
.method doConvert(Ljava/nio/IntBuffer;IILjava/nio/ByteBuffer;IIII)V
    .locals 15

    .prologue
    .line 64
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/image/impl/IntTo4ByteSameConverter;
    move-object/from16 v1, p1

    .local v1, "srcbuf":Ljava/nio/IntBuffer;
    move/from16 v2, p2

    .local v2, "srcoff":I
    move/from16 v3, p3

    .local v3, "srcscanints":I
    move-object/from16 v4, p4

    .local v4, "dstbuf":Ljava/nio/ByteBuffer;
    move/from16 v5, p5

    .local v5, "dstoff":I
    move/from16 v6, p6

    .local v6, "dstscanbytes":I
    move/from16 v7, p7

    .local v7, "w":I
    move/from16 v8, p8

    .local v8, "h":I
    move v11, v6

    move v12, v7

    const/4 v13, 0x4

    mul-int/lit8 v12, v12, 0x4

    sub-int/2addr v11, v12

    move v6, v11

    .line 65
    :goto_0
    add-int/lit8 v8, v8, -0x1

    move v11, v8

    if-ltz v11, :cond_1

    .line 66
    const/4 v11, 0x0

    move v9, v11

    .local v9, "x":I
    :goto_1
    move v11, v9

    move v12, v7

    if-ge v11, v12, :cond_0

    .line 67
    move-object v11, v1

    move v12, v2

    move v13, v9

    add-int/2addr v12, v13

    invoke-virtual {v11, v12}, Ljava/nio/IntBuffer;->get(I)I

    move-result v11

    move v10, v11

    .line 68
    .local v10, "pixel":I
    move-object v11, v4

    move v12, v5

    move v13, v10

    int-to-byte v13, v13

    invoke-virtual {v11, v12, v13}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    move-result-object v11

    .line 69
    move-object v11, v4

    move v12, v5

    const/4 v13, 0x1

    add-int/lit8 v12, v12, 0x1

    move v13, v10

    const/16 v14, 0x8

    shr-int/lit8 v13, v13, 0x8

    int-to-byte v13, v13

    invoke-virtual {v11, v12, v13}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    move-result-object v11

    .line 70
    move-object v11, v4

    move v12, v5

    const/4 v13, 0x2

    add-int/lit8 v12, v12, 0x2

    move v13, v10

    const/16 v14, 0x10

    shr-int/lit8 v13, v13, 0x10

    int-to-byte v13, v13

    invoke-virtual {v11, v12, v13}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    move-result-object v11

    .line 71
    move-object v11, v4

    move v12, v5

    const/4 v13, 0x3

    add-int/lit8 v12, v12, 0x3

    move v13, v10

    const/16 v14, 0x18

    shr-int/lit8 v13, v13, 0x18

    int-to-byte v13, v13

    invoke-virtual {v11, v12, v13}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    move-result-object v11

    .line 72
    add-int/lit8 v5, v5, 0x4

    .line 66
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 74
    .end local v10    # "pixel":I
    :cond_0
    move v11, v2

    move v12, v3

    add-int/2addr v11, v12

    move v2, v11

    .line 75
    move v11, v5

    move v12, v6

    add-int/2addr v11, v12

    move v5, v11

    goto :goto_0

    .line 77
    .end local v9    # "x":I
    :cond_1
    return-void
.end method

.method doConvert([III[BIIII)V
    .locals 15

    .prologue
    .line 44
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/image/impl/IntTo4ByteSameConverter;
    move-object/from16 v1, p1

    .local v1, "srcarr":[I
    move/from16 v2, p2

    .local v2, "srcoff":I
    move/from16 v3, p3

    .local v3, "srcscanints":I
    move-object/from16 v4, p4

    .local v4, "dstarr":[B
    move/from16 v5, p5

    .local v5, "dstoff":I
    move/from16 v6, p6

    .local v6, "dstscanbytes":I
    move/from16 v7, p7

    .local v7, "w":I
    move/from16 v8, p8

    .local v8, "h":I
    move v11, v3

    move v12, v7

    sub-int/2addr v11, v12

    move v3, v11

    .line 45
    move v11, v6

    move v12, v7

    const/4 v13, 0x4

    mul-int/lit8 v12, v12, 0x4

    sub-int/2addr v11, v12

    move v6, v11

    .line 46
    :goto_0
    add-int/lit8 v8, v8, -0x1

    move v11, v8

    if-ltz v11, :cond_1

    .line 47
    const/4 v11, 0x0

    move v9, v11

    .local v9, "x":I
    :goto_1
    move v11, v9

    move v12, v7

    if-ge v11, v12, :cond_0

    .line 48
    move-object v11, v1

    move v12, v2

    add-int/lit8 v2, v2, 0x1

    aget v11, v11, v12

    move v10, v11

    .line 49
    .local v10, "pixel":I
    move-object v11, v4

    move v12, v5

    add-int/lit8 v5, v5, 0x1

    move v13, v10

    int-to-byte v13, v13

    aput-byte v13, v11, v12

    .line 50
    move-object v11, v4

    move v12, v5

    add-int/lit8 v5, v5, 0x1

    move v13, v10

    const/16 v14, 0x8

    shr-int/lit8 v13, v13, 0x8

    int-to-byte v13, v13

    aput-byte v13, v11, v12

    .line 51
    move-object v11, v4

    move v12, v5

    add-int/lit8 v5, v5, 0x1

    move v13, v10

    const/16 v14, 0x10

    shr-int/lit8 v13, v13, 0x10

    int-to-byte v13, v13

    aput-byte v13, v11, v12

    .line 52
    move-object v11, v4

    move v12, v5

    add-int/lit8 v5, v5, 0x1

    move v13, v10

    const/16 v14, 0x18

    shr-int/lit8 v13, v13, 0x18

    int-to-byte v13, v13

    aput-byte v13, v11, v12

    .line 47
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 54
    .end local v10    # "pixel":I
    :cond_0
    move v11, v2

    move v12, v3

    add-int/2addr v11, v12

    move v2, v11

    .line 55
    move v11, v5

    move v12, v6

    add-int/2addr v11, v12

    move v5, v11

    goto :goto_0

    .line 57
    .end local v9    # "x":I
    :cond_1
    return-void
.end method
