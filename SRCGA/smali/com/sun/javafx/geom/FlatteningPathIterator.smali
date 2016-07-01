.class public Lcom/sun/javafx/geom/FlatteningPathIterator;
.super Ljava/lang/Object;
.source "FlatteningPathIterator.java"

# interfaces
.implements Lcom/sun/javafx/geom/PathIterator;


# static fields
.field static final GROW_SIZE:I = 0x18


# instance fields
.field curx:F

.field cury:F

.field done:Z

.field volatile hold:[F

.field holdEnd:I

.field holdIndex:I

.field holdType:I

.field levelIndex:I

.field levels:[I

.field limit:I

.field movx:F

.field movy:F

.field squareflat:F

.field src:Lcom/sun/javafx/geom/PathIterator;


# direct methods
.method public constructor <init>(Lcom/sun/javafx/geom/PathIterator;F)V
    .locals 7

    .prologue
    .line 96
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/FlatteningPathIterator;
    move-object v1, p1

    .local v1, "src":Lcom/sun/javafx/geom/PathIterator;
    move v2, p2

    .local v2, "flatness":F
    move-object v3, v0

    move-object v4, v1

    move v5, v2

    const/16 v6, 0xa

    invoke-direct {v3, v4, v5, v6}, Lcom/sun/javafx/geom/FlatteningPathIterator;-><init>(Lcom/sun/javafx/geom/PathIterator;FI)V

    .line 97
    return-void
.end method

.method public constructor <init>(Lcom/sun/javafx/geom/PathIterator;FI)V
    .locals 8

    .prologue
    .line 118
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/FlatteningPathIterator;
    move-object v1, p1

    .local v1, "src":Lcom/sun/javafx/geom/PathIterator;
    move v2, p2

    .local v2, "flatness":F
    move v3, p3

    .local v3, "limit":I
    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 49
    move-object v4, v0

    const/16 v5, 0xe

    new-array v5, v5, [F

    iput-object v5, v4, Lcom/sun/javafx/geom/FlatteningPathIterator;->hold:[F

    .line 119
    move v4, v2

    const/4 v5, 0x0

    cmpg-float v4, v4, v5

    if-gez v4, :cond_0

    .line 120
    new-instance v4, Ljava/lang/IllegalArgumentException;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    const-string v6, "flatness must be >= 0"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 122
    :cond_0
    move v4, v3

    if-gez v4, :cond_1

    .line 123
    new-instance v4, Ljava/lang/IllegalArgumentException;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    const-string v6, "limit must be >= 0"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 125
    :cond_1
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/sun/javafx/geom/FlatteningPathIterator;->src:Lcom/sun/javafx/geom/PathIterator;

    .line 126
    move-object v4, v0

    move v5, v2

    move v6, v2

    mul-float/2addr v5, v6

    iput v5, v4, Lcom/sun/javafx/geom/FlatteningPathIterator;->squareflat:F

    .line 127
    move-object v4, v0

    move v5, v3

    iput v5, v4, Lcom/sun/javafx/geom/FlatteningPathIterator;->limit:I

    .line 128
    move-object v4, v0

    move v5, v3

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    new-array v5, v5, [I

    iput-object v5, v4, Lcom/sun/javafx/geom/FlatteningPathIterator;->levels:[I

    .line 130
    move-object v4, v0

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/sun/javafx/geom/FlatteningPathIterator;->next(Z)V

    .line 131
    return-void
.end method

.method private next(Z)V
    .locals 11

    .prologue
    .line 201
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/FlatteningPathIterator;
    move v1, p1

    .local v1, "doNext":Z
    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/geom/FlatteningPathIterator;->holdIndex:I

    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/geom/FlatteningPathIterator;->holdEnd:I

    if-lt v3, v4, :cond_2

    .line 202
    move v3, v1

    if-eqz v3, :cond_0

    .line 203
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/geom/FlatteningPathIterator;->src:Lcom/sun/javafx/geom/PathIterator;

    invoke-interface {v3}, Lcom/sun/javafx/geom/PathIterator;->next()V

    .line 205
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/geom/FlatteningPathIterator;->src:Lcom/sun/javafx/geom/PathIterator;

    invoke-interface {v3}, Lcom/sun/javafx/geom/PathIterator;->isDone()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 206
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/sun/javafx/geom/FlatteningPathIterator;->done:Z

    .line 207
    .line 325
    :goto_0
    return-void

    .line 209
    :cond_1
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/geom/FlatteningPathIterator;->src:Lcom/sun/javafx/geom/PathIterator;

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/geom/FlatteningPathIterator;->hold:[F

    invoke-interface {v4, v5}, Lcom/sun/javafx/geom/PathIterator;->currentSegment([F)I

    move-result v4

    iput v4, v3, Lcom/sun/javafx/geom/FlatteningPathIterator;->holdType:I

    .line 210
    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Lcom/sun/javafx/geom/FlatteningPathIterator;->levelIndex:I

    .line 211
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/geom/FlatteningPathIterator;->levels:[I

    const/4 v4, 0x0

    const/4 v5, 0x0

    aput v5, v3, v4

    .line 214
    :cond_2
    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/geom/FlatteningPathIterator;->holdType:I

    packed-switch v3, :pswitch_data_0

    .line 325
    :goto_1
    goto :goto_0

    .line 217
    :pswitch_0
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/geom/FlatteningPathIterator;->hold:[F

    const/4 v5, 0x0

    aget v4, v4, v5

    iput v4, v3, Lcom/sun/javafx/geom/FlatteningPathIterator;->curx:F

    .line 218
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/geom/FlatteningPathIterator;->hold:[F

    const/4 v5, 0x1

    aget v4, v4, v5

    iput v4, v3, Lcom/sun/javafx/geom/FlatteningPathIterator;->cury:F

    .line 219
    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/geom/FlatteningPathIterator;->holdType:I

    if-nez v3, :cond_3

    .line 220
    move-object v3, v0

    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/geom/FlatteningPathIterator;->curx:F

    iput v4, v3, Lcom/sun/javafx/geom/FlatteningPathIterator;->movx:F

    .line 221
    move-object v3, v0

    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/geom/FlatteningPathIterator;->cury:F

    iput v4, v3, Lcom/sun/javafx/geom/FlatteningPathIterator;->movy:F

    .line 223
    :cond_3
    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Lcom/sun/javafx/geom/FlatteningPathIterator;->holdIndex:I

    .line 224
    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Lcom/sun/javafx/geom/FlatteningPathIterator;->holdEnd:I

    .line 225
    goto :goto_1

    .line 227
    :pswitch_1
    move-object v3, v0

    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/geom/FlatteningPathIterator;->movx:F

    iput v4, v3, Lcom/sun/javafx/geom/FlatteningPathIterator;->curx:F

    .line 228
    move-object v3, v0

    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/geom/FlatteningPathIterator;->movy:F

    iput v4, v3, Lcom/sun/javafx/geom/FlatteningPathIterator;->cury:F

    .line 229
    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Lcom/sun/javafx/geom/FlatteningPathIterator;->holdIndex:I

    .line 230
    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Lcom/sun/javafx/geom/FlatteningPathIterator;->holdEnd:I

    .line 231
    goto :goto_1

    .line 233
    :pswitch_2
    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/geom/FlatteningPathIterator;->holdIndex:I

    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/geom/FlatteningPathIterator;->holdEnd:I

    if-lt v3, v4, :cond_4

    .line 235
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/geom/FlatteningPathIterator;->hold:[F

    array-length v4, v4

    const/4 v5, 0x6

    add-int/lit8 v4, v4, -0x6

    iput v4, v3, Lcom/sun/javafx/geom/FlatteningPathIterator;->holdIndex:I

    .line 236
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/geom/FlatteningPathIterator;->hold:[F

    array-length v4, v4

    const/4 v5, 0x2

    add-int/lit8 v4, v4, -0x2

    iput v4, v3, Lcom/sun/javafx/geom/FlatteningPathIterator;->holdEnd:I

    .line 237
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/geom/FlatteningPathIterator;->hold:[F

    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/geom/FlatteningPathIterator;->holdIndex:I

    const/4 v5, 0x0

    add-int/lit8 v4, v4, 0x0

    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/geom/FlatteningPathIterator;->curx:F

    aput v5, v3, v4

    .line 238
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/geom/FlatteningPathIterator;->hold:[F

    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/geom/FlatteningPathIterator;->holdIndex:I

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/geom/FlatteningPathIterator;->cury:F

    aput v5, v3, v4

    .line 239
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/geom/FlatteningPathIterator;->hold:[F

    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/geom/FlatteningPathIterator;->holdIndex:I

    const/4 v5, 0x2

    add-int/lit8 v4, v4, 0x2

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/geom/FlatteningPathIterator;->hold:[F

    const/4 v6, 0x0

    aget v5, v5, v6

    aput v5, v3, v4

    .line 240
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/geom/FlatteningPathIterator;->hold:[F

    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/geom/FlatteningPathIterator;->holdIndex:I

    const/4 v5, 0x3

    add-int/lit8 v4, v4, 0x3

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/geom/FlatteningPathIterator;->hold:[F

    const/4 v6, 0x1

    aget v5, v5, v6

    aput v5, v3, v4

    .line 241
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/geom/FlatteningPathIterator;->hold:[F

    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/geom/FlatteningPathIterator;->holdIndex:I

    const/4 v5, 0x4

    add-int/lit8 v4, v4, 0x4

    move-object v5, v0

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/geom/FlatteningPathIterator;->hold:[F

    const/4 v7, 0x2

    aget v6, v6, v7

    move-object v9, v5

    move v10, v6

    move v5, v10

    move-object v6, v9

    move v7, v10

    iput v7, v6, Lcom/sun/javafx/geom/FlatteningPathIterator;->curx:F

    aput v5, v3, v4

    .line 242
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/geom/FlatteningPathIterator;->hold:[F

    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/geom/FlatteningPathIterator;->holdIndex:I

    const/4 v5, 0x5

    add-int/lit8 v4, v4, 0x5

    move-object v5, v0

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/geom/FlatteningPathIterator;->hold:[F

    const/4 v7, 0x3

    aget v6, v6, v7

    move-object v9, v5

    move v10, v6

    move v5, v10

    move-object v6, v9

    move v7, v10

    iput v7, v6, Lcom/sun/javafx/geom/FlatteningPathIterator;->cury:F

    aput v5, v3, v4

    .line 245
    :cond_4
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/geom/FlatteningPathIterator;->levels:[I

    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/geom/FlatteningPathIterator;->levelIndex:I

    aget v3, v3, v4

    move v2, v3

    .line 246
    .local v2, "level":I
    :goto_2
    move v3, v2

    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/geom/FlatteningPathIterator;->limit:I

    if-ge v3, v4, :cond_5

    .line 247
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/geom/FlatteningPathIterator;->hold:[F

    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/geom/FlatteningPathIterator;->holdIndex:I

    invoke-static {v3, v4}, Lcom/sun/javafx/geom/QuadCurve2D;->getFlatnessSq([FI)F

    move-result v3

    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/geom/FlatteningPathIterator;->squareflat:F

    cmpg-float v3, v3, v4

    if-gez v3, :cond_6

    .line 248
    .line 274
    :cond_5
    move-object v3, v0

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    iget v4, v4, Lcom/sun/javafx/geom/FlatteningPathIterator;->holdIndex:I

    const/4 v5, 0x4

    add-int/lit8 v4, v4, 0x4

    iput v4, v3, Lcom/sun/javafx/geom/FlatteningPathIterator;->holdIndex:I

    .line 275
    move-object v3, v0

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    iget v4, v4, Lcom/sun/javafx/geom/FlatteningPathIterator;->levelIndex:I

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    iput v4, v3, Lcom/sun/javafx/geom/FlatteningPathIterator;->levelIndex:I

    .line 276
    goto/16 :goto_1

    .line 251
    :cond_6
    move-object v3, v0

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/sun/javafx/geom/FlatteningPathIterator;->ensureHoldCapacity(I)V

    .line 252
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/geom/FlatteningPathIterator;->hold:[F

    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/geom/FlatteningPathIterator;->holdIndex:I

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/geom/FlatteningPathIterator;->hold:[F

    move-object v6, v0

    iget v6, v6, Lcom/sun/javafx/geom/FlatteningPathIterator;->holdIndex:I

    const/4 v7, 0x4

    add-int/lit8 v6, v6, -0x4

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/geom/FlatteningPathIterator;->hold:[F

    move-object v8, v0

    iget v8, v8, Lcom/sun/javafx/geom/FlatteningPathIterator;->holdIndex:I

    invoke-static/range {v3 .. v8}, Lcom/sun/javafx/geom/QuadCurve2D;->subdivide([FI[FI[FI)V

    .line 255
    move-object v3, v0

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    iget v4, v4, Lcom/sun/javafx/geom/FlatteningPathIterator;->holdIndex:I

    const/4 v5, 0x4

    add-int/lit8 v4, v4, -0x4

    iput v4, v3, Lcom/sun/javafx/geom/FlatteningPathIterator;->holdIndex:I

    .line 263
    add-int/lit8 v2, v2, 0x1

    .line 264
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/geom/FlatteningPathIterator;->levels:[I

    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/geom/FlatteningPathIterator;->levelIndex:I

    move v5, v2

    aput v5, v3, v4

    .line 265
    move-object v3, v0

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    iget v4, v4, Lcom/sun/javafx/geom/FlatteningPathIterator;->levelIndex:I

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lcom/sun/javafx/geom/FlatteningPathIterator;->levelIndex:I

    .line 266
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/geom/FlatteningPathIterator;->levels:[I

    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/geom/FlatteningPathIterator;->levelIndex:I

    move v5, v2

    aput v5, v3, v4

    goto :goto_2

    .line 278
    .end local v2    # "level":I
    :pswitch_3
    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/geom/FlatteningPathIterator;->holdIndex:I

    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/geom/FlatteningPathIterator;->holdEnd:I

    if-lt v3, v4, :cond_7

    .line 280
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/geom/FlatteningPathIterator;->hold:[F

    array-length v4, v4

    const/16 v5, 0x8

    add-int/lit8 v4, v4, -0x8

    iput v4, v3, Lcom/sun/javafx/geom/FlatteningPathIterator;->holdIndex:I

    .line 281
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/geom/FlatteningPathIterator;->hold:[F

    array-length v4, v4

    const/4 v5, 0x2

    add-int/lit8 v4, v4, -0x2

    iput v4, v3, Lcom/sun/javafx/geom/FlatteningPathIterator;->holdEnd:I

    .line 282
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/geom/FlatteningPathIterator;->hold:[F

    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/geom/FlatteningPathIterator;->holdIndex:I

    const/4 v5, 0x0

    add-int/lit8 v4, v4, 0x0

    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/geom/FlatteningPathIterator;->curx:F

    aput v5, v3, v4

    .line 283
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/geom/FlatteningPathIterator;->hold:[F

    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/geom/FlatteningPathIterator;->holdIndex:I

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/geom/FlatteningPathIterator;->cury:F

    aput v5, v3, v4

    .line 284
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/geom/FlatteningPathIterator;->hold:[F

    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/geom/FlatteningPathIterator;->holdIndex:I

    const/4 v5, 0x2

    add-int/lit8 v4, v4, 0x2

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/geom/FlatteningPathIterator;->hold:[F

    const/4 v6, 0x0

    aget v5, v5, v6

    aput v5, v3, v4

    .line 285
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/geom/FlatteningPathIterator;->hold:[F

    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/geom/FlatteningPathIterator;->holdIndex:I

    const/4 v5, 0x3

    add-int/lit8 v4, v4, 0x3

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/geom/FlatteningPathIterator;->hold:[F

    const/4 v6, 0x1

    aget v5, v5, v6

    aput v5, v3, v4

    .line 286
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/geom/FlatteningPathIterator;->hold:[F

    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/geom/FlatteningPathIterator;->holdIndex:I

    const/4 v5, 0x4

    add-int/lit8 v4, v4, 0x4

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/geom/FlatteningPathIterator;->hold:[F

    const/4 v6, 0x2

    aget v5, v5, v6

    aput v5, v3, v4

    .line 287
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/geom/FlatteningPathIterator;->hold:[F

    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/geom/FlatteningPathIterator;->holdIndex:I

    const/4 v5, 0x5

    add-int/lit8 v4, v4, 0x5

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/geom/FlatteningPathIterator;->hold:[F

    const/4 v6, 0x3

    aget v5, v5, v6

    aput v5, v3, v4

    .line 288
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/geom/FlatteningPathIterator;->hold:[F

    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/geom/FlatteningPathIterator;->holdIndex:I

    const/4 v5, 0x6

    add-int/lit8 v4, v4, 0x6

    move-object v5, v0

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/geom/FlatteningPathIterator;->hold:[F

    const/4 v7, 0x4

    aget v6, v6, v7

    move-object v9, v5

    move v10, v6

    move v5, v10

    move-object v6, v9

    move v7, v10

    iput v7, v6, Lcom/sun/javafx/geom/FlatteningPathIterator;->curx:F

    aput v5, v3, v4

    .line 289
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/geom/FlatteningPathIterator;->hold:[F

    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/geom/FlatteningPathIterator;->holdIndex:I

    const/4 v5, 0x7

    add-int/lit8 v4, v4, 0x7

    move-object v5, v0

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/geom/FlatteningPathIterator;->hold:[F

    const/4 v7, 0x5

    aget v6, v6, v7

    move-object v9, v5

    move v10, v6

    move v5, v10

    move-object v6, v9

    move v7, v10

    iput v7, v6, Lcom/sun/javafx/geom/FlatteningPathIterator;->cury:F

    aput v5, v3, v4

    .line 292
    :cond_7
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/geom/FlatteningPathIterator;->levels:[I

    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/geom/FlatteningPathIterator;->levelIndex:I

    aget v3, v3, v4

    move v2, v3

    .line 293
    .restart local v2    # "level":I
    :goto_3
    move v3, v2

    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/geom/FlatteningPathIterator;->limit:I

    if-ge v3, v4, :cond_8

    .line 294
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/geom/FlatteningPathIterator;->hold:[F

    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/geom/FlatteningPathIterator;->holdIndex:I

    invoke-static {v3, v4}, Lcom/sun/javafx/geom/CubicCurve2D;->getFlatnessSq([FI)F

    move-result v3

    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/geom/FlatteningPathIterator;->squareflat:F

    cmpg-float v3, v3, v4

    if-gez v3, :cond_9

    .line 295
    .line 321
    :cond_8
    move-object v3, v0

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    iget v4, v4, Lcom/sun/javafx/geom/FlatteningPathIterator;->holdIndex:I

    const/4 v5, 0x6

    add-int/lit8 v4, v4, 0x6

    iput v4, v3, Lcom/sun/javafx/geom/FlatteningPathIterator;->holdIndex:I

    .line 322
    move-object v3, v0

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    iget v4, v4, Lcom/sun/javafx/geom/FlatteningPathIterator;->levelIndex:I

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    iput v4, v3, Lcom/sun/javafx/geom/FlatteningPathIterator;->levelIndex:I

    goto/16 :goto_1

    .line 298
    :cond_9
    move-object v3, v0

    const/4 v4, 0x6

    invoke-virtual {v3, v4}, Lcom/sun/javafx/geom/FlatteningPathIterator;->ensureHoldCapacity(I)V

    .line 299
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/geom/FlatteningPathIterator;->hold:[F

    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/geom/FlatteningPathIterator;->holdIndex:I

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/geom/FlatteningPathIterator;->hold:[F

    move-object v6, v0

    iget v6, v6, Lcom/sun/javafx/geom/FlatteningPathIterator;->holdIndex:I

    const/4 v7, 0x6

    add-int/lit8 v6, v6, -0x6

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/geom/FlatteningPathIterator;->hold:[F

    move-object v8, v0

    iget v8, v8, Lcom/sun/javafx/geom/FlatteningPathIterator;->holdIndex:I

    invoke-static/range {v3 .. v8}, Lcom/sun/javafx/geom/CubicCurve2D;->subdivide([FI[FI[FI)V

    .line 302
    move-object v3, v0

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    iget v4, v4, Lcom/sun/javafx/geom/FlatteningPathIterator;->holdIndex:I

    const/4 v5, 0x6

    add-int/lit8 v4, v4, -0x6

    iput v4, v3, Lcom/sun/javafx/geom/FlatteningPathIterator;->holdIndex:I

    .line 310
    add-int/lit8 v2, v2, 0x1

    .line 311
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/geom/FlatteningPathIterator;->levels:[I

    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/geom/FlatteningPathIterator;->levelIndex:I

    move v5, v2

    aput v5, v3, v4

    .line 312
    move-object v3, v0

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    iget v4, v4, Lcom/sun/javafx/geom/FlatteningPathIterator;->levelIndex:I

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lcom/sun/javafx/geom/FlatteningPathIterator;->levelIndex:I

    .line 313
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/geom/FlatteningPathIterator;->levels:[I

    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/geom/FlatteningPathIterator;->levelIndex:I

    move v5, v2

    aput v5, v3, v4

    goto :goto_3

    .line 214
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public currentSegment([F)I
    .locals 9

    .prologue
    .line 348
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/FlatteningPathIterator;
    move-object v1, p1

    .local v1, "coords":[F
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/geom/FlatteningPathIterator;->isDone()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 349
    new-instance v3, Ljava/util/NoSuchElementException;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    const-string v5, "flattening iterator out of bounds"

    invoke-direct {v4, v5}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 351
    :cond_0
    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/geom/FlatteningPathIterator;->holdType:I

    move v2, v3

    .line 352
    .local v2, "type":I
    move v3, v2

    const/4 v4, 0x4

    if-eq v3, v4, :cond_1

    .line 353
    move-object v3, v1

    const/4 v4, 0x0

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/geom/FlatteningPathIterator;->hold:[F

    move-object v6, v0

    iget v6, v6, Lcom/sun/javafx/geom/FlatteningPathIterator;->holdIndex:I

    const/4 v7, 0x0

    add-int/lit8 v6, v6, 0x0

    aget v5, v5, v6

    aput v5, v3, v4

    .line 354
    move-object v3, v1

    const/4 v4, 0x1

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/geom/FlatteningPathIterator;->hold:[F

    move-object v6, v0

    iget v6, v6, Lcom/sun/javafx/geom/FlatteningPathIterator;->holdIndex:I

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    aget v5, v5, v6

    aput v5, v3, v4

    .line 355
    move v3, v2

    if-eqz v3, :cond_1

    .line 356
    const/4 v3, 0x1

    move v2, v3

    .line 359
    :cond_1
    move v3, v2

    move v0, v3

    .end local v0    # "this":Lcom/sun/javafx/geom/FlatteningPathIterator;
    return v0
.end method

.method ensureHoldCapacity(I)V
    .locals 11

    .prologue
    .line 176
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/FlatteningPathIterator;
    move v1, p1

    .local v1, "want":I
    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/geom/FlatteningPathIterator;->holdIndex:I

    move v6, v1

    sub-int/2addr v5, v6

    if-gez v5, :cond_0

    .line 177
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/geom/FlatteningPathIterator;->hold:[F

    array-length v5, v5

    move-object v6, v0

    iget v6, v6, Lcom/sun/javafx/geom/FlatteningPathIterator;->holdIndex:I

    sub-int/2addr v5, v6

    move v2, v5

    .line 178
    .local v2, "have":I
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/geom/FlatteningPathIterator;->hold:[F

    array-length v5, v5

    const/16 v6, 0x18

    add-int/lit8 v5, v5, 0x18

    move v3, v5

    .line 179
    .local v3, "newsize":I
    move v5, v3

    new-array v5, v5, [F

    move-object v4, v5

    .line 180
    .local v4, "newhold":[F
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/geom/FlatteningPathIterator;->hold:[F

    move-object v6, v0

    iget v6, v6, Lcom/sun/javafx/geom/FlatteningPathIterator;->holdIndex:I

    move-object v7, v4

    move-object v8, v0

    iget v8, v8, Lcom/sun/javafx/geom/FlatteningPathIterator;->holdIndex:I

    const/16 v9, 0x18

    add-int/lit8 v8, v8, 0x18

    move v9, v2

    invoke-static {v5, v6, v7, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 183
    move-object v5, v0

    move-object v6, v4

    iput-object v6, v5, Lcom/sun/javafx/geom/FlatteningPathIterator;->hold:[F

    .line 184
    move-object v5, v0

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    iget v6, v6, Lcom/sun/javafx/geom/FlatteningPathIterator;->holdIndex:I

    const/16 v7, 0x18

    add-int/lit8 v6, v6, 0x18

    iput v6, v5, Lcom/sun/javafx/geom/FlatteningPathIterator;->holdIndex:I

    .line 185
    move-object v5, v0

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    iget v6, v6, Lcom/sun/javafx/geom/FlatteningPathIterator;->holdEnd:I

    const/16 v7, 0x18

    add-int/lit8 v6, v6, 0x18

    iput v6, v5, Lcom/sun/javafx/geom/FlatteningPathIterator;->holdEnd:I

    .line 187
    .end local v2    # "have":I
    .end local v3    # "newsize":I
    .end local v4    # "newhold":[F
    :cond_0
    return-void
.end method

.method public getFlatness()F
    .locals 4

    .prologue
    .line 138
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/geom/FlatteningPathIterator;
    move-object v2, v1

    iget v2, v2, Lcom/sun/javafx/geom/FlatteningPathIterator;->squareflat:F

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    move v1, v2

    .end local v1    # "this":Lcom/sun/javafx/geom/FlatteningPathIterator;
    return v1
.end method

.method public getRecursionLimit()I
    .locals 2

    .prologue
    .line 147
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/FlatteningPathIterator;
    move-object v1, v0

    iget v1, v1, Lcom/sun/javafx/geom/FlatteningPathIterator;->limit:I

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/geom/FlatteningPathIterator;
    return v0
.end method

.method public getWindingRule()I
    .locals 2

    .prologue
    .line 159
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/FlatteningPathIterator;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/geom/FlatteningPathIterator;->src:Lcom/sun/javafx/geom/PathIterator;

    invoke-interface {v1}, Lcom/sun/javafx/geom/PathIterator;->getWindingRule()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/geom/FlatteningPathIterator;
    return v0
.end method

.method public isDone()Z
    .locals 2

    .prologue
    .line 168
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/FlatteningPathIterator;
    move-object v1, v0

    iget-boolean v1, v1, Lcom/sun/javafx/geom/FlatteningPathIterator;->done:Z

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/geom/FlatteningPathIterator;
    return v0
.end method

.method public next()V
    .locals 3

    .prologue
    .line 195
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/FlatteningPathIterator;
    move-object v1, v0

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/sun/javafx/geom/FlatteningPathIterator;->next(Z)V

    .line 196
    return-void
.end method
