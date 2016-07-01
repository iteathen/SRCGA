.class public Ljavafx/scene/control/SplitMenuButtonBuilder;
.super Ljavafx/scene/control/MenuButtonBuilder;
.source "SplitMenuButtonBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B:",
        "Ljavafx/scene/control/SplitMenuButtonBuilder",
        "<TB;>;>",
        "Ljavafx/scene/control/MenuButtonBuilder",
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

    .local v0, "this":Ljavafx/scene/control/SplitMenuButtonBuilder;, "Ljavafx/scene/control/SplitMenuButtonBuilder<TB;>;"
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/control/MenuButtonBuilder;-><init>()V

    .line 38
    return-void
.end method

.method public static create()Ljavafx/scene/control/SplitMenuButtonBuilder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/scene/control/SplitMenuButtonBuilder",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 43
    new-instance v0, Ljavafx/scene/control/SplitMenuButtonBuilder;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljavafx/scene/control/SplitMenuButtonBuilder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic build()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/SplitMenuButtonBuilder;, "Ljavafx/scene/control/SplitMenuButtonBuilder<TB;>;"
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/SplitMenuButtonBuilder;->build()Ljavafx/scene/control/SplitMenuButton;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/SplitMenuButtonBuilder;, "Ljavafx/scene/control/SplitMenuButtonBuilder<TB;>;"
    return-object v0
.end method

.method public bridge synthetic build()Ljavafx/scene/control/MenuButton;
    .locals 2

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/SplitMenuButtonBuilder;, "Ljavafx/scene/control/SplitMenuButtonBuilder<TB;>;"
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/SplitMenuButtonBuilder;->build()Ljavafx/scene/control/SplitMenuButton;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/SplitMenuButtonBuilder;, "Ljavafx/scene/control/SplitMenuButtonBuilder<TB;>;"
    return-object v0
.end method

.method public build()Ljavafx/scene/control/SplitMenuButton;
    .locals 5

    .prologue
    .line 50
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/SplitMenuButtonBuilder;, "Ljavafx/scene/control/SplitMenuButtonBuilder<TB;>;"
    new-instance v2, Ljavafx/scene/control/SplitMenuButton;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljavafx/scene/control/SplitMenuButton;-><init>()V

    move-object v1, v2

    .line 51
    .local v1, "x":Ljavafx/scene/control/SplitMenuButton;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/scene/control/SplitMenuButtonBuilder;->applyTo(Ljavafx/scene/control/MenuButton;)V

    .line 52
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/control/SplitMenuButtonBuilder;, "Ljavafx/scene/control/SplitMenuButtonBuilder<TB;>;"
    return-object v0
.end method
