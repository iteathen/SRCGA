.class public Ljavafx/scene/effect/FloatMap;
.super Ljava/lang/Object;
.source "FloatMap.java"


# instance fields
.field private buf:[F

.field private effectDirty:Ljavafx/beans/property/BooleanProperty;

.field private height:Ljavafx/beans/property/IntegerProperty;

.field private map:Lcom/sun/scenario/effect/FloatMap;

.field private mapBufferDirty:Z

.field private width:Ljavafx/beans/property/IntegerProperty;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 110
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/FloatMap;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 44
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Ljavafx/scene/effect/FloatMap;->mapBufferDirty:Z

    .line 111
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/effect/FloatMap;->updateBuffer()V

    .line 112
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/effect/FloatMap;->impl_markDirty()V

    .line 113
    return-void
.end method

.method public constructor <init>(II)V
    .locals 5

    .prologue
    .line 121
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/FloatMap;
    move v1, p1

    .local v1, "width":I
    move v2, p2

    .local v2, "height":I
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 44
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Ljavafx/scene/effect/FloatMap;->mapBufferDirty:Z

    .line 122
    move-object v3, v0

    move v4, v1

    invoke-virtual {v3, v4}, Ljavafx/scene/effect/FloatMap;->setWidth(I)V

    .line 123
    move-object v3, v0

    move v4, v2

    invoke-virtual {v3, v4}, Ljavafx/scene/effect/FloatMap;->setHeight(I)V

    .line 124
    move-object v3, v0

    invoke-direct {v3}, Ljavafx/scene/effect/FloatMap;->updateBuffer()V

    .line 125
    move-object v3, v0

    invoke-direct {v3}, Ljavafx/scene/effect/FloatMap;->impl_markDirty()V

    .line 126
    return-void
.end method

.method static synthetic access$000(Ljavafx/scene/effect/FloatMap;)V
    .locals 2

    .prologue
    .line 41
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/effect/FloatMap;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/effect/FloatMap;->updateBuffer()V

    return-void
.end method

.method static synthetic access$100(Ljavafx/scene/effect/FloatMap;)V
    .locals 2

    .prologue
    .line 41
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/effect/FloatMap;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/effect/FloatMap;->impl_markDirty()V

    return-void
.end method

.method private impl_clearDirty()V
    .locals 3

    .prologue
    .line 104
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/FloatMap;
    move-object v1, v0

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljavafx/scene/effect/FloatMap;->setEffectDirty(Z)V

    .line 105
    return-void
.end method

.method private impl_markDirty()V
    .locals 3

    .prologue
    .line 100
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/FloatMap;
    move-object v1, v0

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljavafx/scene/effect/FloatMap;->setEffectDirty(Z)V

    .line 101
    return-void
.end method

.method private impl_update()V
    .locals 9

    .prologue
    .line 61
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/FloatMap;
    move-object v1, v0

    iget-boolean v1, v1, Ljavafx/scene/effect/FloatMap;->mapBufferDirty:Z

    if-eqz v1, :cond_0

    .line 62
    move-object v1, v0

    new-instance v2, Lcom/sun/scenario/effect/FloatMap;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    const/4 v4, 0x1

    move-object v5, v0

    .line 63
    invoke-virtual {v5}, Ljavafx/scene/effect/FloatMap;->getWidth()I

    move-result v5

    const/16 v6, 0x1000

    invoke-static {v4, v5, v6}, Lcom/sun/javafx/util/Utils;->clamp(III)I

    move-result v4

    const/4 v5, 0x1

    move-object v6, v0

    .line 64
    invoke-virtual {v6}, Ljavafx/scene/effect/FloatMap;->getHeight()I

    move-result v6

    const/16 v7, 0x1000

    invoke-static {v5, v6, v7}, Lcom/sun/javafx/util/Utils;->clamp(III)I

    move-result v5

    invoke-direct {v3, v4, v5}, Lcom/sun/scenario/effect/FloatMap;-><init>(II)V

    iput-object v2, v1, Ljavafx/scene/effect/FloatMap;->map:Lcom/sun/scenario/effect/FloatMap;

    .line 65
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Ljavafx/scene/effect/FloatMap;->mapBufferDirty:Z

    .line 67
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/effect/FloatMap;->map:Lcom/sun/scenario/effect/FloatMap;

    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/effect/FloatMap;->buf:[F

    invoke-virtual {v1, v2}, Lcom/sun/scenario/effect/FloatMap;->put([F)V

    .line 68
    return-void
.end method

.method private setEffectDirty(Z)V
    .locals 4

    .prologue
    .line 80
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/FloatMap;
    move v1, p1

    .local v1, "value":Z
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/effect/FloatMap;->effectDirtyProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v2

    move v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/BooleanProperty;->set(Z)V

    .line 81
    return-void
.end method

.method private updateBuffer()V
    .locals 6

    .prologue
    .line 51
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/FloatMap;
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/effect/FloatMap;->getWidth()I

    move-result v4

    if-lez v4, :cond_0

    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/effect/FloatMap;->getHeight()I

    move-result v4

    if-lez v4, :cond_0

    .line 52
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/effect/FloatMap;->getWidth()I

    move-result v4

    const/16 v5, 0x1000

    invoke-static {v4, v5}, Lcom/sun/javafx/util/Utils;->clampMax(II)I

    move-result v4

    move v1, v4

    .line 53
    .local v1, "w":I
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/effect/FloatMap;->getHeight()I

    move-result v4

    const/16 v5, 0x1000

    invoke-static {v4, v5}, Lcom/sun/javafx/util/Utils;->clampMax(II)I

    move-result v4

    move v2, v4

    .line 54
    .local v2, "h":I
    move v4, v1

    move v5, v2

    mul-int/2addr v4, v5

    const/4 v5, 0x4

    mul-int/lit8 v4, v4, 0x4

    move v3, v4

    .line 55
    .local v3, "size":I
    move-object v4, v0

    move v5, v3

    new-array v5, v5, [F

    iput-object v5, v4, Ljavafx/scene/effect/FloatMap;->buf:[F

    .line 56
    move-object v4, v0

    const/4 v5, 0x1

    iput-boolean v5, v4, Ljavafx/scene/effect/FloatMap;->mapBufferDirty:Z

    .line 58
    .end local v1    # "w":I
    .end local v2    # "h":I
    .end local v3    # "size":I
    :cond_0
    return-void
.end method


# virtual methods
.method final effectDirtyProperty()Ljavafx/beans/property/BooleanProperty;
    .locals 7

    .prologue
    .line 84
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/FloatMap;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/effect/FloatMap;->effectDirty:Ljavafx/beans/property/BooleanProperty;

    if-nez v1, :cond_0

    .line 85
    move-object v1, v0

    new-instance v2, Ljavafx/beans/property/SimpleBooleanProperty;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    const-string v5, "effectDirty"

    invoke-direct {v3, v4, v5}, Ljavafx/beans/property/SimpleBooleanProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v1, Ljavafx/scene/effect/FloatMap;->effectDirty:Ljavafx/beans/property/BooleanProperty;

    .line 87
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/effect/FloatMap;->effectDirty:Ljavafx/beans/property/BooleanProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/effect/FloatMap;
    return-object v0
.end method

.method public final getHeight()I
    .locals 2

    .prologue
    .line 191
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/FloatMap;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/effect/FloatMap;->height:Ljavafx/beans/property/IntegerProperty;

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Ljavafx/scene/effect/FloatMap;
    return v0

    .restart local v0    # "this":Ljavafx/scene/effect/FloatMap;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/effect/FloatMap;->height:Ljavafx/beans/property/IntegerProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/IntegerProperty;->get()I

    move-result v1

    goto :goto_0
.end method

.method getImpl()Lcom/sun/scenario/effect/FloatMap;
    .locals 2

    .prologue
    .line 47
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/FloatMap;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/effect/FloatMap;->map:Lcom/sun/scenario/effect/FloatMap;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/effect/FloatMap;
    return-object v0
.end method

.method public final getWidth()I
    .locals 2

    .prologue
    .line 146
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/FloatMap;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/effect/FloatMap;->width:Ljavafx/beans/property/IntegerProperty;

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Ljavafx/scene/effect/FloatMap;
    return v0

    .restart local v0    # "this":Ljavafx/scene/effect/FloatMap;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/effect/FloatMap;->width:Ljavafx/beans/property/IntegerProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/IntegerProperty;->get()I

    move-result v1

    goto :goto_0
.end method

.method public final heightProperty()Ljavafx/beans/property/IntegerProperty;
    .locals 7

    .prologue
    .line 195
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/FloatMap;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/effect/FloatMap;->height:Ljavafx/beans/property/IntegerProperty;

    if-nez v1, :cond_0

    .line 196
    move-object v1, v0

    new-instance v2, Ljavafx/scene/effect/FloatMap$2;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Ljavafx/scene/effect/FloatMap$2;-><init>(Ljavafx/scene/effect/FloatMap;I)V

    iput-object v2, v1, Ljavafx/scene/effect/FloatMap;->height:Ljavafx/beans/property/IntegerProperty;

    .line 215
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/effect/FloatMap;->height:Ljavafx/beans/property/IntegerProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/effect/FloatMap;
    return-object v0
.end method

.method public impl_copy()Ljavafx/scene/effect/FloatMap;
    .locals 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 306
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/FloatMap;
    new-instance v2, Ljavafx/scene/effect/FloatMap;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/effect/FloatMap;->getWidth()I

    move-result v4

    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/effect/FloatMap;->getHeight()I

    move-result v5

    invoke-direct {v3, v4, v5}, Ljavafx/scene/effect/FloatMap;-><init>(II)V

    move-object v1, v2

    .line 307
    .local v1, "dest":Ljavafx/scene/effect/FloatMap;
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/effect/FloatMap;->buf:[F

    const/4 v3, 0x0

    move-object v4, v1

    iget-object v4, v4, Ljavafx/scene/effect/FloatMap;->buf:[F

    const/4 v5, 0x0

    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/effect/FloatMap;->buf:[F

    array-length v6, v6

    invoke-static {v2, v3, v4, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 308
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/effect/FloatMap;
    return-object v0
.end method

.method impl_isEffectDirty()Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 96
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/FloatMap;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/effect/FloatMap;->effectDirty:Ljavafx/beans/property/BooleanProperty;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move v0, v1

    .end local v0    # "this":Ljavafx/scene/effect/FloatMap;
    return v0

    .restart local v0    # "this":Ljavafx/scene/effect/FloatMap;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/effect/FloatMap;->effectDirty:Ljavafx/beans/property/BooleanProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/BooleanProperty;->get()Z

    move-result v1

    goto :goto_0
.end method

.method impl_sync()V
    .locals 2

    .prologue
    .line 71
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/FloatMap;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/effect/FloatMap;->impl_isEffectDirty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 72
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/effect/FloatMap;->impl_update()V

    .line 73
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/effect/FloatMap;->impl_clearDirty()V

    .line 75
    :cond_0
    return-void
.end method

.method public final setHeight(I)V
    .locals 4

    .prologue
    .line 187
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/FloatMap;
    move v1, p1

    .local v1, "value":I
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/effect/FloatMap;->heightProperty()Ljavafx/beans/property/IntegerProperty;

    move-result-object v2

    move v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/IntegerProperty;->set(I)V

    .line 188
    return-void
.end method

.method public setSample(IIIF)V
    .locals 9

    .prologue
    .line 227
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/FloatMap;
    move v1, p1

    .local v1, "x":I
    move v2, p2

    .local v2, "y":I
    move v3, p3

    .local v3, "band":I
    move v4, p4

    .local v4, "s":F
    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/effect/FloatMap;->buf:[F

    move v6, v1

    move v7, v2

    move-object v8, v0

    invoke-virtual {v8}, Ljavafx/scene/effect/FloatMap;->getWidth()I

    move-result v8

    mul-int/2addr v7, v8

    add-int/2addr v6, v7

    const/4 v7, 0x4

    mul-int/lit8 v6, v6, 0x4

    move v7, v3

    add-int/2addr v6, v7

    move v7, v4

    aput v7, v5, v6

    .line 228
    move-object v5, v0

    invoke-direct {v5}, Ljavafx/scene/effect/FloatMap;->impl_markDirty()V

    .line 229
    return-void
.end method

.method public setSamples(IIF)V
    .locals 8

    .prologue
    .line 240
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/FloatMap;
    move v1, p1

    .local v1, "x":I
    move v2, p2

    .local v2, "y":I
    move v3, p3

    .local v3, "s0":F
    move v5, v1

    move v6, v2

    move-object v7, v0

    invoke-virtual {v7}, Ljavafx/scene/effect/FloatMap;->getWidth()I

    move-result v7

    mul-int/2addr v6, v7

    add-int/2addr v5, v6

    const/4 v6, 0x4

    mul-int/lit8 v5, v5, 0x4

    move v4, v5

    .line 241
    .local v4, "index":I
    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/effect/FloatMap;->buf:[F

    move v6, v4

    const/4 v7, 0x0

    add-int/lit8 v6, v6, 0x0

    move v7, v3

    aput v7, v5, v6

    .line 242
    move-object v5, v0

    invoke-direct {v5}, Ljavafx/scene/effect/FloatMap;->impl_markDirty()V

    .line 243
    return-void
.end method

.method public setSamples(IIFF)V
    .locals 9

    .prologue
    .line 255
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/FloatMap;
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

    invoke-virtual {v8}, Ljavafx/scene/effect/FloatMap;->getWidth()I

    move-result v8

    mul-int/2addr v7, v8

    add-int/2addr v6, v7

    const/4 v7, 0x4

    mul-int/lit8 v6, v6, 0x4

    move v5, v6

    .line 256
    .local v5, "index":I
    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/effect/FloatMap;->buf:[F

    move v7, v5

    const/4 v8, 0x0

    add-int/lit8 v7, v7, 0x0

    move v8, v3

    aput v8, v6, v7

    .line 257
    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/effect/FloatMap;->buf:[F

    move v7, v5

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    move v8, v4

    aput v8, v6, v7

    .line 258
    move-object v6, v0

    invoke-direct {v6}, Ljavafx/scene/effect/FloatMap;->impl_markDirty()V

    .line 259
    return-void
.end method

.method public setSamples(IIFFF)V
    .locals 10

    .prologue
    .line 272
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/FloatMap;
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

    invoke-virtual {v9}, Ljavafx/scene/effect/FloatMap;->getWidth()I

    move-result v9

    mul-int/2addr v8, v9

    add-int/2addr v7, v8

    const/4 v8, 0x4

    mul-int/lit8 v7, v7, 0x4

    move v6, v7

    .line 273
    .local v6, "index":I
    move-object v7, v0

    iget-object v7, v7, Ljavafx/scene/effect/FloatMap;->buf:[F

    move v8, v6

    const/4 v9, 0x0

    add-int/lit8 v8, v8, 0x0

    move v9, v3

    aput v9, v7, v8

    .line 274
    move-object v7, v0

    iget-object v7, v7, Ljavafx/scene/effect/FloatMap;->buf:[F

    move v8, v6

    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    move v9, v4

    aput v9, v7, v8

    .line 275
    move-object v7, v0

    iget-object v7, v7, Ljavafx/scene/effect/FloatMap;->buf:[F

    move v8, v6

    const/4 v9, 0x2

    add-int/lit8 v8, v8, 0x2

    move v9, v5

    aput v9, v7, v8

    .line 276
    move-object v7, v0

    invoke-direct {v7}, Ljavafx/scene/effect/FloatMap;->impl_markDirty()V

    .line 277
    return-void
.end method

.method public setSamples(IIFFFF)V
    .locals 11

    .prologue
    .line 292
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/FloatMap;
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

    invoke-virtual {v10}, Ljavafx/scene/effect/FloatMap;->getWidth()I

    move-result v10

    mul-int/2addr v9, v10

    add-int/2addr v8, v9

    const/4 v9, 0x4

    mul-int/lit8 v8, v8, 0x4

    move v7, v8

    .line 293
    .local v7, "index":I
    move-object v8, v0

    iget-object v8, v8, Ljavafx/scene/effect/FloatMap;->buf:[F

    move v9, v7

    const/4 v10, 0x0

    add-int/lit8 v9, v9, 0x0

    move v10, v3

    aput v10, v8, v9

    .line 294
    move-object v8, v0

    iget-object v8, v8, Ljavafx/scene/effect/FloatMap;->buf:[F

    move v9, v7

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    move v10, v4

    aput v10, v8, v9

    .line 295
    move-object v8, v0

    iget-object v8, v8, Ljavafx/scene/effect/FloatMap;->buf:[F

    move v9, v7

    const/4 v10, 0x2

    add-int/lit8 v9, v9, 0x2

    move v10, v5

    aput v10, v8, v9

    .line 296
    move-object v8, v0

    iget-object v8, v8, Ljavafx/scene/effect/FloatMap;->buf:[F

    move v9, v7

    const/4 v10, 0x3

    add-int/lit8 v9, v9, 0x3

    move v10, v6

    aput v10, v8, v9

    .line 297
    move-object v8, v0

    invoke-direct {v8}, Ljavafx/scene/effect/FloatMap;->impl_markDirty()V

    .line 298
    return-void
.end method

.method public final setWidth(I)V
    .locals 4

    .prologue
    .line 142
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/FloatMap;
    move v1, p1

    .local v1, "value":I
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/effect/FloatMap;->widthProperty()Ljavafx/beans/property/IntegerProperty;

    move-result-object v2

    move v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/IntegerProperty;->set(I)V

    .line 143
    return-void
.end method

.method public final widthProperty()Ljavafx/beans/property/IntegerProperty;
    .locals 7

    .prologue
    .line 150
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/effect/FloatMap;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/effect/FloatMap;->width:Ljavafx/beans/property/IntegerProperty;

    if-nez v1, :cond_0

    .line 151
    move-object v1, v0

    new-instance v2, Ljavafx/scene/effect/FloatMap$1;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Ljavafx/scene/effect/FloatMap$1;-><init>(Ljavafx/scene/effect/FloatMap;I)V

    iput-object v2, v1, Ljavafx/scene/effect/FloatMap;->width:Ljavafx/beans/property/IntegerProperty;

    .line 170
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/effect/FloatMap;->width:Ljavafx/beans/property/IntegerProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/effect/FloatMap;
    return-object v0
.end method
