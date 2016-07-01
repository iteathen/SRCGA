.class public Lcom/sun/javafx/sg/prism/NGCanvas;
.super Lcom/sun/javafx/sg/prism/NGNode;
.source "NGCanvas.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/javafx/sg/prism/NGCanvas$EffectInput;,
        Lcom/sun/javafx/sg/prism/NGCanvas$MyBlend;,
        Lcom/sun/javafx/sg/prism/NGCanvas$RenderInput;,
        Lcom/sun/javafx/sg/prism/NGCanvas$PixelData;,
        Lcom/sun/javafx/sg/prism/NGCanvas$RenderBuf;,
        Lcom/sun/javafx/sg/prism/NGCanvas$InitType;
    }
.end annotation


# static fields
.field public static final ALIGN_CENTER:B = 0x1t

.field public static final ALIGN_JUSTIFY:B = 0x3t

.field public static final ALIGN_LEFT:B = 0x0t

.field public static final ALIGN_RIGHT:B = 0x2t

.field public static final ARC_CHORD:B = 0x1t

.field public static final ARC_OPEN:B = 0x0t

.field public static final ARC_PIE:B = 0x2t

.field public static final ARC_TYPE:B = 0xft

.field public static final ATTR_BASE:B = 0x0t

.field public static final BASE_ALPHABETIC:B = 0x2t

.field public static final BASE_BOTTOM:B = 0x3t

.field public static final BASE_MIDDLE:B = 0x1t

.field public static final BASE_TOP:B = 0x0t

.field private static BLENDER:Lcom/sun/scenario/effect/Blend; = null

.field public static final CAP_BUTT:B = 0x0t

.field public static final CAP_ROUND:B = 0x1t

.field public static final CAP_SQUARE:B = 0x2t

.field public static final CLEAR_RECT:B = 0x16t

.field private static final CLIPRECT_TOLERANCE:F = 0.00390625f

.field public static final CLOSEPATH:B = 0x2dt

.field public static final COMP_MODE:B = 0x1t

.field public static final CUBICTO:B = 0x2ct

.field public static final DASH_ARRAY:B = 0x11t

.field public static final DASH_OFFSET:B = 0x12t

.field public static final DRAW_IMAGE:B = 0x32t

.field public static final DRAW_SUBIMAGE:B = 0x33t

.field public static final EFFECT:B = 0xct

.field public static final FILL_ARC:B = 0x1ct

.field public static final FILL_OVAL:B = 0x18t

.field public static final FILL_PAINT:B = 0x2t

.field public static final FILL_PATH:B = 0x2ft

.field public static final FILL_RECT:B = 0x14t

.field public static final FILL_ROUND_RECT:B = 0x1at

.field public static final FILL_RULE:B = 0x10t

.field public static final FILL_RULE_EVEN_ODD:B = 0x1t

.field public static final FILL_RULE_NON_ZERO:B = 0x0t

.field public static final FILL_TEXT:B = 0x1et

.field public static final FONT:B = 0x8t

.field public static final FONT_SMOOTH:B = 0x13t

.field public static final FX_APPLY_EFFECT:B = 0x3ct

.field public static final FX_BASE:B = 0x3ct

.field public static final GLOBAL_ALPHA:B = 0x0t

.field public static final IMG_BASE:B = 0x32t

.field public static final JOIN_BEVEL:B = 0x2t

.field public static final JOIN_MITER:B = 0x0t

.field public static final JOIN_ROUND:B = 0x1t

.field public static final LINETO:B = 0x2at

.field public static final LINE_CAP:B = 0x5t

.field public static final LINE_JOIN:B = 0x6t

.field public static final LINE_WIDTH:B = 0x4t

.field public static final MITER_LIMIT:B = 0x7t

.field public static final MOVETO:B = 0x29t

.field public static final OP_BASE:B = 0x14t

.field public static final PATHEND:B = 0x2et

.field public static final PATHSTART:B = 0x28t

.field public static final PATH_BASE:B = 0x28t

.field public static final POP_CLIP:B = 0xet

.field public static final PUSH_CLIP:B = 0xdt

.field public static final PUT_ARGB:B = 0x34t

.field public static final PUT_ARGBPRE_BUF:B = 0x35t

.field public static final QUADTO:B = 0x2bt

.field public static final RESET:B = 0x46t

.field public static final SET_DIMS:B = 0x47t

.field public static final SMOOTH_GRAY:B

.field public static final SMOOTH_LCD:B

.field public static final STROKE_ARC:B = 0x1dt

.field public static final STROKE_LINE:B = 0x17t

.field public static final STROKE_OVAL:B = 0x19t

.field public static final STROKE_PAINT:B = 0x3t

.field public static final STROKE_PATH:B = 0x30t

.field public static final STROKE_RECT:B = 0x15t

.field public static final STROKE_ROUND_RECT:B = 0x1bt

.field public static final STROKE_TEXT:B = 0x1ft

.field private static TEMP_ARC:Lcom/sun/javafx/geom/Arc2D; = null

.field static TEMP_COORDS:[F = null

.field static final TEMP_PATH_TX:Lcom/sun/javafx/geom/transform/Affine2D;

.field private static final TEMP_RECT:Lcom/sun/javafx/geom/Rectangle;

.field private static TEMP_RECTBOUNDS:Lcom/sun/javafx/geom/RectBounds; = null

.field private static final TEMP_TX:Lcom/sun/javafx/geom/transform/Affine2D;

.field public static final TEXT_ALIGN:B = 0x9t

.field public static final TEXT_BASELINE:B = 0xat

.field public static final TRANSFORM:B = 0xbt

.field public static final UTIL_BASE:B = 0x46t

.field static final numCoords:[I

.field private static final prbases:[I

.field private static final prcaps:[I

.field private static final prjoins:[I


# instance fields
.field private align:I

.field private arctype:I

.field private baseline:I

.field private blendmode:Lcom/sun/scenario/effect/Blend$Mode;

.field private ch:I

.field private clip:Lcom/sun/javafx/sg/prism/NGCanvas$RenderBuf;

.field private clipIsRect:Z

.field private clipRect:Lcom/sun/javafx/geom/Rectangle;

.field private clipStack:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/sun/javafx/geom/Path2D;",
            ">;"
        }
    .end annotation
.end field

.field private clipsRendered:I

.field private cv:Lcom/sun/javafx/sg/prism/NGCanvas$RenderBuf;

.field private cw:I

.field private dashOffset:F

.field private dashes:[D

.field private effect:Lcom/sun/scenario/effect/Effect;

.field private fillPaint:Lcom/sun/prism/paint/Paint;

.field private globalAlpha:F

.field private final highestPixelScale:F

.field private inverseTransform:Lcom/sun/javafx/geom/transform/Affine2D;

.field private inversedirty:Z

.field private linecap:I

.field private linejoin:I

.field private linewidth:F

.field private miterlimit:F

.field private ngtext:Lcom/sun/javafx/sg/prism/NGText;

.field private path:Lcom/sun/javafx/geom/Path2D;

.field private pgfont:Lcom/sun/javafx/font/PGFont;

.field private smoothing:I

.field private stroke:Lcom/sun/prism/BasicStroke;

.field private strokePaint:Lcom/sun/prism/paint/Paint;

.field private temp:Lcom/sun/javafx/sg/prism/NGCanvas$RenderBuf;

.field private textLayout:Lcom/sun/javafx/text/PrismTextLayout;

.field private th:I

.field private thebuf:Lcom/sun/javafx/sg/prism/GrowableDataBuffer;

.field private transform:Lcom/sun/javafx/geom/transform/Affine2D;

.field private tw:I

.field untransformedPath:Lcom/sun/javafx/geom/Shape;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 152
    sget-object v0, Ljavafx/scene/text/FontSmoothingType;->GRAY:Ljavafx/scene/text/FontSmoothingType;

    invoke-virtual {v0}, Ljavafx/scene/text/FontSmoothingType;->ordinal()I

    move-result v0

    int-to-byte v0, v0

    sput-byte v0, Lcom/sun/javafx/sg/prism/NGCanvas;->SMOOTH_GRAY:B

    .line 153
    sget-object v0, Ljavafx/scene/text/FontSmoothingType;->LCD:Ljavafx/scene/text/FontSmoothingType;

    invoke-virtual {v0}, Ljavafx/scene/text/FontSmoothingType;->ordinal()I

    move-result v0

    int-to-byte v0, v0

    sput-byte v0, Lcom/sun/javafx/sg/prism/NGCanvas;->SMOOTH_LCD:B

    .line 312
    new-instance v0, Lcom/sun/javafx/sg/prism/NGCanvas$MyBlend;

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    sget-object v2, Lcom/sun/scenario/effect/Blend$Mode;->SRC_OVER:Lcom/sun/scenario/effect/Blend$Mode;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lcom/sun/javafx/sg/prism/NGCanvas$MyBlend;-><init>(Lcom/sun/scenario/effect/Blend$Mode;Lcom/sun/scenario/effect/Effect;Lcom/sun/scenario/effect/Effect;)V

    sput-object v0, Lcom/sun/javafx/sg/prism/NGCanvas;->BLENDER:Lcom/sun/scenario/effect/Blend;

    .line 349
    const/4 v0, 0x6

    new-array v0, v0, [F

    sput-object v0, Lcom/sun/javafx/sg/prism/NGCanvas;->TEMP_COORDS:[F

    .line 350
    new-instance v0, Lcom/sun/javafx/geom/Arc2D;

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    invoke-direct {v1}, Lcom/sun/javafx/geom/Arc2D;-><init>()V

    sput-object v0, Lcom/sun/javafx/sg/prism/NGCanvas;->TEMP_ARC:Lcom/sun/javafx/geom/Arc2D;

    .line 351
    new-instance v0, Lcom/sun/javafx/geom/RectBounds;

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    invoke-direct {v1}, Lcom/sun/javafx/geom/RectBounds;-><init>()V

    sput-object v0, Lcom/sun/javafx/sg/prism/NGCanvas;->TEMP_RECTBOUNDS:Lcom/sun/javafx/geom/RectBounds;

    .line 398
    new-instance v0, Lcom/sun/javafx/geom/transform/Affine2D;

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    invoke-direct {v1}, Lcom/sun/javafx/geom/transform/Affine2D;-><init>()V

    sput-object v0, Lcom/sun/javafx/sg/prism/NGCanvas;->TEMP_PATH_TX:Lcom/sun/javafx/geom/transform/Affine2D;

    .line 399
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/sun/javafx/sg/prism/NGCanvas;->numCoords:[I

    .line 664
    new-instance v0, Lcom/sun/javafx/geom/Rectangle;

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    invoke-direct {v1}, Lcom/sun/javafx/geom/Rectangle;-><init>()V

    sput-object v0, Lcom/sun/javafx/sg/prism/NGCanvas;->TEMP_RECT:Lcom/sun/javafx/geom/Rectangle;

    .line 789
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/sun/javafx/sg/prism/NGCanvas;->prcaps:[I

    .line 794
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/sun/javafx/sg/prism/NGCanvas;->prjoins:[I

    .line 799
    const/4 v0, 0x4

    new-array v0, v0, [I

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const/4 v2, 0x0

    sget-object v3, Ljavafx/geometry/VPos;->TOP:Ljavafx/geometry/VPos;

    .line 800
    invoke-virtual {v3}, Ljavafx/geometry/VPos;->ordinal()I

    move-result v3

    aput v3, v1, v2

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const/4 v2, 0x1

    sget-object v3, Ljavafx/geometry/VPos;->CENTER:Ljavafx/geometry/VPos;

    .line 801
    invoke-virtual {v3}, Ljavafx/geometry/VPos;->ordinal()I

    move-result v3

    aput v3, v1, v2

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const/4 v2, 0x2

    sget-object v3, Ljavafx/geometry/VPos;->BASELINE:Ljavafx/geometry/VPos;

    .line 802
    invoke-virtual {v3}, Ljavafx/geometry/VPos;->ordinal()I

    move-result v3

    aput v3, v1, v2

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const/4 v2, 0x3

    sget-object v3, Ljavafx/geometry/VPos;->BOTTOM:Ljavafx/geometry/VPos;

    .line 803
    invoke-virtual {v3}, Ljavafx/geometry/VPos;->ordinal()I

    move-result v3

    aput v3, v1, v2

    sput-object v0, Lcom/sun/javafx/sg/prism/NGCanvas;->prbases:[I

    .line 805
    new-instance v0, Lcom/sun/javafx/geom/transform/Affine2D;

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    invoke-direct {v1}, Lcom/sun/javafx/geom/transform/Affine2D;-><init>()V

    sput-object v0, Lcom/sun/javafx/sg/prism/NGCanvas;->TEMP_TX:Lcom/sun/javafx/geom/transform/Affine2D;

    return-void

    .line 399
    nop

    :array_0
    .array-data 4
        0x2
        0x2
        0x4
        0x6
        0x0
    .end array-data

    .line 789
    :array_1
    .array-data 4
        0x0
        0x1
        0x2
    .end array-data

    .line 794
    :array_2
    .array-data 4
        0x0
        0x1
        0x2
    .end array-data
.end method

.method public constructor <init>()V
    .locals 11

    .prologue
    .line 353
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGCanvas;
    move-object v6, v0

    invoke-direct {v6}, Lcom/sun/javafx/sg/prism/NGNode;-><init>()V

    .line 400
    move-object v6, v0

    new-instance v7, Lcom/sun/javafx/sg/prism/NGCanvas$1;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    move-object v9, v0

    invoke-direct {v8, v9}, Lcom/sun/javafx/sg/prism/NGCanvas$1;-><init>(Lcom/sun/javafx/sg/prism/NGCanvas;)V

    iput-object v7, v6, Lcom/sun/javafx/sg/prism/NGCanvas;->untransformedPath:Lcom/sun/javafx/geom/Shape;

    .line 354
    invoke-static {}, Lcom/sun/javafx/tk/Toolkit;->getToolkit()Lcom/sun/javafx/tk/Toolkit;

    move-result-object v6

    move-object v1, v6

    .line 355
    .local v1, "tk":Lcom/sun/javafx/tk/Toolkit;
    move-object v6, v1

    invoke-virtual {v6}, Lcom/sun/javafx/tk/Toolkit;->getScreenConfigurationAccessor()Lcom/sun/javafx/tk/ScreenConfigurationAccessor;

    move-result-object v6

    move-object v2, v6

    .line 356
    .local v2, "screenAccessor":Lcom/sun/javafx/tk/ScreenConfigurationAccessor;
    const/high16 v6, 0x3f800000    # 1.0f

    move v3, v6

    .line 357
    .local v3, "hPS":F
    move-object v6, v1

    invoke-virtual {v6}, Lcom/sun/javafx/tk/Toolkit;->getScreens()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-object v4, v6

    :goto_0
    move-object v6, v4

    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    move-object v6, v4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v5, v6

    .line 358
    .local v5, "screen":Ljava/lang/Object;
    move-object v6, v2

    move-object v7, v5

    invoke-interface {v6, v7}, Lcom/sun/javafx/tk/ScreenConfigurationAccessor;->getRenderScale(Ljava/lang/Object;)F

    move-result v6

    move v7, v3

    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v6

    move v3, v6

    .line 359
    goto :goto_0

    .line 360
    .end local v5    # "screen":Ljava/lang/Object;
    :cond_0
    move-object v6, v0

    move v7, v3

    iput v7, v6, Lcom/sun/javafx/sg/prism/NGCanvas;->highestPixelScale:F

    .line 362
    move-object v6, v0

    new-instance v7, Lcom/sun/javafx/sg/prism/NGCanvas$RenderBuf;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    sget-object v9, Lcom/sun/javafx/sg/prism/NGCanvas$InitType;->PRESERVE_UPPER_LEFT:Lcom/sun/javafx/sg/prism/NGCanvas$InitType;

    invoke-direct {v8, v9}, Lcom/sun/javafx/sg/prism/NGCanvas$RenderBuf;-><init>(Lcom/sun/javafx/sg/prism/NGCanvas$InitType;)V

    iput-object v7, v6, Lcom/sun/javafx/sg/prism/NGCanvas;->cv:Lcom/sun/javafx/sg/prism/NGCanvas$RenderBuf;

    .line 363
    move-object v6, v0

    new-instance v7, Lcom/sun/javafx/sg/prism/NGCanvas$RenderBuf;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    sget-object v9, Lcom/sun/javafx/sg/prism/NGCanvas$InitType;->CLEAR:Lcom/sun/javafx/sg/prism/NGCanvas$InitType;

    invoke-direct {v8, v9}, Lcom/sun/javafx/sg/prism/NGCanvas$RenderBuf;-><init>(Lcom/sun/javafx/sg/prism/NGCanvas$InitType;)V

    iput-object v7, v6, Lcom/sun/javafx/sg/prism/NGCanvas;->temp:Lcom/sun/javafx/sg/prism/NGCanvas$RenderBuf;

    .line 364
    move-object v6, v0

    new-instance v7, Lcom/sun/javafx/sg/prism/NGCanvas$RenderBuf;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    sget-object v9, Lcom/sun/javafx/sg/prism/NGCanvas$InitType;->FILL_WHITE:Lcom/sun/javafx/sg/prism/NGCanvas$InitType;

    invoke-direct {v8, v9}, Lcom/sun/javafx/sg/prism/NGCanvas$RenderBuf;-><init>(Lcom/sun/javafx/sg/prism/NGCanvas$InitType;)V

    iput-object v7, v6, Lcom/sun/javafx/sg/prism/NGCanvas;->clip:Lcom/sun/javafx/sg/prism/NGCanvas$RenderBuf;

    .line 366
    move-object v6, v0

    new-instance v7, Lcom/sun/javafx/geom/Path2D;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    invoke-direct {v8}, Lcom/sun/javafx/geom/Path2D;-><init>()V

    iput-object v7, v6, Lcom/sun/javafx/sg/prism/NGCanvas;->path:Lcom/sun/javafx/geom/Path2D;

    .line 367
    move-object v6, v0

    new-instance v7, Lcom/sun/javafx/sg/prism/NGText;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    invoke-direct {v8}, Lcom/sun/javafx/sg/prism/NGText;-><init>()V

    iput-object v7, v6, Lcom/sun/javafx/sg/prism/NGCanvas;->ngtext:Lcom/sun/javafx/sg/prism/NGText;

    .line 368
    move-object v6, v0

    new-instance v7, Lcom/sun/javafx/text/PrismTextLayout;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    invoke-direct {v8}, Lcom/sun/javafx/text/PrismTextLayout;-><init>()V

    iput-object v7, v6, Lcom/sun/javafx/sg/prism/NGCanvas;->textLayout:Lcom/sun/javafx/text/PrismTextLayout;

    .line 369
    move-object v6, v0

    new-instance v7, Lcom/sun/javafx/geom/transform/Affine2D;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    invoke-direct {v8}, Lcom/sun/javafx/geom/transform/Affine2D;-><init>()V

    iput-object v7, v6, Lcom/sun/javafx/sg/prism/NGCanvas;->transform:Lcom/sun/javafx/geom/transform/Affine2D;

    .line 370
    move-object v6, v0

    new-instance v7, Ljava/util/LinkedList;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    invoke-direct {v8}, Ljava/util/LinkedList;-><init>()V

    iput-object v7, v6, Lcom/sun/javafx/sg/prism/NGCanvas;->clipStack:Ljava/util/LinkedList;

    .line 371
    move-object v6, v0

    invoke-direct {v6}, Lcom/sun/javafx/sg/prism/NGCanvas;->initAttributes()V

    .line 372
    return-void
.end method

.method static synthetic access$300(Lcom/sun/javafx/sg/prism/NGCanvas;)Lcom/sun/javafx/geom/transform/Affine2D;
    .locals 2

    .prologue
    .line 79
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/sg/prism/NGCanvas;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/sg/prism/NGCanvas;->transform:Lcom/sun/javafx/geom/transform/Affine2D;

    move-object v0, v1

    .end local v0    # "x0":Lcom/sun/javafx/sg/prism/NGCanvas;
    return-object v0
.end method

.method static synthetic access$400(Lcom/sun/javafx/sg/prism/NGCanvas;)Lcom/sun/javafx/geom/Path2D;
    .locals 2

    .prologue
    .line 79
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/sg/prism/NGCanvas;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/sg/prism/NGCanvas;->path:Lcom/sun/javafx/geom/Path2D;

    move-object v0, v1

    .end local v0    # "x0":Lcom/sun/javafx/sg/prism/NGCanvas;
    return-object v0
.end method

.method static synthetic access$500(Lcom/sun/javafx/sg/prism/NGCanvas;)Lcom/sun/javafx/geom/transform/Affine2D;
    .locals 2

    .prologue
    .line 79
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/sg/prism/NGCanvas;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/sg/prism/NGCanvas;->getInverseTransform()Lcom/sun/javafx/geom/transform/Affine2D;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "x0":Lcom/sun/javafx/sg/prism/NGCanvas;
    return-object v0
.end method

.method static synthetic access$800(Lcom/sun/javafx/sg/prism/NGCanvas;)F
    .locals 2

    .prologue
    .line 79
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/sg/prism/NGCanvas;
    move-object v1, v0

    iget v1, v1, Lcom/sun/javafx/sg/prism/NGCanvas;->globalAlpha:F

    move v0, v1

    .end local v0    # "x0":Lcom/sun/javafx/sg/prism/NGCanvas;
    return v0
.end method

.method static synthetic access$lambda$0(Lcom/sun/javafx/sg/prism/NGCanvas$PixelData;Lcom/sun/prism/RTTexture;Lcom/sun/prism/Graphics;II)V
    .locals 10

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move v8, v3

    move v9, v4

    invoke-static {v5, v6, v7, v8, v9}, Lcom/sun/javafx/sg/prism/NGCanvas;->lambda$printedCanvas$264(Lcom/sun/javafx/sg/prism/NGCanvas$PixelData;Lcom/sun/prism/RTTexture;Lcom/sun/prism/Graphics;II)V

    return-void
.end method

.method private applyEffectOnAintoC(Lcom/sun/scenario/effect/Effect;Lcom/sun/scenario/effect/Effect;Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/javafx/geom/Rectangle;Lcom/sun/prism/CompositeMode;Lcom/sun/javafx/sg/prism/NGCanvas$RenderBuf;)Lcom/sun/javafx/geom/Rectangle;
    .locals 20

    .prologue
    .line 734
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/javafx/sg/prism/NGCanvas;
    move-object/from16 v2, p1

    .local v2, "definput":Lcom/sun/scenario/effect/Effect;
    move-object/from16 v3, p2

    .local v3, "effect":Lcom/sun/scenario/effect/Effect;
    move-object/from16 v4, p3

    .local v4, "transform":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object/from16 v5, p4

    .local v5, "outputClip":Lcom/sun/javafx/geom/Rectangle;
    move-object/from16 v6, p5

    .local v6, "comp":Lcom/sun/prism/CompositeMode;
    move-object/from16 v7, p6

    .local v7, "destbuf":Lcom/sun/javafx/sg/prism/NGCanvas$RenderBuf;
    move-object v14, v7

    iget-object v14, v14, Lcom/sun/javafx/sg/prism/NGCanvas$RenderBuf;->tex:Lcom/sun/prism/RTTexture;

    .line 735
    invoke-interface {v14}, Lcom/sun/prism/RTTexture;->getAssociatedScreen()Lcom/sun/glass/ui/Screen;

    move-result-object v14

    invoke-static {v14}, Lcom/sun/scenario/effect/impl/prism/PrFilterContext;->getInstance(Lcom/sun/glass/ui/Screen;)Lcom/sun/scenario/effect/impl/prism/PrFilterContext;

    move-result-object v14

    move-object v8, v14

    .line 736
    .local v8, "fctx":Lcom/sun/scenario/effect/FilterContext;
    move-object v14, v3

    move-object v15, v8

    move-object/from16 v16, v4

    move-object/from16 v17, v5

    const/16 v18, 0x0

    move-object/from16 v19, v2

    .line 737
    invoke-virtual/range {v14 .. v19}, Lcom/sun/scenario/effect/Effect;->filter(Lcom/sun/scenario/effect/FilterContext;Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/javafx/geom/Rectangle;Ljava/lang/Object;Lcom/sun/scenario/effect/Effect;)Lcom/sun/scenario/effect/ImageData;

    move-result-object v14

    move-object v9, v14

    .line 738
    .local v9, "id":Lcom/sun/scenario/effect/ImageData;
    move-object v14, v9

    invoke-virtual {v14}, Lcom/sun/scenario/effect/ImageData;->getUntransformedBounds()Lcom/sun/javafx/geom/Rectangle;

    move-result-object v14

    move-object v10, v14

    .line 739
    .local v10, "r":Lcom/sun/javafx/geom/Rectangle;
    move-object v14, v9

    invoke-virtual {v14}, Lcom/sun/scenario/effect/ImageData;->getUntransformedImage()Lcom/sun/scenario/effect/Filterable;

    move-result-object v14

    move-object v11, v14

    .line 740
    .local v11, "f":Lcom/sun/scenario/effect/Filterable;
    move-object v14, v11

    check-cast v14, Lcom/sun/scenario/effect/impl/prism/PrTexture;

    invoke-virtual {v14}, Lcom/sun/scenario/effect/impl/prism/PrTexture;->getTextureObject()Lcom/sun/prism/Texture;

    move-result-object v14

    move-object v12, v14

    .line 741
    .local v12, "tex":Lcom/sun/prism/Texture;
    move-object v14, v7

    iget-object v14, v14, Lcom/sun/javafx/sg/prism/NGCanvas$RenderBuf;->g:Lcom/sun/prism/Graphics;

    move-object v15, v9

    invoke-virtual {v15}, Lcom/sun/scenario/effect/ImageData;->getTransform()Lcom/sun/javafx/geom/transform/BaseTransform;

    move-result-object v15

    invoke-interface {v14, v15}, Lcom/sun/prism/Graphics;->setTransform(Lcom/sun/javafx/geom/transform/BaseTransform;)V

    .line 742
    move-object v14, v7

    iget-object v14, v14, Lcom/sun/javafx/sg/prism/NGCanvas$RenderBuf;->g:Lcom/sun/prism/Graphics;

    move-object v15, v6

    invoke-interface {v14, v15}, Lcom/sun/prism/Graphics;->setCompositeMode(Lcom/sun/prism/CompositeMode;)V

    .line 743
    move-object v14, v7

    iget-object v14, v14, Lcom/sun/javafx/sg/prism/NGCanvas$RenderBuf;->g:Lcom/sun/prism/Graphics;

    move-object v15, v12

    move-object/from16 v16, v10

    move-object/from16 v0, v16

    iget v0, v0, Lcom/sun/javafx/geom/Rectangle;->x:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    move-object/from16 v17, v10

    move-object/from16 v0, v17

    iget v0, v0, Lcom/sun/javafx/geom/Rectangle;->y:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move-object/from16 v18, v10

    move-object/from16 v0, v18

    iget v0, v0, Lcom/sun/javafx/geom/Rectangle;->width:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move-object/from16 v19, v10

    move-object/from16 v0, v19

    iget v0, v0, Lcom/sun/javafx/geom/Rectangle;->height:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    invoke-interface/range {v14 .. v19}, Lcom/sun/prism/Graphics;->drawTexture(Lcom/sun/prism/Texture;FFFF)V

    .line 744
    move-object v14, v7

    iget-object v14, v14, Lcom/sun/javafx/sg/prism/NGCanvas$RenderBuf;->g:Lcom/sun/prism/Graphics;

    sget-object v15, Lcom/sun/javafx/geom/transform/BaseTransform;->IDENTITY_TRANSFORM:Lcom/sun/javafx/geom/transform/BaseTransform;

    invoke-interface {v14, v15}, Lcom/sun/prism/Graphics;->setTransform(Lcom/sun/javafx/geom/transform/BaseTransform;)V

    .line 745
    move-object v14, v7

    iget-object v14, v14, Lcom/sun/javafx/sg/prism/NGCanvas$RenderBuf;->g:Lcom/sun/prism/Graphics;

    sget-object v15, Lcom/sun/prism/CompositeMode;->SRC_OVER:Lcom/sun/prism/CompositeMode;

    invoke-interface {v14, v15}, Lcom/sun/prism/Graphics;->setCompositeMode(Lcom/sun/prism/CompositeMode;)V

    .line 746
    move-object v14, v9

    move-object v15, v5

    invoke-virtual {v14, v15}, Lcom/sun/scenario/effect/ImageData;->getTransformedBounds(Lcom/sun/javafx/geom/Rectangle;)Lcom/sun/javafx/geom/Rectangle;

    move-result-object v14

    move-object v13, v14

    .line 747
    .local v13, "resultBounds":Lcom/sun/javafx/geom/Rectangle;
    move-object v14, v9

    invoke-virtual {v14}, Lcom/sun/scenario/effect/ImageData;->unref()V

    .line 748
    move-object v14, v13

    move-object v1, v14

    .end local v1    # "this":Lcom/sun/javafx/sg/prism/NGCanvas;
    return-object v1
.end method

.method private blendAthruBintoC(Lcom/sun/javafx/sg/prism/NGCanvas$RenderBuf;Lcom/sun/scenario/effect/Blend$Mode;Lcom/sun/javafx/sg/prism/NGCanvas$RenderBuf;Lcom/sun/javafx/geom/RectBounds;Lcom/sun/prism/CompositeMode;Lcom/sun/javafx/sg/prism/NGCanvas$RenderBuf;)V
    .locals 16

    .prologue
    .line 758
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGCanvas;
    move-object/from16 v1, p1

    .local v1, "drawbuf":Lcom/sun/javafx/sg/prism/NGCanvas$RenderBuf;
    move-object/from16 v2, p2

    .local v2, "mode":Lcom/sun/scenario/effect/Blend$Mode;
    move-object/from16 v3, p3

    .local v3, "clipbuf":Lcom/sun/javafx/sg/prism/NGCanvas$RenderBuf;
    move-object/from16 v4, p4

    .local v4, "bounds":Lcom/sun/javafx/geom/RectBounds;
    move-object/from16 v5, p5

    .local v5, "comp":Lcom/sun/prism/CompositeMode;
    move-object/from16 v6, p6

    .local v6, "destbuf":Lcom/sun/javafx/sg/prism/NGCanvas$RenderBuf;
    sget-object v8, Lcom/sun/javafx/sg/prism/NGCanvas;->BLENDER:Lcom/sun/scenario/effect/Blend;

    move-object v9, v1

    iget-object v9, v9, Lcom/sun/javafx/sg/prism/NGCanvas$RenderBuf;->input:Lcom/sun/javafx/sg/prism/NGCanvas$EffectInput;

    invoke-virtual {v8, v9}, Lcom/sun/scenario/effect/Blend;->setTopInput(Lcom/sun/scenario/effect/Effect;)V

    .line 759
    sget-object v8, Lcom/sun/javafx/sg/prism/NGCanvas;->BLENDER:Lcom/sun/scenario/effect/Blend;

    move-object v9, v3

    iget-object v9, v9, Lcom/sun/javafx/sg/prism/NGCanvas$RenderBuf;->input:Lcom/sun/javafx/sg/prism/NGCanvas$EffectInput;

    invoke-virtual {v8, v9}, Lcom/sun/scenario/effect/Blend;->setBottomInput(Lcom/sun/scenario/effect/Effect;)V

    .line 760
    sget-object v8, Lcom/sun/javafx/sg/prism/NGCanvas;->BLENDER:Lcom/sun/scenario/effect/Blend;

    move-object v9, v2

    invoke-virtual {v8, v9}, Lcom/sun/scenario/effect/Blend;->setMode(Lcom/sun/scenario/effect/Blend$Mode;)V

    .line 762
    move-object v8, v4

    if-eqz v8, :cond_0

    .line 763
    new-instance v8, Lcom/sun/javafx/geom/Rectangle;

    move-object v15, v8

    move-object v8, v15

    move-object v9, v15

    move-object v10, v4

    invoke-direct {v9, v10}, Lcom/sun/javafx/geom/Rectangle;-><init>(Lcom/sun/javafx/geom/BaseBounds;)V

    move-object v7, v8

    .line 767
    .local v7, "blendclip":Lcom/sun/javafx/geom/Rectangle;
    :goto_0
    move-object v8, v0

    const/4 v9, 0x0

    sget-object v10, Lcom/sun/javafx/sg/prism/NGCanvas;->BLENDER:Lcom/sun/scenario/effect/Blend;

    sget-object v11, Lcom/sun/javafx/geom/transform/BaseTransform;->IDENTITY_TRANSFORM:Lcom/sun/javafx/geom/transform/BaseTransform;

    move-object v12, v7

    move-object v13, v5

    move-object v14, v6

    invoke-direct/range {v8 .. v14}, Lcom/sun/javafx/sg/prism/NGCanvas;->applyEffectOnAintoC(Lcom/sun/scenario/effect/Effect;Lcom/sun/scenario/effect/Effect;Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/javafx/geom/Rectangle;Lcom/sun/prism/CompositeMode;Lcom/sun/javafx/sg/prism/NGCanvas$RenderBuf;)Lcom/sun/javafx/geom/Rectangle;

    move-result-object v8

    .line 770
    return-void

    .line 765
    .end local v7    # "blendclip":Lcom/sun/javafx/geom/Rectangle;
    :cond_0
    const/4 v8, 0x0

    move-object v7, v8

    .restart local v7    # "blendclip":Lcom/sun/javafx/geom/Rectangle;
    goto :goto_0
.end method

.method private clearCanvas(IIII)V
    .locals 11

    .prologue
    .line 650
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGCanvas;
    move v1, p1

    .local v1, "x":I
    move v2, p2

    .local v2, "y":I
    move v3, p3

    .local v3, "w":I
    move v4, p4

    .local v4, "h":I
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/sg/prism/NGCanvas;->cv:Lcom/sun/javafx/sg/prism/NGCanvas$RenderBuf;

    iget-object v5, v5, Lcom/sun/javafx/sg/prism/NGCanvas$RenderBuf;->g:Lcom/sun/prism/Graphics;

    sget-object v6, Lcom/sun/prism/CompositeMode;->CLEAR:Lcom/sun/prism/CompositeMode;

    invoke-interface {v5, v6}, Lcom/sun/prism/Graphics;->setCompositeMode(Lcom/sun/prism/CompositeMode;)V

    .line 651
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/sg/prism/NGCanvas;->cv:Lcom/sun/javafx/sg/prism/NGCanvas$RenderBuf;

    iget-object v5, v5, Lcom/sun/javafx/sg/prism/NGCanvas$RenderBuf;->g:Lcom/sun/prism/Graphics;

    sget-object v6, Lcom/sun/javafx/geom/transform/BaseTransform;->IDENTITY_TRANSFORM:Lcom/sun/javafx/geom/transform/BaseTransform;

    invoke-interface {v5, v6}, Lcom/sun/prism/Graphics;->setTransform(Lcom/sun/javafx/geom/transform/BaseTransform;)V

    .line 652
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/sg/prism/NGCanvas;->cv:Lcom/sun/javafx/sg/prism/NGCanvas$RenderBuf;

    iget-object v5, v5, Lcom/sun/javafx/sg/prism/NGCanvas$RenderBuf;->g:Lcom/sun/prism/Graphics;

    move v6, v1

    int-to-float v6, v6

    move v7, v2

    int-to-float v7, v7

    move v8, v1

    move v9, v3

    add-int/2addr v8, v9

    int-to-float v8, v8

    move v9, v2

    move v10, v4

    add-int/2addr v9, v10

    int-to-float v9, v9

    invoke-interface {v5, v6, v7, v8, v9}, Lcom/sun/prism/Graphics;->fillQuad(FFFF)V

    .line 653
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/sg/prism/NGCanvas;->cv:Lcom/sun/javafx/sg/prism/NGCanvas$RenderBuf;

    iget-object v5, v5, Lcom/sun/javafx/sg/prism/NGCanvas$RenderBuf;->g:Lcom/sun/prism/Graphics;

    sget-object v6, Lcom/sun/prism/CompositeMode;->SRC_OVER:Lcom/sun/prism/CompositeMode;

    invoke-interface {v5, v6}, Lcom/sun/prism/Graphics;->setCompositeMode(Lcom/sun/prism/CompositeMode;)V

    .line 654
    return-void
.end method

.method private getInverseTransform()Lcom/sun/javafx/geom/transform/Affine2D;
    .locals 9

    .prologue
    .line 509
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/sg/prism/NGCanvas;
    move-object v3, v1

    iget-object v3, v3, Lcom/sun/javafx/sg/prism/NGCanvas;->inverseTransform:Lcom/sun/javafx/geom/transform/Affine2D;

    if-nez v3, :cond_0

    .line 510
    move-object v3, v1

    new-instance v4, Lcom/sun/javafx/geom/transform/Affine2D;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    invoke-direct {v5}, Lcom/sun/javafx/geom/transform/Affine2D;-><init>()V

    iput-object v4, v3, Lcom/sun/javafx/sg/prism/NGCanvas;->inverseTransform:Lcom/sun/javafx/geom/transform/Affine2D;

    .line 511
    move-object v3, v1

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/sun/javafx/sg/prism/NGCanvas;->inversedirty:Z

    .line 513
    :cond_0
    move-object v3, v1

    iget-boolean v3, v3, Lcom/sun/javafx/sg/prism/NGCanvas;->inversedirty:Z

    if-eqz v3, :cond_1

    .line 514
    move-object v3, v1

    iget-object v3, v3, Lcom/sun/javafx/sg/prism/NGCanvas;->inverseTransform:Lcom/sun/javafx/geom/transform/Affine2D;

    move-object v4, v1

    iget-object v4, v4, Lcom/sun/javafx/sg/prism/NGCanvas;->transform:Lcom/sun/javafx/geom/transform/Affine2D;

    invoke-virtual {v3, v4}, Lcom/sun/javafx/geom/transform/Affine2D;->setTransform(Lcom/sun/javafx/geom/transform/BaseTransform;)V

    .line 516
    move-object v3, v1

    :try_start_0
    iget-object v3, v3, Lcom/sun/javafx/sg/prism/NGCanvas;->inverseTransform:Lcom/sun/javafx/geom/transform/Affine2D;

    invoke-virtual {v3}, Lcom/sun/javafx/geom/transform/Affine2D;->invert()V
    :try_end_0
    .catch Lcom/sun/javafx/geom/transform/NoninvertibleTransformException; {:try_start_0 .. :try_end_0} :catch_0

    .line 519
    .line 520
    :goto_0
    move-object v3, v1

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/sun/javafx/sg/prism/NGCanvas;->inversedirty:Z

    .line 522
    :cond_1
    move-object v3, v1

    iget-object v3, v3, Lcom/sun/javafx/sg/prism/NGCanvas;->inverseTransform:Lcom/sun/javafx/geom/transform/Affine2D;

    move-object v1, v3

    .end local v1    # "this":Lcom/sun/javafx/sg/prism/NGCanvas;
    return-object v1

    .line 517
    .restart local v1    # "this":Lcom/sun/javafx/sg/prism/NGCanvas;
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 518
    .local v2, "e":Lcom/sun/javafx/geom/transform/NoninvertibleTransformException;
    move-object v3, v1

    iget-object v3, v3, Lcom/sun/javafx/sg/prism/NGCanvas;->inverseTransform:Lcom/sun/javafx/geom/transform/Affine2D;

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/sun/javafx/geom/transform/Affine2D;->setToScale(DD)V

    goto :goto_0
.end method

.method private getStroke()Lcom/sun/prism/BasicStroke;
    .locals 11

    .prologue
    .line 777
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGCanvas;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/sg/prism/NGCanvas;->stroke:Lcom/sun/prism/BasicStroke;

    if-nez v1, :cond_0

    .line 778
    move-object v1, v0

    new-instance v2, Lcom/sun/prism/BasicStroke;

    move-object v10, v2

    move-object v2, v10

    move-object v3, v10

    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/sg/prism/NGCanvas;->linewidth:F

    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/sg/prism/NGCanvas;->linecap:I

    move-object v6, v0

    iget v6, v6, Lcom/sun/javafx/sg/prism/NGCanvas;->linejoin:I

    move-object v7, v0

    iget v7, v7, Lcom/sun/javafx/sg/prism/NGCanvas;->miterlimit:F

    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/sg/prism/NGCanvas;->dashes:[D

    move-object v9, v0

    iget v9, v9, Lcom/sun/javafx/sg/prism/NGCanvas;->dashOffset:F

    invoke-direct/range {v3 .. v9}, Lcom/sun/prism/BasicStroke;-><init>(FIIF[DF)V

    iput-object v2, v1, Lcom/sun/javafx/sg/prism/NGCanvas;->stroke:Lcom/sun/prism/BasicStroke;

    .line 781
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/sg/prism/NGCanvas;->stroke:Lcom/sun/prism/BasicStroke;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/sg/prism/NGCanvas;
    return-object v0
.end method

.method private initAttributes()V
    .locals 6

    .prologue
    .line 375
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGCanvas;
    move-object v1, v0

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, v1, Lcom/sun/javafx/sg/prism/NGCanvas;->globalAlpha:F

    .line 376
    move-object v1, v0

    sget-object v2, Lcom/sun/scenario/effect/Blend$Mode;->SRC_OVER:Lcom/sun/scenario/effect/Blend$Mode;

    iput-object v2, v1, Lcom/sun/javafx/sg/prism/NGCanvas;->blendmode:Lcom/sun/scenario/effect/Blend$Mode;

    .line 377
    move-object v1, v0

    sget-object v2, Lcom/sun/prism/paint/Color;->BLACK:Lcom/sun/prism/paint/Color;

    iput-object v2, v1, Lcom/sun/javafx/sg/prism/NGCanvas;->fillPaint:Lcom/sun/prism/paint/Paint;

    .line 378
    move-object v1, v0

    sget-object v2, Lcom/sun/prism/paint/Color;->BLACK:Lcom/sun/prism/paint/Color;

    iput-object v2, v1, Lcom/sun/javafx/sg/prism/NGCanvas;->strokePaint:Lcom/sun/prism/paint/Paint;

    .line 379
    move-object v1, v0

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, v1, Lcom/sun/javafx/sg/prism/NGCanvas;->linewidth:F

    .line 380
    move-object v1, v0

    const/4 v2, 0x2

    iput v2, v1, Lcom/sun/javafx/sg/prism/NGCanvas;->linecap:I

    .line 381
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Lcom/sun/javafx/sg/prism/NGCanvas;->linejoin:I

    .line 382
    move-object v1, v0

    const/high16 v2, 0x41200000    # 10.0f

    iput v2, v1, Lcom/sun/javafx/sg/prism/NGCanvas;->miterlimit:F

    .line 383
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/sun/javafx/sg/prism/NGCanvas;->dashes:[D

    .line 384
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Lcom/sun/javafx/sg/prism/NGCanvas;->dashOffset:F

    .line 385
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/sun/javafx/sg/prism/NGCanvas;->stroke:Lcom/sun/prism/BasicStroke;

    .line 386
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/sg/prism/NGCanvas;->path:Lcom/sun/javafx/geom/Path2D;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sun/javafx/geom/Path2D;->setWindingRule(I)V

    .line 389
    move-object v1, v0

    invoke-static {}, Ljavafx/scene/text/Font;->getDefault()Ljavafx/scene/text/Font;

    move-result-object v2

    invoke-virtual {v2}, Ljavafx/scene/text/Font;->impl_getNativeFont()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/javafx/font/PGFont;

    iput-object v2, v1, Lcom/sun/javafx/sg/prism/NGCanvas;->pgfont:Lcom/sun/javafx/font/PGFont;

    .line 390
    move-object v1, v0

    sget-byte v2, Lcom/sun/javafx/sg/prism/NGCanvas;->SMOOTH_GRAY:B

    iput v2, v1, Lcom/sun/javafx/sg/prism/NGCanvas;->smoothing:I

    .line 391
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Lcom/sun/javafx/sg/prism/NGCanvas;->align:I

    .line 392
    move-object v1, v0

    sget-object v2, Ljavafx/geometry/VPos;->BASELINE:Ljavafx/geometry/VPos;

    invoke-virtual {v2}, Ljavafx/geometry/VPos;->ordinal()I

    move-result v2

    iput v2, v1, Lcom/sun/javafx/sg/prism/NGCanvas;->baseline:I

    .line 393
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/sg/prism/NGCanvas;->transform:Lcom/sun/javafx/geom/transform/Affine2D;

    move-object v2, v0

    iget v2, v2, Lcom/sun/javafx/sg/prism/NGCanvas;->highestPixelScale:F

    float-to-double v2, v2

    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/sg/prism/NGCanvas;->highestPixelScale:F

    float-to-double v4, v4

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/sun/javafx/geom/transform/Affine2D;->setToScale(DD)V

    .line 394
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/sg/prism/NGCanvas;->clipStack:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V

    .line 395
    move-object v1, v0

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/sun/javafx/sg/prism/NGCanvas;->resetClip(Z)V

    .line 396
    return-void
.end method

.method private initCanvas(Lcom/sun/prism/Graphics;)V
    .locals 6

    .prologue
    .line 636
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGCanvas;
    move-object v1, p1

    .local v1, "g":Lcom/sun/prism/Graphics;
    move-object v2, v0

    iget v2, v2, Lcom/sun/javafx/sg/prism/NGCanvas;->tw:I

    if-lez v2, :cond_0

    move-object v2, v0

    iget v2, v2, Lcom/sun/javafx/sg/prism/NGCanvas;->th:I

    if-gtz v2, :cond_1

    .line 637
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/sg/prism/NGCanvas;->cv:Lcom/sun/javafx/sg/prism/NGCanvas$RenderBuf;

    invoke-virtual {v2}, Lcom/sun/javafx/sg/prism/NGCanvas$RenderBuf;->dispose()V

    .line 638
    .line 647
    :goto_0
    return-void

    .line 640
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/sg/prism/NGCanvas;->cv:Lcom/sun/javafx/sg/prism/NGCanvas$RenderBuf;

    move-object v3, v1

    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/sg/prism/NGCanvas;->tw:I

    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/sg/prism/NGCanvas;->th:I

    invoke-virtual {v2, v3, v4, v5}, Lcom/sun/javafx/sg/prism/NGCanvas$RenderBuf;->validate(Lcom/sun/prism/Graphics;II)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 643
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/sg/prism/NGCanvas;->cv:Lcom/sun/javafx/sg/prism/NGCanvas$RenderBuf;

    iget-object v2, v2, Lcom/sun/javafx/sg/prism/NGCanvas$RenderBuf;->tex:Lcom/sun/prism/RTTexture;

    invoke-interface {v2}, Lcom/sun/prism/RTTexture;->contentsUseful()V

    .line 644
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/sg/prism/NGCanvas;->cv:Lcom/sun/javafx/sg/prism/NGCanvas$RenderBuf;

    iget-object v2, v2, Lcom/sun/javafx/sg/prism/NGCanvas$RenderBuf;->tex:Lcom/sun/prism/RTTexture;

    invoke-interface {v2}, Lcom/sun/prism/RTTexture;->makePermanent()V

    .line 645
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/sg/prism/NGCanvas;->cv:Lcom/sun/javafx/sg/prism/NGCanvas$RenderBuf;

    iget-object v2, v2, Lcom/sun/javafx/sg/prism/NGCanvas$RenderBuf;->tex:Lcom/sun/prism/RTTexture;

    invoke-interface {v2}, Lcom/sun/prism/RTTexture;->lock()V

    .line 647
    :cond_2
    goto :goto_0
.end method

.method private initClip()Z
    .locals 15

    .prologue
    .line 667
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGCanvas;
    move-object v4, v0

    iget-boolean v4, v4, Lcom/sun/javafx/sg/prism/NGCanvas;->clipIsRect:Z

    if-eqz v4, :cond_1

    .line 668
    const/4 v4, 0x0

    move v1, v4

    .line 677
    .local v1, "clipValidated":Z
    :cond_0
    :goto_0
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/sg/prism/NGCanvas;->clipStack:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v4

    move v2, v4

    .line 678
    .local v2, "clipSize":I
    :goto_1
    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/sg/prism/NGCanvas;->clipsRendered:I

    move v5, v2

    if-ge v4, v5, :cond_7

    .line 679
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/sg/prism/NGCanvas;->clipStack:Ljava/util/LinkedList;

    move-object v5, v0

    move-object v13, v5

    move-object v5, v13

    move-object v6, v13

    iget v6, v6, Lcom/sun/javafx/sg/prism/NGCanvas;->clipsRendered:I

    move-object v13, v5

    move v14, v6

    move v5, v14

    move-object v6, v13

    move v7, v14

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    iput v7, v6, Lcom/sun/javafx/sg/prism/NGCanvas;->clipsRendered:I

    invoke-virtual {v4, v5}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/javafx/geom/Path2D;

    move-object v3, v4

    .line 680
    .local v3, "clippath":Lcom/sun/javafx/geom/Path2D;
    move-object v4, v0

    iget-boolean v4, v4, Lcom/sun/javafx/sg/prism/NGCanvas;->clipIsRect:Z

    if-eqz v4, :cond_5

    .line 681
    move-object v4, v3

    sget-object v5, Lcom/sun/javafx/sg/prism/NGCanvas;->TEMP_RECT:Lcom/sun/javafx/geom/Rectangle;

    const/high16 v6, 0x3b800000    # 0.00390625f

    invoke-virtual {v4, v5, v6}, Lcom/sun/javafx/geom/Path2D;->checkAndGetIntRect(Lcom/sun/javafx/geom/Rectangle;F)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 682
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/sg/prism/NGCanvas;->clipRect:Lcom/sun/javafx/geom/Rectangle;

    if-nez v4, :cond_2

    .line 683
    move-object v4, v0

    new-instance v5, Lcom/sun/javafx/geom/Rectangle;

    move-object v13, v5

    move-object v5, v13

    move-object v6, v13

    sget-object v7, Lcom/sun/javafx/sg/prism/NGCanvas;->TEMP_RECT:Lcom/sun/javafx/geom/Rectangle;

    invoke-direct {v6, v7}, Lcom/sun/javafx/geom/Rectangle;-><init>(Lcom/sun/javafx/geom/Rectangle;)V

    iput-object v5, v4, Lcom/sun/javafx/sg/prism/NGCanvas;->clipRect:Lcom/sun/javafx/geom/Rectangle;

    goto :goto_1

    .line 670
    .end local v1    # "clipValidated":Z
    .end local v2    # "clipSize":I
    .end local v3    # "clippath":Lcom/sun/javafx/geom/Path2D;
    :cond_1
    const/4 v4, 0x1

    move v1, v4

    .line 671
    .restart local v1    # "clipValidated":Z
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/sg/prism/NGCanvas;->clip:Lcom/sun/javafx/sg/prism/NGCanvas$RenderBuf;

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/sg/prism/NGCanvas;->cv:Lcom/sun/javafx/sg/prism/NGCanvas$RenderBuf;

    iget-object v5, v5, Lcom/sun/javafx/sg/prism/NGCanvas$RenderBuf;->g:Lcom/sun/prism/Graphics;

    move-object v6, v0

    iget v6, v6, Lcom/sun/javafx/sg/prism/NGCanvas;->tw:I

    move-object v7, v0

    iget v7, v7, Lcom/sun/javafx/sg/prism/NGCanvas;->th:I

    invoke-virtual {v4, v5, v6, v7}, Lcom/sun/javafx/sg/prism/NGCanvas$RenderBuf;->validate(Lcom/sun/prism/Graphics;II)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 672
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/sg/prism/NGCanvas;->clip:Lcom/sun/javafx/sg/prism/NGCanvas$RenderBuf;

    iget-object v4, v4, Lcom/sun/javafx/sg/prism/NGCanvas$RenderBuf;->tex:Lcom/sun/prism/RTTexture;

    invoke-interface {v4}, Lcom/sun/prism/RTTexture;->contentsUseful()V

    .line 674
    move-object v4, v0

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/sun/javafx/sg/prism/NGCanvas;->resetClip(Z)V

    goto :goto_0

    .line 685
    .restart local v2    # "clipSize":I
    .restart local v3    # "clippath":Lcom/sun/javafx/geom/Path2D;
    :cond_2
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/sg/prism/NGCanvas;->clipRect:Lcom/sun/javafx/geom/Rectangle;

    sget-object v5, Lcom/sun/javafx/sg/prism/NGCanvas;->TEMP_RECT:Lcom/sun/javafx/geom/Rectangle;

    invoke-virtual {v4, v5}, Lcom/sun/javafx/geom/Rectangle;->intersectWith(Lcom/sun/javafx/geom/Rectangle;)V

    .line 687
    goto :goto_1

    .line 689
    :cond_3
    move-object v4, v0

    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/sun/javafx/sg/prism/NGCanvas;->clipIsRect:Z

    .line 690
    move v4, v1

    if-nez v4, :cond_4

    .line 691
    const/4 v4, 0x1

    move v1, v4

    .line 692
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/sg/prism/NGCanvas;->clip:Lcom/sun/javafx/sg/prism/NGCanvas$RenderBuf;

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/sg/prism/NGCanvas;->cv:Lcom/sun/javafx/sg/prism/NGCanvas$RenderBuf;

    iget-object v5, v5, Lcom/sun/javafx/sg/prism/NGCanvas$RenderBuf;->g:Lcom/sun/prism/Graphics;

    move-object v6, v0

    iget v6, v6, Lcom/sun/javafx/sg/prism/NGCanvas;->tw:I

    move-object v7, v0

    iget v7, v7, Lcom/sun/javafx/sg/prism/NGCanvas;->th:I

    invoke-virtual {v4, v5, v6, v7}, Lcom/sun/javafx/sg/prism/NGCanvas$RenderBuf;->validate(Lcom/sun/prism/Graphics;II)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 693
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/sg/prism/NGCanvas;->clip:Lcom/sun/javafx/sg/prism/NGCanvas$RenderBuf;

    iget-object v4, v4, Lcom/sun/javafx/sg/prism/NGCanvas$RenderBuf;->tex:Lcom/sun/prism/RTTexture;

    invoke-interface {v4}, Lcom/sun/prism/RTTexture;->contentsUseful()V

    .line 697
    :cond_4
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/sg/prism/NGCanvas;->clipRect:Lcom/sun/javafx/geom/Rectangle;

    if-eqz v4, :cond_5

    .line 698
    move-object v4, v0

    new-instance v5, Lcom/sun/javafx/geom/RoundRectangle2D;

    move-object v13, v5

    move-object v5, v13

    move-object v6, v13

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/sg/prism/NGCanvas;->clipRect:Lcom/sun/javafx/geom/Rectangle;

    iget v7, v7, Lcom/sun/javafx/geom/Rectangle;->x:I

    int-to-float v7, v7

    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/sg/prism/NGCanvas;->clipRect:Lcom/sun/javafx/geom/Rectangle;

    iget v8, v8, Lcom/sun/javafx/geom/Rectangle;->y:I

    int-to-float v8, v8

    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/sg/prism/NGCanvas;->clipRect:Lcom/sun/javafx/geom/Rectangle;

    iget v9, v9, Lcom/sun/javafx/geom/Rectangle;->width:I

    int-to-float v9, v9

    move-object v10, v0

    iget-object v10, v10, Lcom/sun/javafx/sg/prism/NGCanvas;->clipRect:Lcom/sun/javafx/geom/Rectangle;

    iget v10, v10, Lcom/sun/javafx/geom/Rectangle;->height:I

    int-to-float v10, v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct/range {v6 .. v12}, Lcom/sun/javafx/geom/RoundRectangle2D;-><init>(FFFFFF)V

    invoke-direct {v4, v5}, Lcom/sun/javafx/sg/prism/NGCanvas;->renderClip(Lcom/sun/javafx/geom/Shape;)V

    .line 703
    :cond_5
    move-object v4, v3

    sget-object v5, Lcom/sun/javafx/sg/prism/NGCanvas;->TEMP_RECTBOUNDS:Lcom/sun/javafx/geom/RectBounds;

    sget-object v6, Lcom/sun/javafx/geom/transform/BaseTransform;->IDENTITY_TRANSFORM:Lcom/sun/javafx/geom/transform/BaseTransform;

    invoke-static {v4, v5, v6}, Lcom/sun/javafx/sg/prism/NGCanvas;->shapebounds(Lcom/sun/javafx/geom/Shape;Lcom/sun/javafx/geom/RectBounds;Lcom/sun/javafx/geom/transform/BaseTransform;)V

    .line 704
    sget-object v4, Lcom/sun/javafx/sg/prism/NGCanvas;->TEMP_RECT:Lcom/sun/javafx/geom/Rectangle;

    sget-object v5, Lcom/sun/javafx/sg/prism/NGCanvas;->TEMP_RECTBOUNDS:Lcom/sun/javafx/geom/RectBounds;

    invoke-virtual {v4, v5}, Lcom/sun/javafx/geom/Rectangle;->setBounds(Lcom/sun/javafx/geom/BaseBounds;)V

    .line 705
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/sg/prism/NGCanvas;->clipRect:Lcom/sun/javafx/geom/Rectangle;

    if-nez v4, :cond_6

    .line 706
    move-object v4, v0

    new-instance v5, Lcom/sun/javafx/geom/Rectangle;

    move-object v13, v5

    move-object v5, v13

    move-object v6, v13

    sget-object v7, Lcom/sun/javafx/sg/prism/NGCanvas;->TEMP_RECT:Lcom/sun/javafx/geom/Rectangle;

    invoke-direct {v6, v7}, Lcom/sun/javafx/geom/Rectangle;-><init>(Lcom/sun/javafx/geom/Rectangle;)V

    iput-object v5, v4, Lcom/sun/javafx/sg/prism/NGCanvas;->clipRect:Lcom/sun/javafx/geom/Rectangle;

    .line 710
    :goto_2
    move-object v4, v0

    move-object v5, v3

    invoke-direct {v4, v5}, Lcom/sun/javafx/sg/prism/NGCanvas;->renderClip(Lcom/sun/javafx/geom/Shape;)V

    .line 711
    goto/16 :goto_1

    .line 708
    :cond_6
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/sg/prism/NGCanvas;->clipRect:Lcom/sun/javafx/geom/Rectangle;

    sget-object v5, Lcom/sun/javafx/sg/prism/NGCanvas;->TEMP_RECT:Lcom/sun/javafx/geom/Rectangle;

    invoke-virtual {v4, v5}, Lcom/sun/javafx/geom/Rectangle;->intersectWith(Lcom/sun/javafx/geom/Rectangle;)V

    goto :goto_2

    .line 712
    .end local v3    # "clippath":Lcom/sun/javafx/geom/Path2D;
    :cond_7
    move v4, v1

    if-eqz v4, :cond_8

    move-object v4, v0

    iget-boolean v4, v4, Lcom/sun/javafx/sg/prism/NGCanvas;->clipIsRect:Z

    if-eqz v4, :cond_8

    .line 713
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/sg/prism/NGCanvas;->clip:Lcom/sun/javafx/sg/prism/NGCanvas$RenderBuf;

    iget-object v4, v4, Lcom/sun/javafx/sg/prism/NGCanvas$RenderBuf;->tex:Lcom/sun/prism/RTTexture;

    invoke-interface {v4}, Lcom/sun/prism/RTTexture;->unlock()V

    .line 715
    :cond_8
    move-object v4, v0

    iget-boolean v4, v4, Lcom/sun/javafx/sg/prism/NGCanvas;->clipIsRect:Z

    if-nez v4, :cond_9

    const/4 v4, 0x1

    :goto_3
    move v0, v4

    .end local v0    # "this":Lcom/sun/javafx/sg/prism/NGCanvas;
    return v0

    .restart local v0    # "this":Lcom/sun/javafx/sg/prism/NGCanvas;
    :cond_9
    const/4 v4, 0x0

    goto :goto_3
.end method

.method static inverseTxBounds(Lcom/sun/javafx/geom/RectBounds;Lcom/sun/javafx/geom/transform/BaseTransform;)V
    .locals 12

    .prologue
    .line 1496
    move-object v1, p0

    .local v1, "bounds":Lcom/sun/javafx/geom/RectBounds;
    move-object v2, p1

    .local v2, "transform":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object v6, v2

    invoke-virtual {v6}, Lcom/sun/javafx/geom/transform/BaseTransform;->getType()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 1507
    move-object v6, v2

    move-object v7, v1

    move-object v8, v1

    :try_start_0
    invoke-virtual {v6, v7, v8}, Lcom/sun/javafx/geom/transform/BaseTransform;->inverseTransform(Lcom/sun/javafx/geom/BaseBounds;Lcom/sun/javafx/geom/BaseBounds;)Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v6

    move-object v5, v6

    .line 1508
    .local v5, "txbounds":Lcom/sun/javafx/geom/BaseBounds;
    move-object v6, v5

    move-object v7, v1

    if-eq v6, v7, :cond_0

    .line 1509
    move-object v6, v1

    move-object v7, v5

    invoke-virtual {v7}, Lcom/sun/javafx/geom/BaseBounds;->getMinX()F

    move-result v7

    move-object v8, v5

    invoke-virtual {v8}, Lcom/sun/javafx/geom/BaseBounds;->getMinY()F

    move-result v8

    move-object v9, v5

    .line 1510
    invoke-virtual {v9}, Lcom/sun/javafx/geom/BaseBounds;->getMaxX()F

    move-result v9

    move-object v10, v5

    invoke-virtual {v10}, Lcom/sun/javafx/geom/BaseBounds;->getMaxY()F

    move-result v10

    .line 1509
    invoke-virtual {v6, v7, v8, v9, v10}, Lcom/sun/javafx/geom/RectBounds;->setBounds(FFFF)V
    :try_end_0
    .catch Lcom/sun/javafx/geom/transform/NoninvertibleTransformException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1514
    .line 1517
    .end local v5    # "txbounds":Lcom/sun/javafx/geom/BaseBounds;
    :cond_0
    :goto_0
    return-void

    .line 1498
    :pswitch_0
    goto :goto_0

    .line 1500
    :pswitch_1
    move-object v6, v2

    invoke-virtual {v6}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMxt()D

    move-result-wide v6

    double-to-float v6, v6

    move v3, v6

    .line 1501
    .local v3, "tx":F
    move-object v6, v2

    invoke-virtual {v6}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMyt()D

    move-result-wide v6

    double-to-float v6, v6

    move v4, v6

    .line 1502
    .local v4, "ty":F
    move-object v6, v1

    move-object v7, v1

    invoke-virtual {v7}, Lcom/sun/javafx/geom/RectBounds;->getMinX()F

    move-result v7

    move v8, v3

    sub-float/2addr v7, v8

    move-object v8, v1

    invoke-virtual {v8}, Lcom/sun/javafx/geom/RectBounds;->getMinY()F

    move-result v8

    move v9, v4

    sub-float/2addr v8, v9

    move-object v9, v1

    .line 1503
    invoke-virtual {v9}, Lcom/sun/javafx/geom/RectBounds;->getMaxX()F

    move-result v9

    move v10, v3

    sub-float/2addr v9, v10

    move-object v10, v1

    invoke-virtual {v10}, Lcom/sun/javafx/geom/RectBounds;->getMaxY()F

    move-result v10

    move v11, v4

    sub-float/2addr v10, v11

    .line 1502
    invoke-virtual {v6, v7, v8, v9, v10}, Lcom/sun/javafx/geom/RectBounds;->setBounds(FFFF)V

    .line 1504
    goto :goto_0

    .line 1512
    .end local v3    # "tx":F
    .end local v4    # "ty":F
    :catch_0
    move-exception v6

    move-object v5, v6

    .line 1513
    .local v5, "e":Lcom/sun/javafx/geom/transform/NoninvertibleTransformException;
    move-object v6, v1

    invoke-virtual {v6}, Lcom/sun/javafx/geom/RectBounds;->makeEmpty()Lcom/sun/javafx/geom/RectBounds;

    move-result-object v6

    goto :goto_0

    .line 1496
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static synthetic lambda$printedCanvas$264(Lcom/sun/javafx/sg/prism/NGCanvas$PixelData;Lcom/sun/prism/RTTexture;Lcom/sun/prism/Graphics;II)V
    .locals 9

    .prologue
    .line 588
    move-object v0, p0

    .local v0, "pd":Lcom/sun/javafx/sg/prism/NGCanvas$PixelData;
    move-object v1, p1

    .local v1, "localTex":Lcom/sun/prism/RTTexture;
    move-object v2, p2

    .local v2, "texg":Lcom/sun/prism/Graphics;
    move v3, p3

    .local v3, "tw":I
    move v4, p4

    .local v4, "th":I
    move-object v5, v0

    move-object v6, v1

    invoke-static {v5, v6}, Lcom/sun/javafx/sg/prism/NGCanvas$PixelData;->access$200(Lcom/sun/javafx/sg/prism/NGCanvas$PixelData;Lcom/sun/prism/RTTexture;)V

    .line 589
    move-object v5, v0

    move-object v6, v2

    move v7, v3

    move v8, v4

    invoke-static {v5, v6, v7, v8}, Lcom/sun/javafx/sg/prism/NGCanvas$PixelData;->access$000(Lcom/sun/javafx/sg/prism/NGCanvas$PixelData;Lcom/sun/prism/Graphics;II)V

    .line 590
    return-void
.end method

.method private printedCanvas(Lcom/sun/prism/Graphics;)Z
    .locals 17

    .prologue
    .line 569
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGCanvas;
    move-object/from16 v1, p1

    .local v1, "g":Lcom/sun/prism/Graphics;
    move-object v10, v0

    iget-object v10, v10, Lcom/sun/javafx/sg/prism/NGCanvas;->cv:Lcom/sun/javafx/sg/prism/NGCanvas$RenderBuf;

    iget-object v10, v10, Lcom/sun/javafx/sg/prism/NGCanvas$RenderBuf;->tex:Lcom/sun/prism/RTTexture;

    move-object v2, v10

    .line 570
    .local v2, "localTex":Lcom/sun/prism/RTTexture;
    move-object v10, v1

    instance-of v10, v10, Lcom/sun/prism/PrinterGraphics;

    if-eqz v10, :cond_0

    move-object v10, v2

    if-nez v10, :cond_1

    .line 571
    :cond_0
    const/4 v10, 0x0

    move v0, v10

    .line 597
    .end local v0    # "this":Lcom/sun/javafx/sg/prism/NGCanvas;
    :goto_0
    return v0

    .line 573
    .restart local v0    # "this":Lcom/sun/javafx/sg/prism/NGCanvas;
    :cond_1
    move-object v10, v1

    invoke-interface {v10}, Lcom/sun/prism/Graphics;->getResourceFactory()Lcom/sun/prism/ResourceFactory;

    move-result-object v10

    move-object v3, v10

    .line 574
    .local v3, "factory":Lcom/sun/prism/ResourceFactory;
    move-object v10, v3

    move-object v11, v2

    invoke-interface {v10, v11}, Lcom/sun/prism/ResourceFactory;->isCompatibleTexture(Lcom/sun/prism/Texture;)Z

    move-result v10

    move v4, v10

    .line 575
    .local v4, "isCompatTex":Z
    move v10, v4

    if-eqz v10, :cond_2

    .line 576
    const/4 v10, 0x0

    move v0, v10

    goto :goto_0

    .line 579
    :cond_2
    move-object v10, v2

    invoke-interface {v10}, Lcom/sun/prism/RTTexture;->getContentWidth()I

    move-result v10

    move v5, v10

    .line 580
    .local v5, "tw":I
    move-object v10, v2

    invoke-interface {v10}, Lcom/sun/prism/RTTexture;->getContentHeight()I

    move-result v10

    move v6, v10

    .line 581
    .local v6, "th":I
    move-object v10, v3

    move v11, v5

    move v12, v6

    sget-object v13, Lcom/sun/prism/Texture$WrapMode;->CLAMP_TO_ZERO:Lcom/sun/prism/Texture$WrapMode;

    .line 582
    invoke-interface {v10, v11, v12, v13}, Lcom/sun/prism/ResourceFactory;->createRTTexture(IILcom/sun/prism/Texture$WrapMode;)Lcom/sun/prism/RTTexture;

    move-result-object v10

    move-object v7, v10

    .line 583
    .local v7, "tmpTex":Lcom/sun/prism/RTTexture;
    move-object v10, v7

    invoke-interface {v10}, Lcom/sun/prism/RTTexture;->createGraphics()Lcom/sun/prism/Graphics;

    move-result-object v10

    move-object v8, v10

    .line 584
    .local v8, "texg":Lcom/sun/prism/Graphics;
    move-object v10, v8

    sget-object v11, Lcom/sun/prism/CompositeMode;->SRC:Lcom/sun/prism/CompositeMode;

    invoke-interface {v10, v11}, Lcom/sun/prism/Graphics;->setCompositeMode(Lcom/sun/prism/CompositeMode;)V

    .line 585
    move-object v10, v0

    iget-object v10, v10, Lcom/sun/javafx/sg/prism/NGCanvas;->cv:Lcom/sun/javafx/sg/prism/NGCanvas$RenderBuf;

    invoke-static {v10}, Lcom/sun/javafx/sg/prism/NGCanvas$RenderBuf;->access$600(Lcom/sun/javafx/sg/prism/NGCanvas$RenderBuf;)Lcom/sun/javafx/sg/prism/NGCanvas$PixelData;

    move-result-object v10

    if-nez v10, :cond_3

    .line 586
    new-instance v10, Lcom/sun/javafx/sg/prism/NGCanvas$PixelData;

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    move-object v12, v0

    iget v12, v12, Lcom/sun/javafx/sg/prism/NGCanvas;->cw:I

    move-object v13, v0

    iget v13, v13, Lcom/sun/javafx/sg/prism/NGCanvas;->ch:I

    const/4 v14, 0x0

    invoke-direct {v11, v12, v13, v14}, Lcom/sun/javafx/sg/prism/NGCanvas$PixelData;-><init>(IILcom/sun/javafx/sg/prism/NGCanvas$1;)V

    move-object v9, v10

    .line 587
    .local v9, "pd":Lcom/sun/javafx/sg/prism/NGCanvas$PixelData;
    move-object v10, v9

    move-object v11, v2

    move-object v12, v8

    move v13, v5

    move v14, v6

    invoke-static {v10, v11, v12, v13, v14}, Lcom/sun/javafx/sg/prism/NGCanvas$$Lambda$1;->lambdaFactory$(Lcom/sun/javafx/sg/prism/NGCanvas$PixelData;Lcom/sun/prism/RTTexture;Lcom/sun/prism/Graphics;II)Ljava/lang/Runnable;

    move-result-object v10

    invoke-static {v10}, Lcom/sun/javafx/sg/prism/NGCanvas;->runOnRenderThread(Ljava/lang/Runnable;)V

    .line 591
    .line 594
    .end local v9    # "pd":Lcom/sun/javafx/sg/prism/NGCanvas$PixelData;
    :goto_1
    move-object v10, v1

    move-object v11, v7

    const/4 v12, 0x0

    const/4 v13, 0x0

    move v14, v5

    int-to-float v14, v14

    move v15, v6

    int-to-float v15, v15

    invoke-interface/range {v10 .. v15}, Lcom/sun/prism/Graphics;->drawTexture(Lcom/sun/prism/Texture;FFFF)V

    .line 595
    move-object v10, v7

    invoke-interface {v10}, Lcom/sun/prism/RTTexture;->unlock()V

    .line 596
    move-object v10, v7

    invoke-interface {v10}, Lcom/sun/prism/RTTexture;->dispose()V

    .line 597
    const/4 v10, 0x1

    move v0, v10

    goto :goto_0

    .line 592
    :cond_3
    move-object v10, v0

    iget-object v10, v10, Lcom/sun/javafx/sg/prism/NGCanvas;->cv:Lcom/sun/javafx/sg/prism/NGCanvas$RenderBuf;

    invoke-static {v10}, Lcom/sun/javafx/sg/prism/NGCanvas$RenderBuf;->access$600(Lcom/sun/javafx/sg/prism/NGCanvas$RenderBuf;)Lcom/sun/javafx/sg/prism/NGCanvas$PixelData;

    move-result-object v10

    move-object v11, v8

    move v12, v5

    move v13, v6

    invoke-static {v10, v11, v12, v13}, Lcom/sun/javafx/sg/prism/NGCanvas$PixelData;->access$000(Lcom/sun/javafx/sg/prism/NGCanvas$PixelData;Lcom/sun/prism/Graphics;II)V

    goto :goto_1
.end method

.method private renderClip(Lcom/sun/javafx/geom/Shape;)V
    .locals 9

    .prologue
    .line 719
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGCanvas;
    move-object v1, p1

    .local v1, "clippath":Lcom/sun/javafx/geom/Shape;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/sg/prism/NGCanvas;->temp:Lcom/sun/javafx/sg/prism/NGCanvas$RenderBuf;

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/sg/prism/NGCanvas;->cv:Lcom/sun/javafx/sg/prism/NGCanvas$RenderBuf;

    iget-object v3, v3, Lcom/sun/javafx/sg/prism/NGCanvas$RenderBuf;->g:Lcom/sun/prism/Graphics;

    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/sg/prism/NGCanvas;->tw:I

    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/sg/prism/NGCanvas;->th:I

    invoke-virtual {v2, v3, v4, v5}, Lcom/sun/javafx/sg/prism/NGCanvas$RenderBuf;->validate(Lcom/sun/prism/Graphics;II)Z

    move-result v2

    .line 720
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/sg/prism/NGCanvas;->temp:Lcom/sun/javafx/sg/prism/NGCanvas$RenderBuf;

    iget-object v2, v2, Lcom/sun/javafx/sg/prism/NGCanvas$RenderBuf;->g:Lcom/sun/prism/Graphics;

    sget-object v3, Lcom/sun/prism/paint/Color;->WHITE:Lcom/sun/prism/paint/Color;

    invoke-interface {v2, v3}, Lcom/sun/prism/Graphics;->setPaint(Lcom/sun/prism/paint/Paint;)V

    .line 721
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/sg/prism/NGCanvas;->temp:Lcom/sun/javafx/sg/prism/NGCanvas$RenderBuf;

    iget-object v2, v2, Lcom/sun/javafx/sg/prism/NGCanvas$RenderBuf;->g:Lcom/sun/prism/Graphics;

    sget-object v3, Lcom/sun/javafx/geom/transform/BaseTransform;->IDENTITY_TRANSFORM:Lcom/sun/javafx/geom/transform/BaseTransform;

    invoke-interface {v2, v3}, Lcom/sun/prism/Graphics;->setTransform(Lcom/sun/javafx/geom/transform/BaseTransform;)V

    .line 722
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/sg/prism/NGCanvas;->temp:Lcom/sun/javafx/sg/prism/NGCanvas$RenderBuf;

    iget-object v2, v2, Lcom/sun/javafx/sg/prism/NGCanvas$RenderBuf;->g:Lcom/sun/prism/Graphics;

    move-object v3, v1

    invoke-interface {v2, v3}, Lcom/sun/prism/Graphics;->fill(Lcom/sun/javafx/geom/Shape;)V

    .line 723
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/sg/prism/NGCanvas;->temp:Lcom/sun/javafx/sg/prism/NGCanvas$RenderBuf;

    sget-object v4, Lcom/sun/scenario/effect/Blend$Mode;->SRC_IN:Lcom/sun/scenario/effect/Blend$Mode;

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/sg/prism/NGCanvas;->clip:Lcom/sun/javafx/sg/prism/NGCanvas$RenderBuf;

    const/4 v6, 0x0

    sget-object v7, Lcom/sun/prism/CompositeMode;->SRC:Lcom/sun/prism/CompositeMode;

    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/sg/prism/NGCanvas;->clip:Lcom/sun/javafx/sg/prism/NGCanvas$RenderBuf;

    invoke-direct/range {v2 .. v8}, Lcom/sun/javafx/sg/prism/NGCanvas;->blendAthruBintoC(Lcom/sun/javafx/sg/prism/NGCanvas$RenderBuf;Lcom/sun/scenario/effect/Blend$Mode;Lcom/sun/javafx/sg/prism/NGCanvas$RenderBuf;Lcom/sun/javafx/geom/RectBounds;Lcom/sun/prism/CompositeMode;Lcom/sun/javafx/sg/prism/NGCanvas$RenderBuf;)V

    .line 724
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/sg/prism/NGCanvas;->temp:Lcom/sun/javafx/sg/prism/NGCanvas$RenderBuf;

    iget-object v2, v2, Lcom/sun/javafx/sg/prism/NGCanvas$RenderBuf;->tex:Lcom/sun/prism/RTTexture;

    invoke-interface {v2}, Lcom/sun/prism/RTTexture;->unlock()V

    .line 725
    return-void
.end method

.method private renderStream(Lcom/sun/javafx/sg/prism/GrowableDataBuffer;)V
    .locals 36

    .prologue
    .line 807
    move-object/from16 v3, p0

    .local v3, "this":Lcom/sun/javafx/sg/prism/NGCanvas;
    move-object/from16 v4, p1

    .local v4, "buf":Lcom/sun/javafx/sg/prism/GrowableDataBuffer;
    :goto_0
    move-object/from16 v22, v4

    invoke-virtual/range {v22 .. v22}, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->hasValues()Z

    move-result v22

    if-eqz v22, :cond_13

    .line 808
    move-object/from16 v22, v4

    invoke-virtual/range {v22 .. v22}, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->getByte()B

    move-result v22

    move/from16 v5, v22

    .line 809
    .local v5, "token":I
    move/from16 v22, v5

    packed-switch v22, :pswitch_data_0

    .line 1157
    :pswitch_0
    new-instance v22, Ljava/lang/InternalError;

    move-object/from16 v35, v22

    move-object/from16 v22, v35

    move-object/from16 v23, v35

    new-instance v24, Ljava/lang/StringBuilder;

    move-object/from16 v35, v24

    move-object/from16 v24, v35

    move-object/from16 v25, v35

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Unrecognized PGCanvas token: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move/from16 v25, v5

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-direct/range {v23 .. v24}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v22

    .line 811
    :pswitch_1
    move-object/from16 v22, v3

    invoke-direct/range {v22 .. v22}, Lcom/sun/javafx/sg/prism/NGCanvas;->initAttributes()V

    .line 814
    move-object/from16 v22, v3

    move-object/from16 v23, v3

    move-object/from16 v0, v23

    iget v0, v0, Lcom/sun/javafx/sg/prism/NGCanvas;->tw:I

    move/from16 v23, v0

    move/from16 v0, v23

    move-object/from16 v1, v22

    iput v0, v1, Lcom/sun/javafx/sg/prism/NGCanvas;->cw:I

    .line 815
    move-object/from16 v22, v3

    move-object/from16 v23, v3

    move-object/from16 v0, v23

    iget v0, v0, Lcom/sun/javafx/sg/prism/NGCanvas;->th:I

    move/from16 v23, v0

    move/from16 v0, v23

    move-object/from16 v1, v22

    iput v0, v1, Lcom/sun/javafx/sg/prism/NGCanvas;->ch:I

    .line 816
    move-object/from16 v22, v3

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v25, v3

    move-object/from16 v0, v25

    iget v0, v0, Lcom/sun/javafx/sg/prism/NGCanvas;->tw:I

    move/from16 v25, v0

    move-object/from16 v26, v3

    move-object/from16 v0, v26

    iget v0, v0, Lcom/sun/javafx/sg/prism/NGCanvas;->th:I

    move/from16 v26, v0

    invoke-direct/range {v22 .. v26}, Lcom/sun/javafx/sg/prism/NGCanvas;->clearCanvas(IIII)V

    .line 817
    .line 1159
    :cond_0
    :goto_1
    goto :goto_0

    .line 819
    :pswitch_2
    move-object/from16 v22, v4

    invoke-virtual/range {v22 .. v22}, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->getFloat()F

    move-result v22

    move-object/from16 v23, v3

    move-object/from16 v0, v23

    iget v0, v0, Lcom/sun/javafx/sg/prism/NGCanvas;->highestPixelScale:F

    move/from16 v23, v0

    mul-float v22, v22, v23

    move/from16 v0, v22

    float-to-double v0, v0

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v22

    move-wide/from16 v0, v22

    double-to-int v0, v0

    move/from16 v22, v0

    move/from16 v6, v22

    .line 820
    .local v6, "neww":I
    move-object/from16 v22, v4

    invoke-virtual/range {v22 .. v22}, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->getFloat()F

    move-result v22

    move-object/from16 v23, v3

    move-object/from16 v0, v23

    iget v0, v0, Lcom/sun/javafx/sg/prism/NGCanvas;->highestPixelScale:F

    move/from16 v23, v0

    mul-float v22, v22, v23

    move/from16 v0, v22

    float-to-double v0, v0

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v22

    move-wide/from16 v0, v22

    double-to-int v0, v0

    move/from16 v22, v0

    move/from16 v7, v22

    .line 821
    .local v7, "newh":I
    move/from16 v22, v6

    move-object/from16 v23, v3

    move-object/from16 v0, v23

    iget v0, v0, Lcom/sun/javafx/sg/prism/NGCanvas;->cw:I

    move/from16 v23, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->min(II)I

    move-result v22

    move/from16 v8, v22

    .line 822
    .local v8, "clearx":I
    move/from16 v22, v7

    move-object/from16 v23, v3

    move-object/from16 v0, v23

    iget v0, v0, Lcom/sun/javafx/sg/prism/NGCanvas;->ch:I

    move/from16 v23, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->min(II)I

    move-result v22

    move/from16 v9, v22

    .line 823
    .local v9, "cleary":I
    move/from16 v22, v8

    move-object/from16 v23, v3

    move-object/from16 v0, v23

    iget v0, v0, Lcom/sun/javafx/sg/prism/NGCanvas;->tw:I

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_1

    .line 828
    move-object/from16 v22, v3

    move/from16 v23, v8

    const/16 v24, 0x0

    move-object/from16 v25, v3

    move-object/from16 v0, v25

    iget v0, v0, Lcom/sun/javafx/sg/prism/NGCanvas;->tw:I

    move/from16 v25, v0

    move/from16 v26, v8

    sub-int v25, v25, v26

    move-object/from16 v26, v3

    move-object/from16 v0, v26

    iget v0, v0, Lcom/sun/javafx/sg/prism/NGCanvas;->th:I

    move/from16 v26, v0

    invoke-direct/range {v22 .. v26}, Lcom/sun/javafx/sg/prism/NGCanvas;->clearCanvas(IIII)V

    .line 830
    :cond_1
    move/from16 v22, v9

    move-object/from16 v23, v3

    move-object/from16 v0, v23

    iget v0, v0, Lcom/sun/javafx/sg/prism/NGCanvas;->th:I

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_2

    .line 835
    move-object/from16 v22, v3

    const/16 v23, 0x0

    move/from16 v24, v9

    move-object/from16 v25, v3

    move-object/from16 v0, v25

    iget v0, v0, Lcom/sun/javafx/sg/prism/NGCanvas;->tw:I

    move/from16 v25, v0

    move-object/from16 v26, v3

    move-object/from16 v0, v26

    iget v0, v0, Lcom/sun/javafx/sg/prism/NGCanvas;->th:I

    move/from16 v26, v0

    move/from16 v27, v9

    sub-int v26, v26, v27

    invoke-direct/range {v22 .. v26}, Lcom/sun/javafx/sg/prism/NGCanvas;->clearCanvas(IIII)V

    .line 837
    :cond_2
    move-object/from16 v22, v3

    move/from16 v23, v6

    move/from16 v0, v23

    move-object/from16 v1, v22

    iput v0, v1, Lcom/sun/javafx/sg/prism/NGCanvas;->cw:I

    .line 838
    move-object/from16 v22, v3

    move/from16 v23, v7

    move/from16 v0, v23

    move-object/from16 v1, v22

    iput v0, v1, Lcom/sun/javafx/sg/prism/NGCanvas;->ch:I

    .line 839
    goto/16 :goto_1

    .line 841
    .end local v6    # "neww":I
    .end local v7    # "newh":I
    .end local v8    # "clearx":I
    .end local v9    # "cleary":I
    :pswitch_3
    move-object/from16 v22, v3

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/sun/javafx/sg/prism/NGCanvas;->path:Lcom/sun/javafx/geom/Path2D;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/sun/javafx/geom/Path2D;->reset()V

    .line 842
    goto/16 :goto_1

    .line 844
    :pswitch_4
    move-object/from16 v22, v3

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/sun/javafx/sg/prism/NGCanvas;->path:Lcom/sun/javafx/geom/Path2D;

    move-object/from16 v22, v0

    move-object/from16 v23, v4

    invoke-virtual/range {v23 .. v23}, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->getFloat()F

    move-result v23

    move-object/from16 v24, v4

    invoke-virtual/range {v24 .. v24}, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->getFloat()F

    move-result v24

    invoke-virtual/range {v22 .. v24}, Lcom/sun/javafx/geom/Path2D;->moveTo(FF)V

    .line 845
    goto/16 :goto_1

    .line 847
    :pswitch_5
    move-object/from16 v22, v3

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/sun/javafx/sg/prism/NGCanvas;->path:Lcom/sun/javafx/geom/Path2D;

    move-object/from16 v22, v0

    move-object/from16 v23, v4

    invoke-virtual/range {v23 .. v23}, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->getFloat()F

    move-result v23

    move-object/from16 v24, v4

    invoke-virtual/range {v24 .. v24}, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->getFloat()F

    move-result v24

    invoke-virtual/range {v22 .. v24}, Lcom/sun/javafx/geom/Path2D;->lineTo(FF)V

    .line 848
    goto/16 :goto_1

    .line 850
    :pswitch_6
    move-object/from16 v22, v3

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/sun/javafx/sg/prism/NGCanvas;->path:Lcom/sun/javafx/geom/Path2D;

    move-object/from16 v22, v0

    move-object/from16 v23, v4

    invoke-virtual/range {v23 .. v23}, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->getFloat()F

    move-result v23

    move-object/from16 v24, v4

    invoke-virtual/range {v24 .. v24}, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->getFloat()F

    move-result v24

    move-object/from16 v25, v4

    .line 851
    invoke-virtual/range {v25 .. v25}, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->getFloat()F

    move-result v25

    move-object/from16 v26, v4

    invoke-virtual/range {v26 .. v26}, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->getFloat()F

    move-result v26

    .line 850
    invoke-virtual/range {v22 .. v26}, Lcom/sun/javafx/geom/Path2D;->quadTo(FFFF)V

    .line 852
    goto/16 :goto_1

    .line 854
    :pswitch_7
    move-object/from16 v22, v3

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/sun/javafx/sg/prism/NGCanvas;->path:Lcom/sun/javafx/geom/Path2D;

    move-object/from16 v22, v0

    move-object/from16 v23, v4

    invoke-virtual/range {v23 .. v23}, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->getFloat()F

    move-result v23

    move-object/from16 v24, v4

    invoke-virtual/range {v24 .. v24}, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->getFloat()F

    move-result v24

    move-object/from16 v25, v4

    .line 855
    invoke-virtual/range {v25 .. v25}, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->getFloat()F

    move-result v25

    move-object/from16 v26, v4

    invoke-virtual/range {v26 .. v26}, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->getFloat()F

    move-result v26

    move-object/from16 v27, v4

    .line 856
    invoke-virtual/range {v27 .. v27}, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->getFloat()F

    move-result v27

    move-object/from16 v28, v4

    invoke-virtual/range {v28 .. v28}, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->getFloat()F

    move-result v28

    .line 854
    invoke-virtual/range {v22 .. v28}, Lcom/sun/javafx/geom/Path2D;->curveTo(FFFFFF)V

    .line 857
    goto/16 :goto_1

    .line 859
    :pswitch_8
    move-object/from16 v22, v3

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/sun/javafx/sg/prism/NGCanvas;->path:Lcom/sun/javafx/geom/Path2D;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/sun/javafx/geom/Path2D;->closePath()V

    .line 860
    goto/16 :goto_1

    .line 862
    :pswitch_9
    move-object/from16 v22, v3

    move-object/from16 v0, v22

    iget v0, v0, Lcom/sun/javafx/sg/prism/NGCanvas;->highestPixelScale:F

    move/from16 v22, v0

    const/high16 v23, 0x3f800000    # 1.0f

    cmpl-float v22, v22, v23

    if-eqz v22, :cond_0

    .line 863
    sget-object v22, Lcom/sun/javafx/sg/prism/NGCanvas;->TEMP_TX:Lcom/sun/javafx/geom/transform/Affine2D;

    move-object/from16 v23, v3

    move-object/from16 v0, v23

    iget v0, v0, Lcom/sun/javafx/sg/prism/NGCanvas;->highestPixelScale:F

    move/from16 v23, v0

    move/from16 v0, v23

    float-to-double v0, v0

    move-wide/from16 v23, v0

    move-object/from16 v25, v3

    move-object/from16 v0, v25

    iget v0, v0, Lcom/sun/javafx/sg/prism/NGCanvas;->highestPixelScale:F

    move/from16 v25, v0

    move/from16 v0, v25

    float-to-double v0, v0

    move-wide/from16 v25, v0

    invoke-virtual/range {v22 .. v26}, Lcom/sun/javafx/geom/transform/Affine2D;->setToScale(DD)V

    .line 864
    move-object/from16 v22, v3

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/sun/javafx/sg/prism/NGCanvas;->path:Lcom/sun/javafx/geom/Path2D;

    move-object/from16 v22, v0

    sget-object v23, Lcom/sun/javafx/sg/prism/NGCanvas;->TEMP_TX:Lcom/sun/javafx/geom/transform/Affine2D;

    invoke-virtual/range {v22 .. v23}, Lcom/sun/javafx/geom/Path2D;->transform(Lcom/sun/javafx/geom/transform/BaseTransform;)V

    goto/16 :goto_1

    .line 869
    :pswitch_a
    move-object/from16 v22, v4

    invoke-virtual/range {v22 .. v22}, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->getObject()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/sun/javafx/geom/Path2D;

    move-object/from16 v10, v22

    .line 870
    .local v10, "clippath":Lcom/sun/javafx/geom/Path2D;
    move-object/from16 v22, v3

    move-object/from16 v0, v22

    iget v0, v0, Lcom/sun/javafx/sg/prism/NGCanvas;->highestPixelScale:F

    move/from16 v22, v0

    const/high16 v23, 0x3f800000    # 1.0f

    cmpl-float v22, v22, v23

    if-eqz v22, :cond_3

    .line 871
    sget-object v22, Lcom/sun/javafx/sg/prism/NGCanvas;->TEMP_TX:Lcom/sun/javafx/geom/transform/Affine2D;

    move-object/from16 v23, v3

    move-object/from16 v0, v23

    iget v0, v0, Lcom/sun/javafx/sg/prism/NGCanvas;->highestPixelScale:F

    move/from16 v23, v0

    move/from16 v0, v23

    float-to-double v0, v0

    move-wide/from16 v23, v0

    move-object/from16 v25, v3

    move-object/from16 v0, v25

    iget v0, v0, Lcom/sun/javafx/sg/prism/NGCanvas;->highestPixelScale:F

    move/from16 v25, v0

    move/from16 v0, v25

    float-to-double v0, v0

    move-wide/from16 v25, v0

    invoke-virtual/range {v22 .. v26}, Lcom/sun/javafx/geom/transform/Affine2D;->setToScale(DD)V

    .line 872
    move-object/from16 v22, v10

    sget-object v23, Lcom/sun/javafx/sg/prism/NGCanvas;->TEMP_TX:Lcom/sun/javafx/geom/transform/Affine2D;

    invoke-virtual/range {v22 .. v23}, Lcom/sun/javafx/geom/Path2D;->transform(Lcom/sun/javafx/geom/transform/BaseTransform;)V

    .line 874
    :cond_3
    move-object/from16 v22, v3

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/sun/javafx/sg/prism/NGCanvas;->clipStack:Ljava/util/LinkedList;

    move-object/from16 v22, v0

    move-object/from16 v23, v10

    invoke-virtual/range {v22 .. v23}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 875
    goto/16 :goto_1

    .line 879
    .end local v10    # "clippath":Lcom/sun/javafx/geom/Path2D;
    :pswitch_b
    move-object/from16 v22, v3

    const/16 v23, 0x1

    invoke-direct/range {v22 .. v23}, Lcom/sun/javafx/sg/prism/NGCanvas;->resetClip(Z)V

    .line 880
    move-object/from16 v22, v3

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/sun/javafx/sg/prism/NGCanvas;->clipStack:Ljava/util/LinkedList;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object v22

    .line 881
    goto/16 :goto_1

    .line 884
    :pswitch_c
    move-object/from16 v22, v4

    invoke-virtual/range {v22 .. v22}, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->getByte()B

    move-result v22

    move/from16 v10, v22

    .line 885
    .local v10, "type":B
    move/from16 v22, v10

    packed-switch v22, :pswitch_data_1

    .line 890
    :goto_2
    goto/16 :goto_1

    .line 886
    :pswitch_d
    move-object/from16 v22, v3

    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, v22

    iput v0, v1, Lcom/sun/javafx/sg/prism/NGCanvas;->arctype:I

    goto :goto_2

    .line 887
    :pswitch_e
    move-object/from16 v22, v3

    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, v22

    iput v0, v1, Lcom/sun/javafx/sg/prism/NGCanvas;->arctype:I

    goto :goto_2

    .line 888
    :pswitch_f
    move-object/from16 v22, v3

    const/16 v23, 0x2

    move/from16 v0, v23

    move-object/from16 v1, v22

    iput v0, v1, Lcom/sun/javafx/sg/prism/NGCanvas;->arctype:I

    goto :goto_2

    .line 894
    .end local v10    # "type":B
    :pswitch_10
    move-object/from16 v22, v4

    invoke-virtual/range {v22 .. v22}, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->getInt()I

    move-result v22

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    move/from16 v10, v22

    .line 895
    .local v10, "dx1":F
    move-object/from16 v22, v4

    invoke-virtual/range {v22 .. v22}, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->getInt()I

    move-result v22

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    move/from16 v11, v22

    .line 896
    .local v11, "dy1":F
    move-object/from16 v22, v4

    invoke-virtual/range {v22 .. v22}, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->getInt()I

    move-result v22

    move/from16 v12, v22

    .line 897
    .local v12, "argb":I
    move-object/from16 v22, v3

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/sun/javafx/sg/prism/NGCanvas;->cv:Lcom/sun/javafx/sg/prism/NGCanvas$RenderBuf;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/sun/javafx/sg/prism/NGCanvas$RenderBuf;->g:Lcom/sun/prism/Graphics;

    move-object/from16 v22, v0

    move-object/from16 v13, v22

    .line 898
    .local v13, "gr":Lcom/sun/prism/Graphics;
    move-object/from16 v22, v13

    const/high16 v23, 0x3f800000    # 1.0f

    invoke-interface/range {v22 .. v23}, Lcom/sun/prism/Graphics;->setExtraAlpha(F)V

    .line 899
    move-object/from16 v22, v13

    sget-object v23, Lcom/sun/prism/CompositeMode;->SRC:Lcom/sun/prism/CompositeMode;

    invoke-interface/range {v22 .. v23}, Lcom/sun/prism/Graphics;->setCompositeMode(Lcom/sun/prism/CompositeMode;)V

    .line 900
    move-object/from16 v22, v13

    sget-object v23, Lcom/sun/javafx/geom/transform/BaseTransform;->IDENTITY_TRANSFORM:Lcom/sun/javafx/geom/transform/BaseTransform;

    invoke-interface/range {v22 .. v23}, Lcom/sun/prism/Graphics;->setTransform(Lcom/sun/javafx/geom/transform/BaseTransform;)V

    .line 901
    move/from16 v22, v10

    move-object/from16 v23, v3

    move-object/from16 v0, v23

    iget v0, v0, Lcom/sun/javafx/sg/prism/NGCanvas;->highestPixelScale:F

    move/from16 v23, v0

    mul-float v22, v22, v23

    move/from16 v10, v22

    .line 902
    move/from16 v22, v11

    move-object/from16 v23, v3

    move-object/from16 v0, v23

    iget v0, v0, Lcom/sun/javafx/sg/prism/NGCanvas;->highestPixelScale:F

    move/from16 v23, v0

    mul-float v22, v22, v23

    move/from16 v11, v22

    .line 903
    move/from16 v22, v12

    const/16 v23, 0x18

    ushr-int/lit8 v22, v22, 0x18

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    const/high16 v23, 0x437f0000    # 255.0f

    div-float v22, v22, v23

    move/from16 v14, v22

    .line 904
    .local v14, "a":F
    move/from16 v22, v12

    const/16 v23, 0x10

    shr-int/lit8 v22, v22, 0x10

    const/16 v23, 0xff

    move/from16 v0, v22

    and-int/lit16 v0, v0, 0xff

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    const/high16 v23, 0x437f0000    # 255.0f

    div-float v22, v22, v23

    move/from16 v15, v22

    .line 905
    .local v15, "r":F
    move/from16 v22, v12

    const/16 v23, 0x8

    shr-int/lit8 v22, v22, 0x8

    const/16 v23, 0xff

    move/from16 v0, v22

    and-int/lit16 v0, v0, 0xff

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    const/high16 v23, 0x437f0000    # 255.0f

    div-float v22, v22, v23

    move/from16 v16, v22

    .line 906
    .local v16, "g":F
    move/from16 v22, v12

    const/16 v23, 0xff

    move/from16 v0, v22

    and-int/lit16 v0, v0, 0xff

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    const/high16 v23, 0x437f0000    # 255.0f

    div-float v22, v22, v23

    move/from16 v17, v22

    .line 907
    .local v17, "b":F
    move-object/from16 v22, v13

    new-instance v23, Lcom/sun/prism/paint/Color;

    move-object/from16 v35, v23

    move-object/from16 v23, v35

    move-object/from16 v24, v35

    move/from16 v25, v15

    move/from16 v26, v16

    move/from16 v27, v17

    move/from16 v28, v14

    invoke-direct/range {v24 .. v28}, Lcom/sun/prism/paint/Color;-><init>(FFFF)V

    invoke-interface/range {v22 .. v23}, Lcom/sun/prism/Graphics;->setPaint(Lcom/sun/prism/paint/Paint;)V

    .line 912
    move-object/from16 v22, v13

    move/from16 v23, v10

    move/from16 v24, v11

    move/from16 v25, v10

    move-object/from16 v26, v3

    move-object/from16 v0, v26

    iget v0, v0, Lcom/sun/javafx/sg/prism/NGCanvas;->highestPixelScale:F

    move/from16 v26, v0

    add-float v25, v25, v26

    move/from16 v26, v11

    move-object/from16 v27, v3

    move-object/from16 v0, v27

    iget v0, v0, Lcom/sun/javafx/sg/prism/NGCanvas;->highestPixelScale:F

    move/from16 v27, v0

    add-float v26, v26, v27

    invoke-interface/range {v22 .. v26}, Lcom/sun/prism/Graphics;->fillQuad(FFFF)V

    .line 913
    move-object/from16 v22, v13

    sget-object v23, Lcom/sun/prism/CompositeMode;->SRC_OVER:Lcom/sun/prism/CompositeMode;

    invoke-interface/range {v22 .. v23}, Lcom/sun/prism/Graphics;->setCompositeMode(Lcom/sun/prism/CompositeMode;)V

    .line 914
    goto/16 :goto_1

    .line 918
    .end local v10    # "dx1":F
    .end local v11    # "dy1":F
    .end local v12    # "argb":I
    .end local v13    # "gr":Lcom/sun/prism/Graphics;
    .end local v14    # "a":F
    .end local v15    # "r":F
    .end local v16    # "g":F
    .end local v17    # "b":F
    :pswitch_11
    move-object/from16 v22, v4

    invoke-virtual/range {v22 .. v22}, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->getInt()I

    move-result v22

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    move/from16 v10, v22

    .line 919
    .restart local v10    # "dx1":F
    move-object/from16 v22, v4

    invoke-virtual/range {v22 .. v22}, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->getInt()I

    move-result v22

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    move/from16 v11, v22

    .line 920
    .restart local v11    # "dy1":F
    move-object/from16 v22, v4

    invoke-virtual/range {v22 .. v22}, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->getInt()I

    move-result v22

    move/from16 v12, v22

    .line 921
    .local v12, "w":I
    move-object/from16 v22, v4

    invoke-virtual/range {v22 .. v22}, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->getInt()I

    move-result v22

    move/from16 v13, v22

    .line 922
    .local v13, "h":I
    move-object/from16 v22, v4

    invoke-virtual/range {v22 .. v22}, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->getObject()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, [B

    check-cast v22, [B

    move-object/from16 v14, v22

    .line 923
    .local v14, "data":[B
    move-object/from16 v22, v14

    move/from16 v23, v12

    move/from16 v24, v13

    invoke-static/range {v22 .. v24}, Lcom/sun/prism/Image;->fromByteBgraPreData([BII)Lcom/sun/prism/Image;

    move-result-object v22

    move-object/from16 v15, v22

    .line 924
    .local v15, "img":Lcom/sun/prism/Image;
    move-object/from16 v22, v3

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/sun/javafx/sg/prism/NGCanvas;->cv:Lcom/sun/javafx/sg/prism/NGCanvas$RenderBuf;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/sun/javafx/sg/prism/NGCanvas$RenderBuf;->g:Lcom/sun/prism/Graphics;

    move-object/from16 v22, v0

    move-object/from16 v16, v22

    .line 925
    .local v16, "gr":Lcom/sun/prism/Graphics;
    move-object/from16 v22, v16

    invoke-interface/range {v22 .. v22}, Lcom/sun/prism/Graphics;->getResourceFactory()Lcom/sun/prism/ResourceFactory;

    move-result-object v22

    move-object/from16 v17, v22

    .line 926
    .local v17, "factory":Lcom/sun/prism/ResourceFactory;
    move-object/from16 v22, v17

    move-object/from16 v23, v15

    sget-object v24, Lcom/sun/prism/Texture$WrapMode;->CLAMP_TO_EDGE:Lcom/sun/prism/Texture$WrapMode;

    .line 927
    invoke-interface/range {v22 .. v24}, Lcom/sun/prism/ResourceFactory;->getCachedTexture(Lcom/sun/prism/Image;Lcom/sun/prism/Texture$WrapMode;)Lcom/sun/prism/Texture;

    move-result-object v22

    move-object/from16 v18, v22

    .line 928
    .local v18, "tex":Lcom/sun/prism/Texture;
    move-object/from16 v22, v16

    sget-object v23, Lcom/sun/javafx/geom/transform/BaseTransform;->IDENTITY_TRANSFORM:Lcom/sun/javafx/geom/transform/BaseTransform;

    invoke-interface/range {v22 .. v23}, Lcom/sun/prism/Graphics;->setTransform(Lcom/sun/javafx/geom/transform/BaseTransform;)V

    .line 929
    move-object/from16 v22, v16

    sget-object v23, Lcom/sun/prism/CompositeMode;->SRC:Lcom/sun/prism/CompositeMode;

    invoke-interface/range {v22 .. v23}, Lcom/sun/prism/Graphics;->setCompositeMode(Lcom/sun/prism/CompositeMode;)V

    .line 930
    move/from16 v22, v10

    move/from16 v23, v12

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    add-float v22, v22, v23

    move/from16 v19, v22

    .line 931
    .local v19, "dx2":F
    move/from16 v22, v11

    move/from16 v23, v13

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    add-float v22, v22, v23

    move/from16 v20, v22

    .line 932
    .local v20, "dy2":F
    move/from16 v22, v10

    move-object/from16 v23, v3

    move-object/from16 v0, v23

    iget v0, v0, Lcom/sun/javafx/sg/prism/NGCanvas;->highestPixelScale:F

    move/from16 v23, v0

    mul-float v22, v22, v23

    move/from16 v10, v22

    .line 933
    move/from16 v22, v11

    move-object/from16 v23, v3

    move-object/from16 v0, v23

    iget v0, v0, Lcom/sun/javafx/sg/prism/NGCanvas;->highestPixelScale:F

    move/from16 v23, v0

    mul-float v22, v22, v23

    move/from16 v11, v22

    .line 934
    move/from16 v22, v19

    move-object/from16 v23, v3

    move-object/from16 v0, v23

    iget v0, v0, Lcom/sun/javafx/sg/prism/NGCanvas;->highestPixelScale:F

    move/from16 v23, v0

    mul-float v22, v22, v23

    move/from16 v19, v22

    .line 935
    move/from16 v22, v20

    move-object/from16 v23, v3

    move-object/from16 v0, v23

    iget v0, v0, Lcom/sun/javafx/sg/prism/NGCanvas;->highestPixelScale:F

    move/from16 v23, v0

    mul-float v22, v22, v23

    move/from16 v20, v22

    .line 936
    move-object/from16 v22, v16

    move-object/from16 v23, v18

    move/from16 v24, v10

    move/from16 v25, v11

    move/from16 v26, v19

    move/from16 v27, v20

    const/16 v28, 0x0

    const/16 v29, 0x0

    move/from16 v30, v12

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    move/from16 v31, v13

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    invoke-interface/range {v22 .. v31}, Lcom/sun/prism/Graphics;->drawTexture(Lcom/sun/prism/Texture;FFFFFFFF)V

    .line 939
    move-object/from16 v22, v18

    invoke-interface/range {v22 .. v22}, Lcom/sun/prism/Texture;->contentsNotUseful()V

    .line 940
    move-object/from16 v22, v18

    invoke-interface/range {v22 .. v22}, Lcom/sun/prism/Texture;->unlock()V

    .line 941
    move-object/from16 v22, v16

    sget-object v23, Lcom/sun/prism/CompositeMode;->SRC_OVER:Lcom/sun/prism/CompositeMode;

    invoke-interface/range {v22 .. v23}, Lcom/sun/prism/Graphics;->setCompositeMode(Lcom/sun/prism/CompositeMode;)V

    .line 942
    goto/16 :goto_1

    .line 946
    .end local v10    # "dx1":F
    .end local v11    # "dy1":F
    .end local v12    # "w":I
    .end local v13    # "h":I
    .end local v14    # "data":[B
    .end local v15    # "img":Lcom/sun/prism/Image;
    .end local v16    # "gr":Lcom/sun/prism/Graphics;
    .end local v17    # "factory":Lcom/sun/prism/ResourceFactory;
    .end local v18    # "tex":Lcom/sun/prism/Texture;
    .end local v19    # "dx2":F
    .end local v20    # "dy2":F
    :pswitch_12
    move-object/from16 v22, v4

    invoke-virtual/range {v22 .. v22}, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->getDouble()D

    move-result-wide v22

    move-object/from16 v24, v3

    move-object/from16 v0, v24

    iget v0, v0, Lcom/sun/javafx/sg/prism/NGCanvas;->highestPixelScale:F

    move/from16 v24, v0

    move/from16 v0, v24

    float-to-double v0, v0

    move-wide/from16 v24, v0

    mul-double v22, v22, v24

    move-wide/from16 v10, v22

    .line 947
    .local v10, "mxx":D
    move-object/from16 v22, v4

    invoke-virtual/range {v22 .. v22}, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->getDouble()D

    move-result-wide v22

    move-object/from16 v24, v3

    move-object/from16 v0, v24

    iget v0, v0, Lcom/sun/javafx/sg/prism/NGCanvas;->highestPixelScale:F

    move/from16 v24, v0

    move/from16 v0, v24

    float-to-double v0, v0

    move-wide/from16 v24, v0

    mul-double v22, v22, v24

    move-wide/from16 v12, v22

    .line 948
    .local v12, "mxy":D
    move-object/from16 v22, v4

    invoke-virtual/range {v22 .. v22}, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->getDouble()D

    move-result-wide v22

    move-object/from16 v24, v3

    move-object/from16 v0, v24

    iget v0, v0, Lcom/sun/javafx/sg/prism/NGCanvas;->highestPixelScale:F

    move/from16 v24, v0

    move/from16 v0, v24

    float-to-double v0, v0

    move-wide/from16 v24, v0

    mul-double v22, v22, v24

    move-wide/from16 v14, v22

    .line 949
    .local v14, "mxt":D
    move-object/from16 v22, v4

    invoke-virtual/range {v22 .. v22}, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->getDouble()D

    move-result-wide v22

    move-object/from16 v24, v3

    move-object/from16 v0, v24

    iget v0, v0, Lcom/sun/javafx/sg/prism/NGCanvas;->highestPixelScale:F

    move/from16 v24, v0

    move/from16 v0, v24

    float-to-double v0, v0

    move-wide/from16 v24, v0

    mul-double v22, v22, v24

    move-wide/from16 v16, v22

    .line 950
    .local v16, "myx":D
    move-object/from16 v22, v4

    invoke-virtual/range {v22 .. v22}, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->getDouble()D

    move-result-wide v22

    move-object/from16 v24, v3

    move-object/from16 v0, v24

    iget v0, v0, Lcom/sun/javafx/sg/prism/NGCanvas;->highestPixelScale:F

    move/from16 v24, v0

    move/from16 v0, v24

    float-to-double v0, v0

    move-wide/from16 v24, v0

    mul-double v22, v22, v24

    move-wide/from16 v18, v22

    .line 951
    .local v18, "myy":D
    move-object/from16 v22, v4

    invoke-virtual/range {v22 .. v22}, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->getDouble()D

    move-result-wide v22

    move-object/from16 v24, v3

    move-object/from16 v0, v24

    iget v0, v0, Lcom/sun/javafx/sg/prism/NGCanvas;->highestPixelScale:F

    move/from16 v24, v0

    move/from16 v0, v24

    float-to-double v0, v0

    move-wide/from16 v24, v0

    mul-double v22, v22, v24

    move-wide/from16 v20, v22

    .line 952
    .local v20, "myt":D
    move-object/from16 v22, v3

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/sun/javafx/sg/prism/NGCanvas;->transform:Lcom/sun/javafx/geom/transform/Affine2D;

    move-object/from16 v22, v0

    move-wide/from16 v23, v10

    move-wide/from16 v25, v16

    move-wide/from16 v27, v12

    move-wide/from16 v29, v18

    move-wide/from16 v31, v14

    move-wide/from16 v33, v20

    invoke-virtual/range {v22 .. v34}, Lcom/sun/javafx/geom/transform/Affine2D;->setTransform(DDDDDD)V

    .line 953
    move-object/from16 v22, v3

    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, v22

    iput-boolean v0, v1, Lcom/sun/javafx/sg/prism/NGCanvas;->inversedirty:Z

    .line 954
    goto/16 :goto_1

    .line 957
    .end local v10    # "mxx":D
    .end local v12    # "mxy":D
    .end local v14    # "mxt":D
    .end local v16    # "myx":D
    .end local v18    # "myy":D
    .end local v20    # "myt":D
    :pswitch_13
    move-object/from16 v22, v3

    move-object/from16 v23, v4

    invoke-virtual/range {v23 .. v23}, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->getFloat()F

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, v22

    iput v0, v1, Lcom/sun/javafx/sg/prism/NGCanvas;->globalAlpha:F

    .line 958
    goto/16 :goto_1

    .line 960
    :pswitch_14
    move-object/from16 v22, v4

    invoke-virtual/range {v22 .. v22}, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->getByte()B

    move-result v22

    if-nez v22, :cond_4

    .line 961
    move-object/from16 v22, v3

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/sun/javafx/sg/prism/NGCanvas;->path:Lcom/sun/javafx/geom/Path2D;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    invoke-virtual/range {v22 .. v23}, Lcom/sun/javafx/geom/Path2D;->setWindingRule(I)V

    goto/16 :goto_1

    .line 963
    :cond_4
    move-object/from16 v22, v3

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/sun/javafx/sg/prism/NGCanvas;->path:Lcom/sun/javafx/geom/Path2D;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Lcom/sun/javafx/geom/Path2D;->setWindingRule(I)V

    .line 965
    goto/16 :goto_1

    .line 967
    :pswitch_15
    move-object/from16 v22, v3

    move-object/from16 v23, v4

    invoke-virtual/range {v23 .. v23}, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->getObject()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/sun/scenario/effect/Blend$Mode;

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/sun/javafx/sg/prism/NGCanvas;->blendmode:Lcom/sun/scenario/effect/Blend$Mode;

    .line 968
    goto/16 :goto_1

    .line 970
    :pswitch_16
    move-object/from16 v22, v3

    move-object/from16 v23, v4

    invoke-virtual/range {v23 .. v23}, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->getObject()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/sun/prism/paint/Paint;

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/sun/javafx/sg/prism/NGCanvas;->fillPaint:Lcom/sun/prism/paint/Paint;

    .line 971
    goto/16 :goto_1

    .line 973
    :pswitch_17
    move-object/from16 v22, v3

    move-object/from16 v23, v4

    invoke-virtual/range {v23 .. v23}, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->getObject()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/sun/prism/paint/Paint;

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/sun/javafx/sg/prism/NGCanvas;->strokePaint:Lcom/sun/prism/paint/Paint;

    .line 974
    goto/16 :goto_1

    .line 976
    :pswitch_18
    move-object/from16 v22, v3

    move-object/from16 v23, v4

    invoke-virtual/range {v23 .. v23}, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->getFloat()F

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, v22

    iput v0, v1, Lcom/sun/javafx/sg/prism/NGCanvas;->linewidth:F

    .line 977
    move-object/from16 v22, v3

    const/16 v23, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/sun/javafx/sg/prism/NGCanvas;->stroke:Lcom/sun/prism/BasicStroke;

    .line 978
    goto/16 :goto_1

    .line 980
    :pswitch_19
    move-object/from16 v22, v3

    sget-object v23, Lcom/sun/javafx/sg/prism/NGCanvas;->prcaps:[I

    move-object/from16 v24, v4

    invoke-virtual/range {v24 .. v24}, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->getUByte()I

    move-result v24

    aget v23, v23, v24

    move/from16 v0, v23

    move-object/from16 v1, v22

    iput v0, v1, Lcom/sun/javafx/sg/prism/NGCanvas;->linecap:I

    .line 981
    move-object/from16 v22, v3

    const/16 v23, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/sun/javafx/sg/prism/NGCanvas;->stroke:Lcom/sun/prism/BasicStroke;

    .line 982
    goto/16 :goto_1

    .line 984
    :pswitch_1a
    move-object/from16 v22, v3

    sget-object v23, Lcom/sun/javafx/sg/prism/NGCanvas;->prjoins:[I

    move-object/from16 v24, v4

    invoke-virtual/range {v24 .. v24}, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->getUByte()I

    move-result v24

    aget v23, v23, v24

    move/from16 v0, v23

    move-object/from16 v1, v22

    iput v0, v1, Lcom/sun/javafx/sg/prism/NGCanvas;->linejoin:I

    .line 985
    move-object/from16 v22, v3

    const/16 v23, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/sun/javafx/sg/prism/NGCanvas;->stroke:Lcom/sun/prism/BasicStroke;

    .line 986
    goto/16 :goto_1

    .line 988
    :pswitch_1b
    move-object/from16 v22, v3

    move-object/from16 v23, v4

    invoke-virtual/range {v23 .. v23}, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->getFloat()F

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, v22

    iput v0, v1, Lcom/sun/javafx/sg/prism/NGCanvas;->miterlimit:F

    .line 989
    move-object/from16 v22, v3

    const/16 v23, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/sun/javafx/sg/prism/NGCanvas;->stroke:Lcom/sun/prism/BasicStroke;

    .line 990
    goto/16 :goto_1

    .line 992
    :pswitch_1c
    move-object/from16 v22, v3

    move-object/from16 v23, v4

    invoke-virtual/range {v23 .. v23}, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->getObject()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, [D

    check-cast v23, [D

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/sun/javafx/sg/prism/NGCanvas;->dashes:[D

    .line 993
    move-object/from16 v22, v3

    const/16 v23, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/sun/javafx/sg/prism/NGCanvas;->stroke:Lcom/sun/prism/BasicStroke;

    .line 994
    goto/16 :goto_1

    .line 996
    :pswitch_1d
    move-object/from16 v22, v3

    move-object/from16 v23, v4

    invoke-virtual/range {v23 .. v23}, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->getFloat()F

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, v22

    iput v0, v1, Lcom/sun/javafx/sg/prism/NGCanvas;->dashOffset:F

    .line 997
    move-object/from16 v22, v3

    const/16 v23, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/sun/javafx/sg/prism/NGCanvas;->stroke:Lcom/sun/prism/BasicStroke;

    .line 998
    goto/16 :goto_1

    .line 1000
    :pswitch_1e
    move-object/from16 v22, v3

    move-object/from16 v23, v4

    invoke-virtual/range {v23 .. v23}, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->getObject()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/sun/javafx/font/PGFont;

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/sun/javafx/sg/prism/NGCanvas;->pgfont:Lcom/sun/javafx/font/PGFont;

    .line 1001
    goto/16 :goto_1

    .line 1003
    :pswitch_1f
    move-object/from16 v22, v3

    move-object/from16 v23, v4

    invoke-virtual/range {v23 .. v23}, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->getUByte()I

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, v22

    iput v0, v1, Lcom/sun/javafx/sg/prism/NGCanvas;->smoothing:I

    .line 1004
    goto/16 :goto_1

    .line 1006
    :pswitch_20
    move-object/from16 v22, v3

    move-object/from16 v23, v4

    invoke-virtual/range {v23 .. v23}, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->getUByte()I

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, v22

    iput v0, v1, Lcom/sun/javafx/sg/prism/NGCanvas;->align:I

    .line 1007
    goto/16 :goto_1

    .line 1009
    :pswitch_21
    move-object/from16 v22, v3

    sget-object v23, Lcom/sun/javafx/sg/prism/NGCanvas;->prbases:[I

    move-object/from16 v24, v4

    invoke-virtual/range {v24 .. v24}, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->getUByte()I

    move-result v24

    aget v23, v23, v24

    move/from16 v0, v23

    move-object/from16 v1, v22

    iput v0, v1, Lcom/sun/javafx/sg/prism/NGCanvas;->baseline:I

    .line 1010
    goto/16 :goto_1

    .line 1013
    :pswitch_22
    move-object/from16 v22, v4

    invoke-virtual/range {v22 .. v22}, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->getObject()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/sun/scenario/effect/Effect;

    move-object/from16 v10, v22

    .line 1014
    .local v10, "e":Lcom/sun/scenario/effect/Effect;
    move-object/from16 v22, v3

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/sun/javafx/sg/prism/NGCanvas;->clipStack:Ljava/util/LinkedList;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v22

    if-eqz v22, :cond_5

    move-object/from16 v22, v3

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/sun/javafx/sg/prism/NGCanvas;->cv:Lcom/sun/javafx/sg/prism/NGCanvas$RenderBuf;

    move-object/from16 v22, v0

    :goto_3
    move-object/from16 v11, v22

    .line 1016
    .local v11, "dest":Lcom/sun/javafx/sg/prism/NGCanvas$RenderBuf;
    move-object/from16 v22, v3

    move-object/from16 v0, v22

    iget v0, v0, Lcom/sun/javafx/sg/prism/NGCanvas;->highestPixelScale:F

    move/from16 v22, v0

    const/high16 v23, 0x3f800000    # 1.0f

    cmpl-float v22, v22, v23

    if-eqz v22, :cond_6

    .line 1017
    sget-object v22, Lcom/sun/javafx/sg/prism/NGCanvas;->TEMP_TX:Lcom/sun/javafx/geom/transform/Affine2D;

    move-object/from16 v23, v3

    move-object/from16 v0, v23

    iget v0, v0, Lcom/sun/javafx/sg/prism/NGCanvas;->highestPixelScale:F

    move/from16 v23, v0

    move/from16 v0, v23

    float-to-double v0, v0

    move-wide/from16 v23, v0

    move-object/from16 v25, v3

    move-object/from16 v0, v25

    iget v0, v0, Lcom/sun/javafx/sg/prism/NGCanvas;->highestPixelScale:F

    move/from16 v25, v0

    move/from16 v0, v25

    float-to-double v0, v0

    move-wide/from16 v25, v0

    invoke-virtual/range {v22 .. v26}, Lcom/sun/javafx/geom/transform/Affine2D;->setToScale(DD)V

    .line 1018
    sget-object v22, Lcom/sun/javafx/sg/prism/NGCanvas;->TEMP_TX:Lcom/sun/javafx/geom/transform/Affine2D;

    move-object/from16 v12, v22

    .line 1019
    .local v12, "tx":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object/from16 v22, v3

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/sun/javafx/sg/prism/NGCanvas;->cv:Lcom/sun/javafx/sg/prism/NGCanvas$RenderBuf;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/sun/javafx/sg/prism/NGCanvas$RenderBuf;->input:Lcom/sun/javafx/sg/prism/NGCanvas$EffectInput;

    move-object/from16 v22, v0

    move-object/from16 v23, v3

    move-object/from16 v0, v23

    iget v0, v0, Lcom/sun/javafx/sg/prism/NGCanvas;->highestPixelScale:F

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Lcom/sun/javafx/sg/prism/NGCanvas$EffectInput;->setPixelScale(F)V

    .line 1023
    :goto_4
    move-object/from16 v22, v3

    move-object/from16 v23, v3

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/sun/javafx/sg/prism/NGCanvas;->cv:Lcom/sun/javafx/sg/prism/NGCanvas$RenderBuf;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/sun/javafx/sg/prism/NGCanvas$RenderBuf;->input:Lcom/sun/javafx/sg/prism/NGCanvas$EffectInput;

    move-object/from16 v23, v0

    move-object/from16 v24, v10

    move-object/from16 v25, v12

    const/16 v26, 0x0

    sget-object v27, Lcom/sun/prism/CompositeMode;->SRC:Lcom/sun/prism/CompositeMode;

    move-object/from16 v28, v11

    invoke-direct/range {v22 .. v28}, Lcom/sun/javafx/sg/prism/NGCanvas;->applyEffectOnAintoC(Lcom/sun/scenario/effect/Effect;Lcom/sun/scenario/effect/Effect;Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/javafx/geom/Rectangle;Lcom/sun/prism/CompositeMode;Lcom/sun/javafx/sg/prism/NGCanvas$RenderBuf;)Lcom/sun/javafx/geom/Rectangle;

    move-result-object v22

    .line 1026
    move-object/from16 v22, v3

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/sun/javafx/sg/prism/NGCanvas;->cv:Lcom/sun/javafx/sg/prism/NGCanvas$RenderBuf;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/sun/javafx/sg/prism/NGCanvas$RenderBuf;->input:Lcom/sun/javafx/sg/prism/NGCanvas$EffectInput;

    move-object/from16 v22, v0

    const/high16 v23, 0x3f800000    # 1.0f

    invoke-virtual/range {v22 .. v23}, Lcom/sun/javafx/sg/prism/NGCanvas$EffectInput;->setPixelScale(F)V

    .line 1027
    move-object/from16 v22, v11

    move-object/from16 v23, v3

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/sun/javafx/sg/prism/NGCanvas;->cv:Lcom/sun/javafx/sg/prism/NGCanvas$RenderBuf;

    move-object/from16 v23, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    if-eq v0, v1, :cond_0

    .line 1028
    move-object/from16 v22, v3

    move-object/from16 v23, v11

    sget-object v24, Lcom/sun/scenario/effect/Blend$Mode;->SRC_IN:Lcom/sun/scenario/effect/Blend$Mode;

    move-object/from16 v25, v3

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/sun/javafx/sg/prism/NGCanvas;->clip:Lcom/sun/javafx/sg/prism/NGCanvas$RenderBuf;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    sget-object v27, Lcom/sun/prism/CompositeMode;->SRC:Lcom/sun/prism/CompositeMode;

    move-object/from16 v28, v3

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/sun/javafx/sg/prism/NGCanvas;->cv:Lcom/sun/javafx/sg/prism/NGCanvas$RenderBuf;

    move-object/from16 v28, v0

    invoke-direct/range {v22 .. v28}, Lcom/sun/javafx/sg/prism/NGCanvas;->blendAthruBintoC(Lcom/sun/javafx/sg/prism/NGCanvas$RenderBuf;Lcom/sun/scenario/effect/Blend$Mode;Lcom/sun/javafx/sg/prism/NGCanvas$RenderBuf;Lcom/sun/javafx/geom/RectBounds;Lcom/sun/prism/CompositeMode;Lcom/sun/javafx/sg/prism/NGCanvas$RenderBuf;)V

    goto/16 :goto_1

    .line 1014
    .end local v11    # "dest":Lcom/sun/javafx/sg/prism/NGCanvas$RenderBuf;
    .end local v12    # "tx":Lcom/sun/javafx/geom/transform/BaseTransform;
    :cond_5
    move-object/from16 v22, v3

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/sun/javafx/sg/prism/NGCanvas;->temp:Lcom/sun/javafx/sg/prism/NGCanvas$RenderBuf;

    move-object/from16 v22, v0

    goto/16 :goto_3

    .line 1021
    .restart local v11    # "dest":Lcom/sun/javafx/sg/prism/NGCanvas$RenderBuf;
    :cond_6
    sget-object v22, Lcom/sun/javafx/geom/transform/BaseTransform;->IDENTITY_TRANSFORM:Lcom/sun/javafx/geom/transform/BaseTransform;

    move-object/from16 v12, v22

    .restart local v12    # "tx":Lcom/sun/javafx/geom/transform/BaseTransform;
    goto :goto_4

    .line 1034
    .end local v10    # "e":Lcom/sun/scenario/effect/Effect;
    .end local v11    # "dest":Lcom/sun/javafx/sg/prism/NGCanvas$RenderBuf;
    .end local v12    # "tx":Lcom/sun/javafx/geom/transform/BaseTransform;
    :pswitch_23
    move-object/from16 v22, v3

    move-object/from16 v23, v4

    invoke-virtual/range {v23 .. v23}, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->getObject()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/sun/scenario/effect/Effect;

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/sun/javafx/sg/prism/NGCanvas;->effect:Lcom/sun/scenario/effect/Effect;

    .line 1035
    goto/16 :goto_1

    .line 1055
    :pswitch_24
    move-object/from16 v22, v3

    invoke-direct/range {v22 .. v22}, Lcom/sun/javafx/sg/prism/NGCanvas;->initClip()Z

    move-result v22

    move/from16 v12, v22

    .line 1056
    .local v12, "clipvalidated":Z
    move/from16 v22, v12

    if-eqz v22, :cond_d

    .line 1057
    move-object/from16 v22, v3

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/sun/javafx/sg/prism/NGCanvas;->temp:Lcom/sun/javafx/sg/prism/NGCanvas$RenderBuf;

    move-object/from16 v22, v0

    move-object/from16 v23, v3

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/sun/javafx/sg/prism/NGCanvas;->cv:Lcom/sun/javafx/sg/prism/NGCanvas$RenderBuf;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/sun/javafx/sg/prism/NGCanvas$RenderBuf;->g:Lcom/sun/prism/Graphics;

    move-object/from16 v23, v0

    move-object/from16 v24, v3

    move-object/from16 v0, v24

    iget v0, v0, Lcom/sun/javafx/sg/prism/NGCanvas;->tw:I

    move/from16 v24, v0

    move-object/from16 v25, v3

    move-object/from16 v0, v25

    iget v0, v0, Lcom/sun/javafx/sg/prism/NGCanvas;->th:I

    move/from16 v25, v0

    invoke-virtual/range {v22 .. v25}, Lcom/sun/javafx/sg/prism/NGCanvas$RenderBuf;->validate(Lcom/sun/prism/Graphics;II)Z

    move-result v22

    .line 1058
    const/16 v22, 0x1

    move/from16 v11, v22

    .line 1059
    .local v11, "tempvalidated":Z
    move-object/from16 v22, v3

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/sun/javafx/sg/prism/NGCanvas;->temp:Lcom/sun/javafx/sg/prism/NGCanvas$RenderBuf;

    move-object/from16 v22, v0

    move-object/from16 v10, v22

    .line 1068
    .local v10, "dest":Lcom/sun/javafx/sg/prism/NGCanvas$RenderBuf;
    :goto_5
    move-object/from16 v22, v3

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/sun/javafx/sg/prism/NGCanvas;->effect:Lcom/sun/scenario/effect/Effect;

    move-object/from16 v22, v0

    if-eqz v22, :cond_f

    .line 1069
    move-object/from16 v22, v4

    invoke-virtual/range {v22 .. v22}, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->save()V

    .line 1070
    move-object/from16 v22, v3

    move/from16 v23, v5

    move-object/from16 v24, v4

    const/16 v25, 0x0

    sget-object v26, Lcom/sun/javafx/sg/prism/NGCanvas;->TEMP_RECTBOUNDS:Lcom/sun/javafx/geom/RectBounds;

    invoke-virtual/range {v22 .. v26}, Lcom/sun/javafx/sg/prism/NGCanvas;->handleRenderOp(ILcom/sun/javafx/sg/prism/GrowableDataBuffer;Lcom/sun/prism/Graphics;Lcom/sun/javafx/geom/RectBounds;)V

    .line 1071
    new-instance v22, Lcom/sun/javafx/sg/prism/NGCanvas$RenderInput;

    move-object/from16 v35, v22

    move-object/from16 v22, v35

    move-object/from16 v23, v35

    move-object/from16 v24, v3

    move/from16 v25, v5

    move-object/from16 v26, v4

    move-object/from16 v27, v3

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/sun/javafx/sg/prism/NGCanvas;->transform:Lcom/sun/javafx/geom/transform/Affine2D;

    move-object/from16 v27, v0

    sget-object v28, Lcom/sun/javafx/sg/prism/NGCanvas;->TEMP_RECTBOUNDS:Lcom/sun/javafx/geom/RectBounds;

    invoke-direct/range {v23 .. v28}, Lcom/sun/javafx/sg/prism/NGCanvas$RenderInput;-><init>(Lcom/sun/javafx/sg/prism/NGCanvas;ILcom/sun/javafx/sg/prism/GrowableDataBuffer;Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/javafx/geom/RectBounds;)V

    move-object/from16 v13, v22

    .line 1079
    .local v13, "ri":Lcom/sun/javafx/sg/prism/NGCanvas$RenderInput;
    move-object/from16 v22, v3

    move-object/from16 v23, v13

    move-object/from16 v24, v3

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/sun/javafx/sg/prism/NGCanvas;->effect:Lcom/sun/scenario/effect/Effect;

    move-object/from16 v24, v0

    move-object/from16 v25, v3

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/sun/javafx/sg/prism/NGCanvas;->transform:Lcom/sun/javafx/geom/transform/Affine2D;

    move-object/from16 v25, v0

    move-object/from16 v26, v3

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/sun/javafx/sg/prism/NGCanvas;->clipRect:Lcom/sun/javafx/geom/Rectangle;

    move-object/from16 v26, v0

    sget-object v27, Lcom/sun/prism/CompositeMode;->SRC_OVER:Lcom/sun/prism/CompositeMode;

    move-object/from16 v28, v10

    .line 1080
    invoke-direct/range {v22 .. v28}, Lcom/sun/javafx/sg/prism/NGCanvas;->applyEffectOnAintoC(Lcom/sun/scenario/effect/Effect;Lcom/sun/scenario/effect/Effect;Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/javafx/geom/Rectangle;Lcom/sun/prism/CompositeMode;Lcom/sun/javafx/sg/prism/NGCanvas$RenderBuf;)Lcom/sun/javafx/geom/Rectangle;

    move-result-object v22

    move-object/from16 v14, v22

    .line 1083
    .local v14, "resultBounds":Lcom/sun/javafx/geom/Rectangle;
    move-object/from16 v22, v10

    move-object/from16 v23, v3

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/sun/javafx/sg/prism/NGCanvas;->cv:Lcom/sun/javafx/sg/prism/NGCanvas$RenderBuf;

    move-object/from16 v23, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    if-eq v0, v1, :cond_7

    .line 1084
    sget-object v22, Lcom/sun/javafx/sg/prism/NGCanvas;->TEMP_RECTBOUNDS:Lcom/sun/javafx/geom/RectBounds;

    move-object/from16 v23, v14

    move-object/from16 v0, v23

    iget v0, v0, Lcom/sun/javafx/geom/Rectangle;->x:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    move-object/from16 v24, v14

    move-object/from16 v0, v24

    iget v0, v0, Lcom/sun/javafx/geom/Rectangle;->y:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    move-object/from16 v25, v14

    move-object/from16 v0, v25

    iget v0, v0, Lcom/sun/javafx/geom/Rectangle;->x:I

    move/from16 v25, v0

    move-object/from16 v26, v14

    move-object/from16 v0, v26

    iget v0, v0, Lcom/sun/javafx/geom/Rectangle;->width:I

    move/from16 v26, v0

    add-int v25, v25, v26

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    move-object/from16 v26, v14

    move-object/from16 v0, v26

    iget v0, v0, Lcom/sun/javafx/geom/Rectangle;->y:I

    move/from16 v26, v0

    move-object/from16 v27, v14

    move-object/from16 v0, v27

    iget v0, v0, Lcom/sun/javafx/geom/Rectangle;->height:I

    move/from16 v27, v0

    add-int v26, v26, v27

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    invoke-virtual/range {v22 .. v26}, Lcom/sun/javafx/geom/RectBounds;->setBounds(FFFF)V

    .line 1088
    .line 1100
    .end local v13    # "ri":Lcom/sun/javafx/sg/prism/NGCanvas$RenderInput;
    .end local v14    # "resultBounds":Lcom/sun/javafx/geom/Rectangle;
    :cond_7
    :goto_6
    move/from16 v22, v12

    if-eqz v22, :cond_9

    .line 1102
    move-object/from16 v22, v3

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/sun/javafx/sg/prism/NGCanvas;->blendmode:Lcom/sun/scenario/effect/Blend$Mode;

    move-object/from16 v22, v0

    sget-object v23, Lcom/sun/scenario/effect/Blend$Mode;->SRC_OVER:Lcom/sun/scenario/effect/Blend$Mode;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_11

    .line 1106
    move-object/from16 v22, v3

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/sun/javafx/sg/prism/NGCanvas;->cv:Lcom/sun/javafx/sg/prism/NGCanvas$RenderBuf;

    move-object/from16 v22, v0

    move-object/from16 v10, v22

    .line 1107
    sget-object v22, Lcom/sun/prism/CompositeMode;->SRC_OVER:Lcom/sun/prism/CompositeMode;

    move-object/from16 v13, v22

    .line 1118
    .local v13, "compmode":Lcom/sun/prism/CompositeMode;
    :goto_7
    move-object/from16 v22, v3

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/sun/javafx/sg/prism/NGCanvas;->clipRect:Lcom/sun/javafx/geom/Rectangle;

    move-object/from16 v22, v0

    if-eqz v22, :cond_8

    .line 1119
    sget-object v22, Lcom/sun/javafx/sg/prism/NGCanvas;->TEMP_RECTBOUNDS:Lcom/sun/javafx/geom/RectBounds;

    move-object/from16 v23, v3

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/sun/javafx/sg/prism/NGCanvas;->clipRect:Lcom/sun/javafx/geom/Rectangle;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Lcom/sun/javafx/geom/RectBounds;->intersectWith(Lcom/sun/javafx/geom/Rectangle;)V

    .line 1121
    :cond_8
    sget-object v22, Lcom/sun/javafx/sg/prism/NGCanvas;->TEMP_RECTBOUNDS:Lcom/sun/javafx/geom/RectBounds;

    invoke-virtual/range {v22 .. v22}, Lcom/sun/javafx/geom/RectBounds;->isEmpty()Z

    move-result v22

    if-nez v22, :cond_9

    .line 1122
    move-object/from16 v22, v10

    move-object/from16 v23, v3

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/sun/javafx/sg/prism/NGCanvas;->cv:Lcom/sun/javafx/sg/prism/NGCanvas$RenderBuf;

    move-object/from16 v23, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_12

    move-object/from16 v22, v3

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/sun/javafx/sg/prism/NGCanvas;->cv:Lcom/sun/javafx/sg/prism/NGCanvas$RenderBuf;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/sun/javafx/sg/prism/NGCanvas$RenderBuf;->g:Lcom/sun/prism/Graphics;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    instance-of v0, v0, Lcom/sun/prism/MaskTextureGraphics;

    move/from16 v22, v0

    if-eqz v22, :cond_12

    .line 1123
    move-object/from16 v22, v3

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/sun/javafx/sg/prism/NGCanvas;->cv:Lcom/sun/javafx/sg/prism/NGCanvas$RenderBuf;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/sun/javafx/sg/prism/NGCanvas$RenderBuf;->g:Lcom/sun/prism/Graphics;

    move-object/from16 v22, v0

    check-cast v22, Lcom/sun/prism/MaskTextureGraphics;

    move-object/from16 v14, v22

    .line 1124
    .local v14, "mtg":Lcom/sun/prism/MaskTextureGraphics;
    sget-object v22, Lcom/sun/javafx/sg/prism/NGCanvas;->TEMP_RECTBOUNDS:Lcom/sun/javafx/geom/RectBounds;

    invoke-virtual/range {v22 .. v22}, Lcom/sun/javafx/geom/RectBounds;->getMinX()F

    move-result v22

    move/from16 v0, v22

    float-to-double v0, v0

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->floor(D)D

    move-result-wide v22

    move-wide/from16 v0, v22

    double-to-int v0, v0

    move/from16 v22, v0

    move/from16 v15, v22

    .line 1125
    .local v15, "dx":I
    sget-object v22, Lcom/sun/javafx/sg/prism/NGCanvas;->TEMP_RECTBOUNDS:Lcom/sun/javafx/geom/RectBounds;

    invoke-virtual/range {v22 .. v22}, Lcom/sun/javafx/geom/RectBounds;->getMinY()F

    move-result v22

    move/from16 v0, v22

    float-to-double v0, v0

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->floor(D)D

    move-result-wide v22

    move-wide/from16 v0, v22

    double-to-int v0, v0

    move/from16 v22, v0

    move/from16 v16, v22

    .line 1126
    .local v16, "dy":I
    sget-object v22, Lcom/sun/javafx/sg/prism/NGCanvas;->TEMP_RECTBOUNDS:Lcom/sun/javafx/geom/RectBounds;

    invoke-virtual/range {v22 .. v22}, Lcom/sun/javafx/geom/RectBounds;->getMaxX()F

    move-result v22

    move/from16 v0, v22

    float-to-double v0, v0

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v22

    move-wide/from16 v0, v22

    double-to-int v0, v0

    move/from16 v22, v0

    move/from16 v23, v15

    sub-int v22, v22, v23

    move/from16 v17, v22

    .line 1127
    .local v17, "dw":I
    sget-object v22, Lcom/sun/javafx/sg/prism/NGCanvas;->TEMP_RECTBOUNDS:Lcom/sun/javafx/geom/RectBounds;

    invoke-virtual/range {v22 .. v22}, Lcom/sun/javafx/geom/RectBounds;->getMaxY()F

    move-result v22

    move/from16 v0, v22

    float-to-double v0, v0

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v22

    move-wide/from16 v0, v22

    double-to-int v0, v0

    move/from16 v22, v0

    move/from16 v23, v16

    sub-int v22, v22, v23

    move/from16 v18, v22

    .line 1128
    .local v18, "dh":I
    move-object/from16 v22, v14

    move-object/from16 v23, v3

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/sun/javafx/sg/prism/NGCanvas;->temp:Lcom/sun/javafx/sg/prism/NGCanvas$RenderBuf;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/sun/javafx/sg/prism/NGCanvas$RenderBuf;->tex:Lcom/sun/prism/RTTexture;

    move-object/from16 v23, v0

    move-object/from16 v24, v3

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/sun/javafx/sg/prism/NGCanvas;->clip:Lcom/sun/javafx/sg/prism/NGCanvas$RenderBuf;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/sun/javafx/sg/prism/NGCanvas$RenderBuf;->tex:Lcom/sun/prism/RTTexture;

    move-object/from16 v24, v0

    move/from16 v25, v15

    move/from16 v26, v16

    move/from16 v27, v17

    move/from16 v28, v18

    move/from16 v29, v15

    move/from16 v30, v16

    move/from16 v31, v15

    move/from16 v32, v16

    invoke-interface/range {v22 .. v32}, Lcom/sun/prism/MaskTextureGraphics;->drawPixelsMasked(Lcom/sun/prism/RTTexture;Lcom/sun/prism/RTTexture;IIIIIIII)V

    .line 1131
    .line 1137
    .end local v13    # "compmode":Lcom/sun/prism/CompositeMode;
    .end local v14    # "mtg":Lcom/sun/prism/MaskTextureGraphics;
    .end local v15    # "dx":I
    .end local v16    # "dy":I
    .end local v17    # "dw":I
    .end local v18    # "dh":I
    :cond_9
    :goto_8
    move-object/from16 v22, v3

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/sun/javafx/sg/prism/NGCanvas;->blendmode:Lcom/sun/scenario/effect/Blend$Mode;

    move-object/from16 v22, v0

    sget-object v23, Lcom/sun/scenario/effect/Blend$Mode;->SRC_OVER:Lcom/sun/scenario/effect/Blend$Mode;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    if-eq v0, v1, :cond_b

    .line 1142
    move-object/from16 v22, v3

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/sun/javafx/sg/prism/NGCanvas;->clipRect:Lcom/sun/javafx/geom/Rectangle;

    move-object/from16 v22, v0

    if-eqz v22, :cond_a

    .line 1143
    sget-object v22, Lcom/sun/javafx/sg/prism/NGCanvas;->TEMP_RECTBOUNDS:Lcom/sun/javafx/geom/RectBounds;

    move-object/from16 v23, v3

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/sun/javafx/sg/prism/NGCanvas;->clipRect:Lcom/sun/javafx/geom/Rectangle;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Lcom/sun/javafx/geom/RectBounds;->intersectWith(Lcom/sun/javafx/geom/Rectangle;)V

    .line 1145
    :cond_a
    move-object/from16 v22, v3

    move-object/from16 v23, v3

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/sun/javafx/sg/prism/NGCanvas;->temp:Lcom/sun/javafx/sg/prism/NGCanvas$RenderBuf;

    move-object/from16 v23, v0

    move-object/from16 v24, v3

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/sun/javafx/sg/prism/NGCanvas;->blendmode:Lcom/sun/scenario/effect/Blend$Mode;

    move-object/from16 v24, v0

    move-object/from16 v25, v3

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/sun/javafx/sg/prism/NGCanvas;->cv:Lcom/sun/javafx/sg/prism/NGCanvas$RenderBuf;

    move-object/from16 v25, v0

    sget-object v26, Lcom/sun/javafx/sg/prism/NGCanvas;->TEMP_RECTBOUNDS:Lcom/sun/javafx/geom/RectBounds;

    sget-object v27, Lcom/sun/prism/CompositeMode;->SRC:Lcom/sun/prism/CompositeMode;

    move-object/from16 v28, v3

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/sun/javafx/sg/prism/NGCanvas;->cv:Lcom/sun/javafx/sg/prism/NGCanvas$RenderBuf;

    move-object/from16 v28, v0

    invoke-direct/range {v22 .. v28}, Lcom/sun/javafx/sg/prism/NGCanvas;->blendAthruBintoC(Lcom/sun/javafx/sg/prism/NGCanvas$RenderBuf;Lcom/sun/scenario/effect/Blend$Mode;Lcom/sun/javafx/sg/prism/NGCanvas$RenderBuf;Lcom/sun/javafx/geom/RectBounds;Lcom/sun/prism/CompositeMode;Lcom/sun/javafx/sg/prism/NGCanvas$RenderBuf;)V

    .line 1148
    :cond_b
    move/from16 v22, v12

    if-eqz v22, :cond_c

    .line 1149
    move-object/from16 v22, v3

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/sun/javafx/sg/prism/NGCanvas;->clip:Lcom/sun/javafx/sg/prism/NGCanvas$RenderBuf;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/sun/javafx/sg/prism/NGCanvas$RenderBuf;->tex:Lcom/sun/prism/RTTexture;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Lcom/sun/prism/RTTexture;->unlock()V

    .line 1151
    :cond_c
    move/from16 v22, v11

    if-eqz v22, :cond_0

    .line 1152
    move-object/from16 v22, v3

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/sun/javafx/sg/prism/NGCanvas;->temp:Lcom/sun/javafx/sg/prism/NGCanvas$RenderBuf;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/sun/javafx/sg/prism/NGCanvas$RenderBuf;->tex:Lcom/sun/prism/RTTexture;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Lcom/sun/prism/RTTexture;->unlock()V

    goto/16 :goto_1

    .line 1060
    .end local v10    # "dest":Lcom/sun/javafx/sg/prism/NGCanvas$RenderBuf;
    .end local v11    # "tempvalidated":Z
    :cond_d
    move-object/from16 v22, v3

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/sun/javafx/sg/prism/NGCanvas;->blendmode:Lcom/sun/scenario/effect/Blend$Mode;

    move-object/from16 v22, v0

    sget-object v23, Lcom/sun/scenario/effect/Blend$Mode;->SRC_OVER:Lcom/sun/scenario/effect/Blend$Mode;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    if-eq v0, v1, :cond_e

    .line 1061
    move-object/from16 v22, v3

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/sun/javafx/sg/prism/NGCanvas;->temp:Lcom/sun/javafx/sg/prism/NGCanvas$RenderBuf;

    move-object/from16 v22, v0

    move-object/from16 v23, v3

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/sun/javafx/sg/prism/NGCanvas;->cv:Lcom/sun/javafx/sg/prism/NGCanvas$RenderBuf;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/sun/javafx/sg/prism/NGCanvas$RenderBuf;->g:Lcom/sun/prism/Graphics;

    move-object/from16 v23, v0

    move-object/from16 v24, v3

    move-object/from16 v0, v24

    iget v0, v0, Lcom/sun/javafx/sg/prism/NGCanvas;->tw:I

    move/from16 v24, v0

    move-object/from16 v25, v3

    move-object/from16 v0, v25

    iget v0, v0, Lcom/sun/javafx/sg/prism/NGCanvas;->th:I

    move/from16 v25, v0

    invoke-virtual/range {v22 .. v25}, Lcom/sun/javafx/sg/prism/NGCanvas$RenderBuf;->validate(Lcom/sun/prism/Graphics;II)Z

    move-result v22

    .line 1062
    const/16 v22, 0x1

    move/from16 v11, v22

    .line 1063
    .restart local v11    # "tempvalidated":Z
    move-object/from16 v22, v3

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/sun/javafx/sg/prism/NGCanvas;->temp:Lcom/sun/javafx/sg/prism/NGCanvas$RenderBuf;

    move-object/from16 v22, v0

    move-object/from16 v10, v22

    .restart local v10    # "dest":Lcom/sun/javafx/sg/prism/NGCanvas$RenderBuf;
    goto/16 :goto_5

    .line 1065
    .end local v10    # "dest":Lcom/sun/javafx/sg/prism/NGCanvas$RenderBuf;
    .end local v11    # "tempvalidated":Z
    :cond_e
    const/16 v22, 0x0

    move/from16 v11, v22

    .line 1066
    .restart local v11    # "tempvalidated":Z
    move-object/from16 v22, v3

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/sun/javafx/sg/prism/NGCanvas;->cv:Lcom/sun/javafx/sg/prism/NGCanvas$RenderBuf;

    move-object/from16 v22, v0

    move-object/from16 v10, v22

    .restart local v10    # "dest":Lcom/sun/javafx/sg/prism/NGCanvas$RenderBuf;
    goto/16 :goto_5

    .line 1089
    :cond_f
    move-object/from16 v22, v10

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/sun/javafx/sg/prism/NGCanvas$RenderBuf;->g:Lcom/sun/prism/Graphics;

    move-object/from16 v22, v0

    move-object/from16 v13, v22

    .line 1090
    .local v13, "g":Lcom/sun/prism/Graphics;
    move-object/from16 v22, v13

    move-object/from16 v23, v3

    move-object/from16 v0, v23

    iget v0, v0, Lcom/sun/javafx/sg/prism/NGCanvas;->globalAlpha:F

    move/from16 v23, v0

    invoke-interface/range {v22 .. v23}, Lcom/sun/prism/Graphics;->setExtraAlpha(F)V

    .line 1091
    move-object/from16 v22, v13

    move-object/from16 v23, v3

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/sun/javafx/sg/prism/NGCanvas;->transform:Lcom/sun/javafx/geom/transform/Affine2D;

    move-object/from16 v23, v0

    invoke-interface/range {v22 .. v23}, Lcom/sun/prism/Graphics;->setTransform(Lcom/sun/javafx/geom/transform/BaseTransform;)V

    .line 1092
    move-object/from16 v22, v13

    move-object/from16 v23, v3

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/sun/javafx/sg/prism/NGCanvas;->clipRect:Lcom/sun/javafx/geom/Rectangle;

    move-object/from16 v23, v0

    invoke-interface/range {v22 .. v23}, Lcom/sun/prism/Graphics;->setClipRect(Lcom/sun/javafx/geom/Rectangle;)V

    .line 1095
    move-object/from16 v22, v10

    move-object/from16 v23, v3

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/sun/javafx/sg/prism/NGCanvas;->cv:Lcom/sun/javafx/sg/prism/NGCanvas$RenderBuf;

    move-object/from16 v23, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    if-eq v0, v1, :cond_10

    sget-object v22, Lcom/sun/javafx/sg/prism/NGCanvas;->TEMP_RECTBOUNDS:Lcom/sun/javafx/geom/RectBounds;

    :goto_9
    move-object/from16 v14, v22

    .line 1097
    .local v14, "optSaveBounds":Lcom/sun/javafx/geom/RectBounds;
    move-object/from16 v22, v3

    move/from16 v23, v5

    move-object/from16 v24, v4

    move-object/from16 v25, v13

    move-object/from16 v26, v14

    invoke-virtual/range {v22 .. v26}, Lcom/sun/javafx/sg/prism/NGCanvas;->handleRenderOp(ILcom/sun/javafx/sg/prism/GrowableDataBuffer;Lcom/sun/prism/Graphics;Lcom/sun/javafx/geom/RectBounds;)V

    .line 1098
    move-object/from16 v22, v13

    const/16 v23, 0x0

    invoke-interface/range {v22 .. v23}, Lcom/sun/prism/Graphics;->setClipRect(Lcom/sun/javafx/geom/Rectangle;)V

    goto/16 :goto_6

    .line 1095
    .end local v14    # "optSaveBounds":Lcom/sun/javafx/geom/RectBounds;
    :cond_10
    const/16 v22, 0x0

    goto :goto_9

    .line 1116
    .end local v13    # "g":Lcom/sun/prism/Graphics;
    :cond_11
    sget-object v22, Lcom/sun/prism/CompositeMode;->SRC:Lcom/sun/prism/CompositeMode;

    move-object/from16 v13, v22

    .local v13, "compmode":Lcom/sun/prism/CompositeMode;
    goto/16 :goto_7

    .line 1132
    :cond_12
    move-object/from16 v22, v3

    move-object/from16 v23, v3

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/sun/javafx/sg/prism/NGCanvas;->temp:Lcom/sun/javafx/sg/prism/NGCanvas$RenderBuf;

    move-object/from16 v23, v0

    sget-object v24, Lcom/sun/scenario/effect/Blend$Mode;->SRC_IN:Lcom/sun/scenario/effect/Blend$Mode;

    move-object/from16 v25, v3

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/sun/javafx/sg/prism/NGCanvas;->clip:Lcom/sun/javafx/sg/prism/NGCanvas$RenderBuf;

    move-object/from16 v25, v0

    sget-object v26, Lcom/sun/javafx/sg/prism/NGCanvas;->TEMP_RECTBOUNDS:Lcom/sun/javafx/geom/RectBounds;

    move-object/from16 v27, v13

    move-object/from16 v28, v10

    invoke-direct/range {v22 .. v28}, Lcom/sun/javafx/sg/prism/NGCanvas;->blendAthruBintoC(Lcom/sun/javafx/sg/prism/NGCanvas$RenderBuf;Lcom/sun/scenario/effect/Blend$Mode;Lcom/sun/javafx/sg/prism/NGCanvas$RenderBuf;Lcom/sun/javafx/geom/RectBounds;Lcom/sun/prism/CompositeMode;Lcom/sun/javafx/sg/prism/NGCanvas$RenderBuf;)V

    goto/16 :goto_8

    .line 1160
    .end local v5    # "token":I
    .end local v10    # "dest":Lcom/sun/javafx/sg/prism/NGCanvas$RenderBuf;
    .end local v11    # "tempvalidated":Z
    .end local v12    # "clipvalidated":Z
    .end local v13    # "compmode":Lcom/sun/prism/CompositeMode;
    :cond_13
    return-void

    .line 809
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_13
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1e
        :pswitch_20
        :pswitch_21
        :pswitch_12
        :pswitch_23
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_14
        :pswitch_1c
        :pswitch_1d
        :pswitch_1f
        :pswitch_24
        :pswitch_24
        :pswitch_24
        :pswitch_24
        :pswitch_24
        :pswitch_24
        :pswitch_24
        :pswitch_24
        :pswitch_24
        :pswitch_24
        :pswitch_24
        :pswitch_24
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_24
        :pswitch_24
        :pswitch_0
        :pswitch_24
        :pswitch_24
        :pswitch_10
        :pswitch_11
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_22
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 885
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_d
        :pswitch_e
        :pswitch_f
    .end packed-switch
.end method

.method private resetClip(Z)V
    .locals 4

    .prologue
    .line 657
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGCanvas;
    move v1, p1

    .local v1, "andDispose":Z
    move v2, v1

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/sg/prism/NGCanvas;->clip:Lcom/sun/javafx/sg/prism/NGCanvas$RenderBuf;

    invoke-virtual {v2}, Lcom/sun/javafx/sg/prism/NGCanvas$RenderBuf;->dispose()V

    .line 658
    :cond_0
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Lcom/sun/javafx/sg/prism/NGCanvas;->clipsRendered:I

    .line 659
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/sun/javafx/sg/prism/NGCanvas;->clipIsRect:Z

    .line 660
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/sun/javafx/sg/prism/NGCanvas;->clipRect:Lcom/sun/javafx/geom/Rectangle;

    .line 661
    return-void
.end method

.method private static runOnRenderThread(Ljava/lang/Runnable;)V
    .locals 8

    .prologue
    .line 552
    move-object v0, p0

    .local v0, "r":Ljava/lang/Runnable;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "QuantumRenderer"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 553
    move-object v3, v0

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    .line 566
    :goto_0
    return-void

    .line 555
    :cond_0
    new-instance v3, Ljava/util/concurrent/FutureTask;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    move-object v1, v3

    .line 556
    .local v1, "f":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<Ljava/lang/Void;>;"
    invoke-static {}, Lcom/sun/javafx/tk/Toolkit;->getToolkit()Lcom/sun/javafx/tk/Toolkit;

    move-result-object v3

    new-instance v4, Lcom/sun/javafx/tk/RenderJob;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v1

    invoke-direct {v5, v6}, Lcom/sun/javafx/tk/RenderJob;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v3, v4}, Lcom/sun/javafx/tk/Toolkit;->addRenderJob(Lcom/sun/javafx/tk/RenderJob;)Ljava/util/concurrent/Future;

    move-result-object v3

    .line 559
    move-object v3, v1

    :try_start_0
    invoke-virtual {v3}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 564
    goto :goto_0

    .line 560
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 561
    .local v2, "ex":Ljava/util/concurrent/ExecutionException;
    new-instance v3, Ljava/lang/AssertionError;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v2

    invoke-direct {v4, v5}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3

    .line 562
    .end local v2    # "ex":Ljava/util/concurrent/ExecutionException;
    :catch_1
    move-exception v3

    move-object v2, v3

    goto :goto_0
.end method

.method private setupFill(Lcom/sun/prism/Graphics;)V
    .locals 4

    .prologue
    .line 773
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGCanvas;
    move-object v1, p1

    .local v1, "gr":Lcom/sun/prism/Graphics;
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/sg/prism/NGCanvas;->fillPaint:Lcom/sun/prism/paint/Paint;

    invoke-interface {v2, v3}, Lcom/sun/prism/Graphics;->setPaint(Lcom/sun/prism/paint/Paint;)V

    .line 774
    return-void
.end method

.method private setupStroke(Lcom/sun/prism/Graphics;)V
    .locals 4

    .prologue
    .line 785
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGCanvas;
    move-object v1, p1

    .local v1, "gr":Lcom/sun/prism/Graphics;
    move-object v2, v1

    move-object v3, v0

    invoke-direct {v3}, Lcom/sun/javafx/sg/prism/NGCanvas;->getStroke()Lcom/sun/prism/BasicStroke;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/sun/prism/Graphics;->setStroke(Lcom/sun/prism/BasicStroke;)V

    .line 786
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/sg/prism/NGCanvas;->strokePaint:Lcom/sun/prism/paint/Paint;

    invoke-interface {v2, v3}, Lcom/sun/prism/Graphics;->setPaint(Lcom/sun/prism/paint/Paint;)V

    .line 787
    return-void
.end method

.method private static shapebounds(Lcom/sun/javafx/geom/Shape;Lcom/sun/javafx/geom/RectBounds;Lcom/sun/javafx/geom/transform/BaseTransform;)V
    .locals 12

    .prologue
    .line 533
    move-object v0, p0

    .local v0, "shape":Lcom/sun/javafx/geom/Shape;
    move-object v1, p1

    .local v1, "bounds":Lcom/sun/javafx/geom/RectBounds;
    move-object v2, p2

    .local v2, "transform":Lcom/sun/javafx/geom/transform/BaseTransform;
    sget-object v3, Lcom/sun/javafx/sg/prism/NGCanvas;->TEMP_COORDS:[F

    const/4 v4, 0x0

    sget-object v5, Lcom/sun/javafx/sg/prism/NGCanvas;->TEMP_COORDS:[F

    const/4 v6, 0x1

    const/high16 v7, 0x7f800000    # Float.POSITIVE_INFINITY

    move-object v9, v5

    move v10, v6

    move v11, v7

    move v5, v11

    move-object v6, v9

    move v7, v10

    move v8, v11

    aput v8, v6, v7

    aput v5, v3, v4

    .line 534
    sget-object v3, Lcom/sun/javafx/sg/prism/NGCanvas;->TEMP_COORDS:[F

    const/4 v4, 0x2

    sget-object v5, Lcom/sun/javafx/sg/prism/NGCanvas;->TEMP_COORDS:[F

    const/4 v6, 0x3

    const/high16 v7, -0x800000    # Float.NEGATIVE_INFINITY

    move-object v9, v5

    move v10, v6

    move v11, v7

    move v5, v11

    move-object v6, v9

    move v7, v10

    move v8, v11

    aput v8, v6, v7

    aput v5, v3, v4

    .line 535
    sget-object v3, Lcom/sun/javafx/sg/prism/NGCanvas;->TEMP_COORDS:[F

    move-object v4, v0

    move-object v5, v2

    invoke-static {v3, v4, v5}, Lcom/sun/javafx/geom/Shape;->accumulate([FLcom/sun/javafx/geom/Shape;Lcom/sun/javafx/geom/transform/BaseTransform;)V

    .line 536
    move-object v3, v1

    sget-object v4, Lcom/sun/javafx/sg/prism/NGCanvas;->TEMP_COORDS:[F

    const/4 v5, 0x0

    aget v4, v4, v5

    sget-object v5, Lcom/sun/javafx/sg/prism/NGCanvas;->TEMP_COORDS:[F

    const/4 v6, 0x1

    aget v5, v5, v6

    sget-object v6, Lcom/sun/javafx/sg/prism/NGCanvas;->TEMP_COORDS:[F

    const/4 v7, 0x2

    aget v6, v6, v7

    sget-object v7, Lcom/sun/javafx/sg/prism/NGCanvas;->TEMP_COORDS:[F

    const/4 v8, 0x3

    aget v7, v7, v8

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/sun/javafx/geom/RectBounds;->setBounds(FFFF)V

    .line 538
    return-void
.end method

.method private static strokebounds(Lcom/sun/prism/BasicStroke;Lcom/sun/javafx/geom/Shape;Lcom/sun/javafx/geom/RectBounds;Lcom/sun/javafx/geom/transform/BaseTransform;)V
    .locals 13

    .prologue
    .line 543
    move-object v0, p0

    .local v0, "stroke":Lcom/sun/prism/BasicStroke;
    move-object v1, p1

    .local v1, "shape":Lcom/sun/javafx/geom/Shape;
    move-object v2, p2

    .local v2, "bounds":Lcom/sun/javafx/geom/RectBounds;
    move-object/from16 v3, p3

    .local v3, "transform":Lcom/sun/javafx/geom/transform/BaseTransform;
    sget-object v4, Lcom/sun/javafx/sg/prism/NGCanvas;->TEMP_COORDS:[F

    const/4 v5, 0x0

    sget-object v6, Lcom/sun/javafx/sg/prism/NGCanvas;->TEMP_COORDS:[F

    const/4 v7, 0x1

    const/high16 v8, 0x7f800000    # Float.POSITIVE_INFINITY

    move-object v10, v6

    move v11, v7

    move v12, v8

    move v6, v12

    move-object v7, v10

    move v8, v11

    move v9, v12

    aput v9, v7, v8

    aput v6, v4, v5

    .line 544
    sget-object v4, Lcom/sun/javafx/sg/prism/NGCanvas;->TEMP_COORDS:[F

    const/4 v5, 0x2

    sget-object v6, Lcom/sun/javafx/sg/prism/NGCanvas;->TEMP_COORDS:[F

    const/4 v7, 0x3

    const/high16 v8, -0x800000    # Float.NEGATIVE_INFINITY

    move-object v10, v6

    move v11, v7

    move v12, v8

    move v6, v12

    move-object v7, v10

    move v8, v11

    move v9, v12

    aput v9, v7, v8

    aput v6, v4, v5

    .line 545
    move-object v4, v0

    sget-object v5, Lcom/sun/javafx/sg/prism/NGCanvas;->TEMP_COORDS:[F

    move-object v6, v1

    move-object v7, v3

    invoke-virtual {v4, v5, v6, v7}, Lcom/sun/prism/BasicStroke;->accumulateShapeBounds([FLcom/sun/javafx/geom/Shape;Lcom/sun/javafx/geom/transform/BaseTransform;)V

    .line 546
    move-object v4, v2

    sget-object v5, Lcom/sun/javafx/sg/prism/NGCanvas;->TEMP_COORDS:[F

    const/4 v6, 0x0

    aget v5, v5, v6

    sget-object v6, Lcom/sun/javafx/sg/prism/NGCanvas;->TEMP_COORDS:[F

    const/4 v7, 0x1

    aget v6, v6, v7

    sget-object v7, Lcom/sun/javafx/sg/prism/NGCanvas;->TEMP_COORDS:[F

    const/4 v8, 0x2

    aget v7, v7, v8

    sget-object v8, Lcom/sun/javafx/sg/prism/NGCanvas;->TEMP_COORDS:[F

    const/4 v9, 0x3

    aget v8, v8, v9

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/sun/javafx/geom/RectBounds;->setBounds(FFFF)V

    .line 548
    return-void
.end method

.method static txBounds(Lcom/sun/javafx/geom/RectBounds;Lcom/sun/javafx/geom/transform/BaseTransform;)V
    .locals 12

    .prologue
    .line 1476
    move-object v1, p0

    .local v1, "bounds":Lcom/sun/javafx/geom/RectBounds;
    move-object v2, p1

    .local v2, "transform":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object v6, v2

    invoke-virtual {v6}, Lcom/sun/javafx/geom/transform/BaseTransform;->getType()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 1486
    move-object v6, v2

    move-object v7, v1

    move-object v8, v1

    invoke-virtual {v6, v7, v8}, Lcom/sun/javafx/geom/transform/BaseTransform;->transform(Lcom/sun/javafx/geom/BaseBounds;Lcom/sun/javafx/geom/BaseBounds;)Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v6

    move-object v5, v6

    .line 1487
    .local v5, "txbounds":Lcom/sun/javafx/geom/BaseBounds;
    move-object v6, v5

    move-object v7, v1

    if-eq v6, v7, :cond_0

    .line 1488
    move-object v6, v1

    move-object v7, v5

    invoke-virtual {v7}, Lcom/sun/javafx/geom/BaseBounds;->getMinX()F

    move-result v7

    move-object v8, v5

    invoke-virtual {v8}, Lcom/sun/javafx/geom/BaseBounds;->getMinY()F

    move-result v8

    move-object v9, v5

    .line 1489
    invoke-virtual {v9}, Lcom/sun/javafx/geom/BaseBounds;->getMaxX()F

    move-result v9

    move-object v10, v5

    invoke-virtual {v10}, Lcom/sun/javafx/geom/BaseBounds;->getMaxY()F

    move-result v10

    .line 1488
    invoke-virtual {v6, v7, v8, v9, v10}, Lcom/sun/javafx/geom/RectBounds;->setBounds(FFFF)V

    .line 1493
    .end local v5    # "txbounds":Lcom/sun/javafx/geom/BaseBounds;
    :cond_0
    :goto_0
    return-void

    .line 1478
    :pswitch_0
    goto :goto_0

    .line 1480
    :pswitch_1
    move-object v6, v2

    invoke-virtual {v6}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMxt()D

    move-result-wide v6

    double-to-float v6, v6

    move v3, v6

    .line 1481
    .local v3, "tx":F
    move-object v6, v2

    invoke-virtual {v6}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMyt()D

    move-result-wide v6

    double-to-float v6, v6

    move v4, v6

    .line 1482
    .local v4, "ty":F
    move-object v6, v1

    move-object v7, v1

    invoke-virtual {v7}, Lcom/sun/javafx/geom/RectBounds;->getMinX()F

    move-result v7

    move v8, v3

    add-float/2addr v7, v8

    move-object v8, v1

    invoke-virtual {v8}, Lcom/sun/javafx/geom/RectBounds;->getMinY()F

    move-result v8

    move v9, v4

    add-float/2addr v8, v9

    move-object v9, v1

    .line 1483
    invoke-virtual {v9}, Lcom/sun/javafx/geom/RectBounds;->getMaxX()F

    move-result v9

    move v10, v3

    add-float/2addr v9, v10

    move-object v10, v1

    invoke-virtual {v10}, Lcom/sun/javafx/geom/RectBounds;->getMaxY()F

    move-result v10

    move v11, v4

    add-float/2addr v10, v11

    .line 1482
    invoke-virtual {v6, v7, v8, v9, v10}, Lcom/sun/javafx/geom/RectBounds;->setBounds(FFFF)V

    .line 1484
    goto :goto_0

    .line 1476
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method computeTextLayoutBounds(Lcom/sun/javafx/geom/RectBounds;Lcom/sun/javafx/geom/transform/BaseTransform;FFFI)V
    .locals 17

    .prologue
    .line 1461
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/javafx/sg/prism/NGCanvas;
    move-object/from16 v2, p1

    .local v2, "bounds":Lcom/sun/javafx/geom/RectBounds;
    move-object/from16 v3, p2

    .local v3, "transform":Lcom/sun/javafx/geom/transform/BaseTransform;
    move/from16 v4, p3

    .local v4, "scaleX":F
    move/from16 v5, p4

    .local v5, "layoutX":F
    move/from16 v6, p5

    .local v6, "layoutY":F
    move/from16 v7, p6

    .local v7, "token":I
    move-object v11, v1

    iget-object v11, v11, Lcom/sun/javafx/sg/prism/NGCanvas;->textLayout:Lcom/sun/javafx/text/PrismTextLayout;

    const/4 v12, 0x0

    move-object v13, v2

    invoke-virtual {v11, v12, v13}, Lcom/sun/javafx/text/PrismTextLayout;->getBounds(Lcom/sun/javafx/scene/text/TextSpan;Lcom/sun/javafx/geom/BaseBounds;)Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v11

    .line 1462
    sget-object v11, Lcom/sun/javafx/sg/prism/NGCanvas;->TEMP_TX:Lcom/sun/javafx/geom/transform/Affine2D;

    move-object v12, v3

    invoke-virtual {v11, v12}, Lcom/sun/javafx/geom/transform/Affine2D;->setTransform(Lcom/sun/javafx/geom/transform/BaseTransform;)V

    .line 1463
    sget-object v11, Lcom/sun/javafx/sg/prism/NGCanvas;->TEMP_TX:Lcom/sun/javafx/geom/transform/Affine2D;

    move v12, v4

    float-to-double v12, v12

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v11, v12, v13, v14, v15}, Lcom/sun/javafx/geom/transform/Affine2D;->scale(DD)V

    .line 1464
    sget-object v11, Lcom/sun/javafx/sg/prism/NGCanvas;->TEMP_TX:Lcom/sun/javafx/geom/transform/Affine2D;

    move v12, v5

    float-to-double v12, v12

    move v14, v6

    float-to-double v14, v14

    invoke-virtual {v11, v12, v13, v14, v15}, Lcom/sun/javafx/geom/transform/Affine2D;->translate(DD)V

    .line 1465
    sget-object v11, Lcom/sun/javafx/sg/prism/NGCanvas;->TEMP_TX:Lcom/sun/javafx/geom/transform/Affine2D;

    move-object v12, v2

    move-object v13, v2

    invoke-virtual {v11, v12, v13}, Lcom/sun/javafx/geom/transform/Affine2D;->transform(Lcom/sun/javafx/geom/BaseBounds;Lcom/sun/javafx/geom/BaseBounds;)Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v11

    .line 1466
    move v11, v7

    const/16 v12, 0x1f

    if-ne v11, v12, :cond_0

    .line 1467
    const/4 v11, 0x1

    move v8, v11

    .line 1468
    .local v8, "flag":I
    move-object v11, v1

    iget-object v11, v11, Lcom/sun/javafx/sg/prism/NGCanvas;->textLayout:Lcom/sun/javafx/text/PrismTextLayout;

    move v12, v8

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Lcom/sun/javafx/text/PrismTextLayout;->getShape(ILcom/sun/javafx/scene/text/TextSpan;)Lcom/sun/javafx/geom/Shape;

    move-result-object v11

    move-object v9, v11

    .line 1469
    .local v9, "textShape":Lcom/sun/javafx/geom/Shape;
    new-instance v11, Lcom/sun/javafx/geom/RectBounds;

    move-object/from16 v16, v11

    move-object/from16 v11, v16

    move-object/from16 v12, v16

    invoke-direct {v12}, Lcom/sun/javafx/geom/RectBounds;-><init>()V

    move-object v10, v11

    .line 1470
    .local v10, "shapeBounds":Lcom/sun/javafx/geom/RectBounds;
    move-object v11, v1

    invoke-direct {v11}, Lcom/sun/javafx/sg/prism/NGCanvas;->getStroke()Lcom/sun/prism/BasicStroke;

    move-result-object v11

    move-object v12, v9

    move-object v13, v10

    sget-object v14, Lcom/sun/javafx/sg/prism/NGCanvas;->TEMP_TX:Lcom/sun/javafx/geom/transform/Affine2D;

    invoke-static {v11, v12, v13, v14}, Lcom/sun/javafx/sg/prism/NGCanvas;->strokebounds(Lcom/sun/prism/BasicStroke;Lcom/sun/javafx/geom/Shape;Lcom/sun/javafx/geom/RectBounds;Lcom/sun/javafx/geom/transform/BaseTransform;)V

    .line 1471
    move-object v11, v2

    move-object v12, v10

    invoke-virtual {v11, v12}, Lcom/sun/javafx/geom/RectBounds;->unionWith(Lcom/sun/javafx/geom/RectBounds;)V

    .line 1473
    .end local v8    # "flag":I
    .end local v9    # "textShape":Lcom/sun/javafx/geom/Shape;
    .end local v10    # "shapeBounds":Lcom/sun/javafx/geom/RectBounds;
    :cond_0
    return-void
.end method

.method public handleRenderOp(ILcom/sun/javafx/sg/prism/GrowableDataBuffer;Lcom/sun/prism/Graphics;Lcom/sun/javafx/geom/RectBounds;)V
    .locals 36

    .prologue
    .line 1175
    move-object/from16 v2, p0

    .local v2, "this":Lcom/sun/javafx/sg/prism/NGCanvas;
    move/from16 v3, p1

    .local v3, "token":I
    move-object/from16 v4, p2

    .local v4, "buf":Lcom/sun/javafx/sg/prism/GrowableDataBuffer;
    move-object/from16 v5, p3

    .local v5, "gr":Lcom/sun/prism/Graphics;
    move-object/from16 v6, p4

    .local v6, "bounds":Lcom/sun/javafx/geom/RectBounds;
    const/16 v24, 0x0

    move/from16 v7, v24

    .line 1176
    .local v7, "strokeBounds":Z
    const/16 v24, 0x0

    move/from16 v8, v24

    .line 1177
    .local v8, "transformBounds":Z
    move/from16 v24, v3

    packed-switch v24, :pswitch_data_0

    .line 1438
    :pswitch_0
    new-instance v24, Ljava/lang/InternalError;

    move-object/from16 v35, v24

    move-object/from16 v24, v35

    move-object/from16 v25, v35

    new-instance v26, Ljava/lang/StringBuilder;

    move-object/from16 v35, v26

    move-object/from16 v26, v35

    move-object/from16 v27, v35

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Unrecognized PGCanvas rendering token: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move/from16 v27, v3

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-direct/range {v25 .. v26}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v24

    .line 1180
    :pswitch_1
    move-object/from16 v24, v6

    if-eqz v24, :cond_0

    .line 1181
    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/sun/javafx/sg/prism/NGCanvas;->path:Lcom/sun/javafx/geom/Path2D;

    move-object/from16 v24, v0

    move-object/from16 v25, v6

    sget-object v26, Lcom/sun/javafx/geom/transform/BaseTransform;->IDENTITY_TRANSFORM:Lcom/sun/javafx/geom/transform/BaseTransform;

    invoke-static/range {v24 .. v26}, Lcom/sun/javafx/sg/prism/NGCanvas;->shapebounds(Lcom/sun/javafx/geom/Shape;Lcom/sun/javafx/geom/RectBounds;Lcom/sun/javafx/geom/transform/BaseTransform;)V

    .line 1183
    :cond_0
    move-object/from16 v24, v5

    if-eqz v24, :cond_1

    .line 1184
    move-object/from16 v24, v2

    move-object/from16 v25, v5

    invoke-direct/range {v24 .. v25}, Lcom/sun/javafx/sg/prism/NGCanvas;->setupFill(Lcom/sun/prism/Graphics;)V

    .line 1185
    move-object/from16 v24, v5

    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/sun/javafx/sg/prism/NGCanvas;->untransformedPath:Lcom/sun/javafx/geom/Shape;

    move-object/from16 v25, v0

    invoke-interface/range {v24 .. v25}, Lcom/sun/prism/Graphics;->fill(Lcom/sun/javafx/geom/Shape;)V

    .line 1440
    :cond_1
    :goto_0
    move-object/from16 v24, v6

    if-eqz v24, :cond_4

    .line 1441
    move/from16 v24, v7

    if-eqz v24, :cond_3

    .line 1442
    move-object/from16 v24, v2

    invoke-direct/range {v24 .. v24}, Lcom/sun/javafx/sg/prism/NGCanvas;->getStroke()Lcom/sun/prism/BasicStroke;

    move-result-object v24

    move-object/from16 v9, v24

    .line 1443
    .local v9, "s":Lcom/sun/prism/BasicStroke;
    move-object/from16 v24, v9

    invoke-virtual/range {v24 .. v24}, Lcom/sun/prism/BasicStroke;->getType()I

    move-result v24

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_3

    .line 1444
    move-object/from16 v24, v9

    invoke-virtual/range {v24 .. v24}, Lcom/sun/prism/BasicStroke;->getLineWidth()F

    move-result v24

    move/from16 v10, v24

    .line 1445
    .local v10, "lw":F
    move-object/from16 v24, v9

    invoke-virtual/range {v24 .. v24}, Lcom/sun/prism/BasicStroke;->getType()I

    move-result v24

    if-nez v24, :cond_2

    .line 1446
    move/from16 v24, v10

    const/high16 v25, 0x40000000    # 2.0f

    div-float v24, v24, v25

    move/from16 v10, v24

    .line 1448
    :cond_2
    move-object/from16 v24, v6

    move/from16 v25, v10

    move/from16 v26, v10

    invoke-virtual/range {v24 .. v26}, Lcom/sun/javafx/geom/RectBounds;->grow(FF)V

    .line 1451
    .end local v9    # "s":Lcom/sun/prism/BasicStroke;
    .end local v10    # "lw":F
    :cond_3
    move/from16 v24, v8

    if-eqz v24, :cond_4

    .line 1452
    move-object/from16 v24, v6

    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/sun/javafx/sg/prism/NGCanvas;->transform:Lcom/sun/javafx/geom/transform/Affine2D;

    move-object/from16 v25, v0

    invoke-static/range {v24 .. v25}, Lcom/sun/javafx/sg/prism/NGCanvas;->txBounds(Lcom/sun/javafx/geom/RectBounds;Lcom/sun/javafx/geom/transform/BaseTransform;)V

    .line 1455
    :cond_4
    return-void

    .line 1191
    :pswitch_2
    move-object/from16 v24, v6

    if-eqz v24, :cond_5

    .line 1192
    move-object/from16 v24, v2

    invoke-direct/range {v24 .. v24}, Lcom/sun/javafx/sg/prism/NGCanvas;->getStroke()Lcom/sun/prism/BasicStroke;

    move-result-object v24

    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/sun/javafx/sg/prism/NGCanvas;->untransformedPath:Lcom/sun/javafx/geom/Shape;

    move-object/from16 v25, v0

    move-object/from16 v26, v6

    move-object/from16 v27, v2

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/sun/javafx/sg/prism/NGCanvas;->transform:Lcom/sun/javafx/geom/transform/Affine2D;

    move-object/from16 v27, v0

    invoke-static/range {v24 .. v27}, Lcom/sun/javafx/sg/prism/NGCanvas;->strokebounds(Lcom/sun/prism/BasicStroke;Lcom/sun/javafx/geom/Shape;Lcom/sun/javafx/geom/RectBounds;Lcom/sun/javafx/geom/transform/BaseTransform;)V

    .line 1194
    :cond_5
    move-object/from16 v24, v5

    if-eqz v24, :cond_1

    .line 1195
    move-object/from16 v24, v2

    move-object/from16 v25, v5

    invoke-direct/range {v24 .. v25}, Lcom/sun/javafx/sg/prism/NGCanvas;->setupStroke(Lcom/sun/prism/Graphics;)V

    .line 1196
    move-object/from16 v24, v5

    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/sun/javafx/sg/prism/NGCanvas;->untransformedPath:Lcom/sun/javafx/geom/Shape;

    move-object/from16 v25, v0

    invoke-interface/range {v24 .. v25}, Lcom/sun/prism/Graphics;->draw(Lcom/sun/javafx/geom/Shape;)V

    goto/16 :goto_0

    .line 1202
    :pswitch_3
    move-object/from16 v24, v4

    invoke-virtual/range {v24 .. v24}, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->getFloat()F

    move-result v24

    move/from16 v9, v24

    .line 1203
    .local v9, "x1":F
    move-object/from16 v24, v4

    invoke-virtual/range {v24 .. v24}, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->getFloat()F

    move-result v24

    move/from16 v10, v24

    .line 1204
    .local v10, "y1":F
    move-object/from16 v24, v4

    invoke-virtual/range {v24 .. v24}, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->getFloat()F

    move-result v24

    move/from16 v11, v24

    .line 1205
    .local v11, "x2":F
    move-object/from16 v24, v4

    invoke-virtual/range {v24 .. v24}, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->getFloat()F

    move-result v24

    move/from16 v12, v24

    .line 1206
    .local v12, "y2":F
    move-object/from16 v24, v6

    if-eqz v24, :cond_6

    .line 1207
    move-object/from16 v24, v6

    move/from16 v25, v9

    move/from16 v26, v10

    move/from16 v27, v11

    move/from16 v28, v12

    invoke-virtual/range {v24 .. v28}, Lcom/sun/javafx/geom/RectBounds;->setBoundsAndSort(FFFF)V

    .line 1208
    const/16 v24, 0x1

    move/from16 v7, v24

    .line 1209
    const/16 v24, 0x1

    move/from16 v8, v24

    .line 1211
    :cond_6
    move-object/from16 v24, v5

    if-eqz v24, :cond_1

    .line 1212
    move-object/from16 v24, v2

    move-object/from16 v25, v5

    invoke-direct/range {v24 .. v25}, Lcom/sun/javafx/sg/prism/NGCanvas;->setupStroke(Lcom/sun/prism/Graphics;)V

    .line 1213
    move-object/from16 v24, v5

    move/from16 v25, v9

    move/from16 v26, v10

    move/from16 v27, v11

    move/from16 v28, v12

    invoke-interface/range {v24 .. v28}, Lcom/sun/prism/Graphics;->drawLine(FFFF)V

    goto/16 :goto_0

    .line 1219
    .end local v9    # "x1":F
    .end local v10    # "y1":F
    .end local v11    # "x2":F
    .end local v12    # "y2":F
    :pswitch_4
    const/16 v24, 0x1

    move/from16 v7, v24

    .line 1224
    :pswitch_5
    move-object/from16 v24, v4

    invoke-virtual/range {v24 .. v24}, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->getFloat()F

    move-result v24

    move/from16 v9, v24

    .line 1225
    .local v9, "x":F
    move-object/from16 v24, v4

    invoke-virtual/range {v24 .. v24}, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->getFloat()F

    move-result v24

    move/from16 v10, v24

    .line 1226
    .local v10, "y":F
    move-object/from16 v24, v4

    invoke-virtual/range {v24 .. v24}, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->getFloat()F

    move-result v24

    move/from16 v11, v24

    .line 1227
    .local v11, "w":F
    move-object/from16 v24, v4

    invoke-virtual/range {v24 .. v24}, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->getFloat()F

    move-result v24

    move/from16 v12, v24

    .line 1228
    .local v12, "h":F
    move-object/from16 v24, v6

    if-eqz v24, :cond_7

    .line 1229
    move-object/from16 v24, v6

    move/from16 v25, v9

    move/from16 v26, v10

    move/from16 v27, v9

    move/from16 v28, v11

    add-float v27, v27, v28

    move/from16 v28, v10

    move/from16 v29, v12

    add-float v28, v28, v29

    invoke-virtual/range {v24 .. v28}, Lcom/sun/javafx/geom/RectBounds;->setBounds(FFFF)V

    .line 1230
    const/16 v24, 0x1

    move/from16 v8, v24

    .line 1232
    :cond_7
    move-object/from16 v24, v5

    if-eqz v24, :cond_1

    .line 1233
    move/from16 v24, v3

    packed-switch v24, :pswitch_data_1

    .line 1254
    :goto_1
    :pswitch_6
    goto/16 :goto_0

    .line 1235
    :pswitch_7
    move-object/from16 v24, v2

    move-object/from16 v25, v5

    invoke-direct/range {v24 .. v25}, Lcom/sun/javafx/sg/prism/NGCanvas;->setupFill(Lcom/sun/prism/Graphics;)V

    .line 1236
    move-object/from16 v24, v5

    move/from16 v25, v9

    move/from16 v26, v10

    move/from16 v27, v11

    move/from16 v28, v12

    invoke-interface/range {v24 .. v28}, Lcom/sun/prism/Graphics;->fillRect(FFFF)V

    .line 1237
    goto :goto_1

    .line 1239
    :pswitch_8
    move-object/from16 v24, v2

    move-object/from16 v25, v5

    invoke-direct/range {v24 .. v25}, Lcom/sun/javafx/sg/prism/NGCanvas;->setupFill(Lcom/sun/prism/Graphics;)V

    .line 1240
    move-object/from16 v24, v5

    move/from16 v25, v9

    move/from16 v26, v10

    move/from16 v27, v11

    move/from16 v28, v12

    invoke-interface/range {v24 .. v28}, Lcom/sun/prism/Graphics;->fillEllipse(FFFF)V

    .line 1241
    goto :goto_1

    .line 1243
    :pswitch_9
    move-object/from16 v24, v2

    move-object/from16 v25, v5

    invoke-direct/range {v24 .. v25}, Lcom/sun/javafx/sg/prism/NGCanvas;->setupStroke(Lcom/sun/prism/Graphics;)V

    .line 1244
    move-object/from16 v24, v5

    move/from16 v25, v9

    move/from16 v26, v10

    move/from16 v27, v11

    move/from16 v28, v12

    invoke-interface/range {v24 .. v28}, Lcom/sun/prism/Graphics;->drawRect(FFFF)V

    .line 1245
    goto :goto_1

    .line 1247
    :pswitch_a
    move-object/from16 v24, v2

    move-object/from16 v25, v5

    invoke-direct/range {v24 .. v25}, Lcom/sun/javafx/sg/prism/NGCanvas;->setupStroke(Lcom/sun/prism/Graphics;)V

    .line 1248
    move-object/from16 v24, v5

    move/from16 v25, v9

    move/from16 v26, v10

    move/from16 v27, v11

    move/from16 v28, v12

    invoke-interface/range {v24 .. v28}, Lcom/sun/prism/Graphics;->drawEllipse(FFFF)V

    .line 1249
    goto :goto_1

    .line 1251
    :pswitch_b
    move-object/from16 v24, v5

    sget-object v25, Lcom/sun/prism/CompositeMode;->CLEAR:Lcom/sun/prism/CompositeMode;

    invoke-interface/range {v24 .. v25}, Lcom/sun/prism/Graphics;->setCompositeMode(Lcom/sun/prism/CompositeMode;)V

    .line 1252
    move-object/from16 v24, v5

    move/from16 v25, v9

    move/from16 v26, v10

    move/from16 v27, v11

    move/from16 v28, v12

    invoke-interface/range {v24 .. v28}, Lcom/sun/prism/Graphics;->fillRect(FFFF)V

    .line 1253
    move-object/from16 v24, v5

    sget-object v25, Lcom/sun/prism/CompositeMode;->SRC_OVER:Lcom/sun/prism/CompositeMode;

    invoke-interface/range {v24 .. v25}, Lcom/sun/prism/Graphics;->setCompositeMode(Lcom/sun/prism/CompositeMode;)V

    goto :goto_1

    .line 1260
    .end local v9    # "x":F
    .end local v10    # "y":F
    .end local v11    # "w":F
    .end local v12    # "h":F
    :pswitch_c
    const/16 v24, 0x1

    move/from16 v7, v24

    .line 1263
    :pswitch_d
    move-object/from16 v24, v4

    invoke-virtual/range {v24 .. v24}, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->getFloat()F

    move-result v24

    move/from16 v9, v24

    .line 1264
    .restart local v9    # "x":F
    move-object/from16 v24, v4

    invoke-virtual/range {v24 .. v24}, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->getFloat()F

    move-result v24

    move/from16 v10, v24

    .line 1265
    .restart local v10    # "y":F
    move-object/from16 v24, v4

    invoke-virtual/range {v24 .. v24}, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->getFloat()F

    move-result v24

    move/from16 v11, v24

    .line 1266
    .restart local v11    # "w":F
    move-object/from16 v24, v4

    invoke-virtual/range {v24 .. v24}, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->getFloat()F

    move-result v24

    move/from16 v12, v24

    .line 1267
    .restart local v12    # "h":F
    move-object/from16 v24, v4

    invoke-virtual/range {v24 .. v24}, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->getFloat()F

    move-result v24

    move/from16 v13, v24

    .line 1268
    .local v13, "aw":F
    move-object/from16 v24, v4

    invoke-virtual/range {v24 .. v24}, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->getFloat()F

    move-result v24

    move/from16 v14, v24

    .line 1269
    .local v14, "ah":F
    move-object/from16 v24, v6

    if-eqz v24, :cond_8

    .line 1270
    move-object/from16 v24, v6

    move/from16 v25, v9

    move/from16 v26, v10

    move/from16 v27, v9

    move/from16 v28, v11

    add-float v27, v27, v28

    move/from16 v28, v10

    move/from16 v29, v12

    add-float v28, v28, v29

    invoke-virtual/range {v24 .. v28}, Lcom/sun/javafx/geom/RectBounds;->setBounds(FFFF)V

    .line 1271
    const/16 v24, 0x1

    move/from16 v8, v24

    .line 1273
    :cond_8
    move-object/from16 v24, v5

    if-eqz v24, :cond_1

    .line 1274
    move/from16 v24, v3

    const/16 v25, 0x1a

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_9

    .line 1275
    move-object/from16 v24, v2

    move-object/from16 v25, v5

    invoke-direct/range {v24 .. v25}, Lcom/sun/javafx/sg/prism/NGCanvas;->setupFill(Lcom/sun/prism/Graphics;)V

    .line 1276
    move-object/from16 v24, v5

    move/from16 v25, v9

    move/from16 v26, v10

    move/from16 v27, v11

    move/from16 v28, v12

    move/from16 v29, v13

    move/from16 v30, v14

    invoke-interface/range {v24 .. v30}, Lcom/sun/prism/Graphics;->fillRoundRect(FFFFFF)V

    goto/16 :goto_0

    .line 1278
    :cond_9
    move-object/from16 v24, v2

    move-object/from16 v25, v5

    invoke-direct/range {v24 .. v25}, Lcom/sun/javafx/sg/prism/NGCanvas;->setupStroke(Lcom/sun/prism/Graphics;)V

    .line 1279
    move-object/from16 v24, v5

    move/from16 v25, v9

    move/from16 v26, v10

    move/from16 v27, v11

    move/from16 v28, v12

    move/from16 v29, v13

    move/from16 v30, v14

    invoke-interface/range {v24 .. v30}, Lcom/sun/prism/Graphics;->drawRoundRect(FFFFFF)V

    goto/16 :goto_0

    .line 1287
    .end local v9    # "x":F
    .end local v10    # "y":F
    .end local v11    # "w":F
    .end local v12    # "h":F
    .end local v13    # "aw":F
    .end local v14    # "ah":F
    :pswitch_e
    move-object/from16 v24, v4

    invoke-virtual/range {v24 .. v24}, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->getFloat()F

    move-result v24

    move/from16 v9, v24

    .line 1288
    .restart local v9    # "x":F
    move-object/from16 v24, v4

    invoke-virtual/range {v24 .. v24}, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->getFloat()F

    move-result v24

    move/from16 v10, v24

    .line 1289
    .restart local v10    # "y":F
    move-object/from16 v24, v4

    invoke-virtual/range {v24 .. v24}, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->getFloat()F

    move-result v24

    move/from16 v11, v24

    .line 1290
    .restart local v11    # "w":F
    move-object/from16 v24, v4

    invoke-virtual/range {v24 .. v24}, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->getFloat()F

    move-result v24

    move/from16 v12, v24

    .line 1291
    .restart local v12    # "h":F
    move-object/from16 v24, v4

    invoke-virtual/range {v24 .. v24}, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->getFloat()F

    move-result v24

    move/from16 v13, v24

    .line 1292
    .local v13, "as":F
    move-object/from16 v24, v4

    invoke-virtual/range {v24 .. v24}, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->getFloat()F

    move-result v24

    move/from16 v14, v24

    .line 1293
    .local v14, "ae":F
    sget-object v24, Lcom/sun/javafx/sg/prism/NGCanvas;->TEMP_ARC:Lcom/sun/javafx/geom/Arc2D;

    move/from16 v25, v9

    move/from16 v26, v10

    move/from16 v27, v11

    move/from16 v28, v12

    move/from16 v29, v13

    move/from16 v30, v14

    move-object/from16 v31, v2

    move-object/from16 v0, v31

    iget v0, v0, Lcom/sun/javafx/sg/prism/NGCanvas;->arctype:I

    move/from16 v31, v0

    invoke-virtual/range {v24 .. v31}, Lcom/sun/javafx/geom/Arc2D;->setArc(FFFFFFI)V

    .line 1294
    move/from16 v24, v3

    const/16 v25, 0x1c

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_b

    .line 1295
    move-object/from16 v24, v6

    if-eqz v24, :cond_a

    .line 1296
    sget-object v24, Lcom/sun/javafx/sg/prism/NGCanvas;->TEMP_ARC:Lcom/sun/javafx/geom/Arc2D;

    move-object/from16 v25, v6

    move-object/from16 v26, v2

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/sun/javafx/sg/prism/NGCanvas;->transform:Lcom/sun/javafx/geom/transform/Affine2D;

    move-object/from16 v26, v0

    invoke-static/range {v24 .. v26}, Lcom/sun/javafx/sg/prism/NGCanvas;->shapebounds(Lcom/sun/javafx/geom/Shape;Lcom/sun/javafx/geom/RectBounds;Lcom/sun/javafx/geom/transform/BaseTransform;)V

    .line 1298
    :cond_a
    move-object/from16 v24, v5

    if-eqz v24, :cond_1

    .line 1299
    move-object/from16 v24, v2

    move-object/from16 v25, v5

    invoke-direct/range {v24 .. v25}, Lcom/sun/javafx/sg/prism/NGCanvas;->setupFill(Lcom/sun/prism/Graphics;)V

    .line 1300
    move-object/from16 v24, v5

    sget-object v25, Lcom/sun/javafx/sg/prism/NGCanvas;->TEMP_ARC:Lcom/sun/javafx/geom/Arc2D;

    invoke-interface/range {v24 .. v25}, Lcom/sun/prism/Graphics;->fill(Lcom/sun/javafx/geom/Shape;)V

    goto/16 :goto_0

    .line 1303
    :cond_b
    move-object/from16 v24, v6

    if-eqz v24, :cond_c

    .line 1304
    move-object/from16 v24, v2

    invoke-direct/range {v24 .. v24}, Lcom/sun/javafx/sg/prism/NGCanvas;->getStroke()Lcom/sun/prism/BasicStroke;

    move-result-object v24

    sget-object v25, Lcom/sun/javafx/sg/prism/NGCanvas;->TEMP_ARC:Lcom/sun/javafx/geom/Arc2D;

    move-object/from16 v26, v6

    move-object/from16 v27, v2

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/sun/javafx/sg/prism/NGCanvas;->transform:Lcom/sun/javafx/geom/transform/Affine2D;

    move-object/from16 v27, v0

    invoke-static/range {v24 .. v27}, Lcom/sun/javafx/sg/prism/NGCanvas;->strokebounds(Lcom/sun/prism/BasicStroke;Lcom/sun/javafx/geom/Shape;Lcom/sun/javafx/geom/RectBounds;Lcom/sun/javafx/geom/transform/BaseTransform;)V

    .line 1306
    :cond_c
    move-object/from16 v24, v5

    if-eqz v24, :cond_1

    .line 1307
    move-object/from16 v24, v2

    move-object/from16 v25, v5

    invoke-direct/range {v24 .. v25}, Lcom/sun/javafx/sg/prism/NGCanvas;->setupStroke(Lcom/sun/prism/Graphics;)V

    .line 1308
    move-object/from16 v24, v5

    sget-object v25, Lcom/sun/javafx/sg/prism/NGCanvas;->TEMP_ARC:Lcom/sun/javafx/geom/Arc2D;

    invoke-interface/range {v24 .. v25}, Lcom/sun/prism/Graphics;->draw(Lcom/sun/javafx/geom/Shape;)V

    goto/16 :goto_0

    .line 1316
    .end local v9    # "x":F
    .end local v10    # "y":F
    .end local v11    # "w":F
    .end local v12    # "h":F
    .end local v13    # "as":F
    .end local v14    # "ae":F
    :pswitch_f
    move-object/from16 v24, v4

    invoke-virtual/range {v24 .. v24}, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->getFloat()F

    move-result v24

    move/from16 v9, v24

    .line 1317
    .local v9, "dx":F
    move-object/from16 v24, v4

    invoke-virtual/range {v24 .. v24}, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->getFloat()F

    move-result v24

    move/from16 v10, v24

    .line 1318
    .local v10, "dy":F
    move-object/from16 v24, v4

    invoke-virtual/range {v24 .. v24}, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->getFloat()F

    move-result v24

    move/from16 v11, v24

    .line 1319
    .local v11, "dw":F
    move-object/from16 v24, v4

    invoke-virtual/range {v24 .. v24}, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->getFloat()F

    move-result v24

    move/from16 v12, v24

    .line 1320
    .local v12, "dh":F
    move-object/from16 v24, v4

    invoke-virtual/range {v24 .. v24}, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->getObject()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/sun/prism/Image;

    move-object/from16 v13, v24

    .line 1322
    .local v13, "img":Lcom/sun/prism/Image;
    move/from16 v24, v3

    const/16 v25, 0x32

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_f

    .line 1323
    const/16 v24, 0x0

    move/from16 v35, v24

    move/from16 v24, v35

    move/from16 v25, v35

    move/from16 v15, v25

    .local v15, "sy":F
    move/from16 v14, v24

    .line 1324
    .local v14, "sx":F
    move-object/from16 v24, v13

    invoke-virtual/range {v24 .. v24}, Lcom/sun/prism/Image;->getWidth()I

    move-result v24

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    move/from16 v16, v24

    .line 1325
    .local v16, "sw":F
    move-object/from16 v24, v13

    invoke-virtual/range {v24 .. v24}, Lcom/sun/prism/Image;->getHeight()I

    move-result v24

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    move/from16 v17, v24

    .line 1339
    .local v17, "sh":F
    :cond_d
    :goto_2
    move-object/from16 v24, v6

    if-eqz v24, :cond_e

    .line 1340
    move-object/from16 v24, v6

    move/from16 v25, v9

    move/from16 v26, v10

    move/from16 v27, v9

    move/from16 v28, v11

    add-float v27, v27, v28

    move/from16 v28, v10

    move/from16 v29, v12

    add-float v28, v28, v29

    invoke-virtual/range {v24 .. v28}, Lcom/sun/javafx/geom/RectBounds;->setBounds(FFFF)V

    .line 1341
    const/16 v24, 0x1

    move/from16 v8, v24

    .line 1343
    :cond_e
    move-object/from16 v24, v5

    if-eqz v24, :cond_1

    .line 1344
    move-object/from16 v24, v5

    invoke-interface/range {v24 .. v24}, Lcom/sun/prism/Graphics;->getResourceFactory()Lcom/sun/prism/ResourceFactory;

    move-result-object v24

    move-object/from16 v18, v24

    .line 1345
    .local v18, "factory":Lcom/sun/prism/ResourceFactory;
    move-object/from16 v24, v18

    move-object/from16 v25, v13

    sget-object v26, Lcom/sun/prism/Texture$WrapMode;->CLAMP_TO_EDGE:Lcom/sun/prism/Texture$WrapMode;

    .line 1346
    invoke-interface/range {v24 .. v26}, Lcom/sun/prism/ResourceFactory;->getCachedTexture(Lcom/sun/prism/Image;Lcom/sun/prism/Texture$WrapMode;)Lcom/sun/prism/Texture;

    move-result-object v24

    move-object/from16 v19, v24

    .line 1347
    .local v19, "tex":Lcom/sun/prism/Texture;
    move-object/from16 v24, v5

    move-object/from16 v25, v19

    move/from16 v26, v9

    move/from16 v27, v10

    move/from16 v28, v9

    move/from16 v29, v11

    add-float v28, v28, v29

    move/from16 v29, v10

    move/from16 v30, v12

    add-float v29, v29, v30

    move/from16 v30, v14

    move/from16 v31, v15

    move/from16 v32, v14

    move/from16 v33, v16

    add-float v32, v32, v33

    move/from16 v33, v15

    move/from16 v34, v17

    add-float v33, v33, v34

    invoke-interface/range {v24 .. v33}, Lcom/sun/prism/Graphics;->drawTexture(Lcom/sun/prism/Texture;FFFFFFFF)V

    .line 1350
    move-object/from16 v24, v19

    invoke-interface/range {v24 .. v24}, Lcom/sun/prism/Texture;->unlock()V

    .line 1351
    goto/16 :goto_0

    .line 1327
    .end local v14    # "sx":F
    .end local v15    # "sy":F
    .end local v16    # "sw":F
    .end local v17    # "sh":F
    .end local v18    # "factory":Lcom/sun/prism/ResourceFactory;
    .end local v19    # "tex":Lcom/sun/prism/Texture;
    :cond_f
    move-object/from16 v24, v4

    invoke-virtual/range {v24 .. v24}, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->getFloat()F

    move-result v24

    move/from16 v14, v24

    .line 1328
    .restart local v14    # "sx":F
    move-object/from16 v24, v4

    invoke-virtual/range {v24 .. v24}, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->getFloat()F

    move-result v24

    move/from16 v15, v24

    .line 1329
    .restart local v15    # "sy":F
    move-object/from16 v24, v4

    invoke-virtual/range {v24 .. v24}, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->getFloat()F

    move-result v24

    move/from16 v16, v24

    .line 1330
    .restart local v16    # "sw":F
    move-object/from16 v24, v4

    invoke-virtual/range {v24 .. v24}, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->getFloat()F

    move-result v24

    move/from16 v17, v24

    .line 1331
    .restart local v17    # "sh":F
    move-object/from16 v24, v13

    invoke-virtual/range {v24 .. v24}, Lcom/sun/prism/Image;->getPixelScale()F

    move-result v24

    move/from16 v18, v24

    .line 1332
    .local v18, "ps":F
    move/from16 v24, v18

    const/high16 v25, 0x3f800000    # 1.0f

    cmpl-float v24, v24, v25

    if-eqz v24, :cond_d

    .line 1333
    move/from16 v24, v14

    move/from16 v25, v18

    mul-float v24, v24, v25

    move/from16 v14, v24

    .line 1334
    move/from16 v24, v15

    move/from16 v25, v18

    mul-float v24, v24, v25

    move/from16 v15, v24

    .line 1335
    move/from16 v24, v16

    move/from16 v25, v18

    mul-float v24, v24, v25

    move/from16 v16, v24

    .line 1336
    move/from16 v24, v17

    move/from16 v25, v18

    mul-float v24, v24, v25

    move/from16 v17, v24

    goto/16 :goto_2

    .line 1357
    .end local v9    # "dx":F
    .end local v10    # "dy":F
    .end local v11    # "dw":F
    .end local v12    # "dh":F
    .end local v13    # "img":Lcom/sun/prism/Image;
    .end local v14    # "sx":F
    .end local v15    # "sy":F
    .end local v16    # "sw":F
    .end local v17    # "sh":F
    .end local v18    # "ps":F
    :pswitch_10
    move-object/from16 v24, v4

    invoke-virtual/range {v24 .. v24}, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->getFloat()F

    move-result v24

    move/from16 v9, v24

    .line 1358
    .local v9, "x":F
    move-object/from16 v24, v4

    invoke-virtual/range {v24 .. v24}, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->getFloat()F

    move-result v24

    move/from16 v10, v24

    .line 1359
    .local v10, "y":F
    move-object/from16 v24, v4

    invoke-virtual/range {v24 .. v24}, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->getFloat()F

    move-result v24

    move/from16 v11, v24

    .line 1360
    .local v11, "maxWidth":F
    move-object/from16 v24, v4

    invoke-virtual/range {v24 .. v24}, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->getBoolean()Z

    move-result v24

    move/from16 v12, v24

    .line 1361
    .local v12, "rtl":Z
    move-object/from16 v24, v4

    invoke-virtual/range {v24 .. v24}, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->getObject()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/String;

    move-object/from16 v13, v24

    .line 1362
    .local v13, "string":Ljava/lang/String;
    move/from16 v24, v12

    if-eqz v24, :cond_14

    const/16 v24, 0x800

    :goto_3
    move/from16 v14, v24

    .line 1365
    .local v14, "dir":I
    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/sun/javafx/sg/prism/NGCanvas;->textLayout:Lcom/sun/javafx/text/PrismTextLayout;

    move-object/from16 v24, v0

    move-object/from16 v25, v13

    move-object/from16 v26, v2

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/sun/javafx/sg/prism/NGCanvas;->pgfont:Lcom/sun/javafx/font/PGFont;

    move-object/from16 v26, v0

    invoke-virtual/range {v24 .. v26}, Lcom/sun/javafx/text/PrismTextLayout;->setContent(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v24

    .line 1366
    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/sun/javafx/sg/prism/NGCanvas;->textLayout:Lcom/sun/javafx/text/PrismTextLayout;

    move-object/from16 v24, v0

    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget v0, v0, Lcom/sun/javafx/sg/prism/NGCanvas;->align:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Lcom/sun/javafx/text/PrismTextLayout;->setAlignment(I)Z

    move-result v24

    .line 1367
    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/sun/javafx/sg/prism/NGCanvas;->textLayout:Lcom/sun/javafx/text/PrismTextLayout;

    move-object/from16 v24, v0

    move/from16 v25, v14

    invoke-virtual/range {v24 .. v25}, Lcom/sun/javafx/text/PrismTextLayout;->setDirection(I)Z

    move-result v24

    .line 1368
    const/16 v24, 0x0

    move/from16 v15, v24

    .local v15, "xAlign":F
    const/16 v24, 0x0

    move/from16 v16, v24

    .line 1369
    .local v16, "yAlign":F
    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/sun/javafx/sg/prism/NGCanvas;->textLayout:Lcom/sun/javafx/text/PrismTextLayout;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/sun/javafx/text/PrismTextLayout;->getBounds()Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v24

    move-object/from16 v17, v24

    .line 1370
    .local v17, "layoutBounds":Lcom/sun/javafx/geom/BaseBounds;
    move-object/from16 v24, v17

    invoke-virtual/range {v24 .. v24}, Lcom/sun/javafx/geom/BaseBounds;->getWidth()F

    move-result v24

    move/from16 v18, v24

    .line 1371
    .local v18, "layoutWidth":F
    move-object/from16 v24, v17

    invoke-virtual/range {v24 .. v24}, Lcom/sun/javafx/geom/BaseBounds;->getHeight()F

    move-result v24

    move/from16 v19, v24

    .line 1372
    .local v19, "layoutHeight":F
    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget v0, v0, Lcom/sun/javafx/sg/prism/NGCanvas;->align:I

    move/from16 v24, v0

    packed-switch v24, :pswitch_data_2

    .line 1376
    :goto_4
    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget v0, v0, Lcom/sun/javafx/sg/prism/NGCanvas;->baseline:I

    move/from16 v24, v0

    packed-switch v24, :pswitch_data_3

    .line 1381
    :goto_5
    const/high16 v24, 0x3f800000    # 1.0f

    move/from16 v20, v24

    .line 1382
    .local v20, "scaleX":F
    const/16 v24, 0x0

    move/from16 v21, v24

    .line 1383
    .local v21, "layoutX":F
    move/from16 v24, v10

    move/from16 v25, v16

    sub-float v24, v24, v25

    move/from16 v22, v24

    .line 1384
    .local v22, "layoutY":F
    move/from16 v24, v11

    move/from16 v0, v24

    float-to-double v0, v0

    move-wide/from16 v24, v0

    const-wide/16 v26, 0x0

    cmpl-double v24, v24, v26

    if-lez v24, :cond_16

    move/from16 v24, v18

    move/from16 v25, v11

    cmpl-float v24, v24, v25

    if-lez v24, :cond_16

    .line 1385
    move/from16 v24, v11

    move/from16 v25, v18

    div-float v24, v24, v25

    move/from16 v23, v24

    .line 1386
    .local v23, "sx":F
    move/from16 v24, v12

    if-eqz v24, :cond_15

    .line 1387
    move/from16 v24, v9

    move/from16 v25, v11

    add-float v24, v24, v25

    move/from16 v25, v23

    div-float v24, v24, v25

    move/from16 v25, v15

    sub-float v24, v24, v25

    move/from16 v0, v24

    neg-float v0, v0

    move/from16 v24, v0

    move/from16 v21, v24

    .line 1388
    move/from16 v24, v23

    move/from16 v0, v24

    neg-float v0, v0

    move/from16 v24, v0

    move/from16 v20, v24

    .line 1393
    .line 1401
    .end local v23    # "sx":F
    :goto_6
    move-object/from16 v24, v6

    if-eqz v24, :cond_10

    .line 1402
    move-object/from16 v24, v2

    move-object/from16 v25, v6

    move-object/from16 v26, v2

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/sun/javafx/sg/prism/NGCanvas;->transform:Lcom/sun/javafx/geom/transform/Affine2D;

    move-object/from16 v26, v0

    move/from16 v27, v20

    move/from16 v28, v21

    move/from16 v29, v22

    move/from16 v30, v3

    invoke-virtual/range {v24 .. v30}, Lcom/sun/javafx/sg/prism/NGCanvas;->computeTextLayoutBounds(Lcom/sun/javafx/geom/RectBounds;Lcom/sun/javafx/geom/transform/BaseTransform;FFFI)V

    .line 1404
    :cond_10
    move-object/from16 v24, v5

    if-eqz v24, :cond_1

    .line 1405
    move/from16 v24, v20

    const/high16 v25, 0x3f800000    # 1.0f

    cmpl-float v24, v24, v25

    if-eqz v24, :cond_11

    .line 1406
    move-object/from16 v24, v5

    move/from16 v25, v20

    const/high16 v26, 0x3f800000    # 1.0f

    invoke-interface/range {v24 .. v26}, Lcom/sun/prism/Graphics;->scale(FF)V

    .line 1408
    :cond_11
    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/sun/javafx/sg/prism/NGCanvas;->ngtext:Lcom/sun/javafx/sg/prism/NGText;

    move-object/from16 v24, v0

    move/from16 v25, v21

    move/from16 v0, v25

    neg-float v0, v0

    move/from16 v25, v0

    move/from16 v26, v22

    move/from16 v0, v26

    neg-float v0, v0

    move/from16 v26, v0

    invoke-virtual/range {v24 .. v26}, Lcom/sun/javafx/sg/prism/NGText;->setLayoutLocation(FF)V

    .line 1409
    move/from16 v24, v3

    const/16 v25, 0x1e

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_18

    .line 1410
    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/sun/javafx/sg/prism/NGCanvas;->ngtext:Lcom/sun/javafx/sg/prism/NGText;

    move-object/from16 v24, v0

    sget-object v25, Lcom/sun/javafx/sg/prism/NGShape$Mode;->FILL:Lcom/sun/javafx/sg/prism/NGShape$Mode;

    invoke-virtual/range {v24 .. v25}, Lcom/sun/javafx/sg/prism/NGText;->setMode(Lcom/sun/javafx/sg/prism/NGShape$Mode;)V

    .line 1411
    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/sun/javafx/sg/prism/NGCanvas;->ngtext:Lcom/sun/javafx/sg/prism/NGText;

    move-object/from16 v24, v0

    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/sun/javafx/sg/prism/NGCanvas;->fillPaint:Lcom/sun/prism/paint/Paint;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Lcom/sun/javafx/sg/prism/NGText;->setFillPaint(Ljava/lang/Object;)V

    .line 1412
    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/sun/javafx/sg/prism/NGCanvas;->fillPaint:Lcom/sun/prism/paint/Paint;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/sun/prism/paint/Paint;->isProportional()Z

    move-result v24

    if-nez v24, :cond_12

    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget v0, v0, Lcom/sun/javafx/sg/prism/NGCanvas;->smoothing:I

    move/from16 v24, v0

    sget-byte v25, Lcom/sun/javafx/sg/prism/NGCanvas;->SMOOTH_LCD:B

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_13

    .line 1413
    :cond_12
    new-instance v24, Lcom/sun/javafx/geom/RectBounds;

    move-object/from16 v35, v24

    move-object/from16 v24, v35

    move-object/from16 v25, v35

    invoke-direct/range {v25 .. v25}, Lcom/sun/javafx/geom/RectBounds;-><init>()V

    move-object/from16 v23, v24

    .line 1414
    .local v23, "textBounds":Lcom/sun/javafx/geom/RectBounds;
    move-object/from16 v24, v2

    move-object/from16 v25, v23

    sget-object v26, Lcom/sun/javafx/geom/transform/BaseTransform;->IDENTITY_TRANSFORM:Lcom/sun/javafx/geom/transform/BaseTransform;

    const/high16 v27, 0x3f800000    # 1.0f

    move/from16 v28, v21

    move/from16 v29, v22

    move/from16 v30, v3

    invoke-virtual/range {v24 .. v30}, Lcom/sun/javafx/sg/prism/NGCanvas;->computeTextLayoutBounds(Lcom/sun/javafx/geom/RectBounds;Lcom/sun/javafx/geom/transform/BaseTransform;FFFI)V

    .line 1416
    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/sun/javafx/sg/prism/NGCanvas;->ngtext:Lcom/sun/javafx/sg/prism/NGText;

    move-object/from16 v24, v0

    move-object/from16 v25, v23

    invoke-virtual/range {v24 .. v25}, Lcom/sun/javafx/sg/prism/NGText;->setContentBounds(Lcom/sun/javafx/geom/BaseBounds;)V

    .line 1417
    .line 1430
    .end local v23    # "textBounds":Lcom/sun/javafx/geom/RectBounds;
    :cond_13
    :goto_7
    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/sun/javafx/sg/prism/NGCanvas;->ngtext:Lcom/sun/javafx/sg/prism/NGText;

    move-object/from16 v24, v0

    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/sun/javafx/sg/prism/NGCanvas;->pgfont:Lcom/sun/javafx/font/PGFont;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Lcom/sun/javafx/sg/prism/NGText;->setFont(Ljava/lang/Object;)V

    .line 1431
    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/sun/javafx/sg/prism/NGCanvas;->ngtext:Lcom/sun/javafx/sg/prism/NGText;

    move-object/from16 v24, v0

    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget v0, v0, Lcom/sun/javafx/sg/prism/NGCanvas;->smoothing:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Lcom/sun/javafx/sg/prism/NGText;->setFontSmoothingType(I)V

    .line 1432
    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/sun/javafx/sg/prism/NGCanvas;->ngtext:Lcom/sun/javafx/sg/prism/NGText;

    move-object/from16 v24, v0

    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/sun/javafx/sg/prism/NGCanvas;->textLayout:Lcom/sun/javafx/text/PrismTextLayout;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/sun/javafx/text/PrismTextLayout;->getRuns()[Lcom/sun/javafx/scene/text/GlyphList;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lcom/sun/javafx/sg/prism/NGText;->setGlyphs([Ljava/lang/Object;)V

    .line 1433
    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/sun/javafx/sg/prism/NGCanvas;->ngtext:Lcom/sun/javafx/sg/prism/NGText;

    move-object/from16 v24, v0

    move-object/from16 v25, v5

    invoke-virtual/range {v24 .. v25}, Lcom/sun/javafx/sg/prism/NGText;->renderContent(Lcom/sun/prism/Graphics;)V

    goto/16 :goto_0

    .line 1362
    .end local v14    # "dir":I
    .end local v15    # "xAlign":F
    .end local v16    # "yAlign":F
    .end local v17    # "layoutBounds":Lcom/sun/javafx/geom/BaseBounds;
    .end local v18    # "layoutWidth":F
    .end local v19    # "layoutHeight":F
    .end local v20    # "scaleX":F
    .end local v21    # "layoutX":F
    .end local v22    # "layoutY":F
    :cond_14
    const/16 v24, 0x400

    goto/16 :goto_3

    .line 1373
    .restart local v14    # "dir":I
    .restart local v15    # "xAlign":F
    .restart local v16    # "yAlign":F
    .restart local v17    # "layoutBounds":Lcom/sun/javafx/geom/BaseBounds;
    .restart local v18    # "layoutWidth":F
    .restart local v19    # "layoutHeight":F
    :pswitch_11
    move/from16 v24, v18

    move/from16 v15, v24

    goto/16 :goto_4

    .line 1374
    :pswitch_12
    move/from16 v24, v18

    const/high16 v25, 0x40000000    # 2.0f

    div-float v24, v24, v25

    move/from16 v15, v24

    goto/16 :goto_4

    .line 1377
    :pswitch_13
    move-object/from16 v24, v17

    invoke-virtual/range {v24 .. v24}, Lcom/sun/javafx/geom/BaseBounds;->getMinY()F

    move-result v24

    move/from16 v0, v24

    neg-float v0, v0

    move/from16 v24, v0

    move/from16 v16, v24

    goto/16 :goto_5

    .line 1378
    :pswitch_14
    move/from16 v24, v19

    const/high16 v25, 0x40000000    # 2.0f

    div-float v24, v24, v25

    move/from16 v16, v24

    goto/16 :goto_5

    .line 1379
    :pswitch_15
    move/from16 v24, v19

    move/from16 v16, v24

    goto/16 :goto_5

    .line 1390
    .restart local v20    # "scaleX":F
    .restart local v21    # "layoutX":F
    .restart local v22    # "layoutY":F
    .local v23, "sx":F
    :cond_15
    move/from16 v24, v9

    move/from16 v25, v23

    div-float v24, v24, v25

    move/from16 v25, v15

    sub-float v24, v24, v25

    move/from16 v21, v24

    .line 1391
    move/from16 v24, v23

    move/from16 v20, v24

    goto/16 :goto_6

    .line 1394
    .end local v23    # "sx":F
    :cond_16
    move/from16 v24, v12

    if-eqz v24, :cond_17

    .line 1395
    move/from16 v24, v9

    move/from16 v25, v15

    sub-float v24, v24, v25

    move/from16 v25, v18

    add-float v24, v24, v25

    move/from16 v0, v24

    neg-float v0, v0

    move/from16 v24, v0

    move/from16 v21, v24

    .line 1396
    const/high16 v24, -0x40800000    # -1.0f

    move/from16 v20, v24

    goto/16 :goto_6

    .line 1398
    :cond_17
    move/from16 v24, v9

    move/from16 v25, v15

    sub-float v24, v24, v25

    move/from16 v21, v24

    goto/16 :goto_6

    .line 1420
    :cond_18
    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/sun/javafx/sg/prism/NGCanvas;->strokePaint:Lcom/sun/prism/paint/Paint;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/sun/prism/paint/Paint;->isProportional()Z

    move-result v24

    if-eqz v24, :cond_19

    .line 1421
    new-instance v24, Lcom/sun/javafx/geom/RectBounds;

    move-object/from16 v35, v24

    move-object/from16 v24, v35

    move-object/from16 v25, v35

    invoke-direct/range {v25 .. v25}, Lcom/sun/javafx/geom/RectBounds;-><init>()V

    move-object/from16 v23, v24

    .line 1422
    .local v23, "textBounds":Lcom/sun/javafx/geom/RectBounds;
    move-object/from16 v24, v2

    move-object/from16 v25, v23

    sget-object v26, Lcom/sun/javafx/geom/transform/BaseTransform;->IDENTITY_TRANSFORM:Lcom/sun/javafx/geom/transform/BaseTransform;

    const/high16 v27, 0x3f800000    # 1.0f

    move/from16 v28, v21

    move/from16 v29, v22

    move/from16 v30, v3

    invoke-virtual/range {v24 .. v30}, Lcom/sun/javafx/sg/prism/NGCanvas;->computeTextLayoutBounds(Lcom/sun/javafx/geom/RectBounds;Lcom/sun/javafx/geom/transform/BaseTransform;FFFI)V

    .line 1424
    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/sun/javafx/sg/prism/NGCanvas;->ngtext:Lcom/sun/javafx/sg/prism/NGText;

    move-object/from16 v24, v0

    move-object/from16 v25, v23

    invoke-virtual/range {v24 .. v25}, Lcom/sun/javafx/sg/prism/NGText;->setContentBounds(Lcom/sun/javafx/geom/BaseBounds;)V

    .line 1426
    .end local v23    # "textBounds":Lcom/sun/javafx/geom/RectBounds;
    :cond_19
    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/sun/javafx/sg/prism/NGCanvas;->ngtext:Lcom/sun/javafx/sg/prism/NGText;

    move-object/from16 v24, v0

    sget-object v25, Lcom/sun/javafx/sg/prism/NGShape$Mode;->STROKE:Lcom/sun/javafx/sg/prism/NGShape$Mode;

    invoke-virtual/range {v24 .. v25}, Lcom/sun/javafx/sg/prism/NGText;->setMode(Lcom/sun/javafx/sg/prism/NGShape$Mode;)V

    .line 1427
    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/sun/javafx/sg/prism/NGCanvas;->ngtext:Lcom/sun/javafx/sg/prism/NGText;

    move-object/from16 v24, v0

    move-object/from16 v25, v2

    invoke-direct/range {v25 .. v25}, Lcom/sun/javafx/sg/prism/NGCanvas;->getStroke()Lcom/sun/prism/BasicStroke;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lcom/sun/javafx/sg/prism/NGText;->setDrawStroke(Lcom/sun/prism/BasicStroke;)V

    .line 1428
    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/sun/javafx/sg/prism/NGCanvas;->ngtext:Lcom/sun/javafx/sg/prism/NGText;

    move-object/from16 v24, v0

    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/sun/javafx/sg/prism/NGCanvas;->strokePaint:Lcom/sun/prism/paint/Paint;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Lcom/sun/javafx/sg/prism/NGText;->setDrawPaint(Ljava/lang/Object;)V

    goto/16 :goto_7

    .line 1177
    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_5
        :pswitch_4
        :pswitch_5
        :pswitch_3
        :pswitch_5
        :pswitch_4
        :pswitch_d
        :pswitch_c
        :pswitch_e
        :pswitch_e
        :pswitch_10
        :pswitch_10
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_f
        :pswitch_f
    .end packed-switch

    .line 1233
    :pswitch_data_1
    .packed-switch 0x14
        :pswitch_7
        :pswitch_9
        :pswitch_b
        :pswitch_6
        :pswitch_8
        :pswitch_a
    .end packed-switch

    .line 1372
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_12
        :pswitch_11
    .end packed-switch

    .line 1376
    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_14
        :pswitch_13
        :pswitch_15
    .end packed-switch
.end method

.method protected hasOverlappingContents()Z
    .locals 2

    .prologue
    .line 527
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGCanvas;
    const/4 v1, 0x1

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/sg/prism/NGCanvas;
    return v0
.end method

.method protected renderContent(Lcom/sun/prism/Graphics;)V
    .locals 16

    .prologue
    .line 602
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGCanvas;
    move-object/from16 v1, p1

    .local v1, "g":Lcom/sun/prism/Graphics;
    move-object v4, v0

    move-object v5, v1

    invoke-direct {v4, v5}, Lcom/sun/javafx/sg/prism/NGCanvas;->printedCanvas(Lcom/sun/prism/Graphics;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 619
    :goto_0
    return-void

    .line 603
    :cond_0
    move-object v4, v0

    move-object v5, v1

    invoke-direct {v4, v5}, Lcom/sun/javafx/sg/prism/NGCanvas;->initCanvas(Lcom/sun/prism/Graphics;)V

    .line 604
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/sg/prism/NGCanvas;->cv:Lcom/sun/javafx/sg/prism/NGCanvas$RenderBuf;

    iget-object v4, v4, Lcom/sun/javafx/sg/prism/NGCanvas$RenderBuf;->tex:Lcom/sun/prism/RTTexture;

    if-eqz v4, :cond_2

    .line 605
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/sg/prism/NGCanvas;->thebuf:Lcom/sun/javafx/sg/prism/GrowableDataBuffer;

    if-eqz v4, :cond_1

    .line 606
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/sg/prism/NGCanvas;->thebuf:Lcom/sun/javafx/sg/prism/GrowableDataBuffer;

    invoke-direct {v4, v5}, Lcom/sun/javafx/sg/prism/NGCanvas;->renderStream(Lcom/sun/javafx/sg/prism/GrowableDataBuffer;)V

    .line 607
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/sg/prism/NGCanvas;->thebuf:Lcom/sun/javafx/sg/prism/GrowableDataBuffer;

    invoke-static {v4}, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->returnBuffer(Lcom/sun/javafx/sg/prism/GrowableDataBuffer;)V

    .line 608
    move-object v4, v0

    const/4 v5, 0x0

    iput-object v5, v4, Lcom/sun/javafx/sg/prism/NGCanvas;->thebuf:Lcom/sun/javafx/sg/prism/GrowableDataBuffer;

    .line 610
    :cond_1
    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/sg/prism/NGCanvas;->tw:I

    int-to-float v4, v4

    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/sg/prism/NGCanvas;->highestPixelScale:F

    div-float/2addr v4, v5

    move v2, v4

    .line 611
    .local v2, "dw":F
    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/sg/prism/NGCanvas;->th:I

    int-to-float v4, v4

    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/sg/prism/NGCanvas;->highestPixelScale:F

    div-float/2addr v4, v5

    move v3, v4

    .line 612
    .local v3, "dh":F
    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/sg/prism/NGCanvas;->cv:Lcom/sun/javafx/sg/prism/NGCanvas$RenderBuf;

    iget-object v5, v5, Lcom/sun/javafx/sg/prism/NGCanvas$RenderBuf;->tex:Lcom/sun/prism/RTTexture;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v8, v2

    move v9, v3

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v12, v0

    iget v12, v12, Lcom/sun/javafx/sg/prism/NGCanvas;->tw:I

    int-to-float v12, v12

    move-object v13, v0

    iget v13, v13, Lcom/sun/javafx/sg/prism/NGCanvas;->th:I

    int-to-float v13, v13

    invoke-interface/range {v4 .. v13}, Lcom/sun/prism/Graphics;->drawTexture(Lcom/sun/prism/Texture;FFFFFFFF)V

    .line 616
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/sg/prism/NGCanvas;->cv:Lcom/sun/javafx/sg/prism/NGCanvas$RenderBuf;

    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/sg/prism/NGCanvas;->tw:I

    move-object v6, v0

    iget v6, v6, Lcom/sun/javafx/sg/prism/NGCanvas;->th:I

    invoke-static {v4, v5, v6}, Lcom/sun/javafx/sg/prism/NGCanvas$RenderBuf;->access$700(Lcom/sun/javafx/sg/prism/NGCanvas$RenderBuf;II)V

    .line 618
    .end local v2    # "dw":F
    .end local v3    # "dh":F
    :cond_2
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/sg/prism/NGCanvas;->temp:Lcom/sun/javafx/sg/prism/NGCanvas$RenderBuf;

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/sg/prism/NGCanvas;->clip:Lcom/sun/javafx/sg/prism/NGCanvas$RenderBuf;

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/sg/prism/NGCanvas;->cv:Lcom/sun/javafx/sg/prism/NGCanvas$RenderBuf;

    const/4 v7, 0x0

    move-object v14, v6

    move-object v15, v7

    move-object v6, v15

    move-object v7, v14

    move-object v8, v15

    iput-object v8, v7, Lcom/sun/javafx/sg/prism/NGCanvas$RenderBuf;->g:Lcom/sun/prism/Graphics;

    move-object v14, v5

    move-object v15, v6

    move-object v5, v15

    move-object v6, v14

    move-object v7, v15

    iput-object v7, v6, Lcom/sun/javafx/sg/prism/NGCanvas$RenderBuf;->g:Lcom/sun/prism/Graphics;

    iput-object v5, v4, Lcom/sun/javafx/sg/prism/NGCanvas$RenderBuf;->g:Lcom/sun/prism/Graphics;

    .line 619
    goto :goto_0
.end method

.method public renderForcedContent(Lcom/sun/prism/Graphics;)V
    .locals 9

    .prologue
    .line 623
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGCanvas;
    move-object v1, p1

    .local v1, "gOptional":Lcom/sun/prism/Graphics;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/sg/prism/NGCanvas;->thebuf:Lcom/sun/javafx/sg/prism/GrowableDataBuffer;

    if-eqz v2, :cond_1

    .line 624
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/sg/prism/NGCanvas;->initCanvas(Lcom/sun/prism/Graphics;)V

    .line 625
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/sg/prism/NGCanvas;->cv:Lcom/sun/javafx/sg/prism/NGCanvas$RenderBuf;

    iget-object v2, v2, Lcom/sun/javafx/sg/prism/NGCanvas$RenderBuf;->tex:Lcom/sun/prism/RTTexture;

    if-eqz v2, :cond_0

    .line 626
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/sg/prism/NGCanvas;->thebuf:Lcom/sun/javafx/sg/prism/GrowableDataBuffer;

    invoke-direct {v2, v3}, Lcom/sun/javafx/sg/prism/NGCanvas;->renderStream(Lcom/sun/javafx/sg/prism/GrowableDataBuffer;)V

    .line 627
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/sg/prism/NGCanvas;->thebuf:Lcom/sun/javafx/sg/prism/GrowableDataBuffer;

    invoke-static {v2}, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->returnBuffer(Lcom/sun/javafx/sg/prism/GrowableDataBuffer;)V

    .line 628
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/sun/javafx/sg/prism/NGCanvas;->thebuf:Lcom/sun/javafx/sg/prism/GrowableDataBuffer;

    .line 629
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/sg/prism/NGCanvas;->cv:Lcom/sun/javafx/sg/prism/NGCanvas$RenderBuf;

    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/sg/prism/NGCanvas;->tw:I

    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/sg/prism/NGCanvas;->th:I

    invoke-static {v2, v3, v4}, Lcom/sun/javafx/sg/prism/NGCanvas$RenderBuf;->access$700(Lcom/sun/javafx/sg/prism/NGCanvas$RenderBuf;II)V

    .line 631
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/sg/prism/NGCanvas;->temp:Lcom/sun/javafx/sg/prism/NGCanvas$RenderBuf;

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/sg/prism/NGCanvas;->clip:Lcom/sun/javafx/sg/prism/NGCanvas$RenderBuf;

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/sg/prism/NGCanvas;->cv:Lcom/sun/javafx/sg/prism/NGCanvas$RenderBuf;

    const/4 v5, 0x0

    move-object v7, v4

    move-object v8, v5

    move-object v4, v8

    move-object v5, v7

    move-object v6, v8

    iput-object v6, v5, Lcom/sun/javafx/sg/prism/NGCanvas$RenderBuf;->g:Lcom/sun/prism/Graphics;

    move-object v7, v3

    move-object v8, v4

    move-object v3, v8

    move-object v4, v7

    move-object v5, v8

    iput-object v5, v4, Lcom/sun/javafx/sg/prism/NGCanvas$RenderBuf;->g:Lcom/sun/prism/Graphics;

    iput-object v3, v2, Lcom/sun/javafx/sg/prism/NGCanvas$RenderBuf;->g:Lcom/sun/prism/Graphics;

    .line 633
    :cond_1
    return-void
.end method

.method public updateBounds(FF)V
    .locals 6

    .prologue
    .line 1520
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGCanvas;
    move v1, p1

    .local v1, "w":F
    move v2, p2

    .local v2, "h":F
    move-object v3, v0

    move v4, v1

    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/sg/prism/NGCanvas;->highestPixelScale:F

    mul-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    iput v4, v3, Lcom/sun/javafx/sg/prism/NGCanvas;->tw:I

    .line 1521
    move-object v3, v0

    move v4, v2

    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/sg/prism/NGCanvas;->highestPixelScale:F

    mul-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    iput v4, v3, Lcom/sun/javafx/sg/prism/NGCanvas;->th:I

    .line 1522
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/sg/prism/NGCanvas;->geometryChanged()V

    .line 1523
    return-void
.end method

.method public updateRendering(Lcom/sun/javafx/sg/prism/GrowableDataBuffer;)Z
    .locals 6

    .prologue
    .line 1531
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGCanvas;
    move-object v1, p1

    .local v1, "buf":Lcom/sun/javafx/sg/prism/GrowableDataBuffer;
    move-object v4, v1

    invoke-virtual {v4}, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1532
    move-object v4, v1

    invoke-static {v4}, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->returnBuffer(Lcom/sun/javafx/sg/prism/GrowableDataBuffer;)V

    .line 1533
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/sg/prism/NGCanvas;->thebuf:Lcom/sun/javafx/sg/prism/GrowableDataBuffer;

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    :goto_0
    move v0, v4

    .line 1549
    .end local v0    # "this":Lcom/sun/javafx/sg/prism/NGCanvas;
    :goto_1
    return v0

    .line 1533
    .restart local v0    # "this":Lcom/sun/javafx/sg/prism/NGCanvas;
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 1535
    :cond_1
    move-object v4, v1

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->peekByte(I)B

    move-result v4

    const/16 v5, 0x46

    if-ne v4, v5, :cond_3

    const/4 v4, 0x1

    :goto_2
    move v2, v4

    .line 1537
    .local v2, "reset":Z
    move v4, v2

    if-nez v4, :cond_2

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/sg/prism/NGCanvas;->thebuf:Lcom/sun/javafx/sg/prism/GrowableDataBuffer;

    if-nez v4, :cond_4

    .line 1538
    :cond_2
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/sg/prism/NGCanvas;->thebuf:Lcom/sun/javafx/sg/prism/GrowableDataBuffer;

    move-object v3, v4

    .line 1539
    .local v3, "retbuf":Lcom/sun/javafx/sg/prism/GrowableDataBuffer;
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/sun/javafx/sg/prism/NGCanvas;->thebuf:Lcom/sun/javafx/sg/prism/GrowableDataBuffer;

    .line 1544
    :goto_3
    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/javafx/sg/prism/NGCanvas;->geometryChanged()V

    .line 1545
    move-object v4, v3

    if-eqz v4, :cond_5

    .line 1546
    move-object v4, v3

    invoke-static {v4}, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->returnBuffer(Lcom/sun/javafx/sg/prism/GrowableDataBuffer;)V

    .line 1547
    const/4 v4, 0x1

    move v0, v4

    goto :goto_1

    .line 1535
    .end local v2    # "reset":Z
    .end local v3    # "retbuf":Lcom/sun/javafx/sg/prism/GrowableDataBuffer;
    :cond_3
    const/4 v4, 0x0

    goto :goto_2

    .line 1541
    .restart local v2    # "reset":Z
    :cond_4
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/sg/prism/NGCanvas;->thebuf:Lcom/sun/javafx/sg/prism/GrowableDataBuffer;

    move-object v5, v1

    invoke-virtual {v4, v5}, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->append(Lcom/sun/javafx/sg/prism/GrowableDataBuffer;)V

    .line 1542
    move-object v4, v1

    move-object v3, v4

    .restart local v3    # "retbuf":Lcom/sun/javafx/sg/prism/GrowableDataBuffer;
    goto :goto_3

    .line 1549
    :cond_5
    const/4 v4, 0x0

    move v0, v4

    goto :goto_1
.end method
