.class Lcom/sun/javafx/image/impl/ByteGray$ToIntFrgbConv;
.super Lcom/sun/javafx/image/impl/BaseByteToIntConverter;
.source "ByteGray.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/image/impl/ByteGray;
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
    .line 182
    new-instance v0, Lcom/sun/javafx/image/impl/ByteGray$ToIntFrgbConv;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    sget-object v2, Lcom/sun/javafx/image/impl/IntArgb;->setter:Lcom/sun/javafx/image/IntPixelSetter;

    invoke-direct {v1, v2}, Lcom/sun/javafx/image/impl/ByteGray$ToIntFrgbConv;-><init>(Lcom/sun/javafx/image/IntPixelSetter;)V

    sput-object v0, Lcom/sun/javafx/image/impl/ByteGray$ToIntFrgbConv;->nonpremult:Lcom/sun/javafx/image/ByteToIntPixelConverter;

    .line 184
    new-instance v0, Lcom/sun/javafx/image/impl/ByteGray$ToIntFrgbConv;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    sget-object v2, Lcom/sun/javafx/image/impl/IntArgbPre;->setter:Lcom/sun/javafx/image/IntPixelSetter;

    invoke-direct {v1, v2}, Lcom/sun/javafx/image/impl/ByteGray$ToIntFrgbConv;-><init>(Lcom/sun/javafx/image/IntPixelSetter;)V

    sput-object v0, Lcom/sun/javafx/image/impl/ByteGray$ToIntFrgbConv;->premult:Lcom/sun/javafx/image/ByteToIntPixelConverter;

    return-void
.end method

.method private constructor <init>(Lcom/sun/javafx/image/IntPixelSetter;)V
    .locals 5

    .prologue
    .line 188
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/image/impl/ByteGray$ToIntFrgbConv;
    move-object v1, p1

    .local v1, "setter":Lcom/sun/javafx/image/IntPixelSetter;
    move-object v2, v0

    sget-object v3, Lcom/sun/javafx/image/impl/ByteGray;->getter:Lcom/sun/javafx/image/BytePixelGetter;

    move-object v4, v1

    invoke-direct {v2, v3, v4}, Lcom/sun/javafx/image/impl/BaseByteToIntConverter;-><init>(Lcom/sun/javafx/image/BytePixelGetter;Lcom/sun/javafx/image/IntPixelSetter;)V

    .line 189
    return-void
.end method


# virtual methods
.method doConvert(Ljava/nio/ByteBuffer;IILjava/nio/IntBuffer;IIII)V
    .locals 16

    .prologue
    .line 211
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/javafx/image/impl/ByteGray$ToIntFrgbConv;
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
    :goto_0
    add-int/lit8 v8, v8, -0x1

    move v11, v8

    if-ltz v11, :cond_1

    .line 212
    const/4 v11, 0x0

    move v9, v11

    .local v9, "x":I
    :goto_1
    move v11, v9

    move v12, v7

    if-ge v11, v12, :cond_0

    .line 213
    move-object v11, v1

    move v12, v2

    move v13, v9

    add-int/2addr v12, v13

    invoke-virtual {v11, v12}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v11

    const/16 v12, 0xff

    and-int/lit16 v11, v11, 0xff

    move v10, v11

    .line 214
    .local v10, "g":I
    move-object v11, v4

    move v12, v5

    move v13, v9

    add-int/2addr v12, v13

    const/high16 v13, -0x1000000

    move v14, v10

    const/16 v15, 0x10

    shl-int/lit8 v14, v14, 0x10

    or-int/2addr v13, v14

    move v14, v10

    const/16 v15, 0x8

    shl-int/lit8 v14, v14, 0x8

    or-int/2addr v13, v14

    move v14, v10

    or-int/2addr v13, v14

    invoke-virtual {v11, v12, v13}, Ljava/nio/IntBuffer;->put(II)Ljava/nio/IntBuffer;

    move-result-object v11

    .line 212
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 216
    .end local v10    # "g":I
    :cond_0
    move v11, v2

    move v12, v3

    add-int/2addr v11, v12

    move v2, v11

    .line 217
    move v11, v5

    move v12, v6

    add-int/2addr v11, v12

    move v5, v11

    goto :goto_0

    .line 219
    .end local v9    # "x":I
    :cond_1
    return-void
.end method

.method doConvert([BII[IIIII)V
    .locals 16

    .prologue
    .line 196
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/javafx/image/impl/ByteGray$ToIntFrgbConv;
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
    :goto_0
    add-int/lit8 v8, v8, -0x1

    move v11, v8

    if-ltz v11, :cond_1

    .line 197
    const/4 v11, 0x0

    move v9, v11

    .local v9, "x":I
    :goto_1
    move v11, v9

    move v12, v7

    if-ge v11, v12, :cond_0

    .line 198
    move-object v11, v1

    move v12, v2

    move v13, v9

    add-int/2addr v12, v13

    aget-byte v11, v11, v12

    const/16 v12, 0xff

    and-int/lit16 v11, v11, 0xff

    move v10, v11

    .line 199
    .local v10, "g":I
    move-object v11, v4

    move v12, v5

    move v13, v9

    add-int/2addr v12, v13

    const/high16 v13, -0x1000000

    move v14, v10

    const/16 v15, 0x10

    shl-int/lit8 v14, v14, 0x10

    or-int/2addr v13, v14

    move v14, v10

    const/16 v15, 0x8

    shl-int/lit8 v14, v14, 0x8

    or-int/2addr v13, v14

    move v14, v10

    or-int/2addr v13, v14

    aput v13, v11, v12

    .line 197
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 201
    .end local v10    # "g":I
    :cond_0
    move v11, v2

    move v12, v3

    add-int/2addr v11, v12

    move v2, v11

    .line 202
    move v11, v5

    move v12, v6

    add-int/2addr v11, v12

    move v5, v11

    goto :goto_0

    .line 204
    .end local v9    # "x":I
    :cond_1
    return-void
.end method
