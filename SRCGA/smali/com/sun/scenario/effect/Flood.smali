.class public Lcom/sun/scenario/effect/Flood;
.super Lcom/sun/scenario/effect/CoreEffect;
.source "Flood.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sun/scenario/effect/CoreEffect",
        "<",
        "Lcom/sun/scenario/effect/impl/state/RenderState;",
        ">;"
    }
.end annotation


# instance fields
.field private bounds:Lcom/sun/javafx/geom/RectBounds;

.field private paint:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 6

    .prologue
    .line 55
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/Flood;
    move-object v1, p1

    .local v1, "paint":Ljava/lang/Object;
    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/scenario/effect/CoreEffect;-><init>()V

    .line 46
    move-object v2, v0

    new-instance v3, Lcom/sun/javafx/geom/RectBounds;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Lcom/sun/javafx/geom/RectBounds;-><init>()V

    iput-object v3, v2, Lcom/sun/scenario/effect/Flood;->bounds:Lcom/sun/javafx/geom/RectBounds;

    .line 56
    move-object v2, v1

    if-nez v2, :cond_0

    .line 57
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "Paint must be non-null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 59
    :cond_0
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/scenario/effect/Flood;->paint:Ljava/lang/Object;

    .line 60
    move-object v2, v0

    const-string v3, "Flood"

    invoke-virtual {v2, v3}, Lcom/sun/scenario/effect/Flood;->updatePeerKey(Ljava/lang/String;)V

    .line 61
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lcom/sun/javafx/geom/RectBounds;)V
    .locals 7

    .prologue
    .line 73
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/Flood;
    move-object v1, p1

    .local v1, "paint":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "bounds":Lcom/sun/javafx/geom/RectBounds;
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Lcom/sun/scenario/effect/Flood;-><init>(Ljava/lang/Object;)V

    .line 74
    move-object v3, v2

    if-nez v3, :cond_0

    .line 75
    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string v5, "Bounds must be non-null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 77
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/scenario/effect/Flood;->bounds:Lcom/sun/javafx/geom/RectBounds;

    move-object v4, v2

    invoke-virtual {v3, v4}, Lcom/sun/javafx/geom/RectBounds;->setBounds(Lcom/sun/javafx/geom/RectBounds;)V

    .line 78
    return-void
.end method


# virtual methods
.method public bridge synthetic filterImageDatas(Lcom/sun/scenario/effect/FilterContext;Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/javafx/geom/Rectangle;Lcom/sun/scenario/effect/impl/state/RenderState;[Lcom/sun/scenario/effect/ImageData;)Lcom/sun/scenario/effect/ImageData;
    .locals 12

    .prologue
    .line 43
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/Flood;
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    move-object v9, v3

    move-object v10, v4

    move-object v11, v5

    invoke-super/range {v6 .. v11}, Lcom/sun/scenario/effect/CoreEffect;->filterImageDatas(Lcom/sun/scenario/effect/FilterContext;Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/javafx/geom/Rectangle;Lcom/sun/scenario/effect/impl/state/RenderState;[Lcom/sun/scenario/effect/ImageData;)Lcom/sun/scenario/effect/ImageData;

    move-result-object v6

    move-object v0, v6

    .end local v0    # "this":Lcom/sun/scenario/effect/Flood;
    return-object v0
.end method

.method public bridge synthetic getAccelType(Lcom/sun/scenario/effect/FilterContext;)Lcom/sun/scenario/effect/Effect$AccelType;
    .locals 4

    .prologue
    .line 43
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/Flood;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Lcom/sun/scenario/effect/CoreEffect;->getAccelType(Lcom/sun/scenario/effect/FilterContext;)Lcom/sun/scenario/effect/Effect$AccelType;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/scenario/effect/Flood;
    return-object v0
.end method

.method public getBounds(Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/scenario/effect/Effect;)Lcom/sun/javafx/geom/BaseBounds;
    .locals 5

    .prologue
    .line 119
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/Flood;
    move-object v1, p1

    .local v1, "transform":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object v2, p2

    .local v2, "defaultInput":Lcom/sun/scenario/effect/Effect;
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/scenario/effect/Flood;->bounds:Lcom/sun/javafx/geom/RectBounds;

    invoke-static {v3, v4}, Lcom/sun/scenario/effect/Flood;->transformBounds(Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/javafx/geom/BaseBounds;)Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lcom/sun/scenario/effect/Flood;
    return-object v0
.end method

.method public getDirtyRegions(Lcom/sun/scenario/effect/Effect;Lcom/sun/javafx/geom/DirtyRegionPool;)Lcom/sun/javafx/geom/DirtyRegionContainer;
    .locals 5

    .prologue
    .line 187
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/Flood;
    move-object v1, p1

    .local v1, "defaultInput":Lcom/sun/scenario/effect/Effect;
    move-object v2, p2

    .local v2, "regionPool":Lcom/sun/javafx/geom/DirtyRegionPool;
    move-object v4, v2

    invoke-virtual {v4}, Lcom/sun/javafx/geom/DirtyRegionPool;->checkOut()Lcom/sun/javafx/geom/DirtyRegionContainer;

    move-result-object v4

    move-object v3, v4

    .line 188
    .local v3, "drc":Lcom/sun/javafx/geom/DirtyRegionContainer;
    move-object v4, v3

    invoke-virtual {v4}, Lcom/sun/javafx/geom/DirtyRegionContainer;->reset()V

    .line 189
    move-object v4, v3

    move-object v0, v4

    .end local v0    # "this":Lcom/sun/scenario/effect/Flood;
    return-object v0
.end method

.method public getFloodBounds()Lcom/sun/javafx/geom/RectBounds;
    .locals 5

    .prologue
    .line 104
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/Flood;
    new-instance v1, Lcom/sun/javafx/geom/RectBounds;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/scenario/effect/Flood;->bounds:Lcom/sun/javafx/geom/RectBounds;

    invoke-direct {v2, v3}, Lcom/sun/javafx/geom/RectBounds;-><init>(Lcom/sun/javafx/geom/RectBounds;)V

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/Flood;
    return-object v0
.end method

.method public getPaint()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 86
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/Flood;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/scenario/effect/Flood;->paint:Ljava/lang/Object;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/Flood;
    return-object v0
.end method

.method public getRenderState(Lcom/sun/scenario/effect/FilterContext;Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/javafx/geom/Rectangle;Ljava/lang/Object;Lcom/sun/scenario/effect/Effect;)Lcom/sun/scenario/effect/impl/state/RenderState;
    .locals 7

    .prologue
    .line 177
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/Flood;
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
    sget-object v6, Lcom/sun/scenario/effect/impl/state/RenderState;->RenderSpaceRenderState:Lcom/sun/scenario/effect/impl/state/RenderState;

    move-object v0, v6

    .end local v0    # "this":Lcom/sun/scenario/effect/Flood;
    return-object v0
.end method

.method public reducesOpaquePixels()Z
    .locals 2

    .prologue
    .line 182
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/Flood;
    const/4 v1, 0x1

    move v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/Flood;
    return v0
.end method

.method public setFloodBounds(Lcom/sun/javafx/geom/RectBounds;)V
    .locals 7

    .prologue
    .line 108
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/Flood;
    move-object v1, p1

    .local v1, "bounds":Lcom/sun/javafx/geom/RectBounds;
    move-object v3, v1

    if-nez v3, :cond_0

    .line 109
    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string v5, "Bounds must be non-null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 111
    :cond_0
    new-instance v3, Lcom/sun/javafx/geom/RectBounds;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/scenario/effect/Flood;->bounds:Lcom/sun/javafx/geom/RectBounds;

    invoke-direct {v4, v5}, Lcom/sun/javafx/geom/RectBounds;-><init>(Lcom/sun/javafx/geom/RectBounds;)V

    move-object v2, v3

    .line 112
    .local v2, "old":Lcom/sun/javafx/geom/RectBounds;
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/scenario/effect/Flood;->bounds:Lcom/sun/javafx/geom/RectBounds;

    move-object v4, v1

    invoke-virtual {v3, v4}, Lcom/sun/javafx/geom/RectBounds;->setBounds(Lcom/sun/javafx/geom/RectBounds;)V

    .line 113
    return-void
.end method

.method public setPaint(Ljava/lang/Object;)V
    .locals 7

    .prologue
    .line 96
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/Flood;
    move-object v1, p1

    .local v1, "paint":Ljava/lang/Object;
    move-object v3, v1

    if-nez v3, :cond_0

    .line 97
    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string v5, "Paint must be non-null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 99
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/scenario/effect/Flood;->paint:Ljava/lang/Object;

    move-object v2, v3

    .line 100
    .local v2, "old":Ljava/lang/Object;
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/sun/scenario/effect/Flood;->paint:Ljava/lang/Object;

    .line 101
    return-void
.end method

.method public transform(Lcom/sun/javafx/geom/Point2D;Lcom/sun/scenario/effect/Effect;)Lcom/sun/javafx/geom/Point2D;
    .locals 8

    .prologue
    .line 142
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/Flood;
    move-object v1, p1

    .local v1, "p":Lcom/sun/javafx/geom/Point2D;
    move-object v2, p2

    .local v2, "defaultInput":Lcom/sun/scenario/effect/Effect;
    new-instance v3, Lcom/sun/javafx/geom/Point2D;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/high16 v5, 0x7fc00000    # NaNf

    const/high16 v6, 0x7fc00000    # NaNf

    invoke-direct {v4, v5, v6}, Lcom/sun/javafx/geom/Point2D;-><init>(FF)V

    move-object v0, v3

    .end local v0    # "this":Lcom/sun/scenario/effect/Flood;
    return-object v0
.end method

.method public untransform(Lcom/sun/javafx/geom/Point2D;Lcom/sun/scenario/effect/Effect;)Lcom/sun/javafx/geom/Point2D;
    .locals 8

    .prologue
    .line 164
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/Flood;
    move-object v1, p1

    .local v1, "p":Lcom/sun/javafx/geom/Point2D;
    move-object v2, p2

    .local v2, "defaultInput":Lcom/sun/scenario/effect/Effect;
    new-instance v3, Lcom/sun/javafx/geom/Point2D;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/high16 v5, 0x7fc00000    # NaNf

    const/high16 v6, 0x7fc00000    # NaNf

    invoke-direct {v4, v5, v6}, Lcom/sun/javafx/geom/Point2D;-><init>(FF)V

    move-object v0, v3

    .end local v0    # "this":Lcom/sun/scenario/effect/Flood;
    return-object v0
.end method
