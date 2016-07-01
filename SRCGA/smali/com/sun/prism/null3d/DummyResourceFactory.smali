.class Lcom/sun/prism/null3d/DummyResourceFactory;
.super Lcom/sun/prism/impl/ps/BaseShaderFactory;
.source "DummyResourceFactory.java"


# instance fields
.field private final context:Lcom/sun/prism/null3d/DummyContext;


# direct methods
.method constructor <init>(Lcom/sun/glass/ui/Screen;)V
    .locals 8

    .prologue
    .line 52
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/null3d/DummyResourceFactory;
    move-object v1, p1

    .local v1, "screen":Lcom/sun/glass/ui/Screen;
    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/prism/impl/ps/BaseShaderFactory;-><init>()V

    .line 53
    move-object v2, v0

    new-instance v3, Lcom/sun/prism/null3d/DummyContext;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v1

    move-object v6, v0

    invoke-direct {v4, v5, v6}, Lcom/sun/prism/null3d/DummyContext;-><init>(Lcom/sun/glass/ui/Screen;Lcom/sun/prism/null3d/DummyResourceFactory;)V

    iput-object v3, v2, Lcom/sun/prism/null3d/DummyResourceFactory;->context:Lcom/sun/prism/null3d/DummyContext;

    .line 54
    return-void
.end method


# virtual methods
.method public createMesh()Lcom/sun/prism/Mesh;
    .locals 5

    .prologue
    .line 153
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/null3d/DummyResourceFactory;
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string v3, "Not supported yet."

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public createMeshView(Lcom/sun/prism/Mesh;)Lcom/sun/prism/MeshView;
    .locals 6

    .prologue
    .line 149
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/null3d/DummyResourceFactory;
    move-object v1, p1

    .local v1, "mesh":Lcom/sun/prism/Mesh;
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "Not supported yet."

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public createPhongMaterial()Lcom/sun/prism/PhongMaterial;
    .locals 5

    .prologue
    .line 145
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/null3d/DummyResourceFactory;
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string v3, "Not supported yet."

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public createPresentable(Lcom/sun/prism/PresentableState;)Lcom/sun/prism/Presentable;
    .locals 10

    .prologue
    .line 103
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/null3d/DummyResourceFactory;
    move-object v1, p1

    .local v1, "pState":Lcom/sun/prism/PresentableState;
    new-instance v3, Lcom/sun/prism/null3d/DummyRTTexture;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/prism/null3d/DummyResourceFactory;->context:Lcom/sun/prism/null3d/DummyContext;

    sget-object v6, Lcom/sun/prism/Texture$WrapMode;->CLAMP_NOT_NEEDED:Lcom/sun/prism/Texture$WrapMode;

    move-object v7, v1

    invoke-virtual {v7}, Lcom/sun/prism/PresentableState;->getWidth()I

    move-result v7

    move-object v8, v1

    invoke-virtual {v8}, Lcom/sun/prism/PresentableState;->getHeight()I

    move-result v8

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/sun/prism/null3d/DummyRTTexture;-><init>(Lcom/sun/prism/null3d/DummyContext;Lcom/sun/prism/Texture$WrapMode;II)V

    move-object v2, v3

    .line 104
    .local v2, "rtt":Lcom/sun/prism/null3d/DummyRTTexture;
    new-instance v3, Lcom/sun/prism/null3d/DummySwapChain;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/prism/null3d/DummyResourceFactory;->context:Lcom/sun/prism/null3d/DummyContext;

    move-object v6, v1

    move-object v7, v2

    invoke-direct {v4, v5, v6, v7}, Lcom/sun/prism/null3d/DummySwapChain;-><init>(Lcom/sun/prism/null3d/DummyContext;Lcom/sun/prism/PresentableState;Lcom/sun/prism/null3d/DummyRTTexture;)V

    move-object v0, v3

    .end local v0    # "this":Lcom/sun/prism/null3d/DummyResourceFactory;
    return-object v0
.end method

.method public createRTTexture(IILcom/sun/prism/Texture$WrapMode;)Lcom/sun/prism/RTTexture;
    .locals 9

    .prologue
    .line 93
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/null3d/DummyResourceFactory;
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

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/sun/prism/null3d/DummyResourceFactory;->createRTTexture(IILcom/sun/prism/Texture$WrapMode;Z)Lcom/sun/prism/RTTexture;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Lcom/sun/prism/null3d/DummyResourceFactory;
    return-object v0
.end method

.method public createRTTexture(IILcom/sun/prism/Texture$WrapMode;Z)Lcom/sun/prism/RTTexture;
    .locals 12

    .prologue
    .line 98
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/null3d/DummyResourceFactory;
    move v1, p1

    .local v1, "width":I
    move v2, p2

    .local v2, "height":I
    move-object v3, p3

    .local v3, "wrapMode":Lcom/sun/prism/Texture$WrapMode;
    move/from16 v4, p4

    .local v4, "msaa":Z
    new-instance v5, Lcom/sun/prism/null3d/DummyRTTexture;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/prism/null3d/DummyResourceFactory;->context:Lcom/sun/prism/null3d/DummyContext;

    move-object v8, v3

    move v9, v1

    move v10, v2

    invoke-direct {v6, v7, v8, v9, v10}, Lcom/sun/prism/null3d/DummyRTTexture;-><init>(Lcom/sun/prism/null3d/DummyContext;Lcom/sun/prism/Texture$WrapMode;II)V

    move-object v0, v5

    .end local v0    # "this":Lcom/sun/prism/null3d/DummyResourceFactory;
    return-object v0
.end method

.method public createShader(Ljava/io/InputStream;Ljava/util/Map;Ljava/util/Map;IZZ)Lcom/sun/prism/ps/Shader;
    .locals 12
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
    .line 119
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/null3d/DummyResourceFactory;
    move-object v1, p1

    .local v1, "pixelShaderCode":Ljava/io/InputStream;
    move-object v2, p2

    .local v2, "samplers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    move-object v3, p3

    .local v3, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    move/from16 v4, p4

    .local v4, "maxTexCoordIndex":I
    move/from16 v5, p5

    .local v5, "isPixcoordUsed":Z
    move/from16 v6, p6

    .local v6, "isPerVertexColorUsed":Z
    new-instance v7, Lcom/sun/prism/null3d/DummyShader;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    move-object v9, v0

    iget-object v9, v9, Lcom/sun/prism/null3d/DummyResourceFactory;->context:Lcom/sun/prism/null3d/DummyContext;

    move-object v10, v3

    invoke-direct {v8, v9, v10}, Lcom/sun/prism/null3d/DummyShader;-><init>(Lcom/sun/prism/null3d/DummyContext;Ljava/util/Map;)V

    move-object v0, v7

    .end local v0    # "this":Lcom/sun/prism/null3d/DummyResourceFactory;
    return-object v0
.end method

.method public createStockShader(Ljava/lang/String;)Lcom/sun/prism/ps/Shader;
    .locals 7

    .prologue
    .line 123
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/null3d/DummyResourceFactory;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    new-instance v2, Lcom/sun/prism/null3d/DummyShader;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/prism/null3d/DummyResourceFactory;->context:Lcom/sun/prism/null3d/DummyContext;

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Lcom/sun/prism/null3d/DummyShader;-><init>(Lcom/sun/prism/null3d/DummyContext;Ljava/lang/String;)V

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/prism/null3d/DummyResourceFactory;
    return-object v0
.end method

.method public createTexture(Lcom/sun/prism/MediaFrame;)Lcom/sun/prism/Texture;
    .locals 10

    .prologue
    .line 140
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/null3d/DummyResourceFactory;
    move-object v1, p1

    .local v1, "frame":Lcom/sun/prism/MediaFrame;
    new-instance v2, Lcom/sun/prism/null3d/DummyTexture;

    move-object v9, v2

    move-object v2, v9

    move-object v3, v9

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/prism/null3d/DummyResourceFactory;->context:Lcom/sun/prism/null3d/DummyContext;

    move-object v5, v1

    invoke-interface {v5}, Lcom/sun/prism/MediaFrame;->getPixelFormat()Lcom/sun/prism/PixelFormat;

    move-result-object v5

    sget-object v6, Lcom/sun/prism/Texture$WrapMode;->CLAMP_TO_EDGE:Lcom/sun/prism/Texture$WrapMode;

    move-object v7, v1

    .line 141
    invoke-interface {v7}, Lcom/sun/prism/MediaFrame;->getWidth()I

    move-result v7

    move-object v8, v1

    invoke-interface {v8}, Lcom/sun/prism/MediaFrame;->getHeight()I

    move-result v8

    invoke-direct/range {v3 .. v8}, Lcom/sun/prism/null3d/DummyTexture;-><init>(Lcom/sun/prism/null3d/DummyContext;Lcom/sun/prism/PixelFormat;Lcom/sun/prism/Texture$WrapMode;II)V

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/prism/null3d/DummyResourceFactory;
    return-object v0
.end method

.method public bridge synthetic createTexture(Lcom/sun/prism/PixelFormat;Lcom/sun/prism/Texture$Usage;Lcom/sun/prism/Texture$WrapMode;II)Lcom/sun/prism/Texture;
    .locals 12

    .prologue
    .line 48
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/null3d/DummyResourceFactory;
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    move-object v9, v3

    move v10, v4

    move v11, v5

    invoke-virtual/range {v6 .. v11}, Lcom/sun/prism/null3d/DummyResourceFactory;->createTexture(Lcom/sun/prism/PixelFormat;Lcom/sun/prism/Texture$Usage;Lcom/sun/prism/Texture$WrapMode;II)Lcom/sun/prism/null3d/DummyTexture;

    move-result-object v6

    move-object v0, v6

    .end local v0    # "this":Lcom/sun/prism/null3d/DummyResourceFactory;
    return-object v0
.end method

.method public bridge synthetic createTexture(Lcom/sun/prism/PixelFormat;Lcom/sun/prism/Texture$Usage;Lcom/sun/prism/Texture$WrapMode;IIZ)Lcom/sun/prism/Texture;
    .locals 14

    .prologue
    .line 48
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/null3d/DummyResourceFactory;
    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object v7, v0

    move-object v8, v1

    move-object v9, v2

    move-object v10, v3

    move v11, v4

    move v12, v5

    move v13, v6

    invoke-virtual/range {v7 .. v13}, Lcom/sun/prism/null3d/DummyResourceFactory;->createTexture(Lcom/sun/prism/PixelFormat;Lcom/sun/prism/Texture$Usage;Lcom/sun/prism/Texture$WrapMode;IIZ)Lcom/sun/prism/null3d/DummyTexture;

    move-result-object v7

    move-object v0, v7

    .end local v0    # "this":Lcom/sun/prism/null3d/DummyResourceFactory;
    return-object v0
.end method

.method public createTexture(Lcom/sun/prism/PixelFormat;Lcom/sun/prism/Texture$Usage;Lcom/sun/prism/Texture$WrapMode;II)Lcom/sun/prism/null3d/DummyTexture;
    .locals 14

    .prologue
    .line 69
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/null3d/DummyResourceFactory;
    move-object v1, p1

    .local v1, "format":Lcom/sun/prism/PixelFormat;
    move-object/from16 v2, p2

    .local v2, "usagehint":Lcom/sun/prism/Texture$Usage;
    move-object/from16 v3, p3

    .local v3, "wrapMode":Lcom/sun/prism/Texture$WrapMode;
    move/from16 v4, p4

    .local v4, "w":I
    move/from16 v5, p5

    .local v5, "h":I
    new-instance v6, Lcom/sun/prism/null3d/DummyTexture;

    move-object v13, v6

    move-object v6, v13

    move-object v7, v13

    move-object v8, v0

    iget-object v8, v8, Lcom/sun/prism/null3d/DummyResourceFactory;->context:Lcom/sun/prism/null3d/DummyContext;

    move-object v9, v1

    move-object v10, v3

    move v11, v4

    move v12, v5

    invoke-direct/range {v7 .. v12}, Lcom/sun/prism/null3d/DummyTexture;-><init>(Lcom/sun/prism/null3d/DummyContext;Lcom/sun/prism/PixelFormat;Lcom/sun/prism/Texture$WrapMode;II)V

    move-object v0, v6

    .end local v0    # "this":Lcom/sun/prism/null3d/DummyResourceFactory;
    return-object v0
.end method

.method public createTexture(Lcom/sun/prism/PixelFormat;Lcom/sun/prism/Texture$Usage;Lcom/sun/prism/Texture$WrapMode;IIZ)Lcom/sun/prism/null3d/DummyTexture;
    .locals 13

    .prologue
    .line 75
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/null3d/DummyResourceFactory;
    move-object v1, p1

    .local v1, "format":Lcom/sun/prism/PixelFormat;
    move-object v2, p2

    .local v2, "usagehint":Lcom/sun/prism/Texture$Usage;
    move-object/from16 v3, p3

    .local v3, "wrapMode":Lcom/sun/prism/Texture$WrapMode;
    move/from16 v4, p4

    .local v4, "w":I
    move/from16 v5, p5

    .local v5, "h":I
    move/from16 v6, p6

    .local v6, "useMipmap":Z
    move-object v7, v0

    move-object v8, v1

    move-object v9, v2

    move-object v10, v3

    move v11, v4

    move v12, v5

    invoke-virtual/range {v7 .. v12}, Lcom/sun/prism/null3d/DummyResourceFactory;->createTexture(Lcom/sun/prism/PixelFormat;Lcom/sun/prism/Texture$Usage;Lcom/sun/prism/Texture$WrapMode;II)Lcom/sun/prism/null3d/DummyTexture;

    move-result-object v7

    move-object v0, v7

    .end local v0    # "this":Lcom/sun/prism/null3d/DummyResourceFactory;
    return-object v0
.end method

.method public createVertexBuffer(I)Lcom/sun/prism/impl/VertexBuffer;
    .locals 6

    .prologue
    .line 109
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/null3d/DummyResourceFactory;
    move v1, p1

    .local v1, "maxQuads":I
    new-instance v2, Lcom/sun/prism/impl/VertexBuffer;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move v4, v1

    invoke-direct {v3, v4}, Lcom/sun/prism/impl/VertexBuffer;-><init>(I)V

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/prism/null3d/DummyResourceFactory;
    return-object v0
.end method

.method public dispose()V
    .locals 0

    .prologue
    .line 128
    return-void
.end method

.method getContext()Lcom/sun/prism/null3d/DummyContext;
    .locals 2

    .prologue
    .line 57
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/null3d/DummyResourceFactory;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/prism/null3d/DummyResourceFactory;->context:Lcom/sun/prism/null3d/DummyContext;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/prism/null3d/DummyResourceFactory;
    return-object v0
.end method

.method public getMaximumTextureSize()I
    .locals 2

    .prologue
    .line 136
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/null3d/DummyResourceFactory;
    const/high16 v1, 0x10000

    move v0, v1

    .end local v0    # "this":Lcom/sun/prism/null3d/DummyResourceFactory;
    return v0
.end method

.method public getRTTHeight(ILcom/sun/prism/Texture$WrapMode;)I
    .locals 4

    .prologue
    .line 83
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/null3d/DummyResourceFactory;
    move v1, p1

    .local v1, "h":I
    move-object v2, p2

    .local v2, "wrapMode":Lcom/sun/prism/Texture$WrapMode;
    move v3, v1

    move v0, v3

    .end local v0    # "this":Lcom/sun/prism/null3d/DummyResourceFactory;
    return v0
.end method

.method public getRTTWidth(ILcom/sun/prism/Texture$WrapMode;)I
    .locals 4

    .prologue
    .line 79
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/null3d/DummyResourceFactory;
    move v1, p1

    .local v1, "w":I
    move-object v2, p2

    .local v2, "wrapMode":Lcom/sun/prism/Texture$WrapMode;
    move v3, v1

    move v0, v3

    .end local v0    # "this":Lcom/sun/prism/null3d/DummyResourceFactory;
    return v0
.end method

.method public getTextureResourcePool()Lcom/sun/prism/impl/TextureResourcePool;
    .locals 2

    .prologue
    .line 61
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/null3d/DummyResourceFactory;
    sget-object v1, Lcom/sun/prism/null3d/DummyTexturePool;->instance:Lcom/sun/prism/null3d/DummyTexturePool;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/prism/null3d/DummyResourceFactory;
    return-object v0
.end method

.method public isCompatibleTexture(Lcom/sun/prism/Texture;)Z
    .locals 3

    .prologue
    .line 88
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/null3d/DummyResourceFactory;
    move-object v1, p1

    .local v1, "tex":Lcom/sun/prism/Texture;
    move-object v2, v1

    instance-of v2, v2, Lcom/sun/prism/null3d/DummyTexture;

    move v0, v2

    .end local v0    # "this":Lcom/sun/prism/null3d/DummyResourceFactory;
    return v0
.end method

.method public isFormatSupported(Lcom/sun/prism/PixelFormat;)Z
    .locals 3

    .prologue
    .line 132
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/null3d/DummyResourceFactory;
    move-object v1, p1

    .local v1, "format":Lcom/sun/prism/PixelFormat;
    const/4 v2, 0x1

    move v0, v2

    .end local v0    # "this":Lcom/sun/prism/null3d/DummyResourceFactory;
    return v0
.end method
