.class Lcom/sun/javafx/image/impl/ByteBgra$ToByteBgraPreConv;
.super Lcom/sun/javafx/image/impl/BaseByteToByteConverter;
.source "ByteBgra.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/image/impl/ByteBgra;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ToByteBgraPreConv"
.end annotation


# static fields
.field static final instance:Lcom/sun/javafx/image/ByteToBytePixelConverter;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 131
    new-instance v0, Lcom/sun/javafx/image/impl/ByteBgra$ToByteBgraPreConv;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Lcom/sun/javafx/image/impl/ByteBgra$ToByteBgraPreConv;-><init>()V

    sput-object v0, Lcom/sun/javafx/image/impl/ByteBgra$ToByteBgraPreConv;->instance:Lcom/sun/javafx/image/ByteToBytePixelConverter;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .prologue
    .line 135
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/image/impl/ByteBgra$ToByteBgraPreConv;
    move-object v1, v0

    sget-object v2, Lcom/sun/javafx/image/impl/ByteBgra;->getter:Lcom/sun/javafx/image/BytePixelGetter;

    sget-object v3, Lcom/sun/javafx/image/impl/ByteBgraPre;->setter:Lcom/sun/javafx/image/BytePixelSetter;

    invoke-direct {v1, v2, v3}, Lcom/sun/javafx/image/impl/BaseByteToByteConverter;-><init>(Lcom/sun/javafx/image/BytePixelGetter;Lcom/sun/javafx/image/BytePixelSetter;)V

    .line 136
    return-void
.end method


# virtual methods
.method doConvert(Ljava/nio/ByteBuffer;IILjava/nio/ByteBuffer;IIII)V
    .locals 19

    .prologue
    .line 175
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/javafx/image/impl/ByteBgra$ToByteBgraPreConv;
    move-object/from16 v2, p1

    .local v2, "srcbuf":Ljava/nio/ByteBuffer;
    move/from16 v3, p2

    .local v3, "srcoff":I
    move/from16 v4, p3

    .local v4, "srcscanbytes":I
    move-object/from16 v5, p4

    .local v5, "dstbuf":Ljava/nio/ByteBuffer;
    move/from16 v6, p5

    .local v6, "dstoff":I
    move/from16 v7, p6

    .local v7, "dstscanbytes":I
    move/from16 v8, p7

    .local v8, "w":I
    move/from16 v9, p8

    .local v9, "h":I
    move v15, v4

    move/from16 v16, v8

    const/16 v17, 0x4

    mul-int/lit8 v16, v16, 0x4

    sub-int v15, v15, v16

    move v4, v15

    .line 176
    move v15, v7

    move/from16 v16, v8

    const/16 v17, 0x4

    mul-int/lit8 v16, v16, 0x4

    sub-int v15, v15, v16

    move v7, v15

    .line 177
    :goto_0
    add-int/lit8 v9, v9, -0x1

    move v15, v9

    if-ltz v15, :cond_3

    .line 178
    const/4 v15, 0x0

    move v10, v15

    .local v10, "x":I
    :goto_1
    move v15, v10

    move/from16 v16, v8

    move/from16 v0, v16

    if-ge v15, v0, :cond_2

    .line 179
    move-object v15, v2

    move/from16 v16, v3

    invoke-virtual/range {v15 .. v16}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v15

    move v11, v15

    .line 180
    .local v11, "b":B
    move-object v15, v2

    move/from16 v16, v3

    const/16 v17, 0x1

    add-int/lit8 v16, v16, 0x1

    invoke-virtual/range {v15 .. v16}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v15

    move v12, v15

    .line 181
    .local v12, "g":B
    move-object v15, v2

    move/from16 v16, v3

    const/16 v17, 0x2

    add-int/lit8 v16, v16, 0x2

    invoke-virtual/range {v15 .. v16}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v15

    move v13, v15

    .line 182
    .local v13, "r":B
    move-object v15, v2

    move/from16 v16, v3

    const/16 v17, 0x3

    add-int/lit8 v16, v16, 0x3

    invoke-virtual/range {v15 .. v16}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v15

    const/16 v16, 0xff

    and-int/lit16 v15, v15, 0xff

    move v14, v15

    .line 183
    .local v14, "a":I
    add-int/lit8 v3, v3, 0x4

    .line 184
    move v15, v14

    const/16 v16, 0xff

    move/from16 v0, v16

    if-ge v15, v0, :cond_0

    .line 185
    move v15, v14

    if-nez v15, :cond_1

    .line 186
    const/4 v15, 0x0

    move/from16 v18, v15

    move/from16 v15, v18

    move/from16 v16, v18

    move/from16 v13, v16

    move/from16 v18, v15

    move/from16 v15, v18

    move/from16 v16, v18

    move/from16 v12, v16

    move v11, v15

    .line 193
    :cond_0
    :goto_2
    move-object v15, v5

    move/from16 v16, v6

    move/from16 v17, v11

    invoke-virtual/range {v15 .. v17}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    move-result-object v15

    .line 194
    move-object v15, v5

    move/from16 v16, v6

    const/16 v17, 0x1

    add-int/lit8 v16, v16, 0x1

    move/from16 v17, v12

    invoke-virtual/range {v15 .. v17}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    move-result-object v15

    .line 195
    move-object v15, v5

    move/from16 v16, v6

    const/16 v17, 0x2

    add-int/lit8 v16, v16, 0x2

    move/from16 v17, v13

    invoke-virtual/range {v15 .. v17}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    move-result-object v15

    .line 196
    move-object v15, v5

    move/from16 v16, v6

    const/16 v17, 0x3

    add-int/lit8 v16, v16, 0x3

    move/from16 v17, v14

    move/from16 v0, v17

    int-to-byte v0, v0

    move/from16 v17, v0

    invoke-virtual/range {v15 .. v17}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    move-result-object v15

    .line 197
    add-int/lit8 v6, v6, 0x4

    .line 178
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_1

    .line 188
    :cond_1
    move v15, v11

    const/16 v16, 0xff

    and-int/lit16 v15, v15, 0xff

    move/from16 v16, v14

    mul-int v15, v15, v16

    const/16 v16, 0x7f

    add-int/lit8 v15, v15, 0x7f

    const/16 v16, 0xff

    div-int/lit16 v15, v15, 0xff

    int-to-byte v15, v15

    move v11, v15

    .line 189
    move v15, v12

    const/16 v16, 0xff

    and-int/lit16 v15, v15, 0xff

    move/from16 v16, v14

    mul-int v15, v15, v16

    const/16 v16, 0x7f

    add-int/lit8 v15, v15, 0x7f

    const/16 v16, 0xff

    div-int/lit16 v15, v15, 0xff

    int-to-byte v15, v15

    move v12, v15

    .line 190
    move v15, v13

    const/16 v16, 0xff

    and-int/lit16 v15, v15, 0xff

    move/from16 v16, v14

    mul-int v15, v15, v16

    const/16 v16, 0x7f

    add-int/lit8 v15, v15, 0x7f

    const/16 v16, 0xff

    div-int/lit16 v15, v15, 0xff

    int-to-byte v15, v15

    move v13, v15

    goto :goto_2

    .line 199
    .end local v11    # "b":B
    .end local v12    # "g":B
    .end local v13    # "r":B
    .end local v14    # "a":I
    :cond_2
    move v15, v3

    move/from16 v16, v4

    add-int v15, v15, v16

    move v3, v15

    .line 200
    move v15, v6

    move/from16 v16, v7

    add-int v15, v15, v16

    move v6, v15

    goto/16 :goto_0

    .line 202
    .end local v10    # "x":I
    :cond_3
    return-void
.end method

.method doConvert([BII[BIIII)V
    .locals 19

    .prologue
    .line 143
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/javafx/image/impl/ByteBgra$ToByteBgraPreConv;
    move-object/from16 v2, p1

    .local v2, "srcarr":[B
    move/from16 v3, p2

    .local v3, "srcoff":I
    move/from16 v4, p3

    .local v4, "srcscanbytes":I
    move-object/from16 v5, p4

    .local v5, "dstarr":[B
    move/from16 v6, p5

    .local v6, "dstoff":I
    move/from16 v7, p6

    .local v7, "dstscanbytes":I
    move/from16 v8, p7

    .local v8, "w":I
    move/from16 v9, p8

    .local v9, "h":I
    move v15, v4

    move/from16 v16, v8

    const/16 v17, 0x4

    mul-int/lit8 v16, v16, 0x4

    sub-int v15, v15, v16

    move v4, v15

    .line 144
    move v15, v7

    move/from16 v16, v8

    const/16 v17, 0x4

    mul-int/lit8 v16, v16, 0x4

    sub-int v15, v15, v16

    move v7, v15

    .line 145
    :goto_0
    add-int/lit8 v9, v9, -0x1

    move v15, v9

    if-ltz v15, :cond_3

    .line 146
    const/4 v15, 0x0

    move v10, v15

    .local v10, "x":I
    :goto_1
    move v15, v10

    move/from16 v16, v8

    move/from16 v0, v16

    if-ge v15, v0, :cond_2

    .line 147
    move-object v15, v2

    move/from16 v16, v3

    add-int/lit8 v3, v3, 0x1

    aget-byte v15, v15, v16

    move v11, v15

    .line 148
    .local v11, "b":B
    move-object v15, v2

    move/from16 v16, v3

    add-int/lit8 v3, v3, 0x1

    aget-byte v15, v15, v16

    move v12, v15

    .line 149
    .local v12, "g":B
    move-object v15, v2

    move/from16 v16, v3

    add-int/lit8 v3, v3, 0x1

    aget-byte v15, v15, v16

    move v13, v15

    .line 150
    .local v13, "r":B
    move-object v15, v2

    move/from16 v16, v3

    add-int/lit8 v3, v3, 0x1

    aget-byte v15, v15, v16

    const/16 v16, 0xff

    and-int/lit16 v15, v15, 0xff

    move v14, v15

    .line 151
    .local v14, "a":I
    move v15, v14

    const/16 v16, 0xff

    move/from16 v0, v16

    if-ge v15, v0, :cond_0

    .line 152
    move v15, v14

    if-nez v15, :cond_1

    .line 153
    const/4 v15, 0x0

    move/from16 v18, v15

    move/from16 v15, v18

    move/from16 v16, v18

    move/from16 v13, v16

    move/from16 v18, v15

    move/from16 v15, v18

    move/from16 v16, v18

    move/from16 v12, v16

    move v11, v15

    .line 160
    :cond_0
    :goto_2
    move-object v15, v5

    move/from16 v16, v6

    add-int/lit8 v6, v6, 0x1

    move/from16 v17, v11

    aput-byte v17, v15, v16

    .line 161
    move-object v15, v5

    move/from16 v16, v6

    add-int/lit8 v6, v6, 0x1

    move/from16 v17, v12

    aput-byte v17, v15, v16

    .line 162
    move-object v15, v5

    move/from16 v16, v6

    add-int/lit8 v6, v6, 0x1

    move/from16 v17, v13

    aput-byte v17, v15, v16

    .line 163
    move-object v15, v5

    move/from16 v16, v6

    add-int/lit8 v6, v6, 0x1

    move/from16 v17, v14

    move/from16 v0, v17

    int-to-byte v0, v0

    move/from16 v17, v0

    aput-byte v17, v15, v16

    .line 146
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 155
    :cond_1
    move v15, v11

    const/16 v16, 0xff

    and-int/lit16 v15, v15, 0xff

    move/from16 v16, v14

    mul-int v15, v15, v16

    const/16 v16, 0x7f

    add-int/lit8 v15, v15, 0x7f

    const/16 v16, 0xff

    div-int/lit16 v15, v15, 0xff

    int-to-byte v15, v15

    move v11, v15

    .line 156
    move v15, v12

    const/16 v16, 0xff

    and-int/lit16 v15, v15, 0xff

    move/from16 v16, v14

    mul-int v15, v15, v16

    const/16 v16, 0x7f

    add-int/lit8 v15, v15, 0x7f

    const/16 v16, 0xff

    div-int/lit16 v15, v15, 0xff

    int-to-byte v15, v15

    move v12, v15

    .line 157
    move v15, v13

    const/16 v16, 0xff

    and-int/lit16 v15, v15, 0xff

    move/from16 v16, v14

    mul-int v15, v15, v16

    const/16 v16, 0x7f

    add-int/lit8 v15, v15, 0x7f

    const/16 v16, 0xff

    div-int/lit16 v15, v15, 0xff

    int-to-byte v15, v15

    move v13, v15

    goto :goto_2

    .line 165
    .end local v11    # "b":B
    .end local v12    # "g":B
    .end local v13    # "r":B
    .end local v14    # "a":I
    :cond_2
    move v15, v3

    move/from16 v16, v4

    add-int v15, v15, v16

    move v3, v15

    .line 166
    move v15, v6

    move/from16 v16, v7

    add-int v15, v15, v16

    move v6, v15

    goto/16 :goto_0

    .line 168
    .end local v10    # "x":I
    :cond_3
    return-void
.end method
