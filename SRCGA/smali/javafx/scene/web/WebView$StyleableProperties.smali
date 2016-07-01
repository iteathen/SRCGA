.class final Ljavafx/scene/web/WebView$StyleableProperties;
.super Ljava/lang/Object;
.source "WebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/web/WebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "StyleableProperties"
.end annotation


# static fields
.field private static final CONTEXT_MENU_ENABLED:Ljavafx/css/CssMetaData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/css/CssMetaData",
            "<",
            "Ljavafx/scene/web/WebView;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final FONT_SCALE:Ljavafx/css/CssMetaData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/css/CssMetaData",
            "<",
            "Ljavafx/scene/web/WebView;",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation
.end field

.field private static final FONT_SMOOTHING_TYPE:Ljavafx/css/CssMetaData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/css/CssMetaData",
            "<",
            "Ljavafx/scene/web/WebView;",
            "Ljavafx/scene/text/FontSmoothingType;",
            ">;"
        }
    .end annotation
.end field

.field private static final MAX_HEIGHT:Ljavafx/css/CssMetaData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/css/CssMetaData",
            "<",
            "Ljavafx/scene/web/WebView;",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation
.end field

.field private static final MAX_WIDTH:Ljavafx/css/CssMetaData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/css/CssMetaData",
            "<",
            "Ljavafx/scene/web/WebView;",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation
.end field

.field private static final MIN_HEIGHT:Ljavafx/css/CssMetaData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/css/CssMetaData",
            "<",
            "Ljavafx/scene/web/WebView;",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation
.end field

.field private static final MIN_WIDTH:Ljavafx/css/CssMetaData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/css/CssMetaData",
            "<",
            "Ljavafx/scene/web/WebView;",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation
.end field

.field private static final PREF_HEIGHT:Ljavafx/css/CssMetaData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/css/CssMetaData",
            "<",
            "Ljavafx/scene/web/WebView;",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation
.end field

.field private static final PREF_WIDTH:Ljavafx/css/CssMetaData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/css/CssMetaData",
            "<",
            "Ljavafx/scene/web/WebView;",
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

.field private static final ZOOM:Ljavafx/css/CssMetaData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/css/CssMetaData",
            "<",
            "Ljavafx/scene/web/WebView;",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    .line 751
    new-instance v2, Ljavafx/scene/web/WebView$StyleableProperties$1;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    const-string v4, "-fx-context-menu-enabled"

    .line 754
    invoke-static {}, Lcom/sun/javafx/css/converters/BooleanConverter;->getInstance()Ljavafx/css/StyleConverter;

    move-result-object v5

    const/4 v6, 0x1

    .line 755
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6}, Ljavafx/scene/web/WebView$StyleableProperties$1;-><init>(Ljava/lang/String;Ljavafx/css/StyleConverter;Ljava/lang/Boolean;)V

    sput-object v2, Ljavafx/scene/web/WebView$StyleableProperties;->CONTEXT_MENU_ENABLED:Ljavafx/css/CssMetaData;

    .line 765
    new-instance v2, Ljavafx/scene/web/WebView$StyleableProperties$2;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    const-string v4, "-fx-font-smoothing-type"

    new-instance v5, Lcom/sun/javafx/css/converters/EnumConverter;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    const-class v7, Ljavafx/scene/text/FontSmoothingType;

    invoke-direct {v6, v7}, Lcom/sun/javafx/css/converters/EnumConverter;-><init>(Ljava/lang/Class;)V

    .line 769
    # getter for: Ljavafx/scene/web/WebView;->DEFAULT_FONT_SMOOTHING_TYPE:Ljavafx/scene/text/FontSmoothingType;
    invoke-static {}, Ljavafx/scene/web/WebView;->access$1300()Ljavafx/scene/text/FontSmoothingType;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6}, Ljavafx/scene/web/WebView$StyleableProperties$2;-><init>(Ljava/lang/String;Ljavafx/css/StyleConverter;Ljavafx/scene/text/FontSmoothingType;)V

    sput-object v2, Ljavafx/scene/web/WebView$StyleableProperties;->FONT_SMOOTHING_TYPE:Ljavafx/css/CssMetaData;

    .line 780
    new-instance v2, Ljavafx/scene/web/WebView$StyleableProperties$3;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    const-string v4, "-fx-zoom"

    .line 783
    invoke-static {}, Lcom/sun/javafx/css/converters/SizeConverter;->getInstance()Ljavafx/css/StyleConverter;

    move-result-object v5

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    .line 784
    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6}, Ljavafx/scene/web/WebView$StyleableProperties$3;-><init>(Ljava/lang/String;Ljavafx/css/StyleConverter;Ljava/lang/Number;)V

    sput-object v2, Ljavafx/scene/web/WebView$StyleableProperties;->ZOOM:Ljavafx/css/CssMetaData;

    .line 793
    new-instance v2, Ljavafx/scene/web/WebView$StyleableProperties$4;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    const-string v4, "-fx-font-scale"

    .line 796
    invoke-static {}, Lcom/sun/javafx/css/converters/SizeConverter;->getInstance()Ljavafx/css/StyleConverter;

    move-result-object v5

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    .line 797
    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6}, Ljavafx/scene/web/WebView$StyleableProperties$4;-><init>(Ljava/lang/String;Ljavafx/css/StyleConverter;Ljava/lang/Number;)V

    sput-object v2, Ljavafx/scene/web/WebView$StyleableProperties;->FONT_SCALE:Ljavafx/css/CssMetaData;

    .line 808
    new-instance v2, Ljavafx/scene/web/WebView$StyleableProperties$5;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    const-string v4, "-fx-min-width"

    .line 811
    invoke-static {}, Lcom/sun/javafx/css/converters/SizeConverter;->getInstance()Ljavafx/css/StyleConverter;

    move-result-object v5

    const-wide/16 v6, 0x0

    .line 812
    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6}, Ljavafx/scene/web/WebView$StyleableProperties$5;-><init>(Ljava/lang/String;Ljavafx/css/StyleConverter;Ljava/lang/Number;)V

    sput-object v2, Ljavafx/scene/web/WebView$StyleableProperties;->MIN_WIDTH:Ljavafx/css/CssMetaData;

    .line 823
    new-instance v2, Ljavafx/scene/web/WebView$StyleableProperties$6;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    const-string v4, "-fx-min-height"

    .line 826
    invoke-static {}, Lcom/sun/javafx/css/converters/SizeConverter;->getInstance()Ljavafx/css/StyleConverter;

    move-result-object v5

    const-wide/16 v6, 0x0

    .line 827
    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6}, Ljavafx/scene/web/WebView$StyleableProperties$6;-><init>(Ljava/lang/String;Ljavafx/css/StyleConverter;Ljava/lang/Number;)V

    sput-object v2, Ljavafx/scene/web/WebView$StyleableProperties;->MIN_HEIGHT:Ljavafx/css/CssMetaData;

    .line 838
    new-instance v2, Ljavafx/scene/web/WebView$StyleableProperties$7;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    const-string v4, "-fx-max-width"

    .line 841
    invoke-static {}, Lcom/sun/javafx/css/converters/SizeConverter;->getInstance()Ljavafx/css/StyleConverter;

    move-result-object v5

    const-wide v6, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 842
    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6}, Ljavafx/scene/web/WebView$StyleableProperties$7;-><init>(Ljava/lang/String;Ljavafx/css/StyleConverter;Ljava/lang/Number;)V

    sput-object v2, Ljavafx/scene/web/WebView$StyleableProperties;->MAX_WIDTH:Ljavafx/css/CssMetaData;

    .line 853
    new-instance v2, Ljavafx/scene/web/WebView$StyleableProperties$8;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    const-string v4, "-fx-max-height"

    .line 856
    invoke-static {}, Lcom/sun/javafx/css/converters/SizeConverter;->getInstance()Ljavafx/css/StyleConverter;

    move-result-object v5

    const-wide v6, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 857
    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6}, Ljavafx/scene/web/WebView$StyleableProperties$8;-><init>(Ljava/lang/String;Ljavafx/css/StyleConverter;Ljava/lang/Number;)V

    sput-object v2, Ljavafx/scene/web/WebView$StyleableProperties;->MAX_HEIGHT:Ljavafx/css/CssMetaData;

    .line 868
    new-instance v2, Ljavafx/scene/web/WebView$StyleableProperties$9;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    const-string v4, "-fx-pref-width"

    .line 871
    invoke-static {}, Lcom/sun/javafx/css/converters/SizeConverter;->getInstance()Ljavafx/css/StyleConverter;

    move-result-object v5

    const-wide/high16 v6, 0x4089000000000000L    # 800.0

    .line 872
    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6}, Ljavafx/scene/web/WebView$StyleableProperties$9;-><init>(Ljava/lang/String;Ljavafx/css/StyleConverter;Ljava/lang/Number;)V

    sput-object v2, Ljavafx/scene/web/WebView$StyleableProperties;->PREF_WIDTH:Ljavafx/css/CssMetaData;

    .line 883
    new-instance v2, Ljavafx/scene/web/WebView$StyleableProperties$10;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    const-string v4, "-fx-pref-height"

    .line 886
    invoke-static {}, Lcom/sun/javafx/css/converters/SizeConverter;->getInstance()Ljavafx/css/StyleConverter;

    move-result-object v5

    const-wide v6, 0x4082c00000000000L    # 600.0

    .line 887
    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6}, Ljavafx/scene/web/WebView$StyleableProperties$10;-><init>(Ljava/lang/String;Ljavafx/css/StyleConverter;Ljava/lang/Number;)V

    sput-object v2, Ljavafx/scene/web/WebView$StyleableProperties;->PREF_HEIGHT:Ljavafx/css/CssMetaData;

    .line 901
    new-instance v2, Ljava/util/ArrayList;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    .line 902
    invoke-static {}, Ljavafx/scene/Parent;->getClassCssMetaData()Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v1, v2

    .line 903
    .local v1, "styleables":Ljava/util/List;, "Ljava/util/List<Ljavafx/css/CssMetaData<+Ljavafx/css/Styleable;*>;>;"
    move-object v2, v1

    sget-object v3, Ljavafx/scene/web/WebView$StyleableProperties;->CONTEXT_MENU_ENABLED:Ljavafx/css/CssMetaData;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 904
    move-object v2, v1

    sget-object v3, Ljavafx/scene/web/WebView$StyleableProperties;->FONT_SMOOTHING_TYPE:Ljavafx/css/CssMetaData;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 905
    move-object v2, v1

    sget-object v3, Ljavafx/scene/web/WebView$StyleableProperties;->ZOOM:Ljavafx/css/CssMetaData;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 906
    move-object v2, v1

    sget-object v3, Ljavafx/scene/web/WebView$StyleableProperties;->FONT_SCALE:Ljavafx/css/CssMetaData;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 907
    move-object v2, v1

    sget-object v3, Ljavafx/scene/web/WebView$StyleableProperties;->MIN_WIDTH:Ljavafx/css/CssMetaData;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 908
    move-object v2, v1

    sget-object v3, Ljavafx/scene/web/WebView$StyleableProperties;->PREF_WIDTH:Ljavafx/css/CssMetaData;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 909
    move-object v2, v1

    sget-object v3, Ljavafx/scene/web/WebView$StyleableProperties;->MAX_WIDTH:Ljavafx/css/CssMetaData;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 910
    move-object v2, v1

    sget-object v3, Ljavafx/scene/web/WebView$StyleableProperties;->MIN_HEIGHT:Ljavafx/css/CssMetaData;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 911
    move-object v2, v1

    sget-object v3, Ljavafx/scene/web/WebView$StyleableProperties;->PREF_HEIGHT:Ljavafx/css/CssMetaData;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 912
    move-object v2, v1

    sget-object v3, Ljavafx/scene/web/WebView$StyleableProperties;->MAX_HEIGHT:Ljavafx/css/CssMetaData;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 913
    move-object v2, v1

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    sput-object v2, Ljavafx/scene/web/WebView$StyleableProperties;->STYLEABLES:Ljava/util/List;

    .line 914
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 749
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/web/WebView$StyleableProperties;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Ljavafx/css/CssMetaData;
    .locals 1

    .prologue
    .line 749
    sget-object v0, Ljavafx/scene/web/WebView$StyleableProperties;->ZOOM:Ljavafx/css/CssMetaData;

    return-object v0
.end method

.method static synthetic access$1000()Ljavafx/css/CssMetaData;
    .locals 1

    .prologue
    .line 749
    sget-object v0, Ljavafx/scene/web/WebView$StyleableProperties;->FONT_SMOOTHING_TYPE:Ljavafx/css/CssMetaData;

    return-object v0
.end method

.method static synthetic access$1100()Ljavafx/css/CssMetaData;
    .locals 1

    .prologue
    .line 749
    sget-object v0, Ljavafx/scene/web/WebView$StyleableProperties;->CONTEXT_MENU_ENABLED:Ljavafx/css/CssMetaData;

    return-object v0
.end method

.method static synthetic access$200()Ljavafx/css/CssMetaData;
    .locals 1

    .prologue
    .line 749
    sget-object v0, Ljavafx/scene/web/WebView$StyleableProperties;->FONT_SCALE:Ljavafx/css/CssMetaData;

    return-object v0
.end method

.method static synthetic access$2300()Ljava/util/List;
    .locals 1

    .prologue
    .line 749
    sget-object v0, Ljavafx/scene/web/WebView$StyleableProperties;->STYLEABLES:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$400()Ljavafx/css/CssMetaData;
    .locals 1

    .prologue
    .line 749
    sget-object v0, Ljavafx/scene/web/WebView$StyleableProperties;->MIN_WIDTH:Ljavafx/css/CssMetaData;

    return-object v0
.end method

.method static synthetic access$500()Ljavafx/css/CssMetaData;
    .locals 1

    .prologue
    .line 749
    sget-object v0, Ljavafx/scene/web/WebView$StyleableProperties;->MIN_HEIGHT:Ljavafx/css/CssMetaData;

    return-object v0
.end method

.method static synthetic access$600()Ljavafx/css/CssMetaData;
    .locals 1

    .prologue
    .line 749
    sget-object v0, Ljavafx/scene/web/WebView$StyleableProperties;->PREF_WIDTH:Ljavafx/css/CssMetaData;

    return-object v0
.end method

.method static synthetic access$700()Ljavafx/css/CssMetaData;
    .locals 1

    .prologue
    .line 749
    sget-object v0, Ljavafx/scene/web/WebView$StyleableProperties;->PREF_HEIGHT:Ljavafx/css/CssMetaData;

    return-object v0
.end method

.method static synthetic access$800()Ljavafx/css/CssMetaData;
    .locals 1

    .prologue
    .line 749
    sget-object v0, Ljavafx/scene/web/WebView$StyleableProperties;->MAX_WIDTH:Ljavafx/css/CssMetaData;

    return-object v0
.end method

.method static synthetic access$900()Ljavafx/css/CssMetaData;
    .locals 1

    .prologue
    .line 749
    sget-object v0, Ljavafx/scene/web/WebView$StyleableProperties;->MAX_HEIGHT:Ljavafx/css/CssMetaData;

    return-object v0
.end method
