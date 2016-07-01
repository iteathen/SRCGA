.class public abstract Lcom/sun/prism/impl/DisposerManagedResource;
.super Lcom/sun/prism/impl/ManagedResource;
.source "DisposerManagedResource.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/sun/prism/impl/ManagedResource",
        "<TT;>;"
    }
.end annotation


# instance fields
.field referent:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lcom/sun/prism/impl/ResourcePool;Lcom/sun/prism/impl/Disposer$Record;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/sun/prism/impl/ResourcePool;",
            "Lcom/sun/prism/impl/Disposer$Record;",
            ")V"
        }
    .end annotation

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/DisposerManagedResource;, "Lcom/sun/prism/impl/DisposerManagedResource<TT;>;"
    move-object v1, p1

    .local v1, "resource":Ljava/lang/Object;, "TT;"
    move-object v2, p2

    .local v2, "pool":Lcom/sun/prism/impl/ResourcePool;
    move-object v3, p3

    .local v3, "record":Lcom/sun/prism/impl/Disposer$Record;
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Lcom/sun/prism/impl/ManagedResource;-><init>(Ljava/lang/Object;Lcom/sun/prism/impl/ResourcePool;)V

    .line 35
    move-object v4, v0

    new-instance v5, Ljava/lang/Object;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    iput-object v5, v4, Lcom/sun/prism/impl/DisposerManagedResource;->referent:Ljava/lang/Object;

    .line 36
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/prism/impl/DisposerManagedResource;->referent:Ljava/lang/Object;

    move-object v5, v3

    invoke-static {v4, v5}, Lcom/sun/prism/impl/Disposer;->addRecord(Ljava/lang/Object;Lcom/sun/prism/impl/Disposer$Record;)V

    .line 37
    return-void
.end method
