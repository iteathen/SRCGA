.class public Ljavafx/scene/control/ContextMenuBuilder;
.super Ljavafx/scene/control/PopupControlBuilder;
.source "ContextMenuBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B:",
        "Ljavafx/scene/control/ContextMenuBuilder",
        "<TB;>;>",
        "Ljavafx/scene/control/PopupControlBuilder",
        "<TB;>;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private __set:I

.field private impl_showRelativeToWindow:Z

.field private items:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<+",
            "Ljavafx/scene/control/MenuItem;",
            ">;"
        }
    .end annotation
.end field

.field private onAction:Ljavafx/event/EventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/event/ActionEvent;",
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

    .local v0, "this":Ljavafx/scene/control/ContextMenuBuilder;, "Ljavafx/scene/control/ContextMenuBuilder<TB;>;"
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/control/PopupControlBuilder;-><init>()V

    .line 38
    return-void
.end method

.method public static create()Ljavafx/scene/control/ContextMenuBuilder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/scene/control/ContextMenuBuilder",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 43
    new-instance v0, Ljavafx/scene/control/ContextMenuBuilder;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljavafx/scene/control/ContextMenuBuilder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public applyTo(Ljavafx/scene/control/ContextMenu;)V
    .locals 5

    .prologue
    .line 48
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ContextMenuBuilder;, "Ljavafx/scene/control/ContextMenuBuilder<TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/scene/control/ContextMenu;
    move-object v3, v0

    move-object v4, v1

    invoke-super {v3, v4}, Ljavafx/scene/control/PopupControlBuilder;->applyTo(Ljavafx/scene/control/PopupControl;)V

    .line 49
    move-object v3, v0

    iget v3, v3, Ljavafx/scene/control/ContextMenuBuilder;->__set:I

    move v2, v3

    .line 50
    .local v2, "set":I
    move v3, v2

    const/4 v4, 0x1

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_0

    move-object v3, v1

    move-object v4, v0

    iget-boolean v4, v4, Ljavafx/scene/control/ContextMenuBuilder;->impl_showRelativeToWindow:Z

    invoke-virtual {v3, v4}, Ljavafx/scene/control/ContextMenu;->setImpl_showRelativeToWindow(Z)V

    .line 51
    :cond_0
    move v3, v2

    const/4 v4, 0x2

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_1

    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/control/ContextMenu;->getItems()Ljavafx/collections/ObservableList;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/control/ContextMenuBuilder;->items:Ljava/util/Collection;

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->addAll(Ljava/util/Collection;)Z

    move-result v3

    .line 52
    :cond_1
    move v3, v2

    const/4 v4, 0x4

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_2

    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/control/ContextMenuBuilder;->onAction:Ljavafx/event/EventHandler;

    invoke-virtual {v3, v4}, Ljavafx/scene/control/ContextMenu;->setOnAction(Ljavafx/event/EventHandler;)V

    .line 53
    :cond_2
    return-void
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ContextMenuBuilder;, "Ljavafx/scene/control/ContextMenuBuilder<TB;>;"
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/ContextMenuBuilder;->build()Ljavafx/scene/control/ContextMenu;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/ContextMenuBuilder;, "Ljavafx/scene/control/ContextMenuBuilder<TB;>;"
    return-object v0
.end method

.method public build()Ljavafx/scene/control/ContextMenu;
    .locals 5

    .prologue
    .line 101
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ContextMenuBuilder;, "Ljavafx/scene/control/ContextMenuBuilder<TB;>;"
    new-instance v2, Ljavafx/scene/control/ContextMenu;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljavafx/scene/control/ContextMenu;-><init>()V

    move-object v1, v2

    .line 102
    .local v1, "x":Ljavafx/scene/control/ContextMenu;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/scene/control/ContextMenuBuilder;->applyTo(Ljavafx/scene/control/ContextMenu;)V

    .line 103
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/control/ContextMenuBuilder;, "Ljavafx/scene/control/ContextMenuBuilder<TB;>;"
    return-object v0
.end method

.method public bridge synthetic build()Ljavafx/scene/control/PopupControl;
    .locals 2

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ContextMenuBuilder;, "Ljavafx/scene/control/ContextMenuBuilder<TB;>;"
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/ContextMenuBuilder;->build()Ljavafx/scene/control/ContextMenu;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/ContextMenuBuilder;, "Ljavafx/scene/control/ContextMenuBuilder<TB;>;"
    return-object v0
.end method

.method public impl_showRelativeToWindow(Z)Ljavafx/scene/control/ContextMenuBuilder;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TB;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 63
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ContextMenuBuilder;, "Ljavafx/scene/control/ContextMenuBuilder<TB;>;"
    move v1, p1

    .local v1, "x":Z
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Ljavafx/scene/control/ContextMenuBuilder;->impl_showRelativeToWindow:Z

    .line 64
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Ljavafx/scene/control/ContextMenuBuilder;->__set:I

    const/4 v4, 0x1

    or-int/lit8 v3, v3, 0x1

    iput v3, v2, Ljavafx/scene/control/ContextMenuBuilder;->__set:I

    .line 65
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/control/ContextMenuBuilder;, "Ljavafx/scene/control/ContextMenuBuilder<TB;>;"
    return-object v0
.end method

.method public items(Ljava/util/Collection;)Ljavafx/scene/control/ContextMenuBuilder;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Ljavafx/scene/control/MenuItem;",
            ">;)TB;"
        }
    .end annotation

    .prologue
    .line 74
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ContextMenuBuilder;, "Ljavafx/scene/control/ContextMenuBuilder<TB;>;"
    move-object v1, p1

    .local v1, "x":Ljava/util/Collection;, "Ljava/util/Collection<+Ljavafx/scene/control/MenuItem;>;"
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/control/ContextMenuBuilder;->items:Ljava/util/Collection;

    .line 75
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Ljavafx/scene/control/ContextMenuBuilder;->__set:I

    const/4 v4, 0x2

    or-int/lit8 v3, v3, 0x2

    iput v3, v2, Ljavafx/scene/control/ContextMenuBuilder;->__set:I

    .line 76
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/control/ContextMenuBuilder;, "Ljavafx/scene/control/ContextMenuBuilder<TB;>;"
    return-object v0
.end method

.method public varargs items([Ljavafx/scene/control/MenuItem;)Ljavafx/scene/control/ContextMenuBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljavafx/scene/control/MenuItem;",
            ")TB;"
        }
    .end annotation

    .prologue
    .line 83
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ContextMenuBuilder;, "Ljavafx/scene/control/ContextMenuBuilder<TB;>;"
    move-object v1, p1

    .local v1, "x":[Ljavafx/scene/control/MenuItem;
    move-object v2, v0

    move-object v3, v1

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljavafx/scene/control/ContextMenuBuilder;->items(Ljava/util/Collection;)Ljavafx/scene/control/ContextMenuBuilder;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/control/ContextMenuBuilder;, "Ljavafx/scene/control/ContextMenuBuilder<TB;>;"
    return-object v0
.end method

.method public onAction(Ljavafx/event/EventHandler;)Ljavafx/scene/control/ContextMenuBuilder;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/event/ActionEvent;",
            ">;)TB;"
        }
    .end annotation

    .prologue
    .line 92
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ContextMenuBuilder;, "Ljavafx/scene/control/ContextMenuBuilder<TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<Ljavafx/event/ActionEvent;>;"
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/control/ContextMenuBuilder;->onAction:Ljavafx/event/EventHandler;

    .line 93
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Ljavafx/scene/control/ContextMenuBuilder;->__set:I

    const/4 v4, 0x4

    or-int/lit8 v3, v3, 0x4

    iput v3, v2, Ljavafx/scene/control/ContextMenuBuilder;->__set:I

    .line 94
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/control/ContextMenuBuilder;, "Ljavafx/scene/control/ContextMenuBuilder<TB;>;"
    return-object v0
.end method
