.class public abstract Ljavafx/animation/Interpolator;
.super Ljava/lang/Object;
.source "Interpolator.java"


# static fields
.field public static final DISCRETE:Ljavafx/animation/Interpolator;

.field public static final EASE_BOTH:Ljavafx/animation/Interpolator;

.field public static final EASE_IN:Ljavafx/animation/Interpolator;

.field public static final EASE_OUT:Ljavafx/animation/Interpolator;

.field private static final EPSILON:D = 1.0E-12

.field public static final LINEAR:Ljavafx/animation/Interpolator;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 58
    new-instance v0, Ljavafx/animation/Interpolator$1;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljavafx/animation/Interpolator$1;-><init>()V

    sput-object v0, Ljavafx/animation/Interpolator;->DISCRETE:Ljavafx/animation/Interpolator;

    .line 75
    new-instance v0, Ljavafx/animation/Interpolator$2;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljavafx/animation/Interpolator$2;-><init>()V

    sput-object v0, Ljavafx/animation/Interpolator;->LINEAR:Ljavafx/animation/Interpolator;

    .line 110
    new-instance v0, Ljavafx/animation/Interpolator$3;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljavafx/animation/Interpolator$3;-><init>()V

    sput-object v0, Ljavafx/animation/Interpolator;->EASE_BOTH:Ljavafx/animation/Interpolator;

    .line 134
    new-instance v0, Ljavafx/animation/Interpolator$4;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljavafx/animation/Interpolator$4;-><init>()V

    sput-object v0, Ljavafx/animation/Interpolator;->EASE_IN:Ljavafx/animation/Interpolator;

    .line 161
    new-instance v0, Ljavafx/animation/Interpolator$5;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljavafx/animation/Interpolator$5;-><init>()V

    sput-object v0, Ljavafx/animation/Interpolator;->EASE_OUT:Ljavafx/animation/Interpolator;

    return-void
.end method

.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 50
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/Interpolator;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 51
    return-void
.end method

.method public static SPLINE(DDDD)Ljavafx/animation/Interpolator;
    .locals 20

    .prologue
    .line 199
    move-wide/from16 v0, p0

    .local v0, "x1":D
    move-wide/from16 v2, p2

    .local v2, "y1":D
    move-wide/from16 v4, p4

    .local v4, "x2":D
    move-wide/from16 v6, p6

    .local v6, "y2":D
    new-instance v8, Lcom/sun/scenario/animation/SplineInterpolator;

    move-object/from16 v18, v8

    move-object/from16 v8, v18

    move-object/from16 v9, v18

    move-wide v10, v0

    move-wide v12, v2

    move-wide v14, v4

    move-wide/from16 v16, v6

    invoke-direct/range {v9 .. v17}, Lcom/sun/scenario/animation/SplineInterpolator;-><init>(DDDD)V

    move-object v0, v8

    .end local v0    # "x1":D
    return-object v0
.end method

.method public static TANGENT(Ljavafx/util/Duration;D)Ljavafx/animation/Interpolator;
    .locals 9

    .prologue
    .line 254
    move-object v0, p0

    .local v0, "t":Ljavafx/util/Duration;
    move-wide v1, p1

    .local v1, "v":D
    new-instance v3, Lcom/sun/scenario/animation/NumberTangentInterpolator;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    move-wide v6, v1

    invoke-direct {v4, v5, v6, v7}, Lcom/sun/scenario/animation/NumberTangentInterpolator;-><init>(Ljavafx/util/Duration;D)V

    move-object v0, v3

    .end local v0    # "t":Ljavafx/util/Duration;
    return-object v0
.end method

.method public static TANGENT(Ljavafx/util/Duration;DLjavafx/util/Duration;D)Ljavafx/animation/Interpolator;
    .locals 15

    .prologue
    .line 236
    move-object v0, p0

    .local v0, "t1":Ljavafx/util/Duration;
    move-wide/from16 v1, p1

    .local v1, "v1":D
    move-object/from16 v3, p3

    .local v3, "t2":Ljavafx/util/Duration;
    move-wide/from16 v4, p4

    .local v4, "v2":D
    new-instance v6, Lcom/sun/scenario/animation/NumberTangentInterpolator;

    move-object v14, v6

    move-object v6, v14

    move-object v7, v14

    move-object v8, v0

    move-wide v9, v1

    move-object v11, v3

    move-wide v12, v4

    invoke-direct/range {v7 .. v13}, Lcom/sun/scenario/animation/NumberTangentInterpolator;-><init>(Ljavafx/util/Duration;DLjavafx/util/Duration;D)V

    move-object v0, v6

    .end local v0    # "t1":Ljavafx/util/Duration;
    return-object v0
.end method

.method static synthetic access$000(D)D
    .locals 4

    .prologue
    .line 43
    move-wide v0, p0

    .local v0, "x0":D
    move-wide v2, v0

    invoke-static {v2, v3}, Ljavafx/animation/Interpolator;->clamp(D)D

    move-result-wide v2

    move-wide v0, v2

    .end local v0    # "x0":D
    return-wide v0
.end method

.method private static clamp(D)D
    .locals 6

    .prologue
    .line 386
    move-wide v0, p0

    .local v0, "t":D
    move-wide v2, v0

    const-wide/16 v4, 0x0

    cmpg-double v2, v2, v4

    if-gez v2, :cond_0

    const-wide/16 v2, 0x0

    :goto_0
    move-wide v0, v2

    .end local v0    # "t":D
    return-wide v0

    .restart local v0    # "t":D
    :cond_0
    move-wide v2, v0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    cmpl-double v2, v2, v4

    if-lez v2, :cond_1

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    goto :goto_0

    :cond_1
    move-wide v2, v0

    goto :goto_0
.end method


# virtual methods
.method protected abstract curve(D)D
.end method

.method public interpolate(DDD)D
    .locals 15

    .prologue
    .line 343
    move-object v1, p0

    .local v1, "this":Ljavafx/animation/Interpolator;
    move-wide/from16 v2, p1

    .local v2, "startValue":D
    move-wide/from16 v4, p3

    .local v4, "endValue":D
    move-wide/from16 v6, p5

    .local v6, "fraction":D
    move-wide v8, v2

    move-wide v10, v4

    move-wide v12, v2

    sub-double/2addr v10, v12

    move-object v12, v1

    move-wide v13, v6

    invoke-virtual {v12, v13, v14}, Ljavafx/animation/Interpolator;->curve(D)D

    move-result-wide v12

    mul-double/2addr v10, v12

    add-double/2addr v8, v10

    move-wide v1, v8

    .end local v1    # "this":Ljavafx/animation/Interpolator;
    return-wide v1
.end method

.method public interpolate(IID)I
    .locals 11

    .prologue
    .line 361
    move-object v0, p0

    .local v0, "this":Ljavafx/animation/Interpolator;
    move v1, p1

    .local v1, "startValue":I
    move v2, p2

    .local v2, "endValue":I
    move-wide v3, p3

    .local v3, "fraction":D
    move v5, v1

    move v6, v2

    move v7, v1

    sub-int/2addr v6, v7

    int-to-double v6, v6

    move-object v8, v0

    move-wide v9, v3

    .line 362
    invoke-virtual {v8, v9, v10}, Ljavafx/animation/Interpolator;->curve(D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    long-to-int v6, v6

    add-int/2addr v5, v6

    move v0, v5

    .end local v0    # "this":Ljavafx/animation/Interpolator;
    return v0
.end method

.method public interpolate(JJD)J
    .locals 15

    .prologue
    .line 381
    move-object v1, p0

    .local v1, "this":Ljavafx/animation/Interpolator;
    move-wide/from16 v2, p1

    .local v2, "startValue":J
    move-wide/from16 v4, p3

    .local v4, "endValue":J
    move-wide/from16 v6, p5

    .local v6, "fraction":D
    move-wide v8, v2

    move-wide v10, v4

    move-wide v12, v2

    sub-long/2addr v10, v12

    long-to-double v10, v10

    move-object v12, v1

    move-wide v13, v6

    .line 382
    invoke-virtual {v12, v13, v14}, Ljavafx/animation/Interpolator;->curve(D)D

    move-result-wide v12

    mul-double/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->round(D)J

    move-result-wide v10

    add-long/2addr v8, v10

    move-wide v1, v8

    .end local v1    # "this":Ljavafx/animation/Interpolator;
    return-wide v1
.end method

.method public interpolate(Ljava/lang/Object;Ljava/lang/Object;D)Ljava/lang/Object;
    .locals 19

    .prologue
    .line 283
    move-object/from16 v1, p0

    .local v1, "this":Ljavafx/animation/Interpolator;
    move-object/from16 v2, p1

    .local v2, "startValue":Ljava/lang/Object;
    move-object/from16 v3, p2

    .local v3, "endValue":Ljava/lang/Object;
    move-wide/from16 v4, p3

    .local v4, "fraction":D
    move-object v12, v2

    instance-of v12, v12, Ljava/lang/Number;

    if-eqz v12, :cond_6

    move-object v12, v3

    instance-of v12, v12, Ljava/lang/Number;

    if-eqz v12, :cond_6

    .line 284
    move-object v12, v2

    check-cast v12, Ljava/lang/Number;

    invoke-virtual {v12}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v12

    move-wide v6, v12

    .line 285
    .local v6, "start":D
    move-object v12, v3

    check-cast v12, Ljava/lang/Number;

    invoke-virtual {v12}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v12

    move-wide v8, v12

    .line 286
    .local v8, "end":D
    move-wide v12, v6

    move-wide v14, v8

    move-wide/from16 v16, v6

    sub-double v14, v14, v16

    move-object/from16 v16, v1

    move-wide/from16 v17, v4

    invoke-virtual/range {v16 .. v18}, Ljavafx/animation/Interpolator;->curve(D)D

    move-result-wide v16

    mul-double v14, v14, v16

    add-double/2addr v12, v14

    move-wide v10, v12

    .line 287
    .local v10, "val":D
    move-object v12, v2

    instance-of v12, v12, Ljava/lang/Double;

    if-nez v12, :cond_0

    move-object v12, v3

    instance-of v12, v12, Ljava/lang/Double;

    if-eqz v12, :cond_1

    .line 288
    :cond_0
    move-wide v12, v10

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v12

    move-object v1, v12

    .line 302
    .end local v1    # "this":Ljavafx/animation/Interpolator;
    .end local v6    # "start":D
    .end local v8    # "end":D
    .end local v10    # "val":D
    :goto_0
    return-object v1

    .line 290
    .restart local v1    # "this":Ljavafx/animation/Interpolator;
    .restart local v6    # "start":D
    .restart local v8    # "end":D
    .restart local v10    # "val":D
    :cond_1
    move-object v12, v2

    instance-of v12, v12, Ljava/lang/Float;

    if-nez v12, :cond_2

    move-object v12, v3

    instance-of v12, v12, Ljava/lang/Float;

    if-eqz v12, :cond_3

    .line 291
    :cond_2
    move-wide v12, v10

    double-to-float v12, v12

    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    move-object v1, v12

    goto :goto_0

    .line 293
    :cond_3
    move-object v12, v2

    instance-of v12, v12, Ljava/lang/Long;

    if-nez v12, :cond_4

    move-object v12, v3

    instance-of v12, v12, Ljava/lang/Long;

    if-eqz v12, :cond_5

    .line 294
    :cond_4
    move-wide v12, v10

    invoke-static {v12, v13}, Ljava/lang/Math;->round(D)J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    move-object v1, v12

    goto :goto_0

    .line 296
    :cond_5
    move-wide v12, v10

    invoke-static {v12, v13}, Ljava/lang/Math;->round(D)J

    move-result-wide v12

    long-to-int v12, v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    move-object v1, v12

    goto :goto_0

    .line 297
    .end local v6    # "start":D
    .end local v8    # "end":D
    .end local v10    # "val":D
    :cond_6
    move-object v12, v2

    instance-of v12, v12, Ljavafx/animation/Interpolatable;

    if-eqz v12, :cond_7

    move-object v12, v3

    instance-of v12, v12, Ljavafx/animation/Interpolatable;

    if-eqz v12, :cond_7

    .line 298
    move-object v12, v2

    check-cast v12, Ljavafx/animation/Interpolatable;

    move-object v13, v3

    move-object v14, v1

    move-wide v15, v4

    .line 299
    invoke-virtual/range {v14 .. v16}, Ljavafx/animation/Interpolator;->curve(D)D

    move-result-wide v14

    .line 298
    invoke-interface {v12, v13, v14, v15}, Ljavafx/animation/Interpolatable;->interpolate(Ljava/lang/Object;D)Ljava/lang/Object;

    move-result-object v12

    move-object v1, v12

    goto :goto_0

    .line 302
    :cond_7
    move-object v12, v1

    move-wide v13, v4

    invoke-virtual {v12, v13, v14}, Ljavafx/animation/Interpolator;->curve(D)D

    move-result-wide v12

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    cmpl-double v12, v12, v14

    if-nez v12, :cond_8

    move-object v12, v3

    :goto_1
    move-object v1, v12

    goto :goto_0

    :cond_8
    move-object v12, v2

    goto :goto_1
.end method

.method public interpolate(ZZD)Z
    .locals 11

    .prologue
    .line 323
    move-object v1, p0

    .local v1, "this":Ljavafx/animation/Interpolator;
    move v2, p1

    .local v2, "startValue":Z
    move v3, p2

    .local v3, "endValue":Z
    move-wide v4, p3

    .local v4, "fraction":D
    move-object v6, v1

    move-wide v7, v4

    invoke-virtual {v6, v7, v8}, Ljavafx/animation/Interpolator;->curve(D)D

    move-result-wide v6

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    const-wide v8, 0x3d719799812dea11L    # 1.0E-12

    cmpg-double v6, v6, v8

    if-gez v6, :cond_0

    move v6, v3

    :goto_0
    move v1, v6

    .end local v1    # "this":Ljavafx/animation/Interpolator;
    return v1

    .restart local v1    # "this":Ljavafx/animation/Interpolator;
    :cond_0
    move v6, v2

    goto :goto_0
.end method
