.class public Ljavafx/scene/control/CheckBoxTreeItemBuilder;
.super Ljavafx/scene/control/TreeItemBuilder;
.source "CheckBoxTreeItemBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "B:",
        "Ljavafx/scene/control/CheckBoxTreeItemBuilder",
        "<TT;TB;>;>",
        "Ljavafx/scene/control/TreeItemBuilder",
        "<TT;TB;>;"
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

    .local v0, "this":Ljavafx/scene/control/CheckBoxTreeItemBuilder;, "Ljavafx/scene/control/CheckBoxTreeItemBuilder<TT;TB;>;"
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/control/TreeItemBuilder;-><init>()V

    .line 38
    return-void
.end method

.method public static create()Ljavafx/scene/control/CheckBoxTreeItemBuilder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Ljavafx/scene/control/CheckBoxTreeItemBuilder",
            "<TT;*>;"
        }
    .end annotation

    .prologue
    .line 43
    new-instance v0, Ljavafx/scene/control/CheckBoxTreeItemBuilder;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljavafx/scene/control/CheckBoxTreeItemBuilder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic build()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/CheckBoxTreeItemBuilder;, "Ljavafx/scene/control/CheckBoxTreeItemBuilder<TT;TB;>;"
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/CheckBoxTreeItemBuilder;->build()Ljavafx/scene/control/CheckBoxTreeItem;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/CheckBoxTreeItemBuilder;, "Ljavafx/scene/control/CheckBoxTreeItemBuilder<TT;TB;>;"
    return-object v0
.end method

.method public build()Ljavafx/scene/control/CheckBoxTreeItem;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/scene/control/CheckBoxTreeItem",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 50
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/CheckBoxTreeItemBuilder;, "Ljavafx/scene/control/CheckBoxTreeItemBuilder<TT;TB;>;"
    new-instance v2, Ljavafx/scene/control/CheckBoxTreeItem;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljavafx/scene/control/CheckBoxTreeItem;-><init>()V

    move-object v1, v2

    .line 51
    .local v1, "x":Ljavafx/scene/control/CheckBoxTreeItem;, "Ljavafx/scene/control/CheckBoxTreeItem<TT;>;"
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/scene/control/CheckBoxTreeItemBuilder;->applyTo(Ljavafx/scene/control/TreeItem;)V

    .line 52
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/control/CheckBoxTreeItemBuilder;, "Ljavafx/scene/control/CheckBoxTreeItemBuilder<TT;TB;>;"
    return-object v0
.end method

.method public bridge synthetic build()Ljavafx/scene/control/TreeItem;
    .locals 2

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/CheckBoxTreeItemBuilder;, "Ljavafx/scene/control/CheckBoxTreeItemBuilder<TT;TB;>;"
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/CheckBoxTreeItemBuilder;->build()Ljavafx/scene/control/CheckBoxTreeItem;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/CheckBoxTreeItemBuilder;, "Ljavafx/scene/control/CheckBoxTreeItemBuilder<TT;TB;>;"
    return-object v0
.end method
