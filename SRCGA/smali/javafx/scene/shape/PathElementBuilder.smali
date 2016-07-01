.class public abstract Ljavafx/scene/shape/PathElementBuilder;
.super Ljava/lang/Object;
.source "PathElementBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B:",
        "Ljavafx/scene/shape/PathElementBuilder",
        "<TB;>;>",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private __set:Z

.field private absolute:Z


# direct methods
.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/PathElementBuilder;, "Ljavafx/scene/shape/PathElementBuilder<TB;>;"
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 38
    return-void
.end method


# virtual methods
.method public absolute(Z)Ljavafx/scene/shape/PathElementBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TB;"
        }
    .end annotation

    .prologue
    .line 52
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/PathElementBuilder;, "Ljavafx/scene/shape/PathElementBuilder<TB;>;"
    move v1, p1

    .local v1, "x":Z
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Ljavafx/scene/shape/PathElementBuilder;->absolute:Z

    .line 53
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Ljavafx/scene/shape/PathElementBuilder;->__set:Z

    .line 54
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/shape/PathElementBuilder;, "Ljavafx/scene/shape/PathElementBuilder<TB;>;"
    return-object v0
.end method

.method public applyTo(Ljavafx/scene/shape/PathElement;)V
    .locals 4

    .prologue
    .line 43
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/PathElementBuilder;, "Ljavafx/scene/shape/PathElementBuilder<TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/scene/shape/PathElement;
    move-object v2, v0

    iget-boolean v2, v2, Ljavafx/scene/shape/PathElementBuilder;->__set:Z

    if-eqz v2, :cond_0

    move-object v2, v1

    move-object v3, v0

    iget-boolean v3, v3, Ljavafx/scene/shape/PathElementBuilder;->absolute:Z

    invoke-virtual {v2, v3}, Ljavafx/scene/shape/PathElement;->setAbsolute(Z)V

    .line 44
    :cond_0
    return-void
.end method
