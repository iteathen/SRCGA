.class public Lcom/sun/javafx/image/impl/ByteIndexed$ToByteBgraAnyConverter;
.super Lcom/sun/javafx/image/impl/BaseByteToByteConverter;
.source "ByteIndexed.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/image/impl/ByteIndexed;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ToByteBgraAnyConverter"
.end annotation


# direct methods
.method public constructor <init>(Lcom/sun/javafx/image/BytePixelGetter;Lcom/sun/javafx/image/BytePixelSetter;)V
    .locals 6

    .prologue
    .line 124
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/image/impl/ByteIndexed$ToByteBgraAnyConverter;
    move-object v1, p1

    .local v1, "getter":Lcom/sun/javafx/image/BytePixelGetter;
    move-object v2, p2

    .local v2, "setter":Lcom/sun/javafx/image/BytePixelSetter;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Lcom/sun/javafx/image/impl/BaseByteToByteConverter;-><init>(Lcom/sun/javafx/image/BytePixelGetter;Lcom/sun/javafx/image/BytePixelSetter;)V

    .line 125
    return-void
.end method


# virtual methods
.method doConvert(Ljava/nio/ByteBuffer;IILjava/nio/ByteBuffer;IIII)V
    .locals 16

    .prologue
    .line 153
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/javafx/image/impl/ByteIndexed$ToByteBgraAnyConverter;
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
    move-object v12, v0

    invoke-virtual {v12}, Lcom/sun/javafx/image/impl/ByteIndexed$ToByteBgraAnyConverter;->getGetter()Lcom/sun/javafx/image/BytePixelGetter;

    move-result-object v12

    move-object v13, v0

    invoke-virtual {v13}, Lcom/sun/javafx/image/impl/ByteIndexed$ToByteBgraAnyConverter;->getSetter()Lcom/sun/javafx/image/BytePixelSetter;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/sun/javafx/image/impl/ByteIndexed;->getColors(Lcom/sun/javafx/image/BytePixelGetter;Lcom/sun/javafx/image/PixelSetter;)[I

    move-result-object v12

    move-object v9, v12

    .line 155
    .local v9, "colors":[I
    move v12, v6

    move v13, v7

    const/4 v14, 0x4

    mul-int/lit8 v13, v13, 0x4

    sub-int/2addr v12, v13

    move v6, v12

    .line 156
    :goto_0
    add-int/lit8 v8, v8, -0x1

    move v12, v8

    if-ltz v12, :cond_1

    .line 157
    const/4 v12, 0x0

    move v10, v12

    .local v10, "x":I
    :goto_1
    move v12, v10

    move v13, v7

    if-ge v12, v13, :cond_0

    .line 158
    move-object v12, v9

    move-object v13, v1

    move v14, v2

    move v15, v10

    add-int/2addr v14, v15

    invoke-virtual {v13, v14}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v13

    const/16 v14, 0xff

    and-int/lit16 v13, v13, 0xff

    aget v12, v12, v13

    move v11, v12

    .line 159
    .local v11, "argb":I
    move-object v12, v4

    move v13, v5

    move v14, v11

    int-to-byte v14, v14

    invoke-virtual {v12, v13, v14}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    move-result-object v12

    .line 160
    move-object v12, v4

    move v13, v5

    const/4 v14, 0x1

    add-int/lit8 v13, v13, 0x1

    move v14, v11

    const/16 v15, 0x8

    shr-int/lit8 v14, v14, 0x8

    int-to-byte v14, v14

    invoke-virtual {v12, v13, v14}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    move-result-object v12

    .line 161
    move-object v12, v4

    move v13, v5

    const/4 v14, 0x2

    add-int/lit8 v13, v13, 0x2

    move v14, v11

    const/16 v15, 0x10

    shr-int/lit8 v14, v14, 0x10

    int-to-byte v14, v14

    invoke-virtual {v12, v13, v14}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    move-result-object v12

    .line 162
    move-object v12, v4

    move v13, v5

    const/4 v14, 0x3

    add-int/lit8 v13, v13, 0x3

    move v14, v11

    const/16 v15, 0x18

    shr-int/lit8 v14, v14, 0x18

    int-to-byte v14, v14

    invoke-virtual {v12, v13, v14}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    move-result-object v12

    .line 163
    add-int/lit8 v5, v5, 0x4

    .line 157
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 165
    .end local v11    # "argb":I
    :cond_0
    move v12, v2

    move v13, v3

    add-int/2addr v12, v13

    move v2, v12

    .line 166
    move v12, v5

    move v13, v6

    add-int/2addr v12, v13

    move v5, v12

    goto :goto_0

    .line 168
    .end local v10    # "x":I
    :cond_1
    return-void
.end method

.method doConvert([BII[BIIII)V
    .locals 16

    .prologue
    .line 132
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/javafx/image/impl/ByteIndexed$ToByteBgraAnyConverter;
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
    move-object v12, v0

    invoke-virtual {v12}, Lcom/sun/javafx/image/impl/ByteIndexed$ToByteBgraAnyConverter;->getGetter()Lcom/sun/javafx/image/BytePixelGetter;

    move-result-object v12

    move-object v13, v0

    invoke-virtual {v13}, Lcom/sun/javafx/image/impl/ByteIndexed$ToByteBgraAnyConverter;->getSetter()Lcom/sun/javafx/image/BytePixelSetter;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/sun/javafx/image/impl/ByteIndexed;->getColors(Lcom/sun/javafx/image/BytePixelGetter;Lcom/sun/javafx/image/PixelSetter;)[I

    move-result-object v12

    move-object v9, v12

    .line 134
    .local v9, "colors":[I
    move v12, v6

    move v13, v7

    const/4 v14, 0x4

    mul-int/lit8 v13, v13, 0x4

    sub-int/2addr v12, v13

    move v6, v12

    .line 135
    :goto_0
    add-int/lit8 v8, v8, -0x1

    move v12, v8

    if-ltz v12, :cond_1

    .line 136
    const/4 v12, 0x0

    move v10, v12

    .local v10, "x":I
    :goto_1
    move v12, v10

    move v13, v7

    if-ge v12, v13, :cond_0

    .line 137
    move-object v12, v9

    move-object v13, v1

    move v14, v2

    move v15, v10

    add-int/2addr v14, v15

    aget-byte v13, v13, v14

    const/16 v14, 0xff

    and-int/lit16 v13, v13, 0xff

    aget v12, v12, v13

    move v11, v12

    .line 138
    .local v11, "argb":I
    move-object v12, v4

    move v13, v5

    add-int/lit8 v5, v5, 0x1

    move v14, v11

    int-to-byte v14, v14

    aput-byte v14, v12, v13

    .line 139
    move-object v12, v4

    move v13, v5

    add-int/lit8 v5, v5, 0x1

    move v14, v11

    const/16 v15, 0x8

    shr-int/lit8 v14, v14, 0x8

    int-to-byte v14, v14

    aput-byte v14, v12, v13

    .line 140
    move-object v12, v4

    move v13, v5

    add-int/lit8 v5, v5, 0x1

    move v14, v11

    const/16 v15, 0x10

    shr-int/lit8 v14, v14, 0x10

    int-to-byte v14, v14

    aput-byte v14, v12, v13

    .line 141
    move-object v12, v4

    move v13, v5

    add-int/lit8 v5, v5, 0x1

    move v14, v11

    const/16 v15, 0x18

    shr-int/lit8 v14, v14, 0x18

    int-to-byte v14, v14

    aput-byte v14, v12, v13

    .line 136
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 143
    .end local v11    # "argb":I
    :cond_0
    move v12, v2

    move v13, v3

    add-int/2addr v12, v13

    move v2, v12

    .line 144
    move v12, v5

    move v13, v6

    add-int/2addr v12, v13

    move v5, v12

    goto :goto_0

    .line 146
    .end local v10    # "x":I
    :cond_1
    return-void
.end method
