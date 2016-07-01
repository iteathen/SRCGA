.class public Lcom/sun/javafx/image/impl/ByteIndexed$ToIntArgbAnyConverter;
.super Lcom/sun/javafx/image/impl/BaseByteToIntConverter;
.source "ByteIndexed.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/image/impl/ByteIndexed;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ToIntArgbAnyConverter"
.end annotation


# direct methods
.method public constructor <init>(Lcom/sun/javafx/image/BytePixelGetter;Lcom/sun/javafx/image/IntPixelSetter;)V
    .locals 6

    .prologue
    .line 173
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/image/impl/ByteIndexed$ToIntArgbAnyConverter;
    move-object v1, p1

    .local v1, "getter":Lcom/sun/javafx/image/BytePixelGetter;
    move-object v2, p2

    .local v2, "setter":Lcom/sun/javafx/image/IntPixelSetter;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Lcom/sun/javafx/image/impl/BaseByteToIntConverter;-><init>(Lcom/sun/javafx/image/BytePixelGetter;Lcom/sun/javafx/image/IntPixelSetter;)V

    .line 174
    return-void
.end method


# virtual methods
.method doConvert(Ljava/nio/ByteBuffer;IILjava/nio/IntBuffer;IIII)V
    .locals 17

    .prologue
    .line 197
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/javafx/image/impl/ByteIndexed$ToIntArgbAnyConverter;
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
    move-object v11, v0

    invoke-virtual {v11}, Lcom/sun/javafx/image/impl/ByteIndexed$ToIntArgbAnyConverter;->getGetter()Lcom/sun/javafx/image/BytePixelGetter;

    move-result-object v11

    move-object v12, v0

    invoke-virtual {v12}, Lcom/sun/javafx/image/impl/ByteIndexed$ToIntArgbAnyConverter;->getSetter()Lcom/sun/javafx/image/IntPixelSetter;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/sun/javafx/image/impl/ByteIndexed;->getColors(Lcom/sun/javafx/image/BytePixelGetter;Lcom/sun/javafx/image/PixelSetter;)[I

    move-result-object v11

    move-object v9, v11

    .line 199
    .local v9, "colors":[I
    :goto_0
    add-int/lit8 v8, v8, -0x1

    move v11, v8

    if-ltz v11, :cond_1

    .line 200
    const/4 v11, 0x0

    move v10, v11

    .local v10, "x":I
    :goto_1
    move v11, v10

    move v12, v7

    if-ge v11, v12, :cond_0

    .line 201
    move-object v11, v4

    move v12, v5

    move v13, v10

    add-int/2addr v12, v13

    move-object v13, v9

    move-object v14, v1

    move v15, v2

    move/from16 v16, v10

    add-int v15, v15, v16

    invoke-virtual {v14, v15}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v14

    const/16 v15, 0xff

    and-int/lit16 v14, v14, 0xff

    aget v13, v13, v14

    invoke-virtual {v11, v12, v13}, Ljava/nio/IntBuffer;->put(II)Ljava/nio/IntBuffer;

    move-result-object v11

    .line 200
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 203
    :cond_0
    move v11, v2

    move v12, v3

    add-int/2addr v11, v12

    move v2, v11

    .line 204
    move v11, v5

    move v12, v6

    add-int/2addr v11, v12

    move v5, v11

    goto :goto_0

    .line 206
    .end local v10    # "x":I
    :cond_1
    return-void
.end method

.method doConvert([BII[IIIII)V
    .locals 17

    .prologue
    .line 181
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/javafx/image/impl/ByteIndexed$ToIntArgbAnyConverter;
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
    move-object v11, v0

    invoke-virtual {v11}, Lcom/sun/javafx/image/impl/ByteIndexed$ToIntArgbAnyConverter;->getGetter()Lcom/sun/javafx/image/BytePixelGetter;

    move-result-object v11

    move-object v12, v0

    invoke-virtual {v12}, Lcom/sun/javafx/image/impl/ByteIndexed$ToIntArgbAnyConverter;->getSetter()Lcom/sun/javafx/image/IntPixelSetter;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/sun/javafx/image/impl/ByteIndexed;->getColors(Lcom/sun/javafx/image/BytePixelGetter;Lcom/sun/javafx/image/PixelSetter;)[I

    move-result-object v11

    move-object v9, v11

    .line 183
    .local v9, "colors":[I
    :goto_0
    add-int/lit8 v8, v8, -0x1

    move v11, v8

    if-ltz v11, :cond_1

    .line 184
    const/4 v11, 0x0

    move v10, v11

    .local v10, "x":I
    :goto_1
    move v11, v10

    move v12, v7

    if-ge v11, v12, :cond_0

    .line 185
    move-object v11, v4

    move v12, v5

    move v13, v10

    add-int/2addr v12, v13

    move-object v13, v9

    move-object v14, v1

    move v15, v2

    move/from16 v16, v10

    add-int v15, v15, v16

    aget-byte v14, v14, v15

    const/16 v15, 0xff

    and-int/lit16 v14, v14, 0xff

    aget v13, v13, v14

    aput v13, v11, v12

    .line 184
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 187
    :cond_0
    move v11, v2

    move v12, v3

    add-int/2addr v11, v12

    move v2, v11

    .line 188
    move v11, v5

    move v12, v6

    add-int/2addr v11, v12

    move v5, v11

    goto :goto_0

    .line 190
    .end local v10    # "x":I
    :cond_1
    return-void
.end method
