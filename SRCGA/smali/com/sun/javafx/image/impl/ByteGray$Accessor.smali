.class Lcom/sun/javafx/image/impl/ByteGray$Accessor;
.super Ljava/lang/Object;
.source "ByteGray.java"

# interfaces
.implements Lcom/sun/javafx/image/BytePixelAccessor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/image/impl/ByteGray;
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
    .line 73
    new-instance v0, Lcom/sun/javafx/image/impl/ByteGray$Accessor;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Lcom/sun/javafx/image/impl/ByteGray$Accessor;-><init>()V

    sput-object v0, Lcom/sun/javafx/image/impl/ByteGray$Accessor;->instance:Lcom/sun/javafx/image/BytePixelAccessor;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 74
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/image/impl/ByteGray$Accessor;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAlphaType()Lcom/sun/javafx/image/AlphaType;
    .locals 2

    .prologue
    .line 78
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/image/impl/ByteGray$Accessor;
    sget-object v1, Lcom/sun/javafx/image/AlphaType;->OPAQUE:Lcom/sun/javafx/image/AlphaType;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/image/impl/ByteGray$Accessor;
    return-object v0
.end method

.method public bridge synthetic getArgb(Ljava/nio/Buffer;I)I
    .locals 6

    .prologue
    .line 72
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/image/impl/ByteGray$Accessor;
    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    check-cast v4, Ljava/nio/ByteBuffer;

    move v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/image/impl/ByteGray$Accessor;->getArgb(Ljava/nio/ByteBuffer;I)I

    move-result v3

    move v0, v3

    .end local v0    # "this":Lcom/sun/javafx/image/impl/ByteGray$Accessor;
    return v0
.end method

.method public getArgb(Ljava/nio/ByteBuffer;I)I
    .locals 7

    .prologue
    .line 100
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/image/impl/ByteGray$Accessor;
    move-object v1, p1

    .local v1, "buf":Ljava/nio/ByteBuffer;
    move v2, p2

    .local v2, "offset":I
    move-object v4, v1

    move v5, v2

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v4

    const/16 v5, 0xff

    and-int/lit16 v4, v4, 0xff

    move v3, v4

    .line 101
    .local v3, "g":I
    const/high16 v4, -0x1000000

    move v5, v3

    const/16 v6, 0x10

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v4, v5

    move v5, v3

    const/16 v6, 0x8

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v4, v5

    move v5, v3

    or-int/2addr v4, v5

    move v0, v4

    .end local v0    # "this":Lcom/sun/javafx/image/impl/ByteGray$Accessor;
    return v0
.end method

.method public getArgb([BI)I
    .locals 7

    .prologue
    .line 88
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/image/impl/ByteGray$Accessor;
    move-object v1, p1

    .local v1, "arr":[B
    move v2, p2

    .local v2, "offset":I
    move-object v4, v1

    move v5, v2

    aget-byte v4, v4, v5

    const/16 v5, 0xff

    and-int/lit16 v4, v4, 0xff

    move v3, v4

    .line 89
    .local v3, "g":I
    const/high16 v4, -0x1000000

    move v5, v3

    const/16 v6, 0x10

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v4, v5

    move v5, v3

    const/16 v6, 0x8

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v4, v5

    move v5, v3

    or-int/2addr v4, v5

    move v0, v4

    .end local v0    # "this":Lcom/sun/javafx/image/impl/ByteGray$Accessor;
    return v0
.end method

.method public bridge synthetic getArgbPre(Ljava/nio/Buffer;I)I
    .locals 6

    .prologue
    .line 72
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/image/impl/ByteGray$Accessor;
    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    check-cast v4, Ljava/nio/ByteBuffer;

    move v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/image/impl/ByteGray$Accessor;->getArgbPre(Ljava/nio/ByteBuffer;I)I

    move-result v3

    move v0, v3

    .end local v0    # "this":Lcom/sun/javafx/image/impl/ByteGray$Accessor;
    return v0
.end method

.method public getArgbPre(Ljava/nio/ByteBuffer;I)I
    .locals 7

    .prologue
    .line 106
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/image/impl/ByteGray$Accessor;
    move-object v1, p1

    .local v1, "buf":Ljava/nio/ByteBuffer;
    move v2, p2

    .local v2, "offset":I
    move-object v4, v1

    move v5, v2

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v4

    const/16 v5, 0xff

    and-int/lit16 v4, v4, 0xff

    move v3, v4

    .line 107
    .local v3, "g":I
    const/high16 v4, -0x1000000

    move v5, v3

    const/16 v6, 0x10

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v4, v5

    move v5, v3

    const/16 v6, 0x8

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v4, v5

    move v5, v3

    or-int/2addr v4, v5

    move v0, v4

    .end local v0    # "this":Lcom/sun/javafx/image/impl/ByteGray$Accessor;
    return v0
.end method

.method public getArgbPre([BI)I
    .locals 7

    .prologue
    .line 94
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/image/impl/ByteGray$Accessor;
    move-object v1, p1

    .local v1, "arr":[B
    move v2, p2

    .local v2, "offset":I
    move-object v4, v1

    move v5, v2

    aget-byte v4, v4, v5

    const/16 v5, 0xff

    and-int/lit16 v4, v4, 0xff

    move v3, v4

    .line 95
    .local v3, "g":I
    const/high16 v4, -0x1000000

    move v5, v3

    const/16 v6, 0x10

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v4, v5

    move v5, v3

    const/16 v6, 0x8

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v4, v5

    move v5, v3

    or-int/2addr v4, v5

    move v0, v4

    .end local v0    # "this":Lcom/sun/javafx/image/impl/ByteGray$Accessor;
    return v0
.end method

.method public getNumElements()I
    .locals 2

    .prologue
    .line 83
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/image/impl/ByteGray$Accessor;
    const/4 v1, 0x1

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/image/impl/ByteGray$Accessor;
    return v0
.end method

.method public bridge synthetic setArgb(Ljava/nio/Buffer;II)V
    .locals 8

    .prologue
    .line 72
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/image/impl/ByteGray$Accessor;
    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, v0

    move-object v5, v1

    check-cast v5, Ljava/nio/ByteBuffer;

    move v6, v2

    move v7, v3

    invoke-virtual {v4, v5, v6, v7}, Lcom/sun/javafx/image/impl/ByteGray$Accessor;->setArgb(Ljava/nio/ByteBuffer;II)V

    return-void
.end method

.method public setArgb(Ljava/nio/ByteBuffer;II)V
    .locals 7

    .prologue
    .line 122
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/image/impl/ByteGray$Accessor;
    move-object v1, p1

    .local v1, "buf":Ljava/nio/ByteBuffer;
    move v2, p2

    .local v2, "offset":I
    move v3, p3

    .local v3, "argb":I
    move-object v4, v1

    move v5, v2

    move v6, v3

    invoke-static {v6}, Lcom/sun/javafx/image/PixelUtils;->RgbToGray(I)I

    move-result v6

    int-to-byte v6, v6

    invoke-virtual {v4, v5, v6}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 123
    return-void
.end method

.method public setArgb([BII)V
    .locals 7

    .prologue
    .line 112
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/image/impl/ByteGray$Accessor;
    move-object v1, p1

    .local v1, "arr":[B
    move v2, p2

    .local v2, "offset":I
    move v3, p3

    .local v3, "argb":I
    move-object v4, v1

    move v5, v2

    move v6, v3

    invoke-static {v6}, Lcom/sun/javafx/image/PixelUtils;->RgbToGray(I)I

    move-result v6

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    .line 113
    return-void
.end method

.method public bridge synthetic setArgbPre(Ljava/nio/Buffer;II)V
    .locals 8

    .prologue
    .line 72
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/image/impl/ByteGray$Accessor;
    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, v0

    move-object v5, v1

    check-cast v5, Ljava/nio/ByteBuffer;

    move v6, v2

    move v7, v3

    invoke-virtual {v4, v5, v6, v7}, Lcom/sun/javafx/image/impl/ByteGray$Accessor;->setArgbPre(Ljava/nio/ByteBuffer;II)V

    return-void
.end method

.method public setArgbPre(Ljava/nio/ByteBuffer;II)V
    .locals 8

    .prologue
    .line 127
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/image/impl/ByteGray$Accessor;
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

    invoke-virtual {v4, v5, v6, v7}, Lcom/sun/javafx/image/impl/ByteGray$Accessor;->setArgb(Ljava/nio/ByteBuffer;II)V

    .line 128
    return-void
.end method

.method public setArgbPre([BII)V
    .locals 8

    .prologue
    .line 117
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/image/impl/ByteGray$Accessor;
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

    invoke-virtual {v4, v5, v6, v7}, Lcom/sun/javafx/image/impl/ByteGray$Accessor;->setArgb([BII)V

    .line 118
    return-void
.end method
