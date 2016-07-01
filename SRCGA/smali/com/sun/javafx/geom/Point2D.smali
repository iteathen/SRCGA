.class public Lcom/sun/javafx/geom/Point2D;
.super Ljava/lang/Object;
.source "Point2D.java"


# instance fields
.field public x:F

.field public y:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 48
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Point2D;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(FF)V
    .locals 5

    .prologue
    .line 59
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Point2D;
    move v1, p1

    .local v1, "x":F
    move v2, p2

    .local v2, "y":F
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 60
    move-object v3, v0

    move v4, v1

    iput v4, v3, Lcom/sun/javafx/geom/Point2D;->x:F

    .line 61
    move-object v3, v0

    move v4, v2

    iput v4, v3, Lcom/sun/javafx/geom/Point2D;->y:F

    .line 62
    return-void
.end method

.method public static distance(FFFF)F
    .locals 7

    .prologue
    .line 113
    move v0, p0

    .local v0, "x1":F
    move v1, p1

    .local v1, "y1":F
    move v2, p2

    .local v2, "x2":F
    move v3, p3

    .local v3, "y2":F
    move v4, v0

    move v5, v2

    sub-float/2addr v4, v5

    move v0, v4

    .line 114
    move v4, v1

    move v5, v3

    sub-float/2addr v4, v5

    move v1, v4

    .line 115
    move v4, v0

    move v5, v0

    mul-float/2addr v4, v5

    move v5, v1

    move v6, v1

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v4, v4

    move v0, v4

    .end local v0    # "x1":F
    return v0
.end method

.method public static distanceSq(FFFF)F
    .locals 7

    .prologue
    .line 97
    move v0, p0

    .local v0, "x1":F
    move v1, p1

    .local v1, "y1":F
    move v2, p2

    .local v2, "x2":F
    move v3, p3

    .local v3, "y2":F
    move v4, v0

    move v5, v2

    sub-float/2addr v4, v5

    move v0, v4

    .line 98
    move v4, v1

    move v5, v3

    sub-float/2addr v4, v5

    move v1, v4

    .line 99
    move v4, v0

    move v5, v0

    mul-float/2addr v4, v5

    move v5, v1

    move v6, v1

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    move v0, v4

    .end local v0    # "x1":F
    return v0
.end method


# virtual methods
.method public distance(FF)F
    .locals 7

    .prologue
    .line 162
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/geom/Point2D;
    move v2, p1

    .local v2, "px":F
    move v3, p2

    .local v3, "py":F
    move v4, v2

    move-object v5, v1

    iget v5, v5, Lcom/sun/javafx/geom/Point2D;->x:F

    sub-float/2addr v4, v5

    move v2, v4

    .line 163
    move v4, v3

    move-object v5, v1

    iget v5, v5, Lcom/sun/javafx/geom/Point2D;->y:F

    sub-float/2addr v4, v5

    move v3, v4

    .line 164
    move v4, v2

    move v5, v2

    mul-float/2addr v4, v5

    move v5, v3

    move v6, v3

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v4, v4

    move v1, v4

    .end local v1    # "this":Lcom/sun/javafx/geom/Point2D;
    return v1
.end method

.method public distance(Lcom/sun/javafx/geom/Point2D;)F
    .locals 7

    .prologue
    .line 177
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Point2D;
    move-object v1, p1

    .local v1, "pt":Lcom/sun/javafx/geom/Point2D;
    move-object v4, v1

    iget v4, v4, Lcom/sun/javafx/geom/Point2D;->x:F

    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/geom/Point2D;->x:F

    sub-float/2addr v4, v5

    move v2, v4

    .line 178
    .local v2, "px":F
    move-object v4, v1

    iget v4, v4, Lcom/sun/javafx/geom/Point2D;->y:F

    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/geom/Point2D;->y:F

    sub-float/2addr v4, v5

    move v3, v4

    .line 179
    .local v3, "py":F
    move v4, v2

    move v5, v2

    mul-float/2addr v4, v5

    move v5, v3

    move v6, v3

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v4, v4

    move v0, v4

    .end local v0    # "this":Lcom/sun/javafx/geom/Point2D;
    return v0
.end method

.method public distanceSq(FF)F
    .locals 6

    .prologue
    .line 130
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Point2D;
    move v1, p1

    .local v1, "px":F
    move v2, p2

    .local v2, "py":F
    move v3, v1

    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/geom/Point2D;->x:F

    sub-float/2addr v3, v4

    move v1, v3

    .line 131
    move v3, v2

    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/geom/Point2D;->y:F

    sub-float/2addr v3, v4

    move v2, v3

    .line 132
    move v3, v1

    move v4, v1

    mul-float/2addr v3, v4

    move v4, v2

    move v5, v2

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    move v0, v3

    .end local v0    # "this":Lcom/sun/javafx/geom/Point2D;
    return v0
.end method

.method public distanceSq(Lcom/sun/javafx/geom/Point2D;)F
    .locals 7

    .prologue
    .line 145
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Point2D;
    move-object v1, p1

    .local v1, "pt":Lcom/sun/javafx/geom/Point2D;
    move-object v4, v1

    iget v4, v4, Lcom/sun/javafx/geom/Point2D;->x:F

    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/geom/Point2D;->x:F

    sub-float/2addr v4, v5

    move v2, v4

    .line 146
    .local v2, "px":F
    move-object v4, v1

    iget v4, v4, Lcom/sun/javafx/geom/Point2D;->y:F

    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/geom/Point2D;->y:F

    sub-float/2addr v4, v5

    move v3, v4

    .line 147
    .local v3, "py":F
    move v4, v2

    move v5, v2

    mul-float/2addr v4, v5

    move v5, v3

    move v6, v3

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    move v0, v4

    .end local v0    # "this":Lcom/sun/javafx/geom/Point2D;
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    .line 203
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Point2D;
    move-object v1, p1

    .local v1, "obj":Ljava/lang/Object;
    move-object v3, v1

    move-object v4, v0

    if-ne v3, v4, :cond_0

    const/4 v3, 0x1

    move v0, v3

    .line 208
    .end local v0    # "this":Lcom/sun/javafx/geom/Point2D;
    :goto_0
    return v0

    .line 204
    .restart local v0    # "this":Lcom/sun/javafx/geom/Point2D;
    :cond_0
    move-object v3, v1

    instance-of v3, v3, Lcom/sun/javafx/geom/Point2D;

    if-eqz v3, :cond_2

    .line 205
    move-object v3, v1

    check-cast v3, Lcom/sun/javafx/geom/Point2D;

    move-object v2, v3

    .line 206
    .local v2, "p2d":Lcom/sun/javafx/geom/Point2D;
    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/geom/Point2D;->x:F

    move-object v4, v2

    iget v4, v4, Lcom/sun/javafx/geom/Point2D;->x:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_1

    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/geom/Point2D;->y:F

    move-object v4, v2

    iget v4, v4, Lcom/sun/javafx/geom/Point2D;->y:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_1

    const/4 v3, 0x1

    :goto_1
    move v0, v3

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    .line 208
    .end local v2    # "p2d":Lcom/sun/javafx/geom/Point2D;
    :cond_2
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    .line 187
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Point2D;
    move-object v2, v0

    iget v2, v2, Lcom/sun/javafx/geom/Point2D;->x:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    move v1, v2

    .line 188
    .local v1, "bits":I
    move v2, v1

    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/geom/Point2D;->y:F

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    const/16 v4, 0x1f

    mul-int/lit8 v3, v3, 0x1f

    xor-int/2addr v2, v3

    move v1, v2

    .line 189
    move v2, v1

    move v0, v2

    .end local v0    # "this":Lcom/sun/javafx/geom/Point2D;
    return v0
.end method

.method public setLocation(FF)V
    .locals 5

    .prologue
    .line 72
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Point2D;
    move v1, p1

    .local v1, "x":F
    move v2, p2

    .local v2, "y":F
    move-object v3, v0

    move v4, v1

    iput v4, v3, Lcom/sun/javafx/geom/Point2D;->x:F

    .line 73
    move-object v3, v0

    move v4, v2

    iput v4, v3, Lcom/sun/javafx/geom/Point2D;->y:F

    .line 74
    return-void
.end method

.method public setLocation(Lcom/sun/javafx/geom/Point2D;)V
    .locals 5

    .prologue
    .line 83
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Point2D;
    move-object v1, p1

    .local v1, "p":Lcom/sun/javafx/geom/Point2D;
    move-object v2, v0

    move-object v3, v1

    iget v3, v3, Lcom/sun/javafx/geom/Point2D;->x:F

    move-object v4, v1

    iget v4, v4, Lcom/sun/javafx/geom/Point2D;->y:F

    invoke-virtual {v2, v3, v4}, Lcom/sun/javafx/geom/Point2D;->setLocation(FF)V

    .line 84
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 217
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/Point2D;
    new-instance v1, Ljava/lang/StringBuilder;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Point2D["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget v2, v2, Lcom/sun/javafx/geom/Point2D;->x:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget v2, v2, Lcom/sun/javafx/geom/Point2D;->y:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/geom/Point2D;
    return-object v0
.end method
