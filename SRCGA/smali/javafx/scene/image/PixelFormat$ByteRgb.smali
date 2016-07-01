.class Ljavafx/scene/image/PixelFormat$ByteRgb;
.super Ljavafx/scene/image/PixelFormat;
.source "PixelFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/image/PixelFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ByteRgb"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljavafx/scene/image/PixelFormat",
        "<",
        "Ljava/nio/ByteBuffer;",
        ">;"
    }
.end annotation


# static fields
.field static final instance:Ljavafx/scene/image/PixelFormat$ByteRgb;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 354
    new-instance v0, Ljavafx/scene/image/PixelFormat$ByteRgb;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljavafx/scene/image/PixelFormat$ByteRgb;-><init>()V

    sput-object v0, Ljavafx/scene/image/PixelFormat$ByteRgb;->instance:Ljavafx/scene/image/PixelFormat$ByteRgb;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    .line 357
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/image/PixelFormat$ByteRgb;
    move-object v1, v0

    sget-object v2, Ljavafx/scene/image/PixelFormat$Type;->BYTE_RGB:Ljavafx/scene/image/PixelFormat$Type;

    invoke-direct {v1, v2}, Ljavafx/scene/image/PixelFormat;-><init>(Ljavafx/scene/image/PixelFormat$Type;)V

    .line 358
    return-void
.end method


# virtual methods
.method public bridge synthetic getArgb(Ljava/nio/Buffer;III)I
    .locals 10

    .prologue
    .line 353
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/image/PixelFormat$ByteRgb;
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

    invoke-virtual {v5, v6, v7, v8, v9}, Ljavafx/scene/image/PixelFormat$ByteRgb;->getArgb(Ljava/nio/ByteBuffer;III)I

    move-result v5

    move v0, v5

    .end local v0    # "this":Ljavafx/scene/image/PixelFormat$ByteRgb;
    return v0
.end method

.method public getArgb(Ljava/nio/ByteBuffer;III)I
    .locals 12

    .prologue
    .line 372
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/image/PixelFormat$ByteRgb;
    move-object v1, p1

    .local v1, "buf":Ljava/nio/ByteBuffer;
    move v2, p2

    .local v2, "x":I
    move v3, p3

    .local v3, "y":I
    move/from16 v4, p4

    .local v4, "scanlineStride":I
    move v9, v3

    move v10, v4

    mul-int/2addr v9, v10

    move v10, v2

    const/4 v11, 0x3

    mul-int/lit8 v10, v10, 0x3

    add-int/2addr v9, v10

    move v5, v9

    .line 373
    .local v5, "index":I
    move-object v9, v1

    move v10, v5

    invoke-virtual {v9, v10}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v9

    const/16 v10, 0xff

    and-int/lit16 v9, v9, 0xff

    move v6, v9

    .line 374
    .local v6, "r":I
    move-object v9, v1

    move v10, v5

    const/4 v11, 0x1

    add-int/lit8 v10, v10, 0x1

    invoke-virtual {v9, v10}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v9

    const/16 v10, 0xff

    and-int/lit16 v9, v9, 0xff

    move v7, v9

    .line 375
    .local v7, "g":I
    move-object v9, v1

    move v10, v5

    const/4 v11, 0x2

    add-int/lit8 v10, v10, 0x2

    invoke-virtual {v9, v10}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v9

    const/16 v10, 0xff

    and-int/lit16 v9, v9, 0xff

    move v8, v9

    .line 376
    .local v8, "b":I
    const/high16 v9, -0x1000000

    move v10, v6

    const/16 v11, 0x10

    shl-int/lit8 v10, v10, 0x10

    or-int/2addr v9, v10

    move v10, v7

    const/16 v11, 0x8

    shl-int/lit8 v10, v10, 0x8

    or-int/2addr v9, v10

    move v10, v8

    or-int/2addr v9, v10

    move v0, v9

    .end local v0    # "this":Ljavafx/scene/image/PixelFormat$ByteRgb;
    return v0
.end method

.method public isPremultiplied()Z
    .locals 2

    .prologue
    .line 367
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/image/PixelFormat$ByteRgb;
    const/4 v1, 0x0

    move v0, v1

    .end local v0    # "this":Ljavafx/scene/image/PixelFormat$ByteRgb;
    return v0
.end method

.method public isWritable()Z
    .locals 2

    .prologue
    .line 362
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/image/PixelFormat$ByteRgb;
    const/4 v1, 0x1

    move v0, v1

    .end local v0    # "this":Ljavafx/scene/image/PixelFormat$ByteRgb;
    return v0
.end method
