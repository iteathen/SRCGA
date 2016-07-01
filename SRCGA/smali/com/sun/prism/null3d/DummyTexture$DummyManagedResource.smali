.class Lcom/sun/prism/null3d/DummyTexture$DummyManagedResource;
.super Lcom/sun/prism/impl/ManagedResource;
.source "DummyTexture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/prism/null3d/DummyTexture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DummyManagedResource"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sun/prism/impl/ManagedResource",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 5

    .prologue
    .line 39
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/null3d/DummyTexture$DummyManagedResource;
    move-object v1, v0

    new-instance v2, Ljava/lang/Object;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    sget-object v3, Lcom/sun/prism/null3d/DummyTexturePool;->instance:Lcom/sun/prism/null3d/DummyTexturePool;

    invoke-direct {v1, v2, v3}, Lcom/sun/prism/impl/ManagedResource;-><init>(Ljava/lang/Object;Lcom/sun/prism/impl/ResourcePool;)V

    .line 40
    return-void
.end method
