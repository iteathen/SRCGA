.class Lcom/sun/javafx/image/impl/ByteRgb$ToByteBgrfConv;
.super Lcom/sun/javafx/image/impl/BaseByteToByteConverter;
.source "ByteRgb.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/image/impl/ByteRgb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ToByteBgrfConv"
.end annotation


# static fields
.field public static final nonpremult:Lcom/sun/javafx/image/ByteToBytePixelConverter;

.field public static final premult:Lcom/sun/javafx/image/ByteToBytePixelConverter;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 112
    new-instance v0, Lcom/sun/javafx/image/impl/ByteRgb$ToByteBgrfConv;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    sget-object v2, Lcom/sun/javafx/image/impl/ByteBgra;->setter:Lcom/sun/javafx/image/BytePixelSetter;

    invoke-direct {v1, v2}, Lcom/sun/javafx/image/impl/ByteRgb$ToByteBgrfConv;-><init>(Lcom/sun/javafx/image/BytePixelSetter;)V

    sput-object v0, Lcom/sun/javafx/image/impl/ByteRgb$ToByteBgrfConv;->nonpremult:Lcom/sun/javafx/image/ByteToBytePixelConverter;

    .line 114
    new-instance v0, Lcom/sun/javafx/image/impl/ByteRgb$ToByteBgrfConv;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    sget-object v2, Lcom/sun/javafx/image/impl/ByteBgraPre;->setter:Lcom/sun/javafx/image/BytePixelSetter;

    invoke-direct {v1, v2}, Lcom/sun/javafx/image/impl/ByteRgb$ToByteBgrfConv;-><init>(Lcom/sun/javafx/image/BytePixelSetter;)V

    sput-object v0, Lcom/sun/javafx/image/impl/ByteRgb$ToByteBgrfConv;->premult:Lcom/sun/javafx/image/ByteToBytePixelConverter;

    return-void
.end method

.method private constructor <init>(Lcom/sun/javafx/image/BytePixelSetter;)V
    .locals 5

    .prologue
    .line 118
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/image/impl/ByteRgb$ToByteBgrfConv;
    move-object v1, p1

    .local v1, "setter":Lcom/sun/javafx/image/BytePixelSetter;
    move-object v2, v0

    sget-object v3, Lcom/sun/javafx/image/impl/ByteRgb;->getter:Lcom/sun/javafx/image/BytePixelGetter;

    move-object v4, v1

    invoke-direct {v2, v3, v4}, Lcom/sun/javafx/image/impl/BaseByteToByteConverter;-><init>(Lcom/sun/javafx/image/BytePixelGetter;Lcom/sun/javafx/image/BytePixelSetter;)V

    .line 119
    return-void
.end method


# virtual methods
.method doConvert(Ljava/nio/ByteBuffer;IILjava/nio/ByteBuffer;IIII)V
    .locals 15

    .prologue
    .line 146
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/image/impl/ByteRgb$ToByteBgrfConv;
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

    move v11, v7

    const/4 v12, 0x3

    mul-int/lit8 v11, v11, 0x3

    sub-int/2addr v10, v11

    move v3, v10

    .line 147
    move v10, v6

    move v11, v7

    const/4 v12, 0x4

    mul-int/lit8 v11, v11, 0x4

    sub-int/2addr v10, v11

    move v6, v10

    .line 148
    :goto_0
    add-int/lit8 v8, v8, -0x1

    move v10, v8

    if-ltz v10, :cond_1

    .line 149
    const/4 v10, 0x0

    move v9, v10

    .local v9, "x":I
    :goto_1
    move v10, v9

    move v11, v7

    if-ge v10, v11, :cond_0

    .line 150
    move-object v10, v4

    move v11, v5

    move-object v12, v1

    move v13, v2

    const/4 v14, 0x2

    add-int/lit8 v13, v13, 0x2

    invoke-virtual {v12, v13}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v12

    invoke-virtual {v10, v11, v12}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    move-result-object v10

    .line 151
    move-object v10, v4

    move v11, v5

    const/4 v12, 0x1

    add-int/lit8 v11, v11, 0x1

    move-object v12, v1

    move v13, v2

    const/4 v14, 0x1

    add-int/lit8 v13, v13, 0x1

    invoke-virtual {v12, v13}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v12

    invoke-virtual {v10, v11, v12}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    move-result-object v10

    .line 152
    move-object v10, v4

    move v11, v5

    const/4 v12, 0x2

    add-int/lit8 v11, v11, 0x2

    move-object v12, v1

    move v13, v2

    invoke-virtual {v12, v13}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v12

    invoke-virtual {v10, v11, v12}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    move-result-object v10

    .line 153
    move-object v10, v4

    move v11, v5

    const/4 v12, 0x3

    add-int/lit8 v11, v11, 0x3

    const/4 v12, -0x1

    invoke-virtual {v10, v11, v12}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    move-result-object v10

    .line 154
    add-int/lit8 v2, v2, 0x3

    .line 155
    add-int/lit8 v5, v5, 0x4

    .line 149
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 157
    :cond_0
    move v10, v2

    move v11, v3

    add-int/2addr v10, v11

    move v2, v10

    .line 158
    move v10, v5

    move v11, v6

    add-int/2addr v10, v11

    move v5, v10

    goto :goto_0

    .line 160
    .end local v9    # "x":I
    :cond_1
    return-void
.end method

.method doConvert([BII[BIIII)V
    .locals 15

    .prologue
    .line 126
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/image/impl/ByteRgb$ToByteBgrfConv;
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

    move v11, v7

    const/4 v12, 0x3

    mul-int/lit8 v11, v11, 0x3

    sub-int/2addr v10, v11

    move v3, v10

    .line 127
    move v10, v6

    move v11, v7

    const/4 v12, 0x4

    mul-int/lit8 v11, v11, 0x4

    sub-int/2addr v10, v11

    move v6, v10

    .line 128
    :goto_0
    add-int/lit8 v8, v8, -0x1

    move v10, v8

    if-ltz v10, :cond_1

    .line 129
    const/4 v10, 0x0

    move v9, v10

    .local v9, "x":I
    :goto_1
    move v10, v9

    move v11, v7

    if-ge v10, v11, :cond_0

    .line 130
    move-object v10, v4

    move v11, v5

    add-int/lit8 v5, v5, 0x1

    move-object v12, v1

    move v13, v2

    const/4 v14, 0x2

    add-int/lit8 v13, v13, 0x2

    aget-byte v12, v12, v13

    aput-byte v12, v10, v11

    .line 131
    move-object v10, v4

    move v11, v5

    add-int/lit8 v5, v5, 0x1

    move-object v12, v1

    move v13, v2

    const/4 v14, 0x1

    add-int/lit8 v13, v13, 0x1

    aget-byte v12, v12, v13

    aput-byte v12, v10, v11

    .line 132
    move-object v10, v4

    move v11, v5

    add-int/lit8 v5, v5, 0x1

    move-object v12, v1

    move v13, v2

    aget-byte v12, v12, v13

    aput-byte v12, v10, v11

    .line 133
    move-object v10, v4

    move v11, v5

    add-int/lit8 v5, v5, 0x1

    const/4 v12, -0x1

    aput-byte v12, v10, v11

    .line 134
    add-int/lit8 v2, v2, 0x3

    .line 129
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 136
    :cond_0
    move v10, v2

    move v11, v3

    add-int/2addr v10, v11

    move v2, v10

    .line 137
    move v10, v5

    move v11, v6

    add-int/2addr v10, v11

    move v5, v10

    goto :goto_0

    .line 139
    .end local v9    # "x":I
    :cond_1
    return-void
.end method
