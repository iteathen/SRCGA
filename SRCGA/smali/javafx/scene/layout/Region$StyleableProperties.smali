.class Ljavafx/scene/layout/Region$StyleableProperties;
.super Ljava/lang/Object;
.source "Region.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/layout/Region;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StyleableProperties"
.end annotation


# static fields
.field private static final BACKGROUND:Ljavafx/css/CssMetaData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/css/CssMetaData",
            "<",
            "Ljavafx/scene/layout/Region;",
            "Ljavafx/scene/layout/Background;",
            ">;"
        }
    .end annotation
.end field

.field private static final BORDER:Ljavafx/css/CssMetaData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/css/CssMetaData",
            "<",
            "Ljavafx/scene/layout/Region;",
            "Ljavafx/scene/layout/Border;",
            ">;"
        }
    .end annotation
.end field

.field private static final CACHE_SHAPE:Ljavafx/css/CssMetaData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/css/CssMetaData",
            "<",
            "Ljavafx/scene/layout/Region;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final MAX_HEIGHT:Ljavafx/css/CssMetaData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/css/CssMetaData",
            "<",
            "Ljavafx/scene/layout/Region;",
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
            "Ljavafx/scene/layout/Region;",
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
            "Ljavafx/scene/layout/Region;",
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
            "Ljavafx/scene/layout/Region;",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation
.end field

.field private static final OPAQUE_INSETS:Ljavafx/css/CssMetaData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/css/CssMetaData",
            "<",
            "Ljavafx/scene/layout/Region;",
            "Ljavafx/geometry/Insets;",
            ">;"
        }
    .end annotation
.end field

.field private static final PADDING:Ljavafx/css/CssMetaData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/css/CssMetaData",
            "<",
            "Ljavafx/scene/layout/Region;",
            "Ljavafx/geometry/Insets;",
            ">;"
        }
    .end annotation
.end field

.field private static final POSITION_SHAPE:Ljavafx/css/CssMetaData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/css/CssMetaData",
            "<",
            "Ljavafx/scene/layout/Region;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final PREF_HEIGHT:Ljavafx/css/CssMetaData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/css/CssMetaData",
            "<",
            "Ljavafx/scene/layout/Region;",
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
            "Ljavafx/scene/layout/Region;",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation
.end field

.field private static final SCALE_SHAPE:Ljavafx/css/CssMetaData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/css/CssMetaData",
            "<",
            "Ljavafx/scene/layout/Region;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final SHAPE:Ljavafx/css/CssMetaData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/css/CssMetaData",
            "<",
            "Ljavafx/scene/layout/Region;",
            "Ljavafx/scene/shape/Shape;",
            ">;"
        }
    .end annotation
.end field

.field private static final SNAP_TO_PIXEL:Ljavafx/css/CssMetaData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/css/CssMetaData",
            "<",
            "Ljavafx/scene/layout/Region;",
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
    .locals 10

    .prologue
    .line 3159
    new-instance v2, Ljavafx/scene/layout/Region$StyleableProperties$1;

    move-object v9, v2

    move-object v2, v9

    move-object v3, v9

    const-string v4, "-fx-padding"

    .line 3161
    invoke-static {}, Lcom/sun/javafx/css/converters/InsetsConverter;->getInstance()Ljavafx/css/StyleConverter;

    move-result-object v5

    sget-object v6, Ljavafx/geometry/Insets;->EMPTY:Ljavafx/geometry/Insets;

    invoke-direct {v3, v4, v5, v6}, Ljavafx/scene/layout/Region$StyleableProperties$1;-><init>(Ljava/lang/String;Ljavafx/css/StyleConverter;Ljavafx/geometry/Insets;)V

    sput-object v2, Ljavafx/scene/layout/Region$StyleableProperties;->PADDING:Ljavafx/css/CssMetaData;

    .line 3172
    new-instance v2, Ljavafx/scene/layout/Region$StyleableProperties$2;

    move-object v9, v2

    move-object v2, v9

    move-object v3, v9

    const-string v4, "-fx-opaque-insets"

    .line 3174
    invoke-static {}, Lcom/sun/javafx/css/converters/InsetsConverter;->getInstance()Ljavafx/css/StyleConverter;

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Ljavafx/scene/layout/Region$StyleableProperties$2;-><init>(Ljava/lang/String;Ljavafx/css/StyleConverter;Ljavafx/geometry/Insets;)V

    sput-object v2, Ljavafx/scene/layout/Region$StyleableProperties;->OPAQUE_INSETS:Ljavafx/css/CssMetaData;

    .line 3188
    new-instance v2, Ljavafx/scene/layout/Region$StyleableProperties$3;

    move-object v9, v2

    move-object v2, v9

    move-object v3, v9

    const-string v4, "-fx-region-background"

    sget-object v5, Ljavafx/scene/layout/BackgroundConverter;->INSTANCE:Ljavafx/css/StyleConverter;

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 3193
    invoke-static {}, Ljavafx/scene/layout/Background;->getClassCssMetaData()Ljava/util/List;

    move-result-object v8

    invoke-direct/range {v3 .. v8}, Ljavafx/scene/layout/Region$StyleableProperties$3;-><init>(Ljava/lang/String;Ljavafx/css/StyleConverter;Ljavafx/scene/layout/Background;ZLjava/util/List;)V

    sput-object v2, Ljavafx/scene/layout/Region$StyleableProperties;->BACKGROUND:Ljavafx/css/CssMetaData;

    .line 3204
    new-instance v2, Ljavafx/scene/layout/Region$StyleableProperties$4;

    move-object v9, v2

    move-object v2, v9

    move-object v3, v9

    const-string v4, "-fx-region-border"

    .line 3206
    invoke-static {}, Ljavafx/scene/layout/BorderConverter;->getInstance()Ljavafx/scene/layout/BorderConverter;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 3209
    invoke-static {}, Ljavafx/scene/layout/Border;->getClassCssMetaData()Ljava/util/List;

    move-result-object v8

    invoke-direct/range {v3 .. v8}, Ljavafx/scene/layout/Region$StyleableProperties$4;-><init>(Ljava/lang/String;Ljavafx/css/StyleConverter;Ljavafx/scene/layout/Border;ZLjava/util/List;)V

    sput-object v2, Ljavafx/scene/layout/Region$StyleableProperties;->BORDER:Ljavafx/css/CssMetaData;

    .line 3220
    new-instance v2, Ljavafx/scene/layout/Region$StyleableProperties$5;

    move-object v9, v2

    move-object v2, v9

    move-object v3, v9

    const-string v4, "-fx-shape"

    .line 3222
    invoke-static {}, Lcom/sun/javafx/css/converters/ShapeConverter;->getInstance()Ljavafx/css/StyleConverter;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljavafx/scene/layout/Region$StyleableProperties$5;-><init>(Ljava/lang/String;Ljavafx/css/StyleConverter;)V

    sput-object v2, Ljavafx/scene/layout/Region$StyleableProperties;->SHAPE:Ljavafx/css/CssMetaData;

    .line 3234
    new-instance v2, Ljavafx/scene/layout/Region$StyleableProperties$6;

    move-object v9, v2

    move-object v2, v9

    move-object v3, v9

    const-string v4, "-fx-scale-shape"

    .line 3236
    invoke-static {}, Lcom/sun/javafx/css/converters/BooleanConverter;->getInstance()Ljavafx/css/StyleConverter;

    move-result-object v5

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {v3, v4, v5, v6}, Ljavafx/scene/layout/Region$StyleableProperties$6;-><init>(Ljava/lang/String;Ljavafx/css/StyleConverter;Ljava/lang/Boolean;)V

    sput-object v2, Ljavafx/scene/layout/Region$StyleableProperties;->SCALE_SHAPE:Ljavafx/css/CssMetaData;

    .line 3247
    new-instance v2, Ljavafx/scene/layout/Region$StyleableProperties$7;

    move-object v9, v2

    move-object v2, v9

    move-object v3, v9

    const-string v4, "-fx-position-shape"

    .line 3249
    invoke-static {}, Lcom/sun/javafx/css/converters/BooleanConverter;->getInstance()Ljavafx/css/StyleConverter;

    move-result-object v5

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {v3, v4, v5, v6}, Ljavafx/scene/layout/Region$StyleableProperties$7;-><init>(Ljava/lang/String;Ljavafx/css/StyleConverter;Ljava/lang/Boolean;)V

    sput-object v2, Ljavafx/scene/layout/Region$StyleableProperties;->POSITION_SHAPE:Ljavafx/css/CssMetaData;

    .line 3260
    new-instance v2, Ljavafx/scene/layout/Region$StyleableProperties$8;

    move-object v9, v2

    move-object v2, v9

    move-object v3, v9

    const-string v4, "-fx-cache-shape"

    .line 3262
    invoke-static {}, Lcom/sun/javafx/css/converters/BooleanConverter;->getInstance()Ljavafx/css/StyleConverter;

    move-result-object v5

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {v3, v4, v5, v6}, Ljavafx/scene/layout/Region$StyleableProperties$8;-><init>(Ljava/lang/String;Ljavafx/css/StyleConverter;Ljava/lang/Boolean;)V

    sput-object v2, Ljavafx/scene/layout/Region$StyleableProperties;->CACHE_SHAPE:Ljavafx/css/CssMetaData;

    .line 3273
    new-instance v2, Ljavafx/scene/layout/Region$StyleableProperties$9;

    move-object v9, v2

    move-object v2, v9

    move-object v3, v9

    const-string v4, "-fx-snap-to-pixel"

    .line 3275
    invoke-static {}, Lcom/sun/javafx/css/converters/BooleanConverter;->getInstance()Ljavafx/css/StyleConverter;

    move-result-object v5

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {v3, v4, v5, v6}, Ljavafx/scene/layout/Region$StyleableProperties$9;-><init>(Ljava/lang/String;Ljavafx/css/StyleConverter;Ljava/lang/Boolean;)V

    sput-object v2, Ljavafx/scene/layout/Region$StyleableProperties;->SNAP_TO_PIXEL:Ljavafx/css/CssMetaData;

    .line 3287
    new-instance v2, Ljavafx/scene/layout/Region$StyleableProperties$10;

    move-object v9, v2

    move-object v2, v9

    move-object v3, v9

    const-string v4, "-fx-min-height"

    .line 3289
    invoke-static {}, Lcom/sun/javafx/css/converters/SizeConverter;->getInstance()Ljavafx/css/StyleConverter;

    move-result-object v5

    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6}, Ljavafx/scene/layout/Region$StyleableProperties$10;-><init>(Ljava/lang/String;Ljavafx/css/StyleConverter;Ljava/lang/Number;)V

    sput-object v2, Ljavafx/scene/layout/Region$StyleableProperties;->MIN_HEIGHT:Ljavafx/css/CssMetaData;

    .line 3301
    new-instance v2, Ljavafx/scene/layout/Region$StyleableProperties$11;

    move-object v9, v2

    move-object v2, v9

    move-object v3, v9

    const-string v4, "-fx-pref-height"

    .line 3303
    invoke-static {}, Lcom/sun/javafx/css/converters/SizeConverter;->getInstance()Ljavafx/css/StyleConverter;

    move-result-object v5

    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6}, Ljavafx/scene/layout/Region$StyleableProperties$11;-><init>(Ljava/lang/String;Ljavafx/css/StyleConverter;Ljava/lang/Number;)V

    sput-object v2, Ljavafx/scene/layout/Region$StyleableProperties;->PREF_HEIGHT:Ljavafx/css/CssMetaData;

    .line 3315
    new-instance v2, Ljavafx/scene/layout/Region$StyleableProperties$12;

    move-object v9, v2

    move-object v2, v9

    move-object v3, v9

    const-string v4, "-fx-max-height"

    .line 3317
    invoke-static {}, Lcom/sun/javafx/css/converters/SizeConverter;->getInstance()Ljavafx/css/StyleConverter;

    move-result-object v5

    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6}, Ljavafx/scene/layout/Region$StyleableProperties$12;-><init>(Ljava/lang/String;Ljavafx/css/StyleConverter;Ljava/lang/Number;)V

    sput-object v2, Ljavafx/scene/layout/Region$StyleableProperties;->MAX_HEIGHT:Ljavafx/css/CssMetaData;

    .line 3329
    new-instance v2, Ljavafx/scene/layout/Region$StyleableProperties$13;

    move-object v9, v2

    move-object v2, v9

    move-object v3, v9

    const-string v4, "-fx-min-width"

    .line 3331
    invoke-static {}, Lcom/sun/javafx/css/converters/SizeConverter;->getInstance()Ljavafx/css/StyleConverter;

    move-result-object v5

    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6}, Ljavafx/scene/layout/Region$StyleableProperties$13;-><init>(Ljava/lang/String;Ljavafx/css/StyleConverter;Ljava/lang/Number;)V

    sput-object v2, Ljavafx/scene/layout/Region$StyleableProperties;->MIN_WIDTH:Ljavafx/css/CssMetaData;

    .line 3343
    new-instance v2, Ljavafx/scene/layout/Region$StyleableProperties$14;

    move-object v9, v2

    move-object v2, v9

    move-object v3, v9

    const-string v4, "-fx-pref-width"

    .line 3345
    invoke-static {}, Lcom/sun/javafx/css/converters/SizeConverter;->getInstance()Ljavafx/css/StyleConverter;

    move-result-object v5

    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6}, Ljavafx/scene/layout/Region$StyleableProperties$14;-><init>(Ljava/lang/String;Ljavafx/css/StyleConverter;Ljava/lang/Number;)V

    sput-object v2, Ljavafx/scene/layout/Region$StyleableProperties;->PREF_WIDTH:Ljavafx/css/CssMetaData;

    .line 3357
    new-instance v2, Ljavafx/scene/layout/Region$StyleableProperties$15;

    move-object v9, v2

    move-object v2, v9

    move-object v3, v9

    const-string v4, "-fx-max-width"

    .line 3359
    invoke-static {}, Lcom/sun/javafx/css/converters/SizeConverter;->getInstance()Ljavafx/css/StyleConverter;

    move-result-object v5

    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6}, Ljavafx/scene/layout/Region$StyleableProperties$15;-><init>(Ljava/lang/String;Ljavafx/css/StyleConverter;Ljava/lang/Number;)V

    sput-object v2, Ljavafx/scene/layout/Region$StyleableProperties;->MAX_WIDTH:Ljavafx/css/CssMetaData;

    .line 3374
    new-instance v2, Ljava/util/ArrayList;

    move-object v9, v2

    move-object v2, v9

    move-object v3, v9

    .line 3375
    invoke-static {}, Ljavafx/scene/Parent;->getClassCssMetaData()Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v1, v2

    .line 3376
    .local v1, "styleables":Ljava/util/List;, "Ljava/util/List<Ljavafx/css/CssMetaData<+Ljavafx/css/Styleable;*>;>;"
    move-object v2, v1

    sget-object v3, Ljavafx/scene/layout/Region$StyleableProperties;->PADDING:Ljavafx/css/CssMetaData;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 3377
    move-object v2, v1

    sget-object v3, Ljavafx/scene/layout/Region$StyleableProperties;->BACKGROUND:Ljavafx/css/CssMetaData;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 3378
    move-object v2, v1

    sget-object v3, Ljavafx/scene/layout/Region$StyleableProperties;->BORDER:Ljavafx/css/CssMetaData;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 3379
    move-object v2, v1

    sget-object v3, Ljavafx/scene/layout/Region$StyleableProperties;->OPAQUE_INSETS:Ljavafx/css/CssMetaData;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 3380
    move-object v2, v1

    sget-object v3, Ljavafx/scene/layout/Region$StyleableProperties;->SHAPE:Ljavafx/css/CssMetaData;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 3381
    move-object v2, v1

    sget-object v3, Ljavafx/scene/layout/Region$StyleableProperties;->SCALE_SHAPE:Ljavafx/css/CssMetaData;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 3382
    move-object v2, v1

    sget-object v3, Ljavafx/scene/layout/Region$StyleableProperties;->POSITION_SHAPE:Ljavafx/css/CssMetaData;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 3383
    move-object v2, v1

    sget-object v3, Ljavafx/scene/layout/Region$StyleableProperties;->SNAP_TO_PIXEL:Ljavafx/css/CssMetaData;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 3384
    move-object v2, v1

    sget-object v3, Ljavafx/scene/layout/Region$StyleableProperties;->MIN_WIDTH:Ljavafx/css/CssMetaData;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 3385
    move-object v2, v1

    sget-object v3, Ljavafx/scene/layout/Region$StyleableProperties;->PREF_WIDTH:Ljavafx/css/CssMetaData;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 3386
    move-object v2, v1

    sget-object v3, Ljavafx/scene/layout/Region$StyleableProperties;->MAX_WIDTH:Ljavafx/css/CssMetaData;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 3387
    move-object v2, v1

    sget-object v3, Ljavafx/scene/layout/Region$StyleableProperties;->MIN_HEIGHT:Ljavafx/css/CssMetaData;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 3388
    move-object v2, v1

    sget-object v3, Ljavafx/scene/layout/Region$StyleableProperties;->PREF_HEIGHT:Ljavafx/css/CssMetaData;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 3389
    move-object v2, v1

    sget-object v3, Ljavafx/scene/layout/Region$StyleableProperties;->MAX_HEIGHT:Ljavafx/css/CssMetaData;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 3390
    move-object v2, v1

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    sput-object v2, Ljavafx/scene/layout/Region$StyleableProperties;->STYLEABLES:Ljava/util/List;

    .line 3391
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 3158
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/Region$StyleableProperties;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljavafx/css/CssMetaData;
    .locals 1

    .prologue
    .line 3158
    sget-object v0, Ljavafx/scene/layout/Region$StyleableProperties;->SNAP_TO_PIXEL:Ljavafx/css/CssMetaData;

    return-object v0
.end method

.method static synthetic access$1000()Ljavafx/css/CssMetaData;
    .locals 1

    .prologue
    .line 3158
    sget-object v0, Ljavafx/scene/layout/Region$StyleableProperties;->BORDER:Ljavafx/css/CssMetaData;

    return-object v0
.end method

.method static synthetic access$1300()Ljavafx/css/CssMetaData;
    .locals 1

    .prologue
    .line 3158
    sget-object v0, Ljavafx/scene/layout/Region$StyleableProperties;->OPAQUE_INSETS:Ljavafx/css/CssMetaData;

    return-object v0
.end method

.method static synthetic access$2000()Ljavafx/css/CssMetaData;
    .locals 1

    .prologue
    .line 3158
    sget-object v0, Ljavafx/scene/layout/Region$StyleableProperties;->MIN_WIDTH:Ljavafx/css/CssMetaData;

    return-object v0
.end method

.method static synthetic access$2100()Ljavafx/css/CssMetaData;
    .locals 1

    .prologue
    .line 3158
    sget-object v0, Ljavafx/scene/layout/Region$StyleableProperties;->MIN_HEIGHT:Ljavafx/css/CssMetaData;

    return-object v0
.end method

.method static synthetic access$2200()Ljavafx/css/CssMetaData;
    .locals 1

    .prologue
    .line 3158
    sget-object v0, Ljavafx/scene/layout/Region$StyleableProperties;->PREF_WIDTH:Ljavafx/css/CssMetaData;

    return-object v0
.end method

.method static synthetic access$2300()Ljavafx/css/CssMetaData;
    .locals 1

    .prologue
    .line 3158
    sget-object v0, Ljavafx/scene/layout/Region$StyleableProperties;->PREF_HEIGHT:Ljavafx/css/CssMetaData;

    return-object v0
.end method

.method static synthetic access$2400()Ljavafx/css/CssMetaData;
    .locals 1

    .prologue
    .line 3158
    sget-object v0, Ljavafx/scene/layout/Region$StyleableProperties;->MAX_WIDTH:Ljavafx/css/CssMetaData;

    return-object v0
.end method

.method static synthetic access$2500()Ljavafx/css/CssMetaData;
    .locals 1

    .prologue
    .line 3158
    sget-object v0, Ljavafx/scene/layout/Region$StyleableProperties;->MAX_HEIGHT:Ljavafx/css/CssMetaData;

    return-object v0
.end method

.method static synthetic access$2700()Ljavafx/css/CssMetaData;
    .locals 1

    .prologue
    .line 3158
    sget-object v0, Ljavafx/scene/layout/Region$StyleableProperties;->SHAPE:Ljavafx/css/CssMetaData;

    return-object v0
.end method

.method static synthetic access$3000()Ljavafx/css/CssMetaData;
    .locals 1

    .prologue
    .line 3158
    sget-object v0, Ljavafx/scene/layout/Region$StyleableProperties;->SCALE_SHAPE:Ljavafx/css/CssMetaData;

    return-object v0
.end method

.method static synthetic access$3300()Ljavafx/css/CssMetaData;
    .locals 1

    .prologue
    .line 3158
    sget-object v0, Ljavafx/scene/layout/Region$StyleableProperties;->POSITION_SHAPE:Ljavafx/css/CssMetaData;

    return-object v0
.end method

.method static synthetic access$3600()Ljavafx/css/CssMetaData;
    .locals 1

    .prologue
    .line 3158
    sget-object v0, Ljavafx/scene/layout/Region$StyleableProperties;->CACHE_SHAPE:Ljavafx/css/CssMetaData;

    return-object v0
.end method

.method static synthetic access$400()Ljavafx/css/CssMetaData;
    .locals 1

    .prologue
    .line 3158
    sget-object v0, Ljavafx/scene/layout/Region$StyleableProperties;->PADDING:Ljavafx/css/CssMetaData;

    return-object v0
.end method

.method static synthetic access$5200()Ljava/util/List;
    .locals 1

    .prologue
    .line 3158
    sget-object v0, Ljavafx/scene/layout/Region$StyleableProperties;->STYLEABLES:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$600()Ljavafx/css/CssMetaData;
    .locals 1

    .prologue
    .line 3158
    sget-object v0, Ljavafx/scene/layout/Region$StyleableProperties;->BACKGROUND:Ljavafx/css/CssMetaData;

    return-object v0
.end method
