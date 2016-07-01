.class Lcom/sun/prism/es2/ES2RTTexture;
.super Lcom/sun/prism/es2/ES2Texture;
.source "ES2RTTexture.java"

# interfaces
.implements Lcom/sun/prism/es2/ES2RenderTarget;
.implements Lcom/sun/prism/RTTexture;
.implements Lcom/sun/prism/ReadbackRenderTarget;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sun/prism/es2/ES2Texture",
        "<",
        "Lcom/sun/prism/es2/ES2RTTextureData;",
        ">;",
        "Lcom/sun/prism/es2/ES2RenderTarget;",
        "Lcom/sun/prism/RTTexture;",
        "Lcom/sun/prism/ReadbackRenderTarget;"
    }
.end annotation


# instance fields
.field private opaque:Z


# direct methods
.method private constructor <init>(Lcom/sun/prism/es2/ES2Context;Lcom/sun/prism/es2/ES2TextureResource;Lcom/sun/prism/Texture$WrapMode;IIIIIIII)V
    .locals 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/prism/es2/ES2Context;",
            "Lcom/sun/prism/es2/ES2TextureResource",
            "<",
            "Lcom/sun/prism/es2/ES2RTTextureData;",
            ">;",
            "Lcom/sun/prism/Texture$WrapMode;",
            "IIIIIIII)V"
        }
    .end annotation

    .prologue
    .line 53
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/prism/es2/ES2RTTexture;
    move-object/from16 v1, p1

    .local v1, "context":Lcom/sun/prism/es2/ES2Context;
    move-object/from16 v2, p2

    .local v2, "resource":Lcom/sun/prism/es2/ES2TextureResource;, "Lcom/sun/prism/es2/ES2TextureResource<Lcom/sun/prism/es2/ES2RTTextureData;>;"
    move-object/from16 v3, p3

    .local v3, "wrapMode":Lcom/sun/prism/Texture$WrapMode;
    move/from16 v4, p4

    .local v4, "physicalWidth":I
    move/from16 v5, p5

    .local v5, "physicalHeight":I
    move/from16 v6, p6

    .local v6, "contentX":I
    move/from16 v7, p7

    .local v7, "contentY":I
    move/from16 v8, p8

    .local v8, "contentWidth":I
    move/from16 v9, p9

    .local v9, "contentHeight":I
    move/from16 v10, p10

    .local v10, "maxContentWidth":I
    move/from16 v11, p11

    .local v11, "maxContentHeight":I
    move-object v12, v0

    move-object v13, v1

    move-object v14, v2

    sget-object v15, Lcom/sun/prism/PixelFormat;->BYTE_BGRA_PRE:Lcom/sun/prism/PixelFormat;

    move-object/from16 v16, v3

    move/from16 v17, v4

    move/from16 v18, v5

    move/from16 v19, v6

    move/from16 v20, v7

    move/from16 v21, v8

    move/from16 v22, v9

    move/from16 v23, v10

    move/from16 v24, v11

    const/16 v25, 0x0

    invoke-direct/range {v12 .. v25}, Lcom/sun/prism/es2/ES2Texture;-><init>(Lcom/sun/prism/es2/ES2Context;Lcom/sun/prism/es2/ES2TextureResource;Lcom/sun/prism/PixelFormat;Lcom/sun/prism/Texture$WrapMode;IIIIIIIIZ)V

    .line 58
    move-object v12, v2

    invoke-virtual {v12}, Lcom/sun/prism/es2/ES2TextureResource;->getResource()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/sun/prism/es2/ES2RTTextureData;

    invoke-virtual {v12}, Lcom/sun/prism/es2/ES2RTTextureData;->getFboID()I

    move-result v12

    int-to-long v12, v12

    move v14, v4

    move v15, v5

    sget-object v16, Lcom/sun/prism/PixelFormat;->BYTE_BGRA_PRE:Lcom/sun/prism/PixelFormat;

    .line 60
    invoke-virtual/range {v16 .. v16}, Lcom/sun/prism/PixelFormat;->getBytesPerPixelUnit()I

    move-result v16

    .line 58
    invoke-static/range {v12 .. v16}, Lcom/sun/prism/impl/PrismTrace;->rttCreated(JIII)V

    .line 61
    move-object v12, v0

    const/4 v13, 0x0

    iput-boolean v13, v12, Lcom/sun/prism/es2/ES2RTTexture;->opaque:Z

    .line 62
    return-void
.end method

.method static create(Lcom/sun/prism/es2/ES2Context;IILcom/sun/prism/Texture$WrapMode;Z)Lcom/sun/prism/es2/ES2RTTexture;
    .locals 45

    .prologue
    .line 175
    move-object/from16 v2, p0

    .local v2, "context":Lcom/sun/prism/es2/ES2Context;
    move/from16 v3, p1

    .local v3, "w":I
    move/from16 v4, p2

    .local v4, "h":I
    move-object/from16 v5, p3

    .local v5, "wrapMode":Lcom/sun/prism/Texture$WrapMode;
    move/from16 v6, p4

    .local v6, "msaa":Z
    move-object/from16 v31, v2

    invoke-virtual/range {v31 .. v31}, Lcom/sun/prism/es2/ES2Context;->getGLContext()Lcom/sun/prism/es2/GLContext;

    move-result-object v31

    move-object/from16 v7, v31

    .line 177
    .local v7, "glContext":Lcom/sun/prism/es2/GLContext;
    sget-object v31, Lcom/sun/prism/es2/ES2RTTexture$1;->$SwitchMap$com$sun$prism$Texture$WrapMode:[I

    move-object/from16 v32, v5

    invoke-virtual/range {v32 .. v32}, Lcom/sun/prism/Texture$WrapMode;->ordinal()I

    move-result v32

    aget v31, v31, v32

    packed-switch v31, :pswitch_data_0

    .line 187
    :pswitch_0
    new-instance v31, Ljava/lang/IllegalArgumentException;

    move-object/from16 v44, v31

    move-object/from16 v31, v44

    move-object/from16 v32, v44

    new-instance v33, Ljava/lang/StringBuilder;

    move-object/from16 v44, v33

    move-object/from16 v33, v44

    move-object/from16 v34, v44

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "wrap mode not supported for RT textures: "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v34, v5

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-direct/range {v32 .. v33}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v31

    .line 179
    :pswitch_1
    const/16 v31, 0x0

    move/from16 v8, v31

    .line 196
    .local v8, "pad":Z
    :goto_0
    move/from16 v31, v8

    if-eqz v31, :cond_2

    .line 197
    const/16 v31, 0x1

    move/from16 v9, v31

    .line 198
    .local v9, "contentX":I
    const/16 v31, 0x1

    move/from16 v10, v31

    .line 199
    .local v10, "contentY":I
    move/from16 v31, v3

    const/16 v32, 0x2

    add-int/lit8 v31, v31, 0x2

    move/from16 v11, v31

    .line 200
    .local v11, "paddedW":I
    move/from16 v31, v4

    const/16 v32, 0x2

    add-int/lit8 v31, v31, 0x2

    move/from16 v12, v31

    .line 201
    .local v12, "paddedH":I
    move-object/from16 v31, v5

    invoke-virtual/range {v31 .. v31}, Lcom/sun/prism/Texture$WrapMode;->simulatedVersion()Lcom/sun/prism/Texture$WrapMode;

    move-result-object v31

    move-object/from16 v5, v31

    .line 209
    :goto_1
    move-object/from16 v31, v7

    invoke-virtual/range {v31 .. v31}, Lcom/sun/prism/es2/GLContext;->getMaxTextureSize()I

    move-result v31

    move/from16 v13, v31

    .line 211
    .local v13, "maxSize":I
    move-object/from16 v31, v7

    invoke-virtual/range {v31 .. v31}, Lcom/sun/prism/es2/GLContext;->canCreateNonPowTwoTextures()Z

    move-result v31

    if-eqz v31, :cond_5

    .line 212
    move/from16 v31, v11

    move/from16 v32, v13

    move/from16 v0, v31

    move/from16 v1, v32

    if-gt v0, v1, :cond_3

    move/from16 v31, v11

    :goto_2
    move/from16 v14, v31

    .line 213
    .local v14, "texWidth":I
    move/from16 v31, v12

    move/from16 v32, v13

    move/from16 v0, v31

    move/from16 v1, v32

    if-gt v0, v1, :cond_4

    move/from16 v31, v12

    :goto_3
    move/from16 v15, v31

    .line 219
    .local v15, "texHeight":I
    :goto_4
    move/from16 v31, v14

    if-eqz v31, :cond_0

    move/from16 v31, v15

    if-nez v31, :cond_6

    .line 220
    :cond_0
    new-instance v31, Ljava/lang/RuntimeException;

    move-object/from16 v44, v31

    move-object/from16 v31, v44

    move-object/from16 v32, v44

    new-instance v33, Ljava/lang/StringBuilder;

    move-object/from16 v44, v33

    move-object/from16 v33, v44

    move-object/from16 v34, v44

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "Requested texture dimensions ("

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move/from16 v34, v3

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, "x"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move/from16 v34, v4

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, ") "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, "require dimensions ("

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move/from16 v34, v14

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, "x"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move/from16 v34, v15

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, ") "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, "that exceed maximum texture size ("

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move/from16 v34, v13

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, ")"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-direct/range {v32 .. v33}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v31

    .line 182
    .end local v8    # "pad":Z
    .end local v9    # "contentX":I
    .end local v10    # "contentY":I
    .end local v11    # "paddedW":I
    .end local v12    # "paddedH":I
    .end local v13    # "maxSize":I
    .end local v14    # "texWidth":I
    .end local v15    # "texHeight":I
    :pswitch_2
    move-object/from16 v31, v7

    invoke-virtual/range {v31 .. v31}, Lcom/sun/prism/es2/GLContext;->canClampToZero()Z

    move-result v31

    if-nez v31, :cond_1

    const/16 v31, 0x1

    :goto_5
    move/from16 v8, v31

    .line 183
    .restart local v8    # "pad":Z
    goto/16 :goto_0

    .line 182
    .end local v8    # "pad":Z
    :cond_1
    const/16 v31, 0x0

    goto :goto_5

    .line 191
    :pswitch_3
    new-instance v31, Ljava/lang/IllegalArgumentException;

    move-object/from16 v44, v31

    move-object/from16 v31, v44

    move-object/from16 v32, v44

    new-instance v33, Ljava/lang/StringBuilder;

    move-object/from16 v44, v33

    move-object/from16 v33, v44

    move-object/from16 v34, v44

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "Cannot request simulated wrap mode: "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v34, v5

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-direct/range {v32 .. v33}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v31

    .line 203
    .restart local v8    # "pad":Z
    :cond_2
    const/16 v31, 0x0

    move/from16 v9, v31

    .line 204
    .restart local v9    # "contentX":I
    const/16 v31, 0x0

    move/from16 v10, v31

    .line 205
    .restart local v10    # "contentY":I
    move/from16 v31, v3

    move/from16 v11, v31

    .line 206
    .restart local v11    # "paddedW":I
    move/from16 v31, v4

    move/from16 v12, v31

    .restart local v12    # "paddedH":I
    goto/16 :goto_1

    .line 212
    .restart local v13    # "maxSize":I
    :cond_3
    const/16 v31, 0x0

    goto/16 :goto_2

    .line 213
    .restart local v14    # "texWidth":I
    :cond_4
    const/16 v31, 0x0

    goto/16 :goto_3

    .line 215
    .end local v14    # "texWidth":I
    :cond_5
    move/from16 v31, v11

    move/from16 v32, v13

    invoke-static/range {v31 .. v32}, Lcom/sun/prism/es2/ES2RTTexture;->nextPowerOfTwo(II)I

    move-result v31

    move/from16 v14, v31

    .line 216
    .restart local v14    # "texWidth":I
    move/from16 v31, v12

    move/from16 v32, v13

    invoke-static/range {v31 .. v32}, Lcom/sun/prism/es2/ES2RTTexture;->nextPowerOfTwo(II)I

    move-result v31

    move/from16 v15, v31

    .restart local v15    # "texHeight":I
    goto/16 :goto_4

    .line 227
    :cond_6
    sget v31, Lcom/sun/prism/impl/PrismSettings;->minRTTSize:I

    move/from16 v16, v31

    .line 228
    .local v16, "minSize":I
    move/from16 v31, v14

    move/from16 v32, v16

    invoke-static/range {v31 .. v32}, Ljava/lang/Math;->max(II)I

    move-result v31

    move/from16 v14, v31

    .line 229
    move/from16 v31, v15

    move/from16 v32, v16

    invoke-static/range {v31 .. v32}, Ljava/lang/Math;->max(II)I

    move-result v31

    move/from16 v15, v31

    .line 231
    sget-object v31, Lcom/sun/prism/es2/ES2VramPool;->instance:Lcom/sun/prism/es2/ES2VramPool;

    move-object/from16 v17, v31

    .line 232
    .local v17, "pool":Lcom/sun/prism/es2/ES2VramPool;
    move-object/from16 v31, v17

    move/from16 v32, v14

    move/from16 v33, v15

    const/16 v34, 0x0

    invoke-virtual/range {v31 .. v34}, Lcom/sun/prism/es2/ES2VramPool;->estimateRTTextureSize(IIZ)J

    move-result-wide v31

    move-wide/from16 v18, v31

    .line 233
    .local v18, "size":J
    move-object/from16 v31, v17

    move-wide/from16 v32, v18

    invoke-virtual/range {v31 .. v33}, Lcom/sun/prism/es2/ES2VramPool;->prepareForAllocation(J)Z

    move-result v31

    if-nez v31, :cond_7

    .line 234
    const/16 v31, 0x0

    move-object/from16 v2, v31

    .line 304
    .end local v2    # "context":Lcom/sun/prism/es2/ES2Context;
    :goto_6
    return-object v2

    .line 252
    .restart local v2    # "context":Lcom/sun/prism/es2/ES2Context;
    :cond_7
    move/from16 v31, v8

    if-eqz v31, :cond_c

    .line 253
    move/from16 v31, v14

    const/16 v32, 0x2

    add-int/lit8 v31, v31, -0x2

    move/from16 v22, v31

    .line 254
    .local v22, "maxContentW":I
    move/from16 v31, v15

    const/16 v32, 0x2

    add-int/lit8 v31, v31, -0x2

    move/from16 v23, v31

    .line 255
    .local v23, "maxContentH":I
    move/from16 v31, v3

    move/from16 v20, v31

    .line 256
    .local v20, "contentW":I
    move/from16 v31, v4

    move/from16 v21, v31

    .line 265
    .local v21, "contentH":I
    :goto_7
    move-object/from16 v31, v7

    const/16 v32, 0x0

    invoke-virtual/range {v31 .. v32}, Lcom/sun/prism/es2/GLContext;->setActiveTextureUnit(I)V

    .line 266
    move-object/from16 v31, v7

    invoke-virtual/range {v31 .. v31}, Lcom/sun/prism/es2/GLContext;->getBoundFBO()I

    move-result v31

    move/from16 v24, v31

    .line 267
    .local v24, "savedFBO":I
    move-object/from16 v31, v7

    invoke-virtual/range {v31 .. v31}, Lcom/sun/prism/es2/GLContext;->getBoundTexture()I

    move-result v31

    move/from16 v25, v31

    .line 269
    .local v25, "savedTex":I
    const/16 v31, 0x0

    move/from16 v26, v31

    .line 270
    .local v26, "nativeTexID":I
    move/from16 v31, v6

    if-nez v31, :cond_8

    .line 274
    move-object/from16 v31, v7

    move/from16 v32, v14

    move/from16 v33, v15

    invoke-virtual/range {v31 .. v33}, Lcom/sun/prism/es2/GLContext;->createTexture(II)I

    move-result v31

    move/from16 v26, v31

    .line 277
    :cond_8
    const/16 v31, 0x0

    move/from16 v27, v31

    .line 278
    .local v27, "nativeFBOID":I
    move/from16 v31, v26

    if-nez v31, :cond_9

    move/from16 v31, v6

    if-eqz v31, :cond_a

    .line 281
    :cond_9
    move-object/from16 v31, v7

    move/from16 v32, v26

    invoke-virtual/range {v31 .. v32}, Lcom/sun/prism/es2/GLContext;->createFBO(I)I

    move-result v31

    move/from16 v27, v31

    .line 282
    move/from16 v31, v27

    if-nez v31, :cond_a

    .line 283
    move-object/from16 v31, v7

    move/from16 v32, v26

    invoke-virtual/range {v31 .. v32}, Lcom/sun/prism/es2/GLContext;->deleteTexture(I)V

    .line 284
    const/16 v31, 0x0

    move/from16 v26, v31

    .line 287
    :cond_a
    new-instance v31, Lcom/sun/prism/es2/ES2RTTextureData;

    move-object/from16 v44, v31

    move-object/from16 v31, v44

    move-object/from16 v32, v44

    move-object/from16 v33, v2

    move/from16 v34, v26

    move/from16 v35, v27

    move/from16 v36, v14

    move/from16 v37, v15

    move-wide/from16 v38, v18

    invoke-direct/range {v32 .. v39}, Lcom/sun/prism/es2/ES2RTTextureData;-><init>(Lcom/sun/prism/es2/ES2Context;IIIIJ)V

    move-object/from16 v28, v31

    .line 290
    .local v28, "texData":Lcom/sun/prism/es2/ES2RTTextureData;
    new-instance v31, Lcom/sun/prism/es2/ES2TextureResource;

    move-object/from16 v44, v31

    move-object/from16 v31, v44

    move-object/from16 v32, v44

    move-object/from16 v33, v28

    invoke-direct/range {v32 .. v33}, Lcom/sun/prism/es2/ES2TextureResource;-><init>(Lcom/sun/prism/es2/ES2TextureData;)V

    move-object/from16 v29, v31

    .line 292
    .local v29, "texRes":Lcom/sun/prism/es2/ES2TextureResource;, "Lcom/sun/prism/es2/ES2TextureResource<Lcom/sun/prism/es2/ES2RTTextureData;>;"
    new-instance v31, Lcom/sun/prism/es2/ES2RTTexture;

    move-object/from16 v44, v31

    move-object/from16 v31, v44

    move-object/from16 v32, v44

    move-object/from16 v33, v2

    move-object/from16 v34, v29

    move-object/from16 v35, v5

    move/from16 v36, v14

    move/from16 v37, v15

    move/from16 v38, v9

    move/from16 v39, v10

    move/from16 v40, v20

    move/from16 v41, v21

    move/from16 v42, v22

    move/from16 v43, v23

    invoke-direct/range {v32 .. v43}, Lcom/sun/prism/es2/ES2RTTexture;-><init>(Lcom/sun/prism/es2/ES2Context;Lcom/sun/prism/es2/ES2TextureResource;Lcom/sun/prism/Texture$WrapMode;IIIIIIII)V

    move-object/from16 v30, v31

    .line 297
    .local v30, "es2RTT":Lcom/sun/prism/es2/ES2RTTexture;
    move/from16 v31, v6

    if-eqz v31, :cond_b

    .line 298
    move-object/from16 v31, v30

    move-object/from16 v32, v2

    invoke-direct/range {v31 .. v32}, Lcom/sun/prism/es2/ES2RTTexture;->createAndAttachMSAABuffer(Lcom/sun/prism/es2/ES2Context;)V

    .line 301
    :cond_b
    move-object/from16 v31, v7

    move/from16 v32, v24

    invoke-virtual/range {v31 .. v32}, Lcom/sun/prism/es2/GLContext;->bindFBO(I)V

    .line 303
    move-object/from16 v31, v7

    move/from16 v32, v25

    invoke-virtual/range {v31 .. v32}, Lcom/sun/prism/es2/GLContext;->setBoundTexture(I)V

    .line 304
    move-object/from16 v31, v30

    move-object/from16 v2, v31

    goto/16 :goto_6

    .line 258
    .end local v20    # "contentW":I
    .end local v21    # "contentH":I
    .end local v22    # "maxContentW":I
    .end local v23    # "maxContentH":I
    .end local v24    # "savedFBO":I
    .end local v25    # "savedTex":I
    .end local v26    # "nativeTexID":I
    .end local v27    # "nativeFBOID":I
    .end local v28    # "texData":Lcom/sun/prism/es2/ES2RTTextureData;
    .end local v29    # "texRes":Lcom/sun/prism/es2/ES2TextureResource;, "Lcom/sun/prism/es2/ES2TextureResource<Lcom/sun/prism/es2/ES2RTTextureData;>;"
    .end local v30    # "es2RTT":Lcom/sun/prism/es2/ES2RTTexture;
    :cond_c
    move/from16 v31, v14

    move/from16 v22, v31

    .line 259
    .restart local v22    # "maxContentW":I
    move/from16 v31, v15

    move/from16 v23, v31

    .line 260
    .restart local v23    # "maxContentH":I
    move/from16 v31, v3

    move/from16 v20, v31

    .line 261
    .restart local v20    # "contentW":I
    move/from16 v31, v4

    move/from16 v21, v31

    .restart local v21    # "contentH":I
    goto/16 :goto_7

    .line 177
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method private createAndAttachMSAABuffer(Lcom/sun/prism/es2/ES2Context;)V
    .locals 9

    .prologue
    .line 90
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/ES2RTTexture;
    move-object v1, p1

    .local v1, "context":Lcom/sun/prism/es2/ES2Context;
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/prism/es2/ES2RTTexture;->resource:Lcom/sun/prism/impl/ManagedResource;

    check-cast v5, Lcom/sun/prism/es2/ES2TextureResource;

    invoke-virtual {v5}, Lcom/sun/prism/es2/ES2TextureResource;->getResource()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sun/prism/es2/ES2RTTextureData;

    move-object v2, v5

    .line 91
    .local v2, "texData":Lcom/sun/prism/es2/ES2RTTextureData;
    move-object v5, v2

    invoke-virtual {v5}, Lcom/sun/prism/es2/ES2RTTextureData;->getMSAARenderBufferID()I

    move-result v5

    move v3, v5

    .line 92
    .local v3, "rbID":I
    move v5, v3

    if-eqz v5, :cond_0

    .line 93
    .line 102
    :goto_0
    return-void

    .line 95
    :cond_0
    move-object v5, v1

    invoke-virtual {v5}, Lcom/sun/prism/es2/ES2Context;->getGLContext()Lcom/sun/prism/es2/GLContext;

    move-result-object v5

    move-object v4, v5

    .line 96
    .local v4, "glContext":Lcom/sun/prism/es2/GLContext;
    move-object v5, v4

    move-object v6, v0

    invoke-virtual {v6}, Lcom/sun/prism/es2/ES2RTTexture;->getPhysicalWidth()I

    move-result v6

    move-object v7, v0

    .line 97
    invoke-virtual {v7}, Lcom/sun/prism/es2/ES2RTTexture;->getPhysicalHeight()I

    move-result v7

    move-object v8, v4

    invoke-virtual {v8}, Lcom/sun/prism/es2/GLContext;->getSampleSize()I

    move-result v8

    .line 96
    invoke-virtual {v5, v6, v7, v8}, Lcom/sun/prism/es2/GLContext;->createRenderBuffer(III)I

    move-result v5

    move v3, v5

    .line 101
    move-object v5, v2

    move v6, v3

    invoke-virtual {v5, v6}, Lcom/sun/prism/es2/ES2RTTextureData;->setMSAARenderBufferID(I)V

    .line 102
    goto :goto_0
.end method

.method static getCompatibleDimension(Lcom/sun/prism/es2/ES2Context;ILcom/sun/prism/Texture$WrapMode;)I
    .locals 13

    .prologue
    .line 105
    move-object v0, p0

    .local v0, "context":Lcom/sun/prism/es2/ES2Context;
    move v1, p1

    .local v1, "dim":I
    move-object v2, p2

    .local v2, "wrapMode":Lcom/sun/prism/Texture$WrapMode;
    move-object v8, v0

    invoke-virtual {v8}, Lcom/sun/prism/es2/ES2Context;->getGLContext()Lcom/sun/prism/es2/GLContext;

    move-result-object v8

    move-object v3, v8

    .line 107
    .local v3, "glContext":Lcom/sun/prism/es2/GLContext;
    sget-object v8, Lcom/sun/prism/es2/ES2RTTexture$1;->$SwitchMap$com$sun$prism$Texture$WrapMode:[I

    move-object v9, v2

    invoke-virtual {v9}, Lcom/sun/prism/Texture$WrapMode;->ordinal()I

    move-result v9

    aget v8, v8, v9

    packed-switch v8, :pswitch_data_0

    .line 117
    :pswitch_0
    new-instance v8, Ljava/lang/IllegalArgumentException;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    new-instance v10, Ljava/lang/StringBuilder;

    move-object v12, v10

    move-object v10, v12

    move-object v11, v12

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "wrap mode not supported for RT textures: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object v11, v2

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 109
    :pswitch_1
    const/4 v8, 0x0

    move v4, v8

    .line 124
    .local v4, "pad":Z
    :goto_0
    move v8, v4

    if-eqz v8, :cond_1

    move v8, v1

    const/4 v9, 0x2

    add-int/lit8 v8, v8, 0x2

    :goto_1
    move v5, v8

    .line 126
    .local v5, "paddedDim":I
    move-object v8, v3

    invoke-virtual {v8}, Lcom/sun/prism/es2/GLContext;->getMaxTextureSize()I

    move-result v8

    move v6, v8

    .line 128
    .local v6, "maxSize":I
    move-object v8, v3

    invoke-virtual {v8}, Lcom/sun/prism/es2/GLContext;->canCreateNonPowTwoTextures()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 129
    move v8, v5

    move v9, v6

    if-gt v8, v9, :cond_2

    move v8, v5

    :goto_2
    move v7, v8

    .line 134
    .local v7, "texDim":I
    :goto_3
    move v8, v7

    if-nez v8, :cond_4

    .line 135
    new-instance v8, Ljava/lang/RuntimeException;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    new-instance v10, Ljava/lang/StringBuilder;

    move-object v12, v10

    move-object v10, v12

    move-object v11, v12

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Requested texture dimension ("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move v11, v1

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ") "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "requires dimension ("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move v11, v7

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ") "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "that exceeds maximum texture size ("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move v11, v6

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 112
    .end local v4    # "pad":Z
    .end local v5    # "paddedDim":I
    .end local v6    # "maxSize":I
    .end local v7    # "texDim":I
    :pswitch_2
    move-object v8, v3

    invoke-virtual {v8}, Lcom/sun/prism/es2/GLContext;->canClampToZero()Z

    move-result v8

    if-nez v8, :cond_0

    const/4 v8, 0x1

    :goto_4
    move v4, v8

    .line 113
    .restart local v4    # "pad":Z
    goto :goto_0

    .line 112
    .end local v4    # "pad":Z
    :cond_0
    const/4 v8, 0x0

    goto :goto_4

    .line 121
    :pswitch_3
    new-instance v8, Ljava/lang/IllegalArgumentException;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    new-instance v10, Ljava/lang/StringBuilder;

    move-object v12, v10

    move-object v10, v12

    move-object v11, v12

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Cannot request simulated wrap mode: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object v11, v2

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 124
    .restart local v4    # "pad":Z
    :cond_1
    move v8, v1

    goto/16 :goto_1

    .line 129
    .restart local v5    # "paddedDim":I
    .restart local v6    # "maxSize":I
    :cond_2
    const/4 v8, 0x0

    goto :goto_2

    .line 131
    :cond_3
    move v8, v5

    move v9, v6

    invoke-static {v8, v9}, Lcom/sun/prism/es2/ES2RTTexture;->nextPowerOfTwo(II)I

    move-result v8

    move v7, v8

    .restart local v7    # "texDim":I
    goto/16 :goto_3

    .line 142
    :cond_4
    move v8, v7

    sget v9, Lcom/sun/prism/impl/PrismSettings;->minRTTSize:I

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    move v7, v8

    .line 156
    move v8, v4

    if-eqz v8, :cond_5

    move v8, v7

    const/4 v9, 0x2

    add-int/lit8 v8, v8, -0x2

    :goto_5
    move v0, v8

    .end local v0    # "context":Lcom/sun/prism/es2/ES2Context;
    return v0

    .restart local v0    # "context":Lcom/sun/prism/es2/ES2Context;
    :cond_5
    move v8, v7

    goto :goto_5

    .line 107
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method attachDepthBuffer(Lcom/sun/prism/es2/ES2Context;)V
    .locals 9

    .prologue
    .line 70
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/ES2RTTexture;
    move-object v1, p1

    .local v1, "context":Lcom/sun/prism/es2/ES2Context;
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/prism/es2/ES2RTTexture;->resource:Lcom/sun/prism/impl/ManagedResource;

    check-cast v5, Lcom/sun/prism/es2/ES2TextureResource;

    invoke-virtual {v5}, Lcom/sun/prism/es2/ES2TextureResource;->getResource()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sun/prism/es2/ES2RTTextureData;

    move-object v2, v5

    .line 71
    .local v2, "texData":Lcom/sun/prism/es2/ES2RTTextureData;
    move-object v5, v2

    invoke-virtual {v5}, Lcom/sun/prism/es2/ES2RTTextureData;->getDepthBufferID()I

    move-result v5

    move v3, v5

    .line 72
    .local v3, "dbID":I
    move v5, v3

    if-eqz v5, :cond_0

    .line 73
    .line 82
    :goto_0
    return-void

    .line 75
    :cond_0
    move-object v5, v0

    invoke-virtual {v5}, Lcom/sun/prism/es2/ES2RTTexture;->isMSAA()Z

    move-result v5

    if-eqz v5, :cond_1

    move-object v5, v1

    invoke-virtual {v5}, Lcom/sun/prism/es2/ES2Context;->getGLContext()Lcom/sun/prism/es2/GLContext;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sun/prism/es2/GLContext;->getSampleSize()I

    move-result v5

    :goto_1
    move v4, v5

    .line 76
    .local v4, "msaaSamples":I
    move-object v5, v1

    invoke-virtual {v5}, Lcom/sun/prism/es2/ES2Context;->getGLContext()Lcom/sun/prism/es2/GLContext;

    move-result-object v5

    move-object v6, v0

    invoke-virtual {v6}, Lcom/sun/prism/es2/ES2RTTexture;->getPhysicalWidth()I

    move-result v6

    move-object v7, v0

    .line 77
    invoke-virtual {v7}, Lcom/sun/prism/es2/ES2RTTexture;->getPhysicalHeight()I

    move-result v7

    move v8, v4

    .line 76
    invoke-virtual {v5, v6, v7, v8}, Lcom/sun/prism/es2/GLContext;->createDepthBuffer(III)I

    move-result v5

    move v3, v5

    .line 81
    move-object v5, v2

    move v6, v3

    invoke-virtual {v5, v6}, Lcom/sun/prism/es2/ES2RTTextureData;->setDepthBufferID(I)V

    .line 82
    goto :goto_0

    .line 75
    .end local v4    # "msaaSamples":I
    :cond_1
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public createGraphics()Lcom/sun/prism/Graphics;
    .locals 3

    .prologue
    .line 312
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/ES2RTTexture;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/prism/es2/ES2RTTexture;->context:Lcom/sun/prism/es2/ES2Context;

    move-object v2, v0

    invoke-static {v1, v2}, Lcom/sun/prism/es2/ES2Graphics;->create(Lcom/sun/prism/es2/ES2Context;Lcom/sun/prism/RenderTarget;)Lcom/sun/prism/es2/ES2Graphics;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/prism/es2/ES2RTTexture;
    return-object v0
.end method

.method public getAssociatedScreen()Lcom/sun/glass/ui/Screen;
    .locals 2

    .prologue
    .line 345
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/ES2RTTexture;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/prism/es2/ES2RTTexture;->context:Lcom/sun/prism/es2/ES2Context;

    invoke-virtual {v1}, Lcom/sun/prism/es2/ES2Context;->getAssociatedScreen()Lcom/sun/glass/ui/Screen;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/prism/es2/ES2RTTexture;
    return-object v0
.end method

.method public getBackBuffer()Lcom/sun/prism/Texture;
    .locals 2

    .prologue
    .line 308
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/ES2RTTexture;
    move-object v1, v0

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/prism/es2/ES2RTTexture;
    return-object v0
.end method

.method public getFboID()I
    .locals 2

    .prologue
    .line 341
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/ES2RTTexture;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/prism/es2/ES2RTTexture;->resource:Lcom/sun/prism/impl/ManagedResource;

    check-cast v1, Lcom/sun/prism/es2/ES2TextureResource;

    invoke-virtual {v1}, Lcom/sun/prism/es2/ES2TextureResource;->getResource()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/prism/es2/ES2RTTextureData;

    invoke-virtual {v1}, Lcom/sun/prism/es2/ES2RTTextureData;->getFboID()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/prism/es2/ES2RTTexture;
    return v0
.end method

.method public getPixels()[I
    .locals 2

    .prologue
    .line 316
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/ES2RTTexture;
    const/4 v1, 0x0

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/prism/es2/ES2RTTexture;
    return-object v0
.end method

.method public isMSAA()Z
    .locals 2

    .prologue
    .line 389
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/ES2RTTexture;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/prism/es2/ES2RTTexture;->resource:Lcom/sun/prism/impl/ManagedResource;

    check-cast v1, Lcom/sun/prism/es2/ES2TextureResource;

    invoke-virtual {v1}, Lcom/sun/prism/es2/ES2TextureResource;->getResource()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/prism/es2/ES2RTTextureData;

    invoke-virtual {v1}, Lcom/sun/prism/es2/ES2RTTextureData;->getMSAARenderBufferID()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/sun/prism/es2/ES2RTTexture;
    return v0

    .restart local v0    # "this":Lcom/sun/prism/es2/ES2RTTexture;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isOpaque()Z
    .locals 2

    .prologue
    .line 377
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/ES2RTTexture;
    move-object v1, v0

    iget-boolean v1, v1, Lcom/sun/prism/es2/ES2RTTexture;->opaque:Z

    move v0, v1

    .end local v0    # "this":Lcom/sun/prism/es2/ES2RTTexture;
    return v0
.end method

.method public isVolatile()Z
    .locals 2

    .prologue
    .line 385
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/ES2RTTexture;
    const/4 v1, 0x0

    move v0, v1

    .end local v0    # "this":Lcom/sun/prism/es2/ES2RTTexture;
    return v0
.end method

.method public readPixels(Ljava/nio/Buffer;)Z
    .locals 8

    .prologue
    .line 336
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/ES2RTTexture;
    move-object v1, p1

    .local v1, "pixels":Ljava/nio/Buffer;
    move-object v2, v0

    move-object v3, v1

    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/prism/es2/ES2RTTexture;->getContentX()I

    move-result v4

    move-object v5, v0

    invoke-virtual {v5}, Lcom/sun/prism/es2/ES2RTTexture;->getContentY()I

    move-result v5

    move-object v6, v0

    .line 337
    invoke-virtual {v6}, Lcom/sun/prism/es2/ES2RTTexture;->getContentWidth()I

    move-result v6

    move-object v7, v0

    invoke-virtual {v7}, Lcom/sun/prism/es2/ES2RTTexture;->getContentHeight()I

    move-result v7

    .line 336
    invoke-virtual/range {v2 .. v7}, Lcom/sun/prism/es2/ES2RTTexture;->readPixels(Ljava/nio/Buffer;IIII)Z

    move-result v2

    move v0, v2

    .end local v0    # "this":Lcom/sun/prism/es2/ES2RTTexture;
    return v0
.end method

.method public readPixels(Ljava/nio/Buffer;IIII)Z
    .locals 17

    .prologue
    .line 320
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/prism/es2/ES2RTTexture;
    move-object/from16 v1, p1

    .local v1, "pixels":Ljava/nio/Buffer;
    move/from16 v2, p2

    .local v2, "x":I
    move/from16 v3, p3

    .local v3, "y":I
    move/from16 v4, p4

    .local v4, "width":I
    move/from16 v5, p5

    .local v5, "height":I
    move-object v11, v0

    iget-object v11, v11, Lcom/sun/prism/es2/ES2RTTexture;->context:Lcom/sun/prism/es2/ES2Context;

    invoke-virtual {v11}, Lcom/sun/prism/es2/ES2Context;->flushVertexBuffer()V

    .line 321
    move-object v11, v0

    iget-object v11, v11, Lcom/sun/prism/es2/ES2RTTexture;->context:Lcom/sun/prism/es2/ES2Context;

    invoke-virtual {v11}, Lcom/sun/prism/es2/ES2Context;->getGLContext()Lcom/sun/prism/es2/GLContext;

    move-result-object v11

    move-object v6, v11

    .line 322
    .local v6, "glContext":Lcom/sun/prism/es2/GLContext;
    move-object v11, v6

    invoke-virtual {v11}, Lcom/sun/prism/es2/GLContext;->getBoundFBO()I

    move-result v11

    move v7, v11

    .line 323
    .local v7, "id":I
    move-object v11, v0

    invoke-virtual {v11}, Lcom/sun/prism/es2/ES2RTTexture;->getFboID()I

    move-result v11

    move v8, v11

    .line 324
    .local v8, "fboID":I
    move v11, v7

    move v12, v8

    if-eq v11, v12, :cond_2

    const/4 v11, 0x1

    :goto_0
    move v9, v11

    .line 325
    .local v9, "changeBoundFBO":Z
    move v11, v9

    if-eqz v11, :cond_0

    .line 326
    move-object v11, v6

    move v12, v8

    invoke-virtual {v11, v12}, Lcom/sun/prism/es2/GLContext;->bindFBO(I)V

    .line 328
    :cond_0
    move-object v11, v6

    move-object v12, v1

    move v13, v2

    move v14, v3

    move v15, v4

    move/from16 v16, v5

    invoke-virtual/range {v11 .. v16}, Lcom/sun/prism/es2/GLContext;->readPixels(Ljava/nio/Buffer;IIII)Z

    move-result v11

    move v10, v11

    .line 329
    .local v10, "result":Z
    move v11, v9

    if-eqz v11, :cond_1

    .line 330
    move-object v11, v6

    move v12, v7

    invoke-virtual {v11, v12}, Lcom/sun/prism/es2/GLContext;->bindFBO(I)V

    .line 332
    :cond_1
    move v11, v10

    move v0, v11

    .end local v0    # "this":Lcom/sun/prism/es2/ES2RTTexture;
    return v0

    .line 324
    .end local v9    # "changeBoundFBO":Z
    .end local v10    # "result":Z
    .restart local v0    # "this":Lcom/sun/prism/es2/ES2RTTexture;
    :cond_2
    const/4 v11, 0x0

    goto :goto_0
.end method

.method public setOpaque(Z)V
    .locals 4

    .prologue
    .line 381
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/ES2RTTexture;
    move v1, p1

    .local v1, "opaque":Z
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/sun/prism/es2/ES2RTTexture;->opaque:Z

    .line 382
    return-void
.end method

.method public update(Lcom/sun/prism/Image;)V
    .locals 6

    .prologue
    .line 350
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/ES2RTTexture;
    move-object v1, p1

    .local v1, "img":Lcom/sun/prism/Image;
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "update() not supported for RTTextures"

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public update(Lcom/sun/prism/Image;II)V
    .locals 8

    .prologue
    .line 355
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/ES2RTTexture;
    move-object v1, p1

    .local v1, "img":Lcom/sun/prism/Image;
    move v2, p2

    .local v2, "dstx":I
    move v3, p3

    .local v3, "dsty":I
    new-instance v4, Ljava/lang/UnsupportedOperationException;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    const-string v6, "update() not supported for RTTextures"

    invoke-direct {v5, v6}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public update(Lcom/sun/prism/Image;IIII)V
    .locals 10

    .prologue
    .line 360
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/ES2RTTexture;
    move-object v1, p1

    .local v1, "img":Lcom/sun/prism/Image;
    move v2, p2

    .local v2, "dstx":I
    move v3, p3

    .local v3, "dsty":I
    move v4, p4

    .local v4, "w":I
    move v5, p5

    .local v5, "h":I
    new-instance v6, Ljava/lang/UnsupportedOperationException;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    const-string v8, "update() not supported for RTTextures"

    invoke-direct {v7, v8}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method public update(Lcom/sun/prism/Image;IIIIZ)V
    .locals 11

    .prologue
    .line 365
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/ES2RTTexture;
    move-object v1, p1

    .local v1, "img":Lcom/sun/prism/Image;
    move v2, p2

    .local v2, "dstx":I
    move v3, p3

    .local v3, "dsty":I
    move v4, p4

    .local v4, "w":I
    move/from16 v5, p5

    .local v5, "h":I
    move/from16 v6, p6

    .local v6, "skipFlush":Z
    new-instance v7, Ljava/lang/UnsupportedOperationException;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    const-string v9, "update() not supported for RTTextures"

    invoke-direct {v8, v9}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v7
.end method

.method public update(Ljava/nio/Buffer;Lcom/sun/prism/PixelFormat;IIIIIIIZ)V
    .locals 15

    .prologue
    .line 373
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/ES2RTTexture;
    move-object/from16 v1, p1

    .local v1, "pixels":Ljava/nio/Buffer;
    move-object/from16 v2, p2

    .local v2, "format":Lcom/sun/prism/PixelFormat;
    move/from16 v3, p3

    .local v3, "dstx":I
    move/from16 v4, p4

    .local v4, "dsty":I
    move/from16 v5, p5

    .local v5, "srcx":I
    move/from16 v6, p6

    .local v6, "srcy":I
    move/from16 v7, p7

    .local v7, "srcw":I
    move/from16 v8, p8

    .local v8, "srch":I
    move/from16 v9, p9

    .local v9, "srcscan":I
    move/from16 v10, p10

    .local v10, "skipFlush":Z
    new-instance v11, Ljava/lang/UnsupportedOperationException;

    move-object v14, v11

    move-object v11, v14

    move-object v12, v14

    const-string v13, "update() not supported for RTTextures"

    invoke-direct {v12, v13}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v11
.end method
