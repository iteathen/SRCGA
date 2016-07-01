.class public Lcom/sun/prism/impl/shape/BasicRoundRectRep;
.super Lcom/sun/prism/impl/shape/BasicShapeRep;
.source "BasicRoundRectRep.java"


# static fields
.field private static final TMP_ARR:[F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x4

    new-array v0, v0, [F

    sput-object v0, Lcom/sun/prism/impl/shape/BasicRoundRectRep;->TMP_ARR:[F

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 39
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/shape/BasicRoundRectRep;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/prism/impl/shape/BasicShapeRep;-><init>()V

    .line 40
    return-void
.end method

.method public static drawRoundRect(Lcom/sun/prism/Graphics;Lcom/sun/javafx/geom/RoundRectangle2D;)V
    .locals 11

    .prologue
    .line 75
    move-object v0, p0

    .local v0, "g":Lcom/sun/prism/Graphics;
    move-object v1, p1

    .local v1, "r":Lcom/sun/javafx/geom/RoundRectangle2D;
    move-object v4, v1

    iget v4, v4, Lcom/sun/javafx/geom/RoundRectangle2D;->arcWidth:F

    move v2, v4

    .line 76
    .local v2, "arcw":F
    move-object v4, v1

    iget v4, v4, Lcom/sun/javafx/geom/RoundRectangle2D;->arcHeight:F

    move v3, v4

    .line 77
    .local v3, "arch":F
    move v4, v2

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-lez v4, :cond_0

    move v4, v3

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-lez v4, :cond_0

    .line 78
    move-object v4, v0

    move-object v5, v1

    iget v5, v5, Lcom/sun/javafx/geom/RoundRectangle2D;->x:F

    move-object v6, v1

    iget v6, v6, Lcom/sun/javafx/geom/RoundRectangle2D;->y:F

    move-object v7, v1

    iget v7, v7, Lcom/sun/javafx/geom/RoundRectangle2D;->width:F

    move-object v8, v1

    iget v8, v8, Lcom/sun/javafx/geom/RoundRectangle2D;->height:F

    move v9, v2

    move v10, v3

    invoke-interface/range {v4 .. v10}, Lcom/sun/prism/Graphics;->drawRoundRect(FFFFFF)V

    .line 82
    :goto_0
    return-void

    .line 80
    :cond_0
    move-object v4, v0

    move-object v5, v1

    iget v5, v5, Lcom/sun/javafx/geom/RoundRectangle2D;->x:F

    move-object v6, v1

    iget v6, v6, Lcom/sun/javafx/geom/RoundRectangle2D;->y:F

    move-object v7, v1

    iget v7, v7, Lcom/sun/javafx/geom/RoundRectangle2D;->width:F

    move-object v8, v1

    iget v8, v8, Lcom/sun/javafx/geom/RoundRectangle2D;->height:F

    invoke-interface {v4, v5, v6, v7, v8}, Lcom/sun/prism/Graphics;->drawRect(FFFF)V

    goto :goto_0
.end method

.method public static fillRoundRect(Lcom/sun/prism/Graphics;Lcom/sun/javafx/geom/RoundRectangle2D;)V
    .locals 11

    .prologue
    .line 50
    move-object v0, p0

    .local v0, "g":Lcom/sun/prism/Graphics;
    move-object v1, p1

    .local v1, "r":Lcom/sun/javafx/geom/RoundRectangle2D;
    move-object v4, v1

    iget v4, v4, Lcom/sun/javafx/geom/RoundRectangle2D;->width:F

    const/4 v5, 0x0

    cmpg-float v4, v4, v5

    if-lez v4, :cond_0

    move-object v4, v1

    iget v4, v4, Lcom/sun/javafx/geom/RoundRectangle2D;->height:F

    const/4 v5, 0x0

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_1

    .line 52
    .line 65
    :cond_0
    :goto_0
    return-void

    .line 54
    :cond_1
    move-object v4, v1

    iget v4, v4, Lcom/sun/javafx/geom/RoundRectangle2D;->arcWidth:F

    move v2, v4

    .line 55
    .local v2, "arcw":F
    move-object v4, v1

    iget v4, v4, Lcom/sun/javafx/geom/RoundRectangle2D;->arcHeight:F

    move v3, v4

    .line 56
    .local v3, "arch":F
    move v4, v2

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-lez v4, :cond_2

    move v4, v3

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-lez v4, :cond_2

    .line 57
    move-object v4, v0

    move-object v5, v1

    iget v5, v5, Lcom/sun/javafx/geom/RoundRectangle2D;->x:F

    move-object v6, v1

    iget v6, v6, Lcom/sun/javafx/geom/RoundRectangle2D;->y:F

    move-object v7, v1

    iget v7, v7, Lcom/sun/javafx/geom/RoundRectangle2D;->width:F

    move-object v8, v1

    iget v8, v8, Lcom/sun/javafx/geom/RoundRectangle2D;->height:F

    move v9, v2

    move v10, v3

    invoke-interface/range {v4 .. v10}, Lcom/sun/prism/Graphics;->fillRoundRect(FFFFFF)V

    .line 65
    :goto_1
    goto :goto_0

    .line 59
    :cond_2
    move-object v4, v0

    move-object v5, v1

    invoke-static {v4, v5}, Lcom/sun/prism/impl/shape/BasicRoundRectRep;->isAARequiredForFill(Lcom/sun/prism/Graphics;Lcom/sun/javafx/geom/RoundRectangle2D;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 60
    move-object v4, v0

    move-object v5, v1

    iget v5, v5, Lcom/sun/javafx/geom/RoundRectangle2D;->x:F

    move-object v6, v1

    iget v6, v6, Lcom/sun/javafx/geom/RoundRectangle2D;->y:F

    move-object v7, v1

    iget v7, v7, Lcom/sun/javafx/geom/RoundRectangle2D;->width:F

    move-object v8, v1

    iget v8, v8, Lcom/sun/javafx/geom/RoundRectangle2D;->height:F

    invoke-interface {v4, v5, v6, v7, v8}, Lcom/sun/prism/Graphics;->fillRect(FFFF)V

    goto :goto_1

    .line 62
    :cond_3
    move-object v4, v0

    move-object v5, v1

    iget v5, v5, Lcom/sun/javafx/geom/RoundRectangle2D;->x:F

    move-object v6, v1

    iget v6, v6, Lcom/sun/javafx/geom/RoundRectangle2D;->y:F

    move-object v7, v1

    iget v7, v7, Lcom/sun/javafx/geom/RoundRectangle2D;->x:F

    move-object v8, v1

    iget v8, v8, Lcom/sun/javafx/geom/RoundRectangle2D;->width:F

    add-float/2addr v7, v8

    move-object v8, v1

    iget v8, v8, Lcom/sun/javafx/geom/RoundRectangle2D;->y:F

    move-object v9, v1

    iget v9, v9, Lcom/sun/javafx/geom/RoundRectangle2D;->height:F

    add-float/2addr v8, v9

    invoke-interface {v4, v5, v6, v7, v8}, Lcom/sun/prism/Graphics;->fillQuad(FFFF)V

    goto :goto_1
.end method

.method protected static isAARequiredForFill(Lcom/sun/prism/Graphics;Lcom/sun/javafx/geom/RoundRectangle2D;)Z
    .locals 12

    .prologue
    .line 100
    move-object v0, p0

    .local v0, "g":Lcom/sun/prism/Graphics;
    move-object v1, p1

    .local v1, "rrect":Lcom/sun/javafx/geom/RoundRectangle2D;
    move-object v6, v0

    invoke-interface {v6}, Lcom/sun/prism/Graphics;->getTransformNoClone()Lcom/sun/javafx/geom/transform/BaseTransform;

    move-result-object v6

    move-object v2, v6

    .line 101
    .local v2, "xform":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object v6, v2

    invoke-virtual {v6}, Lcom/sun/javafx/geom/transform/BaseTransform;->getType()I

    move-result v6

    int-to-long v6, v6

    move-wide v3, v6

    .line 103
    .local v3, "t":J
    move-wide v6, v3

    const-wide/16 v8, -0x10

    and-long/2addr v6, v8

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_0

    const/4 v6, 0x1

    :goto_0
    move v5, v6

    .line 107
    .local v5, "aaRequiredForSure":Z
    move v6, v5

    if-eqz v6, :cond_1

    .line 108
    const/4 v6, 0x1

    move v0, v6

    .line 121
    .end local v0    # "g":Lcom/sun/prism/Graphics;
    :goto_1
    return v0

    .line 103
    .end local v5    # "aaRequiredForSure":Z
    .restart local v0    # "g":Lcom/sun/prism/Graphics;
    :cond_0
    const/4 v6, 0x0

    goto :goto_0

    .line 110
    .restart local v5    # "aaRequiredForSure":Z
    :cond_1
    move-object v6, v2

    if-eqz v6, :cond_2

    move-object v6, v2

    invoke-virtual {v6}, Lcom/sun/javafx/geom/transform/BaseTransform;->isIdentity()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 111
    :cond_2
    move-object v6, v1

    iget v6, v6, Lcom/sun/javafx/geom/RoundRectangle2D;->x:F

    move-object v7, v1

    iget v7, v7, Lcom/sun/javafx/geom/RoundRectangle2D;->y:F

    move-object v8, v1

    iget v8, v8, Lcom/sun/javafx/geom/RoundRectangle2D;->x:F

    move-object v9, v1

    iget v9, v9, Lcom/sun/javafx/geom/RoundRectangle2D;->width:F

    add-float/2addr v8, v9

    move-object v9, v1

    iget v9, v9, Lcom/sun/javafx/geom/RoundRectangle2D;->y:F

    move-object v10, v1

    iget v10, v10, Lcom/sun/javafx/geom/RoundRectangle2D;->height:F

    add-float/2addr v9, v10

    invoke-static {v6, v7, v8, v9}, Lcom/sun/prism/impl/shape/BasicRoundRectRep;->notOnIntGrid(FFFF)Z

    move-result v6

    move v0, v6

    goto :goto_1

    .line 115
    :cond_3
    sget-object v6, Lcom/sun/prism/impl/shape/BasicRoundRectRep;->TMP_ARR:[F

    const/4 v7, 0x0

    move-object v8, v1

    iget v8, v8, Lcom/sun/javafx/geom/RoundRectangle2D;->x:F

    aput v8, v6, v7

    .line 116
    sget-object v6, Lcom/sun/prism/impl/shape/BasicRoundRectRep;->TMP_ARR:[F

    const/4 v7, 0x1

    move-object v8, v1

    iget v8, v8, Lcom/sun/javafx/geom/RoundRectangle2D;->y:F

    aput v8, v6, v7

    .line 117
    sget-object v6, Lcom/sun/prism/impl/shape/BasicRoundRectRep;->TMP_ARR:[F

    const/4 v7, 0x2

    move-object v8, v1

    iget v8, v8, Lcom/sun/javafx/geom/RoundRectangle2D;->x:F

    move-object v9, v1

    iget v9, v9, Lcom/sun/javafx/geom/RoundRectangle2D;->width:F

    add-float/2addr v8, v9

    aput v8, v6, v7

    .line 118
    sget-object v6, Lcom/sun/prism/impl/shape/BasicRoundRectRep;->TMP_ARR:[F

    const/4 v7, 0x3

    move-object v8, v1

    iget v8, v8, Lcom/sun/javafx/geom/RoundRectangle2D;->y:F

    move-object v9, v1

    iget v9, v9, Lcom/sun/javafx/geom/RoundRectangle2D;->height:F

    add-float/2addr v8, v9

    aput v8, v6, v7

    .line 119
    move-object v6, v2

    sget-object v7, Lcom/sun/prism/impl/shape/BasicRoundRectRep;->TMP_ARR:[F

    const/4 v8, 0x0

    sget-object v9, Lcom/sun/prism/impl/shape/BasicRoundRectRep;->TMP_ARR:[F

    const/4 v10, 0x0

    const/4 v11, 0x2

    invoke-virtual/range {v6 .. v11}, Lcom/sun/javafx/geom/transform/BaseTransform;->transform([FI[FII)V

    .line 121
    sget-object v6, Lcom/sun/prism/impl/shape/BasicRoundRectRep;->TMP_ARR:[F

    const/4 v7, 0x0

    aget v6, v6, v7

    sget-object v7, Lcom/sun/prism/impl/shape/BasicRoundRectRep;->TMP_ARR:[F

    const/4 v8, 0x1

    aget v7, v7, v8

    sget-object v8, Lcom/sun/prism/impl/shape/BasicRoundRectRep;->TMP_ARR:[F

    const/4 v9, 0x2

    aget v8, v8, v9

    sget-object v9, Lcom/sun/prism/impl/shape/BasicRoundRectRep;->TMP_ARR:[F

    const/4 v10, 0x3

    aget v9, v9, v10

    invoke-static {v6, v7, v8, v9}, Lcom/sun/prism/impl/shape/BasicRoundRectRep;->notOnIntGrid(FFFF)Z

    move-result v6

    move v0, v6

    goto :goto_1
.end method

.method private static notIntEnough(F)Z
    .locals 6

    .prologue
    .line 88
    move v1, p0

    .local v1, "f":F
    move v2, v1

    move v3, v1

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    float-to-double v2, v2

    const-wide v4, 0x3faeb851eb851eb8L    # 0.06

    cmpl-double v2, v2, v4

    if-lez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v1, v2

    .end local v1    # "f":F
    return v1

    .restart local v1    # "f":F
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static notOnIntGrid(FFFF)Z
    .locals 5

    .prologue
    .line 92
    move v0, p0

    .local v0, "x1":F
    move v1, p1

    .local v1, "y1":F
    move v2, p2

    .local v2, "x2":F
    move v3, p3

    .local v3, "y2":F
    move v4, v0

    .line 93
    invoke-static {v4}, Lcom/sun/prism/impl/shape/BasicRoundRectRep;->notIntEnough(F)Z

    move-result v4

    if-nez v4, :cond_0

    move v4, v1

    invoke-static {v4}, Lcom/sun/prism/impl/shape/BasicRoundRectRep;->notIntEnough(F)Z

    move-result v4

    if-nez v4, :cond_0

    move v4, v2

    .line 94
    invoke-static {v4}, Lcom/sun/prism/impl/shape/BasicRoundRectRep;->notIntEnough(F)Z

    move-result v4

    if-nez v4, :cond_0

    move v4, v3

    invoke-static {v4}, Lcom/sun/prism/impl/shape/BasicRoundRectRep;->notIntEnough(F)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    const/4 v4, 0x1

    :goto_0
    move v0, v4

    .end local v0    # "x1":F
    return v0

    .restart local v0    # "x1":F
    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method


# virtual methods
.method public draw(Lcom/sun/prism/Graphics;Lcom/sun/javafx/geom/Shape;Lcom/sun/javafx/geom/BaseBounds;)V
    .locals 6

    .prologue
    .line 69
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/shape/BasicRoundRectRep;
    move-object v1, p1

    .local v1, "g":Lcom/sun/prism/Graphics;
    move-object v2, p2

    .local v2, "shape":Lcom/sun/javafx/geom/Shape;
    move-object v3, p3

    .local v3, "bounds":Lcom/sun/javafx/geom/BaseBounds;
    move-object v4, v1

    move-object v5, v2

    check-cast v5, Lcom/sun/javafx/geom/RoundRectangle2D;

    invoke-static {v4, v5}, Lcom/sun/prism/impl/shape/BasicRoundRectRep;->drawRoundRect(Lcom/sun/prism/Graphics;Lcom/sun/javafx/geom/RoundRectangle2D;)V

    .line 70
    return-void
.end method

.method public fill(Lcom/sun/prism/Graphics;Lcom/sun/javafx/geom/Shape;Lcom/sun/javafx/geom/BaseBounds;)V
    .locals 6

    .prologue
    .line 44
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/shape/BasicRoundRectRep;
    move-object v1, p1

    .local v1, "g":Lcom/sun/prism/Graphics;
    move-object v2, p2

    .local v2, "shape":Lcom/sun/javafx/geom/Shape;
    move-object v3, p3

    .local v3, "bounds":Lcom/sun/javafx/geom/BaseBounds;
    move-object v4, v1

    move-object v5, v2

    check-cast v5, Lcom/sun/javafx/geom/RoundRectangle2D;

    invoke-static {v4, v5}, Lcom/sun/prism/impl/shape/BasicRoundRectRep;->fillRoundRect(Lcom/sun/prism/Graphics;Lcom/sun/javafx/geom/RoundRectangle2D;)V

    .line 45
    return-void
.end method
