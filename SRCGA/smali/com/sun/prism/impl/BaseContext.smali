.class public abstract Lcom/sun/prism/impl/BaseContext;
.super Ljava/lang/Object;
.source "BaseContext.java"


# static fields
.field private static final MIN_MASK_DIM:I = 0x400


# instance fields
.field private clearBuffer:Ljava/nio/ByteBuffer;

.field private curMaskCol:I

.field private curMaskRow:I

.field private final factory:Lcom/sun/prism/ResourceFactory;

.field private final greyGlyphCaches:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/sun/javafx/font/FontStrike;",
            "Lcom/sun/prism/impl/GlyphCache;",
            ">;"
        }
    .end annotation
.end field

.field private highMaskCol:I

.field private final lcdGlyphCaches:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/sun/javafx/font/FontStrike;",
            "Lcom/sun/prism/impl/GlyphCache;",
            ">;"
        }
    .end annotation
.end field

.field private maskBuffer:Ljava/nio/ByteBuffer;

.field private maskTex:Lcom/sun/prism/Texture;

.field private nextMaskRow:I

.field private ovalTex:Lcom/sun/prism/Texture;

.field private paintBuffer:Ljava/nio/ByteBuffer;

.field private paintPixels:[I

.field private paintTex:Lcom/sun/prism/Texture;

.field private rectTex:Lcom/sun/prism/Texture;

.field private rectTexMax:I

.field private final screen:Lcom/sun/glass/ui/Screen;

.field private final vertexBuffer:Lcom/sun/prism/impl/VertexBuffer;

.field private wrapRectTex:Lcom/sun/prism/Texture;


# direct methods
.method protected constructor <init>(Lcom/sun/glass/ui/Screen;Lcom/sun/prism/ResourceFactory;Lcom/sun/prism/impl/VertexBuffer;)V
    .locals 8

    .prologue
    .line 79
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/BaseContext;
    move-object v1, p1

    .local v1, "screen":Lcom/sun/glass/ui/Screen;
    move-object v2, p2

    .local v2, "factory":Lcom/sun/prism/ResourceFactory;
    move-object v3, p3

    .local v3, "vb":Lcom/sun/prism/impl/VertexBuffer;
    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 74
    move-object v4, v0

    new-instance v5, Ljava/util/HashMap;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iput-object v5, v4, Lcom/sun/prism/impl/BaseContext;->greyGlyphCaches:Ljava/util/Map;

    .line 76
    move-object v4, v0

    new-instance v5, Ljava/util/HashMap;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iput-object v5, v4, Lcom/sun/prism/impl/BaseContext;->lcdGlyphCaches:Ljava/util/Map;

    .line 80
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/sun/prism/impl/BaseContext;->screen:Lcom/sun/glass/ui/Screen;

    .line 81
    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Lcom/sun/prism/impl/BaseContext;->factory:Lcom/sun/prism/ResourceFactory;

    .line 82
    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Lcom/sun/prism/impl/BaseContext;->vertexBuffer:Lcom/sun/prism/impl/VertexBuffer;

    .line 83
    return-void
.end method

.method private clearCaches(Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/sun/javafx/font/FontStrike;",
            "Lcom/sun/prism/impl/GlyphCache;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 150
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/BaseContext;
    move-object v1, p1

    .local v1, "glyphCaches":Ljava/util/Map;, "Ljava/util/Map<Lcom/sun/javafx/font/FontStrike;Lcom/sun/prism/impl/GlyphCache;>;"
    move-object v4, v1

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v2, v4

    .local v2, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sun/javafx/font/FontStrike;>;"
    :goto_0
    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 151
    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/javafx/font/FontStrike;

    invoke-interface {v4}, Lcom/sun/javafx/font/FontStrike;->clearDesc()V

    goto :goto_0

    .line 154
    :cond_0
    move-object v4, v1

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v2, v4

    .end local v2    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sun/javafx/font/FontStrike;>;"
    :goto_1
    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/prism/impl/GlyphCache;

    move-object v3, v4

    .line 155
    .local v3, "cache":Lcom/sun/prism/impl/GlyphCache;
    move-object v4, v3

    if-eqz v4, :cond_1

    .line 156
    move-object v4, v3

    invoke-virtual {v4}, Lcom/sun/prism/impl/GlyphCache;->clear()V

    .line 158
    :cond_1
    goto :goto_1

    .line 159
    .end local v3    # "cache":Lcom/sun/prism/impl/GlyphCache;
    :cond_2
    move-object v4, v1

    invoke-interface {v4}, Ljava/util/Map;->clear()V

    .line 160
    return-void
.end method

.method private createRectTexture()V
    .locals 24

    .prologue
    .line 301
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/prism/impl/BaseContext;
    sget v12, Lcom/sun/prism/impl/PrismSettings;->primTextureSize:I

    move v1, v12

    .line 302
    .local v1, "texMax":I
    move v12, v1

    if-gez v12, :cond_0

    move-object v12, v0

    invoke-virtual {v12}, Lcom/sun/prism/impl/BaseContext;->getResourceFactory()Lcom/sun/prism/ResourceFactory;

    move-result-object v12

    invoke-interface {v12}, Lcom/sun/prism/ResourceFactory;->getMaximumTextureSize()I

    move-result v12

    move v1, v12

    .line 303
    :cond_0
    const/4 v12, 0x3

    move v2, v12

    .line 304
    .local v2, "texDim":I
    const/4 v12, 0x2

    move v3, v12

    .line 305
    .local v3, "nextCellSize":I
    :goto_0
    move v12, v2

    move v13, v3

    add-int/2addr v12, v13

    const/4 v13, 0x1

    add-int/lit8 v12, v12, 0x1

    move v13, v1

    if-gt v12, v13, :cond_1

    .line 306
    move-object v12, v0

    move v13, v3

    iput v13, v12, Lcom/sun/prism/impl/BaseContext;->rectTexMax:I

    .line 307
    move v12, v2

    add-int/lit8 v3, v3, 0x1

    move v13, v3

    add-int/2addr v12, v13

    move v2, v12

    goto :goto_0

    .line 309
    :cond_1
    move v12, v2

    move v13, v2

    mul-int/2addr v12, v13

    new-array v12, v12, [B

    move-object v4, v12

    .line 310
    .local v4, "mask":[B
    const/4 v12, 0x1

    move v5, v12

    .line 311
    .local v5, "cellY":I
    const/4 v12, 0x1

    move v6, v12

    .local v6, "cellH":I
    :goto_1
    move v12, v6

    move-object v13, v0

    iget v13, v13, Lcom/sun/prism/impl/BaseContext;->rectTexMax:I

    if-gt v12, v13, :cond_5

    .line 312
    const/4 v12, 0x1

    move v7, v12

    .line 313
    .local v7, "cellX":I
    const/4 v12, 0x1

    move v8, v12

    .local v8, "cellW":I
    :goto_2
    move v12, v8

    move-object v13, v0

    iget v13, v13, Lcom/sun/prism/impl/BaseContext;->rectTexMax:I

    if-gt v12, v13, :cond_4

    .line 314
    move v12, v5

    move v13, v2

    mul-int/2addr v12, v13

    move v13, v7

    add-int/2addr v12, v13

    move v9, v12

    .line 315
    .local v9, "index":I
    const/4 v12, 0x0

    move v10, v12

    .local v10, "y":I
    :goto_3
    move v12, v10

    move v13, v6

    if-ge v12, v13, :cond_3

    .line 316
    const/4 v12, 0x0

    move v11, v12

    .local v11, "x":I
    :goto_4
    move v12, v11

    move v13, v8

    if-ge v12, v13, :cond_2

    .line 317
    move-object v12, v4

    move v13, v9

    move v14, v11

    add-int/2addr v13, v14

    const/4 v14, -0x1

    aput-byte v14, v12, v13

    .line 316
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    .line 319
    :cond_2
    move v12, v9

    move v13, v2

    add-int/2addr v12, v13

    move v9, v12

    .line 315
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 321
    .end local v11    # "x":I
    :cond_3
    move v12, v7

    move v13, v8

    const/4 v14, 0x1

    add-int/lit8 v13, v13, 0x1

    add-int/2addr v12, v13

    move v7, v12

    .line 313
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 323
    .end local v9    # "index":I
    .end local v10    # "y":I
    :cond_4
    move v12, v5

    move v13, v6

    const/4 v14, 0x1

    add-int/lit8 v13, v13, 0x1

    add-int/2addr v12, v13

    move v5, v12

    .line 311
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 325
    .end local v7    # "cellX":I
    .end local v8    # "cellW":I
    :cond_5
    sget-boolean v12, Lcom/sun/prism/impl/PrismSettings;->verbose:Z

    if-eqz v12, :cond_6

    .line 326
    sget-object v12, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v13, Ljava/lang/StringBuilder;

    move-object/from16 v23, v13

    move-object/from16 v13, v23

    move-object/from16 v14, v23

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "max rectangle texture cell size = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object v14, v0

    iget v14, v14, Lcom/sun/prism/impl/BaseContext;->rectTexMax:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 328
    :cond_6
    move-object v12, v0

    .line 329
    invoke-virtual {v12}, Lcom/sun/prism/impl/BaseContext;->getResourceFactory()Lcom/sun/prism/ResourceFactory;

    move-result-object v12

    move v13, v2

    move v14, v2

    sget-object v15, Lcom/sun/prism/Texture$WrapMode;->CLAMP_NOT_NEEDED:Lcom/sun/prism/Texture$WrapMode;

    invoke-interface {v12, v13, v14, v15}, Lcom/sun/prism/ResourceFactory;->createMaskTexture(IILcom/sun/prism/Texture$WrapMode;)Lcom/sun/prism/Texture;

    move-result-object v12

    move-object v6, v12

    .line 334
    .local v6, "tex":Lcom/sun/prism/Texture;
    move-object v12, v6

    invoke-interface {v12}, Lcom/sun/prism/Texture;->contentsUseful()V

    .line 335
    move-object v12, v6

    invoke-interface {v12}, Lcom/sun/prism/Texture;->makePermanent()V

    .line 336
    move-object v12, v6

    invoke-interface {v12}, Lcom/sun/prism/Texture;->getPixelFormat()Lcom/sun/prism/PixelFormat;

    move-result-object v12

    move-object v7, v12

    .line 337
    .local v7, "pf":Lcom/sun/prism/PixelFormat;
    move v12, v2

    move-object v13, v7

    invoke-virtual {v13}, Lcom/sun/prism/PixelFormat;->getBytesPerPixelUnit()I

    move-result v13

    mul-int/2addr v12, v13

    move v8, v12

    .line 338
    .local v8, "scan":I
    move-object v12, v6

    move-object v13, v4

    invoke-static {v13}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v13

    move-object v14, v7

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move/from16 v19, v2

    move/from16 v20, v2

    move/from16 v21, v8

    const/16 v22, 0x0

    invoke-interface/range {v12 .. v22}, Lcom/sun/prism/Texture;->update(Ljava/nio/Buffer;Lcom/sun/prism/PixelFormat;IIIIIIIZ)V

    .line 341
    move-object v12, v0

    move-object v13, v6

    iput-object v13, v12, Lcom/sun/prism/impl/BaseContext;->rectTex:Lcom/sun/prism/Texture;

    .line 342
    return-void
.end method

.method private getGlyphCache(Lcom/sun/javafx/font/FontStrike;Ljava/util/Map;)Lcom/sun/prism/impl/GlyphCache;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/javafx/font/FontStrike;",
            "Ljava/util/Map",
            "<",
            "Lcom/sun/javafx/font/FontStrike;",
            "Lcom/sun/prism/impl/GlyphCache;",
            ">;)",
            "Lcom/sun/prism/impl/GlyphCache;"
        }
    .end annotation

    .prologue
    .line 177
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/BaseContext;
    move-object v1, p1

    .local v1, "strike":Lcom/sun/javafx/font/FontStrike;
    move-object v2, p2

    .local v2, "glyphCaches":Ljava/util/Map;, "Ljava/util/Map<Lcom/sun/javafx/font/FontStrike;Lcom/sun/prism/impl/GlyphCache;>;"
    move-object v4, v2

    move-object v5, v1

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/prism/impl/GlyphCache;

    move-object v3, v4

    .line 178
    .local v3, "glyphCache":Lcom/sun/prism/impl/GlyphCache;
    move-object v4, v3

    if-nez v4, :cond_0

    .line 179
    new-instance v4, Lcom/sun/prism/impl/GlyphCache;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v0

    move-object v7, v1

    invoke-direct {v5, v6, v7}, Lcom/sun/prism/impl/GlyphCache;-><init>(Lcom/sun/prism/impl/BaseContext;Lcom/sun/javafx/font/FontStrike;)V

    move-object v3, v4

    .line 180
    move-object v4, v2

    move-object v5, v1

    move-object v6, v3

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 182
    :cond_0
    move-object v4, v3

    move-object v0, v4

    .end local v0    # "this":Lcom/sun/prism/impl/BaseContext;
    return-object v0
.end method


# virtual methods
.method public clearGlyphCaches()V
    .locals 3

    .prologue
    .line 145
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/BaseContext;
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/prism/impl/BaseContext;->greyGlyphCaches:Ljava/util/Map;

    invoke-direct {v1, v2}, Lcom/sun/prism/impl/BaseContext;->clearCaches(Ljava/util/Map;)V

    .line 146
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/prism/impl/BaseContext;->lcdGlyphCaches:Ljava/util/Map;

    invoke-direct {v1, v2}, Lcom/sun/prism/impl/BaseContext;->clearCaches(Ljava/util/Map;)V

    .line 147
    return-void
.end method

.method public flushVertexBuffer()V
    .locals 14

    .prologue
    .line 101
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/BaseContext;
    move-object v1, v0

    iget v1, v1, Lcom/sun/prism/impl/BaseContext;->curMaskRow:I

    if-gtz v1, :cond_0

    move-object v1, v0

    iget v1, v1, Lcom/sun/prism/impl/BaseContext;->curMaskCol:I

    if-lez v1, :cond_1

    .line 102
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/prism/impl/BaseContext;->maskTex:Lcom/sun/prism/Texture;

    invoke-interface {v1}, Lcom/sun/prism/Texture;->lock()V

    .line 105
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/prism/impl/BaseContext;->maskTex:Lcom/sun/prism/Texture;

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/prism/impl/BaseContext;->maskBuffer:Ljava/nio/ByteBuffer;

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/prism/impl/BaseContext;->maskTex:Lcom/sun/prism/Texture;

    invoke-interface {v3}, Lcom/sun/prism/Texture;->getPixelFormat()Lcom/sun/prism/PixelFormat;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v8, v0

    iget v8, v8, Lcom/sun/prism/impl/BaseContext;->highMaskCol:I

    move-object v9, v0

    iget v9, v9, Lcom/sun/prism/impl/BaseContext;->nextMaskRow:I

    move-object v10, v0

    iget-object v10, v10, Lcom/sun/prism/impl/BaseContext;->maskTex:Lcom/sun/prism/Texture;

    .line 107
    invoke-interface {v10}, Lcom/sun/prism/Texture;->getContentWidth()I

    move-result v10

    const/4 v11, 0x1

    .line 105
    invoke-interface/range {v1 .. v11}, Lcom/sun/prism/Texture;->update(Ljava/nio/Buffer;Lcom/sun/prism/PixelFormat;IIIIIIIZ)V

    .line 108
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/prism/impl/BaseContext;->maskTex:Lcom/sun/prism/Texture;

    invoke-interface {v1}, Lcom/sun/prism/Texture;->unlock()V

    .line 109
    move-object v1, v0

    move-object v2, v0

    move-object v3, v0

    move-object v4, v0

    const/4 v5, 0x0

    move-object v12, v4

    move v13, v5

    move v4, v13

    move-object v5, v12

    move v6, v13

    iput v6, v5, Lcom/sun/prism/impl/BaseContext;->highMaskCol:I

    move-object v12, v3

    move v13, v4

    move v3, v13

    move-object v4, v12

    move v5, v13

    iput v5, v4, Lcom/sun/prism/impl/BaseContext;->nextMaskRow:I

    move-object v12, v2

    move v13, v3

    move v2, v13

    move-object v3, v12

    move v4, v13

    iput v4, v3, Lcom/sun/prism/impl/BaseContext;->curMaskCol:I

    iput v2, v1, Lcom/sun/prism/impl/BaseContext;->curMaskRow:I

    .line 111
    :cond_1
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/prism/impl/BaseContext;->vertexBuffer:Lcom/sun/prism/impl/VertexBuffer;

    invoke-virtual {v1}, Lcom/sun/prism/impl/VertexBuffer;->flush()V

    .line 112
    return-void
.end method

.method public getAssociatedScreen()Lcom/sun/glass/ui/Screen;
    .locals 2

    .prologue
    .line 89
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/BaseContext;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/prism/impl/BaseContext;->screen:Lcom/sun/glass/ui/Screen;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/prism/impl/BaseContext;
    return-object v0
.end method

.method public getGlyphCache(Lcom/sun/javafx/font/FontStrike;)Lcom/sun/prism/impl/GlyphCache;
    .locals 6

    .prologue
    .line 165
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/BaseContext;
    move-object v1, p1

    .local v1, "strike":Lcom/sun/javafx/font/FontStrike;
    move-object v3, v1

    .line 166
    invoke-interface {v3}, Lcom/sun/javafx/font/FontStrike;->getAAMode()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/prism/impl/BaseContext;->lcdGlyphCaches:Ljava/util/Map;

    :goto_0
    move-object v2, v3

    .line 168
    .local v2, "glyphCaches":Ljava/util/Map;, "Ljava/util/Map<Lcom/sun/javafx/font/FontStrike;Lcom/sun/prism/impl/GlyphCache;>;"
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Lcom/sun/prism/impl/BaseContext;->getGlyphCache(Lcom/sun/javafx/font/FontStrike;Ljava/util/Map;)Lcom/sun/prism/impl/GlyphCache;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lcom/sun/prism/impl/BaseContext;
    return-object v0

    .line 166
    .end local v2    # "glyphCaches":Ljava/util/Map;, "Ljava/util/Map<Lcom/sun/javafx/font/FontStrike;Lcom/sun/prism/impl/GlyphCache;>;"
    .restart local v0    # "this":Lcom/sun/prism/impl/BaseContext;
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/prism/impl/BaseContext;->greyGlyphCaches:Ljava/util/Map;

    goto :goto_0
.end method

.method public getGradientTexture(Lcom/sun/prism/paint/Gradient;Lcom/sun/javafx/geom/transform/BaseTransform;IILcom/sun/prism/impl/shape/MaskData;FFFF)Lcom/sun/prism/Texture;
    .locals 31

    .prologue
    .line 477
    move-object/from16 v2, p0

    .local v2, "this":Lcom/sun/prism/impl/BaseContext;
    move-object/from16 v3, p1

    .local v3, "grad":Lcom/sun/prism/paint/Gradient;
    move-object/from16 v4, p2

    .local v4, "xform":Lcom/sun/javafx/geom/transform/BaseTransform;
    move/from16 v5, p3

    .local v5, "paintW":I
    move/from16 v6, p4

    .local v6, "paintH":I
    move-object/from16 v7, p5

    .local v7, "maskData":Lcom/sun/prism/impl/shape/MaskData;
    move/from16 v8, p6

    .local v8, "bx":F
    move/from16 v9, p7

    .local v9, "by":F
    move/from16 v10, p8

    .local v10, "bw":F
    move/from16 v11, p9

    .local v11, "bh":F
    move/from16 v20, v5

    move/from16 v21, v6

    mul-int v20, v20, v21

    move/from16 v12, v20

    .line 478
    .local v12, "sizeInPixels":I
    move/from16 v20, v12

    const/16 v21, 0x4

    mul-int/lit8 v20, v20, 0x4

    move/from16 v13, v20

    .line 479
    .local v13, "sizeInBytes":I
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sun/prism/impl/BaseContext;->paintBuffer:Ljava/nio/ByteBuffer;

    move-object/from16 v20, v0

    if-eqz v20, :cond_0

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sun/prism/impl/BaseContext;->paintBuffer:Ljava/nio/ByteBuffer;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v20

    move/from16 v21, v13

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_1

    .line 480
    :cond_0
    move-object/from16 v20, v2

    move/from16 v21, v12

    move/from16 v0, v21

    new-array v0, v0, [I

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/sun/prism/impl/BaseContext;->paintPixels:[I

    .line 481
    move-object/from16 v20, v2

    move/from16 v21, v13

    move/from16 v0, v21

    new-array v0, v0, [B

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/sun/prism/impl/BaseContext;->paintBuffer:Ljava/nio/ByteBuffer;

    .line 484
    :cond_1
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sun/prism/impl/BaseContext;->paintTex:Lcom/sun/prism/Texture;

    move-object/from16 v20, v0

    if-eqz v20, :cond_2

    .line 485
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sun/prism/impl/BaseContext;->paintTex:Lcom/sun/prism/Texture;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lcom/sun/prism/Texture;->lock()V

    .line 486
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sun/prism/impl/BaseContext;->paintTex:Lcom/sun/prism/Texture;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lcom/sun/prism/Texture;->isSurfaceLost()Z

    move-result v20

    if-eqz v20, :cond_2

    .line 487
    move-object/from16 v20, v2

    const/16 v21, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/sun/prism/impl/BaseContext;->paintTex:Lcom/sun/prism/Texture;

    .line 491
    :cond_2
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sun/prism/impl/BaseContext;->paintTex:Lcom/sun/prism/Texture;

    move-object/from16 v20, v0

    if-eqz v20, :cond_3

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sun/prism/impl/BaseContext;->paintTex:Lcom/sun/prism/Texture;

    move-object/from16 v20, v0

    .line 492
    invoke-interface/range {v20 .. v20}, Lcom/sun/prism/Texture;->getContentWidth()I

    move-result v20

    move/from16 v21, v5

    move/from16 v0, v20

    move/from16 v1, v21

    if-lt v0, v1, :cond_3

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sun/prism/impl/BaseContext;->paintTex:Lcom/sun/prism/Texture;

    move-object/from16 v20, v0

    .line 493
    invoke-interface/range {v20 .. v20}, Lcom/sun/prism/Texture;->getContentHeight()I

    move-result v20

    move/from16 v21, v6

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_5

    .line 495
    :cond_3
    move/from16 v20, v5

    move/from16 v14, v20

    .line 496
    .local v14, "newTexW":I
    move/from16 v20, v6

    move/from16 v15, v20

    .line 497
    .local v15, "newTexH":I
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sun/prism/impl/BaseContext;->paintTex:Lcom/sun/prism/Texture;

    move-object/from16 v20, v0

    if-eqz v20, :cond_4

    .line 502
    move/from16 v20, v5

    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/sun/prism/impl/BaseContext;->paintTex:Lcom/sun/prism/Texture;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Lcom/sun/prism/Texture;->getContentWidth()I

    move-result v21

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->max(II)I

    move-result v20

    move/from16 v14, v20

    .line 503
    move/from16 v20, v6

    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/sun/prism/impl/BaseContext;->paintTex:Lcom/sun/prism/Texture;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Lcom/sun/prism/Texture;->getContentHeight()I

    move-result v21

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->max(II)I

    move-result v20

    move/from16 v15, v20

    .line 504
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sun/prism/impl/BaseContext;->paintTex:Lcom/sun/prism/Texture;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lcom/sun/prism/Texture;->dispose()V

    .line 506
    :cond_4
    move-object/from16 v20, v2

    move-object/from16 v21, v2

    invoke-virtual/range {v21 .. v21}, Lcom/sun/prism/impl/BaseContext;->getResourceFactory()Lcom/sun/prism/ResourceFactory;

    move-result-object v21

    sget-object v22, Lcom/sun/prism/PixelFormat;->BYTE_BGRA_PRE:Lcom/sun/prism/PixelFormat;

    sget-object v23, Lcom/sun/prism/Texture$Usage;->DEFAULT:Lcom/sun/prism/Texture$Usage;

    sget-object v24, Lcom/sun/prism/Texture$WrapMode;->CLAMP_NOT_NEEDED:Lcom/sun/prism/Texture$WrapMode;

    move/from16 v25, v14

    move/from16 v26, v15

    .line 507
    invoke-interface/range {v21 .. v26}, Lcom/sun/prism/ResourceFactory;->createTexture(Lcom/sun/prism/PixelFormat;Lcom/sun/prism/Texture$Usage;Lcom/sun/prism/Texture$WrapMode;II)Lcom/sun/prism/Texture;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/sun/prism/impl/BaseContext;->paintTex:Lcom/sun/prism/Texture;

    .line 516
    .end local v14    # "newTexW":I
    .end local v15    # "newTexH":I
    :cond_5
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sun/prism/impl/BaseContext;->paintPixels:[I

    move-object/from16 v20, v0

    move-object/from16 v21, v3

    move-object/from16 v22, v4

    const/16 v23, 0x0

    const/16 v24, 0x0

    move/from16 v25, v5

    move/from16 v26, v6

    move/from16 v27, v8

    move/from16 v28, v9

    move/from16 v29, v10

    move/from16 v30, v11

    invoke-static/range {v20 .. v30}, Lcom/sun/prism/impl/paint/PaintUtil;->fillImageWithGradient([ILcom/sun/prism/paint/Gradient;Lcom/sun/javafx/geom/transform/BaseTransform;IIIIFFFF)V

    .line 523
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sun/prism/impl/BaseContext;->paintBuffer:Ljava/nio/ByteBuffer;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v20

    move-object/from16 v14, v20

    .line 524
    .local v14, "bytePixels":[B
    move-object/from16 v20, v7

    if-eqz v20, :cond_7

    .line 527
    move-object/from16 v20, v7

    invoke-virtual/range {v20 .. v20}, Lcom/sun/prism/impl/shape/MaskData;->getMaskBuffer()Ljava/nio/ByteBuffer;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v20

    move-object/from16 v15, v20

    .line 528
    .local v15, "maskPixels":[B
    const/16 v20, 0x0

    move/from16 v16, v20

    .line 529
    .local v16, "j":I
    const/16 v20, 0x0

    move/from16 v17, v20

    .local v17, "i":I
    :goto_0
    move/from16 v20, v17

    move/from16 v21, v12

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_6

    .line 530
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sun/prism/impl/BaseContext;->paintPixels:[I

    move-object/from16 v20, v0

    move/from16 v21, v17

    aget v20, v20, v21

    move/from16 v18, v20

    .line 531
    .local v18, "pixel":I
    move-object/from16 v20, v15

    move/from16 v21, v17

    aget-byte v20, v20, v21

    const/16 v21, 0xff

    move/from16 v0, v20

    and-int/lit16 v0, v0, 0xff

    move/from16 v20, v0

    move/from16 v19, v20

    .line 532
    .local v19, "maskA":I
    move-object/from16 v20, v14

    move/from16 v21, v16

    add-int/lit8 v16, v16, 0x1

    move/from16 v22, v18

    const/16 v23, 0xff

    move/from16 v0, v22

    and-int/lit16 v0, v0, 0xff

    move/from16 v22, v0

    move/from16 v23, v19

    mul-int v22, v22, v23

    const/16 v23, 0xff

    move/from16 v0, v22

    div-int/lit16 v0, v0, 0xff

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-byte v0, v0

    move/from16 v22, v0

    aput-byte v22, v20, v21

    .line 533
    move-object/from16 v20, v14

    move/from16 v21, v16

    add-int/lit8 v16, v16, 0x1

    move/from16 v22, v18

    const/16 v23, 0x8

    shr-int/lit8 v22, v22, 0x8

    const/16 v23, 0xff

    move/from16 v0, v22

    and-int/lit16 v0, v0, 0xff

    move/from16 v22, v0

    move/from16 v23, v19

    mul-int v22, v22, v23

    const/16 v23, 0xff

    move/from16 v0, v22

    div-int/lit16 v0, v0, 0xff

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-byte v0, v0

    move/from16 v22, v0

    aput-byte v22, v20, v21

    .line 534
    move-object/from16 v20, v14

    move/from16 v21, v16

    add-int/lit8 v16, v16, 0x1

    move/from16 v22, v18

    const/16 v23, 0x10

    shr-int/lit8 v22, v22, 0x10

    const/16 v23, 0xff

    move/from16 v0, v22

    and-int/lit16 v0, v0, 0xff

    move/from16 v22, v0

    move/from16 v23, v19

    mul-int v22, v22, v23

    const/16 v23, 0xff

    move/from16 v0, v22

    div-int/lit16 v0, v0, 0xff

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-byte v0, v0

    move/from16 v22, v0

    aput-byte v22, v20, v21

    .line 535
    move-object/from16 v20, v14

    move/from16 v21, v16

    add-int/lit8 v16, v16, 0x1

    move/from16 v22, v18

    const/16 v23, 0x18

    ushr-int/lit8 v22, v22, 0x18

    move/from16 v23, v19

    mul-int v22, v22, v23

    const/16 v23, 0xff

    move/from16 v0, v22

    div-int/lit16 v0, v0, 0xff

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-byte v0, v0

    move/from16 v22, v0

    aput-byte v22, v20, v21

    .line 529
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_0

    .line 537
    .line 549
    .end local v15    # "maskPixels":[B
    .end local v16    # "j":I
    .end local v17    # "i":I
    .end local v18    # "pixel":I
    .end local v19    # "maskA":I
    :cond_6
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sun/prism/impl/BaseContext;->paintTex:Lcom/sun/prism/Texture;

    move-object/from16 v20, v0

    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/sun/prism/impl/BaseContext;->paintBuffer:Ljava/nio/ByteBuffer;

    move-object/from16 v21, v0

    sget-object v22, Lcom/sun/prism/PixelFormat;->BYTE_BGRA_PRE:Lcom/sun/prism/PixelFormat;

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    move/from16 v27, v5

    move/from16 v28, v6

    move/from16 v29, v5

    const/16 v30, 0x4

    mul-int/lit8 v29, v29, 0x4

    const/16 v30, 0x0

    invoke-interface/range {v20 .. v30}, Lcom/sun/prism/Texture;->update(Ljava/nio/Buffer;Lcom/sun/prism/PixelFormat;IIIIIIIZ)V

    .line 552
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sun/prism/impl/BaseContext;->paintTex:Lcom/sun/prism/Texture;

    move-object/from16 v20, v0

    move-object/from16 v2, v20

    .end local v2    # "this":Lcom/sun/prism/impl/BaseContext;
    return-object v2

    .line 539
    .restart local v2    # "this":Lcom/sun/prism/impl/BaseContext;
    :cond_7
    const/16 v20, 0x0

    move/from16 v15, v20

    .line 540
    .local v15, "j":I
    const/16 v20, 0x0

    move/from16 v16, v20

    .local v16, "i":I
    :goto_1
    move/from16 v20, v16

    move/from16 v21, v12

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_6

    .line 541
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sun/prism/impl/BaseContext;->paintPixels:[I

    move-object/from16 v20, v0

    move/from16 v21, v16

    aget v20, v20, v21

    move/from16 v17, v20

    .line 542
    .local v17, "pixel":I
    move-object/from16 v20, v14

    move/from16 v21, v15

    add-int/lit8 v15, v15, 0x1

    move/from16 v22, v17

    const/16 v23, 0xff

    move/from16 v0, v22

    and-int/lit16 v0, v0, 0xff

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-byte v0, v0

    move/from16 v22, v0

    aput-byte v22, v20, v21

    .line 543
    move-object/from16 v20, v14

    move/from16 v21, v15

    add-int/lit8 v15, v15, 0x1

    move/from16 v22, v17

    const/16 v23, 0x8

    shr-int/lit8 v22, v22, 0x8

    const/16 v23, 0xff

    move/from16 v0, v22

    and-int/lit16 v0, v0, 0xff

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-byte v0, v0

    move/from16 v22, v0

    aput-byte v22, v20, v21

    .line 544
    move-object/from16 v20, v14

    move/from16 v21, v15

    add-int/lit8 v15, v15, 0x1

    move/from16 v22, v17

    const/16 v23, 0x10

    shr-int/lit8 v22, v22, 0x10

    const/16 v23, 0xff

    move/from16 v0, v22

    and-int/lit16 v0, v0, 0xff

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-byte v0, v0

    move/from16 v22, v0

    aput-byte v22, v20, v21

    .line 545
    move-object/from16 v20, v14

    move/from16 v21, v15

    add-int/lit8 v15, v15, 0x1

    move/from16 v22, v17

    const/16 v23, 0x18

    ushr-int/lit8 v22, v22, 0x18

    move/from16 v0, v22

    int-to-byte v0, v0

    move/from16 v22, v0

    aput-byte v22, v20, v21

    .line 540
    add-int/lit8 v16, v16, 0x1

    goto :goto_1
.end method

.method public abstract getLCDBuffer()Lcom/sun/prism/RTTexture;
.end method

.method public getOvalTexture()Lcom/sun/prism/Texture;
    .locals 31

    .prologue
    .line 384
    move-object/from16 v2, p0

    .local v2, "this":Lcom/sun/prism/impl/BaseContext;
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sun/prism/impl/BaseContext;->ovalTex:Lcom/sun/prism/Texture;

    move-object/from16 v18, v0

    if-nez v18, :cond_8

    .line 385
    move-object/from16 v18, v2

    invoke-virtual/range {v18 .. v18}, Lcom/sun/prism/impl/BaseContext;->getRectTextureMaxSize()I

    move-result v18

    move/from16 v3, v18

    .line 386
    .local v3, "cellMax":I
    move/from16 v18, v3

    move/from16 v19, v3

    const/16 v20, 0x1

    add-int/lit8 v19, v19, 0x1

    mul-int v18, v18, v19

    const/16 v19, 0x2

    div-int/lit8 v18, v18, 0x2

    move/from16 v4, v18

    .line 388
    .local v4, "texDim":I
    move/from16 v18, v4

    move/from16 v19, v3

    const/16 v20, 0x1

    add-int/lit8 v19, v19, 0x1

    add-int v18, v18, v19

    move/from16 v4, v18

    .line 391
    move/from16 v18, v4

    move/from16 v19, v4

    mul-int v18, v18, v19

    move/from16 v0, v18

    new-array v0, v0, [B

    move-object/from16 v18, v0

    move-object/from16 v5, v18

    .line 392
    .local v5, "mask":[B
    const/16 v18, 0x1

    move/from16 v6, v18

    .line 393
    .local v6, "cellY":I
    const/16 v18, 0x1

    move/from16 v7, v18

    .local v7, "cellH":I
    :goto_0
    move/from16 v18, v7

    move/from16 v19, v3

    move/from16 v0, v18

    move/from16 v1, v19

    if-gt v0, v1, :cond_7

    .line 394
    const/16 v18, 0x1

    move/from16 v8, v18

    .line 395
    .local v8, "cellX":I
    const/16 v18, 0x1

    move/from16 v9, v18

    .local v9, "cellW":I
    :goto_1
    move/from16 v18, v9

    move/from16 v19, v3

    move/from16 v0, v18

    move/from16 v1, v19

    if-gt v0, v1, :cond_6

    .line 396
    move/from16 v18, v6

    move/from16 v19, v4

    mul-int v18, v18, v19

    move/from16 v19, v8

    add-int v18, v18, v19

    move/from16 v10, v18

    .line 398
    .local v10, "index":I
    const/16 v18, 0x0

    move/from16 v11, v18

    .local v11, "y":I
    :goto_2
    move/from16 v18, v11

    move/from16 v19, v7

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_5

    .line 399
    move/from16 v18, v11

    const/16 v19, 0x2

    mul-int/lit8 v18, v18, 0x2

    move/from16 v19, v7

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_1

    .line 400
    move/from16 v18, v7

    const/16 v19, 0x1

    add-int/lit8 v18, v18, -0x1

    move/from16 v19, v11

    sub-int v18, v18, v19

    move/from16 v12, v18

    .line 402
    .local v12, "reflecty":I
    move/from16 v18, v10

    move/from16 v19, v12

    move/from16 v20, v11

    sub-int v19, v19, v20

    move/from16 v20, v4

    mul-int v19, v19, v20

    add-int v18, v18, v19

    move/from16 v13, v18

    .line 403
    .local v13, "rindex":I
    const/16 v18, 0x0

    move/from16 v14, v18

    .local v14, "x":I
    :goto_3
    move/from16 v18, v14

    move/from16 v19, v9

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_0

    .line 404
    move-object/from16 v18, v5

    move/from16 v19, v10

    move/from16 v20, v14

    add-int v19, v19, v20

    move-object/from16 v20, v5

    move/from16 v21, v13

    move/from16 v22, v14

    add-int v21, v21, v22

    aget-byte v20, v20, v21

    aput-byte v20, v18, v19

    .line 403
    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    .line 406
    .line 435
    .end local v12    # "reflecty":I
    .end local v13    # "rindex":I
    :cond_0
    :goto_4
    move/from16 v18, v10

    move/from16 v19, v4

    add-int v18, v18, v19

    move/from16 v10, v18

    .line 398
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 408
    .end local v14    # "x":I
    :cond_1
    move/from16 v18, v11

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    const/high16 v19, 0x3d800000    # 0.0625f

    add-float v18, v18, v19

    move/from16 v12, v18

    .line 409
    .local v12, "ovalY":F
    const/16 v18, 0x0

    move/from16 v13, v18

    .local v13, "i":I
    :goto_5
    move/from16 v18, v13

    const/16 v19, 0x8

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_2

    .line 410
    move/from16 v18, v12

    move/from16 v19, v7

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    div-float v18, v18, v19

    const/high16 v19, 0x3f000000    # 0.5f

    sub-float v18, v18, v19

    move/from16 v14, v18

    .line 411
    .local v14, "ovalX":F
    const/high16 v18, 0x3e800000    # 0.25f

    move/from16 v19, v14

    move/from16 v20, v14

    mul-float v19, v19, v20

    sub-float v18, v18, v19

    move/from16 v0, v18

    float-to-double v0, v0

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v18

    move-wide/from16 v0, v18

    double-to-float v0, v0

    move/from16 v18, v0

    move/from16 v14, v18

    .line 412
    move/from16 v18, v9

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    const/high16 v19, 0x40800000    # 4.0f

    mul-float v18, v18, v19

    const/high16 v19, 0x3f800000    # 1.0f

    move/from16 v20, v14

    const/high16 v21, 0x40000000    # 2.0f

    mul-float v20, v20, v21

    sub-float v19, v19, v20

    mul-float v18, v18, v19

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->round(F)I

    move-result v18

    move/from16 v15, v18

    .line 413
    .local v15, "oxi":I
    move/from16 v18, v15

    const/16 v19, 0x3

    shr-int/lit8 v18, v18, 0x3

    move/from16 v16, v18

    .line 414
    .local v16, "edgeX":I
    move/from16 v18, v15

    const/16 v19, 0x7

    and-int/lit8 v18, v18, 0x7

    move/from16 v17, v18

    .line 416
    .local v17, "subX":I
    move-object/from16 v18, v5

    move/from16 v19, v10

    move/from16 v20, v16

    add-int v19, v19, v20

    move-object/from16 v29, v18

    move/from16 v30, v19

    move-object/from16 v18, v29

    move/from16 v19, v30

    move-object/from16 v20, v29

    move/from16 v21, v30

    aget-byte v20, v20, v21

    const/16 v21, 0x8

    move/from16 v22, v17

    rsub-int/lit8 v21, v22, 0x8

    add-int v20, v20, v21

    move/from16 v0, v20

    int-to-byte v0, v0

    move/from16 v20, v0

    aput-byte v20, v18, v19

    .line 417
    move-object/from16 v18, v5

    move/from16 v19, v10

    move/from16 v20, v16

    add-int v19, v19, v20

    const/16 v20, 0x1

    add-int/lit8 v19, v19, 0x1

    move-object/from16 v29, v18

    move/from16 v30, v19

    move-object/from16 v18, v29

    move/from16 v19, v30

    move-object/from16 v20, v29

    move/from16 v21, v30

    aget-byte v20, v20, v21

    move/from16 v21, v17

    add-int v20, v20, v21

    move/from16 v0, v20

    int-to-byte v0, v0

    move/from16 v20, v0

    aput-byte v20, v18, v19

    .line 418
    move/from16 v18, v12

    const/high16 v19, 0x3e000000    # 0.125f

    add-float v18, v18, v19

    move/from16 v12, v18

    .line 409
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_5

    .line 420
    .end local v14    # "ovalX":F
    .end local v15    # "oxi":I
    .end local v16    # "edgeX":I
    .end local v17    # "subX":I
    :cond_2
    const/16 v18, 0x0

    move/from16 v13, v18

    .line 421
    .local v13, "accum":I
    const/16 v18, 0x0

    move/from16 v14, v18

    .local v14, "x":I
    :goto_6
    move/from16 v18, v14

    move/from16 v19, v9

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_4

    .line 422
    move/from16 v18, v14

    const/16 v19, 0x2

    mul-int/lit8 v18, v18, 0x2

    move/from16 v19, v9

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_3

    .line 424
    move-object/from16 v18, v5

    move/from16 v19, v10

    move/from16 v20, v14

    add-int v19, v19, v20

    move-object/from16 v20, v5

    move/from16 v21, v10

    move/from16 v22, v9

    add-int v21, v21, v22

    const/16 v22, 0x1

    add-int/lit8 v21, v21, -0x1

    move/from16 v22, v14

    sub-int v21, v21, v22

    aget-byte v20, v20, v21

    aput-byte v20, v18, v19

    .line 421
    :goto_7
    add-int/lit8 v14, v14, 0x1

    goto :goto_6

    .line 426
    :cond_3
    move/from16 v18, v13

    move-object/from16 v19, v5

    move/from16 v20, v10

    move/from16 v21, v14

    add-int v20, v20, v21

    aget-byte v19, v19, v20

    add-int v18, v18, v19

    move/from16 v13, v18

    .line 428
    move-object/from16 v18, v5

    move/from16 v19, v10

    move/from16 v20, v14

    add-int v19, v19, v20

    move/from16 v20, v13

    const/16 v21, 0xff

    move/from16 v0, v20

    mul-int/lit16 v0, v0, 0xff

    move/from16 v20, v0

    const/16 v21, 0x20

    add-int/lit8 v20, v20, 0x20

    const/16 v21, 0x40

    div-int/lit8 v20, v20, 0x40

    move/from16 v0, v20

    int-to-byte v0, v0

    move/from16 v20, v0

    aput-byte v20, v18, v19

    goto :goto_7

    .line 433
    :cond_4
    move-object/from16 v18, v5

    move/from16 v19, v10

    move/from16 v20, v9

    add-int v19, v19, v20

    const/16 v20, 0x0

    aput-byte v20, v18, v19

    goto/16 :goto_4

    .line 437
    .end local v12    # "ovalY":F
    .end local v13    # "accum":I
    .end local v14    # "x":I
    :cond_5
    move/from16 v18, v8

    move/from16 v19, v9

    const/16 v20, 0x1

    add-int/lit8 v19, v19, 0x1

    add-int v18, v18, v19

    move/from16 v8, v18

    .line 395
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_1

    .line 439
    .end local v10    # "index":I
    .end local v11    # "y":I
    :cond_6
    move/from16 v18, v6

    move/from16 v19, v7

    const/16 v20, 0x1

    add-int/lit8 v19, v19, 0x1

    add-int v18, v18, v19

    move/from16 v6, v18

    .line 393
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 451
    .end local v8    # "cellX":I
    .end local v9    # "cellW":I
    :cond_7
    move-object/from16 v18, v2

    .line 452
    invoke-virtual/range {v18 .. v18}, Lcom/sun/prism/impl/BaseContext;->getResourceFactory()Lcom/sun/prism/ResourceFactory;

    move-result-object v18

    move/from16 v19, v4

    move/from16 v20, v4

    sget-object v21, Lcom/sun/prism/Texture$WrapMode;->CLAMP_NOT_NEEDED:Lcom/sun/prism/Texture$WrapMode;

    invoke-interface/range {v18 .. v21}, Lcom/sun/prism/ResourceFactory;->createMaskTexture(IILcom/sun/prism/Texture$WrapMode;)Lcom/sun/prism/Texture;

    move-result-object v18

    move-object/from16 v7, v18

    .line 454
    .local v7, "tex":Lcom/sun/prism/Texture;
    move-object/from16 v18, v7

    invoke-interface/range {v18 .. v18}, Lcom/sun/prism/Texture;->contentsUseful()V

    .line 455
    move-object/from16 v18, v7

    invoke-interface/range {v18 .. v18}, Lcom/sun/prism/Texture;->makePermanent()V

    .line 456
    move-object/from16 v18, v7

    invoke-interface/range {v18 .. v18}, Lcom/sun/prism/Texture;->getPixelFormat()Lcom/sun/prism/PixelFormat;

    move-result-object v18

    move-object/from16 v8, v18

    .line 457
    .local v8, "pf":Lcom/sun/prism/PixelFormat;
    move/from16 v18, v4

    move-object/from16 v19, v8

    invoke-virtual/range {v19 .. v19}, Lcom/sun/prism/PixelFormat;->getBytesPerPixelUnit()I

    move-result v19

    mul-int v18, v18, v19

    move/from16 v9, v18

    .line 458
    .local v9, "scan":I
    move-object/from16 v18, v7

    move-object/from16 v19, v5

    invoke-static/range {v19 .. v19}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v19

    move-object/from16 v20, v8

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move/from16 v25, v4

    move/from16 v26, v4

    move/from16 v27, v9

    const/16 v28, 0x0

    invoke-interface/range {v18 .. v28}, Lcom/sun/prism/Texture;->update(Ljava/nio/Buffer;Lcom/sun/prism/PixelFormat;IIIIIIIZ)V

    .line 461
    move-object/from16 v18, v2

    move-object/from16 v19, v7

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/sun/prism/impl/BaseContext;->ovalTex:Lcom/sun/prism/Texture;

    .line 468
    .end local v3    # "cellMax":I
    .end local v4    # "texDim":I
    .end local v5    # "mask":[B
    .end local v6    # "cellY":I
    .end local v7    # "tex":Lcom/sun/prism/Texture;
    .end local v8    # "pf":Lcom/sun/prism/PixelFormat;
    .end local v9    # "scan":I
    :cond_8
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sun/prism/impl/BaseContext;->ovalTex:Lcom/sun/prism/Texture;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/sun/prism/Texture;->lock()V

    .line 469
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sun/prism/impl/BaseContext;->ovalTex:Lcom/sun/prism/Texture;

    move-object/from16 v18, v0

    move-object/from16 v2, v18

    .end local v2    # "this":Lcom/sun/prism/impl/BaseContext;
    return-object v2
.end method

.method public getRectTexture()Lcom/sun/prism/Texture;
    .locals 2

    .prologue
    .line 288
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/BaseContext;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/prism/impl/BaseContext;->rectTex:Lcom/sun/prism/Texture;

    if-nez v1, :cond_0

    .line 289
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/prism/impl/BaseContext;->createRectTexture()V

    .line 296
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/prism/impl/BaseContext;->rectTex:Lcom/sun/prism/Texture;

    invoke-interface {v1}, Lcom/sun/prism/Texture;->lock()V

    .line 297
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/prism/impl/BaseContext;->rectTex:Lcom/sun/prism/Texture;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/prism/impl/BaseContext;
    return-object v0
.end method

.method public getRectTextureMaxSize()I
    .locals 2

    .prologue
    .line 281
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/BaseContext;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/prism/impl/BaseContext;->rectTex:Lcom/sun/prism/Texture;

    if-nez v1, :cond_0

    .line 282
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/prism/impl/BaseContext;->createRectTexture()V

    .line 284
    :cond_0
    move-object v1, v0

    iget v1, v1, Lcom/sun/prism/impl/BaseContext;->rectTexMax:I

    move v0, v1

    .end local v0    # "this":Lcom/sun/prism/impl/BaseContext;
    return v0
.end method

.method public getResourceFactory()Lcom/sun/prism/ResourceFactory;
    .locals 2

    .prologue
    .line 93
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/BaseContext;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/prism/impl/BaseContext;->factory:Lcom/sun/prism/ResourceFactory;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/prism/impl/BaseContext;
    return-object v0
.end method

.method public getVertexBuffer()Lcom/sun/prism/impl/VertexBuffer;
    .locals 2

    .prologue
    .line 97
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/BaseContext;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/prism/impl/BaseContext;->vertexBuffer:Lcom/sun/prism/impl/VertexBuffer;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/prism/impl/BaseContext;
    return-object v0
.end method

.method public getWrapRectTexture()Lcom/sun/prism/Texture;
    .locals 20

    .prologue
    .line 345
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/prism/impl/BaseContext;
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/prism/impl/BaseContext;->wrapRectTex:Lcom/sun/prism/Texture;

    if-nez v8, :cond_3

    .line 346
    move-object v8, v0

    .line 347
    invoke-virtual {v8}, Lcom/sun/prism/impl/BaseContext;->getResourceFactory()Lcom/sun/prism/ResourceFactory;

    move-result-object v8

    const/4 v9, 0x2

    const/4 v10, 0x2

    sget-object v11, Lcom/sun/prism/Texture$WrapMode;->CLAMP_TO_EDGE:Lcom/sun/prism/Texture$WrapMode;

    invoke-interface {v8, v9, v10, v11}, Lcom/sun/prism/ResourceFactory;->createMaskTexture(IILcom/sun/prism/Texture$WrapMode;)Lcom/sun/prism/Texture;

    move-result-object v8

    move-object v1, v8

    .line 351
    .local v1, "tex":Lcom/sun/prism/Texture;
    move-object v8, v1

    invoke-interface {v8}, Lcom/sun/prism/Texture;->contentsUseful()V

    .line 352
    move-object v8, v1

    invoke-interface {v8}, Lcom/sun/prism/Texture;->makePermanent()V

    .line 353
    move-object v8, v1

    invoke-interface {v8}, Lcom/sun/prism/Texture;->getPhysicalWidth()I

    move-result v8

    move v2, v8

    .line 354
    .local v2, "w":I
    move-object v8, v1

    invoke-interface {v8}, Lcom/sun/prism/Texture;->getPhysicalHeight()I

    move-result v8

    move v3, v8

    .line 355
    .local v3, "h":I
    sget-boolean v8, Lcom/sun/prism/impl/PrismSettings;->verbose:Z

    if-eqz v8, :cond_0

    .line 356
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    move-object/from16 v19, v9

    move-object/from16 v9, v19

    move-object/from16 v10, v19

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "wrap rectangle texture = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move v10, v2

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " x "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move v10, v3

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 359
    :cond_0
    move v8, v2

    move v9, v3

    mul-int/2addr v8, v9

    new-array v8, v8, [B

    move-object v4, v8

    .line 360
    .local v4, "mask":[B
    move v8, v2

    move v5, v8

    .line 361
    .local v5, "off":I
    const/4 v8, 0x1

    move v6, v8

    .local v6, "y":I
    :goto_0
    move v8, v6

    move v9, v3

    if-ge v8, v9, :cond_2

    .line 362
    const/4 v8, 0x1

    move v7, v8

    .local v7, "x":I
    :goto_1
    move v8, v7

    move v9, v3

    if-ge v8, v9, :cond_1

    .line 363
    move-object v8, v4

    move v9, v5

    move v10, v7

    add-int/2addr v9, v10

    const/4 v10, -0x1

    aput-byte v10, v8, v9

    .line 362
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 365
    :cond_1
    move v8, v5

    move v9, v2

    add-int/2addr v8, v9

    move v5, v8

    .line 361
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 367
    .end local v7    # "x":I
    :cond_2
    move-object v8, v1

    invoke-interface {v8}, Lcom/sun/prism/Texture;->getPixelFormat()Lcom/sun/prism/PixelFormat;

    move-result-object v8

    move-object v6, v8

    .line 368
    .local v6, "pf":Lcom/sun/prism/PixelFormat;
    move v8, v2

    move-object v9, v6

    invoke-virtual {v9}, Lcom/sun/prism/PixelFormat;->getBytesPerPixelUnit()I

    move-result v9

    mul-int/2addr v8, v9

    move v7, v8

    .line 369
    .local v7, "scan":I
    move-object v8, v1

    move-object v9, v4

    invoke-static {v9}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v9

    move-object v10, v6

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move v15, v2

    move/from16 v16, v3

    move/from16 v17, v7

    const/16 v18, 0x0

    invoke-interface/range {v8 .. v18}, Lcom/sun/prism/Texture;->update(Ljava/nio/Buffer;Lcom/sun/prism/PixelFormat;IIIIIIIZ)V

    .line 372
    move-object v8, v0

    move-object v9, v1

    iput-object v9, v8, Lcom/sun/prism/impl/BaseContext;->wrapRectTex:Lcom/sun/prism/Texture;

    .line 379
    .end local v1    # "tex":Lcom/sun/prism/Texture;
    .end local v2    # "w":I
    .end local v3    # "h":I
    .end local v4    # "mask":[B
    .end local v5    # "off":I
    .end local v6    # "pf":Lcom/sun/prism/PixelFormat;
    .end local v7    # "scan":I
    :cond_3
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/prism/impl/BaseContext;->wrapRectTex:Lcom/sun/prism/Texture;

    invoke-interface {v8}, Lcom/sun/prism/Texture;->lock()V

    .line 380
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/prism/impl/BaseContext;->wrapRectTex:Lcom/sun/prism/Texture;

    move-object v0, v8

    .end local v0    # "this":Lcom/sun/prism/impl/BaseContext;
    return-object v0
.end method

.method public isSuperShaderEnabled()Z
    .locals 2

    .prologue
    .line 172
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/BaseContext;
    const/4 v1, 0x0

    move v0, v1

    .end local v0    # "this":Lcom/sun/prism/impl/BaseContext;
    return v0
.end method

.method protected releaseRenderTarget()V
    .locals 0

    .prologue
    .line 130
    return-void
.end method

.method protected setDeviceParametersFor2D()V
    .locals 0

    .prologue
    .line 85
    return-void
.end method

.method protected setDeviceParametersFor3D()V
    .locals 0

    .prologue
    .line 86
    return-void
.end method

.method protected abstract setRenderTarget(Lcom/sun/prism/RenderTarget;Lcom/sun/javafx/sg/prism/NGCamera;ZZ)V
.end method

.method public setRenderTarget(Lcom/sun/prism/impl/BaseGraphics;)V
    .locals 7

    .prologue
    .line 120
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/BaseContext;
    move-object v1, p1

    .local v1, "g":Lcom/sun/prism/impl/BaseGraphics;
    move-object v2, v1

    if-eqz v2, :cond_1

    .line 121
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Lcom/sun/prism/impl/BaseGraphics;->getRenderTarget()Lcom/sun/prism/RenderTarget;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v4}, Lcom/sun/prism/impl/BaseGraphics;->getCameraNoClone()Lcom/sun/javafx/sg/prism/NGCamera;

    move-result-object v4

    move-object v5, v1

    .line 122
    invoke-virtual {v5}, Lcom/sun/prism/impl/BaseGraphics;->isDepthTest()Z

    move-result v5

    if-eqz v5, :cond_0

    move-object v5, v1

    invoke-virtual {v5}, Lcom/sun/prism/impl/BaseGraphics;->isDepthBuffer()Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    :goto_0
    move-object v6, v1

    invoke-virtual {v6}, Lcom/sun/prism/impl/BaseGraphics;->isState3D()Z

    move-result v6

    .line 121
    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/sun/prism/impl/BaseContext;->setRenderTarget(Lcom/sun/prism/RenderTarget;Lcom/sun/javafx/sg/prism/NGCamera;ZZ)V

    .line 126
    :goto_1
    return-void

    .line 122
    :cond_0
    const/4 v5, 0x0

    goto :goto_0

    .line 124
    :cond_1
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/prism/impl/BaseContext;->releaseRenderTarget()V

    goto :goto_1
.end method

.method public updateMaskTexture(Lcom/sun/prism/impl/shape/MaskData;Lcom/sun/javafx/geom/RectBounds;Z)V
    .locals 27

    .prologue
    .line 231
    move-object/from16 v2, p0

    .local v2, "this":Lcom/sun/prism/impl/BaseContext;
    move-object/from16 v3, p1

    .local v3, "maskData":Lcom/sun/prism/impl/shape/MaskData;
    move-object/from16 v4, p2

    .local v4, "maskBounds":Lcom/sun/javafx/geom/RectBounds;
    move/from16 v5, p3

    .local v5, "canScale":Z
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/prism/impl/BaseContext;->maskTex:Lcom/sun/prism/Texture;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/sun/prism/Texture;->assertLocked()V

    .line 232
    move-object/from16 v17, v3

    invoke-virtual/range {v17 .. v17}, Lcom/sun/prism/impl/shape/MaskData;->getWidth()I

    move-result v17

    move/from16 v6, v17

    .line 233
    .local v6, "maskW":I
    move-object/from16 v17, v3

    invoke-virtual/range {v17 .. v17}, Lcom/sun/prism/impl/shape/MaskData;->getHeight()I

    move-result v17

    move/from16 v7, v17

    .line 234
    .local v7, "maskH":I
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/prism/impl/BaseContext;->maskTex:Lcom/sun/prism/Texture;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/sun/prism/Texture;->getContentWidth()I

    move-result v17

    move/from16 v8, v17

    .line 235
    .local v8, "texW":I
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/prism/impl/BaseContext;->maskTex:Lcom/sun/prism/Texture;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/sun/prism/Texture;->getContentHeight()I

    move-result v17

    move/from16 v9, v17

    .line 236
    .local v9, "texH":I
    move/from16 v17, v5

    if-eqz v17, :cond_5

    const/16 v17, 0x1

    :goto_0
    move/from16 v10, v17

    .line 237
    .local v10, "pad":I
    move/from16 v17, v6

    move/from16 v18, v10

    add-int v17, v17, v18

    move/from16 v18, v10

    add-int v17, v17, v18

    move/from16 v11, v17

    .line 238
    .local v11, "needW":I
    move/from16 v17, v7

    move/from16 v18, v10

    add-int v17, v17, v18

    move/from16 v18, v10

    add-int v17, v17, v18

    move/from16 v12, v17

    .line 239
    .local v12, "needH":I
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget v0, v0, Lcom/sun/prism/impl/BaseContext;->curMaskCol:I

    move/from16 v17, v0

    move/from16 v18, v11

    add-int v17, v17, v18

    move/from16 v18, v8

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_0

    .line 240
    move-object/from16 v17, v2

    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lcom/sun/prism/impl/BaseContext;->curMaskCol:I

    .line 241
    move-object/from16 v17, v2

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget v0, v0, Lcom/sun/prism/impl/BaseContext;->nextMaskRow:I

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lcom/sun/prism/impl/BaseContext;->curMaskRow:I

    .line 243
    :cond_0
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget v0, v0, Lcom/sun/prism/impl/BaseContext;->curMaskRow:I

    move/from16 v17, v0

    move/from16 v18, v12

    add-int v17, v17, v18

    move/from16 v18, v9

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_1

    .line 244
    move-object/from16 v17, v2

    invoke-virtual/range {v17 .. v17}, Lcom/sun/prism/impl/BaseContext;->flushVertexBuffer()V

    .line 247
    :cond_1
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget v0, v0, Lcom/sun/prism/impl/BaseContext;->curMaskRow:I

    move/from16 v17, v0

    move/from16 v18, v8

    mul-int v17, v17, v18

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget v0, v0, Lcom/sun/prism/impl/BaseContext;->curMaskCol:I

    move/from16 v18, v0

    add-int v17, v17, v18

    move/from16 v13, v17

    .line 248
    .local v13, "offset":I
    invoke-static {}, Lcom/sun/javafx/image/impl/ByteGray;->ToByteGrayConverter()Lcom/sun/javafx/image/ByteToBytePixelConverter;

    move-result-object v17

    move-object/from16 v14, v17

    .line 249
    .local v14, "b2bpc":Lcom/sun/javafx/image/ByteToBytePixelConverter;
    move/from16 v17, v5

    if-eqz v17, :cond_2

    .line 251
    move/from16 v17, v13

    move/from16 v15, v17

    .line 252
    .local v15, "off":I
    move-object/from16 v17, v14

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sun/prism/impl/BaseContext;->clearBuffer:Ljava/nio/ByteBuffer;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/sun/prism/impl/BaseContext;->maskBuffer:Ljava/nio/ByteBuffer;

    move-object/from16 v21, v0

    move/from16 v22, v15

    move/from16 v23, v8

    move/from16 v24, v6

    const/16 v25, 0x1

    add-int/lit8 v24, v24, 0x1

    const/16 v25, 0x1

    invoke-interface/range {v17 .. v25}, Lcom/sun/javafx/image/ByteToBytePixelConverter;->convert(Ljava/nio/Buffer;IILjava/nio/Buffer;IIII)V

    .line 254
    move/from16 v17, v13

    move/from16 v18, v6

    add-int v17, v17, v18

    const/16 v18, 0x1

    add-int/lit8 v17, v17, 0x1

    move/from16 v15, v17

    .line 255
    move-object/from16 v17, v14

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sun/prism/impl/BaseContext;->clearBuffer:Ljava/nio/ByteBuffer;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/sun/prism/impl/BaseContext;->maskBuffer:Ljava/nio/ByteBuffer;

    move-object/from16 v21, v0

    move/from16 v22, v15

    move/from16 v23, v8

    const/16 v24, 0x1

    move/from16 v25, v7

    const/16 v26, 0x1

    add-int/lit8 v25, v25, 0x1

    invoke-interface/range {v17 .. v25}, Lcom/sun/javafx/image/ByteToBytePixelConverter;->convert(Ljava/nio/Buffer;IILjava/nio/Buffer;IIII)V

    .line 257
    move/from16 v17, v13

    move/from16 v18, v8

    add-int v17, v17, v18

    move/from16 v15, v17

    .line 258
    move-object/from16 v17, v14

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sun/prism/impl/BaseContext;->clearBuffer:Ljava/nio/ByteBuffer;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/sun/prism/impl/BaseContext;->maskBuffer:Ljava/nio/ByteBuffer;

    move-object/from16 v21, v0

    move/from16 v22, v15

    move/from16 v23, v8

    const/16 v24, 0x1

    move/from16 v25, v7

    const/16 v26, 0x1

    add-int/lit8 v25, v25, 0x1

    invoke-interface/range {v17 .. v25}, Lcom/sun/javafx/image/ByteToBytePixelConverter;->convert(Ljava/nio/Buffer;IILjava/nio/Buffer;IIII)V

    .line 260
    move/from16 v17, v13

    move/from16 v18, v7

    const/16 v19, 0x1

    add-int/lit8 v18, v18, 0x1

    move/from16 v19, v8

    mul-int v18, v18, v19

    add-int v17, v17, v18

    const/16 v18, 0x1

    add-int/lit8 v17, v17, 0x1

    move/from16 v15, v17

    .line 261
    move-object/from16 v17, v14

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sun/prism/impl/BaseContext;->clearBuffer:Ljava/nio/ByteBuffer;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/sun/prism/impl/BaseContext;->maskBuffer:Ljava/nio/ByteBuffer;

    move-object/from16 v21, v0

    move/from16 v22, v15

    move/from16 v23, v8

    move/from16 v24, v6

    const/16 v25, 0x1

    add-int/lit8 v24, v24, 0x1

    const/16 v25, 0x1

    invoke-interface/range {v17 .. v25}, Lcom/sun/javafx/image/ByteToBytePixelConverter;->convert(Ljava/nio/Buffer;IILjava/nio/Buffer;IIII)V

    .line 262
    move/from16 v17, v13

    move/from16 v18, v8

    const/16 v19, 0x1

    add-int/lit8 v18, v18, 0x1

    add-int v17, v17, v18

    move/from16 v13, v17

    .line 264
    .end local v15    # "off":I
    :cond_2
    move-object/from16 v17, v14

    move-object/from16 v18, v3

    invoke-virtual/range {v18 .. v18}, Lcom/sun/prism/impl/shape/MaskData;->getMaskBuffer()Ljava/nio/ByteBuffer;

    move-result-object v18

    const/16 v19, 0x0

    move/from16 v20, v6

    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/sun/prism/impl/BaseContext;->maskBuffer:Ljava/nio/ByteBuffer;

    move-object/from16 v21, v0

    move/from16 v22, v13

    move/from16 v23, v8

    move/from16 v24, v6

    move/from16 v25, v7

    invoke-interface/range {v17 .. v25}, Lcom/sun/javafx/image/ByteToBytePixelConverter;->convert(Ljava/nio/Buffer;IILjava/nio/Buffer;IIII)V

    .line 268
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/prism/impl/BaseContext;->maskTex:Lcom/sun/prism/Texture;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/sun/prism/Texture;->getPhysicalWidth()I

    move-result v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move/from16 v15, v17

    .line 269
    .local v15, "physW":F
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/prism/impl/BaseContext;->maskTex:Lcom/sun/prism/Texture;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/sun/prism/Texture;->getPhysicalHeight()I

    move-result v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move/from16 v16, v17

    .line 270
    .local v16, "physH":F
    move-object/from16 v17, v4

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget v0, v0, Lcom/sun/prism/impl/BaseContext;->curMaskCol:I

    move/from16 v18, v0

    move/from16 v19, v10

    add-int v18, v18, v19

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move/from16 v19, v15

    div-float v18, v18, v19

    invoke-virtual/range {v17 .. v18}, Lcom/sun/javafx/geom/RectBounds;->setMinX(F)V

    .line 271
    move-object/from16 v17, v4

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget v0, v0, Lcom/sun/prism/impl/BaseContext;->curMaskRow:I

    move/from16 v18, v0

    move/from16 v19, v10

    add-int v18, v18, v19

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move/from16 v19, v16

    div-float v18, v18, v19

    invoke-virtual/range {v17 .. v18}, Lcom/sun/javafx/geom/RectBounds;->setMinY(F)V

    .line 272
    move-object/from16 v17, v4

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget v0, v0, Lcom/sun/prism/impl/BaseContext;->curMaskCol:I

    move/from16 v18, v0

    move/from16 v19, v10

    add-int v18, v18, v19

    move/from16 v19, v6

    add-int v18, v18, v19

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move/from16 v19, v15

    div-float v18, v18, v19

    invoke-virtual/range {v17 .. v18}, Lcom/sun/javafx/geom/RectBounds;->setMaxX(F)V

    .line 273
    move-object/from16 v17, v4

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget v0, v0, Lcom/sun/prism/impl/BaseContext;->curMaskRow:I

    move/from16 v18, v0

    move/from16 v19, v10

    add-int v18, v18, v19

    move/from16 v19, v7

    add-int v18, v18, v19

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move/from16 v19, v16

    div-float v18, v18, v19

    invoke-virtual/range {v17 .. v18}, Lcom/sun/javafx/geom/RectBounds;->setMaxY(F)V

    .line 275
    move-object/from16 v17, v2

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget v0, v0, Lcom/sun/prism/impl/BaseContext;->curMaskCol:I

    move/from16 v18, v0

    move/from16 v19, v11

    add-int v18, v18, v19

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lcom/sun/prism/impl/BaseContext;->curMaskCol:I

    .line 276
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget v0, v0, Lcom/sun/prism/impl/BaseContext;->highMaskCol:I

    move/from16 v17, v0

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget v0, v0, Lcom/sun/prism/impl/BaseContext;->curMaskCol:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_3

    move-object/from16 v17, v2

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget v0, v0, Lcom/sun/prism/impl/BaseContext;->curMaskCol:I

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lcom/sun/prism/impl/BaseContext;->highMaskCol:I

    .line 277
    :cond_3
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget v0, v0, Lcom/sun/prism/impl/BaseContext;->nextMaskRow:I

    move/from16 v17, v0

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget v0, v0, Lcom/sun/prism/impl/BaseContext;->curMaskRow:I

    move/from16 v18, v0

    move/from16 v19, v12

    add-int v18, v18, v19

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_4

    move-object/from16 v17, v2

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget v0, v0, Lcom/sun/prism/impl/BaseContext;->curMaskRow:I

    move/from16 v18, v0

    move/from16 v19, v12

    add-int v18, v18, v19

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lcom/sun/prism/impl/BaseContext;->nextMaskRow:I

    .line 278
    :cond_4
    return-void

    .line 236
    .end local v10    # "pad":I
    .end local v11    # "needW":I
    .end local v12    # "needH":I
    .end local v13    # "offset":I
    .end local v14    # "b2bpc":Lcom/sun/javafx/image/ByteToBytePixelConverter;
    .end local v15    # "physW":F
    .end local v16    # "physH":F
    :cond_5
    const/16 v17, 0x0

    goto/16 :goto_0
.end method

.method public abstract validateClearOp(Lcom/sun/prism/impl/BaseGraphics;)V
.end method

.method public validateMaskTexture(Lcom/sun/prism/impl/shape/MaskData;Z)Lcom/sun/prism/Texture;
    .locals 18

    .prologue
    .line 186
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/prism/impl/BaseContext;
    move-object/from16 v1, p1

    .local v1, "maskData":Lcom/sun/prism/impl/shape/MaskData;
    move/from16 v2, p2

    .local v2, "canScale":Z
    move v10, v2

    if-eqz v10, :cond_6

    const/4 v10, 0x1

    :goto_0
    move v3, v10

    .line 187
    .local v3, "pad":I
    move-object v10, v1

    invoke-virtual {v10}, Lcom/sun/prism/impl/shape/MaskData;->getWidth()I

    move-result v10

    move v11, v3

    add-int/2addr v10, v11

    move v11, v3

    add-int/2addr v10, v11

    move v4, v10

    .line 188
    .local v4, "needW":I
    move-object v10, v1

    invoke-virtual {v10}, Lcom/sun/prism/impl/shape/MaskData;->getHeight()I

    move-result v10

    move v11, v3

    add-int/2addr v10, v11

    move v11, v3

    add-int/2addr v10, v11

    move v5, v10

    .line 189
    .local v5, "needH":I
    const/4 v10, 0x0

    move v6, v10

    .local v6, "texW":I
    const/4 v10, 0x0

    move v7, v10

    .line 191
    .local v7, "texH":I
    move-object v10, v0

    iget-object v10, v10, Lcom/sun/prism/impl/BaseContext;->maskTex:Lcom/sun/prism/Texture;

    if-eqz v10, :cond_0

    .line 192
    move-object v10, v0

    iget-object v10, v10, Lcom/sun/prism/impl/BaseContext;->maskTex:Lcom/sun/prism/Texture;

    invoke-interface {v10}, Lcom/sun/prism/Texture;->lock()V

    .line 193
    move-object v10, v0

    iget-object v10, v10, Lcom/sun/prism/impl/BaseContext;->maskTex:Lcom/sun/prism/Texture;

    invoke-interface {v10}, Lcom/sun/prism/Texture;->isSurfaceLost()Z

    move-result v10

    if-eqz v10, :cond_7

    .line 194
    move-object v10, v0

    const/4 v11, 0x0

    iput-object v11, v10, Lcom/sun/prism/impl/BaseContext;->maskTex:Lcom/sun/prism/Texture;

    .line 201
    :cond_0
    :goto_1
    move-object v10, v0

    iget-object v10, v10, Lcom/sun/prism/impl/BaseContext;->maskTex:Lcom/sun/prism/Texture;

    if-eqz v10, :cond_1

    move v10, v6

    move v11, v4

    if-lt v10, v11, :cond_1

    move v10, v7

    move v11, v5

    if-ge v10, v11, :cond_5

    .line 202
    :cond_1
    move-object v10, v0

    iget-object v10, v10, Lcom/sun/prism/impl/BaseContext;->maskTex:Lcom/sun/prism/Texture;

    if-eqz v10, :cond_2

    .line 203
    move-object v10, v0

    invoke-virtual {v10}, Lcom/sun/prism/impl/BaseContext;->flushVertexBuffer()V

    .line 204
    move-object v10, v0

    iget-object v10, v10, Lcom/sun/prism/impl/BaseContext;->maskTex:Lcom/sun/prism/Texture;

    invoke-interface {v10}, Lcom/sun/prism/Texture;->dispose()V

    .line 205
    move-object v10, v0

    const/4 v11, 0x0

    iput-object v11, v10, Lcom/sun/prism/impl/BaseContext;->maskTex:Lcom/sun/prism/Texture;

    .line 207
    :cond_2
    move-object v10, v0

    const/4 v11, 0x0

    iput-object v11, v10, Lcom/sun/prism/impl/BaseContext;->maskBuffer:Ljava/nio/ByteBuffer;

    .line 213
    const/16 v10, 0x400

    move v11, v4

    move v12, v6

    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v10

    move v8, v10

    .line 214
    .local v8, "newTexW":I
    const/16 v10, 0x400

    move v11, v5

    move v12, v7

    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v10

    move v9, v10

    .line 216
    .local v9, "newTexH":I
    move-object v10, v0

    move-object v11, v0

    invoke-virtual {v11}, Lcom/sun/prism/impl/BaseContext;->getResourceFactory()Lcom/sun/prism/ResourceFactory;

    move-result-object v11

    move v12, v8

    move v13, v9

    sget-object v14, Lcom/sun/prism/Texture$WrapMode;->CLAMP_NOT_NEEDED:Lcom/sun/prism/Texture$WrapMode;

    .line 217
    invoke-interface {v11, v12, v13, v14}, Lcom/sun/prism/ResourceFactory;->createMaskTexture(IILcom/sun/prism/Texture$WrapMode;)Lcom/sun/prism/Texture;

    move-result-object v11

    iput-object v11, v10, Lcom/sun/prism/impl/BaseContext;->maskTex:Lcom/sun/prism/Texture;

    .line 218
    move-object v10, v0

    move v11, v8

    move v12, v9

    mul-int/2addr v11, v12

    invoke-static {v11}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v11

    iput-object v11, v10, Lcom/sun/prism/impl/BaseContext;->maskBuffer:Ljava/nio/ByteBuffer;

    .line 219
    move-object v10, v0

    iget-object v10, v10, Lcom/sun/prism/impl/BaseContext;->clearBuffer:Ljava/nio/ByteBuffer;

    if-eqz v10, :cond_3

    move-object v10, v0

    iget-object v10, v10, Lcom/sun/prism/impl/BaseContext;->clearBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v10

    move v11, v8

    if-ge v10, v11, :cond_4

    .line 220
    :cond_3
    move-object v10, v0

    const/4 v11, 0x0

    iput-object v11, v10, Lcom/sun/prism/impl/BaseContext;->clearBuffer:Ljava/nio/ByteBuffer;

    .line 221
    move-object v10, v0

    move v11, v8

    invoke-static {v11}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v11

    iput-object v11, v10, Lcom/sun/prism/impl/BaseContext;->clearBuffer:Ljava/nio/ByteBuffer;

    .line 223
    :cond_4
    move-object v10, v0

    move-object v11, v0

    move-object v12, v0

    move-object v13, v0

    const/4 v14, 0x0

    move-object/from16 v16, v13

    move/from16 v17, v14

    move/from16 v13, v17

    move-object/from16 v14, v16

    move/from16 v15, v17

    iput v15, v14, Lcom/sun/prism/impl/BaseContext;->highMaskCol:I

    move-object/from16 v16, v12

    move/from16 v17, v13

    move/from16 v12, v17

    move-object/from16 v13, v16

    move/from16 v14, v17

    iput v14, v13, Lcom/sun/prism/impl/BaseContext;->nextMaskRow:I

    move-object/from16 v16, v11

    move/from16 v17, v12

    move/from16 v11, v17

    move-object/from16 v12, v16

    move/from16 v13, v17

    iput v13, v12, Lcom/sun/prism/impl/BaseContext;->curMaskCol:I

    iput v11, v10, Lcom/sun/prism/impl/BaseContext;->curMaskRow:I

    .line 226
    .end local v8    # "newTexW":I
    .end local v9    # "newTexH":I
    :cond_5
    move-object v10, v0

    iget-object v10, v10, Lcom/sun/prism/impl/BaseContext;->maskTex:Lcom/sun/prism/Texture;

    move-object v0, v10

    .end local v0    # "this":Lcom/sun/prism/impl/BaseContext;
    return-object v0

    .line 186
    .end local v3    # "pad":I
    .end local v4    # "needW":I
    .end local v5    # "needH":I
    .end local v6    # "texW":I
    .end local v7    # "texH":I
    .restart local v0    # "this":Lcom/sun/prism/impl/BaseContext;
    :cond_6
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 196
    .restart local v3    # "pad":I
    .restart local v4    # "needW":I
    .restart local v5    # "needH":I
    .restart local v6    # "texW":I
    .restart local v7    # "texH":I
    :cond_7
    move-object v10, v0

    iget-object v10, v10, Lcom/sun/prism/impl/BaseContext;->maskTex:Lcom/sun/prism/Texture;

    invoke-interface {v10}, Lcom/sun/prism/Texture;->getContentWidth()I

    move-result v10

    move v6, v10

    .line 197
    move-object v10, v0

    iget-object v10, v10, Lcom/sun/prism/impl/BaseContext;->maskTex:Lcom/sun/prism/Texture;

    invoke-interface {v10}, Lcom/sun/prism/Texture;->getContentHeight()I

    move-result v10

    move v7, v10

    goto/16 :goto_1
.end method

.method public abstract validatePaintOp(Lcom/sun/prism/impl/BaseGraphics;Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/prism/Texture;FFFF)V
.end method

.method public abstract validateTextureOp(Lcom/sun/prism/impl/BaseGraphics;Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/prism/Texture;Lcom/sun/prism/PixelFormat;)V
.end method
