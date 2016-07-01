.class Lcom/sun/javafx/image/impl/ByteRgb$ToIntFrgbConv;
.super Lcom/sun/javafx/image/impl/BaseByteToIntConverter;
.source "ByteRgb.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/image/impl/ByteRgb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ToIntFrgbConv"
.end annotation


# static fields
.field public static final nonpremult:Lcom/sun/javafx/image/ByteToIntPixelConverter;

.field public static final premult:Lcom/sun/javafx/image/ByteToIntPixelConverter;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 164
    new-instance v0, Lcom/sun/javafx/image/impl/ByteRgb$ToIntFrgbConv;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    sget-object v2, Lcom/sun/javafx/image/impl/IntArgb;->setter:Lcom/sun/javafx/image/IntPixelSetter;

    invoke-direct {v1, v2}, Lcom/sun/javafx/image/impl/ByteRgb$ToIntFrgbConv;-><init>(Lcom/sun/javafx/image/IntPixelSetter;)V

    sput-object v0, Lcom/sun/javafx/image/impl/ByteRgb$ToIntFrgbConv;->nonpremult:Lcom/sun/javafx/image/ByteToIntPixelConverter;

    .line 166
    new-instance v0, Lcom/sun/javafx/image/impl/ByteRgb$ToIntFrgbConv;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    sget-object v2, Lcom/sun/javafx/image/impl/IntArgbPre;->setter:Lcom/sun/javafx/image/IntPixelSetter;

    invoke-direct {v1, v2}, Lcom/sun/javafx/image/impl/ByteRgb$ToIntFrgbConv;-><init>(Lcom/sun/javafx/image/IntPixelSetter;)V

    sput-object v0, Lcom/sun/javafx/image/impl/ByteRgb$ToIntFrgbConv;->premult:Lcom/sun/javafx/image/ByteToIntPixelConverter;

    return-void
.end method

.method private constructor <init>(Lcom/sun/javafx/image/IntPixelSetter;)V
    .locals 5

    .prologue
    .line 170
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/image/impl/ByteRgb$ToIntFrgbConv;
    move-object v1, p1

    .local v1, "setter":Lcom/sun/javafx/image/IntPixelSetter;
    move-object v2, v0

    sget-object v3, Lcom/sun/javafx/image/impl/ByteRgb;->getter:Lcom/sun/javafx/image/BytePixelGetter;

    move-object v4, v1

    invoke-direct {v2, v3, v4}, Lcom/sun/javafx/image/impl/BaseByteToIntConverter;-><init>(Lcom/sun/javafx/image/BytePixelGetter;Lcom/sun/javafx/image/IntPixelSetter;)V

    .line 171
    return-void
.end method


# virtual methods
.method doConvert(Ljava/nio/ByteBuffer;IILjava/nio/IntBuffer;IIII)V
    .locals 18

    .prologue
    .line 196
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/javafx/image/impl/ByteRgb$ToIntFrgbConv;
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
    move v13, v3

    move v14, v7

    const/4 v15, 0x3

    mul-int/lit8 v14, v14, 0x3

    sub-int/2addr v13, v14

    move v3, v13

    .line 197
    :goto_0
    add-int/lit8 v8, v8, -0x1

    move v13, v8

    if-ltz v13, :cond_1

    .line 198
    const/4 v13, 0x0

    move v9, v13

    .local v9, "x":I
    :goto_1
    move v13, v9

    move v14, v7

    if-ge v13, v14, :cond_0

    .line 199
    move-object v13, v1

    move v14, v2

    invoke-virtual {v13, v14}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v13

    const/16 v14, 0xff

    and-int/lit16 v13, v13, 0xff

    move v10, v13

    .line 200
    .local v10, "r":I
    move-object v13, v1

    move v14, v2

    const/4 v15, 0x1

    add-int/lit8 v14, v14, 0x1

    invoke-virtual {v13, v14}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v13

    const/16 v14, 0xff

    and-int/lit16 v13, v13, 0xff

    move v11, v13

    .line 201
    .local v11, "g":I
    move-object v13, v1

    move v14, v2

    const/4 v15, 0x2

    add-int/lit8 v14, v14, 0x2

    invoke-virtual {v13, v14}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v13

    const/16 v14, 0xff

    and-int/lit16 v13, v13, 0xff

    move v12, v13

    .line 202
    .local v12, "b":I
    add-int/lit8 v2, v2, 0x3

    .line 203
    move-object v13, v4

    move v14, v5

    move v15, v9

    add-int/2addr v14, v15

    const/high16 v15, -0x1000000

    move/from16 v16, v10

    const/16 v17, 0x10

    shl-int/lit8 v16, v16, 0x10

    or-int v15, v15, v16

    move/from16 v16, v11

    const/16 v17, 0x8

    shl-int/lit8 v16, v16, 0x8

    or-int v15, v15, v16

    move/from16 v16, v12

    or-int v15, v15, v16

    invoke-virtual {v13, v14, v15}, Ljava/nio/IntBuffer;->put(II)Ljava/nio/IntBuffer;

    move-result-object v13

    .line 198
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 205
    .end local v10    # "r":I
    .end local v11    # "g":I
    .end local v12    # "b":I
    :cond_0
    move v13, v2

    move v14, v3

    add-int/2addr v13, v14

    move v2, v13

    .line 206
    move v13, v5

    move v14, v6

    add-int/2addr v13, v14

    move v5, v13

    goto :goto_0

    .line 208
    .end local v9    # "x":I
    :cond_1
    return-void
.end method

.method doConvert([BII[IIIII)V
    .locals 18

    .prologue
    .line 178
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/javafx/image/impl/ByteRgb$ToIntFrgbConv;
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
    move v13, v3

    move v14, v7

    const/4 v15, 0x3

    mul-int/lit8 v14, v14, 0x3

    sub-int/2addr v13, v14

    move v3, v13

    .line 179
    :goto_0
    add-int/lit8 v8, v8, -0x1

    move v13, v8

    if-ltz v13, :cond_1

    .line 180
    const/4 v13, 0x0

    move v9, v13

    .local v9, "x":I
    :goto_1
    move v13, v9

    move v14, v7

    if-ge v13, v14, :cond_0

    .line 181
    move-object v13, v1

    move v14, v2

    add-int/lit8 v2, v2, 0x1

    aget-byte v13, v13, v14

    const/16 v14, 0xff

    and-int/lit16 v13, v13, 0xff

    move v10, v13

    .line 182
    .local v10, "r":I
    move-object v13, v1

    move v14, v2

    add-int/lit8 v2, v2, 0x1

    aget-byte v13, v13, v14

    const/16 v14, 0xff

    and-int/lit16 v13, v13, 0xff

    move v11, v13

    .line 183
    .local v11, "g":I
    move-object v13, v1

    move v14, v2

    add-int/lit8 v2, v2, 0x1

    aget-byte v13, v13, v14

    const/16 v14, 0xff

    and-int/lit16 v13, v13, 0xff

    move v12, v13

    .line 184
    .local v12, "b":I
    move-object v13, v4

    move v14, v5

    move v15, v9

    add-int/2addr v14, v15

    const/high16 v15, -0x1000000

    move/from16 v16, v10

    const/16 v17, 0x10

    shl-int/lit8 v16, v16, 0x10

    or-int v15, v15, v16

    move/from16 v16, v11

    const/16 v17, 0x8

    shl-int/lit8 v16, v16, 0x8

    or-int v15, v15, v16

    move/from16 v16, v12

    or-int v15, v15, v16

    aput v15, v13, v14

    .line 180
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 186
    .end local v10    # "r":I
    .end local v11    # "g":I
    .end local v12    # "b":I
    :cond_0
    move v13, v2

    move v14, v3

    add-int/2addr v13, v14

    move v2, v13

    .line 187
    move v13, v5

    move v14, v6

    add-int/2addr v13, v14

    move v5, v13

    goto :goto_0

    .line 189
    .end local v9    # "x":I
    :cond_1
    return-void
.end method
