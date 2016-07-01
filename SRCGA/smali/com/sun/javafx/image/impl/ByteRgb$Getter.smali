.class Lcom/sun/javafx/image/impl/ByteRgb$Getter;
.super Ljava/lang/Object;
.source "ByteRgb.java"

# interfaces
.implements Lcom/sun/javafx/image/BytePixelGetter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/image/impl/ByteRgb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Getter"
.end annotation


# static fields
.field static final instance:Lcom/sun/javafx/image/BytePixelGetter;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 65
    new-instance v0, Lcom/sun/javafx/image/impl/ByteRgb$Getter;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Lcom/sun/javafx/image/impl/ByteRgb$Getter;-><init>()V

    sput-object v0, Lcom/sun/javafx/image/impl/ByteRgb$Getter;->instance:Lcom/sun/javafx/image/BytePixelGetter;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 66
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/image/impl/ByteRgb$Getter;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAlphaType()Lcom/sun/javafx/image/AlphaType;
    .locals 2

    .prologue
    .line 70
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/image/impl/ByteRgb$Getter;
    sget-object v1, Lcom/sun/javafx/image/AlphaType;->OPAQUE:Lcom/sun/javafx/image/AlphaType;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/image/impl/ByteRgb$Getter;
    return-object v0
.end method

.method public bridge synthetic getArgb(Ljava/nio/Buffer;I)I
    .locals 6

    .prologue
    .line 64
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/image/impl/ByteRgb$Getter;
    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    check-cast v4, Ljava/nio/ByteBuffer;

    move v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/image/impl/ByteRgb$Getter;->getArgb(Ljava/nio/ByteBuffer;I)I

    move-result v3

    move v0, v3

    .end local v0    # "this":Lcom/sun/javafx/image/impl/ByteRgb$Getter;
    return v0
.end method

.method public getArgb(Ljava/nio/ByteBuffer;I)I
    .locals 7

    .prologue
    .line 96
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/image/impl/ByteRgb$Getter;
    move-object v1, p1

    .local v1, "buffer":Ljava/nio/ByteBuffer;
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

    .line 97
    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v4

    const/16 v5, 0xff

    and-int/lit16 v4, v4, 0xff

    const/16 v5, 0x8

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v3, v4

    move-object v4, v1

    move v5, v2

    .line 98
    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v4

    const/16 v5, 0xff

    and-int/lit16 v4, v4, 0xff

    const/16 v5, 0x10

    shl-int/lit8 v4, v4, 0x10

    or-int/2addr v3, v4

    const/high16 v4, -0x1000000

    or-int/2addr v3, v4

    move v0, v3

    .end local v0    # "this":Lcom/sun/javafx/image/impl/ByteRgb$Getter;
    return v0
.end method

.method public getArgb([BI)I
    .locals 7

    .prologue
    .line 80
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/image/impl/ByteRgb$Getter;
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

    const/high16 v4, -0x1000000

    or-int/2addr v3, v4

    move v0, v3

    .end local v0    # "this":Lcom/sun/javafx/image/impl/ByteRgb$Getter;
    return v0
.end method

.method public bridge synthetic getArgbPre(Ljava/nio/Buffer;I)I
    .locals 6

    .prologue
    .line 64
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/image/impl/ByteRgb$Getter;
    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    check-cast v4, Ljava/nio/ByteBuffer;

    move v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/image/impl/ByteRgb$Getter;->getArgbPre(Ljava/nio/ByteBuffer;I)I

    move-result v3

    move v0, v3

    .end local v0    # "this":Lcom/sun/javafx/image/impl/ByteRgb$Getter;
    return v0
.end method

.method public getArgbPre(Ljava/nio/ByteBuffer;I)I
    .locals 7

    .prologue
    .line 104
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/image/impl/ByteRgb$Getter;
    move-object v1, p1

    .local v1, "buffer":Ljava/nio/ByteBuffer;
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

    .line 105
    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v4

    const/16 v5, 0xff

    and-int/lit16 v4, v4, 0xff

    const/16 v5, 0x8

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v3, v4

    move-object v4, v1

    move v5, v2

    .line 106
    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v4

    const/16 v5, 0xff

    and-int/lit16 v4, v4, 0xff

    const/16 v5, 0x10

    shl-int/lit8 v4, v4, 0x10

    or-int/2addr v3, v4

    const/high16 v4, -0x1000000

    or-int/2addr v3, v4

    move v0, v3

    .end local v0    # "this":Lcom/sun/javafx/image/impl/ByteRgb$Getter;
    return v0
.end method

.method public getArgbPre([BI)I
    .locals 7

    .prologue
    .line 88
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/image/impl/ByteRgb$Getter;
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

    const/high16 v4, -0x1000000

    or-int/2addr v3, v4

    move v0, v3

    .end local v0    # "this":Lcom/sun/javafx/image/impl/ByteRgb$Getter;
    return v0
.end method

.method public getNumElements()I
    .locals 2

    .prologue
    .line 75
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/image/impl/ByteRgb$Getter;
    const/4 v1, 0x3

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/image/impl/ByteRgb$Getter;
    return v0
.end method
