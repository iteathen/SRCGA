.class Lcom/sun/javafx/geom/EllipseIterator;
.super Ljava/lang/Object;
.source "EllipseIterator.java"

# interfaces
.implements Lcom/sun/javafx/geom/PathIterator;


# static fields
.field public static final CtrlVal:D = 0.5522847498307933

.field private static final ctrlpts:[[D

.field private static final ncv:D = 0.22385762508460333

.field private static final pcv:D = 0.7761423749153966


# instance fields
.field h:D

.field index:I

.field transform:Lcom/sun/javafx/geom/transform/BaseTransform;

.field w:D

.field x:D

.field y:D


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    .line 91
    const/4 v0, 0x4

    new-array v0, v0, [[D

    move-object v8, v0

    move-object v0, v8

    move-object v1, v8

    const/4 v2, 0x0

    const/4 v3, 0x6

    new-array v3, v3, [D

    fill-array-data v3, :array_0

    aput-object v3, v1, v2

    move-object v8, v0

    move-object v0, v8

    move-object v1, v8

    const/4 v2, 0x1

    const/4 v3, 0x6

    new-array v3, v3, [D

    fill-array-data v3, :array_1

    aput-object v3, v1, v2

    move-object v8, v0

    move-object v0, v8

    move-object v1, v8

    const/4 v2, 0x2

    const/4 v3, 0x6

    new-array v3, v3, [D

    fill-array-data v3, :array_2

    aput-object v3, v1, v2

    move-object v8, v0

    move-object v0, v8

    move-object v1, v8

    const/4 v2, 0x3

    const/4 v3, 0x6

    new-array v3, v3, [D

    fill-array-data v3, :array_3

    aput-object v3, v1, v2

    sput-object v0, Lcom/sun/javafx/geom/EllipseIterator;->ctrlpts:[[D

    return-void

    :array_0
    .array-data 8
        0x3ff0000000000000L    # 1.0
        0x3fe8d62888a9a510L    # 0.7761423749153966
        0x3fe8d62888a9a510L    # 0.7761423749153966
        0x3ff0000000000000L    # 1.0
        0x3fe0000000000000L    # 0.5
        0x3ff0000000000000L    # 1.0
    .end array-data

    :array_1
    .array-data 8
        0x3fcca75ddd596bbeL    # 0.22385762508460333
        0x3ff0000000000000L    # 1.0
        0x0
        0x3fe8d62888a9a510L    # 0.7761423749153966
        0x0
        0x3fe0000000000000L    # 0.5
    .end array-data

    :array_2
    .array-data 8
        0x0
        0x3fcca75ddd596bbeL    # 0.22385762508460333
        0x3fcca75ddd596bbeL    # 0.22385762508460333
        0x0
        0x3fe0000000000000L    # 0.5
        0x0
    .end array-data

    :array_3
    .array-data 8
        0x3fe8d62888a9a510L    # 0.7761423749153966
        0x0
        0x3ff0000000000000L    # 1.0
        0x3fcca75ddd596bbeL    # 0.22385762508460333
        0x3ff0000000000000L    # 1.0
        0x3fe0000000000000L    # 0.5
    .end array-data
.end method

.method constructor <init>(Lcom/sun/javafx/geom/Ellipse2D;Lcom/sun/javafx/geom/transform/BaseTransform;)V
    .locals 7

    .prologue
    .line 43
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/EllipseIterator;
    move-object v1, p1

    .local v1, "e":Lcom/sun/javafx/geom/Ellipse2D;
    move-object v2, p2

    .local v2, "tx":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 44
    move-object v3, v0

    move-object v4, v1

    iget v4, v4, Lcom/sun/javafx/geom/Ellipse2D;->x:F

    float-to-double v4, v4

    iput-wide v4, v3, Lcom/sun/javafx/geom/EllipseIterator;->x:D

    .line 45
    move-object v3, v0

    move-object v4, v1

    iget v4, v4, Lcom/sun/javafx/geom/Ellipse2D;->y:F

    float-to-double v4, v4

    iput-wide v4, v3, Lcom/sun/javafx/geom/EllipseIterator;->y:D

    .line 46
    move-object v3, v0

    move-object v4, v1

    iget v4, v4, Lcom/sun/javafx/geom/Ellipse2D;->width:F

    float-to-double v4, v4

    iput-wide v4, v3, Lcom/sun/javafx/geom/EllipseIterator;->w:D

    .line 47
    move-object v3, v0

    move-object v4, v1

    iget v4, v4, Lcom/sun/javafx/geom/Ellipse2D;->height:F

    float-to-double v4, v4

    iput-wide v4, v3, Lcom/sun/javafx/geom/EllipseIterator;->h:D

    .line 48
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/sun/javafx/geom/EllipseIterator;->transform:Lcom/sun/javafx/geom/transform/BaseTransform;

    .line 49
    move-object v3, v0

    iget-wide v3, v3, Lcom/sun/javafx/geom/EllipseIterator;->w:D

    const-wide/16 v5, 0x0

    cmpg-double v3, v3, v5

    if-ltz v3, :cond_0

    move-object v3, v0

    iget-wide v3, v3, Lcom/sun/javafx/geom/EllipseIterator;->h:D

    const-wide/16 v5, 0x0

    cmpg-double v3, v3, v5

    if-gez v3, :cond_1

    .line 50
    :cond_0
    move-object v3, v0

    const/4 v4, 0x6

    iput v4, v3, Lcom/sun/javafx/geom/EllipseIterator;->index:I

    .line 52
    :cond_1
    return-void
.end method


# virtual methods
.method public currentSegment([F)I
    .locals 13

    .prologue
    .line 117
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/geom/EllipseIterator;
    move-object v2, p1

    .local v2, "coords":[F
    move-object v4, v1

    invoke-virtual {v4}, Lcom/sun/javafx/geom/EllipseIterator;->isDone()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 118
    new-instance v4, Ljava/util/NoSuchElementException;

    move-object v12, v4

    move-object v4, v12

    move-object v5, v12

    const-string v6, "ellipse iterator out of bounds"

    invoke-direct {v5, v6}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 120
    :cond_0
    move-object v4, v1

    iget v4, v4, Lcom/sun/javafx/geom/EllipseIterator;->index:I

    const/4 v5, 0x5

    if-ne v4, v5, :cond_1

    .line 121
    const/4 v4, 0x4

    move v1, v4

    .line 142
    .end local v1    # "this":Lcom/sun/javafx/geom/EllipseIterator;
    :goto_0
    return v1

    .line 123
    .restart local v1    # "this":Lcom/sun/javafx/geom/EllipseIterator;
    :cond_1
    move-object v4, v1

    iget v4, v4, Lcom/sun/javafx/geom/EllipseIterator;->index:I

    if-nez v4, :cond_3

    .line 124
    sget-object v4, Lcom/sun/javafx/geom/EllipseIterator;->ctrlpts:[[D

    const/4 v5, 0x3

    aget-object v4, v4, v5

    move-object v3, v4

    .line 125
    .local v3, "ctrls":[D
    move-object v4, v2

    const/4 v5, 0x0

    move-object v6, v1

    iget-wide v6, v6, Lcom/sun/javafx/geom/EllipseIterator;->x:D

    move-object v8, v3

    const/4 v9, 0x4

    aget-wide v8, v8, v9

    move-object v10, v1

    iget-wide v10, v10, Lcom/sun/javafx/geom/EllipseIterator;->w:D

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    double-to-float v6, v6

    aput v6, v4, v5

    .line 126
    move-object v4, v2

    const/4 v5, 0x1

    move-object v6, v1

    iget-wide v6, v6, Lcom/sun/javafx/geom/EllipseIterator;->y:D

    move-object v8, v3

    const/4 v9, 0x5

    aget-wide v8, v8, v9

    move-object v10, v1

    iget-wide v10, v10, Lcom/sun/javafx/geom/EllipseIterator;->h:D

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    double-to-float v6, v6

    aput v6, v4, v5

    .line 127
    move-object v4, v1

    iget-object v4, v4, Lcom/sun/javafx/geom/EllipseIterator;->transform:Lcom/sun/javafx/geom/transform/BaseTransform;

    if-eqz v4, :cond_2

    .line 128
    move-object v4, v1

    iget-object v4, v4, Lcom/sun/javafx/geom/EllipseIterator;->transform:Lcom/sun/javafx/geom/transform/BaseTransform;

    move-object v5, v2

    const/4 v6, 0x0

    move-object v7, v2

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-virtual/range {v4 .. v9}, Lcom/sun/javafx/geom/transform/BaseTransform;->transform([FI[FII)V

    .line 130
    :cond_2
    const/4 v4, 0x0

    move v1, v4

    goto :goto_0

    .line 132
    .end local v3    # "ctrls":[D
    :cond_3
    sget-object v4, Lcom/sun/javafx/geom/EllipseIterator;->ctrlpts:[[D

    move-object v5, v1

    iget v5, v5, Lcom/sun/javafx/geom/EllipseIterator;->index:I

    const/4 v6, 0x1

    add-int/lit8 v5, v5, -0x1

    aget-object v4, v4, v5

    move-object v3, v4

    .line 133
    .restart local v3    # "ctrls":[D
    move-object v4, v2

    const/4 v5, 0x0

    move-object v6, v1

    iget-wide v6, v6, Lcom/sun/javafx/geom/EllipseIterator;->x:D

    move-object v8, v3

    const/4 v9, 0x0

    aget-wide v8, v8, v9

    move-object v10, v1

    iget-wide v10, v10, Lcom/sun/javafx/geom/EllipseIterator;->w:D

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    double-to-float v6, v6

    aput v6, v4, v5

    .line 134
    move-object v4, v2

    const/4 v5, 0x1

    move-object v6, v1

    iget-wide v6, v6, Lcom/sun/javafx/geom/EllipseIterator;->y:D

    move-object v8, v3

    const/4 v9, 0x1

    aget-wide v8, v8, v9

    move-object v10, v1

    iget-wide v10, v10, Lcom/sun/javafx/geom/EllipseIterator;->h:D

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    double-to-float v6, v6

    aput v6, v4, v5

    .line 135
    move-object v4, v2

    const/4 v5, 0x2

    move-object v6, v1

    iget-wide v6, v6, Lcom/sun/javafx/geom/EllipseIterator;->x:D

    move-object v8, v3

    const/4 v9, 0x2

    aget-wide v8, v8, v9

    move-object v10, v1

    iget-wide v10, v10, Lcom/sun/javafx/geom/EllipseIterator;->w:D

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    double-to-float v6, v6

    aput v6, v4, v5

    .line 136
    move-object v4, v2

    const/4 v5, 0x3

    move-object v6, v1

    iget-wide v6, v6, Lcom/sun/javafx/geom/EllipseIterator;->y:D

    move-object v8, v3

    const/4 v9, 0x3

    aget-wide v8, v8, v9

    move-object v10, v1

    iget-wide v10, v10, Lcom/sun/javafx/geom/EllipseIterator;->h:D

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    double-to-float v6, v6

    aput v6, v4, v5

    .line 137
    move-object v4, v2

    const/4 v5, 0x4

    move-object v6, v1

    iget-wide v6, v6, Lcom/sun/javafx/geom/EllipseIterator;->x:D

    move-object v8, v3

    const/4 v9, 0x4

    aget-wide v8, v8, v9

    move-object v10, v1

    iget-wide v10, v10, Lcom/sun/javafx/geom/EllipseIterator;->w:D

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    double-to-float v6, v6

    aput v6, v4, v5

    .line 138
    move-object v4, v2

    const/4 v5, 0x5

    move-object v6, v1

    iget-wide v6, v6, Lcom/sun/javafx/geom/EllipseIterator;->y:D

    move-object v8, v3

    const/4 v9, 0x5

    aget-wide v8, v8, v9

    move-object v10, v1

    iget-wide v10, v10, Lcom/sun/javafx/geom/EllipseIterator;->h:D

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    double-to-float v6, v6

    aput v6, v4, v5

    .line 139
    move-object v4, v1

    iget-object v4, v4, Lcom/sun/javafx/geom/EllipseIterator;->transform:Lcom/sun/javafx/geom/transform/BaseTransform;

    if-eqz v4, :cond_4

    .line 140
    move-object v4, v1

    iget-object v4, v4, Lcom/sun/javafx/geom/EllipseIterator;->transform:Lcom/sun/javafx/geom/transform/BaseTransform;

    move-object v5, v2

    const/4 v6, 0x0

    move-object v7, v2

    const/4 v8, 0x0

    const/4 v9, 0x3

    invoke-virtual/range {v4 .. v9}, Lcom/sun/javafx/geom/transform/BaseTransform;->transform([FI[FII)V

    .line 142
    :cond_4
    const/4 v4, 0x3

    move v1, v4

    goto/16 :goto_0
.end method

.method public getWindingRule()I
    .locals 2

    .prologue
    .line 61
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/EllipseIterator;
    const/4 v1, 0x1

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/geom/EllipseIterator;
    return v0
.end method

.method public isDone()Z
    .locals 3

    .prologue
    .line 69
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/EllipseIterator;
    move-object v1, v0

    iget v1, v1, Lcom/sun/javafx/geom/EllipseIterator;->index:I

    const/4 v2, 0x5

    if-le v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/geom/EllipseIterator;
    return v0

    .restart local v0    # "this":Lcom/sun/javafx/geom/EllipseIterator;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public next()V
    .locals 5

    .prologue
    .line 78
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/EllipseIterator;
    move-object v1, v0

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    iget v2, v2, Lcom/sun/javafx/geom/EllipseIterator;->index:I

    const/4 v3, 0x1

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/sun/javafx/geom/EllipseIterator;->index:I

    .line 79
    return-void
.end method
