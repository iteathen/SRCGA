.class public abstract Ljavafx/scene/ParentBuilder;
.super Ljavafx/scene/NodeBuilder;
.source "ParentBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B:",
        "Ljavafx/scene/ParentBuilder",
        "<TB;>;>",
        "Ljavafx/scene/NodeBuilder",
        "<TB;>;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private __set:I

.field private stylesheets:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<+",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/ParentBuilder;, "Ljavafx/scene/ParentBuilder<TB;>;"
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/NodeBuilder;-><init>()V

    .line 38
    return-void
.end method


# virtual methods
.method public applyTo(Ljavafx/scene/Parent;)V
    .locals 5

    .prologue
    .line 43
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/ParentBuilder;, "Ljavafx/scene/ParentBuilder<TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/scene/Parent;
    move-object v3, v0

    move-object v4, v1

    invoke-super {v3, v4}, Ljavafx/scene/NodeBuilder;->applyTo(Ljavafx/scene/Node;)V

    .line 44
    move-object v3, v0

    iget v3, v3, Ljavafx/scene/ParentBuilder;->__set:I

    move v2, v3

    .line 45
    .local v2, "set":I
    move v3, v2

    const/4 v4, 0x2

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_0

    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/Parent;->getStylesheets()Ljavafx/collections/ObservableList;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/ParentBuilder;->stylesheets:Ljava/util/Collection;

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->addAll(Ljava/util/Collection;)Z

    move-result v3

    .line 46
    :cond_0
    return-void
.end method

.method public stylesheets(Ljava/util/Collection;)Ljavafx/scene/ParentBuilder;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Ljava/lang/String;",
            ">;)TB;"
        }
    .end annotation

    .prologue
    .line 55
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/ParentBuilder;, "Ljavafx/scene/ParentBuilder<TB;>;"
    move-object v1, p1

    .local v1, "x":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/lang/String;>;"
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/ParentBuilder;->stylesheets:Ljava/util/Collection;

    .line 56
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Ljavafx/scene/ParentBuilder;->__set:I

    const/4 v4, 0x2

    or-int/lit8 v3, v3, 0x2

    iput v3, v2, Ljavafx/scene/ParentBuilder;->__set:I

    .line 57
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/ParentBuilder;, "Ljavafx/scene/ParentBuilder<TB;>;"
    return-object v0
.end method

.method public varargs stylesheets([Ljava/lang/String;)Ljavafx/scene/ParentBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")TB;"
        }
    .end annotation

    .prologue
    .line 65
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/ParentBuilder;, "Ljavafx/scene/ParentBuilder<TB;>;"
    move-object v1, p1

    .local v1, "x":[Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljavafx/scene/ParentBuilder;->stylesheets(Ljava/util/Collection;)Ljavafx/scene/ParentBuilder;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/ParentBuilder;, "Ljavafx/scene/ParentBuilder<TB;>;"
    return-object v0
.end method
