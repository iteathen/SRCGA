.class Lcom/sun/javafx/scene/control/skin/MenuBarSkin$MenuBarButton;
.super Ljavafx/scene/control/MenuButton;
.source "MenuBarSkin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/scene/control/skin/MenuBarSkin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MenuBarButton"
.end annotation


# instance fields
.field private final itemsListener:Ljavafx/collections/ListChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/collections/ListChangeListener",
            "<",
            "Ljavafx/scene/control/MenuItem;",
            ">;"
        }
    .end annotation
.end field

.field private menu:Ljavafx/scene/control/Menu;

.field private menuBarSkin:Lcom/sun/javafx/scene/control/skin/MenuBarSkin;

.field private menuListener:Ljavafx/beans/value/ChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/value/ChangeListener",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final styleClassListener:Ljavafx/collections/ListChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/collections/ListChangeListener",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/sun/javafx/scene/control/skin/MenuBarSkin;Ljavafx/scene/control/Menu;)V
    .locals 9

    .prologue
    .line 1054
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/MenuBarSkin$MenuBarButton;
    move-object v1, p1

    .local v1, "menuBarSkin":Lcom/sun/javafx/scene/control/skin/MenuBarSkin;
    move-object v2, p2

    .local v2, "menu":Ljavafx/scene/control/Menu;
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/scene/control/Menu;->getText()Ljava/lang/String;

    move-result-object v4

    move-object v5, v2

    invoke-virtual {v5}, Ljavafx/scene/control/Menu;->getGraphic()Ljavafx/scene/Node;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljavafx/scene/control/MenuButton;-><init>(Ljava/lang/String;Ljavafx/scene/Node;)V

    .line 1055
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/sun/javafx/scene/control/skin/MenuBarSkin$MenuBarButton;->menuBarSkin:Lcom/sun/javafx/scene/control/skin/MenuBarSkin;

    .line 1056
    move-object v3, v0

    sget-object v4, Ljavafx/scene/AccessibleRole;->MENU:Ljavafx/scene/AccessibleRole;

    invoke-virtual {v3, v4}, Lcom/sun/javafx/scene/control/skin/MenuBarSkin$MenuBarButton;->setAccessibleRole(Ljavafx/scene/AccessibleRole;)V

    .line 1059
    move-object v3, v2

    invoke-virtual {v3}, Ljavafx/scene/control/Menu;->getItems()Ljavafx/collections/ObservableList;

    move-result-object v3

    move-object v4, v0

    move-object v5, v0

    invoke-static {v5}, Lcom/sun/javafx/scene/control/skin/MenuBarSkin$MenuBarButton$$Lambda$1;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/MenuBarSkin$MenuBarButton;)Ljavafx/collections/ListChangeListener;

    move-result-object v5

    move-object v7, v4

    move-object v8, v5

    move-object v4, v8

    move-object v5, v7

    move-object v6, v8

    iput-object v6, v5, Lcom/sun/javafx/scene/control/skin/MenuBarSkin$MenuBarButton;->itemsListener:Ljavafx/collections/ListChangeListener;

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->addListener(Ljavafx/collections/ListChangeListener;)V

    .line 1065
    move-object v3, v2

    invoke-virtual {v3}, Ljavafx/scene/control/Menu;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v3

    move-object v4, v0

    move-object v5, v0

    move-object v6, v2

    invoke-static {v5, v6}, Lcom/sun/javafx/scene/control/skin/MenuBarSkin$MenuBarButton$$Lambda$2;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/MenuBarSkin$MenuBarButton;Ljavafx/scene/control/Menu;)Ljavafx/collections/ListChangeListener;

    move-result-object v5

    move-object v7, v4

    move-object v8, v5

    move-object v4, v8

    move-object v5, v7

    move-object v6, v8

    iput-object v6, v5, Lcom/sun/javafx/scene/control/skin/MenuBarSkin$MenuBarButton;->styleClassListener:Ljavafx/collections/ListChangeListener;

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->addListener(Ljavafx/collections/ListChangeListener;)V

    .line 1075
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/MenuBarSkin$MenuBarButton;->idProperty()Ljavafx/beans/property/StringProperty;

    move-result-object v3

    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/scene/control/Menu;->idProperty()Ljavafx/beans/property/StringProperty;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljavafx/beans/property/StringProperty;->bind(Ljavafx/beans/value/ObservableValue;)V

    .line 1076
    return-void
.end method

.method static synthetic access$1100(Lcom/sun/javafx/scene/control/skin/MenuBarSkin$MenuBarButton;)V
    .locals 2

    .prologue
    .line 1045
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/MenuBarSkin$MenuBarButton;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/scene/control/skin/MenuBarSkin$MenuBarButton;->clearHover()V

    return-void
.end method

.method static synthetic access$600(Lcom/sun/javafx/scene/control/skin/MenuBarSkin$MenuBarButton;)V
    .locals 2

    .prologue
    .line 1045
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/MenuBarSkin$MenuBarButton;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/scene/control/skin/MenuBarSkin$MenuBarButton;->setHover()V

    return-void
.end method

.method static synthetic access$700(Lcom/sun/javafx/scene/control/skin/MenuBarSkin$MenuBarButton;)Ljavafx/beans/value/ChangeListener;
    .locals 2

    .prologue
    .line 1045
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/MenuBarSkin$MenuBarButton;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/MenuBarSkin$MenuBarButton;->menuListener:Ljavafx/beans/value/ChangeListener;

    move-object v0, v1

    .end local v0    # "x0":Lcom/sun/javafx/scene/control/skin/MenuBarSkin$MenuBarButton;
    return-object v0
.end method

.method static synthetic access$702(Lcom/sun/javafx/scene/control/skin/MenuBarSkin$MenuBarButton;Ljavafx/beans/value/ChangeListener;)Ljavafx/beans/value/ChangeListener;
    .locals 7

    .prologue
    .line 1045
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/MenuBarSkin$MenuBarButton;
    move-object v1, p1

    .local v1, "x1":Ljavafx/beans/value/ChangeListener;
    move-object v2, v0

    move-object v3, v1

    move-object v5, v2

    move-object v6, v3

    move-object v2, v6

    move-object v3, v5

    move-object v4, v6

    iput-object v4, v3, Lcom/sun/javafx/scene/control/skin/MenuBarSkin$MenuBarButton;->menuListener:Ljavafx/beans/value/ChangeListener;

    move-object v0, v2

    .end local v0    # "x0":Lcom/sun/javafx/scene/control/skin/MenuBarSkin$MenuBarButton;
    return-object v0
.end method

.method static synthetic access$800(Lcom/sun/javafx/scene/control/skin/MenuBarSkin$MenuBarButton;)Ljavafx/scene/control/Menu;
    .locals 2

    .prologue
    .line 1045
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/MenuBarSkin$MenuBarButton;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/MenuBarSkin$MenuBarButton;->menu:Ljavafx/scene/control/Menu;

    move-object v0, v1

    .end local v0    # "x0":Lcom/sun/javafx/scene/control/skin/MenuBarSkin$MenuBarButton;
    return-object v0
.end method

.method static synthetic access$802(Lcom/sun/javafx/scene/control/skin/MenuBarSkin$MenuBarButton;Ljavafx/scene/control/Menu;)Ljavafx/scene/control/Menu;
    .locals 7

    .prologue
    .line 1045
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/MenuBarSkin$MenuBarButton;
    move-object v1, p1

    .local v1, "x1":Ljavafx/scene/control/Menu;
    move-object v2, v0

    move-object v3, v1

    move-object v5, v2

    move-object v6, v3

    move-object v2, v6

    move-object v3, v5

    move-object v4, v6

    iput-object v4, v3, Lcom/sun/javafx/scene/control/skin/MenuBarSkin$MenuBarButton;->menu:Ljavafx/scene/control/Menu;

    move-object v0, v2

    .end local v0    # "x0":Lcom/sun/javafx/scene/control/skin/MenuBarSkin$MenuBarButton;
    return-object v0
.end method

.method static synthetic access$lambda$0(Lcom/sun/javafx/scene/control/skin/MenuBarSkin$MenuBarButton;Ljavafx/collections/ListChangeListener$Change;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/skin/MenuBarSkin$MenuBarButton;->lambda$new$404(Ljavafx/collections/ListChangeListener$Change;)V

    return-void
.end method

.method static synthetic access$lambda$1(Lcom/sun/javafx/scene/control/skin/MenuBarSkin$MenuBarButton;Ljavafx/scene/control/Menu;Ljavafx/collections/ListChangeListener$Change;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Lcom/sun/javafx/scene/control/skin/MenuBarSkin$MenuBarButton;->lambda$new$405(Ljavafx/scene/control/Menu;Ljavafx/collections/ListChangeListener$Change;)V

    return-void
.end method

.method private clearHover()V
    .locals 3

    .prologue
    .line 1083
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/MenuBarSkin$MenuBarButton;
    move-object v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sun/javafx/scene/control/skin/MenuBarSkin$MenuBarButton;->setHover(Z)V

    .line 1084
    return-void
.end method

.method private synthetic lambda$new$404(Ljavafx/collections/ListChangeListener$Change;)V
    .locals 5

    .prologue
    .line 1060
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/MenuBarSkin$MenuBarButton;
    move-object v1, p1

    .local v1, "c":Ljavafx/collections/ListChangeListener$Change;
    :goto_0
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/collections/ListChangeListener$Change;->next()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1061
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/MenuBarSkin$MenuBarButton;->getItems()Ljavafx/collections/ObservableList;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/collections/ListChangeListener$Change;->getRemoved()Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljavafx/collections/ObservableList;->removeAll(Ljava/util/Collection;)Z

    move-result v2

    .line 1062
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/MenuBarSkin$MenuBarButton;->getItems()Ljavafx/collections/ObservableList;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/collections/ListChangeListener$Change;->getFrom()I

    move-result v3

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/collections/ListChangeListener$Change;->getAddedSubList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljavafx/collections/ObservableList;->addAll(ILjava/util/Collection;)Z

    move-result v2

    goto :goto_0

    .line 1064
    :cond_0
    return-void
.end method

.method private synthetic lambda$new$405(Ljavafx/scene/control/Menu;Ljavafx/collections/ListChangeListener$Change;)V
    .locals 8

    .prologue
    .line 1066
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/MenuBarSkin$MenuBarButton;
    move-object v1, p1

    .local v1, "menu":Ljavafx/scene/control/Menu;
    move-object v2, p2

    .local v2, "c":Ljavafx/collections/ListChangeListener$Change;
    :goto_0
    move-object v5, v2

    invoke-virtual {v5}, Ljavafx/collections/ListChangeListener$Change;->next()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1067
    move-object v5, v2

    invoke-virtual {v5}, Ljavafx/collections/ListChangeListener$Change;->getFrom()I

    move-result v5

    move v3, v5

    .local v3, "i":I
    :goto_1
    move v5, v3

    move-object v6, v2

    invoke-virtual {v6}, Ljavafx/collections/ListChangeListener$Change;->getTo()I

    move-result v6

    if-ge v5, v6, :cond_0

    .line 1068
    move-object v5, v0

    invoke-virtual {v5}, Lcom/sun/javafx/scene/control/skin/MenuBarSkin$MenuBarButton;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v5

    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/control/Menu;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v6

    move v7, v3

    invoke-interface {v6, v7}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v6}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v5

    .line 1067
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1070
    :cond_0
    move-object v5, v2

    invoke-virtual {v5}, Ljavafx/collections/ListChangeListener$Change;->getRemoved()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v3, v5

    .end local v3    # "i":I
    :goto_2
    move-object v5, v3

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    move-object v5, v3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    move-object v4, v5

    .line 1071
    .local v4, "str":Ljava/lang/String;
    move-object v5, v0

    invoke-virtual {v5}, Lcom/sun/javafx/scene/control/skin/MenuBarSkin$MenuBarButton;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v5

    move-object v6, v4

    invoke-interface {v5, v6}, Ljavafx/collections/ObservableList;->remove(Ljava/lang/Object;)Z

    move-result v5

    .line 1072
    goto :goto_2

    .end local v4    # "str":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 1074
    :cond_2
    return-void
.end method

.method private setHover()V
    .locals 3

    .prologue
    .line 1087
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/MenuBarSkin$MenuBarButton;
    move-object v1, v0

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sun/javafx/scene/control/skin/MenuBarSkin$MenuBarButton;->setHover(Z)V

    .line 1090
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/MenuBarSkin$MenuBarButton;->menuBarSkin:Lcom/sun/javafx/scene/control/skin/MenuBarSkin;

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v1

    check-cast v1, Ljavafx/scene/control/MenuBar;

    sget-object v2, Ljavafx/scene/AccessibleAttribute;->FOCUS_NODE:Ljavafx/scene/AccessibleAttribute;

    invoke-virtual {v1, v2}, Ljavafx/scene/control/MenuBar;->notifyAccessibleAttributeChanged(Ljavafx/scene/AccessibleAttribute;)V

    .line 1091
    return-void
.end method


# virtual methods
.method dispose()V
    .locals 3

    .prologue
    .line 1094
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/MenuBarSkin$MenuBarButton;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/MenuBarSkin$MenuBarButton;->menu:Ljavafx/scene/control/Menu;

    invoke-virtual {v1}, Ljavafx/scene/control/Menu;->getItems()Ljavafx/collections/ObservableList;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/MenuBarSkin$MenuBarButton;->itemsListener:Ljavafx/collections/ListChangeListener;

    invoke-interface {v1, v2}, Ljavafx/collections/ObservableList;->removeListener(Ljavafx/collections/ListChangeListener;)V

    .line 1095
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/MenuBarSkin$MenuBarButton;->menu:Ljavafx/scene/control/Menu;

    invoke-virtual {v1}, Ljavafx/scene/control/Menu;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/MenuBarSkin$MenuBarButton;->styleClassListener:Ljavafx/collections/ListChangeListener;

    invoke-interface {v1, v2}, Ljavafx/collections/ObservableList;->removeListener(Ljavafx/collections/ListChangeListener;)V

    .line 1096
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/skin/MenuBarSkin$MenuBarButton;->idProperty()Ljavafx/beans/property/StringProperty;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/beans/property/StringProperty;->unbind()V

    .line 1097
    return-void
.end method

.method public getMenuBarSkin()Lcom/sun/javafx/scene/control/skin/MenuBarSkin;
    .locals 2

    .prologue
    .line 1079
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/MenuBarSkin$MenuBarButton;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/MenuBarSkin$MenuBarButton;->menuBarSkin:Lcom/sun/javafx/scene/control/skin/MenuBarSkin;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/MenuBarSkin$MenuBarButton;
    return-object v0
.end method

.method public varargs queryAccessibleAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .prologue
    .line 1101
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/MenuBarSkin$MenuBarButton;
    move-object v1, p1

    .local v1, "attribute":Ljavafx/scene/AccessibleAttribute;
    move-object v2, p2

    .local v2, "parameters":[Ljava/lang/Object;
    sget-object v3, Lcom/sun/javafx/scene/control/skin/MenuBarSkin$6;->$SwitchMap$javafx$scene$AccessibleAttribute:[I

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/AccessibleAttribute;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 1103
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-super {v3, v4, v5}, Ljavafx/scene/control/MenuButton;->queryAccessibleAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/MenuBarSkin$MenuBarButton;
    :goto_0
    return-object v0

    .line 1102
    .restart local v0    # "this":Lcom/sun/javafx/scene/control/skin/MenuBarSkin$MenuBarButton;
    :pswitch_0
    move-object v3, v0

    move-object v0, v3

    goto :goto_0

    .line 1101
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
