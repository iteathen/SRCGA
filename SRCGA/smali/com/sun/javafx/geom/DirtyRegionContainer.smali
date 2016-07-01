.class public final Lcom/sun/javafx/geom/DirtyRegionContainer;
.super Ljava/lang/Object;
.source "DirtyRegionContainer.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final DTR_CONTAINS_CLIP:I = 0x0

.field public static final DTR_OK:I = 0x1


# instance fields
.field private dirtyRegions:[Lcom/sun/javafx/geom/RectBounds;

.field private emptyIndex:I

.field private heap:[[I

.field private heapSize:I

.field private invalidMask:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-class v0, Lcom/sun/javafx/geom/DirtyRegionContainer;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/sun/javafx/geom/DirtyRegionContainer;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(I)V
    .locals 4

    .prologue
    .line 44
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/DirtyRegionContainer;
    move v1, p1

    .local v1, "count":I
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 45
    move-object v2, v0

    move v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/geom/DirtyRegionContainer;->initDirtyRegions(I)V

    .line 46
    return-void
.end method

.method private compress(Lcom/sun/javafx/geom/RectBounds;)Lcom/sun/javafx/geom/RectBounds;
    .locals 4

    .prologue
    .line 195
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/DirtyRegionContainer;
    move-object v1, p1

    .local v1, "region":Lcom/sun/javafx/geom/RectBounds;
    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/geom/DirtyRegionContainer;->compress_heap()V

    .line 196
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/javafx/geom/DirtyRegionContainer;->addDirtyRegion(Lcom/sun/javafx/geom/RectBounds;)V

    .line 197
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/geom/DirtyRegionContainer;
    return-object v0
.end method

.method private compress_heap()V
    .locals 10

    .prologue
    .line 374
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/DirtyRegionContainer;
    sget-boolean v4, Lcom/sun/javafx/geom/DirtyRegionContainer;->$assertionsDisabled:Z

    if-nez v4, :cond_0

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/geom/DirtyRegionContainer;->dirtyRegions:[Lcom/sun/javafx/geom/RectBounds;

    array-length v4, v4

    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/geom/DirtyRegionContainer;->emptyIndex:I

    if-eq v4, v5, :cond_0

    new-instance v4, Ljava/lang/AssertionError;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 375
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/geom/DirtyRegionContainer;->heap:[[I

    if-nez v4, :cond_1

    .line 376
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/geom/DirtyRegionContainer;->dirtyRegions:[Lcom/sun/javafx/geom/RectBounds;

    array-length v4, v4

    move v1, v4

    .line 377
    .local v1, "n":I
    move-object v4, v0

    move v5, v1

    move v6, v1

    const/4 v7, 0x1

    add-int/lit8 v6, v6, -0x1

    mul-int/2addr v5, v6

    const/4 v6, 0x2

    div-int/lit8 v5, v5, 0x2

    const/4 v6, 0x3

    filled-new-array {v5, v6}, [I

    move-result-object v6

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v6}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [[I

    iput-object v5, v4, Lcom/sun/javafx/geom/DirtyRegionContainer;->heap:[[I

    .line 379
    .end local v1    # "n":I
    :cond_1
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/geom/DirtyRegionContainer;->heap:[[I

    array-length v5, v5

    iput v5, v4, Lcom/sun/javafx/geom/DirtyRegionContainer;->heapSize:I

    .line 380
    const/4 v4, 0x0

    move v1, v4

    .line 381
    .local v1, "k":I
    const/4 v4, 0x0

    move v2, v4

    .local v2, "i":I
    :goto_0
    move v4, v2

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/geom/DirtyRegionContainer;->dirtyRegions:[Lcom/sun/javafx/geom/RectBounds;

    array-length v5, v5

    const/4 v6, 0x1

    add-int/lit8 v5, v5, -0x1

    if-ge v4, v5, :cond_3

    .line 382
    move v4, v2

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    move v3, v4

    .local v3, "j":I
    :goto_1
    move v4, v3

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/geom/DirtyRegionContainer;->dirtyRegions:[Lcom/sun/javafx/geom/RectBounds;

    array-length v5, v5

    if-ge v4, v5, :cond_2

    .line 383
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/geom/DirtyRegionContainer;->heap:[[I

    move v5, v1

    aget-object v4, v4, v5

    const/4 v5, 0x0

    move-object v6, v0

    move v7, v2

    move v8, v3

    invoke-direct {v6, v7, v8}, Lcom/sun/javafx/geom/DirtyRegionContainer;->unifiedRegionArea(II)I

    move-result v6

    aput v6, v4, v5

    .line 384
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/geom/DirtyRegionContainer;->heap:[[I

    move v5, v1

    aget-object v4, v4, v5

    const/4 v5, 0x1

    move v6, v2

    aput v6, v4, v5

    .line 385
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/geom/DirtyRegionContainer;->heap:[[I

    move v5, v1

    add-int/lit8 v1, v1, 0x1

    aget-object v4, v4, v5

    const/4 v5, 0x2

    move v6, v3

    aput v6, v4, v5

    .line 382
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 381
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 388
    .end local v3    # "j":I
    :cond_3
    move-object v4, v0

    invoke-direct {v4}, Lcom/sun/javafx/geom/DirtyRegionContainer;->heapify()V

    .line 389
    move-object v4, v0

    invoke-direct {v4}, Lcom/sun/javafx/geom/DirtyRegionContainer;->heapCompress()V

    .line 390
    return-void
.end method

.method private hasSpace()Z
    .locals 3

    .prologue
    .line 205
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/DirtyRegionContainer;
    move-object v1, v0

    iget v1, v1, Lcom/sun/javafx/geom/DirtyRegionContainer;->emptyIndex:I

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/geom/DirtyRegionContainer;->dirtyRegions:[Lcom/sun/javafx/geom/RectBounds;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/geom/DirtyRegionContainer;
    return v0

    .restart local v0    # "this":Lcom/sun/javafx/geom/DirtyRegionContainer;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private heapCompress()V
    .locals 13

    .prologue
    .line 263
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/geom/DirtyRegionContainer;
    move-object v7, v1

    const-wide/16 v8, 0x0

    iput-wide v8, v7, Lcom/sun/javafx/geom/DirtyRegionContainer;->invalidMask:J

    .line 264
    move-object v7, v1

    iget-object v7, v7, Lcom/sun/javafx/geom/DirtyRegionContainer;->dirtyRegions:[Lcom/sun/javafx/geom/RectBounds;

    array-length v7, v7

    new-array v7, v7, [I

    move-object v2, v7

    .line 265
    .local v2, "map":[I
    const/4 v7, 0x0

    move v3, v7

    .local v3, "i":I
    :goto_0
    move v7, v3

    move-object v8, v2

    array-length v8, v8

    if-ge v7, v8, :cond_0

    .line 266
    move-object v7, v2

    move v8, v3

    move v9, v3

    aput v9, v7, v8

    .line 265
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 270
    :cond_0
    const/4 v7, 0x0

    move v4, v7

    .end local v3    # "i":I
    .local v4, "i":I
    :goto_1
    move v7, v4

    move-object v8, v1

    iget-object v8, v8, Lcom/sun/javafx/geom/DirtyRegionContainer;->dirtyRegions:[Lcom/sun/javafx/geom/RectBounds;

    array-length v8, v8

    const/4 v9, 0x2

    div-int/lit8 v8, v8, 0x2

    if-ge v7, v8, :cond_2

    .line 271
    move-object v7, v1

    move-object v8, v2

    invoke-direct {v7, v8}, Lcom/sun/javafx/geom/DirtyRegionContainer;->takeMinWithMap([I)[I

    move-result-object v7

    move-object v3, v7

    .line 272
    .local v3, "min":[I
    move-object v7, v1

    move-object v8, v2

    move-object v9, v3

    const/4 v10, 0x1

    aget v9, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/sun/javafx/geom/DirtyRegionContainer;->resolveMap([II)I

    move-result v7

    move v5, v7

    .line 273
    .local v5, "idx0":I
    move-object v7, v1

    move-object v8, v2

    move-object v9, v3

    const/4 v10, 0x2

    aget v9, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/sun/javafx/geom/DirtyRegionContainer;->resolveMap([II)I

    move-result v7

    move v6, v7

    .line 274
    .local v6, "idx1":I
    move v7, v5

    move v8, v6

    if-eq v7, v8, :cond_1

    .line 275
    move-object v7, v1

    iget-object v7, v7, Lcom/sun/javafx/geom/DirtyRegionContainer;->dirtyRegions:[Lcom/sun/javafx/geom/RectBounds;

    move v8, v5

    aget-object v7, v7, v8

    move-object v8, v1

    iget-object v8, v8, Lcom/sun/javafx/geom/DirtyRegionContainer;->dirtyRegions:[Lcom/sun/javafx/geom/RectBounds;

    move v9, v6

    aget-object v8, v8, v9

    invoke-virtual {v7, v8}, Lcom/sun/javafx/geom/RectBounds;->deriveWithUnion(Lcom/sun/javafx/geom/BaseBounds;)Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v7

    .line 276
    move-object v7, v2

    move v8, v6

    move v9, v5

    aput v9, v7, v8

    .line 277
    move-object v7, v1

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    iget-wide v8, v8, Lcom/sun/javafx/geom/DirtyRegionContainer;->invalidMask:J

    const/4 v10, 0x1

    move v11, v5

    shl-int/2addr v10, v11

    int-to-long v10, v10

    or-long/2addr v8, v10

    iput-wide v8, v7, Lcom/sun/javafx/geom/DirtyRegionContainer;->invalidMask:J

    .line 278
    move-object v7, v1

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    iget-wide v8, v8, Lcom/sun/javafx/geom/DirtyRegionContainer;->invalidMask:J

    const/4 v10, 0x1

    move v11, v6

    shl-int/2addr v10, v11

    int-to-long v10, v10

    or-long/2addr v8, v10

    iput-wide v8, v7, Lcom/sun/javafx/geom/DirtyRegionContainer;->invalidMask:J

    .line 270
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 284
    .end local v3    # "min":[I
    .end local v5    # "idx0":I
    .end local v6    # "idx1":I
    :cond_2
    const/4 v7, 0x0

    move v5, v7

    .end local v4    # "i":I
    .local v5, "i":I
    :goto_2
    move v7, v5

    move-object v8, v1

    iget v8, v8, Lcom/sun/javafx/geom/DirtyRegionContainer;->emptyIndex:I

    if-ge v7, v8, :cond_5

    .line 285
    move-object v7, v2

    move v8, v5

    aget v7, v7, v8

    move v8, v5

    if-eq v7, v8, :cond_4

    .line 286
    :goto_3
    move-object v7, v2

    move-object v8, v1

    iget v8, v8, Lcom/sun/javafx/geom/DirtyRegionContainer;->emptyIndex:I

    const/4 v9, 0x1

    add-int/lit8 v8, v8, -0x1

    aget v7, v7, v8

    move-object v8, v1

    iget v8, v8, Lcom/sun/javafx/geom/DirtyRegionContainer;->emptyIndex:I

    const/4 v9, 0x1

    add-int/lit8 v8, v8, -0x1

    if-eq v7, v8, :cond_3

    move-object v7, v1

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    iget v8, v8, Lcom/sun/javafx/geom/DirtyRegionContainer;->emptyIndex:I

    const/4 v9, 0x1

    add-int/lit8 v8, v8, -0x1

    iput v8, v7, Lcom/sun/javafx/geom/DirtyRegionContainer;->emptyIndex:I

    goto :goto_3

    .line 287
    :cond_3
    move v7, v5

    move-object v8, v1

    iget v8, v8, Lcom/sun/javafx/geom/DirtyRegionContainer;->emptyIndex:I

    const/4 v9, 0x1

    add-int/lit8 v8, v8, -0x1

    if-ge v7, v8, :cond_4

    .line 288
    move-object v7, v1

    iget-object v7, v7, Lcom/sun/javafx/geom/DirtyRegionContainer;->dirtyRegions:[Lcom/sun/javafx/geom/RectBounds;

    move-object v8, v1

    iget v8, v8, Lcom/sun/javafx/geom/DirtyRegionContainer;->emptyIndex:I

    const/4 v9, 0x1

    add-int/lit8 v8, v8, -0x1

    aget-object v7, v7, v8

    move-object v4, v7

    .line 289
    .local v4, "tmp":Lcom/sun/javafx/geom/RectBounds;
    move-object v7, v1

    iget-object v7, v7, Lcom/sun/javafx/geom/DirtyRegionContainer;->dirtyRegions:[Lcom/sun/javafx/geom/RectBounds;

    move-object v8, v1

    iget v8, v8, Lcom/sun/javafx/geom/DirtyRegionContainer;->emptyIndex:I

    const/4 v9, 0x1

    add-int/lit8 v8, v8, -0x1

    move-object v9, v1

    iget-object v9, v9, Lcom/sun/javafx/geom/DirtyRegionContainer;->dirtyRegions:[Lcom/sun/javafx/geom/RectBounds;

    move v10, v5

    aget-object v9, v9, v10

    aput-object v9, v7, v8

    .line 290
    move-object v7, v1

    iget-object v7, v7, Lcom/sun/javafx/geom/DirtyRegionContainer;->dirtyRegions:[Lcom/sun/javafx/geom/RectBounds;

    move v8, v5

    move-object v9, v4

    aput-object v9, v7, v8

    .line 291
    move-object v7, v2

    move v8, v5

    move v9, v5

    aput v9, v7, v8

    .line 292
    move-object v7, v1

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    iget v8, v8, Lcom/sun/javafx/geom/DirtyRegionContainer;->emptyIndex:I

    const/4 v9, 0x1

    add-int/lit8 v8, v8, -0x1

    iput v8, v7, Lcom/sun/javafx/geom/DirtyRegionContainer;->emptyIndex:I

    .line 284
    .end local v4    # "tmp":Lcom/sun/javafx/geom/RectBounds;
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 296
    :cond_5
    return-void
.end method

.method private heapify()V
    .locals 4

    .prologue
    .line 299
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/DirtyRegionContainer;
    move-object v2, v0

    iget v2, v2, Lcom/sun/javafx/geom/DirtyRegionContainer;->heapSize:I

    const/4 v3, 0x2

    div-int/lit8 v2, v2, 0x2

    move v1, v2

    .local v1, "i":I
    :goto_0
    move v2, v1

    if-ltz v2, :cond_0

    .line 300
    move-object v2, v0

    move v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/geom/DirtyRegionContainer;->siftDown(I)V

    .line 299
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 302
    :cond_0
    return-void
.end method

.method private initDirtyRegions(I)V
    .locals 8

    .prologue
    .line 110
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/DirtyRegionContainer;
    move v1, p1

    .local v1, "count":I
    move-object v3, v0

    move v4, v1

    new-array v4, v4, [Lcom/sun/javafx/geom/RectBounds;

    iput-object v4, v3, Lcom/sun/javafx/geom/DirtyRegionContainer;->dirtyRegions:[Lcom/sun/javafx/geom/RectBounds;

    .line 111
    const/4 v3, 0x0

    move v2, v3

    .local v2, "i":I
    :goto_0
    move v3, v2

    move v4, v1

    if-ge v3, v4, :cond_0

    .line 112
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/geom/DirtyRegionContainer;->dirtyRegions:[Lcom/sun/javafx/geom/RectBounds;

    move v4, v2

    new-instance v5, Lcom/sun/javafx/geom/RectBounds;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Lcom/sun/javafx/geom/RectBounds;-><init>()V

    aput-object v5, v3, v4

    .line 111
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 114
    :cond_0
    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Lcom/sun/javafx/geom/DirtyRegionContainer;->emptyIndex:I

    .line 115
    return-void
.end method

.method private regioncopy([Lcom/sun/javafx/geom/RectBounds;I[Lcom/sun/javafx/geom/RectBounds;II)V
    .locals 10

    .prologue
    .line 210
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/DirtyRegionContainer;
    move-object v1, p1

    .local v1, "src":[Lcom/sun/javafx/geom/RectBounds;
    move v2, p2

    .local v2, "from":I
    move-object v3, p3

    .local v3, "dest":[Lcom/sun/javafx/geom/RectBounds;
    move v4, p4

    .local v4, "to":I
    move v5, p5

    .local v5, "length":I
    const/4 v8, 0x0

    move v7, v8

    .local v7, "i":I
    :goto_0
    move v8, v7

    move v9, v5

    if-ge v8, v9, :cond_1

    .line 211
    move-object v8, v1

    move v9, v2

    add-int/lit8 v2, v2, 0x1

    aget-object v8, v8, v9

    move-object v6, v8

    .line 212
    .local v6, "rb":Lcom/sun/javafx/geom/RectBounds;
    move-object v8, v6

    if-nez v8, :cond_0

    .line 213
    move-object v8, v3

    move v9, v4

    add-int/lit8 v4, v4, 0x1

    aget-object v8, v8, v9

    invoke-virtual {v8}, Lcom/sun/javafx/geom/RectBounds;->makeEmpty()Lcom/sun/javafx/geom/RectBounds;

    move-result-object v8

    .line 210
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 215
    :cond_0
    move-object v8, v3

    move v9, v4

    add-int/lit8 v4, v4, 0x1

    aget-object v8, v8, v9

    move-object v9, v6

    invoke-virtual {v8, v9}, Lcom/sun/javafx/geom/RectBounds;->deriveWithNewBounds(Lcom/sun/javafx/geom/BaseBounds;)Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v8

    goto :goto_1

    .line 218
    .end local v6    # "rb":Lcom/sun/javafx/geom/RectBounds;
    :cond_1
    return-void
.end method

.method private resolveMap([II)I
    .locals 5

    .prologue
    .line 354
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/DirtyRegionContainer;
    move-object v1, p1

    .local v1, "map":[I
    move v2, p2

    .local v2, "idx":I
    :goto_0
    move-object v3, v1

    move v4, v2

    aget v3, v3, v4

    move v4, v2

    if-eq v3, v4, :cond_0

    move-object v3, v1

    move v4, v2

    aget v3, v3, v4

    move v2, v3

    goto :goto_0

    .line 355
    :cond_0
    move v3, v2

    move v0, v3

    .end local v0    # "this":Lcom/sun/javafx/geom/DirtyRegionContainer;
    return v0
.end method

.method private siftDown(I)V
    .locals 10

    .prologue
    .line 305
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/DirtyRegionContainer;
    move v1, p1

    .local v1, "i":I
    move-object v6, v0

    iget v6, v6, Lcom/sun/javafx/geom/DirtyRegionContainer;->heapSize:I

    const/4 v7, 0x1

    shr-int/lit8 v6, v6, 0x1

    move v2, v6

    .line 307
    .local v2, "end":I
    :goto_0
    move v6, v1

    move v7, v2

    if-ge v6, v7, :cond_1

    .line 308
    move v6, v1

    const/4 v7, 0x1

    shl-int/lit8 v6, v6, 0x1

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    move v4, v6

    .line 309
    .local v4, "child":I
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/geom/DirtyRegionContainer;->heap:[[I

    move v7, v4

    aget-object v6, v6, v7

    move-object v5, v6

    .line 310
    .local v5, "left":[I
    move v6, v4

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    move-object v7, v0

    iget v7, v7, Lcom/sun/javafx/geom/DirtyRegionContainer;->heapSize:I

    if-ge v6, v7, :cond_0

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/geom/DirtyRegionContainer;->heap:[[I

    move v7, v4

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    aget-object v6, v6, v7

    const/4 v7, 0x0

    aget v6, v6, v7

    move-object v7, v5

    const/4 v8, 0x0

    aget v7, v7, v8

    if-ge v6, v7, :cond_0

    .line 311
    move v6, v4

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    move v4, v6

    .line 313
    :cond_0
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/geom/DirtyRegionContainer;->heap:[[I

    move v7, v4

    aget-object v6, v6, v7

    const/4 v7, 0x0

    aget v6, v6, v7

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/geom/DirtyRegionContainer;->heap:[[I

    move v8, v1

    aget-object v7, v7, v8

    const/4 v8, 0x0

    aget v7, v7, v8

    if-lt v6, v7, :cond_2

    .line 314
    .line 321
    .end local v4    # "child":I
    .end local v5    # "left":[I
    :cond_1
    return-void

    .line 316
    .restart local v4    # "child":I
    .restart local v5    # "left":[I
    :cond_2
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/geom/DirtyRegionContainer;->heap:[[I

    move v7, v4

    aget-object v6, v6, v7

    move-object v3, v6

    .line 317
    .local v3, "temp":[I
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/geom/DirtyRegionContainer;->heap:[[I

    move v7, v4

    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/geom/DirtyRegionContainer;->heap:[[I

    move v9, v1

    aget-object v8, v8, v9

    aput-object v8, v6, v7

    .line 318
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/geom/DirtyRegionContainer;->heap:[[I

    move v7, v1

    move-object v8, v3

    aput-object v8, v6, v7

    .line 319
    move v6, v4

    move v1, v6

    .line 320
    goto :goto_0
.end method

.method private takeMin()[I
    .locals 8

    .prologue
    .line 345
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/DirtyRegionContainer;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/geom/DirtyRegionContainer;->heap:[[I

    const/4 v3, 0x0

    aget-object v2, v2, v3

    move-object v1, v2

    .line 346
    .local v1, "temp":[I
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/geom/DirtyRegionContainer;->heap:[[I

    const/4 v3, 0x0

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/geom/DirtyRegionContainer;->heap:[[I

    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/geom/DirtyRegionContainer;->heapSize:I

    const/4 v6, 0x1

    add-int/lit8 v5, v5, -0x1

    aget-object v4, v4, v5

    aput-object v4, v2, v3

    .line 347
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/geom/DirtyRegionContainer;->heap:[[I

    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/geom/DirtyRegionContainer;->heapSize:I

    const/4 v4, 0x1

    add-int/lit8 v3, v3, -0x1

    move-object v4, v1

    aput-object v4, v2, v3

    .line 348
    move-object v2, v0

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/sun/javafx/geom/DirtyRegionContainer;->siftDown(I)V

    .line 349
    move-object v2, v0

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    iget v3, v3, Lcom/sun/javafx/geom/DirtyRegionContainer;->heapSize:I

    const/4 v4, 0x1

    add-int/lit8 v3, v3, -0x1

    iput v3, v2, Lcom/sun/javafx/geom/DirtyRegionContainer;->heapSize:I

    .line 350
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/geom/DirtyRegionContainer;
    return-object v0
.end method

.method private takeMinWithMap([I)[I
    .locals 13

    .prologue
    .line 324
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/geom/DirtyRegionContainer;
    move-object v2, p1

    .local v2, "map":[I
    move-object v4, v1

    iget-object v4, v4, Lcom/sun/javafx/geom/DirtyRegionContainer;->heap:[[I

    const/4 v5, 0x0

    aget-object v4, v4, v5

    move-object v3, v4

    .line 329
    .local v3, "temp":[I
    :goto_0
    const/4 v4, 0x1

    move-object v5, v3

    const/4 v6, 0x1

    aget v5, v5, v6

    shl-int/2addr v4, v5

    const/4 v5, 0x1

    move-object v6, v3

    const/4 v7, 0x2

    aget v6, v6, v7

    shl-int/2addr v5, v6

    or-int/2addr v4, v5

    int-to-long v4, v4

    move-object v6, v1

    iget-wide v6, v6, Lcom/sun/javafx/geom/DirtyRegionContainer;->invalidMask:J

    and-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_0

    .line 330
    move-object v4, v3

    const/4 v5, 0x0

    move-object v6, v1

    move-object v7, v1

    move-object v8, v2

    move-object v9, v3

    const/4 v10, 0x1

    aget v9, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/sun/javafx/geom/DirtyRegionContainer;->resolveMap([II)I

    move-result v7

    move-object v8, v1

    move-object v9, v2

    move-object v10, v3

    const/4 v11, 0x2

    aget v10, v10, v11

    invoke-direct {v8, v9, v10}, Lcom/sun/javafx/geom/DirtyRegionContainer;->resolveMap([II)I

    move-result v8

    invoke-direct {v6, v7, v8}, Lcom/sun/javafx/geom/DirtyRegionContainer;->unifiedRegionArea(II)I

    move-result v6

    aput v6, v4, v5

    .line 331
    move-object v4, v1

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/sun/javafx/geom/DirtyRegionContainer;->siftDown(I)V

    .line 332
    move-object v4, v1

    iget-object v4, v4, Lcom/sun/javafx/geom/DirtyRegionContainer;->heap:[[I

    const/4 v5, 0x0

    aget-object v4, v4, v5

    move-object v5, v3

    if-ne v4, v5, :cond_1

    .line 333
    .line 338
    :cond_0
    move-object v4, v1

    iget-object v4, v4, Lcom/sun/javafx/geom/DirtyRegionContainer;->heap:[[I

    move-object v5, v1

    iget v5, v5, Lcom/sun/javafx/geom/DirtyRegionContainer;->heapSize:I

    const/4 v6, 0x1

    add-int/lit8 v5, v5, -0x1

    move-object v6, v3

    aput-object v6, v4, v5

    .line 339
    move-object v4, v1

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/sun/javafx/geom/DirtyRegionContainer;->siftDown(I)V

    .line 340
    move-object v4, v1

    move-object v12, v4

    move-object v4, v12

    move-object v5, v12

    iget v5, v5, Lcom/sun/javafx/geom/DirtyRegionContainer;->heapSize:I

    const/4 v6, 0x1

    add-int/lit8 v5, v5, -0x1

    iput v5, v4, Lcom/sun/javafx/geom/DirtyRegionContainer;->heapSize:I

    .line 341
    move-object v4, v3

    move-object v1, v4

    .end local v1    # "this":Lcom/sun/javafx/geom/DirtyRegionContainer;
    return-object v1

    .line 335
    .restart local v1    # "this":Lcom/sun/javafx/geom/DirtyRegionContainer;
    :cond_1
    move-object v4, v1

    iget-object v4, v4, Lcom/sun/javafx/geom/DirtyRegionContainer;->heap:[[I

    const/4 v5, 0x0

    aget-object v4, v4, v5

    move-object v3, v4

    goto :goto_0
.end method

.method private unifiedRegionArea(II)I
    .locals 12

    .prologue
    .line 359
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/DirtyRegionContainer;
    move v1, p1

    .local v1, "i0":I
    move v2, p2

    .local v2, "i1":I
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/geom/DirtyRegionContainer;->dirtyRegions:[Lcom/sun/javafx/geom/RectBounds;

    move v10, v1

    aget-object v9, v9, v10

    move-object v3, v9

    .line 360
    .local v3, "r0":Lcom/sun/javafx/geom/RectBounds;
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/geom/DirtyRegionContainer;->dirtyRegions:[Lcom/sun/javafx/geom/RectBounds;

    move v10, v2

    aget-object v9, v9, v10

    move-object v4, v9

    .line 362
    .local v4, "r1":Lcom/sun/javafx/geom/RectBounds;
    move-object v9, v3

    invoke-virtual {v9}, Lcom/sun/javafx/geom/RectBounds;->getMinX()F

    move-result v9

    move-object v10, v4

    invoke-virtual {v10}, Lcom/sun/javafx/geom/RectBounds;->getMinX()F

    move-result v10

    cmpg-float v9, v9, v10

    if-gez v9, :cond_0

    move-object v9, v3

    invoke-virtual {v9}, Lcom/sun/javafx/geom/RectBounds;->getMinX()F

    move-result v9

    :goto_0
    move v5, v9

    .line 363
    .local v5, "minX":F
    move-object v9, v3

    invoke-virtual {v9}, Lcom/sun/javafx/geom/RectBounds;->getMinY()F

    move-result v9

    move-object v10, v4

    invoke-virtual {v10}, Lcom/sun/javafx/geom/RectBounds;->getMinY()F

    move-result v10

    cmpg-float v9, v9, v10

    if-gez v9, :cond_1

    move-object v9, v3

    invoke-virtual {v9}, Lcom/sun/javafx/geom/RectBounds;->getMinY()F

    move-result v9

    :goto_1
    move v6, v9

    .line 364
    .local v6, "minY":F
    move-object v9, v3

    invoke-virtual {v9}, Lcom/sun/javafx/geom/RectBounds;->getMaxX()F

    move-result v9

    move-object v10, v4

    invoke-virtual {v10}, Lcom/sun/javafx/geom/RectBounds;->getMaxX()F

    move-result v10

    cmpl-float v9, v9, v10

    if-lez v9, :cond_2

    move-object v9, v3

    invoke-virtual {v9}, Lcom/sun/javafx/geom/RectBounds;->getMaxX()F

    move-result v9

    :goto_2
    move v7, v9

    .line 365
    .local v7, "maxX":F
    move-object v9, v3

    invoke-virtual {v9}, Lcom/sun/javafx/geom/RectBounds;->getMaxY()F

    move-result v9

    move-object v10, v4

    invoke-virtual {v10}, Lcom/sun/javafx/geom/RectBounds;->getMaxY()F

    move-result v10

    cmpl-float v9, v9, v10

    if-lez v9, :cond_3

    move-object v9, v3

    invoke-virtual {v9}, Lcom/sun/javafx/geom/RectBounds;->getMaxY()F

    move-result v9

    :goto_3
    move v8, v9

    .line 367
    .local v8, "maxY":F
    move v9, v7

    move v10, v5

    sub-float/2addr v9, v10

    move v10, v8

    move v11, v6

    sub-float/2addr v10, v11

    mul-float/2addr v9, v10

    float-to-int v9, v9

    move v0, v9

    .end local v0    # "this":Lcom/sun/javafx/geom/DirtyRegionContainer;
    return v0

    .line 362
    .end local v5    # "minX":F
    .end local v6    # "minY":F
    .end local v7    # "maxX":F
    .end local v8    # "maxY":F
    .restart local v0    # "this":Lcom/sun/javafx/geom/DirtyRegionContainer;
    :cond_0
    move-object v9, v4

    invoke-virtual {v9}, Lcom/sun/javafx/geom/RectBounds;->getMinX()F

    move-result v9

    goto :goto_0

    .line 363
    .restart local v5    # "minX":F
    :cond_1
    move-object v9, v4

    invoke-virtual {v9}, Lcom/sun/javafx/geom/RectBounds;->getMinY()F

    move-result v9

    goto :goto_1

    .line 364
    .restart local v6    # "minY":F
    :cond_2
    move-object v9, v4

    invoke-virtual {v9}, Lcom/sun/javafx/geom/RectBounds;->getMaxX()F

    move-result v9

    goto :goto_2

    .line 365
    .restart local v7    # "maxX":F
    :cond_3
    move-object v9, v4

    invoke-virtual {v9}, Lcom/sun/javafx/geom/RectBounds;->getMaxY()F

    move-result v9

    goto :goto_3
.end method


# virtual methods
.method public addDirtyRegion(Lcom/sun/javafx/geom/RectBounds;)V
    .locals 13

    .prologue
    .line 146
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/DirtyRegionContainer;
    move-object v1, p1

    .local v1, "region":Lcom/sun/javafx/geom/RectBounds;
    move-object v7, v1

    invoke-virtual {v7}, Lcom/sun/javafx/geom/RectBounds;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 147
    .line 177
    :goto_0
    return-void

    .line 150
    :cond_0
    const/4 v7, 0x0

    move v4, v7

    .line 151
    .local v4, "tempIndex":I
    move-object v7, v0

    iget v7, v7, Lcom/sun/javafx/geom/DirtyRegionContainer;->emptyIndex:I

    move v5, v7

    .line 153
    .local v5, "regionCount":I
    const/4 v7, 0x0

    move v6, v7

    .local v6, "i":I
    :goto_1
    move v7, v6

    move v8, v5

    if-ge v7, v8, :cond_2

    .line 155
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/geom/DirtyRegionContainer;->dirtyRegions:[Lcom/sun/javafx/geom/RectBounds;

    move v8, v4

    aget-object v7, v7, v8

    move-object v2, v7

    .line 156
    .local v2, "dr":Lcom/sun/javafx/geom/RectBounds;
    move-object v7, v1

    move-object v8, v2

    invoke-virtual {v7, v8}, Lcom/sun/javafx/geom/RectBounds;->intersects(Lcom/sun/javafx/geom/BaseBounds;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 157
    move-object v7, v1

    move-object v8, v2

    invoke-virtual {v7, v8}, Lcom/sun/javafx/geom/RectBounds;->unionWith(Lcom/sun/javafx/geom/RectBounds;)V

    .line 158
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/geom/DirtyRegionContainer;->dirtyRegions:[Lcom/sun/javafx/geom/RectBounds;

    move v8, v4

    aget-object v7, v7, v8

    move-object v3, v7

    .line 159
    .local v3, "tmp":Lcom/sun/javafx/geom/RectBounds;
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/geom/DirtyRegionContainer;->dirtyRegions:[Lcom/sun/javafx/geom/RectBounds;

    move v8, v4

    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/geom/DirtyRegionContainer;->dirtyRegions:[Lcom/sun/javafx/geom/RectBounds;

    move-object v10, v0

    iget v10, v10, Lcom/sun/javafx/geom/DirtyRegionContainer;->emptyIndex:I

    const/4 v11, 0x1

    add-int/lit8 v10, v10, -0x1

    aget-object v9, v9, v10

    aput-object v9, v7, v8

    .line 160
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/geom/DirtyRegionContainer;->dirtyRegions:[Lcom/sun/javafx/geom/RectBounds;

    move-object v8, v0

    iget v8, v8, Lcom/sun/javafx/geom/DirtyRegionContainer;->emptyIndex:I

    const/4 v9, 0x1

    add-int/lit8 v8, v8, -0x1

    move-object v9, v3

    aput-object v9, v7, v8

    .line 161
    move-object v7, v0

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    iget v8, v8, Lcom/sun/javafx/geom/DirtyRegionContainer;->emptyIndex:I

    const/4 v9, 0x1

    add-int/lit8 v8, v8, -0x1

    iput v8, v7, Lcom/sun/javafx/geom/DirtyRegionContainer;->emptyIndex:I

    .line 153
    .end local v3    # "tmp":Lcom/sun/javafx/geom/RectBounds;
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 163
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 166
    .end local v2    # "dr":Lcom/sun/javafx/geom/RectBounds;
    :cond_2
    move-object v7, v0

    invoke-direct {v7}, Lcom/sun/javafx/geom/DirtyRegionContainer;->hasSpace()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 167
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/geom/DirtyRegionContainer;->dirtyRegions:[Lcom/sun/javafx/geom/RectBounds;

    move-object v8, v0

    iget v8, v8, Lcom/sun/javafx/geom/DirtyRegionContainer;->emptyIndex:I

    aget-object v7, v7, v8

    move-object v2, v7

    .line 168
    .restart local v2    # "dr":Lcom/sun/javafx/geom/RectBounds;
    move-object v7, v2

    move-object v8, v1

    invoke-virtual {v7, v8}, Lcom/sun/javafx/geom/RectBounds;->deriveWithNewBounds(Lcom/sun/javafx/geom/BaseBounds;)Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v7

    .line 169
    move-object v7, v0

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    iget v8, v8, Lcom/sun/javafx/geom/DirtyRegionContainer;->emptyIndex:I

    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    iput v8, v7, Lcom/sun/javafx/geom/DirtyRegionContainer;->emptyIndex:I

    .line 170
    goto :goto_0

    .line 173
    .end local v2    # "dr":Lcom/sun/javafx/geom/RectBounds;
    :cond_3
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/geom/DirtyRegionContainer;->dirtyRegions:[Lcom/sun/javafx/geom/RectBounds;

    array-length v7, v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_4

    .line 174
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/geom/DirtyRegionContainer;->dirtyRegions:[Lcom/sun/javafx/geom/RectBounds;

    const/4 v8, 0x0

    aget-object v7, v7, v8

    move-object v8, v1

    invoke-virtual {v7, v8}, Lcom/sun/javafx/geom/RectBounds;->deriveWithUnion(Lcom/sun/javafx/geom/BaseBounds;)Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v7

    .line 177
    :goto_3
    goto/16 :goto_0

    .line 176
    :cond_4
    move-object v7, v0

    move-object v8, v1

    invoke-direct {v7, v8}, Lcom/sun/javafx/geom/DirtyRegionContainer;->compress(Lcom/sun/javafx/geom/RectBounds;)Lcom/sun/javafx/geom/RectBounds;

    move-result-object v7

    goto :goto_3
.end method

.method public checkAndClearRegion(I)Z
    .locals 10

    .prologue
    .line 221
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/DirtyRegionContainer;
    move v1, p1

    .local v1, "index":I
    const/4 v3, 0x0

    move v2, v3

    .line 222
    .local v2, "removed":Z
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/geom/DirtyRegionContainer;->dirtyRegions:[Lcom/sun/javafx/geom/RectBounds;

    move v4, v1

    aget-object v3, v3, v4

    invoke-virtual {v3}, Lcom/sun/javafx/geom/RectBounds;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 223
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/geom/DirtyRegionContainer;->dirtyRegions:[Lcom/sun/javafx/geom/RectBounds;

    move v4, v1

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/geom/DirtyRegionContainer;->dirtyRegions:[Lcom/sun/javafx/geom/RectBounds;

    move v6, v1

    move-object v7, v0

    iget v7, v7, Lcom/sun/javafx/geom/DirtyRegionContainer;->emptyIndex:I

    move v8, v1

    sub-int/2addr v7, v8

    const/4 v8, 0x1

    add-int/lit8 v7, v7, -0x1

    invoke-static {v3, v4, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 224
    move-object v3, v0

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    iget v4, v4, Lcom/sun/javafx/geom/DirtyRegionContainer;->emptyIndex:I

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    iput v4, v3, Lcom/sun/javafx/geom/DirtyRegionContainer;->emptyIndex:I

    .line 225
    const/4 v3, 0x1

    move v2, v3

    .line 228
    :cond_0
    move v3, v2

    move v0, v3

    .end local v0    # "this":Lcom/sun/javafx/geom/DirtyRegionContainer;
    return v0
.end method

.method public copy()Lcom/sun/javafx/geom/DirtyRegionContainer;
    .locals 9

    .prologue
    .line 118
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/DirtyRegionContainer;
    new-instance v2, Lcom/sun/javafx/geom/DirtyRegionContainer;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/javafx/geom/DirtyRegionContainer;->maxSpace()I

    move-result v4

    invoke-direct {v3, v4}, Lcom/sun/javafx/geom/DirtyRegionContainer;-><init>(I)V

    move-object v1, v2

    .line 119
    .local v1, "drc":Lcom/sun/javafx/geom/DirtyRegionContainer;
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/geom/DirtyRegionContainer;->dirtyRegions:[Lcom/sun/javafx/geom/RectBounds;

    const/4 v4, 0x0

    move-object v5, v1

    iget-object v5, v5, Lcom/sun/javafx/geom/DirtyRegionContainer;->dirtyRegions:[Lcom/sun/javafx/geom/RectBounds;

    const/4 v6, 0x0

    move-object v7, v0

    iget v7, v7, Lcom/sun/javafx/geom/DirtyRegionContainer;->emptyIndex:I

    invoke-direct/range {v2 .. v7}, Lcom/sun/javafx/geom/DirtyRegionContainer;->regioncopy([Lcom/sun/javafx/geom/RectBounds;I[Lcom/sun/javafx/geom/RectBounds;II)V

    .line 120
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/geom/DirtyRegionContainer;->emptyIndex:I

    iput v3, v2, Lcom/sun/javafx/geom/DirtyRegionContainer;->emptyIndex:I

    .line 121
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/geom/DirtyRegionContainer;
    return-object v0
.end method

.method public deriveWithNewContainer(Lcom/sun/javafx/geom/DirtyRegionContainer;)Lcom/sun/javafx/geom/DirtyRegionContainer;
    .locals 8

    .prologue
    .line 94
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/DirtyRegionContainer;
    move-object v1, p1

    .local v1, "other":Lcom/sun/javafx/geom/DirtyRegionContainer;
    move-object v2, v1

    if-eqz v2, :cond_0

    move-object v2, v1

    .line 95
    invoke-virtual {v2}, Lcom/sun/javafx/geom/DirtyRegionContainer;->maxSpace()I

    move-result v2

    if-nez v2, :cond_1

    .line 97
    :cond_0
    move-object v2, v0

    move-object v0, v2

    .line 106
    .end local v0    # "this":Lcom/sun/javafx/geom/DirtyRegionContainer;
    :goto_0
    return-object v0

    .line 100
    .restart local v0    # "this":Lcom/sun/javafx/geom/DirtyRegionContainer;
    :cond_1
    move-object v2, v1

    invoke-virtual {v2}, Lcom/sun/javafx/geom/DirtyRegionContainer;->maxSpace()I

    move-result v2

    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/geom/DirtyRegionContainer;->maxSpace()I

    move-result v3

    if-le v2, v3, :cond_2

    .line 101
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Lcom/sun/javafx/geom/DirtyRegionContainer;->maxSpace()I

    move-result v3

    invoke-direct {v2, v3}, Lcom/sun/javafx/geom/DirtyRegionContainer;->initDirtyRegions(I)V

    .line 104
    :cond_2
    move-object v2, v0

    move-object v3, v1

    iget-object v3, v3, Lcom/sun/javafx/geom/DirtyRegionContainer;->dirtyRegions:[Lcom/sun/javafx/geom/RectBounds;

    const/4 v4, 0x0

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/geom/DirtyRegionContainer;->dirtyRegions:[Lcom/sun/javafx/geom/RectBounds;

    const/4 v6, 0x0

    move-object v7, v1

    iget v7, v7, Lcom/sun/javafx/geom/DirtyRegionContainer;->emptyIndex:I

    invoke-direct/range {v2 .. v7}, Lcom/sun/javafx/geom/DirtyRegionContainer;->regioncopy([Lcom/sun/javafx/geom/RectBounds;I[Lcom/sun/javafx/geom/RectBounds;II)V

    .line 105
    move-object v2, v0

    move-object v3, v1

    iget v3, v3, Lcom/sun/javafx/geom/DirtyRegionContainer;->emptyIndex:I

    iput v3, v2, Lcom/sun/javafx/geom/DirtyRegionContainer;->emptyIndex:I

    .line 106
    move-object v2, v0

    move-object v0, v2

    goto :goto_0
.end method

.method public deriveWithNewRegion(Lcom/sun/javafx/geom/RectBounds;)Lcom/sun/javafx/geom/DirtyRegionContainer;
    .locals 4

    .prologue
    .line 70
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/DirtyRegionContainer;
    move-object v1, p1

    .local v1, "region":Lcom/sun/javafx/geom/RectBounds;
    move-object v2, v1

    if-nez v2, :cond_0

    .line 71
    move-object v2, v0

    move-object v0, v2

    .line 75
    .end local v0    # "this":Lcom/sun/javafx/geom/DirtyRegionContainer;
    :goto_0
    return-object v0

    .line 73
    .restart local v0    # "this":Lcom/sun/javafx/geom/DirtyRegionContainer;
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/geom/DirtyRegionContainer;->dirtyRegions:[Lcom/sun/javafx/geom/RectBounds;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/javafx/geom/RectBounds;->deriveWithNewBounds(Lcom/sun/javafx/geom/BaseBounds;)Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v2

    .line 74
    move-object v2, v0

    const/4 v3, 0x1

    iput v3, v2, Lcom/sun/javafx/geom/DirtyRegionContainer;->emptyIndex:I

    .line 75
    move-object v2, v0

    move-object v0, v2

    goto :goto_0
.end method

.method public deriveWithNewRegions([Lcom/sun/javafx/geom/RectBounds;)Lcom/sun/javafx/geom/DirtyRegionContainer;
    .locals 8

    .prologue
    .line 79
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/DirtyRegionContainer;
    move-object v1, p1

    .local v1, "regions":[Lcom/sun/javafx/geom/RectBounds;
    move-object v2, v1

    if-eqz v2, :cond_0

    move-object v2, v1

    array-length v2, v2

    if-nez v2, :cond_1

    .line 82
    :cond_0
    move-object v2, v0

    move-object v0, v2

    .line 90
    .end local v0    # "this":Lcom/sun/javafx/geom/DirtyRegionContainer;
    :goto_0
    return-object v0

    .line 84
    .restart local v0    # "this":Lcom/sun/javafx/geom/DirtyRegionContainer;
    :cond_1
    move-object v2, v1

    array-length v2, v2

    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/geom/DirtyRegionContainer;->maxSpace()I

    move-result v3

    if-le v2, v3, :cond_2

    .line 85
    move-object v2, v0

    move-object v3, v1

    array-length v3, v3

    invoke-direct {v2, v3}, Lcom/sun/javafx/geom/DirtyRegionContainer;->initDirtyRegions(I)V

    .line 88
    :cond_2
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/geom/DirtyRegionContainer;->dirtyRegions:[Lcom/sun/javafx/geom/RectBounds;

    const/4 v6, 0x0

    move-object v7, v1

    array-length v7, v7

    invoke-direct/range {v2 .. v7}, Lcom/sun/javafx/geom/DirtyRegionContainer;->regioncopy([Lcom/sun/javafx/geom/RectBounds;I[Lcom/sun/javafx/geom/RectBounds;II)V

    .line 89
    move-object v2, v0

    move-object v3, v1

    array-length v3, v3

    iput v3, v2, Lcom/sun/javafx/geom/DirtyRegionContainer;->emptyIndex:I

    .line 90
    move-object v2, v0

    move-object v0, v2

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    .prologue
    .line 50
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/DirtyRegionContainer;
    move-object v1, p1

    .local v1, "obj":Ljava/lang/Object;
    move-object v4, v1

    instance-of v4, v4, Lcom/sun/javafx/geom/DirtyRegionContainer;

    if-eqz v4, :cond_3

    .line 51
    move-object v4, v1

    check-cast v4, Lcom/sun/javafx/geom/DirtyRegionContainer;

    move-object v2, v4

    .line 52
    .local v2, "drc":Lcom/sun/javafx/geom/DirtyRegionContainer;
    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/javafx/geom/DirtyRegionContainer;->size()I

    move-result v4

    move-object v5, v2

    invoke-virtual {v5}, Lcom/sun/javafx/geom/DirtyRegionContainer;->size()I

    move-result v5

    if-eq v4, v5, :cond_0

    const/4 v4, 0x0

    move v0, v4

    .line 58
    .end local v0    # "this":Lcom/sun/javafx/geom/DirtyRegionContainer;
    .end local v2    # "drc":Lcom/sun/javafx/geom/DirtyRegionContainer;
    :goto_0
    return v0

    .line 53
    .restart local v0    # "this":Lcom/sun/javafx/geom/DirtyRegionContainer;
    .restart local v2    # "drc":Lcom/sun/javafx/geom/DirtyRegionContainer;
    :cond_0
    const/4 v4, 0x0

    move v3, v4

    .local v3, "i":I
    :goto_1
    move v4, v3

    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/geom/DirtyRegionContainer;->emptyIndex:I

    if-ge v4, v5, :cond_2

    .line 54
    move-object v4, v0

    move v5, v3

    invoke-virtual {v4, v5}, Lcom/sun/javafx/geom/DirtyRegionContainer;->getDirtyRegion(I)Lcom/sun/javafx/geom/RectBounds;

    move-result-object v4

    move-object v5, v2

    move v6, v3

    invoke-virtual {v5, v6}, Lcom/sun/javafx/geom/DirtyRegionContainer;->getDirtyRegion(I)Lcom/sun/javafx/geom/RectBounds;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sun/javafx/geom/RectBounds;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const/4 v4, 0x0

    move v0, v4

    goto :goto_0

    .line 53
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 56
    :cond_2
    const/4 v4, 0x1

    move v0, v4

    goto :goto_0

    .line 58
    .end local v2    # "drc":Lcom/sun/javafx/geom/DirtyRegionContainer;
    .end local v3    # "i":I
    :cond_3
    const/4 v4, 0x0

    move v0, v4

    goto :goto_0
.end method

.method public getDirtyRegion(I)Lcom/sun/javafx/geom/RectBounds;
    .locals 4

    .prologue
    .line 134
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/DirtyRegionContainer;
    move v1, p1

    .local v1, "index":I
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/geom/DirtyRegionContainer;->dirtyRegions:[Lcom/sun/javafx/geom/RectBounds;

    move v3, v1

    aget-object v2, v2, v3

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/geom/DirtyRegionContainer;
    return-object v0
.end method

.method public grow(II)V
    .locals 7

    .prologue
    .line 232
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/DirtyRegionContainer;
    move v1, p1

    .local v1, "horizontal":I
    move v2, p2

    .local v2, "vertical":I
    move v4, v1

    if-nez v4, :cond_0

    move v4, v2

    if-eqz v4, :cond_1

    .line 233
    :cond_0
    const/4 v4, 0x0

    move v3, v4

    .local v3, "i":I
    :goto_0
    move v4, v3

    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/geom/DirtyRegionContainer;->emptyIndex:I

    if-ge v4, v5, :cond_1

    .line 234
    move-object v4, v0

    move v5, v3

    invoke-virtual {v4, v5}, Lcom/sun/javafx/geom/DirtyRegionContainer;->getDirtyRegion(I)Lcom/sun/javafx/geom/RectBounds;

    move-result-object v4

    move v5, v1

    int-to-float v5, v5

    move v6, v2

    int-to-float v6, v6

    invoke-virtual {v4, v5, v6}, Lcom/sun/javafx/geom/RectBounds;->grow(FF)V

    .line 233
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 237
    .end local v3    # "i":I
    :cond_1
    return-void
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 63
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/DirtyRegionContainer;
    const/4 v2, 0x5

    move v1, v2

    .line 64
    .local v1, "hash":I
    const/16 v2, 0x61

    move v3, v1

    mul-int/2addr v2, v3

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/geom/DirtyRegionContainer;->dirtyRegions:[Lcom/sun/javafx/geom/RectBounds;

    invoke-static {v3}, Ljava/util/Arrays;->deepHashCode([Ljava/lang/Object;)I

    move-result v3

    add-int/2addr v2, v3

    move v1, v2

    .line 65
    const/16 v2, 0x61

    move v3, v1

    mul-int/2addr v2, v3

    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/geom/DirtyRegionContainer;->emptyIndex:I

    add-int/2addr v2, v3

    move v1, v2

    .line 66
    move v2, v1

    move v0, v2

    .end local v0    # "this":Lcom/sun/javafx/geom/DirtyRegionContainer;
    return v0
.end method

.method public maxSpace()I
    .locals 2

    .prologue
    .line 125
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/DirtyRegionContainer;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/geom/DirtyRegionContainer;->dirtyRegions:[Lcom/sun/javafx/geom/RectBounds;

    array-length v1, v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/geom/DirtyRegionContainer;
    return v0
.end method

.method public merge(Lcom/sun/javafx/geom/DirtyRegionContainer;)V
    .locals 7

    .prologue
    .line 180
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/DirtyRegionContainer;
    move-object v1, p1

    .local v1, "other":Lcom/sun/javafx/geom/DirtyRegionContainer;
    move-object v4, v1

    invoke-virtual {v4}, Lcom/sun/javafx/geom/DirtyRegionContainer;->size()I

    move-result v4

    move v2, v4

    .line 181
    .local v2, "otherSize":I
    const/4 v4, 0x0

    move v3, v4

    .local v3, "i":I
    :goto_0
    move v4, v3

    move v5, v2

    if-ge v4, v5, :cond_0

    .line 182
    move-object v4, v0

    move-object v5, v1

    move v6, v3

    invoke-virtual {v5, v6}, Lcom/sun/javafx/geom/DirtyRegionContainer;->getDirtyRegion(I)Lcom/sun/javafx/geom/RectBounds;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sun/javafx/geom/DirtyRegionContainer;->addDirtyRegion(Lcom/sun/javafx/geom/RectBounds;)V

    .line 181
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 184
    :cond_0
    return-void
.end method

.method public reset()V
    .locals 3

    .prologue
    .line 191
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/DirtyRegionContainer;
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Lcom/sun/javafx/geom/DirtyRegionContainer;->emptyIndex:I

    .line 192
    return-void
.end method

.method public roundOut()V
    .locals 4

    .prologue
    .line 240
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/DirtyRegionContainer;
    const/4 v2, 0x0

    move v1, v2

    .local v1, "i":I
    :goto_0
    move v2, v1

    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/geom/DirtyRegionContainer;->emptyIndex:I

    if-ge v2, v3, :cond_0

    .line 241
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/geom/DirtyRegionContainer;->dirtyRegions:[Lcom/sun/javafx/geom/RectBounds;

    move v3, v1

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lcom/sun/javafx/geom/RectBounds;->roundOut()V

    .line 240
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 243
    :cond_0
    return-void
.end method

.method public setDirtyRegion(ILcom/sun/javafx/geom/RectBounds;)V
    .locals 6

    .prologue
    .line 138
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/DirtyRegionContainer;
    move v1, p1

    .local v1, "index":I
    move-object v2, p2

    .local v2, "region":Lcom/sun/javafx/geom/RectBounds;
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/geom/DirtyRegionContainer;->dirtyRegions:[Lcom/sun/javafx/geom/RectBounds;

    move v4, v1

    move-object v5, v2

    aput-object v5, v3, v4

    .line 139
    return-void
.end method

.method public size()I
    .locals 2

    .prologue
    .line 187
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/DirtyRegionContainer;
    move-object v1, v0

    iget v1, v1, Lcom/sun/javafx/geom/DirtyRegionContainer;->emptyIndex:I

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/geom/DirtyRegionContainer;
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .prologue
    .line 247
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/DirtyRegionContainer;
    new-instance v3, Ljava/lang/StringBuilder;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object v1, v3

    .line 248
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    move v2, v3

    .local v2, "i":I
    :goto_0
    move v3, v2

    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/geom/DirtyRegionContainer;->emptyIndex:I

    if-ge v3, v4, :cond_0

    .line 249
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/geom/DirtyRegionContainer;->dirtyRegions:[Lcom/sun/javafx/geom/RectBounds;

    move v5, v2

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 250
    move-object v3, v1

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 248
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 252
    :cond_0
    move-object v3, v1

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lcom/sun/javafx/geom/DirtyRegionContainer;
    return-object v0
.end method
