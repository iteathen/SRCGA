.class public Lcom/sun/javafx/scene/control/skin/MenuBarSkin;
.super Lcom/sun/javafx/scene/control/skin/BehaviorSkinBase;
.source "MenuBarSkin.java"

# interfaces
.implements Lcom/sun/javafx/scene/traversal/TraverseListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/javafx/scene/control/skin/MenuBarSkin$MenuBarButton;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sun/javafx/scene/control/skin/BehaviorSkinBase",
        "<",
        "Ljavafx/scene/control/MenuBar;",
        "Lcom/sun/javafx/scene/control/behavior/BehaviorBase",
        "<",
        "Ljavafx/scene/control/MenuBar;",
        ">;>;",
        "Lcom/sun/javafx/scene/traversal/TraverseListener;"
    }
.end annotation


# static fields
.field private static final ALIGNMENT:Ljavafx/css/CssMetaData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/css/CssMetaData",
            "<",
            "Ljavafx/scene/control/MenuBar;",
            "Ljavafx/geometry/Pos;",
            ">;"
        }
    .end annotation
.end field

.field private static final SPACING:Ljavafx/css/CssMetaData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/css/CssMetaData",
            "<",
            "Ljavafx/scene/control/MenuBar;",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation
.end field

.field private static final STYLEABLES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljavafx/css/CssMetaData",
            "<+",
            "Ljavafx/css/Styleable;",
            "*>;>;"
        }
    .end annotation
.end field

.field private static currentMenuBarStage:Ljavafx/stage/Stage;

.field private static systemMenuMap:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Ljavafx/stage/Stage;",
            "Ljava/lang/ref/Reference",
            "<",
            "Lcom/sun/javafx/scene/control/skin/MenuBarSkin;",
            ">;>;"
        }
    .end annotation
.end field

.field private static wrappedDefaultMenus:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sun/javafx/menu/MenuBase;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final container:Ljavafx/scene/layout/HBox;

.field private containerAlignment:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/geometry/Pos;",
            ">;"
        }
    .end annotation
.end field

.field firstMenuRunnable:Ljava/lang/Runnable;

.field private focusedMenuIndex:I

.field private keyEventHandler:Ljavafx/event/EventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/scene/input/KeyEvent;",
            ">;"
        }
    .end annotation
.end field

.field private menuActionEventHandler:Ljavafx/event/EventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/event/ActionEvent;",
            ">;"
        }
    .end annotation
.end field

.field private menuBarFocusedPropertyListener:Ljavafx/beans/value/ChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/value/ChangeListener",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private menuItemListener:Ljavafx/collections/ListChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/collections/ListChangeListener",
            "<",
            "Ljavafx/scene/control/MenuItem;",
            ">;"
        }
    .end annotation
.end field

.field private mouseEventHandler:Ljavafx/event/EventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/scene/input/MouseEvent;",
            ">;"
        }
    .end annotation
.end field

.field private openMenu:Ljavafx/scene/control/Menu;

.field private openMenuButton:Lcom/sun/javafx/scene/control/skin/MenuBarSkin$MenuBarButton;

.field private pendingDismiss:Z

.field private sceneChangeListener:Ljavafx/beans/value/ChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/value/ChangeListener",
            "<",
            "Ljavafx/scene/Scene;",
            ">;"
        }
    .end annotation
.end field

.field private spacing:Ljavafx/beans/property/DoubleProperty;

.field private weakSceneKeyEventHandler:Ljavafx/event/WeakEventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/event/WeakEventHandler",
            "<",
            "Ljavafx/scene/input/KeyEvent;",
            ">;"
        }
    .end annotation
.end field

.field private weakSceneMouseEventHandler:Ljavafx/event/WeakEventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/event/WeakEventHandler",
            "<",
            "Ljavafx/scene/input/MouseEvent;",
            ">;"
        }
    .end annotation
.end field

.field private weakWindowFocusListener:Ljavafx/beans/value/WeakChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/value/WeakChangeListener",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private weakWindowSceneListener:Ljavafx/beans/value/WeakChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/value/WeakChangeListener",
            "<",
            "Ljavafx/stage/Window;",
            ">;"
        }
    .end annotation
.end field

.field private wrappedMenus:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sun/javafx/menu/MenuBase;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .prologue
    .line 102
    new-instance v6, Ljava/util/ArrayList;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    sput-object v6, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->wrappedDefaultMenus:Ljava/util/List;

    .line 1168
    new-instance v6, Lcom/sun/javafx/scene/control/skin/MenuBarSkin$4;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    const-string v8, "-fx-spacing"

    .line 1170
    invoke-static {}, Lcom/sun/javafx/css/converters/SizeConverter;->getInstance()Ljavafx/css/StyleConverter;

    move-result-object v9

    const-wide/16 v10, 0x0

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    invoke-direct {v7, v8, v9, v10}, Lcom/sun/javafx/scene/control/skin/MenuBarSkin$4;-><init>(Ljava/lang/String;Ljavafx/css/StyleConverter;Ljava/lang/Number;)V

    sput-object v6, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->SPACING:Ljavafx/css/CssMetaData;

    .line 1185
    new-instance v6, Lcom/sun/javafx/scene/control/skin/MenuBarSkin$5;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    const-string v8, "-fx-alignment"

    new-instance v9, Lcom/sun/javafx/css/converters/EnumConverter;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    const-class v11, Ljavafx/geometry/Pos;

    invoke-direct {v10, v11}, Lcom/sun/javafx/css/converters/EnumConverter;-><init>(Ljava/lang/Class;)V

    sget-object v10, Ljavafx/geometry/Pos;->TOP_LEFT:Ljavafx/geometry/Pos;

    invoke-direct {v7, v8, v9, v10}, Lcom/sun/javafx/scene/control/skin/MenuBarSkin$5;-><init>(Ljava/lang/String;Ljavafx/css/StyleConverter;Ljavafx/geometry/Pos;)V

    sput-object v6, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->ALIGNMENT:Ljavafx/css/CssMetaData;

    .line 1206
    new-instance v6, Ljava/util/ArrayList;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    .line 1207
    invoke-static {}, Ljavafx/scene/control/SkinBase;->getClassCssMetaData()Ljava/util/List;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v1, v6

    .line 1212
    .local v1, "styleables":Ljava/util/List;, "Ljava/util/List<Ljavafx/css/CssMetaData<+Ljavafx/css/Styleable;*>;>;"
    sget-object v6, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->ALIGNMENT:Ljavafx/css/CssMetaData;

    invoke-virtual {v6}, Ljavafx/css/CssMetaData;->getProperty()Ljava/lang/String;

    move-result-object v6

    move-object v2, v6

    .line 1213
    .local v2, "alignmentProperty":Ljava/lang/String;
    const/4 v6, 0x0

    move v3, v6

    .local v3, "n":I
    move-object v6, v1

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    move v4, v6

    .local v4, "nMax":I
    :goto_0
    move v6, v3

    move v7, v4

    if-ge v6, v7, :cond_1

    .line 1214
    move-object v6, v1

    move v7, v3

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljavafx/css/CssMetaData;

    move-object v5, v6

    .line 1215
    .local v5, "prop":Ljavafx/css/CssMetaData;, "Ljavafx/css/CssMetaData<**>;"
    move-object v6, v2

    move-object v7, v5

    invoke-virtual {v7}, Ljavafx/css/CssMetaData;->getProperty()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move-object v6, v1

    move-object v7, v5

    invoke-interface {v6, v7}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v6

    .line 1213
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1218
    .end local v5    # "prop":Ljavafx/css/CssMetaData;, "Ljavafx/css/CssMetaData<**>;"
    :cond_1
    move-object v6, v1

    sget-object v7, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->SPACING:Ljavafx/css/CssMetaData;

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v6

    .line 1219
    move-object v6, v1

    sget-object v7, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->ALIGNMENT:Ljavafx/css/CssMetaData;

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v6

    .line 1220
    move-object v6, v1

    invoke-static {v6}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    sput-object v6, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->STYLEABLES:Ljava/util/List;

    .line 1222
    return-void
.end method

.method public constructor <init>(Ljavafx/scene/control/MenuBar;)V
    .locals 11

    .prologue
    .line 205
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/MenuBarSkin;
    move-object v1, p1

    .local v1, "control":Ljavafx/scene/control/MenuBar;
    move-object v4, v0

    move-object v5, v1

    new-instance v6, Lcom/sun/javafx/scene/control/behavior/BehaviorBase;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v8, v1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lcom/sun/javafx/scene/control/behavior/BehaviorBase;-><init>(Ljavafx/scene/control/Control;Ljava/util/List;)V

    invoke-direct {v4, v5, v6}, Lcom/sun/javafx/scene/control/skin/BehaviorSkinBase;-><init>(Ljavafx/scene/control/Control;Lcom/sun/javafx/scene/control/behavior/BehaviorBase;)V

    .line 99
    move-object v4, v0

    const/4 v5, -0x1

    iput v5, v4, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->focusedMenuIndex:I

    .line 412
    move-object v4, v0

    new-instance v5, Lcom/sun/javafx/scene/control/skin/MenuBarSkin$1;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v0

    invoke-direct {v6, v7}, Lcom/sun/javafx/scene/control/skin/MenuBarSkin$1;-><init>(Lcom/sun/javafx/scene/control/skin/MenuBarSkin;)V

    iput-object v5, v4, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->firstMenuRunnable:Ljava/lang/Runnable;

    .line 438
    move-object v4, v0

    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->pendingDismiss:Z

    .line 486
    move-object v4, v0

    move-object v5, v0

    invoke-static {v5}, Lcom/sun/javafx/scene/control/skin/MenuBarSkin$$Lambda$4;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/MenuBarSkin;)Ljavafx/event/EventHandler;

    move-result-object v5

    iput-object v5, v4, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->menuActionEventHandler:Ljavafx/event/EventHandler;

    .line 495
    move-object v4, v0

    move-object v5, v0

    invoke-static {v5}, Lcom/sun/javafx/scene/control/skin/MenuBarSkin$$Lambda$5;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/MenuBarSkin;)Ljavafx/collections/ListChangeListener;

    move-result-object v5

    iput-object v5, v4, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->menuItemListener:Ljavafx/collections/ListChangeListener;

    .line 207
    move-object v4, v0

    new-instance v5, Ljavafx/scene/layout/HBox;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    invoke-direct {v6}, Ljavafx/scene/layout/HBox;-><init>()V

    iput-object v5, v4, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->container:Ljavafx/scene/layout/HBox;

    .line 208
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->container:Ljavafx/scene/layout/HBox;

    invoke-virtual {v4}, Ljavafx/scene/layout/HBox;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v4

    const-string v5, "container"

    invoke-interface {v4, v5}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v4

    .line 209
    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->container:Ljavafx/scene/layout/HBox;

    invoke-interface {v4, v5}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v4

    .line 212
    move-object v4, v0

    move-object v5, v0

    move-object v6, v1

    invoke-static {v5, v6}, Lcom/sun/javafx/scene/control/skin/MenuBarSkin$$Lambda$6;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/MenuBarSkin;Ljavafx/scene/control/MenuBar;)Ljavafx/event/EventHandler;

    move-result-object v5

    iput-object v5, v4, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->keyEventHandler:Ljavafx/event/EventHandler;

    .line 284
    move-object v4, v0

    move-object v5, v0

    invoke-static {v5}, Lcom/sun/javafx/scene/control/skin/MenuBarSkin$$Lambda$7;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/MenuBarSkin;)Ljavafx/beans/value/ChangeListener;

    move-result-object v5

    iput-object v5, v4, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->menuBarFocusedPropertyListener:Ljavafx/beans/value/ChangeListener;

    .line 297
    move-object v4, v0

    new-instance v5, Ljavafx/event/WeakEventHandler;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->keyEventHandler:Ljavafx/event/EventHandler;

    invoke-direct {v6, v7}, Ljavafx/event/WeakEventHandler;-><init>(Ljavafx/event/EventHandler;)V

    iput-object v5, v4, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->weakSceneKeyEventHandler:Ljavafx/event/WeakEventHandler;

    .line 298
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/control/MenuBar;->sceneProperty()Ljavafx/beans/property/ReadOnlyObjectProperty;

    move-result-object v4

    move-object v5, v0

    invoke-static {v5}, Lcom/sun/javafx/scene/control/skin/MenuBarSkin$$Lambda$8;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/MenuBarSkin;)Ljava/util/function/Consumer;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sun/javafx/scene/control/skin/Utils;->executeOnceWhenPropertyIsNonNull(Ljavafx/beans/value/ObservableValue;Ljava/util/function/Consumer;)V

    .line 303
    move-object v4, v0

    move-object v5, v0

    invoke-static {v5}, Lcom/sun/javafx/scene/control/skin/MenuBarSkin$$Lambda$9;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/MenuBarSkin;)Ljavafx/event/EventHandler;

    move-result-object v5

    iput-object v5, v4, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->mouseEventHandler:Ljavafx/event/EventHandler;

    .line 308
    move-object v4, v0

    new-instance v5, Ljavafx/event/WeakEventHandler;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->mouseEventHandler:Ljavafx/event/EventHandler;

    invoke-direct {v6, v7}, Ljavafx/event/WeakEventHandler;-><init>(Ljavafx/event/EventHandler;)V

    iput-object v5, v4, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->weakSceneMouseEventHandler:Ljavafx/event/WeakEventHandler;

    .line 309
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/control/MenuBar;->sceneProperty()Ljavafx/beans/property/ReadOnlyObjectProperty;

    move-result-object v4

    move-object v5, v0

    invoke-static {v5}, Lcom/sun/javafx/scene/control/skin/MenuBarSkin$$Lambda$10;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/MenuBarSkin;)Ljava/util/function/Consumer;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sun/javafx/scene/control/skin/Utils;->executeOnceWhenPropertyIsNonNull(Ljavafx/beans/value/ObservableValue;Ljava/util/function/Consumer;)V

    .line 313
    move-object v4, v0

    new-instance v5, Ljavafx/beans/value/WeakChangeListener;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v0

    invoke-static {v7}, Lcom/sun/javafx/scene/control/skin/MenuBarSkin$$Lambda$11;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/MenuBarSkin;)Ljavafx/beans/value/ChangeListener;

    move-result-object v7

    invoke-direct {v6, v7}, Ljavafx/beans/value/WeakChangeListener;-><init>(Ljavafx/beans/value/ChangeListener;)V

    iput-object v5, v4, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->weakWindowFocusListener:Ljavafx/beans/value/WeakChangeListener;

    .line 319
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/control/MenuBar;->sceneProperty()Ljavafx/beans/property/ReadOnlyObjectProperty;

    move-result-object v4

    move-object v5, v0

    invoke-static {v5}, Lcom/sun/javafx/scene/control/skin/MenuBarSkin$$Lambda$12;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/MenuBarSkin;)Ljava/util/function/Consumer;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sun/javafx/scene/control/skin/Utils;->executeOnceWhenPropertyIsNonNull(Ljavafx/beans/value/ObservableValue;Ljava/util/function/Consumer;)V

    .line 334
    move-object v4, v0

    invoke-direct {v4}, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->rebuildUI()V

    .line 335
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/control/MenuBar;->getMenus()Ljavafx/collections/ObservableList;

    move-result-object v4

    move-object v5, v0

    invoke-static {v5}, Lcom/sun/javafx/scene/control/skin/MenuBarSkin$$Lambda$13;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/MenuBarSkin;)Ljavafx/collections/ListChangeListener;

    move-result-object v5

    invoke-interface {v4, v5}, Ljavafx/collections/ObservableList;->addListener(Ljavafx/collections/ListChangeListener;)V

    .line 338
    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v4

    check-cast v4, Ljavafx/scene/control/MenuBar;

    invoke-virtual {v4}, Ljavafx/scene/control/MenuBar;->getMenus()Ljavafx/collections/ObservableList;

    move-result-object v4

    invoke-interface {v4}, Ljavafx/collections/ObservableList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v2, v4

    :goto_0
    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavafx/scene/control/Menu;

    move-object v3, v4

    .line 339
    .local v3, "menu":Ljavafx/scene/control/Menu;
    move-object v4, v3

    invoke-virtual {v4}, Ljavafx/scene/control/Menu;->visibleProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v4

    move-object v5, v0

    invoke-static {v5}, Lcom/sun/javafx/scene/control/skin/MenuBarSkin$$Lambda$14;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/MenuBarSkin;)Ljavafx/beans/value/ChangeListener;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljavafx/beans/property/BooleanProperty;->addListener(Ljavafx/beans/value/ChangeListener;)V

    .line 342
    goto :goto_0

    .line 344
    .end local v3    # "menu":Ljavafx/scene/control/Menu;
    :cond_0
    invoke-static {}, Lcom/sun/javafx/tk/Toolkit;->getToolkit()Lcom/sun/javafx/tk/Toolkit;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sun/javafx/tk/Toolkit;->getSystemMenu()Lcom/sun/javafx/tk/TKSystemMenu;

    move-result-object v4

    invoke-interface {v4}, Lcom/sun/javafx/tk/TKSystemMenu;->isSupported()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 345
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/control/MenuBar;->useSystemMenuBarProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v4

    move-object v5, v0

    invoke-static {v5}, Lcom/sun/javafx/scene/control/skin/MenuBarSkin$$Lambda$15;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/MenuBarSkin;)Ljavafx/beans/InvalidationListener;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljavafx/beans/property/BooleanProperty;->addListener(Ljavafx/beans/InvalidationListener;)V

    .line 366
    :cond_1
    invoke-static {}, Lcom/sun/javafx/util/Utils;->isMac()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 367
    const-string v4, "ctrl+F10"

    invoke-static {v4}, Ljavafx/scene/input/KeyCombination;->keyCombination(Ljava/lang/String;)Ljavafx/scene/input/KeyCombination;

    move-result-object v4

    move-object v2, v4

    .line 371
    .local v2, "acceleratorKeyCombo":Ljavafx/scene/input/KeyCombination;
    :goto_1
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/control/MenuBar;->sceneProperty()Ljavafx/beans/property/ReadOnlyObjectProperty;

    move-result-object v4

    move-object v5, v0

    move-object v6, v2

    invoke-static {v5, v6}, Lcom/sun/javafx/scene/control/skin/MenuBarSkin$$Lambda$16;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/MenuBarSkin;Ljavafx/scene/input/KeyCombination;)Ljava/util/function/Consumer;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sun/javafx/scene/control/skin/Utils;->executeOnceWhenPropertyIsNonNull(Ljavafx/beans/value/ObservableValue;Ljava/util/function/Consumer;)V

    .line 382
    new-instance v4, Lcom/sun/javafx/scene/traversal/ParentTraversalEngine;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    move-object v6, v0

    invoke-virtual {v6}, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/sun/javafx/scene/traversal/ParentTraversalEngine;-><init>(Ljavafx/scene/Parent;)V

    move-object v3, v4

    .line 383
    .local v3, "engine":Lcom/sun/javafx/scene/traversal/ParentTraversalEngine;
    move-object v4, v3

    move-object v5, v0

    invoke-virtual {v4, v5}, Lcom/sun/javafx/scene/traversal/ParentTraversalEngine;->addTraverseListener(Lcom/sun/javafx/scene/traversal/TraverseListener;)V

    .line 384
    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v4

    check-cast v4, Ljavafx/scene/control/MenuBar;

    move-object v5, v3

    invoke-virtual {v4, v5}, Ljavafx/scene/control/MenuBar;->setImpl_traversalEngine(Lcom/sun/javafx/scene/traversal/ParentTraversalEngine;)V

    .line 386
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/control/MenuBar;->sceneProperty()Ljavafx/beans/property/ReadOnlyObjectProperty;

    move-result-object v4

    move-object v5, v0

    move-object v6, v2

    invoke-static {v5, v6}, Lcom/sun/javafx/scene/control/skin/MenuBarSkin$$Lambda$17;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/MenuBarSkin;Ljavafx/scene/input/KeyCombination;)Ljavafx/beans/value/ChangeListener;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljavafx/beans/property/ReadOnlyObjectProperty;->addListener(Ljavafx/beans/value/ChangeListener;)V

    .line 409
    return-void

    .line 369
    .end local v2    # "acceleratorKeyCombo":Ljavafx/scene/input/KeyCombination;
    .end local v3    # "engine":Lcom/sun/javafx/scene/traversal/ParentTraversalEngine;
    :cond_2
    const-string v4, "F10"

    invoke-static {v4}, Ljavafx/scene/input/KeyCombination;->keyCombination(Ljava/lang/String;)Ljavafx/scene/input/KeyCombination;

    move-result-object v4

    move-object v2, v4

    .restart local v2    # "acceleratorKeyCombo":Ljavafx/scene/input/KeyCombination;
    goto :goto_1
.end method

.method static synthetic access$000(Lcom/sun/javafx/scene/control/skin/MenuBarSkin;)Ljavafx/scene/layout/HBox;
    .locals 2

    .prologue
    .line 93
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/MenuBarSkin;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->container:Ljavafx/scene/layout/HBox;

    move-object v0, v1

    .end local v0    # "x0":Lcom/sun/javafx/scene/control/skin/MenuBarSkin;
    return-object v0
.end method

.method static synthetic access$100(Lcom/sun/javafx/scene/control/skin/MenuBarSkin;)I
    .locals 2

    .prologue
    .line 93
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/MenuBarSkin;
    move-object v1, v0

    iget v1, v1, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->focusedMenuIndex:I

    move v0, v1

    .end local v0    # "x0":Lcom/sun/javafx/scene/control/skin/MenuBarSkin;
    return v0
.end method

.method static synthetic access$1000()Ljavafx/css/CssMetaData;
    .locals 1

    .prologue
    .line 93
    sget-object v0, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->ALIGNMENT:Ljavafx/css/CssMetaData;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/sun/javafx/scene/control/skin/MenuBarSkin;)Ljavafx/beans/property/DoubleProperty;
    .locals 2

    .prologue
    .line 93
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/MenuBarSkin;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->spacing:Ljavafx/beans/property/DoubleProperty;

    move-object v0, v1

    .end local v0    # "x0":Lcom/sun/javafx/scene/control/skin/MenuBarSkin;
    return-object v0
.end method

.method static synthetic access$1300(Lcom/sun/javafx/scene/control/skin/MenuBarSkin;)Ljavafx/beans/property/ObjectProperty;
    .locals 2

    .prologue
    .line 93
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/MenuBarSkin;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->containerAlignment:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "x0":Lcom/sun/javafx/scene/control/skin/MenuBarSkin;
    return-object v0
.end method

.method static synthetic access$200(Lcom/sun/javafx/scene/control/skin/MenuBarSkin;)V
    .locals 2

    .prologue
    .line 93
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/MenuBarSkin;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->unSelectMenus()V

    return-void
.end method

.method static synthetic access$300(Lcom/sun/javafx/scene/control/skin/MenuBarSkin;I)V
    .locals 4

    .prologue
    .line 93
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/MenuBarSkin;
    move v1, p1

    .local v1, "x1":I
    move-object v2, v0

    move v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->menuModeStart(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/sun/javafx/scene/control/skin/MenuBarSkin;)Lcom/sun/javafx/scene/control/skin/MenuBarSkin$MenuBarButton;
    .locals 2

    .prologue
    .line 93
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/MenuBarSkin;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->openMenuButton:Lcom/sun/javafx/scene/control/skin/MenuBarSkin$MenuBarButton;

    move-object v0, v1

    .end local v0    # "x0":Lcom/sun/javafx/scene/control/skin/MenuBarSkin;
    return-object v0
.end method

.method static synthetic access$402(Lcom/sun/javafx/scene/control/skin/MenuBarSkin;Lcom/sun/javafx/scene/control/skin/MenuBarSkin$MenuBarButton;)Lcom/sun/javafx/scene/control/skin/MenuBarSkin$MenuBarButton;
    .locals 7

    .prologue
    .line 93
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/MenuBarSkin;
    move-object v1, p1

    .local v1, "x1":Lcom/sun/javafx/scene/control/skin/MenuBarSkin$MenuBarButton;
    move-object v2, v0

    move-object v3, v1

    move-object v5, v2

    move-object v6, v3

    move-object v2, v6

    move-object v3, v5

    move-object v4, v6

    iput-object v4, v3, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->openMenuButton:Lcom/sun/javafx/scene/control/skin/MenuBarSkin$MenuBarButton;

    move-object v0, v2

    .end local v0    # "x0":Lcom/sun/javafx/scene/control/skin/MenuBarSkin;
    return-object v0
.end method

.method static synthetic access$502(Lcom/sun/javafx/scene/control/skin/MenuBarSkin;Ljavafx/scene/control/Menu;)Ljavafx/scene/control/Menu;
    .locals 7

    .prologue
    .line 93
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/MenuBarSkin;
    move-object v1, p1

    .local v1, "x1":Ljavafx/scene/control/Menu;
    move-object v2, v0

    move-object v3, v1

    move-object v5, v2

    move-object v6, v3

    move-object v2, v6

    move-object v3, v5

    move-object v4, v6

    iput-object v4, v3, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->openMenu:Ljavafx/scene/control/Menu;

    move-object v0, v2

    .end local v0    # "x0":Lcom/sun/javafx/scene/control/skin/MenuBarSkin;
    return-object v0
.end method

.method static synthetic access$900()Ljavafx/css/CssMetaData;
    .locals 1

    .prologue
    .line 93
    sget-object v0, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->SPACING:Ljavafx/css/CssMetaData;

    return-object v0
.end method

.method static synthetic access$lambda$0(Ljavafx/scene/control/MenuBar;Ljavafx/collections/ListChangeListener$Change;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->lambda$setDefaultSystemMenuBar$377(Ljavafx/scene/control/MenuBar;Ljavafx/collections/ListChangeListener$Change;)V

    return-void
.end method

.method static synthetic access$lambda$1(Ljavafx/beans/Observable;)V
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-static {v1}, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->lambda$initSystemMenuBar$378(Ljavafx/beans/Observable;)V

    return-void
.end method

.method static synthetic access$lambda$10(Lcom/sun/javafx/scene/control/skin/MenuBarSkin;Ljavafx/beans/value/ObservableValue;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-direct {v4, v5, v6, v7}, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->lambda$new$385(Ljavafx/beans/value/ObservableValue;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    return-void
.end method

.method static synthetic access$lambda$11(Lcom/sun/javafx/scene/control/skin/MenuBarSkin;Ljavafx/scene/Scene;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->lambda$new$387(Ljavafx/scene/Scene;)V

    return-void
.end method

.method static synthetic access$lambda$12(Lcom/sun/javafx/scene/control/skin/MenuBarSkin;Ljavafx/collections/ListChangeListener$Change;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->lambda$new$388(Ljavafx/collections/ListChangeListener$Change;)V

    return-void
.end method

.method static synthetic access$lambda$13(Lcom/sun/javafx/scene/control/skin/MenuBarSkin;Ljavafx/beans/value/ObservableValue;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-direct {v4, v5, v6, v7}, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->lambda$new$389(Ljavafx/beans/value/ObservableValue;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    return-void
.end method

.method static synthetic access$lambda$14(Lcom/sun/javafx/scene/control/skin/MenuBarSkin;Ljavafx/beans/Observable;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->lambda$new$390(Ljavafx/beans/Observable;)V

    return-void
.end method

.method static synthetic access$lambda$15(Lcom/sun/javafx/scene/control/skin/MenuBarSkin;Ljavafx/scene/input/KeyCombination;Ljavafx/scene/Scene;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->lambda$new$392(Ljavafx/scene/input/KeyCombination;Ljavafx/scene/Scene;)V

    return-void
.end method

.method static synthetic access$lambda$16(Lcom/sun/javafx/scene/control/skin/MenuBarSkin;Ljavafx/scene/input/KeyCombination;Ljavafx/beans/value/ObservableValue;Ljavafx/scene/Scene;Ljavafx/scene/Scene;)V
    .locals 10

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    move-object v9, v4

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->lambda$new$393(Ljavafx/scene/input/KeyCombination;Ljavafx/beans/value/ObservableValue;Ljavafx/scene/Scene;Ljavafx/scene/Scene;)V

    return-void
.end method

.method static synthetic access$lambda$17(Lcom/sun/javafx/scene/control/skin/MenuBarSkin;Ljavafx/beans/value/ObservableValue;Ljavafx/scene/Scene;Ljavafx/scene/Scene;)V
    .locals 8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-direct {v4, v5, v6, v7}, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->lambda$rebuildUI$397(Ljavafx/beans/value/ObservableValue;Ljavafx/scene/Scene;Ljavafx/scene/Scene;)V

    return-void
.end method

.method static synthetic access$lambda$18(Lcom/sun/javafx/scene/control/skin/MenuBarSkin;Ljavafx/scene/control/Menu;Lcom/sun/javafx/scene/control/skin/MenuBarSkin$MenuBarButton;Ljavafx/beans/value/ObservableValue;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 12

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    move-object v9, v3

    move-object v10, v4

    move-object v11, v5

    invoke-direct/range {v6 .. v11}, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->lambda$rebuildUI$398(Ljavafx/scene/control/Menu;Lcom/sun/javafx/scene/control/skin/MenuBarSkin$MenuBarButton;Ljavafx/beans/value/ObservableValue;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    return-void
.end method

.method static synthetic access$lambda$19(Lcom/sun/javafx/scene/control/skin/MenuBarSkin$MenuBarButton;Ljavafx/scene/control/Menu;Ljavafx/collections/MapChangeListener$Change;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-static {v3, v4, v5}, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->lambda$rebuildUI$399(Lcom/sun/javafx/scene/control/skin/MenuBarSkin$MenuBarButton;Ljavafx/scene/control/Menu;Ljavafx/collections/MapChangeListener$Change;)V

    return-void
.end method

.method static synthetic access$lambda$2(Ljavafx/beans/InvalidationListener;Ljavafx/collections/ListChangeListener$Change;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->lambda$initSystemMenuBar$379(Ljavafx/beans/InvalidationListener;Ljavafx/collections/ListChangeListener$Change;)V

    return-void
.end method

.method static synthetic access$lambda$20(Lcom/sun/javafx/scene/control/skin/MenuBarSkin;Lcom/sun/javafx/scene/control/skin/MenuBarSkin$MenuBarButton;Ljavafx/scene/control/Menu;Ljavafx/beans/value/ObservableValue;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 12

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    move-object v9, v3

    move-object v10, v4

    move-object v11, v5

    invoke-direct/range {v6 .. v11}, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->lambda$rebuildUI$400(Lcom/sun/javafx/scene/control/skin/MenuBarSkin$MenuBarButton;Ljavafx/scene/control/Menu;Ljavafx/beans/value/ObservableValue;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    return-void
.end method

.method static synthetic access$lambda$21(Lcom/sun/javafx/scene/control/skin/MenuBarSkin;Lcom/sun/javafx/scene/control/skin/MenuBarSkin$MenuBarButton;Ljavafx/scene/control/Menu;Ljavafx/scene/input/MouseEvent;)V
    .locals 8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-direct {v4, v5, v6, v7}, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->lambda$rebuildUI$401(Lcom/sun/javafx/scene/control/skin/MenuBarSkin$MenuBarButton;Ljavafx/scene/control/Menu;Ljavafx/scene/input/MouseEvent;)V

    return-void
.end method

.method static synthetic access$lambda$22(Lcom/sun/javafx/scene/control/skin/MenuBarSkin;Lcom/sun/javafx/scene/control/skin/MenuBarSkin$MenuBarButton;Ljavafx/scene/input/MouseEvent;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->lambda$rebuildUI$402(Lcom/sun/javafx/scene/control/skin/MenuBarSkin$MenuBarButton;Ljavafx/scene/input/MouseEvent;)V

    return-void
.end method

.method static synthetic access$lambda$23(Lcom/sun/javafx/scene/control/skin/MenuBarSkin;Lcom/sun/javafx/scene/control/skin/MenuBarSkin$MenuBarButton;Ljavafx/scene/control/Menu;Ljavafx/scene/input/MouseEvent;)V
    .locals 8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-direct {v4, v5, v6, v7}, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->lambda$rebuildUI$403(Lcom/sun/javafx/scene/control/skin/MenuBarSkin$MenuBarButton;Ljavafx/scene/control/Menu;Ljavafx/scene/input/MouseEvent;)V

    return-void
.end method

.method static synthetic access$lambda$24(Lcom/sun/javafx/scene/control/skin/MenuBarSkin;)V
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->lambda$null$396()V

    return-void
.end method

.method static synthetic access$lambda$25(Lcom/sun/javafx/scene/control/skin/MenuBarSkin;Ljavafx/scene/input/KeyEvent;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->lambda$null$391(Ljavafx/scene/input/KeyEvent;)V

    return-void
.end method

.method static synthetic access$lambda$26(Lcom/sun/javafx/scene/control/skin/MenuBarSkin;Ljavafx/beans/value/ObservableValue;Ljavafx/stage/Window;Ljavafx/stage/Window;)V
    .locals 8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-direct {v4, v5, v6, v7}, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->lambda$null$386(Ljavafx/beans/value/ObservableValue;Ljavafx/stage/Window;Ljavafx/stage/Window;)V

    return-void
.end method

.method static synthetic access$lambda$3(Lcom/sun/javafx/scene/control/skin/MenuBarSkin;Ljavafx/event/ActionEvent;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->lambda$new$394(Ljavafx/event/ActionEvent;)V

    return-void
.end method

.method static synthetic access$lambda$4(Lcom/sun/javafx/scene/control/skin/MenuBarSkin;Ljavafx/collections/ListChangeListener$Change;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->lambda$new$395(Ljavafx/collections/ListChangeListener$Change;)V

    return-void
.end method

.method static synthetic access$lambda$5(Lcom/sun/javafx/scene/control/skin/MenuBarSkin;Ljavafx/scene/control/MenuBar;Ljavafx/scene/input/KeyEvent;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->lambda$new$380(Ljavafx/scene/control/MenuBar;Ljavafx/scene/input/KeyEvent;)V

    return-void
.end method

.method static synthetic access$lambda$6(Lcom/sun/javafx/scene/control/skin/MenuBarSkin;Ljavafx/beans/value/ObservableValue;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-direct {v4, v5, v6, v7}, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->lambda$new$381(Ljavafx/beans/value/ObservableValue;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    return-void
.end method

.method static synthetic access$lambda$7(Lcom/sun/javafx/scene/control/skin/MenuBarSkin;Ljavafx/scene/Scene;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->lambda$new$382(Ljavafx/scene/Scene;)V

    return-void
.end method

.method static synthetic access$lambda$8(Lcom/sun/javafx/scene/control/skin/MenuBarSkin;Ljavafx/scene/input/MouseEvent;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->lambda$new$383(Ljavafx/scene/input/MouseEvent;)V

    return-void
.end method

.method static synthetic access$lambda$9(Lcom/sun/javafx/scene/control/skin/MenuBarSkin;Ljavafx/scene/Scene;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->lambda$new$384(Ljavafx/scene/Scene;)V

    return-void
.end method

.method private cleanUpSystemMenu()V
    .locals 7

    .prologue
    .line 877
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/MenuBarSkin;
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->sceneChangeListener:Ljavafx/beans/value/ChangeListener;

    if-eqz v5, :cond_0

    move-object v5, v0

    invoke-virtual {v5}, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 878
    move-object v5, v0

    invoke-virtual {v5}, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v5

    check-cast v5, Ljavafx/scene/control/MenuBar;

    invoke-virtual {v5}, Ljavafx/scene/control/MenuBar;->sceneProperty()Ljavafx/beans/property/ReadOnlyObjectProperty;

    move-result-object v5

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->sceneChangeListener:Ljavafx/beans/value/ChangeListener;

    invoke-virtual {v5, v6}, Ljavafx/beans/property/ReadOnlyObjectProperty;->removeListener(Ljavafx/beans/value/ChangeListener;)V

    .line 882
    move-object v5, v0

    const/4 v6, 0x0

    iput-object v6, v5, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->sceneChangeListener:Ljavafx/beans/value/ChangeListener;

    .line 885
    :cond_0
    sget-object v5, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->currentMenuBarStage:Ljavafx/stage/Stage;

    if-eqz v5, :cond_1

    sget-object v5, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->currentMenuBarStage:Ljavafx/stage/Stage;

    invoke-static {v5}, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->getMenuBarSkin(Ljavafx/stage/Stage;)Lcom/sun/javafx/scene/control/skin/MenuBarSkin;

    move-result-object v5

    move-object v6, v0

    if-ne v5, v6, :cond_1

    .line 886
    const/4 v5, 0x0

    invoke-static {v5}, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->setSystemMenu(Ljavafx/stage/Stage;)V

    .line 889
    :cond_1
    sget-object v5, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->systemMenuMap:Ljava/util/WeakHashMap;

    if-eqz v5, :cond_5

    .line 890
    sget-object v5, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->systemMenuMap:Ljava/util/WeakHashMap;

    invoke-virtual {v5}, Ljava/util/WeakHashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v1, v5

    .line 891
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljavafx/stage/Stage;Ljava/lang/ref/Reference<Lcom/sun/javafx/scene/control/skin/MenuBarSkin;>;>;>;"
    :goto_0
    move-object v5, v1

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 892
    move-object v5, v1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    move-object v2, v5

    .line 893
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljavafx/stage/Stage;Ljava/lang/ref/Reference<Lcom/sun/javafx/scene/control/skin/MenuBarSkin;>;>;"
    move-object v5, v2

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/ref/Reference;

    move-object v3, v5

    .line 894
    .local v3, "ref":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<Lcom/sun/javafx/scene/control/skin/MenuBarSkin;>;"
    move-object v5, v3

    if-eqz v5, :cond_4

    move-object v5, v3

    invoke-virtual {v5}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;

    :goto_1
    move-object v4, v5

    .line 895
    .local v4, "skin":Lcom/sun/javafx/scene/control/skin/MenuBarSkin;
    move-object v5, v4

    if-eqz v5, :cond_2

    move-object v5, v4

    move-object v6, v0

    if-ne v5, v6, :cond_3

    .line 896
    :cond_2
    move-object v5, v1

    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    .line 898
    :cond_3
    goto :goto_0

    .line 894
    .end local v4    # "skin":Lcom/sun/javafx/scene/control/skin/MenuBarSkin;
    :cond_4
    const/4 v5, 0x0

    goto :goto_1

    .line 900
    .end local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljavafx/stage/Stage;Ljava/lang/ref/Reference<Lcom/sun/javafx/scene/control/skin/MenuBarSkin;>;>;>;"
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljavafx/stage/Stage;Ljava/lang/ref/Reference<Lcom/sun/javafx/scene/control/skin/MenuBarSkin;>;>;"
    .end local v3    # "ref":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<Lcom/sun/javafx/scene/control/skin/MenuBarSkin;>;"
    :cond_5
    return-void
.end method

.method private clearMenuButtonHover()V
    .locals 4

    .prologue
    .line 1031
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/MenuBarSkin;
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->container:Ljavafx/scene/layout/HBox;

    invoke-virtual {v3}, Ljavafx/scene/layout/HBox;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v3

    invoke-interface {v3}, Ljavafx/collections/ObservableList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v1, v3

    :goto_0
    move-object v3, v1

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v3, v1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavafx/scene/Node;

    move-object v2, v3

    .line 1032
    .local v2, "n":Ljavafx/scene/Node;
    move-object v3, v2

    invoke-virtual {v3}, Ljavafx/scene/Node;->isHover()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1033
    move-object v3, v2

    check-cast v3, Lcom/sun/javafx/scene/control/skin/MenuBarSkin$MenuBarButton;

    invoke-static {v3}, Lcom/sun/javafx/scene/control/skin/MenuBarSkin$MenuBarButton;->access$1100(Lcom/sun/javafx/scene/control/skin/MenuBarSkin$MenuBarButton;)V

    .line 1034
    .line 1037
    .end local v2    # "n":Ljavafx/scene/Node;
    :goto_1
    return-void

    .line 1036
    .restart local v2    # "n":Ljavafx/scene/Node;
    :cond_0
    goto :goto_0

    .line 1037
    .end local v2    # "n":Ljavafx/scene/Node;
    :cond_1
    goto :goto_1
.end method

.method private findNextSibling()Ljavafx/scene/control/Menu;
    .locals 5

    .prologue
    .line 1006
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/MenuBarSkin;
    move-object v1, v0

    iget v1, v1, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->focusedMenuIndex:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    move-object v0, v1

    .line 1015
    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/MenuBarSkin;
    :goto_0
    return-object v0

    .line 1007
    .restart local v0    # "this":Lcom/sun/javafx/scene/control/skin/MenuBarSkin;
    :cond_0
    move-object v1, v0

    iget v1, v1, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->focusedMenuIndex:I

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->container:Ljavafx/scene/layout/HBox;

    invoke-virtual {v2}, Ljavafx/scene/layout/HBox;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v2

    invoke-interface {v2}, Ljavafx/collections/ObservableList;->size()I

    move-result v2

    const/4 v3, 0x1

    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_1

    .line 1008
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->focusedMenuIndex:I

    .line 1013
    :goto_1
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v1

    check-cast v1, Ljavafx/scene/control/MenuBar;

    invoke-virtual {v1}, Ljavafx/scene/control/MenuBar;->getMenus()Ljavafx/collections/ObservableList;

    move-result-object v1

    move-object v2, v0

    iget v2, v2, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->focusedMenuIndex:I

    invoke-interface {v1, v2}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/scene/control/Menu;

    invoke-virtual {v1}, Ljavafx/scene/control/Menu;->isDisable()Z

    move-result v1

    if-eqz v1, :cond_2

    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->findNextSibling()Ljavafx/scene/control/Menu;

    move-result-object v1

    move-object v0, v1

    goto :goto_0

    .line 1010
    :cond_1
    move-object v1, v0

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    iget v2, v2, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->focusedMenuIndex:I

    const/4 v3, 0x1

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->focusedMenuIndex:I

    goto :goto_1

    .line 1014
    :cond_2
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->clearMenuButtonHover()V

    .line 1015
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v1

    check-cast v1, Ljavafx/scene/control/MenuBar;

    invoke-virtual {v1}, Ljavafx/scene/control/MenuBar;->getMenus()Ljavafx/collections/ObservableList;

    move-result-object v1

    move-object v2, v0

    iget v2, v2, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->focusedMenuIndex:I

    invoke-interface {v1, v2}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/scene/control/Menu;

    move-object v0, v1

    goto :goto_0
.end method

.method private findPreviousSibling()Ljavafx/scene/control/Menu;
    .locals 5

    .prologue
    .line 993
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/MenuBarSkin;
    move-object v1, v0

    iget v1, v1, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->focusedMenuIndex:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    move-object v0, v1

    .line 1002
    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/MenuBarSkin;
    :goto_0
    return-object v0

    .line 994
    .restart local v0    # "this":Lcom/sun/javafx/scene/control/skin/MenuBarSkin;
    :cond_0
    move-object v1, v0

    iget v1, v1, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->focusedMenuIndex:I

    if-nez v1, :cond_1

    .line 995
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->container:Ljavafx/scene/layout/HBox;

    invoke-virtual {v2}, Ljavafx/scene/layout/HBox;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v2

    invoke-interface {v2}, Ljavafx/collections/ObservableList;->size()I

    move-result v2

    const/4 v3, 0x1

    add-int/lit8 v2, v2, -0x1

    iput v2, v1, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->focusedMenuIndex:I

    .line 1000
    :goto_1
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v1

    check-cast v1, Ljavafx/scene/control/MenuBar;

    invoke-virtual {v1}, Ljavafx/scene/control/MenuBar;->getMenus()Ljavafx/collections/ObservableList;

    move-result-object v1

    move-object v2, v0

    iget v2, v2, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->focusedMenuIndex:I

    invoke-interface {v1, v2}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/scene/control/Menu;

    invoke-virtual {v1}, Ljavafx/scene/control/Menu;->isDisable()Z

    move-result v1

    if-eqz v1, :cond_2

    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->findPreviousSibling()Ljavafx/scene/control/Menu;

    move-result-object v1

    move-object v0, v1

    goto :goto_0

    .line 997
    :cond_1
    move-object v1, v0

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    iget v2, v2, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->focusedMenuIndex:I

    const/4 v3, 0x1

    add-int/lit8 v2, v2, -0x1

    iput v2, v1, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->focusedMenuIndex:I

    goto :goto_1

    .line 1001
    :cond_2
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->clearMenuButtonHover()V

    .line 1002
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v1

    check-cast v1, Ljavafx/scene/control/MenuBar;

    invoke-virtual {v1}, Ljavafx/scene/control/MenuBar;->getMenus()Ljavafx/collections/ObservableList;

    move-result-object v1

    move-object v2, v0

    iget v2, v2, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->focusedMenuIndex:I

    invoke-interface {v1, v2}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/scene/control/Menu;

    move-object v0, v1

    goto :goto_0
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
    .line 1229
    sget-object v0, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->STYLEABLES:Ljava/util/List;

    return-object v0
.end method

.method private getMenuBarButtonIndex(Lcom/sun/javafx/scene/control/skin/MenuBarSkin$MenuBarButton;)I
    .locals 6

    .prologue
    .line 476
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/MenuBarSkin;
    move-object v1, p1

    .local v1, "m":Lcom/sun/javafx/scene/control/skin/MenuBarSkin$MenuBarButton;
    const/4 v4, 0x0

    move v2, v4

    .local v2, "i":I
    :goto_0
    move v4, v2

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->container:Ljavafx/scene/layout/HBox;

    invoke-virtual {v5}, Ljavafx/scene/layout/HBox;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v5

    invoke-interface {v5}, Ljavafx/collections/ObservableList;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 477
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->container:Ljavafx/scene/layout/HBox;

    invoke-virtual {v4}, Ljavafx/scene/layout/HBox;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v4

    move v5, v2

    invoke-interface {v4, v5}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/javafx/scene/control/skin/MenuBarSkin$MenuBarButton;

    move-object v3, v4

    .line 478
    .local v3, "menuButton":Lcom/sun/javafx/scene/control/skin/MenuBarSkin$MenuBarButton;
    move-object v4, v1

    move-object v5, v3

    if-ne v4, v5, :cond_0

    .line 479
    move v4, v2

    move v0, v4

    .line 482
    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/MenuBarSkin;
    .end local v3    # "menuButton":Lcom/sun/javafx/scene/control/skin/MenuBarSkin$MenuBarButton;
    :goto_1
    return v0

    .line 476
    .restart local v0    # "this":Lcom/sun/javafx/scene/control/skin/MenuBarSkin;
    .restart local v3    # "menuButton":Lcom/sun/javafx/scene/control/skin/MenuBarSkin$MenuBarButton;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 482
    .end local v3    # "menuButton":Lcom/sun/javafx/scene/control/skin/MenuBarSkin$MenuBarButton;
    :cond_1
    const/4 v4, -0x1

    move v0, v4

    goto :goto_1
.end method

.method private static getMenuBarSkin(Ljavafx/stage/Stage;)Lcom/sun/javafx/scene/control/skin/MenuBarSkin;
    .locals 4

    .prologue
    .line 122
    move-object v0, p0

    .local v0, "stage":Ljavafx/stage/Stage;
    sget-object v2, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->systemMenuMap:Ljava/util/WeakHashMap;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    move-object v0, v2

    .line 124
    .end local v0    # "stage":Ljavafx/stage/Stage;
    .local v1, "skinRef":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<Lcom/sun/javafx/scene/control/skin/MenuBarSkin;>;"
    :goto_0
    return-object v0

    .line 123
    .end local v1    # "skinRef":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<Lcom/sun/javafx/scene/control/skin/MenuBarSkin;>;"
    .restart local v0    # "stage":Ljavafx/stage/Stage;
    :cond_0
    sget-object v2, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->systemMenuMap:Ljava/util/WeakHashMap;

    move-object v3, v0

    invoke-virtual {v2, v3}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/Reference;

    move-object v1, v2

    .line 124
    .restart local v1    # "skinRef":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<Lcom/sun/javafx/scene/control/skin/MenuBarSkin;>;"
    move-object v2, v1

    if-nez v2, :cond_1

    const/4 v2, 0x0

    :goto_1
    move-object v0, v2

    goto :goto_0

    :cond_1
    move-object v2, v1

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;

    goto :goto_1
.end method

.method private static initSystemMenuBar()V
    .locals 7

    .prologue
    .line 162
    new-instance v4, Ljava/util/WeakHashMap;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v4, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->systemMenuMap:Ljava/util/WeakHashMap;

    .line 164
    invoke-static {}, Lcom/sun/javafx/scene/control/skin/MenuBarSkin$$Lambda$2;->lambdaFactory$()Ljavafx/beans/InvalidationListener;

    move-result-object v4

    move-object v0, v4

    .line 168
    .local v0, "focusedStageListener":Ljavafx/beans/InvalidationListener;
    invoke-static {}, Lcom/sun/javafx/stage/StageHelper;->getStages()Ljavafx/collections/ObservableList;

    move-result-object v4

    move-object v1, v4

    .line 169
    .local v1, "stages":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<Ljavafx/stage/Stage;>;"
    move-object v4, v1

    invoke-interface {v4}, Ljavafx/collections/ObservableList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v2, v4

    :goto_0
    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavafx/stage/Stage;

    move-object v3, v4

    .line 170
    .local v3, "stage":Ljavafx/stage/Stage;
    move-object v4, v3

    invoke-virtual {v4}, Ljavafx/stage/Stage;->focusedProperty()Ljavafx/beans/property/ReadOnlyBooleanProperty;

    move-result-object v4

    move-object v5, v0

    invoke-virtual {v4, v5}, Ljavafx/beans/property/ReadOnlyBooleanProperty;->addListener(Ljavafx/beans/InvalidationListener;)V

    .line 171
    goto :goto_0

    .line 172
    .end local v3    # "stage":Ljavafx/stage/Stage;
    :cond_0
    move-object v4, v1

    move-object v5, v0

    invoke-static {v5}, Lcom/sun/javafx/scene/control/skin/MenuBarSkin$$Lambda$3;->lambdaFactory$(Ljavafx/beans/InvalidationListener;)Ljavafx/collections/ListChangeListener;

    move-result-object v5

    invoke-interface {v4, v5}, Ljavafx/collections/ObservableList;->addListener(Ljavafx/collections/ListChangeListener;)V

    .line 183
    return-void
.end method

.method private isMenuEmpty(Ljavafx/scene/control/Menu;)Z
    .locals 6

    .prologue
    .line 903
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/MenuBarSkin;
    move-object v1, p1

    .local v1, "menu":Ljavafx/scene/control/Menu;
    const/4 v5, 0x1

    move v2, v5

    .line 904
    .local v2, "retVal":Z
    move-object v5, v1

    if-eqz v5, :cond_1

    .line 905
    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/scene/control/Menu;->getItems()Ljavafx/collections/ObservableList;

    move-result-object v5

    invoke-interface {v5}, Ljavafx/collections/ObservableList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v3, v5

    :goto_0
    move-object v5, v3

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    move-object v5, v3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljavafx/scene/control/MenuItem;

    move-object v4, v5

    .line 906
    .local v4, "m":Ljavafx/scene/control/MenuItem;
    move-object v5, v4

    if-eqz v5, :cond_0

    move-object v5, v4

    invoke-virtual {v5}, Ljavafx/scene/control/MenuItem;->isVisible()Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x0

    move v2, v5

    .line 907
    :cond_0
    goto :goto_0

    .line 909
    .end local v4    # "m":Ljavafx/scene/control/MenuItem;
    :cond_1
    move v5, v2

    move v0, v5

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/MenuBarSkin;
    return v0
.end method

.method private static synthetic lambda$initSystemMenuBar$378(Ljavafx/beans/Observable;)V
    .locals 2

    .prologue
    .line 165
    move-object v0, p0

    .local v0, "ov":Ljavafx/beans/Observable;
    move-object v1, v0

    check-cast v1, Ljavafx/beans/property/ReadOnlyProperty;

    invoke-interface {v1}, Ljavafx/beans/property/ReadOnlyProperty;->getBean()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/stage/Stage;

    invoke-static {v1}, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->setSystemMenu(Ljavafx/stage/Stage;)V

    .line 166
    return-void
.end method

.method private static synthetic lambda$initSystemMenuBar$379(Ljavafx/beans/InvalidationListener;Ljavafx/collections/ListChangeListener$Change;)V
    .locals 6

    .prologue
    .line 173
    move-object v0, p0

    .local v0, "focusedStageListener":Ljavafx/beans/InvalidationListener;
    move-object v1, p1

    .local v1, "c":Ljavafx/collections/ListChangeListener$Change;
    :goto_0
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/collections/ListChangeListener$Change;->next()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 174
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/collections/ListChangeListener$Change;->getRemoved()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v2, v4

    :goto_1
    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavafx/stage/Stage;

    move-object v3, v4

    .line 175
    .local v3, "stage":Ljavafx/stage/Stage;
    move-object v4, v3

    invoke-virtual {v4}, Ljavafx/stage/Stage;->focusedProperty()Ljavafx/beans/property/ReadOnlyBooleanProperty;

    move-result-object v4

    move-object v5, v0

    invoke-virtual {v4, v5}, Ljavafx/beans/property/ReadOnlyBooleanProperty;->removeListener(Ljavafx/beans/InvalidationListener;)V

    .line 176
    goto :goto_1

    .line 177
    .end local v3    # "stage":Ljavafx/stage/Stage;
    :cond_0
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/collections/ListChangeListener$Change;->getAddedSubList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v2, v4

    :goto_2
    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavafx/stage/Stage;

    move-object v3, v4

    .line 178
    .restart local v3    # "stage":Ljavafx/stage/Stage;
    move-object v4, v3

    invoke-virtual {v4}, Ljavafx/stage/Stage;->focusedProperty()Ljavafx/beans/property/ReadOnlyBooleanProperty;

    move-result-object v4

    move-object v5, v0

    invoke-virtual {v4, v5}, Ljavafx/beans/property/ReadOnlyBooleanProperty;->addListener(Ljavafx/beans/InvalidationListener;)V

    .line 179
    move-object v4, v3

    invoke-static {v4}, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->setSystemMenu(Ljavafx/stage/Stage;)V

    .line 180
    goto :goto_2

    .end local v3    # "stage":Ljavafx/stage/Stage;
    :cond_1
    goto :goto_0

    .line 182
    :cond_2
    return-void
.end method

.method private synthetic lambda$new$380(Ljavafx/scene/control/MenuBar;Ljavafx/scene/input/KeyEvent;)V
    .locals 7

    .prologue
    .line 214
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/MenuBarSkin;
    move-object v1, p1

    .local v1, "control":Ljavafx/scene/control/MenuBar;
    move-object v2, p2

    .local v2, "event":Ljavafx/scene/input/KeyEvent;
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->openMenu:Ljavafx/scene/control/Menu;

    if-eqz v4, :cond_0

    .line 215
    sget-object v4, Lcom/sun/javafx/scene/control/skin/MenuBarSkin$6;->$SwitchMap$javafx$scene$input$KeyCode:[I

    move-object v5, v2

    invoke-virtual {v5}, Ljavafx/scene/input/KeyEvent;->getCode()Ljavafx/scene/input/KeyCode;

    move-result-object v5

    invoke-virtual {v5}, Ljavafx/scene/input/KeyCode;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 283
    :cond_0
    :goto_0
    return-void

    .line 217
    :pswitch_0
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/control/MenuBar;->getEffectiveNodeOrientation()Ljavafx/geometry/NodeOrientation;

    move-result-object v4

    sget-object v5, Ljavafx/geometry/NodeOrientation;->RIGHT_TO_LEFT:Ljavafx/geometry/NodeOrientation;

    if-ne v4, v5, :cond_1

    const/4 v4, 0x1

    :goto_1
    move v3, v4

    .line 218
    .local v3, "isRTL":Z
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/control/MenuBar;->getScene()Ljavafx/scene/Scene;

    move-result-object v4

    invoke-virtual {v4}, Ljavafx/scene/Scene;->getWindow()Ljavafx/stage/Window;

    move-result-object v4

    invoke-virtual {v4}, Ljavafx/stage/Window;->isFocused()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 219
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->openMenu:Ljavafx/scene/control/Menu;

    if-nez v4, :cond_2

    goto :goto_0

    .line 217
    .end local v3    # "isRTL":Z
    :cond_1
    const/4 v4, 0x0

    goto :goto_1

    .line 220
    .restart local v3    # "isRTL":Z
    :cond_2
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->openMenu:Ljavafx/scene/control/Menu;

    invoke-virtual {v4}, Ljavafx/scene/control/Menu;->isShowing()Z

    move-result v4

    if-nez v4, :cond_4

    .line 221
    move v4, v3

    if-eqz v4, :cond_3

    .line 222
    move-object v4, v0

    invoke-direct {v4}, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->selectNextMenu()V

    .line 226
    :goto_2
    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/scene/input/KeyEvent;->consume()V

    .line 227
    goto :goto_0

    .line 224
    :cond_3
    move-object v4, v0

    invoke-direct {v4}, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->selectPrevMenu()V

    goto :goto_2

    .line 229
    :cond_4
    move v4, v3

    if-eqz v4, :cond_6

    .line 230
    move-object v4, v0

    invoke-direct {v4}, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->showNextMenu()V

    .line 235
    :cond_5
    :goto_3
    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/scene/input/KeyEvent;->consume()V

    .line 236
    goto :goto_0

    .line 232
    :cond_6
    move-object v4, v0

    invoke-direct {v4}, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->showPrevMenu()V

    goto :goto_3

    .line 240
    .end local v3    # "isRTL":Z
    :pswitch_1
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/control/MenuBar;->getEffectiveNodeOrientation()Ljavafx/geometry/NodeOrientation;

    move-result-object v4

    sget-object v5, Ljavafx/geometry/NodeOrientation;->RIGHT_TO_LEFT:Ljavafx/geometry/NodeOrientation;

    if-ne v4, v5, :cond_7

    const/4 v4, 0x1

    :goto_4
    move v3, v4

    .line 241
    .restart local v3    # "isRTL":Z
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/control/MenuBar;->getScene()Ljavafx/scene/Scene;

    move-result-object v4

    invoke-virtual {v4}, Ljavafx/scene/Scene;->getWindow()Ljavafx/stage/Window;

    move-result-object v4

    invoke-virtual {v4}, Ljavafx/stage/Window;->isFocused()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 242
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->openMenu:Ljavafx/scene/control/Menu;

    if-nez v4, :cond_8

    goto :goto_0

    .line 240
    .end local v3    # "isRTL":Z
    :cond_7
    const/4 v4, 0x0

    goto :goto_4

    .line 243
    .restart local v3    # "isRTL":Z
    :cond_8
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->openMenu:Ljavafx/scene/control/Menu;

    invoke-virtual {v4}, Ljavafx/scene/control/Menu;->isShowing()Z

    move-result v4

    if-nez v4, :cond_a

    .line 244
    move v4, v3

    if-eqz v4, :cond_9

    .line 245
    move-object v4, v0

    invoke-direct {v4}, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->selectPrevMenu()V

    .line 249
    :goto_5
    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/scene/input/KeyEvent;->consume()V

    .line 250
    goto/16 :goto_0

    .line 247
    :cond_9
    move-object v4, v0

    invoke-direct {v4}, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->selectNextMenu()V

    goto :goto_5

    .line 252
    :cond_a
    move v4, v3

    if-eqz v4, :cond_c

    .line 253
    move-object v4, v0

    invoke-direct {v4}, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->showPrevMenu()V

    .line 258
    :cond_b
    :goto_6
    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/scene/input/KeyEvent;->consume()V

    .line 259
    goto/16 :goto_0

    .line 255
    :cond_c
    move-object v4, v0

    invoke-direct {v4}, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->showNextMenu()V

    goto :goto_6

    .line 265
    .end local v3    # "isRTL":Z
    :pswitch_2
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/control/MenuBar;->getScene()Ljavafx/scene/Scene;

    move-result-object v4

    invoke-virtual {v4}, Ljavafx/scene/Scene;->getWindow()Ljavafx/stage/Window;

    move-result-object v4

    invoke-virtual {v4}, Ljavafx/stage/Window;->isFocused()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 266
    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->focusedMenuIndex:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->openMenu:Ljavafx/scene/control/Menu;

    if-eqz v4, :cond_0

    .line 267
    move-object v4, v0

    move-object v5, v0

    invoke-virtual {v5}, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v5

    check-cast v5, Ljavafx/scene/control/MenuBar;

    invoke-virtual {v5}, Ljavafx/scene/control/MenuBar;->getMenus()Ljavafx/collections/ObservableList;

    move-result-object v5

    move-object v6, v0

    iget v6, v6, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->focusedMenuIndex:I

    invoke-interface {v5, v6}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljavafx/scene/control/Menu;

    iput-object v5, v4, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->openMenu:Ljavafx/scene/control/Menu;

    .line 268
    move-object v4, v0

    move-object v5, v0

    invoke-virtual {v5}, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v5

    check-cast v5, Ljavafx/scene/control/MenuBar;

    invoke-virtual {v5}, Ljavafx/scene/control/MenuBar;->getMenus()Ljavafx/collections/ObservableList;

    move-result-object v5

    move-object v6, v0

    iget v6, v6, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->focusedMenuIndex:I

    invoke-interface {v5, v6}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljavafx/scene/control/Menu;

    invoke-direct {v4, v5}, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->isMenuEmpty(Ljavafx/scene/control/Menu;)Z

    move-result v4

    if-nez v4, :cond_d

    .line 269
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->openMenu:Ljavafx/scene/control/Menu;

    invoke-virtual {v4}, Ljavafx/scene/control/Menu;->show()V

    .line 271
    :cond_d
    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/scene/input/KeyEvent;->consume()V

    goto/16 :goto_0

    .line 276
    :pswitch_3
    move-object v4, v0

    invoke-direct {v4}, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->unSelectMenus()V

    .line 277
    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/scene/input/KeyEvent;->consume()V

    .line 278
    goto/16 :goto_0

    .line 215
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private synthetic lambda$new$381(Ljavafx/beans/value/ObservableValue;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 7

    .prologue
    .line 285
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/MenuBarSkin;
    move-object v1, p1

    .local v1, "ov":Ljavafx/beans/value/ObservableValue;
    move-object v2, p2

    .local v2, "t":Ljava/lang/Boolean;
    move-object v3, p3

    .local v3, "t1":Ljava/lang/Boolean;
    move-object v4, v3

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 288
    move-object v4, v0

    invoke-direct {v4}, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->unSelectMenus()V

    .line 289
    move-object v4, v0

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->menuModeStart(I)V

    .line 290
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->container:Ljavafx/scene/layout/HBox;

    invoke-virtual {v5}, Ljavafx/scene/layout/HBox;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sun/javafx/scene/control/skin/MenuBarSkin$MenuBarButton;

    iput-object v5, v4, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->openMenuButton:Lcom/sun/javafx/scene/control/skin/MenuBarSkin$MenuBarButton;

    .line 291
    move-object v4, v0

    move-object v5, v0

    invoke-virtual {v5}, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v5

    check-cast v5, Ljavafx/scene/control/MenuBar;

    invoke-virtual {v5}, Ljavafx/scene/control/MenuBar;->getMenus()Ljavafx/collections/ObservableList;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljavafx/scene/control/Menu;

    iput-object v5, v4, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->openMenu:Ljavafx/scene/control/Menu;

    .line 292
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->openMenuButton:Lcom/sun/javafx/scene/control/skin/MenuBarSkin$MenuBarButton;

    invoke-static {v4}, Lcom/sun/javafx/scene/control/skin/MenuBarSkin$MenuBarButton;->access$600(Lcom/sun/javafx/scene/control/skin/MenuBarSkin$MenuBarButton;)V

    .line 296
    :goto_0
    return-void

    .line 294
    :cond_0
    move-object v4, v0

    invoke-direct {v4}, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->unSelectMenus()V

    goto :goto_0
.end method

.method private synthetic lambda$new$382(Ljavafx/scene/Scene;)V
    .locals 5

    .prologue
    .line 299
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/MenuBarSkin;
    move-object v1, p1

    .local v1, "scene":Ljavafx/scene/Scene;
    move-object v2, v1

    sget-object v3, Ljavafx/scene/input/KeyEvent;->KEY_PRESSED:Ljavafx/event/EventType;

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->weakSceneKeyEventHandler:Ljavafx/event/WeakEventHandler;

    invoke-virtual {v2, v3, v4}, Ljavafx/scene/Scene;->addEventFilter(Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V

    .line 300
    return-void
.end method

.method private synthetic lambda$new$383(Ljavafx/scene/input/MouseEvent;)V
    .locals 8

    .prologue
    .line 304
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/MenuBarSkin;
    move-object v2, p1

    .local v2, "t":Ljavafx/scene/input/MouseEvent;
    move-object v3, v1

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->container:Ljavafx/scene/layout/HBox;

    move-object v4, v1

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->container:Ljavafx/scene/layout/HBox;

    invoke-virtual {v4}, Ljavafx/scene/layout/HBox;->getLayoutBounds()Ljavafx/geometry/Bounds;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljavafx/scene/layout/HBox;->localToScreen(Ljavafx/geometry/Bounds;)Ljavafx/geometry/Bounds;

    move-result-object v3

    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/scene/input/MouseEvent;->getScreenX()D

    move-result-wide v4

    move-object v6, v2

    invoke-virtual {v6}, Ljavafx/scene/input/MouseEvent;->getScreenY()D

    move-result-wide v6

    invoke-virtual {v3, v4, v5, v6, v7}, Ljavafx/geometry/Bounds;->contains(DD)Z

    move-result v3

    if-nez v3, :cond_0

    .line 305
    move-object v3, v1

    invoke-direct {v3}, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->unSelectMenus()V

    .line 307
    :cond_0
    return-void
.end method

.method private synthetic lambda$new$384(Ljavafx/scene/Scene;)V
    .locals 5

    .prologue
    .line 310
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/MenuBarSkin;
    move-object v1, p1

    .local v1, "scene":Ljavafx/scene/Scene;
    move-object v2, v1

    sget-object v3, Ljavafx/scene/input/MouseEvent;->MOUSE_CLICKED:Ljavafx/event/EventType;

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->weakSceneMouseEventHandler:Ljavafx/event/WeakEventHandler;

    invoke-virtual {v2, v3, v4}, Ljavafx/scene/Scene;->addEventFilter(Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V

    .line 311
    return-void
.end method

.method private synthetic lambda$new$385(Ljavafx/beans/value/ObservableValue;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 5

    .prologue
    .line 314
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/MenuBarSkin;
    move-object v1, p1

    .local v1, "ov":Ljavafx/beans/value/ObservableValue;
    move-object v2, p2

    .local v2, "t":Ljava/lang/Boolean;
    move-object v3, p3

    .local v3, "t1":Ljava/lang/Boolean;
    move-object v4, v3

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_0

    .line 315
    move-object v4, v0

    invoke-direct {v4}, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->unSelectMenus()V

    .line 317
    :cond_0
    return-void
.end method

.method private synthetic lambda$new$387(Ljavafx/scene/Scene;)V
    .locals 8

    .prologue
    .line 320
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/MenuBarSkin;
    move-object v1, p1

    .local v1, "scene":Ljavafx/scene/Scene;
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/Scene;->getWindow()Ljavafx/stage/Window;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 321
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/Scene;->getWindow()Ljavafx/stage/Window;

    move-result-object v3

    invoke-virtual {v3}, Ljavafx/stage/Window;->focusedProperty()Ljavafx/beans/property/ReadOnlyBooleanProperty;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->weakWindowFocusListener:Ljavafx/beans/value/WeakChangeListener;

    invoke-virtual {v3, v4}, Ljavafx/beans/property/ReadOnlyBooleanProperty;->addListener(Ljavafx/beans/value/ChangeListener;)V

    .line 332
    :goto_0
    return-void

    .line 323
    :cond_0
    move-object v3, v0

    invoke-static {v3}, Lcom/sun/javafx/scene/control/skin/MenuBarSkin$$Lambda$27;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/MenuBarSkin;)Ljavafx/beans/value/ChangeListener;

    move-result-object v3

    move-object v2, v3

    .line 329
    .local v2, "sceneWindowListener":Ljavafx/beans/value/ChangeListener;, "Ljavafx/beans/value/ChangeListener<Ljavafx/stage/Window;>;"
    move-object v3, v0

    new-instance v4, Ljavafx/beans/value/WeakChangeListener;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v2

    invoke-direct {v5, v6}, Ljavafx/beans/value/WeakChangeListener;-><init>(Ljavafx/beans/value/ChangeListener;)V

    iput-object v4, v3, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->weakWindowSceneListener:Ljavafx/beans/value/WeakChangeListener;

    .line 330
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/Scene;->windowProperty()Ljavafx/beans/property/ReadOnlyObjectProperty;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->weakWindowSceneListener:Ljavafx/beans/value/WeakChangeListener;

    invoke-virtual {v3, v4}, Ljavafx/beans/property/ReadOnlyObjectProperty;->addListener(Ljavafx/beans/value/ChangeListener;)V

    goto :goto_0
.end method

.method private synthetic lambda$new$388(Ljavafx/collections/ListChangeListener$Change;)V
    .locals 3

    .prologue
    .line 336
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/MenuBarSkin;
    move-object v1, p1

    .local v1, "c":Ljavafx/collections/ListChangeListener$Change;
    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->rebuildUI()V

    .line 337
    return-void
.end method

.method private synthetic lambda$new$389(Ljavafx/beans/value/ObservableValue;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 5

    .prologue
    .line 340
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/MenuBarSkin;
    move-object v1, p1

    .local v1, "ov":Ljavafx/beans/value/ObservableValue;
    move-object v2, p2

    .local v2, "t":Ljava/lang/Boolean;
    move-object v3, p3

    .local v3, "t1":Ljava/lang/Boolean;
    move-object v4, v0

    invoke-direct {v4}, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->rebuildUI()V

    .line 341
    return-void
.end method

.method private synthetic lambda$new$390(Ljavafx/beans/Observable;)V
    .locals 3

    .prologue
    .line 346
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/MenuBarSkin;
    move-object v1, p1

    .local v1, "valueModel":Ljavafx/beans/Observable;
    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->rebuildUI()V

    .line 347
    return-void
.end method

.method private synthetic lambda$new$392(Ljavafx/scene/input/KeyCombination;Ljavafx/scene/Scene;)V
    .locals 6

    .prologue
    .line 372
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/MenuBarSkin;
    move-object v1, p1

    .local v1, "acceleratorKeyCombo":Ljavafx/scene/input/KeyCombination;
    move-object v2, p2

    .local v2, "scene":Ljavafx/scene/Scene;
    move-object v3, v2

    invoke-virtual {v3}, Ljavafx/scene/Scene;->getAccelerators()Ljavafx/collections/ObservableMap;

    move-result-object v3

    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->firstMenuRunnable:Ljava/lang/Runnable;

    invoke-interface {v3, v4, v5}, Ljavafx/collections/ObservableMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 375
    move-object v3, v2

    sget-object v4, Ljavafx/scene/input/KeyEvent;->KEY_PRESSED:Ljavafx/event/EventType;

    move-object v5, v0

    invoke-static {v5}, Lcom/sun/javafx/scene/control/skin/MenuBarSkin$$Lambda$26;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/MenuBarSkin;)Ljavafx/event/EventHandler;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/Scene;->addEventHandler(Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V

    .line 380
    return-void
.end method

.method private synthetic lambda$new$393(Ljavafx/scene/input/KeyCombination;Ljavafx/beans/value/ObservableValue;Ljavafx/scene/Scene;Ljavafx/scene/Scene;)V
    .locals 8

    .prologue
    .line 387
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/MenuBarSkin;
    move-object v1, p1

    .local v1, "acceleratorKeyCombo":Ljavafx/scene/input/KeyCombination;
    move-object v2, p2

    .local v2, "ov":Ljavafx/beans/value/ObservableValue;
    move-object v3, p3

    .local v3, "t":Ljavafx/scene/Scene;
    move-object v4, p4

    .local v4, "t1":Ljavafx/scene/Scene;
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->weakSceneKeyEventHandler:Ljavafx/event/WeakEventHandler;

    if-eqz v5, :cond_0

    .line 389
    move-object v5, v3

    if-eqz v5, :cond_0

    .line 390
    move-object v5, v3

    sget-object v6, Ljavafx/scene/input/KeyEvent;->KEY_PRESSED:Ljavafx/event/EventType;

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->weakSceneKeyEventHandler:Ljavafx/event/WeakEventHandler;

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/Scene;->removeEventFilter(Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V

    .line 392
    :cond_0
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->weakSceneMouseEventHandler:Ljavafx/event/WeakEventHandler;

    if-eqz v5, :cond_1

    .line 394
    move-object v5, v3

    if-eqz v5, :cond_1

    .line 395
    move-object v5, v3

    sget-object v6, Ljavafx/scene/input/MouseEvent;->MOUSE_CLICKED:Ljavafx/event/EventType;

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->weakSceneMouseEventHandler:Ljavafx/event/WeakEventHandler;

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/Scene;->removeEventFilter(Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V

    .line 402
    :cond_1
    move-object v5, v3

    if-eqz v5, :cond_2

    .line 403
    move-object v5, v3

    invoke-virtual {v5}, Ljavafx/scene/Scene;->getAccelerators()Ljavafx/collections/ObservableMap;

    move-result-object v5

    move-object v6, v1

    invoke-interface {v5, v6}, Ljavafx/collections/ObservableMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 405
    :cond_2
    move-object v5, v4

    if-eqz v5, :cond_3

    .line 406
    move-object v5, v4

    invoke-virtual {v5}, Ljavafx/scene/Scene;->getAccelerators()Ljavafx/collections/ObservableMap;

    move-result-object v5

    move-object v6, v1

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->firstMenuRunnable:Ljava/lang/Runnable;

    invoke-interface {v5, v6, v7}, Ljavafx/collections/ObservableMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 408
    :cond_3
    return-void
.end method

.method private synthetic lambda$new$394(Ljavafx/event/ActionEvent;)V
    .locals 4

    .prologue
    .line 487
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/MenuBarSkin;
    move-object v1, p1

    .local v1, "t":Ljavafx/event/ActionEvent;
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/event/ActionEvent;->getSource()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Ljavafx/scene/control/CustomMenuItem;

    if-eqz v3, :cond_0

    .line 489
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/event/ActionEvent;->getSource()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavafx/scene/control/CustomMenuItem;

    move-object v2, v3

    .line 490
    .local v2, "cmi":Ljavafx/scene/control/CustomMenuItem;
    move-object v3, v2

    invoke-virtual {v3}, Ljavafx/scene/control/CustomMenuItem;->isHideOnClick()Z

    move-result v3

    if-nez v3, :cond_0

    .line 493
    .end local v2    # "cmi":Ljavafx/scene/control/CustomMenuItem;
    :goto_0
    return-void

    .line 492
    :cond_0
    move-object v3, v0

    invoke-direct {v3}, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->unSelectMenus()V

    .line 493
    goto :goto_0
.end method

.method private synthetic lambda$new$395(Ljavafx/collections/ListChangeListener$Change;)V
    .locals 7

    .prologue
    .line 496
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/MenuBarSkin;
    move-object v1, p1

    .local v1, "c":Ljavafx/collections/ListChangeListener$Change;
    :goto_0
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/collections/ListChangeListener$Change;->next()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 497
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/collections/ListChangeListener$Change;->getAddedSubList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v2, v4

    :goto_1
    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavafx/scene/control/MenuItem;

    move-object v3, v4

    .line 498
    .local v3, "mi":Ljavafx/scene/control/MenuItem;
    move-object v4, v3

    sget-object v5, Ljavafx/event/ActionEvent;->ACTION:Ljavafx/event/EventType;

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->menuActionEventHandler:Ljavafx/event/EventHandler;

    invoke-virtual {v4, v5, v6}, Ljavafx/scene/control/MenuItem;->addEventHandler(Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V

    .line 499
    goto :goto_1

    .line 500
    .end local v3    # "mi":Ljavafx/scene/control/MenuItem;
    :cond_0
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/collections/ListChangeListener$Change;->getRemoved()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v2, v4

    :goto_2
    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavafx/scene/control/MenuItem;

    move-object v3, v4

    .line 501
    .restart local v3    # "mi":Ljavafx/scene/control/MenuItem;
    move-object v4, v3

    sget-object v5, Ljavafx/event/ActionEvent;->ACTION:Ljavafx/event/EventType;

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->menuActionEventHandler:Ljavafx/event/EventHandler;

    invoke-virtual {v4, v5, v6}, Ljavafx/scene/control/MenuItem;->removeEventHandler(Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V

    .line 502
    goto :goto_2

    .end local v3    # "mi":Ljavafx/scene/control/MenuItem;
    :cond_1
    goto :goto_0

    .line 504
    :cond_2
    return-void
.end method

.method private synthetic lambda$null$386(Ljavafx/beans/value/ObservableValue;Ljavafx/stage/Window;Ljavafx/stage/Window;)V
    .locals 6

    .prologue
    .line 324
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/MenuBarSkin;
    move-object v1, p1

    .local v1, "observable":Ljavafx/beans/value/ObservableValue;
    move-object v2, p2

    .local v2, "oldValue":Ljavafx/stage/Window;
    move-object v3, p3

    .local v3, "newValue":Ljavafx/stage/Window;
    move-object v4, v2

    if-eqz v4, :cond_0

    .line 325
    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/stage/Window;->focusedProperty()Ljavafx/beans/property/ReadOnlyBooleanProperty;

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->weakWindowFocusListener:Ljavafx/beans/value/WeakChangeListener;

    invoke-virtual {v4, v5}, Ljavafx/beans/property/ReadOnlyBooleanProperty;->removeListener(Ljavafx/beans/value/ChangeListener;)V

    .line 326
    :cond_0
    move-object v4, v3

    if-eqz v4, :cond_1

    .line 327
    move-object v4, v3

    invoke-virtual {v4}, Ljavafx/stage/Window;->focusedProperty()Ljavafx/beans/property/ReadOnlyBooleanProperty;

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->weakWindowFocusListener:Ljavafx/beans/value/WeakChangeListener;

    invoke-virtual {v4, v5}, Ljavafx/beans/property/ReadOnlyBooleanProperty;->addListener(Ljavafx/beans/value/ChangeListener;)V

    .line 328
    :cond_1
    return-void
.end method

.method private synthetic lambda$null$391(Ljavafx/scene/input/KeyEvent;)V
    .locals 3

    .prologue
    .line 376
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/MenuBarSkin;
    move-object v1, p1

    .local v1, "e":Ljavafx/scene/input/KeyEvent;
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/input/KeyEvent;->isAltDown()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/input/KeyEvent;->isConsumed()Z

    move-result v2

    if-nez v2, :cond_0

    .line 377
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->firstMenuRunnable:Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 379
    :cond_0
    return-void
.end method

.method private synthetic lambda$null$396()V
    .locals 2

    .prologue
    .line 597
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/MenuBarSkin;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v1

    check-cast v1, Ljavafx/scene/control/MenuBar;

    invoke-virtual {v1}, Ljavafx/scene/control/MenuBar;->requestLayout()V

    return-void
.end method

.method private synthetic lambda$rebuildUI$397(Ljavafx/beans/value/ObservableValue;Ljavafx/scene/Scene;Ljavafx/scene/Scene;)V
    .locals 13

    .prologue
    .line 561
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/MenuBarSkin;
    move-object v1, p1

    .local v1, "observable":Ljavafx/beans/value/ObservableValue;
    move-object v2, p2

    .local v2, "oldValue":Ljavafx/scene/Scene;
    move-object/from16 v3, p3

    .local v3, "newValue":Ljavafx/scene/Scene;
    move-object v7, v2

    if-eqz v7, :cond_0

    .line 562
    move-object v7, v2

    invoke-virtual {v7}, Ljavafx/scene/Scene;->getWindow()Ljavafx/stage/Window;

    move-result-object v7

    instance-of v7, v7, Ljavafx/stage/Stage;

    if-eqz v7, :cond_0

    .line 563
    move-object v7, v2

    invoke-virtual {v7}, Ljavafx/scene/Scene;->getWindow()Ljavafx/stage/Window;

    move-result-object v7

    check-cast v7, Ljavafx/stage/Stage;

    move-object v4, v7

    .line 564
    .local v4, "stage":Ljavafx/stage/Stage;
    move-object v7, v4

    invoke-static {v7}, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->getMenuBarSkin(Ljavafx/stage/Stage;)Lcom/sun/javafx/scene/control/skin/MenuBarSkin;

    move-result-object v7

    move-object v5, v7

    .line 565
    .local v5, "curMBSkin":Lcom/sun/javafx/scene/control/skin/MenuBarSkin;
    move-object v7, v5

    move-object v8, v0

    if-ne v7, v8, :cond_0

    .line 566
    move-object v7, v5

    const/4 v8, 0x0

    iput-object v8, v7, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->wrappedMenus:Ljava/util/List;

    .line 567
    sget-object v7, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->systemMenuMap:Ljava/util/WeakHashMap;

    move-object v8, v4

    invoke-virtual {v7, v8}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 568
    sget-object v7, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->currentMenuBarStage:Ljavafx/stage/Stage;

    move-object v8, v4

    if-ne v7, v8, :cond_0

    .line 569
    const/4 v7, 0x0

    sput-object v7, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->currentMenuBarStage:Ljavafx/stage/Stage;

    .line 570
    move-object v7, v4

    invoke-static {v7}, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->setSystemMenu(Ljavafx/stage/Stage;)V

    .line 576
    .end local v4    # "stage":Ljavafx/stage/Stage;
    .end local v5    # "curMBSkin":Lcom/sun/javafx/scene/control/skin/MenuBarSkin;
    :cond_0
    move-object v7, v3

    if-eqz v7, :cond_4

    .line 577
    move-object v7, v0

    invoke-virtual {v7}, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v7

    check-cast v7, Ljavafx/scene/control/MenuBar;

    invoke-virtual {v7}, Ljavafx/scene/control/MenuBar;->isUseSystemMenuBar()Z

    move-result v7

    if-eqz v7, :cond_4

    move-object v7, v0

    invoke-direct {v7}, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->menusContainCustomMenuItem()Z

    move-result v7

    if-nez v7, :cond_4

    .line 578
    move-object v7, v3

    invoke-virtual {v7}, Ljavafx/scene/Scene;->getWindow()Ljavafx/stage/Window;

    move-result-object v7

    instance-of v7, v7, Ljavafx/stage/Stage;

    if-eqz v7, :cond_4

    .line 579
    move-object v7, v3

    invoke-virtual {v7}, Ljavafx/scene/Scene;->getWindow()Ljavafx/stage/Window;

    move-result-object v7

    check-cast v7, Ljavafx/stage/Stage;

    move-object v4, v7

    .line 580
    .restart local v4    # "stage":Ljavafx/stage/Stage;
    sget-object v7, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->systemMenuMap:Ljava/util/WeakHashMap;

    if-nez v7, :cond_1

    .line 581
    invoke-static {}, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->initSystemMenuBar()V

    .line 583
    :cond_1
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->wrappedMenus:Ljava/util/List;

    if-nez v7, :cond_2

    .line 584
    move-object v7, v0

    new-instance v8, Ljava/util/ArrayList;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, v7, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->wrappedMenus:Ljava/util/List;

    .line 585
    sget-object v7, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->systemMenuMap:Ljava/util/WeakHashMap;

    move-object v8, v4

    new-instance v9, Ljava/lang/ref/WeakReference;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    move-object v11, v0

    invoke-direct {v10, v11}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v7, v8, v9}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 589
    :goto_0
    move-object v7, v0

    invoke-virtual {v7}, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v7

    check-cast v7, Ljavafx/scene/control/MenuBar;

    invoke-virtual {v7}, Ljavafx/scene/control/MenuBar;->getMenus()Ljavafx/collections/ObservableList;

    move-result-object v7

    invoke-interface {v7}, Ljavafx/collections/ObservableList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move-object v5, v7

    :goto_1
    move-object v7, v5

    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    move-object v7, v5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljavafx/scene/control/Menu;

    move-object v6, v7

    .line 590
    .local v6, "menu":Ljavafx/scene/control/Menu;
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->wrappedMenus:Ljava/util/List;

    move-object v8, v6

    invoke-static {v8}, Lcom/sun/javafx/scene/control/GlobalMenuAdapter;->adapt(Ljavafx/scene/control/Menu;)Lcom/sun/javafx/menu/MenuBase;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v7

    .line 591
    goto :goto_1

    .line 587
    .end local v6    # "menu":Ljavafx/scene/control/Menu;
    :cond_2
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->wrappedMenus:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->clear()V

    goto :goto_0

    .line 592
    :cond_3
    const/4 v7, 0x0

    sput-object v7, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->currentMenuBarStage:Ljavafx/stage/Stage;

    .line 593
    move-object v7, v4

    invoke-static {v7}, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->setSystemMenu(Ljavafx/stage/Stage;)V

    .line 596
    move-object v7, v0

    invoke-virtual {v7}, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v7

    check-cast v7, Ljavafx/scene/control/MenuBar;

    invoke-virtual {v7}, Ljavafx/scene/control/MenuBar;->requestLayout()V

    .line 597
    move-object v7, v0

    invoke-static {v7}, Lcom/sun/javafx/scene/control/skin/MenuBarSkin$$Lambda$25;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/MenuBarSkin;)Ljava/lang/Runnable;

    move-result-object v7

    invoke-static {v7}, Ljavafx/application/Platform;->runLater(Ljava/lang/Runnable;)V

    .line 601
    .end local v4    # "stage":Ljavafx/stage/Stage;
    :cond_4
    return-void
.end method

.method private synthetic lambda$rebuildUI$398(Ljavafx/scene/control/Menu;Lcom/sun/javafx/scene/control/skin/MenuBarSkin$MenuBarButton;Ljavafx/beans/value/ObservableValue;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 9

    .prologue
    .line 640
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/MenuBarSkin;
    move-object v1, p1

    .local v1, "menu":Ljavafx/scene/control/Menu;
    move-object v2, p2

    .local v2, "menuButton":Lcom/sun/javafx/scene/control/skin/MenuBarSkin$MenuBarButton;
    move-object v3, p3

    .local v3, "observable":Ljavafx/beans/value/ObservableValue;
    move-object v4, p4

    .local v4, "oldValue":Ljava/lang/Boolean;
    move-object v5, p5

    .local v5, "newValue":Ljava/lang/Boolean;
    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/control/Menu;->isShowing()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 641
    move-object v6, v2

    invoke-virtual {v6}, Lcom/sun/javafx/scene/control/skin/MenuBarSkin$MenuBarButton;->show()V

    .line 642
    move-object v6, v0

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->container:Ljavafx/scene/layout/HBox;

    invoke-virtual {v7}, Ljavafx/scene/layout/HBox;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v7

    move-object v8, v2

    invoke-interface {v7, v8}, Ljavafx/collections/ObservableList;->indexOf(Ljava/lang/Object;)I

    move-result v7

    invoke-direct {v6, v7}, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->menuModeStart(I)V

    .line 646
    :goto_0
    return-void

    .line 644
    :cond_0
    move-object v6, v2

    invoke-virtual {v6}, Lcom/sun/javafx/scene/control/skin/MenuBarSkin$MenuBarButton;->hide()V

    goto :goto_0
.end method

.method private static synthetic lambda$rebuildUI$399(Lcom/sun/javafx/scene/control/skin/MenuBarSkin$MenuBarButton;Ljavafx/scene/control/Menu;Ljavafx/collections/MapChangeListener$Change;)V
    .locals 5

    .prologue
    .line 654
    move-object v0, p0

    .local v0, "menuButton":Lcom/sun/javafx/scene/control/skin/MenuBarSkin$MenuBarButton;
    move-object v1, p1

    .local v1, "menu":Ljavafx/scene/control/Menu;
    move-object v2, p2

    .local v2, "c":Ljavafx/collections/MapChangeListener$Change;
    move-object v3, v2

    invoke-virtual {v3}, Ljavafx/collections/MapChangeListener$Change;->wasAdded()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "autoHide"

    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/collections/MapChangeListener$Change;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 655
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/MenuBarSkin$MenuBarButton;->getProperties()Ljavafx/collections/ObservableMap;

    move-result-object v3

    const-string v4, "autoHide"

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 656
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/control/Menu;->hide()V

    .line 658
    :cond_0
    return-void
.end method

.method private synthetic lambda$rebuildUI$400(Lcom/sun/javafx/scene/control/skin/MenuBarSkin$MenuBarButton;Ljavafx/scene/control/Menu;Ljavafx/beans/value/ObservableValue;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 8

    .prologue
    .line 660
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/MenuBarSkin;
    move-object v1, p1

    .local v1, "menuButton":Lcom/sun/javafx/scene/control/skin/MenuBarSkin$MenuBarButton;
    move-object v2, p2

    .local v2, "menu":Ljavafx/scene/control/Menu;
    move-object v3, p3

    .local v3, "observable":Ljavafx/beans/value/ObservableValue;
    move-object v4, p4

    .local v4, "oldValue":Ljava/lang/Boolean;
    move-object v5, p5

    .local v5, "isShowing":Ljava/lang/Boolean;
    move-object v6, v5

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 661
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->openMenuButton:Lcom/sun/javafx/scene/control/skin/MenuBarSkin$MenuBarButton;

    if-eqz v6, :cond_0

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->openMenuButton:Lcom/sun/javafx/scene/control/skin/MenuBarSkin$MenuBarButton;

    move-object v7, v1

    if-eq v6, v7, :cond_0

    .line 662
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->openMenuButton:Lcom/sun/javafx/scene/control/skin/MenuBarSkin$MenuBarButton;

    invoke-virtual {v6}, Lcom/sun/javafx/scene/control/skin/MenuBarSkin$MenuBarButton;->hide()V

    .line 664
    :cond_0
    move-object v6, v0

    move-object v7, v1

    iput-object v7, v6, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->openMenuButton:Lcom/sun/javafx/scene/control/skin/MenuBarSkin$MenuBarButton;

    .line 665
    move-object v6, v0

    move-object v7, v2

    iput-object v7, v6, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->openMenu:Ljavafx/scene/control/Menu;

    .line 666
    move-object v6, v2

    invoke-virtual {v6}, Ljavafx/scene/control/Menu;->isShowing()Z

    move-result v6

    if-nez v6, :cond_1

    move-object v6, v2

    invoke-virtual {v6}, Ljavafx/scene/control/Menu;->show()V

    .line 668
    :cond_1
    return-void
.end method

.method private synthetic lambda$rebuildUI$401(Lcom/sun/javafx/scene/control/skin/MenuBarSkin$MenuBarButton;Ljavafx/scene/control/Menu;Ljavafx/scene/input/MouseEvent;)V
    .locals 7

    .prologue
    .line 671
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/MenuBarSkin;
    move-object v1, p1

    .local v1, "menuButton":Lcom/sun/javafx/scene/control/skin/MenuBarSkin$MenuBarButton;
    move-object v2, p2

    .local v2, "menu":Ljavafx/scene/control/Menu;
    move-object v3, p3

    .local v3, "event":Ljavafx/scene/input/MouseEvent;
    move-object v4, v0

    move-object v5, v1

    invoke-virtual {v5}, Lcom/sun/javafx/scene/control/skin/MenuBarSkin$MenuBarButton;->isShowing()Z

    move-result v5

    iput-boolean v5, v4, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->pendingDismiss:Z

    .line 674
    move-object v4, v1

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/skin/MenuBarSkin$MenuBarButton;->getScene()Ljavafx/scene/Scene;

    move-result-object v4

    invoke-virtual {v4}, Ljavafx/scene/Scene;->getWindow()Ljavafx/stage/Window;

    move-result-object v4

    invoke-virtual {v4}, Ljavafx/stage/Window;->isFocused()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 675
    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->openMenu:Ljavafx/scene/control/Menu;

    .line 676
    move-object v4, v0

    move-object v5, v2

    invoke-direct {v4, v5}, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->isMenuEmpty(Ljavafx/scene/control/Menu;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 677
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->openMenu:Ljavafx/scene/control/Menu;

    invoke-virtual {v4}, Ljavafx/scene/control/Menu;->show()V

    .line 680
    :cond_0
    move-object v4, v0

    move-object v5, v0

    move-object v6, v1

    invoke-direct {v5, v6}, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->getMenuBarButtonIndex(Lcom/sun/javafx/scene/control/skin/MenuBarSkin$MenuBarButton;)I

    move-result v5

    invoke-direct {v4, v5}, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->menuModeStart(I)V

    .line 682
    :cond_1
    return-void
.end method

.method private synthetic lambda$rebuildUI$402(Lcom/sun/javafx/scene/control/skin/MenuBarSkin$MenuBarButton;Ljavafx/scene/input/MouseEvent;)V
    .locals 5

    .prologue
    .line 686
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/MenuBarSkin;
    move-object v1, p1

    .local v1, "menuButton":Lcom/sun/javafx/scene/control/skin/MenuBarSkin$MenuBarButton;
    move-object v2, p2

    .local v2, "event":Ljavafx/scene/input/MouseEvent;
    move-object v3, v1

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/MenuBarSkin$MenuBarButton;->getScene()Ljavafx/scene/Scene;

    move-result-object v3

    invoke-virtual {v3}, Ljavafx/scene/Scene;->getWindow()Ljavafx/stage/Window;

    move-result-object v3

    invoke-virtual {v3}, Ljavafx/stage/Window;->isFocused()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 687
    move-object v3, v0

    iget-boolean v3, v3, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->pendingDismiss:Z

    if-eqz v3, :cond_0

    .line 688
    move-object v3, v0

    invoke-direct {v3}, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->resetOpenMenu()V

    .line 692
    :cond_0
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->pendingDismiss:Z

    .line 693
    return-void
.end method

.method private synthetic lambda$rebuildUI$403(Lcom/sun/javafx/scene/control/skin/MenuBarSkin$MenuBarButton;Ljavafx/scene/control/Menu;Ljavafx/scene/input/MouseEvent;)V
    .locals 6

    .prologue
    .line 759
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/MenuBarSkin;
    move-object v1, p1

    .local v1, "menuButton":Lcom/sun/javafx/scene/control/skin/MenuBarSkin$MenuBarButton;
    move-object v2, p2

    .local v2, "menu":Ljavafx/scene/control/Menu;
    move-object v3, p3

    .local v3, "event":Ljavafx/scene/input/MouseEvent;
    move-object v4, v1

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/skin/MenuBarSkin$MenuBarButton;->getScene()Ljavafx/scene/Scene;

    move-result-object v4

    if-eqz v4, :cond_1

    move-object v4, v1

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/skin/MenuBarSkin$MenuBarButton;->getScene()Ljavafx/scene/Scene;

    move-result-object v4

    invoke-virtual {v4}, Ljavafx/scene/Scene;->getWindow()Ljavafx/stage/Window;

    move-result-object v4

    if-eqz v4, :cond_1

    move-object v4, v1

    .line 760
    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/skin/MenuBarSkin$MenuBarButton;->getScene()Ljavafx/scene/Scene;

    move-result-object v4

    invoke-virtual {v4}, Ljavafx/scene/Scene;->getWindow()Ljavafx/stage/Window;

    move-result-object v4

    invoke-virtual {v4}, Ljavafx/stage/Window;->isFocused()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 761
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->openMenuButton:Lcom/sun/javafx/scene/control/skin/MenuBarSkin$MenuBarButton;

    if-eqz v4, :cond_0

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->openMenuButton:Lcom/sun/javafx/scene/control/skin/MenuBarSkin$MenuBarButton;

    move-object v5, v1

    if-eq v4, v5, :cond_0

    .line 762
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->openMenuButton:Lcom/sun/javafx/scene/control/skin/MenuBarSkin$MenuBarButton;

    invoke-static {v4}, Lcom/sun/javafx/scene/control/skin/MenuBarSkin$MenuBarButton;->access$1100(Lcom/sun/javafx/scene/control/skin/MenuBarSkin$MenuBarButton;)V

    .line 763
    move-object v4, v0

    const/4 v5, 0x0

    iput-object v5, v4, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->openMenuButton:Lcom/sun/javafx/scene/control/skin/MenuBarSkin$MenuBarButton;

    .line 764
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->openMenuButton:Lcom/sun/javafx/scene/control/skin/MenuBarSkin$MenuBarButton;

    .line 766
    :cond_0
    move-object v4, v0

    invoke-direct {v4}, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->updateFocusedIndex()V

    .line 767
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->openMenu:Ljavafx/scene/control/Menu;

    if-eqz v4, :cond_1

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->openMenu:Ljavafx/scene/control/Menu;

    move-object v5, v2

    if-eq v4, v5, :cond_1

    .line 769
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->openMenu:Ljavafx/scene/control/Menu;

    invoke-virtual {v4}, Ljavafx/scene/control/Menu;->hide()V

    .line 770
    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->openMenu:Ljavafx/scene/control/Menu;

    .line 771
    move-object v4, v0

    invoke-direct {v4}, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->updateFocusedIndex()V

    .line 772
    move-object v4, v0

    move-object v5, v2

    invoke-direct {v4, v5}, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->isMenuEmpty(Ljavafx/scene/control/Menu;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 773
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->openMenu:Ljavafx/scene/control/Menu;

    invoke-virtual {v4}, Ljavafx/scene/control/Menu;->show()V

    .line 777
    :cond_1
    return-void
.end method

.method private static synthetic lambda$setDefaultSystemMenuBar$377(Ljavafx/scene/control/MenuBar;Ljavafx/collections/ListChangeListener$Change;)V
    .locals 6

    .prologue
    .line 113
    move-object v0, p0

    .local v0, "menuBar":Ljavafx/scene/control/MenuBar;
    move-object v1, p1

    .local v1, "c":Ljavafx/collections/ListChangeListener$Change;
    sget-object v4, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->wrappedDefaultMenus:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 114
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/control/MenuBar;->getMenus()Ljavafx/collections/ObservableList;

    move-result-object v4

    invoke-interface {v4}, Ljavafx/collections/ObservableList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v2, v4

    :goto_0
    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavafx/scene/control/Menu;

    move-object v3, v4

    .line 115
    .local v3, "menu":Ljavafx/scene/control/Menu;
    sget-object v4, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->wrappedDefaultMenus:Ljava/util/List;

    move-object v5, v3

    invoke-static {v5}, Lcom/sun/javafx/scene/control/GlobalMenuAdapter;->adapt(Ljavafx/scene/control/Menu;)Lcom/sun/javafx/menu/MenuBase;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v4

    .line 116
    goto :goto_0

    .line 117
    .end local v3    # "menu":Ljavafx/scene/control/Menu;
    :cond_0
    return-void
.end method

.method private menuContainsCustomMenuItem(Ljavafx/scene/control/Menu;)Z
    .locals 6

    .prologue
    .line 463
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/MenuBarSkin;
    move-object v1, p1

    .local v1, "menu":Ljavafx/scene/control/Menu;
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/control/Menu;->getItems()Ljavafx/collections/ObservableList;

    move-result-object v4

    invoke-interface {v4}, Ljavafx/collections/ObservableList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v2, v4

    :goto_0
    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavafx/scene/control/MenuItem;

    move-object v3, v4

    .line 464
    .local v3, "mi":Ljavafx/scene/control/MenuItem;
    move-object v4, v3

    instance-of v4, v4, Ljavafx/scene/control/CustomMenuItem;

    if-eqz v4, :cond_0

    move-object v4, v3

    instance-of v4, v4, Ljavafx/scene/control/SeparatorMenuItem;

    if-nez v4, :cond_0

    .line 465
    const/4 v4, 0x1

    move v0, v4

    .line 472
    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/MenuBarSkin;
    .end local v3    # "mi":Ljavafx/scene/control/MenuItem;
    :goto_1
    return v0

    .line 466
    .restart local v0    # "this":Lcom/sun/javafx/scene/control/skin/MenuBarSkin;
    .restart local v3    # "mi":Ljavafx/scene/control/MenuItem;
    :cond_0
    move-object v4, v3

    instance-of v4, v4, Ljavafx/scene/control/Menu;

    if-eqz v4, :cond_1

    .line 467
    move-object v4, v0

    move-object v5, v3

    check-cast v5, Ljavafx/scene/control/Menu;

    invoke-direct {v4, v5}, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->menuContainsCustomMenuItem(Ljavafx/scene/control/Menu;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 468
    const/4 v4, 0x1

    move v0, v4

    goto :goto_1

    .line 471
    :cond_1
    goto :goto_0

    .line 472
    .end local v3    # "mi":Ljavafx/scene/control/MenuItem;
    :cond_2
    const/4 v4, 0x0

    move v0, v4

    goto :goto_1
.end method

.method private menuModeEnd()V
    .locals 4

    .prologue
    .line 945
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/MenuBarSkin;
    move-object v1, v0

    iget v1, v1, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->focusedMenuIndex:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 946
    invoke-static {}, Lcom/sun/javafx/scene/SceneHelper;->getSceneAccessor()Lcom/sun/javafx/scene/SceneHelper$SceneAccessor;

    move-result-object v1

    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v2

    check-cast v2, Ljavafx/scene/control/MenuBar;

    invoke-virtual {v2}, Ljavafx/scene/control/MenuBar;->getScene()Ljavafx/scene/Scene;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/sun/javafx/scene/SceneHelper$SceneAccessor;->setTransientFocusContainer(Ljavafx/scene/Scene;Ljavafx/scene/Node;)V

    .line 949
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v1

    check-cast v1, Ljavafx/scene/control/MenuBar;

    sget-object v2, Ljavafx/scene/AccessibleAttribute;->FOCUS_NODE:Ljavafx/scene/AccessibleAttribute;

    invoke-virtual {v1, v2}, Ljavafx/scene/control/MenuBar;->notifyAccessibleAttributeChanged(Ljavafx/scene/AccessibleAttribute;)V

    .line 951
    :cond_0
    move-object v1, v0

    const/4 v2, -0x1

    iput v2, v1, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->focusedMenuIndex:I

    .line 952
    return-void
.end method

.method private menuModeStart(I)V
    .locals 5

    .prologue
    .line 938
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/MenuBarSkin;
    move v1, p1

    .local v1, "newIndex":I
    move-object v2, v0

    iget v2, v2, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->focusedMenuIndex:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 939
    invoke-static {}, Lcom/sun/javafx/scene/SceneHelper;->getSceneAccessor()Lcom/sun/javafx/scene/SceneHelper$SceneAccessor;

    move-result-object v2

    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v3

    check-cast v3, Ljavafx/scene/control/MenuBar;

    invoke-virtual {v3}, Ljavafx/scene/control/MenuBar;->getScene()Ljavafx/scene/Scene;

    move-result-object v3

    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/sun/javafx/scene/SceneHelper$SceneAccessor;->setTransientFocusContainer(Ljavafx/scene/Scene;Ljavafx/scene/Node;)V

    .line 941
    :cond_0
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->focusedMenuIndex:I

    .line 942
    return-void
.end method

.method private menusContainCustomMenuItem()Z
    .locals 5

    .prologue
    .line 453
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/MenuBarSkin;
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v3

    check-cast v3, Ljavafx/scene/control/MenuBar;

    invoke-virtual {v3}, Ljavafx/scene/control/MenuBar;->getMenus()Ljavafx/collections/ObservableList;

    move-result-object v3

    invoke-interface {v3}, Ljavafx/collections/ObservableList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v1, v3

    :goto_0
    move-object v3, v1

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v3, v1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavafx/scene/control/Menu;

    move-object v2, v3

    .line 454
    .local v2, "menu":Ljavafx/scene/control/Menu;
    move-object v3, v0

    move-object v4, v2

    invoke-direct {v3, v4}, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->menuContainsCustomMenuItem(Ljavafx/scene/control/Menu;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 455
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v4, "Warning: MenuBar ignored property useSystemMenuBar because menus contain CustomMenuItem"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 456
    const/4 v3, 0x1

    move v0, v3

    .line 459
    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/MenuBarSkin;
    :goto_1
    return v0

    .line 458
    .restart local v0    # "this":Lcom/sun/javafx/scene/control/skin/MenuBarSkin;
    :cond_0
    goto :goto_0

    .line 459
    .end local v2    # "menu":Ljavafx/scene/control/Menu;
    :cond_1
    const/4 v3, 0x0

    move v0, v3

    goto :goto_1
.end method

.method private rebuildUI()V
    .locals 9

    .prologue
    .line 526
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/MenuBarSkin;
    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v4

    check-cast v4, Ljavafx/scene/control/MenuBar;

    invoke-virtual {v4}, Ljavafx/scene/control/MenuBar;->focusedProperty()Ljavafx/beans/property/ReadOnlyBooleanProperty;

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->menuBarFocusedPropertyListener:Ljavafx/beans/value/ChangeListener;

    invoke-virtual {v4, v5}, Ljavafx/beans/property/ReadOnlyBooleanProperty;->removeListener(Ljavafx/beans/value/ChangeListener;)V

    .line 527
    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v4

    check-cast v4, Ljavafx/scene/control/MenuBar;

    invoke-virtual {v4}, Ljavafx/scene/control/MenuBar;->getMenus()Ljavafx/collections/ObservableList;

    move-result-object v4

    invoke-interface {v4}, Ljavafx/collections/ObservableList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v1, v4

    :goto_0
    move-object v4, v1

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v4, v1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavafx/scene/control/Menu;

    move-object v2, v4

    .line 529
    .local v2, "m":Ljavafx/scene/control/Menu;
    move-object v4, v0

    move-object v5, v2

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->updateActionListeners(Ljavafx/scene/control/Menu;Z)V

    .line 530
    goto :goto_0

    .line 531
    .end local v2    # "m":Ljavafx/scene/control/Menu;
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->container:Ljavafx/scene/layout/HBox;

    invoke-virtual {v4}, Ljavafx/scene/layout/HBox;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v4

    invoke-interface {v4}, Ljavafx/collections/ObservableList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v1, v4

    :goto_1
    move-object v4, v1

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v4, v1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavafx/scene/Node;

    move-object v2, v4

    .line 534
    .local v2, "n":Ljavafx/scene/Node;
    move-object v4, v2

    check-cast v4, Lcom/sun/javafx/scene/control/skin/MenuBarSkin$MenuBarButton;

    move-object v3, v4

    .line 535
    .local v3, "menuButton":Lcom/sun/javafx/scene/control/skin/MenuBarSkin$MenuBarButton;
    move-object v4, v3

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/skin/MenuBarSkin$MenuBarButton;->hide()V

    .line 536
    move-object v4, v3

    invoke-static {v4}, Lcom/sun/javafx/scene/control/skin/MenuBarSkin$MenuBarButton;->access$800(Lcom/sun/javafx/scene/control/skin/MenuBarSkin$MenuBarButton;)Ljavafx/scene/control/Menu;

    move-result-object v4

    invoke-virtual {v4}, Ljavafx/scene/control/Menu;->showingProperty()Ljavafx/beans/property/ReadOnlyBooleanProperty;

    move-result-object v4

    move-object v5, v3

    invoke-static {v5}, Lcom/sun/javafx/scene/control/skin/MenuBarSkin$MenuBarButton;->access$700(Lcom/sun/javafx/scene/control/skin/MenuBarSkin$MenuBarButton;)Ljavafx/beans/value/ChangeListener;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljavafx/beans/property/ReadOnlyBooleanProperty;->removeListener(Ljavafx/beans/value/ChangeListener;)V

    .line 537
    move-object v4, v3

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/skin/MenuBarSkin$MenuBarButton;->disableProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v4

    invoke-virtual {v4}, Ljavafx/beans/property/BooleanProperty;->unbind()V

    .line 538
    move-object v4, v3

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/skin/MenuBarSkin$MenuBarButton;->textProperty()Ljavafx/beans/property/StringProperty;

    move-result-object v4

    invoke-virtual {v4}, Ljavafx/beans/property/StringProperty;->unbind()V

    .line 539
    move-object v4, v3

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/skin/MenuBarSkin$MenuBarButton;->graphicProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v4

    invoke-virtual {v4}, Ljavafx/beans/property/ObjectProperty;->unbind()V

    .line 540
    move-object v4, v3

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/skin/MenuBarSkin$MenuBarButton;->styleProperty()Ljavafx/beans/property/StringProperty;

    move-result-object v4

    invoke-virtual {v4}, Ljavafx/beans/property/StringProperty;->unbind()V

    .line 542
    move-object v4, v3

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/skin/MenuBarSkin$MenuBarButton;->dispose()V

    .line 548
    move-object v4, v3

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/sun/javafx/scene/control/skin/MenuBarSkin$MenuBarButton;->setSkin(Ljavafx/scene/control/Skin;)V

    .line 549
    const/4 v4, 0x0

    move-object v3, v4

    .line 550
    goto :goto_1

    .line 551
    .end local v2    # "n":Ljavafx/scene/Node;
    .end local v3    # "menuButton":Lcom/sun/javafx/scene/control/skin/MenuBarSkin$MenuBarButton;
    :cond_1
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->container:Ljavafx/scene/layout/HBox;

    invoke-virtual {v4}, Ljavafx/scene/layout/HBox;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v4

    invoke-interface {v4}, Ljavafx/collections/ObservableList;->clear()V

    .line 553
    invoke-static {}, Lcom/sun/javafx/tk/Toolkit;->getToolkit()Lcom/sun/javafx/tk/Toolkit;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sun/javafx/tk/Toolkit;->getSystemMenu()Lcom/sun/javafx/tk/TKSystemMenu;

    move-result-object v4

    invoke-interface {v4}, Lcom/sun/javafx/tk/TKSystemMenu;->isSupported()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 555
    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v4

    check-cast v4, Ljavafx/scene/control/MenuBar;

    invoke-virtual {v4}, Ljavafx/scene/control/MenuBar;->getScene()Ljavafx/scene/Scene;

    move-result-object v4

    move-object v1, v4

    .line 556
    .local v1, "scene":Ljavafx/scene/Scene;
    move-object v4, v1

    if-eqz v4, :cond_6

    .line 558
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->sceneChangeListener:Ljavafx/beans/value/ChangeListener;

    if-nez v4, :cond_2

    .line 559
    move-object v4, v0

    move-object v5, v0

    invoke-static {v5}, Lcom/sun/javafx/scene/control/skin/MenuBarSkin$$Lambda$18;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/MenuBarSkin;)Ljavafx/beans/value/ChangeListener;

    move-result-object v5

    iput-object v5, v4, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->sceneChangeListener:Ljavafx/beans/value/ChangeListener;

    .line 602
    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v4

    check-cast v4, Ljavafx/scene/control/MenuBar;

    invoke-virtual {v4}, Ljavafx/scene/control/MenuBar;->sceneProperty()Ljavafx/beans/property/ReadOnlyObjectProperty;

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->sceneChangeListener:Ljavafx/beans/value/ChangeListener;

    invoke-virtual {v4, v5}, Ljavafx/beans/property/ReadOnlyObjectProperty;->addListener(Ljavafx/beans/value/ChangeListener;)V

    .line 606
    :cond_2
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->sceneChangeListener:Ljavafx/beans/value/ChangeListener;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v5

    check-cast v5, Ljavafx/scene/control/MenuBar;

    invoke-virtual {v5}, Ljavafx/scene/control/MenuBar;->sceneProperty()Ljavafx/beans/property/ReadOnlyObjectProperty;

    move-result-object v5

    move-object v6, v1

    move-object v7, v1

    invoke-interface {v4, v5, v6, v7}, Ljavafx/beans/value/ChangeListener;->changed(Ljavafx/beans/value/ObservableValue;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 613
    sget-object v4, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->currentMenuBarStage:Ljavafx/stage/Stage;

    if-eqz v4, :cond_4

    sget-object v4, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->currentMenuBarStage:Ljavafx/stage/Stage;

    invoke-static {v4}, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->getMenuBarSkin(Ljavafx/stage/Stage;)Lcom/sun/javafx/scene/control/skin/MenuBarSkin;

    move-result-object v4

    move-object v5, v0

    if-ne v4, v5, :cond_5

    .line 614
    .line 781
    .end local v1    # "scene":Ljavafx/scene/Scene;
    :cond_3
    :goto_2
    return-void

    .line 613
    .restart local v1    # "scene":Ljavafx/scene/Scene;
    :cond_4
    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v4

    check-cast v4, Ljavafx/scene/control/MenuBar;

    invoke-virtual {v4}, Ljavafx/scene/control/MenuBar;->isUseSystemMenuBar()Z

    move-result v4

    if-nez v4, :cond_3

    .line 628
    .end local v1    # "scene":Ljavafx/scene/Scene;
    :cond_5
    :goto_3
    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v4

    check-cast v4, Ljavafx/scene/control/MenuBar;

    invoke-virtual {v4}, Ljavafx/scene/control/MenuBar;->focusedProperty()Ljavafx/beans/property/ReadOnlyBooleanProperty;

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->menuBarFocusedPropertyListener:Ljavafx/beans/value/ChangeListener;

    invoke-virtual {v4, v5}, Ljavafx/beans/property/ReadOnlyBooleanProperty;->addListener(Ljavafx/beans/value/ChangeListener;)V

    .line 629
    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v4

    check-cast v4, Ljavafx/scene/control/MenuBar;

    invoke-virtual {v4}, Ljavafx/scene/control/MenuBar;->getMenus()Ljavafx/collections/ObservableList;

    move-result-object v4

    invoke-interface {v4}, Ljavafx/collections/ObservableList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v1, v4

    :goto_4
    move-object v4, v1

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    move-object v4, v1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavafx/scene/control/Menu;

    move-object v2, v4

    .line 630
    .local v2, "menu":Ljavafx/scene/control/Menu;
    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/scene/control/Menu;->isVisible()Z

    move-result v4

    if-nez v4, :cond_7

    goto :goto_4

    .line 619
    .end local v2    # "menu":Ljavafx/scene/control/Menu;
    .restart local v1    # "scene":Ljavafx/scene/Scene;
    :cond_6
    sget-object v4, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->currentMenuBarStage:Ljavafx/stage/Stage;

    if-eqz v4, :cond_5

    .line 620
    sget-object v4, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->currentMenuBarStage:Ljavafx/stage/Stage;

    invoke-static {v4}, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->getMenuBarSkin(Ljavafx/stage/Stage;)Lcom/sun/javafx/scene/control/skin/MenuBarSkin;

    move-result-object v4

    move-object v2, v4

    .line 621
    .local v2, "curMBSkin":Lcom/sun/javafx/scene/control/skin/MenuBarSkin;
    move-object v4, v2

    move-object v5, v0

    if-ne v4, v5, :cond_5

    .line 622
    const/4 v4, 0x0

    invoke-static {v4}, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->setSystemMenu(Ljavafx/stage/Stage;)V

    goto :goto_3

    .line 631
    .end local v1    # "scene":Ljavafx/scene/Scene;
    .local v2, "menu":Ljavafx/scene/control/Menu;
    :cond_7
    new-instance v4, Lcom/sun/javafx/scene/control/skin/MenuBarSkin$MenuBarButton;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v0

    move-object v7, v2

    invoke-direct {v5, v6, v7}, Lcom/sun/javafx/scene/control/skin/MenuBarSkin$MenuBarButton;-><init>(Lcom/sun/javafx/scene/control/skin/MenuBarSkin;Ljavafx/scene/control/Menu;)V

    move-object v3, v4

    .line 632
    .restart local v3    # "menuButton":Lcom/sun/javafx/scene/control/skin/MenuBarSkin$MenuBarButton;
    move-object v4, v3

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/sun/javafx/scene/control/skin/MenuBarSkin$MenuBarButton;->setFocusTraversable(Z)V

    .line 633
    move-object v4, v3

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/skin/MenuBarSkin$MenuBarButton;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v4

    const-string v5, "menu"

    invoke-interface {v4, v5}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v4

    .line 634
    move-object v4, v3

    move-object v5, v2

    invoke-virtual {v5}, Ljavafx/scene/control/Menu;->getStyle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sun/javafx/scene/control/skin/MenuBarSkin$MenuBarButton;->setStyle(Ljava/lang/String;)V

    .line 636
    move-object v4, v3

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/skin/MenuBarSkin$MenuBarButton;->getItems()Ljavafx/collections/ObservableList;

    move-result-object v4

    move-object v5, v2

    invoke-virtual {v5}, Ljavafx/scene/control/Menu;->getItems()Ljavafx/collections/ObservableList;

    move-result-object v5

    invoke-interface {v4, v5}, Ljavafx/collections/ObservableList;->setAll(Ljava/util/Collection;)Z

    move-result v4

    .line 637
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->container:Ljavafx/scene/layout/HBox;

    invoke-virtual {v4}, Ljavafx/scene/layout/HBox;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v4

    move-object v5, v3

    invoke-interface {v4, v5}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v4

    .line 639
    move-object v4, v3

    move-object v5, v0

    move-object v6, v2

    move-object v7, v3

    invoke-static {v5, v6, v7}, Lcom/sun/javafx/scene/control/skin/MenuBarSkin$$Lambda$19;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/MenuBarSkin;Ljavafx/scene/control/Menu;Lcom/sun/javafx/scene/control/skin/MenuBarSkin$MenuBarButton;)Ljavafx/beans/value/ChangeListener;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sun/javafx/scene/control/skin/MenuBarSkin$MenuBarButton;->access$702(Lcom/sun/javafx/scene/control/skin/MenuBarSkin$MenuBarButton;Ljavafx/beans/value/ChangeListener;)Ljavafx/beans/value/ChangeListener;

    move-result-object v4

    .line 647
    move-object v4, v3

    move-object v5, v2

    invoke-static {v4, v5}, Lcom/sun/javafx/scene/control/skin/MenuBarSkin$MenuBarButton;->access$802(Lcom/sun/javafx/scene/control/skin/MenuBarSkin$MenuBarButton;Ljavafx/scene/control/Menu;)Ljavafx/scene/control/Menu;

    move-result-object v4

    .line 648
    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/scene/control/Menu;->showingProperty()Ljavafx/beans/property/ReadOnlyBooleanProperty;

    move-result-object v4

    move-object v5, v3

    invoke-static {v5}, Lcom/sun/javafx/scene/control/skin/MenuBarSkin$MenuBarButton;->access$700(Lcom/sun/javafx/scene/control/skin/MenuBarSkin$MenuBarButton;)Ljavafx/beans/value/ChangeListener;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljavafx/beans/property/ReadOnlyBooleanProperty;->addListener(Ljavafx/beans/value/ChangeListener;)V

    .line 649
    move-object v4, v3

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/skin/MenuBarSkin$MenuBarButton;->disableProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v4

    move-object v5, v2

    invoke-virtual {v5}, Ljavafx/scene/control/Menu;->disableProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljavafx/beans/property/BooleanProperty;->bindBidirectional(Ljavafx/beans/property/Property;)V

    .line 650
    move-object v4, v3

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/skin/MenuBarSkin$MenuBarButton;->textProperty()Ljavafx/beans/property/StringProperty;

    move-result-object v4

    move-object v5, v2

    invoke-virtual {v5}, Ljavafx/scene/control/Menu;->textProperty()Ljavafx/beans/property/StringProperty;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljavafx/beans/property/StringProperty;->bind(Ljavafx/beans/value/ObservableValue;)V

    .line 651
    move-object v4, v3

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/skin/MenuBarSkin$MenuBarButton;->graphicProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v4

    move-object v5, v2

    invoke-virtual {v5}, Ljavafx/scene/control/Menu;->graphicProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljavafx/beans/property/ObjectProperty;->bind(Ljavafx/beans/value/ObservableValue;)V

    .line 652
    move-object v4, v3

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/skin/MenuBarSkin$MenuBarButton;->styleProperty()Ljavafx/beans/property/StringProperty;

    move-result-object v4

    move-object v5, v2

    invoke-virtual {v5}, Ljavafx/scene/control/Menu;->styleProperty()Ljavafx/beans/property/StringProperty;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljavafx/beans/property/StringProperty;->bind(Ljavafx/beans/value/ObservableValue;)V

    .line 653
    move-object v4, v3

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/skin/MenuBarSkin$MenuBarButton;->getProperties()Ljavafx/collections/ObservableMap;

    move-result-object v4

    move-object v5, v3

    move-object v6, v2

    invoke-static {v5, v6}, Lcom/sun/javafx/scene/control/skin/MenuBarSkin$$Lambda$20;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/MenuBarSkin$MenuBarButton;Ljavafx/scene/control/Menu;)Ljavafx/collections/MapChangeListener;

    move-result-object v5

    invoke-interface {v4, v5}, Ljavafx/collections/ObservableMap;->addListener(Ljavafx/collections/MapChangeListener;)V

    .line 659
    move-object v4, v3

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/skin/MenuBarSkin$MenuBarButton;->showingProperty()Ljavafx/beans/property/ReadOnlyBooleanProperty;

    move-result-object v4

    move-object v5, v0

    move-object v6, v3

    move-object v7, v2

    invoke-static {v5, v6, v7}, Lcom/sun/javafx/scene/control/skin/MenuBarSkin$$Lambda$21;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/MenuBarSkin;Lcom/sun/javafx/scene/control/skin/MenuBarSkin$MenuBarButton;Ljavafx/scene/control/Menu;)Ljavafx/beans/value/ChangeListener;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljavafx/beans/property/ReadOnlyBooleanProperty;->addListener(Ljavafx/beans/value/ChangeListener;)V

    .line 670
    move-object v4, v3

    move-object v5, v0

    move-object v6, v3

    move-object v7, v2

    invoke-static {v5, v6, v7}, Lcom/sun/javafx/scene/control/skin/MenuBarSkin$$Lambda$22;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/MenuBarSkin;Lcom/sun/javafx/scene/control/skin/MenuBarSkin$MenuBarButton;Ljavafx/scene/control/Menu;)Ljavafx/event/EventHandler;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sun/javafx/scene/control/skin/MenuBarSkin$MenuBarButton;->setOnMousePressed(Ljavafx/event/EventHandler;)V

    .line 684
    move-object v4, v3

    move-object v5, v0

    move-object v6, v3

    invoke-static {v5, v6}, Lcom/sun/javafx/scene/control/skin/MenuBarSkin$$Lambda$23;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/MenuBarSkin;Lcom/sun/javafx/scene/control/skin/MenuBarSkin$MenuBarButton;)Ljavafx/event/EventHandler;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sun/javafx/scene/control/skin/MenuBarSkin$MenuBarButton;->setOnMouseReleased(Ljavafx/event/EventHandler;)V

    .line 757
    move-object v4, v3

    move-object v5, v0

    move-object v6, v3

    move-object v7, v2

    invoke-static {v5, v6, v7}, Lcom/sun/javafx/scene/control/skin/MenuBarSkin$$Lambda$24;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/MenuBarSkin;Lcom/sun/javafx/scene/control/skin/MenuBarSkin$MenuBarButton;Ljavafx/scene/control/Menu;)Ljavafx/event/EventHandler;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sun/javafx/scene/control/skin/MenuBarSkin$MenuBarButton;->setOnMouseEntered(Ljavafx/event/EventHandler;)V

    .line 778
    move-object v4, v0

    move-object v5, v2

    const/4 v6, 0x1

    invoke-direct {v4, v5, v6}, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->updateActionListeners(Ljavafx/scene/control/Menu;Z)V

    .line 779
    goto/16 :goto_4

    .line 780
    .end local v2    # "menu":Ljavafx/scene/control/Menu;
    .end local v3    # "menuButton":Lcom/sun/javafx/scene/control/skin/MenuBarSkin$MenuBarButton;
    :cond_8
    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v4

    check-cast v4, Ljavafx/scene/control/MenuBar;

    invoke-virtual {v4}, Ljavafx/scene/control/MenuBar;->requestLayout()V

    .line 781
    goto/16 :goto_2
.end method

.method private resetOpenMenu()V
    .locals 4

    .prologue
    .line 913
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/MenuBarSkin;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->openMenu:Ljavafx/scene/control/Menu;

    if-eqz v1, :cond_0

    .line 914
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->openMenu:Ljavafx/scene/control/Menu;

    invoke-virtual {v1}, Ljavafx/scene/control/Menu;->hide()V

    .line 915
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->openMenu:Ljavafx/scene/control/Menu;

    .line 916
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->container:Ljavafx/scene/layout/HBox;

    invoke-virtual {v2}, Ljavafx/scene/layout/HBox;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v2

    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->focusedMenuIndex:I

    invoke-interface {v2, v3}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/javafx/scene/control/skin/MenuBarSkin$MenuBarButton;

    iput-object v2, v1, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->openMenuButton:Lcom/sun/javafx/scene/control/skin/MenuBarSkin$MenuBarButton;

    .line 917
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->openMenuButton:Lcom/sun/javafx/scene/control/skin/MenuBarSkin$MenuBarButton;

    invoke-static {v1}, Lcom/sun/javafx/scene/control/skin/MenuBarSkin$MenuBarButton;->access$1100(Lcom/sun/javafx/scene/control/skin/MenuBarSkin$MenuBarButton;)V

    .line 918
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->openMenuButton:Lcom/sun/javafx/scene/control/skin/MenuBarSkin$MenuBarButton;

    .line 919
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->menuModeEnd()V

    .line 921
    :cond_0
    return-void
.end method

.method private selectNextMenu()V
    .locals 5

    .prologue
    .line 955
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/MenuBarSkin;
    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->findNextSibling()Ljavafx/scene/control/Menu;

    move-result-object v2

    move-object v1, v2

    .line 956
    .local v1, "nextMenu":Ljavafx/scene/control/Menu;
    move-object v2, v1

    if-eqz v2, :cond_0

    move-object v2, v0

    iget v2, v2, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->focusedMenuIndex:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 957
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->container:Ljavafx/scene/layout/HBox;

    invoke-virtual {v3}, Ljavafx/scene/layout/HBox;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v3

    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->focusedMenuIndex:I

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sun/javafx/scene/control/skin/MenuBarSkin$MenuBarButton;

    iput-object v3, v2, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->openMenuButton:Lcom/sun/javafx/scene/control/skin/MenuBarSkin$MenuBarButton;

    .line 958
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->openMenuButton:Lcom/sun/javafx/scene/control/skin/MenuBarSkin$MenuBarButton;

    invoke-static {v2}, Lcom/sun/javafx/scene/control/skin/MenuBarSkin$MenuBarButton;->access$600(Lcom/sun/javafx/scene/control/skin/MenuBarSkin$MenuBarButton;)V

    .line 959
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->openMenu:Ljavafx/scene/control/Menu;

    .line 961
    :cond_0
    return-void
.end method

.method private selectPrevMenu()V
    .locals 5

    .prologue
    .line 964
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/MenuBarSkin;
    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->findPreviousSibling()Ljavafx/scene/control/Menu;

    move-result-object v2

    move-object v1, v2

    .line 965
    .local v1, "prevMenu":Ljavafx/scene/control/Menu;
    move-object v2, v1

    if-eqz v2, :cond_0

    move-object v2, v0

    iget v2, v2, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->focusedMenuIndex:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 966
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->container:Ljavafx/scene/layout/HBox;

    invoke-virtual {v3}, Ljavafx/scene/layout/HBox;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v3

    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->focusedMenuIndex:I

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sun/javafx/scene/control/skin/MenuBarSkin$MenuBarButton;

    iput-object v3, v2, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->openMenuButton:Lcom/sun/javafx/scene/control/skin/MenuBarSkin$MenuBarButton;

    .line 967
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->openMenuButton:Lcom/sun/javafx/scene/control/skin/MenuBarSkin$MenuBarButton;

    invoke-static {v2}, Lcom/sun/javafx/scene/control/skin/MenuBarSkin$MenuBarButton;->access$600(Lcom/sun/javafx/scene/control/skin/MenuBarSkin$MenuBarButton;)V

    .line 968
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->openMenu:Ljavafx/scene/control/Menu;

    .line 970
    :cond_0
    return-void
.end method

.method public static setDefaultSystemMenuBar(Ljavafx/scene/control/MenuBar;)V
    .locals 5

    .prologue
    .line 107
    move-object v0, p0

    .local v0, "menuBar":Ljavafx/scene/control/MenuBar;
    invoke-static {}, Lcom/sun/javafx/tk/Toolkit;->getToolkit()Lcom/sun/javafx/tk/Toolkit;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sun/javafx/tk/Toolkit;->getSystemMenu()Lcom/sun/javafx/tk/TKSystemMenu;

    move-result-object v3

    invoke-interface {v3}, Lcom/sun/javafx/tk/TKSystemMenu;->isSupported()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 108
    sget-object v3, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->wrappedDefaultMenus:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 109
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/MenuBar;->getMenus()Ljavafx/collections/ObservableList;

    move-result-object v3

    invoke-interface {v3}, Ljavafx/collections/ObservableList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v1, v3

    :goto_0
    move-object v3, v1

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavafx/scene/control/Menu;

    move-object v2, v3

    .line 110
    .local v2, "menu":Ljavafx/scene/control/Menu;
    sget-object v3, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->wrappedDefaultMenus:Ljava/util/List;

    move-object v4, v2

    invoke-static {v4}, Lcom/sun/javafx/scene/control/GlobalMenuAdapter;->adapt(Ljavafx/scene/control/Menu;)Lcom/sun/javafx/menu/MenuBase;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v3

    .line 111
    goto :goto_0

    .line 112
    .end local v2    # "menu":Ljavafx/scene/control/Menu;
    :cond_0
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/MenuBar;->getMenus()Ljavafx/collections/ObservableList;

    move-result-object v3

    move-object v4, v0

    invoke-static {v4}, Lcom/sun/javafx/scene/control/skin/MenuBarSkin$$Lambda$1;->lambdaFactory$(Ljavafx/scene/control/MenuBar;)Ljavafx/collections/ListChangeListener;

    move-result-object v4

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->addListener(Ljavafx/collections/ListChangeListener;)V

    .line 119
    :cond_1
    return-void
.end method

.method private static setSystemMenu(Ljavafx/stage/Stage;)V
    .locals 5

    .prologue
    .line 128
    move-object v0, p0

    .local v0, "stage":Ljavafx/stage/Stage;
    move-object v3, v0

    if-eqz v3, :cond_5

    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/stage/Stage;->isFocused()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 129
    :goto_0
    move-object v3, v0

    if-eqz v3, :cond_0

    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/stage/Stage;->getOwner()Ljavafx/stage/Window;

    move-result-object v3

    instance-of v3, v3, Ljavafx/stage/Stage;

    if-eqz v3, :cond_0

    .line 130
    move-object v3, v0

    invoke-static {v3}, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->getMenuBarSkin(Ljavafx/stage/Stage;)Lcom/sun/javafx/scene/control/skin/MenuBarSkin;

    move-result-object v3

    move-object v1, v3

    .line 131
    .local v1, "skin":Lcom/sun/javafx/scene/control/skin/MenuBarSkin;
    move-object v3, v1

    if-eqz v3, :cond_4

    move-object v3, v1

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->wrappedMenus:Ljava/util/List;

    if-eqz v3, :cond_4

    .line 132
    .line 145
    .end local v1    # "skin":Lcom/sun/javafx/scene/control/skin/MenuBarSkin;
    :cond_0
    :goto_1
    move-object v3, v0

    sget-object v4, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->currentMenuBarStage:Ljavafx/stage/Stage;

    if-eq v3, v4, :cond_3

    .line 146
    const/4 v3, 0x0

    move-object v1, v3

    .line 147
    .local v1, "menuList":Ljava/util/List;, "Ljava/util/List<Lcom/sun/javafx/menu/MenuBase;>;"
    move-object v3, v0

    if-eqz v3, :cond_1

    .line 148
    move-object v3, v0

    invoke-static {v3}, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->getMenuBarSkin(Ljavafx/stage/Stage;)Lcom/sun/javafx/scene/control/skin/MenuBarSkin;

    move-result-object v3

    move-object v2, v3

    .line 149
    .local v2, "skin":Lcom/sun/javafx/scene/control/skin/MenuBarSkin;
    move-object v3, v2

    if-eqz v3, :cond_1

    .line 150
    move-object v3, v2

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->wrappedMenus:Ljava/util/List;

    move-object v1, v3

    .line 153
    .end local v2    # "skin":Lcom/sun/javafx/scene/control/skin/MenuBarSkin;
    :cond_1
    move-object v3, v1

    if-nez v3, :cond_2

    .line 154
    sget-object v3, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->wrappedDefaultMenus:Ljava/util/List;

    move-object v1, v3

    .line 156
    :cond_2
    invoke-static {}, Lcom/sun/javafx/tk/Toolkit;->getToolkit()Lcom/sun/javafx/tk/Toolkit;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sun/javafx/tk/Toolkit;->getSystemMenu()Lcom/sun/javafx/tk/TKSystemMenu;

    move-result-object v3

    move-object v4, v1

    invoke-interface {v3, v4}, Lcom/sun/javafx/tk/TKSystemMenu;->setMenus(Ljava/util/List;)V

    .line 157
    move-object v3, v0

    sput-object v3, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->currentMenuBarStage:Ljavafx/stage/Stage;

    .line 159
    .end local v1    # "menuList":Ljava/util/List;, "Ljava/util/List<Lcom/sun/javafx/menu/MenuBase;>;"
    :cond_3
    return-void

    .line 138
    .local v1, "skin":Lcom/sun/javafx/scene/control/skin/MenuBarSkin;
    :cond_4
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/stage/Stage;->getOwner()Ljavafx/stage/Window;

    move-result-object v3

    check-cast v3, Ljavafx/stage/Stage;

    move-object v0, v3

    .line 140
    goto :goto_0

    .line 142
    .end local v1    # "skin":Lcom/sun/javafx/scene/control/skin/MenuBarSkin;
    :cond_5
    const/4 v3, 0x0

    move-object v0, v3

    goto :goto_1
.end method

.method private showNextMenu()V
    .locals 4

    .prologue
    .line 973
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/MenuBarSkin;
    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->findNextSibling()Ljavafx/scene/control/Menu;

    move-result-object v2

    move-object v1, v2

    .line 975
    .local v1, "nextMenu":Ljavafx/scene/control/Menu;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->openMenu:Ljavafx/scene/control/Menu;

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->openMenu:Ljavafx/scene/control/Menu;

    invoke-virtual {v2}, Ljavafx/scene/control/Menu;->hide()V

    .line 976
    :cond_0
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->openMenu:Ljavafx/scene/control/Menu;

    .line 977
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->isMenuEmpty(Ljavafx/scene/control/Menu;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 978
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->openMenu:Ljavafx/scene/control/Menu;

    invoke-virtual {v2}, Ljavafx/scene/control/Menu;->show()V

    .line 980
    :cond_1
    return-void
.end method

.method private showPrevMenu()V
    .locals 4

    .prologue
    .line 983
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/MenuBarSkin;
    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->findPreviousSibling()Ljavafx/scene/control/Menu;

    move-result-object v2

    move-object v1, v2

    .line 985
    .local v1, "prevMenu":Ljavafx/scene/control/Menu;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->openMenu:Ljavafx/scene/control/Menu;

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->openMenu:Ljavafx/scene/control/Menu;

    invoke-virtual {v2}, Ljavafx/scene/control/Menu;->hide()V

    .line 986
    :cond_0
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->openMenu:Ljavafx/scene/control/Menu;

    .line 987
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->isMenuEmpty(Ljavafx/scene/control/Menu;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 988
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->openMenu:Ljavafx/scene/control/Menu;

    invoke-virtual {v2}, Ljavafx/scene/control/Menu;->show()V

    .line 990
    :cond_1
    return-void
.end method

.method private unSelectMenus()V
    .locals 3

    .prologue
    .line 924
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/MenuBarSkin;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->clearMenuButtonHover()V

    .line 925
    move-object v1, v0

    iget v1, v1, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->focusedMenuIndex:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 935
    :goto_0
    return-void

    .line 926
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->openMenu:Ljavafx/scene/control/Menu;

    if-eqz v1, :cond_1

    .line 927
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->openMenu:Ljavafx/scene/control/Menu;

    invoke-virtual {v1}, Ljavafx/scene/control/Menu;->hide()V

    .line 928
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->openMenu:Ljavafx/scene/control/Menu;

    .line 930
    :cond_1
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->openMenuButton:Lcom/sun/javafx/scene/control/skin/MenuBarSkin$MenuBarButton;

    if-eqz v1, :cond_2

    .line 931
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->openMenuButton:Lcom/sun/javafx/scene/control/skin/MenuBarSkin$MenuBarButton;

    invoke-static {v1}, Lcom/sun/javafx/scene/control/skin/MenuBarSkin$MenuBarButton;->access$1100(Lcom/sun/javafx/scene/control/skin/MenuBarSkin$MenuBarButton;)V

    .line 932
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->openMenuButton:Lcom/sun/javafx/scene/control/skin/MenuBarSkin$MenuBarButton;

    .line 934
    :cond_2
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->menuModeEnd()V

    .line 935
    goto :goto_0
.end method

.method private updateActionListeners(Ljavafx/scene/control/Menu;Z)V
    .locals 8

    .prologue
    .line 507
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/MenuBarSkin;
    move-object v1, p1

    .local v1, "m":Ljavafx/scene/control/Menu;
    move v2, p2

    .local v2, "add":Z
    move v5, v2

    if-eqz v5, :cond_0

    .line 508
    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/scene/control/Menu;->getItems()Ljavafx/collections/ObservableList;

    move-result-object v5

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->menuItemListener:Ljavafx/collections/ListChangeListener;

    invoke-interface {v5, v6}, Ljavafx/collections/ObservableList;->addListener(Ljavafx/collections/ListChangeListener;)V

    .line 512
    :goto_0
    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/scene/control/Menu;->getItems()Ljavafx/collections/ObservableList;

    move-result-object v5

    invoke-interface {v5}, Ljavafx/collections/ObservableList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v3, v5

    :goto_1
    move-object v5, v3

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    move-object v5, v3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljavafx/scene/control/MenuItem;

    move-object v4, v5

    .line 513
    .local v4, "mi":Ljavafx/scene/control/MenuItem;
    move-object v5, v4

    instance-of v5, v5, Ljavafx/scene/control/Menu;

    if-eqz v5, :cond_1

    .line 514
    move-object v5, v0

    move-object v6, v4

    check-cast v6, Ljavafx/scene/control/Menu;

    move v7, v2

    invoke-direct {v5, v6, v7}, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->updateActionListeners(Ljavafx/scene/control/Menu;Z)V

    .line 522
    :goto_2
    goto :goto_1

    .line 510
    .end local v4    # "mi":Ljavafx/scene/control/MenuItem;
    :cond_0
    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/scene/control/Menu;->getItems()Ljavafx/collections/ObservableList;

    move-result-object v5

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->menuItemListener:Ljavafx/collections/ListChangeListener;

    invoke-interface {v5, v6}, Ljavafx/collections/ObservableList;->removeListener(Ljavafx/collections/ListChangeListener;)V

    goto :goto_0

    .line 516
    .restart local v4    # "mi":Ljavafx/scene/control/MenuItem;
    :cond_1
    move v5, v2

    if-eqz v5, :cond_2

    .line 517
    move-object v5, v4

    sget-object v6, Ljavafx/event/ActionEvent;->ACTION:Ljavafx/event/EventType;

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->menuActionEventHandler:Ljavafx/event/EventHandler;

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/control/MenuItem;->addEventHandler(Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V

    goto :goto_2

    .line 519
    :cond_2
    move-object v5, v4

    sget-object v6, Ljavafx/event/ActionEvent;->ACTION:Ljavafx/event/EventType;

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->menuActionEventHandler:Ljavafx/event/EventHandler;

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/control/MenuItem;->removeEventHandler(Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V

    goto :goto_2

    .line 523
    .end local v4    # "mi":Ljavafx/scene/control/MenuItem;
    :cond_3
    return-void
.end method

.method private updateFocusedIndex()V
    .locals 6

    .prologue
    .line 1019
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/MenuBarSkin;
    const/4 v4, 0x0

    move v1, v4

    .line 1020
    .local v1, "index":I
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->container:Ljavafx/scene/layout/HBox;

    invoke-virtual {v4}, Ljavafx/scene/layout/HBox;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v4

    invoke-interface {v4}, Ljavafx/collections/ObservableList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v2, v4

    :goto_0
    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavafx/scene/Node;

    move-object v3, v4

    .line 1021
    .local v3, "n":Ljavafx/scene/Node;
    move-object v4, v3

    invoke-virtual {v4}, Ljavafx/scene/Node;->isHover()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1022
    move-object v4, v0

    move v5, v1

    iput v5, v4, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->focusedMenuIndex:I

    .line 1023
    .line 1028
    .end local v3    # "n":Ljavafx/scene/Node;
    :goto_1
    return-void

    .line 1025
    .restart local v3    # "n":Ljavafx/scene/Node;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 1026
    goto :goto_0

    .line 1027
    .end local v3    # "n":Ljavafx/scene/Node;
    :cond_1
    move-object v4, v0

    invoke-direct {v4}, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->menuModeEnd()V

    .line 1028
    goto :goto_1
.end method


# virtual methods
.method protected computeMaxHeight(DDDDD)D
    .locals 15

    .prologue
    .line 1158
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/MenuBarSkin;
    move-wide/from16 v2, p1

    .local v2, "width":D
    move-wide/from16 v4, p3

    .local v4, "topInset":D
    move-wide/from16 v6, p5

    .local v6, "rightInset":D
    move-wide/from16 v8, p7

    .local v8, "bottomInset":D
    move-wide/from16 v10, p9

    .local v10, "leftInset":D
    move-object v12, v1

    invoke-virtual {v12}, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v12

    check-cast v12, Ljavafx/scene/control/MenuBar;

    const-wide/high16 v13, -0x4010000000000000L    # -1.0

    invoke-virtual {v12, v13, v14}, Ljavafx/scene/control/MenuBar;->prefHeight(D)D

    move-result-wide v12

    move-wide v1, v12

    .end local v1    # "this":Lcom/sun/javafx/scene/control/skin/MenuBarSkin;
    return-wide v1
.end method

.method protected computeMinHeight(DDDDD)D
    .locals 17

    .prologue
    .line 1149
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/MenuBarSkin;
    move-wide/from16 v2, p1

    .local v2, "width":D
    move-wide/from16 v4, p3

    .local v4, "topInset":D
    move-wide/from16 v6, p5

    .local v6, "rightInset":D
    move-wide/from16 v8, p7

    .local v8, "bottomInset":D
    move-wide/from16 v10, p9

    .local v10, "leftInset":D
    move-object v12, v1

    iget-object v12, v12, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->container:Ljavafx/scene/layout/HBox;

    move-wide v13, v2

    invoke-virtual {v12, v13, v14}, Ljavafx/scene/layout/HBox;->minHeight(D)D

    move-result-wide v12

    move-object v14, v1

    invoke-virtual {v14}, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->snappedTopInset()D

    move-result-wide v14

    add-double/2addr v12, v14

    move-object v14, v1

    invoke-virtual {v14}, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->snappedBottomInset()D

    move-result-wide v14

    add-double/2addr v12, v14

    move-wide v1, v12

    .end local v1    # "this":Lcom/sun/javafx/scene/control/skin/MenuBarSkin;
    return-wide v1
.end method

.method protected computeMinWidth(DDDDD)D
    .locals 17

    .prologue
    .line 1141
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/MenuBarSkin;
    move-wide/from16 v2, p1

    .local v2, "height":D
    move-wide/from16 v4, p3

    .local v4, "topInset":D
    move-wide/from16 v6, p5

    .local v6, "rightInset":D
    move-wide/from16 v8, p7

    .local v8, "bottomInset":D
    move-wide/from16 v10, p9

    .local v10, "leftInset":D
    move-object v12, v1

    iget-object v12, v12, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->container:Ljavafx/scene/layout/HBox;

    move-wide v13, v2

    invoke-virtual {v12, v13, v14}, Ljavafx/scene/layout/HBox;->minWidth(D)D

    move-result-wide v12

    move-object v14, v1

    invoke-virtual {v14}, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->snappedLeftInset()D

    move-result-wide v14

    add-double/2addr v12, v14

    move-object v14, v1

    invoke-virtual {v14}, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->snappedRightInset()D

    move-result-wide v14

    add-double/2addr v12, v14

    move-wide v1, v12

    .end local v1    # "this":Lcom/sun/javafx/scene/control/skin/MenuBarSkin;
    return-wide v1
.end method

.method protected computePrefHeight(DDDDD)D
    .locals 17

    .prologue
    .line 1153
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/MenuBarSkin;
    move-wide/from16 v2, p1

    .local v2, "width":D
    move-wide/from16 v4, p3

    .local v4, "topInset":D
    move-wide/from16 v6, p5

    .local v6, "rightInset":D
    move-wide/from16 v8, p7

    .local v8, "bottomInset":D
    move-wide/from16 v10, p9

    .local v10, "leftInset":D
    move-object v12, v1

    iget-object v12, v12, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->container:Ljavafx/scene/layout/HBox;

    move-wide v13, v2

    invoke-virtual {v12, v13, v14}, Ljavafx/scene/layout/HBox;->prefHeight(D)D

    move-result-wide v12

    move-object v14, v1

    invoke-virtual {v14}, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->snappedTopInset()D

    move-result-wide v14

    add-double/2addr v12, v14

    move-object v14, v1

    invoke-virtual {v14}, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->snappedBottomInset()D

    move-result-wide v14

    add-double/2addr v12, v14

    move-wide v1, v12

    .end local v1    # "this":Lcom/sun/javafx/scene/control/skin/MenuBarSkin;
    return-wide v1
.end method

.method protected computePrefWidth(DDDDD)D
    .locals 17

    .prologue
    .line 1145
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/MenuBarSkin;
    move-wide/from16 v2, p1

    .local v2, "height":D
    move-wide/from16 v4, p3

    .local v4, "topInset":D
    move-wide/from16 v6, p5

    .local v6, "rightInset":D
    move-wide/from16 v8, p7

    .local v8, "bottomInset":D
    move-wide/from16 v10, p9

    .local v10, "leftInset":D
    move-object v12, v1

    iget-object v12, v12, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->container:Ljavafx/scene/layout/HBox;

    move-wide v13, v2

    invoke-virtual {v12, v13, v14}, Ljavafx/scene/layout/HBox;->prefWidth(D)D

    move-result-wide v12

    move-object v14, v1

    invoke-virtual {v14}, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->snappedLeftInset()D

    move-result-wide v14

    add-double/2addr v12, v14

    move-object v14, v1

    invoke-virtual {v14}, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->snappedRightInset()D

    move-result-wide v14

    add-double/2addr v12, v14

    move-wide v1, v12

    .end local v1    # "this":Lcom/sun/javafx/scene/control/skin/MenuBarSkin;
    return-wide v1
.end method

.method public final containerAlignmentProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/geometry/Pos;",
            ">;"
        }
    .end annotation

    .prologue
    .line 840
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/MenuBarSkin;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->containerAlignment:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    .line 841
    move-object v1, v0

    new-instance v2, Lcom/sun/javafx/scene/control/skin/MenuBarSkin$3;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    sget-object v5, Ljavafx/geometry/Pos;->TOP_LEFT:Ljavafx/geometry/Pos;

    invoke-direct {v3, v4, v5}, Lcom/sun/javafx/scene/control/skin/MenuBarSkin$3;-><init>(Lcom/sun/javafx/scene/control/skin/MenuBarSkin;Ljavafx/geometry/Pos;)V

    iput-object v2, v1, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->containerAlignment:Ljavafx/beans/property/ObjectProperty;

    .line 865
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->containerAlignment:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/MenuBarSkin;
    return-object v0
.end method

.method public dispose()V
    .locals 2

    .prologue
    .line 870
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/MenuBarSkin;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->cleanUpSystemMenu()V

    .line 872
    move-object v1, v0

    invoke-super {v1}, Lcom/sun/javafx/scene/control/skin/BehaviorSkinBase;->dispose()V

    .line 873
    return-void
.end method

.method public final getContainerAlignment()Ljavafx/geometry/Pos;
    .locals 2

    .prologue
    .line 836
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/MenuBarSkin;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->containerAlignment:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    sget-object v1, Ljavafx/geometry/Pos;->TOP_LEFT:Ljavafx/geometry/Pos;

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/MenuBarSkin;
    return-object v0

    .restart local v0    # "this":Lcom/sun/javafx/scene/control/skin/MenuBarSkin;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->containerAlignment:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/geometry/Pos;

    goto :goto_0
.end method

.method public getCssMetaData()Ljava/util/List;
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
    .line 1237
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/MenuBarSkin;
    invoke-static {}, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->getClassCssMetaData()Ljava/util/List;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/MenuBarSkin;
    return-object v0
.end method

.method getFocusedMenuIndex()I
    .locals 2

    .prologue
    .line 449
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/MenuBarSkin;
    move-object v1, v0

    iget v1, v1, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->focusedMenuIndex:I

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/MenuBarSkin;
    return v0
.end method

.method getKeyEventHandler()Ljavafx/event/EventHandler;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/scene/input/KeyEvent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 195
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/MenuBarSkin;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->keyEventHandler:Ljavafx/event/EventHandler;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/MenuBarSkin;
    return-object v0
.end method

.method getNodeForMenu(I)Ljavafx/scene/control/MenuButton;
    .locals 4

    .prologue
    .line 442
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/MenuBarSkin;
    move v1, p1

    .local v1, "i":I
    move v2, v1

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->container:Ljavafx/scene/layout/HBox;

    invoke-virtual {v3}, Ljavafx/scene/layout/HBox;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v3

    invoke-interface {v3}, Ljavafx/collections/ObservableList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 443
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->container:Ljavafx/scene/layout/HBox;

    invoke-virtual {v2}, Ljavafx/scene/layout/HBox;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v2

    move v3, v1

    invoke-interface {v2, v3}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/javafx/scene/control/skin/MenuBarSkin$MenuBarButton;

    move-object v0, v2

    .line 445
    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/MenuBarSkin;
    :goto_0
    return-object v0

    .restart local v0    # "this":Lcom/sun/javafx/scene/control/skin/MenuBarSkin;
    :cond_0
    const/4 v2, 0x0

    move-object v0, v2

    goto :goto_0
.end method

.method public final getSpacing()D
    .locals 4

    .prologue
    .line 798
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/MenuBarSkin;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->spacing:Ljavafx/beans/property/DoubleProperty;

    if-nez v1, :cond_0

    const-wide/16 v1, 0x0

    :goto_0
    move-wide v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/MenuBarSkin;
    return-wide v0

    .restart local v0    # "this":Lcom/sun/javafx/scene/control/skin/MenuBarSkin;
    :cond_0
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->spacing:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v2}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->snapSpace(D)D

    move-result-wide v1

    goto :goto_0
.end method

.method protected layoutChildren(DDDD)V
    .locals 19

    .prologue
    .line 1137
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/MenuBarSkin;
    move-wide/from16 v1, p1

    .local v1, "x":D
    move-wide/from16 v3, p3

    .local v3, "y":D
    move-wide/from16 v5, p5

    .local v5, "w":D
    move-wide/from16 v7, p7

    .local v7, "h":D
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->container:Ljavafx/scene/layout/HBox;

    move-wide v10, v1

    move-wide v12, v3

    move-wide v14, v5

    move-wide/from16 v16, v7

    invoke-virtual/range {v9 .. v17}, Ljavafx/scene/layout/HBox;->resizeRelocate(DDDD)V

    .line 1138
    return-void
.end method

.method public onTraverse(Ljavafx/scene/Node;Ljavafx/geometry/Bounds;)V
    .locals 5

    .prologue
    .line 1041
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/MenuBarSkin;
    move-object v1, p1

    .local v1, "node":Ljavafx/scene/Node;
    move-object v2, p2

    .local v2, "bounds":Ljavafx/geometry/Bounds;
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->openMenu:Ljavafx/scene/control/Menu;

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->openMenu:Ljavafx/scene/control/Menu;

    invoke-virtual {v3}, Ljavafx/scene/control/Menu;->hide()V

    .line 1042
    :cond_0
    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->focusedMenuIndex:I

    .line 1043
    return-void
.end method

.method protected varargs queryAccessibleAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .prologue
    .line 1248
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/MenuBarSkin;
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

    .line 1250
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-super {v3, v4, v5}, Lcom/sun/javafx/scene/control/skin/BehaviorSkinBase;->queryAccessibleAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/MenuBarSkin;
    :goto_0
    return-object v0

    .line 1249
    .restart local v0    # "this":Lcom/sun/javafx/scene/control/skin/MenuBarSkin;
    :pswitch_0
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->openMenuButton:Lcom/sun/javafx/scene/control/skin/MenuBarSkin$MenuBarButton;

    move-object v0, v3

    goto :goto_0

    .line 1248
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public final setContainerAlignment(Ljavafx/geometry/Pos;)V
    .locals 4

    .prologue
    .line 832
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/MenuBarSkin;
    move-object v1, p1

    .local v1, "value":Ljavafx/geometry/Pos;
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->containerAlignmentProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 833
    return-void
.end method

.method public final setSpacing(D)V
    .locals 9

    .prologue
    .line 794
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/MenuBarSkin;
    move-wide v2, p1

    .local v2, "value":D
    move-object v4, v1

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->spacingProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v4

    move-object v5, v1

    move-wide v6, v2

    invoke-virtual {v5, v6, v7}, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->snapSpace(D)D

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    .line 795
    return-void
.end method

.method protected snappedBottomInset()D
    .locals 4

    .prologue
    .line 1121
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/MenuBarSkin;
    move-object v2, v1

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->container:Ljavafx/scene/layout/HBox;

    invoke-virtual {v2}, Ljavafx/scene/layout/HBox;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v2

    invoke-interface {v2}, Ljavafx/collections/ObservableList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    const-wide/16 v2, 0x0

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Lcom/sun/javafx/scene/control/skin/MenuBarSkin;
    return-wide v1

    .restart local v1    # "this":Lcom/sun/javafx/scene/control/skin/MenuBarSkin;
    :cond_0
    move-object v2, v1

    invoke-super {v2}, Lcom/sun/javafx/scene/control/skin/BehaviorSkinBase;->snappedBottomInset()D

    move-result-wide v2

    goto :goto_0
.end method

.method protected snappedLeftInset()D
    .locals 4

    .prologue
    .line 1124
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/MenuBarSkin;
    move-object v2, v1

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->container:Ljavafx/scene/layout/HBox;

    invoke-virtual {v2}, Ljavafx/scene/layout/HBox;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v2

    invoke-interface {v2}, Ljavafx/collections/ObservableList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    const-wide/16 v2, 0x0

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Lcom/sun/javafx/scene/control/skin/MenuBarSkin;
    return-wide v1

    .restart local v1    # "this":Lcom/sun/javafx/scene/control/skin/MenuBarSkin;
    :cond_0
    move-object v2, v1

    invoke-super {v2}, Lcom/sun/javafx/scene/control/skin/BehaviorSkinBase;->snappedLeftInset()D

    move-result-wide v2

    goto :goto_0
.end method

.method protected snappedRightInset()D
    .locals 4

    .prologue
    .line 1127
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/MenuBarSkin;
    move-object v2, v1

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->container:Ljavafx/scene/layout/HBox;

    invoke-virtual {v2}, Ljavafx/scene/layout/HBox;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v2

    invoke-interface {v2}, Ljavafx/collections/ObservableList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    const-wide/16 v2, 0x0

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Lcom/sun/javafx/scene/control/skin/MenuBarSkin;
    return-wide v1

    .restart local v1    # "this":Lcom/sun/javafx/scene/control/skin/MenuBarSkin;
    :cond_0
    move-object v2, v1

    invoke-super {v2}, Lcom/sun/javafx/scene/control/skin/BehaviorSkinBase;->snappedRightInset()D

    move-result-wide v2

    goto :goto_0
.end method

.method protected snappedTopInset()D
    .locals 4

    .prologue
    .line 1118
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/MenuBarSkin;
    move-object v2, v1

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->container:Ljavafx/scene/layout/HBox;

    invoke-virtual {v2}, Ljavafx/scene/layout/HBox;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v2

    invoke-interface {v2}, Ljavafx/collections/ObservableList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    const-wide/16 v2, 0x0

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Lcom/sun/javafx/scene/control/skin/MenuBarSkin;
    return-wide v1

    .restart local v1    # "this":Lcom/sun/javafx/scene/control/skin/MenuBarSkin;
    :cond_0
    move-object v2, v1

    invoke-super {v2}, Lcom/sun/javafx/scene/control/skin/BehaviorSkinBase;->snappedTopInset()D

    move-result-wide v2

    goto :goto_0
.end method

.method public final spacingProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 6

    .prologue
    .line 802
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/MenuBarSkin;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->spacing:Ljavafx/beans/property/DoubleProperty;

    if-nez v1, :cond_0

    .line 803
    move-object v1, v0

    new-instance v2, Lcom/sun/javafx/scene/control/skin/MenuBarSkin$2;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Lcom/sun/javafx/scene/control/skin/MenuBarSkin$2;-><init>(Lcom/sun/javafx/scene/control/skin/MenuBarSkin;)V

    iput-object v2, v1, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->spacing:Ljavafx/beans/property/DoubleProperty;

    .line 827
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/MenuBarSkin;->spacing:Ljavafx/beans/property/DoubleProperty;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/MenuBarSkin;
    return-object v0
.end method
