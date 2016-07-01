.class Lcom/sun/prism/es2/ES2Texture;
.super Lcom/sun/prism/impl/BaseTexture;
.source "ES2Texture.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/sun/prism/es2/ES2TextureData;",
        ">",
        "Lcom/sun/prism/impl/BaseTexture",
        "<",
        "Lcom/sun/prism/es2/ES2TextureResource",
        "<TT;>;>;"
    }
.end annotation


# instance fields
.field final context:Lcom/sun/prism/es2/ES2Context;


# direct methods
.method constructor <init>(Lcom/sun/prism/es2/ES2Context;Lcom/sun/prism/es2/ES2TextureResource;Lcom/sun/prism/PixelFormat;Lcom/sun/prism/Texture$WrapMode;IIIIIIIIZ)V
    .locals 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/prism/es2/ES2Context;",
            "Lcom/sun/prism/es2/ES2TextureResource",
            "<TT;>;",
            "Lcom/sun/prism/PixelFormat;",
            "Lcom/sun/prism/Texture$WrapMode;",
            "IIIIIIIIZ)V"
        }
    .end annotation

    .prologue
    .line 64
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/prism/es2/ES2Texture;, "Lcom/sun/prism/es2/ES2Texture<TT;>;"
    move-object/from16 v1, p1

    .local v1, "context":Lcom/sun/prism/es2/ES2Context;
    move-object/from16 v2, p2

    .local v2, "resource":Lcom/sun/prism/es2/ES2TextureResource;, "Lcom/sun/prism/es2/ES2TextureResource<TT;>;"
    move-object/from16 v3, p3

    .local v3, "format":Lcom/sun/prism/PixelFormat;
    move-object/from16 v4, p4

    .local v4, "wrapMode":Lcom/sun/prism/Texture$WrapMode;
    move/from16 v5, p5

    .local v5, "physicalWidth":I
    move/from16 v6, p6

    .local v6, "physicalHeight":I
    move/from16 v7, p7

    .local v7, "contentX":I
    move/from16 v8, p8

    .local v8, "contentY":I
    move/from16 v9, p9

    .local v9, "contentWidth":I
    move/from16 v10, p10

    .local v10, "contentHeight":I
    move/from16 v11, p11

    .local v11, "maxContentWidth":I
    move/from16 v12, p12

    .local v12, "maxContentHeight":I
    move/from16 v13, p13

    .local v13, "useMipmap":Z
    move-object v14, v0

    move-object v15, v2

    move-object/from16 v16, v3

    move-object/from16 v17, v4

    move/from16 v18, v5

    move/from16 v19, v6

    move/from16 v20, v7

    move/from16 v21, v8

    move/from16 v22, v9

    move/from16 v23, v10

    move/from16 v24, v11

    move/from16 v25, v12

    move/from16 v26, v13

    invoke-direct/range {v14 .. v26}, Lcom/sun/prism/impl/BaseTexture;-><init>(Lcom/sun/prism/impl/ManagedResource;Lcom/sun/prism/PixelFormat;Lcom/sun/prism/Texture$WrapMode;IIIIIIIIZ)V

    .line 68
    move-object v14, v0

    move-object v15, v1

    iput-object v15, v14, Lcom/sun/prism/es2/ES2Texture;->context:Lcom/sun/prism/es2/ES2Context;

    .line 69
    return-void
.end method

.method constructor <init>(Lcom/sun/prism/es2/ES2Context;Lcom/sun/prism/es2/ES2TextureResource;Lcom/sun/prism/PixelFormat;Lcom/sun/prism/Texture$WrapMode;IIIIIIZ)V
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/prism/es2/ES2Context;",
            "Lcom/sun/prism/es2/ES2TextureResource",
            "<TT;>;",
            "Lcom/sun/prism/PixelFormat;",
            "Lcom/sun/prism/Texture$WrapMode;",
            "IIIIIIZ)V"
        }
    .end annotation

    .prologue
    .line 52
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/prism/es2/ES2Texture;, "Lcom/sun/prism/es2/ES2Texture<TT;>;"
    move-object/from16 v1, p1

    .local v1, "context":Lcom/sun/prism/es2/ES2Context;
    move-object/from16 v2, p2

    .local v2, "resource":Lcom/sun/prism/es2/ES2TextureResource;, "Lcom/sun/prism/es2/ES2TextureResource<TT;>;"
    move-object/from16 v3, p3

    .local v3, "format":Lcom/sun/prism/PixelFormat;
    move-object/from16 v4, p4

    .local v4, "wrapMode":Lcom/sun/prism/Texture$WrapMode;
    move/from16 v5, p5

    .local v5, "physicalWidth":I
    move/from16 v6, p6

    .local v6, "physicalHeight":I
    move/from16 v7, p7

    .local v7, "contentX":I
    move/from16 v8, p8

    .local v8, "contentY":I
    move/from16 v9, p9

    .local v9, "contentWidth":I
    move/from16 v10, p10

    .local v10, "contentHeight":I
    move/from16 v11, p11

    .local v11, "useMipmap":Z
    move-object v12, v0

    move-object v13, v2

    move-object v14, v3

    move-object v15, v4

    move/from16 v16, v5

    move/from16 v17, v6

    move/from16 v18, v7

    move/from16 v19, v8

    move/from16 v20, v9

    move/from16 v21, v10

    move/from16 v22, v11

    invoke-direct/range {v12 .. v22}, Lcom/sun/prism/impl/BaseTexture;-><init>(Lcom/sun/prism/impl/ManagedResource;Lcom/sun/prism/PixelFormat;Lcom/sun/prism/Texture$WrapMode;IIIIIIZ)V

    .line 55
    move-object v12, v0

    move-object v13, v1

    iput-object v13, v12, Lcom/sun/prism/es2/ES2Texture;->context:Lcom/sun/prism/es2/ES2Context;

    .line 56
    return-void
.end method

.method private constructor <init>(Lcom/sun/prism/es2/ES2Texture;Lcom/sun/prism/Texture$WrapMode;)V
    .locals 7

    .prologue
    .line 74
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/ES2Texture;, "Lcom/sun/prism/es2/ES2Texture<TT;>;"
    move-object v1, p1

    .local v1, "sharedTex":Lcom/sun/prism/es2/ES2Texture;
    move-object v2, p2

    .local v2, "newMode":Lcom/sun/prism/Texture$WrapMode;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Lcom/sun/prism/impl/BaseTexture;-><init>(Lcom/sun/prism/impl/BaseTexture;Lcom/sun/prism/Texture$WrapMode;Z)V

    .line 75
    move-object v3, v0

    move-object v4, v1

    iget-object v4, v4, Lcom/sun/prism/es2/ES2Texture;->context:Lcom/sun/prism/es2/ES2Context;

    iput-object v4, v3, Lcom/sun/prism/es2/ES2Texture;->context:Lcom/sun/prism/es2/ES2Context;

    .line 76
    return-void
.end method

.method public static create(Lcom/sun/prism/es2/ES2Context;Lcom/sun/prism/MediaFrame;)Lcom/sun/prism/Texture;
    .locals 33

    .prologue
    .line 229
    move-object/from16 v3, p0

    .local v3, "context":Lcom/sun/prism/es2/ES2Context;
    move-object/from16 v4, p1

    .local v4, "frame":Lcom/sun/prism/MediaFrame;
    move-object/from16 v19, v4

    invoke-interface/range {v19 .. v19}, Lcom/sun/prism/MediaFrame;->holdFrame()V

    .line 233
    move-object/from16 v19, v4

    invoke-interface/range {v19 .. v19}, Lcom/sun/prism/MediaFrame;->getPixelFormat()Lcom/sun/prism/PixelFormat;

    move-result-object v19

    move-object/from16 v7, v19

    .line 235
    .local v7, "format":Lcom/sun/prism/PixelFormat;
    move-object/from16 v19, v4

    invoke-interface/range {v19 .. v19}, Lcom/sun/prism/MediaFrame;->getPixelFormat()Lcom/sun/prism/PixelFormat;

    move-result-object v19

    sget-object v20, Lcom/sun/prism/PixelFormat;->MULTI_YCbCr_420:Lcom/sun/prism/PixelFormat;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_4

    .line 237
    move-object/from16 v19, v4

    invoke-interface/range {v19 .. v19}, Lcom/sun/prism/MediaFrame;->getEncodedWidth()I

    move-result v19

    move/from16 v8, v19

    .line 238
    .local v8, "width":I
    move-object/from16 v19, v4

    invoke-interface/range {v19 .. v19}, Lcom/sun/prism/MediaFrame;->getEncodedHeight()I

    move-result v19

    move/from16 v9, v19

    .line 239
    .local v9, "height":I
    move-object/from16 v19, v4

    invoke-interface/range {v19 .. v19}, Lcom/sun/prism/MediaFrame;->planeCount()I

    move-result v19

    move/from16 v10, v19

    .line 242
    .local v10, "planeCount":I
    new-instance v19, Lcom/sun/prism/MultiTexture;

    move-object/from16 v32, v19

    move-object/from16 v19, v32

    move-object/from16 v20, v32

    move-object/from16 v21, v7

    sget-object v22, Lcom/sun/prism/Texture$WrapMode;->CLAMP_TO_EDGE:Lcom/sun/prism/Texture$WrapMode;

    move-object/from16 v23, v4

    .line 243
    invoke-interface/range {v23 .. v23}, Lcom/sun/prism/MediaFrame;->getWidth()I

    move-result v23

    move-object/from16 v24, v4

    invoke-interface/range {v24 .. v24}, Lcom/sun/prism/MediaFrame;->getHeight()I

    move-result v24

    invoke-direct/range {v20 .. v24}, Lcom/sun/prism/MultiTexture;-><init>(Lcom/sun/prism/PixelFormat;Lcom/sun/prism/Texture$WrapMode;II)V

    move-object/from16 v11, v19

    .line 247
    .local v11, "tex":Lcom/sun/prism/MultiTexture;
    const/16 v19, 0x0

    move/from16 v12, v19

    .local v12, "index":I
    :goto_0
    move/from16 v19, v12

    move/from16 v20, v10

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_3

    .line 248
    move/from16 v19, v8

    move/from16 v13, v19

    .line 249
    .local v13, "subWidth":I
    move/from16 v19, v9

    move/from16 v14, v19

    .line 251
    .local v14, "subHeight":I
    move/from16 v19, v12

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_0

    move/from16 v19, v12

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_1

    .line 253
    :cond_0
    move/from16 v19, v13

    const/16 v20, 0x2

    div-int/lit8 v19, v19, 0x2

    move/from16 v13, v19

    .line 254
    move/from16 v19, v14

    const/16 v20, 0x2

    div-int/lit8 v19, v19, 0x2

    move/from16 v14, v19

    .line 258
    :cond_1
    move-object/from16 v19, v3

    sget-object v20, Lcom/sun/prism/PixelFormat;->BYTE_ALPHA:Lcom/sun/prism/PixelFormat;

    sget-object v21, Lcom/sun/prism/Texture$WrapMode;->CLAMP_TO_EDGE:Lcom/sun/prism/Texture$WrapMode;

    move/from16 v22, v13

    move/from16 v23, v14

    const/16 v24, 0x0

    .line 259
    invoke-static/range {v19 .. v24}, Lcom/sun/prism/es2/ES2Texture;->create(Lcom/sun/prism/es2/ES2Context;Lcom/sun/prism/PixelFormat;Lcom/sun/prism/Texture$WrapMode;IIZ)Lcom/sun/prism/es2/ES2Texture;

    move-result-object v19

    move-object/from16 v15, v19

    .line 261
    .local v15, "subTex":Lcom/sun/prism/es2/ES2Texture;
    move-object/from16 v19, v15

    if-eqz v19, :cond_2

    .line 262
    move-object/from16 v19, v11

    move-object/from16 v20, v15

    move/from16 v21, v12

    invoke-virtual/range {v19 .. v21}, Lcom/sun/prism/MultiTexture;->setTexture(Lcom/sun/prism/Texture;I)V

    .line 247
    :cond_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 266
    .end local v13    # "subWidth":I
    .end local v14    # "subHeight":I
    .end local v15    # "subTex":Lcom/sun/prism/es2/ES2Texture;
    :cond_3
    move-object/from16 v19, v4

    invoke-interface/range {v19 .. v19}, Lcom/sun/prism/MediaFrame;->releaseFrame()V

    .line 267
    move-object/from16 v19, v11

    move-object/from16 v3, v19

    .line 317
    .end local v3    # "context":Lcom/sun/prism/es2/ES2Context;
    .end local v8    # "width":I
    .end local v9    # "height":I
    .end local v10    # "planeCount":I
    .end local v11    # "tex":Lcom/sun/prism/MultiTexture;
    .end local v12    # "index":I
    :goto_1
    return-object v3

    .line 271
    .restart local v3    # "context":Lcom/sun/prism/es2/ES2Context;
    :cond_4
    move-object/from16 v19, v3

    invoke-virtual/range {v19 .. v19}, Lcom/sun/prism/es2/ES2Context;->getGLContext()Lcom/sun/prism/es2/GLContext;

    move-result-object v19

    move-object/from16 v9, v19

    .line 272
    .local v9, "glCtx":Lcom/sun/prism/es2/GLContext;
    move-object/from16 v19, v9

    invoke-virtual/range {v19 .. v19}, Lcom/sun/prism/es2/GLContext;->getMaxTextureSize()I

    move-result v19

    move/from16 v10, v19

    .line 276
    .local v10, "maxSize":I
    move-object/from16 v19, v4

    invoke-interface/range {v19 .. v19}, Lcom/sun/prism/MediaFrame;->getEncodedHeight()I

    move-result v19

    move/from16 v8, v19

    .line 277
    .local v8, "encodedHeight":I
    move-object/from16 v19, v4

    invoke-interface/range {v19 .. v19}, Lcom/sun/prism/MediaFrame;->getEncodedWidth()I

    move-result v19

    move/from16 v5, v19

    .line 278
    .local v5, "texWidth":I
    move/from16 v19, v8

    move/from16 v6, v19

    .line 280
    .local v6, "texHeight":I
    move-object/from16 v19, v4

    invoke-interface/range {v19 .. v19}, Lcom/sun/prism/MediaFrame;->getPixelFormat()Lcom/sun/prism/PixelFormat;

    move-result-object v19

    move-object/from16 v7, v19

    .line 283
    move-object/from16 v19, v9

    invoke-virtual/range {v19 .. v19}, Lcom/sun/prism/es2/GLContext;->canCreateNonPowTwoTextures()Z

    move-result v19

    if-nez v19, :cond_5

    .line 284
    move/from16 v19, v5

    move/from16 v20, v10

    invoke-static/range {v19 .. v20}, Lcom/sun/prism/es2/ES2Texture;->nextPowerOfTwo(II)I

    move-result v19

    move/from16 v5, v19

    .line 285
    move/from16 v19, v6

    move/from16 v20, v10

    invoke-static/range {v19 .. v20}, Lcom/sun/prism/es2/ES2Texture;->nextPowerOfTwo(II)I

    move-result v19

    move/from16 v6, v19

    .line 288
    :cond_5
    sget-object v19, Lcom/sun/prism/es2/ES2VramPool;->instance:Lcom/sun/prism/es2/ES2VramPool;

    move-object/from16 v11, v19

    .line 289
    .local v11, "pool":Lcom/sun/prism/es2/ES2VramPool;
    move-object/from16 v19, v11

    move/from16 v20, v5

    move/from16 v21, v6

    move-object/from16 v22, v7

    invoke-virtual/range {v19 .. v22}, Lcom/sun/prism/es2/ES2VramPool;->estimateTextureSize(IILcom/sun/prism/PixelFormat;)J

    move-result-wide v19

    move-wide/from16 v12, v19

    .line 290
    .local v12, "size":J
    move-object/from16 v19, v11

    move-wide/from16 v20, v12

    invoke-virtual/range {v19 .. v21}, Lcom/sun/prism/es2/ES2VramPool;->prepareForAllocation(J)Z

    move-result v19

    if-nez v19, :cond_6

    .line 291
    const/16 v19, 0x0

    move-object/from16 v3, v19

    goto :goto_1

    .line 295
    :cond_6
    move-object/from16 v19, v9

    invoke-virtual/range {v19 .. v19}, Lcom/sun/prism/es2/GLContext;->getBoundTexture()I

    move-result v19

    move/from16 v14, v19

    .line 297
    .local v14, "savedTex":I
    new-instance v19, Lcom/sun/prism/es2/ES2TextureData;

    move-object/from16 v32, v19

    move-object/from16 v19, v32

    move-object/from16 v20, v32

    move-object/from16 v21, v3

    move-object/from16 v22, v9

    .line 298
    invoke-virtual/range {v22 .. v22}, Lcom/sun/prism/es2/GLContext;->genAndBindTexture()I

    move-result v22

    move/from16 v23, v5

    move/from16 v24, v6

    move-wide/from16 v25, v12

    invoke-direct/range {v20 .. v26}, Lcom/sun/prism/es2/ES2TextureData;-><init>(Lcom/sun/prism/es2/ES2Context;IIIJ)V

    move-object/from16 v15, v19

    .line 300
    .local v15, "texData":Lcom/sun/prism/es2/ES2TextureData;
    new-instance v19, Lcom/sun/prism/es2/ES2TextureResource;

    move-object/from16 v32, v19

    move-object/from16 v19, v32

    move-object/from16 v20, v32

    move-object/from16 v21, v15

    invoke-direct/range {v20 .. v21}, Lcom/sun/prism/es2/ES2TextureResource;-><init>(Lcom/sun/prism/es2/ES2TextureData;)V

    move-object/from16 v16, v19

    .line 302
    .local v16, "texRes":Lcom/sun/prism/es2/ES2TextureResource;
    move-object/from16 v19, v3

    invoke-virtual/range {v19 .. v19}, Lcom/sun/prism/es2/ES2Context;->getGLContext()Lcom/sun/prism/es2/GLContext;

    move-result-object v19

    const/16 v20, 0x32

    move-object/from16 v21, v4

    move/from16 v22, v5

    move/from16 v23, v6

    const/16 v24, 0x1

    invoke-static/range {v19 .. v24}, Lcom/sun/prism/es2/ES2Texture;->uploadPixels(Lcom/sun/prism/es2/GLContext;ILcom/sun/prism/MediaFrame;IIZ)Z

    move-result v19

    move/from16 v17, v19

    .line 305
    .local v17, "result":Z
    move-object/from16 v19, v9

    const/16 v20, 0x35

    const/16 v21, 0x0

    invoke-virtual/range {v19 .. v21}, Lcom/sun/prism/es2/GLContext;->texParamsMinMax(IZ)V

    .line 308
    move-object/from16 v19, v9

    move/from16 v20, v14

    invoke-virtual/range {v19 .. v20}, Lcom/sun/prism/es2/GLContext;->setBoundTexture(I)V

    .line 310
    const/16 v19, 0x0

    move-object/from16 v18, v19

    .line 311
    .local v18, "tex":Lcom/sun/prism/es2/ES2Texture;
    move/from16 v19, v17

    if-eqz v19, :cond_7

    .line 312
    new-instance v19, Lcom/sun/prism/es2/ES2Texture;

    move-object/from16 v32, v19

    move-object/from16 v19, v32

    move-object/from16 v20, v32

    move-object/from16 v21, v3

    move-object/from16 v22, v16

    move-object/from16 v23, v7

    sget-object v24, Lcom/sun/prism/Texture$WrapMode;->CLAMP_TO_EDGE:Lcom/sun/prism/Texture$WrapMode;

    move/from16 v25, v5

    move/from16 v26, v6

    const/16 v27, 0x0

    const/16 v28, 0x0

    move-object/from16 v29, v4

    .line 314
    invoke-interface/range {v29 .. v29}, Lcom/sun/prism/MediaFrame;->getWidth()I

    move-result v29

    move-object/from16 v30, v4

    invoke-interface/range {v30 .. v30}, Lcom/sun/prism/MediaFrame;->getHeight()I

    move-result v30

    const/16 v31, 0x0

    invoke-direct/range {v20 .. v31}, Lcom/sun/prism/es2/ES2Texture;-><init>(Lcom/sun/prism/es2/ES2Context;Lcom/sun/prism/es2/ES2TextureResource;Lcom/sun/prism/PixelFormat;Lcom/sun/prism/Texture$WrapMode;IIIIIIZ)V

    move-object/from16 v18, v19

    .line 316
    :cond_7
    move-object/from16 v19, v4

    invoke-interface/range {v19 .. v19}, Lcom/sun/prism/MediaFrame;->releaseFrame()V

    .line 317
    move-object/from16 v19, v18

    move-object/from16 v3, v19

    goto/16 :goto_1
.end method

.method static create(Lcom/sun/prism/es2/ES2Context;Lcom/sun/prism/PixelFormat;Lcom/sun/prism/Texture$WrapMode;IIZ)Lcom/sun/prism/es2/ES2Texture;
    .locals 40

    .prologue
    .line 101
    move-object/from16 v3, p0

    .local v3, "context":Lcom/sun/prism/es2/ES2Context;
    move-object/from16 v4, p1

    .local v4, "format":Lcom/sun/prism/PixelFormat;
    move-object/from16 v5, p2

    .local v5, "wrapMode":Lcom/sun/prism/Texture$WrapMode;
    move/from16 v6, p3

    .local v6, "w":I
    move/from16 v7, p4

    .local v7, "h":I
    move/from16 v8, p5

    .local v8, "useMipmap":Z
    move-object/from16 v24, v3

    invoke-virtual/range {v24 .. v24}, Lcom/sun/prism/es2/ES2Context;->getResourceFactory()Lcom/sun/prism/ResourceFactory;

    move-result-object v24

    move-object/from16 v25, v4

    invoke-interface/range {v24 .. v25}, Lcom/sun/prism/ResourceFactory;->isFormatSupported(Lcom/sun/prism/PixelFormat;)Z

    move-result v24

    if-nez v24, :cond_0

    .line 102
    new-instance v24, Ljava/lang/UnsupportedOperationException;

    move-object/from16 v39, v24

    move-object/from16 v24, v39

    move-object/from16 v25, v39

    new-instance v26, Ljava/lang/StringBuilder;

    move-object/from16 v39, v26

    move-object/from16 v26, v39

    move-object/from16 v27, v39

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Pixel format "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v27, v4

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, " not supported on this device"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-direct/range {v25 .. v26}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v24

    .line 107
    :cond_0
    move-object/from16 v24, v4

    sget-object v25, Lcom/sun/prism/PixelFormat;->MULTI_YCbCr_420:Lcom/sun/prism/PixelFormat;

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    if-ne v0, v1, :cond_1

    .line 108
    new-instance v24, Ljava/lang/IllegalArgumentException;

    move-object/from16 v39, v24

    move-object/from16 v24, v39

    move-object/from16 v25, v39

    new-instance v26, Ljava/lang/StringBuilder;

    move-object/from16 v39, v26

    move-object/from16 v26, v39

    move-object/from16 v27, v39

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Format requires multitexturing: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v27, v4

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-direct/range {v25 .. v26}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v24

    .line 129
    :cond_1
    move-object/from16 v24, v3

    invoke-virtual/range {v24 .. v24}, Lcom/sun/prism/es2/ES2Context;->getGLContext()Lcom/sun/prism/es2/GLContext;

    move-result-object v24

    move-object/from16 v9, v24

    .line 130
    .local v9, "glCtx":Lcom/sun/prism/es2/GLContext;
    sget-object v24, Lcom/sun/prism/es2/ES2Texture$1;->$SwitchMap$com$sun$prism$Texture$WrapMode:[I

    move-object/from16 v25, v5

    invoke-virtual/range {v25 .. v25}, Lcom/sun/prism/Texture$WrapMode;->ordinal()I

    move-result v25

    aget v24, v24, v25

    packed-switch v24, :pswitch_data_0

    .line 151
    :cond_2
    :goto_0
    move-object/from16 v24, v9

    invoke-virtual/range {v24 .. v24}, Lcom/sun/prism/es2/GLContext;->getMaxTextureSize()I

    move-result v24

    move/from16 v10, v24

    .line 153
    .local v10, "maxSize":I
    move/from16 v24, v6

    move/from16 v13, v24

    .line 154
    .local v13, "contentW":I
    move/from16 v24, v7

    move/from16 v14, v24

    .line 156
    .local v14, "contentH":I
    sget-object v24, Lcom/sun/prism/es2/ES2Texture$1;->$SwitchMap$com$sun$prism$Texture$WrapMode:[I

    move-object/from16 v25, v5

    invoke-virtual/range {v25 .. v25}, Lcom/sun/prism/Texture$WrapMode;->ordinal()I

    move-result v25

    aget v24, v24, v25

    packed-switch v24, :pswitch_data_1

    .line 177
    const/16 v24, 0x0

    move/from16 v11, v24

    .line 178
    .local v11, "contentX":I
    const/16 v24, 0x0

    move/from16 v12, v24

    .line 179
    .local v12, "contentY":I
    move/from16 v24, v13

    move/from16 v15, v24

    .line 180
    .local v15, "texWidth":I
    move/from16 v24, v14

    move/from16 v16, v24

    .line 184
    .local v16, "texHeight":I
    :cond_3
    :goto_1
    move/from16 v24, v15

    move/from16 v25, v10

    move/from16 v0, v24

    move/from16 v1, v25

    if-gt v0, v1, :cond_4

    move/from16 v24, v16

    move/from16 v25, v10

    move/from16 v0, v24

    move/from16 v1, v25

    if-le v0, v1, :cond_7

    .line 185
    :cond_4
    new-instance v24, Ljava/lang/RuntimeException;

    move-object/from16 v39, v24

    move-object/from16 v24, v39

    move-object/from16 v25, v39

    new-instance v26, Ljava/lang/StringBuilder;

    move-object/from16 v39, v26

    move-object/from16 v26, v39

    move-object/from16 v27, v39

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Requested texture dimensions ("

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move/from16 v27, v6

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, "x"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move/from16 v27, v7

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ") "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, "require dimensions ("

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move/from16 v27, v15

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, "x"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move/from16 v27, v16

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ") "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, "that exceed maximum texture size ("

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move/from16 v27, v10

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ")"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-direct/range {v25 .. v26}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v24

    .line 132
    .end local v10    # "maxSize":I
    .end local v11    # "contentX":I
    .end local v12    # "contentY":I
    .end local v13    # "contentW":I
    .end local v14    # "contentH":I
    .end local v15    # "texWidth":I
    .end local v16    # "texHeight":I
    :pswitch_0
    move-object/from16 v24, v9

    invoke-virtual/range {v24 .. v24}, Lcom/sun/prism/es2/GLContext;->canClampToZero()Z

    move-result v24

    if-nez v24, :cond_2

    .line 133
    move-object/from16 v24, v5

    invoke-virtual/range {v24 .. v24}, Lcom/sun/prism/Texture$WrapMode;->simulatedVersion()Lcom/sun/prism/Texture$WrapMode;

    move-result-object v24

    move-object/from16 v5, v24

    goto/16 :goto_0

    .line 138
    :pswitch_1
    move-object/from16 v24, v9

    invoke-virtual/range {v24 .. v24}, Lcom/sun/prism/es2/GLContext;->canCreateNonPowTwoTextures()Z

    move-result v24

    if-nez v24, :cond_2

    move/from16 v24, v6

    move/from16 v25, v6

    const/16 v26, 0x1

    add-int/lit8 v25, v25, -0x1

    and-int v24, v24, v25

    if-nez v24, :cond_5

    move/from16 v24, v7

    move/from16 v25, v7

    const/16 v26, 0x1

    add-int/lit8 v25, v25, -0x1

    and-int v24, v24, v25

    if-eqz v24, :cond_2

    .line 141
    :cond_5
    move-object/from16 v24, v5

    invoke-virtual/range {v24 .. v24}, Lcom/sun/prism/Texture$WrapMode;->simulatedVersion()Lcom/sun/prism/Texture$WrapMode;

    move-result-object v24

    move-object/from16 v5, v24

    goto/16 :goto_0

    .line 145
    :pswitch_2
    goto/16 :goto_0

    .line 149
    :pswitch_3
    new-instance v24, Ljava/lang/IllegalArgumentException;

    move-object/from16 v39, v24

    move-object/from16 v24, v39

    move-object/from16 v25, v39

    new-instance v26, Ljava/lang/StringBuilder;

    move-object/from16 v39, v26

    move-object/from16 v26, v39

    move-object/from16 v27, v39

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Cannot request simulated wrap mode: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v27, v5

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-direct/range {v25 .. v26}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v24

    .line 158
    .restart local v10    # "maxSize":I
    .restart local v13    # "contentW":I
    .restart local v14    # "contentH":I
    :pswitch_4
    const/16 v24, 0x1

    move/from16 v11, v24

    .line 159
    .restart local v11    # "contentX":I
    const/16 v24, 0x1

    move/from16 v12, v24

    .line 160
    .restart local v12    # "contentY":I
    move/from16 v24, v13

    const/16 v25, 0x2

    add-int/lit8 v24, v24, 0x2

    move/from16 v15, v24

    .line 161
    .restart local v15    # "texWidth":I
    move/from16 v24, v14

    const/16 v25, 0x2

    add-int/lit8 v24, v24, 0x2

    move/from16 v16, v24

    .line 162
    .restart local v16    # "texHeight":I
    goto/16 :goto_1

    .line 165
    .end local v11    # "contentX":I
    .end local v12    # "contentY":I
    .end local v15    # "texWidth":I
    .end local v16    # "texHeight":I
    :pswitch_5
    const/16 v24, 0x0

    move/from16 v11, v24

    .line 166
    .restart local v11    # "contentX":I
    const/16 v24, 0x0

    move/from16 v12, v24

    .line 167
    .restart local v12    # "contentY":I
    move/from16 v24, v13

    move/from16 v15, v24

    .line 168
    .restart local v15    # "texWidth":I
    move/from16 v24, v14

    move/from16 v16, v24

    .line 169
    .restart local v16    # "texHeight":I
    move/from16 v24, v6

    move/from16 v25, v6

    const/16 v26, 0x1

    add-int/lit8 v25, v25, -0x1

    and-int v24, v24, v25

    if-eqz v24, :cond_6

    add-int/lit8 v15, v15, 0x1

    .line 170
    :cond_6
    move/from16 v24, v7

    move/from16 v25, v7

    const/16 v26, 0x1

    add-int/lit8 v25, v25, -0x1

    and-int v24, v24, v25

    if-eqz v24, :cond_3

    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_1

    .line 191
    :cond_7
    move-object/from16 v24, v9

    invoke-virtual/range {v24 .. v24}, Lcom/sun/prism/es2/GLContext;->canCreateNonPowTwoTextures()Z

    move-result v24

    if-nez v24, :cond_8

    .line 192
    move/from16 v24, v15

    move/from16 v25, v10

    invoke-static/range {v24 .. v25}, Lcom/sun/prism/es2/ES2Texture;->nextPowerOfTwo(II)I

    move-result v24

    move/from16 v15, v24

    .line 193
    move/from16 v24, v16

    move/from16 v25, v10

    invoke-static/range {v24 .. v25}, Lcom/sun/prism/es2/ES2Texture;->nextPowerOfTwo(II)I

    move-result v24

    move/from16 v16, v24

    .line 196
    :cond_8
    sget-object v24, Lcom/sun/prism/es2/ES2VramPool;->instance:Lcom/sun/prism/es2/ES2VramPool;

    move-object/from16 v17, v24

    .line 197
    .local v17, "pool":Lcom/sun/prism/es2/ES2VramPool;
    move-object/from16 v24, v17

    move/from16 v25, v15

    move/from16 v26, v16

    move-object/from16 v27, v4

    invoke-virtual/range {v24 .. v27}, Lcom/sun/prism/es2/ES2VramPool;->estimateTextureSize(IILcom/sun/prism/PixelFormat;)J

    move-result-wide v24

    move-wide/from16 v18, v24

    .line 198
    .local v18, "size":J
    move-object/from16 v24, v17

    move-wide/from16 v25, v18

    invoke-virtual/range {v24 .. v26}, Lcom/sun/prism/es2/ES2VramPool;->prepareForAllocation(J)Z

    move-result v24

    if-nez v24, :cond_9

    .line 199
    const/16 v24, 0x0

    move-object/from16 v3, v24

    .line 221
    .end local v3    # "context":Lcom/sun/prism/es2/ES2Context;
    :goto_2
    return-object v3

    .line 203
    .restart local v3    # "context":Lcom/sun/prism/es2/ES2Context;
    :cond_9
    move-object/from16 v24, v9

    invoke-virtual/range {v24 .. v24}, Lcom/sun/prism/es2/GLContext;->getBoundTexture()I

    move-result v24

    move/from16 v20, v24

    .line 204
    .local v20, "savedTex":I
    new-instance v24, Lcom/sun/prism/es2/ES2TextureData;

    move-object/from16 v39, v24

    move-object/from16 v24, v39

    move-object/from16 v25, v39

    move-object/from16 v26, v3

    move-object/from16 v27, v9

    .line 205
    invoke-virtual/range {v27 .. v27}, Lcom/sun/prism/es2/GLContext;->genAndBindTexture()I

    move-result v27

    move/from16 v28, v15

    move/from16 v29, v16

    move-wide/from16 v30, v18

    invoke-direct/range {v25 .. v31}, Lcom/sun/prism/es2/ES2TextureData;-><init>(Lcom/sun/prism/es2/ES2Context;IIIJ)V

    move-object/from16 v21, v24

    .line 207
    .local v21, "texData":Lcom/sun/prism/es2/ES2TextureData;
    new-instance v24, Lcom/sun/prism/es2/ES2TextureResource;

    move-object/from16 v39, v24

    move-object/from16 v24, v39

    move-object/from16 v25, v39

    move-object/from16 v26, v21

    invoke-direct/range {v25 .. v26}, Lcom/sun/prism/es2/ES2TextureResource;-><init>(Lcom/sun/prism/es2/ES2TextureData;)V

    move-object/from16 v22, v24

    .line 209
    .local v22, "texRes":Lcom/sun/prism/es2/ES2TextureResource;
    move-object/from16 v24, v9

    const/16 v25, 0x32

    const/16 v26, 0x0

    move-object/from16 v27, v4

    move/from16 v28, v15

    move/from16 v29, v16

    move/from16 v30, v11

    move/from16 v31, v12

    const/16 v32, 0x0

    const/16 v33, 0x0

    move/from16 v34, v13

    move/from16 v35, v14

    const/16 v36, 0x0

    const/16 v37, 0x1

    move/from16 v38, v8

    invoke-static/range {v24 .. v38}, Lcom/sun/prism/es2/ES2Texture;->uploadPixels(Lcom/sun/prism/es2/GLContext;ILjava/nio/Buffer;Lcom/sun/prism/PixelFormat;IIIIIIIIIZZ)Z

    move-result v24

    move/from16 v23, v24

    .line 213
    .local v23, "result":Z
    move-object/from16 v24, v9

    const/16 v25, 0x35

    move/from16 v26, v8

    invoke-virtual/range {v24 .. v26}, Lcom/sun/prism/es2/GLContext;->texParamsMinMax(IZ)V

    .line 216
    move-object/from16 v24, v9

    move/from16 v25, v20

    invoke-virtual/range {v24 .. v25}, Lcom/sun/prism/es2/GLContext;->setBoundTexture(I)V

    .line 218
    move/from16 v24, v23

    if-nez v24, :cond_a

    .line 219
    const/16 v24, 0x0

    move-object/from16 v3, v24

    goto :goto_2

    .line 221
    :cond_a
    new-instance v24, Lcom/sun/prism/es2/ES2Texture;

    move-object/from16 v39, v24

    move-object/from16 v24, v39

    move-object/from16 v25, v39

    move-object/from16 v26, v3

    move-object/from16 v27, v22

    move-object/from16 v28, v4

    move-object/from16 v29, v5

    move/from16 v30, v15

    move/from16 v31, v16

    move/from16 v32, v11

    move/from16 v33, v12

    move/from16 v34, v13

    move/from16 v35, v14

    move/from16 v36, v8

    invoke-direct/range {v25 .. v36}, Lcom/sun/prism/es2/ES2Texture;-><init>(Lcom/sun/prism/es2/ES2Context;Lcom/sun/prism/es2/ES2TextureResource;Lcom/sun/prism/PixelFormat;Lcom/sun/prism/Texture$WrapMode;IIIIIIZ)V

    move-object/from16 v3, v24

    goto/16 :goto_2

    .line 130
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch

    .line 156
    :pswitch_data_1
    .packed-switch 0x5
        :pswitch_5
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public static getBufferElementSizeLog(Ljava/nio/Buffer;)I
    .locals 6

    .prologue
    .line 577
    move-object v0, p0

    .local v0, "b":Ljava/nio/Buffer;
    move-object v1, v0

    instance-of v1, v1, Ljava/nio/ByteBuffer;

    if-eqz v1, :cond_0

    .line 578
    const/4 v1, 0x0

    move v0, v1

    .line 580
    .end local v0    # "b":Ljava/nio/Buffer;
    :goto_0
    return v0

    .line 579
    .restart local v0    # "b":Ljava/nio/Buffer;
    :cond_0
    move-object v1, v0

    instance-of v1, v1, Ljava/nio/IntBuffer;

    if-nez v1, :cond_1

    move-object v1, v0

    instance-of v1, v1, Ljava/nio/FloatBuffer;

    if-eqz v1, :cond_2

    .line 580
    :cond_1
    const/4 v1, 0x2

    move v0, v1

    goto :goto_0

    .line 582
    :cond_2
    new-instance v1, Ljava/lang/InternalError;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsupported Buffer type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v0

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static nextPowerOfTwo(II)I
    .locals 5

    .prologue
    .line 89
    move v0, p0

    .local v0, "val":I
    move v1, p1

    .local v1, "max":I
    move v3, v0

    move v4, v1

    if-le v3, v4, :cond_0

    .line 90
    const/4 v3, 0x0

    move v0, v3

    .line 96
    .end local v0    # "val":I
    :goto_0
    return v0

    .line 92
    .restart local v0    # "val":I
    :cond_0
    const/4 v3, 0x1

    move v2, v3

    .line 93
    .local v2, "i":I
    :goto_1
    move v3, v2

    move v4, v0

    if-ge v3, v4, :cond_1

    .line 94
    move v3, v2

    const/4 v4, 0x2

    mul-int/lit8 v3, v3, 0x2

    move v2, v3

    goto :goto_1

    .line 96
    :cond_1
    move v3, v2

    move v0, v3

    goto :goto_0
.end method

.method private static uploadPixels(Lcom/sun/prism/es2/GLContext;ILcom/sun/prism/MediaFrame;IIZ)Z
    .locals 31

    .prologue
    .line 515
    move-object/from16 v2, p0

    .local v2, "glCtx":Lcom/sun/prism/es2/GLContext;
    move/from16 v3, p1

    .local v3, "target":I
    move-object/from16 v4, p2

    .local v4, "frame":Lcom/sun/prism/MediaFrame;
    move/from16 v5, p3

    .local v5, "texw":I
    move/from16 v6, p4

    .local v6, "texh":I
    move/from16 v7, p5

    .local v7, "create":Z
    move-object/from16 v19, v4

    invoke-interface/range {v19 .. v19}, Lcom/sun/prism/MediaFrame;->holdFrame()V

    .line 517
    const/16 v19, 0x1

    move/from16 v8, v19

    .line 521
    .local v8, "alignment":I
    move-object/from16 v19, v4

    invoke-interface/range {v19 .. v19}, Lcom/sun/prism/MediaFrame;->getEncodedWidth()I

    move-result v19

    move/from16 v12, v19

    .line 522
    .local v12, "srcw":I
    move-object/from16 v19, v4

    invoke-interface/range {v19 .. v19}, Lcom/sun/prism/MediaFrame;->getEncodedHeight()I

    move-result v19

    move/from16 v13, v19

    .line 523
    .local v13, "srch":I
    move/from16 v19, v13

    move/from16 v14, v19

    .line 524
    .local v14, "adjHeight":I
    move-object/from16 v19, v4

    const/16 v20, 0x0

    invoke-interface/range {v19 .. v20}, Lcom/sun/prism/MediaFrame;->getBufferForPlane(I)Ljava/nio/ByteBuffer;

    move-result-object v19

    move-object/from16 v15, v19

    .line 526
    .local v15, "pixels":Ljava/nio/ByteBuffer;
    sget-object v19, Lcom/sun/prism/es2/ES2Texture$1;->$SwitchMap$com$sun$prism$PixelFormat:[I

    move-object/from16 v20, v4

    invoke-interface/range {v20 .. v20}, Lcom/sun/prism/MediaFrame;->getPixelFormat()Lcom/sun/prism/PixelFormat;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/sun/prism/PixelFormat;->ordinal()I

    move-result v20

    aget v19, v19, v20

    sparse-switch v19, :sswitch_data_0

    .line 546
    move-object/from16 v19, v4

    invoke-interface/range {v19 .. v19}, Lcom/sun/prism/MediaFrame;->releaseFrame()V

    .line 547
    new-instance v19, Ljava/lang/InternalError;

    move-object/from16 v30, v19

    move-object/from16 v19, v30

    move-object/from16 v20, v30

    new-instance v21, Ljava/lang/StringBuilder;

    move-object/from16 v30, v21

    move-object/from16 v21, v30

    move-object/from16 v22, v30

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Invalid video image format "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v22, v4

    .line 548
    invoke-interface/range {v22 .. v22}, Lcom/sun/prism/MediaFrame;->getPixelFormat()Lcom/sun/prism/PixelFormat;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v19

    .line 528
    :sswitch_0
    const/16 v19, 0x4

    move/from16 v8, v19

    .line 529
    const/16 v19, 0x28

    move/from16 v9, v19

    .line 530
    .local v9, "internalFormat":I
    const/16 v19, 0x29

    move/from16 v10, v19

    .line 531
    .local v10, "pixelFormat":I
    move-object/from16 v19, v15

    invoke-virtual/range {v19 .. v19}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v19

    sget-object v20, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_4

    .line 532
    const/16 v19, 0x16

    move/from16 v11, v19

    .line 551
    .local v11, "pixelType":I
    :goto_0
    const/16 v19, 0x1

    move/from16 v16, v19

    .line 552
    .local v16, "result":Z
    move/from16 v19, v7

    if-eqz v19, :cond_2

    .line 553
    move-object/from16 v19, v2

    const/16 v20, 0x3c

    const/16 v21, 0x1

    invoke-virtual/range {v19 .. v21}, Lcom/sun/prism/es2/GLContext;->pixelStorei(II)V

    .line 554
    const/16 v19, 0x0

    move-object/from16 v17, v19

    .line 555
    .local v17, "initBuf":Ljava/nio/Buffer;
    move/from16 v19, v12

    move/from16 v20, v5

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_0

    move/from16 v19, v14

    move/from16 v20, v6

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_1

    .line 556
    :cond_0
    move/from16 v19, v5

    move/from16 v20, v6

    mul-int v19, v19, v20

    move/from16 v18, v19

    .line 557
    .local v18, "initSize":I
    move/from16 v19, v18

    invoke-static/range {v19 .. v19}, Lcom/sun/prism/impl/BufferUtil;->newByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v19

    move-object/from16 v17, v19

    .line 559
    .end local v18    # "initSize":I
    :cond_1
    move-object/from16 v19, v2

    move/from16 v20, v3

    const/16 v21, 0x0

    move/from16 v22, v9

    move/from16 v23, v5

    move/from16 v24, v6

    const/16 v25, 0x0

    const/16 v26, 0x2c

    const/16 v27, 0x15

    move-object/from16 v28, v17

    const/16 v29, 0x0

    invoke-virtual/range {v19 .. v29}, Lcom/sun/prism/es2/GLContext;->texImage2D(IIIIIIIILjava/nio/Buffer;Z)Z

    move-result v19

    move/from16 v16, v19

    .line 564
    .end local v17    # "initBuf":Ljava/nio/Buffer;
    :cond_2
    move-object/from16 v19, v15

    if-eqz v19, :cond_3

    .line 565
    move-object/from16 v19, v2

    const/16 v20, 0x3c

    move/from16 v21, v8

    invoke-virtual/range {v19 .. v21}, Lcom/sun/prism/es2/GLContext;->pixelStorei(II)V

    .line 566
    move-object/from16 v19, v2

    const/16 v20, 0x3d

    move-object/from16 v21, v4

    const/16 v22, 0x0

    .line 567
    invoke-interface/range {v21 .. v22}, Lcom/sun/prism/MediaFrame;->strideForPlane(I)I

    move-result v21

    move/from16 v22, v8

    div-int v21, v21, v22

    .line 566
    invoke-virtual/range {v19 .. v21}, Lcom/sun/prism/es2/GLContext;->pixelStorei(II)V

    .line 568
    move-object/from16 v19, v2

    move/from16 v20, v3

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move/from16 v24, v12

    move-object/from16 v25, v4

    .line 569
    invoke-interface/range {v25 .. v25}, Lcom/sun/prism/MediaFrame;->getHeight()I

    move-result v25

    move/from16 v26, v10

    move/from16 v27, v11

    move-object/from16 v28, v15

    .line 568
    invoke-virtual/range {v19 .. v28}, Lcom/sun/prism/es2/GLContext;->texSubImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 572
    :cond_3
    move-object/from16 v19, v4

    invoke-interface/range {v19 .. v19}, Lcom/sun/prism/MediaFrame;->releaseFrame()V

    .line 573
    move/from16 v19, v16

    move/from16 v2, v19

    .end local v2    # "glCtx":Lcom/sun/prism/es2/GLContext;
    return v2

    .line 534
    .end local v11    # "pixelType":I
    .end local v16    # "result":Z
    .restart local v2    # "glCtx":Lcom/sun/prism/es2/GLContext;
    :cond_4
    const/16 v19, 0x17

    move/from16 v11, v19

    .line 536
    .restart local v11    # "pixelType":I
    goto/16 :goto_0

    .line 539
    .end local v9    # "internalFormat":I
    .end local v10    # "pixelFormat":I
    .end local v11    # "pixelType":I
    :sswitch_1
    const/16 v19, 0x2

    move/from16 v8, v19

    .line 540
    const/16 v19, 0x2a

    move/from16 v9, v19

    .line 541
    .restart local v9    # "internalFormat":I
    const/16 v19, 0x2e

    move/from16 v10, v19

    .line 542
    .restart local v10    # "pixelFormat":I
    const/16 v19, 0x18

    move/from16 v11, v19

    .line 543
    .restart local v11    # "pixelType":I
    goto/16 :goto_0

    .line 526
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x7 -> :sswitch_1
    .end sparse-switch
.end method

.method private static uploadPixels(Lcom/sun/prism/es2/GLContext;ILjava/nio/Buffer;Lcom/sun/prism/PixelFormat;IIIIIIIIIZZ)Z
    .locals 40

    .prologue
    .line 324
    move-object/from16 v2, p0

    .local v2, "glCtx":Lcom/sun/prism/es2/GLContext;
    move/from16 v3, p1

    .local v3, "target":I
    move-object/from16 v4, p2

    .local v4, "pixels":Ljava/nio/Buffer;
    move-object/from16 v5, p3

    .local v5, "format":Lcom/sun/prism/PixelFormat;
    move/from16 v6, p4

    .local v6, "texw":I
    move/from16 v7, p5

    .local v7, "texh":I
    move/from16 v8, p6

    .local v8, "dstx":I
    move/from16 v9, p7

    .local v9, "dsty":I
    move/from16 v10, p8

    .local v10, "srcx":I
    move/from16 v11, p9

    .local v11, "srcy":I
    move/from16 v12, p10

    .local v12, "srcw":I
    move/from16 v13, p11

    .local v13, "srch":I
    move/from16 v14, p12

    .local v14, "srcscan":I
    move/from16 v15, p13

    .local v15, "create":Z
    move/from16 v16, p14

    .local v16, "useMipmap":Z
    const/16 v28, 0x1

    move/from16 v17, v28

    .line 328
    .local v17, "alignment":I
    sget-object v28, Lcom/sun/prism/es2/ES2Pipeline;->glFactory:Lcom/sun/prism/es2/GLFactory;

    invoke-virtual/range {v28 .. v28}, Lcom/sun/prism/es2/GLFactory;->isGL2()Z

    move-result v28

    move/from16 v21, v28

    .line 330
    .local v21, "isGL2":Z
    sget-object v28, Lcom/sun/prism/es2/ES2Texture$1;->$SwitchMap$com$sun$prism$PixelFormat:[I

    move-object/from16 v29, v5

    invoke-virtual/range {v29 .. v29}, Lcom/sun/prism/PixelFormat;->ordinal()I

    move-result v29

    aget v28, v28, v29

    packed-switch v28, :pswitch_data_0

    .line 397
    new-instance v28, Ljava/lang/InternalError;

    move-object/from16 v39, v28

    move-object/from16 v28, v39

    move-object/from16 v29, v39

    new-instance v30, Ljava/lang/StringBuilder;

    move-object/from16 v39, v30

    move-object/from16 v30, v39

    move-object/from16 v31, v39

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "Image format not supported: "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v31, v5

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-direct/range {v29 .. v30}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v28

    .line 333
    :pswitch_0
    const/16 v28, 0x4

    move/from16 v17, v28

    .line 334
    const/16 v28, 0x28

    move/from16 v18, v28

    .line 337
    .local v18, "internalFormat":I
    const/16 v28, 0x29

    move/from16 v19, v28

    .line 338
    .local v19, "pixelFormat":I
    move/from16 v28, v21

    if-nez v28, :cond_2

    .line 340
    invoke-static {}, Lcom/sun/javafx/PlatformUtil;->isIOS()Z

    move-result v28

    if-nez v28, :cond_0

    .line 343
    sget-object v28, Lcom/sun/prism/es2/ES2Pipeline;->glFactory:Lcom/sun/prism/es2/GLFactory;

    const-string v29, "GL_EXT_texture_format_BGRA8888"

    invoke-virtual/range {v28 .. v29}, Lcom/sun/prism/es2/GLFactory;->isGLExtensionSupported(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_1

    .line 345
    const/16 v28, 0x29

    move/from16 v39, v28

    move/from16 v28, v39

    move/from16 v29, v39

    move/from16 v19, v29

    move/from16 v18, v28

    .line 350
    :cond_0
    :goto_0
    const/16 v28, 0x15

    move/from16 v20, v28

    .line 400
    .local v20, "pixelType":I
    :goto_1
    move/from16 v28, v21

    if-nez v28, :cond_5

    move/from16 v28, v18

    move/from16 v29, v19

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_5

    invoke-static {}, Lcom/sun/javafx/PlatformUtil;->isIOS()Z

    move-result v28

    if-nez v28, :cond_5

    .line 401
    new-instance v28, Ljava/lang/InternalError;

    move-object/from16 v39, v28

    move-object/from16 v28, v39

    move-object/from16 v29, v39

    const-string v30, "On ES 2.0 device, internalFormat must match pixelFormat"

    invoke-direct/range {v29 .. v30}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v28

    .line 347
    .end local v20    # "pixelType":I
    :cond_1
    const/16 v28, 0x28

    move/from16 v19, v28

    goto :goto_0

    .line 352
    :cond_2
    const/16 v28, 0x16

    move/from16 v20, v28

    .line 354
    .restart local v20    # "pixelType":I
    goto :goto_1

    .line 364
    .end local v18    # "internalFormat":I
    .end local v19    # "pixelFormat":I
    .end local v20    # "pixelType":I
    :pswitch_1
    move/from16 v28, v21

    if-eqz v28, :cond_3

    const/16 v28, 0x28

    :goto_2
    move/from16 v18, v28

    .line 365
    .restart local v18    # "internalFormat":I
    const/16 v28, 0x2a

    move/from16 v19, v28

    .line 366
    .restart local v19    # "pixelFormat":I
    const/16 v28, 0x15

    move/from16 v20, v28

    .line 367
    .restart local v20    # "pixelType":I
    goto :goto_1

    .line 364
    .end local v18    # "internalFormat":I
    .end local v19    # "pixelFormat":I
    .end local v20    # "pixelType":I
    :cond_3
    const/16 v28, 0x2a

    goto :goto_2

    .line 369
    :pswitch_2
    const/16 v28, 0x2b

    move/from16 v18, v28

    .line 370
    .restart local v18    # "internalFormat":I
    const/16 v28, 0x2b

    move/from16 v19, v28

    .line 371
    .restart local v19    # "pixelFormat":I
    const/16 v28, 0x15

    move/from16 v20, v28

    .line 372
    .restart local v20    # "pixelType":I
    goto :goto_1

    .line 374
    .end local v18    # "internalFormat":I
    .end local v19    # "pixelFormat":I
    .end local v20    # "pixelType":I
    :pswitch_3
    const/16 v28, 0x2c

    move/from16 v18, v28

    .line 375
    .restart local v18    # "internalFormat":I
    const/16 v28, 0x2c

    move/from16 v19, v28

    .line 376
    .restart local v19    # "pixelFormat":I
    const/16 v28, 0x15

    move/from16 v20, v28

    .line 377
    .restart local v20    # "pixelType":I
    goto :goto_1

    .line 379
    .end local v18    # "internalFormat":I
    .end local v19    # "pixelFormat":I
    .end local v20    # "pixelType":I
    :pswitch_4
    const/16 v28, 0x4

    move/from16 v17, v28

    .line 384
    move/from16 v28, v21

    if-eqz v28, :cond_4

    const/16 v28, 0x2d

    :goto_3
    move/from16 v18, v28

    .line 385
    .restart local v18    # "internalFormat":I
    const/16 v28, 0x28

    move/from16 v19, v28

    .line 386
    .restart local v19    # "pixelFormat":I
    const/16 v28, 0x14

    move/from16 v20, v28

    .line 387
    .restart local v20    # "pixelType":I
    goto :goto_1

    .line 384
    .end local v18    # "internalFormat":I
    .end local v19    # "pixelFormat":I
    .end local v20    # "pixelType":I
    :cond_4
    const/16 v28, 0x28

    goto :goto_3

    .line 390
    :pswitch_5
    const/16 v28, 0x2

    move/from16 v17, v28

    .line 391
    const/16 v28, 0x2a

    move/from16 v18, v28

    .line 392
    .restart local v18    # "internalFormat":I
    const/16 v28, 0x2e

    move/from16 v19, v28

    .line 393
    .restart local v19    # "pixelFormat":I
    const/16 v28, 0x18

    move/from16 v20, v28

    .line 394
    .restart local v20    # "pixelType":I
    goto/16 :goto_1

    .line 405
    :cond_5
    const/16 v28, 0x1

    move/from16 v22, v28

    .line 406
    .local v22, "result":Z
    move/from16 v28, v15

    if-eqz v28, :cond_6

    .line 412
    move-object/from16 v28, v2

    const/16 v29, 0x3c

    const/16 v30, 0x1

    invoke-virtual/range {v28 .. v30}, Lcom/sun/prism/es2/GLContext;->pixelStorei(II)V

    .line 413
    move-object/from16 v28, v5

    sget-object v29, Lcom/sun/prism/PixelFormat;->FLOAT_XYZW:Lcom/sun/prism/PixelFormat;

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    if-ne v0, v1, :cond_b

    move/from16 v28, v18

    const/16 v29, 0x28

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_b

    .line 418
    move-object/from16 v28, v2

    move/from16 v29, v3

    const/16 v30, 0x0

    const/16 v31, 0x28

    move/from16 v32, v6

    move/from16 v33, v7

    const/16 v34, 0x0

    move/from16 v35, v19

    move/from16 v36, v20

    const/16 v37, 0x0

    move/from16 v38, v16

    invoke-virtual/range {v28 .. v38}, Lcom/sun/prism/es2/GLContext;->texImage2D(IIIIIIIILjava/nio/Buffer;Z)Z

    move-result v28

    move/from16 v22, v28

    .line 469
    :cond_6
    :goto_4
    move-object/from16 v28, v4

    if-eqz v28, :cond_a

    .line 477
    move/from16 v28, v14

    move-object/from16 v29, v5

    invoke-virtual/range {v29 .. v29}, Lcom/sun/prism/PixelFormat;->getBytesPerPixelUnit()I

    move-result v29

    div-int v28, v28, v29

    move/from16 v23, v28

    .line 479
    .local v23, "rowLength":I
    move/from16 v28, v21

    if-nez v28, :cond_8

    .line 480
    move/from16 v28, v10

    if-nez v28, :cond_7

    move/from16 v28, v11

    if-nez v28, :cond_7

    move/from16 v28, v12

    move/from16 v29, v23

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_8

    .line 482
    :cond_7
    move-object/from16 v28, v4

    move-object/from16 v29, v5

    move/from16 v30, v10

    move/from16 v31, v11

    move/from16 v32, v12

    move/from16 v33, v13

    move/from16 v34, v14

    invoke-static/range {v28 .. v34}, Lcom/sun/prism/Image;->createPackedBuffer(Ljava/nio/Buffer;Lcom/sun/prism/PixelFormat;IIIII)Ljava/nio/Buffer;

    move-result-object v28

    move-object/from16 v4, v28

    .line 485
    const/16 v28, 0x0

    move/from16 v39, v28

    move/from16 v28, v39

    move/from16 v29, v39

    move/from16 v11, v29

    move/from16 v10, v28

    .line 486
    move/from16 v28, v12

    move/from16 v14, v28

    .line 487
    move/from16 v28, v14

    move-object/from16 v29, v5

    invoke-virtual/range {v29 .. v29}, Lcom/sun/prism/PixelFormat;->getBytesPerPixelUnit()I

    move-result v29

    div-int v28, v28, v29

    move/from16 v23, v28

    .line 490
    :cond_8
    move-object/from16 v28, v2

    const/16 v29, 0x3c

    move/from16 v30, v17

    invoke-virtual/range {v28 .. v30}, Lcom/sun/prism/es2/GLContext;->pixelStorei(II)V

    .line 491
    move/from16 v28, v21

    if-eqz v28, :cond_9

    .line 492
    move/from16 v28, v12

    move/from16 v29, v23

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_10

    .line 493
    move-object/from16 v28, v2

    const/16 v29, 0x3d

    const/16 v30, 0x0

    invoke-virtual/range {v28 .. v30}, Lcom/sun/prism/es2/GLContext;->pixelStorei(II)V

    .line 499
    :cond_9
    :goto_5
    move-object/from16 v28, v4

    invoke-virtual/range {v28 .. v28}, Ljava/nio/Buffer;->position()I

    move-result v28

    move/from16 v24, v28

    .line 501
    .local v24, "pos":I
    move-object/from16 v28, v4

    invoke-static/range {v28 .. v28}, Lcom/sun/prism/es2/ES2Texture;->getBufferElementSizeLog(Ljava/nio/Buffer;)I

    move-result v28

    move/from16 v25, v28

    .line 502
    .local v25, "bufferElementSizeLog":I
    move-object/from16 v28, v5

    invoke-virtual/range {v28 .. v28}, Lcom/sun/prism/PixelFormat;->getBytesPerPixelUnit()I

    move-result v28

    move/from16 v29, v25

    shr-int v28, v28, v29

    move/from16 v26, v28

    .line 503
    .local v26, "elementsInPixel":I
    move-object/from16 v28, v4

    move/from16 v29, v10

    move/from16 v30, v26

    mul-int v29, v29, v30

    move/from16 v30, v11

    move/from16 v31, v14

    move/from16 v32, v25

    shr-int v31, v31, v32

    mul-int v30, v30, v31

    add-int v29, v29, v30

    invoke-virtual/range {v28 .. v29}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    move-result-object v28

    .line 505
    move-object/from16 v28, v2

    move/from16 v29, v3

    const/16 v30, 0x0

    move/from16 v31, v8

    move/from16 v32, v9

    move/from16 v33, v12

    move/from16 v34, v13

    move/from16 v35, v19

    move/from16 v36, v20

    move-object/from16 v37, v4

    invoke-virtual/range {v28 .. v37}, Lcom/sun/prism/es2/GLContext;->texSubImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 508
    move-object/from16 v28, v4

    move/from16 v29, v24

    invoke-virtual/range {v28 .. v29}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    move-result-object v28

    .line 510
    .end local v23    # "rowLength":I
    .end local v24    # "pos":I
    .end local v25    # "bufferElementSizeLog":I
    .end local v26    # "elementsInPixel":I
    :cond_a
    move/from16 v28, v22

    move/from16 v2, v28

    .end local v2    # "glCtx":Lcom/sun/prism/es2/GLContext;
    return v2

    .line 431
    .restart local v2    # "glCtx":Lcom/sun/prism/es2/GLContext;
    :cond_b
    move/from16 v28, v21

    if-eqz v28, :cond_f

    .line 432
    const/16 v28, 0x2c

    move/from16 v23, v28

    .line 433
    .local v23, "initPixelFormat":I
    const/16 v28, 0x15

    move/from16 v24, v28

    .line 434
    .local v24, "initPixelType":I
    const/16 v28, 0x1

    move/from16 v25, v28

    .line 440
    .local v25, "initBytesPerPixel":I
    :goto_6
    const/16 v28, 0x0

    move-object/from16 v26, v28

    .line 441
    .local v26, "initBuf":Ljava/nio/Buffer;
    move/from16 v28, v12

    move/from16 v29, v6

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_c

    move/from16 v28, v13

    move/from16 v29, v7

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_d

    .line 454
    :cond_c
    move/from16 v28, v6

    move/from16 v29, v7

    mul-int v28, v28, v29

    move/from16 v29, v25

    mul-int v28, v28, v29

    move/from16 v27, v28

    .line 455
    .local v27, "initSize":I
    move/from16 v28, v27

    invoke-static/range {v28 .. v28}, Lcom/sun/prism/impl/BufferUtil;->newByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v28

    move-object/from16 v26, v28

    .line 457
    .end local v27    # "initSize":I
    :cond_d
    move/from16 v28, v21

    if-eqz v28, :cond_e

    .line 459
    move-object/from16 v28, v2

    const/16 v29, 0x3d

    const/16 v30, 0x0

    invoke-virtual/range {v28 .. v30}, Lcom/sun/prism/es2/GLContext;->pixelStorei(II)V

    .line 460
    move-object/from16 v28, v2

    const/16 v29, 0x3e

    const/16 v30, 0x0

    invoke-virtual/range {v28 .. v30}, Lcom/sun/prism/es2/GLContext;->pixelStorei(II)V

    .line 461
    move-object/from16 v28, v2

    const/16 v29, 0x3f

    const/16 v30, 0x0

    invoke-virtual/range {v28 .. v30}, Lcom/sun/prism/es2/GLContext;->pixelStorei(II)V

    .line 462
    move-object/from16 v28, v2

    const/16 v29, 0x3c

    move/from16 v30, v17

    invoke-virtual/range {v28 .. v30}, Lcom/sun/prism/es2/GLContext;->pixelStorei(II)V

    .line 464
    :cond_e
    move-object/from16 v28, v2

    move/from16 v29, v3

    const/16 v30, 0x0

    move/from16 v31, v18

    move/from16 v32, v6

    move/from16 v33, v7

    const/16 v34, 0x0

    move/from16 v35, v23

    move/from16 v36, v24

    move-object/from16 v37, v26

    move/from16 v38, v16

    invoke-virtual/range {v28 .. v38}, Lcom/sun/prism/es2/GLContext;->texImage2D(IIIIIIIILjava/nio/Buffer;Z)Z

    move-result v28

    move/from16 v22, v28

    goto/16 :goto_4

    .line 436
    .end local v23    # "initPixelFormat":I
    .end local v24    # "initPixelType":I
    .end local v25    # "initBytesPerPixel":I
    .end local v26    # "initBuf":Ljava/nio/Buffer;
    :cond_f
    move/from16 v28, v19

    move/from16 v23, v28

    .line 437
    .restart local v23    # "initPixelFormat":I
    move/from16 v28, v20

    move/from16 v24, v28

    .line 438
    .restart local v24    # "initPixelType":I
    move-object/from16 v28, v5

    invoke-virtual/range {v28 .. v28}, Lcom/sun/prism/PixelFormat;->getBytesPerPixelUnit()I

    move-result v28

    move/from16 v25, v28

    .restart local v25    # "initBytesPerPixel":I
    goto/16 :goto_6

    .line 495
    .end local v24    # "initPixelType":I
    .end local v25    # "initBytesPerPixel":I
    .local v23, "rowLength":I
    :cond_10
    move-object/from16 v28, v2

    const/16 v29, 0x3d

    move/from16 v30, v23

    invoke-virtual/range {v28 .. v30}, Lcom/sun/prism/es2/GLContext;->pixelStorei(II)V

    goto/16 :goto_5

    .line 330
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method protected createSharedTexture(Lcom/sun/prism/Texture$WrapMode;)Lcom/sun/prism/Texture;
    .locals 7

    .prologue
    .line 80
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/ES2Texture;, "Lcom/sun/prism/es2/ES2Texture<TT;>;"
    move-object v1, p1

    .local v1, "newMode":Lcom/sun/prism/Texture$WrapMode;
    new-instance v2, Lcom/sun/prism/es2/ES2Texture;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Lcom/sun/prism/es2/ES2Texture;-><init>(Lcom/sun/prism/es2/ES2Texture;Lcom/sun/prism/Texture$WrapMode;)V

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/prism/es2/ES2Texture;, "Lcom/sun/prism/es2/ES2Texture<TT;>;"
    return-object v0
.end method

.method public getNativeSourceHandle()I
    .locals 2

    .prologue
    .line 631
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/ES2Texture;, "Lcom/sun/prism/es2/ES2Texture<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/prism/es2/ES2Texture;->resource:Lcom/sun/prism/impl/ManagedResource;

    check-cast v1, Lcom/sun/prism/es2/ES2TextureResource;

    invoke-virtual {v1}, Lcom/sun/prism/es2/ES2TextureResource;->getResource()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/prism/es2/ES2TextureData;

    invoke-virtual {v1}, Lcom/sun/prism/es2/ES2TextureData;->getTexID()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/prism/es2/ES2Texture;, "Lcom/sun/prism/es2/ES2Texture<TT;>;"
    return v0
.end method

.method public update(Lcom/sun/prism/MediaFrame;Z)V
    .locals 15

    .prologue
    .line 756
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/ES2Texture;, "Lcom/sun/prism/es2/ES2Texture<TT;>;"
    move-object/from16 v1, p1

    .local v1, "frame":Lcom/sun/prism/MediaFrame;
    move/from16 v2, p2

    .local v2, "skipFlush":Z
    move v9, v2

    if-nez v9, :cond_0

    .line 757
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/prism/es2/ES2Texture;->context:Lcom/sun/prism/es2/ES2Context;

    invoke-virtual {v9}, Lcom/sun/prism/es2/ES2Context;->flushVertexBuffer()V

    .line 760
    :cond_0
    move-object v9, v0

    invoke-virtual {v9}, Lcom/sun/prism/es2/ES2Texture;->getNativeSourceHandle()I

    move-result v9

    move v3, v9

    .line 761
    .local v3, "texID":I
    move v9, v3

    if-eqz v9, :cond_4

    .line 762
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/prism/es2/ES2Texture;->context:Lcom/sun/prism/es2/ES2Context;

    invoke-virtual {v9}, Lcom/sun/prism/es2/ES2Context;->getGLContext()Lcom/sun/prism/es2/GLContext;

    move-result-object v9

    move-object v4, v9

    .line 764
    .local v4, "glCtx":Lcom/sun/prism/es2/GLContext;
    move-object v9, v4

    invoke-virtual {v9}, Lcom/sun/prism/es2/GLContext;->getActiveTextureUnit()I

    move-result v9

    move v5, v9

    .line 765
    .local v5, "savedUnit":I
    move-object v9, v4

    invoke-virtual {v9}, Lcom/sun/prism/es2/GLContext;->getBoundTexture()I

    move-result v9

    move v6, v9

    .line 766
    .local v6, "savedTex":I
    const/4 v9, 0x0

    move v7, v9

    .line 767
    .local v7, "alreadyBound":Z
    const/4 v9, 0x0

    move v8, v9

    .local v8, "i":I
    :goto_0
    move v9, v8

    const/4 v10, 0x2

    if-ge v9, v10, :cond_1

    .line 768
    move-object v9, v4

    move v10, v8

    invoke-virtual {v9, v10}, Lcom/sun/prism/es2/GLContext;->getBoundTexture(I)I

    move-result v9

    move v10, v3

    if-ne v9, v10, :cond_5

    .line 769
    const/4 v9, 0x1

    move v7, v9

    .line 770
    move v9, v5

    move v10, v8

    if-eq v9, v10, :cond_1

    .line 771
    move-object v9, v4

    move v10, v8

    invoke-virtual {v9, v10}, Lcom/sun/prism/es2/GLContext;->setActiveTextureUnit(I)V

    .line 776
    :cond_1
    move v9, v7

    if-nez v9, :cond_2

    .line 777
    move-object v9, v4

    move v10, v3

    invoke-virtual {v9, v10}, Lcom/sun/prism/es2/GLContext;->setBoundTexture(I)V

    .line 780
    :cond_2
    move-object v9, v4

    const/16 v10, 0x32

    move-object v11, v1

    move-object v12, v0

    .line 782
    invoke-virtual {v12}, Lcom/sun/prism/es2/ES2Texture;->getPhysicalWidth()I

    move-result v12

    move-object v13, v0

    invoke-virtual {v13}, Lcom/sun/prism/es2/ES2Texture;->getPhysicalHeight()I

    move-result v13

    const/4 v14, 0x0

    .line 780
    invoke-static/range {v9 .. v14}, Lcom/sun/prism/es2/ES2Texture;->uploadPixels(Lcom/sun/prism/es2/GLContext;ILcom/sun/prism/MediaFrame;IIZ)Z

    move-result v9

    .line 786
    move v9, v5

    move-object v10, v4

    invoke-virtual {v10}, Lcom/sun/prism/es2/GLContext;->getActiveTextureUnit()I

    move-result v10

    if-eq v9, v10, :cond_3

    .line 787
    move-object v9, v4

    move v10, v5

    invoke-virtual {v9, v10}, Lcom/sun/prism/es2/GLContext;->setActiveTextureUnit(I)V

    .line 789
    :cond_3
    move v9, v6

    move-object v10, v4

    invoke-virtual {v10}, Lcom/sun/prism/es2/GLContext;->getBoundTexture()I

    move-result v10

    if-eq v9, v10, :cond_4

    .line 790
    move-object v9, v4

    move v10, v6

    invoke-virtual {v9, v10}, Lcom/sun/prism/es2/GLContext;->setBoundTexture(I)V

    .line 793
    .end local v4    # "glCtx":Lcom/sun/prism/es2/GLContext;
    .end local v5    # "savedUnit":I
    .end local v6    # "savedTex":I
    .end local v7    # "alreadyBound":Z
    .end local v8    # "i":I
    :cond_4
    return-void

    .line 767
    .restart local v4    # "glCtx":Lcom/sun/prism/es2/GLContext;
    .restart local v5    # "savedUnit":I
    .restart local v6    # "savedTex":I
    .restart local v7    # "alreadyBound":Z
    .restart local v8    # "i":I
    :cond_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_0
.end method

.method public update(Ljava/nio/Buffer;Lcom/sun/prism/PixelFormat;IIIIIIIZ)V
    .locals 42

    .prologue
    .line 640
    move-object/from16 v2, p0

    .local v2, "this":Lcom/sun/prism/es2/ES2Texture;, "Lcom/sun/prism/es2/ES2Texture<TT;>;"
    move-object/from16 v3, p1

    .local v3, "pixels":Ljava/nio/Buffer;
    move-object/from16 v4, p2

    .local v4, "format":Lcom/sun/prism/PixelFormat;
    move/from16 v5, p3

    .local v5, "dstx":I
    move/from16 v6, p4

    .local v6, "dsty":I
    move/from16 v7, p5

    .local v7, "srcx":I
    move/from16 v8, p6

    .local v8, "srcy":I
    move/from16 v9, p7

    .local v9, "srcw":I
    move/from16 v10, p8

    .local v10, "srch":I
    move/from16 v11, p9

    .local v11, "srcscan":I
    move/from16 v12, p10

    .local v12, "skipFlush":Z
    move-object/from16 v27, v2

    move-object/from16 v28, v3

    move-object/from16 v29, v4

    move/from16 v30, v5

    move/from16 v31, v6

    move/from16 v32, v7

    move/from16 v33, v8

    move/from16 v34, v9

    move/from16 v35, v10

    move/from16 v36, v11

    invoke-virtual/range {v27 .. v36}, Lcom/sun/prism/es2/ES2Texture;->checkUpdateParams(Ljava/nio/Buffer;Lcom/sun/prism/PixelFormat;IIIIIII)V

    .line 643
    move/from16 v27, v12

    if-nez v27, :cond_0

    .line 644
    move-object/from16 v27, v2

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/sun/prism/es2/ES2Texture;->context:Lcom/sun/prism/es2/ES2Context;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/sun/prism/es2/ES2Context;->flushVertexBuffer()V

    .line 647
    :cond_0
    move-object/from16 v27, v2

    invoke-virtual/range {v27 .. v27}, Lcom/sun/prism/es2/ES2Texture;->getNativeSourceHandle()I

    move-result v27

    move/from16 v13, v27

    .line 648
    .local v13, "texID":I
    move/from16 v27, v13

    if-eqz v27, :cond_5

    .line 649
    move-object/from16 v27, v2

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/sun/prism/es2/ES2Texture;->context:Lcom/sun/prism/es2/ES2Context;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/sun/prism/es2/ES2Context;->getGLContext()Lcom/sun/prism/es2/GLContext;

    move-result-object v27

    move-object/from16 v14, v27

    .line 651
    .local v14, "glCtx":Lcom/sun/prism/es2/GLContext;
    move-object/from16 v27, v14

    invoke-virtual/range {v27 .. v27}, Lcom/sun/prism/es2/GLContext;->getActiveTextureUnit()I

    move-result v27

    move/from16 v15, v27

    .line 652
    .local v15, "savedUnit":I
    move-object/from16 v27, v14

    invoke-virtual/range {v27 .. v27}, Lcom/sun/prism/es2/GLContext;->getBoundTexture()I

    move-result v27

    move/from16 v16, v27

    .line 653
    .local v16, "savedTex":I
    const/16 v27, 0x0

    move/from16 v17, v27

    .line 654
    .local v17, "alreadyBound":Z
    const/16 v27, 0x0

    move/from16 v18, v27

    .local v18, "i":I
    :goto_0
    move/from16 v27, v18

    const/16 v28, 0x2

    move/from16 v0, v27

    move/from16 v1, v28

    if-ge v0, v1, :cond_1

    .line 655
    move-object/from16 v27, v14

    move/from16 v28, v18

    invoke-virtual/range {v27 .. v28}, Lcom/sun/prism/es2/GLContext;->getBoundTexture(I)I

    move-result v27

    move/from16 v28, v13

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_6

    .line 656
    const/16 v27, 0x1

    move/from16 v17, v27

    .line 657
    move/from16 v27, v15

    move/from16 v28, v18

    move/from16 v0, v27

    move/from16 v1, v28

    if-eq v0, v1, :cond_1

    .line 658
    move-object/from16 v27, v14

    move/from16 v28, v18

    invoke-virtual/range {v27 .. v28}, Lcom/sun/prism/es2/GLContext;->setActiveTextureUnit(I)V

    .line 663
    :cond_1
    move/from16 v27, v17

    if-nez v27, :cond_2

    .line 664
    move-object/from16 v27, v14

    move/from16 v28, v13

    invoke-virtual/range {v27 .. v28}, Lcom/sun/prism/es2/GLContext;->setBoundTexture(I)V

    .line 667
    :cond_2
    move-object/from16 v27, v2

    invoke-virtual/range {v27 .. v27}, Lcom/sun/prism/es2/ES2Texture;->getContentX()I

    move-result v27

    move/from16 v18, v27

    .line 668
    .local v18, "contentX":I
    move-object/from16 v27, v2

    invoke-virtual/range {v27 .. v27}, Lcom/sun/prism/es2/ES2Texture;->getContentY()I

    move-result v27

    move/from16 v19, v27

    .line 669
    .local v19, "contentY":I
    move-object/from16 v27, v2

    invoke-virtual/range {v27 .. v27}, Lcom/sun/prism/es2/ES2Texture;->getContentWidth()I

    move-result v27

    move/from16 v20, v27

    .line 670
    .local v20, "contentW":I
    move-object/from16 v27, v2

    invoke-virtual/range {v27 .. v27}, Lcom/sun/prism/es2/ES2Texture;->getContentHeight()I

    move-result v27

    move/from16 v21, v27

    .line 671
    .local v21, "contentH":I
    move-object/from16 v27, v2

    invoke-virtual/range {v27 .. v27}, Lcom/sun/prism/es2/ES2Texture;->getPhysicalWidth()I

    move-result v27

    move/from16 v22, v27

    .line 672
    .local v22, "texWidth":I
    move-object/from16 v27, v2

    invoke-virtual/range {v27 .. v27}, Lcom/sun/prism/es2/ES2Texture;->getPhysicalHeight()I

    move-result v27

    move/from16 v23, v27

    .line 673
    .local v23, "texHeight":I
    move-object/from16 v27, v2

    invoke-virtual/range {v27 .. v27}, Lcom/sun/prism/es2/ES2Texture;->getUseMipmap()Z

    move-result v27

    move/from16 v24, v27

    .line 674
    .local v24, "useMipmap":Z
    move-object/from16 v27, v14

    const/16 v28, 0x32

    move-object/from16 v29, v3

    move-object/from16 v30, v4

    move/from16 v31, v22

    move/from16 v32, v23

    move/from16 v33, v18

    move/from16 v34, v5

    add-int v33, v33, v34

    move/from16 v34, v19

    move/from16 v35, v6

    add-int v34, v34, v35

    move/from16 v35, v7

    move/from16 v36, v8

    move/from16 v37, v9

    move/from16 v38, v10

    move/from16 v39, v11

    const/16 v40, 0x0

    move/from16 v41, v24

    invoke-static/range {v27 .. v41}, Lcom/sun/prism/es2/ES2Texture;->uploadPixels(Lcom/sun/prism/es2/GLContext;ILjava/nio/Buffer;Lcom/sun/prism/PixelFormat;IIIIIIIIIZZ)Z

    move-result v27

    .line 680
    sget-object v27, Lcom/sun/prism/es2/ES2Texture$1;->$SwitchMap$com$sun$prism$Texture$WrapMode:[I

    move-object/from16 v28, v2

    invoke-virtual/range {v28 .. v28}, Lcom/sun/prism/es2/ES2Texture;->getWrapMode()Lcom/sun/prism/Texture$WrapMode;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lcom/sun/prism/Texture$WrapMode;->ordinal()I

    move-result v28

    aget v27, v27, v28

    packed-switch v27, :pswitch_data_0

    .line 746
    :cond_3
    :goto_1
    :pswitch_0
    move/from16 v27, v15

    move-object/from16 v28, v14

    invoke-virtual/range {v28 .. v28}, Lcom/sun/prism/es2/GLContext;->getActiveTextureUnit()I

    move-result v28

    move/from16 v0, v27

    move/from16 v1, v28

    if-eq v0, v1, :cond_4

    .line 747
    move-object/from16 v27, v14

    move/from16 v28, v15

    invoke-virtual/range {v27 .. v28}, Lcom/sun/prism/es2/GLContext;->setActiveTextureUnit(I)V

    .line 749
    :cond_4
    move/from16 v27, v16

    move-object/from16 v28, v14

    invoke-virtual/range {v28 .. v28}, Lcom/sun/prism/es2/GLContext;->getBoundTexture()I

    move-result v28

    move/from16 v0, v27

    move/from16 v1, v28

    if-eq v0, v1, :cond_5

    .line 750
    move-object/from16 v27, v14

    move/from16 v28, v16

    invoke-virtual/range {v27 .. v28}, Lcom/sun/prism/es2/GLContext;->setBoundTexture(I)V

    .line 753
    .end local v14    # "glCtx":Lcom/sun/prism/es2/GLContext;
    .end local v15    # "savedUnit":I
    .end local v16    # "savedTex":I
    .end local v17    # "alreadyBound":Z
    .end local v18    # "contentX":I
    .end local v19    # "contentY":I
    .end local v20    # "contentW":I
    .end local v21    # "contentH":I
    .end local v22    # "texWidth":I
    .end local v23    # "texHeight":I
    .end local v24    # "useMipmap":Z
    :cond_5
    return-void

    .line 654
    .restart local v14    # "glCtx":Lcom/sun/prism/es2/GLContext;
    .restart local v15    # "savedUnit":I
    .restart local v16    # "savedTex":I
    .restart local v17    # "alreadyBound":Z
    .local v18, "i":I
    :cond_6
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_0

    .line 682
    .local v18, "contentX":I
    .restart local v19    # "contentY":I
    .restart local v20    # "contentW":I
    .restart local v21    # "contentH":I
    .restart local v22    # "texWidth":I
    .restart local v23    # "texHeight":I
    .restart local v24    # "useMipmap":Z
    :pswitch_1
    goto :goto_1

    .line 684
    :pswitch_2
    move/from16 v27, v20

    move/from16 v28, v22

    move/from16 v0, v27

    move/from16 v1, v28

    if-ge v0, v1, :cond_8

    move/from16 v27, v5

    move/from16 v28, v9

    add-int v27, v27, v28

    move/from16 v28, v20

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_8

    const/16 v27, 0x1

    :goto_2
    move/from16 v25, v27

    .line 685
    .local v25, "copyR":Z
    move/from16 v27, v21

    move/from16 v28, v23

    move/from16 v0, v27

    move/from16 v1, v28

    if-ge v0, v1, :cond_9

    move/from16 v27, v6

    move/from16 v28, v10

    add-int v27, v27, v28

    move/from16 v28, v21

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_9

    const/16 v27, 0x1

    :goto_3
    move/from16 v26, v27

    .line 687
    .local v26, "copyL":Z
    move/from16 v27, v25

    if-eqz v27, :cond_7

    .line 688
    move-object/from16 v27, v14

    const/16 v28, 0x32

    move-object/from16 v29, v3

    move-object/from16 v30, v4

    move/from16 v31, v22

    move/from16 v32, v23

    move/from16 v33, v18

    move/from16 v34, v20

    add-int v33, v33, v34

    move/from16 v34, v19

    move/from16 v35, v6

    add-int v34, v34, v35

    move/from16 v35, v7

    move/from16 v36, v9

    add-int v35, v35, v36

    const/16 v36, 0x1

    add-int/lit8 v35, v35, -0x1

    move/from16 v36, v8

    const/16 v37, 0x1

    move/from16 v38, v10

    move/from16 v39, v11

    const/16 v40, 0x0

    move/from16 v41, v24

    invoke-static/range {v27 .. v41}, Lcom/sun/prism/es2/ES2Texture;->uploadPixels(Lcom/sun/prism/es2/GLContext;ILjava/nio/Buffer;Lcom/sun/prism/PixelFormat;IIIIIIIIIZZ)Z

    move-result v27

    .line 695
    :cond_7
    move/from16 v27, v26

    if-eqz v27, :cond_3

    .line 696
    move-object/from16 v27, v14

    const/16 v28, 0x32

    move-object/from16 v29, v3

    move-object/from16 v30, v4

    move/from16 v31, v22

    move/from16 v32, v23

    move/from16 v33, v18

    move/from16 v34, v5

    add-int v33, v33, v34

    move/from16 v34, v19

    move/from16 v35, v21

    add-int v34, v34, v35

    move/from16 v35, v7

    move/from16 v36, v8

    move/from16 v37, v10

    add-int v36, v36, v37

    const/16 v37, 0x1

    add-int/lit8 v36, v36, -0x1

    move/from16 v37, v9

    const/16 v38, 0x1

    move/from16 v39, v11

    const/16 v40, 0x0

    move/from16 v41, v24

    invoke-static/range {v27 .. v41}, Lcom/sun/prism/es2/ES2Texture;->uploadPixels(Lcom/sun/prism/es2/GLContext;ILjava/nio/Buffer;Lcom/sun/prism/PixelFormat;IIIIIIIIIZZ)Z

    move-result v27

    .line 702
    move/from16 v27, v25

    if-eqz v27, :cond_3

    .line 703
    move-object/from16 v27, v14

    const/16 v28, 0x32

    move-object/from16 v29, v3

    move-object/from16 v30, v4

    move/from16 v31, v22

    move/from16 v32, v23

    move/from16 v33, v18

    move/from16 v34, v20

    add-int v33, v33, v34

    move/from16 v34, v19

    move/from16 v35, v21

    add-int v34, v34, v35

    move/from16 v35, v7

    move/from16 v36, v9

    add-int v35, v35, v36

    const/16 v36, 0x1

    add-int/lit8 v35, v35, -0x1

    move/from16 v36, v8

    move/from16 v37, v10

    add-int v36, v36, v37

    const/16 v37, 0x1

    add-int/lit8 v36, v36, -0x1

    const/16 v37, 0x1

    const/16 v38, 0x1

    move/from16 v39, v11

    const/16 v40, 0x0

    move/from16 v41, v24

    invoke-static/range {v27 .. v41}, Lcom/sun/prism/es2/ES2Texture;->uploadPixels(Lcom/sun/prism/es2/GLContext;ILjava/nio/Buffer;Lcom/sun/prism/PixelFormat;IIIIIIIIIZZ)Z

    move-result v27

    goto/16 :goto_1

    .line 684
    .end local v25    # "copyR":Z
    .end local v26    # "copyL":Z
    :cond_8
    const/16 v27, 0x0

    goto/16 :goto_2

    .line 685
    .restart local v25    # "copyR":Z
    :cond_9
    const/16 v27, 0x0

    goto/16 :goto_3

    .line 713
    .end local v25    # "copyR":Z
    :pswitch_3
    goto/16 :goto_1

    .line 715
    :pswitch_4
    move/from16 v27, v20

    move/from16 v28, v22

    move/from16 v0, v27

    move/from16 v1, v28

    if-ge v0, v1, :cond_b

    move/from16 v27, v5

    if-nez v27, :cond_b

    const/16 v27, 0x1

    :goto_4
    move/from16 v25, v27

    .line 716
    .local v25, "repeatL":Z
    move/from16 v27, v21

    move/from16 v28, v23

    move/from16 v0, v27

    move/from16 v1, v28

    if-ge v0, v1, :cond_c

    move/from16 v27, v6

    if-nez v27, :cond_c

    const/16 v27, 0x1

    :goto_5
    move/from16 v26, v27

    .line 718
    .local v26, "repeatT":Z
    move/from16 v27, v25

    if-eqz v27, :cond_a

    .line 719
    move-object/from16 v27, v14

    const/16 v28, 0x32

    move-object/from16 v29, v3

    move-object/from16 v30, v4

    move/from16 v31, v22

    move/from16 v32, v23

    move/from16 v33, v18

    move/from16 v34, v20

    add-int v33, v33, v34

    move/from16 v34, v19

    move/from16 v35, v6

    add-int v34, v34, v35

    move/from16 v35, v7

    move/from16 v36, v8

    const/16 v37, 0x1

    move/from16 v38, v10

    move/from16 v39, v11

    const/16 v40, 0x0

    move/from16 v41, v24

    invoke-static/range {v27 .. v41}, Lcom/sun/prism/es2/ES2Texture;->uploadPixels(Lcom/sun/prism/es2/GLContext;ILjava/nio/Buffer;Lcom/sun/prism/PixelFormat;IIIIIIIIIZZ)Z

    move-result v27

    .line 726
    :cond_a
    move/from16 v27, v26

    if-eqz v27, :cond_3

    .line 727
    move-object/from16 v27, v14

    const/16 v28, 0x32

    move-object/from16 v29, v3

    move-object/from16 v30, v4

    move/from16 v31, v22

    move/from16 v32, v23

    move/from16 v33, v18

    move/from16 v34, v5

    add-int v33, v33, v34

    move/from16 v34, v19

    move/from16 v35, v21

    add-int v34, v34, v35

    move/from16 v35, v7

    move/from16 v36, v8

    move/from16 v37, v9

    const/16 v38, 0x1

    move/from16 v39, v11

    const/16 v40, 0x0

    move/from16 v41, v24

    invoke-static/range {v27 .. v41}, Lcom/sun/prism/es2/ES2Texture;->uploadPixels(Lcom/sun/prism/es2/GLContext;ILjava/nio/Buffer;Lcom/sun/prism/PixelFormat;IIIIIIIIIZZ)Z

    move-result v27

    .line 733
    move/from16 v27, v25

    if-eqz v27, :cond_3

    .line 734
    move-object/from16 v27, v14

    const/16 v28, 0x32

    move-object/from16 v29, v3

    move-object/from16 v30, v4

    move/from16 v31, v22

    move/from16 v32, v23

    move/from16 v33, v18

    move/from16 v34, v20

    add-int v33, v33, v34

    move/from16 v34, v19

    move/from16 v35, v21

    add-int v34, v34, v35

    move/from16 v35, v7

    move/from16 v36, v8

    const/16 v37, 0x1

    const/16 v38, 0x1

    move/from16 v39, v11

    const/16 v40, 0x0

    move/from16 v41, v24

    invoke-static/range {v27 .. v41}, Lcom/sun/prism/es2/ES2Texture;->uploadPixels(Lcom/sun/prism/es2/GLContext;ILjava/nio/Buffer;Lcom/sun/prism/PixelFormat;IIIIIIIIIZZ)Z

    move-result v27

    goto/16 :goto_1

    .line 715
    .end local v25    # "repeatL":Z
    .end local v26    # "repeatT":Z
    :cond_b
    const/16 v27, 0x0

    goto/16 :goto_4

    .line 716
    .restart local v25    # "repeatL":Z
    :cond_c
    const/16 v27, 0x0

    goto/16 :goto_5

    .line 680
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method updateFilterState()V
    .locals 9

    .prologue
    .line 609
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/ES2Texture;, "Lcom/sun/prism/es2/ES2Texture<TT;>;"
    move-object v6, v0

    invoke-virtual {v6}, Lcom/sun/prism/es2/ES2Texture;->getLinearFiltering()Z

    move-result v6

    move v1, v6

    .line 614
    .local v1, "cLFM":Z
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/prism/es2/ES2Texture;->resource:Lcom/sun/prism/impl/ManagedResource;

    check-cast v6, Lcom/sun/prism/es2/ES2TextureResource;

    invoke-virtual {v6}, Lcom/sun/prism/es2/ES2TextureResource;->getResource()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sun/prism/es2/ES2TextureData;

    move-object v2, v6

    .line 615
    .local v2, "texData":Lcom/sun/prism/es2/ES2TextureData;
    move-object v6, v2

    invoke-virtual {v6}, Lcom/sun/prism/es2/ES2TextureData;->isFiltered()Z

    move-result v6

    move v7, v1

    if-eq v6, v7, :cond_2

    .line 616
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/prism/es2/ES2Texture;->context:Lcom/sun/prism/es2/ES2Context;

    invoke-virtual {v6}, Lcom/sun/prism/es2/ES2Context;->getGLContext()Lcom/sun/prism/es2/GLContext;

    move-result-object v6

    move-object v3, v6

    .line 617
    .local v3, "glCtx":Lcom/sun/prism/es2/GLContext;
    move-object v6, v3

    invoke-virtual {v6}, Lcom/sun/prism/es2/GLContext;->getBoundTexture()I

    move-result v6

    move v4, v6

    .line 618
    .local v4, "savedTex":I
    move-object v6, v2

    invoke-virtual {v6}, Lcom/sun/prism/es2/ES2TextureData;->getTexID()I

    move-result v6

    move v5, v6

    .line 619
    .local v5, "texID":I
    move v6, v4

    move v7, v5

    if-eq v6, v7, :cond_0

    .line 620
    move-object v6, v3

    move v7, v5

    invoke-virtual {v6, v7}, Lcom/sun/prism/es2/GLContext;->setBoundTexture(I)V

    .line 622
    :cond_0
    move-object v6, v3

    move v7, v5

    move v8, v1

    invoke-virtual {v6, v7, v8}, Lcom/sun/prism/es2/GLContext;->updateFilterState(IZ)V

    .line 623
    move v6, v4

    move v7, v5

    if-eq v6, v7, :cond_1

    .line 624
    move-object v6, v3

    move v7, v4

    invoke-virtual {v6, v7}, Lcom/sun/prism/es2/GLContext;->setBoundTexture(I)V

    .line 626
    :cond_1
    move-object v6, v2

    move v7, v1

    invoke-virtual {v6, v7}, Lcom/sun/prism/es2/ES2TextureData;->setFiltered(Z)V

    .line 628
    .end local v3    # "glCtx":Lcom/sun/prism/es2/GLContext;
    .end local v4    # "savedTex":I
    .end local v5    # "texID":I
    :cond_2
    return-void
.end method

.method updateWrapState()V
    .locals 9

    .prologue
    .line 587
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/ES2Texture;, "Lcom/sun/prism/es2/ES2Texture<TT;>;"
    move-object v6, v0

    invoke-virtual {v6}, Lcom/sun/prism/es2/ES2Texture;->getWrapMode()Lcom/sun/prism/Texture$WrapMode;

    move-result-object v6

    move-object v1, v6

    .line 592
    .local v1, "cWrapMode":Lcom/sun/prism/Texture$WrapMode;
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/prism/es2/ES2Texture;->resource:Lcom/sun/prism/impl/ManagedResource;

    check-cast v6, Lcom/sun/prism/es2/ES2TextureResource;

    invoke-virtual {v6}, Lcom/sun/prism/es2/ES2TextureResource;->getResource()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sun/prism/es2/ES2TextureData;

    move-object v2, v6

    .line 593
    .local v2, "texData":Lcom/sun/prism/es2/ES2TextureData;
    move-object v6, v2

    invoke-virtual {v6}, Lcom/sun/prism/es2/ES2TextureData;->getWrapMode()Lcom/sun/prism/Texture$WrapMode;

    move-result-object v6

    move-object v7, v1

    if-eq v6, v7, :cond_2

    .line 594
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/prism/es2/ES2Texture;->context:Lcom/sun/prism/es2/ES2Context;

    invoke-virtual {v6}, Lcom/sun/prism/es2/ES2Context;->getGLContext()Lcom/sun/prism/es2/GLContext;

    move-result-object v6

    move-object v3, v6

    .line 595
    .local v3, "glCtx":Lcom/sun/prism/es2/GLContext;
    move-object v6, v3

    invoke-virtual {v6}, Lcom/sun/prism/es2/GLContext;->getBoundTexture()I

    move-result v6

    move v4, v6

    .line 596
    .local v4, "savedTex":I
    move-object v6, v2

    invoke-virtual {v6}, Lcom/sun/prism/es2/ES2TextureData;->getTexID()I

    move-result v6

    move v5, v6

    .line 597
    .local v5, "texID":I
    move v6, v4

    move v7, v5

    if-eq v6, v7, :cond_0

    .line 598
    move-object v6, v3

    move v7, v5

    invoke-virtual {v6, v7}, Lcom/sun/prism/es2/GLContext;->setBoundTexture(I)V

    .line 600
    :cond_0
    move-object v6, v3

    move v7, v5

    move-object v8, v1

    invoke-virtual {v6, v7, v8}, Lcom/sun/prism/es2/GLContext;->updateWrapState(ILcom/sun/prism/Texture$WrapMode;)V

    .line 601
    move v6, v4

    move v7, v5

    if-eq v6, v7, :cond_1

    .line 602
    move-object v6, v3

    move v7, v4

    invoke-virtual {v6, v7}, Lcom/sun/prism/es2/GLContext;->setBoundTexture(I)V

    .line 604
    :cond_1
    move-object v6, v2

    move-object v7, v1

    invoke-virtual {v6, v7}, Lcom/sun/prism/es2/ES2TextureData;->setWrapMode(Lcom/sun/prism/Texture$WrapMode;)V

    .line 606
    .end local v3    # "glCtx":Lcom/sun/prism/es2/GLContext;
    .end local v4    # "savedTex":I
    .end local v5    # "texID":I
    :cond_2
    return-void
.end method
