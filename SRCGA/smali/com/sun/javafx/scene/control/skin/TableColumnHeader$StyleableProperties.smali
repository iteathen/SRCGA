.class Lcom/sun/javafx/scene/control/skin/TableColumnHeader$StyleableProperties;
.super Ljava/lang/Object;
.source "TableColumnHeader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/scene/control/skin/TableColumnHeader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StyleableProperties"
.end annotation


# static fields
.field private static final SIZE:Ljavafx/css/CssMetaData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/css/CssMetaData",
            "<",
            "Lcom/sun/javafx/scene/control/skin/TableColumnHeader;",
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
    .line 988
    new-instance v2, Lcom/sun/javafx/scene/control/skin/TableColumnHeader$StyleableProperties$1;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    const-string v4, "-fx-size"

    .line 990
    invoke-static {}, Lcom/sun/javafx/css/converters/SizeConverter;->getInstance()Ljavafx/css/StyleConverter;

    move-result-object v5

    const-wide/high16 v6, 0x4034000000000000L    # 20.0

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6}, Lcom/sun/javafx/scene/control/skin/TableColumnHeader$StyleableProperties$1;-><init>(Ljava/lang/String;Ljavafx/css/StyleConverter;Ljava/lang/Number;)V

    sput-object v2, Lcom/sun/javafx/scene/control/skin/TableColumnHeader$StyleableProperties;->SIZE:Ljavafx/css/CssMetaData;

    .line 1006
    new-instance v2, Ljava/util/ArrayList;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    .line 1007
    invoke-static {}, Ljavafx/scene/layout/Region;->getClassCssMetaData()Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v1, v2

    .line 1008
    .local v1, "styleables":Ljava/util/List;, "Ljava/util/List<Ljavafx/css/CssMetaData<+Ljavafx/css/Styleable;*>;>;"
    move-object v2, v1

    sget-object v3, Lcom/sun/javafx/scene/control/skin/TableColumnHeader$StyleableProperties;->SIZE:Ljavafx/css/CssMetaData;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 1009
    move-object v2, v1

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    sput-object v2, Lcom/sun/javafx/scene/control/skin/TableColumnHeader$StyleableProperties;->STYLEABLES:Ljava/util/List;

    .line 1011
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 987
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TableColumnHeader$StyleableProperties;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljavafx/css/CssMetaData;
    .locals 1

    .prologue
    .line 987
    sget-object v0, Lcom/sun/javafx/scene/control/skin/TableColumnHeader$StyleableProperties;->SIZE:Ljavafx/css/CssMetaData;

    return-object v0
.end method

.method static synthetic access$300()Ljava/util/List;
    .locals 1

    .prologue
    .line 987
    sget-object v0, Lcom/sun/javafx/scene/control/skin/TableColumnHeader$StyleableProperties;->STYLEABLES:Ljava/util/List;

    return-object v0
.end method
