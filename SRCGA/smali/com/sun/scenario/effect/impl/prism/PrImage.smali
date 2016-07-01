.class public Lcom/sun/scenario/effect/impl/prism/PrImage;
.super Ljava/lang/Object;
.source "PrImage.java"

# interfaces
.implements Lcom/sun/scenario/effect/Filterable;


# instance fields
.field private final image:Lcom/sun/prism/Image;


# direct methods
.method private constructor <init>(Lcom/sun/prism/Image;)V
    .locals 4

    .prologue
    .line 42
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/prism/PrImage;
    move-object v1, p1

    .local v1, "image":Lcom/sun/prism/Image;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 43
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/scenario/effect/impl/prism/PrImage;->image:Lcom/sun/prism/Image;

    .line 44
    return-void
.end method

.method public static create(Lcom/sun/prism/Image;)Lcom/sun/scenario/effect/impl/prism/PrImage;
    .locals 5

    .prologue
    .line 47
    move-object v0, p0

    .local v0, "image":Lcom/sun/prism/Image;
    new-instance v1, Lcom/sun/scenario/effect/impl/prism/PrImage;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Lcom/sun/scenario/effect/impl/prism/PrImage;-><init>(Lcom/sun/prism/Image;)V

    move-object v0, v1

    .end local v0    # "image":Lcom/sun/prism/Image;
    return-object v0
.end method


# virtual methods
.method public flush()V
    .locals 5

    .prologue
    .line 105
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/prism/PrImage;
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string v3, "Not supported yet."

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getContentHeight()I
    .locals 2

    .prologue
    .line 63
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/prism/PrImage;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/scenario/effect/impl/prism/PrImage;->image:Lcom/sun/prism/Image;

    invoke-virtual {v1}, Lcom/sun/prism/Image;->getHeight()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/prism/PrImage;
    return v0
.end method

.method public getContentWidth()I
    .locals 2

    .prologue
    .line 59
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/prism/PrImage;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/scenario/effect/impl/prism/PrImage;->image:Lcom/sun/prism/Image;

    invoke-virtual {v1}, Lcom/sun/prism/Image;->getWidth()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/prism/PrImage;
    return v0
.end method

.method public getData()Ljava/lang/Object;
    .locals 5

    .prologue
    .line 55
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/prism/PrImage;
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string v3, "Not supported yet."

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getImage()Lcom/sun/prism/Image;
    .locals 2

    .prologue
    .line 51
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/prism/PrImage;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/scenario/effect/impl/prism/PrImage;->image:Lcom/sun/prism/Image;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/prism/PrImage;
    return-object v0
.end method

.method public getMaxContentHeight()I
    .locals 2

    .prologue
    .line 83
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/prism/PrImage;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/scenario/effect/impl/prism/PrImage;->image:Lcom/sun/prism/Image;

    invoke-virtual {v1}, Lcom/sun/prism/Image;->getHeight()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/prism/PrImage;
    return v0
.end method

.method public getMaxContentWidth()I
    .locals 2

    .prologue
    .line 79
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/prism/PrImage;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/scenario/effect/impl/prism/PrImage;->image:Lcom/sun/prism/Image;

    invoke-virtual {v1}, Lcom/sun/prism/Image;->getWidth()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/prism/PrImage;
    return v0
.end method

.method public getPhysicalHeight()I
    .locals 2

    .prologue
    .line 71
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/prism/PrImage;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/scenario/effect/impl/prism/PrImage;->image:Lcom/sun/prism/Image;

    invoke-virtual {v1}, Lcom/sun/prism/Image;->getHeight()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/prism/PrImage;
    return v0
.end method

.method public getPhysicalWidth()I
    .locals 2

    .prologue
    .line 67
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/prism/PrImage;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/scenario/effect/impl/prism/PrImage;->image:Lcom/sun/prism/Image;

    invoke-virtual {v1}, Lcom/sun/prism/Image;->getWidth()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/prism/PrImage;
    return v0
.end method

.method public getPixelScale()F
    .locals 2

    .prologue
    .line 75
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/prism/PrImage;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/scenario/effect/impl/prism/PrImage;->image:Lcom/sun/prism/Image;

    invoke-virtual {v1}, Lcom/sun/prism/Image;->getPixelScale()F

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/prism/PrImage;
    return v0
.end method

.method public isLost()Z
    .locals 2

    .prologue
    .line 101
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/prism/PrImage;
    const/4 v1, 0x0

    move v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/prism/PrImage;
    return v0
.end method

.method public lock()V
    .locals 0

    .prologue
    .line 95
    return-void
.end method

.method public setContentHeight(I)V
    .locals 6

    .prologue
    .line 91
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/prism/PrImage;
    move v1, p1

    .local v1, "contentH":I
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "Not supported"

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public setContentWidth(I)V
    .locals 6

    .prologue
    .line 87
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/prism/PrImage;
    move v1, p1

    .local v1, "contentW":I
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "Not supported."

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public unlock()V
    .locals 0

    .prologue
    .line 98
    return-void
.end method
