.class public final Ljava/time/chrono/IsoChronology;
.super Ljava/time/chrono/AbstractChronology;
.source "IsoChronology.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final INSTANCE:Ljava/time/chrono/IsoChronology;

.field private static final serialVersionUID:J = -0x13fd57b046d9ef27L


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 104
    new-instance v0, Ljava/time/chrono/IsoChronology;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljava/time/chrono/IsoChronology;-><init>()V

    sput-object v0, Ljava/time/chrono/IsoChronology;->INSTANCE:Ljava/time/chrono/IsoChronology;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 114
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/IsoChronology;
    move-object v1, v0

    invoke-direct {v1}, Ljava/time/chrono/AbstractChronology;-><init>()V

    .line 115
    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 123
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/IsoChronology;
    sget-object v1, Ljava/time/chrono/IsoChronology;->INSTANCE:Ljava/time/chrono/IsoChronology;

    move-object v0, v1

    .end local v0    # "this":Ljava/time/chrono/IsoChronology;
    return-object v0
.end method


# virtual methods
.method public date(III)Ljava/time/LocalDate;
    .locals 7

    .prologue
    .line 189
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/IsoChronology;
    move v1, p1

    .local v1, "prolepticYear":I
    move v2, p2

    .local v2, "month":I
    move v3, p3

    .local v3, "dayOfMonth":I
    move v4, v1

    move v5, v2

    move v6, v3

    invoke-static {v4, v5, v6}, Ljava/time/LocalDate;->of(III)Ljava/time/LocalDate;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Ljava/time/chrono/IsoChronology;
    return-object v0
.end method

.method public date(Ljava/time/chrono/Era;III)Ljava/time/LocalDate;
    .locals 9

    .prologue
    .line 172
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/IsoChronology;
    move-object v1, p1

    .local v1, "era":Ljava/time/chrono/Era;
    move v2, p2

    .local v2, "yearOfEra":I
    move v3, p3

    .local v3, "month":I
    move v4, p4

    .local v4, "dayOfMonth":I
    move-object v5, v0

    move-object v6, v0

    move-object v7, v1

    move v8, v2

    invoke-virtual {v6, v7, v8}, Ljava/time/chrono/IsoChronology;->prolepticYear(Ljava/time/chrono/Era;I)I

    move-result v6

    move v7, v3

    move v8, v4

    invoke-virtual {v5, v6, v7, v8}, Ljava/time/chrono/IsoChronology;->date(III)Ljava/time/LocalDate;

    move-result-object v5

    move-object v0, v5

    .end local v0    # "this":Ljava/time/chrono/IsoChronology;
    return-object v0
.end method

.method public date(Ljava/time/temporal/TemporalAccessor;)Ljava/time/LocalDate;
    .locals 3

    .prologue
    .line 238
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/IsoChronology;
    move-object v1, p1

    .local v1, "temporal":Ljava/time/temporal/TemporalAccessor;
    move-object v2, v1

    invoke-static {v2}, Ljava/time/LocalDate;->from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/LocalDate;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljava/time/chrono/IsoChronology;
    return-object v0
.end method

.method public bridge synthetic date(III)Ljava/time/chrono/AbstractChronoLocalDate;
    .locals 8

    .prologue
    .line 99
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/IsoChronology;
    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, v0

    move v5, v1

    move v6, v2

    move v7, v3

    invoke-virtual {v4, v5, v6, v7}, Ljava/time/chrono/IsoChronology;->date(III)Ljava/time/LocalDate;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Ljava/time/chrono/IsoChronology;
    return-object v0
.end method

.method public bridge synthetic date(Ljava/time/chrono/Era;III)Ljava/time/chrono/AbstractChronoLocalDate;
    .locals 10

    .prologue
    .line 99
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/IsoChronology;
    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, v0

    move-object v6, v1

    move v7, v2

    move v8, v3

    move v9, v4

    invoke-virtual {v5, v6, v7, v8, v9}, Ljava/time/chrono/IsoChronology;->date(Ljava/time/chrono/Era;III)Ljava/time/LocalDate;

    move-result-object v5

    move-object v0, v5

    .end local v0    # "this":Ljava/time/chrono/IsoChronology;
    return-object v0
.end method

.method public bridge synthetic date(Ljava/time/temporal/TemporalAccessor;)Ljava/time/chrono/AbstractChronoLocalDate;
    .locals 4

    .prologue
    .line 99
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/IsoChronology;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/time/chrono/IsoChronology;->date(Ljava/time/temporal/TemporalAccessor;)Ljava/time/LocalDate;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljava/time/chrono/IsoChronology;
    return-object v0
.end method

.method public bridge synthetic date(Ljava/time/temporal/TemporalAccessor;)Ljava/time/chrono/ChronoLocalDate;
    .locals 4

    .prologue
    .line 99
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/IsoChronology;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/time/chrono/IsoChronology;->date(Ljava/time/temporal/TemporalAccessor;)Ljava/time/LocalDate;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljava/time/chrono/IsoChronology;
    return-object v0
.end method

.method public dateEpochDay(J)Ljava/time/LocalDate;
    .locals 7

    .prologue
    .line 223
    move-object v1, p0

    .local v1, "this":Ljava/time/chrono/IsoChronology;
    move-wide v2, p1

    .local v2, "epochDay":J
    move-wide v4, v2

    invoke-static {v4, v5}, Ljava/time/LocalDate;->ofEpochDay(J)Ljava/time/LocalDate;

    move-result-object v4

    move-object v1, v4

    .end local v1    # "this":Ljava/time/chrono/IsoChronology;
    return-object v1
.end method

.method public bridge synthetic dateEpochDay(J)Ljava/time/chrono/AbstractChronoLocalDate;
    .locals 7

    .prologue
    .line 99
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/IsoChronology;
    move-wide v1, p1

    move-object v3, v0

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljava/time/chrono/IsoChronology;->dateEpochDay(J)Ljava/time/LocalDate;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Ljava/time/chrono/IsoChronology;
    return-object v0
.end method

.method public dateNow()Ljava/time/LocalDate;
    .locals 3

    .prologue
    .line 299
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/IsoChronology;
    move-object v1, v0

    invoke-static {}, Ljava/time/Clock;->systemDefaultZone()Ljava/time/Clock;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/time/chrono/IsoChronology;->dateNow(Ljava/time/Clock;)Ljava/time/LocalDate;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljava/time/chrono/IsoChronology;
    return-object v0
.end method

.method public dateNow(Ljava/time/Clock;)Ljava/time/LocalDate;
    .locals 4

    .prologue
    .line 332
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/IsoChronology;
    move-object v1, p1

    .local v1, "clock":Ljava/time/Clock;
    move-object v2, v1

    const-string v3, "clock"

    invoke-static {v2, v3}, Ljava/time/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 333
    move-object v2, v0

    move-object v3, v1

    invoke-static {v3}, Ljava/time/LocalDate;->now(Ljava/time/Clock;)Ljava/time/LocalDate;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/time/chrono/IsoChronology;->date(Ljava/time/temporal/TemporalAccessor;)Ljava/time/LocalDate;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljava/time/chrono/IsoChronology;
    return-object v0
.end method

.method public dateNow(Ljava/time/ZoneId;)Ljava/time/LocalDate;
    .locals 4

    .prologue
    .line 316
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/IsoChronology;
    move-object v1, p1

    .local v1, "zone":Ljava/time/ZoneId;
    move-object v2, v0

    move-object v3, v1

    invoke-static {v3}, Ljava/time/Clock;->system(Ljava/time/ZoneId;)Ljava/time/Clock;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/time/chrono/IsoChronology;->dateNow(Ljava/time/Clock;)Ljava/time/LocalDate;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljava/time/chrono/IsoChronology;
    return-object v0
.end method

.method public bridge synthetic dateNow()Ljava/time/chrono/AbstractChronoLocalDate;
    .locals 2

    .prologue
    .line 99
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/IsoChronology;
    move-object v1, v0

    invoke-virtual {v1}, Ljava/time/chrono/IsoChronology;->dateNow()Ljava/time/LocalDate;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljava/time/chrono/IsoChronology;
    return-object v0
.end method

.method public bridge synthetic dateNow(Ljava/time/Clock;)Ljava/time/chrono/AbstractChronoLocalDate;
    .locals 4

    .prologue
    .line 99
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/IsoChronology;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/time/chrono/IsoChronology;->dateNow(Ljava/time/Clock;)Ljava/time/LocalDate;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljava/time/chrono/IsoChronology;
    return-object v0
.end method

.method public bridge synthetic dateNow(Ljava/time/ZoneId;)Ljava/time/chrono/AbstractChronoLocalDate;
    .locals 4

    .prologue
    .line 99
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/IsoChronology;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/time/chrono/IsoChronology;->dateNow(Ljava/time/ZoneId;)Ljava/time/LocalDate;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljava/time/chrono/IsoChronology;
    return-object v0
.end method

.method public dateYearDay(II)Ljava/time/LocalDate;
    .locals 5

    .prologue
    .line 218
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/IsoChronology;
    move v1, p1

    .local v1, "prolepticYear":I
    move v2, p2

    .local v2, "dayOfYear":I
    move v3, v1

    move v4, v2

    invoke-static {v3, v4}, Ljava/time/LocalDate;->ofYearDay(II)Ljava/time/LocalDate;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Ljava/time/chrono/IsoChronology;
    return-object v0
.end method

.method public dateYearDay(Ljava/time/chrono/Era;II)Ljava/time/LocalDate;
    .locals 8

    .prologue
    .line 203
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/IsoChronology;
    move-object v1, p1

    .local v1, "era":Ljava/time/chrono/Era;
    move v2, p2

    .local v2, "yearOfEra":I
    move v3, p3

    .local v3, "dayOfYear":I
    move-object v4, v0

    move-object v5, v0

    move-object v6, v1

    move v7, v2

    invoke-virtual {v5, v6, v7}, Ljava/time/chrono/IsoChronology;->prolepticYear(Ljava/time/chrono/Era;I)I

    move-result v5

    move v6, v3

    invoke-virtual {v4, v5, v6}, Ljava/time/chrono/IsoChronology;->dateYearDay(II)Ljava/time/LocalDate;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Ljava/time/chrono/IsoChronology;
    return-object v0
.end method

.method public bridge synthetic dateYearDay(II)Ljava/time/chrono/AbstractChronoLocalDate;
    .locals 6

    .prologue
    .line 99
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/IsoChronology;
    move v1, p1

    move v2, p2

    move-object v3, v0

    move v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Ljava/time/chrono/IsoChronology;->dateYearDay(II)Ljava/time/LocalDate;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Ljava/time/chrono/IsoChronology;
    return-object v0
.end method

.method public bridge synthetic dateYearDay(Ljava/time/chrono/Era;II)Ljava/time/chrono/AbstractChronoLocalDate;
    .locals 8

    .prologue
    .line 99
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/IsoChronology;
    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, v0

    move-object v5, v1

    move v6, v2

    move v7, v3

    invoke-virtual {v4, v5, v6, v7}, Ljava/time/chrono/IsoChronology;->dateYearDay(Ljava/time/chrono/Era;II)Ljava/time/LocalDate;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Ljava/time/chrono/IsoChronology;
    return-object v0
.end method

.method public bridge synthetic eraOf(I)Ljava/time/chrono/Era;
    .locals 4

    .prologue
    .line 99
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/IsoChronology;
    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Ljava/time/chrono/IsoChronology;->eraOf(I)Ljava/time/chrono/IsoEra;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljava/time/chrono/IsoChronology;
    return-object v0
.end method

.method public eraOf(I)Ljava/time/chrono/IsoEra;
    .locals 3

    .prologue
    .line 371
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/IsoChronology;
    move v1, p1

    .local v1, "eraValue":I
    move v2, v1

    invoke-static {v2}, Ljava/time/chrono/IsoEra;->of(I)Ljava/time/chrono/IsoEra;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljava/time/chrono/IsoChronology;
    return-object v0
.end method

.method public eras()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/time/chrono/Era;",
            ">;"
        }
    .end annotation

    .prologue
    .line 376
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/IsoChronology;
    invoke-static {}, Ljava/time/chrono/IsoEra;->values()[Ljava/time/chrono/IsoEra;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljava/time/chrono/IsoChronology;
    return-object v0
.end method

.method public getCalendarType()Ljava/lang/String;
    .locals 2

    .prologue
    .line 155
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/IsoChronology;
    const-string v1, "iso8601"

    move-object v0, v1

    .end local v0    # "this":Ljava/time/chrono/IsoChronology;
    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 138
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/IsoChronology;
    const-string v1, "ISO"

    move-object v0, v1

    .end local v0    # "this":Ljava/time/chrono/IsoChronology;
    return-object v0
.end method

.method public isLeapYear(J)Z
    .locals 9

    .prologue
    .line 358
    move-object v1, p0

    .local v1, "this":Ljava/time/chrono/IsoChronology;
    move-wide v2, p1

    .local v2, "prolepticYear":J
    move-wide v4, v2

    const-wide/16 v6, 0x3

    and-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_1

    move-wide v4, v2

    const-wide/16 v6, 0x64

    rem-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    move-wide v4, v2

    const-wide/16 v6, 0x190

    rem-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_1

    :cond_0
    const/4 v4, 0x1

    :goto_0
    move v1, v4

    .end local v1    # "this":Ljava/time/chrono/IsoChronology;
    return v1

    .restart local v1    # "this":Ljava/time/chrono/IsoChronology;
    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public localDateTime(Ljava/time/temporal/TemporalAccessor;)Ljava/time/LocalDateTime;
    .locals 3

    .prologue
    .line 252
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/IsoChronology;
    move-object v1, p1

    .local v1, "temporal":Ljava/time/temporal/TemporalAccessor;
    move-object v2, v1

    invoke-static {v2}, Ljava/time/LocalDateTime;->from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/LocalDateTime;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljava/time/chrono/IsoChronology;
    return-object v0
.end method

.method public bridge synthetic localDateTime(Ljava/time/temporal/TemporalAccessor;)Ljava/time/chrono/ChronoLocalDateTime;
    .locals 4

    .prologue
    .line 99
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/IsoChronology;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/time/chrono/IsoChronology;->localDateTime(Ljava/time/temporal/TemporalAccessor;)Ljava/time/LocalDateTime;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljava/time/chrono/IsoChronology;
    return-object v0
.end method

.method public prolepticYear(Ljava/time/chrono/Era;I)I
    .locals 7

    .prologue
    .line 363
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/IsoChronology;
    move-object v1, p1

    .local v1, "era":Ljava/time/chrono/Era;
    move v2, p2

    .local v2, "yearOfEra":I
    move-object v3, v1

    instance-of v3, v3, Ljava/time/chrono/IsoEra;

    if-nez v3, :cond_0

    .line 364
    new-instance v3, Ljava/lang/ClassCastException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string v5, "Era must be IsoEra"

    invoke-direct {v4, v5}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 366
    :cond_0
    move-object v3, v1

    sget-object v4, Ljava/time/chrono/IsoEra;->CE:Ljava/time/chrono/IsoEra;

    if-ne v3, v4, :cond_1

    move v3, v2

    :goto_0
    move v0, v3

    .end local v0    # "this":Ljava/time/chrono/IsoChronology;
    return v0

    .restart local v0    # "this":Ljava/time/chrono/IsoChronology;
    :cond_1
    const/4 v3, 0x1

    move v4, v2

    rsub-int/lit8 v3, v4, 0x1

    goto :goto_0
.end method

.method public range(Ljava/time/temporal/ChronoField;)Ljava/time/temporal/ValueRange;
    .locals 3

    .prologue
    .line 382
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/IsoChronology;
    move-object v1, p1

    .local v1, "field":Ljava/time/temporal/ChronoField;
    move-object v2, v1

    invoke-virtual {v2}, Ljava/time/temporal/ChronoField;->range()Ljava/time/temporal/ValueRange;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljava/time/chrono/IsoChronology;
    return-object v0
.end method

.method public resolveDate(Ljava/util/Map;Ljava/time/format/ResolverStyle;)Ljava/time/LocalDate;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/time/temporal/TemporalField;",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/time/format/ResolverStyle;",
            ")",
            "Ljava/time/LocalDate;"
        }
    .end annotation

    .prologue
    .line 387
    move-object/from16 v0, p0

    .local v0, "this":Ljava/time/chrono/IsoChronology;
    move-object/from16 v1, p1

    .local v1, "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/time/temporal/TemporalField;Ljava/lang/Long;>;"
    move-object/from16 v2, p2

    .local v2, "resolverStyle":Ljava/time/format/ResolverStyle;
    move-object v12, v1

    sget-object v13, Ljava/time/temporal/ChronoField;->EPOCH_DAY:Ljava/time/temporal/ChronoField;

    invoke-interface {v12, v13}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 388
    move-object v12, v1

    sget-object v13, Ljava/time/temporal/ChronoField;->EPOCH_DAY:Ljava/time/temporal/ChronoField;

    invoke-interface {v12, v13}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Long;

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/time/LocalDate;->ofEpochDay(J)Ljava/time/LocalDate;

    move-result-object v12

    move-object v0, v12

    .line 535
    .end local v0    # "this":Ljava/time/chrono/IsoChronology;
    :goto_0
    return-object v0

    .line 392
    .restart local v0    # "this":Ljava/time/chrono/IsoChronology;
    :cond_0
    move-object v12, v1

    sget-object v13, Ljava/time/temporal/ChronoField;->PROLEPTIC_MONTH:Ljava/time/temporal/ChronoField;

    invoke-interface {v12, v13}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Long;

    move-object v3, v12

    .line 393
    .local v3, "prolepticMonth":Ljava/lang/Long;
    move-object v12, v3

    if-eqz v12, :cond_2

    .line 394
    move-object v12, v2

    sget-object v13, Ljava/time/format/ResolverStyle;->LENIENT:Ljava/time/format/ResolverStyle;

    if-eq v12, v13, :cond_1

    .line 395
    sget-object v12, Ljava/time/temporal/ChronoField;->PROLEPTIC_MONTH:Ljava/time/temporal/ChronoField;

    move-object v13, v3

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    invoke-virtual {v12, v13, v14}, Ljava/time/temporal/ChronoField;->checkValidValue(J)J

    move-result-wide v12

    .line 397
    :cond_1
    move-object v12, v0

    move-object v13, v1

    sget-object v14, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    move-object v15, v3

    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v15

    const/16 v17, 0xc

    invoke-static/range {v15 .. v17}, Ljava/time/jdk8/Jdk8Methods;->floorMod(JI)I

    move-result v15

    const/16 v16, 0x1

    add-int/lit8 v15, v15, 0x1

    int-to-long v15, v15

    invoke-virtual/range {v12 .. v16}, Ljava/time/chrono/IsoChronology;->updateResolveMap(Ljava/util/Map;Ljava/time/temporal/ChronoField;J)V

    .line 398
    move-object v12, v0

    move-object v13, v1

    sget-object v14, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    move-object v15, v3

    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v15

    const-wide/16 v17, 0xc

    invoke-static/range {v15 .. v18}, Ljava/time/jdk8/Jdk8Methods;->floorDiv(JJ)J

    move-result-wide v15

    invoke-virtual/range {v12 .. v16}, Ljava/time/chrono/IsoChronology;->updateResolveMap(Ljava/util/Map;Ljava/time/temporal/ChronoField;J)V

    .line 402
    :cond_2
    move-object v12, v1

    sget-object v13, Ljava/time/temporal/ChronoField;->YEAR_OF_ERA:Ljava/time/temporal/ChronoField;

    invoke-interface {v12, v13}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Long;

    move-object v4, v12

    .line 403
    .local v4, "yoeLong":Ljava/lang/Long;
    move-object v12, v4

    if-eqz v12, :cond_d

    .line 404
    move-object v12, v2

    sget-object v13, Ljava/time/format/ResolverStyle;->LENIENT:Ljava/time/format/ResolverStyle;

    if-eq v12, v13, :cond_3

    .line 405
    sget-object v12, Ljava/time/temporal/ChronoField;->YEAR_OF_ERA:Ljava/time/temporal/ChronoField;

    move-object v13, v4

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    invoke-virtual {v12, v13, v14}, Ljava/time/temporal/ChronoField;->checkValidValue(J)J

    move-result-wide v12

    .line 407
    :cond_3
    move-object v12, v1

    sget-object v13, Ljava/time/temporal/ChronoField;->ERA:Ljava/time/temporal/ChronoField;

    invoke-interface {v12, v13}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Long;

    move-object v5, v12

    .line 408
    .local v5, "era":Ljava/lang/Long;
    move-object v12, v5

    if-nez v12, :cond_a

    .line 409
    move-object v12, v1

    sget-object v13, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface {v12, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Long;

    move-object v6, v12

    .line 410
    .local v6, "year":Ljava/lang/Long;
    move-object v12, v2

    sget-object v13, Ljava/time/format/ResolverStyle;->STRICT:Ljava/time/format/ResolverStyle;

    if-ne v12, v13, :cond_7

    .line 412
    move-object v12, v6

    if-eqz v12, :cond_6

    .line 413
    move-object v12, v0

    move-object v13, v1

    sget-object v14, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    move-object v15, v6

    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v15

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-lez v15, :cond_5

    move-object v15, v4

    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v15

    :goto_1
    invoke-virtual/range {v12 .. v16}, Ljava/time/chrono/IsoChronology;->updateResolveMap(Ljava/util/Map;Ljava/time/temporal/ChronoField;J)V

    .line 422
    .line 429
    .line 434
    .end local v5    # "era":Ljava/lang/Long;
    .end local v6    # "year":Ljava/lang/Long;
    :cond_4
    :goto_2
    move-object v12, v1

    sget-object v13, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface {v12, v13}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_21

    .line 435
    move-object v12, v1

    sget-object v13, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface {v12, v13}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_19

    .line 436
    move-object v12, v1

    sget-object v13, Ljava/time/temporal/ChronoField;->DAY_OF_MONTH:Ljava/time/temporal/ChronoField;

    invoke-interface {v12, v13}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_13

    .line 437
    sget-object v12, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    move-object v13, v1

    sget-object v14, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface {v13, v14}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Long;

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    invoke-virtual {v12, v13, v14}, Ljava/time/temporal/ChronoField;->checkValidIntValue(J)I

    move-result v12

    move v5, v12

    .line 438
    .local v5, "y":I
    move-object v12, v1

    sget-object v13, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface {v12, v13}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Long;

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/time/jdk8/Jdk8Methods;->safeToInt(J)I

    move-result v12

    move v6, v12

    .line 439
    .local v6, "moy":I
    move-object v12, v1

    sget-object v13, Ljava/time/temporal/ChronoField;->DAY_OF_MONTH:Ljava/time/temporal/ChronoField;

    invoke-interface {v12, v13}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Long;

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/time/jdk8/Jdk8Methods;->safeToInt(J)I

    move-result v12

    move v7, v12

    .line 440
    .local v7, "dom":I
    move-object v12, v2

    sget-object v13, Ljava/time/format/ResolverStyle;->LENIENT:Ljava/time/format/ResolverStyle;

    if-ne v12, v13, :cond_e

    .line 441
    move v12, v6

    const/4 v13, 0x1

    invoke-static {v12, v13}, Ljava/time/jdk8/Jdk8Methods;->safeSubtract(II)I

    move-result v12

    int-to-long v12, v12

    move-wide v8, v12

    .line 442
    .local v8, "months":J
    move v12, v7

    const/4 v13, 0x1

    invoke-static {v12, v13}, Ljava/time/jdk8/Jdk8Methods;->safeSubtract(II)I

    move-result v12

    int-to-long v12, v12

    move-wide v10, v12

    .line 443
    .local v10, "days":J
    move v12, v5

    const/4 v13, 0x1

    const/4 v14, 0x1

    invoke-static {v12, v13, v14}, Ljava/time/LocalDate;->of(III)Ljava/time/LocalDate;

    move-result-object v12

    move-wide v13, v8

    invoke-virtual {v12, v13, v14}, Ljava/time/LocalDate;->plusMonths(J)Ljava/time/LocalDate;

    move-result-object v12

    move-wide v13, v10

    invoke-virtual {v12, v13, v14}, Ljava/time/LocalDate;->plusDays(J)Ljava/time/LocalDate;

    move-result-object v12

    move-object v0, v12

    goto/16 :goto_0

    .line 413
    .end local v7    # "dom":I
    .end local v8    # "months":J
    .end local v10    # "days":J
    .local v5, "era":Ljava/lang/Long;
    .local v6, "year":Ljava/lang/Long;
    :cond_5
    const-wide/16 v15, 0x1

    move-object/from16 v17, v4

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Long;->longValue()J

    move-result-wide v17

    invoke-static/range {v15 .. v18}, Ljava/time/jdk8/Jdk8Methods;->safeSubtract(JJ)J

    move-result-wide v15

    goto/16 :goto_1

    .line 416
    :cond_6
    move-object v12, v1

    sget-object v13, Ljava/time/temporal/ChronoField;->YEAR_OF_ERA:Ljava/time/temporal/ChronoField;

    move-object v14, v4

    invoke-interface {v12, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    goto/16 :goto_2

    .line 420
    :cond_7
    move-object v12, v0

    move-object v13, v1

    sget-object v14, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    move-object v15, v6

    if-eqz v15, :cond_8

    move-object v15, v6

    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v15

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-lez v15, :cond_9

    :cond_8
    move-object v15, v4

    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v15

    :goto_3
    invoke-virtual/range {v12 .. v16}, Ljava/time/chrono/IsoChronology;->updateResolveMap(Ljava/util/Map;Ljava/time/temporal/ChronoField;J)V

    goto/16 :goto_2

    :cond_9
    const-wide/16 v15, 0x1

    move-object/from16 v17, v4

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Long;->longValue()J

    move-result-wide v17

    invoke-static/range {v15 .. v18}, Ljava/time/jdk8/Jdk8Methods;->safeSubtract(JJ)J

    move-result-wide v15

    goto :goto_3

    .line 422
    .end local v6    # "year":Ljava/lang/Long;
    :cond_a
    move-object v12, v5

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    const-wide/16 v14, 0x1

    cmp-long v12, v12, v14

    if-nez v12, :cond_b

    .line 423
    move-object v12, v0

    move-object v13, v1

    sget-object v14, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    move-object v15, v4

    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v15

    invoke-virtual/range {v12 .. v16}, Ljava/time/chrono/IsoChronology;->updateResolveMap(Ljava/util/Map;Ljava/time/temporal/ChronoField;J)V

    goto/16 :goto_2

    .line 424
    :cond_b
    move-object v12, v5

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    const-wide/16 v14, 0x0

    cmp-long v12, v12, v14

    if-nez v12, :cond_c

    .line 425
    move-object v12, v0

    move-object v13, v1

    sget-object v14, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    const-wide/16 v15, 0x1

    move-object/from16 v17, v4

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Long;->longValue()J

    move-result-wide v17

    invoke-static/range {v15 .. v18}, Ljava/time/jdk8/Jdk8Methods;->safeSubtract(JJ)J

    move-result-wide v15

    invoke-virtual/range {v12 .. v16}, Ljava/time/chrono/IsoChronology;->updateResolveMap(Ljava/util/Map;Ljava/time/temporal/ChronoField;J)V

    goto/16 :goto_2

    .line 427
    :cond_c
    new-instance v12, Ljava/time/DateTimeException;

    move-object/from16 v19, v12

    move-object/from16 v12, v19

    move-object/from16 v13, v19

    new-instance v14, Ljava/lang/StringBuilder;

    move-object/from16 v19, v14

    move-object/from16 v14, v19

    move-object/from16 v15, v19

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Invalid value for era: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object v15, v5

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 429
    .end local v5    # "era":Ljava/lang/Long;
    :cond_d
    move-object v12, v1

    sget-object v13, Ljava/time/temporal/ChronoField;->ERA:Ljava/time/temporal/ChronoField;

    invoke-interface {v12, v13}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 430
    sget-object v12, Ljava/time/temporal/ChronoField;->ERA:Ljava/time/temporal/ChronoField;

    move-object v13, v1

    sget-object v14, Ljava/time/temporal/ChronoField;->ERA:Ljava/time/temporal/ChronoField;

    invoke-interface {v13, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Long;

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    invoke-virtual {v12, v13, v14}, Ljava/time/temporal/ChronoField;->checkValidValue(J)J

    move-result-wide v12

    goto/16 :goto_2

    .line 444
    .local v5, "y":I
    .local v6, "moy":I
    .restart local v7    # "dom":I
    :cond_e
    move-object v12, v2

    sget-object v13, Ljava/time/format/ResolverStyle;->SMART:Ljava/time/format/ResolverStyle;

    if-ne v12, v13, :cond_12

    .line 445
    sget-object v12, Ljava/time/temporal/ChronoField;->DAY_OF_MONTH:Ljava/time/temporal/ChronoField;

    move v13, v7

    int-to-long v13, v13

    invoke-virtual {v12, v13, v14}, Ljava/time/temporal/ChronoField;->checkValidValue(J)J

    move-result-wide v12

    .line 446
    move v12, v6

    const/4 v13, 0x4

    if-eq v12, v13, :cond_f

    move v12, v6

    const/4 v13, 0x6

    if-eq v12, v13, :cond_f

    move v12, v6

    const/16 v13, 0x9

    if-eq v12, v13, :cond_f

    move v12, v6

    const/16 v13, 0xb

    if-ne v12, v13, :cond_11

    .line 447
    :cond_f
    move v12, v7

    const/16 v13, 0x1e

    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    move-result v12

    move v7, v12

    .line 451
    :cond_10
    :goto_4
    move v12, v5

    move v13, v6

    move v14, v7

    invoke-static {v12, v13, v14}, Ljava/time/LocalDate;->of(III)Ljava/time/LocalDate;

    move-result-object v12

    move-object v0, v12

    goto/16 :goto_0

    .line 448
    :cond_11
    move v12, v6

    const/4 v13, 0x2

    if-ne v12, v13, :cond_10

    .line 449
    move v12, v7

    sget-object v13, Ljava/time/Month;->FEBRUARY:Ljava/time/Month;

    move v14, v5

    int-to-long v14, v14

    invoke-static {v14, v15}, Ljava/time/Year;->isLeap(J)Z

    move-result v14

    invoke-virtual {v13, v14}, Ljava/time/Month;->length(Z)I

    move-result v13

    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    move-result v12

    move v7, v12

    goto :goto_4

    .line 453
    :cond_12
    move v12, v5

    move v13, v6

    move v14, v7

    invoke-static {v12, v13, v14}, Ljava/time/LocalDate;->of(III)Ljava/time/LocalDate;

    move-result-object v12

    move-object v0, v12

    goto/16 :goto_0

    .line 456
    .end local v5    # "y":I
    .end local v6    # "moy":I
    .end local v7    # "dom":I
    :cond_13
    move-object v12, v1

    sget-object v13, Ljava/time/temporal/ChronoField;->ALIGNED_WEEK_OF_MONTH:Ljava/time/temporal/ChronoField;

    invoke-interface {v12, v13}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_19

    .line 457
    move-object v12, v1

    sget-object v13, Ljava/time/temporal/ChronoField;->ALIGNED_DAY_OF_WEEK_IN_MONTH:Ljava/time/temporal/ChronoField;

    invoke-interface {v12, v13}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_16

    .line 458
    sget-object v12, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    move-object v13, v1

    sget-object v14, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface {v13, v14}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Long;

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    invoke-virtual {v12, v13, v14}, Ljava/time/temporal/ChronoField;->checkValidIntValue(J)I

    move-result v12

    move v5, v12

    .line 459
    .restart local v5    # "y":I
    move-object v12, v2

    sget-object v13, Ljava/time/format/ResolverStyle;->LENIENT:Ljava/time/format/ResolverStyle;

    if-ne v12, v13, :cond_14

    .line 460
    move-object v12, v1

    sget-object v13, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface {v12, v13}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Long;

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    const-wide/16 v14, 0x1

    invoke-static {v12, v13, v14, v15}, Ljava/time/jdk8/Jdk8Methods;->safeSubtract(JJ)J

    move-result-wide v12

    move-wide v6, v12

    .line 461
    .local v6, "months":J
    move-object v12, v1

    sget-object v13, Ljava/time/temporal/ChronoField;->ALIGNED_WEEK_OF_MONTH:Ljava/time/temporal/ChronoField;

    invoke-interface {v12, v13}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Long;

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    const-wide/16 v14, 0x1

    invoke-static {v12, v13, v14, v15}, Ljava/time/jdk8/Jdk8Methods;->safeSubtract(JJ)J

    move-result-wide v12

    move-wide v8, v12

    .line 462
    .local v8, "weeks":J
    move-object v12, v1

    sget-object v13, Ljava/time/temporal/ChronoField;->ALIGNED_DAY_OF_WEEK_IN_MONTH:Ljava/time/temporal/ChronoField;

    invoke-interface {v12, v13}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Long;

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    const-wide/16 v14, 0x1

    invoke-static {v12, v13, v14, v15}, Ljava/time/jdk8/Jdk8Methods;->safeSubtract(JJ)J

    move-result-wide v12

    move-wide v10, v12

    .line 463
    .restart local v10    # "days":J
    move v12, v5

    const/4 v13, 0x1

    const/4 v14, 0x1

    invoke-static {v12, v13, v14}, Ljava/time/LocalDate;->of(III)Ljava/time/LocalDate;

    move-result-object v12

    move-wide v13, v6

    invoke-virtual {v12, v13, v14}, Ljava/time/LocalDate;->plusMonths(J)Ljava/time/LocalDate;

    move-result-object v12

    move-wide v13, v8

    invoke-virtual {v12, v13, v14}, Ljava/time/LocalDate;->plusWeeks(J)Ljava/time/LocalDate;

    move-result-object v12

    move-wide v13, v10

    invoke-virtual {v12, v13, v14}, Ljava/time/LocalDate;->plusDays(J)Ljava/time/LocalDate;

    move-result-object v12

    move-object v0, v12

    goto/16 :goto_0

    .line 465
    .end local v6    # "months":J
    .end local v8    # "weeks":J
    .end local v10    # "days":J
    :cond_14
    sget-object v12, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    move-object v13, v1

    sget-object v14, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface {v13, v14}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Long;

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    invoke-virtual {v12, v13, v14}, Ljava/time/temporal/ChronoField;->checkValidIntValue(J)I

    move-result v12

    move v6, v12

    .line 466
    .local v6, "moy":I
    sget-object v12, Ljava/time/temporal/ChronoField;->ALIGNED_WEEK_OF_MONTH:Ljava/time/temporal/ChronoField;

    move-object v13, v1

    sget-object v14, Ljava/time/temporal/ChronoField;->ALIGNED_WEEK_OF_MONTH:Ljava/time/temporal/ChronoField;

    invoke-interface {v13, v14}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Long;

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    invoke-virtual {v12, v13, v14}, Ljava/time/temporal/ChronoField;->checkValidIntValue(J)I

    move-result v12

    move v7, v12

    .line 467
    .local v7, "aw":I
    sget-object v12, Ljava/time/temporal/ChronoField;->ALIGNED_DAY_OF_WEEK_IN_MONTH:Ljava/time/temporal/ChronoField;

    move-object v13, v1

    sget-object v14, Ljava/time/temporal/ChronoField;->ALIGNED_DAY_OF_WEEK_IN_MONTH:Ljava/time/temporal/ChronoField;

    invoke-interface {v13, v14}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Long;

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    invoke-virtual {v12, v13, v14}, Ljava/time/temporal/ChronoField;->checkValidIntValue(J)I

    move-result v12

    move v8, v12

    .line 468
    .local v8, "ad":I
    move v12, v5

    move v13, v6

    const/4 v14, 0x1

    invoke-static {v12, v13, v14}, Ljava/time/LocalDate;->of(III)Ljava/time/LocalDate;

    move-result-object v12

    move v13, v7

    const/4 v14, 0x1

    add-int/lit8 v13, v13, -0x1

    const/4 v14, 0x7

    mul-int/lit8 v13, v13, 0x7

    move v14, v8

    const/4 v15, 0x1

    add-int/lit8 v14, v14, -0x1

    add-int/2addr v13, v14

    int-to-long v13, v13

    invoke-virtual {v12, v13, v14}, Ljava/time/LocalDate;->plusDays(J)Ljava/time/LocalDate;

    move-result-object v12

    move-object v9, v12

    .line 469
    .local v9, "date":Ljava/time/LocalDate;
    move-object v12, v2

    sget-object v13, Ljava/time/format/ResolverStyle;->STRICT:Ljava/time/format/ResolverStyle;

    if-ne v12, v13, :cond_15

    move-object v12, v9

    sget-object v13, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-virtual {v12, v13}, Ljava/time/LocalDate;->get(Ljava/time/temporal/TemporalField;)I

    move-result v12

    move v13, v6

    if-eq v12, v13, :cond_15

    .line 470
    new-instance v12, Ljava/time/DateTimeException;

    move-object/from16 v19, v12

    move-object/from16 v12, v19

    move-object/from16 v13, v19

    const-string v14, "Strict mode rejected date parsed to a different month"

    invoke-direct {v13, v14}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 472
    :cond_15
    move-object v12, v9

    move-object v0, v12

    goto/16 :goto_0

    .line 474
    .end local v5    # "y":I
    .end local v6    # "moy":I
    .end local v7    # "aw":I
    .end local v8    # "ad":I
    .end local v9    # "date":Ljava/time/LocalDate;
    :cond_16
    move-object v12, v1

    sget-object v13, Ljava/time/temporal/ChronoField;->DAY_OF_WEEK:Ljava/time/temporal/ChronoField;

    invoke-interface {v12, v13}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_19

    .line 475
    sget-object v12, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    move-object v13, v1

    sget-object v14, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface {v13, v14}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Long;

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    invoke-virtual {v12, v13, v14}, Ljava/time/temporal/ChronoField;->checkValidIntValue(J)I

    move-result v12

    move v5, v12

    .line 476
    .restart local v5    # "y":I
    move-object v12, v2

    sget-object v13, Ljava/time/format/ResolverStyle;->LENIENT:Ljava/time/format/ResolverStyle;

    if-ne v12, v13, :cond_17

    .line 477
    move-object v12, v1

    sget-object v13, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface {v12, v13}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Long;

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    const-wide/16 v14, 0x1

    invoke-static {v12, v13, v14, v15}, Ljava/time/jdk8/Jdk8Methods;->safeSubtract(JJ)J

    move-result-wide v12

    move-wide v6, v12

    .line 478
    .local v6, "months":J
    move-object v12, v1

    sget-object v13, Ljava/time/temporal/ChronoField;->ALIGNED_WEEK_OF_MONTH:Ljava/time/temporal/ChronoField;

    invoke-interface {v12, v13}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Long;

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    const-wide/16 v14, 0x1

    invoke-static {v12, v13, v14, v15}, Ljava/time/jdk8/Jdk8Methods;->safeSubtract(JJ)J

    move-result-wide v12

    move-wide v8, v12

    .line 479
    .local v8, "weeks":J
    move-object v12, v1

    sget-object v13, Ljava/time/temporal/ChronoField;->DAY_OF_WEEK:Ljava/time/temporal/ChronoField;

    invoke-interface {v12, v13}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Long;

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    const-wide/16 v14, 0x1

    invoke-static {v12, v13, v14, v15}, Ljava/time/jdk8/Jdk8Methods;->safeSubtract(JJ)J

    move-result-wide v12

    move-wide v10, v12

    .line 480
    .restart local v10    # "days":J
    move v12, v5

    const/4 v13, 0x1

    const/4 v14, 0x1

    invoke-static {v12, v13, v14}, Ljava/time/LocalDate;->of(III)Ljava/time/LocalDate;

    move-result-object v12

    move-wide v13, v6

    invoke-virtual {v12, v13, v14}, Ljava/time/LocalDate;->plusMonths(J)Ljava/time/LocalDate;

    move-result-object v12

    move-wide v13, v8

    invoke-virtual {v12, v13, v14}, Ljava/time/LocalDate;->plusWeeks(J)Ljava/time/LocalDate;

    move-result-object v12

    move-wide v13, v10

    invoke-virtual {v12, v13, v14}, Ljava/time/LocalDate;->plusDays(J)Ljava/time/LocalDate;

    move-result-object v12

    move-object v0, v12

    goto/16 :goto_0

    .line 482
    .end local v6    # "months":J
    .end local v8    # "weeks":J
    .end local v10    # "days":J
    :cond_17
    sget-object v12, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    move-object v13, v1

    sget-object v14, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface {v13, v14}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Long;

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    invoke-virtual {v12, v13, v14}, Ljava/time/temporal/ChronoField;->checkValidIntValue(J)I

    move-result v12

    move v6, v12

    .line 483
    .local v6, "moy":I
    sget-object v12, Ljava/time/temporal/ChronoField;->ALIGNED_WEEK_OF_MONTH:Ljava/time/temporal/ChronoField;

    move-object v13, v1

    sget-object v14, Ljava/time/temporal/ChronoField;->ALIGNED_WEEK_OF_MONTH:Ljava/time/temporal/ChronoField;

    invoke-interface {v13, v14}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Long;

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    invoke-virtual {v12, v13, v14}, Ljava/time/temporal/ChronoField;->checkValidIntValue(J)I

    move-result v12

    move v7, v12

    .line 484
    .restart local v7    # "aw":I
    sget-object v12, Ljava/time/temporal/ChronoField;->DAY_OF_WEEK:Ljava/time/temporal/ChronoField;

    move-object v13, v1

    sget-object v14, Ljava/time/temporal/ChronoField;->DAY_OF_WEEK:Ljava/time/temporal/ChronoField;

    invoke-interface {v13, v14}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Long;

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    invoke-virtual {v12, v13, v14}, Ljava/time/temporal/ChronoField;->checkValidIntValue(J)I

    move-result v12

    move v8, v12

    .line 485
    .local v8, "dow":I
    move v12, v5

    move v13, v6

    const/4 v14, 0x1

    invoke-static {v12, v13, v14}, Ljava/time/LocalDate;->of(III)Ljava/time/LocalDate;

    move-result-object v12

    move v13, v7

    const/4 v14, 0x1

    add-int/lit8 v13, v13, -0x1

    int-to-long v13, v13

    invoke-virtual {v12, v13, v14}, Ljava/time/LocalDate;->plusWeeks(J)Ljava/time/LocalDate;

    move-result-object v12

    move v13, v8

    invoke-static {v13}, Ljava/time/DayOfWeek;->of(I)Ljava/time/DayOfWeek;

    move-result-object v13

    invoke-static {v13}, Ljava/time/temporal/TemporalAdjusters;->nextOrSame(Ljava/time/DayOfWeek;)Ljava/time/temporal/TemporalAdjuster;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/time/LocalDate;->with(Ljava/time/temporal/TemporalAdjuster;)Ljava/time/LocalDate;

    move-result-object v12

    move-object v9, v12

    .line 486
    .restart local v9    # "date":Ljava/time/LocalDate;
    move-object v12, v2

    sget-object v13, Ljava/time/format/ResolverStyle;->STRICT:Ljava/time/format/ResolverStyle;

    if-ne v12, v13, :cond_18

    move-object v12, v9

    sget-object v13, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-virtual {v12, v13}, Ljava/time/LocalDate;->get(Ljava/time/temporal/TemporalField;)I

    move-result v12

    move v13, v6

    if-eq v12, v13, :cond_18

    .line 487
    new-instance v12, Ljava/time/DateTimeException;

    move-object/from16 v19, v12

    move-object/from16 v12, v19

    move-object/from16 v13, v19

    const-string v14, "Strict mode rejected date parsed to a different month"

    invoke-direct {v13, v14}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 489
    :cond_18
    move-object v12, v9

    move-object v0, v12

    goto/16 :goto_0

    .line 493
    .end local v5    # "y":I
    .end local v6    # "moy":I
    .end local v7    # "aw":I
    .end local v8    # "dow":I
    .end local v9    # "date":Ljava/time/LocalDate;
    :cond_19
    move-object v12, v1

    sget-object v13, Ljava/time/temporal/ChronoField;->DAY_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface {v12, v13}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1b

    .line 494
    sget-object v12, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    move-object v13, v1

    sget-object v14, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface {v13, v14}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Long;

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    invoke-virtual {v12, v13, v14}, Ljava/time/temporal/ChronoField;->checkValidIntValue(J)I

    move-result v12

    move v5, v12

    .line 495
    .restart local v5    # "y":I
    move-object v12, v2

    sget-object v13, Ljava/time/format/ResolverStyle;->LENIENT:Ljava/time/format/ResolverStyle;

    if-ne v12, v13, :cond_1a

    .line 496
    move-object v12, v1

    sget-object v13, Ljava/time/temporal/ChronoField;->DAY_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface {v12, v13}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Long;

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    const-wide/16 v14, 0x1

    invoke-static {v12, v13, v14, v15}, Ljava/time/jdk8/Jdk8Methods;->safeSubtract(JJ)J

    move-result-wide v12

    move-wide v6, v12

    .line 497
    .local v6, "days":J
    move v12, v5

    const/4 v13, 0x1

    invoke-static {v12, v13}, Ljava/time/LocalDate;->ofYearDay(II)Ljava/time/LocalDate;

    move-result-object v12

    move-wide v13, v6

    invoke-virtual {v12, v13, v14}, Ljava/time/LocalDate;->plusDays(J)Ljava/time/LocalDate;

    move-result-object v12

    move-object v0, v12

    goto/16 :goto_0

    .line 499
    .end local v6    # "days":J
    :cond_1a
    sget-object v12, Ljava/time/temporal/ChronoField;->DAY_OF_YEAR:Ljava/time/temporal/ChronoField;

    move-object v13, v1

    sget-object v14, Ljava/time/temporal/ChronoField;->DAY_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface {v13, v14}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Long;

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    invoke-virtual {v12, v13, v14}, Ljava/time/temporal/ChronoField;->checkValidIntValue(J)I

    move-result v12

    move v6, v12

    .line 500
    .local v6, "doy":I
    move v12, v5

    move v13, v6

    invoke-static {v12, v13}, Ljava/time/LocalDate;->ofYearDay(II)Ljava/time/LocalDate;

    move-result-object v12

    move-object v0, v12

    goto/16 :goto_0

    .line 502
    .end local v5    # "y":I
    .end local v6    # "doy":I
    :cond_1b
    move-object v12, v1

    sget-object v13, Ljava/time/temporal/ChronoField;->ALIGNED_WEEK_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface {v12, v13}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_21

    .line 503
    move-object v12, v1

    sget-object v13, Ljava/time/temporal/ChronoField;->ALIGNED_DAY_OF_WEEK_IN_YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface {v12, v13}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1e

    .line 504
    sget-object v12, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    move-object v13, v1

    sget-object v14, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface {v13, v14}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Long;

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    invoke-virtual {v12, v13, v14}, Ljava/time/temporal/ChronoField;->checkValidIntValue(J)I

    move-result v12

    move v5, v12

    .line 505
    .restart local v5    # "y":I
    move-object v12, v2

    sget-object v13, Ljava/time/format/ResolverStyle;->LENIENT:Ljava/time/format/ResolverStyle;

    if-ne v12, v13, :cond_1c

    .line 506
    move-object v12, v1

    sget-object v13, Ljava/time/temporal/ChronoField;->ALIGNED_WEEK_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface {v12, v13}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Long;

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    const-wide/16 v14, 0x1

    invoke-static {v12, v13, v14, v15}, Ljava/time/jdk8/Jdk8Methods;->safeSubtract(JJ)J

    move-result-wide v12

    move-wide v6, v12

    .line 507
    .local v6, "weeks":J
    move-object v12, v1

    sget-object v13, Ljava/time/temporal/ChronoField;->ALIGNED_DAY_OF_WEEK_IN_YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface {v12, v13}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Long;

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    const-wide/16 v14, 0x1

    invoke-static {v12, v13, v14, v15}, Ljava/time/jdk8/Jdk8Methods;->safeSubtract(JJ)J

    move-result-wide v12

    move-wide v8, v12

    .line 508
    .local v8, "days":J
    move v12, v5

    const/4 v13, 0x1

    const/4 v14, 0x1

    invoke-static {v12, v13, v14}, Ljava/time/LocalDate;->of(III)Ljava/time/LocalDate;

    move-result-object v12

    move-wide v13, v6

    invoke-virtual {v12, v13, v14}, Ljava/time/LocalDate;->plusWeeks(J)Ljava/time/LocalDate;

    move-result-object v12

    move-wide v13, v8

    invoke-virtual {v12, v13, v14}, Ljava/time/LocalDate;->plusDays(J)Ljava/time/LocalDate;

    move-result-object v12

    move-object v0, v12

    goto/16 :goto_0

    .line 510
    .end local v6    # "weeks":J
    .end local v8    # "days":J
    :cond_1c
    sget-object v12, Ljava/time/temporal/ChronoField;->ALIGNED_WEEK_OF_YEAR:Ljava/time/temporal/ChronoField;

    move-object v13, v1

    sget-object v14, Ljava/time/temporal/ChronoField;->ALIGNED_WEEK_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface {v13, v14}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Long;

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    invoke-virtual {v12, v13, v14}, Ljava/time/temporal/ChronoField;->checkValidIntValue(J)I

    move-result v12

    move v6, v12

    .line 511
    .local v6, "aw":I
    sget-object v12, Ljava/time/temporal/ChronoField;->ALIGNED_DAY_OF_WEEK_IN_YEAR:Ljava/time/temporal/ChronoField;

    move-object v13, v1

    sget-object v14, Ljava/time/temporal/ChronoField;->ALIGNED_DAY_OF_WEEK_IN_YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface {v13, v14}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Long;

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    invoke-virtual {v12, v13, v14}, Ljava/time/temporal/ChronoField;->checkValidIntValue(J)I

    move-result v12

    move v7, v12

    .line 512
    .local v7, "ad":I
    move v12, v5

    const/4 v13, 0x1

    const/4 v14, 0x1

    invoke-static {v12, v13, v14}, Ljava/time/LocalDate;->of(III)Ljava/time/LocalDate;

    move-result-object v12

    move v13, v6

    const/4 v14, 0x1

    add-int/lit8 v13, v13, -0x1

    const/4 v14, 0x7

    mul-int/lit8 v13, v13, 0x7

    move v14, v7

    const/4 v15, 0x1

    add-int/lit8 v14, v14, -0x1

    add-int/2addr v13, v14

    int-to-long v13, v13

    invoke-virtual {v12, v13, v14}, Ljava/time/LocalDate;->plusDays(J)Ljava/time/LocalDate;

    move-result-object v12

    move-object v8, v12

    .line 513
    .local v8, "date":Ljava/time/LocalDate;
    move-object v12, v2

    sget-object v13, Ljava/time/format/ResolverStyle;->STRICT:Ljava/time/format/ResolverStyle;

    if-ne v12, v13, :cond_1d

    move-object v12, v8

    sget-object v13, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    invoke-virtual {v12, v13}, Ljava/time/LocalDate;->get(Ljava/time/temporal/TemporalField;)I

    move-result v12

    move v13, v5

    if-eq v12, v13, :cond_1d

    .line 514
    new-instance v12, Ljava/time/DateTimeException;

    move-object/from16 v19, v12

    move-object/from16 v12, v19

    move-object/from16 v13, v19

    const-string v14, "Strict mode rejected date parsed to a different year"

    invoke-direct {v13, v14}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 516
    :cond_1d
    move-object v12, v8

    move-object v0, v12

    goto/16 :goto_0

    .line 518
    .end local v5    # "y":I
    .end local v6    # "aw":I
    .end local v7    # "ad":I
    .end local v8    # "date":Ljava/time/LocalDate;
    :cond_1e
    move-object v12, v1

    sget-object v13, Ljava/time/temporal/ChronoField;->DAY_OF_WEEK:Ljava/time/temporal/ChronoField;

    invoke-interface {v12, v13}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_21

    .line 519
    sget-object v12, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    move-object v13, v1

    sget-object v14, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface {v13, v14}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Long;

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    invoke-virtual {v12, v13, v14}, Ljava/time/temporal/ChronoField;->checkValidIntValue(J)I

    move-result v12

    move v5, v12

    .line 520
    .restart local v5    # "y":I
    move-object v12, v2

    sget-object v13, Ljava/time/format/ResolverStyle;->LENIENT:Ljava/time/format/ResolverStyle;

    if-ne v12, v13, :cond_1f

    .line 521
    move-object v12, v1

    sget-object v13, Ljava/time/temporal/ChronoField;->ALIGNED_WEEK_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface {v12, v13}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Long;

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    const-wide/16 v14, 0x1

    invoke-static {v12, v13, v14, v15}, Ljava/time/jdk8/Jdk8Methods;->safeSubtract(JJ)J

    move-result-wide v12

    move-wide v6, v12

    .line 522
    .local v6, "weeks":J
    move-object v12, v1

    sget-object v13, Ljava/time/temporal/ChronoField;->DAY_OF_WEEK:Ljava/time/temporal/ChronoField;

    invoke-interface {v12, v13}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Long;

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    const-wide/16 v14, 0x1

    invoke-static {v12, v13, v14, v15}, Ljava/time/jdk8/Jdk8Methods;->safeSubtract(JJ)J

    move-result-wide v12

    move-wide v8, v12

    .line 523
    .local v8, "days":J
    move v12, v5

    const/4 v13, 0x1

    const/4 v14, 0x1

    invoke-static {v12, v13, v14}, Ljava/time/LocalDate;->of(III)Ljava/time/LocalDate;

    move-result-object v12

    move-wide v13, v6

    invoke-virtual {v12, v13, v14}, Ljava/time/LocalDate;->plusWeeks(J)Ljava/time/LocalDate;

    move-result-object v12

    move-wide v13, v8

    invoke-virtual {v12, v13, v14}, Ljava/time/LocalDate;->plusDays(J)Ljava/time/LocalDate;

    move-result-object v12

    move-object v0, v12

    goto/16 :goto_0

    .line 525
    .end local v6    # "weeks":J
    .end local v8    # "days":J
    :cond_1f
    sget-object v12, Ljava/time/temporal/ChronoField;->ALIGNED_WEEK_OF_YEAR:Ljava/time/temporal/ChronoField;

    move-object v13, v1

    sget-object v14, Ljava/time/temporal/ChronoField;->ALIGNED_WEEK_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface {v13, v14}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Long;

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    invoke-virtual {v12, v13, v14}, Ljava/time/temporal/ChronoField;->checkValidIntValue(J)I

    move-result v12

    move v6, v12

    .line 526
    .local v6, "aw":I
    sget-object v12, Ljava/time/temporal/ChronoField;->DAY_OF_WEEK:Ljava/time/temporal/ChronoField;

    move-object v13, v1

    sget-object v14, Ljava/time/temporal/ChronoField;->DAY_OF_WEEK:Ljava/time/temporal/ChronoField;

    invoke-interface {v13, v14}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Long;

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    invoke-virtual {v12, v13, v14}, Ljava/time/temporal/ChronoField;->checkValidIntValue(J)I

    move-result v12

    move v7, v12

    .line 527
    .local v7, "dow":I
    move v12, v5

    const/4 v13, 0x1

    const/4 v14, 0x1

    invoke-static {v12, v13, v14}, Ljava/time/LocalDate;->of(III)Ljava/time/LocalDate;

    move-result-object v12

    move v13, v6

    const/4 v14, 0x1

    add-int/lit8 v13, v13, -0x1

    int-to-long v13, v13

    invoke-virtual {v12, v13, v14}, Ljava/time/LocalDate;->plusWeeks(J)Ljava/time/LocalDate;

    move-result-object v12

    move v13, v7

    invoke-static {v13}, Ljava/time/DayOfWeek;->of(I)Ljava/time/DayOfWeek;

    move-result-object v13

    invoke-static {v13}, Ljava/time/temporal/TemporalAdjusters;->nextOrSame(Ljava/time/DayOfWeek;)Ljava/time/temporal/TemporalAdjuster;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/time/LocalDate;->with(Ljava/time/temporal/TemporalAdjuster;)Ljava/time/LocalDate;

    move-result-object v12

    move-object v8, v12

    .line 528
    .local v8, "date":Ljava/time/LocalDate;
    move-object v12, v2

    sget-object v13, Ljava/time/format/ResolverStyle;->STRICT:Ljava/time/format/ResolverStyle;

    if-ne v12, v13, :cond_20

    move-object v12, v8

    sget-object v13, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    invoke-virtual {v12, v13}, Ljava/time/LocalDate;->get(Ljava/time/temporal/TemporalField;)I

    move-result v12

    move v13, v5

    if-eq v12, v13, :cond_20

    .line 529
    new-instance v12, Ljava/time/DateTimeException;

    move-object/from16 v19, v12

    move-object/from16 v12, v19

    move-object/from16 v13, v19

    const-string v14, "Strict mode rejected date parsed to a different month"

    invoke-direct {v13, v14}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 531
    :cond_20
    move-object v12, v8

    move-object v0, v12

    goto/16 :goto_0

    .line 535
    .end local v5    # "y":I
    .end local v6    # "aw":I
    .end local v7    # "dow":I
    .end local v8    # "date":Ljava/time/LocalDate;
    :cond_21
    const/4 v12, 0x0

    move-object v0, v12

    goto/16 :goto_0
.end method

.method public bridge synthetic resolveDate(Ljava/util/Map;Ljava/time/format/ResolverStyle;)Ljava/time/chrono/AbstractChronoLocalDate;
    .locals 6

    .prologue
    .line 99
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/IsoChronology;
    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Ljava/time/chrono/IsoChronology;->resolveDate(Ljava/util/Map;Ljava/time/format/ResolverStyle;)Ljava/time/LocalDate;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Ljava/time/chrono/IsoChronology;
    return-object v0
.end method

.method public zonedDateTime(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;
    .locals 5

    .prologue
    .line 281
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/IsoChronology;
    move-object v1, p1

    .local v1, "instant":Ljava/time/Instant;
    move-object v2, p2

    .local v2, "zone":Ljava/time/ZoneId;
    move-object v3, v1

    move-object v4, v2

    invoke-static {v3, v4}, Ljava/time/ZonedDateTime;->ofInstant(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Ljava/time/chrono/IsoChronology;
    return-object v0
.end method

.method public zonedDateTime(Ljava/time/temporal/TemporalAccessor;)Ljava/time/ZonedDateTime;
    .locals 3

    .prologue
    .line 266
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/IsoChronology;
    move-object v1, p1

    .local v1, "temporal":Ljava/time/temporal/TemporalAccessor;
    move-object v2, v1

    invoke-static {v2}, Ljava/time/ZonedDateTime;->from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/ZonedDateTime;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljava/time/chrono/IsoChronology;
    return-object v0
.end method

.method public bridge synthetic zonedDateTime(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/chrono/ChronoZonedDateTime;
    .locals 6

    .prologue
    .line 99
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/IsoChronology;
    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Ljava/time/chrono/IsoChronology;->zonedDateTime(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Ljava/time/chrono/IsoChronology;
    return-object v0
.end method

.method public bridge synthetic zonedDateTime(Ljava/time/temporal/TemporalAccessor;)Ljava/time/chrono/ChronoZonedDateTime;
    .locals 4

    .prologue
    .line 99
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/IsoChronology;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/time/chrono/IsoChronology;->zonedDateTime(Ljava/time/temporal/TemporalAccessor;)Ljava/time/ZonedDateTime;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljava/time/chrono/IsoChronology;
    return-object v0
.end method
