.class public abstract Ljavafx/scene/shape/Shape;
.super Ljavafx/scene/Node;
.source "Shape.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavafx/scene/shape/Shape$StrokeAttributes;,
        Ljavafx/scene/shape/Shape$StyleableProperties;
    }
.end annotation


# static fields
.field private static final DEFAULT_PG_STROKE_DASH_ARRAY:[F

.field private static final DEFAULT_STROKE_DASH_OFFSET:D = 0.0

.field private static final DEFAULT_STROKE_LINE_CAP:Ljavafx/scene/shape/StrokeLineCap;

.field private static final DEFAULT_STROKE_LINE_JOIN:Ljavafx/scene/shape/StrokeLineJoin;

.field private static final DEFAULT_STROKE_MITER_LIMIT:D = 10.0

.field private static final DEFAULT_STROKE_TYPE:Ljavafx/scene/shape/StrokeType;

.field private static final DEFAULT_STROKE_WIDTH:D = 1.0

.field private static final MIN_STROKE_MITER_LIMIT:D = 1.0

.field private static final MIN_STROKE_WIDTH:D


# instance fields
.field private fill:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/scene/paint/Paint;",
            ">;"
        }
    .end annotation
.end field

.field protected impl_mode:Lcom/sun/javafx/sg/prism/NGShape$Mode;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field old_fill:Ljavafx/scene/paint/Paint;

.field old_stroke:Ljavafx/scene/paint/Paint;

.field private final platformImageChangeListener:Lcom/sun/javafx/beans/event/AbstractNotifyListener;

.field private shapeChangeListener:Ljava/lang/ref/Reference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/Reference",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private smooth:Ljavafx/beans/property/BooleanProperty;

.field private stroke:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/scene/paint/Paint;",
            ">;"
        }
    .end annotation
.end field

.field private strokeAttributes:Ljavafx/scene/shape/Shape$StrokeAttributes;

.field private strokeAttributesDirty:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1181
    sget-object v0, Ljavafx/scene/shape/StrokeType;->CENTERED:Ljavafx/scene/shape/StrokeType;

    sput-object v0, Ljavafx/scene/shape/Shape;->DEFAULT_STROKE_TYPE:Ljavafx/scene/shape/StrokeType;

    .line 1183
    sget-object v0, Ljavafx/scene/shape/StrokeLineJoin;->MITER:Ljavafx/scene/shape/StrokeLineJoin;

    sput-object v0, Ljavafx/scene/shape/Shape;->DEFAULT_STROKE_LINE_JOIN:Ljavafx/scene/shape/StrokeLineJoin;

    .line 1185
    sget-object v0, Ljavafx/scene/shape/StrokeLineCap;->SQUARE:Ljavafx/scene/shape/StrokeLineCap;

    sput-object v0, Ljavafx/scene/shape/Shape;->DEFAULT_STROKE_LINE_CAP:Ljavafx/scene/shape/StrokeLineCap;

    .line 1189
    const/4 v0, 0x0

    new-array v0, v0, [F

    sput-object v0, Ljavafx/scene/shape/Shape;->DEFAULT_PG_STROKE_DASH_ARRAY:[F

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    .line 118
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/Shape;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/Node;-><init>()V

    .line 345
    move-object v1, v0

    sget-object v2, Lcom/sun/javafx/sg/prism/NGShape$Mode;->FILL:Lcom/sun/javafx/sg/prism/NGShape$Mode;

    iput-object v2, v1, Ljavafx/scene/shape/Shape;->impl_mode:Lcom/sun/javafx/sg/prism/NGShape$Mode;

    .line 437
    move-object v1, v0

    new-instance v2, Ljavafx/scene/shape/Shape$2;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/shape/Shape$2;-><init>(Ljavafx/scene/shape/Shape;)V

    iput-object v2, v1, Ljavafx/scene/shape/Shape;->platformImageChangeListener:Lcom/sun/javafx/beans/event/AbstractNotifyListener;

    .line 1155
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Ljavafx/scene/shape/Shape;->strokeAttributesDirty:Z

    return-void
.end method

.method static synthetic access$000(Ljavafx/scene/shape/Shape;)Lcom/sun/javafx/beans/event/AbstractNotifyListener;
    .locals 2

    .prologue
    .line 118
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/shape/Shape;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/Shape;->platformImageChangeListener:Lcom/sun/javafx/beans/event/AbstractNotifyListener;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/shape/Shape;
    return-object v0
.end method

.method static synthetic access$100(Ljavafx/scene/shape/Shape;)V
    .locals 2

    .prologue
    .line 118
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/shape/Shape;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/shape/Shape;->checkModeChanged()V

    return-void
.end method

.method static synthetic access$1100(Ljavafx/scene/shape/Shape;)Ljavafx/scene/shape/Shape$StrokeAttributes;
    .locals 2

    .prologue
    .line 118
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/shape/Shape;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/Shape;->strokeAttributes:Ljavafx/scene/shape/Shape$StrokeAttributes;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/shape/Shape;
    return-object v0
.end method

.method static synthetic access$1400()Ljavafx/scene/shape/StrokeType;
    .locals 1

    .prologue
    .line 118
    sget-object v0, Ljavafx/scene/shape/Shape;->DEFAULT_STROKE_TYPE:Ljavafx/scene/shape/StrokeType;

    return-object v0
.end method

.method static synthetic access$1800()Ljavafx/scene/shape/StrokeLineJoin;
    .locals 1

    .prologue
    .line 118
    sget-object v0, Ljavafx/scene/shape/Shape;->DEFAULT_STROKE_LINE_JOIN:Ljavafx/scene/shape/StrokeLineJoin;

    return-object v0
.end method

.method static synthetic access$2000()Ljavafx/scene/shape/StrokeLineCap;
    .locals 1

    .prologue
    .line 118
    sget-object v0, Ljavafx/scene/shape/Shape;->DEFAULT_STROKE_LINE_CAP:Ljavafx/scene/shape/StrokeLineCap;

    return-object v0
.end method

.method static synthetic access$2502(Ljavafx/scene/shape/Shape;Z)Z
    .locals 7

    .prologue
    .line 118
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/shape/Shape;
    move v1, p1

    .local v1, "x1":Z
    move-object v2, v0

    move v3, v1

    move-object v5, v2

    move v6, v3

    move v2, v6

    move-object v3, v5

    move v4, v6

    iput-boolean v4, v3, Ljavafx/scene/shape/Shape;->strokeAttributesDirty:Z

    move v0, v2

    .end local v0    # "x0":Ljavafx/scene/shape/Shape;
    return v0
.end method

.method static synthetic access$2600(Ljavafx/scene/shape/Shape;)V
    .locals 2

    .prologue
    .line 118
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/shape/Shape;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/shape/Shape;->impl_geomChanged()V

    return-void
.end method

.method static synthetic access$300(Ljavafx/scene/shape/Shape;)V
    .locals 2

    .prologue
    .line 118
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/shape/Shape;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/shape/Shape;->impl_geomChanged()V

    return-void
.end method

.method static synthetic access$600(Ljavafx/scene/shape/Shape;)Ljavafx/beans/property/ObjectProperty;
    .locals 2

    .prologue
    .line 118
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/shape/Shape;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/Shape;->fill:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/shape/Shape;
    return-object v0
.end method

.method static synthetic access$700(Ljavafx/scene/shape/Shape;)Ljavafx/beans/property/BooleanProperty;
    .locals 2

    .prologue
    .line 118
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/shape/Shape;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/Shape;->smooth:Ljavafx/beans/property/BooleanProperty;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/shape/Shape;
    return-object v0
.end method

.method static synthetic access$800(Ljavafx/scene/shape/Shape;)Ljavafx/beans/property/ObjectProperty;
    .locals 2

    .prologue
    .line 118
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/shape/Shape;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/Shape;->stroke:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/shape/Shape;
    return-object v0
.end method

.method static synthetic access$900(Ljavafx/scene/shape/Shape;)Ljavafx/scene/shape/Shape$StrokeAttributes;
    .locals 2

    .prologue
    .line 118
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/shape/Shape;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/shape/Shape;->getStrokeAttributes()Ljavafx/scene/shape/Shape$StrokeAttributes;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/shape/Shape;
    return-object v0
.end method

.method private static calculateNodeToSceneTransform(Ljavafx/scene/Node;)Lcom/sun/javafx/geom/transform/BaseTransform;
    .locals 5

    .prologue
    .line 1699
    move-object v0, p0

    .local v0, "node":Ljavafx/scene/Node;
    new-instance v2, Lcom/sun/javafx/geom/transform/Affine3D;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Lcom/sun/javafx/geom/transform/Affine3D;-><init>()V

    move-object v1, v2

    .line 1702
    .local v1, "cumulativeTransformation":Lcom/sun/javafx/geom/transform/Affine3D;
    :cond_0
    move-object v2, v1

    move-object v3, v0

    .line 1703
    invoke-virtual {v3}, Ljavafx/scene/Node;->impl_getLeafTransform()Lcom/sun/javafx/geom/transform/BaseTransform;

    move-result-object v3

    .line 1702
    invoke-virtual {v2, v3}, Lcom/sun/javafx/geom/transform/Affine3D;->preConcatenate(Lcom/sun/javafx/geom/transform/BaseTransform;)V

    .line 1704
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/Node;->getParent()Ljavafx/scene/Parent;

    move-result-object v2

    move-object v0, v2

    .line 1705
    move-object v2, v0

    if-nez v2, :cond_0

    .line 1707
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "node":Ljavafx/scene/Node;
    return-object v0
.end method

.method private checkModeChanged()V
    .locals 4

    .prologue
    .line 349
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/Shape;
    move-object v2, v0

    invoke-direct {v2}, Ljavafx/scene/shape/Shape;->computeMode()Lcom/sun/javafx/sg/prism/NGShape$Mode;

    move-result-object v2

    move-object v1, v2

    .line 350
    .local v1, "newMode":Lcom/sun/javafx/sg/prism/NGShape$Mode;
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/shape/Shape;->impl_mode:Lcom/sun/javafx/sg/prism/NGShape$Mode;

    move-object v3, v1

    if-eq v2, v3, :cond_0

    .line 351
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/shape/Shape;->impl_mode:Lcom/sun/javafx/sg/prism/NGShape$Mode;

    .line 353
    move-object v2, v0

    sget-object v3, Lcom/sun/javafx/scene/DirtyBits;->SHAPE_MODE:Lcom/sun/javafx/scene/DirtyBits;

    invoke-virtual {v2, v3}, Ljavafx/scene/shape/Shape;->impl_markDirty(Lcom/sun/javafx/scene/DirtyBits;)V

    .line 354
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/shape/Shape;->impl_geomChanged()V

    .line 356
    :cond_0
    return-void
.end method

.method private computeMode()Lcom/sun/javafx/sg/prism/NGShape$Mode;
    .locals 2

    .prologue
    .line 330
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/Shape;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/shape/Shape;->getFill()Ljavafx/scene/paint/Paint;

    move-result-object v1

    if-eqz v1, :cond_0

    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/shape/Shape;->getStroke()Ljavafx/scene/paint/Paint;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 331
    sget-object v1, Lcom/sun/javafx/sg/prism/NGShape$Mode;->STROKE_FILL:Lcom/sun/javafx/sg/prism/NGShape$Mode;

    move-object v0, v1

    .line 337
    .end local v0    # "this":Ljavafx/scene/shape/Shape;
    :goto_0
    return-object v0

    .line 332
    .restart local v0    # "this":Ljavafx/scene/shape/Shape;
    :cond_0
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/shape/Shape;->getFill()Ljavafx/scene/paint/Paint;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 333
    sget-object v1, Lcom/sun/javafx/sg/prism/NGShape$Mode;->FILL:Lcom/sun/javafx/sg/prism/NGShape$Mode;

    move-object v0, v1

    goto :goto_0

    .line 334
    :cond_1
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/shape/Shape;->getStroke()Ljavafx/scene/paint/Paint;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 335
    sget-object v1, Lcom/sun/javafx/sg/prism/NGShape$Mode;->STROKE:Lcom/sun/javafx/sg/prism/NGShape$Mode;

    move-object v0, v1

    goto :goto_0

    .line 337
    :cond_2
    sget-object v1, Lcom/sun/javafx/sg/prism/NGShape$Mode;->EMPTY:Lcom/sun/javafx/sg/prism/NGShape$Mode;

    move-object v0, v1

    goto :goto_0
.end method

.method private static createFromGeomShape(Lcom/sun/javafx/geom/Shape;)Ljavafx/scene/shape/Path;
    .locals 25

    .prologue
    .line 1720
    move-object/from16 v3, p0

    .local v3, "geomShape":Lcom/sun/javafx/geom/Shape;
    new-instance v9, Ljavafx/scene/shape/Path;

    move-object/from16 v24, v9

    move-object/from16 v9, v24

    move-object/from16 v10, v24

    invoke-direct {v10}, Ljavafx/scene/shape/Path;-><init>()V

    move-object v4, v9

    .line 1721
    .local v4, "path":Ljavafx/scene/shape/Path;
    move-object v9, v4

    invoke-virtual {v9}, Ljavafx/scene/shape/Path;->getElements()Ljavafx/collections/ObservableList;

    move-result-object v9

    move-object v5, v9

    .line 1723
    .local v5, "elements":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<Ljavafx/scene/shape/PathElement;>;"
    move-object v9, v3

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/sun/javafx/geom/Shape;->getPathIterator(Lcom/sun/javafx/geom/transform/BaseTransform;)Lcom/sun/javafx/geom/PathIterator;

    move-result-object v9

    move-object v6, v9

    .line 1724
    .local v6, "iterator":Lcom/sun/javafx/geom/PathIterator;
    const/4 v9, 0x6

    new-array v9, v9, [F

    move-object v7, v9

    .line 1726
    .local v7, "coords":[F
    :goto_0
    move-object v9, v6

    invoke-interface {v9}, Lcom/sun/javafx/geom/PathIterator;->isDone()Z

    move-result v9

    if-nez v9, :cond_0

    .line 1727
    move-object v9, v6

    move-object v10, v7

    invoke-interface {v9, v10}, Lcom/sun/javafx/geom/PathIterator;->currentSegment([F)I

    move-result v9

    move v8, v9

    .line 1728
    .local v8, "segmentType":I
    move v9, v8

    packed-switch v9, :pswitch_data_0

    .line 1749
    :goto_1
    move-object v9, v6

    invoke-interface {v9}, Lcom/sun/javafx/geom/PathIterator;->next()V

    .line 1750
    goto :goto_0

    .line 1730
    :pswitch_0
    move-object v9, v5

    new-instance v10, Ljavafx/scene/shape/MoveTo;

    move-object/from16 v24, v10

    move-object/from16 v10, v24

    move-object/from16 v11, v24

    move-object v12, v7

    const/4 v13, 0x0

    aget v12, v12, v13

    float-to-double v12, v12

    move-object v14, v7

    const/4 v15, 0x1

    aget v14, v14, v15

    float-to-double v14, v14

    invoke-direct {v11, v12, v13, v14, v15}, Ljavafx/scene/shape/MoveTo;-><init>(DD)V

    invoke-interface {v9, v10}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v9

    .line 1731
    goto :goto_1

    .line 1733
    :pswitch_1
    move-object v9, v5

    new-instance v10, Ljavafx/scene/shape/LineTo;

    move-object/from16 v24, v10

    move-object/from16 v10, v24

    move-object/from16 v11, v24

    move-object v12, v7

    const/4 v13, 0x0

    aget v12, v12, v13

    float-to-double v12, v12

    move-object v14, v7

    const/4 v15, 0x1

    aget v14, v14, v15

    float-to-double v14, v14

    invoke-direct {v11, v12, v13, v14, v15}, Ljavafx/scene/shape/LineTo;-><init>(DD)V

    invoke-interface {v9, v10}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v9

    .line 1734
    goto :goto_1

    .line 1736
    :pswitch_2
    move-object v9, v5

    new-instance v10, Ljavafx/scene/shape/QuadCurveTo;

    move-object/from16 v24, v10

    move-object/from16 v10, v24

    move-object/from16 v11, v24

    move-object v12, v7

    const/4 v13, 0x0

    aget v12, v12, v13

    float-to-double v12, v12

    move-object v14, v7

    const/4 v15, 0x1

    aget v14, v14, v15

    float-to-double v14, v14

    move-object/from16 v16, v7

    const/16 v17, 0x2

    aget v16, v16, v17

    move/from16 v0, v16

    float-to-double v0, v0

    move-wide/from16 v16, v0

    move-object/from16 v18, v7

    const/16 v19, 0x3

    aget v18, v18, v19

    move/from16 v0, v18

    float-to-double v0, v0

    move-wide/from16 v18, v0

    invoke-direct/range {v11 .. v19}, Ljavafx/scene/shape/QuadCurveTo;-><init>(DDDD)V

    invoke-interface {v9, v10}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v9

    .line 1738
    goto :goto_1

    .line 1740
    :pswitch_3
    move-object v9, v5

    new-instance v10, Ljavafx/scene/shape/CubicCurveTo;

    move-object/from16 v24, v10

    move-object/from16 v10, v24

    move-object/from16 v11, v24

    move-object v12, v7

    const/4 v13, 0x0

    aget v12, v12, v13

    float-to-double v12, v12

    move-object v14, v7

    const/4 v15, 0x1

    aget v14, v14, v15

    float-to-double v14, v14

    move-object/from16 v16, v7

    const/16 v17, 0x2

    aget v16, v16, v17

    move/from16 v0, v16

    float-to-double v0, v0

    move-wide/from16 v16, v0

    move-object/from16 v18, v7

    const/16 v19, 0x3

    aget v18, v18, v19

    move/from16 v0, v18

    float-to-double v0, v0

    move-wide/from16 v18, v0

    move-object/from16 v20, v7

    const/16 v21, 0x4

    aget v20, v20, v21

    move/from16 v0, v20

    float-to-double v0, v0

    move-wide/from16 v20, v0

    move-object/from16 v22, v7

    const/16 v23, 0x5

    aget v22, v22, v23

    move/from16 v0, v22

    float-to-double v0, v0

    move-wide/from16 v22, v0

    invoke-direct/range {v11 .. v23}, Ljavafx/scene/shape/CubicCurveTo;-><init>(DDDDDD)V

    invoke-interface {v9, v10}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v9

    .line 1743
    goto/16 :goto_1

    .line 1745
    :pswitch_4
    move-object v9, v5

    new-instance v10, Ljavafx/scene/shape/ClosePath;

    move-object/from16 v24, v10

    move-object/from16 v10, v24

    move-object/from16 v11, v24

    invoke-direct {v11}, Ljavafx/scene/shape/ClosePath;-><init>()V

    invoke-interface {v9, v10}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v9

    goto/16 :goto_1

    .line 1752
    .end local v8    # "segmentType":I
    :cond_0
    move-object v9, v4

    move-object v10, v6

    invoke-interface {v10}, Lcom/sun/javafx/geom/PathIterator;->getWindingRule()I

    move-result v10

    if-nez v10, :cond_1

    sget-object v10, Ljavafx/scene/shape/FillRule;->EVEN_ODD:Ljavafx/scene/shape/FillRule;

    :goto_2
    invoke-virtual {v9, v10}, Ljavafx/scene/shape/Path;->setFillRule(Ljavafx/scene/shape/FillRule;)V

    .line 1757
    move-object v9, v4

    sget-object v10, Ljavafx/scene/paint/Color;->BLACK:Ljavafx/scene/paint/Color;

    invoke-virtual {v9, v10}, Ljavafx/scene/shape/Path;->setFill(Ljavafx/scene/paint/Paint;)V

    .line 1758
    move-object v9, v4

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Ljavafx/scene/shape/Path;->setStroke(Ljavafx/scene/paint/Paint;)V

    .line 1760
    move-object v9, v4

    move-object v3, v9

    .end local v3    # "geomShape":Lcom/sun/javafx/geom/Shape;
    return-object v3

    .line 1752
    .restart local v3    # "geomShape":Lcom/sun/javafx/geom/Shape;
    :cond_1
    sget-object v10, Ljavafx/scene/shape/FillRule;->NON_ZERO:Ljavafx/scene/shape/FillRule;

    goto :goto_2

    .line 1728
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private static createTransformedArea(Lcom/sun/javafx/geom/Shape;Lcom/sun/javafx/geom/transform/BaseTransform;)Lcom/sun/javafx/geom/Area;
    .locals 7

    .prologue
    .line 1713
    move-object v0, p0

    .local v0, "geomShape":Lcom/sun/javafx/geom/Shape;
    move-object v1, p1

    .local v1, "transform":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object v2, v1

    invoke-virtual {v2}, Lcom/sun/javafx/geom/transform/BaseTransform;->isIdentity()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Lcom/sun/javafx/geom/Area;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    invoke-direct {v3, v4}, Lcom/sun/javafx/geom/Area;-><init>(Lcom/sun/javafx/geom/Shape;)V

    .line 1715
    :goto_0
    move-object v0, v2

    .end local v0    # "geomShape":Lcom/sun/javafx/geom/Shape;
    return-object v0

    .line 1713
    .restart local v0    # "geomShape":Lcom/sun/javafx/geom/Shape;
    :cond_0
    new-instance v2, Lcom/sun/javafx/geom/Area;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    move-object v5, v1

    .line 1715
    invoke-virtual {v4, v5}, Lcom/sun/javafx/geom/Shape;->getPathIterator(Lcom/sun/javafx/geom/transform/BaseTransform;)Lcom/sun/javafx/geom/PathIterator;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/sun/javafx/geom/Area;-><init>(Lcom/sun/javafx/geom/PathIterator;)V

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
    .line 841
    # getter for: Ljavafx/scene/shape/Shape$StyleableProperties;->STYLEABLES:Ljava/util/List;
    invoke-static {}, Ljavafx/scene/shape/Shape$StyleableProperties;->access$1200()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private getStrokeAttributes()Ljavafx/scene/shape/Shape$StrokeAttributes;
    .locals 7

    .prologue
    .line 1160
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/Shape;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/Shape;->strokeAttributes:Ljavafx/scene/shape/Shape$StrokeAttributes;

    if-nez v1, :cond_0

    .line 1161
    move-object v1, v0

    new-instance v2, Ljavafx/scene/shape/Shape$StrokeAttributes;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Ljavafx/scene/shape/Shape$StrokeAttributes;-><init>(Ljavafx/scene/shape/Shape;Ljavafx/scene/shape/Shape$1;)V

    iput-object v2, v1, Ljavafx/scene/shape/Shape;->strokeAttributes:Ljavafx/scene/shape/Shape$StrokeAttributes;

    .line 1164
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/Shape;->strokeAttributes:Ljavafx/scene/shape/Shape$StrokeAttributes;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/shape/Shape;
    return-object v0
.end method

.method private getTransformedArea()Lcom/sun/javafx/geom/Area;
    .locals 3

    .prologue
    .line 1653
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/Shape;
    move-object v1, v0

    move-object v2, v0

    invoke-static {v2}, Ljavafx/scene/shape/Shape;->calculateNodeToSceneTransform(Ljavafx/scene/Node;)Lcom/sun/javafx/geom/transform/BaseTransform;

    move-result-object v2

    invoke-direct {v1, v2}, Ljavafx/scene/shape/Shape;->getTransformedArea(Lcom/sun/javafx/geom/transform/BaseTransform;)Lcom/sun/javafx/geom/Area;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/shape/Shape;
    return-object v0
.end method

.method private getTransformedArea(Lcom/sun/javafx/geom/transform/BaseTransform;)Lcom/sun/javafx/geom/Area;
    .locals 26

    .prologue
    .line 1657
    move-object/from16 v2, p0

    .local v2, "this":Ljavafx/scene/shape/Shape;
    move-object/from16 v3, p1

    .local v3, "transform":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object v14, v2

    iget-object v14, v14, Ljavafx/scene/shape/Shape;->impl_mode:Lcom/sun/javafx/sg/prism/NGShape$Mode;

    sget-object v15, Lcom/sun/javafx/sg/prism/NGShape$Mode;->EMPTY:Lcom/sun/javafx/sg/prism/NGShape$Mode;

    if-ne v14, v15, :cond_0

    .line 1658
    new-instance v14, Lcom/sun/javafx/geom/Area;

    move-object/from16 v25, v14

    move-object/from16 v14, v25

    move-object/from16 v15, v25

    invoke-direct {v15}, Lcom/sun/javafx/geom/Area;-><init>()V

    move-object v2, v14

    .line 1695
    .end local v2    # "this":Ljavafx/scene/shape/Shape;
    :goto_0
    return-object v2

    .line 1661
    .restart local v2    # "this":Ljavafx/scene/shape/Shape;
    :cond_0
    move-object v14, v2

    invoke-virtual {v14}, Ljavafx/scene/shape/Shape;->impl_configShape()Lcom/sun/javafx/geom/Shape;

    move-result-object v14

    move-object v4, v14

    .line 1662
    .local v4, "fillShape":Lcom/sun/javafx/geom/Shape;
    move-object v14, v2

    iget-object v14, v14, Ljavafx/scene/shape/Shape;->impl_mode:Lcom/sun/javafx/sg/prism/NGShape$Mode;

    sget-object v15, Lcom/sun/javafx/sg/prism/NGShape$Mode;->FILL:Lcom/sun/javafx/sg/prism/NGShape$Mode;

    if-eq v14, v15, :cond_1

    move-object v14, v2

    iget-object v14, v14, Ljavafx/scene/shape/Shape;->impl_mode:Lcom/sun/javafx/sg/prism/NGShape$Mode;

    sget-object v15, Lcom/sun/javafx/sg/prism/NGShape$Mode;->STROKE_FILL:Lcom/sun/javafx/sg/prism/NGShape$Mode;

    if-ne v14, v15, :cond_2

    move-object v14, v2

    .line 1664
    invoke-virtual {v14}, Ljavafx/scene/shape/Shape;->getStrokeType()Ljavafx/scene/shape/StrokeType;

    move-result-object v14

    sget-object v15, Ljavafx/scene/shape/StrokeType;->INSIDE:Ljavafx/scene/shape/StrokeType;

    if-ne v14, v15, :cond_2

    .line 1665
    :cond_1
    move-object v14, v4

    move-object v15, v3

    invoke-static {v14, v15}, Ljavafx/scene/shape/Shape;->createTransformedArea(Lcom/sun/javafx/geom/Shape;Lcom/sun/javafx/geom/transform/BaseTransform;)Lcom/sun/javafx/geom/Area;

    move-result-object v14

    move-object v2, v14

    goto :goto_0

    .line 1668
    :cond_2
    move-object v14, v2

    invoke-virtual {v14}, Ljavafx/scene/shape/Shape;->getStrokeType()Ljavafx/scene/shape/StrokeType;

    move-result-object v14

    move-object v5, v14

    .line 1669
    .local v5, "strokeType":Ljavafx/scene/shape/StrokeType;
    move-object v14, v2

    .line 1670
    invoke-virtual {v14}, Ljavafx/scene/shape/Shape;->getStrokeWidth()D

    move-result-wide v14

    const-wide/16 v16, 0x0

    invoke-static/range {v14 .. v17}, Lcom/sun/javafx/util/Utils;->clampMin(DD)D

    move-result-wide v14

    move-wide v6, v14

    .line 1671
    .local v6, "strokeWidth":D
    move-object v14, v2

    invoke-virtual {v14}, Ljavafx/scene/shape/Shape;->getStrokeLineCap()Ljavafx/scene/shape/StrokeLineCap;

    move-result-object v14

    move-object v8, v14

    .line 1672
    .local v8, "strokeLineCap":Ljavafx/scene/shape/StrokeLineCap;
    move-object v14, v2

    move-object v15, v2

    invoke-virtual {v15}, Ljavafx/scene/shape/Shape;->getStrokeLineJoin()Ljavafx/scene/shape/StrokeLineJoin;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljavafx/scene/shape/Shape;->convertLineJoin(Ljavafx/scene/shape/StrokeLineJoin;)Ljavafx/scene/shape/StrokeLineJoin;

    move-result-object v14

    move-object v9, v14

    .line 1673
    .local v9, "strokeLineJoin":Ljavafx/scene/shape/StrokeLineJoin;
    move-object v14, v2

    .line 1674
    invoke-virtual {v14}, Ljavafx/scene/shape/Shape;->getStrokeMiterLimit()D

    move-result-wide v14

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    invoke-static/range {v14 .. v17}, Lcom/sun/javafx/util/Utils;->clampMin(DD)D

    move-result-wide v14

    double-to-float v14, v14

    move v10, v14

    .line 1676
    .local v10, "strokeMiterLimit":F
    move-object v14, v2

    .line 1677
    invoke-direct {v14}, Ljavafx/scene/shape/Shape;->hasStrokeDashArray()Z

    move-result v14

    if-eqz v14, :cond_3

    move-object v14, v2

    .line 1678
    invoke-virtual {v14}, Ljavafx/scene/shape/Shape;->getStrokeDashArray()Ljavafx/collections/ObservableList;

    move-result-object v14

    invoke-static {v14}, Ljavafx/scene/shape/Shape;->toPGDashArray(Ljava/util/List;)[F

    move-result-object v14

    :goto_1
    move-object v11, v14

    .line 1682
    .local v11, "dashArray":[F
    invoke-static {}, Lcom/sun/javafx/tk/Toolkit;->getToolkit()Lcom/sun/javafx/tk/Toolkit;

    move-result-object v14

    move-object v15, v4

    move-object/from16 v16, v5

    move-wide/from16 v17, v6

    move-object/from16 v19, v8

    move-object/from16 v20, v9

    move/from16 v21, v10

    move-object/from16 v22, v11

    move-object/from16 v23, v2

    .line 1685
    invoke-virtual/range {v23 .. v23}, Ljavafx/scene/shape/Shape;->getStrokeDashOffset()D

    move-result-wide v23

    move-wide/from16 v0, v23

    double-to-float v0, v0

    move/from16 v23, v0

    .line 1682
    invoke-virtual/range {v14 .. v23}, Lcom/sun/javafx/tk/Toolkit;->createStrokedShape(Lcom/sun/javafx/geom/Shape;Ljavafx/scene/shape/StrokeType;DLjavafx/scene/shape/StrokeLineCap;Ljavafx/scene/shape/StrokeLineJoin;F[FF)Lcom/sun/javafx/geom/Shape;

    move-result-object v14

    move-object v12, v14

    .line 1687
    .local v12, "strokeShape":Lcom/sun/javafx/geom/Shape;
    move-object v14, v2

    iget-object v14, v14, Ljavafx/scene/shape/Shape;->impl_mode:Lcom/sun/javafx/sg/prism/NGShape$Mode;

    sget-object v15, Lcom/sun/javafx/sg/prism/NGShape$Mode;->STROKE:Lcom/sun/javafx/sg/prism/NGShape$Mode;

    if-ne v14, v15, :cond_4

    .line 1688
    move-object v14, v12

    move-object v15, v3

    invoke-static {v14, v15}, Ljavafx/scene/shape/Shape;->createTransformedArea(Lcom/sun/javafx/geom/Shape;Lcom/sun/javafx/geom/transform/BaseTransform;)Lcom/sun/javafx/geom/Area;

    move-result-object v14

    move-object v2, v14

    goto/16 :goto_0

    .line 1678
    .end local v11    # "dashArray":[F
    .end local v12    # "strokeShape":Lcom/sun/javafx/geom/Shape;
    :cond_3
    sget-object v14, Ljavafx/scene/shape/Shape;->DEFAULT_PG_STROKE_DASH_ARRAY:[F

    goto :goto_1

    .line 1692
    .restart local v11    # "dashArray":[F
    .restart local v12    # "strokeShape":Lcom/sun/javafx/geom/Shape;
    :cond_4
    new-instance v14, Lcom/sun/javafx/geom/Area;

    move-object/from16 v25, v14

    move-object/from16 v14, v25

    move-object/from16 v15, v25

    move-object/from16 v16, v4

    invoke-direct/range {v15 .. v16}, Lcom/sun/javafx/geom/Area;-><init>(Lcom/sun/javafx/geom/Shape;)V

    move-object v13, v14

    .line 1693
    .local v13, "combinedArea":Lcom/sun/javafx/geom/Area;
    move-object v14, v13

    new-instance v15, Lcom/sun/javafx/geom/Area;

    move-object/from16 v25, v15

    move-object/from16 v15, v25

    move-object/from16 v16, v25

    move-object/from16 v17, v12

    invoke-direct/range {v16 .. v17}, Lcom/sun/javafx/geom/Area;-><init>(Lcom/sun/javafx/geom/Shape;)V

    invoke-virtual {v14, v15}, Lcom/sun/javafx/geom/Area;->add(Lcom/sun/javafx/geom/Area;)V

    .line 1695
    move-object v14, v13

    move-object v15, v3

    invoke-static {v14, v15}, Ljavafx/scene/shape/Shape;->createTransformedArea(Lcom/sun/javafx/geom/Shape;Lcom/sun/javafx/geom/transform/BaseTransform;)Lcom/sun/javafx/geom/Area;

    move-result-object v14

    move-object v2, v14

    goto/16 :goto_0
.end method

.method private hasStrokeDashArray()Z
    .locals 2

    .prologue
    .line 1168
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/Shape;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/Shape;->strokeAttributes:Ljavafx/scene/shape/Shape$StrokeAttributes;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/Shape;->strokeAttributes:Ljavafx/scene/shape/Shape$StrokeAttributes;

    invoke-virtual {v1}, Ljavafx/scene/shape/Shape$StrokeAttributes;->hasDashArray()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Ljavafx/scene/shape/Shape;
    return v0

    .restart local v0    # "this":Ljavafx/scene/shape/Shape;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static intersect(Ljavafx/scene/shape/Shape;Ljavafx/scene/shape/Shape;)Ljavafx/scene/shape/Shape;
    .locals 5

    .prologue
    .line 1647
    move-object v0, p0

    .local v0, "shape1":Ljavafx/scene/shape/Shape;
    move-object v1, p1

    .local v1, "shape2":Ljavafx/scene/shape/Shape;
    move-object v3, v0

    invoke-direct {v3}, Ljavafx/scene/shape/Shape;->getTransformedArea()Lcom/sun/javafx/geom/Area;

    move-result-object v3

    move-object v2, v3

    .line 1648
    .local v2, "result":Lcom/sun/javafx/geom/Area;
    move-object v3, v2

    move-object v4, v1

    invoke-direct {v4}, Ljavafx/scene/shape/Shape;->getTransformedArea()Lcom/sun/javafx/geom/Area;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sun/javafx/geom/Area;->intersect(Lcom/sun/javafx/geom/Area;)V

    .line 1649
    move-object v3, v2

    invoke-static {v3}, Ljavafx/scene/shape/Shape;->createFromGeomShape(Lcom/sun/javafx/geom/Shape;)Ljavafx/scene/shape/Path;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "shape1":Ljavafx/scene/shape/Shape;
    return-object v0
.end method

.method public static subtract(Ljavafx/scene/shape/Shape;Ljavafx/scene/shape/Shape;)Ljavafx/scene/shape/Shape;
    .locals 5

    .prologue
    .line 1602
    move-object v0, p0

    .local v0, "shape1":Ljavafx/scene/shape/Shape;
    move-object v1, p1

    .local v1, "shape2":Ljavafx/scene/shape/Shape;
    move-object v3, v0

    invoke-direct {v3}, Ljavafx/scene/shape/Shape;->getTransformedArea()Lcom/sun/javafx/geom/Area;

    move-result-object v3

    move-object v2, v3

    .line 1603
    .local v2, "result":Lcom/sun/javafx/geom/Area;
    move-object v3, v2

    move-object v4, v1

    invoke-direct {v4}, Ljavafx/scene/shape/Shape;->getTransformedArea()Lcom/sun/javafx/geom/Area;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sun/javafx/geom/Area;->subtract(Lcom/sun/javafx/geom/Area;)V

    .line 1604
    move-object v3, v2

    invoke-static {v3}, Ljavafx/scene/shape/Shape;->createFromGeomShape(Lcom/sun/javafx/geom/Shape;)Ljavafx/scene/shape/Path;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "shape1":Ljavafx/scene/shape/Shape;
    return-object v0
.end method

.method private static toPGDashArray(Ljava/util/List;)[F
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Double;",
            ">;)[F"
        }
    .end annotation

    .prologue
    .line 1172
    move-object v0, p0

    .local v0, "dashArray":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    move-object v4, v0

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    move v1, v4

    .line 1173
    .local v1, "size":I
    move v4, v1

    new-array v4, v4, [F

    move-object v2, v4

    .line 1174
    .local v2, "pgDashArray":[F
    const/4 v4, 0x0

    move v3, v4

    .local v3, "i":I
    :goto_0
    move v4, v3

    move v5, v1

    if-ge v4, v5, :cond_0

    .line 1175
    move-object v4, v2

    move v5, v3

    move-object v6, v0

    move v7, v3

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Double;

    invoke-virtual {v6}, Ljava/lang/Double;->floatValue()F

    move-result v6

    aput v6, v4, v5

    .line 1174
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1178
    :cond_0
    move-object v4, v2

    move-object v0, v4

    .end local v0    # "dashArray":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    return-object v0
.end method

.method public static union(Ljavafx/scene/shape/Shape;Ljavafx/scene/shape/Shape;)Ljavafx/scene/shape/Shape;
    .locals 5

    .prologue
    .line 1557
    move-object v0, p0

    .local v0, "shape1":Ljavafx/scene/shape/Shape;
    move-object v1, p1

    .local v1, "shape2":Ljavafx/scene/shape/Shape;
    move-object v3, v0

    invoke-direct {v3}, Ljavafx/scene/shape/Shape;->getTransformedArea()Lcom/sun/javafx/geom/Area;

    move-result-object v3

    move-object v2, v3

    .line 1558
    .local v2, "result":Lcom/sun/javafx/geom/Area;
    move-object v3, v2

    move-object v4, v1

    invoke-direct {v4}, Ljavafx/scene/shape/Shape;->getTransformedArea()Lcom/sun/javafx/geom/Area;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sun/javafx/geom/Area;->add(Lcom/sun/javafx/geom/Area;)V

    .line 1559
    move-object v3, v2

    invoke-static {v3}, Ljavafx/scene/shape/Shape;->createFromGeomShape(Lcom/sun/javafx/geom/Shape;)Ljavafx/scene/shape/Path;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "shape1":Ljavafx/scene/shape/Shape;
    return-object v0
.end method

.method private updatePGShape()V
    .locals 12

    .prologue
    .line 888
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/Shape;
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/shape/Shape;->impl_getPeer()Lcom/sun/javafx/sg/prism/NGNode;

    move-result-object v3

    check-cast v3, Lcom/sun/javafx/sg/prism/NGShape;

    move-object v1, v3

    .line 889
    .local v1, "peer":Lcom/sun/javafx/sg/prism/NGShape;
    move-object v3, v0

    iget-boolean v3, v3, Ljavafx/scene/shape/Shape;->strokeAttributesDirty:Z

    if-eqz v3, :cond_0

    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/shape/Shape;->getStroke()Ljavafx/scene/paint/Paint;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 891
    move-object v3, v0

    .line 892
    invoke-direct {v3}, Ljavafx/scene/shape/Shape;->hasStrokeDashArray()Z

    move-result v3

    if-eqz v3, :cond_5

    move-object v3, v0

    .line 893
    invoke-virtual {v3}, Ljavafx/scene/shape/Shape;->getStrokeDashArray()Ljavafx/collections/ObservableList;

    move-result-object v3

    invoke-static {v3}, Ljavafx/scene/shape/Shape;->toPGDashArray(Ljava/util/List;)[F

    move-result-object v3

    :goto_0
    move-object v2, v3

    .line 896
    .local v2, "pgDashArray":[F
    move-object v3, v1

    move-object v4, v0

    .line 897
    invoke-virtual {v4}, Ljavafx/scene/shape/Shape;->getStrokeWidth()D

    move-result-wide v4

    const-wide/16 v6, 0x0

    invoke-static {v4, v5, v6, v7}, Lcom/sun/javafx/util/Utils;->clampMin(DD)D

    move-result-wide v4

    double-to-float v4, v4

    move-object v5, v0

    .line 899
    invoke-virtual {v5}, Ljavafx/scene/shape/Shape;->getStrokeType()Ljavafx/scene/shape/StrokeType;

    move-result-object v5

    move-object v6, v0

    .line 900
    invoke-virtual {v6}, Ljavafx/scene/shape/Shape;->getStrokeLineCap()Ljavafx/scene/shape/StrokeLineCap;

    move-result-object v6

    move-object v7, v0

    move-object v8, v0

    .line 901
    invoke-virtual {v8}, Ljavafx/scene/shape/Shape;->getStrokeLineJoin()Ljavafx/scene/shape/StrokeLineJoin;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljavafx/scene/shape/Shape;->convertLineJoin(Ljavafx/scene/shape/StrokeLineJoin;)Ljavafx/scene/shape/StrokeLineJoin;

    move-result-object v7

    move-object v8, v0

    .line 902
    invoke-virtual {v8}, Ljavafx/scene/shape/Shape;->getStrokeMiterLimit()D

    move-result-wide v8

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    invoke-static {v8, v9, v10, v11}, Lcom/sun/javafx/util/Utils;->clampMin(DD)D

    move-result-wide v8

    double-to-float v8, v8

    move-object v9, v2

    move-object v10, v0

    .line 904
    invoke-virtual {v10}, Ljavafx/scene/shape/Shape;->getStrokeDashOffset()D

    move-result-wide v10

    double-to-float v10, v10

    .line 896
    invoke-virtual/range {v3 .. v10}, Lcom/sun/javafx/sg/prism/NGShape;->setDrawStroke(FLjavafx/scene/shape/StrokeType;Ljavafx/scene/shape/StrokeLineCap;Ljavafx/scene/shape/StrokeLineJoin;F[FF)V

    .line 906
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Ljavafx/scene/shape/Shape;->strokeAttributesDirty:Z

    .line 909
    .end local v2    # "pgDashArray":[F
    :cond_0
    move-object v3, v0

    sget-object v4, Lcom/sun/javafx/scene/DirtyBits;->SHAPE_MODE:Lcom/sun/javafx/scene/DirtyBits;

    invoke-virtual {v3, v4}, Ljavafx/scene/shape/Shape;->impl_isDirty(Lcom/sun/javafx/scene/DirtyBits;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 910
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/shape/Shape;->impl_mode:Lcom/sun/javafx/sg/prism/NGShape$Mode;

    invoke-virtual {v3, v4}, Lcom/sun/javafx/sg/prism/NGShape;->setMode(Lcom/sun/javafx/sg/prism/NGShape$Mode;)V

    .line 913
    :cond_1
    move-object v3, v0

    sget-object v4, Lcom/sun/javafx/scene/DirtyBits;->SHAPE_FILL:Lcom/sun/javafx/scene/DirtyBits;

    invoke-virtual {v3, v4}, Ljavafx/scene/shape/Shape;->impl_isDirty(Lcom/sun/javafx/scene/DirtyBits;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 914
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/shape/Shape;->getFill()Ljavafx/scene/paint/Paint;

    move-result-object v3

    move-object v2, v3

    .line 915
    .local v2, "localFill":Ljavafx/scene/paint/Paint;
    move-object v3, v1

    move-object v4, v2

    if-nez v4, :cond_6

    const/4 v4, 0x0

    :goto_1
    invoke-virtual {v3, v4}, Lcom/sun/javafx/sg/prism/NGShape;->setFillPaint(Ljava/lang/Object;)V

    .line 919
    .end local v2    # "localFill":Ljavafx/scene/paint/Paint;
    :cond_2
    move-object v3, v0

    sget-object v4, Lcom/sun/javafx/scene/DirtyBits;->SHAPE_STROKE:Lcom/sun/javafx/scene/DirtyBits;

    invoke-virtual {v3, v4}, Ljavafx/scene/shape/Shape;->impl_isDirty(Lcom/sun/javafx/scene/DirtyBits;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 920
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/shape/Shape;->getStroke()Ljavafx/scene/paint/Paint;

    move-result-object v3

    move-object v2, v3

    .line 921
    .local v2, "localStroke":Ljavafx/scene/paint/Paint;
    move-object v3, v1

    move-object v4, v2

    if-nez v4, :cond_7

    const/4 v4, 0x0

    :goto_2
    invoke-virtual {v3, v4}, Lcom/sun/javafx/sg/prism/NGShape;->setDrawPaint(Ljava/lang/Object;)V

    .line 925
    .end local v2    # "localStroke":Ljavafx/scene/paint/Paint;
    :cond_3
    move-object v3, v0

    sget-object v4, Lcom/sun/javafx/scene/DirtyBits;->NODE_SMOOTH:Lcom/sun/javafx/scene/DirtyBits;

    invoke-virtual {v3, v4}, Ljavafx/scene/shape/Shape;->impl_isDirty(Lcom/sun/javafx/scene/DirtyBits;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 926
    move-object v3, v1

    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/shape/Shape;->isSmooth()Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sun/javafx/sg/prism/NGShape;->setSmooth(Z)V

    .line 928
    :cond_4
    return-void

    .line 893
    :cond_5
    sget-object v3, Ljavafx/scene/shape/Shape;->DEFAULT_PG_STROKE_DASH_ARRAY:[F

    goto/16 :goto_0

    .line 916
    .local v2, "localFill":Ljavafx/scene/paint/Paint;
    :cond_6
    invoke-static {}, Lcom/sun/javafx/tk/Toolkit;->getPaintAccessor()Lcom/sun/javafx/tk/Toolkit$PaintAccessor;

    move-result-object v4

    move-object v5, v2

    invoke-interface {v4, v5}, Lcom/sun/javafx/tk/Toolkit$PaintAccessor;->getPlatformPaint(Ljavafx/scene/paint/Paint;)Ljava/lang/Object;

    move-result-object v4

    goto :goto_1

    .line 922
    .local v2, "localStroke":Ljavafx/scene/paint/Paint;
    :cond_7
    invoke-static {}, Lcom/sun/javafx/tk/Toolkit;->getPaintAccessor()Lcom/sun/javafx/tk/Toolkit$PaintAccessor;

    move-result-object v4

    move-object v5, v2

    invoke-interface {v4, v5}, Lcom/sun/javafx/tk/Toolkit$PaintAccessor;->getPlatformPaint(Ljavafx/scene/paint/Paint;)Ljava/lang/Object;

    move-result-object v4

    goto :goto_2
.end method


# virtual methods
.method computeBounds(Lcom/sun/javafx/geom/BaseBounds;Lcom/sun/javafx/geom/transform/BaseTransform;DDDDDD)Lcom/sun/javafx/geom/BaseBounds;
    .locals 49

    .prologue
    .line 978
    move-object/from16 v3, p0

    .local v3, "this":Ljavafx/scene/shape/Shape;
    move-object/from16 v4, p1

    .local v4, "bounds":Lcom/sun/javafx/geom/BaseBounds;
    move-object/from16 v5, p2

    .local v5, "tx":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-wide/from16 v6, p3

    .local v6, "upad":D
    move-wide/from16 v8, p5

    .local v8, "dpad":D
    move-wide/from16 v10, p7

    .local v10, "x":D
    move-wide/from16 v12, p9

    .local v12, "y":D
    move-wide/from16 v14, p11

    .local v14, "w":D
    move-wide/from16 v16, p13

    .local v16, "h":D
    move-wide/from16 v40, v14

    const-wide/16 v42, 0x0

    cmpg-double v40, v40, v42

    if-ltz v40, :cond_0

    move-wide/from16 v40, v16

    const-wide/16 v42, 0x0

    cmpg-double v40, v40, v42

    if-gez v40, :cond_1

    :cond_0
    move-object/from16 v40, v4

    invoke-virtual/range {v40 .. v40}, Lcom/sun/javafx/geom/BaseBounds;->makeEmpty()Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v40

    move-object/from16 v3, v40

    .line 1061
    .end local v3    # "this":Ljavafx/scene/shape/Shape;
    :goto_0
    return-object v3

    .line 980
    .restart local v3    # "this":Ljavafx/scene/shape/Shape;
    :cond_1
    move-wide/from16 v40, v10

    move-wide/from16 v18, v40

    .line 981
    .local v18, "x0":D
    move-wide/from16 v40, v12

    move-wide/from16 v20, v40

    .line 982
    .local v20, "y0":D
    move-wide/from16 v40, v14

    move-wide/from16 v22, v40

    .line 983
    .local v22, "x1":D
    move-wide/from16 v40, v16

    move-wide/from16 v24, v40

    .line 984
    .local v24, "y1":D
    move-wide/from16 v40, v8

    move-wide/from16 v26, v40

    .line 985
    .local v26, "_dpad":D
    move-object/from16 v40, v5

    invoke-virtual/range {v40 .. v40}, Lcom/sun/javafx/geom/transform/BaseTransform;->isTranslateOrIdentity()Z

    move-result v40

    if-eqz v40, :cond_3

    .line 986
    move-wide/from16 v40, v22

    move-wide/from16 v42, v18

    add-double v40, v40, v42

    move-wide/from16 v22, v40

    .line 987
    move-wide/from16 v40, v24

    move-wide/from16 v42, v20

    add-double v40, v40, v42

    move-wide/from16 v24, v40

    .line 988
    move-object/from16 v40, v5

    invoke-virtual/range {v40 .. v40}, Lcom/sun/javafx/geom/transform/BaseTransform;->getType()I

    move-result v40

    const/16 v41, 0x1

    move/from16 v0, v40

    move/from16 v1, v41

    if-ne v0, v1, :cond_2

    .line 989
    move-object/from16 v40, v5

    invoke-virtual/range {v40 .. v40}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMxt()D

    move-result-wide v40

    move-wide/from16 v28, v40

    .line 990
    .local v28, "dx":D
    move-object/from16 v40, v5

    invoke-virtual/range {v40 .. v40}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMyt()D

    move-result-wide v40

    move-wide/from16 v30, v40

    .line 991
    .local v30, "dy":D
    move-wide/from16 v40, v18

    move-wide/from16 v42, v28

    add-double v40, v40, v42

    move-wide/from16 v18, v40

    .line 992
    move-wide/from16 v40, v20

    move-wide/from16 v42, v30

    add-double v40, v40, v42

    move-wide/from16 v20, v40

    .line 993
    move-wide/from16 v40, v22

    move-wide/from16 v42, v28

    add-double v40, v40, v42

    move-wide/from16 v22, v40

    .line 994
    move-wide/from16 v40, v24

    move-wide/from16 v42, v30

    add-double v40, v40, v42

    move-wide/from16 v24, v40

    .line 996
    .end local v28    # "dx":D
    .end local v30    # "dy":D
    :cond_2
    move-wide/from16 v40, v26

    move-wide/from16 v42, v6

    add-double v40, v40, v42

    move-wide/from16 v26, v40

    .line 1054
    :goto_1
    move-wide/from16 v40, v18

    move-wide/from16 v42, v26

    sub-double v40, v40, v42

    move-wide/from16 v18, v40

    .line 1055
    move-wide/from16 v40, v20

    move-wide/from16 v42, v26

    sub-double v40, v40, v42

    move-wide/from16 v20, v40

    .line 1056
    move-wide/from16 v40, v22

    move-wide/from16 v42, v26

    add-double v40, v40, v42

    move-wide/from16 v22, v40

    .line 1057
    move-wide/from16 v40, v24

    move-wide/from16 v42, v26

    add-double v40, v40, v42

    move-wide/from16 v24, v40

    .line 1059
    move-object/from16 v40, v4

    move-wide/from16 v41, v18

    move-wide/from16 v0, v41

    double-to-float v0, v0

    move/from16 v41, v0

    move-wide/from16 v42, v20

    move-wide/from16 v0, v42

    double-to-float v0, v0

    move/from16 v42, v0

    const/16 v43, 0x0

    move-wide/from16 v44, v22

    move-wide/from16 v0, v44

    double-to-float v0, v0

    move/from16 v44, v0

    move-wide/from16 v45, v24

    move-wide/from16 v0, v45

    double-to-float v0, v0

    move/from16 v45, v0

    const/16 v46, 0x0

    invoke-virtual/range {v40 .. v46}, Lcom/sun/javafx/geom/BaseBounds;->deriveWithNewBounds(FFFFFF)Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v40

    move-object/from16 v4, v40

    .line 1061
    move-object/from16 v40, v4

    move-object/from16 v3, v40

    goto/16 :goto_0

    .line 998
    :cond_3
    move-wide/from16 v40, v18

    move-wide/from16 v42, v6

    sub-double v40, v40, v42

    move-wide/from16 v18, v40

    .line 999
    move-wide/from16 v40, v20

    move-wide/from16 v42, v6

    sub-double v40, v40, v42

    move-wide/from16 v20, v40

    .line 1000
    move-wide/from16 v40, v22

    move-wide/from16 v42, v6

    const-wide/high16 v44, 0x4000000000000000L    # 2.0

    mul-double v42, v42, v44

    add-double v40, v40, v42

    move-wide/from16 v22, v40

    .line 1001
    move-wide/from16 v40, v24

    move-wide/from16 v42, v6

    const-wide/high16 v44, 0x4000000000000000L    # 2.0

    mul-double v42, v42, v44

    add-double v40, v40, v42

    move-wide/from16 v24, v40

    .line 1037
    move-object/from16 v40, v5

    invoke-virtual/range {v40 .. v40}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMxx()D

    move-result-wide v40

    move-wide/from16 v28, v40

    .line 1038
    .local v28, "mxx":D
    move-object/from16 v40, v5

    invoke-virtual/range {v40 .. v40}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMxy()D

    move-result-wide v40

    move-wide/from16 v30, v40

    .line 1039
    .local v30, "mxy":D
    move-object/from16 v40, v5

    invoke-virtual/range {v40 .. v40}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMyx()D

    move-result-wide v40

    move-wide/from16 v32, v40

    .line 1040
    .local v32, "myx":D
    move-object/from16 v40, v5

    invoke-virtual/range {v40 .. v40}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMyy()D

    move-result-wide v40

    move-wide/from16 v34, v40

    .line 1042
    .local v34, "myy":D
    move-wide/from16 v40, v18

    move-wide/from16 v42, v28

    mul-double v40, v40, v42

    move-wide/from16 v42, v20

    move-wide/from16 v44, v30

    mul-double v42, v42, v44

    add-double v40, v40, v42

    move-object/from16 v42, v5

    invoke-virtual/range {v42 .. v42}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMxt()D

    move-result-wide v42

    add-double v40, v40, v42

    move-wide/from16 v36, v40

    .line 1043
    .local v36, "mxt":D
    move-wide/from16 v40, v18

    move-wide/from16 v42, v32

    mul-double v40, v40, v42

    move-wide/from16 v42, v20

    move-wide/from16 v44, v34

    mul-double v42, v42, v44

    add-double v40, v40, v42

    move-object/from16 v42, v5

    invoke-virtual/range {v42 .. v42}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMyt()D

    move-result-wide v42

    add-double v40, v40, v42

    move-wide/from16 v38, v40

    .line 1045
    .local v38, "myt":D
    move-wide/from16 v40, v28

    move-wide/from16 v42, v22

    mul-double v40, v40, v42

    move-wide/from16 v28, v40

    .line 1046
    move-wide/from16 v40, v30

    move-wide/from16 v42, v24

    mul-double v40, v40, v42

    move-wide/from16 v30, v40

    .line 1047
    move-wide/from16 v40, v32

    move-wide/from16 v42, v22

    mul-double v40, v40, v42

    move-wide/from16 v32, v40

    .line 1048
    move-wide/from16 v40, v34

    move-wide/from16 v42, v24

    mul-double v40, v40, v42

    move-wide/from16 v34, v40

    .line 1049
    const-wide/16 v40, 0x0

    move-wide/from16 v42, v28

    invoke-static/range {v40 .. v43}, Ljava/lang/Math;->min(DD)D

    move-result-wide v40

    move-wide/from16 v42, v30

    move-wide/from16 v44, v28

    move-wide/from16 v46, v30

    add-double v44, v44, v46

    invoke-static/range {v42 .. v45}, Ljava/lang/Math;->min(DD)D

    move-result-wide v42

    invoke-static/range {v40 .. v43}, Ljava/lang/Math;->min(DD)D

    move-result-wide v40

    move-wide/from16 v42, v36

    add-double v40, v40, v42

    move-wide/from16 v18, v40

    .line 1050
    const-wide/16 v40, 0x0

    move-wide/from16 v42, v32

    invoke-static/range {v40 .. v43}, Ljava/lang/Math;->min(DD)D

    move-result-wide v40

    move-wide/from16 v42, v34

    move-wide/from16 v44, v32

    move-wide/from16 v46, v34

    add-double v44, v44, v46

    invoke-static/range {v42 .. v45}, Ljava/lang/Math;->min(DD)D

    move-result-wide v42

    invoke-static/range {v40 .. v43}, Ljava/lang/Math;->min(DD)D

    move-result-wide v40

    move-wide/from16 v42, v38

    add-double v40, v40, v42

    move-wide/from16 v20, v40

    .line 1051
    const-wide/16 v40, 0x0

    move-wide/from16 v42, v28

    invoke-static/range {v40 .. v43}, Ljava/lang/Math;->max(DD)D

    move-result-wide v40

    move-wide/from16 v42, v30

    move-wide/from16 v44, v28

    move-wide/from16 v46, v30

    add-double v44, v44, v46

    invoke-static/range {v42 .. v45}, Ljava/lang/Math;->max(DD)D

    move-result-wide v42

    invoke-static/range {v40 .. v43}, Ljava/lang/Math;->max(DD)D

    move-result-wide v40

    move-wide/from16 v42, v36

    add-double v40, v40, v42

    move-wide/from16 v22, v40

    .line 1052
    const-wide/16 v40, 0x0

    move-wide/from16 v42, v32

    invoke-static/range {v40 .. v43}, Ljava/lang/Math;->max(DD)D

    move-result-wide v40

    move-wide/from16 v42, v34

    move-wide/from16 v44, v32

    move-wide/from16 v46, v34

    add-double v44, v44, v46

    invoke-static/range {v42 .. v45}, Ljava/lang/Math;->max(DD)D

    move-result-wide v42

    invoke-static/range {v40 .. v43}, Ljava/lang/Math;->max(DD)D

    move-result-wide v40

    move-wide/from16 v42, v38

    add-double v40, v40, v42

    move-wide/from16 v24, v40

    goto/16 :goto_1
.end method

.method computeShapeBounds(Lcom/sun/javafx/geom/BaseBounds;Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/javafx/geom/Shape;)Lcom/sun/javafx/geom/BaseBounds;
    .locals 28

    .prologue
    .line 1068
    move-object/from16 v3, p0

    .local v3, "this":Ljavafx/scene/shape/Shape;
    move-object/from16 v4, p1

    .local v4, "bounds":Lcom/sun/javafx/geom/BaseBounds;
    move-object/from16 v5, p2

    .local v5, "tx":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object/from16 v6, p3

    .local v6, "s":Lcom/sun/javafx/geom/Shape;
    move-object/from16 v16, v3

    move-object/from16 v0, v16

    iget-object v0, v0, Ljavafx/scene/shape/Shape;->impl_mode:Lcom/sun/javafx/sg/prism/NGShape$Mode;

    move-object/from16 v16, v0

    sget-object v17, Lcom/sun/javafx/sg/prism/NGShape$Mode;->EMPTY:Lcom/sun/javafx/sg/prism/NGShape$Mode;

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_0

    .line 1069
    move-object/from16 v16, v4

    invoke-virtual/range {v16 .. v16}, Lcom/sun/javafx/geom/BaseBounds;->makeEmpty()Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v16

    move-object/from16 v3, v16

    .line 1114
    .end local v3    # "this":Ljavafx/scene/shape/Shape;
    :goto_0
    return-object v3

    .line 1072
    .restart local v3    # "this":Ljavafx/scene/shape/Shape;
    :cond_0
    const/16 v16, 0x4

    move/from16 v0, v16

    new-array v0, v0, [F

    move-object/from16 v16, v0

    fill-array-data v16, :array_0

    move-object/from16 v7, v16

    .line 1076
    .local v7, "bbox":[F
    move-object/from16 v16, v3

    move-object/from16 v0, v16

    iget-object v0, v0, Ljavafx/scene/shape/Shape;->impl_mode:Lcom/sun/javafx/sg/prism/NGShape$Mode;

    move-object/from16 v16, v0

    sget-object v17, Lcom/sun/javafx/sg/prism/NGShape$Mode;->STROKE:Lcom/sun/javafx/sg/prism/NGShape$Mode;

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    if-eq v0, v1, :cond_4

    const/16 v16, 0x1

    :goto_1
    move/from16 v8, v16

    .line 1077
    .local v8, "includeShape":Z
    move-object/from16 v16, v3

    move-object/from16 v0, v16

    iget-object v0, v0, Ljavafx/scene/shape/Shape;->impl_mode:Lcom/sun/javafx/sg/prism/NGShape$Mode;

    move-object/from16 v16, v0

    sget-object v17, Lcom/sun/javafx/sg/prism/NGShape$Mode;->FILL:Lcom/sun/javafx/sg/prism/NGShape$Mode;

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    if-eq v0, v1, :cond_5

    const/16 v16, 0x1

    :goto_2
    move/from16 v9, v16

    .line 1078
    .local v9, "includeStroke":Z
    move/from16 v16, v9

    if-eqz v16, :cond_1

    move-object/from16 v16, v3

    invoke-virtual/range {v16 .. v16}, Ljavafx/scene/shape/Shape;->getStrokeType()Ljavafx/scene/shape/StrokeType;

    move-result-object v16

    sget-object v17, Ljavafx/scene/shape/StrokeType;->INSIDE:Ljavafx/scene/shape/StrokeType;

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_1

    .line 1079
    const/16 v16, 0x1

    move/from16 v8, v16

    .line 1080
    const/16 v16, 0x0

    move/from16 v9, v16

    .line 1083
    :cond_1
    move/from16 v16, v9

    if-eqz v16, :cond_6

    .line 1084
    move-object/from16 v16, v3

    invoke-virtual/range {v16 .. v16}, Ljavafx/scene/shape/Shape;->getStrokeType()Ljavafx/scene/shape/StrokeType;

    move-result-object v16

    move-object/from16 v10, v16

    .line 1085
    .local v10, "type":Ljavafx/scene/shape/StrokeType;
    move-object/from16 v16, v3

    invoke-virtual/range {v16 .. v16}, Ljavafx/scene/shape/Shape;->getStrokeWidth()D

    move-result-wide v16

    const-wide/16 v18, 0x0

    invoke-static/range {v16 .. v19}, Lcom/sun/javafx/util/Utils;->clampMin(DD)D

    move-result-wide v16

    move-wide/from16 v11, v16

    .line 1086
    .local v11, "sw":D
    move-object/from16 v16, v3

    invoke-virtual/range {v16 .. v16}, Ljavafx/scene/shape/Shape;->getStrokeLineCap()Ljavafx/scene/shape/StrokeLineCap;

    move-result-object v16

    move-object/from16 v13, v16

    .line 1087
    .local v13, "cap":Ljavafx/scene/shape/StrokeLineCap;
    move-object/from16 v16, v3

    move-object/from16 v17, v3

    invoke-virtual/range {v17 .. v17}, Ljavafx/scene/shape/Shape;->getStrokeLineJoin()Ljavafx/scene/shape/StrokeLineJoin;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljavafx/scene/shape/Shape;->convertLineJoin(Ljavafx/scene/shape/StrokeLineJoin;)Ljavafx/scene/shape/StrokeLineJoin;

    move-result-object v16

    move-object/from16 v14, v16

    .line 1088
    .local v14, "join":Ljavafx/scene/shape/StrokeLineJoin;
    move-object/from16 v16, v3

    .line 1089
    invoke-virtual/range {v16 .. v16}, Ljavafx/scene/shape/Shape;->getStrokeMiterLimit()D

    move-result-wide v16

    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    invoke-static/range {v16 .. v19}, Lcom/sun/javafx/util/Utils;->clampMin(DD)D

    move-result-wide v16

    move-wide/from16 v0, v16

    double-to-float v0, v0

    move/from16 v16, v0

    move/from16 v15, v16

    .line 1093
    .local v15, "miterlimit":F
    invoke-static {}, Lcom/sun/javafx/tk/Toolkit;->getToolkit()Lcom/sun/javafx/tk/Toolkit;

    move-result-object v16

    move-object/from16 v17, v6

    move-object/from16 v18, v7

    move-object/from16 v19, v10

    move-wide/from16 v20, v11

    move-object/from16 v22, v13

    move-object/from16 v23, v14

    move/from16 v24, v15

    move-object/from16 v25, v5

    invoke-virtual/range {v16 .. v25}, Lcom/sun/javafx/tk/Toolkit;->accumulateStrokeBounds(Lcom/sun/javafx/geom/Shape;[FLjavafx/scene/shape/StrokeType;DLjavafx/scene/shape/StrokeLineCap;Ljavafx/scene/shape/StrokeLineJoin;FLcom/sun/javafx/geom/transform/BaseTransform;)V

    .line 1099
    move-object/from16 v16, v7

    const/16 v17, 0x0

    move-object/from16 v26, v16

    move/from16 v27, v17

    move-object/from16 v16, v26

    move/from16 v17, v27

    move-object/from16 v18, v26

    move/from16 v19, v27

    aget v18, v18, v19

    move/from16 v0, v18

    float-to-double v0, v0

    move-wide/from16 v18, v0

    const-wide/high16 v20, 0x3fe0000000000000L    # 0.5

    sub-double v18, v18, v20

    move-wide/from16 v0, v18

    double-to-float v0, v0

    move/from16 v18, v0

    aput v18, v16, v17

    .line 1100
    move-object/from16 v16, v7

    const/16 v17, 0x1

    move-object/from16 v26, v16

    move/from16 v27, v17

    move-object/from16 v16, v26

    move/from16 v17, v27

    move-object/from16 v18, v26

    move/from16 v19, v27

    aget v18, v18, v19

    move/from16 v0, v18

    float-to-double v0, v0

    move-wide/from16 v18, v0

    const-wide/high16 v20, 0x3fe0000000000000L    # 0.5

    sub-double v18, v18, v20

    move-wide/from16 v0, v18

    double-to-float v0, v0

    move/from16 v18, v0

    aput v18, v16, v17

    .line 1101
    move-object/from16 v16, v7

    const/16 v17, 0x2

    move-object/from16 v26, v16

    move/from16 v27, v17

    move-object/from16 v16, v26

    move/from16 v17, v27

    move-object/from16 v18, v26

    move/from16 v19, v27

    aget v18, v18, v19

    move/from16 v0, v18

    float-to-double v0, v0

    move-wide/from16 v18, v0

    const-wide/high16 v20, 0x3fe0000000000000L    # 0.5

    add-double v18, v18, v20

    move-wide/from16 v0, v18

    double-to-float v0, v0

    move/from16 v18, v0

    aput v18, v16, v17

    .line 1102
    move-object/from16 v16, v7

    const/16 v17, 0x3

    move-object/from16 v26, v16

    move/from16 v27, v17

    move-object/from16 v16, v26

    move/from16 v17, v27

    move-object/from16 v18, v26

    move/from16 v19, v27

    aget v18, v18, v19

    move/from16 v0, v18

    float-to-double v0, v0

    move-wide/from16 v18, v0

    const-wide/high16 v20, 0x3fe0000000000000L    # 0.5

    add-double v18, v18, v20

    move-wide/from16 v0, v18

    double-to-float v0, v0

    move/from16 v18, v0

    aput v18, v16, v17

    .line 1103
    .line 1107
    .end local v10    # "type":Ljavafx/scene/shape/StrokeType;
    .end local v11    # "sw":D
    .end local v13    # "cap":Ljavafx/scene/shape/StrokeLineCap;
    .end local v14    # "join":Ljavafx/scene/shape/StrokeLineJoin;
    .end local v15    # "miterlimit":F
    :cond_2
    :goto_3
    move-object/from16 v16, v7

    const/16 v17, 0x2

    aget v16, v16, v17

    move-object/from16 v17, v7

    const/16 v18, 0x0

    aget v17, v17, v18

    cmpg-float v16, v16, v17

    if-ltz v16, :cond_3

    move-object/from16 v16, v7

    const/16 v17, 0x3

    aget v16, v16, v17

    move-object/from16 v17, v7

    const/16 v18, 0x1

    aget v17, v17, v18

    cmpg-float v16, v16, v17

    if-gez v16, :cond_7

    .line 1110
    :cond_3
    move-object/from16 v16, v4

    invoke-virtual/range {v16 .. v16}, Lcom/sun/javafx/geom/BaseBounds;->makeEmpty()Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v16

    move-object/from16 v3, v16

    goto/16 :goto_0

    .line 1076
    .end local v8    # "includeShape":Z
    .end local v9    # "includeStroke":Z
    :cond_4
    const/16 v16, 0x0

    goto/16 :goto_1

    .line 1077
    .restart local v8    # "includeShape":Z
    :cond_5
    const/16 v16, 0x0

    goto/16 :goto_2

    .line 1103
    .restart local v9    # "includeStroke":Z
    :cond_6
    move/from16 v16, v8

    if-eqz v16, :cond_2

    .line 1104
    move-object/from16 v16, v7

    move-object/from16 v17, v6

    move-object/from16 v18, v5

    invoke-static/range {v16 .. v18}, Lcom/sun/javafx/geom/Shape;->accumulate([FLcom/sun/javafx/geom/Shape;Lcom/sun/javafx/geom/transform/BaseTransform;)V

    goto :goto_3

    .line 1112
    :cond_7
    move-object/from16 v16, v4

    move-object/from16 v17, v7

    const/16 v18, 0x0

    aget v17, v17, v18

    move-object/from16 v18, v7

    const/16 v19, 0x1

    aget v18, v18, v19

    const/16 v19, 0x0

    move-object/from16 v20, v7

    const/16 v21, 0x2

    aget v20, v20, v21

    move-object/from16 v21, v7

    const/16 v22, 0x3

    aget v21, v21, v22

    const/16 v22, 0x0

    invoke-virtual/range {v16 .. v22}, Lcom/sun/javafx/geom/BaseBounds;->deriveWithNewBounds(FFFFFF)Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v16

    move-object/from16 v4, v16

    .line 1114
    move-object/from16 v16, v4

    move-object/from16 v3, v16

    goto/16 :goto_0

    .line 1072
    :array_0
    .array-data 4
        0x7f800000    # Float.POSITIVE_INFINITY
        0x7f800000    # Float.POSITIVE_INFINITY
        -0x800000    # Float.NEGATIVE_INFINITY
        -0x800000    # Float.NEGATIVE_INFINITY
    .end array-data
.end method

.method computeShapeContains(DDLcom/sun/javafx/geom/Shape;)Z
    .locals 29

    .prologue
    .line 1119
    move-object/from16 v2, p0

    .local v2, "this":Ljavafx/scene/shape/Shape;
    move-wide/from16 v3, p1

    .local v3, "localX":D
    move-wide/from16 v5, p3

    .local v5, "localY":D
    move-object/from16 v7, p5

    .local v7, "s":Lcom/sun/javafx/geom/Shape;
    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-object v0, v0, Ljavafx/scene/shape/Shape;->impl_mode:Lcom/sun/javafx/sg/prism/NGShape$Mode;

    move-object/from16 v16, v0

    sget-object v17, Lcom/sun/javafx/sg/prism/NGShape$Mode;->EMPTY:Lcom/sun/javafx/sg/prism/NGShape$Mode;

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_0

    .line 1120
    const/16 v16, 0x0

    move/from16 v2, v16

    .line 1152
    .end local v2    # "this":Ljavafx/scene/shape/Shape;
    :goto_0
    return v2

    .line 1123
    .restart local v2    # "this":Ljavafx/scene/shape/Shape;
    :cond_0
    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-object v0, v0, Ljavafx/scene/shape/Shape;->impl_mode:Lcom/sun/javafx/sg/prism/NGShape$Mode;

    move-object/from16 v16, v0

    sget-object v17, Lcom/sun/javafx/sg/prism/NGShape$Mode;->STROKE:Lcom/sun/javafx/sg/prism/NGShape$Mode;

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    if-eq v0, v1, :cond_2

    const/16 v16, 0x1

    :goto_1
    move/from16 v8, v16

    .line 1124
    .local v8, "includeShape":Z
    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-object v0, v0, Ljavafx/scene/shape/Shape;->impl_mode:Lcom/sun/javafx/sg/prism/NGShape$Mode;

    move-object/from16 v16, v0

    sget-object v17, Lcom/sun/javafx/sg/prism/NGShape$Mode;->FILL:Lcom/sun/javafx/sg/prism/NGShape$Mode;

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    if-eq v0, v1, :cond_3

    const/16 v16, 0x1

    :goto_2
    move/from16 v9, v16

    .line 1125
    .local v9, "includeStroke":Z
    move/from16 v16, v9

    if-eqz v16, :cond_1

    move/from16 v16, v8

    if-eqz v16, :cond_1

    move-object/from16 v16, v2

    .line 1126
    invoke-virtual/range {v16 .. v16}, Ljavafx/scene/shape/Shape;->getStrokeType()Ljavafx/scene/shape/StrokeType;

    move-result-object v16

    sget-object v17, Ljavafx/scene/shape/StrokeType;->INSIDE:Ljavafx/scene/shape/StrokeType;

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_1

    .line 1128
    const/16 v16, 0x0

    move/from16 v9, v16

    .line 1131
    :cond_1
    move/from16 v16, v8

    if-eqz v16, :cond_4

    .line 1132
    move-object/from16 v16, v7

    move-wide/from16 v17, v3

    move-wide/from16 v0, v17

    double-to-float v0, v0

    move/from16 v17, v0

    move-wide/from16 v18, v5

    move-wide/from16 v0, v18

    double-to-float v0, v0

    move/from16 v18, v0

    invoke-virtual/range {v16 .. v18}, Lcom/sun/javafx/geom/Shape;->contains(FF)Z

    move-result v16

    if-eqz v16, :cond_4

    .line 1133
    const/16 v16, 0x1

    move/from16 v2, v16

    goto :goto_0

    .line 1123
    .end local v8    # "includeShape":Z
    .end local v9    # "includeStroke":Z
    :cond_2
    const/16 v16, 0x0

    goto :goto_1

    .line 1124
    .restart local v8    # "includeShape":Z
    :cond_3
    const/16 v16, 0x0

    goto :goto_2

    .line 1137
    .restart local v9    # "includeStroke":Z
    :cond_4
    move/from16 v16, v9

    if-eqz v16, :cond_5

    .line 1138
    move-object/from16 v16, v2

    invoke-virtual/range {v16 .. v16}, Ljavafx/scene/shape/Shape;->getStrokeType()Ljavafx/scene/shape/StrokeType;

    move-result-object v16

    move-object/from16 v10, v16

    .line 1139
    .local v10, "type":Ljavafx/scene/shape/StrokeType;
    move-object/from16 v16, v2

    invoke-virtual/range {v16 .. v16}, Ljavafx/scene/shape/Shape;->getStrokeWidth()D

    move-result-wide v16

    const-wide/16 v18, 0x0

    invoke-static/range {v16 .. v19}, Lcom/sun/javafx/util/Utils;->clampMin(DD)D

    move-result-wide v16

    move-wide/from16 v11, v16

    .line 1140
    .local v11, "sw":D
    move-object/from16 v16, v2

    invoke-virtual/range {v16 .. v16}, Ljavafx/scene/shape/Shape;->getStrokeLineCap()Ljavafx/scene/shape/StrokeLineCap;

    move-result-object v16

    move-object/from16 v13, v16

    .line 1141
    .local v13, "cap":Ljavafx/scene/shape/StrokeLineCap;
    move-object/from16 v16, v2

    move-object/from16 v17, v2

    invoke-virtual/range {v17 .. v17}, Ljavafx/scene/shape/Shape;->getStrokeLineJoin()Ljavafx/scene/shape/StrokeLineJoin;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljavafx/scene/shape/Shape;->convertLineJoin(Ljavafx/scene/shape/StrokeLineJoin;)Ljavafx/scene/shape/StrokeLineJoin;

    move-result-object v16

    move-object/from16 v14, v16

    .line 1142
    .local v14, "join":Ljavafx/scene/shape/StrokeLineJoin;
    move-object/from16 v16, v2

    .line 1143
    invoke-virtual/range {v16 .. v16}, Ljavafx/scene/shape/Shape;->getStrokeMiterLimit()D

    move-result-wide v16

    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    invoke-static/range {v16 .. v19}, Lcom/sun/javafx/util/Utils;->clampMin(DD)D

    move-result-wide v16

    move-wide/from16 v0, v16

    double-to-float v0, v0

    move/from16 v16, v0

    move/from16 v15, v16

    .line 1147
    .local v15, "miterlimit":F
    invoke-static {}, Lcom/sun/javafx/tk/Toolkit;->getToolkit()Lcom/sun/javafx/tk/Toolkit;

    move-result-object v16

    move-object/from16 v17, v7

    move-wide/from16 v18, v3

    move-wide/from16 v20, v5

    move-object/from16 v22, v10

    move-wide/from16 v23, v11

    move-object/from16 v25, v13

    move-object/from16 v26, v14

    move/from16 v27, v15

    invoke-virtual/range {v16 .. v27}, Lcom/sun/javafx/tk/Toolkit;->strokeContains(Lcom/sun/javafx/geom/Shape;DDLjavafx/scene/shape/StrokeType;DLjavafx/scene/shape/StrokeLineCap;Ljavafx/scene/shape/StrokeLineJoin;F)Z

    move-result v16

    move/from16 v2, v16

    goto/16 :goto_0

    .line 1152
    .end local v10    # "type":Ljavafx/scene/shape/StrokeType;
    .end local v11    # "sw":D
    .end local v13    # "cap":Ljavafx/scene/shape/StrokeLineCap;
    .end local v14    # "join":Ljavafx/scene/shape/StrokeLineJoin;
    .end local v15    # "miterlimit":F
    :cond_5
    const/16 v16, 0x0

    move/from16 v2, v16

    goto/16 :goto_0
.end method

.method convertLineJoin(Ljavafx/scene/shape/StrokeLineJoin;)Ljavafx/scene/shape/StrokeLineJoin;
    .locals 3

    .prologue
    .line 132
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/Shape;
    move-object v1, p1

    .local v1, "t":Ljavafx/scene/shape/StrokeLineJoin;
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/shape/Shape;
    return-object v0
.end method

.method public final fillProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/scene/paint/Paint;",
            ">;"
        }
    .end annotation

    .prologue
    .line 378
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/Shape;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/Shape;->fill:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    .line 379
    move-object v1, v0

    new-instance v2, Ljavafx/scene/shape/Shape$1;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    sget-object v5, Ljavafx/scene/paint/Color;->BLACK:Ljavafx/scene/paint/Color;

    invoke-direct {v3, v4, v5}, Ljavafx/scene/shape/Shape$1;-><init>(Ljavafx/scene/shape/Shape;Ljavafx/scene/paint/Paint;)V

    iput-object v2, v1, Ljavafx/scene/shape/Shape;->fill:Ljavafx/beans/property/ObjectProperty;

    .line 420
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/Shape;->fill:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/shape/Shape;
    return-object v0
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
    .line 853
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/Shape;
    invoke-static {}, Ljavafx/scene/shape/Shape;->getClassCssMetaData()Ljava/util/List;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/shape/Shape;
    return-object v0
.end method

.method public final getFill()Ljavafx/scene/paint/Paint;
    .locals 2

    .prologue
    .line 373
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/Shape;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/Shape;->fill:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    sget-object v1, Ljavafx/scene/paint/Color;->BLACK:Ljavafx/scene/paint/Color;

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/shape/Shape;
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/shape/Shape;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/Shape;->fill:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/scene/paint/Paint;

    goto :goto_0
.end method

.method public final getStroke()Ljavafx/scene/paint/Paint;
    .locals 2

    .prologue
    .line 449
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/Shape;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/Shape;->stroke:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/shape/Shape;
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/shape/Shape;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/Shape;->stroke:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/scene/paint/Paint;

    goto :goto_0
.end method

.method public final getStrokeDashArray()Ljavafx/collections/ObservableList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/collections/ObservableList",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .prologue
    .line 326
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/Shape;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/shape/Shape;->getStrokeAttributes()Ljavafx/scene/shape/Shape$StrokeAttributes;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/scene/shape/Shape$StrokeAttributes;->dashArrayProperty()Ljavafx/collections/ObservableList;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/shape/Shape;
    return-object v0
.end method

.method public final getStrokeDashOffset()D
    .locals 4

    .prologue
    .line 269
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/shape/Shape;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/shape/Shape;->strokeAttributes:Ljavafx/scene/shape/Shape$StrokeAttributes;

    if-nez v2, :cond_0

    const-wide/16 v2, 0x0

    .line 270
    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Ljavafx/scene/shape/Shape;
    return-wide v1

    .line 269
    .restart local v1    # "this":Ljavafx/scene/shape/Shape;
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/shape/Shape;->strokeAttributes:Ljavafx/scene/shape/Shape$StrokeAttributes;

    .line 270
    invoke-virtual {v2}, Ljavafx/scene/shape/Shape$StrokeAttributes;->getDashOffset()D

    move-result-wide v2

    goto :goto_0
.end method

.method public final getStrokeLineCap()Ljavafx/scene/shape/StrokeLineCap;
    .locals 2

    .prologue
    .line 213
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/Shape;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/Shape;->strokeAttributes:Ljavafx/scene/shape/Shape$StrokeAttributes;

    if-nez v1, :cond_0

    sget-object v1, Ljavafx/scene/shape/Shape;->DEFAULT_STROKE_LINE_CAP:Ljavafx/scene/shape/StrokeLineCap;

    .line 214
    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/shape/Shape;
    return-object v0

    .line 213
    .restart local v0    # "this":Ljavafx/scene/shape/Shape;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/Shape;->strokeAttributes:Ljavafx/scene/shape/Shape$StrokeAttributes;

    .line 214
    invoke-virtual {v1}, Ljavafx/scene/shape/Shape$StrokeAttributes;->getLineCap()Ljavafx/scene/shape/StrokeLineCap;

    move-result-object v1

    goto :goto_0
.end method

.method public final getStrokeLineJoin()Ljavafx/scene/shape/StrokeLineJoin;
    .locals 2

    .prologue
    .line 186
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/Shape;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/Shape;->strokeAttributes:Ljavafx/scene/shape/Shape$StrokeAttributes;

    if-nez v1, :cond_0

    sget-object v1, Ljavafx/scene/shape/Shape;->DEFAULT_STROKE_LINE_JOIN:Ljavafx/scene/shape/StrokeLineJoin;

    .line 188
    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/shape/Shape;
    return-object v0

    .line 186
    .restart local v0    # "this":Ljavafx/scene/shape/Shape;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/Shape;->strokeAttributes:Ljavafx/scene/shape/Shape$StrokeAttributes;

    .line 188
    invoke-virtual {v1}, Ljavafx/scene/shape/Shape$StrokeAttributes;->getLineJoin()Ljavafx/scene/shape/StrokeLineJoin;

    move-result-object v1

    goto :goto_0
.end method

.method public final getStrokeMiterLimit()D
    .locals 4

    .prologue
    .line 239
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/shape/Shape;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/shape/Shape;->strokeAttributes:Ljavafx/scene/shape/Shape$StrokeAttributes;

    if-nez v2, :cond_0

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    .line 240
    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Ljavafx/scene/shape/Shape;
    return-wide v1

    .line 239
    .restart local v1    # "this":Ljavafx/scene/shape/Shape;
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/shape/Shape;->strokeAttributes:Ljavafx/scene/shape/Shape$StrokeAttributes;

    .line 240
    invoke-virtual {v2}, Ljavafx/scene/shape/Shape$StrokeAttributes;->getMiterLimit()D

    move-result-wide v2

    goto :goto_0
.end method

.method public final getStrokeType()Ljavafx/scene/shape/StrokeType;
    .locals 2

    .prologue
    .line 140
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/Shape;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/Shape;->strokeAttributes:Ljavafx/scene/shape/Shape$StrokeAttributes;

    if-nez v1, :cond_0

    sget-object v1, Ljavafx/scene/shape/Shape;->DEFAULT_STROKE_TYPE:Ljavafx/scene/shape/StrokeType;

    .line 141
    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/shape/Shape;
    return-object v0

    .line 140
    .restart local v0    # "this":Ljavafx/scene/shape/Shape;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/Shape;->strokeAttributes:Ljavafx/scene/shape/Shape$StrokeAttributes;

    .line 141
    invoke-virtual {v1}, Ljavafx/scene/shape/Shape$StrokeAttributes;->getType()Ljavafx/scene/shape/StrokeType;

    move-result-object v1

    goto :goto_0
.end method

.method public final getStrokeWidth()D
    .locals 4

    .prologue
    .line 167
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/shape/Shape;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/shape/Shape;->strokeAttributes:Ljavafx/scene/shape/Shape$StrokeAttributes;

    if-nez v2, :cond_0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 168
    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Ljavafx/scene/shape/Shape;
    return-wide v1

    .line 167
    .restart local v1    # "this":Ljavafx/scene/shape/Shape;
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/shape/Shape;->strokeAttributes:Ljavafx/scene/shape/Shape$StrokeAttributes;

    .line 168
    invoke-virtual {v2}, Ljavafx/scene/shape/Shape$StrokeAttributes;->getWidth()D

    move-result-wide v2

    goto :goto_0
.end method

.method protected impl_computeContains(DD)Z
    .locals 11
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 874
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/Shape;
    move-wide v1, p1

    .local v1, "localX":D
    move-wide v3, p3

    .local v3, "localY":D
    move-object v5, v0

    move-wide v6, v1

    move-wide v8, v3

    move-object v10, v0

    invoke-virtual {v10}, Ljavafx/scene/shape/Shape;->impl_configShape()Lcom/sun/javafx/geom/Shape;

    move-result-object v10

    invoke-virtual/range {v5 .. v10}, Ljavafx/scene/shape/Shape;->computeShapeContains(DDLcom/sun/javafx/geom/Shape;)Z

    move-result v5

    move v0, v5

    .end local v0    # "this":Ljavafx/scene/shape/Shape;
    return v0
.end method

.method public impl_computeGeomBounds(Lcom/sun/javafx/geom/BaseBounds;Lcom/sun/javafx/geom/transform/BaseTransform;)Lcom/sun/javafx/geom/BaseBounds;
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 864
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/Shape;
    move-object v1, p1

    .local v1, "bounds":Lcom/sun/javafx/geom/BaseBounds;
    move-object v2, p2

    .local v2, "tx":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/scene/shape/Shape;->impl_configShape()Lcom/sun/javafx/geom/Shape;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Ljavafx/scene/shape/Shape;->computeShapeBounds(Lcom/sun/javafx/geom/BaseBounds;Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/javafx/geom/Shape;)Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Ljavafx/scene/shape/Shape;
    return-object v0
.end method

.method public abstract impl_configShape()Lcom/sun/javafx/geom/Shape;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method protected impl_createPeer()Lcom/sun/javafx/sg/prism/NGNode;
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 127
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/Shape;
    new-instance v1, Ljava/lang/AssertionError;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string v3, "Subclasses of Shape must implement impl_createPGNode"

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method protected impl_cssGetFillInitialValue()Ljavafx/scene/paint/Paint;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 559
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/Shape;
    sget-object v1, Ljavafx/scene/paint/Color;->BLACK:Ljavafx/scene/paint/Color;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/shape/Shape;
    return-object v0
.end method

.method protected impl_cssGetStrokeInitialValue()Ljavafx/scene/paint/Paint;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 571
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/Shape;
    const/4 v1, 0x0

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/shape/Shape;
    return-object v0
.end method

.method protected impl_markDirty(Lcom/sun/javafx/scene/DirtyBits;)V
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 937
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/Shape;
    move-object v1, p1

    .local v1, "dirtyBits":Lcom/sun/javafx/scene/DirtyBits;
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/shape/Shape;->shapeChangeListener:Ljava/lang/ref/Reference;

    if-eqz v3, :cond_1

    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/shape/Shape;->shapeChangeListener:Ljava/lang/ref/Reference;

    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Runnable;

    :goto_0
    move-object v2, v3

    .line 938
    .local v2, "listener":Ljava/lang/Runnable;
    move-object v3, v2

    if-eqz v3, :cond_0

    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/shape/Shape;->impl_isDirtyEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 939
    move-object v3, v2

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    .line 942
    :cond_0
    move-object v3, v0

    move-object v4, v1

    invoke-super {v3, v4}, Ljavafx/scene/Node;->impl_markDirty(Lcom/sun/javafx/scene/DirtyBits;)V

    .line 943
    return-void

    .line 937
    .end local v2    # "listener":Ljava/lang/Runnable;
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public impl_processMXNode(Lcom/sun/javafx/jmx/MXNodeAlgorithm;Lcom/sun/javafx/jmx/MXNodeAlgorithmContext;)Ljava/lang/Object;
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1514
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/Shape;
    move-object v1, p1

    .local v1, "alg":Lcom/sun/javafx/jmx/MXNodeAlgorithm;
    move-object v2, p2

    .local v2, "ctx":Lcom/sun/javafx/jmx/MXNodeAlgorithmContext;
    move-object v3, v1

    move-object v4, v0

    move-object v5, v2

    invoke-interface {v3, v4, v5}, Lcom/sun/javafx/jmx/MXNodeAlgorithm;->processLeafNode(Ljavafx/scene/Node;Lcom/sun/javafx/jmx/MXNodeAlgorithmContext;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Ljavafx/scene/shape/Shape;
    return-object v0
.end method

.method public impl_setShapeChangeListener(Ljava/lang/Runnable;)V
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 953
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/Shape;
    move-object v1, p1

    .local v1, "listener":Ljava/lang/Runnable;
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/shape/Shape;->shapeChangeListener:Ljava/lang/ref/Reference;

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/shape/Shape;->shapeChangeListener:Ljava/lang/ref/Reference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->clear()V

    .line 954
    :cond_0
    move-object v2, v0

    move-object v3, v1

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/ref/WeakReference;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v1

    invoke-direct {v4, v5}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    :goto_0
    iput-object v3, v2, Ljavafx/scene/shape/Shape;->shapeChangeListener:Ljava/lang/ref/Reference;

    .line 955
    return-void

    .line 954
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public impl_updatePeer()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 964
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/Shape;
    move-object v1, v0

    invoke-super {v1}, Ljavafx/scene/Node;->impl_updatePeer()V

    .line 965
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/shape/Shape;->updatePGShape()V

    .line 966
    return-void
.end method

.method public final isSmooth()Z
    .locals 2

    .prologue
    .line 513
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/Shape;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/Shape;->smooth:Ljavafx/beans/property/BooleanProperty;

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Ljavafx/scene/shape/Shape;
    return v0

    .restart local v0    # "this":Ljavafx/scene/shape/Shape;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/Shape;->smooth:Ljavafx/beans/property/BooleanProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/BooleanProperty;->get()Z

    move-result v1

    goto :goto_0
.end method

.method public final setFill(Ljavafx/scene/paint/Paint;)V
    .locals 4

    .prologue
    .line 369
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/Shape;
    move-object v1, p1

    .local v1, "value":Ljavafx/scene/paint/Paint;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/shape/Shape;->fillProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 370
    return-void
.end method

.method public final setSmooth(Z)V
    .locals 4

    .prologue
    .line 509
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/Shape;
    move v1, p1

    .local v1, "value":Z
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/shape/Shape;->smoothProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v2

    move v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/BooleanProperty;->set(Z)V

    .line 510
    return-void
.end method

.method public final setStroke(Ljavafx/scene/paint/Paint;)V
    .locals 4

    .prologue
    .line 434
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/Shape;
    move-object v1, p1

    .local v1, "value":Ljavafx/scene/paint/Paint;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/shape/Shape;->strokeProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 435
    return-void
.end method

.method public final setStrokeDashOffset(D)V
    .locals 7

    .prologue
    .line 265
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/Shape;
    move-wide v1, p1

    .local v1, "value":D
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/shape/Shape;->strokeDashOffsetProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v3

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    .line 266
    return-void
.end method

.method public final setStrokeLineCap(Ljavafx/scene/shape/StrokeLineCap;)V
    .locals 4

    .prologue
    .line 209
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/Shape;
    move-object v1, p1

    .local v1, "value":Ljavafx/scene/shape/StrokeLineCap;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/shape/Shape;->strokeLineCapProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 210
    return-void
.end method

.method public final setStrokeLineJoin(Ljavafx/scene/shape/StrokeLineJoin;)V
    .locals 4

    .prologue
    .line 182
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/Shape;
    move-object v1, p1

    .local v1, "value":Ljavafx/scene/shape/StrokeLineJoin;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/shape/Shape;->strokeLineJoinProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 183
    return-void
.end method

.method public final setStrokeMiterLimit(D)V
    .locals 7

    .prologue
    .line 235
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/Shape;
    move-wide v1, p1

    .local v1, "value":D
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/shape/Shape;->strokeMiterLimitProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v3

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    .line 236
    return-void
.end method

.method public final setStrokeType(Ljavafx/scene/shape/StrokeType;)V
    .locals 4

    .prologue
    .line 136
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/Shape;
    move-object v1, p1

    .local v1, "value":Ljavafx/scene/shape/StrokeType;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/shape/Shape;->strokeTypeProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 137
    return-void
.end method

.method public final setStrokeWidth(D)V
    .locals 7

    .prologue
    .line 163
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/Shape;
    move-wide v1, p1

    .local v1, "value":D
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/shape/Shape;->strokeWidthProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v3

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    .line 164
    return-void
.end method

.method public final smoothProperty()Ljavafx/beans/property/BooleanProperty;
    .locals 7

    .prologue
    .line 517
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/Shape;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/Shape;->smooth:Ljavafx/beans/property/BooleanProperty;

    if-nez v1, :cond_0

    .line 518
    move-object v1, v0

    new-instance v2, Ljavafx/scene/shape/Shape$4;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Ljavafx/scene/shape/Shape$4;-><init>(Ljavafx/scene/shape/Shape;Z)V

    iput-object v2, v1, Ljavafx/scene/shape/Shape;->smooth:Ljavafx/beans/property/BooleanProperty;

    .line 541
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/Shape;->smooth:Ljavafx/beans/property/BooleanProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/shape/Shape;
    return-object v0
.end method

.method public final strokeDashOffsetProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 2

    .prologue
    .line 291
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/Shape;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/shape/Shape;->getStrokeAttributes()Ljavafx/scene/shape/Shape$StrokeAttributes;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/scene/shape/Shape$StrokeAttributes;->dashOffsetProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/shape/Shape;
    return-object v0
.end method

.method public final strokeLineCapProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/scene/shape/StrokeLineCap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 231
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/Shape;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/shape/Shape;->getStrokeAttributes()Ljavafx/scene/shape/Shape$StrokeAttributes;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/scene/shape/Shape$StrokeAttributes;->lineCapProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/shape/Shape;
    return-object v0
.end method

.method public final strokeLineJoinProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/scene/shape/StrokeLineJoin;",
            ">;"
        }
    .end annotation

    .prologue
    .line 205
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/Shape;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/shape/Shape;->getStrokeAttributes()Ljavafx/scene/shape/Shape$StrokeAttributes;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/scene/shape/Shape$StrokeAttributes;->lineJoinProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/shape/Shape;
    return-object v0
.end method

.method public final strokeMiterLimitProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 2

    .prologue
    .line 261
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/Shape;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/shape/Shape;->getStrokeAttributes()Ljavafx/scene/shape/Shape$StrokeAttributes;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/scene/shape/Shape$StrokeAttributes;->miterLimitProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/shape/Shape;
    return-object v0
.end method

.method public final strokeProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/scene/paint/Paint;",
            ">;"
        }
    .end annotation

    .prologue
    .line 454
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/Shape;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/Shape;->stroke:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    .line 455
    move-object v1, v0

    new-instance v2, Ljavafx/scene/shape/Shape$3;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/shape/Shape$3;-><init>(Ljavafx/scene/shape/Shape;)V

    iput-object v2, v1, Ljavafx/scene/shape/Shape;->stroke:Ljavafx/beans/property/ObjectProperty;

    .line 496
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/Shape;->stroke:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/shape/Shape;
    return-object v0
.end method

.method public final strokeTypeProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/scene/shape/StrokeType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 159
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/Shape;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/shape/Shape;->getStrokeAttributes()Ljavafx/scene/shape/Shape$StrokeAttributes;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/scene/shape/Shape$StrokeAttributes;->typeProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/shape/Shape;
    return-object v0
.end method

.method public final strokeWidthProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 2

    .prologue
    .line 178
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/Shape;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/shape/Shape;->getStrokeAttributes()Ljavafx/scene/shape/Shape$StrokeAttributes;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/scene/shape/Shape$StrokeAttributes;->widthProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/shape/Shape;
    return-object v0
.end method
