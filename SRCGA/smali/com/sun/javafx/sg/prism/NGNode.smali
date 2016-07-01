.class public abstract Lcom/sun/javafx/sg/prism/NGNode;
.super Ljava/lang/Object;
.source "NGNode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/javafx/sg/prism/NGNode$EffectDirtyBoundsHelper;,
        Lcom/sun/javafx/sg/prism/NGNode$PassThrough;,
        Lcom/sun/javafx/sg/prism/NGNode$RenderRootResult;,
        Lcom/sun/javafx/sg/prism/NGNode$DirtyFlag;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field protected static final DIRTY_CHILDREN_ACCUMULATED_THRESHOLD:I = 0xc

.field static final DIRTY_REGION_CONTAINS_NODE_BOUNDS:I = 0x2

.field static final DIRTY_REGION_CONTAINS_OR_INTERSECTS_NODE_BOUNDS:I = 0x3

.field static final DIRTY_REGION_INTERSECTS_NODE_BOUNDS:I = 0x1

.field private static final TEMP_BOUNDS:Lcom/sun/javafx/geom/BoxBounds;

.field private static TEMP_POINTS2D_4:[Lcom/sun/javafx/geom/Point2D;

.field private static final TEMP_RECT_BOUNDS:Lcom/sun/javafx/geom/RectBounds;

.field protected static final TEMP_TRANSFORM:Lcom/sun/javafx/geom/transform/Affine3D;

.field private static final effectsSupported:Ljava/lang/Boolean;

.field private static final pipeline:Lcom/sun/prism/GraphicsPipeline;


# instance fields
.field private cacheFilter:Lcom/sun/javafx/sg/prism/CacheFilter;

.field protected childDirty:Z

.field private clipNode:Lcom/sun/javafx/sg/prism/NGNode;

.field protected contentBounds:Lcom/sun/javafx/geom/BaseBounds;

.field protected cullingBits:I

.field private depthTest:Z

.field protected dirty:Lcom/sun/javafx/sg/prism/NGNode$DirtyFlag;

.field dirtyBounds:Lcom/sun/javafx/geom/BaseBounds;

.field protected dirtyChildrenAccumulated:I

.field private effectFilter:Lcom/sun/javafx/sg/prism/EffectFilter;

.field private hint:Lcom/sun/javafx/sg/prism/DirtyHint;

.field private isClip:Z

.field private name:Ljava/lang/String;

.field private nodeBlendMode:Lcom/sun/scenario/effect/Blend$Mode;

.field private opacity:F

.field private opaqueRegion:Lcom/sun/javafx/geom/RectBounds;

.field private opaqueRegionInvalid:Z

.field private painted:I

.field private parent:Lcom/sun/javafx/sg/prism/NGNode;

.field private transform:Lcom/sun/javafx/geom/transform/BaseTransform;

.field protected transformedBounds:Lcom/sun/javafx/geom/BaseBounds;

.field private visible:Z


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 82
    const-class v0, Lcom/sun/javafx/sg/prism/NGNode;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/sun/javafx/sg/prism/NGNode;->$assertionsDisabled:Z

    .line 84
    invoke-static {}, Lcom/sun/prism/GraphicsPipeline;->getPipeline()Lcom/sun/prism/GraphicsPipeline;

    move-result-object v0

    sput-object v0, Lcom/sun/javafx/sg/prism/NGNode;->pipeline:Lcom/sun/prism/GraphicsPipeline;

    .line 86
    sget-object v0, Lcom/sun/javafx/sg/prism/NGNode;->pipeline:Lcom/sun/prism/GraphicsPipeline;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 87
    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/sun/javafx/sg/prism/NGNode;->effectsSupported:Ljava/lang/Boolean;

    .line 107
    new-instance v0, Lcom/sun/javafx/geom/BoxBounds;

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    invoke-direct {v1}, Lcom/sun/javafx/geom/BoxBounds;-><init>()V

    sput-object v0, Lcom/sun/javafx/sg/prism/NGNode;->TEMP_BOUNDS:Lcom/sun/javafx/geom/BoxBounds;

    .line 108
    new-instance v0, Lcom/sun/javafx/geom/RectBounds;

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    invoke-direct {v1}, Lcom/sun/javafx/geom/RectBounds;-><init>()V

    sput-object v0, Lcom/sun/javafx/sg/prism/NGNode;->TEMP_RECT_BOUNDS:Lcom/sun/javafx/geom/RectBounds;

    .line 109
    new-instance v0, Lcom/sun/javafx/geom/transform/Affine3D;

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    invoke-direct {v1}, Lcom/sun/javafx/geom/transform/Affine3D;-><init>()V

    sput-object v0, Lcom/sun/javafx/sg/prism/NGNode;->TEMP_TRANSFORM:Lcom/sun/javafx/geom/transform/Affine3D;

    .line 1666
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/sun/javafx/geom/Point2D;

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const/4 v2, 0x0

    new-instance v3, Lcom/sun/javafx/geom/Point2D;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Lcom/sun/javafx/geom/Point2D;-><init>()V

    aput-object v3, v1, v2

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const/4 v2, 0x1

    new-instance v3, Lcom/sun/javafx/geom/Point2D;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Lcom/sun/javafx/geom/Point2D;-><init>()V

    aput-object v3, v1, v2

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const/4 v2, 0x2

    new-instance v3, Lcom/sun/javafx/geom/Point2D;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Lcom/sun/javafx/geom/Point2D;-><init>()V

    aput-object v3, v1, v2

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const/4 v2, 0x3

    new-instance v3, Lcom/sun/javafx/geom/Point2D;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Lcom/sun/javafx/geom/Point2D;-><init>()V

    aput-object v3, v1, v2

    sput-object v0, Lcom/sun/javafx/sg/prism/NGNode;->TEMP_POINTS2D_4:[Lcom/sun/javafx/geom/Point2D;

    return-void

    .line 82
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 86
    :cond_1
    sget-object v0, Lcom/sun/javafx/sg/prism/NGNode;->pipeline:Lcom/sun/prism/GraphicsPipeline;

    .line 87
    invoke-virtual {v0}, Lcom/sun/prism/GraphicsPipeline;->isEffectSupported()Z

    move-result v0

    goto :goto_1
.end method

.method protected constructor <init>()V
    .locals 5

    .prologue
    .line 267
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGNode;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 126
    move-object v1, v0

    sget-object v2, Lcom/sun/javafx/geom/transform/BaseTransform;->IDENTITY_TRANSFORM:Lcom/sun/javafx/geom/transform/BaseTransform;

    iput-object v2, v1, Lcom/sun/javafx/sg/prism/NGNode;->transform:Lcom/sun/javafx/geom/transform/BaseTransform;

    .line 134
    move-object v1, v0

    new-instance v2, Lcom/sun/javafx/geom/RectBounds;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Lcom/sun/javafx/geom/RectBounds;-><init>()V

    iput-object v2, v1, Lcom/sun/javafx/sg/prism/NGNode;->transformedBounds:Lcom/sun/javafx/geom/BaseBounds;

    .line 141
    move-object v1, v0

    new-instance v2, Lcom/sun/javafx/geom/RectBounds;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Lcom/sun/javafx/geom/RectBounds;-><init>()V

    iput-object v2, v1, Lcom/sun/javafx/sg/prism/NGNode;->contentBounds:Lcom/sun/javafx/geom/BaseBounds;

    .line 150
    move-object v1, v0

    new-instance v2, Lcom/sun/javafx/geom/RectBounds;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Lcom/sun/javafx/geom/RectBounds;-><init>()V

    iput-object v2, v1, Lcom/sun/javafx/sg/prism/NGNode;->dirtyBounds:Lcom/sun/javafx/geom/BaseBounds;

    .line 157
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/sun/javafx/sg/prism/NGNode;->visible:Z

    .line 166
    move-object v1, v0

    sget-object v2, Lcom/sun/javafx/sg/prism/NGNode$DirtyFlag;->DIRTY:Lcom/sun/javafx/sg/prism/NGNode$DirtyFlag;

    iput-object v2, v1, Lcom/sun/javafx/sg/prism/NGNode;->dirty:Lcom/sun/javafx/sg/prism/NGNode$DirtyFlag;

    .line 189
    move-object v1, v0

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, v1, Lcom/sun/javafx/sg/prism/NGNode;->opacity:F

    .line 201
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/sun/javafx/sg/prism/NGNode;->depthTest:Z

    .line 225
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/sun/javafx/sg/prism/NGNode;->childDirty:Z

    .line 230
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Lcom/sun/javafx/sg/prism/NGNode;->dirtyChildrenAccumulated:I

    .line 241
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Lcom/sun/javafx/sg/prism/NGNode;->cullingBits:I

    .line 249
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/sun/javafx/sg/prism/NGNode;->opaqueRegion:Lcom/sun/javafx/geom/RectBounds;

    .line 255
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/sun/javafx/sg/prism/NGNode;->opaqueRegionInvalid:Z

    .line 265
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Lcom/sun/javafx/sg/prism/NGNode;->painted:I

    .line 267
    return-void
.end method

.method private static ccw(DDLcom/sun/javafx/geom/Point2D;Lcom/sun/javafx/geom/Point2D;)I
    .locals 14

    .prologue
    .line 1671
    move-wide v0, p0

    .local v0, "px":D
    move-wide/from16 v2, p2

    .local v2, "py":D
    move-object/from16 v4, p4

    .local v4, "a":Lcom/sun/javafx/geom/Point2D;
    move-object/from16 v5, p5

    .local v5, "b":Lcom/sun/javafx/geom/Point2D;
    move-object v6, v5

    iget v6, v6, Lcom/sun/javafx/geom/Point2D;->x:F

    move-object v7, v4

    iget v7, v7, Lcom/sun/javafx/geom/Point2D;->x:F

    sub-float/2addr v6, v7

    float-to-double v6, v6

    move-wide v8, v2

    move-object v10, v4

    iget v10, v10, Lcom/sun/javafx/geom/Point2D;->y:F

    float-to-double v10, v10

    sub-double/2addr v8, v10

    mul-double/2addr v6, v8

    move-object v8, v5

    iget v8, v8, Lcom/sun/javafx/geom/Point2D;->y:F

    move-object v9, v4

    iget v9, v9, Lcom/sun/javafx/geom/Point2D;->y:F

    sub-float/2addr v8, v9

    float-to-double v8, v8

    move-wide v10, v0

    move-object v12, v4

    iget v12, v12, Lcom/sun/javafx/geom/Point2D;->x:F

    float-to-double v12, v12

    sub-double/2addr v10, v12

    mul-double/2addr v8, v10

    sub-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->signum(D)D

    move-result-wide v6

    double-to-int v6, v6

    move v0, v6

    .end local v0    # "px":D
    return v0
.end method

.method static checkBoundsInQuad(Lcom/sun/javafx/geom/RectBounds;Lcom/sun/javafx/geom/RectBounds;Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/javafx/geom/transform/GeneralTransform3D;)Z
    .locals 13

    .prologue
    .line 1748
    move-object v0, p0

    .local v0, "untransformedQuad":Lcom/sun/javafx/geom/RectBounds;
    move-object v1, p1

    .local v1, "innerBounds":Lcom/sun/javafx/geom/RectBounds;
    move-object v2, p2

    .local v2, "tx":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object/from16 v3, p3

    .local v3, "pvTx":Lcom/sun/javafx/geom/transform/GeneralTransform3D;
    move-object v8, v3

    invoke-virtual {v8}, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->isIdentity()Z

    move-result v8

    if-eqz v8, :cond_1

    move-object v8, v2

    invoke-virtual {v8}, Lcom/sun/javafx/geom/transform/BaseTransform;->getType()I

    move-result v8

    const/16 v9, -0x10

    and-int/lit8 v8, v8, -0x10

    if-nez v8, :cond_1

    .line 1753
    move-object v8, v2

    invoke-virtual {v8}, Lcom/sun/javafx/geom/transform/BaseTransform;->isIdentity()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1754
    sget-object v8, Lcom/sun/javafx/sg/prism/NGNode;->TEMP_BOUNDS:Lcom/sun/javafx/geom/BoxBounds;

    move-object v9, v0

    invoke-virtual {v8, v9}, Lcom/sun/javafx/geom/BoxBounds;->deriveWithNewBounds(Lcom/sun/javafx/geom/BaseBounds;)Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v8

    .line 1759
    :goto_0
    sget-object v8, Lcom/sun/javafx/sg/prism/NGNode;->TEMP_BOUNDS:Lcom/sun/javafx/geom/BoxBounds;

    sget-object v9, Lcom/sun/javafx/sg/prism/NGNode;->TEMP_RECT_BOUNDS:Lcom/sun/javafx/geom/RectBounds;

    invoke-virtual {v8, v9}, Lcom/sun/javafx/geom/BoxBounds;->flattenInto(Lcom/sun/javafx/geom/RectBounds;)Lcom/sun/javafx/geom/RectBounds;

    move-result-object v8

    .line 1761
    sget-object v8, Lcom/sun/javafx/sg/prism/NGNode;->TEMP_RECT_BOUNDS:Lcom/sun/javafx/geom/RectBounds;

    move-object v9, v1

    invoke-virtual {v8, v9}, Lcom/sun/javafx/geom/RectBounds;->contains(Lcom/sun/javafx/geom/RectBounds;)Z

    move-result v8

    move v0, v8

    .line 1778
    .end local v0    # "untransformedQuad":Lcom/sun/javafx/geom/RectBounds;
    :goto_1
    return v0

    .line 1756
    .restart local v0    # "untransformedQuad":Lcom/sun/javafx/geom/RectBounds;
    :cond_0
    move-object v8, v2

    move-object v9, v0

    sget-object v10, Lcom/sun/javafx/sg/prism/NGNode;->TEMP_BOUNDS:Lcom/sun/javafx/geom/BoxBounds;

    invoke-virtual {v8, v9, v10}, Lcom/sun/javafx/geom/transform/BaseTransform;->transform(Lcom/sun/javafx/geom/BaseBounds;Lcom/sun/javafx/geom/BaseBounds;)Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v8

    goto :goto_0

    .line 1763
    :cond_1
    sget-object v8, Lcom/sun/javafx/sg/prism/NGNode;->TEMP_POINTS2D_4:[Lcom/sun/javafx/geom/Point2D;

    const/4 v9, 0x0

    aget-object v8, v8, v9

    move-object v9, v0

    invoke-virtual {v9}, Lcom/sun/javafx/geom/RectBounds;->getMinX()F

    move-result v9

    move-object v10, v0

    invoke-virtual {v10}, Lcom/sun/javafx/geom/RectBounds;->getMinY()F

    move-result v10

    invoke-virtual {v8, v9, v10}, Lcom/sun/javafx/geom/Point2D;->setLocation(FF)V

    .line 1764
    sget-object v8, Lcom/sun/javafx/sg/prism/NGNode;->TEMP_POINTS2D_4:[Lcom/sun/javafx/geom/Point2D;

    const/4 v9, 0x1

    aget-object v8, v8, v9

    move-object v9, v0

    invoke-virtual {v9}, Lcom/sun/javafx/geom/RectBounds;->getMaxX()F

    move-result v9

    move-object v10, v0

    invoke-virtual {v10}, Lcom/sun/javafx/geom/RectBounds;->getMinY()F

    move-result v10

    invoke-virtual {v8, v9, v10}, Lcom/sun/javafx/geom/Point2D;->setLocation(FF)V

    .line 1765
    sget-object v8, Lcom/sun/javafx/sg/prism/NGNode;->TEMP_POINTS2D_4:[Lcom/sun/javafx/geom/Point2D;

    const/4 v9, 0x2

    aget-object v8, v8, v9

    move-object v9, v0

    invoke-virtual {v9}, Lcom/sun/javafx/geom/RectBounds;->getMaxX()F

    move-result v9

    move-object v10, v0

    invoke-virtual {v10}, Lcom/sun/javafx/geom/RectBounds;->getMaxY()F

    move-result v10

    invoke-virtual {v8, v9, v10}, Lcom/sun/javafx/geom/Point2D;->setLocation(FF)V

    .line 1766
    sget-object v8, Lcom/sun/javafx/sg/prism/NGNode;->TEMP_POINTS2D_4:[Lcom/sun/javafx/geom/Point2D;

    const/4 v9, 0x3

    aget-object v8, v8, v9

    move-object v9, v0

    invoke-virtual {v9}, Lcom/sun/javafx/geom/RectBounds;->getMinX()F

    move-result v9

    move-object v10, v0

    invoke-virtual {v10}, Lcom/sun/javafx/geom/RectBounds;->getMaxY()F

    move-result v10

    invoke-virtual {v8, v9, v10}, Lcom/sun/javafx/geom/Point2D;->setLocation(FF)V

    .line 1768
    sget-object v8, Lcom/sun/javafx/sg/prism/NGNode;->TEMP_POINTS2D_4:[Lcom/sun/javafx/geom/Point2D;

    move-object v4, v8

    move-object v8, v4

    array-length v8, v8

    move v5, v8

    const/4 v8, 0x0

    move v6, v8

    :goto_2
    move v8, v6

    move v9, v5

    if-ge v8, v9, :cond_3

    move-object v8, v4

    move v9, v6

    aget-object v8, v8, v9

    move-object v7, v8

    .line 1769
    .local v7, "p":Lcom/sun/javafx/geom/Point2D;
    move-object v8, v2

    move-object v9, v7

    move-object v10, v7

    invoke-virtual {v8, v9, v10}, Lcom/sun/javafx/geom/transform/BaseTransform;->transform(Lcom/sun/javafx/geom/Point2D;Lcom/sun/javafx/geom/Point2D;)Lcom/sun/javafx/geom/Point2D;

    move-result-object v8

    .line 1770
    move-object v8, v3

    invoke-virtual {v8}, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->isIdentity()Z

    move-result v8

    if-nez v8, :cond_2

    .line 1771
    move-object v8, v3

    move-object v9, v7

    move-object v10, v7

    invoke-virtual {v8, v9, v10}, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->transform(Lcom/sun/javafx/geom/Point2D;Lcom/sun/javafx/geom/Point2D;)Lcom/sun/javafx/geom/Point2D;

    move-result-object v8

    .line 1768
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 1775
    .end local v7    # "p":Lcom/sun/javafx/geom/Point2D;
    :cond_3
    move-object v8, v1

    invoke-virtual {v8}, Lcom/sun/javafx/geom/RectBounds;->getMinX()F

    move-result v8

    float-to-double v8, v8

    move-object v10, v1

    invoke-virtual {v10}, Lcom/sun/javafx/geom/RectBounds;->getMinY()F

    move-result v10

    float-to-double v10, v10

    sget-object v12, Lcom/sun/javafx/sg/prism/NGNode;->TEMP_POINTS2D_4:[Lcom/sun/javafx/geom/Point2D;

    invoke-static {v8, v9, v10, v11, v12}, Lcom/sun/javafx/sg/prism/NGNode;->pointInConvexQuad(DD[Lcom/sun/javafx/geom/Point2D;)Z

    move-result v8

    if-eqz v8, :cond_4

    move-object v8, v1

    .line 1776
    invoke-virtual {v8}, Lcom/sun/javafx/geom/RectBounds;->getMaxX()F

    move-result v8

    float-to-double v8, v8

    move-object v10, v1

    invoke-virtual {v10}, Lcom/sun/javafx/geom/RectBounds;->getMinY()F

    move-result v10

    float-to-double v10, v10

    sget-object v12, Lcom/sun/javafx/sg/prism/NGNode;->TEMP_POINTS2D_4:[Lcom/sun/javafx/geom/Point2D;

    invoke-static {v8, v9, v10, v11, v12}, Lcom/sun/javafx/sg/prism/NGNode;->pointInConvexQuad(DD[Lcom/sun/javafx/geom/Point2D;)Z

    move-result v8

    if-eqz v8, :cond_4

    move-object v8, v1

    .line 1777
    invoke-virtual {v8}, Lcom/sun/javafx/geom/RectBounds;->getMaxX()F

    move-result v8

    float-to-double v8, v8

    move-object v10, v1

    invoke-virtual {v10}, Lcom/sun/javafx/geom/RectBounds;->getMaxY()F

    move-result v10

    float-to-double v10, v10

    sget-object v12, Lcom/sun/javafx/sg/prism/NGNode;->TEMP_POINTS2D_4:[Lcom/sun/javafx/geom/Point2D;

    invoke-static {v8, v9, v10, v11, v12}, Lcom/sun/javafx/sg/prism/NGNode;->pointInConvexQuad(DD[Lcom/sun/javafx/geom/Point2D;)Z

    move-result v8

    if-eqz v8, :cond_4

    move-object v8, v1

    .line 1778
    invoke-virtual {v8}, Lcom/sun/javafx/geom/RectBounds;->getMinX()F

    move-result v8

    float-to-double v8, v8

    move-object v10, v1

    invoke-virtual {v10}, Lcom/sun/javafx/geom/RectBounds;->getMaxY()F

    move-result v10

    float-to-double v10, v10

    sget-object v12, Lcom/sun/javafx/sg/prism/NGNode;->TEMP_POINTS2D_4:[Lcom/sun/javafx/geom/Point2D;

    invoke-static {v8, v9, v10, v11, v12}, Lcom/sun/javafx/sg/prism/NGNode;->pointInConvexQuad(DD[Lcom/sun/javafx/geom/Point2D;)Z

    move-result v8

    if-eqz v8, :cond_4

    const/4 v8, 0x1

    :goto_3
    move v0, v8

    goto/16 :goto_1

    :cond_4
    const/4 v8, 0x0

    goto :goto_3
.end method

.method private computeBounds(Lcom/sun/javafx/geom/BaseBounds;Lcom/sun/javafx/geom/transform/BaseTransform;)Lcom/sun/javafx/geom/BaseBounds;
    .locals 6

    .prologue
    .line 699
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGNode;
    move-object v1, p1

    .local v1, "bounds":Lcom/sun/javafx/geom/BaseBounds;
    move-object v2, p2

    .local v2, "tx":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/sg/prism/NGNode;->contentBounds:Lcom/sun/javafx/geom/BaseBounds;

    invoke-virtual {v3, v4}, Lcom/sun/javafx/geom/BaseBounds;->deriveWithNewBounds(Lcom/sun/javafx/geom/BaseBounds;)Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v3

    move-object v1, v3

    .line 700
    move-object v3, v2

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/sg/prism/NGNode;->contentBounds:Lcom/sun/javafx/geom/BaseBounds;

    move-object v5, v1

    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/geom/transform/BaseTransform;->transform(Lcom/sun/javafx/geom/BaseBounds;Lcom/sun/javafx/geom/BaseBounds;)Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lcom/sun/javafx/sg/prism/NGNode;
    return-object v0
.end method

.method private computeDirtyRegion(Lcom/sun/javafx/geom/RectBounds;Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/javafx/geom/transform/GeneralTransform3D;)Lcom/sun/javafx/geom/BaseBounds;
    .locals 9

    .prologue
    .line 1258
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGNode;
    move-object v1, p1

    .local v1, "dirtyRegionTemp":Lcom/sun/javafx/geom/RectBounds;
    move-object v2, p2

    .local v2, "tx":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object v3, p3

    .local v3, "pvTx":Lcom/sun/javafx/geom/transform/GeneralTransform3D;
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/sg/prism/NGNode;->cacheFilter:Lcom/sun/javafx/sg/prism/CacheFilter;

    if-eqz v5, :cond_0

    .line 1259
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/sg/prism/NGNode;->cacheFilter:Lcom/sun/javafx/sg/prism/CacheFilter;

    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    invoke-virtual {v5, v6, v7, v8}, Lcom/sun/javafx/sg/prism/CacheFilter;->computeDirtyBounds(Lcom/sun/javafx/geom/BaseBounds;Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/javafx/geom/transform/GeneralTransform3D;)Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v5

    move-object v0, v5

    .line 1290
    .end local v0    # "this":Lcom/sun/javafx/sg/prism/NGNode;
    :goto_0
    return-object v0

    .line 1267
    .restart local v0    # "this":Lcom/sun/javafx/sg/prism/NGNode;
    :cond_0
    move-object v5, v1

    move-object v4, v5

    .line 1268
    .local v4, "region":Lcom/sun/javafx/geom/BaseBounds;
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/sg/prism/NGNode;->dirtyBounds:Lcom/sun/javafx/geom/BaseBounds;

    invoke-virtual {v5}, Lcom/sun/javafx/geom/BaseBounds;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    .line 1269
    move-object v5, v4

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/sg/prism/NGNode;->dirtyBounds:Lcom/sun/javafx/geom/BaseBounds;

    invoke-virtual {v5, v6}, Lcom/sun/javafx/geom/BaseBounds;->deriveWithNewBounds(Lcom/sun/javafx/geom/BaseBounds;)Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v5

    move-object v4, v5

    .line 1282
    :goto_1
    move-object v5, v4

    invoke-virtual {v5}, Lcom/sun/javafx/geom/BaseBounds;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    .line 1286
    move-object v5, v0

    move-object v6, v4

    invoke-virtual {v5, v6}, Lcom/sun/javafx/sg/prism/NGNode;->computePadding(Lcom/sun/javafx/geom/BaseBounds;)Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v5

    move-object v4, v5

    .line 1287
    move-object v5, v2

    move-object v6, v4

    move-object v7, v4

    invoke-virtual {v5, v6, v7}, Lcom/sun/javafx/geom/transform/BaseTransform;->transform(Lcom/sun/javafx/geom/BaseBounds;Lcom/sun/javafx/geom/BaseBounds;)Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v5

    move-object v4, v5

    .line 1288
    move-object v5, v3

    move-object v6, v4

    move-object v7, v4

    invoke-virtual {v5, v6, v7}, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->transform(Lcom/sun/javafx/geom/BaseBounds;Lcom/sun/javafx/geom/BaseBounds;)Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v5

    move-object v4, v5

    .line 1290
    :cond_1
    move-object v5, v4

    move-object v0, v5

    goto :goto_0

    .line 1277
    :cond_2
    move-object v5, v4

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/sg/prism/NGNode;->transformedBounds:Lcom/sun/javafx/geom/BaseBounds;

    invoke-virtual {v5, v6}, Lcom/sun/javafx/geom/BaseBounds;->deriveWithNewBounds(Lcom/sun/javafx/geom/BaseBounds;)Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v5

    move-object v4, v5

    goto :goto_1
.end method

.method static getFilterContext(Lcom/sun/prism/Graphics;)Lcom/sun/scenario/effect/FilterContext;
    .locals 3

    .prologue
    .line 2393
    move-object v0, p0

    .local v0, "g":Lcom/sun/prism/Graphics;
    move-object v2, v0

    invoke-interface {v2}, Lcom/sun/prism/Graphics;->getAssociatedScreen()Lcom/sun/glass/ui/Screen;

    move-result-object v2

    move-object v1, v2

    .line 2394
    .local v1, "s":Lcom/sun/glass/ui/Screen;
    move-object v2, v1

    if-nez v2, :cond_0

    .line 2395
    move-object v2, v0

    invoke-interface {v2}, Lcom/sun/prism/Graphics;->getResourceFactory()Lcom/sun/prism/ResourceFactory;

    move-result-object v2

    invoke-static {v2}, Lcom/sun/scenario/effect/impl/prism/PrFilterContext;->getPrinterContext(Ljava/lang/Object;)Lcom/sun/scenario/effect/impl/prism/PrFilterContext;

    move-result-object v2

    move-object v0, v2

    .line 2397
    .end local v0    # "g":Lcom/sun/prism/Graphics;
    :goto_0
    return-object v0

    .restart local v0    # "g":Lcom/sun/prism/Graphics;
    :cond_0
    move-object v2, v1

    invoke-static {v2}, Lcom/sun/scenario/effect/impl/prism/PrFilterContext;->getInstance(Lcom/sun/glass/ui/Screen;)Lcom/sun/scenario/effect/impl/prism/PrFilterContext;

    move-result-object v2

    move-object v0, v2

    goto :goto_0
.end method

.method private markDirtyByTranslation()V
    .locals 5

    .prologue
    .line 806
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGNode;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/sg/prism/NGNode;->dirty:Lcom/sun/javafx/sg/prism/NGNode$DirtyFlag;

    sget-object v2, Lcom/sun/javafx/sg/prism/NGNode$DirtyFlag;->CLEAN:Lcom/sun/javafx/sg/prism/NGNode$DirtyFlag;

    if-ne v1, v2, :cond_0

    .line 807
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/sg/prism/NGNode;->parent:Lcom/sun/javafx/sg/prism/NGNode;

    if-eqz v1, :cond_1

    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/sg/prism/NGNode;->parent:Lcom/sun/javafx/sg/prism/NGNode;

    iget-object v1, v1, Lcom/sun/javafx/sg/prism/NGNode;->dirty:Lcom/sun/javafx/sg/prism/NGNode$DirtyFlag;

    sget-object v2, Lcom/sun/javafx/sg/prism/NGNode$DirtyFlag;->CLEAN:Lcom/sun/javafx/sg/prism/NGNode$DirtyFlag;

    if-ne v1, v2, :cond_1

    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/sg/prism/NGNode;->parent:Lcom/sun/javafx/sg/prism/NGNode;

    iget-boolean v1, v1, Lcom/sun/javafx/sg/prism/NGNode;->childDirty:Z

    if-nez v1, :cond_1

    .line 808
    move-object v1, v0

    sget-object v2, Lcom/sun/javafx/sg/prism/NGNode$DirtyFlag;->DIRTY_BY_TRANSLATION:Lcom/sun/javafx/sg/prism/NGNode$DirtyFlag;

    iput-object v2, v1, Lcom/sun/javafx/sg/prism/NGNode;->dirty:Lcom/sun/javafx/sg/prism/NGNode$DirtyFlag;

    .line 809
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/sg/prism/NGNode;->parent:Lcom/sun/javafx/sg/prism/NGNode;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/sun/javafx/sg/prism/NGNode;->childDirty:Z

    .line 810
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/sg/prism/NGNode;->parent:Lcom/sun/javafx/sg/prism/NGNode;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    iget v2, v2, Lcom/sun/javafx/sg/prism/NGNode;->dirtyChildrenAccumulated:I

    const/4 v3, 0x1

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/sun/javafx/sg/prism/NGNode;->dirtyChildrenAccumulated:I

    .line 811
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/sg/prism/NGNode;->parent:Lcom/sun/javafx/sg/prism/NGNode;

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/sg/prism/NGNode;->hint:Lcom/sun/javafx/sg/prism/DirtyHint;

    invoke-virtual {v1, v2}, Lcom/sun/javafx/sg/prism/NGNode;->invalidateCacheByTranslation(Lcom/sun/javafx/sg/prism/DirtyHint;)V

    .line 812
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/sg/prism/NGNode;->parent:Lcom/sun/javafx/sg/prism/NGNode;

    invoke-virtual {v1}, Lcom/sun/javafx/sg/prism/NGNode;->markTreeDirty()V

    .line 817
    :cond_0
    :goto_0
    return-void

    .line 814
    :cond_1
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/sg/prism/NGNode;->markDirty()V

    goto :goto_0
.end method

.method private static pointInConvexQuad(DD[Lcom/sun/javafx/geom/Point2D;)Z
    .locals 18

    .prologue
    .line 1675
    move-wide/from16 v0, p0

    .local v0, "x":D
    move-wide/from16 v2, p2

    .local v2, "y":D
    move-object/from16 v4, p4

    .local v4, "rect":[Lcom/sun/javafx/geom/Point2D;
    move-wide v10, v0

    move-wide v12, v2

    move-object v14, v4

    const/4 v15, 0x0

    aget-object v14, v14, v15

    move-object v15, v4

    const/16 v16, 0x1

    aget-object v15, v15, v16

    invoke-static/range {v10 .. v15}, Lcom/sun/javafx/sg/prism/NGNode;->ccw(DDLcom/sun/javafx/geom/Point2D;Lcom/sun/javafx/geom/Point2D;)I

    move-result v10

    move v5, v10

    .line 1676
    .local v5, "ccw01":I
    move-wide v10, v0

    move-wide v12, v2

    move-object v14, v4

    const/4 v15, 0x1

    aget-object v14, v14, v15

    move-object v15, v4

    const/16 v16, 0x2

    aget-object v15, v15, v16

    invoke-static/range {v10 .. v15}, Lcom/sun/javafx/sg/prism/NGNode;->ccw(DDLcom/sun/javafx/geom/Point2D;Lcom/sun/javafx/geom/Point2D;)I

    move-result v10

    move v6, v10

    .line 1677
    .local v6, "ccw12":I
    move-wide v10, v0

    move-wide v12, v2

    move-object v14, v4

    const/4 v15, 0x2

    aget-object v14, v14, v15

    move-object v15, v4

    const/16 v16, 0x3

    aget-object v15, v15, v16

    invoke-static/range {v10 .. v15}, Lcom/sun/javafx/sg/prism/NGNode;->ccw(DDLcom/sun/javafx/geom/Point2D;Lcom/sun/javafx/geom/Point2D;)I

    move-result v10

    move v7, v10

    .line 1678
    .local v7, "ccw23":I
    move-wide v10, v0

    move-wide v12, v2

    move-object v14, v4

    const/4 v15, 0x3

    aget-object v14, v14, v15

    move-object v15, v4

    const/16 v16, 0x0

    aget-object v15, v15, v16

    invoke-static/range {v10 .. v15}, Lcom/sun/javafx/sg/prism/NGNode;->ccw(DDLcom/sun/javafx/geom/Point2D;Lcom/sun/javafx/geom/Point2D;)I

    move-result v10

    move v8, v10

    .line 1684
    .local v8, "ccw31":I
    move v10, v5

    move v11, v5

    const/4 v12, 0x1

    ushr-int/lit8 v11, v11, 0x1

    xor-int/2addr v10, v11

    move v5, v10

    .line 1685
    move v10, v6

    move v11, v6

    const/4 v12, 0x1

    ushr-int/lit8 v11, v11, 0x1

    xor-int/2addr v10, v11

    move v6, v10

    .line 1686
    move v10, v7

    move v11, v7

    const/4 v12, 0x1

    ushr-int/lit8 v11, v11, 0x1

    xor-int/2addr v10, v11

    move v7, v10

    .line 1687
    move v10, v8

    move v11, v8

    const/4 v12, 0x1

    ushr-int/lit8 v11, v11, 0x1

    xor-int/2addr v10, v11

    move v8, v10

    .line 1689
    move v10, v5

    move v11, v6

    or-int/2addr v10, v11

    move v11, v7

    or-int/2addr v10, v11

    move v11, v8

    or-int/2addr v10, v11

    move v9, v10

    .line 1691
    .local v9, "union":I
    move v10, v9

    const/high16 v11, -0x80000000

    if-eq v10, v11, :cond_0

    move v10, v9

    const/4 v11, 0x1

    if-ne v10, v11, :cond_1

    :cond_0
    const/4 v10, 0x1

    :goto_0
    move v0, v10

    .end local v0    # "x":D
    return v0

    .restart local v0    # "x":D
    :cond_1
    const/4 v10, 0x0

    goto :goto_0
.end method

.method private final printDirtyOpts(Ljava/lang/StringBuilder;Lcom/sun/javafx/sg/prism/NGNode;Lcom/sun/javafx/geom/transform/BaseTransform;Ljava/lang/String;Ljava/util/List;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Lcom/sun/javafx/sg/prism/NGNode;",
            "Lcom/sun/javafx/geom/transform/BaseTransform;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/sun/javafx/sg/prism/NGNode;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1437
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGNode;
    move-object/from16 v1, p1

    .local v1, "s":Ljava/lang/StringBuilder;
    move-object/from16 v2, p2

    .local v2, "node":Lcom/sun/javafx/sg/prism/NGNode;
    move-object/from16 v3, p3

    .local v3, "tx":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object/from16 v4, p4

    .local v4, "prefix":Ljava/lang/String;
    move-object/from16 v5, p5

    .local v5, "roots":Ljava/util/List;, "Ljava/util/List<Lcom/sun/javafx/sg/prism/NGNode;>;"
    move-object v11, v2

    invoke-virtual {v11}, Lcom/sun/javafx/sg/prism/NGNode;->isVisible()Z

    move-result v11

    if-eqz v11, :cond_0

    move-object v11, v2

    invoke-virtual {v11}, Lcom/sun/javafx/sg/prism/NGNode;->getOpacity()F

    move-result v11

    const/4 v12, 0x0

    cmpl-float v11, v11, v12

    if-nez v11, :cond_1

    .line 1494
    :cond_0
    :goto_0
    return-void

    .line 1439
    :cond_1
    move-object v11, v3

    invoke-virtual {v11}, Lcom/sun/javafx/geom/transform/BaseTransform;->copy()Lcom/sun/javafx/geom/transform/BaseTransform;

    move-result-object v11

    move-object v6, v11

    .line 1440
    .local v6, "copy":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object v11, v6

    move-object v12, v2

    invoke-virtual {v12}, Lcom/sun/javafx/sg/prism/NGNode;->getTransform()Lcom/sun/javafx/geom/transform/BaseTransform;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/sun/javafx/geom/transform/BaseTransform;->deriveWithConcatenation(Lcom/sun/javafx/geom/transform/BaseTransform;)Lcom/sun/javafx/geom/transform/BaseTransform;

    move-result-object v11

    move-object v6, v11

    .line 1441
    new-instance v11, Ljava/util/ArrayList;

    move-object/from16 v17, v11

    move-object/from16 v11, v17

    move-object/from16 v12, v17

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    move-object v7, v11

    .line 1442
    .local v7, "stuff":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v11, 0x0

    move v8, v11

    .local v8, "i":I
    :goto_1
    move v11, v8

    move-object v12, v5

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    if-ge v11, v12, :cond_3

    .line 1443
    move-object v11, v5

    move v12, v8

    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/sun/javafx/sg/prism/NGNode;

    move-object v9, v11

    .line 1444
    .local v9, "root":Lcom/sun/javafx/sg/prism/NGNode;
    move-object v11, v2

    move-object v12, v9

    if-ne v11, v12, :cond_2

    move-object v11, v7

    new-instance v12, Ljava/lang/StringBuilder;

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "*"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move v13, v8

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v11

    .line 1442
    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 1447
    .end local v9    # "root":Lcom/sun/javafx/sg/prism/NGNode;
    :cond_3
    move-object v11, v2

    iget-object v11, v11, Lcom/sun/javafx/sg/prism/NGNode;->dirty:Lcom/sun/javafx/sg/prism/NGNode$DirtyFlag;

    sget-object v12, Lcom/sun/javafx/sg/prism/NGNode$DirtyFlag;->CLEAN:Lcom/sun/javafx/sg/prism/NGNode$DirtyFlag;

    if-eq v11, v12, :cond_4

    .line 1448
    move-object v11, v7

    move-object v12, v2

    iget-object v12, v12, Lcom/sun/javafx/sg/prism/NGNode;->dirty:Lcom/sun/javafx/sg/prism/NGNode$DirtyFlag;

    sget-object v13, Lcom/sun/javafx/sg/prism/NGNode$DirtyFlag;->DIRTY:Lcom/sun/javafx/sg/prism/NGNode$DirtyFlag;

    if-ne v12, v13, :cond_6

    const-string v12, "d"

    :goto_2
    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v11

    .line 1451
    :cond_4
    move-object v11, v2

    iget v11, v11, Lcom/sun/javafx/sg/prism/NGNode;->cullingBits:I

    if-eqz v11, :cond_9

    .line 1452
    const/16 v11, 0x11

    move v8, v11

    .line 1453
    .local v8, "mask":I
    const/4 v11, 0x0

    move v9, v11

    .local v9, "i":I
    :goto_3
    move v11, v9

    const/16 v12, 0xf

    if-ge v11, v12, :cond_9

    .line 1454
    move-object v11, v2

    iget v11, v11, Lcom/sun/javafx/sg/prism/NGNode;->cullingBits:I

    move v12, v8

    and-int/2addr v11, v12

    move v10, v11

    .line 1455
    .local v10, "bits":I
    move v11, v10

    if-eqz v11, :cond_5

    .line 1456
    move-object v11, v7

    move v12, v10

    const/4 v13, 0x1

    if-ne v12, v13, :cond_7

    new-instance v12, Ljava/lang/StringBuilder;

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "i"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move v13, v9

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    :goto_4
    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v11

    .line 1458
    :cond_5
    move v11, v8

    const/4 v12, 0x2

    shl-int/lit8 v11, v11, 0x2

    move v8, v11

    .line 1453
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 1448
    .end local v9    # "i":I
    .end local v10    # "bits":I
    .local v8, "i":I
    :cond_6
    const-string v12, "dt"

    goto :goto_2

    .line 1456
    .local v8, "mask":I
    .restart local v9    # "i":I
    .restart local v10    # "bits":I
    :cond_7
    move v12, v10

    if-nez v12, :cond_8

    new-instance v12, Ljava/lang/StringBuilder;

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "c"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move v13, v9

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    goto :goto_4

    :cond_8
    new-instance v12, Ljava/lang/StringBuilder;

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "ci"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move v13, v9

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    goto :goto_4

    .line 1462
    .end local v8    # "mask":I
    .end local v9    # "i":I
    .end local v10    # "bits":I
    :cond_9
    move-object v11, v2

    iget-object v11, v11, Lcom/sun/javafx/sg/prism/NGNode;->effectFilter:Lcom/sun/javafx/sg/prism/EffectFilter;

    if-eqz v11, :cond_a

    move-object v11, v7

    const-string v12, "ef"

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v11

    .line 1463
    :cond_a
    move-object v11, v2

    iget-object v11, v11, Lcom/sun/javafx/sg/prism/NGNode;->cacheFilter:Lcom/sun/javafx/sg/prism/CacheFilter;

    if-eqz v11, :cond_b

    move-object v11, v7

    const-string v12, "cf"

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v11

    .line 1464
    :cond_b
    move-object v11, v2

    iget-object v11, v11, Lcom/sun/javafx/sg/prism/NGNode;->nodeBlendMode:Lcom/sun/scenario/effect/Blend$Mode;

    if-eqz v11, :cond_c

    move-object v11, v7

    const-string v12, "b"

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v11

    .line 1466
    :cond_c
    move-object v11, v2

    invoke-virtual {v11}, Lcom/sun/javafx/sg/prism/NGNode;->getOpaqueRegion()Lcom/sun/javafx/geom/RectBounds;

    move-result-object v11

    move-object v8, v11

    .line 1467
    .local v8, "opaqueRegion":Lcom/sun/javafx/geom/RectBounds;
    move-object v11, v8

    if-eqz v11, :cond_d

    .line 1468
    new-instance v11, Lcom/sun/javafx/geom/RectBounds;

    move-object/from16 v17, v11

    move-object/from16 v11, v17

    move-object/from16 v12, v17

    invoke-direct {v12}, Lcom/sun/javafx/geom/RectBounds;-><init>()V

    move-object v9, v11

    .line 1469
    .local v9, "or":Lcom/sun/javafx/geom/RectBounds;
    move-object v11, v6

    move-object v12, v8

    move-object v13, v9

    invoke-virtual {v11, v12, v13}, Lcom/sun/javafx/geom/transform/BaseTransform;->transform(Lcom/sun/javafx/geom/BaseBounds;Lcom/sun/javafx/geom/BaseBounds;)Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v11

    .line 1470
    move-object v11, v7

    new-instance v12, Ljava/lang/StringBuilder;

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "or="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object v13, v9

    invoke-virtual {v13}, Lcom/sun/javafx/geom/RectBounds;->getMinX()F

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object v13, v9

    invoke-virtual {v13}, Lcom/sun/javafx/geom/RectBounds;->getMinY()F

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object v13, v9

    invoke-virtual {v13}, Lcom/sun/javafx/geom/RectBounds;->getWidth()F

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object v13, v9

    invoke-virtual {v13}, Lcom/sun/javafx/geom/RectBounds;->getHeight()F

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v11

    .line 1473
    .end local v9    # "or":Lcom/sun/javafx/geom/RectBounds;
    :cond_d
    move-object v11, v7

    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_f

    .line 1474
    move-object v11, v1

    new-instance v12, Ljava/lang/StringBuilder;

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object v13, v4

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object v13, v2

    iget-object v13, v13, Lcom/sun/javafx/sg/prism/NGNode;->name:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\n"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 1484
    :goto_5
    move-object v11, v2

    invoke-virtual {v11}, Lcom/sun/javafx/sg/prism/NGNode;->getClipNode()Lcom/sun/javafx/sg/prism/NGNode;

    move-result-object v11

    if-eqz v11, :cond_e

    .line 1485
    move-object v11, v0

    move-object v12, v1

    move-object v13, v2

    invoke-virtual {v13}, Lcom/sun/javafx/sg/prism/NGNode;->getClipNode()Lcom/sun/javafx/sg/prism/NGNode;

    move-result-object v13

    move-object v14, v6

    new-instance v15, Ljava/lang/StringBuilder;

    move-object/from16 v17, v15

    move-object/from16 v15, v17

    move-object/from16 v16, v17

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v4

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "  cl "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v16, v5

    invoke-direct/range {v11 .. v16}, Lcom/sun/javafx/sg/prism/NGNode;->printDirtyOpts(Ljava/lang/StringBuilder;Lcom/sun/javafx/sg/prism/NGNode;Lcom/sun/javafx/geom/transform/BaseTransform;Ljava/lang/String;Ljava/util/List;)V

    .line 1488
    :cond_e
    move-object v11, v2

    instance-of v11, v11, Lcom/sun/javafx/sg/prism/NGGroup;

    if-eqz v11, :cond_12

    .line 1489
    move-object v11, v2

    check-cast v11, Lcom/sun/javafx/sg/prism/NGGroup;

    move-object v9, v11

    .line 1490
    .local v9, "g":Lcom/sun/javafx/sg/prism/NGGroup;
    const/4 v11, 0x0

    move v10, v11

    .local v10, "i":I
    :goto_6
    move v11, v10

    move-object v12, v9

    invoke-virtual {v12}, Lcom/sun/javafx/sg/prism/NGGroup;->getChildren()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    if-ge v11, v12, :cond_12

    .line 1491
    move-object v11, v0

    move-object v12, v1

    move-object v13, v9

    invoke-virtual {v13}, Lcom/sun/javafx/sg/prism/NGGroup;->getChildren()Ljava/util/List;

    move-result-object v13

    move v14, v10

    invoke-interface {v13, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/sun/javafx/sg/prism/NGNode;

    move-object v14, v6

    new-instance v15, Ljava/lang/StringBuilder;

    move-object/from16 v17, v15

    move-object/from16 v15, v17

    move-object/from16 v16, v17

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v4

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "  "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v16, v5

    invoke-direct/range {v11 .. v16}, Lcom/sun/javafx/sg/prism/NGNode;->printDirtyOpts(Ljava/lang/StringBuilder;Lcom/sun/javafx/sg/prism/NGNode;Lcom/sun/javafx/geom/transform/BaseTransform;Ljava/lang/String;Ljava/util/List;)V

    .line 1490
    add-int/lit8 v10, v10, 0x1

    goto :goto_6

    .line 1476
    .end local v9    # "g":Lcom/sun/javafx/sg/prism/NGGroup;
    .end local v10    # "i":I
    :cond_f
    const-string v11, " ["

    move-object v9, v11

    .line 1477
    .local v9, "postfix":Ljava/lang/String;
    const/4 v11, 0x0

    move v10, v11

    .restart local v10    # "i":I
    :goto_7
    move v11, v10

    move-object v12, v7

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    if-ge v11, v12, :cond_11

    .line 1478
    new-instance v11, Ljava/lang/StringBuilder;

    move-object/from16 v17, v11

    move-object/from16 v11, v17

    move-object/from16 v12, v17

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object v12, v9

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object v12, v7

    move v13, v10

    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object v9, v11

    .line 1479
    move v11, v10

    move-object v12, v7

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    const/4 v13, 0x1

    add-int/lit8 v12, v12, -0x1

    if-ge v11, v12, :cond_10

    new-instance v11, Ljava/lang/StringBuilder;

    move-object/from16 v17, v11

    move-object/from16 v11, v17

    move-object/from16 v12, v17

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object v12, v9

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object v9, v11

    .line 1477
    :cond_10
    add-int/lit8 v10, v10, 0x1

    goto :goto_7

    .line 1481
    :cond_11
    move-object v11, v1

    new-instance v12, Ljava/lang/StringBuilder;

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object v13, v4

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object v13, v2

    iget-object v13, v13, Lcom/sun/javafx/sg/prism/NGNode;->name:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object v13, v9

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "]\n"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    goto/16 :goto_5

    .line 1494
    .end local v9    # "postfix":Ljava/lang/String;
    .end local v10    # "i":I
    :cond_12
    goto/16 :goto_0
.end method

.method private renderCached(Lcom/sun/prism/Graphics;)V
    .locals 4

    .prologue
    .line 2359
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGNode;
    move-object v1, p1

    .local v1, "g":Lcom/sun/prism/Graphics;
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/sg/prism/NGNode;->isContentBounds2D()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v1

    invoke-interface {v2}, Lcom/sun/prism/Graphics;->getTransformNoClone()Lcom/sun/javafx/geom/transform/BaseTransform;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sun/javafx/geom/transform/BaseTransform;->is2D()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v1

    instance-of v2, v2, Lcom/sun/prism/PrinterGraphics;

    if-nez v2, :cond_0

    .line 2361
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/sg/prism/NGNode;->getCacheFilter()Lcom/sun/javafx/sg/prism/CacheFilter;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/javafx/sg/prism/CacheFilter;->render(Lcom/sun/prism/Graphics;)V

    .line 2365
    :goto_0
    return-void

    .line 2363
    :cond_0
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/javafx/sg/prism/NGNode;->renderContent(Lcom/sun/prism/Graphics;)V

    goto :goto_0
.end method

.method private renderNodeBlendMode(Lcom/sun/prism/Graphics;)V
    .locals 21

    .prologue
    .line 2107
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGNode;
    move-object/from16 v1, p1

    .local v1, "g":Lcom/sun/prism/Graphics;
    move-object v12, v1

    invoke-interface {v12}, Lcom/sun/prism/Graphics;->getTransformNoClone()Lcom/sun/javafx/geom/transform/BaseTransform;

    move-result-object v12

    move-object v2, v12

    .line 2109
    .local v2, "curXform":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object v12, v0

    new-instance v13, Lcom/sun/javafx/geom/RectBounds;

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    invoke-direct {v14}, Lcom/sun/javafx/geom/RectBounds;-><init>()V

    move-object v14, v2

    invoke-virtual {v12, v13, v14}, Lcom/sun/javafx/sg/prism/NGNode;->getClippedBounds(Lcom/sun/javafx/geom/BaseBounds;Lcom/sun/javafx/geom/transform/BaseTransform;)Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v12

    move-object v3, v12

    .line 2110
    .local v3, "clipBounds":Lcom/sun/javafx/geom/BaseBounds;
    move-object v12, v3

    invoke-virtual {v12}, Lcom/sun/javafx/geom/BaseBounds;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_0

    .line 2111
    move-object v12, v0

    invoke-virtual {v12}, Lcom/sun/javafx/sg/prism/NGNode;->clearDirtyTree()V

    .line 2112
    .line 2172
    :goto_0
    return-void

    .line 2115
    :cond_0
    move-object v12, v0

    move-object v13, v1

    invoke-virtual {v12, v13}, Lcom/sun/javafx/sg/prism/NGNode;->isReadbackSupported(Lcom/sun/prism/Graphics;)Z

    move-result v12

    if-nez v12, :cond_3

    .line 2116
    move-object v12, v0

    invoke-virtual {v12}, Lcom/sun/javafx/sg/prism/NGNode;->getOpacity()F

    move-result v12

    const/high16 v13, 0x3f800000    # 1.0f

    cmpg-float v12, v12, v13

    if-gez v12, :cond_1

    .line 2117
    move-object v12, v0

    move-object v13, v1

    invoke-direct {v12, v13}, Lcom/sun/javafx/sg/prism/NGNode;->renderOpacity(Lcom/sun/prism/Graphics;)V

    .line 2123
    :goto_1
    goto :goto_0

    .line 2118
    :cond_1
    move-object v12, v0

    invoke-virtual {v12}, Lcom/sun/javafx/sg/prism/NGNode;->getClipNode()Lcom/sun/javafx/sg/prism/NGNode;

    move-result-object v12

    if-eqz v12, :cond_2

    .line 2119
    move-object v12, v0

    move-object v13, v1

    invoke-virtual {v12, v13}, Lcom/sun/javafx/sg/prism/NGNode;->renderClip(Lcom/sun/prism/Graphics;)V

    goto :goto_1

    .line 2121
    :cond_2
    move-object v12, v0

    move-object v13, v1

    invoke-virtual {v12, v13}, Lcom/sun/javafx/sg/prism/NGNode;->renderContent(Lcom/sun/prism/Graphics;)V

    goto :goto_1

    .line 2128
    :cond_3
    new-instance v12, Lcom/sun/javafx/geom/Rectangle;

    move-object/from16 v20, v12

    move-object/from16 v12, v20

    move-object/from16 v13, v20

    move-object v14, v3

    invoke-direct {v13, v14}, Lcom/sun/javafx/geom/Rectangle;-><init>(Lcom/sun/javafx/geom/BaseBounds;)V

    move-object v4, v12

    .line 2129
    .local v4, "clipRect":Lcom/sun/javafx/geom/Rectangle;
    move-object v12, v4

    move-object v13, v1

    invoke-static {v13}, Lcom/sun/scenario/effect/impl/prism/PrEffectHelper;->getGraphicsClipNoClone(Lcom/sun/prism/Graphics;)Lcom/sun/javafx/geom/Rectangle;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/sun/javafx/geom/Rectangle;->intersectWith(Lcom/sun/javafx/geom/Rectangle;)V

    .line 2132
    move-object v12, v1

    invoke-static {v12}, Lcom/sun/javafx/sg/prism/NGNode;->getFilterContext(Lcom/sun/prism/Graphics;)Lcom/sun/scenario/effect/FilterContext;

    move-result-object v12

    move-object v5, v12

    .line 2133
    .local v5, "fctx":Lcom/sun/scenario/effect/FilterContext;
    move-object v12, v5

    move-object v13, v4

    iget v13, v13, Lcom/sun/javafx/geom/Rectangle;->width:I

    move-object v14, v4

    iget v14, v14, Lcom/sun/javafx/geom/Rectangle;->height:I

    .line 2134
    invoke-static {v12, v13, v14}, Lcom/sun/scenario/effect/Effect;->getCompatibleImage(Lcom/sun/scenario/effect/FilterContext;II)Lcom/sun/scenario/effect/Filterable;

    move-result-object v12

    check-cast v12, Lcom/sun/scenario/effect/impl/prism/PrDrawable;

    move-object v6, v12

    .line 2135
    .local v6, "contentImg":Lcom/sun/scenario/effect/impl/prism/PrDrawable;
    move-object v12, v6

    if-nez v12, :cond_4

    .line 2136
    move-object v12, v0

    invoke-virtual {v12}, Lcom/sun/javafx/sg/prism/NGNode;->clearDirtyTree()V

    .line 2137
    goto :goto_0

    .line 2139
    :cond_4
    move-object v12, v6

    invoke-virtual {v12}, Lcom/sun/scenario/effect/impl/prism/PrDrawable;->createGraphics()Lcom/sun/prism/Graphics;

    move-result-object v12

    move-object v7, v12

    .line 2140
    .local v7, "gContentImg":Lcom/sun/prism/Graphics;
    move-object v12, v7

    move-object v13, v1

    invoke-interface {v13}, Lcom/sun/prism/Graphics;->hasPreCullingBits()Z

    move-result v13

    invoke-interface {v12, v13}, Lcom/sun/prism/Graphics;->setHasPreCullingBits(Z)V

    .line 2141
    move-object v12, v7

    move-object v13, v1

    invoke-interface {v13}, Lcom/sun/prism/Graphics;->getClipRectIndex()I

    move-result v13

    invoke-interface {v12, v13}, Lcom/sun/prism/Graphics;->setClipRectIndex(I)V

    .line 2142
    move-object v12, v7

    move-object v13, v4

    iget v13, v13, Lcom/sun/javafx/geom/Rectangle;->x:I

    neg-int v13, v13

    int-to-float v13, v13

    move-object v14, v4

    iget v14, v14, Lcom/sun/javafx/geom/Rectangle;->y:I

    neg-int v14, v14

    int-to-float v14, v14

    invoke-interface {v12, v13, v14}, Lcom/sun/prism/Graphics;->translate(FF)V

    .line 2143
    move-object v12, v7

    move-object v13, v2

    invoke-interface {v12, v13}, Lcom/sun/prism/Graphics;->transform(Lcom/sun/javafx/geom/transform/BaseTransform;)V

    .line 2144
    move-object v12, v0

    invoke-virtual {v12}, Lcom/sun/javafx/sg/prism/NGNode;->getOpacity()F

    move-result v12

    const/high16 v13, 0x3f800000    # 1.0f

    cmpg-float v12, v12, v13

    if-gez v12, :cond_5

    .line 2145
    move-object v12, v0

    move-object v13, v7

    invoke-direct {v12, v13}, Lcom/sun/javafx/sg/prism/NGNode;->renderOpacity(Lcom/sun/prism/Graphics;)V

    .line 2158
    :goto_2
    move-object v12, v1

    check-cast v12, Lcom/sun/prism/ReadbackGraphics;

    move-object v13, v4

    invoke-interface {v12, v13}, Lcom/sun/prism/ReadbackGraphics;->readBack(Lcom/sun/javafx/geom/Rectangle;)Lcom/sun/prism/RTTexture;

    move-result-object v12

    move-object v8, v12

    .line 2159
    .local v8, "bgRTT":Lcom/sun/prism/RTTexture;
    move-object v12, v5

    move-object v13, v8

    invoke-static {v12, v13}, Lcom/sun/scenario/effect/impl/prism/PrDrawable;->create(Lcom/sun/scenario/effect/FilterContext;Lcom/sun/prism/RTTexture;)Lcom/sun/scenario/effect/impl/prism/PrDrawable;

    move-result-object v12

    move-object v9, v12

    .line 2160
    .local v9, "bgPrD":Lcom/sun/scenario/effect/impl/prism/PrDrawable;
    new-instance v12, Lcom/sun/scenario/effect/Blend;

    move-object/from16 v20, v12

    move-object/from16 v12, v20

    move-object/from16 v13, v20

    move-object v14, v0

    invoke-virtual {v14}, Lcom/sun/javafx/sg/prism/NGNode;->getNodeBlendMode()Lcom/sun/scenario/effect/Blend$Mode;

    move-result-object v14

    new-instance v15, Lcom/sun/javafx/sg/prism/NGNode$PassThrough;

    move-object/from16 v20, v15

    move-object/from16 v15, v20

    move-object/from16 v16, v20

    move-object/from16 v17, v9

    move-object/from16 v18, v4

    invoke-direct/range {v16 .. v18}, Lcom/sun/javafx/sg/prism/NGNode$PassThrough;-><init>(Lcom/sun/scenario/effect/impl/prism/PrDrawable;Lcom/sun/javafx/geom/Rectangle;)V

    new-instance v16, Lcom/sun/javafx/sg/prism/NGNode$PassThrough;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    move-object/from16 v18, v6

    move-object/from16 v19, v4

    invoke-direct/range {v17 .. v19}, Lcom/sun/javafx/sg/prism/NGNode$PassThrough;-><init>(Lcom/sun/scenario/effect/impl/prism/PrDrawable;Lcom/sun/javafx/geom/Rectangle;)V

    invoke-direct/range {v13 .. v16}, Lcom/sun/scenario/effect/Blend;-><init>(Lcom/sun/scenario/effect/Blend$Mode;Lcom/sun/scenario/effect/Effect;Lcom/sun/scenario/effect/Effect;)V

    move-object v10, v12

    .line 2163
    .local v10, "blend":Lcom/sun/scenario/effect/Blend;
    move-object v12, v1

    invoke-interface {v12}, Lcom/sun/prism/Graphics;->getCompositeMode()Lcom/sun/prism/CompositeMode;

    move-result-object v12

    move-object v11, v12

    .line 2164
    .local v11, "oldmode":Lcom/sun/prism/CompositeMode;
    move-object v12, v1

    const/4 v13, 0x0

    invoke-interface {v12, v13}, Lcom/sun/prism/Graphics;->setTransform(Lcom/sun/javafx/geom/transform/BaseTransform;)V

    .line 2165
    move-object v12, v1

    sget-object v13, Lcom/sun/prism/CompositeMode;->SRC:Lcom/sun/prism/CompositeMode;

    invoke-interface {v12, v13}, Lcom/sun/prism/Graphics;->setCompositeMode(Lcom/sun/prism/CompositeMode;)V

    .line 2166
    move-object v12, v10

    move-object v13, v1

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-static/range {v12 .. v16}, Lcom/sun/scenario/effect/impl/prism/PrEffectHelper;->render(Lcom/sun/scenario/effect/Effect;Lcom/sun/prism/Graphics;FFLcom/sun/scenario/effect/Effect;)V

    .line 2167
    move-object v12, v1

    move-object v13, v11

    invoke-interface {v12, v13}, Lcom/sun/prism/Graphics;->setCompositeMode(Lcom/sun/prism/CompositeMode;)V

    .line 2170
    move-object v12, v5

    move-object v13, v6

    invoke-static {v12, v13}, Lcom/sun/scenario/effect/Effect;->releaseCompatibleImage(Lcom/sun/scenario/effect/FilterContext;Lcom/sun/scenario/effect/Filterable;)V

    .line 2171
    move-object v12, v1

    check-cast v12, Lcom/sun/prism/ReadbackGraphics;

    move-object v13, v8

    invoke-interface {v12, v13}, Lcom/sun/prism/ReadbackGraphics;->releaseReadBackBuffer(Lcom/sun/prism/RTTexture;)V

    .line 2172
    goto/16 :goto_0

    .line 2146
    .end local v8    # "bgRTT":Lcom/sun/prism/RTTexture;
    .end local v9    # "bgPrD":Lcom/sun/scenario/effect/impl/prism/PrDrawable;
    .end local v10    # "blend":Lcom/sun/scenario/effect/Blend;
    .end local v11    # "oldmode":Lcom/sun/prism/CompositeMode;
    :cond_5
    move-object v12, v0

    invoke-virtual {v12}, Lcom/sun/javafx/sg/prism/NGNode;->getCacheFilter()Lcom/sun/javafx/sg/prism/CacheFilter;

    move-result-object v12

    if-eqz v12, :cond_6

    .line 2147
    move-object v12, v0

    move-object v13, v7

    invoke-direct {v12, v13}, Lcom/sun/javafx/sg/prism/NGNode;->renderCached(Lcom/sun/prism/Graphics;)V

    goto :goto_2

    .line 2148
    :cond_6
    move-object v12, v0

    invoke-virtual {v12}, Lcom/sun/javafx/sg/prism/NGNode;->getClipNode()Lcom/sun/javafx/sg/prism/NGNode;

    move-result-object v12

    if-eqz v12, :cond_7

    .line 2149
    move-object v12, v0

    move-object v13, v1

    invoke-virtual {v12, v13}, Lcom/sun/javafx/sg/prism/NGNode;->renderClip(Lcom/sun/prism/Graphics;)V

    goto/16 :goto_2

    .line 2150
    :cond_7
    move-object v12, v0

    invoke-virtual {v12}, Lcom/sun/javafx/sg/prism/NGNode;->getEffectFilter()Lcom/sun/javafx/sg/prism/EffectFilter;

    move-result-object v12

    if-eqz v12, :cond_8

    .line 2151
    move-object v12, v0

    move-object v13, v7

    invoke-virtual {v12, v13}, Lcom/sun/javafx/sg/prism/NGNode;->renderEffect(Lcom/sun/prism/Graphics;)V

    goto/16 :goto_2

    .line 2153
    :cond_8
    move-object v12, v0

    move-object v13, v7

    invoke-virtual {v12, v13}, Lcom/sun/javafx/sg/prism/NGNode;->renderContent(Lcom/sun/prism/Graphics;)V

    goto/16 :goto_2
.end method

.method private renderOpacity(Lcom/sun/prism/Graphics;)V
    .locals 16

    .prologue
    .line 2302
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGNode;
    move-object/from16 v1, p1

    .local v1, "g":Lcom/sun/prism/Graphics;
    move-object v9, v0

    invoke-virtual {v9}, Lcom/sun/javafx/sg/prism/NGNode;->getEffectFilter()Lcom/sun/javafx/sg/prism/EffectFilter;

    move-result-object v9

    if-nez v9, :cond_0

    move-object v9, v0

    .line 2303
    invoke-virtual {v9}, Lcom/sun/javafx/sg/prism/NGNode;->getCacheFilter()Lcom/sun/javafx/sg/prism/CacheFilter;

    move-result-object v9

    if-nez v9, :cond_0

    move-object v9, v0

    .line 2304
    invoke-virtual {v9}, Lcom/sun/javafx/sg/prism/NGNode;->getClipNode()Lcom/sun/javafx/sg/prism/NGNode;

    move-result-object v9

    if-nez v9, :cond_0

    move-object v9, v0

    .line 2305
    invoke-virtual {v9}, Lcom/sun/javafx/sg/prism/NGNode;->hasOverlappingContents()Z

    move-result v9

    if-nez v9, :cond_4

    .line 2311
    :cond_0
    move-object v9, v1

    invoke-interface {v9}, Lcom/sun/prism/Graphics;->getExtraAlpha()F

    move-result v9

    move v2, v9

    .line 2312
    .local v2, "ea":F
    move-object v9, v1

    move v10, v2

    move-object v11, v0

    invoke-virtual {v11}, Lcom/sun/javafx/sg/prism/NGNode;->getOpacity()F

    move-result v11

    mul-float/2addr v10, v11

    invoke-interface {v9, v10}, Lcom/sun/prism/Graphics;->setExtraAlpha(F)V

    .line 2313
    move-object v9, v0

    invoke-virtual {v9}, Lcom/sun/javafx/sg/prism/NGNode;->getCacheFilter()Lcom/sun/javafx/sg/prism/CacheFilter;

    move-result-object v9

    if-eqz v9, :cond_1

    .line 2314
    move-object v9, v0

    move-object v10, v1

    invoke-direct {v9, v10}, Lcom/sun/javafx/sg/prism/NGNode;->renderCached(Lcom/sun/prism/Graphics;)V

    .line 2322
    :goto_0
    move-object v9, v1

    move v10, v2

    invoke-interface {v9, v10}, Lcom/sun/prism/Graphics;->setExtraAlpha(F)V

    .line 2323
    .line 2351
    .end local v2    # "ea":F
    :goto_1
    return-void

    .line 2315
    .restart local v2    # "ea":F
    :cond_1
    move-object v9, v0

    invoke-virtual {v9}, Lcom/sun/javafx/sg/prism/NGNode;->getClipNode()Lcom/sun/javafx/sg/prism/NGNode;

    move-result-object v9

    if-eqz v9, :cond_2

    .line 2316
    move-object v9, v0

    move-object v10, v1

    invoke-virtual {v9, v10}, Lcom/sun/javafx/sg/prism/NGNode;->renderClip(Lcom/sun/prism/Graphics;)V

    goto :goto_0

    .line 2317
    :cond_2
    move-object v9, v0

    invoke-virtual {v9}, Lcom/sun/javafx/sg/prism/NGNode;->getEffectFilter()Lcom/sun/javafx/sg/prism/EffectFilter;

    move-result-object v9

    if-eqz v9, :cond_3

    .line 2318
    move-object v9, v0

    move-object v10, v1

    invoke-virtual {v9, v10}, Lcom/sun/javafx/sg/prism/NGNode;->renderEffect(Lcom/sun/prism/Graphics;)V

    goto :goto_0

    .line 2320
    :cond_3
    move-object v9, v0

    move-object v10, v1

    invoke-virtual {v9, v10}, Lcom/sun/javafx/sg/prism/NGNode;->renderContent(Lcom/sun/prism/Graphics;)V

    goto :goto_0

    .line 2326
    .end local v2    # "ea":F
    :cond_4
    move-object v9, v1

    invoke-static {v9}, Lcom/sun/javafx/sg/prism/NGNode;->getFilterContext(Lcom/sun/prism/Graphics;)Lcom/sun/scenario/effect/FilterContext;

    move-result-object v9

    move-object v2, v9

    .line 2327
    .local v2, "fctx":Lcom/sun/scenario/effect/FilterContext;
    move-object v9, v1

    invoke-interface {v9}, Lcom/sun/prism/Graphics;->getTransformNoClone()Lcom/sun/javafx/geom/transform/BaseTransform;

    move-result-object v9

    move-object v3, v9

    .line 2328
    .local v3, "curXform":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object v9, v0

    new-instance v10, Lcom/sun/javafx/geom/RectBounds;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    invoke-direct {v11}, Lcom/sun/javafx/geom/RectBounds;-><init>()V

    move-object v11, v3

    invoke-virtual {v9, v10, v11}, Lcom/sun/javafx/sg/prism/NGNode;->getContentBounds(Lcom/sun/javafx/geom/BaseBounds;Lcom/sun/javafx/geom/transform/BaseTransform;)Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v9

    move-object v4, v9

    .line 2329
    .local v4, "bounds":Lcom/sun/javafx/geom/BaseBounds;
    new-instance v9, Lcom/sun/javafx/geom/Rectangle;

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    move-object v11, v4

    invoke-direct {v10, v11}, Lcom/sun/javafx/geom/Rectangle;-><init>(Lcom/sun/javafx/geom/BaseBounds;)V

    move-object v5, v9

    .line 2330
    .local v5, "r":Lcom/sun/javafx/geom/Rectangle;
    move-object v9, v5

    move-object v10, v1

    invoke-static {v10}, Lcom/sun/scenario/effect/impl/prism/PrEffectHelper;->getGraphicsClipNoClone(Lcom/sun/prism/Graphics;)Lcom/sun/javafx/geom/Rectangle;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/sun/javafx/geom/Rectangle;->intersectWith(Lcom/sun/javafx/geom/Rectangle;)V

    .line 2331
    move-object v9, v2

    move-object v10, v5

    iget v10, v10, Lcom/sun/javafx/geom/Rectangle;->width:I

    move-object v11, v5

    iget v11, v11, Lcom/sun/javafx/geom/Rectangle;->height:I

    .line 2332
    invoke-static {v9, v10, v11}, Lcom/sun/scenario/effect/Effect;->getCompatibleImage(Lcom/sun/scenario/effect/FilterContext;II)Lcom/sun/scenario/effect/Filterable;

    move-result-object v9

    check-cast v9, Lcom/sun/scenario/effect/impl/prism/PrDrawable;

    move-object v6, v9

    .line 2333
    .local v6, "img":Lcom/sun/scenario/effect/impl/prism/PrDrawable;
    move-object v9, v6

    if-nez v9, :cond_5

    .line 2334
    goto :goto_1

    .line 2336
    :cond_5
    move-object v9, v6

    invoke-virtual {v9}, Lcom/sun/scenario/effect/impl/prism/PrDrawable;->createGraphics()Lcom/sun/prism/Graphics;

    move-result-object v9

    move-object v7, v9

    .line 2337
    .local v7, "gImg":Lcom/sun/prism/Graphics;
    move-object v9, v7

    move-object v10, v1

    invoke-interface {v10}, Lcom/sun/prism/Graphics;->hasPreCullingBits()Z

    move-result v10

    invoke-interface {v9, v10}, Lcom/sun/prism/Graphics;->setHasPreCullingBits(Z)V

    .line 2338
    move-object v9, v7

    move-object v10, v1

    invoke-interface {v10}, Lcom/sun/prism/Graphics;->getClipRectIndex()I

    move-result v10

    invoke-interface {v9, v10}, Lcom/sun/prism/Graphics;->setClipRectIndex(I)V

    .line 2339
    move-object v9, v7

    move-object v10, v5

    iget v10, v10, Lcom/sun/javafx/geom/Rectangle;->x:I

    neg-int v10, v10

    int-to-float v10, v10

    move-object v11, v5

    iget v11, v11, Lcom/sun/javafx/geom/Rectangle;->y:I

    neg-int v11, v11

    int-to-float v11, v11

    invoke-interface {v9, v10, v11}, Lcom/sun/prism/Graphics;->translate(FF)V

    .line 2340
    move-object v9, v7

    move-object v10, v3

    invoke-interface {v9, v10}, Lcom/sun/prism/Graphics;->transform(Lcom/sun/javafx/geom/transform/BaseTransform;)V

    .line 2341
    move-object v9, v0

    move-object v10, v7

    invoke-virtual {v9, v10}, Lcom/sun/javafx/sg/prism/NGNode;->renderContent(Lcom/sun/prism/Graphics;)V

    .line 2344
    move-object v9, v1

    const/4 v10, 0x0

    invoke-interface {v9, v10}, Lcom/sun/prism/Graphics;->setTransform(Lcom/sun/javafx/geom/transform/BaseTransform;)V

    .line 2345
    move-object v9, v1

    invoke-interface {v9}, Lcom/sun/prism/Graphics;->getExtraAlpha()F

    move-result v9

    move v8, v9

    .line 2346
    .local v8, "ea":F
    move-object v9, v1

    move-object v10, v0

    invoke-virtual {v10}, Lcom/sun/javafx/sg/prism/NGNode;->getOpacity()F

    move-result v10

    move v11, v8

    mul-float/2addr v10, v11

    invoke-interface {v9, v10}, Lcom/sun/prism/Graphics;->setExtraAlpha(F)V

    .line 2347
    move-object v9, v1

    move-object v10, v6

    invoke-virtual {v10}, Lcom/sun/scenario/effect/impl/prism/PrDrawable;->getTextureObject()Lcom/sun/prism/Texture;

    move-result-object v10

    move-object v11, v5

    iget v11, v11, Lcom/sun/javafx/geom/Rectangle;->x:I

    int-to-float v11, v11

    move-object v12, v5

    iget v12, v12, Lcom/sun/javafx/geom/Rectangle;->y:I

    int-to-float v12, v12

    move-object v13, v5

    iget v13, v13, Lcom/sun/javafx/geom/Rectangle;->width:I

    int-to-float v13, v13

    move-object v14, v5

    iget v14, v14, Lcom/sun/javafx/geom/Rectangle;->height:I

    int-to-float v14, v14

    invoke-interface/range {v9 .. v14}, Lcom/sun/prism/Graphics;->drawTexture(Lcom/sun/prism/Texture;FFFF)V

    .line 2348
    move-object v9, v1

    move v10, v8

    invoke-interface {v9, v10}, Lcom/sun/prism/Graphics;->setExtraAlpha(F)V

    .line 2350
    move-object v9, v2

    move-object v10, v6

    invoke-static {v9, v10}, Lcom/sun/scenario/effect/Effect;->releaseCompatibleImage(Lcom/sun/scenario/effect/FilterContext;Lcom/sun/scenario/effect/Filterable;)V

    .line 2351
    goto/16 :goto_1
.end method

.method private renderRectClip(Lcom/sun/prism/Graphics;Lcom/sun/javafx/sg/prism/NGRectangle;)V
    .locals 11

    .prologue
    .line 2175
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGNode;
    move-object v1, p1

    .local v1, "g":Lcom/sun/prism/Graphics;
    move-object v2, p2

    .local v2, "clipNode":Lcom/sun/javafx/sg/prism/NGRectangle;
    move-object v6, v2

    invoke-virtual {v6}, Lcom/sun/javafx/sg/prism/NGRectangle;->getShape()Lcom/sun/javafx/geom/Shape;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sun/javafx/geom/Shape;->getBounds()Lcom/sun/javafx/geom/RectBounds;

    move-result-object v6

    move-object v3, v6

    .line 2176
    .local v3, "newClip":Lcom/sun/javafx/geom/BaseBounds;
    move-object v6, v2

    invoke-virtual {v6}, Lcom/sun/javafx/sg/prism/NGRectangle;->getTransform()Lcom/sun/javafx/geom/transform/BaseTransform;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sun/javafx/geom/transform/BaseTransform;->isIdentity()Z

    move-result v6

    if-nez v6, :cond_0

    .line 2177
    move-object v6, v2

    invoke-virtual {v6}, Lcom/sun/javafx/sg/prism/NGRectangle;->getTransform()Lcom/sun/javafx/geom/transform/BaseTransform;

    move-result-object v6

    move-object v7, v3

    move-object v8, v3

    invoke-virtual {v6, v7, v8}, Lcom/sun/javafx/geom/transform/BaseTransform;->transform(Lcom/sun/javafx/geom/BaseBounds;Lcom/sun/javafx/geom/BaseBounds;)Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v6

    move-object v3, v6

    .line 2179
    :cond_0
    move-object v6, v1

    invoke-interface {v6}, Lcom/sun/prism/Graphics;->getTransformNoClone()Lcom/sun/javafx/geom/transform/BaseTransform;

    move-result-object v6

    move-object v4, v6

    .line 2180
    .local v4, "curXform":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object v6, v1

    invoke-interface {v6}, Lcom/sun/prism/Graphics;->getClipRectNoClone()Lcom/sun/javafx/geom/Rectangle;

    move-result-object v6

    move-object v5, v6

    .line 2181
    .local v5, "curClip":Lcom/sun/javafx/geom/Rectangle;
    move-object v6, v4

    move-object v7, v3

    move-object v8, v3

    invoke-virtual {v6, v7, v8}, Lcom/sun/javafx/geom/transform/BaseTransform;->transform(Lcom/sun/javafx/geom/BaseBounds;Lcom/sun/javafx/geom/BaseBounds;)Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v6

    move-object v3, v6

    .line 2182
    move-object v6, v3

    move-object v7, v1

    invoke-static {v7}, Lcom/sun/scenario/effect/impl/prism/PrEffectHelper;->getGraphicsClipNoClone(Lcom/sun/prism/Graphics;)Lcom/sun/javafx/geom/Rectangle;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/sun/javafx/geom/BaseBounds;->intersectWith(Lcom/sun/javafx/geom/Rectangle;)V

    .line 2183
    move-object v6, v3

    invoke-virtual {v6}, Lcom/sun/javafx/geom/BaseBounds;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    move-object v6, v3

    .line 2184
    invoke-virtual {v6}, Lcom/sun/javafx/geom/BaseBounds;->getWidth()F

    move-result v6

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-eqz v6, :cond_1

    move-object v6, v3

    .line 2185
    invoke-virtual {v6}, Lcom/sun/javafx/geom/BaseBounds;->getHeight()F

    move-result v6

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-nez v6, :cond_2

    .line 2186
    :cond_1
    move-object v6, v0

    invoke-virtual {v6}, Lcom/sun/javafx/sg/prism/NGNode;->clearDirtyTree()V

    .line 2187
    .line 2195
    :goto_0
    return-void

    .line 2190
    :cond_2
    move-object v6, v1

    new-instance v7, Lcom/sun/javafx/geom/Rectangle;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    move-object v9, v3

    invoke-direct {v8, v9}, Lcom/sun/javafx/geom/Rectangle;-><init>(Lcom/sun/javafx/geom/BaseBounds;)V

    invoke-interface {v6, v7}, Lcom/sun/prism/Graphics;->setClipRect(Lcom/sun/javafx/geom/Rectangle;)V

    .line 2191
    move-object v6, v0

    move-object v7, v1

    invoke-virtual {v6, v7}, Lcom/sun/javafx/sg/prism/NGNode;->renderForClip(Lcom/sun/prism/Graphics;)V

    .line 2192
    move-object v6, v1

    move-object v7, v5

    invoke-interface {v6, v7}, Lcom/sun/prism/Graphics;->setClipRect(Lcom/sun/javafx/geom/Rectangle;)V

    .line 2193
    move-object v6, v2

    invoke-virtual {v6}, Lcom/sun/javafx/sg/prism/NGRectangle;->clearDirty()V

    .line 2195
    goto :goto_0
.end method

.method private setParent(Lcom/sun/javafx/sg/prism/NGNode;Z)V
    .locals 5

    .prologue
    .line 619
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGNode;
    move-object v1, p1

    .local v1, "parent":Lcom/sun/javafx/sg/prism/NGNode;
    move v2, p2

    .local v2, "isClip":Z
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/sun/javafx/sg/prism/NGNode;->parent:Lcom/sun/javafx/sg/prism/NGNode;

    .line 620
    move-object v3, v0

    move v4, v2

    iput-boolean v4, v3, Lcom/sun/javafx/sg/prism/NGNode;->isClip:Z

    .line 621
    return-void
.end method


# virtual methods
.method public accumulateDirtyRegions(Lcom/sun/javafx/geom/RectBounds;Lcom/sun/javafx/geom/RectBounds;Lcom/sun/javafx/geom/DirtyRegionPool;Lcom/sun/javafx/geom/DirtyRegionContainer;Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/javafx/geom/transform/GeneralTransform3D;)I
    .locals 15

    .prologue
    .line 998
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGNode;
    move-object/from16 v1, p1

    .local v1, "clip":Lcom/sun/javafx/geom/RectBounds;
    move-object/from16 v2, p2

    .local v2, "dirtyRegionTemp":Lcom/sun/javafx/geom/RectBounds;
    move-object/from16 v3, p3

    .local v3, "regionPool":Lcom/sun/javafx/geom/DirtyRegionPool;
    move-object/from16 v4, p4

    .local v4, "dirtyRegionContainer":Lcom/sun/javafx/geom/DirtyRegionContainer;
    move-object/from16 v5, p5

    .local v5, "tx":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object/from16 v6, p6

    .local v6, "pvTx":Lcom/sun/javafx/geom/transform/GeneralTransform3D;
    move-object v7, v1

    if-eqz v7, :cond_0

    move-object v7, v2

    if-eqz v7, :cond_0

    move-object v7, v3

    if-eqz v7, :cond_0

    move-object v7, v4

    if-eqz v7, :cond_0

    move-object v7, v5

    if-eqz v7, :cond_0

    move-object v7, v6

    if-nez v7, :cond_1

    .line 999
    :cond_0
    new-instance v7, Ljava/lang/NullPointerException;

    move-object v14, v7

    move-object v7, v14

    move-object v8, v14

    invoke-direct {v8}, Ljava/lang/NullPointerException;-><init>()V

    throw v7

    .line 1013
    :cond_1
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/sg/prism/NGNode;->dirty:Lcom/sun/javafx/sg/prism/NGNode$DirtyFlag;

    sget-object v8, Lcom/sun/javafx/sg/prism/NGNode$DirtyFlag;->CLEAN:Lcom/sun/javafx/sg/prism/NGNode$DirtyFlag;

    if-ne v7, v8, :cond_2

    move-object v7, v0

    iget-boolean v7, v7, Lcom/sun/javafx/sg/prism/NGNode;->childDirty:Z

    if-nez v7, :cond_2

    .line 1014
    const/4 v7, 0x1

    move v0, v7

    .line 1025
    .end local v0    # "this":Lcom/sun/javafx/sg/prism/NGNode;
    :goto_0
    return v0

    .line 1021
    .restart local v0    # "this":Lcom/sun/javafx/sg/prism/NGNode;
    :cond_2
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/sg/prism/NGNode;->dirty:Lcom/sun/javafx/sg/prism/NGNode$DirtyFlag;

    sget-object v8, Lcom/sun/javafx/sg/prism/NGNode$DirtyFlag;->CLEAN:Lcom/sun/javafx/sg/prism/NGNode$DirtyFlag;

    if-eq v7, v8, :cond_3

    .line 1022
    move-object v7, v0

    move-object v8, v1

    move-object v9, v2

    move-object v10, v4

    move-object v11, v5

    move-object v12, v6

    invoke-virtual/range {v7 .. v12}, Lcom/sun/javafx/sg/prism/NGNode;->accumulateNodeDirtyRegion(Lcom/sun/javafx/geom/RectBounds;Lcom/sun/javafx/geom/RectBounds;Lcom/sun/javafx/geom/DirtyRegionContainer;Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/javafx/geom/transform/GeneralTransform3D;)I

    move-result v7

    move v0, v7

    goto :goto_0

    .line 1024
    :cond_3
    sget-boolean v7, Lcom/sun/javafx/sg/prism/NGNode;->$assertionsDisabled:Z

    if-nez v7, :cond_4

    move-object v7, v0

    iget-boolean v7, v7, Lcom/sun/javafx/sg/prism/NGNode;->childDirty:Z

    if-nez v7, :cond_4

    new-instance v7, Ljava/lang/AssertionError;

    move-object v14, v7

    move-object v7, v14

    move-object v8, v14

    invoke-direct {v8}, Ljava/lang/AssertionError;-><init>()V

    throw v7

    .line 1025
    :cond_4
    move-object v7, v0

    move-object v8, v1

    move-object v9, v2

    move-object v10, v3

    move-object v11, v4

    move-object v12, v5

    move-object v13, v6

    invoke-virtual/range {v7 .. v13}, Lcom/sun/javafx/sg/prism/NGNode;->accumulateGroupDirtyRegion(Lcom/sun/javafx/geom/RectBounds;Lcom/sun/javafx/geom/RectBounds;Lcom/sun/javafx/geom/DirtyRegionPool;Lcom/sun/javafx/geom/DirtyRegionContainer;Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/javafx/geom/transform/GeneralTransform3D;)I

    move-result v7

    move v0, v7

    goto :goto_0
.end method

.method accumulateGroupDirtyRegion(Lcom/sun/javafx/geom/RectBounds;Lcom/sun/javafx/geom/RectBounds;Lcom/sun/javafx/geom/DirtyRegionPool;Lcom/sun/javafx/geom/DirtyRegionContainer;Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/javafx/geom/transform/GeneralTransform3D;)I
    .locals 69

    .prologue
    .line 1093
    move-object/from16 v2, p0

    .local v2, "this":Lcom/sun/javafx/sg/prism/NGNode;
    move-object/from16 v3, p1

    .local v3, "clip":Lcom/sun/javafx/geom/RectBounds;
    move-object/from16 v4, p2

    .local v4, "dirtyRegionTemp":Lcom/sun/javafx/geom/RectBounds;
    move-object/from16 v5, p3

    .local v5, "regionPool":Lcom/sun/javafx/geom/DirtyRegionPool;
    move-object/from16 v6, p4

    .local v6, "dirtyRegionContainer":Lcom/sun/javafx/geom/DirtyRegionContainer;
    move-object/from16 v7, p5

    .local v7, "tx":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object/from16 v8, p6

    .local v8, "pvTx":Lcom/sun/javafx/geom/transform/GeneralTransform3D;
    sget-boolean v43, Lcom/sun/javafx/sg/prism/NGNode;->$assertionsDisabled:Z

    if-nez v43, :cond_0

    move-object/from16 v43, v2

    move-object/from16 v0, v43

    iget-boolean v0, v0, Lcom/sun/javafx/sg/prism/NGNode;->childDirty:Z

    move/from16 v43, v0

    if-nez v43, :cond_0

    new-instance v43, Ljava/lang/AssertionError;

    move-object/from16 v68, v43

    move-object/from16 v43, v68

    move-object/from16 v44, v68

    invoke-direct/range {v44 .. v44}, Ljava/lang/AssertionError;-><init>()V

    throw v43

    .line 1094
    :cond_0
    sget-boolean v43, Lcom/sun/javafx/sg/prism/NGNode;->$assertionsDisabled:Z

    if-nez v43, :cond_1

    move-object/from16 v43, v2

    move-object/from16 v0, v43

    iget-object v0, v0, Lcom/sun/javafx/sg/prism/NGNode;->dirty:Lcom/sun/javafx/sg/prism/NGNode$DirtyFlag;

    move-object/from16 v43, v0

    sget-object v44, Lcom/sun/javafx/sg/prism/NGNode$DirtyFlag;->CLEAN:Lcom/sun/javafx/sg/prism/NGNode$DirtyFlag;

    move-object/from16 v0, v43

    move-object/from16 v1, v44

    if-eq v0, v1, :cond_1

    new-instance v43, Ljava/lang/AssertionError;

    move-object/from16 v68, v43

    move-object/from16 v43, v68

    move-object/from16 v44, v68

    invoke-direct/range {v44 .. v44}, Ljava/lang/AssertionError;-><init>()V

    throw v43

    .line 1096
    :cond_1
    const/16 v43, 0x1

    move/from16 v9, v43

    .line 1098
    .local v9, "status":I
    move-object/from16 v43, v2

    move-object/from16 v0, v43

    iget v0, v0, Lcom/sun/javafx/sg/prism/NGNode;->dirtyChildrenAccumulated:I

    move/from16 v43, v0

    const/16 v44, 0xc

    move/from16 v0, v43

    move/from16 v1, v44

    if-le v0, v1, :cond_2

    .line 1099
    move-object/from16 v43, v2

    move-object/from16 v44, v3

    move-object/from16 v45, v4

    move-object/from16 v46, v6

    move-object/from16 v47, v7

    move-object/from16 v48, v8

    invoke-virtual/range {v43 .. v48}, Lcom/sun/javafx/sg/prism/NGNode;->accumulateNodeDirtyRegion(Lcom/sun/javafx/geom/RectBounds;Lcom/sun/javafx/geom/RectBounds;Lcom/sun/javafx/geom/DirtyRegionContainer;Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/javafx/geom/transform/GeneralTransform3D;)I

    move-result v43

    move/from16 v9, v43

    .line 1100
    move/from16 v43, v9

    move/from16 v2, v43

    .line 1238
    .end local v2    # "this":Lcom/sun/javafx/sg/prism/NGNode;
    :goto_0
    return v2

    .line 1108
    .restart local v2    # "this":Lcom/sun/javafx/sg/prism/NGNode;
    :cond_2
    move-object/from16 v43, v7

    invoke-virtual/range {v43 .. v43}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMxx()D

    move-result-wide v43

    move-wide/from16 v10, v43

    .line 1109
    .local v10, "mxx":D
    move-object/from16 v43, v7

    invoke-virtual/range {v43 .. v43}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMxy()D

    move-result-wide v43

    move-wide/from16 v12, v43

    .line 1110
    .local v12, "mxy":D
    move-object/from16 v43, v7

    invoke-virtual/range {v43 .. v43}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMxz()D

    move-result-wide v43

    move-wide/from16 v14, v43

    .line 1111
    .local v14, "mxz":D
    move-object/from16 v43, v7

    invoke-virtual/range {v43 .. v43}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMxt()D

    move-result-wide v43

    move-wide/from16 v16, v43

    .line 1113
    .local v16, "mxt":D
    move-object/from16 v43, v7

    invoke-virtual/range {v43 .. v43}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMyx()D

    move-result-wide v43

    move-wide/from16 v18, v43

    .line 1114
    .local v18, "myx":D
    move-object/from16 v43, v7

    invoke-virtual/range {v43 .. v43}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMyy()D

    move-result-wide v43

    move-wide/from16 v20, v43

    .line 1115
    .local v20, "myy":D
    move-object/from16 v43, v7

    invoke-virtual/range {v43 .. v43}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMyz()D

    move-result-wide v43

    move-wide/from16 v22, v43

    .line 1116
    .local v22, "myz":D
    move-object/from16 v43, v7

    invoke-virtual/range {v43 .. v43}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMyt()D

    move-result-wide v43

    move-wide/from16 v24, v43

    .line 1118
    .local v24, "myt":D
    move-object/from16 v43, v7

    invoke-virtual/range {v43 .. v43}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMzx()D

    move-result-wide v43

    move-wide/from16 v26, v43

    .line 1119
    .local v26, "mzx":D
    move-object/from16 v43, v7

    invoke-virtual/range {v43 .. v43}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMzy()D

    move-result-wide v43

    move-wide/from16 v28, v43

    .line 1120
    .local v28, "mzy":D
    move-object/from16 v43, v7

    invoke-virtual/range {v43 .. v43}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMzz()D

    move-result-wide v43

    move-wide/from16 v30, v43

    .line 1121
    .local v30, "mzz":D
    move-object/from16 v43, v7

    invoke-virtual/range {v43 .. v43}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMzt()D

    move-result-wide v43

    move-wide/from16 v32, v43

    .line 1122
    .local v32, "mzt":D
    move-object/from16 v43, v7

    move-object/from16 v34, v43

    .line 1123
    .local v34, "renderTx":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object/from16 v43, v2

    move-object/from16 v0, v43

    iget-object v0, v0, Lcom/sun/javafx/sg/prism/NGNode;->transform:Lcom/sun/javafx/geom/transform/BaseTransform;

    move-object/from16 v43, v0

    if-eqz v43, :cond_3

    move-object/from16 v43, v34

    move-object/from16 v44, v2

    move-object/from16 v0, v44

    iget-object v0, v0, Lcom/sun/javafx/sg/prism/NGNode;->transform:Lcom/sun/javafx/geom/transform/BaseTransform;

    move-object/from16 v44, v0

    invoke-virtual/range {v43 .. v44}, Lcom/sun/javafx/geom/transform/BaseTransform;->deriveWithConcatenation(Lcom/sun/javafx/geom/transform/BaseTransform;)Lcom/sun/javafx/geom/transform/BaseTransform;

    move-result-object v43

    move-object/from16 v34, v43

    .line 1139
    :cond_3
    move-object/from16 v43, v3

    move-object/from16 v35, v43

    .line 1143
    .local v35, "myClip":Lcom/sun/javafx/geom/RectBounds;
    const/16 v43, 0x0

    move-object/from16 v36, v43

    .line 1144
    .local v36, "originalDirtyRegion":Lcom/sun/javafx/geom/DirtyRegionContainer;
    const/16 v43, 0x0

    move-object/from16 v37, v43

    .line 1145
    .local v37, "originalRenderTx":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object/from16 v43, v2

    move-object/from16 v0, v43

    iget-object v0, v0, Lcom/sun/javafx/sg/prism/NGNode;->effectFilter:Lcom/sun/javafx/sg/prism/EffectFilter;

    move-object/from16 v43, v0

    if-eqz v43, :cond_b

    .line 1147
    :try_start_0
    new-instance v43, Lcom/sun/javafx/geom/RectBounds;

    move-object/from16 v68, v43

    move-object/from16 v43, v68

    move-object/from16 v44, v68

    invoke-direct/range {v44 .. v44}, Lcom/sun/javafx/geom/RectBounds;-><init>()V

    move-object/from16 v35, v43

    .line 1148
    move-object/from16 v43, v34

    move-object/from16 v44, v3

    sget-object v45, Lcom/sun/javafx/sg/prism/NGNode;->TEMP_BOUNDS:Lcom/sun/javafx/geom/BoxBounds;

    invoke-virtual/range {v43 .. v45}, Lcom/sun/javafx/geom/transform/BaseTransform;->inverseTransform(Lcom/sun/javafx/geom/BaseBounds;Lcom/sun/javafx/geom/BaseBounds;)Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v43

    move-object/from16 v38, v43

    .line 1149
    .local v38, "myClipBaseBounds":Lcom/sun/javafx/geom/BaseBounds;
    move-object/from16 v43, v38

    move-object/from16 v44, v35

    invoke-virtual/range {v43 .. v44}, Lcom/sun/javafx/geom/BaseBounds;->flattenInto(Lcom/sun/javafx/geom/RectBounds;)Lcom/sun/javafx/geom/RectBounds;
    :try_end_0
    .catch Lcom/sun/javafx/geom/transform/NoninvertibleTransformException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v43

    .line 1152
    .line 1154
    move-object/from16 v43, v34

    move-object/from16 v37, v43

    .line 1155
    sget-object v43, Lcom/sun/javafx/geom/transform/BaseTransform;->IDENTITY_TRANSFORM:Lcom/sun/javafx/geom/transform/BaseTransform;

    move-object/from16 v34, v43

    .line 1156
    move-object/from16 v43, v6

    move-object/from16 v36, v43

    .line 1157
    move-object/from16 v43, v5

    invoke-virtual/range {v43 .. v43}, Lcom/sun/javafx/geom/DirtyRegionPool;->checkOut()Lcom/sun/javafx/geom/DirtyRegionContainer;

    move-result-object v43

    move-object/from16 v6, v43

    .line 1170
    .end local v38    # "myClipBaseBounds":Lcom/sun/javafx/geom/BaseBounds;
    :cond_4
    :goto_1
    move-object/from16 v43, v2

    check-cast v43, Lcom/sun/javafx/sg/prism/NGGroup;

    invoke-virtual/range {v43 .. v43}, Lcom/sun/javafx/sg/prism/NGGroup;->getRemovedChildren()Ljava/util/List;

    move-result-object v43

    move-object/from16 v38, v43

    .line 1171
    .local v38, "removed":Ljava/util/List;, "Ljava/util/List<Lcom/sun/javafx/sg/prism/NGNode;>;"
    move-object/from16 v43, v38

    if-eqz v43, :cond_5

    .line 1173
    move-object/from16 v43, v38

    invoke-interface/range {v43 .. v43}, Ljava/util/List;->size()I

    move-result v43

    const/16 v44, 0x1

    add-int/lit8 v43, v43, -0x1

    move/from16 v40, v43

    .local v40, "i":I
    :goto_2
    move/from16 v43, v40

    if-ltz v43, :cond_5

    .line 1174
    move-object/from16 v43, v38

    move/from16 v44, v40

    invoke-interface/range {v43 .. v44}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v43

    check-cast v43, Lcom/sun/javafx/sg/prism/NGNode;

    move-object/from16 v39, v43

    .line 1175
    .local v39, "removedChild":Lcom/sun/javafx/sg/prism/NGNode;
    move-object/from16 v43, v39

    sget-object v44, Lcom/sun/javafx/sg/prism/NGNode$DirtyFlag;->DIRTY:Lcom/sun/javafx/sg/prism/NGNode$DirtyFlag;

    move-object/from16 v0, v44

    move-object/from16 v1, v43

    iput-object v0, v1, Lcom/sun/javafx/sg/prism/NGNode;->dirty:Lcom/sun/javafx/sg/prism/NGNode$DirtyFlag;

    .line 1176
    move-object/from16 v43, v39

    move-object/from16 v44, v35

    move-object/from16 v45, v4

    move-object/from16 v46, v5

    move-object/from16 v47, v6

    move-object/from16 v48, v34

    move-object/from16 v49, v8

    invoke-virtual/range {v43 .. v49}, Lcom/sun/javafx/sg/prism/NGNode;->accumulateDirtyRegions(Lcom/sun/javafx/geom/RectBounds;Lcom/sun/javafx/geom/RectBounds;Lcom/sun/javafx/geom/DirtyRegionPool;Lcom/sun/javafx/geom/DirtyRegionContainer;Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/javafx/geom/transform/GeneralTransform3D;)I

    move-result v43

    move/from16 v9, v43

    .line 1178
    move/from16 v43, v9

    if-nez v43, :cond_c

    .line 1179
    .line 1184
    .end local v39    # "removedChild":Lcom/sun/javafx/sg/prism/NGNode;
    .end local v40    # "i":I
    :cond_5
    move-object/from16 v43, v2

    check-cast v43, Lcom/sun/javafx/sg/prism/NGGroup;

    invoke-virtual/range {v43 .. v43}, Lcom/sun/javafx/sg/prism/NGGroup;->getChildren()Ljava/util/List;

    move-result-object v43

    move-object/from16 v39, v43

    .line 1185
    .local v39, "children":Ljava/util/List;, "Ljava/util/List<Lcom/sun/javafx/sg/prism/NGNode;>;"
    move-object/from16 v43, v39

    invoke-interface/range {v43 .. v43}, Ljava/util/List;->size()I

    move-result v43

    move/from16 v40, v43

    .line 1186
    .local v40, "num":I
    const/16 v43, 0x0

    move/from16 v41, v43

    .local v41, "i":I
    :goto_3
    move/from16 v43, v41

    move/from16 v44, v40

    move/from16 v0, v43

    move/from16 v1, v44

    if-ge v0, v1, :cond_6

    move/from16 v43, v9

    const/16 v44, 0x1

    move/from16 v0, v43

    move/from16 v1, v44

    if-ne v0, v1, :cond_6

    .line 1187
    move-object/from16 v43, v39

    move/from16 v44, v41

    invoke-interface/range {v43 .. v44}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v43

    check-cast v43, Lcom/sun/javafx/sg/prism/NGNode;

    move-object/from16 v42, v43

    .line 1192
    .local v42, "child":Lcom/sun/javafx/sg/prism/NGNode;
    move-object/from16 v43, v42

    move-object/from16 v44, v35

    move-object/from16 v45, v4

    move-object/from16 v46, v5

    move-object/from16 v47, v6

    move-object/from16 v48, v34

    move-object/from16 v49, v8

    invoke-virtual/range {v43 .. v49}, Lcom/sun/javafx/sg/prism/NGNode;->accumulateDirtyRegions(Lcom/sun/javafx/geom/RectBounds;Lcom/sun/javafx/geom/RectBounds;Lcom/sun/javafx/geom/DirtyRegionPool;Lcom/sun/javafx/geom/DirtyRegionContainer;Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/javafx/geom/transform/GeneralTransform3D;)I

    move-result v43

    move/from16 v9, v43

    .line 1194
    move/from16 v43, v9

    if-nez v43, :cond_d

    .line 1195
    .line 1199
    .end local v42    # "child":Lcom/sun/javafx/sg/prism/NGNode;
    :cond_6
    move-object/from16 v43, v2

    move-object/from16 v0, v43

    iget-object v0, v0, Lcom/sun/javafx/sg/prism/NGNode;->effectFilter:Lcom/sun/javafx/sg/prism/EffectFilter;

    move-object/from16 v43, v0

    if-eqz v43, :cond_8

    move/from16 v43, v9

    const/16 v44, 0x1

    move/from16 v0, v43

    move/from16 v1, v44

    if-ne v0, v1, :cond_8

    .line 1201
    move-object/from16 v43, v2

    move-object/from16 v44, v2

    move-object/from16 v0, v44

    iget-object v0, v0, Lcom/sun/javafx/sg/prism/NGNode;->effectFilter:Lcom/sun/javafx/sg/prism/EffectFilter;

    move-object/from16 v44, v0

    move-object/from16 v45, v6

    move-object/from16 v46, v5

    invoke-virtual/range {v43 .. v46}, Lcom/sun/javafx/sg/prism/NGNode;->applyEffect(Lcom/sun/javafx/sg/prism/EffectFilter;Lcom/sun/javafx/geom/DirtyRegionContainer;Lcom/sun/javafx/geom/DirtyRegionPool;)V

    .line 1203
    move-object/from16 v43, v2

    move-object/from16 v0, v43

    iget-object v0, v0, Lcom/sun/javafx/sg/prism/NGNode;->clipNode:Lcom/sun/javafx/sg/prism/NGNode;

    move-object/from16 v43, v0

    if-eqz v43, :cond_7

    .line 1204
    new-instance v43, Lcom/sun/javafx/geom/RectBounds;

    move-object/from16 v68, v43

    move-object/from16 v43, v68

    move-object/from16 v44, v68

    invoke-direct/range {v44 .. v44}, Lcom/sun/javafx/geom/RectBounds;-><init>()V

    move-object/from16 v35, v43

    .line 1205
    move-object/from16 v43, v2

    move-object/from16 v0, v43

    iget-object v0, v0, Lcom/sun/javafx/sg/prism/NGNode;->clipNode:Lcom/sun/javafx/sg/prism/NGNode;

    move-object/from16 v43, v0

    move-object/from16 v44, v35

    move-object/from16 v45, v34

    invoke-virtual/range {v43 .. v45}, Lcom/sun/javafx/sg/prism/NGNode;->getCompleteBounds(Lcom/sun/javafx/geom/BaseBounds;Lcom/sun/javafx/geom/transform/BaseTransform;)Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v43

    move-object/from16 v41, v43

    .line 1206
    .local v41, "clipBounds":Lcom/sun/javafx/geom/BaseBounds;
    move-object/from16 v43, v2

    move-object/from16 v44, v41

    move-object/from16 v45, v6

    invoke-virtual/range {v43 .. v45}, Lcom/sun/javafx/sg/prism/NGNode;->applyClip(Lcom/sun/javafx/geom/BaseBounds;Lcom/sun/javafx/geom/DirtyRegionContainer;)V

    .line 1210
    .end local v41    # "clipBounds":Lcom/sun/javafx/geom/BaseBounds;
    :cond_7
    move-object/from16 v43, v2

    move-object/from16 v44, v37

    move-object/from16 v45, v6

    invoke-virtual/range {v43 .. v45}, Lcom/sun/javafx/sg/prism/NGNode;->applyTransform(Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/javafx/geom/DirtyRegionContainer;)V

    .line 1211
    move-object/from16 v43, v37

    move-object/from16 v34, v43

    .line 1213
    move-object/from16 v43, v36

    move-object/from16 v44, v6

    invoke-virtual/range {v43 .. v44}, Lcom/sun/javafx/geom/DirtyRegionContainer;->merge(Lcom/sun/javafx/geom/DirtyRegionContainer;)V

    .line 1214
    move-object/from16 v43, v5

    move-object/from16 v44, v6

    invoke-virtual/range {v43 .. v44}, Lcom/sun/javafx/geom/DirtyRegionPool;->checkIn(Lcom/sun/javafx/geom/DirtyRegionContainer;)V

    .line 1220
    :cond_8
    move-object/from16 v43, v34

    move-object/from16 v44, v7

    move-object/from16 v0, v43

    move-object/from16 v1, v44

    if-ne v0, v1, :cond_9

    .line 1221
    move-object/from16 v43, v7

    move-wide/from16 v44, v10

    move-wide/from16 v46, v12

    move-wide/from16 v48, v14

    move-wide/from16 v50, v16

    move-wide/from16 v52, v18

    move-wide/from16 v54, v20

    move-wide/from16 v56, v22

    move-wide/from16 v58, v24

    move-wide/from16 v60, v26

    move-wide/from16 v62, v28

    move-wide/from16 v64, v30

    move-wide/from16 v66, v32

    invoke-virtual/range {v43 .. v67}, Lcom/sun/javafx/geom/transform/BaseTransform;->restoreTransform(DDDDDDDDDDDD)V

    .line 1230
    :cond_9
    move-object/from16 v43, v2

    move-object/from16 v0, v43

    iget-object v0, v0, Lcom/sun/javafx/sg/prism/NGNode;->clipNode:Lcom/sun/javafx/sg/prism/NGNode;

    move-object/from16 v43, v0

    if-eqz v43, :cond_a

    move-object/from16 v43, v2

    move-object/from16 v0, v43

    iget-object v0, v0, Lcom/sun/javafx/sg/prism/NGNode;->effectFilter:Lcom/sun/javafx/sg/prism/EffectFilter;

    move-object/from16 v43, v0

    if-nez v43, :cond_a

    .line 1231
    move/from16 v43, v9

    if-nez v43, :cond_e

    .line 1232
    move-object/from16 v43, v2

    move-object/from16 v44, v3

    move-object/from16 v45, v4

    move-object/from16 v46, v36

    move-object/from16 v47, v7

    move-object/from16 v48, v8

    invoke-virtual/range {v43 .. v48}, Lcom/sun/javafx/sg/prism/NGNode;->accumulateNodeDirtyRegion(Lcom/sun/javafx/geom/RectBounds;Lcom/sun/javafx/geom/RectBounds;Lcom/sun/javafx/geom/DirtyRegionContainer;Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/javafx/geom/transform/GeneralTransform3D;)I

    move-result v43

    move/from16 v9, v43

    .line 1236
    :goto_4
    move-object/from16 v43, v5

    move-object/from16 v44, v6

    invoke-virtual/range {v43 .. v44}, Lcom/sun/javafx/geom/DirtyRegionPool;->checkIn(Lcom/sun/javafx/geom/DirtyRegionContainer;)V

    .line 1238
    :cond_a
    move/from16 v43, v9

    move/from16 v2, v43

    goto/16 :goto_0

    .line 1150
    .end local v38    # "removed":Ljava/util/List;, "Ljava/util/List<Lcom/sun/javafx/sg/prism/NGNode;>;"
    .end local v39    # "children":Ljava/util/List;, "Ljava/util/List<Lcom/sun/javafx/sg/prism/NGNode;>;"
    .end local v40    # "num":I
    :catch_0
    move-exception v43

    move-object/from16 v38, v43

    .line 1151
    .local v38, "ex":Lcom/sun/javafx/geom/transform/NoninvertibleTransformException;
    const/16 v43, 0x1

    move/from16 v2, v43

    goto/16 :goto_0

    .line 1158
    .end local v38    # "ex":Lcom/sun/javafx/geom/transform/NoninvertibleTransformException;
    :cond_b
    move-object/from16 v43, v2

    move-object/from16 v0, v43

    iget-object v0, v0, Lcom/sun/javafx/sg/prism/NGNode;->clipNode:Lcom/sun/javafx/sg/prism/NGNode;

    move-object/from16 v43, v0

    if-eqz v43, :cond_4

    .line 1159
    move-object/from16 v43, v6

    move-object/from16 v36, v43

    .line 1160
    new-instance v43, Lcom/sun/javafx/geom/RectBounds;

    move-object/from16 v68, v43

    move-object/from16 v43, v68

    move-object/from16 v44, v68

    invoke-direct/range {v44 .. v44}, Lcom/sun/javafx/geom/RectBounds;-><init>()V

    move-object/from16 v35, v43

    .line 1161
    move-object/from16 v43, v2

    move-object/from16 v0, v43

    iget-object v0, v0, Lcom/sun/javafx/sg/prism/NGNode;->clipNode:Lcom/sun/javafx/sg/prism/NGNode;

    move-object/from16 v43, v0

    move-object/from16 v44, v35

    move-object/from16 v45, v34

    invoke-virtual/range {v43 .. v45}, Lcom/sun/javafx/sg/prism/NGNode;->getCompleteBounds(Lcom/sun/javafx/geom/BaseBounds;Lcom/sun/javafx/geom/transform/BaseTransform;)Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v43

    move-object/from16 v38, v43

    .line 1162
    .local v38, "clipBounds":Lcom/sun/javafx/geom/BaseBounds;
    move-object/from16 v43, v8

    move-object/from16 v44, v38

    move-object/from16 v45, v38

    invoke-virtual/range {v43 .. v45}, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->transform(Lcom/sun/javafx/geom/BaseBounds;Lcom/sun/javafx/geom/BaseBounds;)Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v43

    .line 1163
    move-object/from16 v43, v38

    move-object/from16 v44, v35

    invoke-virtual/range {v43 .. v44}, Lcom/sun/javafx/geom/BaseBounds;->flattenInto(Lcom/sun/javafx/geom/RectBounds;)Lcom/sun/javafx/geom/RectBounds;

    move-result-object v43

    .line 1164
    move-object/from16 v43, v35

    move-object/from16 v44, v3

    invoke-virtual/range {v43 .. v44}, Lcom/sun/javafx/geom/RectBounds;->intersectWith(Lcom/sun/javafx/geom/BaseBounds;)V

    .line 1165
    move-object/from16 v43, v5

    invoke-virtual/range {v43 .. v43}, Lcom/sun/javafx/geom/DirtyRegionPool;->checkOut()Lcom/sun/javafx/geom/DirtyRegionContainer;

    move-result-object v43

    move-object/from16 v6, v43

    goto/16 :goto_1

    .line 1173
    .local v38, "removed":Ljava/util/List;, "Ljava/util/List<Lcom/sun/javafx/sg/prism/NGNode;>;"
    .local v39, "removedChild":Lcom/sun/javafx/sg/prism/NGNode;
    .local v40, "i":I
    :cond_c
    add-int/lit8 v40, v40, -0x1

    goto/16 :goto_2

    .line 1186
    .local v39, "children":Ljava/util/List;, "Ljava/util/List<Lcom/sun/javafx/sg/prism/NGNode;>;"
    .local v40, "num":I
    .local v41, "i":I
    .restart local v42    # "child":Lcom/sun/javafx/sg/prism/NGNode;
    :cond_d
    add-int/lit8 v41, v41, 0x1

    goto/16 :goto_3

    .line 1234
    .end local v41    # "i":I
    .end local v42    # "child":Lcom/sun/javafx/sg/prism/NGNode;
    :cond_e
    move-object/from16 v43, v36

    move-object/from16 v44, v6

    invoke-virtual/range {v43 .. v44}, Lcom/sun/javafx/geom/DirtyRegionContainer;->merge(Lcom/sun/javafx/geom/DirtyRegionContainer;)V

    goto :goto_4
.end method

.method accumulateNodeDirtyRegion(Lcom/sun/javafx/geom/RectBounds;Lcom/sun/javafx/geom/RectBounds;Lcom/sun/javafx/geom/DirtyRegionContainer;Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/javafx/geom/transform/GeneralTransform3D;)I
    .locals 11

    .prologue
    .line 1041
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGNode;
    move-object v1, p1

    .local v1, "clip":Lcom/sun/javafx/geom/RectBounds;
    move-object v2, p2

    .local v2, "dirtyRegionTemp":Lcom/sun/javafx/geom/RectBounds;
    move-object v3, p3

    .local v3, "dirtyRegionContainer":Lcom/sun/javafx/geom/DirtyRegionContainer;
    move-object v4, p4

    .local v4, "tx":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object/from16 v5, p5

    .local v5, "pvTx":Lcom/sun/javafx/geom/transform/GeneralTransform3D;
    move-object v7, v0

    move-object v8, v2

    move-object v9, v4

    move-object v10, v5

    invoke-direct {v7, v8, v9, v10}, Lcom/sun/javafx/sg/prism/NGNode;->computeDirtyRegion(Lcom/sun/javafx/geom/RectBounds;Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/javafx/geom/transform/GeneralTransform3D;)Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v7

    move-object v6, v7

    .line 1048
    .local v6, "bb":Lcom/sun/javafx/geom/BaseBounds;
    move-object v7, v6

    move-object v8, v2

    if-eq v7, v8, :cond_0

    .line 1049
    move-object v7, v6

    move-object v8, v2

    invoke-virtual {v7, v8}, Lcom/sun/javafx/geom/BaseBounds;->flattenInto(Lcom/sun/javafx/geom/RectBounds;)Lcom/sun/javafx/geom/RectBounds;

    move-result-object v7

    .line 1055
    :cond_0
    move-object v7, v2

    invoke-virtual {v7}, Lcom/sun/javafx/geom/RectBounds;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_1

    move-object v7, v1

    move-object v8, v2

    invoke-virtual {v7, v8}, Lcom/sun/javafx/geom/RectBounds;->disjoint(Lcom/sun/javafx/geom/RectBounds;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1056
    :cond_1
    const/4 v7, 0x1

    move v0, v7

    .line 1072
    .end local v0    # "this":Lcom/sun/javafx/sg/prism/NGNode;
    :goto_0
    return v0

    .line 1061
    .restart local v0    # "this":Lcom/sun/javafx/sg/prism/NGNode;
    :cond_2
    move-object v7, v2

    move-object v8, v1

    invoke-virtual {v7, v8}, Lcom/sun/javafx/geom/RectBounds;->contains(Lcom/sun/javafx/geom/RectBounds;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1062
    const/4 v7, 0x0

    move v0, v7

    goto :goto_0

    .line 1067
    :cond_3
    move-object v7, v2

    move-object v8, v1

    invoke-virtual {v7, v8}, Lcom/sun/javafx/geom/RectBounds;->intersectWith(Lcom/sun/javafx/geom/BaseBounds;)V

    .line 1070
    move-object v7, v3

    move-object v8, v2

    invoke-virtual {v7, v8}, Lcom/sun/javafx/geom/DirtyRegionContainer;->addDirtyRegion(Lcom/sun/javafx/geom/RectBounds;)V

    .line 1072
    const/4 v7, 0x1

    move v0, v7

    goto :goto_0
.end method

.method public applyClip(Lcom/sun/javafx/geom/BaseBounds;Lcom/sun/javafx/geom/DirtyRegionContainer;)V
    .locals 6

    .prologue
    .line 2476
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGNode;
    move-object v1, p1

    .local v1, "clipBounds":Lcom/sun/javafx/geom/BaseBounds;
    move-object v2, p2

    .local v2, "drc":Lcom/sun/javafx/geom/DirtyRegionContainer;
    const/4 v4, 0x0

    move v3, v4

    .local v3, "i":I
    :goto_0
    move v4, v3

    move-object v5, v2

    invoke-virtual {v5}, Lcom/sun/javafx/geom/DirtyRegionContainer;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 2477
    move-object v4, v2

    move v5, v3

    invoke-virtual {v4, v5}, Lcom/sun/javafx/geom/DirtyRegionContainer;->getDirtyRegion(I)Lcom/sun/javafx/geom/RectBounds;

    move-result-object v4

    move-object v5, v1

    invoke-virtual {v4, v5}, Lcom/sun/javafx/geom/RectBounds;->intersectWith(Lcom/sun/javafx/geom/BaseBounds;)V

    .line 2478
    move-object v4, v2

    move v5, v3

    invoke-virtual {v4, v5}, Lcom/sun/javafx/geom/DirtyRegionContainer;->checkAndClearRegion(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2479
    add-int/lit8 v3, v3, -0x1

    .line 2476
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2482
    :cond_1
    return-void
.end method

.method public applyEffect(Lcom/sun/javafx/sg/prism/EffectFilter;Lcom/sun/javafx/geom/DirtyRegionContainer;Lcom/sun/javafx/geom/DirtyRegionPool;)V
    .locals 10

    .prologue
    .line 2485
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGNode;
    move-object v1, p1

    .local v1, "effectFilter":Lcom/sun/javafx/sg/prism/EffectFilter;
    move-object v2, p2

    .local v2, "drc":Lcom/sun/javafx/geom/DirtyRegionContainer;
    move-object v3, p3

    .local v3, "regionPool":Lcom/sun/javafx/geom/DirtyRegionPool;
    move-object v7, v1

    invoke-virtual {v7}, Lcom/sun/javafx/sg/prism/EffectFilter;->getEffect()Lcom/sun/scenario/effect/Effect;

    move-result-object v7

    move-object v4, v7

    .line 2486
    .local v4, "effect":Lcom/sun/scenario/effect/Effect;
    invoke-static {}, Lcom/sun/javafx/sg/prism/NGNode$EffectDirtyBoundsHelper;->getInstance()Lcom/sun/javafx/sg/prism/NGNode$EffectDirtyBoundsHelper;

    move-result-object v7

    move-object v5, v7

    .line 2487
    .local v5, "helper":Lcom/sun/javafx/sg/prism/NGNode$EffectDirtyBoundsHelper;
    move-object v7, v5

    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/sg/prism/NGNode;->contentBounds:Lcom/sun/javafx/geom/BaseBounds;

    invoke-virtual {v7, v8}, Lcom/sun/javafx/sg/prism/NGNode$EffectDirtyBoundsHelper;->setInputBounds(Lcom/sun/javafx/geom/BaseBounds;)V

    .line 2488
    move-object v7, v5

    move-object v8, v2

    invoke-static {v7, v8}, Lcom/sun/javafx/sg/prism/NGNode$EffectDirtyBoundsHelper;->access$000(Lcom/sun/javafx/sg/prism/NGNode$EffectDirtyBoundsHelper;Lcom/sun/javafx/geom/DirtyRegionContainer;)V

    .line 2489
    move-object v7, v4

    move-object v8, v5

    move-object v9, v3

    invoke-virtual {v7, v8, v9}, Lcom/sun/scenario/effect/Effect;->getDirtyRegions(Lcom/sun/scenario/effect/Effect;Lcom/sun/javafx/geom/DirtyRegionPool;)Lcom/sun/javafx/geom/DirtyRegionContainer;

    move-result-object v7

    move-object v6, v7

    .line 2490
    .local v6, "effectDrc":Lcom/sun/javafx/geom/DirtyRegionContainer;
    move-object v7, v2

    move-object v8, v6

    invoke-virtual {v7, v8}, Lcom/sun/javafx/geom/DirtyRegionContainer;->deriveWithNewContainer(Lcom/sun/javafx/geom/DirtyRegionContainer;)Lcom/sun/javafx/geom/DirtyRegionContainer;

    move-result-object v7

    .line 2491
    move-object v7, v3

    move-object v8, v6

    invoke-virtual {v7, v8}, Lcom/sun/javafx/geom/DirtyRegionPool;->checkIn(Lcom/sun/javafx/geom/DirtyRegionContainer;)V

    .line 2492
    return-void
.end method

.method public applyTransform(Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/javafx/geom/DirtyRegionContainer;)V
    .locals 10

    .prologue
    .line 2467
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGNode;
    move-object v1, p1

    .local v1, "tx":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object v2, p2

    .local v2, "drc":Lcom/sun/javafx/geom/DirtyRegionContainer;
    const/4 v4, 0x0

    move v3, v4

    .local v3, "i":I
    :goto_0
    move v4, v3

    move-object v5, v2

    invoke-virtual {v5}, Lcom/sun/javafx/geom/DirtyRegionContainer;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 2468
    move-object v4, v2

    move v5, v3

    move-object v6, v1

    move-object v7, v2

    move v8, v3

    invoke-virtual {v7, v8}, Lcom/sun/javafx/geom/DirtyRegionContainer;->getDirtyRegion(I)Lcom/sun/javafx/geom/RectBounds;

    move-result-object v7

    move-object v8, v2

    move v9, v3

    invoke-virtual {v8, v9}, Lcom/sun/javafx/geom/DirtyRegionContainer;->getDirtyRegion(I)Lcom/sun/javafx/geom/RectBounds;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/sun/javafx/geom/transform/BaseTransform;->transform(Lcom/sun/javafx/geom/BaseBounds;Lcom/sun/javafx/geom/BaseBounds;)Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v6

    check-cast v6, Lcom/sun/javafx/geom/RectBounds;

    invoke-virtual {v4, v5, v6}, Lcom/sun/javafx/geom/DirtyRegionContainer;->setDirtyRegion(ILcom/sun/javafx/geom/RectBounds;)V

    .line 2469
    move-object v4, v2

    move v5, v3

    invoke-virtual {v4, v5}, Lcom/sun/javafx/geom/DirtyRegionContainer;->checkAndClearRegion(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2470
    add-int/lit8 v3, v3, -0x1

    .line 2467
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2473
    :cond_1
    return-void
.end method

.method protected clearDirty()V
    .locals 3

    .prologue
    .line 886
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGNode;
    move-object v1, v0

    sget-object v2, Lcom/sun/javafx/sg/prism/NGNode$DirtyFlag;->CLEAN:Lcom/sun/javafx/sg/prism/NGNode$DirtyFlag;

    iput-object v2, v1, Lcom/sun/javafx/sg/prism/NGNode;->dirty:Lcom/sun/javafx/sg/prism/NGNode$DirtyFlag;

    .line 887
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/sun/javafx/sg/prism/NGNode;->childDirty:Z

    .line 888
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/sg/prism/NGNode;->dirtyBounds:Lcom/sun/javafx/geom/BaseBounds;

    invoke-virtual {v1}, Lcom/sun/javafx/geom/BaseBounds;->makeEmpty()Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v1

    .line 889
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Lcom/sun/javafx/sg/prism/NGNode;->dirtyChildrenAccumulated:I

    .line 890
    return-void
.end method

.method public clearDirtyTree()V
    .locals 6

    .prologue
    .line 907
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGNode;
    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/javafx/sg/prism/NGNode;->clearDirty()V

    .line 908
    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/javafx/sg/prism/NGNode;->getClipNode()Lcom/sun/javafx/sg/prism/NGNode;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 909
    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/javafx/sg/prism/NGNode;->getClipNode()Lcom/sun/javafx/sg/prism/NGNode;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sun/javafx/sg/prism/NGNode;->clearDirtyTree()V

    .line 911
    :cond_0
    move-object v4, v0

    instance-of v4, v4, Lcom/sun/javafx/sg/prism/NGGroup;

    if-eqz v4, :cond_3

    .line 912
    move-object v4, v0

    check-cast v4, Lcom/sun/javafx/sg/prism/NGGroup;

    invoke-virtual {v4}, Lcom/sun/javafx/sg/prism/NGGroup;->getChildren()Ljava/util/List;

    move-result-object v4

    move-object v1, v4

    .line 913
    .local v1, "children":Ljava/util/List;, "Ljava/util/List<Lcom/sun/javafx/sg/prism/NGNode;>;"
    const/4 v4, 0x0

    move v2, v4

    .local v2, "i":I
    :goto_0
    move v4, v2

    move-object v5, v1

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_3

    .line 914
    move-object v4, v1

    move v5, v2

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/javafx/sg/prism/NGNode;

    move-object v3, v4

    .line 915
    .local v3, "child":Lcom/sun/javafx/sg/prism/NGNode;
    move-object v4, v3

    iget-object v4, v4, Lcom/sun/javafx/sg/prism/NGNode;->dirty:Lcom/sun/javafx/sg/prism/NGNode$DirtyFlag;

    sget-object v5, Lcom/sun/javafx/sg/prism/NGNode$DirtyFlag;->CLEAN:Lcom/sun/javafx/sg/prism/NGNode$DirtyFlag;

    if-ne v4, v5, :cond_1

    move-object v4, v3

    iget-boolean v4, v4, Lcom/sun/javafx/sg/prism/NGNode;->childDirty:Z

    if-eqz v4, :cond_2

    .line 916
    :cond_1
    move-object v4, v3

    invoke-virtual {v4}, Lcom/sun/javafx/sg/prism/NGNode;->clearDirtyTree()V

    .line 913
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 920
    .end local v1    # "children":Ljava/util/List;, "Ljava/util/List<Lcom/sun/javafx/sg/prism/NGNode;>;"
    .end local v2    # "i":I
    .end local v3    # "child":Lcom/sun/javafx/sg/prism/NGNode;
    :cond_3
    return-void
.end method

.method public clearPainted()V
    .locals 5

    .prologue
    .line 897
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGNode;
    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Lcom/sun/javafx/sg/prism/NGNode;->painted:I

    .line 898
    move-object v3, v0

    instance-of v3, v3, Lcom/sun/javafx/sg/prism/NGGroup;

    if-eqz v3, :cond_0

    .line 899
    move-object v3, v0

    check-cast v3, Lcom/sun/javafx/sg/prism/NGGroup;

    invoke-virtual {v3}, Lcom/sun/javafx/sg/prism/NGGroup;->getChildren()Ljava/util/List;

    move-result-object v3

    move-object v1, v3

    .line 900
    .local v1, "children":Ljava/util/List;, "Ljava/util/List<Lcom/sun/javafx/sg/prism/NGNode;>;"
    const/4 v3, 0x0

    move v2, v3

    .local v2, "i":I
    :goto_0
    move v3, v2

    move-object v4, v1

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 901
    move-object v3, v1

    move v4, v2

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sun/javafx/sg/prism/NGNode;

    invoke-virtual {v3}, Lcom/sun/javafx/sg/prism/NGNode;->clearPainted()V

    .line 900
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 904
    .end local v1    # "children":Ljava/util/List;, "Ljava/util/List<Lcom/sun/javafx/sg/prism/NGNode;>;"
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method final computeNodeRenderRoot(Lcom/sun/javafx/sg/prism/NodePath;Lcom/sun/javafx/geom/RectBounds;ILcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/javafx/geom/transform/GeneralTransform3D;)Lcom/sun/javafx/sg/prism/NGNode$RenderRootResult;
    .locals 13

    .prologue
    .line 1713
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGNode;
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
    move v9, v3

    const/4 v10, -0x1

    if-eq v9, v10, :cond_0

    .line 1714
    move-object v9, v0

    iget v9, v9, Lcom/sun/javafx/sg/prism/NGNode;->cullingBits:I

    move v10, v3

    const/4 v11, 0x2

    mul-int/lit8 v10, v10, 0x2

    shr-int/2addr v9, v10

    move v6, v9

    .line 1715
    .local v6, "bits":I
    move v9, v6

    const/4 v10, 0x3

    and-int/lit8 v9, v9, 0x3

    if-nez v9, :cond_0

    .line 1716
    sget-object v9, Lcom/sun/javafx/sg/prism/NGNode$RenderRootResult;->NO_RENDER_ROOT:Lcom/sun/javafx/sg/prism/NGNode$RenderRootResult;

    move-object v0, v9

    .line 1742
    .end local v0    # "this":Lcom/sun/javafx/sg/prism/NGNode;
    .end local v6    # "bits":I
    :goto_0
    return-object v0

    .line 1720
    .restart local v0    # "this":Lcom/sun/javafx/sg/prism/NGNode;
    :cond_0
    move-object v9, v0

    invoke-virtual {v9}, Lcom/sun/javafx/sg/prism/NGNode;->isVisible()Z

    move-result v9

    if-nez v9, :cond_1

    .line 1721
    sget-object v9, Lcom/sun/javafx/sg/prism/NGNode$RenderRootResult;->NO_RENDER_ROOT:Lcom/sun/javafx/sg/prism/NGNode$RenderRootResult;

    move-object v0, v9

    goto :goto_0

    .line 1724
    :cond_1
    move-object v9, v0

    invoke-virtual {v9}, Lcom/sun/javafx/sg/prism/NGNode;->getOpaqueRegion()Lcom/sun/javafx/geom/RectBounds;

    move-result-object v9

    move-object v6, v9

    .line 1725
    .local v6, "opaqueRegion":Lcom/sun/javafx/geom/RectBounds;
    move-object v9, v6

    if-nez v9, :cond_2

    sget-object v9, Lcom/sun/javafx/sg/prism/NGNode$RenderRootResult;->NO_RENDER_ROOT:Lcom/sun/javafx/sg/prism/NGNode$RenderRootResult;

    move-object v0, v9

    goto :goto_0

    .line 1727
    :cond_2
    move-object v9, v0

    invoke-virtual {v9}, Lcom/sun/javafx/sg/prism/NGNode;->getTransform()Lcom/sun/javafx/geom/transform/BaseTransform;

    move-result-object v9

    move-object v7, v9

    .line 1729
    .local v7, "localToParentTx":Lcom/sun/javafx/geom/transform/BaseTransform;
    sget-object v9, Lcom/sun/javafx/sg/prism/NGNode;->TEMP_TRANSFORM:Lcom/sun/javafx/geom/transform/Affine3D;

    move-object v10, v4

    invoke-virtual {v9, v10}, Lcom/sun/javafx/geom/transform/Affine3D;->deriveWithNewTransform(Lcom/sun/javafx/geom/transform/BaseTransform;)Lcom/sun/javafx/geom/transform/Affine3D;

    move-result-object v9

    move-object v10, v7

    invoke-virtual {v9, v10}, Lcom/sun/javafx/geom/transform/Affine3D;->deriveWithConcatenation(Lcom/sun/javafx/geom/transform/BaseTransform;)Lcom/sun/javafx/geom/transform/Affine3D;

    move-result-object v9

    move-object v8, v9

    .line 1736
    .local v8, "localToSceneTx":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object v9, v6

    move-object v10, v2

    move-object v11, v8

    move-object v12, v5

    invoke-static {v9, v10, v11, v12}, Lcom/sun/javafx/sg/prism/NGNode;->checkBoundsInQuad(Lcom/sun/javafx/geom/RectBounds;Lcom/sun/javafx/geom/RectBounds;Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/javafx/geom/transform/GeneralTransform3D;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 1738
    move-object v9, v1

    move-object v10, v0

    invoke-virtual {v9, v10}, Lcom/sun/javafx/sg/prism/NodePath;->add(Lcom/sun/javafx/sg/prism/NGNode;)V

    .line 1739
    move-object v9, v0

    invoke-virtual {v9}, Lcom/sun/javafx/sg/prism/NGNode;->isClean()Z

    move-result v9

    if-eqz v9, :cond_3

    sget-object v9, Lcom/sun/javafx/sg/prism/NGNode$RenderRootResult;->HAS_RENDER_ROOT_AND_IS_CLEAN:Lcom/sun/javafx/sg/prism/NGNode$RenderRootResult;

    :goto_1
    move-object v0, v9

    goto :goto_0

    :cond_3
    sget-object v9, Lcom/sun/javafx/sg/prism/NGNode$RenderRootResult;->HAS_RENDER_ROOT:Lcom/sun/javafx/sg/prism/NGNode$RenderRootResult;

    goto :goto_1

    .line 1742
    :cond_4
    sget-object v9, Lcom/sun/javafx/sg/prism/NGNode$RenderRootResult;->NO_RENDER_ROOT:Lcom/sun/javafx/sg/prism/NGNode$RenderRootResult;

    move-object v0, v9

    goto :goto_0
.end method

.method protected computeOpaqueRegion(Lcom/sun/javafx/geom/RectBounds;)Lcom/sun/javafx/geom/RectBounds;
    .locals 3

    .prologue
    .line 1905
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGNode;
    move-object v1, p1

    .local v1, "opaqueRegion":Lcom/sun/javafx/geom/RectBounds;
    const/4 v2, 0x0

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/sg/prism/NGNode;
    return-object v0
.end method

.method protected computePadding(Lcom/sun/javafx/geom/BaseBounds;)Lcom/sun/javafx/geom/BaseBounds;
    .locals 3

    .prologue
    .line 1299
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGNode;
    move-object v1, p1

    .local v1, "region":Lcom/sun/javafx/geom/BaseBounds;
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/sg/prism/NGNode;
    return-object v0
.end method

.method computeRenderRoot(Lcom/sun/javafx/sg/prism/NodePath;Lcom/sun/javafx/geom/RectBounds;ILcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/javafx/geom/transform/GeneralTransform3D;)Lcom/sun/javafx/sg/prism/NGNode$RenderRootResult;
    .locals 12

    .prologue
    .line 1663
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGNode;
    move-object v1, p1

    .local v1, "path":Lcom/sun/javafx/sg/prism/NodePath;
    move-object v2, p2

    .local v2, "dirtyRegion":Lcom/sun/javafx/geom/RectBounds;
    move v3, p3

    .local v3, "cullingIndex":I
    move-object/from16 v4, p4

    .local v4, "tx":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object/from16 v5, p5

    .local v5, "pvTx":Lcom/sun/javafx/geom/transform/GeneralTransform3D;
    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    move v9, v3

    move-object v10, v4

    move-object v11, v5

    invoke-virtual/range {v6 .. v11}, Lcom/sun/javafx/sg/prism/NGNode;->computeNodeRenderRoot(Lcom/sun/javafx/sg/prism/NodePath;Lcom/sun/javafx/geom/RectBounds;ILcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/javafx/geom/transform/GeneralTransform3D;)Lcom/sun/javafx/sg/prism/NGNode$RenderRootResult;

    move-result-object v6

    move-object v0, v6

    .end local v0    # "this":Lcom/sun/javafx/sg/prism/NGNode;
    return-object v0
.end method

.method public final doPreCulling(Lcom/sun/javafx/geom/DirtyRegionContainer;Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/javafx/geom/transform/GeneralTransform3D;)V
    .locals 10

    .prologue
    .line 1326
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGNode;
    move-object v1, p1

    .local v1, "drc":Lcom/sun/javafx/geom/DirtyRegionContainer;
    move-object v2, p2

    .local v2, "tx":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object v3, p3

    .local v3, "pvTx":Lcom/sun/javafx/geom/transform/GeneralTransform3D;
    move-object v4, v1

    if-eqz v4, :cond_0

    move-object v4, v2

    if-eqz v4, :cond_0

    move-object v4, v3

    if-nez v4, :cond_1

    :cond_0
    new-instance v4, Ljava/lang/NullPointerException;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    invoke-direct {v5}, Ljava/lang/NullPointerException;-><init>()V

    throw v4

    .line 1327
    :cond_1
    move-object v4, v0

    move-object v5, v1

    const/4 v6, -0x1

    move-object v7, v2

    move-object v8, v3

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/sun/javafx/sg/prism/NGNode;->markCullRegions(Lcom/sun/javafx/geom/DirtyRegionContainer;ILcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/javafx/geom/transform/GeneralTransform3D;)V

    .line 1328
    return-void
.end method

.method protected doRender(Lcom/sun/prism/Graphics;)V
    .locals 59

    .prologue
    .line 1978
    move-object/from16 v3, p0

    .local v3, "this":Lcom/sun/javafx/sg/prism/NGNode;
    move-object/from16 v4, p1

    .local v4, "g":Lcom/sun/prism/Graphics;
    move-object/from16 v33, v4

    move-object/from16 v34, v3

    invoke-virtual/range {v34 .. v34}, Lcom/sun/javafx/sg/prism/NGNode;->isShape3D()Z

    move-result v34

    invoke-interface/range {v33 .. v34}, Lcom/sun/prism/Graphics;->setState3D(Z)V

    .line 1980
    const/16 v33, 0x0

    move/from16 v5, v33

    .line 1981
    .local v5, "preCullingTurnedOff":Z
    sget-boolean v33, Lcom/sun/prism/impl/PrismSettings;->dirtyOptsEnabled:Z

    if-eqz v33, :cond_1

    .line 1982
    move-object/from16 v33, v4

    invoke-interface/range {v33 .. v33}, Lcom/sun/prism/Graphics;->hasPreCullingBits()Z

    move-result v33

    if-eqz v33, :cond_1

    .line 1984
    move-object/from16 v33, v3

    move-object/from16 v0, v33

    iget v0, v0, Lcom/sun/javafx/sg/prism/NGNode;->cullingBits:I

    move/from16 v33, v0

    move-object/from16 v34, v4

    invoke-interface/range {v34 .. v34}, Lcom/sun/prism/Graphics;->getClipRectIndex()I

    move-result v34

    const/16 v35, 0x2

    mul-int/lit8 v34, v34, 0x2

    shr-int v33, v33, v34

    move/from16 v6, v33

    .line 1985
    .local v6, "bits":I
    move/from16 v33, v6

    const/16 v34, 0x3

    and-int/lit8 v33, v33, 0x3

    if-nez v33, :cond_0

    .line 1988
    .line 2089
    .end local v6    # "bits":I
    :goto_0
    return-void

    .line 1989
    .restart local v6    # "bits":I
    :cond_0
    move/from16 v33, v6

    const/16 v34, 0x2

    and-int/lit8 v33, v33, 0x2

    if-eqz v33, :cond_1

    .line 1993
    move-object/from16 v33, v4

    const/16 v34, 0x0

    invoke-interface/range {v33 .. v34}, Lcom/sun/prism/Graphics;->setHasPreCullingBits(Z)V

    .line 1994
    const/16 v33, 0x1

    move/from16 v5, v33

    .line 2000
    .end local v6    # "bits":I
    :cond_1
    move-object/from16 v33, v4

    invoke-interface/range {v33 .. v33}, Lcom/sun/prism/Graphics;->isDepthTest()Z

    move-result v33

    move/from16 v6, v33

    .line 2005
    .local v6, "prevDepthTest":Z
    move-object/from16 v33, v4

    move-object/from16 v34, v3

    invoke-virtual/range {v34 .. v34}, Lcom/sun/javafx/sg/prism/NGNode;->isDepthTest()Z

    move-result v34

    invoke-interface/range {v33 .. v34}, Lcom/sun/prism/Graphics;->setDepthTest(Z)V

    .line 2008
    move-object/from16 v33, v4

    invoke-interface/range {v33 .. v33}, Lcom/sun/prism/Graphics;->getTransformNoClone()Lcom/sun/javafx/geom/transform/BaseTransform;

    move-result-object v33

    move-object/from16 v7, v33

    .line 2010
    .local v7, "prevXform":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object/from16 v33, v7

    invoke-virtual/range {v33 .. v33}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMxx()D

    move-result-wide v33

    move-wide/from16 v8, v33

    .line 2011
    .local v8, "mxx":D
    move-object/from16 v33, v7

    invoke-virtual/range {v33 .. v33}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMxy()D

    move-result-wide v33

    move-wide/from16 v10, v33

    .line 2012
    .local v10, "mxy":D
    move-object/from16 v33, v7

    invoke-virtual/range {v33 .. v33}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMxz()D

    move-result-wide v33

    move-wide/from16 v12, v33

    .line 2013
    .local v12, "mxz":D
    move-object/from16 v33, v7

    invoke-virtual/range {v33 .. v33}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMxt()D

    move-result-wide v33

    move-wide/from16 v14, v33

    .line 2015
    .local v14, "mxt":D
    move-object/from16 v33, v7

    invoke-virtual/range {v33 .. v33}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMyx()D

    move-result-wide v33

    move-wide/from16 v16, v33

    .line 2016
    .local v16, "myx":D
    move-object/from16 v33, v7

    invoke-virtual/range {v33 .. v33}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMyy()D

    move-result-wide v33

    move-wide/from16 v18, v33

    .line 2017
    .local v18, "myy":D
    move-object/from16 v33, v7

    invoke-virtual/range {v33 .. v33}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMyz()D

    move-result-wide v33

    move-wide/from16 v20, v33

    .line 2018
    .local v20, "myz":D
    move-object/from16 v33, v7

    invoke-virtual/range {v33 .. v33}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMyt()D

    move-result-wide v33

    move-wide/from16 v22, v33

    .line 2020
    .local v22, "myt":D
    move-object/from16 v33, v7

    invoke-virtual/range {v33 .. v33}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMzx()D

    move-result-wide v33

    move-wide/from16 v24, v33

    .line 2021
    .local v24, "mzx":D
    move-object/from16 v33, v7

    invoke-virtual/range {v33 .. v33}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMzy()D

    move-result-wide v33

    move-wide/from16 v26, v33

    .line 2022
    .local v26, "mzy":D
    move-object/from16 v33, v7

    invoke-virtual/range {v33 .. v33}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMzz()D

    move-result-wide v33

    move-wide/from16 v28, v33

    .line 2023
    .local v28, "mzz":D
    move-object/from16 v33, v7

    invoke-virtual/range {v33 .. v33}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMzt()D

    move-result-wide v33

    move-wide/from16 v30, v33

    .line 2034
    .local v30, "mzt":D
    move-object/from16 v33, v4

    move-object/from16 v34, v3

    invoke-virtual/range {v34 .. v34}, Lcom/sun/javafx/sg/prism/NGNode;->getTransform()Lcom/sun/javafx/geom/transform/BaseTransform;

    move-result-object v34

    invoke-interface/range {v33 .. v34}, Lcom/sun/prism/Graphics;->transform(Lcom/sun/javafx/geom/transform/BaseTransform;)V

    .line 2038
    const/16 v33, 0x0

    move/from16 v32, v33

    .line 2040
    .local v32, "p":Z
    move-object/from16 v33, v3

    invoke-virtual/range {v33 .. v33}, Lcom/sun/javafx/sg/prism/NGNode;->isShape3D()Z

    move-result v33

    if-nez v33, :cond_6

    move-object/from16 v33, v4

    move-object/from16 v0, v33

    instance-of v0, v0, Lcom/sun/prism/ReadbackGraphics;

    move/from16 v33, v0

    if-eqz v33, :cond_6

    move-object/from16 v33, v3

    invoke-virtual/range {v33 .. v33}, Lcom/sun/javafx/sg/prism/NGNode;->needsBlending()Z

    move-result v33

    if-eqz v33, :cond_6

    .line 2041
    move-object/from16 v33, v3

    move-object/from16 v34, v4

    invoke-direct/range {v33 .. v34}, Lcom/sun/javafx/sg/prism/NGNode;->renderNodeBlendMode(Lcom/sun/prism/Graphics;)V

    .line 2042
    const/16 v33, 0x1

    move/from16 v32, v33

    .line 2062
    :cond_2
    :goto_1
    move/from16 v33, v5

    if-eqz v33, :cond_3

    .line 2063
    move-object/from16 v33, v4

    const/16 v34, 0x1

    invoke-interface/range {v33 .. v34}, Lcom/sun/prism/Graphics;->setHasPreCullingBits(Z)V

    .line 2067
    :cond_3
    move-object/from16 v33, v4

    move-wide/from16 v34, v8

    move-wide/from16 v36, v10

    move-wide/from16 v38, v12

    move-wide/from16 v40, v14

    move-wide/from16 v42, v16

    move-wide/from16 v44, v18

    move-wide/from16 v46, v20

    move-wide/from16 v48, v22

    move-wide/from16 v50, v24

    move-wide/from16 v52, v26

    move-wide/from16 v54, v28

    move-wide/from16 v56, v30

    invoke-interface/range {v33 .. v57}, Lcom/sun/prism/Graphics;->setTransform3D(DDDDDDDDDDDD)V

    .line 2072
    move-object/from16 v33, v4

    move/from16 v34, v6

    invoke-interface/range {v33 .. v34}, Lcom/sun/prism/Graphics;->setDepthTest(Z)V

    .line 2074
    sget-boolean v33, Lcom/sun/javafx/logging/PulseLogger;->PULSE_LOGGING_ENABLED:Z

    if-eqz v33, :cond_4

    .line 2075
    const-string v33, "Nodes rendered"

    invoke-static/range {v33 .. v33}, Lcom/sun/javafx/logging/PulseLogger;->incrementCounter(Ljava/lang/String;)V

    .line 2082
    :cond_4
    sget-boolean v33, Lcom/sun/prism/impl/PrismSettings;->showOverdraw:Z

    if-eqz v33, :cond_5

    .line 2083
    move/from16 v33, v32

    if-eqz v33, :cond_d

    .line 2084
    move-object/from16 v33, v3

    move-object/from16 v58, v33

    move-object/from16 v33, v58

    move-object/from16 v34, v58

    move-object/from16 v0, v34

    iget v0, v0, Lcom/sun/javafx/sg/prism/NGNode;->painted:I

    move/from16 v34, v0

    const/16 v35, 0x3

    move-object/from16 v36, v4

    invoke-interface/range {v36 .. v36}, Lcom/sun/prism/Graphics;->getClipRectIndex()I

    move-result v36

    const/16 v37, 0x2

    mul-int/lit8 v36, v36, 0x2

    shl-int v35, v35, v36

    or-int v34, v34, v35

    move/from16 v0, v34

    move-object/from16 v1, v33

    iput v0, v1, Lcom/sun/javafx/sg/prism/NGNode;->painted:I

    .line 2089
    :cond_5
    :goto_2
    goto/16 :goto_0

    .line 2043
    :cond_6
    move-object/from16 v33, v3

    invoke-virtual/range {v33 .. v33}, Lcom/sun/javafx/sg/prism/NGNode;->isShape3D()Z

    move-result v33

    if-nez v33, :cond_7

    move-object/from16 v33, v3

    invoke-virtual/range {v33 .. v33}, Lcom/sun/javafx/sg/prism/NGNode;->getOpacity()F

    move-result v33

    const/high16 v34, 0x3f800000    # 1.0f

    cmpg-float v33, v33, v34

    if-gez v33, :cond_7

    .line 2044
    move-object/from16 v33, v3

    move-object/from16 v34, v4

    invoke-direct/range {v33 .. v34}, Lcom/sun/javafx/sg/prism/NGNode;->renderOpacity(Lcom/sun/prism/Graphics;)V

    .line 2045
    const/16 v33, 0x1

    move/from16 v32, v33

    goto/16 :goto_1

    .line 2046
    :cond_7
    move-object/from16 v33, v3

    invoke-virtual/range {v33 .. v33}, Lcom/sun/javafx/sg/prism/NGNode;->isShape3D()Z

    move-result v33

    if-nez v33, :cond_8

    move-object/from16 v33, v3

    invoke-virtual/range {v33 .. v33}, Lcom/sun/javafx/sg/prism/NGNode;->getCacheFilter()Lcom/sun/javafx/sg/prism/CacheFilter;

    move-result-object v33

    if-eqz v33, :cond_8

    .line 2047
    move-object/from16 v33, v3

    move-object/from16 v34, v4

    invoke-direct/range {v33 .. v34}, Lcom/sun/javafx/sg/prism/NGNode;->renderCached(Lcom/sun/prism/Graphics;)V

    .line 2048
    const/16 v33, 0x1

    move/from16 v32, v33

    goto/16 :goto_1

    .line 2049
    :cond_8
    move-object/from16 v33, v3

    invoke-virtual/range {v33 .. v33}, Lcom/sun/javafx/sg/prism/NGNode;->isShape3D()Z

    move-result v33

    if-nez v33, :cond_9

    move-object/from16 v33, v3

    invoke-virtual/range {v33 .. v33}, Lcom/sun/javafx/sg/prism/NGNode;->getClipNode()Lcom/sun/javafx/sg/prism/NGNode;

    move-result-object v33

    if-eqz v33, :cond_9

    .line 2050
    move-object/from16 v33, v3

    move-object/from16 v34, v4

    invoke-virtual/range {v33 .. v34}, Lcom/sun/javafx/sg/prism/NGNode;->renderClip(Lcom/sun/prism/Graphics;)V

    .line 2051
    const/16 v33, 0x1

    move/from16 v32, v33

    goto/16 :goto_1

    .line 2052
    :cond_9
    move-object/from16 v33, v3

    invoke-virtual/range {v33 .. v33}, Lcom/sun/javafx/sg/prism/NGNode;->isShape3D()Z

    move-result v33

    if-nez v33, :cond_a

    move-object/from16 v33, v3

    invoke-virtual/range {v33 .. v33}, Lcom/sun/javafx/sg/prism/NGNode;->getEffectFilter()Lcom/sun/javafx/sg/prism/EffectFilter;

    move-result-object v33

    if-eqz v33, :cond_a

    sget-object v33, Lcom/sun/javafx/sg/prism/NGNode;->effectsSupported:Ljava/lang/Boolean;

    invoke-virtual/range {v33 .. v33}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v33

    if-eqz v33, :cond_a

    .line 2053
    move-object/from16 v33, v3

    move-object/from16 v34, v4

    invoke-virtual/range {v33 .. v34}, Lcom/sun/javafx/sg/prism/NGNode;->renderEffect(Lcom/sun/prism/Graphics;)V

    .line 2054
    const/16 v33, 0x1

    move/from16 v32, v33

    goto/16 :goto_1

    .line 2056
    :cond_a
    move-object/from16 v33, v3

    move-object/from16 v34, v4

    invoke-virtual/range {v33 .. v34}, Lcom/sun/javafx/sg/prism/NGNode;->renderContent(Lcom/sun/prism/Graphics;)V

    .line 2057
    sget-boolean v33, Lcom/sun/prism/impl/PrismSettings;->showOverdraw:Z

    if-eqz v33, :cond_2

    .line 2058
    move-object/from16 v33, v3

    move-object/from16 v0, v33

    instance-of v0, v0, Lcom/sun/javafx/sg/prism/NGRegion;

    move/from16 v33, v0

    if-nez v33, :cond_b

    move-object/from16 v33, v3

    move-object/from16 v0, v33

    instance-of v0, v0, Lcom/sun/javafx/sg/prism/NGGroup;

    move/from16 v33, v0

    if-nez v33, :cond_c

    :cond_b
    const/16 v33, 0x1

    :goto_3
    move/from16 v32, v33

    goto/16 :goto_1

    :cond_c
    const/16 v33, 0x0

    goto :goto_3

    .line 2086
    :cond_d
    move-object/from16 v33, v3

    move-object/from16 v58, v33

    move-object/from16 v33, v58

    move-object/from16 v34, v58

    move-object/from16 v0, v34

    iget v0, v0, Lcom/sun/javafx/sg/prism/NGNode;->painted:I

    move/from16 v34, v0

    const/16 v35, 0x1

    move-object/from16 v36, v4

    invoke-interface/range {v36 .. v36}, Lcom/sun/prism/Graphics;->getClipRectIndex()I

    move-result v36

    const/16 v37, 0x2

    mul-int/lit8 v36, v36, 0x2

    shl-int v35, v35, v36

    or-int v34, v34, v35

    move/from16 v0, v34

    move-object/from16 v1, v33

    iput v0, v1, Lcom/sun/javafx/sg/prism/NGNode;->painted:I

    goto/16 :goto_2
.end method

.method public drawDirtyOpts(Lcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/javafx/geom/transform/GeneralTransform3D;Lcom/sun/javafx/geom/Rectangle;[II)V
    .locals 23

    .prologue
    .line 1510
    move-object/from16 v3, p0

    .local v3, "this":Lcom/sun/javafx/sg/prism/NGNode;
    move-object/from16 v4, p1

    .local v4, "tx":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object/from16 v5, p2

    .local v5, "pvTx":Lcom/sun/javafx/geom/transform/GeneralTransform3D;
    move-object/from16 v6, p3

    .local v6, "clipBounds":Lcom/sun/javafx/geom/Rectangle;
    move-object/from16 v7, p4

    .local v7, "colorBuffer":[I
    move/from16 v8, p5

    .local v8, "dirtyRegionIndex":I
    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget v0, v0, Lcom/sun/javafx/sg/prism/NGNode;->painted:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v20, v8

    const/16 v21, 0x2

    mul-int/lit8 v20, v20, 0x2

    shl-int v19, v19, v20

    and-int v18, v18, v19

    if-eqz v18, :cond_7

    .line 1512
    move-object/from16 v18, v4

    invoke-virtual/range {v18 .. v18}, Lcom/sun/javafx/geom/transform/BaseTransform;->copy()Lcom/sun/javafx/geom/transform/BaseTransform;

    move-result-object v18

    move-object/from16 v19, v3

    invoke-virtual/range {v19 .. v19}, Lcom/sun/javafx/sg/prism/NGNode;->getTransform()Lcom/sun/javafx/geom/transform/BaseTransform;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lcom/sun/javafx/geom/transform/BaseTransform;->deriveWithConcatenation(Lcom/sun/javafx/geom/transform/BaseTransform;)Lcom/sun/javafx/geom/transform/BaseTransform;

    move-result-object v18

    move-object/from16 v19, v3

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/sun/javafx/sg/prism/NGNode;->contentBounds:Lcom/sun/javafx/geom/BaseBounds;

    move-object/from16 v19, v0

    sget-object v20, Lcom/sun/javafx/sg/prism/NGNode;->TEMP_BOUNDS:Lcom/sun/javafx/geom/BoxBounds;

    invoke-virtual/range {v18 .. v20}, Lcom/sun/javafx/geom/transform/BaseTransform;->transform(Lcom/sun/javafx/geom/BaseBounds;Lcom/sun/javafx/geom/BaseBounds;)Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v18

    .line 1513
    move-object/from16 v18, v5

    if-eqz v18, :cond_0

    move-object/from16 v18, v5

    sget-object v19, Lcom/sun/javafx/sg/prism/NGNode;->TEMP_BOUNDS:Lcom/sun/javafx/geom/BoxBounds;

    sget-object v20, Lcom/sun/javafx/sg/prism/NGNode;->TEMP_BOUNDS:Lcom/sun/javafx/geom/BoxBounds;

    invoke-virtual/range {v18 .. v20}, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->transform(Lcom/sun/javafx/geom/BaseBounds;Lcom/sun/javafx/geom/BaseBounds;)Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v18

    .line 1514
    :cond_0
    new-instance v18, Lcom/sun/javafx/geom/RectBounds;

    move-object/from16 v22, v18

    move-object/from16 v18, v22

    move-object/from16 v19, v22

    invoke-direct/range {v19 .. v19}, Lcom/sun/javafx/geom/RectBounds;-><init>()V

    move-object/from16 v9, v18

    .line 1515
    .local v9, "bounds":Lcom/sun/javafx/geom/RectBounds;
    sget-object v18, Lcom/sun/javafx/sg/prism/NGNode;->TEMP_BOUNDS:Lcom/sun/javafx/geom/BoxBounds;

    move-object/from16 v19, v9

    invoke-virtual/range {v18 .. v19}, Lcom/sun/javafx/geom/BoxBounds;->flattenInto(Lcom/sun/javafx/geom/RectBounds;)Lcom/sun/javafx/geom/RectBounds;

    move-result-object v18

    .line 1521
    sget-boolean v18, Lcom/sun/javafx/sg/prism/NGNode;->$assertionsDisabled:Z

    if-nez v18, :cond_1

    move-object/from16 v18, v6

    move-object/from16 v0, v18

    iget v0, v0, Lcom/sun/javafx/geom/Rectangle;->width:I

    move/from16 v18, v0

    move-object/from16 v19, v6

    move-object/from16 v0, v19

    iget v0, v0, Lcom/sun/javafx/geom/Rectangle;->height:I

    move/from16 v19, v0

    mul-int v18, v18, v19

    move-object/from16 v19, v7

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_1

    new-instance v18, Ljava/lang/AssertionError;

    move-object/from16 v22, v18

    move-object/from16 v18, v22

    move-object/from16 v19, v22

    invoke-direct/range {v19 .. v19}, Ljava/lang/AssertionError;-><init>()V

    throw v18

    .line 1522
    :cond_1
    move-object/from16 v18, v9

    move-object/from16 v19, v6

    invoke-virtual/range {v18 .. v19}, Lcom/sun/javafx/geom/RectBounds;->intersectWith(Lcom/sun/javafx/geom/Rectangle;)V

    .line 1523
    move-object/from16 v18, v9

    invoke-virtual/range {v18 .. v18}, Lcom/sun/javafx/geom/RectBounds;->getMinX()F

    move-result v18

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    move-object/from16 v19, v6

    move-object/from16 v0, v19

    iget v0, v0, Lcom/sun/javafx/geom/Rectangle;->x:I

    move/from16 v19, v0

    sub-int v18, v18, v19

    move/from16 v10, v18

    .line 1524
    .local v10, "x":I
    move-object/from16 v18, v9

    invoke-virtual/range {v18 .. v18}, Lcom/sun/javafx/geom/RectBounds;->getMinY()F

    move-result v18

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    move-object/from16 v19, v6

    move-object/from16 v0, v19

    iget v0, v0, Lcom/sun/javafx/geom/Rectangle;->y:I

    move/from16 v19, v0

    sub-int v18, v18, v19

    move/from16 v11, v18

    .line 1525
    .local v11, "y":I
    move-object/from16 v18, v9

    invoke-virtual/range {v18 .. v18}, Lcom/sun/javafx/geom/RectBounds;->getWidth()F

    move-result v18

    move/from16 v0, v18

    float-to-double v0, v0

    move-wide/from16 v18, v0

    const-wide/high16 v20, 0x3fe0000000000000L    # 0.5

    add-double v18, v18, v20

    move-wide/from16 v0, v18

    double-to-int v0, v0

    move/from16 v18, v0

    move/from16 v12, v18

    .line 1526
    .local v12, "w":I
    move-object/from16 v18, v9

    invoke-virtual/range {v18 .. v18}, Lcom/sun/javafx/geom/RectBounds;->getHeight()F

    move-result v18

    move/from16 v0, v18

    float-to-double v0, v0

    move-wide/from16 v18, v0

    const-wide/high16 v20, 0x3fe0000000000000L    # 0.5

    add-double v18, v18, v20

    move-wide/from16 v0, v18

    double-to-int v0, v0

    move/from16 v18, v0

    move/from16 v13, v18

    .line 1528
    .local v13, "h":I
    move/from16 v18, v12

    if-eqz v18, :cond_2

    move/from16 v18, v13

    if-nez v18, :cond_3

    .line 1531
    .line 1572
    .end local v9    # "bounds":Lcom/sun/javafx/geom/RectBounds;
    .end local v10    # "x":I
    .end local v11    # "y":I
    .end local v12    # "w":I
    .end local v13    # "h":I
    :cond_2
    :goto_0
    return-void

    .line 1536
    .restart local v9    # "bounds":Lcom/sun/javafx/geom/RectBounds;
    .restart local v10    # "x":I
    .restart local v11    # "y":I
    .restart local v12    # "w":I
    .restart local v13    # "h":I
    :cond_3
    move/from16 v18, v11

    move/from16 v14, v18

    .local v14, "i":I
    :goto_1
    move/from16 v18, v14

    move/from16 v19, v11

    move/from16 v20, v13

    add-int v19, v19, v20

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_7

    .line 1537
    move/from16 v18, v10

    move/from16 v15, v18

    .local v15, "j":I
    :goto_2
    move/from16 v18, v15

    move/from16 v19, v10

    move/from16 v20, v12

    add-int v19, v19, v20

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_6

    .line 1538
    move/from16 v18, v14

    move-object/from16 v19, v6

    move-object/from16 v0, v19

    iget v0, v0, Lcom/sun/javafx/geom/Rectangle;->width:I

    move/from16 v19, v0

    mul-int v18, v18, v19

    move/from16 v19, v15

    add-int v18, v18, v19

    move/from16 v16, v18

    .line 1539
    .local v16, "index":I
    move-object/from16 v18, v7

    move/from16 v19, v16

    aget v18, v18, v19

    move/from16 v17, v18

    .line 1548
    .local v17, "color":I
    move/from16 v18, v17

    if-nez v18, :cond_5

    .line 1549
    const v18, 0x8007f00

    move/from16 v17, v18

    .line 1568
    :cond_4
    :goto_3
    move-object/from16 v18, v7

    move/from16 v19, v16

    move/from16 v20, v17

    aput v20, v18, v19

    .line 1537
    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    .line 1550
    :cond_5
    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget v0, v0, Lcom/sun/javafx/sg/prism/NGNode;->painted:I

    move/from16 v18, v0

    const/16 v19, 0x3

    move/from16 v20, v8

    const/16 v21, 0x2

    mul-int/lit8 v20, v20, 0x2

    shl-int v19, v19, v20

    and-int v18, v18, v19

    const/16 v19, 0x3

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_4

    .line 1551
    move/from16 v18, v17

    sparse-switch v18, :sswitch_data_0

    .line 1565
    const/high16 v18, -0x7f800000

    move/from16 v17, v18

    goto :goto_3

    .line 1553
    :sswitch_0
    const v18, -0x7fff8000

    move/from16 v17, v18

    .line 1554
    goto :goto_3

    .line 1556
    :sswitch_1
    const v18, -0x7f808100

    move/from16 v17, v18

    .line 1557
    goto :goto_3

    .line 1559
    :sswitch_2
    const v18, -0x7f7f8000

    move/from16 v17, v18

    .line 1560
    goto :goto_3

    .line 1562
    :sswitch_3
    const/high16 v18, -0x7f810000

    move/from16 v17, v18

    .line 1563
    goto :goto_3

    .line 1536
    .end local v16    # "index":I
    .end local v17    # "color":I
    :cond_6
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_1

    .line 1572
    .end local v9    # "bounds":Lcom/sun/javafx/geom/RectBounds;
    .end local v10    # "x":I
    .end local v11    # "y":I
    .end local v12    # "w":I
    .end local v13    # "h":I
    .end local v14    # "i":I
    .end local v15    # "j":I
    :cond_7
    goto/16 :goto_0

    .line 1551
    nop

    :sswitch_data_0
    .sparse-switch
        -0x7fff8100 -> :sswitch_0
        -0x7fff8000 -> :sswitch_1
        -0x7f808100 -> :sswitch_2
        -0x7f7f8000 -> :sswitch_3
    .end sparse-switch
.end method

.method public effectChanged()V
    .locals 2

    .prologue
    .line 584
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGNode;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/sg/prism/NGNode;->visualsChanged()V

    .line 585
    return-void
.end method

.method protected geometryChanged()V
    .locals 2

    .prologue
    .line 778
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGNode;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/sg/prism/NGNode;->invalidateCache()V

    .line 779
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/sg/prism/NGNode;->invalidateOpaqueRegion()V

    .line 780
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/sg/prism/NGNode;->hasVisuals()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 781
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/sg/prism/NGNode;->markDirty()V

    .line 783
    :cond_0
    return-void
.end method

.method public final getCacheFilter()Lcom/sun/javafx/sg/prism/CacheFilter;
    .locals 2

    .prologue
    .line 648
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGNode;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/sg/prism/NGNode;->cacheFilter:Lcom/sun/javafx/sg/prism/CacheFilter;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/sg/prism/NGNode;
    return-object v0
.end method

.method public final getClipNode()Lcom/sun/javafx/sg/prism/NGNode;
    .locals 2

    .prologue
    .line 650
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGNode;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/sg/prism/NGNode;->clipNode:Lcom/sun/javafx/sg/prism/NGNode;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/sg/prism/NGNode;
    return-object v0
.end method

.method public final getClippedBounds(Lcom/sun/javafx/geom/BaseBounds;Lcom/sun/javafx/geom/transform/BaseTransform;)Lcom/sun/javafx/geom/BaseBounds;
    .locals 17

    .prologue
    .line 707
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGNode;
    move-object/from16 v1, p1

    .local v1, "bounds":Lcom/sun/javafx/geom/BaseBounds;
    move-object/from16 v2, p2

    .local v2, "tx":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object v10, v0

    move-object v11, v1

    move-object v12, v2

    invoke-virtual {v10, v11, v12}, Lcom/sun/javafx/sg/prism/NGNode;->getEffectBounds(Lcom/sun/javafx/geom/BaseBounds;Lcom/sun/javafx/geom/transform/BaseTransform;)Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v10

    move-object v3, v10

    .line 708
    .local v3, "effectBounds":Lcom/sun/javafx/geom/BaseBounds;
    move-object v10, v0

    iget-object v10, v10, Lcom/sun/javafx/sg/prism/NGNode;->clipNode:Lcom/sun/javafx/sg/prism/NGNode;

    if-eqz v10, :cond_0

    .line 712
    move-object v10, v3

    invoke-virtual {v10}, Lcom/sun/javafx/geom/BaseBounds;->getMinX()F

    move-result v10

    move v4, v10

    .line 713
    .local v4, "ex1":F
    move-object v10, v3

    invoke-virtual {v10}, Lcom/sun/javafx/geom/BaseBounds;->getMinY()F

    move-result v10

    move v5, v10

    .line 714
    .local v5, "ey1":F
    move-object v10, v3

    invoke-virtual {v10}, Lcom/sun/javafx/geom/BaseBounds;->getMinZ()F

    move-result v10

    move v6, v10

    .line 715
    .local v6, "ez1":F
    move-object v10, v3

    invoke-virtual {v10}, Lcom/sun/javafx/geom/BaseBounds;->getMaxX()F

    move-result v10

    move v7, v10

    .line 716
    .local v7, "ex2":F
    move-object v10, v3

    invoke-virtual {v10}, Lcom/sun/javafx/geom/BaseBounds;->getMaxY()F

    move-result v10

    move v8, v10

    .line 717
    .local v8, "ey2":F
    move-object v10, v3

    invoke-virtual {v10}, Lcom/sun/javafx/geom/BaseBounds;->getMaxZ()F

    move-result v10

    move v9, v10

    .line 718
    .local v9, "ez2":F
    move-object v10, v0

    iget-object v10, v10, Lcom/sun/javafx/sg/prism/NGNode;->clipNode:Lcom/sun/javafx/sg/prism/NGNode;

    move-object v11, v3

    move-object v12, v2

    invoke-virtual {v10, v11, v12}, Lcom/sun/javafx/sg/prism/NGNode;->getCompleteBounds(Lcom/sun/javafx/geom/BaseBounds;Lcom/sun/javafx/geom/transform/BaseTransform;)Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v10

    move-object v3, v10

    .line 719
    move-object v10, v3

    move v11, v4

    move v12, v5

    move v13, v6

    move v14, v7

    move v15, v8

    move/from16 v16, v9

    invoke-virtual/range {v10 .. v16}, Lcom/sun/javafx/geom/BaseBounds;->intersectWith(FFFFFF)V

    .line 721
    .end local v4    # "ex1":F
    .end local v5    # "ey1":F
    .end local v6    # "ez1":F
    .end local v7    # "ex2":F
    .end local v8    # "ey2":F
    .end local v9    # "ez2":F
    :cond_0
    move-object v10, v3

    move-object v0, v10

    .end local v0    # "this":Lcom/sun/javafx/sg/prism/NGNode;
    return-object v0
.end method

.method public final getCompleteBounds(Lcom/sun/javafx/geom/BaseBounds;Lcom/sun/javafx/geom/transform/BaseTransform;)Lcom/sun/javafx/geom/BaseBounds;
    .locals 56

    .prologue
    .line 733
    move-object/from16 v3, p0

    .local v3, "this":Lcom/sun/javafx/sg/prism/NGNode;
    move-object/from16 v4, p1

    .local v4, "bounds":Lcom/sun/javafx/geom/BaseBounds;
    move-object/from16 v5, p2

    .local v5, "tx":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object/from16 v31, v5

    invoke-virtual/range {v31 .. v31}, Lcom/sun/javafx/geom/transform/BaseTransform;->isIdentity()Z

    move-result v31

    if-eqz v31, :cond_0

    .line 734
    move-object/from16 v31, v4

    move-object/from16 v32, v3

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/sun/javafx/sg/prism/NGNode;->transformedBounds:Lcom/sun/javafx/geom/BaseBounds;

    move-object/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Lcom/sun/javafx/geom/BaseBounds;->deriveWithNewBounds(Lcom/sun/javafx/geom/BaseBounds;)Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v31

    move-object/from16 v4, v31

    .line 735
    move-object/from16 v31, v4

    move-object/from16 v3, v31

    .line 758
    .end local v3    # "this":Lcom/sun/javafx/sg/prism/NGNode;
    :goto_0
    return-object v3

    .line 736
    .restart local v3    # "this":Lcom/sun/javafx/sg/prism/NGNode;
    :cond_0
    move-object/from16 v31, v3

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/sun/javafx/sg/prism/NGNode;->transform:Lcom/sun/javafx/geom/transform/BaseTransform;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/sun/javafx/geom/transform/BaseTransform;->isIdentity()Z

    move-result v31

    if-eqz v31, :cond_1

    .line 737
    move-object/from16 v31, v3

    move-object/from16 v32, v4

    move-object/from16 v33, v5

    invoke-virtual/range {v31 .. v33}, Lcom/sun/javafx/sg/prism/NGNode;->getClippedBounds(Lcom/sun/javafx/geom/BaseBounds;Lcom/sun/javafx/geom/transform/BaseTransform;)Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v31

    move-object/from16 v3, v31

    goto :goto_0

    .line 739
    :cond_1
    move-object/from16 v31, v5

    invoke-virtual/range {v31 .. v31}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMxx()D

    move-result-wide v31

    move-wide/from16 v6, v31

    .line 740
    .local v6, "mxx":D
    move-object/from16 v31, v5

    invoke-virtual/range {v31 .. v31}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMxy()D

    move-result-wide v31

    move-wide/from16 v8, v31

    .line 741
    .local v8, "mxy":D
    move-object/from16 v31, v5

    invoke-virtual/range {v31 .. v31}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMxz()D

    move-result-wide v31

    move-wide/from16 v10, v31

    .line 742
    .local v10, "mxz":D
    move-object/from16 v31, v5

    invoke-virtual/range {v31 .. v31}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMxt()D

    move-result-wide v31

    move-wide/from16 v12, v31

    .line 743
    .local v12, "mxt":D
    move-object/from16 v31, v5

    invoke-virtual/range {v31 .. v31}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMyx()D

    move-result-wide v31

    move-wide/from16 v14, v31

    .line 744
    .local v14, "myx":D
    move-object/from16 v31, v5

    invoke-virtual/range {v31 .. v31}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMyy()D

    move-result-wide v31

    move-wide/from16 v16, v31

    .line 745
    .local v16, "myy":D
    move-object/from16 v31, v5

    invoke-virtual/range {v31 .. v31}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMyz()D

    move-result-wide v31

    move-wide/from16 v18, v31

    .line 746
    .local v18, "myz":D
    move-object/from16 v31, v5

    invoke-virtual/range {v31 .. v31}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMyt()D

    move-result-wide v31

    move-wide/from16 v20, v31

    .line 747
    .local v20, "myt":D
    move-object/from16 v31, v5

    invoke-virtual/range {v31 .. v31}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMzx()D

    move-result-wide v31

    move-wide/from16 v22, v31

    .line 748
    .local v22, "mzx":D
    move-object/from16 v31, v5

    invoke-virtual/range {v31 .. v31}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMzy()D

    move-result-wide v31

    move-wide/from16 v24, v31

    .line 749
    .local v24, "mzy":D
    move-object/from16 v31, v5

    invoke-virtual/range {v31 .. v31}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMzz()D

    move-result-wide v31

    move-wide/from16 v26, v31

    .line 750
    .local v26, "mzz":D
    move-object/from16 v31, v5

    invoke-virtual/range {v31 .. v31}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMzt()D

    move-result-wide v31

    move-wide/from16 v28, v31

    .line 751
    .local v28, "mzt":D
    move-object/from16 v31, v5

    move-object/from16 v32, v3

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/sun/javafx/sg/prism/NGNode;->transform:Lcom/sun/javafx/geom/transform/BaseTransform;

    move-object/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Lcom/sun/javafx/geom/transform/BaseTransform;->deriveWithConcatenation(Lcom/sun/javafx/geom/transform/BaseTransform;)Lcom/sun/javafx/geom/transform/BaseTransform;

    move-result-object v31

    move-object/from16 v30, v31

    .line 752
    .local v30, "boundsTx":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object/from16 v31, v3

    move-object/from16 v32, v4

    move-object/from16 v33, v5

    invoke-virtual/range {v31 .. v33}, Lcom/sun/javafx/sg/prism/NGNode;->getClippedBounds(Lcom/sun/javafx/geom/BaseBounds;Lcom/sun/javafx/geom/transform/BaseTransform;)Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v31

    move-object/from16 v4, v31

    .line 753
    move-object/from16 v31, v30

    move-object/from16 v32, v5

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    if-ne v0, v1, :cond_2

    .line 754
    move-object/from16 v31, v5

    move-wide/from16 v32, v6

    move-wide/from16 v34, v8

    move-wide/from16 v36, v10

    move-wide/from16 v38, v12

    move-wide/from16 v40, v14

    move-wide/from16 v42, v16

    move-wide/from16 v44, v18

    move-wide/from16 v46, v20

    move-wide/from16 v48, v22

    move-wide/from16 v50, v24

    move-wide/from16 v52, v26

    move-wide/from16 v54, v28

    invoke-virtual/range {v31 .. v55}, Lcom/sun/javafx/geom/transform/BaseTransform;->restoreTransform(DDDDDDDDDDDD)V

    .line 758
    :cond_2
    move-object/from16 v31, v4

    move-object/from16 v3, v31

    goto/16 :goto_0
.end method

.method public getContentBounds(Lcom/sun/javafx/geom/BaseBounds;Lcom/sun/javafx/geom/transform/BaseTransform;)Lcom/sun/javafx/geom/BaseBounds;
    .locals 14

    .prologue
    .line 653
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGNode;
    move-object v1, p1

    .local v1, "bounds":Lcom/sun/javafx/geom/BaseBounds;
    move-object/from16 v2, p2

    .local v2, "tx":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object v6, v2

    invoke-virtual {v6}, Lcom/sun/javafx/geom/transform/BaseTransform;->isTranslateOrIdentity()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 654
    move-object v6, v1

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/sg/prism/NGNode;->contentBounds:Lcom/sun/javafx/geom/BaseBounds;

    invoke-virtual {v6, v7}, Lcom/sun/javafx/geom/BaseBounds;->deriveWithNewBounds(Lcom/sun/javafx/geom/BaseBounds;)Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v6

    move-object v1, v6

    .line 655
    move-object v6, v2

    invoke-virtual {v6}, Lcom/sun/javafx/geom/transform/BaseTransform;->isIdentity()Z

    move-result v6

    if-nez v6, :cond_0

    .line 656
    move-object v6, v2

    invoke-virtual {v6}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMxt()D

    move-result-wide v6

    double-to-float v6, v6

    move v3, v6

    .line 657
    .local v3, "translateX":F
    move-object v6, v2

    invoke-virtual {v6}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMyt()D

    move-result-wide v6

    double-to-float v6, v6

    move v4, v6

    .line 658
    .local v4, "translateY":F
    move-object v6, v2

    invoke-virtual {v6}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMzt()D

    move-result-wide v6

    double-to-float v6, v6

    move v5, v6

    .line 659
    .local v5, "translateZ":F
    move-object v6, v1

    move-object v7, v1

    .line 660
    invoke-virtual {v7}, Lcom/sun/javafx/geom/BaseBounds;->getMinX()F

    move-result v7

    move v8, v3

    add-float/2addr v7, v8

    move-object v8, v1

    .line 661
    invoke-virtual {v8}, Lcom/sun/javafx/geom/BaseBounds;->getMinY()F

    move-result v8

    move v9, v4

    add-float/2addr v8, v9

    move-object v9, v1

    .line 662
    invoke-virtual {v9}, Lcom/sun/javafx/geom/BaseBounds;->getMinZ()F

    move-result v9

    move v10, v5

    add-float/2addr v9, v10

    move-object v10, v1

    .line 663
    invoke-virtual {v10}, Lcom/sun/javafx/geom/BaseBounds;->getMaxX()F

    move-result v10

    move v11, v3

    add-float/2addr v10, v11

    move-object v11, v1

    .line 664
    invoke-virtual {v11}, Lcom/sun/javafx/geom/BaseBounds;->getMaxY()F

    move-result v11

    move v12, v4

    add-float/2addr v11, v12

    move-object v12, v1

    .line 665
    invoke-virtual {v12}, Lcom/sun/javafx/geom/BaseBounds;->getMaxZ()F

    move-result v12

    move v13, v5

    add-float/2addr v12, v13

    .line 659
    invoke-virtual/range {v6 .. v12}, Lcom/sun/javafx/geom/BaseBounds;->deriveWithNewBounds(FFFFFF)Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v6

    move-object v1, v6

    .line 667
    .end local v3    # "translateX":F
    .end local v4    # "translateY":F
    .end local v5    # "translateZ":F
    :cond_0
    move-object v6, v1

    move-object v0, v6

    .line 672
    .end local v0    # "this":Lcom/sun/javafx/sg/prism/NGNode;
    :goto_0
    return-object v0

    .restart local v0    # "this":Lcom/sun/javafx/sg/prism/NGNode;
    :cond_1
    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    invoke-direct {v6, v7, v8}, Lcom/sun/javafx/sg/prism/NGNode;->computeBounds(Lcom/sun/javafx/geom/BaseBounds;Lcom/sun/javafx/geom/transform/BaseTransform;)Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v6

    move-object v0, v6

    goto :goto_0
.end method

.method protected final getEffect()Lcom/sun/scenario/effect/Effect;
    .locals 2

    .prologue
    .line 637
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGNode;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/sg/prism/NGNode;->effectFilter:Lcom/sun/javafx/sg/prism/EffectFilter;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/sg/prism/NGNode;
    return-object v0

    .restart local v0    # "this":Lcom/sun/javafx/sg/prism/NGNode;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/sg/prism/NGNode;->effectFilter:Lcom/sun/javafx/sg/prism/EffectFilter;

    invoke-virtual {v1}, Lcom/sun/javafx/sg/prism/EffectFilter;->getEffect()Lcom/sun/scenario/effect/Effect;

    move-result-object v1

    goto :goto_0
.end method

.method public final getEffectBounds(Lcom/sun/javafx/geom/BaseBounds;Lcom/sun/javafx/geom/transform/BaseTransform;)Lcom/sun/javafx/geom/BaseBounds;
    .locals 6

    .prologue
    .line 725
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGNode;
    move-object v1, p1

    .local v1, "bounds":Lcom/sun/javafx/geom/BaseBounds;
    move-object v2, p2

    .local v2, "tx":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/sg/prism/NGNode;->effectFilter:Lcom/sun/javafx/sg/prism/EffectFilter;

    if-eqz v3, :cond_0

    .line 726
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/sg/prism/NGNode;->effectFilter:Lcom/sun/javafx/sg/prism/EffectFilter;

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/sg/prism/EffectFilter;->getBounds(Lcom/sun/javafx/geom/BaseBounds;Lcom/sun/javafx/geom/transform/BaseTransform;)Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v3

    move-object v0, v3

    .line 728
    .end local v0    # "this":Lcom/sun/javafx/sg/prism/NGNode;
    :goto_0
    return-object v0

    .restart local v0    # "this":Lcom/sun/javafx/sg/prism/NGNode;
    :cond_0
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/sg/prism/NGNode;->getContentBounds(Lcom/sun/javafx/geom/BaseBounds;Lcom/sun/javafx/geom/transform/BaseTransform;)Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v3

    move-object v0, v3

    goto :goto_0
.end method

.method public final getEffectFilter()Lcom/sun/javafx/sg/prism/EffectFilter;
    .locals 2

    .prologue
    .line 649
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGNode;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/sg/prism/NGNode;->effectFilter:Lcom/sun/javafx/sg/prism/EffectFilter;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/sg/prism/NGNode;
    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 634
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGNode;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/sg/prism/NGNode;->name:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/sg/prism/NGNode;
    return-object v0
.end method

.method public final getNodeBlendMode()Lcom/sun/scenario/effect/Blend$Mode;
    .locals 2

    .prologue
    .line 646
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGNode;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/sg/prism/NGNode;->nodeBlendMode:Lcom/sun/scenario/effect/Blend$Mode;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/sg/prism/NGNode;
    return-object v0
.end method

.method public final getOpacity()F
    .locals 2

    .prologue
    .line 645
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGNode;
    move-object v1, v0

    iget v1, v1, Lcom/sun/javafx/sg/prism/NGNode;->opacity:F

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/sg/prism/NGNode;
    return v0
.end method

.method public final getOpaqueRegion()Lcom/sun/javafx/geom/RectBounds;
    .locals 10

    .prologue
    .line 1820
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGNode;
    move-object v4, v0

    iget-boolean v4, v4, Lcom/sun/javafx/sg/prism/NGNode;->opaqueRegionInvalid:Z

    if-nez v4, :cond_0

    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/javafx/sg/prism/NGNode;->getEffect()Lcom/sun/scenario/effect/Effect;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 1821
    :cond_0
    move-object v4, v0

    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/sun/javafx/sg/prism/NGNode;->opaqueRegionInvalid:Z

    .line 1822
    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/javafx/sg/prism/NGNode;->supportsOpaqueRegions()Z

    move-result v4

    if-eqz v4, :cond_7

    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/javafx/sg/prism/NGNode;->hasOpaqueRegion()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1823
    move-object v4, v0

    move-object v5, v0

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/sg/prism/NGNode;->opaqueRegion:Lcom/sun/javafx/geom/RectBounds;

    if-nez v6, :cond_1

    new-instance v6, Lcom/sun/javafx/geom/RectBounds;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Lcom/sun/javafx/geom/RectBounds;-><init>()V

    :goto_0
    invoke-virtual {v5, v6}, Lcom/sun/javafx/sg/prism/NGNode;->computeOpaqueRegion(Lcom/sun/javafx/geom/RectBounds;)Lcom/sun/javafx/geom/RectBounds;

    move-result-object v5

    iput-object v5, v4, Lcom/sun/javafx/sg/prism/NGNode;->opaqueRegion:Lcom/sun/javafx/geom/RectBounds;

    .line 1829
    sget-boolean v4, Lcom/sun/javafx/sg/prism/NGNode;->$assertionsDisabled:Z

    if-nez v4, :cond_2

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/sg/prism/NGNode;->opaqueRegion:Lcom/sun/javafx/geom/RectBounds;

    if-nez v4, :cond_2

    new-instance v4, Ljava/lang/AssertionError;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 1823
    :cond_1
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/sg/prism/NGNode;->opaqueRegion:Lcom/sun/javafx/geom/RectBounds;

    goto :goto_0

    .line 1830
    :cond_2
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/sg/prism/NGNode;->opaqueRegion:Lcom/sun/javafx/geom/RectBounds;

    if-nez v4, :cond_3

    .line 1831
    const/4 v4, 0x0

    move-object v0, v4

    .line 1863
    .end local v0    # "this":Lcom/sun/javafx/sg/prism/NGNode;
    :goto_1
    return-object v0

    .line 1837
    .restart local v0    # "this":Lcom/sun/javafx/sg/prism/NGNode;
    :cond_3
    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/javafx/sg/prism/NGNode;->getClipNode()Lcom/sun/javafx/sg/prism/NGNode;

    move-result-object v4

    move-object v1, v4

    .line 1838
    .local v1, "clip":Lcom/sun/javafx/sg/prism/NGNode;
    move-object v4, v1

    if-eqz v4, :cond_6

    .line 1839
    move-object v4, v1

    invoke-virtual {v4}, Lcom/sun/javafx/sg/prism/NGNode;->getOpaqueRegion()Lcom/sun/javafx/geom/RectBounds;

    move-result-object v4

    move-object v2, v4

    .line 1842
    .local v2, "clipOpaqueRegion":Lcom/sun/javafx/geom/RectBounds;
    move-object v4, v2

    if-eqz v4, :cond_4

    move-object v4, v1

    invoke-virtual {v4}, Lcom/sun/javafx/sg/prism/NGNode;->getTransform()Lcom/sun/javafx/geom/transform/BaseTransform;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sun/javafx/geom/transform/BaseTransform;->getType()I

    move-result v4

    const/4 v5, -0x8

    and-int/lit8 v4, v4, -0x8

    if-eqz v4, :cond_5

    .line 1847
    :cond_4
    move-object v4, v0

    const/4 v5, 0x0

    move-object v8, v4

    move-object v9, v5

    move-object v4, v9

    move-object v5, v8

    move-object v6, v9

    iput-object v6, v5, Lcom/sun/javafx/sg/prism/NGNode;->opaqueRegion:Lcom/sun/javafx/geom/RectBounds;

    move-object v0, v4

    goto :goto_1

    .line 1851
    :cond_5
    move-object v4, v1

    invoke-virtual {v4}, Lcom/sun/javafx/sg/prism/NGNode;->getTransform()Lcom/sun/javafx/geom/transform/BaseTransform;

    move-result-object v4

    move-object v5, v2

    sget-object v6, Lcom/sun/javafx/sg/prism/NGNode;->TEMP_BOUNDS:Lcom/sun/javafx/geom/BoxBounds;

    invoke-virtual {v4, v5, v6}, Lcom/sun/javafx/geom/transform/BaseTransform;->transform(Lcom/sun/javafx/geom/BaseBounds;Lcom/sun/javafx/geom/BaseBounds;)Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v4

    move-object v3, v4

    .line 1852
    .local v3, "b":Lcom/sun/javafx/geom/BaseBounds;
    move-object v4, v3

    sget-object v5, Lcom/sun/javafx/sg/prism/NGNode;->TEMP_RECT_BOUNDS:Lcom/sun/javafx/geom/RectBounds;

    invoke-virtual {v4, v5}, Lcom/sun/javafx/geom/BaseBounds;->flattenInto(Lcom/sun/javafx/geom/RectBounds;)Lcom/sun/javafx/geom/RectBounds;

    move-result-object v4

    .line 1853
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/sg/prism/NGNode;->opaqueRegion:Lcom/sun/javafx/geom/RectBounds;

    sget-object v5, Lcom/sun/javafx/sg/prism/NGNode;->TEMP_RECT_BOUNDS:Lcom/sun/javafx/geom/RectBounds;

    invoke-virtual {v4, v5}, Lcom/sun/javafx/geom/RectBounds;->intersectWith(Lcom/sun/javafx/geom/BaseBounds;)V

    .line 1856
    .line 1863
    .end local v1    # "clip":Lcom/sun/javafx/sg/prism/NGNode;
    .end local v2    # "clipOpaqueRegion":Lcom/sun/javafx/geom/RectBounds;
    .end local v3    # "b":Lcom/sun/javafx/geom/BaseBounds;
    :cond_6
    :goto_2
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/sg/prism/NGNode;->opaqueRegion:Lcom/sun/javafx/geom/RectBounds;

    move-object v0, v4

    goto :goto_1

    .line 1859
    :cond_7
    move-object v4, v0

    const/4 v5, 0x0

    iput-object v5, v4, Lcom/sun/javafx/sg/prism/NGNode;->opaqueRegion:Lcom/sun/javafx/geom/RectBounds;

    goto :goto_2
.end method

.method public getParent()Lcom/sun/javafx/sg/prism/NGNode;
    .locals 2

    .prologue
    .line 609
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGNode;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/sg/prism/NGNode;->parent:Lcom/sun/javafx/sg/prism/NGNode;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/sg/prism/NGNode;
    return-object v0
.end method

.method public final getRenderRoot(Lcom/sun/javafx/sg/prism/NodePath;Lcom/sun/javafx/geom/RectBounds;ILcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/javafx/geom/transform/GeneralTransform3D;)V
    .locals 14

    .prologue
    .line 1623
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGNode;
    move-object v1, p1

    .local v1, "path":Lcom/sun/javafx/sg/prism/NodePath;
    move-object/from16 v2, p2

    .local v2, "dirtyRegion":Lcom/sun/javafx/geom/RectBounds;
    move/from16 v3, p3

    .local v3, "cullingIndex":I
    move-object/from16 v4, p4

    .local v4, "tx":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object/from16 v5, p5

    .local v5, "pvTx":Lcom/sun/javafx/geom/transform/GeneralTransform3D;
    move-object v7, v1

    if-eqz v7, :cond_0

    move-object v7, v2

    if-eqz v7, :cond_0

    move-object v7, v4

    if-eqz v7, :cond_0

    move-object v7, v5

    if-nez v7, :cond_1

    .line 1624
    :cond_0
    new-instance v7, Ljava/lang/NullPointerException;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    invoke-direct {v8}, Ljava/lang/NullPointerException;-><init>()V

    throw v7

    .line 1626
    :cond_1
    move v7, v3

    const/4 v8, -0x1

    if-lt v7, v8, :cond_2

    move v7, v3

    const/16 v8, 0xf

    if-le v7, v8, :cond_3

    .line 1627
    :cond_2
    new-instance v7, Ljava/lang/IllegalArgumentException;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    const-string v9, "cullingIndex cannot be < -1 or > 15"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1633
    :cond_3
    move-object v7, v0

    move-object v8, v1

    move-object v9, v2

    move v10, v3

    move-object v11, v4

    move-object v12, v5

    invoke-virtual/range {v7 .. v12}, Lcom/sun/javafx/sg/prism/NGNode;->computeRenderRoot(Lcom/sun/javafx/sg/prism/NodePath;Lcom/sun/javafx/geom/RectBounds;ILcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/javafx/geom/transform/GeneralTransform3D;)Lcom/sun/javafx/sg/prism/NGNode$RenderRootResult;

    move-result-object v7

    move-object v6, v7

    .line 1634
    .local v6, "result":Lcom/sun/javafx/sg/prism/NGNode$RenderRootResult;
    move-object v7, v6

    sget-object v8, Lcom/sun/javafx/sg/prism/NGNode$RenderRootResult;->NO_RENDER_ROOT:Lcom/sun/javafx/sg/prism/NGNode$RenderRootResult;

    if-ne v7, v8, :cond_5

    .line 1639
    move-object v7, v1

    move-object v8, v0

    invoke-virtual {v7, v8}, Lcom/sun/javafx/sg/prism/NodePath;->add(Lcom/sun/javafx/sg/prism/NGNode;)V

    .line 1647
    :cond_4
    :goto_0
    return-void

    .line 1640
    :cond_5
    move-object v7, v6

    sget-object v8, Lcom/sun/javafx/sg/prism/NGNode$RenderRootResult;->HAS_RENDER_ROOT_AND_IS_CLEAN:Lcom/sun/javafx/sg/prism/NGNode$RenderRootResult;

    if-ne v7, v8, :cond_4

    .line 1645
    move-object v7, v1

    invoke-virtual {v7}, Lcom/sun/javafx/sg/prism/NodePath;->clear()V

    goto :goto_0
.end method

.method public final getTransform()Lcom/sun/javafx/geom/transform/BaseTransform;
    .locals 2

    .prologue
    .line 644
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGNode;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/sg/prism/NGNode;->transform:Lcom/sun/javafx/geom/transform/BaseTransform;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/sg/prism/NGNode;
    return-object v0
.end method

.method protected hasOpaqueRegion()Z
    .locals 5

    .prologue
    .line 1890
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGNode;
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/sg/prism/NGNode;->getClipNode()Lcom/sun/javafx/sg/prism/NGNode;

    move-result-object v3

    move-object v1, v3

    .line 1891
    .local v1, "clip":Lcom/sun/javafx/sg/prism/NGNode;
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/sg/prism/NGNode;->getEffect()Lcom/sun/scenario/effect/Effect;

    move-result-object v3

    move-object v2, v3

    .line 1892
    .local v2, "effect":Lcom/sun/scenario/effect/Effect;
    move-object v3, v2

    if-eqz v3, :cond_0

    move-object v3, v2

    invoke-virtual {v3}, Lcom/sun/scenario/effect/Effect;->reducesOpaquePixels()Z

    move-result v3

    if-nez v3, :cond_3

    :cond_0
    move-object v3, v0

    .line 1893
    invoke-virtual {v3}, Lcom/sun/javafx/sg/prism/NGNode;->getOpacity()F

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v3, v3, v4

    if-nez v3, :cond_3

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/sg/prism/NGNode;->nodeBlendMode:Lcom/sun/scenario/effect/Blend$Mode;

    if-eqz v3, :cond_1

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/sg/prism/NGNode;->nodeBlendMode:Lcom/sun/scenario/effect/Blend$Mode;

    sget-object v4, Lcom/sun/scenario/effect/Blend$Mode;->SRC_OVER:Lcom/sun/scenario/effect/Blend$Mode;

    if-ne v3, v4, :cond_3

    :cond_1
    move-object v3, v1

    if-eqz v3, :cond_2

    move-object v3, v1

    .line 1896
    invoke-virtual {v3}, Lcom/sun/javafx/sg/prism/NGNode;->supportsOpaqueRegions()Z

    move-result v3

    if-eqz v3, :cond_3

    move-object v3, v1

    invoke-virtual {v3}, Lcom/sun/javafx/sg/prism/NGNode;->hasOpaqueRegion()Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    const/4 v3, 0x1

    :goto_0
    move v0, v3

    .end local v0    # "this":Lcom/sun/javafx/sg/prism/NGNode;
    return v0

    .restart local v0    # "this":Lcom/sun/javafx/sg/prism/NGNode;
    :cond_3
    const/4 v3, 0x0

    goto :goto_0
.end method

.method protected abstract hasOverlappingContents()Z
.end method

.method protected hasVisuals()Z
    .locals 2

    .prologue
    .line 1309
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGNode;
    const/4 v1, 0x1

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/sg/prism/NGNode;
    return v0
.end method

.method protected final invalidateCache()V
    .locals 2

    .prologue
    .line 929
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGNode;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/sg/prism/NGNode;->cacheFilter:Lcom/sun/javafx/sg/prism/CacheFilter;

    if-eqz v1, :cond_0

    .line 930
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/sg/prism/NGNode;->cacheFilter:Lcom/sun/javafx/sg/prism/CacheFilter;

    invoke-virtual {v1}, Lcom/sun/javafx/sg/prism/CacheFilter;->invalidate()V

    .line 932
    :cond_0
    return-void
.end method

.method protected final invalidateCacheByTranslation(Lcom/sun/javafx/sg/prism/DirtyHint;)V
    .locals 8

    .prologue
    .line 939
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/sg/prism/NGNode;
    move-object v2, p1

    .local v2, "hint":Lcom/sun/javafx/sg/prism/DirtyHint;
    move-object v3, v1

    iget-object v3, v3, Lcom/sun/javafx/sg/prism/NGNode;->cacheFilter:Lcom/sun/javafx/sg/prism/CacheFilter;

    if-eqz v3, :cond_0

    .line 940
    move-object v3, v1

    iget-object v3, v3, Lcom/sun/javafx/sg/prism/NGNode;->cacheFilter:Lcom/sun/javafx/sg/prism/CacheFilter;

    move-object v4, v2

    iget-wide v4, v4, Lcom/sun/javafx/sg/prism/DirtyHint;->translateXDelta:D

    move-object v6, v2

    iget-wide v6, v6, Lcom/sun/javafx/sg/prism/DirtyHint;->translateYDelta:D

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/sun/javafx/sg/prism/CacheFilter;->invalidateByTranslation(DD)V

    .line 942
    :cond_0
    return-void
.end method

.method protected final invalidateOpaqueRegion()V
    .locals 3

    .prologue
    .line 1789
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGNode;
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/sun/javafx/sg/prism/NGNode;->opaqueRegionInvalid:Z

    .line 1790
    move-object v1, v0

    iget-boolean v1, v1, Lcom/sun/javafx/sg/prism/NGNode;->isClip:Z

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/sg/prism/NGNode;->parent:Lcom/sun/javafx/sg/prism/NGNode;

    invoke-virtual {v1}, Lcom/sun/javafx/sg/prism/NGNode;->invalidateOpaqueRegion()V

    .line 1791
    :cond_0
    return-void
.end method

.method public final isClean()Z
    .locals 3

    .prologue
    .line 879
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGNode;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/sg/prism/NGNode;->dirty:Lcom/sun/javafx/sg/prism/NGNode$DirtyFlag;

    sget-object v2, Lcom/sun/javafx/sg/prism/NGNode$DirtyFlag;->CLEAN:Lcom/sun/javafx/sg/prism/NGNode$DirtyFlag;

    if-ne v1, v2, :cond_0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/sun/javafx/sg/prism/NGNode;->childDirty:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/sg/prism/NGNode;
    return v0

    .restart local v0    # "this":Lcom/sun/javafx/sg/prism/NGNode;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isContentBounds2D()Z
    .locals 4

    .prologue
    .line 592
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/sg/prism/NGNode;
    move-object v2, v1

    iget-object v2, v2, Lcom/sun/javafx/sg/prism/NGNode;->contentBounds:Lcom/sun/javafx/geom/BaseBounds;

    invoke-virtual {v2}, Lcom/sun/javafx/geom/BaseBounds;->is2D()Z

    move-result v2

    if-nez v2, :cond_0

    move-object v2, v1

    iget-object v2, v2, Lcom/sun/javafx/sg/prism/NGNode;->contentBounds:Lcom/sun/javafx/geom/BaseBounds;

    .line 593
    invoke-virtual {v2}, Lcom/sun/javafx/geom/BaseBounds;->getMaxZ()F

    move-result v2

    float-to-double v2, v2

    invoke-static {v2, v3}, Lcom/sun/javafx/geom/transform/Affine3D;->almostZero(D)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v2, v1

    iget-object v2, v2, Lcom/sun/javafx/sg/prism/NGNode;->contentBounds:Lcom/sun/javafx/geom/BaseBounds;

    .line 594
    invoke-virtual {v2}, Lcom/sun/javafx/geom/BaseBounds;->getMinZ()F

    move-result v2

    float-to-double v2, v2

    invoke-static {v2, v3}, Lcom/sun/javafx/geom/transform/Affine3D;->almostZero(D)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v2, 0x1

    :goto_0
    move v1, v2

    .end local v1    # "this":Lcom/sun/javafx/sg/prism/NGNode;
    return v1

    .restart local v1    # "this":Lcom/sun/javafx/sg/prism/NGNode;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public final isDepthTest()Z
    .locals 2

    .prologue
    .line 647
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGNode;
    move-object v1, v0

    iget-boolean v1, v1, Lcom/sun/javafx/sg/prism/NGNode;->depthTest:Z

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/sg/prism/NGNode;
    return v0
.end method

.method final isOpaqueRegionInvalid()Z
    .locals 2

    .prologue
    .line 1798
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGNode;
    move-object v1, v0

    iget-boolean v1, v1, Lcom/sun/javafx/sg/prism/NGNode;->opaqueRegionInvalid:Z

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/sg/prism/NGNode;
    return v0
.end method

.method isReadbackSupported(Lcom/sun/prism/Graphics;)Z
    .locals 3

    .prologue
    .line 2382
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGNode;
    move-object v1, p1

    .local v1, "g":Lcom/sun/prism/Graphics;
    move-object v2, v1

    instance-of v2, v2, Lcom/sun/prism/ReadbackGraphics;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lcom/sun/prism/ReadbackGraphics;

    .line 2383
    invoke-interface {v2}, Lcom/sun/prism/ReadbackGraphics;->canReadBack()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .end local v0    # "this":Lcom/sun/javafx/sg/prism/NGNode;
    return v0

    .restart local v0    # "this":Lcom/sun/javafx/sg/prism/NGNode;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected isRectClip(Lcom/sun/javafx/geom/transform/BaseTransform;Z)Z
    .locals 4

    .prologue
    .line 1917
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGNode;
    move-object v1, p1

    .local v1, "xform":Lcom/sun/javafx/geom/transform/BaseTransform;
    move v2, p2

    .local v2, "permitRoundedRectangle":Z
    const/4 v3, 0x0

    move v0, v3

    .end local v0    # "this":Lcom/sun/javafx/sg/prism/NGNode;
    return v0
.end method

.method isShape3D()Z
    .locals 2

    .prologue
    .line 1969
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGNode;
    const/4 v1, 0x0

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/sg/prism/NGNode;
    return v0
.end method

.method public isVisible()Z
    .locals 2

    .prologue
    .line 642
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGNode;
    move-object v1, v0

    iget-boolean v1, v1, Lcom/sun/javafx/sg/prism/NGNode;->visible:Z

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/sg/prism/NGNode;
    return v0
.end method

.method markCullRegions(Lcom/sun/javafx/geom/DirtyRegionContainer;ILcom/sun/javafx/geom/transform/BaseTransform;Lcom/sun/javafx/geom/transform/GeneralTransform3D;)V
    .locals 14

    .prologue
    .line 1356
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGNode;
    move-object v1, p1

    .local v1, "drc":Lcom/sun/javafx/geom/DirtyRegionContainer;
    move/from16 v2, p2

    .local v2, "cullingRegionsBitsOfParent":I
    move-object/from16 v3, p3

    .local v3, "tx":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object/from16 v4, p4

    .local v4, "pvTx":Lcom/sun/javafx/geom/transform/GeneralTransform3D;
    move-object v9, v3

    invoke-virtual {v9}, Lcom/sun/javafx/geom/transform/BaseTransform;->isIdentity()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 1357
    sget-object v9, Lcom/sun/javafx/sg/prism/NGNode;->TEMP_BOUNDS:Lcom/sun/javafx/geom/BoxBounds;

    move-object v10, v0

    iget-object v10, v10, Lcom/sun/javafx/sg/prism/NGNode;->transformedBounds:Lcom/sun/javafx/geom/BaseBounds;

    invoke-virtual {v9, v10}, Lcom/sun/javafx/geom/BoxBounds;->deriveWithNewBounds(Lcom/sun/javafx/geom/BaseBounds;)Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v9

    .line 1362
    :goto_0
    move-object v9, v4

    invoke-virtual {v9}, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->isIdentity()Z

    move-result v9

    if-nez v9, :cond_0

    .line 1363
    move-object v9, v4

    sget-object v10, Lcom/sun/javafx/sg/prism/NGNode;->TEMP_BOUNDS:Lcom/sun/javafx/geom/BoxBounds;

    sget-object v11, Lcom/sun/javafx/sg/prism/NGNode;->TEMP_BOUNDS:Lcom/sun/javafx/geom/BoxBounds;

    invoke-virtual {v9, v10, v11}, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->transform(Lcom/sun/javafx/geom/BaseBounds;Lcom/sun/javafx/geom/BaseBounds;)Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v9

    .line 1366
    :cond_0
    sget-object v9, Lcom/sun/javafx/sg/prism/NGNode;->TEMP_BOUNDS:Lcom/sun/javafx/geom/BoxBounds;

    sget-object v10, Lcom/sun/javafx/sg/prism/NGNode;->TEMP_RECT_BOUNDS:Lcom/sun/javafx/geom/RectBounds;

    invoke-virtual {v9, v10}, Lcom/sun/javafx/geom/BoxBounds;->flattenInto(Lcom/sun/javafx/geom/RectBounds;)Lcom/sun/javafx/geom/RectBounds;

    move-result-object v9

    .line 1368
    move-object v9, v0

    const/4 v10, 0x0

    iput v10, v9, Lcom/sun/javafx/sg/prism/NGNode;->cullingBits:I

    .line 1370
    const/4 v9, 0x1

    move v6, v9

    .line 1371
    .local v6, "mask":I
    const/4 v9, 0x0

    move v7, v9

    .local v7, "i":I
    :goto_1
    move v9, v7

    move-object v10, v1

    invoke-virtual {v10}, Lcom/sun/javafx/geom/DirtyRegionContainer;->size()I

    move-result v10

    if-ge v9, v10, :cond_1

    .line 1372
    move-object v9, v1

    move v10, v7

    invoke-virtual {v9, v10}, Lcom/sun/javafx/geom/DirtyRegionContainer;->getDirtyRegion(I)Lcom/sun/javafx/geom/RectBounds;

    move-result-object v9

    move-object v5, v9

    .line 1373
    .local v5, "region":Lcom/sun/javafx/geom/RectBounds;
    move-object v9, v5

    if-eqz v9, :cond_1

    move-object v9, v5

    invoke-virtual {v9}, Lcom/sun/javafx/geom/RectBounds;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 1374
    .line 1395
    .end local v5    # "region":Lcom/sun/javafx/geom/RectBounds;
    :cond_1
    move-object v9, v0

    iget v9, v9, Lcom/sun/javafx/sg/prism/NGNode;->cullingBits:I

    if-nez v9, :cond_3

    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/sg/prism/NGNode;->dirty:Lcom/sun/javafx/sg/prism/NGNode$DirtyFlag;

    sget-object v10, Lcom/sun/javafx/sg/prism/NGNode$DirtyFlag;->CLEAN:Lcom/sun/javafx/sg/prism/NGNode$DirtyFlag;

    if-ne v9, v10, :cond_2

    move-object v9, v0

    iget-boolean v9, v9, Lcom/sun/javafx/sg/prism/NGNode;->childDirty:Z

    if-eqz v9, :cond_3

    .line 1396
    :cond_2
    move-object v9, v0

    invoke-virtual {v9}, Lcom/sun/javafx/sg/prism/NGNode;->clearDirtyTree()V

    .line 1401
    :cond_3
    return-void

    .line 1359
    .end local v6    # "mask":I
    .end local v7    # "i":I
    :cond_4
    move-object v9, v3

    move-object v10, v0

    iget-object v10, v10, Lcom/sun/javafx/sg/prism/NGNode;->transformedBounds:Lcom/sun/javafx/geom/BaseBounds;

    sget-object v11, Lcom/sun/javafx/sg/prism/NGNode;->TEMP_BOUNDS:Lcom/sun/javafx/geom/BoxBounds;

    invoke-virtual {v9, v10, v11}, Lcom/sun/javafx/geom/transform/BaseTransform;->transform(Lcom/sun/javafx/geom/BaseBounds;Lcom/sun/javafx/geom/BaseBounds;)Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v9

    goto :goto_0

    .line 1382
    .restart local v5    # "region":Lcom/sun/javafx/geom/RectBounds;
    .restart local v6    # "mask":I
    .restart local v7    # "i":I
    :cond_5
    move v9, v2

    const/4 v10, -0x1

    if-eq v9, v10, :cond_6

    move v9, v2

    move v10, v6

    and-int/2addr v9, v10

    if-eqz v9, :cond_8

    :cond_6
    move-object v9, v5

    sget-object v10, Lcom/sun/javafx/sg/prism/NGNode;->TEMP_RECT_BOUNDS:Lcom/sun/javafx/geom/RectBounds;

    .line 1383
    invoke-virtual {v9, v10}, Lcom/sun/javafx/geom/RectBounds;->intersects(Lcom/sun/javafx/geom/BaseBounds;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 1384
    const/4 v9, 0x1

    move v8, v9

    .line 1385
    .local v8, "b":I
    move-object v9, v5

    sget-object v10, Lcom/sun/javafx/sg/prism/NGNode;->TEMP_RECT_BOUNDS:Lcom/sun/javafx/geom/RectBounds;

    invoke-virtual {v9, v10}, Lcom/sun/javafx/geom/RectBounds;->contains(Lcom/sun/javafx/geom/RectBounds;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 1386
    const/4 v9, 0x2

    move v8, v9

    .line 1388
    :cond_7
    move-object v9, v0

    move-object v10, v0

    iget v10, v10, Lcom/sun/javafx/sg/prism/NGNode;->cullingBits:I

    move v11, v8

    const/4 v12, 0x2

    move v13, v7

    mul-int/2addr v12, v13

    shl-int/2addr v11, v12

    or-int/2addr v10, v11

    iput v10, v9, Lcom/sun/javafx/sg/prism/NGNode;->cullingBits:I

    .line 1390
    .end local v8    # "b":I
    :cond_8
    move v9, v6

    const/4 v10, 0x2

    shl-int/lit8 v9, v9, 0x2

    move v6, v9

    .line 1371
    add-int/lit8 v7, v7, 0x1

    goto :goto_1
.end method

.method public final markDirty()V
    .locals 3

    .prologue
    .line 796
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGNode;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/sg/prism/NGNode;->dirty:Lcom/sun/javafx/sg/prism/NGNode$DirtyFlag;

    sget-object v2, Lcom/sun/javafx/sg/prism/NGNode$DirtyFlag;->DIRTY:Lcom/sun/javafx/sg/prism/NGNode$DirtyFlag;

    if-eq v1, v2, :cond_0

    .line 797
    move-object v1, v0

    sget-object v2, Lcom/sun/javafx/sg/prism/NGNode$DirtyFlag;->DIRTY:Lcom/sun/javafx/sg/prism/NGNode$DirtyFlag;

    iput-object v2, v1, Lcom/sun/javafx/sg/prism/NGNode;->dirty:Lcom/sun/javafx/sg/prism/NGNode$DirtyFlag;

    .line 798
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/sg/prism/NGNode;->markTreeDirty()V

    .line 800
    :cond_0
    return-void
.end method

.method protected final markTreeDirty()V
    .locals 8

    .prologue
    .line 846
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGNode;
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/sg/prism/NGNode;->parent:Lcom/sun/javafx/sg/prism/NGNode;

    move-object v1, v4

    .line 847
    .local v1, "p":Lcom/sun/javafx/sg/prism/NGNode;
    move-object v4, v0

    iget-boolean v4, v4, Lcom/sun/javafx/sg/prism/NGNode;->isClip:Z

    move v2, v4

    .line 848
    .local v2, "atClip":Z
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/sg/prism/NGNode;->dirty:Lcom/sun/javafx/sg/prism/NGNode$DirtyFlag;

    sget-object v5, Lcom/sun/javafx/sg/prism/NGNode$DirtyFlag;->DIRTY_BY_TRANSLATION:Lcom/sun/javafx/sg/prism/NGNode$DirtyFlag;

    if-ne v4, v5, :cond_2

    const/4 v4, 0x1

    :goto_0
    move v3, v4

    .line 849
    .local v3, "byTranslation":Z
    :goto_1
    move-object v4, v1

    if-eqz v4, :cond_5

    move-object v4, v1

    iget-object v4, v4, Lcom/sun/javafx/sg/prism/NGNode;->dirty:Lcom/sun/javafx/sg/prism/NGNode$DirtyFlag;

    sget-object v5, Lcom/sun/javafx/sg/prism/NGNode$DirtyFlag;->DIRTY:Lcom/sun/javafx/sg/prism/NGNode$DirtyFlag;

    if-eq v4, v5, :cond_5

    move-object v4, v1

    iget-boolean v4, v4, Lcom/sun/javafx/sg/prism/NGNode;->childDirty:Z

    if-eqz v4, :cond_0

    move v4, v2

    if-nez v4, :cond_0

    move v4, v3

    if-eqz v4, :cond_5

    .line 850
    :cond_0
    move v4, v2

    if-eqz v4, :cond_3

    .line 851
    move-object v4, v1

    sget-object v5, Lcom/sun/javafx/sg/prism/NGNode$DirtyFlag;->DIRTY:Lcom/sun/javafx/sg/prism/NGNode$DirtyFlag;

    iput-object v5, v4, Lcom/sun/javafx/sg/prism/NGNode;->dirty:Lcom/sun/javafx/sg/prism/NGNode$DirtyFlag;

    .line 856
    :cond_1
    :goto_2
    move-object v4, v1

    invoke-virtual {v4}, Lcom/sun/javafx/sg/prism/NGNode;->invalidateCache()V

    .line 857
    move-object v4, v1

    iget-boolean v4, v4, Lcom/sun/javafx/sg/prism/NGNode;->isClip:Z

    move v2, v4

    .line 858
    move-object v4, v1

    iget-object v4, v4, Lcom/sun/javafx/sg/prism/NGNode;->dirty:Lcom/sun/javafx/sg/prism/NGNode$DirtyFlag;

    sget-object v5, Lcom/sun/javafx/sg/prism/NGNode$DirtyFlag;->DIRTY_BY_TRANSLATION:Lcom/sun/javafx/sg/prism/NGNode$DirtyFlag;

    if-ne v4, v5, :cond_4

    const/4 v4, 0x1

    :goto_3
    move v3, v4

    .line 859
    move-object v4, v1

    iget-object v4, v4, Lcom/sun/javafx/sg/prism/NGNode;->parent:Lcom/sun/javafx/sg/prism/NGNode;

    move-object v1, v4

    goto :goto_1

    .line 848
    .end local v3    # "byTranslation":Z
    :cond_2
    const/4 v4, 0x0

    goto :goto_0

    .line 852
    .restart local v3    # "byTranslation":Z
    :cond_3
    move v4, v3

    if-nez v4, :cond_1

    .line 853
    move-object v4, v1

    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/sun/javafx/sg/prism/NGNode;->childDirty:Z

    .line 854
    move-object v4, v1

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    iget v5, v5, Lcom/sun/javafx/sg/prism/NGNode;->dirtyChildrenAccumulated:I

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Lcom/sun/javafx/sg/prism/NGNode;->dirtyChildrenAccumulated:I

    goto :goto_2

    .line 858
    :cond_4
    const/4 v4, 0x0

    goto :goto_3

    .line 864
    :cond_5
    move-object v4, v1

    if-eqz v4, :cond_6

    move-object v4, v1

    iget-object v4, v4, Lcom/sun/javafx/sg/prism/NGNode;->dirty:Lcom/sun/javafx/sg/prism/NGNode$DirtyFlag;

    sget-object v5, Lcom/sun/javafx/sg/prism/NGNode$DirtyFlag;->CLEAN:Lcom/sun/javafx/sg/prism/NGNode$DirtyFlag;

    if-ne v4, v5, :cond_6

    move v4, v2

    if-nez v4, :cond_6

    move v4, v3

    if-nez v4, :cond_6

    .line 865
    move-object v4, v1

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    iget v5, v5, Lcom/sun/javafx/sg/prism/NGNode;->dirtyChildrenAccumulated:I

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Lcom/sun/javafx/sg/prism/NGNode;->dirtyChildrenAccumulated:I

    .line 871
    :cond_6
    move-object v4, v1

    if-eqz v4, :cond_7

    move-object v4, v1

    invoke-virtual {v4}, Lcom/sun/javafx/sg/prism/NGNode;->invalidateCache()V

    .line 872
    :cond_7
    return-void
.end method

.method protected final markTreeDirtyNoIncrement()V
    .locals 3

    .prologue
    .line 825
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGNode;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/sg/prism/NGNode;->parent:Lcom/sun/javafx/sg/prism/NGNode;

    if-eqz v1, :cond_1

    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/sg/prism/NGNode;->parent:Lcom/sun/javafx/sg/prism/NGNode;

    iget-boolean v1, v1, Lcom/sun/javafx/sg/prism/NGNode;->childDirty:Z

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/sg/prism/NGNode;->dirty:Lcom/sun/javafx/sg/prism/NGNode$DirtyFlag;

    sget-object v2, Lcom/sun/javafx/sg/prism/NGNode$DirtyFlag;->DIRTY_BY_TRANSLATION:Lcom/sun/javafx/sg/prism/NGNode$DirtyFlag;

    if-ne v1, v2, :cond_1

    .line 826
    :cond_0
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/sg/prism/NGNode;->markTreeDirty()V

    .line 828
    :cond_1
    return-void
.end method

.method protected needsBlending()Z
    .locals 4

    .prologue
    .line 2101
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGNode;
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/sg/prism/NGNode;->getNodeBlendMode()Lcom/sun/scenario/effect/Blend$Mode;

    move-result-object v2

    move-object v1, v2

    .line 2102
    .local v1, "mode":Lcom/sun/scenario/effect/Blend$Mode;
    move-object v2, v1

    if-eqz v2, :cond_0

    move-object v2, v1

    sget-object v3, Lcom/sun/scenario/effect/Blend$Mode;->SRC_OVER:Lcom/sun/scenario/effect/Blend$Mode;

    if-eq v2, v3, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .end local v0    # "this":Lcom/sun/javafx/sg/prism/NGNode;
    return v0

    .restart local v0    # "this":Lcom/sun/javafx/sg/prism/NGNode;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public final printDirtyOpts(Ljava/lang/StringBuilder;Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/List",
            "<",
            "Lcom/sun/javafx/sg/prism/NGNode;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1413
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGNode;
    move-object v1, p1

    .local v1, "s":Ljava/lang/StringBuilder;
    move-object v2, p2

    .local v2, "roots":Ljava/util/List;, "Ljava/util/List<Lcom/sun/javafx/sg/prism/NGNode;>;"
    move-object v3, v1

    const-string v4, "\n*=Render Root\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1414
    move-object v3, v1

    const-string v4, "d=Dirty\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1415
    move-object v3, v1

    const-string v4, "dt=Dirty By Translation\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1416
    move-object v3, v1

    const-string v4, "i=Dirty Region Intersects the NGNode\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1417
    move-object v3, v1

    const-string v4, "c=Dirty Region Contains the NGNode\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1418
    move-object v3, v1

    const-string v4, "ef=Effect Filter\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1419
    move-object v3, v1

    const-string v4, "cf=Cache Filter\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1420
    move-object v3, v1

    const-string v4, "cl=This node is a clip node\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1421
    move-object v3, v1

    const-string v4, "b=Blend mode is set\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1422
    move-object v3, v1

    const-string v4, "or=Opaque Region\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1423
    move-object v3, v0

    move-object v4, v1

    move-object v5, v0

    sget-object v6, Lcom/sun/javafx/geom/transform/BaseTransform;->IDENTITY_TRANSFORM:Lcom/sun/javafx/geom/transform/BaseTransform;

    const-string v7, ""

    move-object v8, v2

    invoke-direct/range {v3 .. v8}, Lcom/sun/javafx/sg/prism/NGNode;->printDirtyOpts(Ljava/lang/StringBuilder;Lcom/sun/javafx/sg/prism/NGNode;Lcom/sun/javafx/geom/transform/BaseTransform;Ljava/lang/String;Ljava/util/List;)V

    .line 1424
    return-void
.end method

.method public release()V
    .locals 0

    .prologue
    .line 2460
    return-void
.end method

.method public final render(Lcom/sun/prism/Graphics;)V
    .locals 4

    .prologue
    .line 1937
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGNode;
    move-object v1, p1

    .local v1, "g":Lcom/sun/prism/Graphics;
    sget-boolean v2, Lcom/sun/javafx/logging/PulseLogger;->PULSE_LOGGING_ENABLED:Z

    if-eqz v2, :cond_0

    .line 1938
    const-string v2, "Nodes visited during render"

    invoke-static {v2}, Lcom/sun/javafx/logging/PulseLogger;->incrementCounter(Ljava/lang/String;)V

    .line 1941
    :cond_0
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/sg/prism/NGNode;->clearDirty()V

    .line 1943
    move-object v2, v0

    iget-boolean v2, v2, Lcom/sun/javafx/sg/prism/NGNode;->visible:Z

    if-eqz v2, :cond_1

    move-object v2, v0

    iget v2, v2, Lcom/sun/javafx/sg/prism/NGNode;->opacity:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-nez v2, :cond_2

    .line 1949
    :cond_1
    :goto_0
    return-void

    .line 1948
    :cond_2
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/javafx/sg/prism/NGNode;->doRender(Lcom/sun/prism/Graphics;)V

    .line 1949
    goto :goto_0
.end method

.method renderClip(Lcom/sun/prism/Graphics;)V
    .locals 21

    .prologue
    .line 2199
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/javafx/sg/prism/NGNode;
    move-object/from16 v2, p1

    .local v2, "g":Lcom/sun/prism/Graphics;
    move-object v12, v1

    invoke-virtual {v12}, Lcom/sun/javafx/sg/prism/NGNode;->getClipNode()Lcom/sun/javafx/sg/prism/NGNode;

    move-result-object v12

    invoke-virtual {v12}, Lcom/sun/javafx/sg/prism/NGNode;->getOpacity()F

    move-result v12

    float-to-double v12, v12

    const-wide/16 v14, 0x0

    cmpl-double v12, v12, v14

    if-nez v12, :cond_0

    .line 2200
    move-object v12, v1

    invoke-virtual {v12}, Lcom/sun/javafx/sg/prism/NGNode;->clearDirtyTree()V

    .line 2201
    .line 2291
    :goto_0
    return-void

    .line 2205
    :cond_0
    move-object v12, v2

    invoke-interface {v12}, Lcom/sun/prism/Graphics;->getTransformNoClone()Lcom/sun/javafx/geom/transform/BaseTransform;

    move-result-object v12

    move-object v3, v12

    .line 2207
    .local v3, "curXform":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object v12, v1

    new-instance v13, Lcom/sun/javafx/geom/RectBounds;

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    invoke-direct {v14}, Lcom/sun/javafx/geom/RectBounds;-><init>()V

    move-object v14, v3

    invoke-virtual {v12, v13, v14}, Lcom/sun/javafx/sg/prism/NGNode;->getClippedBounds(Lcom/sun/javafx/geom/BaseBounds;Lcom/sun/javafx/geom/transform/BaseTransform;)Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v12

    move-object v4, v12

    .line 2208
    .local v4, "clipBounds":Lcom/sun/javafx/geom/BaseBounds;
    move-object v12, v4

    invoke-virtual {v12}, Lcom/sun/javafx/geom/BaseBounds;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_1

    .line 2209
    move-object v12, v1

    invoke-virtual {v12}, Lcom/sun/javafx/sg/prism/NGNode;->clearDirtyTree()V

    .line 2210
    goto :goto_0

    .line 2213
    :cond_1
    move-object v12, v1

    invoke-virtual {v12}, Lcom/sun/javafx/sg/prism/NGNode;->getClipNode()Lcom/sun/javafx/sg/prism/NGNode;

    move-result-object v12

    instance-of v12, v12, Lcom/sun/javafx/sg/prism/NGRectangle;

    if-eqz v12, :cond_2

    .line 2215
    move-object v12, v1

    invoke-virtual {v12}, Lcom/sun/javafx/sg/prism/NGNode;->getClipNode()Lcom/sun/javafx/sg/prism/NGNode;

    move-result-object v12

    check-cast v12, Lcom/sun/javafx/sg/prism/NGRectangle;

    move-object v5, v12

    .line 2216
    .local v5, "rectNode":Lcom/sun/javafx/sg/prism/NGRectangle;
    move-object v12, v5

    move-object v13, v3

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Lcom/sun/javafx/sg/prism/NGRectangle;->isRectClip(Lcom/sun/javafx/geom/transform/BaseTransform;Z)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 2217
    move-object v12, v1

    move-object v13, v2

    move-object v14, v5

    invoke-direct {v12, v13, v14}, Lcom/sun/javafx/sg/prism/NGNode;->renderRectClip(Lcom/sun/prism/Graphics;Lcom/sun/javafx/sg/prism/NGRectangle;)V

    .line 2218
    goto :goto_0

    .line 2224
    .end local v5    # "rectNode":Lcom/sun/javafx/sg/prism/NGRectangle;
    :cond_2
    new-instance v12, Lcom/sun/javafx/geom/Rectangle;

    move-object/from16 v20, v12

    move-object/from16 v12, v20

    move-object/from16 v13, v20

    move-object v14, v4

    invoke-direct {v13, v14}, Lcom/sun/javafx/geom/Rectangle;-><init>(Lcom/sun/javafx/geom/BaseBounds;)V

    move-object v5, v12

    .line 2225
    .local v5, "clipRect":Lcom/sun/javafx/geom/Rectangle;
    move-object v12, v5

    move-object v13, v2

    invoke-static {v13}, Lcom/sun/scenario/effect/impl/prism/PrEffectHelper;->getGraphicsClipNoClone(Lcom/sun/prism/Graphics;)Lcom/sun/javafx/geom/Rectangle;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/sun/javafx/geom/Rectangle;->intersectWith(Lcom/sun/javafx/geom/Rectangle;)V

    .line 2227
    move-object v12, v3

    invoke-virtual {v12}, Lcom/sun/javafx/geom/transform/BaseTransform;->is2D()Z

    move-result v12

    if-nez v12, :cond_3

    .line 2228
    move-object v12, v2

    invoke-interface {v12}, Lcom/sun/prism/Graphics;->getClipRect()Lcom/sun/javafx/geom/Rectangle;

    move-result-object v12

    move-object v6, v12

    .line 2229
    .local v6, "savedClip":Lcom/sun/javafx/geom/Rectangle;
    move-object v12, v2

    move-object v13, v5

    invoke-interface {v12, v13}, Lcom/sun/prism/Graphics;->setClipRect(Lcom/sun/javafx/geom/Rectangle;)V

    .line 2230
    new-instance v12, Lcom/sun/javafx/sg/prism/NodeEffectInput;

    move-object/from16 v20, v12

    move-object/from16 v12, v20

    move-object/from16 v13, v20

    move-object v14, v1

    .line 2231
    invoke-virtual {v14}, Lcom/sun/javafx/sg/prism/NGNode;->getClipNode()Lcom/sun/javafx/sg/prism/NGNode;

    move-result-object v14

    sget-object v15, Lcom/sun/javafx/sg/prism/NodeEffectInput$RenderType;->FULL_CONTENT:Lcom/sun/javafx/sg/prism/NodeEffectInput$RenderType;

    invoke-direct {v13, v14, v15}, Lcom/sun/javafx/sg/prism/NodeEffectInput;-><init>(Lcom/sun/javafx/sg/prism/NGNode;Lcom/sun/javafx/sg/prism/NodeEffectInput$RenderType;)V

    move-object v7, v12

    .line 2233
    .local v7, "clipInput":Lcom/sun/javafx/sg/prism/NodeEffectInput;
    new-instance v12, Lcom/sun/javafx/sg/prism/NodeEffectInput;

    move-object/from16 v20, v12

    move-object/from16 v12, v20

    move-object/from16 v13, v20

    move-object v14, v1

    sget-object v15, Lcom/sun/javafx/sg/prism/NodeEffectInput$RenderType;->CLIPPED_CONTENT:Lcom/sun/javafx/sg/prism/NodeEffectInput$RenderType;

    invoke-direct {v13, v14, v15}, Lcom/sun/javafx/sg/prism/NodeEffectInput;-><init>(Lcom/sun/javafx/sg/prism/NGNode;Lcom/sun/javafx/sg/prism/NodeEffectInput$RenderType;)V

    move-object v8, v12

    .line 2236
    .local v8, "nodeInput":Lcom/sun/javafx/sg/prism/NodeEffectInput;
    new-instance v12, Lcom/sun/scenario/effect/Blend;

    move-object/from16 v20, v12

    move-object/from16 v12, v20

    move-object/from16 v13, v20

    sget-object v14, Lcom/sun/scenario/effect/Blend$Mode;->SRC_IN:Lcom/sun/scenario/effect/Blend$Mode;

    move-object v15, v7

    move-object/from16 v16, v8

    invoke-direct/range {v13 .. v16}, Lcom/sun/scenario/effect/Blend;-><init>(Lcom/sun/scenario/effect/Blend$Mode;Lcom/sun/scenario/effect/Effect;Lcom/sun/scenario/effect/Effect;)V

    move-object v9, v12

    .line 2237
    .local v9, "blend":Lcom/sun/scenario/effect/Blend;
    move-object v12, v9

    move-object v13, v2

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-static/range {v12 .. v16}, Lcom/sun/scenario/effect/impl/prism/PrEffectHelper;->render(Lcom/sun/scenario/effect/Effect;Lcom/sun/prism/Graphics;FFLcom/sun/scenario/effect/Effect;)V

    .line 2238
    move-object v12, v7

    invoke-virtual {v12}, Lcom/sun/javafx/sg/prism/NodeEffectInput;->flush()V

    .line 2239
    move-object v12, v8

    invoke-virtual {v12}, Lcom/sun/javafx/sg/prism/NodeEffectInput;->flush()V

    .line 2240
    move-object v12, v2

    move-object v13, v6

    invoke-interface {v12, v13}, Lcom/sun/prism/Graphics;->setClipRect(Lcom/sun/javafx/geom/Rectangle;)V

    .line 2247
    move-object v12, v1

    invoke-virtual {v12}, Lcom/sun/javafx/sg/prism/NGNode;->clearDirtyTree()V

    .line 2248
    goto/16 :goto_0

    .line 2252
    .end local v6    # "savedClip":Lcom/sun/javafx/geom/Rectangle;
    .end local v7    # "clipInput":Lcom/sun/javafx/sg/prism/NodeEffectInput;
    .end local v8    # "nodeInput":Lcom/sun/javafx/sg/prism/NodeEffectInput;
    .end local v9    # "blend":Lcom/sun/scenario/effect/Blend;
    :cond_3
    move-object v12, v2

    invoke-static {v12}, Lcom/sun/javafx/sg/prism/NGNode;->getFilterContext(Lcom/sun/prism/Graphics;)Lcom/sun/scenario/effect/FilterContext;

    move-result-object v12

    move-object v6, v12

    .line 2253
    .local v6, "fctx":Lcom/sun/scenario/effect/FilterContext;
    move-object v12, v6

    move-object v13, v5

    iget v13, v13, Lcom/sun/javafx/geom/Rectangle;->width:I

    move-object v14, v5

    iget v14, v14, Lcom/sun/javafx/geom/Rectangle;->height:I

    .line 2254
    invoke-static {v12, v13, v14}, Lcom/sun/scenario/effect/Effect;->getCompatibleImage(Lcom/sun/scenario/effect/FilterContext;II)Lcom/sun/scenario/effect/Filterable;

    move-result-object v12

    check-cast v12, Lcom/sun/scenario/effect/impl/prism/PrDrawable;

    move-object v7, v12

    .line 2255
    .local v7, "contentImg":Lcom/sun/scenario/effect/impl/prism/PrDrawable;
    move-object v12, v7

    if-nez v12, :cond_4

    .line 2256
    move-object v12, v1

    invoke-virtual {v12}, Lcom/sun/javafx/sg/prism/NGNode;->clearDirtyTree()V

    .line 2257
    goto/16 :goto_0

    .line 2259
    :cond_4
    move-object v12, v7

    invoke-virtual {v12}, Lcom/sun/scenario/effect/impl/prism/PrDrawable;->createGraphics()Lcom/sun/prism/Graphics;

    move-result-object v12

    move-object v8, v12

    .line 2260
    .local v8, "gContentImg":Lcom/sun/prism/Graphics;
    move-object v12, v8

    move-object v13, v2

    invoke-interface {v13}, Lcom/sun/prism/Graphics;->getExtraAlpha()F

    move-result v13

    invoke-interface {v12, v13}, Lcom/sun/prism/Graphics;->setExtraAlpha(F)V

    .line 2261
    move-object v12, v8

    move-object v13, v2

    invoke-interface {v13}, Lcom/sun/prism/Graphics;->hasPreCullingBits()Z

    move-result v13

    invoke-interface {v12, v13}, Lcom/sun/prism/Graphics;->setHasPreCullingBits(Z)V

    .line 2262
    move-object v12, v8

    move-object v13, v2

    invoke-interface {v13}, Lcom/sun/prism/Graphics;->getClipRectIndex()I

    move-result v13

    invoke-interface {v12, v13}, Lcom/sun/prism/Graphics;->setClipRectIndex(I)V

    .line 2263
    move-object v12, v8

    move-object v13, v5

    iget v13, v13, Lcom/sun/javafx/geom/Rectangle;->x:I

    neg-int v13, v13

    int-to-float v13, v13

    move-object v14, v5

    iget v14, v14, Lcom/sun/javafx/geom/Rectangle;->y:I

    neg-int v14, v14

    int-to-float v14, v14

    invoke-interface {v12, v13, v14}, Lcom/sun/prism/Graphics;->translate(FF)V

    .line 2264
    move-object v12, v8

    move-object v13, v3

    invoke-interface {v12, v13}, Lcom/sun/prism/Graphics;->transform(Lcom/sun/javafx/geom/transform/BaseTransform;)V

    .line 2265
    move-object v12, v1

    move-object v13, v8

    invoke-virtual {v12, v13}, Lcom/sun/javafx/sg/prism/NGNode;->renderForClip(Lcom/sun/prism/Graphics;)V

    .line 2268
    move-object v12, v6

    move-object v13, v5

    iget v13, v13, Lcom/sun/javafx/geom/Rectangle;->width:I

    move-object v14, v5

    iget v14, v14, Lcom/sun/javafx/geom/Rectangle;->height:I

    .line 2269
    invoke-static {v12, v13, v14}, Lcom/sun/scenario/effect/Effect;->getCompatibleImage(Lcom/sun/scenario/effect/FilterContext;II)Lcom/sun/scenario/effect/Filterable;

    move-result-object v12

    check-cast v12, Lcom/sun/scenario/effect/impl/prism/PrDrawable;

    move-object v9, v12

    .line 2270
    .local v9, "clipImg":Lcom/sun/scenario/effect/impl/prism/PrDrawable;
    move-object v12, v9

    if-nez v12, :cond_5

    .line 2271
    move-object v12, v1

    invoke-virtual {v12}, Lcom/sun/javafx/sg/prism/NGNode;->getClipNode()Lcom/sun/javafx/sg/prism/NGNode;

    move-result-object v12

    invoke-virtual {v12}, Lcom/sun/javafx/sg/prism/NGNode;->clearDirtyTree()V

    .line 2272
    move-object v12, v6

    move-object v13, v7

    invoke-static {v12, v13}, Lcom/sun/scenario/effect/Effect;->releaseCompatibleImage(Lcom/sun/scenario/effect/FilterContext;Lcom/sun/scenario/effect/Filterable;)V

    .line 2273
    goto/16 :goto_0

    .line 2275
    :cond_5
    move-object v12, v9

    invoke-virtual {v12}, Lcom/sun/scenario/effect/impl/prism/PrDrawable;->createGraphics()Lcom/sun/prism/Graphics;

    move-result-object v12

    move-object v10, v12

    .line 2276
    .local v10, "gClipImg":Lcom/sun/prism/Graphics;
    move-object v12, v10

    move-object v13, v5

    iget v13, v13, Lcom/sun/javafx/geom/Rectangle;->x:I

    neg-int v13, v13

    int-to-float v13, v13

    move-object v14, v5

    iget v14, v14, Lcom/sun/javafx/geom/Rectangle;->y:I

    neg-int v14, v14

    int-to-float v14, v14

    invoke-interface {v12, v13, v14}, Lcom/sun/prism/Graphics;->translate(FF)V

    .line 2277
    move-object v12, v10

    move-object v13, v3

    invoke-interface {v12, v13}, Lcom/sun/prism/Graphics;->transform(Lcom/sun/javafx/geom/transform/BaseTransform;)V

    .line 2278
    move-object v12, v1

    invoke-virtual {v12}, Lcom/sun/javafx/sg/prism/NGNode;->getClipNode()Lcom/sun/javafx/sg/prism/NGNode;

    move-result-object v12

    move-object v13, v10

    invoke-virtual {v12, v13}, Lcom/sun/javafx/sg/prism/NGNode;->render(Lcom/sun/prism/Graphics;)V

    .line 2282
    move-object v12, v2

    const/4 v13, 0x0

    invoke-interface {v12, v13}, Lcom/sun/prism/Graphics;->setTransform(Lcom/sun/javafx/geom/transform/BaseTransform;)V

    .line 2283
    new-instance v12, Lcom/sun/scenario/effect/Blend;

    move-object/from16 v20, v12

    move-object/from16 v12, v20

    move-object/from16 v13, v20

    sget-object v14, Lcom/sun/scenario/effect/Blend$Mode;->SRC_IN:Lcom/sun/scenario/effect/Blend$Mode;

    new-instance v15, Lcom/sun/javafx/sg/prism/NGNode$PassThrough;

    move-object/from16 v20, v15

    move-object/from16 v15, v20

    move-object/from16 v16, v20

    move-object/from16 v17, v9

    move-object/from16 v18, v5

    invoke-direct/range {v16 .. v18}, Lcom/sun/javafx/sg/prism/NGNode$PassThrough;-><init>(Lcom/sun/scenario/effect/impl/prism/PrDrawable;Lcom/sun/javafx/geom/Rectangle;)V

    new-instance v16, Lcom/sun/javafx/sg/prism/NGNode$PassThrough;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    move-object/from16 v18, v7

    move-object/from16 v19, v5

    invoke-direct/range {v17 .. v19}, Lcom/sun/javafx/sg/prism/NGNode$PassThrough;-><init>(Lcom/sun/scenario/effect/impl/prism/PrDrawable;Lcom/sun/javafx/geom/Rectangle;)V

    invoke-direct/range {v13 .. v16}, Lcom/sun/scenario/effect/Blend;-><init>(Lcom/sun/scenario/effect/Blend$Mode;Lcom/sun/scenario/effect/Effect;Lcom/sun/scenario/effect/Effect;)V

    move-object v11, v12

    .line 2286
    .local v11, "blend":Lcom/sun/scenario/effect/Blend;
    move-object v12, v11

    move-object v13, v2

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-static/range {v12 .. v16}, Lcom/sun/scenario/effect/impl/prism/PrEffectHelper;->render(Lcom/sun/scenario/effect/Effect;Lcom/sun/prism/Graphics;FFLcom/sun/scenario/effect/Effect;)V

    .line 2289
    move-object v12, v6

    move-object v13, v7

    invoke-static {v12, v13}, Lcom/sun/scenario/effect/Effect;->releaseCompatibleImage(Lcom/sun/scenario/effect/FilterContext;Lcom/sun/scenario/effect/Filterable;)V

    .line 2290
    move-object v12, v6

    move-object v13, v9

    invoke-static {v12, v13}, Lcom/sun/scenario/effect/Effect;->releaseCompatibleImage(Lcom/sun/scenario/effect/FilterContext;Lcom/sun/scenario/effect/Filterable;)V

    .line 2291
    goto/16 :goto_0
.end method

.method protected abstract renderContent(Lcom/sun/prism/Graphics;)V
.end method

.method protected renderEffect(Lcom/sun/prism/Graphics;)V
    .locals 4

    .prologue
    .line 2368
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGNode;
    move-object v1, p1

    .local v1, "g":Lcom/sun/prism/Graphics;
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/sg/prism/NGNode;->getEffectFilter()Lcom/sun/javafx/sg/prism/EffectFilter;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/javafx/sg/prism/EffectFilter;->render(Lcom/sun/prism/Graphics;)V

    .line 2369
    return-void
.end method

.method renderForClip(Lcom/sun/prism/Graphics;)V
    .locals 4

    .prologue
    .line 2294
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGNode;
    move-object v1, p1

    .local v1, "g":Lcom/sun/prism/Graphics;
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/sg/prism/NGNode;->getEffectFilter()Lcom/sun/javafx/sg/prism/EffectFilter;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2295
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/javafx/sg/prism/NGNode;->renderEffect(Lcom/sun/prism/Graphics;)V

    .line 2299
    :goto_0
    return-void

    .line 2297
    :cond_0
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/javafx/sg/prism/NGNode;->renderContent(Lcom/sun/prism/Graphics;)V

    goto :goto_0
.end method

.method public renderForcedContent(Lcom/sun/prism/Graphics;)V
    .locals 0
    .param p1, "gOptional"    # Lcom/sun/prism/Graphics;

    .prologue
    .line 1965
    return-void
.end method

.method public setCachedAsBitmap(ZLjavafx/scene/CacheHint;)V
    .locals 9

    .prologue
    .line 495
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGNode;
    move v1, p1

    .local v1, "cached":Z
    move-object v2, p2

    .local v2, "cacheHint":Ljavafx/scene/CacheHint;
    move-object v3, v2

    if-nez v3, :cond_0

    .line 496
    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    const-string v5, "Internal Error: cacheHint must not be null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 499
    :cond_0
    move v3, v1

    if-eqz v3, :cond_3

    .line 500
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/sg/prism/NGNode;->cacheFilter:Lcom/sun/javafx/sg/prism/CacheFilter;

    if-nez v3, :cond_2

    .line 501
    move-object v3, v0

    new-instance v4, Lcom/sun/javafx/sg/prism/CacheFilter;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v0

    move-object v7, v2

    invoke-direct {v5, v6, v7}, Lcom/sun/javafx/sg/prism/CacheFilter;-><init>(Lcom/sun/javafx/sg/prism/NGNode;Ljavafx/scene/CacheHint;)V

    iput-object v4, v3, Lcom/sun/javafx/sg/prism/NGNode;->cacheFilter:Lcom/sun/javafx/sg/prism/CacheFilter;

    .line 509
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/sg/prism/NGNode;->markDirty()V

    .line 535
    :cond_1
    :goto_0
    return-void

    .line 511
    :cond_2
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/sg/prism/NGNode;->cacheFilter:Lcom/sun/javafx/sg/prism/CacheFilter;

    move-object v4, v2

    invoke-virtual {v3, v4}, Lcom/sun/javafx/sg/prism/CacheFilter;->matchesHint(Ljavafx/scene/CacheHint;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 512
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/sg/prism/NGNode;->cacheFilter:Lcom/sun/javafx/sg/prism/CacheFilter;

    move-object v4, v2

    invoke-virtual {v3, v4}, Lcom/sun/javafx/sg/prism/CacheFilter;->setHint(Ljavafx/scene/CacheHint;)V

    .line 521
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/sg/prism/NGNode;->markDirty()V

    goto :goto_0

    .line 525
    :cond_3
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/sg/prism/NGNode;->cacheFilter:Lcom/sun/javafx/sg/prism/CacheFilter;

    if-eqz v3, :cond_1

    .line 526
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/sg/prism/NGNode;->cacheFilter:Lcom/sun/javafx/sg/prism/CacheFilter;

    invoke-virtual {v3}, Lcom/sun/javafx/sg/prism/CacheFilter;->dispose()V

    .line 527
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/sun/javafx/sg/prism/NGNode;->cacheFilter:Lcom/sun/javafx/sg/prism/CacheFilter;

    .line 532
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/sg/prism/NGNode;->markDirty()V

    goto :goto_0
.end method

.method public setClipNode(Lcom/sun/javafx/sg/prism/NGNode;)V
    .locals 5

    .prologue
    .line 403
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGNode;
    move-object v1, p1

    .local v1, "clipNode":Lcom/sun/javafx/sg/prism/NGNode;
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/sg/prism/NGNode;->clipNode:Lcom/sun/javafx/sg/prism/NGNode;

    if-eq v2, v3, :cond_2

    .line 405
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/sg/prism/NGNode;->clipNode:Lcom/sun/javafx/sg/prism/NGNode;

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/sg/prism/NGNode;->clipNode:Lcom/sun/javafx/sg/prism/NGNode;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sun/javafx/sg/prism/NGNode;->setParent(Lcom/sun/javafx/sg/prism/NGNode;)V

    .line 407
    :cond_0
    move-object v2, v1

    if-eqz v2, :cond_1

    move-object v2, v1

    move-object v3, v0

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Lcom/sun/javafx/sg/prism/NGNode;->setParent(Lcom/sun/javafx/sg/prism/NGNode;Z)V

    .line 409
    :cond_1
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/sg/prism/NGNode;->clipNode:Lcom/sun/javafx/sg/prism/NGNode;

    .line 411
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/sg/prism/NGNode;->visualsChanged()V

    .line 412
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/sg/prism/NGNode;->invalidateOpaqueRegion()V

    .line 414
    :cond_2
    return-void
.end method

.method public setContentBounds(Lcom/sun/javafx/geom/BaseBounds;)V
    .locals 5

    .prologue
    .line 301
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGNode;
    move-object v1, p1

    .local v1, "bounds":Lcom/sun/javafx/geom/BaseBounds;
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/sg/prism/NGNode;->contentBounds:Lcom/sun/javafx/geom/BaseBounds;

    move-object v4, v1

    invoke-virtual {v3, v4}, Lcom/sun/javafx/geom/BaseBounds;->deriveWithNewBounds(Lcom/sun/javafx/geom/BaseBounds;)Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v3

    iput-object v3, v2, Lcom/sun/javafx/sg/prism/NGNode;->contentBounds:Lcom/sun/javafx/geom/BaseBounds;

    .line 302
    return-void
.end method

.method public setDepthTest(Z)V
    .locals 4

    .prologue
    .line 478
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGNode;
    move v1, p1

    .local v1, "depthTest":Z
    move v2, v1

    move-object v3, v0

    iget-boolean v3, v3, Lcom/sun/javafx/sg/prism/NGNode;->depthTest:Z

    if-eq v2, v3, :cond_0

    .line 479
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/sun/javafx/sg/prism/NGNode;->depthTest:Z

    .line 481
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/sg/prism/NGNode;->visualsChanged()V

    .line 483
    :cond_0
    return-void
.end method

.method public setEffect(Lcom/sun/scenario/effect/Effect;)V
    .locals 9

    .prologue
    .line 542
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGNode;
    move-object v1, p1

    .local v1, "effect":Lcom/sun/scenario/effect/Effect;
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/sg/prism/NGNode;->getEffect()Lcom/sun/scenario/effect/Effect;

    move-result-object v3

    move-object v2, v3

    .line 544
    .local v2, "old":Lcom/sun/scenario/effect/Effect;
    sget-boolean v3, Lcom/sun/prism/impl/PrismSettings;->disableEffects:Z

    if-eqz v3, :cond_0

    .line 545
    const/4 v3, 0x0

    move-object v1, v3

    .line 557
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/sg/prism/NGNode;->effectFilter:Lcom/sun/javafx/sg/prism/EffectFilter;

    if-nez v3, :cond_4

    move-object v3, v1

    if-eqz v3, :cond_4

    .line 558
    move-object v3, v0

    new-instance v4, Lcom/sun/javafx/sg/prism/EffectFilter;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v1

    move-object v7, v0

    invoke-direct {v5, v6, v7}, Lcom/sun/javafx/sg/prism/EffectFilter;-><init>(Lcom/sun/scenario/effect/Effect;Lcom/sun/javafx/sg/prism/NGNode;)V

    iput-object v4, v3, Lcom/sun/javafx/sg/prism/NGNode;->effectFilter:Lcom/sun/javafx/sg/prism/EffectFilter;

    .line 559
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/sg/prism/NGNode;->visualsChanged()V

    .line 572
    :cond_1
    :goto_0
    move-object v3, v2

    move-object v4, v1

    if-eq v3, v4, :cond_3

    .line 573
    move-object v3, v2

    if-eqz v3, :cond_2

    move-object v3, v1

    if-nez v3, :cond_3

    .line 574
    :cond_2
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/sg/prism/NGNode;->invalidateOpaqueRegion()V

    .line 577
    :cond_3
    return-void

    .line 560
    :cond_4
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/sg/prism/NGNode;->effectFilter:Lcom/sun/javafx/sg/prism/EffectFilter;

    if-eqz v3, :cond_1

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/sg/prism/NGNode;->effectFilter:Lcom/sun/javafx/sg/prism/EffectFilter;

    invoke-virtual {v3}, Lcom/sun/javafx/sg/prism/EffectFilter;->getEffect()Lcom/sun/scenario/effect/Effect;

    move-result-object v3

    move-object v4, v1

    if-eq v3, v4, :cond_1

    .line 561
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/sg/prism/NGNode;->effectFilter:Lcom/sun/javafx/sg/prism/EffectFilter;

    invoke-virtual {v3}, Lcom/sun/javafx/sg/prism/EffectFilter;->dispose()V

    .line 562
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/sun/javafx/sg/prism/NGNode;->effectFilter:Lcom/sun/javafx/sg/prism/EffectFilter;

    .line 563
    move-object v3, v1

    if-eqz v3, :cond_5

    .line 564
    move-object v3, v0

    new-instance v4, Lcom/sun/javafx/sg/prism/EffectFilter;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v1

    move-object v7, v0

    invoke-direct {v5, v6, v7}, Lcom/sun/javafx/sg/prism/EffectFilter;-><init>(Lcom/sun/scenario/effect/Effect;Lcom/sun/javafx/sg/prism/NGNode;)V

    iput-object v4, v3, Lcom/sun/javafx/sg/prism/NGNode;->effectFilter:Lcom/sun/javafx/sg/prism/EffectFilter;

    .line 566
    :cond_5
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/sg/prism/NGNode;->visualsChanged()V

    goto :goto_0
.end method

.method public final setName(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 627
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGNode;
    move-object v1, p1

    .local v1, "value":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/sg/prism/NGNode;->name:Ljava/lang/String;

    .line 628
    return-void
.end method

.method public setNodeBlendMode(Lcom/sun/scenario/effect/Blend$Mode;)V
    .locals 4

    .prologue
    .line 463
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGNode;
    move-object v1, p1

    .local v1, "blendMode":Lcom/sun/scenario/effect/Blend$Mode;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/sg/prism/NGNode;->nodeBlendMode:Lcom/sun/scenario/effect/Blend$Mode;

    move-object v3, v1

    if-eq v2, v3, :cond_0

    .line 464
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/sg/prism/NGNode;->nodeBlendMode:Lcom/sun/scenario/effect/Blend$Mode;

    .line 465
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/sg/prism/NGNode;->markDirty()V

    .line 466
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/sg/prism/NGNode;->invalidateOpaqueRegion()V

    .line 468
    :cond_0
    return-void
.end method

.method public setOpacity(F)V
    .locals 7

    .prologue
    .line 423
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGNode;
    move v1, p1

    .local v1, "opacity":F
    move v3, v1

    const/4 v4, 0x0

    cmpg-float v3, v3, v4

    if-ltz v3, :cond_0

    move v3, v1

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1

    .line 424
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string v5, "Internal Error: The opacity must be between 0 and 1"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 429
    :cond_1
    move v3, v1

    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/sg/prism/NGNode;->opacity:F

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_4

    .line 430
    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/sg/prism/NGNode;->opacity:F

    move v2, v3

    .line 431
    .local v2, "old":F
    move-object v3, v0

    move v4, v1

    iput v4, v3, Lcom/sun/javafx/sg/prism/NGNode;->opacity:F

    .line 432
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/sg/prism/NGNode;->markDirty()V

    .line 436
    move v3, v2

    const/high16 v4, 0x3f800000    # 1.0f

    cmpg-float v3, v3, v4

    if-gez v3, :cond_2

    move v3, v1

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_3

    move v3, v1

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_3

    :cond_2
    move v3, v1

    const/high16 v4, 0x3f800000    # 1.0f

    cmpg-float v3, v3, v4

    if-gez v3, :cond_4

    move v3, v2

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_3

    move v3, v2

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-nez v3, :cond_4

    .line 437
    :cond_3
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/sg/prism/NGNode;->invalidateOpaqueRegion()V

    .line 440
    .end local v2    # "old":F
    :cond_4
    return-void
.end method

.method public setParent(Lcom/sun/javafx/sg/prism/NGNode;)V
    .locals 5

    .prologue
    .line 615
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGNode;
    move-object v1, p1

    .local v1, "parent":Lcom/sun/javafx/sg/prism/NGNode;
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/sun/javafx/sg/prism/NGNode;->setParent(Lcom/sun/javafx/sg/prism/NGNode;Z)V

    .line 616
    return-void
.end method

.method public setTransformMatrix(Lcom/sun/javafx/geom/transform/BaseTransform;)V
    .locals 10

    .prologue
    .line 345
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/sg/prism/NGNode;
    move-object v2, p1

    .local v2, "tx":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object v4, v1

    iget-object v4, v4, Lcom/sun/javafx/sg/prism/NGNode;->transform:Lcom/sun/javafx/geom/transform/BaseTransform;

    move-object v5, v2

    invoke-virtual {v4, v5}, Lcom/sun/javafx/geom/transform/BaseTransform;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 346
    .line 393
    :goto_0
    return-void

    .line 357
    :cond_0
    const/4 v4, 0x0

    move v3, v4

    .line 361
    .local v3, "useHint":Z
    move-object v4, v1

    iget-object v4, v4, Lcom/sun/javafx/sg/prism/NGNode;->parent:Lcom/sun/javafx/sg/prism/NGNode;

    if-eqz v4, :cond_1

    move-object v4, v1

    iget-object v4, v4, Lcom/sun/javafx/sg/prism/NGNode;->parent:Lcom/sun/javafx/sg/prism/NGNode;

    iget-object v4, v4, Lcom/sun/javafx/sg/prism/NGNode;->cacheFilter:Lcom/sun/javafx/sg/prism/CacheFilter;

    if-eqz v4, :cond_1

    sget-boolean v4, Lcom/sun/prism/impl/PrismSettings;->scrollCacheOpt:Z

    if-eqz v4, :cond_1

    .line 363
    move-object v4, v1

    iget-object v4, v4, Lcom/sun/javafx/sg/prism/NGNode;->hint:Lcom/sun/javafx/sg/prism/DirtyHint;

    if-nez v4, :cond_2

    .line 366
    move-object v4, v1

    new-instance v5, Lcom/sun/javafx/sg/prism/DirtyHint;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    invoke-direct {v6}, Lcom/sun/javafx/sg/prism/DirtyHint;-><init>()V

    iput-object v5, v4, Lcom/sun/javafx/sg/prism/NGNode;->hint:Lcom/sun/javafx/sg/prism/DirtyHint;

    .line 386
    :cond_1
    :goto_1
    move-object v4, v1

    move-object v5, v1

    iget-object v5, v5, Lcom/sun/javafx/sg/prism/NGNode;->transform:Lcom/sun/javafx/geom/transform/BaseTransform;

    move-object v6, v2

    invoke-virtual {v5, v6}, Lcom/sun/javafx/geom/transform/BaseTransform;->deriveWithNewTransform(Lcom/sun/javafx/geom/transform/BaseTransform;)Lcom/sun/javafx/geom/transform/BaseTransform;

    move-result-object v5

    iput-object v5, v4, Lcom/sun/javafx/sg/prism/NGNode;->transform:Lcom/sun/javafx/geom/transform/BaseTransform;

    .line 387
    move v4, v3

    if-eqz v4, :cond_3

    .line 388
    move-object v4, v1

    invoke-direct {v4}, Lcom/sun/javafx/sg/prism/NGNode;->markDirtyByTranslation()V

    .line 392
    :goto_2
    move-object v4, v1

    invoke-virtual {v4}, Lcom/sun/javafx/sg/prism/NGNode;->invalidateOpaqueRegion()V

    .line 393
    goto :goto_0

    .line 368
    :cond_2
    move-object v4, v1

    iget-object v4, v4, Lcom/sun/javafx/sg/prism/NGNode;->transform:Lcom/sun/javafx/geom/transform/BaseTransform;

    invoke-virtual {v4}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMxx()D

    move-result-wide v4

    move-object v6, v2

    invoke-virtual {v6}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMxx()D

    move-result-wide v6

    cmpl-double v4, v4, v6

    if-nez v4, :cond_1

    move-object v4, v1

    iget-object v4, v4, Lcom/sun/javafx/sg/prism/NGNode;->transform:Lcom/sun/javafx/geom/transform/BaseTransform;

    .line 369
    invoke-virtual {v4}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMxy()D

    move-result-wide v4

    move-object v6, v2

    invoke-virtual {v6}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMxy()D

    move-result-wide v6

    cmpl-double v4, v4, v6

    if-nez v4, :cond_1

    move-object v4, v1

    iget-object v4, v4, Lcom/sun/javafx/sg/prism/NGNode;->transform:Lcom/sun/javafx/geom/transform/BaseTransform;

    .line 370
    invoke-virtual {v4}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMyy()D

    move-result-wide v4

    move-object v6, v2

    invoke-virtual {v6}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMyy()D

    move-result-wide v6

    cmpl-double v4, v4, v6

    if-nez v4, :cond_1

    move-object v4, v1

    iget-object v4, v4, Lcom/sun/javafx/sg/prism/NGNode;->transform:Lcom/sun/javafx/geom/transform/BaseTransform;

    .line 371
    invoke-virtual {v4}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMyx()D

    move-result-wide v4

    move-object v6, v2

    invoke-virtual {v6}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMyx()D

    move-result-wide v6

    cmpl-double v4, v4, v6

    if-nez v4, :cond_1

    move-object v4, v1

    iget-object v4, v4, Lcom/sun/javafx/sg/prism/NGNode;->transform:Lcom/sun/javafx/geom/transform/BaseTransform;

    .line 372
    invoke-virtual {v4}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMxz()D

    move-result-wide v4

    move-object v6, v2

    invoke-virtual {v6}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMxz()D

    move-result-wide v6

    cmpl-double v4, v4, v6

    if-nez v4, :cond_1

    move-object v4, v1

    iget-object v4, v4, Lcom/sun/javafx/sg/prism/NGNode;->transform:Lcom/sun/javafx/geom/transform/BaseTransform;

    .line 373
    invoke-virtual {v4}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMyz()D

    move-result-wide v4

    move-object v6, v2

    invoke-virtual {v6}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMyz()D

    move-result-wide v6

    cmpl-double v4, v4, v6

    if-nez v4, :cond_1

    move-object v4, v1

    iget-object v4, v4, Lcom/sun/javafx/sg/prism/NGNode;->transform:Lcom/sun/javafx/geom/transform/BaseTransform;

    .line 374
    invoke-virtual {v4}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMzx()D

    move-result-wide v4

    move-object v6, v2

    invoke-virtual {v6}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMzx()D

    move-result-wide v6

    cmpl-double v4, v4, v6

    if-nez v4, :cond_1

    move-object v4, v1

    iget-object v4, v4, Lcom/sun/javafx/sg/prism/NGNode;->transform:Lcom/sun/javafx/geom/transform/BaseTransform;

    .line 375
    invoke-virtual {v4}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMzy()D

    move-result-wide v4

    move-object v6, v2

    invoke-virtual {v6}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMzy()D

    move-result-wide v6

    cmpl-double v4, v4, v6

    if-nez v4, :cond_1

    move-object v4, v1

    iget-object v4, v4, Lcom/sun/javafx/sg/prism/NGNode;->transform:Lcom/sun/javafx/geom/transform/BaseTransform;

    .line 376
    invoke-virtual {v4}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMzz()D

    move-result-wide v4

    move-object v6, v2

    invoke-virtual {v6}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMzz()D

    move-result-wide v6

    cmpl-double v4, v4, v6

    if-nez v4, :cond_1

    move-object v4, v1

    iget-object v4, v4, Lcom/sun/javafx/sg/prism/NGNode;->transform:Lcom/sun/javafx/geom/transform/BaseTransform;

    .line 377
    invoke-virtual {v4}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMzt()D

    move-result-wide v4

    move-object v6, v2

    invoke-virtual {v6}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMzt()D

    move-result-wide v6

    cmpl-double v4, v4, v6

    if-nez v4, :cond_1

    .line 378
    const/4 v4, 0x1

    move v3, v4

    .line 380
    move-object v4, v1

    iget-object v4, v4, Lcom/sun/javafx/sg/prism/NGNode;->hint:Lcom/sun/javafx/sg/prism/DirtyHint;

    move-object v5, v2

    invoke-virtual {v5}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMxt()D

    move-result-wide v5

    move-object v7, v1

    iget-object v7, v7, Lcom/sun/javafx/sg/prism/NGNode;->transform:Lcom/sun/javafx/geom/transform/BaseTransform;

    invoke-virtual {v7}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMxt()D

    move-result-wide v7

    sub-double/2addr v5, v7

    iput-wide v5, v4, Lcom/sun/javafx/sg/prism/DirtyHint;->translateXDelta:D

    .line 381
    move-object v4, v1

    iget-object v4, v4, Lcom/sun/javafx/sg/prism/NGNode;->hint:Lcom/sun/javafx/sg/prism/DirtyHint;

    move-object v5, v2

    invoke-virtual {v5}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMyt()D

    move-result-wide v5

    move-object v7, v1

    iget-object v7, v7, Lcom/sun/javafx/sg/prism/NGNode;->transform:Lcom/sun/javafx/geom/transform/BaseTransform;

    invoke-virtual {v7}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMyt()D

    move-result-wide v7

    sub-double/2addr v5, v7

    iput-wide v5, v4, Lcom/sun/javafx/sg/prism/DirtyHint;->translateYDelta:D

    goto/16 :goto_1

    .line 390
    :cond_3
    move-object v4, v1

    invoke-virtual {v4}, Lcom/sun/javafx/sg/prism/NGNode;->markDirty()V

    goto/16 :goto_2
.end method

.method public setTransformedBounds(Lcom/sun/javafx/geom/BaseBounds;Z)V
    .locals 6

    .prologue
    .line 309
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGNode;
    move-object v1, p1

    .local v1, "bounds":Lcom/sun/javafx/geom/BaseBounds;
    move v2, p2

    .local v2, "byTransformChangeOnly":Z
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/sg/prism/NGNode;->transformedBounds:Lcom/sun/javafx/geom/BaseBounds;

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 318
    .line 338
    :goto_0
    return-void

    .line 326
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/sg/prism/NGNode;->dirtyBounds:Lcom/sun/javafx/geom/BaseBounds;

    invoke-virtual {v3}, Lcom/sun/javafx/geom/BaseBounds;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 327
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/sg/prism/NGNode;->dirtyBounds:Lcom/sun/javafx/geom/BaseBounds;

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/sg/prism/NGNode;->transformedBounds:Lcom/sun/javafx/geom/BaseBounds;

    invoke-virtual {v4, v5}, Lcom/sun/javafx/geom/BaseBounds;->deriveWithNewBounds(Lcom/sun/javafx/geom/BaseBounds;)Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v4

    iput-object v4, v3, Lcom/sun/javafx/sg/prism/NGNode;->dirtyBounds:Lcom/sun/javafx/geom/BaseBounds;

    .line 328
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/sg/prism/NGNode;->dirtyBounds:Lcom/sun/javafx/geom/BaseBounds;

    move-object v5, v1

    invoke-virtual {v4, v5}, Lcom/sun/javafx/geom/BaseBounds;->deriveWithUnion(Lcom/sun/javafx/geom/BaseBounds;)Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v4

    iput-object v4, v3, Lcom/sun/javafx/sg/prism/NGNode;->dirtyBounds:Lcom/sun/javafx/geom/BaseBounds;

    .line 334
    :goto_1
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/sg/prism/NGNode;->transformedBounds:Lcom/sun/javafx/geom/BaseBounds;

    move-object v5, v1

    invoke-virtual {v4, v5}, Lcom/sun/javafx/geom/BaseBounds;->deriveWithNewBounds(Lcom/sun/javafx/geom/BaseBounds;)Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v4

    iput-object v4, v3, Lcom/sun/javafx/sg/prism/NGNode;->transformedBounds:Lcom/sun/javafx/geom/BaseBounds;

    .line 335
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/sg/prism/NGNode;->hasVisuals()Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v2

    if-nez v3, :cond_1

    .line 336
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/sg/prism/NGNode;->markDirty()V

    .line 338
    :cond_1
    goto :goto_0

    .line 332
    :cond_2
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/sg/prism/NGNode;->dirtyBounds:Lcom/sun/javafx/geom/BaseBounds;

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/sg/prism/NGNode;->transformedBounds:Lcom/sun/javafx/geom/BaseBounds;

    invoke-virtual {v4, v5}, Lcom/sun/javafx/geom/BaseBounds;->deriveWithUnion(Lcom/sun/javafx/geom/BaseBounds;)Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v4

    iput-object v4, v3, Lcom/sun/javafx/sg/prism/NGNode;->dirtyBounds:Lcom/sun/javafx/geom/BaseBounds;

    goto :goto_1
.end method

.method public setVisible(Z)V
    .locals 4

    .prologue
    .line 287
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGNode;
    move v1, p1

    .local v1, "value":Z
    move-object v2, v0

    iget-boolean v2, v2, Lcom/sun/javafx/sg/prism/NGNode;->visible:Z

    move v3, v1

    if-eq v2, v3, :cond_0

    .line 288
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/sun/javafx/sg/prism/NGNode;->visible:Z

    .line 289
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/sg/prism/NGNode;->markDirty()V

    .line 291
    :cond_0
    return-void
.end method

.method protected supportsOpaqueRegions()Z
    .locals 2

    .prologue
    .line 1877
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGNode;
    const/4 v1, 0x0

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/sg/prism/NGNode;
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2463
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGNode;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/sg/prism/NGNode;->name:Ljava/lang/String;

    if-nez v1, :cond_0

    move-object v1, v0

    invoke-super {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/sg/prism/NGNode;
    return-object v0

    .restart local v0    # "this":Lcom/sun/javafx/sg/prism/NGNode;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/sg/prism/NGNode;->name:Ljava/lang/String;

    goto :goto_0
.end method

.method protected visualsChanged()V
    .locals 2

    .prologue
    .line 773
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/NGNode;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/sg/prism/NGNode;->invalidateCache()V

    .line 774
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/sg/prism/NGNode;->markDirty()V

    .line 775
    return-void
.end method
