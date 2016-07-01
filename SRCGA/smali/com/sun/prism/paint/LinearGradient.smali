.class public final Lcom/sun/prism/paint/LinearGradient;
.super Lcom/sun/prism/paint/Gradient;
.source "LinearGradient.java"


# instance fields
.field private x1:F

.field private x2:F

.field private y1:F

.field private y2:F


# direct methods
.method public constructor <init>(FFFFLcom/sun/javafx/geom/transform/BaseTransform;ZILjava/util/List;)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FFFF",
            "Lcom/sun/javafx/geom/transform/BaseTransform;",
            "ZI",
            "Ljava/util/List",
            "<",
            "Lcom/sun/prism/paint/Stop;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 45
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/paint/LinearGradient;
    move/from16 v1, p1

    .local v1, "x1":F
    move/from16 v2, p2

    .local v2, "y1":F
    move/from16 v3, p3

    .local v3, "x2":F
    move/from16 v4, p4

    .local v4, "y2":F
    move-object/from16 v5, p5

    .local v5, "gradientTransform":Lcom/sun/javafx/geom/transform/BaseTransform;
    move/from16 v6, p6

    .local v6, "proportional":Z
    move/from16 v7, p7

    .local v7, "spreadMethod":I
    move-object/from16 v8, p8

    .local v8, "stops":Ljava/util/List;, "Ljava/util/List<Lcom/sun/prism/paint/Stop;>;"
    move-object v9, v0

    sget-object v10, Lcom/sun/prism/paint/Paint$Type;->LINEAR_GRADIENT:Lcom/sun/prism/paint/Paint$Type;

    move-object v11, v5

    move v12, v6

    move v13, v7

    move-object v14, v8

    invoke-direct/range {v9 .. v14}, Lcom/sun/prism/paint/Gradient;-><init>(Lcom/sun/prism/paint/Paint$Type;Lcom/sun/javafx/geom/transform/BaseTransform;ZILjava/util/List;)V

    .line 46
    move-object v9, v0

    move v10, v1

    iput v10, v9, Lcom/sun/prism/paint/LinearGradient;->x1:F

    .line 47
    move-object v9, v0

    move v10, v2

    iput v10, v9, Lcom/sun/prism/paint/LinearGradient;->y1:F

    .line 48
    move-object v9, v0

    move v10, v3

    iput v10, v9, Lcom/sun/prism/paint/LinearGradient;->x2:F

    .line 49
    move-object v9, v0

    move v10, v4

    iput v10, v9, Lcom/sun/prism/paint/LinearGradient;->y2:F

    .line 50
    return-void
.end method


# virtual methods
.method public getX1()F
    .locals 2

    .prologue
    .line 52
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/paint/LinearGradient;
    move-object v1, v0

    iget v1, v1, Lcom/sun/prism/paint/LinearGradient;->x1:F

    move v0, v1

    .end local v0    # "this":Lcom/sun/prism/paint/LinearGradient;
    return v0
.end method

.method public getX2()F
    .locals 2

    .prologue
    .line 54
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/paint/LinearGradient;
    move-object v1, v0

    iget v1, v1, Lcom/sun/prism/paint/LinearGradient;->x2:F

    move v0, v1

    .end local v0    # "this":Lcom/sun/prism/paint/LinearGradient;
    return v0
.end method

.method public getY1()F
    .locals 2

    .prologue
    .line 53
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/paint/LinearGradient;
    move-object v1, v0

    iget v1, v1, Lcom/sun/prism/paint/LinearGradient;->y1:F

    move v0, v1

    .end local v0    # "this":Lcom/sun/prism/paint/LinearGradient;
    return v0
.end method

.method public getY2()F
    .locals 2

    .prologue
    .line 55
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/paint/LinearGradient;
    move-object v1, v0

    iget v1, v1, Lcom/sun/prism/paint/LinearGradient;->y2:F

    move v0, v1

    .end local v0    # "this":Lcom/sun/prism/paint/LinearGradient;
    return v0
.end method
