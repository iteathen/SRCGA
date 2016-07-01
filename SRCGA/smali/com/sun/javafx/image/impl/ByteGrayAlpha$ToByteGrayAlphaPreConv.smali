.class Lcom/sun/javafx/image/impl/ByteGrayAlpha$ToByteGrayAlphaPreConv;
.super Lcom/sun/javafx/image/impl/BaseByteToByteConverter;
.source "ByteGrayAlpha.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/image/impl/ByteGrayAlpha;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ToByteGrayAlphaPreConv"
.end annotation


# static fields
.field static final instance:Lcom/sun/javafx/image/ByteToBytePixelConverter;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 138
    new-instance v0, Lcom/sun/javafx/image/impl/ByteGrayAlpha$ToByteGrayAlphaPreConv;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Lcom/sun/javafx/image/impl/ByteGrayAlpha$ToByteGrayAlphaPreConv;-><init>()V

    sput-object v0, Lcom/sun/javafx/image/impl/ByteGrayAlpha$ToByteGrayAlphaPreConv;->instance:Lcom/sun/javafx/image/ByteToBytePixelConverter;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .prologue
    .line 142
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/image/impl/ByteGrayAlpha$ToByteGrayAlphaPreConv;
    move-object v1, v0

    sget-object v2, Lcom/sun/javafx/image/impl/ByteGrayAlpha;->getter:Lcom/sun/javafx/image/BytePixelGetter;

    sget-object v3, Lcom/sun/javafx/image/impl/ByteGrayAlphaPre;->setter:Lcom/sun/javafx/image/BytePixelSetter;

    invoke-direct {v1, v2, v3}, Lcom/sun/javafx/image/impl/BaseByteToByteConverter;-><init>(Lcom/sun/javafx/image/BytePixelGetter;Lcom/sun/javafx/image/BytePixelSetter;)V

    .line 143
    return-void
.end method


# virtual methods
.method doConvert(Ljava/nio/ByteBuffer;IILjava/nio/ByteBuffer;IIII)V
    .locals 15

    .prologue
    .line 176
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/image/impl/ByteGrayAlpha$ToByteGrayAlphaPreConv;
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

    .line 177
    move v12, v6

    move v13, v7

    const/4 v14, 0x2

    mul-int/lit8 v13, v13, 0x2

    sub-int/2addr v12, v13

    move v6, v12

    .line 178
    :goto_0
    add-int/lit8 v8, v8, -0x1

    move v12, v8

    if-ltz v12, :cond_3

    .line 179
    const/4 v12, 0x0

    move v9, v12

    .local v9, "x":I
    :goto_1
    move v12, v9

    move v13, v7

    if-ge v12, v13, :cond_2

    .line 180
    move-object v12, v1

    move v13, v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v12, v13}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v12

    const/16 v13, 0xff

    and-int/lit16 v12, v12, 0xff

    move v10, v12

    .line 181
    .local v10, "g":I
    move-object v12, v1

    move v13, v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v12, v13}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v12

    move v11, v12

    .line 182
    .local v11, "a":I
    move v12, v11

    const/4 v13, -0x1

    if-eq v12, v13, :cond_0

    .line 183
    move v12, v11

    if-nez v12, :cond_1

    .line 184
    const/4 v12, 0x0

    move v10, v12

    .line 189
    :cond_0
    :goto_2
    move-object v12, v4

    move v13, v5

    add-int/lit8 v5, v5, 0x1

    move v14, v10

    int-to-byte v14, v14

    invoke-virtual {v12, v13, v14}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    move-result-object v12

    .line 190
    move-object v12, v4

    move v13, v5

    add-int/lit8 v5, v5, 0x1

    move v14, v11

    int-to-byte v14, v14

    invoke-virtual {v12, v13, v14}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    move-result-object v12

    .line 179
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 186
    :cond_1
    move v12, v10

    move v13, v11

    const/16 v14, 0xff

    and-int/lit16 v13, v13, 0xff

    mul-int/2addr v12, v13

    const/16 v13, 0x7f

    add-int/lit8 v12, v12, 0x7f

    const/16 v13, 0xff

    div-int/lit16 v12, v12, 0xff

    move v10, v12

    goto :goto_2

    .line 192
    .end local v10    # "g":I
    .end local v11    # "a":I
    :cond_2
    move v12, v2

    move v13, v3

    add-int/2addr v12, v13

    move v2, v12

    .line 193
    move v12, v5

    move v13, v6

    add-int/2addr v12, v13

    move v5, v12

    goto :goto_0

    .line 195
    .end local v9    # "x":I
    :cond_3
    return-void
.end method

.method doConvert([BII[BIIII)V
    .locals 15

    .prologue
    .line 150
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/image/impl/ByteGrayAlpha$ToByteGrayAlphaPreConv;
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

    .line 151
    move v12, v6

    move v13, v7

    const/4 v14, 0x2

    mul-int/lit8 v13, v13, 0x2

    sub-int/2addr v12, v13

    move v6, v12

    .line 152
    :goto_0
    add-int/lit8 v8, v8, -0x1

    move v12, v8

    if-ltz v12, :cond_3

    .line 153
    const/4 v12, 0x0

    move v9, v12

    .local v9, "x":I
    :goto_1
    move v12, v9

    move v13, v7

    if-ge v12, v13, :cond_2

    .line 154
    move-object v12, v1

    move v13, v2

    add-int/lit8 v2, v2, 0x1

    aget-byte v12, v12, v13

    const/16 v13, 0xff

    and-int/lit16 v12, v12, 0xff

    move v10, v12

    .line 155
    .local v10, "g":I
    move-object v12, v1

    move v13, v2

    add-int/lit8 v2, v2, 0x1

    aget-byte v12, v12, v13

    move v11, v12

    .line 156
    .local v11, "a":I
    move v12, v11

    const/4 v13, -0x1

    if-eq v12, v13, :cond_0

    .line 157
    move v12, v11

    if-nez v12, :cond_1

    .line 158
    const/4 v12, 0x0

    move v10, v12

    .line 163
    :cond_0
    :goto_2
    move-object v12, v4

    move v13, v5

    add-int/lit8 v5, v5, 0x1

    move v14, v10

    int-to-byte v14, v14

    aput-byte v14, v12, v13

    .line 164
    move-object v12, v4

    move v13, v5

    add-int/lit8 v5, v5, 0x1

    move v14, v11

    int-to-byte v14, v14

    aput-byte v14, v12, v13

    .line 153
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 160
    :cond_1
    move v12, v10

    move v13, v11

    const/16 v14, 0xff

    and-int/lit16 v13, v13, 0xff

    mul-int/2addr v12, v13

    const/16 v13, 0x7f

    add-int/lit8 v12, v12, 0x7f

    const/16 v13, 0xff

    div-int/lit16 v12, v12, 0xff

    move v10, v12

    goto :goto_2

    .line 166
    .end local v10    # "g":I
    .end local v11    # "a":I
    :cond_2
    move v12, v2

    move v13, v3

    add-int/2addr v12, v13

    move v2, v12

    .line 167
    move v12, v5

    move v13, v6

    add-int/2addr v12, v13

    move v5, v12

    goto :goto_0

    .line 169
    .end local v9    # "x":I
    :cond_3
    return-void
.end method
