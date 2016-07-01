.class public Ljavafx/scene/control/SplitPane;
.super Ljavafx/scene/control/Control;
.source "SplitPane.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavafx/scene/control/SplitPane$Divider;,
        Ljavafx/scene/control/SplitPane$StyleableProperties;
    }
.end annotation

.annotation runtime Ljavafx/beans/DefaultProperty;
    value = "items"
.end annotation


# static fields
.field private static final DEFAULT_STYLE_CLASS:Ljava/lang/String; = "split-pane"

.field private static final HORIZONTAL_PSEUDOCLASS_STATE:Ljavafx/css/PseudoClass;

.field private static final RESIZABLE_WITH_PARENT:Ljava/lang/String; = "resizable-with-parent"

.field private static final VERTICAL_PSEUDOCLASS_STATE:Ljavafx/css/PseudoClass;


# instance fields
.field private final dividerCache:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private final dividers:Ljavafx/collections/ObservableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/collections/ObservableList",
            "<",
            "Ljavafx/scene/control/SplitPane$Divider;",
            ">;"
        }
    .end annotation
.end field

.field private final items:Ljavafx/collections/ObservableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/collections/ObservableList",
            "<",
            "Ljavafx/scene/Node;",
            ">;"
        }
    .end annotation
.end field

.field private orientation:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/geometry/Orientation;",
            ">;"
        }
    .end annotation
.end field

.field private final unmodifiableDividers:Ljavafx/collections/ObservableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/collections/ObservableList",
            "<",
            "Ljavafx/scene/control/SplitPane$Divider;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 452
    const-string v0, "vertical"

    invoke-static {v0}, Ljavafx/css/PseudoClass;->getPseudoClass(Ljava/lang/String;)Ljavafx/css/PseudoClass;

    move-result-object v0

    sput-object v0, Ljavafx/scene/control/SplitPane;->VERTICAL_PSEUDOCLASS_STATE:Ljavafx/css/PseudoClass;

    .line 453
    const-string v0, "horizontal"

    invoke-static {v0}, Ljavafx/css/PseudoClass;->getPseudoClass(Ljava/lang/String;)Ljavafx/css/PseudoClass;

    move-result-object v0

    sput-object v0, Ljavafx/scene/control/SplitPane;->HORIZONTAL_PSEUDOCLASS_STATE:Ljavafx/css/PseudoClass;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 177
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/SplitPane;
    move-object v1, v0

    const/4 v2, 0x0

    check-cast v2, [Ljavafx/scene/Node;

    invoke-direct {v1, v2}, Ljavafx/scene/control/SplitPane;-><init>([Ljavafx/scene/Node;)V

    .line 178
    return-void
.end method

.method public varargs constructor <init>([Ljavafx/scene/Node;)V
    .locals 8

    .prologue
    .line 187
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/SplitPane;
    move-object v1, p1

    .local v1, "items":[Ljavafx/scene/Node;
    move-object v2, v0

    invoke-direct {v2}, Ljavafx/scene/control/Control;-><init>()V

    .line 309
    move-object v2, v0

    invoke-static {}, Ljavafx/collections/FXCollections;->observableArrayList()Ljavafx/collections/ObservableList;

    move-result-object v3

    iput-object v3, v2, Ljavafx/scene/control/SplitPane;->items:Ljavafx/collections/ObservableList;

    .line 311
    move-object v2, v0

    invoke-static {}, Ljavafx/collections/FXCollections;->observableArrayList()Ljavafx/collections/ObservableList;

    move-result-object v3

    iput-object v3, v2, Ljavafx/scene/control/SplitPane;->dividers:Ljavafx/collections/ObservableList;

    .line 312
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/control/SplitPane;->dividers:Ljavafx/collections/ObservableList;

    invoke-static {v3}, Ljavafx/collections/FXCollections;->unmodifiableObservableList(Ljavafx/collections/ObservableList;)Ljavafx/collections/ObservableList;

    move-result-object v3

    iput-object v3, v2, Ljavafx/scene/control/SplitPane;->unmodifiableDividers:Ljavafx/collections/ObservableList;

    .line 315
    move-object v2, v0

    new-instance v3, Ljava/util/WeakHashMap;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    invoke-direct {v4}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v3, v2, Ljavafx/scene/control/SplitPane;->dividerCache:Ljava/util/WeakHashMap;

    .line 188
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/SplitPane;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x0

    const-string v6, "split-pane"

    aput-object v6, v4, v5

    invoke-interface {v2, v3}, Ljavafx/collections/ObservableList;->setAll([Ljava/lang/Object;)Z

    move-result v2

    .line 193
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/SplitPane;->focusTraversableProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v2

    check-cast v2, Ljavafx/css/StyleableProperty;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v2, v3, v4}, Ljavafx/css/StyleableProperty;->applyStyle(Ljavafx/css/StyleOrigin;Ljava/lang/Object;)V

    .line 195
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/SplitPane;->getItems()Ljavafx/collections/ObservableList;

    move-result-object v2

    new-instance v3, Ljavafx/scene/control/SplitPane$1;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    invoke-direct {v4, v5}, Ljavafx/scene/control/SplitPane$1;-><init>(Ljavafx/scene/control/SplitPane;)V

    invoke-interface {v2, v3}, Ljavafx/collections/ObservableList;->addListener(Ljavafx/collections/ListChangeListener;)V

    .line 234
    move-object v2, v1

    if-eqz v2, :cond_0

    .line 235
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/SplitPane;->getItems()Ljavafx/collections/ObservableList;

    move-result-object v2

    move-object v3, v1

    invoke-interface {v2, v3}, Ljavafx/collections/ObservableList;->addAll([Ljava/lang/Object;)Z

    move-result v2

    .line 239
    :cond_0
    move-object v2, v0

    sget-object v3, Ljavafx/scene/control/SplitPane;->HORIZONTAL_PSEUDOCLASS_STATE:Ljavafx/css/PseudoClass;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Ljavafx/scene/control/SplitPane;->pseudoClassStateChanged(Ljavafx/css/PseudoClass;Z)V

    .line 240
    return-void
.end method

.method static synthetic access$000(Ljavafx/scene/control/SplitPane;)Ljavafx/collections/ObservableList;
    .locals 2

    .prologue
    .line 127
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/control/SplitPane;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/SplitPane;->dividers:Ljavafx/collections/ObservableList;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/control/SplitPane;
    return-object v0
.end method

.method static synthetic access$100(Ljavafx/scene/control/SplitPane;)Ljava/util/WeakHashMap;
    .locals 2

    .prologue
    .line 127
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/control/SplitPane;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/SplitPane;->dividerCache:Ljava/util/WeakHashMap;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/control/SplitPane;
    return-object v0
.end method

.method static synthetic access$200()Ljavafx/css/PseudoClass;
    .locals 1

    .prologue
    .line 127
    sget-object v0, Ljavafx/scene/control/SplitPane;->VERTICAL_PSEUDOCLASS_STATE:Ljavafx/css/PseudoClass;

    return-object v0
.end method

.method static synthetic access$300()Ljavafx/css/PseudoClass;
    .locals 1

    .prologue
    .line 127
    sget-object v0, Ljavafx/scene/control/SplitPane;->HORIZONTAL_PSEUDOCLASS_STATE:Ljavafx/css/PseudoClass;

    return-object v0
.end method

.method static synthetic access$500(Ljavafx/scene/control/SplitPane;)Ljavafx/beans/property/ObjectProperty;
    .locals 2

    .prologue
    .line 127
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/control/SplitPane;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/SplitPane;->orientation:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/control/SplitPane;
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
    .line 440
    # getter for: Ljavafx/scene/control/SplitPane$StyleableProperties;->STYLEABLES:Ljava/util/List;
    invoke-static {}, Ljavafx/scene/control/SplitPane$StyleableProperties;->access$600()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static isResizableWithParent(Ljavafx/scene/Node;)Ljava/lang/Boolean;
    .locals 4

    .prologue
    .line 158
    move-object v0, p0

    .local v0, "node":Ljavafx/scene/Node;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/Node;->hasProperties()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 159
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/Node;->getProperties()Ljavafx/collections/ObservableMap;

    move-result-object v2

    const-string v3, "resizable-with-parent"

    invoke-interface {v2, v3}, Ljavafx/collections/ObservableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v1, v2

    .line 160
    .local v1, "value":Ljava/lang/Object;
    move-object v2, v1

    if-eqz v2, :cond_0

    .line 161
    move-object v2, v1

    check-cast v2, Ljava/lang/Boolean;

    move-object v0, v2

    .line 164
    .end local v0    # "node":Ljavafx/scene/Node;
    .end local v1    # "value":Ljava/lang/Object;
    :goto_0
    return-object v0

    .restart local v0    # "node":Ljavafx/scene/Node;
    :cond_0
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object v0, v2

    goto :goto_0
.end method

.method public static setResizableWithParent(Ljavafx/scene/Node;Ljava/lang/Boolean;)V
    .locals 5

    .prologue
    .line 143
    move-object v0, p0

    .local v0, "node":Ljavafx/scene/Node;
    move-object v1, p1

    .local v1, "value":Ljava/lang/Boolean;
    move-object v2, v1

    if-nez v2, :cond_0

    .line 144
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/Node;->getProperties()Ljavafx/collections/ObservableMap;

    move-result-object v2

    const-string v3, "resizable-with-parent"

    invoke-interface {v2, v3}, Ljavafx/collections/ObservableMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 148
    :goto_0
    return-void

    .line 146
    :cond_0
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/Node;->getProperties()Ljavafx/collections/ObservableMap;

    move-result-object v2

    const-string v3, "resizable-with-parent"

    move-object v4, v1

    invoke-interface {v2, v3, v4}, Ljavafx/collections/ObservableMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0
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
    .line 390
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/SplitPane;
    new-instance v1, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/skin/SplitPaneSkin;-><init>(Ljavafx/scene/control/SplitPane;)V

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/SplitPane;
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
    .line 449
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/SplitPane;
    invoke-static {}, Ljavafx/scene/control/SplitPane;->getClassCssMetaData()Ljava/util/List;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/SplitPane;
    return-object v0
.end method

.method public getDividerPositions()[D
    .locals 8

    .prologue
    .line 381
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/control/SplitPane;
    move-object v4, v1

    iget-object v4, v4, Ljavafx/scene/control/SplitPane;->dividers:Ljavafx/collections/ObservableList;

    invoke-interface {v4}, Ljavafx/collections/ObservableList;->size()I

    move-result v4

    new-array v4, v4, [D

    move-object v2, v4

    .line 382
    .local v2, "positions":[D
    const/4 v4, 0x0

    move v3, v4

    .local v3, "i":I
    :goto_0
    move v4, v3

    move-object v5, v1

    iget-object v5, v5, Ljavafx/scene/control/SplitPane;->dividers:Ljavafx/collections/ObservableList;

    invoke-interface {v5}, Ljavafx/collections/ObservableList;->size()I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 383
    move-object v4, v2

    move v5, v3

    move-object v6, v1

    iget-object v6, v6, Ljavafx/scene/control/SplitPane;->dividers:Ljavafx/collections/ObservableList;

    move v7, v3

    invoke-interface {v6, v7}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljavafx/scene/control/SplitPane$Divider;

    invoke-virtual {v6}, Ljavafx/scene/control/SplitPane$Divider;->getPosition()D

    move-result-wide v6

    aput-wide v6, v4, v5

    .line 382
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 385
    :cond_0
    move-object v4, v2

    move-object v1, v4

    .end local v1    # "this":Ljavafx/scene/control/SplitPane;
    return-object v1
.end method

.method public getDividers()Ljavafx/collections/ObservableList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/collections/ObservableList",
            "<",
            "Ljavafx/scene/control/SplitPane$Divider;",
            ">;"
        }
    .end annotation

    .prologue
    .line 339
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/SplitPane;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/SplitPane;->unmodifiableDividers:Ljavafx/collections/ObservableList;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/SplitPane;
    return-object v0
.end method

.method public getItems()Ljavafx/collections/ObservableList;
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
    .line 330
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/SplitPane;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/SplitPane;->items:Ljavafx/collections/ObservableList;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/SplitPane;
    return-object v0
.end method

.method public final getOrientation()Ljavafx/geometry/Orientation;
    .locals 2

    .prologue
    .line 268
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/SplitPane;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/SplitPane;->orientation:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    sget-object v1, Ljavafx/geometry/Orientation;->HORIZONTAL:Ljavafx/geometry/Orientation;

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/SplitPane;
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/control/SplitPane;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/SplitPane;->orientation:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/geometry/Orientation;

    goto :goto_0
.end method

.method protected impl_cssGetFocusTraversableInitialValue()Ljava/lang/Boolean;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 464
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/SplitPane;
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/SplitPane;
    return-object v0
.end method

.method public final orientationProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/geometry/Orientation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 275
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/SplitPane;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/SplitPane;->orientation:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    .line 276
    move-object v1, v0

    new-instance v2, Ljavafx/scene/control/SplitPane$2;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    sget-object v5, Ljavafx/geometry/Orientation;->HORIZONTAL:Ljavafx/geometry/Orientation;

    invoke-direct {v3, v4, v5}, Ljavafx/scene/control/SplitPane$2;-><init>(Ljavafx/scene/control/SplitPane;Ljavafx/geometry/Orientation;)V

    iput-object v2, v1, Ljavafx/scene/control/SplitPane;->orientation:Ljavafx/beans/property/ObjectProperty;

    .line 298
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/SplitPane;->orientation:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/SplitPane;
    return-object v0
.end method

.method public setDividerPosition(ID)V
    .locals 8

    .prologue
    .line 349
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/SplitPane;
    move v1, p1

    .local v1, "dividerIndex":I
    move-wide v2, p2

    .local v2, "position":D
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/control/SplitPane;->getDividers()Ljavafx/collections/ObservableList;

    move-result-object v4

    invoke-interface {v4}, Ljavafx/collections/ObservableList;->size()I

    move-result v4

    move v5, v1

    if-gt v4, v5, :cond_0

    .line 350
    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/control/SplitPane;->dividerCache:Ljava/util/WeakHashMap;

    move v5, v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-wide v6, v2

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 351
    .line 356
    :goto_0
    return-void

    .line 353
    :cond_0
    move v4, v1

    if-ltz v4, :cond_1

    .line 354
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/control/SplitPane;->getDividers()Ljavafx/collections/ObservableList;

    move-result-object v4

    move v5, v1

    invoke-interface {v4, v5}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavafx/scene/control/SplitPane$Divider;

    move-wide v5, v2

    invoke-virtual {v4, v5, v6}, Ljavafx/scene/control/SplitPane$Divider;->setPosition(D)V

    .line 356
    :cond_1
    goto :goto_0
.end method

.method public varargs setDividerPositions([D)V
    .locals 7

    .prologue
    .line 364
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/SplitPane;
    move-object v1, p1

    .local v1, "positions":[D
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/control/SplitPane;->dividers:Ljavafx/collections/ObservableList;

    invoke-interface {v3}, Ljavafx/collections/ObservableList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 365
    const/4 v3, 0x0

    move v2, v3

    .local v2, "i":I
    :goto_0
    move v3, v2

    move-object v4, v1

    array-length v4, v4

    if-ge v3, v4, :cond_0

    .line 366
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/control/SplitPane;->dividerCache:Ljava/util/WeakHashMap;

    move v4, v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object v5, v1

    move v6, v2

    aget-wide v5, v5, v6

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 365
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 368
    .line 373
    :cond_0
    :goto_1
    return-void

    .line 370
    .end local v2    # "i":I
    :cond_1
    const/4 v3, 0x0

    move v2, v3

    .restart local v2    # "i":I
    :goto_2
    move v3, v2

    move-object v4, v1

    array-length v4, v4

    if-ge v3, v4, :cond_2

    move v3, v2

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/control/SplitPane;->dividers:Ljavafx/collections/ObservableList;

    invoke-interface {v4}, Ljavafx/collections/ObservableList;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 371
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/control/SplitPane;->dividers:Ljavafx/collections/ObservableList;

    move v4, v2

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavafx/scene/control/SplitPane$Divider;

    move-object v4, v1

    move v5, v2

    aget-wide v4, v4, v5

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/control/SplitPane$Divider;->setPosition(D)V

    .line 370
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 373
    :cond_2
    goto :goto_1
.end method

.method public final setOrientation(Ljavafx/geometry/Orientation;)V
    .locals 4

    .prologue
    .line 260
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/SplitPane;
    move-object v1, p1

    .local v1, "value":Ljavafx/geometry/Orientation;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/SplitPane;->orientationProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 261
    return-void
.end method
