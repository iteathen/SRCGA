.class public Lcom/sun/javafx/sg/prism/NGPhongMaterial;
.super Ljava/lang/Object;
.source "NGPhongMaterial.java"


# static fields
.field private static final WHITE_1X1:Lcom/sun/prism/Image;


# instance fields
.field private bumpMap:Lcom/sun/prism/TextureMap;

.field private diffuseColor:Lcom/sun/prism/paint/Color;

.field private diffuseColorDirty:Z

.field private diffuseMap:Lcom/sun/prism/TextureMap;

.field private material:Lcom/sun/prism/PhongMaterial;

.field private selfIllumMap:Lcom/sun/prism/TextureMap;

.field private specularColor:Lcom/sun/prism/paint/Color;

.field private specularColorDirty:Z

.field private specularMap:Lcom/sun/prism/TextureMap;

.field private specularPower:F

.field private specularPowerDirty:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 40
    const/4 v0, 0x1

    new-array v0, v0, [I

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    const/4 v3, -0x1

    aput v3, v1, v2

    const/4 v1, 0x1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/sun/prism/Image;->fromIntArgbPreData([III)Lcom/sun/prism/Image;

    move-result-object v0

    sput-object v0, Lcom/sun/javafx/sg/prism/NGPhongMaterial;->WHITE_1X1:Lcom/sun/prism/Image;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    .line 38
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGPhongMaterial;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 44
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/sun/javafx/sg/prism/NGPhongMaterial;->diffuseColorDirty:Z

    .line 45
    move-object v1, v0

    new-instance v2, Lcom/sun/prism/TextureMap;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    sget-object v4, Lcom/sun/prism/PhongMaterial$MapType;->DIFFUSE:Lcom/sun/prism/PhongMaterial$MapType;

    invoke-direct {v3, v4}, Lcom/sun/prism/TextureMap;-><init>(Lcom/sun/prism/PhongMaterial$MapType;)V

    iput-object v2, v1, Lcom/sun/javafx/sg/prism/NGPhongMaterial;->diffuseMap:Lcom/sun/prism/TextureMap;

    .line 48
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/sun/javafx/sg/prism/NGPhongMaterial;->specularColorDirty:Z

    .line 50
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/sun/javafx/sg/prism/NGPhongMaterial;->specularPowerDirty:Z

    .line 51
    move-object v1, v0

    new-instance v2, Lcom/sun/prism/TextureMap;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    sget-object v4, Lcom/sun/prism/PhongMaterial$MapType;->SPECULAR:Lcom/sun/prism/PhongMaterial$MapType;

    invoke-direct {v3, v4}, Lcom/sun/prism/TextureMap;-><init>(Lcom/sun/prism/PhongMaterial$MapType;)V

    iput-object v2, v1, Lcom/sun/javafx/sg/prism/NGPhongMaterial;->specularMap:Lcom/sun/prism/TextureMap;

    .line 53
    move-object v1, v0

    new-instance v2, Lcom/sun/prism/TextureMap;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    sget-object v4, Lcom/sun/prism/PhongMaterial$MapType;->BUMP:Lcom/sun/prism/PhongMaterial$MapType;

    invoke-direct {v3, v4}, Lcom/sun/prism/TextureMap;-><init>(Lcom/sun/prism/PhongMaterial$MapType;)V

    iput-object v2, v1, Lcom/sun/javafx/sg/prism/NGPhongMaterial;->bumpMap:Lcom/sun/prism/TextureMap;

    .line 55
    move-object v1, v0

    new-instance v2, Lcom/sun/prism/TextureMap;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    sget-object v4, Lcom/sun/prism/PhongMaterial$MapType;->SELF_ILLUM:Lcom/sun/prism/PhongMaterial$MapType;

    invoke-direct {v3, v4}, Lcom/sun/prism/TextureMap;-><init>(Lcom/sun/prism/PhongMaterial$MapType;)V

    iput-object v2, v1, Lcom/sun/javafx/sg/prism/NGPhongMaterial;->selfIllumMap:Lcom/sun/prism/TextureMap;

    return-void
.end method

.method private validate(Lcom/sun/prism/ResourceFactory;)V
    .locals 11

    .prologue
    .line 67
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGPhongMaterial;
    move-object v1, p1

    .local v1, "f":Lcom/sun/prism/ResourceFactory;
    move-object v5, v0

    iget-boolean v5, v5, Lcom/sun/javafx/sg/prism/NGPhongMaterial;->diffuseColorDirty:Z

    if-eqz v5, :cond_0

    .line 68
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/sg/prism/NGPhongMaterial;->diffuseColor:Lcom/sun/prism/paint/Color;

    if-eqz v5, :cond_8

    .line 69
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/sg/prism/NGPhongMaterial;->material:Lcom/sun/prism/PhongMaterial;

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/sg/prism/NGPhongMaterial;->diffuseColor:Lcom/sun/prism/paint/Color;

    .line 70
    invoke-virtual {v6}, Lcom/sun/prism/paint/Color;->getRed()F

    move-result v6

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/sg/prism/NGPhongMaterial;->diffuseColor:Lcom/sun/prism/paint/Color;

    invoke-virtual {v7}, Lcom/sun/prism/paint/Color;->getGreen()F

    move-result v7

    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/sg/prism/NGPhongMaterial;->diffuseColor:Lcom/sun/prism/paint/Color;

    .line 71
    invoke-virtual {v8}, Lcom/sun/prism/paint/Color;->getBlue()F

    move-result v8

    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/sg/prism/NGPhongMaterial;->diffuseColor:Lcom/sun/prism/paint/Color;

    invoke-virtual {v9}, Lcom/sun/prism/paint/Color;->getAlpha()F

    move-result v9

    .line 69
    invoke-interface {v5, v6, v7, v8, v9}, Lcom/sun/prism/PhongMaterial;->setDiffuseColor(FFFF)V

    .line 75
    :goto_0
    move-object v5, v0

    const/4 v6, 0x0

    iput-boolean v6, v5, Lcom/sun/javafx/sg/prism/NGPhongMaterial;->diffuseColorDirty:Z

    .line 78
    :cond_0
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/sg/prism/NGPhongMaterial;->diffuseMap:Lcom/sun/prism/TextureMap;

    invoke-virtual {v5}, Lcom/sun/prism/TextureMap;->isDirty()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 79
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/sg/prism/NGPhongMaterial;->diffuseMap:Lcom/sun/prism/TextureMap;

    invoke-virtual {v5}, Lcom/sun/prism/TextureMap;->getImage()Lcom/sun/prism/Image;

    move-result-object v5

    if-nez v5, :cond_1

    .line 80
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/sg/prism/NGPhongMaterial;->diffuseMap:Lcom/sun/prism/TextureMap;

    sget-object v6, Lcom/sun/javafx/sg/prism/NGPhongMaterial;->WHITE_1X1:Lcom/sun/prism/Image;

    invoke-virtual {v5, v6}, Lcom/sun/prism/TextureMap;->setImage(Lcom/sun/prism/Image;)V

    .line 82
    :cond_1
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/sg/prism/NGPhongMaterial;->material:Lcom/sun/prism/PhongMaterial;

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/sg/prism/NGPhongMaterial;->diffuseMap:Lcom/sun/prism/TextureMap;

    invoke-interface {v5, v6}, Lcom/sun/prism/PhongMaterial;->setTextureMap(Lcom/sun/prism/TextureMap;)V

    .line 84
    :cond_2
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/sg/prism/NGPhongMaterial;->bumpMap:Lcom/sun/prism/TextureMap;

    invoke-virtual {v5}, Lcom/sun/prism/TextureMap;->isDirty()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 85
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/sg/prism/NGPhongMaterial;->material:Lcom/sun/prism/PhongMaterial;

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/sg/prism/NGPhongMaterial;->bumpMap:Lcom/sun/prism/TextureMap;

    invoke-interface {v5, v6}, Lcom/sun/prism/PhongMaterial;->setTextureMap(Lcom/sun/prism/TextureMap;)V

    .line 87
    :cond_3
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/sg/prism/NGPhongMaterial;->selfIllumMap:Lcom/sun/prism/TextureMap;

    invoke-virtual {v5}, Lcom/sun/prism/TextureMap;->isDirty()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 88
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/sg/prism/NGPhongMaterial;->material:Lcom/sun/prism/PhongMaterial;

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/sg/prism/NGPhongMaterial;->selfIllumMap:Lcom/sun/prism/TextureMap;

    invoke-interface {v5, v6}, Lcom/sun/prism/PhongMaterial;->setTextureMap(Lcom/sun/prism/TextureMap;)V

    .line 90
    :cond_4
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/sg/prism/NGPhongMaterial;->specularMap:Lcom/sun/prism/TextureMap;

    invoke-virtual {v5}, Lcom/sun/prism/TextureMap;->isDirty()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 91
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/sg/prism/NGPhongMaterial;->material:Lcom/sun/prism/PhongMaterial;

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/sg/prism/NGPhongMaterial;->specularMap:Lcom/sun/prism/TextureMap;

    invoke-interface {v5, v6}, Lcom/sun/prism/PhongMaterial;->setTextureMap(Lcom/sun/prism/TextureMap;)V

    .line 93
    :cond_5
    move-object v5, v0

    iget-boolean v5, v5, Lcom/sun/javafx/sg/prism/NGPhongMaterial;->specularColorDirty:Z

    if-nez v5, :cond_6

    move-object v5, v0

    iget-boolean v5, v5, Lcom/sun/javafx/sg/prism/NGPhongMaterial;->specularPowerDirty:Z

    if-eqz v5, :cond_7

    .line 94
    :cond_6
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/sg/prism/NGPhongMaterial;->specularColor:Lcom/sun/prism/paint/Color;

    if-eqz v5, :cond_9

    .line 95
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/sg/prism/NGPhongMaterial;->specularColor:Lcom/sun/prism/paint/Color;

    invoke-virtual {v5}, Lcom/sun/prism/paint/Color;->getRed()F

    move-result v5

    move v2, v5

    .line 96
    .local v2, "r":F
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/sg/prism/NGPhongMaterial;->specularColor:Lcom/sun/prism/paint/Color;

    invoke-virtual {v5}, Lcom/sun/prism/paint/Color;->getGreen()F

    move-result v5

    move v3, v5

    .line 97
    .local v3, "g":F
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/sg/prism/NGPhongMaterial;->specularColor:Lcom/sun/prism/paint/Color;

    invoke-virtual {v5}, Lcom/sun/prism/paint/Color;->getBlue()F

    move-result v5

    move v4, v5

    .line 98
    .local v4, "b":F
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/sg/prism/NGPhongMaterial;->material:Lcom/sun/prism/PhongMaterial;

    const/4 v6, 0x1

    move v7, v2

    move v8, v3

    move v9, v4

    move-object v10, v0

    iget v10, v10, Lcom/sun/javafx/sg/prism/NGPhongMaterial;->specularPower:F

    invoke-interface/range {v5 .. v10}, Lcom/sun/prism/PhongMaterial;->setSpecularColor(ZFFFF)V

    .line 99
    .line 102
    .end local v2    # "r":F
    .end local v3    # "g":F
    .end local v4    # "b":F
    :goto_1
    move-object v5, v0

    const/4 v6, 0x0

    iput-boolean v6, v5, Lcom/sun/javafx/sg/prism/NGPhongMaterial;->specularColorDirty:Z

    .line 103
    move-object v5, v0

    const/4 v6, 0x0

    iput-boolean v6, v5, Lcom/sun/javafx/sg/prism/NGPhongMaterial;->specularPowerDirty:Z

    .line 105
    :cond_7
    return-void

    .line 73
    :cond_8
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/sg/prism/NGPhongMaterial;->material:Lcom/sun/prism/PhongMaterial;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-interface {v5, v6, v7, v8, v9}, Lcom/sun/prism/PhongMaterial;->setDiffuseColor(FFFF)V

    goto/16 :goto_0

    .line 100
    :cond_9
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/sg/prism/NGPhongMaterial;->material:Lcom/sun/prism/PhongMaterial;

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    move-object v10, v0

    iget v10, v10, Lcom/sun/javafx/sg/prism/NGPhongMaterial;->specularPower:F

    invoke-interface/range {v5 .. v10}, Lcom/sun/prism/PhongMaterial;->setSpecularColor(ZFFFF)V

    goto :goto_1
.end method


# virtual methods
.method createMaterial(Lcom/sun/prism/ResourceFactory;)Lcom/sun/prism/Material;
    .locals 4

    .prologue
    .line 58
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGPhongMaterial;
    move-object v1, p1

    .local v1, "f":Lcom/sun/prism/ResourceFactory;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/sg/prism/NGPhongMaterial;->material:Lcom/sun/prism/PhongMaterial;

    if-nez v2, :cond_0

    .line 59
    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Lcom/sun/prism/ResourceFactory;->createPhongMaterial()Lcom/sun/prism/PhongMaterial;

    move-result-object v3

    iput-object v3, v2, Lcom/sun/javafx/sg/prism/NGPhongMaterial;->material:Lcom/sun/prism/PhongMaterial;

    .line 61
    :cond_0
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/sg/prism/NGPhongMaterial;->validate(Lcom/sun/prism/ResourceFactory;)V

    .line 62
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/sg/prism/NGPhongMaterial;->material:Lcom/sun/prism/PhongMaterial;

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/sg/prism/NGPhongMaterial;
    return-object v0
.end method

.method public setBumpMap(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 137
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGPhongMaterial;
    move-object v1, p1

    .local v1, "bumpMap":Ljava/lang/Object;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/sg/prism/NGPhongMaterial;->bumpMap:Lcom/sun/prism/TextureMap;

    move-object v3, v1

    check-cast v3, Lcom/sun/prism/Image;

    invoke-virtual {v2, v3}, Lcom/sun/prism/TextureMap;->setImage(Lcom/sun/prism/Image;)V

    .line 138
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/sg/prism/NGPhongMaterial;->bumpMap:Lcom/sun/prism/TextureMap;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sun/prism/TextureMap;->setDirty(Z)V

    .line 139
    return-void
.end method

.method public setDiffuseColor(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 108
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGPhongMaterial;
    move-object v1, p1

    .local v1, "diffuseColor":Ljava/lang/Object;
    move-object v2, v0

    move-object v3, v1

    check-cast v3, Lcom/sun/prism/paint/Color;

    iput-object v3, v2, Lcom/sun/javafx/sg/prism/NGPhongMaterial;->diffuseColor:Lcom/sun/prism/paint/Color;

    .line 109
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/sun/javafx/sg/prism/NGPhongMaterial;->diffuseColorDirty:Z

    .line 110
    return-void
.end method

.method public setDiffuseMap(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 127
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGPhongMaterial;
    move-object v1, p1

    .local v1, "diffuseMap":Ljava/lang/Object;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/sg/prism/NGPhongMaterial;->diffuseMap:Lcom/sun/prism/TextureMap;

    move-object v3, v1

    check-cast v3, Lcom/sun/prism/Image;

    invoke-virtual {v2, v3}, Lcom/sun/prism/TextureMap;->setImage(Lcom/sun/prism/Image;)V

    .line 128
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/sg/prism/NGPhongMaterial;->diffuseMap:Lcom/sun/prism/TextureMap;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sun/prism/TextureMap;->setDirty(Z)V

    .line 129
    return-void
.end method

.method public setSelfIllumMap(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 142
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGPhongMaterial;
    move-object v1, p1

    .local v1, "selfIllumMap":Ljava/lang/Object;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/sg/prism/NGPhongMaterial;->selfIllumMap:Lcom/sun/prism/TextureMap;

    move-object v3, v1

    check-cast v3, Lcom/sun/prism/Image;

    invoke-virtual {v2, v3}, Lcom/sun/prism/TextureMap;->setImage(Lcom/sun/prism/Image;)V

    .line 143
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/sg/prism/NGPhongMaterial;->selfIllumMap:Lcom/sun/prism/TextureMap;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sun/prism/TextureMap;->setDirty(Z)V

    .line 144
    return-void
.end method

.method public setSpecularColor(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 113
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGPhongMaterial;
    move-object v1, p1

    .local v1, "specularColor":Ljava/lang/Object;
    move-object v2, v0

    move-object v3, v1

    check-cast v3, Lcom/sun/prism/paint/Color;

    iput-object v3, v2, Lcom/sun/javafx/sg/prism/NGPhongMaterial;->specularColor:Lcom/sun/prism/paint/Color;

    .line 114
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/sun/javafx/sg/prism/NGPhongMaterial;->specularColorDirty:Z

    .line 115
    return-void
.end method

.method public setSpecularMap(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 132
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGPhongMaterial;
    move-object v1, p1

    .local v1, "specularMap":Ljava/lang/Object;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/sg/prism/NGPhongMaterial;->specularMap:Lcom/sun/prism/TextureMap;

    move-object v3, v1

    check-cast v3, Lcom/sun/prism/Image;

    invoke-virtual {v2, v3}, Lcom/sun/prism/TextureMap;->setImage(Lcom/sun/prism/Image;)V

    .line 133
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/sg/prism/NGPhongMaterial;->specularMap:Lcom/sun/prism/TextureMap;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sun/prism/TextureMap;->setDirty(Z)V

    .line 134
    return-void
.end method

.method public setSpecularPower(F)V
    .locals 4

    .prologue
    .line 119
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGPhongMaterial;
    move v1, p1

    .local v1, "specularPower":F
    move v2, v1

    const v3, 0x3a83126f    # 0.001f

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    .line 120
    const v2, 0x3a83126f    # 0.001f

    move v1, v2

    .line 122
    :cond_0
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/sun/javafx/sg/prism/NGPhongMaterial;->specularPower:F

    .line 123
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/sun/javafx/sg/prism/NGPhongMaterial;->specularPowerDirty:Z

    .line 124
    return-void
.end method

.method test_getDiffuseColor()Lcom/sun/prism/paint/Color;
    .locals 2

    .prologue
    .line 148
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGPhongMaterial;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/sg/prism/NGPhongMaterial;->diffuseColor:Lcom/sun/prism/paint/Color;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/sg/prism/NGPhongMaterial;
    return-object v0
.end method
