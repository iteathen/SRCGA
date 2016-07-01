.class Lcom/sun/javafx/image/impl/ByteGrayAlpha$ToByteBgraSameConv;
.super Lcom/sun/javafx/image/impl/BaseByteToByteConverter;
.source "ByteGrayAlpha.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/image/impl/ByteGrayAlpha;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ToByteBgraSameConv"
.end annotation


# static fields
.field static final nonpremul:Lcom/sun/javafx/image/ByteToBytePixelConverter;

.field static final premul:Lcom/sun/javafx/image/ByteToBytePixelConverter;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 199
    new-instance v0, Lcom/sun/javafx/image/impl/ByteGrayAlpha$ToByteBgraSameConv;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/sun/javafx/image/impl/ByteGrayAlpha$ToByteBgraSameConv;-><init>(Z)V

    sput-object v0, Lcom/sun/javafx/image/impl/ByteGrayAlpha$ToByteBgraSameConv;->nonpremul:Lcom/sun/javafx/image/ByteToBytePixelConverter;

    .line 201
    new-instance v0, Lcom/sun/javafx/image/impl/ByteGrayAlpha$ToByteBgraSameConv;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/sun/javafx/image/impl/ByteGrayAlpha$ToByteBgraSameConv;-><init>(Z)V

    sput-object v0, Lcom/sun/javafx/image/impl/ByteGrayAlpha$ToByteBgraSameConv;->premul:Lcom/sun/javafx/image/ByteToBytePixelConverter;

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 5

    .prologue
    .line 205
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/image/impl/ByteGrayAlpha$ToByteBgraSameConv;
    move v1, p1

    .local v1, "isPremult":Z
    move-object v2, v0

    move v3, v1

    if-eqz v3, :cond_0

    sget-object v3, Lcom/sun/javafx/image/impl/ByteGrayAlphaPre;->getter:Lcom/sun/javafx/image/BytePixelGetter;

    :goto_0
    move v4, v1

    if-eqz v4, :cond_1

    sget-object v4, Lcom/sun/javafx/image/impl/ByteBgraPre;->setter:Lcom/sun/javafx/image/BytePixelSetter;

    :goto_1
    invoke-direct {v2, v3, v4}, Lcom/sun/javafx/image/impl/BaseByteToByteConverter;-><init>(Lcom/sun/javafx/image/BytePixelGetter;Lcom/sun/javafx/image/BytePixelSetter;)V

    .line 207
    return-void

    .line 205
    :cond_0
    sget-object v3, Lcom/sun/javafx/image/impl/ByteGrayAlpha;->getter:Lcom/sun/javafx/image/BytePixelGetter;

    goto :goto_0

    :cond_1
    sget-object v4, Lcom/sun/javafx/image/impl/ByteBgra;->setter:Lcom/sun/javafx/image/BytePixelSetter;

    goto :goto_1
.end method


# virtual methods
.method doConvert(Ljava/nio/ByteBuffer;IILjava/nio/ByteBuffer;IIII)V
    .locals 15

    .prologue
    .line 235
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/image/impl/ByteGrayAlpha$ToByteBgraSameConv;
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
    move v12, v3

    move v13, v7

    const/4 v14, 0x2

    mul-int/lit8 v13, v13, 0x2

    sub-int/2addr v12, v13

    move v3, v12

    .line 236
    move v12, v6

    move v13, v7

    const/4 v14, 0x4

    mul-int/lit8 v13, v13, 0x4

    sub-int/2addr v12, v13

    move v6, v12

    .line 237
    :goto_0
    add-int/lit8 v8, v8, -0x1

    move v12, v8

    if-ltz v12, :cond_1

    .line 238
    const/4 v12, 0x0

    move v9, v12

    .local v9, "x":I
    :goto_1
    move v12, v9

    move v13, v7

    if-ge v12, v13, :cond_0

    .line 239
    move-object v12, v1

    move v13, v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v12, v13}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v12

    move v10, v12

    .line 240
    .local v10, "g":B
    move-object v12, v1

    move v13, v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v12, v13}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v12

    move v11, v12

    .line 241
    .local v11, "a":B
    move-object v12, v4

    move v13, v5

    add-int/lit8 v5, v5, 0x1

    move v14, v10

    invoke-virtual {v12, v13, v14}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    move-result-object v12

    .line 242
    move-object v12, v4

    move v13, v5

    add-int/lit8 v5, v5, 0x1

    move v14, v10

    invoke-virtual {v12, v13, v14}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    move-result-object v12

    .line 243
    move-object v12, v4

    move v13, v5

    add-int/lit8 v5, v5, 0x1

    move v14, v10

    invoke-virtual {v12, v13, v14}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    move-result-object v12

    .line 244
    move-object v12, v4

    move v13, v5

    add-int/lit8 v5, v5, 0x1

    move v14, v11

    invoke-virtual {v12, v13, v14}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    move-result-object v12

    .line 238
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 246
    .end local v10    # "g":B
    .end local v11    # "a":B
    :cond_0
    move v12, v2

    move v13, v3

    add-int/2addr v12, v13

    move v2, v12

    .line 247
    move v12, v5

    move v13, v6

    add-int/2addr v12, v13

    move v5, v12

    goto :goto_0

    .line 249
    .end local v9    # "x":I
    :cond_1
    return-void
.end method

.method doConvert([BII[BIIII)V
    .locals 15

    .prologue
    .line 214
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/image/impl/ByteGrayAlpha$ToByteBgraSameConv;
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
    move v12, v3

    move v13, v7

    const/4 v14, 0x2

    mul-int/lit8 v13, v13, 0x2

    sub-int/2addr v12, v13

    move v3, v12

    .line 215
    move v12, v6

    move v13, v7

    const/4 v14, 0x4

    mul-int/lit8 v13, v13, 0x4

    sub-int/2addr v12, v13

    move v6, v12

    .line 216
    :goto_0
    add-int/lit8 v8, v8, -0x1

    move v12, v8

    if-ltz v12, :cond_1

    .line 217
    const/4 v12, 0x0

    move v9, v12

    .local v9, "x":I
    :goto_1
    move v12, v9

    move v13, v7

    if-ge v12, v13, :cond_0

    .line 218
    move-object v12, v1

    move v13, v2

    add-int/lit8 v2, v2, 0x1

    aget-byte v12, v12, v13

    move v10, v12

    .line 219
    .local v10, "g":B
    move-object v12, v1

    move v13, v2

    add-int/lit8 v2, v2, 0x1

    aget-byte v12, v12, v13

    move v11, v12

    .line 220
    .local v11, "a":B
    move-object v12, v4

    move v13, v5

    add-int/lit8 v5, v5, 0x1

    move v14, v10

    aput-byte v14, v12, v13

    .line 221
    move-object v12, v4

    move v13, v5

    add-int/lit8 v5, v5, 0x1

    move v14, v10

    aput-byte v14, v12, v13

    .line 222
    move-object v12, v4

    move v13, v5

    add-int/lit8 v5, v5, 0x1

    move v14, v10

    aput-byte v14, v12, v13

    .line 223
    move-object v12, v4

    move v13, v5

    add-int/lit8 v5, v5, 0x1

    move v14, v11

    aput-byte v14, v12, v13

    .line 217
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 225
    .end local v10    # "g":B
    .end local v11    # "a":B
    :cond_0
    move v12, v2

    move v13, v3

    add-int/2addr v12, v13

    move v2, v12

    .line 226
    move v12, v5

    move v13, v6

    add-int/2addr v12, v13

    move v5, v12

    goto :goto_0

    .line 228
    .end local v9    # "x":I
    :cond_1
    return-void
.end method
