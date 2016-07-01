.class public abstract Ljava/time/chrono/ChronoPeriod;
.super Ljava/lang/Object;
.source "ChronoPeriod.java"

# interfaces
.implements Ljava/time/temporal/TemporalAmount;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 66
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/ChronoPeriod;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static between(Ljava/time/chrono/AbstractChronoLocalDate;Ljava/time/chrono/AbstractChronoLocalDate;)Ljava/time/chrono/ChronoPeriod;
    .locals 4

    .prologue
    .line 89
    move-object v0, p0

    .local v0, "startDateInclusive":Ljava/time/chrono/AbstractChronoLocalDate;
    move-object v1, p1

    .local v1, "endDateExclusive":Ljava/time/chrono/AbstractChronoLocalDate;
    move-object v2, v0

    const-string v3, "startDateInclusive"

    invoke-static {v2, v3}, Ljava/time/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 90
    move-object v2, v1

    const-string v3, "endDateExclusive"

    invoke-static {v2, v3}, Ljava/time/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 91
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/time/chrono/AbstractChronoLocalDate;->until(Ljava/time/chrono/AbstractChronoLocalDate;)Ljava/time/chrono/ChronoPeriod;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "startDateInclusive":Ljava/time/chrono/AbstractChronoLocalDate;
    return-object v0
.end method


# virtual methods
.method public abstract addTo(Ljava/time/temporal/Temporal;)Ljava/time/temporal/Temporal;
.end method

.method public abstract equals(Ljava/lang/Object;)Z
.end method

.method public abstract get(Ljava/time/temporal/TemporalUnit;)J
.end method

.method public abstract getChronology()Ljava/time/chrono/AbstractChronology;
.end method

.method public abstract getUnits()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/time/temporal/TemporalUnit;",
            ">;"
        }
    .end annotation
.end method

.method public abstract hashCode()I
.end method

.method public isNegative()Z
    .locals 8

    .prologue
    .line 159
    move-object v1, p0

    .local v1, "this":Ljava/time/chrono/ChronoPeriod;
    move-object v4, v1

    invoke-virtual {v4}, Ljava/time/chrono/ChronoPeriod;->getUnits()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v2, v4

    :goto_0
    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/time/temporal/TemporalUnit;

    move-object v3, v4

    .line 160
    .local v3, "unit":Ljava/time/temporal/TemporalUnit;
    move-object v4, v1

    move-object v5, v3

    invoke-virtual {v4, v5}, Ljava/time/chrono/ChronoPeriod;->get(Ljava/time/temporal/TemporalUnit;)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-gez v4, :cond_0

    .line 161
    const/4 v4, 0x1

    move v1, v4

    .line 164
    .end local v1    # "this":Ljava/time/chrono/ChronoPeriod;
    :goto_1
    return v1

    .line 163
    .restart local v1    # "this":Ljava/time/chrono/ChronoPeriod;
    :cond_0
    goto :goto_0

    .line 164
    .end local v3    # "unit":Ljava/time/temporal/TemporalUnit;
    :cond_1
    const/4 v4, 0x0

    move v1, v4

    goto :goto_1
.end method

.method public isZero()Z
    .locals 8

    .prologue
    .line 145
    move-object v1, p0

    .local v1, "this":Ljava/time/chrono/ChronoPeriod;
    move-object v4, v1

    invoke-virtual {v4}, Ljava/time/chrono/ChronoPeriod;->getUnits()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v2, v4

    :goto_0
    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/time/temporal/TemporalUnit;

    move-object v3, v4

    .line 146
    .local v3, "unit":Ljava/time/temporal/TemporalUnit;
    move-object v4, v1

    move-object v5, v3

    invoke-virtual {v4, v5}, Ljava/time/chrono/ChronoPeriod;->get(Ljava/time/temporal/TemporalUnit;)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_0

    .line 147
    const/4 v4, 0x0

    move v1, v4

    .line 150
    .end local v1    # "this":Ljava/time/chrono/ChronoPeriod;
    :goto_1
    return v1

    .line 149
    .restart local v1    # "this":Ljava/time/chrono/ChronoPeriod;
    :cond_0
    goto :goto_0

    .line 150
    .end local v3    # "unit":Ljava/time/temporal/TemporalUnit;
    :cond_1
    const/4 v4, 0x1

    move v1, v4

    goto :goto_1
.end method

.method public abstract minus(Ljava/time/temporal/TemporalAmount;)Ljava/time/chrono/ChronoPeriod;
.end method

.method public abstract multipliedBy(I)Ljava/time/chrono/ChronoPeriod;
.end method

.method public negated()Ljava/time/chrono/ChronoPeriod;
    .locals 3

    .prologue
    .line 228
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/ChronoPeriod;
    move-object v1, v0

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Ljava/time/chrono/ChronoPeriod;->multipliedBy(I)Ljava/time/chrono/ChronoPeriod;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljava/time/chrono/ChronoPeriod;
    return-object v0
.end method

.method public abstract normalized()Ljava/time/chrono/ChronoPeriod;
.end method

.method public abstract plus(Ljava/time/temporal/TemporalAmount;)Ljava/time/chrono/ChronoPeriod;
.end method

.method public abstract subtractFrom(Ljava/time/temporal/Temporal;)Ljava/time/temporal/Temporal;
.end method

.method public abstract toString()Ljava/lang/String;
.end method
