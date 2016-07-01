.class public Ljavafx/scene/control/TabPane;
.super Ljavafx/scene/control/Control;
.source "TabPane.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavafx/scene/control/TabPane$TabClosingPolicy;,
        Ljavafx/scene/control/TabPane$TabPaneSelectionModel;,
        Ljavafx/scene/control/TabPane$StyleableProperties;
    }
.end annotation

.annotation runtime Ljavafx/beans/DefaultProperty;
    value = "tabs"
.end annotation


# static fields
.field private static final BOTTOM_PSEUDOCLASS_STATE:Ljavafx/css/PseudoClass;

.field private static final DEFAULT_TAB_MAX_HEIGHT:D = 1.7976931348623157E308

.field private static final DEFAULT_TAB_MAX_WIDTH:D = 1.7976931348623157E308

.field private static final DEFAULT_TAB_MIN_HEIGHT:D = 0.0

.field private static final DEFAULT_TAB_MIN_WIDTH:D = 0.0

.field private static final LEFT_PSEUDOCLASS_STATE:Ljavafx/css/PseudoClass;

.field private static final RIGHT_PSEUDOCLASS_STATE:Ljavafx/css/PseudoClass;

.field public static final STYLE_CLASS_FLOATING:Ljava/lang/String; = "floating"

.field private static final TOP_PSEUDOCLASS_STATE:Ljavafx/css/PseudoClass;


# instance fields
.field private rotateGraphic:Ljavafx/beans/property/BooleanProperty;

.field private selectionModel:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/scene/control/SingleSelectionModel",
            "<",
            "Ljavafx/scene/control/Tab;",
            ">;>;"
        }
    .end annotation
.end field

.field private side:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/geometry/Side;",
            ">;"
        }
    .end annotation
.end field

.field private tabClosingPolicy:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/scene/control/TabPane$TabClosingPolicy;",
            ">;"
        }
    .end annotation
.end field

.field private tabMaxHeight:Ljavafx/beans/property/DoubleProperty;

.field private tabMaxWidth:Ljavafx/beans/property/DoubleProperty;

.field private tabMinHeight:Ljavafx/beans/property/DoubleProperty;

.field private tabMinWidth:Ljavafx/beans/property/DoubleProperty;

.field private tabs:Ljavafx/collections/ObservableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/collections/ObservableList",
            "<",
            "Ljavafx/scene/control/Tab;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 645
    const-string v0, "top"

    invoke-static {v0}, Ljavafx/css/PseudoClass;->getPseudoClass(Ljava/lang/String;)Ljavafx/css/PseudoClass;

    move-result-object v0

    sput-object v0, Ljavafx/scene/control/TabPane;->TOP_PSEUDOCLASS_STATE:Ljavafx/css/PseudoClass;

    .line 646
    const-string v0, "bottom"

    invoke-static {v0}, Ljavafx/css/PseudoClass;->getPseudoClass(Ljava/lang/String;)Ljavafx/css/PseudoClass;

    move-result-object v0

    sput-object v0, Ljavafx/scene/control/TabPane;->BOTTOM_PSEUDOCLASS_STATE:Ljavafx/css/PseudoClass;

    .line 647
    const-string v0, "left"

    invoke-static {v0}, Ljavafx/css/PseudoClass;->getPseudoClass(Ljava/lang/String;)Ljavafx/css/PseudoClass;

    move-result-object v0

    sput-object v0, Ljavafx/scene/control/TabPane;->LEFT_PSEUDOCLASS_STATE:Ljavafx/css/PseudoClass;

    .line 648
    const-string v0, "right"

    invoke-static {v0}, Ljavafx/css/PseudoClass;->getPseudoClass(Ljava/lang/String;)Ljavafx/css/PseudoClass;

    move-result-object v0

    sput-object v0, Ljavafx/scene/control/TabPane;->RIGHT_PSEUDOCLASS_STATE:Ljavafx/css/PseudoClass;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 111
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TabPane;
    move-object v1, v0

    const/4 v2, 0x0

    check-cast v2, [Ljavafx/scene/control/Tab;

    invoke-direct {v1, v2}, Ljavafx/scene/control/TabPane;-><init>([Ljavafx/scene/control/Tab;)V

    .line 112
    return-void
.end method

.method public varargs constructor <init>([Ljavafx/scene/control/Tab;)V
    .locals 9

    .prologue
    .line 120
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TabPane;
    move-object v1, p1

    .local v1, "tabs":[Ljavafx/scene/control/Tab;
    move-object v3, v0

    invoke-direct {v3}, Ljavafx/scene/control/Control;-><init>()V

    .line 154
    move-object v3, v0

    invoke-static {}, Ljavafx/collections/FXCollections;->observableArrayList()Ljavafx/collections/ObservableList;

    move-result-object v4

    iput-object v4, v3, Ljavafx/scene/control/TabPane;->tabs:Ljavafx/collections/ObservableList;

    .line 170
    move-object v3, v0

    new-instance v4, Ljavafx/beans/property/SimpleObjectProperty;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v0

    const-string v7, "selectionModel"

    invoke-direct {v5, v6, v7}, Ljavafx/beans/property/SimpleObjectProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v4, v3, Ljavafx/scene/control/TabPane;->selectionModel:Ljavafx/beans/property/ObjectProperty;

    .line 121
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/TabPane;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    const-string v7, "tab-pane"

    aput-object v7, v5, v6

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->setAll([Ljava/lang/Object;)Z

    move-result v3

    .line 122
    move-object v3, v0

    sget-object v4, Ljavafx/scene/AccessibleRole;->TAB_PANE:Ljavafx/scene/AccessibleRole;

    invoke-virtual {v3, v4}, Ljavafx/scene/control/TabPane;->setAccessibleRole(Ljavafx/scene/AccessibleRole;)V

    .line 123
    move-object v3, v0

    new-instance v4, Ljavafx/scene/control/TabPane$TabPaneSelectionModel;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v0

    invoke-direct {v5, v6}, Ljavafx/scene/control/TabPane$TabPaneSelectionModel;-><init>(Ljavafx/scene/control/TabPane;)V

    invoke-virtual {v3, v4}, Ljavafx/scene/control/TabPane;->setSelectionModel(Ljavafx/scene/control/SingleSelectionModel;)V

    .line 125
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/control/TabPane;->tabs:Ljavafx/collections/ObservableList;

    move-object v4, v0

    invoke-static {v4}, Ljavafx/scene/control/TabPane$$Lambda$1;->lambdaFactory$(Ljavafx/scene/control/TabPane;)Ljavafx/collections/ListChangeListener;

    move-result-object v4

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->addListener(Ljavafx/collections/ListChangeListener;)V

    .line 141
    move-object v3, v1

    if-eqz v3, :cond_0

    .line 142
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/TabPane;->getTabs()Ljavafx/collections/ObservableList;

    move-result-object v3

    move-object v4, v1

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->addAll([Ljava/lang/Object;)Z

    move-result v3

    .line 146
    :cond_0
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/TabPane;->getSide()Ljavafx/geometry/Side;

    move-result-object v3

    move-object v2, v3

    .line 147
    .local v2, "edge":Ljavafx/geometry/Side;
    move-object v3, v0

    sget-object v4, Ljavafx/scene/control/TabPane;->TOP_PSEUDOCLASS_STATE:Ljavafx/css/PseudoClass;

    move-object v5, v2

    sget-object v6, Ljavafx/geometry/Side;->TOP:Ljavafx/geometry/Side;

    if-ne v5, v6, :cond_1

    const/4 v5, 0x1

    :goto_0
    invoke-virtual {v3, v4, v5}, Ljavafx/scene/control/TabPane;->pseudoClassStateChanged(Ljavafx/css/PseudoClass;Z)V

    .line 148
    move-object v3, v0

    sget-object v4, Ljavafx/scene/control/TabPane;->RIGHT_PSEUDOCLASS_STATE:Ljavafx/css/PseudoClass;

    move-object v5, v2

    sget-object v6, Ljavafx/geometry/Side;->RIGHT:Ljavafx/geometry/Side;

    if-ne v5, v6, :cond_2

    const/4 v5, 0x1

    :goto_1
    invoke-virtual {v3, v4, v5}, Ljavafx/scene/control/TabPane;->pseudoClassStateChanged(Ljavafx/css/PseudoClass;Z)V

    .line 149
    move-object v3, v0

    sget-object v4, Ljavafx/scene/control/TabPane;->BOTTOM_PSEUDOCLASS_STATE:Ljavafx/css/PseudoClass;

    move-object v5, v2

    sget-object v6, Ljavafx/geometry/Side;->BOTTOM:Ljavafx/geometry/Side;

    if-ne v5, v6, :cond_3

    const/4 v5, 0x1

    :goto_2
    invoke-virtual {v3, v4, v5}, Ljavafx/scene/control/TabPane;->pseudoClassStateChanged(Ljavafx/css/PseudoClass;Z)V

    .line 150
    move-object v3, v0

    sget-object v4, Ljavafx/scene/control/TabPane;->LEFT_PSEUDOCLASS_STATE:Ljavafx/css/PseudoClass;

    move-object v5, v2

    sget-object v6, Ljavafx/geometry/Side;->LEFT:Ljavafx/geometry/Side;

    if-ne v5, v6, :cond_4

    const/4 v5, 0x1

    :goto_3
    invoke-virtual {v3, v4, v5}, Ljavafx/scene/control/TabPane;->pseudoClassStateChanged(Ljavafx/css/PseudoClass;Z)V

    .line 152
    return-void

    .line 147
    :cond_1
    const/4 v5, 0x0

    goto :goto_0

    .line 148
    :cond_2
    const/4 v5, 0x0

    goto :goto_1

    .line 149
    :cond_3
    const/4 v5, 0x0

    goto :goto_2

    .line 150
    :cond_4
    const/4 v5, 0x0

    goto :goto_3
.end method

.method static synthetic access$000()Ljavafx/css/PseudoClass;
    .locals 1

    .prologue
    .line 92
    sget-object v0, Ljavafx/scene/control/TabPane;->TOP_PSEUDOCLASS_STATE:Ljavafx/css/PseudoClass;

    return-object v0
.end method

.method static synthetic access$100()Ljavafx/css/PseudoClass;
    .locals 1

    .prologue
    .line 92
    sget-object v0, Ljavafx/scene/control/TabPane;->RIGHT_PSEUDOCLASS_STATE:Ljavafx/css/PseudoClass;

    return-object v0
.end method

.method static synthetic access$1000(Ljavafx/scene/control/TabPane;)Ljavafx/beans/property/DoubleProperty;
    .locals 2

    .prologue
    .line 92
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/control/TabPane;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TabPane;->tabMinHeight:Ljavafx/beans/property/DoubleProperty;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/control/TabPane;
    return-object v0
.end method

.method static synthetic access$1100(Ljavafx/scene/control/TabPane;)Ljavafx/beans/property/DoubleProperty;
    .locals 2

    .prologue
    .line 92
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/control/TabPane;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TabPane;->tabMaxHeight:Ljavafx/beans/property/DoubleProperty;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/control/TabPane;
    return-object v0
.end method

.method static synthetic access$200()Ljavafx/css/PseudoClass;
    .locals 1

    .prologue
    .line 92
    sget-object v0, Ljavafx/scene/control/TabPane;->BOTTOM_PSEUDOCLASS_STATE:Ljavafx/css/PseudoClass;

    return-object v0
.end method

.method static synthetic access$300()Ljavafx/css/PseudoClass;
    .locals 1

    .prologue
    .line 92
    sget-object v0, Ljavafx/scene/control/TabPane;->LEFT_PSEUDOCLASS_STATE:Ljavafx/css/PseudoClass;

    return-object v0
.end method

.method static synthetic access$800(Ljavafx/scene/control/TabPane;)Ljavafx/beans/property/DoubleProperty;
    .locals 2

    .prologue
    .line 92
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/control/TabPane;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TabPane;->tabMinWidth:Ljavafx/beans/property/DoubleProperty;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/control/TabPane;
    return-object v0
.end method

.method static synthetic access$900(Ljavafx/scene/control/TabPane;)Ljavafx/beans/property/DoubleProperty;
    .locals 2

    .prologue
    .line 92
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/control/TabPane;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TabPane;->tabMaxWidth:Ljavafx/beans/property/DoubleProperty;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/control/TabPane;
    return-object v0
.end method

.method static synthetic access$lambda$0(Ljavafx/scene/control/TabPane;Ljavafx/collections/ListChangeListener$Change;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljavafx/scene/control/TabPane;->lambda$new$16(Ljavafx/collections/ListChangeListener$Change;)V

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
    .line 633
    # getter for: Ljavafx/scene/control/TabPane$StyleableProperties;->STYLEABLES:Ljava/util/List;
    invoke-static {}, Ljavafx/scene/control/TabPane$StyleableProperties;->access$1200()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private synthetic lambda$new$16(Ljavafx/collections/ListChangeListener$Change;)V
    .locals 6

    .prologue
    .line 126
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TabPane;
    move-object v1, p1

    .local v1, "c":Ljavafx/collections/ListChangeListener$Change;
    :goto_0
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/collections/ListChangeListener$Change;->next()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 127
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

    if-eqz v4, :cond_1

    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavafx/scene/control/Tab;

    move-object v3, v4

    .line 128
    .local v3, "tab":Ljavafx/scene/control/Tab;
    move-object v4, v3

    if-eqz v4, :cond_0

    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/control/TabPane;->getTabs()Ljavafx/collections/ObservableList;

    move-result-object v4

    move-object v5, v3

    invoke-interface {v4, v5}, Ljavafx/collections/ObservableList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 129
    move-object v4, v3

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljavafx/scene/control/Tab;->setTabPane(Ljavafx/scene/control/TabPane;)V

    .line 131
    :cond_0
    goto :goto_1

    .line 133
    .end local v3    # "tab":Ljavafx/scene/control/Tab;
    :cond_1
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

    if-eqz v4, :cond_3

    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavafx/scene/control/Tab;

    move-object v3, v4

    .line 134
    .restart local v3    # "tab":Ljavafx/scene/control/Tab;
    move-object v4, v3

    if-eqz v4, :cond_2

    .line 135
    move-object v4, v3

    move-object v5, v0

    invoke-virtual {v4, v5}, Ljavafx/scene/control/Tab;->setTabPane(Ljavafx/scene/control/TabPane;)V

    .line 137
    :cond_2
    goto :goto_2

    .end local v3    # "tab":Ljavafx/scene/control/Tab;
    :cond_3
    goto :goto_0

    .line 139
    :cond_4
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
    .line 517
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TabPane;
    new-instance v1, Lcom/sun/javafx/scene/control/skin/TabPaneSkin;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin;-><init>(Ljavafx/scene/control/TabPane;)V

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TabPane;
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
    .line 642
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TabPane;
    invoke-static {}, Ljavafx/scene/control/TabPane;->getClassCssMetaData()Ljava/util/List;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TabPane;
    return-object v0
.end method

.method public final getSelectionModel()Ljavafx/scene/control/SingleSelectionModel;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/scene/control/SingleSelectionModel",
            "<",
            "Ljavafx/scene/control/Tab;",
            ">;"
        }
    .end annotation

    .prologue
    .line 181
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TabPane;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TabPane;->selectionModel:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/scene/control/SingleSelectionModel;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TabPane;
    return-object v0
.end method

.method public final getSide()Ljavafx/geometry/Side;
    .locals 2

    .prologue
    .line 207
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TabPane;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TabPane;->side:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    sget-object v1, Ljavafx/geometry/Side;->TOP:Ljavafx/geometry/Side;

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TabPane;
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/control/TabPane;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TabPane;->side:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/geometry/Side;

    goto :goto_0
.end method

.method public final getTabClosingPolicy()Ljavafx/scene/control/TabPane$TabClosingPolicy;
    .locals 2

    .prologue
    .line 271
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TabPane;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TabPane;->tabClosingPolicy:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    sget-object v1, Ljavafx/scene/control/TabPane$TabClosingPolicy;->SELECTED_TAB:Ljavafx/scene/control/TabPane$TabClosingPolicy;

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TabPane;
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/control/TabPane;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TabPane;->tabClosingPolicy:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/scene/control/TabPane$TabClosingPolicy;

    goto :goto_0
.end method

.method public final getTabMaxHeight()D
    .locals 4

    .prologue
    .line 486
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/control/TabPane;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/control/TabPane;->tabMaxHeight:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    const-wide v2, 0x7fefffffffffffffL    # Double.MAX_VALUE

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Ljavafx/scene/control/TabPane;
    return-wide v1

    .restart local v1    # "this":Ljavafx/scene/control/TabPane;
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/control/TabPane;->tabMaxHeight:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v2}, Ljavafx/beans/property/DoubleProperty;->getValue()Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    goto :goto_0
.end method

.method public final getTabMaxWidth()D
    .locals 4

    .prologue
    .line 389
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/control/TabPane;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/control/TabPane;->tabMaxWidth:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    const-wide v2, 0x7fefffffffffffffL    # Double.MAX_VALUE

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Ljavafx/scene/control/TabPane;
    return-wide v1

    .restart local v1    # "this":Ljavafx/scene/control/TabPane;
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/control/TabPane;->tabMaxWidth:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v2}, Ljavafx/beans/property/DoubleProperty;->getValue()Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    goto :goto_0
.end method

.method public final getTabMinHeight()D
    .locals 4

    .prologue
    .line 438
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/control/TabPane;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/control/TabPane;->tabMinHeight:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    const-wide/16 v2, 0x0

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Ljavafx/scene/control/TabPane;
    return-wide v1

    .restart local v1    # "this":Ljavafx/scene/control/TabPane;
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/control/TabPane;->tabMinHeight:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v2}, Ljavafx/beans/property/DoubleProperty;->getValue()Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    goto :goto_0
.end method

.method public final getTabMinWidth()D
    .locals 4

    .prologue
    .line 341
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/control/TabPane;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/control/TabPane;->tabMinWidth:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    const-wide/16 v2, 0x0

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Ljavafx/scene/control/TabPane;
    return-wide v1

    .restart local v1    # "this":Ljavafx/scene/control/TabPane;
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/control/TabPane;->tabMinWidth:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v2}, Ljavafx/beans/property/DoubleProperty;->getValue()Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    goto :goto_0
.end method

.method public final getTabs()Ljavafx/collections/ObservableList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/collections/ObservableList",
            "<",
            "Ljavafx/scene/control/Tab;",
            ">;"
        }
    .end annotation

    .prologue
    .line 167
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TabPane;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TabPane;->tabs:Ljavafx/collections/ObservableList;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TabPane;
    return-object v0
.end method

.method public final isRotateGraphic()Z
    .locals 2

    .prologue
    .line 307
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TabPane;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TabPane;->rotateGraphic:Ljavafx/beans/property/BooleanProperty;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TabPane;
    return v0

    .restart local v0    # "this":Ljavafx/scene/control/TabPane;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TabPane;->rotateGraphic:Ljavafx/beans/property/BooleanProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/BooleanProperty;->get()Z

    move-result v1

    goto :goto_0
.end method

.method public lookup(Ljava/lang/String;)Ljavafx/scene/Node;
    .locals 7

    .prologue
    .line 522
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TabPane;
    move-object v1, p1

    .local v1, "selector":Ljava/lang/String;
    move-object v5, v0

    move-object v6, v1

    invoke-super {v5, v6}, Ljavafx/scene/control/Control;->lookup(Ljava/lang/String;)Ljavafx/scene/Node;

    move-result-object v5

    move-object v2, v5

    .line 523
    .local v2, "n":Ljavafx/scene/Node;
    move-object v5, v2

    if-nez v5, :cond_0

    .line 524
    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/control/TabPane;->tabs:Ljavafx/collections/ObservableList;

    invoke-interface {v5}, Ljavafx/collections/ObservableList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v3, v5

    :goto_0
    move-object v5, v3

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    move-object v5, v3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljavafx/scene/control/Tab;

    move-object v4, v5

    .line 525
    .local v4, "tab":Ljavafx/scene/control/Tab;
    move-object v5, v4

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljavafx/scene/control/Tab;->lookup(Ljava/lang/String;)Ljavafx/scene/Node;

    move-result-object v5

    move-object v2, v5

    .line 526
    move-object v5, v2

    if-eqz v5, :cond_1

    .line 529
    .end local v4    # "tab":Ljavafx/scene/control/Tab;
    :cond_0
    move-object v5, v2

    move-object v0, v5

    .end local v0    # "this":Ljavafx/scene/control/TabPane;
    return-object v0

    .line 527
    .restart local v0    # "this":Ljavafx/scene/control/TabPane;
    .restart local v4    # "tab":Ljavafx/scene/control/Tab;
    :cond_1
    goto :goto_0
.end method

.method public lookupAll(Ljava/lang/String;)Ljava/util/Set;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljavafx/scene/Node;",
            ">;"
        }
    .end annotation

    .prologue
    .line 535
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TabPane;
    move-object v1, p1

    .local v1, "selector":Ljava/lang/String;
    move-object v5, v1

    if-nez v5, :cond_0

    const/4 v5, 0x0

    move-object v0, v5

    .line 544
    .end local v0    # "this":Ljavafx/scene/control/TabPane;
    :goto_0
    return-object v0

    .line 537
    .restart local v0    # "this":Ljavafx/scene/control/TabPane;
    :cond_0
    new-instance v5, Ljava/util/ArrayList;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v5

    .line 539
    .local v2, "results":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/Node;>;"
    move-object v5, v2

    move-object v6, v0

    move-object v7, v1

    invoke-super {v6, v7}, Ljavafx/scene/control/Control;->lookupAll(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-result v5

    .line 540
    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/control/TabPane;->tabs:Ljavafx/collections/ObservableList;

    invoke-interface {v5}, Ljavafx/collections/ObservableList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v3, v5

    :goto_1
    move-object v5, v3

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    move-object v5, v3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljavafx/scene/control/Tab;

    move-object v4, v5

    .line 541
    .local v4, "tab":Ljavafx/scene/control/Tab;
    move-object v5, v2

    move-object v6, v4

    move-object v7, v1

    invoke-virtual {v6, v7}, Ljavafx/scene/control/Tab;->lookupAll(Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-result v5

    .line 542
    goto :goto_1

    .line 544
    .end local v4    # "tab":Ljavafx/scene/control/Tab;
    :cond_1
    new-instance v5, Lcom/sun/javafx/collections/UnmodifiableListSet;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v2

    invoke-direct {v6, v7}, Lcom/sun/javafx/collections/UnmodifiableListSet;-><init>(Ljava/util/List;)V

    move-object v0, v5

    goto :goto_0
.end method

.method public final rotateGraphicProperty()Ljavafx/beans/property/BooleanProperty;
    .locals 8

    .prologue
    .line 314
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TabPane;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TabPane;->rotateGraphic:Ljavafx/beans/property/BooleanProperty;

    if-nez v1, :cond_0

    .line 315
    move-object v1, v0

    new-instance v2, Ljavafx/beans/property/SimpleBooleanProperty;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v0

    const-string v5, "rotateGraphic"

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Ljavafx/beans/property/SimpleBooleanProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;Z)V

    iput-object v2, v1, Ljavafx/scene/control/TabPane;->rotateGraphic:Ljavafx/beans/property/BooleanProperty;

    .line 317
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TabPane;->rotateGraphic:Ljavafx/beans/property/BooleanProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TabPane;
    return-object v0
.end method

.method public final selectionModelProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/scene/control/SingleSelectionModel",
            "<",
            "Ljavafx/scene/control/Tab;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 186
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TabPane;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TabPane;->selectionModel:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TabPane;
    return-object v0
.end method

.method public final setRotateGraphic(Z)V
    .locals 4

    .prologue
    .line 297
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TabPane;
    move v1, p1

    .local v1, "value":Z
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/TabPane;->rotateGraphicProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v2

    move v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/BooleanProperty;->set(Z)V

    .line 298
    return-void
.end method

.method public final setSelectionModel(Ljavafx/scene/control/SingleSelectionModel;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/control/SingleSelectionModel",
            "<",
            "Ljavafx/scene/control/Tab;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 176
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TabPane;
    move-object v1, p1

    .local v1, "value":Ljavafx/scene/control/SingleSelectionModel;, "Ljavafx/scene/control/SingleSelectionModel<Ljavafx/scene/control/Tab;>;"
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/TabPane;->selectionModel:Ljavafx/beans/property/ObjectProperty;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public final setSide(Ljavafx/geometry/Side;)V
    .locals 4

    .prologue
    .line 197
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TabPane;
    move-object v1, p1

    .local v1, "value":Ljavafx/geometry/Side;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/TabPane;->sideProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 198
    return-void
.end method

.method public final setTabClosingPolicy(Ljavafx/scene/control/TabPane$TabClosingPolicy;)V
    .locals 4

    .prologue
    .line 262
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TabPane;
    move-object v1, p1

    .local v1, "value":Ljavafx/scene/control/TabPane$TabClosingPolicy;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/TabPane;->tabClosingPolicyProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 263
    return-void
.end method

.method public final setTabMaxHeight(D)V
    .locals 7

    .prologue
    .line 477
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TabPane;
    move-wide v1, p1

    .local v1, "value":D
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/TabPane;->tabMaxHeightProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v3

    move-wide v4, v1

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljavafx/beans/property/DoubleProperty;->setValue(Ljava/lang/Number;)V

    .line 478
    return-void
.end method

.method public final setTabMaxWidth(D)V
    .locals 7

    .prologue
    .line 380
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TabPane;
    move-wide v1, p1

    .local v1, "value":D
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/TabPane;->tabMaxWidthProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v3

    move-wide v4, v1

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljavafx/beans/property/DoubleProperty;->setValue(Ljava/lang/Number;)V

    .line 381
    return-void
.end method

.method public final setTabMinHeight(D)V
    .locals 7

    .prologue
    .line 429
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TabPane;
    move-wide v1, p1

    .local v1, "value":D
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/TabPane;->tabMinHeightProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v3

    move-wide v4, v1

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljavafx/beans/property/DoubleProperty;->setValue(Ljava/lang/Number;)V

    .line 430
    return-void
.end method

.method public final setTabMinWidth(D)V
    .locals 7

    .prologue
    .line 332
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TabPane;
    move-wide v1, p1

    .local v1, "value":D
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/TabPane;->tabMinWidthProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v3

    move-wide v4, v1

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljavafx/beans/property/DoubleProperty;->setValue(Ljava/lang/Number;)V

    .line 333
    return-void
.end method

.method public final sideProperty()Ljavafx/beans/property/ObjectProperty;
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
    .line 214
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TabPane;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TabPane;->side:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    .line 215
    move-object v1, v0

    new-instance v2, Ljavafx/scene/control/TabPane$1;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    sget-object v5, Ljavafx/geometry/Side;->TOP:Ljavafx/geometry/Side;

    invoke-direct {v3, v4, v5}, Ljavafx/scene/control/TabPane$1;-><init>(Ljavafx/scene/control/TabPane;Ljavafx/geometry/Side;)V

    iput-object v2, v1, Ljavafx/scene/control/TabPane;->side:Ljavafx/beans/property/ObjectProperty;

    .line 238
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TabPane;->side:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TabPane;
    return-object v0
.end method

.method public final tabClosingPolicyProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/scene/control/TabPane$TabClosingPolicy;",
            ">;"
        }
    .end annotation

    .prologue
    .line 278
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TabPane;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TabPane;->tabClosingPolicy:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    .line 279
    move-object v1, v0

    new-instance v2, Ljavafx/beans/property/SimpleObjectProperty;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v0

    const-string v5, "tabClosingPolicy"

    sget-object v6, Ljavafx/scene/control/TabPane$TabClosingPolicy;->SELECTED_TAB:Ljavafx/scene/control/TabPane$TabClosingPolicy;

    invoke-direct {v3, v4, v5, v6}, Ljavafx/beans/property/SimpleObjectProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v2, v1, Ljavafx/scene/control/TabPane;->tabClosingPolicy:Ljavafx/beans/property/ObjectProperty;

    .line 281
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TabPane;->tabClosingPolicy:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TabPane;
    return-object v0
.end method

.method public final tabMaxHeightProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 9

    .prologue
    .line 493
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/control/TabPane;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/control/TabPane;->tabMaxHeight:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    .line 494
    move-object v2, v1

    new-instance v3, Ljavafx/scene/control/TabPane$5;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v1

    const-wide v6, 0x7fefffffffffffffL    # Double.MAX_VALUE

    invoke-direct {v4, v5, v6, v7}, Ljavafx/scene/control/TabPane$5;-><init>(Ljavafx/scene/control/TabPane;D)V

    iput-object v3, v2, Ljavafx/scene/control/TabPane;->tabMaxHeight:Ljavafx/beans/property/DoubleProperty;

    .line 512
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/control/TabPane;->tabMaxHeight:Ljavafx/beans/property/DoubleProperty;

    move-object v1, v2

    .end local v1    # "this":Ljavafx/scene/control/TabPane;
    return-object v1
.end method

.method public final tabMaxWidthProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 9

    .prologue
    .line 396
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/control/TabPane;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/control/TabPane;->tabMaxWidth:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    .line 397
    move-object v2, v1

    new-instance v3, Ljavafx/scene/control/TabPane$3;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v1

    const-wide v6, 0x7fefffffffffffffL    # Double.MAX_VALUE

    invoke-direct {v4, v5, v6, v7}, Ljavafx/scene/control/TabPane$3;-><init>(Ljavafx/scene/control/TabPane;D)V

    iput-object v3, v2, Ljavafx/scene/control/TabPane;->tabMaxWidth:Ljavafx/beans/property/DoubleProperty;

    .line 415
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/control/TabPane;->tabMaxWidth:Ljavafx/beans/property/DoubleProperty;

    move-object v1, v2

    .end local v1    # "this":Ljavafx/scene/control/TabPane;
    return-object v1
.end method

.method public final tabMinHeightProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 9

    .prologue
    .line 445
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/control/TabPane;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/control/TabPane;->tabMinHeight:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    .line 446
    move-object v2, v1

    new-instance v3, Ljavafx/scene/control/TabPane$4;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v1

    const-wide/16 v6, 0x0

    invoke-direct {v4, v5, v6, v7}, Ljavafx/scene/control/TabPane$4;-><init>(Ljavafx/scene/control/TabPane;D)V

    iput-object v3, v2, Ljavafx/scene/control/TabPane;->tabMinHeight:Ljavafx/beans/property/DoubleProperty;

    .line 464
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/control/TabPane;->tabMinHeight:Ljavafx/beans/property/DoubleProperty;

    move-object v1, v2

    .end local v1    # "this":Ljavafx/scene/control/TabPane;
    return-object v1
.end method

.method public final tabMinWidthProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 9

    .prologue
    .line 348
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/control/TabPane;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/control/TabPane;->tabMinWidth:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    .line 349
    move-object v2, v1

    new-instance v3, Ljavafx/scene/control/TabPane$2;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v1

    const-wide/16 v6, 0x0

    invoke-direct {v4, v5, v6, v7}, Ljavafx/scene/control/TabPane$2;-><init>(Ljavafx/scene/control/TabPane;D)V

    iput-object v3, v2, Ljavafx/scene/control/TabPane;->tabMinWidth:Ljavafx/beans/property/DoubleProperty;

    .line 367
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/control/TabPane;->tabMinWidth:Ljavafx/beans/property/DoubleProperty;

    move-object v1, v2

    .end local v1    # "this":Ljavafx/scene/control/TabPane;
    return-object v1
.end method
