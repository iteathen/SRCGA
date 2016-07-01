.class public abstract Lcom/sun/prism/impl/BaseMeshView;
.super Lcom/sun/prism/impl/BaseGraphicsResource;
.source "BaseMeshView.java"

# interfaces
.implements Lcom/sun/prism/MeshView;


# direct methods
.method protected constructor <init>(Lcom/sun/prism/impl/Disposer$Record;)V
    .locals 4

    .prologue
    .line 36
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/BaseMeshView;
    move-object v1, p1

    .local v1, "disposerRecord":Lcom/sun/prism/impl/Disposer$Record;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/prism/impl/BaseGraphicsResource;-><init>(Lcom/sun/prism/impl/Disposer$Record;)V

    .line 37
    return-void
.end method
