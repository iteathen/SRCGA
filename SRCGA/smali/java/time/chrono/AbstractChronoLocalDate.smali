.class public abstract Ljava/time/chrono/AbstractChronoLocalDate;
.super Ljava/time/jdk8/DefaultInterfaceTemporal;
.source "AbstractChronoLocalDate.java"

# interfaces
.implements Ljava/time/temporal/Temporal;
.implements Ljava/time/temporal/TemporalAdjuster;
.implements Ljava/lang/Comparable;
.implements Ljava/time/chrono/ChronoLocalDate;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/time/jdk8/DefaultInterfaceTemporal;",
        "Ljava/time/temporal/Temporal;",
        "Ljava/time/temporal/TemporalAdjuster;",
        "Ljava/lang/Comparable",
        "<",
        "Ljava/time/chrono/ChronoLocalDate;",
        ">;",
        "Ljava/time/chrono/ChronoLocalDate;"
    }
.end annotation


# static fields
.field private static final DATE_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/time/chrono/AbstractChronoLocalDate;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 243
    new-instance v0, Ljava/time/chrono/AbstractChronoLocalDate$1;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljava/time/chrono/AbstractChronoLocalDate$1;-><init>()V

    sput-object v0, Ljava/time/chrono/AbstractChronoLocalDate;->DATE_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 221
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/AbstractChronoLocalDate;
    move-object v1, v0

    invoke-direct {v1}, Ljava/time/jdk8/DefaultInterfaceTemporal;-><init>()V

    return-void
.end method

.method public static from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/chrono/AbstractChronoLocalDate;
    .locals 7

    .prologue
    .line 274
    move-object v0, p0

    .local v0, "temporal":Ljava/time/temporal/TemporalAccessor;
    move-object v2, v0

    const-string v3, "temporal"

    invoke-static {v2, v3}, Ljava/time/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 275
    move-object v2, v0

    instance-of v2, v2, Ljava/time/chrono/AbstractChronoLocalDate;

    if-eqz v2, :cond_0

    .line 276
    move-object v2, v0

    check-cast v2, Ljava/time/chrono/AbstractChronoLocalDate;

    move-object v0, v2

    .line 282
    .end local v0    # "temporal":Ljava/time/temporal/TemporalAccessor;
    .local v1, "chrono":Ljava/time/chrono/AbstractChronology;
    :goto_0
    return-object v0

    .line 278
    .end local v1    # "chrono":Ljava/time/chrono/AbstractChronology;
    .restart local v0    # "temporal":Ljava/time/temporal/TemporalAccessor;
    :cond_0
    move-object v2, v0

    invoke-static {}, Ljava/time/temporal/TemporalQueries;->chronology()Ljava/time/temporal/TemporalQuery;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/time/temporal/TemporalAccessor;->query(Ljava/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/time/chrono/AbstractChronology;

    move-object v1, v2

    .line 279
    .restart local v1    # "chrono":Ljava/time/chrono/AbstractChronology;
    move-object v2, v1

    if-nez v2, :cond_1

    .line 280
    new-instance v2, Ljava/time/DateTimeException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No Chronology found to create ChronoLocalDate: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v0

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 282
    :cond_1
    move-object v2, v1

    move-object v3, v0

    invoke-virtual {v2, v3}, Ljava/time/chrono/AbstractChronology;->date(Ljava/time/temporal/TemporalAccessor;)Ljava/time/chrono/AbstractChronoLocalDate;

    move-result-object v2

    move-object v0, v2

    goto :goto_0
.end method

.method public static timeLineOrder()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<",
            "Ljava/time/chrono/AbstractChronoLocalDate;",
            ">;"
        }
    .end annotation

    .prologue
    .line 241
    sget-object v0, Ljava/time/chrono/AbstractChronoLocalDate;->DATE_COMPARATOR:Ljava/util/Comparator;

    return-object v0
.end method


# virtual methods
.method public adjustInto(Ljava/time/temporal/Temporal;)Ljava/time/temporal/Temporal;
    .locals 6

    .prologue
    .line 414
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/AbstractChronoLocalDate;
    move-object v1, p1

    .local v1, "temporal":Ljava/time/temporal/Temporal;
    move-object v2, v1

    sget-object v3, Ljava/time/temporal/ChronoField;->EPOCH_DAY:Ljava/time/temporal/ChronoField;

    move-object v4, v0

    invoke-virtual {v4}, Ljava/time/chrono/AbstractChronoLocalDate;->toEpochDay()J

    move-result-wide v4

    invoke-interface {v2, v3, v4, v5}, Ljava/time/temporal/Temporal;->with(Ljava/time/temporal/TemporalField;J)Ljava/time/temporal/Temporal;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljava/time/chrono/AbstractChronoLocalDate;
    return-object v0
.end method

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
    .line 471
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/AbstractChronoLocalDate;
    move-object v1, p1

    .local v1, "localTime":Ljava/time/LocalTime;
    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Ljava/time/chrono/ChronoLocalDateTimeImpl;->of(Ljava/time/chrono/AbstractChronoLocalDate;Ljava/time/LocalTime;)Ljava/time/chrono/ChronoLocalDateTimeImpl;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljava/time/chrono/AbstractChronoLocalDate;
    return-object v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 4

    .prologue
    .line 221
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/AbstractChronoLocalDate;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    check-cast v3, Ljava/time/chrono/ChronoLocalDate;

    invoke-virtual {v2, v3}, Ljava/time/chrono/AbstractChronoLocalDate;->compareTo(Ljava/time/chrono/ChronoLocalDate;)I

    move-result v2

    move v0, v2

    .end local v0    # "this":Ljava/time/chrono/AbstractChronoLocalDate;
    return v0
.end method

.method public compareTo(Ljava/time/chrono/ChronoLocalDate;)I
    .locals 8

    .prologue
    .line 517
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/AbstractChronoLocalDate;
    move-object v1, p1

    .local v1, "other":Ljava/time/chrono/ChronoLocalDate;
    move-object v4, v0

    invoke-virtual {v4}, Ljava/time/chrono/AbstractChronoLocalDate;->toEpochDay()J

    move-result-wide v4

    move-object v6, v1

    invoke-interface {v6}, Ljava/time/chrono/ChronoLocalDate;->toEpochDay()J

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Ljava/time/jdk8/Jdk8Methods;->compareLongs(JJ)I

    move-result v4

    move v2, v4

    .line 518
    .local v2, "cmp":I
    move v4, v2

    if-nez v4, :cond_0

    .line 519
    move-object v4, v1

    invoke-interface {v4}, Ljava/time/chrono/ChronoLocalDate;->getChronology()Ljava/time/chrono/Chronology;

    move-result-object v4

    move-object v3, v4

    .line 520
    .local v3, "chronology":Ljava/time/chrono/Chronology;
    move-object v4, v0

    invoke-virtual {v4}, Ljava/time/chrono/AbstractChronoLocalDate;->getChronology()Ljava/time/chrono/AbstractChronology;

    move-result-object v4

    move-object v5, v1

    invoke-interface {v5}, Ljava/time/chrono/ChronoLocalDate;->getChronology()Ljava/time/chrono/Chronology;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/time/chrono/AbstractChronology;->compareTo(Ljava/time/chrono/Chronology;)I

    move-result v4

    move v2, v4

    .line 522
    .end local v3    # "chronology":Ljava/time/chrono/Chronology;
    :cond_0
    move v4, v2

    move v0, v4

    .end local v0    # "this":Ljava/time/chrono/AbstractChronoLocalDate;
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    .line 588
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/AbstractChronoLocalDate;
    move-object v1, p1

    .local v1, "obj":Ljava/lang/Object;
    move-object v2, v0

    move-object v3, v1

    if-ne v2, v3, :cond_0

    .line 589
    const/4 v2, 0x1

    move v0, v2

    .line 594
    .end local v0    # "this":Ljava/time/chrono/AbstractChronoLocalDate;
    :goto_0
    return v0

    .line 591
    .restart local v0    # "this":Ljava/time/chrono/AbstractChronoLocalDate;
    :cond_0
    move-object v2, v1

    instance-of v2, v2, Ljava/time/chrono/AbstractChronoLocalDate;

    if-eqz v2, :cond_2

    .line 592
    move-object v2, v0

    move-object v3, v1

    check-cast v3, Ljava/time/chrono/AbstractChronoLocalDate;

    invoke-virtual {v2, v3}, Ljava/time/chrono/AbstractChronoLocalDate;->compareTo(Ljava/time/chrono/ChronoLocalDate;)I

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x1

    :goto_1
    move v0, v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    .line 594
    :cond_2
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method

.method public format(Ljava/time/format/DateTimeFormatter;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 456
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/AbstractChronoLocalDate;
    move-object v1, p1

    .local v1, "formatter":Ljava/time/format/DateTimeFormatter;
    move-object v2, v1

    const-string v3, "formatter"

    invoke-static {v2, v3}, Ljava/time/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 457
    move-object v2, v1

    move-object v3, v0

    invoke-virtual {v2, v3}, Ljava/time/format/DateTimeFormatter;->format(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljava/time/chrono/AbstractChronoLocalDate;
    return-object v0
.end method

.method public abstract getChronology()Ljava/time/chrono/AbstractChronology;
.end method

.method public bridge synthetic getChronology()Ljava/time/chrono/Chronology;
    .locals 2

    .prologue
    .line 221
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/AbstractChronoLocalDate;
    move-object v1, v0

    invoke-virtual {v1}, Ljava/time/chrono/AbstractChronoLocalDate;->getChronology()Ljava/time/chrono/AbstractChronology;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljava/time/chrono/AbstractChronoLocalDate;
    return-object v0
.end method

.method public getEra()Ljava/time/chrono/Era;
    .locals 4

    .prologue
    .line 310
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/AbstractChronoLocalDate;
    move-object v1, v0

    invoke-virtual {v1}, Ljava/time/chrono/AbstractChronoLocalDate;->getChronology()Ljava/time/chrono/AbstractChronology;

    move-result-object v1

    move-object v2, v0

    sget-object v3, Ljava/time/temporal/ChronoField;->ERA:Ljava/time/temporal/ChronoField;

    invoke-virtual {v2, v3}, Ljava/time/chrono/AbstractChronoLocalDate;->get(Ljava/time/temporal/TemporalField;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/time/chrono/AbstractChronology;->eraOf(I)Ljava/time/chrono/Era;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljava/time/chrono/AbstractChronoLocalDate;
    return-object v0
.end method

.method public hashCode()I
    .locals 9

    .prologue
    .line 604
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/AbstractChronoLocalDate;
    move-object v3, v0

    invoke-virtual {v3}, Ljava/time/chrono/AbstractChronoLocalDate;->toEpochDay()J

    move-result-wide v3

    move-wide v1, v3

    .line 605
    .local v1, "epDay":J
    move-object v3, v0

    invoke-virtual {v3}, Ljava/time/chrono/AbstractChronoLocalDate;->getChronology()Ljava/time/chrono/AbstractChronology;

    move-result-object v3

    invoke-virtual {v3}, Ljava/time/chrono/AbstractChronology;->hashCode()I

    move-result v3

    move-wide v4, v1

    move-wide v6, v1

    const/16 v8, 0x20

    ushr-long/2addr v6, v8

    xor-long/2addr v4, v6

    long-to-int v4, v4

    xor-int/2addr v3, v4

    move v0, v3

    .end local v0    # "this":Ljava/time/chrono/AbstractChronoLocalDate;
    return v0
.end method

.method public isAfter(Ljava/time/chrono/AbstractChronoLocalDate;)Z
    .locals 6

    .prologue
    .line 539
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/AbstractChronoLocalDate;
    move-object v1, p1

    .local v1, "other":Ljava/time/chrono/AbstractChronoLocalDate;
    move-object v2, v0

    invoke-virtual {v2}, Ljava/time/chrono/AbstractChronoLocalDate;->toEpochDay()J

    move-result-wide v2

    move-object v4, v1

    invoke-virtual {v4}, Ljava/time/chrono/AbstractChronoLocalDate;->toEpochDay()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .end local v0    # "this":Ljava/time/chrono/AbstractChronoLocalDate;
    return v0

    .restart local v0    # "this":Ljava/time/chrono/AbstractChronoLocalDate;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isBefore(Ljava/time/chrono/AbstractChronoLocalDate;)Z
    .locals 6

    .prologue
    .line 555
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/AbstractChronoLocalDate;
    move-object v1, p1

    .local v1, "other":Ljava/time/chrono/AbstractChronoLocalDate;
    move-object v2, v0

    invoke-virtual {v2}, Ljava/time/chrono/AbstractChronoLocalDate;->toEpochDay()J

    move-result-wide v2

    move-object v4, v1

    invoke-virtual {v4}, Ljava/time/chrono/AbstractChronoLocalDate;->toEpochDay()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .end local v0    # "this":Ljava/time/chrono/AbstractChronoLocalDate;
    return v0

    .restart local v0    # "this":Ljava/time/chrono/AbstractChronoLocalDate;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isEqual(Ljava/time/chrono/AbstractChronoLocalDate;)Z
    .locals 6

    .prologue
    .line 571
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/AbstractChronoLocalDate;
    move-object v1, p1

    .local v1, "other":Ljava/time/chrono/AbstractChronoLocalDate;
    move-object v2, v0

    invoke-virtual {v2}, Ljava/time/chrono/AbstractChronoLocalDate;->toEpochDay()J

    move-result-wide v2

    move-object v4, v1

    invoke-virtual {v4}, Ljava/time/chrono/AbstractChronoLocalDate;->toEpochDay()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .end local v0    # "this":Ljava/time/chrono/AbstractChronoLocalDate;
    return v0

    .restart local v0    # "this":Ljava/time/chrono/AbstractChronoLocalDate;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isLeapYear()Z
    .locals 4

    .prologue
    .line 326
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/AbstractChronoLocalDate;
    move-object v1, v0

    invoke-virtual {v1}, Ljava/time/chrono/AbstractChronoLocalDate;->getChronology()Ljava/time/chrono/AbstractChronology;

    move-result-object v1

    move-object v2, v0

    sget-object v3, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    invoke-virtual {v2, v3}, Ljava/time/chrono/AbstractChronoLocalDate;->getLong(Ljava/time/temporal/TemporalField;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/time/chrono/AbstractChronology;->isLeapYear(J)Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Ljava/time/chrono/AbstractChronoLocalDate;
    return v0
.end method

.method public isSupported(Ljava/time/temporal/TemporalField;)Z
    .locals 4

    .prologue
    .line 353
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/AbstractChronoLocalDate;
    move-object v1, p1

    .local v1, "field":Ljava/time/temporal/TemporalField;
    move-object v2, v1

    instance-of v2, v2, Ljava/time/temporal/ChronoField;

    if-eqz v2, :cond_0

    .line 354
    move-object v2, v1

    invoke-interface {v2}, Ljava/time/temporal/TemporalField;->isDateBased()Z

    move-result v2

    move v0, v2

    .line 356
    .end local v0    # "this":Ljava/time/chrono/AbstractChronoLocalDate;
    :goto_0
    return v0

    .restart local v0    # "this":Ljava/time/chrono/AbstractChronoLocalDate;
    :cond_0
    move-object v2, v1

    if-eqz v2, :cond_1

    move-object v2, v1

    move-object v3, v0

    invoke-interface {v2, v3}, Ljava/time/temporal/TemporalField;->isSupportedBy(Ljava/time/temporal/TemporalAccessor;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    :goto_1
    move v0, v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public isSupported(Ljava/time/temporal/TemporalUnit;)Z
    .locals 4

    .prologue
    .line 361
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/AbstractChronoLocalDate;
    move-object v1, p1

    .local v1, "unit":Ljava/time/temporal/TemporalUnit;
    move-object v2, v1

    instance-of v2, v2, Ljava/time/temporal/ChronoUnit;

    if-eqz v2, :cond_0

    .line 362
    move-object v2, v1

    invoke-interface {v2}, Ljava/time/temporal/TemporalUnit;->isDateBased()Z

    move-result v2

    move v0, v2

    .line 364
    .end local v0    # "this":Ljava/time/chrono/AbstractChronoLocalDate;
    :goto_0
    return v0

    .restart local v0    # "this":Ljava/time/chrono/AbstractChronoLocalDate;
    :cond_0
    move-object v2, v1

    if-eqz v2, :cond_1

    move-object v2, v1

    move-object v3, v0

    invoke-interface {v2, v3}, Ljava/time/temporal/TemporalUnit;->isSupportedBy(Ljava/time/temporal/Temporal;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    :goto_1
    move v0, v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public abstract lengthOfMonth()I
.end method

.method public lengthOfYear()I
    .locals 2

    .prologue
    .line 348
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/AbstractChronoLocalDate;
    move-object v1, v0

    invoke-virtual {v1}, Ljava/time/chrono/AbstractChronoLocalDate;->isLeapYear()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x16e

    :goto_0
    move v0, v1

    .end local v0    # "this":Ljava/time/chrono/AbstractChronoLocalDate;
    return v0

    .restart local v0    # "this":Ljava/time/chrono/AbstractChronoLocalDate;
    :cond_0
    const/16 v1, 0x16d

    goto :goto_0
.end method

.method public minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/AbstractChronoLocalDate;
    .locals 9

    .prologue
    .line 392
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/AbstractChronoLocalDate;
    move-wide v1, p1

    .local v1, "amountToSubtract":J
    move-object v3, p3

    .local v3, "unit":Ljava/time/temporal/TemporalUnit;
    move-object v4, v0

    invoke-virtual {v4}, Ljava/time/chrono/AbstractChronoLocalDate;->getChronology()Ljava/time/chrono/AbstractChronology;

    move-result-object v4

    move-object v5, v0

    move-wide v6, v1

    move-object v8, v3

    invoke-super {v5, v6, v7, v8}, Ljava/time/jdk8/DefaultInterfaceTemporal;->minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/temporal/Temporal;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/time/chrono/AbstractChronology;->ensureChronoLocalDate(Ljava/time/temporal/Temporal;)Ljava/time/chrono/AbstractChronoLocalDate;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Ljava/time/chrono/AbstractChronoLocalDate;
    return-object v0
.end method

.method public minus(Ljava/time/temporal/TemporalAmount;)Ljava/time/chrono/AbstractChronoLocalDate;
    .locals 5

    .prologue
    .line 387
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/AbstractChronoLocalDate;
    move-object v1, p1

    .local v1, "amount":Ljava/time/temporal/TemporalAmount;
    move-object v2, v0

    invoke-virtual {v2}, Ljava/time/chrono/AbstractChronoLocalDate;->getChronology()Ljava/time/chrono/AbstractChronology;

    move-result-object v2

    move-object v3, v0

    move-object v4, v1

    invoke-super {v3, v4}, Ljava/time/jdk8/DefaultInterfaceTemporal;->minus(Ljava/time/temporal/TemporalAmount;)Ljava/time/temporal/Temporal;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/time/chrono/AbstractChronology;->ensureChronoLocalDate(Ljava/time/temporal/Temporal;)Ljava/time/chrono/AbstractChronoLocalDate;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljava/time/chrono/AbstractChronoLocalDate;
    return-object v0
.end method

.method public bridge synthetic minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/temporal/Temporal;
    .locals 9

    .prologue
    .line 221
    move-object v1, p0

    .local v1, "this":Ljava/time/chrono/AbstractChronoLocalDate;
    move-wide v2, p1

    move-object v4, p3

    move-object v5, v1

    move-wide v6, v2

    move-object v8, v4

    invoke-virtual {v5, v6, v7, v8}, Ljava/time/chrono/AbstractChronoLocalDate;->minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/AbstractChronoLocalDate;

    move-result-object v5

    move-object v1, v5

    .end local v1    # "this":Ljava/time/chrono/AbstractChronoLocalDate;
    return-object v1
.end method

.method public bridge synthetic minus(Ljava/time/temporal/TemporalAmount;)Ljava/time/temporal/Temporal;
    .locals 4

    .prologue
    .line 221
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/AbstractChronoLocalDate;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/time/chrono/AbstractChronoLocalDate;->minus(Ljava/time/temporal/TemporalAmount;)Ljava/time/chrono/AbstractChronoLocalDate;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljava/time/chrono/AbstractChronoLocalDate;
    return-object v0
.end method

.method public abstract plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/AbstractChronoLocalDate;
.end method

.method public plus(Ljava/time/temporal/TemporalAmount;)Ljava/time/chrono/AbstractChronoLocalDate;
    .locals 5

    .prologue
    .line 379
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/AbstractChronoLocalDate;
    move-object v1, p1

    .local v1, "amount":Ljava/time/temporal/TemporalAmount;
    move-object v2, v0

    invoke-virtual {v2}, Ljava/time/chrono/AbstractChronoLocalDate;->getChronology()Ljava/time/chrono/AbstractChronology;

    move-result-object v2

    move-object v3, v0

    move-object v4, v1

    invoke-super {v3, v4}, Ljava/time/jdk8/DefaultInterfaceTemporal;->plus(Ljava/time/temporal/TemporalAmount;)Ljava/time/temporal/Temporal;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/time/chrono/AbstractChronology;->ensureChronoLocalDate(Ljava/time/temporal/Temporal;)Ljava/time/chrono/AbstractChronoLocalDate;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljava/time/chrono/AbstractChronoLocalDate;
    return-object v0
.end method

.method public bridge synthetic plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/temporal/Temporal;
    .locals 9

    .prologue
    .line 221
    move-object v1, p0

    .local v1, "this":Ljava/time/chrono/AbstractChronoLocalDate;
    move-wide v2, p1

    move-object v4, p3

    move-object v5, v1

    move-wide v6, v2

    move-object v8, v4

    invoke-virtual {v5, v6, v7, v8}, Ljava/time/chrono/AbstractChronoLocalDate;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/AbstractChronoLocalDate;

    move-result-object v5

    move-object v1, v5

    .end local v1    # "this":Ljava/time/chrono/AbstractChronoLocalDate;
    return-object v1
.end method

.method public bridge synthetic plus(Ljava/time/temporal/TemporalAmount;)Ljava/time/temporal/Temporal;
    .locals 4

    .prologue
    .line 221
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/AbstractChronoLocalDate;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/time/chrono/AbstractChronoLocalDate;->plus(Ljava/time/temporal/TemporalAmount;)Ljava/time/chrono/AbstractChronoLocalDate;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljava/time/chrono/AbstractChronoLocalDate;
    return-object v0
.end method

.method public query(Ljava/time/temporal/TemporalQuery;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/time/temporal/TemporalQuery",
            "<TR;>;)TR;"
        }
    .end annotation

    .prologue
    .line 399
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/AbstractChronoLocalDate;
    move-object v1, p1

    .local v1, "query":Ljava/time/temporal/TemporalQuery;, "Ljava/time/temporal/TemporalQuery<TR;>;"
    move-object v2, v1

    invoke-static {}, Ljava/time/temporal/TemporalQueries;->chronology()Ljava/time/temporal/TemporalQuery;

    move-result-object v3

    if-ne v2, v3, :cond_0

    .line 400
    move-object v2, v0

    invoke-virtual {v2}, Ljava/time/chrono/AbstractChronoLocalDate;->getChronology()Ljava/time/chrono/AbstractChronology;

    move-result-object v2

    move-object v0, v2

    .line 409
    .end local v0    # "this":Ljava/time/chrono/AbstractChronoLocalDate;
    :goto_0
    return-object v0

    .line 401
    .restart local v0    # "this":Ljava/time/chrono/AbstractChronoLocalDate;
    :cond_0
    move-object v2, v1

    invoke-static {}, Ljava/time/temporal/TemporalQueries;->precision()Ljava/time/temporal/TemporalQuery;

    move-result-object v3

    if-ne v2, v3, :cond_1

    .line 402
    sget-object v2, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    move-object v0, v2

    goto :goto_0

    .line 403
    :cond_1
    move-object v2, v1

    invoke-static {}, Ljava/time/temporal/TemporalQueries;->localDate()Ljava/time/temporal/TemporalQuery;

    move-result-object v3

    if-ne v2, v3, :cond_2

    .line 404
    move-object v2, v0

    invoke-virtual {v2}, Ljava/time/chrono/AbstractChronoLocalDate;->toEpochDay()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/time/LocalDate;->ofEpochDay(J)Ljava/time/LocalDate;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 405
    :cond_2
    move-object v2, v1

    invoke-static {}, Ljava/time/temporal/TemporalQueries;->localTime()Ljava/time/temporal/TemporalQuery;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move-object v2, v1

    invoke-static {}, Ljava/time/temporal/TemporalQueries;->zone()Ljava/time/temporal/TemporalQuery;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move-object v2, v1

    .line 406
    invoke-static {}, Ljava/time/temporal/TemporalQueries;->zoneId()Ljava/time/temporal/TemporalQuery;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move-object v2, v1

    invoke-static {}, Ljava/time/temporal/TemporalQueries;->offset()Ljava/time/temporal/TemporalQuery;

    move-result-object v3

    if-ne v2, v3, :cond_4

    .line 407
    :cond_3
    const/4 v2, 0x0

    move-object v0, v2

    goto :goto_0

    .line 409
    :cond_4
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Ljava/time/jdk8/DefaultInterfaceTemporal;->query(Ljava/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    goto :goto_0
.end method

.method public toEpochDay()J
    .locals 3

    .prologue
    .line 485
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/AbstractChronoLocalDate;
    move-object v1, v0

    sget-object v2, Ljava/time/temporal/ChronoField;->EPOCH_DAY:Ljava/time/temporal/ChronoField;

    invoke-virtual {v1, v2}, Ljava/time/chrono/AbstractChronoLocalDate;->getLong(Ljava/time/temporal/TemporalField;)J

    move-result-wide v1

    move-wide v0, v1

    .end local v0    # "this":Ljava/time/chrono/AbstractChronoLocalDate;
    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 15

    .prologue
    .line 619
    move-object v1, p0

    .local v1, "this":Ljava/time/chrono/AbstractChronoLocalDate;
    move-object v9, v1

    sget-object v10, Ljava/time/temporal/ChronoField;->YEAR_OF_ERA:Ljava/time/temporal/ChronoField;

    invoke-virtual {v9, v10}, Ljava/time/chrono/AbstractChronoLocalDate;->getLong(Ljava/time/temporal/TemporalField;)J

    move-result-wide v9

    move-wide v2, v9

    .line 620
    .local v2, "yoe":J
    move-object v9, v1

    sget-object v10, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-virtual {v9, v10}, Ljava/time/chrono/AbstractChronoLocalDate;->getLong(Ljava/time/temporal/TemporalField;)J

    move-result-wide v9

    move-wide v4, v9

    .line 621
    .local v4, "moy":J
    move-object v9, v1

    sget-object v10, Ljava/time/temporal/ChronoField;->DAY_OF_MONTH:Ljava/time/temporal/ChronoField;

    invoke-virtual {v9, v10}, Ljava/time/chrono/AbstractChronoLocalDate;->getLong(Ljava/time/temporal/TemporalField;)J

    move-result-wide v9

    move-wide v6, v9

    .line 622
    .local v6, "dom":J
    new-instance v9, Ljava/lang/StringBuilder;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    const/16 v11, 0x1e

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v8, v9

    .line 623
    .local v8, "buf":Ljava/lang/StringBuilder;
    move-object v9, v8

    move-object v10, v1

    invoke-virtual {v10}, Ljava/time/chrono/AbstractChronoLocalDate;->getChronology()Ljava/time/chrono/AbstractChronology;

    move-result-object v10

    invoke-virtual {v10}, Ljava/time/chrono/AbstractChronology;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    .line 624
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v1

    .line 625
    invoke-virtual {v10}, Ljava/time/chrono/AbstractChronoLocalDate;->getEra()Ljava/time/chrono/Era;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    .line 626
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-wide v10, v2

    .line 627
    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    move-wide v10, v4

    const-wide/16 v12, 0xa

    cmp-long v10, v10, v12

    if-gez v10, :cond_0

    const-string v10, "-0"

    .line 628
    :goto_0
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-wide v10, v4

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    move-wide v10, v6

    const-wide/16 v12, 0xa

    cmp-long v10, v10, v12

    if-gez v10, :cond_1

    const-string v10, "-0"

    .line 629
    :goto_1
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-wide v10, v6

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 630
    move-object v9, v8

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object v1, v9

    .end local v1    # "this":Ljava/time/chrono/AbstractChronoLocalDate;
    return-object v1

    .line 627
    .restart local v1    # "this":Ljava/time/chrono/AbstractChronoLocalDate;
    :cond_0
    const-string v10, "-"

    goto :goto_0

    .line 628
    :cond_1
    const-string v10, "-"

    goto :goto_1
.end method

.method public abstract until(Ljava/time/chrono/AbstractChronoLocalDate;)Ljava/time/chrono/ChronoPeriod;
.end method

.method public with(Ljava/time/temporal/TemporalAdjuster;)Ljava/time/chrono/AbstractChronoLocalDate;
    .locals 5

    .prologue
    .line 371
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/AbstractChronoLocalDate;
    move-object v1, p1

    .local v1, "adjuster":Ljava/time/temporal/TemporalAdjuster;
    move-object v2, v0

    invoke-virtual {v2}, Ljava/time/chrono/AbstractChronoLocalDate;->getChronology()Ljava/time/chrono/AbstractChronology;

    move-result-object v2

    move-object v3, v0

    move-object v4, v1

    invoke-super {v3, v4}, Ljava/time/jdk8/DefaultInterfaceTemporal;->with(Ljava/time/temporal/TemporalAdjuster;)Ljava/time/temporal/Temporal;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/time/chrono/AbstractChronology;->ensureChronoLocalDate(Ljava/time/temporal/Temporal;)Ljava/time/chrono/AbstractChronoLocalDate;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljava/time/chrono/AbstractChronoLocalDate;
    return-object v0
.end method

.method public abstract with(Ljava/time/temporal/TemporalField;J)Ljava/time/chrono/AbstractChronoLocalDate;
.end method

.method public bridge synthetic with(Ljava/time/temporal/TemporalAdjuster;)Ljava/time/temporal/Temporal;
    .locals 4

    .prologue
    .line 221
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/AbstractChronoLocalDate;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/time/chrono/AbstractChronoLocalDate;->with(Ljava/time/temporal/TemporalAdjuster;)Ljava/time/chrono/AbstractChronoLocalDate;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljava/time/chrono/AbstractChronoLocalDate;
    return-object v0
.end method

.method public bridge synthetic with(Ljava/time/temporal/TemporalField;J)Ljava/time/temporal/Temporal;
    .locals 8

    .prologue
    .line 221
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/AbstractChronoLocalDate;
    move-object v1, p1

    move-wide v2, p2

    move-object v4, v0

    move-object v5, v1

    move-wide v6, v2

    invoke-virtual {v4, v5, v6, v7}, Ljava/time/chrono/AbstractChronoLocalDate;->with(Ljava/time/temporal/TemporalField;J)Ljava/time/chrono/AbstractChronoLocalDate;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Ljava/time/chrono/AbstractChronoLocalDate;
    return-object v0
.end method
