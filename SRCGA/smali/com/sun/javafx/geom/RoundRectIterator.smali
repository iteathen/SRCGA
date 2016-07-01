.class Lcom/sun/javafx/geom/RoundRectIterator;
.super Ljava/lang/Object;
.source "RoundRectIterator.java"

# interfaces
.implements Lcom/sun/javafx/geom/PathIterator;


# static fields
.field private static final a:D

.field private static final acv:D

.field private static final angle:D = 0.7853981633974483

.field private static final b:D

.field private static final c:D

.field private static final ctrlpts:[[D

.field private static final cv:D

.field private static final types:[I


# instance fields
.field ah:D

.field aw:D

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
    .line 92
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    const-wide v2, 0x3fe921fb54442d18L    # 0.7853981633974483

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    sub-double/2addr v0, v2

    sput-wide v0, Lcom/sun/javafx/geom/RoundRectIterator;->a:D

    .line 93
    const-wide v0, 0x3fe921fb54442d18L    # 0.7853981633974483

    invoke-static {v0, v1}, Ljava/lang/Math;->tan(D)D

    move-result-wide v0

    sput-wide v0, Lcom/sun/javafx/geom/RoundRectIterator;->b:D

    .line 94
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    sget-wide v2, Lcom/sun/javafx/geom/RoundRectIterator;->b:D

    sget-wide v4, Lcom/sun/javafx/geom/RoundRectIterator;->b:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v0, v2

    sget-wide v2, Lcom/sun/javafx/geom/RoundRectIterator;->a:D

    add-double/2addr v0, v2

    sput-wide v0, Lcom/sun/javafx/geom/RoundRectIterator;->c:D

    .line 95
    const-wide v0, 0x3ff5555555555555L    # 1.3333333333333333

    sget-wide v2, Lcom/sun/javafx/geom/RoundRectIterator;->a:D

    mul-double/2addr v0, v2

    sget-wide v2, Lcom/sun/javafx/geom/RoundRectIterator;->b:D

    mul-double/2addr v0, v2

    sget-wide v2, Lcom/sun/javafx/geom/RoundRectIterator;->c:D

    div-double/2addr v0, v2

    sput-wide v0, Lcom/sun/javafx/geom/RoundRectIterator;->cv:D

    .line 96
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    sget-wide v2, Lcom/sun/javafx/geom/RoundRectIterator;->cv:D

    sub-double/2addr v0, v2

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    div-double/2addr v0, v2

    sput-wide v0, Lcom/sun/javafx/geom/RoundRectIterator;->acv:D

    .line 102
    const/16 v0, 0xa

    new-array v0, v0, [[D

    move-object v8, v0

    move-object v0, v8

    move-object v1, v8

    const/4 v2, 0x0

    const/4 v3, 0x4

    new-array v3, v3, [D

    fill-array-data v3, :array_0

    aput-object v3, v1, v2

    move-object v8, v0

    move-object v0, v8

    move-object v1, v8

    const/4 v2, 0x1

    const/4 v3, 0x4

    new-array v3, v3, [D

    fill-array-data v3, :array_1

    aput-object v3, v1, v2

    move-object v8, v0

    move-object v0, v8

    move-object v1, v8

    const/4 v2, 0x2

    const/16 v3, 0xc

    new-array v3, v3, [D

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    aput-wide v6, v4, v5

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    const/4 v5, 0x1

    const-wide/16 v6, 0x0

    aput-wide v6, v4, v5

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    const/4 v5, 0x2

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    aput-wide v6, v4, v5

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    const/4 v5, 0x3

    sget-wide v6, Lcom/sun/javafx/geom/RoundRectIterator;->acv:D

    neg-double v6, v6

    aput-wide v6, v4, v5

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    const/4 v5, 0x4

    const-wide/16 v6, 0x0

    aput-wide v6, v4, v5

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    const/4 v5, 0x5

    sget-wide v6, Lcom/sun/javafx/geom/RoundRectIterator;->acv:D

    aput-wide v6, v4, v5

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    const/4 v5, 0x6

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    aput-wide v6, v4, v5

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    const/4 v5, 0x7

    const-wide/16 v6, 0x0

    aput-wide v6, v4, v5

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    const/16 v5, 0x8

    const-wide/16 v6, 0x0

    aput-wide v6, v4, v5

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    const/16 v5, 0x9

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    aput-wide v6, v4, v5

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    const/16 v5, 0xa

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    aput-wide v6, v4, v5

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    const/16 v5, 0xb

    const-wide/16 v6, 0x0

    aput-wide v6, v4, v5

    aput-object v3, v1, v2

    move-object v8, v0

    move-object v0, v8

    move-object v1, v8

    const/4 v2, 0x3

    const/4 v3, 0x4

    new-array v3, v3, [D

    fill-array-data v3, :array_2

    aput-object v3, v1, v2

    move-object v8, v0

    move-object v0, v8

    move-object v1, v8

    const/4 v2, 0x4

    const/16 v3, 0xc

    new-array v3, v3, [D

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    const/4 v5, 0x0

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    aput-wide v6, v4, v5

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    const/4 v5, 0x1

    sget-wide v6, Lcom/sun/javafx/geom/RoundRectIterator;->acv:D

    neg-double v6, v6

    aput-wide v6, v4, v5

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    const/4 v5, 0x2

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    aput-wide v6, v4, v5

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    const/4 v5, 0x3

    const-wide/16 v6, 0x0

    aput-wide v6, v4, v5

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    const/4 v5, 0x4

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    aput-wide v6, v4, v5

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    const/4 v5, 0x5

    const-wide/16 v6, 0x0

    aput-wide v6, v4, v5

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    const/4 v5, 0x6

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    aput-wide v6, v4, v5

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    const/4 v5, 0x7

    sget-wide v6, Lcom/sun/javafx/geom/RoundRectIterator;->acv:D

    neg-double v6, v6

    aput-wide v6, v4, v5

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    const/16 v5, 0x8

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    aput-wide v6, v4, v5

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    const/16 v5, 0x9

    const-wide/16 v6, 0x0

    aput-wide v6, v4, v5

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    const/16 v5, 0xa

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    aput-wide v6, v4, v5

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    const/16 v5, 0xb

    const-wide/high16 v6, -0x4020000000000000L    # -0.5

    aput-wide v6, v4, v5

    aput-object v3, v1, v2

    move-object v8, v0

    move-object v0, v8

    move-object v1, v8

    const/4 v2, 0x5

    const/4 v3, 0x4

    new-array v3, v3, [D

    fill-array-data v3, :array_3

    aput-object v3, v1, v2

    move-object v8, v0

    move-object v0, v8

    move-object v1, v8

    const/4 v2, 0x6

    const/16 v3, 0xc

    new-array v3, v3, [D

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    const/4 v5, 0x0

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    aput-wide v6, v4, v5

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    const/4 v5, 0x1

    const-wide/16 v6, 0x0

    aput-wide v6, v4, v5

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    const/4 v5, 0x2

    const-wide/16 v6, 0x0

    aput-wide v6, v4, v5

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    const/4 v5, 0x3

    sget-wide v6, Lcom/sun/javafx/geom/RoundRectIterator;->acv:D

    aput-wide v6, v4, v5

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    const/4 v5, 0x4

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    aput-wide v6, v4, v5

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    const/4 v5, 0x5

    sget-wide v6, Lcom/sun/javafx/geom/RoundRectIterator;->acv:D

    neg-double v6, v6

    aput-wide v6, v4, v5

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    const/4 v5, 0x6

    const-wide/16 v6, 0x0

    aput-wide v6, v4, v5

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    const/4 v5, 0x7

    const-wide/16 v6, 0x0

    aput-wide v6, v4, v5

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    const/16 v5, 0x8

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    aput-wide v6, v4, v5

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    const/16 v5, 0x9

    const-wide/high16 v6, -0x4020000000000000L    # -0.5

    aput-wide v6, v4, v5

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    const/16 v5, 0xa

    const-wide/16 v6, 0x0

    aput-wide v6, v4, v5

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    const/16 v5, 0xb

    const-wide/16 v6, 0x0

    aput-wide v6, v4, v5

    aput-object v3, v1, v2

    move-object v8, v0

    move-object v0, v8

    move-object v1, v8

    const/4 v2, 0x7

    const/4 v3, 0x4

    new-array v3, v3, [D

    fill-array-data v3, :array_4

    aput-object v3, v1, v2

    move-object v8, v0

    move-object v0, v8

    move-object v1, v8

    const/16 v2, 0x8

    const/16 v3, 0xc

    new-array v3, v3, [D

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    aput-wide v6, v4, v5

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    const/4 v5, 0x1

    sget-wide v6, Lcom/sun/javafx/geom/RoundRectIterator;->acv:D

    aput-wide v6, v4, v5

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    const/4 v5, 0x2

    const-wide/16 v6, 0x0

    aput-wide v6, v4, v5

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    const/4 v5, 0x3

    const-wide/16 v6, 0x0

    aput-wide v6, v4, v5

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    const/4 v5, 0x4

    const-wide/16 v6, 0x0

    aput-wide v6, v4, v5

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    const/4 v5, 0x5

    const-wide/16 v6, 0x0

    aput-wide v6, v4, v5

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    const/4 v5, 0x6

    const-wide/16 v6, 0x0

    aput-wide v6, v4, v5

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    const/4 v5, 0x7

    sget-wide v6, Lcom/sun/javafx/geom/RoundRectIterator;->acv:D

    aput-wide v6, v4, v5

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    const/16 v5, 0x8

    const-wide/16 v6, 0x0

    aput-wide v6, v4, v5

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    const/16 v5, 0x9

    const-wide/16 v6, 0x0

    aput-wide v6, v4, v5

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    const/16 v5, 0xa

    const-wide/16 v6, 0x0

    aput-wide v6, v4, v5

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    const/16 v5, 0xb

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    aput-wide v6, v4, v5

    aput-object v3, v1, v2

    move-object v8, v0

    move-object v0, v8

    move-object v1, v8

    const/16 v2, 0x9

    const/4 v3, 0x0

    new-array v3, v3, [D

    aput-object v3, v1, v2

    sput-object v0, Lcom/sun/javafx/geom/RoundRectIterator;->ctrlpts:[[D

    .line 123
    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_5

    sput-object v0, Lcom/sun/javafx/geom/RoundRectIterator;->types:[I

    return-void

    .line 102
    :array_0
    .array-data 8
        0x0
        0x0
        0x0
        0x3fe0000000000000L    # 0.5
    .end array-data

    :array_1
    .array-data 8
        0x0
        0x0
        0x3ff0000000000000L    # 1.0
        -0x4020000000000000L    # -0.5
    .end array-data

    :array_2
    .array-data 8
        0x3ff0000000000000L    # 1.0
        -0x4020000000000000L    # -0.5
        0x3ff0000000000000L    # 1.0
        0x0
    .end array-data

    :array_3
    .array-data 8
        0x3ff0000000000000L    # 1.0
        0x0
        0x0
        0x3fe0000000000000L    # 0.5
    .end array-data

    :array_4
    .array-data 8
        0x0
        0x3fe0000000000000L    # 0.5
        0x0
        0x0
    .end array-data

    .line 123
    :array_5
    .array-data 4
        0x0
        0x1
        0x3
        0x1
        0x3
        0x1
        0x3
        0x1
        0x3
        0x4
    .end array-data
.end method

.method constructor <init>(Lcom/sun/javafx/geom/RoundRectangle2D;Lcom/sun/javafx/geom/transform/BaseTransform;)V
    .locals 8

    .prologue
    .line 43
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/RoundRectIterator;
    move-object v1, p1

    .local v1, "rr":Lcom/sun/javafx/geom/RoundRectangle2D;
    move-object v2, p2

    .local v2, "tx":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 44
    move-object v3, v0

    move-object v4, v1

    iget v4, v4, Lcom/sun/javafx/geom/RoundRectangle2D;->x:F

    float-to-double v4, v4

    iput-wide v4, v3, Lcom/sun/javafx/geom/RoundRectIterator;->x:D

    .line 45
    move-object v3, v0

    move-object v4, v1

    iget v4, v4, Lcom/sun/javafx/geom/RoundRectangle2D;->y:F

    float-to-double v4, v4

    iput-wide v4, v3, Lcom/sun/javafx/geom/RoundRectIterator;->y:D

    .line 46
    move-object v3, v0

    move-object v4, v1

    iget v4, v4, Lcom/sun/javafx/geom/RoundRectangle2D;->width:F

    float-to-double v4, v4

    iput-wide v4, v3, Lcom/sun/javafx/geom/RoundRectIterator;->w:D

    .line 47
    move-object v3, v0

    move-object v4, v1

    iget v4, v4, Lcom/sun/javafx/geom/RoundRectangle2D;->height:F

    float-to-double v4, v4

    iput-wide v4, v3, Lcom/sun/javafx/geom/RoundRectIterator;->h:D

    .line 48
    move-object v3, v0

    move-object v4, v0

    iget-wide v4, v4, Lcom/sun/javafx/geom/RoundRectIterator;->w:D

    move-object v6, v1

    iget v6, v6, Lcom/sun/javafx/geom/RoundRectangle2D;->arcWidth:F

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    float-to-double v6, v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(DD)D

    move-result-wide v4

    iput-wide v4, v3, Lcom/sun/javafx/geom/RoundRectIterator;->aw:D

    .line 49
    move-object v3, v0

    move-object v4, v0

    iget-wide v4, v4, Lcom/sun/javafx/geom/RoundRectIterator;->h:D

    move-object v6, v1

    iget v6, v6, Lcom/sun/javafx/geom/RoundRectangle2D;->arcHeight:F

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    float-to-double v6, v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(DD)D

    move-result-wide v4

    iput-wide v4, v3, Lcom/sun/javafx/geom/RoundRectIterator;->ah:D

    .line 50
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/sun/javafx/geom/RoundRectIterator;->transform:Lcom/sun/javafx/geom/transform/BaseTransform;

    .line 51
    move-object v3, v0

    iget-wide v3, v3, Lcom/sun/javafx/geom/RoundRectIterator;->aw:D

    const-wide/16 v5, 0x0

    cmpg-double v3, v3, v5

    if-ltz v3, :cond_0

    move-object v3, v0

    iget-wide v3, v3, Lcom/sun/javafx/geom/RoundRectIterator;->ah:D

    const-wide/16 v5, 0x0

    cmpg-double v3, v3, v5

    if-gez v3, :cond_1

    .line 53
    :cond_0
    move-object v3, v0

    sget-object v4, Lcom/sun/javafx/geom/RoundRectIterator;->ctrlpts:[[D

    array-length v4, v4

    iput v4, v3, Lcom/sun/javafx/geom/RoundRectIterator;->index:I

    .line 55
    :cond_1
    return-void
.end method


# virtual methods
.method public currentSegment([F)I
    .locals 15

    .prologue
    .line 151
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/geom/RoundRectIterator;
    move-object/from16 v2, p1

    .local v2, "coords":[F
    move-object v6, v1

    invoke-virtual {v6}, Lcom/sun/javafx/geom/RoundRectIterator;->isDone()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 152
    new-instance v6, Ljava/util/NoSuchElementException;

    move-object v14, v6

    move-object v6, v14

    move-object v7, v14

    const-string v8, "roundrect iterator out of bounds"

    invoke-direct {v7, v8}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 154
    :cond_0
    sget-object v6, Lcom/sun/javafx/geom/RoundRectIterator;->ctrlpts:[[D

    move-object v7, v1

    iget v7, v7, Lcom/sun/javafx/geom/RoundRectIterator;->index:I

    aget-object v6, v6, v7

    move-object v3, v6

    .line 155
    .local v3, "ctrls":[D
    const/4 v6, 0x0

    move v4, v6

    .line 156
    .local v4, "nc":I
    const/4 v6, 0x0

    move v5, v6

    .local v5, "i":I
    :goto_0
    move v6, v5

    move-object v7, v3

    array-length v7, v7

    if-ge v6, v7, :cond_1

    .line 157
    move-object v6, v2

    move v7, v4

    add-int/lit8 v4, v4, 0x1

    move-object v8, v1

    iget-wide v8, v8, Lcom/sun/javafx/geom/RoundRectIterator;->x:D

    move-object v10, v3

    move v11, v5

    const/4 v12, 0x0

    add-int/lit8 v11, v11, 0x0

    aget-wide v10, v10, v11

    move-object v12, v1

    iget-wide v12, v12, Lcom/sun/javafx/geom/RoundRectIterator;->w:D

    mul-double/2addr v10, v12

    add-double/2addr v8, v10

    move-object v10, v3

    move v11, v5

    const/4 v12, 0x1

    add-int/lit8 v11, v11, 0x1

    aget-wide v10, v10, v11

    move-object v12, v1

    iget-wide v12, v12, Lcom/sun/javafx/geom/RoundRectIterator;->aw:D

    mul-double/2addr v10, v12

    add-double/2addr v8, v10

    double-to-float v8, v8

    aput v8, v6, v7

    .line 158
    move-object v6, v2

    move v7, v4

    add-int/lit8 v4, v4, 0x1

    move-object v8, v1

    iget-wide v8, v8, Lcom/sun/javafx/geom/RoundRectIterator;->y:D

    move-object v10, v3

    move v11, v5

    const/4 v12, 0x2

    add-int/lit8 v11, v11, 0x2

    aget-wide v10, v10, v11

    move-object v12, v1

    iget-wide v12, v12, Lcom/sun/javafx/geom/RoundRectIterator;->h:D

    mul-double/2addr v10, v12

    add-double/2addr v8, v10

    move-object v10, v3

    move v11, v5

    const/4 v12, 0x3

    add-int/lit8 v11, v11, 0x3

    aget-wide v10, v10, v11

    move-object v12, v1

    iget-wide v12, v12, Lcom/sun/javafx/geom/RoundRectIterator;->ah:D

    mul-double/2addr v10, v12

    add-double/2addr v8, v10

    double-to-float v8, v8

    aput v8, v6, v7

    .line 156
    add-int/lit8 v5, v5, 0x4

    goto :goto_0

    .line 160
    :cond_1
    move-object v6, v1

    iget-object v6, v6, Lcom/sun/javafx/geom/RoundRectIterator;->transform:Lcom/sun/javafx/geom/transform/BaseTransform;

    if-eqz v6, :cond_2

    .line 161
    move-object v6, v1

    iget-object v6, v6, Lcom/sun/javafx/geom/RoundRectIterator;->transform:Lcom/sun/javafx/geom/transform/BaseTransform;

    move-object v7, v2

    const/4 v8, 0x0

    move-object v9, v2

    const/4 v10, 0x0

    move v11, v4

    const/4 v12, 0x2

    div-int/lit8 v11, v11, 0x2

    invoke-virtual/range {v6 .. v11}, Lcom/sun/javafx/geom/transform/BaseTransform;->transform([FI[FII)V

    .line 163
    :cond_2
    sget-object v6, Lcom/sun/javafx/geom/RoundRectIterator;->types:[I

    move-object v7, v1

    iget v7, v7, Lcom/sun/javafx/geom/RoundRectIterator;->index:I

    aget v6, v6, v7

    move v1, v6

    .end local v1    # "this":Lcom/sun/javafx/geom/RoundRectIterator;
    return v1
.end method

.method public getWindingRule()I
    .locals 2

    .prologue
    .line 64
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/RoundRectIterator;
    const/4 v1, 0x1

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/geom/RoundRectIterator;
    return v0
.end method

.method public isDone()Z
    .locals 3

    .prologue
    .line 72
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/RoundRectIterator;
    move-object v1, v0

    iget v1, v1, Lcom/sun/javafx/geom/RoundRectIterator;->index:I

    sget-object v2, Lcom/sun/javafx/geom/RoundRectIterator;->ctrlpts:[[D

    array-length v2, v2

    if-lt v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/geom/RoundRectIterator;
    return v0

    .restart local v0    # "this":Lcom/sun/javafx/geom/RoundRectIterator;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public next()V
    .locals 7

    .prologue
    .line 81
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/geom/RoundRectIterator;
    move-object v2, v1

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    iget v3, v3, Lcom/sun/javafx/geom/RoundRectIterator;->index:I

    const/4 v4, 0x1

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/sun/javafx/geom/RoundRectIterator;->index:I

    .line 82
    move-object v2, v1

    iget v2, v2, Lcom/sun/javafx/geom/RoundRectIterator;->index:I

    sget-object v3, Lcom/sun/javafx/geom/RoundRectIterator;->ctrlpts:[[D

    array-length v3, v3

    if-ge v2, v3, :cond_0

    move-object v2, v1

    iget-wide v2, v2, Lcom/sun/javafx/geom/RoundRectIterator;->aw:D

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-nez v2, :cond_0

    move-object v2, v1

    iget-wide v2, v2, Lcom/sun/javafx/geom/RoundRectIterator;->ah:D

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-nez v2, :cond_0

    sget-object v2, Lcom/sun/javafx/geom/RoundRectIterator;->types:[I

    move-object v3, v1

    iget v3, v3, Lcom/sun/javafx/geom/RoundRectIterator;->index:I

    aget v2, v2, v3

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 87
    move-object v2, v1

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    iget v3, v3, Lcom/sun/javafx/geom/RoundRectIterator;->index:I

    const/4 v4, 0x1

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/sun/javafx/geom/RoundRectIterator;->index:I

    .line 89
    :cond_0
    return-void
.end method
