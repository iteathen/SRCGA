.class Lcom/sun/javafx/image/impl/ByteBgra$ToIntArgbSameConv;
.super Lcom/sun/javafx/image/impl/BaseByteToIntConverter;
.source "ByteBgra.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/image/impl/ByteBgra;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ToIntArgbSameConv"
.end annotation


# static fields
.field static final nonpremul:Lcom/sun/javafx/image/ByteToIntPixelConverter;

.field static final premul:Lcom/sun/javafx/image/ByteToIntPixelConverter;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 206
    new-instance v0, Lcom/sun/javafx/image/impl/ByteBgra$ToIntArgbSameConv;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/sun/javafx/image/impl/ByteBgra$ToIntArgbSameConv;-><init>(Z)V

    sput-object v0, Lcom/sun/javafx/image/impl/ByteBgra$ToIntArgbSameConv;->nonpremul:Lcom/sun/javafx/image/ByteToIntPixelConverter;

    .line 207
    new-instance v0, Lcom/sun/javafx/image/impl/ByteBgra$ToIntArgbSameConv;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/sun/javafx/image/impl/ByteBgra$ToIntArgbSameConv;-><init>(Z)V

    sput-object v0, Lcom/sun/javafx/image/impl/ByteBgra$ToIntArgbSameConv;->premul:Lcom/sun/javafx/image/ByteToIntPixelConverter;

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 5

    .prologue
    .line 210
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/image/impl/ByteBgra$ToIntArgbSameConv;
    move v1, p1

    .local v1, "isPremult":Z
    move-object v2, v0

    move v3, v1

    if-eqz v3, :cond_0

    sget-object v3, Lcom/sun/javafx/image/impl/ByteBgraPre;->getter:Lcom/sun/javafx/image/BytePixelGetter;

    :goto_0
    move v4, v1

    if-eqz v4, :cond_1

    sget-object v4, Lcom/sun/javafx/image/impl/IntArgbPre;->setter:Lcom/sun/javafx/image/IntPixelSetter;

    :goto_1
    invoke-direct {v2, v3, v4}, Lcom/sun/javafx/image/impl/BaseByteToIntConverter;-><init>(Lcom/sun/javafx/image/BytePixelGetter;Lcom/sun/javafx/image/IntPixelSetter;)V

    .line 212
    return-void

    .line 210
    :cond_0
    sget-object v3, Lcom/sun/javafx/image/impl/ByteBgra;->getter:Lcom/sun/javafx/image/BytePixelGetter;

    goto :goto_0

    :cond_1
    sget-object v4, Lcom/sun/javafx/image/impl/IntArgb;->setter:Lcom/sun/javafx/image/IntPixelSetter;

    goto :goto_1
.end method


# virtual methods
.method doConvert(Ljava/nio/ByteBuffer;IILjava/nio/IntBuffer;IIII)V
    .locals 16

    .prologue
    .line 239
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/javafx/image/impl/ByteBgra$ToIntArgbSameConv;
    move-object/from16 v1, p1

    .local v1, "srcbuf":Ljava/nio/ByteBuffer;
    move/from16 v2, p2

    .local v2, "srcoff":I
    move/from16 v3, p3

    .local v3, "srcscanbytes":I
    move-object/from16 v4, p4

    .local v4, "dstbuf":Ljava/nio/IntBuffer;
    move/from16 v5, p5

    .local v5, "dstoff":I
    move/from16 v6, p6

    .local v6, "dstscanints":I
    move/from16 v7, p7

    .local v7, "w":I
    move/from16 v8, p8

    .local v8, "h":I
    move v10, v3

    move v11, v7

    const/4 v12, 0x4

    mul-int/lit8 v11, v11, 0x4

    sub-int/2addr v10, v11

    move v3, v10

    .line 240
    :goto_0
    add-int/lit8 v8, v8, -0x1

    move v10, v8

    if-ltz v10, :cond_1

    .line 241
    const/4 v10, 0x0

    move v9, v10

    .local v9, "x":I
    :goto_1
    move v10, v9

    move v11, v7

    if-ge v10, v11, :cond_0

    .line 242
    move-object v10, v4

    move v11, v5

    move v12, v9

    add-int/2addr v11, v12

    move-object v12, v1

    move v13, v2

    .line 243
    invoke-virtual {v12, v13}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v12

    const/16 v13, 0xff

    and-int/lit16 v12, v12, 0xff

    move-object v13, v1

    move v14, v2

    const/4 v15, 0x1

    add-int/lit8 v14, v14, 0x1

    .line 244
    invoke-virtual {v13, v14}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v13

    const/16 v14, 0xff

    and-int/lit16 v13, v13, 0xff

    const/16 v14, 0x8

    shl-int/lit8 v13, v13, 0x8

    or-int/2addr v12, v13

    move-object v13, v1

    move v14, v2

    const/4 v15, 0x2

    add-int/lit8 v14, v14, 0x2

    .line 245
    invoke-virtual {v13, v14}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v13

    const/16 v14, 0xff

    and-int/lit16 v13, v13, 0xff

    const/16 v14, 0x10

    shl-int/lit8 v13, v13, 0x10

    or-int/2addr v12, v13

    move-object v13, v1

    move v14, v2

    const/4 v15, 0x3

    add-int/lit8 v14, v14, 0x3

    .line 246
    invoke-virtual {v13, v14}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v13

    const/16 v14, 0x18

    shl-int/lit8 v13, v13, 0x18

    or-int/2addr v12, v13

    .line 242
    invoke-virtual {v10, v11, v12}, Ljava/nio/IntBuffer;->put(II)Ljava/nio/IntBuffer;

    move-result-object v10

    .line 247
    add-int/lit8 v2, v2, 0x4

    .line 241
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 249
    :cond_0
    move v10, v2

    move v11, v3

    add-int/2addr v10, v11

    move v2, v10

    .line 250
    move v10, v5

    move v11, v6

    add-int/2addr v10, v11

    move v5, v10

    goto :goto_0

    .line 252
    .end local v9    # "x":I
    :cond_1
    return-void
.end method

.method doConvert([BII[IIIII)V
    .locals 15

    .prologue
    .line 219
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/image/impl/ByteBgra$ToIntArgbSameConv;
    move-object/from16 v1, p1

    .local v1, "srcarr":[B
    move/from16 v2, p2

    .local v2, "srcoff":I
    move/from16 v3, p3

    .local v3, "srcscanbytes":I
    move-object/from16 v4, p4

    .local v4, "dstarr":[I
    move/from16 v5, p5

    .local v5, "dstoff":I
    move/from16 v6, p6

    .local v6, "dstscanints":I
    move/from16 v7, p7

    .local v7, "w":I
    move/from16 v8, p8

    .local v8, "h":I
    move v10, v3

    move v11, v7

    const/4 v12, 0x4

    mul-int/lit8 v11, v11, 0x4

    sub-int/2addr v10, v11

    move v3, v10

    .line 220
    move v10, v6

    move v11, v7

    sub-int/2addr v10, v11

    move v6, v10

    .line 221
    :goto_0
    add-int/lit8 v8, v8, -0x1

    move v10, v8

    if-ltz v10, :cond_1

    .line 222
    const/4 v10, 0x0

    move v9, v10

    .local v9, "x":I
    :goto_1
    move v10, v9

    move v11, v7

    if-ge v10, v11, :cond_0

    .line 223
    move-object v10, v4

    move v11, v5

    add-int/lit8 v5, v5, 0x1

    move-object v12, v1

    move v13, v2

    add-int/lit8 v2, v2, 0x1

    aget-byte v12, v12, v13

    const/16 v13, 0xff

    and-int/lit16 v12, v12, 0xff

    move-object v13, v1

    move v14, v2

    add-int/lit8 v2, v2, 0x1

    aget-byte v13, v13, v14

    const/16 v14, 0xff

    and-int/lit16 v13, v13, 0xff

    const/16 v14, 0x8

    shl-int/lit8 v13, v13, 0x8

    or-int/2addr v12, v13

    move-object v13, v1

    move v14, v2

    add-int/lit8 v2, v2, 0x1

    aget-byte v13, v13, v14

    const/16 v14, 0xff

    and-int/lit16 v13, v13, 0xff

    const/16 v14, 0x10

    shl-int/lit8 v13, v13, 0x10

    or-int/2addr v12, v13

    move-object v13, v1

    move v14, v2

    add-int/lit8 v2, v2, 0x1

    aget-byte v13, v13, v14

    const/16 v14, 0x18

    shl-int/lit8 v13, v13, 0x18

    or-int/2addr v12, v13

    aput v12, v10, v11

    .line 222
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 229
    :cond_0
    move v10, v2

    move v11, v3

    add-int/2addr v10, v11

    move v2, v10

    .line 230
    move v10, v5

    move v11, v6

    add-int/2addr v10, v11

    move v5, v10

    goto :goto_0

    .line 232
    .end local v9    # "x":I
    :cond_1
    return-void
.end method
