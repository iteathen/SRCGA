.class public Lcom/sun/javafx/sg/prism/NGCubicCurve;
.super Lcom/sun/javafx/sg/prism/NGShape;
.source "NGCubicCurve.java"


# instance fields
.field private curve:Lcom/sun/javafx/geom/CubicCurve2D;


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGCubicCurve;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/sg/prism/NGShape;-><init>()V

    .line 35
    move-object v1, v0

    new-instance v2, Lcom/sun/javafx/geom/CubicCurve2D;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Lcom/sun/javafx/geom/CubicCurve2D;-><init>()V

    iput-object v2, v1, Lcom/sun/javafx/sg/prism/NGCubicCurve;->curve:Lcom/sun/javafx/geom/CubicCurve2D;

    return-void
.end method


# virtual methods
.method public final getShape()Lcom/sun/javafx/geom/Shape;
    .locals 2

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGCubicCurve;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/sg/prism/NGCubicCurve;->curve:Lcom/sun/javafx/geom/CubicCurve2D;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/sg/prism/NGCubicCurve;
    return-object v0
.end method

.method public updateCubicCurve(FFFFFFFF)V
    .locals 11

    .prologue
    .line 41
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGCubicCurve;
    move v1, p1

    .local v1, "x1":F
    move v2, p2

    .local v2, "y1":F
    move v3, p3

    .local v3, "x2":F
    move v4, p4

    .local v4, "y2":F
    move/from16 v5, p5

    .local v5, "ctrlx1":F
    move/from16 v6, p6

    .local v6, "ctrly1":F
    move/from16 v7, p7

    .local v7, "ctrlx2":F
    move/from16 v8, p8

    .local v8, "ctrly2":F
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/sg/prism/NGCubicCurve;->curve:Lcom/sun/javafx/geom/CubicCurve2D;

    move v10, v1

    iput v10, v9, Lcom/sun/javafx/geom/CubicCurve2D;->x1:F

    .line 42
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/sg/prism/NGCubicCurve;->curve:Lcom/sun/javafx/geom/CubicCurve2D;

    move v10, v2

    iput v10, v9, Lcom/sun/javafx/geom/CubicCurve2D;->y1:F

    .line 43
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/sg/prism/NGCubicCurve;->curve:Lcom/sun/javafx/geom/CubicCurve2D;

    move v10, v3

    iput v10, v9, Lcom/sun/javafx/geom/CubicCurve2D;->x2:F

    .line 44
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/sg/prism/NGCubicCurve;->curve:Lcom/sun/javafx/geom/CubicCurve2D;

    move v10, v4

    iput v10, v9, Lcom/sun/javafx/geom/CubicCurve2D;->y2:F

    .line 45
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/sg/prism/NGCubicCurve;->curve:Lcom/sun/javafx/geom/CubicCurve2D;

    move v10, v5

    iput v10, v9, Lcom/sun/javafx/geom/CubicCurve2D;->ctrlx1:F

    .line 46
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/sg/prism/NGCubicCurve;->curve:Lcom/sun/javafx/geom/CubicCurve2D;

    move v10, v6

    iput v10, v9, Lcom/sun/javafx/geom/CubicCurve2D;->ctrly1:F

    .line 47
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/sg/prism/NGCubicCurve;->curve:Lcom/sun/javafx/geom/CubicCurve2D;

    move v10, v7

    iput v10, v9, Lcom/sun/javafx/geom/CubicCurve2D;->ctrlx2:F

    .line 48
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/sg/prism/NGCubicCurve;->curve:Lcom/sun/javafx/geom/CubicCurve2D;

    move v10, v8

    iput v10, v9, Lcom/sun/javafx/geom/CubicCurve2D;->ctrly2:F

    .line 49
    move-object v9, v0

    invoke-virtual {v9}, Lcom/sun/javafx/sg/prism/NGCubicCurve;->geometryChanged()V

    .line 50
    return-void
.end method
