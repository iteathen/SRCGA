.class Lcom/sun/javafx/scene/control/skin/PaginationSkin$StyleableProperties;
.super Ljava/lang/Object;
.source "PaginationSkin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/scene/control/skin/PaginationSkin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StyleableProperties"
.end annotation


# static fields
.field private static final ARROWS_VISIBLE:Ljavafx/css/CssMetaData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/css/CssMetaData",
            "<",
            "Ljavafx/scene/control/Pagination;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final ARROW_BUTTON_GAP:Ljavafx/css/CssMetaData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/css/CssMetaData",
            "<",
            "Ljavafx/scene/control/Pagination;",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation
.end field

.field private static final PAGE_INFORMATION_ALIGNMENT:Ljavafx/css/CssMetaData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/css/CssMetaData",
            "<",
            "Ljavafx/scene/control/Pagination;",
            "Ljavafx/geometry/Side;",
            ">;"
        }
    .end annotation
.end field

.field private static final PAGE_INFORMATION_VISIBLE:Ljavafx/css/CssMetaData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/css/CssMetaData",
            "<",
            "Ljavafx/scene/control/Pagination;",
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

.field private static final TOOLTIP_VISIBLE:Ljavafx/css/CssMetaData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/css/CssMetaData",
            "<",
            "Ljavafx/scene/control/Pagination;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    .line 1294
    new-instance v1, Lcom/sun/javafx/scene/control/skin/PaginationSkin$StyleableProperties$1;

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    const-string v3, "-fx-arrows-visible"

    .line 1296
    invoke-static {}, Lcom/sun/javafx/css/converters/BooleanConverter;->getInstance()Ljavafx/css/StyleConverter;

    move-result-object v4

    # getter for: Lcom/sun/javafx/scene/control/skin/PaginationSkin;->DEFAULT_ARROW_VISIBLE:Ljava/lang/Boolean;
    invoke-static {}, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->access$2900()Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lcom/sun/javafx/scene/control/skin/PaginationSkin$StyleableProperties$1;-><init>(Ljava/lang/String;Ljavafx/css/StyleConverter;Ljava/lang/Boolean;)V

    sput-object v1, Lcom/sun/javafx/scene/control/skin/PaginationSkin$StyleableProperties;->ARROWS_VISIBLE:Ljavafx/css/CssMetaData;

    .line 1311
    new-instance v1, Lcom/sun/javafx/scene/control/skin/PaginationSkin$StyleableProperties$2;

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    const-string v3, "-fx-page-information-visible"

    .line 1313
    invoke-static {}, Lcom/sun/javafx/css/converters/BooleanConverter;->getInstance()Ljavafx/css/StyleConverter;

    move-result-object v4

    # getter for: Lcom/sun/javafx/scene/control/skin/PaginationSkin;->DEFAULT_PAGE_INFORMATION_VISIBLE:Ljava/lang/Boolean;
    invoke-static {}, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->access$3100()Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lcom/sun/javafx/scene/control/skin/PaginationSkin$StyleableProperties$2;-><init>(Ljava/lang/String;Ljavafx/css/StyleConverter;Ljava/lang/Boolean;)V

    sput-object v1, Lcom/sun/javafx/scene/control/skin/PaginationSkin$StyleableProperties;->PAGE_INFORMATION_VISIBLE:Ljavafx/css/CssMetaData;

    .line 1328
    new-instance v1, Lcom/sun/javafx/scene/control/skin/PaginationSkin$StyleableProperties$3;

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    const-string v3, "-fx-page-information-alignment"

    new-instance v4, Lcom/sun/javafx/css/converters/EnumConverter;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    const-class v6, Ljavafx/geometry/Side;

    invoke-direct {v5, v6}, Lcom/sun/javafx/css/converters/EnumConverter;-><init>(Ljava/lang/Class;)V

    .line 1330
    # getter for: Lcom/sun/javafx/scene/control/skin/PaginationSkin;->DEFAULT_PAGE_INFORMATION_ALIGNMENT:Ljavafx/geometry/Side;
    invoke-static {}, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->access$3300()Ljavafx/geometry/Side;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lcom/sun/javafx/scene/control/skin/PaginationSkin$StyleableProperties$3;-><init>(Ljava/lang/String;Ljavafx/css/StyleConverter;Ljavafx/geometry/Side;)V

    sput-object v1, Lcom/sun/javafx/scene/control/skin/PaginationSkin$StyleableProperties;->PAGE_INFORMATION_ALIGNMENT:Ljavafx/css/CssMetaData;

    .line 1345
    new-instance v1, Lcom/sun/javafx/scene/control/skin/PaginationSkin$StyleableProperties$4;

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    const-string v3, "-fx-tooltip-visible"

    .line 1347
    invoke-static {}, Lcom/sun/javafx/css/converters/BooleanConverter;->getInstance()Ljavafx/css/StyleConverter;

    move-result-object v4

    # getter for: Lcom/sun/javafx/scene/control/skin/PaginationSkin;->DEFAULT_TOOLTIP_VISIBLE:Ljava/lang/Boolean;
    invoke-static {}, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->access$3500()Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lcom/sun/javafx/scene/control/skin/PaginationSkin$StyleableProperties$4;-><init>(Ljava/lang/String;Ljavafx/css/StyleConverter;Ljava/lang/Boolean;)V

    sput-object v1, Lcom/sun/javafx/scene/control/skin/PaginationSkin$StyleableProperties;->TOOLTIP_VISIBLE:Ljavafx/css/CssMetaData;

    .line 1361
    new-instance v1, Lcom/sun/javafx/scene/control/skin/PaginationSkin$StyleableProperties$5;

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    const-string v3, "-fx-arrow-button-gap"

    .line 1362
    invoke-static {}, Lcom/sun/javafx/css/converters/SizeConverter;->getInstance()Ljavafx/css/StyleConverter;

    move-result-object v4

    const/4 v5, 0x4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lcom/sun/javafx/scene/control/skin/PaginationSkin$StyleableProperties$5;-><init>(Ljava/lang/String;Ljavafx/css/StyleConverter;Ljava/lang/Number;)V

    sput-object v1, Lcom/sun/javafx/scene/control/skin/PaginationSkin$StyleableProperties;->ARROW_BUTTON_GAP:Ljavafx/css/CssMetaData;

    .line 1376
    new-instance v1, Ljava/util/ArrayList;

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    .line 1377
    invoke-static {}, Ljavafx/scene/control/SkinBase;->getClassCssMetaData()Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v0, v1

    .line 1378
    .local v0, "styleables":Ljava/util/List;, "Ljava/util/List<Ljavafx/css/CssMetaData<+Ljavafx/css/Styleable;*>;>;"
    move-object v1, v0

    sget-object v2, Lcom/sun/javafx/scene/control/skin/PaginationSkin$StyleableProperties;->ARROWS_VISIBLE:Ljavafx/css/CssMetaData;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v1

    .line 1379
    move-object v1, v0

    sget-object v2, Lcom/sun/javafx/scene/control/skin/PaginationSkin$StyleableProperties;->PAGE_INFORMATION_VISIBLE:Ljavafx/css/CssMetaData;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v1

    .line 1380
    move-object v1, v0

    sget-object v2, Lcom/sun/javafx/scene/control/skin/PaginationSkin$StyleableProperties;->PAGE_INFORMATION_ALIGNMENT:Ljavafx/css/CssMetaData;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v1

    .line 1381
    move-object v1, v0

    sget-object v2, Lcom/sun/javafx/scene/control/skin/PaginationSkin$StyleableProperties;->TOOLTIP_VISIBLE:Ljavafx/css/CssMetaData;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v1

    .line 1382
    move-object v1, v0

    sget-object v2, Lcom/sun/javafx/scene/control/skin/PaginationSkin$StyleableProperties;->ARROW_BUTTON_GAP:Ljavafx/css/CssMetaData;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v1

    .line 1383
    move-object v1, v0

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    sput-object v1, Lcom/sun/javafx/scene/control/skin/PaginationSkin$StyleableProperties;->STYLEABLES:Ljava/util/List;

    .line 1384
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 1293
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/PaginationSkin$StyleableProperties;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$1000()Ljavafx/css/CssMetaData;
    .locals 1

    .prologue
    .line 1293
    sget-object v0, Lcom/sun/javafx/scene/control/skin/PaginationSkin$StyleableProperties;->PAGE_INFORMATION_VISIBLE:Ljavafx/css/CssMetaData;

    return-object v0
.end method

.method static synthetic access$1100()Ljavafx/css/CssMetaData;
    .locals 1

    .prologue
    .line 1293
    sget-object v0, Lcom/sun/javafx/scene/control/skin/PaginationSkin$StyleableProperties;->PAGE_INFORMATION_ALIGNMENT:Ljavafx/css/CssMetaData;

    return-object v0
.end method

.method static synthetic access$1200()Ljavafx/css/CssMetaData;
    .locals 1

    .prologue
    .line 1293
    sget-object v0, Lcom/sun/javafx/scene/control/skin/PaginationSkin$StyleableProperties;->TOOLTIP_VISIBLE:Ljavafx/css/CssMetaData;

    return-object v0
.end method

.method static synthetic access$3800()Ljava/util/List;
    .locals 1

    .prologue
    .line 1293
    sget-object v0, Lcom/sun/javafx/scene/control/skin/PaginationSkin$StyleableProperties;->STYLEABLES:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$800()Ljavafx/css/CssMetaData;
    .locals 1

    .prologue
    .line 1293
    sget-object v0, Lcom/sun/javafx/scene/control/skin/PaginationSkin$StyleableProperties;->ARROW_BUTTON_GAP:Ljavafx/css/CssMetaData;

    return-object v0
.end method

.method static synthetic access$900()Ljavafx/css/CssMetaData;
    .locals 1

    .prologue
    .line 1293
    sget-object v0, Lcom/sun/javafx/scene/control/skin/PaginationSkin$StyleableProperties;->ARROWS_VISIBLE:Ljavafx/css/CssMetaData;

    return-object v0
.end method
