.class public Lcom/sun/javafx/sg/prism/NGLine;
.super Lcom/sun/javafx/sg/prism/NGShape;
.source "NGLine.java"


# instance fields
.field private line:Lcom/sun/javafx/geom/Line2D;


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    .line 36
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGLine;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/sg/prism/NGShape;-><init>()V

    .line 38
    move-object v1, v0

    new-instance v2, Lcom/sun/javafx/geom/Line2D;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Lcom/sun/javafx/geom/Line2D;-><init>()V

    iput-object v2, v1, Lcom/sun/javafx/sg/prism/NGLine;->line:Lcom/sun/javafx/geom/Line2D;

    return-void
.end method


# virtual methods
.method public final getShape()Lcom/sun/javafx/geom/Shape;
    .locals 2

    .prologue
    .line 61
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGLine;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/sg/prism/NGLine;->line:Lcom/sun/javafx/geom/Line2D;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/sg/prism/NGLine;
    return-object v0
.end method

.method protected renderContent2D(Lcom/sun/prism/Graphics;Z)V
    .locals 8

    .prologue
    .line 49
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGLine;
    move-object v1, p1

    .local v1, "g":Lcom/sun/prism/Graphics;
    move v2, p2

    .local v2, "printing":Z
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/sg/prism/NGLine;->mode:Lcom/sun/javafx/sg/prism/NGShape$Mode;

    sget-object v4, Lcom/sun/javafx/sg/prism/NGShape$Mode;->STROKE:Lcom/sun/javafx/sg/prism/NGShape$Mode;

    if-eq v3, v4, :cond_0

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/sg/prism/NGLine;->mode:Lcom/sun/javafx/sg/prism/NGShape$Mode;

    sget-object v4, Lcom/sun/javafx/sg/prism/NGShape$Mode;->STROKE_FILL:Lcom/sun/javafx/sg/prism/NGShape$Mode;

    if-ne v3, v4, :cond_1

    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/sg/prism/NGLine;->drawStroke:Lcom/sun/prism/BasicStroke;

    .line 50
    invoke-virtual {v3}, Lcom/sun/prism/BasicStroke;->getLineWidth()F

    move-result v3

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/sg/prism/NGLine;->drawStroke:Lcom/sun/prism/BasicStroke;

    .line 51
    invoke-virtual {v3}, Lcom/sun/prism/BasicStroke;->getType()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1

    .line 53
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/sg/prism/NGLine;->drawPaint:Lcom/sun/prism/paint/Paint;

    invoke-interface {v3, v4}, Lcom/sun/prism/Graphics;->setPaint(Lcom/sun/prism/paint/Paint;)V

    .line 54
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/sg/prism/NGLine;->drawStroke:Lcom/sun/prism/BasicStroke;

    invoke-interface {v3, v4}, Lcom/sun/prism/Graphics;->setStroke(Lcom/sun/prism/BasicStroke;)V

    .line 55
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/sg/prism/NGLine;->line:Lcom/sun/javafx/geom/Line2D;

    iget v4, v4, Lcom/sun/javafx/geom/Line2D;->x1:F

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/sg/prism/NGLine;->line:Lcom/sun/javafx/geom/Line2D;

    iget v5, v5, Lcom/sun/javafx/geom/Line2D;->y1:F

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/sg/prism/NGLine;->line:Lcom/sun/javafx/geom/Line2D;

    iget v6, v6, Lcom/sun/javafx/geom/Line2D;->x2:F

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/sg/prism/NGLine;->line:Lcom/sun/javafx/geom/Line2D;

    iget v7, v7, Lcom/sun/javafx/geom/Line2D;->y2:F

    invoke-interface {v3, v4, v5, v6, v7}, Lcom/sun/prism/Graphics;->drawLine(FFFF)V

    .line 57
    :cond_1
    return-void
.end method

.method public updateLine(FFFF)V
    .locals 7

    .prologue
    .line 41
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGLine;
    move v1, p1

    .local v1, "x1":F
    move v2, p2

    .local v2, "y1":F
    move v3, p3

    .local v3, "x2":F
    move v4, p4

    .local v4, "y2":F
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/sg/prism/NGLine;->line:Lcom/sun/javafx/geom/Line2D;

    move v6, v1

    iput v6, v5, Lcom/sun/javafx/geom/Line2D;->x1:F

    .line 42
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/sg/prism/NGLine;->line:Lcom/sun/javafx/geom/Line2D;

    move v6, v2

    iput v6, v5, Lcom/sun/javafx/geom/Line2D;->y1:F

    .line 43
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/sg/prism/NGLine;->line:Lcom/sun/javafx/geom/Line2D;

    move v6, v3

    iput v6, v5, Lcom/sun/javafx/geom/Line2D;->x2:F

    .line 44
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/sg/prism/NGLine;->line:Lcom/sun/javafx/geom/Line2D;

    move v6, v4

    iput v6, v5, Lcom/sun/javafx/geom/Line2D;->y2:F

    .line 45
    move-object v5, v0

    invoke-virtual {v5}, Lcom/sun/javafx/sg/prism/NGLine;->geometryChanged()V

    .line 46
    return-void
.end method
