.class public Ljavafx/scene/control/MenuBuilder;
.super Ljavafx/scene/control/MenuItemBuilder;
.source "MenuBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B:",
        "Ljavafx/scene/control/MenuBuilder",
        "<TB;>;>",
        "Ljavafx/scene/control/MenuItemBuilder",
        "<TB;>;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private __set:I

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

.field private onHidden:Ljavafx/event/EventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/event/Event;",
            ">;"
        }
    .end annotation
.end field

.field private onHiding:Ljavafx/event/EventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/event/Event;",
            ">;"
        }
    .end annotation
.end field

.field private onShowing:Ljavafx/event/EventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/event/Event;",
            ">;"
        }
    .end annotation
.end field

.field private onShown:Ljavafx/event/EventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/event/Event;",
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

    .local v0, "this":Ljavafx/scene/control/MenuBuilder;, "Ljavafx/scene/control/MenuBuilder<TB;>;"
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/control/MenuItemBuilder;-><init>()V

    .line 38
    return-void
.end method

.method public static create()Ljavafx/scene/control/MenuBuilder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/scene/control/MenuBuilder",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 43
    new-instance v0, Ljavafx/scene/control/MenuBuilder;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljavafx/scene/control/MenuBuilder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public applyTo(Ljavafx/scene/control/Menu;)V
    .locals 5

    .prologue
    .line 48
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/MenuBuilder;, "Ljavafx/scene/control/MenuBuilder<TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/scene/control/Menu;
    move-object v3, v0

    move-object v4, v1

    invoke-super {v3, v4}, Ljavafx/scene/control/MenuItemBuilder;->applyTo(Ljavafx/scene/control/MenuItem;)V

    .line 49
    move-object v3, v0

    iget v3, v3, Ljavafx/scene/control/MenuBuilder;->__set:I

    move v2, v3

    .line 50
    .local v2, "set":I
    move v3, v2

    const/4 v4, 0x1

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_0

    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/control/Menu;->getItems()Ljavafx/collections/ObservableList;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/control/MenuBuilder;->items:Ljava/util/Collection;

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->addAll(Ljava/util/Collection;)Z

    move-result v3

    .line 51
    :cond_0
    move v3, v2

    const/4 v4, 0x2

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_1

    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/control/MenuBuilder;->onHidden:Ljavafx/event/EventHandler;

    invoke-virtual {v3, v4}, Ljavafx/scene/control/Menu;->setOnHidden(Ljavafx/event/EventHandler;)V

    .line 52
    :cond_1
    move v3, v2

    const/4 v4, 0x4

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_2

    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/control/MenuBuilder;->onHiding:Ljavafx/event/EventHandler;

    invoke-virtual {v3, v4}, Ljavafx/scene/control/Menu;->setOnHiding(Ljavafx/event/EventHandler;)V

    .line 53
    :cond_2
    move v3, v2

    const/16 v4, 0x8

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_3

    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/control/MenuBuilder;->onShowing:Ljavafx/event/EventHandler;

    invoke-virtual {v3, v4}, Ljavafx/scene/control/Menu;->setOnShowing(Ljavafx/event/EventHandler;)V

    .line 54
    :cond_3
    move v3, v2

    const/16 v4, 0x10

    and-int/lit8 v3, v3, 0x10

    if-eqz v3, :cond_4

    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/control/MenuBuilder;->onShown:Ljavafx/event/EventHandler;

    invoke-virtual {v3, v4}, Ljavafx/scene/control/Menu;->setOnShown(Ljavafx/event/EventHandler;)V

    .line 55
    :cond_4
    return-void
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/MenuBuilder;, "Ljavafx/scene/control/MenuBuilder<TB;>;"
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/MenuBuilder;->build()Ljavafx/scene/control/Menu;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/MenuBuilder;, "Ljavafx/scene/control/MenuBuilder<TB;>;"
    return-object v0
.end method

.method public build()Ljavafx/scene/control/Menu;
    .locals 5

    .prologue
    .line 123
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/MenuBuilder;, "Ljavafx/scene/control/MenuBuilder<TB;>;"
    new-instance v2, Ljavafx/scene/control/Menu;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljavafx/scene/control/Menu;-><init>()V

    move-object v1, v2

    .line 124
    .local v1, "x":Ljavafx/scene/control/Menu;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/scene/control/MenuBuilder;->applyTo(Ljavafx/scene/control/Menu;)V

    .line 125
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/control/MenuBuilder;, "Ljavafx/scene/control/MenuBuilder<TB;>;"
    return-object v0
.end method

.method public bridge synthetic build()Ljavafx/scene/control/MenuItem;
    .locals 2

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/MenuBuilder;, "Ljavafx/scene/control/MenuBuilder<TB;>;"
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/MenuBuilder;->build()Ljavafx/scene/control/Menu;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/MenuBuilder;, "Ljavafx/scene/control/MenuBuilder<TB;>;"
    return-object v0
.end method

.method public items(Ljava/util/Collection;)Ljavafx/scene/control/MenuBuilder;
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
    .line 63
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/MenuBuilder;, "Ljavafx/scene/control/MenuBuilder<TB;>;"
    move-object v1, p1

    .local v1, "x":Ljava/util/Collection;, "Ljava/util/Collection<+Ljavafx/scene/control/MenuItem;>;"
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/control/MenuBuilder;->items:Ljava/util/Collection;

    .line 64
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Ljavafx/scene/control/MenuBuilder;->__set:I

    const/4 v4, 0x1

    or-int/lit8 v3, v3, 0x1

    iput v3, v2, Ljavafx/scene/control/MenuBuilder;->__set:I

    .line 65
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/control/MenuBuilder;, "Ljavafx/scene/control/MenuBuilder<TB;>;"
    return-object v0
.end method

.method public varargs items([Ljavafx/scene/control/MenuItem;)Ljavafx/scene/control/MenuBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljavafx/scene/control/MenuItem;",
            ")TB;"
        }
    .end annotation

    .prologue
    .line 72
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/MenuBuilder;, "Ljavafx/scene/control/MenuBuilder<TB;>;"
    move-object v1, p1

    .local v1, "x":[Ljavafx/scene/control/MenuItem;
    move-object v2, v0

    move-object v3, v1

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljavafx/scene/control/MenuBuilder;->items(Ljava/util/Collection;)Ljavafx/scene/control/MenuBuilder;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/control/MenuBuilder;, "Ljavafx/scene/control/MenuBuilder<TB;>;"
    return-object v0
.end method

.method public onHidden(Ljavafx/event/EventHandler;)Ljavafx/scene/control/MenuBuilder;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/event/Event;",
            ">;)TB;"
        }
    .end annotation

    .prologue
    .line 81
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/MenuBuilder;, "Ljavafx/scene/control/MenuBuilder<TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<Ljavafx/event/Event;>;"
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/control/MenuBuilder;->onHidden:Ljavafx/event/EventHandler;

    .line 82
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Ljavafx/scene/control/MenuBuilder;->__set:I

    const/4 v4, 0x2

    or-int/lit8 v3, v3, 0x2

    iput v3, v2, Ljavafx/scene/control/MenuBuilder;->__set:I

    .line 83
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/control/MenuBuilder;, "Ljavafx/scene/control/MenuBuilder<TB;>;"
    return-object v0
.end method

.method public onHiding(Ljavafx/event/EventHandler;)Ljavafx/scene/control/MenuBuilder;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/event/Event;",
            ">;)TB;"
        }
    .end annotation

    .prologue
    .line 92
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/MenuBuilder;, "Ljavafx/scene/control/MenuBuilder<TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<Ljavafx/event/Event;>;"
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/control/MenuBuilder;->onHiding:Ljavafx/event/EventHandler;

    .line 93
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Ljavafx/scene/control/MenuBuilder;->__set:I

    const/4 v4, 0x4

    or-int/lit8 v3, v3, 0x4

    iput v3, v2, Ljavafx/scene/control/MenuBuilder;->__set:I

    .line 94
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/control/MenuBuilder;, "Ljavafx/scene/control/MenuBuilder<TB;>;"
    return-object v0
.end method

.method public onShowing(Ljavafx/event/EventHandler;)Ljavafx/scene/control/MenuBuilder;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/event/Event;",
            ">;)TB;"
        }
    .end annotation

    .prologue
    .line 103
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/MenuBuilder;, "Ljavafx/scene/control/MenuBuilder<TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<Ljavafx/event/Event;>;"
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/control/MenuBuilder;->onShowing:Ljavafx/event/EventHandler;

    .line 104
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Ljavafx/scene/control/MenuBuilder;->__set:I

    const/16 v4, 0x8

    or-int/lit8 v3, v3, 0x8

    iput v3, v2, Ljavafx/scene/control/MenuBuilder;->__set:I

    .line 105
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/control/MenuBuilder;, "Ljavafx/scene/control/MenuBuilder<TB;>;"
    return-object v0
.end method

.method public onShown(Ljavafx/event/EventHandler;)Ljavafx/scene/control/MenuBuilder;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/event/Event;",
            ">;)TB;"
        }
    .end annotation

    .prologue
    .line 114
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/MenuBuilder;, "Ljavafx/scene/control/MenuBuilder<TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<Ljavafx/event/Event;>;"
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/control/MenuBuilder;->onShown:Ljavafx/event/EventHandler;

    .line 115
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Ljavafx/scene/control/MenuBuilder;->__set:I

    const/16 v4, 0x10

    or-int/lit8 v3, v3, 0x10

    iput v3, v2, Ljavafx/scene/control/MenuBuilder;->__set:I

    .line 116
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/control/MenuBuilder;, "Ljavafx/scene/control/MenuBuilder<TB;>;"
    return-object v0
.end method
