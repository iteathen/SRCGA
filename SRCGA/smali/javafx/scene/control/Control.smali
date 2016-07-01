.class public abstract Ljavafx/scene/control/Control;
.super Ljavafx/scene/layout/Region;
.source "Control.java"

# interfaces
.implements Ljavafx/scene/control/Skinnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavafx/scene/control/Control$StyleableProperties;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final contextMenuHandler:Ljavafx/event/EventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/scene/input/ContextMenuEvent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private contextMenu:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/scene/control/ContextMenu;",
            ">;"
        }
    .end annotation
.end field

.field private currentSkinClassName:Ljava/lang/String;

.field private skin:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/scene/control/Skin",
            "<*>;>;"
        }
    .end annotation
.end field

.field private skinBase:Ljavafx/scene/control/SkinBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/scene/control/SkinBase",
            "<*>;"
        }
    .end annotation
.end field

.field private skinClassName:Ljavafx/beans/property/StringProperty;

.field private styleableProperties:Ljava/util/List;
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

.field private tooltip:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/scene/control/Tooltip;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 81
    const-class v0, Ljavafx/scene/control/Control;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Ljavafx/scene/control/Control;->$assertionsDisabled:Z

    .line 85
    invoke-static {}, Ljavafx/application/Application;->getUserAgentStylesheet()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 86
    invoke-static {}, Lcom/sun/javafx/application/PlatformImpl;->setDefaultPlatformUserAgentStylesheet()V

    .line 176
    :cond_0
    invoke-static {}, Ljavafx/scene/control/Control$$Lambda$1;->lambdaFactory$()Ljavafx/event/EventHandler;

    move-result-object v0

    sput-object v0, Ljavafx/scene/control/Control;->contextMenuHandler:Ljavafx/event/EventHandler;

    return-void

    .line 81
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected constructor <init>()V
    .locals 9

    .prologue
    .line 410
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Control;
    move-object v2, v0

    invoke-direct {v2}, Ljavafx/scene/layout/Region;-><init>()V

    .line 217
    move-object v2, v0

    new-instance v3, Ljavafx/scene/control/Control$1;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    invoke-direct {v4, v5}, Ljavafx/scene/control/Control$1;-><init>(Ljavafx/scene/control/Control;)V

    iput-object v3, v2, Ljavafx/scene/control/Control;->skin:Ljavafx/beans/property/ObjectProperty;

    .line 371
    move-object v2, v0

    new-instance v3, Ljavafx/scene/control/Control$3;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    move-object v6, v0

    const-string v7, "contextMenu"

    invoke-direct {v4, v5, v6, v7}, Ljavafx/scene/control/Control$3;-><init>(Ljavafx/scene/control/Control;Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v3, v2, Ljavafx/scene/control/Control;->contextMenu:Ljavafx/beans/property/ObjectProperty;

    .line 635
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Ljavafx/scene/control/Control;->currentSkinClassName:Ljava/lang/String;

    .line 416
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/Control;->focusTraversableProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v2

    check-cast v2, Ljavafx/css/StyleableProperty;

    move-object v1, v2

    .line 417
    .local v1, "prop":Ljavafx/css/StyleableProperty;, "Ljavafx/css/StyleableProperty<Ljava/lang/Boolean;>;"
    move-object v2, v1

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v2, v3, v4}, Ljavafx/css/StyleableProperty;->applyStyle(Ljavafx/css/StyleOrigin;Ljava/lang/Object;)V

    .line 421
    move-object v2, v0

    sget-object v3, Ljavafx/scene/input/ContextMenuEvent;->CONTEXT_MENU_REQUESTED:Ljavafx/event/EventType;

    sget-object v4, Ljavafx/scene/control/Control;->contextMenuHandler:Ljavafx/event/EventHandler;

    invoke-virtual {v2, v3, v4}, Ljavafx/scene/control/Control;->addEventHandler(Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V

    .line 422
    return-void
.end method

.method static synthetic access$000(Ljavafx/scene/control/Control;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 81
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/control/Control;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Control;->currentSkinClassName:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/control/Control;
    return-object v0
.end method

.method static synthetic access$002(Ljavafx/scene/control/Control;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .prologue
    .line 81
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/control/Control;
    move-object v1, p1

    .local v1, "x1":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    move-object v5, v2

    move-object v6, v3

    move-object v2, v6

    move-object v3, v5

    move-object v4, v6

    iput-object v4, v3, Ljavafx/scene/control/Control;->currentSkinClassName:Ljava/lang/String;

    move-object v0, v2

    .end local v0    # "x0":Ljavafx/scene/control/Control;
    return-object v0
.end method

.method static synthetic access$102(Ljavafx/scene/control/Control;Ljavafx/scene/control/SkinBase;)Ljavafx/scene/control/SkinBase;
    .locals 7

    .prologue
    .line 81
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/control/Control;
    move-object v1, p1

    .local v1, "x1":Ljavafx/scene/control/SkinBase;
    move-object v2, v0

    move-object v3, v1

    move-object v5, v2

    move-object v6, v3

    move-object v2, v6

    move-object v3, v5

    move-object v4, v6

    iput-object v4, v3, Ljavafx/scene/control/Control;->skinBase:Ljavafx/scene/control/SkinBase;

    move-object v0, v2

    .end local v0    # "x0":Ljavafx/scene/control/Control;
    return-object v0
.end method

.method static synthetic access$200(Ljavafx/scene/control/Control;)Ljavafx/scene/Node;
    .locals 2

    .prologue
    .line 81
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/control/Control;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/control/Control;->getSkinNode()Ljavafx/scene/Node;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/control/Control;
    return-object v0
.end method

.method static synthetic access$300(Ljavafx/scene/control/Control;)Ljavafx/collections/ObservableList;
    .locals 2

    .prologue
    .line 81
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/control/Control;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/Control;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/control/Control;
    return-object v0
.end method

.method static synthetic access$400(Ljavafx/scene/control/Control;)Ljavafx/collections/ObservableList;
    .locals 2

    .prologue
    .line 81
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/control/Control;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/Control;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/control/Control;
    return-object v0
.end method

.method static synthetic access$502(Ljavafx/scene/control/Control;Ljava/util/List;)Ljava/util/List;
    .locals 7

    .prologue
    .line 81
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/control/Control;
    move-object v1, p1

    .local v1, "x1":Ljava/util/List;
    move-object v2, v0

    move-object v3, v1

    move-object v5, v2

    move-object v6, v3

    move-object v2, v6

    move-object v3, v5

    move-object v4, v6

    iput-object v4, v3, Ljavafx/scene/control/Control;->styleableProperties:Ljava/util/List;

    move-object v0, v2

    .end local v0    # "x0":Ljavafx/scene/control/Control;
    return-object v0
.end method

.method static synthetic access$700(Ljavafx/scene/control/Control;)Ljavafx/beans/property/StringProperty;
    .locals 2

    .prologue
    .line 81
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/control/Control;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Control;->skinClassName:Ljavafx/beans/property/StringProperty;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/control/Control;
    return-object v0
.end method

.method static synthetic access$800(Ljavafx/scene/control/Control;)Ljavafx/beans/property/ObjectProperty;
    .locals 2

    .prologue
    .line 81
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/control/Control;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Control;->skin:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/control/Control;
    return-object v0
.end method

.method static synthetic access$lambda$0(Ljavafx/scene/input/ContextMenuEvent;)V
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-static {v1}, Ljavafx/scene/control/Control;->lambda$static$1(Ljavafx/scene/input/ContextMenuEvent;)V

    return-void
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
    .line 784
    # getter for: Ljavafx/scene/control/Control$StyleableProperties;->STYLEABLES:Ljava/util/List;
    invoke-static {}, Ljavafx/scene/control/Control$StyleableProperties;->access$900()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private getSkinNode()Ljavafx/scene/Node;
    .locals 5

    .prologue
    .line 627
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Control;
    sget-boolean v2, Ljavafx/scene/control/Control;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/Control;->skinBase:Ljavafx/scene/control/SkinBase;

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 628
    :cond_0
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/Control;->getSkin()Ljavafx/scene/control/Skin;

    move-result-object v2

    move-object v1, v2

    .line 629
    .local v1, "skin":Ljavafx/scene/control/Skin;, "Ljavafx/scene/control/Skin<*>;"
    move-object v2, v1

    if-nez v2, :cond_1

    const/4 v2, 0x0

    :goto_0
    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/control/Control;
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/control/Control;
    :cond_1
    move-object v2, v1

    invoke-interface {v2}, Ljavafx/scene/control/Skin;->getNode()Ljavafx/scene/Node;

    move-result-object v2

    goto :goto_0
.end method

.method private static synthetic lambda$static$1(Ljavafx/scene/input/ContextMenuEvent;)V
    .locals 10

    .prologue
    .line 177
    move-object v1, p0

    .local v1, "event":Ljavafx/scene/input/ContextMenuEvent;
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/input/ContextMenuEvent;->isConsumed()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 188
    :goto_0
    return-void

    .line 180
    :cond_0
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/input/ContextMenuEvent;->getSource()Ljava/lang/Object;

    move-result-object v4

    move-object v2, v4

    .line 181
    .local v2, "source":Ljava/lang/Object;
    move-object v4, v2

    instance-of v4, v4, Ljavafx/scene/control/Control;

    if-eqz v4, :cond_1

    .line 182
    move-object v4, v2

    check-cast v4, Ljavafx/scene/control/Control;

    move-object v3, v4

    .line 183
    .local v3, "c":Ljavafx/scene/control/Control;
    move-object v4, v3

    invoke-virtual {v4}, Ljavafx/scene/control/Control;->getContextMenu()Ljavafx/scene/control/ContextMenu;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 184
    move-object v4, v3

    invoke-virtual {v4}, Ljavafx/scene/control/Control;->getContextMenu()Ljavafx/scene/control/ContextMenu;

    move-result-object v4

    move-object v5, v3

    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/input/ContextMenuEvent;->getScreenX()D

    move-result-wide v6

    move-object v8, v1

    invoke-virtual {v8}, Ljavafx/scene/input/ContextMenuEvent;->getScreenY()D

    move-result-wide v8

    invoke-virtual/range {v4 .. v9}, Ljavafx/scene/control/ContextMenu;->show(Ljavafx/scene/Node;DD)V

    .line 185
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/input/ContextMenuEvent;->consume()V

    .line 188
    .end local v3    # "c":Ljavafx/scene/control/Control;
    :cond_1
    goto :goto_0
.end method

.method static loadClass(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Class;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 111
    move-object v0, p0

    .local v0, "className":Ljava/lang/String;
    move-object v1, p1

    .local v1, "instance":Ljava/lang/Object;
    move-object v5, v0

    :try_start_0
    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    move-object v0, v5

    .line 130
    .end local v0    # "className":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 112
    .restart local v0    # "className":Ljava/lang/String;
    :catch_0
    move-exception v5

    move-object v2, v5

    .line 114
    .local v2, "ex":Ljava/lang/ClassNotFoundException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 116
    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    move-object v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v5

    move-object v0, v5

    goto :goto_0

    .line 117
    :catch_1
    move-exception v5

    move-object v3, v5

    .line 126
    :cond_0
    move-object v5, v1

    if-eqz v5, :cond_1

    .line 127
    move-object v5, v1

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    move-object v3, v5

    .line 128
    .local v3, "currentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_1
    move-object v5, v3

    if-eqz v5, :cond_1

    .line 130
    move-object v5, v3

    :try_start_2
    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    move-object v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v5

    move-object v0, v5

    goto :goto_0

    .line 131
    :catch_2
    move-exception v5

    move-object v4, v5

    .line 132
    .local v4, "ex2":Ljava/lang/ClassNotFoundException;
    move-object v5, v3

    invoke-virtual {v5}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v5

    move-object v3, v5

    .line 133
    goto :goto_1

    .line 139
    .end local v3    # "currentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "ex2":Ljava/lang/ClassNotFoundException;
    :cond_1
    move-object v5, v2

    throw v5
.end method

.method static loadSkinClass(Ljavafx/scene/control/Skinnable;Ljava/lang/String;)V
    .locals 16

    .prologue
    .line 685
    move-object/from16 v0, p0

    .local v0, "control":Ljavafx/scene/control/Skinnable;
    move-object/from16 v1, p1

    .local v1, "skinClassName":Ljava/lang/String;
    move-object v10, v1

    if-eqz v10, :cond_0

    move-object v10, v1

    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 686
    :cond_0
    new-instance v10, Ljava/lang/StringBuilder;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Empty -fx-skin property specified for control "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object v11, v0

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object v2, v10

    .line 688
    .local v2, "msg":Ljava/lang/String;
    invoke-static {}, Lcom/sun/javafx/css/StyleManager;->getErrors()Ljavafx/collections/ObservableList;

    move-result-object v10

    move-object v3, v10

    .line 689
    .local v3, "errors":Ljava/util/List;, "Ljava/util/List<Lcom/sun/javafx/css/CssError;>;"
    move-object v10, v3

    if-eqz v10, :cond_1

    .line 690
    new-instance v10, Lcom/sun/javafx/css/CssError;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    move-object v12, v2

    invoke-direct {v11, v12}, Lcom/sun/javafx/css/CssError;-><init>(Ljava/lang/String;)V

    move-object v4, v10

    .line 691
    .local v4, "error":Lcom/sun/javafx/css/CssError;
    move-object v10, v3

    move-object v11, v4

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v10

    .line 693
    .end local v4    # "error":Lcom/sun/javafx/css/CssError;
    :cond_1
    invoke-static {}, Lcom/sun/javafx/scene/control/Logging;->getControlsLogger()Lsun/util/logging/PlatformLogger;

    move-result-object v10

    move-object v11, v2

    invoke-virtual {v10, v11}, Lsun/util/logging/PlatformLogger;->severe(Ljava/lang/String;)V

    .line 694
    .line 745
    .end local v2    # "msg":Ljava/lang/String;
    .end local v3    # "errors":Ljava/util/List;, "Ljava/util/List<Lcom/sun/javafx/css/CssError;>;"
    :goto_0
    return-void

    .line 698
    :cond_2
    move-object v10, v1

    move-object v11, v0

    :try_start_0
    invoke-static {v10, v11}, Ljavafx/scene/control/Control;->loadClass(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object v10

    move-object v2, v10

    .line 699
    .local v2, "skinClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object v10, v2

    invoke-virtual {v10}, Ljava/lang/Class;->getConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v10

    move-object v3, v10

    .line 700
    .local v3, "constructors":[Ljava/lang/reflect/Constructor;, "[Ljava/lang/reflect/Constructor<*>;"
    const/4 v10, 0x0

    move-object v4, v10

    .line 701
    .local v4, "skinConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    move-object v10, v3

    move-object v5, v10

    move-object v10, v5

    array-length v10, v10

    move v6, v10

    const/4 v10, 0x0

    move v7, v10

    :goto_1
    move v10, v7

    move v11, v6

    if-ge v10, v11, :cond_3

    move-object v10, v5

    move v11, v7

    aget-object v10, v10, v11

    move-object v8, v10

    .line 702
    .local v8, "c":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    move-object v10, v8

    invoke-virtual {v10}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v10

    move-object v9, v10

    .line 703
    .local v9, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    move-object v10, v9

    array-length v10, v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_5

    const-class v10, Ljavafx/scene/control/Skinnable;

    move-object v11, v9

    const/4 v12, 0x0

    aget-object v11, v11, v12

    invoke-virtual {v10, v11}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 704
    move-object v10, v8

    move-object v4, v10

    .line 709
    .end local v8    # "c":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v9    # "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_3
    move-object v10, v4

    if-nez v10, :cond_6

    .line 710
    new-instance v10, Ljava/lang/StringBuilder;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "No valid constructor defined in \'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object v11, v1

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\' for control "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object v11, v0

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ".\r\nYou must provide a constructor that accepts a single "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "Skinnable (e.g. Control or PopupControl) parameter in "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object v11, v1

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object v5, v10

    .line 714
    .local v5, "msg":Ljava/lang/String;
    invoke-static {}, Lcom/sun/javafx/css/StyleManager;->getErrors()Ljavafx/collections/ObservableList;

    move-result-object v10

    move-object v6, v10

    .line 715
    .local v6, "errors":Ljava/util/List;, "Ljava/util/List<Lcom/sun/javafx/css/CssError;>;"
    move-object v10, v6

    if-eqz v10, :cond_4

    .line 716
    new-instance v10, Lcom/sun/javafx/css/CssError;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    move-object v12, v5

    invoke-direct {v11, v12}, Lcom/sun/javafx/css/CssError;-><init>(Ljava/lang/String;)V

    move-object v7, v10

    .line 717
    .local v7, "error":Lcom/sun/javafx/css/CssError;
    move-object v10, v6

    move-object v11, v7

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v10

    .line 719
    .end local v7    # "error":Lcom/sun/javafx/css/CssError;
    :cond_4
    invoke-static {}, Lcom/sun/javafx/scene/control/Logging;->getControlsLogger()Lsun/util/logging/PlatformLogger;

    move-result-object v10

    move-object v11, v5

    invoke-virtual {v10, v11}, Lsun/util/logging/PlatformLogger;->severe(Ljava/lang/String;)V

    .line 720
    .line 744
    .line 745
    .end local v2    # "skinClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "constructors":[Ljava/lang/reflect/Constructor;, "[Ljava/lang/reflect/Constructor<*>;"
    .end local v4    # "skinConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v5    # "msg":Ljava/lang/String;
    .end local v6    # "errors":Ljava/util/List;, "Ljava/util/List<Lcom/sun/javafx/css/CssError;>;"
    :goto_2
    goto/16 :goto_0

    .line 701
    .restart local v2    # "skinClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v3    # "constructors":[Ljava/lang/reflect/Constructor;, "[Ljava/lang/reflect/Constructor<*>;"
    .restart local v4    # "skinConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .restart local v8    # "c":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .restart local v9    # "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1

    .line 721
    .end local v8    # "c":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v9    # "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_6
    move-object v10, v4

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    const/4 v13, 0x0

    move-object v14, v0

    aput-object v14, v12, v13

    invoke-virtual {v10, v11}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljavafx/scene/control/Skin;

    move-object v5, v10

    .line 724
    .local v5, "skinInstance":Ljavafx/scene/control/Skin;, "Ljavafx/scene/control/Skin<*>;"
    move-object v10, v0

    invoke-interface {v10}, Ljavafx/scene/control/Skinnable;->skinProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v10

    move-object v11, v5

    invoke-virtual {v10, v11}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_2

    .line 726
    .end local v2    # "skinClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "constructors":[Ljava/lang/reflect/Constructor;, "[Ljava/lang/reflect/Constructor<*>;"
    .end local v4    # "skinConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v5    # "skinInstance":Ljavafx/scene/control/Skin;, "Ljavafx/scene/control/Skin<*>;"
    :catch_0
    move-exception v10

    move-object v2, v10

    .line 727
    .local v2, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v10, Ljava/lang/StringBuilder;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failed to load skin \'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object v11, v1

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\' for control "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object v11, v0

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object v3, v10

    .line 729
    .local v3, "msg":Ljava/lang/String;
    invoke-static {}, Lcom/sun/javafx/css/StyleManager;->getErrors()Ljavafx/collections/ObservableList;

    move-result-object v10

    move-object v4, v10

    .line 730
    .local v4, "errors":Ljava/util/List;, "Ljava/util/List<Lcom/sun/javafx/css/CssError;>;"
    move-object v10, v4

    if-eqz v10, :cond_7

    .line 731
    new-instance v10, Lcom/sun/javafx/css/CssError;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    new-instance v12, Ljava/lang/StringBuilder;

    move-object v15, v12

    move-object v12, v15

    move-object v13, v15

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object v13, v3

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " :"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object v13, v2

    invoke-virtual {v13}, Ljava/lang/reflect/InvocationTargetException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Lcom/sun/javafx/css/CssError;-><init>(Ljava/lang/String;)V

    move-object v5, v10

    .line 732
    .local v5, "error":Lcom/sun/javafx/css/CssError;
    move-object v10, v4

    move-object v11, v5

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v10

    .line 734
    .end local v5    # "error":Lcom/sun/javafx/css/CssError;
    :cond_7
    invoke-static {}, Lcom/sun/javafx/scene/control/Logging;->getControlsLogger()Lsun/util/logging/PlatformLogger;

    move-result-object v10

    move-object v11, v3

    move-object v12, v2

    invoke-virtual {v12}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lsun/util/logging/PlatformLogger;->severe(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 744
    goto/16 :goto_2

    .line 735
    .end local v2    # "e":Ljava/lang/reflect/InvocationTargetException;
    .end local v3    # "msg":Ljava/lang/String;
    .end local v4    # "errors":Ljava/util/List;, "Ljava/util/List<Lcom/sun/javafx/css/CssError;>;"
    :catch_1
    move-exception v10

    move-object v2, v10

    .line 736
    .local v2, "e":Ljava/lang/Exception;
    new-instance v10, Ljava/lang/StringBuilder;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failed to load skin \'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object v11, v1

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\' for control "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object v11, v0

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object v3, v10

    .line 738
    .restart local v3    # "msg":Ljava/lang/String;
    invoke-static {}, Lcom/sun/javafx/css/StyleManager;->getErrors()Ljavafx/collections/ObservableList;

    move-result-object v10

    move-object v4, v10

    .line 739
    .restart local v4    # "errors":Ljava/util/List;, "Ljava/util/List<Lcom/sun/javafx/css/CssError;>;"
    move-object v10, v4

    if-eqz v10, :cond_8

    .line 740
    new-instance v10, Lcom/sun/javafx/css/CssError;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    new-instance v12, Ljava/lang/StringBuilder;

    move-object v15, v12

    move-object v12, v15

    move-object v13, v15

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object v13, v3

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " :"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object v13, v2

    invoke-virtual {v13}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Lcom/sun/javafx/css/CssError;-><init>(Ljava/lang/String;)V

    move-object v5, v10

    .line 741
    .restart local v5    # "error":Lcom/sun/javafx/css/CssError;
    move-object v10, v4

    move-object v11, v5

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v10

    .line 743
    .end local v5    # "error":Lcom/sun/javafx/css/CssError;
    :cond_8
    invoke-static {}, Lcom/sun/javafx/scene/control/Logging;->getControlsLogger()Lsun/util/logging/PlatformLogger;

    move-result-object v10

    move-object v11, v3

    move-object v12, v2

    invoke-virtual {v10, v11, v12}, Lsun/util/logging/PlatformLogger;->severe(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2
.end method


# virtual methods
.method protected computeMaxHeight(D)D
    .locals 17

    .prologue
    .line 523
    move-object/from16 v1, p0

    .local v1, "this":Ljavafx/scene/control/Control;
    move-wide/from16 v2, p1

    .local v2, "width":D
    move-object v5, v1

    iget-object v5, v5, Ljavafx/scene/control/Control;->skinBase:Ljavafx/scene/control/SkinBase;

    if-eqz v5, :cond_0

    .line 524
    move-object v5, v1

    iget-object v5, v5, Ljavafx/scene/control/Control;->skinBase:Ljavafx/scene/control/SkinBase;

    move-wide v6, v2

    move-object v8, v1

    invoke-virtual {v8}, Ljavafx/scene/control/Control;->snappedTopInset()D

    move-result-wide v8

    move-object v10, v1

    invoke-virtual {v10}, Ljavafx/scene/control/Control;->snappedRightInset()D

    move-result-wide v10

    move-object v12, v1

    invoke-virtual {v12}, Ljavafx/scene/control/Control;->snappedBottomInset()D

    move-result-wide v12

    move-object v14, v1

    invoke-virtual {v14}, Ljavafx/scene/control/Control;->snappedLeftInset()D

    move-result-wide v14

    invoke-virtual/range {v5 .. v15}, Ljavafx/scene/control/SkinBase;->computeMaxHeight(DDDDD)D

    move-result-wide v5

    move-wide v1, v5

    .line 527
    .end local v1    # "this":Ljavafx/scene/control/Control;
    :goto_0
    return-wide v1

    .line 526
    .restart local v1    # "this":Ljavafx/scene/control/Control;
    :cond_0
    move-object v5, v1

    invoke-direct {v5}, Ljavafx/scene/control/Control;->getSkinNode()Ljavafx/scene/Node;

    move-result-object v5

    move-object v4, v5

    .line 527
    .local v4, "skinNode":Ljavafx/scene/Node;
    move-object v5, v4

    if-nez v5, :cond_1

    const-wide/16 v5, 0x0

    :goto_1
    move-wide v1, v5

    goto :goto_0

    :cond_1
    move-object v5, v4

    move-wide v6, v2

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/Node;->maxHeight(D)D

    move-result-wide v5

    goto :goto_1
.end method

.method protected computeMaxWidth(D)D
    .locals 17

    .prologue
    .line 504
    move-object/from16 v1, p0

    .local v1, "this":Ljavafx/scene/control/Control;
    move-wide/from16 v2, p1

    .local v2, "height":D
    move-object v5, v1

    iget-object v5, v5, Ljavafx/scene/control/Control;->skinBase:Ljavafx/scene/control/SkinBase;

    if-eqz v5, :cond_0

    .line 505
    move-object v5, v1

    iget-object v5, v5, Ljavafx/scene/control/Control;->skinBase:Ljavafx/scene/control/SkinBase;

    move-wide v6, v2

    move-object v8, v1

    invoke-virtual {v8}, Ljavafx/scene/control/Control;->snappedTopInset()D

    move-result-wide v8

    move-object v10, v1

    invoke-virtual {v10}, Ljavafx/scene/control/Control;->snappedRightInset()D

    move-result-wide v10

    move-object v12, v1

    invoke-virtual {v12}, Ljavafx/scene/control/Control;->snappedBottomInset()D

    move-result-wide v12

    move-object v14, v1

    invoke-virtual {v14}, Ljavafx/scene/control/Control;->snappedLeftInset()D

    move-result-wide v14

    invoke-virtual/range {v5 .. v15}, Ljavafx/scene/control/SkinBase;->computeMaxWidth(DDDDD)D

    move-result-wide v5

    move-wide v1, v5

    .line 508
    .end local v1    # "this":Ljavafx/scene/control/Control;
    :goto_0
    return-wide v1

    .line 507
    .restart local v1    # "this":Ljavafx/scene/control/Control;
    :cond_0
    move-object v5, v1

    invoke-direct {v5}, Ljavafx/scene/control/Control;->getSkinNode()Ljavafx/scene/Node;

    move-result-object v5

    move-object v4, v5

    .line 508
    .local v4, "skinNode":Ljavafx/scene/Node;
    move-object v5, v4

    if-nez v5, :cond_1

    const-wide/16 v5, 0x0

    :goto_1
    move-wide v1, v5

    goto :goto_0

    :cond_1
    move-object v5, v4

    move-wide v6, v2

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/Node;->maxWidth(D)D

    move-result-wide v5

    goto :goto_1
.end method

.method protected computeMinHeight(D)D
    .locals 17

    .prologue
    .line 485
    move-object/from16 v1, p0

    .local v1, "this":Ljavafx/scene/control/Control;
    move-wide/from16 v2, p1

    .local v2, "width":D
    move-object v5, v1

    iget-object v5, v5, Ljavafx/scene/control/Control;->skinBase:Ljavafx/scene/control/SkinBase;

    if-eqz v5, :cond_0

    .line 486
    move-object v5, v1

    iget-object v5, v5, Ljavafx/scene/control/Control;->skinBase:Ljavafx/scene/control/SkinBase;

    move-wide v6, v2

    move-object v8, v1

    invoke-virtual {v8}, Ljavafx/scene/control/Control;->snappedTopInset()D

    move-result-wide v8

    move-object v10, v1

    invoke-virtual {v10}, Ljavafx/scene/control/Control;->snappedRightInset()D

    move-result-wide v10

    move-object v12, v1

    invoke-virtual {v12}, Ljavafx/scene/control/Control;->snappedBottomInset()D

    move-result-wide v12

    move-object v14, v1

    invoke-virtual {v14}, Ljavafx/scene/control/Control;->snappedLeftInset()D

    move-result-wide v14

    invoke-virtual/range {v5 .. v15}, Ljavafx/scene/control/SkinBase;->computeMinHeight(DDDDD)D

    move-result-wide v5

    move-wide v1, v5

    .line 489
    .end local v1    # "this":Ljavafx/scene/control/Control;
    :goto_0
    return-wide v1

    .line 488
    .restart local v1    # "this":Ljavafx/scene/control/Control;
    :cond_0
    move-object v5, v1

    invoke-direct {v5}, Ljavafx/scene/control/Control;->getSkinNode()Ljavafx/scene/Node;

    move-result-object v5

    move-object v4, v5

    .line 489
    .local v4, "skinNode":Ljavafx/scene/Node;
    move-object v5, v4

    if-nez v5, :cond_1

    const-wide/16 v5, 0x0

    :goto_1
    move-wide v1, v5

    goto :goto_0

    :cond_1
    move-object v5, v4

    move-wide v6, v2

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/Node;->minHeight(D)D

    move-result-wide v5

    goto :goto_1
.end method

.method protected computeMinWidth(D)D
    .locals 17

    .prologue
    .line 466
    move-object/from16 v1, p0

    .local v1, "this":Ljavafx/scene/control/Control;
    move-wide/from16 v2, p1

    .local v2, "height":D
    move-object v5, v1

    iget-object v5, v5, Ljavafx/scene/control/Control;->skinBase:Ljavafx/scene/control/SkinBase;

    if-eqz v5, :cond_0

    .line 467
    move-object v5, v1

    iget-object v5, v5, Ljavafx/scene/control/Control;->skinBase:Ljavafx/scene/control/SkinBase;

    move-wide v6, v2

    move-object v8, v1

    invoke-virtual {v8}, Ljavafx/scene/control/Control;->snappedTopInset()D

    move-result-wide v8

    move-object v10, v1

    invoke-virtual {v10}, Ljavafx/scene/control/Control;->snappedRightInset()D

    move-result-wide v10

    move-object v12, v1

    invoke-virtual {v12}, Ljavafx/scene/control/Control;->snappedBottomInset()D

    move-result-wide v12

    move-object v14, v1

    invoke-virtual {v14}, Ljavafx/scene/control/Control;->snappedLeftInset()D

    move-result-wide v14

    invoke-virtual/range {v5 .. v15}, Ljavafx/scene/control/SkinBase;->computeMinWidth(DDDDD)D

    move-result-wide v5

    move-wide v1, v5

    .line 470
    .end local v1    # "this":Ljavafx/scene/control/Control;
    :goto_0
    return-wide v1

    .line 469
    .restart local v1    # "this":Ljavafx/scene/control/Control;
    :cond_0
    move-object v5, v1

    invoke-direct {v5}, Ljavafx/scene/control/Control;->getSkinNode()Ljavafx/scene/Node;

    move-result-object v5

    move-object v4, v5

    .line 470
    .local v4, "skinNode":Ljavafx/scene/Node;
    move-object v5, v4

    if-nez v5, :cond_1

    const-wide/16 v5, 0x0

    :goto_1
    move-wide v1, v5

    goto :goto_0

    :cond_1
    move-object v5, v4

    move-wide v6, v2

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/Node;->minWidth(D)D

    move-result-wide v5

    goto :goto_1
.end method

.method protected computePrefHeight(D)D
    .locals 17

    .prologue
    .line 543
    move-object/from16 v1, p0

    .local v1, "this":Ljavafx/scene/control/Control;
    move-wide/from16 v2, p1

    .local v2, "width":D
    move-object v5, v1

    iget-object v5, v5, Ljavafx/scene/control/Control;->skinBase:Ljavafx/scene/control/SkinBase;

    if-eqz v5, :cond_0

    .line 544
    move-object v5, v1

    iget-object v5, v5, Ljavafx/scene/control/Control;->skinBase:Ljavafx/scene/control/SkinBase;

    move-wide v6, v2

    move-object v8, v1

    invoke-virtual {v8}, Ljavafx/scene/control/Control;->snappedTopInset()D

    move-result-wide v8

    move-object v10, v1

    invoke-virtual {v10}, Ljavafx/scene/control/Control;->snappedRightInset()D

    move-result-wide v10

    move-object v12, v1

    invoke-virtual {v12}, Ljavafx/scene/control/Control;->snappedBottomInset()D

    move-result-wide v12

    move-object v14, v1

    invoke-virtual {v14}, Ljavafx/scene/control/Control;->snappedLeftInset()D

    move-result-wide v14

    invoke-virtual/range {v5 .. v15}, Ljavafx/scene/control/SkinBase;->computePrefHeight(DDDDD)D

    move-result-wide v5

    move-wide v1, v5

    .line 547
    .end local v1    # "this":Ljavafx/scene/control/Control;
    :goto_0
    return-wide v1

    .line 546
    .restart local v1    # "this":Ljavafx/scene/control/Control;
    :cond_0
    move-object v5, v1

    invoke-direct {v5}, Ljavafx/scene/control/Control;->getSkinNode()Ljavafx/scene/Node;

    move-result-object v5

    move-object v4, v5

    .line 547
    .local v4, "skinNode":Ljavafx/scene/Node;
    move-object v5, v4

    if-nez v5, :cond_1

    const-wide/16 v5, 0x0

    :goto_1
    move-wide v1, v5

    goto :goto_0

    :cond_1
    move-object v5, v4

    move-wide v6, v2

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/Node;->prefHeight(D)D

    move-result-wide v5

    goto :goto_1
.end method

.method protected computePrefWidth(D)D
    .locals 17

    .prologue
    .line 533
    move-object/from16 v1, p0

    .local v1, "this":Ljavafx/scene/control/Control;
    move-wide/from16 v2, p1

    .local v2, "height":D
    move-object v5, v1

    iget-object v5, v5, Ljavafx/scene/control/Control;->skinBase:Ljavafx/scene/control/SkinBase;

    if-eqz v5, :cond_0

    .line 534
    move-object v5, v1

    iget-object v5, v5, Ljavafx/scene/control/Control;->skinBase:Ljavafx/scene/control/SkinBase;

    move-wide v6, v2

    move-object v8, v1

    invoke-virtual {v8}, Ljavafx/scene/control/Control;->snappedTopInset()D

    move-result-wide v8

    move-object v10, v1

    invoke-virtual {v10}, Ljavafx/scene/control/Control;->snappedRightInset()D

    move-result-wide v10

    move-object v12, v1

    invoke-virtual {v12}, Ljavafx/scene/control/Control;->snappedBottomInset()D

    move-result-wide v12

    move-object v14, v1

    invoke-virtual {v14}, Ljavafx/scene/control/Control;->snappedLeftInset()D

    move-result-wide v14

    invoke-virtual/range {v5 .. v15}, Ljavafx/scene/control/SkinBase;->computePrefWidth(DDDDD)D

    move-result-wide v5

    move-wide v1, v5

    .line 537
    .end local v1    # "this":Ljavafx/scene/control/Control;
    :goto_0
    return-wide v1

    .line 536
    .restart local v1    # "this":Ljavafx/scene/control/Control;
    :cond_0
    move-object v5, v1

    invoke-direct {v5}, Ljavafx/scene/control/Control;->getSkinNode()Ljavafx/scene/Node;

    move-result-object v5

    move-object v4, v5

    .line 537
    .local v4, "skinNode":Ljavafx/scene/Node;
    move-object v5, v4

    if-nez v5, :cond_1

    const-wide/16 v5, 0x0

    :goto_1
    move-wide v1, v5

    goto :goto_0

    :cond_1
    move-object v5, v4

    move-wide v6, v2

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/Node;->prefWidth(D)D

    move-result-wide v5

    goto :goto_1
.end method

.method public final contextMenuProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/scene/control/ContextMenu;",
            ">;"
        }
    .end annotation

    .prologue
    .line 395
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Control;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Control;->contextMenu:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/Control;
    return-object v0
.end method

.method protected createDefaultSkin()Ljavafx/scene/control/Skin;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/scene/control/Skin",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 597
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Control;
    const/4 v1, 0x0

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/Control;
    return-object v0
.end method

.method public varargs executeAccessibleAction(Ljavafx/scene/AccessibleAction;[Ljava/lang/Object;)V
    .locals 6

    .prologue
    .line 911
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Control;
    move-object v1, p1

    .local v1, "action":Ljavafx/scene/AccessibleAction;
    move-object v2, p2

    .local v2, "parameters":[Ljava/lang/Object;
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/control/Control;->skinBase:Ljavafx/scene/control/SkinBase;

    if-eqz v3, :cond_0

    .line 912
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/control/Control;->skinBase:Ljavafx/scene/control/SkinBase;

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/control/SkinBase;->executeAccessibleAction(Ljavafx/scene/AccessibleAction;[Ljava/lang/Object;)V

    .line 914
    :cond_0
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-super {v3, v4, v5}, Ljavafx/scene/layout/Region;->executeAccessibleAction(Ljavafx/scene/AccessibleAction;[Ljava/lang/Object;)V

    .line 915
    return-void
.end method

.method public getBaselineOffset()D
    .locals 11

    .prologue
    .line 553
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Control;
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/Control;->skinBase:Ljavafx/scene/control/SkinBase;

    if-eqz v2, :cond_0

    .line 554
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/Control;->skinBase:Ljavafx/scene/control/SkinBase;

    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/Control;->snappedTopInset()D

    move-result-wide v3

    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/control/Control;->snappedRightInset()D

    move-result-wide v5

    move-object v7, v0

    invoke-virtual {v7}, Ljavafx/scene/control/Control;->snappedBottomInset()D

    move-result-wide v7

    move-object v9, v0

    invoke-virtual {v9}, Ljavafx/scene/control/Control;->snappedLeftInset()D

    move-result-wide v9

    invoke-virtual/range {v2 .. v10}, Ljavafx/scene/control/SkinBase;->computeBaselineOffset(DDDD)D

    move-result-wide v2

    move-wide v0, v2

    .line 557
    .end local v0    # "this":Ljavafx/scene/control/Control;
    .local v1, "skinNode":Ljavafx/scene/Node;
    :goto_0
    return-wide v0

    .line 556
    .end local v1    # "skinNode":Ljavafx/scene/Node;
    .restart local v0    # "this":Ljavafx/scene/control/Control;
    :cond_0
    move-object v2, v0

    invoke-direct {v2}, Ljavafx/scene/control/Control;->getSkinNode()Ljavafx/scene/Node;

    move-result-object v2

    move-object v1, v2

    .line 557
    .restart local v1    # "skinNode":Ljavafx/scene/Node;
    move-object v2, v1

    if-nez v2, :cond_1

    const-wide/16 v2, 0x0

    :goto_1
    move-wide v0, v2

    goto :goto_0

    :cond_1
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/Node;->getBaselineOffset()D

    move-result-wide v2

    goto :goto_1
.end method

.method public final getContextMenu()Ljavafx/scene/control/ContextMenu;
    .locals 2

    .prologue
    .line 397
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Control;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Control;->contextMenu:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/Control;
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/control/Control;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Control;->contextMenu:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/scene/control/ContextMenu;

    goto :goto_0
.end method

.method getControlChildren()Ljavafx/collections/ObservableList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/collections/ObservableList",
            "<",
            "Ljavafx/scene/Node;",
            ">;"
        }
    .end annotation

    .prologue
    .line 608
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Control;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/Control;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/Control;
    return-object v0
.end method

.method protected getControlCssMetaData()Ljava/util/List;
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
    .line 844
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Control;
    invoke-static {}, Ljavafx/scene/control/Control;->getClassCssMetaData()Ljava/util/List;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/Control;
    return-object v0
.end method

.method public final getCssMetaData()Ljava/util/List;
    .locals 10
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
    .line 801
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Control;
    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/control/Control;->styleableProperties:Ljava/util/List;

    if-nez v6, :cond_7

    .line 804
    new-instance v6, Ljava/util/HashMap;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    move-object v1, v6

    .line 807
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljavafx/css/CssMetaData<+Ljavafx/css/Styleable;*>;>;"
    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/scene/control/Control;->getControlCssMetaData()Ljava/util/List;

    move-result-object v6

    move-object v2, v6

    .line 809
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Ljavafx/css/CssMetaData<+Ljavafx/css/Styleable;*>;>;"
    const/4 v6, 0x0

    move v3, v6

    .local v3, "n":I
    move-object v6, v2

    if-eqz v6, :cond_0

    move-object v6, v2

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    :goto_0
    move v4, v6

    .local v4, "nMax":I
    :goto_1
    move v6, v3

    move v7, v4

    if-ge v6, v7, :cond_2

    .line 811
    move-object v6, v2

    move v7, v3

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljavafx/css/CssMetaData;

    move-object v5, v6

    .line 812
    .local v5, "metaData":Ljavafx/css/CssMetaData;, "Ljavafx/css/CssMetaData<+Ljavafx/css/Styleable;*>;"
    move-object v6, v5

    if-nez v6, :cond_1

    .line 809
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .end local v4    # "nMax":I
    .end local v5    # "metaData":Ljavafx/css/CssMetaData;, "Ljavafx/css/CssMetaData<+Ljavafx/css/Styleable;*>;"
    :cond_0
    const/4 v6, 0x0

    goto :goto_0

    .line 814
    .restart local v4    # "nMax":I
    .restart local v5    # "metaData":Ljavafx/css/CssMetaData;, "Ljavafx/css/CssMetaData<+Ljavafx/css/Styleable;*>;"
    :cond_1
    move-object v6, v1

    move-object v7, v5

    invoke-virtual {v7}, Ljavafx/css/CssMetaData;->getProperty()Ljava/lang/String;

    move-result-object v7

    move-object v8, v5

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    goto :goto_2

    .line 823
    .end local v5    # "metaData":Ljavafx/css/CssMetaData;, "Ljavafx/css/CssMetaData<+Ljavafx/css/Styleable;*>;"
    :cond_2
    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/control/Control;->skinBase:Ljavafx/scene/control/SkinBase;

    if-eqz v6, :cond_3

    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/control/Control;->skinBase:Ljavafx/scene/control/SkinBase;

    invoke-virtual {v6}, Ljavafx/scene/control/SkinBase;->getCssMetaData()Ljava/util/List;

    move-result-object v6

    :goto_3
    move-object v2, v6

    .line 825
    const/4 v6, 0x0

    move v3, v6

    move-object v6, v2

    if-eqz v6, :cond_4

    move-object v6, v2

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    :goto_4
    move v4, v6

    :goto_5
    move v6, v3

    move v7, v4

    if-ge v6, v7, :cond_6

    .line 827
    move-object v6, v2

    move v7, v3

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljavafx/css/CssMetaData;

    move-object v5, v6

    .line 828
    .restart local v5    # "metaData":Ljavafx/css/CssMetaData;, "Ljavafx/css/CssMetaData<+Ljavafx/css/Styleable;*>;"
    move-object v6, v5

    if-nez v6, :cond_5

    .line 825
    :goto_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 823
    .end local v5    # "metaData":Ljavafx/css/CssMetaData;, "Ljavafx/css/CssMetaData<+Ljavafx/css/Styleable;*>;"
    :cond_3
    const/4 v6, 0x0

    goto :goto_3

    .line 825
    :cond_4
    const/4 v6, 0x0

    goto :goto_4

    .line 830
    .restart local v5    # "metaData":Ljavafx/css/CssMetaData;, "Ljavafx/css/CssMetaData<+Ljavafx/css/Styleable;*>;"
    :cond_5
    move-object v6, v1

    move-object v7, v5

    invoke-virtual {v7}, Ljavafx/css/CssMetaData;->getProperty()Ljava/lang/String;

    move-result-object v7

    move-object v8, v5

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    goto :goto_6

    .line 833
    .end local v5    # "metaData":Ljavafx/css/CssMetaData;, "Ljavafx/css/CssMetaData<+Ljavafx/css/Styleable;*>;"
    :cond_6
    move-object v6, v0

    new-instance v7, Ljava/util/ArrayList;

    move-object v9, v7

    move-object v7, v9

    move-object v8, v9

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, v6, Ljavafx/scene/control/Control;->styleableProperties:Ljava/util/List;

    .line 834
    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/control/Control;->styleableProperties:Ljava/util/List;

    move-object v7, v1

    invoke-interface {v7}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-result v6

    .line 836
    .end local v1    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljavafx/css/CssMetaData<+Ljavafx/css/Styleable;*>;>;"
    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Ljavafx/css/CssMetaData<+Ljavafx/css/Styleable;*>;>;"
    .end local v3    # "n":I
    .end local v4    # "nMax":I
    :cond_7
    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/control/Control;->styleableProperties:Ljava/util/List;

    move-object v0, v6

    .end local v0    # "this":Ljavafx/scene/control/Control;
    return-object v0
.end method

.method public final getSkin()Ljavafx/scene/control/Skin;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/scene/control/Skin",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 216
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Control;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/Control;->skinProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/scene/control/Skin;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/Control;
    return-object v0
.end method

.method public final getTooltip()Ljavafx/scene/control/Tooltip;
    .locals 2

    .prologue
    .line 364
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Control;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Control;->tooltip:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/Control;
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/control/Control;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Control;->tooltip:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/scene/control/Tooltip;

    goto :goto_0
.end method

.method protected impl_cssGetFocusTraversableInitialValue()Ljava/lang/Boolean;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 882
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Control;
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/Control;
    return-object v0
.end method

.method protected impl_processCSS(Ljavafx/beans/value/WritableValue;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/value/WritableValue",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 854
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Control;
    move-object v1, p1

    .local v1, "unused":Ljavafx/beans/value/WritableValue;, "Ljavafx/beans/value/WritableValue<Ljava/lang/Boolean;>;"
    move-object v6, v0

    move-object v7, v1

    invoke-super {v6, v7}, Ljavafx/scene/layout/Region;->impl_processCSS(Ljavafx/beans/value/WritableValue;)V

    .line 856
    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/scene/control/Control;->getSkin()Ljavafx/scene/control/Skin;

    move-result-object v6

    if-nez v6, :cond_0

    .line 858
    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/scene/control/Control;->createDefaultSkin()Ljavafx/scene/control/Skin;

    move-result-object v6

    move-object v2, v6

    .line 859
    .local v2, "defaultSkin":Ljavafx/scene/control/Skin;, "Ljavafx/scene/control/Skin<*>;"
    move-object v6, v2

    if-eqz v6, :cond_1

    .line 860
    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/scene/control/Control;->skinProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v6

    move-object v7, v2

    invoke-virtual {v6, v7}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 861
    move-object v6, v0

    move-object v7, v1

    invoke-super {v6, v7}, Ljavafx/scene/layout/Region;->impl_processCSS(Ljavafx/beans/value/WritableValue;)V

    .line 873
    .end local v2    # "defaultSkin":Ljavafx/scene/control/Skin;, "Ljavafx/scene/control/Skin<*>;"
    :cond_0
    :goto_0
    return-void

    .line 863
    .restart local v2    # "defaultSkin":Ljavafx/scene/control/Skin;, "Ljavafx/scene/control/Skin<*>;"
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "The -fx-skin property has not been defined in CSS for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " and createDefaultSkin() returned null."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v3, v6

    .line 865
    .local v3, "msg":Ljava/lang/String;
    invoke-static {}, Lcom/sun/javafx/css/StyleManager;->getErrors()Ljavafx/collections/ObservableList;

    move-result-object v6

    move-object v4, v6

    .line 866
    .local v4, "errors":Ljava/util/List;, "Ljava/util/List<Lcom/sun/javafx/css/CssError;>;"
    move-object v6, v4

    if-eqz v6, :cond_2

    .line 867
    new-instance v6, Lcom/sun/javafx/css/CssError;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    move-object v8, v3

    invoke-direct {v7, v8}, Lcom/sun/javafx/css/CssError;-><init>(Ljava/lang/String;)V

    move-object v5, v6

    .line 868
    .local v5, "error":Lcom/sun/javafx/css/CssError;
    move-object v6, v4

    move-object v7, v5

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v6

    .line 870
    .end local v5    # "error":Lcom/sun/javafx/css/CssError;
    :cond_2
    invoke-static {}, Lcom/sun/javafx/scene/control/Logging;->getControlsLogger()Lsun/util/logging/PlatformLogger;

    move-result-object v6

    move-object v7, v3

    invoke-virtual {v6, v7}, Lsun/util/logging/PlatformLogger;->severe(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public isResizable()Z
    .locals 2

    .prologue
    .line 447
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Control;
    const/4 v1, 0x1

    move v0, v1

    .end local v0    # "this":Ljavafx/scene/control/Control;
    return v0
.end method

.method protected layoutChildren()V
    .locals 19

    .prologue
    .line 570
    move-object/from16 v1, p0

    .local v1, "this":Ljavafx/scene/control/Control;
    move-object v10, v1

    iget-object v10, v10, Ljavafx/scene/control/Control;->skinBase:Ljavafx/scene/control/SkinBase;

    if-eqz v10, :cond_1

    .line 571
    move-object v10, v1

    invoke-virtual {v10}, Ljavafx/scene/control/Control;->snappedLeftInset()D

    move-result-wide v10

    move-wide v2, v10

    .line 572
    .local v2, "x":D
    move-object v10, v1

    invoke-virtual {v10}, Ljavafx/scene/control/Control;->snappedTopInset()D

    move-result-wide v10

    move-wide v4, v10

    .line 573
    .local v4, "y":D
    move-object v10, v1

    move-object v11, v1

    invoke-virtual {v11}, Ljavafx/scene/control/Control;->getWidth()D

    move-result-wide v11

    invoke-virtual {v10, v11, v12}, Ljavafx/scene/control/Control;->snapSize(D)D

    move-result-wide v10

    move-wide v12, v2

    sub-double/2addr v10, v12

    move-object v12, v1

    invoke-virtual {v12}, Ljavafx/scene/control/Control;->snappedRightInset()D

    move-result-wide v12

    sub-double/2addr v10, v12

    move-wide v6, v10

    .line 574
    .local v6, "w":D
    move-object v10, v1

    move-object v11, v1

    invoke-virtual {v11}, Ljavafx/scene/control/Control;->getHeight()D

    move-result-wide v11

    invoke-virtual {v10, v11, v12}, Ljavafx/scene/control/Control;->snapSize(D)D

    move-result-wide v10

    move-wide v12, v4

    sub-double/2addr v10, v12

    move-object v12, v1

    invoke-virtual {v12}, Ljavafx/scene/control/Control;->snappedBottomInset()D

    move-result-wide v12

    sub-double/2addr v10, v12

    move-wide v8, v10

    .line 575
    .local v8, "h":D
    move-object v10, v1

    iget-object v10, v10, Ljavafx/scene/control/Control;->skinBase:Ljavafx/scene/control/SkinBase;

    move-wide v11, v2

    move-wide v13, v4

    move-wide v15, v6

    move-wide/from16 v17, v8

    invoke-virtual/range {v10 .. v18}, Ljavafx/scene/control/SkinBase;->layoutChildren(DDDD)V

    .line 576
    .line 582
    .end local v2    # "x":D
    .end local v4    # "y":D
    .end local v6    # "w":D
    .end local v8    # "h":D
    :cond_0
    :goto_0
    return-void

    .line 577
    :cond_1
    move-object v10, v1

    invoke-direct {v10}, Ljavafx/scene/control/Control;->getSkinNode()Ljavafx/scene/Node;

    move-result-object v10

    move-object v2, v10

    .line 578
    .local v2, "n":Ljavafx/scene/Node;
    move-object v10, v2

    if-eqz v10, :cond_0

    .line 579
    move-object v10, v2

    const-wide/16 v11, 0x0

    const-wide/16 v13, 0x0

    move-object v15, v1

    invoke-virtual {v15}, Ljavafx/scene/control/Control;->getWidth()D

    move-result-wide v15

    move-object/from16 v17, v1

    invoke-virtual/range {v17 .. v17}, Ljavafx/scene/control/Control;->getHeight()D

    move-result-wide v17

    invoke-virtual/range {v10 .. v18}, Ljavafx/scene/Node;->resizeRelocate(DDDD)V

    goto :goto_0
.end method

.method public varargs queryAccessibleAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .prologue
    .line 894
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Control;
    move-object v1, p1

    .local v1, "attribute":Ljavafx/scene/AccessibleAttribute;
    move-object v2, p2

    .local v2, "parameters":[Ljava/lang/Object;
    sget-object v5, Ljavafx/scene/control/Control$5;->$SwitchMap$javafx$scene$AccessibleAttribute:[I

    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/AccessibleAttribute;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 902
    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/control/Control;->skinBase:Ljavafx/scene/control/SkinBase;

    if-eqz v5, :cond_2

    .line 903
    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/control/Control;->skinBase:Ljavafx/scene/control/SkinBase;

    move-object v6, v1

    move-object v7, v2

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/control/SkinBase;->queryAccessibleAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v3, v5

    .line 904
    .local v3, "result":Ljava/lang/Object;
    move-object v5, v3

    if-eqz v5, :cond_2

    move-object v5, v3

    move-object v0, v5

    .line 906
    .end local v0    # "this":Ljavafx/scene/control/Control;
    .end local v3    # "result":Ljava/lang/Object;
    :goto_0
    return-object v0

    .line 896
    .restart local v0    # "this":Ljavafx/scene/control/Control;
    :pswitch_0
    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/control/Control;->getAccessibleHelp()Ljava/lang/String;

    move-result-object v5

    move-object v3, v5

    .line 897
    .local v3, "help":Ljava/lang/String;
    move-object v5, v3

    if-eqz v5, :cond_0

    move-object v5, v3

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    move-object v5, v3

    move-object v0, v5

    goto :goto_0

    .line 898
    :cond_0
    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/control/Control;->getTooltip()Ljavafx/scene/control/Tooltip;

    move-result-object v5

    move-object v4, v5

    .line 899
    .local v4, "tooltip":Ljavafx/scene/control/Tooltip;
    move-object v5, v4

    if-nez v5, :cond_1

    const-string v5, ""

    :goto_1
    move-object v0, v5

    goto :goto_0

    :cond_1
    move-object v5, v4

    invoke-virtual {v5}, Ljavafx/scene/control/Tooltip;->getText()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 906
    .end local v3    # "help":Ljava/lang/String;
    .end local v4    # "tooltip":Ljavafx/scene/control/Tooltip;
    :cond_2
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    invoke-super {v5, v6, v7}, Ljavafx/scene/layout/Region;->queryAccessibleAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    goto :goto_0

    .line 894
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public final setContextMenu(Ljavafx/scene/control/ContextMenu;)V
    .locals 4

    .prologue
    .line 396
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Control;
    move-object v1, p1

    .local v1, "value":Ljavafx/scene/control/ContextMenu;
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/Control;->contextMenu:Ljavafx/beans/property/ObjectProperty;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final setSkin(Ljavafx/scene/control/Skin;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/control/Skin",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 214
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Control;
    move-object v1, p1

    .local v1, "value":Ljavafx/scene/control/Skin;, "Ljavafx/scene/control/Skin<*>;"
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/Control;->skinProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 215
    return-void
.end method

.method public final setTooltip(Ljavafx/scene/control/Tooltip;)V
    .locals 4

    .prologue
    .line 363
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Control;
    move-object v1, p1

    .local v1, "value":Ljavafx/scene/control/Tooltip;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/Control;->tooltipProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method protected skinClassNameProperty()Ljavafx/beans/property/StringProperty;
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 643
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Control;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Control;->skinClassName:Ljavafx/beans/property/StringProperty;

    if-nez v1, :cond_0

    .line 644
    move-object v1, v0

    new-instance v2, Ljavafx/scene/control/Control$4;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/control/Control$4;-><init>(Ljavafx/scene/control/Control;)V

    iput-object v2, v1, Ljavafx/scene/control/Control;->skinClassName:Ljavafx/beans/property/StringProperty;

    .line 681
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Control;->skinClassName:Ljavafx/beans/property/StringProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/Control;
    return-object v0
.end method

.method public final skinProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/scene/control/Skin",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 212
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Control;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Control;->skin:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/Control;
    return-object v0
.end method

.method public final tooltipProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/scene/control/Tooltip;",
            ">;"
        }
    .end annotation

    .prologue
    .line 332
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Control;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Control;->tooltip:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    .line 333
    move-object v1, v0

    new-instance v2, Ljavafx/scene/control/Control$2;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/control/Control$2;-><init>(Ljavafx/scene/control/Control;)V

    iput-object v2, v1, Ljavafx/scene/control/Control;->tooltip:Ljavafx/beans/property/ObjectProperty;

    .line 360
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Control;->tooltip:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/Control;
    return-object v0
.end method
