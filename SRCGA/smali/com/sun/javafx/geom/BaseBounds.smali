.class public abstract Lcom/sun/javafx/geom/BaseBounds;
.super Ljava/lang/Object;
.source "BaseBounds.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/javafx/geom/BaseBounds$BoundsType;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 52
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/BaseBounds;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance(FFFF)Lcom/sun/javafx/geom/BaseBounds;
    .locals 11

    .prologue
    .line 180
    move v0, p0

    .local v0, "minX":F
    move v1, p1

    .local v1, "minY":F
    move v2, p2

    .local v2, "maxX":F
    move v3, p3

    .local v3, "maxY":F
    new-instance v4, Lcom/sun/javafx/geom/RectBounds;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    move v6, v0

    move v7, v1

    move v8, v2

    move v9, v3

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/sun/javafx/geom/RectBounds;-><init>(FFFF)V

    move-object v0, v4

    .end local v0    # "minX":F
    return-object v0
.end method

.method public static getInstance(FFFFFF)Lcom/sun/javafx/geom/BaseBounds;
    .locals 15

    .prologue
    .line 171
    move v0, p0

    .local v0, "minX":F
    move/from16 v1, p1

    .local v1, "minY":F
    move/from16 v2, p2

    .local v2, "minZ":F
    move/from16 v3, p3

    .local v3, "maxX":F
    move/from16 v4, p4

    .local v4, "maxY":F
    move/from16 v5, p5

    .local v5, "maxZ":F
    move v6, v2

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-nez v6, :cond_0

    move v6, v5

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-nez v6, :cond_0

    .line 172
    move v6, v0

    move v7, v1

    move v8, v3

    move v9, v4

    invoke-static {v6, v7, v8, v9}, Lcom/sun/javafx/geom/BaseBounds;->getInstance(FFFF)Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v6

    move-object v0, v6

    .line 174
    .end local v0    # "minX":F
    :goto_0
    return-object v0

    .restart local v0    # "minX":F
    :cond_0
    new-instance v6, Lcom/sun/javafx/geom/BoxBounds;

    move-object v14, v6

    move-object v6, v14

    move-object v7, v14

    move v8, v0

    move v9, v1

    move v10, v2

    move v11, v3

    move v12, v4

    move v13, v5

    invoke-direct/range {v7 .. v13}, Lcom/sun/javafx/geom/BoxBounds;-><init>(FFFFFF)V

    move-object v0, v6

    goto :goto_0
.end method


# virtual methods
.method public abstract add(FFF)V
.end method

.method public abstract add(Lcom/sun/javafx/geom/Point2D;)V
.end method

.method public abstract contains(FF)Z
.end method

.method public abstract contains(Lcom/sun/javafx/geom/Point2D;)Z
.end method

.method public abstract copy()Lcom/sun/javafx/geom/BaseBounds;
.end method

.method public abstract deriveWithNewBounds(FFFFFF)Lcom/sun/javafx/geom/BaseBounds;
.end method

.method public abstract deriveWithNewBounds(Lcom/sun/javafx/geom/BaseBounds;)Lcom/sun/javafx/geom/BaseBounds;
.end method

.method public abstract deriveWithNewBounds(Lcom/sun/javafx/geom/Rectangle;)Lcom/sun/javafx/geom/BaseBounds;
.end method

.method public abstract deriveWithNewBoundsAndSort(FFFFFF)Lcom/sun/javafx/geom/BaseBounds;
.end method

.method public abstract deriveWithPadding(FFF)Lcom/sun/javafx/geom/BaseBounds;
.end method

.method public abstract deriveWithUnion(Lcom/sun/javafx/geom/BaseBounds;)Lcom/sun/javafx/geom/BaseBounds;
.end method

.method public abstract disjoint(FFFF)Z
.end method

.method public abstract flattenInto(Lcom/sun/javafx/geom/RectBounds;)Lcom/sun/javafx/geom/RectBounds;
.end method

.method public abstract getBoundsType()Lcom/sun/javafx/geom/BaseBounds$BoundsType;
.end method

.method public abstract getDepth()F
.end method

.method public abstract getHeight()F
.end method

.method public abstract getMax(Lcom/sun/javafx/geom/Vec2f;)Lcom/sun/javafx/geom/Vec2f;
.end method

.method public abstract getMax(Lcom/sun/javafx/geom/Vec3f;)Lcom/sun/javafx/geom/Vec3f;
.end method

.method public abstract getMaxX()F
.end method

.method public abstract getMaxY()F
.end method

.method public abstract getMaxZ()F
.end method

.method public abstract getMin(Lcom/sun/javafx/geom/Vec2f;)Lcom/sun/javafx/geom/Vec2f;
.end method

.method public abstract getMin(Lcom/sun/javafx/geom/Vec3f;)Lcom/sun/javafx/geom/Vec3f;
.end method

.method public abstract getMinX()F
.end method

.method public abstract getMinY()F
.end method

.method public abstract getMinZ()F
.end method

.method public abstract getWidth()F
.end method

.method public abstract intersectWith(FFFFFF)V
.end method

.method public abstract intersectWith(Lcom/sun/javafx/geom/BaseBounds;)V
.end method

.method public abstract intersectWith(Lcom/sun/javafx/geom/Rectangle;)V
.end method

.method public abstract intersects(FFFF)Z
.end method

.method public abstract is2D()Z
.end method

.method public abstract isEmpty()Z
.end method

.method public abstract makeEmpty()Lcom/sun/javafx/geom/BaseBounds;
.end method

.method public abstract roundOut()V
.end method

.method public abstract setBoundsAndSort(FFFFFF)V
.end method

.method public abstract setBoundsAndSort(Lcom/sun/javafx/geom/Point2D;Lcom/sun/javafx/geom/Point2D;)V
.end method

.method protected abstract sortMinMax()V
.end method

.method public abstract translate(FFF)V
.end method
