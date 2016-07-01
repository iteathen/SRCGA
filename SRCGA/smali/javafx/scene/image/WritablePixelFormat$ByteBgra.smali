.class Ljavafx/scene/image/WritablePixelFormat$ByteBgra;
.super Ljavafx/scene/image/WritablePixelFormat;
.source "WritablePixelFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/image/WritablePixelFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ByteBgra"
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
.field static final INSTANCE:Ljavafx/scene/image/WritablePixelFormat$ByteBgra;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 140
    new-instance v0, Ljavafx/scene/image/WritablePixelFormat$ByteBgra;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljavafx/scene/image/WritablePixelFormat$ByteBgra;-><init>()V

    sput-object v0, Ljavafx/scene/image/WritablePixelFormat$ByteBgra;->INSTANCE:Ljavafx/scene/image/WritablePixelFormat$ByteBgra;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    .line 143
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/image/WritablePixelFormat$ByteBgra;
    move-object v1, v0

    sget-object v2, Ljavafx/scene/image/PixelFormat$Type;->BYTE_BGRA:Ljavafx/scene/image/PixelFormat$Type;

    invoke-direct {v1, v2}, Ljavafx/scene/image/WritablePixelFormat;-><init>(Ljavafx/scene/image/PixelFormat$Type;)V

    .line 144
    return-void
.end method


# virtual methods
.method public bridge synthetic getArgb(Ljava/nio/Buffer;III)I
    .locals 10

    .prologue
    .line 139
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/image/WritablePixelFormat$ByteBgra;
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

    invoke-virtual {v5, v6, v7, v8, v9}, Ljavafx/scene/image/WritablePixelFormat$ByteBgra;->getArgb(Ljava/nio/ByteBuffer;III)I

    move-result v5

    move v0, v5

    .end local v0    # "this":Ljavafx/scene/image/WritablePixelFormat$ByteBgra;
    return v0
.end method

.method public getArgb(Ljava/nio/ByteBuffer;III)I
    .locals 13

    .prologue
    .line 153
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/image/WritablePixelFormat$ByteBgra;
    move-object v1, p1

    .local v1, "buf":Ljava/nio/ByteBuffer;
    move v2, p2

    .local v2, "x":I
    move/from16 v3, p3

    .local v3, "y":I
    move/from16 v4, p4

    .local v4, "scanlineStride":I
    move v10, v3

    move v11, v4

    mul-int/2addr v10, v11

    move v11, v2

    const/4 v12, 0x4

    mul-int/lit8 v11, v11, 0x4

    add-int/2addr v10, v11

    move v5, v10

    .line 154
    .local v5, "index":I
    move-object v10, v1

    move v11, v5

    invoke-virtual {v10, v11}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v10

    const/16 v11, 0xff

    and-int/lit16 v10, v10, 0xff

    move v6, v10

    .line 155
    .local v6, "b":I
    move-object v10, v1

    move v11, v5

    const/4 v12, 0x1

    add-int/lit8 v11, v11, 0x1

    invoke-virtual {v10, v11}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v10

    const/16 v11, 0xff

    and-int/lit16 v10, v10, 0xff

    move v7, v10

    .line 156
    .local v7, "g":I
    move-object v10, v1

    move v11, v5

    const/4 v12, 0x2

    add-int/lit8 v11, v11, 0x2

    invoke-virtual {v10, v11}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v10

    const/16 v11, 0xff

    and-int/lit16 v10, v10, 0xff

    move v8, v10

    .line 157
    .local v8, "r":I
    move-object v10, v1

    move v11, v5

    const/4 v12, 0x3

    add-int/lit8 v11, v11, 0x3

    invoke-virtual {v10, v11}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v10

    const/16 v11, 0xff

    and-int/lit16 v10, v10, 0xff

    move v9, v10

    .line 158
    .local v9, "a":I
    move v10, v9

    const/16 v11, 0x18

    shl-int/lit8 v10, v10, 0x18

    move v11, v8

    const/16 v12, 0x10

    shl-int/lit8 v11, v11, 0x10

    or-int/2addr v10, v11

    move v11, v7

    const/16 v12, 0x8

    shl-int/lit8 v11, v11, 0x8

    or-int/2addr v10, v11

    move v11, v6

    or-int/2addr v10, v11

    move v0, v10

    .end local v0    # "this":Ljavafx/scene/image/WritablePixelFormat$ByteBgra;
    return v0
.end method

.method public isPremultiplied()Z
    .locals 2

    .prologue
    .line 148
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/image/WritablePixelFormat$ByteBgra;
    const/4 v1, 0x0

    move v0, v1

    .end local v0    # "this":Ljavafx/scene/image/WritablePixelFormat$ByteBgra;
    return v0
.end method

.method public bridge synthetic setArgb(Ljava/nio/Buffer;IIII)V
    .locals 12

    .prologue
    .line 139
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/image/WritablePixelFormat$ByteBgra;
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

    invoke-virtual/range {v6 .. v11}, Ljavafx/scene/image/WritablePixelFormat$ByteBgra;->setArgb(Ljava/nio/ByteBuffer;IIII)V

    return-void
.end method

.method public setArgb(Ljava/nio/ByteBuffer;IIII)V
    .locals 11

    .prologue
    .line 165
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/image/WritablePixelFormat$ByteBgra;
    move-object v1, p1

    .local v1, "buf":Ljava/nio/ByteBuffer;
    move v2, p2

    .local v2, "x":I
    move v3, p3

    .local v3, "y":I
    move v4, p4

    .local v4, "scanlineStride":I
    move/from16 v5, p5

    .local v5, "argb":I
    move v7, v3

    move v8, v4

    mul-int/2addr v7, v8

    move v8, v2

    const/4 v9, 0x4

    mul-int/lit8 v8, v8, 0x4

    add-int/2addr v7, v8

    move v6, v7

    .line 166
    .local v6, "index":I
    move-object v7, v1

    move v8, v6

    move v9, v5

    int-to-byte v9, v9

    invoke-virtual {v7, v8, v9}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    move-result-object v7

    .line 167
    move-object v7, v1

    move v8, v6

    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    move v9, v5

    const/16 v10, 0x8

    shr-int/lit8 v9, v9, 0x8

    int-to-byte v9, v9

    invoke-virtual {v7, v8, v9}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    move-result-object v7

    .line 168
    move-object v7, v1

    move v8, v6

    const/4 v9, 0x2

    add-int/lit8 v8, v8, 0x2

    move v9, v5

    const/16 v10, 0x10

    shr-int/lit8 v9, v9, 0x10

    int-to-byte v9, v9

    invoke-virtual {v7, v8, v9}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    move-result-object v7

    .line 169
    move-object v7, v1

    move v8, v6

    const/4 v9, 0x3

    add-int/lit8 v8, v8, 0x3

    move v9, v5

    const/16 v10, 0x18

    shr-int/lit8 v9, v9, 0x18

    int-to-byte v9, v9

    invoke-virtual {v7, v8, v9}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    move-result-object v7

    .line 170
    return-void
.end method
