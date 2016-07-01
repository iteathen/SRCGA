.class Lcom/sun/javafx/image/impl/IntArgb$ToByteBgraPreConv;
.super Lcom/sun/javafx/image/impl/BaseIntToByteConverter;
.source "IntArgb.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/image/impl/IntArgb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ToByteBgraPreConv"
.end annotation


# static fields
.field public static final instance:Lcom/sun/javafx/image/IntToBytePixelConverter;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 186
    new-instance v0, Lcom/sun/javafx/image/impl/IntArgb$ToByteBgraPreConv;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Lcom/sun/javafx/image/impl/IntArgb$ToByteBgraPreConv;-><init>()V

    sput-object v0, Lcom/sun/javafx/image/impl/IntArgb$ToByteBgraPreConv;->instance:Lcom/sun/javafx/image/IntToBytePixelConverter;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .prologue
    .line 190
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/image/impl/IntArgb$ToByteBgraPreConv;
    move-object v1, v0

    sget-object v2, Lcom/sun/javafx/image/impl/IntArgb;->getter:Lcom/sun/javafx/image/IntPixelGetter;

    sget-object v3, Lcom/sun/javafx/image/impl/ByteBgraPre;->setter:Lcom/sun/javafx/image/BytePixelSetter;

    invoke-direct {v1, v2, v3}, Lcom/sun/javafx/image/impl/BaseIntToByteConverter;-><init>(Lcom/sun/javafx/image/IntPixelGetter;Lcom/sun/javafx/image/BytePixelSetter;)V

    .line 191
    return-void
.end method


# virtual methods
.method doConvert(Ljava/nio/IntBuffer;IILjava/nio/ByteBuffer;IIII)V
    .locals 21

    .prologue
    .line 231
    move-object/from16 v2, p0

    .local v2, "this":Lcom/sun/javafx/image/impl/IntArgb$ToByteBgraPreConv;
    move-object/from16 v3, p1

    .local v3, "srcbuf":Ljava/nio/IntBuffer;
    move/from16 v4, p2

    .local v4, "srcoff":I
    move/from16 v5, p3

    .local v5, "srcscanints":I
    move-object/from16 v6, p4

    .local v6, "dstbuf":Ljava/nio/ByteBuffer;
    move/from16 v7, p5

    .local v7, "dstoff":I
    move/from16 v8, p6

    .local v8, "dstscanbytes":I
    move/from16 v9, p7

    .local v9, "w":I
    move/from16 v10, p8

    .local v10, "h":I
    move/from16 v17, v8

    move/from16 v18, v9

    const/16 v19, 0x4

    mul-int/lit8 v18, v18, 0x4

    sub-int v17, v17, v18

    move/from16 v8, v17

    .line 232
    :goto_0
    add-int/lit8 v10, v10, -0x1

    move/from16 v17, v10

    if-ltz v17, :cond_3

    .line 233
    const/16 v17, 0x0

    move/from16 v11, v17

    .local v11, "x":I
    :goto_1
    move/from16 v17, v11

    move/from16 v18, v9

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_2

    .line 234
    move-object/from16 v17, v3

    move/from16 v18, v4

    move/from16 v19, v11

    add-int v18, v18, v19

    invoke-virtual/range {v17 .. v18}, Ljava/nio/IntBuffer;->get(I)I

    move-result v17

    move/from16 v12, v17

    .line 235
    .local v12, "pixel":I
    move/from16 v17, v12

    const/16 v18, 0x18

    ushr-int/lit8 v17, v17, 0x18

    move/from16 v13, v17

    .line 236
    .local v13, "a":I
    move/from16 v17, v12

    const/16 v18, 0x10

    shr-int/lit8 v17, v17, 0x10

    move/from16 v14, v17

    .line 237
    .local v14, "r":I
    move/from16 v17, v12

    const/16 v18, 0x8

    shr-int/lit8 v17, v17, 0x8

    move/from16 v15, v17

    .line 238
    .local v15, "g":I
    move/from16 v17, v12

    move/from16 v16, v17

    .line 239
    .local v16, "b":I
    move/from16 v17, v13

    const/16 v18, 0xff

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_0

    .line 240
    move/from16 v17, v13

    if-nez v17, :cond_1

    .line 241
    const/16 v17, 0x0

    move/from16 v20, v17

    move/from16 v17, v20

    move/from16 v18, v20

    move/from16 v14, v18

    move/from16 v20, v17

    move/from16 v17, v20

    move/from16 v18, v20

    move/from16 v15, v18

    move/from16 v16, v17

    .line 248
    :cond_0
    :goto_2
    move-object/from16 v17, v6

    move/from16 v18, v7

    move/from16 v19, v16

    move/from16 v0, v19

    int-to-byte v0, v0

    move/from16 v19, v0

    invoke-virtual/range {v17 .. v19}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    move-result-object v17

    .line 249
    move-object/from16 v17, v6

    move/from16 v18, v7

    const/16 v19, 0x1

    add-int/lit8 v18, v18, 0x1

    move/from16 v19, v15

    move/from16 v0, v19

    int-to-byte v0, v0

    move/from16 v19, v0

    invoke-virtual/range {v17 .. v19}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    move-result-object v17

    .line 250
    move-object/from16 v17, v6

    move/from16 v18, v7

    const/16 v19, 0x2

    add-int/lit8 v18, v18, 0x2

    move/from16 v19, v14

    move/from16 v0, v19

    int-to-byte v0, v0

    move/from16 v19, v0

    invoke-virtual/range {v17 .. v19}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    move-result-object v17

    .line 251
    move-object/from16 v17, v6

    move/from16 v18, v7

    const/16 v19, 0x3

    add-int/lit8 v18, v18, 0x3

    move/from16 v19, v13

    move/from16 v0, v19

    int-to-byte v0, v0

    move/from16 v19, v0

    invoke-virtual/range {v17 .. v19}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    move-result-object v17

    .line 252
    add-int/lit8 v7, v7, 0x4

    .line 233
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_1

    .line 243
    :cond_1
    move/from16 v17, v16

    const/16 v18, 0xff

    move/from16 v0, v17

    and-int/lit16 v0, v0, 0xff

    move/from16 v17, v0

    move/from16 v18, v13

    mul-int v17, v17, v18

    const/16 v18, 0x7f

    add-int/lit8 v17, v17, 0x7f

    const/16 v18, 0xff

    move/from16 v0, v17

    div-int/lit16 v0, v0, 0xff

    move/from16 v17, v0

    move/from16 v16, v17

    .line 244
    move/from16 v17, v15

    const/16 v18, 0xff

    move/from16 v0, v17

    and-int/lit16 v0, v0, 0xff

    move/from16 v17, v0

    move/from16 v18, v13

    mul-int v17, v17, v18

    const/16 v18, 0x7f

    add-int/lit8 v17, v17, 0x7f

    const/16 v18, 0xff

    move/from16 v0, v17

    div-int/lit16 v0, v0, 0xff

    move/from16 v17, v0

    move/from16 v15, v17

    .line 245
    move/from16 v17, v14

    const/16 v18, 0xff

    move/from16 v0, v17

    and-int/lit16 v0, v0, 0xff

    move/from16 v17, v0

    move/from16 v18, v13

    mul-int v17, v17, v18

    const/16 v18, 0x7f

    add-int/lit8 v17, v17, 0x7f

    const/16 v18, 0xff

    move/from16 v0, v17

    div-int/lit16 v0, v0, 0xff

    move/from16 v17, v0

    move/from16 v14, v17

    goto/16 :goto_2

    .line 254
    .end local v12    # "pixel":I
    .end local v13    # "a":I
    .end local v14    # "r":I
    .end local v15    # "g":I
    .end local v16    # "b":I
    :cond_2
    move/from16 v17, v4

    move/from16 v18, v5

    add-int v17, v17, v18

    move/from16 v4, v17

    .line 255
    move/from16 v17, v7

    move/from16 v18, v8

    add-int v17, v17, v18

    move/from16 v7, v17

    goto/16 :goto_0

    .line 257
    .end local v11    # "x":I
    :cond_3
    return-void
.end method

.method doConvert([III[BIIII)V
    .locals 21

    .prologue
    .line 198
    move-object/from16 v2, p0

    .local v2, "this":Lcom/sun/javafx/image/impl/IntArgb$ToByteBgraPreConv;
    move-object/from16 v3, p1

    .local v3, "srcarr":[I
    move/from16 v4, p2

    .local v4, "srcoff":I
    move/from16 v5, p3

    .local v5, "srcscanints":I
    move-object/from16 v6, p4

    .local v6, "dstarr":[B
    move/from16 v7, p5

    .local v7, "dstoff":I
    move/from16 v8, p6

    .local v8, "dstscanbytes":I
    move/from16 v9, p7

    .local v9, "w":I
    move/from16 v10, p8

    .local v10, "h":I
    move/from16 v17, v5

    move/from16 v18, v9

    sub-int v17, v17, v18

    move/from16 v5, v17

    .line 199
    move/from16 v17, v8

    move/from16 v18, v9

    const/16 v19, 0x4

    mul-int/lit8 v18, v18, 0x4

    sub-int v17, v17, v18

    move/from16 v8, v17

    .line 200
    :goto_0
    add-int/lit8 v10, v10, -0x1

    move/from16 v17, v10

    if-ltz v17, :cond_3

    .line 201
    const/16 v17, 0x0

    move/from16 v11, v17

    .local v11, "x":I
    :goto_1
    move/from16 v17, v11

    move/from16 v18, v9

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_2

    .line 202
    move-object/from16 v17, v3

    move/from16 v18, v4

    add-int/lit8 v4, v4, 0x1

    aget v17, v17, v18

    move/from16 v12, v17

    .line 203
    .local v12, "pixel":I
    move/from16 v17, v12

    const/16 v18, 0x18

    ushr-int/lit8 v17, v17, 0x18

    move/from16 v13, v17

    .line 204
    .local v13, "a":I
    move/from16 v17, v12

    const/16 v18, 0x10

    shr-int/lit8 v17, v17, 0x10

    move/from16 v14, v17

    .line 205
    .local v14, "r":I
    move/from16 v17, v12

    const/16 v18, 0x8

    shr-int/lit8 v17, v17, 0x8

    move/from16 v15, v17

    .line 206
    .local v15, "g":I
    move/from16 v17, v12

    move/from16 v16, v17

    .line 207
    .local v16, "b":I
    move/from16 v17, v13

    const/16 v18, 0xff

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_0

    .line 208
    move/from16 v17, v13

    if-nez v17, :cond_1

    .line 209
    const/16 v17, 0x0

    move/from16 v20, v17

    move/from16 v17, v20

    move/from16 v18, v20

    move/from16 v14, v18

    move/from16 v20, v17

    move/from16 v17, v20

    move/from16 v18, v20

    move/from16 v15, v18

    move/from16 v16, v17

    .line 216
    :cond_0
    :goto_2
    move-object/from16 v17, v6

    move/from16 v18, v7

    add-int/lit8 v7, v7, 0x1

    move/from16 v19, v16

    move/from16 v0, v19

    int-to-byte v0, v0

    move/from16 v19, v0

    aput-byte v19, v17, v18

    .line 217
    move-object/from16 v17, v6

    move/from16 v18, v7

    add-int/lit8 v7, v7, 0x1

    move/from16 v19, v15

    move/from16 v0, v19

    int-to-byte v0, v0

    move/from16 v19, v0

    aput-byte v19, v17, v18

    .line 218
    move-object/from16 v17, v6

    move/from16 v18, v7

    add-int/lit8 v7, v7, 0x1

    move/from16 v19, v14

    move/from16 v0, v19

    int-to-byte v0, v0

    move/from16 v19, v0

    aput-byte v19, v17, v18

    .line 219
    move-object/from16 v17, v6

    move/from16 v18, v7

    add-int/lit8 v7, v7, 0x1

    move/from16 v19, v13

    move/from16 v0, v19

    int-to-byte v0, v0

    move/from16 v19, v0

    aput-byte v19, v17, v18

    .line 201
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_1

    .line 211
    :cond_1
    move/from16 v17, v16

    const/16 v18, 0xff

    move/from16 v0, v17

    and-int/lit16 v0, v0, 0xff

    move/from16 v17, v0

    move/from16 v18, v13

    mul-int v17, v17, v18

    const/16 v18, 0x7f

    add-int/lit8 v17, v17, 0x7f

    const/16 v18, 0xff

    move/from16 v0, v17

    div-int/lit16 v0, v0, 0xff

    move/from16 v17, v0

    move/from16 v16, v17

    .line 212
    move/from16 v17, v15

    const/16 v18, 0xff

    move/from16 v0, v17

    and-int/lit16 v0, v0, 0xff

    move/from16 v17, v0

    move/from16 v18, v13

    mul-int v17, v17, v18

    const/16 v18, 0x7f

    add-int/lit8 v17, v17, 0x7f

    const/16 v18, 0xff

    move/from16 v0, v17

    div-int/lit16 v0, v0, 0xff

    move/from16 v17, v0

    move/from16 v15, v17

    .line 213
    move/from16 v17, v14

    const/16 v18, 0xff

    move/from16 v0, v17

    and-int/lit16 v0, v0, 0xff

    move/from16 v17, v0

    move/from16 v18, v13

    mul-int v17, v17, v18

    const/16 v18, 0x7f

    add-int/lit8 v17, v17, 0x7f

    const/16 v18, 0xff

    move/from16 v0, v17

    div-int/lit16 v0, v0, 0xff

    move/from16 v17, v0

    move/from16 v14, v17

    goto/16 :goto_2

    .line 221
    .end local v12    # "pixel":I
    .end local v13    # "a":I
    .end local v14    # "r":I
    .end local v15    # "g":I
    .end local v16    # "b":I
    :cond_2
    move/from16 v17, v4

    move/from16 v18, v5

    add-int v17, v17, v18

    move/from16 v4, v17

    .line 222
    move/from16 v17, v7

    move/from16 v18, v8

    add-int v17, v17, v18

    move/from16 v7, v17

    goto/16 :goto_0

    .line 224
    .end local v11    # "x":I
    :cond_3
    return-void
.end method
