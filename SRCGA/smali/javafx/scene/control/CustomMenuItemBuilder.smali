.class public Ljavafx/scene/control/CustomMenuItemBuilder;
.super Ljavafx/scene/control/MenuItemBuilder;
.source "CustomMenuItemBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B:",
        "Ljavafx/scene/control/CustomMenuItemBuilder",
        "<TB;>;>",
        "Ljavafx/scene/control/MenuItemBuilder",
        "<TB;>;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private __set:I

.field private content:Ljavafx/scene/Node;

.field private hideOnClick:Z


# direct methods
.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/CustomMenuItemBuilder;, "Ljavafx/scene/control/CustomMenuItemBuilder<TB;>;"
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/control/MenuItemBuilder;-><init>()V

    .line 38
    return-void
.end method

.method public static create()Ljavafx/scene/control/CustomMenuItemBuilder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/scene/control/CustomMenuItemBuilder",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 43
    new-instance v0, Ljavafx/scene/control/CustomMenuItemBuilder;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljavafx/scene/control/CustomMenuItemBuilder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public applyTo(Ljavafx/scene/control/CustomMenuItem;)V
    .locals 5

    .prologue
    .line 48
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/CustomMenuItemBuilder;, "Ljavafx/scene/control/CustomMenuItemBuilder<TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/scene/control/CustomMenuItem;
    move-object v3, v0

    move-object v4, v1

    invoke-super {v3, v4}, Ljavafx/scene/control/MenuItemBuilder;->applyTo(Ljavafx/scene/control/MenuItem;)V

    .line 49
    move-object v3, v0

    iget v3, v3, Ljavafx/scene/control/CustomMenuItemBuilder;->__set:I

    move v2, v3

    .line 50
    .local v2, "set":I
    move v3, v2

    const/4 v4, 0x1

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_0

    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/control/CustomMenuItemBuilder;->content:Ljavafx/scene/Node;

    invoke-virtual {v3, v4}, Ljavafx/scene/control/CustomMenuItem;->setContent(Ljavafx/scene/Node;)V

    .line 51
    :cond_0
    move v3, v2

    const/4 v4, 0x2

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_1

    move-object v3, v1

    move-object v4, v0

    iget-boolean v4, v4, Ljavafx/scene/control/CustomMenuItemBuilder;->hideOnClick:Z

    invoke-virtual {v3, v4}, Ljavafx/scene/control/CustomMenuItem;->setHideOnClick(Z)V

    .line 52
    :cond_1
    return-void
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/CustomMenuItemBuilder;, "Ljavafx/scene/control/CustomMenuItemBuilder<TB;>;"
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/CustomMenuItemBuilder;->build()Ljavafx/scene/control/CustomMenuItem;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/CustomMenuItemBuilder;, "Ljavafx/scene/control/CustomMenuItemBuilder<TB;>;"
    return-object v0
.end method

.method public build()Ljavafx/scene/control/CustomMenuItem;
    .locals 5

    .prologue
    .line 80
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/CustomMenuItemBuilder;, "Ljavafx/scene/control/CustomMenuItemBuilder<TB;>;"
    new-instance v2, Ljavafx/scene/control/CustomMenuItem;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljavafx/scene/control/CustomMenuItem;-><init>()V

    move-object v1, v2

    .line 81
    .local v1, "x":Ljavafx/scene/control/CustomMenuItem;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/scene/control/CustomMenuItemBuilder;->applyTo(Ljavafx/scene/control/CustomMenuItem;)V

    .line 82
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/control/CustomMenuItemBuilder;, "Ljavafx/scene/control/CustomMenuItemBuilder<TB;>;"
    return-object v0
.end method

.method public bridge synthetic build()Ljavafx/scene/control/MenuItem;
    .locals 2

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/CustomMenuItemBuilder;, "Ljavafx/scene/control/CustomMenuItemBuilder<TB;>;"
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/CustomMenuItemBuilder;->build()Ljavafx/scene/control/CustomMenuItem;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/CustomMenuItemBuilder;, "Ljavafx/scene/control/CustomMenuItemBuilder<TB;>;"
    return-object v0
.end method

.method public content(Ljavafx/scene/Node;)Ljavafx/scene/control/CustomMenuItemBuilder;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/Node;",
            ")TB;"
        }
    .end annotation

    .prologue
    .line 60
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/CustomMenuItemBuilder;, "Ljavafx/scene/control/CustomMenuItemBuilder<TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/scene/Node;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/control/CustomMenuItemBuilder;->content:Ljavafx/scene/Node;

    .line 61
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Ljavafx/scene/control/CustomMenuItemBuilder;->__set:I

    const/4 v4, 0x1

    or-int/lit8 v3, v3, 0x1

    iput v3, v2, Ljavafx/scene/control/CustomMenuItemBuilder;->__set:I

    .line 62
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/control/CustomMenuItemBuilder;, "Ljavafx/scene/control/CustomMenuItemBuilder<TB;>;"
    return-object v0
.end method

.method public hideOnClick(Z)Ljavafx/scene/control/CustomMenuItemBuilder;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TB;"
        }
    .end annotation

    .prologue
    .line 71
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/CustomMenuItemBuilder;, "Ljavafx/scene/control/CustomMenuItemBuilder<TB;>;"
    move v1, p1

    .local v1, "x":Z
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Ljavafx/scene/control/CustomMenuItemBuilder;->hideOnClick:Z

    .line 72
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Ljavafx/scene/control/CustomMenuItemBuilder;->__set:I

    const/4 v4, 0x2

    or-int/lit8 v3, v3, 0x2

    iput v3, v2, Ljavafx/scene/control/CustomMenuItemBuilder;->__set:I

    .line 73
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/control/CustomMenuItemBuilder;, "Ljavafx/scene/control/CustomMenuItemBuilder<TB;>;"
    return-object v0
.end method
