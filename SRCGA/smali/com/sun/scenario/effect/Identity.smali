.class public Lcom/sun/scenario/effect/Identity;
.super Lcom/sun/scenario/effect/Effect;
.source "Identity.java"


# instance fields
.field private final datacache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/sun/scenario/effect/FilterContext;",
            "Lcom/sun/scenario/effect/ImageData;",
            ">;"
        }
    .end annotation
.end field

.field private loc:Lcom/sun/javafx/geom/Point2D;

.field private src:Lcom/sun/scenario/effect/Filterable;


# direct methods
.method public constructor <init>(Lcom/sun/scenario/effect/Filterable;)V
    .locals 6

    .prologue
    .line 58
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/Identity;
    move-object v1, p1

    .local v1, "src":Lcom/sun/scenario/effect/Filterable;
    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/scenario/effect/Effect;-><init>()V

    .line 48
    move-object v2, v0

    new-instance v3, Lcom/sun/javafx/geom/Point2D;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Lcom/sun/javafx/geom/Point2D;-><init>()V

    iput-object v3, v2, Lcom/sun/scenario/effect/Identity;->loc:Lcom/sun/javafx/geom/Point2D;

    .line 49
    move-object v2, v0

    new-instance v3, Ljava/util/HashMap;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v3, v2, Lcom/sun/scenario/effect/Identity;->datacache:Ljava/util/Map;

    .line 59
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/scenario/effect/Identity;->src:Lcom/sun/scenario/effect/Filterable;

    .line 60
    return-void
.end method

.method private clearCache()V
    .locals 2

    .prologue
    .line 170
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/Identity;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/scenario/effect/Identity;->datacache:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 171
    return-void
.end method


# virtual methods
.method public filter(Lcom/sun/scenario/effect/FilterContext;Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/javafx/geom/Rectangle;Ljava/lang/Object;Lcom/sun/scenario/effect/Effect;)Lcom/sun/scenario/effect/ImageData;
    .locals 18

    .prologue
    .line 134
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/Identity;
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
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/scenario/effect/Identity;->datacache:Ljava/util/Map;

    move-object v10, v1

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sun/scenario/effect/ImageData;

    move-object v6, v9

    .line 135
    .local v6, "id":Lcom/sun/scenario/effect/ImageData;
    move-object v9, v6

    if-eqz v9, :cond_0

    move-object v9, v6

    invoke-virtual {v9}, Lcom/sun/scenario/effect/ImageData;->addref()Z

    move-result v9

    if-nez v9, :cond_0

    .line 136
    move-object v9, v6

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/sun/scenario/effect/ImageData;->setReusable(Z)V

    .line 137
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/scenario/effect/Identity;->datacache:Ljava/util/Map;

    move-object v10, v1

    invoke-interface {v9, v10}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .line 138
    move-object v9, v6

    invoke-virtual {v9}, Lcom/sun/scenario/effect/ImageData;->unref()V

    .line 139
    const/4 v9, 0x0

    move-object v6, v9

    .line 141
    :cond_0
    move-object v9, v6

    if-nez v9, :cond_3

    .line 142
    move-object v9, v1

    invoke-static {v9}, Lcom/sun/scenario/effect/impl/Renderer;->getRenderer(Lcom/sun/scenario/effect/FilterContext;)Lcom/sun/scenario/effect/impl/Renderer;

    move-result-object v9

    move-object v7, v9

    .line 143
    .local v7, "r":Lcom/sun/scenario/effect/impl/Renderer;
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/scenario/effect/Identity;->src:Lcom/sun/scenario/effect/Filterable;

    move-object v8, v9

    .line 144
    .local v8, "f":Lcom/sun/scenario/effect/Filterable;
    move-object v9, v8

    if-nez v9, :cond_1

    .line 145
    move-object v9, v1

    const/4 v10, 0x1

    const/4 v11, 0x1

    invoke-static {v9, v10, v11}, Lcom/sun/scenario/effect/Identity;->getCompatibleImage(Lcom/sun/scenario/effect/FilterContext;II)Lcom/sun/scenario/effect/Filterable;

    move-result-object v9

    move-object v8, v9

    .line 146
    new-instance v9, Lcom/sun/scenario/effect/ImageData;

    move-object/from16 v17, v9

    move-object/from16 v9, v17

    move-object/from16 v10, v17

    move-object v11, v1

    move-object v12, v8

    new-instance v13, Lcom/sun/javafx/geom/Rectangle;

    move-object/from16 v17, v13

    move-object/from16 v13, v17

    move-object/from16 v14, v17

    const/4 v15, 0x1

    const/16 v16, 0x1

    invoke-direct/range {v14 .. v16}, Lcom/sun/javafx/geom/Rectangle;-><init>(II)V

    invoke-direct {v10, v11, v12, v13}, Lcom/sun/scenario/effect/ImageData;-><init>(Lcom/sun/scenario/effect/FilterContext;Lcom/sun/scenario/effect/Filterable;Lcom/sun/javafx/geom/Rectangle;)V

    move-object v6, v9

    .line 150
    :goto_0
    move-object v9, v6

    if-nez v9, :cond_2

    .line 151
    new-instance v9, Lcom/sun/scenario/effect/ImageData;

    move-object/from16 v17, v9

    move-object/from16 v9, v17

    move-object/from16 v10, v17

    move-object v11, v1

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-direct {v10, v11, v12, v13}, Lcom/sun/scenario/effect/ImageData;-><init>(Lcom/sun/scenario/effect/FilterContext;Lcom/sun/scenario/effect/Filterable;Lcom/sun/javafx/geom/Rectangle;)V

    move-object v0, v9

    .line 159
    .end local v0    # "this":Lcom/sun/scenario/effect/Identity;
    .end local v7    # "r":Lcom/sun/scenario/effect/impl/Renderer;
    .end local v8    # "f":Lcom/sun/scenario/effect/Filterable;
    :goto_1
    return-object v0

    .line 148
    .restart local v0    # "this":Lcom/sun/scenario/effect/Identity;
    .restart local v7    # "r":Lcom/sun/scenario/effect/impl/Renderer;
    .restart local v8    # "f":Lcom/sun/scenario/effect/Filterable;
    :cond_1
    move-object v9, v7

    move-object v10, v1

    move-object v11, v8

    invoke-virtual {v9, v10, v11}, Lcom/sun/scenario/effect/impl/Renderer;->createImageData(Lcom/sun/scenario/effect/FilterContext;Lcom/sun/scenario/effect/Filterable;)Lcom/sun/scenario/effect/ImageData;

    move-result-object v9

    move-object v6, v9

    goto :goto_0

    .line 153
    :cond_2
    move-object v9, v6

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/sun/scenario/effect/ImageData;->setReusable(Z)V

    .line 154
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/scenario/effect/Identity;->datacache:Ljava/util/Map;

    move-object v10, v1

    move-object v11, v6

    invoke-interface {v9, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .line 157
    .end local v7    # "r":Lcom/sun/scenario/effect/impl/Renderer;
    .end local v8    # "f":Lcom/sun/scenario/effect/Filterable;
    :cond_3
    move-object v9, v2

    move-object v10, v0

    iget-object v10, v10, Lcom/sun/scenario/effect/Identity;->loc:Lcom/sun/javafx/geom/Point2D;

    iget v10, v10, Lcom/sun/javafx/geom/Point2D;->x:F

    float-to-double v10, v10

    move-object v12, v0

    iget-object v12, v12, Lcom/sun/scenario/effect/Identity;->loc:Lcom/sun/javafx/geom/Point2D;

    iget v12, v12, Lcom/sun/javafx/geom/Point2D;->y:F

    float-to-double v12, v12

    invoke-static {v9, v10, v11, v12, v13}, Lcom/sun/scenario/effect/Offset;->getOffsetTransform(Lcom/sun/javafx/geom/transform/BaseTransform;DD)Lcom/sun/javafx/geom/transform/BaseTransform;

    move-result-object v9

    move-object v2, v9

    .line 158
    move-object v9, v6

    move-object v10, v2

    invoke-virtual {v9, v10}, Lcom/sun/scenario/effect/ImageData;->transform(Lcom/sun/javafx/geom/transform/BaseTransform;)Lcom/sun/scenario/effect/ImageData;

    move-result-object v9

    move-object v6, v9

    .line 159
    move-object v9, v6

    move-object v0, v9

    goto :goto_1
.end method

.method public getAccelType(Lcom/sun/scenario/effect/FilterContext;)Lcom/sun/scenario/effect/Effect$AccelType;
    .locals 3

    .prologue
    .line 166
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/Identity;
    move-object v1, p1

    .local v1, "fctx":Lcom/sun/scenario/effect/FilterContext;
    sget-object v2, Lcom/sun/scenario/effect/Effect$AccelType;->INTRINSIC:Lcom/sun/scenario/effect/Effect$AccelType;

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/scenario/effect/Identity;
    return-object v0
.end method

.method public getBounds(Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/scenario/effect/Effect;)Lcom/sun/javafx/geom/BaseBounds;
    .locals 14

    .prologue
    .line 111
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/Identity;
    move-object v1, p1

    .local v1, "transform":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object/from16 v2, p2

    .local v2, "defaultInput":Lcom/sun/scenario/effect/Effect;
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/scenario/effect/Identity;->src:Lcom/sun/scenario/effect/Filterable;

    if-nez v6, :cond_0

    .line 113
    new-instance v6, Lcom/sun/javafx/geom/RectBounds;

    move-object v13, v6

    move-object v6, v13

    move-object v7, v13

    invoke-direct {v7}, Lcom/sun/javafx/geom/RectBounds;-><init>()V

    move-object v0, v6

    .line 121
    .end local v0    # "this":Lcom/sun/scenario/effect/Identity;
    :goto_0
    return-object v0

    .line 115
    .restart local v0    # "this":Lcom/sun/scenario/effect/Identity;
    :cond_0
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/scenario/effect/Identity;->src:Lcom/sun/scenario/effect/Filterable;

    invoke-interface {v6}, Lcom/sun/scenario/effect/Filterable;->getPhysicalWidth()I

    move-result v6

    int-to-float v6, v6

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/scenario/effect/Identity;->src:Lcom/sun/scenario/effect/Filterable;

    invoke-interface {v7}, Lcom/sun/scenario/effect/Filterable;->getPixelScale()F

    move-result v7

    div-float/2addr v6, v7

    move v3, v6

    .line 116
    .local v3, "srcw":F
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/scenario/effect/Identity;->src:Lcom/sun/scenario/effect/Filterable;

    invoke-interface {v6}, Lcom/sun/scenario/effect/Filterable;->getPhysicalHeight()I

    move-result v6

    int-to-float v6, v6

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/scenario/effect/Identity;->src:Lcom/sun/scenario/effect/Filterable;

    invoke-interface {v7}, Lcom/sun/scenario/effect/Filterable;->getPixelScale()F

    move-result v7

    div-float/2addr v6, v7

    move v4, v6

    .line 117
    .local v4, "srch":F
    new-instance v6, Lcom/sun/javafx/geom/RectBounds;

    move-object v13, v6

    move-object v6, v13

    move-object v7, v13

    move-object v8, v0

    iget-object v8, v8, Lcom/sun/scenario/effect/Identity;->loc:Lcom/sun/javafx/geom/Point2D;

    iget v8, v8, Lcom/sun/javafx/geom/Point2D;->x:F

    move-object v9, v0

    iget-object v9, v9, Lcom/sun/scenario/effect/Identity;->loc:Lcom/sun/javafx/geom/Point2D;

    iget v9, v9, Lcom/sun/javafx/geom/Point2D;->y:F

    move-object v10, v0

    iget-object v10, v10, Lcom/sun/scenario/effect/Identity;->loc:Lcom/sun/javafx/geom/Point2D;

    iget v10, v10, Lcom/sun/javafx/geom/Point2D;->x:F

    move v11, v3

    add-float/2addr v10, v11

    move-object v11, v0

    iget-object v11, v11, Lcom/sun/scenario/effect/Identity;->loc:Lcom/sun/javafx/geom/Point2D;

    iget v11, v11, Lcom/sun/javafx/geom/Point2D;->y:F

    move v12, v4

    add-float/2addr v11, v12

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/sun/javafx/geom/RectBounds;-><init>(FFFF)V

    move-object v5, v6

    .line 118
    .local v5, "r":Lcom/sun/javafx/geom/BaseBounds;
    move-object v6, v1

    if-eqz v6, :cond_1

    move-object v6, v1

    invoke-virtual {v6}, Lcom/sun/javafx/geom/transform/BaseTransform;->isIdentity()Z

    move-result v6

    if-nez v6, :cond_1

    .line 119
    move-object v6, v1

    move-object v7, v5

    invoke-static {v6, v7}, Lcom/sun/scenario/effect/Identity;->transformBounds(Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/javafx/geom/BaseBounds;)Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v6

    move-object v5, v6

    .line 121
    :cond_1
    move-object v6, v5

    move-object v0, v6

    goto :goto_0
.end method

.method public getDirtyRegions(Lcom/sun/scenario/effect/Effect;Lcom/sun/javafx/geom/DirtyRegionPool;)Lcom/sun/javafx/geom/DirtyRegionContainer;
    .locals 5

    .prologue
    .line 180
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/Identity;
    move-object v1, p1

    .local v1, "defaultInput":Lcom/sun/scenario/effect/Effect;
    move-object v2, p2

    .local v2, "regionPool":Lcom/sun/javafx/geom/DirtyRegionPool;
    move-object v4, v2

    invoke-virtual {v4}, Lcom/sun/javafx/geom/DirtyRegionPool;->checkOut()Lcom/sun/javafx/geom/DirtyRegionContainer;

    move-result-object v4

    move-object v3, v4

    .line 181
    .local v3, "drc":Lcom/sun/javafx/geom/DirtyRegionContainer;
    move-object v4, v3

    invoke-virtual {v4}, Lcom/sun/javafx/geom/DirtyRegionContainer;->reset()V

    .line 182
    move-object v4, v3

    move-object v0, v4

    .end local v0    # "this":Lcom/sun/scenario/effect/Identity;
    return-object v0
.end method

.method public final getLocation()Lcom/sun/javafx/geom/Point2D;
    .locals 2

    .prologue
    .line 89
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/Identity;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/scenario/effect/Identity;->loc:Lcom/sun/javafx/geom/Point2D;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/Identity;
    return-object v0
.end method

.method public final getSource()Lcom/sun/scenario/effect/Filterable;
    .locals 2

    .prologue
    .line 68
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/Identity;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/scenario/effect/Identity;->src:Lcom/sun/scenario/effect/Filterable;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/Identity;
    return-object v0
.end method

.method public reducesOpaquePixels()Z
    .locals 2

    .prologue
    .line 175
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/Identity;
    const/4 v1, 0x1

    move v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/Identity;
    return v0
.end method

.method public setLocation(Lcom/sun/javafx/geom/Point2D;)V
    .locals 7

    .prologue
    .line 100
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/Identity;
    move-object v1, p1

    .local v1, "pt":Lcom/sun/javafx/geom/Point2D;
    move-object v3, v1

    if-nez v3, :cond_0

    .line 101
    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string v5, "Location must be non-null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 103
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/scenario/effect/Identity;->loc:Lcom/sun/javafx/geom/Point2D;

    move-object v2, v3

    .line 104
    .local v2, "old":Lcom/sun/javafx/geom/Point2D;
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/scenario/effect/Identity;->loc:Lcom/sun/javafx/geom/Point2D;

    move-object v4, v1

    invoke-virtual {v3, v4}, Lcom/sun/javafx/geom/Point2D;->setLocation(Lcom/sun/javafx/geom/Point2D;)V

    .line 105
    return-void
.end method

.method public setSource(Lcom/sun/scenario/effect/Filterable;)V
    .locals 5

    .prologue
    .line 77
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/Identity;
    move-object v1, p1

    .local v1, "src":Lcom/sun/scenario/effect/Filterable;
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/scenario/effect/Identity;->src:Lcom/sun/scenario/effect/Filterable;

    move-object v2, v3

    .line 78
    .local v2, "old":Lcom/sun/scenario/effect/Filterable;
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/sun/scenario/effect/Identity;->src:Lcom/sun/scenario/effect/Filterable;

    .line 79
    move-object v3, v0

    invoke-direct {v3}, Lcom/sun/scenario/effect/Identity;->clearCache()V

    .line 80
    return-void
.end method
