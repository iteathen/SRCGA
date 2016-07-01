.class public Lcom/sun/scenario/effect/FloatMap;
.super Ljava/lang/Object;
.source "FloatMap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/scenario/effect/FloatMap$Entry;
    }
.end annotation


# instance fields
.field private final buf:Ljava/nio/FloatBuffer;

.field private cache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/sun/scenario/effect/FilterContext;",
            "Lcom/sun/scenario/effect/FloatMap$Entry;",
            ">;"
        }
    .end annotation
.end field

.field private cacheValid:Z

.field private final height:I

.field private final width:I


# direct methods
.method public constructor <init>(II)V
    .locals 8

    .prologue
    .line 52
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/FloatMap;
    move v1, p1

    .local v1, "width":I
    move v2, p2

    .local v2, "height":I
    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 53
    move v4, v1

    if-lez v4, :cond_0

    move v4, v1

    const/16 v5, 0x1000

    if-gt v4, v5, :cond_0

    move v4, v2

    if-lez v4, :cond_0

    move v4, v2

    const/16 v5, 0x1000

    if-le v4, v5, :cond_1

    .line 54
    :cond_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    const-string v6, "Width and height must be in the range [1, 4096]"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 56
    :cond_1
    move-object v4, v0

    move v5, v1

    iput v5, v4, Lcom/sun/scenario/effect/FloatMap;->width:I

    .line 57
    move-object v4, v0

    move v5, v2

    iput v5, v4, Lcom/sun/scenario/effect/FloatMap;->height:I

    .line 58
    move v4, v1

    move v5, v2

    mul-int/2addr v4, v5

    const/4 v5, 0x4

    mul-int/lit8 v4, v4, 0x4

    move v3, v4

    .line 67
    .local v3, "size":I
    move-object v4, v0

    move v5, v3

    new-array v5, v5, [F

    invoke-static {v5}, Ljava/nio/FloatBuffer;->wrap([F)Ljava/nio/FloatBuffer;

    move-result-object v5

    iput-object v5, v4, Lcom/sun/scenario/effect/FloatMap;->buf:Ljava/nio/FloatBuffer;

    .line 68
    return-void
.end method


# virtual methods
.method public getAccelData(Lcom/sun/scenario/effect/FilterContext;)Lcom/sun/scenario/effect/LockableResource;
    .locals 9

    .prologue
    .line 197
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/FloatMap;
    move-object v1, p1

    .local v1, "fctx":Lcom/sun/scenario/effect/FilterContext;
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/scenario/effect/FloatMap;->cache:Ljava/util/Map;

    if-nez v5, :cond_4

    .line 198
    move-object v5, v0

    new-instance v6, Ljava/util/HashMap;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    iput-object v6, v5, Lcom/sun/scenario/effect/FloatMap;->cache:Ljava/util/Map;

    .line 210
    :cond_0
    :goto_0
    move-object v5, v1

    invoke-static {v5}, Lcom/sun/scenario/effect/impl/Renderer;->getRenderer(Lcom/sun/scenario/effect/FilterContext;)Lcom/sun/scenario/effect/impl/Renderer;

    move-result-object v5

    move-object v2, v5

    .line 211
    .local v2, "renderer":Lcom/sun/scenario/effect/impl/Renderer;
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/scenario/effect/FloatMap;->cache:Ljava/util/Map;

    move-object v6, v1

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sun/scenario/effect/FloatMap$Entry;

    move-object v3, v5

    .line 212
    .local v3, "entry":Lcom/sun/scenario/effect/FloatMap$Entry;
    move-object v5, v3

    if-eqz v5, :cond_1

    .line 213
    move-object v5, v3

    iget-object v5, v5, Lcom/sun/scenario/effect/FloatMap$Entry;->texture:Lcom/sun/scenario/effect/LockableResource;

    invoke-interface {v5}, Lcom/sun/scenario/effect/LockableResource;->lock()V

    .line 214
    move-object v5, v3

    iget-object v5, v5, Lcom/sun/scenario/effect/FloatMap$Entry;->texture:Lcom/sun/scenario/effect/LockableResource;

    invoke-interface {v5}, Lcom/sun/scenario/effect/LockableResource;->isLost()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 215
    move-object v5, v3

    iget-object v5, v5, Lcom/sun/scenario/effect/FloatMap$Entry;->texture:Lcom/sun/scenario/effect/LockableResource;

    invoke-interface {v5}, Lcom/sun/scenario/effect/LockableResource;->unlock()V

    .line 216
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/scenario/effect/FloatMap;->cache:Ljava/util/Map;

    move-object v6, v1

    invoke-interface {v5, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 217
    const/4 v5, 0x0

    move-object v3, v5

    .line 220
    :cond_1
    move-object v5, v3

    if-nez v5, :cond_2

    .line 221
    move-object v5, v2

    move-object v6, v0

    iget v6, v6, Lcom/sun/scenario/effect/FloatMap;->width:I

    move-object v7, v0

    iget v7, v7, Lcom/sun/scenario/effect/FloatMap;->height:I

    invoke-virtual {v5, v6, v7}, Lcom/sun/scenario/effect/impl/Renderer;->createFloatTexture(II)Lcom/sun/scenario/effect/LockableResource;

    move-result-object v5

    move-object v4, v5

    .line 222
    .local v4, "texture":Lcom/sun/scenario/effect/LockableResource;
    new-instance v5, Lcom/sun/scenario/effect/FloatMap$Entry;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v4

    invoke-direct {v6, v7}, Lcom/sun/scenario/effect/FloatMap$Entry;-><init>(Lcom/sun/scenario/effect/LockableResource;)V

    move-object v3, v5

    .line 223
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/scenario/effect/FloatMap;->cache:Ljava/util/Map;

    move-object v6, v1

    move-object v7, v3

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 225
    .end local v4    # "texture":Lcom/sun/scenario/effect/LockableResource;
    :cond_2
    move-object v5, v3

    iget-boolean v5, v5, Lcom/sun/scenario/effect/FloatMap$Entry;->valid:Z

    if-nez v5, :cond_3

    .line 226
    move-object v5, v2

    move-object v6, v3

    iget-object v6, v6, Lcom/sun/scenario/effect/FloatMap$Entry;->texture:Lcom/sun/scenario/effect/LockableResource;

    move-object v7, v0

    invoke-virtual {v5, v6, v7}, Lcom/sun/scenario/effect/impl/Renderer;->updateFloatTexture(Lcom/sun/scenario/effect/LockableResource;Lcom/sun/scenario/effect/FloatMap;)V

    .line 227
    move-object v5, v3

    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/sun/scenario/effect/FloatMap$Entry;->valid:Z

    .line 230
    :cond_3
    move-object v5, v3

    iget-object v5, v5, Lcom/sun/scenario/effect/FloatMap$Entry;->texture:Lcom/sun/scenario/effect/LockableResource;

    move-object v0, v5

    .end local v0    # "this":Lcom/sun/scenario/effect/FloatMap;
    return-object v0

    .line 199
    .end local v2    # "renderer":Lcom/sun/scenario/effect/impl/Renderer;
    .end local v3    # "entry":Lcom/sun/scenario/effect/FloatMap$Entry;
    .restart local v0    # "this":Lcom/sun/scenario/effect/FloatMap;
    :cond_4
    move-object v5, v0

    iget-boolean v5, v5, Lcom/sun/scenario/effect/FloatMap;->cacheValid:Z

    if-nez v5, :cond_0

    .line 200
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/scenario/effect/FloatMap;->cache:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v2, v5

    :goto_1
    move-object v5, v2

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    move-object v5, v2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sun/scenario/effect/FloatMap$Entry;

    move-object v3, v5

    .line 201
    .restart local v3    # "entry":Lcom/sun/scenario/effect/FloatMap$Entry;
    move-object v5, v3

    const/4 v6, 0x0

    iput-boolean v6, v5, Lcom/sun/scenario/effect/FloatMap$Entry;->valid:Z

    .line 202
    goto :goto_1

    .line 203
    .end local v3    # "entry":Lcom/sun/scenario/effect/FloatMap$Entry;
    :cond_5
    move-object v5, v0

    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/sun/scenario/effect/FloatMap;->cacheValid:Z

    goto/16 :goto_0
.end method

.method public getBuffer()Ljava/nio/FloatBuffer;
    .locals 2

    .prologue
    .line 95
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/FloatMap;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/scenario/effect/FloatMap;->buf:Ljava/nio/FloatBuffer;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/FloatMap;
    return-object v0
.end method

.method public getData()[F
    .locals 2

    .prologue
    .line 91
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/FloatMap;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/scenario/effect/FloatMap;->buf:Ljava/nio/FloatBuffer;

    invoke-virtual {v1}, Ljava/nio/FloatBuffer;->array()[F

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/FloatMap;
    return-object v0
.end method

.method public getHeight()I
    .locals 2

    .prologue
    .line 85
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/FloatMap;
    move-object v1, v0

    iget v1, v1, Lcom/sun/scenario/effect/FloatMap;->height:I

    move v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/FloatMap;
    return v0
.end method

.method public getSample(III)F
    .locals 8

    .prologue
    .line 107
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/FloatMap;
    move v1, p1

    .local v1, "x":I
    move v2, p2

    .local v2, "y":I
    move v3, p3

    .local v3, "band":I
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/scenario/effect/FloatMap;->buf:Ljava/nio/FloatBuffer;

    move v5, v1

    move v6, v2

    move-object v7, v0

    iget v7, v7, Lcom/sun/scenario/effect/FloatMap;->width:I

    mul-int/2addr v6, v7

    add-int/2addr v5, v6

    const/4 v6, 0x4

    mul-int/lit8 v5, v5, 0x4

    move v6, v3

    add-int/2addr v5, v6

    invoke-virtual {v4, v5}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v4

    move v0, v4

    .end local v0    # "this":Lcom/sun/scenario/effect/FloatMap;
    return v0
.end method

.method public getWidth()I
    .locals 2

    .prologue
    .line 76
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/FloatMap;
    move-object v1, v0

    iget v1, v1, Lcom/sun/scenario/effect/FloatMap;->width:I

    move v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/FloatMap;
    return v0
.end method

.method public put([F)V
    .locals 4

    .prologue
    .line 188
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/FloatMap;
    move-object v1, p1

    .local v1, "floatBuf":[F
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/scenario/effect/FloatMap;->buf:Ljava/nio/FloatBuffer;

    invoke-virtual {v2}, Ljava/nio/FloatBuffer;->rewind()Ljava/nio/Buffer;

    move-result-object v2

    .line 189
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/scenario/effect/FloatMap;->buf:Ljava/nio/FloatBuffer;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v2

    .line 190
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/scenario/effect/FloatMap;->buf:Ljava/nio/FloatBuffer;

    invoke-virtual {v2}, Ljava/nio/FloatBuffer;->rewind()Ljava/nio/Buffer;

    move-result-object v2

    .line 191
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/sun/scenario/effect/FloatMap;->cacheValid:Z

    .line 192
    return-void
.end method

.method public setSample(IIIF)V
    .locals 9

    .prologue
    .line 119
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/FloatMap;
    move v1, p1

    .local v1, "x":I
    move v2, p2

    .local v2, "y":I
    move v3, p3

    .local v3, "band":I
    move v4, p4

    .local v4, "sample":F
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/scenario/effect/FloatMap;->buf:Ljava/nio/FloatBuffer;

    move v6, v1

    move v7, v2

    move-object v8, v0

    iget v8, v8, Lcom/sun/scenario/effect/FloatMap;->width:I

    mul-int/2addr v7, v8

    add-int/2addr v6, v7

    const/4 v7, 0x4

    mul-int/lit8 v6, v6, 0x4

    move v7, v3

    add-int/2addr v6, v7

    move v7, v4

    invoke-virtual {v5, v6, v7}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    move-result-object v5

    .line 120
    move-object v5, v0

    const/4 v6, 0x0

    iput-boolean v6, v5, Lcom/sun/scenario/effect/FloatMap;->cacheValid:Z

    .line 121
    return-void
.end method

.method public setSamples(IIF)V
    .locals 8

    .prologue
    .line 131
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/FloatMap;
    move v1, p1

    .local v1, "x":I
    move v2, p2

    .local v2, "y":I
    move v3, p3

    .local v3, "s0":F
    move v5, v1

    move v6, v2

    move-object v7, v0

    iget v7, v7, Lcom/sun/scenario/effect/FloatMap;->width:I

    mul-int/2addr v6, v7

    add-int/2addr v5, v6

    const/4 v6, 0x4

    mul-int/lit8 v5, v5, 0x4

    move v4, v5

    .line 132
    .local v4, "index":I
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/scenario/effect/FloatMap;->buf:Ljava/nio/FloatBuffer;

    move v6, v4

    const/4 v7, 0x0

    add-int/lit8 v6, v6, 0x0

    move v7, v3

    invoke-virtual {v5, v6, v7}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    move-result-object v5

    .line 133
    move-object v5, v0

    const/4 v6, 0x0

    iput-boolean v6, v5, Lcom/sun/scenario/effect/FloatMap;->cacheValid:Z

    .line 134
    return-void
.end method

.method public setSamples(IIFF)V
    .locals 9

    .prologue
    .line 145
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/FloatMap;
    move v1, p1

    .local v1, "x":I
    move v2, p2

    .local v2, "y":I
    move v3, p3

    .local v3, "s0":F
    move v4, p4

    .local v4, "s1":F
    move v6, v1

    move v7, v2

    move-object v8, v0

    iget v8, v8, Lcom/sun/scenario/effect/FloatMap;->width:I

    mul-int/2addr v7, v8

    add-int/2addr v6, v7

    const/4 v7, 0x4

    mul-int/lit8 v6, v6, 0x4

    move v5, v6

    .line 146
    .local v5, "index":I
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/scenario/effect/FloatMap;->buf:Ljava/nio/FloatBuffer;

    move v7, v5

    const/4 v8, 0x0

    add-int/lit8 v7, v7, 0x0

    move v8, v3

    invoke-virtual {v6, v7, v8}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    move-result-object v6

    .line 147
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/scenario/effect/FloatMap;->buf:Ljava/nio/FloatBuffer;

    move v7, v5

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    move v8, v4

    invoke-virtual {v6, v7, v8}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    move-result-object v6

    .line 148
    move-object v6, v0

    const/4 v7, 0x0

    iput-boolean v7, v6, Lcom/sun/scenario/effect/FloatMap;->cacheValid:Z

    .line 149
    return-void
.end method

.method public setSamples(IIFFF)V
    .locals 10

    .prologue
    .line 161
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/FloatMap;
    move v1, p1

    .local v1, "x":I
    move v2, p2

    .local v2, "y":I
    move v3, p3

    .local v3, "s0":F
    move v4, p4

    .local v4, "s1":F
    move v5, p5

    .local v5, "s2":F
    move v7, v1

    move v8, v2

    move-object v9, v0

    iget v9, v9, Lcom/sun/scenario/effect/FloatMap;->width:I

    mul-int/2addr v8, v9

    add-int/2addr v7, v8

    const/4 v8, 0x4

    mul-int/lit8 v7, v7, 0x4

    move v6, v7

    .line 162
    .local v6, "index":I
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/scenario/effect/FloatMap;->buf:Ljava/nio/FloatBuffer;

    move v8, v6

    const/4 v9, 0x0

    add-int/lit8 v8, v8, 0x0

    move v9, v3

    invoke-virtual {v7, v8, v9}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    move-result-object v7

    .line 163
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/scenario/effect/FloatMap;->buf:Ljava/nio/FloatBuffer;

    move v8, v6

    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    move v9, v4

    invoke-virtual {v7, v8, v9}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    move-result-object v7

    .line 164
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/scenario/effect/FloatMap;->buf:Ljava/nio/FloatBuffer;

    move v8, v6

    const/4 v9, 0x2

    add-int/lit8 v8, v8, 0x2

    move v9, v5

    invoke-virtual {v7, v8, v9}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    move-result-object v7

    .line 165
    move-object v7, v0

    const/4 v8, 0x0

    iput-boolean v8, v7, Lcom/sun/scenario/effect/FloatMap;->cacheValid:Z

    .line 166
    return-void
.end method

.method public setSamples(IIFFFF)V
    .locals 11

    .prologue
    .line 179
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/FloatMap;
    move v1, p1

    .local v1, "x":I
    move v2, p2

    .local v2, "y":I
    move v3, p3

    .local v3, "s0":F
    move v4, p4

    .local v4, "s1":F
    move/from16 v5, p5

    .local v5, "s2":F
    move/from16 v6, p6

    .local v6, "s3":F
    move v8, v1

    move v9, v2

    move-object v10, v0

    iget v10, v10, Lcom/sun/scenario/effect/FloatMap;->width:I

    mul-int/2addr v9, v10

    add-int/2addr v8, v9

    const/4 v9, 0x4

    mul-int/lit8 v8, v8, 0x4

    move v7, v8

    .line 180
    .local v7, "index":I
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/scenario/effect/FloatMap;->buf:Ljava/nio/FloatBuffer;

    move v9, v7

    const/4 v10, 0x0

    add-int/lit8 v9, v9, 0x0

    move v10, v3

    invoke-virtual {v8, v9, v10}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    move-result-object v8

    .line 181
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/scenario/effect/FloatMap;->buf:Ljava/nio/FloatBuffer;

    move v9, v7

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    move v10, v4

    invoke-virtual {v8, v9, v10}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    move-result-object v8

    .line 182
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/scenario/effect/FloatMap;->buf:Ljava/nio/FloatBuffer;

    move v9, v7

    const/4 v10, 0x2

    add-int/lit8 v9, v9, 0x2

    move v10, v5

    invoke-virtual {v8, v9, v10}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    move-result-object v8

    .line 183
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/scenario/effect/FloatMap;->buf:Ljava/nio/FloatBuffer;

    move v9, v7

    const/4 v10, 0x3

    add-int/lit8 v9, v9, 0x3

    move v10, v6

    invoke-virtual {v8, v9, v10}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    move-result-object v8

    .line 184
    move-object v8, v0

    const/4 v9, 0x0

    iput-boolean v9, v8, Lcom/sun/scenario/effect/FloatMap;->cacheValid:Z

    .line 185
    return-void
.end method
