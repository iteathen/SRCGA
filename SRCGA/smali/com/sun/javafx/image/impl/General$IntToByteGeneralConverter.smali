.class Lcom/sun/javafx/image/impl/General$IntToByteGeneralConverter;
.super Lcom/sun/javafx/image/impl/BaseIntToByteConverter;
.source "General.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/image/impl/General;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "IntToByteGeneralConverter"
.end annotation


# instance fields
.field usePremult:Z


# direct methods
.method public constructor <init>(Lcom/sun/javafx/image/IntPixelGetter;Lcom/sun/javafx/image/BytePixelSetter;)V
    .locals 6

    .prologue
    .line 176
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/image/impl/General$IntToByteGeneralConverter;
    move-object v1, p1

    .local v1, "getter":Lcom/sun/javafx/image/IntPixelGetter;
    move-object v2, p2

    .local v2, "setter":Lcom/sun/javafx/image/BytePixelSetter;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Lcom/sun/javafx/image/impl/BaseIntToByteConverter;-><init>(Lcom/sun/javafx/image/IntPixelGetter;Lcom/sun/javafx/image/BytePixelSetter;)V

    .line 177
    move-object v3, v0

    move-object v4, v1

    invoke-interface {v4}, Lcom/sun/javafx/image/IntPixelGetter;->getAlphaType()Lcom/sun/javafx/image/AlphaType;

    move-result-object v4

    sget-object v5, Lcom/sun/javafx/image/AlphaType;->NONPREMULTIPLIED:Lcom/sun/javafx/image/AlphaType;

    if-eq v4, v5, :cond_0

    move-object v4, v2

    .line 178
    invoke-interface {v4}, Lcom/sun/javafx/image/BytePixelSetter;->getAlphaType()Lcom/sun/javafx/image/AlphaType;

    move-result-object v4

    sget-object v5, Lcom/sun/javafx/image/AlphaType;->NONPREMULTIPLIED:Lcom/sun/javafx/image/AlphaType;

    if-eq v4, v5, :cond_0

    const/4 v4, 0x1

    :goto_0
    iput-boolean v4, v3, Lcom/sun/javafx/image/impl/General$IntToByteGeneralConverter;->usePremult:Z

    .line 179
    return-void

    .line 178
    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method


# virtual methods
.method doConvert(Ljava/nio/IntBuffer;IILjava/nio/ByteBuffer;IIII)V
    .locals 16

    .prologue
    .line 208
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/javafx/image/impl/General$IntToByteGeneralConverter;
    move-object/from16 v1, p1

    .local v1, "srcbuf":Ljava/nio/IntBuffer;
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
    move v10, v3

    move v11, v7

    sub-int/2addr v10, v11

    move v3, v10

    .line 209
    move v10, v6

    move-object v11, v0

    iget v11, v11, Lcom/sun/javafx/image/impl/General$IntToByteGeneralConverter;->nDstElems:I

    move v12, v7

    mul-int/2addr v11, v12

    sub-int/2addr v10, v11

    move v6, v10

    .line 210
    :goto_0
    add-int/lit8 v8, v8, -0x1

    move v10, v8

    if-ltz v10, :cond_2

    .line 211
    const/4 v10, 0x0

    move v9, v10

    .local v9, "x":I
    :goto_1
    move v10, v9

    move v11, v7

    if-ge v10, v11, :cond_1

    .line 212
    move-object v10, v0

    iget-boolean v10, v10, Lcom/sun/javafx/image/impl/General$IntToByteGeneralConverter;->usePremult:Z

    if-eqz v10, :cond_0

    .line 213
    move-object v10, v0

    iget-object v10, v10, Lcom/sun/javafx/image/impl/General$IntToByteGeneralConverter;->setter:Lcom/sun/javafx/image/BytePixelSetter;

    move-object v11, v4

    move v12, v5

    move-object v13, v0

    iget-object v13, v13, Lcom/sun/javafx/image/impl/General$IntToByteGeneralConverter;->getter:Lcom/sun/javafx/image/IntPixelGetter;

    move-object v14, v1

    move v15, v2

    invoke-interface {v13, v14, v15}, Lcom/sun/javafx/image/IntPixelGetter;->getArgbPre(Ljava/nio/Buffer;I)I

    move-result v13

    invoke-interface {v10, v11, v12, v13}, Lcom/sun/javafx/image/BytePixelSetter;->setArgbPre(Ljava/nio/Buffer;II)V

    .line 217
    :goto_2
    add-int/lit8 v2, v2, 0x1

    .line 218
    move v10, v5

    move-object v11, v0

    iget v11, v11, Lcom/sun/javafx/image/impl/General$IntToByteGeneralConverter;->nDstElems:I

    add-int/2addr v10, v11

    move v5, v10

    .line 211
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 215
    :cond_0
    move-object v10, v0

    iget-object v10, v10, Lcom/sun/javafx/image/impl/General$IntToByteGeneralConverter;->setter:Lcom/sun/javafx/image/BytePixelSetter;

    move-object v11, v4

    move v12, v5

    move-object v13, v0

    iget-object v13, v13, Lcom/sun/javafx/image/impl/General$IntToByteGeneralConverter;->getter:Lcom/sun/javafx/image/IntPixelGetter;

    move-object v14, v1

    move v15, v2

    invoke-interface {v13, v14, v15}, Lcom/sun/javafx/image/IntPixelGetter;->getArgb(Ljava/nio/Buffer;I)I

    move-result v13

    invoke-interface {v10, v11, v12, v13}, Lcom/sun/javafx/image/BytePixelSetter;->setArgb(Ljava/nio/Buffer;II)V

    goto :goto_2

    .line 220
    :cond_1
    move v10, v2

    move v11, v3

    add-int/2addr v10, v11

    move v2, v10

    .line 221
    move v10, v5

    move v11, v6

    add-int/2addr v10, v11

    move v5, v10

    goto :goto_0

    .line 223
    .end local v9    # "x":I
    :cond_2
    return-void
.end method

.method doConvert([III[BIIII)V
    .locals 16

    .prologue
    .line 186
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/javafx/image/impl/General$IntToByteGeneralConverter;
    move-object/from16 v1, p1

    .local v1, "srcarr":[I
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
    move v10, v3

    move v11, v7

    sub-int/2addr v10, v11

    move v3, v10

    .line 187
    move v10, v6

    move-object v11, v0

    iget v11, v11, Lcom/sun/javafx/image/impl/General$IntToByteGeneralConverter;->nDstElems:I

    move v12, v7

    mul-int/2addr v11, v12

    sub-int/2addr v10, v11

    move v6, v10

    .line 188
    :goto_0
    add-int/lit8 v8, v8, -0x1

    move v10, v8

    if-ltz v10, :cond_2

    .line 189
    const/4 v10, 0x0

    move v9, v10

    .local v9, "x":I
    :goto_1
    move v10, v9

    move v11, v7

    if-ge v10, v11, :cond_1

    .line 190
    move-object v10, v0

    iget-boolean v10, v10, Lcom/sun/javafx/image/impl/General$IntToByteGeneralConverter;->usePremult:Z

    if-eqz v10, :cond_0

    .line 191
    move-object v10, v0

    iget-object v10, v10, Lcom/sun/javafx/image/impl/General$IntToByteGeneralConverter;->setter:Lcom/sun/javafx/image/BytePixelSetter;

    move-object v11, v4

    move v12, v5

    move-object v13, v0

    iget-object v13, v13, Lcom/sun/javafx/image/impl/General$IntToByteGeneralConverter;->getter:Lcom/sun/javafx/image/IntPixelGetter;

    move-object v14, v1

    move v15, v2

    invoke-interface {v13, v14, v15}, Lcom/sun/javafx/image/IntPixelGetter;->getArgbPre([II)I

    move-result v13

    invoke-interface {v10, v11, v12, v13}, Lcom/sun/javafx/image/BytePixelSetter;->setArgbPre([BII)V

    .line 195
    :goto_2
    add-int/lit8 v2, v2, 0x1

    .line 196
    move v10, v5

    move-object v11, v0

    iget v11, v11, Lcom/sun/javafx/image/impl/General$IntToByteGeneralConverter;->nDstElems:I

    add-int/2addr v10, v11

    move v5, v10

    .line 189
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 193
    :cond_0
    move-object v10, v0

    iget-object v10, v10, Lcom/sun/javafx/image/impl/General$IntToByteGeneralConverter;->setter:Lcom/sun/javafx/image/BytePixelSetter;

    move-object v11, v4

    move v12, v5

    move-object v13, v0

    iget-object v13, v13, Lcom/sun/javafx/image/impl/General$IntToByteGeneralConverter;->getter:Lcom/sun/javafx/image/IntPixelGetter;

    move-object v14, v1

    move v15, v2

    invoke-interface {v13, v14, v15}, Lcom/sun/javafx/image/IntPixelGetter;->getArgb([II)I

    move-result v13

    invoke-interface {v10, v11, v12, v13}, Lcom/sun/javafx/image/BytePixelSetter;->setArgb([BII)V

    goto :goto_2

    .line 198
    :cond_1
    move v10, v2

    move v11, v3

    add-int/2addr v10, v11

    move v2, v10

    .line 199
    move v10, v5

    move v11, v6

    add-int/2addr v10, v11

    move v5, v10

    goto :goto_0

    .line 201
    .end local v9    # "x":I
    :cond_2
    return-void
.end method
