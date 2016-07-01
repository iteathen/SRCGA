.class Lcom/sun/javafx/sg/prism/NGNode$PassThrough;
.super Lcom/sun/scenario/effect/Effect;
.source "NGNode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/sg/prism/NGNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PassThrough"
.end annotation


# instance fields
.field private bounds:Lcom/sun/javafx/geom/Rectangle;

.field private img:Lcom/sun/scenario/effect/impl/prism/PrDrawable;


# direct methods
.method constructor <init>(Lcom/sun/scenario/effect/impl/prism/PrDrawable;Lcom/sun/javafx/geom/Rectangle;)V
    .locals 5

    .prologue
    .line 2412
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGNode$PassThrough;
    move-object v1, p1

    .local v1, "img":Lcom/sun/scenario/effect/impl/prism/PrDrawable;
    move-object v2, p2

    .local v2, "bounds":Lcom/sun/javafx/geom/Rectangle;
    move-object v3, v0

    invoke-direct {v3}, Lcom/sun/scenario/effect/Effect;-><init>()V

    .line 2413
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/sun/javafx/sg/prism/NGNode$PassThrough;->img:Lcom/sun/scenario/effect/impl/prism/PrDrawable;

    .line 2414
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/sun/javafx/sg/prism/NGNode$PassThrough;->bounds:Lcom/sun/javafx/geom/Rectangle;

    .line 2415
    return-void
.end method


# virtual methods
.method public filter(Lcom/sun/scenario/effect/FilterContext;Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/javafx/geom/Rectangle;Ljava/lang/Object;Lcom/sun/scenario/effect/Effect;)Lcom/sun/scenario/effect/ImageData;
    .locals 15

    .prologue
    .line 2424
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGNode$PassThrough;
    move-object/from16 v1, p1

    .local v1, "fctx":Lcom/sun/scenario/effect/FilterContext;
    move-object/from16 v2, p2

    .local v2, "transform":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object/from16 v3, p3

    .local v3, "outputClip":Lcom/sun/javafx/geom/Rectangle;
    move-object/from16 v4, p4

    .local v4, "renderHelper":Ljava/lang/Object;
    move-object/from16 v5, p5

    .local v5, "defaultInput":Lcom/sun/scenario/effect/Effect;
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/sg/prism/NGNode$PassThrough;->img:Lcom/sun/scenario/effect/impl/prism/PrDrawable;

    invoke-virtual {v7}, Lcom/sun/scenario/effect/impl/prism/PrDrawable;->lock()V

    .line 2425
    new-instance v7, Lcom/sun/scenario/effect/ImageData;

    move-object v14, v7

    move-object v7, v14

    move-object v8, v14

    move-object v9, v1

    move-object v10, v0

    iget-object v10, v10, Lcom/sun/javafx/sg/prism/NGNode$PassThrough;->img:Lcom/sun/scenario/effect/impl/prism/PrDrawable;

    new-instance v11, Lcom/sun/javafx/geom/Rectangle;

    move-object v14, v11

    move-object v11, v14

    move-object v12, v14

    move-object v13, v0

    iget-object v13, v13, Lcom/sun/javafx/sg/prism/NGNode$PassThrough;->bounds:Lcom/sun/javafx/geom/Rectangle;

    invoke-direct {v12, v13}, Lcom/sun/javafx/geom/Rectangle;-><init>(Lcom/sun/javafx/geom/Rectangle;)V

    invoke-direct {v8, v9, v10, v11}, Lcom/sun/scenario/effect/ImageData;-><init>(Lcom/sun/scenario/effect/FilterContext;Lcom/sun/scenario/effect/Filterable;Lcom/sun/javafx/geom/Rectangle;)V

    move-object v6, v7

    .line 2426
    .local v6, "id":Lcom/sun/scenario/effect/ImageData;
    move-object v7, v6

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/sun/scenario/effect/ImageData;->setReusable(Z)V

    .line 2427
    move-object v7, v6

    move-object v0, v7

    .end local v0    # "this":Lcom/sun/javafx/sg/prism/NGNode$PassThrough;
    return-object v0
.end method

.method public getAccelType(Lcom/sun/scenario/effect/FilterContext;)Lcom/sun/scenario/effect/Effect$AccelType;
    .locals 3

    .prologue
    .line 2439
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGNode$PassThrough;
    move-object v1, p1

    .local v1, "fctx":Lcom/sun/scenario/effect/FilterContext;
    sget-object v2, Lcom/sun/scenario/effect/Effect$AccelType;->INTRINSIC:Lcom/sun/scenario/effect/Effect$AccelType;

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/sg/prism/NGNode$PassThrough;
    return-object v0
.end method

.method public bridge synthetic getBounds(Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/scenario/effect/Effect;)Lcom/sun/javafx/geom/BaseBounds;
    .locals 6

    .prologue
    .line 2408
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGNode$PassThrough;
    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/sg/prism/NGNode$PassThrough;->getBounds(Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/scenario/effect/Effect;)Lcom/sun/javafx/geom/RectBounds;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lcom/sun/javafx/sg/prism/NGNode$PassThrough;
    return-object v0
.end method

.method public getBounds(Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/scenario/effect/Effect;)Lcom/sun/javafx/geom/RectBounds;
    .locals 7

    .prologue
    .line 2434
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGNode$PassThrough;
    move-object v1, p1

    .local v1, "transform":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object v2, p2

    .local v2, "defaultInput":Lcom/sun/scenario/effect/Effect;
    new-instance v3, Lcom/sun/javafx/geom/RectBounds;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/sg/prism/NGNode$PassThrough;->bounds:Lcom/sun/javafx/geom/Rectangle;

    invoke-direct {v4, v5}, Lcom/sun/javafx/geom/RectBounds;-><init>(Lcom/sun/javafx/geom/Rectangle;)V

    move-object v0, v3

    .end local v0    # "this":Lcom/sun/javafx/sg/prism/NGNode$PassThrough;
    return-object v0
.end method

.method public getDirtyRegions(Lcom/sun/scenario/effect/Effect;Lcom/sun/javafx/geom/DirtyRegionPool;)Lcom/sun/javafx/geom/DirtyRegionContainer;
    .locals 4

    .prologue
    .line 2449
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGNode$PassThrough;
    move-object v1, p1

    .local v1, "defaultInput":Lcom/sun/scenario/effect/Effect;
    move-object v2, p2

    .local v2, "regionPool":Lcom/sun/javafx/geom/DirtyRegionPool;
    const/4 v3, 0x0

    move-object v0, v3

    .end local v0    # "this":Lcom/sun/javafx/sg/prism/NGNode$PassThrough;
    return-object v0
.end method

.method public reducesOpaquePixels()Z
    .locals 2

    .prologue
    .line 2444
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGNode$PassThrough;
    const/4 v1, 0x0

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/sg/prism/NGNode$PassThrough;
    return v0
.end method
