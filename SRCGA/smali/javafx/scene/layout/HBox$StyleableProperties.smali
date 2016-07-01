.class Ljavafx/scene/layout/HBox$StyleableProperties;
.super Ljava/lang/Object;
.source "HBox.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/layout/HBox;
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
            "Ljavafx/scene/layout/HBox;",
            "Ljavafx/geometry/Pos;",
            ">;"
        }
    .end annotation
.end field

.field private static final FILL_HEIGHT:Ljavafx/css/CssMetaData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/css/CssMetaData",
            "<",
            "Ljavafx/scene/layout/HBox;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final SPACING:Ljavafx/css/CssMetaData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/css/CssMetaData",
            "<",
            "Ljavafx/scene/layout/HBox;",
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
    .line 673
    new-instance v2, Ljavafx/scene/layout/HBox$StyleableProperties$1;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    const-string v4, "-fx-alignment"

    new-instance v5, Lcom/sun/javafx/css/converters/EnumConverter;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    const-class v7, Ljavafx/geometry/Pos;

    invoke-direct {v6, v7}, Lcom/sun/javafx/css/converters/EnumConverter;-><init>(Ljava/lang/Class;)V

    sget-object v6, Ljavafx/geometry/Pos;->TOP_LEFT:Ljavafx/geometry/Pos;

    invoke-direct {v3, v4, v5, v6}, Ljavafx/scene/layout/HBox$StyleableProperties$1;-><init>(Ljava/lang/String;Ljavafx/css/StyleConverter;Ljavafx/geometry/Pos;)V

    sput-object v2, Ljavafx/scene/layout/HBox$StyleableProperties;->ALIGNMENT:Ljavafx/css/CssMetaData;

    .line 690
    new-instance v2, Ljavafx/scene/layout/HBox$StyleableProperties$2;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    const-string v4, "-fx-fill-height"

    .line 692
    invoke-static {}, Lcom/sun/javafx/css/converters/BooleanConverter;->getInstance()Ljavafx/css/StyleConverter;

    move-result-object v5

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {v3, v4, v5, v6}, Ljavafx/scene/layout/HBox$StyleableProperties$2;-><init>(Ljava/lang/String;Ljavafx/css/StyleConverter;Ljava/lang/Boolean;)V

    sput-object v2, Ljavafx/scene/layout/HBox$StyleableProperties;->FILL_HEIGHT:Ljavafx/css/CssMetaData;

    .line 707
    new-instance v2, Ljavafx/scene/layout/HBox$StyleableProperties$3;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    const-string v4, "-fx-spacing"

    .line 709
    invoke-static {}, Lcom/sun/javafx/css/converters/SizeConverter;->getInstance()Ljavafx/css/StyleConverter;

    move-result-object v5

    const-wide/16 v6, 0x0

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6}, Ljavafx/scene/layout/HBox$StyleableProperties$3;-><init>(Ljava/lang/String;Ljavafx/css/StyleConverter;Ljava/lang/Number;)V

    sput-object v2, Ljavafx/scene/layout/HBox$StyleableProperties;->SPACING:Ljavafx/css/CssMetaData;

    .line 725
    new-instance v2, Ljava/util/ArrayList;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    .line 726
    invoke-static {}, Ljavafx/scene/layout/Pane;->getClassCssMetaData()Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v1, v2

    .line 727
    .local v1, "styleables":Ljava/util/List;, "Ljava/util/List<Ljavafx/css/CssMetaData<+Ljavafx/css/Styleable;*>;>;"
    move-object v2, v1

    sget-object v3, Ljavafx/scene/layout/HBox$StyleableProperties;->FILL_HEIGHT:Ljavafx/css/CssMetaData;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 728
    move-object v2, v1

    sget-object v3, Ljavafx/scene/layout/HBox$StyleableProperties;->ALIGNMENT:Ljavafx/css/CssMetaData;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 729
    move-object v2, v1

    sget-object v3, Ljavafx/scene/layout/HBox$StyleableProperties;->SPACING:Ljavafx/css/CssMetaData;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 730
    move-object v2, v1

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    sput-object v2, Ljavafx/scene/layout/HBox$StyleableProperties;->STYLEABLES:Ljava/util/List;

    .line 731
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 671
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/HBox$StyleableProperties;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljavafx/css/CssMetaData;
    .locals 1

    .prologue
    .line 671
    sget-object v0, Ljavafx/scene/layout/HBox$StyleableProperties;->SPACING:Ljavafx/css/CssMetaData;

    return-object v0
.end method

.method static synthetic access$100()Ljavafx/css/CssMetaData;
    .locals 1

    .prologue
    .line 671
    sget-object v0, Ljavafx/scene/layout/HBox$StyleableProperties;->ALIGNMENT:Ljavafx/css/CssMetaData;

    return-object v0
.end method

.method static synthetic access$200()Ljavafx/css/CssMetaData;
    .locals 1

    .prologue
    .line 671
    sget-object v0, Ljavafx/scene/layout/HBox$StyleableProperties;->FILL_HEIGHT:Ljavafx/css/CssMetaData;

    return-object v0
.end method

.method static synthetic access$600()Ljava/util/List;
    .locals 1

    .prologue
    .line 671
    sget-object v0, Ljavafx/scene/layout/HBox$StyleableProperties;->STYLEABLES:Ljava/util/List;

    return-object v0
.end method
