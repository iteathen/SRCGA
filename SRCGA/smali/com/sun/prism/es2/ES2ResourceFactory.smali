.class public Lcom/sun/prism/es2/ES2ResourceFactory;
.super Lcom/sun/prism/impl/ps/BaseShaderFactory;
.source "ES2ResourceFactory.java"


# static fields
.field private static final clampTexCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/sun/prism/Image;",
            "Lcom/sun/prism/Texture;",
            ">;"
        }
    .end annotation
.end field

.field private static final mipmapTexCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/sun/prism/Image;",
            "Lcom/sun/prism/Texture;",
            ">;"
        }
    .end annotation
.end field

.field private static final repeatTexCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/sun/prism/Image;",
            "Lcom/sun/prism/Texture;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private context:Lcom/sun/prism/es2/ES2Context;

.field private final maxTextureSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 56
    new-instance v0, Ljava/util/WeakHashMap;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/sun/prism/es2/ES2ResourceFactory;->clampTexCache:Ljava/util/Map;

    .line 57
    new-instance v0, Ljava/util/WeakHashMap;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/sun/prism/es2/ES2ResourceFactory;->repeatTexCache:Ljava/util/Map;

    .line 58
    new-instance v0, Ljava/util/WeakHashMap;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/sun/prism/es2/ES2ResourceFactory;->mipmapTexCache:Ljava/util/Map;

    return-void
.end method

.method constructor <init>(Lcom/sun/glass/ui/Screen;)V
    .locals 11

    .prologue
    .line 65
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/ES2ResourceFactory;
    move-object v1, p1

    .local v1, "screen":Lcom/sun/glass/ui/Screen;
    move-object v5, v0

    sget-object v6, Lcom/sun/prism/es2/ES2ResourceFactory;->clampTexCache:Ljava/util/Map;

    sget-object v7, Lcom/sun/prism/es2/ES2ResourceFactory;->repeatTexCache:Ljava/util/Map;

    sget-object v8, Lcom/sun/prism/es2/ES2ResourceFactory;->mipmapTexCache:Ljava/util/Map;

    invoke-direct {v5, v6, v7, v8}, Lcom/sun/prism/impl/ps/BaseShaderFactory;-><init>(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V

    .line 66
    move-object v5, v0

    new-instance v6, Lcom/sun/prism/es2/ES2Context;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v8, v1

    move-object v9, v0

    invoke-direct {v7, v8, v9}, Lcom/sun/prism/es2/ES2Context;-><init>(Lcom/sun/glass/ui/Screen;Lcom/sun/prism/ps/ShaderFactory;)V

    iput-object v6, v5, Lcom/sun/prism/es2/ES2ResourceFactory;->context:Lcom/sun/prism/es2/ES2Context;

    .line 67
    move-object v5, v0

    move-object v6, v0

    invoke-direct {v6}, Lcom/sun/prism/es2/ES2ResourceFactory;->computeMaxTextureSize()I

    move-result v6

    iput v6, v5, Lcom/sun/prism/es2/ES2ResourceFactory;->maxTextureSize:I

    .line 69
    sget-boolean v5, Lcom/sun/prism/impl/PrismSettings;->verbose:Z

    if-eqz v5, :cond_0

    .line 70
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Non power of two texture support = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/prism/es2/ES2ResourceFactory;->context:Lcom/sun/prism/es2/ES2Context;

    .line 71
    invoke-virtual {v7}, Lcom/sun/prism/es2/ES2Context;->getGLContext()Lcom/sun/prism/es2/GLContext;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sun/prism/es2/GLContext;->canCreateNonPowTwoTextures()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 70
    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 72
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Maximum number of vertex attributes = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/prism/es2/ES2ResourceFactory;->context:Lcom/sun/prism/es2/ES2Context;

    .line 73
    invoke-virtual {v7}, Lcom/sun/prism/es2/ES2Context;->getGLContext()Lcom/sun/prism/es2/GLContext;

    move-result-object v7

    const/16 v8, 0x7c

    invoke-virtual {v7, v8}, Lcom/sun/prism/es2/GLContext;->getIntParam(I)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 72
    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 77
    invoke-static {}, Lcom/sun/javafx/PlatformUtil;->isEmbedded()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 79
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/prism/es2/ES2ResourceFactory;->context:Lcom/sun/prism/es2/ES2Context;

    invoke-virtual {v5}, Lcom/sun/prism/es2/ES2Context;->getGLContext()Lcom/sun/prism/es2/GLContext;

    move-result-object v5

    const/16 v6, 0x81

    invoke-virtual {v5, v6}, Lcom/sun/prism/es2/GLContext;->getIntParam(I)I

    move-result v5

    const/4 v6, 0x4

    mul-int/lit8 v5, v5, 0x4

    move v2, v5

    .line 80
    .local v2, "maxVUC":I
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/prism/es2/ES2ResourceFactory;->context:Lcom/sun/prism/es2/ES2Context;

    invoke-virtual {v5}, Lcom/sun/prism/es2/ES2Context;->getGLContext()Lcom/sun/prism/es2/GLContext;

    move-result-object v5

    const/16 v6, 0x79

    invoke-virtual {v5, v6}, Lcom/sun/prism/es2/GLContext;->getIntParam(I)I

    move-result v5

    const/4 v6, 0x4

    mul-int/lit8 v5, v5, 0x4

    move v3, v5

    .line 81
    .local v3, "maxFUC":I
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/prism/es2/ES2ResourceFactory;->context:Lcom/sun/prism/es2/ES2Context;

    invoke-virtual {v5}, Lcom/sun/prism/es2/ES2Context;->getGLContext()Lcom/sun/prism/es2/GLContext;

    move-result-object v5

    const/16 v6, 0x7e

    invoke-virtual {v5, v6}, Lcom/sun/prism/es2/GLContext;->getIntParam(I)I

    move-result v5

    const/4 v6, 0x4

    mul-int/lit8 v5, v5, 0x4

    move v4, v5

    .line 87
    .local v4, "maxVC":I
    :goto_0
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Maximum number of uniform vertex components = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move v7, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 88
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Maximum number of uniform fragment components = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move v7, v3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 89
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Maximum number of varying components = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move v7, v4

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 90
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Maximum number of texture units usable in a vertex shader = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/prism/es2/ES2ResourceFactory;->context:Lcom/sun/prism/es2/ES2Context;

    .line 91
    invoke-virtual {v7}, Lcom/sun/prism/es2/ES2Context;->getGLContext()Lcom/sun/prism/es2/GLContext;

    move-result-object v7

    const/16 v8, 0x7f

    invoke-virtual {v7, v8}, Lcom/sun/prism/es2/GLContext;->getIntParam(I)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 90
    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 92
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Maximum number of texture units usable in a fragment shader = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/prism/es2/ES2ResourceFactory;->context:Lcom/sun/prism/es2/ES2Context;

    .line 93
    invoke-virtual {v7}, Lcom/sun/prism/es2/ES2Context;->getGLContext()Lcom/sun/prism/es2/GLContext;

    move-result-object v7

    const/16 v8, 0x7a

    invoke-virtual {v7, v8}, Lcom/sun/prism/es2/GLContext;->getIntParam(I)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 92
    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 95
    .end local v2    # "maxVUC":I
    .end local v3    # "maxFUC":I
    .end local v4    # "maxVC":I
    :cond_0
    return-void

    .line 83
    :cond_1
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/prism/es2/ES2ResourceFactory;->context:Lcom/sun/prism/es2/ES2Context;

    invoke-virtual {v5}, Lcom/sun/prism/es2/ES2Context;->getGLContext()Lcom/sun/prism/es2/GLContext;

    move-result-object v5

    const/16 v6, 0x80

    invoke-virtual {v5, v6}, Lcom/sun/prism/es2/GLContext;->getIntParam(I)I

    move-result v5

    move v2, v5

    .line 84
    .restart local v2    # "maxVUC":I
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/prism/es2/ES2ResourceFactory;->context:Lcom/sun/prism/es2/ES2Context;

    invoke-virtual {v5}, Lcom/sun/prism/es2/ES2Context;->getGLContext()Lcom/sun/prism/es2/GLContext;

    move-result-object v5

    const/16 v6, 0x78

    invoke-virtual {v5, v6}, Lcom/sun/prism/es2/GLContext;->getIntParam(I)I

    move-result v5

    move v3, v5

    .line 85
    .restart local v3    # "maxFUC":I
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/prism/es2/ES2ResourceFactory;->context:Lcom/sun/prism/es2/ES2Context;

    invoke-virtual {v5}, Lcom/sun/prism/es2/ES2Context;->getGLContext()Lcom/sun/prism/es2/GLContext;

    move-result-object v5

    const/16 v6, 0x7d

    invoke-virtual {v5, v6}, Lcom/sun/prism/es2/GLContext;->getIntParam(I)I

    move-result v5

    move v4, v5

    .restart local v4    # "maxVC":I
    goto/16 :goto_0
.end method

.method private computeMaxTextureSize()I
    .locals 6

    .prologue
    .line 193
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/ES2ResourceFactory;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/prism/es2/ES2ResourceFactory;->context:Lcom/sun/prism/es2/ES2Context;

    invoke-virtual {v2}, Lcom/sun/prism/es2/ES2Context;->getGLContext()Lcom/sun/prism/es2/GLContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sun/prism/es2/GLContext;->getMaxTextureSize()I

    move-result v2

    move v1, v2

    .line 194
    .local v1, "size":I
    sget-boolean v2, Lcom/sun/prism/impl/PrismSettings;->verbose:Z

    if-eqz v2, :cond_0

    .line 195
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Maximum supported texture size: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 197
    :cond_0
    move v2, v1

    sget v3, Lcom/sun/prism/impl/PrismSettings;->maxTextureSize:I

    if-le v2, v3, :cond_1

    .line 198
    sget v2, Lcom/sun/prism/impl/PrismSettings;->maxTextureSize:I

    move v1, v2

    .line 199
    sget-boolean v2, Lcom/sun/prism/impl/PrismSettings;->verbose:Z

    if-eqz v2, :cond_1

    .line 200
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Maximum texture size clamped to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 203
    :cond_1
    move v2, v1

    move v0, v2

    .end local v0    # "this":Lcom/sun/prism/es2/ES2ResourceFactory;
    return v0
.end method

.method private static createVertexShaderCode(ZI)Ljava/lang/String;
    .locals 10

    .prologue
    .line 234
    move v0, p0

    .local v0, "includePerVertexColor":Z
    move v1, p1

    .local v1, "maxTexCoordIndex":I
    new-instance v7, Ljava/lang/StringBuilder;

    move-object v9, v7

    move-object v7, v9

    move-object v8, v9

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object v2, v7

    .line 235
    .local v2, "vsAttr":Ljava/lang/StringBuilder;
    new-instance v7, Ljava/lang/StringBuilder;

    move-object v9, v7

    move-object v7, v9

    move-object v8, v9

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object v3, v7

    .line 236
    .local v3, "vsVary":Ljava/lang/StringBuilder;
    new-instance v7, Ljava/lang/StringBuilder;

    move-object v9, v7

    move-object v7, v9

    move-object v8, v9

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object v4, v7

    .line 237
    .local v4, "vsMain":Ljava/lang/StringBuilder;
    move-object v7, v4

    const-string v8, "void main() {\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 239
    const/4 v7, 0x1

    move v5, v7

    .line 240
    .local v5, "includePosition":Z
    move v7, v5

    if-eqz v7, :cond_0

    .line 241
    move-object v7, v2

    const-string v8, "attribute vec2 positionAttr;\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 242
    move-object v7, v4

    const-string v8, "    vec4 tmp = vec4(positionAttr, 0, 1);\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 243
    move-object v7, v4

    const-string v8, "    gl_Position = mvpMatrix * tmp;\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 245
    :cond_0
    move v7, v0

    if-eqz v7, :cond_1

    .line 246
    move-object v7, v2

    const-string v8, "attribute vec4 colorAttr;\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 247
    move-object v7, v3

    const-string v8, "varying lowp vec4 perVertexColor;\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 248
    move-object v7, v4

    const-string v8, "    perVertexColor = colorAttr;\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 250
    :cond_1
    move v7, v1

    if-ltz v7, :cond_2

    .line 251
    move-object v7, v2

    const-string v8, "attribute vec2 texCoord0Attr;\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 252
    move-object v7, v3

    const-string v8, "varying vec2 texCoord0;\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 253
    move-object v7, v4

    const-string v8, "    texCoord0 = texCoord0Attr;\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 255
    :cond_2
    move v7, v1

    const/4 v8, 0x1

    if-lt v7, v8, :cond_3

    .line 256
    move-object v7, v2

    const-string v8, "attribute vec2 texCoord1Attr;\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 257
    move-object v7, v3

    const-string v8, "varying vec2 texCoord1;\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 258
    move-object v7, v4

    const-string v8, "    texCoord1 = texCoord1Attr;\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 261
    :cond_3
    move-object v7, v4

    const-string v8, "}\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 262
    new-instance v7, Ljava/lang/StringBuilder;

    move-object v9, v7

    move-object v7, v9

    move-object v8, v9

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object v6, v7

    .line 264
    .local v6, "vs":Ljava/lang/StringBuilder;
    move-object v7, v6

    const-string v8, "#ifdef GL_ES\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 265
    move-object v7, v6

    const-string v8, "#else\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 266
    move-object v7, v6

    const-string v8, "#define lowp\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 267
    move-object v7, v6

    const-string v8, "#endif\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 268
    move-object v7, v6

    const-string v8, "uniform mat4 mvpMatrix;\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 269
    move-object v7, v6

    move-object v8, v2

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 270
    move-object v7, v6

    move-object v8, v3

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 271
    move-object v7, v6

    move-object v8, v4

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 273
    move-object v7, v6

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v0, v7

    .end local v0    # "includePerVertexColor":Z
    return-object v0
.end method

.method private getVertexAttributes(ZI)Ljava/util/Map;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 278
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/ES2ResourceFactory;
    move v1, p1

    .local v1, "includePerVertexColor":Z
    move v2, p2

    .local v2, "maxTexCoordIndex":I
    new-instance v5, Ljava/util/HashMap;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    move-object v3, v5

    .line 280
    .local v3, "attributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    const/4 v5, 0x1

    move v4, v5

    .line 281
    .local v4, "includePosition":Z
    move v5, v4

    if-eqz v5, :cond_0

    .line 282
    move-object v5, v3

    const-string v6, "positionAttr"

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 284
    :cond_0
    move v5, v1

    if-eqz v5, :cond_1

    .line 285
    move-object v5, v3

    const-string v6, "colorAttr"

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 287
    :cond_1
    move v5, v2

    if-ltz v5, :cond_2

    .line 288
    move-object v5, v3

    const-string v6, "texCoord0Attr"

    const/4 v7, 0x2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 290
    :cond_2
    move v5, v2

    const/4 v6, 0x1

    if-lt v5, v6, :cond_3

    .line 291
    move-object v5, v3

    const-string v6, "texCoord1Attr"

    const/4 v7, 0x3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 294
    :cond_3
    move-object v5, v3

    move-object v0, v5

    .end local v0    # "this":Lcom/sun/prism/es2/ES2ResourceFactory;
    return-object v0
.end method


# virtual methods
.method protected canClampToEdge()Z
    .locals 2

    .prologue
    .line 124
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/ES2ResourceFactory;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/prism/es2/ES2ResourceFactory;->context:Lcom/sun/prism/es2/ES2Context;

    invoke-virtual {v1}, Lcom/sun/prism/es2/ES2Context;->getGLContext()Lcom/sun/prism/es2/GLContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/prism/es2/GLContext;->canCreateNonPowTwoTextures()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/prism/es2/ES2ResourceFactory;
    return v0
.end method

.method protected canClampToZero()Z
    .locals 2

    .prologue
    .line 112
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/ES2ResourceFactory;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/prism/es2/ES2ResourceFactory;->context:Lcom/sun/prism/es2/ES2Context;

    invoke-virtual {v1}, Lcom/sun/prism/es2/ES2Context;->getGLContext()Lcom/sun/prism/es2/GLContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/prism/es2/GLContext;->canClampToZero()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/prism/es2/ES2ResourceFactory;
    return v0
.end method

.method protected canRepeat()Z
    .locals 2

    .prologue
    .line 118
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/ES2ResourceFactory;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/prism/es2/ES2ResourceFactory;->context:Lcom/sun/prism/es2/ES2Context;

    invoke-virtual {v1}, Lcom/sun/prism/es2/ES2Context;->getGLContext()Lcom/sun/prism/es2/GLContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/prism/es2/GLContext;->canCreateNonPowTwoTextures()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/prism/es2/ES2ResourceFactory;
    return v0
.end method

.method public createMesh()Lcom/sun/prism/Mesh;
    .locals 2

    .prologue
    .line 337
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/ES2ResourceFactory;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/prism/es2/ES2ResourceFactory;->context:Lcom/sun/prism/es2/ES2Context;

    invoke-static {v1}, Lcom/sun/prism/es2/ES2Mesh;->create(Lcom/sun/prism/es2/ES2Context;)Lcom/sun/prism/es2/ES2Mesh;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/prism/es2/ES2ResourceFactory;
    return-object v0
.end method

.method public createMeshView(Lcom/sun/prism/Mesh;)Lcom/sun/prism/MeshView;
    .locals 4

    .prologue
    .line 333
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/ES2ResourceFactory;
    move-object v1, p1

    .local v1, "mesh":Lcom/sun/prism/Mesh;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/prism/es2/ES2ResourceFactory;->context:Lcom/sun/prism/es2/ES2Context;

    move-object v3, v1

    check-cast v3, Lcom/sun/prism/es2/ES2Mesh;

    invoke-static {v2, v3}, Lcom/sun/prism/es2/ES2MeshView;->create(Lcom/sun/prism/es2/ES2Context;Lcom/sun/prism/es2/ES2Mesh;)Lcom/sun/prism/es2/ES2MeshView;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/prism/es2/ES2ResourceFactory;
    return-object v0
.end method

.method public createPhongMaterial()Lcom/sun/prism/PhongMaterial;
    .locals 2

    .prologue
    .line 329
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/ES2ResourceFactory;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/prism/es2/ES2ResourceFactory;->context:Lcom/sun/prism/es2/ES2Context;

    invoke-static {v1}, Lcom/sun/prism/es2/ES2PhongMaterial;->create(Lcom/sun/prism/es2/ES2Context;)Lcom/sun/prism/es2/ES2PhongMaterial;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/prism/es2/ES2ResourceFactory;
    return-object v0
.end method

.method public createPresentable(Lcom/sun/prism/PresentableState;)Lcom/sun/prism/Presentable;
    .locals 7

    .prologue
    .line 102
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/ES2ResourceFactory;
    move-object v1, p1

    .local v1, "pState":Lcom/sun/prism/PresentableState;
    new-instance v2, Lcom/sun/prism/es2/ES2SwapChain;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/prism/es2/ES2ResourceFactory;->context:Lcom/sun/prism/es2/ES2Context;

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Lcom/sun/prism/es2/ES2SwapChain;-><init>(Lcom/sun/prism/es2/ES2Context;Lcom/sun/prism/PresentableState;)V

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/prism/es2/ES2ResourceFactory;
    return-object v0
.end method

.method public createRTTexture(IILcom/sun/prism/Texture$WrapMode;)Lcom/sun/prism/RTTexture;
    .locals 9

    .prologue
    .line 154
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/ES2ResourceFactory;
    move v1, p1

    .local v1, "width":I
    move v2, p2

    .local v2, "height":I
    move-object v3, p3

    .local v3, "wrapMode":Lcom/sun/prism/Texture$WrapMode;
    move-object v4, v0

    move v5, v1

    move v6, v2

    move-object v7, v3

    const/4 v8, 0x0

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/sun/prism/es2/ES2ResourceFactory;->createRTTexture(IILcom/sun/prism/Texture$WrapMode;Z)Lcom/sun/prism/RTTexture;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Lcom/sun/prism/es2/ES2ResourceFactory;
    return-object v0
.end method

.method public createRTTexture(IILcom/sun/prism/Texture$WrapMode;Z)Lcom/sun/prism/RTTexture;
    .locals 10

    .prologue
    .line 158
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/ES2ResourceFactory;
    move v1, p1

    .local v1, "width":I
    move v2, p2

    .local v2, "height":I
    move-object v3, p3

    .local v3, "wrapMode":Lcom/sun/prism/Texture$WrapMode;
    move v4, p4

    .local v4, "msaa":Z
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/prism/es2/ES2ResourceFactory;->context:Lcom/sun/prism/es2/ES2Context;

    move v6, v1

    move v7, v2

    move-object v8, v3

    move v9, v4

    invoke-static {v5, v6, v7, v8, v9}, Lcom/sun/prism/es2/ES2RTTexture;->create(Lcom/sun/prism/es2/ES2Context;IILcom/sun/prism/Texture$WrapMode;Z)Lcom/sun/prism/es2/ES2RTTexture;

    move-result-object v5

    move-object v0, v5

    .end local v0    # "this":Lcom/sun/prism/es2/ES2ResourceFactory;
    return-object v0
.end method

.method public createShader(Ljava/io/InputStream;Ljava/util/Map;Ljava/util/Map;IZZ)Lcom/sun/prism/ps/Shader;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;IZZ)",
            "Lcom/sun/prism/ps/Shader;"
        }
    .end annotation

    .prologue
    .line 218
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/prism/es2/ES2ResourceFactory;
    move-object/from16 v1, p1

    .local v1, "pixelShaderCode":Ljava/io/InputStream;
    move-object/from16 v2, p2

    .local v2, "samplers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    move-object/from16 v3, p3

    .local v3, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    move/from16 v4, p4

    .local v4, "maxTexCoordIndex":I
    move/from16 v5, p5

    .local v5, "isPixcoordUsed":Z
    move/from16 v6, p6

    .local v6, "isPerVertexColorUsed":Z
    move-object v10, v0

    move v11, v6

    move v12, v4

    .line 219
    invoke-direct {v10, v11, v12}, Lcom/sun/prism/es2/ES2ResourceFactory;->getVertexAttributes(ZI)Ljava/util/Map;

    move-result-object v10

    move-object v7, v10

    .line 223
    .local v7, "attributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    move v10, v6

    move v11, v4

    .line 224
    invoke-static {v10, v11}, Lcom/sun/prism/es2/ES2ResourceFactory;->createVertexShaderCode(ZI)Ljava/lang/String;

    move-result-object v10

    move-object v9, v10

    .line 225
    .local v9, "vertexShaderCode":Ljava/lang/String;
    move-object v10, v0

    iget-object v10, v10, Lcom/sun/prism/es2/ES2ResourceFactory;->context:Lcom/sun/prism/es2/ES2Context;

    move-object v11, v9

    move-object v12, v1

    move-object v13, v2

    move-object v14, v7

    move v15, v4

    move/from16 v16, v5

    invoke-static/range {v10 .. v16}, Lcom/sun/prism/es2/ES2Shader;->createFromSource(Lcom/sun/prism/es2/ES2Context;Ljava/lang/String;Ljava/io/InputStream;Ljava/util/Map;Ljava/util/Map;IZ)Lcom/sun/prism/es2/ES2Shader;

    move-result-object v10

    move-object v8, v10

    .line 229
    .local v8, "shader":Lcom/sun/prism/es2/ES2Shader;
    move-object v10, v8

    move-object v0, v10

    .end local v0    # "this":Lcom/sun/prism/es2/ES2ResourceFactory;
    return-object v0
.end method

.method public createStockShader(Ljava/lang/String;)Lcom/sun/prism/ps/Shader;
    .locals 12

    .prologue
    .line 298
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/ES2ResourceFactory;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object v5, v1

    if-nez v5, :cond_0

    .line 299
    new-instance v5, Ljava/lang/IllegalArgumentException;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    const-string v7, "Shader name must be non-null"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 302
    :cond_0
    :try_start_0
    const-class v5, Lcom/sun/prism/es2/ES2ResourceFactory;

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "glsl/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".frag"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 303
    invoke-virtual {v5, v6}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v5

    move-object v2, v5

    .line 305
    .local v2, "stream":Ljava/io/InputStream;
    new-instance v5, Ljava/lang/StringBuilder;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "com.sun.prism.shader."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_Loader"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 306
    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    move-object v3, v5

    .line 307
    .local v3, "klass":Ljava/lang/Class;
    sget-boolean v5, Lcom/sun/prism/impl/PrismSettings;->verbose:Z

    if-eqz v5, :cond_1

    .line 308
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ES2ResourceFactory: Prism - createStockShader: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".frag"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 310
    :cond_1
    move-object v5, v3

    const-string v6, "loadShader"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Class;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/4 v9, 0x0

    const-class v10, Lcom/sun/prism/ps/ShaderFactory;

    aput-object v10, v8, v9

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/4 v9, 0x1

    const-class v10, Ljava/io/InputStream;

    aput-object v10, v8, v9

    .line 311
    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    move-object v4, v5

    .line 313
    .local v4, "m":Ljava/lang/reflect/Method;
    move-object v5, v4

    const/4 v6, 0x0

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/4 v9, 0x0

    move-object v10, v0

    aput-object v10, v8, v9

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/4 v9, 0x1

    move-object v10, v2

    aput-object v10, v8, v9

    invoke-virtual {v5, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sun/prism/ps/Shader;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v5

    .end local v0    # "this":Lcom/sun/prism/es2/ES2ResourceFactory;
    return-object v0

    .line 314
    .end local v2    # "stream":Ljava/io/InputStream;
    .end local v3    # "klass":Ljava/lang/Class;
    .end local v4    # "m":Ljava/lang/reflect/Method;
    .restart local v0    # "this":Lcom/sun/prism/es2/ES2ResourceFactory;
    :catch_0
    move-exception v5

    move-object v2, v5

    .line 315
    .local v2, "e":Ljava/lang/Throwable;
    move-object v5, v2

    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    .line 316
    new-instance v5, Ljava/lang/InternalError;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error loading stock shader "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public createTexture(Lcom/sun/prism/MediaFrame;)Lcom/sun/prism/Texture;
    .locals 4

    .prologue
    .line 142
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/ES2ResourceFactory;
    move-object v1, p1

    .local v1, "frame":Lcom/sun/prism/MediaFrame;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/prism/es2/ES2ResourceFactory;->context:Lcom/sun/prism/es2/ES2Context;

    move-object v3, v1

    invoke-static {v2, v3}, Lcom/sun/prism/es2/ES2Texture;->create(Lcom/sun/prism/es2/ES2Context;Lcom/sun/prism/MediaFrame;)Lcom/sun/prism/Texture;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/prism/es2/ES2ResourceFactory;
    return-object v0
.end method

.method public createTexture(Lcom/sun/prism/PixelFormat;Lcom/sun/prism/Texture$Usage;Lcom/sun/prism/Texture$WrapMode;II)Lcom/sun/prism/Texture;
    .locals 13

    .prologue
    .line 132
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/ES2ResourceFactory;
    move-object v1, p1

    .local v1, "formatHint":Lcom/sun/prism/PixelFormat;
    move-object v2, p2

    .local v2, "usageHint":Lcom/sun/prism/Texture$Usage;
    move-object/from16 v3, p3

    .local v3, "wrapMode":Lcom/sun/prism/Texture$WrapMode;
    move/from16 v4, p4

    .local v4, "w":I
    move/from16 v5, p5

    .local v5, "h":I
    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    move-object v9, v3

    move v10, v4

    move v11, v5

    const/4 v12, 0x0

    invoke-virtual/range {v6 .. v12}, Lcom/sun/prism/es2/ES2ResourceFactory;->createTexture(Lcom/sun/prism/PixelFormat;Lcom/sun/prism/Texture$Usage;Lcom/sun/prism/Texture$WrapMode;IIZ)Lcom/sun/prism/Texture;

    move-result-object v6

    move-object v0, v6

    .end local v0    # "this":Lcom/sun/prism/es2/ES2ResourceFactory;
    return-object v0
.end method

.method public createTexture(Lcom/sun/prism/PixelFormat;Lcom/sun/prism/Texture$Usage;Lcom/sun/prism/Texture$WrapMode;IIZ)Lcom/sun/prism/Texture;
    .locals 13

    .prologue
    .line 138
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/ES2ResourceFactory;
    move-object v1, p1

    .local v1, "formatHint":Lcom/sun/prism/PixelFormat;
    move-object v2, p2

    .local v2, "usageHint":Lcom/sun/prism/Texture$Usage;
    move-object/from16 v3, p3

    .local v3, "wrapMode":Lcom/sun/prism/Texture$WrapMode;
    move/from16 v4, p4

    .local v4, "w":I
    move/from16 v5, p5

    .local v5, "h":I
    move/from16 v6, p6

    .local v6, "useMipmap":Z
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/prism/es2/ES2ResourceFactory;->context:Lcom/sun/prism/es2/ES2Context;

    move-object v8, v1

    move-object v9, v3

    move v10, v4

    move v11, v5

    move v12, v6

    invoke-static/range {v7 .. v12}, Lcom/sun/prism/es2/ES2Texture;->create(Lcom/sun/prism/es2/ES2Context;Lcom/sun/prism/PixelFormat;Lcom/sun/prism/Texture$WrapMode;IIZ)Lcom/sun/prism/es2/ES2Texture;

    move-result-object v7

    move-object v0, v7

    .end local v0    # "this":Lcom/sun/prism/es2/ES2ResourceFactory;
    return-object v0
.end method

.method public createVertexBuffer(I)Lcom/sun/prism/impl/VertexBuffer;
    .locals 6

    .prologue
    .line 321
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/ES2ResourceFactory;
    move v1, p1

    .local v1, "maxQuads":I
    new-instance v2, Lcom/sun/prism/impl/VertexBuffer;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move v4, v1

    invoke-direct {v3, v4}, Lcom/sun/prism/impl/VertexBuffer;-><init>(I)V

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/prism/es2/ES2ResourceFactory;
    return-object v0
.end method

.method public dispose()V
    .locals 2

    .prologue
    .line 325
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/ES2ResourceFactory;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/prism/es2/ES2ResourceFactory;->context:Lcom/sun/prism/es2/ES2Context;

    invoke-virtual {v1}, Lcom/sun/prism/es2/ES2Context;->clearContext()V

    .line 326
    return-void
.end method

.method public getMaximumTextureSize()I
    .locals 2

    .prologue
    .line 207
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/ES2ResourceFactory;
    move-object v1, v0

    iget v1, v1, Lcom/sun/prism/es2/ES2ResourceFactory;->maxTextureSize:I

    move v0, v1

    .end local v0    # "this":Lcom/sun/prism/es2/ES2ResourceFactory;
    return v0
.end method

.method public getRTTHeight(ILcom/sun/prism/Texture$WrapMode;)I
    .locals 6

    .prologue
    .line 150
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/ES2ResourceFactory;
    move v1, p1

    .local v1, "h":I
    move-object v2, p2

    .local v2, "wrapMode":Lcom/sun/prism/Texture$WrapMode;
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/prism/es2/ES2ResourceFactory;->context:Lcom/sun/prism/es2/ES2Context;

    move v4, v1

    move-object v5, v2

    invoke-static {v3, v4, v5}, Lcom/sun/prism/es2/ES2RTTexture;->getCompatibleDimension(Lcom/sun/prism/es2/ES2Context;ILcom/sun/prism/Texture$WrapMode;)I

    move-result v3

    move v0, v3

    .end local v0    # "this":Lcom/sun/prism/es2/ES2ResourceFactory;
    return v0
.end method

.method public getRTTWidth(ILcom/sun/prism/Texture$WrapMode;)I
    .locals 6

    .prologue
    .line 146
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/ES2ResourceFactory;
    move v1, p1

    .local v1, "w":I
    move-object v2, p2

    .local v2, "wrapMode":Lcom/sun/prism/Texture$WrapMode;
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/prism/es2/ES2ResourceFactory;->context:Lcom/sun/prism/es2/ES2Context;

    move v4, v1

    move-object v5, v2

    invoke-static {v3, v4, v5}, Lcom/sun/prism/es2/ES2RTTexture;->getCompatibleDimension(Lcom/sun/prism/es2/ES2Context;ILcom/sun/prism/Texture$WrapMode;)I

    move-result v3

    move v0, v3

    .end local v0    # "this":Lcom/sun/prism/es2/ES2ResourceFactory;
    return v0
.end method

.method public getTextureResourcePool()Lcom/sun/prism/impl/TextureResourcePool;
    .locals 2

    .prologue
    .line 98
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/ES2ResourceFactory;
    sget-object v1, Lcom/sun/prism/es2/ES2VramPool;->instance:Lcom/sun/prism/es2/ES2VramPool;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/prism/es2/ES2ResourceFactory;
    return-object v0
.end method

.method public isCompatibleTexture(Lcom/sun/prism/Texture;)Z
    .locals 3

    .prologue
    .line 107
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/ES2ResourceFactory;
    move-object v1, p1

    .local v1, "tex":Lcom/sun/prism/Texture;
    move-object v2, v1

    instance-of v2, v2, Lcom/sun/prism/es2/ES2Texture;

    move v0, v2

    .end local v0    # "this":Lcom/sun/prism/es2/ES2ResourceFactory;
    return v0
.end method

.method public isFormatSupported(Lcom/sun/prism/PixelFormat;)Z
    .locals 5

    .prologue
    .line 162
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/ES2ResourceFactory;
    move-object v1, p1

    .local v1, "format":Lcom/sun/prism/PixelFormat;
    sget-object v3, Lcom/sun/prism/es2/ES2Pipeline;->glFactory:Lcom/sun/prism/es2/GLFactory;

    move-object v2, v3

    .line 163
    .local v2, "glFactory":Lcom/sun/prism/es2/GLFactory;
    sget-object v3, Lcom/sun/prism/es2/ES2ResourceFactory$1;->$SwitchMap$com$sun$prism$PixelFormat:[I

    move-object v4, v1

    invoke-virtual {v4}, Lcom/sun/prism/PixelFormat;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 188
    const/4 v3, 0x0

    move v0, v3

    .end local v0    # "this":Lcom/sun/prism/es2/ES2ResourceFactory;
    :goto_0
    return v0

    .line 168
    .restart local v0    # "this":Lcom/sun/prism/es2/ES2ResourceFactory;
    :pswitch_0
    const/4 v3, 0x1

    move v0, v3

    goto :goto_0

    .line 171
    :pswitch_1
    move-object v3, v2

    invoke-virtual {v3}, Lcom/sun/prism/es2/GLFactory;->isGL2()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {}, Lcom/sun/javafx/PlatformUtil;->isIOS()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 172
    :cond_0
    const/4 v3, 0x1

    move v0, v3

    goto :goto_0

    .line 176
    :cond_1
    move-object v3, v2

    const-string v4, "GL_EXT_texture_format_BGRA8888"

    invoke-virtual {v3, v4}, Lcom/sun/prism/es2/GLFactory;->isGLExtensionSupported(Ljava/lang/String;)Z

    move-result v3

    move v0, v3

    goto :goto_0

    .line 179
    :pswitch_2
    move-object v3, v2

    invoke-virtual {v3}, Lcom/sun/prism/es2/GLFactory;->isGL2()Z

    move-result v3

    move v0, v3

    goto :goto_0

    .line 186
    :pswitch_3
    move-object v3, v2

    const-string v4, "GL_APPLE_ycbcr_422"

    invoke-virtual {v3, v4}, Lcom/sun/prism/es2/GLFactory;->isGLExtensionSupported(Ljava/lang/String;)Z

    move-result v3

    move v0, v3

    goto :goto_0

    .line 163
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
