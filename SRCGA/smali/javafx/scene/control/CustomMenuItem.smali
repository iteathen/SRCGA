.class public Ljavafx/scene/control/CustomMenuItem;
.super Ljavafx/scene/control/MenuItem;
.source "CustomMenuItem.java"


# static fields
.field private static final DEFAULT_STYLE_CLASS:Ljava/lang/String; = "custom-menu-item"


# instance fields
.field private content:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/scene/Node;",
            ">;"
        }
    .end annotation
.end field

.field private hideOnClick:Ljavafx/beans/property/BooleanProperty;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 80
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/CustomMenuItem;
    move-object v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljavafx/scene/control/CustomMenuItem;-><init>(Ljavafx/scene/Node;Z)V

    .line 81
    return-void
.end method

.method public constructor <init>(Ljavafx/scene/Node;)V
    .locals 5

    .prologue
    .line 88
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/CustomMenuItem;
    move-object v1, p1

    .local v1, "node":Ljavafx/scene/Node;
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Ljavafx/scene/control/CustomMenuItem;-><init>(Ljavafx/scene/Node;Z)V

    .line 89
    return-void
.end method

.method public constructor <init>(Ljavafx/scene/Node;Z)V
    .locals 5

    .prologue
    .line 96
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/CustomMenuItem;
    move-object v1, p1

    .local v1, "node":Ljavafx/scene/Node;
    move v2, p2

    .local v2, "hideOnClick":Z
    move-object v3, v0

    invoke-direct {v3}, Ljavafx/scene/control/MenuItem;-><init>()V

    .line 97
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/CustomMenuItem;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v3

    const-string v4, "custom-menu-item"

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v3

    .line 99
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljavafx/scene/control/CustomMenuItem;->setContent(Ljavafx/scene/Node;)V

    .line 100
    move-object v3, v0

    move v4, v2

    invoke-virtual {v3, v4}, Ljavafx/scene/control/CustomMenuItem;->setHideOnClick(Z)V

    .line 101
    return-void
.end method


# virtual methods
.method public final contentProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/scene/Node;",
            ">;"
        }
    .end annotation

    .prologue
    .line 125
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/CustomMenuItem;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/CustomMenuItem;->content:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    .line 126
    move-object v1, v0

    new-instance v2, Ljavafx/beans/property/SimpleObjectProperty;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    const-string v5, "content"

    invoke-direct {v3, v4, v5}, Ljavafx/beans/property/SimpleObjectProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v1, Ljavafx/scene/control/CustomMenuItem;->content:Ljavafx/beans/property/ObjectProperty;

    .line 128
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/CustomMenuItem;->content:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/CustomMenuItem;
    return-object v0
.end method

.method public final getContent()Ljavafx/scene/Node;
    .locals 2

    .prologue
    .line 121
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/CustomMenuItem;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/CustomMenuItem;->content:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/CustomMenuItem;
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/control/CustomMenuItem;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/CustomMenuItem;->content:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/scene/Node;

    goto :goto_0
.end method

.method public final hideOnClickProperty()Ljavafx/beans/property/BooleanProperty;
    .locals 8

    .prologue
    .line 149
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/CustomMenuItem;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/CustomMenuItem;->hideOnClick:Ljavafx/beans/property/BooleanProperty;

    if-nez v1, :cond_0

    .line 150
    move-object v1, v0

    new-instance v2, Ljavafx/beans/property/SimpleBooleanProperty;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v0

    const-string v5, "hideOnClick"

    const/4 v6, 0x1

    invoke-direct {v3, v4, v5, v6}, Ljavafx/beans/property/SimpleBooleanProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;Z)V

    iput-object v2, v1, Ljavafx/scene/control/CustomMenuItem;->hideOnClick:Ljavafx/beans/property/BooleanProperty;

    .line 152
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/CustomMenuItem;->hideOnClick:Ljavafx/beans/property/BooleanProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/CustomMenuItem;
    return-object v0
.end method

.method public final isHideOnClick()Z
    .locals 2

    .prologue
    .line 145
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/CustomMenuItem;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/CustomMenuItem;->hideOnClick:Ljavafx/beans/property/BooleanProperty;

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Ljavafx/scene/control/CustomMenuItem;
    return v0

    .restart local v0    # "this":Ljavafx/scene/control/CustomMenuItem;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/CustomMenuItem;->hideOnClick:Ljavafx/beans/property/BooleanProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/BooleanProperty;->get()Z

    move-result v1

    goto :goto_0
.end method

.method public final setContent(Ljavafx/scene/Node;)V
    .locals 4

    .prologue
    .line 117
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/CustomMenuItem;
    move-object v1, p1

    .local v1, "value":Ljavafx/scene/Node;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/CustomMenuItem;->contentProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 118
    return-void
.end method

.method public final setHideOnClick(Z)V
    .locals 4

    .prologue
    .line 141
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/CustomMenuItem;
    move v1, p1

    .local v1, "value":Z
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/CustomMenuItem;->hideOnClickProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v2

    move v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/BooleanProperty;->set(Z)V

    .line 142
    return-void
.end method
