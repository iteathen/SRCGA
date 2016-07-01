.class public Lcom/sun/javafx/sg/prism/CacheFilter;
.super Ljava/lang/Object;
.source "CacheFilter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/javafx/sg/prism/CacheFilter$ScrollCacheState;
    }
.end annotation


# static fields
.field private static final EPSILON:D = 1.0E-7

.field private static final TEMP_BOUNDS:Lcom/sun/javafx/geom/RectBounds;

.field private static final TEMP_CACHEFILTER_TRANSFORM:Lcom/sun/javafx/geom/transform/Affine3D;

.field private static final TEMP_CONTAINER:Lcom/sun/javafx/geom/DirtyRegionContainer;

.field private static final TEMP_RECT:Lcom/sun/javafx/geom/Rectangle;


# instance fields
.field private cacheBounds:Lcom/sun/javafx/geom/Rectangle;

.field private cacheHint:Ljavafx/scene/CacheHint;

.field private cachedImageData:Lcom/sun/scenario/effect/ImageData;

.field private cachedRotate:D

.field private cachedScaleX:D

.field private cachedScaleY:D

.field private cachedX:D

.field private final cachedXform:Lcom/sun/javafx/geom/transform/Affine2D;

.field private cachedY:D

.field private lastXDelta:D

.field private lastYDelta:D

.field private node:Lcom/sun/javafx/sg/prism/NGNode;

.field private rotateHint:Z

.field private scaleHint:Z

.field private final screenXform:Lcom/sun/javafx/geom/transform/Affine2D;

.field private scrollCacheState:Lcom/sun/javafx/sg/prism/CacheFilter$ScrollCacheState;

.field private tempTexture:Lcom/sun/prism/RTTexture;

.field private wasUnsupported:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 88
    new-instance v0, Lcom/sun/javafx/geom/Rectangle;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    invoke-direct {v1}, Lcom/sun/javafx/geom/Rectangle;-><init>()V

    sput-object v0, Lcom/sun/javafx/sg/prism/CacheFilter;->TEMP_RECT:Lcom/sun/javafx/geom/Rectangle;

    .line 89
    new-instance v0, Lcom/sun/javafx/geom/DirtyRegionContainer;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/sun/javafx/geom/DirtyRegionContainer;-><init>(I)V

    sput-object v0, Lcom/sun/javafx/sg/prism/CacheFilter;->TEMP_CONTAINER:Lcom/sun/javafx/geom/DirtyRegionContainer;

    .line 90
    new-instance v0, Lcom/sun/javafx/geom/transform/Affine3D;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    invoke-direct {v1}, Lcom/sun/javafx/geom/transform/Affine3D;-><init>()V

    sput-object v0, Lcom/sun/javafx/sg/prism/CacheFilter;->TEMP_CACHEFILTER_TRANSFORM:Lcom/sun/javafx/geom/transform/Affine3D;

    .line 91
    new-instance v0, Lcom/sun/javafx/geom/RectBounds;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    invoke-direct {v1}, Lcom/sun/javafx/geom/RectBounds;-><init>()V

    sput-object v0, Lcom/sun/javafx/sg/prism/CacheFilter;->TEMP_BOUNDS:Lcom/sun/javafx/geom/RectBounds;

    return-void
.end method

.method protected constructor <init>(Lcom/sun/javafx/sg/prism/NGNode;Ljavafx/scene/CacheHint;)V
    .locals 7

    .prologue
    .line 147
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/CacheFilter;
    move-object v1, p1

    .local v1, "node":Lcom/sun/javafx/sg/prism/NGNode;
    move-object v2, p2

    .local v2, "cacheHint":Ljavafx/scene/CacheHint;
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 98
    move-object v3, v0

    sget-object v4, Lcom/sun/javafx/sg/prism/CacheFilter$ScrollCacheState;->CHECKING_PRECONDITIONS:Lcom/sun/javafx/sg/prism/CacheFilter$ScrollCacheState;

    iput-object v4, v3, Lcom/sun/javafx/sg/prism/CacheFilter;->scrollCacheState:Lcom/sun/javafx/sg/prism/CacheFilter$ScrollCacheState;

    .line 101
    move-object v3, v0

    new-instance v4, Lcom/sun/javafx/geom/Rectangle;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Lcom/sun/javafx/geom/Rectangle;-><init>()V

    iput-object v4, v3, Lcom/sun/javafx/sg/prism/CacheFilter;->cacheBounds:Lcom/sun/javafx/geom/Rectangle;

    .line 103
    move-object v3, v0

    new-instance v4, Lcom/sun/javafx/geom/transform/Affine2D;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Lcom/sun/javafx/geom/transform/Affine2D;-><init>()V

    iput-object v4, v3, Lcom/sun/javafx/sg/prism/CacheFilter;->cachedXform:Lcom/sun/javafx/geom/transform/Affine2D;

    .line 115
    move-object v3, v0

    new-instance v4, Lcom/sun/javafx/geom/transform/Affine2D;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Lcom/sun/javafx/geom/transform/Affine2D;-><init>()V

    iput-object v4, v3, Lcom/sun/javafx/sg/prism/CacheFilter;->screenXform:Lcom/sun/javafx/geom/transform/Affine2D;

    .line 125
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/sun/javafx/sg/prism/CacheFilter;->wasUnsupported:Z

    .line 148
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/sun/javafx/sg/prism/CacheFilter;->node:Lcom/sun/javafx/sg/prism/NGNode;

    .line 149
    move-object v3, v0

    sget-object v4, Lcom/sun/javafx/sg/prism/CacheFilter$ScrollCacheState;->CHECKING_PRECONDITIONS:Lcom/sun/javafx/sg/prism/CacheFilter$ScrollCacheState;

    iput-object v4, v3, Lcom/sun/javafx/sg/prism/CacheFilter;->scrollCacheState:Lcom/sun/javafx/sg/prism/CacheFilter$ScrollCacheState;

    .line 150
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v3, v4}, Lcom/sun/javafx/sg/prism/CacheFilter;->setHint(Ljavafx/scene/CacheHint;)V

    .line 151
    return-void
.end method

.method private computeDirtyRegionForTranslate()Lcom/sun/javafx/geom/Rectangle;
    .locals 8

    .prologue
    .line 131
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/sg/prism/CacheFilter;
    move-object v2, v1

    iget-wide v2, v2, Lcom/sun/javafx/sg/prism/CacheFilter;->lastXDelta:D

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-eqz v2, :cond_1

    .line 132
    move-object v2, v1

    iget-wide v2, v2, Lcom/sun/javafx/sg/prism/CacheFilter;->lastXDelta:D

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-lez v2, :cond_0

    .line 133
    sget-object v2, Lcom/sun/javafx/sg/prism/CacheFilter;->TEMP_RECT:Lcom/sun/javafx/geom/Rectangle;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v5, v1

    iget-wide v5, v5, Lcom/sun/javafx/sg/prism/CacheFilter;->lastXDelta:D

    double-to-int v5, v5

    move-object v6, v1

    iget-object v6, v6, Lcom/sun/javafx/sg/prism/CacheFilter;->cacheBounds:Lcom/sun/javafx/geom/Rectangle;

    iget v6, v6, Lcom/sun/javafx/geom/Rectangle;->height:I

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/sun/javafx/geom/Rectangle;->setBounds(IIII)V

    .line 144
    :goto_0
    sget-object v2, Lcom/sun/javafx/sg/prism/CacheFilter;->TEMP_RECT:Lcom/sun/javafx/geom/Rectangle;

    move-object v1, v2

    .end local v1    # "this":Lcom/sun/javafx/sg/prism/CacheFilter;
    return-object v1

    .line 135
    .restart local v1    # "this":Lcom/sun/javafx/sg/prism/CacheFilter;
    :cond_0
    sget-object v2, Lcom/sun/javafx/sg/prism/CacheFilter;->TEMP_RECT:Lcom/sun/javafx/geom/Rectangle;

    move-object v3, v1

    iget-object v3, v3, Lcom/sun/javafx/sg/prism/CacheFilter;->cacheBounds:Lcom/sun/javafx/geom/Rectangle;

    iget v3, v3, Lcom/sun/javafx/geom/Rectangle;->width:I

    move-object v4, v1

    iget-wide v4, v4, Lcom/sun/javafx/sg/prism/CacheFilter;->lastXDelta:D

    double-to-int v4, v4

    add-int/2addr v3, v4

    const/4 v4, 0x0

    move-object v5, v1

    iget-wide v5, v5, Lcom/sun/javafx/sg/prism/CacheFilter;->lastXDelta:D

    double-to-int v5, v5

    neg-int v5, v5

    move-object v6, v1

    iget-object v6, v6, Lcom/sun/javafx/sg/prism/CacheFilter;->cacheBounds:Lcom/sun/javafx/geom/Rectangle;

    iget v6, v6, Lcom/sun/javafx/geom/Rectangle;->height:I

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/sun/javafx/geom/Rectangle;->setBounds(IIII)V

    goto :goto_0

    .line 138
    :cond_1
    move-object v2, v1

    iget-wide v2, v2, Lcom/sun/javafx/sg/prism/CacheFilter;->lastYDelta:D

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-lez v2, :cond_2

    .line 139
    sget-object v2, Lcom/sun/javafx/sg/prism/CacheFilter;->TEMP_RECT:Lcom/sun/javafx/geom/Rectangle;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v5, v1

    iget-object v5, v5, Lcom/sun/javafx/sg/prism/CacheFilter;->cacheBounds:Lcom/sun/javafx/geom/Rectangle;

    iget v5, v5, Lcom/sun/javafx/geom/Rectangle;->width:I

    move-object v6, v1

    iget-wide v6, v6, Lcom/sun/javafx/sg/prism/CacheFilter;->lastYDelta:D

    double-to-int v6, v6

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/sun/javafx/geom/Rectangle;->setBounds(IIII)V

    goto :goto_0

    .line 141
    :cond_2
    sget-object v2, Lcom/sun/javafx/sg/prism/CacheFilter;->TEMP_RECT:Lcom/sun/javafx/geom/Rectangle;

    const/4 v3, 0x0

    move-object v4, v1

    iget-object v4, v4, Lcom/sun/javafx/sg/prism/CacheFilter;->cacheBounds:Lcom/sun/javafx/geom/Rectangle;

    iget v4, v4, Lcom/sun/javafx/geom/Rectangle;->height:I

    move-object v5, v1

    iget-wide v5, v5, Lcom/sun/javafx/sg/prism/CacheFilter;->lastYDelta:D

    double-to-int v5, v5

    add-int/2addr v4, v5

    move-object v5, v1

    iget-object v5, v5, Lcom/sun/javafx/sg/prism/CacheFilter;->cacheBounds:Lcom/sun/javafx/geom/Rectangle;

    iget v5, v5, Lcom/sun/javafx/geom/Rectangle;->width:I

    move-object v6, v1

    iget-wide v6, v6, Lcom/sun/javafx/sg/prism/CacheFilter;->lastYDelta:D

    double-to-int v6, v6

    neg-int v6, v6

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/sun/javafx/geom/Rectangle;->setBounds(IIII)V

    goto :goto_0
.end method

.method private isXformScrollCacheCapable([D)Z
    .locals 8

    .prologue
    .line 202
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/CacheFilter;
    move-object v1, p1

    .local v1, "xformInfo":[D
    move-object v4, v0

    move-object v5, v1

    invoke-virtual {v4, v5}, Lcom/sun/javafx/sg/prism/CacheFilter;->unsupported([D)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 203
    const/4 v4, 0x0

    move v0, v4

    .line 206
    .end local v0    # "this":Lcom/sun/javafx/sg/prism/CacheFilter;
    :goto_0
    return v0

    .line 205
    .restart local v0    # "this":Lcom/sun/javafx/sg/prism/CacheFilter;
    :cond_0
    move-object v4, v1

    const/4 v5, 0x2

    aget-wide v4, v4, v5

    move-wide v2, v4

    .line 206
    .local v2, "rotate":D
    move-object v4, v0

    iget-boolean v4, v4, Lcom/sun/javafx/sg/prism/CacheFilter;->rotateHint:Z

    if-nez v4, :cond_1

    move-wide v4, v2

    const-wide/16 v6, 0x0

    cmpl-double v4, v4, v6

    if-nez v4, :cond_2

    :cond_1
    const/4 v4, 0x1

    :goto_1
    move v0, v4

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private needToRenderCache(Lcom/sun/javafx/geom/transform/BaseTransform;[DF)Z
    .locals 19

    .prologue
    .line 215
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/CacheFilter;
    move-object/from16 v1, p1

    .local v1, "renderXform":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object/from16 v2, p2

    .local v2, "xformInfo":[D
    move/from16 v3, p3

    .local v3, "pixelScale":F
    move-object v10, v0

    iget-object v10, v10, Lcom/sun/javafx/sg/prism/CacheFilter;->cachedImageData:Lcom/sun/scenario/effect/ImageData;

    if-nez v10, :cond_0

    .line 216
    const/4 v10, 0x1

    move v0, v10

    .line 281
    .end local v0    # "this":Lcom/sun/javafx/sg/prism/CacheFilter;
    :goto_0
    return v0

    .line 219
    .restart local v0    # "this":Lcom/sun/javafx/sg/prism/CacheFilter;
    :cond_0
    move-object v10, v0

    iget-wide v10, v10, Lcom/sun/javafx/sg/prism/CacheFilter;->lastXDelta:D

    const-wide/16 v12, 0x0

    cmpl-double v10, v10, v12

    if-nez v10, :cond_1

    move-object v10, v0

    iget-wide v10, v10, Lcom/sun/javafx/sg/prism/CacheFilter;->lastYDelta:D

    const-wide/16 v12, 0x0

    cmpl-double v10, v10, v12

    if-eqz v10, :cond_4

    .line 220
    :cond_1
    move-object v10, v0

    iget-wide v10, v10, Lcom/sun/javafx/sg/prism/CacheFilter;->lastXDelta:D

    invoke-static {v10, v11}, Ljava/lang/Math;->abs(D)D

    move-result-wide v10

    move-object v12, v0

    iget-object v12, v12, Lcom/sun/javafx/sg/prism/CacheFilter;->cacheBounds:Lcom/sun/javafx/geom/Rectangle;

    iget v12, v12, Lcom/sun/javafx/geom/Rectangle;->width:I

    int-to-double v12, v12

    cmpl-double v10, v10, v12

    if-gez v10, :cond_2

    move-object v10, v0

    iget-wide v10, v10, Lcom/sun/javafx/sg/prism/CacheFilter;->lastYDelta:D

    invoke-static {v10, v11}, Ljava/lang/Math;->abs(D)D

    move-result-wide v10

    move-object v12, v0

    iget-object v12, v12, Lcom/sun/javafx/sg/prism/CacheFilter;->cacheBounds:Lcom/sun/javafx/geom/Rectangle;

    iget v12, v12, Lcom/sun/javafx/geom/Rectangle;->height:I

    int-to-double v12, v12

    cmpl-double v10, v10, v12

    if-gez v10, :cond_2

    move-object v10, v0

    iget-wide v10, v10, Lcom/sun/javafx/sg/prism/CacheFilter;->lastXDelta:D

    .line 221
    invoke-static {v10, v11}, Ljava/lang/Math;->rint(D)D

    move-result-wide v10

    move-object v12, v0

    iget-wide v12, v12, Lcom/sun/javafx/sg/prism/CacheFilter;->lastXDelta:D

    cmpl-double v10, v10, v12

    if-nez v10, :cond_2

    move-object v10, v0

    iget-wide v10, v10, Lcom/sun/javafx/sg/prism/CacheFilter;->lastYDelta:D

    invoke-static {v10, v11}, Ljava/lang/Math;->rint(D)D

    move-result-wide v10

    move-object v12, v0

    iget-wide v12, v12, Lcom/sun/javafx/sg/prism/CacheFilter;->lastYDelta:D

    cmpl-double v10, v10, v12

    if-eqz v10, :cond_3

    .line 222
    :cond_2
    move-object v10, v0

    iget-object v10, v10, Lcom/sun/javafx/sg/prism/CacheFilter;->node:Lcom/sun/javafx/sg/prism/NGNode;

    invoke-virtual {v10}, Lcom/sun/javafx/sg/prism/NGNode;->clearDirtyTree()V

    .line 223
    move-object v10, v0

    move-object v11, v0

    const-wide/16 v12, 0x0

    move-object/from16 v16, v11

    move-wide/from16 v17, v12

    move-wide/from16 v11, v17

    move-object/from16 v13, v16

    move-wide/from16 v14, v17

    iput-wide v14, v13, Lcom/sun/javafx/sg/prism/CacheFilter;->lastYDelta:D

    iput-wide v11, v10, Lcom/sun/javafx/sg/prism/CacheFilter;->lastXDelta:D

    .line 224
    const/4 v10, 0x1

    move v0, v10

    goto :goto_0

    .line 226
    :cond_3
    move-object v10, v0

    iget-object v10, v10, Lcom/sun/javafx/sg/prism/CacheFilter;->scrollCacheState:Lcom/sun/javafx/sg/prism/CacheFilter$ScrollCacheState;

    sget-object v11, Lcom/sun/javafx/sg/prism/CacheFilter$ScrollCacheState;->CHECKING_PRECONDITIONS:Lcom/sun/javafx/sg/prism/CacheFilter$ScrollCacheState;

    if-ne v10, v11, :cond_4

    .line 227
    move-object v10, v0

    invoke-virtual {v10}, Lcom/sun/javafx/sg/prism/CacheFilter;->impl_scrollCacheCapable()Z

    move-result v10

    if-eqz v10, :cond_5

    move-object v10, v0

    move-object v11, v2

    invoke-direct {v10, v11}, Lcom/sun/javafx/sg/prism/CacheFilter;->isXformScrollCacheCapable([D)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 228
    move-object v10, v0

    sget-object v11, Lcom/sun/javafx/sg/prism/CacheFilter$ScrollCacheState;->ENABLED:Lcom/sun/javafx/sg/prism/CacheFilter$ScrollCacheState;

    iput-object v11, v10, Lcom/sun/javafx/sg/prism/CacheFilter;->scrollCacheState:Lcom/sun/javafx/sg/prism/CacheFilter$ScrollCacheState;

    .line 237
    :cond_4
    move-object v10, v0

    iget-object v10, v10, Lcom/sun/javafx/sg/prism/CacheFilter;->cachedXform:Lcom/sun/javafx/geom/transform/Affine2D;

    invoke-virtual {v10}, Lcom/sun/javafx/geom/transform/Affine2D;->getMxx()D

    move-result-wide v10

    move-object v12, v1

    invoke-virtual {v12}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMxx()D

    move-result-wide v12

    cmpl-double v10, v10, v12

    if-nez v10, :cond_6

    move-object v10, v0

    iget-object v10, v10, Lcom/sun/javafx/sg/prism/CacheFilter;->cachedXform:Lcom/sun/javafx/geom/transform/Affine2D;

    .line 238
    invoke-virtual {v10}, Lcom/sun/javafx/geom/transform/Affine2D;->getMyy()D

    move-result-wide v10

    move-object v12, v1

    invoke-virtual {v12}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMyy()D

    move-result-wide v12

    cmpl-double v10, v10, v12

    if-nez v10, :cond_6

    move-object v10, v0

    iget-object v10, v10, Lcom/sun/javafx/sg/prism/CacheFilter;->cachedXform:Lcom/sun/javafx/geom/transform/Affine2D;

    .line 239
    invoke-virtual {v10}, Lcom/sun/javafx/geom/transform/Affine2D;->getMxy()D

    move-result-wide v10

    move-object v12, v1

    invoke-virtual {v12}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMxy()D

    move-result-wide v12

    cmpl-double v10, v10, v12

    if-nez v10, :cond_6

    move-object v10, v0

    iget-object v10, v10, Lcom/sun/javafx/sg/prism/CacheFilter;->cachedXform:Lcom/sun/javafx/geom/transform/Affine2D;

    .line 240
    invoke-virtual {v10}, Lcom/sun/javafx/geom/transform/Affine2D;->getMyx()D

    move-result-wide v10

    move-object v12, v1

    invoke-virtual {v12}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMyx()D

    move-result-wide v12

    cmpl-double v10, v10, v12

    if-nez v10, :cond_6

    .line 242
    const/4 v10, 0x0

    move v0, v10

    goto/16 :goto_0

    .line 230
    :cond_5
    move-object v10, v0

    sget-object v11, Lcom/sun/javafx/sg/prism/CacheFilter$ScrollCacheState;->DISABLED:Lcom/sun/javafx/sg/prism/CacheFilter$ScrollCacheState;

    iput-object v11, v10, Lcom/sun/javafx/sg/prism/CacheFilter;->scrollCacheState:Lcom/sun/javafx/sg/prism/CacheFilter$ScrollCacheState;

    .line 231
    const/4 v10, 0x1

    move v0, v10

    goto/16 :goto_0

    .line 245
    :cond_6
    move-object v10, v0

    iget-boolean v10, v10, Lcom/sun/javafx/sg/prism/CacheFilter;->wasUnsupported:Z

    if-nez v10, :cond_7

    move-object v10, v0

    move-object v11, v2

    invoke-virtual {v10, v11}, Lcom/sun/javafx/sg/prism/CacheFilter;->unsupported([D)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 246
    :cond_7
    const/4 v10, 0x1

    move v0, v10

    goto/16 :goto_0

    .line 249
    :cond_8
    move-object v10, v2

    const/4 v11, 0x0

    aget-wide v10, v10, v11

    move-wide v4, v10

    .line 250
    .local v4, "scaleX":D
    move-object v10, v2

    const/4 v11, 0x1

    aget-wide v10, v10, v11

    move-wide v6, v10

    .line 251
    .local v6, "scaleY":D
    move-object v10, v2

    const/4 v11, 0x2

    aget-wide v10, v10, v11

    move-wide v8, v10

    .line 252
    .local v8, "rotate":D
    move-object v10, v0

    iget-boolean v10, v10, Lcom/sun/javafx/sg/prism/CacheFilter;->scaleHint:Z

    if-eqz v10, :cond_d

    .line 253
    move-object v10, v0

    iget-wide v10, v10, Lcom/sun/javafx/sg/prism/CacheFilter;->cachedScaleX:D

    move v12, v3

    float-to-double v12, v12

    cmpg-double v10, v10, v12

    if-ltz v10, :cond_9

    move-object v10, v0

    iget-wide v10, v10, Lcom/sun/javafx/sg/prism/CacheFilter;->cachedScaleY:D

    move v12, v3

    float-to-double v12, v12

    cmpg-double v10, v10, v12

    if-gez v10, :cond_a

    .line 258
    :cond_9
    const/4 v10, 0x1

    move v0, v10

    goto/16 :goto_0

    .line 260
    :cond_a
    move-object v10, v0

    iget-boolean v10, v10, Lcom/sun/javafx/sg/prism/CacheFilter;->rotateHint:Z

    if-eqz v10, :cond_b

    .line 261
    const/4 v10, 0x0

    move v0, v10

    goto/16 :goto_0

    .line 264
    :cond_b
    move-object v10, v0

    iget-wide v10, v10, Lcom/sun/javafx/sg/prism/CacheFilter;->cachedRotate:D

    const-wide v12, 0x3e7ad7f29abcaf48L    # 1.0E-7

    sub-double/2addr v10, v12

    move-wide v12, v8

    cmpg-double v10, v10, v12

    if-gez v10, :cond_c

    move-wide v10, v8

    move-object v12, v0

    iget-wide v12, v12, Lcom/sun/javafx/sg/prism/CacheFilter;->cachedRotate:D

    const-wide v14, 0x3e7ad7f29abcaf48L    # 1.0E-7

    add-double/2addr v12, v14

    cmpg-double v10, v10, v12

    if-gez v10, :cond_c

    .line 265
    const/4 v10, 0x0

    move v0, v10

    goto/16 :goto_0

    .line 267
    :cond_c
    const/4 v10, 0x1

    move v0, v10

    goto/16 :goto_0

    .line 271
    :cond_d
    move-object v10, v0

    iget-boolean v10, v10, Lcom/sun/javafx/sg/prism/CacheFilter;->rotateHint:Z

    if-eqz v10, :cond_f

    .line 273
    move-object v10, v0

    iget-wide v10, v10, Lcom/sun/javafx/sg/prism/CacheFilter;->cachedScaleX:D

    const-wide v12, 0x3e7ad7f29abcaf48L    # 1.0E-7

    sub-double/2addr v10, v12

    move-wide v12, v4

    cmpg-double v10, v10, v12

    if-gez v10, :cond_e

    move-wide v10, v4

    move-object v12, v0

    iget-wide v12, v12, Lcom/sun/javafx/sg/prism/CacheFilter;->cachedScaleX:D

    const-wide v14, 0x3e7ad7f29abcaf48L    # 1.0E-7

    add-double/2addr v12, v14

    cmpg-double v10, v10, v12

    if-gez v10, :cond_e

    move-object v10, v0

    iget-wide v10, v10, Lcom/sun/javafx/sg/prism/CacheFilter;->cachedScaleY:D

    const-wide v12, 0x3e7ad7f29abcaf48L    # 1.0E-7

    sub-double/2addr v10, v12

    move-wide v12, v6

    cmpg-double v10, v10, v12

    if-gez v10, :cond_e

    move-wide v10, v6

    move-object v12, v0

    iget-wide v12, v12, Lcom/sun/javafx/sg/prism/CacheFilter;->cachedScaleY:D

    const-wide v14, 0x3e7ad7f29abcaf48L    # 1.0E-7

    add-double/2addr v12, v14

    cmpg-double v10, v10, v12

    if-gez v10, :cond_e

    .line 275
    const/4 v10, 0x0

    move v0, v10

    goto/16 :goto_0

    .line 277
    :cond_e
    const/4 v10, 0x1

    move v0, v10

    goto/16 :goto_0

    .line 281
    :cond_f
    const/4 v10, 0x1

    move v0, v10

    goto/16 :goto_0
.end method


# virtual methods
.method computeDirtyBounds(Lcom/sun/javafx/geom/BaseBounds;Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/javafx/geom/transform/GeneralTransform3D;)Lcom/sun/javafx/geom/BaseBounds;
    .locals 7

    .prologue
    .line 816
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/CacheFilter;
    move-object v1, p1

    .local v1, "region":Lcom/sun/javafx/geom/BaseBounds;
    move-object v2, p2

    .local v2, "tx":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object v3, p3

    .local v3, "pvTx":Lcom/sun/javafx/geom/transform/GeneralTransform3D;
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/sg/prism/CacheFilter;->node:Lcom/sun/javafx/sg/prism/NGNode;

    iget-object v4, v4, Lcom/sun/javafx/sg/prism/NGNode;->dirtyBounds:Lcom/sun/javafx/geom/BaseBounds;

    invoke-virtual {v4}, Lcom/sun/javafx/geom/BaseBounds;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 817
    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/sg/prism/CacheFilter;->node:Lcom/sun/javafx/sg/prism/NGNode;

    iget-object v5, v5, Lcom/sun/javafx/sg/prism/NGNode;->dirtyBounds:Lcom/sun/javafx/geom/BaseBounds;

    invoke-virtual {v4, v5}, Lcom/sun/javafx/geom/BaseBounds;->deriveWithNewBounds(Lcom/sun/javafx/geom/BaseBounds;)Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v4

    move-object v1, v4

    .line 822
    :goto_0
    move-object v4, v1

    invoke-virtual {v4}, Lcom/sun/javafx/geom/BaseBounds;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 823
    move-object v4, v1

    invoke-virtual {v4}, Lcom/sun/javafx/geom/BaseBounds;->roundOut()V

    .line 824
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/sg/prism/CacheFilter;->node:Lcom/sun/javafx/sg/prism/NGNode;

    move-object v5, v1

    invoke-virtual {v4, v5}, Lcom/sun/javafx/sg/prism/NGNode;->computePadding(Lcom/sun/javafx/geom/BaseBounds;)Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v4

    move-object v1, v4

    .line 825
    move-object v4, v2

    move-object v5, v1

    move-object v6, v1

    invoke-virtual {v4, v5, v6}, Lcom/sun/javafx/geom/transform/BaseTransform;->transform(Lcom/sun/javafx/geom/BaseBounds;Lcom/sun/javafx/geom/BaseBounds;)Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v4

    move-object v1, v4

    .line 826
    move-object v4, v3

    move-object v5, v1

    move-object v6, v1

    invoke-virtual {v4, v5, v6}, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->transform(Lcom/sun/javafx/geom/BaseBounds;Lcom/sun/javafx/geom/BaseBounds;)Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v4

    move-object v1, v4

    .line 828
    :cond_0
    move-object v4, v1

    move-object v0, v4

    .end local v0    # "this":Lcom/sun/javafx/sg/prism/CacheFilter;
    return-object v0

    .line 819
    .restart local v0    # "this":Lcom/sun/javafx/sg/prism/CacheFilter;
    :cond_1
    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/sg/prism/CacheFilter;->node:Lcom/sun/javafx/sg/prism/NGNode;

    iget-object v5, v5, Lcom/sun/javafx/sg/prism/NGNode;->transformedBounds:Lcom/sun/javafx/geom/BaseBounds;

    invoke-virtual {v4, v5}, Lcom/sun/javafx/geom/BaseBounds;->deriveWithNewBounds(Lcom/sun/javafx/geom/BaseBounds;)Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v4

    move-object v1, v4

    goto :goto_0
.end method

.method public dispose()V
    .locals 3

    .prologue
    .line 363
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/CacheFilter;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/sg/prism/CacheFilter;->invalidate()V

    .line 364
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/sun/javafx/sg/prism/CacheFilter;->node:Lcom/sun/javafx/sg/prism/NGNode;

    .line 365
    return-void
.end method

.method imageDataUnref()V
    .locals 4

    .prologue
    .line 327
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/CacheFilter;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/sg/prism/CacheFilter;->tempTexture:Lcom/sun/prism/RTTexture;

    if-eqz v2, :cond_0

    .line 328
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/sg/prism/CacheFilter;->tempTexture:Lcom/sun/prism/RTTexture;

    invoke-interface {v2}, Lcom/sun/prism/RTTexture;->dispose()V

    .line 329
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/sun/javafx/sg/prism/CacheFilter;->tempTexture:Lcom/sun/prism/RTTexture;

    .line 331
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/sg/prism/CacheFilter;->cachedImageData:Lcom/sun/scenario/effect/ImageData;

    if-eqz v2, :cond_2

    .line 335
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/sg/prism/CacheFilter;->cachedImageData:Lcom/sun/scenario/effect/ImageData;

    invoke-virtual {v2}, Lcom/sun/scenario/effect/ImageData;->getUntransformedImage()Lcom/sun/scenario/effect/Filterable;

    move-result-object v2

    move-object v1, v2

    .line 336
    .local v1, "implImage":Lcom/sun/scenario/effect/Filterable;
    move-object v2, v1

    if-eqz v2, :cond_1

    .line 337
    move-object v2, v1

    invoke-interface {v2}, Lcom/sun/scenario/effect/Filterable;->lock()V

    .line 339
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/sg/prism/CacheFilter;->cachedImageData:Lcom/sun/scenario/effect/ImageData;

    invoke-virtual {v2}, Lcom/sun/scenario/effect/ImageData;->unref()V

    .line 340
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/sun/javafx/sg/prism/CacheFilter;->cachedImageData:Lcom/sun/scenario/effect/ImageData;

    .line 342
    .end local v1    # "implImage":Lcom/sun/scenario/effect/Filterable;
    :cond_2
    return-void
.end method

.method impl_createImageData(Lcom/sun/scenario/effect/FilterContext;Lcom/sun/javafx/geom/Rectangle;)Lcom/sun/scenario/effect/ImageData;
    .locals 11

    .prologue
    .line 630
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/CacheFilter;
    move-object v1, p1

    .local v1, "fctx":Lcom/sun/scenario/effect/FilterContext;
    move-object v2, p2

    .local v2, "bounds":Lcom/sun/javafx/geom/Rectangle;
    move-object v5, v1

    move-object v6, v2

    :try_start_0
    iget v6, v6, Lcom/sun/javafx/geom/Rectangle;->width:I

    move-object v7, v2

    iget v7, v7, Lcom/sun/javafx/geom/Rectangle;->height:I

    invoke-static {v5, v6, v7}, Lcom/sun/scenario/effect/Effect;->getCompatibleImage(Lcom/sun/scenario/effect/FilterContext;II)Lcom/sun/scenario/effect/Filterable;

    move-result-object v5

    move-object v3, v5

    .line 632
    .local v3, "ret":Lcom/sun/scenario/effect/Filterable;
    move-object v5, v3

    check-cast v5, Lcom/sun/scenario/effect/impl/prism/PrDrawable;

    invoke-virtual {v5}, Lcom/sun/scenario/effect/impl/prism/PrDrawable;->getTextureObject()Lcom/sun/prism/Texture;

    move-result-object v5

    move-object v4, v5

    .line 633
    .local v4, "cachedTex":Lcom/sun/prism/Texture;
    move-object v5, v4

    invoke-interface {v5}, Lcom/sun/prism/Texture;->contentsUseful()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 636
    .line 638
    .end local v4    # "cachedTex":Lcom/sun/prism/Texture;
    :goto_0
    new-instance v5, Lcom/sun/scenario/effect/ImageData;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v1

    move-object v8, v3

    move-object v9, v2

    invoke-direct {v6, v7, v8, v9}, Lcom/sun/scenario/effect/ImageData;-><init>(Lcom/sun/scenario/effect/FilterContext;Lcom/sun/scenario/effect/Filterable;Lcom/sun/javafx/geom/Rectangle;)V

    move-object v0, v5

    .end local v0    # "this":Lcom/sun/javafx/sg/prism/CacheFilter;
    return-object v0

    .line 634
    .end local v3    # "ret":Lcom/sun/scenario/effect/Filterable;
    .restart local v0    # "this":Lcom/sun/javafx/sg/prism/CacheFilter;
    :catch_0
    move-exception v5

    move-object v4, v5

    .line 635
    .local v4, "e":Ljava/lang/Throwable;
    const/4 v5, 0x0

    move-object v3, v5

    .restart local v3    # "ret":Lcom/sun/scenario/effect/Filterable;
    goto :goto_0
.end method

.method impl_getCacheBounds(Lcom/sun/javafx/geom/Rectangle;Lcom/sun/javafx/geom/transform/BaseTransform;)Lcom/sun/javafx/geom/Rectangle;
    .locals 7

    .prologue
    .line 805
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/CacheFilter;
    move-object v1, p1

    .local v1, "bounds":Lcom/sun/javafx/geom/Rectangle;
    move-object v2, p2

    .local v2, "xform":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/sg/prism/CacheFilter;->node:Lcom/sun/javafx/sg/prism/NGNode;

    sget-object v5, Lcom/sun/javafx/sg/prism/CacheFilter;->TEMP_BOUNDS:Lcom/sun/javafx/geom/RectBounds;

    move-object v6, v2

    invoke-virtual {v4, v5, v6}, Lcom/sun/javafx/sg/prism/NGNode;->getClippedBounds(Lcom/sun/javafx/geom/BaseBounds;Lcom/sun/javafx/geom/transform/BaseTransform;)Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v4

    move-object v3, v4

    .line 806
    .local v3, "b":Lcom/sun/javafx/geom/BaseBounds;
    move-object v4, v1

    move-object v5, v3

    invoke-virtual {v4, v5}, Lcom/sun/javafx/geom/Rectangle;->setBounds(Lcom/sun/javafx/geom/BaseBounds;)V

    .line 807
    move-object v4, v1

    move-object v0, v4

    .end local v0    # "this":Lcom/sun/javafx/sg/prism/CacheFilter;
    return-object v0
.end method

.method impl_moveCacheBy(Lcom/sun/scenario/effect/ImageData;DD)V
    .locals 30

    .prologue
    .line 768
    move-object/from16 v2, p0

    .local v2, "this":Lcom/sun/javafx/sg/prism/CacheFilter;
    move-object/from16 v3, p1

    .local v3, "cachedImageData":Lcom/sun/scenario/effect/ImageData;
    move-wide/from16 v4, p2

    .local v4, "xDelta":D
    move-wide/from16 v6, p4

    .local v6, "yDelta":D
    move-object/from16 v18, v3

    invoke-virtual/range {v18 .. v18}, Lcom/sun/scenario/effect/ImageData;->getUntransformedImage()Lcom/sun/scenario/effect/Filterable;

    move-result-object v18

    check-cast v18, Lcom/sun/scenario/effect/impl/prism/PrDrawable;

    move-object/from16 v8, v18

    .line 769
    .local v8, "drawable":Lcom/sun/scenario/effect/impl/prism/PrDrawable;
    move-object/from16 v18, v3

    invoke-virtual/range {v18 .. v18}, Lcom/sun/scenario/effect/ImageData;->getUntransformedBounds()Lcom/sun/javafx/geom/Rectangle;

    move-result-object v18

    move-object/from16 v9, v18

    .line 770
    .local v9, "r":Lcom/sun/javafx/geom/Rectangle;
    const-wide/16 v18, 0x0

    move-wide/from16 v20, v4

    move-wide/from16 v0, v20

    neg-double v0, v0

    move-wide/from16 v20, v0

    invoke-static/range {v18 .. v21}, Ljava/lang/Math;->max(DD)D

    move-result-wide v18

    move-wide/from16 v0, v18

    double-to-int v0, v0

    move/from16 v18, v0

    move/from16 v10, v18

    .line 771
    .local v10, "x":I
    const-wide/16 v18, 0x0

    move-wide/from16 v20, v6

    move-wide/from16 v0, v20

    neg-double v0, v0

    move-wide/from16 v20, v0

    invoke-static/range {v18 .. v21}, Ljava/lang/Math;->max(DD)D

    move-result-wide v18

    move-wide/from16 v0, v18

    double-to-int v0, v0

    move/from16 v18, v0

    move/from16 v11, v18

    .line 772
    .local v11, "y":I
    const-wide/16 v18, 0x0

    move-wide/from16 v20, v4

    invoke-static/range {v18 .. v21}, Ljava/lang/Math;->max(DD)D

    move-result-wide v18

    move-wide/from16 v0, v18

    double-to-int v0, v0

    move/from16 v18, v0

    move/from16 v12, v18

    .line 773
    .local v12, "destX":I
    const-wide/16 v18, 0x0

    move-wide/from16 v20, v6

    invoke-static/range {v18 .. v21}, Ljava/lang/Math;->max(DD)D

    move-result-wide v18

    move-wide/from16 v0, v18

    double-to-int v0, v0

    move/from16 v18, v0

    move/from16 v13, v18

    .line 774
    .local v13, "destY":I
    move-object/from16 v18, v9

    move-object/from16 v0, v18

    iget v0, v0, Lcom/sun/javafx/geom/Rectangle;->width:I

    move/from16 v18, v0

    move-wide/from16 v19, v4

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->abs(D)D

    move-result-wide v19

    move-wide/from16 v0, v19

    double-to-int v0, v0

    move/from16 v19, v0

    sub-int v18, v18, v19

    move/from16 v14, v18

    .line 775
    .local v14, "w":I
    move-object/from16 v18, v9

    move-object/from16 v0, v18

    iget v0, v0, Lcom/sun/javafx/geom/Rectangle;->height:I

    move/from16 v18, v0

    move-wide/from16 v19, v6

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->abs(D)D

    move-result-wide v19

    move-wide/from16 v0, v19

    double-to-int v0, v0

    move/from16 v19, v0

    sub-int v18, v18, v19

    move/from16 v15, v18

    .line 777
    .local v15, "h":I
    move-object/from16 v18, v8

    invoke-virtual/range {v18 .. v18}, Lcom/sun/scenario/effect/impl/prism/PrDrawable;->createGraphics()Lcom/sun/prism/Graphics;

    move-result-object v18

    move-object/from16 v16, v18

    .line 778
    .local v16, "g":Lcom/sun/prism/Graphics;
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sun/javafx/sg/prism/CacheFilter;->tempTexture:Lcom/sun/prism/RTTexture;

    move-object/from16 v18, v0

    if-eqz v18, :cond_0

    .line 779
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sun/javafx/sg/prism/CacheFilter;->tempTexture:Lcom/sun/prism/RTTexture;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/sun/prism/RTTexture;->lock()V

    .line 780
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sun/javafx/sg/prism/CacheFilter;->tempTexture:Lcom/sun/prism/RTTexture;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/sun/prism/RTTexture;->isSurfaceLost()Z

    move-result v18

    if-eqz v18, :cond_0

    .line 781
    move-object/from16 v18, v2

    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/sun/javafx/sg/prism/CacheFilter;->tempTexture:Lcom/sun/prism/RTTexture;

    .line 784
    :cond_0
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sun/javafx/sg/prism/CacheFilter;->tempTexture:Lcom/sun/prism/RTTexture;

    move-object/from16 v18, v0

    if-nez v18, :cond_1

    .line 785
    move-object/from16 v18, v2

    move-object/from16 v19, v16

    invoke-interface/range {v19 .. v19}, Lcom/sun/prism/Graphics;->getResourceFactory()Lcom/sun/prism/ResourceFactory;

    move-result-object v19

    move-object/from16 v20, v8

    .line 786
    invoke-virtual/range {v20 .. v20}, Lcom/sun/scenario/effect/impl/prism/PrDrawable;->getPhysicalWidth()I

    move-result v20

    move-object/from16 v21, v8

    invoke-virtual/range {v21 .. v21}, Lcom/sun/scenario/effect/impl/prism/PrDrawable;->getPhysicalHeight()I

    move-result v21

    sget-object v22, Lcom/sun/prism/Texture$WrapMode;->CLAMP_NOT_NEEDED:Lcom/sun/prism/Texture$WrapMode;

    invoke-interface/range {v19 .. v22}, Lcom/sun/prism/ResourceFactory;->createRTTexture(IILcom/sun/prism/Texture$WrapMode;)Lcom/sun/prism/RTTexture;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/sun/javafx/sg/prism/CacheFilter;->tempTexture:Lcom/sun/prism/RTTexture;

    .line 789
    :cond_1
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sun/javafx/sg/prism/CacheFilter;->tempTexture:Lcom/sun/prism/RTTexture;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/sun/prism/RTTexture;->createGraphics()Lcom/sun/prism/Graphics;

    move-result-object v18

    move-object/from16 v17, v18

    .line 790
    .local v17, "tempG":Lcom/sun/prism/Graphics;
    move-object/from16 v18, v17

    invoke-interface/range {v18 .. v18}, Lcom/sun/prism/Graphics;->clear()V

    .line 791
    move-object/from16 v18, v17

    move-object/from16 v19, v8

    invoke-virtual/range {v19 .. v19}, Lcom/sun/scenario/effect/impl/prism/PrDrawable;->getTextureObject()Lcom/sun/prism/Texture;

    move-result-object v19

    const/16 v20, 0x0

    const/16 v21, 0x0

    move/from16 v22, v14

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    move/from16 v23, v15

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    move/from16 v24, v10

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    move/from16 v25, v11

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    move/from16 v26, v10

    move/from16 v27, v14

    add-int v26, v26, v27

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    move/from16 v27, v11

    move/from16 v28, v15

    add-int v27, v27, v28

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    invoke-interface/range {v18 .. v27}, Lcom/sun/prism/Graphics;->drawTexture(Lcom/sun/prism/Texture;FFFFFFFF)V

    .line 792
    move-object/from16 v18, v17

    invoke-interface/range {v18 .. v18}, Lcom/sun/prism/Graphics;->sync()V

    .line 794
    move-object/from16 v18, v16

    invoke-interface/range {v18 .. v18}, Lcom/sun/prism/Graphics;->clear()V

    .line 795
    move-object/from16 v18, v16

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/sun/javafx/sg/prism/CacheFilter;->tempTexture:Lcom/sun/prism/RTTexture;

    move-object/from16 v19, v0

    move/from16 v20, v12

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    move/from16 v21, v13

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    move/from16 v22, v12

    move/from16 v23, v14

    add-int v22, v22, v23

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    move/from16 v23, v13

    move/from16 v24, v15

    add-int v23, v23, v24

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    const/16 v24, 0x0

    const/16 v25, 0x0

    move/from16 v26, v14

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    move/from16 v27, v15

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    invoke-interface/range {v18 .. v27}, Lcom/sun/prism/Graphics;->drawTexture(Lcom/sun/prism/Texture;FFFFFFFF)V

    .line 796
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sun/javafx/sg/prism/CacheFilter;->tempTexture:Lcom/sun/prism/RTTexture;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/sun/prism/RTTexture;->unlock()V

    .line 797
    return-void
.end method

.method impl_renderCacheToScreen(Ljava/lang/Object;Lcom/sun/scenario/effect/Filterable;DD)V
    .locals 25

    .prologue
    .line 699
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/javafx/sg/prism/CacheFilter;
    move-object/from16 v2, p1

    .local v2, "implGraphics":Ljava/lang/Object;
    move-object/from16 v3, p2

    .local v3, "implImage":Lcom/sun/scenario/effect/Filterable;
    move-wide/from16 v4, p3

    .local v4, "mxt":D
    move-wide/from16 v6, p5

    .local v6, "myt":D
    move-object v11, v2

    check-cast v11, Lcom/sun/prism/Graphics;

    move-object v8, v11

    .line 701
    .local v8, "g":Lcom/sun/prism/Graphics;
    move-object v11, v8

    move-object v12, v1

    iget-object v12, v12, Lcom/sun/javafx/sg/prism/CacheFilter;->screenXform:Lcom/sun/javafx/geom/transform/Affine2D;

    invoke-virtual {v12}, Lcom/sun/javafx/geom/transform/Affine2D;->getMxx()D

    move-result-wide v12

    move-object v14, v1

    iget-object v14, v14, Lcom/sun/javafx/sg/prism/CacheFilter;->screenXform:Lcom/sun/javafx/geom/transform/Affine2D;

    .line 702
    invoke-virtual {v14}, Lcom/sun/javafx/geom/transform/Affine2D;->getMyx()D

    move-result-wide v14

    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/sun/javafx/sg/prism/CacheFilter;->screenXform:Lcom/sun/javafx/geom/transform/Affine2D;

    move-object/from16 v16, v0

    .line 703
    invoke-virtual/range {v16 .. v16}, Lcom/sun/javafx/geom/transform/Affine2D;->getMxy()D

    move-result-wide v16

    move-object/from16 v18, v1

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sun/javafx/sg/prism/CacheFilter;->screenXform:Lcom/sun/javafx/geom/transform/Affine2D;

    move-object/from16 v18, v0

    .line 704
    invoke-virtual/range {v18 .. v18}, Lcom/sun/javafx/geom/transform/Affine2D;->getMyy()D

    move-result-wide v18

    move-wide/from16 v20, v4

    move-wide/from16 v22, v6

    .line 701
    invoke-interface/range {v11 .. v23}, Lcom/sun/prism/Graphics;->setTransform(DDDDDD)V

    .line 706
    move-object v11, v8

    move-object v12, v1

    iget-wide v12, v12, Lcom/sun/javafx/sg/prism/CacheFilter;->cachedX:D

    double-to-float v12, v12

    move-object v13, v1

    iget-wide v13, v13, Lcom/sun/javafx/sg/prism/CacheFilter;->cachedY:D

    double-to-float v13, v13

    invoke-interface {v11, v12, v13}, Lcom/sun/prism/Graphics;->translate(FF)V

    .line 707
    move-object v11, v3

    check-cast v11, Lcom/sun/scenario/effect/impl/prism/PrDrawable;

    invoke-virtual {v11}, Lcom/sun/scenario/effect/impl/prism/PrDrawable;->getTextureObject()Lcom/sun/prism/Texture;

    move-result-object v11

    move-object v9, v11

    .line 708
    .local v9, "cachedTex":Lcom/sun/prism/Texture;
    move-object v11, v1

    iget-object v11, v11, Lcom/sun/javafx/sg/prism/CacheFilter;->cachedImageData:Lcom/sun/scenario/effect/ImageData;

    invoke-virtual {v11}, Lcom/sun/scenario/effect/ImageData;->getUntransformedBounds()Lcom/sun/javafx/geom/Rectangle;

    move-result-object v11

    move-object v10, v11

    .line 709
    .local v10, "cachedBounds":Lcom/sun/javafx/geom/Rectangle;
    move-object v11, v8

    move-object v12, v9

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v15, v10

    iget v15, v15, Lcom/sun/javafx/geom/Rectangle;->width:I

    int-to-float v15, v15

    move-object/from16 v16, v10

    move-object/from16 v0, v16

    iget v0, v0, Lcom/sun/javafx/geom/Rectangle;->height:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    invoke-interface/range {v11 .. v16}, Lcom/sun/prism/Graphics;->drawTexture(Lcom/sun/prism/Texture;FFFF)V

    .line 712
    return-void
.end method

.method impl_renderNodeToCache(Lcom/sun/scenario/effect/ImageData;Lcom/sun/javafx/geom/Rectangle;Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/javafx/geom/Rectangle;)V
    .locals 13

    .prologue
    .line 652
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/CacheFilter;
    move-object v1, p1

    .local v1, "cacheData":Lcom/sun/scenario/effect/ImageData;
    move-object v2, p2

    .local v2, "cacheBounds":Lcom/sun/javafx/geom/Rectangle;
    move-object/from16 v3, p3

    .local v3, "xform":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object/from16 v4, p4

    .local v4, "dirtyBounds":Lcom/sun/javafx/geom/Rectangle;
    move-object v7, v1

    invoke-virtual {v7}, Lcom/sun/scenario/effect/ImageData;->getUntransformedImage()Lcom/sun/scenario/effect/Filterable;

    move-result-object v7

    check-cast v7, Lcom/sun/scenario/effect/impl/prism/PrDrawable;

    move-object v5, v7

    .line 654
    .local v5, "image":Lcom/sun/scenario/effect/impl/prism/PrDrawable;
    move-object v7, v5

    if-eqz v7, :cond_2

    .line 655
    move-object v7, v5

    invoke-virtual {v7}, Lcom/sun/scenario/effect/impl/prism/PrDrawable;->createGraphics()Lcom/sun/prism/Graphics;

    move-result-object v7

    move-object v6, v7

    .line 656
    .local v6, "g":Lcom/sun/prism/Graphics;
    sget-object v7, Lcom/sun/javafx/sg/prism/CacheFilter;->TEMP_CACHEFILTER_TRANSFORM:Lcom/sun/javafx/geom/transform/Affine3D;

    invoke-virtual {v7}, Lcom/sun/javafx/geom/transform/Affine3D;->setToIdentity()V

    .line 657
    sget-object v7, Lcom/sun/javafx/sg/prism/CacheFilter;->TEMP_CACHEFILTER_TRANSFORM:Lcom/sun/javafx/geom/transform/Affine3D;

    move-object v8, v2

    iget v8, v8, Lcom/sun/javafx/geom/Rectangle;->x:I

    neg-int v8, v8

    int-to-double v8, v8

    move-object v10, v2

    iget v10, v10, Lcom/sun/javafx/geom/Rectangle;->y:I

    neg-int v10, v10

    int-to-double v10, v10

    invoke-virtual {v7, v8, v9, v10, v11}, Lcom/sun/javafx/geom/transform/Affine3D;->translate(DD)V

    .line 658
    move-object v7, v3

    if-eqz v7, :cond_0

    .line 659
    sget-object v7, Lcom/sun/javafx/sg/prism/CacheFilter;->TEMP_CACHEFILTER_TRANSFORM:Lcom/sun/javafx/geom/transform/Affine3D;

    move-object v8, v3

    invoke-virtual {v7, v8}, Lcom/sun/javafx/geom/transform/Affine3D;->concatenate(Lcom/sun/javafx/geom/transform/BaseTransform;)V

    .line 661
    :cond_0
    move-object v7, v4

    if-eqz v7, :cond_1

    .line 662
    sget-object v7, Lcom/sun/javafx/sg/prism/CacheFilter;->TEMP_CONTAINER:Lcom/sun/javafx/geom/DirtyRegionContainer;

    sget-object v8, Lcom/sun/javafx/sg/prism/CacheFilter;->TEMP_BOUNDS:Lcom/sun/javafx/geom/RectBounds;

    move-object v9, v4

    invoke-virtual {v8, v9}, Lcom/sun/javafx/geom/RectBounds;->deriveWithNewBounds(Lcom/sun/javafx/geom/Rectangle;)Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v8

    check-cast v8, Lcom/sun/javafx/geom/RectBounds;

    invoke-virtual {v7, v8}, Lcom/sun/javafx/geom/DirtyRegionContainer;->deriveWithNewRegion(Lcom/sun/javafx/geom/RectBounds;)Lcom/sun/javafx/geom/DirtyRegionContainer;

    move-result-object v7

    .line 664
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/sg/prism/CacheFilter;->node:Lcom/sun/javafx/sg/prism/NGNode;

    sget-object v8, Lcom/sun/javafx/sg/prism/CacheFilter;->TEMP_CONTAINER:Lcom/sun/javafx/geom/DirtyRegionContainer;

    sget-object v9, Lcom/sun/javafx/sg/prism/CacheFilter;->TEMP_CACHEFILTER_TRANSFORM:Lcom/sun/javafx/geom/transform/Affine3D;

    new-instance v10, Lcom/sun/javafx/geom/transform/GeneralTransform3D;

    move-object v12, v10

    move-object v10, v12

    move-object v11, v12

    invoke-direct {v11}, Lcom/sun/javafx/geom/transform/GeneralTransform3D;-><init>()V

    invoke-virtual {v7, v8, v9, v10}, Lcom/sun/javafx/sg/prism/NGNode;->doPreCulling(Lcom/sun/javafx/geom/DirtyRegionContainer;Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/javafx/geom/transform/GeneralTransform3D;)V

    .line 665
    move-object v7, v6

    const/4 v8, 0x1

    invoke-interface {v7, v8}, Lcom/sun/prism/Graphics;->setHasPreCullingBits(Z)V

    .line 666
    move-object v7, v6

    const/4 v8, 0x0

    invoke-interface {v7, v8}, Lcom/sun/prism/Graphics;->setClipRectIndex(I)V

    .line 667
    move-object v7, v6

    move-object v8, v4

    invoke-interface {v7, v8}, Lcom/sun/prism/Graphics;->setClipRect(Lcom/sun/javafx/geom/Rectangle;)V

    .line 669
    :cond_1
    move-object v7, v6

    sget-object v8, Lcom/sun/javafx/sg/prism/CacheFilter;->TEMP_CACHEFILTER_TRANSFORM:Lcom/sun/javafx/geom/transform/Affine3D;

    invoke-interface {v7, v8}, Lcom/sun/prism/Graphics;->transform(Lcom/sun/javafx/geom/transform/BaseTransform;)V

    .line 670
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/sg/prism/CacheFilter;->node:Lcom/sun/javafx/sg/prism/NGNode;

    invoke-virtual {v7}, Lcom/sun/javafx/sg/prism/NGNode;->getClipNode()Lcom/sun/javafx/sg/prism/NGNode;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 671
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/sg/prism/CacheFilter;->node:Lcom/sun/javafx/sg/prism/NGNode;

    move-object v8, v6

    invoke-virtual {v7, v8}, Lcom/sun/javafx/sg/prism/NGNode;->renderClip(Lcom/sun/prism/Graphics;)V

    .line 678
    .end local v6    # "g":Lcom/sun/prism/Graphics;
    :cond_2
    :goto_0
    return-void

    .line 672
    .restart local v6    # "g":Lcom/sun/prism/Graphics;
    :cond_3
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/sg/prism/CacheFilter;->node:Lcom/sun/javafx/sg/prism/NGNode;

    invoke-virtual {v7}, Lcom/sun/javafx/sg/prism/NGNode;->getEffectFilter()Lcom/sun/javafx/sg/prism/EffectFilter;

    move-result-object v7

    if-eqz v7, :cond_4

    .line 673
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/sg/prism/CacheFilter;->node:Lcom/sun/javafx/sg/prism/NGNode;

    move-object v8, v6

    invoke-virtual {v7, v8}, Lcom/sun/javafx/sg/prism/NGNode;->renderEffect(Lcom/sun/prism/Graphics;)V

    goto :goto_0

    .line 675
    :cond_4
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/sg/prism/CacheFilter;->node:Lcom/sun/javafx/sg/prism/NGNode;

    move-object v8, v6

    invoke-virtual {v7, v8}, Lcom/sun/javafx/sg/prism/NGNode;->renderContent(Lcom/sun/prism/Graphics;)V

    goto :goto_0
.end method

.method impl_renderNodeToScreen(Ljava/lang/Object;)V
    .locals 5

    .prologue
    .line 685
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/CacheFilter;
    move-object v1, p1

    .local v1, "implGraphics":Ljava/lang/Object;
    move-object v3, v1

    check-cast v3, Lcom/sun/prism/Graphics;

    move-object v2, v3

    .line 686
    .local v2, "g":Lcom/sun/prism/Graphics;
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/sg/prism/CacheFilter;->node:Lcom/sun/javafx/sg/prism/NGNode;

    invoke-virtual {v3}, Lcom/sun/javafx/sg/prism/NGNode;->getEffectFilter()Lcom/sun/javafx/sg/prism/EffectFilter;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 687
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/sg/prism/CacheFilter;->node:Lcom/sun/javafx/sg/prism/NGNode;

    move-object v4, v2

    invoke-virtual {v3, v4}, Lcom/sun/javafx/sg/prism/NGNode;->renderEffect(Lcom/sun/prism/Graphics;)V

    .line 691
    :goto_0
    return-void

    .line 689
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/sg/prism/CacheFilter;->node:Lcom/sun/javafx/sg/prism/NGNode;

    move-object v4, v2

    invoke-virtual {v3, v4}, Lcom/sun/javafx/sg/prism/NGNode;->renderContent(Lcom/sun/prism/Graphics;)V

    goto :goto_0
.end method

.method impl_scrollCacheCapable()Z
    .locals 12

    .prologue
    .line 718
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/CacheFilter;
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/sg/prism/CacheFilter;->node:Lcom/sun/javafx/sg/prism/NGNode;

    instance-of v9, v9, Lcom/sun/javafx/sg/prism/NGGroup;

    if-nez v9, :cond_0

    .line 719
    const/4 v9, 0x0

    move v0, v9

    .line 757
    .end local v0    # "this":Lcom/sun/javafx/sg/prism/CacheFilter;
    .local v1, "children":Ljava/util/List;, "Ljava/util/List<Lcom/sun/javafx/sg/prism/NGNode;>;"
    :goto_0
    return v0

    .line 721
    .end local v1    # "children":Ljava/util/List;, "Ljava/util/List<Lcom/sun/javafx/sg/prism/NGNode;>;"
    .restart local v0    # "this":Lcom/sun/javafx/sg/prism/CacheFilter;
    :cond_0
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/sg/prism/CacheFilter;->node:Lcom/sun/javafx/sg/prism/NGNode;

    check-cast v9, Lcom/sun/javafx/sg/prism/NGGroup;

    invoke-virtual {v9}, Lcom/sun/javafx/sg/prism/NGGroup;->getChildren()Ljava/util/List;

    move-result-object v9

    move-object v1, v9

    .line 722
    .restart local v1    # "children":Ljava/util/List;, "Ljava/util/List<Lcom/sun/javafx/sg/prism/NGNode;>;"
    move-object v9, v1

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    const/4 v10, 0x1

    if-eq v9, v10, :cond_1

    .line 723
    const/4 v9, 0x0

    move v0, v9

    goto :goto_0

    .line 725
    :cond_1
    move-object v9, v1

    const/4 v10, 0x0

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sun/javafx/sg/prism/NGNode;

    move-object v2, v9

    .line 726
    .local v2, "child":Lcom/sun/javafx/sg/prism/NGNode;
    move-object v9, v2

    invoke-virtual {v9}, Lcom/sun/javafx/sg/prism/NGNode;->getTransform()Lcom/sun/javafx/geom/transform/BaseTransform;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sun/javafx/geom/transform/BaseTransform;->is2D()Z

    move-result v9

    if-nez v9, :cond_2

    .line 727
    const/4 v9, 0x0

    move v0, v9

    goto :goto_0

    .line 730
    :cond_2
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/sg/prism/CacheFilter;->node:Lcom/sun/javafx/sg/prism/NGNode;

    invoke-virtual {v9}, Lcom/sun/javafx/sg/prism/NGNode;->getClipNode()Lcom/sun/javafx/sg/prism/NGNode;

    move-result-object v9

    move-object v3, v9

    .line 731
    .local v3, "clip":Lcom/sun/javafx/sg/prism/NGNode;
    move-object v9, v3

    if-eqz v9, :cond_3

    move-object v9, v3

    sget-object v10, Lcom/sun/javafx/geom/transform/BaseTransform;->IDENTITY_TRANSFORM:Lcom/sun/javafx/geom/transform/BaseTransform;

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Lcom/sun/javafx/sg/prism/NGNode;->isRectClip(Lcom/sun/javafx/geom/transform/BaseTransform;Z)Z

    move-result v9

    if-nez v9, :cond_4

    .line 732
    :cond_3
    const/4 v9, 0x0

    move v0, v9

    goto :goto_0

    .line 735
    :cond_4
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/sg/prism/CacheFilter;->node:Lcom/sun/javafx/sg/prism/NGNode;

    instance-of v9, v9, Lcom/sun/javafx/sg/prism/NGRegion;

    if-eqz v9, :cond_9

    .line 736
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/sg/prism/CacheFilter;->node:Lcom/sun/javafx/sg/prism/NGNode;

    check-cast v9, Lcom/sun/javafx/sg/prism/NGRegion;

    move-object v4, v9

    .line 737
    .local v4, "region":Lcom/sun/javafx/sg/prism/NGRegion;
    move-object v9, v4

    invoke-virtual {v9}, Lcom/sun/javafx/sg/prism/NGRegion;->getBorder()Ljavafx/scene/layout/Border;

    move-result-object v9

    invoke-virtual {v9}, Ljavafx/scene/layout/Border;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_5

    .line 738
    const/4 v9, 0x0

    move v0, v9

    goto :goto_0

    .line 740
    :cond_5
    move-object v9, v4

    invoke-virtual {v9}, Lcom/sun/javafx/sg/prism/NGRegion;->getBackground()Ljavafx/scene/layout/Background;

    move-result-object v9

    move-object v5, v9

    .line 742
    .local v5, "background":Ljavafx/scene/layout/Background;
    move-object v9, v5

    invoke-virtual {v9}, Ljavafx/scene/layout/Background;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_9

    .line 743
    move-object v9, v5

    invoke-virtual {v9}, Ljavafx/scene/layout/Background;->getImages()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_6

    move-object v9, v5

    .line 744
    invoke-virtual {v9}, Ljavafx/scene/layout/Background;->getFills()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    const/4 v10, 0x1

    if-eq v9, v10, :cond_7

    .line 745
    :cond_6
    const/4 v9, 0x0

    move v0, v9

    goto/16 :goto_0

    .line 747
    :cond_7
    move-object v9, v5

    invoke-virtual {v9}, Ljavafx/scene/layout/Background;->getFills()Ljava/util/List;

    move-result-object v9

    const/4 v10, 0x0

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljavafx/scene/layout/BackgroundFill;

    move-object v6, v9

    .line 748
    .local v6, "fill":Ljavafx/scene/layout/BackgroundFill;
    move-object v9, v6

    invoke-virtual {v9}, Ljavafx/scene/layout/BackgroundFill;->getFill()Ljavafx/scene/paint/Paint;

    move-result-object v9

    move-object v7, v9

    .line 749
    .local v7, "fillPaint":Ljavafx/scene/paint/Paint;
    move-object v9, v3

    sget-object v10, Lcom/sun/javafx/sg/prism/CacheFilter;->TEMP_BOUNDS:Lcom/sun/javafx/geom/RectBounds;

    sget-object v11, Lcom/sun/javafx/geom/transform/BaseTransform;->IDENTITY_TRANSFORM:Lcom/sun/javafx/geom/transform/BaseTransform;

    invoke-virtual {v9, v10, v11}, Lcom/sun/javafx/sg/prism/NGNode;->getCompleteBounds(Lcom/sun/javafx/geom/BaseBounds;Lcom/sun/javafx/geom/transform/BaseTransform;)Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v9

    move-object v8, v9

    .line 751
    .local v8, "clipBounds":Lcom/sun/javafx/geom/BaseBounds;
    move-object v9, v7

    invoke-virtual {v9}, Ljavafx/scene/paint/Paint;->isOpaque()Z

    move-result v9

    if-eqz v9, :cond_8

    move-object v9, v7

    instance-of v9, v9, Ljavafx/scene/paint/Color;

    if-eqz v9, :cond_8

    move-object v9, v6

    invoke-virtual {v9}, Ljavafx/scene/layout/BackgroundFill;->getInsets()Ljavafx/geometry/Insets;

    move-result-object v9

    sget-object v10, Ljavafx/geometry/Insets;->EMPTY:Ljavafx/geometry/Insets;

    invoke-virtual {v9, v10}, Ljavafx/geometry/Insets;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    move-object v9, v8

    .line 752
    invoke-virtual {v9}, Lcom/sun/javafx/geom/BaseBounds;->getMinX()F

    move-result v9

    const/4 v10, 0x0

    cmpl-float v9, v9, v10

    if-nez v9, :cond_8

    move-object v9, v8

    invoke-virtual {v9}, Lcom/sun/javafx/geom/BaseBounds;->getMinY()F

    move-result v9

    const/4 v10, 0x0

    cmpl-float v9, v9, v10

    if-nez v9, :cond_8

    move-object v9, v8

    .line 753
    invoke-virtual {v9}, Lcom/sun/javafx/geom/BaseBounds;->getMaxX()F

    move-result v9

    move-object v10, v4

    invoke-virtual {v10}, Lcom/sun/javafx/sg/prism/NGRegion;->getWidth()F

    move-result v10

    cmpl-float v9, v9, v10

    if-nez v9, :cond_8

    move-object v9, v8

    invoke-virtual {v9}, Lcom/sun/javafx/geom/BaseBounds;->getMaxY()F

    move-result v9

    move-object v10, v4

    invoke-virtual {v10}, Lcom/sun/javafx/sg/prism/NGRegion;->getHeight()F

    move-result v10

    cmpl-float v9, v9, v10

    if-nez v9, :cond_8

    const/4 v9, 0x1

    :goto_1
    move v0, v9

    goto/16 :goto_0

    :cond_8
    const/4 v9, 0x0

    goto :goto_1

    .line 757
    .end local v4    # "region":Lcom/sun/javafx/sg/prism/NGRegion;
    .end local v5    # "background":Ljavafx/scene/layout/Background;
    .end local v6    # "fill":Ljavafx/scene/layout/BackgroundFill;
    .end local v7    # "fillPaint":Ljavafx/scene/paint/Paint;
    .end local v8    # "clipBounds":Lcom/sun/javafx/geom/BaseBounds;
    :cond_9
    const/4 v9, 0x1

    move v0, v9

    goto/16 :goto_0
.end method

.method public invalidate()V
    .locals 10

    .prologue
    .line 319
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/CacheFilter;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/sg/prism/CacheFilter;->scrollCacheState:Lcom/sun/javafx/sg/prism/CacheFilter$ScrollCacheState;

    sget-object v2, Lcom/sun/javafx/sg/prism/CacheFilter$ScrollCacheState;->ENABLED:Lcom/sun/javafx/sg/prism/CacheFilter$ScrollCacheState;

    if-ne v1, v2, :cond_0

    .line 320
    move-object v1, v0

    sget-object v2, Lcom/sun/javafx/sg/prism/CacheFilter$ScrollCacheState;->CHECKING_PRECONDITIONS:Lcom/sun/javafx/sg/prism/CacheFilter$ScrollCacheState;

    iput-object v2, v1, Lcom/sun/javafx/sg/prism/CacheFilter;->scrollCacheState:Lcom/sun/javafx/sg/prism/CacheFilter$ScrollCacheState;

    .line 322
    :cond_0
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/sg/prism/CacheFilter;->imageDataUnref()V

    .line 323
    move-object v1, v0

    move-object v2, v0

    const-wide/16 v3, 0x0

    move-object v7, v2

    move-wide v8, v3

    move-wide v2, v8

    move-object v4, v7

    move-wide v5, v8

    iput-wide v5, v4, Lcom/sun/javafx/sg/prism/CacheFilter;->lastYDelta:D

    iput-wide v2, v1, Lcom/sun/javafx/sg/prism/CacheFilter;->lastXDelta:D

    .line 324
    return-void
.end method

.method invalidateByTranslation(DD)V
    .locals 11

    .prologue
    .line 345
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/sg/prism/CacheFilter;
    move-wide v2, p1

    .local v2, "translateXDelta":D
    move-wide v4, p3

    .local v4, "translateYDelta":D
    move-object v6, v1

    iget-object v6, v6, Lcom/sun/javafx/sg/prism/CacheFilter;->cachedImageData:Lcom/sun/scenario/effect/ImageData;

    if-nez v6, :cond_0

    .line 346
    .line 360
    :goto_0
    return-void

    .line 349
    :cond_0
    move-object v6, v1

    iget-object v6, v6, Lcom/sun/javafx/sg/prism/CacheFilter;->scrollCacheState:Lcom/sun/javafx/sg/prism/CacheFilter$ScrollCacheState;

    sget-object v7, Lcom/sun/javafx/sg/prism/CacheFilter$ScrollCacheState;->DISABLED:Lcom/sun/javafx/sg/prism/CacheFilter$ScrollCacheState;

    if-ne v6, v7, :cond_1

    .line 350
    move-object v6, v1

    invoke-virtual {v6}, Lcom/sun/javafx/sg/prism/CacheFilter;->imageDataUnref()V

    .line 360
    :goto_1
    goto :goto_0

    .line 353
    :cond_1
    move-wide v6, v2

    const-wide/16 v8, 0x0

    cmpl-double v6, v6, v8

    if-eqz v6, :cond_2

    move-wide v6, v4

    const-wide/16 v8, 0x0

    cmpl-double v6, v6, v8

    if-eqz v6, :cond_2

    .line 354
    move-object v6, v1

    invoke-virtual {v6}, Lcom/sun/javafx/sg/prism/CacheFilter;->imageDataUnref()V

    goto :goto_1

    .line 356
    :cond_2
    move-object v6, v1

    move-wide v7, v4

    iput-wide v7, v6, Lcom/sun/javafx/sg/prism/CacheFilter;->lastYDelta:D

    .line 357
    move-object v6, v1

    move-wide v7, v2

    iput-wide v7, v6, Lcom/sun/javafx/sg/prism/CacheFilter;->lastXDelta:D

    goto :goto_1
.end method

.method final isRotateHint()Z
    .locals 2

    .prologue
    .line 165
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/CacheFilter;
    move-object v1, v0

    iget-boolean v1, v1, Lcom/sun/javafx/sg/prism/CacheFilter;->rotateHint:Z

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/sg/prism/CacheFilter;
    return v0
.end method

.method final isScaleHint()Z
    .locals 2

    .prologue
    .line 164
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/CacheFilter;
    move-object v1, v0

    iget-boolean v1, v1, Lcom/sun/javafx/sg/prism/CacheFilter;->scaleHint:Z

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/sg/prism/CacheFilter;
    return v0
.end method

.method matchesHint(Ljavafx/scene/CacheHint;)Z
    .locals 4

    .prologue
    .line 172
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/CacheFilter;
    move-object v1, p1

    .local v1, "cacheHint":Ljavafx/scene/CacheHint;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/sg/prism/CacheFilter;->cacheHint:Ljavafx/scene/CacheHint;

    move-object v3, v1

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .end local v0    # "this":Lcom/sun/javafx/sg/prism/CacheFilter;
    return v0

    .restart local v0    # "this":Lcom/sun/javafx/sg/prism/CacheFilter;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method render(Lcom/sun/prism/Graphics;)V
    .locals 31

    .prologue
    .line 516
    move-object/from16 v3, p0

    .local v3, "this":Lcom/sun/javafx/sg/prism/CacheFilter;
    move-object/from16 v4, p1

    .local v4, "g":Lcom/sun/prism/Graphics;
    move-object v15, v4

    invoke-interface {v15}, Lcom/sun/prism/Graphics;->getTransformNoClone()Lcom/sun/javafx/geom/transform/BaseTransform;

    move-result-object v15

    move-object v5, v15

    .line 517
    .local v5, "xform":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object v15, v4

    invoke-interface {v15}, Lcom/sun/prism/Graphics;->getAssociatedScreen()Lcom/sun/glass/ui/Screen;

    move-result-object v15

    invoke-static {v15}, Lcom/sun/scenario/effect/impl/prism/PrFilterContext;->getInstance(Lcom/sun/glass/ui/Screen;)Lcom/sun/scenario/effect/impl/prism/PrFilterContext;

    move-result-object v15

    move-object v6, v15

    .line 519
    .local v6, "fctx":Lcom/sun/scenario/effect/FilterContext;
    move-object v15, v3

    move-object/from16 v16, v5

    invoke-virtual/range {v15 .. v16}, Lcom/sun/javafx/sg/prism/CacheFilter;->unmatrix(Lcom/sun/javafx/geom/transform/BaseTransform;)[D

    move-result-object v15

    move-object v7, v15

    .line 520
    .local v7, "xformInfo":[D
    move-object v15, v3

    move-object/from16 v16, v7

    invoke-virtual/range {v15 .. v16}, Lcom/sun/javafx/sg/prism/CacheFilter;->unsupported([D)Z

    move-result v15

    move v8, v15

    .line 522
    .local v8, "isUnsupported":Z
    move-object v15, v3

    move-object/from16 v16, v3

    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/sun/javafx/sg/prism/CacheFilter;->lastXDelta:D

    move-wide/from16 v16, v0

    move-object/from16 v18, v7

    const/16 v19, 0x0

    aget-wide v18, v18, v19

    mul-double v16, v16, v18

    move-wide/from16 v0, v16

    iput-wide v0, v15, Lcom/sun/javafx/sg/prism/CacheFilter;->lastXDelta:D

    .line 523
    move-object v15, v3

    move-object/from16 v16, v3

    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/sun/javafx/sg/prism/CacheFilter;->lastYDelta:D

    move-wide/from16 v16, v0

    move-object/from16 v18, v7

    const/16 v19, 0x1

    aget-wide v18, v18, v19

    mul-double v16, v16, v18

    move-wide/from16 v0, v16

    iput-wide v0, v15, Lcom/sun/javafx/sg/prism/CacheFilter;->lastYDelta:D

    .line 525
    move-object v15, v3

    iget-object v15, v15, Lcom/sun/javafx/sg/prism/CacheFilter;->cachedImageData:Lcom/sun/scenario/effect/ImageData;

    if-eqz v15, :cond_0

    .line 526
    move-object v15, v3

    iget-object v15, v15, Lcom/sun/javafx/sg/prism/CacheFilter;->cachedImageData:Lcom/sun/scenario/effect/ImageData;

    invoke-virtual {v15}, Lcom/sun/scenario/effect/ImageData;->getUntransformedImage()Lcom/sun/scenario/effect/Filterable;

    move-result-object v15

    move-object v9, v15

    .line 527
    .local v9, "implImage":Lcom/sun/scenario/effect/Filterable;
    move-object v15, v9

    if-eqz v15, :cond_0

    .line 528
    move-object v15, v9

    invoke-interface {v15}, Lcom/sun/scenario/effect/Filterable;->lock()V

    .line 529
    move-object v15, v3

    iget-object v15, v15, Lcom/sun/javafx/sg/prism/CacheFilter;->cachedImageData:Lcom/sun/scenario/effect/ImageData;

    move-object/from16 v16, v6

    invoke-virtual/range {v15 .. v16}, Lcom/sun/scenario/effect/ImageData;->validate(Lcom/sun/scenario/effect/FilterContext;)Z

    move-result v15

    if-nez v15, :cond_0

    .line 530
    move-object v15, v9

    invoke-interface {v15}, Lcom/sun/scenario/effect/Filterable;->unlock()V

    .line 531
    move-object v15, v3

    invoke-virtual {v15}, Lcom/sun/javafx/sg/prism/CacheFilter;->invalidate()V

    .line 535
    .end local v9    # "implImage":Lcom/sun/scenario/effect/Filterable;
    :cond_0
    move-object v15, v4

    invoke-interface {v15}, Lcom/sun/prism/Graphics;->getAssociatedScreen()Lcom/sun/glass/ui/Screen;

    move-result-object v15

    invoke-virtual {v15}, Lcom/sun/glass/ui/Screen;->getRenderScale()F

    move-result v15

    move v9, v15

    .line 536
    .local v9, "pixelScale":F
    move-object v15, v3

    move-object/from16 v16, v5

    move-object/from16 v17, v7

    move/from16 v18, v9

    invoke-direct/range {v15 .. v18}, Lcom/sun/javafx/sg/prism/CacheFilter;->needToRenderCache(Lcom/sun/javafx/geom/transform/BaseTransform;[DF)Z

    move-result v15

    if-eqz v15, :cond_6

    .line 537
    sget-boolean v15, Lcom/sun/javafx/logging/PulseLogger;->PULSE_LOGGING_ENABLED:Z

    if-eqz v15, :cond_1

    .line 538
    const-string v15, "CacheFilter rebuilding"

    invoke-static {v15}, Lcom/sun/javafx/logging/PulseLogger;->incrementCounter(Ljava/lang/String;)V

    .line 540
    :cond_1
    move-object v15, v3

    iget-object v15, v15, Lcom/sun/javafx/sg/prism/CacheFilter;->cachedImageData:Lcom/sun/scenario/effect/ImageData;

    if-eqz v15, :cond_3

    .line 541
    move-object v15, v3

    iget-object v15, v15, Lcom/sun/javafx/sg/prism/CacheFilter;->cachedImageData:Lcom/sun/scenario/effect/ImageData;

    invoke-virtual {v15}, Lcom/sun/scenario/effect/ImageData;->getUntransformedImage()Lcom/sun/scenario/effect/Filterable;

    move-result-object v15

    move-object v10, v15

    .line 542
    .local v10, "implImage":Lcom/sun/scenario/effect/Filterable;
    move-object v15, v10

    if-eqz v15, :cond_2

    .line 543
    move-object v15, v10

    invoke-interface {v15}, Lcom/sun/scenario/effect/Filterable;->unlock()V

    .line 545
    :cond_2
    move-object v15, v3

    invoke-virtual {v15}, Lcom/sun/javafx/sg/prism/CacheFilter;->invalidate()V

    .line 547
    .end local v10    # "implImage":Lcom/sun/scenario/effect/Filterable;
    :cond_3
    move-object v15, v3

    iget-boolean v15, v15, Lcom/sun/javafx/sg/prism/CacheFilter;->scaleHint:Z

    if-eqz v15, :cond_5

    .line 551
    move-object v15, v3

    move/from16 v16, v9

    move/from16 v0, v16

    float-to-double v0, v0

    move-wide/from16 v16, v0

    move-object/from16 v18, v7

    const/16 v19, 0x0

    aget-wide v18, v18, v19

    invoke-static/range {v16 .. v19}, Ljava/lang/Math;->max(DD)D

    move-result-wide v16

    move-wide/from16 v0, v16

    iput-wide v0, v15, Lcom/sun/javafx/sg/prism/CacheFilter;->cachedScaleX:D

    .line 552
    move-object v15, v3

    move/from16 v16, v9

    move/from16 v0, v16

    float-to-double v0, v0

    move-wide/from16 v16, v0

    move-object/from16 v18, v7

    const/16 v19, 0x1

    aget-wide v18, v18, v19

    invoke-static/range {v16 .. v19}, Ljava/lang/Math;->max(DD)D

    move-result-wide v16

    move-wide/from16 v0, v16

    iput-wide v0, v15, Lcom/sun/javafx/sg/prism/CacheFilter;->cachedScaleY:D

    .line 553
    move-object v15, v3

    const-wide/16 v16, 0x0

    move-wide/from16 v0, v16

    iput-wide v0, v15, Lcom/sun/javafx/sg/prism/CacheFilter;->cachedRotate:D

    .line 554
    move-object v15, v3

    iget-object v15, v15, Lcom/sun/javafx/sg/prism/CacheFilter;->cachedXform:Lcom/sun/javafx/geom/transform/Affine2D;

    move-object/from16 v16, v3

    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/sun/javafx/sg/prism/CacheFilter;->cachedScaleX:D

    move-wide/from16 v16, v0

    const-wide/16 v18, 0x0

    const-wide/16 v20, 0x0

    move-object/from16 v22, v3

    move-object/from16 v0, v22

    iget-wide v0, v0, Lcom/sun/javafx/sg/prism/CacheFilter;->cachedScaleX:D

    move-wide/from16 v22, v0

    const-wide/16 v24, 0x0

    const-wide/16 v26, 0x0

    invoke-virtual/range {v15 .. v27}, Lcom/sun/javafx/geom/transform/Affine2D;->setTransform(DDDDDD)V

    .line 557
    move-object v15, v3

    move-object/from16 v16, v7

    invoke-virtual/range {v15 .. v16}, Lcom/sun/javafx/sg/prism/CacheFilter;->updateScreenXform([D)V

    .line 573
    :goto_0
    move-object v15, v3

    move-object/from16 v16, v3

    move-object/from16 v17, v3

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/javafx/sg/prism/CacheFilter;->cacheBounds:Lcom/sun/javafx/geom/Rectangle;

    move-object/from16 v17, v0

    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sun/javafx/sg/prism/CacheFilter;->cachedXform:Lcom/sun/javafx/geom/transform/Affine2D;

    move-object/from16 v18, v0

    invoke-virtual/range {v16 .. v18}, Lcom/sun/javafx/sg/prism/CacheFilter;->impl_getCacheBounds(Lcom/sun/javafx/geom/Rectangle;Lcom/sun/javafx/geom/transform/BaseTransform;)Lcom/sun/javafx/geom/Rectangle;

    move-result-object v16

    move-object/from16 v0, v16

    iput-object v0, v15, Lcom/sun/javafx/sg/prism/CacheFilter;->cacheBounds:Lcom/sun/javafx/geom/Rectangle;

    .line 574
    move-object v15, v3

    move-object/from16 v16, v3

    move-object/from16 v17, v6

    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sun/javafx/sg/prism/CacheFilter;->cacheBounds:Lcom/sun/javafx/geom/Rectangle;

    move-object/from16 v18, v0

    invoke-virtual/range {v16 .. v18}, Lcom/sun/javafx/sg/prism/CacheFilter;->impl_createImageData(Lcom/sun/scenario/effect/FilterContext;Lcom/sun/javafx/geom/Rectangle;)Lcom/sun/scenario/effect/ImageData;

    move-result-object v16

    move-object/from16 v0, v16

    iput-object v0, v15, Lcom/sun/javafx/sg/prism/CacheFilter;->cachedImageData:Lcom/sun/scenario/effect/ImageData;

    .line 575
    move-object v15, v3

    move-object/from16 v16, v3

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/sun/javafx/sg/prism/CacheFilter;->cachedImageData:Lcom/sun/scenario/effect/ImageData;

    move-object/from16 v16, v0

    move-object/from16 v17, v3

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/javafx/sg/prism/CacheFilter;->cacheBounds:Lcom/sun/javafx/geom/Rectangle;

    move-object/from16 v17, v0

    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sun/javafx/sg/prism/CacheFilter;->cachedXform:Lcom/sun/javafx/geom/transform/Affine2D;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v15 .. v19}, Lcom/sun/javafx/sg/prism/CacheFilter;->impl_renderNodeToCache(Lcom/sun/scenario/effect/ImageData;Lcom/sun/javafx/geom/Rectangle;Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/javafx/geom/Rectangle;)V

    .line 578
    move-object v15, v3

    iget-object v15, v15, Lcom/sun/javafx/sg/prism/CacheFilter;->cachedImageData:Lcom/sun/scenario/effect/ImageData;

    invoke-virtual {v15}, Lcom/sun/scenario/effect/ImageData;->getUntransformedBounds()Lcom/sun/javafx/geom/Rectangle;

    move-result-object v15

    move-object v10, v15

    .line 583
    .local v10, "cachedBounds":Lcom/sun/javafx/geom/Rectangle;
    move-object v15, v3

    move-object/from16 v16, v10

    move-object/from16 v0, v16

    iget v0, v0, Lcom/sun/javafx/geom/Rectangle;->x:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    iput-wide v0, v15, Lcom/sun/javafx/sg/prism/CacheFilter;->cachedX:D

    .line 584
    move-object v15, v3

    move-object/from16 v16, v10

    move-object/from16 v0, v16

    iget v0, v0, Lcom/sun/javafx/geom/Rectangle;->y:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    iput-wide v0, v15, Lcom/sun/javafx/sg/prism/CacheFilter;->cachedY:D

    .line 586
    .line 608
    .end local v10    # "cachedBounds":Lcom/sun/javafx/geom/Rectangle;
    :goto_1
    move-object v15, v3

    move/from16 v16, v8

    move/from16 v0, v16

    iput-boolean v0, v15, Lcom/sun/javafx/sg/prism/CacheFilter;->wasUnsupported:Z

    .line 610
    move-object v15, v3

    iget-object v15, v15, Lcom/sun/javafx/sg/prism/CacheFilter;->cachedImageData:Lcom/sun/scenario/effect/ImageData;

    invoke-virtual {v15}, Lcom/sun/scenario/effect/ImageData;->getUntransformedImage()Lcom/sun/scenario/effect/Filterable;

    move-result-object v15

    move-object v10, v15

    .line 611
    .local v10, "implImage":Lcom/sun/scenario/effect/Filterable;
    move-object v15, v10

    if-nez v15, :cond_a

    .line 612
    sget-boolean v15, Lcom/sun/javafx/logging/PulseLogger;->PULSE_LOGGING_ENABLED:Z

    if-eqz v15, :cond_4

    .line 613
    const-string v15, "CacheFilter not used"

    invoke-static {v15}, Lcom/sun/javafx/logging/PulseLogger;->incrementCounter(Ljava/lang/String;)V

    .line 615
    :cond_4
    move-object v15, v3

    move-object/from16 v16, v4

    invoke-virtual/range {v15 .. v16}, Lcom/sun/javafx/sg/prism/CacheFilter;->impl_renderNodeToScreen(Ljava/lang/Object;)V

    .line 622
    :goto_2
    return-void

    .line 559
    .end local v10    # "implImage":Lcom/sun/scenario/effect/Filterable;
    :cond_5
    move-object v15, v3

    move-object/from16 v16, v7

    const/16 v17, 0x0

    aget-wide v16, v16, v17

    move-wide/from16 v0, v16

    iput-wide v0, v15, Lcom/sun/javafx/sg/prism/CacheFilter;->cachedScaleX:D

    .line 560
    move-object v15, v3

    move-object/from16 v16, v7

    const/16 v17, 0x1

    aget-wide v16, v16, v17

    move-wide/from16 v0, v16

    iput-wide v0, v15, Lcom/sun/javafx/sg/prism/CacheFilter;->cachedScaleY:D

    .line 561
    move-object v15, v3

    move-object/from16 v16, v7

    const/16 v17, 0x2

    aget-wide v16, v16, v17

    move-wide/from16 v0, v16

    iput-wide v0, v15, Lcom/sun/javafx/sg/prism/CacheFilter;->cachedRotate:D

    .line 564
    move-object v15, v3

    iget-object v15, v15, Lcom/sun/javafx/sg/prism/CacheFilter;->cachedXform:Lcom/sun/javafx/geom/transform/Affine2D;

    move-object/from16 v16, v5

    invoke-virtual/range {v16 .. v16}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMxx()D

    move-result-wide v16

    move-object/from16 v18, v5

    invoke-virtual/range {v18 .. v18}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMyx()D

    move-result-wide v18

    move-object/from16 v20, v5

    .line 565
    invoke-virtual/range {v20 .. v20}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMxy()D

    move-result-wide v20

    move-object/from16 v22, v5

    invoke-virtual/range {v22 .. v22}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMyy()D

    move-result-wide v22

    const-wide/16 v24, 0x0

    const-wide/16 v26, 0x0

    .line 564
    invoke-virtual/range {v15 .. v27}, Lcom/sun/javafx/geom/transform/Affine2D;->setTransform(DDDDDD)V

    .line 570
    move-object v15, v3

    iget-object v15, v15, Lcom/sun/javafx/sg/prism/CacheFilter;->screenXform:Lcom/sun/javafx/geom/transform/Affine2D;

    sget-object v16, Lcom/sun/javafx/geom/transform/BaseTransform;->IDENTITY_TRANSFORM:Lcom/sun/javafx/geom/transform/BaseTransform;

    invoke-virtual/range {v15 .. v16}, Lcom/sun/javafx/geom/transform/Affine2D;->setTransform(Lcom/sun/javafx/geom/transform/BaseTransform;)V

    goto/16 :goto_0

    .line 587
    :cond_6
    move-object v15, v3

    iget-object v15, v15, Lcom/sun/javafx/sg/prism/CacheFilter;->scrollCacheState:Lcom/sun/javafx/sg/prism/CacheFilter$ScrollCacheState;

    sget-object v16, Lcom/sun/javafx/sg/prism/CacheFilter$ScrollCacheState;->ENABLED:Lcom/sun/javafx/sg/prism/CacheFilter$ScrollCacheState;

    move-object/from16 v0, v16

    if-ne v15, v0, :cond_8

    move-object v15, v3

    iget-wide v15, v15, Lcom/sun/javafx/sg/prism/CacheFilter;->lastXDelta:D

    const-wide/16 v17, 0x0

    cmpl-double v15, v15, v17

    if-nez v15, :cond_7

    move-object v15, v3

    iget-wide v15, v15, Lcom/sun/javafx/sg/prism/CacheFilter;->lastYDelta:D

    const-wide/16 v17, 0x0

    cmpl-double v15, v15, v17

    if-eqz v15, :cond_8

    .line 589
    :cond_7
    move-object v15, v3

    move-object/from16 v16, v3

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/sun/javafx/sg/prism/CacheFilter;->cachedImageData:Lcom/sun/scenario/effect/ImageData;

    move-object/from16 v16, v0

    move-object/from16 v17, v3

    move-object/from16 v0, v17

    iget-wide v0, v0, Lcom/sun/javafx/sg/prism/CacheFilter;->lastXDelta:D

    move-wide/from16 v17, v0

    move-object/from16 v19, v3

    move-object/from16 v0, v19

    iget-wide v0, v0, Lcom/sun/javafx/sg/prism/CacheFilter;->lastYDelta:D

    move-wide/from16 v19, v0

    invoke-virtual/range {v15 .. v20}, Lcom/sun/javafx/sg/prism/CacheFilter;->impl_moveCacheBy(Lcom/sun/scenario/effect/ImageData;DD)V

    .line 590
    move-object v15, v3

    move-object/from16 v16, v3

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/sun/javafx/sg/prism/CacheFilter;->cachedImageData:Lcom/sun/scenario/effect/ImageData;

    move-object/from16 v16, v0

    move-object/from16 v17, v3

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/javafx/sg/prism/CacheFilter;->cacheBounds:Lcom/sun/javafx/geom/Rectangle;

    move-object/from16 v17, v0

    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sun/javafx/sg/prism/CacheFilter;->cachedXform:Lcom/sun/javafx/geom/transform/Affine2D;

    move-object/from16 v18, v0

    move-object/from16 v19, v3

    invoke-direct/range {v19 .. v19}, Lcom/sun/javafx/sg/prism/CacheFilter;->computeDirtyRegionForTranslate()Lcom/sun/javafx/geom/Rectangle;

    move-result-object v19

    invoke-virtual/range {v15 .. v19}, Lcom/sun/javafx/sg/prism/CacheFilter;->impl_renderNodeToCache(Lcom/sun/scenario/effect/ImageData;Lcom/sun/javafx/geom/Rectangle;Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/javafx/geom/Rectangle;)V

    .line 591
    move-object v15, v3

    move-object/from16 v16, v3

    const-wide/16 v17, 0x0

    move-object/from16 v28, v16

    move-wide/from16 v29, v17

    move-wide/from16 v16, v29

    move-object/from16 v18, v28

    move-wide/from16 v19, v29

    move-wide/from16 v0, v19

    move-object/from16 v2, v18

    iput-wide v0, v2, Lcom/sun/javafx/sg/prism/CacheFilter;->lastYDelta:D

    move-wide/from16 v0, v16

    iput-wide v0, v15, Lcom/sun/javafx/sg/prism/CacheFilter;->lastXDelta:D

    .line 594
    :cond_8
    move v15, v8

    if-eqz v15, :cond_9

    .line 601
    move-object v15, v3

    iget-object v15, v15, Lcom/sun/javafx/sg/prism/CacheFilter;->screenXform:Lcom/sun/javafx/geom/transform/Affine2D;

    sget-object v16, Lcom/sun/javafx/geom/transform/BaseTransform;->IDENTITY_TRANSFORM:Lcom/sun/javafx/geom/transform/BaseTransform;

    invoke-virtual/range {v15 .. v16}, Lcom/sun/javafx/geom/transform/Affine2D;->setTransform(Lcom/sun/javafx/geom/transform/BaseTransform;)V

    goto/16 :goto_1

    .line 603
    :cond_9
    move-object v15, v3

    move-object/from16 v16, v7

    invoke-virtual/range {v15 .. v16}, Lcom/sun/javafx/sg/prism/CacheFilter;->updateScreenXform([D)V

    goto/16 :goto_1

    .line 617
    .restart local v10    # "implImage":Lcom/sun/scenario/effect/Filterable;
    :cond_a
    move-object v15, v5

    invoke-virtual {v15}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMxt()D

    move-result-wide v15

    move-wide v11, v15

    .line 618
    .local v11, "mxt":D
    move-object v15, v5

    invoke-virtual {v15}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMyt()D

    move-result-wide v15

    move-wide v13, v15

    .line 619
    .local v13, "myt":D
    move-object v15, v3

    move-object/from16 v16, v4

    move-object/from16 v17, v10

    move-wide/from16 v18, v11

    move-wide/from16 v20, v13

    invoke-virtual/range {v15 .. v21}, Lcom/sun/javafx/sg/prism/CacheFilter;->impl_renderCacheToScreen(Ljava/lang/Object;Lcom/sun/scenario/effect/Filterable;DD)V

    .line 620
    move-object v15, v10

    invoke-interface {v15}, Lcom/sun/scenario/effect/Filterable;->unlock()V

    goto/16 :goto_2
.end method

.method public setHint(Ljavafx/scene/CacheHint;)V
    .locals 5

    .prologue
    .line 154
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/CacheFilter;
    move-object v1, p1

    .local v1, "cacheHint":Ljavafx/scene/CacheHint;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/sg/prism/CacheFilter;->cacheHint:Ljavafx/scene/CacheHint;

    .line 155
    move-object v2, v0

    move-object v3, v1

    sget-object v4, Ljavafx/scene/CacheHint;->SPEED:Ljavafx/scene/CacheHint;

    if-eq v3, v4, :cond_0

    move-object v3, v1

    sget-object v4, Ljavafx/scene/CacheHint;->SCALE:Ljavafx/scene/CacheHint;

    if-eq v3, v4, :cond_0

    move-object v3, v1

    sget-object v4, Ljavafx/scene/CacheHint;->SCALE_AND_ROTATE:Ljavafx/scene/CacheHint;

    if-ne v3, v4, :cond_2

    :cond_0
    const/4 v3, 0x1

    :goto_0
    iput-boolean v3, v2, Lcom/sun/javafx/sg/prism/CacheFilter;->scaleHint:Z

    .line 158
    move-object v2, v0

    move-object v3, v1

    sget-object v4, Ljavafx/scene/CacheHint;->SPEED:Ljavafx/scene/CacheHint;

    if-eq v3, v4, :cond_1

    move-object v3, v1

    sget-object v4, Ljavafx/scene/CacheHint;->ROTATE:Ljavafx/scene/CacheHint;

    if-eq v3, v4, :cond_1

    move-object v3, v1

    sget-object v4, Ljavafx/scene/CacheHint;->SCALE_AND_ROTATE:Ljavafx/scene/CacheHint;

    if-ne v3, v4, :cond_3

    :cond_1
    const/4 v3, 0x1

    :goto_1
    iput-boolean v3, v2, Lcom/sun/javafx/sg/prism/CacheFilter;->rotateHint:Z

    .line 161
    return-void

    .line 155
    :cond_2
    const/4 v3, 0x0

    goto :goto_0

    .line 158
    :cond_3
    const/4 v3, 0x0

    goto :goto_1
.end method

.method unmatrix(Lcom/sun/javafx/geom/transform/BaseTransform;)[D
    .locals 31

    .prologue
    .line 391
    move-object/from16 v2, p0

    .local v2, "this":Lcom/sun/javafx/sg/prism/CacheFilter;
    move-object/from16 v3, p1

    .local v3, "xform":Lcom/sun/javafx/geom/transform/BaseTransform;
    const/16 v22, 0x3

    move/from16 v0, v22

    new-array v0, v0, [D

    move-object/from16 v22, v0

    move-object/from16 v4, v22

    .line 393
    .local v4, "retVal":[D
    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v0, v0, [[D

    move-object/from16 v22, v0

    move-object/from16 v30, v22

    move-object/from16 v22, v30

    move-object/from16 v23, v30

    const/16 v24, 0x0

    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v0, v0, [D

    move-object/from16 v25, v0

    move-object/from16 v30, v25

    move-object/from16 v25, v30

    move-object/from16 v26, v30

    const/16 v27, 0x0

    move-object/from16 v28, v3

    invoke-virtual/range {v28 .. v28}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMxx()D

    move-result-wide v28

    aput-wide v28, v26, v27

    move-object/from16 v30, v25

    move-object/from16 v25, v30

    move-object/from16 v26, v30

    const/16 v27, 0x1

    move-object/from16 v28, v3

    invoke-virtual/range {v28 .. v28}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMxy()D

    move-result-wide v28

    aput-wide v28, v26, v27

    aput-object v25, v23, v24

    move-object/from16 v30, v22

    move-object/from16 v22, v30

    move-object/from16 v23, v30

    const/16 v24, 0x1

    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v0, v0, [D

    move-object/from16 v25, v0

    move-object/from16 v30, v25

    move-object/from16 v25, v30

    move-object/from16 v26, v30

    const/16 v27, 0x0

    move-object/from16 v28, v3

    .line 394
    invoke-virtual/range {v28 .. v28}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMyx()D

    move-result-wide v28

    aput-wide v28, v26, v27

    move-object/from16 v30, v25

    move-object/from16 v25, v30

    move-object/from16 v26, v30

    const/16 v27, 0x1

    move-object/from16 v28, v3

    invoke-virtual/range {v28 .. v28}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMyy()D

    move-result-wide v28

    aput-wide v28, v26, v27

    aput-object v25, v23, v24

    move-object/from16 v5, v22

    .line 395
    .local v5, "row":[[D
    move-object/from16 v22, v5

    const/16 v23, 0x0

    aget-object v22, v22, v23

    const/16 v23, 0x0

    aget-wide v22, v22, v23

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->signum(D)D

    move-result-wide v22

    move-wide/from16 v6, v22

    .line 396
    .local v6, "xSignum":D
    move-object/from16 v22, v5

    const/16 v23, 0x1

    aget-object v22, v22, v23

    const/16 v23, 0x1

    aget-wide v22, v22, v23

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->signum(D)D

    move-result-wide v22

    move-wide/from16 v8, v22

    .line 402
    .local v8, "ySignum":D
    move-wide/from16 v22, v6

    move-object/from16 v24, v2

    move-object/from16 v25, v5

    const/16 v26, 0x0

    aget-object v25, v25, v26

    invoke-virtual/range {v24 .. v25}, Lcom/sun/javafx/sg/prism/CacheFilter;->v2length([D)D

    move-result-wide v24

    mul-double v22, v22, v24

    move-wide/from16 v10, v22

    .line 403
    .local v10, "scaleX":D
    move-object/from16 v22, v2

    move-object/from16 v23, v5

    const/16 v24, 0x0

    aget-object v23, v23, v24

    move-wide/from16 v24, v6

    invoke-virtual/range {v22 .. v25}, Lcom/sun/javafx/sg/prism/CacheFilter;->v2scale([DD)V

    .line 410
    move-object/from16 v22, v2

    move-object/from16 v23, v5

    const/16 v24, 0x0

    aget-object v23, v23, v24

    move-object/from16 v24, v5

    const/16 v25, 0x1

    aget-object v24, v24, v25

    invoke-virtual/range {v22 .. v24}, Lcom/sun/javafx/sg/prism/CacheFilter;->v2dot([D[D)D

    move-result-wide v22

    move-wide/from16 v12, v22

    .line 413
    .local v12, "shearXY":D
    move-object/from16 v22, v2

    move-object/from16 v23, v5

    const/16 v24, 0x1

    aget-object v23, v23, v24

    move-object/from16 v24, v5

    const/16 v25, 0x0

    aget-object v24, v24, v25

    move-object/from16 v25, v5

    const/16 v26, 0x1

    aget-object v25, v25, v26

    const-wide/high16 v26, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v28, v12

    move-wide/from16 v0, v28

    neg-double v0, v0

    move-wide/from16 v28, v0

    invoke-virtual/range {v22 .. v29}, Lcom/sun/javafx/sg/prism/CacheFilter;->v2combine([D[D[DDD)V

    .line 420
    move-wide/from16 v22, v8

    move-object/from16 v24, v2

    move-object/from16 v25, v5

    const/16 v26, 0x1

    aget-object v25, v25, v26

    invoke-virtual/range {v24 .. v25}, Lcom/sun/javafx/sg/prism/CacheFilter;->v2length([D)D

    move-result-wide v24

    mul-double v22, v22, v24

    move-wide/from16 v14, v22

    .line 421
    .local v14, "scaleY":D
    move-object/from16 v22, v2

    move-object/from16 v23, v5

    const/16 v24, 0x1

    aget-object v23, v23, v24

    move-wide/from16 v24, v8

    invoke-virtual/range {v22 .. v25}, Lcom/sun/javafx/sg/prism/CacheFilter;->v2scale([DD)V

    .line 431
    move-object/from16 v22, v5

    const/16 v23, 0x1

    aget-object v22, v22, v23

    const/16 v23, 0x0

    aget-wide v22, v22, v23

    move-wide/from16 v16, v22

    .line 432
    .local v16, "sin":D
    move-object/from16 v22, v5

    const/16 v23, 0x0

    aget-object v22, v22, v23

    const/16 v23, 0x0

    aget-wide v22, v22, v23

    move-wide/from16 v18, v22

    .line 433
    .local v18, "cos":D
    const-wide/16 v22, 0x0

    move-wide/from16 v20, v22

    .line 438
    .local v20, "angleRad":D
    move-wide/from16 v22, v16

    const-wide/16 v24, 0x0

    cmpl-double v22, v22, v24

    if-ltz v22, :cond_0

    .line 440
    move-wide/from16 v22, v18

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->acos(D)D

    move-result-wide v22

    move-wide/from16 v20, v22

    .line 454
    :goto_0
    move-object/from16 v22, v4

    const/16 v23, 0x0

    move-wide/from16 v24, v10

    aput-wide v24, v22, v23

    .line 455
    move-object/from16 v22, v4

    const/16 v23, 0x1

    move-wide/from16 v24, v14

    aput-wide v24, v22, v23

    .line 456
    move-object/from16 v22, v4

    const/16 v23, 0x2

    move-wide/from16 v24, v20

    aput-wide v24, v22, v23

    .line 458
    move-object/from16 v22, v4

    move-object/from16 v2, v22

    .end local v2    # "this":Lcom/sun/javafx/sg/prism/CacheFilter;
    return-object v2

    .line 442
    .restart local v2    # "this":Lcom/sun/javafx/sg/prism/CacheFilter;
    :cond_0
    move-wide/from16 v22, v18

    const-wide/16 v24, 0x0

    cmpl-double v22, v22, v24

    if-lez v22, :cond_1

    .line 445
    const-wide v22, 0x401921fb54442d18L    # 6.283185307179586

    move-wide/from16 v24, v16

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->asin(D)D

    move-result-wide v24

    add-double v22, v22, v24

    move-wide/from16 v20, v22

    goto :goto_0

    .line 450
    :cond_1
    const-wide v22, 0x400921fb54442d18L    # Math.PI

    move-wide/from16 v24, v18

    move-wide/from16 v0, v24

    neg-double v0, v0

    move-wide/from16 v24, v0

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->acos(D)D

    move-result-wide v24

    add-double v22, v22, v24

    move-wide/from16 v20, v22

    goto :goto_0
.end method

.method unsupported([D)Z
    .locals 14

    .prologue
    .line 181
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/CacheFilter;
    move-object v1, p1

    .local v1, "xformInfo":[D
    move-object v8, v1

    const/4 v9, 0x0

    aget-wide v8, v8, v9

    move-wide v2, v8

    .line 182
    .local v2, "scaleX":D
    move-object v8, v1

    const/4 v9, 0x1

    aget-wide v8, v8, v9

    move-wide v4, v8

    .line 183
    .local v4, "scaleY":D
    move-object v8, v1

    const/4 v9, 0x2

    aget-wide v8, v8, v9

    move-wide v6, v8

    .line 186
    .local v6, "rotate":D
    move-wide v8, v6

    const-wide v10, 0x3e7ad7f29abcaf48L    # 1.0E-7

    cmpl-double v8, v8, v10

    if-gtz v8, :cond_0

    move-wide v8, v6

    const-wide v10, -0x4185280d654350b8L    # -1.0E-7

    cmpg-double v8, v8, v10

    if-gez v8, :cond_2

    .line 189
    :cond_0
    move-wide v8, v2

    move-wide v10, v4

    const-wide v12, 0x3e7ad7f29abcaf48L    # 1.0E-7

    add-double/2addr v10, v12

    cmpl-double v8, v8, v10

    if-gtz v8, :cond_1

    move-wide v8, v4

    move-wide v10, v2

    const-wide v12, 0x3e7ad7f29abcaf48L    # 1.0E-7

    add-double/2addr v10, v12

    cmpl-double v8, v8, v10

    if-gtz v8, :cond_1

    move-wide v8, v2

    move-wide v10, v4

    const-wide v12, 0x3e7ad7f29abcaf48L    # 1.0E-7

    sub-double/2addr v10, v12

    cmpg-double v8, v8, v10

    if-ltz v8, :cond_1

    move-wide v8, v4

    move-wide v10, v2

    const-wide v12, 0x3e7ad7f29abcaf48L    # 1.0E-7

    sub-double/2addr v10, v12

    cmpg-double v8, v8, v10

    if-ltz v8, :cond_1

    move-object v8, v0

    iget-wide v8, v8, Lcom/sun/javafx/sg/prism/CacheFilter;->cachedScaleX:D

    move-object v10, v0

    iget-wide v10, v10, Lcom/sun/javafx/sg/prism/CacheFilter;->cachedScaleY:D

    const-wide v12, 0x3e7ad7f29abcaf48L    # 1.0E-7

    add-double/2addr v10, v12

    cmpl-double v8, v8, v10

    if-gtz v8, :cond_1

    move-object v8, v0

    iget-wide v8, v8, Lcom/sun/javafx/sg/prism/CacheFilter;->cachedScaleY:D

    move-object v10, v0

    iget-wide v10, v10, Lcom/sun/javafx/sg/prism/CacheFilter;->cachedScaleX:D

    const-wide v12, 0x3e7ad7f29abcaf48L    # 1.0E-7

    add-double/2addr v10, v12

    cmpl-double v8, v8, v10

    if-gtz v8, :cond_1

    move-object v8, v0

    iget-wide v8, v8, Lcom/sun/javafx/sg/prism/CacheFilter;->cachedScaleX:D

    move-object v10, v0

    iget-wide v10, v10, Lcom/sun/javafx/sg/prism/CacheFilter;->cachedScaleY:D

    const-wide v12, 0x3e7ad7f29abcaf48L    # 1.0E-7

    sub-double/2addr v10, v12

    cmpg-double v8, v8, v10

    if-ltz v8, :cond_1

    move-object v8, v0

    iget-wide v8, v8, Lcom/sun/javafx/sg/prism/CacheFilter;->cachedScaleY:D

    move-object v10, v0

    iget-wide v10, v10, Lcom/sun/javafx/sg/prism/CacheFilter;->cachedScaleX:D

    const-wide v12, 0x3e7ad7f29abcaf48L    # 1.0E-7

    sub-double/2addr v10, v12

    cmpg-double v8, v8, v10

    if-gez v8, :cond_2

    .line 195
    :cond_1
    const/4 v8, 0x1

    move v0, v8

    .line 198
    .end local v0    # "this":Lcom/sun/javafx/sg/prism/CacheFilter;
    :goto_0
    return v0

    .restart local v0    # "this":Lcom/sun/javafx/sg/prism/CacheFilter;
    :cond_2
    const/4 v8, 0x0

    move v0, v8

    goto :goto_0
.end method

.method updateScreenXform([D)V
    .locals 15

    .prologue
    .line 294
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/CacheFilter;
    move-object/from16 v1, p1

    .local v1, "xformInfo":[D
    move-object v8, v0

    iget-boolean v8, v8, Lcom/sun/javafx/sg/prism/CacheFilter;->scaleHint:Z

    if-eqz v8, :cond_1

    .line 295
    move-object v8, v0

    iget-boolean v8, v8, Lcom/sun/javafx/sg/prism/CacheFilter;->rotateHint:Z

    if-eqz v8, :cond_0

    .line 296
    move-object v8, v1

    const/4 v9, 0x0

    aget-wide v8, v8, v9

    move-object v10, v0

    iget-wide v10, v10, Lcom/sun/javafx/sg/prism/CacheFilter;->cachedScaleX:D

    div-double/2addr v8, v10

    move-wide v2, v8

    .line 297
    .local v2, "screenScaleX":D
    move-object v8, v1

    const/4 v9, 0x1

    aget-wide v8, v8, v9

    move-object v10, v0

    iget-wide v10, v10, Lcom/sun/javafx/sg/prism/CacheFilter;->cachedScaleY:D

    div-double/2addr v8, v10

    move-wide v4, v8

    .line 298
    .local v4, "screenScaleY":D
    move-object v8, v1

    const/4 v9, 0x2

    aget-wide v8, v8, v9

    move-object v10, v0

    iget-wide v10, v10, Lcom/sun/javafx/sg/prism/CacheFilter;->cachedRotate:D

    sub-double/2addr v8, v10

    move-wide v6, v8

    .line 300
    .local v6, "screenRotate":D
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/sg/prism/CacheFilter;->screenXform:Lcom/sun/javafx/geom/transform/Affine2D;

    move-wide v9, v2

    move-wide v11, v4

    invoke-virtual {v8, v9, v10, v11, v12}, Lcom/sun/javafx/geom/transform/Affine2D;->setToScale(DD)V

    .line 301
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/sg/prism/CacheFilter;->screenXform:Lcom/sun/javafx/geom/transform/Affine2D;

    move-wide v9, v6

    invoke-virtual {v8, v9, v10}, Lcom/sun/javafx/geom/transform/Affine2D;->rotate(D)V

    .line 302
    .line 316
    .end local v2    # "screenScaleX":D
    .end local v4    # "screenScaleY":D
    .end local v6    # "screenRotate":D
    :goto_0
    return-void

    .line 303
    :cond_0
    move-object v8, v1

    const/4 v9, 0x0

    aget-wide v8, v8, v9

    move-object v10, v0

    iget-wide v10, v10, Lcom/sun/javafx/sg/prism/CacheFilter;->cachedScaleX:D

    div-double/2addr v8, v10

    move-wide v2, v8

    .line 304
    .restart local v2    # "screenScaleX":D
    move-object v8, v1

    const/4 v9, 0x1

    aget-wide v8, v8, v9

    move-object v10, v0

    iget-wide v10, v10, Lcom/sun/javafx/sg/prism/CacheFilter;->cachedScaleY:D

    div-double/2addr v8, v10

    move-wide v4, v8

    .line 305
    .restart local v4    # "screenScaleY":D
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/sg/prism/CacheFilter;->screenXform:Lcom/sun/javafx/geom/transform/Affine2D;

    move-wide v9, v2

    move-wide v11, v4

    invoke-virtual {v8, v9, v10, v11, v12}, Lcom/sun/javafx/geom/transform/Affine2D;->setToScale(DD)V

    .line 306
    goto :goto_0

    .line 308
    .end local v2    # "screenScaleX":D
    .end local v4    # "screenScaleY":D
    :cond_1
    move-object v8, v0

    iget-boolean v8, v8, Lcom/sun/javafx/sg/prism/CacheFilter;->rotateHint:Z

    if-eqz v8, :cond_2

    .line 309
    move-object v8, v1

    const/4 v9, 0x2

    aget-wide v8, v8, v9

    move-object v10, v0

    iget-wide v10, v10, Lcom/sun/javafx/sg/prism/CacheFilter;->cachedRotate:D

    sub-double/2addr v8, v10

    move-wide v2, v8

    .line 310
    .local v2, "screenRotate":D
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/sg/prism/CacheFilter;->screenXform:Lcom/sun/javafx/geom/transform/Affine2D;

    move-wide v9, v2

    const-wide/16 v11, 0x0

    const-wide/16 v13, 0x0

    invoke-virtual/range {v8 .. v14}, Lcom/sun/javafx/geom/transform/Affine2D;->setToRotation(DDD)V

    .line 311
    goto :goto_0

    .line 313
    .end local v2    # "screenRotate":D
    :cond_2
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/sg/prism/CacheFilter;->screenXform:Lcom/sun/javafx/geom/transform/Affine2D;

    sget-object v9, Lcom/sun/javafx/geom/transform/BaseTransform;->IDENTITY_TRANSFORM:Lcom/sun/javafx/geom/transform/BaseTransform;

    invoke-virtual {v8, v9}, Lcom/sun/javafx/geom/transform/Affine2D;->setTransform(Lcom/sun/javafx/geom/transform/BaseTransform;)V

    goto :goto_0
.end method

.method v2combine([D[D[DDD)V
    .locals 16

    .prologue
    .line 481
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/CacheFilter;
    move-object/from16 v1, p1

    .local v1, "v0":[D
    move-object/from16 v2, p2

    .local v2, "v1":[D
    move-object/from16 v3, p3

    .local v3, "result":[D
    move-wide/from16 v4, p4

    .local v4, "scalarA":D
    move-wide/from16 v6, p6

    .local v6, "scalarB":D
    move-object v8, v3

    const/4 v9, 0x0

    move-wide v10, v4

    move-object v12, v1

    const/4 v13, 0x0

    aget-wide v12, v12, v13

    mul-double/2addr v10, v12

    move-wide v12, v6

    move-object v14, v2

    const/4 v15, 0x0

    aget-wide v14, v14, v15

    mul-double/2addr v12, v14

    add-double/2addr v10, v12

    aput-wide v10, v8, v9

    .line 482
    move-object v8, v3

    const/4 v9, 0x1

    move-wide v10, v4

    move-object v12, v1

    const/4 v13, 0x1

    aget-wide v12, v12, v13

    mul-double/2addr v10, v12

    move-wide v12, v6

    move-object v14, v2

    const/4 v15, 0x1

    aget-wide v14, v14, v15

    mul-double/2addr v12, v14

    add-double/2addr v10, v12

    aput-wide v10, v8, v9

    .line 483
    return-void
.end method

.method v2dot([D[D)D
    .locals 10

    .prologue
    .line 489
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/sg/prism/CacheFilter;
    move-object v2, p1

    .local v2, "v0":[D
    move-object v3, p2

    .local v3, "v1":[D
    move-object v4, v2

    const/4 v5, 0x0

    aget-wide v4, v4, v5

    move-object v6, v3

    const/4 v7, 0x0

    aget-wide v6, v6, v7

    mul-double/2addr v4, v6

    move-object v6, v2

    const/4 v7, 0x1

    aget-wide v6, v6, v7

    move-object v8, v3

    const/4 v9, 0x1

    aget-wide v8, v8, v9

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    move-wide v1, v4

    .end local v1    # "this":Lcom/sun/javafx/sg/prism/CacheFilter;
    return-wide v1
.end method

.method v2length([D)D
    .locals 8

    .prologue
    .line 511
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/CacheFilter;
    move-object v1, p1

    .local v1, "v":[D
    move-object v2, v1

    const/4 v3, 0x0

    aget-wide v2, v2, v3

    move-object v4, v1

    const/4 v5, 0x0

    aget-wide v4, v4, v5

    mul-double/2addr v2, v4

    move-object v4, v1

    const/4 v5, 0x1

    aget-wide v4, v4, v5

    move-object v6, v1

    const/4 v7, 0x1

    aget-wide v6, v6, v7

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    move-wide v0, v2

    .end local v0    # "this":Lcom/sun/javafx/sg/prism/CacheFilter;
    return-wide v0
.end method

.method v2scale([DD)V
    .locals 16

    .prologue
    .line 498
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/CacheFilter;
    move-object/from16 v1, p1

    .local v1, "v":[D
    move-wide/from16 v2, p2

    .local v2, "newLen":D
    move-object v6, v0

    move-object v7, v1

    invoke-virtual {v6, v7}, Lcom/sun/javafx/sg/prism/CacheFilter;->v2length([D)D

    move-result-wide v6

    move-wide v4, v6

    .line 499
    .local v4, "len":D
    move-wide v6, v4

    const-wide/16 v8, 0x0

    cmpl-double v6, v6, v8

    if-eqz v6, :cond_0

    .line 500
    move-object v6, v1

    const/4 v7, 0x0

    move-object v14, v6

    move v15, v7

    move-object v6, v14

    move v7, v15

    move-object v8, v14

    move v9, v15

    aget-wide v8, v8, v9

    move-wide v10, v2

    move-wide v12, v4

    div-double/2addr v10, v12

    mul-double/2addr v8, v10

    aput-wide v8, v6, v7

    .line 501
    move-object v6, v1

    const/4 v7, 0x1

    move-object v14, v6

    move v15, v7

    move-object v6, v14

    move v7, v15

    move-object v8, v14

    move v9, v15

    aget-wide v8, v8, v9

    move-wide v10, v2

    move-wide v12, v4

    div-double/2addr v10, v12

    mul-double/2addr v8, v10

    aput-wide v8, v6, v7

    .line 503
    :cond_0
    return-void
.end method
