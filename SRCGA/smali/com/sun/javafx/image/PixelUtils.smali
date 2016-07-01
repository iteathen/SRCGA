.class public Lcom/sun/javafx/image/PixelUtils;
.super Ljava/lang/Object;
.source "PixelUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 44
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/image/PixelUtils;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static NonPretoPre(I)I
    .locals 8

    .prologue
    .line 68
    move v0, p0

    .local v0, "nonpre":I
    move v5, v0

    const/16 v6, 0x18

    ushr-int/lit8 v5, v5, 0x18

    move v1, v5

    .line 69
    .local v1, "a":I
    move v5, v1

    const/16 v6, 0xff

    if-ne v5, v6, :cond_0

    move v5, v0

    move v0, v5

    .line 77
    .end local v0    # "nonpre":I
    :goto_0
    return v0

    .line 70
    .restart local v0    # "nonpre":I
    :cond_0
    move v5, v1

    if-nez v5, :cond_1

    const/4 v5, 0x0

    move v0, v5

    goto :goto_0

    .line 71
    :cond_1
    move v5, v0

    const/16 v6, 0x10

    shr-int/lit8 v5, v5, 0x10

    const/16 v6, 0xff

    and-int/lit16 v5, v5, 0xff

    move v2, v5

    .line 72
    .local v2, "r":I
    move v5, v0

    const/16 v6, 0x8

    shr-int/lit8 v5, v5, 0x8

    const/16 v6, 0xff

    and-int/lit16 v5, v5, 0xff

    move v3, v5

    .line 73
    .local v3, "g":I
    move v5, v0

    const/16 v6, 0xff

    and-int/lit16 v5, v5, 0xff

    move v4, v5

    .line 74
    .local v4, "b":I
    move v5, v2

    move v6, v1

    mul-int/2addr v5, v6

    const/16 v6, 0x7f

    add-int/lit8 v5, v5, 0x7f

    const/16 v6, 0xff

    div-int/lit16 v5, v5, 0xff

    move v2, v5

    .line 75
    move v5, v3

    move v6, v1

    mul-int/2addr v5, v6

    const/16 v6, 0x7f

    add-int/lit8 v5, v5, 0x7f

    const/16 v6, 0xff

    div-int/lit16 v5, v5, 0xff

    move v3, v5

    .line 76
    move v5, v4

    move v6, v1

    mul-int/2addr v5, v6

    const/16 v6, 0x7f

    add-int/lit8 v5, v5, 0x7f

    const/16 v6, 0xff

    div-int/lit16 v5, v5, 0xff

    move v4, v5

    .line 77
    move v5, v1

    const/16 v6, 0x18

    shl-int/lit8 v5, v5, 0x18

    move v6, v2

    const/16 v7, 0x10

    shl-int/lit8 v6, v6, 0x10

    or-int/2addr v5, v6

    move v6, v3

    const/16 v7, 0x8

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v5, v6

    move v6, v4

    or-int/2addr v5, v6

    move v0, v5

    goto :goto_0
.end method

.method public static NonPretoPre(II)I
    .locals 4

    .prologue
    .line 57
    move v0, p0

    .local v0, "nonpre":I
    move v1, p1

    .local v1, "alpha":I
    move v2, v1

    const/16 v3, 0xff

    if-ne v2, v3, :cond_0

    move v2, v0

    move v0, v2

    .line 59
    .end local v0    # "nonpre":I
    :goto_0
    return v0

    .line 58
    .restart local v0    # "nonpre":I
    :cond_0
    move v2, v1

    if-nez v2, :cond_1

    const/4 v2, 0x0

    move v0, v2

    goto :goto_0

    .line 59
    :cond_1
    move v2, v0

    move v3, v1

    mul-int/2addr v2, v3

    const/16 v3, 0x7f

    add-int/lit8 v2, v2, 0x7f

    const/16 v3, 0xff

    div-int/lit16 v2, v2, 0xff

    move v0, v2

    goto :goto_0
.end method

.method public static PreToNonPre(II)I
    .locals 5

    .prologue
    .line 63
    move v0, p0

    .local v0, "pre":I
    move v1, p1

    .local v1, "alpha":I
    move v2, v1

    const/16 v3, 0xff

    if-eq v2, v3, :cond_0

    move v2, v1

    if-nez v2, :cond_1

    :cond_0
    move v2, v0

    move v0, v2

    .line 64
    .end local v0    # "pre":I
    :goto_0
    return v0

    .restart local v0    # "pre":I
    :cond_1
    move v2, v0

    move v3, v1

    if-lt v2, v3, :cond_2

    const/16 v2, 0xff

    :goto_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v2, v0

    const/16 v3, 0xff

    mul-int/lit16 v2, v2, 0xff

    move v3, v1

    const/4 v4, 0x1

    shr-int/lit8 v3, v3, 0x1

    add-int/2addr v2, v3

    move v3, v1

    div-int/2addr v2, v3

    goto :goto_1
.end method

.method public static PretoNonPre(I)I
    .locals 9

    .prologue
    .line 81
    move v0, p0

    .local v0, "pre":I
    move v6, v0

    const/16 v7, 0x18

    ushr-int/lit8 v6, v6, 0x18

    move v1, v6

    .line 82
    .local v1, "a":I
    move v6, v1

    const/16 v7, 0xff

    if-eq v6, v7, :cond_0

    move v6, v1

    if-nez v6, :cond_1

    :cond_0
    move v6, v0

    move v0, v6

    .line 90
    .end local v0    # "pre":I
    :goto_0
    return v0

    .line 83
    .restart local v0    # "pre":I
    :cond_1
    move v6, v0

    const/16 v7, 0x10

    shr-int/lit8 v6, v6, 0x10

    const/16 v7, 0xff

    and-int/lit16 v6, v6, 0xff

    move v2, v6

    .line 84
    .local v2, "r":I
    move v6, v0

    const/16 v7, 0x8

    shr-int/lit8 v6, v6, 0x8

    const/16 v7, 0xff

    and-int/lit16 v6, v6, 0xff

    move v3, v6

    .line 85
    .local v3, "g":I
    move v6, v0

    const/16 v7, 0xff

    and-int/lit16 v6, v6, 0xff

    move v4, v6

    .line 86
    .local v4, "b":I
    move v6, v1

    const/4 v7, 0x1

    shr-int/lit8 v6, v6, 0x1

    move v5, v6

    .line 87
    .local v5, "halfa":I
    move v6, v2

    move v7, v1

    if-lt v6, v7, :cond_2

    const/16 v6, 0xff

    :goto_1
    move v2, v6

    .line 88
    move v6, v3

    move v7, v1

    if-lt v6, v7, :cond_3

    const/16 v6, 0xff

    :goto_2
    move v3, v6

    .line 89
    move v6, v4

    move v7, v1

    if-lt v6, v7, :cond_4

    const/16 v6, 0xff

    :goto_3
    move v4, v6

    .line 90
    move v6, v1

    const/16 v7, 0x18

    shl-int/lit8 v6, v6, 0x18

    move v7, v2

    const/16 v8, 0x10

    shl-int/lit8 v7, v7, 0x10

    or-int/2addr v6, v7

    move v7, v3

    const/16 v8, 0x8

    shl-int/lit8 v7, v7, 0x8

    or-int/2addr v6, v7

    move v7, v4

    or-int/2addr v6, v7

    move v0, v6

    goto :goto_0

    .line 87
    :cond_2
    move v6, v2

    const/16 v7, 0xff

    mul-int/lit16 v6, v6, 0xff

    move v7, v5

    add-int/2addr v6, v7

    move v7, v1

    div-int/2addr v6, v7

    goto :goto_1

    .line 88
    :cond_3
    move v6, v3

    const/16 v7, 0xff

    mul-int/lit16 v6, v6, 0xff

    move v7, v5

    add-int/2addr v6, v7

    move v7, v1

    div-int/2addr v6, v7

    goto :goto_2

    .line 89
    :cond_4
    move v6, v4

    const/16 v7, 0xff

    mul-int/lit16 v6, v6, 0xff

    move v7, v5

    add-int/2addr v6, v7

    move v7, v1

    div-int/2addr v6, v7

    goto :goto_3
.end method

.method public static RgbToGray(I)I
    .locals 5

    .prologue
    .line 51
    move v0, p0

    .local v0, "xrgb":I
    move v1, v0

    const/16 v2, 0x10

    shr-int/lit8 v1, v1, 0x10

    const/16 v2, 0xff

    and-int/lit16 v1, v1, 0xff

    move v2, v0

    const/16 v3, 0x8

    shr-int/lit8 v2, v2, 0x8

    const/16 v3, 0xff

    and-int/lit16 v2, v2, 0xff

    move v3, v0

    const/16 v4, 0xff

    and-int/lit16 v3, v3, 0xff

    invoke-static {v1, v2, v3}, Lcom/sun/javafx/image/PixelUtils;->RgbToGray(III)I

    move-result v1

    move v0, v1

    .end local v0    # "xrgb":I
    return v0
.end method

.method public static RgbToGray(III)I
    .locals 10

    .prologue
    .line 47
    move v1, p0

    .local v1, "r":I
    move v2, p1

    .local v2, "g":I
    move v3, p2

    .local v3, "b":I
    move v4, v1

    int-to-double v4, v4

    const-wide v6, 0x3fd3333333333333L    # 0.3

    mul-double/2addr v4, v6

    move v6, v2

    int-to-double v6, v6

    const-wide v8, 0x3fe2e147ae147ae1L    # 0.59

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    move v6, v3

    int-to-double v6, v6

    const-wide v8, 0x3fbc28f5c28f5c29L    # 0.11

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    double-to-int v4, v4

    move v1, v4

    .end local v1    # "r":I
    return v1
.end method

.method public static getB2BConverter(Lcom/sun/javafx/image/PixelGetter;Lcom/sun/javafx/image/PixelSetter;)Lcom/sun/javafx/image/ByteToBytePixelConverter;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/javafx/image/PixelGetter",
            "<",
            "Ljava/nio/ByteBuffer;",
            ">;",
            "Lcom/sun/javafx/image/PixelSetter",
            "<",
            "Ljava/nio/ByteBuffer;",
            ">;)",
            "Lcom/sun/javafx/image/ByteToBytePixelConverter;"
        }
    .end annotation

    .prologue
    .line 210
    move-object v0, p0

    .local v0, "src":Lcom/sun/javafx/image/PixelGetter;, "Lcom/sun/javafx/image/PixelGetter<Ljava/nio/ByteBuffer;>;"
    move-object v1, p1

    .local v1, "dst":Lcom/sun/javafx/image/PixelSetter;, "Lcom/sun/javafx/image/PixelSetter<Ljava/nio/ByteBuffer;>;"
    move-object v2, v0

    sget-object v3, Lcom/sun/javafx/image/impl/ByteBgra;->getter:Lcom/sun/javafx/image/BytePixelGetter;

    if-ne v2, v3, :cond_1

    .line 211
    move-object v2, v1

    sget-object v3, Lcom/sun/javafx/image/impl/ByteBgra;->setter:Lcom/sun/javafx/image/BytePixelSetter;

    if-ne v2, v3, :cond_0

    .line 212
    invoke-static {}, Lcom/sun/javafx/image/impl/ByteBgra;->ToByteBgraConverter()Lcom/sun/javafx/image/ByteToBytePixelConverter;

    move-result-object v2

    move-object v0, v2

    .line 262
    .end local v0    # "src":Lcom/sun/javafx/image/PixelGetter;, "Lcom/sun/javafx/image/PixelGetter<Ljava/nio/ByteBuffer;>;"
    :goto_0
    return-object v0

    .line 213
    .restart local v0    # "src":Lcom/sun/javafx/image/PixelGetter;, "Lcom/sun/javafx/image/PixelGetter<Ljava/nio/ByteBuffer;>;"
    :cond_0
    move-object v2, v1

    sget-object v3, Lcom/sun/javafx/image/impl/ByteBgraPre;->setter:Lcom/sun/javafx/image/BytePixelSetter;

    if-ne v2, v3, :cond_f

    .line 214
    invoke-static {}, Lcom/sun/javafx/image/impl/ByteBgra;->ToByteBgraPreConverter()Lcom/sun/javafx/image/ByteToBytePixelConverter;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 216
    :cond_1
    move-object v2, v0

    sget-object v3, Lcom/sun/javafx/image/impl/ByteBgraPre;->getter:Lcom/sun/javafx/image/BytePixelGetter;

    if-ne v2, v3, :cond_3

    .line 217
    move-object v2, v1

    sget-object v3, Lcom/sun/javafx/image/impl/ByteBgra;->setter:Lcom/sun/javafx/image/BytePixelSetter;

    if-ne v2, v3, :cond_2

    .line 218
    invoke-static {}, Lcom/sun/javafx/image/impl/ByteBgraPre;->ToByteBgraConverter()Lcom/sun/javafx/image/ByteToBytePixelConverter;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 219
    :cond_2
    move-object v2, v1

    sget-object v3, Lcom/sun/javafx/image/impl/ByteBgraPre;->setter:Lcom/sun/javafx/image/BytePixelSetter;

    if-ne v2, v3, :cond_f

    .line 220
    invoke-static {}, Lcom/sun/javafx/image/impl/ByteBgraPre;->ToByteBgraPreConverter()Lcom/sun/javafx/image/ByteToBytePixelConverter;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 222
    :cond_3
    move-object v2, v0

    sget-object v3, Lcom/sun/javafx/image/impl/ByteRgb;->getter:Lcom/sun/javafx/image/BytePixelGetter;

    if-ne v2, v3, :cond_6

    .line 223
    move-object v2, v1

    sget-object v3, Lcom/sun/javafx/image/impl/ByteBgra;->setter:Lcom/sun/javafx/image/BytePixelSetter;

    if-ne v2, v3, :cond_4

    .line 224
    invoke-static {}, Lcom/sun/javafx/image/impl/ByteRgb;->ToByteBgraConverter()Lcom/sun/javafx/image/ByteToBytePixelConverter;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 225
    :cond_4
    move-object v2, v1

    sget-object v3, Lcom/sun/javafx/image/impl/ByteBgraPre;->setter:Lcom/sun/javafx/image/BytePixelSetter;

    if-ne v2, v3, :cond_5

    .line 226
    invoke-static {}, Lcom/sun/javafx/image/impl/ByteRgb;->ToByteBgraPreConverter()Lcom/sun/javafx/image/ByteToBytePixelConverter;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 227
    :cond_5
    move-object v2, v1

    sget-object v3, Lcom/sun/javafx/image/impl/ByteBgr;->setter:Lcom/sun/javafx/image/BytePixelSetter;

    if-ne v2, v3, :cond_f

    .line 228
    invoke-static {}, Lcom/sun/javafx/image/impl/ByteRgb;->ToByteBgrConverter()Lcom/sun/javafx/image/ByteToBytePixelConverter;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 230
    :cond_6
    move-object v2, v0

    sget-object v3, Lcom/sun/javafx/image/impl/ByteBgr;->getter:Lcom/sun/javafx/image/BytePixelGetter;

    if-ne v2, v3, :cond_9

    .line 231
    move-object v2, v1

    sget-object v3, Lcom/sun/javafx/image/impl/ByteBgr;->setter:Lcom/sun/javafx/image/BytePixelSetter;

    if-ne v2, v3, :cond_7

    .line 232
    invoke-static {}, Lcom/sun/javafx/image/impl/ByteBgr;->ToByteBgrConverter()Lcom/sun/javafx/image/ByteToBytePixelConverter;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 233
    :cond_7
    move-object v2, v1

    sget-object v3, Lcom/sun/javafx/image/impl/ByteBgra;->setter:Lcom/sun/javafx/image/BytePixelSetter;

    if-ne v2, v3, :cond_8

    .line 234
    invoke-static {}, Lcom/sun/javafx/image/impl/ByteBgr;->ToByteBgraConverter()Lcom/sun/javafx/image/ByteToBytePixelConverter;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 235
    :cond_8
    move-object v2, v1

    sget-object v3, Lcom/sun/javafx/image/impl/ByteBgraPre;->setter:Lcom/sun/javafx/image/BytePixelSetter;

    if-ne v2, v3, :cond_f

    .line 236
    invoke-static {}, Lcom/sun/javafx/image/impl/ByteBgr;->ToByteBgraPreConverter()Lcom/sun/javafx/image/ByteToBytePixelConverter;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 238
    :cond_9
    move-object v2, v0

    sget-object v3, Lcom/sun/javafx/image/impl/ByteGray;->getter:Lcom/sun/javafx/image/BytePixelGetter;

    if-ne v2, v3, :cond_d

    .line 239
    move-object v2, v1

    sget-object v3, Lcom/sun/javafx/image/impl/ByteGray;->setter:Lcom/sun/javafx/image/BytePixelSetter;

    if-ne v2, v3, :cond_a

    .line 240
    invoke-static {}, Lcom/sun/javafx/image/impl/ByteGray;->ToByteGrayConverter()Lcom/sun/javafx/image/ByteToBytePixelConverter;

    move-result-object v2

    move-object v0, v2

    goto/16 :goto_0

    .line 241
    :cond_a
    move-object v2, v1

    sget-object v3, Lcom/sun/javafx/image/impl/ByteBgr;->setter:Lcom/sun/javafx/image/BytePixelSetter;

    if-ne v2, v3, :cond_b

    .line 242
    invoke-static {}, Lcom/sun/javafx/image/impl/ByteGray;->ToByteBgrConverter()Lcom/sun/javafx/image/ByteToBytePixelConverter;

    move-result-object v2

    move-object v0, v2

    goto/16 :goto_0

    .line 243
    :cond_b
    move-object v2, v1

    sget-object v3, Lcom/sun/javafx/image/impl/ByteBgra;->setter:Lcom/sun/javafx/image/BytePixelSetter;

    if-ne v2, v3, :cond_c

    .line 244
    invoke-static {}, Lcom/sun/javafx/image/impl/ByteGray;->ToByteBgraConverter()Lcom/sun/javafx/image/ByteToBytePixelConverter;

    move-result-object v2

    move-object v0, v2

    goto/16 :goto_0

    .line 245
    :cond_c
    move-object v2, v1

    sget-object v3, Lcom/sun/javafx/image/impl/ByteBgraPre;->setter:Lcom/sun/javafx/image/BytePixelSetter;

    if-ne v2, v3, :cond_f

    .line 246
    invoke-static {}, Lcom/sun/javafx/image/impl/ByteGray;->ToByteBgraPreConverter()Lcom/sun/javafx/image/ByteToBytePixelConverter;

    move-result-object v2

    move-object v0, v2

    goto/16 :goto_0

    .line 248
    :cond_d
    move-object v2, v0

    instance-of v2, v2, Lcom/sun/javafx/image/impl/ByteIndexed$Getter;

    if-eqz v2, :cond_f

    .line 249
    move-object v2, v1

    sget-object v3, Lcom/sun/javafx/image/impl/ByteBgra;->setter:Lcom/sun/javafx/image/BytePixelSetter;

    if-eq v2, v3, :cond_e

    move-object v2, v1

    sget-object v3, Lcom/sun/javafx/image/impl/ByteBgraPre;->setter:Lcom/sun/javafx/image/BytePixelSetter;

    if-ne v2, v3, :cond_f

    .line 250
    :cond_e
    move-object v2, v0

    check-cast v2, Lcom/sun/javafx/image/BytePixelGetter;

    move-object v3, v1

    check-cast v3, Lcom/sun/javafx/image/BytePixelSetter;

    invoke-static {v2, v3}, Lcom/sun/javafx/image/impl/ByteIndexed;->createToByteBgraAny(Lcom/sun/javafx/image/BytePixelGetter;Lcom/sun/javafx/image/BytePixelSetter;)Lcom/sun/javafx/image/ByteToBytePixelConverter;

    move-result-object v2

    move-object v0, v2

    goto/16 :goto_0

    .line 254
    :cond_f
    move-object v2, v1

    sget-object v3, Lcom/sun/javafx/image/impl/ByteGray;->setter:Lcom/sun/javafx/image/BytePixelSetter;

    if-ne v2, v3, :cond_10

    .line 255
    const/4 v2, 0x0

    move-object v0, v2

    goto/16 :goto_0

    .line 257
    :cond_10
    move-object v2, v0

    invoke-interface {v2}, Lcom/sun/javafx/image/PixelGetter;->getAlphaType()Lcom/sun/javafx/image/AlphaType;

    move-result-object v2

    sget-object v3, Lcom/sun/javafx/image/AlphaType;->OPAQUE:Lcom/sun/javafx/image/AlphaType;

    if-eq v2, v3, :cond_11

    move-object v2, v1

    .line 258
    invoke-interface {v2}, Lcom/sun/javafx/image/PixelSetter;->getAlphaType()Lcom/sun/javafx/image/AlphaType;

    move-result-object v2

    sget-object v3, Lcom/sun/javafx/image/AlphaType;->OPAQUE:Lcom/sun/javafx/image/AlphaType;

    if-ne v2, v3, :cond_11

    .line 260
    const/4 v2, 0x0

    move-object v0, v2

    goto/16 :goto_0

    .line 262
    :cond_11
    move-object v2, v0

    check-cast v2, Lcom/sun/javafx/image/BytePixelGetter;

    move-object v3, v1

    check-cast v3, Lcom/sun/javafx/image/BytePixelSetter;

    invoke-static {v2, v3}, Lcom/sun/javafx/image/impl/General;->create(Lcom/sun/javafx/image/BytePixelGetter;Lcom/sun/javafx/image/BytePixelSetter;)Lcom/sun/javafx/image/ByteToBytePixelConverter;

    move-result-object v2

    move-object v0, v2

    goto/16 :goto_0
.end method

.method public static getB2IConverter(Lcom/sun/javafx/image/PixelGetter;Lcom/sun/javafx/image/PixelSetter;)Lcom/sun/javafx/image/ByteToIntPixelConverter;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/javafx/image/PixelGetter",
            "<",
            "Ljava/nio/ByteBuffer;",
            ">;",
            "Lcom/sun/javafx/image/PixelSetter",
            "<",
            "Ljava/nio/IntBuffer;",
            ">;)",
            "Lcom/sun/javafx/image/ByteToIntPixelConverter;"
        }
    .end annotation

    .prologue
    .line 268
    move-object v0, p0

    .local v0, "src":Lcom/sun/javafx/image/PixelGetter;, "Lcom/sun/javafx/image/PixelGetter<Ljava/nio/ByteBuffer;>;"
    move-object v1, p1

    .local v1, "dst":Lcom/sun/javafx/image/PixelSetter;, "Lcom/sun/javafx/image/PixelSetter<Ljava/nio/IntBuffer;>;"
    move-object v2, v0

    sget-object v3, Lcom/sun/javafx/image/impl/ByteBgra;->getter:Lcom/sun/javafx/image/BytePixelGetter;

    if-ne v2, v3, :cond_1

    .line 269
    move-object v2, v1

    sget-object v3, Lcom/sun/javafx/image/impl/IntArgb;->setter:Lcom/sun/javafx/image/IntPixelSetter;

    if-ne v2, v3, :cond_0

    .line 270
    invoke-static {}, Lcom/sun/javafx/image/impl/ByteBgra;->ToIntArgbConverter()Lcom/sun/javafx/image/ByteToIntPixelConverter;

    move-result-object v2

    move-object v0, v2

    .line 309
    .end local v0    # "src":Lcom/sun/javafx/image/PixelGetter;, "Lcom/sun/javafx/image/PixelGetter<Ljava/nio/ByteBuffer;>;"
    :goto_0
    return-object v0

    .line 271
    .restart local v0    # "src":Lcom/sun/javafx/image/PixelGetter;, "Lcom/sun/javafx/image/PixelGetter<Ljava/nio/ByteBuffer;>;"
    :cond_0
    move-object v2, v1

    sget-object v3, Lcom/sun/javafx/image/impl/IntArgbPre;->setter:Lcom/sun/javafx/image/IntPixelSetter;

    if-ne v2, v3, :cond_b

    .line 272
    invoke-static {}, Lcom/sun/javafx/image/impl/ByteBgra;->ToIntArgbPreConverter()Lcom/sun/javafx/image/ByteToIntPixelConverter;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 274
    :cond_1
    move-object v2, v0

    sget-object v3, Lcom/sun/javafx/image/impl/ByteBgraPre;->getter:Lcom/sun/javafx/image/BytePixelGetter;

    if-ne v2, v3, :cond_3

    .line 275
    move-object v2, v1

    sget-object v3, Lcom/sun/javafx/image/impl/IntArgb;->setter:Lcom/sun/javafx/image/IntPixelSetter;

    if-ne v2, v3, :cond_2

    .line 276
    invoke-static {}, Lcom/sun/javafx/image/impl/ByteBgraPre;->ToIntArgbConverter()Lcom/sun/javafx/image/ByteToIntPixelConverter;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 277
    :cond_2
    move-object v2, v1

    sget-object v3, Lcom/sun/javafx/image/impl/IntArgbPre;->setter:Lcom/sun/javafx/image/IntPixelSetter;

    if-ne v2, v3, :cond_b

    .line 278
    invoke-static {}, Lcom/sun/javafx/image/impl/ByteBgraPre;->ToIntArgbPreConverter()Lcom/sun/javafx/image/ByteToIntPixelConverter;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 280
    :cond_3
    move-object v2, v0

    sget-object v3, Lcom/sun/javafx/image/impl/ByteRgb;->getter:Lcom/sun/javafx/image/BytePixelGetter;

    if-ne v2, v3, :cond_5

    .line 281
    move-object v2, v1

    sget-object v3, Lcom/sun/javafx/image/impl/IntArgb;->setter:Lcom/sun/javafx/image/IntPixelSetter;

    if-ne v2, v3, :cond_4

    .line 282
    invoke-static {}, Lcom/sun/javafx/image/impl/ByteRgb;->ToIntArgbConverter()Lcom/sun/javafx/image/ByteToIntPixelConverter;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 283
    :cond_4
    move-object v2, v1

    sget-object v3, Lcom/sun/javafx/image/impl/IntArgbPre;->setter:Lcom/sun/javafx/image/IntPixelSetter;

    if-ne v2, v3, :cond_b

    .line 284
    invoke-static {}, Lcom/sun/javafx/image/impl/ByteRgb;->ToIntArgbPreConverter()Lcom/sun/javafx/image/ByteToIntPixelConverter;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 286
    :cond_5
    move-object v2, v0

    sget-object v3, Lcom/sun/javafx/image/impl/ByteBgr;->getter:Lcom/sun/javafx/image/BytePixelGetter;

    if-ne v2, v3, :cond_7

    .line 287
    move-object v2, v1

    sget-object v3, Lcom/sun/javafx/image/impl/IntArgb;->setter:Lcom/sun/javafx/image/IntPixelSetter;

    if-ne v2, v3, :cond_6

    .line 288
    invoke-static {}, Lcom/sun/javafx/image/impl/ByteBgr;->ToIntArgbConverter()Lcom/sun/javafx/image/ByteToIntPixelConverter;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 289
    :cond_6
    move-object v2, v1

    sget-object v3, Lcom/sun/javafx/image/impl/IntArgbPre;->setter:Lcom/sun/javafx/image/IntPixelSetter;

    if-ne v2, v3, :cond_b

    .line 290
    invoke-static {}, Lcom/sun/javafx/image/impl/ByteBgr;->ToIntArgbPreConverter()Lcom/sun/javafx/image/ByteToIntPixelConverter;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 292
    :cond_7
    move-object v2, v0

    sget-object v3, Lcom/sun/javafx/image/impl/ByteGray;->getter:Lcom/sun/javafx/image/BytePixelGetter;

    if-ne v2, v3, :cond_9

    .line 293
    move-object v2, v1

    sget-object v3, Lcom/sun/javafx/image/impl/IntArgbPre;->setter:Lcom/sun/javafx/image/IntPixelSetter;

    if-ne v2, v3, :cond_8

    .line 294
    invoke-static {}, Lcom/sun/javafx/image/impl/ByteGray;->ToIntArgbPreConverter()Lcom/sun/javafx/image/ByteToIntPixelConverter;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 295
    :cond_8
    move-object v2, v1

    sget-object v3, Lcom/sun/javafx/image/impl/IntArgb;->setter:Lcom/sun/javafx/image/IntPixelSetter;

    if-ne v2, v3, :cond_b

    .line 296
    invoke-static {}, Lcom/sun/javafx/image/impl/ByteGray;->ToIntArgbConverter()Lcom/sun/javafx/image/ByteToIntPixelConverter;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 298
    :cond_9
    move-object v2, v0

    instance-of v2, v2, Lcom/sun/javafx/image/impl/ByteIndexed$Getter;

    if-eqz v2, :cond_b

    .line 299
    move-object v2, v1

    sget-object v3, Lcom/sun/javafx/image/impl/IntArgb;->setter:Lcom/sun/javafx/image/IntPixelSetter;

    if-eq v2, v3, :cond_a

    move-object v2, v1

    sget-object v3, Lcom/sun/javafx/image/impl/IntArgbPre;->setter:Lcom/sun/javafx/image/IntPixelSetter;

    if-ne v2, v3, :cond_b

    .line 300
    :cond_a
    move-object v2, v0

    check-cast v2, Lcom/sun/javafx/image/BytePixelGetter;

    move-object v3, v1

    check-cast v3, Lcom/sun/javafx/image/IntPixelSetter;

    invoke-static {v2, v3}, Lcom/sun/javafx/image/impl/ByteIndexed;->createToIntArgbAny(Lcom/sun/javafx/image/BytePixelGetter;Lcom/sun/javafx/image/IntPixelSetter;)Lcom/sun/javafx/image/ByteToIntPixelConverter;

    move-result-object v2

    move-object v0, v2

    goto/16 :goto_0

    .line 304
    :cond_b
    move-object v2, v0

    invoke-interface {v2}, Lcom/sun/javafx/image/PixelGetter;->getAlphaType()Lcom/sun/javafx/image/AlphaType;

    move-result-object v2

    sget-object v3, Lcom/sun/javafx/image/AlphaType;->OPAQUE:Lcom/sun/javafx/image/AlphaType;

    if-eq v2, v3, :cond_c

    move-object v2, v1

    .line 305
    invoke-interface {v2}, Lcom/sun/javafx/image/PixelSetter;->getAlphaType()Lcom/sun/javafx/image/AlphaType;

    move-result-object v2

    sget-object v3, Lcom/sun/javafx/image/AlphaType;->OPAQUE:Lcom/sun/javafx/image/AlphaType;

    if-ne v2, v3, :cond_c

    .line 307
    const/4 v2, 0x0

    move-object v0, v2

    goto/16 :goto_0

    .line 309
    :cond_c
    move-object v2, v0

    check-cast v2, Lcom/sun/javafx/image/BytePixelGetter;

    move-object v3, v1

    check-cast v3, Lcom/sun/javafx/image/IntPixelSetter;

    invoke-static {v2, v3}, Lcom/sun/javafx/image/impl/General;->create(Lcom/sun/javafx/image/BytePixelGetter;Lcom/sun/javafx/image/IntPixelSetter;)Lcom/sun/javafx/image/ByteToIntPixelConverter;

    move-result-object v2

    move-object v0, v2

    goto/16 :goto_0
.end method

.method public static getByteGetter(Ljavafx/scene/image/PixelFormat;)Lcom/sun/javafx/image/BytePixelGetter;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/image/PixelFormat",
            "<",
            "Ljava/nio/ByteBuffer;",
            ">;)",
            "Lcom/sun/javafx/image/BytePixelGetter;"
        }
    .end annotation

    .prologue
    .line 94
    move-object v0, p0

    .local v0, "pf":Ljavafx/scene/image/PixelFormat;, "Ljavafx/scene/image/PixelFormat<Ljava/nio/ByteBuffer;>;"
    sget-object v1, Lcom/sun/javafx/image/PixelUtils$1;->$SwitchMap$javafx$scene$image$PixelFormat$Type:[I

    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/image/PixelFormat;->getType()Ljavafx/scene/image/PixelFormat$Type;

    move-result-object v2

    invoke-virtual {v2}, Ljavafx/scene/image/PixelFormat$Type;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 107
    const/4 v1, 0x0

    move-object v0, v1

    .end local v0    # "pf":Ljavafx/scene/image/PixelFormat;, "Ljavafx/scene/image/PixelFormat<Ljava/nio/ByteBuffer;>;"
    :goto_0
    return-object v0

    .line 96
    .restart local v0    # "pf":Ljavafx/scene/image/PixelFormat;, "Ljavafx/scene/image/PixelFormat<Ljava/nio/ByteBuffer;>;"
    :pswitch_0
    sget-object v1, Lcom/sun/javafx/image/impl/ByteBgra;->getter:Lcom/sun/javafx/image/BytePixelGetter;

    move-object v0, v1

    goto :goto_0

    .line 98
    :pswitch_1
    sget-object v1, Lcom/sun/javafx/image/impl/ByteBgraPre;->getter:Lcom/sun/javafx/image/BytePixelGetter;

    move-object v0, v1

    goto :goto_0

    .line 100
    :pswitch_2
    sget-object v1, Lcom/sun/javafx/image/impl/ByteRgb;->getter:Lcom/sun/javafx/image/BytePixelGetter;

    move-object v0, v1

    goto :goto_0

    .line 102
    :pswitch_3
    move-object v1, v0

    invoke-static {v1}, Lcom/sun/javafx/image/impl/ByteIndexed;->createGetter(Ljavafx/scene/image/PixelFormat;)Lcom/sun/javafx/image/BytePixelGetter;

    move-result-object v1

    move-object v0, v1

    goto :goto_0

    .line 94
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static getByteSetter(Ljavafx/scene/image/WritablePixelFormat;)Lcom/sun/javafx/image/BytePixelSetter;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/image/WritablePixelFormat",
            "<",
            "Ljava/nio/ByteBuffer;",
            ">;)",
            "Lcom/sun/javafx/image/BytePixelSetter;"
        }
    .end annotation

    .prologue
    .line 140
    move-object v0, p0

    .local v0, "pf":Ljavafx/scene/image/WritablePixelFormat;, "Ljavafx/scene/image/WritablePixelFormat<Ljava/nio/ByteBuffer;>;"
    sget-object v1, Lcom/sun/javafx/image/PixelUtils$1;->$SwitchMap$javafx$scene$image$PixelFormat$Type:[I

    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/image/WritablePixelFormat;->getType()Ljavafx/scene/image/PixelFormat$Type;

    move-result-object v2

    invoke-virtual {v2}, Ljavafx/scene/image/PixelFormat$Type;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 152
    const/4 v1, 0x0

    move-object v0, v1

    .end local v0    # "pf":Ljavafx/scene/image/WritablePixelFormat;, "Ljavafx/scene/image/WritablePixelFormat<Ljava/nio/ByteBuffer;>;"
    :goto_0
    return-object v0

    .line 142
    .restart local v0    # "pf":Ljavafx/scene/image/WritablePixelFormat;, "Ljavafx/scene/image/WritablePixelFormat<Ljava/nio/ByteBuffer;>;"
    :pswitch_0
    sget-object v1, Lcom/sun/javafx/image/impl/ByteBgra;->setter:Lcom/sun/javafx/image/BytePixelSetter;

    move-object v0, v1

    goto :goto_0

    .line 144
    :pswitch_1
    sget-object v1, Lcom/sun/javafx/image/impl/ByteBgraPre;->setter:Lcom/sun/javafx/image/BytePixelSetter;

    move-object v0, v1

    goto :goto_0

    .line 140
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getConverter(Lcom/sun/javafx/image/PixelGetter;Lcom/sun/javafx/image/PixelSetter;)Lcom/sun/javafx/image/PixelConverter;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/nio/Buffer;",
            "U:",
            "Ljava/nio/Buffer;",
            ">(",
            "Lcom/sun/javafx/image/PixelGetter",
            "<TT;>;",
            "Lcom/sun/javafx/image/PixelSetter",
            "<TU;>;)",
            "Lcom/sun/javafx/image/PixelConverter",
            "<TT;TU;>;"
        }
    .end annotation

    .prologue
    .line 188
    move-object v0, p0

    .local v0, "src":Lcom/sun/javafx/image/PixelGetter;, "Lcom/sun/javafx/image/PixelGetter<TT;>;"
    move-object v1, p1

    .local v1, "dst":Lcom/sun/javafx/image/PixelSetter;, "Lcom/sun/javafx/image/PixelSetter<TU;>;"
    move-object v2, v0

    instance-of v2, v2, Lcom/sun/javafx/image/BytePixelGetter;

    if-eqz v2, :cond_1

    .line 189
    move-object v2, v1

    instance-of v2, v2, Lcom/sun/javafx/image/BytePixelSetter;

    if-eqz v2, :cond_0

    .line 190
    move-object v2, v0

    check-cast v2, Lcom/sun/javafx/image/BytePixelGetter;

    move-object v3, v1

    check-cast v3, Lcom/sun/javafx/image/BytePixelSetter;

    .line 191
    invoke-static {v2, v3}, Lcom/sun/javafx/image/PixelUtils;->getB2BConverter(Lcom/sun/javafx/image/PixelGetter;Lcom/sun/javafx/image/PixelSetter;)Lcom/sun/javafx/image/ByteToBytePixelConverter;

    move-result-object v2

    move-object v0, v2

    .line 202
    .end local v0    # "src":Lcom/sun/javafx/image/PixelGetter;, "Lcom/sun/javafx/image/PixelGetter<TT;>;"
    :goto_0
    return-object v0

    .line 193
    .restart local v0    # "src":Lcom/sun/javafx/image/PixelGetter;, "Lcom/sun/javafx/image/PixelGetter<TT;>;"
    :cond_0
    move-object v2, v0

    check-cast v2, Lcom/sun/javafx/image/BytePixelGetter;

    move-object v3, v1

    check-cast v3, Lcom/sun/javafx/image/IntPixelSetter;

    .line 194
    invoke-static {v2, v3}, Lcom/sun/javafx/image/PixelUtils;->getB2IConverter(Lcom/sun/javafx/image/PixelGetter;Lcom/sun/javafx/image/PixelSetter;)Lcom/sun/javafx/image/ByteToIntPixelConverter;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 197
    :cond_1
    move-object v2, v1

    instance-of v2, v2, Lcom/sun/javafx/image/BytePixelSetter;

    if-eqz v2, :cond_2

    .line 198
    move-object v2, v0

    check-cast v2, Lcom/sun/javafx/image/IntPixelGetter;

    move-object v3, v1

    check-cast v3, Lcom/sun/javafx/image/BytePixelSetter;

    .line 199
    invoke-static {v2, v3}, Lcom/sun/javafx/image/PixelUtils;->getI2BConverter(Lcom/sun/javafx/image/PixelGetter;Lcom/sun/javafx/image/PixelSetter;)Lcom/sun/javafx/image/IntToBytePixelConverter;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 201
    :cond_2
    move-object v2, v0

    check-cast v2, Lcom/sun/javafx/image/IntPixelGetter;

    move-object v3, v1

    check-cast v3, Lcom/sun/javafx/image/IntPixelSetter;

    .line 202
    invoke-static {v2, v3}, Lcom/sun/javafx/image/PixelUtils;->getI2IConverter(Lcom/sun/javafx/image/PixelGetter;Lcom/sun/javafx/image/PixelSetter;)Lcom/sun/javafx/image/IntToIntPixelConverter;

    move-result-object v2

    move-object v0, v2

    goto :goto_0
.end method

.method public static getGetter(Ljavafx/scene/image/PixelFormat;)Lcom/sun/javafx/image/PixelGetter;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/nio/Buffer;",
            ">(",
            "Ljavafx/scene/image/PixelFormat",
            "<TT;>;)",
            "Lcom/sun/javafx/image/PixelGetter",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 126
    move-object v0, p0

    .local v0, "pf":Ljavafx/scene/image/PixelFormat;, "Ljavafx/scene/image/PixelFormat<TT;>;"
    sget-object v1, Lcom/sun/javafx/image/PixelUtils$1;->$SwitchMap$javafx$scene$image$PixelFormat$Type:[I

    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/image/PixelFormat;->getType()Ljavafx/scene/image/PixelFormat$Type;

    move-result-object v2

    invoke-virtual {v2}, Ljavafx/scene/image/PixelFormat$Type;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 136
    const/4 v1, 0x0

    move-object v0, v1

    .end local v0    # "pf":Ljavafx/scene/image/PixelFormat;, "Ljavafx/scene/image/PixelFormat<TT;>;"
    :goto_0
    return-object v0

    .line 131
    .restart local v0    # "pf":Ljavafx/scene/image/PixelFormat;, "Ljavafx/scene/image/PixelFormat<TT;>;"
    :pswitch_0
    move-object v1, v0

    invoke-static {v1}, Lcom/sun/javafx/image/PixelUtils;->getByteGetter(Ljavafx/scene/image/PixelFormat;)Lcom/sun/javafx/image/BytePixelGetter;

    move-result-object v1

    move-object v0, v1

    goto :goto_0

    .line 134
    :pswitch_1
    move-object v1, v0

    invoke-static {v1}, Lcom/sun/javafx/image/PixelUtils;->getIntGetter(Ljavafx/scene/image/PixelFormat;)Lcom/sun/javafx/image/IntPixelGetter;

    move-result-object v1

    move-object v0, v1

    goto :goto_0

    .line 126
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public static getI2BConverter(Lcom/sun/javafx/image/PixelGetter;Lcom/sun/javafx/image/PixelSetter;)Lcom/sun/javafx/image/IntToBytePixelConverter;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/javafx/image/PixelGetter",
            "<",
            "Ljava/nio/IntBuffer;",
            ">;",
            "Lcom/sun/javafx/image/PixelSetter",
            "<",
            "Ljava/nio/ByteBuffer;",
            ">;)",
            "Lcom/sun/javafx/image/IntToBytePixelConverter;"
        }
    .end annotation

    .prologue
    .line 315
    move-object v0, p0

    .local v0, "src":Lcom/sun/javafx/image/PixelGetter;, "Lcom/sun/javafx/image/PixelGetter<Ljava/nio/IntBuffer;>;"
    move-object v1, p1

    .local v1, "dst":Lcom/sun/javafx/image/PixelSetter;, "Lcom/sun/javafx/image/PixelSetter<Ljava/nio/ByteBuffer;>;"
    move-object v2, v0

    sget-object v3, Lcom/sun/javafx/image/impl/IntArgb;->getter:Lcom/sun/javafx/image/IntPixelGetter;

    if-ne v2, v3, :cond_1

    .line 316
    move-object v2, v1

    sget-object v3, Lcom/sun/javafx/image/impl/ByteBgra;->setter:Lcom/sun/javafx/image/BytePixelSetter;

    if-ne v2, v3, :cond_0

    .line 317
    invoke-static {}, Lcom/sun/javafx/image/impl/IntArgb;->ToByteBgraConverter()Lcom/sun/javafx/image/IntToBytePixelConverter;

    move-result-object v2

    move-object v0, v2

    .line 336
    .end local v0    # "src":Lcom/sun/javafx/image/PixelGetter;, "Lcom/sun/javafx/image/PixelGetter<Ljava/nio/IntBuffer;>;"
    :goto_0
    return-object v0

    .line 318
    .restart local v0    # "src":Lcom/sun/javafx/image/PixelGetter;, "Lcom/sun/javafx/image/PixelGetter<Ljava/nio/IntBuffer;>;"
    :cond_0
    move-object v2, v1

    sget-object v3, Lcom/sun/javafx/image/impl/ByteBgraPre;->setter:Lcom/sun/javafx/image/BytePixelSetter;

    if-ne v2, v3, :cond_3

    .line 319
    invoke-static {}, Lcom/sun/javafx/image/impl/IntArgb;->ToByteBgraPreConverter()Lcom/sun/javafx/image/IntToBytePixelConverter;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 321
    :cond_1
    move-object v2, v0

    sget-object v3, Lcom/sun/javafx/image/impl/IntArgbPre;->getter:Lcom/sun/javafx/image/IntPixelGetter;

    if-ne v2, v3, :cond_3

    .line 322
    move-object v2, v1

    sget-object v3, Lcom/sun/javafx/image/impl/ByteBgra;->setter:Lcom/sun/javafx/image/BytePixelSetter;

    if-ne v2, v3, :cond_2

    .line 323
    invoke-static {}, Lcom/sun/javafx/image/impl/IntArgbPre;->ToByteBgraConverter()Lcom/sun/javafx/image/IntToBytePixelConverter;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 324
    :cond_2
    move-object v2, v1

    sget-object v3, Lcom/sun/javafx/image/impl/ByteBgraPre;->setter:Lcom/sun/javafx/image/BytePixelSetter;

    if-ne v2, v3, :cond_3

    .line 325
    invoke-static {}, Lcom/sun/javafx/image/impl/IntArgbPre;->ToByteBgraPreConverter()Lcom/sun/javafx/image/IntToBytePixelConverter;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 328
    :cond_3
    move-object v2, v1

    sget-object v3, Lcom/sun/javafx/image/impl/ByteGray;->setter:Lcom/sun/javafx/image/BytePixelSetter;

    if-ne v2, v3, :cond_4

    .line 329
    const/4 v2, 0x0

    move-object v0, v2

    goto :goto_0

    .line 331
    :cond_4
    move-object v2, v0

    invoke-interface {v2}, Lcom/sun/javafx/image/PixelGetter;->getAlphaType()Lcom/sun/javafx/image/AlphaType;

    move-result-object v2

    sget-object v3, Lcom/sun/javafx/image/AlphaType;->OPAQUE:Lcom/sun/javafx/image/AlphaType;

    if-eq v2, v3, :cond_5

    move-object v2, v1

    .line 332
    invoke-interface {v2}, Lcom/sun/javafx/image/PixelSetter;->getAlphaType()Lcom/sun/javafx/image/AlphaType;

    move-result-object v2

    sget-object v3, Lcom/sun/javafx/image/AlphaType;->OPAQUE:Lcom/sun/javafx/image/AlphaType;

    if-ne v2, v3, :cond_5

    .line 334
    const/4 v2, 0x0

    move-object v0, v2

    goto :goto_0

    .line 336
    :cond_5
    move-object v2, v0

    check-cast v2, Lcom/sun/javafx/image/IntPixelGetter;

    move-object v3, v1

    check-cast v3, Lcom/sun/javafx/image/BytePixelSetter;

    invoke-static {v2, v3}, Lcom/sun/javafx/image/impl/General;->create(Lcom/sun/javafx/image/IntPixelGetter;Lcom/sun/javafx/image/BytePixelSetter;)Lcom/sun/javafx/image/IntToBytePixelConverter;

    move-result-object v2

    move-object v0, v2

    goto :goto_0
.end method

.method public static getI2IConverter(Lcom/sun/javafx/image/PixelGetter;Lcom/sun/javafx/image/PixelSetter;)Lcom/sun/javafx/image/IntToIntPixelConverter;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/javafx/image/PixelGetter",
            "<",
            "Ljava/nio/IntBuffer;",
            ">;",
            "Lcom/sun/javafx/image/PixelSetter",
            "<",
            "Ljava/nio/IntBuffer;",
            ">;)",
            "Lcom/sun/javafx/image/IntToIntPixelConverter;"
        }
    .end annotation

    .prologue
    .line 342
    move-object v0, p0

    .local v0, "src":Lcom/sun/javafx/image/PixelGetter;, "Lcom/sun/javafx/image/PixelGetter<Ljava/nio/IntBuffer;>;"
    move-object v1, p1

    .local v1, "dst":Lcom/sun/javafx/image/PixelSetter;, "Lcom/sun/javafx/image/PixelSetter<Ljava/nio/IntBuffer;>;"
    move-object v2, v0

    sget-object v3, Lcom/sun/javafx/image/impl/IntArgb;->getter:Lcom/sun/javafx/image/IntPixelGetter;

    if-ne v2, v3, :cond_1

    .line 343
    move-object v2, v1

    sget-object v3, Lcom/sun/javafx/image/impl/IntArgb;->setter:Lcom/sun/javafx/image/IntPixelSetter;

    if-ne v2, v3, :cond_0

    .line 344
    invoke-static {}, Lcom/sun/javafx/image/impl/IntArgb;->ToIntArgbConverter()Lcom/sun/javafx/image/IntToIntPixelConverter;

    move-result-object v2

    move-object v0, v2

    .line 360
    .end local v0    # "src":Lcom/sun/javafx/image/PixelGetter;, "Lcom/sun/javafx/image/PixelGetter<Ljava/nio/IntBuffer;>;"
    :goto_0
    return-object v0

    .line 345
    .restart local v0    # "src":Lcom/sun/javafx/image/PixelGetter;, "Lcom/sun/javafx/image/PixelGetter<Ljava/nio/IntBuffer;>;"
    :cond_0
    move-object v2, v1

    sget-object v3, Lcom/sun/javafx/image/impl/IntArgbPre;->setter:Lcom/sun/javafx/image/IntPixelSetter;

    if-ne v2, v3, :cond_3

    .line 346
    invoke-static {}, Lcom/sun/javafx/image/impl/IntArgb;->ToIntArgbPreConverter()Lcom/sun/javafx/image/IntToIntPixelConverter;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 348
    :cond_1
    move-object v2, v0

    sget-object v3, Lcom/sun/javafx/image/impl/IntArgbPre;->getter:Lcom/sun/javafx/image/IntPixelGetter;

    if-ne v2, v3, :cond_3

    .line 349
    move-object v2, v1

    sget-object v3, Lcom/sun/javafx/image/impl/IntArgb;->setter:Lcom/sun/javafx/image/IntPixelSetter;

    if-ne v2, v3, :cond_2

    .line 350
    invoke-static {}, Lcom/sun/javafx/image/impl/IntArgbPre;->ToIntArgbConverter()Lcom/sun/javafx/image/IntToIntPixelConverter;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 351
    :cond_2
    move-object v2, v1

    sget-object v3, Lcom/sun/javafx/image/impl/IntArgbPre;->setter:Lcom/sun/javafx/image/IntPixelSetter;

    if-ne v2, v3, :cond_3

    .line 352
    invoke-static {}, Lcom/sun/javafx/image/impl/IntArgbPre;->ToIntArgbPreConverter()Lcom/sun/javafx/image/IntToIntPixelConverter;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 355
    :cond_3
    move-object v2, v0

    invoke-interface {v2}, Lcom/sun/javafx/image/PixelGetter;->getAlphaType()Lcom/sun/javafx/image/AlphaType;

    move-result-object v2

    sget-object v3, Lcom/sun/javafx/image/AlphaType;->OPAQUE:Lcom/sun/javafx/image/AlphaType;

    if-eq v2, v3, :cond_4

    move-object v2, v1

    .line 356
    invoke-interface {v2}, Lcom/sun/javafx/image/PixelSetter;->getAlphaType()Lcom/sun/javafx/image/AlphaType;

    move-result-object v2

    sget-object v3, Lcom/sun/javafx/image/AlphaType;->OPAQUE:Lcom/sun/javafx/image/AlphaType;

    if-ne v2, v3, :cond_4

    .line 358
    const/4 v2, 0x0

    move-object v0, v2

    goto :goto_0

    .line 360
    :cond_4
    move-object v2, v0

    check-cast v2, Lcom/sun/javafx/image/IntPixelGetter;

    move-object v3, v1

    check-cast v3, Lcom/sun/javafx/image/IntPixelSetter;

    invoke-static {v2, v3}, Lcom/sun/javafx/image/impl/General;->create(Lcom/sun/javafx/image/IntPixelGetter;Lcom/sun/javafx/image/IntPixelSetter;)Lcom/sun/javafx/image/IntToIntPixelConverter;

    move-result-object v2

    move-object v0, v2

    goto :goto_0
.end method

.method public static getIntGetter(Ljavafx/scene/image/PixelFormat;)Lcom/sun/javafx/image/IntPixelGetter;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/image/PixelFormat",
            "<",
            "Ljava/nio/IntBuffer;",
            ">;)",
            "Lcom/sun/javafx/image/IntPixelGetter;"
        }
    .end annotation

    .prologue
    .line 111
    move-object v0, p0

    .local v0, "pf":Ljavafx/scene/image/PixelFormat;, "Ljavafx/scene/image/PixelFormat<Ljava/nio/IntBuffer;>;"
    sget-object v1, Lcom/sun/javafx/image/PixelUtils$1;->$SwitchMap$javafx$scene$image$PixelFormat$Type:[I

    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/image/PixelFormat;->getType()Ljavafx/scene/image/PixelFormat$Type;

    move-result-object v2

    invoke-virtual {v2}, Ljavafx/scene/image/PixelFormat$Type;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 122
    const/4 v1, 0x0

    move-object v0, v1

    .end local v0    # "pf":Ljavafx/scene/image/PixelFormat;, "Ljavafx/scene/image/PixelFormat<Ljava/nio/IntBuffer;>;"
    :goto_0
    return-object v0

    .line 113
    .restart local v0    # "pf":Ljavafx/scene/image/PixelFormat;, "Ljavafx/scene/image/PixelFormat<Ljava/nio/IntBuffer;>;"
    :pswitch_0
    sget-object v1, Lcom/sun/javafx/image/impl/IntArgb;->getter:Lcom/sun/javafx/image/IntPixelGetter;

    move-object v0, v1

    goto :goto_0

    .line 115
    :pswitch_1
    sget-object v1, Lcom/sun/javafx/image/impl/IntArgbPre;->getter:Lcom/sun/javafx/image/IntPixelGetter;

    move-object v0, v1

    goto :goto_0

    .line 111
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getIntSetter(Ljavafx/scene/image/WritablePixelFormat;)Lcom/sun/javafx/image/IntPixelSetter;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/image/WritablePixelFormat",
            "<",
            "Ljava/nio/IntBuffer;",
            ">;)",
            "Lcom/sun/javafx/image/IntPixelSetter;"
        }
    .end annotation

    .prologue
    .line 156
    move-object v0, p0

    .local v0, "pf":Ljavafx/scene/image/WritablePixelFormat;, "Ljavafx/scene/image/WritablePixelFormat<Ljava/nio/IntBuffer;>;"
    sget-object v1, Lcom/sun/javafx/image/PixelUtils$1;->$SwitchMap$javafx$scene$image$PixelFormat$Type:[I

    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/image/WritablePixelFormat;->getType()Ljavafx/scene/image/PixelFormat$Type;

    move-result-object v2

    invoke-virtual {v2}, Ljavafx/scene/image/PixelFormat$Type;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 167
    const/4 v1, 0x0

    move-object v0, v1

    .end local v0    # "pf":Ljavafx/scene/image/WritablePixelFormat;, "Ljavafx/scene/image/WritablePixelFormat<Ljava/nio/IntBuffer;>;"
    :goto_0
    return-object v0

    .line 158
    .restart local v0    # "pf":Ljavafx/scene/image/WritablePixelFormat;, "Ljavafx/scene/image/WritablePixelFormat<Ljava/nio/IntBuffer;>;"
    :pswitch_0
    sget-object v1, Lcom/sun/javafx/image/impl/IntArgb;->setter:Lcom/sun/javafx/image/IntPixelSetter;

    move-object v0, v1

    goto :goto_0

    .line 160
    :pswitch_1
    sget-object v1, Lcom/sun/javafx/image/impl/IntArgbPre;->setter:Lcom/sun/javafx/image/IntPixelSetter;

    move-object v0, v1

    goto :goto_0

    .line 156
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getSetter(Ljavafx/scene/image/WritablePixelFormat;)Lcom/sun/javafx/image/PixelSetter;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/nio/Buffer;",
            ">(",
            "Ljavafx/scene/image/WritablePixelFormat",
            "<TT;>;)",
            "Lcom/sun/javafx/image/PixelSetter",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 171
    move-object v0, p0

    .local v0, "pf":Ljavafx/scene/image/WritablePixelFormat;, "Ljavafx/scene/image/WritablePixelFormat<TT;>;"
    sget-object v1, Lcom/sun/javafx/image/PixelUtils$1;->$SwitchMap$javafx$scene$image$PixelFormat$Type:[I

    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/image/WritablePixelFormat;->getType()Ljavafx/scene/image/PixelFormat$Type;

    move-result-object v2

    invoke-virtual {v2}, Ljavafx/scene/image/PixelFormat$Type;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 182
    :pswitch_0
    const/4 v1, 0x0

    move-object v0, v1

    .end local v0    # "pf":Ljavafx/scene/image/WritablePixelFormat;, "Ljavafx/scene/image/WritablePixelFormat<TT;>;"
    :goto_0
    return-object v0

    .line 174
    .restart local v0    # "pf":Ljavafx/scene/image/WritablePixelFormat;, "Ljavafx/scene/image/WritablePixelFormat<TT;>;"
    :pswitch_1
    move-object v1, v0

    invoke-static {v1}, Lcom/sun/javafx/image/PixelUtils;->getByteSetter(Ljavafx/scene/image/WritablePixelFormat;)Lcom/sun/javafx/image/BytePixelSetter;

    move-result-object v1

    move-object v0, v1

    goto :goto_0

    .line 177
    :pswitch_2
    move-object v1, v0

    invoke-static {v1}, Lcom/sun/javafx/image/PixelUtils;->getIntSetter(Ljavafx/scene/image/WritablePixelFormat;)Lcom/sun/javafx/image/IntPixelSetter;

    move-result-object v1

    move-object v0, v1

    goto :goto_0

    .line 171
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method
