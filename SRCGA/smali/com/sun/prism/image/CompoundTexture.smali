.class public Lcom/sun/prism/image/CompoundTexture;
.super Lcom/sun/prism/image/CompoundImage;
.source "CompoundTexture.java"

# interfaces
.implements Lcom/sun/prism/GraphicsResource;


# instance fields
.field protected texTiles:[Lcom/sun/prism/Texture;


# direct methods
.method public constructor <init>(Lcom/sun/prism/Image;I)V
    .locals 6

    .prologue
    .line 35
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/image/CompoundTexture;
    move-object v1, p1

    .local v1, "image":Lcom/sun/prism/Image;
    move v2, p2

    .local v2, "maxSize":I
    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-direct {v3, v4, v5}, Lcom/sun/prism/image/CompoundImage;-><init>(Lcom/sun/prism/Image;I)V

    .line 36
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/prism/image/CompoundTexture;->tiles:[Lcom/sun/prism/Image;

    array-length v4, v4

    new-array v4, v4, [Lcom/sun/prism/Texture;

    iput-object v4, v3, Lcom/sun/prism/image/CompoundTexture;->texTiles:[Lcom/sun/prism/Texture;

    .line 37
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 5

    .prologue
    .line 60
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/image/CompoundTexture;
    const/4 v2, 0x0

    move v1, v2

    .local v1, "i":I
    :goto_0
    move v2, v1

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/prism/image/CompoundTexture;->texTiles:[Lcom/sun/prism/Texture;

    array-length v3, v3

    if-eq v2, v3, :cond_1

    .line 61
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/prism/image/CompoundTexture;->texTiles:[Lcom/sun/prism/Texture;

    move v3, v1

    aget-object v2, v2, v3

    if-eqz v2, :cond_0

    .line 62
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/prism/image/CompoundTexture;->texTiles:[Lcom/sun/prism/Texture;

    move v3, v1

    aget-object v2, v2, v3

    invoke-interface {v2}, Lcom/sun/prism/Texture;->dispose()V

    .line 63
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/prism/image/CompoundTexture;->texTiles:[Lcom/sun/prism/Texture;

    move v3, v1

    const/4 v4, 0x0

    aput-object v4, v2, v3

    .line 60
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 66
    :cond_1
    return-void
.end method

.method public getTile(IILcom/sun/prism/ResourceFactory;)Lcom/sun/prism/Texture;
    .locals 11

    .prologue
    .line 41
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/image/CompoundTexture;
    move v1, p1

    .local v1, "x":I
    move v2, p2

    .local v2, "y":I
    move-object v3, p3

    .local v3, "factory":Lcom/sun/prism/ResourceFactory;
    move v6, v1

    move v7, v2

    move-object v8, v0

    iget v8, v8, Lcom/sun/prism/image/CompoundTexture;->uSections:I

    mul-int/2addr v7, v8

    add-int/2addr v6, v7

    move v4, v6

    .line 42
    .local v4, "idx":I
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/prism/image/CompoundTexture;->texTiles:[Lcom/sun/prism/Texture;

    move v7, v4

    aget-object v6, v6, v7

    move-object v5, v6

    .line 43
    .local v5, "tex":Lcom/sun/prism/Texture;
    move-object v6, v5

    if-eqz v6, :cond_0

    .line 44
    move-object v6, v5

    invoke-interface {v6}, Lcom/sun/prism/Texture;->lock()V

    .line 45
    move-object v6, v5

    invoke-interface {v6}, Lcom/sun/prism/Texture;->isSurfaceLost()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 46
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/prism/image/CompoundTexture;->texTiles:[Lcom/sun/prism/Texture;

    move v7, v4

    const/4 v8, 0x0

    move-object v10, v8

    move-object v8, v10

    move-object v9, v10

    move-object v5, v9

    aput-object v8, v6, v7

    .line 49
    :cond_0
    move-object v6, v5

    if-nez v6, :cond_1

    .line 50
    move-object v6, v3

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/prism/image/CompoundTexture;->tiles:[Lcom/sun/prism/Image;

    move v8, v4

    aget-object v7, v7, v8

    sget-object v8, Lcom/sun/prism/Texture$Usage;->STATIC:Lcom/sun/prism/Texture$Usage;

    sget-object v9, Lcom/sun/prism/Texture$WrapMode;->CLAMP_TO_EDGE:Lcom/sun/prism/Texture$WrapMode;

    invoke-interface {v6, v7, v8, v9}, Lcom/sun/prism/ResourceFactory;->createTexture(Lcom/sun/prism/Image;Lcom/sun/prism/Texture$Usage;Lcom/sun/prism/Texture$WrapMode;)Lcom/sun/prism/Texture;

    move-result-object v6

    move-object v5, v6

    .line 53
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/prism/image/CompoundTexture;->texTiles:[Lcom/sun/prism/Texture;

    move v7, v4

    move-object v8, v5

    aput-object v8, v6, v7

    .line 55
    :cond_1
    move-object v6, v5

    move-object v0, v6

    .end local v0    # "this":Lcom/sun/prism/image/CompoundTexture;
    return-object v0
.end method
