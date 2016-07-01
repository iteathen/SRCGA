.class Lcom/sun/javafx/geom/ArcIterator;
.super Ljava/lang/Object;
.source "ArcIterator.java"

# interfaces
.implements Lcom/sun/javafx/geom/PathIterator;


# instance fields
.field angStRad:D

.field arcSegs:I

.field cv:D

.field h:D

.field increment:D

.field index:I

.field lineSegs:I

.field transform:Lcom/sun/javafx/geom/transform/BaseTransform;

.field w:D

.field x:D

.field y:D


# direct methods
.method constructor <init>(Lcom/sun/javafx/geom/Arc2D;Lcom/sun/javafx/geom/transform/BaseTransform;)V
    .locals 12

    .prologue
    .line 45
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/ArcIterator;
    move-object v1, p1

    .local v1, "a":Lcom/sun/javafx/geom/Arc2D;
    move-object v2, p2

    .local v2, "at":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object v5, v0

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 46
    move-object v5, v0

    move-object v6, v1

    iget v6, v6, Lcom/sun/javafx/geom/Arc2D;->width:F

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    float-to-double v6, v6

    iput-wide v6, v5, Lcom/sun/javafx/geom/ArcIterator;->w:D

    .line 47
    move-object v5, v0

    move-object v6, v1

    iget v6, v6, Lcom/sun/javafx/geom/Arc2D;->height:F

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    float-to-double v6, v6

    iput-wide v6, v5, Lcom/sun/javafx/geom/ArcIterator;->h:D

    .line 48
    move-object v5, v0

    move-object v6, v1

    iget v6, v6, Lcom/sun/javafx/geom/Arc2D;->x:F

    float-to-double v6, v6

    move-object v8, v0

    iget-wide v8, v8, Lcom/sun/javafx/geom/ArcIterator;->w:D

    add-double/2addr v6, v8

    iput-wide v6, v5, Lcom/sun/javafx/geom/ArcIterator;->x:D

    .line 49
    move-object v5, v0

    move-object v6, v1

    iget v6, v6, Lcom/sun/javafx/geom/Arc2D;->y:F

    float-to-double v6, v6

    move-object v8, v0

    iget-wide v8, v8, Lcom/sun/javafx/geom/ArcIterator;->h:D

    add-double/2addr v6, v8

    iput-wide v6, v5, Lcom/sun/javafx/geom/ArcIterator;->y:D

    .line 50
    move-object v5, v0

    move-object v6, v1

    iget v6, v6, Lcom/sun/javafx/geom/Arc2D;->start:F

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v6

    neg-double v6, v6

    iput-wide v6, v5, Lcom/sun/javafx/geom/ArcIterator;->angStRad:D

    .line 51
    move-object v5, v0

    move-object v6, v2

    iput-object v6, v5, Lcom/sun/javafx/geom/ArcIterator;->transform:Lcom/sun/javafx/geom/transform/BaseTransform;

    .line 52
    move-object v5, v1

    iget v5, v5, Lcom/sun/javafx/geom/Arc2D;->extent:F

    neg-float v5, v5

    float-to-double v5, v5

    move-wide v3, v5

    .line 53
    .local v3, "ext":D
    move-wide v5, v3

    const-wide v7, 0x4076800000000000L    # 360.0

    cmpl-double v5, v5, v7

    if-gez v5, :cond_0

    move-wide v5, v3

    const-wide v7, -0x3f89800000000000L    # -360.0

    cmpg-double v5, v5, v7

    if-gtz v5, :cond_4

    .line 54
    :cond_0
    move-object v5, v0

    const/4 v6, 0x4

    iput v6, v5, Lcom/sun/javafx/geom/ArcIterator;->arcSegs:I

    .line 55
    move-object v5, v0

    const-wide v6, 0x3ff921fb54442d18L    # 1.5707963267948966

    iput-wide v6, v5, Lcom/sun/javafx/geom/ArcIterator;->increment:D

    .line 57
    move-object v5, v0

    const-wide v6, 0x3fe1ac5111534a21L    # 0.5522847498307933

    iput-wide v6, v5, Lcom/sun/javafx/geom/ArcIterator;->cv:D

    .line 58
    move-wide v5, v3

    const-wide/16 v7, 0x0

    cmpg-double v5, v5, v7

    if-gez v5, :cond_1

    .line 59
    move-object v5, v0

    move-object v6, v0

    iget-wide v6, v6, Lcom/sun/javafx/geom/ArcIterator;->increment:D

    neg-double v6, v6

    iput-wide v6, v5, Lcom/sun/javafx/geom/ArcIterator;->increment:D

    .line 60
    move-object v5, v0

    move-object v6, v0

    iget-wide v6, v6, Lcom/sun/javafx/geom/ArcIterator;->cv:D

    neg-double v6, v6

    iput-wide v6, v5, Lcom/sun/javafx/geom/ArcIterator;->cv:D

    .line 70
    :cond_1
    :goto_0
    move-object v5, v1

    invoke-virtual {v5}, Lcom/sun/javafx/geom/Arc2D;->getArcType()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 81
    :goto_1
    move-object v5, v0

    iget-wide v5, v5, Lcom/sun/javafx/geom/ArcIterator;->w:D

    const-wide/16 v7, 0x0

    cmpg-double v5, v5, v7

    if-ltz v5, :cond_2

    move-object v5, v0

    iget-wide v5, v5, Lcom/sun/javafx/geom/ArcIterator;->h:D

    const-wide/16 v7, 0x0

    cmpg-double v5, v5, v7

    if-gez v5, :cond_3

    .line 82
    :cond_2
    move-object v5, v0

    move-object v6, v0

    const/4 v7, -0x1

    move-object v10, v6

    move v11, v7

    move v6, v11

    move-object v7, v10

    move v8, v11

    iput v8, v7, Lcom/sun/javafx/geom/ArcIterator;->lineSegs:I

    iput v6, v5, Lcom/sun/javafx/geom/ArcIterator;->arcSegs:I

    .line 84
    :cond_3
    return-void

    .line 63
    :cond_4
    move-object v5, v0

    move-wide v6, v3

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    const-wide v8, 0x4056800000000000L    # 90.0

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v6, v6

    iput v6, v5, Lcom/sun/javafx/geom/ArcIterator;->arcSegs:I

    .line 64
    move-object v5, v0

    move-wide v6, v3

    move-object v8, v0

    iget v8, v8, Lcom/sun/javafx/geom/ArcIterator;->arcSegs:I

    int-to-double v8, v8

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v6

    iput-wide v6, v5, Lcom/sun/javafx/geom/ArcIterator;->increment:D

    .line 65
    move-object v5, v0

    move-object v6, v0

    iget-wide v6, v6, Lcom/sun/javafx/geom/ArcIterator;->increment:D

    invoke-static {v6, v7}, Lcom/sun/javafx/geom/ArcIterator;->btan(D)D

    move-result-wide v6

    iput-wide v6, v5, Lcom/sun/javafx/geom/ArcIterator;->cv:D

    .line 66
    move-object v5, v0

    iget-wide v5, v5, Lcom/sun/javafx/geom/ArcIterator;->cv:D

    const-wide/16 v7, 0x0

    cmpl-double v5, v5, v7

    if-nez v5, :cond_1

    .line 67
    move-object v5, v0

    const/4 v6, 0x0

    iput v6, v5, Lcom/sun/javafx/geom/ArcIterator;->arcSegs:I

    goto :goto_0

    .line 72
    :pswitch_0
    move-object v5, v0

    const/4 v6, 0x0

    iput v6, v5, Lcom/sun/javafx/geom/ArcIterator;->lineSegs:I

    .line 73
    goto :goto_1

    .line 75
    :pswitch_1
    move-object v5, v0

    const/4 v6, 0x1

    iput v6, v5, Lcom/sun/javafx/geom/ArcIterator;->lineSegs:I

    .line 76
    goto :goto_1

    .line 78
    :pswitch_2
    move-object v5, v0

    const/4 v6, 0x2

    iput v6, v5, Lcom/sun/javafx/geom/ArcIterator;->lineSegs:I

    goto :goto_1

    .line 70
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static btan(D)D
    .locals 8

    .prologue
    .line 191
    move-wide v0, p0

    .local v0, "increment":D
    move-wide v2, v0

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    div-double/2addr v2, v4

    move-wide v0, v2

    .line 192
    const-wide v2, 0x3ff5555555555555L    # 1.3333333333333333

    move-wide v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    move-wide v6, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    add-double/2addr v4, v6

    div-double/2addr v2, v4

    move-wide v0, v2

    .end local v0    # "increment":D
    return-wide v0
.end method


# virtual methods
.method public currentSegment([F)I
    .locals 19

    .prologue
    .line 214
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/ArcIterator;
    move-object/from16 v1, p1

    .local v1, "coords":[F
    move-object v8, v0

    invoke-virtual {v8}, Lcom/sun/javafx/geom/ArcIterator;->isDone()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 215
    new-instance v8, Ljava/util/NoSuchElementException;

    move-object/from16 v18, v8

    move-object/from16 v8, v18

    move-object/from16 v9, v18

    const-string v10, "arc iterator out of bounds"

    invoke-direct {v9, v10}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 217
    :cond_0
    move-object v8, v0

    iget-wide v8, v8, Lcom/sun/javafx/geom/ArcIterator;->angStRad:D

    move-wide v2, v8

    .line 218
    .local v2, "angle":D
    move-object v8, v0

    iget v8, v8, Lcom/sun/javafx/geom/ArcIterator;->index:I

    if-nez v8, :cond_2

    .line 219
    move-object v8, v1

    const/4 v9, 0x0

    move-object v10, v0

    iget-wide v10, v10, Lcom/sun/javafx/geom/ArcIterator;->x:D

    move-wide v12, v2

    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    move-object v14, v0

    iget-wide v14, v14, Lcom/sun/javafx/geom/ArcIterator;->w:D

    mul-double/2addr v12, v14

    add-double/2addr v10, v12

    double-to-float v10, v10

    aput v10, v8, v9

    .line 220
    move-object v8, v1

    const/4 v9, 0x1

    move-object v10, v0

    iget-wide v10, v10, Lcom/sun/javafx/geom/ArcIterator;->y:D

    move-wide v12, v2

    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    move-object v14, v0

    iget-wide v14, v14, Lcom/sun/javafx/geom/ArcIterator;->h:D

    mul-double/2addr v12, v14

    add-double/2addr v10, v12

    double-to-float v10, v10

    aput v10, v8, v9

    .line 221
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/geom/ArcIterator;->transform:Lcom/sun/javafx/geom/transform/BaseTransform;

    if-eqz v8, :cond_1

    .line 222
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/geom/ArcIterator;->transform:Lcom/sun/javafx/geom/transform/BaseTransform;

    move-object v9, v1

    const/4 v10, 0x0

    move-object v11, v1

    const/4 v12, 0x0

    const/4 v13, 0x1

    invoke-virtual/range {v8 .. v13}, Lcom/sun/javafx/geom/transform/BaseTransform;->transform([FI[FII)V

    .line 224
    :cond_1
    const/4 v8, 0x0

    move v0, v8

    .line 252
    .end local v0    # "this":Lcom/sun/javafx/geom/ArcIterator;
    :goto_0
    return v0

    .line 226
    .restart local v0    # "this":Lcom/sun/javafx/geom/ArcIterator;
    :cond_2
    move-object v8, v0

    iget v8, v8, Lcom/sun/javafx/geom/ArcIterator;->index:I

    move-object v9, v0

    iget v9, v9, Lcom/sun/javafx/geom/ArcIterator;->arcSegs:I

    if-le v8, v9, :cond_5

    .line 227
    move-object v8, v0

    iget v8, v8, Lcom/sun/javafx/geom/ArcIterator;->index:I

    move-object v9, v0

    iget v9, v9, Lcom/sun/javafx/geom/ArcIterator;->arcSegs:I

    move-object v10, v0

    iget v10, v10, Lcom/sun/javafx/geom/ArcIterator;->lineSegs:I

    add-int/2addr v9, v10

    if-ne v8, v9, :cond_3

    .line 228
    const/4 v8, 0x4

    move v0, v8

    goto :goto_0

    .line 230
    :cond_3
    move-object v8, v1

    const/4 v9, 0x0

    move-object v10, v0

    iget-wide v10, v10, Lcom/sun/javafx/geom/ArcIterator;->x:D

    double-to-float v10, v10

    aput v10, v8, v9

    .line 231
    move-object v8, v1

    const/4 v9, 0x1

    move-object v10, v0

    iget-wide v10, v10, Lcom/sun/javafx/geom/ArcIterator;->y:D

    double-to-float v10, v10

    aput v10, v8, v9

    .line 232
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/geom/ArcIterator;->transform:Lcom/sun/javafx/geom/transform/BaseTransform;

    if-eqz v8, :cond_4

    .line 233
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/geom/ArcIterator;->transform:Lcom/sun/javafx/geom/transform/BaseTransform;

    move-object v9, v1

    const/4 v10, 0x0

    move-object v11, v1

    const/4 v12, 0x0

    const/4 v13, 0x1

    invoke-virtual/range {v8 .. v13}, Lcom/sun/javafx/geom/transform/BaseTransform;->transform([FI[FII)V

    .line 235
    :cond_4
    const/4 v8, 0x1

    move v0, v8

    goto :goto_0

    .line 237
    :cond_5
    move-wide v8, v2

    move-object v10, v0

    iget-wide v10, v10, Lcom/sun/javafx/geom/ArcIterator;->increment:D

    move-object v12, v0

    iget v12, v12, Lcom/sun/javafx/geom/ArcIterator;->index:I

    const/4 v13, 0x1

    add-int/lit8 v12, v12, -0x1

    int-to-double v12, v12

    mul-double/2addr v10, v12

    add-double/2addr v8, v10

    move-wide v2, v8

    .line 238
    move-wide v8, v2

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    move-wide v4, v8

    .line 239
    .local v4, "relx":D
    move-wide v8, v2

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    move-wide v6, v8

    .line 240
    .local v6, "rely":D
    move-object v8, v1

    const/4 v9, 0x0

    move-object v10, v0

    iget-wide v10, v10, Lcom/sun/javafx/geom/ArcIterator;->x:D

    move-wide v12, v4

    move-object v14, v0

    iget-wide v14, v14, Lcom/sun/javafx/geom/ArcIterator;->cv:D

    move-wide/from16 v16, v6

    mul-double v14, v14, v16

    sub-double/2addr v12, v14

    move-object v14, v0

    iget-wide v14, v14, Lcom/sun/javafx/geom/ArcIterator;->w:D

    mul-double/2addr v12, v14

    add-double/2addr v10, v12

    double-to-float v10, v10

    aput v10, v8, v9

    .line 241
    move-object v8, v1

    const/4 v9, 0x1

    move-object v10, v0

    iget-wide v10, v10, Lcom/sun/javafx/geom/ArcIterator;->y:D

    move-wide v12, v6

    move-object v14, v0

    iget-wide v14, v14, Lcom/sun/javafx/geom/ArcIterator;->cv:D

    move-wide/from16 v16, v4

    mul-double v14, v14, v16

    add-double/2addr v12, v14

    move-object v14, v0

    iget-wide v14, v14, Lcom/sun/javafx/geom/ArcIterator;->h:D

    mul-double/2addr v12, v14

    add-double/2addr v10, v12

    double-to-float v10, v10

    aput v10, v8, v9

    .line 242
    move-wide v8, v2

    move-object v10, v0

    iget-wide v10, v10, Lcom/sun/javafx/geom/ArcIterator;->increment:D

    add-double/2addr v8, v10

    move-wide v2, v8

    .line 243
    move-wide v8, v2

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    move-wide v4, v8

    .line 244
    move-wide v8, v2

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    move-wide v6, v8

    .line 245
    move-object v8, v1

    const/4 v9, 0x2

    move-object v10, v0

    iget-wide v10, v10, Lcom/sun/javafx/geom/ArcIterator;->x:D

    move-wide v12, v4

    move-object v14, v0

    iget-wide v14, v14, Lcom/sun/javafx/geom/ArcIterator;->cv:D

    move-wide/from16 v16, v6

    mul-double v14, v14, v16

    add-double/2addr v12, v14

    move-object v14, v0

    iget-wide v14, v14, Lcom/sun/javafx/geom/ArcIterator;->w:D

    mul-double/2addr v12, v14

    add-double/2addr v10, v12

    double-to-float v10, v10

    aput v10, v8, v9

    .line 246
    move-object v8, v1

    const/4 v9, 0x3

    move-object v10, v0

    iget-wide v10, v10, Lcom/sun/javafx/geom/ArcIterator;->y:D

    move-wide v12, v6

    move-object v14, v0

    iget-wide v14, v14, Lcom/sun/javafx/geom/ArcIterator;->cv:D

    move-wide/from16 v16, v4

    mul-double v14, v14, v16

    sub-double/2addr v12, v14

    move-object v14, v0

    iget-wide v14, v14, Lcom/sun/javafx/geom/ArcIterator;->h:D

    mul-double/2addr v12, v14

    add-double/2addr v10, v12

    double-to-float v10, v10

    aput v10, v8, v9

    .line 247
    move-object v8, v1

    const/4 v9, 0x4

    move-object v10, v0

    iget-wide v10, v10, Lcom/sun/javafx/geom/ArcIterator;->x:D

    move-wide v12, v4

    move-object v14, v0

    iget-wide v14, v14, Lcom/sun/javafx/geom/ArcIterator;->w:D

    mul-double/2addr v12, v14

    add-double/2addr v10, v12

    double-to-float v10, v10

    aput v10, v8, v9

    .line 248
    move-object v8, v1

    const/4 v9, 0x5

    move-object v10, v0

    iget-wide v10, v10, Lcom/sun/javafx/geom/ArcIterator;->y:D

    move-wide v12, v6

    move-object v14, v0

    iget-wide v14, v14, Lcom/sun/javafx/geom/ArcIterator;->h:D

    mul-double/2addr v12, v14

    add-double/2addr v10, v12

    double-to-float v10, v10

    aput v10, v8, v9

    .line 249
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/geom/ArcIterator;->transform:Lcom/sun/javafx/geom/transform/BaseTransform;

    if-eqz v8, :cond_6

    .line 250
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/geom/ArcIterator;->transform:Lcom/sun/javafx/geom/transform/BaseTransform;

    move-object v9, v1

    const/4 v10, 0x0

    move-object v11, v1

    const/4 v12, 0x0

    const/4 v13, 0x3

    invoke-virtual/range {v8 .. v13}, Lcom/sun/javafx/geom/transform/BaseTransform;->transform([FI[FII)V

    .line 252
    :cond_6
    const/4 v8, 0x3

    move v0, v8

    goto/16 :goto_0
.end method

.method public getWindingRule()I
    .locals 2

    .prologue
    .line 93
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/ArcIterator;
    const/4 v1, 0x1

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/geom/ArcIterator;
    return v0
.end method

.method public isDone()Z
    .locals 4

    .prologue
    .line 101
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/ArcIterator;
    move-object v1, v0

    iget v1, v1, Lcom/sun/javafx/geom/ArcIterator;->index:I

    move-object v2, v0

    iget v2, v2, Lcom/sun/javafx/geom/ArcIterator;->arcSegs:I

    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/geom/ArcIterator;->lineSegs:I

    add-int/2addr v2, v3

    if-le v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/geom/ArcIterator;
    return v0

    .restart local v0    # "this":Lcom/sun/javafx/geom/ArcIterator;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public next()V
    .locals 5

    .prologue
    .line 110
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/ArcIterator;
    move-object v1, v0

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    iget v2, v2, Lcom/sun/javafx/geom/ArcIterator;->index:I

    const/4 v3, 0x1

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/sun/javafx/geom/ArcIterator;->index:I

    .line 111
    return-void
.end method
