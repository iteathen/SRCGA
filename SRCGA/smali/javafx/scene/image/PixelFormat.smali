.class public abstract Ljavafx/scene/image/PixelFormat;
.super Ljava/lang/Object;
.source "PixelFormat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavafx/scene/image/PixelFormat$IndexedPixelFormat;,
        Ljavafx/scene/image/PixelFormat$ByteRgb;,
        Ljavafx/scene/image/PixelFormat$Type;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/nio/Buffer;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private type:Ljavafx/scene/image/PixelFormat$Type;


# direct methods
.method constructor <init>(Ljavafx/scene/image/PixelFormat$Type;)V
    .locals 4

    .prologue
    .line 86
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/image/PixelFormat;, "Ljavafx/scene/image/PixelFormat<TT;>;"
    move-object v1, p1

    .local v1, "type":Ljavafx/scene/image/PixelFormat$Type;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 87
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/image/PixelFormat;->type:Ljavafx/scene/image/PixelFormat$Type;

    .line 88
    return-void
.end method

.method static NonPretoPre(I)I
    .locals 8

    .prologue
    .line 290
    move v0, p0

    .local v0, "nonpre":I
    move v5, v0

    const/16 v6, 0x18

    ushr-int/lit8 v5, v5, 0x18

    move v1, v5

    .line 291
    .local v1, "a":I
    move v5, v1

    const/16 v6, 0xff

    if-ne v5, v6, :cond_0

    move v5, v0

    move v0, v5

    .line 299
    .end local v0    # "nonpre":I
    :goto_0
    return v0

    .line 292
    .restart local v0    # "nonpre":I
    :cond_0
    move v5, v1

    if-nez v5, :cond_1

    const/4 v5, 0x0

    move v0, v5

    goto :goto_0

    .line 293
    :cond_1
    move v5, v0

    const/16 v6, 0x10

    shr-int/lit8 v5, v5, 0x10

    const/16 v6, 0xff

    and-int/lit16 v5, v5, 0xff

    move v2, v5

    .line 294
    .local v2, "r":I
    move v5, v0

    const/16 v6, 0x8

    shr-int/lit8 v5, v5, 0x8

    const/16 v6, 0xff

    and-int/lit16 v5, v5, 0xff

    move v3, v5

    .line 295
    .local v3, "g":I
    move v5, v0

    const/16 v6, 0xff

    and-int/lit16 v5, v5, 0xff

    move v4, v5

    .line 296
    .local v4, "b":I
    move v5, v2

    move v6, v1

    mul-int/2addr v5, v6

    const/16 v6, 0x7f

    add-int/lit8 v5, v5, 0x7f

    const/16 v6, 0xff

    div-int/lit16 v5, v5, 0xff

    move v2, v5

    .line 297
    move v5, v3

    move v6, v1

    mul-int/2addr v5, v6

    const/16 v6, 0x7f

    add-int/lit8 v5, v5, 0x7f

    const/16 v6, 0xff

    div-int/lit16 v5, v5, 0xff

    move v3, v5

    .line 298
    move v5, v4

    move v6, v1

    mul-int/2addr v5, v6

    const/16 v6, 0x7f

    add-int/lit8 v5, v5, 0x7f

    const/16 v6, 0xff

    div-int/lit16 v5, v5, 0xff

    move v4, v5

    .line 299
    move v5, v1

    const/16 v6, 0x18

    shl-int/lit8 v5, v5, 0x18

    move v6, v2

    const/16 v7, 0x10

    shl-int/lit8 v6, v6, 0x10

    or-int/2addr v5, v6

    move v6, v3

    const/16 v7, 0x8

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v5, v6

    move v6, v4

    or-int/2addr v5, v6

    move v0, v5

    goto :goto_0
.end method

.method static PretoNonPre(I)I
    .locals 9

    .prologue
    .line 303
    move v0, p0

    .local v0, "pre":I
    move v6, v0

    const/16 v7, 0x18

    ushr-int/lit8 v6, v6, 0x18

    move v1, v6

    .line 304
    .local v1, "a":I
    move v6, v1

    const/16 v7, 0xff

    if-eq v6, v7, :cond_0

    move v6, v1

    if-nez v6, :cond_1

    :cond_0
    move v6, v0

    move v0, v6

    .line 312
    .end local v0    # "pre":I
    :goto_0
    return v0

    .line 305
    .restart local v0    # "pre":I
    :cond_1
    move v6, v0

    const/16 v7, 0x10

    shr-int/lit8 v6, v6, 0x10

    const/16 v7, 0xff

    and-int/lit16 v6, v6, 0xff

    move v2, v6

    .line 306
    .local v2, "r":I
    move v6, v0

    const/16 v7, 0x8

    shr-int/lit8 v6, v6, 0x8

    const/16 v7, 0xff

    and-int/lit16 v6, v6, 0xff

    move v3, v6

    .line 307
    .local v3, "g":I
    move v6, v0

    const/16 v7, 0xff

    and-int/lit16 v6, v6, 0xff

    move v4, v6

    .line 308
    .local v4, "b":I
    move v6, v1

    const/4 v7, 0x1

    shr-int/lit8 v6, v6, 0x1

    move v5, v6

    .line 309
    .local v5, "halfa":I
    move v6, v2

    move v7, v1

    if-lt v6, v7, :cond_2

    const/16 v6, 0xff

    :goto_1
    move v2, v6

    .line 310
    move v6, v3

    move v7, v1

    if-lt v6, v7, :cond_3

    const/16 v6, 0xff

    :goto_2
    move v3, v6

    .line 311
    move v6, v4

    move v7, v1

    if-lt v6, v7, :cond_4

    const/16 v6, 0xff

    :goto_3
    move v4, v6

    .line 312
    move v6, v1

    const/16 v7, 0x18

    shl-int/lit8 v6, v6, 0x18

    move v7, v2

    const/16 v8, 0x10

    shl-int/lit8 v7, v7, 0x10

    or-int/2addr v6, v7

    move v7, v3

    const/16 v8, 0x8

    shl-int/lit8 v7, v7, 0x8

    or-int/2addr v6, v7

    move v7, v4

    or-int/2addr v6, v7

    move v0, v6

    goto :goto_0

    .line 309
    :cond_2
    move v6, v2

    const/16 v7, 0xff

    mul-int/lit16 v6, v6, 0xff

    move v7, v5

    add-int/2addr v6, v7

    move v7, v1

    div-int/2addr v6, v7

    goto :goto_1

    .line 310
    :cond_3
    move v6, v3

    const/16 v7, 0xff

    mul-int/lit16 v6, v6, 0xff

    move v7, v5

    add-int/2addr v6, v7

    move v7, v1

    div-int/2addr v6, v7

    goto :goto_2

    .line 311
    :cond_4
    move v6, v4

    const/16 v7, 0xff

    mul-int/lit16 v6, v6, 0xff

    move v7, v5

    add-int/2addr v6, v7

    move v7, v1

    div-int/2addr v6, v7

    goto :goto_3
.end method

.method public static createByteIndexedInstance([I)Ljavafx/scene/image/PixelFormat;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljavafx/scene/image/PixelFormat",
            "<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 257
    move-object v0, p0

    .local v0, "colors":[I
    move-object v1, v0

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljavafx/scene/image/PixelFormat$IndexedPixelFormat;->createByte([IZ)Ljavafx/scene/image/PixelFormat;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "colors":[I
    return-object v0
.end method

.method public static createByteIndexedPremultipliedInstance([I)Ljavafx/scene/image/PixelFormat;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljavafx/scene/image/PixelFormat",
            "<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 229
    move-object v0, p0

    .local v0, "colors":[I
    move-object v1, v0

    const/4 v2, 0x1

    invoke-static {v1, v2}, Ljavafx/scene/image/PixelFormat$IndexedPixelFormat;->createByte([IZ)Ljavafx/scene/image/PixelFormat;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "colors":[I
    return-object v0
.end method

.method public static getByteBgraInstance()Ljavafx/scene/image/WritablePixelFormat;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/scene/image/WritablePixelFormat",
            "<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 156
    sget-object v0, Ljavafx/scene/image/WritablePixelFormat$ByteBgra;->INSTANCE:Ljavafx/scene/image/WritablePixelFormat$ByteBgra;

    return-object v0
.end method

.method public static getByteBgraPreInstance()Ljavafx/scene/image/WritablePixelFormat;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/scene/image/WritablePixelFormat",
            "<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 179
    sget-object v0, Ljavafx/scene/image/WritablePixelFormat$ByteBgraPre;->INSTANCE:Ljavafx/scene/image/WritablePixelFormat$ByteBgraPre;

    return-object v0
.end method

.method public static getByteRgbInstance()Ljavafx/scene/image/PixelFormat;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/scene/image/PixelFormat",
            "<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 201
    sget-object v0, Ljavafx/scene/image/PixelFormat$ByteRgb;->instance:Ljavafx/scene/image/PixelFormat$ByteRgb;

    return-object v0
.end method

.method public static getIntArgbInstance()Ljavafx/scene/image/WritablePixelFormat;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/scene/image/WritablePixelFormat",
            "<",
            "Ljava/nio/IntBuffer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 110
    sget-object v0, Ljavafx/scene/image/WritablePixelFormat$IntArgb;->INSTANCE:Ljavafx/scene/image/WritablePixelFormat$IntArgb;

    return-object v0
.end method

.method public static getIntArgbPreInstance()Ljavafx/scene/image/WritablePixelFormat;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/scene/image/WritablePixelFormat",
            "<",
            "Ljava/nio/IntBuffer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 133
    sget-object v0, Ljavafx/scene/image/WritablePixelFormat$IntArgbPre;->INSTANCE:Ljavafx/scene/image/WritablePixelFormat$IntArgbPre;

    return-object v0
.end method


# virtual methods
.method public abstract getArgb(Ljava/nio/Buffer;III)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;III)I"
        }
    .end annotation
.end method

.method public getType()Ljavafx/scene/image/PixelFormat$Type;
    .locals 2

    .prologue
    .line 267
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/image/PixelFormat;, "Ljavafx/scene/image/PixelFormat<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/image/PixelFormat;->type:Ljavafx/scene/image/PixelFormat$Type;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/image/PixelFormat;, "Ljavafx/scene/image/PixelFormat<TT;>;"
    return-object v0
.end method

.method public abstract isPremultiplied()Z
.end method

.method public abstract isWritable()Z
.end method
