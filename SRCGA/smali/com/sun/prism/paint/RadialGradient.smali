.class public final Lcom/sun/prism/paint/RadialGradient;
.super Lcom/sun/prism/paint/Gradient;
.source "RadialGradient.java"


# instance fields
.field private final centerX:F

.field private final centerY:F

.field private final focusAngle:F

.field private final focusDistance:F

.field private final radius:F


# direct methods
.method public constructor <init>(FFFFFLcom/sun/javafx/geom/transform/BaseTransform;ZILjava/util/List;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FFFFF",
            "Lcom/sun/javafx/geom/transform/BaseTransform;",
            "ZI",
            "Ljava/util/List",
            "<",
            "Lcom/sun/prism/paint/Stop;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 47
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/prism/paint/RadialGradient;
    move/from16 v1, p1

    .local v1, "centerX":F
    move/from16 v2, p2

    .local v2, "centerY":F
    move/from16 v3, p3

    .local v3, "focusAngle":F
    move/from16 v4, p4

    .local v4, "focusDistance":F
    move/from16 v5, p5

    .local v5, "radius":F
    move-object/from16 v6, p6

    .local v6, "gradientTransform":Lcom/sun/javafx/geom/transform/BaseTransform;
    move/from16 v7, p7

    .local v7, "proportional":Z
    move/from16 v8, p8

    .local v8, "spreadMethod":I
    move-object/from16 v9, p9

    .local v9, "stops":Ljava/util/List;, "Ljava/util/List<Lcom/sun/prism/paint/Stop;>;"
    move-object v10, v0

    sget-object v11, Lcom/sun/prism/paint/Paint$Type;->RADIAL_GRADIENT:Lcom/sun/prism/paint/Paint$Type;

    move-object v12, v6

    move v13, v7

    move v14, v8

    move-object v15, v9

    invoke-direct/range {v10 .. v15}, Lcom/sun/prism/paint/Gradient;-><init>(Lcom/sun/prism/paint/Paint$Type;Lcom/sun/javafx/geom/transform/BaseTransform;ZILjava/util/List;)V

    .line 48
    move-object v10, v0

    move v11, v1

    iput v11, v10, Lcom/sun/prism/paint/RadialGradient;->centerX:F

    .line 49
    move-object v10, v0

    move v11, v2

    iput v11, v10, Lcom/sun/prism/paint/RadialGradient;->centerY:F

    .line 50
    move-object v10, v0

    move v11, v3

    iput v11, v10, Lcom/sun/prism/paint/RadialGradient;->focusAngle:F

    .line 51
    move-object v10, v0

    move v11, v4

    iput v11, v10, Lcom/sun/prism/paint/RadialGradient;->focusDistance:F

    .line 52
    move-object v10, v0

    move v11, v5

    iput v11, v10, Lcom/sun/prism/paint/RadialGradient;->radius:F

    .line 53
    return-void
.end method


# virtual methods
.method public getCenterX()F
    .locals 2

    .prologue
    .line 56
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/paint/RadialGradient;
    move-object v1, v0

    iget v1, v1, Lcom/sun/prism/paint/RadialGradient;->centerX:F

    move v0, v1

    .end local v0    # "this":Lcom/sun/prism/paint/RadialGradient;
    return v0
.end method

.method public getCenterY()F
    .locals 2

    .prologue
    .line 60
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/paint/RadialGradient;
    move-object v1, v0

    iget v1, v1, Lcom/sun/prism/paint/RadialGradient;->centerY:F

    move v0, v1

    .end local v0    # "this":Lcom/sun/prism/paint/RadialGradient;
    return v0
.end method

.method public getFocusAngle()F
    .locals 2

    .prologue
    .line 64
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/paint/RadialGradient;
    move-object v1, v0

    iget v1, v1, Lcom/sun/prism/paint/RadialGradient;->focusAngle:F

    move v0, v1

    .end local v0    # "this":Lcom/sun/prism/paint/RadialGradient;
    return v0
.end method

.method public getFocusDistance()F
    .locals 2

    .prologue
    .line 68
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/paint/RadialGradient;
    move-object v1, v0

    iget v1, v1, Lcom/sun/prism/paint/RadialGradient;->focusDistance:F

    move v0, v1

    .end local v0    # "this":Lcom/sun/prism/paint/RadialGradient;
    return v0
.end method

.method public getRadius()F
    .locals 2

    .prologue
    .line 72
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/paint/RadialGradient;
    move-object v1, v0

    iget v1, v1, Lcom/sun/prism/paint/RadialGradient;->radius:F

    move v0, v1

    .end local v0    # "this":Lcom/sun/prism/paint/RadialGradient;
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 78
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/paint/RadialGradient;
    new-instance v1, Ljava/lang/StringBuilder;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RadialGradient: FocusAngle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget v2, v2, Lcom/sun/prism/paint/RadialGradient;->focusAngle:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " FocusDistance: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget v2, v2, Lcom/sun/prism/paint/RadialGradient;->focusDistance:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " CenterX: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget v2, v2, Lcom/sun/prism/paint/RadialGradient;->centerX:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " CenterY "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget v2, v2, Lcom/sun/prism/paint/RadialGradient;->centerY:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Radius: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget v2, v2, Lcom/sun/prism/paint/RadialGradient;->radius:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "stops:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    .line 80
    invoke-virtual {v2}, Lcom/sun/prism/paint/RadialGradient;->getStops()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/prism/paint/RadialGradient;
    return-object v0
.end method
