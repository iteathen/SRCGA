.class abstract Ljava/time/chrono/ChronoDateImpl;
.super Ljava/time/chrono/AbstractChronoLocalDate;
.source "ChronoDateImpl.java"

# interfaces
.implements Ljava/time/temporal/Temporal;
.implements Ljava/time/temporal/TemporalAdjuster;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Ljava/time/chrono/AbstractChronoLocalDate;",
        ">",
        "Ljava/time/chrono/AbstractChronoLocalDate;",
        "Ljava/time/temporal/Temporal;",
        "Ljava/time/temporal/TemporalAdjuster;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x572fb054bf61a0b8L


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 123
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/ChronoDateImpl;, "Ljava/time/chrono/ChronoDateImpl<TD;>;"
    move-object v1, v0

    invoke-direct {v1}, Ljava/time/chrono/AbstractChronoLocalDate;-><init>()V

    .line 124
    return-void
.end method


# virtual methods
.method public atTime(Ljava/time/LocalTime;)Ljava/time/chrono/ChronoLocalDateTime;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/time/LocalTime;",
            ")",
            "Ljava/time/chrono/ChronoLocalDateTime",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 292
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/ChronoDateImpl;, "Ljava/time/chrono/ChronoDateImpl<TD;>;"
    move-object v1, p1

    .local v1, "localTime":Ljava/time/LocalTime;
    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Ljava/time/chrono/ChronoLocalDateTimeImpl;->of(Ljava/time/chrono/AbstractChronoLocalDate;Ljava/time/LocalTime;)Ljava/time/chrono/ChronoLocalDateTimeImpl;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljava/time/chrono/ChronoDateImpl;, "Ljava/time/chrono/ChronoDateImpl<TD;>;"
    return-object v0
.end method

.method minusDays(J)Ljava/time/chrono/ChronoDateImpl;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/time/chrono/ChronoDateImpl",
            "<TD;>;"
        }
    .end annotation

    .prologue
    .line 287
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/ChronoDateImpl;, "Ljava/time/chrono/ChronoDateImpl<TD;>;"
    move-wide v1, p1

    .local v1, "daysToSubtract":J
    move-wide v3, v1

    const-wide/high16 v5, -0x8000000000000000L

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    move-object v3, v0

    const-wide v4, 0x7fffffffffffffffL

    invoke-virtual {v3, v4, v5}, Ljava/time/chrono/ChronoDateImpl;->plusDays(J)Ljava/time/chrono/ChronoDateImpl;

    move-result-object v3

    const-wide/16 v4, 0x1

    invoke-virtual {v3, v4, v5}, Ljava/time/chrono/ChronoDateImpl;->plusDays(J)Ljava/time/chrono/ChronoDateImpl;

    move-result-object v3

    :goto_0
    move-object v0, v3

    .end local v0    # "this":Ljava/time/chrono/ChronoDateImpl;, "Ljava/time/chrono/ChronoDateImpl<TD;>;"
    return-object v0

    .restart local v0    # "this":Ljava/time/chrono/ChronoDateImpl;, "Ljava/time/chrono/ChronoDateImpl<TD;>;"
    :cond_0
    move-object v3, v0

    move-wide v4, v1

    neg-long v4, v4

    invoke-virtual {v3, v4, v5}, Ljava/time/chrono/ChronoDateImpl;->plusDays(J)Ljava/time/chrono/ChronoDateImpl;

    move-result-object v3

    goto :goto_0
.end method

.method minusMonths(J)Ljava/time/chrono/ChronoDateImpl;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/time/chrono/ChronoDateImpl",
            "<TD;>;"
        }
    .end annotation

    .prologue
    .line 251
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/ChronoDateImpl;, "Ljava/time/chrono/ChronoDateImpl<TD;>;"
    move-wide v1, p1

    .local v1, "monthsToSubtract":J
    move-wide v3, v1

    const-wide/high16 v5, -0x8000000000000000L

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    move-object v3, v0

    const-wide v4, 0x7fffffffffffffffL

    invoke-virtual {v3, v4, v5}, Ljava/time/chrono/ChronoDateImpl;->plusMonths(J)Ljava/time/chrono/ChronoDateImpl;

    move-result-object v3

    const-wide/16 v4, 0x1

    invoke-virtual {v3, v4, v5}, Ljava/time/chrono/ChronoDateImpl;->plusMonths(J)Ljava/time/chrono/ChronoDateImpl;

    move-result-object v3

    :goto_0
    move-object v0, v3

    .end local v0    # "this":Ljava/time/chrono/ChronoDateImpl;, "Ljava/time/chrono/ChronoDateImpl<TD;>;"
    return-object v0

    .restart local v0    # "this":Ljava/time/chrono/ChronoDateImpl;, "Ljava/time/chrono/ChronoDateImpl<TD;>;"
    :cond_0
    move-object v3, v0

    move-wide v4, v1

    neg-long v4, v4

    invoke-virtual {v3, v4, v5}, Ljava/time/chrono/ChronoDateImpl;->plusMonths(J)Ljava/time/chrono/ChronoDateImpl;

    move-result-object v3

    goto :goto_0
.end method

.method minusWeeks(J)Ljava/time/chrono/ChronoDateImpl;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/time/chrono/ChronoDateImpl",
            "<TD;>;"
        }
    .end annotation

    .prologue
    .line 270
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/ChronoDateImpl;, "Ljava/time/chrono/ChronoDateImpl<TD;>;"
    move-wide v1, p1

    .local v1, "weeksToSubtract":J
    move-wide v3, v1

    const-wide/high16 v5, -0x8000000000000000L

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    move-object v3, v0

    const-wide v4, 0x7fffffffffffffffL

    invoke-virtual {v3, v4, v5}, Ljava/time/chrono/ChronoDateImpl;->plusWeeks(J)Ljava/time/chrono/ChronoDateImpl;

    move-result-object v3

    const-wide/16 v4, 0x1

    invoke-virtual {v3, v4, v5}, Ljava/time/chrono/ChronoDateImpl;->plusWeeks(J)Ljava/time/chrono/ChronoDateImpl;

    move-result-object v3

    :goto_0
    move-object v0, v3

    .end local v0    # "this":Ljava/time/chrono/ChronoDateImpl;, "Ljava/time/chrono/ChronoDateImpl<TD;>;"
    return-object v0

    .restart local v0    # "this":Ljava/time/chrono/ChronoDateImpl;, "Ljava/time/chrono/ChronoDateImpl<TD;>;"
    :cond_0
    move-object v3, v0

    move-wide v4, v1

    neg-long v4, v4

    invoke-virtual {v3, v4, v5}, Ljava/time/chrono/ChronoDateImpl;->plusWeeks(J)Ljava/time/chrono/ChronoDateImpl;

    move-result-object v3

    goto :goto_0
.end method

.method minusYears(J)Ljava/time/chrono/ChronoDateImpl;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/time/chrono/ChronoDateImpl",
            "<TD;>;"
        }
    .end annotation

    .prologue
    .line 231
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/ChronoDateImpl;, "Ljava/time/chrono/ChronoDateImpl<TD;>;"
    move-wide v1, p1

    .local v1, "yearsToSubtract":J
    move-wide v3, v1

    const-wide/high16 v5, -0x8000000000000000L

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    move-object v3, v0

    const-wide v4, 0x7fffffffffffffffL

    invoke-virtual {v3, v4, v5}, Ljava/time/chrono/ChronoDateImpl;->plusYears(J)Ljava/time/chrono/ChronoDateImpl;

    move-result-object v3

    const-wide/16 v4, 0x1

    invoke-virtual {v3, v4, v5}, Ljava/time/chrono/ChronoDateImpl;->plusYears(J)Ljava/time/chrono/ChronoDateImpl;

    move-result-object v3

    :goto_0
    move-object v0, v3

    .end local v0    # "this":Ljava/time/chrono/ChronoDateImpl;, "Ljava/time/chrono/ChronoDateImpl<TD;>;"
    return-object v0

    .restart local v0    # "this":Ljava/time/chrono/ChronoDateImpl;, "Ljava/time/chrono/ChronoDateImpl<TD;>;"
    :cond_0
    move-object v3, v0

    move-wide v4, v1

    neg-long v4, v4

    invoke-virtual {v3, v4, v5}, Ljava/time/chrono/ChronoDateImpl;->plusYears(J)Ljava/time/chrono/ChronoDateImpl;

    move-result-object v3

    goto :goto_0
.end method

.method public bridge synthetic plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/AbstractChronoLocalDate;
    .locals 9

    .prologue
    .line 111
    move-object v1, p0

    .local v1, "this":Ljava/time/chrono/ChronoDateImpl;, "Ljava/time/chrono/ChronoDateImpl<TD;>;"
    move-wide v2, p1

    move-object v4, p3

    move-object v5, v1

    move-wide v6, v2

    move-object v8, v4

    invoke-virtual {v5, v6, v7, v8}, Ljava/time/chrono/ChronoDateImpl;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/ChronoDateImpl;

    move-result-object v5

    move-object v1, v5

    .end local v1    # "this":Ljava/time/chrono/ChronoDateImpl;, "Ljava/time/chrono/ChronoDateImpl<TD;>;"
    return-object v1
.end method

.method public plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/ChronoDateImpl;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/time/temporal/TemporalUnit;",
            ")",
            "Ljava/time/chrono/ChronoDateImpl",
            "<TD;>;"
        }
    .end annotation

    .prologue
    .line 130
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/ChronoDateImpl;, "Ljava/time/chrono/ChronoDateImpl<TD;>;"
    move-wide v1, p1

    .local v1, "amountToAdd":J
    move-object v3, p3

    .local v3, "unit":Ljava/time/temporal/TemporalUnit;
    move-object v5, v3

    instance-of v5, v5, Ljava/time/temporal/ChronoUnit;

    if-eqz v5, :cond_0

    .line 131
    move-object v5, v3

    check-cast v5, Ljava/time/temporal/ChronoUnit;

    move-object v4, v5

    .line 132
    .local v4, "f":Ljava/time/temporal/ChronoUnit;
    sget-object v5, Ljava/time/chrono/ChronoDateImpl$1;->$SwitchMap$java$time$temporal$ChronoUnit:[I

    move-object v6, v4

    invoke-virtual {v6}, Ljava/time/temporal/ChronoUnit;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 143
    new-instance v5, Ljava/time/DateTimeException;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object v8, v3

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " not valid for chronology "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v0

    invoke-virtual {v8}, Ljava/time/chrono/ChronoDateImpl;->getChronology()Ljava/time/chrono/AbstractChronology;

    move-result-object v8

    invoke-virtual {v8}, Ljava/time/chrono/AbstractChronology;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 133
    :pswitch_0
    move-object v5, v0

    move-wide v6, v1

    invoke-virtual {v5, v6, v7}, Ljava/time/chrono/ChronoDateImpl;->plusDays(J)Ljava/time/chrono/ChronoDateImpl;

    move-result-object v5

    move-object v0, v5

    .line 145
    .end local v0    # "this":Ljava/time/chrono/ChronoDateImpl;, "Ljava/time/chrono/ChronoDateImpl<TD;>;"
    .end local v4    # "f":Ljava/time/temporal/ChronoUnit;
    :goto_0
    return-object v0

    .line 134
    .restart local v0    # "this":Ljava/time/chrono/ChronoDateImpl;, "Ljava/time/chrono/ChronoDateImpl<TD;>;"
    .restart local v4    # "f":Ljava/time/temporal/ChronoUnit;
    :pswitch_1
    move-object v5, v0

    move-wide v6, v1

    const/4 v8, 0x7

    invoke-static {v6, v7, v8}, Ljava/time/jdk8/Jdk8Methods;->safeMultiply(JI)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/time/chrono/ChronoDateImpl;->plusDays(J)Ljava/time/chrono/ChronoDateImpl;

    move-result-object v5

    move-object v0, v5

    goto :goto_0

    .line 135
    :pswitch_2
    move-object v5, v0

    move-wide v6, v1

    invoke-virtual {v5, v6, v7}, Ljava/time/chrono/ChronoDateImpl;->plusMonths(J)Ljava/time/chrono/ChronoDateImpl;

    move-result-object v5

    move-object v0, v5

    goto :goto_0

    .line 136
    :pswitch_3
    move-object v5, v0

    move-wide v6, v1

    invoke-virtual {v5, v6, v7}, Ljava/time/chrono/ChronoDateImpl;->plusYears(J)Ljava/time/chrono/ChronoDateImpl;

    move-result-object v5

    move-object v0, v5

    goto :goto_0

    .line 137
    :pswitch_4
    move-object v5, v0

    move-wide v6, v1

    const/16 v8, 0xa

    invoke-static {v6, v7, v8}, Ljava/time/jdk8/Jdk8Methods;->safeMultiply(JI)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/time/chrono/ChronoDateImpl;->plusYears(J)Ljava/time/chrono/ChronoDateImpl;

    move-result-object v5

    move-object v0, v5

    goto :goto_0

    .line 138
    :pswitch_5
    move-object v5, v0

    move-wide v6, v1

    const/16 v8, 0x64

    invoke-static {v6, v7, v8}, Ljava/time/jdk8/Jdk8Methods;->safeMultiply(JI)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/time/chrono/ChronoDateImpl;->plusYears(J)Ljava/time/chrono/ChronoDateImpl;

    move-result-object v5

    move-object v0, v5

    goto :goto_0

    .line 139
    :pswitch_6
    move-object v5, v0

    move-wide v6, v1

    const/16 v8, 0x3e8

    invoke-static {v6, v7, v8}, Ljava/time/jdk8/Jdk8Methods;->safeMultiply(JI)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/time/chrono/ChronoDateImpl;->plusYears(J)Ljava/time/chrono/ChronoDateImpl;

    move-result-object v5

    move-object v0, v5

    goto :goto_0

    .line 145
    .end local v4    # "f":Ljava/time/temporal/ChronoUnit;
    :cond_0
    move-object v5, v0

    invoke-virtual {v5}, Ljava/time/chrono/ChronoDateImpl;->getChronology()Ljava/time/chrono/AbstractChronology;

    move-result-object v5

    move-object v6, v3

    move-object v7, v0

    move-wide v8, v1

    invoke-interface {v6, v7, v8, v9}, Ljava/time/temporal/TemporalUnit;->addTo(Ljava/time/temporal/Temporal;J)Ljava/time/temporal/Temporal;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/time/chrono/AbstractChronology;->ensureChronoLocalDate(Ljava/time/temporal/Temporal;)Ljava/time/chrono/AbstractChronoLocalDate;

    move-result-object v5

    check-cast v5, Ljava/time/chrono/ChronoDateImpl;

    move-object v0, v5

    goto :goto_0

    .line 132
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public bridge synthetic plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/temporal/Temporal;
    .locals 9

    .prologue
    .line 111
    move-object v1, p0

    .local v1, "this":Ljava/time/chrono/ChronoDateImpl;, "Ljava/time/chrono/ChronoDateImpl<TD;>;"
    move-wide v2, p1

    move-object v4, p3

    move-object v5, v1

    move-wide v6, v2

    move-object v8, v4

    invoke-virtual {v5, v6, v7, v8}, Ljava/time/chrono/ChronoDateImpl;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/ChronoDateImpl;

    move-result-object v5

    move-object v1, v5

    .end local v1    # "this":Ljava/time/chrono/ChronoDateImpl;, "Ljava/time/chrono/ChronoDateImpl<TD;>;"
    return-object v1
.end method

.method abstract plusDays(J)Ljava/time/chrono/ChronoDateImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/time/chrono/ChronoDateImpl",
            "<TD;>;"
        }
    .end annotation
.end method

.method abstract plusMonths(J)Ljava/time/chrono/ChronoDateImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/time/chrono/ChronoDateImpl",
            "<TD;>;"
        }
    .end annotation
.end method

.method plusWeeks(J)Ljava/time/chrono/ChronoDateImpl;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/time/chrono/ChronoDateImpl",
            "<TD;>;"
        }
    .end annotation

    .prologue
    .line 197
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/ChronoDateImpl;, "Ljava/time/chrono/ChronoDateImpl<TD;>;"
    move-wide v1, p1

    .local v1, "weeksToAdd":J
    move-object v3, v0

    move-wide v4, v1

    const/4 v6, 0x7

    invoke-static {v4, v5, v6}, Ljava/time/jdk8/Jdk8Methods;->safeMultiply(JI)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/time/chrono/ChronoDateImpl;->plusDays(J)Ljava/time/chrono/ChronoDateImpl;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Ljava/time/chrono/ChronoDateImpl;, "Ljava/time/chrono/ChronoDateImpl<TD;>;"
    return-object v0
.end method

.method abstract plusYears(J)Ljava/time/chrono/ChronoDateImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/time/chrono/ChronoDateImpl",
            "<TD;>;"
        }
    .end annotation
.end method

.method public until(Ljava/time/temporal/Temporal;Ljava/time/temporal/TemporalUnit;)J
    .locals 7

    .prologue
    .line 298
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/ChronoDateImpl;, "Ljava/time/chrono/ChronoDateImpl<TD;>;"
    move-object v1, p1

    .local v1, "endExclusive":Ljava/time/temporal/Temporal;
    move-object v2, p2

    .local v2, "unit":Ljava/time/temporal/TemporalUnit;
    move-object v4, v0

    invoke-virtual {v4}, Ljava/time/chrono/ChronoDateImpl;->getChronology()Ljava/time/chrono/AbstractChronology;

    move-result-object v4

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/time/chrono/AbstractChronology;->date(Ljava/time/temporal/TemporalAccessor;)Ljava/time/chrono/AbstractChronoLocalDate;

    move-result-object v4

    move-object v3, v4

    .line 299
    .local v3, "end":Ljava/time/chrono/ChronoLocalDate;
    move-object v4, v2

    instance-of v4, v4, Ljava/time/temporal/ChronoUnit;

    if-eqz v4, :cond_0

    .line 300
    move-object v4, v0

    invoke-static {v4}, Ljava/time/LocalDate;->from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/LocalDate;

    move-result-object v4

    move-object v5, v3

    move-object v6, v2

    invoke-virtual {v4, v5, v6}, Ljava/time/LocalDate;->until(Ljava/time/temporal/Temporal;Ljava/time/temporal/TemporalUnit;)J

    move-result-wide v4

    move-wide v0, v4

    .line 302
    .end local v0    # "this":Ljava/time/chrono/ChronoDateImpl;, "Ljava/time/chrono/ChronoDateImpl<TD;>;"
    :goto_0
    return-wide v0

    .restart local v0    # "this":Ljava/time/chrono/ChronoDateImpl;, "Ljava/time/chrono/ChronoDateImpl<TD;>;"
    :cond_0
    move-object v4, v2

    move-object v5, v0

    move-object v6, v3

    invoke-interface {v4, v5, v6}, Ljava/time/temporal/TemporalUnit;->between(Ljava/time/temporal/Temporal;Ljava/time/temporal/Temporal;)J

    move-result-wide v4

    move-wide v0, v4

    goto :goto_0
.end method

.method public until(Ljava/time/chrono/AbstractChronoLocalDate;)Ljava/time/chrono/ChronoPeriod;
    .locals 6

    .prologue
    .line 307
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/ChronoDateImpl;, "Ljava/time/chrono/ChronoDateImpl<TD;>;"
    move-object v1, p1

    .local v1, "endDate":Ljava/time/chrono/AbstractChronoLocalDate;
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "Not supported in ThreeTen backport"

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
