.class public abstract Lcom/sun/prism/impl/ps/BaseShaderFactory;
.super Lcom/sun/prism/impl/BaseResourceFactory;
.source "BaseShaderFactory.java"

# interfaces
.implements Lcom/sun/prism/ps/ShaderFactory;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 43
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/ps/BaseShaderFactory;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/prism/impl/BaseResourceFactory;-><init>()V

    .line 44
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/sun/prism/Image;",
            "Lcom/sun/prism/Texture;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Lcom/sun/prism/Image;",
            "Lcom/sun/prism/Texture;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Lcom/sun/prism/Image;",
            "Lcom/sun/prism/Texture;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 50
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/ps/BaseShaderFactory;
    move-object v1, p1

    .local v1, "clampTexCache":Ljava/util/Map;, "Ljava/util/Map<Lcom/sun/prism/Image;Lcom/sun/prism/Texture;>;"
    move-object v2, p2

    .local v2, "repeatTexCache":Ljava/util/Map;, "Ljava/util/Map<Lcom/sun/prism/Image;Lcom/sun/prism/Texture;>;"
    move-object v3, p3

    .local v3, "mipmapTexCache":Ljava/util/Map;, "Ljava/util/Map<Lcom/sun/prism/Image;Lcom/sun/prism/Texture;>;"
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-direct {v4, v5, v6, v7}, Lcom/sun/prism/impl/BaseResourceFactory;-><init>(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V

    .line 51
    return-void
.end method


# virtual methods
.method public createArcRep()Lcom/sun/prism/shape/ShapeRep;
    .locals 4

    .prologue
    .line 69
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/ps/BaseShaderFactory;
    sget-boolean v1, Lcom/sun/prism/impl/PrismSettings;->cacheComplexShapes:Z

    if-eqz v1, :cond_0

    new-instance v1, Lcom/sun/prism/impl/ps/CachingShapeRep;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Lcom/sun/prism/impl/ps/CachingShapeRep;-><init>()V

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Lcom/sun/prism/impl/ps/BaseShaderFactory;
    return-object v0

    .restart local v0    # "this":Lcom/sun/prism/impl/ps/BaseShaderFactory;
    :cond_0
    new-instance v1, Lcom/sun/prism/impl/shape/BasicShapeRep;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Lcom/sun/prism/impl/shape/BasicShapeRep;-><init>()V

    goto :goto_0
.end method

.method public createEllipseRep()Lcom/sun/prism/shape/ShapeRep;
    .locals 4

    .prologue
    .line 64
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/ps/BaseShaderFactory;
    sget-boolean v1, Lcom/sun/prism/impl/PrismSettings;->cacheSimpleShapes:Z

    if-eqz v1, :cond_0

    new-instance v1, Lcom/sun/prism/impl/ps/CachingEllipseRep;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Lcom/sun/prism/impl/ps/CachingEllipseRep;-><init>()V

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Lcom/sun/prism/impl/ps/BaseShaderFactory;
    return-object v0

    .restart local v0    # "this":Lcom/sun/prism/impl/ps/BaseShaderFactory;
    :cond_0
    new-instance v1, Lcom/sun/prism/impl/shape/BasicEllipseRep;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Lcom/sun/prism/impl/shape/BasicEllipseRep;-><init>()V

    goto :goto_0
.end method

.method public createPathRep()Lcom/sun/prism/shape/ShapeRep;
    .locals 4

    .prologue
    .line 54
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/ps/BaseShaderFactory;
    sget-boolean v1, Lcom/sun/prism/impl/PrismSettings;->cacheComplexShapes:Z

    if-eqz v1, :cond_0

    new-instance v1, Lcom/sun/prism/impl/ps/CachingShapeRep;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Lcom/sun/prism/impl/ps/CachingShapeRep;-><init>()V

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Lcom/sun/prism/impl/ps/BaseShaderFactory;
    return-object v0

    .restart local v0    # "this":Lcom/sun/prism/impl/ps/BaseShaderFactory;
    :cond_0
    new-instance v1, Lcom/sun/prism/impl/shape/BasicShapeRep;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Lcom/sun/prism/impl/shape/BasicShapeRep;-><init>()V

    goto :goto_0
.end method

.method public createRoundRectRep()Lcom/sun/prism/shape/ShapeRep;
    .locals 4

    .prologue
    .line 59
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/ps/BaseShaderFactory;
    sget-boolean v1, Lcom/sun/prism/impl/PrismSettings;->cacheSimpleShapes:Z

    if-eqz v1, :cond_0

    new-instance v1, Lcom/sun/prism/impl/ps/CachingRoundRectRep;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Lcom/sun/prism/impl/ps/CachingRoundRectRep;-><init>()V

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Lcom/sun/prism/impl/ps/BaseShaderFactory;
    return-object v0

    .restart local v0    # "this":Lcom/sun/prism/impl/ps/BaseShaderFactory;
    :cond_0
    new-instance v1, Lcom/sun/prism/impl/shape/BasicRoundRectRep;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Lcom/sun/prism/impl/shape/BasicRoundRectRep;-><init>()V

    goto :goto_0
.end method
