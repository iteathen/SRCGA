.class Ljavafx/scene/control/Pagination$StyleableProperties;
.super Ljava/lang/Object;
.source "Pagination.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/control/Pagination;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StyleableProperties"
.end annotation


# static fields
.field private static final MAX_PAGE_INDICATOR_COUNT:Ljavafx/css/CssMetaData;
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
    .locals 7

    .prologue
    .line 338
    new-instance v1, Ljavafx/scene/control/Pagination$StyleableProperties$1;

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    const-string v3, "-fx-max-page-indicator-count"

    .line 340
    invoke-static {}, Lcom/sun/javafx/css/converters/SizeConverter;->getInstance()Ljavafx/css/StyleConverter;

    move-result-object v4

    const/16 v5, 0xa

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Ljavafx/scene/control/Pagination$StyleableProperties$1;-><init>(Ljava/lang/String;Ljavafx/css/StyleConverter;Ljava/lang/Number;)V

    sput-object v1, Ljavafx/scene/control/Pagination$StyleableProperties;->MAX_PAGE_INDICATOR_COUNT:Ljavafx/css/CssMetaData;

    .line 354
    new-instance v1, Ljava/util/ArrayList;

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    .line 355
    invoke-static {}, Ljavafx/scene/control/Control;->getClassCssMetaData()Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v0, v1

    .line 356
    .local v0, "styleables":Ljava/util/List;, "Ljava/util/List<Ljavafx/css/CssMetaData<+Ljavafx/css/Styleable;*>;>;"
    move-object v1, v0

    sget-object v2, Ljavafx/scene/control/Pagination$StyleableProperties;->MAX_PAGE_INDICATOR_COUNT:Ljavafx/css/CssMetaData;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v1

    .line 357
    move-object v1, v0

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    sput-object v1, Ljavafx/scene/control/Pagination$StyleableProperties;->STYLEABLES:Ljava/util/List;

    .line 358
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 337
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Pagination$StyleableProperties;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$200()Ljavafx/css/CssMetaData;
    .locals 1

    .prologue
    .line 337
    sget-object v0, Ljavafx/scene/control/Pagination$StyleableProperties;->MAX_PAGE_INDICATOR_COUNT:Ljavafx/css/CssMetaData;

    return-object v0
.end method

.method static synthetic access$600()Ljava/util/List;
    .locals 1

    .prologue
    .line 337
    sget-object v0, Ljavafx/scene/control/Pagination$StyleableProperties;->STYLEABLES:Ljava/util/List;

    return-object v0
.end method
