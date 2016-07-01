.class Ljavafx/scene/chart/Axis$StyleableProperties;
.super Ljava/lang/Object;
.source "Axis.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/chart/Axis;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StyleableProperties"
.end annotation


# static fields
.field private static final SIDE:Ljavafx/css/CssMetaData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/css/CssMetaData",
            "<",
            "Ljavafx/scene/chart/Axis",
            "<*>;",
            "Ljavafx/geometry/Side;",
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

.field private static final TICK_LABELS_VISIBLE:Ljavafx/css/CssMetaData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/css/CssMetaData",
            "<",
            "Ljavafx/scene/chart/Axis",
            "<*>;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final TICK_LABEL_FILL:Ljavafx/css/CssMetaData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/css/CssMetaData",
            "<",
            "Ljavafx/scene/chart/Axis",
            "<*>;",
            "Ljavafx/scene/paint/Paint;",
            ">;"
        }
    .end annotation
.end field

.field private static final TICK_LABEL_FONT:Ljavafx/css/CssMetaData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/css/CssMetaData",
            "<",
            "Ljavafx/scene/chart/Axis",
            "<*>;",
            "Ljavafx/scene/text/Font;",
            ">;"
        }
    .end annotation
.end field

.field private static final TICK_LABEL_TICK_GAP:Ljavafx/css/CssMetaData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/css/CssMetaData",
            "<",
            "Ljavafx/scene/chart/Axis",
            "<*>;",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation
.end field

.field private static final TICK_LENGTH:Ljavafx/css/CssMetaData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/css/CssMetaData",
            "<",
            "Ljavafx/scene/chart/Axis",
            "<*>;",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation
.end field

.field private static final TICK_MARK_VISIBLE:Ljavafx/css/CssMetaData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/css/CssMetaData",
            "<",
            "Ljavafx/scene/chart/Axis",
            "<*>;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    .line 1105
    new-instance v2, Ljavafx/scene/chart/Axis$StyleableProperties$1;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    const-string v4, "-fx-side"

    new-instance v5, Lcom/sun/javafx/css/converters/EnumConverter;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    const-class v7, Ljavafx/geometry/Side;

    invoke-direct {v6, v7}, Lcom/sun/javafx/css/converters/EnumConverter;-><init>(Ljava/lang/Class;)V

    invoke-direct {v3, v4, v5}, Ljavafx/scene/chart/Axis$StyleableProperties$1;-><init>(Ljava/lang/String;Ljavafx/css/StyleConverter;)V

    sput-object v2, Ljavafx/scene/chart/Axis$StyleableProperties;->SIDE:Ljavafx/css/CssMetaData;

    .line 1121
    new-instance v2, Ljavafx/scene/chart/Axis$StyleableProperties$2;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    const-string v4, "-fx-tick-length"

    .line 1123
    invoke-static {}, Lcom/sun/javafx/css/converters/SizeConverter;->getInstance()Ljavafx/css/StyleConverter;

    move-result-object v5

    const-wide/high16 v6, 0x4020000000000000L    # 8.0

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6}, Ljavafx/scene/chart/Axis$StyleableProperties$2;-><init>(Ljava/lang/String;Ljavafx/css/StyleConverter;Ljava/lang/Number;)V

    sput-object v2, Ljavafx/scene/chart/Axis$StyleableProperties;->TICK_LENGTH:Ljavafx/css/CssMetaData;

    .line 1136
    new-instance v2, Ljavafx/scene/chart/Axis$StyleableProperties$3;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    const-string v4, "-fx-tick-label-font"

    const-string v5, "system"

    const-wide/high16 v6, 0x4020000000000000L    # 8.0

    .line 1138
    invoke-static {v5, v6, v7}, Ljavafx/scene/text/Font;->font(Ljava/lang/String;D)Ljavafx/scene/text/Font;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljavafx/scene/chart/Axis$StyleableProperties$3;-><init>(Ljava/lang/String;Ljavafx/scene/text/Font;)V

    sput-object v2, Ljavafx/scene/chart/Axis$StyleableProperties;->TICK_LABEL_FONT:Ljavafx/css/CssMetaData;

    .line 1152
    new-instance v2, Ljavafx/scene/chart/Axis$StyleableProperties$4;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    const-string v4, "-fx-tick-label-fill"

    .line 1154
    invoke-static {}, Lcom/sun/javafx/css/converters/PaintConverter;->getInstance()Ljavafx/css/StyleConverter;

    move-result-object v5

    sget-object v6, Ljavafx/scene/paint/Color;->BLACK:Ljavafx/scene/paint/Color;

    invoke-direct {v3, v4, v5, v6}, Ljavafx/scene/chart/Axis$StyleableProperties$4;-><init>(Ljava/lang/String;Ljavafx/css/StyleConverter;Ljavafx/scene/paint/Paint;)V

    sput-object v2, Ljavafx/scene/chart/Axis$StyleableProperties;->TICK_LABEL_FILL:Ljavafx/css/CssMetaData;

    .line 1168
    new-instance v2, Ljavafx/scene/chart/Axis$StyleableProperties$5;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    const-string v4, "-fx-tick-label-gap"

    .line 1170
    invoke-static {}, Lcom/sun/javafx/css/converters/SizeConverter;->getInstance()Ljavafx/css/StyleConverter;

    move-result-object v5

    const-wide/high16 v6, 0x4008000000000000L    # 3.0

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6}, Ljavafx/scene/chart/Axis$StyleableProperties$5;-><init>(Ljava/lang/String;Ljavafx/css/StyleConverter;Ljava/lang/Number;)V

    sput-object v2, Ljavafx/scene/chart/Axis$StyleableProperties;->TICK_LABEL_TICK_GAP:Ljavafx/css/CssMetaData;

    .line 1183
    new-instance v2, Ljavafx/scene/chart/Axis$StyleableProperties$6;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    const-string v4, "-fx-tick-mark-visible"

    .line 1185
    invoke-static {}, Lcom/sun/javafx/css/converters/BooleanConverter;->getInstance()Ljavafx/css/StyleConverter;

    move-result-object v5

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {v3, v4, v5, v6}, Ljavafx/scene/chart/Axis$StyleableProperties$6;-><init>(Ljava/lang/String;Ljavafx/css/StyleConverter;Ljava/lang/Boolean;)V

    sput-object v2, Ljavafx/scene/chart/Axis$StyleableProperties;->TICK_MARK_VISIBLE:Ljavafx/css/CssMetaData;

    .line 1198
    new-instance v2, Ljavafx/scene/chart/Axis$StyleableProperties$7;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    const-string v4, "-fx-tick-labels-visible"

    .line 1200
    invoke-static {}, Lcom/sun/javafx/css/converters/BooleanConverter;->getInstance()Ljavafx/css/StyleConverter;

    move-result-object v5

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {v3, v4, v5, v6}, Ljavafx/scene/chart/Axis$StyleableProperties$7;-><init>(Ljava/lang/String;Ljavafx/css/StyleConverter;Ljava/lang/Boolean;)V

    sput-object v2, Ljavafx/scene/chart/Axis$StyleableProperties;->TICK_LABELS_VISIBLE:Ljavafx/css/CssMetaData;

    .line 1215
    new-instance v2, Ljava/util/ArrayList;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    .line 1216
    invoke-static {}, Ljavafx/scene/layout/Region;->getClassCssMetaData()Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v1, v2

    .line 1217
    .local v1, "styleables":Ljava/util/List;, "Ljava/util/List<Ljavafx/css/CssMetaData<+Ljavafx/css/Styleable;*>;>;"
    move-object v2, v1

    sget-object v3, Ljavafx/scene/chart/Axis$StyleableProperties;->SIDE:Ljavafx/css/CssMetaData;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 1218
    move-object v2, v1

    sget-object v3, Ljavafx/scene/chart/Axis$StyleableProperties;->TICK_LENGTH:Ljavafx/css/CssMetaData;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 1219
    move-object v2, v1

    sget-object v3, Ljavafx/scene/chart/Axis$StyleableProperties;->TICK_LABEL_FONT:Ljavafx/css/CssMetaData;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 1220
    move-object v2, v1

    sget-object v3, Ljavafx/scene/chart/Axis$StyleableProperties;->TICK_LABEL_FILL:Ljavafx/css/CssMetaData;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 1221
    move-object v2, v1

    sget-object v3, Ljavafx/scene/chart/Axis$StyleableProperties;->TICK_LABEL_TICK_GAP:Ljavafx/css/CssMetaData;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 1222
    move-object v2, v1

    sget-object v3, Ljavafx/scene/chart/Axis$StyleableProperties;->TICK_MARK_VISIBLE:Ljavafx/css/CssMetaData;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 1223
    move-object v2, v1

    sget-object v3, Ljavafx/scene/chart/Axis$StyleableProperties;->TICK_LABELS_VISIBLE:Ljavafx/css/CssMetaData;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 1224
    move-object v2, v1

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    sput-object v2, Ljavafx/scene/chart/Axis$StyleableProperties;->STYLEABLES:Ljava/util/List;

    .line 1225
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 1104
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/chart/Axis$StyleableProperties;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$1100()Ljavafx/css/CssMetaData;
    .locals 1

    .prologue
    .line 1104
    sget-object v0, Ljavafx/scene/chart/Axis$StyleableProperties;->TICK_LENGTH:Ljavafx/css/CssMetaData;

    return-object v0
.end method

.method static synthetic access$1200()Ljavafx/css/CssMetaData;
    .locals 1

    .prologue
    .line 1104
    sget-object v0, Ljavafx/scene/chart/Axis$StyleableProperties;->TICK_LABEL_FONT:Ljavafx/css/CssMetaData;

    return-object v0
.end method

.method static synthetic access$1300()Ljavafx/css/CssMetaData;
    .locals 1

    .prologue
    .line 1104
    sget-object v0, Ljavafx/scene/chart/Axis$StyleableProperties;->TICK_LABEL_FILL:Ljavafx/css/CssMetaData;

    return-object v0
.end method

.method static synthetic access$1400()Ljavafx/css/CssMetaData;
    .locals 1

    .prologue
    .line 1104
    sget-object v0, Ljavafx/scene/chart/Axis$StyleableProperties;->TICK_LABEL_TICK_GAP:Ljavafx/css/CssMetaData;

    return-object v0
.end method

.method static synthetic access$2100()Ljava/util/List;
    .locals 1

    .prologue
    .line 1104
    sget-object v0, Ljavafx/scene/chart/Axis$StyleableProperties;->STYLEABLES:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$400()Ljavafx/css/CssMetaData;
    .locals 1

    .prologue
    .line 1104
    sget-object v0, Ljavafx/scene/chart/Axis$StyleableProperties;->SIDE:Ljavafx/css/CssMetaData;

    return-object v0
.end method

.method static synthetic access$700()Ljavafx/css/CssMetaData;
    .locals 1

    .prologue
    .line 1104
    sget-object v0, Ljavafx/scene/chart/Axis$StyleableProperties;->TICK_MARK_VISIBLE:Ljavafx/css/CssMetaData;

    return-object v0
.end method

.method static synthetic access$900()Ljavafx/css/CssMetaData;
    .locals 1

    .prologue
    .line 1104
    sget-object v0, Ljavafx/scene/chart/Axis$StyleableProperties;->TICK_LABELS_VISIBLE:Ljavafx/css/CssMetaData;

    return-object v0
.end method
