.class public final Ljavafx/scene/web/WebView;
.super Ljavafx/scene/Parent;
.source "WebView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavafx/scene/web/WebView$StyleableProperties;
    }
.end annotation


# static fields
.field private static final DEFAULT_CONTEXT_MENU_ENABLED:Z = true

.field private static final DEFAULT_FONT_SCALE:D = 1.0

.field private static final DEFAULT_FONT_SMOOTHING_TYPE:Ljavafx/scene/text/FontSmoothingType;

.field private static final DEFAULT_MAX_HEIGHT:D = 1.7976931348623157E308

.field private static final DEFAULT_MAX_WIDTH:D = 1.7976931348623157E308

.field private static final DEFAULT_MIN_HEIGHT:D = 0.0

.field private static final DEFAULT_MIN_WIDTH:D = 0.0

.field private static final DEFAULT_PREF_HEIGHT:D = 600.0

.field private static final DEFAULT_PREF_WIDTH:D = 800.0

.field private static final DEFAULT_ZOOM:D = 1.0

.field private static final WK_DND_ACTION_COPY:I = 0x1

.field private static final WK_DND_ACTION_LINK:I = 0x40000000

.field private static final WK_DND_ACTION_MOVE:I = 0x2

.field private static final WK_DND_ACTION_NONE:I

.field private static final idMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private contextMenuEnabled:Ljavafx/beans/property/BooleanProperty;

.field private final engine:Ljavafx/scene/web/WebEngine;

.field private fontScale:Ljavafx/beans/property/DoubleProperty;

.field private fontSmoothingType:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/scene/text/FontSmoothingType;",
            ">;"
        }
    .end annotation
.end field

.field private final height:Ljavafx/beans/property/ReadOnlyDoubleWrapper;

.field private maxHeight:Ljavafx/beans/property/DoubleProperty;

.field private maxWidth:Ljavafx/beans/property/DoubleProperty;

.field private minHeight:Ljavafx/beans/property/DoubleProperty;

.field private minWidth:Ljavafx/beans/property/DoubleProperty;

.field private final page:Lcom/sun/webkit/WebPage;

.field private prefHeight:Ljavafx/beans/property/DoubleProperty;

.field private prefWidth:Ljavafx/beans/property/DoubleProperty;

.field private final stagePulseListener:Lcom/sun/javafx/tk/TKPulseListener;

.field private final width:Ljavafx/beans/property/ReadOnlyDoubleWrapper;

.field private zoom:Ljavafx/beans/property/DoubleProperty;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 80
    new-instance v0, Ljava/util/HashMap;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Ljavafx/scene/web/WebView;->idMap:Ljava/util/Map;

    .line 83
    sget-object v0, Ljavafx/scene/text/FontSmoothingType;->LCD:Ljavafx/scene/text/FontSmoothingType;

    sput-object v0, Ljavafx/scene/web/WebView;->DEFAULT_FONT_SMOOTHING_TYPE:Ljavafx/scene/text/FontSmoothingType;

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    .prologue
    .line 245
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/web/WebView;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/Parent;-><init>()V

    .line 112
    move-object v1, v0

    new-instance v2, Ljavafx/beans/property/ReadOnlyDoubleWrapper;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    const-string v5, "width"

    invoke-direct {v3, v4, v5}, Ljavafx/beans/property/ReadOnlyDoubleWrapper;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v1, Ljavafx/scene/web/WebView;->width:Ljavafx/beans/property/ReadOnlyDoubleWrapper;

    .line 128
    move-object v1, v0

    new-instance v2, Ljavafx/beans/property/ReadOnlyDoubleWrapper;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    const-string v5, "height"

    invoke-direct {v3, v4, v5}, Ljavafx/beans/property/ReadOnlyDoubleWrapper;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v1, Ljavafx/scene/web/WebView;->height:Ljavafx/beans/property/ReadOnlyDoubleWrapper;

    .line 246
    move-object v1, v0

    sget-object v2, Ljavafx/geometry/NodeOrientation;->LEFT_TO_RIGHT:Ljavafx/geometry/NodeOrientation;

    invoke-virtual {v1, v2}, Ljavafx/scene/web/WebView;->setNodeOrientation(Ljavafx/geometry/NodeOrientation;)V

    .line 248
    move-object v1, v0

    new-instance v2, Ljavafx/scene/web/WebEngine;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    invoke-direct {v3}, Ljavafx/scene/web/WebEngine;-><init>()V

    iput-object v2, v1, Ljavafx/scene/web/WebView;->engine:Ljavafx/scene/web/WebEngine;

    .line 249
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/web/WebView;->engine:Ljavafx/scene/web/WebEngine;

    move-object v2, v0

    invoke-virtual {v1, v2}, Ljavafx/scene/web/WebEngine;->setView(Ljavafx/scene/web/WebView;)V

    .line 250
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/web/WebView;->engine:Ljavafx/scene/web/WebEngine;

    invoke-virtual {v2}, Ljavafx/scene/web/WebEngine;->getPage()Lcom/sun/webkit/WebPage;

    move-result-object v2

    iput-object v2, v1, Ljavafx/scene/web/WebView;->page:Lcom/sun/webkit/WebPage;

    .line 254
    move-object v1, v0

    new-instance v2, Ljavafx/scene/web/WebView$3;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/web/WebView$3;-><init>(Ljavafx/scene/web/WebView;)V

    iput-object v2, v1, Ljavafx/scene/web/WebView;->stagePulseListener:Lcom/sun/javafx/tk/TKPulseListener;

    .line 259
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/web/WebView;->focusedProperty()Ljavafx/beans/property/ReadOnlyBooleanProperty;

    move-result-object v1

    new-instance v2, Ljavafx/scene/web/WebView$4;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/web/WebView$4;-><init>(Ljavafx/scene/web/WebView;)V

    invoke-virtual {v1, v2}, Ljavafx/beans/property/ReadOnlyBooleanProperty;->addListener(Ljavafx/beans/value/ChangeListener;)V

    .line 272
    move-object v1, v0

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljavafx/scene/web/WebView;->setFocusTraversable(Z)V

    .line 273
    invoke-static {}, Lcom/sun/javafx/tk/Toolkit;->getToolkit()Lcom/sun/javafx/tk/Toolkit;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/web/WebView;->stagePulseListener:Lcom/sun/javafx/tk/TKPulseListener;

    invoke-virtual {v1, v2}, Lcom/sun/javafx/tk/Toolkit;->addStageTkPulseListener(Lcom/sun/javafx/tk/TKPulseListener;)V

    .line 276
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/web/WebView;->parentProperty()Ljavafx/beans/property/ReadOnlyObjectProperty;

    move-result-object v1

    new-instance v2, Ljavafx/scene/web/WebView$5;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/web/WebView$5;-><init>(Ljavafx/scene/web/WebView;)V

    invoke-virtual {v1, v2}, Ljavafx/beans/property/ReadOnlyObjectProperty;->addListener(Ljavafx/beans/value/ChangeListener;)V

    .line 283
    return-void
.end method

.method static synthetic access$000(Ljavafx/scene/web/WebView;)Lcom/sun/webkit/WebPage;
    .locals 2

    .prologue
    .line 78
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/web/WebView;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/web/WebView;->page:Lcom/sun/webkit/WebPage;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/web/WebView;
    return-object v0
.end method

.method static synthetic access$1200(Ljavafx/scene/web/WebView;)Ljavafx/beans/property/BooleanProperty;
    .locals 2

    .prologue
    .line 78
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/web/WebView;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/web/WebView;->contextMenuEnabled:Ljavafx/beans/property/BooleanProperty;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/web/WebView;
    return-object v0
.end method

.method static synthetic access$1300()Ljavafx/scene/text/FontSmoothingType;
    .locals 1

    .prologue
    .line 78
    sget-object v0, Ljavafx/scene/web/WebView;->DEFAULT_FONT_SMOOTHING_TYPE:Ljavafx/scene/text/FontSmoothingType;

    return-object v0
.end method

.method static synthetic access$1400(Ljavafx/scene/web/WebView;)Ljavafx/beans/property/ObjectProperty;
    .locals 2

    .prologue
    .line 78
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/web/WebView;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/web/WebView;->fontSmoothingType:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/web/WebView;
    return-object v0
.end method

.method static synthetic access$1500(Ljavafx/scene/web/WebView;)Ljavafx/beans/property/DoubleProperty;
    .locals 2

    .prologue
    .line 78
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/web/WebView;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/web/WebView;->zoom:Ljavafx/beans/property/DoubleProperty;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/web/WebView;
    return-object v0
.end method

.method static synthetic access$1600(Ljavafx/scene/web/WebView;)Ljavafx/beans/property/DoubleProperty;
    .locals 2

    .prologue
    .line 78
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/web/WebView;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/web/WebView;->fontScale:Ljavafx/beans/property/DoubleProperty;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/web/WebView;
    return-object v0
.end method

.method static synthetic access$1700(Ljavafx/scene/web/WebView;)Ljavafx/beans/property/DoubleProperty;
    .locals 2

    .prologue
    .line 78
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/web/WebView;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/web/WebView;->minWidth:Ljavafx/beans/property/DoubleProperty;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/web/WebView;
    return-object v0
.end method

.method static synthetic access$1800(Ljavafx/scene/web/WebView;)Ljavafx/beans/property/DoubleProperty;
    .locals 2

    .prologue
    .line 78
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/web/WebView;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/web/WebView;->minHeight:Ljavafx/beans/property/DoubleProperty;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/web/WebView;
    return-object v0
.end method

.method static synthetic access$1900(Ljavafx/scene/web/WebView;)Ljavafx/beans/property/DoubleProperty;
    .locals 2

    .prologue
    .line 78
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/web/WebView;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/web/WebView;->maxWidth:Ljavafx/beans/property/DoubleProperty;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/web/WebView;
    return-object v0
.end method

.method static synthetic access$2000(Ljavafx/scene/web/WebView;)Ljavafx/beans/property/DoubleProperty;
    .locals 2

    .prologue
    .line 78
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/web/WebView;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/web/WebView;->maxHeight:Ljavafx/beans/property/DoubleProperty;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/web/WebView;
    return-object v0
.end method

.method static synthetic access$2100(Ljavafx/scene/web/WebView;)Ljavafx/beans/property/DoubleProperty;
    .locals 2

    .prologue
    .line 78
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/web/WebView;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/web/WebView;->prefWidth:Ljavafx/beans/property/DoubleProperty;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/web/WebView;
    return-object v0
.end method

.method static synthetic access$2200(Ljavafx/scene/web/WebView;)Ljavafx/beans/property/DoubleProperty;
    .locals 2

    .prologue
    .line 78
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/web/WebView;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/web/WebView;->prefHeight:Ljavafx/beans/property/DoubleProperty;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/web/WebView;
    return-object v0
.end method

.method static synthetic access$300(Ljavafx/scene/web/WebView;)V
    .locals 2

    .prologue
    .line 78
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/web/WebView;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/web/WebView;->handleStagePulse()V

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
    .line 922
    # getter for: Ljavafx/scene/web/WebView$StyleableProperties;->STYLEABLES:Ljava/util/List;
    invoke-static {}, Ljavafx/scene/web/WebView$StyleableProperties;->access$2300()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private static getFXDndAction(I)[Ljavafx/scene/input/TransferMode;
    .locals 5

    .prologue
    .line 1008
    move v0, p0

    .local v0, "wkDndAction":I
    new-instance v2, Ljava/util/LinkedList;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    move-object v1, v2

    .line 1009
    .local v1, "tms":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljavafx/scene/input/TransferMode;>;"
    move v2, v0

    const/4 v3, 0x1

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    .line 1010
    move-object v2, v1

    sget-object v3, Ljavafx/scene/input/TransferMode;->COPY:Ljavafx/scene/input/TransferMode;

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 1011
    :cond_0
    move v2, v0

    const/4 v3, 0x2

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_1

    .line 1012
    move-object v2, v1

    sget-object v3, Ljavafx/scene/input/TransferMode;->MOVE:Ljavafx/scene/input/TransferMode;

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 1013
    :cond_1
    move v2, v0

    const/high16 v3, 0x40000000    # 2.0f

    and-int/2addr v2, v3

    if-eqz v2, :cond_2

    .line 1014
    move-object v2, v1

    sget-object v3, Ljavafx/scene/input/TransferMode;->LINK:Ljavafx/scene/input/TransferMode;

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 1015
    :cond_2
    move-object v2, v1

    const/4 v3, 0x0

    new-array v3, v3, [Ljavafx/scene/input/TransferMode;

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljavafx/scene/input/TransferMode;

    move-object v0, v2

    .end local v0    # "wkDndAction":I
    return-object v0
.end method

.method private getNGWebView()Lcom/sun/javafx/sg/prism/NGWebView;
    .locals 2

    .prologue
    .line 1044
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/web/WebView;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/web/WebView;->impl_getPeer()Lcom/sun/javafx/sg/prism/NGNode;

    move-result-object v1

    check-cast v1, Lcom/sun/javafx/sg/prism/NGWebView;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/web/WebView;
    return-object v0
.end method

.method private static varargs getWKDndAction([Ljavafx/scene/input/TransferMode;)I
    .locals 8

    .prologue
    .line 995
    move-object v0, p0

    .local v0, "tms":[Ljavafx/scene/input/TransferMode;
    const/4 v6, 0x0

    move v1, v6

    .line 996
    .local v1, "dndActionId":I
    move-object v6, v0

    move-object v2, v6

    move-object v6, v2

    array-length v6, v6

    move v3, v6

    const/4 v6, 0x0

    move v4, v6

    :goto_0
    move v6, v4

    move v7, v3

    if-ge v6, v7, :cond_3

    move-object v6, v2

    move v7, v4

    aget-object v6, v6, v7

    move-object v5, v6

    .line 997
    .local v5, "tm":Ljavafx/scene/input/TransferMode;
    move-object v6, v5

    sget-object v7, Ljavafx/scene/input/TransferMode;->COPY:Ljavafx/scene/input/TransferMode;

    if-ne v6, v7, :cond_1

    .line 998
    move v6, v1

    const/4 v7, 0x1

    or-int/lit8 v6, v6, 0x1

    move v1, v6

    .line 996
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 999
    :cond_1
    move-object v6, v5

    sget-object v7, Ljavafx/scene/input/TransferMode;->MOVE:Ljavafx/scene/input/TransferMode;

    if-ne v6, v7, :cond_2

    .line 1000
    move v6, v1

    const/4 v7, 0x2

    or-int/lit8 v6, v6, 0x2

    move v1, v6

    goto :goto_1

    .line 1001
    :cond_2
    move-object v6, v5

    sget-object v7, Ljavafx/scene/input/TransferMode;->LINK:Ljavafx/scene/input/TransferMode;

    if-ne v6, v7, :cond_0

    .line 1002
    move v6, v1

    const/high16 v7, 0x40000000    # 2.0f

    or-int/2addr v6, v7

    move v1, v6

    goto :goto_1

    .line 1004
    .end local v5    # "tm":Ljavafx/scene/input/TransferMode;
    :cond_3
    move v6, v1

    move v0, v6

    .end local v0    # "tms":[Ljavafx/scene/input/TransferMode;
    return v0
.end method

.method private static getWKDndEventType(Ljavafx/event/EventType;)I
    .locals 4

    .prologue
    .line 982
    move-object v0, p0

    .local v0, "et":Ljavafx/event/EventType;
    const/4 v2, 0x0

    move v1, v2

    .line 983
    .local v1, "commandId":I
    move-object v2, v0

    sget-object v3, Ljavafx/scene/input/DragEvent;->DRAG_ENTERED:Ljavafx/event/EventType;

    if-ne v2, v3, :cond_1

    .line 984
    sget v2, Lcom/sun/webkit/WebPage;->DND_DST_ENTER:I

    move v1, v2

    .line 991
    :cond_0
    :goto_0
    move v2, v1

    move v0, v2

    .end local v0    # "et":Ljavafx/event/EventType;
    return v0

    .line 985
    .restart local v0    # "et":Ljavafx/event/EventType;
    :cond_1
    move-object v2, v0

    sget-object v3, Ljavafx/scene/input/DragEvent;->DRAG_EXITED:Ljavafx/event/EventType;

    if-ne v2, v3, :cond_2

    .line 986
    sget v2, Lcom/sun/webkit/WebPage;->DND_DST_EXIT:I

    move v1, v2

    goto :goto_0

    .line 987
    :cond_2
    move-object v2, v0

    sget-object v3, Ljavafx/scene/input/DragEvent;->DRAG_OVER:Ljavafx/event/EventType;

    if-ne v2, v3, :cond_3

    .line 988
    sget v2, Lcom/sun/webkit/WebPage;->DND_DST_OVER:I

    move v1, v2

    goto :goto_0

    .line 989
    :cond_3
    move-object v2, v0

    sget-object v3, Ljavafx/scene/input/DragEvent;->DRAG_DROPPED:Ljavafx/event/EventType;

    if-ne v2, v3, :cond_0

    .line 990
    sget v2, Lcom/sun/webkit/WebPage;->DND_DST_DROP:I

    move v1, v2

    goto :goto_0
.end method

.method private handleStagePulse()V
    .locals 5

    .prologue
    .line 950
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/web/WebView;
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/web/WebView;->page:Lcom/sun/webkit/WebPage;

    if-nez v3, :cond_0

    .line 973
    :goto_0
    return-void

    .line 952
    :cond_0
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/web/WebView;->impl_isTreeVisible()Z

    move-result v3

    if-eqz v3, :cond_3

    move-object v3, v0

    .line 953
    invoke-virtual {v3}, Ljavafx/scene/web/WebView;->getScene()Ljavafx/scene/Scene;

    move-result-object v3

    if-eqz v3, :cond_3

    move-object v3, v0

    .line 954
    invoke-virtual {v3}, Ljavafx/scene/web/WebView;->getScene()Ljavafx/scene/Scene;

    move-result-object v3

    invoke-virtual {v3}, Ljavafx/scene/Scene;->getWindow()Ljavafx/stage/Window;

    move-result-object v3

    if-eqz v3, :cond_3

    move-object v3, v0

    .line 955
    invoke-virtual {v3}, Ljavafx/scene/web/WebView;->getScene()Ljavafx/scene/Scene;

    move-result-object v3

    invoke-virtual {v3}, Ljavafx/scene/Scene;->getWindow()Ljavafx/stage/Window;

    move-result-object v3

    invoke-virtual {v3}, Ljavafx/stage/Window;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x1

    :goto_1
    move v1, v3

    .line 957
    .local v1, "reallyVisible":Z
    move v3, v1

    if-eqz v3, :cond_4

    .line 958
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/web/WebView;->page:Lcom/sun/webkit/WebPage;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/sun/webkit/WebPage;->setVisible(Z)V

    .line 959
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/web/WebView;->page:Lcom/sun/webkit/WebPage;

    invoke-virtual {v3}, Lcom/sun/webkit/WebPage;->isDirty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 960
    const/4 v3, 0x1

    invoke-static {v3}, Ljavafx/scene/Scene;->impl_setAllowPGAccess(Z)V

    .line 962
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/web/WebView;->impl_getPeer()Lcom/sun/javafx/sg/prism/NGNode;

    move-result-object v3

    check-cast v3, Lcom/sun/javafx/sg/prism/NGWebView;

    move-object v2, v3

    .line 963
    .local v2, "peer":Lcom/sun/javafx/sg/prism/NGWebView;
    move-object v3, v2

    invoke-virtual {v3}, Lcom/sun/javafx/sg/prism/NGWebView;->update()V

    .line 964
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/web/WebView;->page:Lcom/sun/webkit/WebPage;

    invoke-virtual {v3}, Lcom/sun/webkit/WebPage;->isRepaintPending()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 965
    move-object v3, v0

    sget-object v4, Lcom/sun/javafx/scene/DirtyBits;->WEBVIEW_VIEW:Lcom/sun/javafx/scene/DirtyBits;

    invoke-virtual {v3, v4}, Ljavafx/scene/web/WebView;->impl_markDirty(Lcom/sun/javafx/scene/DirtyBits;)V

    .line 967
    :cond_1
    const/4 v3, 0x0

    invoke-static {v3}, Ljavafx/scene/Scene;->impl_setAllowPGAccess(Z)V

    .line 968
    .line 973
    .end local v2    # "peer":Lcom/sun/javafx/sg/prism/NGWebView;
    :cond_2
    :goto_2
    goto :goto_0

    .line 955
    .end local v1    # "reallyVisible":Z
    :cond_3
    const/4 v3, 0x0

    goto :goto_1

    .line 970
    .restart local v1    # "reallyVisible":Z
    :cond_4
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/web/WebView;->page:Lcom/sun/webkit/WebPage;

    invoke-virtual {v3}, Lcom/sun/webkit/WebPage;->dropRenderFrames()V

    .line 971
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/web/WebView;->page:Lcom/sun/webkit/WebPage;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/sun/webkit/WebPage;->setVisible(Z)V

    goto :goto_2
.end method


# virtual methods
.method public final contextMenuEnabledProperty()Ljavafx/beans/property/BooleanProperty;
    .locals 7

    .prologue
    .line 723
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/web/WebView;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/web/WebView;->contextMenuEnabled:Ljavafx/beans/property/BooleanProperty;

    if-nez v1, :cond_0

    .line 724
    move-object v1, v0

    new-instance v2, Ljavafx/scene/web/WebView$13;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Ljavafx/scene/web/WebView$13;-><init>(Ljavafx/scene/web/WebView;Z)V

    iput-object v2, v1, Ljavafx/scene/web/WebView;->contextMenuEnabled:Ljavafx/beans/property/BooleanProperty;

    .line 743
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/web/WebView;->contextMenuEnabled:Ljavafx/beans/property/BooleanProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/web/WebView;
    return-object v0
.end method

.method public fontScaleProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 9

    .prologue
    .line 222
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/web/WebView;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/web/WebView;->fontScale:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    .line 223
    move-object v2, v1

    new-instance v3, Ljavafx/scene/web/WebView$2;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v1

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    invoke-direct {v4, v5, v6, v7}, Ljavafx/scene/web/WebView$2;-><init>(Ljavafx/scene/web/WebView;D)V

    iput-object v3, v2, Ljavafx/scene/web/WebView;->fontScale:Ljavafx/beans/property/DoubleProperty;

    .line 239
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/web/WebView;->fontScale:Ljavafx/beans/property/DoubleProperty;

    move-object v1, v2

    .end local v1    # "this":Ljavafx/scene/web/WebView;
    return-object v1
.end method

.method public final fontSmoothingTypeProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/scene/text/FontSmoothingType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 680
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/web/WebView;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/web/WebView;->fontSmoothingType:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    .line 681
    move-object v1, v0

    new-instance v2, Ljavafx/scene/web/WebView$12;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    sget-object v5, Ljavafx/scene/web/WebView;->DEFAULT_FONT_SMOOTHING_TYPE:Ljavafx/scene/text/FontSmoothingType;

    invoke-direct {v3, v4, v5}, Ljavafx/scene/web/WebView$12;-><init>(Ljavafx/scene/web/WebView;Ljavafx/scene/text/FontSmoothingType;)V

    iput-object v2, v1, Ljavafx/scene/web/WebView;->fontSmoothingType:Ljavafx/beans/property/ObjectProperty;

    .line 701
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/web/WebView;->fontSmoothingType:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/web/WebView;
    return-object v0
.end method

.method protected getChildren()Ljavafx/collections/ObservableList;
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
    .line 1029
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/web/WebView;
    move-object v1, v0

    invoke-super {v1}, Ljavafx/scene/Parent;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/web/WebView;
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
    .line 930
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/web/WebView;
    invoke-static {}, Ljavafx/scene/web/WebView;->getClassCssMetaData()Ljava/util/List;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/web/WebView;
    return-object v0
.end method

.method public final getEngine()Ljavafx/scene/web/WebEngine;
    .locals 2

    .prologue
    .line 109
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/web/WebView;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/web/WebView;->engine:Ljavafx/scene/web/WebEngine;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/web/WebView;
    return-object v0
.end method

.method public final getFontScale()D
    .locals 4

    .prologue
    .line 216
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/web/WebView;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/web/WebView;->fontScale:Ljavafx/beans/property/DoubleProperty;

    if-eqz v2, :cond_0

    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/web/WebView;->fontScale:Ljavafx/beans/property/DoubleProperty;

    .line 217
    invoke-virtual {v2}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v2

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Ljavafx/scene/web/WebView;
    return-wide v1

    .restart local v1    # "this":Ljavafx/scene/web/WebView;
    :cond_0
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    goto :goto_0
.end method

.method public final getFontSmoothingType()Ljavafx/scene/text/FontSmoothingType;
    .locals 2

    .prologue
    .line 674
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/web/WebView;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/web/WebView;->fontSmoothingType:Ljavafx/beans/property/ObjectProperty;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/web/WebView;->fontSmoothingType:Ljavafx/beans/property/ObjectProperty;

    .line 675
    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/scene/text/FontSmoothingType;

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/web/WebView;
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/web/WebView;
    :cond_0
    sget-object v1, Ljavafx/scene/web/WebView;->DEFAULT_FONT_SMOOTHING_TYPE:Ljavafx/scene/text/FontSmoothingType;

    goto :goto_0
.end method

.method public final getHeight()D
    .locals 3

    .prologue
    .line 134
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/web/WebView;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/web/WebView;->height:Ljavafx/beans/property/ReadOnlyDoubleWrapper;

    invoke-virtual {v1}, Ljavafx/beans/property/ReadOnlyDoubleWrapper;->get()D

    move-result-wide v1

    move-wide v0, v1

    .end local v0    # "this":Ljavafx/scene/web/WebView;
    return-wide v0
.end method

.method public final getMaxHeight()D
    .locals 4

    .prologue
    .line 642
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/web/WebView;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/web/WebView;->maxHeight:Ljavafx/beans/property/DoubleProperty;

    if-eqz v2, :cond_0

    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/web/WebView;->maxHeight:Ljavafx/beans/property/DoubleProperty;

    .line 643
    invoke-virtual {v2}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v2

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Ljavafx/scene/web/WebView;
    return-wide v1

    .restart local v1    # "this":Ljavafx/scene/web/WebView;
    :cond_0
    const-wide v2, 0x7fefffffffffffffL    # Double.MAX_VALUE

    goto :goto_0
.end method

.method public final getMaxWidth()D
    .locals 4

    .prologue
    .line 596
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/web/WebView;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/web/WebView;->maxWidth:Ljavafx/beans/property/DoubleProperty;

    if-eqz v2, :cond_0

    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/web/WebView;->maxWidth:Ljavafx/beans/property/DoubleProperty;

    .line 597
    invoke-virtual {v2}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v2

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Ljavafx/scene/web/WebView;
    return-wide v1

    .restart local v1    # "this":Ljavafx/scene/web/WebView;
    :cond_0
    const-wide v2, 0x7fefffffffffffffL    # Double.MAX_VALUE

    goto :goto_0
.end method

.method public final getMinHeight()D
    .locals 4

    .prologue
    .line 442
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/web/WebView;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/web/WebView;->minHeight:Ljavafx/beans/property/DoubleProperty;

    if-eqz v2, :cond_0

    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/web/WebView;->minHeight:Ljavafx/beans/property/DoubleProperty;

    .line 443
    invoke-virtual {v2}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v2

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Ljavafx/scene/web/WebView;
    return-wide v1

    .restart local v1    # "this":Ljavafx/scene/web/WebView;
    :cond_0
    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method public final getMinWidth()D
    .locals 4

    .prologue
    .line 396
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/web/WebView;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/web/WebView;->minWidth:Ljavafx/beans/property/DoubleProperty;

    if-eqz v2, :cond_0

    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/web/WebView;->minWidth:Ljavafx/beans/property/DoubleProperty;

    .line 397
    invoke-virtual {v2}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v2

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Ljavafx/scene/web/WebView;
    return-wide v1

    .restart local v1    # "this":Ljavafx/scene/web/WebView;
    :cond_0
    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method public final getPrefHeight()D
    .locals 4

    .prologue
    .line 542
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/web/WebView;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/web/WebView;->prefHeight:Ljavafx/beans/property/DoubleProperty;

    if-eqz v2, :cond_0

    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/web/WebView;->prefHeight:Ljavafx/beans/property/DoubleProperty;

    .line 543
    invoke-virtual {v2}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v2

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Ljavafx/scene/web/WebView;
    return-wide v1

    .restart local v1    # "this":Ljavafx/scene/web/WebView;
    :cond_0
    const-wide v2, 0x4082c00000000000L    # 600.0

    goto :goto_0
.end method

.method public final getPrefWidth()D
    .locals 4

    .prologue
    .line 496
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/web/WebView;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/web/WebView;->prefWidth:Ljavafx/beans/property/DoubleProperty;

    if-eqz v2, :cond_0

    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/web/WebView;->prefWidth:Ljavafx/beans/property/DoubleProperty;

    .line 497
    invoke-virtual {v2}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v2

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Ljavafx/scene/web/WebView;
    return-wide v1

    .restart local v1    # "this":Ljavafx/scene/web/WebView;
    :cond_0
    const-wide/high16 v2, 0x4089000000000000L    # 800.0

    goto :goto_0
.end method

.method public final getWidth()D
    .locals 3

    .prologue
    .line 118
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/web/WebView;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/web/WebView;->width:Ljavafx/beans/property/ReadOnlyDoubleWrapper;

    invoke-virtual {v1}, Ljavafx/beans/property/ReadOnlyDoubleWrapper;->get()D

    move-result-wide v1

    move-wide v0, v1

    .end local v0    # "this":Ljavafx/scene/web/WebView;
    return-wide v0
.end method

.method public final getZoom()D
    .locals 4

    .prologue
    .line 169
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/web/WebView;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/web/WebView;->zoom:Ljavafx/beans/property/DoubleProperty;

    if-eqz v2, :cond_0

    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/web/WebView;->zoom:Ljavafx/beans/property/DoubleProperty;

    .line 170
    invoke-virtual {v2}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v2

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Ljavafx/scene/web/WebView;
    return-wide v1

    .restart local v1    # "this":Ljavafx/scene/web/WebView;
    :cond_0
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    goto :goto_0
.end method

.method public heightProperty()Ljavafx/beans/property/ReadOnlyDoubleProperty;
    .locals 2

    .prologue
    .line 141
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/web/WebView;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/web/WebView;->height:Ljavafx/beans/property/ReadOnlyDoubleWrapper;

    invoke-virtual {v1}, Ljavafx/beans/property/ReadOnlyDoubleWrapper;->getReadOnlyProperty()Ljavafx/beans/property/ReadOnlyDoubleProperty;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/web/WebView;
    return-object v0
.end method

.method protected impl_computeContains(DD)Z
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1066
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/web/WebView;
    move-wide v2, p1

    .local v2, "localX":D
    move-wide v4, p3

    .local v4, "localY":D
    const/4 v6, 0x1

    move v1, v6

    .end local v1    # "this":Ljavafx/scene/web/WebView;
    return v1
.end method

.method public impl_computeGeomBounds(Lcom/sun/javafx/geom/BaseBounds;Lcom/sun/javafx/geom/transform/BaseTransform;)Lcom/sun/javafx/geom/BaseBounds;
    .locals 10
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1054
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/web/WebView;
    move-object v1, p1

    .local v1, "bounds":Lcom/sun/javafx/geom/BaseBounds;
    move-object v2, p2

    .local v2, "tx":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object v3, v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v7, v0

    invoke-virtual {v7}, Ljavafx/scene/web/WebView;->getWidth()D

    move-result-wide v7

    double-to-float v7, v7

    move-object v8, v0

    invoke-virtual {v8}, Ljavafx/scene/web/WebView;->getHeight()D

    move-result-wide v8

    double-to-float v8, v8

    const/4 v9, 0x0

    invoke-virtual/range {v3 .. v9}, Lcom/sun/javafx/geom/BaseBounds;->deriveWithNewBounds(FFFFFF)Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v3

    .line 1055
    move-object v3, v2

    move-object v4, v1

    move-object v5, v1

    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/geom/transform/BaseTransform;->transform(Lcom/sun/javafx/geom/BaseBounds;Lcom/sun/javafx/geom/BaseBounds;)Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v3

    .line 1056
    move-object v3, v1

    move-object v0, v3

    .end local v0    # "this":Ljavafx/scene/web/WebView;
    return-object v0
.end method

.method protected impl_createPeer()Lcom/sun/javafx/sg/prism/NGNode;
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1040
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/web/WebView;
    new-instance v1, Lcom/sun/javafx/sg/prism/NGWebView;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Lcom/sun/javafx/sg/prism/NGWebView;-><init>()V

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/web/WebView;
    return-object v0
.end method

.method public impl_updatePeer()V
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1075
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/web/WebView;
    move-object v2, v0

    invoke-super {v2}, Ljavafx/scene/Parent;->impl_updatePeer()V

    .line 1076
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/web/WebView;->impl_getPeer()Lcom/sun/javafx/sg/prism/NGNode;

    move-result-object v2

    check-cast v2, Lcom/sun/javafx/sg/prism/NGWebView;

    move-object v1, v2

    .line 1078
    .local v1, "peer":Lcom/sun/javafx/sg/prism/NGWebView;
    move-object v2, v0

    sget-object v3, Lcom/sun/javafx/scene/DirtyBits;->NODE_CONTENTS:Lcom/sun/javafx/scene/DirtyBits;

    invoke-virtual {v2, v3}, Ljavafx/scene/web/WebView;->impl_isDirty(Lcom/sun/javafx/scene/DirtyBits;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1079
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/web/WebView;->page:Lcom/sun/webkit/WebPage;

    invoke-virtual {v2, v3}, Lcom/sun/javafx/sg/prism/NGWebView;->setPage(Lcom/sun/webkit/WebPage;)V

    .line 1081
    :cond_0
    move-object v2, v0

    sget-object v3, Lcom/sun/javafx/scene/DirtyBits;->NODE_GEOMETRY:Lcom/sun/javafx/scene/DirtyBits;

    invoke-virtual {v2, v3}, Ljavafx/scene/web/WebView;->impl_isDirty(Lcom/sun/javafx/scene/DirtyBits;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1082
    move-object v2, v1

    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/web/WebView;->getWidth()D

    move-result-wide v3

    double-to-float v3, v3

    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/web/WebView;->getHeight()D

    move-result-wide v4

    double-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Lcom/sun/javafx/sg/prism/NGWebView;->resize(FF)V

    .line 1084
    :cond_1
    move-object v2, v0

    sget-object v3, Lcom/sun/javafx/scene/DirtyBits;->WEBVIEW_VIEW:Lcom/sun/javafx/scene/DirtyBits;

    invoke-virtual {v2, v3}, Ljavafx/scene/web/WebView;->impl_isDirty(Lcom/sun/javafx/scene/DirtyBits;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1085
    move-object v2, v1

    invoke-virtual {v2}, Lcom/sun/javafx/sg/prism/NGWebView;->requestRender()V

    .line 1087
    :cond_2
    return-void
.end method

.method public final isContextMenuEnabled()Z
    .locals 2

    .prologue
    .line 717
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/web/WebView;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/web/WebView;->contextMenuEnabled:Ljavafx/beans/property/BooleanProperty;

    if-nez v1, :cond_0

    const/4 v1, 0x1

    .line 719
    :goto_0
    move v0, v1

    .end local v0    # "this":Ljavafx/scene/web/WebView;
    return v0

    .line 717
    .restart local v0    # "this":Ljavafx/scene/web/WebView;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/web/WebView;->contextMenuEnabled:Ljavafx/beans/property/BooleanProperty;

    .line 719
    invoke-virtual {v1}, Ljavafx/beans/property/BooleanProperty;->get()Z

    move-result v1

    goto :goto_0
.end method

.method public isResizable()Z
    .locals 2

    .prologue
    .line 289
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/web/WebView;
    const/4 v1, 0x1

    move v0, v1

    .end local v0    # "this":Ljavafx/scene/web/WebView;
    return v0
.end method

.method public final maxHeight(D)D
    .locals 7

    .prologue
    .line 352
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/web/WebView;
    move-wide v2, p1

    .local v2, "width":D
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/web/WebView;->getMaxHeight()D

    move-result-wide v4

    move-wide v1, v4

    .end local v1    # "this":Ljavafx/scene/web/WebView;
    return-wide v1
.end method

.method public maxHeightProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 9

    .prologue
    .line 605
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/web/WebView;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/web/WebView;->maxHeight:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    .line 606
    move-object v2, v1

    new-instance v3, Ljavafx/scene/web/WebView$11;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v1

    const-wide v6, 0x7fefffffffffffffL    # Double.MAX_VALUE

    invoke-direct {v4, v5, v6, v7}, Ljavafx/scene/web/WebView$11;-><init>(Ljavafx/scene/web/WebView;D)V

    iput-object v3, v2, Ljavafx/scene/web/WebView;->maxHeight:Ljavafx/beans/property/DoubleProperty;

    .line 627
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/web/WebView;->maxHeight:Ljavafx/beans/property/DoubleProperty;

    move-object v1, v2

    .end local v1    # "this":Ljavafx/scene/web/WebView;
    return-object v1
.end method

.method public final maxWidth(D)D
    .locals 7

    .prologue
    .line 343
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/web/WebView;
    move-wide v2, p1

    .local v2, "height":D
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/web/WebView;->getMaxWidth()D

    move-result-wide v4

    move-wide v1, v4

    .end local v1    # "this":Ljavafx/scene/web/WebView;
    return-wide v1
.end method

.method public maxWidthProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 9

    .prologue
    .line 559
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/web/WebView;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/web/WebView;->maxWidth:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    .line 560
    move-object v2, v1

    new-instance v3, Ljavafx/scene/web/WebView$10;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v1

    const-wide v6, 0x7fefffffffffffffL    # Double.MAX_VALUE

    invoke-direct {v4, v5, v6, v7}, Ljavafx/scene/web/WebView$10;-><init>(Ljavafx/scene/web/WebView;D)V

    iput-object v3, v2, Ljavafx/scene/web/WebView;->maxWidth:Ljavafx/beans/property/DoubleProperty;

    .line 581
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/web/WebView;->maxWidth:Ljavafx/beans/property/DoubleProperty;

    move-object v1, v2

    .end local v1    # "this":Ljavafx/scene/web/WebView;
    return-object v1
.end method

.method public final minHeight(D)D
    .locals 7

    .prologue
    .line 316
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/web/WebView;
    move-wide v2, p1

    .local v2, "width":D
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/web/WebView;->getMinHeight()D

    move-result-wide v4

    move-wide v1, v4

    .end local v1    # "this":Ljavafx/scene/web/WebView;
    return-wide v1
.end method

.method public minHeightProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 9

    .prologue
    .line 405
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/web/WebView;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/web/WebView;->minHeight:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    .line 406
    move-object v2, v1

    new-instance v3, Ljavafx/scene/web/WebView$7;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v1

    const-wide/16 v6, 0x0

    invoke-direct {v4, v5, v6, v7}, Ljavafx/scene/web/WebView$7;-><init>(Ljavafx/scene/web/WebView;D)V

    iput-object v3, v2, Ljavafx/scene/web/WebView;->minHeight:Ljavafx/beans/property/DoubleProperty;

    .line 427
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/web/WebView;->minHeight:Ljavafx/beans/property/DoubleProperty;

    move-object v1, v2

    .end local v1    # "this":Ljavafx/scene/web/WebView;
    return-object v1
.end method

.method public final minWidth(D)D
    .locals 7

    .prologue
    .line 307
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/web/WebView;
    move-wide v2, p1

    .local v2, "height":D
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/web/WebView;->getMinWidth()D

    move-result-wide v4

    move-wide v1, v4

    .end local v1    # "this":Ljavafx/scene/web/WebView;
    return-wide v1
.end method

.method public minWidthProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 9

    .prologue
    .line 359
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/web/WebView;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/web/WebView;->minWidth:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    .line 360
    move-object v2, v1

    new-instance v3, Ljavafx/scene/web/WebView$6;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v1

    const-wide/16 v6, 0x0

    invoke-direct {v4, v5, v6, v7}, Ljavafx/scene/web/WebView$6;-><init>(Ljavafx/scene/web/WebView;D)V

    iput-object v3, v2, Ljavafx/scene/web/WebView;->minWidth:Ljavafx/beans/property/DoubleProperty;

    .line 381
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/web/WebView;->minWidth:Ljavafx/beans/property/DoubleProperty;

    move-object v1, v2

    .end local v1    # "this":Ljavafx/scene/web/WebView;
    return-object v1
.end method

.method public final prefHeight(D)D
    .locals 7

    .prologue
    .line 335
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/web/WebView;
    move-wide v2, p1

    .local v2, "width":D
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/web/WebView;->getPrefHeight()D

    move-result-wide v4

    move-wide v1, v4

    .end local v1    # "this":Ljavafx/scene/web/WebView;
    return-wide v1
.end method

.method public prefHeightProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 9

    .prologue
    .line 505
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/web/WebView;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/web/WebView;->prefHeight:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    .line 506
    move-object v2, v1

    new-instance v3, Ljavafx/scene/web/WebView$9;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v1

    const-wide v6, 0x4082c00000000000L    # 600.0

    invoke-direct {v4, v5, v6, v7}, Ljavafx/scene/web/WebView$9;-><init>(Ljavafx/scene/web/WebView;D)V

    iput-object v3, v2, Ljavafx/scene/web/WebView;->prefHeight:Ljavafx/beans/property/DoubleProperty;

    .line 527
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/web/WebView;->prefHeight:Ljavafx/beans/property/DoubleProperty;

    move-object v1, v2

    .end local v1    # "this":Ljavafx/scene/web/WebView;
    return-object v1
.end method

.method public final prefWidth(D)D
    .locals 7

    .prologue
    .line 326
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/web/WebView;
    move-wide v2, p1

    .local v2, "height":D
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/web/WebView;->getPrefWidth()D

    move-result-wide v4

    move-wide v1, v4

    .end local v1    # "this":Ljavafx/scene/web/WebView;
    return-wide v1
.end method

.method public prefWidthProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 9

    .prologue
    .line 459
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/web/WebView;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/web/WebView;->prefWidth:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    .line 460
    move-object v2, v1

    new-instance v3, Ljavafx/scene/web/WebView$8;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v1

    const-wide/high16 v6, 0x4089000000000000L    # 800.0

    invoke-direct {v4, v5, v6, v7}, Ljavafx/scene/web/WebView$8;-><init>(Ljavafx/scene/web/WebView;D)V

    iput-object v3, v2, Ljavafx/scene/web/WebView;->prefWidth:Ljavafx/beans/property/DoubleProperty;

    .line 481
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/web/WebView;->prefWidth:Ljavafx/beans/property/DoubleProperty;

    move-object v1, v2

    .end local v1    # "this":Ljavafx/scene/web/WebView;
    return-object v1
.end method

.method public resize(DD)V
    .locals 11

    .prologue
    .line 293
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/web/WebView;
    move-wide v2, p1

    .local v2, "width":D
    move-wide v4, p3

    .local v4, "height":D
    move-wide v6, v2

    move-object v8, v1

    iget-object v8, v8, Ljavafx/scene/web/WebView;->width:Ljavafx/beans/property/ReadOnlyDoubleWrapper;

    invoke-virtual {v8}, Ljavafx/beans/property/ReadOnlyDoubleWrapper;->get()D

    move-result-wide v8

    cmpl-double v6, v6, v8

    if-nez v6, :cond_0

    move-wide v6, v4

    move-object v8, v1

    iget-object v8, v8, Ljavafx/scene/web/WebView;->height:Ljavafx/beans/property/ReadOnlyDoubleWrapper;

    invoke-virtual {v8}, Ljavafx/beans/property/ReadOnlyDoubleWrapper;->get()D

    move-result-wide v8

    cmpl-double v6, v6, v8

    if-eqz v6, :cond_1

    .line 294
    :cond_0
    move-object v6, v1

    iget-object v6, v6, Ljavafx/scene/web/WebView;->width:Ljavafx/beans/property/ReadOnlyDoubleWrapper;

    move-wide v7, v2

    invoke-virtual {v6, v7, v8}, Ljavafx/beans/property/ReadOnlyDoubleWrapper;->set(D)V

    .line 295
    move-object v6, v1

    iget-object v6, v6, Ljavafx/scene/web/WebView;->height:Ljavafx/beans/property/ReadOnlyDoubleWrapper;

    move-wide v7, v4

    invoke-virtual {v6, v7, v8}, Ljavafx/beans/property/ReadOnlyDoubleWrapper;->set(D)V

    .line 296
    move-object v6, v1

    sget-object v7, Lcom/sun/javafx/scene/DirtyBits;->NODE_GEOMETRY:Lcom/sun/javafx/scene/DirtyBits;

    invoke-virtual {v6, v7}, Ljavafx/scene/web/WebView;->impl_markDirty(Lcom/sun/javafx/scene/DirtyBits;)V

    .line 297
    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/web/WebView;->impl_geomChanged()V

    .line 299
    :cond_1
    return-void
.end method

.method public final setContextMenuEnabled(Z)V
    .locals 4

    .prologue
    .line 713
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/web/WebView;
    move v1, p1

    .local v1, "value":Z
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/web/WebView;->contextMenuEnabledProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v2

    move v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/BooleanProperty;->set(Z)V

    .line 714
    return-void
.end method

.method public final setFontScale(D)V
    .locals 7

    .prologue
    .line 211
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/web/WebView;
    move-wide v1, p1

    .local v1, "value":D
    invoke-static {}, Ljavafx/scene/web/WebEngine;->checkThread()V

    .line 212
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/web/WebView;->fontScaleProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v3

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    .line 213
    return-void
.end method

.method public final setFontSmoothingType(Ljavafx/scene/text/FontSmoothingType;)V
    .locals 4

    .prologue
    .line 670
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/web/WebView;
    move-object v1, p1

    .local v1, "value":Ljavafx/scene/text/FontSmoothingType;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/web/WebView;->fontSmoothingTypeProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 671
    return-void
.end method

.method public final setMaxHeight(D)V
    .locals 7

    .prologue
    .line 635
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/web/WebView;
    move-wide v1, p1

    .local v1, "value":D
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/web/WebView;->maxHeightProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v3

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    .line 636
    return-void
.end method

.method public setMaxSize(DD)V
    .locals 9

    .prologue
    .line 651
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/web/WebView;
    move-wide v1, p1

    .local v1, "maxWidth":D
    move-wide v3, p3

    .local v3, "maxHeight":D
    move-object v5, v0

    move-wide v6, v1

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/web/WebView;->setMaxWidth(D)V

    .line 652
    move-object v5, v0

    move-wide v6, v3

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/web/WebView;->setMaxHeight(D)V

    .line 653
    return-void
.end method

.method public final setMaxWidth(D)V
    .locals 7

    .prologue
    .line 589
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/web/WebView;
    move-wide v1, p1

    .local v1, "value":D
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/web/WebView;->maxWidthProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v3

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    .line 590
    return-void
.end method

.method public final setMinHeight(D)V
    .locals 7

    .prologue
    .line 435
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/web/WebView;
    move-wide v1, p1

    .local v1, "value":D
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/web/WebView;->minHeightProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v3

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    .line 436
    return-void
.end method

.method public setMinSize(DD)V
    .locals 9

    .prologue
    .line 451
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/web/WebView;
    move-wide v1, p1

    .local v1, "minWidth":D
    move-wide v3, p3

    .local v3, "minHeight":D
    move-object v5, v0

    move-wide v6, v1

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/web/WebView;->setMinWidth(D)V

    .line 452
    move-object v5, v0

    move-wide v6, v3

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/web/WebView;->setMinHeight(D)V

    .line 453
    return-void
.end method

.method public final setMinWidth(D)V
    .locals 7

    .prologue
    .line 389
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/web/WebView;
    move-wide v1, p1

    .local v1, "value":D
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/web/WebView;->minWidthProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v3

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    .line 390
    return-void
.end method

.method public final setPrefHeight(D)V
    .locals 7

    .prologue
    .line 535
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/web/WebView;
    move-wide v1, p1

    .local v1, "value":D
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/web/WebView;->prefHeightProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v3

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    .line 536
    return-void
.end method

.method public setPrefSize(DD)V
    .locals 9

    .prologue
    .line 551
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/web/WebView;
    move-wide v1, p1

    .local v1, "prefWidth":D
    move-wide v3, p3

    .local v3, "prefHeight":D
    move-object v5, v0

    move-wide v6, v1

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/web/WebView;->setPrefWidth(D)V

    .line 552
    move-object v5, v0

    move-wide v6, v3

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/web/WebView;->setPrefHeight(D)V

    .line 553
    return-void
.end method

.method public final setPrefWidth(D)V
    .locals 7

    .prologue
    .line 489
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/web/WebView;
    move-wide v1, p1

    .local v1, "value":D
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/web/WebView;->prefWidthProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v3

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    .line 490
    return-void
.end method

.method public final setZoom(D)V
    .locals 7

    .prologue
    .line 158
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/web/WebView;
    move-wide v1, p1

    .local v1, "value":D
    invoke-static {}, Ljavafx/scene/web/WebEngine;->checkThread()V

    .line 159
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/web/WebView;->zoomProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v3

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    .line 160
    return-void
.end method

.method public widthProperty()Ljavafx/beans/property/ReadOnlyDoubleProperty;
    .locals 2

    .prologue
    .line 125
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/web/WebView;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/web/WebView;->width:Ljavafx/beans/property/ReadOnlyDoubleWrapper;

    invoke-virtual {v1}, Ljavafx/beans/property/ReadOnlyDoubleWrapper;->getReadOnlyProperty()Ljavafx/beans/property/ReadOnlyDoubleProperty;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/web/WebView;
    return-object v0
.end method

.method public final zoomProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 9

    .prologue
    .line 181
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/web/WebView;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/web/WebView;->zoom:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    .line 182
    move-object v2, v1

    new-instance v3, Ljavafx/scene/web/WebView$1;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v1

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    invoke-direct {v4, v5, v6, v7}, Ljavafx/scene/web/WebView$1;-><init>(Ljavafx/scene/web/WebView;D)V

    iput-object v3, v2, Ljavafx/scene/web/WebView;->zoom:Ljavafx/beans/property/DoubleProperty;

    .line 199
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/web/WebView;->zoom:Ljavafx/beans/property/DoubleProperty;

    move-object v1, v2

    .end local v1    # "this":Ljavafx/scene/web/WebView;
    return-object v1
.end method
