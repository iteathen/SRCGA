.class Lcom/sun/javafx/sg/prism/ShapeEvaluator;
.super Ljava/lang/Object;
.source "ShapeEvaluator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/javafx/sg/prism/ShapeEvaluator$Iterator;,
        Lcom/sun/javafx/sg/prism/ShapeEvaluator$MorphedShape;,
        Lcom/sun/javafx/sg/prism/ShapeEvaluator$Geometry;
    }
.end annotation


# instance fields
.field private geom0:Lcom/sun/javafx/sg/prism/ShapeEvaluator$Geometry;

.field private geom1:Lcom/sun/javafx/sg/prism/ShapeEvaluator$Geometry;

.field private savedv0:Lcom/sun/javafx/geom/Shape;

.field private savedv1:Lcom/sun/javafx/geom/Shape;


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 79
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/ShapeEvaluator;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(FFF)F
    .locals 6

    .prologue
    .line 79
    move v0, p0

    .local v0, "x0":F
    move v1, p1

    .local v1, "x1":F
    move v2, p2

    .local v2, "x2":F
    move v3, v0

    move v4, v1

    move v5, v2

    invoke-static {v3, v4, v5}, Lcom/sun/javafx/sg/prism/ShapeEvaluator;->interp(FFF)F

    move-result v3

    move v0, v3

    .end local v0    # "x0":F
    return v0
.end method

.method private getShape(F)Lcom/sun/javafx/geom/Shape;
    .locals 8

    .prologue
    .line 112
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/ShapeEvaluator;
    move v1, p1

    .local v1, "fraction":F
    new-instance v2, Lcom/sun/javafx/sg/prism/ShapeEvaluator$MorphedShape;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/sg/prism/ShapeEvaluator;->geom0:Lcom/sun/javafx/sg/prism/ShapeEvaluator$Geometry;

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/sg/prism/ShapeEvaluator;->geom1:Lcom/sun/javafx/sg/prism/ShapeEvaluator$Geometry;

    move v6, v1

    invoke-direct {v3, v4, v5, v6}, Lcom/sun/javafx/sg/prism/ShapeEvaluator$MorphedShape;-><init>(Lcom/sun/javafx/sg/prism/ShapeEvaluator$Geometry;Lcom/sun/javafx/sg/prism/ShapeEvaluator$Geometry;F)V

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/sg/prism/ShapeEvaluator;
    return-object v0
.end method

.method private static interp(FFF)F
    .locals 6

    .prologue
    .line 146
    move v0, p0

    .local v0, "v0":F
    move v1, p1

    .local v1, "v1":F
    move v2, p2

    .local v2, "t":F
    move v3, v0

    move v4, v1

    move v5, v0

    sub-float/2addr v4, v5

    move v5, v2

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    move v0, v3

    .end local v0    # "v0":F
    return v0
.end method

.method private static mergeTvals([F[F)[F
    .locals 7

    .prologue
    .line 116
    move-object v0, p0

    .local v0, "tvals0":[F
    move-object v1, p1

    .local v1, "tvals1":[F
    move-object v4, v0

    move-object v5, v1

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Lcom/sun/javafx/sg/prism/ShapeEvaluator;->sortTvals([F[F[F)I

    move-result v4

    move v2, v4

    .line 117
    .local v2, "count":I
    move v4, v2

    new-array v4, v4, [F

    move-object v3, v4

    .line 118
    .local v3, "newtvals":[F
    move-object v4, v0

    move-object v5, v1

    move-object v6, v3

    invoke-static {v4, v5, v6}, Lcom/sun/javafx/sg/prism/ShapeEvaluator;->sortTvals([F[F[F)I

    move-result v4

    .line 119
    move-object v4, v3

    move-object v0, v4

    .end local v0    # "tvals0":[F
    return-object v0
.end method

.method private recalculate(Lcom/sun/javafx/geom/Shape;Lcom/sun/javafx/geom/Shape;)V
    .locals 11

    .prologue
    .line 102
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/ShapeEvaluator;
    move-object v1, p1

    .local v1, "v0":Lcom/sun/javafx/geom/Shape;
    move-object v2, p2

    .local v2, "v1":Lcom/sun/javafx/geom/Shape;
    move-object v6, v0

    new-instance v7, Lcom/sun/javafx/sg/prism/ShapeEvaluator$Geometry;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    move-object v9, v1

    invoke-direct {v8, v9}, Lcom/sun/javafx/sg/prism/ShapeEvaluator$Geometry;-><init>(Lcom/sun/javafx/geom/Shape;)V

    iput-object v7, v6, Lcom/sun/javafx/sg/prism/ShapeEvaluator;->geom0:Lcom/sun/javafx/sg/prism/ShapeEvaluator$Geometry;

    .line 103
    move-object v6, v0

    new-instance v7, Lcom/sun/javafx/sg/prism/ShapeEvaluator$Geometry;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    move-object v9, v2

    invoke-direct {v8, v9}, Lcom/sun/javafx/sg/prism/ShapeEvaluator$Geometry;-><init>(Lcom/sun/javafx/geom/Shape;)V

    iput-object v7, v6, Lcom/sun/javafx/sg/prism/ShapeEvaluator;->geom1:Lcom/sun/javafx/sg/prism/ShapeEvaluator$Geometry;

    .line 104
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/sg/prism/ShapeEvaluator;->geom0:Lcom/sun/javafx/sg/prism/ShapeEvaluator$Geometry;

    invoke-virtual {v6}, Lcom/sun/javafx/sg/prism/ShapeEvaluator$Geometry;->getTvals()[F

    move-result-object v6

    move-object v3, v6

    .line 105
    .local v3, "tvals0":[F
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/sg/prism/ShapeEvaluator;->geom1:Lcom/sun/javafx/sg/prism/ShapeEvaluator$Geometry;

    invoke-virtual {v6}, Lcom/sun/javafx/sg/prism/ShapeEvaluator$Geometry;->getTvals()[F

    move-result-object v6

    move-object v4, v6

    .line 106
    .local v4, "tvals1":[F
    move-object v6, v3

    move-object v7, v4

    invoke-static {v6, v7}, Lcom/sun/javafx/sg/prism/ShapeEvaluator;->mergeTvals([F[F)[F

    move-result-object v6

    move-object v5, v6

    .line 107
    .local v5, "masterTvals":[F
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/sg/prism/ShapeEvaluator;->geom0:Lcom/sun/javafx/sg/prism/ShapeEvaluator$Geometry;

    move-object v7, v5

    invoke-virtual {v6, v7}, Lcom/sun/javafx/sg/prism/ShapeEvaluator$Geometry;->setTvals([F)V

    .line 108
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/sg/prism/ShapeEvaluator;->geom1:Lcom/sun/javafx/sg/prism/ShapeEvaluator$Geometry;

    move-object v7, v5

    invoke-virtual {v6, v7}, Lcom/sun/javafx/sg/prism/ShapeEvaluator$Geometry;->setTvals([F)V

    .line 109
    return-void
.end method

.method private static sortTvals([F[F[F)I
    .locals 11

    .prologue
    .line 126
    move-object v0, p0

    .local v0, "tvals0":[F
    move-object v1, p1

    .local v1, "tvals1":[F
    move-object v2, p2

    .local v2, "newtvals":[F
    const/4 v8, 0x0

    move v3, v8

    .line 127
    .local v3, "i0":I
    const/4 v8, 0x0

    move v4, v8

    .line 128
    .local v4, "i1":I
    const/4 v8, 0x0

    move v5, v8

    .line 129
    .local v5, "numtvals":I
    :goto_0
    move v8, v3

    move-object v9, v0

    array-length v9, v9

    if-ge v8, v9, :cond_4

    move v8, v4

    move-object v9, v1

    array-length v9, v9

    if-ge v8, v9, :cond_4

    .line 130
    move-object v8, v0

    move v9, v3

    aget v8, v8, v9

    move v6, v8

    .line 131
    .local v6, "t0":F
    move-object v8, v1

    move v9, v4

    aget v8, v8, v9

    move v7, v8

    .line 132
    .local v7, "t1":F
    move v8, v6

    move v9, v7

    cmpg-float v8, v8, v9

    if-gtz v8, :cond_1

    .line 133
    move-object v8, v2

    if-eqz v8, :cond_0

    move-object v8, v2

    move v9, v5

    move v10, v6

    aput v10, v8, v9

    .line 134
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 136
    :cond_1
    move v8, v7

    move v9, v6

    cmpg-float v8, v8, v9

    if-gtz v8, :cond_3

    .line 137
    move-object v8, v2

    if-eqz v8, :cond_2

    move-object v8, v2

    move v9, v5

    move v10, v7

    aput v10, v8, v9

    .line 138
    :cond_2
    add-int/lit8 v4, v4, 0x1

    .line 140
    :cond_3
    add-int/lit8 v5, v5, 0x1

    .line 141
    goto :goto_0

    .line 142
    .end local v6    # "t0":F
    .end local v7    # "t1":F
    :cond_4
    move v8, v5

    move v0, v8

    .end local v0    # "tvals0":[F
    return v0
.end method


# virtual methods
.method public evaluate(Lcom/sun/javafx/geom/Shape;Lcom/sun/javafx/geom/Shape;F)Lcom/sun/javafx/geom/Shape;
    .locals 8

    .prologue
    .line 86
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/ShapeEvaluator;
    move-object v1, p1

    .local v1, "v0":Lcom/sun/javafx/geom/Shape;
    move-object v2, p2

    .local v2, "v1":Lcom/sun/javafx/geom/Shape;
    move v3, p3

    .local v3, "fraction":F
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/sg/prism/ShapeEvaluator;->savedv0:Lcom/sun/javafx/geom/Shape;

    move-object v6, v1

    if-ne v5, v6, :cond_0

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/sg/prism/ShapeEvaluator;->savedv1:Lcom/sun/javafx/geom/Shape;

    move-object v6, v2

    if-eq v5, v6, :cond_1

    .line 87
    :cond_0
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/sg/prism/ShapeEvaluator;->savedv0:Lcom/sun/javafx/geom/Shape;

    move-object v6, v2

    if-ne v5, v6, :cond_2

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/sg/prism/ShapeEvaluator;->savedv1:Lcom/sun/javafx/geom/Shape;

    move-object v6, v1

    if-ne v5, v6, :cond_2

    .line 89
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/sg/prism/ShapeEvaluator;->geom0:Lcom/sun/javafx/sg/prism/ShapeEvaluator$Geometry;

    move-object v4, v5

    .line 90
    .local v4, "gtmp":Lcom/sun/javafx/sg/prism/ShapeEvaluator$Geometry;
    move-object v5, v0

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/sg/prism/ShapeEvaluator;->geom1:Lcom/sun/javafx/sg/prism/ShapeEvaluator$Geometry;

    iput-object v6, v5, Lcom/sun/javafx/sg/prism/ShapeEvaluator;->geom0:Lcom/sun/javafx/sg/prism/ShapeEvaluator$Geometry;

    .line 91
    move-object v5, v0

    move-object v6, v4

    iput-object v6, v5, Lcom/sun/javafx/sg/prism/ShapeEvaluator;->geom1:Lcom/sun/javafx/sg/prism/ShapeEvaluator$Geometry;

    .line 92
    .line 95
    .end local v4    # "gtmp":Lcom/sun/javafx/sg/prism/ShapeEvaluator$Geometry;
    :goto_0
    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Lcom/sun/javafx/sg/prism/ShapeEvaluator;->savedv0:Lcom/sun/javafx/geom/Shape;

    .line 96
    move-object v5, v0

    move-object v6, v2

    iput-object v6, v5, Lcom/sun/javafx/sg/prism/ShapeEvaluator;->savedv1:Lcom/sun/javafx/geom/Shape;

    .line 98
    :cond_1
    move-object v5, v0

    move v6, v3

    invoke-direct {v5, v6}, Lcom/sun/javafx/sg/prism/ShapeEvaluator;->getShape(F)Lcom/sun/javafx/geom/Shape;

    move-result-object v5

    move-object v0, v5

    .end local v0    # "this":Lcom/sun/javafx/sg/prism/ShapeEvaluator;
    return-object v0

    .line 93
    .restart local v0    # "this":Lcom/sun/javafx/sg/prism/ShapeEvaluator;
    :cond_2
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    invoke-direct {v5, v6, v7}, Lcom/sun/javafx/sg/prism/ShapeEvaluator;->recalculate(Lcom/sun/javafx/geom/Shape;Lcom/sun/javafx/geom/Shape;)V

    goto :goto_0
.end method
