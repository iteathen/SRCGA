.class Lcom/sun/prism/impl/ps/CachingShapeRepState$MaskCache;
.super Ljava/lang/Object;
.source "CachingShapeRep.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/prism/impl/ps/CachingShapeRepState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MaskCache"
.end annotation


# static fields
.field private static final MAX_MASK_DIM:I = 0x200

.field private static final MAX_SIZE_IN_PIXELS:I = 0x400000

.field private static comparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/sun/prism/impl/ps/CachingShapeRepState$CacheEntry;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private entries:[Lcom/sun/prism/impl/ps/CachingShapeRepState$CacheEntry;

.field private entriesSize:I

.field private tmpKey:Lcom/sun/prism/impl/ps/CachingShapeRepState$CacheEntry;

.field private totalPixels:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 182
    invoke-static {}, Lcom/sun/prism/impl/ps/CachingShapeRepState$MaskCache$$Lambda$1;->lambdaFactory$()Ljava/util/Comparator;

    move-result-object v0

    sput-object v0, Lcom/sun/prism/impl/ps/CachingShapeRepState$MaskCache;->comparator:Ljava/util/Comparator;

    return-void
.end method

.method private constructor <init>()V
    .locals 6

    .prologue
    .line 179
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/ps/CachingShapeRepState$MaskCache;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 190
    move-object v1, v0

    const/16 v2, 0x8

    new-array v2, v2, [Lcom/sun/prism/impl/ps/CachingShapeRepState$CacheEntry;

    iput-object v2, v1, Lcom/sun/prism/impl/ps/CachingShapeRepState$MaskCache;->entries:[Lcom/sun/prism/impl/ps/CachingShapeRepState$CacheEntry;

    .line 191
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Lcom/sun/prism/impl/ps/CachingShapeRepState$MaskCache;->entriesSize:I

    .line 194
    move-object v1, v0

    new-instance v2, Lcom/sun/prism/impl/ps/CachingShapeRepState$CacheEntry;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/sun/prism/impl/ps/CachingShapeRepState$CacheEntry;-><init>(Lcom/sun/prism/impl/ps/CachingShapeRepState$1;)V

    iput-object v2, v1, Lcom/sun/prism/impl/ps/CachingShapeRepState$MaskCache;->tmpKey:Lcom/sun/prism/impl/ps/CachingShapeRepState$CacheEntry;

    .line 196
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/prism/impl/ps/CachingShapeRepState$MaskCache;->tmpKey:Lcom/sun/prism/impl/ps/CachingShapeRepState$CacheEntry;

    new-instance v2, Lcom/sun/javafx/geom/RectBounds;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    invoke-direct {v3}, Lcom/sun/javafx/geom/RectBounds;-><init>()V

    iput-object v2, v1, Lcom/sun/prism/impl/ps/CachingShapeRepState$CacheEntry;->xformBounds:Lcom/sun/javafx/geom/RectBounds;

    .line 197
    return-void
.end method

.method synthetic constructor <init>(Lcom/sun/prism/impl/ps/CachingShapeRepState$1;)V
    .locals 3

    .prologue
    .line 179
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/ps/CachingShapeRepState$MaskCache;
    move-object v1, p1

    .local v1, "x0":Lcom/sun/prism/impl/ps/CachingShapeRepState$1;
    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/prism/impl/ps/CachingShapeRepState$MaskCache;-><init>()V

    return-void
.end method

.method static synthetic access$lambda$0(Lcom/sun/prism/impl/ps/CachingShapeRepState$CacheEntry;Lcom/sun/prism/impl/ps/CachingShapeRepState$CacheEntry;)I
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Lcom/sun/prism/impl/ps/CachingShapeRepState$MaskCache;->lambda$static$452(Lcom/sun/prism/impl/ps/CachingShapeRepState$CacheEntry;Lcom/sun/prism/impl/ps/CachingShapeRepState$CacheEntry;)I

    move-result v2

    move v0, v2

    return v0
.end method

.method private addEntry(Lcom/sun/prism/impl/ps/CachingShapeRepState$CacheEntry;)V
    .locals 10

    .prologue
    .line 208
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/ps/CachingShapeRepState$MaskCache;
    move-object v1, p1

    .local v1, "entry":Lcom/sun/prism/impl/ps/CachingShapeRepState$CacheEntry;
    move-object v3, v0

    move-object v4, v0

    iget v4, v4, Lcom/sun/prism/impl/ps/CachingShapeRepState$MaskCache;->entriesSize:I

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    invoke-direct {v3, v4}, Lcom/sun/prism/impl/ps/CachingShapeRepState$MaskCache;->ensureSize(I)V

    .line 209
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/prism/impl/ps/CachingShapeRepState$MaskCache;->entries:[Lcom/sun/prism/impl/ps/CachingShapeRepState$CacheEntry;

    const/4 v4, 0x0

    move-object v5, v0

    iget v5, v5, Lcom/sun/prism/impl/ps/CachingShapeRepState$MaskCache;->entriesSize:I

    move-object v6, v1

    sget-object v7, Lcom/sun/prism/impl/ps/CachingShapeRepState$MaskCache;->comparator:Ljava/util/Comparator;

    invoke-static {v3, v4, v5, v6, v7}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;IILjava/lang/Object;Ljava/util/Comparator;)I

    move-result v3

    move v2, v3

    .line 210
    .local v2, "pos":I
    move v3, v2

    if-gez v3, :cond_0

    .line 211
    move v3, v2

    const/4 v4, -0x1

    xor-int/lit8 v3, v3, -0x1

    move v2, v3

    .line 213
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/prism/impl/ps/CachingShapeRepState$MaskCache;->entries:[Lcom/sun/prism/impl/ps/CachingShapeRepState$CacheEntry;

    move v4, v2

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/prism/impl/ps/CachingShapeRepState$MaskCache;->entries:[Lcom/sun/prism/impl/ps/CachingShapeRepState$CacheEntry;

    move v6, v2

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    move-object v7, v0

    iget v7, v7, Lcom/sun/prism/impl/ps/CachingShapeRepState$MaskCache;->entriesSize:I

    move v8, v2

    sub-int/2addr v7, v8

    invoke-static {v3, v4, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 214
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/prism/impl/ps/CachingShapeRepState$MaskCache;->entries:[Lcom/sun/prism/impl/ps/CachingShapeRepState$CacheEntry;

    move v4, v2

    move-object v5, v1

    aput-object v5, v3, v4

    .line 215
    move-object v3, v0

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    iget v4, v4, Lcom/sun/prism/impl/ps/CachingShapeRepState$MaskCache;->entriesSize:I

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lcom/sun/prism/impl/ps/CachingShapeRepState$MaskCache;->entriesSize:I

    .line 216
    return-void
.end method

.method private ensureSize(I)V
    .locals 8

    .prologue
    .line 200
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/ps/CachingShapeRepState$MaskCache;
    move v1, p1

    .local v1, "size":I
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/prism/impl/ps/CachingShapeRepState$MaskCache;->entries:[Lcom/sun/prism/impl/ps/CachingShapeRepState$CacheEntry;

    array-length v3, v3

    move v4, v1

    if-ge v3, v4, :cond_0

    .line 201
    move v3, v1

    const/4 v4, 0x3

    mul-int/lit8 v3, v3, 0x3

    const/4 v4, 0x2

    div-int/lit8 v3, v3, 0x2

    new-array v3, v3, [Lcom/sun/prism/impl/ps/CachingShapeRepState$CacheEntry;

    move-object v2, v3

    .line 202
    .local v2, "newEntries":[Lcom/sun/prism/impl/ps/CachingShapeRepState$CacheEntry;
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/prism/impl/ps/CachingShapeRepState$MaskCache;->entries:[Lcom/sun/prism/impl/ps/CachingShapeRepState$CacheEntry;

    const/4 v4, 0x0

    move-object v5, v2

    const/4 v6, 0x0

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/prism/impl/ps/CachingShapeRepState$MaskCache;->entries:[Lcom/sun/prism/impl/ps/CachingShapeRepState$CacheEntry;

    array-length v7, v7

    invoke-static {v3, v4, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 203
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/sun/prism/impl/ps/CachingShapeRepState$MaskCache;->entries:[Lcom/sun/prism/impl/ps/CachingShapeRepState$CacheEntry;

    .line 205
    .end local v2    # "newEntries":[Lcom/sun/prism/impl/ps/CachingShapeRepState$CacheEntry;
    :cond_0
    return-void
.end method

.method private static synthetic lambda$static$452(Lcom/sun/prism/impl/ps/CachingShapeRepState$CacheEntry;Lcom/sun/prism/impl/ps/CachingShapeRepState$CacheEntry;)I
    .locals 5

    .prologue
    .line 183
    move-object v0, p0

    .local v0, "o1":Lcom/sun/prism/impl/ps/CachingShapeRepState$CacheEntry;
    move-object v1, p1

    .local v1, "o2":Lcom/sun/prism/impl/ps/CachingShapeRepState$CacheEntry;
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/prism/impl/ps/CachingShapeRepState$CacheEntry;->xformBounds:Lcom/sun/javafx/geom/RectBounds;

    invoke-virtual {v3}, Lcom/sun/javafx/geom/RectBounds;->getWidth()F

    move-result v3

    move-object v4, v1

    iget-object v4, v4, Lcom/sun/prism/impl/ps/CachingShapeRepState$CacheEntry;->xformBounds:Lcom/sun/javafx/geom/RectBounds;

    invoke-virtual {v4}, Lcom/sun/javafx/geom/RectBounds;->getWidth()F

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    move v2, v3

    .line 184
    .local v2, "widthCompare":I
    move v3, v2

    if-eqz v3, :cond_0

    .line 185
    move v3, v2

    move v0, v3

    .line 187
    .end local v0    # "o1":Lcom/sun/prism/impl/ps/CachingShapeRepState$CacheEntry;
    :goto_0
    return v0

    .restart local v0    # "o1":Lcom/sun/prism/impl/ps/CachingShapeRepState$CacheEntry;
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/prism/impl/ps/CachingShapeRepState$CacheEntry;->xformBounds:Lcom/sun/javafx/geom/RectBounds;

    invoke-virtual {v3}, Lcom/sun/javafx/geom/RectBounds;->getHeight()F

    move-result v3

    move-object v4, v1

    iget-object v4, v4, Lcom/sun/prism/impl/ps/CachingShapeRepState$CacheEntry;->xformBounds:Lcom/sun/javafx/geom/RectBounds;

    invoke-virtual {v4}, Lcom/sun/javafx/geom/RectBounds;->getHeight()F

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    move v0, v3

    goto :goto_0
.end method

.method private removeEntry(Lcom/sun/prism/impl/ps/CachingShapeRepState$CacheEntry;)V
    .locals 13

    .prologue
    .line 219
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/ps/CachingShapeRepState$MaskCache;
    move-object v1, p1

    .local v1, "entry":Lcom/sun/prism/impl/ps/CachingShapeRepState$CacheEntry;
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/prism/impl/ps/CachingShapeRepState$MaskCache;->entries:[Lcom/sun/prism/impl/ps/CachingShapeRepState$CacheEntry;

    const/4 v5, 0x0

    move-object v6, v0

    iget v6, v6, Lcom/sun/prism/impl/ps/CachingShapeRepState$MaskCache;->entriesSize:I

    move-object v7, v1

    sget-object v8, Lcom/sun/prism/impl/ps/CachingShapeRepState$MaskCache;->comparator:Ljava/util/Comparator;

    invoke-static {v4, v5, v6, v7, v8}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;IILjava/lang/Object;Ljava/util/Comparator;)I

    move-result v4

    move v2, v4

    .line 220
    .local v2, "pos":I
    move v4, v2

    if-gez v4, :cond_0

    .line 221
    new-instance v4, Ljava/lang/IllegalStateException;

    move-object v12, v4

    move-object v4, v12

    move-object v5, v12

    const-string v6, "Trying to remove a cached item that\'s not in the cache"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 223
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/prism/impl/ps/CachingShapeRepState$MaskCache;->entries:[Lcom/sun/prism/impl/ps/CachingShapeRepState$CacheEntry;

    move v5, v2

    aget-object v4, v4, v5

    move-object v5, v1

    if-eq v4, v5, :cond_4

    .line 224
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/prism/impl/ps/CachingShapeRepState$MaskCache;->tmpKey:Lcom/sun/prism/impl/ps/CachingShapeRepState$CacheEntry;

    iget-object v4, v4, Lcom/sun/prism/impl/ps/CachingShapeRepState$CacheEntry;->xformBounds:Lcom/sun/javafx/geom/RectBounds;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v8, v1

    iget-object v8, v8, Lcom/sun/prism/impl/ps/CachingShapeRepState$CacheEntry;->xformBounds:Lcom/sun/javafx/geom/RectBounds;

    invoke-virtual {v8}, Lcom/sun/javafx/geom/RectBounds;->getWidth()F

    move-result v8

    move-object v9, v1

    iget-object v9, v9, Lcom/sun/prism/impl/ps/CachingShapeRepState$CacheEntry;->xformBounds:Lcom/sun/javafx/geom/RectBounds;

    invoke-virtual {v9}, Lcom/sun/javafx/geom/RectBounds;->getHeight()F

    move-result v9

    const-wide/high16 v10, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    invoke-static {v9, v10, v11}, Ljava/lang/Math;->nextAfter(FD)F

    move-result v9

    const/4 v10, 0x0

    invoke-virtual/range {v4 .. v10}, Lcom/sun/javafx/geom/RectBounds;->deriveWithNewBounds(FFFFFF)Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v4

    .line 225
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/prism/impl/ps/CachingShapeRepState$MaskCache;->entries:[Lcom/sun/prism/impl/ps/CachingShapeRepState$CacheEntry;

    const/4 v5, 0x0

    move-object v6, v0

    iget v6, v6, Lcom/sun/prism/impl/ps/CachingShapeRepState$MaskCache;->entriesSize:I

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/prism/impl/ps/CachingShapeRepState$MaskCache;->tmpKey:Lcom/sun/prism/impl/ps/CachingShapeRepState$CacheEntry;

    sget-object v8, Lcom/sun/prism/impl/ps/CachingShapeRepState$MaskCache;->comparator:Ljava/util/Comparator;

    invoke-static {v4, v5, v6, v7, v8}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;IILjava/lang/Object;Ljava/util/Comparator;)I

    move-result v4

    move v2, v4

    .line 226
    move v4, v2

    if-gez v4, :cond_1

    .line 227
    move v4, v2

    const/4 v5, -0x1

    xor-int/lit8 v4, v4, -0x1

    move v2, v4

    .line 229
    :cond_1
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/prism/impl/ps/CachingShapeRepState$MaskCache;->tmpKey:Lcom/sun/prism/impl/ps/CachingShapeRepState$CacheEntry;

    iget-object v4, v4, Lcom/sun/prism/impl/ps/CachingShapeRepState$CacheEntry;->xformBounds:Lcom/sun/javafx/geom/RectBounds;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v8, v1

    iget-object v8, v8, Lcom/sun/prism/impl/ps/CachingShapeRepState$CacheEntry;->xformBounds:Lcom/sun/javafx/geom/RectBounds;

    invoke-virtual {v8}, Lcom/sun/javafx/geom/RectBounds;->getWidth()F

    move-result v8

    move-object v9, v1

    iget-object v9, v9, Lcom/sun/prism/impl/ps/CachingShapeRepState$CacheEntry;->xformBounds:Lcom/sun/javafx/geom/RectBounds;

    invoke-virtual {v9}, Lcom/sun/javafx/geom/RectBounds;->getHeight()F

    move-result v9

    const-wide/high16 v10, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    invoke-static {v9, v10, v11}, Ljava/lang/Math;->nextAfter(FD)F

    move-result v9

    const/4 v10, 0x0

    invoke-virtual/range {v4 .. v10}, Lcom/sun/javafx/geom/RectBounds;->deriveWithNewBounds(FFFFFF)Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v4

    .line 230
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/prism/impl/ps/CachingShapeRepState$MaskCache;->entries:[Lcom/sun/prism/impl/ps/CachingShapeRepState$CacheEntry;

    const/4 v5, 0x0

    move-object v6, v0

    iget v6, v6, Lcom/sun/prism/impl/ps/CachingShapeRepState$MaskCache;->entriesSize:I

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/prism/impl/ps/CachingShapeRepState$MaskCache;->tmpKey:Lcom/sun/prism/impl/ps/CachingShapeRepState$CacheEntry;

    sget-object v8, Lcom/sun/prism/impl/ps/CachingShapeRepState$MaskCache;->comparator:Ljava/util/Comparator;

    invoke-static {v4, v5, v6, v7, v8}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;IILjava/lang/Object;Ljava/util/Comparator;)I

    move-result v4

    move v3, v4

    .line 231
    .local v3, "toPos":I
    move v4, v3

    if-gez v4, :cond_2

    .line 232
    move v4, v3

    const/4 v5, -0x1

    xor-int/lit8 v4, v4, -0x1

    move v3, v4

    .line 234
    :cond_2
    :goto_0
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/prism/impl/ps/CachingShapeRepState$MaskCache;->entries:[Lcom/sun/prism/impl/ps/CachingShapeRepState$CacheEntry;

    move v5, v2

    aget-object v4, v4, v5

    move-object v5, v1

    if-eq v4, v5, :cond_3

    move v4, v2

    move v5, v3

    if-ge v4, v5, :cond_3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 235
    :cond_3
    move v4, v2

    move v5, v3

    if-lt v4, v5, :cond_4

    .line 236
    new-instance v4, Ljava/lang/IllegalStateException;

    move-object v12, v4

    move-object v4, v12

    move-object v5, v12

    const-string v6, "Trying to remove a cached item that\'s not in the cache"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 239
    .end local v3    # "toPos":I
    :cond_4
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/prism/impl/ps/CachingShapeRepState$MaskCache;->entries:[Lcom/sun/prism/impl/ps/CachingShapeRepState$CacheEntry;

    move v5, v2

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/prism/impl/ps/CachingShapeRepState$MaskCache;->entries:[Lcom/sun/prism/impl/ps/CachingShapeRepState$CacheEntry;

    move v7, v2

    move-object v8, v0

    iget v8, v8, Lcom/sun/prism/impl/ps/CachingShapeRepState$MaskCache;->entriesSize:I

    move v9, v2

    sub-int/2addr v8, v9

    const/4 v9, 0x1

    add-int/lit8 v8, v8, -0x1

    invoke-static {v4, v5, v6, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 240
    move-object v4, v0

    move-object v12, v4

    move-object v4, v12

    move-object v5, v12

    iget v5, v5, Lcom/sun/prism/impl/ps/CachingShapeRepState$MaskCache;->entriesSize:I

    const/4 v6, 0x1

    add-int/lit8 v5, v5, -0x1

    iput v5, v4, Lcom/sun/prism/impl/ps/CachingShapeRepState$MaskCache;->entriesSize:I

    .line 241
    return-void
.end method


# virtual methods
.method entryMatches(Lcom/sun/prism/impl/ps/CachingShapeRepState$CacheEntry;Lcom/sun/javafx/geom/Shape;Lcom/sun/prism/BasicStroke;Lcom/sun/javafx/geom/transform/BaseTransform;Z)Z
    .locals 8

    .prologue
    .line 254
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/ps/CachingShapeRepState$MaskCache;
    move-object v1, p1

    .local v1, "entry":Lcom/sun/prism/impl/ps/CachingShapeRepState$CacheEntry;
    move-object v2, p2

    .local v2, "shape":Lcom/sun/javafx/geom/Shape;
    move-object v3, p3

    .local v3, "stroke":Lcom/sun/prism/BasicStroke;
    move-object v4, p4

    .local v4, "xform":Lcom/sun/javafx/geom/transform/BaseTransform;
    move v5, p5

    .local v5, "antialiasedShape":Z
    move-object v6, v1

    iget-boolean v6, v6, Lcom/sun/prism/impl/ps/CachingShapeRepState$CacheEntry;->antialiasedShape:Z

    move v7, v5

    if-ne v6, v7, :cond_2

    move-object v6, v4

    move-object v7, v1

    iget-object v7, v7, Lcom/sun/prism/impl/ps/CachingShapeRepState$CacheEntry;->xform:Lcom/sun/javafx/geom/transform/BaseTransform;

    invoke-static {v6, v7}, Lcom/sun/prism/impl/ps/CachingShapeRepState;->access$100(Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/javafx/geom/transform/BaseTransform;)Z

    move-result v6

    if-eqz v6, :cond_2

    move-object v6, v1

    iget-object v6, v6, Lcom/sun/prism/impl/ps/CachingShapeRepState$CacheEntry;->shape:Lcom/sun/javafx/geom/Shape;

    move-object v7, v2

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    move-object v6, v3

    if-nez v6, :cond_1

    move-object v6, v1

    iget-object v6, v6, Lcom/sun/prism/impl/ps/CachingShapeRepState$CacheEntry;->stroke:Lcom/sun/prism/BasicStroke;

    if-nez v6, :cond_2

    .line 255
    :cond_0
    const/4 v6, 0x1

    :goto_0
    move v0, v6

    .end local v0    # "this":Lcom/sun/prism/impl/ps/CachingShapeRepState$MaskCache;
    return v0

    .line 254
    .restart local v0    # "this":Lcom/sun/prism/impl/ps/CachingShapeRepState$MaskCache;
    :cond_1
    move-object v6, v3

    move-object v7, v1

    iget-object v7, v7, Lcom/sun/prism/impl/ps/CachingShapeRepState$CacheEntry;->stroke:Lcom/sun/prism/BasicStroke;

    .line 255
    invoke-virtual {v6, v7}, Lcom/sun/prism/BasicStroke;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    :cond_2
    const/4 v6, 0x0

    goto :goto_0
.end method

.method get(Lcom/sun/prism/impl/ps/BaseShaderContext;Lcom/sun/prism/impl/ps/CachingShapeRepState$MaskTexData;Lcom/sun/javafx/geom/Shape;Lcom/sun/prism/BasicStroke;Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/javafx/geom/RectBounds;ZZ)V
    .locals 27

    .prologue
    .line 265
    move-object/from16 v3, p0

    .local v3, "this":Lcom/sun/prism/impl/ps/CachingShapeRepState$MaskCache;
    move-object/from16 v4, p1

    .local v4, "context":Lcom/sun/prism/impl/ps/BaseShaderContext;
    move-object/from16 v5, p2

    .local v5, "texData":Lcom/sun/prism/impl/ps/CachingShapeRepState$MaskTexData;
    move-object/from16 v6, p3

    .local v6, "shape":Lcom/sun/javafx/geom/Shape;
    move-object/from16 v7, p4

    .local v7, "stroke":Lcom/sun/prism/BasicStroke;
    move-object/from16 v8, p5

    .local v8, "xform":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object/from16 v9, p6

    .local v9, "xformBounds":Lcom/sun/javafx/geom/RectBounds;
    move/from16 v10, p7

    .local v10, "xformBoundsIsACopy":Z
    move/from16 v11, p8

    .local v11, "antialiasedShape":Z
    move-object/from16 v18, v5

    if-nez v18, :cond_0

    .line 266
    new-instance v18, Ljava/lang/InternalError;

    move-object/from16 v26, v18

    move-object/from16 v18, v26

    move-object/from16 v19, v26

    const-string v20, "MaskTexData must be non-null"

    invoke-direct/range {v19 .. v20}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v18

    .line 268
    :cond_0
    move-object/from16 v18, v5

    invoke-static/range {v18 .. v18}, Lcom/sun/prism/impl/ps/CachingShapeRepState$MaskTexData;->access$200(Lcom/sun/prism/impl/ps/CachingShapeRepState$MaskTexData;)Lcom/sun/prism/impl/ps/CachingShapeRepState$CacheEntry;

    move-result-object v18

    if-eqz v18, :cond_1

    .line 269
    new-instance v18, Ljava/lang/InternalError;

    move-object/from16 v26, v18

    move-object/from16 v18, v26

    move-object/from16 v19, v26

    const-string v20, "CacheEntry should already be null"

    invoke-direct/range {v19 .. v20}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v18

    .line 272
    :cond_1
    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sun/prism/impl/ps/CachingShapeRepState$MaskCache;->tmpKey:Lcom/sun/prism/impl/ps/CachingShapeRepState$CacheEntry;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sun/prism/impl/ps/CachingShapeRepState$CacheEntry;->xformBounds:Lcom/sun/javafx/geom/RectBounds;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v22, v9

    invoke-virtual/range {v22 .. v22}, Lcom/sun/javafx/geom/RectBounds;->getWidth()F

    move-result v22

    move-object/from16 v23, v9

    invoke-virtual/range {v23 .. v23}, Lcom/sun/javafx/geom/RectBounds;->getHeight()F

    move-result v23

    const-wide/high16 v24, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    invoke-static/range {v23 .. v25}, Ljava/lang/Math;->nextAfter(FD)F

    move-result v23

    const/16 v24, 0x0

    invoke-virtual/range {v18 .. v24}, Lcom/sun/javafx/geom/RectBounds;->deriveWithNewBounds(FFFFFF)Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v18

    .line 273
    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sun/prism/impl/ps/CachingShapeRepState$MaskCache;->entries:[Lcom/sun/prism/impl/ps/CachingShapeRepState$CacheEntry;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget v0, v0, Lcom/sun/prism/impl/ps/CachingShapeRepState$MaskCache;->entriesSize:I

    move/from16 v20, v0

    move-object/from16 v21, v3

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/sun/prism/impl/ps/CachingShapeRepState$MaskCache;->tmpKey:Lcom/sun/prism/impl/ps/CachingShapeRepState$CacheEntry;

    move-object/from16 v21, v0

    sget-object v22, Lcom/sun/prism/impl/ps/CachingShapeRepState$MaskCache;->comparator:Ljava/util/Comparator;

    invoke-static/range {v18 .. v22}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;IILjava/lang/Object;Ljava/util/Comparator;)I

    move-result v18

    move/from16 v12, v18

    .line 274
    .local v12, "i":I
    move/from16 v18, v12

    if-gez v18, :cond_2

    .line 275
    move/from16 v18, v12

    const/16 v19, -0x1

    xor-int/lit8 v18, v18, -0x1

    move/from16 v12, v18

    .line 278
    :cond_2
    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sun/prism/impl/ps/CachingShapeRepState$MaskCache;->tmpKey:Lcom/sun/prism/impl/ps/CachingShapeRepState$CacheEntry;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sun/prism/impl/ps/CachingShapeRepState$CacheEntry;->xformBounds:Lcom/sun/javafx/geom/RectBounds;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v22, v9

    invoke-virtual/range {v22 .. v22}, Lcom/sun/javafx/geom/RectBounds;->getWidth()F

    move-result v22

    move-object/from16 v23, v9

    invoke-virtual/range {v23 .. v23}, Lcom/sun/javafx/geom/RectBounds;->getHeight()F

    move-result v23

    const-wide/high16 v24, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    invoke-static/range {v23 .. v25}, Ljava/lang/Math;->nextAfter(FD)F

    move-result v23

    const/16 v24, 0x0

    invoke-virtual/range {v18 .. v24}, Lcom/sun/javafx/geom/RectBounds;->deriveWithNewBounds(FFFFFF)Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v18

    .line 279
    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sun/prism/impl/ps/CachingShapeRepState$MaskCache;->entries:[Lcom/sun/prism/impl/ps/CachingShapeRepState$CacheEntry;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget v0, v0, Lcom/sun/prism/impl/ps/CachingShapeRepState$MaskCache;->entriesSize:I

    move/from16 v20, v0

    move-object/from16 v21, v3

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/sun/prism/impl/ps/CachingShapeRepState$MaskCache;->tmpKey:Lcom/sun/prism/impl/ps/CachingShapeRepState$CacheEntry;

    move-object/from16 v21, v0

    sget-object v22, Lcom/sun/prism/impl/ps/CachingShapeRepState$MaskCache;->comparator:Ljava/util/Comparator;

    invoke-static/range {v18 .. v22}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;IILjava/lang/Object;Ljava/util/Comparator;)I

    move-result v18

    move/from16 v13, v18

    .line 280
    .local v13, "toPos":I
    move/from16 v18, v13

    if-gez v18, :cond_3

    .line 281
    move/from16 v18, v13

    const/16 v19, -0x1

    xor-int/lit8 v18, v18, -0x1

    move/from16 v13, v18

    .line 283
    :cond_3
    :goto_0
    move/from16 v18, v12

    move/from16 v19, v13

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_6

    .line 284
    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sun/prism/impl/ps/CachingShapeRepState$MaskCache;->entries:[Lcom/sun/prism/impl/ps/CachingShapeRepState$CacheEntry;

    move-object/from16 v18, v0

    move/from16 v19, v12

    aget-object v18, v18, v19

    move-object/from16 v14, v18

    .line 286
    .local v14, "entry":Lcom/sun/prism/impl/ps/CachingShapeRepState$CacheEntry;
    move-object/from16 v18, v3

    move-object/from16 v19, v14

    move-object/from16 v20, v6

    move-object/from16 v21, v7

    move-object/from16 v22, v8

    move/from16 v23, v11

    invoke-virtual/range {v18 .. v23}, Lcom/sun/prism/impl/ps/CachingShapeRepState$MaskCache;->entryMatches(Lcom/sun/prism/impl/ps/CachingShapeRepState$CacheEntry;Lcom/sun/javafx/geom/Shape;Lcom/sun/prism/BasicStroke;Lcom/sun/javafx/geom/transform/BaseTransform;Z)Z

    move-result v18

    if-eqz v18, :cond_4

    .line 288
    move-object/from16 v18, v14

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sun/prism/impl/ps/CachingShapeRepState$CacheEntry;->texData:Lcom/sun/prism/impl/ps/CachingShapeRepState$MaskTexData;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/sun/prism/impl/ps/CachingShapeRepState$MaskTexData;->access$300(Lcom/sun/prism/impl/ps/CachingShapeRepState$MaskTexData;)Lcom/sun/prism/Texture;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Lcom/sun/prism/Texture;->lock()V

    .line 289
    move-object/from16 v18, v14

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sun/prism/impl/ps/CachingShapeRepState$CacheEntry;->texData:Lcom/sun/prism/impl/ps/CachingShapeRepState$MaskTexData;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/sun/prism/impl/ps/CachingShapeRepState$MaskTexData;->access$300(Lcom/sun/prism/impl/ps/CachingShapeRepState$MaskTexData;)Lcom/sun/prism/Texture;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Lcom/sun/prism/Texture;->isSurfaceLost()Z

    move-result v18

    if-eqz v18, :cond_5

    .line 291
    move-object/from16 v18, v14

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sun/prism/impl/ps/CachingShapeRepState$CacheEntry;->texData:Lcom/sun/prism/impl/ps/CachingShapeRepState$MaskTexData;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/sun/prism/impl/ps/CachingShapeRepState$MaskTexData;->access$300(Lcom/sun/prism/impl/ps/CachingShapeRepState$MaskTexData;)Lcom/sun/prism/Texture;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Lcom/sun/prism/Texture;->unlock()V

    .line 292
    .line 283
    :cond_4
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 296
    :cond_5
    move-object/from16 v18, v14

    move-object/from16 v26, v18

    move-object/from16 v18, v26

    move-object/from16 v19, v26

    move-object/from16 v0, v19

    iget v0, v0, Lcom/sun/prism/impl/ps/CachingShapeRepState$CacheEntry;->refCount:I

    move/from16 v19, v0

    const/16 v20, 0x1

    add-int/lit8 v19, v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Lcom/sun/prism/impl/ps/CachingShapeRepState$CacheEntry;->refCount:I

    .line 297
    move-object/from16 v18, v14

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sun/prism/impl/ps/CachingShapeRepState$CacheEntry;->texData:Lcom/sun/prism/impl/ps/CachingShapeRepState$MaskTexData;

    move-object/from16 v18, v0

    move-object/from16 v19, v5

    invoke-virtual/range {v18 .. v19}, Lcom/sun/prism/impl/ps/CachingShapeRepState$MaskTexData;->copyInto(Lcom/sun/prism/impl/ps/CachingShapeRepState$MaskTexData;)V

    .line 298
    move-object/from16 v18, v5

    move-object/from16 v19, v14

    invoke-static/range {v18 .. v19}, Lcom/sun/prism/impl/ps/CachingShapeRepState$MaskTexData;->access$202(Lcom/sun/prism/impl/ps/CachingShapeRepState$MaskTexData;Lcom/sun/prism/impl/ps/CachingShapeRepState$CacheEntry;)Lcom/sun/prism/impl/ps/CachingShapeRepState$CacheEntry;

    move-result-object v18

    .line 301
    move-object/from16 v18, v5

    move-object/from16 v19, v8

    invoke-virtual/range {v18 .. v19}, Lcom/sun/prism/impl/ps/CachingShapeRepState$MaskTexData;->adjustOrigin(Lcom/sun/javafx/geom/transform/BaseTransform;)V

    .line 302
    .line 335
    .end local v14    # "entry":Lcom/sun/prism/impl/ps/CachingShapeRepState$CacheEntry;
    :goto_1
    return-void

    .line 307
    :cond_6
    move-object/from16 v18, v6

    move-object/from16 v19, v7

    move-object/from16 v20, v9

    move-object/from16 v21, v8

    const/16 v22, 0x1

    move/from16 v23, v11

    .line 308
    invoke-static/range {v18 .. v23}, Lcom/sun/prism/impl/shape/ShapeUtil;->rasterizeShape(Lcom/sun/javafx/geom/Shape;Lcom/sun/prism/BasicStroke;Lcom/sun/javafx/geom/RectBounds;Lcom/sun/javafx/geom/transform/BaseTransform;ZZ)Lcom/sun/prism/impl/shape/MaskData;

    move-result-object v18

    move-object/from16 v14, v18

    .line 309
    .local v14, "maskData":Lcom/sun/prism/impl/shape/MaskData;
    move-object/from16 v18, v14

    invoke-virtual/range {v18 .. v18}, Lcom/sun/prism/impl/shape/MaskData;->getWidth()I

    move-result v18

    move/from16 v15, v18

    .line 310
    .local v15, "mw":I
    move-object/from16 v18, v14

    invoke-virtual/range {v18 .. v18}, Lcom/sun/prism/impl/shape/MaskData;->getHeight()I

    move-result v18

    move/from16 v16, v18

    .line 311
    .local v16, "mh":I
    move-object/from16 v18, v5

    move-object/from16 v19, v14

    invoke-virtual/range {v19 .. v19}, Lcom/sun/prism/impl/shape/MaskData;->getOriginX()I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    invoke-static/range {v18 .. v19}, Lcom/sun/prism/impl/ps/CachingShapeRepState$MaskTexData;->access$402(Lcom/sun/prism/impl/ps/CachingShapeRepState$MaskTexData;F)F

    move-result v18

    .line 312
    move-object/from16 v18, v5

    move-object/from16 v19, v14

    invoke-virtual/range {v19 .. v19}, Lcom/sun/prism/impl/shape/MaskData;->getOriginY()I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    invoke-static/range {v18 .. v19}, Lcom/sun/prism/impl/ps/CachingShapeRepState$MaskTexData;->access$502(Lcom/sun/prism/impl/ps/CachingShapeRepState$MaskTexData;F)F

    move-result v18

    .line 313
    move-object/from16 v18, v5

    move/from16 v19, v15

    invoke-static/range {v18 .. v19}, Lcom/sun/prism/impl/ps/CachingShapeRepState$MaskTexData;->access$602(Lcom/sun/prism/impl/ps/CachingShapeRepState$MaskTexData;I)I

    move-result v18

    .line 314
    move-object/from16 v18, v5

    move/from16 v19, v16

    invoke-static/range {v18 .. v19}, Lcom/sun/prism/impl/ps/CachingShapeRepState$MaskTexData;->access$702(Lcom/sun/prism/impl/ps/CachingShapeRepState$MaskTexData;I)I

    move-result v18

    .line 315
    move-object/from16 v18, v5

    move-object/from16 v19, v4

    .line 316
    invoke-virtual/range {v19 .. v19}, Lcom/sun/prism/impl/ps/BaseShaderContext;->getResourceFactory()Lcom/sun/prism/ResourceFactory;

    move-result-object v19

    move/from16 v20, v15

    move/from16 v21, v16

    sget-object v22, Lcom/sun/prism/Texture$WrapMode;->CLAMP_TO_ZERO:Lcom/sun/prism/Texture$WrapMode;

    invoke-interface/range {v19 .. v22}, Lcom/sun/prism/ResourceFactory;->createMaskTexture(IILcom/sun/prism/Texture$WrapMode;)Lcom/sun/prism/Texture;

    move-result-object v19

    .line 315
    invoke-static/range {v18 .. v19}, Lcom/sun/prism/impl/ps/CachingShapeRepState$MaskTexData;->access$302(Lcom/sun/prism/impl/ps/CachingShapeRepState$MaskTexData;Lcom/sun/prism/Texture;)Lcom/sun/prism/Texture;

    move-result-object v18

    .line 317
    move-object/from16 v18, v14

    move-object/from16 v19, v5

    invoke-static/range {v19 .. v19}, Lcom/sun/prism/impl/ps/CachingShapeRepState$MaskTexData;->access$300(Lcom/sun/prism/impl/ps/CachingShapeRepState$MaskTexData;)Lcom/sun/prism/Texture;

    move-result-object v19

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-virtual/range {v18 .. v22}, Lcom/sun/prism/impl/shape/MaskData;->uploadToTexture(Lcom/sun/prism/Texture;IIZ)V

    .line 318
    move-object/from16 v18, v5

    invoke-static/range {v18 .. v18}, Lcom/sun/prism/impl/ps/CachingShapeRepState$MaskTexData;->access$300(Lcom/sun/prism/impl/ps/CachingShapeRepState$MaskTexData;)Lcom/sun/prism/Texture;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Lcom/sun/prism/Texture;->contentsUseful()V

    .line 324
    new-instance v18, Lcom/sun/prism/impl/ps/CachingShapeRepState$CacheEntry;

    move-object/from16 v26, v18

    move-object/from16 v18, v26

    move-object/from16 v19, v26

    const/16 v20, 0x0

    invoke-direct/range {v19 .. v20}, Lcom/sun/prism/impl/ps/CachingShapeRepState$CacheEntry;-><init>(Lcom/sun/prism/impl/ps/CachingShapeRepState$1;)V

    move-object/from16 v17, v18

    .line 325
    .local v17, "entry":Lcom/sun/prism/impl/ps/CachingShapeRepState$CacheEntry;
    move-object/from16 v18, v17

    move-object/from16 v19, v6

    invoke-virtual/range {v19 .. v19}, Lcom/sun/javafx/geom/Shape;->copy()Lcom/sun/javafx/geom/Shape;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/sun/prism/impl/ps/CachingShapeRepState$CacheEntry;->shape:Lcom/sun/javafx/geom/Shape;

    .line 326
    move-object/from16 v18, v7

    if-eqz v18, :cond_7

    move-object/from16 v18, v17

    move-object/from16 v19, v7

    invoke-virtual/range {v19 .. v19}, Lcom/sun/prism/BasicStroke;->copy()Lcom/sun/prism/BasicStroke;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/sun/prism/impl/ps/CachingShapeRepState$CacheEntry;->stroke:Lcom/sun/prism/BasicStroke;

    .line 327
    :cond_7
    move-object/from16 v18, v17

    move-object/from16 v19, v8

    invoke-virtual/range {v19 .. v19}, Lcom/sun/javafx/geom/transform/BaseTransform;->copy()Lcom/sun/javafx/geom/transform/BaseTransform;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/sun/prism/impl/ps/CachingShapeRepState$CacheEntry;->xform:Lcom/sun/javafx/geom/transform/BaseTransform;

    .line 328
    move-object/from16 v18, v17

    move/from16 v19, v10

    if-eqz v19, :cond_8

    move-object/from16 v19, v9

    :goto_2
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/sun/prism/impl/ps/CachingShapeRepState$CacheEntry;->xformBounds:Lcom/sun/javafx/geom/RectBounds;

    .line 329
    move-object/from16 v18, v17

    move-object/from16 v19, v5

    invoke-virtual/range {v19 .. v19}, Lcom/sun/prism/impl/ps/CachingShapeRepState$MaskTexData;->copy()Lcom/sun/prism/impl/ps/CachingShapeRepState$MaskTexData;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/sun/prism/impl/ps/CachingShapeRepState$CacheEntry;->texData:Lcom/sun/prism/impl/ps/CachingShapeRepState$MaskTexData;

    .line 330
    move-object/from16 v18, v17

    move/from16 v19, v11

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput-boolean v0, v1, Lcom/sun/prism/impl/ps/CachingShapeRepState$CacheEntry;->antialiasedShape:Z

    .line 331
    move-object/from16 v18, v17

    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Lcom/sun/prism/impl/ps/CachingShapeRepState$CacheEntry;->refCount:I

    .line 332
    move-object/from16 v18, v5

    move-object/from16 v19, v17

    invoke-static/range {v18 .. v19}, Lcom/sun/prism/impl/ps/CachingShapeRepState$MaskTexData;->access$202(Lcom/sun/prism/impl/ps/CachingShapeRepState$MaskTexData;Lcom/sun/prism/impl/ps/CachingShapeRepState$CacheEntry;)Lcom/sun/prism/impl/ps/CachingShapeRepState$CacheEntry;

    move-result-object v18

    .line 333
    move-object/from16 v18, v3

    move-object/from16 v19, v17

    invoke-direct/range {v18 .. v19}, Lcom/sun/prism/impl/ps/CachingShapeRepState$MaskCache;->addEntry(Lcom/sun/prism/impl/ps/CachingShapeRepState$CacheEntry;)V

    .line 334
    move-object/from16 v18, v3

    move-object/from16 v26, v18

    move-object/from16 v18, v26

    move-object/from16 v19, v26

    move-object/from16 v0, v19

    iget v0, v0, Lcom/sun/prism/impl/ps/CachingShapeRepState$MaskCache;->totalPixels:I

    move/from16 v19, v0

    move/from16 v20, v15

    move/from16 v21, v16

    mul-int v20, v20, v21

    add-int v19, v19, v20

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Lcom/sun/prism/impl/ps/CachingShapeRepState$MaskCache;->totalPixels:I

    .line 335
    goto/16 :goto_1

    .line 328
    :cond_8
    move-object/from16 v19, v9

    invoke-virtual/range {v19 .. v19}, Lcom/sun/javafx/geom/RectBounds;->copy()Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v19

    check-cast v19, Lcom/sun/javafx/geom/RectBounds;

    goto :goto_2
.end method

.method hasRoom(Lcom/sun/javafx/geom/RectBounds;)Z
    .locals 7

    .prologue
    .line 244
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/ps/CachingShapeRepState$MaskCache;
    move-object v1, p1

    .local v1, "xformBounds":Lcom/sun/javafx/geom/RectBounds;
    move-object v5, v1

    invoke-virtual {v5}, Lcom/sun/javafx/geom/RectBounds;->getWidth()F

    move-result v5

    const/high16 v6, 0x3f000000    # 0.5f

    add-float/2addr v5, v6

    float-to-int v5, v5

    move v2, v5

    .line 245
    .local v2, "w":I
    move-object v5, v1

    invoke-virtual {v5}, Lcom/sun/javafx/geom/RectBounds;->getHeight()F

    move-result v5

    const/high16 v6, 0x3f000000    # 0.5f

    add-float/2addr v5, v6

    float-to-int v5, v5

    move v3, v5

    .line 246
    .local v3, "h":I
    move v5, v2

    move v6, v3

    mul-int/2addr v5, v6

    move v4, v5

    .line 247
    .local v4, "size":I
    move v5, v2

    const/16 v6, 0x200

    if-gt v5, v6, :cond_0

    move v5, v3

    const/16 v6, 0x200

    if-gt v5, v6, :cond_0

    move-object v5, v0

    iget v5, v5, Lcom/sun/prism/impl/ps/CachingShapeRepState$MaskCache;->totalPixels:I

    move v6, v4

    add-int/2addr v5, v6

    const/high16 v6, 0x400000

    if-gt v5, v6, :cond_0

    const/4 v5, 0x1

    :goto_0
    move v0, v5

    .end local v0    # "this":Lcom/sun/prism/impl/ps/CachingShapeRepState$MaskCache;
    return v0

    .restart local v0    # "this":Lcom/sun/prism/impl/ps/CachingShapeRepState$MaskCache;
    :cond_0
    const/4 v5, 0x0

    goto :goto_0
.end method

.method unref(Lcom/sun/prism/impl/ps/CachingShapeRepState$MaskTexData;)V
    .locals 8

    .prologue
    .line 338
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/ps/CachingShapeRepState$MaskCache;
    move-object v1, p1

    .local v1, "texData":Lcom/sun/prism/impl/ps/CachingShapeRepState$MaskTexData;
    move-object v3, v1

    if-nez v3, :cond_0

    .line 339
    new-instance v3, Ljava/lang/InternalError;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const-string v5, "MaskTexData must be non-null"

    invoke-direct {v4, v5}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v3

    .line 341
    :cond_0
    move-object v3, v1

    invoke-static {v3}, Lcom/sun/prism/impl/ps/CachingShapeRepState$MaskTexData;->access$200(Lcom/sun/prism/impl/ps/CachingShapeRepState$MaskTexData;)Lcom/sun/prism/impl/ps/CachingShapeRepState$CacheEntry;

    move-result-object v3

    move-object v2, v3

    .line 342
    .local v2, "entry":Lcom/sun/prism/impl/ps/CachingShapeRepState$CacheEntry;
    move-object v3, v2

    if-nez v3, :cond_1

    .line 343
    .line 359
    :goto_0
    return-void

    .line 345
    :cond_1
    move-object v3, v1

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/sun/prism/impl/ps/CachingShapeRepState$MaskTexData;->access$202(Lcom/sun/prism/impl/ps/CachingShapeRepState$MaskTexData;Lcom/sun/prism/impl/ps/CachingShapeRepState$CacheEntry;)Lcom/sun/prism/impl/ps/CachingShapeRepState$CacheEntry;

    move-result-object v3

    .line 346
    move-object v3, v1

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/sun/prism/impl/ps/CachingShapeRepState$MaskTexData;->access$302(Lcom/sun/prism/impl/ps/CachingShapeRepState$MaskTexData;Lcom/sun/prism/Texture;)Lcom/sun/prism/Texture;

    move-result-object v3

    .line 347
    move-object v3, v2

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    iget v4, v4, Lcom/sun/prism/impl/ps/CachingShapeRepState$CacheEntry;->refCount:I

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    iput v4, v3, Lcom/sun/prism/impl/ps/CachingShapeRepState$CacheEntry;->refCount:I

    .line 348
    move-object v3, v2

    iget v3, v3, Lcom/sun/prism/impl/ps/CachingShapeRepState$CacheEntry;->refCount:I

    if-gtz v3, :cond_2

    .line 349
    move-object v3, v0

    move-object v4, v2

    invoke-direct {v3, v4}, Lcom/sun/prism/impl/ps/CachingShapeRepState$MaskCache;->removeEntry(Lcom/sun/prism/impl/ps/CachingShapeRepState$CacheEntry;)V

    .line 350
    move-object v3, v2

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/sun/prism/impl/ps/CachingShapeRepState$CacheEntry;->shape:Lcom/sun/javafx/geom/Shape;

    .line 351
    move-object v3, v2

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/sun/prism/impl/ps/CachingShapeRepState$CacheEntry;->stroke:Lcom/sun/prism/BasicStroke;

    .line 352
    move-object v3, v2

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/sun/prism/impl/ps/CachingShapeRepState$CacheEntry;->xform:Lcom/sun/javafx/geom/transform/BaseTransform;

    .line 353
    move-object v3, v2

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/sun/prism/impl/ps/CachingShapeRepState$CacheEntry;->xformBounds:Lcom/sun/javafx/geom/RectBounds;

    .line 354
    move-object v3, v2

    iget-object v3, v3, Lcom/sun/prism/impl/ps/CachingShapeRepState$CacheEntry;->texData:Lcom/sun/prism/impl/ps/CachingShapeRepState$MaskTexData;

    invoke-static {v3}, Lcom/sun/prism/impl/ps/CachingShapeRepState$MaskTexData;->access$300(Lcom/sun/prism/impl/ps/CachingShapeRepState$MaskTexData;)Lcom/sun/prism/Texture;

    move-result-object v3

    invoke-interface {v3}, Lcom/sun/prism/Texture;->dispose()V

    .line 355
    move-object v3, v2

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/sun/prism/impl/ps/CachingShapeRepState$CacheEntry;->antialiasedShape:Z

    .line 356
    move-object v3, v2

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/sun/prism/impl/ps/CachingShapeRepState$CacheEntry;->texData:Lcom/sun/prism/impl/ps/CachingShapeRepState$MaskTexData;

    .line 357
    move-object v3, v0

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    iget v4, v4, Lcom/sun/prism/impl/ps/CachingShapeRepState$MaskCache;->totalPixels:I

    move-object v5, v1

    invoke-static {v5}, Lcom/sun/prism/impl/ps/CachingShapeRepState$MaskTexData;->access$600(Lcom/sun/prism/impl/ps/CachingShapeRepState$MaskTexData;)I

    move-result v5

    move-object v6, v1

    invoke-static {v6}, Lcom/sun/prism/impl/ps/CachingShapeRepState$MaskTexData;->access$700(Lcom/sun/prism/impl/ps/CachingShapeRepState$MaskTexData;)I

    move-result v6

    mul-int/2addr v5, v6

    sub-int/2addr v4, v5

    iput v4, v3, Lcom/sun/prism/impl/ps/CachingShapeRepState$MaskCache;->totalPixels:I

    .line 359
    :cond_2
    goto :goto_0
.end method
