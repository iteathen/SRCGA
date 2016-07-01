.class Ljavafx/scene/image/PixelFormat$IndexedPixelFormat;
.super Ljavafx/scene/image/PixelFormat;
.source "PixelFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/image/PixelFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "IndexedPixelFormat"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljavafx/scene/image/PixelFormat",
        "<",
        "Ljava/nio/ByteBuffer;",
        ">;"
    }
.end annotation


# instance fields
.field nonprecolors:[I

.field precolors:[I

.field premult:Z


# direct methods
.method private constructor <init>(Ljavafx/scene/image/PixelFormat$Type;Z[I)V
    .locals 6

    .prologue
    .line 391
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/image/PixelFormat$IndexedPixelFormat;
    move-object v1, p1

    .local v1, "type":Ljavafx/scene/image/PixelFormat$Type;
    move v2, p2

    .local v2, "premult":Z
    move-object v3, p3

    .local v3, "colors":[I
    move-object v4, v0

    move-object v5, v1

    invoke-direct {v4, v5}, Ljavafx/scene/image/PixelFormat;-><init>(Ljavafx/scene/image/PixelFormat$Type;)V

    .line 392
    move v4, v2

    if-eqz v4, :cond_0

    .line 393
    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Ljavafx/scene/image/PixelFormat$IndexedPixelFormat;->precolors:[I

    .line 397
    :goto_0
    move-object v4, v0

    move v5, v2

    iput-boolean v5, v4, Ljavafx/scene/image/PixelFormat$IndexedPixelFormat;->premult:Z

    .line 398
    return-void

    .line 395
    :cond_0
    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Ljavafx/scene/image/PixelFormat$IndexedPixelFormat;->nonprecolors:[I

    goto :goto_0
.end method

.method static createByte([IZ)Ljavafx/scene/image/PixelFormat;
    .locals 9

    .prologue
    .line 386
    move-object v0, p0

    .local v0, "colors":[I
    move v1, p1

    .local v1, "premult":Z
    new-instance v2, Ljavafx/scene/image/PixelFormat$IndexedPixelFormat;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    sget-object v4, Ljavafx/scene/image/PixelFormat$Type;->BYTE_INDEXED:Ljavafx/scene/image/PixelFormat$Type;

    move v5, v1

    move-object v6, v0

    const/16 v7, 0x100

    .line 387
    invoke-static {v6, v7}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v6

    invoke-direct {v3, v4, v5, v6}, Ljavafx/scene/image/PixelFormat$IndexedPixelFormat;-><init>(Ljavafx/scene/image/PixelFormat$Type;Z[I)V

    move-object v0, v2

    .end local v0    # "colors":[I
    return-object v0
.end method


# virtual methods
.method public bridge synthetic getArgb(Ljava/nio/Buffer;III)I
    .locals 10

    .prologue
    .line 380
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/image/PixelFormat$IndexedPixelFormat;
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

    invoke-virtual {v5, v6, v7, v8, v9}, Ljavafx/scene/image/PixelFormat$IndexedPixelFormat;->getArgb(Ljava/nio/ByteBuffer;III)I

    move-result v5

    move v0, v5

    .end local v0    # "this":Ljavafx/scene/image/PixelFormat$IndexedPixelFormat;
    return v0
.end method

.method public getArgb(Ljava/nio/ByteBuffer;III)I
    .locals 9

    .prologue
    .line 434
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/image/PixelFormat$IndexedPixelFormat;
    move-object v1, p1

    .local v1, "buf":Ljava/nio/ByteBuffer;
    move v2, p2

    .local v2, "x":I
    move v3, p3

    .local v3, "y":I
    move v4, p4

    .local v4, "scanlineStride":I
    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/image/PixelFormat$IndexedPixelFormat;->getNonPreColors()[I

    move-result-object v5

    move-object v6, v1

    move v7, v3

    move v8, v4

    mul-int/2addr v7, v8

    move v8, v2

    add-int/2addr v7, v8

    invoke-virtual {v6, v7}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v6

    const/16 v7, 0xff

    and-int/lit16 v6, v6, 0xff

    aget v5, v5, v6

    move v0, v5

    .end local v0    # "this":Ljavafx/scene/image/PixelFormat$IndexedPixelFormat;
    return v0
.end method

.method getNonPreColors()[I
    .locals 7

    .prologue
    .line 422
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/image/PixelFormat$IndexedPixelFormat;
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/image/PixelFormat$IndexedPixelFormat;->nonprecolors:[I

    if-nez v3, :cond_1

    .line 423
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/image/PixelFormat$IndexedPixelFormat;->precolors:[I

    array-length v3, v3

    new-array v3, v3, [I

    move-object v1, v3

    .line 424
    .local v1, "colors":[I
    const/4 v3, 0x0

    move v2, v3

    .local v2, "i":I
    :goto_0
    move v3, v2

    move-object v4, v1

    array-length v4, v4

    if-ge v3, v4, :cond_0

    .line 425
    move-object v3, v1

    move v4, v2

    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/image/PixelFormat$IndexedPixelFormat;->precolors:[I

    move v6, v2

    aget v5, v5, v6

    invoke-static {v5}, Ljavafx/scene/image/PixelFormat$IndexedPixelFormat;->PretoNonPre(I)I

    move-result v5

    aput v5, v3, v4

    .line 424
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 427
    :cond_0
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Ljavafx/scene/image/PixelFormat$IndexedPixelFormat;->nonprecolors:[I

    .line 429
    .end local v1    # "colors":[I
    .end local v2    # "i":I
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/image/PixelFormat$IndexedPixelFormat;->nonprecolors:[I

    move-object v0, v3

    .end local v0    # "this":Ljavafx/scene/image/PixelFormat$IndexedPixelFormat;
    return-object v0
.end method

.method getPreColors()[I
    .locals 7

    .prologue
    .line 411
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/image/PixelFormat$IndexedPixelFormat;
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/image/PixelFormat$IndexedPixelFormat;->precolors:[I

    if-nez v3, :cond_1

    .line 412
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/image/PixelFormat$IndexedPixelFormat;->nonprecolors:[I

    array-length v3, v3

    new-array v3, v3, [I

    move-object v1, v3

    .line 413
    .local v1, "colors":[I
    const/4 v3, 0x0

    move v2, v3

    .local v2, "i":I
    :goto_0
    move v3, v2

    move-object v4, v1

    array-length v4, v4

    if-ge v3, v4, :cond_0

    .line 414
    move-object v3, v1

    move v4, v2

    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/image/PixelFormat$IndexedPixelFormat;->nonprecolors:[I

    move v6, v2

    aget v5, v5, v6

    invoke-static {v5}, Ljavafx/scene/image/PixelFormat$IndexedPixelFormat;->NonPretoPre(I)I

    move-result v5

    aput v5, v3, v4

    .line 413
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 416
    :cond_0
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Ljavafx/scene/image/PixelFormat$IndexedPixelFormat;->precolors:[I

    .line 418
    .end local v1    # "colors":[I
    .end local v2    # "i":I
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/image/PixelFormat$IndexedPixelFormat;->precolors:[I

    move-object v0, v3

    .end local v0    # "this":Ljavafx/scene/image/PixelFormat$IndexedPixelFormat;
    return-object v0
.end method

.method public isPremultiplied()Z
    .locals 2

    .prologue
    .line 407
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/image/PixelFormat$IndexedPixelFormat;
    move-object v1, v0

    iget-boolean v1, v1, Ljavafx/scene/image/PixelFormat$IndexedPixelFormat;->premult:Z

    move v0, v1

    .end local v0    # "this":Ljavafx/scene/image/PixelFormat$IndexedPixelFormat;
    return v0
.end method

.method public isWritable()Z
    .locals 2

    .prologue
    .line 402
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/image/PixelFormat$IndexedPixelFormat;
    const/4 v1, 0x0

    move v0, v1

    .end local v0    # "this":Ljavafx/scene/image/PixelFormat$IndexedPixelFormat;
    return v0
.end method
