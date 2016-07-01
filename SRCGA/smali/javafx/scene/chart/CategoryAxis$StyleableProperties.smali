.class Ljavafx/scene/chart/CategoryAxis$StyleableProperties;
.super Ljava/lang/Object;
.source "CategoryAxis.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/chart/CategoryAxis;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StyleableProperties"
.end annotation


# static fields
.field private static final END_MARGIN:Ljavafx/css/CssMetaData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/css/CssMetaData",
            "<",
            "Ljavafx/scene/chart/CategoryAxis;",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation
.end field

.field private static final GAP_START_AND_END:Ljavafx/css/CssMetaData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/css/CssMetaData",
            "<",
            "Ljavafx/scene/chart/CategoryAxis;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final START_MARGIN:Ljavafx/css/CssMetaData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/css/CssMetaData",
            "<",
            "Ljavafx/scene/chart/CategoryAxis;",
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
    .line 553
    new-instance v2, Ljavafx/scene/chart/CategoryAxis$StyleableProperties$1;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    const-string v4, "-fx-start-margin"

    .line 555
    invoke-static {}, Lcom/sun/javafx/css/converters/SizeConverter;->getInstance()Ljavafx/css/StyleConverter;

    move-result-object v5

    const-wide/high16 v6, 0x4014000000000000L    # 5.0

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6}, Ljavafx/scene/chart/CategoryAxis$StyleableProperties$1;-><init>(Ljava/lang/String;Ljavafx/css/StyleConverter;Ljava/lang/Number;)V

    sput-object v2, Ljavafx/scene/chart/CategoryAxis$StyleableProperties;->START_MARGIN:Ljavafx/css/CssMetaData;

    .line 568
    new-instance v2, Ljavafx/scene/chart/CategoryAxis$StyleableProperties$2;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    const-string v4, "-fx-end-margin"

    .line 570
    invoke-static {}, Lcom/sun/javafx/css/converters/SizeConverter;->getInstance()Ljavafx/css/StyleConverter;

    move-result-object v5

    const-wide/high16 v6, 0x4014000000000000L    # 5.0

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6}, Ljavafx/scene/chart/CategoryAxis$StyleableProperties$2;-><init>(Ljava/lang/String;Ljavafx/css/StyleConverter;Ljava/lang/Number;)V

    sput-object v2, Ljavafx/scene/chart/CategoryAxis$StyleableProperties;->END_MARGIN:Ljavafx/css/CssMetaData;

    .line 583
    new-instance v2, Ljavafx/scene/chart/CategoryAxis$StyleableProperties$3;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    const-string v4, "-fx-gap-start-and-end"

    .line 585
    invoke-static {}, Lcom/sun/javafx/css/converters/BooleanConverter;->getInstance()Ljavafx/css/StyleConverter;

    move-result-object v5

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {v3, v4, v5, v6}, Ljavafx/scene/chart/CategoryAxis$StyleableProperties$3;-><init>(Ljava/lang/String;Ljavafx/css/StyleConverter;Ljava/lang/Boolean;)V

    sput-object v2, Ljavafx/scene/chart/CategoryAxis$StyleableProperties;->GAP_START_AND_END:Ljavafx/css/CssMetaData;

    .line 600
    new-instance v2, Ljava/util/ArrayList;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    .line 601
    invoke-static {}, Ljavafx/scene/chart/Axis;->getClassCssMetaData()Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v1, v2

    .line 602
    .local v1, "styleables":Ljava/util/List;, "Ljava/util/List<Ljavafx/css/CssMetaData<+Ljavafx/css/Styleable;*>;>;"
    move-object v2, v1

    sget-object v3, Ljavafx/scene/chart/CategoryAxis$StyleableProperties;->START_MARGIN:Ljavafx/css/CssMetaData;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 603
    move-object v2, v1

    sget-object v3, Ljavafx/scene/chart/CategoryAxis$StyleableProperties;->END_MARGIN:Ljavafx/css/CssMetaData;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 604
    move-object v2, v1

    sget-object v3, Ljavafx/scene/chart/CategoryAxis$StyleableProperties;->GAP_START_AND_END:Ljavafx/css/CssMetaData;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 605
    move-object v2, v1

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    sput-object v2, Ljavafx/scene/chart/CategoryAxis$StyleableProperties;->STYLEABLES:Ljava/util/List;

    .line 606
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 552
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/CategoryAxis$StyleableProperties;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljavafx/css/CssMetaData;
    .locals 1

    .prologue
    .line 552
    sget-object v0, Ljavafx/scene/chart/CategoryAxis$StyleableProperties;->START_MARGIN:Ljavafx/css/CssMetaData;

    return-object v0
.end method

.method static synthetic access$100()Ljavafx/css/CssMetaData;
    .locals 1

    .prologue
    .line 552
    sget-object v0, Ljavafx/scene/chart/CategoryAxis$StyleableProperties;->END_MARGIN:Ljavafx/css/CssMetaData;

    return-object v0
.end method

.method static synthetic access$200()Ljavafx/css/CssMetaData;
    .locals 1

    .prologue
    .line 552
    sget-object v0, Ljavafx/scene/chart/CategoryAxis$StyleableProperties;->GAP_START_AND_END:Ljavafx/css/CssMetaData;

    return-object v0
.end method

.method static synthetic access$800()Ljava/util/List;
    .locals 1

    .prologue
    .line 552
    sget-object v0, Ljavafx/scene/chart/CategoryAxis$StyleableProperties;->STYLEABLES:Ljava/util/List;

    return-object v0
.end method
