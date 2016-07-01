.class Lcom/sun/javafx/sg/prism/NGNode$EffectDirtyBoundsHelper;
.super Lcom/sun/scenario/effect/Effect;
.source "NGNode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/sg/prism/NGNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EffectDirtyBoundsHelper"
.end annotation


# static fields
.field private static instance:Lcom/sun/javafx/sg/prism/NGNode$EffectDirtyBoundsHelper;


# instance fields
.field private bounds:Lcom/sun/javafx/geom/BaseBounds;

.field private drc:Lcom/sun/javafx/geom/DirtyRegionContainer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 2496
    const/4 v0, 0x0

    sput-object v0, Lcom/sun/javafx/sg/prism/NGNode$EffectDirtyBoundsHelper;->instance:Lcom/sun/javafx/sg/prism/NGNode$EffectDirtyBoundsHelper;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 2494
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGNode$EffectDirtyBoundsHelper;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/scenario/effect/Effect;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/sun/javafx/sg/prism/NGNode$EffectDirtyBoundsHelper;Lcom/sun/javafx/geom/DirtyRegionContainer;)V
    .locals 4

    .prologue
    .line 2494
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/sg/prism/NGNode$EffectDirtyBoundsHelper;
    move-object v1, p1

    .local v1, "x1":Lcom/sun/javafx/geom/DirtyRegionContainer;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/sg/prism/NGNode$EffectDirtyBoundsHelper;->setDirtyRegions(Lcom/sun/javafx/geom/DirtyRegionContainer;)V

    return-void
.end method

.method public static getInstance()Lcom/sun/javafx/sg/prism/NGNode$EffectDirtyBoundsHelper;
    .locals 3

    .prologue
    .line 2528
    sget-object v0, Lcom/sun/javafx/sg/prism/NGNode$EffectDirtyBoundsHelper;->instance:Lcom/sun/javafx/sg/prism/NGNode$EffectDirtyBoundsHelper;

    if-nez v0, :cond_0

    .line 2529
    new-instance v0, Lcom/sun/javafx/sg/prism/NGNode$EffectDirtyBoundsHelper;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Lcom/sun/javafx/sg/prism/NGNode$EffectDirtyBoundsHelper;-><init>()V

    sput-object v0, Lcom/sun/javafx/sg/prism/NGNode$EffectDirtyBoundsHelper;->instance:Lcom/sun/javafx/sg/prism/NGNode$EffectDirtyBoundsHelper;

    .line 2531
    :cond_0
    sget-object v0, Lcom/sun/javafx/sg/prism/NGNode$EffectDirtyBoundsHelper;->instance:Lcom/sun/javafx/sg/prism/NGNode$EffectDirtyBoundsHelper;

    return-object v0
.end method

.method private setDirtyRegions(Lcom/sun/javafx/geom/DirtyRegionContainer;)V
    .locals 4

    .prologue
    .line 2540
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGNode$EffectDirtyBoundsHelper;
    move-object v1, p1

    .local v1, "drc":Lcom/sun/javafx/geom/DirtyRegionContainer;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/sg/prism/NGNode$EffectDirtyBoundsHelper;->drc:Lcom/sun/javafx/geom/DirtyRegionContainer;

    .line 2541
    return-void
.end method


# virtual methods
.method public filter(Lcom/sun/scenario/effect/FilterContext;Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/javafx/geom/Rectangle;Ljava/lang/Object;Lcom/sun/scenario/effect/Effect;)Lcom/sun/scenario/effect/ImageData;
    .locals 9

    .prologue
    .line 2509
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGNode$EffectDirtyBoundsHelper;
    move-object v1, p1

    .local v1, "fctx":Lcom/sun/scenario/effect/FilterContext;
    move-object v2, p2

    .local v2, "transform":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object v3, p3

    .local v3, "outputClip":Lcom/sun/javafx/geom/Rectangle;
    move-object v4, p4

    .local v4, "renderHelper":Ljava/lang/Object;
    move-object v5, p5

    .local v5, "defaultInput":Lcom/sun/scenario/effect/Effect;
    new-instance v6, Ljava/lang/UnsupportedOperationException;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v6
.end method

.method public getAccelType(Lcom/sun/scenario/effect/FilterContext;)Lcom/sun/scenario/effect/Effect$AccelType;
    .locals 3

    .prologue
    .line 2524
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGNode$EffectDirtyBoundsHelper;
    move-object v1, p1

    .local v1, "fctx":Lcom/sun/scenario/effect/FilterContext;
    const/4 v2, 0x0

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/sg/prism/NGNode$EffectDirtyBoundsHelper;
    return-object v0
.end method

.method public getBounds(Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/scenario/effect/Effect;)Lcom/sun/javafx/geom/BaseBounds;
    .locals 10

    .prologue
    .line 2514
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGNode$EffectDirtyBoundsHelper;
    move-object v1, p1

    .local v1, "transform":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object v2, p2

    .local v2, "defaultInput":Lcom/sun/scenario/effect/Effect;
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/sg/prism/NGNode$EffectDirtyBoundsHelper;->bounds:Lcom/sun/javafx/geom/BaseBounds;

    invoke-virtual {v3}, Lcom/sun/javafx/geom/BaseBounds;->getBoundsType()Lcom/sun/javafx/geom/BaseBounds$BoundsType;

    move-result-object v3

    sget-object v4, Lcom/sun/javafx/geom/BaseBounds$BoundsType;->RECTANGLE:Lcom/sun/javafx/geom/BaseBounds$BoundsType;

    if-ne v3, v4, :cond_0

    .line 2515
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/sg/prism/NGNode$EffectDirtyBoundsHelper;->bounds:Lcom/sun/javafx/geom/BaseBounds;

    move-object v0, v3

    .line 2518
    .end local v0    # "this":Lcom/sun/javafx/sg/prism/NGNode$EffectDirtyBoundsHelper;
    :goto_0
    return-object v0

    .restart local v0    # "this":Lcom/sun/javafx/sg/prism/NGNode$EffectDirtyBoundsHelper;
    :cond_0
    new-instance v3, Lcom/sun/javafx/geom/RectBounds;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/sg/prism/NGNode$EffectDirtyBoundsHelper;->bounds:Lcom/sun/javafx/geom/BaseBounds;

    invoke-virtual {v5}, Lcom/sun/javafx/geom/BaseBounds;->getMinX()F

    move-result v5

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/sg/prism/NGNode$EffectDirtyBoundsHelper;->bounds:Lcom/sun/javafx/geom/BaseBounds;

    invoke-virtual {v6}, Lcom/sun/javafx/geom/BaseBounds;->getMinY()F

    move-result v6

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/sg/prism/NGNode$EffectDirtyBoundsHelper;->bounds:Lcom/sun/javafx/geom/BaseBounds;

    invoke-virtual {v7}, Lcom/sun/javafx/geom/BaseBounds;->getMaxX()F

    move-result v7

    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/sg/prism/NGNode$EffectDirtyBoundsHelper;->bounds:Lcom/sun/javafx/geom/BaseBounds;

    invoke-virtual {v8}, Lcom/sun/javafx/geom/BaseBounds;->getMaxY()F

    move-result v8

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/sun/javafx/geom/RectBounds;-><init>(FFFF)V

    move-object v0, v3

    goto :goto_0
.end method

.method public getDirtyRegions(Lcom/sun/scenario/effect/Effect;Lcom/sun/javafx/geom/DirtyRegionPool;)Lcom/sun/javafx/geom/DirtyRegionContainer;
    .locals 6

    .prologue
    .line 2545
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGNode$EffectDirtyBoundsHelper;
    move-object v1, p1

    .local v1, "defaultInput":Lcom/sun/scenario/effect/Effect;
    move-object v2, p2

    .local v2, "regionPool":Lcom/sun/javafx/geom/DirtyRegionPool;
    move-object v4, v2

    invoke-virtual {v4}, Lcom/sun/javafx/geom/DirtyRegionPool;->checkOut()Lcom/sun/javafx/geom/DirtyRegionContainer;

    move-result-object v4

    move-object v3, v4

    .line 2546
    .local v3, "ret":Lcom/sun/javafx/geom/DirtyRegionContainer;
    move-object v4, v3

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/sg/prism/NGNode$EffectDirtyBoundsHelper;->drc:Lcom/sun/javafx/geom/DirtyRegionContainer;

    invoke-virtual {v4, v5}, Lcom/sun/javafx/geom/DirtyRegionContainer;->deriveWithNewContainer(Lcom/sun/javafx/geom/DirtyRegionContainer;)Lcom/sun/javafx/geom/DirtyRegionContainer;

    move-result-object v4

    .line 2548
    move-object v4, v3

    move-object v0, v4

    .end local v0    # "this":Lcom/sun/javafx/sg/prism/NGNode$EffectDirtyBoundsHelper;
    return-object v0
.end method

.method public reducesOpaquePixels()Z
    .locals 2

    .prologue
    .line 2536
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGNode$EffectDirtyBoundsHelper;
    const/4 v1, 0x1

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/sg/prism/NGNode$EffectDirtyBoundsHelper;
    return v0
.end method

.method public setInputBounds(Lcom/sun/javafx/geom/BaseBounds;)V
    .locals 4

    .prologue
    .line 2500
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGNode$EffectDirtyBoundsHelper;
    move-object v1, p1

    .local v1, "inputBounds":Lcom/sun/javafx/geom/BaseBounds;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/sg/prism/NGNode$EffectDirtyBoundsHelper;->bounds:Lcom/sun/javafx/geom/BaseBounds;

    .line 2501
    return-void
.end method
