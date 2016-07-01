.class public Ljavafx/scene/control/ToggleButton;
.super Ljavafx/scene/control/ButtonBase;
.source "ToggleButton.java"

# interfaces
.implements Ljavafx/scene/control/Toggle;


# static fields
.field private static final DEFAULT_STYLE_CLASS:Ljava/lang/String; = "toggle-button"

.field private static final PSEUDO_CLASS_SELECTED:Ljavafx/css/PseudoClass;


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
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 273
    const-string v0, "selected"

    .line 274
    invoke-static {v0}, Ljavafx/css/PseudoClass;->getPseudoClass(Ljava/lang/String;)Ljavafx/css/PseudoClass;

    move-result-object v0

    sput-object v0, Ljavafx/scene/control/ToggleButton;->PSEUDO_CLASS_SELECTED:Ljavafx/css/PseudoClass;

    .line 273
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 102
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ToggleButton;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/control/ButtonBase;-><init>()V

    .line 103
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/control/ToggleButton;->initialize()V

    .line 104
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 111
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ToggleButton;
    move-object v1, p1

    .local v1, "text":Ljava/lang/String;
    move-object v2, v0

    invoke-direct {v2}, Ljavafx/scene/control/ButtonBase;-><init>()V

    .line 112
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/scene/control/ToggleButton;->setText(Ljava/lang/String;)V

    .line 113
    move-object v2, v0

    invoke-direct {v2}, Ljavafx/scene/control/ToggleButton;->initialize()V

    .line 114
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljavafx/scene/Node;)V
    .locals 5

    .prologue
    .line 122
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ToggleButton;
    move-object v1, p1

    .local v1, "text":Ljava/lang/String;
    move-object v2, p2

    .local v2, "graphic":Ljavafx/scene/Node;
    move-object v3, v0

    invoke-direct {v3}, Ljavafx/scene/control/ButtonBase;-><init>()V

    .line 123
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljavafx/scene/control/ToggleButton;->setText(Ljava/lang/String;)V

    .line 124
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljavafx/scene/control/ToggleButton;->setGraphic(Ljavafx/scene/Node;)V

    .line 125
    move-object v3, v0

    invoke-direct {v3}, Ljavafx/scene/control/ToggleButton;->initialize()V

    .line 126
    return-void
.end method

.method static synthetic access$000()Ljavafx/css/PseudoClass;
    .locals 1

    .prologue
    .line 91
    sget-object v0, Ljavafx/scene/control/ToggleButton;->PSEUDO_CLASS_SELECTED:Ljavafx/css/PseudoClass;

    return-object v0
.end method

.method private initialize()V
    .locals 7

    .prologue
    .line 129
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ToggleButton;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/ToggleButton;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x0

    const-string v5, "toggle-button"

    aput-object v5, v3, v4

    invoke-interface {v1, v2}, Ljavafx/collections/ObservableList;->setAll([Ljava/lang/Object;)Z

    move-result v1

    .line 130
    move-object v1, v0

    sget-object v2, Ljavafx/scene/AccessibleRole;->TOGGLE_BUTTON:Ljavafx/scene/AccessibleRole;

    invoke-virtual {v1, v2}, Ljavafx/scene/control/ToggleButton;->setAccessibleRole(Ljavafx/scene/AccessibleRole;)V

    .line 135
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/ToggleButton;->alignmentProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v1

    check-cast v1, Ljavafx/css/StyleableProperty;

    const/4 v2, 0x0

    sget-object v3, Ljavafx/geometry/Pos;->CENTER:Ljavafx/geometry/Pos;

    invoke-interface {v1, v2, v3}, Ljavafx/css/StyleableProperty;->applyStyle(Ljavafx/css/StyleOrigin;Ljava/lang/Object;)V

    .line 136
    move-object v1, v0

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljavafx/scene/control/ToggleButton;->setMnemonicParsing(Z)V

    .line 137
    return-void
.end method


# virtual methods
.method protected createDefaultSkin()Ljavafx/scene/control/Skin;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/scene/control/Skin",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 262
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ToggleButton;
    new-instance v1, Lcom/sun/javafx/scene/control/skin/ToggleButtonSkin;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/skin/ToggleButtonSkin;-><init>(Ljavafx/scene/control/ToggleButton;)V

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/ToggleButton;
    return-object v0
.end method

.method public fire()V
    .locals 5

    .prologue
    .line 254
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ToggleButton;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/ToggleButton;->isDisabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 255
    move-object v1, v0

    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/ToggleButton;->isSelected()Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v1, v2}, Ljavafx/scene/control/ToggleButton;->setSelected(Z)V

    .line 256
    move-object v1, v0

    new-instance v2, Ljavafx/event/ActionEvent;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljavafx/event/ActionEvent;-><init>()V

    invoke-virtual {v1, v2}, Ljavafx/scene/control/ToggleButton;->fireEvent(Ljavafx/event/Event;)V

    .line 258
    :cond_0
    return-void

    .line 255
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public final getToggleGroup()Ljavafx/scene/control/ToggleGroup;
    .locals 2

    .prologue
    .line 200
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ToggleButton;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/ToggleButton;->toggleGroup:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/ToggleButton;
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/control/ToggleButton;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/ToggleButton;->toggleGroup:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/scene/control/ToggleGroup;

    goto :goto_0
.end method

.method protected impl_cssGetAlignmentInitialValue()Ljavafx/geometry/Pos;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 283
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ToggleButton;
    sget-object v1, Ljavafx/geometry/Pos;->CENTER:Ljavafx/geometry/Pos;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/ToggleButton;
    return-object v0
.end method

.method public final isSelected()Z
    .locals 2

    .prologue
    .line 153
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ToggleButton;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/ToggleButton;->selected:Ljavafx/beans/property/BooleanProperty;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move v0, v1

    .end local v0    # "this":Ljavafx/scene/control/ToggleButton;
    return v0

    .restart local v0    # "this":Ljavafx/scene/control/ToggleButton;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/ToggleButton;->selected:Ljavafx/beans/property/BooleanProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/BooleanProperty;->get()Z

    move-result v1

    goto :goto_0
.end method

.method public varargs queryAccessibleAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .prologue
    .line 295
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ToggleButton;
    move-object v1, p1

    .local v1, "attribute":Ljavafx/scene/AccessibleAttribute;
    move-object v2, p2

    .local v2, "parameters":[Ljava/lang/Object;
    sget-object v3, Ljavafx/scene/control/ToggleButton$3;->$SwitchMap$javafx$scene$AccessibleAttribute:[I

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/AccessibleAttribute;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 297
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-super {v3, v4, v5}, Ljavafx/scene/control/ButtonBase;->queryAccessibleAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Ljavafx/scene/control/ToggleButton;
    :goto_0
    return-object v0

    .line 296
    .restart local v0    # "this":Ljavafx/scene/control/ToggleButton;
    :pswitch_0
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/ToggleButton;->isSelected()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    move-object v0, v3

    goto :goto_0

    .line 295
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public final selectedProperty()Ljavafx/beans/property/BooleanProperty;
    .locals 6

    .prologue
    .line 157
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ToggleButton;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/ToggleButton;->selected:Ljavafx/beans/property/BooleanProperty;

    if-nez v1, :cond_0

    .line 158
    move-object v1, v0

    new-instance v2, Ljavafx/scene/control/ToggleButton$1;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/control/ToggleButton$1;-><init>(Ljavafx/scene/control/ToggleButton;)V

    iput-object v2, v1, Ljavafx/scene/control/ToggleButton;->selected:Ljavafx/beans/property/BooleanProperty;

    .line 186
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/ToggleButton;->selected:Ljavafx/beans/property/BooleanProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/ToggleButton;
    return-object v0
.end method

.method public final setSelected(Z)V
    .locals 4

    .prologue
    .line 149
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ToggleButton;
    move v1, p1

    .local v1, "value":Z
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/ToggleButton;->selectedProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v2

    move v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/BooleanProperty;->set(Z)V

    .line 150
    return-void
.end method

.method public final setToggleGroup(Ljavafx/scene/control/ToggleGroup;)V
    .locals 4

    .prologue
    .line 196
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ToggleButton;
    move-object v1, p1

    .local v1, "value":Ljavafx/scene/control/ToggleGroup;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/ToggleButton;->toggleGroupProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 197
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
    .line 204
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ToggleButton;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/ToggleButton;->toggleGroup:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    .line 205
    move-object v1, v0

    new-instance v2, Ljavafx/scene/control/ToggleButton$2;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/control/ToggleButton$2;-><init>(Ljavafx/scene/control/ToggleButton;)V

    iput-object v2, v1, Ljavafx/scene/control/ToggleButton;->toggleGroup:Ljavafx/beans/property/ObjectProperty;

    .line 242
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/ToggleButton;->toggleGroup:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/ToggleButton;
    return-object v0
.end method
