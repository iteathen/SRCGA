.class Lcom/sun/javafx/image/impl/BaseByteToByteConverter$ByteAnyToSameConverter;
.super Lcom/sun/javafx/image/impl/BaseByteToByteConverter;
.source "BaseByteToByteConverter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/image/impl/BaseByteToByteConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ByteAnyToSameConverter"
.end annotation


# direct methods
.method constructor <init>(Lcom/sun/javafx/image/BytePixelAccessor;)V
    .locals 5

    .prologue
    .line 167
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/image/impl/BaseByteToByteConverter$ByteAnyToSameConverter;
    move-object v1, p1

    .local v1, "fmt":Lcom/sun/javafx/image/BytePixelAccessor;
    move-object v2, v0

    move-object v3, v1

    move-object v4, v1

    invoke-direct {v2, v3, v4}, Lcom/sun/javafx/image/impl/BaseByteToByteConverter;-><init>(Lcom/sun/javafx/image/BytePixelGetter;Lcom/sun/javafx/image/BytePixelSetter;)V

    .line 168
    return-void
.end method


# virtual methods
.method public bridge synthetic convert(Ljava/nio/Buffer;IILjava/nio/Buffer;IIII)V
    .locals 18

    .prologue
    .line 165
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/javafx/image/impl/BaseByteToByteConverter$ByteAnyToSameConverter;
    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move-object v9, v0

    move-object v10, v1

    check-cast v10, Ljava/nio/ByteBuffer;

    move v11, v2

    move v12, v3

    move-object v13, v4

    check-cast v13, Ljava/nio/ByteBuffer;

    move v14, v5

    move v15, v6

    move/from16 v16, v7

    move/from16 v17, v8

    invoke-super/range {v9 .. v17}, Lcom/sun/javafx/image/impl/BaseByteToByteConverter;->convert(Ljava/nio/ByteBuffer;IILjava/nio/ByteBuffer;IIII)V

    return-void
.end method

.method doConvert(Ljava/nio/ByteBuffer;IILjava/nio/ByteBuffer;IIII)V
    .locals 20

    .prologue
    .line 187
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/javafx/image/impl/BaseByteToByteConverter$ByteAnyToSameConverter;
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
    move-object v15, v2

    invoke-virtual {v15}, Ljava/nio/ByteBuffer;->limit()I

    move-result v15

    move v10, v15

    .line 188
    .local v10, "srclimit":I
    move-object v15, v2

    invoke-virtual {v15}, Ljava/nio/ByteBuffer;->position()I

    move-result v15

    move v11, v15

    .line 189
    .local v11, "origsrcpos":I
    move-object v15, v5

    invoke-virtual {v15}, Ljava/nio/ByteBuffer;->position()I

    move-result v15

    move v12, v15

    .line 191
    .local v12, "origdstpos":I
    :goto_0
    add-int/lit8 v9, v9, -0x1

    move v15, v9

    if-ltz v15, :cond_1

    .line 192
    move v15, v3

    move/from16 v16, v8

    move-object/from16 v17, v1

    :try_start_0
    move-object/from16 v0, v17

    iget v0, v0, Lcom/sun/javafx/image/impl/BaseByteToByteConverter$ByteAnyToSameConverter;->nSrcElems:I

    move/from16 v17, v0

    mul-int v16, v16, v17

    add-int v15, v15, v16

    move v13, v15

    .line 193
    .local v13, "newlimit":I
    move v15, v13

    move/from16 v16, v10

    move/from16 v0, v16

    if-le v15, v0, :cond_0

    .line 194
    new-instance v15, Ljava/lang/IndexOutOfBoundsException;

    move-object/from16 v19, v15

    move-object/from16 v15, v19

    move-object/from16 v16, v19

    new-instance v17, Ljava/lang/StringBuilder;

    move-object/from16 v19, v17

    move-object/from16 v17, v19

    move-object/from16 v18, v19

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, ""

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move/from16 v18, v10

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 204
    .end local v13    # "newlimit":I
    :catchall_0
    move-exception v15

    move-object v14, v15

    move-object v15, v2

    move/from16 v16, v10

    invoke-virtual/range {v15 .. v16}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    move-result-object v15

    .line 205
    move-object v15, v2

    move/from16 v16, v11

    invoke-virtual/range {v15 .. v16}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v15

    .line 206
    move-object v15, v5

    move/from16 v16, v12

    invoke-virtual/range {v15 .. v16}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v15

    move-object v15, v14

    throw v15

    .line 196
    .restart local v13    # "newlimit":I
    :cond_0
    move-object v15, v2

    move/from16 v16, v13

    :try_start_1
    invoke-virtual/range {v15 .. v16}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    move-result-object v15

    .line 197
    move-object v15, v2

    move/from16 v16, v3

    invoke-virtual/range {v15 .. v16}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v15

    .line 198
    move-object v15, v5

    move/from16 v16, v6

    invoke-virtual/range {v15 .. v16}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v15

    .line 199
    move-object v15, v5

    move-object/from16 v16, v2

    invoke-virtual/range {v15 .. v16}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v15

    .line 200
    move v15, v3

    move/from16 v16, v4

    add-int v15, v15, v16

    move v3, v15

    .line 201
    move v15, v6

    move/from16 v16, v7

    add-int v15, v15, v16

    move v6, v15

    .line 202
    goto/16 :goto_0

    .line 204
    .end local v13    # "newlimit":I
    :cond_1
    move-object v15, v2

    move/from16 v16, v10

    invoke-virtual/range {v15 .. v16}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    move-result-object v15

    .line 205
    move-object v15, v2

    move/from16 v16, v11

    invoke-virtual/range {v15 .. v16}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v15

    .line 206
    move-object v15, v5

    move/from16 v16, v12

    invoke-virtual/range {v15 .. v16}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v15

    .line 207
    .line 208
    return-void
.end method

.method doConvert([BII[BIIII)V
    .locals 15

    .prologue
    .line 175
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/image/impl/BaseByteToByteConverter$ByteAnyToSameConverter;
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
    :goto_0
    add-int/lit8 v8, v8, -0x1

    move v9, v8

    if-ltz v9, :cond_0

    .line 176
    move-object v9, v1

    move v10, v2

    move-object v11, v4

    move v12, v5

    move v13, v7

    move-object v14, v0

    iget v14, v14, Lcom/sun/javafx/image/impl/BaseByteToByteConverter$ByteAnyToSameConverter;->nSrcElems:I

    mul-int/2addr v13, v14

    invoke-static {v9, v10, v11, v12, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 177
    move v9, v2

    move v10, v3

    add-int/2addr v9, v10

    move v2, v9

    .line 178
    move v9, v5

    move v10, v6

    add-int/2addr v9, v10

    move v5, v9

    goto :goto_0

    .line 180
    :cond_0
    return-void
.end method

.method public bridge synthetic getGetter()Lcom/sun/javafx/image/PixelGetter;
    .locals 2

    .prologue
    .line 165
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/image/impl/BaseByteToByteConverter$ByteAnyToSameConverter;
    move-object v1, v0

    invoke-super {v1}, Lcom/sun/javafx/image/impl/BaseByteToByteConverter;->getGetter()Lcom/sun/javafx/image/BytePixelGetter;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/image/impl/BaseByteToByteConverter$ByteAnyToSameConverter;
    return-object v0
.end method

.method public bridge synthetic getSetter()Lcom/sun/javafx/image/PixelSetter;
    .locals 2

    .prologue
    .line 165
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/image/impl/BaseByteToByteConverter$ByteAnyToSameConverter;
    move-object v1, v0

    invoke-super {v1}, Lcom/sun/javafx/image/impl/BaseByteToByteConverter;->getSetter()Lcom/sun/javafx/image/BytePixelSetter;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/image/impl/BaseByteToByteConverter$ByteAnyToSameConverter;
    return-object v0
.end method
