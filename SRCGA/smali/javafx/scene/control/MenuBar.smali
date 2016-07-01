.class public Ljavafx/scene/control/MenuBar;
.super Ljavafx/scene/control/Control;
.source "MenuBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavafx/scene/control/MenuBar$StyleableProperties;
    }
.end annotation

.annotation runtime Ljavafx/beans/DefaultProperty;
    value = "menus"
.end annotation


# static fields
.field private static final DEFAULT_STYLE_CLASS:Ljava/lang/String; = "menu-bar"


# instance fields
.field private menus:Ljavafx/collections/ObservableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/collections/ObservableList",
            "<",
            "Ljavafx/scene/control/Menu;",
            ">;"
        }
    .end annotation
.end field

.field private useSystemMenuBar:Ljavafx/beans/property/BooleanProperty;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 88
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/MenuBar;
    move-object v1, v0

    const/4 v2, 0x0

    check-cast v2, [Ljavafx/scene/control/Menu;

    invoke-direct {v1, v2}, Ljavafx/scene/control/MenuBar;-><init>([Ljavafx/scene/control/Menu;)V

    .line 89
    return-void
.end method

.method public varargs constructor <init>([Ljavafx/scene/control/Menu;)V
    .locals 8

    .prologue
    .line 97
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/MenuBar;
    move-object v1, p1

    .local v1, "menus":[Ljavafx/scene/control/Menu;
    move-object v2, v0

    invoke-direct {v2}, Ljavafx/scene/control/Control;-><init>()V

    .line 119
    move-object v2, v0

    invoke-static {}, Ljavafx/collections/FXCollections;->observableArrayList()Ljavafx/collections/ObservableList;

    move-result-object v3

    iput-object v3, v2, Ljavafx/scene/control/MenuBar;->menus:Ljavafx/collections/ObservableList;

    .line 98
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/MenuBar;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x0

    const-string v6, "menu-bar"

    aput-object v6, v4, v5

    invoke-interface {v2, v3}, Ljavafx/collections/ObservableList;->setAll([Ljava/lang/Object;)Z

    move-result v2

    .line 99
    move-object v2, v0

    sget-object v3, Ljavafx/scene/AccessibleRole;->MENU_BAR:Ljavafx/scene/AccessibleRole;

    invoke-virtual {v2, v3}, Ljavafx/scene/control/MenuBar;->setAccessibleRole(Ljavafx/scene/AccessibleRole;)V

    .line 101
    move-object v2, v1

    if-eqz v2, :cond_0

    .line 102
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/MenuBar;->getMenus()Ljavafx/collections/ObservableList;

    move-result-object v2

    move-object v3, v1

    invoke-interface {v2, v3}, Ljavafx/collections/ObservableList;->addAll([Ljava/lang/Object;)Z

    move-result v2

    .line 109
    :cond_0
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/MenuBar;->focusTraversableProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v2

    check-cast v2, Ljavafx/css/StyleableProperty;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v2, v3, v4}, Ljavafx/css/StyleableProperty;->applyStyle(Ljavafx/css/StyleOrigin;Ljava/lang/Object;)V

    .line 110
    return-void
.end method

.method static synthetic access$100(Ljavafx/scene/control/MenuBar;)Ljavafx/beans/property/BooleanProperty;
    .locals 2

    .prologue
    .line 76
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/control/MenuBar;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/MenuBar;->useSystemMenuBar:Ljavafx/beans/property/BooleanProperty;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/control/MenuBar;
    return-object v0
.end method

.method public static getClassCssMetaData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljavafx/css/CssMetaData",
            "<+",
            "Ljavafx/css/Styleable;",
            "*>;>;"
        }
    .end annotation

    .prologue
    .line 225
    # getter for: Ljavafx/scene/control/MenuBar$StyleableProperties;->STYLEABLES:Ljava/util/List;
    invoke-static {}, Ljavafx/scene/control/MenuBar$StyleableProperties;->access$200()Ljava/util/List;

    move-result-object v0

    return-object v0
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
    .line 185
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/MenuBar;
    new-instance v1, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;-><init>(Ljavafx/scene/control/MenuBar;)V

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/MenuBar;
    return-object v0
.end method

.method public getControlCssMetaData()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljavafx/css/CssMetaData",
            "<+",
            "Ljavafx/css/Styleable;",
            "*>;>;"
        }
    .end annotation

    .prologue
    .line 234
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/MenuBar;
    invoke-static {}, Ljavafx/scene/control/MenuBar;->getClassCssMetaData()Ljava/util/List;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/MenuBar;
    return-object v0
.end method

.method public final getMenus()Ljavafx/collections/ObservableList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/collections/ObservableList",
            "<",
            "Ljavafx/scene/control/Menu;",
            ">;"
        }
    .end annotation

    .prologue
    .line 180
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/MenuBar;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/MenuBar;->menus:Ljavafx/collections/ObservableList;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/MenuBar;
    return-object v0
.end method

.method protected impl_cssGetFocusTraversableInitialValue()Ljava/lang/Boolean;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 246
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/MenuBar;
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/MenuBar;
    return-object v0
.end method

.method public final isUseSystemMenuBar()Z
    .locals 2

    .prologue
    .line 164
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/MenuBar;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/MenuBar;->useSystemMenuBar:Ljavafx/beans/property/BooleanProperty;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move v0, v1

    .end local v0    # "this":Ljavafx/scene/control/MenuBar;
    return v0

    .restart local v0    # "this":Ljavafx/scene/control/MenuBar;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/MenuBar;->useSystemMenuBar:Ljavafx/beans/property/BooleanProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/BooleanProperty;->getValue()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_0
.end method

.method public final setUseSystemMenuBar(Z)V
    .locals 4

    .prologue
    .line 161
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/MenuBar;
    move v1, p1

    .local v1, "value":Z
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/MenuBar;->useSystemMenuBarProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v2

    move v3, v1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljavafx/beans/property/BooleanProperty;->setValue(Ljava/lang/Boolean;)V

    .line 162
    return-void
.end method

.method public final useSystemMenuBarProperty()Ljavafx/beans/property/BooleanProperty;
    .locals 6

    .prologue
    .line 138
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/MenuBar;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/MenuBar;->useSystemMenuBar:Ljavafx/beans/property/BooleanProperty;

    if-nez v1, :cond_0

    .line 139
    move-object v1, v0

    new-instance v2, Ljavafx/scene/control/MenuBar$1;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/control/MenuBar$1;-><init>(Ljavafx/scene/control/MenuBar;)V

    iput-object v2, v1, Ljavafx/scene/control/MenuBar;->useSystemMenuBar:Ljavafx/beans/property/BooleanProperty;

    .line 157
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/MenuBar;->useSystemMenuBar:Ljavafx/beans/property/BooleanProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/MenuBar;
    return-object v0
.end method
