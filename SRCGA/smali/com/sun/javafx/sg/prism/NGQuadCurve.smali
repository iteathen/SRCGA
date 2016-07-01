.class public Lcom/sun/javafx/sg/prism/NGQuadCurve;
.super Lcom/sun/javafx/sg/prism/NGShape;
.source "NGQuadCurve.java"


# instance fields
.field private curve:Lcom/sun/javafx/geom/QuadCurve2D;


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGQuadCurve;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/sg/prism/NGShape;-><init>()V

    .line 35
    move-object v1, v0

    new-instance v2, Lcom/sun/javafx/geom/QuadCurve2D;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Lcom/sun/javafx/geom/QuadCurve2D;-><init>()V

    iput-object v2, v1, Lcom/sun/javafx/sg/prism/NGQuadCurve;->curve:Lcom/sun/javafx/geom/QuadCurve2D;

    return-void
.end method


# virtual methods
.method public final getShape()Lcom/sun/javafx/geom/Shape;
    .locals 2

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGQuadCurve;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/sg/prism/NGQuadCurve;->curve:Lcom/sun/javafx/geom/QuadCurve2D;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/sg/prism/NGQuadCurve;
    return-object v0
.end method

.method public updateQuadCurve(FFFFFF)V
    .locals 9

    .prologue
    .line 39
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGQuadCurve;
    move v1, p1

    .local v1, "x1":F
    move v2, p2

    .local v2, "y1":F
    move v3, p3

    .local v3, "x2":F
    move v4, p4

    .local v4, "y2":F
    move v5, p5

    .local v5, "ctrlx":F
    move v6, p6

    .local v6, "ctrly":F
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/sg/prism/NGQuadCurve;->curve:Lcom/sun/javafx/geom/QuadCurve2D;

    move v8, v1

    iput v8, v7, Lcom/sun/javafx/geom/QuadCurve2D;->x1:F

    .line 40
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/sg/prism/NGQuadCurve;->curve:Lcom/sun/javafx/geom/QuadCurve2D;

    move v8, v2

    iput v8, v7, Lcom/sun/javafx/geom/QuadCurve2D;->y1:F

    .line 41
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/sg/prism/NGQuadCurve;->curve:Lcom/sun/javafx/geom/QuadCurve2D;

    move v8, v3

    iput v8, v7, Lcom/sun/javafx/geom/QuadCurve2D;->x2:F

    .line 42
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/sg/prism/NGQuadCurve;->curve:Lcom/sun/javafx/geom/QuadCurve2D;

    move v8, v4

    iput v8, v7, Lcom/sun/javafx/geom/QuadCurve2D;->y2:F

    .line 43
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/sg/prism/NGQuadCurve;->curve:Lcom/sun/javafx/geom/QuadCurve2D;

    move v8, v5

    iput v8, v7, Lcom/sun/javafx/geom/QuadCurve2D;->ctrlx:F

    .line 44
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/sg/prism/NGQuadCurve;->curve:Lcom/sun/javafx/geom/QuadCurve2D;

    move v8, v6

    iput v8, v7, Lcom/sun/javafx/geom/QuadCurve2D;->ctrly:F

    .line 45
    move-object v7, v0

    invoke-virtual {v7}, Lcom/sun/javafx/sg/prism/NGQuadCurve;->geometryChanged()V

    .line 46
    return-void
.end method
