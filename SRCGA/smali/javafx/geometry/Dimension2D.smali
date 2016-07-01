.class public Ljavafx/geometry/Dimension2D;
.super Ljava/lang/Object;
.source "Dimension2D.java"


# instance fields
.field private hash:I

.field private height:D

.field private width:D


# direct methods
.method public constructor <init>(DD)V
    .locals 9
    .param p1    # D
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "width"
        .end annotation
    .end param
    .param p3    # D
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "height"
        .end annotation
    .end param

    .prologue
    .line 44
    move-object v0, p0

    .local v0, "this":Ljavafx/geometry/Dimension2D;
    move-wide v1, p1

    .local v1, "width":D
    move-wide v3, p3

    .local v3, "height":D
    move-object v5, v0

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 82
    move-object v5, v0

    const/4 v6, 0x0

    iput v6, v5, Ljavafx/geometry/Dimension2D;->hash:I

    .line 45
    move-object v5, v0

    move-wide v6, v1

    iput-wide v6, v5, Ljavafx/geometry/Dimension2D;->width:D

    .line 46
    move-object v5, v0

    move-wide v6, v3

    iput-wide v6, v5, Ljavafx/geometry/Dimension2D;->height:D

    .line 47
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 8

    .prologue
    .line 91
    move-object v1, p0

    .local v1, "this":Ljavafx/geometry/Dimension2D;
    move-object v2, p1

    .local v2, "obj":Ljava/lang/Object;
    move-object v4, v2

    move-object v5, v1

    if-ne v4, v5, :cond_0

    const/4 v4, 0x1

    move v1, v4

    .line 95
    .end local v1    # "this":Ljavafx/geometry/Dimension2D;
    :goto_0
    return v1

    .line 92
    .restart local v1    # "this":Ljavafx/geometry/Dimension2D;
    :cond_0
    move-object v4, v2

    instance-of v4, v4, Ljavafx/geometry/Dimension2D;

    if-eqz v4, :cond_2

    .line 93
    move-object v4, v2

    check-cast v4, Ljavafx/geometry/Dimension2D;

    move-object v3, v4

    .line 94
    .local v3, "other":Ljavafx/geometry/Dimension2D;
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/geometry/Dimension2D;->getWidth()D

    move-result-wide v4

    move-object v6, v3

    invoke-virtual {v6}, Ljavafx/geometry/Dimension2D;->getWidth()D

    move-result-wide v6

    cmpl-double v4, v4, v6

    if-nez v4, :cond_1

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/geometry/Dimension2D;->getHeight()D

    move-result-wide v4

    move-object v6, v3

    invoke-virtual {v6}, Ljavafx/geometry/Dimension2D;->getHeight()D

    move-result-wide v6

    cmpl-double v4, v4, v6

    if-nez v4, :cond_1

    const/4 v4, 0x1

    :goto_1
    move v1, v4

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    goto :goto_1

    .line 95
    .end local v3    # "other":Ljavafx/geometry/Dimension2D;
    :cond_2
    const/4 v4, 0x0

    move v1, v4

    goto :goto_0
.end method

.method public final getHeight()D
    .locals 3

    .prologue
    .line 76
    move-object v0, p0

    .local v0, "this":Ljavafx/geometry/Dimension2D;
    move-object v1, v0

    iget-wide v1, v1, Ljavafx/geometry/Dimension2D;->height:D

    move-wide v0, v1

    .end local v0    # "this":Ljavafx/geometry/Dimension2D;
    return-wide v0
.end method

.method public final getWidth()D
    .locals 3

    .prologue
    .line 61
    move-object v0, p0

    .local v0, "this":Ljavafx/geometry/Dimension2D;
    move-object v1, v0

    iget-wide v1, v1, Ljavafx/geometry/Dimension2D;->width:D

    move-wide v0, v1

    .end local v0    # "this":Ljavafx/geometry/Dimension2D;
    return-wide v0
.end method

.method public hashCode()I
    .locals 10

    .prologue
    .line 103
    move-object v1, p0

    .local v1, "this":Ljavafx/geometry/Dimension2D;
    move-object v4, v1

    iget v4, v4, Ljavafx/geometry/Dimension2D;->hash:I

    if-nez v4, :cond_0

    .line 104
    const-wide/16 v4, 0x7

    move-wide v2, v4

    .line 105
    .local v2, "bits":J
    const-wide/16 v4, 0x1f

    move-wide v6, v2

    mul-long/2addr v4, v6

    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/geometry/Dimension2D;->getWidth()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v6

    add-long/2addr v4, v6

    move-wide v2, v4

    .line 106
    const-wide/16 v4, 0x1f

    move-wide v6, v2

    mul-long/2addr v4, v6

    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/geometry/Dimension2D;->getHeight()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v6

    add-long/2addr v4, v6

    move-wide v2, v4

    .line 107
    move-object v4, v1

    move-wide v5, v2

    move-wide v7, v2

    const/16 v9, 0x20

    shr-long/2addr v7, v9

    xor-long/2addr v5, v7

    long-to-int v5, v5

    iput v5, v4, Ljavafx/geometry/Dimension2D;->hash:I

    .line 109
    .end local v2    # "bits":J
    :cond_0
    move-object v4, v1

    iget v4, v4, Ljavafx/geometry/Dimension2D;->hash:I

    move v1, v4

    .end local v1    # "this":Ljavafx/geometry/Dimension2D;
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 120
    move-object v0, p0

    .local v0, "this":Ljavafx/geometry/Dimension2D;
    new-instance v1, Ljava/lang/StringBuilder;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Dimension2D [width = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/geometry/Dimension2D;->getWidth()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", height = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/geometry/Dimension2D;->getHeight()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/geometry/Dimension2D;
    return-object v0
.end method
