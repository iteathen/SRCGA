.class Lcom/sun/prism/es2/ES2TextureResource;
.super Lcom/sun/prism/impl/DisposerManagedResource;
.source "ES2TextureResource.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/sun/prism/es2/ES2TextureData;",
        ">",
        "Lcom/sun/prism/impl/DisposerManagedResource",
        "<TT;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/sun/prism/es2/ES2TextureData;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/ES2TextureResource;, "Lcom/sun/prism/es2/ES2TextureResource<TT;>;"
    move-object v1, p1

    .local v1, "resource":Lcom/sun/prism/es2/ES2TextureData;, "TT;"
    move-object v2, v0

    move-object v3, v1

    sget-object v4, Lcom/sun/prism/es2/ES2VramPool;->instance:Lcom/sun/prism/es2/ES2VramPool;

    move-object v5, v1

    invoke-direct {v2, v3, v4, v5}, Lcom/sun/prism/impl/DisposerManagedResource;-><init>(Ljava/lang/Object;Lcom/sun/prism/impl/ResourcePool;Lcom/sun/prism/impl/Disposer$Record;)V

    .line 35
    return-void
.end method


# virtual methods
.method public free()V
    .locals 2

    .prologue
    .line 39
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/es2/ES2TextureResource;, "Lcom/sun/prism/es2/ES2TextureResource<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/prism/es2/ES2TextureResource;->resource:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 40
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/prism/es2/ES2TextureResource;->resource:Ljava/lang/Object;

    check-cast v1, Lcom/sun/prism/es2/ES2TextureData;

    invoke-virtual {v1}, Lcom/sun/prism/es2/ES2TextureData;->dispose()V

    .line 42
    :cond_0
    return-void
.end method
