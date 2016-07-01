.class public Lcom/sun/prism/impl/shape/ShapeUtil;
.super Ljava/lang/Object;
.source "ShapeUtil.java"


# static fields
.field private static final shapeRasterizer:Lcom/sun/prism/impl/shape/ShapeRasterizer;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 38
    sget-boolean v0, Lcom/sun/prism/impl/PrismSettings;->doNativePisces:Z

    if-eqz v0, :cond_0

    .line 39
    new-instance v0, Lcom/sun/prism/impl/shape/NativePiscesRasterizer;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Lcom/sun/prism/impl/shape/NativePiscesRasterizer;-><init>()V

    sput-object v0, Lcom/sun/prism/impl/shape/ShapeUtil;->shapeRasterizer:Lcom/sun/prism/impl/shape/ShapeRasterizer;

    .line 43
    :goto_0
    return-void

    .line 41
    :cond_0
    new-instance v0, Lcom/sun/prism/impl/shape/OpenPiscesRasterizer;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Lcom/sun/prism/impl/shape/OpenPiscesRasterizer;-><init>()V

    sput-object v0, Lcom/sun/prism/impl/shape/ShapeUtil;->shapeRasterizer:Lcom/sun/prism/impl/shape/ShapeRasterizer;

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 57
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/impl/shape/ShapeUtil;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 58
    return-void
.end method

.method public static rasterizeShape(Lcom/sun/javafx/geom/Shape;Lcom/sun/prism/BasicStroke;Lcom/sun/javafx/geom/RectBounds;Lcom/sun/javafx/geom/transform/BaseTransform;ZZ)Lcom/sun/prism/impl/shape/MaskData;
    .locals 13

    .prologue
    .line 51
    move-object v0, p0

    .local v0, "shape":Lcom/sun/javafx/geom/Shape;
    move-object v1, p1

    .local v1, "stroke":Lcom/sun/prism/BasicStroke;
    move-object v2, p2

    .local v2, "xformBounds":Lcom/sun/javafx/geom/RectBounds;
    move-object/from16 v3, p3

    .local v3, "xform":Lcom/sun/javafx/geom/transform/BaseTransform;
    move/from16 v4, p4

    .local v4, "close":Z
    move/from16 v5, p5

    .local v5, "antialiasedShape":Z
    sget-object v6, Lcom/sun/prism/impl/shape/ShapeUtil;->shapeRasterizer:Lcom/sun/prism/impl/shape/ShapeRasterizer;

    move-object v7, v0

    move-object v8, v1

    move-object v9, v2

    move-object v10, v3

    move v11, v4

    move v12, v5

    invoke-interface/range {v6 .. v12}, Lcom/sun/prism/impl/shape/ShapeRasterizer;->getMaskData(Lcom/sun/javafx/geom/Shape;Lcom/sun/prism/BasicStroke;Lcom/sun/javafx/geom/RectBounds;Lcom/sun/javafx/geom/transform/BaseTransform;ZZ)Lcom/sun/prism/impl/shape/MaskData;

    move-result-object v6

    move-object v0, v6

    .end local v0    # "shape":Lcom/sun/javafx/geom/Shape;
    return-object v0
.end method
