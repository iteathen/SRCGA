.class public final Ljavafx/scene/layout/Background;
.super Ljava/lang/Object;
.source "Background.java"


# static fields
.field static final BACKGROUND_COLOR:Ljavafx/css/CssMetaData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/css/CssMetaData",
            "<",
            "Ljavafx/scene/Node;",
            "[",
            "Ljavafx/scene/paint/Paint;",
            ">;"
        }
    .end annotation
.end field

.field static final BACKGROUND_IMAGE:Ljavafx/css/CssMetaData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/css/CssMetaData",
            "<",
            "Ljavafx/scene/Node;",
            "[",
            "Ljavafx/scene/image/Image;",
            ">;"
        }
    .end annotation
.end field

.field static final BACKGROUND_INSETS:Ljavafx/css/CssMetaData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/css/CssMetaData",
            "<",
            "Ljavafx/scene/Node;",
            "[",
            "Ljavafx/geometry/Insets;",
            ">;"
        }
    .end annotation
.end field

.field static final BACKGROUND_POSITION:Ljavafx/css/CssMetaData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/css/CssMetaData",
            "<",
            "Ljavafx/scene/Node;",
            "[",
            "Ljavafx/scene/layout/BackgroundPosition;",
            ">;"
        }
    .end annotation
.end field

.field static final BACKGROUND_RADIUS:Ljavafx/css/CssMetaData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/css/CssMetaData",
            "<",
            "Ljavafx/scene/Node;",
            "[",
            "Ljavafx/scene/layout/CornerRadii;",
            ">;"
        }
    .end annotation
.end field

.field static final BACKGROUND_REPEAT:Ljavafx/css/CssMetaData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/css/CssMetaData",
            "<",
            "Ljavafx/scene/Node;",
            "[",
            "Lcom/sun/javafx/scene/layout/region/RepeatStruct;",
            ">;"
        }
    .end annotation
.end field

.field static final BACKGROUND_SIZE:Ljavafx/css/CssMetaData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/css/CssMetaData",
            "<",
            "Ljavafx/scene/Node;",
            "[",
            "Ljavafx/scene/layout/BackgroundSize;",
            ">;"
        }
    .end annotation
.end field

.field public static final EMPTY:Ljavafx/scene/layout/Background;

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


# instance fields
.field final fills:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljavafx/scene/layout/BackgroundFill;",
            ">;"
        }
    .end annotation
.end field

.field private final hasOpaqueFill:Z

.field final hasPercentageBasedFills:Z

.field final hasPercentageBasedOpaqueFills:Z

.field private final hash:I

.field final images:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljavafx/scene/layout/BackgroundImage;",
            ">;"
        }
    .end annotation
.end field

.field private final opaqueFillBottom:D

.field private final opaqueFillLeft:D

.field private final opaqueFillRight:D

.field private final opaqueFillTop:D

.field final outsets:Ljavafx/geometry/Insets;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .prologue
    .line 74
    new-instance v0, Lcom/sun/javafx/css/SubCssMetaData;

    move-object v11, v0

    move-object v0, v11

    move-object v1, v11

    const-string v2, "-fx-background-color"

    .line 76
    invoke-static {}, Lcom/sun/javafx/css/converters/PaintConverter$SequenceConverter;->getInstance()Lcom/sun/javafx/css/converters/PaintConverter$SequenceConverter;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljavafx/scene/paint/Paint;

    move-object v11, v4

    move-object v4, v11

    move-object v5, v11

    const/4 v6, 0x0

    sget-object v7, Ljavafx/scene/paint/Color;->TRANSPARENT:Ljavafx/scene/paint/Color;

    aput-object v7, v5, v6

    invoke-direct {v1, v2, v3, v4}, Lcom/sun/javafx/css/SubCssMetaData;-><init>(Ljava/lang/String;Ljavafx/css/StyleConverter;Ljava/lang/Object;)V

    sput-object v0, Ljavafx/scene/layout/Background;->BACKGROUND_COLOR:Ljavafx/css/CssMetaData;

    .line 79
    new-instance v0, Lcom/sun/javafx/css/SubCssMetaData;

    move-object v11, v0

    move-object v0, v11

    move-object v1, v11

    const-string v2, "-fx-background-radius"

    .line 81
    invoke-static {}, Lcom/sun/javafx/scene/layout/region/CornerRadiiConverter;->getInstance()Lcom/sun/javafx/scene/layout/region/CornerRadiiConverter;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljavafx/scene/layout/CornerRadii;

    move-object v11, v4

    move-object v4, v11

    move-object v5, v11

    const/4 v6, 0x0

    sget-object v7, Ljavafx/scene/layout/CornerRadii;->EMPTY:Ljavafx/scene/layout/CornerRadii;

    aput-object v7, v5, v6

    invoke-direct {v1, v2, v3, v4}, Lcom/sun/javafx/css/SubCssMetaData;-><init>(Ljava/lang/String;Ljavafx/css/StyleConverter;Ljava/lang/Object;)V

    sput-object v0, Ljavafx/scene/layout/Background;->BACKGROUND_RADIUS:Ljavafx/css/CssMetaData;

    .line 84
    new-instance v0, Lcom/sun/javafx/css/SubCssMetaData;

    move-object v11, v0

    move-object v0, v11

    move-object v1, v11

    const-string v2, "-fx-background-insets"

    .line 86
    invoke-static {}, Lcom/sun/javafx/css/converters/InsetsConverter$SequenceConverter;->getInstance()Lcom/sun/javafx/css/converters/InsetsConverter$SequenceConverter;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljavafx/geometry/Insets;

    move-object v11, v4

    move-object v4, v11

    move-object v5, v11

    const/4 v6, 0x0

    sget-object v7, Ljavafx/geometry/Insets;->EMPTY:Ljavafx/geometry/Insets;

    aput-object v7, v5, v6

    invoke-direct {v1, v2, v3, v4}, Lcom/sun/javafx/css/SubCssMetaData;-><init>(Ljava/lang/String;Ljavafx/css/StyleConverter;Ljava/lang/Object;)V

    sput-object v0, Ljavafx/scene/layout/Background;->BACKGROUND_INSETS:Ljavafx/css/CssMetaData;

    .line 89
    new-instance v0, Lcom/sun/javafx/css/SubCssMetaData;

    move-object v11, v0

    move-object v0, v11

    move-object v1, v11

    const-string v2, "-fx-background-image"

    .line 91
    invoke-static {}, Lcom/sun/javafx/css/converters/URLConverter$SequenceConverter;->getInstance()Lcom/sun/javafx/css/converters/URLConverter$SequenceConverter;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/sun/javafx/css/SubCssMetaData;-><init>(Ljava/lang/String;Ljavafx/css/StyleConverter;)V

    sput-object v0, Ljavafx/scene/layout/Background;->BACKGROUND_IMAGE:Ljavafx/css/CssMetaData;

    .line 93
    new-instance v0, Lcom/sun/javafx/css/SubCssMetaData;

    move-object v11, v0

    move-object v0, v11

    move-object v1, v11

    const-string v2, "-fx-background-repeat"

    .line 95
    invoke-static {}, Lcom/sun/javafx/scene/layout/region/RepeatStructConverter;->getInstance()Lcom/sun/javafx/scene/layout/region/RepeatStructConverter;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Lcom/sun/javafx/scene/layout/region/RepeatStruct;

    move-object v11, v4

    move-object v4, v11

    move-object v5, v11

    const/4 v6, 0x0

    new-instance v7, Lcom/sun/javafx/scene/layout/region/RepeatStruct;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    sget-object v9, Ljavafx/scene/layout/BackgroundRepeat;->REPEAT:Ljavafx/scene/layout/BackgroundRepeat;

    sget-object v10, Ljavafx/scene/layout/BackgroundRepeat;->REPEAT:Ljavafx/scene/layout/BackgroundRepeat;

    invoke-direct {v8, v9, v10}, Lcom/sun/javafx/scene/layout/region/RepeatStruct;-><init>(Ljavafx/scene/layout/BackgroundRepeat;Ljavafx/scene/layout/BackgroundRepeat;)V

    aput-object v7, v5, v6

    invoke-direct {v1, v2, v3, v4}, Lcom/sun/javafx/css/SubCssMetaData;-><init>(Ljava/lang/String;Ljavafx/css/StyleConverter;Ljava/lang/Object;)V

    sput-object v0, Ljavafx/scene/layout/Background;->BACKGROUND_REPEAT:Ljavafx/css/CssMetaData;

    .line 99
    new-instance v0, Lcom/sun/javafx/css/SubCssMetaData;

    move-object v11, v0

    move-object v0, v11

    move-object v1, v11

    const-string v2, "-fx-background-position"

    .line 101
    invoke-static {}, Lcom/sun/javafx/scene/layout/region/LayeredBackgroundPositionConverter;->getInstance()Lcom/sun/javafx/scene/layout/region/LayeredBackgroundPositionConverter;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljavafx/scene/layout/BackgroundPosition;

    move-object v11, v4

    move-object v4, v11

    move-object v5, v11

    const/4 v6, 0x0

    sget-object v7, Ljavafx/scene/layout/BackgroundPosition;->DEFAULT:Ljavafx/scene/layout/BackgroundPosition;

    aput-object v7, v5, v6

    invoke-direct {v1, v2, v3, v4}, Lcom/sun/javafx/css/SubCssMetaData;-><init>(Ljava/lang/String;Ljavafx/css/StyleConverter;Ljava/lang/Object;)V

    sput-object v0, Ljavafx/scene/layout/Background;->BACKGROUND_POSITION:Ljavafx/css/CssMetaData;

    .line 104
    new-instance v0, Lcom/sun/javafx/css/SubCssMetaData;

    move-object v11, v0

    move-object v0, v11

    move-object v1, v11

    const-string v2, "-fx-background-size"

    .line 106
    invoke-static {}, Lcom/sun/javafx/scene/layout/region/LayeredBackgroundSizeConverter;->getInstance()Lcom/sun/javafx/scene/layout/region/LayeredBackgroundSizeConverter;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljavafx/scene/layout/BackgroundSize;

    move-object v11, v4

    move-object v4, v11

    move-object v5, v11

    const/4 v6, 0x0

    sget-object v7, Ljavafx/scene/layout/BackgroundSize;->DEFAULT:Ljavafx/scene/layout/BackgroundSize;

    aput-object v7, v5, v6

    invoke-direct {v1, v2, v3, v4}, Lcom/sun/javafx/css/SubCssMetaData;-><init>(Ljava/lang/String;Ljavafx/css/StyleConverter;Ljava/lang/Object;)V

    sput-object v0, Ljavafx/scene/layout/Background;->BACKGROUND_SIZE:Ljavafx/css/CssMetaData;

    .line 109
    const/4 v0, 0x7

    new-array v0, v0, [Ljavafx/css/CssMetaData;

    move-object v11, v0

    move-object v0, v11

    move-object v1, v11

    const/4 v2, 0x0

    sget-object v3, Ljavafx/scene/layout/Background;->BACKGROUND_COLOR:Ljavafx/css/CssMetaData;

    aput-object v3, v1, v2

    move-object v11, v0

    move-object v0, v11

    move-object v1, v11

    const/4 v2, 0x1

    sget-object v3, Ljavafx/scene/layout/Background;->BACKGROUND_INSETS:Ljavafx/css/CssMetaData;

    aput-object v3, v1, v2

    move-object v11, v0

    move-object v0, v11

    move-object v1, v11

    const/4 v2, 0x2

    sget-object v3, Ljavafx/scene/layout/Background;->BACKGROUND_RADIUS:Ljavafx/css/CssMetaData;

    aput-object v3, v1, v2

    move-object v11, v0

    move-object v0, v11

    move-object v1, v11

    const/4 v2, 0x3

    sget-object v3, Ljavafx/scene/layout/Background;->BACKGROUND_IMAGE:Ljavafx/css/CssMetaData;

    aput-object v3, v1, v2

    move-object v11, v0

    move-object v0, v11

    move-object v1, v11

    const/4 v2, 0x4

    sget-object v3, Ljavafx/scene/layout/Background;->BACKGROUND_REPEAT:Ljavafx/css/CssMetaData;

    aput-object v3, v1, v2

    move-object v11, v0

    move-object v0, v11

    move-object v1, v11

    const/4 v2, 0x5

    sget-object v3, Ljavafx/scene/layout/Background;->BACKGROUND_POSITION:Ljavafx/css/CssMetaData;

    aput-object v3, v1, v2

    move-object v11, v0

    move-object v0, v11

    move-object v1, v11

    const/4 v2, 0x6

    sget-object v3, Ljavafx/scene/layout/Background;->BACKGROUND_SIZE:Ljavafx/css/CssMetaData;

    aput-object v3, v1, v2

    .line 112
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 110
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Ljavafx/scene/layout/Background;->STYLEABLES:Ljava/util/List;

    .line 131
    new-instance v0, Ljavafx/scene/layout/Background;

    move-object v11, v0

    move-object v0, v11

    move-object v1, v11

    const/4 v2, 0x0

    check-cast v2, [Ljavafx/scene/layout/BackgroundFill;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Ljavafx/scene/layout/Background;-><init>([Ljavafx/scene/layout/BackgroundFill;[Ljavafx/scene/layout/BackgroundImage;)V

    sput-object v0, Ljavafx/scene/layout/Background;->EMPTY:Ljavafx/scene/layout/Background;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .locals 7
    .param p1    # Ljava/util/List;
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "fills"
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "images"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljavafx/scene/layout/BackgroundFill;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljavafx/scene/layout/BackgroundImage;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 243
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/Background;
    move-object v1, p1

    .local v1, "fills":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/layout/BackgroundFill;>;"
    move-object v2, p2

    .local v2, "images":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/layout/BackgroundImage;>;"
    move-object v3, v0

    move-object v4, v1

    if-nez v4, :cond_0

    const/4 v4, 0x0

    :goto_0
    move-object v5, v2

    if-nez v5, :cond_1

    const/4 v5, 0x0

    :goto_1
    invoke-direct {v3, v4, v5}, Ljavafx/scene/layout/Background;-><init>([Ljavafx/scene/layout/BackgroundFill;[Ljavafx/scene/layout/BackgroundImage;)V

    .line 245
    return-void

    .line 243
    :cond_0
    move-object v4, v1

    move-object v5, v1

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Ljavafx/scene/layout/BackgroundFill;

    invoke-interface {v4, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljavafx/scene/layout/BackgroundFill;

    goto :goto_0

    :cond_1
    move-object v5, v2

    move-object v6, v2

    .line 244
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    new-array v6, v6, [Ljavafx/scene/layout/BackgroundImage;

    invoke-interface {v5, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljavafx/scene/layout/BackgroundImage;

    goto :goto_1
.end method

.method public varargs constructor <init>([Ljavafx/scene/layout/BackgroundFill;)V
    .locals 5
    .param p1    # [Ljavafx/scene/layout/BackgroundFill;
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "fills"
        .end annotation
    .end param

    .prologue
    .line 207
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/Background;
    move-object v1, p1

    .local v1, "fills":[Ljavafx/scene/layout/BackgroundFill;
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Ljavafx/scene/layout/Background;-><init>([Ljavafx/scene/layout/BackgroundFill;[Ljavafx/scene/layout/BackgroundImage;)V

    .line 208
    return-void
.end method

.method public constructor <init>([Ljavafx/scene/layout/BackgroundFill;[Ljavafx/scene/layout/BackgroundImage;)V
    .locals 45
    .param p1    # [Ljavafx/scene/layout/BackgroundFill;
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "fills"
        .end annotation
    .end param
    .param p2    # [Ljavafx/scene/layout/BackgroundImage;
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "images"
        .end annotation
    .end param

    .prologue
    .line 261
    move-object/from16 v3, p0

    .local v3, "this":Ljavafx/scene/layout/Background;
    move-object/from16 v4, p1

    .local v4, "fills":[Ljavafx/scene/layout/BackgroundFill;
    move-object/from16 v5, p2

    .local v5, "images":[Ljavafx/scene/layout/BackgroundImage;
    move-object/from16 v31, v3

    invoke-direct/range {v31 .. v31}, Ljava/lang/Object;-><init>()V

    .line 263
    const-wide/16 v31, 0x0

    move-wide/from16 v6, v31

    .local v6, "outerTop":D
    const-wide/16 v31, 0x0

    move-wide/from16 v8, v31

    .local v8, "outerRight":D
    const-wide/16 v31, 0x0

    move-wide/from16 v10, v31

    .local v10, "outerBottom":D
    const-wide/16 v31, 0x0

    move-wide/from16 v12, v31

    .line 264
    .local v12, "outerLeft":D
    const/16 v31, 0x0

    move/from16 v14, v31

    .line 265
    .local v14, "hasPercentOpaqueInsets":Z
    const/16 v31, 0x0

    move/from16 v15, v31

    .line 266
    .local v15, "hasPercentFillRadii":Z
    const/16 v31, 0x0

    move/from16 v16, v31

    .line 270
    .local v16, "opaqueFill":Z
    move-object/from16 v31, v4

    if-eqz v31, :cond_0

    move-object/from16 v31, v4

    move-object/from16 v0, v31

    array-length v0, v0

    move/from16 v31, v0

    if-nez v31, :cond_2

    .line 271
    :cond_0
    move-object/from16 v31, v3

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v31

    iput-object v0, v1, Ljavafx/scene/layout/Background;->fills:Ljava/util/List;

    .line 305
    :goto_0
    move-object/from16 v31, v3

    move/from16 v32, v15

    move/from16 v0, v32

    move-object/from16 v1, v31

    iput-boolean v0, v1, Ljavafx/scene/layout/Background;->hasPercentageBasedFills:Z

    .line 309
    move-object/from16 v31, v3

    new-instance v32, Ljavafx/geometry/Insets;

    move-object/from16 v44, v32

    move-object/from16 v32, v44

    move-object/from16 v33, v44

    const-wide/16 v34, 0x0

    move-wide/from16 v36, v6

    move-wide/from16 v0, v36

    neg-double v0, v0

    move-wide/from16 v36, v0

    .line 310
    invoke-static/range {v34 .. v37}, Ljava/lang/Math;->max(DD)D

    move-result-wide v34

    const-wide/16 v36, 0x0

    move-wide/from16 v38, v8

    move-wide/from16 v0, v38

    neg-double v0, v0

    move-wide/from16 v38, v0

    .line 311
    invoke-static/range {v36 .. v39}, Ljava/lang/Math;->max(DD)D

    move-result-wide v36

    const-wide/16 v38, 0x0

    move-wide/from16 v40, v10

    move-wide/from16 v0, v40

    neg-double v0, v0

    move-wide/from16 v40, v0

    .line 312
    invoke-static/range {v38 .. v41}, Ljava/lang/Math;->max(DD)D

    move-result-wide v38

    const-wide/16 v40, 0x0

    move-wide/from16 v42, v12

    move-wide/from16 v0, v42

    neg-double v0, v0

    move-wide/from16 v42, v0

    .line 313
    invoke-static/range {v40 .. v43}, Ljava/lang/Math;->max(DD)D

    move-result-wide v40

    invoke-direct/range {v33 .. v41}, Ljavafx/geometry/Insets;-><init>(DDDD)V

    move-object/from16 v0, v32

    move-object/from16 v1, v31

    iput-object v0, v1, Ljavafx/scene/layout/Background;->outsets:Ljavafx/geometry/Insets;

    .line 316
    move-object/from16 v31, v5

    if-eqz v31, :cond_1

    move-object/from16 v31, v5

    move-object/from16 v0, v31

    array-length v0, v0

    move/from16 v31, v0

    if-nez v31, :cond_9

    .line 317
    :cond_1
    move-object/from16 v31, v3

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v31

    iput-object v0, v1, Ljavafx/scene/layout/Background;->images:Ljava/util/List;

    .line 329
    :goto_1
    move-object/from16 v31, v3

    move/from16 v32, v16

    move/from16 v0, v32

    move-object/from16 v1, v31

    iput-boolean v0, v1, Ljavafx/scene/layout/Background;->hasOpaqueFill:Z

    .line 330
    move/from16 v31, v14

    if-eqz v31, :cond_c

    .line 331
    move-object/from16 v31, v3

    const-wide/high16 v32, 0x7ff8000000000000L    # NaN

    move-wide/from16 v0, v32

    move-object/from16 v2, v31

    iput-wide v0, v2, Ljavafx/scene/layout/Background;->opaqueFillTop:D

    .line 332
    move-object/from16 v31, v3

    const-wide/high16 v32, 0x7ff8000000000000L    # NaN

    move-wide/from16 v0, v32

    move-object/from16 v2, v31

    iput-wide v0, v2, Ljavafx/scene/layout/Background;->opaqueFillRight:D

    .line 333
    move-object/from16 v31, v3

    const-wide/high16 v32, 0x7ff8000000000000L    # NaN

    move-wide/from16 v0, v32

    move-object/from16 v2, v31

    iput-wide v0, v2, Ljavafx/scene/layout/Background;->opaqueFillBottom:D

    .line 334
    move-object/from16 v31, v3

    const-wide/high16 v32, 0x7ff8000000000000L    # NaN

    move-wide/from16 v0, v32

    move-object/from16 v2, v31

    iput-wide v0, v2, Ljavafx/scene/layout/Background;->opaqueFillLeft:D

    .line 343
    :goto_2
    move-object/from16 v31, v3

    move/from16 v32, v14

    move/from16 v0, v32

    move-object/from16 v1, v31

    iput-boolean v0, v1, Ljavafx/scene/layout/Background;->hasPercentageBasedOpaqueFills:Z

    .line 348
    move-object/from16 v31, v3

    move-object/from16 v0, v31

    iget-object v0, v0, Ljavafx/scene/layout/Background;->fills:Ljava/util/List;

    move-object/from16 v31, v0

    invoke-interface/range {v31 .. v31}, Ljava/util/List;->hashCode()I

    move-result v31

    move/from16 v17, v31

    .line 349
    .local v17, "result":I
    const/16 v31, 0x1f

    move/from16 v32, v17

    mul-int v31, v31, v32

    move-object/from16 v32, v3

    move-object/from16 v0, v32

    iget-object v0, v0, Ljavafx/scene/layout/Background;->images:Ljava/util/List;

    move-object/from16 v32, v0

    invoke-interface/range {v32 .. v32}, Ljava/util/List;->hashCode()I

    move-result v32

    add-int v31, v31, v32

    move/from16 v17, v31

    .line 350
    move-object/from16 v31, v3

    move/from16 v32, v17

    move/from16 v0, v32

    move-object/from16 v1, v31

    iput v0, v1, Ljavafx/scene/layout/Background;->hash:I

    .line 351
    return-void

    .line 276
    .end local v17    # "result":I
    :cond_2
    move-object/from16 v31, v4

    move-object/from16 v0, v31

    array-length v0, v0

    move/from16 v31, v0

    move/from16 v0, v31

    new-array v0, v0, [Ljavafx/scene/layout/BackgroundFill;

    move-object/from16 v31, v0

    move-object/from16 v17, v31

    .line 277
    .local v17, "noNulls":[Ljavafx/scene/layout/BackgroundFill;
    const/16 v31, 0x0

    move/from16 v18, v31

    .line 278
    .local v18, "size":I
    const/16 v31, 0x0

    move/from16 v19, v31

    .local v19, "i":I
    :goto_3
    move/from16 v31, v19

    move-object/from16 v32, v4

    move-object/from16 v0, v32

    array-length v0, v0

    move/from16 v32, v0

    move/from16 v0, v31

    move/from16 v1, v32

    if-ge v0, v1, :cond_8

    .line 279
    move-object/from16 v31, v4

    move/from16 v32, v19

    aget-object v31, v31, v32

    move-object/from16 v20, v31

    .line 280
    .local v20, "fill":Ljavafx/scene/layout/BackgroundFill;
    move-object/from16 v31, v20

    if-eqz v31, :cond_3

    .line 281
    move-object/from16 v31, v17

    move/from16 v32, v18

    add-int/lit8 v18, v18, 0x1

    move-object/from16 v33, v20

    aput-object v33, v31, v32

    .line 282
    move-object/from16 v31, v20

    invoke-virtual/range {v31 .. v31}, Ljavafx/scene/layout/BackgroundFill;->getInsets()Ljavafx/geometry/Insets;

    move-result-object v31

    move-object/from16 v21, v31

    .line 283
    .local v21, "fillInsets":Ljavafx/geometry/Insets;
    move-object/from16 v31, v21

    invoke-virtual/range {v31 .. v31}, Ljavafx/geometry/Insets;->getTop()D

    move-result-wide v31

    move-wide/from16 v22, v31

    .line 284
    .local v22, "fillTop":D
    move-object/from16 v31, v21

    invoke-virtual/range {v31 .. v31}, Ljavafx/geometry/Insets;->getRight()D

    move-result-wide v31

    move-wide/from16 v24, v31

    .line 285
    .local v24, "fillRight":D
    move-object/from16 v31, v21

    invoke-virtual/range {v31 .. v31}, Ljavafx/geometry/Insets;->getBottom()D

    move-result-wide v31

    move-wide/from16 v26, v31

    .line 286
    .local v26, "fillBottom":D
    move-object/from16 v31, v21

    invoke-virtual/range {v31 .. v31}, Ljavafx/geometry/Insets;->getLeft()D

    move-result-wide v31

    move-wide/from16 v28, v31

    .line 287
    .local v28, "fillLeft":D
    move-wide/from16 v31, v6

    move-wide/from16 v33, v22

    cmpg-double v31, v31, v33

    if-gtz v31, :cond_4

    move-wide/from16 v31, v6

    :goto_4
    move-wide/from16 v6, v31

    .line 288
    move-wide/from16 v31, v8

    move-wide/from16 v33, v24

    cmpg-double v31, v31, v33

    if-gtz v31, :cond_5

    move-wide/from16 v31, v8

    :goto_5
    move-wide/from16 v8, v31

    .line 289
    move-wide/from16 v31, v10

    move-wide/from16 v33, v26

    cmpg-double v31, v31, v33

    if-gtz v31, :cond_6

    move-wide/from16 v31, v10

    :goto_6
    move-wide/from16 v10, v31

    .line 290
    move-wide/from16 v31, v12

    move-wide/from16 v33, v28

    cmpg-double v31, v31, v33

    if-gtz v31, :cond_7

    move-wide/from16 v31, v12

    :goto_7
    move-wide/from16 v12, v31

    .line 293
    move-object/from16 v31, v20

    invoke-virtual/range {v31 .. v31}, Ljavafx/scene/layout/BackgroundFill;->getRadii()Ljavafx/scene/layout/CornerRadii;

    move-result-object v31

    move-object/from16 v0, v31

    iget-boolean v0, v0, Ljavafx/scene/layout/CornerRadii;->hasPercentBasedRadii:Z

    move/from16 v31, v0

    move/from16 v30, v31

    .line 294
    .local v30, "b":Z
    move/from16 v31, v15

    move/from16 v32, v30

    or-int v31, v31, v32

    move/from16 v15, v31

    .line 295
    move-object/from16 v31, v20

    move-object/from16 v0, v31

    iget-object v0, v0, Ljavafx/scene/layout/BackgroundFill;->fill:Ljavafx/scene/paint/Paint;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Ljavafx/scene/paint/Paint;->isOpaque()Z

    move-result v31

    if-eqz v31, :cond_3

    .line 296
    const/16 v31, 0x1

    move/from16 v16, v31

    .line 297
    move/from16 v31, v30

    if-eqz v31, :cond_3

    .line 298
    const/16 v31, 0x1

    move/from16 v14, v31

    .line 278
    .end local v21    # "fillInsets":Ljavafx/geometry/Insets;
    .end local v22    # "fillTop":D
    .end local v24    # "fillRight":D
    .end local v26    # "fillBottom":D
    .end local v28    # "fillLeft":D
    .end local v30    # "b":Z
    :cond_3
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_3

    .line 287
    .restart local v21    # "fillInsets":Ljavafx/geometry/Insets;
    .restart local v22    # "fillTop":D
    .restart local v24    # "fillRight":D
    .restart local v26    # "fillBottom":D
    .restart local v28    # "fillLeft":D
    :cond_4
    move-wide/from16 v31, v22

    goto :goto_4

    .line 288
    :cond_5
    move-wide/from16 v31, v24

    goto :goto_5

    .line 289
    :cond_6
    move-wide/from16 v31, v26

    goto :goto_6

    .line 290
    :cond_7
    move-wide/from16 v31, v28

    goto :goto_7

    .line 303
    .end local v20    # "fill":Ljavafx/scene/layout/BackgroundFill;
    .end local v21    # "fillInsets":Ljavafx/geometry/Insets;
    .end local v22    # "fillTop":D
    .end local v24    # "fillRight":D
    .end local v26    # "fillBottom":D
    .end local v28    # "fillLeft":D
    :cond_8
    move-object/from16 v31, v3

    new-instance v32, Lcom/sun/javafx/UnmodifiableArrayList;

    move-object/from16 v44, v32

    move-object/from16 v32, v44

    move-object/from16 v33, v44

    move-object/from16 v34, v17

    move/from16 v35, v18

    invoke-direct/range {v33 .. v35}, Lcom/sun/javafx/UnmodifiableArrayList;-><init>([Ljava/lang/Object;I)V

    move-object/from16 v0, v32

    move-object/from16 v1, v31

    iput-object v0, v1, Ljavafx/scene/layout/Background;->fills:Ljava/util/List;

    goto/16 :goto_0

    .line 320
    .end local v17    # "noNulls":[Ljavafx/scene/layout/BackgroundFill;
    .end local v18    # "size":I
    .end local v19    # "i":I
    :cond_9
    move-object/from16 v31, v5

    move-object/from16 v0, v31

    array-length v0, v0

    move/from16 v31, v0

    move/from16 v0, v31

    new-array v0, v0, [Ljavafx/scene/layout/BackgroundImage;

    move-object/from16 v31, v0

    move-object/from16 v17, v31

    .line 321
    .local v17, "noNulls":[Ljavafx/scene/layout/BackgroundImage;
    const/16 v31, 0x0

    move/from16 v18, v31

    .line 322
    .restart local v18    # "size":I
    const/16 v31, 0x0

    move/from16 v19, v31

    .restart local v19    # "i":I
    :goto_8
    move/from16 v31, v19

    move-object/from16 v32, v5

    move-object/from16 v0, v32

    array-length v0, v0

    move/from16 v32, v0

    move/from16 v0, v31

    move/from16 v1, v32

    if-ge v0, v1, :cond_b

    .line 323
    move-object/from16 v31, v5

    move/from16 v32, v19

    aget-object v31, v31, v32

    move-object/from16 v20, v31

    .line 324
    .local v20, "image":Ljavafx/scene/layout/BackgroundImage;
    move-object/from16 v31, v20

    if-eqz v31, :cond_a

    move-object/from16 v31, v17

    move/from16 v32, v18

    add-int/lit8 v18, v18, 0x1

    move-object/from16 v33, v20

    aput-object v33, v31, v32

    .line 322
    :cond_a
    add-int/lit8 v19, v19, 0x1

    goto :goto_8

    .line 326
    .end local v20    # "image":Ljavafx/scene/layout/BackgroundImage;
    :cond_b
    move-object/from16 v31, v3

    new-instance v32, Lcom/sun/javafx/UnmodifiableArrayList;

    move-object/from16 v44, v32

    move-object/from16 v32, v44

    move-object/from16 v33, v44

    move-object/from16 v34, v17

    move/from16 v35, v18

    invoke-direct/range {v33 .. v35}, Lcom/sun/javafx/UnmodifiableArrayList;-><init>([Ljava/lang/Object;I)V

    move-object/from16 v0, v32

    move-object/from16 v1, v31

    iput-object v0, v1, Ljavafx/scene/layout/Background;->images:Ljava/util/List;

    goto/16 :goto_1

    .line 336
    .end local v17    # "noNulls":[Ljavafx/scene/layout/BackgroundImage;
    .end local v18    # "size":I
    .end local v19    # "i":I
    :cond_c
    const/16 v31, 0x4

    move/from16 v0, v31

    new-array v0, v0, [D

    move-object/from16 v31, v0

    move-object/from16 v17, v31

    .line 337
    .local v17, "trbl":[D
    move-object/from16 v31, v3

    const-wide/high16 v32, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v34, 0x3ff0000000000000L    # 1.0

    const/16 v36, 0x1

    move-object/from16 v37, v17

    invoke-direct/range {v31 .. v37}, Ljavafx/scene/layout/Background;->computeOpaqueInsets(DDZ[D)V

    .line 338
    move-object/from16 v31, v3

    move-object/from16 v32, v17

    const/16 v33, 0x0

    aget-wide v32, v32, v33

    move-wide/from16 v0, v32

    move-object/from16 v2, v31

    iput-wide v0, v2, Ljavafx/scene/layout/Background;->opaqueFillTop:D

    .line 339
    move-object/from16 v31, v3

    move-object/from16 v32, v17

    const/16 v33, 0x1

    aget-wide v32, v32, v33

    move-wide/from16 v0, v32

    move-object/from16 v2, v31

    iput-wide v0, v2, Ljavafx/scene/layout/Background;->opaqueFillRight:D

    .line 340
    move-object/from16 v31, v3

    move-object/from16 v32, v17

    const/16 v33, 0x2

    aget-wide v32, v32, v33

    move-wide/from16 v0, v32

    move-object/from16 v2, v31

    iput-wide v0, v2, Ljavafx/scene/layout/Background;->opaqueFillBottom:D

    .line 341
    move-object/from16 v31, v3

    move-object/from16 v32, v17

    const/16 v33, 0x3

    aget-wide v32, v32, v33

    move-wide/from16 v0, v32

    move-object/from16 v2, v31

    iput-wide v0, v2, Ljavafx/scene/layout/Background;->opaqueFillLeft:D

    goto/16 :goto_2
.end method

.method public varargs constructor <init>([Ljavafx/scene/layout/BackgroundImage;)V
    .locals 5
    .param p1    # [Ljavafx/scene/layout/BackgroundImage;
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "images"
        .end annotation
    .end param

    .prologue
    .line 220
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/Background;
    move-object v1, p1

    .local v1, "images":[Ljavafx/scene/layout/BackgroundImage;
    move-object v2, v0

    const/4 v3, 0x0

    move-object v4, v1

    invoke-direct {v2, v3, v4}, Ljavafx/scene/layout/Background;-><init>([Ljavafx/scene/layout/BackgroundFill;[Ljavafx/scene/layout/BackgroundImage;)V

    .line 221
    return-void
.end method

.method private computeOpaqueInsets(DDZ[D)V
    .locals 65

    .prologue
    .line 401
    move-object/from16 v2, p0

    .local v2, "this":Ljavafx/scene/layout/Background;
    move-wide/from16 v3, p1

    .local v3, "width":D
    move-wide/from16 v5, p3

    .local v5, "height":D
    move/from16 v7, p5

    .local v7, "firstTime":Z
    move-object/from16 v8, p6

    .local v8, "trbl":[D
    const-wide/high16 v58, 0x7ff8000000000000L    # NaN

    move-wide/from16 v9, v58

    .line 402
    .local v9, "opaqueRegionTop":D
    const-wide/high16 v58, 0x7ff8000000000000L    # NaN

    move-wide/from16 v11, v58

    .line 403
    .local v11, "opaqueRegionRight":D
    const-wide/high16 v58, 0x7ff8000000000000L    # NaN

    move-wide/from16 v13, v58

    .line 404
    .local v13, "opaqueRegionBottom":D
    const-wide/high16 v58, 0x7ff8000000000000L    # NaN

    move-wide/from16 v15, v58

    .line 408
    .local v15, "opaqueRegionLeft":D
    move-object/from16 v58, v2

    move-object/from16 v0, v58

    iget-boolean v0, v0, Ljavafx/scene/layout/Background;->hasOpaqueFill:Z

    move/from16 v58, v0

    if-eqz v58, :cond_0

    .line 412
    move/from16 v58, v7

    if-nez v58, :cond_2

    move-object/from16 v58, v2

    move-object/from16 v0, v58

    iget-boolean v0, v0, Ljavafx/scene/layout/Background;->hasPercentageBasedOpaqueFills:Z

    move/from16 v58, v0

    if-nez v58, :cond_2

    .line 413
    move-object/from16 v58, v2

    move-object/from16 v0, v58

    iget-wide v0, v0, Ljavafx/scene/layout/Background;->opaqueFillTop:D

    move-wide/from16 v58, v0

    move-wide/from16 v9, v58

    .line 414
    move-object/from16 v58, v2

    move-object/from16 v0, v58

    iget-wide v0, v0, Ljavafx/scene/layout/Background;->opaqueFillRight:D

    move-wide/from16 v58, v0

    move-wide/from16 v11, v58

    .line 415
    move-object/from16 v58, v2

    move-object/from16 v0, v58

    iget-wide v0, v0, Ljavafx/scene/layout/Background;->opaqueFillBottom:D

    move-wide/from16 v58, v0

    move-wide/from16 v13, v58

    .line 416
    move-object/from16 v58, v2

    move-object/from16 v0, v58

    iget-wide v0, v0, Ljavafx/scene/layout/Background;->opaqueFillLeft:D

    move-wide/from16 v58, v0

    move-wide/from16 v15, v58

    .line 507
    :cond_0
    invoke-static {}, Lcom/sun/javafx/tk/Toolkit;->getImageAccessor()Lcom/sun/javafx/tk/Toolkit$ImageAccessor;

    move-result-object v58

    move-object/from16 v17, v58

    .line 508
    .local v17, "acc":Lcom/sun/javafx/tk/Toolkit$ImageAccessor;
    move-object/from16 v58, v2

    move-object/from16 v0, v58

    iget-object v0, v0, Ljavafx/scene/layout/Background;->images:Ljava/util/List;

    move-object/from16 v58, v0

    invoke-interface/range {v58 .. v58}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v58

    move-object/from16 v18, v58

    :cond_1
    :goto_0
    move-object/from16 v58, v18

    invoke-interface/range {v58 .. v58}, Ljava/util/Iterator;->hasNext()Z

    move-result v58

    if-eqz v58, :cond_17

    move-object/from16 v58, v18

    invoke-interface/range {v58 .. v58}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v58

    check-cast v58, Ljavafx/scene/layout/BackgroundImage;

    move-object/from16 v19, v58

    .line 509
    .local v19, "bi":Ljavafx/scene/layout/BackgroundImage;
    move-object/from16 v58, v19

    move-object/from16 v0, v58

    iget-object v0, v0, Ljavafx/scene/layout/BackgroundImage;->opaque:Ljava/lang/Boolean;

    move-object/from16 v58, v0

    if-nez v58, :cond_15

    .line 512
    move-object/from16 v58, v17

    move-object/from16 v59, v19

    move-object/from16 v0, v59

    iget-object v0, v0, Ljavafx/scene/layout/BackgroundImage;->image:Ljavafx/scene/image/Image;

    move-object/from16 v59, v0

    invoke-interface/range {v58 .. v59}, Lcom/sun/javafx/tk/Toolkit$ImageAccessor;->getImageProperty(Ljavafx/scene/image/Image;)Ljavafx/beans/property/ReadOnlyObjectProperty;

    move-result-object v58

    invoke-virtual/range {v58 .. v58}, Ljavafx/beans/property/ReadOnlyObjectProperty;->get()Ljava/lang/Object;

    move-result-object v58

    check-cast v58, Lcom/sun/javafx/tk/PlatformImage;

    move-object/from16 v20, v58

    .line 513
    .local v20, "platformImage":Lcom/sun/javafx/tk/PlatformImage;
    move-object/from16 v58, v20

    if-nez v58, :cond_14

    goto :goto_0

    .line 424
    .end local v17    # "acc":Lcom/sun/javafx/tk/Toolkit$ImageAccessor;
    .end local v19    # "bi":Ljavafx/scene/layout/BackgroundImage;
    .end local v20    # "platformImage":Lcom/sun/javafx/tk/PlatformImage;
    :cond_2
    const/16 v58, 0x0

    move/from16 v17, v58

    .local v17, "i":I
    move-object/from16 v58, v2

    move-object/from16 v0, v58

    iget-object v0, v0, Ljavafx/scene/layout/Background;->fills:Ljava/util/List;

    move-object/from16 v58, v0

    invoke-interface/range {v58 .. v58}, Ljava/util/List;->size()I

    move-result v58

    move/from16 v18, v58

    .local v18, "max":I
    :goto_1
    move/from16 v58, v17

    move/from16 v59, v18

    move/from16 v0, v58

    move/from16 v1, v59

    if-ge v0, v1, :cond_0

    .line 425
    move-object/from16 v58, v2

    move-object/from16 v0, v58

    iget-object v0, v0, Ljavafx/scene/layout/Background;->fills:Ljava/util/List;

    move-object/from16 v58, v0

    move/from16 v59, v17

    invoke-interface/range {v58 .. v59}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v58

    check-cast v58, Ljavafx/scene/layout/BackgroundFill;

    move-object/from16 v19, v58

    .line 426
    .local v19, "fill":Ljavafx/scene/layout/BackgroundFill;
    move-object/from16 v58, v19

    invoke-virtual/range {v58 .. v58}, Ljavafx/scene/layout/BackgroundFill;->getInsets()Ljavafx/geometry/Insets;

    move-result-object v58

    move-object/from16 v20, v58

    .line 427
    .local v20, "fillInsets":Ljavafx/geometry/Insets;
    move-object/from16 v58, v20

    invoke-virtual/range {v58 .. v58}, Ljavafx/geometry/Insets;->getTop()D

    move-result-wide v58

    move-wide/from16 v21, v58

    .line 428
    .local v21, "fillTop":D
    move-object/from16 v58, v20

    invoke-virtual/range {v58 .. v58}, Ljavafx/geometry/Insets;->getRight()D

    move-result-wide v58

    move-wide/from16 v23, v58

    .line 429
    .local v23, "fillRight":D
    move-object/from16 v58, v20

    invoke-virtual/range {v58 .. v58}, Ljavafx/geometry/Insets;->getBottom()D

    move-result-wide v58

    move-wide/from16 v25, v58

    .line 430
    .local v25, "fillBottom":D
    move-object/from16 v58, v20

    invoke-virtual/range {v58 .. v58}, Ljavafx/geometry/Insets;->getLeft()D

    move-result-wide v58

    move-wide/from16 v27, v58

    .line 432
    .local v27, "fillLeft":D
    move-object/from16 v58, v19

    move-object/from16 v0, v58

    iget-object v0, v0, Ljavafx/scene/layout/BackgroundFill;->fill:Ljavafx/scene/paint/Paint;

    move-object/from16 v58, v0

    invoke-virtual/range {v58 .. v58}, Ljavafx/scene/paint/Paint;->isOpaque()Z

    move-result v58

    if-eqz v58, :cond_3

    .line 439
    move-object/from16 v58, v19

    invoke-virtual/range {v58 .. v58}, Ljavafx/scene/layout/BackgroundFill;->getRadii()Ljavafx/scene/layout/CornerRadii;

    move-result-object v58

    move-object/from16 v29, v58

    .line 440
    .local v29, "radii":Ljavafx/scene/layout/CornerRadii;
    move-object/from16 v58, v29

    invoke-virtual/range {v58 .. v58}, Ljavafx/scene/layout/CornerRadii;->isTopLeftHorizontalRadiusAsPercentage()Z

    move-result v58

    if-eqz v58, :cond_4

    move-wide/from16 v58, v3

    move-object/from16 v60, v29

    .line 441
    invoke-virtual/range {v60 .. v60}, Ljavafx/scene/layout/CornerRadii;->getTopLeftHorizontalRadius()D

    move-result-wide v60

    mul-double v58, v58, v60

    :goto_2
    move-wide/from16 v30, v58

    .line 442
    .local v30, "topLeftHorizontalRadius":D
    move-object/from16 v58, v29

    invoke-virtual/range {v58 .. v58}, Ljavafx/scene/layout/CornerRadii;->isTopLeftVerticalRadiusAsPercentage()Z

    move-result v58

    if-eqz v58, :cond_5

    move-wide/from16 v58, v5

    move-object/from16 v60, v29

    .line 443
    invoke-virtual/range {v60 .. v60}, Ljavafx/scene/layout/CornerRadii;->getTopLeftVerticalRadius()D

    move-result-wide v60

    mul-double v58, v58, v60

    :goto_3
    move-wide/from16 v32, v58

    .line 444
    .local v32, "topLeftVerticalRadius":D
    move-object/from16 v58, v29

    invoke-virtual/range {v58 .. v58}, Ljavafx/scene/layout/CornerRadii;->isTopRightVerticalRadiusAsPercentage()Z

    move-result v58

    if-eqz v58, :cond_6

    move-wide/from16 v58, v5

    move-object/from16 v60, v29

    .line 445
    invoke-virtual/range {v60 .. v60}, Ljavafx/scene/layout/CornerRadii;->getTopRightVerticalRadius()D

    move-result-wide v60

    mul-double v58, v58, v60

    :goto_4
    move-wide/from16 v34, v58

    .line 446
    .local v34, "topRightVerticalRadius":D
    move-object/from16 v58, v29

    invoke-virtual/range {v58 .. v58}, Ljavafx/scene/layout/CornerRadii;->isTopRightHorizontalRadiusAsPercentage()Z

    move-result v58

    if-eqz v58, :cond_7

    move-wide/from16 v58, v3

    move-object/from16 v60, v29

    .line 447
    invoke-virtual/range {v60 .. v60}, Ljavafx/scene/layout/CornerRadii;->getTopRightHorizontalRadius()D

    move-result-wide v60

    mul-double v58, v58, v60

    :goto_5
    move-wide/from16 v36, v58

    .line 448
    .local v36, "topRightHorizontalRadius":D
    move-object/from16 v58, v29

    invoke-virtual/range {v58 .. v58}, Ljavafx/scene/layout/CornerRadii;->isBottomRightHorizontalRadiusAsPercentage()Z

    move-result v58

    if-eqz v58, :cond_8

    move-wide/from16 v58, v3

    move-object/from16 v60, v29

    .line 449
    invoke-virtual/range {v60 .. v60}, Ljavafx/scene/layout/CornerRadii;->getBottomRightHorizontalRadius()D

    move-result-wide v60

    mul-double v58, v58, v60

    :goto_6
    move-wide/from16 v38, v58

    .line 450
    .local v38, "bottomRightHorizontalRadius":D
    move-object/from16 v58, v29

    invoke-virtual/range {v58 .. v58}, Ljavafx/scene/layout/CornerRadii;->isBottomRightVerticalRadiusAsPercentage()Z

    move-result v58

    if-eqz v58, :cond_9

    move-wide/from16 v58, v5

    move-object/from16 v60, v29

    .line 451
    invoke-virtual/range {v60 .. v60}, Ljavafx/scene/layout/CornerRadii;->getBottomRightVerticalRadius()D

    move-result-wide v60

    mul-double v58, v58, v60

    :goto_7
    move-wide/from16 v40, v58

    .line 452
    .local v40, "bottomRightVerticalRadius":D
    move-object/from16 v58, v29

    invoke-virtual/range {v58 .. v58}, Ljavafx/scene/layout/CornerRadii;->isBottomLeftVerticalRadiusAsPercentage()Z

    move-result v58

    if-eqz v58, :cond_a

    move-wide/from16 v58, v5

    move-object/from16 v60, v29

    .line 453
    invoke-virtual/range {v60 .. v60}, Ljavafx/scene/layout/CornerRadii;->getBottomLeftVerticalRadius()D

    move-result-wide v60

    mul-double v58, v58, v60

    :goto_8
    move-wide/from16 v42, v58

    .line 454
    .local v42, "bottomLeftVerticalRadius":D
    move-object/from16 v58, v29

    invoke-virtual/range {v58 .. v58}, Ljavafx/scene/layout/CornerRadii;->isBottomLeftHorizontalRadiusAsPercentage()Z

    move-result v58

    if-eqz v58, :cond_b

    move-wide/from16 v58, v3

    move-object/from16 v60, v29

    .line 455
    invoke-virtual/range {v60 .. v60}, Ljavafx/scene/layout/CornerRadii;->getBottomLeftHorizontalRadius()D

    move-result-wide v60

    mul-double v58, v58, v60

    :goto_9
    move-wide/from16 v44, v58

    .line 457
    .local v44, "bottomLeftHorizontalRadius":D
    move-wide/from16 v58, v21

    move-wide/from16 v60, v32

    move-wide/from16 v62, v34

    invoke-static/range {v60 .. v63}, Ljava/lang/Math;->max(DD)D

    move-result-wide v60

    const-wide/high16 v62, 0x4000000000000000L    # 2.0

    div-double v60, v60, v62

    add-double v58, v58, v60

    move-wide/from16 v46, v58

    .line 458
    .local v46, "t":D
    move-wide/from16 v58, v23

    move-wide/from16 v60, v36

    move-wide/from16 v62, v38

    invoke-static/range {v60 .. v63}, Ljava/lang/Math;->max(DD)D

    move-result-wide v60

    const-wide/high16 v62, 0x4000000000000000L    # 2.0

    div-double v60, v60, v62

    add-double v58, v58, v60

    move-wide/from16 v48, v58

    .line 459
    .local v48, "r":D
    move-wide/from16 v58, v25

    move-wide/from16 v60, v42

    move-wide/from16 v62, v40

    invoke-static/range {v60 .. v63}, Ljava/lang/Math;->max(DD)D

    move-result-wide v60

    const-wide/high16 v62, 0x4000000000000000L    # 2.0

    div-double v60, v60, v62

    add-double v58, v58, v60

    move-wide/from16 v50, v58

    .line 460
    .local v50, "b":D
    move-wide/from16 v58, v27

    move-wide/from16 v60, v30

    move-wide/from16 v62, v44

    invoke-static/range {v60 .. v63}, Ljava/lang/Math;->max(DD)D

    move-result-wide v60

    const-wide/high16 v62, 0x4000000000000000L    # 2.0

    div-double v60, v60, v62

    add-double v58, v58, v60

    move-wide/from16 v52, v58

    .line 461
    .local v52, "l":D
    move-wide/from16 v58, v9

    invoke-static/range {v58 .. v59}, Ljava/lang/Double;->isNaN(D)Z

    move-result v58

    if-eqz v58, :cond_c

    .line 463
    move-wide/from16 v58, v46

    move-wide/from16 v9, v58

    .line 464
    move-wide/from16 v58, v48

    move-wide/from16 v11, v58

    .line 465
    move-wide/from16 v58, v50

    move-wide/from16 v13, v58

    .line 466
    move-wide/from16 v58, v52

    move-wide/from16 v15, v58

    .line 424
    .end local v29    # "radii":Ljavafx/scene/layout/CornerRadii;
    .end local v30    # "topLeftHorizontalRadius":D
    .end local v32    # "topLeftVerticalRadius":D
    .end local v34    # "topRightVerticalRadius":D
    .end local v36    # "topRightHorizontalRadius":D
    .end local v38    # "bottomRightHorizontalRadius":D
    .end local v40    # "bottomRightVerticalRadius":D
    .end local v42    # "bottomLeftVerticalRadius":D
    .end local v44    # "bottomLeftHorizontalRadius":D
    .end local v46    # "t":D
    .end local v48    # "r":D
    .end local v50    # "b":D
    .end local v52    # "l":D
    :cond_3
    :goto_a
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_1

    .line 441
    .restart local v29    # "radii":Ljavafx/scene/layout/CornerRadii;
    :cond_4
    move-object/from16 v58, v29

    invoke-virtual/range {v58 .. v58}, Ljavafx/scene/layout/CornerRadii;->getTopLeftHorizontalRadius()D

    move-result-wide v58

    goto/16 :goto_2

    .line 443
    .restart local v30    # "topLeftHorizontalRadius":D
    :cond_5
    move-object/from16 v58, v29

    invoke-virtual/range {v58 .. v58}, Ljavafx/scene/layout/CornerRadii;->getTopLeftVerticalRadius()D

    move-result-wide v58

    goto/16 :goto_3

    .line 445
    .restart local v32    # "topLeftVerticalRadius":D
    :cond_6
    move-object/from16 v58, v29

    invoke-virtual/range {v58 .. v58}, Ljavafx/scene/layout/CornerRadii;->getTopRightVerticalRadius()D

    move-result-wide v58

    goto/16 :goto_4

    .line 447
    .restart local v34    # "topRightVerticalRadius":D
    :cond_7
    move-object/from16 v58, v29

    invoke-virtual/range {v58 .. v58}, Ljavafx/scene/layout/CornerRadii;->getTopRightHorizontalRadius()D

    move-result-wide v58

    goto/16 :goto_5

    .line 449
    .restart local v36    # "topRightHorizontalRadius":D
    :cond_8
    move-object/from16 v58, v29

    invoke-virtual/range {v58 .. v58}, Ljavafx/scene/layout/CornerRadii;->getBottomRightHorizontalRadius()D

    move-result-wide v58

    goto/16 :goto_6

    .line 451
    .restart local v38    # "bottomRightHorizontalRadius":D
    :cond_9
    move-object/from16 v58, v29

    invoke-virtual/range {v58 .. v58}, Ljavafx/scene/layout/CornerRadii;->getBottomRightVerticalRadius()D

    move-result-wide v58

    goto/16 :goto_7

    .line 453
    .restart local v40    # "bottomRightVerticalRadius":D
    :cond_a
    move-object/from16 v58, v29

    invoke-virtual/range {v58 .. v58}, Ljavafx/scene/layout/CornerRadii;->getBottomLeftVerticalRadius()D

    move-result-wide v58

    goto/16 :goto_8

    .line 455
    .restart local v42    # "bottomLeftVerticalRadius":D
    :cond_b
    move-object/from16 v58, v29

    invoke-virtual/range {v58 .. v58}, Ljavafx/scene/layout/CornerRadii;->getBottomLeftHorizontalRadius()D

    move-result-wide v58

    goto/16 :goto_9

    .line 468
    .restart local v44    # "bottomLeftHorizontalRadius":D
    .restart local v46    # "t":D
    .restart local v48    # "r":D
    .restart local v50    # "b":D
    .restart local v52    # "l":D
    :cond_c
    move-wide/from16 v58, v46

    move-wide/from16 v60, v9

    cmpl-double v58, v58, v60

    if-ltz v58, :cond_d

    const/16 v58, 0x1

    :goto_b
    move/from16 v54, v58

    .line 469
    .local v54, "largerTop":Z
    move-wide/from16 v58, v48

    move-wide/from16 v60, v11

    cmpl-double v58, v58, v60

    if-ltz v58, :cond_e

    const/16 v58, 0x1

    :goto_c
    move/from16 v55, v58

    .line 470
    .local v55, "largerRight":Z
    move-wide/from16 v58, v50

    move-wide/from16 v60, v13

    cmpl-double v58, v58, v60

    if-ltz v58, :cond_f

    const/16 v58, 0x1

    :goto_d
    move/from16 v56, v58

    .line 471
    .local v56, "largerBottom":Z
    move-wide/from16 v58, v52

    move-wide/from16 v60, v15

    cmpl-double v58, v58, v60

    if-ltz v58, :cond_10

    const/16 v58, 0x1

    :goto_e
    move/from16 v57, v58

    .line 472
    .local v57, "largerLeft":Z
    move/from16 v58, v54

    if-eqz v58, :cond_11

    move/from16 v58, v55

    if-eqz v58, :cond_11

    move/from16 v58, v56

    if-eqz v58, :cond_11

    move/from16 v58, v57

    if-eqz v58, :cond_11

    .line 474
    goto/16 :goto_a

    .line 468
    .end local v54    # "largerTop":Z
    .end local v55    # "largerRight":Z
    .end local v56    # "largerBottom":Z
    .end local v57    # "largerLeft":Z
    :cond_d
    const/16 v58, 0x0

    goto :goto_b

    .line 469
    .restart local v54    # "largerTop":Z
    :cond_e
    const/16 v58, 0x0

    goto :goto_c

    .line 470
    .restart local v55    # "largerRight":Z
    :cond_f
    const/16 v58, 0x0

    goto :goto_d

    .line 471
    .restart local v56    # "largerBottom":Z
    :cond_10
    const/16 v58, 0x0

    goto :goto_e

    .line 475
    .restart local v57    # "largerLeft":Z
    :cond_11
    move/from16 v58, v54

    if-nez v58, :cond_12

    move/from16 v58, v55

    if-nez v58, :cond_12

    move/from16 v58, v56

    if-nez v58, :cond_12

    move/from16 v58, v57

    if-nez v58, :cond_12

    .line 478
    move-wide/from16 v58, v21

    move-wide/from16 v9, v58

    .line 479
    move-wide/from16 v58, v23

    move-wide/from16 v11, v58

    .line 480
    move-wide/from16 v58, v25

    move-wide/from16 v13, v58

    .line 481
    move-wide/from16 v58, v27

    move-wide/from16 v15, v58

    goto/16 :goto_a

    .line 482
    :cond_12
    move-wide/from16 v58, v52

    move-wide/from16 v60, v15

    cmpl-double v58, v58, v60

    if-nez v58, :cond_13

    move-wide/from16 v58, v48

    move-wide/from16 v60, v11

    cmpl-double v58, v58, v60

    if-nez v58, :cond_13

    .line 485
    move-wide/from16 v58, v46

    move-wide/from16 v60, v9

    invoke-static/range {v58 .. v61}, Ljava/lang/Math;->min(DD)D

    move-result-wide v58

    move-wide/from16 v9, v58

    .line 486
    move-wide/from16 v58, v50

    move-wide/from16 v60, v13

    invoke-static/range {v58 .. v61}, Ljava/lang/Math;->min(DD)D

    move-result-wide v58

    move-wide/from16 v13, v58

    goto/16 :goto_a

    .line 487
    :cond_13
    move-wide/from16 v58, v46

    move-wide/from16 v60, v9

    cmpl-double v58, v58, v60

    if-nez v58, :cond_3

    move-wide/from16 v58, v50

    move-wide/from16 v60, v13

    cmpl-double v58, v58, v60

    if-nez v58, :cond_3

    .line 490
    move-wide/from16 v58, v52

    move-wide/from16 v60, v15

    invoke-static/range {v58 .. v61}, Ljava/lang/Math;->min(DD)D

    move-result-wide v58

    move-wide/from16 v15, v58

    .line 491
    move-wide/from16 v58, v48

    move-wide/from16 v60, v11

    invoke-static/range {v58 .. v61}, Ljava/lang/Math;->min(DD)D

    move-result-wide v58

    move-wide/from16 v11, v58

    goto/16 :goto_a

    .line 516
    .end local v18    # "max":I
    .end local v21    # "fillTop":D
    .end local v23    # "fillRight":D
    .end local v25    # "fillBottom":D
    .end local v27    # "fillLeft":D
    .end local v29    # "radii":Ljavafx/scene/layout/CornerRadii;
    .end local v30    # "topLeftHorizontalRadius":D
    .end local v32    # "topLeftVerticalRadius":D
    .end local v34    # "topRightVerticalRadius":D
    .end local v36    # "topRightHorizontalRadius":D
    .end local v38    # "bottomRightHorizontalRadius":D
    .end local v40    # "bottomRightVerticalRadius":D
    .end local v42    # "bottomLeftVerticalRadius":D
    .end local v44    # "bottomLeftHorizontalRadius":D
    .end local v46    # "t":D
    .end local v48    # "r":D
    .end local v50    # "b":D
    .end local v52    # "l":D
    .end local v54    # "largerTop":Z
    .end local v55    # "largerRight":Z
    .end local v56    # "largerBottom":Z
    .end local v57    # "largerLeft":Z
    .local v17, "acc":Lcom/sun/javafx/tk/Toolkit$ImageAccessor;
    .local v19, "bi":Ljavafx/scene/layout/BackgroundImage;
    .local v20, "platformImage":Lcom/sun/javafx/tk/PlatformImage;
    :cond_14
    move-object/from16 v58, v20

    move-object/from16 v0, v58

    instance-of v0, v0, Lcom/sun/prism/Image;

    move/from16 v58, v0

    if-eqz v58, :cond_1

    .line 517
    move-object/from16 v58, v19

    move-object/from16 v59, v20

    check-cast v59, Lcom/sun/prism/Image;

    invoke-virtual/range {v59 .. v59}, Lcom/sun/prism/Image;->isOpaque()Z

    move-result v59

    invoke-static/range {v59 .. v59}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v59

    move-object/from16 v0, v59

    move-object/from16 v1, v58

    iput-object v0, v1, Ljavafx/scene/layout/BackgroundImage;->opaque:Ljava/lang/Boolean;

    .line 526
    .end local v20    # "platformImage":Lcom/sun/javafx/tk/PlatformImage;
    :cond_15
    move-object/from16 v58, v19

    move-object/from16 v0, v58

    iget-object v0, v0, Ljavafx/scene/layout/BackgroundImage;->opaque:Ljava/lang/Boolean;

    move-object/from16 v58, v0

    invoke-virtual/range {v58 .. v58}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v58

    if-eqz v58, :cond_28

    .line 527
    move-object/from16 v58, v19

    move-object/from16 v0, v58

    iget-object v0, v0, Ljavafx/scene/layout/BackgroundImage;->size:Ljavafx/scene/layout/BackgroundSize;

    move-object/from16 v58, v0

    move-object/from16 v0, v58

    iget-boolean v0, v0, Ljavafx/scene/layout/BackgroundSize;->cover:Z

    move/from16 v58, v0

    if-nez v58, :cond_16

    move-object/from16 v58, v19

    move-object/from16 v0, v58

    iget-object v0, v0, Ljavafx/scene/layout/BackgroundImage;->size:Ljavafx/scene/layout/BackgroundSize;

    move-object/from16 v58, v0

    move-object/from16 v0, v58

    iget-wide v0, v0, Ljavafx/scene/layout/BackgroundSize;->height:D

    move-wide/from16 v58, v0

    const-wide/high16 v60, -0x4010000000000000L    # -1.0

    cmpl-double v58, v58, v60

    if-nez v58, :cond_1c

    move-object/from16 v58, v19

    move-object/from16 v0, v58

    iget-object v0, v0, Ljavafx/scene/layout/BackgroundImage;->size:Ljavafx/scene/layout/BackgroundSize;

    move-object/from16 v58, v0

    move-object/from16 v0, v58

    iget-wide v0, v0, Ljavafx/scene/layout/BackgroundSize;->width:D

    move-wide/from16 v58, v0

    const-wide/high16 v60, -0x4010000000000000L    # -1.0

    cmpl-double v58, v58, v60

    if-nez v58, :cond_1c

    move-object/from16 v58, v19

    move-object/from16 v0, v58

    iget-object v0, v0, Ljavafx/scene/layout/BackgroundImage;->size:Ljavafx/scene/layout/BackgroundSize;

    move-object/from16 v58, v0

    move-object/from16 v0, v58

    iget-boolean v0, v0, Ljavafx/scene/layout/BackgroundSize;->widthAsPercentage:Z

    move/from16 v58, v0

    if-eqz v58, :cond_1c

    move-object/from16 v58, v19

    move-object/from16 v0, v58

    iget-object v0, v0, Ljavafx/scene/layout/BackgroundImage;->size:Ljavafx/scene/layout/BackgroundSize;

    move-object/from16 v58, v0

    move-object/from16 v0, v58

    iget-boolean v0, v0, Ljavafx/scene/layout/BackgroundSize;->heightAsPercentage:Z

    move/from16 v58, v0

    if-eqz v58, :cond_1c

    .line 532
    :cond_16
    move-wide/from16 v58, v9

    invoke-static/range {v58 .. v59}, Ljava/lang/Double;->isNaN(D)Z

    move-result v58

    if-eqz v58, :cond_18

    const-wide/16 v58, 0x0

    :goto_f
    move-wide/from16 v9, v58

    .line 533
    move-wide/from16 v58, v11

    invoke-static/range {v58 .. v59}, Ljava/lang/Double;->isNaN(D)Z

    move-result v58

    if-eqz v58, :cond_19

    const-wide/16 v58, 0x0

    :goto_10
    move-wide/from16 v11, v58

    .line 534
    move-wide/from16 v58, v13

    invoke-static/range {v58 .. v59}, Ljava/lang/Double;->isNaN(D)Z

    move-result v58

    if-eqz v58, :cond_1a

    const-wide/16 v58, 0x0

    :goto_11
    move-wide/from16 v13, v58

    .line 535
    move-wide/from16 v58, v15

    invoke-static/range {v58 .. v59}, Ljava/lang/Double;->isNaN(D)Z

    move-result v58

    if-eqz v58, :cond_1b

    const-wide/16 v58, 0x0

    :goto_12
    move-wide/from16 v15, v58

    .line 613
    .end local v19    # "bi":Ljavafx/scene/layout/BackgroundImage;
    :cond_17
    :goto_13
    move-object/from16 v58, v8

    const/16 v59, 0x0

    move-wide/from16 v60, v9

    aput-wide v60, v58, v59

    .line 614
    move-object/from16 v58, v8

    const/16 v59, 0x1

    move-wide/from16 v60, v11

    aput-wide v60, v58, v59

    .line 615
    move-object/from16 v58, v8

    const/16 v59, 0x2

    move-wide/from16 v60, v13

    aput-wide v60, v58, v59

    .line 616
    move-object/from16 v58, v8

    const/16 v59, 0x3

    move-wide/from16 v60, v15

    aput-wide v60, v58, v59

    .line 617
    return-void

    .line 532
    .restart local v19    # "bi":Ljavafx/scene/layout/BackgroundImage;
    :cond_18
    const-wide/16 v58, 0x0

    move-wide/from16 v60, v9

    invoke-static/range {v58 .. v61}, Ljava/lang/Math;->min(DD)D

    move-result-wide v58

    goto :goto_f

    .line 533
    :cond_19
    const-wide/16 v58, 0x0

    move-wide/from16 v60, v11

    invoke-static/range {v58 .. v61}, Ljava/lang/Math;->min(DD)D

    move-result-wide v58

    goto :goto_10

    .line 534
    :cond_1a
    const-wide/16 v58, 0x0

    move-wide/from16 v60, v13

    invoke-static/range {v58 .. v61}, Ljava/lang/Math;->min(DD)D

    move-result-wide v58

    goto :goto_11

    .line 535
    :cond_1b
    const-wide/16 v58, 0x0

    move-wide/from16 v60, v15

    invoke-static/range {v58 .. v61}, Ljava/lang/Math;->min(DD)D

    move-result-wide v58

    goto :goto_12

    .line 545
    :cond_1c
    move-object/from16 v58, v19

    move-object/from16 v0, v58

    iget-object v0, v0, Ljavafx/scene/layout/BackgroundImage;->repeatX:Ljavafx/scene/layout/BackgroundRepeat;

    move-object/from16 v58, v0

    sget-object v59, Ljavafx/scene/layout/BackgroundRepeat;->SPACE:Ljavafx/scene/layout/BackgroundRepeat;

    move-object/from16 v0, v58

    move-object/from16 v1, v59

    if-eq v0, v1, :cond_1d

    move-object/from16 v58, v19

    move-object/from16 v0, v58

    iget-object v0, v0, Ljavafx/scene/layout/BackgroundImage;->repeatY:Ljavafx/scene/layout/BackgroundRepeat;

    move-object/from16 v58, v0

    sget-object v59, Ljavafx/scene/layout/BackgroundRepeat;->SPACE:Ljavafx/scene/layout/BackgroundRepeat;

    move-object/from16 v0, v58

    move-object/from16 v1, v59

    if-ne v0, v1, :cond_1e

    .line 546
    :cond_1d
    move-object/from16 v58, v19

    const/16 v59, 0x0

    invoke-static/range {v59 .. v59}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v59

    move-object/from16 v0, v59

    move-object/from16 v1, v58

    iput-object v0, v1, Ljavafx/scene/layout/BackgroundImage;->opaque:Ljava/lang/Boolean;

    .line 547
    goto/16 :goto_0

    .line 553
    :cond_1e
    move-object/from16 v58, v19

    move-object/from16 v0, v58

    iget-object v0, v0, Ljavafx/scene/layout/BackgroundImage;->repeatX:Ljavafx/scene/layout/BackgroundRepeat;

    move-object/from16 v58, v0

    sget-object v59, Ljavafx/scene/layout/BackgroundRepeat;->REPEAT:Ljavafx/scene/layout/BackgroundRepeat;

    move-object/from16 v0, v58

    move-object/from16 v1, v59

    if-eq v0, v1, :cond_1f

    move-object/from16 v58, v19

    move-object/from16 v0, v58

    iget-object v0, v0, Ljavafx/scene/layout/BackgroundImage;->repeatX:Ljavafx/scene/layout/BackgroundRepeat;

    move-object/from16 v58, v0

    sget-object v59, Ljavafx/scene/layout/BackgroundRepeat;->ROUND:Ljavafx/scene/layout/BackgroundRepeat;

    move-object/from16 v0, v58

    move-object/from16 v1, v59

    if-ne v0, v1, :cond_21

    :cond_1f
    const/16 v58, 0x1

    :goto_14
    move/from16 v20, v58

    .line 554
    .local v20, "filledX":Z
    move-object/from16 v58, v19

    move-object/from16 v0, v58

    iget-object v0, v0, Ljavafx/scene/layout/BackgroundImage;->repeatY:Ljavafx/scene/layout/BackgroundRepeat;

    move-object/from16 v58, v0

    sget-object v59, Ljavafx/scene/layout/BackgroundRepeat;->REPEAT:Ljavafx/scene/layout/BackgroundRepeat;

    move-object/from16 v0, v58

    move-object/from16 v1, v59

    if-eq v0, v1, :cond_20

    move-object/from16 v58, v19

    move-object/from16 v0, v58

    iget-object v0, v0, Ljavafx/scene/layout/BackgroundImage;->repeatY:Ljavafx/scene/layout/BackgroundRepeat;

    move-object/from16 v58, v0

    sget-object v59, Ljavafx/scene/layout/BackgroundRepeat;->ROUND:Ljavafx/scene/layout/BackgroundRepeat;

    move-object/from16 v0, v58

    move-object/from16 v1, v59

    if-ne v0, v1, :cond_22

    :cond_20
    const/16 v58, 0x1

    :goto_15
    move/from16 v21, v58

    .line 555
    .local v21, "filledY":Z
    move/from16 v58, v20

    if-eqz v58, :cond_27

    move/from16 v58, v21

    if-eqz v58, :cond_27

    .line 556
    move-wide/from16 v58, v9

    invoke-static/range {v58 .. v59}, Ljava/lang/Double;->isNaN(D)Z

    move-result v58

    if-eqz v58, :cond_23

    const-wide/16 v58, 0x0

    :goto_16
    move-wide/from16 v9, v58

    .line 557
    move-wide/from16 v58, v11

    invoke-static/range {v58 .. v59}, Ljava/lang/Double;->isNaN(D)Z

    move-result v58

    if-eqz v58, :cond_24

    const-wide/16 v58, 0x0

    :goto_17
    move-wide/from16 v11, v58

    .line 558
    move-wide/from16 v58, v13

    invoke-static/range {v58 .. v59}, Ljava/lang/Double;->isNaN(D)Z

    move-result v58

    if-eqz v58, :cond_25

    const-wide/16 v58, 0x0

    :goto_18
    move-wide/from16 v13, v58

    .line 559
    move-wide/from16 v58, v15

    invoke-static/range {v58 .. v59}, Ljava/lang/Double;->isNaN(D)Z

    move-result v58

    if-eqz v58, :cond_26

    const-wide/16 v58, 0x0

    :goto_19
    move-wide/from16 v15, v58

    .line 560
    goto/16 :goto_13

    .line 553
    .end local v20    # "filledX":Z
    .end local v21    # "filledY":Z
    :cond_21
    const/16 v58, 0x0

    goto :goto_14

    .line 554
    .restart local v20    # "filledX":Z
    :cond_22
    const/16 v58, 0x0

    goto :goto_15

    .line 556
    .restart local v21    # "filledY":Z
    :cond_23
    const-wide/16 v58, 0x0

    move-wide/from16 v60, v9

    invoke-static/range {v58 .. v61}, Ljava/lang/Math;->min(DD)D

    move-result-wide v58

    goto :goto_16

    .line 557
    :cond_24
    const-wide/16 v58, 0x0

    move-wide/from16 v60, v11

    invoke-static/range {v58 .. v61}, Ljava/lang/Math;->min(DD)D

    move-result-wide v58

    goto :goto_17

    .line 558
    :cond_25
    const-wide/16 v58, 0x0

    move-wide/from16 v60, v13

    invoke-static/range {v58 .. v61}, Ljava/lang/Math;->min(DD)D

    move-result-wide v58

    goto :goto_18

    .line 559
    :cond_26
    const-wide/16 v58, 0x0

    move-wide/from16 v60, v15

    invoke-static/range {v58 .. v61}, Ljava/lang/Math;->min(DD)D

    move-result-wide v58

    goto :goto_19

    .line 565
    :cond_27
    move-object/from16 v58, v19

    move-object/from16 v0, v58

    iget-object v0, v0, Ljavafx/scene/layout/BackgroundImage;->size:Ljavafx/scene/layout/BackgroundSize;

    move-object/from16 v58, v0

    move-object/from16 v0, v58

    iget-boolean v0, v0, Ljavafx/scene/layout/BackgroundSize;->widthAsPercentage:Z

    move/from16 v58, v0

    if-eqz v58, :cond_29

    move-object/from16 v58, v19

    move-object/from16 v0, v58

    iget-object v0, v0, Ljavafx/scene/layout/BackgroundImage;->size:Ljavafx/scene/layout/BackgroundSize;

    move-object/from16 v58, v0

    move-object/from16 v0, v58

    iget-wide v0, v0, Ljavafx/scene/layout/BackgroundSize;->width:D

    move-wide/from16 v58, v0

    move-wide/from16 v60, v3

    mul-double v58, v58, v60

    :goto_1a
    move-wide/from16 v22, v58

    .line 566
    .local v22, "w":D
    move-object/from16 v58, v19

    move-object/from16 v0, v58

    iget-object v0, v0, Ljavafx/scene/layout/BackgroundImage;->size:Ljavafx/scene/layout/BackgroundSize;

    move-object/from16 v58, v0

    move-object/from16 v0, v58

    iget-boolean v0, v0, Ljavafx/scene/layout/BackgroundSize;->heightAsPercentage:Z

    move/from16 v58, v0

    if-eqz v58, :cond_2a

    move-object/from16 v58, v19

    move-object/from16 v0, v58

    iget-object v0, v0, Ljavafx/scene/layout/BackgroundImage;->size:Ljavafx/scene/layout/BackgroundSize;

    move-object/from16 v58, v0

    move-object/from16 v0, v58

    iget-wide v0, v0, Ljavafx/scene/layout/BackgroundSize;->height:D

    move-wide/from16 v58, v0

    move-wide/from16 v60, v5

    mul-double v58, v58, v60

    :goto_1b
    move-wide/from16 v24, v58

    .line 567
    .local v24, "h":D
    move-object/from16 v58, v19

    move-object/from16 v0, v58

    iget-object v0, v0, Ljavafx/scene/layout/BackgroundImage;->image:Ljavafx/scene/image/Image;

    move-object/from16 v58, v0

    invoke-virtual/range {v58 .. v58}, Ljavafx/scene/image/Image;->getWidth()D

    move-result-wide v58

    move-wide/from16 v26, v58

    .line 568
    .local v26, "imgUnscaledWidth":D
    move-object/from16 v58, v19

    move-object/from16 v0, v58

    iget-object v0, v0, Ljavafx/scene/layout/BackgroundImage;->image:Ljavafx/scene/image/Image;

    move-object/from16 v58, v0

    invoke-virtual/range {v58 .. v58}, Ljavafx/scene/image/Image;->getHeight()D

    move-result-wide v58

    move-wide/from16 v28, v58

    .line 574
    .local v28, "imgUnscaledHeight":D
    move-object/from16 v58, v19

    move-object/from16 v0, v58

    iget-object v0, v0, Ljavafx/scene/layout/BackgroundImage;->size:Ljavafx/scene/layout/BackgroundSize;

    move-object/from16 v58, v0

    move-object/from16 v0, v58

    iget-boolean v0, v0, Ljavafx/scene/layout/BackgroundSize;->contain:Z

    move/from16 v58, v0

    if-eqz v58, :cond_2b

    .line 578
    move-wide/from16 v58, v3

    move-wide/from16 v60, v26

    div-double v58, v58, v60

    move-wide/from16 v34, v58

    .line 579
    .local v34, "scaleX":D
    move-wide/from16 v58, v5

    move-wide/from16 v60, v28

    div-double v58, v58, v60

    move-wide/from16 v36, v58

    .line 580
    .local v36, "scaleY":D
    move-wide/from16 v58, v34

    move-wide/from16 v60, v36

    invoke-static/range {v58 .. v61}, Ljava/lang/Math;->min(DD)D

    move-result-wide v58

    move-wide/from16 v38, v58

    .line 581
    .local v38, "scale":D
    move-wide/from16 v58, v38

    move-wide/from16 v60, v26

    mul-double v58, v58, v60

    invoke-static/range {v58 .. v59}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v58

    move-wide/from16 v30, v58

    .line 582
    .local v30, "tileWidth":D
    move-wide/from16 v58, v38

    move-wide/from16 v60, v28

    mul-double v58, v58, v60

    invoke-static/range {v58 .. v59}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v58

    move-wide/from16 v32, v58

    .line 605
    .end local v34    # "scaleX":D
    .end local v36    # "scaleY":D
    .end local v38    # "scale":D
    .local v32, "tileHeight":D
    :goto_1c
    move-wide/from16 v58, v9

    invoke-static/range {v58 .. v59}, Ljava/lang/Double;->isNaN(D)Z

    move-result v58

    if-eqz v58, :cond_2f

    const-wide/16 v58, 0x0

    :goto_1d
    move-wide/from16 v9, v58

    .line 606
    move-wide/from16 v58, v11

    invoke-static/range {v58 .. v59}, Ljava/lang/Double;->isNaN(D)Z

    move-result v58

    if-eqz v58, :cond_30

    move-wide/from16 v58, v3

    move-wide/from16 v60, v30

    sub-double v58, v58, v60

    :goto_1e
    move-wide/from16 v11, v58

    .line 607
    move-wide/from16 v58, v13

    invoke-static/range {v58 .. v59}, Ljava/lang/Double;->isNaN(D)Z

    move-result v58

    if-eqz v58, :cond_31

    move-wide/from16 v58, v5

    move-wide/from16 v60, v32

    sub-double v58, v58, v60

    :goto_1f
    move-wide/from16 v13, v58

    .line 608
    move-wide/from16 v58, v15

    invoke-static/range {v58 .. v59}, Ljava/lang/Double;->isNaN(D)Z

    move-result v58

    if-eqz v58, :cond_32

    const-wide/16 v58, 0x0

    :goto_20
    move-wide/from16 v15, v58

    .line 611
    .end local v20    # "filledX":Z
    .end local v21    # "filledY":Z
    .end local v22    # "w":D
    .end local v24    # "h":D
    .end local v26    # "imgUnscaledWidth":D
    .end local v28    # "imgUnscaledHeight":D
    .end local v30    # "tileWidth":D
    .end local v32    # "tileHeight":D
    :cond_28
    goto/16 :goto_0

    .line 565
    .restart local v20    # "filledX":Z
    .restart local v21    # "filledY":Z
    :cond_29
    move-object/from16 v58, v19

    move-object/from16 v0, v58

    iget-object v0, v0, Ljavafx/scene/layout/BackgroundImage;->size:Ljavafx/scene/layout/BackgroundSize;

    move-object/from16 v58, v0

    move-object/from16 v0, v58

    iget-wide v0, v0, Ljavafx/scene/layout/BackgroundSize;->width:D

    move-wide/from16 v58, v0

    goto/16 :goto_1a

    .line 566
    .restart local v22    # "w":D
    :cond_2a
    move-object/from16 v58, v19

    move-object/from16 v0, v58

    iget-object v0, v0, Ljavafx/scene/layout/BackgroundImage;->size:Ljavafx/scene/layout/BackgroundSize;

    move-object/from16 v58, v0

    move-object/from16 v0, v58

    iget-wide v0, v0, Ljavafx/scene/layout/BackgroundSize;->height:D

    move-wide/from16 v58, v0

    goto/16 :goto_1b

    .line 583
    .restart local v24    # "h":D
    .restart local v26    # "imgUnscaledWidth":D
    .restart local v28    # "imgUnscaledHeight":D
    :cond_2b
    move-object/from16 v58, v19

    move-object/from16 v0, v58

    iget-object v0, v0, Ljavafx/scene/layout/BackgroundImage;->size:Ljavafx/scene/layout/BackgroundSize;

    move-object/from16 v58, v0

    move-object/from16 v0, v58

    iget-wide v0, v0, Ljavafx/scene/layout/BackgroundSize;->width:D

    move-wide/from16 v58, v0

    const-wide/16 v60, 0x0

    cmpl-double v58, v58, v60

    if-ltz v58, :cond_2c

    move-object/from16 v58, v19

    move-object/from16 v0, v58

    iget-object v0, v0, Ljavafx/scene/layout/BackgroundImage;->size:Ljavafx/scene/layout/BackgroundSize;

    move-object/from16 v58, v0

    move-object/from16 v0, v58

    iget-wide v0, v0, Ljavafx/scene/layout/BackgroundSize;->height:D

    move-wide/from16 v58, v0

    const-wide/16 v60, 0x0

    cmpl-double v58, v58, v60

    if-ltz v58, :cond_2c

    .line 587
    move-wide/from16 v58, v22

    move-wide/from16 v30, v58

    .line 588
    .restart local v30    # "tileWidth":D
    move-wide/from16 v58, v24

    move-wide/from16 v32, v58

    .restart local v32    # "tileHeight":D
    goto/16 :goto_1c

    .line 589
    .end local v30    # "tileWidth":D
    .end local v32    # "tileHeight":D
    :cond_2c
    move-wide/from16 v58, v22

    const-wide/16 v60, 0x0

    cmpl-double v58, v58, v60

    if-ltz v58, :cond_2d

    .line 591
    move-wide/from16 v58, v22

    move-wide/from16 v30, v58

    .line 592
    .restart local v30    # "tileWidth":D
    move-wide/from16 v58, v30

    move-wide/from16 v60, v26

    div-double v58, v58, v60

    move-wide/from16 v34, v58

    .line 593
    .local v34, "scale":D
    move-wide/from16 v58, v28

    move-wide/from16 v60, v34

    mul-double v58, v58, v60

    move-wide/from16 v32, v58

    .line 594
    .restart local v32    # "tileHeight":D
    goto/16 :goto_1c

    .end local v30    # "tileWidth":D
    .end local v32    # "tileHeight":D
    .end local v34    # "scale":D
    :cond_2d
    move-wide/from16 v58, v24

    const-wide/16 v60, 0x0

    cmpl-double v58, v58, v60

    if-ltz v58, :cond_2e

    .line 596
    move-wide/from16 v58, v24

    move-wide/from16 v32, v58

    .line 597
    .restart local v32    # "tileHeight":D
    move-wide/from16 v58, v32

    move-wide/from16 v60, v28

    div-double v58, v58, v60

    move-wide/from16 v34, v58

    .line 598
    .restart local v34    # "scale":D
    move-wide/from16 v58, v26

    move-wide/from16 v60, v34

    mul-double v58, v58, v60

    move-wide/from16 v30, v58

    .line 599
    .restart local v30    # "tileWidth":D
    goto/16 :goto_1c

    .line 601
    .end local v30    # "tileWidth":D
    .end local v32    # "tileHeight":D
    .end local v34    # "scale":D
    :cond_2e
    move-wide/from16 v58, v26

    move-wide/from16 v30, v58

    .line 602
    .restart local v30    # "tileWidth":D
    move-wide/from16 v58, v28

    move-wide/from16 v32, v58

    .restart local v32    # "tileHeight":D
    goto/16 :goto_1c

    .line 605
    :cond_2f
    const-wide/16 v58, 0x0

    move-wide/from16 v60, v9

    invoke-static/range {v58 .. v61}, Ljava/lang/Math;->min(DD)D

    move-result-wide v58

    goto/16 :goto_1d

    .line 606
    :cond_30
    move-wide/from16 v58, v3

    move-wide/from16 v60, v30

    sub-double v58, v58, v60

    move-wide/from16 v60, v11

    invoke-static/range {v58 .. v61}, Ljava/lang/Math;->min(DD)D

    move-result-wide v58

    goto/16 :goto_1e

    .line 607
    :cond_31
    move-wide/from16 v58, v5

    move-wide/from16 v60, v32

    sub-double v58, v58, v60

    move-wide/from16 v60, v13

    invoke-static/range {v58 .. v61}, Ljava/lang/Math;->min(DD)D

    move-result-wide v58

    goto/16 :goto_1f

    .line 608
    :cond_32
    const-wide/16 v58, 0x0

    move-wide/from16 v60, v15

    invoke-static/range {v58 .. v61}, Ljava/lang/Math;->min(DD)D

    move-result-wide v58

    goto/16 :goto_20
.end method

.method public static getClassCssMetaData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljavafx/css/CssMetaData",
            "<+",
            "Ljavafx/css/Styleable;",
            "*>;>;"
        }
    .end annotation

    .prologue
    .line 125
    sget-object v0, Ljavafx/scene/layout/Background;->STYLEABLES:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method computeOpaqueInsets(DD[D)V
    .locals 15

    .prologue
    .line 378
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/layout/Background;
    move-wide/from16 v2, p1

    .local v2, "width":D
    move-wide/from16 v4, p3

    .local v4, "height":D
    move-object/from16 v6, p5

    .local v6, "trbl":[D
    move-object v7, v1

    move-wide v8, v2

    move-wide v10, v4

    const/4 v12, 0x0

    move-object v13, v6

    invoke-direct/range {v7 .. v13}, Ljavafx/scene/layout/Background;->computeOpaqueInsets(DDZ[D)V

    .line 379
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    .line 623
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/Background;
    move-object v1, p1

    .local v1, "o":Ljava/lang/Object;
    move-object v3, v0

    move-object v4, v1

    if-ne v3, v4, :cond_0

    const/4 v3, 0x1

    move v0, v3

    .line 631
    .end local v0    # "this":Ljavafx/scene/layout/Background;
    :goto_0
    return v0

    .line 624
    .restart local v0    # "this":Ljavafx/scene/layout/Background;
    :cond_0
    move-object v3, v1

    if-eqz v3, :cond_1

    move-object v3, v0

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_2

    :cond_1
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 625
    :cond_2
    move-object v3, v1

    check-cast v3, Ljavafx/scene/layout/Background;

    move-object v2, v3

    .line 627
    .local v2, "that":Ljavafx/scene/layout/Background;
    move-object v3, v0

    iget v3, v3, Ljavafx/scene/layout/Background;->hash:I

    move-object v4, v2

    iget v4, v4, Ljavafx/scene/layout/Background;->hash:I

    if-eq v3, v4, :cond_3

    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 628
    :cond_3
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/layout/Background;->fills:Ljava/util/List;

    move-object v4, v2

    iget-object v4, v4, Ljavafx/scene/layout/Background;->fills:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 629
    :cond_4
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/layout/Background;->images:Ljava/util/List;

    move-object v4, v2

    iget-object v4, v4, Ljavafx/scene/layout/Background;->images:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 631
    :cond_5
    const/4 v3, 0x1

    move v0, v3

    goto :goto_0
.end method

.method public final getFills()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljavafx/scene/layout/BackgroundFill;",
            ">;"
        }
    .end annotation

    .prologue
    .line 138
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/Background;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/Background;->fills:Ljava/util/List;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/Background;
    return-object v0
.end method

.method public final getImages()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljavafx/scene/layout/BackgroundImage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 146
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/Background;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/Background;->images:Ljava/util/List;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/Background;
    return-object v0
.end method

.method public final getOutsets()Ljavafx/geometry/Insets;
    .locals 2

    .prologue
    .line 157
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/Background;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/Background;->outsets:Ljavafx/geometry/Insets;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/Background;
    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 638
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/Background;
    move-object v1, v0

    iget v1, v1, Ljavafx/scene/layout/Background;->hash:I

    move v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/Background;
    return v0
.end method

.method public final isEmpty()Z
    .locals 2

    .prologue
    .line 165
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/Background;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/Background;->fills:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/Background;->images:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/Background;
    return v0

    .restart local v0    # "this":Ljavafx/scene/layout/Background;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isFillPercentageBased()Z
    .locals 2

    .prologue
    .line 362
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/Background;
    move-object v1, v0

    iget-boolean v1, v1, Ljavafx/scene/layout/Background;->hasPercentageBasedFills:Z

    move v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/Background;
    return v0
.end method
