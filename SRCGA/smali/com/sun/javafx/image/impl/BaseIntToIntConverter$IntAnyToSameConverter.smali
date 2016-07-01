.class Lcom/sun/javafx/image/impl/BaseIntToIntConverter$IntAnyToSameConverter;
.super Lcom/sun/javafx/image/impl/BaseIntToIntConverter;
.source "BaseIntToIntConverter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/image/impl/BaseIntToIntConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "IntAnyToSameConverter"
.end annotation


# direct methods
.method constructor <init>(Lcom/sun/javafx/image/IntPixelAccessor;)V
    .locals 5

    .prologue
    .line 163
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/image/impl/BaseIntToIntConverter$IntAnyToSameConverter;
    move-object v1, p1

    .local v1, "fmt":Lcom/sun/javafx/image/IntPixelAccessor;
    move-object v2, v0

    move-object v3, v1

    move-object v4, v1

    invoke-direct {v2, v3, v4}, Lcom/sun/javafx/image/impl/BaseIntToIntConverter;-><init>(Lcom/sun/javafx/image/IntPixelGetter;Lcom/sun/javafx/image/IntPixelSetter;)V

    .line 164
    return-void
.end method


# virtual methods
.method public bridge synthetic convert(Ljava/nio/Buffer;IILjava/nio/Buffer;IIII)V
    .locals 18

    .prologue
    .line 161
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/javafx/image/impl/BaseIntToIntConverter$IntAnyToSameConverter;
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

    check-cast v13, Ljava/nio/IntBuffer;

    move v14, v5

    move v15, v6

    move/from16 v16, v7

    move/from16 v17, v8

    invoke-super/range {v9 .. v17}, Lcom/sun/javafx/image/impl/BaseIntToIntConverter;->convert(Ljava/nio/IntBuffer;IILjava/nio/IntBuffer;IIII)V

    return-void
.end method

.method doConvert(Ljava/nio/IntBuffer;IILjava/nio/IntBuffer;IIII)V
    .locals 19

    .prologue
    .line 183
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/javafx/image/impl/BaseIntToIntConverter$IntAnyToSameConverter;
    move-object/from16 v1, p1

    .local v1, "srcbuf":Ljava/nio/IntBuffer;
    move/from16 v2, p2

    .local v2, "srcoff":I
    move/from16 v3, p3

    .local v3, "srcscanints":I
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
    move-object v14, v1

    invoke-virtual {v14}, Ljava/nio/IntBuffer;->limit()I

    move-result v14

    move v9, v14

    .line 184
    .local v9, "srclimit":I
    move-object v14, v1

    invoke-virtual {v14}, Ljava/nio/IntBuffer;->position()I

    move-result v14

    move v10, v14

    .line 185
    .local v10, "origsrcpos":I
    move-object v14, v4

    invoke-virtual {v14}, Ljava/nio/IntBuffer;->position()I

    move-result v14

    move v11, v14

    .line 187
    .local v11, "origdstpos":I
    :goto_0
    add-int/lit8 v8, v8, -0x1

    move v14, v8

    if-ltz v14, :cond_1

    .line 188
    move v14, v2

    move v15, v7

    add-int/2addr v14, v15

    move v12, v14

    .line 189
    .local v12, "newlimit":I
    move v14, v12

    move v15, v9

    if-le v14, v15, :cond_0

    .line 190
    :try_start_0
    new-instance v14, Ljava/lang/IndexOutOfBoundsException;

    move-object/from16 v18, v14

    move-object/from16 v14, v18

    move-object/from16 v15, v18

    new-instance v16, Ljava/lang/StringBuilder;

    move-object/from16 v18, v16

    move-object/from16 v16, v18

    move-object/from16 v17, v18

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, ""

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move/from16 v17, v9

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 200
    :catchall_0
    move-exception v14

    move-object v13, v14

    move-object v14, v1

    move v15, v9

    invoke-virtual {v14, v15}, Ljava/nio/IntBuffer;->limit(I)Ljava/nio/Buffer;

    move-result-object v14

    .line 201
    move-object v14, v1

    move v15, v10

    invoke-virtual {v14, v15}, Ljava/nio/IntBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v14

    .line 202
    move-object v14, v4

    move v15, v11

    invoke-virtual {v14, v15}, Ljava/nio/IntBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v14

    move-object v14, v13

    throw v14

    .line 192
    :cond_0
    move-object v14, v1

    move v15, v12

    :try_start_1
    invoke-virtual {v14, v15}, Ljava/nio/IntBuffer;->limit(I)Ljava/nio/Buffer;

    move-result-object v14

    .line 193
    move-object v14, v1

    move v15, v2

    invoke-virtual {v14, v15}, Ljava/nio/IntBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v14

    .line 194
    move-object v14, v4

    move v15, v5

    invoke-virtual {v14, v15}, Ljava/nio/IntBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v14

    .line 195
    move-object v14, v4

    move-object v15, v1

    invoke-virtual {v14, v15}, Ljava/nio/IntBuffer;->put(Ljava/nio/IntBuffer;)Ljava/nio/IntBuffer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v14

    .line 196
    move v14, v2

    move v15, v3

    add-int/2addr v14, v15

    move v2, v14

    .line 197
    move v14, v5

    move v15, v6

    add-int/2addr v14, v15

    move v5, v14

    .line 198
    goto :goto_0

    .line 200
    .end local v12    # "newlimit":I
    :cond_1
    move-object v14, v1

    move v15, v9

    invoke-virtual {v14, v15}, Ljava/nio/IntBuffer;->limit(I)Ljava/nio/Buffer;

    move-result-object v14

    .line 201
    move-object v14, v1

    move v15, v10

    invoke-virtual {v14, v15}, Ljava/nio/IntBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v14

    .line 202
    move-object v14, v4

    move v15, v11

    invoke-virtual {v14, v15}, Ljava/nio/IntBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v14

    .line 203
    .line 204
    return-void
.end method

.method doConvert([III[IIIII)V
    .locals 14

    .prologue
    .line 171
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/image/impl/BaseIntToIntConverter$IntAnyToSameConverter;
    move-object v1, p1

    .local v1, "srcarr":[I
    move/from16 v2, p2

    .local v2, "srcoff":I
    move/from16 v3, p3

    .local v3, "srcscanints":I
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
    :goto_0
    add-int/lit8 v8, v8, -0x1

    move v9, v8

    if-ltz v9, :cond_0

    .line 172
    move-object v9, v1

    move v10, v2

    move-object v11, v4

    move v12, v5

    move v13, v7

    invoke-static {v9, v10, v11, v12, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 173
    move v9, v2

    move v10, v3

    add-int/2addr v9, v10

    move v2, v9

    .line 174
    move v9, v5

    move v10, v6

    add-int/2addr v9, v10

    move v5, v9

    goto :goto_0

    .line 176
    :cond_0
    return-void
.end method

.method public bridge synthetic getGetter()Lcom/sun/javafx/image/PixelGetter;
    .locals 2

    .prologue
    .line 161
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/image/impl/BaseIntToIntConverter$IntAnyToSameConverter;
    move-object v1, v0

    invoke-super {v1}, Lcom/sun/javafx/image/impl/BaseIntToIntConverter;->getGetter()Lcom/sun/javafx/image/IntPixelGetter;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/image/impl/BaseIntToIntConverter$IntAnyToSameConverter;
    return-object v0
.end method

.method public bridge synthetic getSetter()Lcom/sun/javafx/image/PixelSetter;
    .locals 2

    .prologue
    .line 161
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/image/impl/BaseIntToIntConverter$IntAnyToSameConverter;
    move-object v1, v0

    invoke-super {v1}, Lcom/sun/javafx/image/impl/BaseIntToIntConverter;->getSetter()Lcom/sun/javafx/image/IntPixelSetter;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/image/impl/BaseIntToIntConverter$IntAnyToSameConverter;
    return-object v0
.end method
