.class Lcom/sun/javafx/scene/control/skin/ProgressBarSkin$StyleableProperties;
.super Ljava/lang/Object;
.source "ProgressBarSkin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/scene/control/skin/ProgressBarSkin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StyleableProperties"
.end annotation


# static fields
.field private static final INDETERMINATE_BAR_ANIMATION_TIME:Ljavafx/css/CssMetaData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/css/CssMetaData",
            "<",
            "Ljavafx/scene/control/ProgressBar;",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation
.end field

.field private static final INDETERMINATE_BAR_ESCAPE:Ljavafx/css/CssMetaData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/css/CssMetaData",
            "<",
            "Ljavafx/scene/control/ProgressBar;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final INDETERMINATE_BAR_FLIP:Ljavafx/css/CssMetaData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/css/CssMetaData",
            "<",
            "Ljavafx/scene/control/ProgressBar;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final INDETERMINATE_BAR_LENGTH:Ljavafx/css/CssMetaData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/css/CssMetaData",
            "<",
            "Ljavafx/scene/control/ProgressBar;",
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


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    .line 384
    new-instance v2, Lcom/sun/javafx/scene/control/skin/ProgressBarSkin$StyleableProperties$1;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    const-string v4, "-fx-indeterminate-bar-length"

    .line 386
    invoke-static {}, Lcom/sun/javafx/css/converters/SizeConverter;->getInstance()Ljavafx/css/StyleConverter;

    move-result-object v5

    const-wide/high16 v6, 0x404e000000000000L    # 60.0

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6}, Lcom/sun/javafx/scene/control/skin/ProgressBarSkin$StyleableProperties$1;-><init>(Ljava/lang/String;Ljavafx/css/StyleConverter;Ljava/lang/Number;)V

    sput-object v2, Lcom/sun/javafx/scene/control/skin/ProgressBarSkin$StyleableProperties;->INDETERMINATE_BAR_LENGTH:Ljavafx/css/CssMetaData;

    .line 402
    new-instance v2, Lcom/sun/javafx/scene/control/skin/ProgressBarSkin$StyleableProperties$2;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    const-string v4, "-fx-indeterminate-bar-escape"

    .line 404
    invoke-static {}, Lcom/sun/javafx/css/converters/BooleanConverter;->getInstance()Ljavafx/css/StyleConverter;

    move-result-object v5

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {v3, v4, v5, v6}, Lcom/sun/javafx/scene/control/skin/ProgressBarSkin$StyleableProperties$2;-><init>(Ljava/lang/String;Ljavafx/css/StyleConverter;Ljava/lang/Boolean;)V

    sput-object v2, Lcom/sun/javafx/scene/control/skin/ProgressBarSkin$StyleableProperties;->INDETERMINATE_BAR_ESCAPE:Ljavafx/css/CssMetaData;

    .line 420
    new-instance v2, Lcom/sun/javafx/scene/control/skin/ProgressBarSkin$StyleableProperties$3;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    const-string v4, "-fx-indeterminate-bar-flip"

    .line 422
    invoke-static {}, Lcom/sun/javafx/css/converters/BooleanConverter;->getInstance()Ljavafx/css/StyleConverter;

    move-result-object v5

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {v3, v4, v5, v6}, Lcom/sun/javafx/scene/control/skin/ProgressBarSkin$StyleableProperties$3;-><init>(Ljava/lang/String;Ljavafx/css/StyleConverter;Ljava/lang/Boolean;)V

    sput-object v2, Lcom/sun/javafx/scene/control/skin/ProgressBarSkin$StyleableProperties;->INDETERMINATE_BAR_FLIP:Ljavafx/css/CssMetaData;

    .line 438
    new-instance v2, Lcom/sun/javafx/scene/control/skin/ProgressBarSkin$StyleableProperties$4;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    const-string v4, "-fx-indeterminate-bar-animation-time"

    .line 440
    invoke-static {}, Lcom/sun/javafx/css/converters/SizeConverter;->getInstance()Ljavafx/css/StyleConverter;

    move-result-object v5

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6}, Lcom/sun/javafx/scene/control/skin/ProgressBarSkin$StyleableProperties$4;-><init>(Ljava/lang/String;Ljavafx/css/StyleConverter;Ljava/lang/Number;)V

    sput-object v2, Lcom/sun/javafx/scene/control/skin/ProgressBarSkin$StyleableProperties;->INDETERMINATE_BAR_ANIMATION_TIME:Ljavafx/css/CssMetaData;

    .line 459
    new-instance v2, Ljava/util/ArrayList;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    .line 460
    invoke-static {}, Ljavafx/scene/control/SkinBase;->getClassCssMetaData()Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v1, v2

    .line 461
    .local v1, "styleables":Ljava/util/List;, "Ljava/util/List<Ljavafx/css/CssMetaData<+Ljavafx/css/Styleable;*>;>;"
    move-object v2, v1

    sget-object v3, Lcom/sun/javafx/scene/control/skin/ProgressBarSkin$StyleableProperties;->INDETERMINATE_BAR_LENGTH:Ljavafx/css/CssMetaData;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 462
    move-object v2, v1

    sget-object v3, Lcom/sun/javafx/scene/control/skin/ProgressBarSkin$StyleableProperties;->INDETERMINATE_BAR_ESCAPE:Ljavafx/css/CssMetaData;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 463
    move-object v2, v1

    sget-object v3, Lcom/sun/javafx/scene/control/skin/ProgressBarSkin$StyleableProperties;->INDETERMINATE_BAR_FLIP:Ljavafx/css/CssMetaData;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 464
    move-object v2, v1

    sget-object v3, Lcom/sun/javafx/scene/control/skin/ProgressBarSkin$StyleableProperties;->INDETERMINATE_BAR_ANIMATION_TIME:Ljavafx/css/CssMetaData;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 465
    move-object v2, v1

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    sput-object v2, Lcom/sun/javafx/scene/control/skin/ProgressBarSkin$StyleableProperties;->STYLEABLES:Ljava/util/List;

    .line 466
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 383
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ProgressBarSkin$StyleableProperties;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljavafx/css/CssMetaData;
    .locals 1

    .prologue
    .line 383
    sget-object v0, Lcom/sun/javafx/scene/control/skin/ProgressBarSkin$StyleableProperties;->INDETERMINATE_BAR_LENGTH:Ljavafx/css/CssMetaData;

    return-object v0
.end method

.method static synthetic access$100()Ljavafx/css/CssMetaData;
    .locals 1

    .prologue
    .line 383
    sget-object v0, Lcom/sun/javafx/scene/control/skin/ProgressBarSkin$StyleableProperties;->INDETERMINATE_BAR_ESCAPE:Ljavafx/css/CssMetaData;

    return-object v0
.end method

.method static synthetic access$1200()Ljava/util/List;
    .locals 1

    .prologue
    .line 383
    sget-object v0, Lcom/sun/javafx/scene/control/skin/ProgressBarSkin$StyleableProperties;->STYLEABLES:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$200()Ljavafx/css/CssMetaData;
    .locals 1

    .prologue
    .line 383
    sget-object v0, Lcom/sun/javafx/scene/control/skin/ProgressBarSkin$StyleableProperties;->INDETERMINATE_BAR_FLIP:Ljavafx/css/CssMetaData;

    return-object v0
.end method

.method static synthetic access$300()Ljavafx/css/CssMetaData;
    .locals 1

    .prologue
    .line 383
    sget-object v0, Lcom/sun/javafx/scene/control/skin/ProgressBarSkin$StyleableProperties;->INDETERMINATE_BAR_ANIMATION_TIME:Ljavafx/css/CssMetaData;

    return-object v0
.end method
