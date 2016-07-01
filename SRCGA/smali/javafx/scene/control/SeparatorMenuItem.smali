.class public Ljavafx/scene/control/SeparatorMenuItem;
.super Ljavafx/scene/control/CustomMenuItem;
.source "SeparatorMenuItem.java"


# static fields
.field private static final DEFAULT_STYLE_CLASS:Ljava/lang/String; = "separator-menu-item"


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    .line 65
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/SeparatorMenuItem;
    move-object v1, v0

    new-instance v2, Ljavafx/scene/control/Separator;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    sget-object v4, Ljavafx/geometry/Orientation;->HORIZONTAL:Ljavafx/geometry/Orientation;

    invoke-direct {v3, v4}, Ljavafx/scene/control/Separator;-><init>(Ljavafx/geometry/Orientation;)V

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Ljavafx/scene/control/CustomMenuItem;-><init>(Ljavafx/scene/Node;Z)V

    .line 66
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/SeparatorMenuItem;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v1

    const-string v2, "separator-menu-item"

    invoke-interface {v1, v2}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v1

    .line 67
    return-void
.end method
