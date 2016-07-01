.class public Ljavafx/scene/text/Text;
.super Ljavafx/scene/shape/Shape;
.source "Text.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavafx/scene/text/Text$TextAttribute;,
        Ljavafx/scene/text/Text$StyleableProperties;
    }
.end annotation

.annotation runtime Ljavafx/beans/DefaultProperty;
    value = "text"
.end annotation


# static fields
.field private static final DEFAULT_BOUNDS_TYPE:Ljavafx/scene/text/TextBoundsType;

.field private static final DEFAULT_CARET_BIAS:Z = true

.field private static final DEFAULT_CARET_POSITION:I = -0x1

.field private static final DEFAULT_LINE_SPACING:D = 0.0

.field private static final DEFAULT_SELECTION_END:I = -0x1

.field private static final DEFAULT_SELECTION_FILL:Ljavafx/scene/paint/Color;

.field private static final DEFAULT_SELECTION_START:I = -0x1

.field private static final DEFAULT_STRIKETHROUGH:Z

.field private static final DEFAULT_TEXT_ALIGNMENT:Ljavafx/scene/text/TextAlignment;

.field private static final DEFAULT_TEXT_ORIGIN:Ljavafx/geometry/VPos;

.field private static final DEFAULT_UNDERLINE:Z

.field private static final EMPTY_PATH_ELEMENT_ARRAY:[Ljavafx/scene/shape/PathElement;


# instance fields
.field private attributes:Ljavafx/scene/text/Text$TextAttribute;

.field private boundsType:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/scene/text/TextBoundsType;",
            ">;"
        }
    .end annotation
.end field

.field private font:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/scene/text/Font;",
            ">;"
        }
    .end annotation
.end field

.field private fontSmoothingType:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/scene/text/FontSmoothingType;",
            ">;"
        }
    .end annotation
.end field

.field private isSpan:Z

.field private layout:Lcom/sun/javafx/scene/text/TextLayout;

.field private spanBounds:Lcom/sun/javafx/geom/BaseBounds;

.field private spanBoundsInvalid:Z

.field private text:Ljavafx/beans/property/StringProperty;

.field private textRuns:[Lcom/sun/javafx/scene/text/GlyphList;

.field private textSpan:Lcom/sun/javafx/scene/text/TextSpan;

.field private wrappingWidth:Ljavafx/beans/property/DoubleProperty;

.field private x:Ljavafx/beans/property/DoubleProperty;

.field private y:Ljavafx/beans/property/DoubleProperty;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 98
    const/4 v0, 0x0

    new-array v0, v0, [Ljavafx/scene/shape/PathElement;

    sput-object v0, Ljavafx/scene/text/Text;->EMPTY_PATH_ELEMENT_ARRAY:[Ljavafx/scene/shape/PathElement;

    .line 1518
    sget-object v0, Ljavafx/geometry/VPos;->BASELINE:Ljavafx/geometry/VPos;

    sput-object v0, Ljavafx/scene/text/Text;->DEFAULT_TEXT_ORIGIN:Ljavafx/geometry/VPos;

    .line 1519
    sget-object v0, Ljavafx/scene/text/TextBoundsType;->LOGICAL:Ljavafx/scene/text/TextBoundsType;

    sput-object v0, Ljavafx/scene/text/Text;->DEFAULT_BOUNDS_TYPE:Ljavafx/scene/text/TextBoundsType;

    .line 1522
    sget-object v0, Ljavafx/scene/text/TextAlignment;->LEFT:Ljavafx/scene/text/TextAlignment;

    sput-object v0, Ljavafx/scene/text/Text;->DEFAULT_TEXT_ALIGNMENT:Ljavafx/scene/text/TextAlignment;

    .line 1527
    sget-object v0, Ljavafx/scene/paint/Color;->WHITE:Ljavafx/scene/paint/Color;

    sput-object v0, Ljavafx/scene/text/Text;->DEFAULT_SELECTION_FILL:Ljavafx/scene/paint/Color;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    .line 114
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/text/Text;
    move-object v2, v0

    invoke-direct {v2}, Ljavafx/scene/shape/Shape;-><init>()V

    .line 242
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Ljavafx/scene/text/Text;->textRuns:[Lcom/sun/javafx/scene/text/GlyphList;

    .line 243
    move-object v2, v0

    new-instance v3, Lcom/sun/javafx/geom/RectBounds;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Lcom/sun/javafx/geom/RectBounds;-><init>()V

    iput-object v3, v2, Ljavafx/scene/text/Text;->spanBounds:Lcom/sun/javafx/geom/BaseBounds;

    .line 244
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Ljavafx/scene/text/Text;->spanBoundsInvalid:Z

    .line 115
    move-object v2, v0

    sget-object v3, Ljavafx/scene/AccessibleRole;->TEXT:Ljavafx/scene/AccessibleRole;

    invoke-virtual {v2, v3}, Ljavafx/scene/text/Text;->setAccessibleRole(Ljavafx/scene/AccessibleRole;)V

    .line 116
    move-object v2, v0

    invoke-static {v2}, Ljavafx/scene/text/Text$$Lambda$1;->lambdaFactory$(Ljavafx/scene/text/Text;)Ljavafx/beans/InvalidationListener;

    move-result-object v2

    move-object v1, v2

    .line 117
    .local v1, "listener":Ljavafx/beans/InvalidationListener;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/text/Text;->parentProperty()Ljavafx/beans/property/ReadOnlyObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ReadOnlyObjectProperty;->addListener(Ljavafx/beans/InvalidationListener;)V

    .line 118
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/text/Text;->managedProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/BooleanProperty;->addListener(Ljavafx/beans/InvalidationListener;)V

    .line 119
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/text/Text;->effectiveNodeOrientationProperty()Ljavafx/beans/property/ReadOnlyObjectProperty;

    move-result-object v2

    move-object v3, v0

    invoke-static {v3}, Ljavafx/scene/text/Text$$Lambda$2;->lambdaFactory$(Ljavafx/scene/text/Text;)Ljavafx/beans/InvalidationListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ReadOnlyObjectProperty;->addListener(Ljavafx/beans/InvalidationListener;)V

    .line 120
    move-object v2, v0

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljavafx/scene/text/Text;->setPickOnBounds(Z)V

    .line 121
    return-void
.end method

.method public constructor <init>(DDLjava/lang/String;)V
    .locals 11

    .prologue
    .line 140
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/text/Text;
    move-wide v2, p1

    .local v2, "x":D
    move-wide v4, p3

    .local v4, "y":D
    move-object/from16 v6, p5

    .local v6, "text":Ljava/lang/String;
    move-object v7, v1

    move-object v8, v6

    invoke-direct {v7, v8}, Ljavafx/scene/text/Text;-><init>(Ljava/lang/String;)V

    .line 141
    move-object v7, v1

    move-wide v8, v2

    invoke-virtual {v7, v8, v9}, Ljavafx/scene/text/Text;->setX(D)V

    .line 142
    move-object v7, v1

    move-wide v8, v4

    invoke-virtual {v7, v8, v9}, Ljavafx/scene/text/Text;->setY(D)V

    .line 143
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 128
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/text/Text;
    move-object v1, p1

    .local v1, "text":Ljava/lang/String;
    move-object v2, v0

    invoke-direct {v2}, Ljavafx/scene/text/Text;-><init>()V

    .line 129
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/scene/text/Text;->setText(Ljava/lang/String;)V

    .line 130
    return-void
.end method

.method static synthetic access$000(Ljavafx/scene/text/Text;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 95
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/text/Text;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/text/Text;->getTextInternal()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/text/Text;
    return-object v0
.end method

.method static synthetic access$100(Ljavafx/scene/text/Text;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 95
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/text/Text;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/text/Text;->getFontInternal()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/text/Text;
    return-object v0
.end method

.method static synthetic access$1000(Ljavafx/scene/text/Text;)Z
    .locals 2

    .prologue
    .line 95
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/text/Text;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/text/Text;->isSpan()Z

    move-result v1

    move v0, v1

    .end local v0    # "x0":Ljavafx/scene/text/Text;
    return v0
.end method

.method static synthetic access$1600(Ljavafx/scene/text/Text;Lcom/sun/javafx/scene/DirtyBits;)V
    .locals 4

    .prologue
    .line 95
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/text/Text;
    move-object v1, p1

    .local v1, "x1":Lcom/sun/javafx/scene/DirtyBits;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/scene/text/Text;->impl_markDirty(Lcom/sun/javafx/scene/DirtyBits;)V

    return-void
.end method

.method static synthetic access$200(Ljavafx/scene/text/Text;)V
    .locals 2

    .prologue
    .line 95
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/text/Text;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/text/Text;->needsFullTextLayout()V

    return-void
.end method

.method static synthetic access$2300(Ljavafx/scene/text/Text;)Ljavafx/beans/property/ObjectProperty;
    .locals 2

    .prologue
    .line 95
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/text/Text;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/text/Text;->font:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/text/Text;
    return-object v0
.end method

.method static synthetic access$2400(Ljavafx/scene/text/Text;)Ljavafx/scene/text/Text$TextAttribute;
    .locals 2

    .prologue
    .line 95
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/text/Text;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/text/Text;->attributes:Ljavafx/scene/text/Text$TextAttribute;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/text/Text;
    return-object v0
.end method

.method static synthetic access$2500(Ljavafx/scene/text/Text;)Ljavafx/beans/property/ObjectProperty;
    .locals 2

    .prologue
    .line 95
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/text/Text;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/text/Text;->fontSmoothingType:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/text/Text;
    return-object v0
.end method

.method static synthetic access$2600()Ljavafx/scene/text/TextBoundsType;
    .locals 1

    .prologue
    .line 95
    sget-object v0, Ljavafx/scene/text/Text;->DEFAULT_BOUNDS_TYPE:Ljavafx/scene/text/TextBoundsType;

    return-object v0
.end method

.method static synthetic access$2900()Ljavafx/geometry/VPos;
    .locals 1

    .prologue
    .line 95
    sget-object v0, Ljavafx/scene/text/Text;->DEFAULT_TEXT_ORIGIN:Ljavafx/geometry/VPos;

    return-object v0
.end method

.method static synthetic access$3200(Ljavafx/scene/text/Text;Lcom/sun/javafx/scene/DirtyBits;)V
    .locals 4

    .prologue
    .line 95
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/text/Text;
    move-object v1, p1

    .local v1, "x1":Lcom/sun/javafx/scene/DirtyBits;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/scene/text/Text;->impl_markDirty(Lcom/sun/javafx/scene/DirtyBits;)V

    return-void
.end method

.method static synthetic access$3400(Ljavafx/scene/text/Text;Lcom/sun/javafx/scene/DirtyBits;)V
    .locals 4

    .prologue
    .line 95
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/text/Text;
    move-object v1, p1

    .local v1, "x1":Lcom/sun/javafx/scene/DirtyBits;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/scene/text/Text;->impl_markDirty(Lcom/sun/javafx/scene/DirtyBits;)V

    return-void
.end method

.method static synthetic access$3500()Ljavafx/scene/text/TextAlignment;
    .locals 1

    .prologue
    .line 95
    sget-object v0, Ljavafx/scene/text/Text;->DEFAULT_TEXT_ALIGNMENT:Ljavafx/scene/text/TextAlignment;

    return-object v0
.end method

.method static synthetic access$3800(Ljavafx/scene/text/Text;)Lcom/sun/javafx/geom/BaseBounds;
    .locals 2

    .prologue
    .line 95
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/text/Text;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/text/Text;->getLogicalBounds()Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/text/Text;
    return-object v0
.end method

.method static synthetic access$3900(Ljavafx/scene/text/Text;III)[Ljavafx/scene/shape/PathElement;
    .locals 8

    .prologue
    .line 95
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/text/Text;
    move v1, p1

    .local v1, "x1":I
    move v2, p2

    .local v2, "x2":I
    move v3, p3

    .local v3, "x3":I
    move-object v4, v0

    move v5, v1

    move v6, v2

    move v7, v3

    invoke-direct {v4, v5, v6, v7}, Ljavafx/scene/text/Text;->getRange(III)[Ljavafx/scene/shape/PathElement;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "x0":Ljavafx/scene/text/Text;
    return-object v0
.end method

.method static synthetic access$400(Ljavafx/scene/text/Text;Lcom/sun/javafx/scene/DirtyBits;)V
    .locals 4

    .prologue
    .line 95
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/text/Text;
    move-object v1, p1

    .local v1, "x1":Lcom/sun/javafx/scene/DirtyBits;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/scene/text/Text;->impl_markDirty(Lcom/sun/javafx/scene/DirtyBits;)V

    return-void
.end method

.method static synthetic access$4000()Ljavafx/scene/paint/Color;
    .locals 1

    .prologue
    .line 95
    sget-object v0, Ljavafx/scene/text/Text;->DEFAULT_SELECTION_FILL:Ljavafx/scene/paint/Color;

    return-object v0
.end method

.method static synthetic access$4100(Ljavafx/scene/text/Text;Lcom/sun/javafx/scene/DirtyBits;)V
    .locals 4

    .prologue
    .line 95
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/text/Text;
    move-object v1, p1

    .local v1, "x1":Lcom/sun/javafx/scene/DirtyBits;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/scene/text/Text;->impl_markDirty(Lcom/sun/javafx/scene/DirtyBits;)V

    return-void
.end method

.method static synthetic access$4200(Ljavafx/scene/text/Text;Lcom/sun/javafx/scene/DirtyBits;)V
    .locals 4

    .prologue
    .line 95
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/text/Text;
    move-object v1, p1

    .local v1, "x1":Lcom/sun/javafx/scene/DirtyBits;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/scene/text/Text;->impl_markDirty(Lcom/sun/javafx/scene/DirtyBits;)V

    return-void
.end method

.method static synthetic access$4300(Ljavafx/scene/text/Text;Lcom/sun/javafx/scene/DirtyBits;)V
    .locals 4

    .prologue
    .line 95
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/text/Text;
    move-object v1, p1

    .local v1, "x1":Lcom/sun/javafx/scene/DirtyBits;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/scene/text/Text;->impl_markDirty(Lcom/sun/javafx/scene/DirtyBits;)V

    return-void
.end method

.method static synthetic access$4400(Ljavafx/scene/text/Text;)F
    .locals 2

    .prologue
    .line 95
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/text/Text;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/text/Text;->getYRendering()F

    move-result v1

    move v0, v1

    .end local v0    # "x0":Ljavafx/scene/text/Text;
    return v0
.end method

.method static synthetic access$4500()[Ljavafx/scene/shape/PathElement;
    .locals 1

    .prologue
    .line 95
    sget-object v0, Ljavafx/scene/text/Text;->EMPTY_PATH_ELEMENT_ARRAY:[Ljavafx/scene/shape/PathElement;

    return-object v0
.end method

.method static synthetic access$700(Ljavafx/scene/text/Text;)Lcom/sun/javafx/scene/text/TextLayout;
    .locals 2

    .prologue
    .line 95
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/text/Text;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/text/Text;->getTextLayout()Lcom/sun/javafx/scene/text/TextLayout;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/text/Text;
    return-object v0
.end method

.method static synthetic access$800(Ljavafx/scene/text/Text;)Ljavafx/beans/property/ObjectProperty;
    .locals 2

    .prologue
    .line 95
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/text/Text;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/text/Text;->boundsType:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/text/Text;
    return-object v0
.end method

.method static synthetic access$900(Ljavafx/scene/text/Text;)V
    .locals 2

    .prologue
    .line 95
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/text/Text;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/text/Text;->needsTextLayout()V

    return-void
.end method

.method static synthetic access$lambda$0(Ljavafx/scene/text/Text;Ljavafx/beans/Observable;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljavafx/scene/text/Text;->lambda$new$402(Ljavafx/beans/Observable;)V

    return-void
.end method

.method static synthetic access$lambda$1(Ljavafx/scene/text/Text;Ljavafx/beans/Observable;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljavafx/scene/text/Text;->lambda$new$403(Ljavafx/beans/Observable;)V

    return-void
.end method

.method private checkOrientation()V
    .locals 7

    .prologue
    .line 159
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/text/Text;
    move-object v5, v0

    invoke-direct {v5}, Ljavafx/scene/text/Text;->isSpan()Z

    move-result v5

    if-nez v5, :cond_0

    .line 160
    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/text/Text;->getEffectiveNodeOrientation()Ljavafx/geometry/NodeOrientation;

    move-result-object v5

    move-object v1, v5

    .line 161
    .local v1, "orientation":Ljavafx/geometry/NodeOrientation;
    move-object v5, v1

    sget-object v6, Ljavafx/geometry/NodeOrientation;->RIGHT_TO_LEFT:Ljavafx/geometry/NodeOrientation;

    if-ne v5, v6, :cond_1

    const/4 v5, 0x1

    :goto_0
    move v2, v5

    .line 162
    .local v2, "rtl":Z
    move v5, v2

    if-eqz v5, :cond_2

    const/16 v5, 0x800

    :goto_1
    move v3, v5

    .line 163
    .local v3, "dir":I
    move-object v5, v0

    invoke-direct {v5}, Ljavafx/scene/text/Text;->getTextLayout()Lcom/sun/javafx/scene/text/TextLayout;

    move-result-object v5

    move-object v4, v5

    .line 164
    .local v4, "layout":Lcom/sun/javafx/scene/text/TextLayout;
    move-object v5, v4

    move v6, v3

    invoke-interface {v5, v6}, Lcom/sun/javafx/scene/text/TextLayout;->setDirection(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 165
    move-object v5, v0

    invoke-direct {v5}, Ljavafx/scene/text/Text;->needsTextLayout()V

    .line 168
    .end local v1    # "orientation":Ljavafx/geometry/NodeOrientation;
    .end local v2    # "rtl":Z
    .end local v3    # "dir":I
    .end local v4    # "layout":Lcom/sun/javafx/scene/text/TextLayout;
    :cond_0
    return-void

    .line 161
    .restart local v1    # "orientation":Ljavafx/geometry/NodeOrientation;
    :cond_1
    const/4 v5, 0x0

    goto :goto_0

    .line 162
    .restart local v2    # "rtl":Z
    :cond_2
    const/16 v5, 0x400

    goto :goto_1
.end method

.method private checkSpan()V
    .locals 3

    .prologue
    .line 151
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/text/Text;
    move-object v1, v0

    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/text/Text;->isManaged()Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/text/Text;->getParent()Ljavafx/scene/Parent;

    move-result-object v2

    instance-of v2, v2, Ljavafx/scene/text/TextFlow;

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    :goto_0
    iput-boolean v2, v1, Ljavafx/scene/text/Text;->isSpan:Z

    .line 152
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/text/Text;->isSpan()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/text/Text;->pickOnBoundsProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/beans/property/BooleanProperty;->isBound()Z

    move-result v1

    if-nez v1, :cond_0

    .line 154
    move-object v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljavafx/scene/text/Text;->setPickOnBounds(Z)V

    .line 156
    :cond_0
    return-void

    .line 151
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
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
    .line 1436
    # getter for: Ljavafx/scene/text/Text$StyleableProperties;->STYLEABLES:Ljava/util/List;
    invoke-static {}, Ljavafx/scene/text/Text$StyleableProperties;->access$2700()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private getFontInternal()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 487
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/text/Text;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/text/Text;->getFont()Ljavafx/scene/text/Font;

    move-result-object v2

    move-object v1, v2

    .line 488
    .local v1, "font":Ljavafx/scene/text/Font;
    move-object v2, v1

    if-nez v2, :cond_0

    invoke-static {}, Ljavafx/scene/text/Font;->getDefault()Ljavafx/scene/text/Font;

    move-result-object v2

    move-object v1, v2

    .line 489
    :cond_0
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/text/Font;->impl_getNativeFont()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/text/Text;
    return-object v0
.end method

.method private getLogicalBounds()Lcom/sun/javafx/geom/BaseBounds;
    .locals 3

    .prologue
    .line 356
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/text/Text;
    move-object v2, v0

    invoke-direct {v2}, Ljavafx/scene/text/Text;->getTextLayout()Lcom/sun/javafx/scene/text/TextLayout;

    move-result-object v2

    move-object v1, v2

    .line 358
    .local v1, "layout":Lcom/sun/javafx/scene/text/TextLayout;
    move-object v2, v1

    invoke-interface {v2}, Lcom/sun/javafx/scene/text/TextLayout;->getBounds()Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/text/Text;
    return-object v0
.end method

.method private getRange(III)[Ljavafx/scene/shape/PathElement;
    .locals 14

    .prologue
    .line 1008
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/text/Text;
    move v1, p1

    .local v1, "start":I
    move/from16 v2, p2

    .local v2, "end":I
    move/from16 v3, p3

    .local v3, "type":I
    move-object v8, v0

    invoke-direct {v8}, Ljavafx/scene/text/Text;->getTextInternal()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    move v4, v8

    .line 1009
    .local v4, "length":I
    const/4 v8, 0x0

    move v9, v1

    if-gt v8, v9, :cond_0

    move v8, v1

    move v9, v2

    if-ge v8, v9, :cond_0

    move v8, v2

    move v9, v4

    if-gt v8, v9, :cond_0

    .line 1010
    move-object v8, v0

    invoke-direct {v8}, Ljavafx/scene/text/Text;->getTextLayout()Lcom/sun/javafx/scene/text/TextLayout;

    move-result-object v8

    move-object v5, v8

    .line 1011
    .local v5, "layout":Lcom/sun/javafx/scene/text/TextLayout;
    move-object v8, v0

    invoke-virtual {v8}, Ljavafx/scene/text/Text;->getX()D

    move-result-wide v8

    double-to-float v8, v8

    move v6, v8

    .line 1012
    .local v6, "x":F
    move-object v8, v0

    invoke-virtual {v8}, Ljavafx/scene/text/Text;->getY()D

    move-result-wide v8

    double-to-float v8, v8

    move-object v9, v0

    invoke-direct {v9}, Ljavafx/scene/text/Text;->getYRendering()F

    move-result v9

    sub-float/2addr v8, v9

    move v7, v8

    .line 1013
    .local v7, "y":F
    move-object v8, v5

    move v9, v1

    move v10, v2

    move v11, v3

    move v12, v6

    move v13, v7

    invoke-interface/range {v8 .. v13}, Lcom/sun/javafx/scene/text/TextLayout;->getRange(IIIFF)[Ljavafx/scene/shape/PathElement;

    move-result-object v8

    move-object v0, v8

    .line 1015
    .end local v0    # "this":Ljavafx/scene/text/Text;
    .end local v5    # "layout":Lcom/sun/javafx/scene/text/TextLayout;
    .end local v6    # "x":F
    .end local v7    # "y":F
    :goto_0
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/text/Text;
    :cond_0
    sget-object v8, Ljavafx/scene/text/Text;->EMPTY_PATH_ELEMENT_ARRAY:[Ljavafx/scene/shape/PathElement;

    move-object v0, v8

    goto :goto_0
.end method

.method private getRuns()[Lcom/sun/javafx/scene/text/GlyphList;
    .locals 4

    .prologue
    .line 311
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/text/Text;
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/text/Text;->textRuns:[Lcom/sun/javafx/scene/text/GlyphList;

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/text/Text;->textRuns:[Lcom/sun/javafx/scene/text/GlyphList;

    move-object v0, v2

    .line 319
    .end local v0    # "this":Ljavafx/scene/text/Text;
    :goto_0
    return-object v0

    .line 312
    .restart local v0    # "this":Ljavafx/scene/text/Text;
    :cond_0
    move-object v2, v0

    invoke-direct {v2}, Ljavafx/scene/text/Text;->isSpan()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 314
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/text/Text;->getParent()Ljavafx/scene/Parent;

    move-result-object v2

    invoke-virtual {v2}, Ljavafx/scene/Parent;->layout()V

    .line 319
    :goto_1
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/text/Text;->textRuns:[Lcom/sun/javafx/scene/text/GlyphList;

    move-object v0, v2

    goto :goto_0

    .line 316
    :cond_1
    move-object v2, v0

    invoke-direct {v2}, Ljavafx/scene/text/Text;->getTextLayout()Lcom/sun/javafx/scene/text/TextLayout;

    move-result-object v2

    move-object v1, v2

    .line 317
    .local v1, "layout":Lcom/sun/javafx/scene/text/TextLayout;
    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Lcom/sun/javafx/scene/text/TextLayout;->getRuns()[Lcom/sun/javafx/scene/text/GlyphList;

    move-result-object v3

    iput-object v3, v2, Ljavafx/scene/text/Text;->textRuns:[Lcom/sun/javafx/scene/text/GlyphList;

    goto :goto_1
.end method

.method private getShape()Lcom/sun/javafx/geom/Shape;
    .locals 7

    .prologue
    .line 323
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/text/Text;
    move-object v4, v0

    invoke-direct {v4}, Ljavafx/scene/text/Text;->getTextLayout()Lcom/sun/javafx/scene/text/TextLayout;

    move-result-object v4

    move-object v1, v4

    .line 325
    .local v1, "layout":Lcom/sun/javafx/scene/text/TextLayout;
    const/4 v4, 0x1

    move v2, v4

    .line 326
    .local v2, "type":I
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/text/Text;->isStrikethrough()Z

    move-result v4

    if-eqz v4, :cond_0

    move v4, v2

    const/4 v5, 0x4

    or-int/lit8 v4, v4, 0x4

    move v2, v4

    .line 327
    :cond_0
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/text/Text;->isUnderline()Z

    move-result v4

    if-eqz v4, :cond_1

    move v4, v2

    const/4 v5, 0x2

    or-int/lit8 v4, v4, 0x2

    move v2, v4

    .line 329
    :cond_1
    const/4 v4, 0x0

    move-object v3, v4

    .line 330
    .local v3, "filter":Lcom/sun/javafx/scene/text/TextSpan;
    move-object v4, v0

    invoke-direct {v4}, Ljavafx/scene/text/Text;->isSpan()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 332
    move v4, v2

    const/16 v5, 0x10

    or-int/lit8 v4, v4, 0x10

    move v2, v4

    .line 333
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/text/Text;->getTextSpan()Lcom/sun/javafx/scene/text/TextSpan;

    move-result-object v4

    move-object v3, v4

    .line 341
    :goto_0
    move-object v4, v1

    move v5, v2

    move-object v6, v3

    invoke-interface {v4, v5, v6}, Lcom/sun/javafx/scene/text/TextLayout;->getShape(ILcom/sun/javafx/scene/text/TextSpan;)Lcom/sun/javafx/geom/Shape;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Ljavafx/scene/text/Text;
    return-object v0

    .line 339
    .restart local v0    # "this":Ljavafx/scene/text/Text;
    :cond_2
    move v4, v2

    const/16 v5, 0x8

    or-int/lit8 v4, v4, 0x8

    move v2, v4

    goto :goto_0
.end method

.method private getTextAttribute()Ljavafx/scene/text/Text$TextAttribute;
    .locals 7

    .prologue
    .line 1512
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/text/Text;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/text/Text;->attributes:Ljavafx/scene/text/Text$TextAttribute;

    if-nez v1, :cond_0

    .line 1513
    move-object v1, v0

    new-instance v2, Ljavafx/scene/text/Text$TextAttribute;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Ljavafx/scene/text/Text$TextAttribute;-><init>(Ljavafx/scene/text/Text;Ljavafx/scene/text/Text$1;)V

    iput-object v2, v1, Ljavafx/scene/text/Text;->attributes:Ljavafx/scene/text/Text$TextAttribute;

    .line 1515
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/text/Text;->attributes:Ljavafx/scene/text/Text$TextAttribute;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/text/Text;
    return-object v0
.end method

.method private getTextInternal()Ljava/lang/String;
    .locals 3

    .prologue
    .line 379
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/text/Text;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/text/Text;->getText()Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 380
    .local v1, "localText":Ljava/lang/String;
    move-object v2, v1

    if-nez v2, :cond_0

    const-string v2, ""

    :goto_0
    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/text/Text;
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/text/Text;
    :cond_0
    move-object v2, v1

    goto :goto_0
.end method

.method private getTextLayout()Lcom/sun/javafx/scene/text/TextLayout;
    .locals 8

    .prologue
    .line 217
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/text/Text;
    move-object v5, v0

    invoke-direct {v5}, Ljavafx/scene/text/Text;->isSpan()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 218
    move-object v5, v0

    const/4 v6, 0x0

    iput-object v6, v5, Ljavafx/scene/text/Text;->layout:Lcom/sun/javafx/scene/text/TextLayout;

    .line 219
    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/text/Text;->getParent()Ljavafx/scene/Parent;

    move-result-object v5

    check-cast v5, Ljavafx/scene/text/TextFlow;

    move-object v1, v5

    .line 220
    .local v1, "parent":Ljavafx/scene/text/TextFlow;
    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/scene/text/TextFlow;->getTextLayout()Lcom/sun/javafx/scene/text/TextLayout;

    move-result-object v5

    move-object v0, v5

    .line 239
    .end local v0    # "this":Ljavafx/scene/text/Text;
    .end local v1    # "parent":Ljavafx/scene/text/TextFlow;
    :goto_0
    return-object v0

    .line 222
    .restart local v0    # "this":Ljavafx/scene/text/Text;
    :cond_0
    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/text/Text;->layout:Lcom/sun/javafx/scene/text/TextLayout;

    if-nez v5, :cond_2

    .line 223
    invoke-static {}, Lcom/sun/javafx/tk/Toolkit;->getToolkit()Lcom/sun/javafx/tk/Toolkit;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sun/javafx/tk/Toolkit;->getTextLayoutFactory()Lcom/sun/javafx/scene/text/TextLayoutFactory;

    move-result-object v5

    move-object v1, v5

    .line 224
    .local v1, "factory":Lcom/sun/javafx/scene/text/TextLayoutFactory;
    move-object v5, v0

    move-object v6, v1

    invoke-interface {v6}, Lcom/sun/javafx/scene/text/TextLayoutFactory;->createLayout()Lcom/sun/javafx/scene/text/TextLayout;

    move-result-object v6

    iput-object v6, v5, Ljavafx/scene/text/Text;->layout:Lcom/sun/javafx/scene/text/TextLayout;

    .line 225
    move-object v5, v0

    invoke-direct {v5}, Ljavafx/scene/text/Text;->getTextInternal()Ljava/lang/String;

    move-result-object v5

    move-object v2, v5

    .line 226
    .local v2, "string":Ljava/lang/String;
    move-object v5, v0

    invoke-direct {v5}, Ljavafx/scene/text/Text;->getFontInternal()Ljava/lang/Object;

    move-result-object v5

    move-object v3, v5

    .line 227
    .local v3, "font":Ljava/lang/Object;
    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/text/Text;->getTextAlignment()Ljavafx/scene/text/TextAlignment;

    move-result-object v5

    move-object v4, v5

    .line 228
    .local v4, "alignment":Ljavafx/scene/text/TextAlignment;
    move-object v5, v4

    if-nez v5, :cond_1

    sget-object v5, Ljavafx/scene/text/Text;->DEFAULT_TEXT_ALIGNMENT:Ljavafx/scene/text/TextAlignment;

    move-object v4, v5

    .line 229
    :cond_1
    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/text/Text;->layout:Lcom/sun/javafx/scene/text/TextLayout;

    move-object v6, v2

    move-object v7, v3

    invoke-interface {v5, v6, v7}, Lcom/sun/javafx/scene/text/TextLayout;->setContent(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v5

    .line 230
    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/text/Text;->layout:Lcom/sun/javafx/scene/text/TextLayout;

    move-object v6, v4

    invoke-virtual {v6}, Ljavafx/scene/text/TextAlignment;->ordinal()I

    move-result v6

    invoke-interface {v5, v6}, Lcom/sun/javafx/scene/text/TextLayout;->setAlignment(I)Z

    move-result v5

    .line 231
    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/text/Text;->layout:Lcom/sun/javafx/scene/text/TextLayout;

    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/scene/text/Text;->getLineSpacing()D

    move-result-wide v6

    double-to-float v6, v6

    invoke-interface {v5, v6}, Lcom/sun/javafx/scene/text/TextLayout;->setLineSpacing(F)Z

    move-result v5

    .line 232
    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/text/Text;->layout:Lcom/sun/javafx/scene/text/TextLayout;

    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/scene/text/Text;->getWrappingWidth()D

    move-result-wide v6

    double-to-float v6, v6

    invoke-interface {v5, v6}, Lcom/sun/javafx/scene/text/TextLayout;->setWrapWidth(F)Z

    move-result v5

    .line 233
    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/text/Text;->getEffectiveNodeOrientation()Ljavafx/geometry/NodeOrientation;

    move-result-object v5

    sget-object v6, Ljavafx/geometry/NodeOrientation;->RIGHT_TO_LEFT:Ljavafx/geometry/NodeOrientation;

    if-ne v5, v6, :cond_3

    .line 234
    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/text/Text;->layout:Lcom/sun/javafx/scene/text/TextLayout;

    const/16 v6, 0x800

    invoke-interface {v5, v6}, Lcom/sun/javafx/scene/text/TextLayout;->setDirection(I)Z

    move-result v5

    .line 239
    .end local v1    # "factory":Lcom/sun/javafx/scene/text/TextLayoutFactory;
    .end local v2    # "string":Ljava/lang/String;
    .end local v3    # "font":Ljava/lang/Object;
    .end local v4    # "alignment":Ljavafx/scene/text/TextAlignment;
    :cond_2
    :goto_1
    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/text/Text;->layout:Lcom/sun/javafx/scene/text/TextLayout;

    move-object v0, v5

    goto :goto_0

    .line 236
    .restart local v1    # "factory":Lcom/sun/javafx/scene/text/TextLayoutFactory;
    .restart local v2    # "string":Ljava/lang/String;
    .restart local v3    # "font":Ljava/lang/Object;
    .restart local v4    # "alignment":Ljavafx/scene/text/TextAlignment;
    :cond_3
    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/text/Text;->layout:Lcom/sun/javafx/scene/text/TextLayout;

    const/16 v6, 0x400

    invoke-interface {v5, v6}, Lcom/sun/javafx/scene/text/TextLayout;->setDirection(I)Z

    move-result v5

    goto :goto_1
.end method

.method private getVisualBounds()Lcom/sun/javafx/geom/BaseBounds;
    .locals 4

    .prologue
    .line 345
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/text/Text;
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/text/Text;->impl_mode:Lcom/sun/javafx/sg/prism/NGShape$Mode;

    sget-object v3, Lcom/sun/javafx/sg/prism/NGShape$Mode;->FILL:Lcom/sun/javafx/sg/prism/NGShape$Mode;

    if-eq v2, v3, :cond_0

    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/text/Text;->getStrokeType()Ljavafx/scene/shape/StrokeType;

    move-result-object v2

    sget-object v3, Ljavafx/scene/shape/StrokeType;->INSIDE:Ljavafx/scene/shape/StrokeType;

    if-ne v2, v3, :cond_3

    .line 346
    :cond_0
    const/4 v2, 0x1

    move v1, v2

    .line 347
    .local v1, "type":I
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/text/Text;->isStrikethrough()Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v1

    const/4 v3, 0x4

    or-int/lit8 v2, v2, 0x4

    move v1, v2

    .line 348
    :cond_1
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/text/Text;->isUnderline()Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v1

    const/4 v3, 0x2

    or-int/lit8 v2, v2, 0x2

    move v1, v2

    .line 349
    :cond_2
    move-object v2, v0

    invoke-direct {v2}, Ljavafx/scene/text/Text;->getTextLayout()Lcom/sun/javafx/scene/text/TextLayout;

    move-result-object v2

    move v3, v1

    invoke-interface {v2, v3}, Lcom/sun/javafx/scene/text/TextLayout;->getVisualBounds(I)Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v2

    move-object v0, v2

    .line 351
    .end local v0    # "this":Ljavafx/scene/text/Text;
    .end local v1    # "type":I
    :goto_0
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/text/Text;
    :cond_3
    move-object v2, v0

    invoke-direct {v2}, Ljavafx/scene/text/Text;->getShape()Lcom/sun/javafx/geom/Shape;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sun/javafx/geom/Shape;->getBounds()Lcom/sun/javafx/geom/RectBounds;

    move-result-object v2

    move-object v0, v2

    goto :goto_0
.end method

.method private getYAdjustment(Lcom/sun/javafx/geom/BaseBounds;)F
    .locals 6

    .prologue
    .line 1054
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/text/Text;
    move-object v1, p1

    .local v1, "bounds":Lcom/sun/javafx/geom/BaseBounds;
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/text/Text;->getTextOrigin()Ljavafx/geometry/VPos;

    move-result-object v3

    move-object v2, v3

    .line 1055
    .local v2, "origin":Ljavafx/geometry/VPos;
    move-object v3, v2

    if-nez v3, :cond_0

    sget-object v3, Ljavafx/scene/text/Text;->DEFAULT_TEXT_ORIGIN:Ljavafx/geometry/VPos;

    move-object v2, v3

    .line 1056
    :cond_0
    sget-object v3, Ljavafx/scene/text/Text$9;->$SwitchMap$javafx$geometry$VPos:[I

    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/geometry/VPos;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 1061
    const/4 v3, 0x0

    move v0, v3

    .end local v0    # "this":Ljavafx/scene/text/Text;
    :goto_0
    return v0

    .line 1057
    .restart local v0    # "this":Ljavafx/scene/text/Text;
    :pswitch_0
    move-object v3, v1

    invoke-virtual {v3}, Lcom/sun/javafx/geom/BaseBounds;->getMinY()F

    move-result v3

    neg-float v3, v3

    move v0, v3

    goto :goto_0

    .line 1058
    :pswitch_1
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 1059
    :pswitch_2
    move-object v3, v1

    invoke-virtual {v3}, Lcom/sun/javafx/geom/BaseBounds;->getMinY()F

    move-result v3

    neg-float v3, v3

    move-object v4, v1

    invoke-virtual {v4}, Lcom/sun/javafx/geom/BaseBounds;->getHeight()F

    move-result v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    sub-float/2addr v3, v4

    move v0, v3

    goto :goto_0

    .line 1060
    :pswitch_3
    move-object v3, v1

    invoke-virtual {v3}, Lcom/sun/javafx/geom/BaseBounds;->getMinY()F

    move-result v3

    neg-float v3, v3

    move-object v4, v1

    invoke-virtual {v4}, Lcom/sun/javafx/geom/BaseBounds;->getHeight()F

    move-result v4

    sub-float/2addr v3, v4

    move v0, v3

    goto :goto_0

    .line 1056
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private getYRendering()F
    .locals 7

    .prologue
    .line 1066
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/text/Text;
    move-object v5, v0

    invoke-direct {v5}, Ljavafx/scene/text/Text;->isSpan()Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x0

    move v0, v5

    .line 1089
    .end local v0    # "this":Ljavafx/scene/text/Text;
    .local v1, "bounds":Lcom/sun/javafx/geom/BaseBounds;
    .local v2, "origin":Ljavafx/geometry/VPos;
    :goto_0
    return v0

    .line 1069
    .end local v1    # "bounds":Lcom/sun/javafx/geom/BaseBounds;
    .end local v2    # "origin":Ljavafx/geometry/VPos;
    .restart local v0    # "this":Ljavafx/scene/text/Text;
    :cond_0
    move-object v5, v0

    invoke-direct {v5}, Ljavafx/scene/text/Text;->getLogicalBounds()Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v5

    move-object v1, v5

    .line 1071
    .restart local v1    # "bounds":Lcom/sun/javafx/geom/BaseBounds;
    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/text/Text;->getTextOrigin()Ljavafx/geometry/VPos;

    move-result-object v5

    move-object v2, v5

    .line 1072
    .restart local v2    # "origin":Ljavafx/geometry/VPos;
    move-object v5, v2

    if-nez v5, :cond_1

    sget-object v5, Ljavafx/scene/text/Text;->DEFAULT_TEXT_ORIGIN:Ljavafx/geometry/VPos;

    move-object v2, v5

    .line 1073
    :cond_1
    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/text/Text;->getBoundsType()Ljavafx/scene/text/TextBoundsType;

    move-result-object v5

    sget-object v6, Ljavafx/scene/text/TextBoundsType;->VISUAL:Ljavafx/scene/text/TextBoundsType;

    if-ne v5, v6, :cond_2

    .line 1074
    move-object v5, v0

    invoke-direct {v5}, Ljavafx/scene/text/Text;->getVisualBounds()Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v5

    move-object v3, v5

    .line 1075
    .local v3, "vBounds":Lcom/sun/javafx/geom/BaseBounds;
    move-object v5, v3

    invoke-virtual {v5}, Lcom/sun/javafx/geom/BaseBounds;->getMinY()F

    move-result v5

    move-object v6, v1

    invoke-virtual {v6}, Lcom/sun/javafx/geom/BaseBounds;->getMinY()F

    move-result v6

    sub-float/2addr v5, v6

    move v4, v5

    .line 1076
    .local v4, "delta":F
    sget-object v5, Ljavafx/scene/text/Text$9;->$SwitchMap$javafx$geometry$VPos:[I

    move-object v6, v2

    invoke-virtual {v6}, Ljavafx/geometry/VPos;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 1081
    const/4 v5, 0x0

    move v0, v5

    goto :goto_0

    .line 1077
    :pswitch_0
    move v5, v4

    move v0, v5

    goto :goto_0

    .line 1078
    :pswitch_1
    move-object v5, v3

    invoke-virtual {v5}, Lcom/sun/javafx/geom/BaseBounds;->getMinY()F

    move-result v5

    neg-float v5, v5

    move v6, v4

    add-float/2addr v5, v6

    move v0, v5

    goto :goto_0

    .line 1079
    :pswitch_2
    move-object v5, v3

    invoke-virtual {v5}, Lcom/sun/javafx/geom/BaseBounds;->getHeight()F

    move-result v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    move v6, v4

    add-float/2addr v5, v6

    move v0, v5

    goto :goto_0

    .line 1080
    :pswitch_3
    move-object v5, v3

    invoke-virtual {v5}, Lcom/sun/javafx/geom/BaseBounds;->getHeight()F

    move-result v5

    move v6, v4

    add-float/2addr v5, v6

    move v0, v5

    goto :goto_0

    .line 1084
    .end local v3    # "vBounds":Lcom/sun/javafx/geom/BaseBounds;
    .end local v4    # "delta":F
    :cond_2
    sget-object v5, Ljavafx/scene/text/Text$9;->$SwitchMap$javafx$geometry$VPos:[I

    move-object v6, v2

    invoke-virtual {v6}, Ljavafx/geometry/VPos;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_1

    .line 1089
    const/4 v5, 0x0

    move v0, v5

    goto :goto_0

    .line 1085
    :pswitch_4
    const/4 v5, 0x0

    move v0, v5

    goto :goto_0

    .line 1086
    :pswitch_5
    move-object v5, v1

    invoke-virtual {v5}, Lcom/sun/javafx/geom/BaseBounds;->getMinY()F

    move-result v5

    neg-float v5, v5

    move v0, v5

    goto :goto_0

    .line 1087
    :pswitch_6
    move-object v5, v1

    invoke-virtual {v5}, Lcom/sun/javafx/geom/BaseBounds;->getHeight()F

    move-result v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    move v0, v5

    goto/16 :goto_0

    .line 1088
    :pswitch_7
    move-object v5, v1

    invoke-virtual {v5}, Lcom/sun/javafx/geom/BaseBounds;->getHeight()F

    move-result v5

    move v0, v5

    goto/16 :goto_0

    .line 1076
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 1084
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private isSpan()Z
    .locals 2

    .prologue
    .line 147
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/text/Text;
    move-object v1, v0

    iget-boolean v1, v1, Ljavafx/scene/text/Text;->isSpan:Z

    move v0, v1

    .end local v0    # "this":Ljavafx/scene/text/Text;
    return v0
.end method

.method private synthetic lambda$new$402(Ljavafx/beans/Observable;)V
    .locals 3

    .prologue
    .line 116
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/text/Text;
    move-object v1, p1

    .local v1, "observable":Ljavafx/beans/Observable;
    move-object v2, v0

    invoke-direct {v2}, Ljavafx/scene/text/Text;->checkSpan()V

    return-void
.end method

.method private synthetic lambda$new$403(Ljavafx/beans/Observable;)V
    .locals 3

    .prologue
    .line 119
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/text/Text;
    move-object v1, p1

    .local v1, "observable":Ljavafx/beans/Observable;
    move-object v2, v0

    invoke-direct {v2}, Ljavafx/scene/text/Text;->checkOrientation()V

    return-void
.end method

.method private needsFullTextLayout()V
    .locals 7

    .prologue
    .line 176
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/text/Text;
    move-object v4, v0

    invoke-direct {v4}, Ljavafx/scene/text/Text;->isSpan()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 180
    move-object v4, v0

    const/4 v5, 0x0

    iput-object v5, v4, Ljavafx/scene/text/Text;->textSpan:Lcom/sun/javafx/scene/text/TextSpan;

    .line 189
    :goto_0
    move-object v4, v0

    invoke-direct {v4}, Ljavafx/scene/text/Text;->needsTextLayout()V

    .line 190
    return-void

    .line 184
    :cond_0
    move-object v4, v0

    invoke-direct {v4}, Ljavafx/scene/text/Text;->getTextLayout()Lcom/sun/javafx/scene/text/TextLayout;

    move-result-object v4

    move-object v1, v4

    .line 185
    .local v1, "layout":Lcom/sun/javafx/scene/text/TextLayout;
    move-object v4, v0

    invoke-direct {v4}, Ljavafx/scene/text/Text;->getTextInternal()Ljava/lang/String;

    move-result-object v4

    move-object v2, v4

    .line 186
    .local v2, "string":Ljava/lang/String;
    move-object v4, v0

    invoke-direct {v4}, Ljavafx/scene/text/Text;->getFontInternal()Ljava/lang/Object;

    move-result-object v4

    move-object v3, v4

    .line 187
    .local v3, "font":Ljava/lang/Object;
    move-object v4, v1

    move-object v5, v2

    move-object v6, v3

    invoke-interface {v4, v5, v6}, Lcom/sun/javafx/scene/text/TextLayout;->setContent(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v4

    goto :goto_0
.end method

.method private needsTextLayout()V
    .locals 3

    .prologue
    .line 193
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/text/Text;
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Ljavafx/scene/text/Text;->textRuns:[Lcom/sun/javafx/scene/text/GlyphList;

    .line 194
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/text/Text;->impl_geomChanged()V

    .line 195
    move-object v1, v0

    sget-object v2, Lcom/sun/javafx/scene/DirtyBits;->NODE_CONTENTS:Lcom/sun/javafx/scene/DirtyBits;

    invoke-virtual {v1, v2}, Ljavafx/scene/text/Text;->impl_markDirty(Lcom/sun/javafx/scene/DirtyBits;)V

    .line 196
    return-void
.end method

.method private updatePGText()V
    .locals 12

    .prologue
    .line 1453
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/text/Text;
    move-object v8, v1

    invoke-virtual {v8}, Ljavafx/scene/text/Text;->impl_getPeer()Lcom/sun/javafx/sg/prism/NGNode;

    move-result-object v8

    check-cast v8, Lcom/sun/javafx/sg/prism/NGText;

    move-object v2, v8

    .line 1454
    .local v2, "peer":Lcom/sun/javafx/sg/prism/NGText;
    move-object v8, v1

    sget-object v9, Lcom/sun/javafx/scene/DirtyBits;->TEXT_ATTRS:Lcom/sun/javafx/scene/DirtyBits;

    invoke-virtual {v8, v9}, Ljavafx/scene/text/Text;->impl_isDirty(Lcom/sun/javafx/scene/DirtyBits;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1455
    move-object v8, v2

    move-object v9, v1

    invoke-virtual {v9}, Ljavafx/scene/text/Text;->isUnderline()Z

    move-result v9

    invoke-virtual {v8, v9}, Lcom/sun/javafx/sg/prism/NGText;->setUnderline(Z)V

    .line 1456
    move-object v8, v2

    move-object v9, v1

    invoke-virtual {v9}, Ljavafx/scene/text/Text;->isStrikethrough()Z

    move-result v9

    invoke-virtual {v8, v9}, Lcom/sun/javafx/sg/prism/NGText;->setStrikethrough(Z)V

    .line 1457
    move-object v8, v1

    invoke-virtual {v8}, Ljavafx/scene/text/Text;->getFontSmoothingType()Ljavafx/scene/text/FontSmoothingType;

    move-result-object v8

    move-object v3, v8

    .line 1458
    .local v3, "smoothing":Ljavafx/scene/text/FontSmoothingType;
    move-object v8, v3

    if-nez v8, :cond_0

    sget-object v8, Ljavafx/scene/text/FontSmoothingType;->GRAY:Ljavafx/scene/text/FontSmoothingType;

    move-object v3, v8

    .line 1459
    :cond_0
    move-object v8, v2

    move-object v9, v3

    invoke-virtual {v9}, Ljavafx/scene/text/FontSmoothingType;->ordinal()I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/sun/javafx/sg/prism/NGText;->setFontSmoothingType(I)V

    .line 1461
    .end local v3    # "smoothing":Ljavafx/scene/text/FontSmoothingType;
    :cond_1
    move-object v8, v1

    sget-object v9, Lcom/sun/javafx/scene/DirtyBits;->TEXT_FONT:Lcom/sun/javafx/scene/DirtyBits;

    invoke-virtual {v8, v9}, Ljavafx/scene/text/Text;->impl_isDirty(Lcom/sun/javafx/scene/DirtyBits;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1462
    move-object v8, v2

    move-object v9, v1

    invoke-direct {v9}, Ljavafx/scene/text/Text;->getFontInternal()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/sun/javafx/sg/prism/NGText;->setFont(Ljava/lang/Object;)V

    .line 1464
    :cond_2
    move-object v8, v1

    sget-object v9, Lcom/sun/javafx/scene/DirtyBits;->NODE_CONTENTS:Lcom/sun/javafx/scene/DirtyBits;

    invoke-virtual {v8, v9}, Ljavafx/scene/text/Text;->impl_isDirty(Lcom/sun/javafx/scene/DirtyBits;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1465
    move-object v8, v2

    move-object v9, v1

    invoke-direct {v9}, Ljavafx/scene/text/Text;->getRuns()[Lcom/sun/javafx/scene/text/GlyphList;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/sun/javafx/sg/prism/NGText;->setGlyphs([Ljava/lang/Object;)V

    .line 1467
    :cond_3
    move-object v8, v1

    sget-object v9, Lcom/sun/javafx/scene/DirtyBits;->NODE_GEOMETRY:Lcom/sun/javafx/scene/DirtyBits;

    invoke-virtual {v8, v9}, Ljavafx/scene/text/Text;->impl_isDirty(Lcom/sun/javafx/scene/DirtyBits;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1468
    move-object v8, v1

    invoke-direct {v8}, Ljavafx/scene/text/Text;->isSpan()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 1469
    move-object v8, v1

    invoke-virtual {v8}, Ljavafx/scene/text/Text;->getSpanBounds()Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v8

    move-object v3, v8

    .line 1470
    .local v3, "spanBounds":Lcom/sun/javafx/geom/BaseBounds;
    move-object v8, v2

    move-object v9, v3

    invoke-virtual {v9}, Lcom/sun/javafx/geom/BaseBounds;->getMinX()F

    move-result v9

    move-object v10, v3

    invoke-virtual {v10}, Lcom/sun/javafx/geom/BaseBounds;->getMinY()F

    move-result v10

    invoke-virtual {v8, v9, v10}, Lcom/sun/javafx/sg/prism/NGText;->setLayoutLocation(FF)V

    .line 1471
    .line 1478
    .end local v3    # "spanBounds":Lcom/sun/javafx/geom/BaseBounds;
    :cond_4
    :goto_0
    move-object v8, v1

    sget-object v9, Lcom/sun/javafx/scene/DirtyBits;->TEXT_SELECTION:Lcom/sun/javafx/scene/DirtyBits;

    invoke-virtual {v8, v9}, Ljavafx/scene/text/Text;->impl_isDirty(Lcom/sun/javafx/scene/DirtyBits;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 1479
    const/4 v8, 0x0

    move-object v3, v8

    .line 1480
    .local v3, "fillObj":Ljava/lang/Object;
    move-object v8, v1

    invoke-virtual {v8}, Ljavafx/scene/text/Text;->getImpl_selectionStart()I

    move-result v8

    move v4, v8

    .line 1481
    .local v4, "start":I
    move-object v8, v1

    invoke-virtual {v8}, Ljavafx/scene/text/Text;->getImpl_selectionEnd()I

    move-result v8

    move v5, v8

    .line 1482
    .local v5, "end":I
    move-object v8, v1

    invoke-direct {v8}, Ljavafx/scene/text/Text;->getTextInternal()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    move v6, v8

    .line 1483
    .local v6, "length":I
    const/4 v8, 0x0

    move v9, v4

    if-gt v8, v9, :cond_5

    move v8, v4

    move v9, v5

    if-ge v8, v9, :cond_5

    move v8, v5

    move v9, v6

    if-gt v8, v9, :cond_5

    .line 1484
    move-object v8, v1

    invoke-virtual {v8}, Ljavafx/scene/text/Text;->impl_selectionFillProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v8

    invoke-virtual {v8}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljavafx/scene/paint/Paint;

    move-object v7, v8

    .line 1485
    .local v7, "fill":Ljavafx/scene/paint/Paint;
    move-object v8, v7

    if-eqz v8, :cond_8

    invoke-static {}, Lcom/sun/javafx/tk/Toolkit;->getPaintAccessor()Lcom/sun/javafx/tk/Toolkit$PaintAccessor;

    move-result-object v8

    move-object v9, v7

    invoke-interface {v8, v9}, Lcom/sun/javafx/tk/Toolkit$PaintAccessor;->getPlatformPaint(Ljavafx/scene/paint/Paint;)Ljava/lang/Object;

    move-result-object v8

    :goto_1
    move-object v3, v8

    .line 1487
    .end local v3    # "fillObj":Ljava/lang/Object;
    .end local v7    # "fill":Ljavafx/scene/paint/Paint;
    :cond_5
    move-object v8, v2

    move v9, v4

    move v10, v5

    move-object v11, v3

    invoke-virtual {v8, v9, v10, v11}, Lcom/sun/javafx/sg/prism/NGText;->setSelection(IILjava/lang/Object;)V

    .line 1489
    .end local v4    # "start":I
    .end local v5    # "end":I
    .end local v6    # "length":I
    :cond_6
    return-void

    .line 1472
    :cond_7
    move-object v8, v1

    invoke-virtual {v8}, Ljavafx/scene/text/Text;->getX()D

    move-result-wide v8

    double-to-float v8, v8

    move v3, v8

    .line 1473
    .local v3, "x":F
    move-object v8, v1

    invoke-virtual {v8}, Ljavafx/scene/text/Text;->getY()D

    move-result-wide v8

    double-to-float v8, v8

    move v4, v8

    .line 1474
    .local v4, "y":F
    move-object v8, v1

    invoke-direct {v8}, Ljavafx/scene/text/Text;->getYRendering()F

    move-result v8

    move v5, v8

    .line 1475
    .local v5, "yadj":F
    move-object v8, v2

    move v9, v3

    neg-float v9, v9

    move v10, v5

    move v11, v4

    sub-float/2addr v10, v11

    invoke-virtual {v8, v9, v10}, Lcom/sun/javafx/sg/prism/NGText;->setLayoutLocation(FF)V

    goto :goto_0

    .line 1485
    .local v3, "fillObj":Ljava/lang/Object;
    .local v4, "start":I
    .local v5, "end":I
    .restart local v6    # "length":I
    .restart local v7    # "fill":Ljavafx/scene/paint/Paint;
    :cond_8
    const/4 v8, 0x0

    goto :goto_1
.end method


# virtual methods
.method public final baselineOffsetProperty()Ljavafx/beans/property/ReadOnlyDoubleProperty;
    .locals 2

    .prologue
    .line 713
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/text/Text;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/text/Text;->getTextAttribute()Ljavafx/scene/text/Text$TextAttribute;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/scene/text/Text$TextAttribute;->baselineOffsetProperty()Ljavafx/beans/property/ReadOnlyDoubleProperty;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/text/Text;
    return-object v0
.end method

.method public final boundsTypeProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/scene/text/TextBoundsType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 551
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/text/Text;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/text/Text;->boundsType:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    .line 552
    move-object v1, v0

    new-instance v2, Ljavafx/scene/text/Text$6;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    sget-object v5, Ljavafx/scene/text/Text;->DEFAULT_BOUNDS_TYPE:Ljavafx/scene/text/TextBoundsType;

    invoke-direct {v3, v4, v5}, Ljavafx/scene/text/Text$6;-><init>(Ljavafx/scene/text/Text;Ljavafx/scene/text/TextBoundsType;)V

    iput-object v2, v1, Ljavafx/scene/text/Text;->boundsType:Ljavafx/beans/property/ObjectProperty;

    .line 573
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/text/Text;->boundsType:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/text/Text;
    return-object v0
.end method

.method public final fontProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/scene/text/Font;",
            ">;"
        }
    .end annotation

    .prologue
    .line 493
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/text/Text;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/text/Text;->font:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    .line 494
    move-object v1, v0

    new-instance v2, Ljavafx/scene/text/Text$5;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    invoke-static {}, Ljavafx/scene/text/Font;->getDefault()Ljavafx/scene/text/Font;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljavafx/scene/text/Text$5;-><init>(Ljavafx/scene/text/Text;Ljavafx/scene/text/Font;)V

    iput-object v2, v1, Ljavafx/scene/text/Text;->font:Ljavafx/beans/property/ObjectProperty;

    .line 506
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/text/Text;->font:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/text/Text;
    return-object v0
.end method

.method public final fontSmoothingTypeProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/scene/text/FontSmoothingType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 740
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/text/Text;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/text/Text;->fontSmoothingType:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    .line 741
    move-object v1, v0

    new-instance v2, Ljavafx/scene/text/Text$8;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    sget-object v5, Ljavafx/scene/text/FontSmoothingType;->GRAY:Ljavafx/scene/text/FontSmoothingType;

    invoke-direct {v3, v4, v5}, Ljavafx/scene/text/Text$8;-><init>(Ljavafx/scene/text/Text;Ljavafx/scene/text/FontSmoothingType;)V

    iput-object v2, v1, Ljavafx/scene/text/Text;->fontSmoothingType:Ljavafx/beans/property/ObjectProperty;

    .line 755
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/text/Text;->fontSmoothingType:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/text/Text;
    return-object v0
.end method

.method public final getBaselineOffset()D
    .locals 3

    .prologue
    .line 704
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/text/Text;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/text/Text;->baselineOffsetProperty()Ljavafx/beans/property/ReadOnlyDoubleProperty;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/beans/property/ReadOnlyDoubleProperty;->get()D

    move-result-wide v1

    move-wide v0, v1

    .end local v0    # "this":Ljavafx/scene/text/Text;
    return-wide v0
.end method

.method public final getBoundsType()Ljavafx/scene/text/TextBoundsType;
    .locals 2

    .prologue
    .line 546
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/text/Text;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/text/Text;->boundsType:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    sget-object v1, Ljavafx/scene/text/Text;->DEFAULT_BOUNDS_TYPE:Ljavafx/scene/text/TextBoundsType;

    .line 547
    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/text/Text;
    return-object v0

    .line 546
    .restart local v0    # "this":Ljavafx/scene/text/Text;
    :cond_0
    move-object v1, v0

    .line 547
    invoke-virtual {v1}, Ljavafx/scene/text/Text;->boundsTypeProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/scene/text/TextBoundsType;

    goto :goto_0
.end method

.method public getCssMetaData()Ljava/util/List;
    .locals 2
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
    .line 1448
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/text/Text;
    invoke-static {}, Ljavafx/scene/text/Text;->getClassCssMetaData()Ljava/util/List;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/text/Text;
    return-object v0
.end method

.method public final getFont()Ljavafx/scene/text/Font;
    .locals 2

    .prologue
    .line 478
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/text/Text;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/text/Text;->font:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    invoke-static {}, Ljavafx/scene/text/Font;->getDefault()Ljavafx/scene/text/Font;

    move-result-object v1

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/text/Text;
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/text/Text;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/text/Text;->font:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/scene/text/Font;

    goto :goto_0
.end method

.method public final getFontSmoothingType()Ljavafx/scene/text/FontSmoothingType;
    .locals 2

    .prologue
    .line 734
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/text/Text;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/text/Text;->fontSmoothingType:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    sget-object v1, Ljavafx/scene/text/FontSmoothingType;->GRAY:Ljavafx/scene/text/FontSmoothingType;

    .line 735
    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/text/Text;
    return-object v0

    .line 734
    .restart local v0    # "this":Ljavafx/scene/text/Text;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/text/Text;->fontSmoothingType:Ljavafx/beans/property/ObjectProperty;

    .line 735
    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/scene/text/FontSmoothingType;

    goto :goto_0
.end method

.method public final getImpl_caretPosition()I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 933
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/text/Text;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/text/Text;->attributes:Ljavafx/scene/text/Text$TextAttribute;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/text/Text;->attributes:Ljavafx/scene/text/Text$TextAttribute;

    invoke-static {v1}, Ljavafx/scene/text/Text$TextAttribute;->access$2100(Ljavafx/scene/text/Text$TextAttribute;)Ljavafx/beans/property/IntegerProperty;

    move-result-object v1

    if-nez v1, :cond_1

    .line 934
    :cond_0
    const/4 v1, -0x1

    move v0, v1

    .line 936
    .end local v0    # "this":Ljavafx/scene/text/Text;
    :goto_0
    return v0

    .restart local v0    # "this":Ljavafx/scene/text/Text;
    :cond_1
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/text/Text;->attributes:Ljavafx/scene/text/Text$TextAttribute;

    invoke-virtual {v1}, Ljavafx/scene/text/Text$TextAttribute;->getImpl_caretPosition()I

    move-result v1

    move v0, v1

    goto :goto_0
.end method

.method public final getImpl_caretShape()[Ljavafx/scene/shape/PathElement;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 897
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/text/Text;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/text/Text;->impl_caretShapeProperty()Ljavafx/beans/property/ReadOnlyObjectProperty;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/beans/property/ReadOnlyObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljavafx/scene/shape/PathElement;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/text/Text;
    return-object v0
.end method

.method public final getImpl_selectionEnd()I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 861
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/text/Text;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/text/Text;->attributes:Ljavafx/scene/text/Text$TextAttribute;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/text/Text;->attributes:Ljavafx/scene/text/Text$TextAttribute;

    invoke-static {v1}, Ljavafx/scene/text/Text$TextAttribute;->access$2000(Ljavafx/scene/text/Text$TextAttribute;)Ljavafx/beans/property/IntegerProperty;

    move-result-object v1

    if-nez v1, :cond_1

    .line 862
    :cond_0
    const/4 v1, -0x1

    move v0, v1

    .line 864
    .end local v0    # "this":Ljavafx/scene/text/Text;
    :goto_0
    return v0

    .restart local v0    # "this":Ljavafx/scene/text/Text;
    :cond_1
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/text/Text;->attributes:Ljavafx/scene/text/Text$TextAttribute;

    invoke-virtual {v1}, Ljavafx/scene/text/Text$TextAttribute;->getImpl_selectionEnd()I

    move-result v1

    move v0, v1

    goto :goto_0
.end method

.method public final getImpl_selectionShape()[Ljavafx/scene/shape/PathElement;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 785
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/text/Text;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/text/Text;->impl_selectionShapeProperty()Ljavafx/beans/property/ReadOnlyObjectProperty;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/beans/property/ReadOnlyObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljavafx/scene/shape/PathElement;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/text/Text;
    return-object v0
.end method

.method public final getImpl_selectionStart()I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 821
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/text/Text;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/text/Text;->attributes:Ljavafx/scene/text/Text$TextAttribute;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/text/Text;->attributes:Ljavafx/scene/text/Text$TextAttribute;

    invoke-static {v1}, Ljavafx/scene/text/Text$TextAttribute;->access$1900(Ljavafx/scene/text/Text$TextAttribute;)Ljavafx/beans/property/IntegerProperty;

    move-result-object v1

    if-nez v1, :cond_1

    .line 822
    :cond_0
    const/4 v1, -0x1

    move v0, v1

    .line 824
    .end local v0    # "this":Ljavafx/scene/text/Text;
    :goto_0
    return v0

    .restart local v0    # "this":Ljavafx/scene/text/Text;
    :cond_1
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/text/Text;->attributes:Ljavafx/scene/text/Text$TextAttribute;

    invoke-virtual {v1}, Ljavafx/scene/text/Text$TextAttribute;->getImpl_selectionStart()I

    move-result v1

    move v0, v1

    goto :goto_0
.end method

.method public final getLineSpacing()D
    .locals 4

    .prologue
    .line 685
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/text/Text;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/text/Text;->attributes:Ljavafx/scene/text/Text$TextAttribute;

    if-eqz v2, :cond_0

    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/text/Text;->attributes:Ljavafx/scene/text/Text$TextAttribute;

    invoke-static {v2}, Ljavafx/scene/text/Text$TextAttribute;->access$1400(Ljavafx/scene/text/Text$TextAttribute;)Ljavafx/beans/property/DoubleProperty;

    move-result-object v2

    if-nez v2, :cond_1

    .line 686
    :cond_0
    const-wide/16 v2, 0x0

    move-wide v1, v2

    .line 688
    .end local v1    # "this":Ljavafx/scene/text/Text;
    :goto_0
    return-wide v1

    .restart local v1    # "this":Ljavafx/scene/text/Text;
    :cond_1
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/text/Text;->attributes:Ljavafx/scene/text/Text$TextAttribute;

    invoke-virtual {v2}, Ljavafx/scene/text/Text$TextAttribute;->getLineSpacing()D

    move-result-wide v2

    move-wide v1, v2

    goto :goto_0
.end method

.method getSpanBounds()Lcom/sun/javafx/geom/BaseBounds;
    .locals 19

    .prologue
    .line 283
    move-object/from16 v0, p0

    .local v0, "this":Ljavafx/scene/text/Text;
    move-object v11, v0

    iget-boolean v11, v11, Ljavafx/scene/text/Text;->spanBoundsInvalid:Z

    if-eqz v11, :cond_1

    .line 284
    move-object v11, v0

    invoke-direct {v11}, Ljavafx/scene/text/Text;->getRuns()[Lcom/sun/javafx/scene/text/GlyphList;

    move-result-object v11

    move-object v1, v11

    .line 285
    .local v1, "runs":[Lcom/sun/javafx/scene/text/GlyphList;
    move-object v11, v1

    array-length v11, v11

    if-eqz v11, :cond_2

    .line 286
    const/high16 v11, 0x7f800000    # Float.POSITIVE_INFINITY

    move v2, v11

    .line 287
    .local v2, "left":F
    const/high16 v11, 0x7f800000    # Float.POSITIVE_INFINITY

    move v3, v11

    .line 288
    .local v3, "top":F
    const/4 v11, 0x0

    move v4, v11

    .line 289
    .local v4, "right":F
    const/4 v11, 0x0

    move v5, v11

    .line 290
    .local v5, "bottom":F
    const/4 v11, 0x0

    move v6, v11

    .local v6, "i":I
    :goto_0
    move v11, v6

    move-object v12, v1

    array-length v12, v12

    if-ge v11, v12, :cond_0

    .line 291
    move-object v11, v1

    move v12, v6

    aget-object v11, v11, v12

    move-object v7, v11

    .line 292
    .local v7, "run":Lcom/sun/javafx/scene/text/GlyphList;
    move-object v11, v7

    invoke-interface {v11}, Lcom/sun/javafx/scene/text/GlyphList;->getLocation()Lcom/sun/javafx/geom/Point2D;

    move-result-object v11

    move-object v8, v11

    .line 293
    .local v8, "location":Lcom/sun/javafx/geom/Point2D;
    move-object v11, v7

    invoke-interface {v11}, Lcom/sun/javafx/scene/text/GlyphList;->getWidth()F

    move-result v11

    move v9, v11

    .line 294
    .local v9, "width":F
    move-object v11, v7

    invoke-interface {v11}, Lcom/sun/javafx/scene/text/GlyphList;->getLineBounds()Lcom/sun/javafx/geom/RectBounds;

    move-result-object v11

    invoke-virtual {v11}, Lcom/sun/javafx/geom/RectBounds;->getHeight()F

    move-result v11

    move v10, v11

    .line 295
    .local v10, "height":F
    move-object v11, v8

    iget v11, v11, Lcom/sun/javafx/geom/Point2D;->x:F

    move v12, v2

    invoke-static {v11, v12}, Ljava/lang/Math;->min(FF)F

    move-result v11

    move v2, v11

    .line 296
    move-object v11, v8

    iget v11, v11, Lcom/sun/javafx/geom/Point2D;->y:F

    move v12, v3

    invoke-static {v11, v12}, Ljava/lang/Math;->min(FF)F

    move-result v11

    move v3, v11

    .line 297
    move-object v11, v8

    iget v11, v11, Lcom/sun/javafx/geom/Point2D;->x:F

    move v12, v9

    add-float/2addr v11, v12

    move v12, v4

    invoke-static {v11, v12}, Ljava/lang/Math;->max(FF)F

    move-result v11

    move v4, v11

    .line 298
    move-object v11, v8

    iget v11, v11, Lcom/sun/javafx/geom/Point2D;->y:F

    move v12, v10

    add-float/2addr v11, v12

    move v12, v5

    invoke-static {v11, v12}, Ljava/lang/Math;->max(FF)F

    move-result v11

    move v5, v11

    .line 290
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 300
    .end local v7    # "run":Lcom/sun/javafx/scene/text/GlyphList;
    .end local v8    # "location":Lcom/sun/javafx/geom/Point2D;
    .end local v9    # "width":F
    .end local v10    # "height":F
    :cond_0
    move-object v11, v0

    move-object v12, v0

    iget-object v12, v12, Ljavafx/scene/text/Text;->spanBounds:Lcom/sun/javafx/geom/BaseBounds;

    move v13, v2

    move v14, v3

    const/4 v15, 0x0

    move/from16 v16, v4

    move/from16 v17, v5

    const/16 v18, 0x0

    invoke-virtual/range {v12 .. v18}, Lcom/sun/javafx/geom/BaseBounds;->deriveWithNewBounds(FFFFFF)Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v12

    iput-object v12, v11, Ljavafx/scene/text/Text;->spanBounds:Lcom/sun/javafx/geom/BaseBounds;

    .line 302
    .line 305
    .end local v2    # "left":F
    .end local v3    # "top":F
    .end local v4    # "right":F
    .end local v5    # "bottom":F
    .end local v6    # "i":I
    :goto_1
    move-object v11, v0

    const/4 v12, 0x0

    iput-boolean v12, v11, Ljavafx/scene/text/Text;->spanBoundsInvalid:Z

    .line 307
    .end local v1    # "runs":[Lcom/sun/javafx/scene/text/GlyphList;
    :cond_1
    move-object v11, v0

    iget-object v11, v11, Ljavafx/scene/text/Text;->spanBounds:Lcom/sun/javafx/geom/BaseBounds;

    move-object v0, v11

    .end local v0    # "this":Ljavafx/scene/text/Text;
    return-object v0

    .line 303
    .restart local v0    # "this":Ljavafx/scene/text/Text;
    .restart local v1    # "runs":[Lcom/sun/javafx/scene/text/GlyphList;
    :cond_2
    move-object v11, v0

    move-object v12, v0

    iget-object v12, v12, Ljavafx/scene/text/Text;->spanBounds:Lcom/sun/javafx/geom/BaseBounds;

    invoke-virtual {v12}, Lcom/sun/javafx/geom/BaseBounds;->makeEmpty()Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v12

    iput-object v12, v11, Ljavafx/scene/text/Text;->spanBounds:Lcom/sun/javafx/geom/BaseBounds;

    goto :goto_1
.end method

.method public final getText()Ljava/lang/String;
    .locals 2

    .prologue
    .line 374
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/text/Text;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/text/Text;->text:Ljavafx/beans/property/StringProperty;

    if-nez v1, :cond_0

    const-string v1, ""

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/text/Text;
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/text/Text;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/text/Text;->text:Ljavafx/beans/property/StringProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/StringProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_0
.end method

.method public final getTextAlignment()Ljavafx/scene/text/TextAlignment;
    .locals 2

    .prologue
    .line 659
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/text/Text;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/text/Text;->attributes:Ljavafx/scene/text/Text$TextAttribute;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/text/Text;->attributes:Ljavafx/scene/text/Text$TextAttribute;

    invoke-static {v1}, Ljavafx/scene/text/Text$TextAttribute;->access$1300(Ljavafx/scene/text/Text$TextAttribute;)Ljavafx/beans/property/ObjectProperty;

    move-result-object v1

    if-nez v1, :cond_1

    .line 660
    :cond_0
    sget-object v1, Ljavafx/scene/text/Text;->DEFAULT_TEXT_ALIGNMENT:Ljavafx/scene/text/TextAlignment;

    move-object v0, v1

    .line 662
    .end local v0    # "this":Ljavafx/scene/text/Text;
    :goto_0
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/text/Text;
    :cond_1
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/text/Text;->attributes:Ljavafx/scene/text/Text$TextAttribute;

    invoke-virtual {v1}, Ljavafx/scene/text/Text$TextAttribute;->getTextAlignment()Ljavafx/scene/text/TextAlignment;

    move-result-object v1

    move-object v0, v1

    goto :goto_0
.end method

.method public final getTextOrigin()Ljavafx/geometry/VPos;
    .locals 2

    .prologue
    .line 514
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/text/Text;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/text/Text;->attributes:Ljavafx/scene/text/Text$TextAttribute;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/text/Text;->attributes:Ljavafx/scene/text/Text$TextAttribute;

    invoke-static {v1}, Ljavafx/scene/text/Text$TextAttribute;->access$500(Ljavafx/scene/text/Text$TextAttribute;)Ljavafx/beans/property/ObjectProperty;

    move-result-object v1

    if-nez v1, :cond_1

    .line 515
    :cond_0
    sget-object v1, Ljavafx/scene/text/Text;->DEFAULT_TEXT_ORIGIN:Ljavafx/geometry/VPos;

    move-object v0, v1

    .line 517
    .end local v0    # "this":Ljavafx/scene/text/Text;
    :goto_0
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/text/Text;
    :cond_1
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/text/Text;->attributes:Ljavafx/scene/text/Text$TextAttribute;

    invoke-virtual {v1}, Ljavafx/scene/text/Text$TextAttribute;->getTextOrigin()Ljavafx/geometry/VPos;

    move-result-object v1

    move-object v0, v1

    goto :goto_0
.end method

.method getTextSpan()Lcom/sun/javafx/scene/text/TextSpan;
    .locals 6

    .prologue
    .line 200
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/text/Text;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/text/Text;->textSpan:Lcom/sun/javafx/scene/text/TextSpan;

    if-nez v1, :cond_0

    .line 201
    move-object v1, v0

    new-instance v2, Ljavafx/scene/text/Text$1;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/text/Text$1;-><init>(Ljavafx/scene/text/Text;)V

    iput-object v2, v1, Ljavafx/scene/text/Text;->textSpan:Lcom/sun/javafx/scene/text/TextSpan;

    .line 213
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/text/Text;->textSpan:Lcom/sun/javafx/scene/text/TextSpan;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/text/Text;
    return-object v0
.end method

.method public final getWrappingWidth()D
    .locals 4

    .prologue
    .line 591
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/text/Text;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/text/Text;->wrappingWidth:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    const-wide/16 v2, 0x0

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Ljavafx/scene/text/Text;
    return-wide v1

    .restart local v1    # "this":Ljavafx/scene/text/Text;
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/text/Text;->wrappingWidth:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v2}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v2

    goto :goto_0
.end method

.method public final getX()D
    .locals 4

    .prologue
    .line 422
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/text/Text;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/text/Text;->x:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    const-wide/16 v2, 0x0

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Ljavafx/scene/text/Text;
    return-wide v1

    .restart local v1    # "this":Ljavafx/scene/text/Text;
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/text/Text;->x:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v2}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v2

    goto :goto_0
.end method

.method public final getY()D
    .locals 4

    .prologue
    .line 450
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/text/Text;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/text/Text;->y:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    const-wide/16 v2, 0x0

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Ljavafx/scene/text/Text;
    return-wide v1

    .restart local v1    # "this":Ljavafx/scene/text/Text;
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/text/Text;->y:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v2}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v2

    goto :goto_0
.end method

.method public final impl_caretBiasProperty()Ljavafx/beans/property/BooleanProperty;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 988
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/text/Text;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/text/Text;->getTextAttribute()Ljavafx/scene/text/Text$TextAttribute;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/scene/text/Text$TextAttribute;->impl_caretBiasProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/text/Text;
    return-object v0
.end method

.method public final impl_caretPositionProperty()Ljavafx/beans/property/IntegerProperty;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 949
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/text/Text;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/text/Text;->getTextAttribute()Ljavafx/scene/text/Text$TextAttribute;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/scene/text/Text$TextAttribute;->impl_caretPositionProperty()Ljavafx/beans/property/IntegerProperty;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/text/Text;
    return-object v0
.end method

.method public final impl_caretShapeProperty()Ljavafx/beans/property/ReadOnlyObjectProperty;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ReadOnlyObjectProperty",
            "<[",
            "Ljavafx/scene/shape/PathElement;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 909
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/text/Text;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/text/Text;->getTextAttribute()Ljavafx/scene/text/Text$TextAttribute;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/scene/text/Text$TextAttribute;->impl_caretShapeProperty()Ljavafx/beans/property/ReadOnlyObjectProperty;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/text/Text;
    return-object v0
.end method

.method protected final impl_computeContains(DD)Z
    .locals 23
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1217
    move-object/from16 v2, p0

    .local v2, "this":Ljavafx/scene/text/Text;
    move-wide/from16 v3, p1

    .local v3, "localX":D
    move-wide/from16 v5, p3

    .local v5, "localY":D
    move-wide/from16 v18, v3

    move-object/from16 v20, v2

    invoke-virtual/range {v20 .. v20}, Ljavafx/scene/text/Text;->getSpanBounds()Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/sun/javafx/geom/BaseBounds;->getMinX()F

    move-result v20

    move/from16 v0, v20

    float-to-double v0, v0

    move-wide/from16 v20, v0

    add-double v18, v18, v20

    move-wide/from16 v7, v18

    .line 1218
    .local v7, "x":D
    move-wide/from16 v18, v5

    move-object/from16 v20, v2

    invoke-virtual/range {v20 .. v20}, Ljavafx/scene/text/Text;->getSpanBounds()Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/sun/javafx/geom/BaseBounds;->getMinY()F

    move-result v20

    move/from16 v0, v20

    float-to-double v0, v0

    move-wide/from16 v20, v0

    add-double v18, v18, v20

    move-wide/from16 v9, v18

    .line 1219
    .local v9, "y":D
    move-object/from16 v18, v2

    invoke-direct/range {v18 .. v18}, Ljavafx/scene/text/Text;->getRuns()[Lcom/sun/javafx/scene/text/GlyphList;

    move-result-object v18

    move-object/from16 v11, v18

    .line 1220
    .local v11, "runs":[Lcom/sun/javafx/scene/text/GlyphList;
    move-object/from16 v18, v11

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    if-eqz v18, :cond_1

    .line 1221
    const/16 v18, 0x0

    move/from16 v12, v18

    .local v12, "i":I
    :goto_0
    move/from16 v18, v12

    move-object/from16 v19, v11

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_1

    .line 1222
    move-object/from16 v18, v11

    move/from16 v19, v12

    aget-object v18, v18, v19

    move-object/from16 v13, v18

    .line 1223
    .local v13, "run":Lcom/sun/javafx/scene/text/GlyphList;
    move-object/from16 v18, v13

    invoke-interface/range {v18 .. v18}, Lcom/sun/javafx/scene/text/GlyphList;->getLocation()Lcom/sun/javafx/geom/Point2D;

    move-result-object v18

    move-object/from16 v14, v18

    .line 1224
    .local v14, "location":Lcom/sun/javafx/geom/Point2D;
    move-object/from16 v18, v13

    invoke-interface/range {v18 .. v18}, Lcom/sun/javafx/scene/text/GlyphList;->getWidth()F

    move-result v18

    move/from16 v15, v18

    .line 1225
    .local v15, "width":F
    move-object/from16 v18, v13

    invoke-interface/range {v18 .. v18}, Lcom/sun/javafx/scene/text/GlyphList;->getLineBounds()Lcom/sun/javafx/geom/RectBounds;

    move-result-object v18

    move-object/from16 v16, v18

    .line 1226
    .local v16, "lineBounds":Lcom/sun/javafx/geom/RectBounds;
    move-object/from16 v18, v16

    invoke-virtual/range {v18 .. v18}, Lcom/sun/javafx/geom/RectBounds;->getHeight()F

    move-result v18

    move/from16 v17, v18

    .line 1227
    .local v17, "height":F
    move-object/from16 v18, v14

    move-object/from16 v0, v18

    iget v0, v0, Lcom/sun/javafx/geom/Point2D;->x:F

    move/from16 v18, v0

    move/from16 v0, v18

    float-to-double v0, v0

    move-wide/from16 v18, v0

    move-wide/from16 v20, v7

    cmpg-double v18, v18, v20

    if-gtz v18, :cond_0

    move-wide/from16 v18, v7

    move-object/from16 v20, v14

    move-object/from16 v0, v20

    iget v0, v0, Lcom/sun/javafx/geom/Point2D;->x:F

    move/from16 v20, v0

    move/from16 v21, v15

    add-float v20, v20, v21

    move/from16 v0, v20

    float-to-double v0, v0

    move-wide/from16 v20, v0

    cmpg-double v18, v18, v20

    if-gez v18, :cond_0

    move-object/from16 v18, v14

    move-object/from16 v0, v18

    iget v0, v0, Lcom/sun/javafx/geom/Point2D;->y:F

    move/from16 v18, v0

    move/from16 v0, v18

    float-to-double v0, v0

    move-wide/from16 v18, v0

    move-wide/from16 v20, v9

    cmpg-double v18, v18, v20

    if-gtz v18, :cond_0

    move-wide/from16 v18, v9

    move-object/from16 v20, v14

    move-object/from16 v0, v20

    iget v0, v0, Lcom/sun/javafx/geom/Point2D;->y:F

    move/from16 v20, v0

    move/from16 v21, v17

    add-float v20, v20, v21

    move/from16 v0, v20

    float-to-double v0, v0

    move-wide/from16 v20, v0

    cmpg-double v18, v18, v20

    if-gez v18, :cond_0

    .line 1229
    const/16 v18, 0x1

    move/from16 v2, v18

    .line 1233
    .end local v2    # "this":Ljavafx/scene/text/Text;
    .end local v12    # "i":I
    .end local v13    # "run":Lcom/sun/javafx/scene/text/GlyphList;
    .end local v14    # "location":Lcom/sun/javafx/geom/Point2D;
    .end local v15    # "width":F
    .end local v16    # "lineBounds":Lcom/sun/javafx/geom/RectBounds;
    .end local v17    # "height":F
    :goto_1
    return v2

    .line 1221
    .restart local v2    # "this":Ljavafx/scene/text/Text;
    .restart local v12    # "i":I
    .restart local v13    # "run":Lcom/sun/javafx/scene/text/GlyphList;
    .restart local v14    # "location":Lcom/sun/javafx/geom/Point2D;
    .restart local v15    # "width":F
    .restart local v16    # "lineBounds":Lcom/sun/javafx/geom/RectBounds;
    .restart local v17    # "height":F
    :cond_0
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_0

    .line 1233
    .end local v12    # "i":I
    .end local v13    # "run":Lcom/sun/javafx/scene/text/GlyphList;
    .end local v14    # "location":Lcom/sun/javafx/geom/Point2D;
    .end local v15    # "width":F
    .end local v16    # "lineBounds":Lcom/sun/javafx/geom/RectBounds;
    .end local v17    # "height":F
    :cond_1
    const/16 v18, 0x0

    move/from16 v2, v18

    goto :goto_1
.end method

.method public final impl_computeGeomBounds(Lcom/sun/javafx/geom/BaseBounds;Lcom/sun/javafx/geom/transform/BaseTransform;)Lcom/sun/javafx/geom/BaseBounds;
    .locals 19
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1134
    move-object/from16 v0, p0

    .local v0, "this":Ljavafx/scene/text/Text;
    move-object/from16 v1, p1

    .local v1, "bounds":Lcom/sun/javafx/geom/BaseBounds;
    move-object/from16 v2, p2

    .local v2, "tx":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object v11, v0

    invoke-direct {v11}, Ljavafx/scene/text/Text;->isSpan()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 1135
    move-object v11, v0

    iget-object v11, v11, Ljavafx/scene/text/Text;->impl_mode:Lcom/sun/javafx/sg/prism/NGShape$Mode;

    sget-object v12, Lcom/sun/javafx/sg/prism/NGShape$Mode;->FILL:Lcom/sun/javafx/sg/prism/NGShape$Mode;

    if-eq v11, v12, :cond_0

    move-object v11, v0

    invoke-virtual {v11}, Ljavafx/scene/text/Text;->getStrokeType()Ljavafx/scene/shape/StrokeType;

    move-result-object v11

    sget-object v12, Ljavafx/scene/shape/StrokeType;->INSIDE:Ljavafx/scene/shape/StrokeType;

    if-eq v11, v12, :cond_0

    .line 1136
    move-object v11, v0

    move-object v12, v1

    move-object v13, v2

    invoke-super {v11, v12, v13}, Ljavafx/scene/shape/Shape;->impl_computeGeomBounds(Lcom/sun/javafx/geom/BaseBounds;Lcom/sun/javafx/geom/transform/BaseTransform;)Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v11

    move-object v0, v11

    .line 1205
    .end local v0    # "this":Ljavafx/scene/text/Text;
    :goto_0
    return-object v0

    .line 1138
    .restart local v0    # "this":Ljavafx/scene/text/Text;
    :cond_0
    move-object v11, v0

    invoke-direct {v11}, Ljavafx/scene/text/Text;->getTextLayout()Lcom/sun/javafx/scene/text/TextLayout;

    move-result-object v11

    move-object v3, v11

    .line 1139
    .local v3, "layout":Lcom/sun/javafx/scene/text/TextLayout;
    move-object v11, v3

    move-object v12, v0

    invoke-virtual {v12}, Ljavafx/scene/text/Text;->getTextSpan()Lcom/sun/javafx/scene/text/TextSpan;

    move-result-object v12

    move-object v13, v1

    invoke-interface {v11, v12, v13}, Lcom/sun/javafx/scene/text/TextLayout;->getBounds(Lcom/sun/javafx/scene/text/TextSpan;Lcom/sun/javafx/geom/BaseBounds;)Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v11

    move-object v1, v11

    .line 1140
    move-object v11, v0

    invoke-virtual {v11}, Ljavafx/scene/text/Text;->getSpanBounds()Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v11

    move-object v4, v11

    .line 1141
    .local v4, "spanBounds":Lcom/sun/javafx/geom/BaseBounds;
    move-object v11, v1

    invoke-virtual {v11}, Lcom/sun/javafx/geom/BaseBounds;->getMinX()F

    move-result v11

    move-object v12, v4

    invoke-virtual {v12}, Lcom/sun/javafx/geom/BaseBounds;->getMinX()F

    move-result v12

    sub-float/2addr v11, v12

    move v5, v11

    .line 1142
    .local v5, "minX":F
    move-object v11, v1

    invoke-virtual {v11}, Lcom/sun/javafx/geom/BaseBounds;->getMinY()F

    move-result v11

    move-object v12, v4

    invoke-virtual {v12}, Lcom/sun/javafx/geom/BaseBounds;->getMinY()F

    move-result v12

    sub-float/2addr v11, v12

    move v6, v11

    .line 1143
    .local v6, "minY":F
    move v11, v5

    move-object v12, v1

    invoke-virtual {v12}, Lcom/sun/javafx/geom/BaseBounds;->getWidth()F

    move-result v12

    add-float/2addr v11, v12

    move v7, v11

    .line 1144
    .local v7, "maxX":F
    move v11, v6

    move-object v12, v1

    invoke-virtual {v12}, Lcom/sun/javafx/geom/BaseBounds;->getHeight()F

    move-result v12

    add-float/2addr v11, v12

    move v8, v11

    .line 1145
    .local v8, "maxY":F
    move-object v11, v1

    move v12, v5

    move v13, v6

    const/4 v14, 0x0

    move v15, v7

    move/from16 v16, v8

    const/16 v17, 0x0

    invoke-virtual/range {v11 .. v17}, Lcom/sun/javafx/geom/BaseBounds;->deriveWithNewBounds(FFFFFF)Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v11

    move-object v1, v11

    .line 1146
    move-object v11, v2

    move-object v12, v1

    move-object v13, v1

    invoke-virtual {v11, v12, v13}, Lcom/sun/javafx/geom/transform/BaseTransform;->transform(Lcom/sun/javafx/geom/BaseBounds;Lcom/sun/javafx/geom/BaseBounds;)Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v11

    move-object v0, v11

    goto :goto_0

    .line 1149
    .end local v3    # "layout":Lcom/sun/javafx/scene/text/TextLayout;
    .end local v4    # "spanBounds":Lcom/sun/javafx/geom/BaseBounds;
    .end local v5    # "minX":F
    .end local v6    # "minY":F
    .end local v7    # "maxX":F
    .end local v8    # "maxY":F
    :cond_1
    move-object v11, v0

    invoke-virtual {v11}, Ljavafx/scene/text/Text;->getBoundsType()Ljavafx/scene/text/TextBoundsType;

    move-result-object v11

    sget-object v12, Ljavafx/scene/text/TextBoundsType;->VISUAL:Ljavafx/scene/text/TextBoundsType;

    if-ne v11, v12, :cond_6

    .line 1150
    move-object v11, v0

    invoke-direct {v11}, Ljavafx/scene/text/Text;->getTextInternal()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-eqz v11, :cond_2

    move-object v11, v0

    iget-object v11, v11, Ljavafx/scene/text/Text;->impl_mode:Lcom/sun/javafx/sg/prism/NGShape$Mode;

    sget-object v12, Lcom/sun/javafx/sg/prism/NGShape$Mode;->EMPTY:Lcom/sun/javafx/sg/prism/NGShape$Mode;

    if-ne v11, v12, :cond_3

    .line 1151
    :cond_2
    move-object v11, v1

    invoke-virtual {v11}, Lcom/sun/javafx/geom/BaseBounds;->makeEmpty()Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v11

    move-object v0, v11

    goto :goto_0

    .line 1153
    :cond_3
    move-object v11, v0

    iget-object v11, v11, Ljavafx/scene/text/Text;->impl_mode:Lcom/sun/javafx/sg/prism/NGShape$Mode;

    sget-object v12, Lcom/sun/javafx/sg/prism/NGShape$Mode;->FILL:Lcom/sun/javafx/sg/prism/NGShape$Mode;

    if-eq v11, v12, :cond_4

    move-object v11, v0

    invoke-virtual {v11}, Ljavafx/scene/text/Text;->getStrokeType()Ljavafx/scene/shape/StrokeType;

    move-result-object v11

    sget-object v12, Ljavafx/scene/shape/StrokeType;->INSIDE:Ljavafx/scene/shape/StrokeType;

    if-ne v11, v12, :cond_5

    .line 1155
    :cond_4
    move-object v11, v0

    invoke-direct {v11}, Ljavafx/scene/text/Text;->getVisualBounds()Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v11

    move-object v3, v11

    .line 1156
    .local v3, "visualBounds":Lcom/sun/javafx/geom/BaseBounds;
    move-object v11, v3

    invoke-virtual {v11}, Lcom/sun/javafx/geom/BaseBounds;->getMinX()F

    move-result v11

    move-object v12, v0

    invoke-virtual {v12}, Ljavafx/scene/text/Text;->getX()D

    move-result-wide v12

    double-to-float v12, v12

    add-float/2addr v11, v12

    move v4, v11

    .line 1157
    .local v4, "x":F
    move-object v11, v0

    move-object v12, v3

    invoke-direct {v11, v12}, Ljavafx/scene/text/Text;->getYAdjustment(Lcom/sun/javafx/geom/BaseBounds;)F

    move-result v11

    move v5, v11

    .line 1158
    .local v5, "yadj":F
    move-object v11, v3

    invoke-virtual {v11}, Lcom/sun/javafx/geom/BaseBounds;->getMinY()F

    move-result v11

    move v12, v5

    add-float/2addr v11, v12

    move-object v12, v0

    invoke-virtual {v12}, Ljavafx/scene/text/Text;->getY()D

    move-result-wide v12

    double-to-float v12, v12

    add-float/2addr v11, v12

    move v6, v11

    .line 1159
    .local v6, "y":F
    move-object v11, v1

    move v12, v4

    move v13, v6

    const/4 v14, 0x0

    move v15, v4

    move-object/from16 v16, v3

    invoke-virtual/range {v16 .. v16}, Lcom/sun/javafx/geom/BaseBounds;->getWidth()F

    move-result v16

    add-float v15, v15, v16

    move/from16 v16, v6

    move-object/from16 v17, v3

    .line 1160
    invoke-virtual/range {v17 .. v17}, Lcom/sun/javafx/geom/BaseBounds;->getHeight()F

    move-result v17

    add-float v16, v16, v17

    const/16 v17, 0x0

    .line 1159
    invoke-virtual/range {v11 .. v17}, Lcom/sun/javafx/geom/BaseBounds;->deriveWithNewBounds(FFFFFF)Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v11

    .line 1161
    move-object v11, v2

    move-object v12, v1

    move-object v13, v1

    invoke-virtual {v11, v12, v13}, Lcom/sun/javafx/geom/transform/BaseTransform;->transform(Lcom/sun/javafx/geom/BaseBounds;Lcom/sun/javafx/geom/BaseBounds;)Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v11

    move-object v0, v11

    goto/16 :goto_0

    .line 1164
    .end local v3    # "visualBounds":Lcom/sun/javafx/geom/BaseBounds;
    .end local v4    # "x":F
    .end local v5    # "yadj":F
    .end local v6    # "y":F
    :cond_5
    move-object v11, v0

    move-object v12, v1

    move-object v13, v2

    invoke-super {v11, v12, v13}, Ljavafx/scene/shape/Shape;->impl_computeGeomBounds(Lcom/sun/javafx/geom/BaseBounds;Lcom/sun/javafx/geom/transform/BaseTransform;)Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v11

    move-object v0, v11

    goto/16 :goto_0

    .line 1168
    :cond_6
    move-object v11, v0

    invoke-direct {v11}, Ljavafx/scene/text/Text;->getLogicalBounds()Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v11

    move-object v3, v11

    .line 1169
    .local v3, "textBounds":Lcom/sun/javafx/geom/BaseBounds;
    move-object v11, v3

    invoke-virtual {v11}, Lcom/sun/javafx/geom/BaseBounds;->getMinX()F

    move-result v11

    move-object v12, v0

    invoke-virtual {v12}, Ljavafx/scene/text/Text;->getX()D

    move-result-wide v12

    double-to-float v12, v12

    add-float/2addr v11, v12

    move v4, v11

    .line 1170
    .restart local v4    # "x":F
    move-object v11, v0

    move-object v12, v3

    invoke-direct {v11, v12}, Ljavafx/scene/text/Text;->getYAdjustment(Lcom/sun/javafx/geom/BaseBounds;)F

    move-result v11

    move v5, v11

    .line 1171
    .restart local v5    # "yadj":F
    move-object v11, v3

    invoke-virtual {v11}, Lcom/sun/javafx/geom/BaseBounds;->getMinY()F

    move-result v11

    move v12, v5

    add-float/2addr v11, v12

    move-object v12, v0

    invoke-virtual {v12}, Ljavafx/scene/text/Text;->getY()D

    move-result-wide v12

    double-to-float v12, v12

    add-float/2addr v11, v12

    move v6, v11

    .line 1172
    .restart local v6    # "y":F
    move-object v11, v3

    invoke-virtual {v11}, Lcom/sun/javafx/geom/BaseBounds;->getWidth()F

    move-result v11

    move v7, v11

    .line 1173
    .local v7, "width":F
    move-object v11, v3

    invoke-virtual {v11}, Lcom/sun/javafx/geom/BaseBounds;->getHeight()F

    move-result v11

    move v8, v11

    .line 1174
    .local v8, "height":F
    move-object v11, v0

    invoke-virtual {v11}, Ljavafx/scene/text/Text;->getWrappingWidth()D

    move-result-wide v11

    double-to-float v11, v11

    move v9, v11

    .line 1175
    .local v9, "wrappingWidth":F
    move v11, v9

    move v12, v7

    cmpl-float v11, v11, v12

    if-lez v11, :cond_8

    .line 1176
    move v11, v9

    move v7, v11

    .line 1189
    :cond_7
    :goto_1
    new-instance v11, Lcom/sun/javafx/geom/RectBounds;

    move-object/from16 v18, v11

    move-object/from16 v11, v18

    move-object/from16 v12, v18

    move v13, v4

    move v14, v6

    move v15, v4

    move/from16 v16, v7

    add-float v15, v15, v16

    move/from16 v16, v6

    move/from16 v17, v8

    add-float v16, v16, v17

    invoke-direct/range {v12 .. v16}, Lcom/sun/javafx/geom/RectBounds;-><init>(FFFF)V

    move-object v3, v11

    .line 1192
    move-object v11, v0

    iget-object v11, v11, Ljavafx/scene/text/Text;->impl_mode:Lcom/sun/javafx/sg/prism/NGShape$Mode;

    sget-object v12, Lcom/sun/javafx/sg/prism/NGShape$Mode;->FILL:Lcom/sun/javafx/sg/prism/NGShape$Mode;

    if-eq v11, v12, :cond_9

    move-object v11, v0

    invoke-virtual {v11}, Ljavafx/scene/text/Text;->getStrokeType()Ljavafx/scene/shape/StrokeType;

    move-result-object v11

    sget-object v12, Ljavafx/scene/shape/StrokeType;->INSIDE:Ljavafx/scene/shape/StrokeType;

    if-eq v11, v12, :cond_9

    .line 1193
    move-object v11, v0

    move-object v12, v1

    sget-object v13, Lcom/sun/javafx/geom/transform/BaseTransform;->IDENTITY_TRANSFORM:Lcom/sun/javafx/geom/transform/BaseTransform;

    .line 1194
    invoke-super {v11, v12, v13}, Ljavafx/scene/shape/Shape;->impl_computeGeomBounds(Lcom/sun/javafx/geom/BaseBounds;Lcom/sun/javafx/geom/transform/BaseTransform;)Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v11

    move-object v1, v11

    .line 1204
    :goto_2
    move-object v11, v1

    move-object v12, v3

    invoke-virtual {v11, v12}, Lcom/sun/javafx/geom/BaseBounds;->deriveWithUnion(Lcom/sun/javafx/geom/BaseBounds;)Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v11

    move-object v1, v11

    .line 1205
    move-object v11, v2

    move-object v12, v1

    move-object v13, v1

    invoke-virtual {v11, v12, v13}, Lcom/sun/javafx/geom/transform/BaseTransform;->transform(Lcom/sun/javafx/geom/BaseBounds;Lcom/sun/javafx/geom/BaseBounds;)Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v11

    move-object v0, v11

    goto/16 :goto_0

    .line 1182
    :cond_8
    move v11, v9

    const/4 v12, 0x0

    cmpl-float v11, v11, v12

    if-lez v11, :cond_7

    .line 1183
    move-object v11, v0

    invoke-virtual {v11}, Ljavafx/scene/text/Text;->getEffectiveNodeOrientation()Ljavafx/geometry/NodeOrientation;

    move-result-object v11

    move-object v10, v11

    .line 1184
    .local v10, "orientation":Ljavafx/geometry/NodeOrientation;
    move-object v11, v10

    sget-object v12, Ljavafx/geometry/NodeOrientation;->RIGHT_TO_LEFT:Ljavafx/geometry/NodeOrientation;

    if-ne v11, v12, :cond_7

    .line 1185
    move v11, v4

    move v12, v7

    move v13, v9

    sub-float/2addr v12, v13

    sub-float/2addr v11, v12

    move v4, v11

    goto :goto_1

    .line 1197
    .end local v10    # "orientation":Ljavafx/geometry/NodeOrientation;
    :cond_9
    move-object v11, v0

    invoke-direct {v11}, Ljavafx/scene/text/Text;->getTextLayout()Lcom/sun/javafx/scene/text/TextLayout;

    move-result-object v11

    move-object v10, v11

    .line 1198
    .local v10, "layout":Lcom/sun/javafx/scene/text/TextLayout;
    move-object v11, v10

    const/4 v12, 0x0

    move-object v13, v1

    invoke-interface {v11, v12, v13}, Lcom/sun/javafx/scene/text/TextLayout;->getBounds(Lcom/sun/javafx/scene/text/TextSpan;Lcom/sun/javafx/geom/BaseBounds;)Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v11

    move-object v1, v11

    .line 1199
    move-object v11, v1

    invoke-virtual {v11}, Lcom/sun/javafx/geom/BaseBounds;->getMinX()F

    move-result v11

    move-object v12, v0

    invoke-virtual {v12}, Ljavafx/scene/text/Text;->getX()D

    move-result-wide v12

    double-to-float v12, v12

    add-float/2addr v11, v12

    move v4, v11

    .line 1200
    move-object v11, v1

    invoke-virtual {v11}, Lcom/sun/javafx/geom/BaseBounds;->getWidth()F

    move-result v11

    move v7, v11

    .line 1201
    move-object v11, v1

    move v12, v4

    move v13, v6

    const/4 v14, 0x0

    move v15, v4

    move/from16 v16, v7

    add-float v15, v15, v16

    move/from16 v16, v6

    move/from16 v17, v8

    add-float v16, v16, v17

    const/16 v17, 0x0

    invoke-virtual/range {v11 .. v17}, Lcom/sun/javafx/geom/BaseBounds;->deriveWithNewBounds(FFFFFF)Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v11

    move-object v1, v11

    goto :goto_2
.end method

.method protected final impl_computeLayoutBounds()Ljavafx/geometry/Bounds;
    .locals 23
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1102
    move-object/from16 v0, p0

    .local v0, "this":Ljavafx/scene/text/Text;
    move-object v12, v0

    invoke-direct {v12}, Ljavafx/scene/text/Text;->isSpan()Z

    move-result v12

    if-eqz v12, :cond_0

    .line 1103
    move-object v12, v0

    invoke-virtual {v12}, Ljavafx/scene/text/Text;->getSpanBounds()Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v12

    move-object v1, v12

    .line 1104
    .local v1, "bounds":Lcom/sun/javafx/geom/BaseBounds;
    move-object v12, v1

    invoke-virtual {v12}, Lcom/sun/javafx/geom/BaseBounds;->getWidth()F

    move-result v12

    float-to-double v12, v12

    move-wide v2, v12

    .line 1105
    .local v2, "width":D
    move-object v12, v1

    invoke-virtual {v12}, Lcom/sun/javafx/geom/BaseBounds;->getHeight()F

    move-result v12

    float-to-double v12, v12

    move-wide v4, v12

    .line 1106
    .local v4, "height":D
    new-instance v12, Ljavafx/geometry/BoundingBox;

    move-object/from16 v22, v12

    move-object/from16 v12, v22

    move-object/from16 v13, v22

    const-wide/16 v14, 0x0

    const-wide/16 v16, 0x0

    move-wide/from16 v18, v2

    move-wide/from16 v20, v4

    invoke-direct/range {v13 .. v21}, Ljavafx/geometry/BoundingBox;-><init>(DDDD)V

    move-object v0, v12

    .line 1122
    .end local v0    # "this":Ljavafx/scene/text/Text;
    .local v2, "x":D
    .local v4, "y":D
    .local v6, "width":D
    .local v8, "height":D
    .local v10, "wrappingWidth":D
    :goto_0
    return-object v0

    .line 1109
    .end local v1    # "bounds":Lcom/sun/javafx/geom/BaseBounds;
    .end local v2    # "x":D
    .end local v4    # "y":D
    .end local v6    # "width":D
    .end local v8    # "height":D
    .end local v10    # "wrappingWidth":D
    .restart local v0    # "this":Ljavafx/scene/text/Text;
    :cond_0
    move-object v12, v0

    invoke-virtual {v12}, Ljavafx/scene/text/Text;->getBoundsType()Ljavafx/scene/text/TextBoundsType;

    move-result-object v12

    sget-object v13, Ljavafx/scene/text/TextBoundsType;->VISUAL:Ljavafx/scene/text/TextBoundsType;

    if-ne v12, v13, :cond_1

    .line 1113
    move-object v12, v0

    invoke-super {v12}, Ljavafx/scene/shape/Shape;->impl_computeLayoutBounds()Ljavafx/geometry/Bounds;

    move-result-object v12

    move-object v0, v12

    goto :goto_0

    .line 1115
    :cond_1
    move-object v12, v0

    invoke-direct {v12}, Ljavafx/scene/text/Text;->getLogicalBounds()Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v12

    move-object v1, v12

    .line 1116
    .restart local v1    # "bounds":Lcom/sun/javafx/geom/BaseBounds;
    move-object v12, v1

    invoke-virtual {v12}, Lcom/sun/javafx/geom/BaseBounds;->getMinX()F

    move-result v12

    float-to-double v12, v12

    move-object v14, v0

    invoke-virtual {v14}, Ljavafx/scene/text/Text;->getX()D

    move-result-wide v14

    add-double/2addr v12, v14

    move-wide v2, v12

    .line 1117
    .restart local v2    # "x":D
    move-object v12, v1

    invoke-virtual {v12}, Lcom/sun/javafx/geom/BaseBounds;->getMinY()F

    move-result v12

    float-to-double v12, v12

    move-object v14, v0

    invoke-virtual {v14}, Ljavafx/scene/text/Text;->getY()D

    move-result-wide v14

    add-double/2addr v12, v14

    move-object v14, v0

    move-object v15, v1

    invoke-direct {v14, v15}, Ljavafx/scene/text/Text;->getYAdjustment(Lcom/sun/javafx/geom/BaseBounds;)F

    move-result v14

    float-to-double v14, v14

    add-double/2addr v12, v14

    move-wide v4, v12

    .line 1118
    .restart local v4    # "y":D
    move-object v12, v1

    invoke-virtual {v12}, Lcom/sun/javafx/geom/BaseBounds;->getWidth()F

    move-result v12

    float-to-double v12, v12

    move-wide v6, v12

    .line 1119
    .restart local v6    # "width":D
    move-object v12, v1

    invoke-virtual {v12}, Lcom/sun/javafx/geom/BaseBounds;->getHeight()F

    move-result v12

    float-to-double v12, v12

    move-wide v8, v12

    .line 1120
    .restart local v8    # "height":D
    move-object v12, v0

    invoke-virtual {v12}, Ljavafx/scene/text/Text;->getWrappingWidth()D

    move-result-wide v12

    move-wide v10, v12

    .line 1121
    .restart local v10    # "wrappingWidth":D
    move-wide v12, v10

    const-wide/16 v14, 0x0

    cmpl-double v12, v12, v14

    if-eqz v12, :cond_2

    move-wide v12, v10

    move-wide v6, v12

    .line 1122
    :cond_2
    new-instance v12, Ljavafx/geometry/BoundingBox;

    move-object/from16 v22, v12

    move-object/from16 v12, v22

    move-object/from16 v13, v22

    move-wide v14, v2

    move-wide/from16 v16, v4

    move-wide/from16 v18, v6

    move-wide/from16 v20, v8

    invoke-direct/range {v13 .. v21}, Ljavafx/geometry/BoundingBox;-><init>(DDDD)V

    move-object v0, v12

    goto :goto_0
.end method

.method public final impl_configShape()Lcom/sun/javafx/geom/Shape;
    .locals 11
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1244
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/text/Text;
    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/text/Text;->impl_mode:Lcom/sun/javafx/sg/prism/NGShape$Mode;

    sget-object v6, Lcom/sun/javafx/sg/prism/NGShape$Mode;->EMPTY:Lcom/sun/javafx/sg/prism/NGShape$Mode;

    if-eq v5, v6, :cond_0

    move-object v5, v0

    invoke-direct {v5}, Ljavafx/scene/text/Text;->getTextInternal()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_1

    .line 1245
    :cond_0
    new-instance v5, Lcom/sun/javafx/geom/Path2D;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    invoke-direct {v6}, Lcom/sun/javafx/geom/Path2D;-><init>()V

    move-object v0, v5

    .line 1257
    .end local v0    # "this":Ljavafx/scene/text/Text;
    .local v1, "shape":Lcom/sun/javafx/geom/Shape;
    .local v2, "x":F
    .local v3, "y":F
    :goto_0
    return-object v0

    .line 1247
    .end local v1    # "shape":Lcom/sun/javafx/geom/Shape;
    .end local v2    # "x":F
    .end local v3    # "y":F
    .restart local v0    # "this":Ljavafx/scene/text/Text;
    :cond_1
    move-object v5, v0

    invoke-direct {v5}, Ljavafx/scene/text/Text;->getShape()Lcom/sun/javafx/geom/Shape;

    move-result-object v5

    move-object v1, v5

    .line 1249
    .restart local v1    # "shape":Lcom/sun/javafx/geom/Shape;
    move-object v5, v0

    invoke-direct {v5}, Ljavafx/scene/text/Text;->isSpan()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1250
    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/text/Text;->getSpanBounds()Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v5

    move-object v4, v5

    .line 1251
    .local v4, "bounds":Lcom/sun/javafx/geom/BaseBounds;
    move-object v5, v4

    invoke-virtual {v5}, Lcom/sun/javafx/geom/BaseBounds;->getMinX()F

    move-result v5

    neg-float v5, v5

    move v2, v5

    .line 1252
    .restart local v2    # "x":F
    move-object v5, v4

    invoke-virtual {v5}, Lcom/sun/javafx/geom/BaseBounds;->getMinY()F

    move-result v5

    neg-float v5, v5

    move v3, v5

    .line 1257
    .end local v4    # "bounds":Lcom/sun/javafx/geom/BaseBounds;
    .restart local v3    # "y":F
    :goto_1
    move-object v5, v1

    move v6, v2

    float-to-double v6, v6

    move v8, v3

    float-to-double v8, v8

    invoke-static {v5, v6, v7, v8, v9}, Lcom/sun/javafx/geom/TransformedShape;->translatedShape(Lcom/sun/javafx/geom/Shape;DD)Lcom/sun/javafx/geom/TransformedShape;

    move-result-object v5

    move-object v0, v5

    goto :goto_0

    .line 1254
    .end local v2    # "x":F
    .end local v3    # "y":F
    :cond_2
    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/text/Text;->getX()D

    move-result-wide v5

    double-to-float v5, v5

    move v2, v5

    .line 1255
    .restart local v2    # "x":F
    move-object v5, v0

    move-object v6, v0

    invoke-direct {v6}, Ljavafx/scene/text/Text;->getVisualBounds()Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v6

    invoke-direct {v5, v6}, Ljavafx/scene/text/Text;->getYAdjustment(Lcom/sun/javafx/geom/BaseBounds;)F

    move-result v5

    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/scene/text/Text;->getY()D

    move-result-wide v6

    double-to-float v6, v6

    add-float/2addr v5, v6

    move v3, v5

    .restart local v3    # "y":F
    goto :goto_1
.end method

.method protected final impl_createPeer()Lcom/sun/javafx/sg/prism/NGNode;
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 108
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/text/Text;
    new-instance v1, Lcom/sun/javafx/sg/prism/NGText;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Lcom/sun/javafx/sg/prism/NGText;-><init>()V

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/text/Text;
    return-object v0
.end method

.method public final impl_displaySoftwareKeyboard(Z)V
    .locals 0
    .param p1, "display"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1051
    return-void
.end method

.method protected final impl_geomChanged()V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 766
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/text/Text;
    move-object v1, v0

    invoke-super {v1}, Ljavafx/scene/shape/Shape;->impl_geomChanged()V

    .line 767
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/text/Text;->attributes:Ljavafx/scene/text/Text$TextAttribute;

    if-eqz v1, :cond_1

    .line 768
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/text/Text;->attributes:Ljavafx/scene/text/Text$TextAttribute;

    invoke-static {v1}, Ljavafx/scene/text/Text$TextAttribute;->access$1700(Ljavafx/scene/text/Text$TextAttribute;)Ljavafx/beans/binding/ObjectBinding;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 769
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/text/Text;->attributes:Ljavafx/scene/text/Text$TextAttribute;

    invoke-static {v1}, Ljavafx/scene/text/Text$TextAttribute;->access$1700(Ljavafx/scene/text/Text$TextAttribute;)Ljavafx/beans/binding/ObjectBinding;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/beans/binding/ObjectBinding;->invalidate()V

    .line 771
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/text/Text;->attributes:Ljavafx/scene/text/Text$TextAttribute;

    invoke-static {v1}, Ljavafx/scene/text/Text$TextAttribute;->access$1800(Ljavafx/scene/text/Text$TextAttribute;)Ljavafx/beans/binding/ObjectBinding;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 772
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/text/Text;->attributes:Ljavafx/scene/text/Text$TextAttribute;

    invoke-static {v1}, Ljavafx/scene/text/Text$TextAttribute;->access$1800(Ljavafx/scene/text/Text$TextAttribute;)Ljavafx/beans/binding/ObjectBinding;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/beans/binding/ObjectBinding;->invalidate()V

    .line 775
    :cond_1
    move-object v1, v0

    sget-object v2, Lcom/sun/javafx/scene/DirtyBits;->NODE_GEOMETRY:Lcom/sun/javafx/scene/DirtyBits;

    invoke-virtual {v1, v2}, Ljavafx/scene/text/Text;->impl_markDirty(Lcom/sun/javafx/scene/DirtyBits;)V

    .line 776
    return-void
.end method

.method public final impl_getRangeShape(II)[Ljavafx/scene/shape/PathElement;
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1027
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/text/Text;
    move v1, p1

    .local v1, "start":I
    move v2, p2

    .local v2, "end":I
    move-object v3, v0

    move v4, v1

    move v5, v2

    const/4 v6, 0x1

    invoke-direct {v3, v4, v5, v6}, Ljavafx/scene/text/Text;->getRange(III)[Ljavafx/scene/shape/PathElement;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Ljavafx/scene/text/Text;
    return-object v0
.end method

.method public final impl_getUnderlineShape(II)[Ljavafx/scene/shape/PathElement;
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1039
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/text/Text;
    move v1, p1

    .local v1, "start":I
    move v2, p2

    .local v2, "end":I
    move-object v3, v0

    move v4, v1

    move v5, v2

    const/4 v6, 0x2

    invoke-direct {v3, v4, v5, v6}, Ljavafx/scene/text/Text;->getRange(III)[Ljavafx/scene/shape/PathElement;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Ljavafx/scene/text/Text;
    return-object v0
.end method

.method public final impl_hitTestChar(Ljavafx/geometry/Point2D;)Lcom/sun/javafx/scene/text/HitInfo;
    .locals 12
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1000
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/text/Text;
    move-object v2, p1

    .local v2, "point":Ljavafx/geometry/Point2D;
    move-object v8, v2

    if-nez v8, :cond_0

    const/4 v8, 0x0

    move-object v1, v8

    .line 1004
    .end local v1    # "this":Ljavafx/scene/text/Text;
    :goto_0
    return-object v1

    .line 1001
    .restart local v1    # "this":Ljavafx/scene/text/Text;
    :cond_0
    move-object v8, v1

    invoke-direct {v8}, Ljavafx/scene/text/Text;->getTextLayout()Lcom/sun/javafx/scene/text/TextLayout;

    move-result-object v8

    move-object v3, v8

    .line 1002
    .local v3, "layout":Lcom/sun/javafx/scene/text/TextLayout;
    move-object v8, v2

    invoke-virtual {v8}, Ljavafx/geometry/Point2D;->getX()D

    move-result-wide v8

    move-object v10, v1

    invoke-virtual {v10}, Ljavafx/scene/text/Text;->getX()D

    move-result-wide v10

    sub-double/2addr v8, v10

    move-wide v4, v8

    .line 1003
    .local v4, "x":D
    move-object v8, v2

    invoke-virtual {v8}, Ljavafx/geometry/Point2D;->getY()D

    move-result-wide v8

    move-object v10, v1

    invoke-virtual {v10}, Ljavafx/scene/text/Text;->getY()D

    move-result-wide v10

    sub-double/2addr v8, v10

    move-object v10, v1

    invoke-direct {v10}, Ljavafx/scene/text/Text;->getYRendering()F

    move-result v10

    float-to-double v10, v10

    add-double/2addr v8, v10

    move-wide v6, v8

    .line 1004
    .local v6, "y":D
    move-object v8, v3

    move-wide v9, v4

    double-to-float v9, v9

    move-wide v10, v6

    double-to-float v10, v10

    invoke-interface {v8, v9, v10}, Lcom/sun/javafx/scene/text/TextLayout;->getHitInfo(FF)Lcom/sun/javafx/scene/text/HitInfo;

    move-result-object v8

    move-object v1, v8

    goto :goto_0
.end method

.method public final impl_selectionEndProperty()Ljavafx/beans/property/IntegerProperty;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 877
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/text/Text;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/text/Text;->getTextAttribute()Ljavafx/scene/text/Text$TextAttribute;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/scene/text/Text$TextAttribute;->impl_selectionEndProperty()Ljavafx/beans/property/IntegerProperty;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/text/Text;
    return-object v0
.end method

.method public final impl_selectionFillProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/scene/paint/Paint;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 887
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/text/Text;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/text/Text;->getTextAttribute()Ljavafx/scene/text/Text$TextAttribute;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/scene/text/Text$TextAttribute;->impl_selectionFillProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/text/Text;
    return-object v0
.end method

.method public final impl_selectionShapeProperty()Ljavafx/beans/property/ReadOnlyObjectProperty;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ReadOnlyObjectProperty",
            "<[",
            "Ljavafx/scene/shape/PathElement;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 797
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/text/Text;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/text/Text;->getTextAttribute()Ljavafx/scene/text/Text$TextAttribute;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/scene/text/Text$TextAttribute;->impl_selectionShapeProperty()Ljavafx/beans/property/ReadOnlyObjectProperty;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/text/Text;
    return-object v0
.end method

.method public final impl_selectionStartProperty()Ljavafx/beans/property/IntegerProperty;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 837
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/text/Text;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/text/Text;->getTextAttribute()Ljavafx/scene/text/Text$TextAttribute;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/scene/text/Text$TextAttribute;->impl_selectionStartProperty()Ljavafx/beans/property/IntegerProperty;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/text/Text;
    return-object v0
.end method

.method public final impl_updatePeer()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1499
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/text/Text;
    move-object v1, v0

    invoke-super {v1}, Ljavafx/scene/shape/Shape;->impl_updatePeer()V

    .line 1500
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/text/Text;->updatePGText()V

    .line 1501
    return-void
.end method

.method public final isImpl_caretBias()Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 972
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/text/Text;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/text/Text;->attributes:Ljavafx/scene/text/Text$TextAttribute;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/text/Text;->attributes:Ljavafx/scene/text/Text$TextAttribute;

    invoke-static {v1}, Ljavafx/scene/text/Text$TextAttribute;->access$2200(Ljavafx/scene/text/Text$TextAttribute;)Ljavafx/beans/property/BooleanProperty;

    move-result-object v1

    if-nez v1, :cond_1

    .line 973
    :cond_0
    const/4 v1, 0x1

    move v0, v1

    .line 975
    .end local v0    # "this":Ljavafx/scene/text/Text;
    :goto_0
    return v0

    .restart local v0    # "this":Ljavafx/scene/text/Text;
    :cond_1
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/text/Text;->getTextAttribute()Ljavafx/scene/text/Text$TextAttribute;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/scene/text/Text$TextAttribute;->isImpl_caretBias()Z

    move-result v1

    move v0, v1

    goto :goto_0
.end method

.method public final isStrikethrough()Z
    .locals 2

    .prologue
    .line 639
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/text/Text;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/text/Text;->attributes:Ljavafx/scene/text/Text$TextAttribute;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/text/Text;->attributes:Ljavafx/scene/text/Text$TextAttribute;

    invoke-static {v1}, Ljavafx/scene/text/Text$TextAttribute;->access$1200(Ljavafx/scene/text/Text$TextAttribute;)Ljavafx/beans/property/BooleanProperty;

    move-result-object v1

    if-nez v1, :cond_1

    .line 640
    :cond_0
    const/4 v1, 0x0

    move v0, v1

    .line 642
    .end local v0    # "this":Ljavafx/scene/text/Text;
    :goto_0
    return v0

    .restart local v0    # "this":Ljavafx/scene/text/Text;
    :cond_1
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/text/Text;->attributes:Ljavafx/scene/text/Text$TextAttribute;

    invoke-virtual {v1}, Ljavafx/scene/text/Text$TextAttribute;->isStrikethrough()Z

    move-result v1

    move v0, v1

    goto :goto_0
.end method

.method public final isUnderline()Z
    .locals 2

    .prologue
    .line 619
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/text/Text;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/text/Text;->attributes:Ljavafx/scene/text/Text$TextAttribute;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/text/Text;->attributes:Ljavafx/scene/text/Text$TextAttribute;

    invoke-static {v1}, Ljavafx/scene/text/Text$TextAttribute;->access$1100(Ljavafx/scene/text/Text$TextAttribute;)Ljavafx/beans/property/BooleanProperty;

    move-result-object v1

    if-nez v1, :cond_1

    .line 620
    :cond_0
    const/4 v1, 0x0

    move v0, v1

    .line 622
    .end local v0    # "this":Ljavafx/scene/text/Text;
    :goto_0
    return v0

    .restart local v0    # "this":Ljavafx/scene/text/Text;
    :cond_1
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/text/Text;->attributes:Ljavafx/scene/text/Text$TextAttribute;

    invoke-virtual {v1}, Ljavafx/scene/text/Text$TextAttribute;->isUnderline()Z

    move-result v1

    move v0, v1

    goto :goto_0
.end method

.method layoutSpan([Lcom/sun/javafx/scene/text/GlyphList;)V
    .locals 9

    .prologue
    .line 247
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/text/Text;
    move-object v1, p1

    .local v1, "runs":[Lcom/sun/javafx/scene/text/GlyphList;
    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/scene/text/Text;->getTextSpan()Lcom/sun/javafx/scene/text/TextSpan;

    move-result-object v6

    move-object v2, v6

    .line 248
    .local v2, "span":Lcom/sun/javafx/scene/text/TextSpan;
    const/4 v6, 0x0

    move v3, v6

    .line 249
    .local v3, "count":I
    const/4 v6, 0x0

    move v4, v6

    .local v4, "i":I
    :goto_0
    move v6, v4

    move-object v7, v1

    array-length v7, v7

    if-ge v6, v7, :cond_1

    .line 250
    move-object v6, v1

    move v7, v4

    aget-object v6, v6, v7

    move-object v5, v6

    .line 251
    .local v5, "run":Lcom/sun/javafx/scene/text/GlyphList;
    move-object v6, v5

    invoke-interface {v6}, Lcom/sun/javafx/scene/text/GlyphList;->getTextSpan()Lcom/sun/javafx/scene/text/TextSpan;

    move-result-object v6

    move-object v7, v2

    if-ne v6, v7, :cond_0

    .line 252
    add-int/lit8 v3, v3, 0x1

    .line 249
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 255
    .end local v5    # "run":Lcom/sun/javafx/scene/text/GlyphList;
    :cond_1
    move-object v6, v0

    move v7, v3

    new-array v7, v7, [Lcom/sun/javafx/scene/text/GlyphList;

    iput-object v7, v6, Ljavafx/scene/text/Text;->textRuns:[Lcom/sun/javafx/scene/text/GlyphList;

    .line 256
    const/4 v6, 0x0

    move v3, v6

    .line 257
    const/4 v6, 0x0

    move v4, v6

    :goto_1
    move v6, v4

    move-object v7, v1

    array-length v7, v7

    if-ge v6, v7, :cond_3

    .line 258
    move-object v6, v1

    move v7, v4

    aget-object v6, v6, v7

    move-object v5, v6

    .line 259
    .restart local v5    # "run":Lcom/sun/javafx/scene/text/GlyphList;
    move-object v6, v5

    invoke-interface {v6}, Lcom/sun/javafx/scene/text/GlyphList;->getTextSpan()Lcom/sun/javafx/scene/text/TextSpan;

    move-result-object v6

    move-object v7, v2

    if-ne v6, v7, :cond_2

    .line 260
    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/text/Text;->textRuns:[Lcom/sun/javafx/scene/text/GlyphList;

    move v7, v3

    add-int/lit8 v3, v3, 0x1

    move-object v8, v5

    aput-object v8, v6, v7

    .line 257
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 263
    .end local v5    # "run":Lcom/sun/javafx/scene/text/GlyphList;
    :cond_3
    move-object v6, v0

    const/4 v7, 0x1

    iput-boolean v7, v6, Ljavafx/scene/text/Text;->spanBoundsInvalid:Z

    .line 278
    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/scene/text/Text;->impl_geomChanged()V

    .line 279
    move-object v6, v0

    sget-object v7, Lcom/sun/javafx/scene/DirtyBits;->NODE_CONTENTS:Lcom/sun/javafx/scene/DirtyBits;

    invoke-virtual {v6, v7}, Ljavafx/scene/text/Text;->impl_markDirty(Lcom/sun/javafx/scene/DirtyBits;)V

    .line 280
    return-void
.end method

.method public final lineSpacingProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 2

    .prologue
    .line 699
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/text/Text;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/text/Text;->getTextAttribute()Ljavafx/scene/text/Text$TextAttribute;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/scene/text/Text$TextAttribute;->lineSpacingProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/text/Text;
    return-object v0
.end method

.method public varargs queryAccessibleAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 27

    .prologue
    .line 1892
    move-object/from16 v1, p0

    .local v1, "this":Ljavafx/scene/text/Text;
    move-object/from16 v2, p1

    .local v2, "attribute":Ljavafx/scene/AccessibleAttribute;
    move-object/from16 v3, p2

    .local v3, "parameters":[Ljava/lang/Object;
    sget-object v14, Ljavafx/scene/text/Text$9;->$SwitchMap$javafx$scene$AccessibleAttribute:[I

    move-object v15, v2

    invoke-virtual {v15}, Ljavafx/scene/AccessibleAttribute;->ordinal()I

    move-result v15

    aget v14, v14, v15

    packed-switch v14, :pswitch_data_0

    .line 1974
    move-object v14, v1

    move-object v15, v2

    move-object/from16 v16, v3

    invoke-super/range {v14 .. v16}, Ljavafx/scene/shape/Shape;->queryAccessibleAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    move-object v1, v14

    .end local v1    # "this":Ljavafx/scene/text/Text;
    :goto_0
    return-object v1

    .line 1894
    .restart local v1    # "this":Ljavafx/scene/text/Text;
    :pswitch_0
    move-object v14, v1

    invoke-virtual {v14}, Ljavafx/scene/text/Text;->getAccessibleText()Ljava/lang/String;

    move-result-object v14

    move-object v4, v14

    .line 1895
    .local v4, "accText":Ljava/lang/String;
    move-object v14, v4

    if-eqz v14, :cond_0

    move-object v14, v4

    invoke-virtual {v14}, Ljava/lang/String;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_0

    move-object v14, v4

    move-object v1, v14

    goto :goto_0

    .line 1896
    :cond_0
    move-object v14, v1

    invoke-virtual {v14}, Ljavafx/scene/text/Text;->getText()Ljava/lang/String;

    move-result-object v14

    move-object v1, v14

    goto :goto_0

    .line 1898
    .end local v4    # "accText":Ljava/lang/String;
    :pswitch_1
    move-object v14, v1

    invoke-virtual {v14}, Ljavafx/scene/text/Text;->getFont()Ljavafx/scene/text/Font;

    move-result-object v14

    move-object v1, v14

    goto :goto_0

    .line 1900
    :pswitch_2
    move-object v14, v1

    invoke-virtual {v14}, Ljavafx/scene/text/Text;->getImpl_caretPosition()I

    move-result v14

    move v4, v14

    .line 1901
    .local v4, "sel":I
    move v14, v4

    if-ltz v14, :cond_1

    move v14, v4

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    move-object v1, v14

    goto :goto_0

    .line 1902
    :cond_1
    move-object v14, v1

    invoke-virtual {v14}, Ljavafx/scene/text/Text;->getText()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    move-object v1, v14

    goto :goto_0

    .line 1905
    .end local v4    # "sel":I
    :pswitch_3
    move-object v14, v1

    invoke-virtual {v14}, Ljavafx/scene/text/Text;->getImpl_selectionStart()I

    move-result v14

    move v4, v14

    .line 1906
    .restart local v4    # "sel":I
    move v14, v4

    if-ltz v14, :cond_2

    move v14, v4

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    move-object v1, v14

    goto :goto_0

    .line 1907
    :cond_2
    move-object v14, v1

    invoke-virtual {v14}, Ljavafx/scene/text/Text;->getImpl_caretPosition()I

    move-result v14

    move v4, v14

    .line 1908
    move v14, v4

    if-ltz v14, :cond_3

    move v14, v4

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    move-object v1, v14

    goto :goto_0

    .line 1909
    :cond_3
    move-object v14, v1

    invoke-virtual {v14}, Ljavafx/scene/text/Text;->getText()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    move-object v1, v14

    goto :goto_0

    .line 1912
    .end local v4    # "sel":I
    :pswitch_4
    move-object v14, v1

    invoke-virtual {v14}, Ljavafx/scene/text/Text;->getImpl_selectionEnd()I

    move-result v14

    move v4, v14

    .line 1913
    .restart local v4    # "sel":I
    move v14, v4

    if-ltz v14, :cond_4

    move v14, v4

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    move-object v1, v14

    goto :goto_0

    .line 1914
    :cond_4
    move-object v14, v1

    invoke-virtual {v14}, Ljavafx/scene/text/Text;->getImpl_caretPosition()I

    move-result v14

    move v4, v14

    .line 1915
    move v14, v4

    if-ltz v14, :cond_5

    move v14, v4

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    move-object v1, v14

    goto/16 :goto_0

    .line 1916
    :cond_5
    move-object v14, v1

    invoke-virtual {v14}, Ljavafx/scene/text/Text;->getText()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    move-object v1, v14

    goto/16 :goto_0

    .line 1919
    .end local v4    # "sel":I
    :pswitch_5
    move-object v14, v3

    const/4 v15, 0x0

    aget-object v14, v14, v15

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    move v4, v14

    .line 1920
    .local v4, "offset":I
    move v14, v4

    move-object v15, v1

    invoke-direct {v15}, Ljavafx/scene/text/Text;->getTextInternal()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    if-le v14, v15, :cond_6

    const/4 v14, 0x0

    move-object v1, v14

    goto/16 :goto_0

    .line 1921
    :cond_6
    move-object v14, v1

    invoke-direct {v14}, Ljavafx/scene/text/Text;->getTextLayout()Lcom/sun/javafx/scene/text/TextLayout;

    move-result-object v14

    invoke-interface {v14}, Lcom/sun/javafx/scene/text/TextLayout;->getLines()[Lcom/sun/javafx/scene/text/TextLine;

    move-result-object v14

    move-object v5, v14

    .line 1922
    .local v5, "lines":[Lcom/sun/javafx/scene/text/TextLine;
    const/4 v14, 0x0

    move v6, v14

    .line 1923
    .local v6, "lineIndex":I
    const/4 v14, 0x1

    move v7, v14

    .local v7, "i":I
    :goto_1
    move v14, v7

    move-object v15, v5

    array-length v15, v15

    if-ge v14, v15, :cond_7

    .line 1924
    move-object v14, v5

    move v15, v7

    aget-object v14, v14, v15

    move-object v8, v14

    .line 1925
    .local v8, "line":Lcom/sun/javafx/scene/text/TextLine;
    move-object v14, v8

    invoke-interface {v14}, Lcom/sun/javafx/scene/text/TextLine;->getStart()I

    move-result v14

    move v15, v4

    if-le v14, v15, :cond_8

    .line 1928
    .end local v8    # "line":Lcom/sun/javafx/scene/text/TextLine;
    :cond_7
    move v14, v6

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    move-object v1, v14

    goto/16 :goto_0

    .line 1926
    .restart local v8    # "line":Lcom/sun/javafx/scene/text/TextLine;
    :cond_8
    add-int/lit8 v6, v6, 0x1

    .line 1923
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 1931
    .end local v4    # "offset":I
    .end local v5    # "lines":[Lcom/sun/javafx/scene/text/TextLine;
    .end local v6    # "lineIndex":I
    .end local v7    # "i":I
    .end local v8    # "line":Lcom/sun/javafx/scene/text/TextLine;
    :pswitch_6
    move-object v14, v3

    const/4 v15, 0x0

    aget-object v14, v14, v15

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    move v4, v14

    .line 1932
    .local v4, "lineIndex":I
    move-object v14, v1

    invoke-direct {v14}, Ljavafx/scene/text/Text;->getTextLayout()Lcom/sun/javafx/scene/text/TextLayout;

    move-result-object v14

    invoke-interface {v14}, Lcom/sun/javafx/scene/text/TextLayout;->getLines()[Lcom/sun/javafx/scene/text/TextLine;

    move-result-object v14

    move-object v5, v14

    .line 1933
    .restart local v5    # "lines":[Lcom/sun/javafx/scene/text/TextLine;
    const/4 v14, 0x0

    move v15, v4

    if-gt v14, v15, :cond_9

    move v14, v4

    move-object v15, v5

    array-length v15, v15

    if-ge v14, v15, :cond_9

    .line 1934
    move-object v14, v5

    move v15, v4

    aget-object v14, v14, v15

    move-object v6, v14

    .line 1935
    .local v6, "line":Lcom/sun/javafx/scene/text/TextLine;
    move-object v14, v6

    invoke-interface {v14}, Lcom/sun/javafx/scene/text/TextLine;->getStart()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    move-object v1, v14

    goto/16 :goto_0

    .line 1937
    .end local v6    # "line":Lcom/sun/javafx/scene/text/TextLine;
    :cond_9
    const/4 v14, 0x0

    move-object v1, v14

    goto/16 :goto_0

    .line 1940
    .end local v4    # "lineIndex":I
    .end local v5    # "lines":[Lcom/sun/javafx/scene/text/TextLine;
    :pswitch_7
    move-object v14, v3

    const/4 v15, 0x0

    aget-object v14, v14, v15

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    move v4, v14

    .line 1941
    .restart local v4    # "lineIndex":I
    move-object v14, v1

    invoke-direct {v14}, Ljavafx/scene/text/Text;->getTextLayout()Lcom/sun/javafx/scene/text/TextLayout;

    move-result-object v14

    invoke-interface {v14}, Lcom/sun/javafx/scene/text/TextLayout;->getLines()[Lcom/sun/javafx/scene/text/TextLine;

    move-result-object v14

    move-object v5, v14

    .line 1942
    .restart local v5    # "lines":[Lcom/sun/javafx/scene/text/TextLine;
    const/4 v14, 0x0

    move v15, v4

    if-gt v14, v15, :cond_a

    move v14, v4

    move-object v15, v5

    array-length v15, v15

    if-ge v14, v15, :cond_a

    .line 1943
    move-object v14, v5

    move v15, v4

    aget-object v14, v14, v15

    move-object v6, v14

    .line 1944
    .restart local v6    # "line":Lcom/sun/javafx/scene/text/TextLine;
    move-object v14, v6

    invoke-interface {v14}, Lcom/sun/javafx/scene/text/TextLine;->getStart()I

    move-result v14

    move-object v15, v6

    invoke-interface {v15}, Lcom/sun/javafx/scene/text/TextLine;->getLength()I

    move-result v15

    add-int/2addr v14, v15

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    move-object v1, v14

    goto/16 :goto_0

    .line 1946
    .end local v6    # "line":Lcom/sun/javafx/scene/text/TextLine;
    :cond_a
    const/4 v14, 0x0

    move-object v1, v14

    goto/16 :goto_0

    .line 1949
    .end local v4    # "lineIndex":I
    .end local v5    # "lines":[Lcom/sun/javafx/scene/text/TextLine;
    :pswitch_8
    move-object v14, v3

    const/4 v15, 0x0

    aget-object v14, v14, v15

    check-cast v14, Ljavafx/geometry/Point2D;

    move-object v4, v14

    .line 1950
    .local v4, "point":Ljavafx/geometry/Point2D;
    move-object v14, v1

    move-object v15, v4

    invoke-virtual {v14, v15}, Ljavafx/scene/text/Text;->screenToLocal(Ljavafx/geometry/Point2D;)Ljavafx/geometry/Point2D;

    move-result-object v14

    move-object v4, v14

    .line 1951
    move-object v14, v1

    move-object v15, v4

    invoke-virtual {v14, v15}, Ljavafx/scene/text/Text;->impl_hitTestChar(Ljavafx/geometry/Point2D;)Lcom/sun/javafx/scene/text/HitInfo;

    move-result-object v14

    invoke-virtual {v14}, Lcom/sun/javafx/scene/text/HitInfo;->getCharIndex()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    move-object v1, v14

    goto/16 :goto_0

    .line 1954
    .end local v4    # "point":Ljavafx/geometry/Point2D;
    :pswitch_9
    move-object v14, v3

    const/4 v15, 0x0

    aget-object v14, v14, v15

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    move v4, v14

    .line 1955
    .local v4, "start":I
    move-object v14, v3

    const/4 v15, 0x1

    aget-object v14, v14, v15

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    move v5, v14

    .line 1956
    .local v5, "end":I
    move-object v14, v1

    move v15, v4

    move/from16 v16, v5

    const/16 v17, 0x1

    add-int/lit8 v16, v16, 0x1

    invoke-virtual/range {v14 .. v16}, Ljavafx/scene/text/Text;->impl_getRangeShape(II)[Ljavafx/scene/shape/PathElement;

    move-result-object v14

    move-object v6, v14

    .line 1960
    .local v6, "elements":[Ljavafx/scene/shape/PathElement;
    move-object v14, v6

    array-length v14, v14

    const/4 v15, 0x5

    div-int/lit8 v14, v14, 0x5

    new-array v14, v14, [Ljavafx/geometry/Bounds;

    move-object v7, v14

    .line 1961
    .local v7, "bounds":[Ljavafx/geometry/Bounds;
    const/4 v14, 0x0

    move v8, v14

    .line 1962
    .local v8, "index":I
    const/4 v14, 0x0

    move v9, v14

    .local v9, "i":I
    :goto_2
    move v14, v9

    move-object v15, v7

    array-length v15, v15

    if-ge v14, v15, :cond_b

    .line 1963
    move-object v14, v6

    move v15, v8

    aget-object v14, v14, v15

    check-cast v14, Ljavafx/scene/shape/MoveTo;

    move-object v10, v14

    .line 1964
    .local v10, "topLeft":Ljavafx/scene/shape/MoveTo;
    move-object v14, v6

    move v15, v8

    const/16 v16, 0x1

    add-int/lit8 v15, v15, 0x1

    aget-object v14, v14, v15

    check-cast v14, Ljavafx/scene/shape/LineTo;

    move-object v11, v14

    .line 1965
    .local v11, "topRight":Ljavafx/scene/shape/LineTo;
    move-object v14, v6

    move v15, v8

    const/16 v16, 0x2

    add-int/lit8 v15, v15, 0x2

    aget-object v14, v14, v15

    check-cast v14, Ljavafx/scene/shape/LineTo;

    move-object v12, v14

    .line 1966
    .local v12, "bottomRight":Ljavafx/scene/shape/LineTo;
    new-instance v14, Ljavafx/geometry/BoundingBox;

    move-object/from16 v26, v14

    move-object/from16 v14, v26

    move-object/from16 v15, v26

    move-object/from16 v16, v10

    invoke-virtual/range {v16 .. v16}, Ljavafx/scene/shape/MoveTo;->getX()D

    move-result-wide v16

    move-object/from16 v18, v10

    invoke-virtual/range {v18 .. v18}, Ljavafx/scene/shape/MoveTo;->getY()D

    move-result-wide v18

    move-object/from16 v20, v11

    .line 1967
    invoke-virtual/range {v20 .. v20}, Ljavafx/scene/shape/LineTo;->getX()D

    move-result-wide v20

    move-object/from16 v22, v10

    invoke-virtual/range {v22 .. v22}, Ljavafx/scene/shape/MoveTo;->getX()D

    move-result-wide v22

    sub-double v20, v20, v22

    move-object/from16 v22, v12

    .line 1968
    invoke-virtual/range {v22 .. v22}, Ljavafx/scene/shape/LineTo;->getY()D

    move-result-wide v22

    move-object/from16 v24, v11

    invoke-virtual/range {v24 .. v24}, Ljavafx/scene/shape/LineTo;->getY()D

    move-result-wide v24

    sub-double v22, v22, v24

    invoke-direct/range {v15 .. v23}, Ljavafx/geometry/BoundingBox;-><init>(DDDD)V

    move-object v13, v14

    .line 1969
    .local v13, "b":Ljavafx/geometry/BoundingBox;
    move-object v14, v7

    move v15, v9

    move-object/from16 v16, v1

    move-object/from16 v17, v13

    invoke-virtual/range {v16 .. v17}, Ljavafx/scene/text/Text;->localToScreen(Ljavafx/geometry/Bounds;)Ljavafx/geometry/Bounds;

    move-result-object v16

    aput-object v16, v14, v15

    .line 1970
    add-int/lit8 v8, v8, 0x5

    .line 1962
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 1972
    .end local v10    # "topLeft":Ljavafx/scene/shape/MoveTo;
    .end local v11    # "topRight":Ljavafx/scene/shape/LineTo;
    .end local v12    # "bottomRight":Ljavafx/scene/shape/LineTo;
    .end local v13    # "b":Ljavafx/geometry/BoundingBox;
    :cond_b
    move-object v14, v7

    move-object v1, v14

    goto/16 :goto_0

    .line 1892
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public final setBoundsType(Ljavafx/scene/text/TextBoundsType;)V
    .locals 4

    .prologue
    .line 542
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/text/Text;
    move-object v1, p1

    .local v1, "value":Ljavafx/scene/text/TextBoundsType;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/text/Text;->boundsTypeProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 543
    return-void
.end method

.method public final setFont(Ljavafx/scene/text/Font;)V
    .locals 4

    .prologue
    .line 474
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/text/Text;
    move-object v1, p1

    .local v1, "value":Ljavafx/scene/text/Font;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/text/Text;->fontProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 475
    return-void
.end method

.method public final setFontSmoothingType(Ljavafx/scene/text/FontSmoothingType;)V
    .locals 4

    .prologue
    .line 730
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/text/Text;
    move-object v1, p1

    .local v1, "value":Ljavafx/scene/text/FontSmoothingType;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/text/Text;->fontSmoothingTypeProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 731
    return-void
.end method

.method public final setImpl_caretBias(Z)V
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 959
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/text/Text;
    move v1, p1

    .local v1, "value":Z
    move v2, v1

    if-eqz v2, :cond_1

    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/text/Text;->attributes:Ljavafx/scene/text/Text$TextAttribute;

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/text/Text;->attributes:Ljavafx/scene/text/Text$TextAttribute;

    invoke-static {v2}, Ljavafx/scene/text/Text$TextAttribute;->access$2200(Ljavafx/scene/text/Text$TextAttribute;)Ljavafx/beans/property/BooleanProperty;

    move-result-object v2

    if-nez v2, :cond_1

    .line 960
    .line 963
    :cond_0
    :goto_0
    return-void

    .line 962
    :cond_1
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/text/Text;->impl_caretBiasProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v2

    move v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/BooleanProperty;->set(Z)V

    .line 963
    goto :goto_0
.end method

.method public final setImpl_caretPosition(I)V
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 919
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/text/Text;
    move v1, p1

    .local v1, "value":I
    move v2, v1

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/text/Text;->attributes:Ljavafx/scene/text/Text$TextAttribute;

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/text/Text;->attributes:Ljavafx/scene/text/Text$TextAttribute;

    .line 920
    invoke-static {v2}, Ljavafx/scene/text/Text$TextAttribute;->access$2100(Ljavafx/scene/text/Text$TextAttribute;)Ljavafx/beans/property/IntegerProperty;

    move-result-object v2

    if-nez v2, :cond_1

    .line 921
    .line 924
    :cond_0
    :goto_0
    return-void

    .line 923
    :cond_1
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/text/Text;->impl_caretPositionProperty()Ljavafx/beans/property/IntegerProperty;

    move-result-object v2

    move v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/IntegerProperty;->set(I)V

    .line 924
    goto :goto_0
.end method

.method public final setImpl_selectionEnd(I)V
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 847
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/text/Text;
    move v1, p1

    .local v1, "value":I
    move v2, v1

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/text/Text;->attributes:Ljavafx/scene/text/Text$TextAttribute;

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/text/Text;->attributes:Ljavafx/scene/text/Text$TextAttribute;

    .line 848
    invoke-static {v2}, Ljavafx/scene/text/Text$TextAttribute;->access$2000(Ljavafx/scene/text/Text$TextAttribute;)Ljavafx/beans/property/IntegerProperty;

    move-result-object v2

    if-nez v2, :cond_1

    .line 849
    .line 852
    :cond_0
    :goto_0
    return-void

    .line 851
    :cond_1
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/text/Text;->impl_selectionEndProperty()Ljavafx/beans/property/IntegerProperty;

    move-result-object v2

    move v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/IntegerProperty;->set(I)V

    .line 852
    goto :goto_0
.end method

.method public final setImpl_selectionStart(I)V
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 807
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/text/Text;
    move v1, p1

    .local v1, "value":I
    move v2, v1

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/text/Text;->attributes:Ljavafx/scene/text/Text$TextAttribute;

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/text/Text;->attributes:Ljavafx/scene/text/Text$TextAttribute;

    .line 808
    invoke-static {v2}, Ljavafx/scene/text/Text$TextAttribute;->access$1900(Ljavafx/scene/text/Text$TextAttribute;)Ljavafx/beans/property/IntegerProperty;

    move-result-object v2

    if-nez v2, :cond_1

    .line 809
    .line 812
    :cond_0
    :goto_0
    return-void

    .line 811
    :cond_1
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/text/Text;->impl_selectionStartProperty()Ljavafx/beans/property/IntegerProperty;

    move-result-object v2

    move v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/IntegerProperty;->set(I)V

    .line 812
    goto :goto_0
.end method

.method public final setLineSpacing(D)V
    .locals 7

    .prologue
    .line 681
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/text/Text;
    move-wide v1, p1

    .local v1, "spacing":D
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/text/Text;->lineSpacingProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v3

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    .line 682
    return-void
.end method

.method public final setStrikethrough(Z)V
    .locals 4

    .prologue
    .line 635
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/text/Text;
    move v1, p1

    .local v1, "value":Z
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/text/Text;->strikethroughProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v2

    move v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/BooleanProperty;->set(Z)V

    .line 636
    return-void
.end method

.method public final setText(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 369
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/text/Text;
    move-object v1, p1

    .local v1, "value":Ljava/lang/String;
    move-object v2, v1

    if-nez v2, :cond_0

    const-string v2, ""

    move-object v1, v2

    .line 370
    :cond_0
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/text/Text;->textProperty()Ljavafx/beans/property/StringProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/StringProperty;->set(Ljava/lang/Object;)V

    .line 371
    return-void
.end method

.method public final setTextAlignment(Ljavafx/scene/text/TextAlignment;)V
    .locals 4

    .prologue
    .line 655
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/text/Text;
    move-object v1, p1

    .local v1, "value":Ljavafx/scene/text/TextAlignment;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/text/Text;->textAlignmentProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 656
    return-void
.end method

.method public final setTextOrigin(Ljavafx/geometry/VPos;)V
    .locals 4

    .prologue
    .line 510
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/text/Text;
    move-object v1, p1

    .local v1, "value":Ljavafx/geometry/VPos;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/text/Text;->textOriginProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 511
    return-void
.end method

.method public final setUnderline(Z)V
    .locals 4

    .prologue
    .line 615
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/text/Text;
    move v1, p1

    .local v1, "value":Z
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/text/Text;->underlineProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v2

    move v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/BooleanProperty;->set(Z)V

    .line 616
    return-void
.end method

.method public final setWrappingWidth(D)V
    .locals 7

    .prologue
    .line 587
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/text/Text;
    move-wide v1, p1

    .local v1, "value":D
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/text/Text;->wrappingWidthProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v3

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    .line 588
    return-void
.end method

.method public final setX(D)V
    .locals 7

    .prologue
    .line 418
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/text/Text;
    move-wide v1, p1

    .local v1, "value":D
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/text/Text;->xProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v3

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    .line 419
    return-void
.end method

.method public final setY(D)V
    .locals 7

    .prologue
    .line 446
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/text/Text;
    move-wide v1, p1

    .local v1, "value":D
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/text/Text;->yProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v3

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    .line 447
    return-void
.end method

.method public final strikethroughProperty()Ljavafx/beans/property/BooleanProperty;
    .locals 2

    .prologue
    .line 651
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/text/Text;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/text/Text;->getTextAttribute()Ljavafx/scene/text/Text$TextAttribute;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/scene/text/Text$TextAttribute;->strikethroughProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/text/Text;
    return-object v0
.end method

.method public final textAlignmentProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/scene/text/TextAlignment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 677
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/text/Text;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/text/Text;->getTextAttribute()Ljavafx/scene/text/Text$TextAttribute;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/scene/text/Text$TextAttribute;->textAlignmentProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/text/Text;
    return-object v0
.end method

.method public final textOriginProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/geometry/VPos;",
            ">;"
        }
    .end annotation

    .prologue
    .line 529
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/text/Text;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/text/Text;->getTextAttribute()Ljavafx/scene/text/Text$TextAttribute;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/scene/text/Text$TextAttribute;->textOriginProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/text/Text;
    return-object v0
.end method

.method public final textProperty()Ljavafx/beans/property/StringProperty;
    .locals 7

    .prologue
    .line 384
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/text/Text;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/text/Text;->text:Ljavafx/beans/property/StringProperty;

    if-nez v1, :cond_0

    .line 385
    move-object v1, v0

    new-instance v2, Ljavafx/scene/text/Text$2;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    const-string v5, ""

    invoke-direct {v3, v4, v5}, Ljavafx/scene/text/Text$2;-><init>(Ljavafx/scene/text/Text;Ljava/lang/String;)V

    iput-object v2, v1, Ljavafx/scene/text/Text;->text:Ljavafx/beans/property/StringProperty;

    .line 407
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/text/Text;->text:Ljavafx/beans/property/StringProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/text/Text;
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 14

    .prologue
    .line 1845
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/text/Text;
    new-instance v9, Ljava/lang/StringBuilder;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    const-string v11, "Text["

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v2, v9

    .line 1847
    .local v2, "sb":Ljava/lang/StringBuilder;
    move-object v9, v1

    invoke-virtual {v9}, Ljavafx/scene/text/Text;->getId()Ljava/lang/String;

    move-result-object v9

    move-object v3, v9

    .line 1848
    .local v3, "id":Ljava/lang/String;
    move-object v9, v3

    if-eqz v9, :cond_0

    .line 1849
    move-object v9, v2

    const-string v10, "id="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v3

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 1852
    :cond_0
    move-object v9, v2

    const-string v10, "text=\""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v1

    invoke-virtual {v10}, Ljavafx/scene/text/Text;->getText()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 1853
    move-object v9, v2

    const-string v10, ", x="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v1

    invoke-virtual {v10}, Ljavafx/scene/text/Text;->getX()D

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 1854
    move-object v9, v2

    const-string v10, ", y="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v1

    invoke-virtual {v10}, Ljavafx/scene/text/Text;->getY()D

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 1855
    move-object v9, v2

    const-string v10, ", alignment="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v1

    invoke-virtual {v10}, Ljavafx/scene/text/Text;->getTextAlignment()Ljavafx/scene/text/TextAlignment;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 1856
    move-object v9, v2

    const-string v10, ", origin="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v1

    invoke-virtual {v10}, Ljavafx/scene/text/Text;->getTextOrigin()Ljavafx/geometry/VPos;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 1857
    move-object v9, v2

    const-string v10, ", boundsType="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v1

    invoke-virtual {v10}, Ljavafx/scene/text/Text;->getBoundsType()Ljavafx/scene/text/TextBoundsType;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 1859
    move-object v9, v1

    invoke-virtual {v9}, Ljavafx/scene/text/Text;->getLineSpacing()D

    move-result-wide v9

    move-wide v4, v9

    .line 1860
    .local v4, "spacing":D
    move-wide v9, v4

    const-wide/16 v11, 0x0

    cmpl-double v9, v9, v11

    if-eqz v9, :cond_1

    .line 1861
    move-object v9, v2

    const-string v10, ", lineSpacing="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-wide v10, v4

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 1864
    :cond_1
    move-object v9, v1

    invoke-virtual {v9}, Ljavafx/scene/text/Text;->getWrappingWidth()D

    move-result-wide v9

    move-wide v6, v9

    .line 1865
    .local v6, "wrap":D
    move-wide v9, v6

    const-wide/16 v11, 0x0

    cmpl-double v9, v9, v11

    if-eqz v9, :cond_2

    .line 1866
    move-object v9, v2

    const-string v10, ", wrappingWidth="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-wide v10, v6

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 1869
    :cond_2
    move-object v9, v2

    const-string v10, ", font="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v1

    invoke-virtual {v10}, Ljavafx/scene/text/Text;->getFont()Ljavafx/scene/text/Font;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 1870
    move-object v9, v2

    const-string v10, ", fontSmoothingType="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v1

    invoke-virtual {v10}, Ljavafx/scene/text/Text;->getFontSmoothingType()Ljavafx/scene/text/FontSmoothingType;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 1872
    move-object v9, v1

    invoke-virtual {v9}, Ljavafx/scene/text/Text;->isStrikethrough()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 1873
    move-object v9, v2

    const-string v10, ", strikethrough"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 1875
    :cond_3
    move-object v9, v1

    invoke-virtual {v9}, Ljavafx/scene/text/Text;->isUnderline()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 1876
    move-object v9, v2

    const-string v10, ", underline"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 1879
    :cond_4
    move-object v9, v2

    const-string v10, ", fill="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v1

    invoke-virtual {v10}, Ljavafx/scene/text/Text;->getFill()Ljavafx/scene/paint/Paint;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 1881
    move-object v9, v1

    invoke-virtual {v9}, Ljavafx/scene/text/Text;->getStroke()Ljavafx/scene/paint/Paint;

    move-result-object v9

    move-object v8, v9

    .line 1882
    .local v8, "stroke":Ljavafx/scene/paint/Paint;
    move-object v9, v8

    if-eqz v9, :cond_5

    .line 1883
    move-object v9, v2

    const-string v10, ", stroke="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v8

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 1884
    move-object v9, v2

    const-string v10, ", strokeWidth="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v1

    invoke-virtual {v10}, Ljavafx/scene/text/Text;->getStrokeWidth()D

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 1887
    :cond_5
    move-object v9, v2

    const-string v10, "]"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object v1, v9

    .end local v1    # "this":Ljavafx/scene/text/Text;
    return-object v1
.end method

.method public final underlineProperty()Ljavafx/beans/property/BooleanProperty;
    .locals 2

    .prologue
    .line 631
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/text/Text;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/text/Text;->getTextAttribute()Ljavafx/scene/text/Text$TextAttribute;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/scene/text/Text$TextAttribute;->underlineProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/text/Text;
    return-object v0
.end method

.method public usesMirroring()Z
    .locals 2

    .prologue
    .line 172
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/text/Text;
    const/4 v1, 0x0

    move v0, v1

    .end local v0    # "this":Ljavafx/scene/text/Text;
    return v0
.end method

.method public final wrappingWidthProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 6

    .prologue
    .line 595
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/text/Text;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/text/Text;->wrappingWidth:Ljavafx/beans/property/DoubleProperty;

    if-nez v1, :cond_0

    .line 596
    move-object v1, v0

    new-instance v2, Ljavafx/scene/text/Text$7;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/text/Text$7;-><init>(Ljavafx/scene/text/Text;)V

    iput-object v2, v1, Ljavafx/scene/text/Text;->wrappingWidth:Ljavafx/beans/property/DoubleProperty;

    .line 611
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/text/Text;->wrappingWidth:Ljavafx/beans/property/DoubleProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/text/Text;
    return-object v0
.end method

.method public final xProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 6

    .prologue
    .line 426
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/text/Text;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/text/Text;->x:Ljavafx/beans/property/DoubleProperty;

    if-nez v1, :cond_0

    .line 427
    move-object v1, v0

    new-instance v2, Ljavafx/scene/text/Text$3;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/text/Text$3;-><init>(Ljavafx/scene/text/Text;)V

    iput-object v2, v1, Ljavafx/scene/text/Text;->x:Ljavafx/beans/property/DoubleProperty;

    .line 435
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/text/Text;->x:Ljavafx/beans/property/DoubleProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/text/Text;
    return-object v0
.end method

.method public final yProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 6

    .prologue
    .line 454
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/text/Text;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/text/Text;->y:Ljavafx/beans/property/DoubleProperty;

    if-nez v1, :cond_0

    .line 455
    move-object v1, v0

    new-instance v2, Ljavafx/scene/text/Text$4;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/text/Text$4;-><init>(Ljavafx/scene/text/Text;)V

    iput-object v2, v1, Ljavafx/scene/text/Text;->y:Ljavafx/beans/property/DoubleProperty;

    .line 463
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/text/Text;->y:Ljavafx/beans/property/DoubleProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/text/Text;
    return-object v0
.end method
