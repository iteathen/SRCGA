.class public Lcom/sun/javafx/image/impl/ByteBgraPre$ToByteBgraConv;
.super Lcom/sun/javafx/image/impl/BaseByteToByteConverter;
.source "ByteBgraPre.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/image/impl/ByteBgraPre;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ToByteBgraConv"
.end annotation


# static fields
.field public static final instance:Lcom/sun/javafx/image/ByteToBytePixelConverter;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 131
    new-instance v0, Lcom/sun/javafx/image/impl/ByteBgraPre$ToByteBgraConv;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Lcom/sun/javafx/image/impl/ByteBgraPre$ToByteBgraConv;-><init>()V

    sput-object v0, Lcom/sun/javafx/image/impl/ByteBgraPre$ToByteBgraConv;->instance:Lcom/sun/javafx/image/ByteToBytePixelConverter;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .prologue
    .line 135
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/image/impl/ByteBgraPre$ToByteBgraConv;
    move-object v1, v0

    sget-object v2, Lcom/sun/javafx/image/impl/ByteBgraPre;->getter:Lcom/sun/javafx/image/BytePixelGetter;

    sget-object v3, Lcom/sun/javafx/image/impl/ByteBgra;->setter:Lcom/sun/javafx/image/BytePixelSetter;

    invoke-direct {v1, v2, v3}, Lcom/sun/javafx/image/impl/BaseByteToByteConverter;-><init>(Lcom/sun/javafx/image/BytePixelGetter;Lcom/sun/javafx/image/BytePixelSetter;)V

    .line 136
    return-void
.end method


# virtual methods
.method doConvert(Ljava/nio/ByteBuffer;IILjava/nio/ByteBuffer;IIII)V
    .locals 20

    .prologue
    .line 172
    move-object/from16 v2, p0

    .local v2, "this":Lcom/sun/javafx/image/impl/ByteBgraPre$ToByteBgraConv;
    move-object/from16 v3, p1

    .local v3, "srcbuf":Ljava/nio/ByteBuffer;
    move/from16 v4, p2

    .local v4, "srcoff":I
    move/from16 v5, p3

    .local v5, "srcscanbytes":I
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
    move/from16 v17, v5

    move/from16 v18, v9

    const/16 v19, 0x4

    mul-int/lit8 v18, v18, 0x4

    sub-int v17, v17, v18

    move/from16 v5, v17

    .line 173
    move/from16 v17, v8

    move/from16 v18, v9

    const/16 v19, 0x4

    mul-int/lit8 v18, v18, 0x4

    sub-int v17, v17, v18

    move/from16 v8, v17

    .line 174
    :goto_0
    add-int/lit8 v10, v10, -0x1

    move/from16 v17, v10

    if-ltz v17, :cond_2

    .line 175
    const/16 v17, 0x0

    move/from16 v11, v17

    .local v11, "x":I
    :goto_1
    move/from16 v17, v11

    move/from16 v18, v9

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_1

    .line 176
    move-object/from16 v17, v3

    move/from16 v18, v4

    invoke-virtual/range {v17 .. v18}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v17

    move/from16 v12, v17

    .line 177
    .local v12, "b":B
    move-object/from16 v17, v3

    move/from16 v18, v4

    const/16 v19, 0x1

    add-int/lit8 v18, v18, 0x1

    invoke-virtual/range {v17 .. v18}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v17

    move/from16 v13, v17

    .line 178
    .local v13, "g":B
    move-object/from16 v17, v3

    move/from16 v18, v4

    const/16 v19, 0x2

    add-int/lit8 v18, v18, 0x2

    invoke-virtual/range {v17 .. v18}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v17

    move/from16 v14, v17

    .line 179
    .local v14, "r":B
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

    .line 180
    .local v15, "a":I
    add-int/lit8 v4, v4, 0x4

    .line 181
    move/from16 v17, v15

    if-lez v17, :cond_0

    move/from16 v17, v15

    const/16 v18, 0xff

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_0

    .line 182
    move/from16 v17, v15

    const/16 v18, 0x1

    shr-int/lit8 v17, v17, 0x1

    move/from16 v16, v17

    .line 183
    .local v16, "halfa":I
    move/from16 v17, v12

    const/16 v18, 0xff

    move/from16 v0, v17

    and-int/lit16 v0, v0, 0xff

    move/from16 v17, v0

    const/16 v18, 0xff

    move/from16 v0, v17

    mul-int/lit16 v0, v0, 0xff

    move/from16 v17, v0

    move/from16 v18, v16

    add-int v17, v17, v18

    move/from16 v18, v15

    div-int v17, v17, v18

    move/from16 v0, v17

    int-to-byte v0, v0

    move/from16 v17, v0

    move/from16 v12, v17

    .line 184
    move/from16 v17, v13

    const/16 v18, 0xff

    move/from16 v0, v17

    and-int/lit16 v0, v0, 0xff

    move/from16 v17, v0

    const/16 v18, 0xff

    move/from16 v0, v17

    mul-int/lit16 v0, v0, 0xff

    move/from16 v17, v0

    move/from16 v18, v16

    add-int v17, v17, v18

    move/from16 v18, v15

    div-int v17, v17, v18

    move/from16 v0, v17

    int-to-byte v0, v0

    move/from16 v17, v0

    move/from16 v13, v17

    .line 185
    move/from16 v17, v14

    const/16 v18, 0xff

    move/from16 v0, v17

    and-int/lit16 v0, v0, 0xff

    move/from16 v17, v0

    const/16 v18, 0xff

    move/from16 v0, v17

    mul-int/lit16 v0, v0, 0xff

    move/from16 v17, v0

    move/from16 v18, v16

    add-int v17, v17, v18

    move/from16 v18, v15

    div-int v17, v17, v18

    move/from16 v0, v17

    int-to-byte v0, v0

    move/from16 v17, v0

    move/from16 v14, v17

    .line 187
    .end local v16    # "halfa":I
    :cond_0
    move-object/from16 v17, v6

    move/from16 v18, v7

    move/from16 v19, v12

    invoke-virtual/range {v17 .. v19}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    move-result-object v17

    .line 188
    move-object/from16 v17, v6

    move/from16 v18, v7

    const/16 v19, 0x1

    add-int/lit8 v18, v18, 0x1

    move/from16 v19, v13

    invoke-virtual/range {v17 .. v19}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    move-result-object v17

    .line 189
    move-object/from16 v17, v6

    move/from16 v18, v7

    const/16 v19, 0x2

    add-int/lit8 v18, v18, 0x2

    move/from16 v19, v14

    invoke-virtual/range {v17 .. v19}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    move-result-object v17

    .line 190
    move-object/from16 v17, v6

    move/from16 v18, v7

    const/16 v19, 0x3

    add-int/lit8 v18, v18, 0x3

    move/from16 v19, v15

    move/from16 v0, v19

    int-to-byte v0, v0

    move/from16 v19, v0

    invoke-virtual/range {v17 .. v19}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    move-result-object v17

    .line 191
    add-int/lit8 v7, v7, 0x4

    .line 175
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_1

    .line 193
    .end local v12    # "b":B
    .end local v13    # "g":B
    .end local v14    # "r":B
    .end local v15    # "a":I
    :cond_1
    move/from16 v17, v4

    move/from16 v18, v5

    add-int v17, v17, v18

    move/from16 v4, v17

    .line 194
    move/from16 v17, v7

    move/from16 v18, v8

    add-int v17, v17, v18

    move/from16 v7, v17

    goto/16 :goto_0

    .line 196
    .end local v11    # "x":I
    :cond_2
    return-void
.end method

.method doConvert([BII[BIIII)V
    .locals 20

    .prologue
    .line 143
    move-object/from16 v2, p0

    .local v2, "this":Lcom/sun/javafx/image/impl/ByteBgraPre$ToByteBgraConv;
    move-object/from16 v3, p1

    .local v3, "srcarr":[B
    move/from16 v4, p2

    .local v4, "srcoff":I
    move/from16 v5, p3

    .local v5, "srcscanbytes":I
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

    const/16 v19, 0x4

    mul-int/lit8 v18, v18, 0x4

    sub-int v17, v17, v18

    move/from16 v5, v17

    .line 144
    move/from16 v17, v8

    move/from16 v18, v9

    const/16 v19, 0x4

    mul-int/lit8 v18, v18, 0x4

    sub-int v17, v17, v18

    move/from16 v8, v17

    .line 145
    :goto_0
    add-int/lit8 v10, v10, -0x1

    move/from16 v17, v10

    if-ltz v17, :cond_2

    .line 146
    const/16 v17, 0x0

    move/from16 v11, v17

    .local v11, "x":I
    :goto_1
    move/from16 v17, v11

    move/from16 v18, v9

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_1

    .line 147
    move-object/from16 v17, v3

    move/from16 v18, v4

    add-int/lit8 v4, v4, 0x1

    aget-byte v17, v17, v18

    move/from16 v12, v17

    .line 148
    .local v12, "b":B
    move-object/from16 v17, v3

    move/from16 v18, v4

    add-int/lit8 v4, v4, 0x1

    aget-byte v17, v17, v18

    move/from16 v13, v17

    .line 149
    .local v13, "g":B
    move-object/from16 v17, v3

    move/from16 v18, v4

    add-int/lit8 v4, v4, 0x1

    aget-byte v17, v17, v18

    move/from16 v14, v17

    .line 150
    .local v14, "r":B
    move-object/from16 v17, v3

    move/from16 v18, v4

    add-int/lit8 v4, v4, 0x1

    aget-byte v17, v17, v18

    const/16 v18, 0xff

    move/from16 v0, v17

    and-int/lit16 v0, v0, 0xff

    move/from16 v17, v0

    move/from16 v15, v17

    .line 151
    .local v15, "a":I
    move/from16 v17, v15

    if-lez v17, :cond_0

    move/from16 v17, v15

    const/16 v18, 0xff

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_0

    .line 152
    move/from16 v17, v15

    const/16 v18, 0x1

    shr-int/lit8 v17, v17, 0x1

    move/from16 v16, v17

    .line 153
    .local v16, "halfa":I
    move/from16 v17, v12

    const/16 v18, 0xff

    move/from16 v0, v17

    and-int/lit16 v0, v0, 0xff

    move/from16 v17, v0

    const/16 v18, 0xff

    move/from16 v0, v17

    mul-int/lit16 v0, v0, 0xff

    move/from16 v17, v0

    move/from16 v18, v16

    add-int v17, v17, v18

    move/from16 v18, v15

    div-int v17, v17, v18

    move/from16 v0, v17

    int-to-byte v0, v0

    move/from16 v17, v0

    move/from16 v12, v17

    .line 154
    move/from16 v17, v13

    const/16 v18, 0xff

    move/from16 v0, v17

    and-int/lit16 v0, v0, 0xff

    move/from16 v17, v0

    const/16 v18, 0xff

    move/from16 v0, v17

    mul-int/lit16 v0, v0, 0xff

    move/from16 v17, v0

    move/from16 v18, v16

    add-int v17, v17, v18

    move/from16 v18, v15

    div-int v17, v17, v18

    move/from16 v0, v17

    int-to-byte v0, v0

    move/from16 v17, v0

    move/from16 v13, v17

    .line 155
    move/from16 v17, v14

    const/16 v18, 0xff

    move/from16 v0, v17

    and-int/lit16 v0, v0, 0xff

    move/from16 v17, v0

    const/16 v18, 0xff

    move/from16 v0, v17

    mul-int/lit16 v0, v0, 0xff

    move/from16 v17, v0

    move/from16 v18, v16

    add-int v17, v17, v18

    move/from16 v18, v15

    div-int v17, v17, v18

    move/from16 v0, v17

    int-to-byte v0, v0

    move/from16 v17, v0

    move/from16 v14, v17

    .line 157
    .end local v16    # "halfa":I
    :cond_0
    move-object/from16 v17, v6

    move/from16 v18, v7

    add-int/lit8 v7, v7, 0x1

    move/from16 v19, v12

    aput-byte v19, v17, v18

    .line 158
    move-object/from16 v17, v6

    move/from16 v18, v7

    add-int/lit8 v7, v7, 0x1

    move/from16 v19, v13

    aput-byte v19, v17, v18

    .line 159
    move-object/from16 v17, v6

    move/from16 v18, v7

    add-int/lit8 v7, v7, 0x1

    move/from16 v19, v14

    aput-byte v19, v17, v18

    .line 160
    move-object/from16 v17, v6

    move/from16 v18, v7

    add-int/lit8 v7, v7, 0x1

    move/from16 v19, v15

    move/from16 v0, v19

    int-to-byte v0, v0

    move/from16 v19, v0

    aput-byte v19, v17, v18

    .line 146
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_1

    .line 162
    .end local v12    # "b":B
    .end local v13    # "g":B
    .end local v14    # "r":B
    .end local v15    # "a":I
    :cond_1
    move/from16 v17, v4

    move/from16 v18, v5

    add-int v17, v17, v18

    move/from16 v4, v17

    .line 163
    move/from16 v17, v7

    move/from16 v18, v8

    add-int v17, v17, v18

    move/from16 v7, v17

    goto/16 :goto_0

    .line 165
    .end local v11    # "x":I
    :cond_2
    return-void
.end method
