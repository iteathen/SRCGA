.class Ljavafx/scene/control/Slider$StyleableProperties;
.super Ljava/lang/Object;
.source "Slider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/control/Slider;
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
            "Ljavafx/scene/control/Slider;",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation
.end field

.field private static final MAJOR_TICK_UNIT:Ljavafx/css/CssMetaData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/css/CssMetaData",
            "<",
            "Ljavafx/scene/control/Slider;",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation
.end field

.field private static final MINOR_TICK_COUNT:Ljavafx/css/CssMetaData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/css/CssMetaData",
            "<",
            "Ljavafx/scene/control/Slider;",
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
            "Ljavafx/scene/control/Slider;",
            "Ljavafx/geometry/Orientation;",
            ">;"
        }
    .end annotation
.end field

.field private static final SHOW_TICK_LABELS:Ljavafx/css/CssMetaData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/css/CssMetaData",
            "<",
            "Ljavafx/scene/control/Slider;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final SHOW_TICK_MARKS:Ljavafx/css/CssMetaData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/css/CssMetaData",
            "<",
            "Ljavafx/scene/control/Slider;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final SNAP_TO_TICKS:Ljavafx/css/CssMetaData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/css/CssMetaData",
            "<",
            "Ljavafx/scene/control/Slider;",
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


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    .line 657
    new-instance v2, Ljavafx/scene/control/Slider$StyleableProperties$1;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    const-string v4, "-fx-block-increment"

    .line 659
    invoke-static {}, Lcom/sun/javafx/css/converters/SizeConverter;->getInstance()Ljavafx/css/StyleConverter;

    move-result-object v5

    const-wide/high16 v6, 0x4024000000000000L    # 10.0

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6}, Ljavafx/scene/control/Slider$StyleableProperties$1;-><init>(Ljava/lang/String;Ljavafx/css/StyleConverter;Ljava/lang/Number;)V

    sput-object v2, Ljavafx/scene/control/Slider$StyleableProperties;->BLOCK_INCREMENT:Ljavafx/css/CssMetaData;

    .line 672
    new-instance v2, Ljavafx/scene/control/Slider$StyleableProperties$2;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    const-string v4, "-fx-show-tick-labels"

    .line 674
    invoke-static {}, Lcom/sun/javafx/css/converters/BooleanConverter;->getInstance()Ljavafx/css/StyleConverter;

    move-result-object v5

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v3, v4, v5, v6}, Ljavafx/scene/control/Slider$StyleableProperties$2;-><init>(Ljava/lang/String;Ljavafx/css/StyleConverter;Ljava/lang/Boolean;)V

    sput-object v2, Ljavafx/scene/control/Slider$StyleableProperties;->SHOW_TICK_LABELS:Ljavafx/css/CssMetaData;

    .line 687
    new-instance v2, Ljavafx/scene/control/Slider$StyleableProperties$3;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    const-string v4, "-fx-show-tick-marks"

    .line 689
    invoke-static {}, Lcom/sun/javafx/css/converters/BooleanConverter;->getInstance()Ljavafx/css/StyleConverter;

    move-result-object v5

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v3, v4, v5, v6}, Ljavafx/scene/control/Slider$StyleableProperties$3;-><init>(Ljava/lang/String;Ljavafx/css/StyleConverter;Ljava/lang/Boolean;)V

    sput-object v2, Ljavafx/scene/control/Slider$StyleableProperties;->SHOW_TICK_MARKS:Ljavafx/css/CssMetaData;

    .line 702
    new-instance v2, Ljavafx/scene/control/Slider$StyleableProperties$4;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    const-string v4, "-fx-snap-to-ticks"

    .line 704
    invoke-static {}, Lcom/sun/javafx/css/converters/BooleanConverter;->getInstance()Ljavafx/css/StyleConverter;

    move-result-object v5

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v3, v4, v5, v6}, Ljavafx/scene/control/Slider$StyleableProperties$4;-><init>(Ljava/lang/String;Ljavafx/css/StyleConverter;Ljava/lang/Boolean;)V

    sput-object v2, Ljavafx/scene/control/Slider$StyleableProperties;->SNAP_TO_TICKS:Ljavafx/css/CssMetaData;

    .line 717
    new-instance v2, Ljavafx/scene/control/Slider$StyleableProperties$5;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    const-string v4, "-fx-major-tick-unit"

    .line 719
    invoke-static {}, Lcom/sun/javafx/css/converters/SizeConverter;->getInstance()Ljavafx/css/StyleConverter;

    move-result-object v5

    const-wide/high16 v6, 0x4039000000000000L    # 25.0

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6}, Ljavafx/scene/control/Slider$StyleableProperties$5;-><init>(Ljava/lang/String;Ljavafx/css/StyleConverter;Ljava/lang/Number;)V

    sput-object v2, Ljavafx/scene/control/Slider$StyleableProperties;->MAJOR_TICK_UNIT:Ljavafx/css/CssMetaData;

    .line 732
    new-instance v2, Ljavafx/scene/control/Slider$StyleableProperties$6;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    const-string v4, "-fx-minor-tick-count"

    .line 734
    invoke-static {}, Lcom/sun/javafx/css/converters/SizeConverter;->getInstance()Ljavafx/css/StyleConverter;

    move-result-object v5

    const-wide/high16 v6, 0x4008000000000000L    # 3.0

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6}, Ljavafx/scene/control/Slider$StyleableProperties$6;-><init>(Ljava/lang/String;Ljavafx/css/StyleConverter;Ljava/lang/Number;)V

    sput-object v2, Ljavafx/scene/control/Slider$StyleableProperties;->MINOR_TICK_COUNT:Ljavafx/css/CssMetaData;

    .line 747
    new-instance v2, Ljavafx/scene/control/Slider$StyleableProperties$7;

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

    invoke-direct {v3, v4, v5, v6}, Ljavafx/scene/control/Slider$StyleableProperties$7;-><init>(Ljava/lang/String;Ljavafx/css/StyleConverter;Ljavafx/geometry/Orientation;)V

    sput-object v2, Ljavafx/scene/control/Slider$StyleableProperties;->ORIENTATION:Ljavafx/css/CssMetaData;

    .line 771
    new-instance v2, Ljava/util/ArrayList;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    .line 772
    invoke-static {}, Ljavafx/scene/control/Control;->getClassCssMetaData()Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v1, v2

    .line 773
    .local v1, "styleables":Ljava/util/List;, "Ljava/util/List<Ljavafx/css/CssMetaData<+Ljavafx/css/Styleable;*>;>;"
    move-object v2, v1

    sget-object v3, Ljavafx/scene/control/Slider$StyleableProperties;->BLOCK_INCREMENT:Ljavafx/css/CssMetaData;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 774
    move-object v2, v1

    sget-object v3, Ljavafx/scene/control/Slider$StyleableProperties;->SHOW_TICK_LABELS:Ljavafx/css/CssMetaData;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 775
    move-object v2, v1

    sget-object v3, Ljavafx/scene/control/Slider$StyleableProperties;->SHOW_TICK_MARKS:Ljavafx/css/CssMetaData;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 776
    move-object v2, v1

    sget-object v3, Ljavafx/scene/control/Slider$StyleableProperties;->SNAP_TO_TICKS:Ljavafx/css/CssMetaData;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 777
    move-object v2, v1

    sget-object v3, Ljavafx/scene/control/Slider$StyleableProperties;->MAJOR_TICK_UNIT:Ljavafx/css/CssMetaData;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 778
    move-object v2, v1

    sget-object v3, Ljavafx/scene/control/Slider$StyleableProperties;->MINOR_TICK_COUNT:Ljavafx/css/CssMetaData;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 779
    move-object v2, v1

    sget-object v3, Ljavafx/scene/control/Slider$StyleableProperties;->ORIENTATION:Ljavafx/css/CssMetaData;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 781
    move-object v2, v1

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    sput-object v2, Ljavafx/scene/control/Slider$StyleableProperties;->STYLEABLES:Ljava/util/List;

    .line 782
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 656
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Slider$StyleableProperties;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$1700()Ljava/util/List;
    .locals 1

    .prologue
    .line 656
    sget-object v0, Ljavafx/scene/control/Slider$StyleableProperties;->STYLEABLES:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$300()Ljavafx/css/CssMetaData;
    .locals 1

    .prologue
    .line 656
    sget-object v0, Ljavafx/scene/control/Slider$StyleableProperties;->ORIENTATION:Ljavafx/css/CssMetaData;

    return-object v0
.end method

.method static synthetic access$400()Ljavafx/css/CssMetaData;
    .locals 1

    .prologue
    .line 656
    sget-object v0, Ljavafx/scene/control/Slider$StyleableProperties;->SHOW_TICK_LABELS:Ljavafx/css/CssMetaData;

    return-object v0
.end method

.method static synthetic access$500()Ljavafx/css/CssMetaData;
    .locals 1

    .prologue
    .line 656
    sget-object v0, Ljavafx/scene/control/Slider$StyleableProperties;->SHOW_TICK_MARKS:Ljavafx/css/CssMetaData;

    return-object v0
.end method

.method static synthetic access$600()Ljavafx/css/CssMetaData;
    .locals 1

    .prologue
    .line 656
    sget-object v0, Ljavafx/scene/control/Slider$StyleableProperties;->MAJOR_TICK_UNIT:Ljavafx/css/CssMetaData;

    return-object v0
.end method

.method static synthetic access$700()Ljavafx/css/CssMetaData;
    .locals 1

    .prologue
    .line 656
    sget-object v0, Ljavafx/scene/control/Slider$StyleableProperties;->MINOR_TICK_COUNT:Ljavafx/css/CssMetaData;

    return-object v0
.end method

.method static synthetic access$800()Ljavafx/css/CssMetaData;
    .locals 1

    .prologue
    .line 656
    sget-object v0, Ljavafx/scene/control/Slider$StyleableProperties;->SNAP_TO_TICKS:Ljavafx/css/CssMetaData;

    return-object v0
.end method

.method static synthetic access$900()Ljavafx/css/CssMetaData;
    .locals 1

    .prologue
    .line 656
    sget-object v0, Ljavafx/scene/control/Slider$StyleableProperties;->BLOCK_INCREMENT:Ljavafx/css/CssMetaData;

    return-object v0
.end method
