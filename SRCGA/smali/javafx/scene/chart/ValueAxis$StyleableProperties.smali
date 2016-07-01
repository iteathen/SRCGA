.class Ljavafx/scene/chart/ValueAxis$StyleableProperties;
.super Ljava/lang/Object;
.source "ValueAxis.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/chart/ValueAxis;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StyleableProperties"
.end annotation


# static fields
.field private static final MINOR_TICK_COUNT:Ljavafx/css/CssMetaData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/css/CssMetaData",
            "<",
            "Ljavafx/scene/chart/ValueAxis",
            "<+",
            "Ljava/lang/Number;",
            ">;",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation
.end field

.field private static final MINOR_TICK_LENGTH:Ljavafx/css/CssMetaData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/css/CssMetaData",
            "<",
            "Ljavafx/scene/chart/ValueAxis",
            "<+",
            "Ljava/lang/Number;",
            ">;",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation
.end field

.field private static final MINOR_TICK_VISIBLE:Ljavafx/css/CssMetaData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/css/CssMetaData",
            "<",
            "Ljavafx/scene/chart/ValueAxis",
            "<+",
            "Ljava/lang/Number;",
            ">;",
            "Ljava/lang/Boolean;",
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
    .line 523
    new-instance v2, Ljavafx/scene/chart/ValueAxis$StyleableProperties$1;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    const-string v4, "-fx-minor-tick-length"

    .line 525
    invoke-static {}, Lcom/sun/javafx/css/converters/SizeConverter;->getInstance()Ljavafx/css/StyleConverter;

    move-result-object v5

    const-wide/high16 v6, 0x4014000000000000L    # 5.0

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6}, Ljavafx/scene/chart/ValueAxis$StyleableProperties$1;-><init>(Ljava/lang/String;Ljavafx/css/StyleConverter;Ljava/lang/Number;)V

    sput-object v2, Ljavafx/scene/chart/ValueAxis$StyleableProperties;->MINOR_TICK_LENGTH:Ljavafx/css/CssMetaData;

    .line 538
    new-instance v2, Ljavafx/scene/chart/ValueAxis$StyleableProperties$2;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    const-string v4, "-fx-minor-tick-count"

    .line 540
    invoke-static {}, Lcom/sun/javafx/css/converters/SizeConverter;->getInstance()Ljavafx/css/StyleConverter;

    move-result-object v5

    const/4 v6, 0x5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6}, Ljavafx/scene/chart/ValueAxis$StyleableProperties$2;-><init>(Ljava/lang/String;Ljavafx/css/StyleConverter;Ljava/lang/Number;)V

    sput-object v2, Ljavafx/scene/chart/ValueAxis$StyleableProperties;->MINOR_TICK_COUNT:Ljavafx/css/CssMetaData;

    .line 553
    new-instance v2, Ljavafx/scene/chart/ValueAxis$StyleableProperties$3;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    const-string v4, "-fx-minor-tick-visible"

    .line 555
    invoke-static {}, Lcom/sun/javafx/css/converters/BooleanConverter;->getInstance()Ljavafx/css/StyleConverter;

    move-result-object v5

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {v3, v4, v5, v6}, Ljavafx/scene/chart/ValueAxis$StyleableProperties$3;-><init>(Ljava/lang/String;Ljavafx/css/StyleConverter;Ljava/lang/Boolean;)V

    sput-object v2, Ljavafx/scene/chart/ValueAxis$StyleableProperties;->MINOR_TICK_VISIBLE:Ljavafx/css/CssMetaData;

    .line 570
    new-instance v2, Ljava/util/ArrayList;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    .line 571
    invoke-static {}, Ljavafx/scene/chart/Axis;->getClassCssMetaData()Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v1, v2

    .line 572
    .local v1, "styleables":Ljava/util/List;, "Ljava/util/List<Ljavafx/css/CssMetaData<+Ljavafx/css/Styleable;*>;>;"
    move-object v2, v1

    sget-object v3, Ljavafx/scene/chart/ValueAxis$StyleableProperties;->MINOR_TICK_COUNT:Ljavafx/css/CssMetaData;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 573
    move-object v2, v1

    sget-object v3, Ljavafx/scene/chart/ValueAxis$StyleableProperties;->MINOR_TICK_LENGTH:Ljavafx/css/CssMetaData;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 574
    move-object v2, v1

    sget-object v3, Ljavafx/scene/chart/ValueAxis$StyleableProperties;->MINOR_TICK_COUNT:Ljavafx/css/CssMetaData;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 575
    move-object v2, v1

    sget-object v3, Ljavafx/scene/chart/ValueAxis$StyleableProperties;->MINOR_TICK_VISIBLE:Ljavafx/css/CssMetaData;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 576
    move-object v2, v1

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    sput-object v2, Ljavafx/scene/chart/ValueAxis$StyleableProperties;->STYLEABLES:Ljava/util/List;

    .line 577
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 522
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/ValueAxis$StyleableProperties;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Ljavafx/css/CssMetaData;
    .locals 1

    .prologue
    .line 522
    sget-object v0, Ljavafx/scene/chart/ValueAxis$StyleableProperties;->MINOR_TICK_VISIBLE:Ljavafx/css/CssMetaData;

    return-object v0
.end method

.method static synthetic access$200()Ljavafx/css/CssMetaData;
    .locals 1

    .prologue
    .line 522
    sget-object v0, Ljavafx/scene/chart/ValueAxis$StyleableProperties;->MINOR_TICK_LENGTH:Ljavafx/css/CssMetaData;

    return-object v0
.end method

.method static synthetic access$300()Ljavafx/css/CssMetaData;
    .locals 1

    .prologue
    .line 522
    sget-object v0, Ljavafx/scene/chart/ValueAxis$StyleableProperties;->MINOR_TICK_COUNT:Ljavafx/css/CssMetaData;

    return-object v0
.end method

.method static synthetic access$700()Ljava/util/List;
    .locals 1

    .prologue
    .line 522
    sget-object v0, Ljavafx/scene/chart/ValueAxis$StyleableProperties;->STYLEABLES:Ljava/util/List;

    return-object v0
.end method
