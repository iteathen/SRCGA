.class public Ljavafx/scene/control/CheckMenuItemBuilder;
.super Ljavafx/scene/control/MenuItemBuilder;
.source "CheckMenuItemBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B:",
        "Ljavafx/scene/control/CheckMenuItemBuilder",
        "<TB;>;>",
        "Ljavafx/scene/control/MenuItemBuilder",
        "<TB;>;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private __set:Z

.field private selected:Z


# direct methods
.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/CheckMenuItemBuilder;, "Ljavafx/scene/control/CheckMenuItemBuilder<TB;>;"
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/control/MenuItemBuilder;-><init>()V

    .line 38
    return-void
.end method

.method public static create()Ljavafx/scene/control/CheckMenuItemBuilder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/scene/control/CheckMenuItemBuilder",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 43
    new-instance v0, Ljavafx/scene/control/CheckMenuItemBuilder;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljavafx/scene/control/CheckMenuItemBuilder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public applyTo(Ljavafx/scene/control/CheckMenuItem;)V
    .locals 4

    .prologue
    .line 48
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/CheckMenuItemBuilder;, "Ljavafx/scene/control/CheckMenuItemBuilder<TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/scene/control/CheckMenuItem;
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Ljavafx/scene/control/MenuItemBuilder;->applyTo(Ljavafx/scene/control/MenuItem;)V

    .line 49
    move-object v2, v0

    iget-boolean v2, v2, Ljavafx/scene/control/CheckMenuItemBuilder;->__set:Z

    if-eqz v2, :cond_0

    move-object v2, v1

    move-object v3, v0

    iget-boolean v3, v3, Ljavafx/scene/control/CheckMenuItemBuilder;->selected:Z

    invoke-virtual {v2, v3}, Ljavafx/scene/control/CheckMenuItem;->setSelected(Z)V

    .line 50
    :cond_0
    return-void
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/CheckMenuItemBuilder;, "Ljavafx/scene/control/CheckMenuItemBuilder<TB;>;"
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/CheckMenuItemBuilder;->build()Ljavafx/scene/control/CheckMenuItem;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/CheckMenuItemBuilder;, "Ljavafx/scene/control/CheckMenuItemBuilder<TB;>;"
    return-object v0
.end method

.method public build()Ljavafx/scene/control/CheckMenuItem;
    .locals 5

    .prologue
    .line 67
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/CheckMenuItemBuilder;, "Ljavafx/scene/control/CheckMenuItemBuilder<TB;>;"
    new-instance v2, Ljavafx/scene/control/CheckMenuItem;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljavafx/scene/control/CheckMenuItem;-><init>()V

    move-object v1, v2

    .line 68
    .local v1, "x":Ljavafx/scene/control/CheckMenuItem;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/scene/control/CheckMenuItemBuilder;->applyTo(Ljavafx/scene/control/CheckMenuItem;)V

    .line 69
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/control/CheckMenuItemBuilder;, "Ljavafx/scene/control/CheckMenuItemBuilder<TB;>;"
    return-object v0
.end method

.method public bridge synthetic build()Ljavafx/scene/control/MenuItem;
    .locals 2

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/CheckMenuItemBuilder;, "Ljavafx/scene/control/CheckMenuItemBuilder<TB;>;"
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/CheckMenuItemBuilder;->build()Ljavafx/scene/control/CheckMenuItem;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/CheckMenuItemBuilder;, "Ljavafx/scene/control/CheckMenuItemBuilder<TB;>;"
    return-object v0
.end method

.method public selected(Z)Ljavafx/scene/control/CheckMenuItemBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TB;"
        }
    .end annotation

    .prologue
    .line 58
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/CheckMenuItemBuilder;, "Ljavafx/scene/control/CheckMenuItemBuilder<TB;>;"
    move v1, p1

    .local v1, "x":Z
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Ljavafx/scene/control/CheckMenuItemBuilder;->selected:Z

    .line 59
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Ljavafx/scene/control/CheckMenuItemBuilder;->__set:Z

    .line 60
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/control/CheckMenuItemBuilder;, "Ljavafx/scene/control/CheckMenuItemBuilder<TB;>;"
    return-object v0
.end method
