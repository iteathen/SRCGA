.class public abstract Lcom/sun/javafx/image/impl/BaseIntToByteConverter;
.super Ljava/lang/Object;
.source "BaseIntToByteConverter.java"

# interfaces
.implements Lcom/sun/javafx/image/IntToBytePixelConverter;


# instance fields
.field protected final getter:Lcom/sun/javafx/image/IntPixelGetter;

.field protected final nDstElems:I

.field protected final setter:Lcom/sun/javafx/image/BytePixelSetter;


# direct methods
.method constructor <init>(Lcom/sun/javafx/image/IntPixelGetter;Lcom/sun/javafx/image/BytePixelSetter;)V
    .locals 5

    .prologue
    .line 41
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/image/impl/BaseIntToByteConverter;
    move-object v1, p1

    .local v1, "getter":Lcom/sun/javafx/image/IntPixelGetter;
    move-object v2, p2

    .local v2, "setter":Lcom/sun/javafx/image/BytePixelSetter;
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 42
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/sun/javafx/image/impl/BaseIntToByteConverter;->getter:Lcom/sun/javafx/image/IntPixelGetter;

    .line 43
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/sun/javafx/image/impl/BaseIntToByteConverter;->setter:Lcom/sun/javafx/image/BytePixelSetter;

    .line 44
    move-object v3, v0

    move-object v4, v2

    invoke-interface {v4}, Lcom/sun/javafx/image/BytePixelSetter;->getNumElements()I

    move-result v4

    iput v4, v3, Lcom/sun/javafx/image/impl/BaseIntToByteConverter;->nDstElems:I

    .line 45
    return-void
.end method


# virtual methods
.method public bridge synthetic convert(Ljava/nio/Buffer;IILjava/nio/Buffer;IIII)V
    .locals 18

    .prologue
    .line 34
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/javafx/image/impl/BaseIntToByteConverter;
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

    check-cast v10, Ljava/nio/IntBuffer;

    move v11, v2

    move v12, v3

    move-object v13, v4

    check-cast v13, Ljava/nio/ByteBuffer;

    move v14, v5

    move v15, v6

    move/from16 v16, v7

    move/from16 v17, v8

    invoke-virtual/range {v9 .. v17}, Lcom/sun/javafx/image/impl/BaseIntToByteConverter;->convert(Ljava/nio/IntBuffer;IILjava/nio/ByteBuffer;IIII)V

    return-void
.end method

.method public final convert(Ljava/nio/IntBuffer;IILjava/nio/ByteBuffer;IIII)V
    .locals 18

    .prologue
    .line 87
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/javafx/image/impl/BaseIntToByteConverter;
    move-object/from16 v1, p1

    .local v1, "srcbuf":Ljava/nio/IntBuffer;
    move/from16 v2, p2

    .local v2, "srcoff":I
    move/from16 v3, p3

    .local v3, "srcscanints":I
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

    .line 105
    :cond_0
    :goto_0
    return-void

    .line 88
    :cond_1
    move v9, v3

    move v10, v7

    if-ne v9, v10, :cond_2

    move v9, v6

    move v10, v7

    move-object v11, v0

    iget v11, v11, Lcom/sun/javafx/image/impl/BaseIntToByteConverter;->nDstElems:I

    mul-int/2addr v10, v11

    if-ne v9, v10, :cond_2

    .line 91
    move v9, v7

    move v10, v8

    mul-int/2addr v9, v10

    move v7, v9

    .line 92
    const/4 v9, 0x1

    move v8, v9

    .line 94
    :cond_2
    move-object v9, v1

    invoke-virtual {v9}, Ljava/nio/IntBuffer;->hasArray()Z

    move-result v9

    if-eqz v9, :cond_3

    move-object v9, v4

    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 95
    move v9, v2

    move-object v10, v1

    invoke-virtual {v10}, Ljava/nio/IntBuffer;->arrayOffset()I

    move-result v10

    add-int/2addr v9, v10

    move v2, v9

    .line 96
    move v9, v5

    move-object v10, v4

    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v10

    add-int/2addr v9, v10

    move v5, v9

    .line 97
    move-object v9, v0

    move-object v10, v1

    invoke-virtual {v10}, Ljava/nio/IntBuffer;->array()[I

    move-result-object v10

    move v11, v2

    move v12, v3

    move-object v13, v4

    .line 98
    invoke-virtual {v13}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v13

    move v14, v5

    move v15, v6

    move/from16 v16, v7

    move/from16 v17, v8

    .line 97
    invoke-virtual/range {v9 .. v17}, Lcom/sun/javafx/image/impl/BaseIntToByteConverter;->doConvert([III[BIIII)V

    .line 105
    :goto_1
    goto :goto_0

    .line 101
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

    invoke-virtual/range {v9 .. v17}, Lcom/sun/javafx/image/impl/BaseIntToByteConverter;->doConvert(Ljava/nio/IntBuffer;IILjava/nio/ByteBuffer;IIII)V

    goto :goto_1
.end method

.method public final convert(Ljava/nio/IntBuffer;II[BIIII)V
    .locals 19

    .prologue
    .line 112
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/javafx/image/impl/BaseIntToByteConverter;
    move-object/from16 v1, p1

    .local v1, "srcbuf":Ljava/nio/IntBuffer;
    move/from16 v2, p2

    .local v2, "srcoff":I
    move/from16 v3, p3

    .local v3, "srcscanints":I
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

    .line 131
    :cond_0
    :goto_0
    return-void

    .line 113
    :cond_1
    move v10, v3

    move v11, v7

    if-ne v10, v11, :cond_2

    move v10, v6

    move v11, v7

    move-object v12, v0

    iget v12, v12, Lcom/sun/javafx/image/impl/BaseIntToByteConverter;->nDstElems:I

    mul-int/2addr v11, v12

    if-ne v10, v11, :cond_2

    .line 116
    move v10, v7

    move v11, v8

    mul-int/2addr v10, v11

    move v7, v10

    .line 117
    const/4 v10, 0x1

    move v8, v10

    .line 119
    :cond_2
    move-object v10, v1

    invoke-virtual {v10}, Ljava/nio/IntBuffer;->hasArray()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 120
    move-object v10, v1

    invoke-virtual {v10}, Ljava/nio/IntBuffer;->array()[I

    move-result-object v10

    move-object v9, v10

    .line 121
    .local v9, "srcarr":[I
    move v10, v2

    move-object v11, v1

    invoke-virtual {v11}, Ljava/nio/IntBuffer;->arrayOffset()I

    move-result v11

    add-int/2addr v10, v11

    move v2, v10

    .line 122
    move-object v10, v0

    move-object v11, v9

    move v12, v2

    move v13, v3

    move-object v14, v4

    move v15, v5

    move/from16 v16, v6

    move/from16 v17, v7

    move/from16 v18, v8

    invoke-virtual/range {v10 .. v18}, Lcom/sun/javafx/image/impl/BaseIntToByteConverter;->doConvert([III[BIIII)V

    .line 125
    .line 131
    .end local v9    # "srcarr":[I
    :goto_1
    goto :goto_0

    .line 126
    :cond_3
    move-object v10, v4

    invoke-static {v10}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v10

    move-object v9, v10

    .line 127
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

    invoke-virtual/range {v10 .. v18}, Lcom/sun/javafx/image/impl/BaseIntToByteConverter;->doConvert(Ljava/nio/IntBuffer;IILjava/nio/ByteBuffer;IIII)V

    goto :goto_1
.end method

.method public final convert([IIILjava/nio/ByteBuffer;IIII)V
    .locals 19

    .prologue
    .line 138
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/javafx/image/impl/BaseIntToByteConverter;
    move-object/from16 v1, p1

    .local v1, "srcarr":[I
    move/from16 v2, p2

    .local v2, "srcoff":I
    move/from16 v3, p3

    .local v3, "srcscanints":I
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

    .line 157
    :cond_0
    :goto_0
    return-void

    .line 139
    :cond_1
    move v10, v3

    move v11, v7

    if-ne v10, v11, :cond_2

    move v10, v6

    move v11, v7

    move-object v12, v0

    iget v12, v12, Lcom/sun/javafx/image/impl/BaseIntToByteConverter;->nDstElems:I

    mul-int/2addr v11, v12

    if-ne v10, v11, :cond_2

    .line 142
    move v10, v7

    move v11, v8

    mul-int/2addr v10, v11

    move v7, v10

    .line 143
    const/4 v10, 0x1

    move v8, v10

    .line 145
    :cond_2
    move-object v10, v4

    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 146
    move-object v10, v4

    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v10

    move-object v9, v10

    .line 147
    .local v9, "dstarr":[B
    move v10, v5

    move-object v11, v4

    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v11

    add-int/2addr v10, v11

    move v5, v10

    .line 148
    move-object v10, v0

    move-object v11, v1

    move v12, v2

    move v13, v3

    move-object v14, v9

    move v15, v5

    move/from16 v16, v6

    move/from16 v17, v7

    move/from16 v18, v8

    invoke-virtual/range {v10 .. v18}, Lcom/sun/javafx/image/impl/BaseIntToByteConverter;->doConvert([III[BIIII)V

    .line 151
    .line 157
    .end local v9    # "dstarr":[B
    :goto_1
    goto :goto_0

    .line 152
    :cond_3
    move-object v10, v1

    invoke-static {v10}, Ljava/nio/IntBuffer;->wrap([I)Ljava/nio/IntBuffer;

    move-result-object v10

    move-object v9, v10

    .line 153
    .local v9, "srcbuf":Ljava/nio/IntBuffer;
    move-object v10, v0

    move-object v11, v9

    move v12, v2

    move v13, v3

    move-object v14, v4

    move v15, v5

    move/from16 v16, v6

    move/from16 v17, v7

    move/from16 v18, v8

    invoke-virtual/range {v10 .. v18}, Lcom/sun/javafx/image/impl/BaseIntToByteConverter;->doConvert(Ljava/nio/IntBuffer;IILjava/nio/ByteBuffer;IIII)V

    goto :goto_1
.end method

.method public final convert([III[BIIII)V
    .locals 18

    .prologue
    .line 70
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/javafx/image/impl/BaseIntToByteConverter;
    move-object/from16 v1, p1

    .local v1, "srcarr":[I
    move/from16 v2, p2

    .local v2, "srcoff":I
    move/from16 v3, p3

    .local v3, "srcscanints":I
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

    .line 80
    :cond_0
    :goto_0
    return-void

    .line 71
    :cond_1
    move v9, v3

    move v10, v7

    if-ne v9, v10, :cond_2

    move v9, v6

    move v10, v7

    move-object v11, v0

    iget v11, v11, Lcom/sun/javafx/image/impl/BaseIntToByteConverter;->nDstElems:I

    mul-int/2addr v10, v11

    if-ne v9, v10, :cond_2

    .line 74
    move v9, v7

    move v10, v8

    mul-int/2addr v9, v10

    move v7, v9

    .line 75
    const/4 v9, 0x1

    move v8, v9

    .line 77
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

    invoke-virtual/range {v9 .. v17}, Lcom/sun/javafx/image/impl/BaseIntToByteConverter;->doConvert([III[BIIII)V

    .line 80
    goto :goto_0
.end method

.method abstract doConvert(Ljava/nio/IntBuffer;IILjava/nio/ByteBuffer;IIII)V
.end method

.method abstract doConvert([III[BIIII)V
.end method

.method public final getGetter()Lcom/sun/javafx/image/IntPixelGetter;
    .locals 2

    .prologue
    .line 49
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/image/impl/BaseIntToByteConverter;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/image/impl/BaseIntToByteConverter;->getter:Lcom/sun/javafx/image/IntPixelGetter;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/image/impl/BaseIntToByteConverter;
    return-object v0
.end method

.method public bridge synthetic getGetter()Lcom/sun/javafx/image/PixelGetter;
    .locals 2

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/image/impl/BaseIntToByteConverter;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/image/impl/BaseIntToByteConverter;->getGetter()Lcom/sun/javafx/image/IntPixelGetter;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/image/impl/BaseIntToByteConverter;
    return-object v0
.end method

.method public final getSetter()Lcom/sun/javafx/image/BytePixelSetter;
    .locals 2

    .prologue
    .line 54
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/image/impl/BaseIntToByteConverter;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/image/impl/BaseIntToByteConverter;->setter:Lcom/sun/javafx/image/BytePixelSetter;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/image/impl/BaseIntToByteConverter;
    return-object v0
.end method

.method public bridge synthetic getSetter()Lcom/sun/javafx/image/PixelSetter;
    .locals 2

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/image/impl/BaseIntToByteConverter;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/image/impl/BaseIntToByteConverter;->getSetter()Lcom/sun/javafx/image/BytePixelSetter;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/image/impl/BaseIntToByteConverter;
    return-object v0
.end method
