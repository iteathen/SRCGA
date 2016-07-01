.class Lcom/sun/javafx/sg/prism/NGCanvas$RenderBuf;
.super Ljava/lang/Object;
.source "NGCanvas.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/sg/prism/NGCanvas;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RenderBuf"
.end annotation


# instance fields
.field g:Lcom/sun/prism/Graphics;

.field final init_type:Lcom/sun/javafx/sg/prism/NGCanvas$InitType;

.field input:Lcom/sun/javafx/sg/prism/NGCanvas$EffectInput;

.field private savedPixelData:Lcom/sun/javafx/sg/prism/NGCanvas$PixelData;

.field tex:Lcom/sun/prism/RTTexture;


# direct methods
.method public constructor <init>(Lcom/sun/javafx/sg/prism/NGCanvas$InitType;)V
    .locals 4

    .prologue
    .line 181
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGCanvas$RenderBuf;
    move-object v1, p1

    .local v1, "init_type":Lcom/sun/javafx/sg/prism/NGCanvas$InitType;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 179
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/sun/javafx/sg/prism/NGCanvas$RenderBuf;->savedPixelData:Lcom/sun/javafx/sg/prism/NGCanvas$PixelData;

    .line 182
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/sg/prism/NGCanvas$RenderBuf;->init_type:Lcom/sun/javafx/sg/prism/NGCanvas$InitType;

    .line 183
    return-void
.end method

.method static synthetic access$600(Lcom/sun/javafx/sg/prism/NGCanvas$RenderBuf;)Lcom/sun/javafx/sg/prism/NGCanvas$PixelData;
    .locals 2

    .prologue
    .line 174
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/sg/prism/NGCanvas$RenderBuf;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/sg/prism/NGCanvas$RenderBuf;->savedPixelData:Lcom/sun/javafx/sg/prism/NGCanvas$PixelData;

    move-object v0, v1

    .end local v0    # "x0":Lcom/sun/javafx/sg/prism/NGCanvas$RenderBuf;
    return-object v0
.end method

.method static synthetic access$700(Lcom/sun/javafx/sg/prism/NGCanvas$RenderBuf;II)V
    .locals 6

    .prologue
    .line 174
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/sg/prism/NGCanvas$RenderBuf;
    move v1, p1

    .local v1, "x1":I
    move v2, p2

    .local v2, "x2":I
    move-object v3, v0

    move v4, v1

    move v5, v2

    invoke-direct {v3, v4, v5}, Lcom/sun/javafx/sg/prism/NGCanvas$RenderBuf;->save(II)V

    return-void
.end method

.method private save(II)V
    .locals 10

    .prologue
    .line 263
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGCanvas$RenderBuf;
    move v1, p1

    .local v1, "tw":I
    move v2, p2

    .local v2, "th":I
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/sg/prism/NGCanvas$RenderBuf;->tex:Lcom/sun/prism/RTTexture;

    invoke-interface {v3}, Lcom/sun/prism/RTTexture;->isVolatile()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 264
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/sg/prism/NGCanvas$RenderBuf;->savedPixelData:Lcom/sun/javafx/sg/prism/NGCanvas$PixelData;

    if-nez v3, :cond_0

    .line 265
    move-object v3, v0

    new-instance v4, Lcom/sun/javafx/sg/prism/NGCanvas$PixelData;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move v6, v1

    move v7, v2

    const/4 v8, 0x0

    invoke-direct {v5, v6, v7, v8}, Lcom/sun/javafx/sg/prism/NGCanvas$PixelData;-><init>(IILcom/sun/javafx/sg/prism/NGCanvas$1;)V

    iput-object v4, v3, Lcom/sun/javafx/sg/prism/NGCanvas$RenderBuf;->savedPixelData:Lcom/sun/javafx/sg/prism/NGCanvas$PixelData;

    .line 267
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/sg/prism/NGCanvas$RenderBuf;->savedPixelData:Lcom/sun/javafx/sg/prism/NGCanvas$PixelData;

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/sg/prism/NGCanvas$RenderBuf;->tex:Lcom/sun/prism/RTTexture;

    invoke-static {v3, v4}, Lcom/sun/javafx/sg/prism/NGCanvas$PixelData;->access$200(Lcom/sun/javafx/sg/prism/NGCanvas$PixelData;Lcom/sun/prism/RTTexture;)V

    .line 269
    :cond_1
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 3

    .prologue
    .line 186
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGCanvas$RenderBuf;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/sg/prism/NGCanvas$RenderBuf;->tex:Lcom/sun/prism/RTTexture;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/sg/prism/NGCanvas$RenderBuf;->tex:Lcom/sun/prism/RTTexture;

    invoke-interface {v1}, Lcom/sun/prism/RTTexture;->dispose()V

    .line 188
    :cond_0
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/sun/javafx/sg/prism/NGCanvas$RenderBuf;->tex:Lcom/sun/prism/RTTexture;

    .line 189
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/sun/javafx/sg/prism/NGCanvas$RenderBuf;->g:Lcom/sun/prism/Graphics;

    .line 190
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/sun/javafx/sg/prism/NGCanvas$RenderBuf;->input:Lcom/sun/javafx/sg/prism/NGCanvas$EffectInput;

    .line 191
    return-void
.end method

.method public validate(Lcom/sun/prism/Graphics;II)Z
    .locals 17

    .prologue
    .line 196
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGCanvas$RenderBuf;
    move-object/from16 v1, p1

    .local v1, "resg":Lcom/sun/prism/Graphics;
    move/from16 v2, p2

    .local v2, "tw":I
    move/from16 v3, p3

    .local v3, "th":I
    move-object v10, v0

    iget-object v10, v10, Lcom/sun/javafx/sg/prism/NGCanvas$RenderBuf;->tex:Lcom/sun/prism/RTTexture;

    if-nez v10, :cond_4

    .line 197
    const/4 v10, 0x0

    move/from16 v16, v10

    move/from16 v10, v16

    move/from16 v11, v16

    move v5, v11

    .local v5, "ch":I
    move v4, v10

    .line 198
    .local v4, "cw":I
    const/4 v10, 0x1

    move v6, v10

    .line 205
    .local v6, "create":Z
    :goto_0
    move v10, v6

    if-eqz v10, :cond_9

    .line 206
    move-object v10, v0

    iget-object v10, v10, Lcom/sun/javafx/sg/prism/NGCanvas$RenderBuf;->tex:Lcom/sun/prism/RTTexture;

    move-object v7, v10

    .line 207
    .local v7, "oldtex":Lcom/sun/prism/RTTexture;
    move-object v10, v1

    if-nez v10, :cond_7

    .line 208
    invoke-static {}, Lcom/sun/prism/GraphicsPipeline;->getDefaultResourceFactory()Lcom/sun/prism/ResourceFactory;

    move-result-object v10

    .line 209
    :goto_1
    move-object v8, v10

    .line 210
    .local v8, "factory":Lcom/sun/prism/ResourceFactory;
    move-object v10, v8

    move v11, v2

    move v12, v3

    sget-object v13, Lcom/sun/prism/Texture$WrapMode;->CLAMP_TO_ZERO:Lcom/sun/prism/Texture$WrapMode;

    .line 211
    invoke-interface {v10, v11, v12, v13}, Lcom/sun/prism/ResourceFactory;->createRTTexture(IILcom/sun/prism/Texture$WrapMode;)Lcom/sun/prism/RTTexture;

    move-result-object v10

    move-object v9, v10

    .line 212
    .local v9, "newtex":Lcom/sun/prism/RTTexture;
    move-object v10, v0

    move-object v11, v9

    iput-object v11, v10, Lcom/sun/javafx/sg/prism/NGCanvas$RenderBuf;->tex:Lcom/sun/prism/RTTexture;

    .line 213
    move-object v10, v0

    move-object v11, v9

    invoke-interface {v11}, Lcom/sun/prism/RTTexture;->createGraphics()Lcom/sun/prism/Graphics;

    move-result-object v11

    iput-object v11, v10, Lcom/sun/javafx/sg/prism/NGCanvas$RenderBuf;->g:Lcom/sun/prism/Graphics;

    .line 214
    move-object v10, v0

    new-instance v11, Lcom/sun/javafx/sg/prism/NGCanvas$EffectInput;

    move-object/from16 v16, v11

    move-object/from16 v11, v16

    move-object/from16 v12, v16

    move-object v13, v9

    invoke-direct {v12, v13}, Lcom/sun/javafx/sg/prism/NGCanvas$EffectInput;-><init>(Lcom/sun/prism/RTTexture;)V

    iput-object v11, v10, Lcom/sun/javafx/sg/prism/NGCanvas$RenderBuf;->input:Lcom/sun/javafx/sg/prism/NGCanvas$EffectInput;

    .line 215
    move-object v10, v7

    if-eqz v10, :cond_2

    .line 216
    move-object v10, v0

    iget-object v10, v10, Lcom/sun/javafx/sg/prism/NGCanvas$RenderBuf;->init_type:Lcom/sun/javafx/sg/prism/NGCanvas$InitType;

    sget-object v11, Lcom/sun/javafx/sg/prism/NGCanvas$InitType;->PRESERVE_UPPER_LEFT:Lcom/sun/javafx/sg/prism/NGCanvas$InitType;

    if-ne v10, v11, :cond_1

    .line 217
    move-object v10, v0

    iget-object v10, v10, Lcom/sun/javafx/sg/prism/NGCanvas$RenderBuf;->g:Lcom/sun/prism/Graphics;

    sget-object v11, Lcom/sun/prism/CompositeMode;->SRC:Lcom/sun/prism/CompositeMode;

    invoke-interface {v10, v11}, Lcom/sun/prism/Graphics;->setCompositeMode(Lcom/sun/prism/CompositeMode;)V

    .line 218
    move-object v10, v7

    invoke-interface {v10}, Lcom/sun/prism/RTTexture;->isSurfaceLost()Z

    move-result v10

    if-eqz v10, :cond_8

    .line 219
    move-object v10, v0

    iget-object v10, v10, Lcom/sun/javafx/sg/prism/NGCanvas$RenderBuf;->savedPixelData:Lcom/sun/javafx/sg/prism/NGCanvas$PixelData;

    if-eqz v10, :cond_0

    .line 220
    move-object v10, v0

    iget-object v10, v10, Lcom/sun/javafx/sg/prism/NGCanvas$RenderBuf;->savedPixelData:Lcom/sun/javafx/sg/prism/NGCanvas$PixelData;

    move-object v11, v0

    iget-object v11, v11, Lcom/sun/javafx/sg/prism/NGCanvas$RenderBuf;->g:Lcom/sun/prism/Graphics;

    move v12, v4

    move v13, v5

    invoke-static {v10, v11, v12, v13}, Lcom/sun/javafx/sg/prism/NGCanvas$PixelData;->access$000(Lcom/sun/javafx/sg/prism/NGCanvas$PixelData;Lcom/sun/prism/Graphics;II)V

    .line 225
    :cond_0
    :goto_2
    move-object v10, v0

    iget-object v10, v10, Lcom/sun/javafx/sg/prism/NGCanvas$RenderBuf;->g:Lcom/sun/prism/Graphics;

    sget-object v11, Lcom/sun/prism/CompositeMode;->SRC_OVER:Lcom/sun/prism/CompositeMode;

    invoke-interface {v10, v11}, Lcom/sun/prism/Graphics;->setCompositeMode(Lcom/sun/prism/CompositeMode;)V

    .line 227
    :cond_1
    move-object v10, v7

    invoke-interface {v10}, Lcom/sun/prism/RTTexture;->unlock()V

    .line 228
    move-object v10, v7

    invoke-interface {v10}, Lcom/sun/prism/RTTexture;->dispose()V

    .line 230
    :cond_2
    move-object v10, v0

    iget-object v10, v10, Lcom/sun/javafx/sg/prism/NGCanvas$RenderBuf;->init_type:Lcom/sun/javafx/sg/prism/NGCanvas$InitType;

    sget-object v11, Lcom/sun/javafx/sg/prism/NGCanvas$InitType;->FILL_WHITE:Lcom/sun/javafx/sg/prism/NGCanvas$InitType;

    if-ne v10, v11, :cond_3

    .line 231
    move-object v10, v0

    iget-object v10, v10, Lcom/sun/javafx/sg/prism/NGCanvas$RenderBuf;->g:Lcom/sun/prism/Graphics;

    sget-object v11, Lcom/sun/prism/paint/Color;->WHITE:Lcom/sun/prism/paint/Color;

    invoke-interface {v10, v11}, Lcom/sun/prism/Graphics;->clear(Lcom/sun/prism/paint/Color;)V

    .line 233
    :cond_3
    const/4 v10, 0x1

    move v0, v10

    .line 259
    .end local v0    # "this":Lcom/sun/javafx/sg/prism/NGCanvas$RenderBuf;
    .end local v7    # "oldtex":Lcom/sun/prism/RTTexture;
    .end local v8    # "factory":Lcom/sun/prism/ResourceFactory;
    .end local v9    # "newtex":Lcom/sun/prism/RTTexture;
    :goto_3
    return v0

    .line 200
    .end local v4    # "cw":I
    .end local v5    # "ch":I
    .end local v6    # "create":Z
    .restart local v0    # "this":Lcom/sun/javafx/sg/prism/NGCanvas$RenderBuf;
    :cond_4
    move-object v10, v0

    iget-object v10, v10, Lcom/sun/javafx/sg/prism/NGCanvas$RenderBuf;->tex:Lcom/sun/prism/RTTexture;

    invoke-interface {v10}, Lcom/sun/prism/RTTexture;->getContentWidth()I

    move-result v10

    move v4, v10

    .line 201
    .restart local v4    # "cw":I
    move-object v10, v0

    iget-object v10, v10, Lcom/sun/javafx/sg/prism/NGCanvas$RenderBuf;->tex:Lcom/sun/prism/RTTexture;

    invoke-interface {v10}, Lcom/sun/prism/RTTexture;->getContentHeight()I

    move-result v10

    move v5, v10

    .line 202
    .restart local v5    # "ch":I
    move-object v10, v0

    iget-object v10, v10, Lcom/sun/javafx/sg/prism/NGCanvas$RenderBuf;->tex:Lcom/sun/prism/RTTexture;

    invoke-interface {v10}, Lcom/sun/prism/RTTexture;->lock()V

    .line 203
    move-object v10, v0

    iget-object v10, v10, Lcom/sun/javafx/sg/prism/NGCanvas$RenderBuf;->tex:Lcom/sun/prism/RTTexture;

    invoke-interface {v10}, Lcom/sun/prism/RTTexture;->isSurfaceLost()Z

    move-result v10

    if-nez v10, :cond_5

    move v10, v4

    move v11, v2

    if-lt v10, v11, :cond_5

    move v10, v5

    move v11, v3

    if-ge v10, v11, :cond_6

    :cond_5
    const/4 v10, 0x1

    :goto_4
    move v6, v10

    .restart local v6    # "create":Z
    goto/16 :goto_0

    .end local v6    # "create":Z
    :cond_6
    const/4 v10, 0x0

    goto :goto_4

    .line 208
    .restart local v6    # "create":Z
    .restart local v7    # "oldtex":Lcom/sun/prism/RTTexture;
    :cond_7
    move-object v10, v1

    .line 209
    invoke-interface {v10}, Lcom/sun/prism/Graphics;->getResourceFactory()Lcom/sun/prism/ResourceFactory;

    move-result-object v10

    goto/16 :goto_1

    .line 223
    .restart local v8    # "factory":Lcom/sun/prism/ResourceFactory;
    .restart local v9    # "newtex":Lcom/sun/prism/RTTexture;
    :cond_8
    move-object v10, v0

    iget-object v10, v10, Lcom/sun/javafx/sg/prism/NGCanvas$RenderBuf;->g:Lcom/sun/prism/Graphics;

    move-object v11, v7

    const/4 v12, 0x0

    const/4 v13, 0x0

    move v14, v4

    int-to-float v14, v14

    move v15, v5

    int-to-float v15, v15

    invoke-interface/range {v10 .. v15}, Lcom/sun/prism/Graphics;->drawTexture(Lcom/sun/prism/Texture;FFFF)V

    goto :goto_2

    .line 235
    .end local v7    # "oldtex":Lcom/sun/prism/RTTexture;
    .end local v8    # "factory":Lcom/sun/prism/ResourceFactory;
    .end local v9    # "newtex":Lcom/sun/prism/RTTexture;
    :cond_9
    move-object v10, v0

    iget-object v10, v10, Lcom/sun/javafx/sg/prism/NGCanvas$RenderBuf;->g:Lcom/sun/prism/Graphics;

    if-nez v10, :cond_d

    .line 236
    move-object v10, v0

    move-object v11, v0

    iget-object v11, v11, Lcom/sun/javafx/sg/prism/NGCanvas$RenderBuf;->tex:Lcom/sun/prism/RTTexture;

    invoke-interface {v11}, Lcom/sun/prism/RTTexture;->createGraphics()Lcom/sun/prism/Graphics;

    move-result-object v11

    iput-object v11, v10, Lcom/sun/javafx/sg/prism/NGCanvas$RenderBuf;->g:Lcom/sun/prism/Graphics;

    .line 237
    move-object v10, v0

    iget-object v10, v10, Lcom/sun/javafx/sg/prism/NGCanvas$RenderBuf;->g:Lcom/sun/prism/Graphics;

    if-nez v10, :cond_d

    .line 238
    move-object v10, v0

    iget-object v10, v10, Lcom/sun/javafx/sg/prism/NGCanvas$RenderBuf;->tex:Lcom/sun/prism/RTTexture;

    invoke-interface {v10}, Lcom/sun/prism/RTTexture;->dispose()V

    .line 239
    move-object v10, v1

    if-nez v10, :cond_b

    .line 240
    invoke-static {}, Lcom/sun/prism/GraphicsPipeline;->getDefaultResourceFactory()Lcom/sun/prism/ResourceFactory;

    move-result-object v10

    .line 241
    :goto_5
    move-object v7, v10

    .line 242
    .local v7, "factory":Lcom/sun/prism/ResourceFactory;
    move-object v10, v0

    move-object v11, v7

    move v12, v2

    move v13, v3

    sget-object v14, Lcom/sun/prism/Texture$WrapMode;->CLAMP_TO_ZERO:Lcom/sun/prism/Texture$WrapMode;

    invoke-interface {v11, v12, v13, v14}, Lcom/sun/prism/ResourceFactory;->createRTTexture(IILcom/sun/prism/Texture$WrapMode;)Lcom/sun/prism/RTTexture;

    move-result-object v11

    iput-object v11, v10, Lcom/sun/javafx/sg/prism/NGCanvas$RenderBuf;->tex:Lcom/sun/prism/RTTexture;

    .line 243
    move-object v10, v0

    move-object v11, v0

    iget-object v11, v11, Lcom/sun/javafx/sg/prism/NGCanvas$RenderBuf;->tex:Lcom/sun/prism/RTTexture;

    invoke-interface {v11}, Lcom/sun/prism/RTTexture;->createGraphics()Lcom/sun/prism/Graphics;

    move-result-object v11

    iput-object v11, v10, Lcom/sun/javafx/sg/prism/NGCanvas$RenderBuf;->g:Lcom/sun/prism/Graphics;

    .line 244
    move-object v10, v0

    new-instance v11, Lcom/sun/javafx/sg/prism/NGCanvas$EffectInput;

    move-object/from16 v16, v11

    move-object/from16 v11, v16

    move-object/from16 v12, v16

    move-object v13, v0

    iget-object v13, v13, Lcom/sun/javafx/sg/prism/NGCanvas$RenderBuf;->tex:Lcom/sun/prism/RTTexture;

    invoke-direct {v12, v13}, Lcom/sun/javafx/sg/prism/NGCanvas$EffectInput;-><init>(Lcom/sun/prism/RTTexture;)V

    iput-object v11, v10, Lcom/sun/javafx/sg/prism/NGCanvas$RenderBuf;->input:Lcom/sun/javafx/sg/prism/NGCanvas$EffectInput;

    .line 245
    move-object v10, v0

    iget-object v10, v10, Lcom/sun/javafx/sg/prism/NGCanvas$RenderBuf;->savedPixelData:Lcom/sun/javafx/sg/prism/NGCanvas$PixelData;

    if-eqz v10, :cond_c

    .line 246
    move-object v10, v0

    iget-object v10, v10, Lcom/sun/javafx/sg/prism/NGCanvas$RenderBuf;->g:Lcom/sun/prism/Graphics;

    sget-object v11, Lcom/sun/prism/CompositeMode;->SRC:Lcom/sun/prism/CompositeMode;

    invoke-interface {v10, v11}, Lcom/sun/prism/Graphics;->setCompositeMode(Lcom/sun/prism/CompositeMode;)V

    .line 247
    move-object v10, v0

    iget-object v10, v10, Lcom/sun/javafx/sg/prism/NGCanvas$RenderBuf;->savedPixelData:Lcom/sun/javafx/sg/prism/NGCanvas$PixelData;

    move-object v11, v0

    iget-object v11, v11, Lcom/sun/javafx/sg/prism/NGCanvas$RenderBuf;->g:Lcom/sun/prism/Graphics;

    move v12, v2

    move v13, v3

    invoke-static {v10, v11, v12, v13}, Lcom/sun/javafx/sg/prism/NGCanvas$PixelData;->access$000(Lcom/sun/javafx/sg/prism/NGCanvas$PixelData;Lcom/sun/prism/Graphics;II)V

    .line 248
    move-object v10, v0

    iget-object v10, v10, Lcom/sun/javafx/sg/prism/NGCanvas$RenderBuf;->g:Lcom/sun/prism/Graphics;

    sget-object v11, Lcom/sun/prism/CompositeMode;->SRC_OVER:Lcom/sun/prism/CompositeMode;

    invoke-interface {v10, v11}, Lcom/sun/prism/Graphics;->setCompositeMode(Lcom/sun/prism/CompositeMode;)V

    .line 252
    :cond_a
    :goto_6
    const/4 v10, 0x1

    move v0, v10

    goto/16 :goto_3

    .line 240
    .end local v7    # "factory":Lcom/sun/prism/ResourceFactory;
    :cond_b
    move-object v10, v1

    .line 241
    invoke-interface {v10}, Lcom/sun/prism/Graphics;->getResourceFactory()Lcom/sun/prism/ResourceFactory;

    move-result-object v10

    goto :goto_5

    .line 249
    .restart local v7    # "factory":Lcom/sun/prism/ResourceFactory;
    :cond_c
    move-object v10, v0

    iget-object v10, v10, Lcom/sun/javafx/sg/prism/NGCanvas$RenderBuf;->init_type:Lcom/sun/javafx/sg/prism/NGCanvas$InitType;

    sget-object v11, Lcom/sun/javafx/sg/prism/NGCanvas$InitType;->FILL_WHITE:Lcom/sun/javafx/sg/prism/NGCanvas$InitType;

    if-ne v10, v11, :cond_a

    .line 250
    move-object v10, v0

    iget-object v10, v10, Lcom/sun/javafx/sg/prism/NGCanvas$RenderBuf;->g:Lcom/sun/prism/Graphics;

    sget-object v11, Lcom/sun/prism/paint/Color;->WHITE:Lcom/sun/prism/paint/Color;

    invoke-interface {v10, v11}, Lcom/sun/prism/Graphics;->clear(Lcom/sun/prism/paint/Color;)V

    goto :goto_6

    .line 256
    .end local v7    # "factory":Lcom/sun/prism/ResourceFactory;
    :cond_d
    move-object v10, v0

    iget-object v10, v10, Lcom/sun/javafx/sg/prism/NGCanvas$RenderBuf;->init_type:Lcom/sun/javafx/sg/prism/NGCanvas$InitType;

    sget-object v11, Lcom/sun/javafx/sg/prism/NGCanvas$InitType;->CLEAR:Lcom/sun/javafx/sg/prism/NGCanvas$InitType;

    if-ne v10, v11, :cond_e

    .line 257
    move-object v10, v0

    iget-object v10, v10, Lcom/sun/javafx/sg/prism/NGCanvas$RenderBuf;->g:Lcom/sun/prism/Graphics;

    invoke-interface {v10}, Lcom/sun/prism/Graphics;->clear()V

    .line 259
    :cond_e
    const/4 v10, 0x0

    move v0, v10

    goto/16 :goto_3
.end method
