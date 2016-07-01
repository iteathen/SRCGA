.class Lcom/sun/javafx/image/impl/General$ByteToIntGeneralConverter;
.super Lcom/sun/javafx/image/impl/BaseByteToIntConverter;
.source "General.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/image/impl/General;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ByteToIntGeneralConverter"
.end annotation


# instance fields
.field usePremult:Z


# direct methods
.method constructor <init>(Lcom/sun/javafx/image/BytePixelGetter;Lcom/sun/javafx/image/IntPixelSetter;)V
    .locals 6

    .prologue
    .line 123
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/image/impl/General$ByteToIntGeneralConverter;
    move-object v1, p1

    .local v1, "getter":Lcom/sun/javafx/image/BytePixelGetter;
    move-object v2, p2

    .local v2, "setter":Lcom/sun/javafx/image/IntPixelSetter;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Lcom/sun/javafx/image/impl/BaseByteToIntConverter;-><init>(Lcom/sun/javafx/image/BytePixelGetter;Lcom/sun/javafx/image/IntPixelSetter;)V

    .line 124
    move-object v3, v0

    move-object v4, v1

    invoke-interface {v4}, Lcom/sun/javafx/image/BytePixelGetter;->getAlphaType()Lcom/sun/javafx/image/AlphaType;

    move-result-object v4

    sget-object v5, Lcom/sun/javafx/image/AlphaType;->NONPREMULTIPLIED:Lcom/sun/javafx/image/AlphaType;

    if-eq v4, v5, :cond_0

    move-object v4, v2

    .line 125
    invoke-interface {v4}, Lcom/sun/javafx/image/IntPixelSetter;->getAlphaType()Lcom/sun/javafx/image/AlphaType;

    move-result-object v4

    sget-object v5, Lcom/sun/javafx/image/AlphaType;->NONPREMULTIPLIED:Lcom/sun/javafx/image/AlphaType;

    if-eq v4, v5, :cond_0

    const/4 v4, 0x1

    :goto_0
    iput-boolean v4, v3, Lcom/sun/javafx/image/impl/General$ByteToIntGeneralConverter;->usePremult:Z

    .line 126
    return-void

    .line 125
    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method


# virtual methods
.method doConvert(Ljava/nio/ByteBuffer;IILjava/nio/IntBuffer;IIII)V
    .locals 16

    .prologue
    .line 155
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/javafx/image/impl/General$ByteToIntGeneralConverter;
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

    .local v6, "dstscanbytes":I
    move/from16 v7, p7

    .local v7, "w":I
    move/from16 v8, p8

    .local v8, "h":I
    move v10, v3

    move-object v11, v0

    iget v11, v11, Lcom/sun/javafx/image/impl/General$ByteToIntGeneralConverter;->nSrcElems:I

    move v12, v7

    mul-int/2addr v11, v12

    sub-int/2addr v10, v11

    move v3, v10

    .line 156
    move v10, v6

    move v11, v7

    sub-int/2addr v10, v11

    move v6, v10

    .line 157
    :goto_0
    add-int/lit8 v8, v8, -0x1

    move v10, v8

    if-ltz v10, :cond_2

    .line 158
    const/4 v10, 0x0

    move v9, v10

    .local v9, "x":I
    :goto_1
    move v10, v9

    move v11, v7

    if-ge v10, v11, :cond_1

    .line 159
    move-object v10, v0

    iget-boolean v10, v10, Lcom/sun/javafx/image/impl/General$ByteToIntGeneralConverter;->usePremult:Z

    if-eqz v10, :cond_0

    .line 160
    move-object v10, v0

    iget-object v10, v10, Lcom/sun/javafx/image/impl/General$ByteToIntGeneralConverter;->setter:Lcom/sun/javafx/image/IntPixelSetter;

    move-object v11, v4

    move v12, v5

    move-object v13, v0

    iget-object v13, v13, Lcom/sun/javafx/image/impl/General$ByteToIntGeneralConverter;->getter:Lcom/sun/javafx/image/BytePixelGetter;

    move-object v14, v1

    move v15, v2

    invoke-interface {v13, v14, v15}, Lcom/sun/javafx/image/BytePixelGetter;->getArgbPre(Ljava/nio/Buffer;I)I

    move-result v13

    invoke-interface {v10, v11, v12, v13}, Lcom/sun/javafx/image/IntPixelSetter;->setArgbPre(Ljava/nio/Buffer;II)V

    .line 164
    :goto_2
    move v10, v2

    move-object v11, v0

    iget v11, v11, Lcom/sun/javafx/image/impl/General$ByteToIntGeneralConverter;->nSrcElems:I

    add-int/2addr v10, v11

    move v2, v10

    .line 165
    add-int/lit8 v5, v5, 0x1

    .line 158
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 162
    :cond_0
    move-object v10, v0

    iget-object v10, v10, Lcom/sun/javafx/image/impl/General$ByteToIntGeneralConverter;->setter:Lcom/sun/javafx/image/IntPixelSetter;

    move-object v11, v4

    move v12, v5

    move-object v13, v0

    iget-object v13, v13, Lcom/sun/javafx/image/impl/General$ByteToIntGeneralConverter;->getter:Lcom/sun/javafx/image/BytePixelGetter;

    move-object v14, v1

    move v15, v2

    invoke-interface {v13, v14, v15}, Lcom/sun/javafx/image/BytePixelGetter;->getArgb(Ljava/nio/Buffer;I)I

    move-result v13

    invoke-interface {v10, v11, v12, v13}, Lcom/sun/javafx/image/IntPixelSetter;->setArgb(Ljava/nio/Buffer;II)V

    goto :goto_2

    .line 167
    :cond_1
    move v10, v2

    move v11, v3

    add-int/2addr v10, v11

    move v2, v10

    .line 168
    move v10, v5

    move v11, v6

    add-int/2addr v10, v11

    move v5, v10

    goto :goto_0

    .line 170
    .end local v9    # "x":I
    :cond_2
    return-void
.end method

.method doConvert([BII[IIIII)V
    .locals 16

    .prologue
    .line 133
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/javafx/image/impl/General$ByteToIntGeneralConverter;
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

    .local v6, "dstscanbytes":I
    move/from16 v7, p7

    .local v7, "w":I
    move/from16 v8, p8

    .local v8, "h":I
    move v10, v3

    move-object v11, v0

    iget v11, v11, Lcom/sun/javafx/image/impl/General$ByteToIntGeneralConverter;->nSrcElems:I

    move v12, v7

    mul-int/2addr v11, v12

    sub-int/2addr v10, v11

    move v3, v10

    .line 134
    move v10, v6

    move v11, v7

    sub-int/2addr v10, v11

    move v6, v10

    .line 135
    :goto_0
    add-int/lit8 v8, v8, -0x1

    move v10, v8

    if-ltz v10, :cond_2

    .line 136
    const/4 v10, 0x0

    move v9, v10

    .local v9, "x":I
    :goto_1
    move v10, v9

    move v11, v7

    if-ge v10, v11, :cond_1

    .line 137
    move-object v10, v0

    iget-boolean v10, v10, Lcom/sun/javafx/image/impl/General$ByteToIntGeneralConverter;->usePremult:Z

    if-eqz v10, :cond_0

    .line 138
    move-object v10, v0

    iget-object v10, v10, Lcom/sun/javafx/image/impl/General$ByteToIntGeneralConverter;->setter:Lcom/sun/javafx/image/IntPixelSetter;

    move-object v11, v4

    move v12, v5

    move-object v13, v0

    iget-object v13, v13, Lcom/sun/javafx/image/impl/General$ByteToIntGeneralConverter;->getter:Lcom/sun/javafx/image/BytePixelGetter;

    move-object v14, v1

    move v15, v2

    invoke-interface {v13, v14, v15}, Lcom/sun/javafx/image/BytePixelGetter;->getArgbPre([BI)I

    move-result v13

    invoke-interface {v10, v11, v12, v13}, Lcom/sun/javafx/image/IntPixelSetter;->setArgbPre([III)V

    .line 142
    :goto_2
    move v10, v2

    move-object v11, v0

    iget v11, v11, Lcom/sun/javafx/image/impl/General$ByteToIntGeneralConverter;->nSrcElems:I

    add-int/2addr v10, v11

    move v2, v10

    .line 143
    add-int/lit8 v5, v5, 0x1

    .line 136
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 140
    :cond_0
    move-object v10, v0

    iget-object v10, v10, Lcom/sun/javafx/image/impl/General$ByteToIntGeneralConverter;->setter:Lcom/sun/javafx/image/IntPixelSetter;

    move-object v11, v4

    move v12, v5

    move-object v13, v0

    iget-object v13, v13, Lcom/sun/javafx/image/impl/General$ByteToIntGeneralConverter;->getter:Lcom/sun/javafx/image/BytePixelGetter;

    move-object v14, v1

    move v15, v2

    invoke-interface {v13, v14, v15}, Lcom/sun/javafx/image/BytePixelGetter;->getArgb([BI)I

    move-result v13

    invoke-interface {v10, v11, v12, v13}, Lcom/sun/javafx/image/IntPixelSetter;->setArgb([III)V

    goto :goto_2

    .line 145
    :cond_1
    move v10, v2

    move v11, v3

    add-int/2addr v10, v11

    move v2, v10

    .line 146
    move v10, v5

    move v11, v6

    add-int/2addr v10, v11

    move v5, v10

    goto :goto_0

    .line 148
    .end local v9    # "x":I
    :cond_2
    return-void
.end method
