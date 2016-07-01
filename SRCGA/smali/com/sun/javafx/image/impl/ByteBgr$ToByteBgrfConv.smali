.class Lcom/sun/javafx/image/impl/ByteBgr$ToByteBgrfConv;
.super Lcom/sun/javafx/image/impl/BaseByteToByteConverter;
.source "ByteBgr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/image/impl/ByteBgr;
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
    .line 144
    new-instance v0, Lcom/sun/javafx/image/impl/ByteBgr$ToByteBgrfConv;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    sget-object v2, Lcom/sun/javafx/image/impl/ByteBgra;->setter:Lcom/sun/javafx/image/BytePixelSetter;

    invoke-direct {v1, v2}, Lcom/sun/javafx/image/impl/ByteBgr$ToByteBgrfConv;-><init>(Lcom/sun/javafx/image/BytePixelSetter;)V

    sput-object v0, Lcom/sun/javafx/image/impl/ByteBgr$ToByteBgrfConv;->nonpremult:Lcom/sun/javafx/image/ByteToBytePixelConverter;

    .line 146
    new-instance v0, Lcom/sun/javafx/image/impl/ByteBgr$ToByteBgrfConv;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    sget-object v2, Lcom/sun/javafx/image/impl/ByteBgraPre;->setter:Lcom/sun/javafx/image/BytePixelSetter;

    invoke-direct {v1, v2}, Lcom/sun/javafx/image/impl/ByteBgr$ToByteBgrfConv;-><init>(Lcom/sun/javafx/image/BytePixelSetter;)V

    sput-object v0, Lcom/sun/javafx/image/impl/ByteBgr$ToByteBgrfConv;->premult:Lcom/sun/javafx/image/ByteToBytePixelConverter;

    return-void
.end method

.method private constructor <init>(Lcom/sun/javafx/image/BytePixelSetter;)V
    .locals 5

    .prologue
    .line 150
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/image/impl/ByteBgr$ToByteBgrfConv;
    move-object v1, p1

    .local v1, "setter":Lcom/sun/javafx/image/BytePixelSetter;
    move-object v2, v0

    sget-object v3, Lcom/sun/javafx/image/impl/ByteBgr;->getter:Lcom/sun/javafx/image/BytePixelGetter;

    move-object v4, v1

    invoke-direct {v2, v3, v4}, Lcom/sun/javafx/image/impl/BaseByteToByteConverter;-><init>(Lcom/sun/javafx/image/BytePixelGetter;Lcom/sun/javafx/image/BytePixelSetter;)V

    .line 151
    return-void
.end method


# virtual methods
.method doConvert(Ljava/nio/ByteBuffer;IILjava/nio/ByteBuffer;IIII)V
    .locals 14

    .prologue
    .line 177
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/image/impl/ByteBgr$ToByteBgrfConv;
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
    move v10, v3

    move v11, v7

    const/4 v12, 0x3

    mul-int/lit8 v11, v11, 0x3

    sub-int/2addr v10, v11

    move v3, v10

    .line 178
    move v10, v6

    move v11, v7

    const/4 v12, 0x4

    mul-int/lit8 v11, v11, 0x4

    sub-int/2addr v10, v11

    move v6, v10

    .line 179
    :goto_0
    add-int/lit8 v8, v8, -0x1

    move v10, v8

    if-ltz v10, :cond_1

    .line 180
    const/4 v10, 0x0

    move v9, v10

    .local v9, "x":I
    :goto_1
    move v10, v9

    move v11, v7

    if-ge v10, v11, :cond_0

    .line 181
    move-object v10, v4

    move v11, v5

    add-int/lit8 v5, v5, 0x1

    move-object v12, v1

    move v13, v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v12, v13}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v12

    invoke-virtual {v10, v11, v12}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    move-result-object v10

    .line 182
    move-object v10, v4

    move v11, v5

    add-int/lit8 v5, v5, 0x1

    move-object v12, v1

    move v13, v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v12, v13}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v12

    invoke-virtual {v10, v11, v12}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    move-result-object v10

    .line 183
    move-object v10, v4

    move v11, v5

    add-int/lit8 v5, v5, 0x1

    move-object v12, v1

    move v13, v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v12, v13}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v12

    invoke-virtual {v10, v11, v12}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    move-result-object v10

    .line 184
    move-object v10, v4

    move v11, v5

    add-int/lit8 v5, v5, 0x1

    const/4 v12, -0x1

    invoke-virtual {v10, v11, v12}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    move-result-object v10

    .line 180
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 186
    :cond_0
    move v10, v2

    move v11, v3

    add-int/2addr v10, v11

    move v2, v10

    .line 187
    move v10, v5

    move v11, v6

    add-int/2addr v10, v11

    move v5, v10

    goto :goto_0

    .line 189
    .end local v9    # "x":I
    :cond_1
    return-void
.end method

.method doConvert([BII[BIIII)V
    .locals 14

    .prologue
    .line 158
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/image/impl/ByteBgr$ToByteBgrfConv;
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
    move v10, v3

    move v11, v7

    const/4 v12, 0x3

    mul-int/lit8 v11, v11, 0x3

    sub-int/2addr v10, v11

    move v3, v10

    .line 159
    move v10, v6

    move v11, v7

    const/4 v12, 0x4

    mul-int/lit8 v11, v11, 0x4

    sub-int/2addr v10, v11

    move v6, v10

    .line 160
    :goto_0
    add-int/lit8 v8, v8, -0x1

    move v10, v8

    if-ltz v10, :cond_1

    .line 161
    const/4 v10, 0x0

    move v9, v10

    .local v9, "x":I
    :goto_1
    move v10, v9

    move v11, v7

    if-ge v10, v11, :cond_0

    .line 162
    move-object v10, v4

    move v11, v5

    add-int/lit8 v5, v5, 0x1

    move-object v12, v1

    move v13, v2

    add-int/lit8 v2, v2, 0x1

    aget-byte v12, v12, v13

    aput-byte v12, v10, v11

    .line 163
    move-object v10, v4

    move v11, v5

    add-int/lit8 v5, v5, 0x1

    move-object v12, v1

    move v13, v2

    add-int/lit8 v2, v2, 0x1

    aget-byte v12, v12, v13

    aput-byte v12, v10, v11

    .line 164
    move-object v10, v4

    move v11, v5

    add-int/lit8 v5, v5, 0x1

    move-object v12, v1

    move v13, v2

    add-int/lit8 v2, v2, 0x1

    aget-byte v12, v12, v13

    aput-byte v12, v10, v11

    .line 165
    move-object v10, v4

    move v11, v5

    add-int/lit8 v5, v5, 0x1

    const/4 v12, -0x1

    aput-byte v12, v10, v11

    .line 161
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 167
    :cond_0
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
    :cond_1
    return-void
.end method
