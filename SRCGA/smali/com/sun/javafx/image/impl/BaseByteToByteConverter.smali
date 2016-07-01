.class abstract Lcom/sun/javafx/image/impl/BaseByteToByteConverter;
.super Ljava/lang/Object;
.source "BaseByteToByteConverter.java"

# interfaces
.implements Lcom/sun/javafx/image/ByteToBytePixelConverter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/javafx/image/impl/BaseByteToByteConverter$FourByteReorderer;,
        Lcom/sun/javafx/image/impl/BaseByteToByteConverter$ByteAnyToSameConverter;
    }
.end annotation


# instance fields
.field protected final getter:Lcom/sun/javafx/image/BytePixelGetter;

.field protected final nDstElems:I

.field protected final nSrcElems:I

.field protected final setter:Lcom/sun/javafx/image/BytePixelSetter;


# direct methods
.method constructor <init>(Lcom/sun/javafx/image/BytePixelGetter;Lcom/sun/javafx/image/BytePixelSetter;)V
    .locals 5

    .prologue
    .line 42
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/image/impl/BaseByteToByteConverter;
    move-object v1, p1

    .local v1, "getter":Lcom/sun/javafx/image/BytePixelGetter;
    move-object v2, p2

    .local v2, "setter":Lcom/sun/javafx/image/BytePixelSetter;
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 43
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/sun/javafx/image/impl/BaseByteToByteConverter;->getter:Lcom/sun/javafx/image/BytePixelGetter;

    .line 44
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/sun/javafx/image/impl/BaseByteToByteConverter;->setter:Lcom/sun/javafx/image/BytePixelSetter;

    .line 45
    move-object v3, v0

    move-object v4, v1

    invoke-interface {v4}, Lcom/sun/javafx/image/BytePixelGetter;->getNumElements()I

    move-result v4

    iput v4, v3, Lcom/sun/javafx/image/impl/BaseByteToByteConverter;->nSrcElems:I

    .line 46
    move-object v3, v0

    move-object v4, v2

    invoke-interface {v4}, Lcom/sun/javafx/image/BytePixelSetter;->getNumElements()I

    move-result v4

    iput v4, v3, Lcom/sun/javafx/image/impl/BaseByteToByteConverter;->nDstElems:I

    .line 47
    return-void
.end method

.method static create(Lcom/sun/javafx/image/BytePixelAccessor;)Lcom/sun/javafx/image/ByteToBytePixelConverter;
    .locals 5

    .prologue
    .line 162
    move-object v0, p0

    .local v0, "fmt":Lcom/sun/javafx/image/BytePixelAccessor;
    new-instance v1, Lcom/sun/javafx/image/impl/BaseByteToByteConverter$ByteAnyToSameConverter;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Lcom/sun/javafx/image/impl/BaseByteToByteConverter$ByteAnyToSameConverter;-><init>(Lcom/sun/javafx/image/BytePixelAccessor;)V

    move-object v0, v1

    .end local v0    # "fmt":Lcom/sun/javafx/image/BytePixelAccessor;
    return-object v0
.end method

.method public static createReorderer(Lcom/sun/javafx/image/BytePixelGetter;Lcom/sun/javafx/image/BytePixelSetter;IIII)Lcom/sun/javafx/image/ByteToBytePixelConverter;
    .locals 15

    .prologue
    .line 215
    move-object v0, p0

    .local v0, "getter":Lcom/sun/javafx/image/BytePixelGetter;
    move-object/from16 v1, p1

    .local v1, "setter":Lcom/sun/javafx/image/BytePixelSetter;
    move/from16 v2, p2

    .local v2, "c0":I
    move/from16 v3, p3

    .local v3, "c1":I
    move/from16 v4, p4

    .local v4, "c2":I
    move/from16 v5, p5

    .local v5, "c3":I
    new-instance v6, Lcom/sun/javafx/image/impl/BaseByteToByteConverter$FourByteReorderer;

    move-object v14, v6

    move-object v6, v14

    move-object v7, v14

    move-object v8, v0

    move-object v9, v1

    move v10, v2

    move v11, v3

    move v12, v4

    move v13, v5

    invoke-direct/range {v7 .. v13}, Lcom/sun/javafx/image/impl/BaseByteToByteConverter$FourByteReorderer;-><init>(Lcom/sun/javafx/image/BytePixelGetter;Lcom/sun/javafx/image/BytePixelSetter;IIII)V

    move-object v0, v6

    .end local v0    # "getter":Lcom/sun/javafx/image/BytePixelGetter;
    return-object v0
.end method


# virtual methods
.method public bridge synthetic convert(Ljava/nio/Buffer;IILjava/nio/Buffer;IIII)V
    .locals 18

    .prologue
    .line 34
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/javafx/image/impl/BaseByteToByteConverter;
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

    invoke-virtual/range {v9 .. v17}, Lcom/sun/javafx/image/impl/BaseByteToByteConverter;->convert(Ljava/nio/ByteBuffer;IILjava/nio/ByteBuffer;IIII)V

    return-void
.end method

.method public final convert(Ljava/nio/ByteBuffer;IILjava/nio/ByteBuffer;IIII)V
    .locals 18

    .prologue
    .line 89
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/javafx/image/impl/BaseByteToByteConverter;
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
    move v9, v7

    if-lez v9, :cond_0

    move v9, v8

    if-gtz v9, :cond_1

    .line 107
    :cond_0
    :goto_0
    return-void

    .line 90
    :cond_1
    move v9, v3

    move v10, v7

    move-object v11, v0

    iget v11, v11, Lcom/sun/javafx/image/impl/BaseByteToByteConverter;->nSrcElems:I

    mul-int/2addr v10, v11

    if-ne v9, v10, :cond_2

    move v9, v6

    move v10, v7

    move-object v11, v0

    iget v11, v11, Lcom/sun/javafx/image/impl/BaseByteToByteConverter;->nDstElems:I

    mul-int/2addr v10, v11

    if-ne v9, v10, :cond_2

    .line 93
    move v9, v7

    move v10, v8

    mul-int/2addr v9, v10

    move v7, v9

    .line 94
    const/4 v9, 0x1

    move v8, v9

    .line 96
    :cond_2
    move-object v9, v1

    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v9

    if-eqz v9, :cond_3

    move-object v9, v4

    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 97
    move v9, v2

    move-object v10, v1

    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v10

    add-int/2addr v9, v10

    move v2, v9

    .line 98
    move v9, v5

    move-object v10, v4

    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v10

    add-int/2addr v9, v10

    move v5, v9

    .line 99
    move-object v9, v0

    move-object v10, v1

    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v10

    move v11, v2

    move v12, v3

    move-object v13, v4

    .line 100
    invoke-virtual {v13}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v13

    move v14, v5

    move v15, v6

    move/from16 v16, v7

    move/from16 v17, v8

    .line 99
    invoke-virtual/range {v9 .. v17}, Lcom/sun/javafx/image/impl/BaseByteToByteConverter;->doConvert([BII[BIIII)V

    .line 107
    :goto_1
    goto :goto_0

    .line 103
    :cond_3
    move-object v9, v0

    move-object v10, v1

    move v11, v2

    move v12, v3

    move-object v13, v4

    move v14, v5

    move v15, v6

    move/from16 v16, v7

    move/from16 v17, v8

    invoke-virtual/range {v9 .. v17}, Lcom/sun/javafx/image/impl/BaseByteToByteConverter;->doConvert(Ljava/nio/ByteBuffer;IILjava/nio/ByteBuffer;IIII)V

    goto :goto_1
.end method

.method public final convert(Ljava/nio/ByteBuffer;II[BIIII)V
    .locals 19

    .prologue
    .line 114
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/javafx/image/impl/BaseByteToByteConverter;
    move-object/from16 v1, p1

    .local v1, "srcbuf":Ljava/nio/ByteBuffer;
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
    move v10, v7

    if-lez v10, :cond_0

    move v10, v8

    if-gtz v10, :cond_1

    .line 133
    :cond_0
    :goto_0
    return-void

    .line 115
    :cond_1
    move v10, v3

    move v11, v7

    move-object v12, v0

    iget v12, v12, Lcom/sun/javafx/image/impl/BaseByteToByteConverter;->nSrcElems:I

    mul-int/2addr v11, v12

    if-ne v10, v11, :cond_2

    move v10, v6

    move v11, v7

    move-object v12, v0

    iget v12, v12, Lcom/sun/javafx/image/impl/BaseByteToByteConverter;->nDstElems:I

    mul-int/2addr v11, v12

    if-ne v10, v11, :cond_2

    .line 118
    move v10, v7

    move v11, v8

    mul-int/2addr v10, v11

    move v7, v10

    .line 119
    const/4 v10, 0x1

    move v8, v10

    .line 121
    :cond_2
    move-object v10, v1

    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 122
    move-object v10, v1

    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v10

    move-object v9, v10

    .line 123
    .local v9, "srcarr":[B
    move v10, v2

    move-object v11, v1

    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v11

    add-int/2addr v10, v11

    move v2, v10

    .line 124
    move-object v10, v0

    move-object v11, v9

    move v12, v2

    move v13, v3

    move-object v14, v4

    move v15, v5

    move/from16 v16, v6

    move/from16 v17, v7

    move/from16 v18, v8

    invoke-virtual/range {v10 .. v18}, Lcom/sun/javafx/image/impl/BaseByteToByteConverter;->doConvert([BII[BIIII)V

    .line 127
    .line 133
    .end local v9    # "srcarr":[B
    :goto_1
    goto :goto_0

    .line 128
    :cond_3
    move-object v10, v4

    invoke-static {v10}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v10

    move-object v9, v10

    .line 129
    .local v9, "dstbuf":Ljava/nio/ByteBuffer;
    move-object v10, v0

    move-object v11, v1

    move v12, v2

    move v13, v3

    move-object v14, v9

    move v15, v5

    move/from16 v16, v6

    move/from16 v17, v7

    move/from16 v18, v8

    invoke-virtual/range {v10 .. v18}, Lcom/sun/javafx/image/impl/BaseByteToByteConverter;->doConvert(Ljava/nio/ByteBuffer;IILjava/nio/ByteBuffer;IIII)V

    goto :goto_1
.end method

.method public final convert([BIILjava/nio/ByteBuffer;IIII)V
    .locals 19

    .prologue
    .line 140
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/javafx/image/impl/BaseByteToByteConverter;
    move-object/from16 v1, p1

    .local v1, "srcarr":[B
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
    move v10, v7

    if-lez v10, :cond_0

    move v10, v8

    if-gtz v10, :cond_1

    .line 159
    :cond_0
    :goto_0
    return-void

    .line 141
    :cond_1
    move v10, v3

    move v11, v7

    move-object v12, v0

    iget v12, v12, Lcom/sun/javafx/image/impl/BaseByteToByteConverter;->nSrcElems:I

    mul-int/2addr v11, v12

    if-ne v10, v11, :cond_2

    move v10, v6

    move v11, v7

    move-object v12, v0

    iget v12, v12, Lcom/sun/javafx/image/impl/BaseByteToByteConverter;->nDstElems:I

    mul-int/2addr v11, v12

    if-ne v10, v11, :cond_2

    .line 144
    move v10, v7

    move v11, v8

    mul-int/2addr v10, v11

    move v7, v10

    .line 145
    const/4 v10, 0x1

    move v8, v10

    .line 147
    :cond_2
    move-object v10, v4

    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 148
    move-object v10, v4

    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v10

    move-object v9, v10

    .line 149
    .local v9, "dstarr":[B
    move v10, v5

    move-object v11, v4

    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v11

    add-int/2addr v10, v11

    move v5, v10

    .line 150
    move-object v10, v0

    move-object v11, v1

    move v12, v2

    move v13, v3

    move-object v14, v9

    move v15, v5

    move/from16 v16, v6

    move/from16 v17, v7

    move/from16 v18, v8

    invoke-virtual/range {v10 .. v18}, Lcom/sun/javafx/image/impl/BaseByteToByteConverter;->doConvert([BII[BIIII)V

    .line 153
    .line 159
    .end local v9    # "dstarr":[B
    :goto_1
    goto :goto_0

    .line 154
    :cond_3
    move-object v10, v1

    invoke-static {v10}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v10

    move-object v9, v10

    .line 155
    .local v9, "srcbuf":Ljava/nio/ByteBuffer;
    move-object v10, v0

    move-object v11, v9

    move v12, v2

    move v13, v3

    move-object v14, v4

    move v15, v5

    move/from16 v16, v6

    move/from16 v17, v7

    move/from16 v18, v8

    invoke-virtual/range {v10 .. v18}, Lcom/sun/javafx/image/impl/BaseByteToByteConverter;->doConvert(Ljava/nio/ByteBuffer;IILjava/nio/ByteBuffer;IIII)V

    goto :goto_1
.end method

.method public final convert([BII[BIIII)V
    .locals 18

    .prologue
    .line 72
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/javafx/image/impl/BaseByteToByteConverter;
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
    move v9, v7

    if-lez v9, :cond_0

    move v9, v8

    if-gtz v9, :cond_1

    .line 82
    :cond_0
    :goto_0
    return-void

    .line 73
    :cond_1
    move v9, v3

    move v10, v7

    move-object v11, v0

    iget v11, v11, Lcom/sun/javafx/image/impl/BaseByteToByteConverter;->nSrcElems:I

    mul-int/2addr v10, v11

    if-ne v9, v10, :cond_2

    move v9, v6

    move v10, v7

    move-object v11, v0

    iget v11, v11, Lcom/sun/javafx/image/impl/BaseByteToByteConverter;->nDstElems:I

    mul-int/2addr v10, v11

    if-ne v9, v10, :cond_2

    .line 76
    move v9, v7

    move v10, v8

    mul-int/2addr v9, v10

    move v7, v9

    .line 77
    const/4 v9, 0x1

    move v8, v9

    .line 79
    :cond_2
    move-object v9, v0

    move-object v10, v1

    move v11, v2

    move v12, v3

    move-object v13, v4

    move v14, v5

    move v15, v6

    move/from16 v16, v7

    move/from16 v17, v8

    invoke-virtual/range {v9 .. v17}, Lcom/sun/javafx/image/impl/BaseByteToByteConverter;->doConvert([BII[BIIII)V

    .line 82
    goto :goto_0
.end method

.method abstract doConvert(Ljava/nio/ByteBuffer;IILjava/nio/ByteBuffer;IIII)V
.end method

.method abstract doConvert([BII[BIIII)V
.end method

.method public final getGetter()Lcom/sun/javafx/image/BytePixelGetter;
    .locals 2

    .prologue
    .line 51
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/image/impl/BaseByteToByteConverter;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/image/impl/BaseByteToByteConverter;->getter:Lcom/sun/javafx/image/BytePixelGetter;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/image/impl/BaseByteToByteConverter;
    return-object v0
.end method

.method public bridge synthetic getGetter()Lcom/sun/javafx/image/PixelGetter;
    .locals 2

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/image/impl/BaseByteToByteConverter;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/image/impl/BaseByteToByteConverter;->getGetter()Lcom/sun/javafx/image/BytePixelGetter;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/image/impl/BaseByteToByteConverter;
    return-object v0
.end method

.method public final getSetter()Lcom/sun/javafx/image/BytePixelSetter;
    .locals 2

    .prologue
    .line 56
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/image/impl/BaseByteToByteConverter;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/image/impl/BaseByteToByteConverter;->setter:Lcom/sun/javafx/image/BytePixelSetter;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/image/impl/BaseByteToByteConverter;
    return-object v0
.end method

.method public bridge synthetic getSetter()Lcom/sun/javafx/image/PixelSetter;
    .locals 2

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/image/impl/BaseByteToByteConverter;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/image/impl/BaseByteToByteConverter;->getSetter()Lcom/sun/javafx/image/BytePixelSetter;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/image/impl/BaseByteToByteConverter;
    return-object v0
.end method
