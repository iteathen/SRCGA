.class public Ljavafx/scene/control/ScrollPane;
.super Ljavafx/scene/control/Control;
.source "ScrollPane.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavafx/scene/control/ScrollPane$ScrollBarPolicy;,
        Ljavafx/scene/control/ScrollPane$StyleableProperties;
    }
.end annotation

.annotation runtime Ljavafx/beans/DefaultProperty;
    value = "content"
.end annotation


# static fields
.field private static final DEFAULT_STYLE_CLASS:Ljava/lang/String; = "scroll-pane"

.field private static final FIT_TO_HEIGHT_PSEUDOCLASS_STATE:Ljavafx/css/PseudoClass;

.field private static final FIT_TO_WIDTH_PSEUDOCLASS_STATE:Ljavafx/css/PseudoClass;

.field private static final PANNABLE_PSEUDOCLASS_STATE:Ljavafx/css/PseudoClass;


# instance fields
.field private content:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/scene/Node;",
            ">;"
        }
    .end annotation
.end field

.field private fitToHeight:Ljavafx/beans/property/BooleanProperty;

.field private fitToWidth:Ljavafx/beans/property/BooleanProperty;

.field private hbarPolicy:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/scene/control/ScrollPane$ScrollBarPolicy;",
            ">;"
        }
    .end annotation
.end field

.field private hmax:Ljavafx/beans/property/DoubleProperty;

.field private hmin:Ljavafx/beans/property/DoubleProperty;

.field private hvalue:Ljavafx/beans/property/DoubleProperty;

.field private minViewportHeight:Ljavafx/beans/property/DoubleProperty;

.field private minViewportWidth:Ljavafx/beans/property/DoubleProperty;

.field private pannable:Ljavafx/beans/property/BooleanProperty;

.field private prefViewportHeight:Ljavafx/beans/property/DoubleProperty;

.field private prefViewportWidth:Ljavafx/beans/property/DoubleProperty;

.field private vbarPolicy:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/scene/control/ScrollPane$ScrollBarPolicy;",
            ">;"
        }
    .end annotation
.end field

.field private viewportBounds:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/geometry/Bounds;",
            ">;"
        }
    .end annotation
.end field

.field private vmax:Ljavafx/beans/property/DoubleProperty;

.field private vmin:Ljavafx/beans/property/DoubleProperty;

.field private vvalue:Ljavafx/beans/property/DoubleProperty;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 764
    const-string v0, "pannable"

    .line 765
    invoke-static {v0}, Ljavafx/css/PseudoClass;->getPseudoClass(Ljava/lang/String;)Ljavafx/css/PseudoClass;

    move-result-object v0

    sput-object v0, Ljavafx/scene/control/ScrollPane;->PANNABLE_PSEUDOCLASS_STATE:Ljavafx/css/PseudoClass;

    .line 766
    const-string v0, "fitToWidth"

    .line 767
    invoke-static {v0}, Ljavafx/css/PseudoClass;->getPseudoClass(Ljava/lang/String;)Ljavafx/css/PseudoClass;

    move-result-object v0

    sput-object v0, Ljavafx/scene/control/ScrollPane;->FIT_TO_WIDTH_PSEUDOCLASS_STATE:Ljavafx/css/PseudoClass;

    .line 768
    const-string v0, "fitToHeight"

    .line 769
    invoke-static {v0}, Ljavafx/css/PseudoClass;->getPseudoClass(Ljava/lang/String;)Ljavafx/css/PseudoClass;

    move-result-object v0

    sput-object v0, Ljavafx/scene/control/ScrollPane;->FIT_TO_HEIGHT_PSEUDOCLASS_STATE:Ljavafx/css/PseudoClass;

    .line 768
    return-void
.end method

.method public constructor <init>()V
    .locals 7

    .prologue
    .line 105
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ScrollPane;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/control/Control;-><init>()V

    .line 106
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/ScrollPane;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x0

    const-string v5, "scroll-pane"

    aput-object v5, v3, v4

    invoke-interface {v1, v2}, Ljavafx/collections/ObservableList;->setAll([Ljava/lang/Object;)Z

    move-result v1

    .line 107
    move-object v1, v0

    sget-object v2, Ljavafx/scene/AccessibleRole;->SCROLL_PANE:Ljavafx/scene/AccessibleRole;

    invoke-virtual {v1, v2}, Ljavafx/scene/control/ScrollPane;->setAccessibleRole(Ljavafx/scene/AccessibleRole;)V

    .line 112
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/ScrollPane;->focusTraversableProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v1

    check-cast v1, Ljavafx/css/StyleableProperty;

    const/4 v2, 0x0

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v1, v2, v3}, Ljavafx/css/StyleableProperty;->applyStyle(Ljavafx/css/StyleOrigin;Ljava/lang/Object;)V

    .line 113
    return-void
.end method

.method public constructor <init>(Ljavafx/scene/Node;)V
    .locals 4

    .prologue
    .line 121
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ScrollPane;
    move-object v1, p1

    .local v1, "content":Ljavafx/scene/Node;
    move-object v2, v0

    invoke-direct {v2}, Ljavafx/scene/control/ScrollPane;-><init>()V

    .line 122
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/scene/control/ScrollPane;->setContent(Ljavafx/scene/Node;)V

    .line 123
    return-void
.end method

.method static synthetic access$1000(Ljavafx/scene/control/ScrollPane;)Ljavafx/beans/property/BooleanProperty;
    .locals 2

    .prologue
    .line 94
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/control/ScrollPane;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/ScrollPane;->fitToWidth:Ljavafx/beans/property/BooleanProperty;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/control/ScrollPane;
    return-object v0
.end method

.method static synthetic access$1100(Ljavafx/scene/control/ScrollPane;)Ljavafx/beans/property/BooleanProperty;
    .locals 2

    .prologue
    .line 94
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/control/ScrollPane;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/ScrollPane;->fitToHeight:Ljavafx/beans/property/BooleanProperty;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/control/ScrollPane;
    return-object v0
.end method

.method static synthetic access$1200(Ljavafx/scene/control/ScrollPane;)Ljavafx/beans/property/BooleanProperty;
    .locals 2

    .prologue
    .line 94
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/control/ScrollPane;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/ScrollPane;->pannable:Ljavafx/beans/property/BooleanProperty;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/control/ScrollPane;
    return-object v0
.end method

.method static synthetic access$200()Ljavafx/css/PseudoClass;
    .locals 1

    .prologue
    .line 94
    sget-object v0, Ljavafx/scene/control/ScrollPane;->FIT_TO_WIDTH_PSEUDOCLASS_STATE:Ljavafx/css/PseudoClass;

    return-object v0
.end method

.method static synthetic access$400()Ljavafx/css/PseudoClass;
    .locals 1

    .prologue
    .line 94
    sget-object v0, Ljavafx/scene/control/ScrollPane;->FIT_TO_HEIGHT_PSEUDOCLASS_STATE:Ljavafx/css/PseudoClass;

    return-object v0
.end method

.method static synthetic access$600()Ljavafx/css/PseudoClass;
    .locals 1

    .prologue
    .line 94
    sget-object v0, Ljavafx/scene/control/ScrollPane;->PANNABLE_PSEUDOCLASS_STATE:Ljavafx/css/PseudoClass;

    return-object v0
.end method

.method static synthetic access$800(Ljavafx/scene/control/ScrollPane;)Ljavafx/beans/property/ObjectProperty;
    .locals 2

    .prologue
    .line 94
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/control/ScrollPane;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/ScrollPane;->hbarPolicy:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/control/ScrollPane;
    return-object v0
.end method

.method static synthetic access$900(Ljavafx/scene/control/ScrollPane;)Ljavafx/beans/property/ObjectProperty;
    .locals 2

    .prologue
    .line 94
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/control/ScrollPane;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/ScrollPane;->vbarPolicy:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/control/ScrollPane;
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
    .line 752
    # getter for: Ljavafx/scene/control/ScrollPane$StyleableProperties;->STYLEABLES:Ljava/util/List;
    invoke-static {}, Ljavafx/scene/control/ScrollPane$StyleableProperties;->access$1300()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final contentProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/scene/Node;",
            ">;"
        }
    .end annotation

    .prologue
    .line 212
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ScrollPane;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/ScrollPane;->content:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    .line 213
    move-object v1, v0

    new-instance v2, Ljavafx/beans/property/SimpleObjectProperty;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    const-string v5, "content"

    invoke-direct {v3, v4, v5}, Ljavafx/beans/property/SimpleObjectProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v1, Ljavafx/scene/control/ScrollPane;->content:Ljavafx/beans/property/ObjectProperty;

    .line 215
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/ScrollPane;->content:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/ScrollPane;
    return-object v0
.end method

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
    .line 635
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ScrollPane;
    new-instance v1, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/skin/ScrollPaneSkin;-><init>(Ljavafx/scene/control/ScrollPane;)V

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/ScrollPane;
    return-object v0
.end method

.method public final fitToHeightProperty()Ljavafx/beans/property/BooleanProperty;
    .locals 7

    .prologue
    .line 407
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ScrollPane;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/ScrollPane;->fitToHeight:Ljavafx/beans/property/BooleanProperty;

    if-nez v1, :cond_0

    .line 408
    move-object v1, v0

    new-instance v2, Ljavafx/scene/control/ScrollPane$4;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Ljavafx/scene/control/ScrollPane$4;-><init>(Ljavafx/scene/control/ScrollPane;Z)V

    iput-object v2, v1, Ljavafx/scene/control/ScrollPane;->fitToHeight:Ljavafx/beans/property/BooleanProperty;

    .line 429
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/ScrollPane;->fitToHeight:Ljavafx/beans/property/BooleanProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/ScrollPane;
    return-object v0
.end method

.method public final fitToWidthProperty()Ljavafx/beans/property/BooleanProperty;
    .locals 7

    .prologue
    .line 370
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ScrollPane;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/ScrollPane;->fitToWidth:Ljavafx/beans/property/BooleanProperty;

    if-nez v1, :cond_0

    .line 371
    move-object v1, v0

    new-instance v2, Ljavafx/scene/control/ScrollPane$3;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Ljavafx/scene/control/ScrollPane$3;-><init>(Ljavafx/scene/control/ScrollPane;Z)V

    iput-object v2, v1, Ljavafx/scene/control/ScrollPane;->fitToWidth:Ljavafx/beans/property/BooleanProperty;

    .line 392
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/ScrollPane;->fitToWidth:Ljavafx/beans/property/BooleanProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/ScrollPane;
    return-object v0
.end method

.method public final getContent()Ljavafx/scene/Node;
    .locals 2

    .prologue
    .line 208
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ScrollPane;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/ScrollPane;->content:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/ScrollPane;
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/control/ScrollPane;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/ScrollPane;->content:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/scene/Node;

    goto :goto_0
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
    .line 761
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ScrollPane;
    invoke-static {}, Ljavafx/scene/control/ScrollPane;->getClassCssMetaData()Ljava/util/List;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/ScrollPane;
    return-object v0
.end method

.method public final getHbarPolicy()Ljavafx/scene/control/ScrollPane$ScrollBarPolicy;
    .locals 2

    .prologue
    .line 139
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ScrollPane;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/ScrollPane;->hbarPolicy:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    sget-object v1, Ljavafx/scene/control/ScrollPane$ScrollBarPolicy;->AS_NEEDED:Ljavafx/scene/control/ScrollPane$ScrollBarPolicy;

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/ScrollPane;
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/control/ScrollPane;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/ScrollPane;->hbarPolicy:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/scene/control/ScrollPane$ScrollBarPolicy;

    goto :goto_0
.end method

.method public final getHmax()D
    .locals 4

    .prologue
    .line 328
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/control/ScrollPane;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/control/ScrollPane;->hmax:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Ljavafx/scene/control/ScrollPane;
    return-wide v1

    .restart local v1    # "this":Ljavafx/scene/control/ScrollPane;
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/control/ScrollPane;->hmax:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v2}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v2

    goto :goto_0
.end method

.method public final getHmin()D
    .locals 4

    .prologue
    .line 288
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/control/ScrollPane;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/control/ScrollPane;->hmin:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    const-wide/16 v2, 0x0

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Ljavafx/scene/control/ScrollPane;
    return-wide v1

    .restart local v1    # "this":Ljavafx/scene/control/ScrollPane;
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/control/ScrollPane;->hmin:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v2}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v2

    goto :goto_0
.end method

.method public final getHvalue()D
    .locals 4

    .prologue
    .line 238
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/control/ScrollPane;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/control/ScrollPane;->hvalue:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    const-wide/16 v2, 0x0

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Ljavafx/scene/control/ScrollPane;
    return-wide v1

    .restart local v1    # "this":Ljavafx/scene/control/ScrollPane;
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/control/ScrollPane;->hvalue:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v2}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v2

    goto :goto_0
.end method

.method public final getMinViewportHeight()D
    .locals 4

    .prologue
    .line 555
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/control/ScrollPane;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/control/ScrollPane;->minViewportHeight:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    const-wide/16 v2, 0x0

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Ljavafx/scene/control/ScrollPane;
    return-wide v1

    .restart local v1    # "this":Ljavafx/scene/control/ScrollPane;
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/control/ScrollPane;->minViewportHeight:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v2}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v2

    goto :goto_0
.end method

.method public final getMinViewportWidth()D
    .locals 4

    .prologue
    .line 531
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/control/ScrollPane;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/control/ScrollPane;->minViewportWidth:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    const-wide/16 v2, 0x0

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Ljavafx/scene/control/ScrollPane;
    return-wide v1

    .restart local v1    # "this":Ljavafx/scene/control/ScrollPane;
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/control/ScrollPane;->minViewportWidth:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v2}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v2

    goto :goto_0
.end method

.method public final getPrefViewportHeight()D
    .locals 4

    .prologue
    .line 506
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/control/ScrollPane;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/control/ScrollPane;->prefViewportHeight:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    const-wide/16 v2, 0x0

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Ljavafx/scene/control/ScrollPane;
    return-wide v1

    .restart local v1    # "this":Ljavafx/scene/control/ScrollPane;
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/control/ScrollPane;->prefViewportHeight:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v2}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v2

    goto :goto_0
.end method

.method public final getPrefViewportWidth()D
    .locals 4

    .prologue
    .line 484
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/control/ScrollPane;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/control/ScrollPane;->prefViewportWidth:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    const-wide/16 v2, 0x0

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Ljavafx/scene/control/ScrollPane;
    return-wide v1

    .restart local v1    # "this":Ljavafx/scene/control/ScrollPane;
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/control/ScrollPane;->prefViewportWidth:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v2}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v2

    goto :goto_0
.end method

.method public final getVbarPolicy()Ljavafx/scene/control/ScrollPane$ScrollBarPolicy;
    .locals 2

    .prologue
    .line 173
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ScrollPane;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/ScrollPane;->vbarPolicy:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    sget-object v1, Ljavafx/scene/control/ScrollPane$ScrollBarPolicy;->AS_NEEDED:Ljavafx/scene/control/ScrollPane$ScrollBarPolicy;

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/ScrollPane;
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/control/ScrollPane;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/ScrollPane;->vbarPolicy:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/scene/control/ScrollPane$ScrollBarPolicy;

    goto :goto_0
.end method

.method public final getViewportBounds()Ljavafx/geometry/Bounds;
    .locals 13

    .prologue
    .line 576
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/control/ScrollPane;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/control/ScrollPane;->viewportBounds:Ljavafx/beans/property/ObjectProperty;

    if-nez v2, :cond_0

    new-instance v2, Ljavafx/geometry/BoundingBox;

    move-object v12, v2

    move-object v2, v12

    move-object v3, v12

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    invoke-direct/range {v3 .. v11}, Ljavafx/geometry/BoundingBox;-><init>(DDDD)V

    :goto_0
    move-object v1, v2

    .end local v1    # "this":Ljavafx/scene/control/ScrollPane;
    return-object v1

    .restart local v1    # "this":Ljavafx/scene/control/ScrollPane;
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/control/ScrollPane;->viewportBounds:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v2}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavafx/geometry/Bounds;

    goto :goto_0
.end method

.method public final getVmax()D
    .locals 4

    .prologue
    .line 348
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/control/ScrollPane;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/control/ScrollPane;->vmax:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Ljavafx/scene/control/ScrollPane;
    return-wide v1

    .restart local v1    # "this":Ljavafx/scene/control/ScrollPane;
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/control/ScrollPane;->vmax:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v2}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v2

    goto :goto_0
.end method

.method public final getVmin()D
    .locals 4

    .prologue
    .line 308
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/control/ScrollPane;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/control/ScrollPane;->vmin:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    const-wide/16 v2, 0x0

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Ljavafx/scene/control/ScrollPane;
    return-wide v1

    .restart local v1    # "this":Ljavafx/scene/control/ScrollPane;
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/control/ScrollPane;->vmin:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v2}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v2

    goto :goto_0
.end method

.method public final getVvalue()D
    .locals 4

    .prologue
    .line 268
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/control/ScrollPane;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/control/ScrollPane;->vvalue:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    const-wide/16 v2, 0x0

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Ljavafx/scene/control/ScrollPane;
    return-wide v1

    .restart local v1    # "this":Ljavafx/scene/control/ScrollPane;
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/control/ScrollPane;->vvalue:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v2}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v2

    goto :goto_0
.end method

.method public final hbarPolicyProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/scene/control/ScrollPane$ScrollBarPolicy;",
            ">;"
        }
    .end annotation

    .prologue
    .line 143
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ScrollPane;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/ScrollPane;->hbarPolicy:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    .line 144
    move-object v1, v0

    new-instance v2, Ljavafx/scene/control/ScrollPane$1;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    sget-object v5, Ljavafx/scene/control/ScrollPane$ScrollBarPolicy;->AS_NEEDED:Ljavafx/scene/control/ScrollPane$ScrollBarPolicy;

    invoke-direct {v3, v4, v5}, Ljavafx/scene/control/ScrollPane$1;-><init>(Ljavafx/scene/control/ScrollPane;Ljavafx/scene/control/ScrollPane$ScrollBarPolicy;)V

    iput-object v2, v1, Ljavafx/scene/control/ScrollPane;->hbarPolicy:Ljavafx/beans/property/ObjectProperty;

    .line 162
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/ScrollPane;->hbarPolicy:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/ScrollPane;
    return-object v0
.end method

.method public final hmaxProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 9

    .prologue
    .line 332
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ScrollPane;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/ScrollPane;->hmax:Ljavafx/beans/property/DoubleProperty;

    if-nez v1, :cond_0

    .line 333
    move-object v1, v0

    new-instance v2, Ljavafx/beans/property/SimpleDoubleProperty;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    move-object v4, v0

    const-string v5, "hmax"

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    invoke-direct {v3, v4, v5, v6, v7}, Ljavafx/beans/property/SimpleDoubleProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;D)V

    iput-object v2, v1, Ljavafx/scene/control/ScrollPane;->hmax:Ljavafx/beans/property/DoubleProperty;

    .line 335
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/ScrollPane;->hmax:Ljavafx/beans/property/DoubleProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/ScrollPane;
    return-object v0
.end method

.method public final hminProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 9

    .prologue
    .line 292
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ScrollPane;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/ScrollPane;->hmin:Ljavafx/beans/property/DoubleProperty;

    if-nez v1, :cond_0

    .line 293
    move-object v1, v0

    new-instance v2, Ljavafx/beans/property/SimpleDoubleProperty;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    move-object v4, v0

    const-string v5, "hmin"

    const-wide/16 v6, 0x0

    invoke-direct {v3, v4, v5, v6, v7}, Ljavafx/beans/property/SimpleDoubleProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;D)V

    iput-object v2, v1, Ljavafx/scene/control/ScrollPane;->hmin:Ljavafx/beans/property/DoubleProperty;

    .line 295
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/ScrollPane;->hmin:Ljavafx/beans/property/DoubleProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/ScrollPane;
    return-object v0
.end method

.method public final hvalueProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 7

    .prologue
    .line 242
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ScrollPane;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/ScrollPane;->hvalue:Ljavafx/beans/property/DoubleProperty;

    if-nez v1, :cond_0

    .line 243
    move-object v1, v0

    new-instance v2, Ljavafx/beans/property/SimpleDoubleProperty;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    const-string v5, "hvalue"

    invoke-direct {v3, v4, v5}, Ljavafx/beans/property/SimpleDoubleProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v1, Ljavafx/scene/control/ScrollPane;->hvalue:Ljavafx/beans/property/DoubleProperty;

    .line 245
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/ScrollPane;->hvalue:Ljavafx/beans/property/DoubleProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/ScrollPane;
    return-object v0
.end method

.method protected impl_cssGetFocusTraversableInitialValue()Ljava/lang/Boolean;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 780
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ScrollPane;
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/ScrollPane;
    return-object v0
.end method

.method public final isFitToHeight()Z
    .locals 2

    .prologue
    .line 404
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ScrollPane;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/ScrollPane;->fitToHeight:Ljavafx/beans/property/BooleanProperty;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move v0, v1

    .end local v0    # "this":Ljavafx/scene/control/ScrollPane;
    return v0

    .restart local v0    # "this":Ljavafx/scene/control/ScrollPane;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/ScrollPane;->fitToHeight:Ljavafx/beans/property/BooleanProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/BooleanProperty;->get()Z

    move-result v1

    goto :goto_0
.end method

.method public final isFitToWidth()Z
    .locals 2

    .prologue
    .line 367
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ScrollPane;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/ScrollPane;->fitToWidth:Ljavafx/beans/property/BooleanProperty;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move v0, v1

    .end local v0    # "this":Ljavafx/scene/control/ScrollPane;
    return v0

    .restart local v0    # "this":Ljavafx/scene/control/ScrollPane;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/ScrollPane;->fitToWidth:Ljavafx/beans/property/BooleanProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/BooleanProperty;->get()Z

    move-result v1

    goto :goto_0
.end method

.method public final isPannable()Z
    .locals 2

    .prologue
    .line 443
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ScrollPane;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/ScrollPane;->pannable:Ljavafx/beans/property/BooleanProperty;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move v0, v1

    .end local v0    # "this":Ljavafx/scene/control/ScrollPane;
    return v0

    .restart local v0    # "this":Ljavafx/scene/control/ScrollPane;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/ScrollPane;->pannable:Ljavafx/beans/property/BooleanProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/BooleanProperty;->get()Z

    move-result v1

    goto :goto_0
.end method

.method public final minViewportHeightProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 7

    .prologue
    .line 559
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ScrollPane;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/ScrollPane;->minViewportHeight:Ljavafx/beans/property/DoubleProperty;

    if-nez v1, :cond_0

    .line 560
    move-object v1, v0

    new-instance v2, Ljavafx/beans/property/SimpleDoubleProperty;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    const-string v5, "minViewportHeight"

    invoke-direct {v3, v4, v5}, Ljavafx/beans/property/SimpleDoubleProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v1, Ljavafx/scene/control/ScrollPane;->minViewportHeight:Ljavafx/beans/property/DoubleProperty;

    .line 562
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/ScrollPane;->minViewportHeight:Ljavafx/beans/property/DoubleProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/ScrollPane;
    return-object v0
.end method

.method public final minViewportWidthProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 7

    .prologue
    .line 535
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ScrollPane;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/ScrollPane;->minViewportWidth:Ljavafx/beans/property/DoubleProperty;

    if-nez v1, :cond_0

    .line 536
    move-object v1, v0

    new-instance v2, Ljavafx/beans/property/SimpleDoubleProperty;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    const-string v5, "minViewportWidth"

    invoke-direct {v3, v4, v5}, Ljavafx/beans/property/SimpleDoubleProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v1, Ljavafx/scene/control/ScrollPane;->minViewportWidth:Ljavafx/beans/property/DoubleProperty;

    .line 538
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/ScrollPane;->minViewportWidth:Ljavafx/beans/property/DoubleProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/ScrollPane;
    return-object v0
.end method

.method public final pannableProperty()Ljavafx/beans/property/BooleanProperty;
    .locals 7

    .prologue
    .line 446
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ScrollPane;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/ScrollPane;->pannable:Ljavafx/beans/property/BooleanProperty;

    if-nez v1, :cond_0

    .line 447
    move-object v1, v0

    new-instance v2, Ljavafx/scene/control/ScrollPane$5;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Ljavafx/scene/control/ScrollPane$5;-><init>(Ljavafx/scene/control/ScrollPane;Z)V

    iput-object v2, v1, Ljavafx/scene/control/ScrollPane;->pannable:Ljavafx/beans/property/BooleanProperty;

    .line 468
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/ScrollPane;->pannable:Ljavafx/beans/property/BooleanProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/ScrollPane;
    return-object v0
.end method

.method public final prefViewportHeightProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 7

    .prologue
    .line 510
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ScrollPane;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/ScrollPane;->prefViewportHeight:Ljavafx/beans/property/DoubleProperty;

    if-nez v1, :cond_0

    .line 511
    move-object v1, v0

    new-instance v2, Ljavafx/beans/property/SimpleDoubleProperty;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    const-string v5, "prefViewportHeight"

    invoke-direct {v3, v4, v5}, Ljavafx/beans/property/SimpleDoubleProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v1, Ljavafx/scene/control/ScrollPane;->prefViewportHeight:Ljavafx/beans/property/DoubleProperty;

    .line 513
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/ScrollPane;->prefViewportHeight:Ljavafx/beans/property/DoubleProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/ScrollPane;
    return-object v0
.end method

.method public final prefViewportWidthProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 7

    .prologue
    .line 488
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ScrollPane;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/ScrollPane;->prefViewportWidth:Ljavafx/beans/property/DoubleProperty;

    if-nez v1, :cond_0

    .line 489
    move-object v1, v0

    new-instance v2, Ljavafx/beans/property/SimpleDoubleProperty;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    const-string v5, "prefViewportWidth"

    invoke-direct {v3, v4, v5}, Ljavafx/beans/property/SimpleDoubleProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v1, Ljavafx/scene/control/ScrollPane;->prefViewportWidth:Ljavafx/beans/property/DoubleProperty;

    .line 491
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/ScrollPane;->prefViewportWidth:Ljavafx/beans/property/DoubleProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/ScrollPane;
    return-object v0
.end method

.method public varargs queryAccessibleAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .prologue
    .line 792
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ScrollPane;
    move-object v1, p1

    .local v1, "attribute":Ljavafx/scene/AccessibleAttribute;
    move-object v2, p2

    .local v2, "parameters":[Ljava/lang/Object;
    sget-object v3, Ljavafx/scene/control/ScrollPane$6;->$SwitchMap$javafx$scene$AccessibleAttribute:[I

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/AccessibleAttribute;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 794
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-super {v3, v4, v5}, Ljavafx/scene/control/Control;->queryAccessibleAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Ljavafx/scene/control/ScrollPane;
    :goto_0
    return-object v0

    .line 793
    .restart local v0    # "this":Ljavafx/scene/control/ScrollPane;
    :pswitch_0
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/ScrollPane;->getContent()Ljavafx/scene/Node;

    move-result-object v3

    move-object v0, v3

    goto :goto_0

    .line 792
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public final setContent(Ljavafx/scene/Node;)V
    .locals 4

    .prologue
    .line 204
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ScrollPane;
    move-object v1, p1

    .local v1, "value":Ljavafx/scene/Node;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/ScrollPane;->contentProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 205
    return-void
.end method

.method public final setFitToHeight(Z)V
    .locals 4

    .prologue
    .line 401
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ScrollPane;
    move v1, p1

    .local v1, "value":Z
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/ScrollPane;->fitToHeightProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v2

    move v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/BooleanProperty;->set(Z)V

    .line 402
    return-void
.end method

.method public final setFitToWidth(Z)V
    .locals 4

    .prologue
    .line 364
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ScrollPane;
    move v1, p1

    .local v1, "value":Z
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/ScrollPane;->fitToWidthProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v2

    move v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/BooleanProperty;->set(Z)V

    .line 365
    return-void
.end method

.method public final setHbarPolicy(Ljavafx/scene/control/ScrollPane$ScrollBarPolicy;)V
    .locals 4

    .prologue
    .line 135
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ScrollPane;
    move-object v1, p1

    .local v1, "value":Ljavafx/scene/control/ScrollPane$ScrollBarPolicy;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/ScrollPane;->hbarPolicyProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 136
    return-void
.end method

.method public final setHmax(D)V
    .locals 7

    .prologue
    .line 324
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ScrollPane;
    move-wide v1, p1

    .local v1, "value":D
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/ScrollPane;->hmaxProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v3

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    .line 325
    return-void
.end method

.method public final setHmin(D)V
    .locals 7

    .prologue
    .line 284
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ScrollPane;
    move-wide v1, p1

    .local v1, "value":D
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/ScrollPane;->hminProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v3

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    .line 285
    return-void
.end method

.method public final setHvalue(D)V
    .locals 7

    .prologue
    .line 234
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ScrollPane;
    move-wide v1, p1

    .local v1, "value":D
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/ScrollPane;->hvalueProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v3

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    .line 235
    return-void
.end method

.method public final setMinViewportHeight(D)V
    .locals 7

    .prologue
    .line 551
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ScrollPane;
    move-wide v1, p1

    .local v1, "value":D
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/ScrollPane;->minViewportHeightProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v3

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    .line 552
    return-void
.end method

.method public final setMinViewportWidth(D)V
    .locals 7

    .prologue
    .line 527
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ScrollPane;
    move-wide v1, p1

    .local v1, "value":D
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/ScrollPane;->minViewportWidthProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v3

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    .line 528
    return-void
.end method

.method public final setPannable(Z)V
    .locals 4

    .prologue
    .line 440
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ScrollPane;
    move v1, p1

    .local v1, "value":Z
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/ScrollPane;->pannableProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v2

    move v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/BooleanProperty;->set(Z)V

    .line 441
    return-void
.end method

.method public final setPrefViewportHeight(D)V
    .locals 7

    .prologue
    .line 502
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ScrollPane;
    move-wide v1, p1

    .local v1, "value":D
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/ScrollPane;->prefViewportHeightProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v3

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    .line 503
    return-void
.end method

.method public final setPrefViewportWidth(D)V
    .locals 7

    .prologue
    .line 480
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ScrollPane;
    move-wide v1, p1

    .local v1, "value":D
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/ScrollPane;->prefViewportWidthProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v3

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    .line 481
    return-void
.end method

.method public final setVbarPolicy(Ljavafx/scene/control/ScrollPane$ScrollBarPolicy;)V
    .locals 4

    .prologue
    .line 169
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ScrollPane;
    move-object v1, p1

    .local v1, "value":Ljavafx/scene/control/ScrollPane$ScrollBarPolicy;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/ScrollPane;->vbarPolicyProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 170
    return-void
.end method

.method public final setViewportBounds(Ljavafx/geometry/Bounds;)V
    .locals 4

    .prologue
    .line 572
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ScrollPane;
    move-object v1, p1

    .local v1, "value":Ljavafx/geometry/Bounds;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/ScrollPane;->viewportBoundsProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 573
    return-void
.end method

.method public final setVmax(D)V
    .locals 7

    .prologue
    .line 344
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ScrollPane;
    move-wide v1, p1

    .local v1, "value":D
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/ScrollPane;->vmaxProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v3

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    .line 345
    return-void
.end method

.method public final setVmin(D)V
    .locals 7

    .prologue
    .line 304
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ScrollPane;
    move-wide v1, p1

    .local v1, "value":D
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/ScrollPane;->vminProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v3

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    .line 305
    return-void
.end method

.method public final setVvalue(D)V
    .locals 7

    .prologue
    .line 264
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ScrollPane;
    move-wide v1, p1

    .local v1, "value":D
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/ScrollPane;->vvalueProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v3

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    .line 265
    return-void
.end method

.method public final vbarPolicyProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/scene/control/ScrollPane$ScrollBarPolicy;",
            ">;"
        }
    .end annotation

    .prologue
    .line 177
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ScrollPane;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/ScrollPane;->vbarPolicy:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    .line 178
    move-object v1, v0

    new-instance v2, Ljavafx/scene/control/ScrollPane$2;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    sget-object v5, Ljavafx/scene/control/ScrollPane$ScrollBarPolicy;->AS_NEEDED:Ljavafx/scene/control/ScrollPane$ScrollBarPolicy;

    invoke-direct {v3, v4, v5}, Ljavafx/scene/control/ScrollPane$2;-><init>(Ljavafx/scene/control/ScrollPane;Ljavafx/scene/control/ScrollPane$ScrollBarPolicy;)V

    iput-object v2, v1, Ljavafx/scene/control/ScrollPane;->vbarPolicy:Ljavafx/beans/property/ObjectProperty;

    .line 196
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/ScrollPane;->vbarPolicy:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/ScrollPane;
    return-object v0
.end method

.method public final viewportBoundsProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/geometry/Bounds;",
            ">;"
        }
    .end annotation

    .prologue
    .line 580
    move-object/from16 v0, p0

    .local v0, "this":Ljavafx/scene/control/ScrollPane;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/ScrollPane;->viewportBounds:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    .line 581
    move-object v1, v0

    new-instance v2, Ljavafx/beans/property/SimpleObjectProperty;

    move-object/from16 v16, v2

    move-object/from16 v2, v16

    move-object/from16 v3, v16

    move-object v4, v0

    const-string v5, "viewportBounds"

    new-instance v6, Ljavafx/geometry/BoundingBox;

    move-object/from16 v16, v6

    move-object/from16 v6, v16

    move-object/from16 v7, v16

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    const-wide/16 v14, 0x0

    invoke-direct/range {v7 .. v15}, Ljavafx/geometry/BoundingBox;-><init>(DDDD)V

    invoke-direct {v3, v4, v5, v6}, Ljavafx/beans/property/SimpleObjectProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v2, v1, Ljavafx/scene/control/ScrollPane;->viewportBounds:Ljavafx/beans/property/ObjectProperty;

    .line 583
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/ScrollPane;->viewportBounds:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/ScrollPane;
    return-object v0
.end method

.method public final vmaxProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 9

    .prologue
    .line 352
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ScrollPane;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/ScrollPane;->vmax:Ljavafx/beans/property/DoubleProperty;

    if-nez v1, :cond_0

    .line 353
    move-object v1, v0

    new-instance v2, Ljavafx/beans/property/SimpleDoubleProperty;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    move-object v4, v0

    const-string v5, "vmax"

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    invoke-direct {v3, v4, v5, v6, v7}, Ljavafx/beans/property/SimpleDoubleProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;D)V

    iput-object v2, v1, Ljavafx/scene/control/ScrollPane;->vmax:Ljavafx/beans/property/DoubleProperty;

    .line 355
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/ScrollPane;->vmax:Ljavafx/beans/property/DoubleProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/ScrollPane;
    return-object v0
.end method

.method public final vminProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 9

    .prologue
    .line 312
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ScrollPane;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/ScrollPane;->vmin:Ljavafx/beans/property/DoubleProperty;

    if-nez v1, :cond_0

    .line 313
    move-object v1, v0

    new-instance v2, Ljavafx/beans/property/SimpleDoubleProperty;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    move-object v4, v0

    const-string v5, "vmin"

    const-wide/16 v6, 0x0

    invoke-direct {v3, v4, v5, v6, v7}, Ljavafx/beans/property/SimpleDoubleProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;D)V

    iput-object v2, v1, Ljavafx/scene/control/ScrollPane;->vmin:Ljavafx/beans/property/DoubleProperty;

    .line 315
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/ScrollPane;->vmin:Ljavafx/beans/property/DoubleProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/ScrollPane;
    return-object v0
.end method

.method public final vvalueProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 7

    .prologue
    .line 272
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ScrollPane;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/ScrollPane;->vvalue:Ljavafx/beans/property/DoubleProperty;

    if-nez v1, :cond_0

    .line 273
    move-object v1, v0

    new-instance v2, Ljavafx/beans/property/SimpleDoubleProperty;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    const-string v5, "vvalue"

    invoke-direct {v3, v4, v5}, Ljavafx/beans/property/SimpleDoubleProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v1, Ljavafx/scene/control/ScrollPane;->vvalue:Ljavafx/beans/property/DoubleProperty;

    .line 275
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/ScrollPane;->vvalue:Ljavafx/beans/property/DoubleProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/ScrollPane;
    return-object v0
.end method
