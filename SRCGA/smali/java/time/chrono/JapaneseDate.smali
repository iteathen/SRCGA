.class public final Ljava/time/chrono/JapaneseDate;
.super Ljava/time/chrono/ChronoDateImpl;
.source "JapaneseDate.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/time/chrono/ChronoDateImpl",
        "<",
        "Ljava/time/chrono/JapaneseDate;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field static final MIN_DATE:Ljava/time/LocalDate;

.field private static final serialVersionUID:J = -0x43cbddbf9310f03L


# instance fields
.field private transient era:Ljava/time/chrono/JapaneseEra;

.field private final isoDate:Ljava/time/LocalDate;

.field private transient yearOfEra:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 95
    const/16 v0, 0x751

    const/4 v1, 0x1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Ljava/time/LocalDate;->of(III)Ljava/time/LocalDate;

    move-result-object v0

    sput-object v0, Ljava/time/chrono/JapaneseDate;->MIN_DATE:Ljava/time/LocalDate;

    return-void
.end method

.method constructor <init>(Ljava/time/LocalDate;)V
    .locals 7

    .prologue
    .line 282
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/JapaneseDate;
    move-object v1, p1

    .local v1, "isoDate":Ljava/time/LocalDate;
    move-object v3, v0

    invoke-direct {v3}, Ljava/time/chrono/ChronoDateImpl;-><init>()V

    .line 283
    move-object v3, v1

    sget-object v4, Ljava/time/chrono/JapaneseDate;->MIN_DATE:Ljava/time/LocalDate;

    invoke-virtual {v3, v4}, Ljava/time/LocalDate;->isBefore(Ljava/time/chrono/AbstractChronoLocalDate;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 284
    new-instance v3, Ljava/time/DateTimeException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string v5, "Minimum supported date is January 1st Meiji 6"

    invoke-direct {v4, v5}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 286
    :cond_0
    move-object v3, v0

    move-object v4, v1

    invoke-static {v4}, Ljava/time/chrono/JapaneseEra;->from(Ljava/time/LocalDate;)Ljava/time/chrono/JapaneseEra;

    move-result-object v4

    iput-object v4, v3, Ljava/time/chrono/JapaneseDate;->era:Ljava/time/chrono/JapaneseEra;

    .line 287
    move-object v3, v0

    iget-object v3, v3, Ljava/time/chrono/JapaneseDate;->era:Ljava/time/chrono/JapaneseEra;

    invoke-virtual {v3}, Ljava/time/chrono/JapaneseEra;->startDate()Ljava/time/LocalDate;

    move-result-object v3

    invoke-virtual {v3}, Ljava/time/LocalDate;->getYear()I

    move-result v3

    const/4 v4, 0x1

    add-int/lit8 v3, v3, -0x1

    move v2, v3

    .line 288
    .local v2, "yearOffset":I
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v4}, Ljava/time/LocalDate;->getYear()I

    move-result v4

    move v5, v2

    sub-int/2addr v4, v5

    iput v4, v3, Ljava/time/chrono/JapaneseDate;->yearOfEra:I

    .line 289
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Ljava/time/chrono/JapaneseDate;->isoDate:Ljava/time/LocalDate;

    .line 290
    return-void
.end method

.method constructor <init>(Ljava/time/chrono/JapaneseEra;ILjava/time/LocalDate;)V
    .locals 8

    .prologue
    .line 300
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/JapaneseDate;
    move-object v1, p1

    .local v1, "era":Ljava/time/chrono/JapaneseEra;
    move v2, p2

    .local v2, "year":I
    move-object v3, p3

    .local v3, "isoDate":Ljava/time/LocalDate;
    move-object v4, v0

    invoke-direct {v4}, Ljava/time/chrono/ChronoDateImpl;-><init>()V

    .line 301
    move-object v4, v3

    sget-object v5, Ljava/time/chrono/JapaneseDate;->MIN_DATE:Ljava/time/LocalDate;

    invoke-virtual {v4, v5}, Ljava/time/LocalDate;->isBefore(Ljava/time/chrono/AbstractChronoLocalDate;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 302
    new-instance v4, Ljava/time/DateTimeException;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    const-string v6, "Minimum supported date is January 1st Meiji 6"

    invoke-direct {v5, v6}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 304
    :cond_0
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Ljava/time/chrono/JapaneseDate;->era:Ljava/time/chrono/JapaneseEra;

    .line 305
    move-object v4, v0

    move v5, v2

    iput v5, v4, Ljava/time/chrono/JapaneseDate;->yearOfEra:I

    .line 306
    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Ljava/time/chrono/JapaneseDate;->isoDate:Ljava/time/LocalDate;

    .line 307
    return-void
.end method

.method private actualRange(I)Ljava/time/temporal/ValueRange;
    .locals 8

    .prologue
    .line 406
    move-object v1, p0

    .local v1, "this":Ljava/time/chrono/JapaneseDate;
    move v2, p1

    .local v2, "calendarField":I
    sget-object v4, Ljava/time/chrono/JapaneseChronology;->LOCALE:Ljava/util/Locale;

    invoke-static {v4}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v4

    move-object v3, v4

    .line 407
    .local v3, "jcal":Ljava/util/Calendar;
    move-object v4, v3

    const/4 v5, 0x0

    move-object v6, v1

    iget-object v6, v6, Ljava/time/chrono/JapaneseDate;->era:Ljava/time/chrono/JapaneseEra;

    invoke-virtual {v6}, Ljava/time/chrono/JapaneseEra;->getValue()I

    move-result v6

    const/4 v7, 0x2

    add-int/lit8 v6, v6, 0x2

    invoke-virtual {v4, v5, v6}, Ljava/util/Calendar;->set(II)V

    .line 408
    move-object v4, v3

    move-object v5, v1

    iget v5, v5, Ljava/time/chrono/JapaneseDate;->yearOfEra:I

    move-object v6, v1

    iget-object v6, v6, Ljava/time/chrono/JapaneseDate;->isoDate:Ljava/time/LocalDate;

    invoke-virtual {v6}, Ljava/time/LocalDate;->getMonthValue()I

    move-result v6

    const/4 v7, 0x1

    add-int/lit8 v6, v6, -0x1

    move-object v7, v1

    iget-object v7, v7, Ljava/time/chrono/JapaneseDate;->isoDate:Ljava/time/LocalDate;

    invoke-virtual {v7}, Ljava/time/LocalDate;->getDayOfMonth()I

    move-result v7

    invoke-virtual {v4, v5, v6, v7}, Ljava/util/Calendar;->set(III)V

    .line 409
    move-object v4, v3

    move v5, v2

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->getActualMinimum(I)I

    move-result v4

    int-to-long v4, v4

    move-object v6, v3

    move v7, v2

    .line 410
    invoke-virtual {v6, v7}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v6

    int-to-long v6, v6

    .line 409
    invoke-static {v4, v5, v6, v7}, Ljava/time/temporal/ValueRange;->of(JJ)Ljava/time/temporal/ValueRange;

    move-result-object v4

    move-object v1, v4

    .end local v1    # "this":Ljava/time/chrono/JapaneseDate;
    return-object v1
.end method

.method public static from(Ljava/time/temporal/TemporalAccessor;)Ljava/time/chrono/JapaneseDate;
    .locals 3

    .prologue
    .line 273
    move-object v0, p0

    .local v0, "temporal":Ljava/time/temporal/TemporalAccessor;
    sget-object v1, Ljava/time/chrono/JapaneseChronology;->INSTANCE:Ljava/time/chrono/JapaneseChronology;

    move-object v2, v0

    invoke-virtual {v1, v2}, Ljava/time/chrono/JapaneseChronology;->date(Ljava/time/temporal/TemporalAccessor;)Ljava/time/chrono/JapaneseDate;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "temporal":Ljava/time/temporal/TemporalAccessor;
    return-object v0
.end method

.method private getDayOfYear()J
    .locals 4

    .prologue
    .line 435
    move-object v1, p0

    .local v1, "this":Ljava/time/chrono/JapaneseDate;
    move-object v2, v1

    iget v2, v2, Ljava/time/chrono/JapaneseDate;->yearOfEra:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 436
    move-object v2, v1

    iget-object v2, v2, Ljava/time/chrono/JapaneseDate;->isoDate:Ljava/time/LocalDate;

    invoke-virtual {v2}, Ljava/time/LocalDate;->getDayOfYear()I

    move-result v2

    move-object v3, v1

    iget-object v3, v3, Ljava/time/chrono/JapaneseDate;->era:Ljava/time/chrono/JapaneseEra;

    invoke-virtual {v3}, Ljava/time/chrono/JapaneseEra;->startDate()Ljava/time/LocalDate;

    move-result-object v3

    invoke-virtual {v3}, Ljava/time/LocalDate;->getDayOfYear()I

    move-result v3

    sub-int/2addr v2, v3

    const/4 v3, 0x1

    add-int/lit8 v2, v2, 0x1

    int-to-long v2, v2

    move-wide v1, v2

    .line 438
    .end local v1    # "this":Ljava/time/chrono/JapaneseDate;
    :goto_0
    return-wide v1

    .restart local v1    # "this":Ljava/time/chrono/JapaneseDate;
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljava/time/chrono/JapaneseDate;->isoDate:Ljava/time/LocalDate;

    invoke-virtual {v2}, Ljava/time/LocalDate;->getDayOfYear()I

    move-result v2

    int-to-long v2, v2

    move-wide v1, v2

    goto :goto_0
.end method

.method public static now()Ljava/time/chrono/JapaneseDate;
    .locals 1

    .prologue
    .line 124
    invoke-static {}, Ljava/time/Clock;->systemDefaultZone()Ljava/time/Clock;

    move-result-object v0

    invoke-static {v0}, Ljava/time/chrono/JapaneseDate;->now(Ljava/time/Clock;)Ljava/time/chrono/JapaneseDate;

    move-result-object v0

    return-object v0
.end method

.method public static now(Ljava/time/Clock;)Ljava/time/chrono/JapaneseDate;
    .locals 5

    .prologue
    .line 155
    move-object v0, p0

    .local v0, "clock":Ljava/time/Clock;
    new-instance v1, Ljava/time/chrono/JapaneseDate;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-static {v3}, Ljava/time/LocalDate;->now(Ljava/time/Clock;)Ljava/time/LocalDate;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/time/chrono/JapaneseDate;-><init>(Ljava/time/LocalDate;)V

    move-object v0, v1

    .end local v0    # "clock":Ljava/time/Clock;
    return-object v0
.end method

.method public static now(Ljava/time/ZoneId;)Ljava/time/chrono/JapaneseDate;
    .locals 2

    .prologue
    .line 140
    move-object v0, p0

    .local v0, "zone":Ljava/time/ZoneId;
    move-object v1, v0

    invoke-static {v1}, Ljava/time/Clock;->system(Ljava/time/ZoneId;)Ljava/time/Clock;

    move-result-object v1

    invoke-static {v1}, Ljava/time/chrono/JapaneseDate;->now(Ljava/time/Clock;)Ljava/time/chrono/JapaneseDate;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "zone":Ljava/time/ZoneId;
    return-object v0
.end method

.method public static of(III)Ljava/time/chrono/JapaneseDate;
    .locals 9

    .prologue
    .line 252
    move v0, p0

    .local v0, "prolepticYear":I
    move v1, p1

    .local v1, "month":I
    move v2, p2

    .local v2, "dayOfMonth":I
    new-instance v3, Ljava/time/chrono/JapaneseDate;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move v5, v0

    move v6, v1

    move v7, v2

    invoke-static {v5, v6, v7}, Ljava/time/LocalDate;->of(III)Ljava/time/LocalDate;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/time/chrono/JapaneseDate;-><init>(Ljava/time/LocalDate;)V

    move-object v0, v3

    .end local v0    # "prolepticYear":I
    return-object v0
.end method

.method public static of(Ljava/time/chrono/JapaneseEra;III)Ljava/time/chrono/JapaneseDate;
    .locals 14

    .prologue
    .line 184
    move-object v0, p0

    .local v0, "era":Ljava/time/chrono/JapaneseEra;
    move v1, p1

    .local v1, "yearOfEra":I
    move/from16 v2, p2

    .local v2, "month":I
    move/from16 v3, p3

    .local v3, "dayOfMonth":I
    move-object v8, v0

    const-string v9, "era"

    invoke-static {v8, v9}, Ljava/time/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    .line 185
    move v8, v1

    const/4 v9, 0x1

    if-ge v8, v9, :cond_0

    .line 186
    new-instance v8, Ljava/time/DateTimeException;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    new-instance v10, Ljava/lang/StringBuilder;

    move-object v13, v10

    move-object v10, v13

    move-object v11, v13

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Invalid YearOfEra: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move v11, v1

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 188
    :cond_0
    move-object v8, v0

    invoke-virtual {v8}, Ljava/time/chrono/JapaneseEra;->startDate()Ljava/time/LocalDate;

    move-result-object v8

    move-object v4, v8

    .line 189
    .local v4, "eraStartDate":Ljava/time/LocalDate;
    move-object v8, v0

    invoke-virtual {v8}, Ljava/time/chrono/JapaneseEra;->endDate()Ljava/time/LocalDate;

    move-result-object v8

    move-object v5, v8

    .line 190
    .local v5, "eraEndDate":Ljava/time/LocalDate;
    move-object v8, v4

    invoke-virtual {v8}, Ljava/time/LocalDate;->getYear()I

    move-result v8

    const/4 v9, 0x1

    add-int/lit8 v8, v8, -0x1

    move v6, v8

    .line 191
    .local v6, "yearOffset":I
    move v8, v1

    move v9, v6

    add-int/2addr v8, v9

    move v9, v2

    move v10, v3

    invoke-static {v8, v9, v10}, Ljava/time/LocalDate;->of(III)Ljava/time/LocalDate;

    move-result-object v8

    move-object v7, v8

    .line 192
    .local v7, "date":Ljava/time/LocalDate;
    move-object v8, v7

    move-object v9, v4

    invoke-virtual {v8, v9}, Ljava/time/LocalDate;->isBefore(Ljava/time/chrono/AbstractChronoLocalDate;)Z

    move-result v8

    if-nez v8, :cond_1

    move-object v8, v7

    move-object v9, v5

    invoke-virtual {v8, v9}, Ljava/time/LocalDate;->isAfter(Ljava/time/chrono/AbstractChronoLocalDate;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 193
    :cond_1
    new-instance v8, Ljava/time/DateTimeException;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    new-instance v10, Ljava/lang/StringBuilder;

    move-object v13, v10

    move-object v10, v13

    move-object v11, v13

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Requested date is outside bounds of era "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object v11, v0

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 195
    :cond_2
    new-instance v8, Ljava/time/chrono/JapaneseDate;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    move-object v10, v0

    move v11, v1

    move-object v12, v7

    invoke-direct {v9, v10, v11, v12}, Ljava/time/chrono/JapaneseDate;-><init>(Ljava/time/chrono/JapaneseEra;ILjava/time/LocalDate;)V

    move-object v0, v8

    .end local v0    # "era":Ljava/time/chrono/JapaneseEra;
    return-object v0
.end method

.method static ofYearDay(Ljava/time/chrono/JapaneseEra;II)Ljava/time/chrono/JapaneseDate;
    .locals 13

    .prologue
    .line 214
    move-object v0, p0

    .local v0, "era":Ljava/time/chrono/JapaneseEra;
    move v1, p1

    .local v1, "yearOfEra":I
    move v2, p2

    .local v2, "dayOfYear":I
    move-object v7, v0

    const-string v8, "era"

    invoke-static {v7, v8}, Ljava/time/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    .line 215
    move v7, v1

    const/4 v8, 0x1

    if-ge v7, v8, :cond_0

    .line 216
    new-instance v7, Ljava/time/DateTimeException;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Invalid YearOfEra: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move v10, v1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 218
    :cond_0
    move-object v7, v0

    invoke-virtual {v7}, Ljava/time/chrono/JapaneseEra;->startDate()Ljava/time/LocalDate;

    move-result-object v7

    move-object v3, v7

    .line 219
    .local v3, "eraStartDate":Ljava/time/LocalDate;
    move-object v7, v0

    invoke-virtual {v7}, Ljava/time/chrono/JapaneseEra;->endDate()Ljava/time/LocalDate;

    move-result-object v7

    move-object v4, v7

    .line 220
    .local v4, "eraEndDate":Ljava/time/LocalDate;
    move v7, v1

    const/4 v8, 0x1

    if-ne v7, v8, :cond_1

    .line 221
    move v7, v2

    move-object v8, v3

    invoke-virtual {v8}, Ljava/time/LocalDate;->getDayOfYear()I

    move-result v8

    const/4 v9, 0x1

    add-int/lit8 v8, v8, -0x1

    add-int/2addr v7, v8

    move v2, v7

    .line 222
    move v7, v2

    move-object v8, v3

    invoke-virtual {v8}, Ljava/time/LocalDate;->lengthOfYear()I

    move-result v8

    if-le v7, v8, :cond_1

    .line 223
    new-instance v7, Ljava/time/DateTimeException;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "DayOfYear exceeds maximum allowed in the first year of era "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v0

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 226
    :cond_1
    move-object v7, v3

    invoke-virtual {v7}, Ljava/time/LocalDate;->getYear()I

    move-result v7

    const/4 v8, 0x1

    add-int/lit8 v7, v7, -0x1

    move v5, v7

    .line 227
    .local v5, "yearOffset":I
    move v7, v1

    move v8, v5

    add-int/2addr v7, v8

    move v8, v2

    invoke-static {v7, v8}, Ljava/time/LocalDate;->ofYearDay(II)Ljava/time/LocalDate;

    move-result-object v7

    move-object v6, v7

    .line 228
    .local v6, "isoDate":Ljava/time/LocalDate;
    move-object v7, v6

    move-object v8, v3

    invoke-virtual {v7, v8}, Ljava/time/LocalDate;->isBefore(Ljava/time/chrono/AbstractChronoLocalDate;)Z

    move-result v7

    if-nez v7, :cond_2

    move-object v7, v6

    move-object v8, v4

    invoke-virtual {v7, v8}, Ljava/time/LocalDate;->isAfter(Ljava/time/chrono/AbstractChronoLocalDate;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 229
    :cond_2
    new-instance v7, Ljava/time/DateTimeException;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Requested date is outside bounds of era "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v0

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 231
    :cond_3
    new-instance v7, Ljava/time/chrono/JapaneseDate;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    move-object v9, v0

    move v10, v1

    move-object v11, v6

    invoke-direct {v8, v9, v10, v11}, Ljava/time/chrono/JapaneseDate;-><init>(Ljava/time/chrono/JapaneseEra;ILjava/time/LocalDate;)V

    move-object v0, v7

    .end local v0    # "era":Ljava/time/chrono/JapaneseEra;
    return-object v0
.end method

.method static readExternal(Ljava/io/DataInput;)Ljava/time/chrono/AbstractChronoLocalDate;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 600
    move-object v0, p0

    .local v0, "in":Ljava/io/DataInput;
    move-object v4, v0

    invoke-interface {v4}, Ljava/io/DataInput;->readInt()I

    move-result v4

    move v1, v4

    .line 601
    .local v1, "year":I
    move-object v4, v0

    invoke-interface {v4}, Ljava/io/DataInput;->readByte()B

    move-result v4

    move v2, v4

    .line 602
    .local v2, "month":I
    move-object v4, v0

    invoke-interface {v4}, Ljava/io/DataInput;->readByte()B

    move-result v4

    move v3, v4

    .line 603
    .local v3, "dayOfMonth":I
    sget-object v4, Ljava/time/chrono/JapaneseChronology;->INSTANCE:Ljava/time/chrono/JapaneseChronology;

    move v5, v1

    move v6, v2

    move v7, v3

    invoke-virtual {v4, v5, v6, v7}, Ljava/time/chrono/JapaneseChronology;->date(III)Ljava/time/chrono/JapaneseDate;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "in":Ljava/io/DataInput;
    return-object v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 315
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/JapaneseDate;
    move-object v1, p1

    .local v1, "stream":Ljava/io/ObjectInputStream;
    move-object v3, v1

    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 316
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Ljava/time/chrono/JapaneseDate;->isoDate:Ljava/time/LocalDate;

    invoke-static {v4}, Ljava/time/chrono/JapaneseEra;->from(Ljava/time/LocalDate;)Ljava/time/chrono/JapaneseEra;

    move-result-object v4

    iput-object v4, v3, Ljava/time/chrono/JapaneseDate;->era:Ljava/time/chrono/JapaneseEra;

    .line 317
    move-object v3, v0

    iget-object v3, v3, Ljava/time/chrono/JapaneseDate;->era:Ljava/time/chrono/JapaneseEra;

    invoke-virtual {v3}, Ljava/time/chrono/JapaneseEra;->startDate()Ljava/time/LocalDate;

    move-result-object v3

    invoke-virtual {v3}, Ljava/time/LocalDate;->getYear()I

    move-result v3

    const/4 v4, 0x1

    add-int/lit8 v3, v3, -0x1

    move v2, v3

    .line 318
    .local v2, "yearOffset":I
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Ljava/time/chrono/JapaneseDate;->isoDate:Ljava/time/LocalDate;

    invoke-virtual {v4}, Ljava/time/LocalDate;->getYear()I

    move-result v4

    move v5, v2

    sub-int/2addr v4, v5

    iput v4, v3, Ljava/time/chrono/JapaneseDate;->yearOfEra:I

    .line 319
    return-void
.end method

.method private with(Ljava/time/LocalDate;)Ljava/time/chrono/JapaneseDate;
    .locals 6

    .prologue
    .line 549
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/JapaneseDate;
    move-object v1, p1

    .local v1, "newDate":Ljava/time/LocalDate;
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Ljava/time/chrono/JapaneseDate;->isoDate:Ljava/time/LocalDate;

    invoke-virtual {v2, v3}, Ljava/time/LocalDate;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v0

    :goto_0
    move-object v0, v2

    .end local v0    # "this":Ljava/time/chrono/JapaneseDate;
    return-object v0

    .restart local v0    # "this":Ljava/time/chrono/JapaneseDate;
    :cond_0
    new-instance v2, Ljava/time/chrono/JapaneseDate;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v1

    invoke-direct {v3, v4}, Ljava/time/chrono/JapaneseDate;-><init>(Ljava/time/LocalDate;)V

    goto :goto_0
.end method

.method private withYear(I)Ljava/time/chrono/JapaneseDate;
    .locals 5

    .prologue
    .line 529
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/JapaneseDate;
    move v1, p1

    .local v1, "year":I
    move-object v2, v0

    move-object v3, v0

    invoke-virtual {v3}, Ljava/time/chrono/JapaneseDate;->getEra()Ljava/time/chrono/JapaneseEra;

    move-result-object v3

    move v4, v1

    invoke-direct {v2, v3, v4}, Ljava/time/chrono/JapaneseDate;->withYear(Ljava/time/chrono/JapaneseEra;I)Ljava/time/chrono/JapaneseDate;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljava/time/chrono/JapaneseDate;
    return-object v0
.end method

.method private withYear(Ljava/time/chrono/JapaneseEra;I)Ljava/time/chrono/JapaneseDate;
    .locals 7

    .prologue
    .line 511
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/JapaneseDate;
    move-object v1, p1

    .local v1, "era":Ljava/time/chrono/JapaneseEra;
    move v2, p2

    .local v2, "yearOfEra":I
    sget-object v4, Ljava/time/chrono/JapaneseChronology;->INSTANCE:Ljava/time/chrono/JapaneseChronology;

    move-object v5, v1

    move v6, v2

    invoke-virtual {v4, v5, v6}, Ljava/time/chrono/JapaneseChronology;->prolepticYear(Ljava/time/chrono/Era;I)I

    move-result v4

    move v3, v4

    .line 512
    .local v3, "year":I
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Ljava/time/chrono/JapaneseDate;->isoDate:Ljava/time/LocalDate;

    move v6, v3

    invoke-virtual {v5, v6}, Ljava/time/LocalDate;->withYear(I)Ljava/time/LocalDate;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/time/chrono/JapaneseDate;->with(Ljava/time/LocalDate;)Ljava/time/chrono/JapaneseDate;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Ljava/time/chrono/JapaneseDate;
    return-object v0
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 6

    .prologue
    .line 589
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/JapaneseDate;
    new-instance v1, Ljava/time/chrono/Ser;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const/4 v3, 0x1

    move-object v4, v0

    invoke-direct {v2, v3, v4}, Ljava/time/chrono/Ser;-><init>(BLjava/lang/Object;)V

    move-object v0, v1

    .end local v0    # "this":Ljava/time/chrono/JapaneseDate;
    return-object v0
.end method


# virtual methods
.method public final atTime(Ljava/time/LocalTime;)Ljava/time/chrono/ChronoLocalDateTime;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/time/LocalTime;",
            ")",
            "Ljava/time/chrono/ChronoLocalDateTime",
            "<",
            "Ljava/time/chrono/JapaneseDate;",
            ">;"
        }
    .end annotation

    .prologue
    .line 555
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/JapaneseDate;
    move-object v1, p1

    .local v1, "localTime":Ljava/time/LocalTime;
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Ljava/time/chrono/ChronoDateImpl;->atTime(Ljava/time/LocalTime;)Ljava/time/chrono/ChronoLocalDateTime;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljava/time/chrono/JapaneseDate;
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    .line 572
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/JapaneseDate;
    move-object v1, p1

    .local v1, "obj":Ljava/lang/Object;
    move-object v3, v0

    move-object v4, v1

    if-ne v3, v4, :cond_0

    .line 573
    const/4 v3, 0x1

    move v0, v3

    .line 579
    .end local v0    # "this":Ljava/time/chrono/JapaneseDate;
    :goto_0
    return v0

    .line 575
    .restart local v0    # "this":Ljava/time/chrono/JapaneseDate;
    :cond_0
    move-object v3, v1

    instance-of v3, v3, Ljava/time/chrono/JapaneseDate;

    if-eqz v3, :cond_1

    .line 576
    move-object v3, v1

    check-cast v3, Ljava/time/chrono/JapaneseDate;

    move-object v2, v3

    .line 577
    .local v2, "otherDate":Ljava/time/chrono/JapaneseDate;
    move-object v3, v0

    iget-object v3, v3, Ljava/time/chrono/JapaneseDate;->isoDate:Ljava/time/LocalDate;

    move-object v4, v2

    iget-object v4, v4, Ljava/time/chrono/JapaneseDate;->isoDate:Ljava/time/LocalDate;

    invoke-virtual {v3, v4}, Ljava/time/LocalDate;->equals(Ljava/lang/Object;)Z

    move-result v3

    move v0, v3

    goto :goto_0

    .line 579
    .end local v2    # "otherDate":Ljava/time/chrono/JapaneseDate;
    :cond_1
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0
.end method

.method public bridge synthetic getChronology()Ljava/time/chrono/AbstractChronology;
    .locals 2

    .prologue
    .line 84
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/JapaneseDate;
    move-object v1, v0

    invoke-virtual {v1}, Ljava/time/chrono/JapaneseDate;->getChronology()Ljava/time/chrono/JapaneseChronology;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljava/time/chrono/JapaneseDate;
    return-object v0
.end method

.method public bridge synthetic getChronology()Ljava/time/chrono/Chronology;
    .locals 2

    .prologue
    .line 84
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/JapaneseDate;
    move-object v1, v0

    invoke-virtual {v1}, Ljava/time/chrono/JapaneseDate;->getChronology()Ljava/time/chrono/JapaneseChronology;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljava/time/chrono/JapaneseDate;
    return-object v0
.end method

.method public getChronology()Ljava/time/chrono/JapaneseChronology;
    .locals 2

    .prologue
    .line 324
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/JapaneseDate;
    sget-object v1, Ljava/time/chrono/JapaneseChronology;->INSTANCE:Ljava/time/chrono/JapaneseChronology;

    move-object v0, v1

    .end local v0    # "this":Ljava/time/chrono/JapaneseDate;
    return-object v0
.end method

.method public bridge synthetic getEra()Ljava/time/chrono/Era;
    .locals 2

    .prologue
    .line 84
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/JapaneseDate;
    move-object v1, v0

    invoke-virtual {v1}, Ljava/time/chrono/JapaneseDate;->getEra()Ljava/time/chrono/JapaneseEra;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljava/time/chrono/JapaneseDate;
    return-object v0
.end method

.method public getEra()Ljava/time/chrono/JapaneseEra;
    .locals 2

    .prologue
    .line 329
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/JapaneseDate;
    move-object v1, v0

    iget-object v1, v1, Ljava/time/chrono/JapaneseDate;->era:Ljava/time/chrono/JapaneseEra;

    move-object v0, v1

    .end local v0    # "this":Ljava/time/chrono/JapaneseDate;
    return-object v0
.end method

.method public getLong(Ljava/time/temporal/TemporalField;)J
    .locals 7

    .prologue
    .line 415
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/JapaneseDate;
    move-object v1, p1

    .local v1, "field":Ljava/time/temporal/TemporalField;
    move-object v2, v1

    instance-of v2, v2, Ljava/time/temporal/ChronoField;

    if-eqz v2, :cond_0

    .line 416
    sget-object v2, Ljava/time/chrono/JapaneseDate$1;->$SwitchMap$java$time$temporal$ChronoField:[I

    move-object v3, v1

    check-cast v3, Ljava/time/temporal/ChronoField;

    invoke-virtual {v3}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 429
    move-object v2, v0

    iget-object v2, v2, Ljava/time/chrono/JapaneseDate;->isoDate:Ljava/time/LocalDate;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/time/LocalDate;->getLong(Ljava/time/temporal/TemporalField;)J

    move-result-wide v2

    move-wide v0, v2

    .line 431
    .end local v0    # "this":Ljava/time/chrono/JapaneseDate;
    :goto_0
    return-wide v0

    .line 421
    .restart local v0    # "this":Ljava/time/chrono/JapaneseDate;
    :pswitch_0
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

    .line 423
    :pswitch_1
    move-object v2, v0

    iget v2, v2, Ljava/time/chrono/JapaneseDate;->yearOfEra:I

    int-to-long v2, v2

    move-wide v0, v2

    goto :goto_0

    .line 425
    :pswitch_2
    move-object v2, v0

    iget-object v2, v2, Ljava/time/chrono/JapaneseDate;->era:Ljava/time/chrono/JapaneseEra;

    invoke-virtual {v2}, Ljava/time/chrono/JapaneseEra;->getValue()I

    move-result v2

    int-to-long v2, v2

    move-wide v0, v2

    goto :goto_0

    .line 427
    :pswitch_3
    move-object v2, v0

    invoke-direct {v2}, Ljava/time/chrono/JapaneseDate;->getDayOfYear()J

    move-result-wide v2

    move-wide v0, v2

    goto :goto_0

    .line 431
    :cond_0
    move-object v2, v1

    move-object v3, v0

    invoke-interface {v2, v3}, Ljava/time/temporal/TemporalField;->getFrom(Ljava/time/temporal/TemporalAccessor;)J

    move-result-wide v2

    move-wide v0, v2

    goto :goto_0

    .line 416
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 584
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/JapaneseDate;
    move-object v1, v0

    invoke-virtual {v1}, Ljava/time/chrono/JapaneseDate;->getChronology()Ljava/time/chrono/JapaneseChronology;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/chrono/JapaneseChronology;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    move-object v2, v0

    iget-object v2, v2, Ljava/time/chrono/JapaneseDate;->isoDate:Ljava/time/LocalDate;

    invoke-virtual {v2}, Ljava/time/LocalDate;->hashCode()I

    move-result v2

    xor-int/2addr v1, v2

    move v0, v1

    .end local v0    # "this":Ljava/time/chrono/JapaneseDate;
    return v0
.end method

.method public isSupported(Ljava/time/temporal/TemporalField;)Z
    .locals 4

    .prologue
    .line 378
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/JapaneseDate;
    move-object v1, p1

    .local v1, "field":Ljava/time/temporal/TemporalField;
    move-object v2, v1

    sget-object v3, Ljava/time/temporal/ChronoField;->ALIGNED_DAY_OF_WEEK_IN_MONTH:Ljava/time/temporal/ChronoField;

    if-eq v2, v3, :cond_0

    move-object v2, v1

    sget-object v3, Ljava/time/temporal/ChronoField;->ALIGNED_DAY_OF_WEEK_IN_YEAR:Ljava/time/temporal/ChronoField;

    if-eq v2, v3, :cond_0

    move-object v2, v1

    sget-object v3, Ljava/time/temporal/ChronoField;->ALIGNED_WEEK_OF_MONTH:Ljava/time/temporal/ChronoField;

    if-eq v2, v3, :cond_0

    move-object v2, v1

    sget-object v3, Ljava/time/temporal/ChronoField;->ALIGNED_WEEK_OF_YEAR:Ljava/time/temporal/ChronoField;

    if-ne v2, v3, :cond_1

    .line 382
    :cond_0
    const/4 v2, 0x0

    move v0, v2

    .line 384
    .end local v0    # "this":Ljava/time/chrono/JapaneseDate;
    :goto_0
    return v0

    .restart local v0    # "this":Ljava/time/chrono/JapaneseDate;
    :cond_1
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Ljava/time/chrono/ChronoDateImpl;->isSupported(Ljava/time/temporal/TemporalField;)Z

    move-result v2

    move v0, v2

    goto :goto_0
.end method

.method public lengthOfMonth()I
    .locals 2

    .prologue
    .line 334
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/JapaneseDate;
    move-object v1, v0

    iget-object v1, v1, Ljava/time/chrono/JapaneseDate;->isoDate:Ljava/time/LocalDate;

    invoke-virtual {v1}, Ljava/time/LocalDate;->lengthOfMonth()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Ljava/time/chrono/JapaneseDate;
    return v0
.end method

.method public lengthOfYear()I
    .locals 6

    .prologue
    .line 339
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/JapaneseDate;
    sget-object v2, Ljava/time/chrono/JapaneseChronology;->LOCALE:Ljava/util/Locale;

    invoke-static {v2}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v2

    move-object v1, v2

    .line 340
    .local v1, "jcal":Ljava/util/Calendar;
    move-object v2, v1

    const/4 v3, 0x0

    move-object v4, v0

    iget-object v4, v4, Ljava/time/chrono/JapaneseDate;->era:Ljava/time/chrono/JapaneseEra;

    invoke-virtual {v4}, Ljava/time/chrono/JapaneseEra;->getValue()I

    move-result v4

    const/4 v5, 0x2

    add-int/lit8 v4, v4, 0x2

    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 341
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Ljava/time/chrono/JapaneseDate;->yearOfEra:I

    move-object v4, v0

    iget-object v4, v4, Ljava/time/chrono/JapaneseDate;->isoDate:Ljava/time/LocalDate;

    invoke-virtual {v4}, Ljava/time/LocalDate;->getMonthValue()I

    move-result v4

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    move-object v5, v0

    iget-object v5, v5, Ljava/time/chrono/JapaneseDate;->isoDate:Ljava/time/LocalDate;

    invoke-virtual {v5}, Ljava/time/LocalDate;->getDayOfMonth()I

    move-result v5

    invoke-virtual {v2, v3, v4, v5}, Ljava/util/Calendar;->set(III)V

    .line 342
    move-object v2, v1

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v2

    move v0, v2

    .end local v0    # "this":Ljava/time/chrono/JapaneseDate;
    return v0
.end method

.method public bridge synthetic minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/AbstractChronoLocalDate;
    .locals 9

    .prologue
    .line 84
    move-object v1, p0

    .local v1, "this":Ljava/time/chrono/JapaneseDate;
    move-wide v2, p1

    move-object v4, p3

    move-object v5, v1

    move-wide v6, v2

    move-object v8, v4

    invoke-virtual {v5, v6, v7, v8}, Ljava/time/chrono/JapaneseDate;->minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/JapaneseDate;

    move-result-object v5

    move-object v1, v5

    .end local v1    # "this":Ljava/time/chrono/JapaneseDate;
    return-object v1
.end method

.method public bridge synthetic minus(Ljava/time/temporal/TemporalAmount;)Ljava/time/chrono/AbstractChronoLocalDate;
    .locals 4

    .prologue
    .line 84
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/JapaneseDate;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/time/chrono/JapaneseDate;->minus(Ljava/time/temporal/TemporalAmount;)Ljava/time/chrono/JapaneseDate;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljava/time/chrono/JapaneseDate;
    return-object v0
.end method

.method public minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/JapaneseDate;
    .locals 9

    .prologue
    .line 492
    move-object v1, p0

    .local v1, "this":Ljava/time/chrono/JapaneseDate;
    move-wide v2, p1

    .local v2, "amountToAdd":J
    move-object v4, p3

    .local v4, "unit":Ljava/time/temporal/TemporalUnit;
    move-object v5, v1

    move-wide v6, v2

    move-object v8, v4

    invoke-super {v5, v6, v7, v8}, Ljava/time/chrono/ChronoDateImpl;->minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/AbstractChronoLocalDate;

    move-result-object v5

    check-cast v5, Ljava/time/chrono/JapaneseDate;

    move-object v1, v5

    .end local v1    # "this":Ljava/time/chrono/JapaneseDate;
    return-object v1
.end method

.method public minus(Ljava/time/temporal/TemporalAmount;)Ljava/time/chrono/JapaneseDate;
    .locals 4

    .prologue
    .line 487
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/JapaneseDate;
    move-object v1, p1

    .local v1, "amount":Ljava/time/temporal/TemporalAmount;
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Ljava/time/chrono/ChronoDateImpl;->minus(Ljava/time/temporal/TemporalAmount;)Ljava/time/chrono/AbstractChronoLocalDate;

    move-result-object v2

    check-cast v2, Ljava/time/chrono/JapaneseDate;

    move-object v0, v2

    .end local v0    # "this":Ljava/time/chrono/JapaneseDate;
    return-object v0
.end method

.method public bridge synthetic minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/temporal/Temporal;
    .locals 9

    .prologue
    .line 84
    move-object v1, p0

    .local v1, "this":Ljava/time/chrono/JapaneseDate;
    move-wide v2, p1

    move-object v4, p3

    move-object v5, v1

    move-wide v6, v2

    move-object v8, v4

    invoke-virtual {v5, v6, v7, v8}, Ljava/time/chrono/JapaneseDate;->minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/JapaneseDate;

    move-result-object v5

    move-object v1, v5

    .end local v1    # "this":Ljava/time/chrono/JapaneseDate;
    return-object v1
.end method

.method public bridge synthetic minus(Ljava/time/temporal/TemporalAmount;)Ljava/time/temporal/Temporal;
    .locals 4

    .prologue
    .line 84
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/JapaneseDate;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/time/chrono/JapaneseDate;->minus(Ljava/time/temporal/TemporalAmount;)Ljava/time/chrono/JapaneseDate;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljava/time/chrono/JapaneseDate;
    return-object v0
.end method

.method public bridge synthetic plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/AbstractChronoLocalDate;
    .locals 9

    .prologue
    .line 84
    move-object v1, p0

    .local v1, "this":Ljava/time/chrono/JapaneseDate;
    move-wide v2, p1

    move-object v4, p3

    move-object v5, v1

    move-wide v6, v2

    move-object v8, v4

    invoke-virtual {v5, v6, v7, v8}, Ljava/time/chrono/JapaneseDate;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/JapaneseDate;

    move-result-object v5

    move-object v1, v5

    .end local v1    # "this":Ljava/time/chrono/JapaneseDate;
    return-object v1
.end method

.method public bridge synthetic plus(Ljava/time/temporal/TemporalAmount;)Ljava/time/chrono/AbstractChronoLocalDate;
    .locals 4

    .prologue
    .line 84
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/JapaneseDate;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/time/chrono/JapaneseDate;->plus(Ljava/time/temporal/TemporalAmount;)Ljava/time/chrono/JapaneseDate;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljava/time/chrono/JapaneseDate;
    return-object v0
.end method

.method public bridge synthetic plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/ChronoDateImpl;
    .locals 9

    .prologue
    .line 84
    move-object v1, p0

    .local v1, "this":Ljava/time/chrono/JapaneseDate;
    move-wide v2, p1

    move-object v4, p3

    move-object v5, v1

    move-wide v6, v2

    move-object v8, v4

    invoke-virtual {v5, v6, v7, v8}, Ljava/time/chrono/JapaneseDate;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/JapaneseDate;

    move-result-object v5

    move-object v1, v5

    .end local v1    # "this":Ljava/time/chrono/JapaneseDate;
    return-object v1
.end method

.method public plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/JapaneseDate;
    .locals 9

    .prologue
    .line 482
    move-object v1, p0

    .local v1, "this":Ljava/time/chrono/JapaneseDate;
    move-wide v2, p1

    .local v2, "amountToAdd":J
    move-object v4, p3

    .local v4, "unit":Ljava/time/temporal/TemporalUnit;
    move-object v5, v1

    move-wide v6, v2

    move-object v8, v4

    invoke-super {v5, v6, v7, v8}, Ljava/time/chrono/ChronoDateImpl;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/ChronoDateImpl;

    move-result-object v5

    check-cast v5, Ljava/time/chrono/JapaneseDate;

    move-object v1, v5

    .end local v1    # "this":Ljava/time/chrono/JapaneseDate;
    return-object v1
.end method

.method public plus(Ljava/time/temporal/TemporalAmount;)Ljava/time/chrono/JapaneseDate;
    .locals 4

    .prologue
    .line 477
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/JapaneseDate;
    move-object v1, p1

    .local v1, "amount":Ljava/time/temporal/TemporalAmount;
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Ljava/time/chrono/ChronoDateImpl;->plus(Ljava/time/temporal/TemporalAmount;)Ljava/time/chrono/AbstractChronoLocalDate;

    move-result-object v2

    check-cast v2, Ljava/time/chrono/JapaneseDate;

    move-object v0, v2

    .end local v0    # "this":Ljava/time/chrono/JapaneseDate;
    return-object v0
.end method

.method public bridge synthetic plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/temporal/Temporal;
    .locals 9

    .prologue
    .line 84
    move-object v1, p0

    .local v1, "this":Ljava/time/chrono/JapaneseDate;
    move-wide v2, p1

    move-object v4, p3

    move-object v5, v1

    move-wide v6, v2

    move-object v8, v4

    invoke-virtual {v5, v6, v7, v8}, Ljava/time/chrono/JapaneseDate;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/chrono/JapaneseDate;

    move-result-object v5

    move-object v1, v5

    .end local v1    # "this":Ljava/time/chrono/JapaneseDate;
    return-object v1
.end method

.method public bridge synthetic plus(Ljava/time/temporal/TemporalAmount;)Ljava/time/temporal/Temporal;
    .locals 4

    .prologue
    .line 84
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/JapaneseDate;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/time/chrono/JapaneseDate;->plus(Ljava/time/temporal/TemporalAmount;)Ljava/time/chrono/JapaneseDate;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljava/time/chrono/JapaneseDate;
    return-object v0
.end method

.method bridge synthetic plusDays(J)Ljava/time/chrono/ChronoDateImpl;
    .locals 7

    .prologue
    .line 84
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/JapaneseDate;
    move-wide v1, p1

    move-object v3, v0

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljava/time/chrono/JapaneseDate;->plusDays(J)Ljava/time/chrono/JapaneseDate;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Ljava/time/chrono/JapaneseDate;
    return-object v0
.end method

.method plusDays(J)Ljava/time/chrono/JapaneseDate;
    .locals 9

    .prologue
    .line 545
    move-object v1, p0

    .local v1, "this":Ljava/time/chrono/JapaneseDate;
    move-wide v2, p1

    .local v2, "days":J
    move-object v4, v1

    move-object v5, v1

    iget-object v5, v5, Ljava/time/chrono/JapaneseDate;->isoDate:Ljava/time/LocalDate;

    move-wide v6, v2

    invoke-virtual {v5, v6, v7}, Ljava/time/LocalDate;->plusDays(J)Ljava/time/LocalDate;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/time/chrono/JapaneseDate;->with(Ljava/time/LocalDate;)Ljava/time/chrono/JapaneseDate;

    move-result-object v4

    move-object v1, v4

    .end local v1    # "this":Ljava/time/chrono/JapaneseDate;
    return-object v1
.end method

.method bridge synthetic plusMonths(J)Ljava/time/chrono/ChronoDateImpl;
    .locals 7

    .prologue
    .line 84
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/JapaneseDate;
    move-wide v1, p1

    move-object v3, v0

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljava/time/chrono/JapaneseDate;->plusMonths(J)Ljava/time/chrono/JapaneseDate;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Ljava/time/chrono/JapaneseDate;
    return-object v0
.end method

.method plusMonths(J)Ljava/time/chrono/JapaneseDate;
    .locals 9

    .prologue
    .line 540
    move-object v1, p0

    .local v1, "this":Ljava/time/chrono/JapaneseDate;
    move-wide v2, p1

    .local v2, "months":J
    move-object v4, v1

    move-object v5, v1

    iget-object v5, v5, Ljava/time/chrono/JapaneseDate;->isoDate:Ljava/time/LocalDate;

    move-wide v6, v2

    invoke-virtual {v5, v6, v7}, Ljava/time/LocalDate;->plusMonths(J)Ljava/time/LocalDate;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/time/chrono/JapaneseDate;->with(Ljava/time/LocalDate;)Ljava/time/chrono/JapaneseDate;

    move-result-object v4

    move-object v1, v4

    .end local v1    # "this":Ljava/time/chrono/JapaneseDate;
    return-object v1
.end method

.method bridge synthetic plusYears(J)Ljava/time/chrono/ChronoDateImpl;
    .locals 7

    .prologue
    .line 84
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/JapaneseDate;
    move-wide v1, p1

    move-object v3, v0

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljava/time/chrono/JapaneseDate;->plusYears(J)Ljava/time/chrono/JapaneseDate;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Ljava/time/chrono/JapaneseDate;
    return-object v0
.end method

.method plusYears(J)Ljava/time/chrono/JapaneseDate;
    .locals 9

    .prologue
    .line 535
    move-object v1, p0

    .local v1, "this":Ljava/time/chrono/JapaneseDate;
    move-wide v2, p1

    .local v2, "years":J
    move-object v4, v1

    move-object v5, v1

    iget-object v5, v5, Ljava/time/chrono/JapaneseDate;->isoDate:Ljava/time/LocalDate;

    move-wide v6, v2

    invoke-virtual {v5, v6, v7}, Ljava/time/LocalDate;->plusYears(J)Ljava/time/LocalDate;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/time/chrono/JapaneseDate;->with(Ljava/time/LocalDate;)Ljava/time/chrono/JapaneseDate;

    move-result-object v4

    move-object v1, v4

    .end local v1    # "this":Ljava/time/chrono/JapaneseDate;
    return-object v1
.end method

.method public range(Ljava/time/temporal/TemporalField;)Ljava/time/temporal/ValueRange;
    .locals 8

    .prologue
    .line 389
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/JapaneseDate;
    move-object v1, p1

    .local v1, "field":Ljava/time/temporal/TemporalField;
    move-object v3, v1

    instance-of v3, v3, Ljava/time/temporal/ChronoField;

    if-eqz v3, :cond_1

    .line 390
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/time/chrono/JapaneseDate;->isSupported(Ljava/time/temporal/TemporalField;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 391
    move-object v3, v1

    check-cast v3, Ljava/time/temporal/ChronoField;

    move-object v2, v3

    .line 392
    .local v2, "f":Ljava/time/temporal/ChronoField;
    sget-object v3, Ljava/time/chrono/JapaneseDate$1;->$SwitchMap$java$time$temporal$ChronoField:[I

    move-object v4, v2

    invoke-virtual {v4}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 398
    move-object v3, v0

    invoke-virtual {v3}, Ljava/time/chrono/JapaneseDate;->getChronology()Ljava/time/chrono/JapaneseChronology;

    move-result-object v3

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljava/time/chrono/JapaneseChronology;->range(Ljava/time/temporal/ChronoField;)Ljava/time/temporal/ValueRange;

    move-result-object v3

    move-object v0, v3

    .line 402
    .end local v0    # "this":Ljava/time/chrono/JapaneseDate;
    .end local v2    # "f":Ljava/time/temporal/ChronoField;
    :goto_0
    return-object v0

    .line 394
    .restart local v0    # "this":Ljava/time/chrono/JapaneseDate;
    .restart local v2    # "f":Ljava/time/temporal/ChronoField;
    :pswitch_0
    move-object v3, v0

    const/4 v4, 0x6

    invoke-direct {v3, v4}, Ljava/time/chrono/JapaneseDate;->actualRange(I)Ljava/time/temporal/ValueRange;

    move-result-object v3

    move-object v0, v3

    goto :goto_0

    .line 396
    :pswitch_1
    move-object v3, v0

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Ljava/time/chrono/JapaneseDate;->actualRange(I)Ljava/time/temporal/ValueRange;

    move-result-object v3

    move-object v0, v3

    goto :goto_0

    .line 400
    .end local v2    # "f":Ljava/time/temporal/ChronoField;
    :cond_0
    new-instance v3, Ljava/time/temporal/UnsupportedTemporalTypeException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unsupported field: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/time/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 402
    :cond_1
    move-object v3, v1

    move-object v4, v0

    invoke-interface {v3, v4}, Ljava/time/temporal/TemporalField;->rangeRefinedBy(Ljava/time/temporal/TemporalAccessor;)Ljava/time/temporal/ValueRange;

    move-result-object v3

    move-object v0, v3

    goto :goto_0

    .line 392
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public toEpochDay()J
    .locals 3

    .prologue
    .line 566
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/JapaneseDate;
    move-object v1, v0

    iget-object v1, v1, Ljava/time/chrono/JapaneseDate;->isoDate:Ljava/time/LocalDate;

    invoke-virtual {v1}, Ljava/time/LocalDate;->toEpochDay()J

    move-result-wide v1

    move-wide v0, v1

    .end local v0    # "this":Ljava/time/chrono/JapaneseDate;
    return-wide v0
.end method

.method public bridge synthetic until(Ljava/time/temporal/Temporal;Ljava/time/temporal/TemporalUnit;)J
    .locals 6

    .prologue
    .line 84
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/JapaneseDate;
    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-super {v3, v4, v5}, Ljava/time/chrono/ChronoDateImpl;->until(Ljava/time/temporal/Temporal;Ljava/time/temporal/TemporalUnit;)J

    move-result-wide v3

    move-wide v0, v3

    .end local v0    # "this":Ljava/time/chrono/JapaneseDate;
    return-wide v0
.end method

.method public until(Ljava/time/chrono/AbstractChronoLocalDate;)Ljava/time/chrono/ChronoPeriod;
    .locals 7

    .prologue
    .line 560
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/JapaneseDate;
    move-object v1, p1

    .local v1, "endDate":Ljava/time/chrono/AbstractChronoLocalDate;
    move-object v3, v0

    iget-object v3, v3, Ljava/time/chrono/JapaneseDate;->isoDate:Ljava/time/LocalDate;

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/time/LocalDate;->until(Ljava/time/chrono/AbstractChronoLocalDate;)Ljava/time/Period;

    move-result-object v3

    move-object v2, v3

    .line 561
    .local v2, "period":Ljava/time/Period;
    move-object v3, v0

    invoke-virtual {v3}, Ljava/time/chrono/JapaneseDate;->getChronology()Ljava/time/chrono/JapaneseChronology;

    move-result-object v3

    move-object v4, v2

    invoke-virtual {v4}, Ljava/time/Period;->getYears()I

    move-result v4

    move-object v5, v2

    invoke-virtual {v5}, Ljava/time/Period;->getMonths()I

    move-result v5

    move-object v6, v2

    invoke-virtual {v6}, Ljava/time/Period;->getDays()I

    move-result v6

    invoke-virtual {v3, v4, v5, v6}, Ljava/time/chrono/JapaneseChronology;->period(III)Ljava/time/chrono/ChronoPeriod;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Ljava/time/chrono/JapaneseDate;
    return-object v0
.end method

.method public bridge synthetic with(Ljava/time/temporal/TemporalAdjuster;)Ljava/time/chrono/AbstractChronoLocalDate;
    .locals 4

    .prologue
    .line 84
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/JapaneseDate;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/time/chrono/JapaneseDate;->with(Ljava/time/temporal/TemporalAdjuster;)Ljava/time/chrono/JapaneseDate;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljava/time/chrono/JapaneseDate;
    return-object v0
.end method

.method public bridge synthetic with(Ljava/time/temporal/TemporalField;J)Ljava/time/chrono/AbstractChronoLocalDate;
    .locals 8

    .prologue
    .line 84
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/JapaneseDate;
    move-object v1, p1

    move-wide v2, p2

    move-object v4, v0

    move-object v5, v1

    move-wide v6, v2

    invoke-virtual {v4, v5, v6, v7}, Ljava/time/chrono/JapaneseDate;->with(Ljava/time/temporal/TemporalField;J)Ljava/time/chrono/JapaneseDate;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Ljava/time/chrono/JapaneseDate;
    return-object v0
.end method

.method public with(Ljava/time/temporal/TemporalAdjuster;)Ljava/time/chrono/JapaneseDate;
    .locals 4

    .prologue
    .line 444
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/JapaneseDate;
    move-object v1, p1

    .local v1, "adjuster":Ljava/time/temporal/TemporalAdjuster;
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Ljava/time/chrono/ChronoDateImpl;->with(Ljava/time/temporal/TemporalAdjuster;)Ljava/time/chrono/AbstractChronoLocalDate;

    move-result-object v2

    check-cast v2, Ljava/time/chrono/JapaneseDate;

    move-object v0, v2

    .end local v0    # "this":Ljava/time/chrono/JapaneseDate;
    return-object v0
.end method

.method public with(Ljava/time/temporal/TemporalField;J)Ljava/time/chrono/JapaneseDate;
    .locals 12

    .prologue
    .line 449
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/JapaneseDate;
    move-object v1, p1

    .local v1, "field":Ljava/time/temporal/TemporalField;
    move-wide v2, p2

    .local v2, "newValue":J
    move-object v6, v1

    instance-of v6, v6, Ljava/time/temporal/ChronoField;

    if-eqz v6, :cond_1

    .line 450
    move-object v6, v1

    check-cast v6, Ljava/time/temporal/ChronoField;

    move-object v4, v6

    .line 451
    .local v4, "f":Ljava/time/temporal/ChronoField;
    move-object v6, v0

    move-object v7, v4

    invoke-virtual {v6, v7}, Ljava/time/chrono/JapaneseDate;->getLong(Ljava/time/temporal/TemporalField;)J

    move-result-wide v6

    move-wide v8, v2

    cmp-long v6, v6, v8

    if-nez v6, :cond_0

    .line 452
    move-object v6, v0

    move-object v0, v6

    .line 472
    .end local v0    # "this":Ljava/time/chrono/JapaneseDate;
    .end local v4    # "f":Ljava/time/temporal/ChronoField;
    :goto_0
    return-object v0

    .line 454
    .restart local v0    # "this":Ljava/time/chrono/JapaneseDate;
    .restart local v4    # "f":Ljava/time/temporal/ChronoField;
    :cond_0
    sget-object v6, Ljava/time/chrono/JapaneseDate$1;->$SwitchMap$java$time$temporal$ChronoField:[I

    move-object v7, v4

    invoke-virtual {v7}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v7

    aget v6, v6, v7

    sparse-switch v6, :sswitch_data_0

    .line 470
    :goto_1
    move-object v6, v0

    move-object v7, v0

    iget-object v7, v7, Ljava/time/chrono/JapaneseDate;->isoDate:Ljava/time/LocalDate;

    move-object v8, v1

    move-wide v9, v2

    invoke-virtual {v7, v8, v9, v10}, Ljava/time/LocalDate;->with(Ljava/time/temporal/TemporalField;J)Ljava/time/LocalDate;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/time/chrono/JapaneseDate;->with(Ljava/time/LocalDate;)Ljava/time/chrono/JapaneseDate;

    move-result-object v6

    move-object v0, v6

    goto :goto_0

    .line 458
    :sswitch_0
    move-object v6, v0

    invoke-virtual {v6}, Ljava/time/chrono/JapaneseDate;->getChronology()Ljava/time/chrono/JapaneseChronology;

    move-result-object v6

    move-object v7, v4

    invoke-virtual {v6, v7}, Ljava/time/chrono/JapaneseChronology;->range(Ljava/time/temporal/ChronoField;)Ljava/time/temporal/ValueRange;

    move-result-object v6

    move-wide v7, v2

    move-object v9, v4

    invoke-virtual {v6, v7, v8, v9}, Ljava/time/temporal/ValueRange;->checkValidIntValue(JLjava/time/temporal/TemporalField;)I

    move-result v6

    move v5, v6

    .line 459
    .local v5, "nvalue":I
    sget-object v6, Ljava/time/chrono/JapaneseDate$1;->$SwitchMap$java$time$temporal$ChronoField:[I

    move-object v7, v4

    invoke-virtual {v7}, Ljava/time/temporal/ChronoField;->ordinal()I

    move-result v7

    aget v6, v6, v7

    sparse-switch v6, :sswitch_data_1

    goto :goto_1

    .line 461
    :sswitch_1
    move-object v6, v0

    move-object v7, v0

    iget-object v7, v7, Ljava/time/chrono/JapaneseDate;->isoDate:Ljava/time/LocalDate;

    move v8, v5

    int-to-long v8, v8

    move-object v10, v0

    invoke-direct {v10}, Ljava/time/chrono/JapaneseDate;->getDayOfYear()J

    move-result-wide v10

    sub-long/2addr v8, v10

    invoke-virtual {v7, v8, v9}, Ljava/time/LocalDate;->plusDays(J)Ljava/time/LocalDate;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/time/chrono/JapaneseDate;->with(Ljava/time/LocalDate;)Ljava/time/chrono/JapaneseDate;

    move-result-object v6

    move-object v0, v6

    goto :goto_0

    .line 463
    :sswitch_2
    move-object v6, v0

    move v7, v5

    invoke-direct {v6, v7}, Ljava/time/chrono/JapaneseDate;->withYear(I)Ljava/time/chrono/JapaneseDate;

    move-result-object v6

    move-object v0, v6

    goto :goto_0

    .line 465
    :sswitch_3
    move-object v6, v0

    move v7, v5

    invoke-static {v7}, Ljava/time/chrono/JapaneseEra;->of(I)Ljava/time/chrono/JapaneseEra;

    move-result-object v7

    move-object v8, v0

    iget v8, v8, Ljava/time/chrono/JapaneseDate;->yearOfEra:I

    invoke-direct {v6, v7, v8}, Ljava/time/chrono/JapaneseDate;->withYear(Ljava/time/chrono/JapaneseEra;I)Ljava/time/chrono/JapaneseDate;

    move-result-object v6

    move-object v0, v6

    goto :goto_0

    .line 472
    .end local v4    # "f":Ljava/time/temporal/ChronoField;
    .end local v5    # "nvalue":I
    :cond_1
    move-object v6, v1

    move-object v7, v0

    move-wide v8, v2

    invoke-interface {v6, v7, v8, v9}, Ljava/time/temporal/TemporalField;->adjustInto(Ljava/time/temporal/Temporal;J)Ljava/time/temporal/Temporal;

    move-result-object v6

    check-cast v6, Ljava/time/chrono/JapaneseDate;

    move-object v0, v6

    goto :goto_0

    .line 454
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x7 -> :sswitch_0
    .end sparse-switch

    .line 459
    :sswitch_data_1
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x7 -> :sswitch_3
    .end sparse-switch
.end method

.method public bridge synthetic with(Ljava/time/temporal/TemporalAdjuster;)Ljava/time/temporal/Temporal;
    .locals 4

    .prologue
    .line 84
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/JapaneseDate;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/time/chrono/JapaneseDate;->with(Ljava/time/temporal/TemporalAdjuster;)Ljava/time/chrono/JapaneseDate;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljava/time/chrono/JapaneseDate;
    return-object v0
.end method

.method public bridge synthetic with(Ljava/time/temporal/TemporalField;J)Ljava/time/temporal/Temporal;
    .locals 8

    .prologue
    .line 84
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/JapaneseDate;
    move-object v1, p1

    move-wide v2, p2

    move-object v4, v0

    move-object v5, v1

    move-wide v6, v2

    invoke-virtual {v4, v5, v6, v7}, Ljava/time/chrono/JapaneseDate;->with(Ljava/time/temporal/TemporalField;J)Ljava/time/chrono/JapaneseDate;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Ljava/time/chrono/JapaneseDate;
    return-object v0
.end method

.method writeExternal(Ljava/io/DataOutput;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 594
    move-object v0, p0

    .local v0, "this":Ljava/time/chrono/JapaneseDate;
    move-object v1, p1

    .local v1, "out":Ljava/io/DataOutput;
    move-object v2, v1

    move-object v3, v0

    sget-object v4, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    invoke-virtual {v3, v4}, Ljava/time/chrono/JapaneseDate;->get(Ljava/time/temporal/TemporalField;)I

    move-result v3

    invoke-interface {v2, v3}, Ljava/io/DataOutput;->writeInt(I)V

    .line 595
    move-object v2, v1

    move-object v3, v0

    sget-object v4, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-virtual {v3, v4}, Ljava/time/chrono/JapaneseDate;->get(Ljava/time/temporal/TemporalField;)I

    move-result v3

    invoke-interface {v2, v3}, Ljava/io/DataOutput;->writeByte(I)V

    .line 596
    move-object v2, v1

    move-object v3, v0

    sget-object v4, Ljava/time/temporal/ChronoField;->DAY_OF_MONTH:Ljava/time/temporal/ChronoField;

    invoke-virtual {v3, v4}, Ljava/time/chrono/JapaneseDate;->get(Ljava/time/temporal/TemporalField;)I

    move-result v3

    invoke-interface {v2, v3}, Ljava/io/DataOutput;->writeByte(I)V

    .line 597
    return-void
.end method
