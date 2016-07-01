.class public final Ljavafx/scene/layout/Border;
.super Ljava/lang/Object;
.source "Border.java"


# static fields
.field static final BORDER_COLOR:Ljavafx/css/CssMetaData;
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

.field static final BORDER_IMAGE_INSETS:Ljavafx/css/CssMetaData;
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

.field static final BORDER_IMAGE_REPEAT:Ljavafx/css/CssMetaData;
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

.field static final BORDER_IMAGE_SLICE:Ljavafx/css/CssMetaData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/css/CssMetaData",
            "<",
            "Ljavafx/scene/Node;",
            "[",
            "Lcom/sun/javafx/scene/layout/region/BorderImageSlices;",
            ">;"
        }
    .end annotation
.end field

.field static final BORDER_IMAGE_SOURCE:Ljavafx/css/CssMetaData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/css/CssMetaData",
            "<",
            "Ljavafx/scene/Node;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static final BORDER_IMAGE_WIDTH:Ljavafx/css/CssMetaData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/css/CssMetaData",
            "<",
            "Ljavafx/scene/Node;",
            "[",
            "Ljavafx/scene/layout/BorderWidths;",
            ">;"
        }
    .end annotation
.end field

.field static final BORDER_INSETS:Ljavafx/css/CssMetaData;
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

.field static final BORDER_RADIUS:Ljavafx/css/CssMetaData;
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

.field static final BORDER_STYLE:Ljavafx/css/CssMetaData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/css/CssMetaData",
            "<",
            "Ljavafx/scene/Node;",
            "[[",
            "Ljavafx/scene/layout/BorderStrokeStyle;",
            ">;"
        }
    .end annotation
.end field

.field static final BORDER_WIDTH:Ljavafx/css/CssMetaData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/css/CssMetaData",
            "<",
            "Ljavafx/scene/Node;",
            "[",
            "Lcom/sun/javafx/scene/layout/region/Margins;",
            ">;"
        }
    .end annotation
.end field

.field public static final EMPTY:Ljavafx/scene/layout/Border;

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
.field private final hash:I

.field final images:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljavafx/scene/layout/BorderImage;",
            ">;"
        }
    .end annotation
.end field

.field final insets:Ljavafx/geometry/Insets;

.field final outsets:Ljavafx/geometry/Insets;

.field final strokes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljavafx/scene/layout/BorderStroke;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .prologue
    .line 90
    new-instance v0, Lcom/sun/javafx/css/SubCssMetaData;

    move-object v11, v0

    move-object v0, v11

    move-object v1, v11

    const-string v2, "-fx-border-color"

    .line 92
    invoke-static {}, Lcom/sun/javafx/scene/layout/region/LayeredBorderPaintConverter;->getInstance()Lcom/sun/javafx/scene/layout/region/LayeredBorderPaintConverter;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/sun/javafx/css/SubCssMetaData;-><init>(Ljava/lang/String;Ljavafx/css/StyleConverter;)V

    sput-object v0, Ljavafx/scene/layout/Border;->BORDER_COLOR:Ljavafx/css/CssMetaData;

    .line 94
    new-instance v0, Lcom/sun/javafx/css/SubCssMetaData;

    move-object v11, v0

    move-object v0, v11

    move-object v1, v11

    const-string v2, "-fx-border-style"

    .line 96
    invoke-static {}, Lcom/sun/javafx/scene/layout/region/LayeredBorderStyleConverter;->getInstance()Lcom/sun/javafx/scene/layout/region/LayeredBorderStyleConverter;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/sun/javafx/css/SubCssMetaData;-><init>(Ljava/lang/String;Ljavafx/css/StyleConverter;)V

    sput-object v0, Ljavafx/scene/layout/Border;->BORDER_STYLE:Ljavafx/css/CssMetaData;

    .line 98
    new-instance v0, Lcom/sun/javafx/css/SubCssMetaData;

    move-object v11, v0

    move-object v0, v11

    move-object v1, v11

    const-string v2, "-fx-border-width"

    .line 100
    invoke-static {}, Lcom/sun/javafx/scene/layout/region/Margins$SequenceConverter;->getInstance()Lcom/sun/javafx/scene/layout/region/Margins$SequenceConverter;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/sun/javafx/css/SubCssMetaData;-><init>(Ljava/lang/String;Ljavafx/css/StyleConverter;)V

    sput-object v0, Ljavafx/scene/layout/Border;->BORDER_WIDTH:Ljavafx/css/CssMetaData;

    .line 102
    new-instance v0, Lcom/sun/javafx/css/SubCssMetaData;

    move-object v11, v0

    move-object v0, v11

    move-object v1, v11

    const-string v2, "-fx-border-radius"

    .line 104
    invoke-static {}, Lcom/sun/javafx/scene/layout/region/CornerRadiiConverter;->getInstance()Lcom/sun/javafx/scene/layout/region/CornerRadiiConverter;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/sun/javafx/css/SubCssMetaData;-><init>(Ljava/lang/String;Ljavafx/css/StyleConverter;)V

    sput-object v0, Ljavafx/scene/layout/Border;->BORDER_RADIUS:Ljavafx/css/CssMetaData;

    .line 106
    new-instance v0, Lcom/sun/javafx/css/SubCssMetaData;

    move-object v11, v0

    move-object v0, v11

    move-object v1, v11

    const-string v2, "-fx-border-insets"

    .line 108
    invoke-static {}, Lcom/sun/javafx/css/converters/InsetsConverter$SequenceConverter;->getInstance()Lcom/sun/javafx/css/converters/InsetsConverter$SequenceConverter;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/sun/javafx/css/SubCssMetaData;-><init>(Ljava/lang/String;Ljavafx/css/StyleConverter;)V

    sput-object v0, Ljavafx/scene/layout/Border;->BORDER_INSETS:Ljavafx/css/CssMetaData;

    .line 110
    new-instance v0, Lcom/sun/javafx/css/SubCssMetaData;

    move-object v11, v0

    move-object v0, v11

    move-object v1, v11

    const-string v2, "-fx-border-image-source"

    .line 112
    invoke-static {}, Lcom/sun/javafx/css/converters/URLConverter$SequenceConverter;->getInstance()Lcom/sun/javafx/css/converters/URLConverter$SequenceConverter;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/sun/javafx/css/SubCssMetaData;-><init>(Ljava/lang/String;Ljavafx/css/StyleConverter;)V

    sput-object v0, Ljavafx/scene/layout/Border;->BORDER_IMAGE_SOURCE:Ljavafx/css/CssMetaData;

    .line 114
    new-instance v0, Lcom/sun/javafx/css/SubCssMetaData;

    move-object v11, v0

    move-object v0, v11

    move-object v1, v11

    const-string v2, "-fx-border-image-repeat"

    .line 116
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

    sput-object v0, Ljavafx/scene/layout/Border;->BORDER_IMAGE_REPEAT:Ljavafx/css/CssMetaData;

    .line 119
    new-instance v0, Lcom/sun/javafx/css/SubCssMetaData;

    move-object v11, v0

    move-object v0, v11

    move-object v1, v11

    const-string v2, "-fx-border-image-slice"

    .line 121
    invoke-static {}, Lcom/sun/javafx/scene/layout/region/SliceSequenceConverter;->getInstance()Lcom/sun/javafx/scene/layout/region/SliceSequenceConverter;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Lcom/sun/javafx/scene/layout/region/BorderImageSlices;

    move-object v11, v4

    move-object v4, v11

    move-object v5, v11

    const/4 v6, 0x0

    sget-object v7, Lcom/sun/javafx/scene/layout/region/BorderImageSlices;->DEFAULT:Lcom/sun/javafx/scene/layout/region/BorderImageSlices;

    aput-object v7, v5, v6

    invoke-direct {v1, v2, v3, v4}, Lcom/sun/javafx/css/SubCssMetaData;-><init>(Ljava/lang/String;Ljavafx/css/StyleConverter;Ljava/lang/Object;)V

    sput-object v0, Ljavafx/scene/layout/Border;->BORDER_IMAGE_SLICE:Ljavafx/css/CssMetaData;

    .line 124
    new-instance v0, Lcom/sun/javafx/css/SubCssMetaData;

    move-object v11, v0

    move-object v0, v11

    move-object v1, v11

    const-string v2, "-fx-border-image-width"

    .line 126
    invoke-static {}, Lcom/sun/javafx/scene/layout/region/BorderImageWidthConverter;->getInstance()Lcom/sun/javafx/scene/layout/region/BorderImageWidthConverter;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljavafx/scene/layout/BorderWidths;

    move-object v11, v4

    move-object v4, v11

    move-object v5, v11

    const/4 v6, 0x0

    sget-object v7, Ljavafx/scene/layout/BorderWidths;->DEFAULT:Ljavafx/scene/layout/BorderWidths;

    aput-object v7, v5, v6

    invoke-direct {v1, v2, v3, v4}, Lcom/sun/javafx/css/SubCssMetaData;-><init>(Ljava/lang/String;Ljavafx/css/StyleConverter;Ljava/lang/Object;)V

    sput-object v0, Ljavafx/scene/layout/Border;->BORDER_IMAGE_WIDTH:Ljavafx/css/CssMetaData;

    .line 129
    new-instance v0, Lcom/sun/javafx/css/SubCssMetaData;

    move-object v11, v0

    move-object v0, v11

    move-object v1, v11

    const-string v2, "-fx-border-image-insets"

    .line 131
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

    sput-object v0, Ljavafx/scene/layout/Border;->BORDER_IMAGE_INSETS:Ljavafx/css/CssMetaData;

    .line 134
    const/16 v0, 0xa

    new-array v0, v0, [Ljavafx/css/CssMetaData;

    move-object v11, v0

    move-object v0, v11

    move-object v1, v11

    const/4 v2, 0x0

    sget-object v3, Ljavafx/scene/layout/Border;->BORDER_COLOR:Ljavafx/css/CssMetaData;

    aput-object v3, v1, v2

    move-object v11, v0

    move-object v0, v11

    move-object v1, v11

    const/4 v2, 0x1

    sget-object v3, Ljavafx/scene/layout/Border;->BORDER_STYLE:Ljavafx/css/CssMetaData;

    aput-object v3, v1, v2

    move-object v11, v0

    move-object v0, v11

    move-object v1, v11

    const/4 v2, 0x2

    sget-object v3, Ljavafx/scene/layout/Border;->BORDER_WIDTH:Ljavafx/css/CssMetaData;

    aput-object v3, v1, v2

    move-object v11, v0

    move-object v0, v11

    move-object v1, v11

    const/4 v2, 0x3

    sget-object v3, Ljavafx/scene/layout/Border;->BORDER_RADIUS:Ljavafx/css/CssMetaData;

    aput-object v3, v1, v2

    move-object v11, v0

    move-object v0, v11

    move-object v1, v11

    const/4 v2, 0x4

    sget-object v3, Ljavafx/scene/layout/Border;->BORDER_INSETS:Ljavafx/css/CssMetaData;

    aput-object v3, v1, v2

    move-object v11, v0

    move-object v0, v11

    move-object v1, v11

    const/4 v2, 0x5

    sget-object v3, Ljavafx/scene/layout/Border;->BORDER_IMAGE_SOURCE:Ljavafx/css/CssMetaData;

    aput-object v3, v1, v2

    move-object v11, v0

    move-object v0, v11

    move-object v1, v11

    const/4 v2, 0x6

    sget-object v3, Ljavafx/scene/layout/Border;->BORDER_IMAGE_REPEAT:Ljavafx/css/CssMetaData;

    aput-object v3, v1, v2

    move-object v11, v0

    move-object v0, v11

    move-object v1, v11

    const/4 v2, 0x7

    sget-object v3, Ljavafx/scene/layout/Border;->BORDER_IMAGE_SLICE:Ljavafx/css/CssMetaData;

    aput-object v3, v1, v2

    move-object v11, v0

    move-object v0, v11

    move-object v1, v11

    const/16 v2, 0x8

    sget-object v3, Ljavafx/scene/layout/Border;->BORDER_IMAGE_WIDTH:Ljavafx/css/CssMetaData;

    aput-object v3, v1, v2

    move-object v11, v0

    move-object v0, v11

    move-object v1, v11

    const/16 v2, 0x9

    sget-object v3, Ljavafx/scene/layout/Border;->BORDER_IMAGE_INSETS:Ljavafx/css/CssMetaData;

    aput-object v3, v1, v2

    .line 137
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 135
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Ljavafx/scene/layout/Border;->STYLEABLES:Ljava/util/List;

    .line 159
    new-instance v0, Ljavafx/scene/layout/Border;

    move-object v11, v0

    move-object v0, v11

    move-object v1, v11

    const/4 v2, 0x0

    check-cast v2, [Ljavafx/scene/layout/BorderStroke;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Ljavafx/scene/layout/Border;-><init>([Ljavafx/scene/layout/BorderStroke;[Ljavafx/scene/layout/BorderImage;)V

    sput-object v0, Ljavafx/scene/layout/Border;->EMPTY:Ljavafx/scene/layout/Border;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .locals 7
    .param p1    # Ljava/util/List;
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "strokes"
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
            "Ljavafx/scene/layout/BorderStroke;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljavafx/scene/layout/BorderImage;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 269
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/Border;
    move-object v1, p1

    .local v1, "strokes":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/layout/BorderStroke;>;"
    move-object v2, p2

    .local v2, "images":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/layout/BorderImage;>;"
    move-object v3, v0

    move-object v4, v1

    if-nez v4, :cond_0

    const/4 v4, 0x0

    :goto_0
    move-object v5, v2

    if-nez v5, :cond_1

    const/4 v5, 0x0

    :goto_1
    invoke-direct {v3, v4, v5}, Ljavafx/scene/layout/Border;-><init>([Ljavafx/scene/layout/BorderStroke;[Ljavafx/scene/layout/BorderImage;)V

    .line 271
    return-void

    .line 269
    :cond_0
    move-object v4, v1

    move-object v5, v1

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Ljavafx/scene/layout/BorderStroke;

    invoke-interface {v4, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljavafx/scene/layout/BorderStroke;

    goto :goto_0

    :cond_1
    move-object v5, v2

    move-object v6, v2

    .line 270
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    new-array v6, v6, [Ljavafx/scene/layout/BorderImage;

    invoke-interface {v5, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljavafx/scene/layout/BorderImage;

    goto :goto_1
.end method

.method public varargs constructor <init>([Ljavafx/scene/layout/BorderImage;)V
    .locals 5
    .param p1    # [Ljavafx/scene/layout/BorderImage;
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "images"
        .end annotation
    .end param

    .prologue
    .line 242
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/Border;
    move-object v1, p1

    .local v1, "images":[Ljavafx/scene/layout/BorderImage;
    move-object v2, v0

    const/4 v3, 0x0

    move-object v4, v1

    invoke-direct {v2, v3, v4}, Ljavafx/scene/layout/Border;-><init>([Ljavafx/scene/layout/BorderStroke;[Ljavafx/scene/layout/BorderImage;)V

    .line 243
    return-void
.end method

.method public varargs constructor <init>([Ljavafx/scene/layout/BorderStroke;)V
    .locals 5
    .param p1    # [Ljavafx/scene/layout/BorderStroke;
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "strokes"
        .end annotation
    .end param

    .prologue
    .line 228
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/Border;
    move-object v1, p1

    .local v1, "strokes":[Ljavafx/scene/layout/BorderStroke;
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Ljavafx/scene/layout/Border;-><init>([Ljavafx/scene/layout/BorderStroke;[Ljavafx/scene/layout/BorderImage;)V

    .line 229
    return-void
.end method

.method public constructor <init>([Ljavafx/scene/layout/BorderStroke;[Ljavafx/scene/layout/BorderImage;)V
    .locals 54
    .param p1    # [Ljavafx/scene/layout/BorderStroke;
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "strokes"
        .end annotation
    .end param
    .param p2    # [Ljavafx/scene/layout/BorderImage;
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "images"
        .end annotation
    .end param

    .prologue
    .line 291
    move-object/from16 v3, p0

    .local v3, "this":Ljavafx/scene/layout/Border;
    move-object/from16 v4, p1

    .local v4, "strokes":[Ljavafx/scene/layout/BorderStroke;
    move-object/from16 v5, p2

    .local v5, "images":[Ljavafx/scene/layout/BorderImage;
    move-object/from16 v42, v3

    invoke-direct/range {v42 .. v42}, Ljava/lang/Object;-><init>()V

    .line 292
    const-wide/16 v42, 0x0

    move-wide/from16 v6, v42

    .local v6, "innerTop":D
    const-wide/16 v42, 0x0

    move-wide/from16 v8, v42

    .local v8, "innerRight":D
    const-wide/16 v42, 0x0

    move-wide/from16 v10, v42

    .local v10, "innerBottom":D
    const-wide/16 v42, 0x0

    move-wide/from16 v12, v42

    .line 293
    .local v12, "innerLeft":D
    const-wide/16 v42, 0x0

    move-wide/from16 v14, v42

    .local v14, "outerTop":D
    const-wide/16 v42, 0x0

    move-wide/from16 v16, v42

    .local v16, "outerRight":D
    const-wide/16 v42, 0x0

    move-wide/from16 v18, v42

    .local v18, "outerBottom":D
    const-wide/16 v42, 0x0

    move-wide/from16 v20, v42

    .line 295
    .local v20, "outerLeft":D
    move-object/from16 v42, v4

    if-eqz v42, :cond_0

    move-object/from16 v42, v4

    move-object/from16 v0, v42

    array-length v0, v0

    move/from16 v42, v0

    if-nez v42, :cond_2

    .line 296
    :cond_0
    move-object/from16 v42, v3

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v43

    move-object/from16 v0, v43

    move-object/from16 v1, v42

    iput-object v0, v1, Ljavafx/scene/layout/Border;->strokes:Ljava/util/List;

    .line 333
    :goto_0
    move-object/from16 v42, v5

    if-eqz v42, :cond_1

    move-object/from16 v42, v5

    move-object/from16 v0, v42

    array-length v0, v0

    move/from16 v42, v0

    if-nez v42, :cond_d

    .line 334
    :cond_1
    move-object/from16 v42, v3

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v43

    move-object/from16 v0, v43

    move-object/from16 v1, v42

    iput-object v0, v1, Ljavafx/scene/layout/Border;->images:Ljava/util/List;

    .line 372
    :goto_1
    move-object/from16 v42, v3

    new-instance v43, Ljavafx/geometry/Insets;

    move-object/from16 v53, v43

    move-object/from16 v43, v53

    move-object/from16 v44, v53

    move-wide/from16 v45, v14

    move-wide/from16 v47, v16

    move-wide/from16 v49, v18

    move-wide/from16 v51, v20

    invoke-direct/range {v44 .. v52}, Ljavafx/geometry/Insets;-><init>(DDDD)V

    move-object/from16 v0, v43

    move-object/from16 v1, v42

    iput-object v0, v1, Ljavafx/scene/layout/Border;->outsets:Ljavafx/geometry/Insets;

    .line 373
    move-object/from16 v42, v3

    new-instance v43, Ljavafx/geometry/Insets;

    move-object/from16 v53, v43

    move-object/from16 v43, v53

    move-object/from16 v44, v53

    move-wide/from16 v45, v6

    move-wide/from16 v47, v8

    move-wide/from16 v49, v10

    move-wide/from16 v51, v12

    invoke-direct/range {v44 .. v52}, Ljavafx/geometry/Insets;-><init>(DDDD)V

    move-object/from16 v0, v43

    move-object/from16 v1, v42

    iput-object v0, v1, Ljavafx/scene/layout/Border;->insets:Ljavafx/geometry/Insets;

    .line 378
    move-object/from16 v42, v3

    move-object/from16 v0, v42

    iget-object v0, v0, Ljavafx/scene/layout/Border;->strokes:Ljava/util/List;

    move-object/from16 v42, v0

    invoke-interface/range {v42 .. v42}, Ljava/util/List;->hashCode()I

    move-result v42

    move/from16 v22, v42

    .line 379
    .local v22, "result":I
    const/16 v42, 0x1f

    move/from16 v43, v22

    mul-int v42, v42, v43

    move-object/from16 v43, v3

    move-object/from16 v0, v43

    iget-object v0, v0, Ljavafx/scene/layout/Border;->images:Ljava/util/List;

    move-object/from16 v43, v0

    invoke-interface/range {v43 .. v43}, Ljava/util/List;->hashCode()I

    move-result v43

    add-int v42, v42, v43

    move/from16 v22, v42

    .line 380
    move-object/from16 v42, v3

    move/from16 v43, v22

    move/from16 v0, v43

    move-object/from16 v1, v42

    iput v0, v1, Ljavafx/scene/layout/Border;->hash:I

    .line 381
    return-void

    .line 298
    .end local v22    # "result":I
    :cond_2
    move-object/from16 v42, v4

    move-object/from16 v0, v42

    array-length v0, v0

    move/from16 v42, v0

    move/from16 v0, v42

    new-array v0, v0, [Ljavafx/scene/layout/BorderStroke;

    move-object/from16 v42, v0

    move-object/from16 v22, v42

    .line 299
    .local v22, "noNulls":[Ljavafx/scene/layout/BorderStroke;
    const/16 v42, 0x0

    move/from16 v23, v42

    .line 300
    .local v23, "size":I
    const/16 v42, 0x0

    move/from16 v24, v42

    .local v24, "i":I
    :goto_2
    move/from16 v42, v24

    move-object/from16 v43, v4

    move-object/from16 v0, v43

    array-length v0, v0

    move/from16 v43, v0

    move/from16 v0, v42

    move/from16 v1, v43

    if-ge v0, v1, :cond_c

    .line 301
    move-object/from16 v42, v4

    move/from16 v43, v24

    aget-object v42, v42, v43

    move-object/from16 v25, v42

    .line 302
    .local v25, "stroke":Ljavafx/scene/layout/BorderStroke;
    move-object/from16 v42, v25

    if-eqz v42, :cond_3

    .line 303
    move-object/from16 v42, v22

    move/from16 v43, v23

    add-int/lit8 v23, v23, 0x1

    move-object/from16 v44, v25

    aput-object v44, v42, v43

    .line 309
    move-object/from16 v42, v25

    move-object/from16 v0, v42

    iget-object v0, v0, Ljavafx/scene/layout/BorderStroke;->innerEdge:Ljavafx/geometry/Insets;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Ljavafx/geometry/Insets;->getTop()D

    move-result-wide v42

    move-wide/from16 v26, v42

    .line 310
    .local v26, "strokeInnerTop":D
    move-object/from16 v42, v25

    move-object/from16 v0, v42

    iget-object v0, v0, Ljavafx/scene/layout/BorderStroke;->innerEdge:Ljavafx/geometry/Insets;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Ljavafx/geometry/Insets;->getRight()D

    move-result-wide v42

    move-wide/from16 v28, v42

    .line 311
    .local v28, "strokeInnerRight":D
    move-object/from16 v42, v25

    move-object/from16 v0, v42

    iget-object v0, v0, Ljavafx/scene/layout/BorderStroke;->innerEdge:Ljavafx/geometry/Insets;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Ljavafx/geometry/Insets;->getBottom()D

    move-result-wide v42

    move-wide/from16 v30, v42

    .line 312
    .local v30, "strokeInnerBottom":D
    move-object/from16 v42, v25

    move-object/from16 v0, v42

    iget-object v0, v0, Ljavafx/scene/layout/BorderStroke;->innerEdge:Ljavafx/geometry/Insets;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Ljavafx/geometry/Insets;->getLeft()D

    move-result-wide v42

    move-wide/from16 v32, v42

    .line 314
    .local v32, "strokeInnerLeft":D
    move-wide/from16 v42, v6

    move-wide/from16 v44, v26

    cmpl-double v42, v42, v44

    if-ltz v42, :cond_4

    move-wide/from16 v42, v6

    :goto_3
    move-wide/from16 v6, v42

    .line 315
    move-wide/from16 v42, v8

    move-wide/from16 v44, v28

    cmpl-double v42, v42, v44

    if-ltz v42, :cond_5

    move-wide/from16 v42, v8

    :goto_4
    move-wide/from16 v8, v42

    .line 316
    move-wide/from16 v42, v10

    move-wide/from16 v44, v30

    cmpl-double v42, v42, v44

    if-ltz v42, :cond_6

    move-wide/from16 v42, v10

    :goto_5
    move-wide/from16 v10, v42

    .line 317
    move-wide/from16 v42, v12

    move-wide/from16 v44, v32

    cmpl-double v42, v42, v44

    if-ltz v42, :cond_7

    move-wide/from16 v42, v12

    :goto_6
    move-wide/from16 v12, v42

    .line 319
    move-object/from16 v42, v25

    move-object/from16 v0, v42

    iget-object v0, v0, Ljavafx/scene/layout/BorderStroke;->outerEdge:Ljavafx/geometry/Insets;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Ljavafx/geometry/Insets;->getTop()D

    move-result-wide v42

    move-wide/from16 v34, v42

    .line 320
    .local v34, "strokeOuterTop":D
    move-object/from16 v42, v25

    move-object/from16 v0, v42

    iget-object v0, v0, Ljavafx/scene/layout/BorderStroke;->outerEdge:Ljavafx/geometry/Insets;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Ljavafx/geometry/Insets;->getRight()D

    move-result-wide v42

    move-wide/from16 v36, v42

    .line 321
    .local v36, "strokeOuterRight":D
    move-object/from16 v42, v25

    move-object/from16 v0, v42

    iget-object v0, v0, Ljavafx/scene/layout/BorderStroke;->outerEdge:Ljavafx/geometry/Insets;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Ljavafx/geometry/Insets;->getBottom()D

    move-result-wide v42

    move-wide/from16 v38, v42

    .line 322
    .local v38, "strokeOuterBottom":D
    move-object/from16 v42, v25

    move-object/from16 v0, v42

    iget-object v0, v0, Ljavafx/scene/layout/BorderStroke;->outerEdge:Ljavafx/geometry/Insets;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Ljavafx/geometry/Insets;->getLeft()D

    move-result-wide v42

    move-wide/from16 v40, v42

    .line 324
    .local v40, "strokeOuterLeft":D
    move-wide/from16 v42, v14

    move-wide/from16 v44, v34

    cmpl-double v42, v42, v44

    if-ltz v42, :cond_8

    move-wide/from16 v42, v14

    :goto_7
    move-wide/from16 v14, v42

    .line 325
    move-wide/from16 v42, v16

    move-wide/from16 v44, v36

    cmpl-double v42, v42, v44

    if-ltz v42, :cond_9

    move-wide/from16 v42, v16

    :goto_8
    move-wide/from16 v16, v42

    .line 326
    move-wide/from16 v42, v18

    move-wide/from16 v44, v38

    cmpl-double v42, v42, v44

    if-ltz v42, :cond_a

    move-wide/from16 v42, v18

    :goto_9
    move-wide/from16 v18, v42

    .line 327
    move-wide/from16 v42, v20

    move-wide/from16 v44, v40

    cmpl-double v42, v42, v44

    if-ltz v42, :cond_b

    move-wide/from16 v42, v20

    :goto_a
    move-wide/from16 v20, v42

    .line 300
    .end local v26    # "strokeInnerTop":D
    .end local v28    # "strokeInnerRight":D
    .end local v30    # "strokeInnerBottom":D
    .end local v32    # "strokeInnerLeft":D
    .end local v34    # "strokeOuterTop":D
    .end local v36    # "strokeOuterRight":D
    .end local v38    # "strokeOuterBottom":D
    .end local v40    # "strokeOuterLeft":D
    :cond_3
    add-int/lit8 v24, v24, 0x1

    goto/16 :goto_2

    .line 314
    .restart local v26    # "strokeInnerTop":D
    .restart local v28    # "strokeInnerRight":D
    .restart local v30    # "strokeInnerBottom":D
    .restart local v32    # "strokeInnerLeft":D
    :cond_4
    move-wide/from16 v42, v26

    goto/16 :goto_3

    .line 315
    :cond_5
    move-wide/from16 v42, v28

    goto/16 :goto_4

    .line 316
    :cond_6
    move-wide/from16 v42, v30

    goto/16 :goto_5

    .line 317
    :cond_7
    move-wide/from16 v42, v32

    goto :goto_6

    .line 324
    .restart local v34    # "strokeOuterTop":D
    .restart local v36    # "strokeOuterRight":D
    .restart local v38    # "strokeOuterBottom":D
    .restart local v40    # "strokeOuterLeft":D
    :cond_8
    move-wide/from16 v42, v34

    goto :goto_7

    .line 325
    :cond_9
    move-wide/from16 v42, v36

    goto :goto_8

    .line 326
    :cond_a
    move-wide/from16 v42, v38

    goto :goto_9

    .line 327
    :cond_b
    move-wide/from16 v42, v40

    goto :goto_a

    .line 330
    .end local v25    # "stroke":Ljavafx/scene/layout/BorderStroke;
    .end local v26    # "strokeInnerTop":D
    .end local v28    # "strokeInnerRight":D
    .end local v30    # "strokeInnerBottom":D
    .end local v32    # "strokeInnerLeft":D
    .end local v34    # "strokeOuterTop":D
    .end local v36    # "strokeOuterRight":D
    .end local v38    # "strokeOuterBottom":D
    .end local v40    # "strokeOuterLeft":D
    :cond_c
    move-object/from16 v42, v3

    new-instance v43, Lcom/sun/javafx/UnmodifiableArrayList;

    move-object/from16 v53, v43

    move-object/from16 v43, v53

    move-object/from16 v44, v53

    move-object/from16 v45, v22

    move/from16 v46, v23

    invoke-direct/range {v44 .. v46}, Lcom/sun/javafx/UnmodifiableArrayList;-><init>([Ljava/lang/Object;I)V

    move-object/from16 v0, v43

    move-object/from16 v1, v42

    iput-object v0, v1, Ljavafx/scene/layout/Border;->strokes:Ljava/util/List;

    goto/16 :goto_0

    .line 336
    .end local v22    # "noNulls":[Ljavafx/scene/layout/BorderStroke;
    .end local v23    # "size":I
    .end local v24    # "i":I
    :cond_d
    move-object/from16 v42, v5

    move-object/from16 v0, v42

    array-length v0, v0

    move/from16 v42, v0

    move/from16 v0, v42

    new-array v0, v0, [Ljavafx/scene/layout/BorderImage;

    move-object/from16 v42, v0

    move-object/from16 v22, v42

    .line 337
    .local v22, "noNulls":[Ljavafx/scene/layout/BorderImage;
    const/16 v42, 0x0

    move/from16 v23, v42

    .line 338
    .restart local v23    # "size":I
    const/16 v42, 0x0

    move/from16 v24, v42

    .restart local v24    # "i":I
    :goto_b
    move/from16 v42, v24

    move-object/from16 v43, v5

    move-object/from16 v0, v43

    array-length v0, v0

    move/from16 v43, v0

    move/from16 v0, v42

    move/from16 v1, v43

    if-ge v0, v1, :cond_17

    .line 339
    move-object/from16 v42, v5

    move/from16 v43, v24

    aget-object v42, v42, v43

    move-object/from16 v25, v42

    .line 340
    .local v25, "image":Ljavafx/scene/layout/BorderImage;
    move-object/from16 v42, v25

    if-eqz v42, :cond_e

    .line 341
    move-object/from16 v42, v22

    move/from16 v43, v23

    add-int/lit8 v23, v23, 0x1

    move-object/from16 v44, v25

    aput-object v44, v42, v43

    .line 345
    move-object/from16 v42, v25

    move-object/from16 v0, v42

    iget-object v0, v0, Ljavafx/scene/layout/BorderImage;->innerEdge:Ljavafx/geometry/Insets;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Ljavafx/geometry/Insets;->getTop()D

    move-result-wide v42

    move-wide/from16 v26, v42

    .line 346
    .local v26, "imageInnerTop":D
    move-object/from16 v42, v25

    move-object/from16 v0, v42

    iget-object v0, v0, Ljavafx/scene/layout/BorderImage;->innerEdge:Ljavafx/geometry/Insets;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Ljavafx/geometry/Insets;->getRight()D

    move-result-wide v42

    move-wide/from16 v28, v42

    .line 347
    .local v28, "imageInnerRight":D
    move-object/from16 v42, v25

    move-object/from16 v0, v42

    iget-object v0, v0, Ljavafx/scene/layout/BorderImage;->innerEdge:Ljavafx/geometry/Insets;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Ljavafx/geometry/Insets;->getBottom()D

    move-result-wide v42

    move-wide/from16 v30, v42

    .line 348
    .local v30, "imageInnerBottom":D
    move-object/from16 v42, v25

    move-object/from16 v0, v42

    iget-object v0, v0, Ljavafx/scene/layout/BorderImage;->innerEdge:Ljavafx/geometry/Insets;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Ljavafx/geometry/Insets;->getLeft()D

    move-result-wide v42

    move-wide/from16 v32, v42

    .line 350
    .local v32, "imageInnerLeft":D
    move-wide/from16 v42, v6

    move-wide/from16 v44, v26

    cmpl-double v42, v42, v44

    if-ltz v42, :cond_f

    move-wide/from16 v42, v6

    :goto_c
    move-wide/from16 v6, v42

    .line 351
    move-wide/from16 v42, v8

    move-wide/from16 v44, v28

    cmpl-double v42, v42, v44

    if-ltz v42, :cond_10

    move-wide/from16 v42, v8

    :goto_d
    move-wide/from16 v8, v42

    .line 352
    move-wide/from16 v42, v10

    move-wide/from16 v44, v30

    cmpl-double v42, v42, v44

    if-ltz v42, :cond_11

    move-wide/from16 v42, v10

    :goto_e
    move-wide/from16 v10, v42

    .line 353
    move-wide/from16 v42, v12

    move-wide/from16 v44, v32

    cmpl-double v42, v42, v44

    if-ltz v42, :cond_12

    move-wide/from16 v42, v12

    :goto_f
    move-wide/from16 v12, v42

    .line 355
    move-object/from16 v42, v25

    move-object/from16 v0, v42

    iget-object v0, v0, Ljavafx/scene/layout/BorderImage;->outerEdge:Ljavafx/geometry/Insets;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Ljavafx/geometry/Insets;->getTop()D

    move-result-wide v42

    move-wide/from16 v34, v42

    .line 356
    .local v34, "imageOuterTop":D
    move-object/from16 v42, v25

    move-object/from16 v0, v42

    iget-object v0, v0, Ljavafx/scene/layout/BorderImage;->outerEdge:Ljavafx/geometry/Insets;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Ljavafx/geometry/Insets;->getRight()D

    move-result-wide v42

    move-wide/from16 v36, v42

    .line 357
    .local v36, "imageOuterRight":D
    move-object/from16 v42, v25

    move-object/from16 v0, v42

    iget-object v0, v0, Ljavafx/scene/layout/BorderImage;->outerEdge:Ljavafx/geometry/Insets;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Ljavafx/geometry/Insets;->getBottom()D

    move-result-wide v42

    move-wide/from16 v38, v42

    .line 358
    .local v38, "imageOuterBottom":D
    move-object/from16 v42, v25

    move-object/from16 v0, v42

    iget-object v0, v0, Ljavafx/scene/layout/BorderImage;->outerEdge:Ljavafx/geometry/Insets;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Ljavafx/geometry/Insets;->getLeft()D

    move-result-wide v42

    move-wide/from16 v40, v42

    .line 360
    .local v40, "imageOuterLeft":D
    move-wide/from16 v42, v14

    move-wide/from16 v44, v34

    cmpl-double v42, v42, v44

    if-ltz v42, :cond_13

    move-wide/from16 v42, v14

    :goto_10
    move-wide/from16 v14, v42

    .line 361
    move-wide/from16 v42, v16

    move-wide/from16 v44, v36

    cmpl-double v42, v42, v44

    if-ltz v42, :cond_14

    move-wide/from16 v42, v16

    :goto_11
    move-wide/from16 v16, v42

    .line 362
    move-wide/from16 v42, v18

    move-wide/from16 v44, v38

    cmpl-double v42, v42, v44

    if-ltz v42, :cond_15

    move-wide/from16 v42, v18

    :goto_12
    move-wide/from16 v18, v42

    .line 363
    move-wide/from16 v42, v20

    move-wide/from16 v44, v40

    cmpl-double v42, v42, v44

    if-ltz v42, :cond_16

    move-wide/from16 v42, v20

    :goto_13
    move-wide/from16 v20, v42

    .line 338
    .end local v26    # "imageInnerTop":D
    .end local v28    # "imageInnerRight":D
    .end local v30    # "imageInnerBottom":D
    .end local v32    # "imageInnerLeft":D
    .end local v34    # "imageOuterTop":D
    .end local v36    # "imageOuterRight":D
    .end local v38    # "imageOuterBottom":D
    .end local v40    # "imageOuterLeft":D
    :cond_e
    add-int/lit8 v24, v24, 0x1

    goto/16 :goto_b

    .line 350
    .restart local v26    # "imageInnerTop":D
    .restart local v28    # "imageInnerRight":D
    .restart local v30    # "imageInnerBottom":D
    .restart local v32    # "imageInnerLeft":D
    :cond_f
    move-wide/from16 v42, v26

    goto/16 :goto_c

    .line 351
    :cond_10
    move-wide/from16 v42, v28

    goto/16 :goto_d

    .line 352
    :cond_11
    move-wide/from16 v42, v30

    goto/16 :goto_e

    .line 353
    :cond_12
    move-wide/from16 v42, v32

    goto :goto_f

    .line 360
    .restart local v34    # "imageOuterTop":D
    .restart local v36    # "imageOuterRight":D
    .restart local v38    # "imageOuterBottom":D
    .restart local v40    # "imageOuterLeft":D
    :cond_13
    move-wide/from16 v42, v34

    goto :goto_10

    .line 361
    :cond_14
    move-wide/from16 v42, v36

    goto :goto_11

    .line 362
    :cond_15
    move-wide/from16 v42, v38

    goto :goto_12

    .line 363
    :cond_16
    move-wide/from16 v42, v40

    goto :goto_13

    .line 366
    .end local v25    # "image":Ljavafx/scene/layout/BorderImage;
    .end local v26    # "imageInnerTop":D
    .end local v28    # "imageInnerRight":D
    .end local v30    # "imageInnerBottom":D
    .end local v32    # "imageInnerLeft":D
    .end local v34    # "imageOuterTop":D
    .end local v36    # "imageOuterRight":D
    .end local v38    # "imageOuterBottom":D
    .end local v40    # "imageOuterLeft":D
    :cond_17
    move-object/from16 v42, v3

    new-instance v43, Lcom/sun/javafx/UnmodifiableArrayList;

    move-object/from16 v53, v43

    move-object/from16 v43, v53

    move-object/from16 v44, v53

    move-object/from16 v45, v22

    move/from16 v46, v23

    invoke-direct/range {v44 .. v46}, Lcom/sun/javafx/UnmodifiableArrayList;-><init>([Ljava/lang/Object;I)V

    move-object/from16 v0, v43

    move-object/from16 v1, v42

    iput-object v0, v1, Ljavafx/scene/layout/Border;->images:Ljava/util/List;

    goto/16 :goto_1
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
    .line 153
    sget-object v0, Ljavafx/scene/layout/Border;->STYLEABLES:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    .line 387
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/Border;
    move-object v1, p1

    .local v1, "o":Ljava/lang/Object;
    move-object v3, v0

    move-object v4, v1

    if-ne v3, v4, :cond_0

    const/4 v3, 0x1

    move v0, v3

    .line 395
    .end local v0    # "this":Ljavafx/scene/layout/Border;
    :goto_0
    return v0

    .line 388
    .restart local v0    # "this":Ljavafx/scene/layout/Border;
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

    .line 389
    :cond_2
    move-object v3, v1

    check-cast v3, Ljavafx/scene/layout/Border;

    move-object v2, v3

    .line 390
    .local v2, "border":Ljavafx/scene/layout/Border;
    move-object v3, v0

    iget v3, v3, Ljavafx/scene/layout/Border;->hash:I

    move-object v4, v2

    iget v4, v4, Ljavafx/scene/layout/Border;->hash:I

    if-eq v3, v4, :cond_3

    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 392
    :cond_3
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/layout/Border;->images:Ljava/util/List;

    move-object v4, v2

    iget-object v4, v4, Ljavafx/scene/layout/Border;->images:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 393
    :cond_4
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/layout/Border;->strokes:Ljava/util/List;

    move-object v4, v2

    iget-object v4, v4, Ljavafx/scene/layout/Border;->strokes:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 395
    :cond_5
    const/4 v3, 0x1

    move v0, v3

    goto :goto_0
.end method

.method public final getImages()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljavafx/scene/layout/BorderImage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 179
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/Border;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/Border;->images:Ljava/util/List;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/Border;
    return-object v0
.end method

.method public final getInsets()Ljavafx/geometry/Insets;
    .locals 2

    .prologue
    .line 194
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/Border;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/Border;->insets:Ljavafx/geometry/Insets;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/Border;
    return-object v0
.end method

.method public final getOutsets()Ljavafx/geometry/Insets;
    .locals 2

    .prologue
    .line 186
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/Border;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/Border;->outsets:Ljavafx/geometry/Insets;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/Border;
    return-object v0
.end method

.method public final getStrokes()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljavafx/scene/layout/BorderStroke;",
            ">;"
        }
    .end annotation

    .prologue
    .line 166
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/Border;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/Border;->strokes:Ljava/util/List;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/Border;
    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 402
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/Border;
    move-object v1, v0

    iget v1, v1, Ljavafx/scene/layout/Border;->hash:I

    move v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/Border;
    return v0
.end method

.method public final isEmpty()Z
    .locals 2

    .prologue
    .line 202
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/layout/Border;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/Border;->strokes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/layout/Border;->images:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Ljavafx/scene/layout/Border;
    return v0

    .restart local v0    # "this":Ljavafx/scene/layout/Border;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
