.class public abstract Lcom/sun/prism/impl/BaseResourceFactory;
.super Ljava/lang/Object;
.source "BaseResourceFactory.java"

# interfaces
.implements Lcom/sun/prism/ResourceFactory;


# instance fields
.field private final clampTexCache:Ljava/util/Map;
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

.field private glyphTexture:Lcom/sun/prism/Texture;

.field private final listenerMap:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Lcom/sun/prism/ResourceFactoryListener;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mipmapTexCache:Ljava/util/Map;
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

.field private regionTexture:Lcom/sun/prism/Texture;

.field private final repeatTexCache:Ljava/util/Map;
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

.field private superShaderAllowed:Z


# direct methods
.method public constructor <init>()V
    .locals 7

    .prologue
    .line 55
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/BaseResourceFactory;
    move-object v1, v0

    new-instance v2, Ljava/util/WeakHashMap;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    invoke-direct {v3}, Ljava/util/WeakHashMap;-><init>()V

    new-instance v3, Ljava/util/WeakHashMap;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Ljava/util/WeakHashMap;-><init>()V

    new-instance v4, Ljava/util/WeakHashMap;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/util/WeakHashMap;-><init>()V

    invoke-direct {v1, v2, v3, v4}, Lcom/sun/prism/impl/BaseResourceFactory;-><init>(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V

    .line 58
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/sun/prism/Image;",
            "Lcom/sun/prism/Texture;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Lcom/sun/prism/Image;",
            "Lcom/sun/prism/Texture;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Lcom/sun/prism/Image;",
            "Lcom/sun/prism/Texture;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 63
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/BaseResourceFactory;
    move-object v1, p1

    .local v1, "clampTexCache":Ljava/util/Map;, "Ljava/util/Map<Lcom/sun/prism/Image;Lcom/sun/prism/Texture;>;"
    move-object v2, p2

    .local v2, "repeatTexCache":Ljava/util/Map;, "Ljava/util/Map<Lcom/sun/prism/Image;Lcom/sun/prism/Texture;>;"
    move-object v3, p3

    .local v3, "mipmapTexCache":Ljava/util/Map;, "Ljava/util/Map<Lcom/sun/prism/Image;Lcom/sun/prism/Texture;>;"
    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 47
    move-object v4, v0

    new-instance v5, Ljava/util/WeakHashMap;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v5, v4, Lcom/sun/prism/impl/BaseResourceFactory;->listenerMap:Ljava/util/WeakHashMap;

    .line 64
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/sun/prism/impl/BaseResourceFactory;->clampTexCache:Ljava/util/Map;

    .line 65
    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Lcom/sun/prism/impl/BaseResourceFactory;->repeatTexCache:Ljava/util/Map;

    .line 66
    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Lcom/sun/prism/impl/BaseResourceFactory;->mipmapTexCache:Ljava/util/Map;

    .line 67
    return-void
.end method

.method static sizeWithMipMap(IILcom/sun/prism/PixelFormat;)J
    .locals 12

    .prologue
    .line 139
    move v0, p0

    .local v0, "w":I
    move v1, p1

    .local v1, "h":I
    move-object v2, p2

    .local v2, "format":Lcom/sun/prism/PixelFormat;
    const-wide/16 v6, 0x0

    move-wide v3, v6

    .line 140
    .local v3, "size":J
    move-object v6, v2

    invoke-virtual {v6}, Lcom/sun/prism/PixelFormat;->getBytesPerPixelUnit()I

    move-result v6

    move v5, v6

    .line 141
    .local v5, "bytesPerPixel":I
    :goto_0
    move v6, v0

    const/4 v7, 0x1

    if-le v6, v7, :cond_0

    move v6, v1

    const/4 v7, 0x1

    if-le v6, v7, :cond_0

    .line 142
    move-wide v6, v3

    move v8, v0

    int-to-long v8, v8

    move v10, v1

    int-to-long v10, v10

    mul-long/2addr v8, v10

    add-long/2addr v6, v8

    move-wide v3, v6

    .line 143
    move v6, v0

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    const/4 v7, 0x1

    shr-int/lit8 v6, v6, 0x1

    move v0, v6

    .line 144
    move v6, v1

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    const/4 v7, 0x1

    shr-int/lit8 v6, v6, 0x1

    move v1, v6

    goto :goto_0

    .line 146
    :cond_0
    move-wide v6, v3

    const-wide/16 v8, 0x1

    add-long/2addr v6, v8

    move-wide v3, v6

    .line 147
    move-wide v6, v3

    move v8, v5

    int-to-long v8, v8

    mul-long/2addr v6, v8

    move-wide v0, v6

    .end local v0    # "w":I
    return-wide v0
.end method


# virtual methods
.method public addFactoryListener(Lcom/sun/prism/ResourceFactoryListener;)V
    .locals 5

    .prologue
    .line 70
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/BaseResourceFactory;
    move-object v1, p1

    .local v1, "l":Lcom/sun/prism/ResourceFactoryListener;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/prism/impl/BaseResourceFactory;->listenerMap:Ljava/util/WeakHashMap;

    move-object v3, v1

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2, v3, v4}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 71
    return-void
.end method

.method protected canClampToEdge()Z
    .locals 2

    .prologue
    .line 303
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/BaseResourceFactory;
    const/4 v1, 0x1

    move v0, v1

    .end local v0    # "this":Lcom/sun/prism/impl/BaseResourceFactory;
    return v0
.end method

.method protected canClampToZero()Z
    .locals 2

    .prologue
    .line 299
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/BaseResourceFactory;
    const/4 v1, 0x1

    move v0, v1

    .end local v0    # "this":Lcom/sun/prism/impl/BaseResourceFactory;
    return v0
.end method

.method protected canRepeat()Z
    .locals 2

    .prologue
    .line 307
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/BaseResourceFactory;
    const/4 v1, 0x1

    move v0, v1

    .end local v0    # "this":Lcom/sun/prism/impl/BaseResourceFactory;
    return v0
.end method

.method protected clearTextureCache()V
    .locals 3

    .prologue
    .line 84
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/BaseResourceFactory;
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/prism/impl/BaseResourceFactory;->clampTexCache:Ljava/util/Map;

    invoke-virtual {v1, v2}, Lcom/sun/prism/impl/BaseResourceFactory;->clearTextureCache(Ljava/util/Map;)V

    .line 85
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/prism/impl/BaseResourceFactory;->repeatTexCache:Ljava/util/Map;

    invoke-virtual {v1, v2}, Lcom/sun/prism/impl/BaseResourceFactory;->clearTextureCache(Ljava/util/Map;)V

    .line 86
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/prism/impl/BaseResourceFactory;->mipmapTexCache:Ljava/util/Map;

    invoke-virtual {v1, v2}, Lcom/sun/prism/impl/BaseResourceFactory;->clearTextureCache(Ljava/util/Map;)V

    .line 87
    return-void
.end method

.method protected clearTextureCache(Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/sun/prism/Image;",
            "Lcom/sun/prism/Texture;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 90
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/BaseResourceFactory;
    move-object v1, p1

    .local v1, "texCache":Ljava/util/Map;, "Ljava/util/Map<Lcom/sun/prism/Image;Lcom/sun/prism/Texture;>;"
    move-object v5, v1

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    move-object v2, v5

    .line 91
    .local v2, "texAll":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/sun/prism/Texture;>;"
    move-object v5, v2

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v3, v5

    :goto_0
    move-object v5, v3

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    move-object v5, v3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sun/prism/Texture;

    move-object v4, v5

    .line 92
    .local v4, "i":Lcom/sun/prism/Texture;
    move-object v5, v4

    invoke-interface {v5}, Lcom/sun/prism/Texture;->dispose()V

    .line 93
    goto :goto_0

    .line 94
    .end local v4    # "i":Lcom/sun/prism/Texture;
    :cond_0
    move-object v5, v1

    invoke-interface {v5}, Ljava/util/Map;->clear()V

    .line 95
    return-void
.end method

.method public createFloatTexture(II)Lcom/sun/prism/Texture;
    .locals 9

    .prologue
    .line 262
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/BaseResourceFactory;
    move v1, p1

    .local v1, "width":I
    move v2, p2

    .local v2, "height":I
    move-object v3, v0

    sget-object v4, Lcom/sun/prism/PixelFormat;->FLOAT_XYZW:Lcom/sun/prism/PixelFormat;

    sget-object v5, Lcom/sun/prism/Texture$Usage;->DEFAULT:Lcom/sun/prism/Texture$Usage;

    sget-object v6, Lcom/sun/prism/Texture$WrapMode;->CLAMP_TO_ZERO:Lcom/sun/prism/Texture$WrapMode;

    move v7, v1

    move v8, v2

    invoke-virtual/range {v3 .. v8}, Lcom/sun/prism/impl/BaseResourceFactory;->createTexture(Lcom/sun/prism/PixelFormat;Lcom/sun/prism/Texture$Usage;Lcom/sun/prism/Texture$WrapMode;II)Lcom/sun/prism/Texture;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lcom/sun/prism/impl/BaseResourceFactory;
    return-object v0
.end method

.method public createMaskTexture(IILcom/sun/prism/Texture$WrapMode;)Lcom/sun/prism/Texture;
    .locals 10

    .prologue
    .line 255
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/BaseResourceFactory;
    move v1, p1

    .local v1, "width":I
    move v2, p2

    .local v2, "height":I
    move-object v3, p3

    .local v3, "wrapMode":Lcom/sun/prism/Texture$WrapMode;
    move-object v4, v0

    sget-object v5, Lcom/sun/prism/PixelFormat;->BYTE_ALPHA:Lcom/sun/prism/PixelFormat;

    sget-object v6, Lcom/sun/prism/Texture$Usage;->DEFAULT:Lcom/sun/prism/Texture$Usage;

    move-object v7, v3

    move v8, v1

    move v9, v2

    invoke-virtual/range {v4 .. v9}, Lcom/sun/prism/impl/BaseResourceFactory;->createTexture(Lcom/sun/prism/PixelFormat;Lcom/sun/prism/Texture$Usage;Lcom/sun/prism/Texture$WrapMode;II)Lcom/sun/prism/Texture;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Lcom/sun/prism/impl/BaseResourceFactory;
    return-object v0
.end method

.method public createTexture(Lcom/sun/prism/Image;Lcom/sun/prism/Texture$Usage;Lcom/sun/prism/Texture$WrapMode;)Lcom/sun/prism/Texture;
    .locals 9

    .prologue
    .line 232
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/BaseResourceFactory;
    move-object v1, p1

    .local v1, "image":Lcom/sun/prism/Image;
    move-object v2, p2

    .local v2, "usageHint":Lcom/sun/prism/Texture$Usage;
    move-object v3, p3

    .local v3, "wrapMode":Lcom/sun/prism/Texture$WrapMode;
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    const/4 v8, 0x0

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/sun/prism/impl/BaseResourceFactory;->createTexture(Lcom/sun/prism/Image;Lcom/sun/prism/Texture$Usage;Lcom/sun/prism/Texture$WrapMode;Z)Lcom/sun/prism/Texture;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Lcom/sun/prism/impl/BaseResourceFactory;
    return-object v0
.end method

.method public createTexture(Lcom/sun/prism/Image;Lcom/sun/prism/Texture$Usage;Lcom/sun/prism/Texture$WrapMode;Z)Lcom/sun/prism/Texture;
    .locals 16

    .prologue
    .line 238
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/prism/impl/BaseResourceFactory;
    move-object/from16 v1, p1

    .local v1, "image":Lcom/sun/prism/Image;
    move-object/from16 v2, p2

    .local v2, "usageHint":Lcom/sun/prism/Texture$Usage;
    move-object/from16 v3, p3

    .local v3, "wrapMode":Lcom/sun/prism/Texture$WrapMode;
    move/from16 v4, p4

    .local v4, "useMipmap":Z
    move-object v9, v1

    invoke-virtual {v9}, Lcom/sun/prism/Image;->getPixelFormat()Lcom/sun/prism/PixelFormat;

    move-result-object v9

    move-object v5, v9

    .line 239
    .local v5, "format":Lcom/sun/prism/PixelFormat;
    move-object v9, v1

    invoke-virtual {v9}, Lcom/sun/prism/Image;->getWidth()I

    move-result v9

    move v6, v9

    .line 240
    .local v6, "w":I
    move-object v9, v1

    invoke-virtual {v9}, Lcom/sun/prism/Image;->getHeight()I

    move-result v9

    move v7, v9

    .line 242
    .local v7, "h":I
    move-object v9, v0

    move-object v10, v5

    move-object v11, v2

    move-object v12, v3

    move v13, v6

    move v14, v7

    move v15, v4

    invoke-virtual/range {v9 .. v15}, Lcom/sun/prism/impl/BaseResourceFactory;->createTexture(Lcom/sun/prism/PixelFormat;Lcom/sun/prism/Texture$Usage;Lcom/sun/prism/Texture$WrapMode;IIZ)Lcom/sun/prism/Texture;

    move-result-object v9

    move-object v8, v9

    .line 246
    .local v8, "tex":Lcom/sun/prism/Texture;
    move-object v9, v8

    if-eqz v9, :cond_0

    .line 247
    move-object v9, v8

    move-object v10, v1

    const/4 v11, 0x0

    const/4 v12, 0x0

    move v13, v6

    move v14, v7

    const/4 v15, 0x1

    invoke-interface/range {v9 .. v15}, Lcom/sun/prism/Texture;->update(Lcom/sun/prism/Image;IIIIZ)V

    .line 248
    move-object v9, v8

    invoke-interface {v9}, Lcom/sun/prism/Texture;->contentsUseful()V

    .line 250
    :cond_0
    move-object v9, v8

    move-object v0, v9

    .end local v0    # "this":Lcom/sun/prism/impl/BaseResourceFactory;
    return-object v0
.end method

.method public getCachedTexture(Lcom/sun/prism/Image;Lcom/sun/prism/Texture$WrapMode;)Lcom/sun/prism/Texture;
    .locals 7

    .prologue
    .line 152
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/BaseResourceFactory;
    move-object v1, p1

    .local v1, "image":Lcom/sun/prism/Image;
    move-object v2, p2

    .local v2, "wrapMode":Lcom/sun/prism/Texture$WrapMode;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lcom/sun/prism/impl/BaseResourceFactory;->getCachedTexture(Lcom/sun/prism/Image;Lcom/sun/prism/Texture$WrapMode;Z)Lcom/sun/prism/Texture;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lcom/sun/prism/impl/BaseResourceFactory;
    return-object v0
.end method

.method public getCachedTexture(Lcom/sun/prism/Image;Lcom/sun/prism/Texture$WrapMode;Z)Lcom/sun/prism/Texture;
    .locals 20

    .prologue
    .line 157
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/prism/impl/BaseResourceFactory;
    move-object/from16 v1, p1

    .local v1, "image":Lcom/sun/prism/Image;
    move-object/from16 v2, p2

    .local v2, "wrapMode":Lcom/sun/prism/Texture$WrapMode;
    move/from16 v3, p3

    .local v3, "useMipmap":Z
    move-object v12, v1

    if-nez v12, :cond_0

    .line 158
    new-instance v12, Ljava/lang/IllegalArgumentException;

    move-object/from16 v19, v12

    move-object/from16 v12, v19

    move-object/from16 v13, v19

    const-string v14, "Image must be non-null"

    invoke-direct {v13, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 161
    :cond_0
    move-object v12, v2

    sget-object v13, Lcom/sun/prism/Texture$WrapMode;->CLAMP_TO_EDGE:Lcom/sun/prism/Texture$WrapMode;

    if-ne v12, v13, :cond_5

    .line 163
    move v12, v3

    if-eqz v12, :cond_1

    .line 164
    new-instance v12, Ljava/lang/IllegalArgumentException;

    move-object/from16 v19, v12

    move-object/from16 v12, v19

    move-object/from16 v13, v19

    new-instance v14, Ljava/lang/StringBuilder;

    move-object/from16 v19, v14

    move-object/from16 v14, v19

    move-object/from16 v15, v19

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Mipmap not supported with CLAMP mode: useMipmap = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move v15, v3

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", wrapMode = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object v15, v2

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 167
    :cond_1
    move-object v12, v0

    iget-object v12, v12, Lcom/sun/prism/impl/BaseResourceFactory;->clampTexCache:Ljava/util/Map;

    move-object v4, v12

    .line 173
    .local v4, "texCache":Ljava/util/Map;, "Ljava/util/Map<Lcom/sun/prism/Image;Lcom/sun/prism/Texture;>;"
    :goto_0
    move-object v12, v4

    move-object v13, v1

    invoke-interface {v12, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/sun/prism/Texture;

    move-object v5, v12

    .line 174
    .local v5, "tex":Lcom/sun/prism/Texture;
    move-object v12, v5

    if-eqz v12, :cond_2

    .line 175
    move-object v12, v5

    invoke-interface {v12}, Lcom/sun/prism/Texture;->lock()V

    .line 176
    move-object v12, v5

    invoke-interface {v12}, Lcom/sun/prism/Texture;->isSurfaceLost()Z

    move-result v12

    if-eqz v12, :cond_2

    .line 177
    move-object v12, v4

    move-object v13, v1

    invoke-interface {v12, v13}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    .line 178
    const/4 v12, 0x0

    move-object v5, v12

    .line 181
    :cond_2
    move-object v12, v1

    invoke-virtual {v12}, Lcom/sun/prism/Image;->getSerial()I

    move-result v12

    move v6, v12

    .line 184
    .local v6, "serial":I
    move v12, v3

    if-nez v12, :cond_4

    move-object v12, v5

    if-nez v12, :cond_4

    .line 186
    move-object v12, v2

    sget-object v13, Lcom/sun/prism/Texture$WrapMode;->REPEAT:Lcom/sun/prism/Texture$WrapMode;

    if-ne v12, v13, :cond_8

    move-object v12, v0

    iget-object v12, v12, Lcom/sun/prism/impl/BaseResourceFactory;->clampTexCache:Ljava/util/Map;

    :goto_1
    move-object v13, v1

    .line 188
    invoke-interface {v12, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/sun/prism/Texture;

    move-object v7, v12

    .line 189
    .local v7, "othertex":Lcom/sun/prism/Texture;
    move-object v12, v7

    if-eqz v12, :cond_4

    .line 190
    move-object v12, v7

    invoke-interface {v12}, Lcom/sun/prism/Texture;->lock()V

    .line 191
    move-object v12, v7

    invoke-interface {v12}, Lcom/sun/prism/Texture;->isSurfaceLost()Z

    move-result v12

    if-nez v12, :cond_3

    .line 194
    move-object v12, v7

    move-object v13, v2

    invoke-interface {v12, v13}, Lcom/sun/prism/Texture;->getSharedTexture(Lcom/sun/prism/Texture$WrapMode;)Lcom/sun/prism/Texture;

    move-result-object v12

    move-object v5, v12

    .line 195
    move-object v12, v5

    if-eqz v12, :cond_3

    .line 199
    move-object v12, v5

    invoke-interface {v12}, Lcom/sun/prism/Texture;->contentsUseful()V

    .line 200
    move-object v12, v4

    move-object v13, v1

    move-object v14, v5

    invoke-interface {v12, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    .line 203
    :cond_3
    move-object v12, v7

    invoke-interface {v12}, Lcom/sun/prism/Texture;->unlock()V

    .line 207
    .end local v7    # "othertex":Lcom/sun/prism/Texture;
    :cond_4
    move-object v12, v5

    if-nez v12, :cond_c

    .line 208
    move-object v12, v1

    invoke-virtual {v12}, Lcom/sun/prism/Image;->getWidth()I

    move-result v12

    move v7, v12

    .line 209
    .local v7, "w":I
    move-object v12, v1

    invoke-virtual {v12}, Lcom/sun/prism/Image;->getHeight()I

    move-result v12

    move v8, v12

    .line 210
    .local v8, "h":I
    move-object v12, v0

    invoke-virtual {v12}, Lcom/sun/prism/impl/BaseResourceFactory;->getTextureResourcePool()Lcom/sun/prism/impl/TextureResourcePool;

    move-result-object v12

    move-object v9, v12

    .line 212
    .local v9, "pool":Lcom/sun/prism/impl/TextureResourcePool;
    move v12, v3

    if-eqz v12, :cond_9

    move v12, v7

    move v13, v8

    move-object v14, v1

    invoke-virtual {v14}, Lcom/sun/prism/Image;->getPixelFormat()Lcom/sun/prism/PixelFormat;

    move-result-object v14

    invoke-static {v12, v13, v14}, Lcom/sun/prism/impl/BaseResourceFactory;->sizeWithMipMap(IILcom/sun/prism/PixelFormat;)J

    move-result-wide v12

    .line 213
    :goto_2
    move-wide v10, v12

    .line 214
    .local v10, "size":J
    move-object v12, v9

    move-wide v13, v10

    invoke-interface {v12, v13, v14}, Lcom/sun/prism/impl/TextureResourcePool;->prepareForAllocation(J)Z

    move-result v12

    if-nez v12, :cond_a

    .line 215
    const/4 v12, 0x0

    move-object v0, v12

    .line 227
    .end local v0    # "this":Lcom/sun/prism/impl/BaseResourceFactory;
    .end local v7    # "w":I
    .end local v8    # "h":I
    .end local v9    # "pool":Lcom/sun/prism/impl/TextureResourcePool;
    .end local v10    # "size":J
    :goto_3
    return-object v0

    .line 168
    .end local v4    # "texCache":Ljava/util/Map;, "Ljava/util/Map<Lcom/sun/prism/Image;Lcom/sun/prism/Texture;>;"
    .end local v5    # "tex":Lcom/sun/prism/Texture;
    .end local v6    # "serial":I
    .restart local v0    # "this":Lcom/sun/prism/impl/BaseResourceFactory;
    :cond_5
    move-object v12, v2

    sget-object v13, Lcom/sun/prism/Texture$WrapMode;->REPEAT:Lcom/sun/prism/Texture$WrapMode;

    if-ne v12, v13, :cond_7

    .line 169
    move v12, v3

    if-eqz v12, :cond_6

    move-object v12, v0

    iget-object v12, v12, Lcom/sun/prism/impl/BaseResourceFactory;->mipmapTexCache:Ljava/util/Map;

    :goto_4
    move-object v4, v12

    .restart local v4    # "texCache":Ljava/util/Map;, "Ljava/util/Map<Lcom/sun/prism/Image;Lcom/sun/prism/Texture;>;"
    goto/16 :goto_0

    .end local v4    # "texCache":Ljava/util/Map;, "Ljava/util/Map<Lcom/sun/prism/Image;Lcom/sun/prism/Texture;>;"
    :cond_6
    move-object v12, v0

    iget-object v12, v12, Lcom/sun/prism/impl/BaseResourceFactory;->repeatTexCache:Ljava/util/Map;

    goto :goto_4

    .line 171
    :cond_7
    new-instance v12, Ljava/lang/IllegalArgumentException;

    move-object/from16 v19, v12

    move-object/from16 v12, v19

    move-object/from16 v13, v19

    new-instance v14, Ljava/lang/StringBuilder;

    move-object/from16 v19, v14

    move-object/from16 v14, v19

    move-object/from16 v15, v19

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "no caching for "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object v15, v2

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 186
    .restart local v4    # "texCache":Ljava/util/Map;, "Ljava/util/Map<Lcom/sun/prism/Image;Lcom/sun/prism/Texture;>;"
    .restart local v5    # "tex":Lcom/sun/prism/Texture;
    .restart local v6    # "serial":I
    :cond_8
    move-object v12, v0

    iget-object v12, v12, Lcom/sun/prism/impl/BaseResourceFactory;->repeatTexCache:Ljava/util/Map;

    goto/16 :goto_1

    .line 212
    .restart local v7    # "w":I
    .restart local v8    # "h":I
    .restart local v9    # "pool":Lcom/sun/prism/impl/TextureResourcePool;
    :cond_9
    move-object v12, v9

    move v13, v7

    move v14, v8

    move-object v15, v1

    .line 213
    invoke-virtual {v15}, Lcom/sun/prism/Image;->getPixelFormat()Lcom/sun/prism/PixelFormat;

    move-result-object v15

    invoke-interface {v12, v13, v14, v15}, Lcom/sun/prism/impl/TextureResourcePool;->estimateTextureSize(IILcom/sun/prism/PixelFormat;)J

    move-result-wide v12

    goto :goto_2

    .line 218
    .restart local v10    # "size":J
    :cond_a
    move-object v12, v0

    move-object v13, v1

    sget-object v14, Lcom/sun/prism/Texture$Usage;->DEFAULT:Lcom/sun/prism/Texture$Usage;

    move-object v15, v2

    move/from16 v16, v3

    invoke-virtual/range {v12 .. v16}, Lcom/sun/prism/impl/BaseResourceFactory;->createTexture(Lcom/sun/prism/Image;Lcom/sun/prism/Texture$Usage;Lcom/sun/prism/Texture$WrapMode;Z)Lcom/sun/prism/Texture;

    move-result-object v12

    move-object v5, v12

    .line 219
    move-object v12, v5

    if-eqz v12, :cond_b

    .line 220
    move-object v12, v5

    move v13, v6

    invoke-interface {v12, v13}, Lcom/sun/prism/Texture;->setLastImageSerial(I)V

    .line 221
    move-object v12, v4

    move-object v13, v1

    move-object v14, v5

    invoke-interface {v12, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    .line 223
    .line 227
    .end local v7    # "w":I
    .end local v8    # "h":I
    .end local v9    # "pool":Lcom/sun/prism/impl/TextureResourcePool;
    .end local v10    # "size":J
    :cond_b
    :goto_5
    move-object v12, v5

    move-object v0, v12

    goto :goto_3

    .line 223
    :cond_c
    move-object v12, v5

    invoke-interface {v12}, Lcom/sun/prism/Texture;->getLastImageSerial()I

    move-result v12

    move v13, v6

    if-eq v12, v13, :cond_b

    .line 224
    move-object v12, v5

    move-object v13, v1

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v16, v1

    invoke-virtual/range {v16 .. v16}, Lcom/sun/prism/Image;->getWidth()I

    move-result v16

    move-object/from16 v17, v1

    invoke-virtual/range {v17 .. v17}, Lcom/sun/prism/Image;->getHeight()I

    move-result v17

    const/16 v18, 0x0

    invoke-interface/range {v12 .. v18}, Lcom/sun/prism/Texture;->update(Lcom/sun/prism/Image;IIIIZ)V

    .line 225
    move-object v12, v5

    move v13, v6

    invoke-interface {v12, v13}, Lcom/sun/prism/Texture;->setLastImageSerial(I)V

    goto :goto_5
.end method

.method protected getFactoryListeners()[Lcom/sun/prism/ResourceFactoryListener;
    .locals 3

    .prologue
    .line 98
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/BaseResourceFactory;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/prism/impl/BaseResourceFactory;->listenerMap:Ljava/util/WeakHashMap;

    invoke-virtual {v1}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Lcom/sun/prism/ResourceFactoryListener;

    invoke-interface {v1, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/sun/prism/ResourceFactoryListener;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/prism/impl/BaseResourceFactory;
    return-object v0
.end method

.method public getGlyphTexture()Lcom/sun/prism/Texture;
    .locals 2

    .prologue
    .line 290
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/BaseResourceFactory;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/prism/impl/BaseResourceFactory;->glyphTexture:Lcom/sun/prism/Texture;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/prism/impl/BaseResourceFactory;
    return-object v0
.end method

.method public getRegionTexture()Lcom/sun/prism/Texture;
    .locals 2

    .prologue
    .line 277
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/BaseResourceFactory;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/prism/impl/BaseResourceFactory;->regionTexture:Lcom/sun/prism/Texture;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/prism/impl/BaseResourceFactory;
    return-object v0
.end method

.method public isDeviceReady()Z
    .locals 2

    .prologue
    .line 80
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/BaseResourceFactory;
    const/4 v1, 0x1

    move v0, v1

    .end local v0    # "this":Lcom/sun/prism/impl/BaseResourceFactory;
    return v0
.end method

.method public isSuperShaderAllowed()Z
    .locals 2

    .prologue
    .line 295
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/BaseResourceFactory;
    move-object v1, v0

    iget-boolean v1, v1, Lcom/sun/prism/impl/BaseResourceFactory;->superShaderAllowed:Z

    move v0, v1

    .end local v0    # "this":Lcom/sun/prism/impl/BaseResourceFactory;
    return v0
.end method

.method public isWrapModeSupported(Lcom/sun/prism/Texture$WrapMode;)Z
    .locals 7

    .prologue
    .line 312
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/BaseResourceFactory;
    move-object v1, p1

    .local v1, "mode":Lcom/sun/prism/Texture$WrapMode;
    sget-object v2, Lcom/sun/prism/impl/BaseResourceFactory$1;->$SwitchMap$com$sun$prism$Texture$WrapMode:[I

    move-object v3, v1

    invoke-virtual {v3}, Lcom/sun/prism/Texture$WrapMode;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 326
    new-instance v2, Ljava/lang/InternalError;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unrecognized wrap mode: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v2

    .line 314
    :pswitch_0
    const/4 v2, 0x1

    move v0, v2

    .line 320
    .end local v0    # "this":Lcom/sun/prism/impl/BaseResourceFactory;
    :goto_0
    return v0

    .line 316
    .restart local v0    # "this":Lcom/sun/prism/impl/BaseResourceFactory;
    :pswitch_1
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/prism/impl/BaseResourceFactory;->canClampToEdge()Z

    move-result v2

    move v0, v2

    goto :goto_0

    .line 318
    :pswitch_2
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/prism/impl/BaseResourceFactory;->canRepeat()Z

    move-result v2

    move v0, v2

    goto :goto_0

    .line 320
    :pswitch_3
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/prism/impl/BaseResourceFactory;->canClampToZero()Z

    move-result v2

    move v0, v2

    goto :goto_0

    .line 324
    :pswitch_4
    new-instance v2, Ljava/lang/InternalError;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const-string v4, "Cannot test support for simulated wrap modes"

    invoke-direct {v3, v4}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v2

    .line 312
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method protected notifyReleased()V
    .locals 8

    .prologue
    .line 124
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/BaseResourceFactory;
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/prism/impl/BaseResourceFactory;->clampTexCache:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->clear()V

    .line 125
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/prism/impl/BaseResourceFactory;->repeatTexCache:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->clear()V

    .line 126
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/prism/impl/BaseResourceFactory;->mipmapTexCache:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->clear()V

    .line 130
    move-object v6, v0

    invoke-virtual {v6}, Lcom/sun/prism/impl/BaseResourceFactory;->getFactoryListeners()[Lcom/sun/prism/ResourceFactoryListener;

    move-result-object v6

    move-object v1, v6

    .line 131
    .local v1, "notifyList":[Lcom/sun/prism/ResourceFactoryListener;
    move-object v6, v1

    move-object v2, v6

    move-object v6, v2

    array-length v6, v6

    move v3, v6

    const/4 v6, 0x0

    move v4, v6

    :goto_0
    move v6, v4

    move v7, v3

    if-ge v6, v7, :cond_1

    move-object v6, v2

    move v7, v4

    aget-object v6, v6, v7

    move-object v5, v6

    .line 132
    .local v5, "listener":Lcom/sun/prism/ResourceFactoryListener;
    const/4 v6, 0x0

    move-object v7, v5

    if-eq v6, v7, :cond_0

    .line 133
    move-object v6, v5

    invoke-interface {v6}, Lcom/sun/prism/ResourceFactoryListener;->factoryReleased()V

    .line 131
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 136
    .end local v5    # "listener":Lcom/sun/prism/ResourceFactoryListener;
    :cond_1
    return-void
.end method

.method protected notifyReset()V
    .locals 8

    .prologue
    .line 106
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/BaseResourceFactory;
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/prism/impl/BaseResourceFactory;->clampTexCache:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->clear()V

    .line 107
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/prism/impl/BaseResourceFactory;->repeatTexCache:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->clear()V

    .line 108
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/prism/impl/BaseResourceFactory;->mipmapTexCache:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->clear()V

    .line 112
    move-object v6, v0

    invoke-virtual {v6}, Lcom/sun/prism/impl/BaseResourceFactory;->getFactoryListeners()[Lcom/sun/prism/ResourceFactoryListener;

    move-result-object v6

    move-object v1, v6

    .line 113
    .local v1, "notifyList":[Lcom/sun/prism/ResourceFactoryListener;
    move-object v6, v1

    move-object v2, v6

    move-object v6, v2

    array-length v6, v6

    move v3, v6

    const/4 v6, 0x0

    move v4, v6

    :goto_0
    move v6, v4

    move v7, v3

    if-ge v6, v7, :cond_1

    move-object v6, v2

    move v7, v4

    aget-object v6, v6, v7

    move-object v5, v6

    .line 114
    .local v5, "listener":Lcom/sun/prism/ResourceFactoryListener;
    const/4 v6, 0x0

    move-object v7, v5

    if-eq v6, v7, :cond_0

    .line 115
    move-object v6, v5

    invoke-interface {v6}, Lcom/sun/prism/ResourceFactoryListener;->factoryReset()V

    .line 113
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 118
    .end local v5    # "listener":Lcom/sun/prism/ResourceFactoryListener;
    :cond_1
    return-void
.end method

.method public removeFactoryListener(Lcom/sun/prism/ResourceFactoryListener;)V
    .locals 4

    .prologue
    .line 76
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/BaseResourceFactory;
    move-object v1, p1

    .local v1, "l":Lcom/sun/prism/ResourceFactoryListener;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/prism/impl/BaseResourceFactory;->listenerMap:Ljava/util/WeakHashMap;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 77
    return-void
.end method

.method public setGlyphTexture(Lcom/sun/prism/Texture;)V
    .locals 4

    .prologue
    .line 282
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/BaseResourceFactory;
    move-object v1, p1

    .local v1, "texture":Lcom/sun/prism/Texture;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/prism/impl/BaseResourceFactory;->glyphTexture:Lcom/sun/prism/Texture;

    .line 283
    move-object v2, v0

    sget-boolean v3, Lcom/sun/prism/impl/PrismSettings;->superShader:Z

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/prism/impl/BaseResourceFactory;->regionTexture:Lcom/sun/prism/Texture;

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/prism/impl/BaseResourceFactory;->glyphTexture:Lcom/sun/prism/Texture;

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    iput-boolean v3, v2, Lcom/sun/prism/impl/BaseResourceFactory;->superShaderAllowed:Z

    .line 286
    return-void

    .line 283
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public setRegionTexture(Lcom/sun/prism/Texture;)V
    .locals 4

    .prologue
    .line 269
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/BaseResourceFactory;
    move-object v1, p1

    .local v1, "texture":Lcom/sun/prism/Texture;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/prism/impl/BaseResourceFactory;->regionTexture:Lcom/sun/prism/Texture;

    .line 270
    move-object v2, v0

    sget-boolean v3, Lcom/sun/prism/impl/PrismSettings;->superShader:Z

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/prism/impl/BaseResourceFactory;->regionTexture:Lcom/sun/prism/Texture;

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/prism/impl/BaseResourceFactory;->glyphTexture:Lcom/sun/prism/Texture;

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    iput-boolean v3, v2, Lcom/sun/prism/impl/BaseResourceFactory;->superShaderAllowed:Z

    .line 273
    return-void

    .line 270
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method
