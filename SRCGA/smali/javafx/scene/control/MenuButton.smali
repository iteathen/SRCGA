.class public Ljavafx/scene/control/MenuButton;
.super Ljavafx/scene/control/ButtonBase;
.source "MenuButton.java"


# static fields
.field private static final DEFAULT_STYLE_CLASS:Ljava/lang/String; = "menu-button"

.field public static final ON_HIDDEN:Ljavafx/event/EventType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/event/EventType",
            "<",
            "Ljavafx/event/Event;",
            ">;"
        }
    .end annotation
.end field

.field public static final ON_HIDING:Ljavafx/event/EventType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/event/EventType",
            "<",
            "Ljavafx/event/Event;",
            ">;"
        }
    .end annotation
.end field

.field public static final ON_SHOWING:Ljavafx/event/EventType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/event/EventType",
            "<",
            "Ljavafx/event/Event;",
            ">;"
        }
    .end annotation
.end field

.field public static final ON_SHOWN:Ljavafx/event/EventType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/event/EventType",
            "<",
            "Ljavafx/event/Event;",
            ">;"
        }
    .end annotation
.end field

.field private static final PSEUDO_CLASS_OPENVERTICALLY:Ljavafx/css/PseudoClass;

.field private static final PSEUDO_CLASS_SHOWING:Ljavafx/css/PseudoClass;


# instance fields
.field private final items:Ljavafx/collections/ObservableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/collections/ObservableList",
            "<",
            "Ljavafx/scene/control/MenuItem;",
            ">;"
        }
    .end annotation
.end field

.field private popupSide:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/geometry/Side;",
            ">;"
        }
    .end annotation
.end field

.field private showing:Ljavafx/beans/property/ReadOnlyBooleanWrapper;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 93
    new-instance v0, Ljavafx/event/EventType;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    sget-object v2, Ljavafx/event/Event;->ANY:Ljavafx/event/EventType;

    const-string v3, "MENU_BUTTON_ON_SHOWING"

    invoke-direct {v1, v2, v3}, Ljavafx/event/EventType;-><init>(Ljavafx/event/EventType;Ljava/lang/String;)V

    sput-object v0, Ljavafx/scene/control/MenuButton;->ON_SHOWING:Ljavafx/event/EventType;

    .line 100
    new-instance v0, Ljavafx/event/EventType;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    sget-object v2, Ljavafx/event/Event;->ANY:Ljavafx/event/EventType;

    const-string v3, "MENU_BUTTON_ON_SHOWN"

    invoke-direct {v1, v2, v3}, Ljavafx/event/EventType;-><init>(Ljavafx/event/EventType;Ljava/lang/String;)V

    sput-object v0, Ljavafx/scene/control/MenuButton;->ON_SHOWN:Ljavafx/event/EventType;

    .line 107
    new-instance v0, Ljavafx/event/EventType;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    sget-object v2, Ljavafx/event/Event;->ANY:Ljavafx/event/EventType;

    const-string v3, "MENU_BUTTON_ON_HIDING"

    invoke-direct {v1, v2, v3}, Ljavafx/event/EventType;-><init>(Ljavafx/event/EventType;Ljava/lang/String;)V

    sput-object v0, Ljavafx/scene/control/MenuButton;->ON_HIDING:Ljavafx/event/EventType;

    .line 114
    new-instance v0, Ljavafx/event/EventType;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    sget-object v2, Ljavafx/event/Event;->ANY:Ljavafx/event/EventType;

    const-string v3, "MENU_BUTTON_ON_HIDDEN"

    invoke-direct {v1, v2, v3}, Ljavafx/event/EventType;-><init>(Ljavafx/event/EventType;Ljava/lang/String;)V

    sput-object v0, Ljavafx/scene/control/MenuButton;->ON_HIDDEN:Ljavafx/event/EventType;

    .line 324
    const-string v0, "openvertically"

    .line 325
    invoke-static {v0}, Ljavafx/css/PseudoClass;->getPseudoClass(Ljava/lang/String;)Ljavafx/css/PseudoClass;

    move-result-object v0

    sput-object v0, Ljavafx/scene/control/MenuButton;->PSEUDO_CLASS_OPENVERTICALLY:Ljavafx/css/PseudoClass;

    .line 326
    const-string v0, "showing"

    .line 327
    invoke-static {v0}, Ljavafx/css/PseudoClass;->getPseudoClass(Ljava/lang/String;)Ljavafx/css/PseudoClass;

    move-result-object v0

    sput-object v0, Ljavafx/scene/control/MenuButton;->PSEUDO_CLASS_SHOWING:Ljavafx/css/PseudoClass;

    .line 326
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    .line 129
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/MenuButton;
    move-object v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Ljavafx/scene/control/MenuButton;-><init>(Ljava/lang/String;Ljavafx/scene/Node;)V

    .line 130
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 140
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/MenuButton;
    move-object v1, p1

    .local v1, "text":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Ljavafx/scene/control/MenuButton;-><init>(Ljava/lang/String;Ljavafx/scene/Node;)V

    .line 141
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljavafx/scene/Node;)V
    .locals 7

    .prologue
    .line 151
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/MenuButton;
    move-object v1, p1

    .local v1, "text":Ljava/lang/String;
    move-object v2, p2

    .local v2, "graphic":Ljavafx/scene/Node;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    const/4 v6, 0x0

    check-cast v6, [Ljavafx/scene/control/MenuItem;

    invoke-direct {v3, v4, v5, v6}, Ljavafx/scene/control/MenuButton;-><init>(Ljava/lang/String;Ljavafx/scene/Node;[Ljavafx/scene/control/MenuItem;)V

    .line 152
    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/String;Ljavafx/scene/Node;[Ljavafx/scene/control/MenuItem;)V
    .locals 12

    .prologue
    .line 164
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/MenuButton;
    move-object v1, p1

    .local v1, "text":Ljava/lang/String;
    move-object v2, p2

    .local v2, "graphic":Ljavafx/scene/Node;
    move-object v3, p3

    .local v3, "items":[Ljavafx/scene/control/MenuItem;
    move-object v4, v0

    invoke-direct {v4}, Ljavafx/scene/control/ButtonBase;-><init>()V

    .line 188
    move-object v4, v0

    invoke-static {}, Ljavafx/collections/FXCollections;->observableArrayList()Ljavafx/collections/ObservableList;

    move-result-object v5

    iput-object v5, v4, Ljavafx/scene/control/MenuButton;->items:Ljavafx/collections/ObservableList;

    .line 208
    move-object v4, v0

    new-instance v5, Ljavafx/scene/control/MenuButton$1;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    move-object v7, v0

    move-object v8, v0

    const-string v9, "showing"

    const/4 v10, 0x0

    invoke-direct {v6, v7, v8, v9, v10}, Ljavafx/scene/control/MenuButton$1;-><init>(Ljavafx/scene/control/MenuButton;Ljava/lang/Object;Ljava/lang/String;Z)V

    iput-object v5, v4, Ljavafx/scene/control/MenuButton;->showing:Ljavafx/beans/property/ReadOnlyBooleanWrapper;

    .line 165
    move-object v4, v1

    if-eqz v4, :cond_0

    .line 166
    move-object v4, v0

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljavafx/scene/control/MenuButton;->setText(Ljava/lang/String;)V

    .line 168
    :cond_0
    move-object v4, v2

    if-eqz v4, :cond_1

    .line 169
    move-object v4, v0

    move-object v5, v2

    invoke-virtual {v4, v5}, Ljavafx/scene/control/MenuButton;->setGraphic(Ljavafx/scene/Node;)V

    .line 171
    :cond_1
    move-object v4, v3

    if-eqz v4, :cond_2

    .line 172
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/control/MenuButton;->getItems()Ljavafx/collections/ObservableList;

    move-result-object v4

    move-object v5, v3

    invoke-interface {v4, v5}, Ljavafx/collections/ObservableList;->addAll([Ljava/lang/Object;)Z

    move-result v4

    .line 175
    :cond_2
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/control/MenuButton;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    const/4 v7, 0x0

    const-string v8, "menu-button"

    aput-object v8, v6, v7

    invoke-interface {v4, v5}, Ljavafx/collections/ObservableList;->setAll([Ljava/lang/Object;)Z

    move-result v4

    .line 176
    move-object v4, v0

    sget-object v5, Ljavafx/scene/AccessibleRole;->MENU_BUTTON:Ljavafx/scene/AccessibleRole;

    invoke-virtual {v4, v5}, Ljavafx/scene/control/MenuButton;->setAccessibleRole(Ljavafx/scene/AccessibleRole;)V

    .line 177
    move-object v4, v0

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljavafx/scene/control/MenuButton;->setMnemonicParsing(Z)V

    .line 180
    move-object v4, v0

    sget-object v5, Ljavafx/scene/control/MenuButton;->PSEUDO_CLASS_OPENVERTICALLY:Ljavafx/css/PseudoClass;

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Ljavafx/scene/control/MenuButton;->pseudoClassStateChanged(Ljavafx/css/PseudoClass;Z)V

    .line 181
    return-void
.end method

.method static synthetic access$000()Ljavafx/css/PseudoClass;
    .locals 1

    .prologue
    .line 79
    sget-object v0, Ljavafx/scene/control/MenuButton;->PSEUDO_CLASS_SHOWING:Ljavafx/css/PseudoClass;

    return-object v0
.end method

.method static synthetic access$100()Ljavafx/css/PseudoClass;
    .locals 1

    .prologue
    .line 79
    sget-object v0, Ljavafx/scene/control/MenuButton;->PSEUDO_CLASS_OPENVERTICALLY:Ljavafx/css/PseudoClass;

    return-object v0
.end method

.method private setShowing(Z)V
    .locals 7

    .prologue
    .line 216
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/MenuButton;
    move v1, p1

    .local v1, "value":Z
    move-object v2, v0

    move v3, v1

    if-eqz v3, :cond_0

    new-instance v3, Ljavafx/event/Event;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    sget-object v5, Ljavafx/scene/control/ComboBoxBase;->ON_SHOWING:Ljavafx/event/EventType;

    invoke-direct {v4, v5}, Ljavafx/event/Event;-><init>(Ljavafx/event/EventType;)V

    :goto_0
    invoke-static {v2, v3}, Ljavafx/event/Event;->fireEvent(Ljavafx/event/EventTarget;Ljavafx/event/Event;)V

    .line 218
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/MenuButton;->showing:Ljavafx/beans/property/ReadOnlyBooleanWrapper;

    move v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ReadOnlyBooleanWrapper;->set(Z)V

    .line 219
    move-object v2, v0

    move v3, v1

    if-eqz v3, :cond_1

    new-instance v3, Ljavafx/event/Event;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    sget-object v5, Ljavafx/scene/control/ComboBoxBase;->ON_SHOWN:Ljavafx/event/EventType;

    invoke-direct {v4, v5}, Ljavafx/event/Event;-><init>(Ljavafx/event/EventType;)V

    :goto_1
    invoke-static {v2, v3}, Ljavafx/event/Event;->fireEvent(Ljavafx/event/EventTarget;Ljavafx/event/Event;)V

    .line 221
    return-void

    .line 216
    :cond_0
    new-instance v3, Ljavafx/event/Event;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    sget-object v5, Ljavafx/scene/control/ComboBoxBase;->ON_HIDING:Ljavafx/event/EventType;

    invoke-direct {v4, v5}, Ljavafx/event/Event;-><init>(Ljavafx/event/EventType;)V

    goto :goto_0

    .line 219
    :cond_1
    new-instance v3, Ljavafx/event/Event;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    sget-object v5, Ljavafx/scene/control/ComboBoxBase;->ON_HIDDEN:Ljavafx/event/EventType;

    invoke-direct {v4, v5}, Ljavafx/event/Event;-><init>(Ljavafx/event/EventType;)V

    goto :goto_1
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
    .line 314
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/MenuButton;
    new-instance v1, Lcom/sun/javafx/scene/control/skin/MenuButtonSkin;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/skin/MenuButtonSkin;-><init>(Ljavafx/scene/control/MenuButton;)V

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/MenuButton;
    return-object v0
.end method

.method public varargs executeAccessibleAction(Ljavafx/scene/AccessibleAction;[Ljava/lang/Object;)V
    .locals 6

    .prologue
    .line 337
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/MenuButton;
    move-object v1, p1

    .local v1, "action":Ljavafx/scene/AccessibleAction;
    move-object v2, p2

    .local v2, "parameters":[Ljava/lang/Object;
    sget-object v3, Ljavafx/scene/control/MenuButton$3;->$SwitchMap$javafx$scene$AccessibleAction:[I

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/AccessibleAction;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 345
    move-object v3, v0

    move-object v4, v1

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-super {v3, v4, v5}, Ljavafx/scene/control/ButtonBase;->executeAccessibleAction(Ljavafx/scene/AccessibleAction;[Ljava/lang/Object;)V

    .line 347
    :goto_0
    return-void

    .line 339
    :pswitch_0
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/MenuButton;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 340
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/MenuButton;->hide()V

    goto :goto_0

    .line 342
    :cond_0
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/MenuButton;->show()V

    .line 344
    goto :goto_0

    .line 337
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public fire()V
    .locals 5

    .prologue
    .line 307
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/MenuButton;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/MenuButton;->isDisabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 308
    move-object v1, v0

    new-instance v2, Ljavafx/event/ActionEvent;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljavafx/event/ActionEvent;-><init>()V

    invoke-virtual {v1, v2}, Ljavafx/scene/control/MenuButton;->fireEvent(Ljavafx/event/Event;)V

    .line 310
    :cond_0
    return-void
.end method

.method public final getItems()Ljavafx/collections/ObservableList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/collections/ObservableList",
            "<",
            "Ljavafx/scene/control/MenuItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 201
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/MenuButton;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/MenuButton;->items:Ljavafx/collections/ObservableList;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/MenuButton;
    return-object v0
.end method

.method public final getPopupSide()Ljavafx/geometry/Side;
    .locals 2

    .prologue
    .line 245
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/MenuButton;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/MenuButton;->popupSide:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    sget-object v1, Ljavafx/geometry/Side;->BOTTOM:Ljavafx/geometry/Side;

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/MenuButton;
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/control/MenuButton;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/MenuButton;->popupSide:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/geometry/Side;

    goto :goto_0
.end method

.method public hide()V
    .locals 3

    .prologue
    .line 297
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/MenuButton;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/MenuButton;->showing:Ljavafx/beans/property/ReadOnlyBooleanWrapper;

    invoke-virtual {v1}, Ljavafx/beans/property/ReadOnlyBooleanWrapper;->isBound()Z

    move-result v1

    if-nez v1, :cond_0

    .line 298
    move-object v1, v0

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljavafx/scene/control/MenuButton;->setShowing(Z)V

    .line 300
    :cond_0
    return-void
.end method

.method public final isShowing()Z
    .locals 2

    .prologue
    .line 222
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/MenuButton;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/MenuButton;->showing:Ljavafx/beans/property/ReadOnlyBooleanWrapper;

    invoke-virtual {v1}, Ljavafx/beans/property/ReadOnlyBooleanWrapper;->get()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Ljavafx/scene/control/MenuButton;
    return v0
.end method

.method public final popupSideProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/geometry/Side;",
            ">;"
        }
    .end annotation

    .prologue
    .line 249
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/MenuButton;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/MenuButton;->popupSide:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    .line 250
    move-object v1, v0

    new-instance v2, Ljavafx/scene/control/MenuButton$2;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    sget-object v5, Ljavafx/geometry/Side;->BOTTOM:Ljavafx/geometry/Side;

    invoke-direct {v3, v4, v5}, Ljavafx/scene/control/MenuButton$2;-><init>(Ljavafx/scene/control/MenuButton;Ljavafx/geometry/Side;)V

    iput-object v2, v1, Ljavafx/scene/control/MenuButton;->popupSide:Ljavafx/beans/property/ObjectProperty;

    .line 268
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/MenuButton;->popupSide:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/MenuButton;
    return-object v0
.end method

.method public final setPopupSide(Ljavafx/geometry/Side;)V
    .locals 4

    .prologue
    .line 241
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/MenuButton;
    move-object v1, p1

    .local v1, "value":Ljavafx/geometry/Side;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/MenuButton;->popupSideProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 242
    return-void
.end method

.method public show()V
    .locals 3

    .prologue
    .line 285
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/MenuButton;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/MenuButton;->isDisabled()Z

    move-result v1

    if-nez v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/MenuButton;->showing:Ljavafx/beans/property/ReadOnlyBooleanWrapper;

    invoke-virtual {v1}, Ljavafx/beans/property/ReadOnlyBooleanWrapper;->isBound()Z

    move-result v1

    if-nez v1, :cond_0

    .line 286
    move-object v1, v0

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljavafx/scene/control/MenuButton;->setShowing(Z)V

    .line 288
    :cond_0
    return-void
.end method

.method public final showingProperty()Ljavafx/beans/property/ReadOnlyBooleanProperty;
    .locals 2

    .prologue
    .line 223
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/MenuButton;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/MenuButton;->showing:Ljavafx/beans/property/ReadOnlyBooleanWrapper;

    invoke-virtual {v1}, Ljavafx/beans/property/ReadOnlyBooleanWrapper;->getReadOnlyProperty()Ljavafx/beans/property/ReadOnlyBooleanProperty;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/MenuButton;
    return-object v0
.end method
