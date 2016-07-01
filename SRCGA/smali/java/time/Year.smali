.class public final Ljava/time/Year;
.super Ljava/time/jdk8/DefaultInterfaceTemporalAccessor;
.source "Year.java"

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
        "Ljava/time/Year;",
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
            "Ljava/time/Year;",
            ">;"
        }
    .end annotation
.end field

.field public static final MAX_VALUE:I = 0x3b9ac9ff

.field public static final MIN_VALUE:I = -0x3b9ac9ff

.field private static final PARSER:Ljava/time/format/DateTimeFormatter;

.field private static final serialVersionUID:J = -0x51d949b44ef9efL


# instance fields
.field private final year:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 113
    new-instance v0, Ljava/time/Year$1;

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    invoke-direct {v1}, Ljava/time/Year$1;-><init>()V

    sput-object v0, Ljava/time/Year;->FROM:Ljava/time/temporal/TemporalQuery;

    .line 127
    new-instance v0, Ljava/time/format/DateTimeFormatterBuilder;

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    invoke-direct {v1}, Ljava/time/format/DateTimeFormatterBuilder;-><init>()V

    sget-object v1, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    const/4 v2, 0x4

    const/16 v3, 0xa

    sget-object v4, Ljava/time/format/SignStyle;->EXCEEDS_PAD:Ljava/time/format/SignStyle;

    .line 128
    invoke-virtual {v0, v1, v2, v3, v4}, Ljava/time/format/DateTimeFormatterBuilder;->appendValue(Ljava/time/temporal/TemporalField;IILjava/time/format/SignStyle;)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    .line 129
    invoke-virtual {v0}, Ljava/time/format/DateTimeFormatterBuilder;->toFormatter()Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Ljava/time/Year;->PARSER:Ljava/time/format/DateTimeFormatter;

    .line 127
    return-void
.end method

.method private constructor <init>(I)V
    .locals 4

    .prologue
    .line 296
    move-object v0, p0

    .local v0, "this":Ljava/time/Year;
    move v1, p1

    .local v1, "year":I
    move-object v2, v0

    invoke-direct {v2}, Ljava/time/jdk8/DefaultInterfaceTemporalAccessor;-><init>()V

    .line 297
    move-object v2, v0

    move v3, v1

    iput v3, v2, Ljava/time/Year;->year:I

    .line 298
    return-void
.end method

.method public static from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/Year;
    .locals 7

    .prologue
    .line 222
    move-object v0, p0

    .local v0, "temporal":Ljava/time/temporal/TemporalAccessor;
    move-object v2, v0

    instance-of v2, v2, Ljava/time/Year;

    if-eqz v2, :cond_0

    .line 223
    move-object v2, v0

    check-cast v2, Ljava/time/Year;

    move-object v0, v2

    .line 229
    .end local v0    # "temporal":Ljava/time/temporal/TemporalAccessor;
    :goto_0
    return-object v0

    .line 226
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

    .line 227
    move-object v2, v0

    invoke-static {v2}, Ljava/time/LocalDate;->from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/LocalDate;

    move-result-object v2

    move-object v0, v2

    .line 229
    :cond_1
    move-object v2, v0

    sget-object v3, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface {v2, v3}, Ljava/time/temporal/TemporalAccessor;->get(Ljava/time/temporal/TemporalField;)I

    move-result v2

    invoke-static {v2}, Ljava/time/Year;->of(I)Ljava/time/Year;
    :try_end_0
    .catch Ljava/time/DateTimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 230
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 231
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

    const-string v5, "Unable to obtain Year from TemporalAccessor: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v0

    .line 232
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

.method public static isLeap(J)Z
    .locals 6

    .prologue
    .line 287
    move-wide v0, p0

    .local v0, "year":J
    move-wide v2, v0

    const-wide/16 v4, 0x3

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    move-wide v2, v0

    const-wide/16 v4, 0x64

    rem-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    move-wide v2, v0

    const-wide/16 v4, 0x190

    rem-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    :cond_0
    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .end local v0    # "year":J
    return v0

    .restart local v0    # "year":J
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static now()Ljava/time/Year;
    .locals 1

    .prologue
    .line 149
    invoke-static {}, Ljava/time/Clock;->systemDefaultZone()Ljava/time/Clock;

    move-result-object v0

    invoke-static {v0}, Ljava/time/Year;->now(Ljava/time/Clock;)Ljava/time/Year;

    move-result-object v0

    return-object v0
.end method

.method public static now(Ljava/time/Clock;)Ljava/time/Year;
    .locals 3

    .prologue
    .line 179
    move-object v0, p0

    .local v0, "clock":Ljava/time/Clock;
    move-object v2, v0

    invoke-static {v2}, Ljava/time/LocalDate;->now(Ljava/time/Clock;)Ljava/time/LocalDate;

    move-result-object v2

    move-object v1, v2

    .line 180
    .local v1, "now":Ljava/time/LocalDate;
    move-object v2, v1

    invoke-virtual {v2}, Ljava/time/LocalDate;->getYear()I

    move-result v2

    invoke-static {v2}, Ljava/time/Year;->of(I)Ljava/time/Year;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "clock":Ljava/time/Clock;
    return-object v0
.end method

.method public static now(Ljava/time/ZoneId;)Ljava/time/Year;
    .locals 2

    .prologue
    .line 165
    move-object v0, p0

    .local v0, "zone":Ljava/time/ZoneId;
    move-object v1, v0

    invoke-static {v1}, Ljava/time/Clock;->system(Ljava/time/ZoneId;)Ljava/time/Clock;

    move-result-object v1

    invoke-static {v1}, Ljava/time/Year;->now(Ljava/time/Clock;)Ljava/time/Year;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "zone":Ljava/time/ZoneId;
    return-object v0
.end method

.method public static of(I)Ljava/time/Year;
    .locals 5

    .prologue
    .line 199
    move v0, p0

    .local v0, "isoYear":I
    sget-object v1, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    move v2, v0

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Ljava/time/temporal/ChronoField;->checkValidValue(J)J

    move-result-wide v1

    .line 200
    new-instance v1, Ljava/time/Year;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move v3, v0

    invoke-direct {v2, v3}, Ljava/time/Year;-><init>(I)V

    move-object v0, v1

    .end local v0    # "isoYear":I
    return-object v0
.end method

.method public static parse(Ljava/lang/CharSequence;)Ljava/time/Year;
    .locals 3

    .prologue
    .line 248
    move-object v0, p0

    .local v0, "text":Ljava/lang/CharSequence;
    move-object v1, v0

    sget-object v2, Ljava/time/Year;->PARSER:Ljava/time/format/DateTimeFormatter;

    invoke-static {v1, v2}, Ljava/time/Year;->parse(Ljava/lang/CharSequence;Ljava/time/format/DateTimeFormatter;)Ljava/time/Year;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "text":Ljava/lang/CharSequence;
    return-object v0
.end method

.method public static parse(Ljava/lang/CharSequence;Ljava/time/format/DateTimeFormatter;)Ljava/time/Year;
    .locals 5

    .prologue
    .line 262
    move-object v0, p0

    .local v0, "text":Ljava/lang/CharSequence;
    move-object v1, p1

    .local v1, "formatter":Ljava/time/format/DateTimeFormatter;
    move-object v2, v1

    const-string v3, "formatter"

    invoke-static {v2, v3}, Ljava/time/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 263
    move-object v2, v1

    move-object v3, v0

    sget-object v4, Ljava/time/Year;->FROM:Ljava/time/temporal/TemporalQuery;

    invoke-virtual {v2, v3, v4}, Ljava/time/format/DateTimeFormatter;->parse(Ljava/lang/CharSequence;Ljava/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/time/Year;

    move-object v0, v2

    .end local v0    # "text":Ljava/lang/CharSequence;
    return-object v0
.end method

.method static readExternal(Ljava/io/DataInput;)Ljava/time/Year;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 980
    move-object v0, p0

    .local v0, "in":Ljava/io/DataInput;
    move-object v1, v0

    invoke-interface {v1}, Ljava/io/DataInput;->readInt()I

    move-result v1

    invoke-static {v1}, Ljava/time/Year;->of(I)Ljava/time/Year;

    move-result-object v1

    move-object v0, v1

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
    .line 972
    move-object v0, p0

    .local v0, "this":Ljava/time/Year;
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
    .line 963
    move-object v0, p0

    .local v0, "this":Ljava/time/Year;
    new-instance v1, Ljava/time/Ser;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const/16 v3, 0x43

    move-object v4, v0

    invoke-direct {v2, v3, v4}, Ljava/time/Ser;-><init>(BLjava/lang/Object;)V

    move-object v0, v1

    .end local v0    # "this":Ljava/time/Year;
    return-object v0
.end method


# virtual methods
.method public adjustInto(Ljava/time/temporal/Temporal;)Ljava/time/temporal/Temporal;
    .locals 7

    .prologue
    .line 736
    move-object v0, p0

    .local v0, "this":Ljava/time/Year;
    move-object v1, p1

    .local v1, "temporal":Ljava/time/temporal/Temporal;
    move-object v2, v1

    invoke-static {v2}, Ljava/time/chrono/AbstractChronology;->from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/chrono/AbstractChronology;

    move-result-object v2

    sget-object v3, Ljava/time/chrono/IsoChronology;->INSTANCE:Ljava/time/chrono/IsoChronology;

    invoke-virtual {v2, v3}, Ljava/time/chrono/AbstractChronology;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 737
    new-instance v2, Ljava/time/DateTimeException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const-string v4, "Adjustment only supported on ISO date-time"

    invoke-direct {v3, v4}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 739
    :cond_0
    move-object v2, v1

    sget-object v3, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    move-object v4, v0

    iget v4, v4, Ljava/time/Year;->year:I

    int-to-long v4, v4

    invoke-interface {v2, v3, v4, v5}, Ljava/time/temporal/Temporal;->with(Ljava/time/temporal/TemporalField;J)Ljava/time/temporal/Temporal;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljava/time/Year;
    return-object v0
.end method

.method public atDay(I)Ljava/time/LocalDate;
    .locals 4

    .prologue
    .line 816
    move-object v0, p0

    .local v0, "this":Ljava/time/Year;
    move v1, p1

    .local v1, "dayOfYear":I
    move-object v2, v0

    iget v2, v2, Ljava/time/Year;->year:I

    move v3, v1

    invoke-static {v2, v3}, Ljava/time/LocalDate;->ofYearDay(II)Ljava/time/LocalDate;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljava/time/Year;
    return-object v0
.end method

.method public atMonth(I)Ljava/time/YearMonth;
    .locals 4

    .prologue
    .line 853
    move-object v0, p0

    .local v0, "this":Ljava/time/Year;
    move v1, p1

    .local v1, "month":I
    move-object v2, v0

    iget v2, v2, Ljava/time/Year;->year:I

    move v3, v1

    invoke-static {v2, v3}, Ljava/time/YearMonth;->of(II)Ljava/time/YearMonth;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljava/time/Year;
    return-object v0
.end method

.method public atMonth(Ljava/time/Month;)Ljava/time/YearMonth;
    .locals 4

    .prologue
    .line 834
    move-object v0, p0

    .local v0, "this":Ljava/time/Year;
    move-object v1, p1

    .local v1, "month":Ljava/time/Month;
    move-object v2, v0

    iget v2, v2, Ljava/time/Year;->year:I

    move-object v3, v1

    invoke-static {v2, v3}, Ljava/time/YearMonth;->of(ILjava/time/Month;)Ljava/time/YearMonth;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljava/time/Year;
    return-object v0
.end method

.method public atMonthDay(Ljava/time/MonthDay;)Ljava/time/LocalDate;
    .locals 4

    .prologue
    .line 868
    move-object v0, p0

    .local v0, "this":Ljava/time/Year;
    move-object v1, p1

    .local v1, "monthDay":Ljava/time/MonthDay;
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Ljava/time/Year;->year:I

    invoke-virtual {v2, v3}, Ljava/time/MonthDay;->atYear(I)Ljava/time/LocalDate;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljava/time/Year;
    return-object v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 4

    .prologue
    .line 98
    move-object v0, p0

    .local v0, "this":Ljava/time/Year;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    check-cast v3, Ljava/time/Year;

    invoke-virtual {v2, v3}, Ljava/time/Year;->compareTo(Ljava/time/Year;)I

    move-result v2

    move v0, v2

    .end local v0    # "this":Ljava/time/Year;
    return v0
.end method

.method public compareTo(Ljava/time/Year;)I
    .locals 4

    .prologue
    .line 882
    move-object v0, p0

    .local v0, "this":Ljava/time/Year;
    move-object v1, p1

    .local v1, "other":Ljava/time/Year;
    move-object v2, v0

    iget v2, v2, Ljava/time/Year;->year:I

    move-object v3, v1

    iget v3, v3, Ljava/time/Year;->year:I

    sub-int/2addr v2, v3

    move v0, v2

    .end local v0    # "this":Ljava/time/Year;
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    .line 916
    move-object v0, p0

    .local v0, "this":Ljava/time/Year;
    move-object v1, p1

    .local v1, "obj":Ljava/lang/Object;
    move-object v2, v0

    move-object v3, v1

    if-ne v2, v3, :cond_0

    .line 917
    const/4 v2, 0x1

    move v0, v2

    .line 922
    .end local v0    # "this":Ljava/time/Year;
    :goto_0
    return v0

    .line 919
    .restart local v0    # "this":Ljava/time/Year;
    :cond_0
    move-object v2, v1

    instance-of v2, v2, Ljava/time/Year;

    if-eqz v2, :cond_2

    .line 920
    move-object v2, v0

    iget v2, v2, Ljava/time/Year;->year:I

    move-object v3, v1

    check-cast v3, Ljava/time/Year;

    iget v3, v3, Ljava/time/Year;->year:I

    if-ne v2, v3, :cond_1

    const/4 v2, 0x1

    :goto_1
    move v0, v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    .line 922
    :cond_2
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method

.method public format(Ljava/time/format/DateTimeFormatter;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 957
    move-object v0, p0

    .local v0, "this":Ljava/time/Year;
    move-object v1, p1

    .local v1, "formatter":Ljava/time/format/DateTimeFormatter;
    move-object v2, v1

    const-string v3, "formatter"

    invoke-static {v2, v3}, Ljava/time/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 958
    move-object v2, v1

    move-object v3, v0

    invoke-virtual {v2, v3}, Ljava/time/format/DateTimeFormatter;->format(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljava/time/Year;
    return-object v0
.end method

.method public get(Ljava/time/temporal/TemporalField;)I
    .locals 7

    .prologue
    .line 410
    move-object v1, p0

    .local v1, "this":Ljava/time/Year;
    move-object v2, p1

    .local v2, "field":Ljava/time/temporal/TemporalField;
    move-object v3, v1

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljava/time/Year;->range(Ljava/time/temporal/TemporalField;)Ljava/time/temporal/ValueRange;

    move-result-object v3

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v4, v5}, Ljava/time/Year;->getLong(Ljava/time/temporal/TemporalField;)J

    move-result-wide v4

    move-object v6, v2

    invoke-virtual {v3, v4, v5, v6}, Ljava/time/temporal/ValueRange;->checkValidIntValue(JLjava/time/temporal/TemporalField;)I

    move-result v3

    move v1, v3

    .end local v1    # "this":Ljava/time/Year;
    return v1
.end method

.method public getLong(Ljava/time/temporal/TemporalField;)J
    .locals 7

    .prologue
    .line 437
    move-object v0, p0

    .local v0, "this":Ljava/time/Year;
    move-object v1, p1

    .local v1, "field":Ljava/time/temporal/TemporalField;
    move-object v2, v1

    instance-of v2, v2, Ljava/time/temporal/ChronoField;

    if-eqz v2, :cond_2

    .line 438
    sget-object v2, Ljava/time/Year$2;->$SwitchMap$java$time$temporal$ChronoField:[I

    move-object v3, v1

    check-cast v3, Ljava/time/temporal/ChronoField;

    invoke-virtual {v3}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 443
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

    .line 439
    :pswitch_0
    move-object v2, v0

    iget v2, v2, Ljava/time/Year;->year:I

    const/4 v3, 0x1

    if-ge v2, v3, :cond_0

    const/4 v2, 0x1

    move-object v3, v0

    iget v3, v3, Ljava/time/Year;->year:I

    rsub-int/lit8 v2, v3, 0x1

    :goto_0
    int-to-long v2, v2

    move-wide v0, v2

    .line 445
    .end local v0    # "this":Ljava/time/Year;
    :goto_1
    return-wide v0

    .line 439
    .restart local v0    # "this":Ljava/time/Year;
    :cond_0
    move-object v2, v0

    iget v2, v2, Ljava/time/Year;->year:I

    goto :goto_0

    .line 440
    :pswitch_1
    move-object v2, v0

    iget v2, v2, Ljava/time/Year;->year:I

    int-to-long v2, v2

    move-wide v0, v2

    goto :goto_1

    .line 441
    :pswitch_2
    move-object v2, v0

    iget v2, v2, Ljava/time/Year;->year:I

    const/4 v3, 0x1

    if-ge v2, v3, :cond_1

    const/4 v2, 0x0

    :goto_2
    int-to-long v2, v2

    move-wide v0, v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x1

    goto :goto_2

    .line 445
    :cond_2
    move-object v2, v1

    move-object v3, v0

    invoke-interface {v2, v3}, Ljava/time/temporal/TemporalField;->getFrom(Ljava/time/temporal/TemporalAccessor;)J

    move-result-wide v2

    move-wide v0, v2

    goto :goto_1

    .line 438
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getValue()I
    .locals 2

    .prologue
    .line 309
    move-object v0, p0

    .local v0, "this":Ljava/time/Year;
    move-object v1, v0

    iget v1, v1, Ljava/time/Year;->year:I

    move v0, v1

    .end local v0    # "this":Ljava/time/Year;
    return v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 932
    move-object v0, p0

    .local v0, "this":Ljava/time/Year;
    move-object v1, v0

    iget v1, v1, Ljava/time/Year;->year:I

    move v0, v1

    .end local v0    # "this":Ljava/time/Year;
    return v0
.end method

.method public isAfter(Ljava/time/Year;)Z
    .locals 4

    .prologue
    .line 892
    move-object v0, p0

    .local v0, "this":Ljava/time/Year;
    move-object v1, p1

    .local v1, "other":Ljava/time/Year;
    move-object v2, v0

    iget v2, v2, Ljava/time/Year;->year:I

    move-object v3, v1

    iget v3, v3, Ljava/time/Year;->year:I

    if-le v2, v3, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .end local v0    # "this":Ljava/time/Year;
    return v0

    .restart local v0    # "this":Ljava/time/Year;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isBefore(Ljava/time/Year;)Z
    .locals 4

    .prologue
    .line 902
    move-object v0, p0

    .local v0, "this":Ljava/time/Year;
    move-object v1, p1

    .local v1, "other":Ljava/time/Year;
    move-object v2, v0

    iget v2, v2, Ljava/time/Year;->year:I

    move-object v3, v1

    iget v3, v3, Ljava/time/Year;->year:I

    if-ge v2, v3, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .end local v0    # "this":Ljava/time/Year;
    return v0

    .restart local v0    # "this":Ljava/time/Year;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isLeap()Z
    .locals 4

    .prologue
    .line 468
    move-object v1, p0

    .local v1, "this":Ljava/time/Year;
    move-object v2, v1

    iget v2, v2, Ljava/time/Year;->year:I

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/time/Year;->isLeap(J)Z

    move-result v2

    move v1, v2

    .end local v1    # "this":Ljava/time/Year;
    return v1
.end method

.method public isSupported(Ljava/time/temporal/TemporalField;)Z
    .locals 4

    .prologue
    .line 341
    move-object v0, p0

    .local v0, "this":Ljava/time/Year;
    move-object v1, p1

    .local v1, "field":Ljava/time/temporal/TemporalField;
    move-object v2, v1

    instance-of v2, v2, Ljava/time/temporal/ChronoField;

    if-eqz v2, :cond_2

    .line 342
    move-object v2, v1

    sget-object v3, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

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

    .line 344
    .end local v0    # "this":Ljava/time/Year;
    :goto_1
    return v0

    .line 342
    .restart local v0    # "this":Ljava/time/Year;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 344
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
    .line 349
    move-object v0, p0

    .local v0, "this":Ljava/time/Year;
    move-object v1, p1

    .local v1, "unit":Ljava/time/temporal/TemporalUnit;
    move-object v2, v1

    instance-of v2, v2, Ljava/time/temporal/ChronoUnit;

    if-eqz v2, :cond_2

    .line 350
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

    .line 352
    .end local v0    # "this":Ljava/time/Year;
    :goto_1
    return v0

    .line 350
    .restart local v0    # "this":Ljava/time/Year;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 352
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

.method public isValidMonthDay(Ljava/time/MonthDay;)Z
    .locals 4

    .prologue
    .line 481
    move-object v0, p0

    .local v0, "this":Ljava/time/Year;
    move-object v1, p1

    .local v1, "monthDay":Ljava/time/MonthDay;
    move-object v2, v1

    if-eqz v2, :cond_0

    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Ljava/time/Year;->year:I

    invoke-virtual {v2, v3}, Ljava/time/MonthDay;->isValidYear(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .end local v0    # "this":Ljava/time/Year;
    return v0

    .restart local v0    # "this":Ljava/time/Year;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public length()I
    .locals 2

    .prologue
    .line 490
    move-object v0, p0

    .local v0, "this":Ljava/time/Year;
    move-object v1, v0

    invoke-virtual {v1}, Ljava/time/Year;->isLeap()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x16e

    :goto_0
    move v0, v1

    .end local v0    # "this":Ljava/time/Year;
    return v0

    .restart local v0    # "this":Ljava/time/Year;
    :cond_0
    const/16 v1, 0x16d

    goto :goto_0
.end method

.method public minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/Year;
    .locals 9

    .prologue
    .line 659
    move-object v1, p0

    .local v1, "this":Ljava/time/Year;
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

    invoke-virtual {v5, v6, v7, v8}, Ljava/time/Year;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/Year;

    move-result-object v5

    const-wide/16 v6, 0x1

    move-object v8, v4

    invoke-virtual {v5, v6, v7, v8}, Ljava/time/Year;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/Year;

    move-result-object v5

    :goto_0
    move-object v1, v5

    .end local v1    # "this":Ljava/time/Year;
    return-object v1

    .restart local v1    # "this":Ljava/time/Year;
    :cond_0
    move-object v5, v1

    move-wide v6, v2

    neg-long v6, v6

    move-object v8, v4

    invoke-virtual {v5, v6, v7, v8}, Ljava/time/Year;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/Year;

    move-result-object v5

    goto :goto_0
.end method

.method public minus(Ljava/time/temporal/TemporalAmount;)Ljava/time/Year;
    .locals 4

    .prologue
    .line 649
    move-object v0, p0

    .local v0, "this":Ljava/time/Year;
    move-object v1, p1

    .local v1, "amount":Ljava/time/temporal/TemporalAmount;
    move-object v2, v1

    move-object v3, v0

    invoke-interface {v2, v3}, Ljava/time/temporal/TemporalAmount;->subtractFrom(Ljava/time/temporal/Temporal;)Ljava/time/temporal/Temporal;

    move-result-object v2

    check-cast v2, Ljava/time/Year;

    move-object v0, v2

    .end local v0    # "this":Ljava/time/Year;
    return-object v0
.end method

.method public bridge synthetic minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/temporal/Temporal;
    .locals 9

    .prologue
    .line 98
    move-object v1, p0

    .local v1, "this":Ljava/time/Year;
    move-wide v2, p1

    move-object v4, p3

    move-object v5, v1

    move-wide v6, v2

    move-object v8, v4

    invoke-virtual {v5, v6, v7, v8}, Ljava/time/Year;->minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/Year;

    move-result-object v5

    move-object v1, v5

    .end local v1    # "this":Ljava/time/Year;
    return-object v1
.end method

.method public bridge synthetic minus(Ljava/time/temporal/TemporalAmount;)Ljava/time/temporal/Temporal;
    .locals 4

    .prologue
    .line 98
    move-object v0, p0

    .local v0, "this":Ljava/time/Year;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/time/Year;->minus(Ljava/time/temporal/TemporalAmount;)Ljava/time/Year;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljava/time/Year;
    return-object v0
.end method

.method public minusYears(J)Ljava/time/Year;
    .locals 7

    .prologue
    .line 672
    move-object v0, p0

    .local v0, "this":Ljava/time/Year;
    move-wide v1, p1

    .local v1, "yearsToSubtract":J
    move-wide v3, v1

    const-wide/high16 v5, -0x8000000000000000L

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    move-object v3, v0

    const-wide v4, 0x7fffffffffffffffL

    invoke-virtual {v3, v4, v5}, Ljava/time/Year;->plusYears(J)Ljava/time/Year;

    move-result-object v3

    const-wide/16 v4, 0x1

    invoke-virtual {v3, v4, v5}, Ljava/time/Year;->plusYears(J)Ljava/time/Year;

    move-result-object v3

    :goto_0
    move-object v0, v3

    .end local v0    # "this":Ljava/time/Year;
    return-object v0

    .restart local v0    # "this":Ljava/time/Year;
    :cond_0
    move-object v3, v0

    move-wide v4, v1

    neg-long v4, v4

    invoke-virtual {v3, v4, v5}, Ljava/time/Year;->plusYears(J)Ljava/time/Year;

    move-result-object v3

    goto :goto_0
.end method

.method public plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/Year;
    .locals 13

    .prologue
    .line 601
    move-object v1, p0

    .local v1, "this":Ljava/time/Year;
    move-wide v2, p1

    .local v2, "amountToAdd":J
    move-object/from16 v4, p3

    .local v4, "unit":Ljava/time/temporal/TemporalUnit;
    move-object v5, v4

    instance-of v5, v5, Ljava/time/temporal/ChronoUnit;

    if-eqz v5, :cond_0

    .line 602
    sget-object v5, Ljava/time/Year$2;->$SwitchMap$java$time$temporal$ChronoUnit:[I

    move-object v6, v4

    check-cast v6, Ljava/time/temporal/ChronoUnit;

    invoke-virtual {v6}, Ljava/time/temporal/ChronoUnit;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 609
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

    .line 603
    :pswitch_0
    move-object v5, v1

    move-wide v6, v2

    invoke-virtual {v5, v6, v7}, Ljava/time/Year;->plusYears(J)Ljava/time/Year;

    move-result-object v5

    move-object v1, v5

    .line 611
    .end local v1    # "this":Ljava/time/Year;
    :goto_0
    return-object v1

    .line 604
    .restart local v1    # "this":Ljava/time/Year;
    :pswitch_1
    move-object v5, v1

    move-wide v6, v2

    const/16 v8, 0xa

    invoke-static {v6, v7, v8}, Ljava/time/jdk8/Jdk8Methods;->safeMultiply(JI)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/time/Year;->plusYears(J)Ljava/time/Year;

    move-result-object v5

    move-object v1, v5

    goto :goto_0

    .line 605
    :pswitch_2
    move-object v5, v1

    move-wide v6, v2

    const/16 v8, 0x64

    invoke-static {v6, v7, v8}, Ljava/time/jdk8/Jdk8Methods;->safeMultiply(JI)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/time/Year;->plusYears(J)Ljava/time/Year;

    move-result-object v5

    move-object v1, v5

    goto :goto_0

    .line 606
    :pswitch_3
    move-object v5, v1

    move-wide v6, v2

    const/16 v8, 0x3e8

    invoke-static {v6, v7, v8}, Ljava/time/jdk8/Jdk8Methods;->safeMultiply(JI)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/time/Year;->plusYears(J)Ljava/time/Year;

    move-result-object v5

    move-object v1, v5

    goto :goto_0

    .line 607
    :pswitch_4
    move-object v5, v1

    sget-object v6, Ljava/time/temporal/ChronoField;->ERA:Ljava/time/temporal/ChronoField;

    move-object v7, v1

    sget-object v8, Ljava/time/temporal/ChronoField;->ERA:Ljava/time/temporal/ChronoField;

    invoke-virtual {v7, v8}, Ljava/time/Year;->getLong(Ljava/time/temporal/TemporalField;)J

    move-result-wide v7

    move-wide v9, v2

    invoke-static {v7, v8, v9, v10}, Ljava/time/jdk8/Jdk8Methods;->safeAdd(JJ)J

    move-result-wide v7

    invoke-virtual {v5, v6, v7, v8}, Ljava/time/Year;->with(Ljava/time/temporal/TemporalField;J)Ljava/time/Year;

    move-result-object v5

    move-object v1, v5

    goto :goto_0

    .line 611
    :cond_0
    move-object v5, v4

    move-object v6, v1

    move-wide v7, v2

    invoke-interface {v5, v6, v7, v8}, Ljava/time/temporal/TemporalUnit;->addTo(Ljava/time/temporal/Temporal;J)Ljava/time/temporal/Temporal;

    move-result-object v5

    check-cast v5, Ljava/time/Year;

    move-object v1, v5

    goto :goto_0

    .line 602
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

.method public plus(Ljava/time/temporal/TemporalAmount;)Ljava/time/Year;
    .locals 4

    .prologue
    .line 591
    move-object v0, p0

    .local v0, "this":Ljava/time/Year;
    move-object v1, p1

    .local v1, "amount":Ljava/time/temporal/TemporalAmount;
    move-object v2, v1

    move-object v3, v0

    invoke-interface {v2, v3}, Ljava/time/temporal/TemporalAmount;->addTo(Ljava/time/temporal/Temporal;)Ljava/time/temporal/Temporal;

    move-result-object v2

    check-cast v2, Ljava/time/Year;

    move-object v0, v2

    .end local v0    # "this":Ljava/time/Year;
    return-object v0
.end method

.method public bridge synthetic plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/temporal/Temporal;
    .locals 9

    .prologue
    .line 98
    move-object v1, p0

    .local v1, "this":Ljava/time/Year;
    move-wide v2, p1

    move-object v4, p3

    move-object v5, v1

    move-wide v6, v2

    move-object v8, v4

    invoke-virtual {v5, v6, v7, v8}, Ljava/time/Year;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/Year;

    move-result-object v5

    move-object v1, v5

    .end local v1    # "this":Ljava/time/Year;
    return-object v1
.end method

.method public bridge synthetic plus(Ljava/time/temporal/TemporalAmount;)Ljava/time/temporal/Temporal;
    .locals 4

    .prologue
    .line 98
    move-object v0, p0

    .local v0, "this":Ljava/time/Year;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/time/Year;->plus(Ljava/time/temporal/TemporalAmount;)Ljava/time/Year;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljava/time/Year;
    return-object v0
.end method

.method public plusYears(J)Ljava/time/Year;
    .locals 9

    .prologue
    .line 624
    move-object v1, p0

    .local v1, "this":Ljava/time/Year;
    move-wide v2, p1

    .local v2, "yearsToAdd":J
    move-wide v4, v2

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    .line 625
    move-object v4, v1

    move-object v1, v4

    .line 627
    .end local v1    # "this":Ljava/time/Year;
    :goto_0
    return-object v1

    .restart local v1    # "this":Ljava/time/Year;
    :cond_0
    sget-object v4, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    move-object v5, v1

    iget v5, v5, Ljava/time/Year;->year:I

    int-to-long v5, v5

    move-wide v7, v2

    add-long/2addr v5, v7

    invoke-virtual {v4, v5, v6}, Ljava/time/temporal/ChronoField;->checkValidIntValue(J)I

    move-result v4

    invoke-static {v4}, Ljava/time/Year;->of(I)Ljava/time/Year;

    move-result-object v4

    move-object v1, v4

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
    .line 697
    move-object v0, p0

    .local v0, "this":Ljava/time/Year;
    move-object v1, p1

    .local v1, "query":Ljava/time/temporal/TemporalQuery;, "Ljava/time/temporal/TemporalQuery<TR;>;"
    move-object v2, v1

    invoke-static {}, Ljava/time/temporal/TemporalQueries;->chronology()Ljava/time/temporal/TemporalQuery;

    move-result-object v3

    if-ne v2, v3, :cond_0

    .line 698
    sget-object v2, Ljava/time/chrono/IsoChronology;->INSTANCE:Ljava/time/chrono/IsoChronology;

    move-object v0, v2

    .line 705
    .end local v0    # "this":Ljava/time/Year;
    :goto_0
    return-object v0

    .line 699
    .restart local v0    # "this":Ljava/time/Year;
    :cond_0
    move-object v2, v1

    invoke-static {}, Ljava/time/temporal/TemporalQueries;->precision()Ljava/time/temporal/TemporalQuery;

    move-result-object v3

    if-ne v2, v3, :cond_1

    .line 700
    sget-object v2, Ljava/time/temporal/ChronoUnit;->YEARS:Ljava/time/temporal/ChronoUnit;

    move-object v0, v2

    goto :goto_0

    .line 701
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

    .line 702
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

    .line 703
    :cond_2
    const/4 v2, 0x0

    move-object v0, v2

    goto :goto_0

    .line 705
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
    .line 379
    move-object v0, p0

    .local v0, "this":Ljava/time/Year;
    move-object v1, p1

    .local v1, "field":Ljava/time/temporal/TemporalField;
    move-object v2, v1

    sget-object v3, Ljava/time/temporal/ChronoField;->YEAR_OF_ERA:Ljava/time/temporal/ChronoField;

    if-ne v2, v3, :cond_1

    .line 380
    move-object v2, v0

    iget v2, v2, Ljava/time/Year;->year:I

    if-gtz v2, :cond_0

    const-wide/16 v2, 0x1

    const-wide/32 v4, 0x3b9aca00

    invoke-static {v2, v3, v4, v5}, Ljava/time/temporal/ValueRange;->of(JJ)Ljava/time/temporal/ValueRange;

    move-result-object v2

    :goto_0
    move-object v0, v2

    .line 382
    .end local v0    # "this":Ljava/time/Year;
    :goto_1
    return-object v0

    .line 380
    .restart local v0    # "this":Ljava/time/Year;
    :cond_0
    const-wide/16 v2, 0x1

    const-wide/32 v4, 0x3b9ac9ff

    invoke-static {v2, v3, v4, v5}, Ljava/time/temporal/ValueRange;->of(JJ)Ljava/time/temporal/ValueRange;

    move-result-object v2

    goto :goto_0

    .line 382
    :cond_1
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Ljava/time/jdk8/DefaultInterfaceTemporalAccessor;->range(Ljava/time/temporal/TemporalField;)Ljava/time/temporal/ValueRange;

    move-result-object v2

    move-object v0, v2

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 943
    move-object v0, p0

    .local v0, "this":Ljava/time/Year;
    move-object v1, v0

    iget v1, v1, Ljava/time/Year;->year:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljava/time/Year;
    return-object v0
.end method

.method public until(Ljava/time/temporal/Temporal;Ljava/time/temporal/TemporalUnit;)J
    .locals 11

    .prologue
    .line 787
    move-object v0, p0

    .local v0, "this":Ljava/time/Year;
    move-object v1, p1

    .local v1, "endExclusive":Ljava/time/temporal/Temporal;
    move-object v2, p2

    .local v2, "unit":Ljava/time/temporal/TemporalUnit;
    move-object v6, v1

    invoke-static {v6}, Ljava/time/Year;->from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/Year;

    move-result-object v6

    move-object v3, v6

    .line 788
    .local v3, "end":Ljava/time/Year;
    move-object v6, v2

    instance-of v6, v6, Ljava/time/temporal/ChronoUnit;

    if-eqz v6, :cond_0

    .line 789
    move-object v6, v3

    iget v6, v6, Ljava/time/Year;->year:I

    int-to-long v6, v6

    move-object v8, v0

    iget v8, v8, Ljava/time/Year;->year:I

    int-to-long v8, v8

    sub-long/2addr v6, v8

    move-wide v4, v6

    .line 790
    .local v4, "yearsUntil":J
    sget-object v6, Ljava/time/Year$2;->$SwitchMap$java$time$temporal$ChronoUnit:[I

    move-object v7, v2

    check-cast v7, Ljava/time/temporal/ChronoUnit;

    invoke-virtual {v7}, Ljava/time/temporal/ChronoUnit;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 797
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

    .line 791
    :pswitch_0
    move-wide v6, v4

    move-wide v0, v6

    .line 799
    .end local v0    # "this":Ljava/time/Year;
    .end local v4    # "yearsUntil":J
    :goto_0
    return-wide v0

    .line 792
    .restart local v0    # "this":Ljava/time/Year;
    .restart local v4    # "yearsUntil":J
    :pswitch_1
    move-wide v6, v4

    const-wide/16 v8, 0xa

    div-long/2addr v6, v8

    move-wide v0, v6

    goto :goto_0

    .line 793
    :pswitch_2
    move-wide v6, v4

    const-wide/16 v8, 0x64

    div-long/2addr v6, v8

    move-wide v0, v6

    goto :goto_0

    .line 794
    :pswitch_3
    move-wide v6, v4

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    move-wide v0, v6

    goto :goto_0

    .line 795
    :pswitch_4
    move-object v6, v3

    sget-object v7, Ljava/time/temporal/ChronoField;->ERA:Ljava/time/temporal/ChronoField;

    invoke-virtual {v6, v7}, Ljava/time/Year;->getLong(Ljava/time/temporal/TemporalField;)J

    move-result-wide v6

    move-object v8, v0

    sget-object v9, Ljava/time/temporal/ChronoField;->ERA:Ljava/time/temporal/ChronoField;

    invoke-virtual {v8, v9}, Ljava/time/Year;->getLong(Ljava/time/temporal/TemporalField;)J

    move-result-wide v8

    sub-long/2addr v6, v8

    move-wide v0, v6

    goto :goto_0

    .line 799
    .end local v4    # "yearsUntil":J
    :cond_0
    move-object v6, v2

    move-object v7, v0

    move-object v8, v3

    invoke-interface {v6, v7, v8}, Ljava/time/temporal/TemporalUnit;->between(Ljava/time/temporal/Temporal;Ljava/time/temporal/Temporal;)J

    move-result-wide v6

    move-wide v0, v6

    goto :goto_0

    .line 790
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

.method public with(Ljava/time/temporal/TemporalAdjuster;)Ljava/time/Year;
    .locals 4

    .prologue
    .line 514
    move-object v0, p0

    .local v0, "this":Ljava/time/Year;
    move-object v1, p1

    .local v1, "adjuster":Ljava/time/temporal/TemporalAdjuster;
    move-object v2, v1

    move-object v3, v0

    invoke-interface {v2, v3}, Ljava/time/temporal/TemporalAdjuster;->adjustInto(Ljava/time/temporal/Temporal;)Ljava/time/temporal/Temporal;

    move-result-object v2

    check-cast v2, Ljava/time/Year;

    move-object v0, v2

    .end local v0    # "this":Ljava/time/Year;
    return-object v0
.end method

.method public with(Ljava/time/temporal/TemporalField;J)Ljava/time/Year;
    .locals 12

    .prologue
    .line 559
    move-object v1, p0

    .local v1, "this":Ljava/time/Year;
    move-object v2, p1

    .local v2, "field":Ljava/time/temporal/TemporalField;
    move-wide v3, p2

    .local v3, "newValue":J
    move-object v6, v2

    instance-of v6, v6, Ljava/time/temporal/ChronoField;

    if-eqz v6, :cond_2

    .line 560
    move-object v6, v2

    check-cast v6, Ljava/time/temporal/ChronoField;

    move-object v5, v6

    .line 561
    .local v5, "f":Ljava/time/temporal/ChronoField;
    move-object v6, v5

    move-wide v7, v3

    invoke-virtual {v6, v7, v8}, Ljava/time/temporal/ChronoField;->checkValidValue(J)J

    move-result-wide v6

    .line 562
    sget-object v6, Ljava/time/Year$2;->$SwitchMap$java$time$temporal$ChronoField:[I

    move-object v7, v5

    invoke-virtual {v7}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 567
    new-instance v6, Ljava/time/temporal/UnsupportedTemporalTypeException;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v10, v8

    move-object v8, v10

    move-object v9, v10

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unsupported field: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v2

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/time/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 563
    :pswitch_0
    move-object v6, v1

    iget v6, v6, Ljava/time/Year;->year:I

    const/4 v7, 0x1

    if-ge v6, v7, :cond_0

    const-wide/16 v6, 0x1

    move-wide v8, v3

    sub-long/2addr v6, v8

    :goto_0
    long-to-int v6, v6

    invoke-static {v6}, Ljava/time/Year;->of(I)Ljava/time/Year;

    move-result-object v6

    move-object v1, v6

    .line 569
    .end local v1    # "this":Ljava/time/Year;
    .end local v5    # "f":Ljava/time/temporal/ChronoField;
    :goto_1
    return-object v1

    .line 563
    .restart local v1    # "this":Ljava/time/Year;
    .restart local v5    # "f":Ljava/time/temporal/ChronoField;
    :cond_0
    move-wide v6, v3

    goto :goto_0

    .line 564
    :pswitch_1
    move-wide v6, v3

    long-to-int v6, v6

    invoke-static {v6}, Ljava/time/Year;->of(I)Ljava/time/Year;

    move-result-object v6

    move-object v1, v6

    goto :goto_1

    .line 565
    :pswitch_2
    move-object v6, v1

    sget-object v7, Ljava/time/temporal/ChronoField;->ERA:Ljava/time/temporal/ChronoField;

    invoke-virtual {v6, v7}, Ljava/time/Year;->getLong(Ljava/time/temporal/TemporalField;)J

    move-result-wide v6

    move-wide v8, v3

    cmp-long v6, v6, v8

    if-nez v6, :cond_1

    move-object v6, v1

    :goto_2
    move-object v1, v6

    goto :goto_1

    :cond_1
    const/4 v6, 0x1

    move-object v7, v1

    iget v7, v7, Ljava/time/Year;->year:I

    rsub-int/lit8 v6, v7, 0x1

    invoke-static {v6}, Ljava/time/Year;->of(I)Ljava/time/Year;

    move-result-object v6

    goto :goto_2

    .line 569
    .end local v5    # "f":Ljava/time/temporal/ChronoField;
    :cond_2
    move-object v6, v2

    move-object v7, v1

    move-wide v8, v3

    invoke-interface {v6, v7, v8, v9}, Ljava/time/temporal/TemporalField;->adjustInto(Ljava/time/temporal/Temporal;J)Ljava/time/temporal/Temporal;

    move-result-object v6

    check-cast v6, Ljava/time/Year;

    move-object v1, v6

    goto :goto_1

    .line 562
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public bridge synthetic with(Ljava/time/temporal/TemporalAdjuster;)Ljava/time/temporal/Temporal;
    .locals 4

    .prologue
    .line 98
    move-object v0, p0

    .local v0, "this":Ljava/time/Year;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/time/Year;->with(Ljava/time/temporal/TemporalAdjuster;)Ljava/time/Year;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljava/time/Year;
    return-object v0
.end method

.method public bridge synthetic with(Ljava/time/temporal/TemporalField;J)Ljava/time/temporal/Temporal;
    .locals 8

    .prologue
    .line 98
    move-object v0, p0

    .local v0, "this":Ljava/time/Year;
    move-object v1, p1

    move-wide v2, p2

    move-object v4, v0

    move-object v5, v1

    move-wide v6, v2

    invoke-virtual {v4, v5, v6, v7}, Ljava/time/Year;->with(Ljava/time/temporal/TemporalField;J)Ljava/time/Year;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Ljava/time/Year;
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
    .line 976
    move-object v0, p0

    .local v0, "this":Ljava/time/Year;
    move-object v1, p1

    .local v1, "out":Ljava/io/DataOutput;
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Ljava/time/Year;->year:I

    invoke-interface {v2, v3}, Ljava/io/DataOutput;->writeInt(I)V

    .line 977
    return-void
.end method
