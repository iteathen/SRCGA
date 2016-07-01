.class public abstract Lcom/sun/prism/paint/Gradient;
.super Lcom/sun/prism/paint/Paint;
.source "Gradient.java"


# static fields
.field public static final PAD:I = 0x0

.field public static final REFLECT:I = 0x1

.field public static final REPEAT:I = 0x2


# instance fields
.field private cacheOffset:J

.field private final gradientTransform:Lcom/sun/javafx/geom/transform/BaseTransform;

.field private final numStops:I

.field private final spreadMethod:I

.field private final stops:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sun/prism/paint/Stop;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/sun/prism/paint/Paint$Type;Lcom/sun/javafx/geom/transform/BaseTransform;ZILjava/util/List;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/prism/paint/Paint$Type;",
            "Lcom/sun/javafx/geom/transform/BaseTransform;",
            "ZI",
            "Ljava/util/List",
            "<",
            "Lcom/sun/prism/paint/Stop;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 49
    move-object v1, p0

    .local v1, "this":Lcom/sun/prism/paint/Gradient;
    move-object v2, p1

    .local v2, "type":Lcom/sun/prism/paint/Paint$Type;
    move-object v3, p2

    .local v3, "gradientTransform":Lcom/sun/javafx/geom/transform/BaseTransform;
    move v4, p3

    .local v4, "proportional":Z
    move v5, p4

    .local v5, "spreadMethod":I
    move-object/from16 v6, p5

    .local v6, "stops":Ljava/util/List;, "Ljava/util/List<Lcom/sun/prism/paint/Stop;>;"
    move-object v7, v1

    move-object v8, v2

    move v9, v4

    const/4 v10, 0x0

    invoke-direct {v7, v8, v9, v10}, Lcom/sun/prism/paint/Paint;-><init>(Lcom/sun/prism/paint/Paint$Type;ZZ)V

    .line 41
    move-object v7, v1

    const-wide/16 v8, -0x1

    iput-wide v8, v7, Lcom/sun/prism/paint/Gradient;->cacheOffset:J

    .line 50
    move-object v7, v3

    if-eqz v7, :cond_0

    .line 51
    move-object v7, v1

    move-object v8, v3

    invoke-virtual {v8}, Lcom/sun/javafx/geom/transform/BaseTransform;->copy()Lcom/sun/javafx/geom/transform/BaseTransform;

    move-result-object v8

    iput-object v8, v7, Lcom/sun/prism/paint/Gradient;->gradientTransform:Lcom/sun/javafx/geom/transform/BaseTransform;

    .line 55
    :goto_0
    move-object v7, v1

    move v8, v5

    iput v8, v7, Lcom/sun/prism/paint/Gradient;->spreadMethod:I

    .line 56
    move-object v7, v1

    move-object v8, v6

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    iput v8, v7, Lcom/sun/prism/paint/Gradient;->numStops:I

    .line 57
    move-object v7, v1

    move-object v8, v6

    iput-object v8, v7, Lcom/sun/prism/paint/Gradient;->stops:Ljava/util/List;

    .line 58
    return-void

    .line 53
    :cond_0
    move-object v7, v1

    sget-object v8, Lcom/sun/javafx/geom/transform/BaseTransform;->IDENTITY_TRANSFORM:Lcom/sun/javafx/geom/transform/BaseTransform;

    iput-object v8, v7, Lcom/sun/prism/paint/Gradient;->gradientTransform:Lcom/sun/javafx/geom/transform/BaseTransform;

    goto :goto_0
.end method


# virtual methods
.method public getGradientOffset()J
    .locals 3

    .prologue
    .line 82
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/paint/Gradient;
    move-object v1, v0

    iget-wide v1, v1, Lcom/sun/prism/paint/Gradient;->cacheOffset:J

    move-wide v0, v1

    .end local v0    # "this":Lcom/sun/prism/paint/Gradient;
    return-wide v0
.end method

.method public getGradientTransformNoClone()Lcom/sun/javafx/geom/transform/BaseTransform;
    .locals 2

    .prologue
    .line 66
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/paint/Gradient;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/prism/paint/Gradient;->gradientTransform:Lcom/sun/javafx/geom/transform/BaseTransform;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/prism/paint/Gradient;
    return-object v0
.end method

.method public getNumStops()I
    .locals 2

    .prologue
    .line 70
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/paint/Gradient;
    move-object v1, v0

    iget v1, v1, Lcom/sun/prism/paint/Gradient;->numStops:I

    move v0, v1

    .end local v0    # "this":Lcom/sun/prism/paint/Gradient;
    return v0
.end method

.method public getSpreadMethod()I
    .locals 2

    .prologue
    .line 62
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/paint/Gradient;
    move-object v1, v0

    iget v1, v1, Lcom/sun/prism/paint/Gradient;->spreadMethod:I

    move v0, v1

    .end local v0    # "this":Lcom/sun/prism/paint/Gradient;
    return v0
.end method

.method public getStops()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sun/prism/paint/Stop;",
            ">;"
        }
    .end annotation

    .prologue
    .line 74
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/paint/Gradient;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/prism/paint/Gradient;->stops:Ljava/util/List;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/prism/paint/Gradient;
    return-object v0
.end method

.method public isOpaque()Z
    .locals 4

    .prologue
    .line 87
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/paint/Gradient;
    const/4 v2, 0x0

    move v1, v2

    .local v1, "i":I
    :goto_0
    move v2, v1

    move-object v3, v0

    iget v3, v3, Lcom/sun/prism/paint/Gradient;->numStops:I

    if-ge v2, v3, :cond_1

    .line 88
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/prism/paint/Gradient;->stops:Ljava/util/List;

    move v3, v1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/prism/paint/Stop;

    invoke-virtual {v2}, Lcom/sun/prism/paint/Stop;->getColor()Lcom/sun/prism/paint/Color;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sun/prism/paint/Color;->isOpaque()Z

    move-result v2

    if-nez v2, :cond_0

    .line 89
    const/4 v2, 0x0

    move v0, v2

    .line 92
    .end local v0    # "this":Lcom/sun/prism/paint/Gradient;
    :goto_1
    return v0

    .line 87
    .restart local v0    # "this":Lcom/sun/prism/paint/Gradient;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 92
    :cond_1
    const/4 v2, 0x1

    move v0, v2

    goto :goto_1
.end method

.method public setGradientOffset(J)V
    .locals 7

    .prologue
    .line 78
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/paint/Gradient;
    move-wide v1, p1

    .local v1, "offset":J
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Lcom/sun/prism/paint/Gradient;->cacheOffset:J

    .line 79
    return-void
.end method
