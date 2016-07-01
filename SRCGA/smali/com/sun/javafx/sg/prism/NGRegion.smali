.class public Lcom/sun/javafx/sg/prism/NGRegion;
.super Lcom/sun/javafx/sg/prism/NGGroup;
.source "NGRegion.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final CACHE_SLICE_H:I = 0x2

.field private static final CACHE_SLICE_V:I = 0x1

.field private static final SCRATCH_AFFINE:Lcom/sun/javafx/geom/transform/Affine2D;

.field private static final TEMP_RECT:Lcom/sun/javafx/geom/Rectangle;

.field private static imageCacheMap:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Lcom/sun/glass/ui/Screen;",
            "Lcom/sun/javafx/sg/prism/RegionImageCache;",
            ">;"
        }
    .end annotation
.end field

.field private static final nopEffect:Lcom/sun/scenario/effect/Offset;


# instance fields
.field private background:Ljavafx/scene/layout/Background;

.field private backgroundInsets:Ljavafx/geometry/Insets;

.field private border:Ljavafx/scene/layout/Border;

.field private cacheKey:Ljava/lang/Integer;

.field private cacheMode:I

.field private cacheShape:Z

.field private centerShape:Z

.field private height:F

.field private ngShape:Lcom/sun/javafx/sg/prism/NGShape;

.field private nopEffectFilter:Lcom/sun/javafx/sg/prism/EffectFilter;

.field private normalizedFillCorners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljavafx/scene/layout/CornerRadii;",
            ">;"
        }
    .end annotation
.end field

.field private normalizedStrokeCorners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljavafx/scene/layout/CornerRadii;",
            ">;"
        }
    .end annotation
.end field

.field private opaqueBottom:F

.field private opaqueLeft:F

.field private opaqueRight:F

.field private opaqueTop:F

.field private scaleShape:Z

.field private shape:Lcom/sun/javafx/geom/Shape;

.field private width:F


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 81
    const-class v0, Lcom/sun/javafx/sg/prism/NGRegion;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/sun/javafx/sg/prism/NGRegion;->$assertionsDisabled:Z

    .line 87
    new-instance v0, Lcom/sun/javafx/geom/transform/Affine2D;

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    invoke-direct {v1}, Lcom/sun/javafx/geom/transform/Affine2D;-><init>()V

    sput-object v0, Lcom/sun/javafx/sg/prism/NGRegion;->SCRATCH_AFFINE:Lcom/sun/javafx/geom/transform/Affine2D;

    .line 94
    new-instance v0, Lcom/sun/javafx/geom/Rectangle;

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    invoke-direct {v1}, Lcom/sun/javafx/geom/Rectangle;-><init>()V

    sput-object v0, Lcom/sun/javafx/sg/prism/NGRegion;->TEMP_RECT:Lcom/sun/javafx/geom/Rectangle;

    .line 101
    new-instance v0, Ljava/util/WeakHashMap;

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    invoke-direct {v1}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/sun/javafx/sg/prism/NGRegion;->imageCacheMap:Ljava/util/WeakHashMap;

    .line 208
    new-instance v0, Lcom/sun/scenario/effect/Offset;

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lcom/sun/scenario/effect/Offset;-><init>(IILcom/sun/scenario/effect/Effect;)V

    sput-object v0, Lcom/sun/javafx/sg/prism/NGRegion;->nopEffect:Lcom/sun/scenario/effect/Offset;

    return-void

    .line 81
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 81
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGRegion;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/sg/prism/NGGroup;-><init>()V

    .line 118
    move-object v1, v0

    sget-object v2, Ljavafx/scene/layout/Background;->EMPTY:Ljavafx/scene/layout/Background;

    iput-object v2, v1, Lcom/sun/javafx/sg/prism/NGRegion;->background:Ljavafx/scene/layout/Background;

    .line 124
    move-object v1, v0

    sget-object v2, Ljavafx/geometry/Insets;->EMPTY:Ljavafx/geometry/Insets;

    iput-object v2, v1, Lcom/sun/javafx/sg/prism/NGRegion;->backgroundInsets:Ljavafx/geometry/Insets;

    .line 129
    move-object v1, v0

    sget-object v2, Ljavafx/scene/layout/Border;->EMPTY:Ljavafx/scene/layout/Border;

    iput-object v2, v1, Lcom/sun/javafx/sg/prism/NGRegion;->border:Ljavafx/scene/layout/Border;

    .line 158
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/sun/javafx/sg/prism/NGRegion;->scaleShape:Z

    .line 164
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/sun/javafx/sg/prism/NGRegion;->centerShape:Z

    .line 169
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/sun/javafx/sg/prism/NGRegion;->cacheShape:Z

    .line 175
    move-object v1, v0

    const/high16 v2, 0x7fc00000    # NaNf

    iput v2, v1, Lcom/sun/javafx/sg/prism/NGRegion;->opaqueTop:F

    move-object v1, v0

    const/high16 v2, 0x7fc00000    # NaNf

    iput v2, v1, Lcom/sun/javafx/sg/prism/NGRegion;->opaqueRight:F

    move-object v1, v0

    const/high16 v2, 0x7fc00000    # NaNf

    iput v2, v1, Lcom/sun/javafx/sg/prism/NGRegion;->opaqueBottom:F

    move-object v1, v0

    const/high16 v2, 0x7fc00000    # NaNf

    iput v2, v1, Lcom/sun/javafx/sg/prism/NGRegion;->opaqueLeft:F

    return-void
.end method

.method private createPath(FFFFFFLjavafx/scene/layout/CornerRadii;)Lcom/sun/javafx/geom/Path2D;
    .locals 21

    .prologue
    .line 1721
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGRegion;
    move/from16 v1, p1

    .local v1, "width":F
    move/from16 v2, p2

    .local v2, "height":F
    move/from16 v3, p3

    .local v3, "t":F
    move/from16 v4, p4

    .local v4, "l":F
    move/from16 v5, p5

    .local v5, "bo":F
    move/from16 v6, p6

    .local v6, "ro":F
    move-object/from16 v7, p7

    .local v7, "radii":Ljavafx/scene/layout/CornerRadii;
    move v11, v1

    move v12, v6

    sub-float/2addr v11, v12

    move v8, v11

    .line 1722
    .local v8, "r":F
    move v11, v2

    move v12, v5

    sub-float/2addr v11, v12

    move v9, v11

    .line 1723
    .local v9, "b":F
    new-instance v11, Lcom/sun/javafx/geom/Path2D;

    move-object/from16 v20, v11

    move-object/from16 v11, v20

    move-object/from16 v12, v20

    invoke-direct {v12}, Lcom/sun/javafx/geom/Path2D;-><init>()V

    move-object v10, v11

    .line 1724
    .local v10, "path":Lcom/sun/javafx/geom/Path2D;
    move-object v11, v0

    move-object v12, v10

    move-object v13, v7

    move v14, v4

    move v15, v3

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/high16 v18, 0x3f800000    # 1.0f

    const/16 v19, 0x1

    invoke-direct/range {v11 .. v19}, Lcom/sun/javafx/sg/prism/NGRegion;->doCorner(Lcom/sun/javafx/geom/Path2D;Ljavafx/scene/layout/CornerRadii;FFIFFZ)V

    .line 1725
    move-object v11, v0

    move-object v12, v10

    move-object v13, v7

    move v14, v8

    move v15, v3

    const/16 v16, 0x1

    const/16 v17, 0x0

    const/high16 v18, 0x3f800000    # 1.0f

    const/16 v19, 0x0

    invoke-direct/range {v11 .. v19}, Lcom/sun/javafx/sg/prism/NGRegion;->doCorner(Lcom/sun/javafx/geom/Path2D;Ljavafx/scene/layout/CornerRadii;FFIFFZ)V

    .line 1726
    move-object v11, v0

    move-object v12, v10

    move-object v13, v7

    move v14, v8

    move v15, v9

    const/16 v16, 0x2

    const/16 v17, 0x0

    const/high16 v18, 0x3f800000    # 1.0f

    const/16 v19, 0x0

    invoke-direct/range {v11 .. v19}, Lcom/sun/javafx/sg/prism/NGRegion;->doCorner(Lcom/sun/javafx/geom/Path2D;Ljavafx/scene/layout/CornerRadii;FFIFFZ)V

    .line 1727
    move-object v11, v0

    move-object v12, v10

    move-object v13, v7

    move v14, v4

    move v15, v9

    const/16 v16, 0x3

    const/16 v17, 0x0

    const/high16 v18, 0x3f800000    # 1.0f

    const/16 v19, 0x0

    invoke-direct/range {v11 .. v19}, Lcom/sun/javafx/sg/prism/NGRegion;->doCorner(Lcom/sun/javafx/geom/Path2D;Ljavafx/scene/layout/CornerRadii;FFIFFZ)V

    .line 1728
    move-object v11, v10

    invoke-virtual {v11}, Lcom/sun/javafx/geom/Path2D;->closePath()V

    .line 1729
    move-object v11, v10

    move-object v0, v11

    .end local v0    # "this":Lcom/sun/javafx/sg/prism/NGRegion;
    return-object v0
.end method

.method private createPaths(FFFFLjavafx/scene/layout/CornerRadii;)[Lcom/sun/javafx/geom/Path2D;
    .locals 19

    .prologue
    .line 1749
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGRegion;
    move/from16 v1, p1

    .local v1, "t":F
    move/from16 v2, p2

    .local v2, "l":F
    move/from16 v3, p3

    .local v3, "bo":F
    move/from16 v4, p4

    .local v4, "ro":F
    move-object/from16 v5, p5

    .local v5, "radii":Ljavafx/scene/layout/CornerRadii;
    move-object v8, v0

    iget v8, v8, Lcom/sun/javafx/sg/prism/NGRegion;->width:F

    move v9, v4

    sub-float/2addr v8, v9

    move v6, v8

    .line 1750
    .local v6, "r":F
    move-object v8, v0

    iget v8, v8, Lcom/sun/javafx/sg/prism/NGRegion;->height:F

    move v9, v3

    sub-float/2addr v8, v9

    move v7, v8

    .line 1751
    .local v7, "b":F
    const/4 v8, 0x4

    new-array v8, v8, [Lcom/sun/javafx/geom/Path2D;

    move-object/from16 v18, v8

    move-object/from16 v8, v18

    move-object/from16 v9, v18

    const/4 v10, 0x0

    move-object v11, v0

    move-object v12, v5

    move v13, v2

    move v14, v1

    move v15, v6

    move/from16 v16, v1

    const/16 v17, 0x0

    .line 1752
    invoke-direct/range {v11 .. v17}, Lcom/sun/javafx/sg/prism/NGRegion;->makeRoundedEdge(Ljavafx/scene/layout/CornerRadii;FFFFI)Lcom/sun/javafx/geom/Path2D;

    move-result-object v11

    aput-object v11, v9, v10

    move-object/from16 v18, v8

    move-object/from16 v8, v18

    move-object/from16 v9, v18

    const/4 v10, 0x1

    move-object v11, v0

    move-object v12, v5

    move v13, v6

    move v14, v1

    move v15, v6

    move/from16 v16, v7

    const/16 v17, 0x1

    .line 1753
    invoke-direct/range {v11 .. v17}, Lcom/sun/javafx/sg/prism/NGRegion;->makeRoundedEdge(Ljavafx/scene/layout/CornerRadii;FFFFI)Lcom/sun/javafx/geom/Path2D;

    move-result-object v11

    aput-object v11, v9, v10

    move-object/from16 v18, v8

    move-object/from16 v8, v18

    move-object/from16 v9, v18

    const/4 v10, 0x2

    move-object v11, v0

    move-object v12, v5

    move v13, v6

    move v14, v7

    move v15, v2

    move/from16 v16, v7

    const/16 v17, 0x2

    .line 1754
    invoke-direct/range {v11 .. v17}, Lcom/sun/javafx/sg/prism/NGRegion;->makeRoundedEdge(Ljavafx/scene/layout/CornerRadii;FFFFI)Lcom/sun/javafx/geom/Path2D;

    move-result-object v11

    aput-object v11, v9, v10

    move-object/from16 v18, v8

    move-object/from16 v8, v18

    move-object/from16 v9, v18

    const/4 v10, 0x3

    move-object v11, v0

    move-object v12, v5

    move v13, v2

    move v14, v7

    move v15, v2

    move/from16 v16, v1

    const/16 v17, 0x3

    .line 1755
    invoke-direct/range {v11 .. v17}, Lcom/sun/javafx/sg/prism/NGRegion;->makeRoundedEdge(Ljavafx/scene/layout/CornerRadii;FFFFI)Lcom/sun/javafx/geom/Path2D;

    move-result-object v11

    aput-object v11, v9, v10

    move-object v0, v8

    .end local v0    # "this":Lcom/sun/javafx/sg/prism/NGRegion;
    return-object v0
.end method

.method private createStroke(Ljavafx/scene/layout/BorderStrokeStyle;DDZ)Lcom/sun/prism/BasicStroke;
    .locals 38

    .prologue
    .line 1485
    move-object/from16 v2, p0

    .local v2, "this":Lcom/sun/javafx/sg/prism/NGRegion;
    move-object/from16 v3, p1

    .local v3, "sb":Ljavafx/scene/layout/BorderStrokeStyle;
    move-wide/from16 v4, p2

    .local v4, "strokeWidth":D
    move-wide/from16 v6, p4

    .local v6, "lineLength":D
    move/from16 v8, p6

    .local v8, "forceCentered":Z
    move-object/from16 v28, v3

    invoke-virtual/range {v28 .. v28}, Ljavafx/scene/layout/BorderStrokeStyle;->getLineCap()Ljavafx/scene/shape/StrokeLineCap;

    move-result-object v28

    sget-object v29, Ljavafx/scene/shape/StrokeLineCap;->BUTT:Ljavafx/scene/shape/StrokeLineCap;

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    if-ne v0, v1, :cond_0

    .line 1486
    const/16 v28, 0x0

    move/from16 v9, v28

    .line 1494
    .local v9, "cap":I
    :goto_0
    move-object/from16 v28, v3

    invoke-virtual/range {v28 .. v28}, Ljavafx/scene/layout/BorderStrokeStyle;->getLineJoin()Ljavafx/scene/shape/StrokeLineJoin;

    move-result-object v28

    sget-object v29, Ljavafx/scene/shape/StrokeLineJoin;->BEVEL:Ljavafx/scene/shape/StrokeLineJoin;

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    if-ne v0, v1, :cond_2

    .line 1495
    const/16 v28, 0x2

    move/from16 v10, v28

    .line 1503
    .local v10, "join":I
    :goto_1
    move/from16 v28, v8

    if-eqz v28, :cond_4

    .line 1504
    const/16 v28, 0x0

    move/from16 v11, v28

    .line 1527
    .local v11, "type":I
    :goto_2
    move-object/from16 v28, v3

    sget-object v29, Ljavafx/scene/layout/BorderStrokeStyle;->NONE:Ljavafx/scene/layout/BorderStrokeStyle;

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    if-ne v0, v1, :cond_6

    .line 1528
    new-instance v28, Ljava/lang/AssertionError;

    move-object/from16 v37, v28

    move-object/from16 v28, v37

    move-object/from16 v29, v37

    const-string v30, "Should never have been asked to draw a border with NONE"

    invoke-direct/range {v29 .. v30}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v28

    .line 1487
    .end local v9    # "cap":I
    .end local v10    # "join":I
    .end local v11    # "type":I
    :cond_0
    move-object/from16 v28, v3

    invoke-virtual/range {v28 .. v28}, Ljavafx/scene/layout/BorderStrokeStyle;->getLineCap()Ljavafx/scene/shape/StrokeLineCap;

    move-result-object v28

    sget-object v29, Ljavafx/scene/shape/StrokeLineCap;->SQUARE:Ljavafx/scene/shape/StrokeLineCap;

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    if-ne v0, v1, :cond_1

    .line 1488
    const/16 v28, 0x2

    move/from16 v9, v28

    .restart local v9    # "cap":I
    goto :goto_0

    .line 1490
    .end local v9    # "cap":I
    :cond_1
    const/16 v28, 0x1

    move/from16 v9, v28

    .restart local v9    # "cap":I
    goto :goto_0

    .line 1496
    :cond_2
    move-object/from16 v28, v3

    invoke-virtual/range {v28 .. v28}, Ljavafx/scene/layout/BorderStrokeStyle;->getLineJoin()Ljavafx/scene/shape/StrokeLineJoin;

    move-result-object v28

    sget-object v29, Ljavafx/scene/shape/StrokeLineJoin;->MITER:Ljavafx/scene/shape/StrokeLineJoin;

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    if-ne v0, v1, :cond_3

    .line 1497
    const/16 v28, 0x0

    move/from16 v10, v28

    .restart local v10    # "join":I
    goto :goto_1

    .line 1499
    .end local v10    # "join":I
    :cond_3
    const/16 v28, 0x1

    move/from16 v10, v28

    .restart local v10    # "join":I
    goto :goto_1

    .line 1505
    :cond_4
    move-object/from16 v28, v2

    move-object/from16 v0, v28

    iget-boolean v0, v0, Lcom/sun/javafx/sg/prism/NGRegion;->scaleShape:Z

    move/from16 v28, v0

    if-eqz v28, :cond_5

    .line 1510
    const/16 v28, 0x1

    move/from16 v11, v28

    .restart local v11    # "type":I
    goto :goto_2

    .line 1512
    .end local v11    # "type":I
    :cond_5
    sget-object v28, Lcom/sun/javafx/sg/prism/NGRegion$1;->$SwitchMap$javafx$scene$shape$StrokeType:[I

    move-object/from16 v29, v3

    invoke-virtual/range {v29 .. v29}, Ljavafx/scene/layout/BorderStrokeStyle;->getType()Ljavafx/scene/shape/StrokeType;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljavafx/scene/shape/StrokeType;->ordinal()I

    move-result v29

    aget v28, v28, v29

    packed-switch v28, :pswitch_data_0

    .line 1521
    const/16 v28, 0x0

    move/from16 v11, v28

    .restart local v11    # "type":I
    goto :goto_2

    .line 1514
    .end local v11    # "type":I
    :pswitch_0
    const/16 v28, 0x1

    move/from16 v11, v28

    .line 1515
    .restart local v11    # "type":I
    goto :goto_2

    .line 1517
    .end local v11    # "type":I
    :pswitch_1
    const/16 v28, 0x2

    move/from16 v11, v28

    .line 1518
    .restart local v11    # "type":I
    goto :goto_2

    .line 1529
    :cond_6
    move-wide/from16 v28, v4

    const-wide/16 v30, 0x0

    cmpg-double v28, v28, v30

    if-gtz v28, :cond_7

    .line 1540
    new-instance v28, Lcom/sun/prism/BasicStroke;

    move-object/from16 v37, v28

    move-object/from16 v28, v37

    move-object/from16 v29, v37

    move-wide/from16 v30, v4

    move-wide/from16 v0, v30

    double-to-float v0, v0

    move/from16 v30, v0

    move/from16 v31, v9

    move/from16 v32, v10

    move-object/from16 v33, v3

    .line 1541
    invoke-virtual/range {v33 .. v33}, Ljavafx/scene/layout/BorderStrokeStyle;->getMiterLimit()D

    move-result-wide v33

    move-wide/from16 v0, v33

    double-to-float v0, v0

    move/from16 v33, v0

    invoke-direct/range {v29 .. v33}, Lcom/sun/prism/BasicStroke;-><init>(FIIF)V

    move-object/from16 v12, v28

    .line 1604
    .local v12, "bs":Lcom/sun/prism/BasicStroke;
    :goto_3
    move-object/from16 v28, v12

    move-object/from16 v2, v28

    .end local v2    # "this":Lcom/sun/javafx/sg/prism/NGRegion;
    return-object v2

    .line 1542
    .end local v12    # "bs":Lcom/sun/prism/BasicStroke;
    .restart local v2    # "this":Lcom/sun/javafx/sg/prism/NGRegion;
    :cond_7
    move-object/from16 v28, v3

    invoke-virtual/range {v28 .. v28}, Ljavafx/scene/layout/BorderStrokeStyle;->getDashArray()Ljava/util/List;

    move-result-object v28

    invoke-interface/range {v28 .. v28}, Ljava/util/List;->size()I

    move-result v28

    if-lez v28, :cond_d

    .line 1543
    move-object/from16 v28, v3

    invoke-virtual/range {v28 .. v28}, Ljavafx/scene/layout/BorderStrokeStyle;->getDashArray()Ljava/util/List;

    move-result-object v28

    move-object/from16 v13, v28

    .line 1546
    .local v13, "dashArray":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    move-object/from16 v28, v13

    sget-object v29, Ljavafx/scene/layout/BorderStrokeStyle;->DOTTED:Ljavafx/scene/layout/BorderStrokeStyle;

    invoke-virtual/range {v29 .. v29}, Ljavafx/scene/layout/BorderStrokeStyle;->getDashArray()Ljava/util/List;

    move-result-object v29

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    if-ne v0, v1, :cond_9

    .line 1551
    move-wide/from16 v28, v6

    const-wide/16 v30, 0x0

    cmpl-double v28, v28, v30

    if-lez v28, :cond_8

    .line 1555
    move-wide/from16 v28, v6

    move-wide/from16 v30, v4

    const-wide/high16 v32, 0x4000000000000000L    # 2.0

    mul-double v30, v30, v32

    rem-double v28, v28, v30

    move-wide/from16 v16, v28

    .line 1556
    .local v16, "remainder":D
    move-wide/from16 v28, v6

    move-wide/from16 v30, v4

    const-wide/high16 v32, 0x4000000000000000L    # 2.0

    mul-double v30, v30, v32

    div-double v28, v28, v30

    move-wide/from16 v18, v28

    .line 1557
    .local v18, "numSpaces":D
    move-wide/from16 v28, v4

    const-wide/high16 v30, 0x4000000000000000L    # 2.0

    mul-double v28, v28, v30

    move-wide/from16 v30, v16

    move-wide/from16 v32, v18

    div-double v30, v30, v32

    add-double v28, v28, v30

    move-wide/from16 v20, v28

    .line 1558
    .local v20, "spaceWidth":D
    const/16 v28, 0x2

    move/from16 v0, v28

    new-array v0, v0, [D

    move-object/from16 v28, v0

    move-object/from16 v37, v28

    move-object/from16 v28, v37

    move-object/from16 v29, v37

    const/16 v30, 0x0

    const-wide/16 v31, 0x0

    aput-wide v31, v29, v30

    move-object/from16 v37, v28

    move-object/from16 v28, v37

    move-object/from16 v29, v37

    const/16 v30, 0x1

    move-wide/from16 v31, v20

    aput-wide v31, v29, v30

    move-object/from16 v14, v28

    .line 1559
    .local v14, "array":[D
    const/16 v28, 0x0

    move/from16 v15, v28

    .line 1596
    .end local v16    # "remainder":D
    .end local v18    # "numSpaces":D
    .end local v20    # "spaceWidth":D
    .local v15, "dashOffset":F
    :goto_4
    new-instance v28, Lcom/sun/prism/BasicStroke;

    move-object/from16 v37, v28

    move-object/from16 v28, v37

    move-object/from16 v29, v37

    move/from16 v30, v11

    move-wide/from16 v31, v4

    move-wide/from16 v0, v31

    double-to-float v0, v0

    move/from16 v31, v0

    move/from16 v32, v9

    move/from16 v33, v10

    move-object/from16 v34, v3

    .line 1597
    invoke-virtual/range {v34 .. v34}, Ljavafx/scene/layout/BorderStrokeStyle;->getMiterLimit()D

    move-result-wide v34

    move-wide/from16 v0, v34

    double-to-float v0, v0

    move/from16 v34, v0

    move-object/from16 v35, v14

    move/from16 v36, v15

    invoke-direct/range {v29 .. v36}, Lcom/sun/prism/BasicStroke;-><init>(IFIIF[DF)V

    move-object/from16 v12, v28

    .line 1599
    .restart local v12    # "bs":Lcom/sun/prism/BasicStroke;
    goto/16 :goto_3

    .line 1561
    .end local v12    # "bs":Lcom/sun/prism/BasicStroke;
    .end local v14    # "array":[D
    .end local v15    # "dashOffset":F
    :cond_8
    const/16 v28, 0x2

    move/from16 v0, v28

    new-array v0, v0, [D

    move-object/from16 v28, v0

    move-object/from16 v37, v28

    move-object/from16 v28, v37

    move-object/from16 v29, v37

    const/16 v30, 0x0

    const-wide/16 v31, 0x0

    aput-wide v31, v29, v30

    move-object/from16 v37, v28

    move-object/from16 v28, v37

    move-object/from16 v29, v37

    const/16 v30, 0x1

    move-wide/from16 v31, v4

    const-wide/high16 v33, 0x4000000000000000L    # 2.0

    mul-double v31, v31, v33

    aput-wide v31, v29, v30

    move-object/from16 v14, v28

    .line 1562
    .restart local v14    # "array":[D
    const/16 v28, 0x0

    move/from16 v15, v28

    .restart local v15    # "dashOffset":F
    goto :goto_4

    .line 1564
    .end local v14    # "array":[D
    .end local v15    # "dashOffset":F
    :cond_9
    move-object/from16 v28, v13

    sget-object v29, Ljavafx/scene/layout/BorderStrokeStyle;->DASHED:Ljavafx/scene/layout/BorderStrokeStyle;

    invoke-virtual/range {v29 .. v29}, Ljavafx/scene/layout/BorderStrokeStyle;->getDashArray()Ljava/util/List;

    move-result-object v29

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    if-ne v0, v1, :cond_b

    .line 1569
    move-wide/from16 v28, v6

    const-wide/16 v30, 0x0

    cmpl-double v28, v28, v30

    if-lez v28, :cond_a

    .line 1573
    move-wide/from16 v28, v4

    const-wide/high16 v30, 0x4000000000000000L    # 2.0

    mul-double v28, v28, v30

    move-wide/from16 v16, v28

    .line 1574
    .local v16, "dashLength":D
    move-wide/from16 v28, v4

    const-wide v30, 0x3ff6666666666666L    # 1.4

    mul-double v28, v28, v30

    move-wide/from16 v18, v28

    .line 1575
    .local v18, "gapLength":D
    move-wide/from16 v28, v16

    move-wide/from16 v30, v18

    add-double v28, v28, v30

    move-wide/from16 v20, v28

    .line 1576
    .local v20, "segmentLength":D
    move-wide/from16 v28, v6

    move-wide/from16 v30, v20

    div-double v28, v28, v30

    move-wide/from16 v22, v28

    .line 1577
    .local v22, "divided":D
    move-wide/from16 v28, v22

    move-wide/from16 v0, v28

    double-to-int v0, v0

    move/from16 v28, v0

    move/from16 v0, v28

    int-to-double v0, v0

    move-wide/from16 v28, v0

    move-wide/from16 v24, v28

    .line 1578
    .local v24, "numSegments":D
    move-wide/from16 v28, v24

    move-wide/from16 v30, v16

    mul-double v28, v28, v30

    move-wide/from16 v26, v28

    .line 1579
    .local v26, "dashCumulative":D
    move-wide/from16 v28, v6

    move-wide/from16 v30, v26

    sub-double v28, v28, v30

    move-wide/from16 v30, v24

    div-double v28, v28, v30

    move-wide/from16 v18, v28

    .line 1580
    const/16 v28, 0x2

    move/from16 v0, v28

    new-array v0, v0, [D

    move-object/from16 v28, v0

    move-object/from16 v37, v28

    move-object/from16 v28, v37

    move-object/from16 v29, v37

    const/16 v30, 0x0

    move-wide/from16 v31, v16

    aput-wide v31, v29, v30

    move-object/from16 v37, v28

    move-object/from16 v28, v37

    move-object/from16 v29, v37

    const/16 v30, 0x1

    move-wide/from16 v31, v18

    aput-wide v31, v29, v30

    move-object/from16 v14, v28

    .line 1581
    .restart local v14    # "array":[D
    move-wide/from16 v28, v16

    const-wide v30, 0x3fe3333333333333L    # 0.6

    mul-double v28, v28, v30

    move-wide/from16 v0, v28

    double-to-float v0, v0

    move/from16 v28, v0

    move/from16 v15, v28

    .line 1582
    .restart local v15    # "dashOffset":F
    goto/16 :goto_4

    .line 1583
    .end local v14    # "array":[D
    .end local v15    # "dashOffset":F
    .end local v16    # "dashLength":D
    .end local v18    # "gapLength":D
    .end local v20    # "segmentLength":D
    .end local v22    # "divided":D
    .end local v24    # "numSegments":D
    .end local v26    # "dashCumulative":D
    :cond_a
    const/16 v28, 0x2

    move/from16 v0, v28

    new-array v0, v0, [D

    move-object/from16 v28, v0

    move-object/from16 v37, v28

    move-object/from16 v28, v37

    move-object/from16 v29, v37

    const/16 v30, 0x0

    const-wide/high16 v31, 0x4000000000000000L    # 2.0

    move-wide/from16 v33, v4

    mul-double v31, v31, v33

    aput-wide v31, v29, v30

    move-object/from16 v37, v28

    move-object/from16 v28, v37

    move-object/from16 v29, v37

    const/16 v30, 0x1

    const-wide v31, 0x3ff6666666666666L    # 1.4

    move-wide/from16 v33, v4

    mul-double v31, v31, v33

    aput-wide v31, v29, v30

    move-object/from16 v14, v28

    .line 1584
    .restart local v14    # "array":[D
    const/16 v28, 0x0

    move/from16 v15, v28

    .restart local v15    # "dashOffset":F
    goto/16 :goto_4

    .line 1589
    .end local v14    # "array":[D
    .end local v15    # "dashOffset":F
    :cond_b
    move-object/from16 v28, v13

    invoke-interface/range {v28 .. v28}, Ljava/util/List;->size()I

    move-result v28

    move/from16 v0, v28

    new-array v0, v0, [D

    move-object/from16 v28, v0

    move-object/from16 v14, v28

    .line 1590
    .restart local v14    # "array":[D
    const/16 v28, 0x0

    move/from16 v16, v28

    .local v16, "i":I
    :goto_5
    move/from16 v28, v16

    move-object/from16 v29, v14

    move-object/from16 v0, v29

    array-length v0, v0

    move/from16 v29, v0

    move/from16 v0, v28

    move/from16 v1, v29

    if-ge v0, v1, :cond_c

    .line 1591
    move-object/from16 v28, v14

    move/from16 v29, v16

    move-object/from16 v30, v13

    move/from16 v31, v16

    invoke-interface/range {v30 .. v31}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Ljava/lang/Double;

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v30

    aput-wide v30, v28, v29

    .line 1590
    add-int/lit8 v16, v16, 0x1

    goto :goto_5

    .line 1593
    :cond_c
    move-object/from16 v28, v3

    invoke-virtual/range {v28 .. v28}, Ljavafx/scene/layout/BorderStrokeStyle;->getDashOffset()D

    move-result-wide v28

    move-wide/from16 v0, v28

    double-to-float v0, v0

    move/from16 v28, v0

    move/from16 v15, v28

    .restart local v15    # "dashOffset":F
    goto/16 :goto_4

    .line 1600
    .end local v13    # "dashArray":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    .end local v14    # "array":[D
    .end local v15    # "dashOffset":F
    .end local v16    # "i":I
    :cond_d
    new-instance v28, Lcom/sun/prism/BasicStroke;

    move-object/from16 v37, v28

    move-object/from16 v28, v37

    move-object/from16 v29, v37

    move/from16 v30, v11

    move-wide/from16 v31, v4

    move-wide/from16 v0, v31

    double-to-float v0, v0

    move/from16 v31, v0

    move/from16 v32, v9

    move/from16 v33, v10

    move-object/from16 v34, v3

    .line 1601
    invoke-virtual/range {v34 .. v34}, Ljavafx/scene/layout/BorderStrokeStyle;->getMiterLimit()D

    move-result-wide v34

    move-wide/from16 v0, v34

    double-to-float v0, v0

    move/from16 v34, v0

    invoke-direct/range {v29 .. v34}, Lcom/sun/prism/BasicStroke;-><init>(IFIIF)V

    move-object/from16 v12, v28

    .restart local v12    # "bs":Lcom/sun/prism/BasicStroke;
    goto/16 :goto_3

    .line 1512
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private doCorner(Lcom/sun/javafx/geom/Path2D;Ljavafx/scene/layout/CornerRadii;FFIFFZ)V
    .locals 28

    .prologue
    .line 1677
    move-object/from16 v3, p0

    .local v3, "this":Lcom/sun/javafx/sg/prism/NGRegion;
    move-object/from16 v4, p1

    .local v4, "path":Lcom/sun/javafx/geom/Path2D;
    move-object/from16 v5, p2

    .local v5, "radii":Ljavafx/scene/layout/CornerRadii;
    move/from16 v6, p3

    .local v6, "x":F
    move/from16 v7, p4

    .local v7, "y":F
    move/from16 v8, p5

    .local v8, "quadrant":I
    move/from16 v9, p6

    .local v9, "tstart":F
    move/from16 v10, p7

    .local v10, "tend":F
    move/from16 v11, p8

    .local v11, "newPath":Z
    move/from16 v18, v8

    const/16 v19, 0x3

    and-int/lit8 v18, v18, 0x3

    packed-switch v18, :pswitch_data_0

    .line 1702
    .line 1714
    :goto_0
    return-void

    .line 1679
    :pswitch_0
    move-object/from16 v18, v5

    invoke-virtual/range {v18 .. v18}, Ljavafx/scene/layout/CornerRadii;->getTopLeftHorizontalRadius()D

    move-result-wide v18

    move-wide/from16 v0, v18

    double-to-float v0, v0

    move/from16 v18, v0

    move/from16 v16, v18

    .line 1680
    .local v16, "hr":F
    move-object/from16 v18, v5

    invoke-virtual/range {v18 .. v18}, Ljavafx/scene/layout/CornerRadii;->getTopLeftVerticalRadius()D

    move-result-wide v18

    move-wide/from16 v0, v18

    double-to-float v0, v0

    move/from16 v18, v0

    move/from16 v17, v18

    .line 1682
    .local v17, "vr":F
    const/16 v18, 0x0

    move/from16 v12, v18

    .local v12, "dx0":F
    move/from16 v18, v17

    move/from16 v13, v18

    .local v13, "dy0":F
    move/from16 v18, v16

    move/from16 v14, v18

    .local v14, "dx1":F
    const/16 v18, 0x0

    move/from16 v15, v18

    .line 1704
    .local v15, "dy1":F
    :goto_1
    move/from16 v18, v16

    const/16 v19, 0x0

    cmpl-float v18, v18, v19

    if-lez v18, :cond_1

    move/from16 v18, v17

    const/16 v19, 0x0

    cmpl-float v18, v18, v19

    if-lez v18, :cond_1

    .line 1705
    move-object/from16 v18, v4

    move/from16 v19, v6

    move/from16 v20, v12

    add-float v19, v19, v20

    move/from16 v20, v7

    move/from16 v21, v13

    add-float v20, v20, v21

    move/from16 v21, v6

    move/from16 v22, v7

    move/from16 v23, v6

    move/from16 v24, v14

    add-float v23, v23, v24

    move/from16 v24, v7

    move/from16 v25, v15

    add-float v24, v24, v25

    move/from16 v25, v9

    move/from16 v26, v10

    move/from16 v27, v11

    if-eqz v27, :cond_0

    sget-object v27, Lcom/sun/javafx/geom/Path2D$CornerPrefix;->MOVE_THEN_CORNER:Lcom/sun/javafx/geom/Path2D$CornerPrefix;

    :goto_2
    invoke-virtual/range {v18 .. v27}, Lcom/sun/javafx/geom/Path2D;->appendOvalQuadrant(FFFFFFFFLcom/sun/javafx/geom/Path2D$CornerPrefix;)V

    .line 1714
    :goto_3
    goto :goto_0

    .line 1685
    .end local v12    # "dx0":F
    .end local v13    # "dy0":F
    .end local v14    # "dx1":F
    .end local v15    # "dy1":F
    .end local v16    # "hr":F
    .end local v17    # "vr":F
    :pswitch_1
    move-object/from16 v18, v5

    invoke-virtual/range {v18 .. v18}, Ljavafx/scene/layout/CornerRadii;->getTopRightHorizontalRadius()D

    move-result-wide v18

    move-wide/from16 v0, v18

    double-to-float v0, v0

    move/from16 v18, v0

    move/from16 v16, v18

    .line 1686
    .restart local v16    # "hr":F
    move-object/from16 v18, v5

    invoke-virtual/range {v18 .. v18}, Ljavafx/scene/layout/CornerRadii;->getTopRightVerticalRadius()D

    move-result-wide v18

    move-wide/from16 v0, v18

    double-to-float v0, v0

    move/from16 v18, v0

    move/from16 v17, v18

    .line 1688
    .restart local v17    # "vr":F
    move/from16 v18, v16

    move/from16 v0, v18

    neg-float v0, v0

    move/from16 v18, v0

    move/from16 v12, v18

    .restart local v12    # "dx0":F
    const/16 v18, 0x0

    move/from16 v13, v18

    .restart local v13    # "dy0":F
    const/16 v18, 0x0

    move/from16 v14, v18

    .restart local v14    # "dx1":F
    move/from16 v18, v17

    move/from16 v15, v18

    .line 1689
    .restart local v15    # "dy1":F
    goto :goto_1

    .line 1691
    .end local v12    # "dx0":F
    .end local v13    # "dy0":F
    .end local v14    # "dx1":F
    .end local v15    # "dy1":F
    .end local v16    # "hr":F
    .end local v17    # "vr":F
    :pswitch_2
    move-object/from16 v18, v5

    invoke-virtual/range {v18 .. v18}, Ljavafx/scene/layout/CornerRadii;->getBottomRightHorizontalRadius()D

    move-result-wide v18

    move-wide/from16 v0, v18

    double-to-float v0, v0

    move/from16 v18, v0

    move/from16 v16, v18

    .line 1692
    .restart local v16    # "hr":F
    move-object/from16 v18, v5

    invoke-virtual/range {v18 .. v18}, Ljavafx/scene/layout/CornerRadii;->getBottomRightVerticalRadius()D

    move-result-wide v18

    move-wide/from16 v0, v18

    double-to-float v0, v0

    move/from16 v18, v0

    move/from16 v17, v18

    .line 1694
    .restart local v17    # "vr":F
    const/16 v18, 0x0

    move/from16 v12, v18

    .restart local v12    # "dx0":F
    move/from16 v18, v17

    move/from16 v0, v18

    neg-float v0, v0

    move/from16 v18, v0

    move/from16 v13, v18

    .restart local v13    # "dy0":F
    move/from16 v18, v16

    move/from16 v0, v18

    neg-float v0, v0

    move/from16 v18, v0

    move/from16 v14, v18

    .restart local v14    # "dx1":F
    const/16 v18, 0x0

    move/from16 v15, v18

    .line 1695
    .restart local v15    # "dy1":F
    goto/16 :goto_1

    .line 1697
    .end local v12    # "dx0":F
    .end local v13    # "dy0":F
    .end local v14    # "dx1":F
    .end local v15    # "dy1":F
    .end local v16    # "hr":F
    .end local v17    # "vr":F
    :pswitch_3
    move-object/from16 v18, v5

    invoke-virtual/range {v18 .. v18}, Ljavafx/scene/layout/CornerRadii;->getBottomLeftHorizontalRadius()D

    move-result-wide v18

    move-wide/from16 v0, v18

    double-to-float v0, v0

    move/from16 v18, v0

    move/from16 v16, v18

    .line 1698
    .restart local v16    # "hr":F
    move-object/from16 v18, v5

    invoke-virtual/range {v18 .. v18}, Ljavafx/scene/layout/CornerRadii;->getBottomLeftVerticalRadius()D

    move-result-wide v18

    move-wide/from16 v0, v18

    double-to-float v0, v0

    move/from16 v18, v0

    move/from16 v17, v18

    .line 1700
    .restart local v17    # "vr":F
    move/from16 v18, v16

    move/from16 v12, v18

    .restart local v12    # "dx0":F
    const/16 v18, 0x0

    move/from16 v13, v18

    .restart local v13    # "dy0":F
    const/16 v18, 0x0

    move/from16 v14, v18

    .restart local v14    # "dx1":F
    move/from16 v18, v17

    move/from16 v0, v18

    neg-float v0, v0

    move/from16 v18, v0

    move/from16 v15, v18

    .line 1701
    .restart local v15    # "dy1":F
    goto/16 :goto_1

    .line 1705
    :cond_0
    sget-object v27, Lcom/sun/javafx/geom/Path2D$CornerPrefix;->LINE_THEN_CORNER:Lcom/sun/javafx/geom/Path2D$CornerPrefix;

    goto/16 :goto_2

    .line 1709
    :cond_1
    move/from16 v18, v11

    if-eqz v18, :cond_2

    .line 1710
    move-object/from16 v18, v4

    move/from16 v19, v6

    move/from16 v20, v7

    invoke-virtual/range {v18 .. v20}, Lcom/sun/javafx/geom/Path2D;->moveTo(FF)V

    goto/16 :goto_3

    .line 1712
    :cond_2
    move-object/from16 v18, v4

    move/from16 v19, v6

    move/from16 v20, v7

    invoke-virtual/range {v18 .. v20}, Lcom/sun/javafx/geom/Path2D;->lineTo(FF)V

    goto/16 :goto_3

    .line 1677
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private getCacheKey(II)Ljava/lang/Integer;
    .locals 6

    .prologue
    .line 474
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGRegion;
    move v1, p1

    .local v1, "w":I
    move v2, p2

    .local v2, "h":I
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/sg/prism/NGRegion;->cacheKey:Ljava/lang/Integer;

    if-nez v4, :cond_1

    .line 475
    const/16 v4, 0x1f

    move v5, v1

    mul-int/2addr v4, v5

    move v3, v4

    .line 476
    .local v3, "key":I
    move v4, v3

    const/16 v5, 0x25

    mul-int/lit8 v4, v4, 0x25

    move v5, v2

    add-int/2addr v4, v5

    move v3, v4

    .line 477
    move v4, v3

    const/16 v5, 0x2f

    mul-int/lit8 v4, v4, 0x2f

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/sg/prism/NGRegion;->background:Ljavafx/scene/layout/Background;

    invoke-virtual {v5}, Ljavafx/scene/layout/Background;->hashCode()I

    move-result v5

    add-int/2addr v4, v5

    move v3, v4

    .line 478
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/sg/prism/NGRegion;->shape:Lcom/sun/javafx/geom/Shape;

    if-eqz v4, :cond_0

    .line 479
    move v4, v3

    const/16 v5, 0x49

    mul-int/lit8 v4, v4, 0x49

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/sg/prism/NGRegion;->shape:Lcom/sun/javafx/geom/Shape;

    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result v5

    add-int/2addr v4, v5

    move v3, v4

    .line 481
    :cond_0
    move-object v4, v0

    move v5, v3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, v4, Lcom/sun/javafx/sg/prism/NGRegion;->cacheKey:Ljava/lang/Integer;

    .line 483
    .end local v3    # "key":I
    :cond_1
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/sg/prism/NGRegion;->cacheKey:Ljava/lang/Integer;

    move-object v0, v4

    .end local v0    # "this":Lcom/sun/javafx/sg/prism/NGRegion;
    return-object v0
.end method

.method private getImageCache(Lcom/sun/prism/Graphics;)Lcom/sun/javafx/sg/prism/RegionImageCache;
    .locals 9

    .prologue
    .line 457
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGRegion;
    move-object v1, p1

    .local v1, "g":Lcom/sun/prism/Graphics;
    move-object v5, v1

    invoke-interface {v5}, Lcom/sun/prism/Graphics;->getAssociatedScreen()Lcom/sun/glass/ui/Screen;

    move-result-object v5

    move-object v2, v5

    .line 458
    .local v2, "screen":Lcom/sun/glass/ui/Screen;
    sget-object v5, Lcom/sun/javafx/sg/prism/NGRegion;->imageCacheMap:Ljava/util/WeakHashMap;

    move-object v6, v2

    invoke-virtual {v5, v6}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sun/javafx/sg/prism/RegionImageCache;

    move-object v3, v5

    .line 459
    .local v3, "cache":Lcom/sun/javafx/sg/prism/RegionImageCache;
    move-object v5, v3

    if-eqz v5, :cond_0

    .line 460
    move-object v5, v3

    invoke-virtual {v5}, Lcom/sun/javafx/sg/prism/RegionImageCache;->getBackingStore()Lcom/sun/prism/RTTexture;

    move-result-object v5

    move-object v4, v5

    .line 461
    .local v4, "tex":Lcom/sun/prism/RTTexture;
    move-object v5, v4

    invoke-interface {v5}, Lcom/sun/prism/RTTexture;->isSurfaceLost()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 462
    sget-object v5, Lcom/sun/javafx/sg/prism/NGRegion;->imageCacheMap:Ljava/util/WeakHashMap;

    move-object v6, v2

    invoke-virtual {v5, v6}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 463
    const/4 v5, 0x0

    move-object v3, v5

    .line 466
    .end local v4    # "tex":Lcom/sun/prism/RTTexture;
    :cond_0
    move-object v5, v3

    if-nez v5, :cond_1

    .line 467
    new-instance v5, Lcom/sun/javafx/sg/prism/RegionImageCache;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v1

    invoke-interface {v7}, Lcom/sun/prism/Graphics;->getResourceFactory()Lcom/sun/prism/ResourceFactory;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/sun/javafx/sg/prism/RegionImageCache;-><init>(Lcom/sun/prism/ResourceFactory;)V

    move-object v3, v5

    .line 468
    sget-object v5, Lcom/sun/javafx/sg/prism/NGRegion;->imageCacheMap:Ljava/util/WeakHashMap;

    move-object v6, v2

    move-object v7, v3

    invoke-virtual {v5, v6, v7}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 470
    :cond_1
    move-object v5, v3

    move-object v0, v5

    .end local v0    # "this":Lcom/sun/javafx/sg/prism/NGRegion;
    return-object v0
.end method

.method private getNormalizedFillRadii(I)Ljavafx/scene/layout/CornerRadii;
    .locals 4

    .prologue
    .line 410
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGRegion;
    move v1, p1

    .local v1, "index":I
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/sg/prism/NGRegion;->normalizedFillCorners:Ljava/util/List;

    if-nez v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/sg/prism/NGRegion;->background:Ljavafx/scene/layout/Background;

    .line 411
    invoke-virtual {v2}, Ljavafx/scene/layout/Background;->getFills()Ljava/util/List;

    move-result-object v2

    move v3, v1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavafx/scene/layout/BackgroundFill;

    invoke-virtual {v2}, Ljavafx/scene/layout/BackgroundFill;->getRadii()Ljavafx/scene/layout/CornerRadii;

    move-result-object v2

    .line 412
    :goto_0
    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/sg/prism/NGRegion;
    return-object v0

    .line 411
    .restart local v0    # "this":Lcom/sun/javafx/sg/prism/NGRegion;
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/sg/prism/NGRegion;->normalizedFillCorners:Ljava/util/List;

    move v3, v1

    .line 412
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavafx/scene/layout/CornerRadii;

    goto :goto_0
.end method

.method private getNormalizedStrokeRadii(I)Ljavafx/scene/layout/CornerRadii;
    .locals 4

    .prologue
    .line 320
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGRegion;
    move v1, p1

    .local v1, "index":I
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/sg/prism/NGRegion;->normalizedStrokeCorners:Ljava/util/List;

    if-nez v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/sg/prism/NGRegion;->border:Ljavafx/scene/layout/Border;

    .line 321
    invoke-virtual {v2}, Ljavafx/scene/layout/Border;->getStrokes()Ljava/util/List;

    move-result-object v2

    move v3, v1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavafx/scene/layout/BorderStroke;

    invoke-virtual {v2}, Ljavafx/scene/layout/BorderStroke;->getRadii()Ljavafx/scene/layout/CornerRadii;

    move-result-object v2

    .line 322
    :goto_0
    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/sg/prism/NGRegion;
    return-object v0

    .line 321
    .restart local v0    # "this":Lcom/sun/javafx/sg/prism/NGRegion;
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/sg/prism/NGRegion;->normalizedStrokeCorners:Ljava/util/List;

    move v3, v1

    .line 322
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavafx/scene/layout/CornerRadii;

    goto :goto_0
.end method

.method static getPlatformPaint(Ljavafx/scene/paint/Paint;)Lcom/sun/prism/paint/Paint;
    .locals 3

    .prologue
    .line 202
    move-object v0, p0

    .local v0, "paint":Ljavafx/scene/paint/Paint;
    invoke-static {}, Lcom/sun/javafx/tk/Toolkit;->getPaintAccessor()Lcom/sun/javafx/tk/Toolkit$PaintAccessor;

    move-result-object v1

    move-object v2, v0

    invoke-interface {v1, v2}, Lcom/sun/javafx/tk/Toolkit$PaintAccessor;->getPlatformPaint(Ljavafx/scene/paint/Paint;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/prism/paint/Paint;

    move-object v0, v1

    .end local v0    # "paint":Ljavafx/scene/paint/Paint;
    return-object v0
.end method

.method private makeRoundedEdge(Ljavafx/scene/layout/CornerRadii;FFFFI)Lcom/sun/javafx/geom/Path2D;
    .locals 18

    .prologue
    .line 1736
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGRegion;
    move-object/from16 v1, p1

    .local v1, "radii":Ljavafx/scene/layout/CornerRadii;
    move/from16 v2, p2

    .local v2, "x0":F
    move/from16 v3, p3

    .local v3, "y0":F
    move/from16 v4, p4

    .local v4, "x1":F
    move/from16 v5, p5

    .local v5, "y1":F
    move/from16 v6, p6

    .local v6, "quadrant":I
    new-instance v8, Lcom/sun/javafx/geom/Path2D;

    move-object/from16 v17, v8

    move-object/from16 v8, v17

    move-object/from16 v9, v17

    invoke-direct {v9}, Lcom/sun/javafx/geom/Path2D;-><init>()V

    move-object v7, v8

    .line 1737
    .local v7, "path":Lcom/sun/javafx/geom/Path2D;
    move-object v8, v0

    move-object v9, v7

    move-object v10, v1

    move v11, v2

    move v12, v3

    move v13, v6

    const/high16 v14, 0x3f000000    # 0.5f

    const/high16 v15, 0x3f800000    # 1.0f

    const/16 v16, 0x1

    invoke-direct/range {v8 .. v16}, Lcom/sun/javafx/sg/prism/NGRegion;->doCorner(Lcom/sun/javafx/geom/Path2D;Ljavafx/scene/layout/CornerRadii;FFIFFZ)V

    .line 1738
    move-object v8, v0

    move-object v9, v7

    move-object v10, v1

    move v11, v4

    move v12, v5

    move v13, v6

    const/4 v14, 0x1

    add-int/lit8 v13, v13, 0x1

    const/4 v14, 0x0

    const/high16 v15, 0x3f000000    # 0.5f

    const/16 v16, 0x0

    invoke-direct/range {v8 .. v16}, Lcom/sun/javafx/sg/prism/NGRegion;->doCorner(Lcom/sun/javafx/geom/Path2D;Ljavafx/scene/layout/CornerRadii;FFIFFZ)V

    .line 1739
    move-object v8, v7

    move-object v0, v8

    .end local v0    # "this":Lcom/sun/javafx/sg/prism/NGRegion;
    return-object v0
.end method

.method private paintTiles(Lcom/sun/prism/Graphics;Lcom/sun/prism/Image;Ljavafx/scene/layout/BackgroundRepeat;Ljavafx/scene/layout/BackgroundRepeat;Ljavafx/geometry/Side;Ljavafx/geometry/Side;FFFFIIIIFFFF)V
    .locals 57

    .prologue
    .line 1881
    move-object/from16 v3, p0

    .local v3, "this":Lcom/sun/javafx/sg/prism/NGRegion;
    move-object/from16 v4, p1

    .local v4, "g":Lcom/sun/prism/Graphics;
    move-object/from16 v5, p2

    .local v5, "img":Lcom/sun/prism/Image;
    move-object/from16 v6, p3

    .local v6, "repeatX":Ljavafx/scene/layout/BackgroundRepeat;
    move-object/from16 v7, p4

    .local v7, "repeatY":Ljavafx/scene/layout/BackgroundRepeat;
    move-object/from16 v8, p5

    .local v8, "horizontalSide":Ljavafx/geometry/Side;
    move-object/from16 v9, p6

    .local v9, "verticalSide":Ljavafx/geometry/Side;
    move/from16 v10, p7

    .local v10, "regionX":F
    move/from16 v11, p8

    .local v11, "regionY":F
    move/from16 v12, p9

    .local v12, "regionWidth":F
    move/from16 v13, p10

    .local v13, "regionHeight":F
    move/from16 v14, p11

    .local v14, "srcX":I
    move/from16 v15, p12

    .local v15, "srcY":I
    move/from16 v16, p13

    .local v16, "srcW":I
    move/from16 v17, p14

    .local v17, "srcH":I
    move/from16 v18, p15

    .local v18, "tileX":F
    move/from16 v19, p16

    .local v19, "tileY":F
    move/from16 v20, p17

    .local v20, "tileWidth":F
    move/from16 v21, p18

    .local v21, "tileHeight":F
    move/from16 v46, v12

    const/16 v47, 0x0

    cmpg-float v46, v46, v47

    if-lez v46, :cond_0

    move/from16 v46, v13

    const/16 v47, 0x0

    cmpg-float v46, v46, v47

    if-lez v46, :cond_0

    move/from16 v46, v16

    if-lez v46, :cond_0

    move/from16 v46, v17

    if-gtz v46, :cond_1

    .line 2009
    :cond_0
    :goto_0
    return-void

    .line 1884
    :cond_1
    sget-boolean v46, Lcom/sun/javafx/sg/prism/NGRegion;->$assertionsDisabled:Z

    if-nez v46, :cond_3

    move/from16 v46, v14

    if-ltz v46, :cond_2

    move/from16 v46, v15

    if-ltz v46, :cond_2

    move/from16 v46, v16

    if-lez v46, :cond_2

    move/from16 v46, v17

    if-gtz v46, :cond_3

    :cond_2
    new-instance v46, Ljava/lang/AssertionError;

    move-object/from16 v56, v46

    move-object/from16 v46, v56

    move-object/from16 v47, v56

    invoke-direct/range {v47 .. v47}, Ljava/lang/AssertionError;-><init>()V

    throw v46

    .line 1891
    :cond_3
    move/from16 v46, v18

    const/16 v47, 0x0

    cmpl-float v46, v46, v47

    if-nez v46, :cond_6

    move/from16 v46, v19

    const/16 v47, 0x0

    cmpl-float v46, v46, v47

    if-nez v46, :cond_6

    move-object/from16 v46, v6

    sget-object v47, Ljavafx/scene/layout/BackgroundRepeat;->REPEAT:Ljavafx/scene/layout/BackgroundRepeat;

    move-object/from16 v0, v46

    move-object/from16 v1, v47

    if-ne v0, v1, :cond_6

    move-object/from16 v46, v7

    sget-object v47, Ljavafx/scene/layout/BackgroundRepeat;->REPEAT:Ljavafx/scene/layout/BackgroundRepeat;

    move-object/from16 v0, v46

    move-object/from16 v1, v47

    if-ne v0, v1, :cond_6

    .line 1892
    move/from16 v46, v14

    if-nez v46, :cond_4

    move/from16 v46, v15

    if-nez v46, :cond_4

    move/from16 v46, v16

    move-object/from16 v47, v5

    invoke-virtual/range {v47 .. v47}, Lcom/sun/prism/Image;->getWidth()I

    move-result v47

    move/from16 v0, v46

    move/from16 v1, v47

    if-ne v0, v1, :cond_4

    move/from16 v46, v17

    move-object/from16 v47, v5

    invoke-virtual/range {v47 .. v47}, Lcom/sun/prism/Image;->getHeight()I

    move-result v47

    move/from16 v0, v46

    move/from16 v1, v47

    if-eq v0, v1, :cond_5

    .line 1893
    :cond_4
    move-object/from16 v46, v5

    move/from16 v47, v14

    move/from16 v48, v15

    move/from16 v49, v16

    move/from16 v50, v17

    invoke-virtual/range {v46 .. v50}, Lcom/sun/prism/Image;->createSubImage(IIII)Lcom/sun/prism/Image;

    move-result-object v46

    move-object/from16 v5, v46

    .line 1895
    :cond_5
    move-object/from16 v46, v4

    new-instance v47, Lcom/sun/prism/paint/ImagePattern;

    move-object/from16 v56, v47

    move-object/from16 v47, v56

    move-object/from16 v48, v56

    move-object/from16 v49, v5

    const/16 v50, 0x0

    const/16 v51, 0x0

    move/from16 v52, v20

    move/from16 v53, v21

    const/16 v54, 0x0

    const/16 v55, 0x0

    invoke-direct/range {v48 .. v55}, Lcom/sun/prism/paint/ImagePattern;-><init>(Lcom/sun/prism/Image;FFFFZZ)V

    invoke-interface/range {v46 .. v47}, Lcom/sun/prism/Graphics;->setPaint(Lcom/sun/prism/paint/Paint;)V

    .line 1896
    move-object/from16 v46, v4

    move/from16 v47, v10

    move/from16 v48, v11

    move/from16 v49, v12

    move/from16 v50, v13

    invoke-interface/range {v46 .. v50}, Lcom/sun/prism/Graphics;->fillRect(FFFF)V

    .line 2009
    :goto_1
    goto/16 :goto_0

    .line 1901
    :cond_6
    move-object/from16 v46, v6

    sget-object v47, Ljavafx/scene/layout/BackgroundRepeat;->SPACE:Ljavafx/scene/layout/BackgroundRepeat;

    move-object/from16 v0, v46

    move-object/from16 v1, v47

    if-ne v0, v1, :cond_7

    move/from16 v46, v12

    move/from16 v47, v20

    const/high16 v48, 0x40000000    # 2.0f

    mul-float v47, v47, v48

    cmpg-float v46, v46, v47

    if-gez v46, :cond_7

    .line 1902
    sget-object v46, Ljavafx/scene/layout/BackgroundRepeat;->NO_REPEAT:Ljavafx/scene/layout/BackgroundRepeat;

    move-object/from16 v6, v46

    .line 1905
    :cond_7
    move-object/from16 v46, v7

    sget-object v47, Ljavafx/scene/layout/BackgroundRepeat;->SPACE:Ljavafx/scene/layout/BackgroundRepeat;

    move-object/from16 v0, v46

    move-object/from16 v1, v47

    if-ne v0, v1, :cond_8

    move/from16 v46, v13

    move/from16 v47, v21

    const/high16 v48, 0x40000000    # 2.0f

    mul-float v47, v47, v48

    cmpg-float v46, v46, v47

    if-gez v46, :cond_8

    .line 1906
    sget-object v46, Ljavafx/scene/layout/BackgroundRepeat;->NO_REPEAT:Ljavafx/scene/layout/BackgroundRepeat;

    move-object/from16 v7, v46

    .line 1917
    :cond_8
    move-object/from16 v46, v6

    sget-object v47, Ljavafx/scene/layout/BackgroundRepeat;->REPEAT:Ljavafx/scene/layout/BackgroundRepeat;

    move-object/from16 v0, v46

    move-object/from16 v1, v47

    if-ne v0, v1, :cond_13

    .line 1921
    const/16 v46, 0x0

    move/from16 v26, v46

    .line 1922
    .local v26, "offsetX":F
    move/from16 v46, v18

    const/16 v47, 0x0

    cmpl-float v46, v46, v47

    if-eqz v46, :cond_9

    .line 1923
    move/from16 v46, v18

    move/from16 v47, v20

    rem-float v46, v46, v47

    move/from16 v27, v46

    .line 1924
    .local v27, "mod":F
    move/from16 v46, v27

    const/16 v47, 0x0

    cmpl-float v46, v46, v47

    if-nez v46, :cond_10

    const/16 v46, 0x0

    :goto_2
    move/from16 v18, v46

    .line 1925
    move/from16 v46, v18

    move/from16 v26, v46

    .line 1927
    .end local v27    # "mod":F
    :cond_9
    const-wide/high16 v46, 0x3ff0000000000000L    # 1.0

    move/from16 v48, v12

    move/from16 v49, v26

    sub-float v48, v48, v49

    move/from16 v49, v20

    div-float v48, v48, v49

    move/from16 v0, v48

    float-to-double v0, v0

    move-wide/from16 v48, v0

    invoke-static/range {v48 .. v49}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v48

    invoke-static/range {v46 .. v49}, Ljava/lang/Math;->max(DD)D

    move-result-wide v46

    move-wide/from16 v0, v46

    double-to-int v0, v0

    move/from16 v46, v0

    move/from16 v22, v46

    .line 1928
    .local v22, "countX":I
    move-object/from16 v46, v8

    sget-object v47, Ljavafx/geometry/Side;->RIGHT:Ljavafx/geometry/Side;

    move-object/from16 v0, v46

    move-object/from16 v1, v47

    if-ne v0, v1, :cond_12

    move/from16 v46, v20

    move/from16 v0, v46

    neg-float v0, v0

    move/from16 v46, v0

    :goto_3
    move/from16 v24, v46

    .line 1944
    .end local v26    # "offsetX":F
    .local v24, "xIncrement":F
    :goto_4
    move-object/from16 v46, v7

    sget-object v47, Ljavafx/scene/layout/BackgroundRepeat;->REPEAT:Ljavafx/scene/layout/BackgroundRepeat;

    move-object/from16 v0, v46

    move-object/from16 v1, v47

    if-ne v0, v1, :cond_1a

    .line 1945
    const/16 v46, 0x0

    move/from16 v26, v46

    .line 1946
    .local v26, "offsetY":F
    move/from16 v46, v19

    const/16 v47, 0x0

    cmpl-float v46, v46, v47

    if-eqz v46, :cond_a

    .line 1947
    move/from16 v46, v19

    move/from16 v47, v21

    rem-float v46, v46, v47

    move/from16 v27, v46

    .line 1948
    .restart local v27    # "mod":F
    move/from16 v46, v27

    const/16 v47, 0x0

    cmpl-float v46, v46, v47

    if-nez v46, :cond_17

    const/16 v46, 0x0

    :goto_5
    move/from16 v19, v46

    .line 1949
    move/from16 v46, v19

    move/from16 v26, v46

    .line 1951
    .end local v27    # "mod":F
    :cond_a
    const-wide/high16 v46, 0x3ff0000000000000L    # 1.0

    move/from16 v48, v13

    move/from16 v49, v26

    sub-float v48, v48, v49

    move/from16 v49, v21

    div-float v48, v48, v49

    move/from16 v0, v48

    float-to-double v0, v0

    move-wide/from16 v48, v0

    invoke-static/range {v48 .. v49}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v48

    invoke-static/range {v46 .. v49}, Ljava/lang/Math;->max(DD)D

    move-result-wide v46

    move-wide/from16 v0, v46

    double-to-int v0, v0

    move/from16 v46, v0

    move/from16 v23, v46

    .line 1952
    .local v23, "countY":I
    move-object/from16 v46, v9

    sget-object v47, Ljavafx/geometry/Side;->BOTTOM:Ljavafx/geometry/Side;

    move-object/from16 v0, v46

    move-object/from16 v1, v47

    if-ne v0, v1, :cond_19

    move/from16 v46, v21

    move/from16 v0, v46

    neg-float v0, v0

    move/from16 v46, v0

    :goto_6
    move/from16 v25, v46

    .line 1969
    .end local v26    # "offsetY":F
    .local v25, "yIncrement":F
    :goto_7
    move-object/from16 v46, v4

    .line 1970
    invoke-interface/range {v46 .. v46}, Lcom/sun/prism/Graphics;->getResourceFactory()Lcom/sun/prism/ResourceFactory;

    move-result-object v46

    move-object/from16 v47, v5

    sget-object v48, Lcom/sun/prism/Texture$WrapMode;->CLAMP_TO_EDGE:Lcom/sun/prism/Texture$WrapMode;

    invoke-interface/range {v46 .. v48}, Lcom/sun/prism/ResourceFactory;->getCachedTexture(Lcom/sun/prism/Image;Lcom/sun/prism/Texture$WrapMode;)Lcom/sun/prism/Texture;

    move-result-object v46

    move-object/from16 v26, v46

    .line 1971
    .local v26, "texture":Lcom/sun/prism/Texture;
    move/from16 v46, v14

    move/from16 v47, v16

    add-int v46, v46, v47

    move/from16 v27, v46

    .line 1972
    .local v27, "srcX2":I
    move/from16 v46, v15

    move/from16 v47, v17

    add-int v46, v46, v47

    move/from16 v28, v46

    .line 1973
    .local v28, "srcY2":I
    move/from16 v46, v10

    move/from16 v47, v12

    add-float v46, v46, v47

    move/from16 v29, v46

    .line 1974
    .local v29, "regionX2":F
    move/from16 v46, v11

    move/from16 v47, v13

    add-float v46, v46, v47

    move/from16 v30, v46

    .line 1976
    .local v30, "regionY2":F
    move/from16 v46, v11

    move/from16 v47, v19

    add-float v46, v46, v47

    move/from16 v31, v46

    .line 1977
    .local v31, "dstY":F
    const/16 v46, 0x0

    move/from16 v32, v46

    .local v32, "y":I
    :goto_8
    move/from16 v46, v32

    move/from16 v47, v23

    move/from16 v0, v46

    move/from16 v1, v47

    if-ge v0, v1, :cond_27

    .line 1978
    move/from16 v46, v31

    move/from16 v47, v21

    add-float v46, v46, v47

    move/from16 v33, v46

    .line 1979
    .local v33, "dstY2":F
    move/from16 v46, v10

    move/from16 v47, v18

    add-float v46, v46, v47

    move/from16 v34, v46

    .line 1980
    .local v34, "dstX":F
    const/16 v46, 0x0

    move/from16 v35, v46

    .local v35, "x":I
    :goto_9
    move/from16 v46, v35

    move/from16 v47, v22

    move/from16 v0, v46

    move/from16 v1, v47

    if-ge v0, v1, :cond_26

    .line 1981
    move/from16 v46, v34

    move/from16 v47, v20

    add-float v46, v46, v47

    move/from16 v36, v46

    .line 1984
    .local v36, "dstX2":F
    const/16 v46, 0x0

    move/from16 v37, v46

    .line 1985
    .local v37, "skipRender":Z
    move/from16 v46, v34

    move/from16 v47, v10

    cmpg-float v46, v46, v47

    if-gez v46, :cond_1e

    move/from16 v46, v10

    :goto_a
    move/from16 v38, v46

    .line 1986
    .local v38, "dx1":F
    move/from16 v46, v31

    move/from16 v47, v11

    cmpg-float v46, v46, v47

    if-gez v46, :cond_1f

    move/from16 v46, v11

    :goto_b
    move/from16 v39, v46

    .line 1987
    .local v39, "dy1":F
    move/from16 v46, v38

    move/from16 v47, v29

    cmpl-float v46, v46, v47

    if-gtz v46, :cond_b

    move/from16 v46, v39

    move/from16 v47, v30

    cmpl-float v46, v46, v47

    if-lez v46, :cond_c

    :cond_b
    const/16 v46, 0x1

    move/from16 v37, v46

    .line 1989
    :cond_c
    move/from16 v46, v36

    move/from16 v47, v29

    cmpl-float v46, v46, v47

    if-lez v46, :cond_20

    move/from16 v46, v29

    :goto_c
    move/from16 v40, v46

    .line 1990
    .local v40, "dx2":F
    move/from16 v46, v33

    move/from16 v47, v30

    cmpl-float v46, v46, v47

    if-lez v46, :cond_21

    move/from16 v46, v30

    :goto_d
    move/from16 v41, v46

    .line 1991
    .local v41, "dy2":F
    move/from16 v46, v40

    move/from16 v47, v10

    cmpg-float v46, v46, v47

    if-ltz v46, :cond_d

    move/from16 v46, v41

    move/from16 v47, v11

    cmpg-float v46, v46, v47

    if-gez v46, :cond_e

    :cond_d
    const/16 v46, 0x1

    move/from16 v37, v46

    .line 1993
    :cond_e
    move/from16 v46, v37

    if-nez v46, :cond_f

    .line 1996
    move/from16 v46, v34

    move/from16 v47, v10

    cmpg-float v46, v46, v47

    if-gez v46, :cond_22

    move/from16 v46, v14

    move/from16 v0, v46

    int-to-float v0, v0

    move/from16 v46, v0

    move/from16 v47, v16

    move/from16 v0, v47

    int-to-float v0, v0

    move/from16 v47, v0

    move/from16 v48, v18

    move/from16 v0, v48

    neg-float v0, v0

    move/from16 v48, v0

    move/from16 v49, v20

    div-float v48, v48, v49

    mul-float v47, v47, v48

    add-float v46, v46, v47

    :goto_e
    move/from16 v42, v46

    .line 1997
    .local v42, "sx1":F
    move/from16 v46, v31

    move/from16 v47, v11

    cmpg-float v46, v46, v47

    if-gez v46, :cond_23

    move/from16 v46, v15

    move/from16 v0, v46

    int-to-float v0, v0

    move/from16 v46, v0

    move/from16 v47, v17

    move/from16 v0, v47

    int-to-float v0, v0

    move/from16 v47, v0

    move/from16 v48, v19

    move/from16 v0, v48

    neg-float v0, v0

    move/from16 v48, v0

    move/from16 v49, v21

    div-float v48, v48, v49

    mul-float v47, v47, v48

    add-float v46, v46, v47

    :goto_f
    move/from16 v43, v46

    .line 1998
    .local v43, "sy1":F
    move/from16 v46, v36

    move/from16 v47, v29

    cmpl-float v46, v46, v47

    if-lez v46, :cond_24

    move/from16 v46, v27

    move/from16 v0, v46

    int-to-float v0, v0

    move/from16 v46, v0

    move/from16 v47, v16

    move/from16 v0, v47

    int-to-float v0, v0

    move/from16 v47, v0

    move/from16 v48, v36

    move/from16 v49, v29

    sub-float v48, v48, v49

    move/from16 v49, v20

    div-float v48, v48, v49

    mul-float v47, v47, v48

    sub-float v46, v46, v47

    :goto_10
    move/from16 v44, v46

    .line 1999
    .local v44, "sx2":F
    move/from16 v46, v33

    move/from16 v47, v30

    cmpl-float v46, v46, v47

    if-lez v46, :cond_25

    move/from16 v46, v28

    move/from16 v0, v46

    int-to-float v0, v0

    move/from16 v46, v0

    move/from16 v47, v17

    move/from16 v0, v47

    int-to-float v0, v0

    move/from16 v47, v0

    move/from16 v48, v33

    move/from16 v49, v30

    sub-float v48, v48, v49

    move/from16 v49, v21

    div-float v48, v48, v49

    mul-float v47, v47, v48

    sub-float v46, v46, v47

    :goto_11
    move/from16 v45, v46

    .line 2001
    .local v45, "sy2":F
    move-object/from16 v46, v4

    move-object/from16 v47, v26

    move/from16 v48, v38

    move/from16 v49, v39

    move/from16 v50, v40

    move/from16 v51, v41

    move/from16 v52, v42

    move/from16 v53, v43

    move/from16 v54, v44

    move/from16 v55, v45

    invoke-interface/range {v46 .. v55}, Lcom/sun/prism/Graphics;->drawTexture(Lcom/sun/prism/Texture;FFFFFFFF)V

    .line 2003
    .end local v42    # "sx1":F
    .end local v43    # "sy1":F
    .end local v44    # "sx2":F
    .end local v45    # "sy2":F
    :cond_f
    move/from16 v46, v34

    move/from16 v47, v24

    add-float v46, v46, v47

    move/from16 v34, v46

    .line 1980
    add-int/lit8 v35, v35, 0x1

    goto/16 :goto_9

    .line 1924
    .end local v22    # "countX":I
    .end local v23    # "countY":I
    .end local v24    # "xIncrement":F
    .end local v25    # "yIncrement":F
    .end local v28    # "srcY2":I
    .end local v29    # "regionX2":F
    .end local v30    # "regionY2":F
    .end local v31    # "dstY":F
    .end local v32    # "y":I
    .end local v33    # "dstY2":F
    .end local v34    # "dstX":F
    .end local v35    # "x":I
    .end local v36    # "dstX2":F
    .end local v37    # "skipRender":Z
    .end local v38    # "dx1":F
    .end local v39    # "dy1":F
    .end local v40    # "dx2":F
    .end local v41    # "dy2":F
    .local v26, "offsetX":F
    .local v27, "mod":F
    :cond_10
    move/from16 v46, v18

    const/16 v47, 0x0

    cmpg-float v46, v46, v47

    if-gez v46, :cond_11

    move/from16 v46, v27

    goto/16 :goto_2

    :cond_11
    move/from16 v46, v27

    move/from16 v47, v20

    sub-float v46, v46, v47

    goto/16 :goto_2

    .line 1928
    .end local v27    # "mod":F
    .restart local v22    # "countX":I
    :cond_12
    move/from16 v46, v20

    goto/16 :goto_3

    .line 1929
    .end local v22    # "countX":I
    .end local v26    # "offsetX":F
    :cond_13
    move-object/from16 v46, v6

    sget-object v47, Ljavafx/scene/layout/BackgroundRepeat;->SPACE:Ljavafx/scene/layout/BackgroundRepeat;

    move-object/from16 v0, v46

    move-object/from16 v1, v47

    if-ne v0, v1, :cond_14

    .line 1930
    const/16 v46, 0x0

    move/from16 v18, v46

    .line 1931
    move/from16 v46, v12

    move/from16 v47, v20

    div-float v46, v46, v47

    move/from16 v0, v46

    float-to-int v0, v0

    move/from16 v46, v0

    move/from16 v22, v46

    .line 1932
    .restart local v22    # "countX":I
    move/from16 v46, v12

    move/from16 v47, v20

    rem-float v46, v46, v47

    move/from16 v26, v46

    .line 1933
    .local v26, "remainder":F
    move/from16 v46, v20

    move/from16 v47, v26

    move/from16 v48, v22

    const/16 v49, 0x1

    add-int/lit8 v48, v48, -0x1

    move/from16 v0, v48

    int-to-float v0, v0

    move/from16 v48, v0

    div-float v47, v47, v48

    add-float v46, v46, v47

    move/from16 v24, v46

    .line 1934
    .restart local v24    # "xIncrement":F
    goto/16 :goto_4

    .end local v22    # "countX":I
    .end local v24    # "xIncrement":F
    .end local v26    # "remainder":F
    :cond_14
    move-object/from16 v46, v6

    sget-object v47, Ljavafx/scene/layout/BackgroundRepeat;->ROUND:Ljavafx/scene/layout/BackgroundRepeat;

    move-object/from16 v0, v46

    move-object/from16 v1, v47

    if-ne v0, v1, :cond_15

    .line 1935
    const/16 v46, 0x0

    move/from16 v18, v46

    .line 1936
    move/from16 v46, v12

    move/from16 v47, v20

    div-float v46, v46, v47

    move/from16 v0, v46

    float-to-int v0, v0

    move/from16 v46, v0

    move/from16 v22, v46

    .line 1937
    .restart local v22    # "countX":I
    move/from16 v46, v12

    move/from16 v47, v12

    move/from16 v48, v20

    div-float v47, v47, v48

    move/from16 v0, v47

    float-to-int v0, v0

    move/from16 v47, v0

    move/from16 v0, v47

    int-to-float v0, v0

    move/from16 v47, v0

    div-float v46, v46, v47

    move/from16 v20, v46

    .line 1938
    move/from16 v46, v20

    move/from16 v24, v46

    .restart local v24    # "xIncrement":F
    goto/16 :goto_4

    .line 1940
    .end local v22    # "countX":I
    .end local v24    # "xIncrement":F
    :cond_15
    const/16 v46, 0x1

    move/from16 v22, v46

    .line 1941
    .restart local v22    # "countX":I
    move-object/from16 v46, v8

    sget-object v47, Ljavafx/geometry/Side;->RIGHT:Ljavafx/geometry/Side;

    move-object/from16 v0, v46

    move-object/from16 v1, v47

    if-ne v0, v1, :cond_16

    move/from16 v46, v20

    move/from16 v0, v46

    neg-float v0, v0

    move/from16 v46, v0

    :goto_12
    move/from16 v24, v46

    .restart local v24    # "xIncrement":F
    goto/16 :goto_4

    .end local v24    # "xIncrement":F
    :cond_16
    move/from16 v46, v20

    goto :goto_12

    .line 1948
    .restart local v24    # "xIncrement":F
    .local v26, "offsetY":F
    .restart local v27    # "mod":F
    :cond_17
    move/from16 v46, v19

    const/16 v47, 0x0

    cmpg-float v46, v46, v47

    if-gez v46, :cond_18

    move/from16 v46, v27

    goto/16 :goto_5

    :cond_18
    move/from16 v46, v27

    move/from16 v47, v21

    sub-float v46, v46, v47

    goto/16 :goto_5

    .line 1952
    .end local v27    # "mod":F
    .restart local v23    # "countY":I
    :cond_19
    move/from16 v46, v21

    goto/16 :goto_6

    .line 1953
    .end local v23    # "countY":I
    .end local v26    # "offsetY":F
    :cond_1a
    move-object/from16 v46, v7

    sget-object v47, Ljavafx/scene/layout/BackgroundRepeat;->SPACE:Ljavafx/scene/layout/BackgroundRepeat;

    move-object/from16 v0, v46

    move-object/from16 v1, v47

    if-ne v0, v1, :cond_1b

    .line 1954
    const/16 v46, 0x0

    move/from16 v19, v46

    .line 1955
    move/from16 v46, v13

    move/from16 v47, v21

    div-float v46, v46, v47

    move/from16 v0, v46

    float-to-int v0, v0

    move/from16 v46, v0

    move/from16 v23, v46

    .line 1956
    .restart local v23    # "countY":I
    move/from16 v46, v13

    move/from16 v47, v21

    rem-float v46, v46, v47

    move/from16 v26, v46

    .line 1957
    .local v26, "remainder":F
    move/from16 v46, v21

    move/from16 v47, v26

    move/from16 v48, v23

    const/16 v49, 0x1

    add-int/lit8 v48, v48, -0x1

    move/from16 v0, v48

    int-to-float v0, v0

    move/from16 v48, v0

    div-float v47, v47, v48

    add-float v46, v46, v47

    move/from16 v25, v46

    .line 1958
    .restart local v25    # "yIncrement":F
    goto/16 :goto_7

    .end local v23    # "countY":I
    .end local v25    # "yIncrement":F
    .end local v26    # "remainder":F
    :cond_1b
    move-object/from16 v46, v7

    sget-object v47, Ljavafx/scene/layout/BackgroundRepeat;->ROUND:Ljavafx/scene/layout/BackgroundRepeat;

    move-object/from16 v0, v46

    move-object/from16 v1, v47

    if-ne v0, v1, :cond_1c

    .line 1959
    const/16 v46, 0x0

    move/from16 v19, v46

    .line 1960
    move/from16 v46, v13

    move/from16 v47, v21

    div-float v46, v46, v47

    move/from16 v0, v46

    float-to-int v0, v0

    move/from16 v46, v0

    move/from16 v23, v46

    .line 1961
    .restart local v23    # "countY":I
    move/from16 v46, v13

    move/from16 v47, v13

    move/from16 v48, v21

    div-float v47, v47, v48

    move/from16 v0, v47

    float-to-int v0, v0

    move/from16 v47, v0

    move/from16 v0, v47

    int-to-float v0, v0

    move/from16 v47, v0

    div-float v46, v46, v47

    move/from16 v21, v46

    .line 1962
    move/from16 v46, v21

    move/from16 v25, v46

    .restart local v25    # "yIncrement":F
    goto/16 :goto_7

    .line 1964
    .end local v23    # "countY":I
    .end local v25    # "yIncrement":F
    :cond_1c
    const/16 v46, 0x1

    move/from16 v23, v46

    .line 1965
    .restart local v23    # "countY":I
    move-object/from16 v46, v9

    sget-object v47, Ljavafx/geometry/Side;->BOTTOM:Ljavafx/geometry/Side;

    move-object/from16 v0, v46

    move-object/from16 v1, v47

    if-ne v0, v1, :cond_1d

    move/from16 v46, v21

    move/from16 v0, v46

    neg-float v0, v0

    move/from16 v46, v0

    :goto_13
    move/from16 v25, v46

    .restart local v25    # "yIncrement":F
    goto/16 :goto_7

    .end local v25    # "yIncrement":F
    :cond_1d
    move/from16 v46, v21

    goto :goto_13

    .line 1985
    .restart local v25    # "yIncrement":F
    .local v26, "texture":Lcom/sun/prism/Texture;
    .local v27, "srcX2":I
    .restart local v28    # "srcY2":I
    .restart local v29    # "regionX2":F
    .restart local v30    # "regionY2":F
    .restart local v31    # "dstY":F
    .restart local v32    # "y":I
    .restart local v33    # "dstY2":F
    .restart local v34    # "dstX":F
    .restart local v35    # "x":I
    .restart local v36    # "dstX2":F
    .restart local v37    # "skipRender":Z
    :cond_1e
    move/from16 v46, v34

    goto/16 :goto_a

    .line 1986
    .restart local v38    # "dx1":F
    :cond_1f
    move/from16 v46, v31

    goto/16 :goto_b

    .line 1989
    .restart local v39    # "dy1":F
    :cond_20
    move/from16 v46, v36

    goto/16 :goto_c

    .line 1990
    .restart local v40    # "dx2":F
    :cond_21
    move/from16 v46, v33

    goto/16 :goto_d

    .line 1996
    .restart local v41    # "dy2":F
    :cond_22
    move/from16 v46, v14

    move/from16 v0, v46

    int-to-float v0, v0

    move/from16 v46, v0

    goto/16 :goto_e

    .line 1997
    .restart local v42    # "sx1":F
    :cond_23
    move/from16 v46, v15

    move/from16 v0, v46

    int-to-float v0, v0

    move/from16 v46, v0

    goto/16 :goto_f

    .line 1998
    .restart local v43    # "sy1":F
    :cond_24
    move/from16 v46, v27

    move/from16 v0, v46

    int-to-float v0, v0

    move/from16 v46, v0

    goto/16 :goto_10

    .line 1999
    .restart local v44    # "sx2":F
    :cond_25
    move/from16 v46, v28

    move/from16 v0, v46

    int-to-float v0, v0

    move/from16 v46, v0

    goto/16 :goto_11

    .line 2005
    .end local v36    # "dstX2":F
    .end local v37    # "skipRender":Z
    .end local v38    # "dx1":F
    .end local v39    # "dy1":F
    .end local v40    # "dx2":F
    .end local v41    # "dy2":F
    .end local v42    # "sx1":F
    .end local v43    # "sy1":F
    .end local v44    # "sx2":F
    :cond_26
    move/from16 v46, v31

    move/from16 v47, v25

    add-float v46, v46, v47

    move/from16 v31, v46

    .line 1977
    add-int/lit8 v32, v32, 0x1

    goto/16 :goto_8

    .line 2007
    .end local v33    # "dstY2":F
    .end local v34    # "dstX":F
    .end local v35    # "x":I
    :cond_27
    move-object/from16 v46, v26

    invoke-interface/range {v46 .. v46}, Lcom/sun/prism/Texture;->unlock()V

    goto/16 :goto_1
.end method

.method private paintTiles(Lcom/sun/prism/Graphics;Lcom/sun/prism/Image;Ljavafx/scene/layout/BorderRepeat;Ljavafx/scene/layout/BorderRepeat;Ljavafx/geometry/Side;Ljavafx/geometry/Side;FFFFIIIIFFFF)V
    .locals 40

    .prologue
    .line 1824
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGRegion;
    move-object/from16 v1, p1

    .local v1, "g":Lcom/sun/prism/Graphics;
    move-object/from16 v2, p2

    .local v2, "img":Lcom/sun/prism/Image;
    move-object/from16 v3, p3

    .local v3, "repeatX":Ljavafx/scene/layout/BorderRepeat;
    move-object/from16 v4, p4

    .local v4, "repeatY":Ljavafx/scene/layout/BorderRepeat;
    move-object/from16 v5, p5

    .local v5, "horizontalSide":Ljavafx/geometry/Side;
    move-object/from16 v6, p6

    .local v6, "verticalSide":Ljavafx/geometry/Side;
    move/from16 v7, p7

    .local v7, "regionX":F
    move/from16 v8, p8

    .local v8, "regionY":F
    move/from16 v9, p9

    .local v9, "regionWidth":F
    move/from16 v10, p10

    .local v10, "regionHeight":F
    move/from16 v11, p11

    .local v11, "srcX":I
    move/from16 v12, p12

    .local v12, "srcY":I
    move/from16 v13, p13

    .local v13, "srcW":I
    move/from16 v14, p14

    .local v14, "srcH":I
    move/from16 v15, p15

    .local v15, "tileX":F
    move/from16 v16, p16

    .local v16, "tileY":F
    move/from16 v17, p17

    .local v17, "tileWidth":F
    move/from16 v18, p18

    .local v18, "tileHeight":F
    const/16 v21, 0x0

    move-object/from16 v19, v21

    .line 1825
    .local v19, "rx":Ljavafx/scene/layout/BackgroundRepeat;
    const/16 v21, 0x0

    move-object/from16 v20, v21

    .line 1827
    .local v20, "ry":Ljavafx/scene/layout/BackgroundRepeat;
    sget-object v21, Lcom/sun/javafx/sg/prism/NGRegion$1;->$SwitchMap$javafx$scene$layout$BorderRepeat:[I

    move-object/from16 v22, v3

    invoke-virtual/range {v22 .. v22}, Ljavafx/scene/layout/BorderRepeat;->ordinal()I

    move-result v22

    aget v21, v21, v22

    packed-switch v21, :pswitch_data_0

    .line 1834
    :goto_0
    sget-object v21, Lcom/sun/javafx/sg/prism/NGRegion$1;->$SwitchMap$javafx$scene$layout$BorderRepeat:[I

    move-object/from16 v22, v4

    invoke-virtual/range {v22 .. v22}, Ljavafx/scene/layout/BorderRepeat;->ordinal()I

    move-result v22

    aget v21, v21, v22

    packed-switch v21, :pswitch_data_1

    .line 1841
    :goto_1
    move-object/from16 v21, v0

    move-object/from16 v22, v1

    move-object/from16 v23, v2

    move-object/from16 v24, v19

    move-object/from16 v25, v20

    move-object/from16 v26, v5

    move-object/from16 v27, v6

    move/from16 v28, v7

    move/from16 v29, v8

    move/from16 v30, v9

    move/from16 v31, v10

    move/from16 v32, v11

    move/from16 v33, v12

    move/from16 v34, v13

    move/from16 v35, v14

    move/from16 v36, v15

    move/from16 v37, v16

    move/from16 v38, v17

    move/from16 v39, v18

    invoke-direct/range {v21 .. v39}, Lcom/sun/javafx/sg/prism/NGRegion;->paintTiles(Lcom/sun/prism/Graphics;Lcom/sun/prism/Image;Ljavafx/scene/layout/BackgroundRepeat;Ljavafx/scene/layout/BackgroundRepeat;Ljavafx/geometry/Side;Ljavafx/geometry/Side;FFFFIIIIFFFF)V

    .line 1843
    return-void

    .line 1828
    :pswitch_0
    sget-object v21, Ljavafx/scene/layout/BackgroundRepeat;->REPEAT:Ljavafx/scene/layout/BackgroundRepeat;

    move-object/from16 v19, v21

    goto :goto_0

    .line 1829
    :pswitch_1
    sget-object v21, Ljavafx/scene/layout/BackgroundRepeat;->NO_REPEAT:Ljavafx/scene/layout/BackgroundRepeat;

    move-object/from16 v19, v21

    goto :goto_0

    .line 1830
    :pswitch_2
    sget-object v21, Ljavafx/scene/layout/BackgroundRepeat;->ROUND:Ljavafx/scene/layout/BackgroundRepeat;

    move-object/from16 v19, v21

    goto :goto_0

    .line 1831
    :pswitch_3
    sget-object v21, Ljavafx/scene/layout/BackgroundRepeat;->SPACE:Ljavafx/scene/layout/BackgroundRepeat;

    move-object/from16 v19, v21

    goto :goto_0

    .line 1835
    :pswitch_4
    sget-object v21, Ljavafx/scene/layout/BackgroundRepeat;->REPEAT:Ljavafx/scene/layout/BackgroundRepeat;

    move-object/from16 v20, v21

    goto :goto_1

    .line 1836
    :pswitch_5
    sget-object v21, Ljavafx/scene/layout/BackgroundRepeat;->NO_REPEAT:Ljavafx/scene/layout/BackgroundRepeat;

    move-object/from16 v20, v21

    goto :goto_1

    .line 1837
    :pswitch_6
    sget-object v21, Ljavafx/scene/layout/BackgroundRepeat;->ROUND:Ljavafx/scene/layout/BackgroundRepeat;

    move-object/from16 v20, v21

    goto :goto_1

    .line 1838
    :pswitch_7
    sget-object v21, Ljavafx/scene/layout/BackgroundRepeat;->SPACE:Ljavafx/scene/layout/BackgroundRepeat;

    move-object/from16 v20, v21

    goto :goto_1

    .line 1827
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 1834
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private renderAsRectangle(Lcom/sun/prism/Graphics;)V
    .locals 4

    .prologue
    .line 750
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGRegion;
    move-object v1, p1

    .local v1, "g":Lcom/sun/prism/Graphics;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/sg/prism/NGRegion;->background:Ljavafx/scene/layout/Background;

    invoke-virtual {v2}, Ljavafx/scene/layout/Background;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 751
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/sg/prism/NGRegion;->renderBackgroundRectangle(Lcom/sun/prism/Graphics;)V

    .line 754
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/sg/prism/NGRegion;->border:Ljavafx/scene/layout/Border;

    invoke-virtual {v2}, Ljavafx/scene/layout/Border;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 755
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/sg/prism/NGRegion;->renderBorderRectangle(Lcom/sun/prism/Graphics;)V

    .line 757
    :cond_1
    return-void
.end method

.method private renderAsShape(Lcom/sun/prism/Graphics;)V
    .locals 31

    .prologue
    .line 591
    move-object/from16 v3, p0

    .local v3, "this":Lcom/sun/javafx/sg/prism/NGRegion;
    move-object/from16 v4, p1

    .local v4, "g":Lcom/sun/prism/Graphics;
    move-object/from16 v21, v3

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/sun/javafx/sg/prism/NGRegion;->background:Ljavafx/scene/layout/Background;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljavafx/scene/layout/Background;->isEmpty()Z

    move-result v21

    if-nez v21, :cond_2

    .line 596
    move-object/from16 v21, v3

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/sun/javafx/sg/prism/NGRegion;->background:Ljavafx/scene/layout/Background;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljavafx/scene/layout/Background;->getOutsets()Ljavafx/geometry/Insets;

    move-result-object v21

    move-object/from16 v5, v21

    .line 597
    .local v5, "outsets":Ljavafx/geometry/Insets;
    move-object/from16 v21, v3

    move-object/from16 v22, v5

    invoke-virtual/range {v22 .. v22}, Ljavafx/geometry/Insets;->getTop()D

    move-result-wide v22

    move-wide/from16 v0, v22

    neg-double v0, v0

    move-wide/from16 v22, v0

    move-wide/from16 v0, v22

    double-to-float v0, v0

    move/from16 v22, v0

    move-object/from16 v23, v5

    invoke-virtual/range {v23 .. v23}, Ljavafx/geometry/Insets;->getRight()D

    move-result-wide v23

    move-wide/from16 v0, v23

    neg-double v0, v0

    move-wide/from16 v23, v0

    move-wide/from16 v0, v23

    double-to-float v0, v0

    move/from16 v23, v0

    move-object/from16 v24, v5

    .line 598
    invoke-virtual/range {v24 .. v24}, Ljavafx/geometry/Insets;->getBottom()D

    move-result-wide v24

    move-wide/from16 v0, v24

    neg-double v0, v0

    move-wide/from16 v24, v0

    move-wide/from16 v0, v24

    double-to-float v0, v0

    move/from16 v24, v0

    move-object/from16 v25, v5

    invoke-virtual/range {v25 .. v25}, Ljavafx/geometry/Insets;->getLeft()D

    move-result-wide v25

    move-wide/from16 v0, v25

    neg-double v0, v0

    move-wide/from16 v25, v0

    move-wide/from16 v0, v25

    double-to-float v0, v0

    move/from16 v25, v0

    .line 597
    invoke-direct/range {v21 .. v25}, Lcom/sun/javafx/sg/prism/NGRegion;->resizeShape(FFFF)Lcom/sun/javafx/geom/Shape;

    move-result-object v21

    move-object/from16 v6, v21

    .line 599
    .local v6, "outsetShape":Lcom/sun/javafx/geom/Shape;
    move-object/from16 v21, v6

    invoke-virtual/range {v21 .. v21}, Lcom/sun/javafx/geom/Shape;->getBounds()Lcom/sun/javafx/geom/RectBounds;

    move-result-object v21

    move-object/from16 v7, v21

    .line 600
    .local v7, "outsetShapeBounds":Lcom/sun/javafx/geom/RectBounds;
    move-object/from16 v21, v7

    invoke-virtual/range {v21 .. v21}, Lcom/sun/javafx/geom/RectBounds;->getWidth()F

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Math;->round(F)I

    move-result v21

    move/from16 v8, v21

    .line 601
    .local v8, "textureWidth":I
    move-object/from16 v21, v7

    invoke-virtual/range {v21 .. v21}, Lcom/sun/javafx/geom/RectBounds;->getHeight()F

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Math;->round(F)I

    move-result v21

    move/from16 v9, v21

    .line 603
    .local v9, "textureHeight":I
    const/16 v21, 0x1

    move/from16 v10, v21

    .line 609
    .local v10, "border":I
    const/16 v21, 0x0

    move-object/from16 v11, v21

    .line 610
    .local v11, "cached":Lcom/sun/prism/RTTexture;
    const/16 v21, 0x0

    move-object/from16 v12, v21

    .line 613
    .local v12, "rect":Lcom/sun/javafx/geom/Rectangle;
    move-object/from16 v21, v3

    move-object/from16 v0, v21

    iget v0, v0, Lcom/sun/javafx/sg/prism/NGRegion;->cacheMode:I

    move/from16 v21, v0

    if-eqz v21, :cond_1

    move-object/from16 v21, v4

    invoke-interface/range {v21 .. v21}, Lcom/sun/prism/Graphics;->getTransformNoClone()Lcom/sun/javafx/geom/transform/BaseTransform;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/sun/javafx/geom/transform/BaseTransform;->isTranslateOrIdentity()Z

    move-result v21

    if-eqz v21, :cond_1

    .line 614
    move-object/from16 v21, v3

    move-object/from16 v22, v4

    invoke-direct/range {v21 .. v22}, Lcom/sun/javafx/sg/prism/NGRegion;->getImageCache(Lcom/sun/prism/Graphics;)Lcom/sun/javafx/sg/prism/RegionImageCache;

    move-result-object v21

    move-object/from16 v13, v21

    .line 615
    .local v13, "imageCache":Lcom/sun/javafx/sg/prism/RegionImageCache;
    move-object/from16 v21, v13

    move/from16 v22, v8

    move/from16 v23, v9

    invoke-virtual/range {v21 .. v23}, Lcom/sun/javafx/sg/prism/RegionImageCache;->isImageCachable(II)Z

    move-result v21

    if-eqz v21, :cond_1

    .line 616
    move-object/from16 v21, v3

    move/from16 v22, v8

    move/from16 v23, v9

    invoke-direct/range {v21 .. v23}, Lcom/sun/javafx/sg/prism/NGRegion;->getCacheKey(II)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v14, v21

    .line 617
    .local v14, "key":Ljava/lang/Integer;
    sget-object v21, Lcom/sun/javafx/sg/prism/NGRegion;->TEMP_RECT:Lcom/sun/javafx/geom/Rectangle;

    move-object/from16 v12, v21

    .line 618
    move-object/from16 v21, v12

    const/16 v22, 0x0

    const/16 v23, 0x0

    move/from16 v24, v8

    const/16 v25, 0x1

    add-int/lit8 v24, v24, 0x1

    move/from16 v25, v9

    const/16 v26, 0x1

    add-int/lit8 v25, v25, 0x1

    invoke-virtual/range {v21 .. v25}, Lcom/sun/javafx/geom/Rectangle;->setBounds(IIII)V

    .line 619
    move-object/from16 v21, v13

    move-object/from16 v22, v14

    move-object/from16 v23, v12

    move-object/from16 v24, v3

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/sun/javafx/sg/prism/NGRegion;->background:Ljavafx/scene/layout/Background;

    move-object/from16 v24, v0

    move-object/from16 v25, v3

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/sun/javafx/sg/prism/NGRegion;->shape:Lcom/sun/javafx/geom/Shape;

    move-object/from16 v25, v0

    move-object/from16 v26, v4

    invoke-virtual/range {v21 .. v26}, Lcom/sun/javafx/sg/prism/RegionImageCache;->getImageLocation(Ljava/lang/Integer;Lcom/sun/javafx/geom/Rectangle;Ljavafx/scene/layout/Background;Lcom/sun/javafx/geom/Shape;Lcom/sun/prism/Graphics;)Z

    move-result v21

    move/from16 v15, v21

    .line 620
    .local v15, "render":Z
    move-object/from16 v21, v12

    invoke-virtual/range {v21 .. v21}, Lcom/sun/javafx/geom/Rectangle;->isEmpty()Z

    move-result v21

    if-nez v21, :cond_0

    .line 622
    move-object/from16 v21, v13

    invoke-virtual/range {v21 .. v21}, Lcom/sun/javafx/sg/prism/RegionImageCache;->getBackingStore()Lcom/sun/prism/RTTexture;

    move-result-object v21

    move-object/from16 v11, v21

    .line 624
    :cond_0
    move-object/from16 v21, v11

    if-eqz v21, :cond_1

    move/from16 v21, v15

    if-eqz v21, :cond_1

    .line 625
    move-object/from16 v21, v11

    invoke-interface/range {v21 .. v21}, Lcom/sun/prism/RTTexture;->createGraphics()Lcom/sun/prism/Graphics;

    move-result-object v21

    move-object/from16 v16, v21

    .line 629
    .local v16, "cachedGraphics":Lcom/sun/prism/Graphics;
    move-object/from16 v21, v16

    move-object/from16 v22, v12

    move-object/from16 v0, v22

    iget v0, v0, Lcom/sun/javafx/geom/Rectangle;->x:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    move-object/from16 v23, v7

    invoke-virtual/range {v23 .. v23}, Lcom/sun/javafx/geom/RectBounds;->getMinX()F

    move-result v23

    sub-float v22, v22, v23

    move-object/from16 v23, v12

    move-object/from16 v0, v23

    iget v0, v0, Lcom/sun/javafx/geom/Rectangle;->y:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    move-object/from16 v24, v7

    .line 630
    invoke-virtual/range {v24 .. v24}, Lcom/sun/javafx/geom/RectBounds;->getMinY()F

    move-result v24

    sub-float v23, v23, v24

    .line 629
    invoke-interface/range {v21 .. v23}, Lcom/sun/prism/Graphics;->translate(FF)V

    .line 631
    move-object/from16 v21, v3

    move-object/from16 v22, v16

    invoke-direct/range {v21 .. v22}, Lcom/sun/javafx/sg/prism/NGRegion;->renderBackgroundShape(Lcom/sun/prism/Graphics;)V

    .line 632
    sget-boolean v21, Lcom/sun/javafx/logging/PulseLogger;->PULSE_LOGGING_ENABLED:Z

    if-eqz v21, :cond_1

    .line 633
    const-string v21, "Rendering region shape image to cache"

    invoke-static/range {v21 .. v21}, Lcom/sun/javafx/logging/PulseLogger;->incrementCounter(Ljava/lang/String;)V

    .line 641
    .end local v13    # "imageCache":Lcom/sun/javafx/sg/prism/RegionImageCache;
    .end local v14    # "key":Ljava/lang/Integer;
    .end local v15    # "render":Z
    .end local v16    # "cachedGraphics":Lcom/sun/prism/Graphics;
    :cond_1
    move-object/from16 v21, v11

    if-eqz v21, :cond_3

    .line 643
    move-object/from16 v21, v7

    invoke-virtual/range {v21 .. v21}, Lcom/sun/javafx/geom/RectBounds;->getMinX()F

    move-result v21

    move/from16 v13, v21

    .line 644
    .local v13, "dstX1":F
    move-object/from16 v21, v7

    invoke-virtual/range {v21 .. v21}, Lcom/sun/javafx/geom/RectBounds;->getMinY()F

    move-result v21

    move/from16 v14, v21

    .line 645
    .local v14, "dstY1":F
    move-object/from16 v21, v7

    invoke-virtual/range {v21 .. v21}, Lcom/sun/javafx/geom/RectBounds;->getMaxX()F

    move-result v21

    move/from16 v15, v21

    .line 646
    .local v15, "dstX2":F
    move-object/from16 v21, v7

    invoke-virtual/range {v21 .. v21}, Lcom/sun/javafx/geom/RectBounds;->getMaxY()F

    move-result v21

    move/from16 v16, v21

    .line 648
    .local v16, "dstY2":F
    move-object/from16 v21, v12

    move-object/from16 v0, v21

    iget v0, v0, Lcom/sun/javafx/geom/Rectangle;->x:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    move/from16 v17, v21

    .line 649
    .local v17, "srcX1":F
    move-object/from16 v21, v12

    move-object/from16 v0, v21

    iget v0, v0, Lcom/sun/javafx/geom/Rectangle;->y:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    move/from16 v18, v21

    .line 650
    .local v18, "srcY1":F
    move/from16 v21, v17

    move/from16 v22, v8

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    add-float v21, v21, v22

    move/from16 v19, v21

    .line 651
    .local v19, "srcX2":F
    move/from16 v21, v18

    move/from16 v22, v9

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    add-float v21, v21, v22

    move/from16 v20, v21

    .line 653
    .local v20, "srcY2":F
    move-object/from16 v21, v4

    move-object/from16 v22, v11

    move/from16 v23, v13

    move/from16 v24, v14

    move/from16 v25, v15

    move/from16 v26, v16

    move/from16 v27, v17

    move/from16 v28, v18

    move/from16 v29, v19

    move/from16 v30, v20

    invoke-interface/range {v21 .. v30}, Lcom/sun/prism/Graphics;->drawTexture(Lcom/sun/prism/Texture;FFFFFFFF)V

    .line 654
    sget-boolean v21, Lcom/sun/javafx/logging/PulseLogger;->PULSE_LOGGING_ENABLED:Z

    if-eqz v21, :cond_2

    .line 655
    const-string v21, "Cached region shape image used"

    invoke-static/range {v21 .. v21}, Lcom/sun/javafx/logging/PulseLogger;->incrementCounter(Ljava/lang/String;)V

    .line 657
    .line 667
    .end local v5    # "outsets":Ljavafx/geometry/Insets;
    .end local v6    # "outsetShape":Lcom/sun/javafx/geom/Shape;
    .end local v7    # "outsetShapeBounds":Lcom/sun/javafx/geom/RectBounds;
    .end local v8    # "textureWidth":I
    .end local v9    # "textureHeight":I
    .end local v10    # "border":I
    .end local v11    # "cached":Lcom/sun/prism/RTTexture;
    .end local v12    # "rect":Lcom/sun/javafx/geom/Rectangle;
    .end local v13    # "dstX1":F
    .end local v14    # "dstY1":F
    .end local v15    # "dstX2":F
    .end local v16    # "dstY2":F
    .end local v17    # "srcX1":F
    .end local v18    # "srcY1":F
    .end local v19    # "srcX2":F
    .end local v20    # "srcY2":F
    :cond_2
    :goto_0
    move-object/from16 v21, v3

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/sun/javafx/sg/prism/NGRegion;->border:Ljavafx/scene/layout/Border;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljavafx/scene/layout/Border;->isEmpty()Z

    move-result v21

    if-nez v21, :cond_4

    .line 672
    move-object/from16 v21, v3

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/sun/javafx/sg/prism/NGRegion;->border:Ljavafx/scene/layout/Border;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljavafx/scene/layout/Border;->getStrokes()Ljava/util/List;

    move-result-object v21

    move-object/from16 v5, v21

    .line 673
    .local v5, "strokes":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/layout/BorderStroke;>;"
    const/16 v21, 0x0

    move/from16 v6, v21

    .local v6, "i":I
    move-object/from16 v21, v5

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v21

    move/from16 v7, v21

    .local v7, "max":I
    :goto_1
    move/from16 v21, v6

    move/from16 v22, v7

    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_4

    .line 676
    move-object/from16 v21, v5

    move/from16 v22, v6

    invoke-interface/range {v21 .. v22}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljavafx/scene/layout/BorderStroke;

    move-object/from16 v8, v21

    .line 679
    .local v8, "stroke":Ljavafx/scene/layout/BorderStroke;
    move-object/from16 v21, v3

    move-object/from16 v22, v4

    move-object/from16 v23, v8

    const-wide/high16 v24, -0x4010000000000000L    # -1.0

    const/16 v26, 0x0

    invoke-direct/range {v21 .. v26}, Lcom/sun/javafx/sg/prism/NGRegion;->setBorderStyle(Lcom/sun/prism/Graphics;Ljavafx/scene/layout/BorderStroke;DZ)V

    .line 680
    move-object/from16 v21, v8

    invoke-virtual/range {v21 .. v21}, Ljavafx/scene/layout/BorderStroke;->getInsets()Ljavafx/geometry/Insets;

    move-result-object v21

    move-object/from16 v9, v21

    .line 681
    .local v9, "insets":Ljavafx/geometry/Insets;
    move-object/from16 v21, v4

    move-object/from16 v22, v3

    move-object/from16 v23, v9

    invoke-virtual/range {v23 .. v23}, Ljavafx/geometry/Insets;->getTop()D

    move-result-wide v23

    move-wide/from16 v0, v23

    double-to-float v0, v0

    move/from16 v23, v0

    move-object/from16 v24, v9

    invoke-virtual/range {v24 .. v24}, Ljavafx/geometry/Insets;->getRight()D

    move-result-wide v24

    move-wide/from16 v0, v24

    double-to-float v0, v0

    move/from16 v24, v0

    move-object/from16 v25, v9

    .line 682
    invoke-virtual/range {v25 .. v25}, Ljavafx/geometry/Insets;->getBottom()D

    move-result-wide v25

    move-wide/from16 v0, v25

    double-to-float v0, v0

    move/from16 v25, v0

    move-object/from16 v26, v9

    invoke-virtual/range {v26 .. v26}, Ljavafx/geometry/Insets;->getLeft()D

    move-result-wide v26

    move-wide/from16 v0, v26

    double-to-float v0, v0

    move/from16 v26, v0

    .line 681
    invoke-direct/range {v22 .. v26}, Lcom/sun/javafx/sg/prism/NGRegion;->resizeShape(FFFF)Lcom/sun/javafx/geom/Shape;

    move-result-object v22

    invoke-interface/range {v21 .. v22}, Lcom/sun/prism/Graphics;->draw(Lcom/sun/javafx/geom/Shape;)V

    .line 673
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 659
    .local v5, "outsets":Ljavafx/geometry/Insets;
    .local v6, "outsetShape":Lcom/sun/javafx/geom/Shape;
    .local v7, "outsetShapeBounds":Lcom/sun/javafx/geom/RectBounds;
    .local v8, "textureWidth":I
    .local v9, "textureHeight":I
    .restart local v10    # "border":I
    .restart local v11    # "cached":Lcom/sun/prism/RTTexture;
    .restart local v12    # "rect":Lcom/sun/javafx/geom/Rectangle;
    :cond_3
    move-object/from16 v21, v3

    move-object/from16 v22, v4

    invoke-direct/range {v21 .. v22}, Lcom/sun/javafx/sg/prism/NGRegion;->renderBackgroundShape(Lcom/sun/prism/Graphics;)V

    goto/16 :goto_0

    .line 685
    .end local v5    # "outsets":Ljavafx/geometry/Insets;
    .end local v6    # "outsetShape":Lcom/sun/javafx/geom/Shape;
    .end local v7    # "outsetShapeBounds":Lcom/sun/javafx/geom/RectBounds;
    .end local v8    # "textureWidth":I
    .end local v9    # "textureHeight":I
    .end local v10    # "border":I
    .end local v11    # "cached":Lcom/sun/prism/RTTexture;
    .end local v12    # "rect":Lcom/sun/javafx/geom/Rectangle;
    :cond_4
    return-void
.end method

.method private renderBackgroundRectangle(Lcom/sun/prism/Graphics;)V
    .locals 70

    .prologue
    .line 770
    move-object/from16 v2, p0

    .local v2, "this":Lcom/sun/javafx/sg/prism/NGRegion;
    move-object/from16 v3, p1

    .local v3, "g":Lcom/sun/prism/Graphics;
    move-object/from16 v50, v2

    move-object/from16 v0, v50

    iget-object v0, v0, Lcom/sun/javafx/sg/prism/NGRegion;->backgroundInsets:Ljavafx/geometry/Insets;

    move-object/from16 v50, v0

    if-nez v50, :cond_0

    move-object/from16 v50, v2

    invoke-direct/range {v50 .. v50}, Lcom/sun/javafx/sg/prism/NGRegion;->updateBackgroundInsets()V

    .line 771
    :cond_0
    move-object/from16 v50, v2

    move-object/from16 v0, v50

    iget-object v0, v0, Lcom/sun/javafx/sg/prism/NGRegion;->backgroundInsets:Ljavafx/geometry/Insets;

    move-object/from16 v50, v0

    invoke-virtual/range {v50 .. v50}, Ljavafx/geometry/Insets;->getLeft()D

    move-result-wide v50

    const-wide/high16 v52, 0x3ff0000000000000L    # 1.0

    add-double v50, v50, v52

    move-wide/from16 v4, v50

    .line 772
    .local v4, "leftInset":D
    move-object/from16 v50, v2

    move-object/from16 v0, v50

    iget-object v0, v0, Lcom/sun/javafx/sg/prism/NGRegion;->backgroundInsets:Ljavafx/geometry/Insets;

    move-object/from16 v50, v0

    invoke-virtual/range {v50 .. v50}, Ljavafx/geometry/Insets;->getRight()D

    move-result-wide v50

    const-wide/high16 v52, 0x3ff0000000000000L    # 1.0

    add-double v50, v50, v52

    move-wide/from16 v6, v50

    .line 773
    .local v6, "rightInset":D
    move-object/from16 v50, v2

    move-object/from16 v0, v50

    iget-object v0, v0, Lcom/sun/javafx/sg/prism/NGRegion;->backgroundInsets:Ljavafx/geometry/Insets;

    move-object/from16 v50, v0

    invoke-virtual/range {v50 .. v50}, Ljavafx/geometry/Insets;->getTop()D

    move-result-wide v50

    const-wide/high16 v52, 0x3ff0000000000000L    # 1.0

    add-double v50, v50, v52

    move-wide/from16 v8, v50

    .line 774
    .local v8, "topInset":D
    move-object/from16 v50, v2

    move-object/from16 v0, v50

    iget-object v0, v0, Lcom/sun/javafx/sg/prism/NGRegion;->backgroundInsets:Ljavafx/geometry/Insets;

    move-object/from16 v50, v0

    invoke-virtual/range {v50 .. v50}, Ljavafx/geometry/Insets;->getBottom()D

    move-result-wide v50

    const-wide/high16 v52, 0x3ff0000000000000L    # 1.0

    add-double v50, v50, v52

    move-wide/from16 v10, v50

    .line 778
    .local v10, "bottomInset":D
    move-object/from16 v50, v2

    move-object/from16 v51, v2

    move-object/from16 v0, v51

    iget v0, v0, Lcom/sun/javafx/sg/prism/NGRegion;->width:F

    move/from16 v51, v0

    move/from16 v0, v51

    float-to-double v0, v0

    move-wide/from16 v51, v0

    invoke-direct/range {v50 .. v52}, Lcom/sun/javafx/sg/prism/NGRegion;->roundUp(D)I

    move-result v50

    move/from16 v12, v50

    .line 779
    .local v12, "cacheWidth":I
    move-object/from16 v50, v2

    move-object/from16 v0, v50

    iget v0, v0, Lcom/sun/javafx/sg/prism/NGRegion;->cacheMode:I

    move/from16 v50, v0

    const/16 v51, 0x2

    and-int/lit8 v50, v50, 0x2

    if-eqz v50, :cond_1

    .line 780
    move/from16 v50, v12

    move-wide/from16 v51, v4

    move-wide/from16 v53, v6

    add-double v51, v51, v53

    move-wide/from16 v0, v51

    double-to-int v0, v0

    move/from16 v51, v0

    invoke-static/range {v50 .. v51}, Ljava/lang/Math;->min(II)I

    move-result v50

    move/from16 v12, v50

    .line 782
    :cond_1
    move-object/from16 v50, v2

    move-object/from16 v51, v2

    move-object/from16 v0, v51

    iget v0, v0, Lcom/sun/javafx/sg/prism/NGRegion;->height:F

    move/from16 v51, v0

    move/from16 v0, v51

    float-to-double v0, v0

    move-wide/from16 v51, v0

    invoke-direct/range {v50 .. v52}, Lcom/sun/javafx/sg/prism/NGRegion;->roundUp(D)I

    move-result v50

    move/from16 v13, v50

    .line 783
    .local v13, "cacheHeight":I
    move-object/from16 v50, v2

    move-object/from16 v0, v50

    iget v0, v0, Lcom/sun/javafx/sg/prism/NGRegion;->cacheMode:I

    move/from16 v50, v0

    const/16 v51, 0x1

    and-int/lit8 v50, v50, 0x1

    if-eqz v50, :cond_2

    .line 784
    move/from16 v50, v13

    move-wide/from16 v51, v8

    move-wide/from16 v53, v10

    add-double v51, v51, v53

    move-wide/from16 v0, v51

    double-to-int v0, v0

    move/from16 v51, v0

    invoke-static/range {v50 .. v51}, Ljava/lang/Math;->min(II)I

    move-result v50

    move/from16 v13, v50

    .line 787
    :cond_2
    move-object/from16 v50, v2

    move-object/from16 v0, v50

    iget-object v0, v0, Lcom/sun/javafx/sg/prism/NGRegion;->background:Ljavafx/scene/layout/Background;

    move-object/from16 v50, v0

    invoke-virtual/range {v50 .. v50}, Ljavafx/scene/layout/Background;->getOutsets()Ljavafx/geometry/Insets;

    move-result-object v50

    move-object/from16 v14, v50

    .line 788
    .local v14, "outsets":Ljavafx/geometry/Insets;
    move-object/from16 v50, v2

    move-object/from16 v51, v14

    invoke-virtual/range {v51 .. v51}, Ljavafx/geometry/Insets;->getTop()D

    move-result-wide v51

    invoke-direct/range {v50 .. v52}, Lcom/sun/javafx/sg/prism/NGRegion;->roundUp(D)I

    move-result v50

    move/from16 v15, v50

    .line 789
    .local v15, "outsetsTop":I
    move-object/from16 v50, v2

    move-object/from16 v51, v14

    invoke-virtual/range {v51 .. v51}, Ljavafx/geometry/Insets;->getRight()D

    move-result-wide v51

    invoke-direct/range {v50 .. v52}, Lcom/sun/javafx/sg/prism/NGRegion;->roundUp(D)I

    move-result v50

    move/from16 v16, v50

    .line 790
    .local v16, "outsetsRight":I
    move-object/from16 v50, v2

    move-object/from16 v51, v14

    invoke-virtual/range {v51 .. v51}, Ljavafx/geometry/Insets;->getBottom()D

    move-result-wide v51

    invoke-direct/range {v50 .. v52}, Lcom/sun/javafx/sg/prism/NGRegion;->roundUp(D)I

    move-result v50

    move/from16 v17, v50

    .line 791
    .local v17, "outsetsBottom":I
    move-object/from16 v50, v2

    move-object/from16 v51, v14

    invoke-virtual/range {v51 .. v51}, Ljavafx/geometry/Insets;->getLeft()D

    move-result-wide v51

    invoke-direct/range {v50 .. v52}, Lcom/sun/javafx/sg/prism/NGRegion;->roundUp(D)I

    move-result v50

    move/from16 v18, v50

    .line 795
    .local v18, "outsetsLeft":I
    move/from16 v50, v18

    move/from16 v51, v12

    add-int v50, v50, v51

    move/from16 v51, v16

    add-int v50, v50, v51

    move/from16 v19, v50

    .line 796
    .local v19, "textureWidth":I
    move/from16 v50, v15

    move/from16 v51, v13

    add-int v50, v50, v51

    move/from16 v51, v17

    add-int v50, v50, v51

    move/from16 v20, v50

    .line 803
    .local v20, "textureHeight":I
    move-object/from16 v50, v2

    move-object/from16 v0, v50

    iget-object v0, v0, Lcom/sun/javafx/sg/prism/NGRegion;->background:Ljavafx/scene/layout/Background;

    move-object/from16 v50, v0

    .line 804
    invoke-virtual/range {v50 .. v50}, Ljavafx/scene/layout/Background;->getFills()Ljava/util/List;

    move-result-object v50

    invoke-interface/range {v50 .. v50}, Ljava/util/List;->size()I

    move-result v50

    const/16 v51, 0x1

    move/from16 v0, v50

    move/from16 v1, v51

    if-le v0, v1, :cond_6

    move-object/from16 v50, v2

    move-object/from16 v0, v50

    iget v0, v0, Lcom/sun/javafx/sg/prism/NGRegion;->cacheMode:I

    move/from16 v50, v0

    if-eqz v50, :cond_6

    move-object/from16 v50, v3

    .line 806
    invoke-interface/range {v50 .. v50}, Lcom/sun/prism/Graphics;->getTransformNoClone()Lcom/sun/javafx/geom/transform/BaseTransform;

    move-result-object v50

    invoke-virtual/range {v50 .. v50}, Lcom/sun/javafx/geom/transform/BaseTransform;->isTranslateOrIdentity()Z

    move-result v50

    if-eqz v50, :cond_6

    const/16 v50, 0x1

    :goto_0
    move/from16 v21, v50

    .line 807
    .local v21, "cache":Z
    const/16 v50, 0x1

    move/from16 v22, v50

    .line 808
    .local v22, "border":I
    const/16 v50, 0x0

    move-object/from16 v23, v50

    .line 809
    .local v23, "cached":Lcom/sun/prism/RTTexture;
    const/16 v50, 0x0

    move-object/from16 v24, v50

    .line 810
    .local v24, "rect":Lcom/sun/javafx/geom/Rectangle;
    move/from16 v50, v21

    if-eqz v50, :cond_4

    .line 811
    move-object/from16 v50, v2

    move-object/from16 v51, v3

    invoke-direct/range {v50 .. v51}, Lcom/sun/javafx/sg/prism/NGRegion;->getImageCache(Lcom/sun/prism/Graphics;)Lcom/sun/javafx/sg/prism/RegionImageCache;

    move-result-object v50

    move-object/from16 v25, v50

    .line 812
    .local v25, "imageCache":Lcom/sun/javafx/sg/prism/RegionImageCache;
    move-object/from16 v50, v25

    move/from16 v51, v19

    move/from16 v52, v20

    invoke-virtual/range {v50 .. v52}, Lcom/sun/javafx/sg/prism/RegionImageCache;->isImageCachable(II)Z

    move-result v50

    if-eqz v50, :cond_4

    .line 813
    move-object/from16 v50, v2

    move/from16 v51, v19

    move/from16 v52, v20

    invoke-direct/range {v50 .. v52}, Lcom/sun/javafx/sg/prism/NGRegion;->getCacheKey(II)Ljava/lang/Integer;

    move-result-object v50

    move-object/from16 v26, v50

    .line 814
    .local v26, "key":Ljava/lang/Integer;
    sget-object v50, Lcom/sun/javafx/sg/prism/NGRegion;->TEMP_RECT:Lcom/sun/javafx/geom/Rectangle;

    move-object/from16 v24, v50

    .line 815
    move-object/from16 v50, v24

    const/16 v51, 0x0

    const/16 v52, 0x0

    move/from16 v53, v19

    const/16 v54, 0x1

    add-int/lit8 v53, v53, 0x1

    move/from16 v54, v20

    const/16 v55, 0x1

    add-int/lit8 v54, v54, 0x1

    invoke-virtual/range {v50 .. v54}, Lcom/sun/javafx/geom/Rectangle;->setBounds(IIII)V

    .line 816
    move-object/from16 v50, v25

    move-object/from16 v51, v26

    move-object/from16 v52, v24

    move-object/from16 v53, v2

    move-object/from16 v0, v53

    iget-object v0, v0, Lcom/sun/javafx/sg/prism/NGRegion;->background:Ljavafx/scene/layout/Background;

    move-object/from16 v53, v0

    move-object/from16 v54, v2

    move-object/from16 v0, v54

    iget-object v0, v0, Lcom/sun/javafx/sg/prism/NGRegion;->shape:Lcom/sun/javafx/geom/Shape;

    move-object/from16 v54, v0

    move-object/from16 v55, v3

    invoke-virtual/range {v50 .. v55}, Lcom/sun/javafx/sg/prism/RegionImageCache;->getImageLocation(Ljava/lang/Integer;Lcom/sun/javafx/geom/Rectangle;Ljavafx/scene/layout/Background;Lcom/sun/javafx/geom/Shape;Lcom/sun/prism/Graphics;)Z

    move-result v50

    move/from16 v27, v50

    .line 817
    .local v27, "render":Z
    move-object/from16 v50, v24

    invoke-virtual/range {v50 .. v50}, Lcom/sun/javafx/geom/Rectangle;->isEmpty()Z

    move-result v50

    if-nez v50, :cond_3

    .line 819
    move-object/from16 v50, v25

    invoke-virtual/range {v50 .. v50}, Lcom/sun/javafx/sg/prism/RegionImageCache;->getBackingStore()Lcom/sun/prism/RTTexture;

    move-result-object v50

    move-object/from16 v23, v50

    .line 821
    :cond_3
    move-object/from16 v50, v23

    if-eqz v50, :cond_4

    move/from16 v50, v27

    if-eqz v50, :cond_4

    .line 822
    move-object/from16 v50, v23

    invoke-interface/range {v50 .. v50}, Lcom/sun/prism/RTTexture;->createGraphics()Lcom/sun/prism/Graphics;

    move-result-object v50

    move-object/from16 v28, v50

    .line 827
    .local v28, "cacheGraphics":Lcom/sun/prism/Graphics;
    move-object/from16 v50, v28

    move-object/from16 v51, v24

    move-object/from16 v0, v51

    iget v0, v0, Lcom/sun/javafx/geom/Rectangle;->x:I

    move/from16 v51, v0

    move/from16 v52, v18

    add-int v51, v51, v52

    move/from16 v0, v51

    int-to-float v0, v0

    move/from16 v51, v0

    move-object/from16 v52, v24

    move-object/from16 v0, v52

    iget v0, v0, Lcom/sun/javafx/geom/Rectangle;->y:I

    move/from16 v52, v0

    move/from16 v53, v15

    add-int v52, v52, v53

    move/from16 v0, v52

    int-to-float v0, v0

    move/from16 v52, v0

    invoke-interface/range {v50 .. v52}, Lcom/sun/prism/Graphics;->translate(FF)V

    .line 830
    move-object/from16 v50, v2

    move-object/from16 v51, v28

    move/from16 v52, v12

    move/from16 v0, v52

    int-to-float v0, v0

    move/from16 v52, v0

    move/from16 v53, v13

    move/from16 v0, v53

    int-to-float v0, v0

    move/from16 v53, v0

    invoke-direct/range {v50 .. v53}, Lcom/sun/javafx/sg/prism/NGRegion;->renderBackgroundRectanglesDirectly(Lcom/sun/prism/Graphics;FF)V

    .line 832
    sget-boolean v50, Lcom/sun/javafx/logging/PulseLogger;->PULSE_LOGGING_ENABLED:Z

    if-eqz v50, :cond_4

    .line 833
    const-string v50, "Rendering region background image to cache"

    invoke-static/range {v50 .. v50}, Lcom/sun/javafx/logging/PulseLogger;->incrementCounter(Ljava/lang/String;)V

    .line 841
    .end local v25    # "imageCache":Lcom/sun/javafx/sg/prism/RegionImageCache;
    .end local v26    # "key":Ljava/lang/Integer;
    .end local v27    # "render":Z
    .end local v28    # "cacheGraphics":Lcom/sun/prism/Graphics;
    :cond_4
    move-object/from16 v50, v23

    if-eqz v50, :cond_7

    .line 842
    move-object/from16 v50, v2

    move-object/from16 v51, v3

    move-object/from16 v52, v23

    move-object/from16 v53, v24

    move/from16 v54, v19

    move/from16 v55, v20

    move-wide/from16 v56, v8

    move-wide/from16 v58, v6

    move-wide/from16 v60, v10

    move-wide/from16 v62, v4

    move/from16 v64, v15

    move/from16 v65, v16

    move/from16 v66, v17

    move/from16 v67, v18

    invoke-direct/range {v50 .. v67}, Lcom/sun/javafx/sg/prism/NGRegion;->renderBackgroundRectangleFromCache(Lcom/sun/prism/Graphics;Lcom/sun/prism/RTTexture;Lcom/sun/javafx/geom/Rectangle;IIDDDDIIII)V

    .line 851
    :goto_1
    move-object/from16 v50, v2

    move-object/from16 v0, v50

    iget-object v0, v0, Lcom/sun/javafx/sg/prism/NGRegion;->background:Ljavafx/scene/layout/Background;

    move-object/from16 v50, v0

    invoke-virtual/range {v50 .. v50}, Ljavafx/scene/layout/Background;->getImages()Ljava/util/List;

    move-result-object v50

    move-object/from16 v25, v50

    .line 852
    .local v25, "images":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/layout/BackgroundImage;>;"
    const/16 v50, 0x0

    move/from16 v26, v50

    .local v26, "i":I
    move-object/from16 v50, v25

    invoke-interface/range {v50 .. v50}, Ljava/util/List;->size()I

    move-result v50

    move/from16 v27, v50

    .local v27, "max":I
    :goto_2
    move/from16 v50, v26

    move/from16 v51, v27

    move/from16 v0, v50

    move/from16 v1, v51

    if-ge v0, v1, :cond_16

    .line 853
    move-object/from16 v50, v25

    move/from16 v51, v26

    invoke-interface/range {v50 .. v51}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v50

    check-cast v50, Ljavafx/scene/layout/BackgroundImage;

    move-object/from16 v28, v50

    .line 854
    .local v28, "image":Ljavafx/scene/layout/BackgroundImage;
    move-object/from16 v50, v28

    invoke-virtual/range {v50 .. v50}, Ljavafx/scene/layout/BackgroundImage;->getImage()Ljavafx/scene/image/Image;

    move-result-object v50

    invoke-virtual/range {v50 .. v50}, Ljavafx/scene/image/Image;->impl_getPlatformImage()Ljava/lang/Object;

    move-result-object v50

    check-cast v50, Lcom/sun/prism/Image;

    move-object/from16 v29, v50

    .line 855
    .local v29, "prismImage":Lcom/sun/prism/Image;
    move-object/from16 v50, v29

    if-nez v50, :cond_8

    .line 859
    .line 852
    :cond_5
    :goto_3
    add-int/lit8 v26, v26, 0x1

    goto :goto_2

    .line 806
    .end local v21    # "cache":Z
    .end local v22    # "border":I
    .end local v23    # "cached":Lcom/sun/prism/RTTexture;
    .end local v24    # "rect":Lcom/sun/javafx/geom/Rectangle;
    .end local v25    # "images":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/layout/BackgroundImage;>;"
    .end local v26    # "i":I
    .end local v27    # "max":I
    .end local v28    # "image":Ljavafx/scene/layout/BackgroundImage;
    .end local v29    # "prismImage":Lcom/sun/prism/Image;
    :cond_6
    const/16 v50, 0x0

    goto/16 :goto_0

    .line 848
    .restart local v21    # "cache":Z
    .restart local v22    # "border":I
    .restart local v23    # "cached":Lcom/sun/prism/RTTexture;
    .restart local v24    # "rect":Lcom/sun/javafx/geom/Rectangle;
    :cond_7
    move-object/from16 v50, v2

    move-object/from16 v51, v3

    move-object/from16 v52, v2

    move-object/from16 v0, v52

    iget v0, v0, Lcom/sun/javafx/sg/prism/NGRegion;->width:F

    move/from16 v52, v0

    move-object/from16 v53, v2

    move-object/from16 v0, v53

    iget v0, v0, Lcom/sun/javafx/sg/prism/NGRegion;->height:F

    move/from16 v53, v0

    invoke-direct/range {v50 .. v53}, Lcom/sun/javafx/sg/prism/NGRegion;->renderBackgroundRectanglesDirectly(Lcom/sun/prism/Graphics;FF)V

    goto :goto_1

    .line 862
    .restart local v25    # "images":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/layout/BackgroundImage;>;"
    .restart local v26    # "i":I
    .restart local v27    # "max":I
    .restart local v28    # "image":Ljavafx/scene/layout/BackgroundImage;
    .restart local v29    # "prismImage":Lcom/sun/prism/Image;
    :cond_8
    move-object/from16 v50, v28

    invoke-virtual/range {v50 .. v50}, Ljavafx/scene/layout/BackgroundImage;->getImage()Ljavafx/scene/image/Image;

    move-result-object v50

    invoke-virtual/range {v50 .. v50}, Ljavafx/scene/image/Image;->getWidth()D

    move-result-wide v50

    move-wide/from16 v0, v50

    double-to-int v0, v0

    move/from16 v50, v0

    move/from16 v30, v50

    .line 863
    .local v30, "imgUnscaledWidth":I
    move-object/from16 v50, v28

    invoke-virtual/range {v50 .. v50}, Ljavafx/scene/layout/BackgroundImage;->getImage()Ljavafx/scene/image/Image;

    move-result-object v50

    invoke-virtual/range {v50 .. v50}, Ljavafx/scene/image/Image;->getHeight()D

    move-result-wide v50

    move-wide/from16 v0, v50

    double-to-int v0, v0

    move/from16 v50, v0

    move/from16 v31, v50

    .line 864
    .local v31, "imgUnscaledHeight":I
    move-object/from16 v50, v29

    invoke-virtual/range {v50 .. v50}, Lcom/sun/prism/Image;->getWidth()I

    move-result v50

    move/from16 v32, v50

    .line 865
    .local v32, "imgWidth":I
    move-object/from16 v50, v29

    invoke-virtual/range {v50 .. v50}, Lcom/sun/prism/Image;->getHeight()I

    move-result v50

    move/from16 v33, v50

    .line 867
    .local v33, "imgHeight":I
    move/from16 v50, v32

    if-eqz v50, :cond_5

    move/from16 v50, v33

    if-eqz v50, :cond_5

    .line 868
    move-object/from16 v50, v28

    invoke-virtual/range {v50 .. v50}, Ljavafx/scene/layout/BackgroundImage;->getSize()Ljavafx/scene/layout/BackgroundSize;

    move-result-object v50

    move-object/from16 v34, v50

    .line 869
    .local v34, "size":Ljavafx/scene/layout/BackgroundSize;
    move-object/from16 v50, v34

    invoke-virtual/range {v50 .. v50}, Ljavafx/scene/layout/BackgroundSize;->isCover()Z

    move-result v50

    if-eqz v50, :cond_9

    .line 874
    move-object/from16 v50, v2

    move-object/from16 v0, v50

    iget v0, v0, Lcom/sun/javafx/sg/prism/NGRegion;->width:F

    move/from16 v50, v0

    move/from16 v51, v32

    move/from16 v0, v51

    int-to-float v0, v0

    move/from16 v51, v0

    div-float v50, v50, v51

    move-object/from16 v51, v2

    move-object/from16 v0, v51

    iget v0, v0, Lcom/sun/javafx/sg/prism/NGRegion;->height:F

    move/from16 v51, v0

    move/from16 v52, v33

    move/from16 v0, v52

    int-to-float v0, v0

    move/from16 v52, v0

    div-float v51, v51, v52

    invoke-static/range {v50 .. v51}, Ljava/lang/Math;->max(FF)F

    move-result v50

    move/from16 v35, v50

    .line 875
    .local v35, "scale":F
    move-object/from16 v50, v3

    .line 876
    invoke-interface/range {v50 .. v50}, Lcom/sun/prism/Graphics;->getResourceFactory()Lcom/sun/prism/ResourceFactory;

    move-result-object v50

    move-object/from16 v51, v29

    sget-object v52, Lcom/sun/prism/Texture$WrapMode;->CLAMP_TO_EDGE:Lcom/sun/prism/Texture$WrapMode;

    invoke-interface/range {v50 .. v52}, Lcom/sun/prism/ResourceFactory;->getCachedTexture(Lcom/sun/prism/Image;Lcom/sun/prism/Texture$WrapMode;)Lcom/sun/prism/Texture;

    move-result-object v50

    move-object/from16 v36, v50

    .line 877
    .local v36, "texture":Lcom/sun/prism/Texture;
    move-object/from16 v50, v3

    move-object/from16 v51, v36

    const/16 v52, 0x0

    const/16 v53, 0x0

    move-object/from16 v54, v2

    move-object/from16 v0, v54

    iget v0, v0, Lcom/sun/javafx/sg/prism/NGRegion;->width:F

    move/from16 v54, v0

    move-object/from16 v55, v2

    move-object/from16 v0, v55

    iget v0, v0, Lcom/sun/javafx/sg/prism/NGRegion;->height:F

    move/from16 v55, v0

    const/16 v56, 0x0

    const/16 v57, 0x0

    move-object/from16 v58, v2

    move-object/from16 v0, v58

    iget v0, v0, Lcom/sun/javafx/sg/prism/NGRegion;->width:F

    move/from16 v58, v0

    move/from16 v59, v35

    div-float v58, v58, v59

    move-object/from16 v59, v2

    move-object/from16 v0, v59

    iget v0, v0, Lcom/sun/javafx/sg/prism/NGRegion;->height:F

    move/from16 v59, v0

    move/from16 v60, v35

    div-float v59, v59, v60

    invoke-interface/range {v50 .. v59}, Lcom/sun/prism/Graphics;->drawTexture(Lcom/sun/prism/Texture;FFFFFFFF)V

    .line 881
    move-object/from16 v50, v36

    invoke-interface/range {v50 .. v50}, Lcom/sun/prism/Texture;->unlock()V

    .line 882
    goto/16 :goto_3

    .line 888
    .end local v35    # "scale":F
    .end local v36    # "texture":Lcom/sun/prism/Texture;
    :cond_9
    move-object/from16 v50, v34

    invoke-virtual/range {v50 .. v50}, Ljavafx/scene/layout/BackgroundSize;->isWidthAsPercentage()Z

    move-result v50

    if-eqz v50, :cond_a

    move-object/from16 v50, v34

    invoke-virtual/range {v50 .. v50}, Ljavafx/scene/layout/BackgroundSize;->getWidth()D

    move-result-wide v50

    move-object/from16 v52, v2

    move-object/from16 v0, v52

    iget v0, v0, Lcom/sun/javafx/sg/prism/NGRegion;->width:F

    move/from16 v52, v0

    move/from16 v0, v52

    float-to-double v0, v0

    move-wide/from16 v52, v0

    mul-double v50, v50, v52

    :goto_4
    move-wide/from16 v35, v50

    .line 889
    .local v35, "w":D
    move-object/from16 v50, v34

    invoke-virtual/range {v50 .. v50}, Ljavafx/scene/layout/BackgroundSize;->isHeightAsPercentage()Z

    move-result v50

    if-eqz v50, :cond_b

    move-object/from16 v50, v34

    invoke-virtual/range {v50 .. v50}, Ljavafx/scene/layout/BackgroundSize;->getHeight()D

    move-result-wide v50

    move-object/from16 v52, v2

    move-object/from16 v0, v52

    iget v0, v0, Lcom/sun/javafx/sg/prism/NGRegion;->height:F

    move/from16 v52, v0

    move/from16 v0, v52

    float-to-double v0, v0

    move-wide/from16 v52, v0

    mul-double v50, v50, v52

    :goto_5
    move-wide/from16 v37, v50

    .line 895
    .local v37, "h":D
    move-object/from16 v50, v34

    invoke-virtual/range {v50 .. v50}, Ljavafx/scene/layout/BackgroundSize;->isContain()Z

    move-result v50

    if-eqz v50, :cond_c

    .line 899
    move-object/from16 v50, v2

    move-object/from16 v0, v50

    iget v0, v0, Lcom/sun/javafx/sg/prism/NGRegion;->width:F

    move/from16 v50, v0

    move/from16 v51, v30

    move/from16 v0, v51

    int-to-float v0, v0

    move/from16 v51, v0

    div-float v50, v50, v51

    move/from16 v43, v50

    .line 900
    .local v43, "scaleX":F
    move-object/from16 v50, v2

    move-object/from16 v0, v50

    iget v0, v0, Lcom/sun/javafx/sg/prism/NGRegion;->height:F

    move/from16 v50, v0

    move/from16 v51, v31

    move/from16 v0, v51

    int-to-float v0, v0

    move/from16 v51, v0

    div-float v50, v50, v51

    move/from16 v44, v50

    .line 901
    .local v44, "scaleY":F
    move/from16 v50, v43

    move/from16 v51, v44

    invoke-static/range {v50 .. v51}, Ljava/lang/Math;->min(FF)F

    move-result v50

    move/from16 v45, v50

    .line 902
    .local v45, "scale":F
    move/from16 v50, v45

    move/from16 v51, v30

    move/from16 v0, v51

    int-to-float v0, v0

    move/from16 v51, v0

    mul-float v50, v50, v51

    move/from16 v0, v50

    float-to-double v0, v0

    move-wide/from16 v50, v0

    invoke-static/range {v50 .. v51}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v50

    move-wide/from16 v39, v50

    .line 903
    .local v39, "tileWidth":D
    move/from16 v50, v45

    move/from16 v51, v31

    move/from16 v0, v51

    int-to-float v0, v0

    move/from16 v51, v0

    mul-float v50, v50, v51

    move/from16 v0, v50

    float-to-double v0, v0

    move-wide/from16 v50, v0

    invoke-static/range {v50 .. v51}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v50

    move-wide/from16 v41, v50

    .line 930
    .end local v43    # "scaleX":F
    .end local v44    # "scaleY":F
    .end local v45    # "scale":F
    .local v41, "tileHeight":D
    :goto_6
    move-object/from16 v50, v28

    invoke-virtual/range {v50 .. v50}, Ljavafx/scene/layout/BackgroundImage;->getPosition()Ljavafx/scene/layout/BackgroundPosition;

    move-result-object v50

    move-object/from16 v43, v50

    .line 933
    .local v43, "pos":Ljavafx/scene/layout/BackgroundPosition;
    move-object/from16 v50, v43

    invoke-virtual/range {v50 .. v50}, Ljavafx/scene/layout/BackgroundPosition;->getHorizontalSide()Ljavafx/geometry/Side;

    move-result-object v50

    sget-object v51, Ljavafx/geometry/Side;->LEFT:Ljavafx/geometry/Side;

    move-object/from16 v0, v50

    move-object/from16 v1, v51

    if-ne v0, v1, :cond_11

    .line 934
    move-object/from16 v50, v43

    invoke-virtual/range {v50 .. v50}, Ljavafx/scene/layout/BackgroundPosition;->getHorizontalPosition()D

    move-result-wide v50

    move-wide/from16 v48, v50

    .line 935
    .local v48, "position":D
    move-object/from16 v50, v43

    invoke-virtual/range {v50 .. v50}, Ljavafx/scene/layout/BackgroundPosition;->isHorizontalAsPercentage()Z

    move-result v50

    if-eqz v50, :cond_10

    .line 936
    move-wide/from16 v50, v48

    move-object/from16 v52, v2

    move-object/from16 v0, v52

    iget v0, v0, Lcom/sun/javafx/sg/prism/NGRegion;->width:F

    move/from16 v52, v0

    move/from16 v0, v52

    float-to-double v0, v0

    move-wide/from16 v52, v0

    mul-double v50, v50, v52

    move-wide/from16 v52, v48

    move-wide/from16 v54, v39

    mul-double v52, v52, v54

    sub-double v50, v50, v52

    move-wide/from16 v44, v50

    .line 940
    .line 949
    .end local v48    # "position":D
    .local v44, "tileX":D
    :goto_7
    move-object/from16 v50, v43

    invoke-virtual/range {v50 .. v50}, Ljavafx/scene/layout/BackgroundPosition;->getVerticalSide()Ljavafx/geometry/Side;

    move-result-object v50

    sget-object v51, Ljavafx/geometry/Side;->TOP:Ljavafx/geometry/Side;

    move-object/from16 v0, v50

    move-object/from16 v1, v51

    if-ne v0, v1, :cond_14

    .line 950
    move-object/from16 v50, v43

    invoke-virtual/range {v50 .. v50}, Ljavafx/scene/layout/BackgroundPosition;->getVerticalPosition()D

    move-result-wide v50

    move-wide/from16 v48, v50

    .line 951
    .restart local v48    # "position":D
    move-object/from16 v50, v43

    invoke-virtual/range {v50 .. v50}, Ljavafx/scene/layout/BackgroundPosition;->isVerticalAsPercentage()Z

    move-result v50

    if-eqz v50, :cond_13

    .line 952
    move-wide/from16 v50, v48

    move-object/from16 v52, v2

    move-object/from16 v0, v52

    iget v0, v0, Lcom/sun/javafx/sg/prism/NGRegion;->height:F

    move/from16 v52, v0

    move/from16 v0, v52

    float-to-double v0, v0

    move-wide/from16 v52, v0

    mul-double v50, v50, v52

    move-wide/from16 v52, v48

    move-wide/from16 v54, v41

    mul-double v52, v52, v54

    sub-double v50, v50, v52

    move-wide/from16 v46, v50

    .line 956
    .line 967
    .end local v48    # "position":D
    .local v46, "tileY":D
    :goto_8
    move-object/from16 v50, v2

    move-object/from16 v51, v3

    move-object/from16 v52, v29

    move-object/from16 v53, v28

    invoke-virtual/range {v53 .. v53}, Ljavafx/scene/layout/BackgroundImage;->getRepeatX()Ljavafx/scene/layout/BackgroundRepeat;

    move-result-object v53

    move-object/from16 v54, v28

    invoke-virtual/range {v54 .. v54}, Ljavafx/scene/layout/BackgroundImage;->getRepeatY()Ljavafx/scene/layout/BackgroundRepeat;

    move-result-object v54

    move-object/from16 v55, v43

    .line 968
    invoke-virtual/range {v55 .. v55}, Ljavafx/scene/layout/BackgroundPosition;->getHorizontalSide()Ljavafx/geometry/Side;

    move-result-object v55

    move-object/from16 v56, v43

    invoke-virtual/range {v56 .. v56}, Ljavafx/scene/layout/BackgroundPosition;->getVerticalSide()Ljavafx/geometry/Side;

    move-result-object v56

    const/16 v57, 0x0

    const/16 v58, 0x0

    move-object/from16 v59, v2

    move-object/from16 v0, v59

    iget v0, v0, Lcom/sun/javafx/sg/prism/NGRegion;->width:F

    move/from16 v59, v0

    move-object/from16 v60, v2

    move-object/from16 v0, v60

    iget v0, v0, Lcom/sun/javafx/sg/prism/NGRegion;->height:F

    move/from16 v60, v0

    const/16 v61, 0x0

    const/16 v62, 0x0

    move/from16 v63, v32

    move/from16 v64, v33

    move-wide/from16 v65, v44

    move-wide/from16 v0, v65

    double-to-float v0, v0

    move/from16 v65, v0

    move-wide/from16 v66, v46

    move-wide/from16 v0, v66

    double-to-float v0, v0

    move/from16 v66, v0

    move-wide/from16 v67, v39

    move-wide/from16 v0, v67

    double-to-float v0, v0

    move/from16 v67, v0

    move-wide/from16 v68, v41

    move-wide/from16 v0, v68

    double-to-float v0, v0

    move/from16 v68, v0

    .line 967
    invoke-direct/range {v50 .. v68}, Lcom/sun/javafx/sg/prism/NGRegion;->paintTiles(Lcom/sun/prism/Graphics;Lcom/sun/prism/Image;Ljavafx/scene/layout/BackgroundRepeat;Ljavafx/scene/layout/BackgroundRepeat;Ljavafx/geometry/Side;Ljavafx/geometry/Side;FFFFIIIIFFFF)V

    goto/16 :goto_3

    .line 888
    .end local v35    # "w":D
    .end local v37    # "h":D
    .end local v39    # "tileWidth":D
    .end local v41    # "tileHeight":D
    .end local v43    # "pos":Ljavafx/scene/layout/BackgroundPosition;
    .end local v44    # "tileX":D
    .end local v46    # "tileY":D
    :cond_a
    move-object/from16 v50, v34

    invoke-virtual/range {v50 .. v50}, Ljavafx/scene/layout/BackgroundSize;->getWidth()D

    move-result-wide v50

    goto/16 :goto_4

    .line 889
    .restart local v35    # "w":D
    :cond_b
    move-object/from16 v50, v34

    invoke-virtual/range {v50 .. v50}, Ljavafx/scene/layout/BackgroundSize;->getHeight()D

    move-result-wide v50

    goto/16 :goto_5

    .line 904
    .restart local v37    # "h":D
    :cond_c
    move-object/from16 v50, v34

    invoke-virtual/range {v50 .. v50}, Ljavafx/scene/layout/BackgroundSize;->getWidth()D

    move-result-wide v50

    const-wide/16 v52, 0x0

    cmpl-double v50, v50, v52

    if-ltz v50, :cond_d

    move-object/from16 v50, v34

    invoke-virtual/range {v50 .. v50}, Ljavafx/scene/layout/BackgroundSize;->getHeight()D

    move-result-wide v50

    const-wide/16 v52, 0x0

    cmpl-double v50, v50, v52

    if-ltz v50, :cond_d

    .line 908
    move-wide/from16 v50, v35

    move-wide/from16 v39, v50

    .line 909
    .restart local v39    # "tileWidth":D
    move-wide/from16 v50, v37

    move-wide/from16 v41, v50

    .restart local v41    # "tileHeight":D
    goto/16 :goto_6

    .line 910
    .end local v39    # "tileWidth":D
    .end local v41    # "tileHeight":D
    :cond_d
    move-wide/from16 v50, v35

    const-wide/16 v52, 0x0

    cmpl-double v50, v50, v52

    if-ltz v50, :cond_e

    .line 912
    move-wide/from16 v50, v35

    move-wide/from16 v39, v50

    .line 913
    .restart local v39    # "tileWidth":D
    move-wide/from16 v50, v39

    move/from16 v52, v30

    move/from16 v0, v52

    int-to-double v0, v0

    move-wide/from16 v52, v0

    div-double v50, v50, v52

    move-wide/from16 v43, v50

    .line 914
    .local v43, "scale":D
    move/from16 v50, v31

    move/from16 v0, v50

    int-to-double v0, v0

    move-wide/from16 v50, v0

    move-wide/from16 v52, v43

    mul-double v50, v50, v52

    move-wide/from16 v41, v50

    .line 915
    .restart local v41    # "tileHeight":D
    goto/16 :goto_6

    .end local v39    # "tileWidth":D
    .end local v41    # "tileHeight":D
    .end local v43    # "scale":D
    :cond_e
    move-wide/from16 v50, v37

    const-wide/16 v52, 0x0

    cmpl-double v50, v50, v52

    if-ltz v50, :cond_f

    .line 917
    move-wide/from16 v50, v37

    move-wide/from16 v41, v50

    .line 918
    .restart local v41    # "tileHeight":D
    move-wide/from16 v50, v41

    move/from16 v52, v31

    move/from16 v0, v52

    int-to-double v0, v0

    move-wide/from16 v52, v0

    div-double v50, v50, v52

    move-wide/from16 v43, v50

    .line 919
    .restart local v43    # "scale":D
    move/from16 v50, v30

    move/from16 v0, v50

    int-to-double v0, v0

    move-wide/from16 v50, v0

    move-wide/from16 v52, v43

    mul-double v50, v50, v52

    move-wide/from16 v39, v50

    .line 920
    .restart local v39    # "tileWidth":D
    goto/16 :goto_6

    .line 922
    .end local v39    # "tileWidth":D
    .end local v41    # "tileHeight":D
    .end local v43    # "scale":D
    :cond_f
    move/from16 v50, v30

    move/from16 v0, v50

    int-to-double v0, v0

    move-wide/from16 v50, v0

    move-wide/from16 v39, v50

    .line 923
    .restart local v39    # "tileWidth":D
    move/from16 v50, v31

    move/from16 v0, v50

    int-to-double v0, v0

    move-wide/from16 v50, v0

    move-wide/from16 v41, v50

    .restart local v41    # "tileHeight":D
    goto/16 :goto_6

    .line 938
    .local v43, "pos":Ljavafx/scene/layout/BackgroundPosition;
    .restart local v48    # "position":D
    :cond_10
    move-wide/from16 v50, v48

    move-wide/from16 v44, v50

    .restart local v44    # "tileX":D
    goto/16 :goto_7

    .line 941
    .end local v44    # "tileX":D
    .end local v48    # "position":D
    :cond_11
    move-object/from16 v50, v43

    invoke-virtual/range {v50 .. v50}, Ljavafx/scene/layout/BackgroundPosition;->isHorizontalAsPercentage()Z

    move-result v50

    if-eqz v50, :cond_12

    .line 942
    const-wide/high16 v50, 0x3ff0000000000000L    # 1.0

    move-object/from16 v52, v43

    invoke-virtual/range {v52 .. v52}, Ljavafx/scene/layout/BackgroundPosition;->getHorizontalPosition()D

    move-result-wide v52

    sub-double v50, v50, v52

    move-wide/from16 v48, v50

    .line 943
    .restart local v48    # "position":D
    move-wide/from16 v50, v48

    move-object/from16 v52, v2

    move-object/from16 v0, v52

    iget v0, v0, Lcom/sun/javafx/sg/prism/NGRegion;->width:F

    move/from16 v52, v0

    move/from16 v0, v52

    float-to-double v0, v0

    move-wide/from16 v52, v0

    mul-double v50, v50, v52

    move-wide/from16 v52, v48

    move-wide/from16 v54, v39

    mul-double v52, v52, v54

    sub-double v50, v50, v52

    move-wide/from16 v44, v50

    .line 944
    .restart local v44    # "tileX":D
    goto/16 :goto_7

    .line 945
    .end local v44    # "tileX":D
    .end local v48    # "position":D
    :cond_12
    move-object/from16 v50, v2

    move-object/from16 v0, v50

    iget v0, v0, Lcom/sun/javafx/sg/prism/NGRegion;->width:F

    move/from16 v50, v0

    move/from16 v0, v50

    float-to-double v0, v0

    move-wide/from16 v50, v0

    move-wide/from16 v52, v39

    sub-double v50, v50, v52

    move-object/from16 v52, v43

    invoke-virtual/range {v52 .. v52}, Ljavafx/scene/layout/BackgroundPosition;->getHorizontalPosition()D

    move-result-wide v52

    sub-double v50, v50, v52

    move-wide/from16 v44, v50

    .restart local v44    # "tileX":D
    goto/16 :goto_7

    .line 954
    .restart local v48    # "position":D
    :cond_13
    move-wide/from16 v50, v48

    move-wide/from16 v46, v50

    .restart local v46    # "tileY":D
    goto/16 :goto_8

    .line 957
    .end local v46    # "tileY":D
    .end local v48    # "position":D
    :cond_14
    move-object/from16 v50, v43

    invoke-virtual/range {v50 .. v50}, Ljavafx/scene/layout/BackgroundPosition;->isVerticalAsPercentage()Z

    move-result v50

    if-eqz v50, :cond_15

    .line 958
    const-wide/high16 v50, 0x3ff0000000000000L    # 1.0

    move-object/from16 v52, v43

    invoke-virtual/range {v52 .. v52}, Ljavafx/scene/layout/BackgroundPosition;->getVerticalPosition()D

    move-result-wide v52

    sub-double v50, v50, v52

    move-wide/from16 v48, v50

    .line 959
    .restart local v48    # "position":D
    move-wide/from16 v50, v48

    move-object/from16 v52, v2

    move-object/from16 v0, v52

    iget v0, v0, Lcom/sun/javafx/sg/prism/NGRegion;->height:F

    move/from16 v52, v0

    move/from16 v0, v52

    float-to-double v0, v0

    move-wide/from16 v52, v0

    mul-double v50, v50, v52

    move-wide/from16 v52, v48

    move-wide/from16 v54, v41

    mul-double v52, v52, v54

    sub-double v50, v50, v52

    move-wide/from16 v46, v50

    .line 960
    .restart local v46    # "tileY":D
    goto/16 :goto_8

    .line 961
    .end local v46    # "tileY":D
    .end local v48    # "position":D
    :cond_15
    move-object/from16 v50, v2

    move-object/from16 v0, v50

    iget v0, v0, Lcom/sun/javafx/sg/prism/NGRegion;->height:F

    move/from16 v50, v0

    move/from16 v0, v50

    float-to-double v0, v0

    move-wide/from16 v50, v0

    move-wide/from16 v52, v41

    sub-double v50, v50, v52

    move-object/from16 v52, v43

    invoke-virtual/range {v52 .. v52}, Ljavafx/scene/layout/BackgroundPosition;->getVerticalPosition()D

    move-result-wide v52

    sub-double v50, v50, v52

    move-wide/from16 v46, v50

    .restart local v46    # "tileY":D
    goto/16 :goto_8

    .line 975
    .end local v28    # "image":Ljavafx/scene/layout/BackgroundImage;
    .end local v29    # "prismImage":Lcom/sun/prism/Image;
    .end local v30    # "imgUnscaledWidth":I
    .end local v31    # "imgUnscaledHeight":I
    .end local v32    # "imgWidth":I
    .end local v33    # "imgHeight":I
    .end local v34    # "size":Ljavafx/scene/layout/BackgroundSize;
    .end local v35    # "w":D
    .end local v37    # "h":D
    .end local v39    # "tileWidth":D
    .end local v41    # "tileHeight":D
    .end local v43    # "pos":Ljavafx/scene/layout/BackgroundPosition;
    .end local v44    # "tileX":D
    .end local v46    # "tileY":D
    :cond_16
    return-void
.end method

.method private renderBackgroundRectangleFromCache(Lcom/sun/prism/Graphics;Lcom/sun/prism/RTTexture;Lcom/sun/javafx/geom/Rectangle;IIDDDDIIII)V
    .locals 72

    .prologue
    .line 989
    move-object/from16 v3, p0

    .local v3, "this":Lcom/sun/javafx/sg/prism/NGRegion;
    move-object/from16 v4, p1

    .local v4, "g":Lcom/sun/prism/Graphics;
    move-object/from16 v5, p2

    .local v5, "cached":Lcom/sun/prism/RTTexture;
    move-object/from16 v6, p3

    .local v6, "rect":Lcom/sun/javafx/geom/Rectangle;
    move/from16 v7, p4

    .local v7, "textureWidth":I
    move/from16 v8, p5

    .local v8, "textureHeight":I
    move-wide/from16 v9, p6

    .local v9, "topInset":D
    move-wide/from16 v11, p8

    .local v11, "rightInset":D
    move-wide/from16 v13, p10

    .local v13, "bottomInset":D
    move-wide/from16 v15, p12

    .local v15, "leftInset":D
    move/from16 v17, p14

    .local v17, "outsetsTop":I
    move/from16 v18, p15

    .local v18, "outsetsRight":I
    move/from16 v19, p16

    .local v19, "outsetsBottom":I
    move/from16 v20, p17

    .local v20, "outsetsLeft":I
    const/high16 v54, 0x3efe0000    # 0.49609375f

    move/from16 v21, v54

    .line 990
    .local v21, "pad":F
    move/from16 v54, v20

    move/from16 v0, v54

    int-to-float v0, v0

    move/from16 v54, v0

    move-object/from16 v55, v3

    move-object/from16 v0, v55

    iget v0, v0, Lcom/sun/javafx/sg/prism/NGRegion;->width:F

    move/from16 v55, v0

    add-float v54, v54, v55

    move/from16 v55, v18

    move/from16 v0, v55

    int-to-float v0, v0

    move/from16 v55, v0

    add-float v54, v54, v55

    move/from16 v22, v54

    .line 991
    .local v22, "dstWidth":F
    move/from16 v54, v17

    move/from16 v0, v54

    int-to-float v0, v0

    move/from16 v54, v0

    move-object/from16 v55, v3

    move-object/from16 v0, v55

    iget v0, v0, Lcom/sun/javafx/sg/prism/NGRegion;->height:F

    move/from16 v55, v0

    add-float v54, v54, v55

    move/from16 v55, v19

    move/from16 v0, v55

    int-to-float v0, v0

    move/from16 v55, v0

    add-float v54, v54, v55

    move/from16 v23, v54

    .line 992
    .local v23, "dstHeight":F
    move/from16 v54, v7

    move/from16 v0, v54

    int-to-float v0, v0

    move/from16 v54, v0

    move/from16 v55, v22

    cmpl-float v54, v54, v55

    if-nez v54, :cond_3

    const/16 v54, 0x1

    :goto_0
    move/from16 v24, v54

    .line 993
    .local v24, "sameWidth":Z
    move/from16 v54, v8

    move/from16 v0, v54

    int-to-float v0, v0

    move/from16 v54, v0

    move/from16 v55, v23

    cmpl-float v54, v54, v55

    if-nez v54, :cond_4

    const/16 v54, 0x1

    :goto_1
    move/from16 v25, v54

    .line 994
    .local v25, "sameHeight":Z
    move/from16 v54, v20

    move/from16 v0, v54

    neg-int v0, v0

    move/from16 v54, v0

    move/from16 v0, v54

    int-to-float v0, v0

    move/from16 v54, v0

    const/high16 v55, 0x3efe0000    # 0.49609375f

    sub-float v54, v54, v55

    move/from16 v26, v54

    .line 995
    .local v26, "dstX1":F
    move/from16 v54, v17

    move/from16 v0, v54

    neg-int v0, v0

    move/from16 v54, v0

    move/from16 v0, v54

    int-to-float v0, v0

    move/from16 v54, v0

    const/high16 v55, 0x3efe0000    # 0.49609375f

    sub-float v54, v54, v55

    move/from16 v27, v54

    .line 996
    .local v27, "dstY1":F
    move-object/from16 v54, v3

    move-object/from16 v0, v54

    iget v0, v0, Lcom/sun/javafx/sg/prism/NGRegion;->width:F

    move/from16 v54, v0

    move/from16 v55, v18

    move/from16 v0, v55

    int-to-float v0, v0

    move/from16 v55, v0

    add-float v54, v54, v55

    const/high16 v55, 0x3efe0000    # 0.49609375f

    add-float v54, v54, v55

    move/from16 v28, v54

    .line 997
    .local v28, "dstX2":F
    move-object/from16 v54, v3

    move-object/from16 v0, v54

    iget v0, v0, Lcom/sun/javafx/sg/prism/NGRegion;->height:F

    move/from16 v54, v0

    move/from16 v55, v19

    move/from16 v0, v55

    int-to-float v0, v0

    move/from16 v55, v0

    add-float v54, v54, v55

    const/high16 v55, 0x3efe0000    # 0.49609375f

    add-float v54, v54, v55

    move/from16 v29, v54

    .line 998
    .local v29, "dstY2":F
    move-object/from16 v54, v6

    move-object/from16 v0, v54

    iget v0, v0, Lcom/sun/javafx/geom/Rectangle;->x:I

    move/from16 v54, v0

    move/from16 v0, v54

    int-to-float v0, v0

    move/from16 v54, v0

    const/high16 v55, 0x3efe0000    # 0.49609375f

    sub-float v54, v54, v55

    move/from16 v30, v54

    .line 999
    .local v30, "srcX1":F
    move-object/from16 v54, v6

    move-object/from16 v0, v54

    iget v0, v0, Lcom/sun/javafx/geom/Rectangle;->y:I

    move/from16 v54, v0

    move/from16 v0, v54

    int-to-float v0, v0

    move/from16 v54, v0

    const/high16 v55, 0x3efe0000    # 0.49609375f

    sub-float v54, v54, v55

    move/from16 v31, v54

    .line 1000
    .local v31, "srcY1":F
    move-object/from16 v54, v6

    move-object/from16 v0, v54

    iget v0, v0, Lcom/sun/javafx/geom/Rectangle;->x:I

    move/from16 v54, v0

    move/from16 v55, v7

    add-int v54, v54, v55

    move/from16 v0, v54

    int-to-float v0, v0

    move/from16 v54, v0

    const/high16 v55, 0x3efe0000    # 0.49609375f

    add-float v54, v54, v55

    move/from16 v32, v54

    .line 1001
    .local v32, "srcX2":F
    move-object/from16 v54, v6

    move-object/from16 v0, v54

    iget v0, v0, Lcom/sun/javafx/geom/Rectangle;->y:I

    move/from16 v54, v0

    move/from16 v55, v8

    add-int v54, v54, v55

    move/from16 v0, v54

    int-to-float v0, v0

    move/from16 v54, v0

    const/high16 v55, 0x3efe0000    # 0.49609375f

    add-float v54, v54, v55

    move/from16 v33, v54

    .line 1005
    .local v33, "srcY2":F
    move-wide/from16 v54, v15

    move-wide/from16 v34, v54

    .line 1006
    .local v34, "adjustedLeftInset":D
    move-wide/from16 v54, v11

    move-wide/from16 v36, v54

    .line 1007
    .local v36, "adjustedRightInset":D
    move-wide/from16 v54, v9

    move-wide/from16 v38, v54

    .line 1008
    .local v38, "adjustedTopInset":D
    move-wide/from16 v54, v13

    move-wide/from16 v40, v54

    .line 1009
    .local v40, "adjustedBottomInset":D
    move-wide/from16 v54, v15

    move-wide/from16 v56, v11

    add-double v54, v54, v56

    move-object/from16 v56, v3

    move-object/from16 v0, v56

    iget v0, v0, Lcom/sun/javafx/sg/prism/NGRegion;->width:F

    move/from16 v56, v0

    move/from16 v0, v56

    float-to-double v0, v0

    move-wide/from16 v56, v0

    cmpl-double v54, v54, v56

    if-lez v54, :cond_0

    .line 1010
    move-object/from16 v54, v3

    move-object/from16 v0, v54

    iget v0, v0, Lcom/sun/javafx/sg/prism/NGRegion;->width:F

    move/from16 v54, v0

    move/from16 v0, v54

    float-to-double v0, v0

    move-wide/from16 v54, v0

    move-wide/from16 v56, v15

    move-wide/from16 v58, v11

    add-double v56, v56, v58

    div-double v54, v54, v56

    move-wide/from16 v42, v54

    .line 1011
    .local v42, "fraction":D
    move-wide/from16 v54, v34

    move-wide/from16 v56, v42

    mul-double v54, v54, v56

    move-wide/from16 v34, v54

    .line 1012
    move-wide/from16 v54, v36

    move-wide/from16 v56, v42

    mul-double v54, v54, v56

    move-wide/from16 v36, v54

    .line 1014
    .end local v42    # "fraction":D
    :cond_0
    move-wide/from16 v54, v9

    move-wide/from16 v56, v13

    add-double v54, v54, v56

    move-object/from16 v56, v3

    move-object/from16 v0, v56

    iget v0, v0, Lcom/sun/javafx/sg/prism/NGRegion;->height:F

    move/from16 v56, v0

    move/from16 v0, v56

    float-to-double v0, v0

    move-wide/from16 v56, v0

    cmpl-double v54, v54, v56

    if-lez v54, :cond_1

    .line 1015
    move-object/from16 v54, v3

    move-object/from16 v0, v54

    iget v0, v0, Lcom/sun/javafx/sg/prism/NGRegion;->height:F

    move/from16 v54, v0

    move/from16 v0, v54

    float-to-double v0, v0

    move-wide/from16 v54, v0

    move-wide/from16 v56, v9

    move-wide/from16 v58, v13

    add-double v56, v56, v58

    div-double v54, v54, v56

    move-wide/from16 v42, v54

    .line 1016
    .restart local v42    # "fraction":D
    move-wide/from16 v54, v38

    move-wide/from16 v56, v42

    mul-double v54, v54, v56

    move-wide/from16 v38, v54

    .line 1017
    move-wide/from16 v54, v40

    move-wide/from16 v56, v42

    mul-double v54, v54, v56

    move-wide/from16 v40, v54

    .line 1020
    .end local v42    # "fraction":D
    :cond_1
    move/from16 v54, v24

    if-eqz v54, :cond_5

    move/from16 v54, v25

    if-eqz v54, :cond_5

    .line 1021
    move-object/from16 v54, v4

    move-object/from16 v55, v5

    move/from16 v56, v26

    move/from16 v57, v27

    move/from16 v58, v28

    move/from16 v59, v29

    move/from16 v60, v30

    move/from16 v61, v31

    move/from16 v62, v32

    move/from16 v63, v33

    invoke-interface/range {v54 .. v63}, Lcom/sun/prism/Graphics;->drawTexture(Lcom/sun/prism/Texture;FFFFFFFF)V

    .line 1073
    :goto_2
    sget-boolean v54, Lcom/sun/javafx/logging/PulseLogger;->PULSE_LOGGING_ENABLED:Z

    if-eqz v54, :cond_2

    .line 1074
    const-string v54, "Cached region background image used"

    invoke-static/range {v54 .. v54}, Lcom/sun/javafx/logging/PulseLogger;->incrementCounter(Ljava/lang/String;)V

    .line 1076
    :cond_2
    return-void

    .line 992
    .end local v24    # "sameWidth":Z
    .end local v25    # "sameHeight":Z
    .end local v26    # "dstX1":F
    .end local v27    # "dstY1":F
    .end local v28    # "dstX2":F
    .end local v29    # "dstY2":F
    .end local v30    # "srcX1":F
    .end local v31    # "srcY1":F
    .end local v32    # "srcX2":F
    .end local v33    # "srcY2":F
    .end local v34    # "adjustedLeftInset":D
    .end local v36    # "adjustedRightInset":D
    .end local v38    # "adjustedTopInset":D
    .end local v40    # "adjustedBottomInset":D
    :cond_3
    const/16 v54, 0x0

    goto/16 :goto_0

    .line 993
    .restart local v24    # "sameWidth":Z
    :cond_4
    const/16 v54, 0x0

    goto/16 :goto_1

    .line 1022
    .restart local v25    # "sameHeight":Z
    .restart local v26    # "dstX1":F
    .restart local v27    # "dstY1":F
    .restart local v28    # "dstX2":F
    .restart local v29    # "dstY2":F
    .restart local v30    # "srcX1":F
    .restart local v31    # "srcY1":F
    .restart local v32    # "srcX2":F
    .restart local v33    # "srcY2":F
    .restart local v34    # "adjustedLeftInset":D
    .restart local v36    # "adjustedRightInset":D
    .restart local v38    # "adjustedTopInset":D
    .restart local v40    # "adjustedBottomInset":D
    :cond_5
    move/from16 v54, v25

    if-eqz v54, :cond_6

    .line 1024
    const/high16 v54, 0x3efe0000    # 0.49609375f

    move-wide/from16 v55, v34

    move/from16 v57, v20

    move/from16 v0, v57

    int-to-double v0, v0

    move-wide/from16 v57, v0

    add-double v55, v55, v57

    move-wide/from16 v0, v55

    double-to-float v0, v0

    move/from16 v55, v0

    add-float v54, v54, v55

    move/from16 v42, v54

    .line 1025
    .local v42, "left":F
    const/high16 v54, 0x3efe0000    # 0.49609375f

    move-wide/from16 v55, v36

    move/from16 v57, v18

    move/from16 v0, v57

    int-to-double v0, v0

    move-wide/from16 v57, v0

    add-double v55, v55, v57

    move-wide/from16 v0, v55

    double-to-float v0, v0

    move/from16 v55, v0

    add-float v54, v54, v55

    move/from16 v43, v54

    .line 1027
    .local v43, "right":F
    move/from16 v54, v26

    move/from16 v55, v42

    add-float v54, v54, v55

    move/from16 v44, v54

    .line 1028
    .local v44, "dstLeftX":F
    move/from16 v54, v28

    move/from16 v55, v43

    sub-float v54, v54, v55

    move/from16 v45, v54

    .line 1029
    .local v45, "dstRightX":F
    move/from16 v54, v30

    move/from16 v55, v42

    add-float v54, v54, v55

    move/from16 v46, v54

    .line 1030
    .local v46, "srcLeftX":F
    move/from16 v54, v32

    move/from16 v55, v43

    sub-float v54, v54, v55

    move/from16 v47, v54

    .line 1032
    .local v47, "srcRightX":F
    move-object/from16 v54, v4

    move-object/from16 v55, v5

    move/from16 v56, v26

    move/from16 v57, v27

    move/from16 v58, v28

    move/from16 v59, v29

    move/from16 v60, v30

    move/from16 v61, v31

    move/from16 v62, v32

    move/from16 v63, v33

    move/from16 v64, v44

    move/from16 v65, v45

    move/from16 v66, v46

    move/from16 v67, v47

    invoke-interface/range {v54 .. v67}, Lcom/sun/prism/Graphics;->drawTexture3SliceH(Lcom/sun/prism/Texture;FFFFFFFFFFFF)V

    .line 1036
    goto/16 :goto_2

    .end local v42    # "left":F
    .end local v43    # "right":F
    .end local v44    # "dstLeftX":F
    .end local v45    # "dstRightX":F
    .end local v46    # "srcLeftX":F
    .end local v47    # "srcRightX":F
    :cond_6
    move/from16 v54, v24

    if-eqz v54, :cond_7

    .line 1038
    const/high16 v54, 0x3efe0000    # 0.49609375f

    move-wide/from16 v55, v38

    move/from16 v57, v17

    move/from16 v0, v57

    int-to-double v0, v0

    move-wide/from16 v57, v0

    add-double v55, v55, v57

    move-wide/from16 v0, v55

    double-to-float v0, v0

    move/from16 v55, v0

    add-float v54, v54, v55

    move/from16 v42, v54

    .line 1039
    .local v42, "top":F
    const/high16 v54, 0x3efe0000    # 0.49609375f

    move-wide/from16 v55, v40

    move/from16 v57, v19

    move/from16 v0, v57

    int-to-double v0, v0

    move-wide/from16 v57, v0

    add-double v55, v55, v57

    move-wide/from16 v0, v55

    double-to-float v0, v0

    move/from16 v55, v0

    add-float v54, v54, v55

    move/from16 v43, v54

    .line 1041
    .local v43, "bottom":F
    move/from16 v54, v27

    move/from16 v55, v42

    add-float v54, v54, v55

    move/from16 v44, v54

    .line 1042
    .local v44, "dstTopY":F
    move/from16 v54, v29

    move/from16 v55, v43

    sub-float v54, v54, v55

    move/from16 v45, v54

    .line 1043
    .local v45, "dstBottomY":F
    move/from16 v54, v31

    move/from16 v55, v42

    add-float v54, v54, v55

    move/from16 v46, v54

    .line 1044
    .local v46, "srcTopY":F
    move/from16 v54, v33

    move/from16 v55, v43

    sub-float v54, v54, v55

    move/from16 v47, v54

    .line 1046
    .local v47, "srcBottomY":F
    move-object/from16 v54, v4

    move-object/from16 v55, v5

    move/from16 v56, v26

    move/from16 v57, v27

    move/from16 v58, v28

    move/from16 v59, v29

    move/from16 v60, v30

    move/from16 v61, v31

    move/from16 v62, v32

    move/from16 v63, v33

    move/from16 v64, v44

    move/from16 v65, v45

    move/from16 v66, v46

    move/from16 v67, v47

    invoke-interface/range {v54 .. v67}, Lcom/sun/prism/Graphics;->drawTexture3SliceV(Lcom/sun/prism/Texture;FFFFFFFFFFFF)V

    .line 1050
    goto/16 :goto_2

    .line 1052
    .end local v42    # "top":F
    .end local v43    # "bottom":F
    .end local v44    # "dstTopY":F
    .end local v45    # "dstBottomY":F
    .end local v46    # "srcTopY":F
    .end local v47    # "srcBottomY":F
    :cond_7
    const/high16 v54, 0x3efe0000    # 0.49609375f

    move-wide/from16 v55, v34

    move/from16 v57, v20

    move/from16 v0, v57

    int-to-double v0, v0

    move-wide/from16 v57, v0

    add-double v55, v55, v57

    move-wide/from16 v0, v55

    double-to-float v0, v0

    move/from16 v55, v0

    add-float v54, v54, v55

    move/from16 v42, v54

    .line 1053
    .local v42, "left":F
    const/high16 v54, 0x3efe0000    # 0.49609375f

    move-wide/from16 v55, v38

    move/from16 v57, v17

    move/from16 v0, v57

    int-to-double v0, v0

    move-wide/from16 v57, v0

    add-double v55, v55, v57

    move-wide/from16 v0, v55

    double-to-float v0, v0

    move/from16 v55, v0

    add-float v54, v54, v55

    move/from16 v43, v54

    .line 1054
    .local v43, "top":F
    const/high16 v54, 0x3efe0000    # 0.49609375f

    move-wide/from16 v55, v36

    move/from16 v57, v18

    move/from16 v0, v57

    int-to-double v0, v0

    move-wide/from16 v57, v0

    add-double v55, v55, v57

    move-wide/from16 v0, v55

    double-to-float v0, v0

    move/from16 v55, v0

    add-float v54, v54, v55

    move/from16 v44, v54

    .line 1055
    .local v44, "right":F
    const/high16 v54, 0x3efe0000    # 0.49609375f

    move-wide/from16 v55, v40

    move/from16 v57, v19

    move/from16 v0, v57

    int-to-double v0, v0

    move-wide/from16 v57, v0

    add-double v55, v55, v57

    move-wide/from16 v0, v55

    double-to-float v0, v0

    move/from16 v55, v0

    add-float v54, v54, v55

    move/from16 v45, v54

    .line 1057
    .local v45, "bottom":F
    move/from16 v54, v26

    move/from16 v55, v42

    add-float v54, v54, v55

    move/from16 v46, v54

    .line 1058
    .local v46, "dstLeftX":F
    move/from16 v54, v28

    move/from16 v55, v44

    sub-float v54, v54, v55

    move/from16 v47, v54

    .line 1059
    .local v47, "dstRightX":F
    move/from16 v54, v30

    move/from16 v55, v42

    add-float v54, v54, v55

    move/from16 v48, v54

    .line 1060
    .local v48, "srcLeftX":F
    move/from16 v54, v32

    move/from16 v55, v44

    sub-float v54, v54, v55

    move/from16 v49, v54

    .line 1061
    .local v49, "srcRightX":F
    move/from16 v54, v27

    move/from16 v55, v43

    add-float v54, v54, v55

    move/from16 v50, v54

    .line 1062
    .local v50, "dstTopY":F
    move/from16 v54, v29

    move/from16 v55, v45

    sub-float v54, v54, v55

    move/from16 v51, v54

    .line 1063
    .local v51, "dstBottomY":F
    move/from16 v54, v31

    move/from16 v55, v43

    add-float v54, v54, v55

    move/from16 v52, v54

    .line 1064
    .local v52, "srcTopY":F
    move/from16 v54, v33

    move/from16 v55, v45

    sub-float v54, v54, v55

    move/from16 v53, v54

    .line 1066
    .local v53, "srcBottomY":F
    move-object/from16 v54, v4

    move-object/from16 v55, v5

    move/from16 v56, v26

    move/from16 v57, v27

    move/from16 v58, v28

    move/from16 v59, v29

    move/from16 v60, v30

    move/from16 v61, v31

    move/from16 v62, v32

    move/from16 v63, v33

    move/from16 v64, v46

    move/from16 v65, v50

    move/from16 v66, v47

    move/from16 v67, v51

    move/from16 v68, v48

    move/from16 v69, v52

    move/from16 v70, v49

    move/from16 v71, v53

    invoke-interface/range {v54 .. v71}, Lcom/sun/prism/Graphics;->drawTexture9Slice(Lcom/sun/prism/Texture;FFFFFFFFFFFFFFFF)V

    goto/16 :goto_2
.end method

.method private renderBackgroundRectanglesDirectly(Lcom/sun/prism/Graphics;FF)V
    .locals 34

    .prologue
    .line 1079
    move-object/from16 v3, p0

    .local v3, "this":Lcom/sun/javafx/sg/prism/NGRegion;
    move-object/from16 v4, p1

    .local v4, "g":Lcom/sun/prism/Graphics;
    move/from16 v5, p2

    .local v5, "width":F
    move/from16 v6, p3

    .local v6, "height":F
    move-object/from16 v24, v3

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/sun/javafx/sg/prism/NGRegion;->background:Ljavafx/scene/layout/Background;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljavafx/scene/layout/Background;->getFills()Ljava/util/List;

    move-result-object v24

    move-object/from16 v7, v24

    .line 1080
    .local v7, "fills":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/layout/BackgroundFill;>;"
    const/16 v24, 0x0

    move/from16 v8, v24

    .local v8, "i":I
    move-object/from16 v24, v7

    invoke-interface/range {v24 .. v24}, Ljava/util/List;->size()I

    move-result v24

    move/from16 v9, v24

    .local v9, "max":I
    :goto_0
    move/from16 v24, v8

    move/from16 v25, v9

    move/from16 v0, v24

    move/from16 v1, v25

    if-ge v0, v1, :cond_7

    .line 1081
    move-object/from16 v24, v7

    move/from16 v25, v8

    invoke-interface/range {v24 .. v25}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljavafx/scene/layout/BackgroundFill;

    move-object/from16 v10, v24

    .line 1082
    .local v10, "fill":Ljavafx/scene/layout/BackgroundFill;
    move-object/from16 v24, v10

    invoke-virtual/range {v24 .. v24}, Ljavafx/scene/layout/BackgroundFill;->getInsets()Ljavafx/geometry/Insets;

    move-result-object v24

    move-object/from16 v11, v24

    .line 1083
    .local v11, "insets":Ljavafx/geometry/Insets;
    move-object/from16 v24, v11

    invoke-virtual/range {v24 .. v24}, Ljavafx/geometry/Insets;->getTop()D

    move-result-wide v24

    move-wide/from16 v0, v24

    double-to-float v0, v0

    move/from16 v24, v0

    move/from16 v12, v24

    .line 1084
    .local v12, "t":F
    move-object/from16 v24, v11

    invoke-virtual/range {v24 .. v24}, Ljavafx/geometry/Insets;->getLeft()D

    move-result-wide v24

    move-wide/from16 v0, v24

    double-to-float v0, v0

    move/from16 v24, v0

    move/from16 v13, v24

    .line 1085
    .local v13, "l":F
    move-object/from16 v24, v11

    invoke-virtual/range {v24 .. v24}, Ljavafx/geometry/Insets;->getBottom()D

    move-result-wide v24

    move-wide/from16 v0, v24

    double-to-float v0, v0

    move/from16 v24, v0

    move/from16 v14, v24

    .line 1086
    .local v14, "b":F
    move-object/from16 v24, v11

    invoke-virtual/range {v24 .. v24}, Ljavafx/geometry/Insets;->getRight()D

    move-result-wide v24

    move-wide/from16 v0, v24

    double-to-float v0, v0

    move/from16 v24, v0

    move/from16 v15, v24

    .line 1088
    .local v15, "r":F
    move/from16 v24, v5

    move/from16 v25, v13

    sub-float v24, v24, v25

    move/from16 v25, v15

    sub-float v24, v24, v25

    move/from16 v16, v24

    .line 1089
    .local v16, "w":F
    move/from16 v24, v6

    move/from16 v25, v12

    sub-float v24, v24, v25

    move/from16 v25, v14

    sub-float v24, v24, v25

    move/from16 v17, v24

    .line 1093
    .local v17, "h":F
    move/from16 v24, v16

    const/16 v25, 0x0

    cmpl-float v24, v24, v25

    if-lez v24, :cond_1

    move/from16 v24, v17

    const/16 v25, 0x0

    cmpl-float v24, v24, v25

    if-lez v24, :cond_1

    .line 1095
    move-object/from16 v24, v10

    invoke-virtual/range {v24 .. v24}, Ljavafx/scene/layout/BackgroundFill;->getFill()Ljavafx/scene/paint/Paint;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/sun/javafx/sg/prism/NGRegion;->getPlatformPaint(Ljavafx/scene/paint/Paint;)Lcom/sun/prism/paint/Paint;

    move-result-object v24

    move-object/from16 v18, v24

    .line 1096
    .local v18, "paint":Lcom/sun/prism/paint/Paint;
    move-object/from16 v24, v4

    move-object/from16 v25, v18

    invoke-interface/range {v24 .. v25}, Lcom/sun/prism/Graphics;->setPaint(Lcom/sun/prism/paint/Paint;)V

    .line 1097
    move-object/from16 v24, v3

    move/from16 v25, v8

    invoke-direct/range {v24 .. v25}, Lcom/sun/javafx/sg/prism/NGRegion;->getNormalizedFillRadii(I)Ljavafx/scene/layout/CornerRadii;

    move-result-object v24

    move-object/from16 v19, v24

    .line 1100
    .local v19, "radii":Ljavafx/scene/layout/CornerRadii;
    move-object/from16 v24, v19

    invoke-virtual/range {v24 .. v24}, Ljavafx/scene/layout/CornerRadii;->isUniform()Z

    move-result v24

    if-eqz v24, :cond_5

    .line 1101
    invoke-static {}, Lcom/sun/javafx/application/PlatformImpl;->isCaspian()Z

    move-result v24

    if-nez v24, :cond_0

    invoke-static {}, Lcom/sun/javafx/PlatformUtil;->isEmbedded()Z

    move-result v24

    if-nez v24, :cond_0

    invoke-static {}, Lcom/sun/javafx/PlatformUtil;->isIOS()Z

    move-result v24

    if-nez v24, :cond_0

    move-object/from16 v24, v19

    invoke-virtual/range {v24 .. v24}, Ljavafx/scene/layout/CornerRadii;->getTopLeftHorizontalRadius()D

    move-result-wide v24

    const-wide/16 v26, 0x0

    cmpl-double v24, v24, v26

    if-lez v24, :cond_0

    move-object/from16 v24, v19

    invoke-virtual/range {v24 .. v24}, Ljavafx/scene/layout/CornerRadii;->getTopLeftHorizontalRadius()D

    move-result-wide v24

    const-wide/high16 v26, 0x4010000000000000L    # 4.0

    cmpg-double v24, v24, v26

    if-lez v24, :cond_5

    .line 1104
    :cond_0
    move-object/from16 v24, v19

    invoke-virtual/range {v24 .. v24}, Ljavafx/scene/layout/CornerRadii;->getTopLeftHorizontalRadius()D

    move-result-wide v24

    move-wide/from16 v0, v24

    double-to-float v0, v0

    move/from16 v24, v0

    move/from16 v20, v24

    .line 1105
    .local v20, "tlhr":F
    move-object/from16 v24, v19

    invoke-virtual/range {v24 .. v24}, Ljavafx/scene/layout/CornerRadii;->getTopLeftVerticalRadius()D

    move-result-wide v24

    move-wide/from16 v0, v24

    double-to-float v0, v0

    move/from16 v24, v0

    move/from16 v21, v24

    .line 1106
    .local v21, "tlvr":F
    move/from16 v24, v20

    const/16 v25, 0x0

    cmpl-float v24, v24, v25

    if-nez v24, :cond_2

    move/from16 v24, v21

    const/16 v25, 0x0

    cmpl-float v24, v24, v25

    if-nez v24, :cond_2

    .line 1108
    move-object/from16 v24, v4

    move/from16 v25, v13

    move/from16 v26, v12

    move/from16 v27, v16

    move/from16 v28, v17

    invoke-interface/range {v24 .. v28}, Lcom/sun/prism/Graphics;->fillRect(FFFF)V

    .line 1121
    .line 1080
    .end local v18    # "paint":Lcom/sun/prism/paint/Paint;
    .end local v19    # "radii":Ljavafx/scene/layout/CornerRadii;
    .end local v20    # "tlhr":F
    .end local v21    # "tlvr":F
    :cond_1
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    .line 1112
    .restart local v18    # "paint":Lcom/sun/prism/paint/Paint;
    .restart local v19    # "radii":Ljavafx/scene/layout/CornerRadii;
    .restart local v20    # "tlhr":F
    .restart local v21    # "tlvr":F
    :cond_2
    move/from16 v24, v20

    move/from16 v25, v20

    add-float v24, v24, v25

    move/from16 v22, v24

    .line 1113
    .local v22, "arcWidth":F
    move/from16 v24, v21

    move/from16 v25, v21

    add-float v24, v24, v25

    move/from16 v23, v24

    .line 1117
    .local v23, "arcHeight":F
    move/from16 v24, v22

    move/from16 v25, v16

    cmpl-float v24, v24, v25

    if-lez v24, :cond_3

    move/from16 v24, v16

    move/from16 v22, v24

    .line 1118
    :cond_3
    move/from16 v24, v23

    move/from16 v25, v17

    cmpl-float v24, v24, v25

    if-lez v24, :cond_4

    move/from16 v24, v17

    move/from16 v23, v24

    .line 1119
    :cond_4
    move-object/from16 v24, v4

    move/from16 v25, v13

    move/from16 v26, v12

    move/from16 v27, v16

    move/from16 v28, v17

    move/from16 v29, v22

    move/from16 v30, v23

    invoke-interface/range {v24 .. v30}, Lcom/sun/prism/Graphics;->fillRoundRect(FFFFFF)V

    goto :goto_1

    .line 1122
    .end local v20    # "tlhr":F
    .end local v21    # "tlvr":F
    .end local v22    # "arcWidth":F
    .end local v23    # "arcHeight":F
    :cond_5
    sget-boolean v24, Lcom/sun/javafx/logging/PulseLogger;->PULSE_LOGGING_ENABLED:Z

    if-eqz v24, :cond_6

    .line 1123
    const-string v24, "NGRegion renderBackgrounds slow path"

    invoke-static/range {v24 .. v24}, Lcom/sun/javafx/logging/PulseLogger;->incrementCounter(Ljava/lang/String;)V

    .line 1124
    new-instance v24, Ljava/lang/StringBuilder;

    move-object/from16 v33, v24

    move-object/from16 v24, v33

    move-object/from16 v25, v33

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Slow background path for "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v25, v3

    invoke-virtual/range {v25 .. v25}, Lcom/sun/javafx/sg/prism/NGRegion;->getName()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/sun/javafx/logging/PulseLogger;->addMessage(Ljava/lang/String;)V

    .line 1130
    :cond_6
    move-object/from16 v24, v4

    move-object/from16 v25, v3

    move/from16 v26, v5

    move/from16 v27, v6

    move/from16 v28, v12

    move/from16 v29, v13

    move/from16 v30, v14

    move/from16 v31, v15

    move-object/from16 v32, v19

    invoke-direct/range {v25 .. v32}, Lcom/sun/javafx/sg/prism/NGRegion;->createPath(FFFFFFLjavafx/scene/layout/CornerRadii;)Lcom/sun/javafx/geom/Path2D;

    move-result-object v25

    invoke-interface/range {v24 .. v25}, Lcom/sun/prism/Graphics;->fill(Lcom/sun/javafx/geom/Shape;)V

    goto/16 :goto_1

    .line 1134
    .end local v10    # "fill":Ljavafx/scene/layout/BackgroundFill;
    .end local v11    # "insets":Ljavafx/geometry/Insets;
    .end local v12    # "t":F
    .end local v13    # "l":F
    .end local v14    # "b":F
    .end local v15    # "r":F
    .end local v16    # "w":F
    .end local v17    # "h":F
    .end local v18    # "paint":Lcom/sun/prism/paint/Paint;
    .end local v19    # "radii":Ljavafx/scene/layout/CornerRadii;
    :cond_7
    return-void
.end method

.method private renderBackgroundShape(Lcom/sun/prism/Graphics;)V
    .locals 23

    .prologue
    .line 688
    move-object/from16 v2, p0

    .local v2, "this":Lcom/sun/javafx/sg/prism/NGRegion;
    move-object/from16 v3, p1

    .local v3, "g":Lcom/sun/prism/Graphics;
    sget-boolean v13, Lcom/sun/javafx/logging/PulseLogger;->PULSE_LOGGING_ENABLED:Z

    if-eqz v13, :cond_0

    .line 689
    const-string v13, "NGRegion renderBackgroundShape slow path"

    invoke-static {v13}, Lcom/sun/javafx/logging/PulseLogger;->incrementCounter(Ljava/lang/String;)V

    .line 690
    new-instance v13, Ljava/lang/StringBuilder;

    move-object/from16 v22, v13

    move-object/from16 v13, v22

    move-object/from16 v14, v22

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Slow shape path for "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object v14, v2

    invoke-virtual {v14}, Lcom/sun/javafx/sg/prism/NGRegion;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/sun/javafx/logging/PulseLogger;->addMessage(Ljava/lang/String;)V

    .line 696
    :cond_0
    move-object v13, v2

    iget-object v13, v13, Lcom/sun/javafx/sg/prism/NGRegion;->background:Ljavafx/scene/layout/Background;

    invoke-virtual {v13}, Ljavafx/scene/layout/Background;->getFills()Ljava/util/List;

    move-result-object v13

    move-object v4, v13

    .line 697
    .local v4, "fills":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/layout/BackgroundFill;>;"
    const/4 v13, 0x0

    move v5, v13

    .local v5, "i":I
    move-object v13, v4

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    move v6, v13

    .local v6, "max":I
    :goto_0
    move v13, v5

    move v14, v6

    if-ge v13, v14, :cond_2

    .line 698
    move-object v13, v4

    move v14, v5

    invoke-interface {v13, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljavafx/scene/layout/BackgroundFill;

    move-object v7, v13

    .line 701
    .local v7, "fill":Ljavafx/scene/layout/BackgroundFill;
    move-object v13, v7

    invoke-virtual {v13}, Ljavafx/scene/layout/BackgroundFill;->getFill()Ljavafx/scene/paint/Paint;

    move-result-object v13

    invoke-static {v13}, Lcom/sun/javafx/sg/prism/NGRegion;->getPlatformPaint(Ljavafx/scene/paint/Paint;)Lcom/sun/prism/paint/Paint;

    move-result-object v13

    move-object v8, v13

    .line 702
    .local v8, "paint":Lcom/sun/prism/paint/Paint;
    sget-boolean v13, Lcom/sun/javafx/sg/prism/NGRegion;->$assertionsDisabled:Z

    if-nez v13, :cond_1

    move-object v13, v8

    if-nez v13, :cond_1

    new-instance v13, Ljava/lang/AssertionError;

    move-object/from16 v22, v13

    move-object/from16 v13, v22

    move-object/from16 v14, v22

    invoke-direct {v14}, Ljava/lang/AssertionError;-><init>()V

    throw v13

    .line 703
    :cond_1
    move-object v13, v3

    move-object v14, v8

    invoke-interface {v13, v14}, Lcom/sun/prism/Graphics;->setPaint(Lcom/sun/prism/paint/Paint;)V

    .line 706
    move-object v13, v7

    invoke-virtual {v13}, Ljavafx/scene/layout/BackgroundFill;->getInsets()Ljavafx/geometry/Insets;

    move-result-object v13

    move-object v9, v13

    .line 707
    .local v9, "insets":Ljavafx/geometry/Insets;
    move-object v13, v3

    move-object v14, v2

    move-object v15, v9

    invoke-virtual {v15}, Ljavafx/geometry/Insets;->getTop()D

    move-result-wide v15

    double-to-float v15, v15

    move-object/from16 v16, v9

    invoke-virtual/range {v16 .. v16}, Ljavafx/geometry/Insets;->getRight()D

    move-result-wide v16

    move-wide/from16 v0, v16

    double-to-float v0, v0

    move/from16 v16, v0

    move-object/from16 v17, v9

    .line 708
    invoke-virtual/range {v17 .. v17}, Ljavafx/geometry/Insets;->getBottom()D

    move-result-wide v17

    move-wide/from16 v0, v17

    double-to-float v0, v0

    move/from16 v17, v0

    move-object/from16 v18, v9

    invoke-virtual/range {v18 .. v18}, Ljavafx/geometry/Insets;->getLeft()D

    move-result-wide v18

    move-wide/from16 v0, v18

    double-to-float v0, v0

    move/from16 v18, v0

    .line 707
    invoke-direct/range {v14 .. v18}, Lcom/sun/javafx/sg/prism/NGRegion;->resizeShape(FFFF)Lcom/sun/javafx/geom/Shape;

    move-result-object v14

    invoke-interface {v13, v14}, Lcom/sun/prism/Graphics;->fill(Lcom/sun/javafx/geom/Shape;)V

    .line 697
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 714
    .end local v7    # "fill":Ljavafx/scene/layout/BackgroundFill;
    .end local v8    # "paint":Lcom/sun/prism/paint/Paint;
    .end local v9    # "insets":Ljavafx/geometry/Insets;
    :cond_2
    move-object v13, v2

    iget-object v13, v13, Lcom/sun/javafx/sg/prism/NGRegion;->background:Ljavafx/scene/layout/Background;

    invoke-virtual {v13}, Ljavafx/scene/layout/Background;->getImages()Ljava/util/List;

    move-result-object v13

    move-object v5, v13

    .line 715
    .local v5, "images":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/layout/BackgroundImage;>;"
    const/4 v13, 0x0

    move v6, v13

    .local v6, "i":I
    move-object v13, v5

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    move v7, v13

    .local v7, "max":I
    :goto_1
    move v13, v6

    move v14, v7

    if-ge v13, v14, :cond_5

    .line 716
    move-object v13, v5

    move v14, v6

    invoke-interface {v13, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljavafx/scene/layout/BackgroundImage;

    move-object v8, v13

    .line 717
    .local v8, "image":Ljavafx/scene/layout/BackgroundImage;
    move-object v13, v8

    invoke-virtual {v13}, Ljavafx/scene/layout/BackgroundImage;->getImage()Ljavafx/scene/image/Image;

    move-result-object v13

    invoke-virtual {v13}, Ljavafx/scene/image/Image;->impl_getPlatformImage()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/sun/prism/Image;

    move-object v9, v13

    .line 718
    .local v9, "prismImage":Lcom/sun/prism/Image;
    move-object v13, v9

    if-nez v13, :cond_3

    .line 722
    .line 715
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 726
    :cond_3
    move-object v13, v2

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-direct/range {v13 .. v17}, Lcom/sun/javafx/sg/prism/NGRegion;->resizeShape(FFFF)Lcom/sun/javafx/geom/Shape;

    move-result-object v13

    move-object v10, v13

    .line 729
    .local v10, "translatedShape":Lcom/sun/javafx/geom/Shape;
    move-object v13, v10

    invoke-virtual {v13}, Lcom/sun/javafx/geom/Shape;->getBounds()Lcom/sun/javafx/geom/RectBounds;

    move-result-object v13

    move-object v11, v13

    .line 730
    .local v11, "bounds":Lcom/sun/javafx/geom/RectBounds;
    move-object v13, v8

    invoke-virtual {v13}, Ljavafx/scene/layout/BackgroundImage;->getSize()Ljavafx/scene/layout/BackgroundSize;

    move-result-object v13

    invoke-virtual {v13}, Ljavafx/scene/layout/BackgroundSize;->isCover()Z

    move-result v13

    if-eqz v13, :cond_4

    new-instance v13, Lcom/sun/prism/paint/ImagePattern;

    move-object/from16 v22, v13

    move-object/from16 v13, v22

    move-object/from16 v14, v22

    move-object v15, v9

    move-object/from16 v16, v11

    .line 731
    invoke-virtual/range {v16 .. v16}, Lcom/sun/javafx/geom/RectBounds;->getMinX()F

    move-result v16

    move-object/from16 v17, v11

    invoke-virtual/range {v17 .. v17}, Lcom/sun/javafx/geom/RectBounds;->getMinY()F

    move-result v17

    move-object/from16 v18, v11

    .line 732
    invoke-virtual/range {v18 .. v18}, Lcom/sun/javafx/geom/RectBounds;->getWidth()F

    move-result v18

    move-object/from16 v19, v11

    invoke-virtual/range {v19 .. v19}, Lcom/sun/javafx/geom/RectBounds;->getHeight()F

    move-result v19

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-direct/range {v14 .. v21}, Lcom/sun/prism/paint/ImagePattern;-><init>(Lcom/sun/prism/Image;FFFFZZ)V

    .line 734
    :goto_3
    move-object v12, v13

    .line 735
    .local v12, "pattern":Lcom/sun/prism/paint/ImagePattern;
    move-object v13, v3

    move-object v14, v12

    invoke-interface {v13, v14}, Lcom/sun/prism/Graphics;->setPaint(Lcom/sun/prism/paint/Paint;)V

    .line 737
    move-object v13, v3

    move-object v14, v10

    invoke-interface {v13, v14}, Lcom/sun/prism/Graphics;->fill(Lcom/sun/javafx/geom/Shape;)V

    goto :goto_2

    .line 732
    .end local v12    # "pattern":Lcom/sun/prism/paint/ImagePattern;
    :cond_4
    new-instance v13, Lcom/sun/prism/paint/ImagePattern;

    move-object/from16 v22, v13

    move-object/from16 v13, v22

    move-object/from16 v14, v22

    move-object v15, v9

    move-object/from16 v16, v11

    .line 733
    invoke-virtual/range {v16 .. v16}, Lcom/sun/javafx/geom/RectBounds;->getMinX()F

    move-result v16

    move-object/from16 v17, v11

    invoke-virtual/range {v17 .. v17}, Lcom/sun/javafx/geom/RectBounds;->getMinY()F

    move-result v17

    move-object/from16 v18, v9

    .line 734
    invoke-virtual/range {v18 .. v18}, Lcom/sun/prism/Image;->getWidth()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move-object/from16 v19, v9

    invoke-virtual/range {v19 .. v19}, Lcom/sun/prism/Image;->getHeight()I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-direct/range {v14 .. v21}, Lcom/sun/prism/paint/ImagePattern;-><init>(Lcom/sun/prism/Image;FFFFZZ)V

    goto :goto_3

    .line 739
    .end local v8    # "image":Ljavafx/scene/layout/BackgroundImage;
    .end local v9    # "prismImage":Lcom/sun/prism/Image;
    .end local v10    # "translatedShape":Lcom/sun/javafx/geom/Shape;
    .end local v11    # "bounds":Lcom/sun/javafx/geom/RectBounds;
    :cond_5
    return-void
.end method

.method private renderBorderRectangle(Lcom/sun/prism/Graphics;)V
    .locals 65

    .prologue
    .line 1137
    move-object/from16 v2, p0

    .local v2, "this":Lcom/sun/javafx/sg/prism/NGRegion;
    move-object/from16 v3, p1

    .local v3, "g":Lcom/sun/prism/Graphics;
    move-object/from16 v46, v2

    move-object/from16 v0, v46

    iget-object v0, v0, Lcom/sun/javafx/sg/prism/NGRegion;->border:Ljavafx/scene/layout/Border;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Ljavafx/scene/layout/Border;->getImages()Ljava/util/List;

    move-result-object v46

    move-object/from16 v4, v46

    .line 1138
    .local v4, "images":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/layout/BorderImage;>;"
    move-object/from16 v46, v4

    invoke-interface/range {v46 .. v46}, Ljava/util/List;->isEmpty()Z

    move-result v46

    if-eqz v46, :cond_2

    move-object/from16 v46, v2

    move-object/from16 v0, v46

    iget-object v0, v0, Lcom/sun/javafx/sg/prism/NGRegion;->border:Ljavafx/scene/layout/Border;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Ljavafx/scene/layout/Border;->getStrokes()Ljava/util/List;

    move-result-object v46

    :goto_0
    move-object/from16 v5, v46

    .line 1139
    .local v5, "strokes":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/layout/BorderStroke;>;"
    const/16 v46, 0x0

    move/from16 v6, v46

    .local v6, "i":I
    move-object/from16 v46, v5

    invoke-interface/range {v46 .. v46}, Ljava/util/List;->size()I

    move-result v46

    move/from16 v7, v46

    .local v7, "max":I
    :goto_1
    move/from16 v46, v6

    move/from16 v47, v7

    move/from16 v0, v46

    move/from16 v1, v47

    if-ge v0, v1, :cond_23

    .line 1140
    move-object/from16 v46, v5

    move/from16 v47, v6

    invoke-interface/range {v46 .. v47}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Ljavafx/scene/layout/BorderStroke;

    move-object/from16 v8, v46

    .line 1141
    .local v8, "stroke":Ljavafx/scene/layout/BorderStroke;
    move-object/from16 v46, v8

    invoke-virtual/range {v46 .. v46}, Ljavafx/scene/layout/BorderStroke;->getWidths()Ljavafx/scene/layout/BorderWidths;

    move-result-object v46

    move-object/from16 v9, v46

    .line 1142
    .local v9, "widths":Ljavafx/scene/layout/BorderWidths;
    move-object/from16 v46, v2

    move/from16 v47, v6

    invoke-direct/range {v46 .. v47}, Lcom/sun/javafx/sg/prism/NGRegion;->getNormalizedStrokeRadii(I)Ljavafx/scene/layout/CornerRadii;

    move-result-object v46

    move-object/from16 v10, v46

    .line 1143
    .local v10, "radii":Ljavafx/scene/layout/CornerRadii;
    move-object/from16 v46, v8

    invoke-virtual/range {v46 .. v46}, Ljavafx/scene/layout/BorderStroke;->getInsets()Ljavafx/geometry/Insets;

    move-result-object v46

    move-object/from16 v11, v46

    .line 1145
    .local v11, "insets":Ljavafx/geometry/Insets;
    move-object/from16 v46, v8

    invoke-virtual/range {v46 .. v46}, Ljavafx/scene/layout/BorderStroke;->getTopStroke()Ljavafx/scene/paint/Paint;

    move-result-object v46

    move-object/from16 v12, v46

    .line 1146
    .local v12, "topStroke":Ljavafx/scene/paint/Paint;
    move-object/from16 v46, v8

    invoke-virtual/range {v46 .. v46}, Ljavafx/scene/layout/BorderStroke;->getRightStroke()Ljavafx/scene/paint/Paint;

    move-result-object v46

    move-object/from16 v13, v46

    .line 1147
    .local v13, "rightStroke":Ljavafx/scene/paint/Paint;
    move-object/from16 v46, v8

    invoke-virtual/range {v46 .. v46}, Ljavafx/scene/layout/BorderStroke;->getBottomStroke()Ljavafx/scene/paint/Paint;

    move-result-object v46

    move-object/from16 v14, v46

    .line 1148
    .local v14, "bottomStroke":Ljavafx/scene/paint/Paint;
    move-object/from16 v46, v8

    invoke-virtual/range {v46 .. v46}, Ljavafx/scene/layout/BorderStroke;->getLeftStroke()Ljavafx/scene/paint/Paint;

    move-result-object v46

    move-object/from16 v15, v46

    .line 1150
    .local v15, "leftStroke":Ljavafx/scene/paint/Paint;
    move-object/from16 v46, v11

    invoke-virtual/range {v46 .. v46}, Ljavafx/geometry/Insets;->getTop()D

    move-result-wide v46

    move-wide/from16 v0, v46

    double-to-float v0, v0

    move/from16 v46, v0

    move/from16 v16, v46

    .line 1151
    .local v16, "topInset":F
    move-object/from16 v46, v11

    invoke-virtual/range {v46 .. v46}, Ljavafx/geometry/Insets;->getRight()D

    move-result-wide v46

    move-wide/from16 v0, v46

    double-to-float v0, v0

    move/from16 v46, v0

    move/from16 v17, v46

    .line 1152
    .local v17, "rightInset":F
    move-object/from16 v46, v11

    invoke-virtual/range {v46 .. v46}, Ljavafx/geometry/Insets;->getBottom()D

    move-result-wide v46

    move-wide/from16 v0, v46

    double-to-float v0, v0

    move/from16 v46, v0

    move/from16 v18, v46

    .line 1153
    .local v18, "bottomInset":F
    move-object/from16 v46, v11

    invoke-virtual/range {v46 .. v46}, Ljavafx/geometry/Insets;->getLeft()D

    move-result-wide v46

    move-wide/from16 v0, v46

    double-to-float v0, v0

    move/from16 v46, v0

    move/from16 v19, v46

    .line 1155
    .local v19, "leftInset":F
    move-object/from16 v46, v9

    invoke-virtual/range {v46 .. v46}, Ljavafx/scene/layout/BorderWidths;->isTopAsPercentage()Z

    move-result v46

    if-eqz v46, :cond_3

    move-object/from16 v46, v2

    move-object/from16 v0, v46

    iget v0, v0, Lcom/sun/javafx/sg/prism/NGRegion;->height:F

    move/from16 v46, v0

    move/from16 v0, v46

    float-to-double v0, v0

    move-wide/from16 v46, v0

    move-object/from16 v48, v9

    invoke-virtual/range {v48 .. v48}, Ljavafx/scene/layout/BorderWidths;->getTop()D

    move-result-wide v48

    mul-double v46, v46, v48

    :goto_2
    move-wide/from16 v0, v46

    double-to-float v0, v0

    move/from16 v46, v0

    move/from16 v20, v46

    .line 1156
    .local v20, "topWidth":F
    move-object/from16 v46, v9

    invoke-virtual/range {v46 .. v46}, Ljavafx/scene/layout/BorderWidths;->isRightAsPercentage()Z

    move-result v46

    if-eqz v46, :cond_4

    move-object/from16 v46, v2

    move-object/from16 v0, v46

    iget v0, v0, Lcom/sun/javafx/sg/prism/NGRegion;->width:F

    move/from16 v46, v0

    move/from16 v0, v46

    float-to-double v0, v0

    move-wide/from16 v46, v0

    move-object/from16 v48, v9

    invoke-virtual/range {v48 .. v48}, Ljavafx/scene/layout/BorderWidths;->getRight()D

    move-result-wide v48

    mul-double v46, v46, v48

    :goto_3
    move-wide/from16 v0, v46

    double-to-float v0, v0

    move/from16 v46, v0

    move/from16 v21, v46

    .line 1157
    .local v21, "rightWidth":F
    move-object/from16 v46, v9

    invoke-virtual/range {v46 .. v46}, Ljavafx/scene/layout/BorderWidths;->isBottomAsPercentage()Z

    move-result v46

    if-eqz v46, :cond_5

    move-object/from16 v46, v2

    move-object/from16 v0, v46

    iget v0, v0, Lcom/sun/javafx/sg/prism/NGRegion;->height:F

    move/from16 v46, v0

    move/from16 v0, v46

    float-to-double v0, v0

    move-wide/from16 v46, v0

    move-object/from16 v48, v9

    invoke-virtual/range {v48 .. v48}, Ljavafx/scene/layout/BorderWidths;->getBottom()D

    move-result-wide v48

    mul-double v46, v46, v48

    :goto_4
    move-wide/from16 v0, v46

    double-to-float v0, v0

    move/from16 v46, v0

    move/from16 v22, v46

    .line 1158
    .local v22, "bottomWidth":F
    move-object/from16 v46, v9

    invoke-virtual/range {v46 .. v46}, Ljavafx/scene/layout/BorderWidths;->isLeftAsPercentage()Z

    move-result v46

    if-eqz v46, :cond_6

    move-object/from16 v46, v2

    move-object/from16 v0, v46

    iget v0, v0, Lcom/sun/javafx/sg/prism/NGRegion;->width:F

    move/from16 v46, v0

    move/from16 v0, v46

    float-to-double v0, v0

    move-wide/from16 v46, v0

    move-object/from16 v48, v9

    invoke-virtual/range {v48 .. v48}, Ljavafx/scene/layout/BorderWidths;->getLeft()D

    move-result-wide v48

    mul-double v46, v46, v48

    :goto_5
    move-wide/from16 v0, v46

    double-to-float v0, v0

    move/from16 v46, v0

    move/from16 v23, v46

    .line 1160
    .local v23, "leftWidth":F
    move-object/from16 v46, v8

    invoke-virtual/range {v46 .. v46}, Ljavafx/scene/layout/BorderStroke;->getTopStyle()Ljavafx/scene/layout/BorderStrokeStyle;

    move-result-object v46

    move-object/from16 v24, v46

    .line 1161
    .local v24, "topStyle":Ljavafx/scene/layout/BorderStrokeStyle;
    move-object/from16 v46, v8

    invoke-virtual/range {v46 .. v46}, Ljavafx/scene/layout/BorderStroke;->getRightStyle()Ljavafx/scene/layout/BorderStrokeStyle;

    move-result-object v46

    move-object/from16 v25, v46

    .line 1162
    .local v25, "rightStyle":Ljavafx/scene/layout/BorderStrokeStyle;
    move-object/from16 v46, v8

    invoke-virtual/range {v46 .. v46}, Ljavafx/scene/layout/BorderStroke;->getBottomStyle()Ljavafx/scene/layout/BorderStrokeStyle;

    move-result-object v46

    move-object/from16 v26, v46

    .line 1163
    .local v26, "bottomStyle":Ljavafx/scene/layout/BorderStrokeStyle;
    move-object/from16 v46, v8

    invoke-virtual/range {v46 .. v46}, Ljavafx/scene/layout/BorderStroke;->getLeftStyle()Ljavafx/scene/layout/BorderStrokeStyle;

    move-result-object v46

    move-object/from16 v27, v46

    .line 1165
    .local v27, "leftStyle":Ljavafx/scene/layout/BorderStrokeStyle;
    move-object/from16 v46, v24

    invoke-virtual/range {v46 .. v46}, Ljavafx/scene/layout/BorderStrokeStyle;->getType()Ljavafx/scene/shape/StrokeType;

    move-result-object v46

    move-object/from16 v28, v46

    .line 1166
    .local v28, "topType":Ljavafx/scene/shape/StrokeType;
    move-object/from16 v46, v25

    invoke-virtual/range {v46 .. v46}, Ljavafx/scene/layout/BorderStrokeStyle;->getType()Ljavafx/scene/shape/StrokeType;

    move-result-object v46

    move-object/from16 v29, v46

    .line 1167
    .local v29, "rightType":Ljavafx/scene/shape/StrokeType;
    move-object/from16 v46, v26

    invoke-virtual/range {v46 .. v46}, Ljavafx/scene/layout/BorderStrokeStyle;->getType()Ljavafx/scene/shape/StrokeType;

    move-result-object v46

    move-object/from16 v30, v46

    .line 1168
    .local v30, "bottomType":Ljavafx/scene/shape/StrokeType;
    move-object/from16 v46, v27

    invoke-virtual/range {v46 .. v46}, Ljavafx/scene/layout/BorderStrokeStyle;->getType()Ljavafx/scene/shape/StrokeType;

    move-result-object v46

    move-object/from16 v31, v46

    .line 1175
    .local v31, "leftType":Ljavafx/scene/shape/StrokeType;
    move/from16 v46, v16

    move-object/from16 v47, v28

    sget-object v48, Ljavafx/scene/shape/StrokeType;->OUTSIDE:Ljavafx/scene/shape/StrokeType;

    move-object/from16 v0, v47

    move-object/from16 v1, v48

    if-ne v0, v1, :cond_7

    move/from16 v47, v20

    move/from16 v0, v47

    neg-float v0, v0

    move/from16 v47, v0

    const/high16 v48, 0x40000000    # 2.0f

    div-float v47, v47, v48

    :goto_6
    add-float v46, v46, v47

    move/from16 v32, v46

    .line 1178
    .local v32, "t":F
    move/from16 v46, v19

    move-object/from16 v47, v31

    sget-object v48, Ljavafx/scene/shape/StrokeType;->OUTSIDE:Ljavafx/scene/shape/StrokeType;

    move-object/from16 v0, v47

    move-object/from16 v1, v48

    if-ne v0, v1, :cond_9

    move/from16 v47, v23

    move/from16 v0, v47

    neg-float v0, v0

    move/from16 v47, v0

    const/high16 v48, 0x40000000    # 2.0f

    div-float v47, v47, v48

    :goto_7
    add-float v46, v46, v47

    move/from16 v33, v46

    .line 1181
    .local v33, "l":F
    move/from16 v46, v18

    move-object/from16 v47, v30

    sget-object v48, Ljavafx/scene/shape/StrokeType;->OUTSIDE:Ljavafx/scene/shape/StrokeType;

    move-object/from16 v0, v47

    move-object/from16 v1, v48

    if-ne v0, v1, :cond_b

    move/from16 v47, v22

    move/from16 v0, v47

    neg-float v0, v0

    move/from16 v47, v0

    const/high16 v48, 0x40000000    # 2.0f

    div-float v47, v47, v48

    :goto_8
    add-float v46, v46, v47

    move/from16 v34, v46

    .line 1184
    .local v34, "b":F
    move/from16 v46, v17

    move-object/from16 v47, v29

    sget-object v48, Ljavafx/scene/shape/StrokeType;->OUTSIDE:Ljavafx/scene/shape/StrokeType;

    move-object/from16 v0, v47

    move-object/from16 v1, v48

    if-ne v0, v1, :cond_d

    move/from16 v47, v21

    move/from16 v0, v47

    neg-float v0, v0

    move/from16 v47, v0

    const/high16 v48, 0x40000000    # 2.0f

    div-float v47, v47, v48

    :goto_9
    add-float v46, v46, v47

    move/from16 v35, v46

    .line 1190
    .local v35, "r":F
    move-object/from16 v46, v10

    invoke-virtual/range {v46 .. v46}, Ljavafx/scene/layout/CornerRadii;->getTopLeftHorizontalRadius()D

    move-result-wide v46

    move-wide/from16 v0, v46

    double-to-float v0, v0

    move/from16 v46, v0

    move/from16 v36, v46

    .line 1191
    .local v36, "radius":F
    move-object/from16 v46, v8

    invoke-virtual/range {v46 .. v46}, Ljavafx/scene/layout/BorderStroke;->isStrokeUniform()Z

    move-result v46

    if-eqz v46, :cond_13

    .line 1194
    move-object/from16 v46, v12

    move-object/from16 v0, v46

    instance-of v0, v0, Ljavafx/scene/paint/Color;

    move/from16 v46, v0

    if-eqz v46, :cond_0

    move-object/from16 v46, v12

    check-cast v46, Ljavafx/scene/paint/Color;

    invoke-virtual/range {v46 .. v46}, Ljavafx/scene/paint/Color;->getOpacity()D

    move-result-wide v46

    const-wide/16 v48, 0x0

    cmpl-double v46, v46, v48

    if-eqz v46, :cond_1

    :cond_0
    move-object/from16 v46, v24

    sget-object v47, Ljavafx/scene/layout/BorderStrokeStyle;->NONE:Ljavafx/scene/layout/BorderStrokeStyle;

    move-object/from16 v0, v46

    move-object/from16 v1, v47

    if-eq v0, v1, :cond_1

    .line 1195
    move-object/from16 v46, v2

    move-object/from16 v0, v46

    iget v0, v0, Lcom/sun/javafx/sg/prism/NGRegion;->width:F

    move/from16 v46, v0

    move/from16 v47, v33

    sub-float v46, v46, v47

    move/from16 v47, v35

    sub-float v46, v46, v47

    move/from16 v37, v46

    .line 1196
    .local v37, "w":F
    move-object/from16 v46, v2

    move-object/from16 v0, v46

    iget v0, v0, Lcom/sun/javafx/sg/prism/NGRegion;->height:F

    move/from16 v46, v0

    move/from16 v47, v32

    sub-float v46, v46, v47

    move/from16 v47, v34

    sub-float v46, v46, v47

    move/from16 v38, v46

    .line 1198
    .local v38, "h":F
    const-wide/high16 v46, 0x4000000000000000L    # 2.0

    move-object/from16 v48, v10

    invoke-virtual/range {v48 .. v48}, Ljavafx/scene/layout/CornerRadii;->getTopLeftHorizontalRadius()D

    move-result-wide v48

    mul-double v46, v46, v48

    move-wide/from16 v39, v46

    .line 1199
    .local v39, "di":D
    move-wide/from16 v46, v39

    const-wide v48, 0x400921fb54442d18L    # Math.PI

    mul-double v46, v46, v48

    move-wide/from16 v41, v46

    .line 1200
    .local v41, "circle":D
    move-wide/from16 v46, v41

    const-wide/high16 v48, 0x4000000000000000L    # 2.0

    move/from16 v50, v37

    move/from16 v0, v50

    float-to-double v0, v0

    move-wide/from16 v50, v0

    move-wide/from16 v52, v39

    sub-double v50, v50, v52

    mul-double v48, v48, v50

    add-double v46, v46, v48

    const-wide/high16 v48, 0x4000000000000000L    # 2.0

    move/from16 v50, v38

    move/from16 v0, v50

    float-to-double v0, v0

    move-wide/from16 v50, v0

    move-wide/from16 v52, v39

    sub-double v50, v50, v52

    mul-double v48, v48, v50

    add-double v46, v46, v48

    move-wide/from16 v43, v46

    .line 1205
    .local v43, "totalLineLength":D
    move/from16 v46, v37

    const/16 v47, 0x0

    cmpl-float v46, v46, v47

    if-ltz v46, :cond_1

    move/from16 v46, v38

    const/16 v47, 0x0

    cmpl-float v46, v46, v47

    if-ltz v46, :cond_1

    .line 1206
    move-object/from16 v46, v2

    move-object/from16 v47, v3

    move-object/from16 v48, v8

    move-wide/from16 v49, v43

    const/16 v51, 0x1

    invoke-direct/range {v46 .. v51}, Lcom/sun/javafx/sg/prism/NGRegion;->setBorderStyle(Lcom/sun/prism/Graphics;Ljavafx/scene/layout/BorderStroke;DZ)V

    .line 1207
    move-object/from16 v46, v10

    invoke-virtual/range {v46 .. v46}, Ljavafx/scene/layout/CornerRadii;->isUniform()Z

    move-result v46

    if-eqz v46, :cond_f

    move/from16 v46, v36

    const/16 v47, 0x0

    cmpl-float v46, v46, v47

    if-nez v46, :cond_f

    .line 1210
    move-object/from16 v46, v3

    move/from16 v47, v33

    move/from16 v48, v32

    move/from16 v49, v37

    move/from16 v50, v38

    invoke-interface/range {v46 .. v50}, Lcom/sun/prism/Graphics;->drawRect(FFFF)V

    .line 1224
    .line 1139
    .end local v37    # "w":F
    .end local v38    # "h":F
    .end local v39    # "di":D
    .end local v41    # "circle":D
    .end local v43    # "totalLineLength":D
    :cond_1
    :goto_a
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    .line 1138
    .end local v5    # "strokes":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/layout/BorderStroke;>;"
    .end local v6    # "i":I
    .end local v7    # "max":I
    .end local v8    # "stroke":Ljavafx/scene/layout/BorderStroke;
    .end local v9    # "widths":Ljavafx/scene/layout/BorderWidths;
    .end local v10    # "radii":Ljavafx/scene/layout/CornerRadii;
    .end local v11    # "insets":Ljavafx/geometry/Insets;
    .end local v12    # "topStroke":Ljavafx/scene/paint/Paint;
    .end local v13    # "rightStroke":Ljavafx/scene/paint/Paint;
    .end local v14    # "bottomStroke":Ljavafx/scene/paint/Paint;
    .end local v15    # "leftStroke":Ljavafx/scene/paint/Paint;
    .end local v16    # "topInset":F
    .end local v17    # "rightInset":F
    .end local v18    # "bottomInset":F
    .end local v19    # "leftInset":F
    .end local v20    # "topWidth":F
    .end local v21    # "rightWidth":F
    .end local v22    # "bottomWidth":F
    .end local v23    # "leftWidth":F
    .end local v24    # "topStyle":Ljavafx/scene/layout/BorderStrokeStyle;
    .end local v25    # "rightStyle":Ljavafx/scene/layout/BorderStrokeStyle;
    .end local v26    # "bottomStyle":Ljavafx/scene/layout/BorderStrokeStyle;
    .end local v27    # "leftStyle":Ljavafx/scene/layout/BorderStrokeStyle;
    .end local v28    # "topType":Ljavafx/scene/shape/StrokeType;
    .end local v29    # "rightType":Ljavafx/scene/shape/StrokeType;
    .end local v30    # "bottomType":Ljavafx/scene/shape/StrokeType;
    .end local v31    # "leftType":Ljavafx/scene/shape/StrokeType;
    .end local v32    # "t":F
    .end local v33    # "l":F
    .end local v34    # "b":F
    .end local v35    # "r":F
    .end local v36    # "radius":F
    :cond_2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v46

    goto/16 :goto_0

    .line 1155
    .restart local v5    # "strokes":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/layout/BorderStroke;>;"
    .restart local v6    # "i":I
    .restart local v7    # "max":I
    .restart local v8    # "stroke":Ljavafx/scene/layout/BorderStroke;
    .restart local v9    # "widths":Ljavafx/scene/layout/BorderWidths;
    .restart local v10    # "radii":Ljavafx/scene/layout/CornerRadii;
    .restart local v11    # "insets":Ljavafx/geometry/Insets;
    .restart local v12    # "topStroke":Ljavafx/scene/paint/Paint;
    .restart local v13    # "rightStroke":Ljavafx/scene/paint/Paint;
    .restart local v14    # "bottomStroke":Ljavafx/scene/paint/Paint;
    .restart local v15    # "leftStroke":Ljavafx/scene/paint/Paint;
    .restart local v16    # "topInset":F
    .restart local v17    # "rightInset":F
    .restart local v18    # "bottomInset":F
    .restart local v19    # "leftInset":F
    :cond_3
    move-object/from16 v46, v9

    invoke-virtual/range {v46 .. v46}, Ljavafx/scene/layout/BorderWidths;->getTop()D

    move-result-wide v46

    goto/16 :goto_2

    .line 1156
    .restart local v20    # "topWidth":F
    :cond_4
    move-object/from16 v46, v9

    invoke-virtual/range {v46 .. v46}, Ljavafx/scene/layout/BorderWidths;->getRight()D

    move-result-wide v46

    goto/16 :goto_3

    .line 1157
    .restart local v21    # "rightWidth":F
    :cond_5
    move-object/from16 v46, v9

    invoke-virtual/range {v46 .. v46}, Ljavafx/scene/layout/BorderWidths;->getBottom()D

    move-result-wide v46

    goto/16 :goto_4

    .line 1158
    .restart local v22    # "bottomWidth":F
    :cond_6
    move-object/from16 v46, v9

    invoke-virtual/range {v46 .. v46}, Ljavafx/scene/layout/BorderWidths;->getLeft()D

    move-result-wide v46

    goto/16 :goto_5

    .line 1175
    .restart local v23    # "leftWidth":F
    .restart local v24    # "topStyle":Ljavafx/scene/layout/BorderStrokeStyle;
    .restart local v25    # "rightStyle":Ljavafx/scene/layout/BorderStrokeStyle;
    .restart local v26    # "bottomStyle":Ljavafx/scene/layout/BorderStrokeStyle;
    .restart local v27    # "leftStyle":Ljavafx/scene/layout/BorderStrokeStyle;
    .restart local v28    # "topType":Ljavafx/scene/shape/StrokeType;
    .restart local v29    # "rightType":Ljavafx/scene/shape/StrokeType;
    .restart local v30    # "bottomType":Ljavafx/scene/shape/StrokeType;
    .restart local v31    # "leftType":Ljavafx/scene/shape/StrokeType;
    :cond_7
    move-object/from16 v47, v28

    sget-object v48, Ljavafx/scene/shape/StrokeType;->INSIDE:Ljavafx/scene/shape/StrokeType;

    move-object/from16 v0, v47

    move-object/from16 v1, v48

    if-ne v0, v1, :cond_8

    move/from16 v47, v20

    const/high16 v48, 0x40000000    # 2.0f

    div-float v47, v47, v48

    goto/16 :goto_6

    :cond_8
    const/16 v47, 0x0

    goto/16 :goto_6

    .line 1178
    .restart local v32    # "t":F
    :cond_9
    move-object/from16 v47, v31

    sget-object v48, Ljavafx/scene/shape/StrokeType;->INSIDE:Ljavafx/scene/shape/StrokeType;

    move-object/from16 v0, v47

    move-object/from16 v1, v48

    if-ne v0, v1, :cond_a

    move/from16 v47, v23

    const/high16 v48, 0x40000000    # 2.0f

    div-float v47, v47, v48

    goto/16 :goto_7

    :cond_a
    const/16 v47, 0x0

    goto/16 :goto_7

    .line 1181
    .restart local v33    # "l":F
    :cond_b
    move-object/from16 v47, v30

    sget-object v48, Ljavafx/scene/shape/StrokeType;->INSIDE:Ljavafx/scene/shape/StrokeType;

    move-object/from16 v0, v47

    move-object/from16 v1, v48

    if-ne v0, v1, :cond_c

    move/from16 v47, v22

    const/high16 v48, 0x40000000    # 2.0f

    div-float v47, v47, v48

    goto/16 :goto_8

    :cond_c
    const/16 v47, 0x0

    goto/16 :goto_8

    .line 1184
    .restart local v34    # "b":F
    :cond_d
    move-object/from16 v47, v29

    sget-object v48, Ljavafx/scene/shape/StrokeType;->INSIDE:Ljavafx/scene/shape/StrokeType;

    move-object/from16 v0, v47

    move-object/from16 v1, v48

    if-ne v0, v1, :cond_e

    move/from16 v47, v21

    const/high16 v48, 0x40000000    # 2.0f

    div-float v47, v47, v48

    goto/16 :goto_9

    :cond_e
    const/16 v47, 0x0

    goto/16 :goto_9

    .line 1211
    .restart local v35    # "r":F
    .restart local v36    # "radius":F
    .restart local v37    # "w":F
    .restart local v38    # "h":F
    .restart local v39    # "di":D
    .restart local v41    # "circle":D
    .restart local v43    # "totalLineLength":D
    :cond_f
    move-object/from16 v46, v10

    invoke-virtual/range {v46 .. v46}, Ljavafx/scene/layout/CornerRadii;->isUniform()Z

    move-result v46

    if-eqz v46, :cond_12

    .line 1214
    move/from16 v46, v36

    move/from16 v47, v36

    add-float v46, v46, v47

    move/from16 v45, v46

    .line 1215
    .local v45, "ar":F
    move/from16 v46, v45

    move/from16 v47, v37

    cmpl-float v46, v46, v47

    if-lez v46, :cond_10

    move/from16 v46, v37

    move/from16 v45, v46

    .line 1216
    :cond_10
    move/from16 v46, v45

    move/from16 v47, v38

    cmpl-float v46, v46, v47

    if-lez v46, :cond_11

    move/from16 v46, v38

    move/from16 v45, v46

    .line 1217
    :cond_11
    move-object/from16 v46, v3

    move/from16 v47, v33

    move/from16 v48, v32

    move/from16 v49, v37

    move/from16 v50, v38

    move/from16 v51, v45

    move/from16 v52, v45

    invoke-interface/range {v46 .. v52}, Lcom/sun/prism/Graphics;->drawRoundRect(FFFFFF)V

    .line 1218
    goto/16 :goto_a

    .line 1221
    .end local v45    # "ar":F
    :cond_12
    move-object/from16 v46, v3

    move-object/from16 v47, v2

    move-object/from16 v48, v2

    move-object/from16 v0, v48

    iget v0, v0, Lcom/sun/javafx/sg/prism/NGRegion;->width:F

    move/from16 v48, v0

    move-object/from16 v49, v2

    move-object/from16 v0, v49

    iget v0, v0, Lcom/sun/javafx/sg/prism/NGRegion;->height:F

    move/from16 v49, v0

    move/from16 v50, v32

    move/from16 v51, v33

    move/from16 v52, v34

    move/from16 v53, v35

    move-object/from16 v54, v10

    invoke-direct/range {v47 .. v54}, Lcom/sun/javafx/sg/prism/NGRegion;->createPath(FFFFFFLjavafx/scene/layout/CornerRadii;)Lcom/sun/javafx/geom/Path2D;

    move-result-object v47

    invoke-interface/range {v46 .. v47}, Lcom/sun/prism/Graphics;->draw(Lcom/sun/javafx/geom/Shape;)V

    goto/16 :goto_a

    .line 1225
    .end local v37    # "w":F
    .end local v38    # "h":F
    .end local v39    # "di":D
    .end local v41    # "circle":D
    .end local v43    # "totalLineLength":D
    :cond_13
    move-object/from16 v46, v10

    invoke-virtual/range {v46 .. v46}, Ljavafx/scene/layout/CornerRadii;->isUniform()Z

    move-result v46

    if-eqz v46, :cond_1f

    move/from16 v46, v36

    const/16 v47, 0x0

    cmpl-float v46, v46, v47

    if-nez v46, :cond_1f

    .line 1237
    move-object/from16 v46, v12

    move-object/from16 v0, v46

    instance-of v0, v0, Ljavafx/scene/paint/Color;

    move/from16 v46, v0

    if-eqz v46, :cond_14

    move-object/from16 v46, v12

    check-cast v46, Ljavafx/scene/paint/Color;

    invoke-virtual/range {v46 .. v46}, Ljavafx/scene/paint/Color;->getOpacity()D

    move-result-wide v46

    const-wide/16 v48, 0x0

    cmpl-double v46, v46, v48

    if-eqz v46, :cond_15

    :cond_14
    move-object/from16 v46, v24

    sget-object v47, Ljavafx/scene/layout/BorderStrokeStyle;->NONE:Ljavafx/scene/layout/BorderStrokeStyle;

    move-object/from16 v0, v46

    move-object/from16 v1, v47

    if-eq v0, v1, :cond_15

    .line 1238
    move-object/from16 v46, v3

    move-object/from16 v47, v12

    invoke-static/range {v47 .. v47}, Lcom/sun/javafx/sg/prism/NGRegion;->getPlatformPaint(Ljavafx/scene/paint/Paint;)Lcom/sun/prism/paint/Paint;

    move-result-object v47

    invoke-interface/range {v46 .. v47}, Lcom/sun/prism/Graphics;->setPaint(Lcom/sun/prism/paint/Paint;)V

    .line 1239
    sget-object v46, Ljavafx/scene/layout/BorderStrokeStyle;->SOLID:Ljavafx/scene/layout/BorderStrokeStyle;

    move-object/from16 v47, v24

    move-object/from16 v0, v46

    move-object/from16 v1, v47

    if-ne v0, v1, :cond_1b

    .line 1240
    move-object/from16 v46, v3

    move/from16 v47, v19

    move/from16 v48, v16

    move-object/from16 v49, v2

    move-object/from16 v0, v49

    iget v0, v0, Lcom/sun/javafx/sg/prism/NGRegion;->width:F

    move/from16 v49, v0

    move/from16 v50, v19

    sub-float v49, v49, v50

    move/from16 v50, v17

    sub-float v49, v49, v50

    move/from16 v50, v20

    invoke-interface/range {v46 .. v50}, Lcom/sun/prism/Graphics;->fillRect(FFFF)V

    .line 1247
    :cond_15
    :goto_b
    move-object/from16 v46, v13

    move-object/from16 v0, v46

    instance-of v0, v0, Ljavafx/scene/paint/Color;

    move/from16 v46, v0

    if-eqz v46, :cond_16

    move-object/from16 v46, v13

    check-cast v46, Ljavafx/scene/paint/Color;

    invoke-virtual/range {v46 .. v46}, Ljavafx/scene/paint/Color;->getOpacity()D

    move-result-wide v46

    const-wide/16 v48, 0x0

    cmpl-double v46, v46, v48

    if-eqz v46, :cond_17

    :cond_16
    move-object/from16 v46, v25

    sget-object v47, Ljavafx/scene/layout/BorderStrokeStyle;->NONE:Ljavafx/scene/layout/BorderStrokeStyle;

    move-object/from16 v0, v46

    move-object/from16 v1, v47

    if-eq v0, v1, :cond_17

    .line 1248
    move-object/from16 v46, v3

    move-object/from16 v47, v13

    invoke-static/range {v47 .. v47}, Lcom/sun/javafx/sg/prism/NGRegion;->getPlatformPaint(Ljavafx/scene/paint/Paint;)Lcom/sun/prism/paint/Paint;

    move-result-object v47

    invoke-interface/range {v46 .. v47}, Lcom/sun/prism/Graphics;->setPaint(Lcom/sun/prism/paint/Paint;)V

    .line 1249
    sget-object v46, Ljavafx/scene/layout/BorderStrokeStyle;->SOLID:Ljavafx/scene/layout/BorderStrokeStyle;

    move-object/from16 v47, v25

    move-object/from16 v0, v46

    move-object/from16 v1, v47

    if-ne v0, v1, :cond_1c

    .line 1250
    move-object/from16 v46, v3

    move-object/from16 v47, v2

    move-object/from16 v0, v47

    iget v0, v0, Lcom/sun/javafx/sg/prism/NGRegion;->width:F

    move/from16 v47, v0

    move/from16 v48, v17

    sub-float v47, v47, v48

    move/from16 v48, v21

    sub-float v47, v47, v48

    move/from16 v48, v16

    move/from16 v49, v21

    move-object/from16 v50, v2

    move-object/from16 v0, v50

    iget v0, v0, Lcom/sun/javafx/sg/prism/NGRegion;->height:F

    move/from16 v50, v0

    move/from16 v51, v16

    sub-float v50, v50, v51

    move/from16 v51, v18

    sub-float v50, v50, v51

    invoke-interface/range {v46 .. v50}, Lcom/sun/prism/Graphics;->fillRect(FFFF)V

    .line 1258
    :cond_17
    :goto_c
    move-object/from16 v46, v14

    move-object/from16 v0, v46

    instance-of v0, v0, Ljavafx/scene/paint/Color;

    move/from16 v46, v0

    if-eqz v46, :cond_18

    move-object/from16 v46, v14

    check-cast v46, Ljavafx/scene/paint/Color;

    invoke-virtual/range {v46 .. v46}, Ljavafx/scene/paint/Color;->getOpacity()D

    move-result-wide v46

    const-wide/16 v48, 0x0

    cmpl-double v46, v46, v48

    if-eqz v46, :cond_19

    :cond_18
    move-object/from16 v46, v26

    sget-object v47, Ljavafx/scene/layout/BorderStrokeStyle;->NONE:Ljavafx/scene/layout/BorderStrokeStyle;

    move-object/from16 v0, v46

    move-object/from16 v1, v47

    if-eq v0, v1, :cond_19

    .line 1259
    move-object/from16 v46, v3

    move-object/from16 v47, v14

    invoke-static/range {v47 .. v47}, Lcom/sun/javafx/sg/prism/NGRegion;->getPlatformPaint(Ljavafx/scene/paint/Paint;)Lcom/sun/prism/paint/Paint;

    move-result-object v47

    invoke-interface/range {v46 .. v47}, Lcom/sun/prism/Graphics;->setPaint(Lcom/sun/prism/paint/Paint;)V

    .line 1260
    sget-object v46, Ljavafx/scene/layout/BorderStrokeStyle;->SOLID:Ljavafx/scene/layout/BorderStrokeStyle;

    move-object/from16 v47, v26

    move-object/from16 v0, v46

    move-object/from16 v1, v47

    if-ne v0, v1, :cond_1d

    .line 1261
    move-object/from16 v46, v3

    move/from16 v47, v19

    move-object/from16 v48, v2

    move-object/from16 v0, v48

    iget v0, v0, Lcom/sun/javafx/sg/prism/NGRegion;->height:F

    move/from16 v48, v0

    move/from16 v49, v18

    sub-float v48, v48, v49

    move/from16 v49, v22

    sub-float v48, v48, v49

    move-object/from16 v49, v2

    move-object/from16 v0, v49

    iget v0, v0, Lcom/sun/javafx/sg/prism/NGRegion;->width:F

    move/from16 v49, v0

    move/from16 v50, v19

    sub-float v49, v49, v50

    move/from16 v50, v17

    sub-float v49, v49, v50

    move/from16 v50, v22

    invoke-interface/range {v46 .. v50}, Lcom/sun/prism/Graphics;->fillRect(FFFF)V

    .line 1269
    :cond_19
    :goto_d
    move-object/from16 v46, v15

    move-object/from16 v0, v46

    instance-of v0, v0, Ljavafx/scene/paint/Color;

    move/from16 v46, v0

    if-eqz v46, :cond_1a

    move-object/from16 v46, v15

    check-cast v46, Ljavafx/scene/paint/Color;

    invoke-virtual/range {v46 .. v46}, Ljavafx/scene/paint/Color;->getOpacity()D

    move-result-wide v46

    const-wide/16 v48, 0x0

    cmpl-double v46, v46, v48

    if-eqz v46, :cond_1

    :cond_1a
    move-object/from16 v46, v27

    sget-object v47, Ljavafx/scene/layout/BorderStrokeStyle;->NONE:Ljavafx/scene/layout/BorderStrokeStyle;

    move-object/from16 v0, v46

    move-object/from16 v1, v47

    if-eq v0, v1, :cond_1

    .line 1270
    move-object/from16 v46, v3

    move-object/from16 v47, v15

    invoke-static/range {v47 .. v47}, Lcom/sun/javafx/sg/prism/NGRegion;->getPlatformPaint(Ljavafx/scene/paint/Paint;)Lcom/sun/prism/paint/Paint;

    move-result-object v47

    invoke-interface/range {v46 .. v47}, Lcom/sun/prism/Graphics;->setPaint(Lcom/sun/prism/paint/Paint;)V

    .line 1271
    sget-object v46, Ljavafx/scene/layout/BorderStrokeStyle;->SOLID:Ljavafx/scene/layout/BorderStrokeStyle;

    move-object/from16 v47, v27

    move-object/from16 v0, v46

    move-object/from16 v1, v47

    if-ne v0, v1, :cond_1e

    .line 1272
    move-object/from16 v46, v3

    move/from16 v47, v19

    move/from16 v48, v16

    move/from16 v49, v23

    move-object/from16 v50, v2

    move-object/from16 v0, v50

    iget v0, v0, Lcom/sun/javafx/sg/prism/NGRegion;->height:F

    move/from16 v50, v0

    move/from16 v51, v16

    sub-float v50, v50, v51

    move/from16 v51, v18

    sub-float v50, v50, v51

    invoke-interface/range {v46 .. v50}, Lcom/sun/prism/Graphics;->fillRect(FFFF)V

    goto/16 :goto_a

    .line 1242
    :cond_1b
    move-object/from16 v46, v3

    move-object/from16 v47, v2

    move-object/from16 v48, v24

    move/from16 v49, v20

    move/from16 v0, v49

    float-to-double v0, v0

    move-wide/from16 v49, v0

    move-object/from16 v51, v2

    move-object/from16 v0, v51

    iget v0, v0, Lcom/sun/javafx/sg/prism/NGRegion;->width:F

    move/from16 v51, v0

    move/from16 v0, v51

    float-to-double v0, v0

    move-wide/from16 v51, v0

    const/16 v53, 0x1

    invoke-direct/range {v47 .. v53}, Lcom/sun/javafx/sg/prism/NGRegion;->createStroke(Ljavafx/scene/layout/BorderStrokeStyle;DDZ)Lcom/sun/prism/BasicStroke;

    move-result-object v47

    invoke-interface/range {v46 .. v47}, Lcom/sun/prism/Graphics;->setStroke(Lcom/sun/prism/BasicStroke;)V

    .line 1243
    move-object/from16 v46, v3

    move/from16 v47, v33

    move/from16 v48, v32

    move-object/from16 v49, v2

    move-object/from16 v0, v49

    iget v0, v0, Lcom/sun/javafx/sg/prism/NGRegion;->width:F

    move/from16 v49, v0

    move/from16 v50, v35

    sub-float v49, v49, v50

    move/from16 v50, v32

    invoke-interface/range {v46 .. v50}, Lcom/sun/prism/Graphics;->drawLine(FFFF)V

    goto/16 :goto_b

    .line 1253
    :cond_1c
    move-object/from16 v46, v3

    move-object/from16 v47, v2

    move-object/from16 v48, v25

    move/from16 v49, v21

    move/from16 v0, v49

    float-to-double v0, v0

    move-wide/from16 v49, v0

    move-object/from16 v51, v2

    move-object/from16 v0, v51

    iget v0, v0, Lcom/sun/javafx/sg/prism/NGRegion;->height:F

    move/from16 v51, v0

    move/from16 v0, v51

    float-to-double v0, v0

    move-wide/from16 v51, v0

    const/16 v53, 0x1

    invoke-direct/range {v47 .. v53}, Lcom/sun/javafx/sg/prism/NGRegion;->createStroke(Ljavafx/scene/layout/BorderStrokeStyle;DDZ)Lcom/sun/prism/BasicStroke;

    move-result-object v47

    invoke-interface/range {v46 .. v47}, Lcom/sun/prism/Graphics;->setStroke(Lcom/sun/prism/BasicStroke;)V

    .line 1254
    move-object/from16 v46, v3

    move-object/from16 v47, v2

    move-object/from16 v0, v47

    iget v0, v0, Lcom/sun/javafx/sg/prism/NGRegion;->width:F

    move/from16 v47, v0

    move/from16 v48, v35

    sub-float v47, v47, v48

    move/from16 v48, v32

    move-object/from16 v49, v2

    move-object/from16 v0, v49

    iget v0, v0, Lcom/sun/javafx/sg/prism/NGRegion;->width:F

    move/from16 v49, v0

    move/from16 v50, v35

    sub-float v49, v49, v50

    move-object/from16 v50, v2

    move-object/from16 v0, v50

    iget v0, v0, Lcom/sun/javafx/sg/prism/NGRegion;->height:F

    move/from16 v50, v0

    move/from16 v51, v34

    sub-float v50, v50, v51

    invoke-interface/range {v46 .. v50}, Lcom/sun/prism/Graphics;->drawLine(FFFF)V

    goto/16 :goto_c

    .line 1264
    :cond_1d
    move-object/from16 v46, v3

    move-object/from16 v47, v2

    move-object/from16 v48, v26

    move/from16 v49, v22

    move/from16 v0, v49

    float-to-double v0, v0

    move-wide/from16 v49, v0

    move-object/from16 v51, v2

    move-object/from16 v0, v51

    iget v0, v0, Lcom/sun/javafx/sg/prism/NGRegion;->width:F

    move/from16 v51, v0

    move/from16 v0, v51

    float-to-double v0, v0

    move-wide/from16 v51, v0

    const/16 v53, 0x1

    invoke-direct/range {v47 .. v53}, Lcom/sun/javafx/sg/prism/NGRegion;->createStroke(Ljavafx/scene/layout/BorderStrokeStyle;DDZ)Lcom/sun/prism/BasicStroke;

    move-result-object v47

    invoke-interface/range {v46 .. v47}, Lcom/sun/prism/Graphics;->setStroke(Lcom/sun/prism/BasicStroke;)V

    .line 1265
    move-object/from16 v46, v3

    move/from16 v47, v33

    move-object/from16 v48, v2

    move-object/from16 v0, v48

    iget v0, v0, Lcom/sun/javafx/sg/prism/NGRegion;->height:F

    move/from16 v48, v0

    move/from16 v49, v34

    sub-float v48, v48, v49

    move-object/from16 v49, v2

    move-object/from16 v0, v49

    iget v0, v0, Lcom/sun/javafx/sg/prism/NGRegion;->width:F

    move/from16 v49, v0

    move/from16 v50, v35

    sub-float v49, v49, v50

    move-object/from16 v50, v2

    move-object/from16 v0, v50

    iget v0, v0, Lcom/sun/javafx/sg/prism/NGRegion;->height:F

    move/from16 v50, v0

    move/from16 v51, v34

    sub-float v50, v50, v51

    invoke-interface/range {v46 .. v50}, Lcom/sun/prism/Graphics;->drawLine(FFFF)V

    goto/16 :goto_d

    .line 1274
    :cond_1e
    move-object/from16 v46, v3

    move-object/from16 v47, v2

    move-object/from16 v48, v27

    move/from16 v49, v23

    move/from16 v0, v49

    float-to-double v0, v0

    move-wide/from16 v49, v0

    move-object/from16 v51, v2

    move-object/from16 v0, v51

    iget v0, v0, Lcom/sun/javafx/sg/prism/NGRegion;->height:F

    move/from16 v51, v0

    move/from16 v0, v51

    float-to-double v0, v0

    move-wide/from16 v51, v0

    const/16 v53, 0x1

    invoke-direct/range {v47 .. v53}, Lcom/sun/javafx/sg/prism/NGRegion;->createStroke(Ljavafx/scene/layout/BorderStrokeStyle;DDZ)Lcom/sun/prism/BasicStroke;

    move-result-object v47

    invoke-interface/range {v46 .. v47}, Lcom/sun/prism/Graphics;->setStroke(Lcom/sun/prism/BasicStroke;)V

    .line 1275
    move-object/from16 v46, v3

    move/from16 v47, v33

    move/from16 v48, v32

    move/from16 v49, v33

    move-object/from16 v50, v2

    move-object/from16 v0, v50

    iget v0, v0, Lcom/sun/javafx/sg/prism/NGRegion;->height:F

    move/from16 v50, v0

    move/from16 v51, v34

    sub-float v50, v50, v51

    invoke-interface/range {v46 .. v50}, Lcom/sun/prism/Graphics;->drawLine(FFFF)V

    goto/16 :goto_a

    .line 1283
    :cond_1f
    move-object/from16 v46, v2

    move/from16 v47, v32

    move/from16 v48, v33

    move/from16 v49, v34

    move/from16 v50, v35

    move-object/from16 v51, v10

    invoke-direct/range {v46 .. v51}, Lcom/sun/javafx/sg/prism/NGRegion;->createPaths(FFFFLjavafx/scene/layout/CornerRadii;)[Lcom/sun/javafx/geom/Path2D;

    move-result-object v46

    move-object/from16 v37, v46

    .line 1284
    .local v37, "paths":[Lcom/sun/javafx/geom/Shape;
    move-object/from16 v46, v24

    sget-object v47, Ljavafx/scene/layout/BorderStrokeStyle;->NONE:Ljavafx/scene/layout/BorderStrokeStyle;

    move-object/from16 v0, v46

    move-object/from16 v1, v47

    if-eq v0, v1, :cond_20

    .line 1285
    move-object/from16 v46, v10

    invoke-virtual/range {v46 .. v46}, Ljavafx/scene/layout/CornerRadii;->getTopLeftHorizontalRadius()D

    move-result-wide v46

    move-object/from16 v48, v10

    invoke-virtual/range {v48 .. v48}, Ljavafx/scene/layout/CornerRadii;->getTopRightHorizontalRadius()D

    move-result-wide v48

    add-double v46, v46, v48

    move-wide/from16 v38, v46

    .line 1286
    .local v38, "rsum":D
    move-object/from16 v46, v2

    move-object/from16 v0, v46

    iget v0, v0, Lcom/sun/javafx/sg/prism/NGRegion;->width:F

    move/from16 v46, v0

    move/from16 v0, v46

    float-to-double v0, v0

    move-wide/from16 v46, v0

    move-wide/from16 v48, v38

    const-wide v50, -0x403487ed5110b460L    # -0.21460183660255172

    mul-double v48, v48, v50

    add-double v46, v46, v48

    move-wide/from16 v40, v46

    .line 1287
    .local v40, "topLineLength":D
    move-object/from16 v46, v3

    move-object/from16 v47, v2

    move-object/from16 v48, v24

    move/from16 v49, v20

    move/from16 v0, v49

    float-to-double v0, v0

    move-wide/from16 v49, v0

    move-wide/from16 v51, v40

    const/16 v53, 0x1

    invoke-direct/range {v47 .. v53}, Lcom/sun/javafx/sg/prism/NGRegion;->createStroke(Ljavafx/scene/layout/BorderStrokeStyle;DDZ)Lcom/sun/prism/BasicStroke;

    move-result-object v47

    invoke-interface/range {v46 .. v47}, Lcom/sun/prism/Graphics;->setStroke(Lcom/sun/prism/BasicStroke;)V

    .line 1288
    move-object/from16 v46, v3

    move-object/from16 v47, v12

    invoke-static/range {v47 .. v47}, Lcom/sun/javafx/sg/prism/NGRegion;->getPlatformPaint(Ljavafx/scene/paint/Paint;)Lcom/sun/prism/paint/Paint;

    move-result-object v47

    invoke-interface/range {v46 .. v47}, Lcom/sun/prism/Graphics;->setPaint(Lcom/sun/prism/paint/Paint;)V

    .line 1289
    move-object/from16 v46, v3

    move-object/from16 v47, v37

    const/16 v48, 0x0

    aget-object v47, v47, v48

    invoke-interface/range {v46 .. v47}, Lcom/sun/prism/Graphics;->draw(Lcom/sun/javafx/geom/Shape;)V

    .line 1291
    .end local v38    # "rsum":D
    .end local v40    # "topLineLength":D
    :cond_20
    move-object/from16 v46, v25

    sget-object v47, Ljavafx/scene/layout/BorderStrokeStyle;->NONE:Ljavafx/scene/layout/BorderStrokeStyle;

    move-object/from16 v0, v46

    move-object/from16 v1, v47

    if-eq v0, v1, :cond_21

    .line 1292
    move-object/from16 v46, v10

    invoke-virtual/range {v46 .. v46}, Ljavafx/scene/layout/CornerRadii;->getTopRightVerticalRadius()D

    move-result-wide v46

    move-object/from16 v48, v10

    invoke-virtual/range {v48 .. v48}, Ljavafx/scene/layout/CornerRadii;->getBottomRightVerticalRadius()D

    move-result-wide v48

    add-double v46, v46, v48

    move-wide/from16 v38, v46

    .line 1293
    .restart local v38    # "rsum":D
    move-object/from16 v46, v2

    move-object/from16 v0, v46

    iget v0, v0, Lcom/sun/javafx/sg/prism/NGRegion;->height:F

    move/from16 v46, v0

    move/from16 v0, v46

    float-to-double v0, v0

    move-wide/from16 v46, v0

    move-wide/from16 v48, v38

    const-wide v50, -0x403487ed5110b460L    # -0.21460183660255172

    mul-double v48, v48, v50

    add-double v46, v46, v48

    move-wide/from16 v40, v46

    .line 1294
    .local v40, "rightLineLength":D
    move-object/from16 v46, v3

    move-object/from16 v47, v2

    move-object/from16 v48, v25

    move/from16 v49, v21

    move/from16 v0, v49

    float-to-double v0, v0

    move-wide/from16 v49, v0

    move-wide/from16 v51, v40

    const/16 v53, 0x1

    invoke-direct/range {v47 .. v53}, Lcom/sun/javafx/sg/prism/NGRegion;->createStroke(Ljavafx/scene/layout/BorderStrokeStyle;DDZ)Lcom/sun/prism/BasicStroke;

    move-result-object v47

    invoke-interface/range {v46 .. v47}, Lcom/sun/prism/Graphics;->setStroke(Lcom/sun/prism/BasicStroke;)V

    .line 1295
    move-object/from16 v46, v3

    move-object/from16 v47, v13

    invoke-static/range {v47 .. v47}, Lcom/sun/javafx/sg/prism/NGRegion;->getPlatformPaint(Ljavafx/scene/paint/Paint;)Lcom/sun/prism/paint/Paint;

    move-result-object v47

    invoke-interface/range {v46 .. v47}, Lcom/sun/prism/Graphics;->setPaint(Lcom/sun/prism/paint/Paint;)V

    .line 1296
    move-object/from16 v46, v3

    move-object/from16 v47, v37

    const/16 v48, 0x1

    aget-object v47, v47, v48

    invoke-interface/range {v46 .. v47}, Lcom/sun/prism/Graphics;->draw(Lcom/sun/javafx/geom/Shape;)V

    .line 1298
    .end local v38    # "rsum":D
    .end local v40    # "rightLineLength":D
    :cond_21
    move-object/from16 v46, v26

    sget-object v47, Ljavafx/scene/layout/BorderStrokeStyle;->NONE:Ljavafx/scene/layout/BorderStrokeStyle;

    move-object/from16 v0, v46

    move-object/from16 v1, v47

    if-eq v0, v1, :cond_22

    .line 1299
    move-object/from16 v46, v10

    invoke-virtual/range {v46 .. v46}, Ljavafx/scene/layout/CornerRadii;->getBottomLeftHorizontalRadius()D

    move-result-wide v46

    move-object/from16 v48, v10

    invoke-virtual/range {v48 .. v48}, Ljavafx/scene/layout/CornerRadii;->getBottomRightHorizontalRadius()D

    move-result-wide v48

    add-double v46, v46, v48

    move-wide/from16 v38, v46

    .line 1300
    .restart local v38    # "rsum":D
    move-object/from16 v46, v2

    move-object/from16 v0, v46

    iget v0, v0, Lcom/sun/javafx/sg/prism/NGRegion;->width:F

    move/from16 v46, v0

    move/from16 v0, v46

    float-to-double v0, v0

    move-wide/from16 v46, v0

    move-wide/from16 v48, v38

    const-wide v50, -0x403487ed5110b460L    # -0.21460183660255172

    mul-double v48, v48, v50

    add-double v46, v46, v48

    move-wide/from16 v40, v46

    .line 1301
    .local v40, "bottomLineLength":D
    move-object/from16 v46, v3

    move-object/from16 v47, v2

    move-object/from16 v48, v26

    move/from16 v49, v22

    move/from16 v0, v49

    float-to-double v0, v0

    move-wide/from16 v49, v0

    move-wide/from16 v51, v40

    const/16 v53, 0x1

    invoke-direct/range {v47 .. v53}, Lcom/sun/javafx/sg/prism/NGRegion;->createStroke(Ljavafx/scene/layout/BorderStrokeStyle;DDZ)Lcom/sun/prism/BasicStroke;

    move-result-object v47

    invoke-interface/range {v46 .. v47}, Lcom/sun/prism/Graphics;->setStroke(Lcom/sun/prism/BasicStroke;)V

    .line 1302
    move-object/from16 v46, v3

    move-object/from16 v47, v14

    invoke-static/range {v47 .. v47}, Lcom/sun/javafx/sg/prism/NGRegion;->getPlatformPaint(Ljavafx/scene/paint/Paint;)Lcom/sun/prism/paint/Paint;

    move-result-object v47

    invoke-interface/range {v46 .. v47}, Lcom/sun/prism/Graphics;->setPaint(Lcom/sun/prism/paint/Paint;)V

    .line 1303
    move-object/from16 v46, v3

    move-object/from16 v47, v37

    const/16 v48, 0x2

    aget-object v47, v47, v48

    invoke-interface/range {v46 .. v47}, Lcom/sun/prism/Graphics;->draw(Lcom/sun/javafx/geom/Shape;)V

    .line 1305
    .end local v38    # "rsum":D
    .end local v40    # "bottomLineLength":D
    :cond_22
    move-object/from16 v46, v27

    sget-object v47, Ljavafx/scene/layout/BorderStrokeStyle;->NONE:Ljavafx/scene/layout/BorderStrokeStyle;

    move-object/from16 v0, v46

    move-object/from16 v1, v47

    if-eq v0, v1, :cond_1

    .line 1306
    move-object/from16 v46, v10

    invoke-virtual/range {v46 .. v46}, Ljavafx/scene/layout/CornerRadii;->getTopLeftVerticalRadius()D

    move-result-wide v46

    move-object/from16 v48, v10

    invoke-virtual/range {v48 .. v48}, Ljavafx/scene/layout/CornerRadii;->getBottomLeftVerticalRadius()D

    move-result-wide v48

    add-double v46, v46, v48

    move-wide/from16 v38, v46

    .line 1307
    .restart local v38    # "rsum":D
    move-object/from16 v46, v2

    move-object/from16 v0, v46

    iget v0, v0, Lcom/sun/javafx/sg/prism/NGRegion;->height:F

    move/from16 v46, v0

    move/from16 v0, v46

    float-to-double v0, v0

    move-wide/from16 v46, v0

    move-wide/from16 v48, v38

    const-wide v50, -0x403487ed5110b460L    # -0.21460183660255172

    mul-double v48, v48, v50

    add-double v46, v46, v48

    move-wide/from16 v40, v46

    .line 1308
    .local v40, "leftLineLength":D
    move-object/from16 v46, v3

    move-object/from16 v47, v2

    move-object/from16 v48, v27

    move/from16 v49, v23

    move/from16 v0, v49

    float-to-double v0, v0

    move-wide/from16 v49, v0

    move-wide/from16 v51, v40

    const/16 v53, 0x1

    invoke-direct/range {v47 .. v53}, Lcom/sun/javafx/sg/prism/NGRegion;->createStroke(Ljavafx/scene/layout/BorderStrokeStyle;DDZ)Lcom/sun/prism/BasicStroke;

    move-result-object v47

    invoke-interface/range {v46 .. v47}, Lcom/sun/prism/Graphics;->setStroke(Lcom/sun/prism/BasicStroke;)V

    .line 1309
    move-object/from16 v46, v3

    move-object/from16 v47, v15

    invoke-static/range {v47 .. v47}, Lcom/sun/javafx/sg/prism/NGRegion;->getPlatformPaint(Ljavafx/scene/paint/Paint;)Lcom/sun/prism/paint/Paint;

    move-result-object v47

    invoke-interface/range {v46 .. v47}, Lcom/sun/prism/Graphics;->setPaint(Lcom/sun/prism/paint/Paint;)V

    .line 1310
    move-object/from16 v46, v3

    move-object/from16 v47, v37

    const/16 v48, 0x3

    aget-object v47, v47, v48

    invoke-interface/range {v46 .. v47}, Lcom/sun/prism/Graphics;->draw(Lcom/sun/javafx/geom/Shape;)V

    goto/16 :goto_a

    .line 1315
    .end local v8    # "stroke":Ljavafx/scene/layout/BorderStroke;
    .end local v9    # "widths":Ljavafx/scene/layout/BorderWidths;
    .end local v10    # "radii":Ljavafx/scene/layout/CornerRadii;
    .end local v11    # "insets":Ljavafx/geometry/Insets;
    .end local v12    # "topStroke":Ljavafx/scene/paint/Paint;
    .end local v13    # "rightStroke":Ljavafx/scene/paint/Paint;
    .end local v14    # "bottomStroke":Ljavafx/scene/paint/Paint;
    .end local v15    # "leftStroke":Ljavafx/scene/paint/Paint;
    .end local v16    # "topInset":F
    .end local v17    # "rightInset":F
    .end local v18    # "bottomInset":F
    .end local v19    # "leftInset":F
    .end local v20    # "topWidth":F
    .end local v21    # "rightWidth":F
    .end local v22    # "bottomWidth":F
    .end local v23    # "leftWidth":F
    .end local v24    # "topStyle":Ljavafx/scene/layout/BorderStrokeStyle;
    .end local v25    # "rightStyle":Ljavafx/scene/layout/BorderStrokeStyle;
    .end local v26    # "bottomStyle":Ljavafx/scene/layout/BorderStrokeStyle;
    .end local v27    # "leftStyle":Ljavafx/scene/layout/BorderStrokeStyle;
    .end local v28    # "topType":Ljavafx/scene/shape/StrokeType;
    .end local v29    # "rightType":Ljavafx/scene/shape/StrokeType;
    .end local v30    # "bottomType":Ljavafx/scene/shape/StrokeType;
    .end local v31    # "leftType":Ljavafx/scene/shape/StrokeType;
    .end local v32    # "t":F
    .end local v33    # "l":F
    .end local v34    # "b":F
    .end local v35    # "r":F
    .end local v36    # "radius":F
    .end local v37    # "paths":[Lcom/sun/javafx/geom/Shape;
    .end local v38    # "rsum":D
    .end local v40    # "leftLineLength":D
    :cond_23
    const/16 v46, 0x0

    move/from16 v6, v46

    move-object/from16 v46, v4

    invoke-interface/range {v46 .. v46}, Ljava/util/List;->size()I

    move-result v46

    move/from16 v7, v46

    :goto_e
    move/from16 v46, v6

    move/from16 v47, v7

    move/from16 v0, v46

    move/from16 v1, v47

    if-ge v0, v1, :cond_31

    .line 1316
    move-object/from16 v46, v4

    move/from16 v47, v6

    invoke-interface/range {v46 .. v47}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Ljavafx/scene/layout/BorderImage;

    move-object/from16 v8, v46

    .line 1317
    .local v8, "ib":Ljavafx/scene/layout/BorderImage;
    move-object/from16 v46, v8

    invoke-virtual/range {v46 .. v46}, Ljavafx/scene/layout/BorderImage;->getImage()Ljavafx/scene/image/Image;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljavafx/scene/image/Image;->impl_getPlatformImage()Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Lcom/sun/prism/Image;

    move-object/from16 v9, v46

    .line 1318
    .local v9, "prismImage":Lcom/sun/prism/Image;
    move-object/from16 v46, v9

    if-nez v46, :cond_25

    .line 1322
    .line 1315
    :cond_24
    :goto_f
    add-int/lit8 v6, v6, 0x1

    goto :goto_e

    .line 1324
    :cond_25
    move-object/from16 v46, v9

    invoke-virtual/range {v46 .. v46}, Lcom/sun/prism/Image;->getWidth()I

    move-result v46

    move/from16 v10, v46

    .line 1325
    .local v10, "imgWidth":I
    move-object/from16 v46, v9

    invoke-virtual/range {v46 .. v46}, Lcom/sun/prism/Image;->getHeight()I

    move-result v46

    move/from16 v11, v46

    .line 1326
    .local v11, "imgHeight":I
    move-object/from16 v46, v9

    invoke-virtual/range {v46 .. v46}, Lcom/sun/prism/Image;->getPixelScale()F

    move-result v46

    move/from16 v12, v46

    .line 1327
    .local v12, "imgScale":F
    move-object/from16 v46, v8

    invoke-virtual/range {v46 .. v46}, Ljavafx/scene/layout/BorderImage;->getWidths()Ljavafx/scene/layout/BorderWidths;

    move-result-object v46

    move-object/from16 v13, v46

    .line 1328
    .local v13, "widths":Ljavafx/scene/layout/BorderWidths;
    move-object/from16 v46, v8

    invoke-virtual/range {v46 .. v46}, Ljavafx/scene/layout/BorderImage;->getInsets()Ljavafx/geometry/Insets;

    move-result-object v46

    move-object/from16 v14, v46

    .line 1329
    .local v14, "insets":Ljavafx/geometry/Insets;
    move-object/from16 v46, v8

    invoke-virtual/range {v46 .. v46}, Ljavafx/scene/layout/BorderImage;->getSlices()Ljavafx/scene/layout/BorderWidths;

    move-result-object v46

    move-object/from16 v15, v46

    .line 1332
    .local v15, "slices":Ljavafx/scene/layout/BorderWidths;
    move-object/from16 v46, v14

    invoke-virtual/range {v46 .. v46}, Ljavafx/geometry/Insets;->getTop()D

    move-result-wide v46

    invoke-static/range {v46 .. v47}, Ljava/lang/Math;->round(D)J

    move-result-wide v46

    move-wide/from16 v0, v46

    long-to-int v0, v0

    move/from16 v46, v0

    move/from16 v16, v46

    .line 1333
    .local v16, "topInset":I
    move-object/from16 v46, v14

    invoke-virtual/range {v46 .. v46}, Ljavafx/geometry/Insets;->getRight()D

    move-result-wide v46

    invoke-static/range {v46 .. v47}, Ljava/lang/Math;->round(D)J

    move-result-wide v46

    move-wide/from16 v0, v46

    long-to-int v0, v0

    move/from16 v46, v0

    move/from16 v17, v46

    .line 1334
    .local v17, "rightInset":I
    move-object/from16 v46, v14

    invoke-virtual/range {v46 .. v46}, Ljavafx/geometry/Insets;->getBottom()D

    move-result-wide v46

    invoke-static/range {v46 .. v47}, Ljava/lang/Math;->round(D)J

    move-result-wide v46

    move-wide/from16 v0, v46

    long-to-int v0, v0

    move/from16 v46, v0

    move/from16 v18, v46

    .line 1335
    .local v18, "bottomInset":I
    move-object/from16 v46, v14

    invoke-virtual/range {v46 .. v46}, Ljavafx/geometry/Insets;->getLeft()D

    move-result-wide v46

    invoke-static/range {v46 .. v47}, Ljava/lang/Math;->round(D)J

    move-result-wide v46

    move-wide/from16 v0, v46

    long-to-int v0, v0

    move/from16 v46, v0

    move/from16 v19, v46

    .line 1337
    .local v19, "leftInset":I
    move-object/from16 v46, v2

    move-object/from16 v47, v13

    invoke-virtual/range {v47 .. v47}, Ljavafx/scene/layout/BorderWidths;->isTopAsPercentage()Z

    move-result v47

    move-object/from16 v48, v13

    invoke-virtual/range {v48 .. v48}, Ljavafx/scene/layout/BorderWidths;->getTop()D

    move-result-wide v48

    move-object/from16 v50, v2

    move-object/from16 v0, v50

    iget v0, v0, Lcom/sun/javafx/sg/prism/NGRegion;->height:F

    move/from16 v50, v0

    invoke-direct/range {v46 .. v50}, Lcom/sun/javafx/sg/prism/NGRegion;->widthSize(ZDF)I

    move-result v46

    move/from16 v20, v46

    .line 1338
    .local v20, "topWidth":I
    move-object/from16 v46, v2

    move-object/from16 v47, v13

    invoke-virtual/range {v47 .. v47}, Ljavafx/scene/layout/BorderWidths;->isRightAsPercentage()Z

    move-result v47

    move-object/from16 v48, v13

    invoke-virtual/range {v48 .. v48}, Ljavafx/scene/layout/BorderWidths;->getRight()D

    move-result-wide v48

    move-object/from16 v50, v2

    move-object/from16 v0, v50

    iget v0, v0, Lcom/sun/javafx/sg/prism/NGRegion;->width:F

    move/from16 v50, v0

    invoke-direct/range {v46 .. v50}, Lcom/sun/javafx/sg/prism/NGRegion;->widthSize(ZDF)I

    move-result v46

    move/from16 v21, v46

    .line 1339
    .local v21, "rightWidth":I
    move-object/from16 v46, v2

    move-object/from16 v47, v13

    invoke-virtual/range {v47 .. v47}, Ljavafx/scene/layout/BorderWidths;->isBottomAsPercentage()Z

    move-result v47

    move-object/from16 v48, v13

    invoke-virtual/range {v48 .. v48}, Ljavafx/scene/layout/BorderWidths;->getBottom()D

    move-result-wide v48

    move-object/from16 v50, v2

    move-object/from16 v0, v50

    iget v0, v0, Lcom/sun/javafx/sg/prism/NGRegion;->height:F

    move/from16 v50, v0

    invoke-direct/range {v46 .. v50}, Lcom/sun/javafx/sg/prism/NGRegion;->widthSize(ZDF)I

    move-result v46

    move/from16 v22, v46

    .line 1340
    .local v22, "bottomWidth":I
    move-object/from16 v46, v2

    move-object/from16 v47, v13

    invoke-virtual/range {v47 .. v47}, Ljavafx/scene/layout/BorderWidths;->isLeftAsPercentage()Z

    move-result v47

    move-object/from16 v48, v13

    invoke-virtual/range {v48 .. v48}, Ljavafx/scene/layout/BorderWidths;->getLeft()D

    move-result-wide v48

    move-object/from16 v50, v2

    move-object/from16 v0, v50

    iget v0, v0, Lcom/sun/javafx/sg/prism/NGRegion;->width:F

    move/from16 v50, v0

    invoke-direct/range {v46 .. v50}, Lcom/sun/javafx/sg/prism/NGRegion;->widthSize(ZDF)I

    move-result v46

    move/from16 v23, v46

    .line 1342
    .local v23, "leftWidth":I
    move-object/from16 v46, v2

    move-object/from16 v47, v15

    invoke-virtual/range {v47 .. v47}, Ljavafx/scene/layout/BorderWidths;->isTopAsPercentage()Z

    move-result v47

    move-object/from16 v48, v15

    invoke-virtual/range {v48 .. v48}, Ljavafx/scene/layout/BorderWidths;->getTop()D

    move-result-wide v48

    move/from16 v50, v11

    move/from16 v0, v50

    int-to-float v0, v0

    move/from16 v50, v0

    move/from16 v51, v12

    invoke-direct/range {v46 .. v51}, Lcom/sun/javafx/sg/prism/NGRegion;->sliceSize(ZDFF)I

    move-result v46

    move/from16 v24, v46

    .line 1343
    .local v24, "topSlice":I
    move-object/from16 v46, v2

    move-object/from16 v47, v15

    invoke-virtual/range {v47 .. v47}, Ljavafx/scene/layout/BorderWidths;->isRightAsPercentage()Z

    move-result v47

    move-object/from16 v48, v15

    invoke-virtual/range {v48 .. v48}, Ljavafx/scene/layout/BorderWidths;->getRight()D

    move-result-wide v48

    move/from16 v50, v10

    move/from16 v0, v50

    int-to-float v0, v0

    move/from16 v50, v0

    move/from16 v51, v12

    invoke-direct/range {v46 .. v51}, Lcom/sun/javafx/sg/prism/NGRegion;->sliceSize(ZDFF)I

    move-result v46

    move/from16 v25, v46

    .line 1344
    .local v25, "rightSlice":I
    move-object/from16 v46, v2

    move-object/from16 v47, v15

    invoke-virtual/range {v47 .. v47}, Ljavafx/scene/layout/BorderWidths;->isBottomAsPercentage()Z

    move-result v47

    move-object/from16 v48, v15

    invoke-virtual/range {v48 .. v48}, Ljavafx/scene/layout/BorderWidths;->getBottom()D

    move-result-wide v48

    move/from16 v50, v11

    move/from16 v0, v50

    int-to-float v0, v0

    move/from16 v50, v0

    move/from16 v51, v12

    invoke-direct/range {v46 .. v51}, Lcom/sun/javafx/sg/prism/NGRegion;->sliceSize(ZDFF)I

    move-result v46

    move/from16 v26, v46

    .line 1345
    .local v26, "bottomSlice":I
    move-object/from16 v46, v2

    move-object/from16 v47, v15

    invoke-virtual/range {v47 .. v47}, Ljavafx/scene/layout/BorderWidths;->isLeftAsPercentage()Z

    move-result v47

    move-object/from16 v48, v15

    invoke-virtual/range {v48 .. v48}, Ljavafx/scene/layout/BorderWidths;->getLeft()D

    move-result-wide v48

    move/from16 v50, v10

    move/from16 v0, v50

    int-to-float v0, v0

    move/from16 v50, v0

    move/from16 v51, v12

    invoke-direct/range {v46 .. v51}, Lcom/sun/javafx/sg/prism/NGRegion;->sliceSize(ZDFF)I

    move-result v46

    move/from16 v27, v46

    .line 1348
    .local v27, "leftSlice":I
    move/from16 v46, v19

    move/from16 v47, v23

    add-int v46, v46, v47

    move/from16 v47, v17

    add-int v46, v46, v47

    move/from16 v47, v21

    add-int v46, v46, v47

    move/from16 v0, v46

    int-to-float v0, v0

    move/from16 v46, v0

    move-object/from16 v47, v2

    move-object/from16 v0, v47

    iget v0, v0, Lcom/sun/javafx/sg/prism/NGRegion;->width:F

    move/from16 v47, v0

    cmpl-float v46, v46, v47

    if-gtz v46, :cond_24

    move/from16 v46, v16

    move/from16 v47, v20

    add-int v46, v46, v47

    move/from16 v47, v18

    add-int v46, v46, v47

    move/from16 v47, v22

    add-int v46, v46, v47

    move/from16 v0, v46

    int-to-float v0, v0

    move/from16 v46, v0

    move-object/from16 v47, v2

    move-object/from16 v0, v47

    iget v0, v0, Lcom/sun/javafx/sg/prism/NGRegion;->height:F

    move/from16 v47, v0

    cmpl-float v46, v46, v47

    if-lez v46, :cond_26

    .line 1350
    goto/16 :goto_f

    .line 1354
    :cond_26
    move/from16 v46, v19

    move/from16 v47, v23

    add-int v46, v46, v47

    move/from16 v28, v46

    .line 1355
    .local v28, "centerMinX":I
    move/from16 v46, v16

    move/from16 v47, v20

    add-int v46, v46, v47

    move/from16 v29, v46

    .line 1356
    .local v29, "centerMinY":I
    move-object/from16 v46, v2

    move-object/from16 v0, v46

    iget v0, v0, Lcom/sun/javafx/sg/prism/NGRegion;->width:F

    move/from16 v46, v0

    invoke-static/range {v46 .. v46}, Ljava/lang/Math;->round(F)I

    move-result v46

    move/from16 v47, v17

    sub-int v46, v46, v47

    move/from16 v47, v21

    sub-int v46, v46, v47

    move/from16 v47, v28

    sub-int v46, v46, v47

    move/from16 v30, v46

    .line 1357
    .local v30, "centerW":I
    move-object/from16 v46, v2

    move-object/from16 v0, v46

    iget v0, v0, Lcom/sun/javafx/sg/prism/NGRegion;->height:F

    move/from16 v46, v0

    invoke-static/range {v46 .. v46}, Ljava/lang/Math;->round(F)I

    move-result v46

    move/from16 v47, v18

    sub-int v46, v46, v47

    move/from16 v47, v22

    sub-int v46, v46, v47

    move/from16 v47, v29

    sub-int v46, v46, v47

    move/from16 v31, v46

    .line 1358
    .local v31, "centerH":I
    move/from16 v46, v30

    move/from16 v47, v28

    add-int v46, v46, v47

    move/from16 v32, v46

    .line 1359
    .local v32, "centerMaxX":I
    move/from16 v46, v31

    move/from16 v47, v29

    add-int v46, v46, v47

    move/from16 v33, v46

    .line 1360
    .local v33, "centerMaxY":I
    move/from16 v46, v10

    move/from16 v47, v27

    sub-int v46, v46, v47

    move/from16 v47, v25

    sub-int v46, v46, v47

    move/from16 v34, v46

    .line 1361
    .local v34, "centerSliceWidth":I
    move/from16 v46, v11

    move/from16 v47, v24

    sub-int v46, v46, v47

    move/from16 v47, v26

    sub-int v46, v46, v47

    move/from16 v35, v46

    .line 1363
    .local v35, "centerSliceHeight":I
    move-object/from16 v46, v2

    move-object/from16 v47, v3

    move-object/from16 v48, v9

    sget-object v49, Ljavafx/scene/layout/BorderRepeat;->STRETCH:Ljavafx/scene/layout/BorderRepeat;

    sget-object v50, Ljavafx/scene/layout/BorderRepeat;->STRETCH:Ljavafx/scene/layout/BorderRepeat;

    sget-object v51, Ljavafx/geometry/Side;->LEFT:Ljavafx/geometry/Side;

    sget-object v52, Ljavafx/geometry/Side;->TOP:Ljavafx/geometry/Side;

    move/from16 v53, v19

    move/from16 v0, v53

    int-to-float v0, v0

    move/from16 v53, v0

    move/from16 v54, v16

    move/from16 v0, v54

    int-to-float v0, v0

    move/from16 v54, v0

    move/from16 v55, v23

    move/from16 v0, v55

    int-to-float v0, v0

    move/from16 v55, v0

    move/from16 v56, v20

    move/from16 v0, v56

    int-to-float v0, v0

    move/from16 v56, v0

    const/16 v57, 0x0

    const/16 v58, 0x0

    move/from16 v59, v27

    move/from16 v60, v24

    const/16 v61, 0x0

    const/16 v62, 0x0

    move/from16 v63, v23

    move/from16 v0, v63

    int-to-float v0, v0

    move/from16 v63, v0

    move/from16 v64, v20

    move/from16 v0, v64

    int-to-float v0, v0

    move/from16 v64, v0

    invoke-direct/range {v46 .. v64}, Lcom/sun/javafx/sg/prism/NGRegion;->paintTiles(Lcom/sun/prism/Graphics;Lcom/sun/prism/Image;Ljavafx/scene/layout/BorderRepeat;Ljavafx/scene/layout/BorderRepeat;Ljavafx/geometry/Side;Ljavafx/geometry/Side;FFFFIIIIFFFF)V

    .line 1368
    move-object/from16 v46, v8

    invoke-virtual/range {v46 .. v46}, Ljavafx/scene/layout/BorderImage;->getRepeatX()Ljavafx/scene/layout/BorderRepeat;

    move-result-object v46

    sget-object v47, Ljavafx/scene/layout/BorderRepeat;->STRETCH:Ljavafx/scene/layout/BorderRepeat;

    move-object/from16 v0, v46

    move-object/from16 v1, v47

    if-ne v0, v1, :cond_27

    move/from16 v46, v30

    move/from16 v0, v46

    int-to-float v0, v0

    move/from16 v46, v0

    :goto_10
    move/from16 v36, v46

    .line 1370
    .local v36, "tileWidth":F
    move/from16 v46, v20

    move/from16 v0, v46

    int-to-float v0, v0

    move/from16 v46, v0

    move/from16 v37, v46

    .line 1371
    .local v37, "tileHeight":F
    move-object/from16 v46, v2

    move-object/from16 v47, v3

    move-object/from16 v48, v9

    move-object/from16 v49, v8

    .line 1372
    invoke-virtual/range {v49 .. v49}, Ljavafx/scene/layout/BorderImage;->getRepeatX()Ljavafx/scene/layout/BorderRepeat;

    move-result-object v49

    sget-object v50, Ljavafx/scene/layout/BorderRepeat;->STRETCH:Ljavafx/scene/layout/BorderRepeat;

    sget-object v51, Ljavafx/geometry/Side;->LEFT:Ljavafx/geometry/Side;

    sget-object v52, Ljavafx/geometry/Side;->TOP:Ljavafx/geometry/Side;

    move/from16 v53, v28

    move/from16 v0, v53

    int-to-float v0, v0

    move/from16 v53, v0

    move/from16 v54, v16

    move/from16 v0, v54

    int-to-float v0, v0

    move/from16 v54, v0

    move/from16 v55, v30

    move/from16 v0, v55

    int-to-float v0, v0

    move/from16 v55, v0

    move/from16 v56, v20

    move/from16 v0, v56

    int-to-float v0, v0

    move/from16 v56, v0

    move/from16 v57, v27

    const/16 v58, 0x0

    move/from16 v59, v34

    move/from16 v60, v24

    move/from16 v61, v30

    move/from16 v0, v61

    int-to-float v0, v0

    move/from16 v61, v0

    move/from16 v62, v36

    sub-float v61, v61, v62

    const/high16 v62, 0x40000000    # 2.0f

    div-float v61, v61, v62

    const/16 v62, 0x0

    move/from16 v63, v36

    move/from16 v64, v37

    .line 1371
    invoke-direct/range {v46 .. v64}, Lcom/sun/javafx/sg/prism/NGRegion;->paintTiles(Lcom/sun/prism/Graphics;Lcom/sun/prism/Image;Ljavafx/scene/layout/BorderRepeat;Ljavafx/scene/layout/BorderRepeat;Ljavafx/geometry/Side;Ljavafx/geometry/Side;FFFFIIIIFFFF)V

    .line 1377
    move-object/from16 v46, v2

    move-object/from16 v47, v3

    move-object/from16 v48, v9

    sget-object v49, Ljavafx/scene/layout/BorderRepeat;->STRETCH:Ljavafx/scene/layout/BorderRepeat;

    sget-object v50, Ljavafx/scene/layout/BorderRepeat;->STRETCH:Ljavafx/scene/layout/BorderRepeat;

    sget-object v51, Ljavafx/geometry/Side;->LEFT:Ljavafx/geometry/Side;

    sget-object v52, Ljavafx/geometry/Side;->TOP:Ljavafx/geometry/Side;

    move/from16 v53, v32

    move/from16 v0, v53

    int-to-float v0, v0

    move/from16 v53, v0

    move/from16 v54, v16

    move/from16 v0, v54

    int-to-float v0, v0

    move/from16 v54, v0

    move/from16 v55, v21

    move/from16 v0, v55

    int-to-float v0, v0

    move/from16 v55, v0

    move/from16 v56, v20

    move/from16 v0, v56

    int-to-float v0, v0

    move/from16 v56, v0

    move/from16 v57, v10

    move/from16 v58, v25

    sub-int v57, v57, v58

    const/16 v58, 0x0

    move/from16 v59, v25

    move/from16 v60, v24

    const/16 v61, 0x0

    const/16 v62, 0x0

    move/from16 v63, v21

    move/from16 v0, v63

    int-to-float v0, v0

    move/from16 v63, v0

    move/from16 v64, v20

    move/from16 v0, v64

    int-to-float v0, v0

    move/from16 v64, v0

    invoke-direct/range {v46 .. v64}, Lcom/sun/javafx/sg/prism/NGRegion;->paintTiles(Lcom/sun/prism/Graphics;Lcom/sun/prism/Image;Ljavafx/scene/layout/BorderRepeat;Ljavafx/scene/layout/BorderRepeat;Ljavafx/geometry/Side;Ljavafx/geometry/Side;FFFFIIIIFFFF)V

    .line 1382
    move/from16 v46, v23

    move/from16 v0, v46

    int-to-float v0, v0

    move/from16 v46, v0

    move/from16 v36, v46

    .line 1383
    move-object/from16 v46, v8

    invoke-virtual/range {v46 .. v46}, Ljavafx/scene/layout/BorderImage;->getRepeatY()Ljavafx/scene/layout/BorderRepeat;

    move-result-object v46

    sget-object v47, Ljavafx/scene/layout/BorderRepeat;->STRETCH:Ljavafx/scene/layout/BorderRepeat;

    move-object/from16 v0, v46

    move-object/from16 v1, v47

    if-ne v0, v1, :cond_29

    move/from16 v46, v31

    move/from16 v0, v46

    int-to-float v0, v0

    move/from16 v46, v0

    :goto_11
    move/from16 v37, v46

    .line 1385
    move-object/from16 v46, v2

    move-object/from16 v47, v3

    move-object/from16 v48, v9

    sget-object v49, Ljavafx/scene/layout/BorderRepeat;->STRETCH:Ljavafx/scene/layout/BorderRepeat;

    move-object/from16 v50, v8

    invoke-virtual/range {v50 .. v50}, Ljavafx/scene/layout/BorderImage;->getRepeatY()Ljavafx/scene/layout/BorderRepeat;

    move-result-object v50

    sget-object v51, Ljavafx/geometry/Side;->LEFT:Ljavafx/geometry/Side;

    sget-object v52, Ljavafx/geometry/Side;->TOP:Ljavafx/geometry/Side;

    move/from16 v53, v19

    move/from16 v0, v53

    int-to-float v0, v0

    move/from16 v53, v0

    move/from16 v54, v29

    move/from16 v0, v54

    int-to-float v0, v0

    move/from16 v54, v0

    move/from16 v55, v23

    move/from16 v0, v55

    int-to-float v0, v0

    move/from16 v55, v0

    move/from16 v56, v31

    move/from16 v0, v56

    int-to-float v0, v0

    move/from16 v56, v0

    const/16 v57, 0x0

    move/from16 v58, v24

    move/from16 v59, v27

    move/from16 v60, v35

    const/16 v61, 0x0

    move/from16 v62, v31

    move/from16 v0, v62

    int-to-float v0, v0

    move/from16 v62, v0

    move/from16 v63, v37

    sub-float v62, v62, v63

    const/high16 v63, 0x40000000    # 2.0f

    div-float v62, v62, v63

    move/from16 v63, v36

    move/from16 v64, v37

    invoke-direct/range {v46 .. v64}, Lcom/sun/javafx/sg/prism/NGRegion;->paintTiles(Lcom/sun/prism/Graphics;Lcom/sun/prism/Image;Ljavafx/scene/layout/BorderRepeat;Ljavafx/scene/layout/BorderRepeat;Ljavafx/geometry/Side;Ljavafx/geometry/Side;FFFFIIIIFFFF)V

    .line 1390
    move/from16 v46, v21

    move/from16 v0, v46

    int-to-float v0, v0

    move/from16 v46, v0

    move/from16 v36, v46

    .line 1391
    move-object/from16 v46, v8

    invoke-virtual/range {v46 .. v46}, Ljavafx/scene/layout/BorderImage;->getRepeatY()Ljavafx/scene/layout/BorderRepeat;

    move-result-object v46

    sget-object v47, Ljavafx/scene/layout/BorderRepeat;->STRETCH:Ljavafx/scene/layout/BorderRepeat;

    move-object/from16 v0, v46

    move-object/from16 v1, v47

    if-ne v0, v1, :cond_2b

    move/from16 v46, v31

    move/from16 v0, v46

    int-to-float v0, v0

    move/from16 v46, v0

    :goto_12
    move/from16 v37, v46

    .line 1393
    move-object/from16 v46, v2

    move-object/from16 v47, v3

    move-object/from16 v48, v9

    sget-object v49, Ljavafx/scene/layout/BorderRepeat;->STRETCH:Ljavafx/scene/layout/BorderRepeat;

    move-object/from16 v50, v8

    invoke-virtual/range {v50 .. v50}, Ljavafx/scene/layout/BorderImage;->getRepeatY()Ljavafx/scene/layout/BorderRepeat;

    move-result-object v50

    sget-object v51, Ljavafx/geometry/Side;->LEFT:Ljavafx/geometry/Side;

    sget-object v52, Ljavafx/geometry/Side;->TOP:Ljavafx/geometry/Side;

    move/from16 v53, v32

    move/from16 v0, v53

    int-to-float v0, v0

    move/from16 v53, v0

    move/from16 v54, v29

    move/from16 v0, v54

    int-to-float v0, v0

    move/from16 v54, v0

    move/from16 v55, v21

    move/from16 v0, v55

    int-to-float v0, v0

    move/from16 v55, v0

    move/from16 v56, v31

    move/from16 v0, v56

    int-to-float v0, v0

    move/from16 v56, v0

    move/from16 v57, v10

    move/from16 v58, v25

    sub-int v57, v57, v58

    move/from16 v58, v24

    move/from16 v59, v25

    move/from16 v60, v35

    const/16 v61, 0x0

    move/from16 v62, v31

    move/from16 v0, v62

    int-to-float v0, v0

    move/from16 v62, v0

    move/from16 v63, v37

    sub-float v62, v62, v63

    const/high16 v63, 0x40000000    # 2.0f

    div-float v62, v62, v63

    move/from16 v63, v36

    move/from16 v64, v37

    invoke-direct/range {v46 .. v64}, Lcom/sun/javafx/sg/prism/NGRegion;->paintTiles(Lcom/sun/prism/Graphics;Lcom/sun/prism/Image;Ljavafx/scene/layout/BorderRepeat;Ljavafx/scene/layout/BorderRepeat;Ljavafx/geometry/Side;Ljavafx/geometry/Side;FFFFIIIIFFFF)V

    .line 1398
    move-object/from16 v46, v2

    move-object/from16 v47, v3

    move-object/from16 v48, v9

    sget-object v49, Ljavafx/scene/layout/BorderRepeat;->STRETCH:Ljavafx/scene/layout/BorderRepeat;

    sget-object v50, Ljavafx/scene/layout/BorderRepeat;->STRETCH:Ljavafx/scene/layout/BorderRepeat;

    sget-object v51, Ljavafx/geometry/Side;->LEFT:Ljavafx/geometry/Side;

    sget-object v52, Ljavafx/geometry/Side;->TOP:Ljavafx/geometry/Side;

    move/from16 v53, v19

    move/from16 v0, v53

    int-to-float v0, v0

    move/from16 v53, v0

    move/from16 v54, v33

    move/from16 v0, v54

    int-to-float v0, v0

    move/from16 v54, v0

    move/from16 v55, v23

    move/from16 v0, v55

    int-to-float v0, v0

    move/from16 v55, v0

    move/from16 v56, v22

    move/from16 v0, v56

    int-to-float v0, v0

    move/from16 v56, v0

    const/16 v57, 0x0

    move/from16 v58, v11

    move/from16 v59, v26

    sub-int v58, v58, v59

    move/from16 v59, v27

    move/from16 v60, v26

    const/16 v61, 0x0

    const/16 v62, 0x0

    move/from16 v63, v23

    move/from16 v0, v63

    int-to-float v0, v0

    move/from16 v63, v0

    move/from16 v64, v22

    move/from16 v0, v64

    int-to-float v0, v0

    move/from16 v64, v0

    invoke-direct/range {v46 .. v64}, Lcom/sun/javafx/sg/prism/NGRegion;->paintTiles(Lcom/sun/prism/Graphics;Lcom/sun/prism/Image;Ljavafx/scene/layout/BorderRepeat;Ljavafx/scene/layout/BorderRepeat;Ljavafx/geometry/Side;Ljavafx/geometry/Side;FFFFIIIIFFFF)V

    .line 1403
    move-object/from16 v46, v8

    invoke-virtual/range {v46 .. v46}, Ljavafx/scene/layout/BorderImage;->getRepeatX()Ljavafx/scene/layout/BorderRepeat;

    move-result-object v46

    sget-object v47, Ljavafx/scene/layout/BorderRepeat;->STRETCH:Ljavafx/scene/layout/BorderRepeat;

    move-object/from16 v0, v46

    move-object/from16 v1, v47

    if-ne v0, v1, :cond_2d

    move/from16 v46, v30

    move/from16 v0, v46

    int-to-float v0, v0

    move/from16 v46, v0

    :goto_13
    move/from16 v36, v46

    .line 1405
    move/from16 v46, v22

    move/from16 v0, v46

    int-to-float v0, v0

    move/from16 v46, v0

    move/from16 v37, v46

    .line 1406
    move-object/from16 v46, v2

    move-object/from16 v47, v3

    move-object/from16 v48, v9

    move-object/from16 v49, v8

    invoke-virtual/range {v49 .. v49}, Ljavafx/scene/layout/BorderImage;->getRepeatX()Ljavafx/scene/layout/BorderRepeat;

    move-result-object v49

    sget-object v50, Ljavafx/scene/layout/BorderRepeat;->STRETCH:Ljavafx/scene/layout/BorderRepeat;

    sget-object v51, Ljavafx/geometry/Side;->LEFT:Ljavafx/geometry/Side;

    sget-object v52, Ljavafx/geometry/Side;->TOP:Ljavafx/geometry/Side;

    move/from16 v53, v28

    move/from16 v0, v53

    int-to-float v0, v0

    move/from16 v53, v0

    move/from16 v54, v33

    move/from16 v0, v54

    int-to-float v0, v0

    move/from16 v54, v0

    move/from16 v55, v30

    move/from16 v0, v55

    int-to-float v0, v0

    move/from16 v55, v0

    move/from16 v56, v22

    move/from16 v0, v56

    int-to-float v0, v0

    move/from16 v56, v0

    move/from16 v57, v27

    move/from16 v58, v11

    move/from16 v59, v26

    sub-int v58, v58, v59

    move/from16 v59, v34

    move/from16 v60, v26

    move/from16 v61, v30

    move/from16 v0, v61

    int-to-float v0, v0

    move/from16 v61, v0

    move/from16 v62, v36

    sub-float v61, v61, v62

    const/high16 v62, 0x40000000    # 2.0f

    div-float v61, v61, v62

    const/16 v62, 0x0

    move/from16 v63, v36

    move/from16 v64, v37

    invoke-direct/range {v46 .. v64}, Lcom/sun/javafx/sg/prism/NGRegion;->paintTiles(Lcom/sun/prism/Graphics;Lcom/sun/prism/Image;Ljavafx/scene/layout/BorderRepeat;Ljavafx/scene/layout/BorderRepeat;Ljavafx/geometry/Side;Ljavafx/geometry/Side;FFFFIIIIFFFF)V

    .line 1411
    move-object/from16 v46, v2

    move-object/from16 v47, v3

    move-object/from16 v48, v9

    sget-object v49, Ljavafx/scene/layout/BorderRepeat;->STRETCH:Ljavafx/scene/layout/BorderRepeat;

    sget-object v50, Ljavafx/scene/layout/BorderRepeat;->STRETCH:Ljavafx/scene/layout/BorderRepeat;

    sget-object v51, Ljavafx/geometry/Side;->LEFT:Ljavafx/geometry/Side;

    sget-object v52, Ljavafx/geometry/Side;->TOP:Ljavafx/geometry/Side;

    move/from16 v53, v32

    move/from16 v0, v53

    int-to-float v0, v0

    move/from16 v53, v0

    move/from16 v54, v33

    move/from16 v0, v54

    int-to-float v0, v0

    move/from16 v54, v0

    move/from16 v55, v21

    move/from16 v0, v55

    int-to-float v0, v0

    move/from16 v55, v0

    move/from16 v56, v22

    move/from16 v0, v56

    int-to-float v0, v0

    move/from16 v56, v0

    move/from16 v57, v10

    move/from16 v58, v25

    sub-int v57, v57, v58

    move/from16 v58, v11

    move/from16 v59, v26

    sub-int v58, v58, v59

    move/from16 v59, v25

    move/from16 v60, v26

    const/16 v61, 0x0

    const/16 v62, 0x0

    move/from16 v63, v21

    move/from16 v0, v63

    int-to-float v0, v0

    move/from16 v63, v0

    move/from16 v64, v22

    move/from16 v0, v64

    int-to-float v0, v0

    move/from16 v64, v0

    invoke-direct/range {v46 .. v64}, Lcom/sun/javafx/sg/prism/NGRegion;->paintTiles(Lcom/sun/prism/Graphics;Lcom/sun/prism/Image;Ljavafx/scene/layout/BorderRepeat;Ljavafx/scene/layout/BorderRepeat;Ljavafx/geometry/Side;Ljavafx/geometry/Side;FFFFIIIIFFFF)V

    .line 1416
    move-object/from16 v46, v8

    invoke-virtual/range {v46 .. v46}, Ljavafx/scene/layout/BorderImage;->isFilled()Z

    move-result v46

    if-eqz v46, :cond_24

    .line 1418
    move-object/from16 v46, v8

    invoke-virtual/range {v46 .. v46}, Ljavafx/scene/layout/BorderImage;->getRepeatX()Ljavafx/scene/layout/BorderRepeat;

    move-result-object v46

    sget-object v47, Ljavafx/scene/layout/BorderRepeat;->STRETCH:Ljavafx/scene/layout/BorderRepeat;

    move-object/from16 v0, v46

    move-object/from16 v1, v47

    if-ne v0, v1, :cond_2f

    move/from16 v46, v30

    move/from16 v0, v46

    int-to-float v0, v0

    move/from16 v46, v0

    :goto_14
    move/from16 v38, v46

    .line 1419
    .local v38, "imgW":F
    move-object/from16 v46, v8

    invoke-virtual/range {v46 .. v46}, Ljavafx/scene/layout/BorderImage;->getRepeatY()Ljavafx/scene/layout/BorderRepeat;

    move-result-object v46

    sget-object v47, Ljavafx/scene/layout/BorderRepeat;->STRETCH:Ljavafx/scene/layout/BorderRepeat;

    move-object/from16 v0, v46

    move-object/from16 v1, v47

    if-ne v0, v1, :cond_30

    move/from16 v46, v31

    move/from16 v0, v46

    int-to-float v0, v0

    move/from16 v46, v0

    :goto_15
    move/from16 v39, v46

    .line 1420
    .local v39, "imgH":F
    move-object/from16 v46, v2

    move-object/from16 v47, v3

    move-object/from16 v48, v9

    move-object/from16 v49, v8

    invoke-virtual/range {v49 .. v49}, Ljavafx/scene/layout/BorderImage;->getRepeatX()Ljavafx/scene/layout/BorderRepeat;

    move-result-object v49

    move-object/from16 v50, v8

    invoke-virtual/range {v50 .. v50}, Ljavafx/scene/layout/BorderImage;->getRepeatY()Ljavafx/scene/layout/BorderRepeat;

    move-result-object v50

    sget-object v51, Ljavafx/geometry/Side;->LEFT:Ljavafx/geometry/Side;

    sget-object v52, Ljavafx/geometry/Side;->TOP:Ljavafx/geometry/Side;

    move/from16 v53, v28

    move/from16 v0, v53

    int-to-float v0, v0

    move/from16 v53, v0

    move/from16 v54, v29

    move/from16 v0, v54

    int-to-float v0, v0

    move/from16 v54, v0

    move/from16 v55, v30

    move/from16 v0, v55

    int-to-float v0, v0

    move/from16 v55, v0

    move/from16 v56, v31

    move/from16 v0, v56

    int-to-float v0, v0

    move/from16 v56, v0

    move/from16 v57, v27

    move/from16 v58, v24

    move/from16 v59, v34

    move/from16 v60, v35

    const/16 v61, 0x0

    const/16 v62, 0x0

    move/from16 v63, v38

    move/from16 v64, v39

    invoke-direct/range {v46 .. v64}, Lcom/sun/javafx/sg/prism/NGRegion;->paintTiles(Lcom/sun/prism/Graphics;Lcom/sun/prism/Image;Ljavafx/scene/layout/BorderRepeat;Ljavafx/scene/layout/BorderRepeat;Ljavafx/geometry/Side;Ljavafx/geometry/Side;FFFFIIIIFFFF)V

    goto/16 :goto_f

    .line 1368
    .end local v36    # "tileWidth":F
    .end local v37    # "tileHeight":F
    .end local v38    # "imgW":F
    .end local v39    # "imgH":F
    :cond_27
    move/from16 v46, v24

    if-lez v46, :cond_28

    move/from16 v46, v34

    move/from16 v47, v20

    mul-int v46, v46, v47

    move/from16 v47, v24

    div-int v46, v46, v47

    :goto_16
    move/from16 v0, v46

    int-to-float v0, v0

    move/from16 v46, v0

    goto/16 :goto_10

    :cond_28
    const/16 v46, 0x0

    goto :goto_16

    .line 1383
    .restart local v36    # "tileWidth":F
    .restart local v37    # "tileHeight":F
    :cond_29
    move/from16 v46, v27

    if-lez v46, :cond_2a

    move/from16 v46, v23

    move/from16 v47, v35

    mul-int v46, v46, v47

    move/from16 v47, v27

    div-int v46, v46, v47

    :goto_17
    move/from16 v0, v46

    int-to-float v0, v0

    move/from16 v46, v0

    goto/16 :goto_11

    :cond_2a
    const/16 v46, 0x0

    goto :goto_17

    .line 1391
    :cond_2b
    move/from16 v46, v25

    if-lez v46, :cond_2c

    move/from16 v46, v21

    move/from16 v47, v35

    mul-int v46, v46, v47

    move/from16 v47, v25

    div-int v46, v46, v47

    :goto_18
    move/from16 v0, v46

    int-to-float v0, v0

    move/from16 v46, v0

    goto/16 :goto_12

    :cond_2c
    const/16 v46, 0x0

    goto :goto_18

    .line 1403
    :cond_2d
    move/from16 v46, v26

    if-lez v46, :cond_2e

    move/from16 v46, v34

    move/from16 v47, v22

    mul-int v46, v46, v47

    move/from16 v47, v26

    div-int v46, v46, v47

    :goto_19
    move/from16 v0, v46

    int-to-float v0, v0

    move/from16 v46, v0

    goto/16 :goto_13

    :cond_2e
    const/16 v46, 0x0

    goto :goto_19

    .line 1418
    :cond_2f
    move/from16 v46, v34

    move/from16 v0, v46

    int-to-float v0, v0

    move/from16 v46, v0

    goto/16 :goto_14

    .line 1419
    .restart local v38    # "imgW":F
    :cond_30
    move/from16 v46, v35

    move/from16 v0, v46

    int-to-float v0, v0

    move/from16 v46, v0

    goto/16 :goto_15

    .line 1426
    .end local v8    # "ib":Ljavafx/scene/layout/BorderImage;
    .end local v9    # "prismImage":Lcom/sun/prism/Image;
    .end local v10    # "imgWidth":I
    .end local v11    # "imgHeight":I
    .end local v12    # "imgScale":F
    .end local v13    # "widths":Ljavafx/scene/layout/BorderWidths;
    .end local v14    # "insets":Ljavafx/geometry/Insets;
    .end local v15    # "slices":Ljavafx/scene/layout/BorderWidths;
    .end local v16    # "topInset":I
    .end local v17    # "rightInset":I
    .end local v18    # "bottomInset":I
    .end local v19    # "leftInset":I
    .end local v20    # "topWidth":I
    .end local v21    # "rightWidth":I
    .end local v22    # "bottomWidth":I
    .end local v23    # "leftWidth":I
    .end local v24    # "topSlice":I
    .end local v25    # "rightSlice":I
    .end local v26    # "bottomSlice":I
    .end local v27    # "leftSlice":I
    .end local v28    # "centerMinX":I
    .end local v29    # "centerMinY":I
    .end local v30    # "centerW":I
    .end local v31    # "centerH":I
    .end local v32    # "centerMaxX":I
    .end local v33    # "centerMaxY":I
    .end local v34    # "centerSliceWidth":I
    .end local v35    # "centerSliceHeight":I
    .end local v36    # "tileWidth":F
    .end local v37    # "tileHeight":F
    .end local v38    # "imgW":F
    :cond_31
    return-void
.end method

.method private resizeShape(FFFF)Lcom/sun/javafx/geom/Shape;
    .locals 17

    .prologue
    .line 1768
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/javafx/sg/prism/NGRegion;
    move/from16 v2, p1

    .local v2, "topOffset":F
    move/from16 v3, p2

    .local v3, "rightOffset":F
    move/from16 v4, p3

    .local v4, "bottomOffset":F
    move/from16 v5, p4

    .local v5, "leftOffset":F
    move-object v11, v1

    iget-object v11, v11, Lcom/sun/javafx/sg/prism/NGRegion;->shape:Lcom/sun/javafx/geom/Shape;

    invoke-virtual {v11}, Lcom/sun/javafx/geom/Shape;->getBounds()Lcom/sun/javafx/geom/RectBounds;

    move-result-object v11

    move-object v6, v11

    .line 1769
    .local v6, "bounds":Lcom/sun/javafx/geom/RectBounds;
    move-object v11, v1

    iget-boolean v11, v11, Lcom/sun/javafx/sg/prism/NGRegion;->scaleShape:Z

    if-eqz v11, :cond_1

    .line 1772
    sget-object v11, Lcom/sun/javafx/sg/prism/NGRegion;->SCRATCH_AFFINE:Lcom/sun/javafx/geom/transform/Affine2D;

    invoke-virtual {v11}, Lcom/sun/javafx/geom/transform/Affine2D;->setToIdentity()V

    .line 1773
    sget-object v11, Lcom/sun/javafx/sg/prism/NGRegion;->SCRATCH_AFFINE:Lcom/sun/javafx/geom/transform/Affine2D;

    move v12, v5

    float-to-double v12, v12

    move v14, v2

    float-to-double v14, v14

    invoke-virtual {v11, v12, v13, v14, v15}, Lcom/sun/javafx/geom/transform/Affine2D;->translate(DD)V

    .line 1776
    move-object v11, v1

    iget v11, v11, Lcom/sun/javafx/sg/prism/NGRegion;->width:F

    move v12, v5

    sub-float/2addr v11, v12

    move v12, v3

    sub-float/2addr v11, v12

    move v7, v11

    .line 1777
    .local v7, "w":F
    move-object v11, v1

    iget v11, v11, Lcom/sun/javafx/sg/prism/NGRegion;->height:F

    move v12, v2

    sub-float/2addr v11, v12

    move v12, v4

    sub-float/2addr v11, v12

    move v8, v11

    .line 1778
    .local v8, "h":F
    sget-object v11, Lcom/sun/javafx/sg/prism/NGRegion;->SCRATCH_AFFINE:Lcom/sun/javafx/geom/transform/Affine2D;

    move v12, v7

    move-object v13, v6

    invoke-virtual {v13}, Lcom/sun/javafx/geom/RectBounds;->getWidth()F

    move-result v13

    div-float/2addr v12, v13

    float-to-double v12, v12

    move v14, v8

    move-object v15, v6

    invoke-virtual {v15}, Lcom/sun/javafx/geom/RectBounds;->getHeight()F

    move-result v15

    div-float/2addr v14, v15

    float-to-double v14, v14

    invoke-virtual {v11, v12, v13, v14, v15}, Lcom/sun/javafx/geom/transform/Affine2D;->scale(DD)V

    .line 1781
    move-object v11, v1

    iget-boolean v11, v11, Lcom/sun/javafx/sg/prism/NGRegion;->centerShape:Z

    if-eqz v11, :cond_0

    .line 1782
    sget-object v11, Lcom/sun/javafx/sg/prism/NGRegion;->SCRATCH_AFFINE:Lcom/sun/javafx/geom/transform/Affine2D;

    move-object v12, v6

    invoke-virtual {v12}, Lcom/sun/javafx/geom/RectBounds;->getMinX()F

    move-result v12

    neg-float v12, v12

    float-to-double v12, v12

    move-object v14, v6

    invoke-virtual {v14}, Lcom/sun/javafx/geom/RectBounds;->getMinY()F

    move-result v14

    neg-float v14, v14

    float-to-double v14, v14

    invoke-virtual {v11, v12, v13, v14, v15}, Lcom/sun/javafx/geom/transform/Affine2D;->translate(DD)V

    .line 1784
    :cond_0
    sget-object v11, Lcom/sun/javafx/sg/prism/NGRegion;->SCRATCH_AFFINE:Lcom/sun/javafx/geom/transform/Affine2D;

    move-object v12, v1

    iget-object v12, v12, Lcom/sun/javafx/sg/prism/NGRegion;->shape:Lcom/sun/javafx/geom/Shape;

    invoke-virtual {v11, v12}, Lcom/sun/javafx/geom/transform/Affine2D;->createTransformedShape(Lcom/sun/javafx/geom/Shape;)Lcom/sun/javafx/geom/Shape;

    move-result-object v11

    move-object v1, v11

    .line 1815
    .end local v1    # "this":Lcom/sun/javafx/sg/prism/NGRegion;
    .end local v7    # "w":F
    .end local v8    # "h":F
    :goto_0
    return-object v1

    .line 1785
    .restart local v1    # "this":Lcom/sun/javafx/sg/prism/NGRegion;
    :cond_1
    move-object v11, v1

    iget-boolean v11, v11, Lcom/sun/javafx/sg/prism/NGRegion;->centerShape:Z

    if-eqz v11, :cond_4

    .line 1789
    move-object v11, v6

    invoke-virtual {v11}, Lcom/sun/javafx/geom/RectBounds;->getWidth()F

    move-result v11

    move v7, v11

    .line 1790
    .local v7, "boundsWidth":F
    move-object v11, v6

    invoke-virtual {v11}, Lcom/sun/javafx/geom/RectBounds;->getHeight()F

    move-result v11

    move v8, v11

    .line 1791
    .local v8, "boundsHeight":F
    move v11, v7

    move v12, v5

    sub-float/2addr v11, v12

    move v12, v3

    sub-float/2addr v11, v12

    move v9, v11

    .line 1792
    .local v9, "newW":F
    move v11, v8

    move v12, v2

    sub-float/2addr v11, v12

    move v12, v4

    sub-float/2addr v11, v12

    move v10, v11

    .line 1793
    .local v10, "newH":F
    sget-object v11, Lcom/sun/javafx/sg/prism/NGRegion;->SCRATCH_AFFINE:Lcom/sun/javafx/geom/transform/Affine2D;

    invoke-virtual {v11}, Lcom/sun/javafx/geom/transform/Affine2D;->setToIdentity()V

    .line 1794
    sget-object v11, Lcom/sun/javafx/sg/prism/NGRegion;->SCRATCH_AFFINE:Lcom/sun/javafx/geom/transform/Affine2D;

    move v12, v5

    move-object v13, v1

    iget v13, v13, Lcom/sun/javafx/sg/prism/NGRegion;->width:F

    move v14, v7

    sub-float/2addr v13, v14

    const/high16 v14, 0x40000000    # 2.0f

    div-float/2addr v13, v14

    add-float/2addr v12, v13

    move-object v13, v6

    invoke-virtual {v13}, Lcom/sun/javafx/geom/RectBounds;->getMinX()F

    move-result v13

    sub-float/2addr v12, v13

    float-to-double v12, v12

    move v14, v2

    move-object v15, v1

    iget v15, v15, Lcom/sun/javafx/sg/prism/NGRegion;->height:F

    move/from16 v16, v8

    sub-float v15, v15, v16

    const/high16 v16, 0x40000000    # 2.0f

    div-float v15, v15, v16

    add-float/2addr v14, v15

    move-object v15, v6

    .line 1795
    invoke-virtual {v15}, Lcom/sun/javafx/geom/RectBounds;->getMinY()F

    move-result v15

    sub-float/2addr v14, v15

    float-to-double v14, v14

    .line 1794
    invoke-virtual {v11, v12, v13, v14, v15}, Lcom/sun/javafx/geom/transform/Affine2D;->translate(DD)V

    .line 1796
    move v11, v10

    move v12, v8

    cmpl-float v11, v11, v12

    if-nez v11, :cond_2

    move v11, v9

    move v12, v7

    cmpl-float v11, v11, v12

    if-eqz v11, :cond_3

    .line 1797
    :cond_2
    sget-object v11, Lcom/sun/javafx/sg/prism/NGRegion;->SCRATCH_AFFINE:Lcom/sun/javafx/geom/transform/Affine2D;

    move-object v12, v6

    invoke-virtual {v12}, Lcom/sun/javafx/geom/RectBounds;->getMinX()F

    move-result v12

    float-to-double v12, v12

    move-object v14, v6

    invoke-virtual {v14}, Lcom/sun/javafx/geom/RectBounds;->getMinY()F

    move-result v14

    float-to-double v14, v14

    invoke-virtual {v11, v12, v13, v14, v15}, Lcom/sun/javafx/geom/transform/Affine2D;->translate(DD)V

    .line 1798
    sget-object v11, Lcom/sun/javafx/sg/prism/NGRegion;->SCRATCH_AFFINE:Lcom/sun/javafx/geom/transform/Affine2D;

    move v12, v9

    move v13, v7

    div-float/2addr v12, v13

    float-to-double v12, v12

    move v14, v10

    move v15, v8

    div-float/2addr v14, v15

    float-to-double v14, v14

    invoke-virtual {v11, v12, v13, v14, v15}, Lcom/sun/javafx/geom/transform/Affine2D;->scale(DD)V

    .line 1799
    sget-object v11, Lcom/sun/javafx/sg/prism/NGRegion;->SCRATCH_AFFINE:Lcom/sun/javafx/geom/transform/Affine2D;

    move-object v12, v6

    invoke-virtual {v12}, Lcom/sun/javafx/geom/RectBounds;->getMinX()F

    move-result v12

    neg-float v12, v12

    float-to-double v12, v12

    move-object v14, v6

    invoke-virtual {v14}, Lcom/sun/javafx/geom/RectBounds;->getMinY()F

    move-result v14

    neg-float v14, v14

    float-to-double v14, v14

    invoke-virtual {v11, v12, v13, v14, v15}, Lcom/sun/javafx/geom/transform/Affine2D;->translate(DD)V

    .line 1801
    :cond_3
    sget-object v11, Lcom/sun/javafx/sg/prism/NGRegion;->SCRATCH_AFFINE:Lcom/sun/javafx/geom/transform/Affine2D;

    move-object v12, v1

    iget-object v12, v12, Lcom/sun/javafx/sg/prism/NGRegion;->shape:Lcom/sun/javafx/geom/Shape;

    invoke-virtual {v11, v12}, Lcom/sun/javafx/geom/transform/Affine2D;->createTransformedShape(Lcom/sun/javafx/geom/Shape;)Lcom/sun/javafx/geom/Shape;

    move-result-object v11

    move-object v1, v11

    goto/16 :goto_0

    .line 1802
    .end local v7    # "boundsWidth":F
    .end local v8    # "boundsHeight":F
    .end local v9    # "newW":F
    .end local v10    # "newH":F
    :cond_4
    move v11, v2

    const/4 v12, 0x0

    cmpl-float v11, v11, v12

    if-nez v11, :cond_5

    move v11, v3

    const/4 v12, 0x0

    cmpl-float v11, v11, v12

    if-nez v11, :cond_5

    move v11, v4

    const/4 v12, 0x0

    cmpl-float v11, v11, v12

    if-nez v11, :cond_5

    move v11, v5

    const/4 v12, 0x0

    cmpl-float v11, v11, v12

    if-eqz v11, :cond_6

    .line 1805
    :cond_5
    move-object v11, v6

    invoke-virtual {v11}, Lcom/sun/javafx/geom/RectBounds;->getWidth()F

    move-result v11

    move v12, v5

    sub-float/2addr v11, v12

    move v12, v3

    sub-float/2addr v11, v12

    move v7, v11

    .line 1806
    .local v7, "newW":F
    move-object v11, v6

    invoke-virtual {v11}, Lcom/sun/javafx/geom/RectBounds;->getHeight()F

    move-result v11

    move v12, v2

    sub-float/2addr v11, v12

    move v12, v4

    sub-float/2addr v11, v12

    move v8, v11

    .line 1807
    .local v8, "newH":F
    sget-object v11, Lcom/sun/javafx/sg/prism/NGRegion;->SCRATCH_AFFINE:Lcom/sun/javafx/geom/transform/Affine2D;

    invoke-virtual {v11}, Lcom/sun/javafx/geom/transform/Affine2D;->setToIdentity()V

    .line 1808
    sget-object v11, Lcom/sun/javafx/sg/prism/NGRegion;->SCRATCH_AFFINE:Lcom/sun/javafx/geom/transform/Affine2D;

    move v12, v5

    float-to-double v12, v12

    move v14, v2

    float-to-double v14, v14

    invoke-virtual {v11, v12, v13, v14, v15}, Lcom/sun/javafx/geom/transform/Affine2D;->translate(DD)V

    .line 1809
    sget-object v11, Lcom/sun/javafx/sg/prism/NGRegion;->SCRATCH_AFFINE:Lcom/sun/javafx/geom/transform/Affine2D;

    move-object v12, v6

    invoke-virtual {v12}, Lcom/sun/javafx/geom/RectBounds;->getMinX()F

    move-result v12

    float-to-double v12, v12

    move-object v14, v6

    invoke-virtual {v14}, Lcom/sun/javafx/geom/RectBounds;->getMinY()F

    move-result v14

    float-to-double v14, v14

    invoke-virtual {v11, v12, v13, v14, v15}, Lcom/sun/javafx/geom/transform/Affine2D;->translate(DD)V

    .line 1810
    sget-object v11, Lcom/sun/javafx/sg/prism/NGRegion;->SCRATCH_AFFINE:Lcom/sun/javafx/geom/transform/Affine2D;

    move v12, v7

    move-object v13, v6

    invoke-virtual {v13}, Lcom/sun/javafx/geom/RectBounds;->getWidth()F

    move-result v13

    div-float/2addr v12, v13

    float-to-double v12, v12

    move v14, v8

    move-object v15, v6

    invoke-virtual {v15}, Lcom/sun/javafx/geom/RectBounds;->getHeight()F

    move-result v15

    div-float/2addr v14, v15

    float-to-double v14, v14

    invoke-virtual {v11, v12, v13, v14, v15}, Lcom/sun/javafx/geom/transform/Affine2D;->scale(DD)V

    .line 1811
    sget-object v11, Lcom/sun/javafx/sg/prism/NGRegion;->SCRATCH_AFFINE:Lcom/sun/javafx/geom/transform/Affine2D;

    move-object v12, v6

    invoke-virtual {v12}, Lcom/sun/javafx/geom/RectBounds;->getMinX()F

    move-result v12

    neg-float v12, v12

    float-to-double v12, v12

    move-object v14, v6

    invoke-virtual {v14}, Lcom/sun/javafx/geom/RectBounds;->getMinY()F

    move-result v14

    neg-float v14, v14

    float-to-double v14, v14

    invoke-virtual {v11, v12, v13, v14, v15}, Lcom/sun/javafx/geom/transform/Affine2D;->translate(DD)V

    .line 1812
    sget-object v11, Lcom/sun/javafx/sg/prism/NGRegion;->SCRATCH_AFFINE:Lcom/sun/javafx/geom/transform/Affine2D;

    move-object v12, v1

    iget-object v12, v12, Lcom/sun/javafx/sg/prism/NGRegion;->shape:Lcom/sun/javafx/geom/Shape;

    invoke-virtual {v11, v12}, Lcom/sun/javafx/geom/transform/Affine2D;->createTransformedShape(Lcom/sun/javafx/geom/Shape;)Lcom/sun/javafx/geom/Shape;

    move-result-object v11

    move-object v1, v11

    goto/16 :goto_0

    .line 1815
    .end local v7    # "newW":F
    .end local v8    # "newH":F
    :cond_6
    move-object v11, v1

    iget-object v11, v11, Lcom/sun/javafx/sg/prism/NGRegion;->shape:Lcom/sun/javafx/geom/Shape;

    move-object v1, v11

    goto/16 :goto_0
.end method

.method private roundUp(D)I
    .locals 9

    .prologue
    .line 1465
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/sg/prism/NGRegion;
    move-wide v2, p1

    .local v2, "d":D
    move-wide v4, v2

    move-wide v6, v2

    double-to-int v6, v6

    int-to-double v6, v6

    sub-double/2addr v4, v6

    const-wide/16 v6, 0x0

    cmpl-double v4, v4, v6

    if-nez v4, :cond_0

    move-wide v4, v2

    double-to-int v4, v4

    :goto_0
    move v1, v4

    .end local v1    # "this":Lcom/sun/javafx/sg/prism/NGRegion;
    return v1

    .restart local v1    # "this":Lcom/sun/javafx/sg/prism/NGRegion;
    :cond_0
    move-wide v4, v2

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    add-double/2addr v4, v6

    double-to-int v4, v4

    goto :goto_0
.end method

.method private setBorderStyle(Lcom/sun/prism/Graphics;Ljavafx/scene/layout/BorderStroke;DZ)V
    .locals 21

    .prologue
    .line 1610
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/javafx/sg/prism/NGRegion;
    move-object/from16 v2, p1

    .local v2, "g":Lcom/sun/prism/Graphics;
    move-object/from16 v3, p2

    .local v3, "sb":Ljavafx/scene/layout/BorderStroke;
    move-wide/from16 v4, p3

    .local v4, "length":D
    move/from16 v6, p5

    .local v6, "forceCentered":Z
    move-object v12, v3

    invoke-virtual {v12}, Ljavafx/scene/layout/BorderStroke;->getWidths()Ljavafx/scene/layout/BorderWidths;

    move-result-object v12

    move-object v7, v12

    .line 1611
    .local v7, "widths":Ljavafx/scene/layout/BorderWidths;
    move-object v12, v3

    invoke-virtual {v12}, Ljavafx/scene/layout/BorderStroke;->getTopStyle()Ljavafx/scene/layout/BorderStrokeStyle;

    move-result-object v12

    move-object v8, v12

    .line 1612
    .local v8, "bs":Ljavafx/scene/layout/BorderStrokeStyle;
    move-object v12, v7

    invoke-virtual {v12}, Ljavafx/scene/layout/BorderWidths;->isTopAsPercentage()Z

    move-result v12

    if-eqz v12, :cond_2

    move-object v12, v1

    iget v12, v12, Lcom/sun/javafx/sg/prism/NGRegion;->height:F

    float-to-double v12, v12

    move-object v14, v7

    invoke-virtual {v14}, Ljavafx/scene/layout/BorderWidths;->getTop()D

    move-result-wide v14

    mul-double/2addr v12, v14

    :goto_0
    move-wide v9, v12

    .line 1613
    .local v9, "sbWidth":D
    move-object v12, v3

    invoke-virtual {v12}, Ljavafx/scene/layout/BorderStroke;->getTopStroke()Ljavafx/scene/paint/Paint;

    move-result-object v12

    invoke-static {v12}, Lcom/sun/javafx/sg/prism/NGRegion;->getPlatformPaint(Ljavafx/scene/paint/Paint;)Lcom/sun/prism/paint/Paint;

    move-result-object v12

    move-object v11, v12

    .line 1614
    .local v11, "sbFill":Lcom/sun/prism/paint/Paint;
    move-object v12, v8

    if-nez v12, :cond_0

    .line 1615
    move-object v12, v3

    invoke-virtual {v12}, Ljavafx/scene/layout/BorderStroke;->getLeftStyle()Ljavafx/scene/layout/BorderStrokeStyle;

    move-result-object v12

    move-object v8, v12

    .line 1616
    move-object v12, v7

    invoke-virtual {v12}, Ljavafx/scene/layout/BorderWidths;->isLeftAsPercentage()Z

    move-result v12

    if-eqz v12, :cond_3

    move-object v12, v1

    iget v12, v12, Lcom/sun/javafx/sg/prism/NGRegion;->width:F

    float-to-double v12, v12

    move-object v14, v7

    invoke-virtual {v14}, Ljavafx/scene/layout/BorderWidths;->getLeft()D

    move-result-wide v14

    mul-double/2addr v12, v14

    :goto_1
    move-wide v9, v12

    .line 1617
    move-object v12, v3

    invoke-virtual {v12}, Ljavafx/scene/layout/BorderStroke;->getLeftStroke()Ljavafx/scene/paint/Paint;

    move-result-object v12

    invoke-static {v12}, Lcom/sun/javafx/sg/prism/NGRegion;->getPlatformPaint(Ljavafx/scene/paint/Paint;)Lcom/sun/prism/paint/Paint;

    move-result-object v12

    move-object v11, v12

    .line 1618
    move-object v12, v8

    if-nez v12, :cond_0

    .line 1619
    move-object v12, v3

    invoke-virtual {v12}, Ljavafx/scene/layout/BorderStroke;->getBottomStyle()Ljavafx/scene/layout/BorderStrokeStyle;

    move-result-object v12

    move-object v8, v12

    .line 1620
    move-object v12, v7

    invoke-virtual {v12}, Ljavafx/scene/layout/BorderWidths;->isBottomAsPercentage()Z

    move-result v12

    if-eqz v12, :cond_4

    move-object v12, v1

    iget v12, v12, Lcom/sun/javafx/sg/prism/NGRegion;->height:F

    float-to-double v12, v12

    move-object v14, v7

    invoke-virtual {v14}, Ljavafx/scene/layout/BorderWidths;->getBottom()D

    move-result-wide v14

    mul-double/2addr v12, v14

    :goto_2
    move-wide v9, v12

    .line 1621
    move-object v12, v3

    invoke-virtual {v12}, Ljavafx/scene/layout/BorderStroke;->getBottomStroke()Ljavafx/scene/paint/Paint;

    move-result-object v12

    invoke-static {v12}, Lcom/sun/javafx/sg/prism/NGRegion;->getPlatformPaint(Ljavafx/scene/paint/Paint;)Lcom/sun/prism/paint/Paint;

    move-result-object v12

    move-object v11, v12

    .line 1622
    move-object v12, v8

    if-nez v12, :cond_0

    .line 1623
    move-object v12, v3

    invoke-virtual {v12}, Ljavafx/scene/layout/BorderStroke;->getRightStyle()Ljavafx/scene/layout/BorderStrokeStyle;

    move-result-object v12

    move-object v8, v12

    .line 1624
    move-object v12, v7

    invoke-virtual {v12}, Ljavafx/scene/layout/BorderWidths;->isRightAsPercentage()Z

    move-result v12

    if-eqz v12, :cond_5

    move-object v12, v1

    iget v12, v12, Lcom/sun/javafx/sg/prism/NGRegion;->width:F

    float-to-double v12, v12

    move-object v14, v7

    invoke-virtual {v14}, Ljavafx/scene/layout/BorderWidths;->getRight()D

    move-result-wide v14

    mul-double/2addr v12, v14

    :goto_3
    move-wide v9, v12

    .line 1625
    move-object v12, v3

    invoke-virtual {v12}, Ljavafx/scene/layout/BorderStroke;->getRightStroke()Ljavafx/scene/paint/Paint;

    move-result-object v12

    invoke-static {v12}, Lcom/sun/javafx/sg/prism/NGRegion;->getPlatformPaint(Ljavafx/scene/paint/Paint;)Lcom/sun/prism/paint/Paint;

    move-result-object v12

    move-object v11, v12

    .line 1629
    :cond_0
    move-object v12, v8

    if-eqz v12, :cond_1

    move-object v12, v8

    sget-object v13, Ljavafx/scene/layout/BorderStrokeStyle;->NONE:Ljavafx/scene/layout/BorderStrokeStyle;

    if-ne v12, v13, :cond_6

    .line 1630
    .line 1635
    :cond_1
    :goto_4
    return-void

    .line 1612
    .end local v9    # "sbWidth":D
    .end local v11    # "sbFill":Lcom/sun/prism/paint/Paint;
    :cond_2
    move-object v12, v7

    invoke-virtual {v12}, Ljavafx/scene/layout/BorderWidths;->getTop()D

    move-result-wide v12

    goto/16 :goto_0

    .line 1616
    .restart local v9    # "sbWidth":D
    .restart local v11    # "sbFill":Lcom/sun/prism/paint/Paint;
    :cond_3
    move-object v12, v7

    invoke-virtual {v12}, Ljavafx/scene/layout/BorderWidths;->getLeft()D

    move-result-wide v12

    goto :goto_1

    .line 1620
    :cond_4
    move-object v12, v7

    invoke-virtual {v12}, Ljavafx/scene/layout/BorderWidths;->getBottom()D

    move-result-wide v12

    goto :goto_2

    .line 1624
    :cond_5
    move-object v12, v7

    invoke-virtual {v12}, Ljavafx/scene/layout/BorderWidths;->getRight()D

    move-result-wide v12

    goto :goto_3

    .line 1633
    :cond_6
    move-object v12, v2

    move-object v13, v1

    move-object v14, v8

    move-wide v15, v9

    move-wide/from16 v17, v4

    move/from16 v19, v6

    invoke-direct/range {v13 .. v19}, Lcom/sun/javafx/sg/prism/NGRegion;->createStroke(Ljavafx/scene/layout/BorderStrokeStyle;DDZ)Lcom/sun/prism/BasicStroke;

    move-result-object v13

    invoke-interface {v12, v13}, Lcom/sun/prism/Graphics;->setStroke(Lcom/sun/prism/BasicStroke;)V

    .line 1634
    move-object v12, v2

    move-object v13, v11

    invoke-interface {v12, v13}, Lcom/sun/prism/Graphics;->setPaint(Lcom/sun/prism/paint/Paint;)V

    .line 1635
    goto :goto_4
.end method

.method private sliceSize(ZDFF)I
    .locals 10

    .prologue
    .line 1459
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGRegion;
    move v1, p1

    .local v1, "isPercent":Z
    move-wide v2, p2

    .local v2, "sliceSize":D
    move v4, p4

    .local v4, "objSize":F
    move v5, p5

    .local v5, "scale":F
    move v6, v1

    if-eqz v6, :cond_0

    move-wide v6, v2

    move v8, v4

    float-to-double v8, v8

    mul-double/2addr v6, v8

    move-wide v2, v6

    .line 1460
    :cond_0
    move-wide v6, v2

    move v8, v4

    float-to-double v8, v8

    cmpl-double v6, v6, v8

    if-lez v6, :cond_1

    move v6, v4

    float-to-double v6, v6

    move-wide v2, v6

    .line 1461
    :cond_1
    move-wide v6, v2

    move v8, v5

    float-to-double v8, v8

    mul-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    long-to-int v6, v6

    move v0, v6

    .end local v0    # "this":Lcom/sun/javafx/sg/prism/NGRegion;
    return v0
.end method

.method private updateBackgroundInsets()V
    .locals 27

    .prologue
    .line 1435
    move-object/from16 v3, p0

    .local v3, "this":Lcom/sun/javafx/sg/prism/NGRegion;
    const/4 v14, 0x0

    move v4, v14

    .local v4, "top":F
    const/4 v14, 0x0

    move v5, v14

    .local v5, "right":F
    const/4 v14, 0x0

    move v6, v14

    .local v6, "bottom":F
    const/4 v14, 0x0

    move v7, v14

    .line 1436
    .local v7, "left":F
    move-object v14, v3

    iget-object v14, v14, Lcom/sun/javafx/sg/prism/NGRegion;->background:Ljavafx/scene/layout/Background;

    invoke-virtual {v14}, Ljavafx/scene/layout/Background;->getFills()Ljava/util/List;

    move-result-object v14

    move-object v8, v14

    .line 1437
    .local v8, "fills":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/layout/BackgroundFill;>;"
    const/4 v14, 0x0

    move v9, v14

    .local v9, "i":I
    move-object v14, v8

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14

    move v10, v14

    .local v10, "max":I
    :goto_0
    move v14, v9

    move v15, v10

    if-ge v14, v15, :cond_0

    .line 1442
    move-object v14, v8

    move v15, v9

    invoke-interface {v14, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljavafx/scene/layout/BackgroundFill;

    move-object v11, v14

    .line 1443
    .local v11, "fill":Ljavafx/scene/layout/BackgroundFill;
    move-object v14, v11

    invoke-virtual {v14}, Ljavafx/scene/layout/BackgroundFill;->getInsets()Ljavafx/geometry/Insets;

    move-result-object v14

    move-object v12, v14

    .line 1444
    .local v12, "insets":Ljavafx/geometry/Insets;
    move-object v14, v3

    move v15, v9

    invoke-direct {v14, v15}, Lcom/sun/javafx/sg/prism/NGRegion;->getNormalizedFillRadii(I)Ljavafx/scene/layout/CornerRadii;

    move-result-object v14

    move-object v13, v14

    .line 1445
    .local v13, "radii":Ljavafx/scene/layout/CornerRadii;
    move v14, v4

    float-to-double v14, v14

    move-object/from16 v16, v12

    invoke-virtual/range {v16 .. v16}, Ljavafx/geometry/Insets;->getTop()D

    move-result-wide v16

    move-object/from16 v18, v13

    invoke-virtual/range {v18 .. v18}, Ljavafx/scene/layout/CornerRadii;->getTopLeftVerticalRadius()D

    move-result-wide v18

    move-object/from16 v20, v13

    invoke-virtual/range {v20 .. v20}, Ljavafx/scene/layout/CornerRadii;->getTopRightVerticalRadius()D

    move-result-wide v20

    invoke-static/range {v18 .. v21}, Ljava/lang/Math;->max(DD)D

    move-result-wide v18

    add-double v16, v16, v18

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->max(DD)D

    move-result-wide v14

    double-to-float v14, v14

    move v4, v14

    .line 1446
    move v14, v5

    float-to-double v14, v14

    move-object/from16 v16, v12

    invoke-virtual/range {v16 .. v16}, Ljavafx/geometry/Insets;->getRight()D

    move-result-wide v16

    move-object/from16 v18, v13

    invoke-virtual/range {v18 .. v18}, Ljavafx/scene/layout/CornerRadii;->getTopRightHorizontalRadius()D

    move-result-wide v18

    move-object/from16 v20, v13

    invoke-virtual/range {v20 .. v20}, Ljavafx/scene/layout/CornerRadii;->getBottomRightHorizontalRadius()D

    move-result-wide v20

    invoke-static/range {v18 .. v21}, Ljava/lang/Math;->max(DD)D

    move-result-wide v18

    add-double v16, v16, v18

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->max(DD)D

    move-result-wide v14

    double-to-float v14, v14

    move v5, v14

    .line 1447
    move v14, v6

    float-to-double v14, v14

    move-object/from16 v16, v12

    invoke-virtual/range {v16 .. v16}, Ljavafx/geometry/Insets;->getBottom()D

    move-result-wide v16

    move-object/from16 v18, v13

    invoke-virtual/range {v18 .. v18}, Ljavafx/scene/layout/CornerRadii;->getBottomRightVerticalRadius()D

    move-result-wide v18

    move-object/from16 v20, v13

    invoke-virtual/range {v20 .. v20}, Ljavafx/scene/layout/CornerRadii;->getBottomLeftVerticalRadius()D

    move-result-wide v20

    invoke-static/range {v18 .. v21}, Ljava/lang/Math;->max(DD)D

    move-result-wide v18

    add-double v16, v16, v18

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->max(DD)D

    move-result-wide v14

    double-to-float v14, v14

    move v6, v14

    .line 1448
    move v14, v7

    float-to-double v14, v14

    move-object/from16 v16, v12

    invoke-virtual/range {v16 .. v16}, Ljavafx/geometry/Insets;->getLeft()D

    move-result-wide v16

    move-object/from16 v18, v13

    invoke-virtual/range {v18 .. v18}, Ljavafx/scene/layout/CornerRadii;->getTopLeftHorizontalRadius()D

    move-result-wide v18

    move-object/from16 v20, v13

    invoke-virtual/range {v20 .. v20}, Ljavafx/scene/layout/CornerRadii;->getBottomLeftHorizontalRadius()D

    move-result-wide v20

    invoke-static/range {v18 .. v21}, Ljava/lang/Math;->max(DD)D

    move-result-wide v18

    add-double v16, v16, v18

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->max(DD)D

    move-result-wide v14

    double-to-float v14, v14

    move v7, v14

    .line 1437
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0

    .line 1450
    .end local v11    # "fill":Ljavafx/scene/layout/BackgroundFill;
    .end local v12    # "insets":Ljavafx/geometry/Insets;
    .end local v13    # "radii":Ljavafx/scene/layout/CornerRadii;
    :cond_0
    move-object v14, v3

    new-instance v15, Ljavafx/geometry/Insets;

    move-object/from16 v26, v15

    move-object/from16 v15, v26

    move-object/from16 v16, v26

    move-object/from16 v17, v3

    move/from16 v18, v4

    move/from16 v0, v18

    float-to-double v0, v0

    move-wide/from16 v18, v0

    invoke-direct/range {v17 .. v19}, Lcom/sun/javafx/sg/prism/NGRegion;->roundUp(D)I

    move-result v17

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v17, v0

    move-object/from16 v19, v3

    move/from16 v20, v5

    move/from16 v0, v20

    float-to-double v0, v0

    move-wide/from16 v20, v0

    invoke-direct/range {v19 .. v21}, Lcom/sun/javafx/sg/prism/NGRegion;->roundUp(D)I

    move-result v19

    move/from16 v0, v19

    int-to-double v0, v0

    move-wide/from16 v19, v0

    move-object/from16 v21, v3

    move/from16 v22, v6

    move/from16 v0, v22

    float-to-double v0, v0

    move-wide/from16 v22, v0

    invoke-direct/range {v21 .. v23}, Lcom/sun/javafx/sg/prism/NGRegion;->roundUp(D)I

    move-result v21

    move/from16 v0, v21

    int-to-double v0, v0

    move-wide/from16 v21, v0

    move-object/from16 v23, v3

    move/from16 v24, v7

    move/from16 v0, v24

    float-to-double v0, v0

    move-wide/from16 v24, v0

    invoke-direct/range {v23 .. v25}, Lcom/sun/javafx/sg/prism/NGRegion;->roundUp(D)I

    move-result v23

    move/from16 v0, v23

    int-to-double v0, v0

    move-wide/from16 v23, v0

    invoke-direct/range {v16 .. v24}, Ljavafx/geometry/Insets;-><init>(DDDD)V

    iput-object v15, v14, Lcom/sun/javafx/sg/prism/NGRegion;->backgroundInsets:Ljavafx/geometry/Insets;

    .line 1451
    return-void
.end method

.method private widthSize(ZDF)I
    .locals 10

    .prologue
    .line 1455
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/sg/prism/NGRegion;
    move v2, p1

    .local v2, "isPercent":Z
    move-wide v3, p2

    .local v3, "sliceSize":D
    move v5, p4

    .local v5, "objSize":F
    move v6, v2

    if-eqz v6, :cond_0

    move-wide v6, v3

    move v8, v5

    float-to-double v8, v8

    mul-double/2addr v6, v8

    :goto_0
    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    long-to-int v6, v6

    move v1, v6

    .end local v1    # "this":Lcom/sun/javafx/sg/prism/NGRegion;
    return v1

    .restart local v1    # "this":Lcom/sun/javafx/sg/prism/NGRegion;
    :cond_0
    move-wide v6, v3

    goto :goto_0
.end method


# virtual methods
.method public clearDirtyTree()V
    .locals 2

    .prologue
    .line 443
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGRegion;
    move-object v1, v0

    invoke-super {v1}, Lcom/sun/javafx/sg/prism/NGGroup;->clearDirtyTree()V

    .line 444
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/sg/prism/NGRegion;->ngShape:Lcom/sun/javafx/sg/prism/NGShape;

    if-eqz v1, :cond_0

    .line 445
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/sg/prism/NGRegion;->ngShape:Lcom/sun/javafx/sg/prism/NGShape;

    invoke-virtual {v1}, Lcom/sun/javafx/sg/prism/NGShape;->clearDirtyTree()V

    .line 447
    :cond_0
    return-void
.end method

.method protected computeOpaqueRegion(Lcom/sun/javafx/geom/RectBounds;)Lcom/sun/javafx/geom/RectBounds;
    .locals 9

    .prologue
    .line 505
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGRegion;
    move-object v1, p1

    .local v1, "opaqueRegion":Lcom/sun/javafx/geom/RectBounds;
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/sg/prism/NGRegion;->opaqueLeft:F

    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/sg/prism/NGRegion;->opaqueTop:F

    const/4 v5, 0x0

    move-object v6, v0

    iget v6, v6, Lcom/sun/javafx/sg/prism/NGRegion;->width:F

    move-object v7, v0

    iget v7, v7, Lcom/sun/javafx/sg/prism/NGRegion;->opaqueRight:F

    sub-float/2addr v6, v7

    move-object v7, v0

    iget v7, v7, Lcom/sun/javafx/sg/prism/NGRegion;->height:F

    move-object v8, v0

    iget v8, v8, Lcom/sun/javafx/sg/prism/NGRegion;->opaqueBottom:F

    sub-float/2addr v7, v8

    const/4 v8, 0x0

    invoke-virtual/range {v2 .. v8}, Lcom/sun/javafx/geom/RectBounds;->deriveWithNewBounds(FFFFFF)Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v2

    check-cast v2, Lcom/sun/javafx/geom/RectBounds;

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/sg/prism/NGRegion;
    return-object v0
.end method

.method protected computeRenderRoot(Lcom/sun/javafx/sg/prism/NodePath;Lcom/sun/javafx/geom/RectBounds;ILcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/javafx/geom/transform/GeneralTransform3D;)Lcom/sun/javafx/sg/prism/NGNode$RenderRootResult;
    .locals 13

    .prologue
    .line 512
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGRegion;
    move-object v1, p1

    .local v1, "path":Lcom/sun/javafx/sg/prism/NodePath;
    move-object v2, p2

    .local v2, "dirtyRegion":Lcom/sun/javafx/geom/RectBounds;
    move/from16 v3, p3

    .local v3, "cullingIndex":I
    move-object/from16 v4, p4

    .local v4, "tx":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object/from16 v5, p5

    .local v5, "pvTx":Lcom/sun/javafx/geom/transform/GeneralTransform3D;
    move-object v7, v0

    move-object v8, v1

    move-object v9, v2

    move v10, v3

    move-object v11, v4

    move-object v12, v5

    invoke-super/range {v7 .. v12}, Lcom/sun/javafx/sg/prism/NGGroup;->computeRenderRoot(Lcom/sun/javafx/sg/prism/NodePath;Lcom/sun/javafx/geom/RectBounds;ILcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/javafx/geom/transform/GeneralTransform3D;)Lcom/sun/javafx/sg/prism/NGNode$RenderRootResult;

    move-result-object v7

    move-object v6, v7

    .line 513
    .local v6, "result":Lcom/sun/javafx/sg/prism/NGNode$RenderRootResult;
    move-object v7, v6

    sget-object v8, Lcom/sun/javafx/sg/prism/NGNode$RenderRootResult;->NO_RENDER_ROOT:Lcom/sun/javafx/sg/prism/NGNode$RenderRootResult;

    if-ne v7, v8, :cond_0

    .line 514
    move-object v7, v0

    move-object v8, v1

    move-object v9, v2

    move v10, v3

    move-object v11, v4

    move-object v12, v5

    invoke-virtual/range {v7 .. v12}, Lcom/sun/javafx/sg/prism/NGRegion;->computeNodeRenderRoot(Lcom/sun/javafx/sg/prism/NodePath;Lcom/sun/javafx/geom/RectBounds;ILcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/javafx/geom/transform/GeneralTransform3D;)Lcom/sun/javafx/sg/prism/NGNode$RenderRootResult;

    move-result-object v7

    move-object v6, v7

    .line 516
    :cond_0
    move-object v7, v6

    move-object v0, v7

    .end local v0    # "this":Lcom/sun/javafx/sg/prism/NGRegion;
    return-object v0
.end method

.method final getBackground()Ljavafx/scene/layout/Background;
    .locals 2

    .prologue
    .line 2016
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGRegion;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/sg/prism/NGRegion;->background:Ljavafx/scene/layout/Background;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/sg/prism/NGRegion;
    return-object v0
.end method

.method final getBorder()Ljavafx/scene/layout/Border;
    .locals 2

    .prologue
    .line 2012
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGRegion;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/sg/prism/NGRegion;->border:Ljavafx/scene/layout/Border;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/sg/prism/NGRegion;
    return-object v0
.end method

.method final getHeight()F
    .locals 2

    .prologue
    .line 2024
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGRegion;
    move-object v1, v0

    iget v1, v1, Lcom/sun/javafx/sg/prism/NGRegion;->height:F

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/sg/prism/NGRegion;
    return v0
.end method

.method final getWidth()F
    .locals 2

    .prologue
    .line 2020
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGRegion;
    move-object v1, v0

    iget v1, v1, Lcom/sun/javafx/sg/prism/NGRegion;->width:F

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/sg/prism/NGRegion;
    return v0
.end method

.method protected hasOpaqueRegion()Z
    .locals 2

    .prologue
    .line 490
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGRegion;
    move-object v1, v0

    invoke-super {v1}, Lcom/sun/javafx/sg/prism/NGGroup;->hasOpaqueRegion()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    iget v1, v1, Lcom/sun/javafx/sg/prism/NGRegion;->opaqueTop:F

    .line 491
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_0

    move-object v1, v0

    iget v1, v1, Lcom/sun/javafx/sg/prism/NGRegion;->opaqueRight:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_0

    move-object v1, v0

    iget v1, v1, Lcom/sun/javafx/sg/prism/NGRegion;->opaqueBottom:F

    .line 492
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_0

    move-object v1, v0

    iget v1, v1, Lcom/sun/javafx/sg/prism/NGRegion;->opaqueLeft:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/sg/prism/NGRegion;
    return v0

    .restart local v0    # "this":Lcom/sun/javafx/sg/prism/NGRegion;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected hasOverlappingContents()Z
    .locals 2

    .prologue
    .line 534
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGRegion;
    const/4 v1, 0x1

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/sg/prism/NGRegion;
    return v0
.end method

.method protected hasVisuals()Z
    .locals 2

    .prologue
    .line 524
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGRegion;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/sg/prism/NGRegion;->border:Ljavafx/scene/layout/Border;

    invoke-virtual {v1}, Ljavafx/scene/layout/Border;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/sg/prism/NGRegion;->background:Ljavafx/scene/layout/Background;

    invoke-virtual {v1}, Ljavafx/scene/layout/Background;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/sg/prism/NGRegion;
    return v0

    .restart local v0    # "this":Lcom/sun/javafx/sg/prism/NGRegion;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public imagesUpdated()V
    .locals 2

    .prologue
    .line 267
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGRegion;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/sg/prism/NGRegion;->visualsChanged()V

    .line 268
    return-void
.end method

.method protected renderContent(Lcom/sun/prism/Graphics;)V
    .locals 8

    .prologue
    .line 552
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGRegion;
    move-object v1, p1

    .local v1, "g":Lcom/sun/prism/Graphics;
    move-object v2, v1

    invoke-interface {v2}, Lcom/sun/prism/Graphics;->getTransformNoClone()Lcom/sun/javafx/geom/transform/BaseTransform;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sun/javafx/geom/transform/BaseTransform;->is2D()Z

    move-result v2

    if-nez v2, :cond_2

    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/sg/prism/NGRegion;->isContentBounds2D()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 553
    sget-boolean v2, Lcom/sun/javafx/sg/prism/NGRegion;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/sg/prism/NGRegion;->getEffectFilter()Lcom/sun/javafx/sg/prism/EffectFilter;

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 558
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/sg/prism/NGRegion;->nopEffectFilter:Lcom/sun/javafx/sg/prism/EffectFilter;

    if-nez v2, :cond_1

    .line 559
    move-object v2, v0

    new-instance v3, Lcom/sun/javafx/sg/prism/EffectFilter;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    sget-object v5, Lcom/sun/javafx/sg/prism/NGRegion;->nopEffect:Lcom/sun/scenario/effect/Offset;

    move-object v6, v0

    invoke-direct {v4, v5, v6}, Lcom/sun/javafx/sg/prism/EffectFilter;-><init>(Lcom/sun/scenario/effect/Effect;Lcom/sun/javafx/sg/prism/NGNode;)V

    iput-object v3, v2, Lcom/sun/javafx/sg/prism/NGRegion;->nopEffectFilter:Lcom/sun/javafx/sg/prism/EffectFilter;

    .line 561
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/sg/prism/NGRegion;->nopEffectFilter:Lcom/sun/javafx/sg/prism/EffectFilter;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/javafx/sg/prism/EffectFilter;->render(Lcom/sun/prism/Graphics;)V

    .line 563
    .line 577
    :goto_0
    return-void

    .line 569
    :cond_2
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/sg/prism/NGRegion;->shape:Lcom/sun/javafx/geom/Shape;

    if-eqz v2, :cond_4

    .line 570
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/sg/prism/NGRegion;->renderAsShape(Lcom/sun/prism/Graphics;)V

    .line 576
    :cond_3
    :goto_1
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Lcom/sun/javafx/sg/prism/NGGroup;->renderContent(Lcom/sun/prism/Graphics;)V

    .line 577
    goto :goto_0

    .line 571
    :cond_4
    move-object v2, v0

    iget v2, v2, Lcom/sun/javafx/sg/prism/NGRegion;->width:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_3

    move-object v2, v0

    iget v2, v2, Lcom/sun/javafx/sg/prism/NGRegion;->height:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_3

    .line 572
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/sg/prism/NGRegion;->renderAsRectangle(Lcom/sun/prism/Graphics;)V

    goto :goto_1
.end method

.method public setOpaqueInsets(FFFF)V
    .locals 7

    .prologue
    .line 431
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGRegion;
    move v1, p1

    .local v1, "top":F
    move v2, p2

    .local v2, "right":F
    move v3, p3

    .local v3, "bottom":F
    move v4, p4

    .local v4, "left":F
    move-object v5, v0

    move v6, v1

    iput v6, v5, Lcom/sun/javafx/sg/prism/NGRegion;->opaqueTop:F

    .line 432
    move-object v5, v0

    move v6, v2

    iput v6, v5, Lcom/sun/javafx/sg/prism/NGRegion;->opaqueRight:F

    .line 433
    move-object v5, v0

    move v6, v3

    iput v6, v5, Lcom/sun/javafx/sg/prism/NGRegion;->opaqueBottom:F

    .line 434
    move-object v5, v0

    move v6, v4

    iput v6, v5, Lcom/sun/javafx/sg/prism/NGRegion;->opaqueLeft:F

    .line 435
    move-object v5, v0

    invoke-virtual {v5}, Lcom/sun/javafx/sg/prism/NGRegion;->invalidateOpaqueRegion()V

    .line 436
    return-void
.end method

.method public setSize(FF)V
    .locals 5

    .prologue
    .line 248
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGRegion;
    move v1, p1

    .local v1, "width":F
    move v2, p2

    .local v2, "height":F
    move-object v3, v0

    move v4, v1

    iput v4, v3, Lcom/sun/javafx/sg/prism/NGRegion;->width:F

    .line 249
    move-object v3, v0

    move v4, v2

    iput v4, v3, Lcom/sun/javafx/sg/prism/NGRegion;->height:F

    .line 250
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/sg/prism/NGRegion;->invalidateOpaqueRegion()V

    .line 251
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/sun/javafx/sg/prism/NGRegion;->cacheKey:Ljava/lang/Integer;

    .line 256
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/sg/prism/NGRegion;->background:Ljavafx/scene/layout/Background;

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/sg/prism/NGRegion;->background:Ljavafx/scene/layout/Background;

    invoke-virtual {v3}, Ljavafx/scene/layout/Background;->isFillPercentageBased()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 257
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/sun/javafx/sg/prism/NGRegion;->backgroundInsets:Ljavafx/geometry/Insets;

    .line 259
    :cond_0
    return-void
.end method

.method protected supportsOpaqueRegions()Z
    .locals 2

    .prologue
    .line 486
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGRegion;
    const/4 v1, 0x1

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/sg/prism/NGRegion;
    return v0
.end method

.method public updateBackground(Ljavafx/scene/layout/Background;)V
    .locals 15

    .prologue
    .line 340
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/sg/prism/NGRegion;
    move-object/from16 v2, p1

    .local v2, "b":Ljavafx/scene/layout/Background;
    move-object v10, v1

    iget-object v10, v10, Lcom/sun/javafx/sg/prism/NGRegion;->background:Ljavafx/scene/layout/Background;

    move-object v3, v10

    .line 341
    .local v3, "old":Ljavafx/scene/layout/Background;
    move-object v10, v1

    move-object v11, v2

    if-nez v11, :cond_3

    sget-object v11, Ljavafx/scene/layout/Background;->EMPTY:Ljavafx/scene/layout/Background;

    :goto_0
    iput-object v11, v10, Lcom/sun/javafx/sg/prism/NGRegion;->background:Ljavafx/scene/layout/Background;

    .line 343
    move-object v10, v1

    iget-object v10, v10, Lcom/sun/javafx/sg/prism/NGRegion;->background:Ljavafx/scene/layout/Background;

    invoke-virtual {v10}, Ljavafx/scene/layout/Background;->getFills()Ljava/util/List;

    move-result-object v10

    move-object v4, v10

    .line 344
    .local v4, "fills":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/layout/BackgroundFill;>;"
    move-object v10, v1

    const/4 v11, 0x0

    iput v11, v10, Lcom/sun/javafx/sg/prism/NGRegion;->cacheMode:I

    .line 345
    sget-boolean v10, Lcom/sun/prism/impl/PrismSettings;->disableRegionCaching:Z

    if-nez v10, :cond_6

    move-object v10, v4

    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_6

    move-object v10, v1

    iget-object v10, v10, Lcom/sun/javafx/sg/prism/NGRegion;->shape:Lcom/sun/javafx/geom/Shape;

    if-eqz v10, :cond_0

    move-object v10, v1

    iget-boolean v10, v10, Lcom/sun/javafx/sg/prism/NGRegion;->cacheShape:Z

    if-eqz v10, :cond_6

    .line 346
    :cond_0
    move-object v10, v1

    const/4 v11, 0x3

    iput v11, v10, Lcom/sun/javafx/sg/prism/NGRegion;->cacheMode:I

    .line 347
    const/4 v10, 0x0

    move v5, v10

    .local v5, "i":I
    move-object v10, v4

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    move v6, v10

    .local v6, "max":I
    :goto_1
    move v10, v5

    move v11, v6

    if-ge v10, v11, :cond_6

    move-object v10, v1

    iget v10, v10, Lcom/sun/javafx/sg/prism/NGRegion;->cacheMode:I

    if-eqz v10, :cond_6

    .line 352
    move-object v10, v4

    move v11, v5

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljavafx/scene/layout/BackgroundFill;

    move-object v7, v10

    .line 353
    .local v7, "fill":Ljavafx/scene/layout/BackgroundFill;
    move-object v10, v7

    invoke-virtual {v10}, Ljavafx/scene/layout/BackgroundFill;->getFill()Ljavafx/scene/paint/Paint;

    move-result-object v10

    move-object v8, v10

    .line 354
    .local v8, "paint":Ljavafx/scene/paint/Paint;
    move-object v10, v1

    iget-object v10, v10, Lcom/sun/javafx/sg/prism/NGRegion;->shape:Lcom/sun/javafx/geom/Shape;

    if-nez v10, :cond_5

    .line 355
    move-object v10, v8

    instance-of v10, v10, Ljavafx/scene/paint/LinearGradient;

    if-eqz v10, :cond_4

    .line 356
    move-object v10, v8

    check-cast v10, Ljavafx/scene/paint/LinearGradient;

    move-object v9, v10

    .line 357
    .local v9, "linear":Ljavafx/scene/paint/LinearGradient;
    move-object v10, v9

    invoke-virtual {v10}, Ljavafx/scene/paint/LinearGradient;->getStartX()D

    move-result-wide v10

    move-object v12, v9

    invoke-virtual {v12}, Ljavafx/scene/paint/LinearGradient;->getEndX()D

    move-result-wide v12

    cmpl-double v10, v10, v12

    if-eqz v10, :cond_1

    .line 358
    move-object v10, v1

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    iget v11, v11, Lcom/sun/javafx/sg/prism/NGRegion;->cacheMode:I

    const/4 v12, -0x3

    and-int/lit8 v11, v11, -0x3

    iput v11, v10, Lcom/sun/javafx/sg/prism/NGRegion;->cacheMode:I

    .line 360
    :cond_1
    move-object v10, v9

    invoke-virtual {v10}, Ljavafx/scene/paint/LinearGradient;->getStartY()D

    move-result-wide v10

    move-object v12, v9

    invoke-virtual {v12}, Ljavafx/scene/paint/LinearGradient;->getEndY()D

    move-result-wide v12

    cmpl-double v10, v10, v12

    if-eqz v10, :cond_2

    .line 361
    move-object v10, v1

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    iget v11, v11, Lcom/sun/javafx/sg/prism/NGRegion;->cacheMode:I

    const/4 v12, -0x2

    and-int/lit8 v11, v11, -0x2

    iput v11, v10, Lcom/sun/javafx/sg/prism/NGRegion;->cacheMode:I

    .line 363
    .line 347
    .end local v9    # "linear":Ljavafx/scene/paint/LinearGradient;
    :cond_2
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 341
    .end local v4    # "fills":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/layout/BackgroundFill;>;"
    .end local v5    # "i":I
    .end local v6    # "max":I
    .end local v7    # "fill":Ljavafx/scene/layout/BackgroundFill;
    .end local v8    # "paint":Ljavafx/scene/paint/Paint;
    :cond_3
    move-object v11, v2

    goto/16 :goto_0

    .line 363
    .restart local v4    # "fills":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/layout/BackgroundFill;>;"
    .restart local v5    # "i":I
    .restart local v6    # "max":I
    .restart local v7    # "fill":Ljavafx/scene/layout/BackgroundFill;
    .restart local v8    # "paint":Ljavafx/scene/paint/Paint;
    :cond_4
    move-object v10, v8

    instance-of v10, v10, Ljavafx/scene/paint/Color;

    if-nez v10, :cond_2

    .line 365
    move-object v10, v1

    const/4 v11, 0x0

    iput v11, v10, Lcom/sun/javafx/sg/prism/NGRegion;->cacheMode:I

    goto :goto_2

    .line 367
    :cond_5
    move-object v10, v8

    instance-of v10, v10, Ljavafx/scene/paint/ImagePattern;

    if-eqz v10, :cond_2

    .line 368
    move-object v10, v1

    const/4 v11, 0x0

    iput v11, v10, Lcom/sun/javafx/sg/prism/NGRegion;->cacheMode:I

    goto :goto_2

    .line 372
    .end local v5    # "i":I
    .end local v6    # "max":I
    .end local v7    # "fill":Ljavafx/scene/layout/BackgroundFill;
    .end local v8    # "paint":Ljavafx/scene/paint/Paint;
    :cond_6
    move-object v10, v1

    const/4 v11, 0x0

    iput-object v11, v10, Lcom/sun/javafx/sg/prism/NGRegion;->backgroundInsets:Ljavafx/geometry/Insets;

    .line 373
    move-object v10, v1

    const/4 v11, 0x0

    iput-object v11, v10, Lcom/sun/javafx/sg/prism/NGRegion;->cacheKey:Ljava/lang/Integer;

    .line 376
    move-object v10, v1

    iget-object v10, v10, Lcom/sun/javafx/sg/prism/NGRegion;->background:Ljavafx/scene/layout/Background;

    invoke-virtual {v10}, Ljavafx/scene/layout/Background;->getOutsets()Ljavafx/geometry/Insets;

    move-result-object v10

    move-object v11, v3

    invoke-virtual {v11}, Ljavafx/scene/layout/Background;->getOutsets()Ljavafx/geometry/Insets;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljavafx/geometry/Insets;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_7

    .line 377
    move-object v10, v1

    invoke-virtual {v10}, Lcom/sun/javafx/sg/prism/NGRegion;->geometryChanged()V

    .line 381
    :goto_3
    return-void

    .line 379
    :cond_7
    move-object v10, v1

    invoke-virtual {v10}, Lcom/sun/javafx/sg/prism/NGRegion;->visualsChanged()V

    goto :goto_3
.end method

.method public updateBorder(Ljavafx/scene/layout/Border;)V
    .locals 5

    .prologue
    .line 278
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGRegion;
    move-object v1, p1

    .local v1, "b":Ljavafx/scene/layout/Border;
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/sg/prism/NGRegion;->border:Ljavafx/scene/layout/Border;

    move-object v2, v3

    .line 279
    .local v2, "old":Ljavafx/scene/layout/Border;
    move-object v3, v0

    move-object v4, v1

    if-nez v4, :cond_0

    sget-object v4, Ljavafx/scene/layout/Border;->EMPTY:Ljavafx/scene/layout/Border;

    :goto_0
    iput-object v4, v3, Lcom/sun/javafx/sg/prism/NGRegion;->border:Ljavafx/scene/layout/Border;

    .line 286
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/sg/prism/NGRegion;->border:Ljavafx/scene/layout/Border;

    invoke-virtual {v3}, Ljavafx/scene/layout/Border;->getOutsets()Ljavafx/geometry/Insets;

    move-result-object v3

    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/scene/layout/Border;->getOutsets()Ljavafx/geometry/Insets;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljavafx/geometry/Insets;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 287
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/sg/prism/NGRegion;->geometryChanged()V

    .line 291
    :goto_1
    return-void

    .line 279
    :cond_0
    move-object v4, v1

    goto :goto_0

    .line 289
    :cond_1
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/sg/prism/NGRegion;->visualsChanged()V

    goto :goto_1
.end method

.method public updateFillCorners(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljavafx/scene/layout/CornerRadii;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 396
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGRegion;
    move-object v1, p1

    .local v1, "normalizedFillCorners":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/layout/CornerRadii;>;"
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/sg/prism/NGRegion;->normalizedFillCorners:Ljava/util/List;

    .line 397
    return-void
.end method

.method public updateShape(Ljava/lang/Object;ZZZ)V
    .locals 7

    .prologue
    .line 228
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGRegion;
    move-object v1, p1

    .local v1, "shape":Ljava/lang/Object;
    move v2, p2

    .local v2, "scaleShape":Z
    move v3, p3

    .local v3, "positionShape":Z
    move v4, p4

    .local v4, "cacheShape":Z
    move-object v5, v0

    move-object v6, v1

    if-nez v6, :cond_0

    const/4 v6, 0x0

    :goto_0
    iput-object v6, v5, Lcom/sun/javafx/sg/prism/NGRegion;->ngShape:Lcom/sun/javafx/sg/prism/NGShape;

    .line 229
    move-object v5, v0

    move-object v6, v1

    if-nez v6, :cond_1

    const/4 v6, 0x0

    :goto_1
    iput-object v6, v5, Lcom/sun/javafx/sg/prism/NGRegion;->shape:Lcom/sun/javafx/geom/Shape;

    .line 230
    move-object v5, v0

    move v6, v2

    iput-boolean v6, v5, Lcom/sun/javafx/sg/prism/NGRegion;->scaleShape:Z

    .line 231
    move-object v5, v0

    move v6, v3

    iput-boolean v6, v5, Lcom/sun/javafx/sg/prism/NGRegion;->centerShape:Z

    .line 232
    move-object v5, v0

    move v6, v4

    iput-boolean v6, v5, Lcom/sun/javafx/sg/prism/NGRegion;->cacheShape:Z

    .line 235
    move-object v5, v0

    invoke-virtual {v5}, Lcom/sun/javafx/sg/prism/NGRegion;->invalidateOpaqueRegion()V

    .line 236
    move-object v5, v0

    const/4 v6, 0x0

    iput-object v6, v5, Lcom/sun/javafx/sg/prism/NGRegion;->cacheKey:Ljava/lang/Integer;

    .line 237
    move-object v5, v0

    invoke-virtual {v5}, Lcom/sun/javafx/sg/prism/NGRegion;->visualsChanged()V

    .line 238
    return-void

    .line 228
    :cond_0
    move-object v6, v1

    check-cast v6, Ljavafx/scene/shape/Shape;

    invoke-virtual {v6}, Ljavafx/scene/shape/Shape;->impl_getPeer()Lcom/sun/javafx/sg/prism/NGNode;

    move-result-object v6

    check-cast v6, Lcom/sun/javafx/sg/prism/NGShape;

    goto :goto_0

    .line 229
    :cond_1
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/sg/prism/NGRegion;->ngShape:Lcom/sun/javafx/sg/prism/NGShape;

    invoke-virtual {v6}, Lcom/sun/javafx/sg/prism/NGShape;->getShape()Lcom/sun/javafx/geom/Shape;

    move-result-object v6

    goto :goto_1
.end method

.method public updateStrokeCorners(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljavafx/scene/layout/CornerRadii;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 306
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGRegion;
    move-object v1, p1

    .local v1, "normalizedStrokeCorners":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/layout/CornerRadii;>;"
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/sg/prism/NGRegion;->normalizedStrokeCorners:Ljava/util/List;

    .line 307
    return-void
.end method
