.class Lcom/sun/javafx/image/impl/ByteArgb$Accessor;
.super Ljava/lang/Object;
.source "ByteArgb.java"

# interfaces
.implements Lcom/sun/javafx/image/BytePixelAccessor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/image/impl/ByteArgb;
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
    .line 41
    new-instance v0, Lcom/sun/javafx/image/impl/ByteArgb$Accessor;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Lcom/sun/javafx/image/impl/ByteArgb$Accessor;-><init>()V

    sput-object v0, Lcom/sun/javafx/image/impl/ByteArgb$Accessor;->instance:Lcom/sun/javafx/image/BytePixelAccessor;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 42
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/image/impl/ByteArgb$Accessor;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAlphaType()Lcom/sun/javafx/image/AlphaType;
    .locals 2

    .prologue
    .line 46
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/image/impl/ByteArgb$Accessor;
    sget-object v1, Lcom/sun/javafx/image/AlphaType;->NONPREMULTIPLIED:Lcom/sun/javafx/image/AlphaType;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/image/impl/ByteArgb$Accessor;
    return-object v0
.end method

.method public bridge synthetic getArgb(Ljava/nio/Buffer;I)I
    .locals 6

    .prologue
    .line 40
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/image/impl/ByteArgb$Accessor;
    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    check-cast v4, Ljava/nio/ByteBuffer;

    move v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/image/impl/ByteArgb$Accessor;->getArgb(Ljava/nio/ByteBuffer;I)I

    move-result v3

    move v0, v3

    .end local v0    # "this":Lcom/sun/javafx/image/impl/ByteArgb$Accessor;
    return v0
.end method

.method public getArgb(Ljava/nio/ByteBuffer;I)I
    .locals 7

    .prologue
    .line 69
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/image/impl/ByteArgb$Accessor;
    move-object v1, p1

    .local v1, "buf":Ljava/nio/ByteBuffer;
    move v2, p2

    .local v2, "offset":I
    move-object v3, v1

    move v4, v2

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v3

    const/16 v4, 0x18

    shl-int/lit8 v3, v3, 0x18

    move-object v4, v1

    move v5, v2

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    .line 70
    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v4

    const/16 v5, 0xff

    and-int/lit16 v4, v4, 0xff

    const/16 v5, 0x10

    shl-int/lit8 v4, v4, 0x10

    or-int/2addr v3, v4

    move-object v4, v1

    move v5, v2

    const/4 v6, 0x2

    add-int/lit8 v5, v5, 0x2

    .line 71
    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v4

    const/16 v5, 0xff

    and-int/lit16 v4, v4, 0xff

    const/16 v5, 0x8

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v3, v4

    move-object v4, v1

    move v5, v2

    const/4 v6, 0x3

    add-int/lit8 v5, v5, 0x3

    .line 72
    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v4

    const/16 v5, 0xff

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v3, v4

    move v0, v3

    .end local v0    # "this":Lcom/sun/javafx/image/impl/ByteArgb$Accessor;
    return v0
.end method

.method public getArgb([BI)I
    .locals 7

    .prologue
    .line 56
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/image/impl/ByteArgb$Accessor;
    move-object v1, p1

    .local v1, "arr":[B
    move v2, p2

    .local v2, "offset":I
    move-object v3, v1

    move v4, v2

    aget-byte v3, v3, v4

    const/16 v4, 0x18

    shl-int/lit8 v3, v3, 0x18

    move-object v4, v1

    move v5, v2

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    aget-byte v4, v4, v5

    const/16 v5, 0xff

    and-int/lit16 v4, v4, 0xff

    const/16 v5, 0x10

    shl-int/lit8 v4, v4, 0x10

    or-int/2addr v3, v4

    move-object v4, v1

    move v5, v2

    const/4 v6, 0x2

    add-int/lit8 v5, v5, 0x2

    aget-byte v4, v4, v5

    const/16 v5, 0xff

    and-int/lit16 v4, v4, 0xff

    const/16 v5, 0x8

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v3, v4

    move-object v4, v1

    move v5, v2

    const/4 v6, 0x3

    add-int/lit8 v5, v5, 0x3

    aget-byte v4, v4, v5

    const/16 v5, 0xff

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v3, v4

    move v0, v3

    .end local v0    # "this":Lcom/sun/javafx/image/impl/ByteArgb$Accessor;
    return v0
.end method

.method public bridge synthetic getArgbPre(Ljava/nio/Buffer;I)I
    .locals 6

    .prologue
    .line 40
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/image/impl/ByteArgb$Accessor;
    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    check-cast v4, Ljava/nio/ByteBuffer;

    move v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/image/impl/ByteArgb$Accessor;->getArgbPre(Ljava/nio/ByteBuffer;I)I

    move-result v3

    move v0, v3

    .end local v0    # "this":Lcom/sun/javafx/image/impl/ByteArgb$Accessor;
    return v0
.end method

.method public getArgbPre(Ljava/nio/ByteBuffer;I)I
    .locals 6

    .prologue
    .line 77
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/image/impl/ByteArgb$Accessor;
    move-object v1, p1

    .local v1, "buf":Ljava/nio/ByteBuffer;
    move v2, p2

    .local v2, "offset":I
    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/image/impl/ByteArgb$Accessor;->getArgb(Ljava/nio/ByteBuffer;I)I

    move-result v3

    invoke-static {v3}, Lcom/sun/javafx/image/PixelUtils;->NonPretoPre(I)I

    move-result v3

    move v0, v3

    .end local v0    # "this":Lcom/sun/javafx/image/impl/ByteArgb$Accessor;
    return v0
.end method

.method public getArgbPre([BI)I
    .locals 6

    .prologue
    .line 64
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/image/impl/ByteArgb$Accessor;
    move-object v1, p1

    .local v1, "arr":[B
    move v2, p2

    .local v2, "offset":I
    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/image/impl/ByteArgb$Accessor;->getArgb([BI)I

    move-result v3

    invoke-static {v3}, Lcom/sun/javafx/image/PixelUtils;->NonPretoPre(I)I

    move-result v3

    move v0, v3

    .end local v0    # "this":Lcom/sun/javafx/image/impl/ByteArgb$Accessor;
    return v0
.end method

.method public getNumElements()I
    .locals 2

    .prologue
    .line 51
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/image/impl/ByteArgb$Accessor;
    const/4 v1, 0x4

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/image/impl/ByteArgb$Accessor;
    return v0
.end method

.method public bridge synthetic setArgb(Ljava/nio/Buffer;II)V
    .locals 8

    .prologue
    .line 40
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/image/impl/ByteArgb$Accessor;
    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, v0

    move-object v5, v1

    check-cast v5, Ljava/nio/ByteBuffer;

    move v6, v2

    move v7, v3

    invoke-virtual {v4, v5, v6, v7}, Lcom/sun/javafx/image/impl/ByteArgb$Accessor;->setArgb(Ljava/nio/ByteBuffer;II)V

    return-void
.end method

.method public setArgb(Ljava/nio/ByteBuffer;II)V
    .locals 8

    .prologue
    .line 95
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/image/impl/ByteArgb$Accessor;
    move-object v1, p1

    .local v1, "buf":Ljava/nio/ByteBuffer;
    move v2, p2

    .local v2, "offset":I
    move v3, p3

    .local v3, "argb":I
    move-object v4, v1

    move v5, v2

    move v6, v3

    const/16 v7, 0x18

    shr-int/lit8 v6, v6, 0x18

    int-to-byte v6, v6

    invoke-virtual {v4, v5, v6}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 96
    move-object v4, v1

    move v5, v2

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    move v6, v3

    const/16 v7, 0x10

    shr-int/lit8 v6, v6, 0x10

    int-to-byte v6, v6

    invoke-virtual {v4, v5, v6}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 97
    move-object v4, v1

    move v5, v2

    const/4 v6, 0x2

    add-int/lit8 v5, v5, 0x2

    move v6, v3

    const/16 v7, 0x8

    shr-int/lit8 v6, v6, 0x8

    int-to-byte v6, v6

    invoke-virtual {v4, v5, v6}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 98
    move-object v4, v1

    move v5, v2

    const/4 v6, 0x3

    add-int/lit8 v5, v5, 0x3

    move v6, v3

    int-to-byte v6, v6

    invoke-virtual {v4, v5, v6}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 99
    return-void
.end method

.method public setArgb([BII)V
    .locals 8

    .prologue
    .line 82
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/image/impl/ByteArgb$Accessor;
    move-object v1, p1

    .local v1, "arr":[B
    move v2, p2

    .local v2, "offset":I
    move v3, p3

    .local v3, "argb":I
    move-object v4, v1

    move v5, v2

    move v6, v3

    const/16 v7, 0x18

    shr-int/lit8 v6, v6, 0x18

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    .line 83
    move-object v4, v1

    move v5, v2

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    move v6, v3

    const/16 v7, 0x10

    shr-int/lit8 v6, v6, 0x10

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    .line 84
    move-object v4, v1

    move v5, v2

    const/4 v6, 0x2

    add-int/lit8 v5, v5, 0x2

    move v6, v3

    const/16 v7, 0x8

    shr-int/lit8 v6, v6, 0x8

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    .line 85
    move-object v4, v1

    move v5, v2

    const/4 v6, 0x3

    add-int/lit8 v5, v5, 0x3

    move v6, v3

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    .line 86
    return-void
.end method

.method public bridge synthetic setArgbPre(Ljava/nio/Buffer;II)V
    .locals 8

    .prologue
    .line 40
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/image/impl/ByteArgb$Accessor;
    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, v0

    move-object v5, v1

    check-cast v5, Ljava/nio/ByteBuffer;

    move v6, v2

    move v7, v3

    invoke-virtual {v4, v5, v6, v7}, Lcom/sun/javafx/image/impl/ByteArgb$Accessor;->setArgbPre(Ljava/nio/ByteBuffer;II)V

    return-void
.end method

.method public setArgbPre(Ljava/nio/ByteBuffer;II)V
    .locals 8

    .prologue
    .line 103
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/image/impl/ByteArgb$Accessor;
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

    invoke-virtual {v4, v5, v6, v7}, Lcom/sun/javafx/image/impl/ByteArgb$Accessor;->setArgb(Ljava/nio/ByteBuffer;II)V

    .line 104
    return-void
.end method

.method public setArgbPre([BII)V
    .locals 8

    .prologue
    .line 90
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/image/impl/ByteArgb$Accessor;
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

    invoke-virtual {v4, v5, v6, v7}, Lcom/sun/javafx/image/impl/ByteArgb$Accessor;->setArgb([BII)V

    .line 91
    return-void
.end method
