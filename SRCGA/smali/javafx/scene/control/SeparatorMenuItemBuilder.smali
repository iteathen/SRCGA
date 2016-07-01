.class public Ljavafx/scene/control/SeparatorMenuItemBuilder;
.super Ljavafx/scene/control/CustomMenuItemBuilder;
.source "SeparatorMenuItemBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B:",
        "Ljavafx/scene/control/SeparatorMenuItemBuilder",
        "<TB;>;>",
        "Ljavafx/scene/control/CustomMenuItemBuilder",
        "<TB;>;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/SeparatorMenuItemBuilder;, "Ljavafx/scene/control/SeparatorMenuItemBuilder<TB;>;"
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/control/CustomMenuItemBuilder;-><init>()V

    .line 38
    return-void
.end method

.method public static create()Ljavafx/scene/control/SeparatorMenuItemBuilder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/scene/control/SeparatorMenuItemBuilder",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 43
    new-instance v0, Ljavafx/scene/control/SeparatorMenuItemBuilder;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljavafx/scene/control/SeparatorMenuItemBuilder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic build()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/SeparatorMenuItemBuilder;, "Ljavafx/scene/control/SeparatorMenuItemBuilder<TB;>;"
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/SeparatorMenuItemBuilder;->build()Ljavafx/scene/control/SeparatorMenuItem;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/SeparatorMenuItemBuilder;, "Ljavafx/scene/control/SeparatorMenuItemBuilder<TB;>;"
    return-object v0
.end method

.method public bridge synthetic build()Ljavafx/scene/control/CustomMenuItem;
    .locals 2

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/SeparatorMenuItemBuilder;, "Ljavafx/scene/control/SeparatorMenuItemBuilder<TB;>;"
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/SeparatorMenuItemBuilder;->build()Ljavafx/scene/control/SeparatorMenuItem;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/SeparatorMenuItemBuilder;, "Ljavafx/scene/control/SeparatorMenuItemBuilder<TB;>;"
    return-object v0
.end method

.method public bridge synthetic build()Ljavafx/scene/control/MenuItem;
    .locals 2

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/SeparatorMenuItemBuilder;, "Ljavafx/scene/control/SeparatorMenuItemBuilder<TB;>;"
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/SeparatorMenuItemBuilder;->build()Ljavafx/scene/control/SeparatorMenuItem;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/SeparatorMenuItemBuilder;, "Ljavafx/scene/control/SeparatorMenuItemBuilder<TB;>;"
    return-object v0
.end method

.method public build()Ljavafx/scene/control/SeparatorMenuItem;
    .locals 5

    .prologue
    .line 50
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/SeparatorMenuItemBuilder;, "Ljavafx/scene/control/SeparatorMenuItemBuilder<TB;>;"
    new-instance v2, Ljavafx/scene/control/SeparatorMenuItem;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljavafx/scene/control/SeparatorMenuItem;-><init>()V

    move-object v1, v2

    .line 51
    .local v1, "x":Ljavafx/scene/control/SeparatorMenuItem;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/scene/control/SeparatorMenuItemBuilder;->applyTo(Ljavafx/scene/control/CustomMenuItem;)V

    .line 52
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/control/SeparatorMenuItemBuilder;, "Ljavafx/scene/control/SeparatorMenuItemBuilder<TB;>;"
    return-object v0
.end method
