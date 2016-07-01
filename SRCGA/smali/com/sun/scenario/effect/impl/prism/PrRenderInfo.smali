.class public Lcom/sun/scenario/effect/impl/prism/PrRenderInfo;
.super Ljava/lang/Object;
.source "PrRenderInfo.java"

# interfaces
.implements Lcom/sun/scenario/effect/ImageDataRenderer;


# instance fields
.field private g:Lcom/sun/prism/Graphics;


# direct methods
.method public constructor <init>(Lcom/sun/prism/Graphics;)V
    .locals 4

    .prologue
    .line 39
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/prism/PrRenderInfo;
    move-object v1, p1

    .local v1, "g":Lcom/sun/prism/Graphics;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 40
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/scenario/effect/impl/prism/PrRenderInfo;->g:Lcom/sun/prism/Graphics;

    .line 41
    return-void
.end method


# virtual methods
.method public getGraphics()Lcom/sun/prism/Graphics;
    .locals 2

    .prologue
    .line 44
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/prism/PrRenderInfo;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/scenario/effect/impl/prism/PrRenderInfo;->g:Lcom/sun/prism/Graphics;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/prism/PrRenderInfo;
    return-object v0
.end method

.method public renderImage(Lcom/sun/scenario/effect/ImageData;Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/scenario/effect/FilterContext;)V
    .locals 14

    .prologue
    .line 54
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/prism/PrRenderInfo;
    move-object v1, p1

    .local v1, "image":Lcom/sun/scenario/effect/ImageData;
    move-object/from16 v2, p2

    .local v2, "transform":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object/from16 v3, p3

    .local v3, "fctx":Lcom/sun/scenario/effect/FilterContext;
    move-object v8, v1

    move-object v9, v3

    invoke-virtual {v8, v9}, Lcom/sun/scenario/effect/ImageData;->validate(Lcom/sun/scenario/effect/FilterContext;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 55
    move-object v8, v1

    invoke-virtual {v8}, Lcom/sun/scenario/effect/ImageData;->getUntransformedBounds()Lcom/sun/javafx/geom/Rectangle;

    move-result-object v8

    move-object v4, v8

    .line 59
    .local v4, "r":Lcom/sun/javafx/geom/Rectangle;
    move-object v8, v1

    invoke-virtual {v8}, Lcom/sun/scenario/effect/ImageData;->getUntransformedImage()Lcom/sun/scenario/effect/Filterable;

    move-result-object v8

    check-cast v8, Lcom/sun/scenario/effect/impl/prism/PrTexture;

    invoke-virtual {v8}, Lcom/sun/scenario/effect/impl/prism/PrTexture;->getTextureObject()Lcom/sun/prism/Texture;

    move-result-object v8

    move-object v5, v8

    .line 60
    .local v5, "tex":Lcom/sun/prism/Texture;
    const/4 v8, 0x0

    move-object v6, v8

    .line 61
    .local v6, "savedTx":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object v8, v2

    invoke-virtual {v8}, Lcom/sun/javafx/geom/transform/BaseTransform;->isIdentity()Z

    move-result v8

    if-nez v8, :cond_0

    .line 62
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/scenario/effect/impl/prism/PrRenderInfo;->g:Lcom/sun/prism/Graphics;

    invoke-interface {v8}, Lcom/sun/prism/Graphics;->getTransformNoClone()Lcom/sun/javafx/geom/transform/BaseTransform;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sun/javafx/geom/transform/BaseTransform;->copy()Lcom/sun/javafx/geom/transform/BaseTransform;

    move-result-object v8

    move-object v6, v8

    .line 63
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/scenario/effect/impl/prism/PrRenderInfo;->g:Lcom/sun/prism/Graphics;

    move-object v9, v2

    invoke-interface {v8, v9}, Lcom/sun/prism/Graphics;->transform(Lcom/sun/javafx/geom/transform/BaseTransform;)V

    .line 65
    :cond_0
    move-object v8, v1

    invoke-virtual {v8}, Lcom/sun/scenario/effect/ImageData;->getTransform()Lcom/sun/javafx/geom/transform/BaseTransform;

    move-result-object v8

    move-object v7, v8

    .line 66
    .local v7, "idtx":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object v8, v7

    invoke-virtual {v8}, Lcom/sun/javafx/geom/transform/BaseTransform;->isIdentity()Z

    move-result v8

    if-nez v8, :cond_2

    .line 67
    move-object v8, v6

    if-nez v8, :cond_1

    move-object v8, v0

    iget-object v8, v8, Lcom/sun/scenario/effect/impl/prism/PrRenderInfo;->g:Lcom/sun/prism/Graphics;

    invoke-interface {v8}, Lcom/sun/prism/Graphics;->getTransformNoClone()Lcom/sun/javafx/geom/transform/BaseTransform;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sun/javafx/geom/transform/BaseTransform;->copy()Lcom/sun/javafx/geom/transform/BaseTransform;

    move-result-object v8

    move-object v6, v8

    .line 68
    :cond_1
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/scenario/effect/impl/prism/PrRenderInfo;->g:Lcom/sun/prism/Graphics;

    move-object v9, v7

    invoke-interface {v8, v9}, Lcom/sun/prism/Graphics;->transform(Lcom/sun/javafx/geom/transform/BaseTransform;)V

    .line 70
    :cond_2
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/scenario/effect/impl/prism/PrRenderInfo;->g:Lcom/sun/prism/Graphics;

    move-object v9, v5

    move-object v10, v4

    iget v10, v10, Lcom/sun/javafx/geom/Rectangle;->x:I

    int-to-float v10, v10

    move-object v11, v4

    iget v11, v11, Lcom/sun/javafx/geom/Rectangle;->y:I

    int-to-float v11, v11

    move-object v12, v4

    iget v12, v12, Lcom/sun/javafx/geom/Rectangle;->width:I

    int-to-float v12, v12

    move-object v13, v4

    iget v13, v13, Lcom/sun/javafx/geom/Rectangle;->height:I

    int-to-float v13, v13

    invoke-interface/range {v8 .. v13}, Lcom/sun/prism/Graphics;->drawTexture(Lcom/sun/prism/Texture;FFFF)V

    .line 71
    move-object v8, v6

    if-eqz v8, :cond_3

    .line 72
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/scenario/effect/impl/prism/PrRenderInfo;->g:Lcom/sun/prism/Graphics;

    move-object v9, v6

    invoke-interface {v8, v9}, Lcom/sun/prism/Graphics;->setTransform(Lcom/sun/javafx/geom/transform/BaseTransform;)V

    .line 75
    .end local v4    # "r":Lcom/sun/javafx/geom/Rectangle;
    .end local v5    # "tex":Lcom/sun/prism/Texture;
    .end local v6    # "savedTx":Lcom/sun/javafx/geom/transform/BaseTransform;
    .end local v7    # "idtx":Lcom/sun/javafx/geom/transform/BaseTransform;
    :cond_3
    return-void
.end method
