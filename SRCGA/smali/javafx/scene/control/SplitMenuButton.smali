.class public Ljavafx/scene/control/SplitMenuButton;
.super Ljavafx/scene/control/MenuButton;
.source "SplitMenuButton.java"


# static fields
.field private static final DEFAULT_STYLE_CLASS:Ljava/lang/String; = "split-menu-button"


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 85
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/SplitMenuButton;
    move-object v1, v0

    const/4 v2, 0x0

    check-cast v2, [Ljavafx/scene/control/MenuItem;

    invoke-direct {v1, v2}, Ljavafx/scene/control/SplitMenuButton;-><init>([Ljavafx/scene/control/MenuItem;)V

    .line 86
    return-void
.end method

.method public varargs constructor <init>([Ljavafx/scene/control/MenuItem;)V
    .locals 8

    .prologue
    .line 93
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/SplitMenuButton;
    move-object v1, p1

    .local v1, "items":[Ljavafx/scene/control/MenuItem;
    move-object v2, v0

    invoke-direct {v2}, Ljavafx/scene/control/MenuButton;-><init>()V

    .line 94
    move-object v2, v1

    if-eqz v2, :cond_0

    .line 95
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/SplitMenuButton;->getItems()Ljavafx/collections/ObservableList;

    move-result-object v2

    move-object v3, v1

    invoke-interface {v2, v3}, Ljavafx/collections/ObservableList;->addAll([Ljava/lang/Object;)Z

    move-result v2

    .line 98
    :cond_0
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/SplitMenuButton;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x0

    const-string v6, "split-menu-button"

    aput-object v6, v4, v5

    invoke-interface {v2, v3}, Ljavafx/collections/ObservableList;->setAll([Ljava/lang/Object;)Z

    move-result v2

    .line 99
    move-object v2, v0

    sget-object v3, Ljavafx/scene/AccessibleRole;->SPLIT_MENU_BUTTON:Ljavafx/scene/AccessibleRole;

    invoke-virtual {v2, v3}, Ljavafx/scene/control/SplitMenuButton;->setAccessibleRole(Ljavafx/scene/AccessibleRole;)V

    .line 100
    move-object v2, v0

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljavafx/scene/control/SplitMenuButton;->setMnemonicParsing(Z)V

    .line 101
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
    .line 125
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/SplitMenuButton;
    new-instance v1, Lcom/sun/javafx/scene/control/skin/SplitMenuButtonSkin;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/skin/SplitMenuButtonSkin;-><init>(Ljavafx/scene/control/SplitMenuButton;)V

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/SplitMenuButton;
    return-object v0
.end method

.method public varargs executeAccessibleAction(Ljavafx/scene/AccessibleAction;[Ljava/lang/Object;)V
    .locals 6

    .prologue
    .line 154
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/SplitMenuButton;
    move-object v1, p1

    .local v1, "action":Ljavafx/scene/AccessibleAction;
    move-object v2, p2

    .local v2, "parameters":[Ljava/lang/Object;
    sget-object v3, Ljavafx/scene/control/SplitMenuButton$1;->$SwitchMap$javafx$scene$AccessibleAction:[I

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/AccessibleAction;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 164
    move-object v3, v0

    move-object v4, v1

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-super {v3, v4, v5}, Ljavafx/scene/control/MenuButton;->executeAccessibleAction(Ljavafx/scene/AccessibleAction;[Ljava/lang/Object;)V

    .line 166
    :goto_0
    return-void

    .line 156
    :pswitch_0
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/SplitMenuButton;->fire()V

    .line 157
    goto :goto_0

    .line 159
    :pswitch_1
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/SplitMenuButton;->show()V

    .line 160
    goto :goto_0

    .line 162
    :pswitch_2
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/SplitMenuButton;->hide()V

    .line 163
    goto :goto_0

    .line 154
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public fire()V
    .locals 5

    .prologue
    .line 112
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/SplitMenuButton;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/SplitMenuButton;->isDisabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 113
    move-object v1, v0

    new-instance v2, Ljavafx/event/ActionEvent;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljavafx/event/ActionEvent;-><init>()V

    invoke-virtual {v1, v2}, Ljavafx/scene/control/SplitMenuButton;->fireEvent(Ljavafx/event/Event;)V

    .line 115
    :cond_0
    return-void
.end method

.method public varargs queryAccessibleAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .prologue
    .line 146
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/SplitMenuButton;
    move-object v1, p1

    .local v1, "attribute":Ljavafx/scene/AccessibleAttribute;
    move-object v2, p2

    .local v2, "parameters":[Ljava/lang/Object;
    sget-object v3, Ljavafx/scene/control/SplitMenuButton$1;->$SwitchMap$javafx$scene$AccessibleAttribute:[I

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/AccessibleAttribute;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 148
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-super {v3, v4, v5}, Ljavafx/scene/control/MenuButton;->queryAccessibleAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Ljavafx/scene/control/SplitMenuButton;
    :goto_0
    return-object v0

    .line 147
    .restart local v0    # "this":Ljavafx/scene/control/SplitMenuButton;
    :pswitch_0
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/SplitMenuButton;->isShowing()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    move-object v0, v3

    goto :goto_0

    .line 146
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
