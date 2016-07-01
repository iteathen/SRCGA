.class public Lcom/sun/scenario/effect/impl/prism/PrTexture;
.super Ljava/lang/Object;
.source "PrTexture.java"

# interfaces
.implements Lcom/sun/scenario/effect/LockableResource;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/sun/prism/Texture;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/sun/scenario/effect/LockableResource;"
    }
.end annotation


# instance fields
.field private final bounds:Lcom/sun/javafx/geom/Rectangle;

.field private final tex:Lcom/sun/prism/Texture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/sun/prism/Texture;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 36
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/prism/PrTexture;, "Lcom/sun/scenario/effect/impl/prism/PrTexture<TT;>;"
    move-object v1, p1

    .local v1, "tex":Lcom/sun/prism/Texture;, "TT;"
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 37
    move-object v2, v1

    if-nez v2, :cond_0

    .line 38
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    const-string v4, "Texture must be non-null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 40
    :cond_0
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/scenario/effect/impl/prism/PrTexture;->tex:Lcom/sun/prism/Texture;

    .line 41
    move-object v2, v0

    new-instance v3, Lcom/sun/javafx/geom/Rectangle;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v1

    invoke-interface {v5}, Lcom/sun/prism/Texture;->getPhysicalWidth()I

    move-result v5

    move-object v6, v1

    invoke-interface {v6}, Lcom/sun/prism/Texture;->getPhysicalHeight()I

    move-result v6

    invoke-direct {v4, v5, v6}, Lcom/sun/javafx/geom/Rectangle;-><init>(II)V

    iput-object v3, v2, Lcom/sun/scenario/effect/impl/prism/PrTexture;->bounds:Lcom/sun/javafx/geom/Rectangle;

    .line 42
    return-void
.end method


# virtual methods
.method public getNativeBounds()Lcom/sun/javafx/geom/Rectangle;
    .locals 2

    .prologue
    .line 57
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/prism/PrTexture;, "Lcom/sun/scenario/effect/impl/prism/PrTexture<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/scenario/effect/impl/prism/PrTexture;->bounds:Lcom/sun/javafx/geom/Rectangle;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/prism/PrTexture;, "Lcom/sun/scenario/effect/impl/prism/PrTexture<TT;>;"
    return-object v0
.end method

.method public getTextureObject()Lcom/sun/prism/Texture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 61
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/prism/PrTexture;, "Lcom/sun/scenario/effect/impl/prism/PrTexture<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/scenario/effect/impl/prism/PrTexture;->tex:Lcom/sun/prism/Texture;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/prism/PrTexture;, "Lcom/sun/scenario/effect/impl/prism/PrTexture<TT;>;"
    return-object v0
.end method

.method public isLost()Z
    .locals 2

    .prologue
    .line 53
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/prism/PrTexture;, "Lcom/sun/scenario/effect/impl/prism/PrTexture<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/scenario/effect/impl/prism/PrTexture;->tex:Lcom/sun/prism/Texture;

    invoke-interface {v1}, Lcom/sun/prism/Texture;->isSurfaceLost()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/scenario/effect/impl/prism/PrTexture;, "Lcom/sun/scenario/effect/impl/prism/PrTexture<TT;>;"
    return v0
.end method

.method public lock()V
    .locals 2

    .prologue
    .line 45
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/prism/PrTexture;, "Lcom/sun/scenario/effect/impl/prism/PrTexture<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/scenario/effect/impl/prism/PrTexture;->tex:Lcom/sun/prism/Texture;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lcom/sun/scenario/effect/impl/prism/PrTexture;->tex:Lcom/sun/prism/Texture;

    invoke-interface {v1}, Lcom/sun/prism/Texture;->lock()V

    .line 46
    :cond_0
    return-void
.end method

.method public unlock()V
    .locals 2

    .prologue
    .line 49
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/effect/impl/prism/PrTexture;, "Lcom/sun/scenario/effect/impl/prism/PrTexture<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/scenario/effect/impl/prism/PrTexture;->tex:Lcom/sun/prism/Texture;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lcom/sun/scenario/effect/impl/prism/PrTexture;->tex:Lcom/sun/prism/Texture;

    invoke-interface {v1}, Lcom/sun/prism/Texture;->unlock()V

    .line 50
    :cond_0
    return-void
.end method
