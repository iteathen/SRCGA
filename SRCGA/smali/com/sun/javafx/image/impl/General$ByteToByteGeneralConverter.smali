.class Lcom/sun/javafx/image/impl/General$ByteToByteGeneralConverter;
.super Lcom/sun/javafx/image/impl/BaseByteToByteConverter;
.source "General.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/image/impl/General;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ByteToByteGeneralConverter"
.end annotation


# instance fields
.field usePremult:Z


# direct methods
.method constructor <init>(Lcom/sun/javafx/image/BytePixelGetter;Lcom/sun/javafx/image/BytePixelSetter;)V
    .locals 6

    .prologue
    .line 69
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/image/impl/General$ByteToByteGeneralConverter;
    move-object v1, p1

    .local v1, "getter":Lcom/sun/javafx/image/BytePixelGetter;
    move-object v2, p2

    .local v2, "setter":Lcom/sun/javafx/image/BytePixelSetter;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Lcom/sun/javafx/image/impl/BaseByteToByteConverter;-><init>(Lcom/sun/javafx/image/BytePixelGetter;Lcom/sun/javafx/image/BytePixelSetter;)V

    .line 70
    move-object v3, v0

    move-object v4, v1

    invoke-interface {v4}, Lcom/sun/javafx/image/BytePixelGetter;->getAlphaType()Lcom/sun/javafx/image/AlphaType;

    move-result-object v4

    sget-object v5, Lcom/sun/javafx/image/AlphaType;->NONPREMULTIPLIED:Lcom/sun/javafx/image/AlphaType;

    if-eq v4, v5, :cond_0

    move-object v4, v2

    .line 71
    invoke-interface {v4}, Lcom/sun/javafx/image/BytePixelSetter;->getAlphaType()Lcom/sun/javafx/image/AlphaType;

    move-result-object v4

    sget-object v5, Lcom/sun/javafx/image/AlphaType;->NONPREMULTIPLIED:Lcom/sun/javafx/image/AlphaType;

    if-eq v4, v5, :cond_0

    const/4 v4, 0x1

    :goto_0
    iput-boolean v4, v3, Lcom/sun/javafx/image/impl/General$ByteToByteGeneralConverter;->usePremult:Z

    .line 72
    return-void

    .line 71
    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method


# virtual methods
.method doConvert(Ljava/nio/ByteBuffer;IILjava/nio/ByteBuffer;IIII)V
    .locals 16

    .prologue
    .line 101
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/javafx/image/impl/General$ByteToByteGeneralConverter;
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
    move v10, v3

    move-object v11, v0

    iget v11, v11, Lcom/sun/javafx/image/impl/General$ByteToByteGeneralConverter;->nSrcElems:I

    move v12, v7

    mul-int/2addr v11, v12

    sub-int/2addr v10, v11

    move v3, v10

    .line 102
    move v10, v6

    move-object v11, v0

    iget v11, v11, Lcom/sun/javafx/image/impl/General$ByteToByteGeneralConverter;->nDstElems:I

    move v12, v7

    mul-int/2addr v11, v12

    sub-int/2addr v10, v11

    move v6, v10

    .line 103
    :goto_0
    add-int/lit8 v8, v8, -0x1

    move v10, v8

    if-ltz v10, :cond_2

    .line 104
    const/4 v10, 0x0

    move v9, v10

    .local v9, "x":I
    :goto_1
    move v10, v9

    move v11, v7

    if-ge v10, v11, :cond_1

    .line 105
    move-object v10, v0

    iget-boolean v10, v10, Lcom/sun/javafx/image/impl/General$ByteToByteGeneralConverter;->usePremult:Z

    if-eqz v10, :cond_0

    .line 106
    move-object v10, v0

    iget-object v10, v10, Lcom/sun/javafx/image/impl/General$ByteToByteGeneralConverter;->setter:Lcom/sun/javafx/image/BytePixelSetter;

    move-object v11, v4

    move v12, v5

    move-object v13, v0

    iget-object v13, v13, Lcom/sun/javafx/image/impl/General$ByteToByteGeneralConverter;->getter:Lcom/sun/javafx/image/BytePixelGetter;

    move-object v14, v1

    move v15, v2

    invoke-interface {v13, v14, v15}, Lcom/sun/javafx/image/BytePixelGetter;->getArgbPre(Ljava/nio/Buffer;I)I

    move-result v13

    invoke-interface {v10, v11, v12, v13}, Lcom/sun/javafx/image/BytePixelSetter;->setArgbPre(Ljava/nio/Buffer;II)V

    .line 110
    :goto_2
    move v10, v2

    move-object v11, v0

    iget v11, v11, Lcom/sun/javafx/image/impl/General$ByteToByteGeneralConverter;->nSrcElems:I

    add-int/2addr v10, v11

    move v2, v10

    .line 111
    move v10, v5

    move-object v11, v0

    iget v11, v11, Lcom/sun/javafx/image/impl/General$ByteToByteGeneralConverter;->nDstElems:I

    add-int/2addr v10, v11

    move v5, v10

    .line 104
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 108
    :cond_0
    move-object v10, v0

    iget-object v10, v10, Lcom/sun/javafx/image/impl/General$ByteToByteGeneralConverter;->setter:Lcom/sun/javafx/image/BytePixelSetter;

    move-object v11, v4

    move v12, v5

    move-object v13, v0

    iget-object v13, v13, Lcom/sun/javafx/image/impl/General$ByteToByteGeneralConverter;->getter:Lcom/sun/javafx/image/BytePixelGetter;

    move-object v14, v1

    move v15, v2

    invoke-interface {v13, v14, v15}, Lcom/sun/javafx/image/BytePixelGetter;->getArgb(Ljava/nio/Buffer;I)I

    move-result v13

    invoke-interface {v10, v11, v12, v13}, Lcom/sun/javafx/image/BytePixelSetter;->setArgb(Ljava/nio/Buffer;II)V

    goto :goto_2

    .line 113
    :cond_1
    move v10, v2

    move v11, v3

    add-int/2addr v10, v11

    move v2, v10

    .line 114
    move v10, v5

    move v11, v6

    add-int/2addr v10, v11

    move v5, v10

    goto :goto_0

    .line 116
    .end local v9    # "x":I
    :cond_2
    return-void
.end method

.method doConvert([BII[BIIII)V
    .locals 16

    .prologue
    .line 79
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/javafx/image/impl/General$ByteToByteGeneralConverter;
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
    move v10, v3

    move-object v11, v0

    iget v11, v11, Lcom/sun/javafx/image/impl/General$ByteToByteGeneralConverter;->nSrcElems:I

    move v12, v7

    mul-int/2addr v11, v12

    sub-int/2addr v10, v11

    move v3, v10

    .line 80
    move v10, v6

    move-object v11, v0

    iget v11, v11, Lcom/sun/javafx/image/impl/General$ByteToByteGeneralConverter;->nDstElems:I

    move v12, v7

    mul-int/2addr v11, v12

    sub-int/2addr v10, v11

    move v6, v10

    .line 81
    :goto_0
    add-int/lit8 v8, v8, -0x1

    move v10, v8

    if-ltz v10, :cond_2

    .line 82
    const/4 v10, 0x0

    move v9, v10

    .local v9, "x":I
    :goto_1
    move v10, v9

    move v11, v7

    if-ge v10, v11, :cond_1

    .line 83
    move-object v10, v0

    iget-boolean v10, v10, Lcom/sun/javafx/image/impl/General$ByteToByteGeneralConverter;->usePremult:Z

    if-eqz v10, :cond_0

    .line 84
    move-object v10, v0

    iget-object v10, v10, Lcom/sun/javafx/image/impl/General$ByteToByteGeneralConverter;->setter:Lcom/sun/javafx/image/BytePixelSetter;

    move-object v11, v4

    move v12, v5

    move-object v13, v0

    iget-object v13, v13, Lcom/sun/javafx/image/impl/General$ByteToByteGeneralConverter;->getter:Lcom/sun/javafx/image/BytePixelGetter;

    move-object v14, v1

    move v15, v2

    invoke-interface {v13, v14, v15}, Lcom/sun/javafx/image/BytePixelGetter;->getArgbPre([BI)I

    move-result v13

    invoke-interface {v10, v11, v12, v13}, Lcom/sun/javafx/image/BytePixelSetter;->setArgbPre([BII)V

    .line 88
    :goto_2
    move v10, v2

    move-object v11, v0

    iget v11, v11, Lcom/sun/javafx/image/impl/General$ByteToByteGeneralConverter;->nSrcElems:I

    add-int/2addr v10, v11

    move v2, v10

    .line 89
    move v10, v5

    move-object v11, v0

    iget v11, v11, Lcom/sun/javafx/image/impl/General$ByteToByteGeneralConverter;->nDstElems:I

    add-int/2addr v10, v11

    move v5, v10

    .line 82
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 86
    :cond_0
    move-object v10, v0

    iget-object v10, v10, Lcom/sun/javafx/image/impl/General$ByteToByteGeneralConverter;->setter:Lcom/sun/javafx/image/BytePixelSetter;

    move-object v11, v4

    move v12, v5

    move-object v13, v0

    iget-object v13, v13, Lcom/sun/javafx/image/impl/General$ByteToByteGeneralConverter;->getter:Lcom/sun/javafx/image/BytePixelGetter;

    move-object v14, v1

    move v15, v2

    invoke-interface {v13, v14, v15}, Lcom/sun/javafx/image/BytePixelGetter;->getArgb([BI)I

    move-result v13

    invoke-interface {v10, v11, v12, v13}, Lcom/sun/javafx/image/BytePixelSetter;->setArgb([BII)V

    goto :goto_2

    .line 91
    :cond_1
    move v10, v2

    move v11, v3

    add-int/2addr v10, v11

    move v2, v10

    .line 92
    move v10, v5

    move v11, v6

    add-int/2addr v10, v11

    move v5, v10

    goto :goto_0

    .line 94
    .end local v9    # "x":I
    :cond_2
    return-void
.end method
