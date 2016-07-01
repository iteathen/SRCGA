.class Lcom/sun/javafx/image/impl/ByteGray$ToByteBgrfConv;
.super Lcom/sun/javafx/image/impl/BaseByteToByteConverter;
.source "ByteGray.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/image/impl/ByteGray;
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
    .line 132
    new-instance v0, Lcom/sun/javafx/image/impl/ByteGray$ToByteBgrfConv;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    sget-object v2, Lcom/sun/javafx/image/impl/ByteBgra;->setter:Lcom/sun/javafx/image/BytePixelSetter;

    invoke-direct {v1, v2}, Lcom/sun/javafx/image/impl/ByteGray$ToByteBgrfConv;-><init>(Lcom/sun/javafx/image/BytePixelSetter;)V

    sput-object v0, Lcom/sun/javafx/image/impl/ByteGray$ToByteBgrfConv;->nonpremult:Lcom/sun/javafx/image/ByteToBytePixelConverter;

    .line 134
    new-instance v0, Lcom/sun/javafx/image/impl/ByteGray$ToByteBgrfConv;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    sget-object v2, Lcom/sun/javafx/image/impl/ByteBgraPre;->setter:Lcom/sun/javafx/image/BytePixelSetter;

    invoke-direct {v1, v2}, Lcom/sun/javafx/image/impl/ByteGray$ToByteBgrfConv;-><init>(Lcom/sun/javafx/image/BytePixelSetter;)V

    sput-object v0, Lcom/sun/javafx/image/impl/ByteGray$ToByteBgrfConv;->premult:Lcom/sun/javafx/image/ByteToBytePixelConverter;

    return-void
.end method

.method constructor <init>(Lcom/sun/javafx/image/BytePixelSetter;)V
    .locals 5

    .prologue
    .line 138
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/image/impl/ByteGray$ToByteBgrfConv;
    move-object v1, p1

    .local v1, "setter":Lcom/sun/javafx/image/BytePixelSetter;
    move-object v2, v0

    sget-object v3, Lcom/sun/javafx/image/impl/ByteGray;->getter:Lcom/sun/javafx/image/BytePixelGetter;

    move-object v4, v1

    invoke-direct {v2, v3, v4}, Lcom/sun/javafx/image/impl/BaseByteToByteConverter;-><init>(Lcom/sun/javafx/image/BytePixelGetter;Lcom/sun/javafx/image/BytePixelSetter;)V

    .line 139
    return-void
.end method


# virtual methods
.method doConvert(Ljava/nio/ByteBuffer;IILjava/nio/ByteBuffer;IIII)V
    .locals 14

    .prologue
    .line 165
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/image/impl/ByteGray$ToByteBgrfConv;
    move-object v1, p1

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
    move v11, v6

    move v12, v7

    const/4 v13, 0x4

    mul-int/lit8 v12, v12, 0x4

    sub-int/2addr v11, v12

    move v6, v11

    .line 166
    :goto_0
    add-int/lit8 v8, v8, -0x1

    move v11, v8

    if-ltz v11, :cond_1

    .line 167
    const/4 v11, 0x0

    move v9, v11

    .local v9, "x":I
    :goto_1
    move v11, v9

    move v12, v7

    if-ge v11, v12, :cond_0

    .line 168
    move-object v11, v1

    move v12, v2

    move v13, v9

    add-int/2addr v12, v13

    invoke-virtual {v11, v12}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v11

    move v10, v11

    .line 169
    .local v10, "g":B
    move-object v11, v4

    move v12, v5

    move v13, v10

    invoke-virtual {v11, v12, v13}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    move-result-object v11

    .line 170
    move-object v11, v4

    move v12, v5

    const/4 v13, 0x1

    add-int/lit8 v12, v12, 0x1

    move v13, v10

    invoke-virtual {v11, v12, v13}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    move-result-object v11

    .line 171
    move-object v11, v4

    move v12, v5

    const/4 v13, 0x2

    add-int/lit8 v12, v12, 0x2

    move v13, v10

    invoke-virtual {v11, v12, v13}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    move-result-object v11

    .line 172
    move-object v11, v4

    move v12, v5

    const/4 v13, 0x3

    add-int/lit8 v12, v12, 0x3

    const/4 v13, -0x1

    invoke-virtual {v11, v12, v13}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    move-result-object v11

    .line 173
    add-int/lit8 v5, v5, 0x4

    .line 167
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 175
    .end local v10    # "g":B
    :cond_0
    move v11, v2

    move v12, v3

    add-int/2addr v11, v12

    move v2, v11

    .line 176
    move v11, v5

    move v12, v6

    add-int/2addr v11, v12

    move v5, v11

    goto :goto_0

    .line 178
    .end local v9    # "x":I
    :cond_1
    return-void
.end method

.method doConvert([BII[BIIII)V
    .locals 14

    .prologue
    .line 146
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/image/impl/ByteGray$ToByteBgrfConv;
    move-object v1, p1

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
    move v11, v6

    move v12, v7

    const/4 v13, 0x4

    mul-int/lit8 v12, v12, 0x4

    sub-int/2addr v11, v12

    move v6, v11

    .line 147
    :goto_0
    add-int/lit8 v8, v8, -0x1

    move v11, v8

    if-ltz v11, :cond_1

    .line 148
    const/4 v11, 0x0

    move v9, v11

    .local v9, "x":I
    :goto_1
    move v11, v9

    move v12, v7

    if-ge v11, v12, :cond_0

    .line 149
    move-object v11, v1

    move v12, v2

    move v13, v9

    add-int/2addr v12, v13

    aget-byte v11, v11, v12

    move v10, v11

    .line 150
    .local v10, "g":B
    move-object v11, v4

    move v12, v5

    add-int/lit8 v5, v5, 0x1

    move v13, v10

    aput-byte v13, v11, v12

    .line 151
    move-object v11, v4

    move v12, v5

    add-int/lit8 v5, v5, 0x1

    move v13, v10

    aput-byte v13, v11, v12

    .line 152
    move-object v11, v4

    move v12, v5

    add-int/lit8 v5, v5, 0x1

    move v13, v10

    aput-byte v13, v11, v12

    .line 153
    move-object v11, v4

    move v12, v5

    add-int/lit8 v5, v5, 0x1

    const/4 v13, -0x1

    aput-byte v13, v11, v12

    .line 148
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 155
    .end local v10    # "g":B
    :cond_0
    move v11, v2

    move v12, v3

    add-int/2addr v11, v12

    move v2, v11

    .line 156
    move v11, v5

    move v12, v6

    add-int/2addr v11, v12

    move v5, v11

    goto :goto_0

    .line 158
    .end local v9    # "x":I
    :cond_1
    return-void
.end method
