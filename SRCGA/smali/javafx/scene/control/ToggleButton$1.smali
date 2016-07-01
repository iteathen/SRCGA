.class Ljavafx/scene/control/ToggleButton$1;
.super Ljavafx/beans/property/BooleanPropertyBase;
.source "ToggleButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavafx/scene/control/ToggleButton;->selectedProperty()Ljavafx/beans/property/BooleanProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/scene/control/ToggleButton;


# direct methods
.method constructor <init>(Ljavafx/scene/control/ToggleButton;)V
    .locals 4

    .prologue
    .line 158
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ToggleButton$1;
    move-object v1, p1

    .local v1, "this$0":Ljavafx/scene/control/ToggleButton;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/control/ToggleButton$1;->this$0:Ljavafx/scene/control/ToggleButton;

    move-object v2, v0

    invoke-direct {v2}, Ljavafx/beans/property/BooleanPropertyBase;-><init>()V

    return-void
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 177
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ToggleButton$1;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/ToggleButton$1;->this$0:Ljavafx/scene/control/ToggleButton;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/ToggleButton$1;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 182
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ToggleButton$1;
    const-string v1, "selected"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/ToggleButton$1;
    return-object v0
.end method

.method protected invalidated()V
    .locals 6

    .prologue
    .line 160
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ToggleButton$1;
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/ToggleButton$1;->get()Z

    move-result v3

    move v1, v3

    .line 161
    .local v1, "selected":Z
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/control/ToggleButton$1;->this$0:Ljavafx/scene/control/ToggleButton;

    invoke-virtual {v3}, Ljavafx/scene/control/ToggleButton;->getToggleGroup()Ljavafx/scene/control/ToggleGroup;

    move-result-object v3

    move-object v2, v3

    .line 164
    .local v2, "tg":Ljavafx/scene/control/ToggleGroup;
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/control/ToggleButton$1;->this$0:Ljavafx/scene/control/ToggleButton;

    # getter for: Ljavafx/scene/control/ToggleButton;->PSEUDO_CLASS_SELECTED:Ljavafx/css/PseudoClass;
    invoke-static {}, Ljavafx/scene/control/ToggleButton;->access$000()Ljavafx/css/PseudoClass;

    move-result-object v4

    move v5, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/control/ToggleButton;->pseudoClassStateChanged(Ljavafx/css/PseudoClass;Z)V

    .line 165
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/control/ToggleButton$1;->this$0:Ljavafx/scene/control/ToggleButton;

    sget-object v4, Ljavafx/scene/AccessibleAttribute;->SELECTED:Ljavafx/scene/AccessibleAttribute;

    invoke-virtual {v3, v4}, Ljavafx/scene/control/ToggleButton;->notifyAccessibleAttributeChanged(Ljavafx/scene/AccessibleAttribute;)V

    .line 166
    move-object v3, v2

    if-eqz v3, :cond_0

    .line 167
    move v3, v1

    if-eqz v3, :cond_1

    .line 168
    move-object v3, v2

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/control/ToggleButton$1;->this$0:Ljavafx/scene/control/ToggleButton;

    invoke-virtual {v3, v4}, Ljavafx/scene/control/ToggleGroup;->selectToggle(Ljavafx/scene/control/Toggle;)V

    .line 173
    :cond_0
    :goto_0
    return-void

    .line 169
    :cond_1
    move-object v3, v2

    invoke-virtual {v3}, Ljavafx/scene/control/ToggleGroup;->getSelectedToggle()Ljavafx/scene/control/Toggle;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/control/ToggleButton$1;->this$0:Ljavafx/scene/control/ToggleButton;

    if-ne v3, v4, :cond_0

    .line 170
    move-object v3, v2

    invoke-virtual {v3}, Ljavafx/scene/control/ToggleGroup;->clearSelectedToggle()V

    goto :goto_0
.end method
