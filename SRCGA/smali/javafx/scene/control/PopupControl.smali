.class public Ljavafx/scene/control/PopupControl;
.super Ljavafx/stage/PopupWindow;
.source "PopupControl.java"

# interfaces
.implements Ljavafx/scene/control/Skinnable;
.implements Ljavafx/css/Styleable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavafx/scene/control/PopupControl$CSSBridge;
    }
.end annotation


# static fields
.field private static final SKIN:Ljavafx/css/CssMetaData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/css/CssMetaData",
            "<",
            "Ljavafx/scene/control/PopupControl$CSSBridge;",
            "Ljava/lang/String;",
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

.field public static final USE_COMPUTED_SIZE:D = -1.0

.field public static final USE_PREF_SIZE:D = -Infinity


# instance fields
.field protected bridge:Ljavafx/scene/control/PopupControl$CSSBridge;

.field private currentSkinClassName:Ljava/lang/String;

.field private maxHeight:Ljavafx/beans/property/DoubleProperty;

.field private maxHeightCache:D

.field private maxWidth:Ljavafx/beans/property/DoubleProperty;

.field private maxWidthCache:D

.field private minHeight:Ljavafx/beans/property/DoubleProperty;

.field private minHeightCache:D

.field private minWidth:Ljavafx/beans/property/DoubleProperty;

.field private minWidthCache:D

.field private prefHeight:Ljavafx/beans/property/DoubleProperty;

.field private prefHeightCache:D

.field private prefWidth:Ljavafx/beans/property/DoubleProperty;

.field private prefWidthCache:D

.field private final skin:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/scene/control/Skin",
            "<*>;>;"
        }
    .end annotation
.end field

.field private skinClassName:Ljavafx/beans/property/StringProperty;

.field private skinSizeComputed:Z


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    .line 85
    invoke-static {}, Ljavafx/application/Application;->getUserAgentStylesheet()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 86
    invoke-static {}, Lcom/sun/javafx/application/PlatformImpl;->setDefaultPlatformUserAgentStylesheet()V

    .line 989
    :cond_0
    new-instance v1, Ljavafx/scene/control/PopupControl$9;

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    const-string v3, "-fx-skin"

    .line 991
    invoke-static {}, Lcom/sun/javafx/css/converters/StringConverter;->getInstance()Ljavafx/css/StyleConverter;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljavafx/scene/control/PopupControl$9;-><init>(Ljava/lang/String;Ljavafx/css/StyleConverter;)V

    sput-object v1, Ljavafx/scene/control/PopupControl;->SKIN:Ljavafx/css/CssMetaData;

    .line 1006
    new-instance v1, Ljava/util/ArrayList;

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v1

    .line 1008
    .local v0, "styleables":Ljava/util/List;, "Ljava/util/List<Ljavafx/css/CssMetaData<+Ljavafx/css/Styleable;*>;>;"
    move-object v1, v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljavafx/css/CssMetaData;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x0

    sget-object v5, Ljavafx/scene/control/PopupControl;->SKIN:Ljavafx/css/CssMetaData;

    aput-object v5, v3, v4

    invoke-static {v1, v2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    move-result v1

    .line 1011
    move-object v1, v0

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    sput-object v1, Ljavafx/scene/control/PopupControl;->STYLEABLES:Ljava/util/List;

    .line 1012
    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    .line 111
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/PopupControl;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/stage/PopupWindow;-><init>()V

    .line 216
    move-object v1, v0

    new-instance v2, Ljavafx/scene/control/PopupControl$1;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/control/PopupControl$1;-><init>(Ljavafx/scene/control/PopupControl;)V

    iput-object v2, v1, Ljavafx/scene/control/PopupControl;->skin:Ljavafx/beans/property/ObjectProperty;

    .line 299
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Ljavafx/scene/control/PopupControl;->currentSkinClassName:Ljava/lang/String;

    .line 303
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Ljavafx/scene/control/PopupControl;->skinClassName:Ljavafx/beans/property/StringProperty;

    .line 800
    move-object v1, v0

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    iput-wide v2, v1, Ljavafx/scene/control/PopupControl;->prefWidthCache:D

    .line 801
    move-object v1, v0

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    iput-wide v2, v1, Ljavafx/scene/control/PopupControl;->prefHeightCache:D

    .line 802
    move-object v1, v0

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    iput-wide v2, v1, Ljavafx/scene/control/PopupControl;->minWidthCache:D

    .line 803
    move-object v1, v0

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    iput-wide v2, v1, Ljavafx/scene/control/PopupControl;->minHeightCache:D

    .line 804
    move-object v1, v0

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    iput-wide v2, v1, Ljavafx/scene/control/PopupControl;->maxWidthCache:D

    .line 805
    move-object v1, v0

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    iput-wide v2, v1, Ljavafx/scene/control/PopupControl;->maxHeightCache:D

    .line 806
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Ljavafx/scene/control/PopupControl;->skinSizeComputed:Z

    .line 112
    move-object v1, v0

    new-instance v2, Ljavafx/scene/control/PopupControl$CSSBridge;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/control/PopupControl$CSSBridge;-><init>(Ljavafx/scene/control/PopupControl;)V

    iput-object v2, v1, Ljavafx/scene/control/PopupControl;->bridge:Ljavafx/scene/control/PopupControl$CSSBridge;

    .line 113
    move-object v1, v0

    sget-object v2, Ljavafx/stage/PopupWindow$AnchorLocation;->CONTENT_TOP_LEFT:Ljavafx/stage/PopupWindow$AnchorLocation;

    invoke-virtual {v1, v2}, Ljavafx/scene/control/PopupControl;->setAnchorLocation(Ljavafx/stage/PopupWindow$AnchorLocation;)V

    .line 114
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/PopupControl;->getContent()Ljavafx/collections/ObservableList;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/PopupControl;->bridge:Ljavafx/scene/control/PopupControl$CSSBridge;

    invoke-interface {v1, v2}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v1

    .line 115
    return-void
.end method

.method static synthetic access$000(Ljavafx/scene/control/PopupControl;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 65
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/control/PopupControl;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/PopupControl;->currentSkinClassName:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/control/PopupControl;
    return-object v0
.end method

.method static synthetic access$002(Ljavafx/scene/control/PopupControl;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .prologue
    .line 65
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/control/PopupControl;
    move-object v1, p1

    .local v1, "x1":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    move-object v5, v2

    move-object v6, v3

    move-object v2, v6

    move-object v3, v5

    move-object v4, v6

    iput-object v4, v3, Ljavafx/scene/control/PopupControl;->currentSkinClassName:Ljava/lang/String;

    move-object v0, v2

    .end local v0    # "x0":Ljavafx/scene/control/PopupControl;
    return-object v0
.end method

.method static synthetic access$100(Ljavafx/scene/control/PopupControl;)Ljavafx/beans/property/StringProperty;
    .locals 2

    .prologue
    .line 65
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/control/PopupControl;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/control/PopupControl;->skinClassNameProperty()Ljavafx/beans/property/StringProperty;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/control/PopupControl;
    return-object v0
.end method

.method static synthetic access$1000()Ljavafx/css/CssMetaData;
    .locals 1

    .prologue
    .line 65
    sget-object v0, Ljavafx/scene/control/PopupControl;->SKIN:Ljavafx/css/CssMetaData;

    return-object v0
.end method

.method static synthetic access$202(Ljavafx/scene/control/PopupControl;D)D
    .locals 13

    .prologue
    .line 65
    move-object v1, p0

    .local v1, "x0":Ljavafx/scene/control/PopupControl;
    move-wide v2, p1

    .local v2, "x1":D
    move-object v4, v1

    move-wide v5, v2

    move-object v9, v4

    move-wide v10, v5

    move-wide v4, v10

    move-object v6, v9

    move-wide v7, v10

    iput-wide v7, v6, Ljavafx/scene/control/PopupControl;->prefWidthCache:D

    move-wide v1, v4

    .end local v1    # "x0":Ljavafx/scene/control/PopupControl;
    return-wide v1
.end method

.method static synthetic access$302(Ljavafx/scene/control/PopupControl;D)D
    .locals 13

    .prologue
    .line 65
    move-object v1, p0

    .local v1, "x0":Ljavafx/scene/control/PopupControl;
    move-wide v2, p1

    .local v2, "x1":D
    move-object v4, v1

    move-wide v5, v2

    move-object v9, v4

    move-wide v10, v5

    move-wide v4, v10

    move-object v6, v9

    move-wide v7, v10

    iput-wide v7, v6, Ljavafx/scene/control/PopupControl;->prefHeightCache:D

    move-wide v1, v4

    .end local v1    # "x0":Ljavafx/scene/control/PopupControl;
    return-wide v1
.end method

.method static synthetic access$402(Ljavafx/scene/control/PopupControl;D)D
    .locals 13

    .prologue
    .line 65
    move-object v1, p0

    .local v1, "x0":Ljavafx/scene/control/PopupControl;
    move-wide v2, p1

    .local v2, "x1":D
    move-object v4, v1

    move-wide v5, v2

    move-object v9, v4

    move-wide v10, v5

    move-wide v4, v10

    move-object v6, v9

    move-wide v7, v10

    iput-wide v7, v6, Ljavafx/scene/control/PopupControl;->minWidthCache:D

    move-wide v1, v4

    .end local v1    # "x0":Ljavafx/scene/control/PopupControl;
    return-wide v1
.end method

.method static synthetic access$502(Ljavafx/scene/control/PopupControl;D)D
    .locals 13

    .prologue
    .line 65
    move-object v1, p0

    .local v1, "x0":Ljavafx/scene/control/PopupControl;
    move-wide v2, p1

    .local v2, "x1":D
    move-object v4, v1

    move-wide v5, v2

    move-object v9, v4

    move-wide v10, v5

    move-wide v4, v10

    move-object v6, v9

    move-wide v7, v10

    iput-wide v7, v6, Ljavafx/scene/control/PopupControl;->minHeightCache:D

    move-wide v1, v4

    .end local v1    # "x0":Ljavafx/scene/control/PopupControl;
    return-wide v1
.end method

.method static synthetic access$602(Ljavafx/scene/control/PopupControl;D)D
    .locals 13

    .prologue
    .line 65
    move-object v1, p0

    .local v1, "x0":Ljavafx/scene/control/PopupControl;
    move-wide v2, p1

    .local v2, "x1":D
    move-object v4, v1

    move-wide v5, v2

    move-object v9, v4

    move-wide v10, v5

    move-wide v4, v10

    move-object v6, v9

    move-wide v7, v10

    iput-wide v7, v6, Ljavafx/scene/control/PopupControl;->maxWidthCache:D

    move-wide v1, v4

    .end local v1    # "x0":Ljavafx/scene/control/PopupControl;
    return-wide v1
.end method

.method static synthetic access$702(Ljavafx/scene/control/PopupControl;D)D
    .locals 13

    .prologue
    .line 65
    move-object v1, p0

    .local v1, "x0":Ljavafx/scene/control/PopupControl;
    move-wide v2, p1

    .local v2, "x1":D
    move-object v4, v1

    move-wide v5, v2

    move-object v9, v4

    move-wide v10, v5

    move-wide v4, v10

    move-object v6, v9

    move-wide v7, v10

    iput-wide v7, v6, Ljavafx/scene/control/PopupControl;->maxHeightCache:D

    move-wide v1, v4

    .end local v1    # "x0":Ljavafx/scene/control/PopupControl;
    return-wide v1
.end method

.method static synthetic access$802(Ljavafx/scene/control/PopupControl;Z)Z
    .locals 7

    .prologue
    .line 65
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/control/PopupControl;
    move v1, p1

    .local v1, "x1":Z
    move-object v2, v0

    move v3, v1

    move-object v5, v2

    move v6, v3

    move v2, v6

    move-object v3, v5

    move v4, v6

    iput-boolean v4, v3, Ljavafx/scene/control/PopupControl;->skinSizeComputed:Z

    move v0, v2

    .end local v0    # "x0":Ljavafx/scene/control/PopupControl;
    return v0
.end method

.method static synthetic access$900(Ljavafx/scene/control/PopupControl;)Ljavafx/scene/Node;
    .locals 2

    .prologue
    .line 65
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/control/PopupControl;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/control/PopupControl;->getSkinNode()Ljavafx/scene/Node;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/control/PopupControl;
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
    .line 1020
    sget-object v0, Ljavafx/scene/control/PopupControl;->STYLEABLES:Ljava/util/List;

    return-object v0
.end method

.method private getSkinNode()Ljavafx/scene/Node;
    .locals 2

    .prologue
    .line 370
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/PopupControl;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/PopupControl;->getSkin()Ljavafx/scene/control/Skin;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/PopupControl;
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/control/PopupControl;
    :cond_0
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/PopupControl;->getSkin()Ljavafx/scene/control/Skin;

    move-result-object v1

    invoke-interface {v1}, Ljavafx/scene/control/Skin;->getNode()Ljavafx/scene/Node;

    move-result-object v1

    goto :goto_0
.end method

.method private recalculateMaxHeight(D)D
    .locals 7

    .prologue
    .line 947
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/control/PopupControl;
    move-wide v2, p1

    .local v2, "width":D
    move-object v4, v1

    invoke-direct {v4}, Ljavafx/scene/control/PopupControl;->recomputeSkinSize()V

    .line 948
    move-object v4, v1

    invoke-direct {v4}, Ljavafx/scene/control/PopupControl;->getSkinNode()Ljavafx/scene/Node;

    move-result-object v4

    if-nez v4, :cond_0

    const-wide/16 v4, 0x0

    :goto_0
    move-wide v1, v4

    .end local v1    # "this":Ljavafx/scene/control/PopupControl;
    return-wide v1

    .restart local v1    # "this":Ljavafx/scene/control/PopupControl;
    :cond_0
    move-object v4, v1

    invoke-direct {v4}, Ljavafx/scene/control/PopupControl;->getSkinNode()Ljavafx/scene/Node;

    move-result-object v4

    move-wide v5, v2

    invoke-virtual {v4, v5, v6}, Ljavafx/scene/Node;->maxHeight(D)D

    move-result-wide v4

    goto :goto_0
.end method

.method private recalculateMaxWidth(D)D
    .locals 7

    .prologue
    .line 943
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/control/PopupControl;
    move-wide v2, p1

    .local v2, "height":D
    move-object v4, v1

    invoke-direct {v4}, Ljavafx/scene/control/PopupControl;->recomputeSkinSize()V

    .line 944
    move-object v4, v1

    invoke-direct {v4}, Ljavafx/scene/control/PopupControl;->getSkinNode()Ljavafx/scene/Node;

    move-result-object v4

    if-nez v4, :cond_0

    const-wide/16 v4, 0x0

    :goto_0
    move-wide v1, v4

    .end local v1    # "this":Ljavafx/scene/control/PopupControl;
    return-wide v1

    .restart local v1    # "this":Ljavafx/scene/control/PopupControl;
    :cond_0
    move-object v4, v1

    invoke-direct {v4}, Ljavafx/scene/control/PopupControl;->getSkinNode()Ljavafx/scene/Node;

    move-result-object v4

    move-wide v5, v2

    invoke-virtual {v4, v5, v6}, Ljavafx/scene/Node;->maxWidth(D)D

    move-result-wide v4

    goto :goto_0
.end method

.method private recalculateMinHeight(D)D
    .locals 7

    .prologue
    .line 939
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/control/PopupControl;
    move-wide v2, p1

    .local v2, "width":D
    move-object v4, v1

    invoke-direct {v4}, Ljavafx/scene/control/PopupControl;->recomputeSkinSize()V

    .line 940
    move-object v4, v1

    invoke-direct {v4}, Ljavafx/scene/control/PopupControl;->getSkinNode()Ljavafx/scene/Node;

    move-result-object v4

    if-nez v4, :cond_0

    const-wide/16 v4, 0x0

    :goto_0
    move-wide v1, v4

    .end local v1    # "this":Ljavafx/scene/control/PopupControl;
    return-wide v1

    .restart local v1    # "this":Ljavafx/scene/control/PopupControl;
    :cond_0
    move-object v4, v1

    invoke-direct {v4}, Ljavafx/scene/control/PopupControl;->getSkinNode()Ljavafx/scene/Node;

    move-result-object v4

    move-wide v5, v2

    invoke-virtual {v4, v5, v6}, Ljavafx/scene/Node;->minHeight(D)D

    move-result-wide v4

    goto :goto_0
.end method

.method private recalculateMinWidth(D)D
    .locals 7

    .prologue
    .line 935
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/control/PopupControl;
    move-wide v2, p1

    .local v2, "height":D
    move-object v4, v1

    invoke-direct {v4}, Ljavafx/scene/control/PopupControl;->recomputeSkinSize()V

    .line 936
    move-object v4, v1

    invoke-direct {v4}, Ljavafx/scene/control/PopupControl;->getSkinNode()Ljavafx/scene/Node;

    move-result-object v4

    if-nez v4, :cond_0

    const-wide/16 v4, 0x0

    :goto_0
    move-wide v1, v4

    .end local v1    # "this":Ljavafx/scene/control/PopupControl;
    return-wide v1

    .restart local v1    # "this":Ljavafx/scene/control/PopupControl;
    :cond_0
    move-object v4, v1

    invoke-direct {v4}, Ljavafx/scene/control/PopupControl;->getSkinNode()Ljavafx/scene/Node;

    move-result-object v4

    move-wide v5, v2

    invoke-virtual {v4, v5, v6}, Ljavafx/scene/Node;->minWidth(D)D

    move-result-wide v4

    goto :goto_0
.end method

.method private recalculatePrefHeight(D)D
    .locals 7

    .prologue
    .line 955
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/control/PopupControl;
    move-wide v2, p1

    .local v2, "width":D
    move-object v4, v1

    invoke-direct {v4}, Ljavafx/scene/control/PopupControl;->recomputeSkinSize()V

    .line 956
    move-object v4, v1

    invoke-direct {v4}, Ljavafx/scene/control/PopupControl;->getSkinNode()Ljavafx/scene/Node;

    move-result-object v4

    if-nez v4, :cond_0

    const-wide/16 v4, 0x0

    :goto_0
    move-wide v1, v4

    .end local v1    # "this":Ljavafx/scene/control/PopupControl;
    return-wide v1

    .restart local v1    # "this":Ljavafx/scene/control/PopupControl;
    :cond_0
    move-object v4, v1

    invoke-direct {v4}, Ljavafx/scene/control/PopupControl;->getSkinNode()Ljavafx/scene/Node;

    move-result-object v4

    move-wide v5, v2

    invoke-virtual {v4, v5, v6}, Ljavafx/scene/Node;->prefHeight(D)D

    move-result-wide v4

    goto :goto_0
.end method

.method private recalculatePrefWidth(D)D
    .locals 7

    .prologue
    .line 951
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/control/PopupControl;
    move-wide v2, p1

    .local v2, "height":D
    move-object v4, v1

    invoke-direct {v4}, Ljavafx/scene/control/PopupControl;->recomputeSkinSize()V

    .line 952
    move-object v4, v1

    invoke-direct {v4}, Ljavafx/scene/control/PopupControl;->getSkinNode()Ljavafx/scene/Node;

    move-result-object v4

    if-nez v4, :cond_0

    const-wide/16 v4, 0x0

    :goto_0
    move-wide v1, v4

    .end local v1    # "this":Ljavafx/scene/control/PopupControl;
    return-wide v1

    .restart local v1    # "this":Ljavafx/scene/control/PopupControl;
    :cond_0
    move-object v4, v1

    invoke-direct {v4}, Ljavafx/scene/control/PopupControl;->getSkinNode()Ljavafx/scene/Node;

    move-result-object v4

    move-wide v5, v2

    invoke-virtual {v4, v5, v6}, Ljavafx/scene/Node;->prefWidth(D)D

    move-result-wide v4

    goto :goto_0
.end method

.method private recomputeSkinSize()V
    .locals 3

    .prologue
    .line 960
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/PopupControl;
    move-object v1, v0

    iget-boolean v1, v1, Ljavafx/scene/control/PopupControl;->skinSizeComputed:Z

    if-nez v1, :cond_0

    .line 965
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/PopupControl;->bridge:Ljavafx/scene/control/PopupControl$CSSBridge;

    invoke-virtual {v1}, Ljavafx/scene/control/PopupControl$CSSBridge;->applyCss()V

    .line 966
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Ljavafx/scene/control/PopupControl;->skinSizeComputed:Z

    .line 968
    :cond_0
    return-void
.end method

.method private skinClassNameProperty()Ljavafx/beans/property/StringProperty;
    .locals 6

    .prologue
    .line 305
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/PopupControl;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/PopupControl;->skinClassName:Ljavafx/beans/property/StringProperty;

    if-nez v1, :cond_0

    .line 306
    move-object v1, v0

    new-instance v2, Ljavafx/scene/control/PopupControl$2;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/control/PopupControl$2;-><init>(Ljavafx/scene/control/PopupControl;)V

    iput-object v2, v1, Ljavafx/scene/control/PopupControl;->skinClassName:Ljavafx/beans/property/StringProperty;

    .line 358
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/PopupControl;->skinClassName:Ljavafx/beans/property/StringProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/PopupControl;
    return-object v0
.end method


# virtual methods
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
    .line 980
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/PopupControl;
    const/4 v1, 0x0

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/PopupControl;
    return-object v0
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
    .line 1029
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/PopupControl;
    invoke-static {}, Ljavafx/scene/control/PopupControl;->getClassCssMetaData()Ljava/util/List;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/PopupControl;
    return-object v0
.end method

.method public final getId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 158
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/PopupControl;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/PopupControl;->idProperty()Ljavafx/beans/property/StringProperty;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/beans/property/StringProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/PopupControl;
    return-object v0
.end method

.method public final getMaxHeight()D
    .locals 4

    .prologue
    .line 757
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/control/PopupControl;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/control/PopupControl;->maxHeight:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Ljavafx/scene/control/PopupControl;
    return-wide v1

    .restart local v1    # "this":Ljavafx/scene/control/PopupControl;
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/control/PopupControl;->maxHeight:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v2}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v2

    goto :goto_0
.end method

.method public final getMaxWidth()D
    .locals 4

    .prologue
    .line 689
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/control/PopupControl;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/control/PopupControl;->maxWidth:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Ljavafx/scene/control/PopupControl;
    return-wide v1

    .restart local v1    # "this":Ljavafx/scene/control/PopupControl;
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/control/PopupControl;->maxWidth:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v2}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v2

    goto :goto_0
.end method

.method public final getMinHeight()D
    .locals 4

    .prologue
    .line 485
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/control/PopupControl;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/control/PopupControl;->minHeight:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Ljavafx/scene/control/PopupControl;
    return-wide v1

    .restart local v1    # "this":Ljavafx/scene/control/PopupControl;
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/control/PopupControl;->minHeight:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v2}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v2

    goto :goto_0
.end method

.method public final getMinWidth()D
    .locals 4

    .prologue
    .line 416
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/control/PopupControl;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/control/PopupControl;->minWidth:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Ljavafx/scene/control/PopupControl;
    return-wide v1

    .restart local v1    # "this":Ljavafx/scene/control/PopupControl;
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/control/PopupControl;->minWidth:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v2}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v2

    goto :goto_0
.end method

.method public final getPrefHeight()D
    .locals 4

    .prologue
    .line 609
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/control/PopupControl;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/control/PopupControl;->prefHeight:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Ljavafx/scene/control/PopupControl;
    return-wide v1

    .restart local v1    # "this":Ljavafx/scene/control/PopupControl;
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/control/PopupControl;->prefHeight:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v2}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v2

    goto :goto_0
.end method

.method public final getPrefWidth()D
    .locals 4

    .prologue
    .line 553
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/control/PopupControl;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/control/PopupControl;->prefWidth:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Ljavafx/scene/control/PopupControl;
    return-wide v1

    .restart local v1    # "this":Ljavafx/scene/control/PopupControl;
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/control/PopupControl;->prefWidth:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v2}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v2

    goto :goto_0
.end method

.method public final getPseudoClassStates()Ljavafx/collections/ObservableSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/collections/ObservableSet",
            "<",
            "Ljavafx/css/PseudoClass;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1093
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/PopupControl;
    invoke-static {}, Ljavafx/collections/FXCollections;->emptyObservableSet()Ljavafx/collections/ObservableSet;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/PopupControl;
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
    .line 213
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/PopupControl;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/PopupControl;->skinProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/scene/control/Skin;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/PopupControl;
    return-object v0
.end method

.method public final getStyle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 190
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/PopupControl;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/PopupControl;->styleProperty()Ljavafx/beans/property/StringProperty;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/beans/property/StringProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/PopupControl;
    return-object v0
.end method

.method public final getStyleClass()Ljavafx/collections/ObservableList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/collections/ObservableList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 164
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/PopupControl;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/PopupControl;->bridge:Ljavafx/scene/control/PopupControl$CSSBridge;

    invoke-virtual {v1}, Ljavafx/scene/control/PopupControl$CSSBridge;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/PopupControl;
    return-object v0
.end method

.method public getStyleableParent()Ljavafx/css/Styleable;
    .locals 5

    .prologue
    .line 1068
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/PopupControl;
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/control/PopupControl;->getOwnerNode()Ljavafx/scene/Node;

    move-result-object v4

    move-object v1, v4

    .line 1069
    .local v1, "ownerNode":Ljavafx/scene/Node;
    move-object v4, v1

    if-eqz v4, :cond_0

    .line 1070
    move-object v4, v1

    move-object v0, v4

    .line 1084
    .end local v0    # "this":Ljavafx/scene/control/PopupControl;
    :goto_0
    return-object v0

    .line 1074
    .restart local v0    # "this":Ljavafx/scene/control/PopupControl;
    :cond_0
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/control/PopupControl;->getOwnerWindow()Ljavafx/stage/Window;

    move-result-object v4

    move-object v2, v4

    .line 1075
    .local v2, "ownerWindow":Ljavafx/stage/Window;
    move-object v4, v2

    if-eqz v4, :cond_1

    .line 1077
    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/stage/Window;->getScene()Ljavafx/scene/Scene;

    move-result-object v4

    move-object v3, v4

    .line 1078
    .local v3, "ownerScene":Ljavafx/scene/Scene;
    move-object v4, v3

    if-eqz v4, :cond_1

    .line 1079
    move-object v4, v3

    invoke-virtual {v4}, Ljavafx/scene/Scene;->getRoot()Ljavafx/scene/Parent;

    move-result-object v4

    move-object v0, v4

    goto :goto_0

    .line 1084
    .end local v3    # "ownerScene":Ljavafx/scene/Scene;
    :cond_1
    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/control/PopupControl;->bridge:Ljavafx/scene/control/PopupControl$CSSBridge;

    invoke-virtual {v4}, Ljavafx/scene/control/PopupControl$CSSBridge;->getParent()Ljavafx/scene/Parent;

    move-result-object v4

    move-object v0, v4

    goto :goto_0
.end method

.method public getTypeSelector()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1047
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/PopupControl;
    const-string v1, "PopupControl"

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/PopupControl;
    return-object v0
.end method

.method public final idProperty()Ljavafx/beans/property/StringProperty;
    .locals 2

    .prologue
    .line 132
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/PopupControl;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/PopupControl;->bridge:Ljavafx/scene/control/PopupControl$CSSBridge;

    invoke-virtual {v1}, Ljavafx/scene/control/PopupControl$CSSBridge;->idProperty()Ljavafx/beans/property/StringProperty;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/PopupControl;
    return-object v0
.end method

.method public impl_styleableGetNode()Ljavafx/scene/Node;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1103
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/PopupControl;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/PopupControl;->bridge:Ljavafx/scene/control/PopupControl$CSSBridge;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/PopupControl;
    return-object v0
.end method

.method public final maxHeight(D)D
    .locals 11

    .prologue
    .line 919
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/control/PopupControl;
    move-wide v2, p1

    .local v2, "width":D
    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/control/PopupControl;->getMaxHeight()D

    move-result-wide v6

    move-wide v4, v6

    .line 920
    .local v4, "override":D
    move-wide v6, v4

    const-wide/high16 v8, -0x4010000000000000L    # -1.0

    cmpl-double v6, v6, v8

    if-nez v6, :cond_1

    .line 921
    move-object v6, v1

    iget-wide v6, v6, Ljavafx/scene/control/PopupControl;->maxHeightCache:D

    const-wide/high16 v8, -0x4010000000000000L    # -1.0

    cmpl-double v6, v6, v8

    if-nez v6, :cond_0

    move-object v6, v1

    move-object v7, v1

    move-wide v8, v2

    invoke-direct {v7, v8, v9}, Ljavafx/scene/control/PopupControl;->recalculateMaxHeight(D)D

    move-result-wide v7

    iput-wide v7, v6, Ljavafx/scene/control/PopupControl;->maxHeightCache:D

    .line 922
    :cond_0
    move-object v6, v1

    iget-wide v6, v6, Ljavafx/scene/control/PopupControl;->maxHeightCache:D

    move-wide v1, v6

    .line 926
    .end local v1    # "this":Ljavafx/scene/control/PopupControl;
    :goto_0
    return-wide v1

    .line 923
    .restart local v1    # "this":Ljavafx/scene/control/PopupControl;
    :cond_1
    move-wide v6, v4

    const-wide/high16 v8, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    cmpl-double v6, v6, v8

    if-nez v6, :cond_2

    .line 924
    move-object v6, v1

    move-wide v7, v2

    invoke-virtual {v6, v7, v8}, Ljavafx/scene/control/PopupControl;->prefHeight(D)D

    move-result-wide v6

    move-wide v1, v6

    goto :goto_0

    .line 926
    :cond_2
    move-wide v6, v4

    move-wide v1, v6

    goto :goto_0
.end method

.method public final maxHeightProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 9

    .prologue
    .line 759
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/control/PopupControl;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/control/PopupControl;->maxHeight:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    .line 760
    move-object v2, v1

    new-instance v3, Ljavafx/scene/control/PopupControl$8;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v1

    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    invoke-direct {v4, v5, v6, v7}, Ljavafx/scene/control/PopupControl$8;-><init>(Ljavafx/scene/control/PopupControl;D)V

    iput-object v3, v2, Ljavafx/scene/control/PopupControl;->maxHeight:Ljavafx/beans/property/DoubleProperty;

    .line 776
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/control/PopupControl;->maxHeight:Ljavafx/beans/property/DoubleProperty;

    move-object v1, v2

    .end local v1    # "this":Ljavafx/scene/control/PopupControl;
    return-object v1
.end method

.method public final maxWidth(D)D
    .locals 11

    .prologue
    .line 899
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/control/PopupControl;
    move-wide v2, p1

    .local v2, "height":D
    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/control/PopupControl;->getMaxWidth()D

    move-result-wide v6

    move-wide v4, v6

    .line 900
    .local v4, "override":D
    move-wide v6, v4

    const-wide/high16 v8, -0x4010000000000000L    # -1.0

    cmpl-double v6, v6, v8

    if-nez v6, :cond_1

    .line 901
    move-object v6, v1

    iget-wide v6, v6, Ljavafx/scene/control/PopupControl;->maxWidthCache:D

    const-wide/high16 v8, -0x4010000000000000L    # -1.0

    cmpl-double v6, v6, v8

    if-nez v6, :cond_0

    move-object v6, v1

    move-object v7, v1

    move-wide v8, v2

    invoke-direct {v7, v8, v9}, Ljavafx/scene/control/PopupControl;->recalculateMaxWidth(D)D

    move-result-wide v7

    iput-wide v7, v6, Ljavafx/scene/control/PopupControl;->maxWidthCache:D

    .line 902
    :cond_0
    move-object v6, v1

    iget-wide v6, v6, Ljavafx/scene/control/PopupControl;->maxWidthCache:D

    move-wide v1, v6

    .line 906
    .end local v1    # "this":Ljavafx/scene/control/PopupControl;
    :goto_0
    return-wide v1

    .line 903
    .restart local v1    # "this":Ljavafx/scene/control/PopupControl;
    :cond_1
    move-wide v6, v4

    const-wide/high16 v8, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    cmpl-double v6, v6, v8

    if-nez v6, :cond_2

    .line 904
    move-object v6, v1

    move-wide v7, v2

    invoke-virtual {v6, v7, v8}, Ljavafx/scene/control/PopupControl;->prefWidth(D)D

    move-result-wide v6

    move-wide v1, v6

    goto :goto_0

    .line 906
    :cond_2
    move-wide v6, v4

    move-wide v1, v6

    goto :goto_0
.end method

.method public final maxWidthProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 9

    .prologue
    .line 691
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/control/PopupControl;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/control/PopupControl;->maxWidth:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    .line 692
    move-object v2, v1

    new-instance v3, Ljavafx/scene/control/PopupControl$7;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v1

    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    invoke-direct {v4, v5, v6, v7}, Ljavafx/scene/control/PopupControl$7;-><init>(Ljavafx/scene/control/PopupControl;D)V

    iput-object v3, v2, Ljavafx/scene/control/PopupControl;->maxWidth:Ljavafx/beans/property/DoubleProperty;

    .line 708
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/control/PopupControl;->maxWidth:Ljavafx/beans/property/DoubleProperty;

    move-object v1, v2

    .end local v1    # "this":Ljavafx/scene/control/PopupControl;
    return-object v1
.end method

.method public final minHeight(D)D
    .locals 11

    .prologue
    .line 838
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/control/PopupControl;
    move-wide v2, p1

    .local v2, "width":D
    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/control/PopupControl;->getMinHeight()D

    move-result-wide v6

    move-wide v4, v6

    .line 839
    .local v4, "override":D
    move-wide v6, v4

    const-wide/high16 v8, -0x4010000000000000L    # -1.0

    cmpl-double v6, v6, v8

    if-nez v6, :cond_1

    .line 840
    move-object v6, v1

    iget-wide v6, v6, Ljavafx/scene/control/PopupControl;->minHeightCache:D

    const-wide/high16 v8, -0x4010000000000000L    # -1.0

    cmpl-double v6, v6, v8

    if-nez v6, :cond_0

    move-object v6, v1

    move-object v7, v1

    move-wide v8, v2

    invoke-direct {v7, v8, v9}, Ljavafx/scene/control/PopupControl;->recalculateMinHeight(D)D

    move-result-wide v7

    iput-wide v7, v6, Ljavafx/scene/control/PopupControl;->minHeightCache:D

    .line 841
    :cond_0
    move-object v6, v1

    iget-wide v6, v6, Ljavafx/scene/control/PopupControl;->minHeightCache:D

    move-wide v1, v6

    .line 845
    .end local v1    # "this":Ljavafx/scene/control/PopupControl;
    :goto_0
    return-wide v1

    .line 842
    .restart local v1    # "this":Ljavafx/scene/control/PopupControl;
    :cond_1
    move-wide v6, v4

    const-wide/high16 v8, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    cmpl-double v6, v6, v8

    if-nez v6, :cond_2

    .line 843
    move-object v6, v1

    move-wide v7, v2

    invoke-virtual {v6, v7, v8}, Ljavafx/scene/control/PopupControl;->prefHeight(D)D

    move-result-wide v6

    move-wide v1, v6

    goto :goto_0

    .line 845
    :cond_2
    move-wide v6, v4

    move-wide v1, v6

    goto :goto_0
.end method

.method public final minHeightProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 9

    .prologue
    .line 487
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/control/PopupControl;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/control/PopupControl;->minHeight:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    .line 488
    move-object v2, v1

    new-instance v3, Ljavafx/scene/control/PopupControl$4;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v1

    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    invoke-direct {v4, v5, v6, v7}, Ljavafx/scene/control/PopupControl$4;-><init>(Ljavafx/scene/control/PopupControl;D)V

    iput-object v3, v2, Ljavafx/scene/control/PopupControl;->minHeight:Ljavafx/beans/property/DoubleProperty;

    .line 504
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/control/PopupControl;->minHeight:Ljavafx/beans/property/DoubleProperty;

    move-object v1, v2

    .end local v1    # "this":Ljavafx/scene/control/PopupControl;
    return-object v1
.end method

.method public final minWidth(D)D
    .locals 11

    .prologue
    .line 818
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/control/PopupControl;
    move-wide v2, p1

    .local v2, "height":D
    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/control/PopupControl;->getMinWidth()D

    move-result-wide v6

    move-wide v4, v6

    .line 819
    .local v4, "override":D
    move-wide v6, v4

    const-wide/high16 v8, -0x4010000000000000L    # -1.0

    cmpl-double v6, v6, v8

    if-nez v6, :cond_1

    .line 820
    move-object v6, v1

    iget-wide v6, v6, Ljavafx/scene/control/PopupControl;->minWidthCache:D

    const-wide/high16 v8, -0x4010000000000000L    # -1.0

    cmpl-double v6, v6, v8

    if-nez v6, :cond_0

    move-object v6, v1

    move-object v7, v1

    move-wide v8, v2

    invoke-direct {v7, v8, v9}, Ljavafx/scene/control/PopupControl;->recalculateMinWidth(D)D

    move-result-wide v7

    iput-wide v7, v6, Ljavafx/scene/control/PopupControl;->minWidthCache:D

    .line 821
    :cond_0
    move-object v6, v1

    iget-wide v6, v6, Ljavafx/scene/control/PopupControl;->minWidthCache:D

    move-wide v1, v6

    .line 825
    .end local v1    # "this":Ljavafx/scene/control/PopupControl;
    :goto_0
    return-wide v1

    .line 822
    .restart local v1    # "this":Ljavafx/scene/control/PopupControl;
    :cond_1
    move-wide v6, v4

    const-wide/high16 v8, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    cmpl-double v6, v6, v8

    if-nez v6, :cond_2

    .line 823
    move-object v6, v1

    move-wide v7, v2

    invoke-virtual {v6, v7, v8}, Ljavafx/scene/control/PopupControl;->prefWidth(D)D

    move-result-wide v6

    move-wide v1, v6

    goto :goto_0

    .line 825
    :cond_2
    move-wide v6, v4

    move-wide v1, v6

    goto :goto_0
.end method

.method public final minWidthProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 9

    .prologue
    .line 418
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/control/PopupControl;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/control/PopupControl;->minWidth:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    .line 419
    move-object v2, v1

    new-instance v3, Ljavafx/scene/control/PopupControl$3;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v1

    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    invoke-direct {v4, v5, v6, v7}, Ljavafx/scene/control/PopupControl$3;-><init>(Ljavafx/scene/control/PopupControl;D)V

    iput-object v3, v2, Ljavafx/scene/control/PopupControl;->minWidth:Ljavafx/beans/property/DoubleProperty;

    .line 435
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/control/PopupControl;->minWidth:Ljavafx/beans/property/DoubleProperty;

    move-object v1, v2

    .end local v1    # "this":Ljavafx/scene/control/PopupControl;
    return-object v1
.end method

.method public final prefHeight(D)D
    .locals 11

    .prologue
    .line 879
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/control/PopupControl;
    move-wide v2, p1

    .local v2, "width":D
    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/control/PopupControl;->getPrefHeight()D

    move-result-wide v6

    move-wide v4, v6

    .line 880
    .local v4, "override":D
    move-wide v6, v4

    const-wide/high16 v8, -0x4010000000000000L    # -1.0

    cmpl-double v6, v6, v8

    if-nez v6, :cond_1

    .line 881
    move-object v6, v1

    iget-wide v6, v6, Ljavafx/scene/control/PopupControl;->prefHeightCache:D

    const-wide/high16 v8, -0x4010000000000000L    # -1.0

    cmpl-double v6, v6, v8

    if-nez v6, :cond_0

    move-object v6, v1

    move-object v7, v1

    move-wide v8, v2

    invoke-direct {v7, v8, v9}, Ljavafx/scene/control/PopupControl;->recalculatePrefHeight(D)D

    move-result-wide v7

    iput-wide v7, v6, Ljavafx/scene/control/PopupControl;->prefHeightCache:D

    .line 882
    :cond_0
    move-object v6, v1

    iget-wide v6, v6, Ljavafx/scene/control/PopupControl;->prefHeightCache:D

    move-wide v1, v6

    .line 886
    .end local v1    # "this":Ljavafx/scene/control/PopupControl;
    :goto_0
    return-wide v1

    .line 883
    .restart local v1    # "this":Ljavafx/scene/control/PopupControl;
    :cond_1
    move-wide v6, v4

    const-wide/high16 v8, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    cmpl-double v6, v6, v8

    if-nez v6, :cond_2

    .line 884
    move-object v6, v1

    move-wide v7, v2

    invoke-virtual {v6, v7, v8}, Ljavafx/scene/control/PopupControl;->prefHeight(D)D

    move-result-wide v6

    move-wide v1, v6

    goto :goto_0

    .line 886
    :cond_2
    move-wide v6, v4

    move-wide v1, v6

    goto :goto_0
.end method

.method public final prefHeightProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 9

    .prologue
    .line 611
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/control/PopupControl;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/control/PopupControl;->prefHeight:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    .line 612
    move-object v2, v1

    new-instance v3, Ljavafx/scene/control/PopupControl$6;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v1

    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    invoke-direct {v4, v5, v6, v7}, Ljavafx/scene/control/PopupControl$6;-><init>(Ljavafx/scene/control/PopupControl;D)V

    iput-object v3, v2, Ljavafx/scene/control/PopupControl;->prefHeight:Ljavafx/beans/property/DoubleProperty;

    .line 628
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/control/PopupControl;->prefHeight:Ljavafx/beans/property/DoubleProperty;

    move-object v1, v2

    .end local v1    # "this":Ljavafx/scene/control/PopupControl;
    return-object v1
.end method

.method public final prefWidth(D)D
    .locals 11

    .prologue
    .line 859
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/control/PopupControl;
    move-wide v2, p1

    .local v2, "height":D
    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/control/PopupControl;->getPrefWidth()D

    move-result-wide v6

    move-wide v4, v6

    .line 860
    .local v4, "override":D
    move-wide v6, v4

    const-wide/high16 v8, -0x4010000000000000L    # -1.0

    cmpl-double v6, v6, v8

    if-nez v6, :cond_1

    .line 861
    move-object v6, v1

    iget-wide v6, v6, Ljavafx/scene/control/PopupControl;->prefWidthCache:D

    const-wide/high16 v8, -0x4010000000000000L    # -1.0

    cmpl-double v6, v6, v8

    if-nez v6, :cond_0

    move-object v6, v1

    move-object v7, v1

    move-wide v8, v2

    invoke-direct {v7, v8, v9}, Ljavafx/scene/control/PopupControl;->recalculatePrefWidth(D)D

    move-result-wide v7

    iput-wide v7, v6, Ljavafx/scene/control/PopupControl;->prefWidthCache:D

    .line 862
    :cond_0
    move-object v6, v1

    iget-wide v6, v6, Ljavafx/scene/control/PopupControl;->prefWidthCache:D

    move-wide v1, v6

    .line 866
    .end local v1    # "this":Ljavafx/scene/control/PopupControl;
    :goto_0
    return-wide v1

    .line 863
    .restart local v1    # "this":Ljavafx/scene/control/PopupControl;
    :cond_1
    move-wide v6, v4

    const-wide/high16 v8, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    cmpl-double v6, v6, v8

    if-nez v6, :cond_2

    .line 864
    move-object v6, v1

    move-wide v7, v2

    invoke-virtual {v6, v7, v8}, Ljavafx/scene/control/PopupControl;->prefWidth(D)D

    move-result-wide v6

    move-wide v1, v6

    goto :goto_0

    .line 866
    :cond_2
    move-wide v6, v4

    move-wide v1, v6

    goto :goto_0
.end method

.method public final prefWidthProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 9

    .prologue
    .line 555
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/control/PopupControl;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/control/PopupControl;->prefWidth:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    .line 556
    move-object v2, v1

    new-instance v3, Ljavafx/scene/control/PopupControl$5;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v1

    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    invoke-direct {v4, v5, v6, v7}, Ljavafx/scene/control/PopupControl$5;-><init>(Ljavafx/scene/control/PopupControl;D)V

    iput-object v3, v2, Ljavafx/scene/control/PopupControl;->prefWidth:Ljavafx/beans/property/DoubleProperty;

    .line 572
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/control/PopupControl;->prefWidth:Ljavafx/beans/property/DoubleProperty;

    move-object v1, v2

    .end local v1    # "this":Ljavafx/scene/control/PopupControl;
    return-object v1
.end method

.method public final pseudoClassStateChanged(Ljavafx/css/PseudoClass;Z)V
    .locals 6

    .prologue
    .line 1037
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/PopupControl;
    move-object v1, p1

    .local v1, "pseudoClass":Ljavafx/css/PseudoClass;
    move v2, p2

    .local v2, "active":Z
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/control/PopupControl;->bridge:Ljavafx/scene/control/PopupControl$CSSBridge;

    move-object v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/control/PopupControl$CSSBridge;->pseudoClassStateChanged(Ljavafx/css/PseudoClass;Z)V

    .line 1038
    return-void
.end method

.method public final setId(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 145
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/PopupControl;
    move-object v1, p1

    .local v1, "value":Ljava/lang/String;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/PopupControl;->idProperty()Ljavafx/beans/property/StringProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/StringProperty;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public final setMaxHeight(D)V
    .locals 7

    .prologue
    .line 741
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/PopupControl;
    move-wide v1, p1

    .local v1, "value":D
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/PopupControl;->maxHeightProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v3

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    return-void
.end method

.method public setMaxSize(DD)V
    .locals 9

    .prologue
    .line 790
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/PopupControl;
    move-wide v1, p1

    .local v1, "maxWidth":D
    move-wide v3, p3

    .local v3, "maxHeight":D
    move-object v5, v0

    move-wide v6, v1

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/control/PopupControl;->setMaxWidth(D)V

    .line 791
    move-object v5, v0

    move-wide v6, v3

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/control/PopupControl;->setMaxHeight(D)V

    .line 792
    return-void
.end method

.method public final setMaxWidth(D)V
    .locals 7

    .prologue
    .line 674
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/PopupControl;
    move-wide v1, p1

    .local v1, "value":D
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/PopupControl;->maxWidthProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v3

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    return-void
.end method

.method public final setMinHeight(D)V
    .locals 7

    .prologue
    .line 469
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/PopupControl;
    move-wide v1, p1

    .local v1, "value":D
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/PopupControl;->minHeightProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v3

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    return-void
.end method

.method public setMinSize(DD)V
    .locals 9

    .prologue
    .line 518
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/PopupControl;
    move-wide v1, p1

    .local v1, "minWidth":D
    move-wide v3, p3

    .local v3, "minHeight":D
    move-object v5, v0

    move-wide v6, v1

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/control/PopupControl;->setMinWidth(D)V

    .line 519
    move-object v5, v0

    move-wide v6, v3

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/control/PopupControl;->setMinHeight(D)V

    .line 520
    return-void
.end method

.method public final setMinWidth(D)V
    .locals 7

    .prologue
    .line 401
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/PopupControl;
    move-wide v1, p1

    .local v1, "value":D
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/PopupControl;->minWidthProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v3

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    return-void
.end method

.method public final setPrefHeight(D)V
    .locals 7

    .prologue
    .line 597
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/PopupControl;
    move-wide v1, p1

    .local v1, "value":D
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/PopupControl;->prefHeightProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v3

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    return-void
.end method

.method public setPrefSize(DD)V
    .locals 9

    .prologue
    .line 642
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/PopupControl;
    move-wide v1, p1

    .local v1, "prefWidth":D
    move-wide v3, p3

    .local v3, "prefHeight":D
    move-object v5, v0

    move-wide v6, v1

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/control/PopupControl;->setPrefWidth(D)V

    .line 643
    move-object v5, v0

    move-wide v6, v3

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/control/PopupControl;->setPrefHeight(D)V

    .line 644
    return-void
.end method

.method public final setPrefWidth(D)V
    .locals 7

    .prologue
    .line 542
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/PopupControl;
    move-wide v1, p1

    .local v1, "value":D
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/PopupControl;->prefWidthProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v3

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/beans/property/DoubleProperty;->set(D)V

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
    .line 209
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/PopupControl;
    move-object v1, p1

    .local v1, "value":Ljavafx/scene/control/Skin;, "Ljavafx/scene/control/Skin<*>;"
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/PopupControl;->skinProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->setValue(Ljava/lang/Object;)V

    .line 210
    return-void
.end method

.method public final setStyle(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 176
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/PopupControl;
    move-object v1, p1

    .local v1, "value":Ljava/lang/String;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/PopupControl;->styleProperty()Ljavafx/beans/property/StringProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/StringProperty;->set(Ljava/lang/Object;)V

    return-void
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
    .line 205
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/PopupControl;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/PopupControl;->skin:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/PopupControl;
    return-object v0
.end method

.method public final styleProperty()Ljavafx/beans/property/StringProperty;
    .locals 2

    .prologue
    .line 191
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/PopupControl;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/PopupControl;->bridge:Ljavafx/scene/control/PopupControl$CSSBridge;

    invoke-virtual {v1}, Ljavafx/scene/control/PopupControl$CSSBridge;->styleProperty()Ljavafx/beans/property/StringProperty;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/PopupControl;
    return-object v0
.end method
