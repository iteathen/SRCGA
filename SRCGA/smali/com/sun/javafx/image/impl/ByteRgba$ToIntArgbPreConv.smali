.class Lcom/sun/javafx/image/impl/ByteRgba$ToIntArgbPreConv;
.super Lcom/sun/javafx/image/impl/BaseByteToIntConverter;
.source "ByteRgba.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/image/impl/ByteRgba;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ToIntArgbPreConv"
.end annotation


# static fields
.field public static final instance:Lcom/sun/javafx/image/ByteToIntPixelConverter;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 258
    new-instance v0, Lcom/sun/javafx/image/impl/ByteRgba$ToIntArgbPreConv;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Lcom/sun/javafx/image/impl/ByteRgba$ToIntArgbPreConv;-><init>()V

    sput-object v0, Lcom/sun/javafx/image/impl/ByteRgba$ToIntArgbPreConv;->instance:Lcom/sun/javafx/image/ByteToIntPixelConverter;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .prologue
    .line 262
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/image/impl/ByteRgba$ToIntArgbPreConv;
    move-object v1, v0

    sget-object v2, Lcom/sun/javafx/image/impl/ByteRgba;->getter:Lcom/sun/javafx/image/BytePixelGetter;

    sget-object v3, Lcom/sun/javafx/image/impl/IntArgbPre;->setter:Lcom/sun/javafx/image/IntPixelSetter;

    invoke-direct {v1, v2, v3}, Lcom/sun/javafx/image/impl/BaseByteToIntConverter;-><init>(Lcom/sun/javafx/image/BytePixelGetter;Lcom/sun/javafx/image/IntPixelSetter;)V

    .line 263
    return-void
.end method


# virtual methods
.method doConvert(Ljava/nio/ByteBuffer;IILjava/nio/IntBuffer;IIII)V
    .locals 20

    .prologue
    .line 300
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/javafx/image/impl/ByteRgba$ToIntArgbPreConv;
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
    move v14, v3

    move v15, v7

    const/16 v16, 0x4

    mul-int/lit8 v15, v15, 0x4

    sub-int/2addr v14, v15

    move v3, v14

    .line 301
    :goto_0
    add-int/lit8 v8, v8, -0x1

    move v14, v8

    if-ltz v14, :cond_3

    .line 302
    const/4 v14, 0x0

    move v9, v14

    .local v9, "x":I
    :goto_1
    move v14, v9

    move v15, v7

    if-ge v14, v15, :cond_2

    .line 303
    move-object v14, v1

    move v15, v2

    invoke-virtual {v14, v15}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v14

    const/16 v15, 0xff

    and-int/lit16 v14, v14, 0xff

    move v10, v14

    .line 304
    .local v10, "b":I
    move-object v14, v1

    move v15, v2

    const/16 v16, 0x1

    add-int/lit8 v15, v15, 0x1

    invoke-virtual {v14, v15}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v14

    const/16 v15, 0xff

    and-int/lit16 v14, v14, 0xff

    move v11, v14

    .line 305
    .local v11, "g":I
    move-object v14, v1

    move v15, v2

    const/16 v16, 0x2

    add-int/lit8 v15, v15, 0x2

    invoke-virtual {v14, v15}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v14

    const/16 v15, 0xff

    and-int/lit16 v14, v14, 0xff

    move v12, v14

    .line 306
    .local v12, "r":I
    move-object v14, v1

    move v15, v2

    const/16 v16, 0x3

    add-int/lit8 v15, v15, 0x3

    invoke-virtual {v14, v15}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v14

    const/16 v15, 0xff

    and-int/lit16 v14, v14, 0xff

    move v13, v14

    .line 307
    .local v13, "a":I
    add-int/lit8 v2, v2, 0x4

    .line 308
    move v14, v13

    const/16 v15, 0xff

    if-ge v14, v15, :cond_0

    .line 309
    move v14, v13

    if-nez v14, :cond_1

    .line 310
    const/4 v14, 0x0

    move/from16 v19, v14

    move/from16 v14, v19

    move/from16 v15, v19

    move v12, v15

    move/from16 v19, v14

    move/from16 v14, v19

    move/from16 v15, v19

    move v11, v15

    move v10, v14

    .line 317
    :cond_0
    :goto_2
    move-object v14, v4

    move v15, v5

    move/from16 v16, v9

    add-int v15, v15, v16

    move/from16 v16, v13

    const/16 v17, 0x18

    shl-int/lit8 v16, v16, 0x18

    move/from16 v17, v12

    const/16 v18, 0x10

    shl-int/lit8 v17, v17, 0x10

    or-int v16, v16, v17

    move/from16 v17, v11

    const/16 v18, 0x8

    shl-int/lit8 v17, v17, 0x8

    or-int v16, v16, v17

    move/from16 v17, v10

    or-int v16, v16, v17

    invoke-virtual/range {v14 .. v16}, Ljava/nio/IntBuffer;->put(II)Ljava/nio/IntBuffer;

    move-result-object v14

    .line 302
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 312
    :cond_1
    move v14, v10

    move v15, v13

    mul-int/2addr v14, v15

    const/16 v15, 0x7f

    add-int/lit8 v14, v14, 0x7f

    const/16 v15, 0xff

    div-int/lit16 v14, v14, 0xff

    move v10, v14

    .line 313
    move v14, v11

    move v15, v13

    mul-int/2addr v14, v15

    const/16 v15, 0x7f

    add-int/lit8 v14, v14, 0x7f

    const/16 v15, 0xff

    div-int/lit16 v14, v14, 0xff

    move v11, v14

    .line 314
    move v14, v12

    move v15, v13

    mul-int/2addr v14, v15

    const/16 v15, 0x7f

    add-int/lit8 v14, v14, 0x7f

    const/16 v15, 0xff

    div-int/lit16 v14, v14, 0xff

    move v12, v14

    goto :goto_2

    .line 319
    .end local v10    # "b":I
    .end local v11    # "g":I
    .end local v12    # "r":I
    .end local v13    # "a":I
    :cond_2
    move v14, v5

    move v15, v6

    add-int/2addr v14, v15

    move v5, v14

    .line 320
    move v14, v2

    move v15, v3

    add-int/2addr v14, v15

    move v2, v14

    goto/16 :goto_0

    .line 322
    .end local v9    # "x":I
    :cond_3
    return-void
.end method

.method doConvert([BII[IIIII)V
    .locals 20

    .prologue
    .line 270
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/javafx/image/impl/ByteRgba$ToIntArgbPreConv;
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
    move v14, v3

    move v15, v7

    const/16 v16, 0x4

    mul-int/lit8 v15, v15, 0x4

    sub-int/2addr v14, v15

    move v3, v14

    .line 271
    move v14, v6

    move v15, v7

    sub-int/2addr v14, v15

    move v6, v14

    .line 272
    :goto_0
    add-int/lit8 v8, v8, -0x1

    move v14, v8

    if-ltz v14, :cond_3

    .line 273
    const/4 v14, 0x0

    move v9, v14

    .local v9, "x":I
    :goto_1
    move v14, v9

    move v15, v7

    if-ge v14, v15, :cond_2

    .line 274
    move-object v14, v1

    move v15, v2

    add-int/lit8 v2, v2, 0x1

    aget-byte v14, v14, v15

    const/16 v15, 0xff

    and-int/lit16 v14, v14, 0xff

    move v10, v14

    .line 275
    .local v10, "b":I
    move-object v14, v1

    move v15, v2

    add-int/lit8 v2, v2, 0x1

    aget-byte v14, v14, v15

    const/16 v15, 0xff

    and-int/lit16 v14, v14, 0xff

    move v11, v14

    .line 276
    .local v11, "g":I
    move-object v14, v1

    move v15, v2

    add-int/lit8 v2, v2, 0x1

    aget-byte v14, v14, v15

    const/16 v15, 0xff

    and-int/lit16 v14, v14, 0xff

    move v12, v14

    .line 277
    .local v12, "r":I
    move-object v14, v1

    move v15, v2

    add-int/lit8 v2, v2, 0x1

    aget-byte v14, v14, v15

    const/16 v15, 0xff

    and-int/lit16 v14, v14, 0xff

    move v13, v14

    .line 278
    .local v13, "a":I
    move v14, v13

    const/16 v15, 0xff

    if-ge v14, v15, :cond_0

    .line 279
    move v14, v13

    if-nez v14, :cond_1

    .line 280
    const/4 v14, 0x0

    move/from16 v19, v14

    move/from16 v14, v19

    move/from16 v15, v19

    move v12, v15

    move/from16 v19, v14

    move/from16 v14, v19

    move/from16 v15, v19

    move v11, v15

    move v10, v14

    .line 287
    :cond_0
    :goto_2
    move-object v14, v4

    move v15, v5

    add-int/lit8 v5, v5, 0x1

    move/from16 v16, v13

    const/16 v17, 0x18

    shl-int/lit8 v16, v16, 0x18

    move/from16 v17, v12

    const/16 v18, 0x10

    shl-int/lit8 v17, v17, 0x10

    or-int v16, v16, v17

    move/from16 v17, v11

    const/16 v18, 0x8

    shl-int/lit8 v17, v17, 0x8

    or-int v16, v16, v17

    move/from16 v17, v10

    or-int v16, v16, v17

    aput v16, v14, v15

    .line 273
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 282
    :cond_1
    move v14, v10

    move v15, v13

    mul-int/2addr v14, v15

    const/16 v15, 0x7f

    add-int/lit8 v14, v14, 0x7f

    const/16 v15, 0xff

    div-int/lit16 v14, v14, 0xff

    move v10, v14

    .line 283
    move v14, v11

    move v15, v13

    mul-int/2addr v14, v15

    const/16 v15, 0x7f

    add-int/lit8 v14, v14, 0x7f

    const/16 v15, 0xff

    div-int/lit16 v14, v14, 0xff

    move v11, v14

    .line 284
    move v14, v12

    move v15, v13

    mul-int/2addr v14, v15

    const/16 v15, 0x7f

    add-int/lit8 v14, v14, 0x7f

    const/16 v15, 0xff

    div-int/lit16 v14, v14, 0xff

    move v12, v14

    goto :goto_2

    .line 290
    .end local v10    # "b":I
    .end local v11    # "g":I
    .end local v12    # "r":I
    .end local v13    # "a":I
    :cond_2
    move v14, v5

    move v15, v6

    add-int/2addr v14, v15

    move v5, v14

    .line 291
    move v14, v2

    move v15, v3

    add-int/2addr v14, v15

    move v2, v14

    goto/16 :goto_0

    .line 293
    .end local v9    # "x":I
    :cond_3
    return-void
.end method
