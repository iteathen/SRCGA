.class public Ljavafx/stage/PopupBuilder;
.super Ljavafx/stage/PopupWindowBuilder;
.source "PopupBuilder.java"

# interfaces
.implements Ljavafx/util/Builder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B:",
        "Ljavafx/stage/PopupBuilder",
        "<TB;>;>",
        "Ljavafx/stage/PopupWindowBuilder",
        "<TB;>;",
        "Ljavafx/util/Builder",
        "<",
        "Ljavafx/stage/Popup;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private __set:Z

.field private content:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<+",
            "Ljavafx/scene/Node;",
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

    .local v0, "this":Ljavafx/stage/PopupBuilder;, "Ljavafx/stage/PopupBuilder<TB;>;"
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/stage/PopupWindowBuilder;-><init>()V

    .line 38
    return-void
.end method

.method public static create()Ljavafx/stage/PopupBuilder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/stage/PopupBuilder",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 43
    new-instance v0, Ljavafx/stage/PopupBuilder;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljavafx/stage/PopupBuilder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public applyTo(Ljavafx/stage/Popup;)V
    .locals 4

    .prologue
    .line 48
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/PopupBuilder;, "Ljavafx/stage/PopupBuilder<TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/stage/Popup;
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Ljavafx/stage/PopupWindowBuilder;->applyTo(Ljavafx/stage/PopupWindow;)V

    .line 49
    move-object v2, v0

    iget-boolean v2, v2, Ljavafx/stage/PopupBuilder;->__set:Z

    if-eqz v2, :cond_0

    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/stage/Popup;->getContent()Ljavafx/collections/ObservableList;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Ljavafx/stage/PopupBuilder;->content:Ljava/util/Collection;

    invoke-interface {v2, v3}, Ljavafx/collections/ObservableList;->addAll(Ljava/util/Collection;)Z

    move-result v2

    .line 50
    :cond_0
    return-void
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/PopupBuilder;, "Ljavafx/stage/PopupBuilder<TB;>;"
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/stage/PopupBuilder;->build()Ljavafx/stage/Popup;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/stage/PopupBuilder;, "Ljavafx/stage/PopupBuilder<TB;>;"
    return-object v0
.end method

.method public build()Ljavafx/stage/Popup;
    .locals 5

    .prologue
    .line 74
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/PopupBuilder;, "Ljavafx/stage/PopupBuilder<TB;>;"
    new-instance v2, Ljavafx/stage/Popup;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljavafx/stage/Popup;-><init>()V

    move-object v1, v2

    .line 75
    .local v1, "x":Ljavafx/stage/Popup;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/stage/PopupBuilder;->applyTo(Ljavafx/stage/Popup;)V

    .line 76
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "this":Ljavafx/stage/PopupBuilder;, "Ljavafx/stage/PopupBuilder<TB;>;"
    return-object v0
.end method

.method public content(Ljava/util/Collection;)Ljavafx/stage/PopupBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Ljavafx/scene/Node;",
            ">;)TB;"
        }
    .end annotation

    .prologue
    .line 58
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/PopupBuilder;, "Ljavafx/stage/PopupBuilder<TB;>;"
    move-object v1, p1

    .local v1, "x":Ljava/util/Collection;, "Ljava/util/Collection<+Ljavafx/scene/Node;>;"
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/stage/PopupBuilder;->content:Ljava/util/Collection;

    .line 59
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Ljavafx/stage/PopupBuilder;->__set:Z

    .line 60
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/stage/PopupBuilder;, "Ljavafx/stage/PopupBuilder<TB;>;"
    return-object v0
.end method

.method public varargs content([Ljavafx/scene/Node;)Ljavafx/stage/PopupBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljavafx/scene/Node;",
            ")TB;"
        }
    .end annotation

    .prologue
    .line 67
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/PopupBuilder;, "Ljavafx/stage/PopupBuilder<TB;>;"
    move-object v1, p1

    .local v1, "x":[Ljavafx/scene/Node;
    move-object v2, v0

    move-object v3, v1

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljavafx/stage/PopupBuilder;->content(Ljava/util/Collection;)Ljavafx/stage/PopupBuilder;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavafx/stage/PopupBuilder;, "Ljavafx/stage/PopupBuilder<TB;>;"
    return-object v0
.end method
