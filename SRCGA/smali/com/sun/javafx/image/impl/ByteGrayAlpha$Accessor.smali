.class Lcom/sun/javafx/image/impl/ByteGrayAlpha$Accessor;
.super Ljava/lang/Object;
.source "ByteGrayAlpha.java"

# interfaces
.implements Lcom/sun/javafx/image/BytePixelAccessor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/image/impl/ByteGrayAlpha;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Accessor"
.end annotation


# static fields
.field static final nonpremul:Lcom/sun/javafx/image/BytePixelAccessor;

.field static final premul:Lcom/sun/javafx/image/BytePixelAccessor;


# instance fields
.field private isPremult:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 50
    new-instance v0, Lcom/sun/javafx/image/impl/ByteGrayAlpha$Accessor;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/sun/javafx/image/impl/ByteGrayAlpha$Accessor;-><init>(Z)V

    sput-object v0, Lcom/sun/javafx/image/impl/ByteGrayAlpha$Accessor;->nonpremul:Lcom/sun/javafx/image/BytePixelAccessor;

    .line 51
    new-instance v0, Lcom/sun/javafx/image/impl/ByteGrayAlpha$Accessor;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/sun/javafx/image/impl/ByteGrayAlpha$Accessor;-><init>(Z)V

    sput-object v0, Lcom/sun/javafx/image/impl/ByteGrayAlpha$Accessor;->premul:Lcom/sun/javafx/image/BytePixelAccessor;

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 4

    .prologue
    .line 54
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/image/impl/ByteGrayAlpha$Accessor;
    move v1, p1

    .local v1, "isPremult":Z
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 55
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/sun/javafx/image/impl/ByteGrayAlpha$Accessor;->isPremult:Z

    .line 56
    return-void
.end method


# virtual methods
.method public getAlphaType()Lcom/sun/javafx/image/AlphaType;
    .locals 2

    .prologue
    .line 60
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/image/impl/ByteGrayAlpha$Accessor;
    move-object v1, v0

    iget-boolean v1, v1, Lcom/sun/javafx/image/impl/ByteGrayAlpha$Accessor;->isPremult:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/sun/javafx/image/AlphaType;->PREMULTIPLIED:Lcom/sun/javafx/image/AlphaType;

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/image/impl/ByteGrayAlpha$Accessor;
    return-object v0

    .restart local v0    # "this":Lcom/sun/javafx/image/impl/ByteGrayAlpha$Accessor;
    :cond_0
    sget-object v1, Lcom/sun/javafx/image/AlphaType;->NONPREMULTIPLIED:Lcom/sun/javafx/image/AlphaType;

    goto :goto_0
.end method

.method public bridge synthetic getArgb(Ljava/nio/Buffer;I)I
    .locals 6

    .prologue
    .line 49
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/image/impl/ByteGrayAlpha$Accessor;
    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    check-cast v4, Ljava/nio/ByteBuffer;

    move v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/image/impl/ByteGrayAlpha$Accessor;->getArgb(Ljava/nio/ByteBuffer;I)I

    move-result v3

    move v0, v3

    .end local v0    # "this":Lcom/sun/javafx/image/impl/ByteGrayAlpha$Accessor;
    return v0
.end method

.method public getArgb(Ljava/nio/ByteBuffer;I)I
    .locals 8

    .prologue
    .line 86
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/image/impl/ByteGrayAlpha$Accessor;
    move-object v1, p1

    .local v1, "buf":Ljava/nio/ByteBuffer;
    move v2, p2

    .local v2, "offset":I
    move-object v5, v1

    move v6, v2

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v5

    const/16 v6, 0xff

    and-int/lit16 v5, v5, 0xff

    move v3, v5

    .line 87
    .local v3, "g":I
    move-object v5, v1

    move v6, v2

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v5

    const/16 v6, 0xff

    and-int/lit16 v5, v5, 0xff

    move v4, v5

    .line 88
    .local v4, "a":I
    move-object v5, v0

    iget-boolean v5, v5, Lcom/sun/javafx/image/impl/ByteGrayAlpha$Accessor;->isPremult:Z

    if-eqz v5, :cond_0

    move v5, v3

    move v6, v4

    invoke-static {v5, v6}, Lcom/sun/javafx/image/PixelUtils;->PreToNonPre(II)I

    move-result v5

    move v3, v5

    .line 89
    :cond_0
    move v5, v4

    const/16 v6, 0x18

    shl-int/lit8 v5, v5, 0x18

    move v6, v3

    const/16 v7, 0x10

    shl-int/lit8 v6, v6, 0x10

    or-int/2addr v5, v6

    move v6, v3

    const/16 v7, 0x8

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v5, v6

    move v6, v3

    or-int/2addr v5, v6

    move v0, v5

    .end local v0    # "this":Lcom/sun/javafx/image/impl/ByteGrayAlpha$Accessor;
    return v0
.end method

.method public getArgb([BI)I
    .locals 8

    .prologue
    .line 70
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/image/impl/ByteGrayAlpha$Accessor;
    move-object v1, p1

    .local v1, "arr":[B
    move v2, p2

    .local v2, "offset":I
    move-object v5, v1

    move v6, v2

    aget-byte v5, v5, v6

    const/16 v6, 0xff

    and-int/lit16 v5, v5, 0xff

    move v3, v5

    .line 71
    .local v3, "g":I
    move-object v5, v1

    move v6, v2

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    aget-byte v5, v5, v6

    const/16 v6, 0xff

    and-int/lit16 v5, v5, 0xff

    move v4, v5

    .line 72
    .local v4, "a":I
    move-object v5, v0

    iget-boolean v5, v5, Lcom/sun/javafx/image/impl/ByteGrayAlpha$Accessor;->isPremult:Z

    if-eqz v5, :cond_0

    move v5, v3

    move v6, v4

    invoke-static {v5, v6}, Lcom/sun/javafx/image/PixelUtils;->PreToNonPre(II)I

    move-result v5

    move v3, v5

    .line 73
    :cond_0
    move v5, v4

    const/16 v6, 0x18

    shl-int/lit8 v5, v5, 0x18

    move v6, v3

    const/16 v7, 0x10

    shl-int/lit8 v6, v6, 0x10

    or-int/2addr v5, v6

    move v6, v3

    const/16 v7, 0x8

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v5, v6

    move v6, v3

    or-int/2addr v5, v6

    move v0, v5

    .end local v0    # "this":Lcom/sun/javafx/image/impl/ByteGrayAlpha$Accessor;
    return v0
.end method

.method public bridge synthetic getArgbPre(Ljava/nio/Buffer;I)I
    .locals 6

    .prologue
    .line 49
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/image/impl/ByteGrayAlpha$Accessor;
    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    check-cast v4, Ljava/nio/ByteBuffer;

    move v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/image/impl/ByteGrayAlpha$Accessor;->getArgbPre(Ljava/nio/ByteBuffer;I)I

    move-result v3

    move v0, v3

    .end local v0    # "this":Lcom/sun/javafx/image/impl/ByteGrayAlpha$Accessor;
    return v0
.end method

.method public getArgbPre(Ljava/nio/ByteBuffer;I)I
    .locals 8

    .prologue
    .line 94
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/image/impl/ByteGrayAlpha$Accessor;
    move-object v1, p1

    .local v1, "buf":Ljava/nio/ByteBuffer;
    move v2, p2

    .local v2, "offset":I
    move-object v5, v1

    move v6, v2

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v5

    const/16 v6, 0xff

    and-int/lit16 v5, v5, 0xff

    move v3, v5

    .line 95
    .local v3, "g":I
    move-object v5, v1

    move v6, v2

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v5

    const/16 v6, 0xff

    and-int/lit16 v5, v5, 0xff

    move v4, v5

    .line 96
    .local v4, "a":I
    move-object v5, v0

    iget-boolean v5, v5, Lcom/sun/javafx/image/impl/ByteGrayAlpha$Accessor;->isPremult:Z

    if-nez v5, :cond_0

    move v5, v3

    move v6, v4

    invoke-static {v5, v6}, Lcom/sun/javafx/image/PixelUtils;->NonPretoPre(II)I

    move-result v5

    move v3, v5

    .line 97
    :cond_0
    move v5, v4

    const/16 v6, 0x18

    shl-int/lit8 v5, v5, 0x18

    move v6, v3

    const/16 v7, 0x10

    shl-int/lit8 v6, v6, 0x10

    or-int/2addr v5, v6

    move v6, v3

    const/16 v7, 0x8

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v5, v6

    move v6, v3

    or-int/2addr v5, v6

    move v0, v5

    .end local v0    # "this":Lcom/sun/javafx/image/impl/ByteGrayAlpha$Accessor;
    return v0
.end method

.method public getArgbPre([BI)I
    .locals 8

    .prologue
    .line 78
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/image/impl/ByteGrayAlpha$Accessor;
    move-object v1, p1

    .local v1, "arr":[B
    move v2, p2

    .local v2, "offset":I
    move-object v5, v1

    move v6, v2

    aget-byte v5, v5, v6

    const/16 v6, 0xff

    and-int/lit16 v5, v5, 0xff

    move v3, v5

    .line 79
    .local v3, "g":I
    move-object v5, v1

    move v6, v2

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    aget-byte v5, v5, v6

    const/16 v6, 0xff

    and-int/lit16 v5, v5, 0xff

    move v4, v5

    .line 80
    .local v4, "a":I
    move-object v5, v0

    iget-boolean v5, v5, Lcom/sun/javafx/image/impl/ByteGrayAlpha$Accessor;->isPremult:Z

    if-nez v5, :cond_0

    move v5, v3

    move v6, v4

    invoke-static {v5, v6}, Lcom/sun/javafx/image/PixelUtils;->NonPretoPre(II)I

    move-result v5

    move v3, v5

    .line 81
    :cond_0
    move v5, v4

    const/16 v6, 0x18

    shl-int/lit8 v5, v5, 0x18

    move v6, v3

    const/16 v7, 0x10

    shl-int/lit8 v6, v6, 0x10

    or-int/2addr v5, v6

    move v6, v3

    const/16 v7, 0x8

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v5, v6

    move v6, v3

    or-int/2addr v5, v6

    move v0, v5

    .end local v0    # "this":Lcom/sun/javafx/image/impl/ByteGrayAlpha$Accessor;
    return v0
.end method

.method public getNumElements()I
    .locals 2

    .prologue
    .line 65
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/image/impl/ByteGrayAlpha$Accessor;
    const/4 v1, 0x2

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/image/impl/ByteGrayAlpha$Accessor;
    return v0
.end method

.method public bridge synthetic setArgb(Ljava/nio/Buffer;II)V
    .locals 8

    .prologue
    .line 49
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/image/impl/ByteGrayAlpha$Accessor;
    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, v0

    move-object v5, v1

    check-cast v5, Ljava/nio/ByteBuffer;

    move v6, v2

    move v7, v3

    invoke-virtual {v4, v5, v6, v7}, Lcom/sun/javafx/image/impl/ByteGrayAlpha$Accessor;->setArgb(Ljava/nio/ByteBuffer;II)V

    return-void
.end method

.method public setArgb(Ljava/nio/ByteBuffer;II)V
    .locals 9

    .prologue
    .line 120
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/image/impl/ByteGrayAlpha$Accessor;
    move-object v1, p1

    .local v1, "buf":Ljava/nio/ByteBuffer;
    move v2, p2

    .local v2, "offset":I
    move v3, p3

    .local v3, "argb":I
    move v6, v3

    invoke-static {v6}, Lcom/sun/javafx/image/PixelUtils;->RgbToGray(I)I

    move-result v6

    move v4, v6

    .line 121
    .local v4, "g":I
    move v6, v3

    const/16 v7, 0x18

    ushr-int/lit8 v6, v6, 0x18

    move v5, v6

    .line 122
    .local v5, "a":I
    move-object v6, v0

    iget-boolean v6, v6, Lcom/sun/javafx/image/impl/ByteGrayAlpha$Accessor;->isPremult:Z

    if-eqz v6, :cond_0

    move v6, v4

    move v7, v5

    invoke-static {v6, v7}, Lcom/sun/javafx/image/PixelUtils;->NonPretoPre(II)I

    move-result v6

    move v4, v6

    .line 123
    :cond_0
    move-object v6, v1

    move v7, v2

    move v8, v4

    int-to-byte v8, v8

    invoke-virtual {v6, v7, v8}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 124
    move-object v6, v1

    move v7, v2

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    move v8, v5

    int-to-byte v8, v8

    invoke-virtual {v6, v7, v8}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 125
    return-void
.end method

.method public setArgb([BII)V
    .locals 9

    .prologue
    .line 102
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/image/impl/ByteGrayAlpha$Accessor;
    move-object v1, p1

    .local v1, "arr":[B
    move v2, p2

    .local v2, "offset":I
    move v3, p3

    .local v3, "argb":I
    move v6, v3

    invoke-static {v6}, Lcom/sun/javafx/image/PixelUtils;->RgbToGray(I)I

    move-result v6

    move v4, v6

    .line 103
    .local v4, "g":I
    move v6, v3

    const/16 v7, 0x18

    ushr-int/lit8 v6, v6, 0x18

    move v5, v6

    .line 104
    .local v5, "a":I
    move-object v6, v0

    iget-boolean v6, v6, Lcom/sun/javafx/image/impl/ByteGrayAlpha$Accessor;->isPremult:Z

    if-eqz v6, :cond_0

    move v6, v4

    move v7, v5

    invoke-static {v6, v7}, Lcom/sun/javafx/image/PixelUtils;->NonPretoPre(II)I

    move-result v6

    move v4, v6

    .line 105
    :cond_0
    move-object v6, v1

    move v7, v2

    move v8, v4

    int-to-byte v8, v8

    aput-byte v8, v6, v7

    .line 106
    move-object v6, v1

    move v7, v2

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    move v8, v5

    int-to-byte v8, v8

    aput-byte v8, v6, v7

    .line 107
    return-void
.end method

.method public bridge synthetic setArgbPre(Ljava/nio/Buffer;II)V
    .locals 8

    .prologue
    .line 49
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/image/impl/ByteGrayAlpha$Accessor;
    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, v0

    move-object v5, v1

    check-cast v5, Ljava/nio/ByteBuffer;

    move v6, v2

    move v7, v3

    invoke-virtual {v4, v5, v6, v7}, Lcom/sun/javafx/image/impl/ByteGrayAlpha$Accessor;->setArgbPre(Ljava/nio/ByteBuffer;II)V

    return-void
.end method

.method public setArgbPre(Ljava/nio/ByteBuffer;II)V
    .locals 9

    .prologue
    .line 129
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/image/impl/ByteGrayAlpha$Accessor;
    move-object v1, p1

    .local v1, "buf":Ljava/nio/ByteBuffer;
    move v2, p2

    .local v2, "offset":I
    move v3, p3

    .local v3, "argbpre":I
    move v6, v3

    invoke-static {v6}, Lcom/sun/javafx/image/PixelUtils;->RgbToGray(I)I

    move-result v6

    move v4, v6

    .line 130
    .local v4, "g":I
    move v6, v3

    const/16 v7, 0x18

    ushr-int/lit8 v6, v6, 0x18

    move v5, v6

    .line 131
    .local v5, "a":I
    move-object v6, v0

    iget-boolean v6, v6, Lcom/sun/javafx/image/impl/ByteGrayAlpha$Accessor;->isPremult:Z

    if-nez v6, :cond_0

    move v6, v4

    move v7, v5

    invoke-static {v6, v7}, Lcom/sun/javafx/image/PixelUtils;->PreToNonPre(II)I

    move-result v6

    move v4, v6

    .line 132
    :cond_0
    move-object v6, v1

    move v7, v2

    move v8, v4

    int-to-byte v8, v8

    invoke-virtual {v6, v7, v8}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 133
    move-object v6, v1

    move v7, v2

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    move v8, v5

    int-to-byte v8, v8

    invoke-virtual {v6, v7, v8}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 134
    return-void
.end method

.method public setArgbPre([BII)V
    .locals 9

    .prologue
    .line 111
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/image/impl/ByteGrayAlpha$Accessor;
    move-object v1, p1

    .local v1, "arr":[B
    move v2, p2

    .local v2, "offset":I
    move v3, p3

    .local v3, "argbpre":I
    move v6, v3

    invoke-static {v6}, Lcom/sun/javafx/image/PixelUtils;->RgbToGray(I)I

    move-result v6

    move v4, v6

    .line 112
    .local v4, "g":I
    move v6, v3

    const/16 v7, 0x18

    ushr-int/lit8 v6, v6, 0x18

    move v5, v6

    .line 113
    .local v5, "a":I
    move-object v6, v0

    iget-boolean v6, v6, Lcom/sun/javafx/image/impl/ByteGrayAlpha$Accessor;->isPremult:Z

    if-nez v6, :cond_0

    move v6, v4

    move v7, v5

    invoke-static {v6, v7}, Lcom/sun/javafx/image/PixelUtils;->PreToNonPre(II)I

    move-result v6

    move v4, v6

    .line 114
    :cond_0
    move-object v6, v1

    move v7, v2

    move v8, v4

    int-to-byte v8, v8

    aput-byte v8, v6, v7

    .line 115
    move-object v6, v1

    move v7, v2

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    move v8, v5

    int-to-byte v8, v8

    aput-byte v8, v6, v7

    .line 116
    return-void
.end method
