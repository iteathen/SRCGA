.class Ljavafx/scene/image/WritablePixelFormat$ByteBgraPre;
.super Ljavafx/scene/image/WritablePixelFormat;
.source "WritablePixelFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/image/WritablePixelFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ByteBgraPre"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljavafx/scene/image/WritablePixelFormat",
        "<",
        "Ljava/nio/ByteBuffer;",
        ">;"
    }
.end annotation


# static fields
.field static final INSTANCE:Ljavafx/scene/image/WritablePixelFormat$ByteBgraPre;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 174
    new-instance v0, Ljavafx/scene/image/WritablePixelFormat$ByteBgraPre;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljavafx/scene/image/WritablePixelFormat$ByteBgraPre;-><init>()V

    sput-object v0, Ljavafx/scene/image/WritablePixelFormat$ByteBgraPre;->INSTANCE:Ljavafx/scene/image/WritablePixelFormat$ByteBgraPre;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    .line 177
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/image/WritablePixelFormat$ByteBgraPre;
    move-object v1, v0

    sget-object v2, Ljavafx/scene/image/PixelFormat$Type;->BYTE_BGRA_PRE:Ljavafx/scene/image/PixelFormat$Type;

    invoke-direct {v1, v2}, Ljavafx/scene/image/WritablePixelFormat;-><init>(Ljavafx/scene/image/PixelFormat$Type;)V

    .line 178
    return-void
.end method


# virtual methods
.method public bridge synthetic getArgb(Ljava/nio/Buffer;III)I
    .locals 10

    .prologue
    .line 173
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/image/WritablePixelFormat$ByteBgraPre;
    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, v0

    move-object v6, v1

    check-cast v6, Ljava/nio/ByteBuffer;

    move v7, v2

    move v8, v3

    move v9, v4

    invoke-virtual {v5, v6, v7, v8, v9}, Ljavafx/scene/image/WritablePixelFormat$ByteBgraPre;->getArgb(Ljava/nio/ByteBuffer;III)I

    move-result v5

    move v0, v5

    .end local v0    # "this":Ljavafx/scene/image/WritablePixelFormat$ByteBgraPre;
    return v0
.end method

.method public getArgb(Ljava/nio/ByteBuffer;III)I
    .locals 14

    .prologue
    .line 187
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/image/WritablePixelFormat$ByteBgraPre;
    move-object v1, p1

    .local v1, "buf":Ljava/nio/ByteBuffer;
    move/from16 v2, p2

    .local v2, "x":I
    move/from16 v3, p3

    .local v3, "y":I
    move/from16 v4, p4

    .local v4, "scanlineStride":I
    move v11, v3

    move v12, v4

    mul-int/2addr v11, v12

    move v12, v2

    const/4 v13, 0x4

    mul-int/lit8 v12, v12, 0x4

    add-int/2addr v11, v12

    move v5, v11

    .line 188
    .local v5, "index":I
    move-object v11, v1

    move v12, v5

    invoke-virtual {v11, v12}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v11

    const/16 v12, 0xff

    and-int/lit16 v11, v11, 0xff

    move v6, v11

    .line 189
    .local v6, "b":I
    move-object v11, v1

    move v12, v5

    const/4 v13, 0x1

    add-int/lit8 v12, v12, 0x1

    invoke-virtual {v11, v12}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v11

    const/16 v12, 0xff

    and-int/lit16 v11, v11, 0xff

    move v7, v11

    .line 190
    .local v7, "g":I
    move-object v11, v1

    move v12, v5

    const/4 v13, 0x2

    add-int/lit8 v12, v12, 0x2

    invoke-virtual {v11, v12}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v11

    const/16 v12, 0xff

    and-int/lit16 v11, v11, 0xff

    move v8, v11

    .line 191
    .local v8, "r":I
    move-object v11, v1

    move v12, v5

    const/4 v13, 0x3

    add-int/lit8 v12, v12, 0x3

    invoke-virtual {v11, v12}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v11

    const/16 v12, 0xff

    and-int/lit16 v11, v11, 0xff

    move v9, v11

    .line 192
    .local v9, "a":I
    move v11, v9

    if-lez v11, :cond_0

    move v11, v9

    const/16 v12, 0xff

    if-ge v11, v12, :cond_0

    .line 193
    move v11, v9

    const/4 v12, 0x1

    shr-int/lit8 v11, v11, 0x1

    move v10, v11

    .line 194
    .local v10, "halfa":I
    move v11, v8

    move v12, v9

    if-lt v11, v12, :cond_1

    const/16 v11, 0xff

    :goto_0
    move v8, v11

    .line 195
    move v11, v7

    move v12, v9

    if-lt v11, v12, :cond_2

    const/16 v11, 0xff

    :goto_1
    move v7, v11

    .line 196
    move v11, v6

    move v12, v9

    if-lt v11, v12, :cond_3

    const/16 v11, 0xff

    :goto_2
    move v6, v11

    .line 198
    .end local v10    # "halfa":I
    :cond_0
    move v11, v9

    const/16 v12, 0x18

    shl-int/lit8 v11, v11, 0x18

    move v12, v8

    const/16 v13, 0x10

    shl-int/lit8 v12, v12, 0x10

    or-int/2addr v11, v12

    move v12, v7

    const/16 v13, 0x8

    shl-int/lit8 v12, v12, 0x8

    or-int/2addr v11, v12

    move v12, v6

    or-int/2addr v11, v12

    move v0, v11

    .end local v0    # "this":Ljavafx/scene/image/WritablePixelFormat$ByteBgraPre;
    return v0

    .line 194
    .restart local v0    # "this":Ljavafx/scene/image/WritablePixelFormat$ByteBgraPre;
    .restart local v10    # "halfa":I
    :cond_1
    move v11, v8

    const/16 v12, 0xff

    mul-int/lit16 v11, v11, 0xff

    move v12, v10

    add-int/2addr v11, v12

    move v12, v9

    div-int/2addr v11, v12

    goto :goto_0

    .line 195
    :cond_2
    move v11, v7

    const/16 v12, 0xff

    mul-int/lit16 v11, v11, 0xff

    move v12, v10

    add-int/2addr v11, v12

    move v12, v9

    div-int/2addr v11, v12

    goto :goto_1

    .line 196
    :cond_3
    move v11, v6

    const/16 v12, 0xff

    mul-int/lit16 v11, v11, 0xff

    move v12, v10

    add-int/2addr v11, v12

    move v12, v9

    div-int/2addr v11, v12

    goto :goto_2
.end method

.method public isPremultiplied()Z
    .locals 2

    .prologue
    .line 182
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/image/WritablePixelFormat$ByteBgraPre;
    const/4 v1, 0x1

    move v0, v1

    .end local v0    # "this":Ljavafx/scene/image/WritablePixelFormat$ByteBgraPre;
    return v0
.end method

.method public bridge synthetic setArgb(Ljava/nio/Buffer;IIII)V
    .locals 12

    .prologue
    .line 173
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/image/WritablePixelFormat$ByteBgraPre;
    move-object v1, p1

    move v2, p2

    move v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object v6, v0

    move-object v7, v1

    check-cast v7, Ljava/nio/ByteBuffer;

    move v8, v2

    move v9, v3

    move v10, v4

    move v11, v5

    invoke-virtual/range {v6 .. v11}, Ljavafx/scene/image/WritablePixelFormat$ByteBgraPre;->setArgb(Ljava/nio/ByteBuffer;IIII)V

    return-void
.end method

.method public setArgb(Ljava/nio/ByteBuffer;IIII)V
    .locals 15

    .prologue
    .line 205
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/image/WritablePixelFormat$ByteBgraPre;
    move-object/from16 v1, p1

    .local v1, "buf":Ljava/nio/ByteBuffer;
    move/from16 v2, p2

    .local v2, "x":I
    move/from16 v3, p3

    .local v3, "y":I
    move/from16 v4, p4

    .local v4, "scanlineStride":I
    move/from16 v5, p5

    .local v5, "argb":I
    move v11, v3

    move v12, v4

    mul-int/2addr v11, v12

    move v12, v2

    const/4 v13, 0x4

    mul-int/lit8 v12, v12, 0x4

    add-int/2addr v11, v12

    move v6, v11

    .line 206
    .local v6, "index":I
    move v11, v5

    const/16 v12, 0x18

    ushr-int/lit8 v11, v11, 0x18

    move v7, v11

    .line 208
    .local v7, "a":I
    move v11, v7

    if-lez v11, :cond_1

    .line 209
    move v11, v5

    const/16 v12, 0x10

    shr-int/lit8 v11, v11, 0x10

    const/16 v12, 0xff

    and-int/lit16 v11, v11, 0xff

    move v8, v11

    .line 210
    .local v8, "r":I
    move v11, v5

    const/16 v12, 0x8

    shr-int/lit8 v11, v11, 0x8

    const/16 v12, 0xff

    and-int/lit16 v11, v11, 0xff

    move v9, v11

    .line 211
    .local v9, "g":I
    move v11, v5

    const/16 v12, 0xff

    and-int/lit16 v11, v11, 0xff

    move v10, v11

    .line 212
    .local v10, "b":I
    move v11, v7

    const/16 v12, 0xff

    if-ge v11, v12, :cond_0

    .line 213
    move v11, v8

    move v12, v7

    mul-int/2addr v11, v12

    const/16 v12, 0x7f

    add-int/lit8 v11, v11, 0x7f

    const/16 v12, 0xff

    div-int/lit16 v11, v11, 0xff

    move v8, v11

    .line 214
    move v11, v9

    move v12, v7

    mul-int/2addr v11, v12

    const/16 v12, 0x7f

    add-int/lit8 v11, v11, 0x7f

    const/16 v12, 0xff

    div-int/lit16 v11, v11, 0xff

    move v9, v11

    .line 215
    move v11, v10

    move v12, v7

    mul-int/2addr v11, v12

    const/16 v12, 0x7f

    add-int/lit8 v11, v11, 0x7f

    const/16 v12, 0xff

    div-int/lit16 v11, v11, 0xff

    move v10, v11

    .line 220
    :cond_0
    :goto_0
    move-object v11, v1

    move v12, v6

    move v13, v10

    int-to-byte v13, v13

    invoke-virtual {v11, v12, v13}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    move-result-object v11

    .line 221
    move-object v11, v1

    move v12, v6

    const/4 v13, 0x1

    add-int/lit8 v12, v12, 0x1

    move v13, v9

    int-to-byte v13, v13

    invoke-virtual {v11, v12, v13}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    move-result-object v11

    .line 222
    move-object v11, v1

    move v12, v6

    const/4 v13, 0x2

    add-int/lit8 v12, v12, 0x2

    move v13, v8

    int-to-byte v13, v13

    invoke-virtual {v11, v12, v13}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    move-result-object v11

    .line 223
    move-object v11, v1

    move v12, v6

    const/4 v13, 0x3

    add-int/lit8 v12, v12, 0x3

    move v13, v7

    int-to-byte v13, v13

    invoke-virtual {v11, v12, v13}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    move-result-object v11

    .line 224
    return-void

    .line 218
    .end local v8    # "r":I
    .end local v9    # "g":I
    .end local v10    # "b":I
    :cond_1
    const/4 v11, 0x0

    move v14, v11

    move v11, v14

    move v12, v14

    move v10, v12

    .restart local v10    # "b":I
    move v14, v11

    move v11, v14

    move v12, v14

    move v9, v12

    .restart local v9    # "g":I
    move v14, v11

    move v11, v14

    move v12, v14

    move v8, v12

    .restart local v8    # "r":I
    move v7, v11

    goto :goto_0
.end method
