.class Lcom/sun/javafx/image/impl/IntArgbPre$Accessor;
.super Ljava/lang/Object;
.source "IntArgbPre.java"

# interfaces
.implements Lcom/sun/javafx/image/IntPixelAccessor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/image/impl/IntArgbPre;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Accessor"
.end annotation


# static fields
.field static final instance:Lcom/sun/javafx/image/IntPixelAccessor;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 69
    new-instance v0, Lcom/sun/javafx/image/impl/IntArgbPre$Accessor;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Lcom/sun/javafx/image/impl/IntArgbPre$Accessor;-><init>()V

    sput-object v0, Lcom/sun/javafx/image/impl/IntArgbPre$Accessor;->instance:Lcom/sun/javafx/image/IntPixelAccessor;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 70
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/image/impl/IntArgbPre$Accessor;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAlphaType()Lcom/sun/javafx/image/AlphaType;
    .locals 2

    .prologue
    .line 74
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/image/impl/IntArgbPre$Accessor;
    sget-object v1, Lcom/sun/javafx/image/AlphaType;->PREMULTIPLIED:Lcom/sun/javafx/image/AlphaType;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/image/impl/IntArgbPre$Accessor;
    return-object v0
.end method

.method public bridge synthetic getArgb(Ljava/nio/Buffer;I)I
    .locals 6

    .prologue
    .line 68
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/image/impl/IntArgbPre$Accessor;
    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    check-cast v4, Ljava/nio/IntBuffer;

    move v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/image/impl/IntArgbPre$Accessor;->getArgb(Ljava/nio/IntBuffer;I)I

    move-result v3

    move v0, v3

    .end local v0    # "this":Lcom/sun/javafx/image/impl/IntArgbPre$Accessor;
    return v0
.end method

.method public getArgb(Ljava/nio/IntBuffer;I)I
    .locals 5

    .prologue
    .line 94
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/image/impl/IntArgbPre$Accessor;
    move-object v1, p1

    .local v1, "buffer":Ljava/nio/IntBuffer;
    move v2, p2

    .local v2, "offset":I
    move-object v3, v1

    move v4, v2

    invoke-virtual {v3, v4}, Ljava/nio/IntBuffer;->get(I)I

    move-result v3

    invoke-static {v3}, Lcom/sun/javafx/image/PixelUtils;->PretoNonPre(I)I

    move-result v3

    move v0, v3

    .end local v0    # "this":Lcom/sun/javafx/image/impl/IntArgbPre$Accessor;
    return v0
.end method

.method public getArgb([II)I
    .locals 5

    .prologue
    .line 84
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/image/impl/IntArgbPre$Accessor;
    move-object v1, p1

    .local v1, "arr":[I
    move v2, p2

    .local v2, "offset":I
    move-object v3, v1

    move v4, v2

    aget v3, v3, v4

    invoke-static {v3}, Lcom/sun/javafx/image/PixelUtils;->PretoNonPre(I)I

    move-result v3

    move v0, v3

    .end local v0    # "this":Lcom/sun/javafx/image/impl/IntArgbPre$Accessor;
    return v0
.end method

.method public bridge synthetic getArgbPre(Ljava/nio/Buffer;I)I
    .locals 6

    .prologue
    .line 68
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/image/impl/IntArgbPre$Accessor;
    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    check-cast v4, Ljava/nio/IntBuffer;

    move v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/image/impl/IntArgbPre$Accessor;->getArgbPre(Ljava/nio/IntBuffer;I)I

    move-result v3

    move v0, v3

    .end local v0    # "this":Lcom/sun/javafx/image/impl/IntArgbPre$Accessor;
    return v0
.end method

.method public getArgbPre(Ljava/nio/IntBuffer;I)I
    .locals 5

    .prologue
    .line 99
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/image/impl/IntArgbPre$Accessor;
    move-object v1, p1

    .local v1, "buffer":Ljava/nio/IntBuffer;
    move v2, p2

    .local v2, "offset":I
    move-object v3, v1

    move v4, v2

    invoke-virtual {v3, v4}, Ljava/nio/IntBuffer;->get(I)I

    move-result v3

    move v0, v3

    .end local v0    # "this":Lcom/sun/javafx/image/impl/IntArgbPre$Accessor;
    return v0
.end method

.method public getArgbPre([II)I
    .locals 5

    .prologue
    .line 89
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/image/impl/IntArgbPre$Accessor;
    move-object v1, p1

    .local v1, "arr":[I
    move v2, p2

    .local v2, "offset":I
    move-object v3, v1

    move v4, v2

    aget v3, v3, v4

    move v0, v3

    .end local v0    # "this":Lcom/sun/javafx/image/impl/IntArgbPre$Accessor;
    return v0
.end method

.method public getNumElements()I
    .locals 2

    .prologue
    .line 79
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/image/impl/IntArgbPre$Accessor;
    const/4 v1, 0x1

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/image/impl/IntArgbPre$Accessor;
    return v0
.end method

.method public bridge synthetic setArgb(Ljava/nio/Buffer;II)V
    .locals 8

    .prologue
    .line 68
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/image/impl/IntArgbPre$Accessor;
    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, v0

    move-object v5, v1

    check-cast v5, Ljava/nio/IntBuffer;

    move v6, v2

    move v7, v3

    invoke-virtual {v4, v5, v6, v7}, Lcom/sun/javafx/image/impl/IntArgbPre$Accessor;->setArgb(Ljava/nio/IntBuffer;II)V

    return-void
.end method

.method public setArgb(Ljava/nio/IntBuffer;II)V
    .locals 7

    .prologue
    .line 114
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/image/impl/IntArgbPre$Accessor;
    move-object v1, p1

    .local v1, "buffer":Ljava/nio/IntBuffer;
    move v2, p2

    .local v2, "offset":I
    move v3, p3

    .local v3, "argb":I
    move-object v4, v1

    move v5, v2

    move v6, v3

    invoke-static {v6}, Lcom/sun/javafx/image/PixelUtils;->NonPretoPre(I)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Ljava/nio/IntBuffer;->put(II)Ljava/nio/IntBuffer;

    move-result-object v4

    .line 115
    return-void
.end method

.method public setArgb([III)V
    .locals 7

    .prologue
    .line 104
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/image/impl/IntArgbPre$Accessor;
    move-object v1, p1

    .local v1, "arr":[I
    move v2, p2

    .local v2, "offset":I
    move v3, p3

    .local v3, "argb":I
    move-object v4, v1

    move v5, v2

    move v6, v3

    invoke-static {v6}, Lcom/sun/javafx/image/PixelUtils;->NonPretoPre(I)I

    move-result v6

    aput v6, v4, v5

    .line 105
    return-void
.end method

.method public bridge synthetic setArgbPre(Ljava/nio/Buffer;II)V
    .locals 8

    .prologue
    .line 68
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/image/impl/IntArgbPre$Accessor;
    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, v0

    move-object v5, v1

    check-cast v5, Ljava/nio/IntBuffer;

    move v6, v2

    move v7, v3

    invoke-virtual {v4, v5, v6, v7}, Lcom/sun/javafx/image/impl/IntArgbPre$Accessor;->setArgbPre(Ljava/nio/IntBuffer;II)V

    return-void
.end method

.method public setArgbPre(Ljava/nio/IntBuffer;II)V
    .locals 7

    .prologue
    .line 119
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/image/impl/IntArgbPre$Accessor;
    move-object v1, p1

    .local v1, "buffer":Ljava/nio/IntBuffer;
    move v2, p2

    .local v2, "offset":I
    move v3, p3

    .local v3, "argbpre":I
    move-object v4, v1

    move v5, v2

    move v6, v3

    invoke-virtual {v4, v5, v6}, Ljava/nio/IntBuffer;->put(II)Ljava/nio/IntBuffer;

    move-result-object v4

    .line 120
    return-void
.end method

.method public setArgbPre([III)V
    .locals 7

    .prologue
    .line 109
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/image/impl/IntArgbPre$Accessor;
    move-object v1, p1

    .local v1, "arr":[I
    move v2, p2

    .local v2, "offset":I
    move v3, p3

    .local v3, "argbpre":I
    move-object v4, v1

    move v5, v2

    move v6, v3

    aput v6, v4, v5

    .line 110
    return-void
.end method
