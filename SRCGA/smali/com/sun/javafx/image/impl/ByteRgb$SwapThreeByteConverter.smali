.class Lcom/sun/javafx/image/impl/ByteRgb$SwapThreeByteConverter;
.super Lcom/sun/javafx/image/impl/BaseByteToByteConverter;
.source "ByteRgb.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/image/impl/ByteRgb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SwapThreeByteConverter"
.end annotation


# static fields
.field static final rgbToBgrInstance:Lcom/sun/javafx/image/ByteToBytePixelConverter;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 259
    new-instance v0, Lcom/sun/javafx/image/impl/ByteRgb$SwapThreeByteConverter;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    sget-object v2, Lcom/sun/javafx/image/impl/ByteRgb;->getter:Lcom/sun/javafx/image/BytePixelGetter;

    sget-object v3, Lcom/sun/javafx/image/impl/ByteBgr;->accessor:Lcom/sun/javafx/image/BytePixelAccessor;

    invoke-direct {v1, v2, v3}, Lcom/sun/javafx/image/impl/ByteRgb$SwapThreeByteConverter;-><init>(Lcom/sun/javafx/image/BytePixelGetter;Lcom/sun/javafx/image/BytePixelSetter;)V

    sput-object v0, Lcom/sun/javafx/image/impl/ByteRgb$SwapThreeByteConverter;->rgbToBgrInstance:Lcom/sun/javafx/image/ByteToBytePixelConverter;

    return-void
.end method

.method public constructor <init>(Lcom/sun/javafx/image/BytePixelGetter;Lcom/sun/javafx/image/BytePixelSetter;)V
    .locals 6

    .prologue
    .line 263
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/image/impl/ByteRgb$SwapThreeByteConverter;
    move-object v1, p1

    .local v1, "getter":Lcom/sun/javafx/image/BytePixelGetter;
    move-object v2, p2

    .local v2, "setter":Lcom/sun/javafx/image/BytePixelSetter;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Lcom/sun/javafx/image/impl/BaseByteToByteConverter;-><init>(Lcom/sun/javafx/image/BytePixelGetter;Lcom/sun/javafx/image/BytePixelSetter;)V

    .line 264
    return-void
.end method


# virtual methods
.method doConvert(Ljava/nio/ByteBuffer;IILjava/nio/ByteBuffer;IIII)V
    .locals 15

    .prologue
    .line 290
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/image/impl/ByteRgb$SwapThreeByteConverter;
    move-object/from16 v1, p1

    .local v1, "srcbuf":Ljava/nio/ByteBuffer;
    move/from16 v2, p2

    .local v2, "srcoff":I
    move/from16 v3, p3

    .local v3, "srcscanbytes":I
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
    move v10, v3

    move v11, v7

    const/4 v12, 0x3

    mul-int/lit8 v11, v11, 0x3

    sub-int/2addr v10, v11

    move v3, v10

    .line 291
    move v10, v3

    move v11, v7

    const/4 v12, 0x4

    mul-int/lit8 v11, v11, 0x4

    sub-int/2addr v10, v11

    move v3, v10

    .line 292
    :goto_0
    add-int/lit8 v8, v8, -0x1

    move v10, v8

    if-ltz v10, :cond_1

    .line 293
    const/4 v10, 0x0

    move v9, v10

    .local v9, "x":I
    :goto_1
    move v10, v9

    move v11, v7

    if-ge v10, v11, :cond_0

    .line 294
    move-object v10, v4

    move v11, v5

    add-int/lit8 v5, v5, 0x1

    move-object v12, v1

    move v13, v2

    const/4 v14, 0x2

    add-int/lit8 v13, v13, 0x2

    invoke-virtual {v12, v13}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v12

    invoke-virtual {v10, v11, v12}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    move-result-object v10

    .line 295
    move-object v10, v4

    move v11, v5

    add-int/lit8 v5, v5, 0x1

    move-object v12, v1

    move v13, v2

    const/4 v14, 0x1

    add-int/lit8 v13, v13, 0x1

    invoke-virtual {v12, v13}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v12

    invoke-virtual {v10, v11, v12}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    move-result-object v10

    .line 296
    move-object v10, v4

    move v11, v5

    add-int/lit8 v5, v5, 0x1

    move-object v12, v1

    move v13, v2

    invoke-virtual {v12, v13}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v12

    invoke-virtual {v10, v11, v12}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    move-result-object v10

    .line 297
    add-int/lit8 v2, v2, 0x3

    .line 293
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 299
    :cond_0
    move v10, v2

    move v11, v3

    add-int/2addr v10, v11

    move v2, v10

    .line 300
    move v10, v5

    move v11, v6

    add-int/2addr v10, v11

    move v5, v10

    goto :goto_0

    .line 302
    .end local v9    # "x":I
    :cond_1
    return-void
.end method

.method doConvert([BII[BIIII)V
    .locals 15

    .prologue
    .line 271
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/image/impl/ByteRgb$SwapThreeByteConverter;
    move-object/from16 v1, p1

    .local v1, "srcarr":[B
    move/from16 v2, p2

    .local v2, "srcoff":I
    move/from16 v3, p3

    .local v3, "srcscanbytes":I
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
    move v10, v3

    move v11, v7

    const/4 v12, 0x3

    mul-int/lit8 v11, v11, 0x3

    sub-int/2addr v10, v11

    move v3, v10

    .line 272
    move v10, v3

    move v11, v7

    const/4 v12, 0x4

    mul-int/lit8 v11, v11, 0x4

    sub-int/2addr v10, v11

    move v3, v10

    .line 273
    :goto_0
    add-int/lit8 v8, v8, -0x1

    move v10, v8

    if-ltz v10, :cond_1

    .line 274
    const/4 v10, 0x0

    move v9, v10

    .local v9, "x":I
    :goto_1
    move v10, v9

    move v11, v7

    if-ge v10, v11, :cond_0

    .line 275
    move-object v10, v4

    move v11, v5

    add-int/lit8 v5, v5, 0x1

    move-object v12, v1

    move v13, v2

    const/4 v14, 0x2

    add-int/lit8 v13, v13, 0x2

    aget-byte v12, v12, v13

    aput-byte v12, v10, v11

    .line 276
    move-object v10, v4

    move v11, v5

    add-int/lit8 v5, v5, 0x1

    move-object v12, v1

    move v13, v2

    const/4 v14, 0x1

    add-int/lit8 v13, v13, 0x1

    aget-byte v12, v12, v13

    aput-byte v12, v10, v11

    .line 277
    move-object v10, v4

    move v11, v5

    add-int/lit8 v5, v5, 0x1

    move-object v12, v1

    move v13, v2

    aget-byte v12, v12, v13

    aput-byte v12, v10, v11

    .line 278
    add-int/lit8 v2, v2, 0x3

    .line 274
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 280
    :cond_0
    move v10, v2

    move v11, v3

    add-int/2addr v10, v11

    move v2, v10

    .line 281
    move v10, v5

    move v11, v6

    add-int/2addr v10, v11

    move v5, v10

    goto :goto_0

    .line 283
    .end local v9    # "x":I
    :cond_1
    return-void
.end method
