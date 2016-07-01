.class public Lcom/sun/javafx/image/impl/ByteBgraPre$ToIntArgbConv;
.super Lcom/sun/javafx/image/impl/BaseByteToIntConverter;
.source "ByteBgraPre.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/image/impl/ByteBgraPre;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ToIntArgbConv"
.end annotation


# static fields
.field public static final instance:Lcom/sun/javafx/image/ByteToIntPixelConverter;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 200
    new-instance v0, Lcom/sun/javafx/image/impl/ByteBgraPre$ToIntArgbConv;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Lcom/sun/javafx/image/impl/ByteBgraPre$ToIntArgbConv;-><init>()V

    sput-object v0, Lcom/sun/javafx/image/impl/ByteBgraPre$ToIntArgbConv;->instance:Lcom/sun/javafx/image/ByteToIntPixelConverter;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .prologue
    .line 204
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/image/impl/ByteBgraPre$ToIntArgbConv;
    move-object v1, v0

    sget-object v2, Lcom/sun/javafx/image/impl/ByteBgraPre;->getter:Lcom/sun/javafx/image/BytePixelGetter;

    sget-object v3, Lcom/sun/javafx/image/impl/IntArgb;->setter:Lcom/sun/javafx/image/IntPixelSetter;

    invoke-direct {v1, v2, v3}, Lcom/sun/javafx/image/impl/BaseByteToIntConverter;-><init>(Lcom/sun/javafx/image/BytePixelGetter;Lcom/sun/javafx/image/IntPixelSetter;)V

    .line 205
    return-void
.end method


# virtual methods
.method doConvert(Ljava/nio/ByteBuffer;IILjava/nio/IntBuffer;IIII)V
    .locals 22

    .prologue
    .line 239
    move-object/from16 v2, p0

    .local v2, "this":Lcom/sun/javafx/image/impl/ByteBgraPre$ToIntArgbConv;
    move-object/from16 v3, p1

    .local v3, "srcbuf":Ljava/nio/ByteBuffer;
    move/from16 v4, p2

    .local v4, "srcoff":I
    move/from16 v5, p3

    .local v5, "srcscanbytes":I
    move-object/from16 v6, p4

    .local v6, "dstbuf":Ljava/nio/IntBuffer;
    move/from16 v7, p5

    .local v7, "dstoff":I
    move/from16 v8, p6

    .local v8, "dstscanints":I
    move/from16 v9, p7

    .local v9, "w":I
    move/from16 v10, p8

    .local v10, "h":I
    move/from16 v17, v5

    move/from16 v18, v9

    const/16 v19, 0x4

    mul-int/lit8 v18, v18, 0x4

    sub-int v17, v17, v18

    move/from16 v5, v17

    .line 240
    :goto_0
    add-int/lit8 v10, v10, -0x1

    move/from16 v17, v10

    if-ltz v17, :cond_2

    .line 241
    const/16 v17, 0x0

    move/from16 v11, v17

    .local v11, "x":I
    :goto_1
    move/from16 v17, v11

    move/from16 v18, v9

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_1

    .line 242
    move-object/from16 v17, v3

    move/from16 v18, v4

    invoke-virtual/range {v17 .. v18}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v17

    const/16 v18, 0xff

    move/from16 v0, v17

    and-int/lit16 v0, v0, 0xff

    move/from16 v17, v0

    move/from16 v12, v17

    .line 243
    .local v12, "b":I
    move-object/from16 v17, v3

    move/from16 v18, v4

    const/16 v19, 0x1

    add-int/lit8 v18, v18, 0x1

    invoke-virtual/range {v17 .. v18}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v17

    const/16 v18, 0xff

    move/from16 v0, v17

    and-int/lit16 v0, v0, 0xff

    move/from16 v17, v0

    move/from16 v13, v17

    .line 244
    .local v13, "g":I
    move-object/from16 v17, v3

    move/from16 v18, v4

    const/16 v19, 0x2

    add-int/lit8 v18, v18, 0x2

    invoke-virtual/range {v17 .. v18}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v17

    const/16 v18, 0xff

    move/from16 v0, v17

    and-int/lit16 v0, v0, 0xff

    move/from16 v17, v0

    move/from16 v14, v17

    .line 245
    .local v14, "r":I
    move-object/from16 v17, v3

    move/from16 v18, v4

    const/16 v19, 0x3

    add-int/lit8 v18, v18, 0x3

    invoke-virtual/range {v17 .. v18}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v17

    const/16 v18, 0xff

    move/from16 v0, v17

    and-int/lit16 v0, v0, 0xff

    move/from16 v17, v0

    move/from16 v15, v17

    .line 246
    .local v15, "a":I
    add-int/lit8 v4, v4, 0x4

    .line 247
    move/from16 v17, v15

    if-lez v17, :cond_0

    move/from16 v17, v15

    const/16 v18, 0xff

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_0

    .line 248
    move/from16 v17, v15

    const/16 v18, 0x1

    shr-int/lit8 v17, v17, 0x1

    move/from16 v16, v17

    .line 249
    .local v16, "halfa":I
    move/from16 v17, v14

    const/16 v18, 0xff

    move/from16 v0, v17

    mul-int/lit16 v0, v0, 0xff

    move/from16 v17, v0

    move/from16 v18, v16

    add-int v17, v17, v18

    move/from16 v18, v15

    div-int v17, v17, v18

    move/from16 v14, v17

    .line 250
    move/from16 v17, v13

    const/16 v18, 0xff

    move/from16 v0, v17

    mul-int/lit16 v0, v0, 0xff

    move/from16 v17, v0

    move/from16 v18, v16

    add-int v17, v17, v18

    move/from16 v18, v15

    div-int v17, v17, v18

    move/from16 v13, v17

    .line 251
    move/from16 v17, v12

    const/16 v18, 0xff

    move/from16 v0, v17

    mul-int/lit16 v0, v0, 0xff

    move/from16 v17, v0

    move/from16 v18, v16

    add-int v17, v17, v18

    move/from16 v18, v15

    div-int v17, v17, v18

    move/from16 v12, v17

    .line 253
    .end local v16    # "halfa":I
    :cond_0
    move-object/from16 v17, v6

    move/from16 v18, v7

    move/from16 v19, v11

    add-int v18, v18, v19

    move/from16 v19, v15

    const/16 v20, 0x18

    shl-int/lit8 v19, v19, 0x18

    move/from16 v20, v14

    const/16 v21, 0x10

    shl-int/lit8 v20, v20, 0x10

    or-int v19, v19, v20

    move/from16 v20, v13

    const/16 v21, 0x8

    shl-int/lit8 v20, v20, 0x8

    or-int v19, v19, v20

    move/from16 v20, v12

    or-int v19, v19, v20

    invoke-virtual/range {v17 .. v19}, Ljava/nio/IntBuffer;->put(II)Ljava/nio/IntBuffer;

    move-result-object v17

    .line 241
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_1

    .line 255
    .end local v12    # "b":I
    .end local v13    # "g":I
    .end local v14    # "r":I
    .end local v15    # "a":I
    :cond_1
    move/from16 v17, v7

    move/from16 v18, v8

    add-int v17, v17, v18

    move/from16 v7, v17

    .line 256
    move/from16 v17, v4

    move/from16 v18, v5

    add-int v17, v17, v18

    move/from16 v4, v17

    goto/16 :goto_0

    .line 258
    .end local v11    # "x":I
    :cond_2
    return-void
.end method

.method doConvert([BII[IIIII)V
    .locals 22

    .prologue
    .line 212
    move-object/from16 v2, p0

    .local v2, "this":Lcom/sun/javafx/image/impl/ByteBgraPre$ToIntArgbConv;
    move-object/from16 v3, p1

    .local v3, "srcarr":[B
    move/from16 v4, p2

    .local v4, "srcoff":I
    move/from16 v5, p3

    .local v5, "srcscanbytes":I
    move-object/from16 v6, p4

    .local v6, "dstarr":[I
    move/from16 v7, p5

    .local v7, "dstoff":I
    move/from16 v8, p6

    .local v8, "dstscanints":I
    move/from16 v9, p7

    .local v9, "w":I
    move/from16 v10, p8

    .local v10, "h":I
    move/from16 v17, v5

    move/from16 v18, v9

    const/16 v19, 0x4

    mul-int/lit8 v18, v18, 0x4

    sub-int v17, v17, v18

    move/from16 v5, v17

    .line 213
    move/from16 v17, v8

    move/from16 v18, v9

    sub-int v17, v17, v18

    move/from16 v8, v17

    .line 214
    :goto_0
    add-int/lit8 v10, v10, -0x1

    move/from16 v17, v10

    if-ltz v17, :cond_2

    .line 215
    const/16 v17, 0x0

    move/from16 v11, v17

    .local v11, "x":I
    :goto_1
    move/from16 v17, v11

    move/from16 v18, v9

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_1

    .line 216
    move-object/from16 v17, v3

    move/from16 v18, v4

    add-int/lit8 v4, v4, 0x1

    aget-byte v17, v17, v18

    const/16 v18, 0xff

    move/from16 v0, v17

    and-int/lit16 v0, v0, 0xff

    move/from16 v17, v0

    move/from16 v12, v17

    .line 217
    .local v12, "b":I
    move-object/from16 v17, v3

    move/from16 v18, v4

    add-int/lit8 v4, v4, 0x1

    aget-byte v17, v17, v18

    const/16 v18, 0xff

    move/from16 v0, v17

    and-int/lit16 v0, v0, 0xff

    move/from16 v17, v0

    move/from16 v13, v17

    .line 218
    .local v13, "g":I
    move-object/from16 v17, v3

    move/from16 v18, v4

    add-int/lit8 v4, v4, 0x1

    aget-byte v17, v17, v18

    const/16 v18, 0xff

    move/from16 v0, v17

    and-int/lit16 v0, v0, 0xff

    move/from16 v17, v0

    move/from16 v14, v17

    .line 219
    .local v14, "r":I
    move-object/from16 v17, v3

    move/from16 v18, v4

    add-int/lit8 v4, v4, 0x1

    aget-byte v17, v17, v18

    const/16 v18, 0xff

    move/from16 v0, v17

    and-int/lit16 v0, v0, 0xff

    move/from16 v17, v0

    move/from16 v15, v17

    .line 220
    .local v15, "a":I
    move/from16 v17, v15

    if-lez v17, :cond_0

    move/from16 v17, v15

    const/16 v18, 0xff

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_0

    .line 221
    move/from16 v17, v15

    const/16 v18, 0x1

    shr-int/lit8 v17, v17, 0x1

    move/from16 v16, v17

    .line 222
    .local v16, "halfa":I
    move/from16 v17, v14

    const/16 v18, 0xff

    move/from16 v0, v17

    mul-int/lit16 v0, v0, 0xff

    move/from16 v17, v0

    move/from16 v18, v16

    add-int v17, v17, v18

    move/from16 v18, v15

    div-int v17, v17, v18

    move/from16 v14, v17

    .line 223
    move/from16 v17, v13

    const/16 v18, 0xff

    move/from16 v0, v17

    mul-int/lit16 v0, v0, 0xff

    move/from16 v17, v0

    move/from16 v18, v16

    add-int v17, v17, v18

    move/from16 v18, v15

    div-int v17, v17, v18

    move/from16 v13, v17

    .line 224
    move/from16 v17, v12

    const/16 v18, 0xff

    move/from16 v0, v17

    mul-int/lit16 v0, v0, 0xff

    move/from16 v17, v0

    move/from16 v18, v16

    add-int v17, v17, v18

    move/from16 v18, v15

    div-int v17, v17, v18

    move/from16 v12, v17

    .line 226
    .end local v16    # "halfa":I
    :cond_0
    move-object/from16 v17, v6

    move/from16 v18, v7

    add-int/lit8 v7, v7, 0x1

    move/from16 v19, v15

    const/16 v20, 0x18

    shl-int/lit8 v19, v19, 0x18

    move/from16 v20, v14

    const/16 v21, 0x10

    shl-int/lit8 v20, v20, 0x10

    or-int v19, v19, v20

    move/from16 v20, v13

    const/16 v21, 0x8

    shl-int/lit8 v20, v20, 0x8

    or-int v19, v19, v20

    move/from16 v20, v12

    or-int v19, v19, v20

    aput v19, v17, v18

    .line 215
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_1

    .line 229
    .end local v12    # "b":I
    .end local v13    # "g":I
    .end local v14    # "r":I
    .end local v15    # "a":I
    :cond_1
    move/from16 v17, v7

    move/from16 v18, v8

    add-int v17, v17, v18

    move/from16 v7, v17

    .line 230
    move/from16 v17, v4

    move/from16 v18, v5

    add-int v17, v17, v18

    move/from16 v4, v17

    goto/16 :goto_0

    .line 232
    .end local v11    # "x":I
    :cond_2
    return-void
.end method
