.class final Ljava/time/chrono/ChronoPeriodImpl;
.super Ljava/time/chrono/ChronoPeriod;
.source "ChronoPeriodImpl.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x402c2826a5L


# instance fields
.field private final chronology:Ljava/time/chrono/AbstractChronology;

.field private final days:I

.field private final months:I

.field private final years:I


# direct methods
.method public constructor <init>(Ljava/time/chrono/AbstractChronology;III)V
    .locals 7

    .prologue
    .line 69
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/ChronoPeriodImpl;
    move-object v1, p1

    .local v1, "chronology":Ljava/time/chrono/AbstractChronology;
    move v2, p2

    .local v2, "years":I
    move v3, p3

    .local v3, "months":I
    move v4, p4

    .local v4, "days":I
    move-object v5, v0

    invoke-direct {v5}, Ljava/time/chrono/ChronoPeriod;-><init>()V

    .line 70
    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Ljava/time/chrono/ChronoPeriodImpl;->chronology:Ljava/time/chrono/AbstractChronology;

    .line 71
    move-object v5, v0

    move v6, v2

    iput v6, v5, Ljava/time/chrono/ChronoPeriodImpl;->years:I

    .line 72
    move-object v5, v0

    move v6, v3

    iput v6, v5, Ljava/time/chrono/ChronoPeriodImpl;->months:I

    .line 73
    move-object v5, v0

    move v6, v4

    iput v6, v5, Ljava/time/chrono/ChronoPeriodImpl;->days:I

    .line 74
    return-void
.end method


# virtual methods
.method public addTo(Ljava/time/temporal/Temporal;)Ljava/time/temporal/Temporal;
    .locals 8

    .prologue
    .line 155
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/ChronoPeriodImpl;
    move-object v1, p1

    .local v1, "temporal":Ljava/time/temporal/Temporal;
    move-object v3, v1

    const-string v4, "temporal"

    invoke-static {v3, v4}, Ljava/time/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 156
    move-object v3, v1

    invoke-static {}, Ljava/time/temporal/TemporalQueries;->chronology()Ljava/time/temporal/TemporalQuery;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/time/temporal/Temporal;->query(Ljava/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/time/chrono/AbstractChronology;

    move-object v2, v3

    .line 157
    .local v2, "temporalChrono":Ljava/time/chrono/AbstractChronology;
    move-object v3, v2

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Ljava/time/chrono/ChronoPeriodImpl;->chronology:Ljava/time/chrono/AbstractChronology;

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljava/time/chrono/AbstractChronology;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 158
    new-instance v3, Ljava/time/DateTimeException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid chronology, required: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v0

    iget-object v6, v6, Ljava/time/chrono/ChronoPeriodImpl;->chronology:Ljava/time/chrono/AbstractChronology;

    invoke-virtual {v6}, Ljava/time/chrono/AbstractChronology;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", but was: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v2

    invoke-virtual {v6}, Ljava/time/chrono/AbstractChronology;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 160
    :cond_0
    move-object v3, v0

    iget v3, v3, Ljava/time/chrono/ChronoPeriodImpl;->years:I

    if-eqz v3, :cond_1

    .line 161
    move-object v3, v1

    move-object v4, v0

    iget v4, v4, Ljava/time/chrono/ChronoPeriodImpl;->years:I

    int-to-long v4, v4

    sget-object v6, Ljava/time/temporal/ChronoUnit;->YEARS:Ljava/time/temporal/ChronoUnit;

    invoke-interface {v3, v4, v5, v6}, Ljava/time/temporal/Temporal;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/temporal/Temporal;

    move-result-object v3

    move-object v1, v3

    .line 163
    :cond_1
    move-object v3, v0

    iget v3, v3, Ljava/time/chrono/ChronoPeriodImpl;->months:I

    if-eqz v3, :cond_2

    .line 164
    move-object v3, v1

    move-object v4, v0

    iget v4, v4, Ljava/time/chrono/ChronoPeriodImpl;->months:I

    int-to-long v4, v4

    sget-object v6, Ljava/time/temporal/ChronoUnit;->MONTHS:Ljava/time/temporal/ChronoUnit;

    invoke-interface {v3, v4, v5, v6}, Ljava/time/temporal/Temporal;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/temporal/Temporal;

    move-result-object v3

    move-object v1, v3

    .line 166
    :cond_2
    move-object v3, v0

    iget v3, v3, Ljava/time/chrono/ChronoPeriodImpl;->days:I

    if-eqz v3, :cond_3

    .line 167
    move-object v3, v1

    move-object v4, v0

    iget v4, v4, Ljava/time/chrono/ChronoPeriodImpl;->days:I

    int-to-long v4, v4

    sget-object v6, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    invoke-interface {v3, v4, v5, v6}, Ljava/time/temporal/Temporal;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/temporal/Temporal;

    move-result-object v3

    move-object v1, v3

    .line 169
    :cond_3
    move-object v3, v1

    move-object v0, v3

    .end local v0    # "this":Ljava/time/chrono/ChronoPeriodImpl;
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    .line 194
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/ChronoPeriodImpl;
    move-object v1, p1

    .local v1, "obj":Ljava/lang/Object;
    move-object v3, v0

    move-object v4, v1

    if-ne v3, v4, :cond_0

    .line 195
    const/4 v3, 0x1

    move v0, v3

    .line 202
    .end local v0    # "this":Ljava/time/chrono/ChronoPeriodImpl;
    :goto_0
    return v0

    .line 197
    .restart local v0    # "this":Ljava/time/chrono/ChronoPeriodImpl;
    :cond_0
    move-object v3, v1

    instance-of v3, v3, Ljava/time/chrono/ChronoPeriodImpl;

    if-eqz v3, :cond_2

    .line 198
    move-object v3, v1

    check-cast v3, Ljava/time/chrono/ChronoPeriodImpl;

    move-object v2, v3

    .line 199
    .local v2, "other":Ljava/time/chrono/ChronoPeriodImpl;
    move-object v3, v0

    iget v3, v3, Ljava/time/chrono/ChronoPeriodImpl;->years:I

    move-object v4, v2

    iget v4, v4, Ljava/time/chrono/ChronoPeriodImpl;->years:I

    if-ne v3, v4, :cond_1

    move-object v3, v0

    iget v3, v3, Ljava/time/chrono/ChronoPeriodImpl;->months:I

    move-object v4, v2

    iget v4, v4, Ljava/time/chrono/ChronoPeriodImpl;->months:I

    if-ne v3, v4, :cond_1

    move-object v3, v0

    iget v3, v3, Ljava/time/chrono/ChronoPeriodImpl;->days:I

    move-object v4, v2

    iget v4, v4, Ljava/time/chrono/ChronoPeriodImpl;->days:I

    if-ne v3, v4, :cond_1

    move-object v3, v0

    iget-object v3, v3, Ljava/time/chrono/ChronoPeriodImpl;->chronology:Ljava/time/chrono/AbstractChronology;

    move-object v4, v2

    iget-object v4, v4, Ljava/time/chrono/ChronoPeriodImpl;->chronology:Ljava/time/chrono/AbstractChronology;

    .line 200
    invoke-virtual {v3, v4}, Ljava/time/chrono/AbstractChronology;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    :goto_1
    move v0, v3

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    .line 202
    .end local v2    # "other":Ljava/time/chrono/ChronoPeriodImpl;
    :cond_2
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0
.end method

.method public get(Ljava/time/temporal/TemporalUnit;)J
    .locals 7

    .prologue
    .line 79
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/ChronoPeriodImpl;
    move-object v1, p1

    .local v1, "unit":Ljava/time/temporal/TemporalUnit;
    move-object v2, v1

    sget-object v3, Ljava/time/temporal/ChronoUnit;->YEARS:Ljava/time/temporal/ChronoUnit;

    if-ne v2, v3, :cond_0

    .line 80
    move-object v2, v0

    iget v2, v2, Ljava/time/chrono/ChronoPeriodImpl;->years:I

    int-to-long v2, v2

    move-wide v0, v2

    .line 86
    .end local v0    # "this":Ljava/time/chrono/ChronoPeriodImpl;
    :goto_0
    return-wide v0

    .line 82
    .restart local v0    # "this":Ljava/time/chrono/ChronoPeriodImpl;
    :cond_0
    move-object v2, v1

    sget-object v3, Ljava/time/temporal/ChronoUnit;->MONTHS:Ljava/time/temporal/ChronoUnit;

    if-ne v2, v3, :cond_1

    .line 83
    move-object v2, v0

    iget v2, v2, Ljava/time/chrono/ChronoPeriodImpl;->months:I

    int-to-long v2, v2

    move-wide v0, v2

    goto :goto_0

    .line 85
    :cond_1
    move-object v2, v1

    sget-object v3, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    if-ne v2, v3, :cond_2

    .line 86
    move-object v2, v0

    iget v2, v2, Ljava/time/chrono/ChronoPeriodImpl;->days:I

    int-to-long v2, v2

    move-wide v0, v2

    goto :goto_0

    .line 88
    :cond_2
    new-instance v2, Ljava/time/temporal/UnsupportedTemporalTypeException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unsupported unit: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/time/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getChronology()Ljava/time/chrono/AbstractChronology;
    .locals 2

    .prologue
    .line 98
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/ChronoPeriodImpl;
    move-object v1, v0

    iget-object v1, v1, Ljava/time/chrono/ChronoPeriodImpl;->chronology:Ljava/time/chrono/AbstractChronology;

    move-object v0, v1

    .end local v0    # "this":Ljava/time/chrono/ChronoPeriodImpl;
    return-object v0
.end method

.method public getUnits()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/time/temporal/TemporalUnit;",
            ">;"
        }
    .end annotation

    .prologue
    .line 93
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/ChronoPeriodImpl;
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/time/temporal/TemporalUnit;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const/4 v3, 0x0

    sget-object v4, Ljava/time/temporal/ChronoUnit;->YEARS:Ljava/time/temporal/ChronoUnit;

    aput-object v4, v2, v3

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const/4 v3, 0x1

    sget-object v4, Ljava/time/temporal/ChronoUnit;->MONTHS:Ljava/time/temporal/ChronoUnit;

    aput-object v4, v2, v3

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const/4 v3, 0x2

    sget-object v4, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    aput-object v4, v2, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljava/time/chrono/ChronoPeriodImpl;
    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 207
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/ChronoPeriodImpl;
    move-object v1, v0

    iget-object v1, v1, Ljava/time/chrono/ChronoPeriodImpl;->chronology:Ljava/time/chrono/AbstractChronology;

    invoke-virtual {v1}, Ljava/time/chrono/AbstractChronology;->hashCode()I

    move-result v1

    move-object v2, v0

    iget v2, v2, Ljava/time/chrono/ChronoPeriodImpl;->years:I

    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v2

    add-int/2addr v1, v2

    move-object v2, v0

    iget v2, v2, Ljava/time/chrono/ChronoPeriodImpl;->months:I

    const/16 v3, 0x8

    invoke-static {v2, v3}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v2

    add-int/2addr v1, v2

    move-object v2, v0

    iget v2, v2, Ljava/time/chrono/ChronoPeriodImpl;->days:I

    add-int/2addr v1, v2

    move v0, v1

    .end local v0    # "this":Ljava/time/chrono/ChronoPeriodImpl;
    return v0
.end method

.method public minus(Ljava/time/temporal/TemporalAmount;)Ljava/time/chrono/ChronoPeriod;
    .locals 11

    .prologue
    .line 119
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/ChronoPeriodImpl;
    move-object v1, p1

    .local v1, "amountToSubtract":Ljava/time/temporal/TemporalAmount;
    move-object v3, v1

    instance-of v3, v3, Ljava/time/chrono/ChronoPeriodImpl;

    if-eqz v3, :cond_0

    .line 120
    move-object v3, v1

    check-cast v3, Ljava/time/chrono/ChronoPeriodImpl;

    move-object v2, v3

    .line 121
    .local v2, "amount":Ljava/time/chrono/ChronoPeriodImpl;
    move-object v3, v2

    invoke-virtual {v3}, Ljava/time/chrono/ChronoPeriodImpl;->getChronology()Ljava/time/chrono/AbstractChronology;

    move-result-object v3

    move-object v4, v0

    invoke-virtual {v4}, Ljava/time/chrono/ChronoPeriodImpl;->getChronology()Ljava/time/chrono/AbstractChronology;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/time/chrono/AbstractChronology;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 122
    new-instance v3, Ljava/time/chrono/ChronoPeriodImpl;

    move-object v10, v3

    move-object v3, v10

    move-object v4, v10

    move-object v5, v0

    iget-object v5, v5, Ljava/time/chrono/ChronoPeriodImpl;->chronology:Ljava/time/chrono/AbstractChronology;

    move-object v6, v0

    iget v6, v6, Ljava/time/chrono/ChronoPeriodImpl;->years:I

    move-object v7, v2

    iget v7, v7, Ljava/time/chrono/ChronoPeriodImpl;->years:I

    .line 124
    invoke-static {v6, v7}, Ljava/time/jdk8/Jdk8Methods;->safeSubtract(II)I

    move-result v6

    move-object v7, v0

    iget v7, v7, Ljava/time/chrono/ChronoPeriodImpl;->months:I

    move-object v8, v2

    iget v8, v8, Ljava/time/chrono/ChronoPeriodImpl;->months:I

    .line 125
    invoke-static {v7, v8}, Ljava/time/jdk8/Jdk8Methods;->safeSubtract(II)I

    move-result v7

    move-object v8, v0

    iget v8, v8, Ljava/time/chrono/ChronoPeriodImpl;->days:I

    move-object v9, v2

    iget v9, v9, Ljava/time/chrono/ChronoPeriodImpl;->days:I

    .line 126
    invoke-static {v8, v9}, Ljava/time/jdk8/Jdk8Methods;->safeSubtract(II)I

    move-result v8

    invoke-direct {v4, v5, v6, v7, v8}, Ljava/time/chrono/ChronoPeriodImpl;-><init>(Ljava/time/chrono/AbstractChronology;III)V

    move-object v0, v3

    .end local v0    # "this":Ljava/time/chrono/ChronoPeriodImpl;
    return-object v0

    .line 129
    .end local v2    # "amount":Ljava/time/chrono/ChronoPeriodImpl;
    .restart local v0    # "this":Ljava/time/chrono/ChronoPeriodImpl;
    :cond_0
    new-instance v3, Ljava/time/DateTimeException;

    move-object v10, v3

    move-object v3, v10

    move-object v4, v10

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to subtract amount: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public multipliedBy(I)Ljava/time/chrono/ChronoPeriod;
    .locals 10

    .prologue
    .line 134
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/ChronoPeriodImpl;
    move v1, p1

    .local v1, "scalar":I
    new-instance v2, Ljava/time/chrono/ChronoPeriodImpl;

    move-object v9, v2

    move-object v2, v9

    move-object v3, v9

    move-object v4, v0

    iget-object v4, v4, Ljava/time/chrono/ChronoPeriodImpl;->chronology:Ljava/time/chrono/AbstractChronology;

    move-object v5, v0

    iget v5, v5, Ljava/time/chrono/ChronoPeriodImpl;->years:I

    move v6, v1

    .line 136
    invoke-static {v5, v6}, Ljava/time/jdk8/Jdk8Methods;->safeMultiply(II)I

    move-result v5

    move-object v6, v0

    iget v6, v6, Ljava/time/chrono/ChronoPeriodImpl;->months:I

    move v7, v1

    .line 137
    invoke-static {v6, v7}, Ljava/time/jdk8/Jdk8Methods;->safeMultiply(II)I

    move-result v6

    move-object v7, v0

    iget v7, v7, Ljava/time/chrono/ChronoPeriodImpl;->days:I

    move v8, v1

    .line 138
    invoke-static {v7, v8}, Ljava/time/jdk8/Jdk8Methods;->safeMultiply(II)I

    move-result v7

    invoke-direct {v3, v4, v5, v6, v7}, Ljava/time/chrono/ChronoPeriodImpl;-><init>(Ljava/time/chrono/AbstractChronology;III)V

    move-object v0, v2

    .end local v0    # "this":Ljava/time/chrono/ChronoPeriodImpl;
    return-object v0
.end method

.method public normalized()Ljava/time/chrono/ChronoPeriod;
    .locals 15

    .prologue
    .line 143
    move-object v1, p0

    .local v1, "this":Ljava/time/chrono/ChronoPeriodImpl;
    move-object v8, v1

    iget-object v8, v8, Ljava/time/chrono/ChronoPeriodImpl;->chronology:Ljava/time/chrono/AbstractChronology;

    sget-object v9, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-virtual {v8, v9}, Ljava/time/chrono/AbstractChronology;->range(Ljava/time/temporal/ChronoField;)Ljava/time/temporal/ValueRange;

    move-result-object v8

    invoke-virtual {v8}, Ljava/time/temporal/ValueRange;->isFixed()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 144
    move-object v8, v1

    iget-object v8, v8, Ljava/time/chrono/ChronoPeriodImpl;->chronology:Ljava/time/chrono/AbstractChronology;

    sget-object v9, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-virtual {v8, v9}, Ljava/time/chrono/AbstractChronology;->range(Ljava/time/temporal/ChronoField;)Ljava/time/temporal/ValueRange;

    move-result-object v8

    invoke-virtual {v8}, Ljava/time/temporal/ValueRange;->getMaximum()J

    move-result-wide v8

    move-object v10, v1

    iget-object v10, v10, Ljava/time/chrono/ChronoPeriodImpl;->chronology:Ljava/time/chrono/AbstractChronology;

    sget-object v11, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-virtual {v10, v11}, Ljava/time/chrono/AbstractChronology;->range(Ljava/time/temporal/ChronoField;)Ljava/time/temporal/ValueRange;

    move-result-object v10

    invoke-virtual {v10}, Ljava/time/temporal/ValueRange;->getMinimum()J

    move-result-wide v10

    sub-long/2addr v8, v10

    const-wide/16 v10, 0x1

    add-long/2addr v8, v10

    move-wide v2, v8

    .line 145
    .local v2, "monthLength":J
    move-object v8, v1

    iget v8, v8, Ljava/time/chrono/ChronoPeriodImpl;->years:I

    int-to-long v8, v8

    move-wide v10, v2

    mul-long/2addr v8, v10

    move-object v10, v1

    iget v10, v10, Ljava/time/chrono/ChronoPeriodImpl;->months:I

    int-to-long v10, v10

    add-long/2addr v8, v10

    move-wide v4, v8

    .line 146
    .local v4, "total":J
    move-wide v8, v4

    move-wide v10, v2

    div-long/2addr v8, v10

    invoke-static {v8, v9}, Ljava/time/jdk8/Jdk8Methods;->safeToInt(J)I

    move-result v8

    move v6, v8

    .line 147
    .local v6, "years":I
    move-wide v8, v4

    move-wide v10, v2

    rem-long/2addr v8, v10

    invoke-static {v8, v9}, Ljava/time/jdk8/Jdk8Methods;->safeToInt(J)I

    move-result v8

    move v7, v8

    .line 148
    .local v7, "months":I
    new-instance v8, Ljava/time/chrono/ChronoPeriodImpl;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    move-object v10, v1

    iget-object v10, v10, Ljava/time/chrono/ChronoPeriodImpl;->chronology:Ljava/time/chrono/AbstractChronology;

    move v11, v6

    move v12, v7

    move-object v13, v1

    iget v13, v13, Ljava/time/chrono/ChronoPeriodImpl;->days:I

    invoke-direct {v9, v10, v11, v12, v13}, Ljava/time/chrono/ChronoPeriodImpl;-><init>(Ljava/time/chrono/AbstractChronology;III)V

    move-object v1, v8

    .line 150
    .end local v1    # "this":Ljava/time/chrono/ChronoPeriodImpl;
    :goto_0
    return-object v1

    .end local v2    # "monthLength":J
    .end local v4    # "total":J
    .end local v6    # "years":I
    .end local v7    # "months":I
    .restart local v1    # "this":Ljava/time/chrono/ChronoPeriodImpl;
    :cond_0
    move-object v8, v1

    move-object v1, v8

    goto :goto_0
.end method

.method public plus(Ljava/time/temporal/TemporalAmount;)Ljava/time/chrono/ChronoPeriod;
    .locals 11

    .prologue
    .line 104
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/ChronoPeriodImpl;
    move-object v1, p1

    .local v1, "amountToAdd":Ljava/time/temporal/TemporalAmount;
    move-object v3, v1

    instance-of v3, v3, Ljava/time/chrono/ChronoPeriodImpl;

    if-eqz v3, :cond_0

    .line 105
    move-object v3, v1

    check-cast v3, Ljava/time/chrono/ChronoPeriodImpl;

    move-object v2, v3

    .line 106
    .local v2, "amount":Ljava/time/chrono/ChronoPeriodImpl;
    move-object v3, v2

    invoke-virtual {v3}, Ljava/time/chrono/ChronoPeriodImpl;->getChronology()Ljava/time/chrono/AbstractChronology;

    move-result-object v3

    move-object v4, v0

    invoke-virtual {v4}, Ljava/time/chrono/ChronoPeriodImpl;->getChronology()Ljava/time/chrono/AbstractChronology;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/time/chrono/AbstractChronology;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 107
    new-instance v3, Ljava/time/chrono/ChronoPeriodImpl;

    move-object v10, v3

    move-object v3, v10

    move-object v4, v10

    move-object v5, v0

    iget-object v5, v5, Ljava/time/chrono/ChronoPeriodImpl;->chronology:Ljava/time/chrono/AbstractChronology;

    move-object v6, v0

    iget v6, v6, Ljava/time/chrono/ChronoPeriodImpl;->years:I

    move-object v7, v2

    iget v7, v7, Ljava/time/chrono/ChronoPeriodImpl;->years:I

    .line 109
    invoke-static {v6, v7}, Ljava/time/jdk8/Jdk8Methods;->safeAdd(II)I

    move-result v6

    move-object v7, v0

    iget v7, v7, Ljava/time/chrono/ChronoPeriodImpl;->months:I

    move-object v8, v2

    iget v8, v8, Ljava/time/chrono/ChronoPeriodImpl;->months:I

    .line 110
    invoke-static {v7, v8}, Ljava/time/jdk8/Jdk8Methods;->safeAdd(II)I

    move-result v7

    move-object v8, v0

    iget v8, v8, Ljava/time/chrono/ChronoPeriodImpl;->days:I

    move-object v9, v2

    iget v9, v9, Ljava/time/chrono/ChronoPeriodImpl;->days:I

    .line 111
    invoke-static {v8, v9}, Ljava/time/jdk8/Jdk8Methods;->safeAdd(II)I

    move-result v8

    invoke-direct {v4, v5, v6, v7, v8}, Ljava/time/chrono/ChronoPeriodImpl;-><init>(Ljava/time/chrono/AbstractChronology;III)V

    move-object v0, v3

    .end local v0    # "this":Ljava/time/chrono/ChronoPeriodImpl;
    return-object v0

    .line 114
    .end local v2    # "amount":Ljava/time/chrono/ChronoPeriodImpl;
    .restart local v0    # "this":Ljava/time/chrono/ChronoPeriodImpl;
    :cond_0
    new-instance v3, Ljava/time/DateTimeException;

    move-object v10, v3

    move-object v3, v10

    move-object v4, v10

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to add amount: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public subtractFrom(Ljava/time/temporal/Temporal;)Ljava/time/temporal/Temporal;
    .locals 8

    .prologue
    .line 174
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/ChronoPeriodImpl;
    move-object v1, p1

    .local v1, "temporal":Ljava/time/temporal/Temporal;
    move-object v3, v1

    const-string v4, "temporal"

    invoke-static {v3, v4}, Ljava/time/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 175
    move-object v3, v1

    invoke-static {}, Ljava/time/temporal/TemporalQueries;->chronology()Ljava/time/temporal/TemporalQuery;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/time/temporal/Temporal;->query(Ljava/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/time/chrono/AbstractChronology;

    move-object v2, v3

    .line 176
    .local v2, "temporalChrono":Ljava/time/chrono/AbstractChronology;
    move-object v3, v2

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Ljava/time/chrono/ChronoPeriodImpl;->chronology:Ljava/time/chrono/AbstractChronology;

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljava/time/chrono/AbstractChronology;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 177
    new-instance v3, Ljava/time/DateTimeException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid chronology, required: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v0

    iget-object v6, v6, Ljava/time/chrono/ChronoPeriodImpl;->chronology:Ljava/time/chrono/AbstractChronology;

    invoke-virtual {v6}, Ljava/time/chrono/AbstractChronology;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", but was: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v2

    invoke-virtual {v6}, Ljava/time/chrono/AbstractChronology;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 179
    :cond_0
    move-object v3, v0

    iget v3, v3, Ljava/time/chrono/ChronoPeriodImpl;->years:I

    if-eqz v3, :cond_1

    .line 180
    move-object v3, v1

    move-object v4, v0

    iget v4, v4, Ljava/time/chrono/ChronoPeriodImpl;->years:I

    int-to-long v4, v4

    sget-object v6, Ljava/time/temporal/ChronoUnit;->YEARS:Ljava/time/temporal/ChronoUnit;

    invoke-interface {v3, v4, v5, v6}, Ljava/time/temporal/Temporal;->minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/temporal/Temporal;

    move-result-object v3

    move-object v1, v3

    .line 182
    :cond_1
    move-object v3, v0

    iget v3, v3, Ljava/time/chrono/ChronoPeriodImpl;->months:I

    if-eqz v3, :cond_2

    .line 183
    move-object v3, v1

    move-object v4, v0

    iget v4, v4, Ljava/time/chrono/ChronoPeriodImpl;->months:I

    int-to-long v4, v4

    sget-object v6, Ljava/time/temporal/ChronoUnit;->MONTHS:Ljava/time/temporal/ChronoUnit;

    invoke-interface {v3, v4, v5, v6}, Ljava/time/temporal/Temporal;->minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/temporal/Temporal;

    move-result-object v3

    move-object v1, v3

    .line 185
    :cond_2
    move-object v3, v0

    iget v3, v3, Ljava/time/chrono/ChronoPeriodImpl;->days:I

    if-eqz v3, :cond_3

    .line 186
    move-object v3, v1

    move-object v4, v0

    iget v4, v4, Ljava/time/chrono/ChronoPeriodImpl;->days:I

    int-to-long v4, v4

    sget-object v6, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    invoke-interface {v3, v4, v5, v6}, Ljava/time/temporal/Temporal;->minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/temporal/Temporal;

    move-result-object v3

    move-object v1, v3

    .line 188
    :cond_3
    move-object v3, v1

    move-object v0, v3

    .end local v0    # "this":Ljava/time/chrono/ChronoPeriodImpl;
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 212
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/ChronoPeriodImpl;
    move-object v2, v0

    invoke-virtual {v2}, Ljava/time/chrono/ChronoPeriodImpl;->isZero()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 213
    new-instance v2, Ljava/lang/StringBuilder;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object v3, v0

    iget-object v3, v3, Ljava/time/chrono/ChronoPeriodImpl;->chronology:Ljava/time/chrono/AbstractChronology;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " P0D"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .line 226
    .end local v0    # "this":Ljava/time/chrono/ChronoPeriodImpl;
    .local v1, "buf":Ljava/lang/StringBuilder;
    :goto_0
    return-object v0

    .line 215
    .end local v1    # "buf":Ljava/lang/StringBuilder;
    .restart local v0    # "this":Ljava/time/chrono/ChronoPeriodImpl;
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object v1, v2

    .line 216
    .restart local v1    # "buf":Ljava/lang/StringBuilder;
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Ljava/time/chrono/ChronoPeriodImpl;->chronology:Ljava/time/chrono/AbstractChronology;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x50

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 217
    move-object v2, v0

    iget v2, v2, Ljava/time/chrono/ChronoPeriodImpl;->years:I

    if-eqz v2, :cond_1

    .line 218
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Ljava/time/chrono/ChronoPeriodImpl;->years:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x59

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 220
    :cond_1
    move-object v2, v0

    iget v2, v2, Ljava/time/chrono/ChronoPeriodImpl;->months:I

    if-eqz v2, :cond_2

    .line 221
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Ljava/time/chrono/ChronoPeriodImpl;->months:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x4d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 223
    :cond_2
    move-object v2, v0

    iget v2, v2, Ljava/time/chrono/ChronoPeriodImpl;->days:I

    if-eqz v2, :cond_3

    .line 224
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Ljava/time/chrono/ChronoPeriodImpl;->days:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x44

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 226
    :cond_3
    move-object v2, v1

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    goto :goto_0
.end method
