.class Lcom/sun/prism/es2/ES2PhongMaterial;
.super Lcom/sun/prism/impl/BaseGraphicsResource;
.source "ES2PhongMaterial.java"

# interfaces
.implements Lcom/sun/prism/PhongMaterial;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/prism/es2/ES2PhongMaterial$ES2PhongMaterialDisposerRecord;
    }
.end annotation


# static fields
.field static count:I


# instance fields
.field private final context:Lcom/sun/prism/es2/ES2Context;

.field diffuseColor:Lcom/sun/prism/paint/Color;

.field maps:[Lcom/sun/prism/TextureMap;

.field private final nativeHandle:J

.field specularColor:Lcom/sun/prism/paint/Color;

.field specularColorSet:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x0

    sput v0, Lcom/sun/prism/es2/ES2PhongMaterial;->count:I

    return-void
.end method

.method private constructor <init>(Lcom/sun/prism/es2/ES2Context;JLcom/sun/prism/impl/Disposer$Record;)V
    .locals 8

    .prologue
    .line 54
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/ES2PhongMaterial;
    move-object v1, p1

    .local v1, "context":Lcom/sun/prism/es2/ES2Context;
    move-wide v2, p2

    .local v2, "nativeHandle":J
    move-object v4, p4

    .local v4, "disposerRecord":Lcom/sun/prism/impl/Disposer$Record;
    move-object v5, v0

    move-object v6, v4

    invoke-direct {v5, v6}, Lcom/sun/prism/impl/BaseGraphicsResource;-><init>(Lcom/sun/prism/impl/Disposer$Record;)V

    .line 46
    move-object v5, v0

    sget v6, Lcom/sun/prism/es2/ES2PhongMaterial;->MAX_MAP_TYPE:I

    new-array v6, v6, [Lcom/sun/prism/TextureMap;

    iput-object v6, v5, Lcom/sun/prism/es2/ES2PhongMaterial;->maps:[Lcom/sun/prism/TextureMap;

    .line 48
    move-object v5, v0

    sget-object v6, Lcom/sun/prism/paint/Color;->WHITE:Lcom/sun/prism/paint/Color;

    iput-object v6, v5, Lcom/sun/prism/es2/ES2PhongMaterial;->diffuseColor:Lcom/sun/prism/paint/Color;

    .line 49
    move-object v5, v0

    sget-object v6, Lcom/sun/prism/paint/Color;->WHITE:Lcom/sun/prism/paint/Color;

    iput-object v6, v5, Lcom/sun/prism/es2/ES2PhongMaterial;->specularColor:Lcom/sun/prism/paint/Color;

    .line 50
    move-object v5, v0

    const/4 v6, 0x0

    iput-boolean v6, v5, Lcom/sun/prism/es2/ES2PhongMaterial;->specularColorSet:Z

    .line 55
    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Lcom/sun/prism/es2/ES2PhongMaterial;->context:Lcom/sun/prism/es2/ES2Context;

    .line 56
    move-object v5, v0

    move-wide v6, v2

    iput-wide v6, v5, Lcom/sun/prism/es2/ES2PhongMaterial;->nativeHandle:J

    .line 57
    sget v5, Lcom/sun/prism/es2/ES2PhongMaterial;->count:I

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    sput v5, Lcom/sun/prism/es2/ES2PhongMaterial;->count:I

    .line 58
    return-void
.end method

.method static create(Lcom/sun/prism/es2/ES2Context;)Lcom/sun/prism/es2/ES2PhongMaterial;
    .locals 15

    .prologue
    .line 61
    move-object v1, p0

    .local v1, "context":Lcom/sun/prism/es2/ES2Context;
    move-object v4, v1

    invoke-virtual {v4}, Lcom/sun/prism/es2/ES2Context;->createES2PhongMaterial()J

    move-result-wide v4

    move-wide v2, v4

    .line 62
    .local v2, "nativeHandle":J
    new-instance v4, Lcom/sun/prism/es2/ES2PhongMaterial;

    move-object v14, v4

    move-object v4, v14

    move-object v5, v14

    move-object v6, v1

    move-wide v7, v2

    new-instance v9, Lcom/sun/prism/es2/ES2PhongMaterial$ES2PhongMaterialDisposerRecord;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    move-object v11, v1

    move-wide v12, v2

    invoke-direct {v10, v11, v12, v13}, Lcom/sun/prism/es2/ES2PhongMaterial$ES2PhongMaterialDisposerRecord;-><init>(Lcom/sun/prism/es2/ES2Context;J)V

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/sun/prism/es2/ES2PhongMaterial;-><init>(Lcom/sun/prism/es2/ES2Context;JLcom/sun/prism/impl/Disposer$Record;)V

    move-object v1, v4

    .end local v1    # "context":Lcom/sun/prism/es2/ES2Context;
    return-object v1
.end method

.method private setupTexture(Lcom/sun/prism/TextureMap;Z)Lcom/sun/prism/Texture;
    .locals 9

    .prologue
    .line 85
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/ES2PhongMaterial;
    move-object v1, p1

    .local v1, "map":Lcom/sun/prism/TextureMap;
    move v2, p2

    .local v2, "useMipmap":Z
    move-object v5, v1

    invoke-virtual {v5}, Lcom/sun/prism/TextureMap;->getImage()Lcom/sun/prism/Image;

    move-result-object v5

    move-object v3, v5

    .line 86
    .local v3, "image":Lcom/sun/prism/Image;
    move-object v5, v3

    if-nez v5, :cond_0

    const/4 v5, 0x0

    .line 87
    :goto_0
    move-object v4, v5

    .line 88
    .local v4, "texture":Lcom/sun/prism/Texture;
    move-object v5, v4

    move-object v0, v5

    .end local v0    # "this":Lcom/sun/prism/es2/ES2PhongMaterial;
    return-object v0

    .line 86
    .end local v4    # "texture":Lcom/sun/prism/Texture;
    .restart local v0    # "this":Lcom/sun/prism/es2/ES2PhongMaterial;
    :cond_0
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/prism/es2/ES2PhongMaterial;->context:Lcom/sun/prism/es2/ES2Context;

    .line 87
    invoke-virtual {v5}, Lcom/sun/prism/es2/ES2Context;->getResourceFactory()Lcom/sun/prism/ResourceFactory;

    move-result-object v5

    move-object v6, v3

    sget-object v7, Lcom/sun/prism/Texture$WrapMode;->REPEAT:Lcom/sun/prism/Texture$WrapMode;

    move v8, v2

    invoke-interface {v5, v6, v7, v8}, Lcom/sun/prism/ResourceFactory;->getCachedTexture(Lcom/sun/prism/Image;Lcom/sun/prism/Texture$WrapMode;Z)Lcom/sun/prism/Texture;

    move-result-object v5

    goto :goto_0
.end method


# virtual methods
.method public dispose()V
    .locals 3

    .prologue
    .line 124
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/ES2PhongMaterial;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/prism/es2/ES2PhongMaterial;->disposerRecord:Lcom/sun/prism/impl/Disposer$Record;

    invoke-interface {v1}, Lcom/sun/prism/impl/Disposer$Record;->dispose()V

    .line 125
    sget v1, Lcom/sun/prism/es2/ES2PhongMaterial;->count:I

    const/4 v2, 0x1

    add-int/lit8 v1, v1, -0x1

    sput v1, Lcom/sun/prism/es2/ES2PhongMaterial;->count:I

    .line 126
    return-void
.end method

.method public getCount()I
    .locals 2

    .prologue
    .line 129
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/ES2PhongMaterial;
    sget v1, Lcom/sun/prism/es2/ES2PhongMaterial;->count:I

    move v0, v1

    .end local v0    # "this":Lcom/sun/prism/es2/ES2PhongMaterial;
    return v0
.end method

.method getNativeHandle()J
    .locals 3

    .prologue
    .line 66
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/ES2PhongMaterial;
    move-object v1, v0

    iget-wide v1, v1, Lcom/sun/prism/es2/ES2PhongMaterial;->nativeHandle:J

    move-wide v0, v1

    .end local v0    # "this":Lcom/sun/prism/es2/ES2PhongMaterial;
    return-wide v0
.end method

.method public lockTextureMaps()V
    .locals 8

    .prologue
    .line 92
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/ES2PhongMaterial;
    const/4 v5, 0x0

    move v1, v5

    .local v1, "i":I
    :goto_0
    move v5, v1

    sget v6, Lcom/sun/prism/es2/ES2PhongMaterial;->MAX_MAP_TYPE:I

    if-ge v5, v6, :cond_4

    .line 93
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/prism/es2/ES2PhongMaterial;->maps:[Lcom/sun/prism/TextureMap;

    move v6, v1

    aget-object v5, v5, v6

    invoke-virtual {v5}, Lcom/sun/prism/TextureMap;->getTexture()Lcom/sun/prism/Texture;

    move-result-object v5

    move-object v2, v5

    .line 94
    .local v2, "texture":Lcom/sun/prism/Texture;
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/prism/es2/ES2PhongMaterial;->maps:[Lcom/sun/prism/TextureMap;

    move v6, v1

    aget-object v5, v5, v6

    invoke-virtual {v5}, Lcom/sun/prism/TextureMap;->isDirty()Z

    move-result v5

    if-nez v5, :cond_1

    move-object v5, v2

    if-eqz v5, :cond_1

    .line 95
    move-object v5, v2

    invoke-interface {v5}, Lcom/sun/prism/Texture;->lock()V

    .line 96
    move-object v5, v2

    invoke-interface {v5}, Lcom/sun/prism/Texture;->isSurfaceLost()Z

    move-result v5

    if-nez v5, :cond_1

    .line 97
    .line 92
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 101
    :cond_1
    invoke-static {}, Lcom/sun/javafx/PlatformUtil;->isEmbedded()Z

    move-result v5

    if-nez v5, :cond_3

    move v5, v1

    sget v6, Lcom/sun/prism/PhongMaterial;->DIFFUSE:I

    if-eq v5, v6, :cond_2

    move v5, v1

    sget v6, Lcom/sun/prism/PhongMaterial;->SELF_ILLUM:I

    if-ne v5, v6, :cond_3

    :cond_2
    const/4 v5, 0x1

    :goto_2
    move v3, v5

    .line 102
    .local v3, "useMipmap":Z
    move-object v5, v0

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/prism/es2/ES2PhongMaterial;->maps:[Lcom/sun/prism/TextureMap;

    move v7, v1

    aget-object v6, v6, v7

    move v7, v3

    invoke-direct {v5, v6, v7}, Lcom/sun/prism/es2/ES2PhongMaterial;->setupTexture(Lcom/sun/prism/TextureMap;Z)Lcom/sun/prism/Texture;

    move-result-object v5

    move-object v2, v5

    .line 103
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/prism/es2/ES2PhongMaterial;->maps:[Lcom/sun/prism/TextureMap;

    move v6, v1

    aget-object v5, v5, v6

    move-object v6, v2

    invoke-virtual {v5, v6}, Lcom/sun/prism/TextureMap;->setTexture(Lcom/sun/prism/Texture;)V

    .line 104
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/prism/es2/ES2PhongMaterial;->maps:[Lcom/sun/prism/TextureMap;

    move v6, v1

    aget-object v5, v5, v6

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/sun/prism/TextureMap;->setDirty(Z)V

    .line 105
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/prism/es2/ES2PhongMaterial;->maps:[Lcom/sun/prism/TextureMap;

    move v6, v1

    aget-object v5, v5, v6

    invoke-virtual {v5}, Lcom/sun/prism/TextureMap;->getImage()Lcom/sun/prism/Image;

    move-result-object v5

    if-eqz v5, :cond_0

    move-object v5, v2

    if-nez v5, :cond_0

    .line 106
    const-class v5, Lcom/sun/prism/PhongMaterial;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    move-object v4, v5

    .line 107
    .local v4, "logname":Ljava/lang/String;
    move-object v5, v4

    invoke-static {v5}, Lsun/util/logging/PlatformLogger;->getLogger(Ljava/lang/String;)Lsun/util/logging/PlatformLogger;

    move-result-object v5

    const-string v6, "Warning: Low on texture resources. Cannot create texture."

    invoke-virtual {v5, v6}, Lsun/util/logging/PlatformLogger;->warning(Ljava/lang/String;)V

    goto :goto_1

    .line 101
    .end local v3    # "useMipmap":Z
    .end local v4    # "logname":Ljava/lang/String;
    :cond_3
    const/4 v5, 0x0

    goto :goto_2

    .line 111
    .end local v2    # "texture":Lcom/sun/prism/Texture;
    :cond_4
    return-void
.end method

.method public setDiffuseColor(FFFF)V
    .locals 13

    .prologue
    .line 71
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/ES2PhongMaterial;
    move v1, p1

    .local v1, "r":F
    move v2, p2

    .local v2, "g":F
    move/from16 v3, p3

    .local v3, "b":F
    move/from16 v4, p4

    .local v4, "a":F
    move-object v5, v0

    new-instance v6, Lcom/sun/prism/paint/Color;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    move v8, v1

    move v9, v2

    move v10, v3

    move v11, v4

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/sun/prism/paint/Color;-><init>(FFFF)V

    iput-object v6, v5, Lcom/sun/prism/es2/ES2PhongMaterial;->diffuseColor:Lcom/sun/prism/paint/Color;

    .line 72
    return-void
.end method

.method public setSpecularColor(ZFFFF)V
    .locals 14

    .prologue
    .line 76
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/ES2PhongMaterial;
    move v1, p1

    .local v1, "set":Z
    move/from16 v2, p2

    .local v2, "r":F
    move/from16 v3, p3

    .local v3, "g":F
    move/from16 v4, p4

    .local v4, "b":F
    move/from16 v5, p5

    .local v5, "a":F
    move-object v6, v0

    move v7, v1

    iput-boolean v7, v6, Lcom/sun/prism/es2/ES2PhongMaterial;->specularColorSet:Z

    .line 77
    move-object v6, v0

    new-instance v7, Lcom/sun/prism/paint/Color;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    move v9, v2

    move v10, v3

    move v11, v4

    move v12, v5

    invoke-direct {v8, v9, v10, v11, v12}, Lcom/sun/prism/paint/Color;-><init>(FFFF)V

    iput-object v7, v6, Lcom/sun/prism/es2/ES2PhongMaterial;->specularColor:Lcom/sun/prism/paint/Color;

    .line 78
    return-void
.end method

.method public setTextureMap(Lcom/sun/prism/TextureMap;)V
    .locals 5

    .prologue
    .line 81
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/ES2PhongMaterial;
    move-object v1, p1

    .local v1, "map":Lcom/sun/prism/TextureMap;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/prism/es2/ES2PhongMaterial;->maps:[Lcom/sun/prism/TextureMap;

    move-object v3, v1

    invoke-virtual {v3}, Lcom/sun/prism/TextureMap;->getType()Lcom/sun/prism/PhongMaterial$MapType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sun/prism/PhongMaterial$MapType;->ordinal()I

    move-result v3

    move-object v4, v1

    aput-object v4, v2, v3

    .line 82
    return-void
.end method

.method public unlockTextureMaps()V
    .locals 5

    .prologue
    .line 114
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/ES2PhongMaterial;
    const/4 v3, 0x0

    move v1, v3

    .local v1, "i":I
    :goto_0
    move v3, v1

    sget v4, Lcom/sun/prism/es2/ES2PhongMaterial;->MAX_MAP_TYPE:I

    if-ge v3, v4, :cond_1

    .line 115
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/prism/es2/ES2PhongMaterial;->maps:[Lcom/sun/prism/TextureMap;

    move v4, v1

    aget-object v3, v3, v4

    invoke-virtual {v3}, Lcom/sun/prism/TextureMap;->getTexture()Lcom/sun/prism/Texture;

    move-result-object v3

    move-object v2, v3

    .line 116
    .local v2, "texture":Lcom/sun/prism/Texture;
    move-object v3, v2

    if-eqz v3, :cond_0

    .line 117
    move-object v3, v2

    invoke-interface {v3}, Lcom/sun/prism/Texture;->unlock()V

    .line 114
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 120
    .end local v2    # "texture":Lcom/sun/prism/Texture;
    :cond_1
    return-void
.end method
