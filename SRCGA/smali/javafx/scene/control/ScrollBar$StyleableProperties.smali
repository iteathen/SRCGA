.class Ljavafx/scene/control/ScrollBar$StyleableProperties;
.super Ljava/lang/Object;
.source "ScrollBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/control/ScrollBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StyleableProperties"
.end annotation


# static fields
.field private static final BLOCK_INCREMENT:Ljavafx/css/CssMetaData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/css/CssMetaData",
            "<",
            "Ljavafx/scene/control/ScrollBar;",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation
.end field

.field private static final ORIENTATION:Ljavafx/css/CssMetaData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/css/CssMetaData",
            "<",
            "Ljavafx/scene/control/ScrollBar;",
            "Ljavafx/geometry/Orientation;",
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

.field private static final UNIT_INCREMENT:Ljavafx/css/CssMetaData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/css/CssMetaData",
            "<",
            "Ljavafx/scene/control/ScrollBar;",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    .line 381
    new-instance v2, Ljavafx/scene/control/ScrollBar$StyleableProperties$1;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    const-string v4, "-fx-orientation"

    new-instance v5, Lcom/sun/javafx/css/converters/EnumConverter;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    const-class v7, Ljavafx/geometry/Orientation;

    invoke-direct {v6, v7}, Lcom/sun/javafx/css/converters/EnumConverter;-><init>(Ljava/lang/Class;)V

    sget-object v6, Ljavafx/geometry/Orientation;->HORIZONTAL:Ljavafx/geometry/Orientation;

    invoke-direct {v3, v4, v5, v6}, Ljavafx/scene/control/ScrollBar$StyleableProperties$1;-><init>(Ljava/lang/String;Ljavafx/css/StyleConverter;Ljavafx/geometry/Orientation;)V

    sput-object v2, Ljavafx/scene/control/ScrollBar$StyleableProperties;->ORIENTATION:Ljavafx/css/CssMetaData;

    .line 403
    new-instance v2, Ljavafx/scene/control/ScrollBar$StyleableProperties$2;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    const-string v4, "-fx-unit-increment"

    .line 405
    invoke-static {}, Lcom/sun/javafx/css/converters/SizeConverter;->getInstance()Ljavafx/css/StyleConverter;

    move-result-object v5

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6}, Ljavafx/scene/control/ScrollBar$StyleableProperties$2;-><init>(Ljava/lang/String;Ljavafx/css/StyleConverter;Ljava/lang/Number;)V

    sput-object v2, Ljavafx/scene/control/ScrollBar$StyleableProperties;->UNIT_INCREMENT:Ljavafx/css/CssMetaData;

    .line 419
    new-instance v2, Ljavafx/scene/control/ScrollBar$StyleableProperties$3;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    const-string v4, "-fx-block-increment"

    .line 421
    invoke-static {}, Lcom/sun/javafx/css/converters/SizeConverter;->getInstance()Ljavafx/css/StyleConverter;

    move-result-object v5

    const-wide/high16 v6, 0x4024000000000000L    # 10.0

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6}, Ljavafx/scene/control/ScrollBar$StyleableProperties$3;-><init>(Ljava/lang/String;Ljavafx/css/StyleConverter;Ljava/lang/Number;)V

    sput-object v2, Ljavafx/scene/control/ScrollBar$StyleableProperties;->BLOCK_INCREMENT:Ljavafx/css/CssMetaData;

    .line 437
    new-instance v2, Ljava/util/ArrayList;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    .line 438
    invoke-static {}, Ljavafx/scene/control/Control;->getClassCssMetaData()Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v1, v2

    .line 439
    .local v1, "styleables":Ljava/util/List;, "Ljava/util/List<Ljavafx/css/CssMetaData<+Ljavafx/css/Styleable;*>;>;"
    move-object v2, v1

    sget-object v3, Ljavafx/scene/control/ScrollBar$StyleableProperties;->ORIENTATION:Ljavafx/css/CssMetaData;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 440
    move-object v2, v1

    sget-object v3, Ljavafx/scene/control/ScrollBar$StyleableProperties;->UNIT_INCREMENT:Ljavafx/css/CssMetaData;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 441
    move-object v2, v1

    sget-object v3, Ljavafx/scene/control/ScrollBar$StyleableProperties;->BLOCK_INCREMENT:Ljavafx/css/CssMetaData;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 442
    move-object v2, v1

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    sput-object v2, Ljavafx/scene/control/ScrollBar$StyleableProperties;->STYLEABLES:Ljava/util/List;

    .line 443
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 380
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ScrollBar$StyleableProperties;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$200()Ljavafx/css/CssMetaData;
    .locals 1

    .prologue
    .line 380
    sget-object v0, Ljavafx/scene/control/ScrollBar$StyleableProperties;->ORIENTATION:Ljavafx/css/CssMetaData;

    return-object v0
.end method

.method static synthetic access$300()Ljavafx/css/CssMetaData;
    .locals 1

    .prologue
    .line 380
    sget-object v0, Ljavafx/scene/control/ScrollBar$StyleableProperties;->UNIT_INCREMENT:Ljavafx/css/CssMetaData;

    return-object v0
.end method

.method static synthetic access$400()Ljavafx/css/CssMetaData;
    .locals 1

    .prologue
    .line 380
    sget-object v0, Ljavafx/scene/control/ScrollBar$StyleableProperties;->BLOCK_INCREMENT:Ljavafx/css/CssMetaData;

    return-object v0
.end method

.method static synthetic access$800()Ljava/util/List;
    .locals 1

    .prologue
    .line 380
    sget-object v0, Ljavafx/scene/control/ScrollBar$StyleableProperties;->STYLEABLES:Ljava/util/List;

    return-object v0
.end method
