.class Lcom/sun/javafx/image/impl/IntArgbPre$ToByteBgraConv;
.super Lcom/sun/javafx/image/impl/BaseIntToByteConverter;
.source "IntArgbPre.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/image/impl/IntArgbPre;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ToByteBgraConv"
.end annotation


# static fields
.field public static final instance:Lcom/sun/javafx/image/IntToBytePixelConverter;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 181
    new-instance v0, Lcom/sun/javafx/image/impl/IntArgbPre$ToByteBgraConv;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Lcom/sun/javafx/image/impl/IntArgbPre$ToByteBgraConv;-><init>()V

    sput-object v0, Lcom/sun/javafx/image/impl/IntArgbPre$ToByteBgraConv;->instance:Lcom/sun/javafx/image/IntToBytePixelConverter;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .prologue
    .line 185
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/image/impl/IntArgbPre$ToByteBgraConv;
    move-object v1, v0

    sget-object v2, Lcom/sun/javafx/image/impl/IntArgbPre;->getter:Lcom/sun/javafx/image/IntPixelGetter;

    sget-object v3, Lcom/sun/javafx/image/impl/ByteBgra;->setter:Lcom/sun/javafx/image/BytePixelSetter;

    invoke-direct {v1, v2, v3}, Lcom/sun/javafx/image/impl/BaseIntToByteConverter;-><init>(Lcom/sun/javafx/image/IntPixelGetter;Lcom/sun/javafx/image/BytePixelSetter;)V

    .line 186
    return-void
.end method


# virtual methods
.method doConvert(Ljava/nio/IntBuffer;IILjava/nio/ByteBuffer;IIII)V
    .locals 21

    .prologue
    .line 223
    move-object/from16 v2, p0

    .local v2, "this":Lcom/sun/javafx/image/impl/IntArgbPre$ToByteBgraConv;
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
    move/from16 v18, v8

    move/from16 v19, v9

    const/16 v20, 0x4

    mul-int/lit8 v19, v19, 0x4

    sub-int v18, v18, v19

    move/from16 v8, v18

    .line 224
    :goto_0
    add-int/lit8 v10, v10, -0x1

    move/from16 v18, v10

    if-ltz v18, :cond_2

    .line 225
    const/16 v18, 0x0

    move/from16 v11, v18

    .local v11, "x":I
    :goto_1
    move/from16 v18, v11

    move/from16 v19, v9

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_1

    .line 226
    move-object/from16 v18, v3

    move/from16 v19, v4

    move/from16 v20, v11

    add-int v19, v19, v20

    invoke-virtual/range {v18 .. v19}, Ljava/nio/IntBuffer;->get(I)I

    move-result v18

    move/from16 v12, v18

    .line 227
    .local v12, "pixel":I
    move/from16 v18, v12

    const/16 v19, 0x18

    ushr-int/lit8 v18, v18, 0x18

    move/from16 v13, v18

    .line 228
    .local v13, "a":I
    move/from16 v18, v12

    const/16 v19, 0x10

    shr-int/lit8 v18, v18, 0x10

    const/16 v19, 0xff

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xff

    move/from16 v18, v0

    move/from16 v14, v18

    .line 229
    .local v14, "r":I
    move/from16 v18, v12

    const/16 v19, 0x8

    shr-int/lit8 v18, v18, 0x8

    const/16 v19, 0xff

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xff

    move/from16 v18, v0

    move/from16 v15, v18

    .line 230
    .local v15, "g":I
    move/from16 v18, v12

    const/16 v19, 0xff

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xff

    move/from16 v18, v0

    move/from16 v16, v18

    .line 231
    .local v16, "b":I
    move/from16 v18, v13

    if-lez v18, :cond_0

    move/from16 v18, v13

    const/16 v19, 0xff

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_0

    .line 232
    move/from16 v18, v13

    const/16 v19, 0x1

    shr-int/lit8 v18, v18, 0x1

    move/from16 v17, v18

    .line 233
    .local v17, "halfa":I
    move/from16 v18, v14

    const/16 v19, 0xff

    move/from16 v0, v18

    mul-int/lit16 v0, v0, 0xff

    move/from16 v18, v0

    move/from16 v19, v17

    add-int v18, v18, v19

    move/from16 v19, v13

    div-int v18, v18, v19

    move/from16 v14, v18

    .line 234
    move/from16 v18, v15

    const/16 v19, 0xff

    move/from16 v0, v18

    mul-int/lit16 v0, v0, 0xff

    move/from16 v18, v0

    move/from16 v19, v17

    add-int v18, v18, v19

    move/from16 v19, v13

    div-int v18, v18, v19

    move/from16 v15, v18

    .line 235
    move/from16 v18, v16

    const/16 v19, 0xff

    move/from16 v0, v18

    mul-int/lit16 v0, v0, 0xff

    move/from16 v18, v0

    move/from16 v19, v17

    add-int v18, v18, v19

    move/from16 v19, v13

    div-int v18, v18, v19

    move/from16 v16, v18

    .line 237
    .end local v17    # "halfa":I
    :cond_0
    move-object/from16 v18, v6

    move/from16 v19, v7

    move/from16 v20, v16

    move/from16 v0, v20

    int-to-byte v0, v0

    move/from16 v20, v0

    invoke-virtual/range {v18 .. v20}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    move-result-object v18

    .line 238
    move-object/from16 v18, v6

    move/from16 v19, v7

    const/16 v20, 0x1

    add-int/lit8 v19, v19, 0x1

    move/from16 v20, v15

    move/from16 v0, v20

    int-to-byte v0, v0

    move/from16 v20, v0

    invoke-virtual/range {v18 .. v20}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    move-result-object v18

    .line 239
    move-object/from16 v18, v6

    move/from16 v19, v7

    const/16 v20, 0x2

    add-int/lit8 v19, v19, 0x2

    move/from16 v20, v14

    move/from16 v0, v20

    int-to-byte v0, v0

    move/from16 v20, v0

    invoke-virtual/range {v18 .. v20}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    move-result-object v18

    .line 240
    move-object/from16 v18, v6

    move/from16 v19, v7

    const/16 v20, 0x3

    add-int/lit8 v19, v19, 0x3

    move/from16 v20, v13

    move/from16 v0, v20

    int-to-byte v0, v0

    move/from16 v20, v0

    invoke-virtual/range {v18 .. v20}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    move-result-object v18

    .line 241
    add-int/lit8 v7, v7, 0x4

    .line 225
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_1

    .line 243
    .end local v12    # "pixel":I
    .end local v13    # "a":I
    .end local v14    # "r":I
    .end local v15    # "g":I
    .end local v16    # "b":I
    :cond_1
    move/from16 v18, v4

    move/from16 v19, v5

    add-int v18, v18, v19

    move/from16 v4, v18

    .line 244
    move/from16 v18, v7

    move/from16 v19, v8

    add-int v18, v18, v19

    move/from16 v7, v18

    goto/16 :goto_0

    .line 246
    .end local v11    # "x":I
    :cond_2
    return-void
.end method

.method doConvert([III[BIIII)V
    .locals 21

    .prologue
    .line 193
    move-object/from16 v2, p0

    .local v2, "this":Lcom/sun/javafx/image/impl/IntArgbPre$ToByteBgraConv;
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
    move/from16 v18, v5

    move/from16 v19, v9

    sub-int v18, v18, v19

    move/from16 v5, v18

    .line 194
    move/from16 v18, v8

    move/from16 v19, v9

    const/16 v20, 0x4

    mul-int/lit8 v19, v19, 0x4

    sub-int v18, v18, v19

    move/from16 v8, v18

    .line 195
    :goto_0
    add-int/lit8 v10, v10, -0x1

    move/from16 v18, v10

    if-ltz v18, :cond_2

    .line 196
    const/16 v18, 0x0

    move/from16 v11, v18

    .local v11, "x":I
    :goto_1
    move/from16 v18, v11

    move/from16 v19, v9

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_1

    .line 197
    move-object/from16 v18, v3

    move/from16 v19, v4

    add-int/lit8 v4, v4, 0x1

    aget v18, v18, v19

    move/from16 v12, v18

    .line 198
    .local v12, "pixel":I
    move/from16 v18, v12

    const/16 v19, 0x18

    ushr-int/lit8 v18, v18, 0x18

    move/from16 v13, v18

    .line 199
    .local v13, "a":I
    move/from16 v18, v12

    const/16 v19, 0x10

    shr-int/lit8 v18, v18, 0x10

    const/16 v19, 0xff

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xff

    move/from16 v18, v0

    move/from16 v14, v18

    .line 200
    .local v14, "r":I
    move/from16 v18, v12

    const/16 v19, 0x8

    shr-int/lit8 v18, v18, 0x8

    const/16 v19, 0xff

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xff

    move/from16 v18, v0

    move/from16 v15, v18

    .line 201
    .local v15, "g":I
    move/from16 v18, v12

    const/16 v19, 0xff

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xff

    move/from16 v18, v0

    move/from16 v16, v18

    .line 202
    .local v16, "b":I
    move/from16 v18, v13

    if-lez v18, :cond_0

    move/from16 v18, v13

    const/16 v19, 0xff

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_0

    .line 203
    move/from16 v18, v13

    const/16 v19, 0x1

    shr-int/lit8 v18, v18, 0x1

    move/from16 v17, v18

    .line 204
    .local v17, "halfa":I
    move/from16 v18, v14

    const/16 v19, 0xff

    move/from16 v0, v18

    mul-int/lit16 v0, v0, 0xff

    move/from16 v18, v0

    move/from16 v19, v17

    add-int v18, v18, v19

    move/from16 v19, v13

    div-int v18, v18, v19

    move/from16 v14, v18

    .line 205
    move/from16 v18, v15

    const/16 v19, 0xff

    move/from16 v0, v18

    mul-int/lit16 v0, v0, 0xff

    move/from16 v18, v0

    move/from16 v19, v17

    add-int v18, v18, v19

    move/from16 v19, v13

    div-int v18, v18, v19

    move/from16 v15, v18

    .line 206
    move/from16 v18, v16

    const/16 v19, 0xff

    move/from16 v0, v18

    mul-int/lit16 v0, v0, 0xff

    move/from16 v18, v0

    move/from16 v19, v17

    add-int v18, v18, v19

    move/from16 v19, v13

    div-int v18, v18, v19

    move/from16 v16, v18

    .line 208
    .end local v17    # "halfa":I
    :cond_0
    move-object/from16 v18, v6

    move/from16 v19, v7

    add-int/lit8 v7, v7, 0x1

    move/from16 v20, v16

    move/from16 v0, v20

    int-to-byte v0, v0

    move/from16 v20, v0

    aput-byte v20, v18, v19

    .line 209
    move-object/from16 v18, v6

    move/from16 v19, v7

    add-int/lit8 v7, v7, 0x1

    move/from16 v20, v15

    move/from16 v0, v20

    int-to-byte v0, v0

    move/from16 v20, v0

    aput-byte v20, v18, v19

    .line 210
    move-object/from16 v18, v6

    move/from16 v19, v7

    add-int/lit8 v7, v7, 0x1

    move/from16 v20, v14

    move/from16 v0, v20

    int-to-byte v0, v0

    move/from16 v20, v0

    aput-byte v20, v18, v19

    .line 211
    move-object/from16 v18, v6

    move/from16 v19, v7

    add-int/lit8 v7, v7, 0x1

    move/from16 v20, v13

    move/from16 v0, v20

    int-to-byte v0, v0

    move/from16 v20, v0

    aput-byte v20, v18, v19

    .line 196
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_1

    .line 213
    .end local v12    # "pixel":I
    .end local v13    # "a":I
    .end local v14    # "r":I
    .end local v15    # "g":I
    .end local v16    # "b":I
    :cond_1
    move/from16 v18, v4

    move/from16 v19, v5

    add-int v18, v18, v19

    move/from16 v4, v18

    .line 214
    move/from16 v18, v7

    move/from16 v19, v8

    add-int v18, v18, v19

    move/from16 v7, v18

    goto/16 :goto_0

    .line 216
    .end local v11    # "x":I
    :cond_2
    return-void
.end method
