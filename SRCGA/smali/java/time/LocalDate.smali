.class public final Ljava/time/LocalDate;
.super Ljava/time/chrono/AbstractChronoLocalDate;
.source "LocalDate.java"

# interfaces
.implements Ljava/time/temporal/Temporal;
.implements Ljava/time/temporal/TemporalAdjuster;
.implements Ljava/io/Serializable;


# static fields
.field static final DAYS_0000_TO_1970:J = 0xafaa8L

.field private static final DAYS_PER_CYCLE:I = 0x23ab1

.field public static final FROM:Ljava/time/temporal/TemporalQuery;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/time/temporal/TemporalQuery",
            "<",
            "Ljava/time/LocalDate;",
            ">;"
        }
    .end annotation
.end field

.field public static final MAX:Ljava/time/LocalDate;

.field public static final MIN:Ljava/time/LocalDate;

.field private static final serialVersionUID:J = 0x28d617b1d8f33f1eL


# instance fields
.field private final day:S

.field private final month:S

.field private final year:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 109
    const v0, -0x3b9ac9ff

    const/4 v1, 0x1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Ljava/time/LocalDate;->of(III)Ljava/time/LocalDate;

    move-result-object v0

    sput-object v0, Ljava/time/LocalDate;->MIN:Ljava/time/LocalDate;

    .line 114
    const v0, 0x3b9ac9ff

    const/16 v1, 0xc

    const/16 v2, 0x1f

    invoke-static {v0, v1, v2}, Ljava/time/LocalDate;->of(III)Ljava/time/LocalDate;

    move-result-object v0

    sput-object v0, Ljava/time/LocalDate;->MAX:Ljava/time/LocalDate;

    .line 118
    new-instance v0, Ljava/time/LocalDate$1;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    invoke-direct {v1}, Ljava/time/LocalDate$1;-><init>()V

    sput-object v0, Ljava/time/LocalDate;->FROM:Ljava/time/temporal/TemporalQuery;

    return-void
.end method

.method private constructor <init>(III)V
    .locals 6

    .prologue
    .line 421
    move-object v0, p0

    .local v0, "this":Ljava/time/LocalDate;
    move v1, p1

    .local v1, "year":I
    move v2, p2

    .local v2, "month":I
    move v3, p3

    .local v3, "dayOfMonth":I
    move-object v4, v0

    invoke-direct {v4}, Ljava/time/chrono/AbstractChronoLocalDate;-><init>()V

    .line 422
    move-object v4, v0

    move v5, v1

    iput v5, v4, Ljava/time/LocalDate;->year:I

    .line 423
    move-object v4, v0

    move v5, v2

    int-to-short v5, v5

    iput-short v5, v4, Ljava/time/LocalDate;->month:S

    .line 424
    move-object v4, v0

    move v5, v3

    int-to-short v5, v5

    iput-short v5, v4, Ljava/time/LocalDate;->day:S

    .line 425
    return-void
.end method

.method private static create(ILjava/time/Month;I)Ljava/time/LocalDate;
    .locals 9

    .prologue
    .line 381
    move v0, p0

    .local v0, "year":I
    move-object v1, p1

    .local v1, "month":Ljava/time/Month;
    move v2, p2

    .local v2, "dayOfMonth":I
    move v3, v2

    const/16 v4, 0x1c

    if-le v3, v4, :cond_1

    move v3, v2

    move-object v4, v1

    sget-object v5, Ljava/time/chrono/IsoChronology;->INSTANCE:Ljava/time/chrono/IsoChronology;

    move v6, v0

    int-to-long v6, v6

    invoke-virtual {v5, v6, v7}, Ljava/time/chrono/IsoChronology;->isLeapYear(J)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/time/Month;->length(Z)I

    move-result v4

    if-le v3, v4, :cond_1

    .line 382
    move v3, v2

    const/16 v4, 0x1d

    if-ne v3, v4, :cond_0

    .line 383
    new-instance v3, Ljava/time/DateTimeException;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid date \'February 29\' as \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\' is not a leap year"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 385
    :cond_0
    new-instance v3, Ljava/time/DateTimeException;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid date \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v1

    invoke-virtual {v6}, Ljava/time/Month;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 388
    :cond_1
    new-instance v3, Ljava/time/LocalDate;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move v5, v0

    move-object v6, v1

    invoke-virtual {v6}, Ljava/time/Month;->getValue()I

    move-result v6

    move v7, v2

    invoke-direct {v4, v5, v6, v7}, Ljava/time/LocalDate;-><init>(III)V

    move-object v0, v3

    .end local v0    # "year":I
    return-object v0
.end method

.method public static from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/LocalDate;
    .locals 7

    .prologue
    .line 332
    move-object v0, p0

    .local v0, "temporal":Ljava/time/temporal/TemporalAccessor;
    move-object v2, v0

    invoke-static {}, Ljava/time/temporal/TemporalQueries;->localDate()Ljava/time/temporal/TemporalQuery;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/time/temporal/TemporalAccessor;->query(Ljava/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/time/LocalDate;

    move-object v1, v2

    .line 333
    .local v1, "date":Ljava/time/LocalDate;
    move-object v2, v1

    if-nez v2, :cond_0

    .line 334
    new-instance v2, Ljava/time/DateTimeException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to obtain LocalDate from TemporalAccessor: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v0

    .line 335
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 337
    :cond_0
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "temporal":Ljava/time/temporal/TemporalAccessor;
    return-object v0
.end method

.method private get0(Ljava/time/temporal/TemporalField;)I
    .locals 7

    .prologue
    .line 579
    move-object v0, p0

    .local v0, "this":Ljava/time/LocalDate;
    move-object v1, p1

    .local v1, "field":Ljava/time/temporal/TemporalField;
    sget-object v2, Ljava/time/LocalDate$2;->$SwitchMap$java$time$temporal$ChronoField:[I

    move-object v3, v1

    check-cast v3, Ljava/time/temporal/ChronoField;

    invoke-virtual {v3}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 594
    new-instance v2, Ljava/time/temporal/UnsupportedTemporalTypeException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unsupported field: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/time/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 580
    :pswitch_0
    move-object v2, v0

    invoke-virtual {v2}, Ljava/time/LocalDate;->getDayOfWeek()Ljava/time/DayOfWeek;

    move-result-object v2

    invoke-virtual {v2}, Ljava/time/DayOfWeek;->getValue()I

    move-result v2

    move v0, v2

    .line 592
    .end local v0    # "this":Ljava/time/LocalDate;
    :goto_0
    return v0

    .line 581
    .restart local v0    # "this":Ljava/time/LocalDate;
    :pswitch_1
    move-object v2, v0

    iget-short v2, v2, Ljava/time/LocalDate;->day:S

    const/4 v3, 0x1

    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x7

    rem-int/lit8 v2, v2, 0x7

    const/4 v3, 0x1

    add-int/lit8 v2, v2, 0x1

    move v0, v2

    goto :goto_0

    .line 582
    :pswitch_2
    move-object v2, v0

    invoke-virtual {v2}, Ljava/time/LocalDate;->getDayOfYear()I

    move-result v2

    const/4 v3, 0x1

    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x7

    rem-int/lit8 v2, v2, 0x7

    const/4 v3, 0x1

    add-int/lit8 v2, v2, 0x1

    move v0, v2

    goto :goto_0

    .line 583
    :pswitch_3
    move-object v2, v0

    iget-short v2, v2, Ljava/time/LocalDate;->day:S

    move v0, v2

    goto :goto_0

    .line 584
    :pswitch_4
    move-object v2, v0

    invoke-virtual {v2}, Ljava/time/LocalDate;->getDayOfYear()I

    move-result v2

    move v0, v2

    goto :goto_0

    .line 585
    :pswitch_5
    new-instance v2, Ljava/time/DateTimeException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Field too large for an int: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 586
    :pswitch_6
    move-object v2, v0

    iget-short v2, v2, Ljava/time/LocalDate;->day:S

    const/4 v3, 0x1

    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x7

    div-int/lit8 v2, v2, 0x7

    const/4 v3, 0x1

    add-int/lit8 v2, v2, 0x1

    move v0, v2

    goto :goto_0

    .line 587
    :pswitch_7
    move-object v2, v0

    invoke-virtual {v2}, Ljava/time/LocalDate;->getDayOfYear()I

    move-result v2

    const/4 v3, 0x1

    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x7

    div-int/lit8 v2, v2, 0x7

    const/4 v3, 0x1

    add-int/lit8 v2, v2, 0x1

    move v0, v2

    goto :goto_0

    .line 588
    :pswitch_8
    move-object v2, v0

    iget-short v2, v2, Ljava/time/LocalDate;->month:S

    move v0, v2

    goto :goto_0

    .line 589
    :pswitch_9
    new-instance v2, Ljava/time/DateTimeException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Field too large for an int: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 590
    :pswitch_a
    move-object v2, v0

    iget v2, v2, Ljava/time/LocalDate;->year:I

    const/4 v3, 0x1

    if-lt v2, v3, :cond_0

    move-object v2, v0

    iget v2, v2, Ljava/time/LocalDate;->year:I

    :goto_1
    move v0, v2

    goto/16 :goto_0

    :cond_0
    const/4 v2, 0x1

    move-object v3, v0

    iget v3, v3, Ljava/time/LocalDate;->year:I

    rsub-int/lit8 v2, v3, 0x1

    goto :goto_1

    .line 591
    :pswitch_b
    move-object v2, v0

    iget v2, v2, Ljava/time/LocalDate;->year:I

    move v0, v2

    goto/16 :goto_0

    .line 592
    :pswitch_c
    move-object v2, v0

    iget v2, v2, Ljava/time/LocalDate;->year:I

    const/4 v3, 0x1

    if-lt v2, v3, :cond_1

    const/4 v2, 0x1

    :goto_2
    move v0, v2

    goto/16 :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_2

    .line 579
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_6
        :pswitch_a
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_5
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method

.method private getProlepticMonth()J
    .locals 6

    .prologue
    .line 598
    move-object v1, p0

    .local v1, "this":Ljava/time/LocalDate;
    move-object v2, v1

    iget v2, v2, Ljava/time/LocalDate;->year:I

    int-to-long v2, v2

    const-wide/16 v4, 0xc

    mul-long/2addr v2, v4

    move-object v4, v1

    iget-short v4, v4, Ljava/time/LocalDate;->month:S

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    int-to-long v4, v4

    add-long/2addr v2, v4

    move-wide v1, v2

    .end local v1    # "this":Ljava/time/LocalDate;
    return-wide v1
.end method

.method private monthsUntil(Ljava/time/LocalDate;)J
    .locals 10

    .prologue
    .line 1439
    move-object v0, p0

    .local v0, "this":Ljava/time/LocalDate;
    move-object v1, p1

    .local v1, "end":Ljava/time/LocalDate;
    move-object v6, v0

    invoke-direct {v6}, Ljava/time/LocalDate;->getProlepticMonth()J

    move-result-wide v6

    const-wide/16 v8, 0x20

    mul-long/2addr v6, v8

    move-object v8, v0

    invoke-virtual {v8}, Ljava/time/LocalDate;->getDayOfMonth()I

    move-result v8

    int-to-long v8, v8

    add-long/2addr v6, v8

    move-wide v2, v6

    .line 1440
    .local v2, "packed1":J
    move-object v6, v1

    invoke-direct {v6}, Ljava/time/LocalDate;->getProlepticMonth()J

    move-result-wide v6

    const-wide/16 v8, 0x20

    mul-long/2addr v6, v8

    move-object v8, v1

    invoke-virtual {v8}, Ljava/time/LocalDate;->getDayOfMonth()I

    move-result v8

    int-to-long v8, v8

    add-long/2addr v6, v8

    move-wide v4, v6

    .line 1441
    .local v4, "packed2":J
    move-wide v6, v4

    move-wide v8, v2

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x20

    div-long/2addr v6, v8

    move-wide v0, v6

    .end local v0    # "this":Ljava/time/LocalDate;
    return-wide v0
.end method

.method public static now()Ljava/time/LocalDate;
    .locals 1

    .prologue
    .line 166
    invoke-static {}, Ljava/time/Clock;->systemDefaultZone()Ljava/time/Clock;

    move-result-object v0

    invoke-static {v0}, Ljava/time/LocalDate;->now(Ljava/time/Clock;)Ljava/time/LocalDate;

    move-result-object v0

    return-object v0
.end method

.method public static now(Ljava/time/Clock;)Ljava/time/LocalDate;
    .locals 12

    .prologue
    .line 196
    move-object v1, p0

    .local v1, "clock":Ljava/time/Clock;
    move-object v8, v1

    const-string v9, "clock"

    invoke-static {v8, v9}, Ljava/time/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    .line 197
    move-object v8, v1

    invoke-virtual {v8}, Ljava/time/Clock;->instant()Ljava/time/Instant;

    move-result-object v8

    move-object v2, v8

    .line 198
    .local v2, "now":Ljava/time/Instant;
    move-object v8, v1

    invoke-virtual {v8}, Ljava/time/Clock;->getZone()Ljava/time/ZoneId;

    move-result-object v8

    invoke-virtual {v8}, Ljava/time/ZoneId;->getRules()Ljava/time/bp/zone/ZoneRules;

    move-result-object v8

    move-object v9, v2

    invoke-virtual {v8, v9}, Ljava/time/bp/zone/ZoneRules;->getOffset(Ljava/time/Instant;)Ljava/time/ZoneOffset;

    move-result-object v8

    move-object v3, v8

    .line 199
    .local v3, "offset":Ljava/time/ZoneOffset;
    move-object v8, v2

    invoke-virtual {v8}, Ljava/time/Instant;->getEpochSecond()J

    move-result-wide v8

    move-object v10, v3

    invoke-virtual {v10}, Ljava/time/ZoneOffset;->getTotalSeconds()I

    move-result v10

    int-to-long v10, v10

    add-long/2addr v8, v10

    move-wide v4, v8

    .line 200
    .local v4, "epochSec":J
    move-wide v8, v4

    const-wide/32 v10, 0x15180

    invoke-static {v8, v9, v10, v11}, Ljava/time/jdk8/Jdk8Methods;->floorDiv(JJ)J

    move-result-wide v8

    move-wide v6, v8

    .line 201
    .local v6, "epochDay":J
    move-wide v8, v6

    invoke-static {v8, v9}, Ljava/time/LocalDate;->ofEpochDay(J)Ljava/time/LocalDate;

    move-result-object v8

    move-object v1, v8

    .end local v1    # "clock":Ljava/time/Clock;
    return-object v1
.end method

.method public static now(Ljava/time/ZoneId;)Ljava/time/LocalDate;
    .locals 2

    .prologue
    .line 182
    move-object v0, p0

    .local v0, "zone":Ljava/time/ZoneId;
    move-object v1, v0

    invoke-static {v1}, Ljava/time/Clock;->system(Ljava/time/ZoneId;)Ljava/time/Clock;

    move-result-object v1

    invoke-static {v1}, Ljava/time/LocalDate;->now(Ljava/time/Clock;)Ljava/time/LocalDate;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "zone":Ljava/time/ZoneId;
    return-object v0
.end method

.method public static of(III)Ljava/time/LocalDate;
    .locals 6

    .prologue
    .line 237
    move v0, p0

    .local v0, "year":I
    move v1, p1

    .local v1, "month":I
    move v2, p2

    .local v2, "dayOfMonth":I
    sget-object v3, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    move v4, v0

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Ljava/time/temporal/ChronoField;->checkValidValue(J)J

    move-result-wide v3

    .line 238
    sget-object v3, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    move v4, v1

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Ljava/time/temporal/ChronoField;->checkValidValue(J)J

    move-result-wide v3

    .line 239
    sget-object v3, Ljava/time/temporal/ChronoField;->DAY_OF_MONTH:Ljava/time/temporal/ChronoField;

    move v4, v2

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Ljava/time/temporal/ChronoField;->checkValidValue(J)J

    move-result-wide v3

    .line 240
    move v3, v0

    move v4, v1

    invoke-static {v4}, Ljava/time/Month;->of(I)Ljava/time/Month;

    move-result-object v4

    move v5, v2

    invoke-static {v3, v4, v5}, Ljava/time/LocalDate;->create(ILjava/time/Month;I)Ljava/time/LocalDate;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "year":I
    return-object v0
.end method

.method public static of(ILjava/time/Month;I)Ljava/time/LocalDate;
    .locals 6

    .prologue
    .line 218
    move v0, p0

    .local v0, "year":I
    move-object v1, p1

    .local v1, "month":Ljava/time/Month;
    move v2, p2

    .local v2, "dayOfMonth":I
    sget-object v3, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    move v4, v0

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Ljava/time/temporal/ChronoField;->checkValidValue(J)J

    move-result-wide v3

    .line 219
    move-object v3, v1

    const-string v4, "month"

    invoke-static {v3, v4}, Ljava/time/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 220
    sget-object v3, Ljava/time/temporal/ChronoField;->DAY_OF_MONTH:Ljava/time/temporal/ChronoField;

    move v4, v2

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Ljava/time/temporal/ChronoField;->checkValidValue(J)J

    move-result-wide v3

    .line 221
    move v3, v0

    move-object v4, v1

    move v5, v2

    invoke-static {v3, v4, v5}, Ljava/time/LocalDate;->create(ILjava/time/Month;I)Ljava/time/LocalDate;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "year":I
    return-object v0
.end method

.method public static ofEpochDay(J)Ljava/time/LocalDate;
    .locals 28

    .prologue
    .line 283
    move-wide/from16 v3, p0

    .local v3, "epochDay":J
    move-wide/from16 v18, v3

    const-wide/32 v20, 0xafaa8

    add-long v18, v18, v20

    move-wide/from16 v5, v18

    .line 285
    .local v5, "zeroDay":J
    move-wide/from16 v18, v5

    const-wide/16 v20, 0x3c

    sub-long v18, v18, v20

    move-wide/from16 v5, v18

    .line 286
    const-wide/16 v18, 0x0

    move-wide/from16 v7, v18

    .line 287
    .local v7, "adjust":J
    move-wide/from16 v18, v5

    const-wide/16 v20, 0x0

    cmp-long v18, v18, v20

    if-gez v18, :cond_0

    .line 289
    move-wide/from16 v18, v5

    const-wide/16 v20, 0x1

    add-long v18, v18, v20

    const-wide/32 v20, 0x23ab1

    div-long v18, v18, v20

    const-wide/16 v20, 0x1

    sub-long v18, v18, v20

    move-wide/from16 v9, v18

    .line 290
    .local v9, "adjustCycles":J
    move-wide/from16 v18, v9

    const-wide/16 v20, 0x190

    mul-long v18, v18, v20

    move-wide/from16 v7, v18

    .line 291
    move-wide/from16 v18, v5

    move-wide/from16 v20, v9

    move-wide/from16 v0, v20

    neg-long v0, v0

    move-wide/from16 v20, v0

    const-wide/32 v22, 0x23ab1

    mul-long v20, v20, v22

    add-long v18, v18, v20

    move-wide/from16 v5, v18

    .line 293
    .end local v9    # "adjustCycles":J
    :cond_0
    const-wide/16 v18, 0x190

    move-wide/from16 v20, v5

    mul-long v18, v18, v20

    const-wide/16 v20, 0x24f

    add-long v18, v18, v20

    const-wide/32 v20, 0x23ab1

    div-long v18, v18, v20

    move-wide/from16 v9, v18

    .line 294
    .local v9, "yearEst":J
    move-wide/from16 v18, v5

    const-wide/16 v20, 0x16d

    move-wide/from16 v22, v9

    mul-long v20, v20, v22

    move-wide/from16 v22, v9

    const-wide/16 v24, 0x4

    div-long v22, v22, v24

    add-long v20, v20, v22

    move-wide/from16 v22, v9

    const-wide/16 v24, 0x64

    div-long v22, v22, v24

    sub-long v20, v20, v22

    move-wide/from16 v22, v9

    const-wide/16 v24, 0x190

    div-long v22, v22, v24

    add-long v20, v20, v22

    sub-long v18, v18, v20

    move-wide/from16 v11, v18

    .line 295
    .local v11, "doyEst":J
    move-wide/from16 v18, v11

    const-wide/16 v20, 0x0

    cmp-long v18, v18, v20

    if-gez v18, :cond_1

    .line 297
    move-wide/from16 v18, v9

    const-wide/16 v20, 0x1

    sub-long v18, v18, v20

    move-wide/from16 v9, v18

    .line 298
    move-wide/from16 v18, v5

    const-wide/16 v20, 0x16d

    move-wide/from16 v22, v9

    mul-long v20, v20, v22

    move-wide/from16 v22, v9

    const-wide/16 v24, 0x4

    div-long v22, v22, v24

    add-long v20, v20, v22

    move-wide/from16 v22, v9

    const-wide/16 v24, 0x64

    div-long v22, v22, v24

    sub-long v20, v20, v22

    move-wide/from16 v22, v9

    const-wide/16 v24, 0x190

    div-long v22, v22, v24

    add-long v20, v20, v22

    sub-long v18, v18, v20

    move-wide/from16 v11, v18

    .line 300
    :cond_1
    move-wide/from16 v18, v9

    move-wide/from16 v20, v7

    add-long v18, v18, v20

    move-wide/from16 v9, v18

    .line 301
    move-wide/from16 v18, v11

    move-wide/from16 v0, v18

    long-to-int v0, v0

    move/from16 v18, v0

    move/from16 v13, v18

    .line 304
    .local v13, "marchDoy0":I
    move/from16 v18, v13

    const/16 v19, 0x5

    mul-int/lit8 v18, v18, 0x5

    const/16 v19, 0x2

    add-int/lit8 v18, v18, 0x2

    const/16 v19, 0x99

    move/from16 v0, v18

    div-int/lit16 v0, v0, 0x99

    move/from16 v18, v0

    move/from16 v14, v18

    .line 305
    .local v14, "marchMonth0":I
    move/from16 v18, v14

    const/16 v19, 0x2

    add-int/lit8 v18, v18, 0x2

    const/16 v19, 0xc

    rem-int/lit8 v18, v18, 0xc

    const/16 v19, 0x1

    add-int/lit8 v18, v18, 0x1

    move/from16 v15, v18

    .line 306
    .local v15, "month":I
    move/from16 v18, v13

    move/from16 v19, v14

    const/16 v20, 0x132

    move/from16 v0, v19

    mul-int/lit16 v0, v0, 0x132

    move/from16 v19, v0

    const/16 v20, 0x5

    add-int/lit8 v19, v19, 0x5

    const/16 v20, 0xa

    div-int/lit8 v19, v19, 0xa

    sub-int v18, v18, v19

    const/16 v19, 0x1

    add-int/lit8 v18, v18, 0x1

    move/from16 v16, v18

    .line 307
    .local v16, "dom":I
    move-wide/from16 v18, v9

    move/from16 v20, v14

    const/16 v21, 0xa

    div-int/lit8 v20, v20, 0xa

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    add-long v18, v18, v20

    move-wide/from16 v9, v18

    .line 310
    sget-object v18, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    move-wide/from16 v19, v9

    invoke-virtual/range {v18 .. v20}, Ljava/time/temporal/ChronoField;->checkValidIntValue(J)I

    move-result v18

    move/from16 v17, v18

    .line 311
    .local v17, "year":I
    new-instance v18, Ljava/time/LocalDate;

    move-object/from16 v26, v18

    move-object/from16 v18, v26

    move-object/from16 v19, v26

    move/from16 v20, v17

    move/from16 v21, v15

    move/from16 v22, v16

    invoke-direct/range {v19 .. v22}, Ljava/time/LocalDate;-><init>(III)V

    move-object/from16 v3, v18

    .end local v3    # "epochDay":J
    return-object v3
.end method

.method public static ofYearDay(II)Ljava/time/LocalDate;
    .locals 12

    .prologue
    .line 256
    move v1, p0

    .local v1, "year":I
    move v2, p1

    .local v2, "dayOfYear":I
    sget-object v7, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    move v8, v1

    int-to-long v8, v8

    invoke-virtual {v7, v8, v9}, Ljava/time/temporal/ChronoField;->checkValidValue(J)J

    move-result-wide v7

    .line 257
    sget-object v7, Ljava/time/temporal/ChronoField;->DAY_OF_YEAR:Ljava/time/temporal/ChronoField;

    move v8, v2

    int-to-long v8, v8

    invoke-virtual {v7, v8, v9}, Ljava/time/temporal/ChronoField;->checkValidValue(J)J

    move-result-wide v7

    .line 258
    sget-object v7, Ljava/time/chrono/IsoChronology;->INSTANCE:Ljava/time/chrono/IsoChronology;

    move v8, v1

    int-to-long v8, v8

    invoke-virtual {v7, v8, v9}, Ljava/time/chrono/IsoChronology;->isLeapYear(J)Z

    move-result v7

    move v3, v7

    .line 259
    .local v3, "leap":Z
    move v7, v2

    const/16 v8, 0x16e

    if-ne v7, v8, :cond_0

    move v7, v3

    if-nez v7, :cond_0

    .line 260
    new-instance v7, Ljava/time/DateTimeException;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v11, v9

    move-object v9, v11

    move-object v10, v11

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Invalid date \'DayOfYear 366\' as \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move v10, v1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\' is not a leap year"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 262
    :cond_0
    move v7, v2

    const/4 v8, 0x1

    add-int/lit8 v7, v7, -0x1

    const/16 v8, 0x1f

    div-int/lit8 v7, v7, 0x1f

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    invoke-static {v7}, Ljava/time/Month;->of(I)Ljava/time/Month;

    move-result-object v7

    move-object v4, v7

    .line 263
    .local v4, "moy":Ljava/time/Month;
    move-object v7, v4

    move v8, v3

    invoke-virtual {v7, v8}, Ljava/time/Month;->firstDayOfYear(Z)I

    move-result v7

    move-object v8, v4

    move v9, v3

    invoke-virtual {v8, v9}, Ljava/time/Month;->length(Z)I

    move-result v8

    add-int/2addr v7, v8

    const/4 v8, 0x1

    add-int/lit8 v7, v7, -0x1

    move v5, v7

    .line 264
    .local v5, "monthEnd":I
    move v7, v2

    move v8, v5

    if-le v7, v8, :cond_1

    .line 265
    move-object v7, v4

    const-wide/16 v8, 0x1

    invoke-virtual {v7, v8, v9}, Ljava/time/Month;->plus(J)Ljava/time/Month;

    move-result-object v7

    move-object v4, v7

    .line 267
    :cond_1
    move v7, v2

    move-object v8, v4

    move v9, v3

    invoke-virtual {v8, v9}, Ljava/time/Month;->firstDayOfYear(Z)I

    move-result v8

    sub-int/2addr v7, v8

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    move v6, v7

    .line 268
    .local v6, "dom":I
    move v7, v1

    move-object v8, v4

    move v9, v6

    invoke-static {v7, v8, v9}, Ljava/time/LocalDate;->create(ILjava/time/Month;I)Ljava/time/LocalDate;

    move-result-object v7

    move-object v1, v7

    .end local v1    # "year":I
    return-object v1
.end method

.method public static parse(Ljava/lang/CharSequence;)Ljava/time/LocalDate;
    .locals 3

    .prologue
    .line 352
    move-object v0, p0

    .local v0, "text":Ljava/lang/CharSequence;
    move-object v1, v0

    sget-object v2, Ljava/time/format/DateTimeFormatter;->ISO_LOCAL_DATE:Ljava/time/format/DateTimeFormatter;

    invoke-static {v1, v2}, Ljava/time/LocalDate;->parse(Ljava/lang/CharSequence;Ljava/time/format/DateTimeFormatter;)Ljava/time/LocalDate;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "text":Ljava/lang/CharSequence;
    return-object v0
.end method

.method public static parse(Ljava/lang/CharSequence;Ljava/time/format/DateTimeFormatter;)Ljava/time/LocalDate;
    .locals 5

    .prologue
    .line 366
    move-object v0, p0

    .local v0, "text":Ljava/lang/CharSequence;
    move-object v1, p1

    .local v1, "formatter":Ljava/time/format/DateTimeFormatter;
    move-object v2, v1

    const-string v3, "formatter"

    invoke-static {v2, v3}, Ljava/time/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 367
    move-object v2, v1

    move-object v3, v0

    sget-object v4, Ljava/time/LocalDate;->FROM:Ljava/time/temporal/TemporalQuery;

    invoke-virtual {v2, v3, v4}, Ljava/time/format/DateTimeFormatter;->parse(Ljava/lang/CharSequence;Ljava/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/time/LocalDate;

    move-object v0, v2

    .end local v0    # "text":Ljava/lang/CharSequence;
    return-object v0
.end method

.method static readExternal(Ljava/io/DataInput;)Ljava/time/LocalDate;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1883
    move-object v0, p0

    .local v0, "in":Ljava/io/DataInput;
    move-object v4, v0

    invoke-interface {v4}, Ljava/io/DataInput;->readInt()I

    move-result v4

    move v1, v4

    .line 1884
    .local v1, "year":I
    move-object v4, v0

    invoke-interface {v4}, Ljava/io/DataInput;->readByte()B

    move-result v4

    move v2, v4

    .line 1885
    .local v2, "month":I
    move-object v4, v0

    invoke-interface {v4}, Ljava/io/DataInput;->readByte()B

    move-result v4

    move v3, v4

    .line 1886
    .local v3, "dayOfMonth":I
    move v4, v1

    move v5, v2

    move v6, v3

    invoke-static {v4, v5, v6}, Ljava/time/LocalDate;->of(III)Ljava/time/LocalDate;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "in":Ljava/io/DataInput;
    return-object v0
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 1873
    move-object v0, p0

    .local v0, "this":Ljava/time/LocalDate;
    new-instance v1, Ljava/io/InvalidObjectException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string v3, "Deserialization via serialization delegate"

    invoke-direct {v2, v3}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static resolvePreviousValid(III)Ljava/time/LocalDate;
    .locals 8

    .prologue
    .line 400
    move v1, p0

    .local v1, "year":I
    move v2, p1

    .local v2, "month":I
    move v3, p2

    .local v3, "day":I
    move v4, v2

    packed-switch v4, :pswitch_data_0

    .line 411
    :goto_0
    :pswitch_0
    move v4, v1

    move v5, v2

    move v6, v3

    invoke-static {v4, v5, v6}, Ljava/time/LocalDate;->of(III)Ljava/time/LocalDate;

    move-result-object v4

    move-object v1, v4

    .end local v1    # "year":I
    return-object v1

    .line 402
    .restart local v1    # "year":I
    :pswitch_1
    move v4, v3

    sget-object v5, Ljava/time/chrono/IsoChronology;->INSTANCE:Ljava/time/chrono/IsoChronology;

    move v6, v1

    int-to-long v6, v6

    invoke-virtual {v5, v6, v7}, Ljava/time/chrono/IsoChronology;->isLeapYear(J)Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v5, 0x1d

    :goto_1
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    move v3, v4

    .line 403
    goto :goto_0

    .line 402
    :cond_0
    const/16 v5, 0x1c

    goto :goto_1

    .line 408
    :pswitch_2
    move v4, v3

    const/16 v5, 0x1e

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    move v3, v4

    goto :goto_0

    .line 400
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 6

    .prologue
    .line 1864
    move-object v0, p0

    .local v0, "this":Ljava/time/LocalDate;
    new-instance v1, Ljava/time/Ser;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const/4 v3, 0x3

    move-object v4, v0

    invoke-direct {v2, v3, v4}, Ljava/time/Ser;-><init>(BLjava/lang/Object;)V

    move-object v0, v1

    .end local v0    # "this":Ljava/time/LocalDate;
    return-object v0
.end method


# virtual methods
.method public adjustInto(Ljava/time/temporal/Temporal;)Ljava/time/temporal/Temporal;
    .locals 4

    .prologue
    .line 1369
    move-object v0, p0

    .local v0, "this":Ljava/time/LocalDate;
    move-object v1, p1

    .local v1, "temporal":Ljava/time/temporal/Temporal;
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Ljava/time/chrono/AbstractChronoLocalDate;->adjustInto(Ljava/time/temporal/Temporal;)Ljava/time/temporal/Temporal;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljava/time/LocalDate;
    return-object v0
.end method

.method public atStartOfDay()Ljava/time/LocalDateTime;
    .locals 3

    .prologue
    .line 1590
    move-object v0, p0

    .local v0, "this":Ljava/time/LocalDate;
    move-object v1, v0

    sget-object v2, Ljava/time/LocalTime;->MIDNIGHT:Ljava/time/LocalTime;

    invoke-static {v1, v2}, Ljava/time/LocalDateTime;->of(Ljava/time/LocalDate;Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljava/time/LocalDate;
    return-object v0
.end method

.method public atStartOfDay(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;
    .locals 7

    .prologue
    .line 1618
    move-object v0, p0

    .local v0, "this":Ljava/time/LocalDate;
    move-object v1, p1

    .local v1, "zone":Ljava/time/ZoneId;
    move-object v5, v1

    const-string v6, "zone"

    invoke-static {v5, v6}, Ljava/time/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 1621
    move-object v5, v0

    sget-object v6, Ljava/time/LocalTime;->MIDNIGHT:Ljava/time/LocalTime;

    invoke-virtual {v5, v6}, Ljava/time/LocalDate;->atTime(Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    move-result-object v5

    move-object v2, v5

    .line 1622
    .local v2, "ldt":Ljava/time/LocalDateTime;
    move-object v5, v1

    instance-of v5, v5, Ljava/time/ZoneOffset;

    if-nez v5, :cond_0

    .line 1623
    move-object v5, v1

    invoke-virtual {v5}, Ljava/time/ZoneId;->getRules()Ljava/time/bp/zone/ZoneRules;

    move-result-object v5

    move-object v3, v5

    .line 1624
    .local v3, "rules":Ljava/time/bp/zone/ZoneRules;
    move-object v5, v3

    move-object v6, v2

    invoke-virtual {v5, v6}, Ljava/time/bp/zone/ZoneRules;->getTransition(Ljava/time/LocalDateTime;)Ljava/time/bp/zone/ZoneOffsetTransition;

    move-result-object v5

    move-object v4, v5

    .line 1625
    .local v4, "trans":Ljava/time/bp/zone/ZoneOffsetTransition;
    move-object v5, v4

    if-eqz v5, :cond_0

    move-object v5, v4

    invoke-virtual {v5}, Ljava/time/bp/zone/ZoneOffsetTransition;->isGap()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1626
    move-object v5, v4

    invoke-virtual {v5}, Ljava/time/bp/zone/ZoneOffsetTransition;->getDateTimeAfter()Ljava/time/LocalDateTime;

    move-result-object v5

    move-object v2, v5

    .line 1629
    .end local v3    # "rules":Ljava/time/bp/zone/ZoneRules;
    .end local v4    # "trans":Ljava/time/bp/zone/ZoneOffsetTransition;
    :cond_0
    move-object v5, v2

    move-object v6, v1

    invoke-static {v5, v6}, Ljava/time/ZonedDateTime;->of(Ljava/time/LocalDateTime;Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v5

    move-object v0, v5

    .end local v0    # "this":Ljava/time/LocalDate;
    return-object v0
.end method

.method public atTime(II)Ljava/time/LocalDateTime;
    .locals 6

    .prologue
    .line 1526
    move-object v0, p0

    .local v0, "this":Ljava/time/LocalDate;
    move v1, p1

    .local v1, "hour":I
    move v2, p2

    .local v2, "minute":I
    move-object v3, v0

    move v4, v1

    move v5, v2

    invoke-static {v4, v5}, Ljava/time/LocalTime;->of(II)Ljava/time/LocalTime;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/time/LocalDate;->atTime(Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Ljava/time/LocalDate;
    return-object v0
.end method

.method public atTime(III)Ljava/time/LocalDateTime;
    .locals 8

    .prologue
    .line 1545
    move-object v0, p0

    .local v0, "this":Ljava/time/LocalDate;
    move v1, p1

    .local v1, "hour":I
    move v2, p2

    .local v2, "minute":I
    move v3, p3

    .local v3, "second":I
    move-object v4, v0

    move v5, v1

    move v6, v2

    move v7, v3

    invoke-static {v5, v6, v7}, Ljava/time/LocalTime;->of(III)Ljava/time/LocalTime;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/time/LocalDate;->atTime(Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Ljava/time/LocalDate;
    return-object v0
.end method

.method public atTime(IIII)Ljava/time/LocalDateTime;
    .locals 10

    .prologue
    .line 1564
    move-object v0, p0

    .local v0, "this":Ljava/time/LocalDate;
    move v1, p1

    .local v1, "hour":I
    move v2, p2

    .local v2, "minute":I
    move v3, p3

    .local v3, "second":I
    move v4, p4

    .local v4, "nanoOfSecond":I
    move-object v5, v0

    move v6, v1

    move v7, v2

    move v8, v3

    move v9, v4

    invoke-static {v6, v7, v8, v9}, Ljava/time/LocalTime;->of(IIII)Ljava/time/LocalTime;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/time/LocalDate;->atTime(Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    move-result-object v5

    move-object v0, v5

    .end local v0    # "this":Ljava/time/LocalDate;
    return-object v0
.end method

.method public atTime(Ljava/time/LocalTime;)Ljava/time/LocalDateTime;
    .locals 4

    .prologue
    .line 1508
    move-object v0, p0

    .local v0, "this":Ljava/time/LocalDate;
    move-object v1, p1

    .local v1, "time":Ljava/time/LocalTime;
    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Ljava/time/LocalDateTime;->of(Ljava/time/LocalDate;Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljava/time/LocalDate;
    return-object v0
.end method

.method public atTime(Ljava/time/OffsetTime;)Ljava/time/OffsetDateTime;
    .locals 4

    .prologue
    .line 1577
    move-object v0, p0

    .local v0, "this":Ljava/time/LocalDate;
    move-object v1, p1

    .local v1, "time":Ljava/time/OffsetTime;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Ljava/time/OffsetTime;->toLocalTime()Ljava/time/LocalTime;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/time/LocalDateTime;->of(Ljava/time/LocalDate;Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v3}, Ljava/time/OffsetTime;->getOffset()Ljava/time/ZoneOffset;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/time/OffsetDateTime;->of(Ljava/time/LocalDateTime;Ljava/time/ZoneOffset;)Ljava/time/OffsetDateTime;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljava/time/LocalDate;
    return-object v0
.end method

.method public bridge synthetic atTime(Ljava/time/LocalTime;)Ljava/time/chrono/ChronoLocalDateTime;
    .locals 4

    .prologue
    .line 101
    move-object v0, p0

    .local v0, "this":Ljava/time/LocalDate;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/time/LocalDate;->atTime(Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljava/time/LocalDate;
    return-object v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 4

    .prologue
    .line 101
    move-object v0, p0

    .local v0, "this":Ljava/time/LocalDate;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    check-cast v3, Ljava/time/chrono/ChronoLocalDate;

    invoke-virtual {v2, v3}, Ljava/time/LocalDate;->compareTo(Ljava/time/chrono/ChronoLocalDate;)I

    move-result v2

    move v0, v2

    .end local v0    # "this":Ljava/time/LocalDate;
    return v0
.end method

.method public compareTo(Ljava/time/chrono/ChronoLocalDate;)I
    .locals 4

    .prologue
    .line 1672
    move-object v0, p0

    .local v0, "this":Ljava/time/LocalDate;
    move-object v1, p1

    .local v1, "other":Ljava/time/chrono/ChronoLocalDate;
    move-object v2, v1

    instance-of v2, v2, Ljava/time/LocalDate;

    if-eqz v2, :cond_0

    .line 1673
    move-object v2, v0

    move-object v3, v1

    check-cast v3, Ljava/time/LocalDate;

    invoke-virtual {v2, v3}, Ljava/time/LocalDate;->compareTo0(Ljava/time/LocalDate;)I

    move-result v2

    move v0, v2

    .line 1675
    .end local v0    # "this":Ljava/time/LocalDate;
    :goto_0
    return v0

    .restart local v0    # "this":Ljava/time/LocalDate;
    :cond_0
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Ljava/time/chrono/AbstractChronoLocalDate;->compareTo(Ljava/time/chrono/ChronoLocalDate;)I

    move-result v2

    move v0, v2

    goto :goto_0
.end method

.method compareTo0(Ljava/time/LocalDate;)I
    .locals 5

    .prologue
    .line 1679
    move-object v0, p0

    .local v0, "this":Ljava/time/LocalDate;
    move-object v1, p1

    .local v1, "otherDate":Ljava/time/LocalDate;
    move-object v3, v0

    iget v3, v3, Ljava/time/LocalDate;->year:I

    move-object v4, v1

    iget v4, v4, Ljava/time/LocalDate;->year:I

    sub-int/2addr v3, v4

    move v2, v3

    .line 1680
    .local v2, "cmp":I
    move v3, v2

    if-nez v3, :cond_0

    .line 1681
    move-object v3, v0

    iget-short v3, v3, Ljava/time/LocalDate;->month:S

    move-object v4, v1

    iget-short v4, v4, Ljava/time/LocalDate;->month:S

    sub-int/2addr v3, v4

    move v2, v3

    .line 1682
    move v3, v2

    if-nez v3, :cond_0

    .line 1683
    move-object v3, v0

    iget-short v3, v3, Ljava/time/LocalDate;->day:S

    move-object v4, v1

    iget-short v4, v4, Ljava/time/LocalDate;->day:S

    sub-int/2addr v3, v4

    move v2, v3

    .line 1686
    :cond_0
    move v3, v2

    move v0, v3

    .end local v0    # "this":Ljava/time/LocalDate;
    return v0
.end method

.method daysUntil(Ljava/time/LocalDate;)J
    .locals 6

    .prologue
    .line 1435
    move-object v0, p0

    .local v0, "this":Ljava/time/LocalDate;
    move-object v1, p1

    .local v1, "end":Ljava/time/LocalDate;
    move-object v2, v1

    invoke-virtual {v2}, Ljava/time/LocalDate;->toEpochDay()J

    move-result-wide v2

    move-object v4, v0

    invoke-virtual {v4}, Ljava/time/LocalDate;->toEpochDay()J

    move-result-wide v4

    sub-long/2addr v2, v4

    move-wide v0, v2

    .end local v0    # "this":Ljava/time/LocalDate;
    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    .line 1791
    move-object v0, p0

    .local v0, "this":Ljava/time/LocalDate;
    move-object v1, p1

    .local v1, "obj":Ljava/lang/Object;
    move-object v2, v0

    move-object v3, v1

    if-ne v2, v3, :cond_0

    .line 1792
    const/4 v2, 0x1

    move v0, v2

    .line 1797
    .end local v0    # "this":Ljava/time/LocalDate;
    :goto_0
    return v0

    .line 1794
    .restart local v0    # "this":Ljava/time/LocalDate;
    :cond_0
    move-object v2, v1

    instance-of v2, v2, Ljava/time/LocalDate;

    if-eqz v2, :cond_2

    .line 1795
    move-object v2, v0

    move-object v3, v1

    check-cast v3, Ljava/time/LocalDate;

    invoke-virtual {v2, v3}, Ljava/time/LocalDate;->compareTo0(Ljava/time/LocalDate;)I

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x1

    :goto_1
    move v0, v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    .line 1797
    :cond_2
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method

.method public format(Ljava/time/format/DateTimeFormatter;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 1859
    move-object v0, p0

    .local v0, "this":Ljava/time/LocalDate;
    move-object v1, p1

    .local v1, "formatter":Ljava/time/format/DateTimeFormatter;
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Ljava/time/chrono/AbstractChronoLocalDate;->format(Ljava/time/format/DateTimeFormatter;)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljava/time/LocalDate;
    return-object v0
.end method

.method public get(Ljava/time/temporal/TemporalField;)I
    .locals 4

    .prologue
    .line 536
    move-object v0, p0

    .local v0, "this":Ljava/time/LocalDate;
    move-object v1, p1

    .local v1, "field":Ljava/time/temporal/TemporalField;
    move-object v2, v1

    instance-of v2, v2, Ljava/time/temporal/ChronoField;

    if-eqz v2, :cond_0

    .line 537
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljava/time/LocalDate;->get0(Ljava/time/temporal/TemporalField;)I

    move-result v2

    move v0, v2

    .line 539
    .end local v0    # "this":Ljava/time/LocalDate;
    :goto_0
    return v0

    .restart local v0    # "this":Ljava/time/LocalDate;
    :cond_0
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Ljava/time/chrono/AbstractChronoLocalDate;->get(Ljava/time/temporal/TemporalField;)I

    move-result v2

    move v0, v2

    goto :goto_0
.end method

.method public bridge synthetic getChronology()Ljava/time/chrono/AbstractChronology;
    .locals 2

    .prologue
    .line 101
    move-object v0, p0

    .local v0, "this":Ljava/time/LocalDate;
    move-object v1, v0

    invoke-virtual {v1}, Ljava/time/LocalDate;->getChronology()Ljava/time/chrono/IsoChronology;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljava/time/LocalDate;
    return-object v0
.end method

.method public bridge synthetic getChronology()Ljava/time/chrono/Chronology;
    .locals 2

    .prologue
    .line 101
    move-object v0, p0

    .local v0, "this":Ljava/time/LocalDate;
    move-object v1, v0

    invoke-virtual {v1}, Ljava/time/LocalDate;->getChronology()Ljava/time/chrono/IsoChronology;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljava/time/LocalDate;
    return-object v0
.end method

.method public getChronology()Ljava/time/chrono/IsoChronology;
    .locals 2

    .prologue
    .line 614
    move-object v0, p0

    .local v0, "this":Ljava/time/LocalDate;
    sget-object v1, Ljava/time/chrono/IsoChronology;->INSTANCE:Ljava/time/chrono/IsoChronology;

    move-object v0, v1

    .end local v0    # "this":Ljava/time/LocalDate;
    return-object v0
.end method

.method public getDayOfMonth()I
    .locals 2

    .prologue
    .line 691
    move-object v0, p0

    .local v0, "this":Ljava/time/LocalDate;
    move-object v1, v0

    iget-short v1, v1, Ljava/time/LocalDate;->day:S

    move v0, v1

    .end local v0    # "this":Ljava/time/LocalDate;
    return v0
.end method

.method public getDayOfWeek()Ljava/time/DayOfWeek;
    .locals 6

    .prologue
    .line 719
    move-object v0, p0

    .local v0, "this":Ljava/time/LocalDate;
    move-object v2, v0

    invoke-virtual {v2}, Ljava/time/LocalDate;->toEpochDay()J

    move-result-wide v2

    const-wide/16 v4, 0x3

    add-long/2addr v2, v4

    const/4 v4, 0x7

    invoke-static {v2, v3, v4}, Ljava/time/jdk8/Jdk8Methods;->floorMod(JI)I

    move-result v2

    move v1, v2

    .line 720
    .local v1, "dow0":I
    move v2, v1

    const/4 v3, 0x1

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/time/DayOfWeek;->of(I)Ljava/time/DayOfWeek;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljava/time/LocalDate;
    return-object v0
.end method

.method public getDayOfYear()I
    .locals 3

    .prologue
    .line 702
    move-object v0, p0

    .local v0, "this":Ljava/time/LocalDate;
    move-object v1, v0

    invoke-virtual {v1}, Ljava/time/LocalDate;->getMonth()Ljava/time/Month;

    move-result-object v1

    move-object v2, v0

    invoke-virtual {v2}, Ljava/time/LocalDate;->isLeapYear()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/time/Month;->firstDayOfYear(Z)I

    move-result v1

    move-object v2, v0

    iget-short v2, v2, Ljava/time/LocalDate;->day:S

    add-int/2addr v1, v2

    const/4 v2, 0x1

    add-int/lit8 v1, v1, -0x1

    move v0, v1

    .end local v0    # "this":Ljava/time/LocalDate;
    return v0
.end method

.method public getEra()Ljava/time/chrono/Era;
    .locals 2

    .prologue
    .line 637
    move-object v0, p0

    .local v0, "this":Ljava/time/LocalDate;
    move-object v1, v0

    invoke-super {v1}, Ljava/time/chrono/AbstractChronoLocalDate;->getEra()Ljava/time/chrono/Era;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljava/time/LocalDate;
    return-object v0
.end method

.method public getLong(Ljava/time/temporal/TemporalField;)J
    .locals 4

    .prologue
    .line 566
    move-object v0, p0

    .local v0, "this":Ljava/time/LocalDate;
    move-object v1, p1

    .local v1, "field":Ljava/time/temporal/TemporalField;
    move-object v2, v1

    instance-of v2, v2, Ljava/time/temporal/ChronoField;

    if-eqz v2, :cond_2

    .line 567
    move-object v2, v1

    sget-object v3, Ljava/time/temporal/ChronoField;->EPOCH_DAY:Ljava/time/temporal/ChronoField;

    if-ne v2, v3, :cond_0

    .line 568
    move-object v2, v0

    invoke-virtual {v2}, Ljava/time/LocalDate;->toEpochDay()J

    move-result-wide v2

    move-wide v0, v2

    .line 575
    .end local v0    # "this":Ljava/time/LocalDate;
    :goto_0
    return-wide v0

    .line 570
    .restart local v0    # "this":Ljava/time/LocalDate;
    :cond_0
    move-object v2, v1

    sget-object v3, Ljava/time/temporal/ChronoField;->PROLEPTIC_MONTH:Ljava/time/temporal/ChronoField;

    if-ne v2, v3, :cond_1

    .line 571
    move-object v2, v0

    invoke-direct {v2}, Ljava/time/LocalDate;->getProlepticMonth()J

    move-result-wide v2

    move-wide v0, v2

    goto :goto_0

    .line 573
    :cond_1
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljava/time/LocalDate;->get0(Ljava/time/temporal/TemporalField;)I

    move-result v2

    int-to-long v2, v2

    move-wide v0, v2

    goto :goto_0

    .line 575
    :cond_2
    move-object v2, v1

    move-object v3, v0

    invoke-interface {v2, v3}, Ljava/time/temporal/TemporalField;->getFrom(Ljava/time/temporal/TemporalAccessor;)J

    move-result-wide v2

    move-wide v0, v2

    goto :goto_0
.end method

.method public getMonth()Ljava/time/Month;
    .locals 2

    .prologue
    .line 680
    move-object v0, p0

    .local v0, "this":Ljava/time/LocalDate;
    move-object v1, v0

    iget-short v1, v1, Ljava/time/LocalDate;->month:S

    invoke-static {v1}, Ljava/time/Month;->of(I)Ljava/time/Month;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljava/time/LocalDate;
    return-object v0
.end method

.method public getMonthValue()I
    .locals 2

    .prologue
    .line 665
    move-object v0, p0

    .local v0, "this":Ljava/time/LocalDate;
    move-object v1, v0

    iget-short v1, v1, Ljava/time/LocalDate;->month:S

    move v0, v1

    .end local v0    # "this":Ljava/time/LocalDate;
    return v0
.end method

.method public getYear()I
    .locals 2

    .prologue
    .line 651
    move-object v0, p0

    .local v0, "this":Ljava/time/LocalDate;
    move-object v1, v0

    iget v1, v1, Ljava/time/LocalDate;->year:I

    move v0, v1

    .end local v0    # "this":Ljava/time/LocalDate;
    return v0
.end method

.method public hashCode()I
    .locals 8

    .prologue
    .line 1807
    move-object v0, p0

    .local v0, "this":Ljava/time/LocalDate;
    move-object v4, v0

    iget v4, v4, Ljava/time/LocalDate;->year:I

    move v1, v4

    .line 1808
    .local v1, "yearValue":I
    move-object v4, v0

    iget-short v4, v4, Ljava/time/LocalDate;->month:S

    move v2, v4

    .line 1809
    .local v2, "monthValue":I
    move-object v4, v0

    iget-short v4, v4, Ljava/time/LocalDate;->day:S

    move v3, v4

    .line 1810
    .local v3, "dayValue":I
    move v4, v1

    const/16 v5, -0x800

    and-int/lit16 v4, v4, -0x800

    move v5, v1

    const/16 v6, 0xb

    shl-int/lit8 v5, v5, 0xb

    move v6, v2

    const/4 v7, 0x6

    shl-int/lit8 v6, v6, 0x6

    add-int/2addr v5, v6

    move v6, v3

    add-int/2addr v5, v6

    xor-int/2addr v4, v5

    move v0, v4

    .end local v0    # "this":Ljava/time/LocalDate;
    return v0
.end method

.method public isAfter(Ljava/time/chrono/AbstractChronoLocalDate;)Z
    .locals 4

    .prologue
    .line 1712
    move-object v0, p0

    .local v0, "this":Ljava/time/LocalDate;
    move-object v1, p1

    .local v1, "other":Ljava/time/chrono/AbstractChronoLocalDate;
    move-object v2, v1

    instance-of v2, v2, Ljava/time/LocalDate;

    if-eqz v2, :cond_1

    .line 1713
    move-object v2, v0

    move-object v3, v1

    check-cast v3, Ljava/time/LocalDate;

    invoke-virtual {v2, v3}, Ljava/time/LocalDate;->compareTo0(Ljava/time/LocalDate;)I

    move-result v2

    if-lez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .line 1715
    .end local v0    # "this":Ljava/time/LocalDate;
    :goto_1
    return v0

    .line 1713
    .restart local v0    # "this":Ljava/time/LocalDate;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 1715
    :cond_1
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Ljava/time/chrono/AbstractChronoLocalDate;->isAfter(Ljava/time/chrono/AbstractChronoLocalDate;)Z

    move-result v2

    move v0, v2

    goto :goto_1
.end method

.method public isBefore(Ljava/time/chrono/AbstractChronoLocalDate;)Z
    .locals 4

    .prologue
    .line 1741
    move-object v0, p0

    .local v0, "this":Ljava/time/LocalDate;
    move-object v1, p1

    .local v1, "other":Ljava/time/chrono/AbstractChronoLocalDate;
    move-object v2, v1

    instance-of v2, v2, Ljava/time/LocalDate;

    if-eqz v2, :cond_1

    .line 1742
    move-object v2, v0

    move-object v3, v1

    check-cast v3, Ljava/time/LocalDate;

    invoke-virtual {v2, v3}, Ljava/time/LocalDate;->compareTo0(Ljava/time/LocalDate;)I

    move-result v2

    if-gez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .line 1744
    .end local v0    # "this":Ljava/time/LocalDate;
    :goto_1
    return v0

    .line 1742
    .restart local v0    # "this":Ljava/time/LocalDate;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 1744
    :cond_1
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Ljava/time/chrono/AbstractChronoLocalDate;->isBefore(Ljava/time/chrono/AbstractChronoLocalDate;)Z

    move-result v2

    move v0, v2

    goto :goto_1
.end method

.method public isEqual(Ljava/time/chrono/AbstractChronoLocalDate;)Z
    .locals 4

    .prologue
    .line 1770
    move-object v0, p0

    .local v0, "this":Ljava/time/LocalDate;
    move-object v1, p1

    .local v1, "other":Ljava/time/chrono/AbstractChronoLocalDate;
    move-object v2, v1

    instance-of v2, v2, Ljava/time/LocalDate;

    if-eqz v2, :cond_1

    .line 1771
    move-object v2, v0

    move-object v3, v1

    check-cast v3, Ljava/time/LocalDate;

    invoke-virtual {v2, v3}, Ljava/time/LocalDate;->compareTo0(Ljava/time/LocalDate;)I

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .line 1773
    .end local v0    # "this":Ljava/time/LocalDate;
    :goto_1
    return v0

    .line 1771
    .restart local v0    # "this":Ljava/time/LocalDate;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 1773
    :cond_1
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Ljava/time/chrono/AbstractChronoLocalDate;->isEqual(Ljava/time/chrono/AbstractChronoLocalDate;)Z

    move-result v2

    move v0, v2

    goto :goto_1
.end method

.method public isLeapYear()Z
    .locals 4

    .prologue
    .line 744
    move-object v0, p0

    .local v0, "this":Ljava/time/LocalDate;
    sget-object v1, Ljava/time/chrono/IsoChronology;->INSTANCE:Ljava/time/chrono/IsoChronology;

    move-object v2, v0

    iget v2, v2, Ljava/time/LocalDate;->year:I

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Ljava/time/chrono/IsoChronology;->isLeapYear(J)Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Ljava/time/LocalDate;
    return v0
.end method

.method public isSupported(Ljava/time/temporal/TemporalField;)Z
    .locals 4

    .prologue
    .line 466
    move-object v0, p0

    .local v0, "this":Ljava/time/LocalDate;
    move-object v1, p1

    .local v1, "field":Ljava/time/temporal/TemporalField;
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Ljava/time/chrono/AbstractChronoLocalDate;->isSupported(Ljava/time/temporal/TemporalField;)Z

    move-result v2

    move v0, v2

    .end local v0    # "this":Ljava/time/LocalDate;
    return v0
.end method

.method public lengthOfMonth()I
    .locals 2

    .prologue
    .line 757
    move-object v0, p0

    .local v0, "this":Ljava/time/LocalDate;
    move-object v1, v0

    iget-short v1, v1, Ljava/time/LocalDate;->month:S

    packed-switch v1, :pswitch_data_0

    .line 766
    :pswitch_0
    const/16 v1, 0x1f

    move v0, v1

    .end local v0    # "this":Ljava/time/LocalDate;
    :goto_0
    return v0

    .line 759
    .restart local v0    # "this":Ljava/time/LocalDate;
    :pswitch_1
    move-object v1, v0

    invoke-virtual {v1}, Ljava/time/LocalDate;->isLeapYear()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x1d

    :goto_1
    move v0, v1

    goto :goto_0

    :cond_0
    const/16 v1, 0x1c

    goto :goto_1

    .line 764
    :pswitch_2
    const/16 v1, 0x1e

    move v0, v1

    goto :goto_0

    .line 757
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public lengthOfYear()I
    .locals 2

    .prologue
    .line 779
    move-object v0, p0

    .local v0, "this":Ljava/time/LocalDate;
    move-object v1, v0

    invoke-virtual {v1}, Ljava/time/LocalDate;->isLeapYear()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x16e

    :goto_0
    move v0, v1

    .end local v0    # "this":Ljava/time/LocalDate;
    return v0

    .restart local v0    # "this":Ljava/time/LocalDate;
    :cond_0
    const/16 v1, 0x16d

    goto :goto_0
.end method

.method public minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/LocalDate;
    .locals 9

    .prologue
    .line 1225
    move-object v1, p0

    .local v1, "this":Ljava/time/LocalDate;
    move-wide v2, p1

    .local v2, "amountToSubtract":J
    move-object v4, p3

    .local v4, "unit":Ljava/time/temporal/TemporalUnit;
    move-wide v5, v2

    const-wide/high16 v7, -0x8000000000000000L

    cmp-long v5, v5, v7

    if-nez v5, :cond_0

    move-object v5, v1

    const-wide v6, 0x7fffffffffffffffL

    move-object v8, v4

    invoke-virtual {v5, v6, v7, v8}, Ljava/time/LocalDate;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/LocalDate;

    move-result-object v5

    const-wide/16 v6, 0x1

    move-object v8, v4

    invoke-virtual {v5, v6, v7, v8}, Ljava/time/LocalDate;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/LocalDate;

    move-result-object v5

    :goto_0
    move-object v1, v5

    .end local v1    # "this":Ljava/time/LocalDate;
    return-object v1

    .restart local v1    # "this":Ljava/time/LocalDate;
    :cond_0
    move-object v5, v1

    move-wide v6, v2

    neg-long v6, v6

    move-object v8, v4

    invoke-virtual {v5, v6, v7, v8}, Ljava/time/LocalDate;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/LocalDate;

    move-result-object v5

    goto :goto_0
.end method

.method public minus(Ljava/time/temporal/TemporalAmount;)Ljava/time/LocalDate;
    .locals 4

    .prologue
    .line 1205
    move-object v0, p0

    .local v0, "this":Ljava/time/LocalDate;
    move-object v1, p1

    .local v1, "amount":Ljava/time/temporal/TemporalAmount;
    move-object v2, v1

    move-object v3, v0

    invoke-interface {v2, v3}, Ljava/time/temporal/TemporalAmount;->subtractFrom(Ljava/time/temporal/Temporal;)Ljava/time/temporal/Temporal;

    move-result-object v2

    check-cast v2, Ljava/time/LocalDate;

    move-object v0, v2

    .end local v0    # "this":Ljava/time/LocalDate;
    return-object v0
.end method

.method public bridge synthetic minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/AbstractChronoLocalDate;
    .locals 9

    .prologue
    .line 101
    move-object v1, p0

    .local v1, "this":Ljava/time/LocalDate;
    move-wide v2, p1

    move-object v4, p3

    move-object v5, v1

    move-wide v6, v2

    move-object v8, v4

    invoke-virtual {v5, v6, v7, v8}, Ljava/time/LocalDate;->minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/LocalDate;

    move-result-object v5

    move-object v1, v5

    .end local v1    # "this":Ljava/time/LocalDate;
    return-object v1
.end method

.method public bridge synthetic minus(Ljava/time/temporal/TemporalAmount;)Ljava/time/chrono/AbstractChronoLocalDate;
    .locals 4

    .prologue
    .line 101
    move-object v0, p0

    .local v0, "this":Ljava/time/LocalDate;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/time/LocalDate;->minus(Ljava/time/temporal/TemporalAmount;)Ljava/time/LocalDate;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljava/time/LocalDate;
    return-object v0
.end method

.method public bridge synthetic minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/temporal/Temporal;
    .locals 9

    .prologue
    .line 101
    move-object v1, p0

    .local v1, "this":Ljava/time/LocalDate;
    move-wide v2, p1

    move-object v4, p3

    move-object v5, v1

    move-wide v6, v2

    move-object v8, v4

    invoke-virtual {v5, v6, v7, v8}, Ljava/time/LocalDate;->minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/LocalDate;

    move-result-object v5

    move-object v1, v5

    .end local v1    # "this":Ljava/time/LocalDate;
    return-object v1
.end method

.method public bridge synthetic minus(Ljava/time/temporal/TemporalAmount;)Ljava/time/temporal/Temporal;
    .locals 4

    .prologue
    .line 101
    move-object v0, p0

    .local v0, "this":Ljava/time/LocalDate;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/time/LocalDate;->minus(Ljava/time/temporal/TemporalAmount;)Ljava/time/LocalDate;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljava/time/LocalDate;
    return-object v0
.end method

.method public minusDays(J)Ljava/time/LocalDate;
    .locals 7

    .prologue
    .line 1312
    move-object v0, p0

    .local v0, "this":Ljava/time/LocalDate;
    move-wide v1, p1

    .local v1, "daysToSubtract":J
    move-wide v3, v1

    const-wide/high16 v5, -0x8000000000000000L

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    move-object v3, v0

    const-wide v4, 0x7fffffffffffffffL

    invoke-virtual {v3, v4, v5}, Ljava/time/LocalDate;->plusDays(J)Ljava/time/LocalDate;

    move-result-object v3

    const-wide/16 v4, 0x1

    invoke-virtual {v3, v4, v5}, Ljava/time/LocalDate;->plusDays(J)Ljava/time/LocalDate;

    move-result-object v3

    :goto_0
    move-object v0, v3

    .end local v0    # "this":Ljava/time/LocalDate;
    return-object v0

    .restart local v0    # "this":Ljava/time/LocalDate;
    :cond_0
    move-object v3, v0

    move-wide v4, v1

    neg-long v4, v4

    invoke-virtual {v3, v4, v5}, Ljava/time/LocalDate;->plusDays(J)Ljava/time/LocalDate;

    move-result-object v3

    goto :goto_0
.end method

.method public minusMonths(J)Ljava/time/LocalDate;
    .locals 7

    .prologue
    .line 1274
    move-object v0, p0

    .local v0, "this":Ljava/time/LocalDate;
    move-wide v1, p1

    .local v1, "monthsToSubtract":J
    move-wide v3, v1

    const-wide/high16 v5, -0x8000000000000000L

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    move-object v3, v0

    const-wide v4, 0x7fffffffffffffffL

    invoke-virtual {v3, v4, v5}, Ljava/time/LocalDate;->plusMonths(J)Ljava/time/LocalDate;

    move-result-object v3

    const-wide/16 v4, 0x1

    invoke-virtual {v3, v4, v5}, Ljava/time/LocalDate;->plusMonths(J)Ljava/time/LocalDate;

    move-result-object v3

    :goto_0
    move-object v0, v3

    .end local v0    # "this":Ljava/time/LocalDate;
    return-object v0

    .restart local v0    # "this":Ljava/time/LocalDate;
    :cond_0
    move-object v3, v0

    move-wide v4, v1

    neg-long v4, v4

    invoke-virtual {v3, v4, v5}, Ljava/time/LocalDate;->plusMonths(J)Ljava/time/LocalDate;

    move-result-object v3

    goto :goto_0
.end method

.method public minusWeeks(J)Ljava/time/LocalDate;
    .locals 7

    .prologue
    .line 1293
    move-object v0, p0

    .local v0, "this":Ljava/time/LocalDate;
    move-wide v1, p1

    .local v1, "weeksToSubtract":J
    move-wide v3, v1

    const-wide/high16 v5, -0x8000000000000000L

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    move-object v3, v0

    const-wide v4, 0x7fffffffffffffffL

    invoke-virtual {v3, v4, v5}, Ljava/time/LocalDate;->plusWeeks(J)Ljava/time/LocalDate;

    move-result-object v3

    const-wide/16 v4, 0x1

    invoke-virtual {v3, v4, v5}, Ljava/time/LocalDate;->plusWeeks(J)Ljava/time/LocalDate;

    move-result-object v3

    :goto_0
    move-object v0, v3

    .end local v0    # "this":Ljava/time/LocalDate;
    return-object v0

    .restart local v0    # "this":Ljava/time/LocalDate;
    :cond_0
    move-object v3, v0

    move-wide v4, v1

    neg-long v4, v4

    invoke-virtual {v3, v4, v5}, Ljava/time/LocalDate;->plusWeeks(J)Ljava/time/LocalDate;

    move-result-object v3

    goto :goto_0
.end method

.method public minusYears(J)Ljava/time/LocalDate;
    .locals 7

    .prologue
    .line 1250
    move-object v0, p0

    .local v0, "this":Ljava/time/LocalDate;
    move-wide v1, p1

    .local v1, "yearsToSubtract":J
    move-wide v3, v1

    const-wide/high16 v5, -0x8000000000000000L

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    move-object v3, v0

    const-wide v4, 0x7fffffffffffffffL

    invoke-virtual {v3, v4, v5}, Ljava/time/LocalDate;->plusYears(J)Ljava/time/LocalDate;

    move-result-object v3

    const-wide/16 v4, 0x1

    invoke-virtual {v3, v4, v5}, Ljava/time/LocalDate;->plusYears(J)Ljava/time/LocalDate;

    move-result-object v3

    :goto_0
    move-object v0, v3

    .end local v0    # "this":Ljava/time/LocalDate;
    return-object v0

    .restart local v0    # "this":Ljava/time/LocalDate;
    :cond_0
    move-object v3, v0

    move-wide v4, v1

    neg-long v4, v4

    invoke-virtual {v3, v4, v5}, Ljava/time/LocalDate;->plusYears(J)Ljava/time/LocalDate;

    move-result-object v3

    goto :goto_0
.end method

.method public plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/LocalDate;
    .locals 13

    .prologue
    .line 1067
    move-object v0, p0

    .local v0, "this":Ljava/time/LocalDate;
    move-wide v1, p1

    .local v1, "amountToAdd":J
    move-object/from16 v3, p3

    .local v3, "unit":Ljava/time/temporal/TemporalUnit;
    move-object v5, v3

    instance-of v5, v5, Ljava/time/temporal/ChronoUnit;

    if-eqz v5, :cond_0

    .line 1068
    move-object v5, v3

    check-cast v5, Ljava/time/temporal/ChronoUnit;

    move-object v4, v5

    .line 1069
    .local v4, "f":Ljava/time/temporal/ChronoUnit;
    sget-object v5, Ljava/time/LocalDate$2;->$SwitchMap$java$time$temporal$ChronoUnit:[I

    move-object v6, v4

    invoke-virtual {v6}, Ljava/time/temporal/ChronoUnit;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 1079
    new-instance v5, Ljava/time/temporal/UnsupportedTemporalTypeException;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unsupported unit: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v3

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/time/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1070
    :pswitch_0
    move-object v5, v0

    move-wide v6, v1

    invoke-virtual {v5, v6, v7}, Ljava/time/LocalDate;->plusDays(J)Ljava/time/LocalDate;

    move-result-object v5

    move-object v0, v5

    .line 1081
    .end local v0    # "this":Ljava/time/LocalDate;
    .end local v4    # "f":Ljava/time/temporal/ChronoUnit;
    :goto_0
    return-object v0

    .line 1071
    .restart local v0    # "this":Ljava/time/LocalDate;
    .restart local v4    # "f":Ljava/time/temporal/ChronoUnit;
    :pswitch_1
    move-object v5, v0

    move-wide v6, v1

    invoke-virtual {v5, v6, v7}, Ljava/time/LocalDate;->plusWeeks(J)Ljava/time/LocalDate;

    move-result-object v5

    move-object v0, v5

    goto :goto_0

    .line 1072
    :pswitch_2
    move-object v5, v0

    move-wide v6, v1

    invoke-virtual {v5, v6, v7}, Ljava/time/LocalDate;->plusMonths(J)Ljava/time/LocalDate;

    move-result-object v5

    move-object v0, v5

    goto :goto_0

    .line 1073
    :pswitch_3
    move-object v5, v0

    move-wide v6, v1

    invoke-virtual {v5, v6, v7}, Ljava/time/LocalDate;->plusYears(J)Ljava/time/LocalDate;

    move-result-object v5

    move-object v0, v5

    goto :goto_0

    .line 1074
    :pswitch_4
    move-object v5, v0

    move-wide v6, v1

    const/16 v8, 0xa

    invoke-static {v6, v7, v8}, Ljava/time/jdk8/Jdk8Methods;->safeMultiply(JI)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/time/LocalDate;->plusYears(J)Ljava/time/LocalDate;

    move-result-object v5

    move-object v0, v5

    goto :goto_0

    .line 1075
    :pswitch_5
    move-object v5, v0

    move-wide v6, v1

    const/16 v8, 0x64

    invoke-static {v6, v7, v8}, Ljava/time/jdk8/Jdk8Methods;->safeMultiply(JI)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/time/LocalDate;->plusYears(J)Ljava/time/LocalDate;

    move-result-object v5

    move-object v0, v5

    goto :goto_0

    .line 1076
    :pswitch_6
    move-object v5, v0

    move-wide v6, v1

    const/16 v8, 0x3e8

    invoke-static {v6, v7, v8}, Ljava/time/jdk8/Jdk8Methods;->safeMultiply(JI)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/time/LocalDate;->plusYears(J)Ljava/time/LocalDate;

    move-result-object v5

    move-object v0, v5

    goto :goto_0

    .line 1077
    :pswitch_7
    move-object v5, v0

    sget-object v6, Ljava/time/temporal/ChronoField;->ERA:Ljava/time/temporal/ChronoField;

    move-object v7, v0

    sget-object v8, Ljava/time/temporal/ChronoField;->ERA:Ljava/time/temporal/ChronoField;

    invoke-virtual {v7, v8}, Ljava/time/LocalDate;->getLong(Ljava/time/temporal/TemporalField;)J

    move-result-wide v7

    move-wide v9, v1

    invoke-static {v7, v8, v9, v10}, Ljava/time/jdk8/Jdk8Methods;->safeAdd(JJ)J

    move-result-wide v7

    invoke-virtual {v5, v6, v7, v8}, Ljava/time/LocalDate;->with(Ljava/time/temporal/TemporalField;J)Ljava/time/LocalDate;

    move-result-object v5

    move-object v0, v5

    goto :goto_0

    .line 1081
    .end local v4    # "f":Ljava/time/temporal/ChronoUnit;
    :cond_0
    move-object v5, v3

    move-object v6, v0

    move-wide v7, v1

    invoke-interface {v5, v6, v7, v8}, Ljava/time/temporal/TemporalUnit;->addTo(Ljava/time/temporal/Temporal;J)Ljava/time/temporal/Temporal;

    move-result-object v5

    check-cast v5, Ljava/time/LocalDate;

    move-object v0, v5

    goto :goto_0

    .line 1069
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public plus(Ljava/time/temporal/TemporalAmount;)Ljava/time/LocalDate;
    .locals 4

    .prologue
    .line 1047
    move-object v0, p0

    .local v0, "this":Ljava/time/LocalDate;
    move-object v1, p1

    .local v1, "amount":Ljava/time/temporal/TemporalAmount;
    move-object v2, v1

    move-object v3, v0

    invoke-interface {v2, v3}, Ljava/time/temporal/TemporalAmount;->addTo(Ljava/time/temporal/Temporal;)Ljava/time/temporal/Temporal;

    move-result-object v2

    check-cast v2, Ljava/time/LocalDate;

    move-object v0, v2

    .end local v0    # "this":Ljava/time/LocalDate;
    return-object v0
.end method

.method public bridge synthetic plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/AbstractChronoLocalDate;
    .locals 9

    .prologue
    .line 101
    move-object v1, p0

    .local v1, "this":Ljava/time/LocalDate;
    move-wide v2, p1

    move-object v4, p3

    move-object v5, v1

    move-wide v6, v2

    move-object v8, v4

    invoke-virtual {v5, v6, v7, v8}, Ljava/time/LocalDate;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/LocalDate;

    move-result-object v5

    move-object v1, v5

    .end local v1    # "this":Ljava/time/LocalDate;
    return-object v1
.end method

.method public bridge synthetic plus(Ljava/time/temporal/TemporalAmount;)Ljava/time/chrono/AbstractChronoLocalDate;
    .locals 4

    .prologue
    .line 101
    move-object v0, p0

    .local v0, "this":Ljava/time/LocalDate;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/time/LocalDate;->plus(Ljava/time/temporal/TemporalAmount;)Ljava/time/LocalDate;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljava/time/LocalDate;
    return-object v0
.end method

.method public bridge synthetic plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/temporal/Temporal;
    .locals 9

    .prologue
    .line 101
    move-object v1, p0

    .local v1, "this":Ljava/time/LocalDate;
    move-wide v2, p1

    move-object v4, p3

    move-object v5, v1

    move-wide v6, v2

    move-object v8, v4

    invoke-virtual {v5, v6, v7, v8}, Ljava/time/LocalDate;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/LocalDate;

    move-result-object v5

    move-object v1, v5

    .end local v1    # "this":Ljava/time/LocalDate;
    return-object v1
.end method

.method public bridge synthetic plus(Ljava/time/temporal/TemporalAmount;)Ljava/time/temporal/Temporal;
    .locals 4

    .prologue
    .line 101
    move-object v0, p0

    .local v0, "this":Ljava/time/LocalDate;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/time/LocalDate;->plus(Ljava/time/temporal/TemporalAmount;)Ljava/time/LocalDate;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljava/time/LocalDate;
    return-object v0
.end method

.method public plusDays(J)Ljava/time/LocalDate;
    .locals 11

    .prologue
    .line 1179
    move-object v1, p0

    .local v1, "this":Ljava/time/LocalDate;
    move-wide v2, p1

    .local v2, "daysToAdd":J
    move-wide v6, v2

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-nez v6, :cond_0

    .line 1180
    move-object v6, v1

    move-object v1, v6

    .line 1183
    .end local v1    # "this":Ljava/time/LocalDate;
    :goto_0
    return-object v1

    .line 1182
    .restart local v1    # "this":Ljava/time/LocalDate;
    :cond_0
    move-object v6, v1

    invoke-virtual {v6}, Ljava/time/LocalDate;->toEpochDay()J

    move-result-wide v6

    move-wide v8, v2

    invoke-static {v6, v7, v8, v9}, Ljava/time/jdk8/Jdk8Methods;->safeAdd(JJ)J

    move-result-wide v6

    move-wide v4, v6

    .line 1183
    .local v4, "mjDay":J
    move-wide v6, v4

    invoke-static {v6, v7}, Ljava/time/LocalDate;->ofEpochDay(J)Ljava/time/LocalDate;

    move-result-object v6

    move-object v1, v6

    goto :goto_0
.end method

.method public plusMonths(J)Ljava/time/LocalDate;
    .locals 15

    .prologue
    .line 1134
    move-object v1, p0

    .local v1, "this":Ljava/time/LocalDate;
    move-wide/from16 v2, p1

    .local v2, "monthsToAdd":J
    move-wide v10, v2

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-nez v10, :cond_0

    .line 1135
    move-object v10, v1

    move-object v1, v10

    .line 1141
    .end local v1    # "this":Ljava/time/LocalDate;
    :goto_0
    return-object v1

    .line 1137
    .restart local v1    # "this":Ljava/time/LocalDate;
    :cond_0
    move-object v10, v1

    iget v10, v10, Ljava/time/LocalDate;->year:I

    int-to-long v10, v10

    const-wide/16 v12, 0xc

    mul-long/2addr v10, v12

    move-object v12, v1

    iget-short v12, v12, Ljava/time/LocalDate;->month:S

    const/4 v13, 0x1

    add-int/lit8 v12, v12, -0x1

    int-to-long v12, v12

    add-long/2addr v10, v12

    move-wide v4, v10

    .line 1138
    .local v4, "monthCount":J
    move-wide v10, v4

    move-wide v12, v2

    add-long/2addr v10, v12

    move-wide v6, v10

    .line 1139
    .local v6, "calcMonths":J
    sget-object v10, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    move-wide v11, v6

    const-wide/16 v13, 0xc

    invoke-static {v11, v12, v13, v14}, Ljava/time/jdk8/Jdk8Methods;->floorDiv(JJ)J

    move-result-wide v11

    invoke-virtual {v10, v11, v12}, Ljava/time/temporal/ChronoField;->checkValidIntValue(J)I

    move-result v10

    move v8, v10

    .line 1140
    .local v8, "newYear":I
    move-wide v10, v6

    const/16 v12, 0xc

    invoke-static {v10, v11, v12}, Ljava/time/jdk8/Jdk8Methods;->floorMod(JI)I

    move-result v10

    const/4 v11, 0x1

    add-int/lit8 v10, v10, 0x1

    move v9, v10

    .line 1141
    .local v9, "newMonth":I
    move v10, v8

    move v11, v9

    move-object v12, v1

    iget-short v12, v12, Ljava/time/LocalDate;->day:S

    invoke-static {v10, v11, v12}, Ljava/time/LocalDate;->resolvePreviousValid(III)Ljava/time/LocalDate;

    move-result-object v10

    move-object v1, v10

    goto :goto_0
.end method

.method public plusWeeks(J)Ljava/time/LocalDate;
    .locals 7

    .prologue
    .line 1160
    move-object v0, p0

    .local v0, "this":Ljava/time/LocalDate;
    move-wide v1, p1

    .local v1, "weeksToAdd":J
    move-object v3, v0

    move-wide v4, v1

    const/4 v6, 0x7

    invoke-static {v4, v5, v6}, Ljava/time/jdk8/Jdk8Methods;->safeMultiply(JI)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/time/LocalDate;->plusDays(J)Ljava/time/LocalDate;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Ljava/time/LocalDate;
    return-object v0
.end method

.method public plusYears(J)Ljava/time/LocalDate;
    .locals 11

    .prologue
    .line 1106
    move-object v1, p0

    .local v1, "this":Ljava/time/LocalDate;
    move-wide v2, p1

    .local v2, "yearsToAdd":J
    move-wide v5, v2

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-nez v5, :cond_0

    .line 1107
    move-object v5, v1

    move-object v1, v5

    .line 1110
    .end local v1    # "this":Ljava/time/LocalDate;
    :goto_0
    return-object v1

    .line 1109
    .restart local v1    # "this":Ljava/time/LocalDate;
    :cond_0
    sget-object v5, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    move-object v6, v1

    iget v6, v6, Ljava/time/LocalDate;->year:I

    int-to-long v6, v6

    move-wide v8, v2

    add-long/2addr v6, v8

    invoke-virtual {v5, v6, v7}, Ljava/time/temporal/ChronoField;->checkValidIntValue(J)I

    move-result v5

    move v4, v5

    .line 1110
    .local v4, "newYear":I
    move v5, v4

    move-object v6, v1

    iget-short v6, v6, Ljava/time/LocalDate;->month:S

    move-object v7, v1

    iget-short v7, v7, Ljava/time/LocalDate;->day:S

    invoke-static {v5, v6, v7}, Ljava/time/LocalDate;->resolvePreviousValid(III)Ljava/time/LocalDate;

    move-result-object v5

    move-object v1, v5

    goto :goto_0
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
    .line 1337
    move-object v0, p0

    .local v0, "this":Ljava/time/LocalDate;
    move-object v1, p1

    .local v1, "query":Ljava/time/temporal/TemporalQuery;, "Ljava/time/temporal/TemporalQuery<TR;>;"
    move-object v2, v1

    invoke-static {}, Ljava/time/temporal/TemporalQueries;->localDate()Ljava/time/temporal/TemporalQuery;

    move-result-object v3

    if-ne v2, v3, :cond_0

    .line 1338
    move-object v2, v0

    move-object v0, v2

    .line 1340
    .end local v0    # "this":Ljava/time/LocalDate;
    :goto_0
    return-object v0

    .restart local v0    # "this":Ljava/time/LocalDate;
    :cond_0
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Ljava/time/chrono/AbstractChronoLocalDate;->query(Ljava/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    goto :goto_0
.end method

.method public range(Ljava/time/temporal/TemporalField;)Ljava/time/temporal/ValueRange;
    .locals 9

    .prologue
    .line 493
    move-object v1, p0

    .local v1, "this":Ljava/time/LocalDate;
    move-object v2, p1

    .local v2, "field":Ljava/time/temporal/TemporalField;
    move-object v4, v2

    instance-of v4, v4, Ljava/time/temporal/ChronoField;

    if-eqz v4, :cond_3

    .line 494
    move-object v4, v2

    check-cast v4, Ljava/time/temporal/ChronoField;

    move-object v3, v4

    .line 495
    .local v3, "f":Ljava/time/temporal/ChronoField;
    move-object v4, v3

    invoke-virtual {v4}, Ljava/time/temporal/ChronoField;->isDateBased()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 496
    sget-object v4, Ljava/time/LocalDate$2;->$SwitchMap$java$time$temporal$ChronoField:[I

    move-object v5, v3

    invoke-virtual {v5}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 503
    move-object v4, v2

    invoke-interface {v4}, Ljava/time/temporal/TemporalField;->range()Ljava/time/temporal/ValueRange;

    move-result-object v4

    move-object v1, v4

    .line 507
    .end local v1    # "this":Ljava/time/LocalDate;
    .end local v3    # "f":Ljava/time/temporal/ChronoField;
    :goto_0
    return-object v1

    .line 497
    .restart local v1    # "this":Ljava/time/LocalDate;
    .restart local v3    # "f":Ljava/time/temporal/ChronoField;
    :pswitch_0
    const-wide/16 v4, 0x1

    move-object v6, v1

    invoke-virtual {v6}, Ljava/time/LocalDate;->lengthOfMonth()I

    move-result v6

    int-to-long v6, v6

    invoke-static {v4, v5, v6, v7}, Ljava/time/temporal/ValueRange;->of(JJ)Ljava/time/temporal/ValueRange;

    move-result-object v4

    move-object v1, v4

    goto :goto_0

    .line 498
    :pswitch_1
    const-wide/16 v4, 0x1

    move-object v6, v1

    invoke-virtual {v6}, Ljava/time/LocalDate;->lengthOfYear()I

    move-result v6

    int-to-long v6, v6

    invoke-static {v4, v5, v6, v7}, Ljava/time/temporal/ValueRange;->of(JJ)Ljava/time/temporal/ValueRange;

    move-result-object v4

    move-object v1, v4

    goto :goto_0

    .line 499
    :pswitch_2
    const-wide/16 v4, 0x1

    move-object v6, v1

    invoke-virtual {v6}, Ljava/time/LocalDate;->getMonth()Ljava/time/Month;

    move-result-object v6

    sget-object v7, Ljava/time/Month;->FEBRUARY:Ljava/time/Month;

    if-ne v6, v7, :cond_0

    move-object v6, v1

    invoke-virtual {v6}, Ljava/time/LocalDate;->isLeapYear()Z

    move-result v6

    if-nez v6, :cond_0

    const-wide/16 v6, 0x4

    :goto_1
    invoke-static {v4, v5, v6, v7}, Ljava/time/temporal/ValueRange;->of(JJ)Ljava/time/temporal/ValueRange;

    move-result-object v4

    move-object v1, v4

    goto :goto_0

    :cond_0
    const-wide/16 v6, 0x5

    goto :goto_1

    .line 501
    :pswitch_3
    move-object v4, v1

    invoke-virtual {v4}, Ljava/time/LocalDate;->getYear()I

    move-result v4

    if-gtz v4, :cond_1

    const-wide/16 v4, 0x1

    const-wide/32 v6, 0x3b9aca00

    invoke-static {v4, v5, v6, v7}, Ljava/time/temporal/ValueRange;->of(JJ)Ljava/time/temporal/ValueRange;

    move-result-object v4

    :goto_2
    move-object v1, v4

    goto :goto_0

    :cond_1
    const-wide/16 v4, 0x1

    const-wide/32 v6, 0x3b9ac9ff

    invoke-static {v4, v5, v6, v7}, Ljava/time/temporal/ValueRange;->of(JJ)Ljava/time/temporal/ValueRange;

    move-result-object v4

    goto :goto_2

    .line 505
    :cond_2
    new-instance v4, Ljava/time/temporal/UnsupportedTemporalTypeException;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unsupported field: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/time/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 507
    .end local v3    # "f":Ljava/time/temporal/ChronoField;
    :cond_3
    move-object v4, v2

    move-object v5, v1

    invoke-interface {v4, v5}, Ljava/time/temporal/TemporalField;->rangeRefinedBy(Ljava/time/temporal/TemporalAccessor;)Ljava/time/temporal/ValueRange;

    move-result-object v4

    move-object v1, v4

    goto :goto_0

    .line 496
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public toEpochDay()J
    .locals 16

    .prologue
    .line 1635
    move-object/from16 v1, p0

    .local v1, "this":Ljava/time/LocalDate;
    move-object v8, v1

    iget v8, v8, Ljava/time/LocalDate;->year:I

    int-to-long v8, v8

    move-wide v2, v8

    .line 1636
    .local v2, "y":J
    move-object v8, v1

    iget-short v8, v8, Ljava/time/LocalDate;->month:S

    int-to-long v8, v8

    move-wide v4, v8

    .line 1637
    .local v4, "m":J
    const-wide/16 v8, 0x0

    move-wide v6, v8

    .line 1638
    .local v6, "total":J
    move-wide v8, v6

    const-wide/16 v10, 0x16d

    move-wide v12, v2

    mul-long/2addr v10, v12

    add-long/2addr v8, v10

    move-wide v6, v8

    .line 1639
    move-wide v8, v2

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-ltz v8, :cond_1

    .line 1640
    move-wide v8, v6

    move-wide v10, v2

    const-wide/16 v12, 0x3

    add-long/2addr v10, v12

    const-wide/16 v12, 0x4

    div-long/2addr v10, v12

    move-wide v12, v2

    const-wide/16 v14, 0x63

    add-long/2addr v12, v14

    const-wide/16 v14, 0x64

    div-long/2addr v12, v14

    sub-long/2addr v10, v12

    move-wide v12, v2

    const-wide/16 v14, 0x18f

    add-long/2addr v12, v14

    const-wide/16 v14, 0x190

    div-long/2addr v12, v14

    add-long/2addr v10, v12

    add-long/2addr v8, v10

    move-wide v6, v8

    .line 1644
    :goto_0
    move-wide v8, v6

    const-wide/16 v10, 0x16f

    move-wide v12, v4

    mul-long/2addr v10, v12

    const-wide/16 v12, 0x16a

    sub-long/2addr v10, v12

    const-wide/16 v12, 0xc

    div-long/2addr v10, v12

    add-long/2addr v8, v10

    move-wide v6, v8

    .line 1645
    move-wide v8, v6

    move-object v10, v1

    iget-short v10, v10, Ljava/time/LocalDate;->day:S

    const/4 v11, 0x1

    add-int/lit8 v10, v10, -0x1

    int-to-long v10, v10

    add-long/2addr v8, v10

    move-wide v6, v8

    .line 1646
    move-wide v8, v4

    const-wide/16 v10, 0x2

    cmp-long v8, v8, v10

    if-lez v8, :cond_0

    .line 1647
    move-wide v8, v6

    const-wide/16 v10, 0x1

    sub-long/2addr v8, v10

    move-wide v6, v8

    .line 1648
    move-object v8, v1

    invoke-virtual {v8}, Ljava/time/LocalDate;->isLeapYear()Z

    move-result v8

    if-nez v8, :cond_0

    .line 1649
    move-wide v8, v6

    const-wide/16 v10, 0x1

    sub-long/2addr v8, v10

    move-wide v6, v8

    .line 1652
    :cond_0
    move-wide v8, v6

    const-wide/32 v10, 0xafaa8

    sub-long/2addr v8, v10

    move-wide v1, v8

    .end local v1    # "this":Ljava/time/LocalDate;
    return-wide v1

    .line 1642
    .restart local v1    # "this":Ljava/time/LocalDate;
    :cond_1
    move-wide v8, v6

    move-wide v10, v2

    const-wide/16 v12, -0x4

    div-long/2addr v10, v12

    move-wide v12, v2

    const-wide/16 v14, -0x64

    div-long/2addr v12, v14

    sub-long/2addr v10, v12

    move-wide v12, v2

    const-wide/16 v14, -0x190

    div-long/2addr v12, v14

    add-long/2addr v10, v12

    sub-long/2addr v8, v10

    move-wide v6, v8

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 10

    .prologue
    .line 1823
    move-object v0, p0

    .local v0, "this":Ljava/time/LocalDate;
    move-object v6, v0

    iget v6, v6, Ljava/time/LocalDate;->year:I

    move v1, v6

    .line 1824
    .local v1, "yearValue":I
    move-object v6, v0

    iget-short v6, v6, Ljava/time/LocalDate;->month:S

    move v2, v6

    .line 1825
    .local v2, "monthValue":I
    move-object v6, v0

    iget-short v6, v6, Ljava/time/LocalDate;->day:S

    move v3, v6

    .line 1826
    .local v3, "dayValue":I
    move v6, v1

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    move v4, v6

    .line 1827
    .local v4, "absYear":I
    new-instance v6, Ljava/lang/StringBuilder;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    const/16 v8, 0xa

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v5, v6

    .line 1828
    .local v5, "buf":Ljava/lang/StringBuilder;
    move v6, v4

    const/16 v7, 0x3e8

    if-ge v6, v7, :cond_1

    .line 1829
    move v6, v1

    if-gez v6, :cond_0

    .line 1830
    move-object v6, v5

    move v7, v1

    const/16 v8, 0x2710

    add-int/lit16 v7, v7, -0x2710

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1840
    :goto_0
    move-object v6, v5

    move v7, v2

    const/16 v8, 0xa

    if-ge v7, v8, :cond_3

    const-string v7, "-0"

    :goto_1
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move v7, v2

    .line 1841
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    move v7, v3

    const/16 v8, 0xa

    if-ge v7, v8, :cond_4

    const-string v7, "-0"

    .line 1842
    :goto_2
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move v7, v3

    .line 1843
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1844
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v0, v6

    .end local v0    # "this":Ljava/time/LocalDate;
    return-object v0

    .line 1832
    .restart local v0    # "this":Ljava/time/LocalDate;
    :cond_0
    move-object v6, v5

    move v7, v1

    const/16 v8, 0x2710

    add-int/lit16 v7, v7, 0x2710

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    move-result-object v6

    goto :goto_0

    .line 1835
    :cond_1
    move v6, v1

    const/16 v7, 0x270f

    if-le v6, v7, :cond_2

    .line 1836
    move-object v6, v5

    const/16 v7, 0x2b

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1838
    :cond_2
    move-object v6, v5

    move v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    goto :goto_0

    .line 1840
    :cond_3
    const-string v7, "-"

    goto :goto_1

    .line 1841
    :cond_4
    const-string v7, "-"

    goto :goto_2
.end method

.method public until(Ljava/time/temporal/Temporal;Ljava/time/temporal/TemporalUnit;)J
    .locals 9

    .prologue
    .line 1417
    move-object v0, p0

    .local v0, "this":Ljava/time/LocalDate;
    move-object v1, p1

    .local v1, "endExclusive":Ljava/time/temporal/Temporal;
    move-object v2, p2

    .local v2, "unit":Ljava/time/temporal/TemporalUnit;
    move-object v4, v1

    invoke-static {v4}, Ljava/time/LocalDate;->from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/LocalDate;

    move-result-object v4

    move-object v3, v4

    .line 1418
    .local v3, "end":Ljava/time/LocalDate;
    move-object v4, v2

    instance-of v4, v4, Ljava/time/temporal/ChronoUnit;

    if-eqz v4, :cond_0

    .line 1419
    sget-object v4, Ljava/time/LocalDate$2;->$SwitchMap$java$time$temporal$ChronoUnit:[I

    move-object v5, v2

    check-cast v5, Ljava/time/temporal/ChronoUnit;

    invoke-virtual {v5}, Ljava/time/temporal/ChronoUnit;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 1429
    new-instance v4, Ljava/time/temporal/UnsupportedTemporalTypeException;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unsupported unit: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/time/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1420
    :pswitch_0
    move-object v4, v0

    move-object v5, v3

    invoke-virtual {v4, v5}, Ljava/time/LocalDate;->daysUntil(Ljava/time/LocalDate;)J

    move-result-wide v4

    move-wide v0, v4

    .line 1431
    .end local v0    # "this":Ljava/time/LocalDate;
    :goto_0
    return-wide v0

    .line 1421
    .restart local v0    # "this":Ljava/time/LocalDate;
    :pswitch_1
    move-object v4, v0

    move-object v5, v3

    invoke-virtual {v4, v5}, Ljava/time/LocalDate;->daysUntil(Ljava/time/LocalDate;)J

    move-result-wide v4

    const-wide/16 v6, 0x7

    div-long/2addr v4, v6

    move-wide v0, v4

    goto :goto_0

    .line 1422
    :pswitch_2
    move-object v4, v0

    move-object v5, v3

    invoke-direct {v4, v5}, Ljava/time/LocalDate;->monthsUntil(Ljava/time/LocalDate;)J

    move-result-wide v4

    move-wide v0, v4

    goto :goto_0

    .line 1423
    :pswitch_3
    move-object v4, v0

    move-object v5, v3

    invoke-direct {v4, v5}, Ljava/time/LocalDate;->monthsUntil(Ljava/time/LocalDate;)J

    move-result-wide v4

    const-wide/16 v6, 0xc

    div-long/2addr v4, v6

    move-wide v0, v4

    goto :goto_0

    .line 1424
    :pswitch_4
    move-object v4, v0

    move-object v5, v3

    invoke-direct {v4, v5}, Ljava/time/LocalDate;->monthsUntil(Ljava/time/LocalDate;)J

    move-result-wide v4

    const-wide/16 v6, 0x78

    div-long/2addr v4, v6

    move-wide v0, v4

    goto :goto_0

    .line 1425
    :pswitch_5
    move-object v4, v0

    move-object v5, v3

    invoke-direct {v4, v5}, Ljava/time/LocalDate;->monthsUntil(Ljava/time/LocalDate;)J

    move-result-wide v4

    const-wide/16 v6, 0x4b0

    div-long/2addr v4, v6

    move-wide v0, v4

    goto :goto_0

    .line 1426
    :pswitch_6
    move-object v4, v0

    move-object v5, v3

    invoke-direct {v4, v5}, Ljava/time/LocalDate;->monthsUntil(Ljava/time/LocalDate;)J

    move-result-wide v4

    const-wide/16 v6, 0x2ee0

    div-long/2addr v4, v6

    move-wide v0, v4

    goto :goto_0

    .line 1427
    :pswitch_7
    move-object v4, v3

    sget-object v5, Ljava/time/temporal/ChronoField;->ERA:Ljava/time/temporal/ChronoField;

    invoke-virtual {v4, v5}, Ljava/time/LocalDate;->getLong(Ljava/time/temporal/TemporalField;)J

    move-result-wide v4

    move-object v6, v0

    sget-object v7, Ljava/time/temporal/ChronoField;->ERA:Ljava/time/temporal/ChronoField;

    invoke-virtual {v6, v7}, Ljava/time/LocalDate;->getLong(Ljava/time/temporal/TemporalField;)J

    move-result-wide v6

    sub-long/2addr v4, v6

    move-wide v0, v4

    goto :goto_0

    .line 1431
    :cond_0
    move-object v4, v2

    move-object v5, v0

    move-object v6, v3

    invoke-interface {v4, v5, v6}, Ljava/time/temporal/TemporalUnit;->between(Ljava/time/temporal/Temporal;Ljava/time/temporal/Temporal;)J

    move-result-wide v4

    move-wide v0, v4

    goto :goto_0

    .line 1419
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public until(Ljava/time/chrono/AbstractChronoLocalDate;)Ljava/time/Period;
    .locals 14

    .prologue
    .line 1480
    move-object v1, p0

    .local v1, "this":Ljava/time/LocalDate;
    move-object v2, p1

    .local v2, "endDate":Ljava/time/chrono/AbstractChronoLocalDate;
    move-object v10, v2

    invoke-static {v10}, Ljava/time/LocalDate;->from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/LocalDate;

    move-result-object v10

    move-object v3, v10

    .line 1481
    .local v3, "end":Ljava/time/LocalDate;
    move-object v10, v3

    invoke-direct {v10}, Ljava/time/LocalDate;->getProlepticMonth()J

    move-result-wide v10

    move-object v12, v1

    invoke-direct {v12}, Ljava/time/LocalDate;->getProlepticMonth()J

    move-result-wide v12

    sub-long/2addr v10, v12

    move-wide v4, v10

    .line 1482
    .local v4, "totalMonths":J
    move-object v10, v3

    iget-short v10, v10, Ljava/time/LocalDate;->day:S

    move-object v11, v1

    iget-short v11, v11, Ljava/time/LocalDate;->day:S

    sub-int/2addr v10, v11

    move v6, v10

    .line 1483
    .local v6, "days":I
    move-wide v10, v4

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-lez v10, :cond_1

    move v10, v6

    if-gez v10, :cond_1

    .line 1484
    move-wide v10, v4

    const-wide/16 v12, 0x1

    sub-long/2addr v10, v12

    move-wide v4, v10

    .line 1485
    move-object v10, v1

    move-wide v11, v4

    invoke-virtual {v10, v11, v12}, Ljava/time/LocalDate;->plusMonths(J)Ljava/time/LocalDate;

    move-result-object v10

    move-object v7, v10

    .line 1486
    .local v7, "calcDate":Ljava/time/LocalDate;
    move-object v10, v3

    invoke-virtual {v10}, Ljava/time/LocalDate;->toEpochDay()J

    move-result-wide v10

    move-object v12, v7

    invoke-virtual {v12}, Ljava/time/LocalDate;->toEpochDay()J

    move-result-wide v12

    sub-long/2addr v10, v12

    long-to-int v10, v10

    move v6, v10

    .line 1491
    .end local v7    # "calcDate":Ljava/time/LocalDate;
    :cond_0
    :goto_0
    move-wide v10, v4

    const-wide/16 v12, 0xc

    div-long/2addr v10, v12

    move-wide v7, v10

    .line 1492
    .local v7, "years":J
    move-wide v10, v4

    const-wide/16 v12, 0xc

    rem-long/2addr v10, v12

    long-to-int v10, v10

    move v9, v10

    .line 1493
    .local v9, "months":I
    move-wide v10, v7

    invoke-static {v10, v11}, Ljava/time/jdk8/Jdk8Methods;->safeToInt(J)I

    move-result v10

    move v11, v9

    move v12, v6

    invoke-static {v10, v11, v12}, Ljava/time/Period;->of(III)Ljava/time/Period;

    move-result-object v10

    move-object v1, v10

    .end local v1    # "this":Ljava/time/LocalDate;
    return-object v1

    .line 1487
    .end local v7    # "years":J
    .end local v9    # "months":I
    .restart local v1    # "this":Ljava/time/LocalDate;
    :cond_1
    move-wide v10, v4

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-gez v10, :cond_0

    move v10, v6

    if-lez v10, :cond_0

    .line 1488
    move-wide v10, v4

    const-wide/16 v12, 0x1

    add-long/2addr v10, v12

    move-wide v4, v10

    .line 1489
    move v10, v6

    move-object v11, v3

    invoke-virtual {v11}, Ljava/time/LocalDate;->lengthOfMonth()I

    move-result v11

    sub-int/2addr v10, v11

    move v6, v10

    goto :goto_0
.end method

.method public bridge synthetic until(Ljava/time/chrono/AbstractChronoLocalDate;)Ljava/time/chrono/ChronoPeriod;
    .locals 4

    .prologue
    .line 101
    move-object v0, p0

    .local v0, "this":Ljava/time/LocalDate;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/time/LocalDate;->until(Ljava/time/chrono/AbstractChronoLocalDate;)Ljava/time/Period;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljava/time/LocalDate;
    return-object v0
.end method

.method public with(Ljava/time/temporal/TemporalAdjuster;)Ljava/time/LocalDate;
    .locals 4

    .prologue
    .line 821
    move-object v0, p0

    .local v0, "this":Ljava/time/LocalDate;
    move-object v1, p1

    .local v1, "adjuster":Ljava/time/temporal/TemporalAdjuster;
    move-object v2, v1

    instance-of v2, v2, Ljava/time/LocalDate;

    if-eqz v2, :cond_0

    .line 822
    move-object v2, v1

    check-cast v2, Ljava/time/LocalDate;

    move-object v0, v2

    .line 824
    .end local v0    # "this":Ljava/time/LocalDate;
    :goto_0
    return-object v0

    .restart local v0    # "this":Ljava/time/LocalDate;
    :cond_0
    move-object v2, v1

    move-object v3, v0

    invoke-interface {v2, v3}, Ljava/time/temporal/TemporalAdjuster;->adjustInto(Ljava/time/temporal/Temporal;)Ljava/time/temporal/Temporal;

    move-result-object v2

    check-cast v2, Ljava/time/LocalDate;

    move-object v0, v2

    goto :goto_0
.end method

.method public with(Ljava/time/temporal/TemporalField;J)Ljava/time/LocalDate;
    .locals 12

    .prologue
    .line 932
    move-object v0, p0

    .local v0, "this":Ljava/time/LocalDate;
    move-object v1, p1

    .local v1, "field":Ljava/time/temporal/TemporalField;
    move-wide v2, p2

    .local v2, "newValue":J
    move-object v5, v1

    instance-of v5, v5, Ljava/time/temporal/ChronoField;

    if-eqz v5, :cond_2

    .line 933
    move-object v5, v1

    check-cast v5, Ljava/time/temporal/ChronoField;

    move-object v4, v5

    .line 934
    .local v4, "f":Ljava/time/temporal/ChronoField;
    move-object v5, v4

    move-wide v6, v2

    invoke-virtual {v5, v6, v7}, Ljava/time/temporal/ChronoField;->checkValidValue(J)J

    move-result-wide v5

    .line 935
    sget-object v5, Ljava/time/LocalDate$2;->$SwitchMap$java$time$temporal$ChronoField:[I

    move-object v6, v4

    invoke-virtual {v6}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 950
    new-instance v5, Ljava/time/temporal/UnsupportedTemporalTypeException;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unsupported field: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/time/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 936
    :pswitch_0
    move-object v5, v0

    move-wide v6, v2

    move-object v8, v0

    invoke-virtual {v8}, Ljava/time/LocalDate;->getDayOfWeek()Ljava/time/DayOfWeek;

    move-result-object v8

    invoke-virtual {v8}, Ljava/time/DayOfWeek;->getValue()I

    move-result v8

    int-to-long v8, v8

    sub-long/2addr v6, v8

    invoke-virtual {v5, v6, v7}, Ljava/time/LocalDate;->plusDays(J)Ljava/time/LocalDate;

    move-result-object v5

    move-object v0, v5

    .line 952
    .end local v0    # "this":Ljava/time/LocalDate;
    .end local v4    # "f":Ljava/time/temporal/ChronoField;
    :goto_0
    return-object v0

    .line 937
    .restart local v0    # "this":Ljava/time/LocalDate;
    .restart local v4    # "f":Ljava/time/temporal/ChronoField;
    :pswitch_1
    move-object v5, v0

    move-wide v6, v2

    move-object v8, v0

    sget-object v9, Ljava/time/temporal/ChronoField;->ALIGNED_DAY_OF_WEEK_IN_MONTH:Ljava/time/temporal/ChronoField;

    invoke-virtual {v8, v9}, Ljava/time/LocalDate;->getLong(Ljava/time/temporal/TemporalField;)J

    move-result-wide v8

    sub-long/2addr v6, v8

    invoke-virtual {v5, v6, v7}, Ljava/time/LocalDate;->plusDays(J)Ljava/time/LocalDate;

    move-result-object v5

    move-object v0, v5

    goto :goto_0

    .line 938
    :pswitch_2
    move-object v5, v0

    move-wide v6, v2

    move-object v8, v0

    sget-object v9, Ljava/time/temporal/ChronoField;->ALIGNED_DAY_OF_WEEK_IN_YEAR:Ljava/time/temporal/ChronoField;

    invoke-virtual {v8, v9}, Ljava/time/LocalDate;->getLong(Ljava/time/temporal/TemporalField;)J

    move-result-wide v8

    sub-long/2addr v6, v8

    invoke-virtual {v5, v6, v7}, Ljava/time/LocalDate;->plusDays(J)Ljava/time/LocalDate;

    move-result-object v5

    move-object v0, v5

    goto :goto_0

    .line 939
    :pswitch_3
    move-object v5, v0

    move-wide v6, v2

    long-to-int v6, v6

    invoke-virtual {v5, v6}, Ljava/time/LocalDate;->withDayOfMonth(I)Ljava/time/LocalDate;

    move-result-object v5

    move-object v0, v5

    goto :goto_0

    .line 940
    :pswitch_4
    move-object v5, v0

    move-wide v6, v2

    long-to-int v6, v6

    invoke-virtual {v5, v6}, Ljava/time/LocalDate;->withDayOfYear(I)Ljava/time/LocalDate;

    move-result-object v5

    move-object v0, v5

    goto :goto_0

    .line 941
    :pswitch_5
    move-wide v5, v2

    invoke-static {v5, v6}, Ljava/time/LocalDate;->ofEpochDay(J)Ljava/time/LocalDate;

    move-result-object v5

    move-object v0, v5

    goto :goto_0

    .line 942
    :pswitch_6
    move-object v5, v0

    move-wide v6, v2

    move-object v8, v0

    sget-object v9, Ljava/time/temporal/ChronoField;->ALIGNED_WEEK_OF_MONTH:Ljava/time/temporal/ChronoField;

    invoke-virtual {v8, v9}, Ljava/time/LocalDate;->getLong(Ljava/time/temporal/TemporalField;)J

    move-result-wide v8

    sub-long/2addr v6, v8

    invoke-virtual {v5, v6, v7}, Ljava/time/LocalDate;->plusWeeks(J)Ljava/time/LocalDate;

    move-result-object v5

    move-object v0, v5

    goto :goto_0

    .line 943
    :pswitch_7
    move-object v5, v0

    move-wide v6, v2

    move-object v8, v0

    sget-object v9, Ljava/time/temporal/ChronoField;->ALIGNED_WEEK_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-virtual {v8, v9}, Ljava/time/LocalDate;->getLong(Ljava/time/temporal/TemporalField;)J

    move-result-wide v8

    sub-long/2addr v6, v8

    invoke-virtual {v5, v6, v7}, Ljava/time/LocalDate;->plusWeeks(J)Ljava/time/LocalDate;

    move-result-object v5

    move-object v0, v5

    goto :goto_0

    .line 944
    :pswitch_8
    move-object v5, v0

    move-wide v6, v2

    long-to-int v6, v6

    invoke-virtual {v5, v6}, Ljava/time/LocalDate;->withMonth(I)Ljava/time/LocalDate;

    move-result-object v5

    move-object v0, v5

    goto :goto_0

    .line 945
    :pswitch_9
    move-object v5, v0

    move-wide v6, v2

    move-object v8, v0

    sget-object v9, Ljava/time/temporal/ChronoField;->PROLEPTIC_MONTH:Ljava/time/temporal/ChronoField;

    invoke-virtual {v8, v9}, Ljava/time/LocalDate;->getLong(Ljava/time/temporal/TemporalField;)J

    move-result-wide v8

    sub-long/2addr v6, v8

    invoke-virtual {v5, v6, v7}, Ljava/time/LocalDate;->plusMonths(J)Ljava/time/LocalDate;

    move-result-object v5

    move-object v0, v5

    goto :goto_0

    .line 946
    :pswitch_a
    move-object v5, v0

    move-object v6, v0

    iget v6, v6, Ljava/time/LocalDate;->year:I

    const/4 v7, 0x1

    if-lt v6, v7, :cond_0

    move-wide v6, v2

    :goto_1
    long-to-int v6, v6

    invoke-virtual {v5, v6}, Ljava/time/LocalDate;->withYear(I)Ljava/time/LocalDate;

    move-result-object v5

    move-object v0, v5

    goto/16 :goto_0

    :cond_0
    const-wide/16 v6, 0x1

    move-wide v8, v2

    sub-long/2addr v6, v8

    goto :goto_1

    .line 947
    :pswitch_b
    move-object v5, v0

    move-wide v6, v2

    long-to-int v6, v6

    invoke-virtual {v5, v6}, Ljava/time/LocalDate;->withYear(I)Ljava/time/LocalDate;

    move-result-object v5

    move-object v0, v5

    goto/16 :goto_0

    .line 948
    :pswitch_c
    move-object v5, v0

    sget-object v6, Ljava/time/temporal/ChronoField;->ERA:Ljava/time/temporal/ChronoField;

    invoke-virtual {v5, v6}, Ljava/time/LocalDate;->getLong(Ljava/time/temporal/TemporalField;)J

    move-result-wide v5

    move-wide v7, v2

    cmp-long v5, v5, v7

    if-nez v5, :cond_1

    move-object v5, v0

    :goto_2
    move-object v0, v5

    goto/16 :goto_0

    :cond_1
    move-object v5, v0

    const/4 v6, 0x1

    move-object v7, v0

    iget v7, v7, Ljava/time/LocalDate;->year:I

    rsub-int/lit8 v6, v7, 0x1

    invoke-virtual {v5, v6}, Ljava/time/LocalDate;->withYear(I)Ljava/time/LocalDate;

    move-result-object v5

    goto :goto_2

    .line 952
    .end local v4    # "f":Ljava/time/temporal/ChronoField;
    :cond_2
    move-object v5, v1

    move-object v6, v0

    move-wide v7, v2

    invoke-interface {v5, v6, v7, v8}, Ljava/time/temporal/TemporalField;->adjustInto(Ljava/time/temporal/Temporal;J)Ljava/time/temporal/Temporal;

    move-result-object v5

    check-cast v5, Ljava/time/LocalDate;

    move-object v0, v5

    goto/16 :goto_0

    .line 935
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_6
        :pswitch_a
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_5
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method

.method public bridge synthetic with(Ljava/time/temporal/TemporalAdjuster;)Ljava/time/chrono/AbstractChronoLocalDate;
    .locals 4

    .prologue
    .line 101
    move-object v0, p0

    .local v0, "this":Ljava/time/LocalDate;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/time/LocalDate;->with(Ljava/time/temporal/TemporalAdjuster;)Ljava/time/LocalDate;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljava/time/LocalDate;
    return-object v0
.end method

.method public bridge synthetic with(Ljava/time/temporal/TemporalField;J)Ljava/time/chrono/AbstractChronoLocalDate;
    .locals 8

    .prologue
    .line 101
    move-object v0, p0

    .local v0, "this":Ljava/time/LocalDate;
    move-object v1, p1

    move-wide v2, p2

    move-object v4, v0

    move-object v5, v1

    move-wide v6, v2

    invoke-virtual {v4, v5, v6, v7}, Ljava/time/LocalDate;->with(Ljava/time/temporal/TemporalField;J)Ljava/time/LocalDate;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Ljava/time/LocalDate;
    return-object v0
.end method

.method public bridge synthetic with(Ljava/time/temporal/TemporalAdjuster;)Ljava/time/temporal/Temporal;
    .locals 4

    .prologue
    .line 101
    move-object v0, p0

    .local v0, "this":Ljava/time/LocalDate;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/time/LocalDate;->with(Ljava/time/temporal/TemporalAdjuster;)Ljava/time/LocalDate;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljava/time/LocalDate;
    return-object v0
.end method

.method public bridge synthetic with(Ljava/time/temporal/TemporalField;J)Ljava/time/temporal/Temporal;
    .locals 8

    .prologue
    .line 101
    move-object v0, p0

    .local v0, "this":Ljava/time/LocalDate;
    move-object v1, p1

    move-wide v2, p2

    move-object v4, v0

    move-object v5, v1

    move-wide v6, v2

    invoke-virtual {v4, v5, v6, v7}, Ljava/time/LocalDate;->with(Ljava/time/temporal/TemporalField;J)Ljava/time/LocalDate;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Ljava/time/LocalDate;
    return-object v0
.end method

.method public withDayOfMonth(I)Ljava/time/LocalDate;
    .locals 5

    .prologue
    .line 1004
    move-object v0, p0

    .local v0, "this":Ljava/time/LocalDate;
    move v1, p1

    .local v1, "dayOfMonth":I
    move-object v2, v0

    iget-short v2, v2, Ljava/time/LocalDate;->day:S

    move v3, v1

    if-ne v2, v3, :cond_0

    .line 1005
    move-object v2, v0

    move-object v0, v2

    .line 1007
    .end local v0    # "this":Ljava/time/LocalDate;
    :goto_0
    return-object v0

    .restart local v0    # "this":Ljava/time/LocalDate;
    :cond_0
    move-object v2, v0

    iget v2, v2, Ljava/time/LocalDate;->year:I

    move-object v3, v0

    iget-short v3, v3, Ljava/time/LocalDate;->month:S

    move v4, v1

    invoke-static {v2, v3, v4}, Ljava/time/LocalDate;->of(III)Ljava/time/LocalDate;

    move-result-object v2

    move-object v0, v2

    goto :goto_0
.end method

.method public withDayOfYear(I)Ljava/time/LocalDate;
    .locals 4

    .prologue
    .line 1022
    move-object v0, p0

    .local v0, "this":Ljava/time/LocalDate;
    move v1, p1

    .local v1, "dayOfYear":I
    move-object v2, v0

    invoke-virtual {v2}, Ljava/time/LocalDate;->getDayOfYear()I

    move-result v2

    move v3, v1

    if-ne v2, v3, :cond_0

    .line 1023
    move-object v2, v0

    move-object v0, v2

    .line 1025
    .end local v0    # "this":Ljava/time/LocalDate;
    :goto_0
    return-object v0

    .restart local v0    # "this":Ljava/time/LocalDate;
    :cond_0
    move-object v2, v0

    iget v2, v2, Ljava/time/LocalDate;->year:I

    move v3, v1

    invoke-static {v2, v3}, Ljava/time/LocalDate;->ofYearDay(II)Ljava/time/LocalDate;

    move-result-object v2

    move-object v0, v2

    goto :goto_0
.end method

.method public withMonth(I)Ljava/time/LocalDate;
    .locals 6

    .prologue
    .line 985
    move-object v1, p0

    .local v1, "this":Ljava/time/LocalDate;
    move v2, p1

    .local v2, "month":I
    move-object v3, v1

    iget-short v3, v3, Ljava/time/LocalDate;->month:S

    move v4, v2

    if-ne v3, v4, :cond_0

    .line 986
    move-object v3, v1

    move-object v1, v3

    .line 989
    .end local v1    # "this":Ljava/time/LocalDate;
    :goto_0
    return-object v1

    .line 988
    .restart local v1    # "this":Ljava/time/LocalDate;
    :cond_0
    sget-object v3, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    move v4, v2

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Ljava/time/temporal/ChronoField;->checkValidValue(J)J

    move-result-wide v3

    .line 989
    move-object v3, v1

    iget v3, v3, Ljava/time/LocalDate;->year:I

    move v4, v2

    move-object v5, v1

    iget-short v5, v5, Ljava/time/LocalDate;->day:S

    invoke-static {v3, v4, v5}, Ljava/time/LocalDate;->resolvePreviousValid(III)Ljava/time/LocalDate;

    move-result-object v3

    move-object v1, v3

    goto :goto_0
.end method

.method public withYear(I)Ljava/time/LocalDate;
    .locals 6

    .prologue
    .line 967
    move-object v1, p0

    .local v1, "this":Ljava/time/LocalDate;
    move v2, p1

    .local v2, "year":I
    move-object v3, v1

    iget v3, v3, Ljava/time/LocalDate;->year:I

    move v4, v2

    if-ne v3, v4, :cond_0

    .line 968
    move-object v3, v1

    move-object v1, v3

    .line 971
    .end local v1    # "this":Ljava/time/LocalDate;
    :goto_0
    return-object v1

    .line 970
    .restart local v1    # "this":Ljava/time/LocalDate;
    :cond_0
    sget-object v3, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    move v4, v2

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Ljava/time/temporal/ChronoField;->checkValidValue(J)J

    move-result-wide v3

    .line 971
    move v3, v2

    move-object v4, v1

    iget-short v4, v4, Ljava/time/LocalDate;->month:S

    move-object v5, v1

    iget-short v5, v5, Ljava/time/LocalDate;->day:S

    invoke-static {v3, v4, v5}, Ljava/time/LocalDate;->resolvePreviousValid(III)Ljava/time/LocalDate;

    move-result-object v3

    move-object v1, v3

    goto :goto_0
.end method

.method writeExternal(Ljava/io/DataOutput;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1877
    move-object v0, p0

    .local v0, "this":Ljava/time/LocalDate;
    move-object v1, p1

    .local v1, "out":Ljava/io/DataOutput;
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Ljava/time/LocalDate;->year:I

    invoke-interface {v2, v3}, Ljava/io/DataOutput;->writeInt(I)V

    .line 1878
    move-object v2, v1

    move-object v3, v0

    iget-short v3, v3, Ljava/time/LocalDate;->month:S

    invoke-interface {v2, v3}, Ljava/io/DataOutput;->writeByte(I)V

    .line 1879
    move-object v2, v1

    move-object v3, v0

    iget-short v3, v3, Ljava/time/LocalDate;->day:S

    invoke-interface {v2, v3}, Ljava/io/DataOutput;->writeByte(I)V

    .line 1880
    return-void
.end method
