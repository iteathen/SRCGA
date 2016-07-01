.class Lcom/sun/javafx/scene/control/skin/ToolBarSkin$StyleableProperties;
.super Ljava/lang/Object;
.source "ToolBarSkin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/scene/control/skin/ToolBarSkin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StyleableProperties"
.end annotation


# static fields
.field private static final ALIGNMENT:Ljavafx/css/CssMetaData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/css/CssMetaData",
            "<",
            "Ljavafx/scene/control/ToolBar;",
            "Ljavafx/geometry/Pos;",
            ">;"
        }
    .end annotation
.end field

.field private static final SPACING:Ljavafx/css/CssMetaData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/css/CssMetaData",
            "<",
            "Ljavafx/scene/control/ToolBar;",
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
    .locals 13

    .prologue
    .line 703
    new-instance v6, Lcom/sun/javafx/scene/control/skin/ToolBarSkin$StyleableProperties$1;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    const-string v8, "-fx-spacing"

    .line 705
    invoke-static {}, Lcom/sun/javafx/css/converters/SizeConverter;->getInstance()Ljavafx/css/StyleConverter;

    move-result-object v9

    const-wide/16 v10, 0x0

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    invoke-direct {v7, v8, v9, v10}, Lcom/sun/javafx/scene/control/skin/ToolBarSkin$StyleableProperties$1;-><init>(Ljava/lang/String;Ljavafx/css/StyleConverter;Ljava/lang/Number;)V

    sput-object v6, Lcom/sun/javafx/scene/control/skin/ToolBarSkin$StyleableProperties;->SPACING:Ljavafx/css/CssMetaData;

    .line 720
    new-instance v6, Lcom/sun/javafx/scene/control/skin/ToolBarSkin$StyleableProperties$2;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    const-string v8, "-fx-alignment"

    new-instance v9, Lcom/sun/javafx/css/converters/EnumConverter;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    const-class v11, Ljavafx/geometry/Pos;

    invoke-direct {v10, v11}, Lcom/sun/javafx/css/converters/EnumConverter;-><init>(Ljava/lang/Class;)V

    sget-object v10, Ljavafx/geometry/Pos;->TOP_LEFT:Ljavafx/geometry/Pos;

    invoke-direct {v7, v8, v9, v10}, Lcom/sun/javafx/scene/control/skin/ToolBarSkin$StyleableProperties$2;-><init>(Ljava/lang/String;Ljavafx/css/StyleConverter;Ljavafx/geometry/Pos;)V

    sput-object v6, Lcom/sun/javafx/scene/control/skin/ToolBarSkin$StyleableProperties;->ALIGNMENT:Ljavafx/css/CssMetaData;

    .line 741
    new-instance v6, Ljava/util/ArrayList;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    .line 742
    invoke-static {}, Ljavafx/scene/control/SkinBase;->getClassCssMetaData()Ljava/util/List;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v1, v6

    .line 747
    .local v1, "styleables":Ljava/util/List;, "Ljava/util/List<Ljavafx/css/CssMetaData<+Ljavafx/css/Styleable;*>;>;"
    sget-object v6, Lcom/sun/javafx/scene/control/skin/ToolBarSkin$StyleableProperties;->ALIGNMENT:Ljavafx/css/CssMetaData;

    invoke-virtual {v6}, Ljavafx/css/CssMetaData;->getProperty()Ljava/lang/String;

    move-result-object v6

    move-object v2, v6

    .line 748
    .local v2, "alignmentProperty":Ljava/lang/String;
    const/4 v6, 0x0

    move v3, v6

    .local v3, "n":I
    move-object v6, v1

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    move v4, v6

    .local v4, "nMax":I
    :goto_0
    move v6, v3

    move v7, v4

    if-ge v6, v7, :cond_1

    .line 749
    move-object v6, v1

    move v7, v3

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljavafx/css/CssMetaData;

    move-object v5, v6

    .line 750
    .local v5, "prop":Ljavafx/css/CssMetaData;, "Ljavafx/css/CssMetaData<**>;"
    move-object v6, v2

    move-object v7, v5

    invoke-virtual {v7}, Ljavafx/css/CssMetaData;->getProperty()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move-object v6, v1

    move-object v7, v5

    invoke-interface {v6, v7}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v6

    .line 748
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 753
    .end local v5    # "prop":Ljavafx/css/CssMetaData;, "Ljavafx/css/CssMetaData<**>;"
    :cond_1
    move-object v6, v1

    sget-object v7, Lcom/sun/javafx/scene/control/skin/ToolBarSkin$StyleableProperties;->SPACING:Ljavafx/css/CssMetaData;

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v6

    .line 754
    move-object v6, v1

    sget-object v7, Lcom/sun/javafx/scene/control/skin/ToolBarSkin$StyleableProperties;->ALIGNMENT:Ljavafx/css/CssMetaData;

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v6

    .line 755
    move-object v6, v1

    invoke-static {v6}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    sput-object v6, Lcom/sun/javafx/scene/control/skin/ToolBarSkin$StyleableProperties;->STYLEABLES:Ljava/util/List;

    .line 757
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 702
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/ToolBarSkin$StyleableProperties;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$300()Ljavafx/css/CssMetaData;
    .locals 1

    .prologue
    .line 702
    sget-object v0, Lcom/sun/javafx/scene/control/skin/ToolBarSkin$StyleableProperties;->SPACING:Ljavafx/css/CssMetaData;

    return-object v0
.end method

.method static synthetic access$400()Ljavafx/css/CssMetaData;
    .locals 1

    .prologue
    .line 702
    sget-object v0, Lcom/sun/javafx/scene/control/skin/ToolBarSkin$StyleableProperties;->ALIGNMENT:Ljavafx/css/CssMetaData;

    return-object v0
.end method

.method static synthetic access$700()Ljava/util/List;
    .locals 1

    .prologue
    .line 702
    sget-object v0, Lcom/sun/javafx/scene/control/skin/ToolBarSkin$StyleableProperties;->STYLEABLES:Ljava/util/List;

    return-object v0
.end method
