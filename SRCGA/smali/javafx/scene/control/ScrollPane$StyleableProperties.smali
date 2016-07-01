.class Ljavafx/scene/control/ScrollPane$StyleableProperties;
.super Ljava/lang/Object;
.source "ScrollPane.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/control/ScrollPane;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StyleableProperties"
.end annotation


# static fields
.field private static final FIT_TO_HEIGHT:Ljavafx/css/CssMetaData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/css/CssMetaData",
            "<",
            "Ljavafx/scene/control/ScrollPane;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final FIT_TO_WIDTH:Ljavafx/css/CssMetaData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/css/CssMetaData",
            "<",
            "Ljavafx/scene/control/ScrollPane;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final HBAR_POLICY:Ljavafx/css/CssMetaData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/css/CssMetaData",
            "<",
            "Ljavafx/scene/control/ScrollPane;",
            "Ljavafx/scene/control/ScrollPane$ScrollBarPolicy;",
            ">;"
        }
    .end annotation
.end field

.field private static final PANNABLE:Ljavafx/css/CssMetaData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/css/CssMetaData",
            "<",
            "Ljavafx/scene/control/ScrollPane;",
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

.field private static final VBAR_POLICY:Ljavafx/css/CssMetaData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/css/CssMetaData",
            "<",
            "Ljavafx/scene/control/ScrollPane;",
            "Ljavafx/scene/control/ScrollPane$ScrollBarPolicy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    .line 656
    new-instance v1, Ljavafx/scene/control/ScrollPane$StyleableProperties$1;

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    const-string v3, "-fx-hbar-policy"

    new-instance v4, Lcom/sun/javafx/css/converters/EnumConverter;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    const-class v6, Ljavafx/scene/control/ScrollPane$ScrollBarPolicy;

    invoke-direct {v5, v6}, Lcom/sun/javafx/css/converters/EnumConverter;-><init>(Ljava/lang/Class;)V

    sget-object v5, Ljavafx/scene/control/ScrollPane$ScrollBarPolicy;->AS_NEEDED:Ljavafx/scene/control/ScrollPane$ScrollBarPolicy;

    invoke-direct {v2, v3, v4, v5}, Ljavafx/scene/control/ScrollPane$StyleableProperties$1;-><init>(Ljava/lang/String;Ljavafx/css/StyleConverter;Ljavafx/scene/control/ScrollPane$ScrollBarPolicy;)V

    sput-object v1, Ljavafx/scene/control/ScrollPane$StyleableProperties;->HBAR_POLICY:Ljavafx/css/CssMetaData;

    .line 672
    new-instance v1, Ljavafx/scene/control/ScrollPane$StyleableProperties$2;

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    const-string v3, "-fx-vbar-policy"

    new-instance v4, Lcom/sun/javafx/css/converters/EnumConverter;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    const-class v6, Ljavafx/scene/control/ScrollPane$ScrollBarPolicy;

    invoke-direct {v5, v6}, Lcom/sun/javafx/css/converters/EnumConverter;-><init>(Ljava/lang/Class;)V

    sget-object v5, Ljavafx/scene/control/ScrollPane$ScrollBarPolicy;->AS_NEEDED:Ljavafx/scene/control/ScrollPane$ScrollBarPolicy;

    invoke-direct {v2, v3, v4, v5}, Ljavafx/scene/control/ScrollPane$StyleableProperties$2;-><init>(Ljava/lang/String;Ljavafx/css/StyleConverter;Ljavafx/scene/control/ScrollPane$ScrollBarPolicy;)V

    sput-object v1, Ljavafx/scene/control/ScrollPane$StyleableProperties;->VBAR_POLICY:Ljavafx/css/CssMetaData;

    .line 688
    new-instance v1, Ljavafx/scene/control/ScrollPane$StyleableProperties$3;

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    const-string v3, "-fx-fit-to-width"

    .line 690
    invoke-static {}, Lcom/sun/javafx/css/converters/BooleanConverter;->getInstance()Ljavafx/css/StyleConverter;

    move-result-object v4

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v2, v3, v4, v5}, Ljavafx/scene/control/ScrollPane$StyleableProperties$3;-><init>(Ljava/lang/String;Ljavafx/css/StyleConverter;Ljava/lang/Boolean;)V

    sput-object v1, Ljavafx/scene/control/ScrollPane$StyleableProperties;->FIT_TO_WIDTH:Ljavafx/css/CssMetaData;

    .line 703
    new-instance v1, Ljavafx/scene/control/ScrollPane$StyleableProperties$4;

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    const-string v3, "-fx-fit-to-height"

    .line 705
    invoke-static {}, Lcom/sun/javafx/css/converters/BooleanConverter;->getInstance()Ljavafx/css/StyleConverter;

    move-result-object v4

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v2, v3, v4, v5}, Ljavafx/scene/control/ScrollPane$StyleableProperties$4;-><init>(Ljava/lang/String;Ljavafx/css/StyleConverter;Ljava/lang/Boolean;)V

    sput-object v1, Ljavafx/scene/control/ScrollPane$StyleableProperties;->FIT_TO_HEIGHT:Ljavafx/css/CssMetaData;

    .line 718
    new-instance v1, Ljavafx/scene/control/ScrollPane$StyleableProperties$5;

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    const-string v3, "-fx-pannable"

    .line 720
    invoke-static {}, Lcom/sun/javafx/css/converters/BooleanConverter;->getInstance()Ljavafx/css/StyleConverter;

    move-result-object v4

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v2, v3, v4, v5}, Ljavafx/scene/control/ScrollPane$StyleableProperties$5;-><init>(Ljava/lang/String;Ljavafx/css/StyleConverter;Ljava/lang/Boolean;)V

    sput-object v1, Ljavafx/scene/control/ScrollPane$StyleableProperties;->PANNABLE:Ljavafx/css/CssMetaData;

    .line 735
    new-instance v1, Ljava/util/ArrayList;

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    .line 736
    invoke-static {}, Ljavafx/scene/control/Control;->getClassCssMetaData()Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v0, v1

    .line 737
    .local v0, "styleables":Ljava/util/List;, "Ljava/util/List<Ljavafx/css/CssMetaData<+Ljavafx/css/Styleable;*>;>;"
    move-object v1, v0

    sget-object v2, Ljavafx/scene/control/ScrollPane$StyleableProperties;->HBAR_POLICY:Ljavafx/css/CssMetaData;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v1

    .line 738
    move-object v1, v0

    sget-object v2, Ljavafx/scene/control/ScrollPane$StyleableProperties;->VBAR_POLICY:Ljavafx/css/CssMetaData;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v1

    .line 739
    move-object v1, v0

    sget-object v2, Ljavafx/scene/control/ScrollPane$StyleableProperties;->FIT_TO_WIDTH:Ljavafx/css/CssMetaData;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v1

    .line 740
    move-object v1, v0

    sget-object v2, Ljavafx/scene/control/ScrollPane$StyleableProperties;->FIT_TO_HEIGHT:Ljavafx/css/CssMetaData;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v1

    .line 741
    move-object v1, v0

    sget-object v2, Ljavafx/scene/control/ScrollPane$StyleableProperties;->PANNABLE:Ljavafx/css/CssMetaData;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v1

    .line 742
    move-object v1, v0

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    sput-object v1, Ljavafx/scene/control/ScrollPane$StyleableProperties;->STYLEABLES:Ljava/util/List;

    .line 743
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 655
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ScrollPane$StyleableProperties;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljavafx/css/CssMetaData;
    .locals 1

    .prologue
    .line 655
    sget-object v0, Ljavafx/scene/control/ScrollPane$StyleableProperties;->HBAR_POLICY:Ljavafx/css/CssMetaData;

    return-object v0
.end method

.method static synthetic access$100()Ljavafx/css/CssMetaData;
    .locals 1

    .prologue
    .line 655
    sget-object v0, Ljavafx/scene/control/ScrollPane$StyleableProperties;->VBAR_POLICY:Ljavafx/css/CssMetaData;

    return-object v0
.end method

.method static synthetic access$1300()Ljava/util/List;
    .locals 1

    .prologue
    .line 655
    sget-object v0, Ljavafx/scene/control/ScrollPane$StyleableProperties;->STYLEABLES:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$300()Ljavafx/css/CssMetaData;
    .locals 1

    .prologue
    .line 655
    sget-object v0, Ljavafx/scene/control/ScrollPane$StyleableProperties;->FIT_TO_WIDTH:Ljavafx/css/CssMetaData;

    return-object v0
.end method

.method static synthetic access$500()Ljavafx/css/CssMetaData;
    .locals 1

    .prologue
    .line 655
    sget-object v0, Ljavafx/scene/control/ScrollPane$StyleableProperties;->FIT_TO_HEIGHT:Ljavafx/css/CssMetaData;

    return-object v0
.end method

.method static synthetic access$700()Ljavafx/css/CssMetaData;
    .locals 1

    .prologue
    .line 655
    sget-object v0, Ljavafx/scene/control/ScrollPane$StyleableProperties;->PANNABLE:Ljavafx/css/CssMetaData;

    return-object v0
.end method
