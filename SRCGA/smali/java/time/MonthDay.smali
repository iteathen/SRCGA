.class public final Ljava/time/MonthDay;
.super Ljava/time/jdk8/DefaultInterfaceTemporalAccessor;
.source "MonthDay.java"

# interfaces
.implements Ljava/time/temporal/TemporalAccessor;
.implements Ljava/time/temporal/TemporalAdjuster;
.implements Ljava/lang/Comparable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/time/jdk8/DefaultInterfaceTemporalAccessor;",
        "Ljava/time/temporal/TemporalAccessor;",
        "Ljava/time/temporal/TemporalAdjuster;",
        "Ljava/lang/Comparable",
        "<",
        "Ljava/time/MonthDay;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field public static final FROM:Ljava/time/temporal/TemporalQuery;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/time/temporal/TemporalQuery",
            "<",
            "Ljava/time/MonthDay;",
            ">;"
        }
    .end annotation
.end field

.field private static final PARSER:Ljava/time/format/DateTimeFormatter;

.field private static final serialVersionUID:J = -0xd0888991b3ac078L


# instance fields
.field private final day:I

.field private final month:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 97
    new-instance v0, Ljava/time/MonthDay$1;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    invoke-direct {v1}, Ljava/time/MonthDay$1;-><init>()V

    sput-object v0, Ljava/time/MonthDay;->FROM:Ljava/time/temporal/TemporalQuery;

    .line 111
    new-instance v0, Ljava/time/format/DateTimeFormatterBuilder;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    invoke-direct {v1}, Ljava/time/format/DateTimeFormatterBuilder;-><init>()V

    const-string v1, "--"

    .line 112
    invoke-virtual {v0, v1}, Ljava/time/format/DateTimeFormatterBuilder;->appendLiteral(Ljava/lang/String;)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    sget-object v1, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    const/4 v2, 0x2

    .line 113
    invoke-virtual {v0, v1, v2}, Ljava/time/format/DateTimeFormatterBuilder;->appendValue(Ljava/time/temporal/TemporalField;I)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    const/16 v1, 0x2d

    .line 114
    invoke-virtual {v0, v1}, Ljava/time/format/DateTimeFormatterBuilder;->appendLiteral(C)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    sget-object v1, Ljava/time/temporal/ChronoField;->DAY_OF_MONTH:Ljava/time/temporal/ChronoField;

    const/4 v2, 0x2

    .line 115
    invoke-virtual {v0, v1, v2}, Ljava/time/format/DateTimeFormatterBuilder;->appendValue(Ljava/time/temporal/TemporalField;I)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    .line 116
    invoke-virtual {v0}, Ljava/time/format/DateTimeFormatterBuilder;->toFormatter()Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Ljava/time/MonthDay;->PARSER:Ljava/time/format/DateTimeFormatter;

    .line 111
    return-void
.end method

.method private constructor <init>(II)V
    .locals 5

    .prologue
    .line 291
    move-object v0, p0

    .local v0, "this":Ljava/time/MonthDay;
    move v1, p1

    .local v1, "month":I
    move v2, p2

    .local v2, "dayOfMonth":I
    move-object v3, v0

    invoke-direct {v3}, Ljava/time/jdk8/DefaultInterfaceTemporalAccessor;-><init>()V

    .line 292
    move-object v3, v0

    move v4, v1

    iput v4, v3, Ljava/time/MonthDay;->month:I

    .line 293
    move-object v3, v0

    move v4, v2

    iput v4, v3, Ljava/time/MonthDay;->day:I

    .line 294
    return-void
.end method

.method public static from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/MonthDay;
    .locals 7

    .prologue
    .line 240
    move-object v0, p0

    .local v0, "temporal":Ljava/time/temporal/TemporalAccessor;
    move-object v2, v0

    instance-of v2, v2, Ljava/time/MonthDay;

    if-eqz v2, :cond_0

    .line 241
    move-object v2, v0

    check-cast v2, Ljava/time/MonthDay;

    move-object v0, v2

    .line 247
    .end local v0    # "temporal":Ljava/time/temporal/TemporalAccessor;
    :goto_0
    return-object v0

    .line 244
    .restart local v0    # "temporal":Ljava/time/temporal/TemporalAccessor;
    :cond_0
    :try_start_0
    sget-object v2, Ljava/time/chrono/IsoChronology;->INSTANCE:Ljava/time/chrono/IsoChronology;

    move-object v3, v0

    invoke-static {v3}, Ljava/time/chrono/AbstractChronology;->from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/chrono/AbstractChronology;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/time/chrono/IsoChronology;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 245
    move-object v2, v0

    invoke-static {v2}, Ljava/time/LocalDate;->from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/LocalDate;

    move-result-object v2

    move-object v0, v2

    .line 247
    :cond_1
    move-object v2, v0

    sget-object v3, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface {v2, v3}, Ljava/time/temporal/TemporalAccessor;->get(Ljava/time/temporal/TemporalField;)I

    move-result v2

    move-object v3, v0

    sget-object v4, Ljava/time/temporal/ChronoField;->DAY_OF_MONTH:Ljava/time/temporal/ChronoField;

    invoke-interface {v3, v4}, Ljava/time/temporal/TemporalAccessor;->get(Ljava/time/temporal/TemporalField;)I

    move-result v3

    invoke-static {v2, v3}, Ljava/time/MonthDay;->of(II)Ljava/time/MonthDay;
    :try_end_0
    .catch Ljava/time/DateTimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 248
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 249
    .local v1, "ex":Ljava/time/DateTimeException;
    new-instance v2, Ljava/time/DateTimeException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to obtain MonthDay from TemporalAccessor: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v0

    .line 250
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
.end method

.method public static now()Ljava/time/MonthDay;
    .locals 1

    .prologue
    .line 140
    invoke-static {}, Ljava/time/Clock;->systemDefaultZone()Ljava/time/Clock;

    move-result-object v0

    invoke-static {v0}, Ljava/time/MonthDay;->now(Ljava/time/Clock;)Ljava/time/MonthDay;

    move-result-object v0

    return-object v0
.end method

.method public static now(Ljava/time/Clock;)Ljava/time/MonthDay;
    .locals 4

    .prologue
    .line 170
    move-object v0, p0

    .local v0, "clock":Ljava/time/Clock;
    move-object v2, v0

    invoke-static {v2}, Ljava/time/LocalDate;->now(Ljava/time/Clock;)Ljava/time/LocalDate;

    move-result-object v2

    move-object v1, v2

    .line 171
    .local v1, "now":Ljava/time/LocalDate;
    move-object v2, v1

    invoke-virtual {v2}, Ljava/time/LocalDate;->getMonth()Ljava/time/Month;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v3}, Ljava/time/LocalDate;->getDayOfMonth()I

    move-result v3

    invoke-static {v2, v3}, Ljava/time/MonthDay;->of(Ljava/time/Month;I)Ljava/time/MonthDay;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "clock":Ljava/time/Clock;
    return-object v0
.end method

.method public static now(Ljava/time/ZoneId;)Ljava/time/MonthDay;
    .locals 2

    .prologue
    .line 156
    move-object v0, p0

    .local v0, "zone":Ljava/time/ZoneId;
    move-object v1, v0

    invoke-static {v1}, Ljava/time/Clock;->system(Ljava/time/ZoneId;)Ljava/time/Clock;

    move-result-object v1

    invoke-static {v1}, Ljava/time/MonthDay;->now(Ljava/time/Clock;)Ljava/time/MonthDay;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "zone":Ljava/time/ZoneId;
    return-object v0
.end method

.method public static of(II)Ljava/time/MonthDay;
    .locals 4

    .prologue
    .line 218
    move v0, p0

    .local v0, "month":I
    move v1, p1

    .local v1, "dayOfMonth":I
    move v2, v0

    invoke-static {v2}, Ljava/time/Month;->of(I)Ljava/time/Month;

    move-result-object v2

    move v3, v1

    invoke-static {v2, v3}, Ljava/time/MonthDay;->of(Ljava/time/Month;I)Ljava/time/MonthDay;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "month":I
    return-object v0
.end method

.method public static of(Ljava/time/Month;I)Ljava/time/MonthDay;
    .locals 8

    .prologue
    .line 192
    move-object v1, p0

    .local v1, "month":Ljava/time/Month;
    move v2, p1

    .local v2, "dayOfMonth":I
    move-object v3, v1

    const-string v4, "month"

    invoke-static {v3, v4}, Ljava/time/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 193
    sget-object v3, Ljava/time/temporal/ChronoField;->DAY_OF_MONTH:Ljava/time/temporal/ChronoField;

    move v4, v2

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Ljava/time/temporal/ChronoField;->checkValidValue(J)J

    move-result-wide v3

    .line 194
    move v3, v2

    move-object v4, v1

    invoke-virtual {v4}, Ljava/time/Month;->maxLength()I

    move-result v4

    if-le v3, v4, :cond_0

    .line 195
    new-instance v3, Ljava/time/DateTimeException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Illegal value for DayOfMonth field, value "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is not valid for month "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v1

    .line 196
    invoke-virtual {v6}, Ljava/time/Month;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 198
    :cond_0
    new-instance v3, Ljava/time/MonthDay;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v1

    invoke-virtual {v5}, Ljava/time/Month;->getValue()I

    move-result v5

    move v6, v2

    invoke-direct {v4, v5, v6}, Ljava/time/MonthDay;-><init>(II)V

    move-object v1, v3

    .end local v1    # "month":Ljava/time/Month;
    return-object v1
.end method

.method public static parse(Ljava/lang/CharSequence;)Ljava/time/MonthDay;
    .locals 3

    .prologue
    .line 266
    move-object v0, p0

    .local v0, "text":Ljava/lang/CharSequence;
    move-object v1, v0

    sget-object v2, Ljava/time/MonthDay;->PARSER:Ljava/time/format/DateTimeFormatter;

    invoke-static {v1, v2}, Ljava/time/MonthDay;->parse(Ljava/lang/CharSequence;Ljava/time/format/DateTimeFormatter;)Ljava/time/MonthDay;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "text":Ljava/lang/CharSequence;
    return-object v0
.end method

.method public static parse(Ljava/lang/CharSequence;Ljava/time/format/DateTimeFormatter;)Ljava/time/MonthDay;
    .locals 5

    .prologue
    .line 280
    move-object v0, p0

    .local v0, "text":Ljava/lang/CharSequence;
    move-object v1, p1

    .local v1, "formatter":Ljava/time/format/DateTimeFormatter;
    move-object v2, v1

    const-string v3, "formatter"

    invoke-static {v2, v3}, Ljava/time/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 281
    move-object v2, v1

    move-object v3, v0

    sget-object v4, Ljava/time/MonthDay;->FROM:Ljava/time/temporal/TemporalQuery;

    invoke-virtual {v2, v3, v4}, Ljava/time/format/DateTimeFormatter;->parse(Ljava/lang/CharSequence;Ljava/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/time/MonthDay;

    move-object v0, v2

    .end local v0    # "text":Ljava/lang/CharSequence;
    return-object v0
.end method

.method static readExternal(Ljava/io/DataInput;)Ljava/time/MonthDay;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 743
    move-object v0, p0

    .local v0, "in":Ljava/io/DataInput;
    move-object v3, v0

    invoke-interface {v3}, Ljava/io/DataInput;->readByte()B

    move-result v3

    move v1, v3

    .line 744
    .local v1, "month":B
    move-object v3, v0

    invoke-interface {v3}, Ljava/io/DataInput;->readByte()B

    move-result v3

    move v2, v3

    .line 745
    .local v2, "day":B
    move v3, v1

    move v4, v2

    invoke-static {v3, v4}, Ljava/time/MonthDay;->of(II)Ljava/time/MonthDay;

    move-result-object v3

    move-object v0, v3

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
    .line 734
    move-object v0, p0

    .local v0, "this":Ljava/time/MonthDay;
    new-instance v1, Ljava/io/InvalidObjectException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string v3, "Deserialization via serialization delegate"

    invoke-direct {v2, v3}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 6

    .prologue
    .line 725
    move-object v0, p0

    .local v0, "this":Ljava/time/MonthDay;
    new-instance v1, Ljava/time/Ser;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const/16 v3, 0x40

    move-object v4, v0

    invoke-direct {v2, v3, v4}, Ljava/time/Ser;-><init>(BLjava/lang/Object;)V

    move-object v0, v1

    .end local v0    # "this":Ljava/time/MonthDay;
    return-object v0
.end method


# virtual methods
.method public adjustInto(Ljava/time/temporal/Temporal;)Ljava/time/temporal/Temporal;
    .locals 9

    .prologue
    .line 597
    move-object v0, p0

    .local v0, "this":Ljava/time/MonthDay;
    move-object v1, p1

    .local v1, "temporal":Ljava/time/temporal/Temporal;
    move-object v2, v1

    invoke-static {v2}, Ljava/time/chrono/AbstractChronology;->from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/chrono/AbstractChronology;

    move-result-object v2

    sget-object v3, Ljava/time/chrono/IsoChronology;->INSTANCE:Ljava/time/chrono/IsoChronology;

    invoke-virtual {v2, v3}, Ljava/time/chrono/AbstractChronology;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 598
    new-instance v2, Ljava/time/DateTimeException;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    const-string v4, "Adjustment only supported on ISO date-time"

    invoke-direct {v3, v4}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 600
    :cond_0
    move-object v2, v1

    sget-object v3, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    move-object v4, v0

    iget v4, v4, Ljava/time/MonthDay;->month:I

    int-to-long v4, v4

    invoke-interface {v2, v3, v4, v5}, Ljava/time/temporal/Temporal;->with(Ljava/time/temporal/TemporalField;J)Ljava/time/temporal/Temporal;

    move-result-object v2

    move-object v1, v2

    .line 601
    move-object v2, v1

    sget-object v3, Ljava/time/temporal/ChronoField;->DAY_OF_MONTH:Ljava/time/temporal/ChronoField;

    move-object v4, v1

    sget-object v5, Ljava/time/temporal/ChronoField;->DAY_OF_MONTH:Ljava/time/temporal/ChronoField;

    invoke-interface {v4, v5}, Ljava/time/temporal/Temporal;->range(Ljava/time/temporal/TemporalField;)Ljava/time/temporal/ValueRange;

    move-result-object v4

    invoke-virtual {v4}, Ljava/time/temporal/ValueRange;->getMaximum()J

    move-result-wide v4

    move-object v6, v0

    iget v6, v6, Ljava/time/MonthDay;->day:I

    int-to-long v6, v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    invoke-interface {v2, v3, v4, v5}, Ljava/time/temporal/Temporal;->with(Ljava/time/temporal/TemporalField;J)Ljava/time/temporal/Temporal;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljava/time/MonthDay;
    return-object v0
.end method

.method public atYear(I)Ljava/time/LocalDate;
    .locals 6

    .prologue
    .line 620
    move-object v0, p0

    .local v0, "this":Ljava/time/MonthDay;
    move v1, p1

    .local v1, "year":I
    move v2, v1

    move-object v3, v0

    iget v3, v3, Ljava/time/MonthDay;->month:I

    move-object v4, v0

    move v5, v1

    invoke-virtual {v4, v5}, Ljava/time/MonthDay;->isValidYear(I)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v4, v0

    iget v4, v4, Ljava/time/MonthDay;->day:I

    :goto_0
    invoke-static {v2, v3, v4}, Ljava/time/LocalDate;->of(III)Ljava/time/LocalDate;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljava/time/MonthDay;
    return-object v0

    .restart local v0    # "this":Ljava/time/MonthDay;
    :cond_0
    const/16 v4, 0x1c

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 4

    .prologue
    .line 90
    move-object v0, p0

    .local v0, "this":Ljava/time/MonthDay;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    check-cast v3, Ljava/time/MonthDay;

    invoke-virtual {v2, v3}, Ljava/time/MonthDay;->compareTo(Ljava/time/MonthDay;)I

    move-result v2

    move v0, v2

    .end local v0    # "this":Ljava/time/MonthDay;
    return v0
.end method

.method public compareTo(Ljava/time/MonthDay;)I
    .locals 5

    .prologue
    .line 634
    move-object v0, p0

    .local v0, "this":Ljava/time/MonthDay;
    move-object v1, p1

    .local v1, "other":Ljava/time/MonthDay;
    move-object v3, v0

    iget v3, v3, Ljava/time/MonthDay;->month:I

    move-object v4, v1

    iget v4, v4, Ljava/time/MonthDay;->month:I

    sub-int/2addr v3, v4

    move v2, v3

    .line 635
    .local v2, "cmp":I
    move v3, v2

    if-nez v3, :cond_0

    .line 636
    move-object v3, v0

    iget v3, v3, Ljava/time/MonthDay;->day:I

    move-object v4, v1

    iget v4, v4, Ljava/time/MonthDay;->day:I

    sub-int/2addr v3, v4

    move v2, v3

    .line 638
    :cond_0
    move v3, v2

    move v0, v3

    .end local v0    # "this":Ljava/time/MonthDay;
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    .line 672
    move-object v0, p0

    .local v0, "this":Ljava/time/MonthDay;
    move-object v1, p1

    .local v1, "obj":Ljava/lang/Object;
    move-object v3, v0

    move-object v4, v1

    if-ne v3, v4, :cond_0

    .line 673
    const/4 v3, 0x1

    move v0, v3

    .line 679
    .end local v0    # "this":Ljava/time/MonthDay;
    :goto_0
    return v0

    .line 675
    .restart local v0    # "this":Ljava/time/MonthDay;
    :cond_0
    move-object v3, v1

    instance-of v3, v3, Ljava/time/MonthDay;

    if-eqz v3, :cond_2

    .line 676
    move-object v3, v1

    check-cast v3, Ljava/time/MonthDay;

    move-object v2, v3

    .line 677
    .local v2, "other":Ljava/time/MonthDay;
    move-object v3, v0

    iget v3, v3, Ljava/time/MonthDay;->month:I

    move-object v4, v2

    iget v4, v4, Ljava/time/MonthDay;->month:I

    if-ne v3, v4, :cond_1

    move-object v3, v0

    iget v3, v3, Ljava/time/MonthDay;->day:I

    move-object v4, v2

    iget v4, v4, Ljava/time/MonthDay;->day:I

    if-ne v3, v4, :cond_1

    const/4 v3, 0x1

    :goto_1
    move v0, v3

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    .line 679
    .end local v2    # "other":Ljava/time/MonthDay;
    :cond_2
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0
.end method

.method public format(Ljava/time/format/DateTimeFormatter;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 719
    move-object v0, p0

    .local v0, "this":Ljava/time/MonthDay;
    move-object v1, p1

    .local v1, "formatter":Ljava/time/format/DateTimeFormatter;
    move-object v2, v1

    const-string v3, "formatter"

    invoke-static {v2, v3}, Ljava/time/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 720
    move-object v2, v1

    move-object v3, v0

    invoke-virtual {v2, v3}, Ljava/time/format/DateTimeFormatter;->format(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljava/time/MonthDay;
    return-object v0
.end method

.method public get(Ljava/time/temporal/TemporalField;)I
    .locals 7

    .prologue
    .line 387
    move-object v1, p0

    .local v1, "this":Ljava/time/MonthDay;
    move-object v2, p1

    .local v2, "field":Ljava/time/temporal/TemporalField;
    move-object v3, v1

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljava/time/MonthDay;->range(Ljava/time/temporal/TemporalField;)Ljava/time/temporal/ValueRange;

    move-result-object v3

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v4, v5}, Ljava/time/MonthDay;->getLong(Ljava/time/temporal/TemporalField;)J

    move-result-wide v4

    move-object v6, v2

    invoke-virtual {v3, v4, v5, v6}, Ljava/time/temporal/ValueRange;->checkValidIntValue(JLjava/time/temporal/TemporalField;)I

    move-result v3

    move v1, v3

    .end local v1    # "this":Ljava/time/MonthDay;
    return v1
.end method

.method public getDayOfMonth()I
    .locals 2

    .prologue
    .line 463
    move-object v0, p0

    .local v0, "this":Ljava/time/MonthDay;
    move-object v1, v0

    iget v1, v1, Ljava/time/MonthDay;->day:I

    move v0, v1

    .end local v0    # "this":Ljava/time/MonthDay;
    return v0
.end method

.method public getLong(Ljava/time/temporal/TemporalField;)J
    .locals 7

    .prologue
    .line 414
    move-object v0, p0

    .local v0, "this":Ljava/time/MonthDay;
    move-object v1, p1

    .local v1, "field":Ljava/time/temporal/TemporalField;
    move-object v2, v1

    instance-of v2, v2, Ljava/time/temporal/ChronoField;

    if-eqz v2, :cond_0

    .line 415
    sget-object v2, Ljava/time/MonthDay$2;->$SwitchMap$java$time$temporal$ChronoField:[I

    move-object v3, v1

    check-cast v3, Ljava/time/temporal/ChronoField;

    invoke-virtual {v3}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 420
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

    .line 417
    :pswitch_0
    move-object v2, v0

    iget v2, v2, Ljava/time/MonthDay;->day:I

    int-to-long v2, v2

    move-wide v0, v2

    .line 422
    .end local v0    # "this":Ljava/time/MonthDay;
    :goto_0
    return-wide v0

    .line 418
    .restart local v0    # "this":Ljava/time/MonthDay;
    :pswitch_1
    move-object v2, v0

    iget v2, v2, Ljava/time/MonthDay;->month:I

    int-to-long v2, v2

    move-wide v0, v2

    goto :goto_0

    .line 422
    :cond_0
    move-object v2, v1

    move-object v3, v0

    invoke-interface {v2, v3}, Ljava/time/temporal/TemporalField;->getFrom(Ljava/time/temporal/TemporalAccessor;)J

    move-result-wide v2

    move-wide v0, v2

    goto :goto_0

    .line 415
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getMonth()Ljava/time/Month;
    .locals 2

    .prologue
    .line 452
    move-object v0, p0

    .local v0, "this":Ljava/time/MonthDay;
    move-object v1, v0

    iget v1, v1, Ljava/time/MonthDay;->month:I

    invoke-static {v1}, Ljava/time/Month;->of(I)Ljava/time/Month;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljava/time/MonthDay;
    return-object v0
.end method

.method public getMonthValue()I
    .locals 2

    .prologue
    .line 437
    move-object v0, p0

    .local v0, "this":Ljava/time/MonthDay;
    move-object v1, v0

    iget v1, v1, Ljava/time/MonthDay;->month:I

    move v0, v1

    .end local v0    # "this":Ljava/time/MonthDay;
    return v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 689
    move-object v0, p0

    .local v0, "this":Ljava/time/MonthDay;
    move-object v1, v0

    iget v1, v1, Ljava/time/MonthDay;->month:I

    const/4 v2, 0x6

    shl-int/lit8 v1, v1, 0x6

    move-object v2, v0

    iget v2, v2, Ljava/time/MonthDay;->day:I

    add-int/2addr v1, v2

    move v0, v1

    .end local v0    # "this":Ljava/time/MonthDay;
    return v0
.end method

.method public isAfter(Ljava/time/MonthDay;)Z
    .locals 4

    .prologue
    .line 648
    move-object v0, p0

    .local v0, "this":Ljava/time/MonthDay;
    move-object v1, p1

    .local v1, "other":Ljava/time/MonthDay;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/time/MonthDay;->compareTo(Ljava/time/MonthDay;)I

    move-result v2

    if-lez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .end local v0    # "this":Ljava/time/MonthDay;
    return v0

    .restart local v0    # "this":Ljava/time/MonthDay;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isBefore(Ljava/time/MonthDay;)Z
    .locals 4

    .prologue
    .line 658
    move-object v0, p0

    .local v0, "this":Ljava/time/MonthDay;
    move-object v1, p1

    .local v1, "other":Ljava/time/MonthDay;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/time/MonthDay;->compareTo(Ljava/time/MonthDay;)I

    move-result v2

    if-gez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .end local v0    # "this":Ljava/time/MonthDay;
    return v0

    .restart local v0    # "this":Ljava/time/MonthDay;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isSupported(Ljava/time/temporal/TemporalField;)Z
    .locals 4

    .prologue
    .line 324
    move-object v0, p0

    .local v0, "this":Ljava/time/MonthDay;
    move-object v1, p1

    .local v1, "field":Ljava/time/temporal/TemporalField;
    move-object v2, v1

    instance-of v2, v2, Ljava/time/temporal/ChronoField;

    if-eqz v2, :cond_2

    .line 325
    move-object v2, v1

    sget-object v3, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    if-eq v2, v3, :cond_0

    move-object v2, v1

    sget-object v3, Ljava/time/temporal/ChronoField;->DAY_OF_MONTH:Ljava/time/temporal/ChronoField;

    if-ne v2, v3, :cond_1

    :cond_0
    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .line 327
    .end local v0    # "this":Ljava/time/MonthDay;
    :goto_1
    return v0

    .line 325
    .restart local v0    # "this":Ljava/time/MonthDay;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 327
    :cond_2
    move-object v2, v1

    if-eqz v2, :cond_3

    move-object v2, v1

    move-object v3, v0

    invoke-interface {v2, v3}, Ljava/time/temporal/TemporalField;->isSupportedBy(Ljava/time/temporal/TemporalAccessor;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    :goto_2
    move v0, v2

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    goto :goto_2
.end method

.method public isValidYear(I)Z
    .locals 4

    .prologue
    .line 478
    move-object v0, p0

    .local v0, "this":Ljava/time/MonthDay;
    move v1, p1

    .local v1, "year":I
    move-object v2, v0

    iget v2, v2, Ljava/time/MonthDay;->day:I

    const/16 v3, 0x1d

    if-ne v2, v3, :cond_0

    move-object v2, v0

    iget v2, v2, Ljava/time/MonthDay;->month:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    move v2, v1

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/time/Year;->isLeap(J)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    if-nez v2, :cond_1

    const/4 v2, 0x1

    :goto_1
    move v0, v2

    .end local v0    # "this":Ljava/time/MonthDay;
    return v0

    .restart local v0    # "this":Ljava/time/MonthDay;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1
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
    .line 562
    move-object v0, p0

    .local v0, "this":Ljava/time/MonthDay;
    move-object v1, p1

    .local v1, "query":Ljava/time/temporal/TemporalQuery;, "Ljava/time/temporal/TemporalQuery<TR;>;"
    move-object v2, v1

    invoke-static {}, Ljava/time/temporal/TemporalQueries;->chronology()Ljava/time/temporal/TemporalQuery;

    move-result-object v3

    if-ne v2, v3, :cond_0

    .line 563
    sget-object v2, Ljava/time/chrono/IsoChronology;->INSTANCE:Ljava/time/chrono/IsoChronology;

    move-object v0, v2

    .line 565
    .end local v0    # "this":Ljava/time/MonthDay;
    :goto_0
    return-object v0

    .restart local v0    # "this":Ljava/time/MonthDay;
    :cond_0
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Ljava/time/jdk8/DefaultInterfaceTemporalAccessor;->query(Ljava/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    goto :goto_0
.end method

.method public range(Ljava/time/temporal/TemporalField;)Ljava/time/temporal/ValueRange;
    .locals 8

    .prologue
    .line 354
    move-object v0, p0

    .local v0, "this":Ljava/time/MonthDay;
    move-object v1, p1

    .local v1, "field":Ljava/time/temporal/TemporalField;
    move-object v2, v1

    sget-object v3, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    if-ne v2, v3, :cond_0

    .line 355
    move-object v2, v1

    invoke-interface {v2}, Ljava/time/temporal/TemporalField;->range()Ljava/time/temporal/ValueRange;

    move-result-object v2

    move-object v0, v2

    .line 359
    .end local v0    # "this":Ljava/time/MonthDay;
    :goto_0
    return-object v0

    .line 356
    .restart local v0    # "this":Ljava/time/MonthDay;
    :cond_0
    move-object v2, v1

    sget-object v3, Ljava/time/temporal/ChronoField;->DAY_OF_MONTH:Ljava/time/temporal/ChronoField;

    if-ne v2, v3, :cond_1

    .line 357
    const-wide/16 v2, 0x1

    move-object v4, v0

    invoke-virtual {v4}, Ljava/time/MonthDay;->getMonth()Ljava/time/Month;

    move-result-object v4

    invoke-virtual {v4}, Ljava/time/Month;->minLength()I

    move-result v4

    int-to-long v4, v4

    move-object v6, v0

    invoke-virtual {v6}, Ljava/time/MonthDay;->getMonth()Ljava/time/Month;

    move-result-object v6

    invoke-virtual {v6}, Ljava/time/Month;->maxLength()I

    move-result v6

    int-to-long v6, v6

    invoke-static/range {v2 .. v7}, Ljava/time/temporal/ValueRange;->of(JJJ)Ljava/time/temporal/ValueRange;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 359
    :cond_1
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Ljava/time/jdk8/DefaultInterfaceTemporalAccessor;->range(Ljava/time/temporal/TemporalField;)Ljava/time/temporal/ValueRange;

    move-result-object v2

    move-object v0, v2

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 702
    move-object v0, p0

    .local v0, "this":Ljava/time/MonthDay;
    new-instance v1, Ljava/lang/StringBuilder;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const/16 v3, 0xa

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "--"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget v2, v2, Ljava/time/MonthDay;->month:I

    const/16 v3, 0xa

    if-ge v2, v3, :cond_0

    const-string v2, "0"

    .line 703
    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget v2, v2, Ljava/time/MonthDay;->month:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget v2, v2, Ljava/time/MonthDay;->day:I

    const/16 v3, 0xa

    if-ge v2, v3, :cond_1

    const-string v2, "-0"

    .line 704
    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget v2, v2, Ljava/time/MonthDay;->day:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 705
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljava/time/MonthDay;
    return-object v0

    .line 702
    .restart local v0    # "this":Ljava/time/MonthDay;
    :cond_0
    const-string v2, ""

    goto :goto_0

    .line 703
    :cond_1
    const-string v2, "-"

    goto :goto_1
.end method

.method public with(Ljava/time/Month;)Ljava/time/MonthDay;
    .locals 8

    .prologue
    .line 512
    move-object v0, p0

    .local v0, "this":Ljava/time/MonthDay;
    move-object v1, p1

    .local v1, "month":Ljava/time/Month;
    move-object v3, v1

    const-string v4, "month"

    invoke-static {v3, v4}, Ljava/time/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 513
    move-object v3, v1

    invoke-virtual {v3}, Ljava/time/Month;->getValue()I

    move-result v3

    move-object v4, v0

    iget v4, v4, Ljava/time/MonthDay;->month:I

    if-ne v3, v4, :cond_0

    .line 514
    move-object v3, v0

    move-object v0, v3

    .line 517
    .end local v0    # "this":Ljava/time/MonthDay;
    :goto_0
    return-object v0

    .line 516
    .restart local v0    # "this":Ljava/time/MonthDay;
    :cond_0
    move-object v3, v0

    iget v3, v3, Ljava/time/MonthDay;->day:I

    move-object v4, v1

    invoke-virtual {v4}, Ljava/time/Month;->maxLength()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    move v2, v3

    .line 517
    .local v2, "day":I
    new-instance v3, Ljava/time/MonthDay;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v1

    invoke-virtual {v5}, Ljava/time/Month;->getValue()I

    move-result v5

    move v6, v2

    invoke-direct {v4, v5, v6}, Ljava/time/MonthDay;-><init>(II)V

    move-object v0, v3

    goto :goto_0
.end method

.method public withDayOfMonth(I)Ljava/time/MonthDay;
    .locals 4

    .prologue
    .line 534
    move-object v0, p0

    .local v0, "this":Ljava/time/MonthDay;
    move v1, p1

    .local v1, "dayOfMonth":I
    move v2, v1

    move-object v3, v0

    iget v3, v3, Ljava/time/MonthDay;->day:I

    if-ne v2, v3, :cond_0

    .line 535
    move-object v2, v0

    move-object v0, v2

    .line 537
    .end local v0    # "this":Ljava/time/MonthDay;
    :goto_0
    return-object v0

    .restart local v0    # "this":Ljava/time/MonthDay;
    :cond_0
    move-object v2, v0

    iget v2, v2, Ljava/time/MonthDay;->month:I

    move v3, v1

    invoke-static {v2, v3}, Ljava/time/MonthDay;->of(II)Ljava/time/MonthDay;

    move-result-object v2

    move-object v0, v2

    goto :goto_0
.end method

.method public withMonth(I)Ljava/time/MonthDay;
    .locals 4

    .prologue
    .line 496
    move-object v0, p0

    .local v0, "this":Ljava/time/MonthDay;
    move v1, p1

    .local v1, "month":I
    move-object v2, v0

    move v3, v1

    invoke-static {v3}, Ljava/time/Month;->of(I)Ljava/time/Month;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/time/MonthDay;->with(Ljava/time/Month;)Ljava/time/MonthDay;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljava/time/MonthDay;
    return-object v0
.end method

.method writeExternal(Ljava/io/DataOutput;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 738
    move-object v0, p0

    .local v0, "this":Ljava/time/MonthDay;
    move-object v1, p1

    .local v1, "out":Ljava/io/DataOutput;
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Ljava/time/MonthDay;->month:I

    invoke-interface {v2, v3}, Ljava/io/DataOutput;->writeByte(I)V

    .line 739
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Ljava/time/MonthDay;->day:I

    invoke-interface {v2, v3}, Ljava/io/DataOutput;->writeByte(I)V

    .line 740
    return-void
.end method
