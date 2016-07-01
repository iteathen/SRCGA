.class public abstract Ljava/time/chrono/ChronoLocalDateTime;
.super Ljava/time/jdk8/DefaultInterfaceTemporal;
.source "ChronoLocalDateTime.java"

# interfaces
.implements Ljava/time/temporal/Temporal;
.implements Ljava/time/temporal/TemporalAdjuster;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Ljava/time/chrono/AbstractChronoLocalDate;",
        ">",
        "Ljava/time/jdk8/DefaultInterfaceTemporal;",
        "Ljava/time/temporal/Temporal;",
        "Ljava/time/temporal/TemporalAdjuster;",
        "Ljava/lang/Comparable",
        "<",
        "Ljava/time/chrono/ChronoLocalDateTime",
        "<*>;>;"
    }
.end annotation


# static fields
.field private static final DATE_TIME_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/time/chrono/ChronoLocalDateTime",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 115
    new-instance v0, Ljava/time/chrono/ChronoLocalDateTime$1;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljava/time/chrono/ChronoLocalDateTime$1;-><init>()V

    sput-object v0, Ljava/time/chrono/ChronoLocalDateTime;->DATE_TIME_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 93
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/ChronoLocalDateTime;, "Ljava/time/chrono/ChronoLocalDateTime<TD;>;"
    move-object v1, v0

    invoke-direct {v1}, Ljava/time/jdk8/DefaultInterfaceTemporal;-><init>()V

    return-void
.end method

.method public static from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/chrono/ChronoLocalDateTime;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/time/temporal/TemporalAccessor;",
            ")",
            "Ljava/time/chrono/ChronoLocalDateTime",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 150
    move-object v0, p0

    .local v0, "temporal":Ljava/time/temporal/TemporalAccessor;
    move-object v2, v0

    const-string v3, "temporal"

    invoke-static {v2, v3}, Ljava/time/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 151
    move-object v2, v0

    instance-of v2, v2, Ljava/time/chrono/ChronoLocalDateTime;

    if-eqz v2, :cond_0

    .line 152
    move-object v2, v0

    check-cast v2, Ljava/time/chrono/ChronoLocalDateTime;

    move-object v0, v2

    .line 158
    .end local v0    # "temporal":Ljava/time/temporal/TemporalAccessor;
    .local v1, "chrono":Ljava/time/chrono/AbstractChronology;
    :goto_0
    return-object v0

    .line 154
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

    .line 155
    .restart local v1    # "chrono":Ljava/time/chrono/AbstractChronology;
    move-object v2, v1

    if-nez v2, :cond_1

    .line 156
    new-instance v2, Ljava/time/DateTimeException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No Chronology found to create ChronoLocalDateTime: "

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

    .line 158
    :cond_1
    move-object v2, v1

    move-object v3, v0

    invoke-virtual {v2, v3}, Ljava/time/chrono/AbstractChronology;->localDateTime(Ljava/time/temporal/TemporalAccessor;)Ljava/time/chrono/ChronoLocalDateTime;

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
            "Ljava/time/chrono/ChronoLocalDateTime",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 113
    sget-object v0, Ljava/time/chrono/ChronoLocalDateTime;->DATE_TIME_COMPARATOR:Ljava/util/Comparator;

    return-object v0
.end method


# virtual methods
.method public adjustInto(Ljava/time/temporal/Temporal;)Ljava/time/temporal/Temporal;
    .locals 6

    .prologue
    .line 242
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/ChronoLocalDateTime;, "Ljava/time/chrono/ChronoLocalDateTime<TD;>;"
    move-object v1, p1

    .local v1, "temporal":Ljava/time/temporal/Temporal;
    move-object v2, v1

    sget-object v3, Ljava/time/temporal/ChronoField;->EPOCH_DAY:Ljava/time/temporal/ChronoField;

    move-object v4, v0

    .line 243
    invoke-virtual {v4}, Ljava/time/chrono/ChronoLocalDateTime;->toLocalDate()Ljava/time/chrono/AbstractChronoLocalDate;

    move-result-object v4

    invoke-virtual {v4}, Ljava/time/chrono/AbstractChronoLocalDate;->toEpochDay()J

    move-result-wide v4

    invoke-interface {v2, v3, v4, v5}, Ljava/time/temporal/Temporal;->with(Ljava/time/temporal/TemporalField;J)Ljava/time/temporal/Temporal;

    move-result-object v2

    sget-object v3, Ljava/time/temporal/ChronoField;->NANO_OF_DAY:Ljava/time/temporal/ChronoField;

    move-object v4, v0

    .line 244
    invoke-virtual {v4}, Ljava/time/chrono/ChronoLocalDateTime;->toLocalTime()Ljava/time/LocalTime;

    move-result-object v4

    invoke-virtual {v4}, Ljava/time/LocalTime;->toNanoOfDay()J

    move-result-wide v4

    invoke-interface {v2, v3, v4, v5}, Ljava/time/temporal/Temporal;->with(Ljava/time/temporal/TemporalField;J)Ljava/time/temporal/Temporal;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljava/time/chrono/ChronoLocalDateTime;, "Ljava/time/chrono/ChronoLocalDateTime<TD;>;"
    return-object v0
.end method

.method public abstract atZone(Ljava/time/ZoneId;)Ljava/time/chrono/ChronoZonedDateTime;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/time/ZoneId;",
            ")",
            "Ljava/time/chrono/ChronoZonedDateTime",
            "<TD;>;"
        }
    .end annotation
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 4

    .prologue
    .line 93
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/ChronoLocalDateTime;, "Ljava/time/chrono/ChronoLocalDateTime<TD;>;"
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    check-cast v3, Ljava/time/chrono/ChronoLocalDateTime;

    invoke-virtual {v2, v3}, Ljava/time/chrono/ChronoLocalDateTime;->compareTo(Ljava/time/chrono/ChronoLocalDateTime;)I

    move-result v2

    move v0, v2

    .end local v0    # "this":Ljava/time/chrono/ChronoLocalDateTime;, "Ljava/time/chrono/ChronoLocalDateTime<TD;>;"
    return v0
.end method

.method public compareTo(Ljava/time/chrono/ChronoLocalDateTime;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/time/chrono/ChronoLocalDateTime",
            "<*>;)I"
        }
    .end annotation

    .prologue
    .line 356
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/ChronoLocalDateTime;, "Ljava/time/chrono/ChronoLocalDateTime<TD;>;"
    move-object v1, p1

    .local v1, "other":Ljava/time/chrono/ChronoLocalDateTime;, "Ljava/time/chrono/ChronoLocalDateTime<*>;"
    move-object v3, v0

    invoke-virtual {v3}, Ljava/time/chrono/ChronoLocalDateTime;->toLocalDate()Ljava/time/chrono/AbstractChronoLocalDate;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v4}, Ljava/time/chrono/ChronoLocalDateTime;->toLocalDate()Ljava/time/chrono/AbstractChronoLocalDate;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/time/chrono/AbstractChronoLocalDate;->compareTo(Ljava/time/chrono/ChronoLocalDate;)I

    move-result v3

    move v2, v3

    .line 357
    .local v2, "cmp":I
    move v3, v2

    if-nez v3, :cond_0

    .line 358
    move-object v3, v0

    invoke-virtual {v3}, Ljava/time/chrono/ChronoLocalDateTime;->toLocalTime()Ljava/time/LocalTime;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v4}, Ljava/time/chrono/ChronoLocalDateTime;->toLocalTime()Ljava/time/LocalTime;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/time/LocalTime;->compareTo(Ljava/time/LocalTime;)I

    move-result v3

    move v2, v3

    .line 359
    move v3, v2

    if-nez v3, :cond_0

    .line 360
    move-object v3, v0

    invoke-virtual {v3}, Ljava/time/chrono/ChronoLocalDateTime;->getChronology()Ljava/time/chrono/Chronology;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v4}, Ljava/time/chrono/ChronoLocalDateTime;->getChronology()Ljava/time/chrono/Chronology;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/time/chrono/Chronology;->compareTo(Ljava/time/chrono/Chronology;)I

    move-result v3

    move v2, v3

    .line 363
    :cond_0
    move v3, v2

    move v0, v3

    .end local v0    # "this":Ljava/time/chrono/ChronoLocalDateTime;, "Ljava/time/chrono/ChronoLocalDateTime<TD;>;"
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    .line 430
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/ChronoLocalDateTime;, "Ljava/time/chrono/ChronoLocalDateTime<TD;>;"
    move-object v1, p1

    .local v1, "obj":Ljava/lang/Object;
    move-object v2, v0

    move-object v3, v1

    if-ne v2, v3, :cond_0

    .line 431
    const/4 v2, 0x1

    move v0, v2

    .line 436
    .end local v0    # "this":Ljava/time/chrono/ChronoLocalDateTime;, "Ljava/time/chrono/ChronoLocalDateTime<TD;>;"
    :goto_0
    return v0

    .line 433
    .restart local v0    # "this":Ljava/time/chrono/ChronoLocalDateTime;, "Ljava/time/chrono/ChronoLocalDateTime<TD;>;"
    :cond_0
    move-object v2, v1

    instance-of v2, v2, Ljava/time/chrono/ChronoLocalDateTime;

    if-eqz v2, :cond_2

    .line 434
    move-object v2, v0

    move-object v3, v1

    check-cast v3, Ljava/time/chrono/ChronoLocalDateTime;

    invoke-virtual {v2, v3}, Ljava/time/chrono/ChronoLocalDateTime;->compareTo(Ljava/time/chrono/ChronoLocalDateTime;)I

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x1

    :goto_1
    move v0, v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    .line 436
    :cond_2
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method

.method public format(Ljava/time/format/DateTimeFormatter;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 262
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/ChronoLocalDateTime;, "Ljava/time/chrono/ChronoLocalDateTime<TD;>;"
    move-object v1, p1

    .local v1, "formatter":Ljava/time/format/DateTimeFormatter;
    move-object v2, v1

    const-string v3, "formatter"

    invoke-static {v2, v3}, Ljava/time/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 263
    move-object v2, v1

    move-object v3, v0

    invoke-virtual {v2, v3}, Ljava/time/format/DateTimeFormatter;->format(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljava/time/chrono/ChronoLocalDateTime;, "Ljava/time/chrono/ChronoLocalDateTime<TD;>;"
    return-object v0
.end method

.method public getChronology()Ljava/time/chrono/Chronology;
    .locals 2

    .prologue
    .line 171
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/ChronoLocalDateTime;, "Ljava/time/chrono/ChronoLocalDateTime<TD;>;"
    move-object v1, v0

    invoke-virtual {v1}, Ljava/time/chrono/ChronoLocalDateTime;->toLocalDate()Ljava/time/chrono/AbstractChronoLocalDate;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/chrono/AbstractChronoLocalDate;->getChronology()Ljava/time/chrono/AbstractChronology;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljava/time/chrono/ChronoLocalDateTime;, "Ljava/time/chrono/ChronoLocalDateTime<TD;>;"
    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 446
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/ChronoLocalDateTime;, "Ljava/time/chrono/ChronoLocalDateTime<TD;>;"
    move-object v1, v0

    invoke-virtual {v1}, Ljava/time/chrono/ChronoLocalDateTime;->toLocalDate()Ljava/time/chrono/AbstractChronoLocalDate;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/chrono/AbstractChronoLocalDate;->hashCode()I

    move-result v1

    move-object v2, v0

    invoke-virtual {v2}, Ljava/time/chrono/ChronoLocalDateTime;->toLocalTime()Ljava/time/LocalTime;

    move-result-object v2

    invoke-virtual {v2}, Ljava/time/LocalTime;->hashCode()I

    move-result v2

    xor-int/2addr v1, v2

    move v0, v1

    .end local v0    # "this":Ljava/time/chrono/ChronoLocalDateTime;, "Ljava/time/chrono/ChronoLocalDateTime<TD;>;"
    return v0
.end method

.method public isAfter(Ljava/time/chrono/ChronoLocalDateTime;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/time/chrono/ChronoLocalDateTime",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 378
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/ChronoLocalDateTime;, "Ljava/time/chrono/ChronoLocalDateTime<TD;>;"
    move-object v1, p1

    .local v1, "other":Ljava/time/chrono/ChronoLocalDateTime;, "Ljava/time/chrono/ChronoLocalDateTime<*>;"
    move-object v6, v0

    invoke-virtual {v6}, Ljava/time/chrono/ChronoLocalDateTime;->toLocalDate()Ljava/time/chrono/AbstractChronoLocalDate;

    move-result-object v6

    invoke-virtual {v6}, Ljava/time/chrono/AbstractChronoLocalDate;->toEpochDay()J

    move-result-wide v6

    move-wide v2, v6

    .line 379
    .local v2, "thisEpDay":J
    move-object v6, v1

    invoke-virtual {v6}, Ljava/time/chrono/ChronoLocalDateTime;->toLocalDate()Ljava/time/chrono/AbstractChronoLocalDate;

    move-result-object v6

    invoke-virtual {v6}, Ljava/time/chrono/AbstractChronoLocalDate;->toEpochDay()J

    move-result-wide v6

    move-wide v4, v6

    .line 380
    .local v4, "otherEpDay":J
    move-wide v6, v2

    move-wide v8, v4

    cmp-long v6, v6, v8

    if-gtz v6, :cond_0

    move-wide v6, v2

    move-wide v8, v4

    cmp-long v6, v6, v8

    if-nez v6, :cond_1

    move-object v6, v0

    .line 381
    invoke-virtual {v6}, Ljava/time/chrono/ChronoLocalDateTime;->toLocalTime()Ljava/time/LocalTime;

    move-result-object v6

    invoke-virtual {v6}, Ljava/time/LocalTime;->toNanoOfDay()J

    move-result-wide v6

    move-object v8, v1

    invoke-virtual {v8}, Ljava/time/chrono/ChronoLocalDateTime;->toLocalTime()Ljava/time/LocalTime;

    move-result-object v8

    invoke-virtual {v8}, Ljava/time/LocalTime;->toNanoOfDay()J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-lez v6, :cond_1

    :cond_0
    const/4 v6, 0x1

    :goto_0
    move v0, v6

    .end local v0    # "this":Ljava/time/chrono/ChronoLocalDateTime;, "Ljava/time/chrono/ChronoLocalDateTime<TD;>;"
    return v0

    .restart local v0    # "this":Ljava/time/chrono/ChronoLocalDateTime;, "Ljava/time/chrono/ChronoLocalDateTime<TD;>;"
    :cond_1
    const/4 v6, 0x0

    goto :goto_0
.end method

.method public isBefore(Ljava/time/chrono/ChronoLocalDateTime;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/time/chrono/ChronoLocalDateTime",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 396
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/ChronoLocalDateTime;, "Ljava/time/chrono/ChronoLocalDateTime<TD;>;"
    move-object v1, p1

    .local v1, "other":Ljava/time/chrono/ChronoLocalDateTime;, "Ljava/time/chrono/ChronoLocalDateTime<*>;"
    move-object v6, v0

    invoke-virtual {v6}, Ljava/time/chrono/ChronoLocalDateTime;->toLocalDate()Ljava/time/chrono/AbstractChronoLocalDate;

    move-result-object v6

    invoke-virtual {v6}, Ljava/time/chrono/AbstractChronoLocalDate;->toEpochDay()J

    move-result-wide v6

    move-wide v2, v6

    .line 397
    .local v2, "thisEpDay":J
    move-object v6, v1

    invoke-virtual {v6}, Ljava/time/chrono/ChronoLocalDateTime;->toLocalDate()Ljava/time/chrono/AbstractChronoLocalDate;

    move-result-object v6

    invoke-virtual {v6}, Ljava/time/chrono/AbstractChronoLocalDate;->toEpochDay()J

    move-result-wide v6

    move-wide v4, v6

    .line 398
    .local v4, "otherEpDay":J
    move-wide v6, v2

    move-wide v8, v4

    cmp-long v6, v6, v8

    if-ltz v6, :cond_0

    move-wide v6, v2

    move-wide v8, v4

    cmp-long v6, v6, v8

    if-nez v6, :cond_1

    move-object v6, v0

    .line 399
    invoke-virtual {v6}, Ljava/time/chrono/ChronoLocalDateTime;->toLocalTime()Ljava/time/LocalTime;

    move-result-object v6

    invoke-virtual {v6}, Ljava/time/LocalTime;->toNanoOfDay()J

    move-result-wide v6

    move-object v8, v1

    invoke-virtual {v8}, Ljava/time/chrono/ChronoLocalDateTime;->toLocalTime()Ljava/time/LocalTime;

    move-result-object v8

    invoke-virtual {v8}, Ljava/time/LocalTime;->toNanoOfDay()J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-gez v6, :cond_1

    :cond_0
    const/4 v6, 0x1

    :goto_0
    move v0, v6

    .end local v0    # "this":Ljava/time/chrono/ChronoLocalDateTime;, "Ljava/time/chrono/ChronoLocalDateTime<TD;>;"
    return v0

    .restart local v0    # "this":Ljava/time/chrono/ChronoLocalDateTime;, "Ljava/time/chrono/ChronoLocalDateTime<TD;>;"
    :cond_1
    const/4 v6, 0x0

    goto :goto_0
.end method

.method public isEqual(Ljava/time/chrono/ChronoLocalDateTime;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/time/chrono/ChronoLocalDateTime",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 415
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/ChronoLocalDateTime;, "Ljava/time/chrono/ChronoLocalDateTime<TD;>;"
    move-object v1, p1

    .local v1, "other":Ljava/time/chrono/ChronoLocalDateTime;, "Ljava/time/chrono/ChronoLocalDateTime<*>;"
    move-object v2, v0

    invoke-virtual {v2}, Ljava/time/chrono/ChronoLocalDateTime;->toLocalTime()Ljava/time/LocalTime;

    move-result-object v2

    invoke-virtual {v2}, Ljava/time/LocalTime;->toNanoOfDay()J

    move-result-wide v2

    move-object v4, v1

    invoke-virtual {v4}, Ljava/time/chrono/ChronoLocalDateTime;->toLocalTime()Ljava/time/LocalTime;

    move-result-object v4

    invoke-virtual {v4}, Ljava/time/LocalTime;->toNanoOfDay()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    move-object v2, v0

    .line 416
    invoke-virtual {v2}, Ljava/time/chrono/ChronoLocalDateTime;->toLocalDate()Ljava/time/chrono/AbstractChronoLocalDate;

    move-result-object v2

    invoke-virtual {v2}, Ljava/time/chrono/AbstractChronoLocalDate;->toEpochDay()J

    move-result-wide v2

    move-object v4, v1

    invoke-virtual {v4}, Ljava/time/chrono/ChronoLocalDateTime;->toLocalDate()Ljava/time/chrono/AbstractChronoLocalDate;

    move-result-object v4

    invoke-virtual {v4}, Ljava/time/chrono/AbstractChronoLocalDate;->toEpochDay()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .end local v0    # "this":Ljava/time/chrono/ChronoLocalDateTime;, "Ljava/time/chrono/ChronoLocalDateTime<TD;>;"
    return v0

    .restart local v0    # "this":Ljava/time/chrono/ChronoLocalDateTime;, "Ljava/time/chrono/ChronoLocalDateTime<TD;>;"
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/ChronoLocalDateTime;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/time/temporal/TemporalUnit;",
            ")",
            "Ljava/time/chrono/ChronoLocalDateTime",
            "<TD;>;"
        }
    .end annotation

    .prologue
    .line 219
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/ChronoLocalDateTime;, "Ljava/time/chrono/ChronoLocalDateTime<TD;>;"
    move-wide v1, p1

    .local v1, "amountToSubtract":J
    move-object v3, p3

    .local v3, "unit":Ljava/time/temporal/TemporalUnit;
    move-object v4, v0

    invoke-virtual {v4}, Ljava/time/chrono/ChronoLocalDateTime;->toLocalDate()Ljava/time/chrono/AbstractChronoLocalDate;

    move-result-object v4

    invoke-virtual {v4}, Ljava/time/chrono/AbstractChronoLocalDate;->getChronology()Ljava/time/chrono/AbstractChronology;

    move-result-object v4

    move-object v5, v0

    move-wide v6, v1

    move-object v8, v3

    invoke-super {v5, v6, v7, v8}, Ljava/time/jdk8/DefaultInterfaceTemporal;->minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/temporal/Temporal;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/time/chrono/AbstractChronology;->ensureChronoLocalDateTime(Ljava/time/temporal/Temporal;)Ljava/time/chrono/ChronoLocalDateTimeImpl;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Ljava/time/chrono/ChronoLocalDateTime;, "Ljava/time/chrono/ChronoLocalDateTime<TD;>;"
    return-object v0
.end method

.method public minus(Ljava/time/temporal/TemporalAmount;)Ljava/time/chrono/ChronoLocalDateTime;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/time/temporal/TemporalAmount;",
            ")",
            "Ljava/time/chrono/ChronoLocalDateTime",
            "<TD;>;"
        }
    .end annotation

    .prologue
    .line 214
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/ChronoLocalDateTime;, "Ljava/time/chrono/ChronoLocalDateTime<TD;>;"
    move-object v1, p1

    .local v1, "amount":Ljava/time/temporal/TemporalAmount;
    move-object v2, v0

    invoke-virtual {v2}, Ljava/time/chrono/ChronoLocalDateTime;->toLocalDate()Ljava/time/chrono/AbstractChronoLocalDate;

    move-result-object v2

    invoke-virtual {v2}, Ljava/time/chrono/AbstractChronoLocalDate;->getChronology()Ljava/time/chrono/AbstractChronology;

    move-result-object v2

    move-object v3, v0

    move-object v4, v1

    invoke-super {v3, v4}, Ljava/time/jdk8/DefaultInterfaceTemporal;->minus(Ljava/time/temporal/TemporalAmount;)Ljava/time/temporal/Temporal;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/time/chrono/AbstractChronology;->ensureChronoLocalDateTime(Ljava/time/temporal/Temporal;)Ljava/time/chrono/ChronoLocalDateTimeImpl;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljava/time/chrono/ChronoLocalDateTime;, "Ljava/time/chrono/ChronoLocalDateTime<TD;>;"
    return-object v0
.end method

.method public bridge synthetic minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/temporal/Temporal;
    .locals 9

    .prologue
    .line 93
    move-object v1, p0

    .local v1, "this":Ljava/time/chrono/ChronoLocalDateTime;, "Ljava/time/chrono/ChronoLocalDateTime<TD;>;"
    move-wide v2, p1

    move-object v4, p3

    move-object v5, v1

    move-wide v6, v2

    move-object v8, v4

    invoke-virtual {v5, v6, v7, v8}, Ljava/time/chrono/ChronoLocalDateTime;->minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/ChronoLocalDateTime;

    move-result-object v5

    move-object v1, v5

    .end local v1    # "this":Ljava/time/chrono/ChronoLocalDateTime;, "Ljava/time/chrono/ChronoLocalDateTime<TD;>;"
    return-object v1
.end method

.method public bridge synthetic minus(Ljava/time/temporal/TemporalAmount;)Ljava/time/temporal/Temporal;
    .locals 4

    .prologue
    .line 93
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/ChronoLocalDateTime;, "Ljava/time/chrono/ChronoLocalDateTime<TD;>;"
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/time/chrono/ChronoLocalDateTime;->minus(Ljava/time/temporal/TemporalAmount;)Ljava/time/chrono/ChronoLocalDateTime;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljava/time/chrono/ChronoLocalDateTime;, "Ljava/time/chrono/ChronoLocalDateTime<TD;>;"
    return-object v0
.end method

.method public abstract plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/ChronoLocalDateTime;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/time/temporal/TemporalUnit;",
            ")",
            "Ljava/time/chrono/ChronoLocalDateTime",
            "<TD;>;"
        }
    .end annotation
.end method

.method public plus(Ljava/time/temporal/TemporalAmount;)Ljava/time/chrono/ChronoLocalDateTime;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/time/temporal/TemporalAmount;",
            ")",
            "Ljava/time/chrono/ChronoLocalDateTime",
            "<TD;>;"
        }
    .end annotation

    .prologue
    .line 206
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/ChronoLocalDateTime;, "Ljava/time/chrono/ChronoLocalDateTime<TD;>;"
    move-object v1, p1

    .local v1, "amount":Ljava/time/temporal/TemporalAmount;
    move-object v2, v0

    invoke-virtual {v2}, Ljava/time/chrono/ChronoLocalDateTime;->toLocalDate()Ljava/time/chrono/AbstractChronoLocalDate;

    move-result-object v2

    invoke-virtual {v2}, Ljava/time/chrono/AbstractChronoLocalDate;->getChronology()Ljava/time/chrono/AbstractChronology;

    move-result-object v2

    move-object v3, v0

    move-object v4, v1

    invoke-super {v3, v4}, Ljava/time/jdk8/DefaultInterfaceTemporal;->plus(Ljava/time/temporal/TemporalAmount;)Ljava/time/temporal/Temporal;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/time/chrono/AbstractChronology;->ensureChronoLocalDateTime(Ljava/time/temporal/Temporal;)Ljava/time/chrono/ChronoLocalDateTimeImpl;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljava/time/chrono/ChronoLocalDateTime;, "Ljava/time/chrono/ChronoLocalDateTime<TD;>;"
    return-object v0
.end method

.method public bridge synthetic plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/temporal/Temporal;
    .locals 9

    .prologue
    .line 93
    move-object v1, p0

    .local v1, "this":Ljava/time/chrono/ChronoLocalDateTime;, "Ljava/time/chrono/ChronoLocalDateTime<TD;>;"
    move-wide v2, p1

    move-object v4, p3

    move-object v5, v1

    move-wide v6, v2

    move-object v8, v4

    invoke-virtual {v5, v6, v7, v8}, Ljava/time/chrono/ChronoLocalDateTime;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/ChronoLocalDateTime;

    move-result-object v5

    move-object v1, v5

    .end local v1    # "this":Ljava/time/chrono/ChronoLocalDateTime;, "Ljava/time/chrono/ChronoLocalDateTime<TD;>;"
    return-object v1
.end method

.method public bridge synthetic plus(Ljava/time/temporal/TemporalAmount;)Ljava/time/temporal/Temporal;
    .locals 4

    .prologue
    .line 93
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/ChronoLocalDateTime;, "Ljava/time/chrono/ChronoLocalDateTime<TD;>;"
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/time/chrono/ChronoLocalDateTime;->plus(Ljava/time/temporal/TemporalAmount;)Ljava/time/chrono/ChronoLocalDateTime;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljava/time/chrono/ChronoLocalDateTime;, "Ljava/time/chrono/ChronoLocalDateTime<TD;>;"
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
    .line 226
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/ChronoLocalDateTime;, "Ljava/time/chrono/ChronoLocalDateTime<TD;>;"
    move-object v1, p1

    .local v1, "query":Ljava/time/temporal/TemporalQuery;, "Ljava/time/temporal/TemporalQuery<TR;>;"
    move-object v2, v1

    invoke-static {}, Ljava/time/temporal/TemporalQueries;->chronology()Ljava/time/temporal/TemporalQuery;

    move-result-object v3

    if-ne v2, v3, :cond_0

    .line 227
    move-object v2, v0

    invoke-virtual {v2}, Ljava/time/chrono/ChronoLocalDateTime;->getChronology()Ljava/time/chrono/Chronology;

    move-result-object v2

    move-object v0, v2

    .line 237
    .end local v0    # "this":Ljava/time/chrono/ChronoLocalDateTime;, "Ljava/time/chrono/ChronoLocalDateTime<TD;>;"
    :goto_0
    return-object v0

    .line 228
    .restart local v0    # "this":Ljava/time/chrono/ChronoLocalDateTime;, "Ljava/time/chrono/ChronoLocalDateTime<TD;>;"
    :cond_0
    move-object v2, v1

    invoke-static {}, Ljava/time/temporal/TemporalQueries;->precision()Ljava/time/temporal/TemporalQuery;

    move-result-object v3

    if-ne v2, v3, :cond_1

    .line 229
    sget-object v2, Ljava/time/temporal/ChronoUnit;->NANOS:Ljava/time/temporal/ChronoUnit;

    move-object v0, v2

    goto :goto_0

    .line 230
    :cond_1
    move-object v2, v1

    invoke-static {}, Ljava/time/temporal/TemporalQueries;->localDate()Ljava/time/temporal/TemporalQuery;

    move-result-object v3

    if-ne v2, v3, :cond_2

    .line 231
    move-object v2, v0

    invoke-virtual {v2}, Ljava/time/chrono/ChronoLocalDateTime;->toLocalDate()Ljava/time/chrono/AbstractChronoLocalDate;

    move-result-object v2

    invoke-virtual {v2}, Ljava/time/chrono/AbstractChronoLocalDate;->toEpochDay()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/time/LocalDate;->ofEpochDay(J)Ljava/time/LocalDate;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 232
    :cond_2
    move-object v2, v1

    invoke-static {}, Ljava/time/temporal/TemporalQueries;->localTime()Ljava/time/temporal/TemporalQuery;

    move-result-object v3

    if-ne v2, v3, :cond_3

    .line 233
    move-object v2, v0

    invoke-virtual {v2}, Ljava/time/chrono/ChronoLocalDateTime;->toLocalTime()Ljava/time/LocalTime;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 234
    :cond_3
    move-object v2, v1

    invoke-static {}, Ljava/time/temporal/TemporalQueries;->zone()Ljava/time/temporal/TemporalQuery;

    move-result-object v3

    if-eq v2, v3, :cond_4

    move-object v2, v1

    invoke-static {}, Ljava/time/temporal/TemporalQueries;->zoneId()Ljava/time/temporal/TemporalQuery;

    move-result-object v3

    if-eq v2, v3, :cond_4

    move-object v2, v1

    invoke-static {}, Ljava/time/temporal/TemporalQueries;->offset()Ljava/time/temporal/TemporalQuery;

    move-result-object v3

    if-ne v2, v3, :cond_5

    .line 235
    :cond_4
    const/4 v2, 0x0

    move-object v0, v2

    goto :goto_0

    .line 237
    :cond_5
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Ljava/time/jdk8/DefaultInterfaceTemporal;->query(Ljava/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    goto :goto_0
.end method

.method public toEpochSecond(Ljava/time/ZoneOffset;)J
    .locals 10

    .prologue
    .line 322
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/ChronoLocalDateTime;, "Ljava/time/chrono/ChronoLocalDateTime<TD;>;"
    move-object v1, p1

    .local v1, "offset":Ljava/time/ZoneOffset;
    move-object v6, v1

    const-string v7, "offset"

    invoke-static {v6, v7}, Ljava/time/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 323
    move-object v6, v0

    invoke-virtual {v6}, Ljava/time/chrono/ChronoLocalDateTime;->toLocalDate()Ljava/time/chrono/AbstractChronoLocalDate;

    move-result-object v6

    invoke-virtual {v6}, Ljava/time/chrono/AbstractChronoLocalDate;->toEpochDay()J

    move-result-wide v6

    move-wide v2, v6

    .line 324
    .local v2, "epochDay":J
    move-wide v6, v2

    const-wide/32 v8, 0x15180

    mul-long/2addr v6, v8

    move-object v8, v0

    invoke-virtual {v8}, Ljava/time/chrono/ChronoLocalDateTime;->toLocalTime()Ljava/time/LocalTime;

    move-result-object v8

    invoke-virtual {v8}, Ljava/time/LocalTime;->toSecondOfDay()I

    move-result v8

    int-to-long v8, v8

    add-long/2addr v6, v8

    move-wide v4, v6

    .line 325
    .local v4, "secs":J
    move-wide v6, v4

    move-object v8, v1

    invoke-virtual {v8}, Ljava/time/ZoneOffset;->getTotalSeconds()I

    move-result v8

    int-to-long v8, v8

    sub-long/2addr v6, v8

    move-wide v4, v6

    .line 326
    move-wide v6, v4

    move-wide v0, v6

    .end local v0    # "this":Ljava/time/chrono/ChronoLocalDateTime;, "Ljava/time/chrono/ChronoLocalDateTime<TD;>;"
    return-wide v0
.end method

.method public toInstant(Ljava/time/ZoneOffset;)Ljava/time/Instant;
    .locals 6

    .prologue
    .line 307
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/ChronoLocalDateTime;, "Ljava/time/chrono/ChronoLocalDateTime<TD;>;"
    move-object v1, p1

    .local v1, "offset":Ljava/time/ZoneOffset;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/time/chrono/ChronoLocalDateTime;->toEpochSecond(Ljava/time/ZoneOffset;)J

    move-result-wide v2

    move-object v4, v0

    invoke-virtual {v4}, Ljava/time/chrono/ChronoLocalDateTime;->toLocalTime()Ljava/time/LocalTime;

    move-result-object v4

    invoke-virtual {v4}, Ljava/time/LocalTime;->getNano()I

    move-result v4

    int-to-long v4, v4

    invoke-static {v2, v3, v4, v5}, Ljava/time/Instant;->ofEpochSecond(JJ)Ljava/time/Instant;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljava/time/chrono/ChronoLocalDateTime;, "Ljava/time/chrono/ChronoLocalDateTime<TD;>;"
    return-object v0
.end method

.method public abstract toLocalDate()Ljava/time/chrono/AbstractChronoLocalDate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TD;"
        }
    .end annotation
.end method

.method public abstract toLocalTime()Ljava/time/LocalTime;
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 459
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/ChronoLocalDateTime;, "Ljava/time/chrono/ChronoLocalDateTime<TD;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object v2, v0

    invoke-virtual {v2}, Ljava/time/chrono/ChronoLocalDateTime;->toLocalDate()Ljava/time/chrono/AbstractChronoLocalDate;

    move-result-object v2

    invoke-virtual {v2}, Ljava/time/chrono/AbstractChronoLocalDate;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x54

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    invoke-virtual {v2}, Ljava/time/chrono/ChronoLocalDateTime;->toLocalTime()Ljava/time/LocalTime;

    move-result-object v2

    invoke-virtual {v2}, Ljava/time/LocalTime;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljava/time/chrono/ChronoLocalDateTime;, "Ljava/time/chrono/ChronoLocalDateTime<TD;>;"
    return-object v0
.end method

.method public with(Ljava/time/temporal/TemporalAdjuster;)Ljava/time/chrono/ChronoLocalDateTime;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/time/temporal/TemporalAdjuster;",
            ")",
            "Ljava/time/chrono/ChronoLocalDateTime",
            "<TD;>;"
        }
    .end annotation

    .prologue
    .line 198
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/ChronoLocalDateTime;, "Ljava/time/chrono/ChronoLocalDateTime<TD;>;"
    move-object v1, p1

    .local v1, "adjuster":Ljava/time/temporal/TemporalAdjuster;
    move-object v2, v0

    invoke-virtual {v2}, Ljava/time/chrono/ChronoLocalDateTime;->toLocalDate()Ljava/time/chrono/AbstractChronoLocalDate;

    move-result-object v2

    invoke-virtual {v2}, Ljava/time/chrono/AbstractChronoLocalDate;->getChronology()Ljava/time/chrono/AbstractChronology;

    move-result-object v2

    move-object v3, v0

    move-object v4, v1

    invoke-super {v3, v4}, Ljava/time/jdk8/DefaultInterfaceTemporal;->with(Ljava/time/temporal/TemporalAdjuster;)Ljava/time/temporal/Temporal;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/time/chrono/AbstractChronology;->ensureChronoLocalDateTime(Ljava/time/temporal/Temporal;)Ljava/time/chrono/ChronoLocalDateTimeImpl;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljava/time/chrono/ChronoLocalDateTime;, "Ljava/time/chrono/ChronoLocalDateTime<TD;>;"
    return-object v0
.end method

.method public abstract with(Ljava/time/temporal/TemporalField;J)Ljava/time/chrono/ChronoLocalDateTime;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/time/temporal/TemporalField;",
            "J)",
            "Ljava/time/chrono/ChronoLocalDateTime",
            "<TD;>;"
        }
    .end annotation
.end method

.method public bridge synthetic with(Ljava/time/temporal/TemporalAdjuster;)Ljava/time/temporal/Temporal;
    .locals 4

    .prologue
    .line 93
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/ChronoLocalDateTime;, "Ljava/time/chrono/ChronoLocalDateTime<TD;>;"
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/time/chrono/ChronoLocalDateTime;->with(Ljava/time/temporal/TemporalAdjuster;)Ljava/time/chrono/ChronoLocalDateTime;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljava/time/chrono/ChronoLocalDateTime;, "Ljava/time/chrono/ChronoLocalDateTime<TD;>;"
    return-object v0
.end method

.method public bridge synthetic with(Ljava/time/temporal/TemporalField;J)Ljava/time/temporal/Temporal;
    .locals 8

    .prologue
    .line 93
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/ChronoLocalDateTime;, "Ljava/time/chrono/ChronoLocalDateTime<TD;>;"
    move-object v1, p1

    move-wide v2, p2

    move-object v4, v0

    move-object v5, v1

    move-wide v6, v2

    invoke-virtual {v4, v5, v6, v7}, Ljava/time/chrono/ChronoLocalDateTime;->with(Ljava/time/temporal/TemporalField;J)Ljava/time/chrono/ChronoLocalDateTime;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Ljava/time/chrono/ChronoLocalDateTime;, "Ljava/time/chrono/ChronoLocalDateTime<TD;>;"
    return-object v0
.end method
