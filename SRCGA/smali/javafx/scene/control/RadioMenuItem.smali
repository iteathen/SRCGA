.class public Ljavafx/scene/control/RadioMenuItem;
.super Ljavafx/scene/control/MenuItem;
.source "RadioMenuItem.java"

# interfaces
.implements Ljavafx/scene/control/Toggle;


# static fields
.field private static final DEFAULT_STYLE_CLASS:Ljava/lang/String; = "radio-menu-item"

.field private static final STYLE_CLASS_SELECTED:Ljava/lang/String; = "selected"


# instance fields
.field private selected:Ljavafx/beans/property/BooleanProperty;

.field private toggleGroup:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/scene/control/ToggleGroup;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 108
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/RadioMenuItem;
    move-object v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Ljavafx/scene/control/RadioMenuItem;-><init>(Ljava/lang/String;Ljavafx/scene/Node;)V

    .line 109
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 115
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/RadioMenuItem;
    move-object v1, p1

    .local v1, "text":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Ljavafx/scene/control/RadioMenuItem;-><init>(Ljava/lang/String;Ljavafx/scene/Node;)V

    .line 116
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljavafx/scene/Node;)V
    .locals 6

    .prologue
    .line 123
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/RadioMenuItem;
    move-object v1, p1

    .local v1, "text":Ljava/lang/String;
    move-object v2, p2

    .local v2, "graphic":Ljavafx/scene/Node;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Ljavafx/scene/control/MenuItem;-><init>(Ljava/lang/String;Ljavafx/scene/Node;)V

    .line 124
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/RadioMenuItem;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v3

    const-string v4, "radio-menu-item"

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v3

    .line 125
    return-void
.end method


# virtual methods
.method public final getToggleGroup()Ljavafx/scene/control/ToggleGroup;
    .locals 2

    .prologue
    .line 145
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/RadioMenuItem;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/RadioMenuItem;->toggleGroup:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/RadioMenuItem;
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/control/RadioMenuItem;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/RadioMenuItem;->toggleGroup:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/scene/control/ToggleGroup;

    goto :goto_0
.end method

.method public final isSelected()Z
    .locals 2

    .prologue
    .line 184
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/RadioMenuItem;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/RadioMenuItem;->selected:Ljavafx/beans/property/BooleanProperty;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move v0, v1

    .end local v0    # "this":Ljavafx/scene/control/RadioMenuItem;
    return v0

    .restart local v0    # "this":Ljavafx/scene/control/RadioMenuItem;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/RadioMenuItem;->selected:Ljavafx/beans/property/BooleanProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/BooleanProperty;->get()Z

    move-result v1

    goto :goto_0
.end method

.method public final selectedProperty()Ljavafx/beans/property/BooleanProperty;
    .locals 6

    .prologue
    .line 188
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/RadioMenuItem;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/RadioMenuItem;->selected:Ljavafx/beans/property/BooleanProperty;

    if-nez v1, :cond_0

    .line 189
    move-object v1, v0

    new-instance v2, Ljavafx/scene/control/RadioMenuItem$2;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/control/RadioMenuItem$2;-><init>(Ljavafx/scene/control/RadioMenuItem;)V

    iput-object v2, v1, Ljavafx/scene/control/RadioMenuItem;->selected:Ljavafx/beans/property/BooleanProperty;

    .line 217
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/RadioMenuItem;->selected:Ljavafx/beans/property/BooleanProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/RadioMenuItem;
    return-object v0
.end method

.method public final setSelected(Z)V
    .locals 4

    .prologue
    .line 180
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/RadioMenuItem;
    move v1, p1

    .local v1, "value":Z
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/RadioMenuItem;->selectedProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v2

    move v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/BooleanProperty;->set(Z)V

    .line 181
    return-void
.end method

.method public final setToggleGroup(Ljavafx/scene/control/ToggleGroup;)V
    .locals 4

    .prologue
    .line 141
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/RadioMenuItem;
    move-object v1, p1

    .local v1, "value":Ljavafx/scene/control/ToggleGroup;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/RadioMenuItem;->toggleGroupProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 142
    return-void
.end method

.method public final toggleGroupProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/scene/control/ToggleGroup;",
            ">;"
        }
    .end annotation

    .prologue
    .line 149
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/RadioMenuItem;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/RadioMenuItem;->toggleGroup:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    .line 150
    move-object v1, v0

    new-instance v2, Ljavafx/scene/control/RadioMenuItem$1;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/control/RadioMenuItem$1;-><init>(Ljavafx/scene/control/RadioMenuItem;)V

    iput-object v2, v1, Ljavafx/scene/control/RadioMenuItem;->toggleGroup:Ljavafx/beans/property/ObjectProperty;

    .line 173
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/RadioMenuItem;->toggleGroup:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/RadioMenuItem;
    return-object v0
.end method
