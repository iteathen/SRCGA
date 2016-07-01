.class public final Ljava/time/temporal/ValueRange;
.super Ljava/lang/Object;
.source "ValueRange.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x658e56a90d32a548L


# instance fields
.field private final maxLargest:J

.field private final maxSmallest:J

.field private final minLargest:J

.field private final minSmallest:J


# direct methods
.method private constructor <init>(JJJJ)V
    .locals 13

    .prologue
    .line 152
    move-object v0, p0

    .local v0, "this":Ljava/time/temporal/ValueRange;
    move-wide v1, p1

    .local v1, "minSmallest":J
    move-wide/from16 v3, p3

    .local v3, "minLargest":J
    move-wide/from16 v5, p5

    .local v5, "maxSmallest":J
    move-wide/from16 v7, p7

    .local v7, "maxLargest":J
    move-object v9, v0

    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    .line 153
    move-object v9, v0

    move-wide v10, v1

    iput-wide v10, v9, Ljava/time/temporal/ValueRange;->minSmallest:J

    .line 154
    move-object v9, v0

    move-wide v10, v3

    iput-wide v10, v9, Ljava/time/temporal/ValueRange;->minLargest:J

    .line 155
    move-object v9, v0

    move-wide v10, v5

    iput-wide v10, v9, Ljava/time/temporal/ValueRange;->maxSmallest:J

    .line 156
    move-object v9, v0

    move-wide v10, v7

    iput-wide v10, v9, Ljava/time/temporal/ValueRange;->maxLargest:J

    .line 157
    return-void
.end method

.method public static of(JJ)Ljava/time/temporal/ValueRange;
    .locals 16

    .prologue
    .line 92
    move-wide/from16 v0, p0

    .local v0, "min":J
    move-wide/from16 v2, p2

    .local v2, "max":J
    move-wide v4, v0

    move-wide v6, v2

    cmp-long v4, v4, v6

    if-lez v4, :cond_0

    .line 93
    new-instance v4, Ljava/lang/IllegalArgumentException;

    move-object v14, v4

    move-object v4, v14

    move-object v5, v14

    const-string v6, "Minimum value must be less than maximum value"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 95
    :cond_0
    new-instance v4, Ljava/time/temporal/ValueRange;

    move-object v14, v4

    move-object v4, v14

    move-object v5, v14

    move-wide v6, v0

    move-wide v8, v0

    move-wide v10, v2

    move-wide v12, v2

    invoke-direct/range {v5 .. v13}, Ljava/time/temporal/ValueRange;-><init>(JJJJ)V

    move-object v0, v4

    .end local v0    # "min":J
    return-object v0
.end method

.method public static of(JJJ)Ljava/time/temporal/ValueRange;
    .locals 14

    .prologue
    .line 113
    move-wide v0, p0

    .local v0, "min":J
    move-wide/from16 v2, p2

    .local v2, "maxSmallest":J
    move-wide/from16 v4, p4

    .local v4, "maxLargest":J
    move-wide v6, v0

    move-wide v8, v0

    move-wide v10, v2

    move-wide v12, v4

    invoke-static/range {v6 .. v13}, Ljava/time/temporal/ValueRange;->of(JJJJ)Ljava/time/temporal/ValueRange;

    move-result-object v6

    move-object v0, v6

    .end local v0    # "min":J
    return-object v0
.end method

.method public static of(JJJJ)Ljava/time/temporal/ValueRange;
    .locals 20

    .prologue
    .line 132
    move-wide/from16 v0, p0

    .local v0, "minSmallest":J
    move-wide/from16 v2, p2

    .local v2, "minLargest":J
    move-wide/from16 v4, p4

    .local v4, "maxSmallest":J
    move-wide/from16 v6, p6

    .local v6, "maxLargest":J
    move-wide v8, v0

    move-wide v10, v2

    cmp-long v8, v8, v10

    if-lez v8, :cond_0

    .line 133
    new-instance v8, Ljava/lang/IllegalArgumentException;

    move-object/from16 v18, v8

    move-object/from16 v8, v18

    move-object/from16 v9, v18

    const-string v10, "Smallest minimum value must be less than largest minimum value"

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 135
    :cond_0
    move-wide v8, v4

    move-wide v10, v6

    cmp-long v8, v8, v10

    if-lez v8, :cond_1

    .line 136
    new-instance v8, Ljava/lang/IllegalArgumentException;

    move-object/from16 v18, v8

    move-object/from16 v8, v18

    move-object/from16 v9, v18

    const-string v10, "Smallest maximum value must be less than largest maximum value"

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 138
    :cond_1
    move-wide v8, v2

    move-wide v10, v6

    cmp-long v8, v8, v10

    if-lez v8, :cond_2

    .line 139
    new-instance v8, Ljava/lang/IllegalArgumentException;

    move-object/from16 v18, v8

    move-object/from16 v8, v18

    move-object/from16 v9, v18

    const-string v10, "Minimum value must be less than maximum value"

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 141
    :cond_2
    new-instance v8, Ljava/time/temporal/ValueRange;

    move-object/from16 v18, v8

    move-object/from16 v8, v18

    move-object/from16 v9, v18

    move-wide v10, v0

    move-wide v12, v2

    move-wide v14, v4

    move-wide/from16 v16, v6

    invoke-direct/range {v9 .. v17}, Ljava/time/temporal/ValueRange;-><init>(JJJJ)V

    move-object v0, v8

    .end local v0    # "minSmallest":J
    return-object v0
.end method


# virtual methods
.method public checkValidIntValue(JLjava/time/temporal/TemporalField;)I
    .locals 11

    .prologue
    .line 299
    move-object v1, p0

    .local v1, "this":Ljava/time/temporal/ValueRange;
    move-wide v2, p1

    .local v2, "value":J
    move-object v4, p3

    .local v4, "field":Ljava/time/temporal/TemporalField;
    move-object v5, v1

    move-wide v6, v2

    invoke-virtual {v5, v6, v7}, Ljava/time/temporal/ValueRange;->isValidIntValue(J)Z

    move-result v5

    if-nez v5, :cond_0

    .line 300
    new-instance v5, Ljava/time/DateTimeException;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid int value for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v4

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-wide v8, v2

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 302
    :cond_0
    move-wide v5, v2

    long-to-int v5, v5

    move v1, v5

    .end local v1    # "this":Ljava/time/temporal/ValueRange;
    return v1
.end method

.method public checkValidValue(JLjava/time/temporal/TemporalField;)J
    .locals 11

    .prologue
    .line 276
    move-object v1, p0

    .local v1, "this":Ljava/time/temporal/ValueRange;
    move-wide v2, p1

    .local v2, "value":J
    move-object v4, p3

    .local v4, "field":Ljava/time/temporal/TemporalField;
    move-object v5, v1

    move-wide v6, v2

    invoke-virtual {v5, v6, v7}, Ljava/time/temporal/ValueRange;->isValidValue(J)Z

    move-result v5

    if-nez v5, :cond_1

    .line 277
    move-object v5, v4

    if-eqz v5, :cond_0

    .line 278
    new-instance v5, Ljava/time/DateTimeException;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid value for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v4

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " (valid values "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "): "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-wide v8, v2

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 280
    :cond_0
    new-instance v5, Ljava/time/DateTimeException;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid value (valid values "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "): "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-wide v8, v2

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 283
    :cond_1
    move-wide v5, v2

    move-wide v1, v5

    .end local v1    # "this":Ljava/time/temporal/ValueRange;
    return-wide v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8

    .prologue
    .line 318
    move-object v1, p0

    .local v1, "this":Ljava/time/temporal/ValueRange;
    move-object v2, p1

    .local v2, "obj":Ljava/lang/Object;
    move-object v4, v2

    move-object v5, v1

    if-ne v4, v5, :cond_0

    .line 319
    const/4 v4, 0x1

    move v1, v4

    .line 326
    .end local v1    # "this":Ljava/time/temporal/ValueRange;
    :goto_0
    return v1

    .line 321
    .restart local v1    # "this":Ljava/time/temporal/ValueRange;
    :cond_0
    move-object v4, v2

    instance-of v4, v4, Ljava/time/temporal/ValueRange;

    if-eqz v4, :cond_2

    .line 322
    move-object v4, v2

    check-cast v4, Ljava/time/temporal/ValueRange;

    move-object v3, v4

    .line 323
    .local v3, "other":Ljava/time/temporal/ValueRange;
    move-object v4, v1

    iget-wide v4, v4, Ljava/time/temporal/ValueRange;->minSmallest:J

    move-object v6, v3

    iget-wide v6, v6, Ljava/time/temporal/ValueRange;->minSmallest:J

    cmp-long v4, v4, v6

    if-nez v4, :cond_1

    move-object v4, v1

    iget-wide v4, v4, Ljava/time/temporal/ValueRange;->minLargest:J

    move-object v6, v3

    iget-wide v6, v6, Ljava/time/temporal/ValueRange;->minLargest:J

    cmp-long v4, v4, v6

    if-nez v4, :cond_1

    move-object v4, v1

    iget-wide v4, v4, Ljava/time/temporal/ValueRange;->maxSmallest:J

    move-object v6, v3

    iget-wide v6, v6, Ljava/time/temporal/ValueRange;->maxSmallest:J

    cmp-long v4, v4, v6

    if-nez v4, :cond_1

    move-object v4, v1

    iget-wide v4, v4, Ljava/time/temporal/ValueRange;->maxLargest:J

    move-object v6, v3

    iget-wide v6, v6, Ljava/time/temporal/ValueRange;->maxLargest:J

    cmp-long v4, v4, v6

    if-nez v4, :cond_1

    const/4 v4, 0x1

    :goto_1
    move v1, v4

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    goto :goto_1

    .line 326
    .end local v3    # "other":Ljava/time/temporal/ValueRange;
    :cond_2
    const/4 v4, 0x0

    move v1, v4

    goto :goto_0
.end method

.method public getLargestMinimum()J
    .locals 3

    .prologue
    .line 195
    move-object v0, p0

    .local v0, "this":Ljava/time/temporal/ValueRange;
    move-object v1, v0

    iget-wide v1, v1, Ljava/time/temporal/ValueRange;->minLargest:J

    move-wide v0, v1

    .end local v0    # "this":Ljava/time/temporal/ValueRange;
    return-wide v0
.end method

.method public getMaximum()J
    .locals 3

    .prologue
    .line 219
    move-object v0, p0

    .local v0, "this":Ljava/time/temporal/ValueRange;
    move-object v1, v0

    iget-wide v1, v1, Ljava/time/temporal/ValueRange;->maxLargest:J

    move-wide v0, v1

    .end local v0    # "this":Ljava/time/temporal/ValueRange;
    return-wide v0
.end method

.method public getMinimum()J
    .locals 3

    .prologue
    .line 183
    move-object v0, p0

    .local v0, "this":Ljava/time/temporal/ValueRange;
    move-object v1, v0

    iget-wide v1, v1, Ljava/time/temporal/ValueRange;->minSmallest:J

    move-wide v0, v1

    .end local v0    # "this":Ljava/time/temporal/ValueRange;
    return-wide v0
.end method

.method public getSmallestMaximum()J
    .locals 3

    .prologue
    .line 207
    move-object v0, p0

    .local v0, "this":Ljava/time/temporal/ValueRange;
    move-object v1, v0

    iget-wide v1, v1, Ljava/time/temporal/ValueRange;->maxSmallest:J

    move-wide v0, v1

    .end local v0    # "this":Ljava/time/temporal/ValueRange;
    return-wide v0
.end method

.method public hashCode()I
    .locals 10

    .prologue
    .line 336
    move-object v1, p0

    .local v1, "this":Ljava/time/temporal/ValueRange;
    move-object v4, v1

    iget-wide v4, v4, Ljava/time/temporal/ValueRange;->minSmallest:J

    move-object v6, v1

    iget-wide v6, v6, Ljava/time/temporal/ValueRange;->minLargest:J

    add-long/2addr v4, v6

    const-wide/16 v6, 0x10

    move-object v8, v1

    iget-wide v8, v8, Ljava/time/temporal/ValueRange;->minLargest:J

    add-long/2addr v6, v8

    long-to-int v6, v6

    shl-long/2addr v4, v6

    const-wide/16 v6, 0x30

    move-object v8, v1

    iget-wide v8, v8, Ljava/time/temporal/ValueRange;->maxSmallest:J

    add-long/2addr v6, v8

    long-to-int v6, v6

    shr-long/2addr v4, v6

    const-wide/16 v6, 0x20

    move-object v8, v1

    iget-wide v8, v8, Ljava/time/temporal/ValueRange;->maxSmallest:J

    add-long/2addr v6, v8

    long-to-int v6, v6

    shl-long/2addr v4, v6

    const-wide/16 v6, 0x20

    move-object v8, v1

    iget-wide v8, v8, Ljava/time/temporal/ValueRange;->maxLargest:J

    add-long/2addr v6, v8

    long-to-int v6, v6

    shr-long/2addr v4, v6

    const-wide/16 v6, 0x30

    move-object v8, v1

    iget-wide v8, v8, Ljava/time/temporal/ValueRange;->maxLargest:J

    add-long/2addr v6, v8

    long-to-int v6, v6

    shl-long/2addr v4, v6

    const/16 v6, 0x10

    shr-long/2addr v4, v6

    move-wide v2, v4

    .line 338
    .local v2, "hash":J
    move-wide v4, v2

    move-wide v6, v2

    const/16 v8, 0x20

    ushr-long/2addr v6, v8

    xor-long/2addr v4, v6

    long-to-int v4, v4

    move v1, v4

    .end local v1    # "this":Ljava/time/temporal/ValueRange;
    return v1
.end method

.method public isFixed()Z
    .locals 6

    .prologue
    .line 170
    move-object v1, p0

    .local v1, "this":Ljava/time/temporal/ValueRange;
    move-object v2, v1

    iget-wide v2, v2, Ljava/time/temporal/ValueRange;->minSmallest:J

    move-object v4, v1

    iget-wide v4, v4, Ljava/time/temporal/ValueRange;->minLargest:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    move-object v2, v1

    iget-wide v2, v2, Ljava/time/temporal/ValueRange;->maxSmallest:J

    move-object v4, v1

    iget-wide v4, v4, Ljava/time/temporal/ValueRange;->maxLargest:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v1, v2

    .end local v1    # "this":Ljava/time/temporal/ValueRange;
    return v1

    .restart local v1    # "this":Ljava/time/temporal/ValueRange;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isIntValue()Z
    .locals 6

    .prologue
    .line 236
    move-object v1, p0

    .local v1, "this":Ljava/time/temporal/ValueRange;
    move-object v2, v1

    invoke-virtual {v2}, Ljava/time/temporal/ValueRange;->getMinimum()J

    move-result-wide v2

    const-wide/32 v4, -0x80000000

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    move-object v2, v1

    invoke-virtual {v2}, Ljava/time/temporal/ValueRange;->getMaximum()J

    move-result-wide v2

    const-wide/32 v4, 0x7fffffff

    cmp-long v2, v2, v4

    if-gtz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v1, v2

    .end local v1    # "this":Ljava/time/temporal/ValueRange;
    return v1

    .restart local v1    # "this":Ljava/time/temporal/ValueRange;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isValidIntValue(J)Z
    .locals 7

    .prologue
    .line 261
    move-object v0, p0

    .local v0, "this":Ljava/time/temporal/ValueRange;
    move-wide v1, p1

    .local v1, "value":J
    move-object v3, v0

    invoke-virtual {v3}, Ljava/time/temporal/ValueRange;->isIntValue()Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v0

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljava/time/temporal/ValueRange;->isValidValue(J)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    move v0, v3

    .end local v0    # "this":Ljava/time/temporal/ValueRange;
    return v0

    .restart local v0    # "this":Ljava/time/temporal/ValueRange;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public isValidValue(J)Z
    .locals 9

    .prologue
    .line 248
    move-object v1, p0

    .local v1, "this":Ljava/time/temporal/ValueRange;
    move-wide v2, p1

    .local v2, "value":J
    move-wide v4, v2

    move-object v6, v1

    invoke-virtual {v6}, Ljava/time/temporal/ValueRange;->getMinimum()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-ltz v4, :cond_0

    move-wide v4, v2

    move-object v6, v1

    invoke-virtual {v6}, Ljava/time/temporal/ValueRange;->getMaximum()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-gtz v4, :cond_0

    const/4 v4, 0x1

    :goto_0
    move v1, v4

    .end local v1    # "this":Ljava/time/temporal/ValueRange;
    return v1

    .restart local v1    # "this":Ljava/time/temporal/ValueRange;
    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .prologue
    .line 353
    move-object v0, p0

    .local v0, "this":Ljava/time/temporal/ValueRange;
    new-instance v2, Ljava/lang/StringBuilder;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object v1, v2

    .line 354
    .local v1, "buf":Ljava/lang/StringBuilder;
    move-object v2, v1

    move-object v3, v0

    iget-wide v3, v3, Ljava/time/temporal/ValueRange;->minSmallest:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 355
    move-object v2, v0

    iget-wide v2, v2, Ljava/time/temporal/ValueRange;->minSmallest:J

    move-object v4, v0

    iget-wide v4, v4, Ljava/time/temporal/ValueRange;->minLargest:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 356
    move-object v2, v1

    const/16 v3, 0x2f

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v0

    iget-wide v3, v3, Ljava/time/temporal/ValueRange;->minLargest:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 358
    :cond_0
    move-object v2, v1

    const-string v3, " - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v0

    iget-wide v3, v3, Ljava/time/temporal/ValueRange;->maxSmallest:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 359
    move-object v2, v0

    iget-wide v2, v2, Ljava/time/temporal/ValueRange;->maxSmallest:J

    move-object v4, v0

    iget-wide v4, v4, Ljava/time/temporal/ValueRange;->maxLargest:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    .line 360
    move-object v2, v1

    const/16 v3, 0x2f

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v0

    iget-wide v3, v3, Ljava/time/temporal/ValueRange;->maxLargest:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 362
    :cond_1
    move-object v2, v1

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljava/time/temporal/ValueRange;
    return-object v0
.end method
