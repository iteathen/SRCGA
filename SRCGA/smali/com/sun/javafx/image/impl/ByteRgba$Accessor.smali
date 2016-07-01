.class Lcom/sun/javafx/image/impl/ByteRgba$Accessor;
.super Ljava/lang/Object;
.source "ByteRgba.java"

# interfaces
.implements Lcom/sun/javafx/image/BytePixelAccessor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/image/impl/ByteRgba;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Accessor"
.end annotation


# static fields
.field static final instance:Lcom/sun/javafx/image/BytePixelAccessor;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 66
    new-instance v0, Lcom/sun/javafx/image/impl/ByteRgba$Accessor;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Lcom/sun/javafx/image/impl/ByteRgba$Accessor;-><init>()V

    sput-object v0, Lcom/sun/javafx/image/impl/ByteRgba$Accessor;->instance:Lcom/sun/javafx/image/BytePixelAccessor;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 67
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/image/impl/ByteRgba$Accessor;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAlphaType()Lcom/sun/javafx/image/AlphaType;
    .locals 2

    .prologue
    .line 71
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/image/impl/ByteRgba$Accessor;
    sget-object v1, Lcom/sun/javafx/image/AlphaType;->NONPREMULTIPLIED:Lcom/sun/javafx/image/AlphaType;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/image/impl/ByteRgba$Accessor;
    return-object v0
.end method

.method public bridge synthetic getArgb(Ljava/nio/Buffer;I)I
    .locals 6

    .prologue
    .line 65
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/image/impl/ByteRgba$Accessor;
    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    check-cast v4, Ljava/nio/ByteBuffer;

    move v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/image/impl/ByteRgba$Accessor;->getArgb(Ljava/nio/ByteBuffer;I)I

    move-result v3

    move v0, v3

    .end local v0    # "this":Lcom/sun/javafx/image/impl/ByteRgba$Accessor;
    return v0
.end method

.method public getArgb(Ljava/nio/ByteBuffer;I)I
    .locals 7

    .prologue
    .line 94
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/image/impl/ByteRgba$Accessor;
    move-object v1, p1

    .local v1, "buf":Ljava/nio/ByteBuffer;
    move v2, p2

    .local v2, "offset":I
    move-object v3, v1

    move v4, v2

    const/4 v5, 0x2

    add-int/lit8 v4, v4, 0x2

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v3

    const/16 v4, 0xff

    and-int/lit16 v3, v3, 0xff

    move-object v4, v1

    move v5, v2

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    .line 95
    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v4

    const/16 v5, 0xff

    and-int/lit16 v4, v4, 0xff

    const/16 v5, 0x8

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v3, v4

    move-object v4, v1

    move v5, v2

    .line 96
    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v4

    const/16 v5, 0xff

    and-int/lit16 v4, v4, 0xff

    const/16 v5, 0x10

    shl-int/lit8 v4, v4, 0x10

    or-int/2addr v3, v4

    move-object v4, v1

    move v5, v2

    const/4 v6, 0x3

    add-int/lit8 v5, v5, 0x3

    .line 97
    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v4

    const/16 v5, 0x18

    shl-int/lit8 v4, v4, 0x18

    or-int/2addr v3, v4

    move v0, v3

    .end local v0    # "this":Lcom/sun/javafx/image/impl/ByteRgba$Accessor;
    return v0
.end method

.method public getArgb([BI)I
    .locals 7

    .prologue
    .line 81
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/image/impl/ByteRgba$Accessor;
    move-object v1, p1

    .local v1, "arr":[B
    move v2, p2

    .local v2, "offset":I
    move-object v3, v1

    move v4, v2

    const/4 v5, 0x2

    add-int/lit8 v4, v4, 0x2

    aget-byte v3, v3, v4

    const/16 v4, 0xff

    and-int/lit16 v3, v3, 0xff

    move-object v4, v1

    move v5, v2

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    aget-byte v4, v4, v5

    const/16 v5, 0xff

    and-int/lit16 v4, v4, 0xff

    const/16 v5, 0x8

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v3, v4

    move-object v4, v1

    move v5, v2

    aget-byte v4, v4, v5

    const/16 v5, 0xff

    and-int/lit16 v4, v4, 0xff

    const/16 v5, 0x10

    shl-int/lit8 v4, v4, 0x10

    or-int/2addr v3, v4

    move-object v4, v1

    move v5, v2

    const/4 v6, 0x3

    add-int/lit8 v5, v5, 0x3

    aget-byte v4, v4, v5

    const/16 v5, 0x18

    shl-int/lit8 v4, v4, 0x18

    or-int/2addr v3, v4

    move v0, v3

    .end local v0    # "this":Lcom/sun/javafx/image/impl/ByteRgba$Accessor;
    return v0
.end method

.method public bridge synthetic getArgbPre(Ljava/nio/Buffer;I)I
    .locals 6

    .prologue
    .line 65
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/image/impl/ByteRgba$Accessor;
    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    check-cast v4, Ljava/nio/ByteBuffer;

    move v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/image/impl/ByteRgba$Accessor;->getArgbPre(Ljava/nio/ByteBuffer;I)I

    move-result v3

    move v0, v3

    .end local v0    # "this":Lcom/sun/javafx/image/impl/ByteRgba$Accessor;
    return v0
.end method

.method public getArgbPre(Ljava/nio/ByteBuffer;I)I
    .locals 6

    .prologue
    .line 102
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/image/impl/ByteRgba$Accessor;
    move-object v1, p1

    .local v1, "buf":Ljava/nio/ByteBuffer;
    move v2, p2

    .local v2, "offset":I
    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/image/impl/ByteRgba$Accessor;->getArgb(Ljava/nio/ByteBuffer;I)I

    move-result v3

    invoke-static {v3}, Lcom/sun/javafx/image/PixelUtils;->NonPretoPre(I)I

    move-result v3

    move v0, v3

    .end local v0    # "this":Lcom/sun/javafx/image/impl/ByteRgba$Accessor;
    return v0
.end method

.method public getArgbPre([BI)I
    .locals 6

    .prologue
    .line 89
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/image/impl/ByteRgba$Accessor;
    move-object v1, p1

    .local v1, "arr":[B
    move v2, p2

    .local v2, "offset":I
    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/image/impl/ByteRgba$Accessor;->getArgb([BI)I

    move-result v3

    invoke-static {v3}, Lcom/sun/javafx/image/PixelUtils;->NonPretoPre(I)I

    move-result v3

    move v0, v3

    .end local v0    # "this":Lcom/sun/javafx/image/impl/ByteRgba$Accessor;
    return v0
.end method

.method public getNumElements()I
    .locals 2

    .prologue
    .line 76
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/image/impl/ByteRgba$Accessor;
    const/4 v1, 0x4

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/image/impl/ByteRgba$Accessor;
    return v0
.end method

.method public bridge synthetic setArgb(Ljava/nio/Buffer;II)V
    .locals 8

    .prologue
    .line 65
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/image/impl/ByteRgba$Accessor;
    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, v0

    move-object v5, v1

    check-cast v5, Ljava/nio/ByteBuffer;

    move v6, v2

    move v7, v3

    invoke-virtual {v4, v5, v6, v7}, Lcom/sun/javafx/image/impl/ByteRgba$Accessor;->setArgb(Ljava/nio/ByteBuffer;II)V

    return-void
.end method

.method public setArgb(Ljava/nio/ByteBuffer;II)V
    .locals 8

    .prologue
    .line 120
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/image/impl/ByteRgba$Accessor;
    move-object v1, p1

    .local v1, "buf":Ljava/nio/ByteBuffer;
    move v2, p2

    .local v2, "offset":I
    move v3, p3

    .local v3, "argb":I
    move-object v4, v1

    move v5, v2

    move v6, v3

    const/16 v7, 0x10

    shr-int/lit8 v6, v6, 0x10

    int-to-byte v6, v6

    invoke-virtual {v4, v5, v6}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 121
    move-object v4, v1

    move v5, v2

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    move v6, v3

    const/16 v7, 0x8

    shr-int/lit8 v6, v6, 0x8

    int-to-byte v6, v6

    invoke-virtual {v4, v5, v6}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 122
    move-object v4, v1

    move v5, v2

    const/4 v6, 0x2

    add-int/lit8 v5, v5, 0x2

    move v6, v3

    int-to-byte v6, v6

    invoke-virtual {v4, v5, v6}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 123
    move-object v4, v1

    move v5, v2

    const/4 v6, 0x3

    add-int/lit8 v5, v5, 0x3

    move v6, v3

    const/16 v7, 0x18

    shr-int/lit8 v6, v6, 0x18

    int-to-byte v6, v6

    invoke-virtual {v4, v5, v6}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 124
    return-void
.end method

.method public setArgb([BII)V
    .locals 8

    .prologue
    .line 107
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/image/impl/ByteRgba$Accessor;
    move-object v1, p1

    .local v1, "arr":[B
    move v2, p2

    .local v2, "offset":I
    move v3, p3

    .local v3, "argb":I
    move-object v4, v1

    move v5, v2

    move v6, v3

    const/16 v7, 0x10

    shr-int/lit8 v6, v6, 0x10

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    .line 108
    move-object v4, v1

    move v5, v2

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    move v6, v3

    const/16 v7, 0x8

    shr-int/lit8 v6, v6, 0x8

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    .line 109
    move-object v4, v1

    move v5, v2

    const/4 v6, 0x2

    add-int/lit8 v5, v5, 0x2

    move v6, v3

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    .line 110
    move-object v4, v1

    move v5, v2

    const/4 v6, 0x3

    add-int/lit8 v5, v5, 0x3

    move v6, v3

    const/16 v7, 0x18

    shr-int/lit8 v6, v6, 0x18

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    .line 111
    return-void
.end method

.method public bridge synthetic setArgbPre(Ljava/nio/Buffer;II)V
    .locals 8

    .prologue
    .line 65
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/image/impl/ByteRgba$Accessor;
    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, v0

    move-object v5, v1

    check-cast v5, Ljava/nio/ByteBuffer;

    move v6, v2

    move v7, v3

    invoke-virtual {v4, v5, v6, v7}, Lcom/sun/javafx/image/impl/ByteRgba$Accessor;->setArgbPre(Ljava/nio/ByteBuffer;II)V

    return-void
.end method

.method public setArgbPre(Ljava/nio/ByteBuffer;II)V
    .locals 8

    .prologue
    .line 128
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/image/impl/ByteRgba$Accessor;
    move-object v1, p1

    .local v1, "buf":Ljava/nio/ByteBuffer;
    move v2, p2

    .local v2, "offset":I
    move v3, p3

    .local v3, "argbpre":I
    move-object v4, v0

    move-object v5, v1

    move v6, v2

    move v7, v3

    invoke-static {v7}, Lcom/sun/javafx/image/PixelUtils;->PretoNonPre(I)I

    move-result v7

    invoke-virtual {v4, v5, v6, v7}, Lcom/sun/javafx/image/impl/ByteRgba$Accessor;->setArgb(Ljava/nio/ByteBuffer;II)V

    .line 129
    return-void
.end method

.method public setArgbPre([BII)V
    .locals 8

    .prologue
    .line 115
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/image/impl/ByteRgba$Accessor;
    move-object v1, p1

    .local v1, "arr":[B
    move v2, p2

    .local v2, "offset":I
    move v3, p3

    .local v3, "argbpre":I
    move-object v4, v0

    move-object v5, v1

    move v6, v2

    move v7, v3

    invoke-static {v7}, Lcom/sun/javafx/image/PixelUtils;->PretoNonPre(I)I

    move-result v7

    invoke-virtual {v4, v5, v6, v7}, Lcom/sun/javafx/image/impl/ByteRgba$Accessor;->setArgb([BII)V

    .line 116
    return-void
.end method
