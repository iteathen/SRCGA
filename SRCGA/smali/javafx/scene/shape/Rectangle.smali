.class public Ljavafx/scene/shape/Rectangle;
.super Ljavafx/scene/shape/Shape;
.source "Rectangle.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavafx/scene/shape/Rectangle$StyleableProperties;
    }
.end annotation


# static fields
.field private static final NON_RECTILINEAR_TYPE_MASK:I = -0x50


# instance fields
.field private arcHeight:Ljavafx/beans/property/DoubleProperty;

.field private arcWidth:Ljavafx/beans/property/DoubleProperty;

.field private final height:Ljavafx/beans/property/DoubleProperty;

.field private final shape:Lcom/sun/javafx/geom/RoundRectangle2D;

.field private final width:Ljavafx/beans/property/DoubleProperty;

.field private x:Ljavafx/beans/property/DoubleProperty;

.field private y:Ljavafx/beans/property/DoubleProperty;


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    .line 85
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/Rectangle;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/shape/Shape;-><init>()V

    .line 74
    move-object v1, v0

    new-instance v2, Lcom/sun/javafx/geom/RoundRectangle2D;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    invoke-direct {v3}, Lcom/sun/javafx/geom/RoundRectangle2D;-><init>()V

    iput-object v2, v1, Ljavafx/scene/shape/Rectangle;->shape:Lcom/sun/javafx/geom/RoundRectangle2D;

    .line 211
    move-object v1, v0

    new-instance v2, Ljavafx/scene/shape/Rectangle$3;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/shape/Rectangle$3;-><init>(Ljavafx/scene/shape/Rectangle;)V

    iput-object v2, v1, Ljavafx/scene/shape/Rectangle;->width:Ljavafx/beans/property/DoubleProperty;

    .line 247
    move-object v1, v0

    new-instance v2, Ljavafx/scene/shape/Rectangle$4;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/shape/Rectangle$4;-><init>(Ljavafx/scene/shape/Rectangle;)V

    iput-object v2, v1, Ljavafx/scene/shape/Rectangle;->height:Ljavafx/beans/property/DoubleProperty;

    .line 86
    return-void
.end method

.method public constructor <init>(DD)V
    .locals 11

    .prologue
    .line 93
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/Rectangle;
    move-wide v1, p1

    .local v1, "width":D
    move-wide v3, p3

    .local v3, "height":D
    move-object v5, v0

    invoke-direct {v5}, Ljavafx/scene/shape/Shape;-><init>()V

    .line 74
    move-object v5, v0

    new-instance v6, Lcom/sun/javafx/geom/RoundRectangle2D;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    invoke-direct {v7}, Lcom/sun/javafx/geom/RoundRectangle2D;-><init>()V

    iput-object v6, v5, Ljavafx/scene/shape/Rectangle;->shape:Lcom/sun/javafx/geom/RoundRectangle2D;

    .line 211
    move-object v5, v0

    new-instance v6, Ljavafx/scene/shape/Rectangle$3;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    move-object v8, v0

    invoke-direct {v7, v8}, Ljavafx/scene/shape/Rectangle$3;-><init>(Ljavafx/scene/shape/Rectangle;)V

    iput-object v6, v5, Ljavafx/scene/shape/Rectangle;->width:Ljavafx/beans/property/DoubleProperty;

    .line 247
    move-object v5, v0

    new-instance v6, Ljavafx/scene/shape/Rectangle$4;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    move-object v8, v0

    invoke-direct {v7, v8}, Ljavafx/scene/shape/Rectangle$4;-><init>(Ljavafx/scene/shape/Rectangle;)V

    iput-object v6, v5, Ljavafx/scene/shape/Rectangle;->height:Ljavafx/beans/property/DoubleProperty;

    .line 94
    move-object v5, v0

    move-wide v6, v1

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/shape/Rectangle;->setWidth(D)V

    .line 95
    move-object v5, v0

    move-wide v6, v3

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/shape/Rectangle;->setHeight(D)V

    .line 96
    return-void
.end method

.method public constructor <init>(DDDD)V
    .locals 15

    .prologue
    .line 118
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/Rectangle;
    move-wide/from16 v1, p1

    .local v1, "x":D
    move-wide/from16 v3, p3

    .local v3, "y":D
    move-wide/from16 v5, p5

    .local v5, "width":D
    move-wide/from16 v7, p7

    .local v7, "height":D
    move-object v9, v0

    move-wide v10, v5

    move-wide v12, v7

    invoke-direct {v9, v10, v11, v12, v13}, Ljavafx/scene/shape/Rectangle;-><init>(DD)V

    .line 119
    move-object v9, v0

    move-wide v10, v1

    invoke-virtual {v9, v10, v11}, Ljavafx/scene/shape/Rectangle;->setX(D)V

    .line 120
    move-object v9, v0

    move-wide v10, v3

    invoke-virtual {v9, v10, v11}, Ljavafx/scene/shape/Rectangle;->setY(D)V

    .line 121
    return-void
.end method

.method public constructor <init>(DDLjavafx/scene/paint/Paint;)V
    .locals 13

    .prologue
    .line 104
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/shape/Rectangle;
    move-wide v2, p1

    .local v2, "width":D
    move-wide/from16 v4, p3

    .local v4, "height":D
    move-object/from16 v6, p5

    .local v6, "fill":Ljavafx/scene/paint/Paint;
    move-object v7, v1

    invoke-direct {v7}, Ljavafx/scene/shape/Shape;-><init>()V

    .line 74
    move-object v7, v1

    new-instance v8, Lcom/sun/javafx/geom/RoundRectangle2D;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    invoke-direct {v9}, Lcom/sun/javafx/geom/RoundRectangle2D;-><init>()V

    iput-object v8, v7, Ljavafx/scene/shape/Rectangle;->shape:Lcom/sun/javafx/geom/RoundRectangle2D;

    .line 211
    move-object v7, v1

    new-instance v8, Ljavafx/scene/shape/Rectangle$3;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    move-object v10, v1

    invoke-direct {v9, v10}, Ljavafx/scene/shape/Rectangle$3;-><init>(Ljavafx/scene/shape/Rectangle;)V

    iput-object v8, v7, Ljavafx/scene/shape/Rectangle;->width:Ljavafx/beans/property/DoubleProperty;

    .line 247
    move-object v7, v1

    new-instance v8, Ljavafx/scene/shape/Rectangle$4;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    move-object v10, v1

    invoke-direct {v9, v10}, Ljavafx/scene/shape/Rectangle$4;-><init>(Ljavafx/scene/shape/Rectangle;)V

    iput-object v8, v7, Ljavafx/scene/shape/Rectangle;->height:Ljavafx/beans/property/DoubleProperty;

    .line 105
    move-object v7, v1

    move-wide v8, v2

    invoke-virtual {v7, v8, v9}, Ljavafx/scene/shape/Rectangle;->setWidth(D)V

    .line 106
    move-object v7, v1

    move-wide v8, v4

    invoke-virtual {v7, v8, v9}, Ljavafx/scene/shape/Rectangle;->setHeight(D)V

    .line 107
    move-object v7, v1

    move-object v8, v6

    invoke-virtual {v7, v8}, Ljavafx/scene/shape/Rectangle;->setFill(Ljavafx/scene/paint/Paint;)V

    .line 108
    return-void
.end method

.method static synthetic access$000(Ljavafx/scene/shape/Rectangle;)V
    .locals 2

    .prologue
    .line 72
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/shape/Rectangle;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/shape/Rectangle;->impl_geomChanged()V

    return-void
.end method

.method static synthetic access$100(Ljavafx/scene/shape/Rectangle;)V
    .locals 2

    .prologue
    .line 72
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/shape/Rectangle;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/shape/Rectangle;->impl_geomChanged()V

    return-void
.end method

.method static synthetic access$200(Ljavafx/scene/shape/Rectangle;)V
    .locals 2

    .prologue
    .line 72
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/shape/Rectangle;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/shape/Rectangle;->impl_geomChanged()V

    return-void
.end method

.method static synthetic access$300(Ljavafx/scene/shape/Rectangle;)V
    .locals 2

    .prologue
    .line 72
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/shape/Rectangle;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/shape/Rectangle;->impl_geomChanged()V

    return-void
.end method

.method static synthetic access$600(Ljavafx/scene/shape/Rectangle;)Ljavafx/beans/property/DoubleProperty;
    .locals 2

    .prologue
    .line 72
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/shape/Rectangle;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/Rectangle;->arcHeight:Ljavafx/beans/property/DoubleProperty;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/shape/Rectangle;
    return-object v0
.end method

.method static synthetic access$700(Ljavafx/scene/shape/Rectangle;)Ljavafx/beans/property/DoubleProperty;
    .locals 2

    .prologue
    .line 72
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/shape/Rectangle;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/Rectangle;->arcWidth:Ljavafx/beans/property/DoubleProperty;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/shape/Rectangle;
    return-object v0
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
    .line 446
    # getter for: Ljavafx/scene/shape/Rectangle$StyleableProperties;->STYLEABLES:Ljava/util/List;
    invoke-static {}, Ljavafx/scene/shape/Rectangle$StyleableProperties;->access$800()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final arcHeightProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 6

    .prologue
    .line 350
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/Rectangle;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/Rectangle;->arcHeight:Ljavafx/beans/property/DoubleProperty;

    if-nez v1, :cond_0

    .line 351
    move-object v1, v0

    new-instance v2, Ljavafx/scene/shape/Rectangle$6;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/shape/Rectangle$6;-><init>(Ljavafx/scene/shape/Rectangle;)V

    iput-object v2, v1, Ljavafx/scene/shape/Rectangle;->arcHeight:Ljavafx/beans/property/DoubleProperty;

    .line 374
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/Rectangle;->arcHeight:Ljavafx/beans/property/DoubleProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/shape/Rectangle;
    return-object v0
.end method

.method public final arcWidthProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 6

    .prologue
    .line 301
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/Rectangle;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/Rectangle;->arcWidth:Ljavafx/beans/property/DoubleProperty;

    if-nez v1, :cond_0

    .line 302
    move-object v1, v0

    new-instance v2, Ljavafx/scene/shape/Rectangle$5;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/shape/Rectangle$5;-><init>(Ljavafx/scene/shape/Rectangle;)V

    iput-object v2, v1, Ljavafx/scene/shape/Rectangle;->arcWidth:Ljavafx/beans/property/DoubleProperty;

    .line 325
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/Rectangle;->arcWidth:Ljavafx/beans/property/DoubleProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/shape/Rectangle;
    return-object v0
.end method

.method convertLineJoin(Ljavafx/scene/shape/StrokeLineJoin;)Ljavafx/scene/shape/StrokeLineJoin;
    .locals 6

    .prologue
    .line 478
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/Rectangle;
    move-object v1, p1

    .local v1, "t":Ljavafx/scene/shape/StrokeLineJoin;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/shape/Rectangle;->getArcWidth()D

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-lez v2, :cond_0

    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/shape/Rectangle;->getArcHeight()D

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-lez v2, :cond_0

    .line 479
    sget-object v2, Ljavafx/scene/shape/StrokeLineJoin;->BEVEL:Ljavafx/scene/shape/StrokeLineJoin;

    move-object v0, v2

    .line 481
    .end local v0    # "this":Ljavafx/scene/shape/Rectangle;
    :goto_0
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/shape/Rectangle;
    :cond_0
    move-object v2, v1

    move-object v0, v2

    goto :goto_0
.end method

.method public final getArcHeight()D
    .locals 4

    .prologue
    .line 346
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/shape/Rectangle;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/shape/Rectangle;->arcHeight:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    const-wide/16 v2, 0x0

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Ljavafx/scene/shape/Rectangle;
    return-wide v1

    .restart local v1    # "this":Ljavafx/scene/shape/Rectangle;
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/shape/Rectangle;->arcHeight:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v2}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v2

    goto :goto_0
.end method

.method public final getArcWidth()D
    .locals 4

    .prologue
    .line 297
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/shape/Rectangle;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/shape/Rectangle;->arcWidth:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    const-wide/16 v2, 0x0

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Ljavafx/scene/shape/Rectangle;
    return-wide v1

    .restart local v1    # "this":Ljavafx/scene/shape/Rectangle;
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/shape/Rectangle;->arcWidth:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v2}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v2

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
    .line 458
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/Rectangle;
    invoke-static {}, Ljavafx/scene/shape/Rectangle;->getClassCssMetaData()Ljava/util/List;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/shape/Rectangle;
    return-object v0
.end method

.method public final getHeight()D
    .locals 3

    .prologue
    .line 272
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/Rectangle;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/Rectangle;->height:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v1

    move-wide v0, v1

    .end local v0    # "this":Ljavafx/scene/shape/Rectangle;
    return-wide v0
.end method

.method public final getWidth()D
    .locals 3

    .prologue
    .line 235
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/Rectangle;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/Rectangle;->width:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v1

    move-wide v0, v1

    .end local v0    # "this":Ljavafx/scene/shape/Rectangle;
    return-wide v0
.end method

.method public final getX()D
    .locals 4

    .prologue
    .line 138
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/shape/Rectangle;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/shape/Rectangle;->x:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    const-wide/16 v2, 0x0

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Ljavafx/scene/shape/Rectangle;
    return-wide v1

    .restart local v1    # "this":Ljavafx/scene/shape/Rectangle;
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/shape/Rectangle;->x:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v2}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v2

    goto :goto_0
.end method

.method public final getY()D
    .locals 4

    .prologue
    .line 179
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/shape/Rectangle;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/shape/Rectangle;->y:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    const-wide/16 v2, 0x0

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Ljavafx/scene/shape/Rectangle;
    return-wide v1

    .restart local v1    # "this":Ljavafx/scene/shape/Rectangle;
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/shape/Rectangle;->y:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v2}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v2

    goto :goto_0
.end method

.method public final heightProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 2

    .prologue
    .line 276
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/Rectangle;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/Rectangle;->height:Ljavafx/beans/property/DoubleProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/shape/Rectangle;
    return-object v0
.end method

.method public impl_computeGeomBounds(Lcom/sun/javafx/geom/BaseBounds;Lcom/sun/javafx/geom/transform/BaseTransform;)Lcom/sun/javafx/geom/BaseBounds;
    .locals 25
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 494
    move-object/from16 v1, p0

    .local v1, "this":Ljavafx/scene/shape/Rectangle;
    move-object/from16 v2, p1

    .local v2, "bounds":Lcom/sun/javafx/geom/BaseBounds;
    move-object/from16 v3, p2

    .local v3, "tx":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object v8, v1

    iget-object v8, v8, Ljavafx/scene/shape/Rectangle;->impl_mode:Lcom/sun/javafx/sg/prism/NGShape$Mode;

    sget-object v9, Lcom/sun/javafx/sg/prism/NGShape$Mode;->EMPTY:Lcom/sun/javafx/sg/prism/NGShape$Mode;

    if-ne v8, v9, :cond_0

    .line 495
    move-object v8, v2

    invoke-virtual {v8}, Lcom/sun/javafx/geom/BaseBounds;->makeEmpty()Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v8

    move-object v1, v8

    .line 512
    .end local v1    # "this":Ljavafx/scene/shape/Rectangle;
    :goto_0
    return-object v1

    .line 497
    .restart local v1    # "this":Ljavafx/scene/shape/Rectangle;
    :cond_0
    move-object v8, v1

    invoke-virtual {v8}, Ljavafx/scene/shape/Rectangle;->getArcWidth()D

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmpl-double v8, v8, v10

    if-lez v8, :cond_1

    move-object v8, v1

    invoke-virtual {v8}, Ljavafx/scene/shape/Rectangle;->getArcHeight()D

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmpl-double v8, v8, v10

    if-lez v8, :cond_1

    move-object v8, v3

    .line 498
    invoke-virtual {v8}, Lcom/sun/javafx/geom/transform/BaseTransform;->getType()I

    move-result v8

    const/16 v9, -0x50

    and-int/lit8 v8, v8, -0x50

    if-eqz v8, :cond_1

    .line 499
    move-object v8, v1

    move-object v9, v2

    move-object v10, v3

    move-object v11, v1

    invoke-virtual {v11}, Ljavafx/scene/shape/Rectangle;->impl_configShape()Lcom/sun/javafx/geom/RoundRectangle2D;

    move-result-object v11

    invoke-virtual {v8, v9, v10, v11}, Ljavafx/scene/shape/Rectangle;->computeShapeBounds(Lcom/sun/javafx/geom/BaseBounds;Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/javafx/geom/Shape;)Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v8

    move-object v1, v8

    goto :goto_0

    .line 503
    :cond_1
    move-object v8, v1

    iget-object v8, v8, Ljavafx/scene/shape/Rectangle;->impl_mode:Lcom/sun/javafx/sg/prism/NGShape$Mode;

    sget-object v9, Lcom/sun/javafx/sg/prism/NGShape$Mode;->FILL:Lcom/sun/javafx/sg/prism/NGShape$Mode;

    if-eq v8, v9, :cond_2

    move-object v8, v1

    invoke-virtual {v8}, Ljavafx/scene/shape/Rectangle;->getStrokeType()Ljavafx/scene/shape/StrokeType;

    move-result-object v8

    sget-object v9, Ljavafx/scene/shape/StrokeType;->INSIDE:Ljavafx/scene/shape/StrokeType;

    if-ne v8, v9, :cond_3

    .line 504
    :cond_2
    const-wide/16 v8, 0x0

    move-wide/from16 v23, v8

    move-wide/from16 v8, v23

    move-wide/from16 v10, v23

    move-wide v6, v10

    .local v6, "dpad":D
    move-wide v4, v8

    .line 512
    .local v4, "upad":D
    :goto_1
    move-object v8, v1

    move-object v9, v2

    move-object v10, v3

    move-wide v11, v4

    move-wide v13, v6

    move-object v15, v1

    invoke-virtual {v15}, Ljavafx/scene/shape/Rectangle;->getX()D

    move-result-wide v15

    move-object/from16 v17, v1

    invoke-virtual/range {v17 .. v17}, Ljavafx/scene/shape/Rectangle;->getY()D

    move-result-wide v17

    move-object/from16 v19, v1

    invoke-virtual/range {v19 .. v19}, Ljavafx/scene/shape/Rectangle;->getWidth()D

    move-result-wide v19

    move-object/from16 v21, v1

    invoke-virtual/range {v21 .. v21}, Ljavafx/scene/shape/Rectangle;->getHeight()D

    move-result-wide v21

    invoke-virtual/range {v8 .. v22}, Ljavafx/scene/shape/Rectangle;->computeBounds(Lcom/sun/javafx/geom/BaseBounds;Lcom/sun/javafx/geom/transform/BaseTransform;DDDDDD)Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v8

    move-object v1, v8

    goto :goto_0

    .line 506
    .end local v4    # "upad":D
    .end local v6    # "dpad":D
    :cond_3
    move-object v8, v1

    invoke-virtual {v8}, Ljavafx/scene/shape/Rectangle;->getStrokeWidth()D

    move-result-wide v8

    move-wide v4, v8

    .line 507
    .restart local v4    # "upad":D
    move-object v8, v1

    invoke-virtual {v8}, Ljavafx/scene/shape/Rectangle;->getStrokeType()Ljavafx/scene/shape/StrokeType;

    move-result-object v8

    sget-object v9, Ljavafx/scene/shape/StrokeType;->CENTERED:Ljavafx/scene/shape/StrokeType;

    if-ne v8, v9, :cond_4

    .line 508
    move-wide v8, v4

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    div-double/2addr v8, v10

    move-wide v4, v8

    .line 510
    :cond_4
    const-wide/16 v8, 0x0

    move-wide v6, v8

    .restart local v6    # "dpad":D
    goto :goto_1
.end method

.method public impl_configShape()Lcom/sun/javafx/geom/RoundRectangle2D;
    .locals 10
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 522
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/shape/Rectangle;
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/shape/Rectangle;->getArcWidth()D

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-lez v2, :cond_0

    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/shape/Rectangle;->getArcHeight()D

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-lez v2, :cond_0

    .line 523
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/shape/Rectangle;->shape:Lcom/sun/javafx/geom/RoundRectangle2D;

    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/shape/Rectangle;->getX()D

    move-result-wide v3

    double-to-float v3, v3

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/shape/Rectangle;->getY()D

    move-result-wide v4

    double-to-float v4, v4

    move-object v5, v1

    .line 524
    invoke-virtual {v5}, Ljavafx/scene/shape/Rectangle;->getWidth()D

    move-result-wide v5

    double-to-float v5, v5

    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/shape/Rectangle;->getHeight()D

    move-result-wide v6

    double-to-float v6, v6

    move-object v7, v1

    .line 525
    invoke-virtual {v7}, Ljavafx/scene/shape/Rectangle;->getArcWidth()D

    move-result-wide v7

    double-to-float v7, v7

    move-object v8, v1

    invoke-virtual {v8}, Ljavafx/scene/shape/Rectangle;->getArcHeight()D

    move-result-wide v8

    double-to-float v8, v8

    .line 523
    invoke-virtual/range {v2 .. v8}, Lcom/sun/javafx/geom/RoundRectangle2D;->setRoundRect(FFFFFF)V

    .line 531
    :goto_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/shape/Rectangle;->shape:Lcom/sun/javafx/geom/RoundRectangle2D;

    move-object v1, v2

    .end local v1    # "this":Ljavafx/scene/shape/Rectangle;
    return-object v1

    .line 527
    .restart local v1    # "this":Ljavafx/scene/shape/Rectangle;
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/shape/Rectangle;->shape:Lcom/sun/javafx/geom/RoundRectangle2D;

    move-object v3, v1

    .line 528
    invoke-virtual {v3}, Ljavafx/scene/shape/Rectangle;->getX()D

    move-result-wide v3

    double-to-float v3, v3

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/shape/Rectangle;->getY()D

    move-result-wide v4

    double-to-float v4, v4

    move-object v5, v1

    .line 529
    invoke-virtual {v5}, Ljavafx/scene/shape/Rectangle;->getWidth()D

    move-result-wide v5

    double-to-float v5, v5

    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/shape/Rectangle;->getHeight()D

    move-result-wide v6

    double-to-float v6, v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 527
    invoke-virtual/range {v2 .. v8}, Lcom/sun/javafx/geom/RoundRectangle2D;->setRoundRect(FFFFFF)V

    goto :goto_0
.end method

.method public bridge synthetic impl_configShape()Lcom/sun/javafx/geom/Shape;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 72
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/Rectangle;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/shape/Rectangle;->impl_configShape()Lcom/sun/javafx/geom/RoundRectangle2D;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/shape/Rectangle;
    return-object v0
.end method

.method protected impl_createPeer()Lcom/sun/javafx/sg/prism/NGNode;
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 384
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/Rectangle;
    new-instance v1, Lcom/sun/javafx/sg/prism/NGRectangle;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Lcom/sun/javafx/sg/prism/NGRectangle;-><init>()V

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/shape/Rectangle;
    return-object v0
.end method

.method public impl_updatePeer()V
    .locals 10
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 541
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/Rectangle;
    move-object v2, v0

    invoke-super {v2}, Ljavafx/scene/shape/Shape;->impl_updatePeer()V

    .line 542
    move-object v2, v0

    sget-object v3, Lcom/sun/javafx/scene/DirtyBits;->NODE_GEOMETRY:Lcom/sun/javafx/scene/DirtyBits;

    invoke-virtual {v2, v3}, Ljavafx/scene/shape/Rectangle;->impl_isDirty(Lcom/sun/javafx/scene/DirtyBits;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 543
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/shape/Rectangle;->impl_getPeer()Lcom/sun/javafx/sg/prism/NGNode;

    move-result-object v2

    check-cast v2, Lcom/sun/javafx/sg/prism/NGRectangle;

    move-object v1, v2

    .line 544
    .local v1, "peer":Lcom/sun/javafx/sg/prism/NGRectangle;
    move-object v2, v1

    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/shape/Rectangle;->getX()D

    move-result-wide v3

    double-to-float v3, v3

    move-object v4, v0

    .line 545
    invoke-virtual {v4}, Ljavafx/scene/shape/Rectangle;->getY()D

    move-result-wide v4

    double-to-float v4, v4

    move-object v5, v0

    .line 546
    invoke-virtual {v5}, Ljavafx/scene/shape/Rectangle;->getWidth()D

    move-result-wide v5

    double-to-float v5, v5

    move-object v6, v0

    .line 547
    invoke-virtual {v6}, Ljavafx/scene/shape/Rectangle;->getHeight()D

    move-result-wide v6

    double-to-float v6, v6

    move-object v7, v0

    .line 548
    invoke-virtual {v7}, Ljavafx/scene/shape/Rectangle;->getArcWidth()D

    move-result-wide v7

    double-to-float v7, v7

    move-object v8, v0

    .line 549
    invoke-virtual {v8}, Ljavafx/scene/shape/Rectangle;->getArcHeight()D

    move-result-wide v8

    double-to-float v8, v8

    .line 544
    invoke-virtual/range {v2 .. v8}, Lcom/sun/javafx/sg/prism/NGRectangle;->updateRectangle(FFFFFF)V

    .line 551
    .end local v1    # "peer":Lcom/sun/javafx/sg/prism/NGRectangle;
    :cond_0
    return-void
.end method

.method public final setArcHeight(D)V
    .locals 9

    .prologue
    .line 340
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/shape/Rectangle;
    move-wide v2, p1

    .local v2, "value":D
    move-object v4, v1

    iget-object v4, v4, Ljavafx/scene/shape/Rectangle;->arcHeight:Ljavafx/beans/property/DoubleProperty;

    if-nez v4, :cond_0

    move-wide v4, v2

    const-wide/16 v6, 0x0

    cmpl-double v4, v4, v6

    if-eqz v4, :cond_1

    .line 341
    :cond_0
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/shape/Rectangle;->arcHeightProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v4

    move-wide v5, v2

    invoke-virtual {v4, v5, v6}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    .line 343
    :cond_1
    return-void
.end method

.method public final setArcWidth(D)V
    .locals 9

    .prologue
    .line 291
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/shape/Rectangle;
    move-wide v2, p1

    .local v2, "value":D
    move-object v4, v1

    iget-object v4, v4, Ljavafx/scene/shape/Rectangle;->arcWidth:Ljavafx/beans/property/DoubleProperty;

    if-nez v4, :cond_0

    move-wide v4, v2

    const-wide/16 v6, 0x0

    cmpl-double v4, v4, v6

    if-eqz v4, :cond_1

    .line 292
    :cond_0
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/shape/Rectangle;->arcWidthProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v4

    move-wide v5, v2

    invoke-virtual {v4, v5, v6}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    .line 294
    :cond_1
    return-void
.end method

.method public final setHeight(D)V
    .locals 7

    .prologue
    .line 268
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/Rectangle;
    move-wide v1, p1

    .local v1, "value":D
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/shape/Rectangle;->height:Ljavafx/beans/property/DoubleProperty;

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    .line 269
    return-void
.end method

.method public final setWidth(D)V
    .locals 7

    .prologue
    .line 231
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/Rectangle;
    move-wide v1, p1

    .local v1, "value":D
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/shape/Rectangle;->width:Ljavafx/beans/property/DoubleProperty;

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    .line 232
    return-void
.end method

.method public final setX(D)V
    .locals 9

    .prologue
    .line 132
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/shape/Rectangle;
    move-wide v2, p1

    .local v2, "value":D
    move-object v4, v1

    iget-object v4, v4, Ljavafx/scene/shape/Rectangle;->x:Ljavafx/beans/property/DoubleProperty;

    if-nez v4, :cond_0

    move-wide v4, v2

    const-wide/16 v6, 0x0

    cmpl-double v4, v4, v6

    if-eqz v4, :cond_1

    .line 133
    :cond_0
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/shape/Rectangle;->xProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v4

    move-wide v5, v2

    invoke-virtual {v4, v5, v6}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    .line 135
    :cond_1
    return-void
.end method

.method public final setY(D)V
    .locals 9

    .prologue
    .line 173
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/shape/Rectangle;
    move-wide v2, p1

    .local v2, "value":D
    move-object v4, v1

    iget-object v4, v4, Ljavafx/scene/shape/Rectangle;->y:Ljavafx/beans/property/DoubleProperty;

    if-nez v4, :cond_0

    move-wide v4, v2

    const-wide/16 v6, 0x0

    cmpl-double v4, v4, v6

    if-eqz v4, :cond_1

    .line 174
    :cond_0
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/shape/Rectangle;->yProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v4

    move-wide v5, v2

    invoke-virtual {v4, v5, v6}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    .line 176
    :cond_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 9

    .prologue
    .line 559
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/shape/Rectangle;
    new-instance v5, Ljava/lang/StringBuilder;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    const-string v7, "Rectangle["

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v2, v5

    .line 561
    .local v2, "sb":Ljava/lang/StringBuilder;
    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/scene/shape/Rectangle;->getId()Ljava/lang/String;

    move-result-object v5

    move-object v3, v5

    .line 562
    .local v3, "id":Ljava/lang/String;
    move-object v5, v3

    if-eqz v5, :cond_0

    .line 563
    move-object v5, v2

    const-string v6, "id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 566
    :cond_0
    move-object v5, v2

    const-string v6, "x="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/shape/Rectangle;->getX()D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 567
    move-object v5, v2

    const-string v6, ", y="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/shape/Rectangle;->getY()D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 568
    move-object v5, v2

    const-string v6, ", width="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/shape/Rectangle;->getWidth()D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 569
    move-object v5, v2

    const-string v6, ", height="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/shape/Rectangle;->getHeight()D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 571
    move-object v5, v2

    const-string v6, ", fill="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/shape/Rectangle;->getFill()Ljavafx/scene/paint/Paint;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 573
    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/scene/shape/Rectangle;->getStroke()Ljavafx/scene/paint/Paint;

    move-result-object v5

    move-object v4, v5

    .line 574
    .local v4, "stroke":Ljavafx/scene/paint/Paint;
    move-object v5, v4

    if-eqz v5, :cond_1

    .line 575
    move-object v5, v2

    const-string v6, ", stroke="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v4

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 576
    move-object v5, v2

    const-string v6, ", strokeWidth="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/shape/Rectangle;->getStrokeWidth()D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 579
    :cond_1
    move-object v5, v2

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v1, v5

    .end local v1    # "this":Ljavafx/scene/shape/Rectangle;
    return-object v1
.end method

.method public final widthProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 2

    .prologue
    .line 239
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/Rectangle;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/Rectangle;->width:Ljavafx/beans/property/DoubleProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/shape/Rectangle;
    return-object v0
.end method

.method public final xProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 6

    .prologue
    .line 142
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/Rectangle;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/Rectangle;->x:Ljavafx/beans/property/DoubleProperty;

    if-nez v1, :cond_0

    .line 143
    move-object v1, v0

    new-instance v2, Ljavafx/scene/shape/Rectangle$1;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/shape/Rectangle$1;-><init>(Ljavafx/scene/shape/Rectangle;)V

    iput-object v2, v1, Ljavafx/scene/shape/Rectangle;->x:Ljavafx/beans/property/DoubleProperty;

    .line 162
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/Rectangle;->x:Ljavafx/beans/property/DoubleProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/shape/Rectangle;
    return-object v0
.end method

.method public final yProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 6

    .prologue
    .line 183
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/Rectangle;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/Rectangle;->y:Ljavafx/beans/property/DoubleProperty;

    if-nez v1, :cond_0

    .line 184
    move-object v1, v0

    new-instance v2, Ljavafx/scene/shape/Rectangle$2;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/shape/Rectangle$2;-><init>(Ljavafx/scene/shape/Rectangle;)V

    iput-object v2, v1, Ljavafx/scene/shape/Rectangle;->y:Ljavafx/beans/property/DoubleProperty;

    .line 203
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/shape/Rectangle;->y:Ljavafx/beans/property/DoubleProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/shape/Rectangle;
    return-object v0
.end method
