.class Lcom/sun/prism/es2/ES2PhongShader;
.super Ljava/lang/Object;
.source "ES2PhongShader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/prism/es2/ES2PhongShader$BumpMapState;,
        Lcom/sun/prism/es2/ES2PhongShader$SelfIllumState;,
        Lcom/sun/prism/es2/ES2PhongShader$SpecularState;,
        Lcom/sun/prism/es2/ES2PhongShader$DiffuseState;
    }
.end annotation


# static fields
.field private static EXTENSION:Ljava/lang/String; = null

.field private static diffuseShaderParts:[Ljava/lang/String; = null

.field static final lightStateCount:I = 0x4

.field private static lightingShaderParts:[Ljava/lang/String;

.field static mainFragShaderSource:Ljava/lang/String;

.field private static normalMapShaderParts:[Ljava/lang/String;

.field private static selfIllumShaderParts:[Ljava/lang/String;

.field static shaders:[[[[[Lcom/sun/prism/es2/ES2Shader;

.field private static specularShaderParts:[Ljava/lang/String;

.field static vertexShaderSource:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 37
    const/4 v0, 0x0

    check-cast v0, [[[[[Lcom/sun/prism/es2/ES2Shader;

    sput-object v0, Lcom/sun/prism/es2/ES2PhongShader;->shaders:[[[[[Lcom/sun/prism/es2/ES2Shader;

    .line 68
    invoke-static {}, Lcom/sun/prism/es2/ES2PhongShader$DiffuseState;->values()[Lcom/sun/prism/es2/ES2PhongShader$DiffuseState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/sun/prism/es2/ES2PhongShader;->diffuseShaderParts:[Ljava/lang/String;

    .line 69
    invoke-static {}, Lcom/sun/prism/es2/ES2PhongShader$SpecularState;->values()[Lcom/sun/prism/es2/ES2PhongShader$SpecularState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/sun/prism/es2/ES2PhongShader;->specularShaderParts:[Ljava/lang/String;

    .line 70
    invoke-static {}, Lcom/sun/prism/es2/ES2PhongShader$SelfIllumState;->values()[Lcom/sun/prism/es2/ES2PhongShader$SelfIllumState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/sun/prism/es2/ES2PhongShader;->selfIllumShaderParts:[Ljava/lang/String;

    .line 71
    invoke-static {}, Lcom/sun/prism/es2/ES2PhongShader$BumpMapState;->values()[Lcom/sun/prism/es2/ES2PhongShader$BumpMapState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/sun/prism/es2/ES2PhongShader;->normalMapShaderParts:[Ljava/lang/String;

    .line 72
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/sun/prism/es2/ES2PhongShader;->lightingShaderParts:[Ljava/lang/String;

    .line 74
    const-string v0, "#extension GL_OES_standard_derivatives : enable"

    sput-object v0, Lcom/sun/prism/es2/ES2PhongShader;->EXTENSION:Ljava/lang/String;

    .line 77
    invoke-static {}, Lcom/sun/prism/es2/ES2PhongShader$DiffuseState;->values()[Lcom/sun/prism/es2/ES2PhongShader$DiffuseState;

    move-result-object v0

    array-length v0, v0

    invoke-static {}, Lcom/sun/prism/es2/ES2PhongShader$SpecularState;->values()[Lcom/sun/prism/es2/ES2PhongShader$SpecularState;

    move-result-object v1

    array-length v1, v1

    .line 78
    invoke-static {}, Lcom/sun/prism/es2/ES2PhongShader$SelfIllumState;->values()[Lcom/sun/prism/es2/ES2PhongShader$SelfIllumState;

    move-result-object v2

    array-length v2, v2

    invoke-static {}, Lcom/sun/prism/es2/ES2PhongShader$BumpMapState;->values()[Lcom/sun/prism/es2/ES2PhongShader$BumpMapState;

    move-result-object v3

    array-length v3, v3

    const/4 v4, 0x4

    filled-new-array {v0, v1, v2, v3, v4}, [I

    move-result-object v1

    const-class v0, Lcom/sun/prism/es2/ES2Shader;

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[[[[Lcom/sun/prism/es2/ES2Shader;

    sput-object v0, Lcom/sun/prism/es2/ES2PhongShader;->shaders:[[[[[Lcom/sun/prism/es2/ES2Shader;

    .line 81
    sget-object v0, Lcom/sun/prism/es2/ES2PhongShader;->diffuseShaderParts:[Ljava/lang/String;

    sget-object v1, Lcom/sun/prism/es2/ES2PhongShader$DiffuseState;->NONE:Lcom/sun/prism/es2/ES2PhongShader$DiffuseState;

    invoke-virtual {v1}, Lcom/sun/prism/es2/ES2PhongShader$DiffuseState;->ordinal()I

    move-result v1

    const-class v2, Lcom/sun/prism/es2/ES2ResourceFactory;

    const-string v3, "glsl/diffuse_none.frag"

    .line 82
    invoke-virtual {v2, v3}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    invoke-static {v2}, Lcom/sun/prism/es2/ES2Shader;->readStreamIntoString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 83
    sget-object v0, Lcom/sun/prism/es2/ES2PhongShader;->diffuseShaderParts:[Ljava/lang/String;

    sget-object v1, Lcom/sun/prism/es2/ES2PhongShader$DiffuseState;->DIFFUSECOLOR:Lcom/sun/prism/es2/ES2PhongShader$DiffuseState;

    invoke-virtual {v1}, Lcom/sun/prism/es2/ES2PhongShader$DiffuseState;->ordinal()I

    move-result v1

    const-class v2, Lcom/sun/prism/es2/ES2ResourceFactory;

    const-string v3, "glsl/diffuse_color.frag"

    .line 84
    invoke-virtual {v2, v3}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    invoke-static {v2}, Lcom/sun/prism/es2/ES2Shader;->readStreamIntoString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 85
    sget-object v0, Lcom/sun/prism/es2/ES2PhongShader;->diffuseShaderParts:[Ljava/lang/String;

    sget-object v1, Lcom/sun/prism/es2/ES2PhongShader$DiffuseState;->TEXTURE:Lcom/sun/prism/es2/ES2PhongShader$DiffuseState;

    invoke-virtual {v1}, Lcom/sun/prism/es2/ES2PhongShader$DiffuseState;->ordinal()I

    move-result v1

    const-class v2, Lcom/sun/prism/es2/ES2ResourceFactory;

    const-string v3, "glsl/diffuse_texture.frag"

    .line 86
    invoke-virtual {v2, v3}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    invoke-static {v2}, Lcom/sun/prism/es2/ES2Shader;->readStreamIntoString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 88
    sget-object v0, Lcom/sun/prism/es2/ES2PhongShader;->specularShaderParts:[Ljava/lang/String;

    sget-object v1, Lcom/sun/prism/es2/ES2PhongShader$SpecularState;->NONE:Lcom/sun/prism/es2/ES2PhongShader$SpecularState;

    invoke-virtual {v1}, Lcom/sun/prism/es2/ES2PhongShader$SpecularState;->ordinal()I

    move-result v1

    const-class v2, Lcom/sun/prism/es2/ES2ResourceFactory;

    const-string v3, "glsl/specular_none.frag"

    .line 89
    invoke-virtual {v2, v3}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    invoke-static {v2}, Lcom/sun/prism/es2/ES2Shader;->readStreamIntoString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 90
    sget-object v0, Lcom/sun/prism/es2/ES2PhongShader;->specularShaderParts:[Ljava/lang/String;

    sget-object v1, Lcom/sun/prism/es2/ES2PhongShader$SpecularState;->TEXTURE:Lcom/sun/prism/es2/ES2PhongShader$SpecularState;

    invoke-virtual {v1}, Lcom/sun/prism/es2/ES2PhongShader$SpecularState;->ordinal()I

    move-result v1

    const-class v2, Lcom/sun/prism/es2/ES2ResourceFactory;

    const-string v3, "glsl/specular_texture.frag"

    .line 91
    invoke-virtual {v2, v3}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    invoke-static {v2}, Lcom/sun/prism/es2/ES2Shader;->readStreamIntoString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 92
    sget-object v0, Lcom/sun/prism/es2/ES2PhongShader;->specularShaderParts:[Ljava/lang/String;

    sget-object v1, Lcom/sun/prism/es2/ES2PhongShader$SpecularState;->COLOR:Lcom/sun/prism/es2/ES2PhongShader$SpecularState;

    invoke-virtual {v1}, Lcom/sun/prism/es2/ES2PhongShader$SpecularState;->ordinal()I

    move-result v1

    const-class v2, Lcom/sun/prism/es2/ES2ResourceFactory;

    const-string v3, "glsl/specular_color.frag"

    .line 93
    invoke-virtual {v2, v3}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    invoke-static {v2}, Lcom/sun/prism/es2/ES2Shader;->readStreamIntoString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 94
    sget-object v0, Lcom/sun/prism/es2/ES2PhongShader;->specularShaderParts:[Ljava/lang/String;

    sget-object v1, Lcom/sun/prism/es2/ES2PhongShader$SpecularState;->MIX:Lcom/sun/prism/es2/ES2PhongShader$SpecularState;

    invoke-virtual {v1}, Lcom/sun/prism/es2/ES2PhongShader$SpecularState;->ordinal()I

    move-result v1

    const-class v2, Lcom/sun/prism/es2/ES2ResourceFactory;

    const-string v3, "glsl/specular_mix.frag"

    .line 95
    invoke-virtual {v2, v3}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    invoke-static {v2}, Lcom/sun/prism/es2/ES2Shader;->readStreamIntoString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 97
    sget-object v0, Lcom/sun/prism/es2/ES2PhongShader;->selfIllumShaderParts:[Ljava/lang/String;

    sget-object v1, Lcom/sun/prism/es2/ES2PhongShader$SelfIllumState;->NONE:Lcom/sun/prism/es2/ES2PhongShader$SelfIllumState;

    invoke-virtual {v1}, Lcom/sun/prism/es2/ES2PhongShader$SelfIllumState;->ordinal()I

    move-result v1

    const-class v2, Lcom/sun/prism/es2/ES2ResourceFactory;

    const-string v3, "glsl/selfIllum_none.frag"

    .line 98
    invoke-virtual {v2, v3}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    invoke-static {v2}, Lcom/sun/prism/es2/ES2Shader;->readStreamIntoString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 99
    sget-object v0, Lcom/sun/prism/es2/ES2PhongShader;->selfIllumShaderParts:[Ljava/lang/String;

    sget-object v1, Lcom/sun/prism/es2/ES2PhongShader$SelfIllumState;->TEXTURE:Lcom/sun/prism/es2/ES2PhongShader$SelfIllumState;

    invoke-virtual {v1}, Lcom/sun/prism/es2/ES2PhongShader$SelfIllumState;->ordinal()I

    move-result v1

    const-class v2, Lcom/sun/prism/es2/ES2ResourceFactory;

    const-string v3, "glsl/selfIllum_texture.frag"

    .line 100
    invoke-virtual {v2, v3}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    invoke-static {v2}, Lcom/sun/prism/es2/ES2Shader;->readStreamIntoString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 102
    sget-object v0, Lcom/sun/prism/es2/ES2PhongShader;->normalMapShaderParts:[Ljava/lang/String;

    sget-object v1, Lcom/sun/prism/es2/ES2PhongShader$BumpMapState;->NONE:Lcom/sun/prism/es2/ES2PhongShader$BumpMapState;

    invoke-virtual {v1}, Lcom/sun/prism/es2/ES2PhongShader$BumpMapState;->ordinal()I

    move-result v1

    const-class v2, Lcom/sun/prism/es2/ES2ResourceFactory;

    const-string v3, "glsl/normalMap_none.frag"

    .line 103
    invoke-virtual {v2, v3}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    invoke-static {v2}, Lcom/sun/prism/es2/ES2Shader;->readStreamIntoString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 104
    sget-object v0, Lcom/sun/prism/es2/ES2PhongShader;->normalMapShaderParts:[Ljava/lang/String;

    sget-object v1, Lcom/sun/prism/es2/ES2PhongShader$BumpMapState;->TEXTURE:Lcom/sun/prism/es2/ES2PhongShader$BumpMapState;

    invoke-virtual {v1}, Lcom/sun/prism/es2/ES2PhongShader$BumpMapState;->ordinal()I

    move-result v1

    const-class v2, Lcom/sun/prism/es2/ES2ResourceFactory;

    const-string v3, "glsl/normalMap_texture.frag"

    .line 105
    invoke-virtual {v2, v3}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    invoke-static {v2}, Lcom/sun/prism/es2/ES2Shader;->readStreamIntoString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 107
    sget-object v0, Lcom/sun/prism/es2/ES2PhongShader;->lightingShaderParts:[Ljava/lang/String;

    const/4 v1, 0x0

    const-class v2, Lcom/sun/prism/es2/ES2ResourceFactory;

    const-string v3, "glsl/main0Lights.frag"

    .line 108
    invoke-virtual {v2, v3}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    invoke-static {v2}, Lcom/sun/prism/es2/ES2Shader;->readStreamIntoString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 109
    sget-object v0, Lcom/sun/prism/es2/ES2PhongShader;->lightingShaderParts:[Ljava/lang/String;

    const/4 v1, 0x1

    const-class v2, Lcom/sun/prism/es2/ES2ResourceFactory;

    const-string v3, "glsl/main1Light.frag"

    .line 110
    invoke-virtual {v2, v3}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    invoke-static {v2}, Lcom/sun/prism/es2/ES2Shader;->readStreamIntoString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 111
    sget-object v0, Lcom/sun/prism/es2/ES2PhongShader;->lightingShaderParts:[Ljava/lang/String;

    const/4 v1, 0x2

    const-class v2, Lcom/sun/prism/es2/ES2ResourceFactory;

    const-string v3, "glsl/main2Lights.frag"

    .line 112
    invoke-virtual {v2, v3}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    invoke-static {v2}, Lcom/sun/prism/es2/ES2Shader;->readStreamIntoString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 113
    sget-object v0, Lcom/sun/prism/es2/ES2PhongShader;->lightingShaderParts:[Ljava/lang/String;

    const/4 v1, 0x3

    const-class v2, Lcom/sun/prism/es2/ES2ResourceFactory;

    const-string v3, "glsl/main3Lights.frag"

    .line 114
    invoke-virtual {v2, v3}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    invoke-static {v2}, Lcom/sun/prism/es2/ES2Shader;->readStreamIntoString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 116
    const-class v0, Lcom/sun/prism/es2/ES2ResourceFactory;

    const-string v1, "glsl/main.vert"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/prism/es2/ES2Shader;->readStreamIntoString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sun/prism/es2/ES2PhongShader;->vertexShaderSource:Ljava/lang/String;

    .line 118
    return-void
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/ES2PhongShader;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getShader(Lcom/sun/prism/es2/ES2MeshView;Lcom/sun/prism/es2/ES2Context;)Lcom/sun/prism/es2/ES2Shader;
    .locals 22

    .prologue
    .line 131
    move-object/from16 v0, p0

    .local v0, "meshView":Lcom/sun/prism/es2/ES2MeshView;
    move-object/from16 v1, p1

    .local v1, "context":Lcom/sun/prism/es2/ES2Context;
    move-object v14, v0

    invoke-virtual {v14}, Lcom/sun/prism/es2/ES2MeshView;->getMaterial()Lcom/sun/prism/es2/ES2PhongMaterial;

    move-result-object v14

    move-object v2, v14

    .line 133
    .local v2, "material":Lcom/sun/prism/es2/ES2PhongMaterial;
    sget-object v14, Lcom/sun/prism/es2/ES2PhongShader$DiffuseState;->DIFFUSECOLOR:Lcom/sun/prism/es2/ES2PhongShader$DiffuseState;

    move-object v3, v14

    .line 134
    .local v3, "diffuseState":Lcom/sun/prism/es2/ES2PhongShader$DiffuseState;
    move-object v14, v2

    iget-object v14, v14, Lcom/sun/prism/es2/ES2PhongMaterial;->maps:[Lcom/sun/prism/TextureMap;

    sget v15, Lcom/sun/prism/es2/ES2PhongMaterial;->DIFFUSE:I

    aget-object v14, v14, v15

    invoke-virtual {v14}, Lcom/sun/prism/TextureMap;->getTexture()Lcom/sun/prism/Texture;

    move-result-object v14

    if-eqz v14, :cond_0

    .line 135
    sget-object v14, Lcom/sun/prism/es2/ES2PhongShader$DiffuseState;->TEXTURE:Lcom/sun/prism/es2/ES2PhongShader$DiffuseState;

    move-object v3, v14

    .line 138
    :cond_0
    move-object v14, v2

    invoke-static {v14}, Lcom/sun/prism/es2/ES2PhongShader;->getSpecularState(Lcom/sun/prism/es2/ES2PhongMaterial;)Lcom/sun/prism/es2/ES2PhongShader$SpecularState;

    move-result-object v14

    move-object v4, v14

    .line 140
    .local v4, "specularState":Lcom/sun/prism/es2/ES2PhongShader$SpecularState;
    sget-object v14, Lcom/sun/prism/es2/ES2PhongShader$BumpMapState;->NONE:Lcom/sun/prism/es2/ES2PhongShader$BumpMapState;

    move-object v5, v14

    .line 141
    .local v5, "bumpState":Lcom/sun/prism/es2/ES2PhongShader$BumpMapState;
    move-object v14, v2

    iget-object v14, v14, Lcom/sun/prism/es2/ES2PhongMaterial;->maps:[Lcom/sun/prism/TextureMap;

    sget v15, Lcom/sun/prism/es2/ES2PhongMaterial;->BUMP:I

    aget-object v14, v14, v15

    invoke-virtual {v14}, Lcom/sun/prism/TextureMap;->getTexture()Lcom/sun/prism/Texture;

    move-result-object v14

    if-eqz v14, :cond_1

    .line 142
    sget-object v14, Lcom/sun/prism/es2/ES2PhongShader$BumpMapState;->TEXTURE:Lcom/sun/prism/es2/ES2PhongShader$BumpMapState;

    move-object v5, v14

    .line 145
    :cond_1
    sget-object v14, Lcom/sun/prism/es2/ES2PhongShader$SelfIllumState;->NONE:Lcom/sun/prism/es2/ES2PhongShader$SelfIllumState;

    move-object v6, v14

    .line 146
    .local v6, "selfIllumState":Lcom/sun/prism/es2/ES2PhongShader$SelfIllumState;
    move-object v14, v2

    iget-object v14, v14, Lcom/sun/prism/es2/ES2PhongMaterial;->maps:[Lcom/sun/prism/TextureMap;

    sget v15, Lcom/sun/prism/es2/ES2PhongMaterial;->SELF_ILLUM:I

    aget-object v14, v14, v15

    invoke-virtual {v14}, Lcom/sun/prism/TextureMap;->getTexture()Lcom/sun/prism/Texture;

    move-result-object v14

    if-eqz v14, :cond_2

    .line 147
    sget-object v14, Lcom/sun/prism/es2/ES2PhongShader$SelfIllumState;->TEXTURE:Lcom/sun/prism/es2/ES2PhongShader$SelfIllumState;

    move-object v6, v14

    .line 150
    :cond_2
    const/4 v14, 0x0

    move v7, v14

    .line 151
    .local v7, "numLights":I
    move-object v14, v0

    invoke-virtual {v14}, Lcom/sun/prism/es2/ES2MeshView;->getPointLights()[Lcom/sun/prism/es2/ES2Light;

    move-result-object v14

    move-object v8, v14

    move-object v14, v8

    array-length v14, v14

    move v9, v14

    const/4 v14, 0x0

    move v10, v14

    :goto_0
    move v14, v10

    move v15, v9

    if-ge v14, v15, :cond_4

    move-object v14, v8

    move v15, v10

    aget-object v14, v14, v15

    move-object v11, v14

    .line 152
    .local v11, "light":Lcom/sun/prism/es2/ES2Light;
    move-object v14, v11

    if-eqz v14, :cond_3

    move-object v14, v11

    iget v14, v14, Lcom/sun/prism/es2/ES2Light;->w:F

    const/4 v15, 0x0

    cmpl-float v14, v14, v15

    if-lez v14, :cond_3

    add-int/lit8 v7, v7, 0x1

    .line 151
    :cond_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 155
    .end local v11    # "light":Lcom/sun/prism/es2/ES2Light;
    :cond_4
    sget-object v14, Lcom/sun/prism/es2/ES2PhongShader;->shaders:[[[[[Lcom/sun/prism/es2/ES2Shader;

    move-object v15, v3

    invoke-virtual {v15}, Lcom/sun/prism/es2/ES2PhongShader$DiffuseState;->ordinal()I

    move-result v15

    aget-object v14, v14, v15

    move-object v15, v4

    invoke-virtual {v15}, Lcom/sun/prism/es2/ES2PhongShader$SpecularState;->ordinal()I

    move-result v15

    aget-object v14, v14, v15

    move-object v15, v6

    .line 156
    invoke-virtual {v15}, Lcom/sun/prism/es2/ES2PhongShader$SelfIllumState;->ordinal()I

    move-result v15

    aget-object v14, v14, v15

    move-object v15, v5

    invoke-virtual {v15}, Lcom/sun/prism/es2/ES2PhongShader$BumpMapState;->ordinal()I

    move-result v15

    aget-object v14, v14, v15

    move v15, v7

    aget-object v14, v14, v15

    move-object v8, v14

    .line 157
    .local v8, "shader":Lcom/sun/prism/es2/ES2Shader;
    move-object v14, v8

    if-nez v14, :cond_6

    .line 158
    sget-object v14, Lcom/sun/prism/es2/ES2PhongShader;->lightingShaderParts:[Ljava/lang/String;

    move v15, v7

    aget-object v14, v14, v15

    const-string v15, "vec4 apply_diffuse();"

    sget-object v16, Lcom/sun/prism/es2/ES2PhongShader;->diffuseShaderParts:[Ljava/lang/String;

    move-object/from16 v17, v3

    invoke-virtual/range {v17 .. v17}, Lcom/sun/prism/es2/ES2PhongShader$DiffuseState;->ordinal()I

    move-result v17

    aget-object v16, v16, v17

    invoke-virtual/range {v14 .. v16}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v14

    move-object v9, v14

    .line 159
    .local v9, "fragShader":Ljava/lang/String;
    move-object v14, v9

    const-string v15, "vec4 apply_specular();"

    sget-object v16, Lcom/sun/prism/es2/ES2PhongShader;->specularShaderParts:[Ljava/lang/String;

    move-object/from16 v17, v4

    invoke-virtual/range {v17 .. v17}, Lcom/sun/prism/es2/ES2PhongShader$SpecularState;->ordinal()I

    move-result v17

    aget-object v16, v16, v17

    invoke-virtual/range {v14 .. v16}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v14

    move-object v9, v14

    .line 160
    move-object v14, v9

    const-string v15, "vec3 apply_normal();"

    sget-object v16, Lcom/sun/prism/es2/ES2PhongShader;->normalMapShaderParts:[Ljava/lang/String;

    move-object/from16 v17, v5

    invoke-virtual/range {v17 .. v17}, Lcom/sun/prism/es2/ES2PhongShader$BumpMapState;->ordinal()I

    move-result v17

    aget-object v16, v16, v17

    invoke-virtual/range {v14 .. v16}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v14

    move-object v9, v14

    .line 161
    move-object v14, v9

    const-string v15, "vec4 apply_selfIllum();"

    sget-object v16, Lcom/sun/prism/es2/ES2PhongShader;->selfIllumShaderParts:[Ljava/lang/String;

    move-object/from16 v17, v6

    invoke-virtual/range {v17 .. v17}, Lcom/sun/prism/es2/ES2PhongShader$SelfIllumState;->ordinal()I

    move-result v17

    aget-object v16, v16, v17

    invoke-virtual/range {v14 .. v16}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v14

    move-object v9, v14

    .line 164
    move-object v14, v9

    sget-object v15, Lcom/sun/prism/es2/ES2PhongShader;->EXTENSION:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    move v10, v14

    .line 165
    .local v10, "extCnt":I
    move v14, v10

    if-lez v14, :cond_5

    .line 166
    move-object v14, v9

    sget-object v15, Lcom/sun/prism/es2/ES2PhongShader;->EXTENSION:Ljava/lang/String;

    move/from16 v16, v10

    const/16 v17, 0xa

    add-int/lit8 v16, v16, 0xa

    invoke-virtual/range {v14 .. v16}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v14

    move v11, v14

    .line 167
    .local v11, "extCnt2":I
    move v14, v11

    if-lez v14, :cond_5

    .line 168
    move-object v14, v9

    sget-object v15, Lcom/sun/prism/es2/ES2PhongShader;->EXTENSION:Ljava/lang/String;

    const-string v16, "#xtension"

    invoke-virtual/range {v14 .. v16}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object v9, v14

    .line 169
    move-object v14, v9

    sget-object v15, Lcom/sun/prism/es2/ES2PhongShader;->EXTENSION:Ljava/lang/String;

    const-string v16, ""

    invoke-virtual/range {v14 .. v16}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object v9, v14

    .line 170
    move-object v14, v9

    const-string v15, "#xtension"

    sget-object v16, Lcom/sun/prism/es2/ES2PhongShader;->EXTENSION:Ljava/lang/String;

    invoke-virtual/range {v14 .. v16}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object v9, v14

    .line 174
    .end local v11    # "extCnt2":I
    :cond_5
    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/String;

    move-object/from16 v21, v14

    move-object/from16 v14, v21

    move-object/from16 v15, v21

    const/16 v16, 0x0

    move-object/from16 v17, v9

    aput-object v17, v15, v16

    move-object v11, v14

    .line 179
    .local v11, "pixelShaders":[Ljava/lang/String;
    new-instance v14, Ljava/util/HashMap;

    move-object/from16 v21, v14

    move-object/from16 v14, v21

    move-object/from16 v15, v21

    invoke-direct {v15}, Ljava/util/HashMap;-><init>()V

    move-object v12, v14

    .line 180
    .local v12, "attributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    move-object v14, v12

    const-string v15, "pos"

    const/16 v16, 0x0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    invoke-interface/range {v14 .. v16}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    .line 181
    move-object v14, v12

    const-string v15, "texCoords"

    const/16 v16, 0x1

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    invoke-interface/range {v14 .. v16}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    .line 182
    move-object v14, v12

    const-string v15, "tangent"

    const/16 v16, 0x2

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    invoke-interface/range {v14 .. v16}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    .line 184
    new-instance v14, Ljava/util/HashMap;

    move-object/from16 v21, v14

    move-object/from16 v14, v21

    move-object/from16 v15, v21

    invoke-direct {v15}, Ljava/util/HashMap;-><init>()V

    move-object v13, v14

    .line 185
    .local v13, "samplers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    move-object v14, v13

    const-string v15, "diffuseTexture"

    const/16 v16, 0x0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    invoke-interface/range {v14 .. v16}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    .line 186
    move-object v14, v13

    const-string v15, "specularMap"

    const/16 v16, 0x1

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    invoke-interface/range {v14 .. v16}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    .line 187
    move-object v14, v13

    const-string v15, "normalMap"

    const/16 v16, 0x2

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    invoke-interface/range {v14 .. v16}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    .line 188
    move-object v14, v13

    const-string v15, "selfIllumTexture"

    const/16 v16, 0x3

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    invoke-interface/range {v14 .. v16}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    .line 190
    move-object v14, v1

    sget-object v15, Lcom/sun/prism/es2/ES2PhongShader;->vertexShaderSource:Ljava/lang/String;

    move-object/from16 v16, v11

    move-object/from16 v17, v13

    move-object/from16 v18, v12

    const/16 v19, 0x1

    const/16 v20, 0x0

    invoke-static/range {v14 .. v20}, Lcom/sun/prism/es2/ES2Shader;->createFromSource(Lcom/sun/prism/es2/ES2Context;Ljava/lang/String;[Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;IZ)Lcom/sun/prism/es2/ES2Shader;

    move-result-object v14

    move-object v8, v14

    .line 193
    sget-object v14, Lcom/sun/prism/es2/ES2PhongShader;->shaders:[[[[[Lcom/sun/prism/es2/ES2Shader;

    move-object v15, v3

    invoke-virtual {v15}, Lcom/sun/prism/es2/ES2PhongShader$DiffuseState;->ordinal()I

    move-result v15

    aget-object v14, v14, v15

    move-object v15, v4

    invoke-virtual {v15}, Lcom/sun/prism/es2/ES2PhongShader$SpecularState;->ordinal()I

    move-result v15

    aget-object v14, v14, v15

    move-object v15, v6

    invoke-virtual {v15}, Lcom/sun/prism/es2/ES2PhongShader$SelfIllumState;->ordinal()I

    move-result v15

    aget-object v14, v14, v15

    move-object v15, v5

    .line 194
    invoke-virtual {v15}, Lcom/sun/prism/es2/ES2PhongShader$BumpMapState;->ordinal()I

    move-result v15

    aget-object v14, v14, v15

    move v15, v7

    move-object/from16 v16, v8

    aput-object v16, v14, v15

    .line 196
    .end local v9    # "fragShader":Ljava/lang/String;
    .end local v10    # "extCnt":I
    .end local v11    # "pixelShaders":[Ljava/lang/String;
    .end local v12    # "attributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v13    # "samplers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_6
    move-object v14, v8

    move-object v0, v14

    .end local v0    # "meshView":Lcom/sun/prism/es2/ES2MeshView;
    return-object v0
.end method

.method static getSpecularState(Lcom/sun/prism/es2/ES2PhongMaterial;)Lcom/sun/prism/es2/ES2PhongShader$SpecularState;
    .locals 3

    .prologue
    .line 121
    move-object v0, p0

    .local v0, "material":Lcom/sun/prism/es2/ES2PhongMaterial;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/prism/es2/ES2PhongMaterial;->maps:[Lcom/sun/prism/TextureMap;

    sget v2, Lcom/sun/prism/es2/ES2PhongMaterial;->SPECULAR:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/sun/prism/TextureMap;->getTexture()Lcom/sun/prism/Texture;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 122
    move-object v1, v0

    iget-boolean v1, v1, Lcom/sun/prism/es2/ES2PhongMaterial;->specularColorSet:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/sun/prism/es2/ES2PhongShader$SpecularState;->MIX:Lcom/sun/prism/es2/ES2PhongShader$SpecularState;

    :goto_0
    move-object v0, v1

    .line 125
    .end local v0    # "material":Lcom/sun/prism/es2/ES2PhongMaterial;
    :goto_1
    return-object v0

    .line 122
    .restart local v0    # "material":Lcom/sun/prism/es2/ES2PhongMaterial;
    :cond_0
    sget-object v1, Lcom/sun/prism/es2/ES2PhongShader$SpecularState;->TEXTURE:Lcom/sun/prism/es2/ES2PhongShader$SpecularState;

    goto :goto_0

    .line 125
    :cond_1
    move-object v1, v0

    iget-boolean v1, v1, Lcom/sun/prism/es2/ES2PhongMaterial;->specularColorSet:Z

    if-eqz v1, :cond_2

    sget-object v1, Lcom/sun/prism/es2/ES2PhongShader$SpecularState;->COLOR:Lcom/sun/prism/es2/ES2PhongShader$SpecularState;

    :goto_2
    move-object v0, v1

    goto :goto_1

    :cond_2
    sget-object v1, Lcom/sun/prism/es2/ES2PhongShader$SpecularState;->NONE:Lcom/sun/prism/es2/ES2PhongShader$SpecularState;

    goto :goto_2
.end method

.method static setShaderParamaters(Lcom/sun/prism/es2/ES2Shader;Lcom/sun/prism/es2/ES2MeshView;Lcom/sun/prism/es2/ES2Context;)V
    .locals 16

    .prologue
    .line 201
    move-object/from16 v0, p0

    .local v0, "shader":Lcom/sun/prism/es2/ES2Shader;
    move-object/from16 v1, p1

    .local v1, "meshView":Lcom/sun/prism/es2/ES2MeshView;
    move-object/from16 v2, p2

    .local v2, "context":Lcom/sun/prism/es2/ES2Context;
    move-object v9, v1

    invoke-virtual {v9}, Lcom/sun/prism/es2/ES2MeshView;->getMaterial()Lcom/sun/prism/es2/ES2PhongMaterial;

    move-result-object v9

    move-object v3, v9

    .line 203
    .local v3, "material":Lcom/sun/prism/es2/ES2PhongMaterial;
    move-object v9, v0

    const-string v10, "diffuseColor"

    move-object v11, v3

    iget-object v11, v11, Lcom/sun/prism/es2/ES2PhongMaterial;->diffuseColor:Lcom/sun/prism/paint/Color;

    invoke-virtual {v11}, Lcom/sun/prism/paint/Color;->getRed()F

    move-result v11

    move-object v12, v3

    iget-object v12, v12, Lcom/sun/prism/es2/ES2PhongMaterial;->diffuseColor:Lcom/sun/prism/paint/Color;

    .line 204
    invoke-virtual {v12}, Lcom/sun/prism/paint/Color;->getGreen()F

    move-result v12

    move-object v13, v3

    iget-object v13, v13, Lcom/sun/prism/es2/ES2PhongMaterial;->diffuseColor:Lcom/sun/prism/paint/Color;

    invoke-virtual {v13}, Lcom/sun/prism/paint/Color;->getBlue()F

    move-result v13

    move-object v14, v3

    iget-object v14, v14, Lcom/sun/prism/es2/ES2PhongMaterial;->diffuseColor:Lcom/sun/prism/paint/Color;

    .line 205
    invoke-virtual {v14}, Lcom/sun/prism/paint/Color;->getAlpha()F

    move-result v14

    .line 203
    invoke-virtual/range {v9 .. v14}, Lcom/sun/prism/es2/ES2Shader;->setConstant(Ljava/lang/String;FFFF)V

    .line 207
    move-object v9, v0

    const-string v10, "specularColor"

    move-object v11, v3

    iget-object v11, v11, Lcom/sun/prism/es2/ES2PhongMaterial;->specularColor:Lcom/sun/prism/paint/Color;

    invoke-virtual {v11}, Lcom/sun/prism/paint/Color;->getRed()F

    move-result v11

    move-object v12, v3

    iget-object v12, v12, Lcom/sun/prism/es2/ES2PhongMaterial;->specularColor:Lcom/sun/prism/paint/Color;

    .line 208
    invoke-virtual {v12}, Lcom/sun/prism/paint/Color;->getGreen()F

    move-result v12

    move-object v13, v3

    iget-object v13, v13, Lcom/sun/prism/es2/ES2PhongMaterial;->specularColor:Lcom/sun/prism/paint/Color;

    invoke-virtual {v13}, Lcom/sun/prism/paint/Color;->getBlue()F

    move-result v13

    move-object v14, v3

    iget-object v14, v14, Lcom/sun/prism/es2/ES2PhongMaterial;->specularColor:Lcom/sun/prism/paint/Color;

    .line 209
    invoke-virtual {v14}, Lcom/sun/prism/paint/Color;->getAlpha()F

    move-result v14

    .line 207
    invoke-virtual/range {v9 .. v14}, Lcom/sun/prism/es2/ES2Shader;->setConstant(Ljava/lang/String;FFFF)V

    .line 211
    move-object v9, v2

    const/4 v10, 0x0

    move-object v11, v3

    iget-object v11, v11, Lcom/sun/prism/es2/ES2PhongMaterial;->maps:[Lcom/sun/prism/TextureMap;

    sget v12, Lcom/sun/prism/es2/ES2PhongMaterial;->DIFFUSE:I

    aget-object v11, v11, v12

    invoke-virtual {v11}, Lcom/sun/prism/TextureMap;->getTexture()Lcom/sun/prism/Texture;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lcom/sun/prism/es2/ES2Context;->updateTexture(ILcom/sun/prism/Texture;)V

    .line 212
    move-object v9, v2

    const/4 v10, 0x1

    move-object v11, v3

    iget-object v11, v11, Lcom/sun/prism/es2/ES2PhongMaterial;->maps:[Lcom/sun/prism/TextureMap;

    sget v12, Lcom/sun/prism/es2/ES2PhongMaterial;->SPECULAR:I

    aget-object v11, v11, v12

    invoke-virtual {v11}, Lcom/sun/prism/TextureMap;->getTexture()Lcom/sun/prism/Texture;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lcom/sun/prism/es2/ES2Context;->updateTexture(ILcom/sun/prism/Texture;)V

    .line 213
    move-object v9, v2

    const/4 v10, 0x2

    move-object v11, v3

    iget-object v11, v11, Lcom/sun/prism/es2/ES2PhongMaterial;->maps:[Lcom/sun/prism/TextureMap;

    sget v12, Lcom/sun/prism/es2/ES2PhongMaterial;->BUMP:I

    aget-object v11, v11, v12

    invoke-virtual {v11}, Lcom/sun/prism/TextureMap;->getTexture()Lcom/sun/prism/Texture;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lcom/sun/prism/es2/ES2Context;->updateTexture(ILcom/sun/prism/Texture;)V

    .line 214
    move-object v9, v2

    const/4 v10, 0x3

    move-object v11, v3

    iget-object v11, v11, Lcom/sun/prism/es2/ES2PhongMaterial;->maps:[Lcom/sun/prism/TextureMap;

    sget v12, Lcom/sun/prism/es2/ES2PhongMaterial;->SELF_ILLUM:I

    aget-object v11, v11, v12

    invoke-virtual {v11}, Lcom/sun/prism/TextureMap;->getTexture()Lcom/sun/prism/Texture;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lcom/sun/prism/es2/ES2Context;->updateTexture(ILcom/sun/prism/Texture;)V

    .line 216
    move-object v9, v0

    const-string v10, "ambientColor"

    move-object v11, v1

    invoke-virtual {v11}, Lcom/sun/prism/es2/ES2MeshView;->getAmbientLightRed()F

    move-result v11

    move-object v12, v1

    .line 217
    invoke-virtual {v12}, Lcom/sun/prism/es2/ES2MeshView;->getAmbientLightGreen()F

    move-result v12

    move-object v13, v1

    invoke-virtual {v13}, Lcom/sun/prism/es2/ES2MeshView;->getAmbientLightBlue()F

    move-result v13

    .line 216
    invoke-virtual {v9, v10, v11, v12, v13}, Lcom/sun/prism/es2/ES2Shader;->setConstant(Ljava/lang/String;FFF)V

    .line 219
    const/4 v9, 0x0

    move v4, v9

    .line 220
    .local v4, "i":I
    move-object v9, v1

    invoke-virtual {v9}, Lcom/sun/prism/es2/ES2MeshView;->getPointLights()[Lcom/sun/prism/es2/ES2Light;

    move-result-object v9

    move-object v5, v9

    move-object v9, v5

    array-length v9, v9

    move v6, v9

    const/4 v9, 0x0

    move v7, v9

    :goto_0
    move v9, v7

    move v10, v6

    if-ge v9, v10, :cond_1

    move-object v9, v5

    move v10, v7

    aget-object v9, v9, v10

    move-object v8, v9

    .line 221
    .local v8, "light":Lcom/sun/prism/es2/ES2Light;
    move-object v9, v8

    if-eqz v9, :cond_0

    move-object v9, v8

    iget v9, v9, Lcom/sun/prism/es2/ES2Light;->w:F

    const/4 v10, 0x0

    cmpl-float v9, v9, v10

    if-lez v9, :cond_0

    .line 222
    move-object v9, v0

    new-instance v10, Ljava/lang/StringBuilder;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "lights["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move v11, v4

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "].pos"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object v11, v8

    iget v11, v11, Lcom/sun/prism/es2/ES2Light;->x:F

    move-object v12, v8

    iget v12, v12, Lcom/sun/prism/es2/ES2Light;->y:F

    move-object v13, v8

    iget v13, v13, Lcom/sun/prism/es2/ES2Light;->z:F

    move-object v14, v8

    iget v14, v14, Lcom/sun/prism/es2/ES2Light;->w:F

    invoke-virtual/range {v9 .. v14}, Lcom/sun/prism/es2/ES2Shader;->setConstant(Ljava/lang/String;FFFF)V

    .line 223
    move-object v9, v0

    new-instance v10, Ljava/lang/StringBuilder;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "lights["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move v11, v4

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "].color"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object v11, v8

    iget v11, v11, Lcom/sun/prism/es2/ES2Light;->r:F

    move-object v12, v8

    iget v12, v12, Lcom/sun/prism/es2/ES2Light;->g:F

    move-object v13, v8

    iget v13, v13, Lcom/sun/prism/es2/ES2Light;->b:F

    invoke-virtual {v9, v10, v11, v12, v13}, Lcom/sun/prism/es2/ES2Shader;->setConstant(Ljava/lang/String;FFF)V

    .line 224
    add-int/lit8 v4, v4, 0x1

    .line 220
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 227
    .end local v8    # "light":Lcom/sun/prism/es2/ES2Light;
    :cond_1
    return-void
.end method
