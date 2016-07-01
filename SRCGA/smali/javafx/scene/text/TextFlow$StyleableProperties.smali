.class Ljavafx/scene/text/TextFlow$StyleableProperties;
.super Ljava/lang/Object;
.source "TextFlow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/text/TextFlow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StyleableProperties"
.end annotation


# static fields
.field private static final LINE_SPACING:Ljavafx/css/CssMetaData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/css/CssMetaData",
            "<",
            "Ljavafx/scene/text/TextFlow;",
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

.field private static final TEXT_ALIGNMENT:Ljavafx/css/CssMetaData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/css/CssMetaData",
            "<",
            "Ljavafx/scene/text/TextFlow;",
            "Ljavafx/scene/text/TextAlignment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    .line 453
    new-instance v1, Ljavafx/scene/text/TextFlow$StyleableProperties$1;

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    const-string v3, "-fx-text-alignment"

    new-instance v4, Lcom/sun/javafx/css/converters/EnumConverter;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    const-class v6, Ljavafx/scene/text/TextAlignment;

    invoke-direct {v5, v6}, Lcom/sun/javafx/css/converters/EnumConverter;-><init>(Ljava/lang/Class;)V

    sget-object v5, Ljavafx/scene/text/TextAlignment;->LEFT:Ljavafx/scene/text/TextAlignment;

    invoke-direct {v2, v3, v4, v5}, Ljavafx/scene/text/TextFlow$StyleableProperties$1;-><init>(Ljava/lang/String;Ljavafx/css/StyleConverter;Ljavafx/scene/text/TextAlignment;)V

    sput-object v1, Ljavafx/scene/text/TextFlow$StyleableProperties;->TEXT_ALIGNMENT:Ljavafx/css/CssMetaData;

    .line 468
    new-instance v1, Ljavafx/scene/text/TextFlow$StyleableProperties$2;

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    const-string v3, "-fx-line-spacing"

    .line 470
    invoke-static {}, Lcom/sun/javafx/css/converters/SizeConverter;->getInstance()Ljavafx/css/StyleConverter;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Ljavafx/scene/text/TextFlow$StyleableProperties$2;-><init>(Ljava/lang/String;Ljavafx/css/StyleConverter;Ljava/lang/Number;)V

    sput-object v1, Ljavafx/scene/text/TextFlow$StyleableProperties;->LINE_SPACING:Ljavafx/css/CssMetaData;

    .line 483
    new-instance v1, Ljava/util/ArrayList;

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    .line 484
    invoke-static {}, Ljavafx/scene/layout/Pane;->getClassCssMetaData()Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v0, v1

    .line 485
    .local v0, "styleables":Ljava/util/List;, "Ljava/util/List<Ljavafx/css/CssMetaData<+Ljavafx/css/Styleable;*>;>;"
    move-object v1, v0

    sget-object v2, Ljavafx/scene/text/TextFlow$StyleableProperties;->TEXT_ALIGNMENT:Ljavafx/css/CssMetaData;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v1

    .line 486
    move-object v1, v0

    sget-object v2, Ljavafx/scene/text/TextFlow$StyleableProperties;->LINE_SPACING:Ljavafx/css/CssMetaData;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v1

    .line 487
    move-object v1, v0

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    sput-object v1, Ljavafx/scene/text/TextFlow$StyleableProperties;->STYLEABLES:Ljava/util/List;

    .line 488
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 450
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/text/TextFlow$StyleableProperties;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljavafx/css/CssMetaData;
    .locals 1

    .prologue
    .line 450
    sget-object v0, Ljavafx/scene/text/TextFlow$StyleableProperties;->TEXT_ALIGNMENT:Ljavafx/css/CssMetaData;

    return-object v0
.end method

.method static synthetic access$100()Ljavafx/css/CssMetaData;
    .locals 1

    .prologue
    .line 450
    sget-object v0, Ljavafx/scene/text/TextFlow$StyleableProperties;->LINE_SPACING:Ljavafx/css/CssMetaData;

    return-object v0
.end method

.method static synthetic access$400()Ljava/util/List;
    .locals 1

    .prologue
    .line 450
    sget-object v0, Ljavafx/scene/text/TextFlow$StyleableProperties;->STYLEABLES:Ljava/util/List;

    return-object v0
.end method
