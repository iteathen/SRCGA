.class Ljavafx/scene/control/RadioMenuItem$2;
.super Ljavafx/beans/property/BooleanPropertyBase;
.source "RadioMenuItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/scene/control/RadioMenuItem;->selectedProperty()Ljavafx/beans/property/BooleanProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/scene/control/RadioMenuItem;


# direct methods
.method constructor <init>(Ljavafx/scene/control/RadioMenuItem;)V
    .locals 4

    .prologue
    .line 189
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/RadioMenuItem$2;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/control/RadioMenuItem;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/control/RadioMenuItem$2;->this$0:Ljavafx/scene/control/RadioMenuItem;

    move-object v2, v0

    invoke-direct {v2}, Ljavafx/beans/property/BooleanPropertyBase;-><init>()V

    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 208
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/RadioMenuItem$2;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/RadioMenuItem$2;->this$0:Ljavafx/scene/control/RadioMenuItem;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/RadioMenuItem$2;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 213
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/RadioMenuItem$2;
    const-string v1, "selected"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/RadioMenuItem$2;
    return-object v0
.end method

.method protected invalidated()V
    .locals 3

    .prologue
    .line 191
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/RadioMenuItem$2;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/RadioMenuItem$2;->this$0:Ljavafx/scene/control/RadioMenuItem;

    invoke-virtual {v1}, Ljavafx/scene/control/RadioMenuItem;->getToggleGroup()Ljavafx/scene/control/ToggleGroup;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 192
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/RadioMenuItem$2;->get()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 193
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/RadioMenuItem$2;->this$0:Ljavafx/scene/control/RadioMenuItem;

    invoke-virtual {v1}, Ljavafx/scene/control/RadioMenuItem;->getToggleGroup()Ljavafx/scene/control/ToggleGroup;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/RadioMenuItem$2;->this$0:Ljavafx/scene/control/RadioMenuItem;

    invoke-virtual {v1, v2}, Ljavafx/scene/control/ToggleGroup;->selectToggle(Ljavafx/scene/control/Toggle;)V

    .line 199
    :cond_0
    :goto_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/RadioMenuItem$2;->this$0:Ljavafx/scene/control/RadioMenuItem;

    invoke-virtual {v1}, Ljavafx/scene/control/RadioMenuItem;->isSelected()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 200
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/RadioMenuItem$2;->this$0:Ljavafx/scene/control/RadioMenuItem;

    invoke-virtual {v1}, Ljavafx/scene/control/RadioMenuItem;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v1

    const-string v2, "selected"

    invoke-interface {v1, v2}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v1

    .line 204
    :goto_1
    return-void

    .line 194
    :cond_1
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/RadioMenuItem$2;->this$0:Ljavafx/scene/control/RadioMenuItem;

    invoke-virtual {v1}, Ljavafx/scene/control/RadioMenuItem;->getToggleGroup()Ljavafx/scene/control/ToggleGroup;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/scene/control/ToggleGroup;->getSelectedToggle()Ljavafx/scene/control/Toggle;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/RadioMenuItem$2;->this$0:Ljavafx/scene/control/RadioMenuItem;

    if-ne v1, v2, :cond_0

    .line 195
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/RadioMenuItem$2;->this$0:Ljavafx/scene/control/RadioMenuItem;

    invoke-virtual {v1}, Ljavafx/scene/control/RadioMenuItem;->getToggleGroup()Ljavafx/scene/control/ToggleGroup;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljavafx/scene/control/ToggleGroup;->selectToggle(Ljavafx/scene/control/Toggle;)V

    goto :goto_0

    .line 202
    :cond_2
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/RadioMenuItem$2;->this$0:Ljavafx/scene/control/RadioMenuItem;

    invoke-virtual {v1}, Ljavafx/scene/control/RadioMenuItem;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v1

    const-string v2, "selected"

    invoke-interface {v1, v2}, Ljavafx/collections/ObservableList;->remove(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_1
.end method
