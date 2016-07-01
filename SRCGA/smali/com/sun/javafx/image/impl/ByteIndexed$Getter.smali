.class public Lcom/sun/javafx/image/impl/ByteIndexed$Getter;
.super Ljava/lang/Object;
.source "ByteIndexed.java"

# interfaces
.implements Lcom/sun/javafx/image/BytePixelGetter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/image/impl/ByteIndexed;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Getter"
.end annotation


# instance fields
.field private nonprecolors:[I

.field private precolors:[I

.field theFormat:Ljavafx/scene/image/PixelFormat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/scene/image/PixelFormat",
            "<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljavafx/scene/image/PixelFormat;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/image/PixelFormat",
            "<",
            "Ljava/nio/ByteBuffer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 64
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/image/impl/ByteIndexed$Getter;
    move-object v1, p1

    .local v1, "pf":Ljavafx/scene/image/PixelFormat;, "Ljavafx/scene/image/PixelFormat<Ljava/nio/ByteBuffer;>;"
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 65
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/image/impl/ByteIndexed$Getter;->theFormat:Ljavafx/scene/image/PixelFormat;

    .line 66
    return-void
.end method


# virtual methods
.method public getAlphaType()Lcom/sun/javafx/image/AlphaType;
    .locals 2

    .prologue
    .line 84
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/image/impl/ByteIndexed$Getter;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/image/impl/ByteIndexed$Getter;->theFormat:Ljavafx/scene/image/PixelFormat;

    invoke-virtual {v1}, Ljavafx/scene/image/PixelFormat;->isPremultiplied()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/sun/javafx/image/AlphaType;->PREMULTIPLIED:Lcom/sun/javafx/image/AlphaType;

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/image/impl/ByteIndexed$Getter;
    return-object v0

    .restart local v0    # "this":Lcom/sun/javafx/image/impl/ByteIndexed$Getter;
    :cond_0
    sget-object v1, Lcom/sun/javafx/image/AlphaType;->NONPREMULTIPLIED:Lcom/sun/javafx/image/AlphaType;

    goto :goto_0
.end method

.method public bridge synthetic getArgb(Ljava/nio/Buffer;I)I
    .locals 6

    .prologue
    .line 59
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/image/impl/ByteIndexed$Getter;
    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    check-cast v4, Ljava/nio/ByteBuffer;

    move v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/image/impl/ByteIndexed$Getter;->getArgb(Ljava/nio/ByteBuffer;I)I

    move-result v3

    move v0, v3

    .end local v0    # "this":Lcom/sun/javafx/image/impl/ByteIndexed$Getter;
    return v0
.end method

.method public getArgb(Ljava/nio/ByteBuffer;I)I
    .locals 6

    .prologue
    .line 106
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/image/impl/ByteIndexed$Getter;
    move-object v1, p1

    .local v1, "buf":Ljava/nio/ByteBuffer;
    move v2, p2

    .local v2, "offset":I
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/image/impl/ByteIndexed$Getter;->getNonPreColors()[I

    move-result-object v3

    move-object v4, v1

    move v5, v2

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v4

    const/16 v5, 0xff

    and-int/lit16 v4, v4, 0xff

    aget v3, v3, v4

    move v0, v3

    .end local v0    # "this":Lcom/sun/javafx/image/impl/ByteIndexed$Getter;
    return v0
.end method

.method public getArgb([BI)I
    .locals 6

    .prologue
    .line 96
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/image/impl/ByteIndexed$Getter;
    move-object v1, p1

    .local v1, "arr":[B
    move v2, p2

    .local v2, "offset":I
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/image/impl/ByteIndexed$Getter;->getNonPreColors()[I

    move-result-object v3

    move-object v4, v1

    move v5, v2

    aget-byte v4, v4, v5

    const/16 v5, 0xff

    and-int/lit16 v4, v4, 0xff

    aget v3, v3, v4

    move v0, v3

    .end local v0    # "this":Lcom/sun/javafx/image/impl/ByteIndexed$Getter;
    return v0
.end method

.method public bridge synthetic getArgbPre(Ljava/nio/Buffer;I)I
    .locals 6

    .prologue
    .line 59
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/image/impl/ByteIndexed$Getter;
    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    check-cast v4, Ljava/nio/ByteBuffer;

    move v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/image/impl/ByteIndexed$Getter;->getArgbPre(Ljava/nio/ByteBuffer;I)I

    move-result v3

    move v0, v3

    .end local v0    # "this":Lcom/sun/javafx/image/impl/ByteIndexed$Getter;
    return v0
.end method

.method public getArgbPre(Ljava/nio/ByteBuffer;I)I
    .locals 6

    .prologue
    .line 111
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/image/impl/ByteIndexed$Getter;
    move-object v1, p1

    .local v1, "buf":Ljava/nio/ByteBuffer;
    move v2, p2

    .local v2, "offset":I
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/image/impl/ByteIndexed$Getter;->getPreColors()[I

    move-result-object v3

    move-object v4, v1

    move v5, v2

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v4

    const/16 v5, 0xff

    and-int/lit16 v4, v4, 0xff

    aget v3, v3, v4

    move v0, v3

    .end local v0    # "this":Lcom/sun/javafx/image/impl/ByteIndexed$Getter;
    return v0
.end method

.method public getArgbPre([BI)I
    .locals 6

    .prologue
    .line 101
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/image/impl/ByteIndexed$Getter;
    move-object v1, p1

    .local v1, "arr":[B
    move v2, p2

    .local v2, "offset":I
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/image/impl/ByteIndexed$Getter;->getPreColors()[I

    move-result-object v3

    move-object v4, v1

    move v5, v2

    aget-byte v4, v4, v5

    const/16 v5, 0xff

    and-int/lit16 v4, v4, 0xff

    aget v3, v3, v4

    move v0, v3

    .end local v0    # "this":Lcom/sun/javafx/image/impl/ByteIndexed$Getter;
    return v0
.end method

.method getNonPreColors()[I
    .locals 4

    .prologue
    .line 76
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/image/impl/ByteIndexed$Getter;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/image/impl/ByteIndexed$Getter;->nonprecolors:[I

    if-nez v1, :cond_0

    .line 77
    move-object v1, v0

    invoke-static {}, Lcom/sun/javafx/tk/Toolkit;->getImageAccessor()Lcom/sun/javafx/tk/Toolkit$ImageAccessor;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/image/impl/ByteIndexed$Getter;->theFormat:Ljavafx/scene/image/PixelFormat;

    invoke-interface {v2, v3}, Lcom/sun/javafx/tk/Toolkit$ImageAccessor;->getNonPreColors(Ljavafx/scene/image/PixelFormat;)[I

    move-result-object v2

    iput-object v2, v1, Lcom/sun/javafx/image/impl/ByteIndexed$Getter;->nonprecolors:[I

    .line 79
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/image/impl/ByteIndexed$Getter;->nonprecolors:[I

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/image/impl/ByteIndexed$Getter;
    return-object v0
.end method

.method public getNumElements()I
    .locals 2

    .prologue
    .line 91
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/image/impl/ByteIndexed$Getter;
    const/4 v1, 0x1

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/image/impl/ByteIndexed$Getter;
    return v0
.end method

.method getPreColors()[I
    .locals 4

    .prologue
    .line 69
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/image/impl/ByteIndexed$Getter;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/image/impl/ByteIndexed$Getter;->precolors:[I

    if-nez v1, :cond_0

    .line 70
    move-object v1, v0

    invoke-static {}, Lcom/sun/javafx/tk/Toolkit;->getImageAccessor()Lcom/sun/javafx/tk/Toolkit$ImageAccessor;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/image/impl/ByteIndexed$Getter;->theFormat:Ljavafx/scene/image/PixelFormat;

    invoke-interface {v2, v3}, Lcom/sun/javafx/tk/Toolkit$ImageAccessor;->getPreColors(Ljavafx/scene/image/PixelFormat;)[I

    move-result-object v2

    iput-object v2, v1, Lcom/sun/javafx/image/impl/ByteIndexed$Getter;->precolors:[I

    .line 72
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/image/impl/ByteIndexed$Getter;->precolors:[I

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/image/impl/ByteIndexed$Getter;
    return-object v0
.end method
