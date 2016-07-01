.class public Lcom/sun/scenario/animation/NumberTangentInterpolator;
.super Ljavafx/animation/Interpolator;
.source "NumberTangentInterpolator.java"


# instance fields
.field private final inTicks:J

.field private final inValue:D

.field private final outTicks:J

.field private final outValue:D


# direct methods
.method public constructor <init>(Ljavafx/util/Duration;D)V
    .locals 14

    .prologue
    .line 52
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/animation/NumberTangentInterpolator;
    move-object v1, p1

    .local v1, "duration":Ljavafx/util/Duration;
    move-wide/from16 v2, p2

    .local v2, "value":D
    move-object v4, v0

    invoke-direct {v4}, Ljavafx/animation/Interpolator;-><init>()V

    .line 53
    move-object v4, v0

    move-object v5, v0

    move-object v6, v1

    invoke-static {v6}, Lcom/sun/javafx/animation/TickCalculation;->fromDuration(Ljavafx/util/Duration;)J

    move-result-wide v6

    move-object v10, v5

    move-wide v11, v6

    move-wide v5, v11

    move-object v7, v10

    move-wide v8, v11

    iput-wide v8, v7, Lcom/sun/scenario/animation/NumberTangentInterpolator;->inTicks:J

    iput-wide v5, v4, Lcom/sun/scenario/animation/NumberTangentInterpolator;->outTicks:J

    .line 54
    move-object v4, v0

    move-object v5, v0

    move-wide v6, v2

    move-object v10, v5

    move-wide v11, v6

    move-wide v5, v11

    move-object v7, v10

    move-wide v8, v11

    iput-wide v8, v7, Lcom/sun/scenario/animation/NumberTangentInterpolator;->outValue:D

    iput-wide v5, v4, Lcom/sun/scenario/animation/NumberTangentInterpolator;->inValue:D

    .line 55
    return-void
.end method

.method public constructor <init>(Ljavafx/util/Duration;DLjavafx/util/Duration;D)V
    .locals 10

    .prologue
    .line 45
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/animation/NumberTangentInterpolator;
    move-object v1, p1

    .local v1, "inDuration":Ljavafx/util/Duration;
    move-wide v2, p2

    .local v2, "inValue":D
    move-object v4, p4

    .local v4, "outDuration":Ljavafx/util/Duration;
    move-wide v5, p5

    .local v5, "outValue":D
    move-object v7, v0

    invoke-direct {v7}, Ljavafx/animation/Interpolator;-><init>()V

    .line 46
    move-object v7, v0

    move-object v8, v1

    invoke-static {v8}, Lcom/sun/javafx/animation/TickCalculation;->fromDuration(Ljavafx/util/Duration;)J

    move-result-wide v8

    iput-wide v8, v7, Lcom/sun/scenario/animation/NumberTangentInterpolator;->inTicks:J

    .line 47
    move-object v7, v0

    move-wide v8, v2

    iput-wide v8, v7, Lcom/sun/scenario/animation/NumberTangentInterpolator;->inValue:D

    .line 48
    move-object v7, v0

    move-object v8, v4

    invoke-static {v8}, Lcom/sun/javafx/animation/TickCalculation;->fromDuration(Ljavafx/util/Duration;)J

    move-result-wide v8

    iput-wide v8, v7, Lcom/sun/scenario/animation/NumberTangentInterpolator;->outTicks:J

    .line 49
    move-object v7, v0

    move-wide v8, v5

    iput-wide v8, v7, Lcom/sun/scenario/animation/NumberTangentInterpolator;->outValue:D

    .line 50
    return-void
.end method


# virtual methods
.method protected curve(D)D
    .locals 7

    .prologue
    .line 103
    move-object v1, p0

    .local v1, "this":Lcom/sun/scenario/animation/NumberTangentInterpolator;
    move-wide v2, p1

    .local v2, "t":D
    move-wide v4, v2

    move-wide v1, v4

    .end local v1    # "this":Lcom/sun/scenario/animation/NumberTangentInterpolator;
    return-wide v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8

    .prologue
    .line 76
    move-object v1, p0

    .local v1, "this":Lcom/sun/scenario/animation/NumberTangentInterpolator;
    move-object v2, p1

    .local v2, "obj":Ljava/lang/Object;
    move-object v4, v2

    if-nez v4, :cond_0

    .line 77
    const/4 v4, 0x0

    move v1, v4

    .line 95
    .end local v1    # "this":Lcom/sun/scenario/animation/NumberTangentInterpolator;
    :goto_0
    return v1

    .line 79
    .restart local v1    # "this":Lcom/sun/scenario/animation/NumberTangentInterpolator;
    :cond_0
    move-object v4, v1

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    move-object v5, v2

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    if-eq v4, v5, :cond_1

    .line 80
    const/4 v4, 0x0

    move v1, v4

    goto :goto_0

    .line 82
    :cond_1
    move-object v4, v2

    check-cast v4, Lcom/sun/scenario/animation/NumberTangentInterpolator;

    move-object v3, v4

    .line 83
    .local v3, "other":Lcom/sun/scenario/animation/NumberTangentInterpolator;
    move-object v4, v1

    iget-wide v4, v4, Lcom/sun/scenario/animation/NumberTangentInterpolator;->inValue:D

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    move-object v6, v3

    iget-wide v6, v6, Lcom/sun/scenario/animation/NumberTangentInterpolator;->inValue:D

    invoke-static {v6, v7}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-eqz v4, :cond_2

    .line 84
    const/4 v4, 0x0

    move v1, v4

    goto :goto_0

    .line 86
    :cond_2
    move-object v4, v1

    iget-wide v4, v4, Lcom/sun/scenario/animation/NumberTangentInterpolator;->outValue:D

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    move-object v6, v3

    iget-wide v6, v6, Lcom/sun/scenario/animation/NumberTangentInterpolator;->outValue:D

    invoke-static {v6, v7}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-eqz v4, :cond_3

    .line 87
    const/4 v4, 0x0

    move v1, v4

    goto :goto_0

    .line 89
    :cond_3
    move-object v4, v1

    iget-wide v4, v4, Lcom/sun/scenario/animation/NumberTangentInterpolator;->inTicks:J

    move-object v6, v3

    iget-wide v6, v6, Lcom/sun/scenario/animation/NumberTangentInterpolator;->inTicks:J

    cmp-long v4, v4, v6

    if-eqz v4, :cond_4

    .line 90
    const/4 v4, 0x0

    move v1, v4

    goto :goto_0

    .line 92
    :cond_4
    move-object v4, v1

    iget-wide v4, v4, Lcom/sun/scenario/animation/NumberTangentInterpolator;->outTicks:J

    move-object v6, v3

    iget-wide v6, v6, Lcom/sun/scenario/animation/NumberTangentInterpolator;->outTicks:J

    cmp-long v4, v4, v6

    if-eqz v4, :cond_5

    .line 93
    const/4 v4, 0x0

    move v1, v4

    goto :goto_0

    .line 95
    :cond_5
    const/4 v4, 0x1

    move v1, v4

    goto :goto_0
.end method

.method public getInTicks()D
    .locals 4

    .prologue
    .line 41
    move-object v1, p0

    .local v1, "this":Lcom/sun/scenario/animation/NumberTangentInterpolator;
    move-object v2, v1

    iget-wide v2, v2, Lcom/sun/scenario/animation/NumberTangentInterpolator;->inTicks:J

    long-to-double v2, v2

    move-wide v1, v2

    .end local v1    # "this":Lcom/sun/scenario/animation/NumberTangentInterpolator;
    return-wide v1
.end method

.method public getInValue()D
    .locals 3

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/animation/NumberTangentInterpolator;
    move-object v1, v0

    iget-wide v1, v1, Lcom/sun/scenario/animation/NumberTangentInterpolator;->inValue:D

    move-wide v0, v1

    .end local v0    # "this":Lcom/sun/scenario/animation/NumberTangentInterpolator;
    return-wide v0
.end method

.method public getOutTicks()D
    .locals 4

    .prologue
    .line 43
    move-object v1, p0

    .local v1, "this":Lcom/sun/scenario/animation/NumberTangentInterpolator;
    move-object v2, v1

    iget-wide v2, v2, Lcom/sun/scenario/animation/NumberTangentInterpolator;->outTicks:J

    long-to-double v2, v2

    move-wide v1, v2

    .end local v1    # "this":Lcom/sun/scenario/animation/NumberTangentInterpolator;
    return-wide v1
.end method

.method public getOutValue()D
    .locals 3

    .prologue
    .line 39
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/animation/NumberTangentInterpolator;
    move-object v1, v0

    iget-wide v1, v1, Lcom/sun/scenario/animation/NumberTangentInterpolator;->outValue:D

    move-wide v0, v1

    .end local v0    # "this":Lcom/sun/scenario/animation/NumberTangentInterpolator;
    return-wide v0
.end method

.method public hashCode()I
    .locals 9

    .prologue
    .line 66
    move-object v1, p0

    .local v1, "this":Lcom/sun/scenario/animation/NumberTangentInterpolator;
    const/4 v3, 0x7

    move v2, v3

    .line 67
    .local v2, "hash":I
    const/16 v3, 0x3b

    move v4, v2

    mul-int/2addr v3, v4

    move-object v4, v1

    iget-wide v4, v4, Lcom/sun/scenario/animation/NumberTangentInterpolator;->inValue:D

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    move-object v6, v1

    iget-wide v6, v6, Lcom/sun/scenario/animation/NumberTangentInterpolator;->inValue:D

    invoke-static {v6, v7}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v6

    const/16 v8, 0x20

    ushr-long/2addr v6, v8

    xor-long/2addr v4, v6

    long-to-int v4, v4

    add-int/2addr v3, v4

    move v2, v3

    .line 68
    const/16 v3, 0x3b

    move v4, v2

    mul-int/2addr v3, v4

    move-object v4, v1

    iget-wide v4, v4, Lcom/sun/scenario/animation/NumberTangentInterpolator;->outValue:D

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    move-object v6, v1

    iget-wide v6, v6, Lcom/sun/scenario/animation/NumberTangentInterpolator;->outValue:D

    invoke-static {v6, v7}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v6

    const/16 v8, 0x20

    ushr-long/2addr v6, v8

    xor-long/2addr v4, v6

    long-to-int v4, v4

    add-int/2addr v3, v4

    move v2, v3

    .line 69
    const/16 v3, 0x3b

    move v4, v2

    mul-int/2addr v3, v4

    move-object v4, v1

    iget-wide v4, v4, Lcom/sun/scenario/animation/NumberTangentInterpolator;->inTicks:J

    move-object v6, v1

    iget-wide v6, v6, Lcom/sun/scenario/animation/NumberTangentInterpolator;->inTicks:J

    const/16 v8, 0x20

    ushr-long/2addr v6, v8

    xor-long/2addr v4, v6

    long-to-int v4, v4

    add-int/2addr v3, v4

    move v2, v3

    .line 70
    const/16 v3, 0x3b

    move v4, v2

    mul-int/2addr v3, v4

    move-object v4, v1

    iget-wide v4, v4, Lcom/sun/scenario/animation/NumberTangentInterpolator;->outTicks:J

    move-object v6, v1

    iget-wide v6, v6, Lcom/sun/scenario/animation/NumberTangentInterpolator;->outTicks:J

    const/16 v8, 0x20

    ushr-long/2addr v6, v8

    xor-long/2addr v4, v6

    long-to-int v4, v4

    add-int/2addr v3, v4

    move v2, v3

    .line 71
    move v3, v2

    move v1, v3

    .end local v1    # "this":Lcom/sun/scenario/animation/NumberTangentInterpolator;
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 59
    move-object v0, p0

    .local v0, "this":Lcom/sun/scenario/animation/NumberTangentInterpolator;
    new-instance v1, Ljava/lang/StringBuilder;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NumberTangentInterpolator [inValue="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-wide v2, v2, Lcom/sun/scenario/animation/NumberTangentInterpolator;->inValue:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", inDuration="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-wide v2, v2, Lcom/sun/scenario/animation/NumberTangentInterpolator;->inTicks:J

    .line 60
    invoke-static {v2, v3}, Lcom/sun/javafx/animation/TickCalculation;->toDuration(J)Ljavafx/util/Duration;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", outValue="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-wide v2, v2, Lcom/sun/scenario/animation/NumberTangentInterpolator;->outValue:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", outDuration="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-wide v2, v2, Lcom/sun/scenario/animation/NumberTangentInterpolator;->outTicks:J

    .line 61
    invoke-static {v2, v3}, Lcom/sun/javafx/animation/TickCalculation;->toDuration(J)Ljavafx/util/Duration;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/scenario/animation/NumberTangentInterpolator;
    return-object v0
.end method
