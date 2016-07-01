.class public Ljavafx/scene/control/CheckMenuItem;
.super Ljavafx/scene/control/MenuItem;
.source "CheckMenuItem.java"


# static fields
.field private static final DEFAULT_STYLE_CLASS:Ljava/lang/String; = "check-menu-item"

.field private static final STYLE_CLASS_SELECTED:Ljava/lang/String; = "selected"


# instance fields
.field private selected:Ljavafx/beans/property/BooleanProperty;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 97
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/CheckMenuItem;
    move-object v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Ljavafx/scene/control/CheckMenuItem;-><init>(Ljava/lang/String;Ljavafx/scene/Node;)V

    .line 98
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 104
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/CheckMenuItem;
    move-object v1, p1

    .local v1, "text":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Ljavafx/scene/control/CheckMenuItem;-><init>(Ljava/lang/String;Ljavafx/scene/Node;)V

    .line 105
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljavafx/scene/Node;)V
    .locals 6

    .prologue
    .line 112
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/CheckMenuItem;
    move-object v1, p1

    .local v1, "text":Ljava/lang/String;
    move-object v2, p2

    .local v2, "graphic":Ljavafx/scene/Node;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Ljavafx/scene/control/MenuItem;-><init>(Ljava/lang/String;Ljavafx/scene/Node;)V

    .line 113
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/CheckMenuItem;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v3

    const-string v4, "check-menu-item"

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v3

    .line 114
    return-void
.end method


# virtual methods
.method public final isSelected()Z
    .locals 2

    .prologue
    .line 136
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/CheckMenuItem;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/CheckMenuItem;->selected:Ljavafx/beans/property/BooleanProperty;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move v0, v1

    .end local v0    # "this":Ljavafx/scene/control/CheckMenuItem;
    return v0

    .restart local v0    # "this":Ljavafx/scene/control/CheckMenuItem;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/CheckMenuItem;->selected:Ljavafx/beans/property/BooleanProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/BooleanProperty;->get()Z

    move-result v1

    goto :goto_0
.end method

.method public final selectedProperty()Ljavafx/beans/property/BooleanProperty;
    .locals 6

    .prologue
    .line 140
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/CheckMenuItem;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/CheckMenuItem;->selected:Ljavafx/beans/property/BooleanProperty;

    if-nez v1, :cond_0

    .line 141
    move-object v1, v0

    new-instance v2, Ljavafx/scene/control/CheckMenuItem$1;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/control/CheckMenuItem$1;-><init>(Ljavafx/scene/control/CheckMenuItem;)V

    iput-object v2, v1, Ljavafx/scene/control/CheckMenuItem;->selected:Ljavafx/beans/property/BooleanProperty;

    .line 165
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/CheckMenuItem;->selected:Ljavafx/beans/property/BooleanProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/CheckMenuItem;
    return-object v0
.end method

.method public final setSelected(Z)V
    .locals 4

    .prologue
    .line 132
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/CheckMenuItem;
    move v1, p1

    .local v1, "value":Z
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/CheckMenuItem;->selectedProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v2

    move v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/BooleanProperty;->set(Z)V

    .line 133
    return-void
.end method
