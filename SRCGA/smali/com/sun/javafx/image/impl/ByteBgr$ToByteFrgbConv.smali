.class Lcom/sun/javafx/image/impl/ByteBgr$ToByteFrgbConv;
.super Lcom/sun/javafx/image/impl/BaseByteToByteConverter;
.source "ByteBgr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/image/impl/ByteBgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ToByteFrgbConv"
.end annotation


# static fields
.field static final nonpremult:Lcom/sun/javafx/image/ByteToBytePixelConverter;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 240
    new-instance v0, Lcom/sun/javafx/image/impl/ByteBgr$ToByteFrgbConv;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    sget-object v2, Lcom/sun/javafx/image/impl/ByteArgb;->setter:Lcom/sun/javafx/image/BytePixelSetter;

    invoke-direct {v1, v2}, Lcom/sun/javafx/image/impl/ByteBgr$ToByteFrgbConv;-><init>(Lcom/sun/javafx/image/BytePixelSetter;)V

    sput-object v0, Lcom/sun/javafx/image/impl/ByteBgr$ToByteFrgbConv;->nonpremult:Lcom/sun/javafx/image/ByteToBytePixelConverter;

    return-void
.end method

.method private constructor <init>(Lcom/sun/javafx/image/BytePixelSetter;)V
    .locals 5

    .prologue
    .line 244
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/image/impl/ByteBgr$ToByteFrgbConv;
    move-object v1, p1

    .local v1, "setter":Lcom/sun/javafx/image/BytePixelSetter;
    move-object v2, v0

    sget-object v3, Lcom/sun/javafx/image/impl/ByteBgr;->getter:Lcom/sun/javafx/image/BytePixelGetter;

    move-object v4, v1

    invoke-direct {v2, v3, v4}, Lcom/sun/javafx/image/impl/BaseByteToByteConverter;-><init>(Lcom/sun/javafx/image/BytePixelGetter;Lcom/sun/javafx/image/BytePixelSetter;)V

    .line 245
    return-void
.end method


# virtual methods
.method doConvert(Ljava/nio/ByteBuffer;IILjava/nio/ByteBuffer;IIII)V
    .locals 15

    .prologue
    .line 272
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/image/impl/ByteBgr$ToByteFrgbConv;
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

    .line 273
    move v10, v3

    move v11, v7

    const/4 v12, 0x4

    mul-int/lit8 v11, v11, 0x4

    sub-int/2addr v10, v11

    move v3, v10

    .line 274
    :goto_0
    add-int/lit8 v8, v8, -0x1

    move v10, v8

    if-ltz v10, :cond_1

    .line 275
    const/4 v10, 0x0

    move v9, v10

    .local v9, "x":I
    :goto_1
    move v10, v9

    move v11, v7

    if-ge v10, v11, :cond_0

    .line 276
    move-object v10, v4

    move v11, v5

    add-int/lit8 v5, v5, 0x1

    const/4 v12, -0x1

    invoke-virtual {v10, v11, v12}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    move-result-object v10

    .line 277
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

    .line 278
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

    .line 279
    move-object v10, v4

    move v11, v5

    add-int/lit8 v5, v5, 0x1

    move-object v12, v1

    move v13, v2

    invoke-virtual {v12, v13}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v12

    invoke-virtual {v10, v11, v12}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    move-result-object v10

    .line 280
    add-int/lit8 v2, v2, 0x3

    .line 275
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 282
    :cond_0
    move v10, v2

    move v11, v3

    add-int/2addr v10, v11

    move v2, v10

    .line 283
    move v10, v5

    move v11, v6

    add-int/2addr v10, v11

    move v5, v10

    goto :goto_0

    .line 285
    .end local v9    # "x":I
    :cond_1
    return-void
.end method

.method doConvert([BII[BIIII)V
    .locals 15

    .prologue
    .line 252
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/image/impl/ByteBgr$ToByteFrgbConv;
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

    .line 253
    move v10, v3

    move v11, v7

    const/4 v12, 0x4

    mul-int/lit8 v11, v11, 0x4

    sub-int/2addr v10, v11

    move v3, v10

    .line 254
    :goto_0
    add-int/lit8 v8, v8, -0x1

    move v10, v8

    if-ltz v10, :cond_1

    .line 255
    const/4 v10, 0x0

    move v9, v10

    .local v9, "x":I
    :goto_1
    move v10, v9

    move v11, v7

    if-ge v10, v11, :cond_0

    .line 256
    move-object v10, v4

    move v11, v5

    add-int/lit8 v5, v5, 0x1

    const/4 v12, -0x1

    aput-byte v12, v10, v11

    .line 257
    move-object v10, v4

    move v11, v5

    add-int/lit8 v5, v5, 0x1

    move-object v12, v1

    move v13, v2

    const/4 v14, 0x2

    add-int/lit8 v13, v13, 0x2

    aget-byte v12, v12, v13

    aput-byte v12, v10, v11

    .line 258
    move-object v10, v4

    move v11, v5

    add-int/lit8 v5, v5, 0x1

    move-object v12, v1

    move v13, v2

    const/4 v14, 0x1

    add-int/lit8 v13, v13, 0x1

    aget-byte v12, v12, v13

    aput-byte v12, v10, v11

    .line 259
    move-object v10, v4

    move v11, v5

    add-int/lit8 v5, v5, 0x1

    move-object v12, v1

    move v13, v2

    aget-byte v12, v12, v13

    aput-byte v12, v10, v11

    .line 260
    add-int/lit8 v2, v2, 0x3

    .line 255
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 262
    :cond_0
    move v10, v2

    move v11, v3

    add-int/2addr v10, v11

    move v2, v10

    .line 263
    move v10, v5

    move v11, v6

    add-int/2addr v10, v11

    move v5, v10

    goto :goto_0

    .line 265
    .end local v9    # "x":I
    :cond_1
    return-void
.end method
