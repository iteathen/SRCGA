.class public Lcom/sun/prism/image/CachingCompoundImage;
.super Lcom/sun/prism/image/CompoundImage;
.source "CachingCompoundImage.java"


# direct methods
.method public constructor <init>(Lcom/sun/prism/Image;I)V
    .locals 6

    .prologue
    .line 39
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/image/CachingCompoundImage;
    move-object v1, p1

    .local v1, "image":Lcom/sun/prism/Image;
    move v2, p2

    .local v2, "maxSize":I
    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-direct {v3, v4, v5}, Lcom/sun/prism/image/CompoundImage;-><init>(Lcom/sun/prism/Image;I)V

    .line 40
    return-void
.end method


# virtual methods
.method public getTile(IILcom/sun/prism/ResourceFactory;)Lcom/sun/prism/Texture;
    .locals 9

    .prologue
    .line 44
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/image/CachingCompoundImage;
    move v1, p1

    .local v1, "x":I
    move v2, p2

    .local v2, "y":I
    move-object v3, p3

    .local v3, "factory":Lcom/sun/prism/ResourceFactory;
    move-object v4, v3

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/prism/image/CachingCompoundImage;->tiles:[Lcom/sun/prism/Image;

    move v6, v1

    move v7, v2

    move-object v8, v0

    iget v8, v8, Lcom/sun/prism/image/CachingCompoundImage;->uSections:I

    mul-int/2addr v7, v8

    add-int/2addr v6, v7

    aget-object v5, v5, v6

    sget-object v6, Lcom/sun/prism/Texture$WrapMode;->CLAMP_TO_EDGE:Lcom/sun/prism/Texture$WrapMode;

    invoke-interface {v4, v5, v6}, Lcom/sun/prism/ResourceFactory;->getCachedTexture(Lcom/sun/prism/Image;Lcom/sun/prism/Texture$WrapMode;)Lcom/sun/prism/Texture;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Lcom/sun/prism/image/CachingCompoundImage;
    return-object v0
.end method
