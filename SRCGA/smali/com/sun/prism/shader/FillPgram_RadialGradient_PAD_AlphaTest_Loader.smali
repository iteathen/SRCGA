.class public Lcom/sun/prism/shader/FillPgram_RadialGradient_PAD_AlphaTest_Loader;
.super Ljava/lang/Object;
.source "FillPgram_RadialGradient_PAD_AlphaTest_Loader.java"


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/shader/FillPgram_RadialGradient_PAD_AlphaTest_Loader;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 38
    return-void
.end method

.method public static loadShader(Lcom/sun/prism/ps/ShaderFactory;Ljava/io/InputStream;)Lcom/sun/prism/ps/Shader;
    .locals 12

    .prologue
    .line 43
    move-object v0, p0

    .local v0, "factory":Lcom/sun/prism/ps/ShaderFactory;
    move-object v1, p1

    .local v1, "pixelShaderCode":Ljava/io/InputStream;
    new-instance v4, Ljava/util/HashMap;

    move-object v11, v4

    move-object v4, v11

    move-object v5, v11

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    move-object v2, v4

    .line 44
    .local v2, "samplers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    move-object v4, v2

    const-string v5, "colors"

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 46
    new-instance v4, Ljava/util/HashMap;

    move-object v11, v4

    move-object v4, v11

    move-object v5, v11

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    move-object v3, v4

    .line 47
    .local v3, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    move-object v4, v3

    const-string v5, "perspVec"

    const/16 v6, 0x10

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 48
    move-object v4, v3

    const-string v5, "m0"

    const/16 v6, 0xd

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 49
    move-object v4, v3

    const-string v5, "offset"

    const/16 v6, 0xc

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 50
    move-object v4, v3

    const-string v5, "m1"

    const/16 v6, 0xe

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 51
    move-object v4, v3

    const-string v5, "precalc"

    const/16 v6, 0xf

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 52
    move-object v4, v3

    const-string v5, "fractions"

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 54
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    const/4 v8, 0x1

    const/4 v9, 0x1

    const/4 v10, 0x1

    invoke-interface/range {v4 .. v10}, Lcom/sun/prism/ps/ShaderFactory;->createShader(Ljava/io/InputStream;Ljava/util/Map;Ljava/util/Map;IZZ)Lcom/sun/prism/ps/Shader;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "factory":Lcom/sun/prism/ps/ShaderFactory;
    return-object v0
.end method
