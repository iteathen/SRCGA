.class public Ljavafx/scene/control/RadioMenuItemBuilder;
.super Ljavafx/scene/control/MenuItemBuilder;
.source "RadioMenuItemBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B:",
        "Ljavafx/scene/control/RadioMenuItemBuilder",
        "<TB;>;>",
        "Ljavafx/scene/control/MenuItemBuilder",
        "<TB;>;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private __set:I

.field private selected:Z

.field private text:Ljava/lang/String;

.field private toggleGroup:Ljavafx/scene/control/ToggleGroup;


# direct methods
.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/RadioMenuItemBuilder;, "Ljavafx/scene/control/RadioMenuItemBuilder<TB;>;"
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/control/MenuItemBuilder;-><init>()V

    .line 38
    return-void
.end method

.method public static create()Ljavafx/scene/control/RadioMenuItemBuilder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/scene/control/RadioMenuItemBuilder",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 43
    new-instance v0, Ljavafx/scene/control/RadioMenuItemBuilder;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljavafx/scene/control/RadioMenuItemBuilder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public applyTo(Ljavafx/scene/control/RadioMenuItem;)V
    .locals 5

    .prologue
    .line 48
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/RadioMenuItemBuilder;, "Ljavafx/scene/control/RadioMenuItemBuilder<TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/scene/control/RadioMenuItem;
    move-object v3, v0

    move-object v4, v1

    invoke-super {v3, v4}, Ljavafx/scene/control/MenuItemBuilder;->applyTo(Ljavafx/scene/control/MenuItem;)V

    .line 49
    move-object v3, v0

    iget v3, v3, Ljavafx/scene/control/RadioMenuItemBuilder;->__set:I

    move v2, v3

    .line 50
    .local v2, "set":I
    move v3, v2

    const/4 v4, 0x1

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_0

    move-object v3, v1

    move-object v4, v0

    iget-boolean v4, v4, Ljavafx/scene/control/RadioMenuItemBuilder;->selected:Z

    invoke-virtual {v3, v4}, Ljavafx/scene/control/RadioMenuItem;->setSelected(Z)V

    .line 51
    :cond_0
    move v3, v2

    const/4 v4, 0x2

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_1

    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/control/RadioMenuItemBuilder;->toggleGroup:Ljavafx/scene/control/ToggleGroup;

    invoke-virtual {v3, v4}, Ljavafx/scene/control/RadioMenuItem;->setToggleGroup(Ljavafx/scene/control/ToggleGroup;)V

    .line 52
    :cond_1
    return-void
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/RadioMenuItemBuilder;, "Ljavafx/scene/control/RadioMenuItemBuilder<TB;>;"
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/RadioMenuItemBuilder;->build()Ljavafx/scene/control/RadioMenuItem;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/RadioMenuItemBuilder;, "Ljavafx/scene/control/RadioMenuItemBuilder<TB;>;"
    return-object v0
.end method

.method public bridge synthetic build()Ljavafx/scene/control/MenuItem;
    .locals 2

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/RadioMenuItemBuilder;, "Ljavafx/scene/control/RadioMenuItemBuilder<TB;>;"
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/RadioMenuItemBuilder;->build()Ljavafx/scene/control/RadioMenuItem;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/RadioMenuItemBuilder;, "Ljavafx/scene/control/RadioMenuItemBuilder<TB;>;"
    return-object v0
.end method

.method public build()Ljavafx/scene/control/RadioMenuItem;
    .locals 6

    .prologue
    .line 90
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/RadioMenuItemBuilder;, "Ljavafx/scene/control/RadioMenuItemBuilder<TB;>;"
    new-instance v2, Ljavafx/scene/control/RadioMenuItem;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/control/RadioMenuItemBuilder;->text:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljavafx/scene/control/RadioMenuItem;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    .line 91
    .local v1, "x":Ljavafx/scene/control/RadioMenuItem;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/scene/control/RadioMenuItemBuilder;->applyTo(Ljavafx/scene/control/RadioMenuItem;)V

    .line 92
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/control/RadioMenuItemBuilder;, "Ljavafx/scene/control/RadioMenuItemBuilder<TB;>;"
    return-object v0
.end method

.method public selected(Z)Ljavafx/scene/control/RadioMenuItemBuilder;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TB;"
        }
    .end annotation

    .prologue
    .line 60
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/RadioMenuItemBuilder;, "Ljavafx/scene/control/RadioMenuItemBuilder<TB;>;"
    move v1, p1

    .local v1, "x":Z
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Ljavafx/scene/control/RadioMenuItemBuilder;->selected:Z

    .line 61
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Ljavafx/scene/control/RadioMenuItemBuilder;->__set:I

    const/4 v4, 0x1

    or-int/lit8 v3, v3, 0x1

    iput v3, v2, Ljavafx/scene/control/RadioMenuItemBuilder;->__set:I

    .line 62
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/control/RadioMenuItemBuilder;, "Ljavafx/scene/control/RadioMenuItemBuilder<TB;>;"
    return-object v0
.end method

.method public bridge synthetic text(Ljava/lang/String;)Ljavafx/scene/control/MenuItemBuilder;
    .locals 4

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/RadioMenuItemBuilder;, "Ljavafx/scene/control/RadioMenuItemBuilder<TB;>;"
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/scene/control/RadioMenuItemBuilder;->text(Ljava/lang/String;)Ljavafx/scene/control/RadioMenuItemBuilder;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/control/RadioMenuItemBuilder;, "Ljavafx/scene/control/RadioMenuItemBuilder<TB;>;"
    return-object v0
.end method

.method public text(Ljava/lang/String;)Ljavafx/scene/control/RadioMenuItemBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TB;"
        }
    .end annotation

    .prologue
    .line 71
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/RadioMenuItemBuilder;, "Ljavafx/scene/control/RadioMenuItemBuilder<TB;>;"
    move-object v1, p1

    .local v1, "x":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/control/RadioMenuItemBuilder;->text:Ljava/lang/String;

    .line 72
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/control/RadioMenuItemBuilder;, "Ljavafx/scene/control/RadioMenuItemBuilder<TB;>;"
    return-object v0
.end method

.method public toggleGroup(Ljavafx/scene/control/ToggleGroup;)Ljavafx/scene/control/RadioMenuItemBuilder;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/control/ToggleGroup;",
            ")TB;"
        }
    .end annotation

    .prologue
    .line 81
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/RadioMenuItemBuilder;, "Ljavafx/scene/control/RadioMenuItemBuilder<TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/scene/control/ToggleGroup;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/control/RadioMenuItemBuilder;->toggleGroup:Ljavafx/scene/control/ToggleGroup;

    .line 82
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Ljavafx/scene/control/RadioMenuItemBuilder;->__set:I

    const/4 v4, 0x2

    or-int/lit8 v3, v3, 0x2

    iput v3, v2, Ljavafx/scene/control/RadioMenuItemBuilder;->__set:I

    .line 83
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/control/RadioMenuItemBuilder;, "Ljavafx/scene/control/RadioMenuItemBuilder<TB;>;"
    return-object v0
.end method
