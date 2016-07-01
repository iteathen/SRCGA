.class public Ljavafx/geometry/Rectangle2D;
.super Ljava/lang/Object;
.source "Rectangle2D.java"


# static fields
.field public static final EMPTY:Ljavafx/geometry/Rectangle2D;


# instance fields
.field private hash:I

.field private height:D

.field private maxX:D

.field private maxY:D

.field private minX:D

.field private minY:D

.field private width:D


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .prologue
    .line 40
    new-instance v0, Ljavafx/geometry/Rectangle2D;

    move-object v10, v0

    move-object v0, v10

    move-object v1, v10

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    invoke-direct/range {v1 .. v9}, Ljavafx/geometry/Rectangle2D;-><init>(DDDD)V

    sput-object v0, Ljavafx/geometry/Rectangle2D;->EMPTY:Ljavafx/geometry/Rectangle2D;

    return-void
.end method

.method public constructor <init>(DDDD)V
    .locals 17
    .param p1    # D
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "minX"
        .end annotation
    .end param
    .param p3    # D
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "minY"
        .end annotation
    .end param
    .param p5    # D
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "width"
        .end annotation
    .end param
    .param p7    # D
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "height"
        .end annotation
    .end param

    .prologue
    .line 102
    move-object/from16 v1, p0

    .local v1, "this":Ljavafx/geometry/Rectangle2D;
    move-wide/from16 v2, p1

    .local v2, "minX":D
    move-wide/from16 v4, p3

    .local v4, "minY":D
    move-wide/from16 v6, p5

    .local v6, "width":D
    move-wide/from16 v8, p7

    .local v8, "height":D
    move-object v10, v1

    invoke-direct {v10}, Ljava/lang/Object;-><init>()V

    .line 93
    move-object v10, v1

    const/4 v11, 0x0

    iput v11, v10, Ljavafx/geometry/Rectangle2D;->hash:I

    .line 103
    move-wide v10, v6

    const-wide/16 v12, 0x0

    cmpg-double v10, v10, v12

    if-ltz v10, :cond_0

    move-wide v10, v8

    const-wide/16 v12, 0x0

    cmpg-double v10, v10, v12

    if-gez v10, :cond_1

    .line 104
    :cond_0
    new-instance v10, Ljava/lang/IllegalArgumentException;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    const-string v12, "Both width and height must be >= 0"

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 107
    :cond_1
    move-object v10, v1

    move-wide v11, v2

    iput-wide v11, v10, Ljavafx/geometry/Rectangle2D;->minX:D

    .line 108
    move-object v10, v1

    move-wide v11, v4

    iput-wide v11, v10, Ljavafx/geometry/Rectangle2D;->minY:D

    .line 109
    move-object v10, v1

    move-wide v11, v6

    iput-wide v11, v10, Ljavafx/geometry/Rectangle2D;->width:D

    .line 110
    move-object v10, v1

    move-wide v11, v8

    iput-wide v11, v10, Ljavafx/geometry/Rectangle2D;->height:D

    .line 111
    move-object v10, v1

    move-wide v11, v2

    move-wide v13, v6

    add-double/2addr v11, v13

    iput-wide v11, v10, Ljavafx/geometry/Rectangle2D;->maxX:D

    .line 112
    move-object v10, v1

    move-wide v11, v4

    move-wide v13, v8

    add-double/2addr v11, v13

    iput-wide v11, v10, Ljavafx/geometry/Rectangle2D;->maxY:D

    .line 113
    return-void
.end method


# virtual methods
.method public contains(DD)Z
    .locals 11

    .prologue
    .line 137
    move-object v1, p0

    .local v1, "this":Ljavafx/geometry/Rectangle2D;
    move-wide v2, p1

    .local v2, "x":D
    move-wide v4, p3

    .local v4, "y":D
    move-wide v6, v2

    move-object v8, v1

    iget-wide v8, v8, Ljavafx/geometry/Rectangle2D;->minX:D

    cmpl-double v6, v6, v8

    if-ltz v6, :cond_0

    move-wide v6, v2

    move-object v8, v1

    iget-wide v8, v8, Ljavafx/geometry/Rectangle2D;->maxX:D

    cmpg-double v6, v6, v8

    if-gtz v6, :cond_0

    move-wide v6, v4

    move-object v8, v1

    iget-wide v8, v8, Ljavafx/geometry/Rectangle2D;->minY:D

    cmpl-double v6, v6, v8

    if-ltz v6, :cond_0

    move-wide v6, v4

    move-object v8, v1

    iget-wide v8, v8, Ljavafx/geometry/Rectangle2D;->maxY:D

    cmpg-double v6, v6, v8

    if-gtz v6, :cond_0

    const/4 v6, 0x1

    :goto_0
    move v1, v6

    .end local v1    # "this":Ljavafx/geometry/Rectangle2D;
    return v1

    .restart local v1    # "this":Ljavafx/geometry/Rectangle2D;
    :cond_0
    const/4 v6, 0x0

    goto :goto_0
.end method

.method public contains(DDDD)Z
    .locals 17

    .prologue
    .line 167
    move-object/from16 v1, p0

    .local v1, "this":Ljavafx/geometry/Rectangle2D;
    move-wide/from16 v2, p1

    .local v2, "x":D
    move-wide/from16 v4, p3

    .local v4, "y":D
    move-wide/from16 v6, p5

    .local v6, "w":D
    move-wide/from16 v8, p7

    .local v8, "h":D
    move-wide v10, v2

    move-object v12, v1

    iget-wide v12, v12, Ljavafx/geometry/Rectangle2D;->minX:D

    cmpl-double v10, v10, v12

    if-ltz v10, :cond_0

    move-wide v10, v4

    move-object v12, v1

    iget-wide v12, v12, Ljavafx/geometry/Rectangle2D;->minY:D

    cmpl-double v10, v10, v12

    if-ltz v10, :cond_0

    move-wide v10, v6

    move-object v12, v1

    iget-wide v12, v12, Ljavafx/geometry/Rectangle2D;->maxX:D

    move-wide v14, v2

    sub-double/2addr v12, v14

    cmpg-double v10, v10, v12

    if-gtz v10, :cond_0

    move-wide v10, v8

    move-object v12, v1

    iget-wide v12, v12, Ljavafx/geometry/Rectangle2D;->maxY:D

    move-wide v14, v4

    sub-double/2addr v12, v14

    cmpg-double v10, v10, v12

    if-gtz v10, :cond_0

    const/4 v10, 0x1

    :goto_0
    move v1, v10

    .end local v1    # "this":Ljavafx/geometry/Rectangle2D;
    return v1

    .restart local v1    # "this":Ljavafx/geometry/Rectangle2D;
    :cond_0
    const/4 v10, 0x0

    goto :goto_0
.end method

.method public contains(Ljavafx/geometry/Point2D;)Z
    .locals 8

    .prologue
    .line 123
    move-object v1, p0

    .local v1, "this":Ljavafx/geometry/Rectangle2D;
    move-object v2, p1

    .local v2, "p":Ljavafx/geometry/Point2D;
    move-object v3, v2

    if-nez v3, :cond_0

    const/4 v3, 0x0

    move v1, v3

    .line 124
    .end local v1    # "this":Ljavafx/geometry/Rectangle2D;
    :goto_0
    return v1

    .restart local v1    # "this":Ljavafx/geometry/Rectangle2D;
    :cond_0
    move-object v3, v1

    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/geometry/Point2D;->getX()D

    move-result-wide v4

    move-object v6, v2

    invoke-virtual {v6}, Ljavafx/geometry/Point2D;->getY()D

    move-result-wide v6

    invoke-virtual {v3, v4, v5, v6, v7}, Ljavafx/geometry/Rectangle2D;->contains(DD)Z

    move-result v3

    move v1, v3

    goto :goto_0
.end method

.method public contains(Ljavafx/geometry/Rectangle2D;)Z
    .locals 6

    .prologue
    .line 149
    move-object v0, p0

    .local v0, "this":Ljavafx/geometry/Rectangle2D;
    move-object v1, p1

    .local v1, "r":Ljavafx/geometry/Rectangle2D;
    move-object v2, v1

    if-nez v2, :cond_0

    const/4 v2, 0x0

    move v0, v2

    .line 150
    .end local v0    # "this":Ljavafx/geometry/Rectangle2D;
    :goto_0
    return v0

    .restart local v0    # "this":Ljavafx/geometry/Rectangle2D;
    :cond_0
    move-object v2, v1

    iget-wide v2, v2, Ljavafx/geometry/Rectangle2D;->minX:D

    move-object v4, v0

    iget-wide v4, v4, Ljavafx/geometry/Rectangle2D;->minX:D

    cmpl-double v2, v2, v4

    if-ltz v2, :cond_1

    move-object v2, v1

    iget-wide v2, v2, Ljavafx/geometry/Rectangle2D;->minY:D

    move-object v4, v0

    iget-wide v4, v4, Ljavafx/geometry/Rectangle2D;->minY:D

    cmpl-double v2, v2, v4

    if-ltz v2, :cond_1

    move-object v2, v1

    iget-wide v2, v2, Ljavafx/geometry/Rectangle2D;->maxX:D

    move-object v4, v0

    iget-wide v4, v4, Ljavafx/geometry/Rectangle2D;->maxX:D

    cmpg-double v2, v2, v4

    if-gtz v2, :cond_1

    move-object v2, v1

    iget-wide v2, v2, Ljavafx/geometry/Rectangle2D;->maxY:D

    move-object v4, v0

    iget-wide v4, v4, Ljavafx/geometry/Rectangle2D;->maxY:D

    cmpg-double v2, v2, v4

    if-gtz v2, :cond_1

    const/4 v2, 0x1

    :goto_1
    move v0, v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8

    .prologue
    .line 206
    move-object v1, p0

    .local v1, "this":Ljavafx/geometry/Rectangle2D;
    move-object v2, p1

    .local v2, "obj":Ljava/lang/Object;
    move-object v4, v2

    move-object v5, v1

    if-ne v4, v5, :cond_0

    const/4 v4, 0x1

    move v1, v4

    .line 213
    .end local v1    # "this":Ljavafx/geometry/Rectangle2D;
    :goto_0
    return v1

    .line 207
    .restart local v1    # "this":Ljavafx/geometry/Rectangle2D;
    :cond_0
    move-object v4, v2

    instance-of v4, v4, Ljavafx/geometry/Rectangle2D;

    if-eqz v4, :cond_2

    .line 208
    move-object v4, v2

    check-cast v4, Ljavafx/geometry/Rectangle2D;

    move-object v3, v4

    .line 209
    .local v3, "other":Ljavafx/geometry/Rectangle2D;
    move-object v4, v1

    iget-wide v4, v4, Ljavafx/geometry/Rectangle2D;->minX:D

    move-object v6, v3

    iget-wide v6, v6, Ljavafx/geometry/Rectangle2D;->minX:D

    cmpl-double v4, v4, v6

    if-nez v4, :cond_1

    move-object v4, v1

    iget-wide v4, v4, Ljavafx/geometry/Rectangle2D;->minY:D

    move-object v6, v3

    iget-wide v6, v6, Ljavafx/geometry/Rectangle2D;->minY:D

    cmpl-double v4, v4, v6

    if-nez v4, :cond_1

    move-object v4, v1

    iget-wide v4, v4, Ljavafx/geometry/Rectangle2D;->width:D

    move-object v6, v3

    iget-wide v6, v6, Ljavafx/geometry/Rectangle2D;->width:D

    cmpl-double v4, v4, v6

    if-nez v4, :cond_1

    move-object v4, v1

    iget-wide v4, v4, Ljavafx/geometry/Rectangle2D;->height:D

    move-object v6, v3

    iget-wide v6, v6, Ljavafx/geometry/Rectangle2D;->height:D

    cmpl-double v4, v4, v6

    if-nez v4, :cond_1

    const/4 v4, 0x1

    :goto_1
    move v1, v4

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    goto :goto_1

    .line 213
    .end local v3    # "other":Ljavafx/geometry/Rectangle2D;
    :cond_2
    const/4 v4, 0x0

    move v1, v4

    goto :goto_0
.end method

.method public getHeight()D
    .locals 3

    .prologue
    .line 71
    move-object v0, p0

    .local v0, "this":Ljavafx/geometry/Rectangle2D;
    move-object v1, v0

    iget-wide v1, v1, Ljavafx/geometry/Rectangle2D;->height:D

    move-wide v0, v1

    .end local v0    # "this":Ljavafx/geometry/Rectangle2D;
    return-wide v0
.end method

.method public getMaxX()D
    .locals 3

    .prologue
    .line 79
    move-object v0, p0

    .local v0, "this":Ljavafx/geometry/Rectangle2D;
    move-object v1, v0

    iget-wide v1, v1, Ljavafx/geometry/Rectangle2D;->maxX:D

    move-wide v0, v1

    .end local v0    # "this":Ljavafx/geometry/Rectangle2D;
    return-wide v0
.end method

.method public getMaxY()D
    .locals 3

    .prologue
    .line 87
    move-object v0, p0

    .local v0, "this":Ljavafx/geometry/Rectangle2D;
    move-object v1, v0

    iget-wide v1, v1, Ljavafx/geometry/Rectangle2D;->maxY:D

    move-wide v0, v1

    .end local v0    # "this":Ljavafx/geometry/Rectangle2D;
    return-wide v0
.end method

.method public getMinX()D
    .locals 3

    .prologue
    .line 47
    move-object v0, p0

    .local v0, "this":Ljavafx/geometry/Rectangle2D;
    move-object v1, v0

    iget-wide v1, v1, Ljavafx/geometry/Rectangle2D;->minX:D

    move-wide v0, v1

    .end local v0    # "this":Ljavafx/geometry/Rectangle2D;
    return-wide v0
.end method

.method public getMinY()D
    .locals 3

    .prologue
    .line 55
    move-object v0, p0

    .local v0, "this":Ljavafx/geometry/Rectangle2D;
    move-object v1, v0

    iget-wide v1, v1, Ljavafx/geometry/Rectangle2D;->minY:D

    move-wide v0, v1

    .end local v0    # "this":Ljavafx/geometry/Rectangle2D;
    return-wide v0
.end method

.method public getWidth()D
    .locals 3

    .prologue
    .line 63
    move-object v0, p0

    .local v0, "this":Ljavafx/geometry/Rectangle2D;
    move-object v1, v0

    iget-wide v1, v1, Ljavafx/geometry/Rectangle2D;->width:D

    move-wide v0, v1

    .end local v0    # "this":Ljavafx/geometry/Rectangle2D;
    return-wide v0
.end method

.method public hashCode()I
    .locals 10

    .prologue
    .line 221
    move-object v1, p0

    .local v1, "this":Ljavafx/geometry/Rectangle2D;
    move-object v4, v1

    iget v4, v4, Ljavafx/geometry/Rectangle2D;->hash:I

    if-nez v4, :cond_0

    .line 222
    const-wide/16 v4, 0x7

    move-wide v2, v4

    .line 223
    .local v2, "bits":J
    const-wide/16 v4, 0x1f

    move-wide v6, v2

    mul-long/2addr v4, v6

    move-object v6, v1

    iget-wide v6, v6, Ljavafx/geometry/Rectangle2D;->minX:D

    invoke-static {v6, v7}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v6

    add-long/2addr v4, v6

    move-wide v2, v4

    .line 224
    const-wide/16 v4, 0x1f

    move-wide v6, v2

    mul-long/2addr v4, v6

    move-object v6, v1

    iget-wide v6, v6, Ljavafx/geometry/Rectangle2D;->minY:D

    invoke-static {v6, v7}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v6

    add-long/2addr v4, v6

    move-wide v2, v4

    .line 225
    const-wide/16 v4, 0x1f

    move-wide v6, v2

    mul-long/2addr v4, v6

    move-object v6, v1

    iget-wide v6, v6, Ljavafx/geometry/Rectangle2D;->width:D

    invoke-static {v6, v7}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v6

    add-long/2addr v4, v6

    move-wide v2, v4

    .line 226
    const-wide/16 v4, 0x1f

    move-wide v6, v2

    mul-long/2addr v4, v6

    move-object v6, v1

    iget-wide v6, v6, Ljavafx/geometry/Rectangle2D;->height:D

    invoke-static {v6, v7}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v6

    add-long/2addr v4, v6

    move-wide v2, v4

    .line 227
    move-object v4, v1

    move-wide v5, v2

    move-wide v7, v2

    const/16 v9, 0x20

    shr-long/2addr v7, v9

    xor-long/2addr v5, v7

    long-to-int v5, v5

    iput v5, v4, Ljavafx/geometry/Rectangle2D;->hash:I

    .line 229
    .end local v2    # "bits":J
    :cond_0
    move-object v4, v1

    iget v4, v4, Ljavafx/geometry/Rectangle2D;->hash:I

    move v1, v4

    .end local v1    # "this":Ljavafx/geometry/Rectangle2D;
    return v1
.end method

.method public intersects(DDDD)Z
    .locals 15

    .prologue
    .line 197
    move-object v1, p0

    .local v1, "this":Ljavafx/geometry/Rectangle2D;
    move-wide/from16 v2, p1

    .local v2, "x":D
    move-wide/from16 v4, p3

    .local v4, "y":D
    move-wide/from16 v6, p5

    .local v6, "w":D
    move-wide/from16 v8, p7

    .local v8, "h":D
    move-wide v10, v2

    move-object v12, v1

    iget-wide v12, v12, Ljavafx/geometry/Rectangle2D;->maxX:D

    cmpg-double v10, v10, v12

    if-gez v10, :cond_0

    move-wide v10, v4

    move-object v12, v1

    iget-wide v12, v12, Ljavafx/geometry/Rectangle2D;->maxY:D

    cmpg-double v10, v10, v12

    if-gez v10, :cond_0

    move-wide v10, v2

    move-wide v12, v6

    add-double/2addr v10, v12

    move-object v12, v1

    iget-wide v12, v12, Ljavafx/geometry/Rectangle2D;->minX:D

    cmpl-double v10, v10, v12

    if-lez v10, :cond_0

    move-wide v10, v4

    move-wide v12, v8

    add-double/2addr v10, v12

    move-object v12, v1

    iget-wide v12, v12, Ljavafx/geometry/Rectangle2D;->minY:D

    cmpl-double v10, v10, v12

    if-lez v10, :cond_0

    const/4 v10, 0x1

    :goto_0
    move v1, v10

    .end local v1    # "this":Ljavafx/geometry/Rectangle2D;
    return v1

    .restart local v1    # "this":Ljavafx/geometry/Rectangle2D;
    :cond_0
    const/4 v10, 0x0

    goto :goto_0
.end method

.method public intersects(Ljavafx/geometry/Rectangle2D;)Z
    .locals 6

    .prologue
    .line 179
    move-object v0, p0

    .local v0, "this":Ljavafx/geometry/Rectangle2D;
    move-object v1, p1

    .local v1, "r":Ljavafx/geometry/Rectangle2D;
    move-object v2, v1

    if-nez v2, :cond_0

    const/4 v2, 0x0

    move v0, v2

    .line 180
    .end local v0    # "this":Ljavafx/geometry/Rectangle2D;
    :goto_0
    return v0

    .restart local v0    # "this":Ljavafx/geometry/Rectangle2D;
    :cond_0
    move-object v2, v1

    iget-wide v2, v2, Ljavafx/geometry/Rectangle2D;->maxX:D

    move-object v4, v0

    iget-wide v4, v4, Ljavafx/geometry/Rectangle2D;->minX:D

    cmpl-double v2, v2, v4

    if-lez v2, :cond_1

    move-object v2, v1

    iget-wide v2, v2, Ljavafx/geometry/Rectangle2D;->maxY:D

    move-object v4, v0

    iget-wide v4, v4, Ljavafx/geometry/Rectangle2D;->minY:D

    cmpl-double v2, v2, v4

    if-lez v2, :cond_1

    move-object v2, v1

    iget-wide v2, v2, Ljavafx/geometry/Rectangle2D;->minX:D

    move-object v4, v0

    iget-wide v4, v4, Ljavafx/geometry/Rectangle2D;->maxX:D

    cmpg-double v2, v2, v4

    if-gez v2, :cond_1

    move-object v2, v1

    iget-wide v2, v2, Ljavafx/geometry/Rectangle2D;->minY:D

    move-object v4, v0

    iget-wide v4, v4, Ljavafx/geometry/Rectangle2D;->maxY:D

    cmpg-double v2, v2, v4

    if-gez v2, :cond_1

    const/4 v2, 0x1

    :goto_1
    move v0, v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 240
    move-object v0, p0

    .local v0, "this":Ljavafx/geometry/Rectangle2D;
    new-instance v1, Ljava/lang/StringBuilder;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Rectangle2D [minX = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-wide v2, v2, Ljavafx/geometry/Rectangle2D;->minX:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", minY="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-wide v2, v2, Ljavafx/geometry/Rectangle2D;->minY:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", maxX="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-wide v2, v2, Ljavafx/geometry/Rectangle2D;->maxX:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", maxY="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-wide v2, v2, Ljavafx/geometry/Rectangle2D;->maxY:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", width="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-wide v2, v2, Ljavafx/geometry/Rectangle2D;->width:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", height="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-wide v2, v2, Ljavafx/geometry/Rectangle2D;->height:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/geometry/Rectangle2D;
    return-object v0
.end method
