.class public Lcom/sun/javafx/sg/prism/NGArc;
.super Lcom/sun/javafx/sg/prism/NGShape;
.source "NGArc.java"


# instance fields
.field private arc:Lcom/sun/javafx/geom/Arc2D;


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGArc;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/sg/prism/NGShape;-><init>()V

    .line 38
    move-object v1, v0

    new-instance v2, Lcom/sun/javafx/geom/Arc2D;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Lcom/sun/javafx/geom/Arc2D;-><init>()V

    iput-object v2, v1, Lcom/sun/javafx/sg/prism/NGArc;->arc:Lcom/sun/javafx/geom/Arc2D;

    return-void
.end method


# virtual methods
.method protected createShapeRep(Lcom/sun/prism/Graphics;)Lcom/sun/prism/shape/ShapeRep;
    .locals 3

    .prologue
    .line 63
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGArc;
    move-object v1, p1

    .local v1, "g":Lcom/sun/prism/Graphics;
    move-object v2, v1

    invoke-interface {v2}, Lcom/sun/prism/Graphics;->getResourceFactory()Lcom/sun/prism/ResourceFactory;

    move-result-object v2

    invoke-interface {v2}, Lcom/sun/prism/ResourceFactory;->createArcRep()Lcom/sun/prism/shape/ShapeRep;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/sg/prism/NGArc;
    return-object v0
.end method

.method public getShape()Lcom/sun/javafx/geom/Shape;
    .locals 2

    .prologue
    .line 61
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGArc;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/sg/prism/NGArc;->arc:Lcom/sun/javafx/geom/Arc2D;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/sg/prism/NGArc;
    return-object v0
.end method

.method public updateArc(FFFFFFLjavafx/scene/shape/ArcType;)V
    .locals 12

    .prologue
    .line 42
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGArc;
    move v1, p1

    .local v1, "cx":F
    move v2, p2

    .local v2, "cy":F
    move v3, p3

    .local v3, "rx":F
    move/from16 v4, p4

    .local v4, "ry":F
    move/from16 v5, p5

    .local v5, "start":F
    move/from16 v6, p6

    .local v6, "extent":F
    move-object/from16 v7, p7

    .local v7, "type":Ljavafx/scene/shape/ArcType;
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/sg/prism/NGArc;->arc:Lcom/sun/javafx/geom/Arc2D;

    move v9, v1

    move v10, v3

    sub-float/2addr v9, v10

    iput v9, v8, Lcom/sun/javafx/geom/Arc2D;->x:F

    .line 43
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/sg/prism/NGArc;->arc:Lcom/sun/javafx/geom/Arc2D;

    move v9, v3

    const/high16 v10, 0x40000000    # 2.0f

    mul-float/2addr v9, v10

    iput v9, v8, Lcom/sun/javafx/geom/Arc2D;->width:F

    .line 44
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/sg/prism/NGArc;->arc:Lcom/sun/javafx/geom/Arc2D;

    move v9, v2

    move v10, v4

    sub-float/2addr v9, v10

    iput v9, v8, Lcom/sun/javafx/geom/Arc2D;->y:F

    .line 45
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/sg/prism/NGArc;->arc:Lcom/sun/javafx/geom/Arc2D;

    move v9, v4

    const/high16 v10, 0x40000000    # 2.0f

    mul-float/2addr v9, v10

    iput v9, v8, Lcom/sun/javafx/geom/Arc2D;->height:F

    .line 46
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/sg/prism/NGArc;->arc:Lcom/sun/javafx/geom/Arc2D;

    move v9, v5

    iput v9, v8, Lcom/sun/javafx/geom/Arc2D;->start:F

    .line 47
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/sg/prism/NGArc;->arc:Lcom/sun/javafx/geom/Arc2D;

    move v9, v6

    iput v9, v8, Lcom/sun/javafx/geom/Arc2D;->extent:F

    .line 49
    move-object v8, v7

    sget-object v9, Ljavafx/scene/shape/ArcType;->CHORD:Ljavafx/scene/shape/ArcType;

    if-ne v8, v9, :cond_0

    .line 50
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/sg/prism/NGArc;->arc:Lcom/sun/javafx/geom/Arc2D;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/sun/javafx/geom/Arc2D;->setArcType(I)V

    .line 58
    :goto_0
    move-object v8, v0

    invoke-virtual {v8}, Lcom/sun/javafx/sg/prism/NGArc;->geometryChanged()V

    .line 59
    return-void

    .line 51
    :cond_0
    move-object v8, v7

    sget-object v9, Ljavafx/scene/shape/ArcType;->OPEN:Ljavafx/scene/shape/ArcType;

    if-ne v8, v9, :cond_1

    .line 52
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/sg/prism/NGArc;->arc:Lcom/sun/javafx/geom/Arc2D;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/sun/javafx/geom/Arc2D;->setArcType(I)V

    goto :goto_0

    .line 53
    :cond_1
    move-object v8, v7

    sget-object v9, Ljavafx/scene/shape/ArcType;->ROUND:Ljavafx/scene/shape/ArcType;

    if-ne v8, v9, :cond_2

    .line 54
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/sg/prism/NGArc;->arc:Lcom/sun/javafx/geom/Arc2D;

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Lcom/sun/javafx/geom/Arc2D;->setArcType(I)V

    goto :goto_0

    .line 56
    :cond_2
    new-instance v8, Ljava/lang/AssertionError;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    const-string v10, "Unknown arc type specified"

    invoke-direct {v9, v10}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v8
.end method
