.class public Lcom/sun/prism/TextureMap;
.super Ljava/lang/Object;
.source "TextureMap.java"


# instance fields
.field private dirty:Z

.field private image:Lcom/sun/prism/Image;

.field private texture:Lcom/sun/prism/Texture;

.field private final type:Lcom/sun/prism/PhongMaterial$MapType;


# direct methods
.method public constructor <init>(Lcom/sun/prism/PhongMaterial$MapType;)V
    .locals 4

    .prologue
    .line 38
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/TextureMap;
    move-object v1, p1

    .local v1, "type":Lcom/sun/prism/PhongMaterial$MapType;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 39
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/prism/TextureMap;->type:Lcom/sun/prism/PhongMaterial$MapType;

    .line 40
    return-void
.end method


# virtual methods
.method public getImage()Lcom/sun/prism/Image;
    .locals 2

    .prologue
    .line 47
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/TextureMap;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/prism/TextureMap;->image:Lcom/sun/prism/Image;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/prism/TextureMap;
    return-object v0
.end method

.method public getTexture()Lcom/sun/prism/Texture;
    .locals 2

    .prologue
    .line 55
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/TextureMap;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/prism/TextureMap;->texture:Lcom/sun/prism/Texture;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/prism/TextureMap;
    return-object v0
.end method

.method public getType()Lcom/sun/prism/PhongMaterial$MapType;
    .locals 2

    .prologue
    .line 43
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/TextureMap;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/prism/TextureMap;->type:Lcom/sun/prism/PhongMaterial$MapType;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/prism/TextureMap;
    return-object v0
.end method

.method public isDirty()Z
    .locals 2

    .prologue
    .line 63
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/TextureMap;
    move-object v1, v0

    iget-boolean v1, v1, Lcom/sun/prism/TextureMap;->dirty:Z

    move v0, v1

    .end local v0    # "this":Lcom/sun/prism/TextureMap;
    return v0
.end method

.method public setDirty(Z)V
    .locals 4

    .prologue
    .line 67
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/TextureMap;
    move v1, p1

    .local v1, "dirty":Z
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/sun/prism/TextureMap;->dirty:Z

    .line 68
    return-void
.end method

.method public setImage(Lcom/sun/prism/Image;)V
    .locals 4

    .prologue
    .line 51
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/TextureMap;
    move-object v1, p1

    .local v1, "image":Lcom/sun/prism/Image;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/prism/TextureMap;->image:Lcom/sun/prism/Image;

    .line 52
    return-void
.end method

.method public setTexture(Lcom/sun/prism/Texture;)V
    .locals 4

    .prologue
    .line 59
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/TextureMap;
    move-object v1, p1

    .local v1, "texture":Lcom/sun/prism/Texture;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/prism/TextureMap;->texture:Lcom/sun/prism/Texture;

    .line 60
    return-void
.end method
