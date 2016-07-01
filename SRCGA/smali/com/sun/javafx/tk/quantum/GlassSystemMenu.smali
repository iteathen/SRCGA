.class Lcom/sun/javafx/tk/quantum/GlassSystemMenu;
.super Ljava/lang/Object;
.source "GlassSystemMenu.java"

# interfaces
.implements Lcom/sun/javafx/tk/TKSystemMenu;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private glassSystemMenuBar:Lcom/sun/glass/ui/MenuBar;

.field private systemMenus:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sun/javafx/menu/MenuBase;",
            ">;"
        }
    .end annotation
.end field

.field private visibilityListener:Ljavafx/beans/InvalidationListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    const-class v0, Lcom/sun/javafx/tk/quantum/GlassSystemMenu;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/sun/javafx/tk/quantum/GlassSystemMenu;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>()V
    .locals 3

    .prologue
    .line 59
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/GlassSystemMenu;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 61
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/sun/javafx/tk/quantum/GlassSystemMenu;->systemMenus:Ljava/util/List;

    .line 62
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/sun/javafx/tk/quantum/GlassSystemMenu;->glassSystemMenuBar:Lcom/sun/glass/ui/MenuBar;

    .line 64
    move-object v1, v0

    move-object v2, v0

    invoke-static {v2}, Lcom/sun/javafx/tk/quantum/GlassSystemMenu$$Lambda$1;->lambdaFactory$(Lcom/sun/javafx/tk/quantum/GlassSystemMenu;)Ljavafx/beans/InvalidationListener;

    move-result-object v2

    iput-object v2, v1, Lcom/sun/javafx/tk/quantum/GlassSystemMenu;->visibilityListener:Ljavafx/beans/InvalidationListener;

    return-void
.end method

.method static synthetic access$lambda$0(Lcom/sun/javafx/tk/quantum/GlassSystemMenu;Ljavafx/beans/Observable;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/tk/quantum/GlassSystemMenu;->lambda$new$322(Ljavafx/beans/Observable;)V

    return-void
.end method

.method static synthetic access$lambda$1(Lcom/sun/javafx/tk/quantum/GlassSystemMenu;Lcom/sun/glass/ui/Menu;Ljavafx/collections/ListChangeListener$Change;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Lcom/sun/javafx/tk/quantum/GlassSystemMenu;->lambda$insertMenu$323(Lcom/sun/glass/ui/Menu;Ljavafx/collections/ListChangeListener$Change;)V

    return-void
.end method

.method static synthetic access$lambda$10(Lcom/sun/glass/ui/MenuItem;Lcom/sun/javafx/menu/CheckMenuItemBase;Ljavafx/beans/Observable;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-static {v3, v4, v5}, Lcom/sun/javafx/tk/quantum/GlassSystemMenu;->lambda$insertMenuItem$332(Lcom/sun/glass/ui/MenuItem;Lcom/sun/javafx/menu/CheckMenuItemBase;Ljavafx/beans/Observable;)V

    return-void
.end method

.method static synthetic access$lambda$11(Lcom/sun/glass/ui/MenuItem;Lcom/sun/javafx/menu/RadioMenuItemBase;Ljavafx/beans/Observable;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-static {v3, v4, v5}, Lcom/sun/javafx/tk/quantum/GlassSystemMenu;->lambda$insertMenuItem$333(Lcom/sun/glass/ui/MenuItem;Lcom/sun/javafx/menu/RadioMenuItemBase;Ljavafx/beans/Observable;)V

    return-void
.end method

.method static synthetic access$lambda$2(Lcom/sun/javafx/tk/quantum/GlassSystemMenu;Lcom/sun/glass/ui/Menu;Lcom/sun/javafx/menu/MenuBase;Ljavafx/beans/Observable;)V
    .locals 8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-direct {v4, v5, v6, v7}, Lcom/sun/javafx/tk/quantum/GlassSystemMenu;->lambda$setMenuBindings$324(Lcom/sun/glass/ui/Menu;Lcom/sun/javafx/menu/MenuBase;Ljavafx/beans/Observable;)V

    return-void
.end method

.method static synthetic access$lambda$3(Lcom/sun/glass/ui/Menu;Lcom/sun/javafx/menu/MenuBase;Ljavafx/beans/Observable;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-static {v3, v4, v5}, Lcom/sun/javafx/tk/quantum/GlassSystemMenu;->lambda$setMenuBindings$325(Lcom/sun/glass/ui/Menu;Lcom/sun/javafx/menu/MenuBase;Ljavafx/beans/Observable;)V

    return-void
.end method

.method static synthetic access$lambda$4(Lcom/sun/javafx/tk/quantum/GlassSystemMenu;Lcom/sun/glass/ui/Menu;Lcom/sun/javafx/menu/MenuBase;Ljavafx/beans/Observable;)V
    .locals 8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-direct {v4, v5, v6, v7}, Lcom/sun/javafx/tk/quantum/GlassSystemMenu;->lambda$setMenuBindings$326(Lcom/sun/glass/ui/Menu;Lcom/sun/javafx/menu/MenuBase;Ljavafx/beans/Observable;)V

    return-void
.end method

.method static synthetic access$lambda$5(Lcom/sun/javafx/tk/quantum/GlassSystemMenu;Lcom/sun/glass/ui/MenuItem;Lcom/sun/javafx/menu/MenuItemBase;Ljavafx/beans/Observable;)V
    .locals 8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-direct {v4, v5, v6, v7}, Lcom/sun/javafx/tk/quantum/GlassSystemMenu;->lambda$insertMenuItem$327(Lcom/sun/glass/ui/MenuItem;Lcom/sun/javafx/menu/MenuItemBase;Ljavafx/beans/Observable;)V

    return-void
.end method

.method static synthetic access$lambda$6(Lcom/sun/javafx/tk/quantum/GlassSystemMenu;Lcom/sun/glass/ui/MenuItem;Lcom/sun/javafx/menu/MenuItemBase;Ljavafx/beans/Observable;)V
    .locals 8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-direct {v4, v5, v6, v7}, Lcom/sun/javafx/tk/quantum/GlassSystemMenu;->lambda$insertMenuItem$328(Lcom/sun/glass/ui/MenuItem;Lcom/sun/javafx/menu/MenuItemBase;Ljavafx/beans/Observable;)V

    return-void
.end method

.method static synthetic access$lambda$7(Lcom/sun/glass/ui/MenuItem;Lcom/sun/javafx/menu/MenuItemBase;Ljavafx/beans/Observable;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-static {v3, v4, v5}, Lcom/sun/javafx/tk/quantum/GlassSystemMenu;->lambda$insertMenuItem$329(Lcom/sun/glass/ui/MenuItem;Lcom/sun/javafx/menu/MenuItemBase;Ljavafx/beans/Observable;)V

    return-void
.end method

.method static synthetic access$lambda$8(Lcom/sun/javafx/tk/quantum/GlassSystemMenu;Lcom/sun/glass/ui/MenuItem;Lcom/sun/javafx/menu/MenuItemBase;Ljavafx/beans/Observable;)V
    .locals 8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-direct {v4, v5, v6, v7}, Lcom/sun/javafx/tk/quantum/GlassSystemMenu;->lambda$insertMenuItem$330(Lcom/sun/glass/ui/MenuItem;Lcom/sun/javafx/menu/MenuItemBase;Ljavafx/beans/Observable;)V

    return-void
.end method

.method static synthetic access$lambda$9(Lcom/sun/javafx/tk/quantum/GlassSystemMenu;Lcom/sun/glass/ui/MenuItem;Lcom/sun/javafx/menu/MenuItemBase;Ljavafx/beans/Observable;)V
    .locals 8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-direct {v4, v5, v6, v7}, Lcom/sun/javafx/tk/quantum/GlassSystemMenu;->lambda$insertMenuItem$331(Lcom/sun/glass/ui/MenuItem;Lcom/sun/javafx/menu/MenuItemBase;Ljavafx/beans/Observable;)V

    return-void
.end method

.method private addMenu(Lcom/sun/glass/ui/Menu;Lcom/sun/javafx/menu/MenuBase;)V
    .locals 7

    .prologue
    .line 130
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/GlassSystemMenu;
    move-object v1, p1

    .local v1, "parent":Lcom/sun/glass/ui/Menu;
    move-object v2, p2

    .local v2, "mb":Lcom/sun/javafx/menu/MenuBase;
    move-object v3, v1

    if-eqz v3, :cond_0

    .line 131
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    move-object v6, v1

    invoke-virtual {v6}, Lcom/sun/glass/ui/Menu;->getItems()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-direct {v3, v4, v5, v6}, Lcom/sun/javafx/tk/quantum/GlassSystemMenu;->insertMenu(Lcom/sun/glass/ui/Menu;Lcom/sun/javafx/menu/MenuBase;I)V

    .line 135
    :goto_0
    return-void

    .line 133
    :cond_0
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/tk/quantum/GlassSystemMenu;->glassSystemMenuBar:Lcom/sun/glass/ui/MenuBar;

    invoke-virtual {v6}, Lcom/sun/glass/ui/MenuBar;->getMenus()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-direct {v3, v4, v5, v6}, Lcom/sun/javafx/tk/quantum/GlassSystemMenu;->insertMenu(Lcom/sun/glass/ui/Menu;Lcom/sun/javafx/menu/MenuBase;I)V

    goto :goto_0
.end method

.method private addMenuItem(Lcom/sun/glass/ui/Menu;Lcom/sun/javafx/menu/MenuItemBase;)V
    .locals 7

    .prologue
    .line 202
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/GlassSystemMenu;
    move-object v1, p1

    .local v1, "parent":Lcom/sun/glass/ui/Menu;
    move-object v2, p2

    .local v2, "menuitem":Lcom/sun/javafx/menu/MenuItemBase;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    move-object v6, v1

    invoke-virtual {v6}, Lcom/sun/glass/ui/Menu;->getItems()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-direct {v3, v4, v5, v6}, Lcom/sun/javafx/tk/quantum/GlassSystemMenu;->insertMenuItem(Lcom/sun/glass/ui/Menu;Lcom/sun/javafx/menu/MenuItemBase;I)V

    .line 203
    return-void
.end method

.method private clearMenu(Lcom/sun/glass/ui/Menu;)V
    .locals 6

    .prologue
    .line 117
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/GlassSystemMenu;
    move-object v1, p1

    .local v1, "menu":Lcom/sun/glass/ui/Menu;
    move-object v4, v1

    invoke-virtual {v4}, Lcom/sun/glass/ui/Menu;->getItems()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    move v2, v4

    .local v2, "i":I
    :goto_0
    move v4, v2

    if-ltz v4, :cond_2

    .line 118
    move-object v4, v1

    invoke-virtual {v4}, Lcom/sun/glass/ui/Menu;->getItems()Ljava/util/List;

    move-result-object v4

    move v5, v2

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v3, v4

    .line 120
    .local v3, "o":Ljava/lang/Object;
    move-object v4, v3

    instance-of v4, v4, Lcom/sun/glass/ui/MenuItem;

    if-eqz v4, :cond_1

    .line 121
    move-object v4, v3

    check-cast v4, Lcom/sun/glass/ui/MenuItem;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/sun/glass/ui/MenuItem;->setCallback(Lcom/sun/glass/ui/MenuItem$Callback;)V

    .line 117
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 122
    :cond_1
    move-object v4, v3

    instance-of v4, v4, Lcom/sun/glass/ui/Menu;

    if-eqz v4, :cond_0

    .line 123
    move-object v4, v0

    move-object v5, v3

    check-cast v5, Lcom/sun/glass/ui/Menu;

    invoke-direct {v4, v5}, Lcom/sun/javafx/tk/quantum/GlassSystemMenu;->clearMenu(Lcom/sun/glass/ui/Menu;)V

    goto :goto_1

    .line 126
    .end local v3    # "o":Ljava/lang/Object;
    :cond_2
    move-object v4, v1

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/sun/glass/ui/Menu;->setEventHandler(Lcom/sun/glass/ui/Menu$EventHandler;)V

    .line 127
    return-void
.end method

.method private getPixels(Lcom/sun/javafx/menu/MenuItemBase;)Lcom/sun/glass/ui/Pixels;
    .locals 7

    .prologue
    .line 297
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/GlassSystemMenu;
    move-object v1, p1

    .local v1, "menuItem":Lcom/sun/javafx/menu/MenuItemBase;
    move-object v6, v1

    invoke-interface {v6}, Lcom/sun/javafx/menu/MenuItemBase;->getGraphic()Ljavafx/scene/Node;

    move-result-object v6

    instance-of v6, v6, Ljavafx/scene/image/ImageView;

    if-eqz v6, :cond_3

    .line 298
    move-object v6, v1

    invoke-interface {v6}, Lcom/sun/javafx/menu/MenuItemBase;->getGraphic()Ljavafx/scene/Node;

    move-result-object v6

    check-cast v6, Ljavafx/scene/image/ImageView;

    move-object v2, v6

    .line 299
    .local v2, "iv":Ljavafx/scene/image/ImageView;
    move-object v6, v2

    invoke-virtual {v6}, Ljavafx/scene/image/ImageView;->getImage()Ljavafx/scene/image/Image;

    move-result-object v6

    move-object v3, v6

    .line 300
    .local v3, "im":Ljavafx/scene/image/Image;
    move-object v6, v3

    if-nez v6, :cond_0

    const/4 v6, 0x0

    move-object v0, v6

    .line 310
    .end local v0    # "this":Lcom/sun/javafx/tk/quantum/GlassSystemMenu;
    .end local v2    # "iv":Ljavafx/scene/image/ImageView;
    .end local v3    # "im":Ljavafx/scene/image/Image;
    :goto_0
    return-object v0

    .line 302
    .restart local v0    # "this":Lcom/sun/javafx/tk/quantum/GlassSystemMenu;
    .restart local v2    # "iv":Ljavafx/scene/image/ImageView;
    .restart local v3    # "im":Ljavafx/scene/image/Image;
    :cond_0
    move-object v6, v3

    invoke-virtual {v6}, Ljavafx/scene/image/Image;->impl_getUrl()Ljava/lang/String;

    move-result-object v6

    move-object v4, v6

    .line 304
    .local v4, "url":Ljava/lang/String;
    move-object v6, v4

    if-eqz v6, :cond_1

    move-object v6, v4

    invoke-static {v6}, Lcom/sun/javafx/tk/quantum/PixelUtils;->supportedFormatType(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 305
    :cond_1
    move-object v6, v3

    invoke-virtual {v6}, Ljavafx/scene/image/Image;->impl_getPlatformImage()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sun/prism/Image;

    move-object v5, v6

    .line 307
    .local v5, "pi":Lcom/sun/prism/Image;
    move-object v6, v5

    if-nez v6, :cond_2

    const/4 v6, 0x0

    :goto_1
    move-object v0, v6

    goto :goto_0

    :cond_2
    move-object v6, v5

    invoke-static {v6}, Lcom/sun/javafx/tk/quantum/PixelUtils;->imageToPixels(Lcom/sun/prism/Image;)Lcom/sun/glass/ui/Pixels;

    move-result-object v6

    goto :goto_1

    .line 310
    .end local v2    # "iv":Ljavafx/scene/image/ImageView;
    .end local v3    # "im":Ljavafx/scene/image/Image;
    .end local v4    # "url":Ljava/lang/String;
    .end local v5    # "pi":Lcom/sun/prism/Image;
    :cond_3
    const/4 v6, 0x0

    move-object v0, v6

    goto :goto_0
.end method

.method private glassModifiers(Ljavafx/scene/input/KeyCombination;)I
    .locals 7

    .prologue
    .line 344
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/GlassSystemMenu;
    move-object v1, p1

    .local v1, "kcc":Ljavafx/scene/input/KeyCombination;
    const/4 v5, 0x0

    move v2, v5

    .line 345
    .local v2, "ret":I
    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/scene/input/KeyCombination;->getShift()Ljavafx/scene/input/KeyCombination$ModifierValue;

    move-result-object v5

    sget-object v6, Ljavafx/scene/input/KeyCombination$ModifierValue;->DOWN:Ljavafx/scene/input/KeyCombination$ModifierValue;

    if-ne v5, v6, :cond_0

    .line 346
    add-int/lit8 v2, v2, 0x1

    .line 348
    :cond_0
    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/scene/input/KeyCombination;->getControl()Ljavafx/scene/input/KeyCombination$ModifierValue;

    move-result-object v5

    sget-object v6, Ljavafx/scene/input/KeyCombination$ModifierValue;->DOWN:Ljavafx/scene/input/KeyCombination$ModifierValue;

    if-ne v5, v6, :cond_1

    .line 349
    add-int/lit8 v2, v2, 0x4

    .line 351
    :cond_1
    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/scene/input/KeyCombination;->getAlt()Ljavafx/scene/input/KeyCombination$ModifierValue;

    move-result-object v5

    sget-object v6, Ljavafx/scene/input/KeyCombination$ModifierValue;->DOWN:Ljavafx/scene/input/KeyCombination$ModifierValue;

    if-ne v5, v6, :cond_2

    .line 352
    add-int/lit8 v2, v2, 0x8

    .line 354
    :cond_2
    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/scene/input/KeyCombination;->getShortcut()Ljavafx/scene/input/KeyCombination$ModifierValue;

    move-result-object v5

    sget-object v6, Ljavafx/scene/input/KeyCombination$ModifierValue;->DOWN:Ljavafx/scene/input/KeyCombination$ModifierValue;

    if-ne v5, v6, :cond_3

    .line 355
    invoke-static {}, Lcom/sun/javafx/PlatformUtil;->isLinux()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 356
    add-int/lit8 v2, v2, 0x4

    .line 361
    :cond_3
    :goto_0
    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/scene/input/KeyCombination;->getMeta()Ljavafx/scene/input/KeyCombination$ModifierValue;

    move-result-object v5

    sget-object v6, Ljavafx/scene/input/KeyCombination$ModifierValue;->DOWN:Ljavafx/scene/input/KeyCombination$ModifierValue;

    if-ne v5, v6, :cond_4

    .line 362
    invoke-static {}, Lcom/sun/javafx/PlatformUtil;->isLinux()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 363
    add-int/lit8 v2, v2, 0x10

    .line 369
    :cond_4
    :goto_1
    move-object v5, v1

    instance-of v5, v5, Ljavafx/scene/input/KeyCodeCombination;

    if-eqz v5, :cond_7

    .line 370
    move-object v5, v1

    check-cast v5, Ljavafx/scene/input/KeyCodeCombination;

    invoke-virtual {v5}, Ljavafx/scene/input/KeyCodeCombination;->getCode()Ljavafx/scene/input/KeyCode;

    move-result-object v5

    move-object v3, v5

    .line 371
    .local v3, "kcode":Ljavafx/scene/input/KeyCode;
    move-object v5, v3

    invoke-virtual {v5}, Ljavafx/scene/input/KeyCode;->impl_getCode()I

    move-result v5

    move v4, v5

    .line 373
    .local v4, "code":I
    move v5, v4

    sget-object v6, Ljavafx/scene/input/KeyCode;->F1:Ljavafx/scene/input/KeyCode;

    invoke-virtual {v6}, Ljavafx/scene/input/KeyCode;->impl_getCode()I

    move-result v6

    if-lt v5, v6, :cond_5

    move v5, v4

    sget-object v6, Ljavafx/scene/input/KeyCode;->F12:Ljavafx/scene/input/KeyCode;

    invoke-virtual {v6}, Ljavafx/scene/input/KeyCode;->impl_getCode()I

    move-result v6

    if-le v5, v6, :cond_6

    :cond_5
    move v5, v4

    sget-object v6, Ljavafx/scene/input/KeyCode;->F13:Ljavafx/scene/input/KeyCode;

    .line 374
    invoke-virtual {v6}, Ljavafx/scene/input/KeyCode;->impl_getCode()I

    move-result v6

    if-lt v5, v6, :cond_7

    move v5, v4

    sget-object v6, Ljavafx/scene/input/KeyCode;->F24:Ljavafx/scene/input/KeyCode;

    invoke-virtual {v6}, Ljavafx/scene/input/KeyCode;->impl_getCode()I

    move-result v6

    if-gt v5, v6, :cond_7

    .line 375
    :cond_6
    add-int/lit8 v2, v2, 0x2

    .line 379
    .end local v3    # "kcode":Ljavafx/scene/input/KeyCode;
    .end local v4    # "code":I
    :cond_7
    move v5, v2

    move v0, v5

    .end local v0    # "this":Lcom/sun/javafx/tk/quantum/GlassSystemMenu;
    return v0

    .line 357
    .restart local v0    # "this":Lcom/sun/javafx/tk/quantum/GlassSystemMenu;
    :cond_8
    invoke-static {}, Lcom/sun/javafx/PlatformUtil;->isMac()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 358
    add-int/lit8 v2, v2, 0x10

    goto :goto_0

    .line 364
    :cond_9
    invoke-static {}, Lcom/sun/javafx/PlatformUtil;->isMac()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 365
    add-int/lit8 v2, v2, 0x10

    goto :goto_1
.end method

.method private insertMenu(Lcom/sun/glass/ui/Menu;Lcom/sun/javafx/menu/MenuBase;I)V
    .locals 14

    .prologue
    .line 138
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/GlassSystemMenu;
    move-object v1, p1

    .local v1, "parent":Lcom/sun/glass/ui/Menu;
    move-object/from16 v2, p2

    .local v2, "mb":Lcom/sun/javafx/menu/MenuBase;
    move/from16 v3, p3

    .local v3, "pos":I
    invoke-static {}, Lcom/sun/glass/ui/Application;->GetApplication()Lcom/sun/glass/ui/Application;

    move-result-object v9

    move-object v4, v9

    .line 139
    .local v4, "app":Lcom/sun/glass/ui/Application;
    move-object v9, v4

    move-object v10, v0

    move-object v11, v2

    invoke-direct {v10, v11}, Lcom/sun/javafx/tk/quantum/GlassSystemMenu;->parseText(Lcom/sun/javafx/menu/MenuItemBase;)Ljava/lang/String;

    move-result-object v10

    move-object v11, v2

    invoke-interface {v11}, Lcom/sun/javafx/menu/MenuBase;->isDisable()Z

    move-result v11

    if-nez v11, :cond_0

    const/4 v11, 0x1

    :goto_0
    invoke-virtual {v9, v10, v11}, Lcom/sun/glass/ui/Application;->createMenu(Ljava/lang/String;Z)Lcom/sun/glass/ui/Menu;

    move-result-object v9

    move-object v5, v9

    .line 140
    .local v5, "glassMenu":Lcom/sun/glass/ui/Menu;
    move-object v9, v5

    new-instance v10, Lcom/sun/javafx/tk/quantum/GlassMenuEventHandler;

    move-object v13, v10

    move-object v10, v13

    move-object v11, v13

    move-object v12, v2

    invoke-direct {v11, v12}, Lcom/sun/javafx/tk/quantum/GlassMenuEventHandler;-><init>(Lcom/sun/javafx/menu/MenuBase;)V

    invoke-virtual {v9, v10}, Lcom/sun/glass/ui/Menu;->setEventHandler(Lcom/sun/glass/ui/Menu$EventHandler;)V

    .line 143
    move-object v9, v2

    invoke-interface {v9}, Lcom/sun/javafx/menu/MenuBase;->visibleProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v9

    move-object v10, v0

    iget-object v10, v10, Lcom/sun/javafx/tk/quantum/GlassSystemMenu;->visibilityListener:Ljavafx/beans/InvalidationListener;

    invoke-virtual {v9, v10}, Ljavafx/beans/property/BooleanProperty;->removeListener(Ljavafx/beans/InvalidationListener;)V

    .line 144
    move-object v9, v2

    invoke-interface {v9}, Lcom/sun/javafx/menu/MenuBase;->visibleProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v9

    move-object v10, v0

    iget-object v10, v10, Lcom/sun/javafx/tk/quantum/GlassSystemMenu;->visibilityListener:Ljavafx/beans/InvalidationListener;

    invoke-virtual {v9, v10}, Ljavafx/beans/property/BooleanProperty;->addListener(Ljavafx/beans/InvalidationListener;)V

    .line 146
    move-object v9, v2

    invoke-interface {v9}, Lcom/sun/javafx/menu/MenuBase;->isVisible()Z

    move-result v9

    if-nez v9, :cond_1

    .line 147
    .line 193
    :goto_1
    return-void

    .line 139
    .end local v5    # "glassMenu":Lcom/sun/glass/ui/Menu;
    :cond_0
    const/4 v11, 0x0

    goto :goto_0

    .line 150
    .restart local v5    # "glassMenu":Lcom/sun/glass/ui/Menu;
    :cond_1
    move-object v9, v2

    invoke-interface {v9}, Lcom/sun/javafx/menu/MenuBase;->getItemsBase()Ljavafx/collections/ObservableList;

    move-result-object v9

    move-object v6, v9

    .line 152
    .local v6, "items":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<Lcom/sun/javafx/menu/MenuItemBase;>;"
    move-object v9, v6

    move-object v10, v0

    move-object v11, v5

    invoke-static {v10, v11}, Lcom/sun/javafx/tk/quantum/GlassSystemMenu$$Lambda$2;->lambdaFactory$(Lcom/sun/javafx/tk/quantum/GlassSystemMenu;Lcom/sun/glass/ui/Menu;)Ljavafx/collections/ListChangeListener;

    move-result-object v10

    invoke-interface {v9, v10}, Ljavafx/collections/ObservableList;->addListener(Ljavafx/collections/ListChangeListener;)V

    .line 175
    move-object v9, v6

    invoke-interface {v9}, Ljavafx/collections/ObservableList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move-object v7, v9

    :goto_2
    move-object v9, v7

    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    move-object v9, v7

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sun/javafx/menu/MenuItemBase;

    move-object v8, v9

    .line 176
    .local v8, "item":Lcom/sun/javafx/menu/MenuItemBase;
    move-object v9, v8

    instance-of v9, v9, Lcom/sun/javafx/menu/MenuBase;

    if-eqz v9, :cond_2

    .line 178
    move-object v9, v0

    move-object v10, v5

    move-object v11, v8

    check-cast v11, Lcom/sun/javafx/menu/MenuBase;

    invoke-direct {v9, v10, v11}, Lcom/sun/javafx/tk/quantum/GlassSystemMenu;->addMenu(Lcom/sun/glass/ui/Menu;Lcom/sun/javafx/menu/MenuBase;)V

    .line 183
    :goto_3
    goto :goto_2

    .line 181
    :cond_2
    move-object v9, v0

    move-object v10, v5

    move-object v11, v8

    invoke-direct {v9, v10, v11}, Lcom/sun/javafx/tk/quantum/GlassSystemMenu;->addMenuItem(Lcom/sun/glass/ui/Menu;Lcom/sun/javafx/menu/MenuItemBase;)V

    goto :goto_3

    .line 184
    .end local v8    # "item":Lcom/sun/javafx/menu/MenuItemBase;
    :cond_3
    move-object v9, v5

    move-object v10, v0

    move-object v11, v2

    invoke-direct {v10, v11}, Lcom/sun/javafx/tk/quantum/GlassSystemMenu;->getPixels(Lcom/sun/javafx/menu/MenuItemBase;)Lcom/sun/glass/ui/Pixels;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/sun/glass/ui/Menu;->setPixels(Lcom/sun/glass/ui/Pixels;)Z

    move-result v9

    .line 186
    move-object v9, v0

    move-object v10, v5

    move-object v11, v2

    invoke-direct {v9, v10, v11}, Lcom/sun/javafx/tk/quantum/GlassSystemMenu;->setMenuBindings(Lcom/sun/glass/ui/Menu;Lcom/sun/javafx/menu/MenuBase;)V

    .line 188
    move-object v9, v1

    if-eqz v9, :cond_4

    .line 189
    move-object v9, v1

    move-object v10, v5

    move v11, v3

    invoke-virtual {v9, v10, v11}, Lcom/sun/glass/ui/Menu;->insert(Lcom/sun/glass/ui/Menu;I)V

    .line 193
    :goto_4
    goto :goto_1

    .line 191
    :cond_4
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/tk/quantum/GlassSystemMenu;->glassSystemMenuBar:Lcom/sun/glass/ui/MenuBar;

    move-object v10, v5

    move v11, v3

    invoke-virtual {v9, v10, v11}, Lcom/sun/glass/ui/MenuBar;->insert(Lcom/sun/glass/ui/Menu;I)V

    goto :goto_4
.end method

.method private insertMenuItem(Lcom/sun/glass/ui/Menu;Lcom/sun/javafx/menu/MenuItemBase;I)V
    .locals 14

    .prologue
    .line 206
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/GlassSystemMenu;
    move-object v1, p1

    .local v1, "parent":Lcom/sun/glass/ui/Menu;
    move-object/from16 v2, p2

    .local v2, "menuitem":Lcom/sun/javafx/menu/MenuItemBase;
    move/from16 v3, p3

    .local v3, "pos":I
    invoke-static {}, Lcom/sun/glass/ui/Application;->GetApplication()Lcom/sun/glass/ui/Application;

    move-result-object v8

    move-object v4, v8

    .line 209
    .local v4, "app":Lcom/sun/glass/ui/Application;
    move-object v8, v2

    invoke-interface {v8}, Lcom/sun/javafx/menu/MenuItemBase;->visibleProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v8

    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/tk/quantum/GlassSystemMenu;->visibilityListener:Ljavafx/beans/InvalidationListener;

    invoke-virtual {v8, v9}, Ljavafx/beans/property/BooleanProperty;->removeListener(Ljavafx/beans/InvalidationListener;)V

    .line 210
    move-object v8, v2

    invoke-interface {v8}, Lcom/sun/javafx/menu/MenuItemBase;->visibleProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v8

    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/tk/quantum/GlassSystemMenu;->visibilityListener:Ljavafx/beans/InvalidationListener;

    invoke-virtual {v8, v9}, Ljavafx/beans/property/BooleanProperty;->addListener(Ljavafx/beans/InvalidationListener;)V

    .line 212
    move-object v8, v2

    invoke-interface {v8}, Lcom/sun/javafx/menu/MenuItemBase;->isVisible()Z

    move-result v8

    if-nez v8, :cond_0

    .line 213
    .line 280
    :goto_0
    return-void

    .line 216
    :cond_0
    move-object v8, v2

    instance-of v8, v8, Lcom/sun/javafx/menu/SeparatorMenuItemBase;

    if-eqz v8, :cond_2

    .line 217
    move-object v8, v2

    invoke-interface {v8}, Lcom/sun/javafx/menu/MenuItemBase;->isVisible()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 218
    move-object v8, v1

    sget-object v9, Lcom/sun/glass/ui/MenuItem;->Separator:Lcom/sun/glass/ui/MenuItem;

    move v10, v3

    invoke-virtual {v8, v9, v10}, Lcom/sun/glass/ui/Menu;->insert(Lcom/sun/glass/ui/MenuItem;I)V

    .line 280
    :cond_1
    :goto_1
    goto :goto_0

    .line 221
    :cond_2
    new-instance v8, Lcom/sun/javafx/tk/quantum/GlassSystemMenu$1;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    move-object v10, v0

    move-object v11, v2

    move-object v12, v1

    invoke-direct {v9, v10, v11, v12}, Lcom/sun/javafx/tk/quantum/GlassSystemMenu$1;-><init>(Lcom/sun/javafx/tk/quantum/GlassSystemMenu;Lcom/sun/javafx/menu/MenuItemBase;Lcom/sun/glass/ui/Menu;)V

    move-object v5, v8

    .line 251
    .local v5, "callback":Lcom/sun/glass/ui/MenuItem$Callback;
    move-object v8, v4

    move-object v9, v0

    move-object v10, v2

    invoke-direct {v9, v10}, Lcom/sun/javafx/tk/quantum/GlassSystemMenu;->parseText(Lcom/sun/javafx/menu/MenuItemBase;)Ljava/lang/String;

    move-result-object v9

    move-object v10, v5

    invoke-virtual {v8, v9, v10}, Lcom/sun/glass/ui/Application;->createMenuItem(Ljava/lang/String;Lcom/sun/glass/ui/MenuItem$Callback;)Lcom/sun/glass/ui/MenuItem;

    move-result-object v8

    move-object v6, v8

    .line 253
    .local v6, "glassSubMenuItem":Lcom/sun/glass/ui/MenuItem;
    move-object v8, v2

    invoke-interface {v8}, Lcom/sun/javafx/menu/MenuItemBase;->textProperty()Ljavafx/beans/property/StringProperty;

    move-result-object v8

    move-object v9, v0

    move-object v10, v6

    move-object v11, v2

    invoke-static {v9, v10, v11}, Lcom/sun/javafx/tk/quantum/GlassSystemMenu$$Lambda$6;->lambdaFactory$(Lcom/sun/javafx/tk/quantum/GlassSystemMenu;Lcom/sun/glass/ui/MenuItem;Lcom/sun/javafx/menu/MenuItemBase;)Ljavafx/beans/InvalidationListener;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljavafx/beans/property/StringProperty;->addListener(Ljavafx/beans/InvalidationListener;)V

    .line 255
    move-object v8, v6

    move-object v9, v0

    move-object v10, v2

    invoke-direct {v9, v10}, Lcom/sun/javafx/tk/quantum/GlassSystemMenu;->getPixels(Lcom/sun/javafx/menu/MenuItemBase;)Lcom/sun/glass/ui/Pixels;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/sun/glass/ui/MenuItem;->setPixels(Lcom/sun/glass/ui/Pixels;)Z

    move-result v8

    .line 256
    move-object v8, v2

    invoke-interface {v8}, Lcom/sun/javafx/menu/MenuItemBase;->graphicProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v8

    move-object v9, v0

    move-object v10, v6

    move-object v11, v2

    invoke-static {v9, v10, v11}, Lcom/sun/javafx/tk/quantum/GlassSystemMenu$$Lambda$7;->lambdaFactory$(Lcom/sun/javafx/tk/quantum/GlassSystemMenu;Lcom/sun/glass/ui/MenuItem;Lcom/sun/javafx/menu/MenuItemBase;)Ljavafx/beans/InvalidationListener;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljavafx/beans/property/ObjectProperty;->addListener(Ljavafx/beans/InvalidationListener;)V

    .line 260
    move-object v8, v6

    move-object v9, v2

    invoke-interface {v9}, Lcom/sun/javafx/menu/MenuItemBase;->isDisable()Z

    move-result v9

    if-nez v9, :cond_4

    const/4 v9, 0x1

    :goto_2
    invoke-virtual {v8, v9}, Lcom/sun/glass/ui/MenuItem;->setEnabled(Z)V

    .line 261
    move-object v8, v2

    invoke-interface {v8}, Lcom/sun/javafx/menu/MenuItemBase;->disableProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v8

    move-object v9, v6

    move-object v10, v2

    invoke-static {v9, v10}, Lcom/sun/javafx/tk/quantum/GlassSystemMenu$$Lambda$8;->lambdaFactory$(Lcom/sun/glass/ui/MenuItem;Lcom/sun/javafx/menu/MenuItemBase;)Ljavafx/beans/InvalidationListener;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljavafx/beans/property/BooleanProperty;->addListener(Ljavafx/beans/InvalidationListener;)V

    .line 263
    move-object v8, v0

    move-object v9, v6

    move-object v10, v2

    invoke-direct {v8, v9, v10}, Lcom/sun/javafx/tk/quantum/GlassSystemMenu;->setShortcut(Lcom/sun/glass/ui/MenuItem;Lcom/sun/javafx/menu/MenuItemBase;)V

    .line 264
    move-object v8, v2

    invoke-interface {v8}, Lcom/sun/javafx/menu/MenuItemBase;->acceleratorProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v8

    move-object v9, v0

    move-object v10, v6

    move-object v11, v2

    invoke-static {v9, v10, v11}, Lcom/sun/javafx/tk/quantum/GlassSystemMenu$$Lambda$9;->lambdaFactory$(Lcom/sun/javafx/tk/quantum/GlassSystemMenu;Lcom/sun/glass/ui/MenuItem;Lcom/sun/javafx/menu/MenuItemBase;)Ljavafx/beans/InvalidationListener;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljavafx/beans/property/ObjectProperty;->addListener(Ljavafx/beans/InvalidationListener;)V

    .line 266
    move-object v8, v2

    invoke-interface {v8}, Lcom/sun/javafx/menu/MenuItemBase;->mnemonicParsingProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v8

    move-object v9, v0

    move-object v10, v6

    move-object v11, v2

    invoke-static {v9, v10, v11}, Lcom/sun/javafx/tk/quantum/GlassSystemMenu$$Lambda$10;->lambdaFactory$(Lcom/sun/javafx/tk/quantum/GlassSystemMenu;Lcom/sun/glass/ui/MenuItem;Lcom/sun/javafx/menu/MenuItemBase;)Ljavafx/beans/InvalidationListener;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljavafx/beans/property/BooleanProperty;->addListener(Ljavafx/beans/InvalidationListener;)V

    .line 268
    move-object v8, v2

    instance-of v8, v8, Lcom/sun/javafx/menu/CheckMenuItemBase;

    if-eqz v8, :cond_5

    .line 269
    move-object v8, v2

    check-cast v8, Lcom/sun/javafx/menu/CheckMenuItemBase;

    move-object v7, v8

    .line 270
    .local v7, "checkItem":Lcom/sun/javafx/menu/CheckMenuItemBase;
    move-object v8, v6

    move-object v9, v7

    invoke-interface {v9}, Lcom/sun/javafx/menu/CheckMenuItemBase;->isSelected()Z

    move-result v9

    invoke-virtual {v8, v9}, Lcom/sun/glass/ui/MenuItem;->setChecked(Z)V

    .line 271
    move-object v8, v7

    invoke-interface {v8}, Lcom/sun/javafx/menu/CheckMenuItemBase;->selectedProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v8

    move-object v9, v6

    move-object v10, v7

    invoke-static {v9, v10}, Lcom/sun/javafx/tk/quantum/GlassSystemMenu$$Lambda$11;->lambdaFactory$(Lcom/sun/glass/ui/MenuItem;Lcom/sun/javafx/menu/CheckMenuItemBase;)Ljavafx/beans/InvalidationListener;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljavafx/beans/property/BooleanProperty;->addListener(Ljavafx/beans/InvalidationListener;)V

    .line 272
    .line 278
    .end local v7    # "checkItem":Lcom/sun/javafx/menu/CheckMenuItemBase;
    :cond_3
    :goto_3
    move-object v8, v1

    move-object v9, v6

    move v10, v3

    invoke-virtual {v8, v9, v10}, Lcom/sun/glass/ui/Menu;->insert(Lcom/sun/glass/ui/MenuItem;I)V

    goto/16 :goto_1

    .line 260
    :cond_4
    const/4 v9, 0x0

    goto :goto_2

    .line 272
    :cond_5
    move-object v8, v2

    instance-of v8, v8, Lcom/sun/javafx/menu/RadioMenuItemBase;

    if-eqz v8, :cond_3

    .line 273
    move-object v8, v2

    check-cast v8, Lcom/sun/javafx/menu/RadioMenuItemBase;

    move-object v7, v8

    .line 274
    .local v7, "radioItem":Lcom/sun/javafx/menu/RadioMenuItemBase;
    move-object v8, v6

    move-object v9, v7

    invoke-interface {v9}, Lcom/sun/javafx/menu/RadioMenuItemBase;->isSelected()Z

    move-result v9

    invoke-virtual {v8, v9}, Lcom/sun/glass/ui/MenuItem;->setChecked(Z)V

    .line 275
    move-object v8, v7

    invoke-interface {v8}, Lcom/sun/javafx/menu/RadioMenuItemBase;->selectedProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v8

    move-object v9, v6

    move-object v10, v7

    invoke-static {v9, v10}, Lcom/sun/javafx/tk/quantum/GlassSystemMenu$$Lambda$12;->lambdaFactory$(Lcom/sun/glass/ui/MenuItem;Lcom/sun/javafx/menu/RadioMenuItemBase;)Ljavafx/beans/InvalidationListener;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljavafx/beans/property/BooleanProperty;->addListener(Ljavafx/beans/InvalidationListener;)V

    goto :goto_3
.end method

.method private synthetic lambda$insertMenu$323(Lcom/sun/glass/ui/Menu;Ljavafx/collections/ListChangeListener$Change;)V
    .locals 12

    .prologue
    .line 153
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/GlassSystemMenu;
    move-object v1, p1

    .local v1, "glassMenu":Lcom/sun/glass/ui/Menu;
    move-object v2, p2

    .local v2, "change":Ljavafx/collections/ListChangeListener$Change;
    :goto_0
    move-object v8, v2

    invoke-virtual {v8}, Ljavafx/collections/ListChangeListener$Change;->next()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 154
    move-object v8, v2

    invoke-virtual {v8}, Ljavafx/collections/ListChangeListener$Change;->getFrom()I

    move-result v8

    move v3, v8

    .line 155
    .local v3, "from":I
    move-object v8, v2

    invoke-virtual {v8}, Ljavafx/collections/ListChangeListener$Change;->getTo()I

    move-result v8

    move v4, v8

    .line 156
    .local v4, "to":I
    move-object v8, v2

    invoke-virtual {v8}, Ljavafx/collections/ListChangeListener$Change;->getRemoved()Ljava/util/List;

    move-result-object v8

    move-object v5, v8

    .line 158
    .local v5, "removed":Ljava/util/List;, "Ljava/util/List<+Lcom/sun/javafx/menu/MenuItemBase;>;"
    move v8, v3

    move-object v9, v5

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    add-int/2addr v8, v9

    const/4 v9, 0x1

    add-int/lit8 v8, v8, -0x1

    move v6, v8

    .local v6, "i":I
    :goto_1
    move v8, v6

    move v9, v3

    if-lt v8, v9, :cond_1

    .line 159
    move-object v8, v1

    invoke-virtual {v8}, Lcom/sun/glass/ui/Menu;->getItems()Ljava/util/List;

    move-result-object v8

    move-object v7, v8

    .line 160
    .local v7, "menuItemList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    move v8, v6

    if-ltz v8, :cond_0

    move-object v8, v7

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    move v9, v6

    if-le v8, v9, :cond_0

    .line 161
    move-object v8, v1

    move v9, v6

    invoke-virtual {v8, v9}, Lcom/sun/glass/ui/Menu;->remove(I)V

    .line 158
    :cond_0
    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    .line 164
    .end local v7    # "menuItemList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :cond_1
    move v8, v3

    move v6, v8

    :goto_2
    move v8, v6

    move v9, v4

    if-ge v8, v9, :cond_3

    .line 165
    move-object v8, v2

    invoke-virtual {v8}, Ljavafx/collections/ListChangeListener$Change;->getList()Ljavafx/collections/ObservableList;

    move-result-object v8

    move v9, v6

    invoke-interface {v8, v9}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sun/javafx/menu/MenuItemBase;

    move-object v7, v8

    .line 166
    .local v7, "item":Lcom/sun/javafx/menu/MenuItemBase;
    move-object v8, v7

    instance-of v8, v8, Lcom/sun/javafx/menu/MenuBase;

    if-eqz v8, :cond_2

    .line 167
    move-object v8, v0

    move-object v9, v1

    move-object v10, v7

    check-cast v10, Lcom/sun/javafx/menu/MenuBase;

    move v11, v6

    invoke-direct {v8, v9, v10, v11}, Lcom/sun/javafx/tk/quantum/GlassSystemMenu;->insertMenu(Lcom/sun/glass/ui/Menu;Lcom/sun/javafx/menu/MenuBase;I)V

    .line 164
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 169
    :cond_2
    move-object v8, v0

    move-object v9, v1

    move-object v10, v7

    move v11, v6

    invoke-direct {v8, v9, v10, v11}, Lcom/sun/javafx/tk/quantum/GlassSystemMenu;->insertMenuItem(Lcom/sun/glass/ui/Menu;Lcom/sun/javafx/menu/MenuItemBase;I)V

    goto :goto_3

    .line 172
    .end local v7    # "item":Lcom/sun/javafx/menu/MenuItemBase;
    :cond_3
    goto :goto_0

    .line 173
    .end local v3    # "from":I
    .end local v4    # "to":I
    .end local v5    # "removed":Ljava/util/List;, "Ljava/util/List<+Lcom/sun/javafx/menu/MenuItemBase;>;"
    .end local v6    # "i":I
    :cond_4
    return-void
.end method

.method private synthetic lambda$insertMenuItem$327(Lcom/sun/glass/ui/MenuItem;Lcom/sun/javafx/menu/MenuItemBase;Ljavafx/beans/Observable;)V
    .locals 7

    .prologue
    .line 253
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/GlassSystemMenu;
    move-object v1, p1

    .local v1, "glassSubMenuItem":Lcom/sun/glass/ui/MenuItem;
    move-object v2, p2

    .local v2, "menuitem":Lcom/sun/javafx/menu/MenuItemBase;
    move-object v3, p3

    .local v3, "valueModel":Ljavafx/beans/Observable;
    move-object v4, v1

    move-object v5, v0

    move-object v6, v2

    invoke-direct {v5, v6}, Lcom/sun/javafx/tk/quantum/GlassSystemMenu;->parseText(Lcom/sun/javafx/menu/MenuItemBase;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sun/glass/ui/MenuItem;->setTitle(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$insertMenuItem$328(Lcom/sun/glass/ui/MenuItem;Lcom/sun/javafx/menu/MenuItemBase;Ljavafx/beans/Observable;)V
    .locals 7

    .prologue
    .line 257
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/GlassSystemMenu;
    move-object v1, p1

    .local v1, "glassSubMenuItem":Lcom/sun/glass/ui/MenuItem;
    move-object v2, p2

    .local v2, "menuitem":Lcom/sun/javafx/menu/MenuItemBase;
    move-object v3, p3

    .local v3, "valueModel":Ljavafx/beans/Observable;
    move-object v4, v1

    move-object v5, v0

    move-object v6, v2

    invoke-direct {v5, v6}, Lcom/sun/javafx/tk/quantum/GlassSystemMenu;->getPixels(Lcom/sun/javafx/menu/MenuItemBase;)Lcom/sun/glass/ui/Pixels;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sun/glass/ui/MenuItem;->setPixels(Lcom/sun/glass/ui/Pixels;)Z

    move-result v4

    .line 258
    return-void
.end method

.method private static synthetic lambda$insertMenuItem$329(Lcom/sun/glass/ui/MenuItem;Lcom/sun/javafx/menu/MenuItemBase;Ljavafx/beans/Observable;)V
    .locals 5

    .prologue
    .line 261
    move-object v0, p0

    .local v0, "glassSubMenuItem":Lcom/sun/glass/ui/MenuItem;
    move-object v1, p1

    .local v1, "menuitem":Lcom/sun/javafx/menu/MenuItemBase;
    move-object v2, p2

    .local v2, "valueModel":Ljavafx/beans/Observable;
    move-object v3, v0

    move-object v4, v1

    invoke-interface {v4}, Lcom/sun/javafx/menu/MenuItemBase;->isDisable()Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v4, 0x1

    :goto_0
    invoke-virtual {v3, v4}, Lcom/sun/glass/ui/MenuItem;->setEnabled(Z)V

    return-void

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private synthetic lambda$insertMenuItem$330(Lcom/sun/glass/ui/MenuItem;Lcom/sun/javafx/menu/MenuItemBase;Ljavafx/beans/Observable;)V
    .locals 7

    .prologue
    .line 264
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/GlassSystemMenu;
    move-object v1, p1

    .local v1, "glassSubMenuItem":Lcom/sun/glass/ui/MenuItem;
    move-object v2, p2

    .local v2, "menuitem":Lcom/sun/javafx/menu/MenuItemBase;
    move-object v3, p3

    .local v3, "valueModel":Ljavafx/beans/Observable;
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Lcom/sun/javafx/tk/quantum/GlassSystemMenu;->setShortcut(Lcom/sun/glass/ui/MenuItem;Lcom/sun/javafx/menu/MenuItemBase;)V

    return-void
.end method

.method private synthetic lambda$insertMenuItem$331(Lcom/sun/glass/ui/MenuItem;Lcom/sun/javafx/menu/MenuItemBase;Ljavafx/beans/Observable;)V
    .locals 7

    .prologue
    .line 266
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/GlassSystemMenu;
    move-object v1, p1

    .local v1, "glassSubMenuItem":Lcom/sun/glass/ui/MenuItem;
    move-object v2, p2

    .local v2, "menuitem":Lcom/sun/javafx/menu/MenuItemBase;
    move-object v3, p3

    .local v3, "valueModel":Ljavafx/beans/Observable;
    move-object v4, v1

    move-object v5, v0

    move-object v6, v2

    invoke-direct {v5, v6}, Lcom/sun/javafx/tk/quantum/GlassSystemMenu;->parseText(Lcom/sun/javafx/menu/MenuItemBase;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sun/glass/ui/MenuItem;->setTitle(Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic lambda$insertMenuItem$332(Lcom/sun/glass/ui/MenuItem;Lcom/sun/javafx/menu/CheckMenuItemBase;Ljavafx/beans/Observable;)V
    .locals 5

    .prologue
    .line 271
    move-object v0, p0

    .local v0, "glassSubMenuItem":Lcom/sun/glass/ui/MenuItem;
    move-object v1, p1

    .local v1, "checkItem":Lcom/sun/javafx/menu/CheckMenuItemBase;
    move-object v2, p2

    .local v2, "valueModel":Ljavafx/beans/Observable;
    move-object v3, v0

    move-object v4, v1

    invoke-interface {v4}, Lcom/sun/javafx/menu/CheckMenuItemBase;->isSelected()Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sun/glass/ui/MenuItem;->setChecked(Z)V

    return-void
.end method

.method private static synthetic lambda$insertMenuItem$333(Lcom/sun/glass/ui/MenuItem;Lcom/sun/javafx/menu/RadioMenuItemBase;Ljavafx/beans/Observable;)V
    .locals 5

    .prologue
    .line 275
    move-object v0, p0

    .local v0, "glassSubMenuItem":Lcom/sun/glass/ui/MenuItem;
    move-object v1, p1

    .local v1, "radioItem":Lcom/sun/javafx/menu/RadioMenuItemBase;
    move-object v2, p2

    .local v2, "valueModel":Ljavafx/beans/Observable;
    move-object v3, v0

    move-object v4, v1

    invoke-interface {v4}, Lcom/sun/javafx/menu/RadioMenuItemBase;->isSelected()Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sun/glass/ui/MenuItem;->setChecked(Z)V

    return-void
.end method

.method private synthetic lambda$new$322(Ljavafx/beans/Observable;)V
    .locals 4

    .prologue
    .line 65
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/GlassSystemMenu;
    move-object v1, p1

    .local v1, "valueModel":Ljavafx/beans/Observable;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/tk/quantum/GlassSystemMenu;->systemMenus:Ljava/util/List;

    if-eqz v2, :cond_0

    .line 66
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/tk/quantum/GlassSystemMenu;->systemMenus:Ljava/util/List;

    invoke-virtual {v2, v3}, Lcom/sun/javafx/tk/quantum/GlassSystemMenu;->setMenus(Ljava/util/List;)V

    .line 68
    :cond_0
    return-void
.end method

.method private synthetic lambda$setMenuBindings$324(Lcom/sun/glass/ui/Menu;Lcom/sun/javafx/menu/MenuBase;Ljavafx/beans/Observable;)V
    .locals 7

    .prologue
    .line 196
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/GlassSystemMenu;
    move-object v1, p1

    .local v1, "glassMenu":Lcom/sun/glass/ui/Menu;
    move-object v2, p2

    .local v2, "mb":Lcom/sun/javafx/menu/MenuBase;
    move-object v3, p3

    .local v3, "valueModel":Ljavafx/beans/Observable;
    move-object v4, v1

    move-object v5, v0

    move-object v6, v2

    invoke-direct {v5, v6}, Lcom/sun/javafx/tk/quantum/GlassSystemMenu;->parseText(Lcom/sun/javafx/menu/MenuItemBase;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sun/glass/ui/Menu;->setTitle(Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic lambda$setMenuBindings$325(Lcom/sun/glass/ui/Menu;Lcom/sun/javafx/menu/MenuBase;Ljavafx/beans/Observable;)V
    .locals 5

    .prologue
    .line 197
    move-object v0, p0

    .local v0, "glassMenu":Lcom/sun/glass/ui/Menu;
    move-object v1, p1

    .local v1, "mb":Lcom/sun/javafx/menu/MenuBase;
    move-object v2, p2

    .local v2, "valueModel":Ljavafx/beans/Observable;
    move-object v3, v0

    move-object v4, v1

    invoke-interface {v4}, Lcom/sun/javafx/menu/MenuBase;->isDisable()Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v4, 0x1

    :goto_0
    invoke-virtual {v3, v4}, Lcom/sun/glass/ui/Menu;->setEnabled(Z)V

    return-void

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private synthetic lambda$setMenuBindings$326(Lcom/sun/glass/ui/Menu;Lcom/sun/javafx/menu/MenuBase;Ljavafx/beans/Observable;)V
    .locals 7

    .prologue
    .line 198
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/GlassSystemMenu;
    move-object v1, p1

    .local v1, "glassMenu":Lcom/sun/glass/ui/Menu;
    move-object v2, p2

    .local v2, "mb":Lcom/sun/javafx/menu/MenuBase;
    move-object v3, p3

    .local v3, "valueModel":Ljavafx/beans/Observable;
    move-object v4, v1

    move-object v5, v0

    move-object v6, v2

    invoke-direct {v5, v6}, Lcom/sun/javafx/tk/quantum/GlassSystemMenu;->parseText(Lcom/sun/javafx/menu/MenuItemBase;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sun/glass/ui/Menu;->setTitle(Ljava/lang/String;)V

    return-void
.end method

.method private parseText(Lcom/sun/javafx/menu/MenuItemBase;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 283
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/GlassSystemMenu;
    move-object v1, p1

    .local v1, "menuItem":Lcom/sun/javafx/menu/MenuItemBase;
    move-object v3, v1

    invoke-interface {v3}, Lcom/sun/javafx/menu/MenuItemBase;->getText()Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 284
    .local v2, "text":Ljava/lang/String;
    move-object v3, v2

    if-nez v3, :cond_0

    .line 286
    const-string v3, ""

    move-object v0, v3

    .line 292
    .end local v0    # "this":Lcom/sun/javafx/tk/quantum/GlassSystemMenu;
    :goto_0
    return-object v0

    .line 287
    .restart local v0    # "this":Lcom/sun/javafx/tk/quantum/GlassSystemMenu;
    :cond_0
    move-object v3, v2

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    move-object v3, v1

    invoke-interface {v3}, Lcom/sun/javafx/menu/MenuItemBase;->isMnemonicParsing()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 290
    move-object v3, v2

    const-string v4, "_([^_])"

    const-string v5, "$1"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    goto :goto_0

    .line 292
    :cond_1
    move-object v3, v2

    move-object v0, v3

    goto :goto_0
.end method

.method private setMenuBindings(Lcom/sun/glass/ui/Menu;Lcom/sun/javafx/menu/MenuBase;)V
    .locals 7

    .prologue
    .line 196
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/GlassSystemMenu;
    move-object v1, p1

    .local v1, "glassMenu":Lcom/sun/glass/ui/Menu;
    move-object v2, p2

    .local v2, "mb":Lcom/sun/javafx/menu/MenuBase;
    move-object v3, v2

    invoke-interface {v3}, Lcom/sun/javafx/menu/MenuBase;->textProperty()Ljavafx/beans/property/StringProperty;

    move-result-object v3

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-static {v4, v5, v6}, Lcom/sun/javafx/tk/quantum/GlassSystemMenu$$Lambda$3;->lambdaFactory$(Lcom/sun/javafx/tk/quantum/GlassSystemMenu;Lcom/sun/glass/ui/Menu;Lcom/sun/javafx/menu/MenuBase;)Ljavafx/beans/InvalidationListener;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljavafx/beans/property/StringProperty;->addListener(Ljavafx/beans/InvalidationListener;)V

    .line 197
    move-object v3, v2

    invoke-interface {v3}, Lcom/sun/javafx/menu/MenuBase;->disableProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v3

    move-object v4, v1

    move-object v5, v2

    invoke-static {v4, v5}, Lcom/sun/javafx/tk/quantum/GlassSystemMenu$$Lambda$4;->lambdaFactory$(Lcom/sun/glass/ui/Menu;Lcom/sun/javafx/menu/MenuBase;)Ljavafx/beans/InvalidationListener;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljavafx/beans/property/BooleanProperty;->addListener(Ljavafx/beans/InvalidationListener;)V

    .line 198
    move-object v3, v2

    invoke-interface {v3}, Lcom/sun/javafx/menu/MenuBase;->mnemonicParsingProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v3

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-static {v4, v5, v6}, Lcom/sun/javafx/tk/quantum/GlassSystemMenu$$Lambda$5;->lambdaFactory$(Lcom/sun/javafx/tk/quantum/GlassSystemMenu;Lcom/sun/glass/ui/Menu;Lcom/sun/javafx/menu/MenuBase;)Ljavafx/beans/InvalidationListener;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljavafx/beans/property/BooleanProperty;->addListener(Ljavafx/beans/InvalidationListener;)V

    .line 199
    return-void
.end method

.method private setShortcut(Lcom/sun/glass/ui/MenuItem;Lcom/sun/javafx/menu/MenuItemBase;)V
    .locals 13

    .prologue
    .line 314
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/GlassSystemMenu;
    move-object v1, p1

    .local v1, "glassSubMenuItem":Lcom/sun/glass/ui/MenuItem;
    move-object v2, p2

    .local v2, "menuItem":Lcom/sun/javafx/menu/MenuItemBase;
    move-object v8, v2

    invoke-interface {v8}, Lcom/sun/javafx/menu/MenuItemBase;->getAccelerator()Ljavafx/scene/input/KeyCombination;

    move-result-object v8

    move-object v3, v8

    .line 315
    .local v3, "accelerator":Ljavafx/scene/input/KeyCombination;
    move-object v8, v3

    if-nez v8, :cond_1

    .line 316
    move-object v8, v1

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Lcom/sun/glass/ui/MenuItem;->setShortcut(II)V

    .line 341
    :cond_0
    :goto_0
    return-void

    .line 317
    :cond_1
    move-object v8, v3

    instance-of v8, v8, Ljavafx/scene/input/KeyCodeCombination;

    if-eqz v8, :cond_7

    .line 318
    move-object v8, v3

    check-cast v8, Ljavafx/scene/input/KeyCodeCombination;

    move-object v4, v8

    .line 319
    .local v4, "kcc":Ljavafx/scene/input/KeyCodeCombination;
    move-object v8, v4

    invoke-virtual {v8}, Ljavafx/scene/input/KeyCodeCombination;->getCode()Ljavafx/scene/input/KeyCode;

    move-result-object v8

    move-object v5, v8

    .line 320
    .local v5, "code":Ljavafx/scene/input/KeyCode;
    sget-boolean v8, Lcom/sun/javafx/tk/quantum/GlassSystemMenu;->$assertionsDisabled:Z

    if-nez v8, :cond_2

    invoke-static {}, Lcom/sun/javafx/PlatformUtil;->isMac()Z

    move-result v8

    if-nez v8, :cond_2

    invoke-static {}, Lcom/sun/javafx/PlatformUtil;->isLinux()Z

    move-result v8

    if-nez v8, :cond_2

    new-instance v8, Ljava/lang/AssertionError;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    invoke-direct {v9}, Ljava/lang/AssertionError;-><init>()V

    throw v8

    .line 321
    :cond_2
    move-object v8, v0

    move-object v9, v4

    invoke-direct {v8, v9}, Lcom/sun/javafx/tk/quantum/GlassSystemMenu;->glassModifiers(Ljavafx/scene/input/KeyCombination;)I

    move-result v8

    move v6, v8

    .line 322
    .local v6, "modifier":I
    invoke-static {}, Lcom/sun/javafx/PlatformUtil;->isMac()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 323
    move-object v8, v5

    invoke-virtual {v8}, Ljavafx/scene/input/KeyCode;->isLetterKey()Z

    move-result v8

    if-eqz v8, :cond_3

    move-object v8, v5

    invoke-virtual {v8}, Ljavafx/scene/input/KeyCode;->impl_getChar()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 324
    :goto_1
    move v7, v8

    .line 325
    .local v7, "finalCode":I
    move-object v8, v1

    move v9, v7

    move v10, v6

    invoke-virtual {v8, v9, v10}, Lcom/sun/glass/ui/MenuItem;->setShortcut(II)V

    .line 326
    .line 336
    .end local v7    # "finalCode":I
    :goto_2
    goto :goto_0

    .line 323
    :cond_3
    move-object v8, v5

    .line 324
    invoke-virtual {v8}, Ljavafx/scene/input/KeyCode;->impl_getCode()I

    move-result v8

    goto :goto_1

    .line 326
    :cond_4
    invoke-static {}, Lcom/sun/javafx/PlatformUtil;->isLinux()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 327
    move-object v8, v5

    invoke-virtual {v8}, Ljavafx/scene/input/KeyCode;->impl_getChar()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    move-object v7, v8

    .line 328
    .local v7, "lower":Ljava/lang/String;
    move v8, v6

    const/4 v9, 0x4

    and-int/lit8 v8, v8, 0x4

    if-eqz v8, :cond_5

    .line 329
    move-object v8, v1

    move-object v9, v7

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Ljava/lang/String;->charAt(I)C

    move-result v9

    move v10, v6

    invoke-virtual {v8, v9, v10}, Lcom/sun/glass/ui/MenuItem;->setShortcut(II)V

    .line 333
    :goto_3
    goto :goto_2

    .line 331
    :cond_5
    move-object v8, v1

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Lcom/sun/glass/ui/MenuItem;->setShortcut(II)V

    goto :goto_3

    .line 334
    .end local v7    # "lower":Ljava/lang/String;
    :cond_6
    move-object v8, v1

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Lcom/sun/glass/ui/MenuItem;->setShortcut(II)V

    goto :goto_2

    .line 336
    .end local v4    # "kcc":Ljavafx/scene/input/KeyCodeCombination;
    .end local v5    # "code":Ljavafx/scene/input/KeyCode;
    .end local v6    # "modifier":I
    :cond_7
    move-object v8, v3

    instance-of v8, v8, Ljavafx/scene/input/KeyCharacterCombination;

    if-eqz v8, :cond_0

    .line 337
    move-object v8, v3

    check-cast v8, Ljavafx/scene/input/KeyCharacterCombination;

    move-object v4, v8

    .line 338
    .local v4, "kcc":Ljavafx/scene/input/KeyCharacterCombination;
    move-object v8, v4

    invoke-virtual {v8}, Ljavafx/scene/input/KeyCharacterCombination;->getCharacter()Ljava/lang/String;

    move-result-object v8

    move-object v5, v8

    .line 339
    .local v5, "kchar":Ljava/lang/String;
    move-object v8, v1

    move-object v9, v5

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Ljava/lang/String;->charAt(I)C

    move-result v9

    move-object v10, v0

    move-object v11, v4

    invoke-direct {v10, v11}, Lcom/sun/javafx/tk/quantum/GlassSystemMenu;->glassModifiers(Ljavafx/scene/input/KeyCombination;)I

    move-result v10

    invoke-virtual {v8, v9, v10}, Lcom/sun/glass/ui/MenuItem;->setShortcut(II)V

    goto/16 :goto_0
.end method


# virtual methods
.method protected createMenuBar()V
    .locals 4

    .prologue
    .line 71
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/GlassSystemMenu;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/tk/quantum/GlassSystemMenu;->glassSystemMenuBar:Lcom/sun/glass/ui/MenuBar;

    if-nez v2, :cond_0

    .line 72
    invoke-static {}, Lcom/sun/glass/ui/Application;->GetApplication()Lcom/sun/glass/ui/Application;

    move-result-object v2

    move-object v1, v2

    .line 73
    .local v1, "app":Lcom/sun/glass/ui/Application;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Lcom/sun/glass/ui/Application;->createMenuBar()Lcom/sun/glass/ui/MenuBar;

    move-result-object v3

    iput-object v3, v2, Lcom/sun/javafx/tk/quantum/GlassSystemMenu;->glassSystemMenuBar:Lcom/sun/glass/ui/MenuBar;

    .line 74
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/tk/quantum/GlassSystemMenu;->glassSystemMenuBar:Lcom/sun/glass/ui/MenuBar;

    invoke-virtual {v2, v3}, Lcom/sun/glass/ui/Application;->installDefaultMenus(Lcom/sun/glass/ui/MenuBar;)V

    .line 76
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/tk/quantum/GlassSystemMenu;->systemMenus:Ljava/util/List;

    if-eqz v2, :cond_0

    .line 77
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/tk/quantum/GlassSystemMenu;->systemMenus:Ljava/util/List;

    invoke-virtual {v2, v3}, Lcom/sun/javafx/tk/quantum/GlassSystemMenu;->setMenus(Ljava/util/List;)V

    .line 80
    .end local v1    # "app":Lcom/sun/glass/ui/Application;
    :cond_0
    return-void
.end method

.method protected getMenuBar()Lcom/sun/glass/ui/MenuBar;
    .locals 2

    .prologue
    .line 83
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/GlassSystemMenu;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/tk/quantum/GlassSystemMenu;->glassSystemMenuBar:Lcom/sun/glass/ui/MenuBar;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/tk/quantum/GlassSystemMenu;
    return-object v0
.end method

.method public isSupported()Z
    .locals 2

    .prologue
    .line 87
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/GlassSystemMenu;
    invoke-static {}, Lcom/sun/glass/ui/Application;->GetApplication()Lcom/sun/glass/ui/Application;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/glass/ui/Application;->supportsSystemMenu()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/tk/quantum/GlassSystemMenu;
    return v0
.end method

.method public setMenus(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sun/javafx/menu/MenuBase;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 91
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/GlassSystemMenu;
    move-object v1, p1

    .local v1, "menus":Ljava/util/List;, "Ljava/util/List<Lcom/sun/javafx/menu/MenuBase;>;"
    move-object v6, v0

    move-object v7, v1

    iput-object v7, v6, Lcom/sun/javafx/tk/quantum/GlassSystemMenu;->systemMenus:Ljava/util/List;

    .line 92
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/tk/quantum/GlassSystemMenu;->glassSystemMenuBar:Lcom/sun/glass/ui/MenuBar;

    if-eqz v6, :cond_1

    .line 97
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/tk/quantum/GlassSystemMenu;->glassSystemMenuBar:Lcom/sun/glass/ui/MenuBar;

    invoke-virtual {v6}, Lcom/sun/glass/ui/MenuBar;->getMenus()Ljava/util/List;

    move-result-object v6

    move-object v2, v6

    .line 98
    .local v2, "existingMenus":Ljava/util/List;, "Ljava/util/List<Lcom/sun/glass/ui/Menu;>;"
    move-object v6, v2

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    move v3, v6

    .line 103
    .local v3, "existingSize":I
    move v6, v3

    const/4 v7, 0x1

    add-int/lit8 v6, v6, -0x1

    move v4, v6

    .local v4, "index":I
    :goto_0
    move v6, v4

    const/4 v7, 0x1

    if-lt v6, v7, :cond_0

    .line 104
    move-object v6, v2

    move v7, v4

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sun/glass/ui/Menu;

    move-object v5, v6

    .line 105
    .local v5, "menu":Lcom/sun/glass/ui/Menu;
    move-object v6, v0

    move-object v7, v5

    invoke-direct {v6, v7}, Lcom/sun/javafx/tk/quantum/GlassSystemMenu;->clearMenu(Lcom/sun/glass/ui/Menu;)V

    .line 106
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/tk/quantum/GlassSystemMenu;->glassSystemMenuBar:Lcom/sun/glass/ui/MenuBar;

    move v7, v4

    invoke-virtual {v6, v7}, Lcom/sun/glass/ui/MenuBar;->remove(I)V

    .line 103
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 109
    .end local v5    # "menu":Lcom/sun/glass/ui/Menu;
    :cond_0
    move-object v6, v1

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-object v4, v6

    .end local v4    # "index":I
    :goto_1
    move-object v6, v4

    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    move-object v6, v4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sun/javafx/menu/MenuBase;

    move-object v5, v6

    .line 110
    .local v5, "menu":Lcom/sun/javafx/menu/MenuBase;
    move-object v6, v0

    const/4 v7, 0x0

    move-object v8, v5

    invoke-direct {v6, v7, v8}, Lcom/sun/javafx/tk/quantum/GlassSystemMenu;->addMenu(Lcom/sun/glass/ui/Menu;Lcom/sun/javafx/menu/MenuBase;)V

    .line 111
    goto :goto_1

    .line 113
    .end local v2    # "existingMenus":Ljava/util/List;, "Ljava/util/List<Lcom/sun/glass/ui/Menu;>;"
    .end local v3    # "existingSize":I
    .end local v5    # "menu":Lcom/sun/javafx/menu/MenuBase;
    :cond_1
    return-void
.end method
