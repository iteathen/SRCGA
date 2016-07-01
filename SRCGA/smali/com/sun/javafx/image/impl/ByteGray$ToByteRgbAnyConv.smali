.class Lcom/sun/javafx/image/impl/ByteGray$ToByteRgbAnyConv;
.super Lcom/sun/javafx/image/impl/BaseByteToByteConverter;
.source "ByteGray.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/image/impl/ByteGray;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ToByteRgbAnyConv"
.end annotation


# static fields
.field static bgr:Lcom/sun/javafx/image/impl/ByteGray$ToByteRgbAnyConv;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 223
    new-instance v0, Lcom/sun/javafx/image/impl/ByteGray$ToByteRgbAnyConv;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    sget-object v2, Lcom/sun/javafx/image/impl/ByteBgr;->setter:Lcom/sun/javafx/image/BytePixelSetter;

    invoke-direct {v1, v2}, Lcom/sun/javafx/image/impl/ByteGray$ToByteRgbAnyConv;-><init>(Lcom/sun/javafx/image/BytePixelSetter;)V

    sput-object v0, Lcom/sun/javafx/image/impl/ByteGray$ToByteRgbAnyConv;->bgr:Lcom/sun/javafx/image/impl/ByteGray$ToByteRgbAnyConv;

    return-void
.end method

.method private constructor <init>(Lcom/sun/javafx/image/BytePixelSetter;)V
    .locals 5

    .prologue
    .line 226
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/image/impl/ByteGray$ToByteRgbAnyConv;
    move-object v1, p1

    .local v1, "setter":Lcom/sun/javafx/image/BytePixelSetter;
    move-object v2, v0

    sget-object v3, Lcom/sun/javafx/image/impl/ByteGray;->getter:Lcom/sun/javafx/image/BytePixelGetter;

    move-object v4, v1

    invoke-direct {v2, v3, v4}, Lcom/sun/javafx/image/impl/BaseByteToByteConverter;-><init>(Lcom/sun/javafx/image/BytePixelGetter;Lcom/sun/javafx/image/BytePixelSetter;)V

    .line 227
    return-void
.end method


# virtual methods
.method doConvert(Ljava/nio/ByteBuffer;IILjava/nio/ByteBuffer;IIII)V
    .locals 14

    .prologue
    .line 252
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/image/impl/ByteGray$ToByteRgbAnyConv;
    move-object v1, p1

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
    move v11, v6

    move v12, v7

    const/4 v13, 0x3

    mul-int/lit8 v12, v12, 0x3

    sub-int/2addr v11, v12

    move v6, v11

    .line 253
    :goto_0
    add-int/lit8 v8, v8, -0x1

    move v11, v8

    if-ltz v11, :cond_1

    .line 254
    const/4 v11, 0x0

    move v9, v11

    .local v9, "x":I
    :goto_1
    move v11, v9

    move v12, v7

    if-ge v11, v12, :cond_0

    .line 255
    move-object v11, v1

    move v12, v2

    move v13, v9

    add-int/2addr v12, v13

    invoke-virtual {v11, v12}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v11

    const/16 v12, 0xff

    and-int/lit16 v11, v11, 0xff

    move v10, v11

    .line 256
    .local v10, "g":I
    move-object v11, v4

    move v12, v5

    add-int/lit8 v5, v5, 0x1

    move v13, v10

    int-to-byte v13, v13

    invoke-virtual {v11, v12, v13}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    move-result-object v11

    .line 257
    move-object v11, v4

    move v12, v5

    add-int/lit8 v5, v5, 0x1

    move v13, v10

    int-to-byte v13, v13

    invoke-virtual {v11, v12, v13}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    move-result-object v11

    .line 258
    move-object v11, v4

    move v12, v5

    add-int/lit8 v5, v5, 0x1

    move v13, v10

    int-to-byte v13, v13

    invoke-virtual {v11, v12, v13}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    move-result-object v11

    .line 254
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 260
    .end local v10    # "g":I
    :cond_0
    move v11, v2

    move v12, v3

    add-int/2addr v11, v12

    move v2, v11

    .line 261
    move v11, v5

    move v12, v6

    add-int/2addr v11, v12

    move v5, v11

    goto :goto_0

    .line 263
    .end local v9    # "x":I
    :cond_1
    return-void
.end method

.method doConvert([BII[BIIII)V
    .locals 14

    .prologue
    .line 234
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/image/impl/ByteGray$ToByteRgbAnyConv;
    move-object v1, p1

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
    move v11, v6

    move v12, v7

    const/4 v13, 0x3

    mul-int/lit8 v12, v12, 0x3

    sub-int/2addr v11, v12

    move v6, v11

    .line 235
    :goto_0
    add-int/lit8 v8, v8, -0x1

    move v11, v8

    if-ltz v11, :cond_1

    .line 236
    const/4 v11, 0x0

    move v9, v11

    .local v9, "x":I
    :goto_1
    move v11, v9

    move v12, v7

    if-ge v11, v12, :cond_0

    .line 237
    move-object v11, v1

    move v12, v2

    move v13, v9

    add-int/2addr v12, v13

    aget-byte v11, v11, v12

    const/16 v12, 0xff

    and-int/lit16 v11, v11, 0xff

    move v10, v11

    .line 238
    .local v10, "g":I
    move-object v11, v4

    move v12, v5

    add-int/lit8 v5, v5, 0x1

    move v13, v10

    int-to-byte v13, v13

    aput-byte v13, v11, v12

    .line 239
    move-object v11, v4

    move v12, v5

    add-int/lit8 v5, v5, 0x1

    move v13, v10

    int-to-byte v13, v13

    aput-byte v13, v11, v12

    .line 240
    move-object v11, v4

    move v12, v5

    add-int/lit8 v5, v5, 0x1

    move v13, v10

    int-to-byte v13, v13

    aput-byte v13, v11, v12

    .line 236
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 242
    .end local v10    # "g":I
    :cond_0
    move v11, v2

    move v12, v3

    add-int/2addr v11, v12

    move v2, v11

    .line 243
    move v11, v5

    move v12, v6

    add-int/2addr v11, v12

    move v5, v11

    goto :goto_0

    .line 245
    .end local v9    # "x":I
    :cond_1
    return-void
.end method
