.class public Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin;
.super Lcom/sun/javafx/scene/control/skin/BehaviorSkinBase;
.source "ProgressIndicatorSkin.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$IndeterminateSpinner;,
        Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$DeterminateIndicator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sun/javafx/scene/control/skin/BehaviorSkinBase",
        "<",
        "Ljavafx/scene/control/ProgressIndicator;",
        "Lcom/sun/javafx/scene/control/behavior/BehaviorBase",
        "<",
        "Ljavafx/scene/control/ProgressIndicator;",
        ">;>;"
    }
.end annotation


# static fields
.field private static final DONE:Ljava/lang/String;

.field private static final INDETERMINATE_SEGMENT_COUNT:Ljavafx/css/CssMetaData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/css/CssMetaData",
            "<",
            "Ljavafx/scene/control/ProgressIndicator;",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation
.end field

.field private static final PROGRESS_COLOR:Ljavafx/css/CssMetaData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/css/CssMetaData",
            "<",
            "Ljavafx/scene/control/ProgressIndicator;",
            "Ljavafx/scene/paint/Paint;",
            ">;"
        }
    .end annotation
.end field

.field private static final SPIN_ENABLED:Ljavafx/css/CssMetaData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/css/CssMetaData",
            "<",
            "Ljavafx/scene/control/ProgressIndicator;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final STYLEABLES:Ljava/util/List;
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

.field private static final doneText:Ljavafx/scene/text/Text;


# instance fields
.field protected final CLIPPED_DELAY:Ljavafx/util/Duration;

.field protected final UNCLIPPED_DELAY:Ljavafx/util/Duration;

.field private control:Ljavafx/scene/control/ProgressIndicator;

.field private determinateIndicator:Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$DeterminateIndicator;

.field private indeterminateSegmentCount:Ljavafx/beans/property/IntegerProperty;

.field protected indeterminateTransition:Ljavafx/animation/Animation;

.field private progressColor:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/scene/paint/Paint;",
            ">;"
        }
    .end annotation
.end field

.field private final spinEnabled:Ljavafx/beans/property/BooleanProperty;

.field private spinner:Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$IndeterminateSpinner;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    .line 162
    const-string v1, "ProgressIndicator.doneString"

    invoke-static {v1}, Lcom/sun/javafx/scene/control/skin/resources/ControlResources;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin;->DONE:Ljava/lang/String;

    .line 165
    new-instance v1, Ljavafx/scene/text/Text;

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    sget-object v3, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin;->DONE:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljavafx/scene/text/Text;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin;->doneText:Ljavafx/scene/text/Text;

    .line 167
    sget-object v1, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin;->doneText:Ljavafx/scene/text/Text;

    invoke-virtual {v1}, Ljavafx/scene/text/Text;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v1

    const-string v2, "text"

    invoke-interface {v1, v2}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v1

    .line 714
    new-instance v1, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$4;

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    const-string v3, "-fx-progress-color"

    .line 716
    invoke-static {}, Lcom/sun/javafx/css/converters/PaintConverter;->getInstance()Ljavafx/css/StyleConverter;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$4;-><init>(Ljava/lang/String;Ljavafx/css/StyleConverter;Ljavafx/scene/paint/Paint;)V

    sput-object v1, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin;->PROGRESS_COLOR:Ljavafx/css/CssMetaData;

    .line 731
    new-instance v1, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$5;

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    const-string v3, "-fx-indeterminate-segment-count"

    .line 733
    invoke-static {}, Lcom/sun/javafx/css/converters/SizeConverter;->getInstance()Ljavafx/css/StyleConverter;

    move-result-object v4

    const/16 v5, 0x8

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$5;-><init>(Ljava/lang/String;Ljavafx/css/StyleConverter;Ljava/lang/Number;)V

    sput-object v1, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin;->INDETERMINATE_SEGMENT_COUNT:Ljavafx/css/CssMetaData;

    .line 746
    new-instance v1, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$6;

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    const-string v3, "-fx-spin-enabled"

    .line 747
    invoke-static {}, Lcom/sun/javafx/css/converters/BooleanConverter;->getInstance()Ljavafx/css/StyleConverter;

    move-result-object v4

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v2, v3, v4, v5}, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$6;-><init>(Ljava/lang/String;Ljavafx/css/StyleConverter;Ljava/lang/Boolean;)V

    sput-object v1, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin;->SPIN_ENABLED:Ljavafx/css/CssMetaData;

    .line 762
    new-instance v1, Ljava/util/ArrayList;

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    .line 763
    invoke-static {}, Ljavafx/scene/control/SkinBase;->getClassCssMetaData()Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v0, v1

    .line 764
    .local v0, "styleables":Ljava/util/List;, "Ljava/util/List<Ljavafx/css/CssMetaData<+Ljavafx/css/Styleable;*>;>;"
    move-object v1, v0

    sget-object v2, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin;->PROGRESS_COLOR:Ljavafx/css/CssMetaData;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v1

    .line 765
    move-object v1, v0

    sget-object v2, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin;->INDETERMINATE_SEGMENT_COUNT:Ljavafx/css/CssMetaData;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v1

    .line 766
    move-object v1, v0

    sget-object v2, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin;->SPIN_ENABLED:Ljavafx/css/CssMetaData;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v1

    .line 767
    move-object v1, v0

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    sput-object v1, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin;->STYLEABLES:Ljava/util/List;

    .line 768
    return-void
.end method

.method public constructor <init>(Ljavafx/scene/control/ProgressIndicator;)V
    .locals 10

    .prologue
    .line 185
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin;
    move-object v2, p1

    .local v2, "control":Ljavafx/scene/control/ProgressIndicator;
    move-object v3, v1

    move-object v4, v2

    new-instance v5, Lcom/sun/javafx/scene/control/behavior/BehaviorBase;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v2

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lcom/sun/javafx/scene/control/behavior/BehaviorBase;-><init>(Ljavafx/scene/control/Control;Ljava/util/List;)V

    invoke-direct {v3, v4, v5}, Lcom/sun/javafx/scene/control/skin/BehaviorSkinBase;-><init>(Ljavafx/scene/control/Control;Lcom/sun/javafx/scene/control/behavior/BehaviorBase;)V

    .line 81
    move-object v3, v1

    new-instance v4, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$1;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v6, v1

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$1;-><init>(Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin;Ljavafx/scene/paint/Paint;)V

    iput-object v4, v3, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin;->progressColor:Ljavafx/beans/property/ObjectProperty;

    .line 115
    move-object v3, v1

    new-instance v4, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$2;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v6, v1

    const/16 v7, 0x8

    invoke-direct {v5, v6, v7}, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$2;-><init>(Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin;I)V

    iput-object v4, v3, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin;->indeterminateSegmentCount:Ljavafx/beans/property/IntegerProperty;

    .line 136
    move-object v3, v1

    new-instance v4, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$3;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v6, v1

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$3;-><init>(Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin;Z)V

    iput-object v4, v3, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin;->spinEnabled:Ljavafx/beans/property/BooleanProperty;

    .line 544
    move-object v3, v1

    new-instance v4, Ljavafx/util/Duration;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    const-wide v6, 0x4072c00000000000L    # 300.0

    invoke-direct {v5, v6, v7}, Ljavafx/util/Duration;-><init>(D)V

    iput-object v4, v3, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin;->CLIPPED_DELAY:Ljavafx/util/Duration;

    .line 545
    move-object v3, v1

    new-instance v4, Ljavafx/util/Duration;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    const-wide/16 v6, 0x0

    invoke-direct {v5, v6, v7}, Ljavafx/util/Duration;-><init>(D)V

    iput-object v4, v3, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin;->UNCLIPPED_DELAY:Ljavafx/util/Duration;

    .line 187
    move-object v3, v1

    move-object v4, v2

    iput-object v4, v3, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin;->control:Ljavafx/scene/control/ProgressIndicator;

    .line 190
    move-object v3, v1

    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/scene/control/ProgressIndicator;->indeterminateProperty()Ljavafx/beans/property/ReadOnlyBooleanProperty;

    move-result-object v4

    const-string v5, "INDETERMINATE"

    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin;->registerChangeListener(Ljavafx/beans/value/ObservableValue;Ljava/lang/String;)V

    .line 191
    move-object v3, v1

    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/scene/control/ProgressIndicator;->progressProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v4

    const-string v5, "PROGRESS"

    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin;->registerChangeListener(Ljavafx/beans/value/ObservableValue;Ljava/lang/String;)V

    .line 192
    move-object v3, v1

    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/scene/control/ProgressIndicator;->visibleProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v4

    const-string v5, "VISIBLE"

    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin;->registerChangeListener(Ljavafx/beans/value/ObservableValue;Ljava/lang/String;)V

    .line 193
    move-object v3, v1

    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/scene/control/ProgressIndicator;->parentProperty()Ljavafx/beans/property/ReadOnlyObjectProperty;

    move-result-object v4

    const-string v5, "PARENT"

    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin;->registerChangeListener(Ljavafx/beans/value/ObservableValue;Ljava/lang/String;)V

    .line 194
    move-object v3, v1

    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/scene/control/ProgressIndicator;->sceneProperty()Ljavafx/beans/property/ReadOnlyObjectProperty;

    move-result-object v4

    const-string v5, "SCENE"

    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin;->registerChangeListener(Ljavafx/beans/value/ObservableValue;Ljava/lang/String;)V

    .line 196
    move-object v3, v1

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin;->initialize()V

    .line 197
    return-void
.end method

.method static synthetic access$000(Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin;)Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$IndeterminateSpinner;
    .locals 2

    .prologue
    .line 70
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin;->spinner:Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$IndeterminateSpinner;

    move-object v0, v1

    .end local v0    # "x0":Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin;
    return-object v0
.end method

.method static synthetic access$100(Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin;)Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$DeterminateIndicator;
    .locals 2

    .prologue
    .line 70
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin;->determinateIndicator:Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$DeterminateIndicator;

    move-object v0, v1

    .end local v0    # "x0":Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin;
    return-object v0
.end method

.method static synthetic access$1000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    sget-object v0, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin;->DONE:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100()Ljavafx/scene/text/Text;
    .locals 1

    .prologue
    .line 70
    sget-object v0, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin;->doneText:Ljavafx/scene/text/Text;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin;)Ljavafx/scene/control/ProgressIndicator;
    .locals 2

    .prologue
    .line 70
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin;->control:Ljavafx/scene/control/ProgressIndicator;

    move-object v0, v1

    .end local v0    # "x0":Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin;
    return-object v0
.end method

.method static synthetic access$1400(Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin;)Ljavafx/beans/property/IntegerProperty;
    .locals 2

    .prologue
    .line 70
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin;->indeterminateSegmentCount:Ljavafx/beans/property/IntegerProperty;

    move-object v0, v1

    .end local v0    # "x0":Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin;
    return-object v0
.end method

.method static synthetic access$1500(Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin;)Ljavafx/beans/property/ObjectProperty;
    .locals 2

    .prologue
    .line 70
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin;->progressColor:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "x0":Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin;
    return-object v0
.end method

.method static synthetic access$1600(Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin;)Ljavafx/beans/property/BooleanProperty;
    .locals 2

    .prologue
    .line 70
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin;->spinEnabled:Ljavafx/beans/property/BooleanProperty;

    move-object v0, v1

    .end local v0    # "x0":Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin;
    return-object v0
.end method

.method static synthetic access$300()Ljavafx/css/CssMetaData;
    .locals 1

    .prologue
    .line 70
    sget-object v0, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin;->PROGRESS_COLOR:Ljavafx/css/CssMetaData;

    return-object v0
.end method

.method static synthetic access$500()Ljavafx/css/CssMetaData;
    .locals 1

    .prologue
    .line 70
    sget-object v0, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin;->INDETERMINATE_SEGMENT_COUNT:Ljavafx/css/CssMetaData;

    return-object v0
.end method

.method static synthetic access$600()Ljavafx/css/CssMetaData;
    .locals 1

    .prologue
    .line 70
    sget-object v0, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin;->SPIN_ENABLED:Ljavafx/css/CssMetaData;

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
    .line 775
    sget-object v0, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin;->STYLEABLES:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method protected createIndeterminateTimeline()V
    .locals 2

    .prologue
    .line 273
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin;->spinner:Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$IndeterminateSpinner;

    if-eqz v1, :cond_0

    .line 274
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin;->spinner:Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$IndeterminateSpinner;

    invoke-static {v1}, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$IndeterminateSpinner;->access$900(Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$IndeterminateSpinner;)V

    .line 276
    :cond_0
    return-void
.end method

.method public dispose()V
    .locals 3

    .prologue
    .line 252
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin;
    move-object v1, v0

    invoke-super {v1}, Lcom/sun/javafx/scene/control/skin/BehaviorSkinBase;->dispose()V

    .line 254
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin;->indeterminateTransition:Ljavafx/animation/Animation;

    if-eqz v1, :cond_0

    .line 255
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin;->indeterminateTransition:Ljavafx/animation/Animation;

    invoke-virtual {v1}, Ljavafx/animation/Animation;->stop()V

    .line 256
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin;->indeterminateTransition:Ljavafx/animation/Animation;

    .line 259
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin;->spinner:Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$IndeterminateSpinner;

    if-eqz v1, :cond_1

    .line 260
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin;->spinner:Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$IndeterminateSpinner;

    .line 263
    :cond_1
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin;->control:Ljavafx/scene/control/ProgressIndicator;

    .line 264
    return-void
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
    .line 783
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin;
    invoke-static {}, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin;->getClassCssMetaData()Ljava/util/List;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin;
    return-object v0
.end method

.method getProgressColor()Ljavafx/scene/paint/Paint;
    .locals 2

    .prologue
    .line 109
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin;->progressColor:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/scene/paint/Paint;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin;
    return-object v0
.end method

.method protected handleControlPropertyChanged(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 207
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin;
    move-object v1, p1

    .local v1, "p":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Lcom/sun/javafx/scene/control/skin/BehaviorSkinBase;->handleControlPropertyChanged(Ljava/lang/String;)V

    .line 209
    const-string v2, "INDETERMINATE"

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 210
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin;->initialize()V

    .line 220
    :cond_0
    :goto_0
    return-void

    .line 211
    :cond_1
    const-string v2, "PROGRESS"

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 212
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin;->updateProgress()V

    goto :goto_0

    .line 213
    :cond_2
    const-string v2, "VISIBLE"

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 214
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin;->updateAnimation()V

    goto :goto_0

    .line 215
    :cond_3
    const-string v2, "PARENT"

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 216
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin;->updateAnimation()V

    goto :goto_0

    .line 217
    :cond_4
    const-string v2, "SCENE"

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 218
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin;->updateAnimation()V

    goto :goto_0
.end method

.method protected initialize()V
    .locals 10

    .prologue
    .line 223
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin;->control:Ljavafx/scene/control/ProgressIndicator;

    invoke-virtual {v2}, Ljavafx/scene/control/ProgressIndicator;->isIndeterminate()Z

    move-result v2

    move v1, v2

    .line 224
    .local v1, "isIndeterminate":Z
    move v2, v1

    if-eqz v2, :cond_1

    .line 226
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin;->determinateIndicator:Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$DeterminateIndicator;

    .line 229
    move-object v2, v0

    new-instance v3, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$IndeterminateSpinner;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    move-object v5, v0

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin;->spinEnabled:Ljavafx/beans/property/BooleanProperty;

    invoke-virtual {v6}, Ljavafx/beans/property/BooleanProperty;->get()Z

    move-result v6

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin;->progressColor:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v7}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljavafx/scene/paint/Paint;

    const/4 v8, 0x0

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$IndeterminateSpinner;-><init>(Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin;ZLjavafx/scene/paint/Paint;Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$1;)V

    iput-object v3, v2, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin;->spinner:Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$IndeterminateSpinner;

    .line 230
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljavafx/scene/Node;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    const/4 v5, 0x0

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin;->spinner:Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$IndeterminateSpinner;

    aput-object v6, v4, v5

    invoke-interface {v2, v3}, Ljavafx/collections/ObservableList;->setAll([Ljava/lang/Object;)Z

    move-result v2

    .line 231
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin;->control:Ljavafx/scene/control/ProgressIndicator;

    invoke-virtual {v2}, Ljavafx/scene/control/ProgressIndicator;->impl_isTreeVisible()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 232
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin;->indeterminateTransition:Ljavafx/animation/Animation;

    if-eqz v2, :cond_0

    .line 233
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin;->indeterminateTransition:Ljavafx/animation/Animation;

    invoke-virtual {v2}, Ljavafx/animation/Animation;->play()V

    .line 249
    :cond_0
    :goto_0
    return-void

    .line 238
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin;->spinner:Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$IndeterminateSpinner;

    if-eqz v2, :cond_3

    .line 239
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin;->indeterminateTransition:Ljavafx/animation/Animation;

    if-eqz v2, :cond_2

    .line 240
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin;->indeterminateTransition:Ljavafx/animation/Animation;

    invoke-virtual {v2}, Ljavafx/animation/Animation;->stop()V

    .line 242
    :cond_2
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin;->spinner:Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$IndeterminateSpinner;

    .line 246
    :cond_3
    move-object v2, v0

    new-instance v3, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$DeterminateIndicator;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    move-object v5, v0

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin;->control:Ljavafx/scene/control/ProgressIndicator;

    move-object v7, v0

    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin;->progressColor:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v8}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljavafx/scene/paint/Paint;

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$DeterminateIndicator;-><init>(Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin;Ljavafx/scene/control/ProgressIndicator;Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin;Ljavafx/scene/paint/Paint;)V

    iput-object v3, v2, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin;->determinateIndicator:Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$DeterminateIndicator;

    .line 247
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljavafx/scene/Node;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    const/4 v5, 0x0

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin;->determinateIndicator:Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$DeterminateIndicator;

    aput-object v6, v4, v5

    invoke-interface {v2, v3}, Ljavafx/collections/ObservableList;->setAll([Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0
.end method

.method protected layoutChildren(DDDD)V
    .locals 19

    .prologue
    .line 322
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin;
    move-wide/from16 v1, p1

    .local v1, "x":D
    move-wide/from16 v3, p3

    .local v3, "y":D
    move-wide/from16 v5, p5

    .local v5, "w":D
    move-wide/from16 v7, p7

    .local v7, "h":D
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin;->spinner:Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$IndeterminateSpinner;

    if-eqz v9, :cond_1

    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin;->control:Ljavafx/scene/control/ProgressIndicator;

    invoke-virtual {v9}, Ljavafx/scene/control/ProgressIndicator;->isIndeterminate()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 323
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin;->spinner:Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$IndeterminateSpinner;

    invoke-virtual {v9}, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$IndeterminateSpinner;->layoutChildren()V

    .line 324
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin;->spinner:Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$IndeterminateSpinner;

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    move-wide v14, v5

    move-wide/from16 v16, v7

    invoke-virtual/range {v9 .. v17}, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$IndeterminateSpinner;->resizeRelocate(DDDD)V

    .line 329
    :cond_0
    :goto_0
    return-void

    .line 325
    :cond_1
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin;->determinateIndicator:Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$DeterminateIndicator;

    if-eqz v9, :cond_0

    .line 326
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin;->determinateIndicator:Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$DeterminateIndicator;

    invoke-virtual {v9}, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$DeterminateIndicator;->layoutChildren()V

    .line 327
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin;->determinateIndicator:Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$DeterminateIndicator;

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    move-wide v14, v5

    move-wide/from16 v16, v7

    invoke-virtual/range {v9 .. v17}, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$DeterminateIndicator;->resizeRelocate(DDDD)V

    goto :goto_0
.end method

.method protected pauseTimeline(Z)V
    .locals 3

    .prologue
    .line 279
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin;
    move v1, p1

    .local v1, "pause":Z
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v2

    check-cast v2, Ljavafx/scene/control/ProgressIndicator;

    invoke-virtual {v2}, Ljavafx/scene/control/ProgressIndicator;->isIndeterminate()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 280
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin;->indeterminateTransition:Ljavafx/animation/Animation;

    if-nez v2, :cond_0

    .line 281
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin;->createIndeterminateTimeline()V

    .line 283
    :cond_0
    move v2, v1

    if-eqz v2, :cond_2

    .line 284
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin;->indeterminateTransition:Ljavafx/animation/Animation;

    invoke-virtual {v2}, Ljavafx/animation/Animation;->pause()V

    .line 289
    :cond_1
    :goto_0
    return-void

    .line 286
    :cond_2
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin;->indeterminateTransition:Ljavafx/animation/Animation;

    invoke-virtual {v2}, Ljavafx/animation/Animation;->play()V

    goto :goto_0
.end method

.method protected updateAnimation()V
    .locals 5

    .prologue
    .line 292
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin;
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v3

    check-cast v3, Ljavafx/scene/control/ProgressIndicator;

    move-object v1, v3

    .line 293
    .local v1, "control":Ljavafx/scene/control/ProgressIndicator;
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/control/ProgressIndicator;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v3, v1

    .line 294
    invoke-virtual {v3}, Ljavafx/scene/control/ProgressIndicator;->getParent()Ljavafx/scene/Parent;

    move-result-object v3

    if-eqz v3, :cond_1

    move-object v3, v1

    .line 295
    invoke-virtual {v3}, Ljavafx/scene/control/ProgressIndicator;->getScene()Ljavafx/scene/Scene;

    move-result-object v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    :goto_0
    move v2, v3

    .line 296
    .local v2, "isTreeVisible":Z
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin;->indeterminateTransition:Ljavafx/animation/Animation;

    if-eqz v3, :cond_3

    .line 297
    move-object v3, v0

    move v4, v2

    if-nez v4, :cond_2

    const/4 v4, 0x1

    :goto_1
    invoke-virtual {v3, v4}, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin;->pauseTimeline(Z)V

    .line 301
    :cond_0
    :goto_2
    return-void

    .line 295
    .end local v2    # "isTreeVisible":Z
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 297
    .restart local v2    # "isTreeVisible":Z
    :cond_2
    const/4 v4, 0x0

    goto :goto_1

    .line 298
    :cond_3
    move v3, v2

    if-eqz v3, :cond_0

    .line 299
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin;->createIndeterminateTimeline()V

    goto :goto_2
.end method

.method protected updateProgress()V
    .locals 4

    .prologue
    .line 267
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin;->determinateIndicator:Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$DeterminateIndicator;

    if-eqz v1, :cond_0

    .line 268
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin;->determinateIndicator:Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$DeterminateIndicator;

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin;->control:Ljavafx/scene/control/ProgressIndicator;

    invoke-virtual {v2}, Ljavafx/scene/control/ProgressIndicator;->getProgress()D

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$DeterminateIndicator;->access$800(Lcom/sun/javafx/scene/control/skin/ProgressIndicatorSkin$DeterminateIndicator;D)V

    .line 270
    :cond_0
    return-void
.end method
