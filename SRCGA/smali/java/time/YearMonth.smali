.class public final Ljava/time/YearMonth;
.super Ljava/time/jdk8/DefaultInterfaceTemporalAccessor;
.source "YearMonth.java"

# interfaces
.implements Ljava/time/temporal/Temporal;
.implements Ljava/time/temporal/TemporalAdjuster;
.implements Ljava/lang/Comparable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/time/jdk8/DefaultInterfaceTemporalAccessor;",
        "Ljava/time/temporal/Temporal;",
        "Ljava/time/temporal/TemporalAdjuster;",
        "Ljava/lang/Comparable",
        "<",
        "Ljava/time/YearMonth;",
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
            "Ljava/time/YearMonth;",
            ">;"
        }
    .end annotation
.end field

.field private static final PARSER:Ljava/time/format/DateTimeFormatter;

.field private static final serialVersionUID:J = 0x3a0e6ceaf57ebbc6L


# instance fields
.field private final month:I

.field private final year:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 101
    new-instance v0, Ljava/time/YearMonth$1;

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    invoke-direct {v1}, Ljava/time/YearMonth$1;-><init>()V

    sput-object v0, Ljava/time/YearMonth;->FROM:Ljava/time/temporal/TemporalQuery;

    .line 115
    new-instance v0, Ljava/time/format/DateTimeFormatterBuilder;

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    invoke-direct {v1}, Ljava/time/format/DateTimeFormatterBuilder;-><init>()V

    sget-object v1, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    const/4 v2, 0x4

    const/16 v3, 0xa

    sget-object v4, Ljava/time/format/SignStyle;->EXCEEDS_PAD:Ljava/time/format/SignStyle;

    .line 116
    invoke-virtual {v0, v1, v2, v3, v4}, Ljava/time/format/DateTimeFormatterBuilder;->appendValue(Ljava/time/temporal/TemporalField;IILjava/time/format/SignStyle;)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    const/16 v1, 0x2d

    .line 117
    invoke-virtual {v0, v1}, Ljava/time/format/DateTimeFormatterBuilder;->appendLiteral(C)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    sget-object v1, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    const/4 v2, 0x2

    .line 118
    invoke-virtual {v0, v1, v2}, Ljava/time/format/DateTimeFormatterBuilder;->appendValue(Ljava/time/temporal/TemporalField;I)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    .line 119
    invoke-virtual {v0}, Ljava/time/format/DateTimeFormatterBuilder;->toFormatter()Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Ljava/time/YearMonth;->PARSER:Ljava/time/format/DateTimeFormatter;

    .line 115
    return-void
.end method

.method private constructor <init>(II)V
    .locals 5

    .prologue
    .line 278
    move-object v0, p0

    .local v0, "this":Ljava/time/YearMonth;
    move v1, p1

    .local v1, "year":I
    move v2, p2

    .local v2, "month":I
    move-object v3, v0

    invoke-direct {v3}, Ljava/time/jdk8/DefaultInterfaceTemporalAccessor;-><init>()V

    .line 279
    move-object v3, v0

    move v4, v1

    iput v4, v3, Ljava/time/YearMonth;->year:I

    .line 280
    move-object v3, v0

    move v4, v2

    iput v4, v3, Ljava/time/YearMonth;->month:I

    .line 281
    return-void
.end method

.method public static from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/YearMonth;
    .locals 7

    .prologue
    .line 226
    move-object v0, p0

    .local v0, "temporal":Ljava/time/temporal/TemporalAccessor;
    move-object v2, v0

    instance-of v2, v2, Ljava/time/YearMonth;

    if-eqz v2, :cond_0

    .line 227
    move-object v2, v0

    check-cast v2, Ljava/time/YearMonth;

    move-object v0, v2

    .line 233
    .end local v0    # "temporal":Ljava/time/temporal/TemporalAccessor;
    :goto_0
    return-object v0

    .line 230
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

    .line 231
    move-object v2, v0

    invoke-static {v2}, Ljava/time/LocalDate;->from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/LocalDate;

    move-result-object v2

    move-object v0, v2

    .line 233
    :cond_1
    move-object v2, v0

    sget-object v3, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface {v2, v3}, Ljava/time/temporal/TemporalAccessor;->get(Ljava/time/temporal/TemporalField;)I

    move-result v2

    move-object v3, v0

    sget-object v4, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface {v3, v4}, Ljava/time/temporal/TemporalAccessor;->get(Ljava/time/temporal/TemporalField;)I

    move-result v3

    invoke-static {v2, v3}, Ljava/time/YearMonth;->of(II)Ljava/time/YearMonth;
    :try_end_0
    .catch Ljava/time/DateTimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 234
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 235
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

    const-string v5, "Unable to obtain YearMonth from TemporalAccessor: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v0

    .line 236
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

.method private getProlepticMonth()J
    .locals 6

    .prologue
    .line 441
    move-object v1, p0

    .local v1, "this":Ljava/time/YearMonth;
    move-object v2, v1

    iget v2, v2, Ljava/time/YearMonth;->year:I

    int-to-long v2, v2

    const-wide/16 v4, 0xc

    mul-long/2addr v2, v4

    move-object v4, v1

    iget v4, v4, Ljava/time/YearMonth;->month:I

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    int-to-long v4, v4

    add-long/2addr v2, v4

    move-wide v1, v2

    .end local v1    # "this":Ljava/time/YearMonth;
    return-wide v1
.end method

.method public static now()Ljava/time/YearMonth;
    .locals 1

    .prologue
    .line 144
    invoke-static {}, Ljava/time/Clock;->systemDefaultZone()Ljava/time/Clock;

    move-result-object v0

    invoke-static {v0}, Ljava/time/YearMonth;->now(Ljava/time/Clock;)Ljava/time/YearMonth;

    move-result-object v0

    return-object v0
.end method

.method public static now(Ljava/time/Clock;)Ljava/time/YearMonth;
    .locals 4

    .prologue
    .line 174
    move-object v0, p0

    .local v0, "clock":Ljava/time/Clock;
    move-object v2, v0

    invoke-static {v2}, Ljava/time/LocalDate;->now(Ljava/time/Clock;)Ljava/time/LocalDate;

    move-result-object v2

    move-object v1, v2

    .line 175
    .local v1, "now":Ljava/time/LocalDate;
    move-object v2, v1

    invoke-virtual {v2}, Ljava/time/LocalDate;->getYear()I

    move-result v2

    move-object v3, v1

    invoke-virtual {v3}, Ljava/time/LocalDate;->getMonth()Ljava/time/Month;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/time/YearMonth;->of(ILjava/time/Month;)Ljava/time/YearMonth;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "clock":Ljava/time/Clock;
    return-object v0
.end method

.method public static now(Ljava/time/ZoneId;)Ljava/time/YearMonth;
    .locals 2

    .prologue
    .line 160
    move-object v0, p0

    .local v0, "zone":Ljava/time/ZoneId;
    move-object v1, v0

    invoke-static {v1}, Ljava/time/Clock;->system(Ljava/time/ZoneId;)Ljava/time/Clock;

    move-result-object v1

    invoke-static {v1}, Ljava/time/YearMonth;->now(Ljava/time/Clock;)Ljava/time/YearMonth;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "zone":Ljava/time/ZoneId;
    return-object v0
.end method

.method public static of(II)Ljava/time/YearMonth;
    .locals 8

    .prologue
    .line 201
    move v1, p0

    .local v1, "year":I
    move v2, p1

    .local v2, "month":I
    sget-object v3, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    move v4, v1

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Ljava/time/temporal/ChronoField;->checkValidValue(J)J

    move-result-wide v3

    .line 202
    sget-object v3, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    move v4, v2

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Ljava/time/temporal/ChronoField;->checkValidValue(J)J

    move-result-wide v3

    .line 203
    new-instance v3, Ljava/time/YearMonth;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move v5, v1

    move v6, v2

    invoke-direct {v4, v5, v6}, Ljava/time/YearMonth;-><init>(II)V

    move-object v1, v3

    .end local v1    # "year":I
    return-object v1
.end method

.method public static of(ILjava/time/Month;)Ljava/time/YearMonth;
    .locals 4

    .prologue
    .line 188
    move v0, p0

    .local v0, "year":I
    move-object v1, p1

    .local v1, "month":Ljava/time/Month;
    move-object v2, v1

    const-string v3, "month"

    invoke-static {v2, v3}, Ljava/time/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 189
    move v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Ljava/time/Month;->getValue()I

    move-result v3

    invoke-static {v2, v3}, Ljava/time/YearMonth;->of(II)Ljava/time/YearMonth;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "year":I
    return-object v0
.end method

.method public static parse(Ljava/lang/CharSequence;)Ljava/time/YearMonth;
    .locals 3

    .prologue
    .line 253
    move-object v0, p0

    .local v0, "text":Ljava/lang/CharSequence;
    move-object v1, v0

    sget-object v2, Ljava/time/YearMonth;->PARSER:Ljava/time/format/DateTimeFormatter;

    invoke-static {v1, v2}, Ljava/time/YearMonth;->parse(Ljava/lang/CharSequence;Ljava/time/format/DateTimeFormatter;)Ljava/time/YearMonth;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "text":Ljava/lang/CharSequence;
    return-object v0
.end method

.method public static parse(Ljava/lang/CharSequence;Ljava/time/format/DateTimeFormatter;)Ljava/time/YearMonth;
    .locals 5

    .prologue
    .line 267
    move-object v0, p0

    .local v0, "text":Ljava/lang/CharSequence;
    move-object v1, p1

    .local v1, "formatter":Ljava/time/format/DateTimeFormatter;
    move-object v2, v1

    const-string v3, "formatter"

    invoke-static {v2, v3}, Ljava/time/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 268
    move-object v2, v1

    move-object v3, v0

    sget-object v4, Ljava/time/YearMonth;->FROM:Ljava/time/temporal/TemporalQuery;

    invoke-virtual {v2, v3, v4}, Ljava/time/format/DateTimeFormatter;->parse(Ljava/lang/CharSequence;Ljava/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/time/YearMonth;

    move-object v0, v2

    .end local v0    # "text":Ljava/lang/CharSequence;
    return-object v0
.end method

.method static readExternal(Ljava/io/DataInput;)Ljava/time/YearMonth;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1103
    move-object v0, p0

    .local v0, "in":Ljava/io/DataInput;
    move-object v3, v0

    invoke-interface {v3}, Ljava/io/DataInput;->readInt()I

    move-result v3

    move v1, v3

    .line 1104
    .local v1, "year":I
    move-object v3, v0

    invoke-interface {v3}, Ljava/io/DataInput;->readByte()B

    move-result v3

    move v2, v3

    .line 1105
    .local v2, "month":B
    move v3, v1

    move v4, v2

    invoke-static {v3, v4}, Ljava/time/YearMonth;->of(II)Ljava/time/YearMonth;

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
    .line 1094
    move-object v0, p0

    .local v0, "this":Ljava/time/YearMonth;
    new-instance v1, Ljava/io/InvalidObjectException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string v3, "Deserialization via serialization delegate"

    invoke-direct {v2, v3}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private with(II)Ljava/time/YearMonth;
    .locals 8

    .prologue
    .line 292
    move-object v0, p0

    .local v0, "this":Ljava/time/YearMonth;
    move v1, p1

    .local v1, "newYear":I
    move v2, p2

    .local v2, "newMonth":I
    move-object v3, v0

    iget v3, v3, Ljava/time/YearMonth;->year:I

    move v4, v1

    if-ne v3, v4, :cond_0

    move-object v3, v0

    iget v3, v3, Ljava/time/YearMonth;->month:I

    move v4, v2

    if-ne v3, v4, :cond_0

    .line 293
    move-object v3, v0

    move-object v0, v3

    .line 295
    .end local v0    # "this":Ljava/time/YearMonth;
    :goto_0
    return-object v0

    .restart local v0    # "this":Ljava/time/YearMonth;
    :cond_0
    new-instance v3, Ljava/time/YearMonth;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move v5, v1

    move v6, v2

    invoke-direct {v4, v5, v6}, Ljava/time/YearMonth;-><init>(II)V

    move-object v0, v3

    goto :goto_0
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 6

    .prologue
    .line 1085
    move-object v0, p0

    .local v0, "this":Ljava/time/YearMonth;
    new-instance v1, Ljava/time/Ser;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const/16 v3, 0x44

    move-object v4, v0

    invoke-direct {v2, v3, v4}, Ljava/time/Ser;-><init>(BLjava/lang/Object;)V

    move-object v0, v1

    .end local v0    # "this":Ljava/time/YearMonth;
    return-object v0
.end method


# virtual methods
.method public adjustInto(Ljava/time/temporal/Temporal;)Ljava/time/temporal/Temporal;
    .locals 7

    .prologue
    .line 865
    move-object v0, p0

    .local v0, "this":Ljava/time/YearMonth;
    move-object v1, p1

    .local v1, "temporal":Ljava/time/temporal/Temporal;
    move-object v2, v1

    invoke-static {v2}, Ljava/time/chrono/AbstractChronology;->from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/chrono/AbstractChronology;

    move-result-object v2

    sget-object v3, Ljava/time/chrono/IsoChronology;->INSTANCE:Ljava/time/chrono/IsoChronology;

    invoke-virtual {v2, v3}, Ljava/time/chrono/AbstractChronology;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 866
    new-instance v2, Ljava/time/DateTimeException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const-string v4, "Adjustment only supported on ISO date-time"

    invoke-direct {v3, v4}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 868
    :cond_0
    move-object v2, v1

    sget-object v3, Ljava/time/temporal/ChronoField;->PROLEPTIC_MONTH:Ljava/time/temporal/ChronoField;

    move-object v4, v0

    invoke-direct {v4}, Ljava/time/YearMonth;->getProlepticMonth()J

    move-result-wide v4

    invoke-interface {v2, v3, v4, v5}, Ljava/time/temporal/Temporal;->with(Ljava/time/temporal/TemporalField;J)Ljava/time/temporal/Temporal;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljava/time/YearMonth;
    return-object v0
.end method

.method public atDay(I)Ljava/time/LocalDate;
    .locals 5

    .prologue
    .line 951
    move-object v0, p0

    .local v0, "this":Ljava/time/YearMonth;
    move v1, p1

    .local v1, "dayOfMonth":I
    move-object v2, v0

    iget v2, v2, Ljava/time/YearMonth;->year:I

    move-object v3, v0

    iget v3, v3, Ljava/time/YearMonth;->month:I

    move v4, v1

    invoke-static {v2, v3, v4}, Ljava/time/LocalDate;->of(III)Ljava/time/LocalDate;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljava/time/YearMonth;
    return-object v0
.end method

.method public atEndOfMonth()Ljava/time/LocalDate;
    .locals 4

    .prologue
    .line 969
    move-object v0, p0

    .local v0, "this":Ljava/time/YearMonth;
    move-object v1, v0

    iget v1, v1, Ljava/time/YearMonth;->year:I

    move-object v2, v0

    iget v2, v2, Ljava/time/YearMonth;->month:I

    move-object v3, v0

    invoke-virtual {v3}, Ljava/time/YearMonth;->lengthOfMonth()I

    move-result v3

    invoke-static {v1, v2, v3}, Ljava/time/LocalDate;->of(III)Ljava/time/LocalDate;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljava/time/YearMonth;
    return-object v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 4

    .prologue
    .line 94
    move-object v0, p0

    .local v0, "this":Ljava/time/YearMonth;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    check-cast v3, Ljava/time/YearMonth;

    invoke-virtual {v2, v3}, Ljava/time/YearMonth;->compareTo(Ljava/time/YearMonth;)I

    move-result v2

    move v0, v2

    .end local v0    # "this":Ljava/time/YearMonth;
    return v0
.end method

.method public compareTo(Ljava/time/YearMonth;)I
    .locals 5

    .prologue
    .line 984
    move-object v0, p0

    .local v0, "this":Ljava/time/YearMonth;
    move-object v1, p1

    .local v1, "other":Ljava/time/YearMonth;
    move-object v3, v0

    iget v3, v3, Ljava/time/YearMonth;->year:I

    move-object v4, v1

    iget v4, v4, Ljava/time/YearMonth;->year:I

    sub-int/2addr v3, v4

    move v2, v3

    .line 985
    .local v2, "cmp":I
    move v3, v2

    if-nez v3, :cond_0

    .line 986
    move-object v3, v0

    iget v3, v3, Ljava/time/YearMonth;->month:I

    move-object v4, v1

    iget v4, v4, Ljava/time/YearMonth;->month:I

    sub-int/2addr v3, v4

    move v2, v3

    .line 988
    :cond_0
    move v3, v2

    move v0, v3

    .end local v0    # "this":Ljava/time/YearMonth;
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    .line 1022
    move-object v0, p0

    .local v0, "this":Ljava/time/YearMonth;
    move-object v1, p1

    .local v1, "obj":Ljava/lang/Object;
    move-object v3, v0

    move-object v4, v1

    if-ne v3, v4, :cond_0

    .line 1023
    const/4 v3, 0x1

    move v0, v3

    .line 1029
    .end local v0    # "this":Ljava/time/YearMonth;
    :goto_0
    return v0

    .line 1025
    .restart local v0    # "this":Ljava/time/YearMonth;
    :cond_0
    move-object v3, v1

    instance-of v3, v3, Ljava/time/YearMonth;

    if-eqz v3, :cond_2

    .line 1026
    move-object v3, v1

    check-cast v3, Ljava/time/YearMonth;

    move-object v2, v3

    .line 1027
    .local v2, "other":Ljava/time/YearMonth;
    move-object v3, v0

    iget v3, v3, Ljava/time/YearMonth;->year:I

    move-object v4, v2

    iget v4, v4, Ljava/time/YearMonth;->year:I

    if-ne v3, v4, :cond_1

    move-object v3, v0

    iget v3, v3, Ljava/time/YearMonth;->month:I

    move-object v4, v2

    iget v4, v4, Ljava/time/YearMonth;->month:I

    if-ne v3, v4, :cond_1

    const/4 v3, 0x1

    :goto_1
    move v0, v3

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    .line 1029
    .end local v2    # "other":Ljava/time/YearMonth;
    :cond_2
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0
.end method

.method public format(Ljava/time/format/DateTimeFormatter;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 1079
    move-object v0, p0

    .local v0, "this":Ljava/time/YearMonth;
    move-object v1, p1

    .local v1, "formatter":Ljava/time/format/DateTimeFormatter;
    move-object v2, v1

    const-string v3, "formatter"

    invoke-static {v2, v3}, Ljava/time/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 1080
    move-object v2, v1

    move-object v3, v0

    invoke-virtual {v2, v3}, Ljava/time/format/DateTimeFormatter;->format(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljava/time/YearMonth;
    return-object v0
.end method

.method public get(Ljava/time/temporal/TemporalField;)I
    .locals 7

    .prologue
    .line 400
    move-object v1, p0

    .local v1, "this":Ljava/time/YearMonth;
    move-object v2, p1

    .local v2, "field":Ljava/time/temporal/TemporalField;
    move-object v3, v1

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljava/time/YearMonth;->range(Ljava/time/temporal/TemporalField;)Ljava/time/temporal/ValueRange;

    move-result-object v3

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v4, v5}, Ljava/time/YearMonth;->getLong(Ljava/time/temporal/TemporalField;)J

    move-result-wide v4

    move-object v6, v2

    invoke-virtual {v3, v4, v5, v6}, Ljava/time/temporal/ValueRange;->checkValidIntValue(JLjava/time/temporal/TemporalField;)I

    move-result v3

    move v1, v3

    .end local v1    # "this":Ljava/time/YearMonth;
    return v1
.end method

.method public getLong(Ljava/time/temporal/TemporalField;)J
    .locals 7

    .prologue
    .line 427
    move-object v0, p0

    .local v0, "this":Ljava/time/YearMonth;
    move-object v1, p1

    .local v1, "field":Ljava/time/temporal/TemporalField;
    move-object v2, v1

    instance-of v2, v2, Ljava/time/temporal/ChronoField;

    if-eqz v2, :cond_2

    .line 428
    sget-object v2, Ljava/time/YearMonth$2;->$SwitchMap$java$time$temporal$ChronoField:[I

    move-object v3, v1

    check-cast v3, Ljava/time/temporal/ChronoField;

    invoke-virtual {v3}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 435
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

    .line 429
    :pswitch_0
    move-object v2, v0

    iget v2, v2, Ljava/time/YearMonth;->month:I

    int-to-long v2, v2

    move-wide v0, v2

    .line 437
    .end local v0    # "this":Ljava/time/YearMonth;
    :goto_0
    return-wide v0

    .line 430
    .restart local v0    # "this":Ljava/time/YearMonth;
    :pswitch_1
    move-object v2, v0

    invoke-direct {v2}, Ljava/time/YearMonth;->getProlepticMonth()J

    move-result-wide v2

    move-wide v0, v2

    goto :goto_0

    .line 431
    :pswitch_2
    move-object v2, v0

    iget v2, v2, Ljava/time/YearMonth;->year:I

    const/4 v3, 0x1

    if-ge v2, v3, :cond_0

    const/4 v2, 0x1

    move-object v3, v0

    iget v3, v3, Ljava/time/YearMonth;->year:I

    rsub-int/lit8 v2, v3, 0x1

    :goto_1
    int-to-long v2, v2

    move-wide v0, v2

    goto :goto_0

    :cond_0
    move-object v2, v0

    iget v2, v2, Ljava/time/YearMonth;->year:I

    goto :goto_1

    .line 432
    :pswitch_3
    move-object v2, v0

    iget v2, v2, Ljava/time/YearMonth;->year:I

    int-to-long v2, v2

    move-wide v0, v2

    goto :goto_0

    .line 433
    :pswitch_4
    move-object v2, v0

    iget v2, v2, Ljava/time/YearMonth;->year:I

    const/4 v3, 0x1

    if-ge v2, v3, :cond_1

    const/4 v2, 0x0

    :goto_2
    int-to-long v2, v2

    move-wide v0, v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    goto :goto_2

    .line 437
    :cond_2
    move-object v2, v1

    move-object v3, v0

    invoke-interface {v2, v3}, Ljava/time/temporal/TemporalField;->getFrom(Ljava/time/temporal/TemporalAccessor;)J

    move-result-wide v2

    move-wide v0, v2

    goto :goto_0

    .line 428
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public getMonth()Ljava/time/Month;
    .locals 2

    .prologue
    .line 483
    move-object v0, p0

    .local v0, "this":Ljava/time/YearMonth;
    move-object v1, v0

    iget v1, v1, Ljava/time/YearMonth;->month:I

    invoke-static {v1}, Ljava/time/Month;->of(I)Ljava/time/Month;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljava/time/YearMonth;
    return-object v0
.end method

.method public getMonthValue()I
    .locals 2

    .prologue
    .line 469
    move-object v0, p0

    .local v0, "this":Ljava/time/YearMonth;
    move-object v1, v0

    iget v1, v1, Ljava/time/YearMonth;->month:I

    move v0, v1

    .end local v0    # "this":Ljava/time/YearMonth;
    return v0
.end method

.method public getYear()I
    .locals 2

    .prologue
    .line 455
    move-object v0, p0

    .local v0, "this":Ljava/time/YearMonth;
    move-object v1, v0

    iget v1, v1, Ljava/time/YearMonth;->year:I

    move v0, v1

    .end local v0    # "this":Ljava/time/YearMonth;
    return v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 1039
    move-object v0, p0

    .local v0, "this":Ljava/time/YearMonth;
    move-object v1, v0

    iget v1, v1, Ljava/time/YearMonth;->year:I

    move-object v2, v0

    iget v2, v2, Ljava/time/YearMonth;->month:I

    const/16 v3, 0x1b

    shl-int/lit8 v2, v2, 0x1b

    xor-int/2addr v1, v2

    move v0, v1

    .end local v0    # "this":Ljava/time/YearMonth;
    return v0
.end method

.method public isAfter(Ljava/time/YearMonth;)Z
    .locals 4

    .prologue
    .line 998
    move-object v0, p0

    .local v0, "this":Ljava/time/YearMonth;
    move-object v1, p1

    .local v1, "other":Ljava/time/YearMonth;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/time/YearMonth;->compareTo(Ljava/time/YearMonth;)I

    move-result v2

    if-lez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .end local v0    # "this":Ljava/time/YearMonth;
    return v0

    .restart local v0    # "this":Ljava/time/YearMonth;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isBefore(Ljava/time/YearMonth;)Z
    .locals 4

    .prologue
    .line 1008
    move-object v0, p0

    .local v0, "this":Ljava/time/YearMonth;
    move-object v1, p1

    .local v1, "other":Ljava/time/YearMonth;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/time/YearMonth;->compareTo(Ljava/time/YearMonth;)I

    move-result v2

    if-gez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .end local v0    # "this":Ljava/time/YearMonth;
    return v0

    .restart local v0    # "this":Ljava/time/YearMonth;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isLeapYear()Z
    .locals 4

    .prologue
    .line 506
    move-object v0, p0

    .local v0, "this":Ljava/time/YearMonth;
    sget-object v1, Ljava/time/chrono/IsoChronology;->INSTANCE:Ljava/time/chrono/IsoChronology;

    move-object v2, v0

    iget v2, v2, Ljava/time/YearMonth;->year:I

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Ljava/time/chrono/IsoChronology;->isLeapYear(J)Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Ljava/time/YearMonth;
    return v0
.end method

.method public isSupported(Ljava/time/temporal/TemporalField;)Z
    .locals 4

    .prologue
    .line 329
    move-object v0, p0

    .local v0, "this":Ljava/time/YearMonth;
    move-object v1, p1

    .local v1, "field":Ljava/time/temporal/TemporalField;
    move-object v2, v1

    instance-of v2, v2, Ljava/time/temporal/ChronoField;

    if-eqz v2, :cond_2

    .line 330
    move-object v2, v1

    sget-object v3, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    if-eq v2, v3, :cond_0

    move-object v2, v1

    sget-object v3, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    if-eq v2, v3, :cond_0

    move-object v2, v1

    sget-object v3, Ljava/time/temporal/ChronoField;->PROLEPTIC_MONTH:Ljava/time/temporal/ChronoField;

    if-eq v2, v3, :cond_0

    move-object v2, v1

    sget-object v3, Ljava/time/temporal/ChronoField;->YEAR_OF_ERA:Ljava/time/temporal/ChronoField;

    if-eq v2, v3, :cond_0

    move-object v2, v1

    sget-object v3, Ljava/time/temporal/ChronoField;->ERA:Ljava/time/temporal/ChronoField;

    if-ne v2, v3, :cond_1

    :cond_0
    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .line 333
    .end local v0    # "this":Ljava/time/YearMonth;
    :goto_1
    return v0

    .line 330
    .restart local v0    # "this":Ljava/time/YearMonth;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 333
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

.method public isSupported(Ljava/time/temporal/TemporalUnit;)Z
    .locals 4

    .prologue
    .line 338
    move-object v0, p0

    .local v0, "this":Ljava/time/YearMonth;
    move-object v1, p1

    .local v1, "unit":Ljava/time/temporal/TemporalUnit;
    move-object v2, v1

    instance-of v2, v2, Ljava/time/temporal/ChronoUnit;

    if-eqz v2, :cond_2

    .line 339
    move-object v2, v1

    sget-object v3, Ljava/time/temporal/ChronoUnit;->MONTHS:Ljava/time/temporal/ChronoUnit;

    if-eq v2, v3, :cond_0

    move-object v2, v1

    sget-object v3, Ljava/time/temporal/ChronoUnit;->YEARS:Ljava/time/temporal/ChronoUnit;

    if-eq v2, v3, :cond_0

    move-object v2, v1

    sget-object v3, Ljava/time/temporal/ChronoUnit;->DECADES:Ljava/time/temporal/ChronoUnit;

    if-eq v2, v3, :cond_0

    move-object v2, v1

    sget-object v3, Ljava/time/temporal/ChronoUnit;->CENTURIES:Ljava/time/temporal/ChronoUnit;

    if-eq v2, v3, :cond_0

    move-object v2, v1

    sget-object v3, Ljava/time/temporal/ChronoUnit;->MILLENNIA:Ljava/time/temporal/ChronoUnit;

    if-eq v2, v3, :cond_0

    move-object v2, v1

    sget-object v3, Ljava/time/temporal/ChronoUnit;->ERAS:Ljava/time/temporal/ChronoUnit;

    if-ne v2, v3, :cond_1

    :cond_0
    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .line 341
    .end local v0    # "this":Ljava/time/YearMonth;
    :goto_1
    return v0

    .line 339
    .restart local v0    # "this":Ljava/time/YearMonth;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 341
    :cond_2
    move-object v2, v1

    if-eqz v2, :cond_3

    move-object v2, v1

    move-object v3, v0

    invoke-interface {v2, v3}, Ljava/time/temporal/TemporalUnit;->isSupportedBy(Ljava/time/temporal/Temporal;)Z

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

.method public isValidDay(I)Z
    .locals 4

    .prologue
    .line 519
    move-object v0, p0

    .local v0, "this":Ljava/time/YearMonth;
    move v1, p1

    .local v1, "dayOfMonth":I
    move v2, v1

    const/4 v3, 0x1

    if-lt v2, v3, :cond_0

    move v2, v1

    move-object v3, v0

    invoke-virtual {v3}, Ljava/time/YearMonth;->lengthOfMonth()I

    move-result v3

    if-gt v2, v3, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .end local v0    # "this":Ljava/time/YearMonth;
    return v0

    .restart local v0    # "this":Ljava/time/YearMonth;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public lengthOfMonth()I
    .locals 3

    .prologue
    .line 531
    move-object v0, p0

    .local v0, "this":Ljava/time/YearMonth;
    move-object v1, v0

    invoke-virtual {v1}, Ljava/time/YearMonth;->getMonth()Ljava/time/Month;

    move-result-object v1

    move-object v2, v0

    invoke-virtual {v2}, Ljava/time/YearMonth;->isLeapYear()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/time/Month;->length(Z)I

    move-result v1

    move v0, v1

    .end local v0    # "this":Ljava/time/YearMonth;
    return v0
.end method

.method public lengthOfYear()I
    .locals 2

    .prologue
    .line 542
    move-object v0, p0

    .local v0, "this":Ljava/time/YearMonth;
    move-object v1, v0

    invoke-virtual {v1}, Ljava/time/YearMonth;->isLeapYear()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x16e

    :goto_0
    move v0, v1

    .end local v0    # "this":Ljava/time/YearMonth;
    return v0

    .restart local v0    # "this":Ljava/time/YearMonth;
    :cond_0
    const/16 v1, 0x16d

    goto :goto_0
.end method

.method public minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/YearMonth;
    .locals 9

    .prologue
    .line 775
    move-object v1, p0

    .local v1, "this":Ljava/time/YearMonth;
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

    invoke-virtual {v5, v6, v7, v8}, Ljava/time/YearMonth;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/YearMonth;

    move-result-object v5

    const-wide/16 v6, 0x1

    move-object v8, v4

    invoke-virtual {v5, v6, v7, v8}, Ljava/time/YearMonth;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/YearMonth;

    move-result-object v5

    :goto_0
    move-object v1, v5

    .end local v1    # "this":Ljava/time/YearMonth;
    return-object v1

    .restart local v1    # "this":Ljava/time/YearMonth;
    :cond_0
    move-object v5, v1

    move-wide v6, v2

    neg-long v6, v6

    move-object v8, v4

    invoke-virtual {v5, v6, v7, v8}, Ljava/time/YearMonth;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/YearMonth;

    move-result-object v5

    goto :goto_0
.end method

.method public minus(Ljava/time/temporal/TemporalAmount;)Ljava/time/YearMonth;
    .locals 4

    .prologue
    .line 765
    move-object v0, p0

    .local v0, "this":Ljava/time/YearMonth;
    move-object v1, p1

    .local v1, "amount":Ljava/time/temporal/TemporalAmount;
    move-object v2, v1

    move-object v3, v0

    invoke-interface {v2, v3}, Ljava/time/temporal/TemporalAmount;->subtractFrom(Ljava/time/temporal/Temporal;)Ljava/time/temporal/Temporal;

    move-result-object v2

    check-cast v2, Ljava/time/YearMonth;

    move-object v0, v2

    .end local v0    # "this":Ljava/time/YearMonth;
    return-object v0
.end method

.method public bridge synthetic minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/temporal/Temporal;
    .locals 9

    .prologue
    .line 94
    move-object v1, p0

    .local v1, "this":Ljava/time/YearMonth;
    move-wide v2, p1

    move-object v4, p3

    move-object v5, v1

    move-wide v6, v2

    move-object v8, v4

    invoke-virtual {v5, v6, v7, v8}, Ljava/time/YearMonth;->minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/YearMonth;

    move-result-object v5

    move-object v1, v5

    .end local v1    # "this":Ljava/time/YearMonth;
    return-object v1
.end method

.method public bridge synthetic minus(Ljava/time/temporal/TemporalAmount;)Ljava/time/temporal/Temporal;
    .locals 4

    .prologue
    .line 94
    move-object v0, p0

    .local v0, "this":Ljava/time/YearMonth;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/time/YearMonth;->minus(Ljava/time/temporal/TemporalAmount;)Ljava/time/YearMonth;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljava/time/YearMonth;
    return-object v0
.end method

.method public minusMonths(J)Ljava/time/YearMonth;
    .locals 7

    .prologue
    .line 801
    move-object v0, p0

    .local v0, "this":Ljava/time/YearMonth;
    move-wide v1, p1

    .local v1, "monthsToSubtract":J
    move-wide v3, v1

    const-wide/high16 v5, -0x8000000000000000L

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    move-object v3, v0

    const-wide v4, 0x7fffffffffffffffL

    invoke-virtual {v3, v4, v5}, Ljava/time/YearMonth;->plusMonths(J)Ljava/time/YearMonth;

    move-result-object v3

    const-wide/16 v4, 0x1

    invoke-virtual {v3, v4, v5}, Ljava/time/YearMonth;->plusMonths(J)Ljava/time/YearMonth;

    move-result-object v3

    :goto_0
    move-object v0, v3

    .end local v0    # "this":Ljava/time/YearMonth;
    return-object v0

    .restart local v0    # "this":Ljava/time/YearMonth;
    :cond_0
    move-object v3, v0

    move-wide v4, v1

    neg-long v4, v4

    invoke-virtual {v3, v4, v5}, Ljava/time/YearMonth;->plusMonths(J)Ljava/time/YearMonth;

    move-result-object v3

    goto :goto_0
.end method

.method public minusYears(J)Ljava/time/YearMonth;
    .locals 7

    .prologue
    .line 788
    move-object v0, p0

    .local v0, "this":Ljava/time/YearMonth;
    move-wide v1, p1

    .local v1, "yearsToSubtract":J
    move-wide v3, v1

    const-wide/high16 v5, -0x8000000000000000L

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    move-object v3, v0

    const-wide v4, 0x7fffffffffffffffL

    invoke-virtual {v3, v4, v5}, Ljava/time/YearMonth;->plusYears(J)Ljava/time/YearMonth;

    move-result-object v3

    const-wide/16 v4, 0x1

    invoke-virtual {v3, v4, v5}, Ljava/time/YearMonth;->plusYears(J)Ljava/time/YearMonth;

    move-result-object v3

    :goto_0
    move-object v0, v3

    .end local v0    # "this":Ljava/time/YearMonth;
    return-object v0

    .restart local v0    # "this":Ljava/time/YearMonth;
    :cond_0
    move-object v3, v0

    move-wide v4, v1

    neg-long v4, v4

    invoke-virtual {v3, v4, v5}, Ljava/time/YearMonth;->plusYears(J)Ljava/time/YearMonth;

    move-result-object v3

    goto :goto_0
.end method

.method public plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/YearMonth;
    .locals 13

    .prologue
    .line 695
    move-object v1, p0

    .local v1, "this":Ljava/time/YearMonth;
    move-wide v2, p1

    .local v2, "amountToAdd":J
    move-object/from16 v4, p3

    .local v4, "unit":Ljava/time/temporal/TemporalUnit;
    move-object v5, v4

    instance-of v5, v5, Ljava/time/temporal/ChronoUnit;

    if-eqz v5, :cond_0

    .line 696
    sget-object v5, Ljava/time/YearMonth$2;->$SwitchMap$java$time$temporal$ChronoUnit:[I

    move-object v6, v4

    check-cast v6, Ljava/time/temporal/ChronoUnit;

    invoke-virtual {v6}, Ljava/time/temporal/ChronoUnit;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 704
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

    move-object v8, v4

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/time/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 697
    :pswitch_0
    move-object v5, v1

    move-wide v6, v2

    invoke-virtual {v5, v6, v7}, Ljava/time/YearMonth;->plusMonths(J)Ljava/time/YearMonth;

    move-result-object v5

    move-object v1, v5

    .line 706
    .end local v1    # "this":Ljava/time/YearMonth;
    :goto_0
    return-object v1

    .line 698
    .restart local v1    # "this":Ljava/time/YearMonth;
    :pswitch_1
    move-object v5, v1

    move-wide v6, v2

    invoke-virtual {v5, v6, v7}, Ljava/time/YearMonth;->plusYears(J)Ljava/time/YearMonth;

    move-result-object v5

    move-object v1, v5

    goto :goto_0

    .line 699
    :pswitch_2
    move-object v5, v1

    move-wide v6, v2

    const/16 v8, 0xa

    invoke-static {v6, v7, v8}, Ljava/time/jdk8/Jdk8Methods;->safeMultiply(JI)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/time/YearMonth;->plusYears(J)Ljava/time/YearMonth;

    move-result-object v5

    move-object v1, v5

    goto :goto_0

    .line 700
    :pswitch_3
    move-object v5, v1

    move-wide v6, v2

    const/16 v8, 0x64

    invoke-static {v6, v7, v8}, Ljava/time/jdk8/Jdk8Methods;->safeMultiply(JI)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/time/YearMonth;->plusYears(J)Ljava/time/YearMonth;

    move-result-object v5

    move-object v1, v5

    goto :goto_0

    .line 701
    :pswitch_4
    move-object v5, v1

    move-wide v6, v2

    const/16 v8, 0x3e8

    invoke-static {v6, v7, v8}, Ljava/time/jdk8/Jdk8Methods;->safeMultiply(JI)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/time/YearMonth;->plusYears(J)Ljava/time/YearMonth;

    move-result-object v5

    move-object v1, v5

    goto :goto_0

    .line 702
    :pswitch_5
    move-object v5, v1

    sget-object v6, Ljava/time/temporal/ChronoField;->ERA:Ljava/time/temporal/ChronoField;

    move-object v7, v1

    sget-object v8, Ljava/time/temporal/ChronoField;->ERA:Ljava/time/temporal/ChronoField;

    invoke-virtual {v7, v8}, Ljava/time/YearMonth;->getLong(Ljava/time/temporal/TemporalField;)J

    move-result-wide v7

    move-wide v9, v2

    invoke-static {v7, v8, v9, v10}, Ljava/time/jdk8/Jdk8Methods;->safeAdd(JJ)J

    move-result-wide v7

    invoke-virtual {v5, v6, v7, v8}, Ljava/time/YearMonth;->with(Ljava/time/temporal/TemporalField;J)Ljava/time/YearMonth;

    move-result-object v5

    move-object v1, v5

    goto :goto_0

    .line 706
    :cond_0
    move-object v5, v4

    move-object v6, v1

    move-wide v7, v2

    invoke-interface {v5, v6, v7, v8}, Ljava/time/temporal/TemporalUnit;->addTo(Ljava/time/temporal/Temporal;J)Ljava/time/temporal/Temporal;

    move-result-object v5

    check-cast v5, Ljava/time/YearMonth;

    move-object v1, v5

    goto :goto_0

    .line 696
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public plus(Ljava/time/temporal/TemporalAmount;)Ljava/time/YearMonth;
    .locals 4

    .prologue
    .line 685
    move-object v0, p0

    .local v0, "this":Ljava/time/YearMonth;
    move-object v1, p1

    .local v1, "amount":Ljava/time/temporal/TemporalAmount;
    move-object v2, v1

    move-object v3, v0

    invoke-interface {v2, v3}, Ljava/time/temporal/TemporalAmount;->addTo(Ljava/time/temporal/Temporal;)Ljava/time/temporal/Temporal;

    move-result-object v2

    check-cast v2, Ljava/time/YearMonth;

    move-object v0, v2

    .end local v0    # "this":Ljava/time/YearMonth;
    return-object v0
.end method

.method public bridge synthetic plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/temporal/Temporal;
    .locals 9

    .prologue
    .line 94
    move-object v1, p0

    .local v1, "this":Ljava/time/YearMonth;
    move-wide v2, p1

    move-object v4, p3

    move-object v5, v1

    move-wide v6, v2

    move-object v8, v4

    invoke-virtual {v5, v6, v7, v8}, Ljava/time/YearMonth;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/YearMonth;

    move-result-object v5

    move-object v1, v5

    .end local v1    # "this":Ljava/time/YearMonth;
    return-object v1
.end method

.method public bridge synthetic plus(Ljava/time/temporal/TemporalAmount;)Ljava/time/temporal/Temporal;
    .locals 4

    .prologue
    .line 94
    move-object v0, p0

    .local v0, "this":Ljava/time/YearMonth;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/time/YearMonth;->plus(Ljava/time/temporal/TemporalAmount;)Ljava/time/YearMonth;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljava/time/YearMonth;
    return-object v0
.end method

.method public plusMonths(J)Ljava/time/YearMonth;
    .locals 15

    .prologue
    .line 736
    move-object v1, p0

    .local v1, "this":Ljava/time/YearMonth;
    move-wide/from16 v2, p1

    .local v2, "monthsToAdd":J
    move-wide v10, v2

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-nez v10, :cond_0

    .line 737
    move-object v10, v1

    move-object v1, v10

    .line 743
    .end local v1    # "this":Ljava/time/YearMonth;
    :goto_0
    return-object v1

    .line 739
    .restart local v1    # "this":Ljava/time/YearMonth;
    :cond_0
    move-object v10, v1

    iget v10, v10, Ljava/time/YearMonth;->year:I

    int-to-long v10, v10

    const-wide/16 v12, 0xc

    mul-long/2addr v10, v12

    move-object v12, v1

    iget v12, v12, Ljava/time/YearMonth;->month:I

    const/4 v13, 0x1

    add-int/lit8 v12, v12, -0x1

    int-to-long v12, v12

    add-long/2addr v10, v12

    move-wide v4, v10

    .line 740
    .local v4, "monthCount":J
    move-wide v10, v4

    move-wide v12, v2

    add-long/2addr v10, v12

    move-wide v6, v10

    .line 741
    .local v6, "calcMonths":J
    sget-object v10, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    move-wide v11, v6

    const-wide/16 v13, 0xc

    invoke-static {v11, v12, v13, v14}, Ljava/time/jdk8/Jdk8Methods;->floorDiv(JJ)J

    move-result-wide v11

    invoke-virtual {v10, v11, v12}, Ljava/time/temporal/ChronoField;->checkValidIntValue(J)I

    move-result v10

    move v8, v10

    .line 742
    .local v8, "newYear":I
    move-wide v10, v6

    const/16 v12, 0xc

    invoke-static {v10, v11, v12}, Ljava/time/jdk8/Jdk8Methods;->floorMod(JI)I

    move-result v10

    const/4 v11, 0x1

    add-int/lit8 v10, v10, 0x1

    move v9, v10

    .line 743
    .local v9, "newMonth":I
    move-object v10, v1

    move v11, v8

    move v12, v9

    invoke-direct {v10, v11, v12}, Ljava/time/YearMonth;->with(II)Ljava/time/YearMonth;

    move-result-object v10

    move-object v1, v10

    goto :goto_0
.end method

.method public plusYears(J)Ljava/time/YearMonth;
    .locals 11

    .prologue
    .line 719
    move-object v1, p0

    .local v1, "this":Ljava/time/YearMonth;
    move-wide v2, p1

    .local v2, "yearsToAdd":J
    move-wide v5, v2

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-nez v5, :cond_0

    .line 720
    move-object v5, v1

    move-object v1, v5

    .line 723
    .end local v1    # "this":Ljava/time/YearMonth;
    :goto_0
    return-object v1

    .line 722
    .restart local v1    # "this":Ljava/time/YearMonth;
    :cond_0
    sget-object v5, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    move-object v6, v1

    iget v6, v6, Ljava/time/YearMonth;->year:I

    int-to-long v6, v6

    move-wide v8, v2

    add-long/2addr v6, v8

    invoke-virtual {v5, v6, v7}, Ljava/time/temporal/ChronoField;->checkValidIntValue(J)I

    move-result v5

    move v4, v5

    .line 723
    .local v4, "newYear":I
    move-object v5, v1

    move v6, v4

    move-object v7, v1

    iget v7, v7, Ljava/time/YearMonth;->month:I

    invoke-direct {v5, v6, v7}, Ljava/time/YearMonth;->with(II)Ljava/time/YearMonth;

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
    .line 826
    move-object v0, p0

    .local v0, "this":Ljava/time/YearMonth;
    move-object v1, p1

    .local v1, "query":Ljava/time/temporal/TemporalQuery;, "Ljava/time/temporal/TemporalQuery<TR;>;"
    move-object v2, v1

    invoke-static {}, Ljava/time/temporal/TemporalQueries;->chronology()Ljava/time/temporal/TemporalQuery;

    move-result-object v3

    if-ne v2, v3, :cond_0

    .line 827
    sget-object v2, Ljava/time/chrono/IsoChronology;->INSTANCE:Ljava/time/chrono/IsoChronology;

    move-object v0, v2

    .line 834
    .end local v0    # "this":Ljava/time/YearMonth;
    :goto_0
    return-object v0

    .line 828
    .restart local v0    # "this":Ljava/time/YearMonth;
    :cond_0
    move-object v2, v1

    invoke-static {}, Ljava/time/temporal/TemporalQueries;->precision()Ljava/time/temporal/TemporalQuery;

    move-result-object v3

    if-ne v2, v3, :cond_1

    .line 829
    sget-object v2, Ljava/time/temporal/ChronoUnit;->MONTHS:Ljava/time/temporal/ChronoUnit;

    move-object v0, v2

    goto :goto_0

    .line 830
    :cond_1
    move-object v2, v1

    invoke-static {}, Ljava/time/temporal/TemporalQueries;->localDate()Ljava/time/temporal/TemporalQuery;

    move-result-object v3

    if-eq v2, v3, :cond_2

    move-object v2, v1

    invoke-static {}, Ljava/time/temporal/TemporalQueries;->localTime()Ljava/time/temporal/TemporalQuery;

    move-result-object v3

    if-eq v2, v3, :cond_2

    move-object v2, v1

    .line 831
    invoke-static {}, Ljava/time/temporal/TemporalQueries;->zone()Ljava/time/temporal/TemporalQuery;

    move-result-object v3

    if-eq v2, v3, :cond_2

    move-object v2, v1

    invoke-static {}, Ljava/time/temporal/TemporalQueries;->zoneId()Ljava/time/temporal/TemporalQuery;

    move-result-object v3

    if-eq v2, v3, :cond_2

    move-object v2, v1

    invoke-static {}, Ljava/time/temporal/TemporalQueries;->offset()Ljava/time/temporal/TemporalQuery;

    move-result-object v3

    if-ne v2, v3, :cond_3

    .line 832
    :cond_2
    const/4 v2, 0x0

    move-object v0, v2

    goto :goto_0

    .line 834
    :cond_3
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Ljava/time/jdk8/DefaultInterfaceTemporalAccessor;->query(Ljava/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    goto :goto_0
.end method

.method public range(Ljava/time/temporal/TemporalField;)Ljava/time/temporal/ValueRange;
    .locals 6

    .prologue
    .line 368
    move-object v0, p0

    .local v0, "this":Ljava/time/YearMonth;
    move-object v1, p1

    .local v1, "field":Ljava/time/temporal/TemporalField;
    move-object v2, v1

    sget-object v3, Ljava/time/temporal/ChronoField;->YEAR_OF_ERA:Ljava/time/temporal/ChronoField;

    if-ne v2, v3, :cond_1

    .line 369
    move-object v2, v0

    invoke-virtual {v2}, Ljava/time/YearMonth;->getYear()I

    move-result v2

    if-gtz v2, :cond_0

    const-wide/16 v2, 0x1

    const-wide/32 v4, 0x3b9aca00

    invoke-static {v2, v3, v4, v5}, Ljava/time/temporal/ValueRange;->of(JJ)Ljava/time/temporal/ValueRange;

    move-result-object v2

    :goto_0
    move-object v0, v2

    .line 371
    .end local v0    # "this":Ljava/time/YearMonth;
    :goto_1
    return-object v0

    .line 369
    .restart local v0    # "this":Ljava/time/YearMonth;
    :cond_0
    const-wide/16 v2, 0x1

    const-wide/32 v4, 0x3b9ac9ff

    invoke-static {v2, v3, v4, v5}, Ljava/time/temporal/ValueRange;->of(JJ)Ljava/time/temporal/ValueRange;

    move-result-object v2

    goto :goto_0

    .line 371
    :cond_1
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Ljava/time/jdk8/DefaultInterfaceTemporalAccessor;->range(Ljava/time/temporal/TemporalField;)Ljava/time/temporal/ValueRange;

    move-result-object v2

    move-object v0, v2

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .prologue
    .line 1052
    move-object v0, p0

    .local v0, "this":Ljava/time/YearMonth;
    move-object v3, v0

    iget v3, v3, Ljava/time/YearMonth;->year:I

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    move v1, v3

    .line 1053
    .local v1, "absYear":I
    new-instance v3, Ljava/lang/StringBuilder;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const/16 v5, 0x9

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v2, v3

    .line 1054
    .local v2, "buf":Ljava/lang/StringBuilder;
    move v3, v1

    const/16 v4, 0x3e8

    if-ge v3, v4, :cond_1

    .line 1055
    move-object v3, v0

    iget v3, v3, Ljava/time/YearMonth;->year:I

    if-gez v3, :cond_0

    .line 1056
    move-object v3, v2

    move-object v4, v0

    iget v4, v4, Ljava/time/YearMonth;->year:I

    const/16 v5, 0x2710

    add-int/lit16 v4, v4, -0x2710

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1063
    :goto_0
    move-object v3, v2

    move-object v4, v0

    iget v4, v4, Ljava/time/YearMonth;->month:I

    const/16 v5, 0xa

    if-ge v4, v5, :cond_2

    const-string v4, "-0"

    :goto_1
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v0

    iget v4, v4, Ljava/time/YearMonth;->month:I

    .line 1064
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1065
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Ljava/time/YearMonth;
    return-object v0

    .line 1058
    .restart local v0    # "this":Ljava/time/YearMonth;
    :cond_0
    move-object v3, v2

    move-object v4, v0

    iget v4, v4, Ljava/time/YearMonth;->year:I

    const/16 v5, 0x2710

    add-int/lit16 v4, v4, 0x2710

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    move-result-object v3

    goto :goto_0

    .line 1061
    :cond_1
    move-object v3, v2

    move-object v4, v0

    iget v4, v4, Ljava/time/YearMonth;->year:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    goto :goto_0

    .line 1063
    :cond_2
    const-string v4, "-"

    goto :goto_1
.end method

.method public until(Ljava/time/temporal/Temporal;Ljava/time/temporal/TemporalUnit;)J
    .locals 11

    .prologue
    .line 916
    move-object v0, p0

    .local v0, "this":Ljava/time/YearMonth;
    move-object v1, p1

    .local v1, "endExclusive":Ljava/time/temporal/Temporal;
    move-object v2, p2

    .local v2, "unit":Ljava/time/temporal/TemporalUnit;
    move-object v6, v1

    invoke-static {v6}, Ljava/time/YearMonth;->from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/YearMonth;

    move-result-object v6

    move-object v3, v6

    .line 917
    .local v3, "end":Ljava/time/YearMonth;
    move-object v6, v2

    instance-of v6, v6, Ljava/time/temporal/ChronoUnit;

    if-eqz v6, :cond_0

    .line 918
    move-object v6, v3

    invoke-direct {v6}, Ljava/time/YearMonth;->getProlepticMonth()J

    move-result-wide v6

    move-object v8, v0

    invoke-direct {v8}, Ljava/time/YearMonth;->getProlepticMonth()J

    move-result-wide v8

    sub-long/2addr v6, v8

    move-wide v4, v6

    .line 919
    .local v4, "monthsUntil":J
    sget-object v6, Ljava/time/YearMonth$2;->$SwitchMap$java$time$temporal$ChronoUnit:[I

    move-object v7, v2

    check-cast v7, Ljava/time/temporal/ChronoUnit;

    invoke-virtual {v7}, Ljava/time/temporal/ChronoUnit;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 927
    new-instance v6, Ljava/time/temporal/UnsupportedTemporalTypeException;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v10, v8

    move-object v8, v10

    move-object v9, v10

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unsupported unit: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v2

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/time/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 920
    :pswitch_0
    move-wide v6, v4

    move-wide v0, v6

    .line 929
    .end local v0    # "this":Ljava/time/YearMonth;
    .end local v4    # "monthsUntil":J
    :goto_0
    return-wide v0

    .line 921
    .restart local v0    # "this":Ljava/time/YearMonth;
    .restart local v4    # "monthsUntil":J
    :pswitch_1
    move-wide v6, v4

    const-wide/16 v8, 0xc

    div-long/2addr v6, v8

    move-wide v0, v6

    goto :goto_0

    .line 922
    :pswitch_2
    move-wide v6, v4

    const-wide/16 v8, 0x78

    div-long/2addr v6, v8

    move-wide v0, v6

    goto :goto_0

    .line 923
    :pswitch_3
    move-wide v6, v4

    const-wide/16 v8, 0x4b0

    div-long/2addr v6, v8

    move-wide v0, v6

    goto :goto_0

    .line 924
    :pswitch_4
    move-wide v6, v4

    const-wide/16 v8, 0x2ee0

    div-long/2addr v6, v8

    move-wide v0, v6

    goto :goto_0

    .line 925
    :pswitch_5
    move-object v6, v3

    sget-object v7, Ljava/time/temporal/ChronoField;->ERA:Ljava/time/temporal/ChronoField;

    invoke-virtual {v6, v7}, Ljava/time/YearMonth;->getLong(Ljava/time/temporal/TemporalField;)J

    move-result-wide v6

    move-object v8, v0

    sget-object v9, Ljava/time/temporal/ChronoField;->ERA:Ljava/time/temporal/ChronoField;

    invoke-virtual {v8, v9}, Ljava/time/YearMonth;->getLong(Ljava/time/temporal/TemporalField;)J

    move-result-wide v8

    sub-long/2addr v6, v8

    move-wide v0, v6

    goto :goto_0

    .line 929
    .end local v4    # "monthsUntil":J
    :cond_0
    move-object v6, v2

    move-object v7, v0

    move-object v8, v3

    invoke-interface {v6, v7, v8}, Ljava/time/temporal/TemporalUnit;->between(Ljava/time/temporal/Temporal;Ljava/time/temporal/Temporal;)J

    move-result-wide v6

    move-wide v0, v6

    goto :goto_0

    .line 919
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public with(Ljava/time/temporal/TemporalAdjuster;)Ljava/time/YearMonth;
    .locals 4

    .prologue
    .line 570
    move-object v0, p0

    .local v0, "this":Ljava/time/YearMonth;
    move-object v1, p1

    .local v1, "adjuster":Ljava/time/temporal/TemporalAdjuster;
    move-object v2, v1

    move-object v3, v0

    invoke-interface {v2, v3}, Ljava/time/temporal/TemporalAdjuster;->adjustInto(Ljava/time/temporal/Temporal;)Ljava/time/temporal/Temporal;

    move-result-object v2

    check-cast v2, Ljava/time/YearMonth;

    move-object v0, v2

    .end local v0    # "this":Ljava/time/YearMonth;
    return-object v0
.end method

.method public with(Ljava/time/temporal/TemporalField;J)Ljava/time/YearMonth;
    .locals 12

    .prologue
    .line 622
    move-object v0, p0

    .local v0, "this":Ljava/time/YearMonth;
    move-object v1, p1

    .local v1, "field":Ljava/time/temporal/TemporalField;
    move-wide v2, p2

    .local v2, "newValue":J
    move-object v5, v1

    instance-of v5, v5, Ljava/time/temporal/ChronoField;

    if-eqz v5, :cond_2

    .line 623
    move-object v5, v1

    check-cast v5, Ljava/time/temporal/ChronoField;

    move-object v4, v5

    .line 624
    .local v4, "f":Ljava/time/temporal/ChronoField;
    move-object v5, v4

    move-wide v6, v2

    invoke-virtual {v5, v6, v7}, Ljava/time/temporal/ChronoField;->checkValidValue(J)J

    move-result-wide v5

    .line 625
    sget-object v5, Ljava/time/YearMonth$2;->$SwitchMap$java$time$temporal$ChronoField:[I

    move-object v6, v4

    invoke-virtual {v6}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 632
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

    .line 626
    :pswitch_0
    move-object v5, v0

    move-wide v6, v2

    long-to-int v6, v6

    invoke-virtual {v5, v6}, Ljava/time/YearMonth;->withMonth(I)Ljava/time/YearMonth;

    move-result-object v5

    move-object v0, v5

    .line 634
    .end local v0    # "this":Ljava/time/YearMonth;
    .end local v4    # "f":Ljava/time/temporal/ChronoField;
    :goto_0
    return-object v0

    .line 627
    .restart local v0    # "this":Ljava/time/YearMonth;
    .restart local v4    # "f":Ljava/time/temporal/ChronoField;
    :pswitch_1
    move-object v5, v0

    move-wide v6, v2

    move-object v8, v0

    sget-object v9, Ljava/time/temporal/ChronoField;->PROLEPTIC_MONTH:Ljava/time/temporal/ChronoField;

    invoke-virtual {v8, v9}, Ljava/time/YearMonth;->getLong(Ljava/time/temporal/TemporalField;)J

    move-result-wide v8

    sub-long/2addr v6, v8

    invoke-virtual {v5, v6, v7}, Ljava/time/YearMonth;->plusMonths(J)Ljava/time/YearMonth;

    move-result-object v5

    move-object v0, v5

    goto :goto_0

    .line 628
    :pswitch_2
    move-object v5, v0

    move-object v6, v0

    iget v6, v6, Ljava/time/YearMonth;->year:I

    const/4 v7, 0x1

    if-ge v6, v7, :cond_0

    const-wide/16 v6, 0x1

    move-wide v8, v2

    sub-long/2addr v6, v8

    :goto_1
    long-to-int v6, v6

    invoke-virtual {v5, v6}, Ljava/time/YearMonth;->withYear(I)Ljava/time/YearMonth;

    move-result-object v5

    move-object v0, v5

    goto :goto_0

    :cond_0
    move-wide v6, v2

    goto :goto_1

    .line 629
    :pswitch_3
    move-object v5, v0

    move-wide v6, v2

    long-to-int v6, v6

    invoke-virtual {v5, v6}, Ljava/time/YearMonth;->withYear(I)Ljava/time/YearMonth;

    move-result-object v5

    move-object v0, v5

    goto :goto_0

    .line 630
    :pswitch_4
    move-object v5, v0

    sget-object v6, Ljava/time/temporal/ChronoField;->ERA:Ljava/time/temporal/ChronoField;

    invoke-virtual {v5, v6}, Ljava/time/YearMonth;->getLong(Ljava/time/temporal/TemporalField;)J

    move-result-wide v5

    move-wide v7, v2

    cmp-long v5, v5, v7

    if-nez v5, :cond_1

    move-object v5, v0

    :goto_2
    move-object v0, v5

    goto :goto_0

    :cond_1
    move-object v5, v0

    const/4 v6, 0x1

    move-object v7, v0

    iget v7, v7, Ljava/time/YearMonth;->year:I

    rsub-int/lit8 v6, v7, 0x1

    invoke-virtual {v5, v6}, Ljava/time/YearMonth;->withYear(I)Ljava/time/YearMonth;

    move-result-object v5

    goto :goto_2

    .line 634
    .end local v4    # "f":Ljava/time/temporal/ChronoField;
    :cond_2
    move-object v5, v1

    move-object v6, v0

    move-wide v7, v2

    invoke-interface {v5, v6, v7, v8}, Ljava/time/temporal/TemporalField;->adjustInto(Ljava/time/temporal/Temporal;J)Ljava/time/temporal/Temporal;

    move-result-object v5

    check-cast v5, Ljava/time/YearMonth;

    move-object v0, v5

    goto :goto_0

    .line 625
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public bridge synthetic with(Ljava/time/temporal/TemporalAdjuster;)Ljava/time/temporal/Temporal;
    .locals 4

    .prologue
    .line 94
    move-object v0, p0

    .local v0, "this":Ljava/time/YearMonth;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/time/YearMonth;->with(Ljava/time/temporal/TemporalAdjuster;)Ljava/time/YearMonth;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljava/time/YearMonth;
    return-object v0
.end method

.method public bridge synthetic with(Ljava/time/temporal/TemporalField;J)Ljava/time/temporal/Temporal;
    .locals 8

    .prologue
    .line 94
    move-object v0, p0

    .local v0, "this":Ljava/time/YearMonth;
    move-object v1, p1

    move-wide v2, p2

    move-object v4, v0

    move-object v5, v1

    move-wide v6, v2

    invoke-virtual {v4, v5, v6, v7}, Ljava/time/YearMonth;->with(Ljava/time/temporal/TemporalField;J)Ljava/time/YearMonth;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Ljava/time/YearMonth;
    return-object v0
.end method

.method public withMonth(I)Ljava/time/YearMonth;
    .locals 6

    .prologue
    .line 662
    move-object v1, p0

    .local v1, "this":Ljava/time/YearMonth;
    move v2, p1

    .local v2, "month":I
    sget-object v3, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    move v4, v2

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Ljava/time/temporal/ChronoField;->checkValidValue(J)J

    move-result-wide v3

    .line 663
    move-object v3, v1

    move-object v4, v1

    iget v4, v4, Ljava/time/YearMonth;->year:I

    move v5, v2

    invoke-direct {v3, v4, v5}, Ljava/time/YearMonth;->with(II)Ljava/time/YearMonth;

    move-result-object v3

    move-object v1, v3

    .end local v1    # "this":Ljava/time/YearMonth;
    return-object v1
.end method

.method public withYear(I)Ljava/time/YearMonth;
    .locals 6

    .prologue
    .line 648
    move-object v1, p0

    .local v1, "this":Ljava/time/YearMonth;
    move v2, p1

    .local v2, "year":I
    sget-object v3, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    move v4, v2

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Ljava/time/temporal/ChronoField;->checkValidValue(J)J

    move-result-wide v3

    .line 649
    move-object v3, v1

    move v4, v2

    move-object v5, v1

    iget v5, v5, Ljava/time/YearMonth;->month:I

    invoke-direct {v3, v4, v5}, Ljava/time/YearMonth;->with(II)Ljava/time/YearMonth;

    move-result-object v3

    move-object v1, v3

    .end local v1    # "this":Ljava/time/YearMonth;
    return-object v1
.end method

.method writeExternal(Ljava/io/DataOutput;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1098
    move-object v0, p0

    .local v0, "this":Ljava/time/YearMonth;
    move-object v1, p1

    .local v1, "out":Ljava/io/DataOutput;
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Ljava/time/YearMonth;->year:I

    invoke-interface {v2, v3}, Ljava/io/DataOutput;->writeInt(I)V

    .line 1099
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Ljava/time/YearMonth;->month:I

    invoke-interface {v2, v3}, Ljava/io/DataOutput;->writeByte(I)V

    .line 1100
    return-void
.end method
