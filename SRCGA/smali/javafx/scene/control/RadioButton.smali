.class public Ljavafx/scene/control/RadioButton;
.super Ljavafx/scene/control/ToggleButton;
.source "RadioButton.java"


# static fields
.field private static final DEFAULT_STYLE_CLASS:Ljava/lang/String; = "radio-button"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 76
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/RadioButton;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/control/ToggleButton;-><init>()V

    .line 77
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/control/RadioButton;->initialize()V

    .line 78
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 85
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/RadioButton;
    move-object v1, p1

    .local v1, "text":Ljava/lang/String;
    move-object v2, v0

    invoke-direct {v2}, Ljavafx/scene/control/ToggleButton;-><init>()V

    .line 86
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/scene/control/RadioButton;->setText(Ljava/lang/String;)V

    .line 87
    move-object v2, v0

    invoke-direct {v2}, Ljavafx/scene/control/RadioButton;->initialize()V

    .line 88
    return-void
.end method

.method private initialize()V
    .locals 7

    .prologue
    .line 91
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/RadioButton;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/RadioButton;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x0

    const-string v5, "radio-button"

    aput-object v5, v3, v4

    invoke-interface {v1, v2}, Ljavafx/collections/ObservableList;->setAll([Ljava/lang/Object;)Z

    move-result v1

    .line 92
    move-object v1, v0

    sget-object v2, Ljavafx/scene/AccessibleRole;->RADIO_BUTTON:Ljavafx/scene/AccessibleRole;

    invoke-virtual {v1, v2}, Ljavafx/scene/control/RadioButton;->setAccessibleRole(Ljavafx/scene/AccessibleRole;)V

    .line 97
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/RadioButton;->alignmentProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v1

    check-cast v1, Ljavafx/css/StyleableProperty;

    const/4 v2, 0x0

    sget-object v3, Ljavafx/geometry/Pos;->CENTER_LEFT:Ljavafx/geometry/Pos;

    invoke-interface {v1, v2, v3}, Ljavafx/css/StyleableProperty;->applyStyle(Ljavafx/css/StyleOrigin;Ljava/lang/Object;)V

    .line 98
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
    .line 119
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/RadioButton;
    new-instance v1, Lcom/sun/javafx/scene/control/skin/RadioButtonSkin;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/skin/RadioButtonSkin;-><init>(Ljavafx/scene/control/RadioButton;)V

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/RadioButton;
    return-object v0
.end method

.method public fire()V
    .locals 2

    .prologue
    .line 112
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/RadioButton;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/RadioButton;->getToggleGroup()Ljavafx/scene/control/ToggleGroup;

    move-result-object v1

    if-eqz v1, :cond_0

    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/RadioButton;->isSelected()Z

    move-result v1

    if-nez v1, :cond_1

    .line 113
    :cond_0
    move-object v1, v0

    invoke-super {v1}, Ljavafx/scene/control/ToggleButton;->fire()V

    .line 115
    :cond_1
    return-void
.end method

.method protected impl_cssGetAlignmentInitialValue()Ljavafx/geometry/Pos;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 139
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/RadioButton;
    sget-object v1, Ljavafx/geometry/Pos;->CENTER_LEFT:Ljavafx/geometry/Pos;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/RadioButton;
    return-object v0
.end method

.method public varargs queryAccessibleAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .prologue
    .line 151
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/RadioButton;
    move-object v1, p1

    .local v1, "attribute":Ljavafx/scene/AccessibleAttribute;
    move-object v2, p2

    .local v2, "parameters":[Ljava/lang/Object;
    sget-object v3, Ljavafx/scene/control/RadioButton$1;->$SwitchMap$javafx$scene$AccessibleAttribute:[I

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/AccessibleAttribute;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 153
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-super {v3, v4, v5}, Ljavafx/scene/control/ToggleButton;->queryAccessibleAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Ljavafx/scene/control/RadioButton;
    :goto_0
    return-object v0

    .line 152
    .restart local v0    # "this":Ljavafx/scene/control/RadioButton;
    :pswitch_0
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/RadioButton;->isSelected()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    move-object v0, v3

    goto :goto_0

    .line 151
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
