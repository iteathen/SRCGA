.class public final Lcom/sun/javafx/scene/shape/PathUtils;
.super Ljava/lang/Object;
.source "PathUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 35
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/shape/PathUtils;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 36
    return-void
.end method

.method public static configShape(Ljava/util/Collection;Z)Lcom/sun/javafx/geom/Path2D;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljavafx/scene/shape/PathElement;",
            ">;Z)",
            "Lcom/sun/javafx/geom/Path2D;"
        }
    .end annotation

    .prologue
    .line 42
    move-object v0, p0

    .local v0, "pathElements":Ljava/util/Collection;, "Ljava/util/Collection<Ljavafx/scene/shape/PathElement;>;"
    move v1, p1

    .local v1, "evenOddFillRule":Z
    new-instance v5, Lcom/sun/javafx/geom/Path2D;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move v7, v1

    if-eqz v7, :cond_0

    const/4 v7, 0x0

    :goto_0
    move-object v8, v0

    .line 44
    invoke-interface {v8}, Ljava/util/Collection;->size()I

    move-result v8

    invoke-direct {v6, v7, v8}, Lcom/sun/javafx/geom/Path2D;-><init>(II)V

    move-object v2, v5

    .line 45
    .local v2, "path":Lcom/sun/javafx/geom/Path2D;
    move-object v5, v0

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v3, v5

    :goto_1
    move-object v5, v3

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    move-object v5, v3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljavafx/scene/shape/PathElement;

    move-object v4, v5

    .line 46
    .local v4, "el":Ljavafx/scene/shape/PathElement;
    move-object v5, v4

    move-object v6, v2

    invoke-virtual {v5, v6}, Ljavafx/scene/shape/PathElement;->impl_addTo(Lcom/sun/javafx/geom/Path2D;)V

    .line 47
    goto :goto_1

    .line 42
    .end local v2    # "path":Lcom/sun/javafx/geom/Path2D;
    .end local v4    # "el":Ljavafx/scene/shape/PathElement;
    :cond_0
    const/4 v7, 0x1

    goto :goto_0

    .line 48
    .restart local v2    # "path":Lcom/sun/javafx/geom/Path2D;
    :cond_1
    move-object v5, v2

    move-object v0, v5

    .end local v0    # "pathElements":Ljava/util/Collection;, "Ljava/util/Collection<Ljavafx/scene/shape/PathElement;>;"
    return-object v0
.end method
