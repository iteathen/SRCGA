.class public final Ljava/time/Period;
.super Ljava/time/chrono/ChronoPeriod;
.source "Period.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final PATTERN:Ljava/util/regex/Pattern;

.field public static final ZERO:Ljava/time/Period;

.field private static final serialVersionUID:J = -0x730df99cdf2a29e5L


# instance fields
.field private final days:I

.field private final months:I

.field private final years:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 98
    new-instance v0, Ljava/time/Period;

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Ljava/time/Period;-><init>(III)V

    sput-object v0, Ljava/time/Period;->ZERO:Ljava/time/Period;

    .line 106
    const-string v0, "([-+]?)P(?:([-+]?[0-9]+)Y)?(?:([-+]?[0-9]+)M)?(?:([-+]?[0-9]+)W)?(?:([-+]?[0-9]+)D)?"

    const/4 v1, 0x2

    .line 107
    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Ljava/time/Period;->PATTERN:Ljava/util/regex/Pattern;

    .line 106
    return-void
.end method

.method private constructor <init>(III)V
    .locals 6

    .prologue
    .line 361
    move-object v0, p0

    .local v0, "this":Ljava/time/Period;
    move v1, p1

    .local v1, "years":I
    move v2, p2

    .local v2, "months":I
    move v3, p3

    .local v3, "days":I
    move-object v4, v0

    invoke-direct {v4}, Ljava/time/chrono/ChronoPeriod;-><init>()V

    .line 362
    move-object v4, v0

    move v5, v1

    iput v5, v4, Ljava/time/Period;->years:I

    .line 363
    move-object v4, v0

    move v5, v2

    iput v5, v4, Ljava/time/Period;->months:I

    .line 364
    move-object v4, v0

    move v5, v3

    iput v5, v4, Ljava/time/Period;->days:I

    .line 365
    return-void
.end method

.method public static between(Ljava/time/LocalDate;Ljava/time/LocalDate;)Ljava/time/Period;
    .locals 4

    .prologue
    .line 259
    move-object v0, p0

    .local v0, "startDate":Ljava/time/LocalDate;
    move-object v1, p1

    .local v1, "endDate":Ljava/time/LocalDate;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/time/LocalDate;->until(Ljava/time/chrono/AbstractChronoLocalDate;)Ljava/time/Period;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "startDate":Ljava/time/LocalDate;
    return-object v0
.end method

.method private static create(III)Ljava/time/Period;
    .locals 9

    .prologue
    .line 348
    move v0, p0

    .local v0, "years":I
    move v1, p1

    .local v1, "months":I
    move v2, p2

    .local v2, "days":I
    move v3, v0

    move v4, v1

    or-int/2addr v3, v4

    move v4, v2

    or-int/2addr v3, v4

    if-nez v3, :cond_0

    .line 349
    sget-object v3, Ljava/time/Period;->ZERO:Ljava/time/Period;

    move-object v0, v3

    .line 351
    .end local v0    # "years":I
    :goto_0
    return-object v0

    .restart local v0    # "years":I
    :cond_0
    new-instance v3, Ljava/time/Period;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move v5, v0

    move v6, v1

    move v7, v2

    invoke-direct {v4, v5, v6, v7}, Ljava/time/Period;-><init>(III)V

    move-object v0, v3

    goto :goto_0
.end method

.method public static from(Ljava/time/temporal/TemporalAmount;)Ljava/time/Period;
    .locals 13

    .prologue
    .line 211
    move-object v0, p0

    .local v0, "amount":Ljava/time/temporal/TemporalAmount;
    move-object v8, v0

    instance-of v8, v8, Ljava/time/Period;

    if-eqz v8, :cond_0

    .line 212
    move-object v8, v0

    check-cast v8, Ljava/time/Period;

    move-object v0, v8

    .line 235
    .end local v0    # "amount":Ljava/time/temporal/TemporalAmount;
    .local v1, "years":I
    .local v2, "months":I
    .local v3, "days":I
    :goto_0
    return-object v0

    .line 214
    .end local v1    # "years":I
    .end local v2    # "months":I
    .end local v3    # "days":I
    .restart local v0    # "amount":Ljava/time/temporal/TemporalAmount;
    :cond_0
    move-object v8, v0

    instance-of v8, v8, Ljava/time/chrono/ChronoPeriod;

    if-eqz v8, :cond_1

    .line 215
    sget-object v8, Ljava/time/chrono/IsoChronology;->INSTANCE:Ljava/time/chrono/IsoChronology;

    move-object v9, v0

    check-cast v9, Ljava/time/chrono/ChronoPeriod;

    invoke-virtual {v9}, Ljava/time/chrono/ChronoPeriod;->getChronology()Ljava/time/chrono/AbstractChronology;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/time/chrono/IsoChronology;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 216
    new-instance v8, Ljava/time/DateTimeException;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    new-instance v10, Ljava/lang/StringBuilder;

    move-object v12, v10

    move-object v10, v12

    move-object v11, v12

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Period requires ISO chronology: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object v11, v0

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 219
    :cond_1
    move-object v8, v0

    const-string v9, "amount"

    invoke-static {v8, v9}, Ljava/time/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    .line 220
    const/4 v8, 0x0

    move v1, v8

    .line 221
    .restart local v1    # "years":I
    const/4 v8, 0x0

    move v2, v8

    .line 222
    .restart local v2    # "months":I
    const/4 v8, 0x0

    move v3, v8

    .line 223
    .restart local v3    # "days":I
    move-object v8, v0

    invoke-interface {v8}, Ljava/time/temporal/TemporalAmount;->getUnits()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move-object v4, v8

    :goto_1
    move-object v8, v4

    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    move-object v8, v4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/time/temporal/TemporalUnit;

    move-object v5, v8

    .line 224
    .local v5, "unit":Ljava/time/temporal/TemporalUnit;
    move-object v8, v0

    move-object v9, v5

    invoke-interface {v8, v9}, Ljava/time/temporal/TemporalAmount;->get(Ljava/time/temporal/TemporalUnit;)J

    move-result-wide v8

    move-wide v6, v8

    .line 225
    .local v6, "unitAmount":J
    move-object v8, v5

    sget-object v9, Ljava/time/temporal/ChronoUnit;->YEARS:Ljava/time/temporal/ChronoUnit;

    if-ne v8, v9, :cond_2

    .line 226
    move-wide v8, v6

    invoke-static {v8, v9}, Ljava/time/jdk8/Jdk8Methods;->safeToInt(J)I

    move-result v8

    move v1, v8

    .line 234
    :goto_2
    goto :goto_1

    .line 227
    :cond_2
    move-object v8, v5

    sget-object v9, Ljava/time/temporal/ChronoUnit;->MONTHS:Ljava/time/temporal/ChronoUnit;

    if-ne v8, v9, :cond_3

    .line 228
    move-wide v8, v6

    invoke-static {v8, v9}, Ljava/time/jdk8/Jdk8Methods;->safeToInt(J)I

    move-result v8

    move v2, v8

    goto :goto_2

    .line 229
    :cond_3
    move-object v8, v5

    sget-object v9, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    if-ne v8, v9, :cond_4

    .line 230
    move-wide v8, v6

    invoke-static {v8, v9}, Ljava/time/jdk8/Jdk8Methods;->safeToInt(J)I

    move-result v8

    move v3, v8

    goto :goto_2

    .line 232
    :cond_4
    new-instance v8, Ljava/time/DateTimeException;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    new-instance v10, Ljava/lang/StringBuilder;

    move-object v12, v10

    move-object v10, v12

    move-object v11, v12

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unit must be Years, Months or Days, but was "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object v11, v5

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 235
    .end local v5    # "unit":Ljava/time/temporal/TemporalUnit;
    .end local v6    # "unitAmount":J
    :cond_5
    move v8, v1

    move v9, v2

    move v10, v3

    invoke-static {v8, v9, v10}, Ljava/time/Period;->create(III)Ljava/time/Period;

    move-result-object v8

    move-object v0, v8

    goto/16 :goto_0
.end method

.method public static of(III)Ljava/time/Period;
    .locals 6

    .prologue
    .line 187
    move v0, p0

    .local v0, "years":I
    move v1, p1

    .local v1, "months":I
    move v2, p2

    .local v2, "days":I
    move v3, v0

    move v4, v1

    move v5, v2

    invoke-static {v3, v4, v5}, Ljava/time/Period;->create(III)Ljava/time/Period;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "years":I
    return-object v0
.end method

.method public static ofDays(I)Ljava/time/Period;
    .locals 4

    .prologue
    .line 172
    move v0, p0

    .local v0, "days":I
    const/4 v1, 0x0

    const/4 v2, 0x0

    move v3, v0

    invoke-static {v1, v2, v3}, Ljava/time/Period;->create(III)Ljava/time/Period;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "days":I
    return-object v0
.end method

.method public static ofMonths(I)Ljava/time/Period;
    .locals 4

    .prologue
    .line 146
    move v0, p0

    .local v0, "months":I
    const/4 v1, 0x0

    move v2, v0

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Ljava/time/Period;->create(III)Ljava/time/Period;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "months":I
    return-object v0
.end method

.method public static ofWeeks(I)Ljava/time/Period;
    .locals 5

    .prologue
    .line 159
    move v0, p0

    .local v0, "weeks":I
    const/4 v1, 0x0

    const/4 v2, 0x0

    move v3, v0

    const/4 v4, 0x7

    invoke-static {v3, v4}, Ljava/time/jdk8/Jdk8Methods;->safeMultiply(II)I

    move-result v3

    invoke-static {v1, v2, v3}, Ljava/time/Period;->create(III)Ljava/time/Period;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "weeks":I
    return-object v0
.end method

.method public static ofYears(I)Ljava/time/Period;
    .locals 4

    .prologue
    .line 133
    move v0, p0

    .local v0, "years":I
    move v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Ljava/time/Period;->create(III)Ljava/time/Period;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "years":I
    return-object v0
.end method

.method public static parse(Ljava/lang/CharSequence;)Ljava/time/Period;
    .locals 17

    .prologue
    .line 303
    move-object/from16 v0, p0

    .local v0, "text":Ljava/lang/CharSequence;
    move-object v11, v0

    const-string v12, "text"

    invoke-static {v11, v12}, Ljava/time/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    .line 304
    sget-object v11, Ljava/time/Period;->PATTERN:Ljava/util/regex/Pattern;

    move-object v12, v0

    invoke-virtual {v11, v12}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v11

    move-object v1, v11

    .line 305
    .local v1, "matcher":Ljava/util/regex/Matcher;
    move-object v11, v1

    invoke-virtual {v11}, Ljava/util/regex/Matcher;->matches()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 306
    const-string v11, "-"

    move-object v12, v1

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    const/4 v11, -0x1

    :goto_0
    move v2, v11

    .line 307
    .local v2, "negate":I
    move-object v11, v1

    const/4 v12, 0x2

    invoke-virtual {v11, v12}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v11

    move-object v3, v11

    .line 308
    .local v3, "yearMatch":Ljava/lang/String;
    move-object v11, v1

    const/4 v12, 0x3

    invoke-virtual {v11, v12}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v11

    move-object v4, v11

    .line 309
    .local v4, "monthMatch":Ljava/lang/String;
    move-object v11, v1

    const/4 v12, 0x4

    invoke-virtual {v11, v12}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v11

    move-object v5, v11

    .line 310
    .local v5, "weekMatch":Ljava/lang/String;
    move-object v11, v1

    const/4 v12, 0x5

    invoke-virtual {v11, v12}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v11

    move-object v6, v11

    .line 311
    .local v6, "dayMatch":Ljava/lang/String;
    move-object v11, v3

    if-nez v11, :cond_0

    move-object v11, v4

    if-nez v11, :cond_0

    move-object v11, v5

    if-nez v11, :cond_0

    move-object v11, v6

    if-eqz v11, :cond_2

    .line 313
    :cond_0
    move-object v11, v0

    move-object v12, v3

    move v13, v2

    :try_start_0
    invoke-static {v11, v12, v13}, Ljava/time/Period;->parseNumber(Ljava/lang/CharSequence;Ljava/lang/String;I)I

    move-result v11

    move v7, v11

    .line 314
    .local v7, "years":I
    move-object v11, v0

    move-object v12, v4

    move v13, v2

    invoke-static {v11, v12, v13}, Ljava/time/Period;->parseNumber(Ljava/lang/CharSequence;Ljava/lang/String;I)I

    move-result v11

    move v8, v11

    .line 315
    .local v8, "months":I
    move-object v11, v0

    move-object v12, v5

    move v13, v2

    invoke-static {v11, v12, v13}, Ljava/time/Period;->parseNumber(Ljava/lang/CharSequence;Ljava/lang/String;I)I

    move-result v11

    move v9, v11

    .line 316
    .local v9, "weeks":I
    move-object v11, v0

    move-object v12, v6

    move v13, v2

    invoke-static {v11, v12, v13}, Ljava/time/Period;->parseNumber(Ljava/lang/CharSequence;Ljava/lang/String;I)I

    move-result v11

    move v10, v11

    .line 317
    .local v10, "days":I
    move v11, v10

    move v12, v9

    const/4 v13, 0x7

    invoke-static {v12, v13}, Ljava/time/jdk8/Jdk8Methods;->safeMultiply(II)I

    move-result v12

    invoke-static {v11, v12}, Ljava/time/jdk8/Jdk8Methods;->safeAdd(II)I

    move-result v11

    move v10, v11

    .line 318
    move v11, v7

    move v12, v8

    move v13, v10

    invoke-static {v11, v12, v13}, Ljava/time/Period;->create(III)Ljava/time/Period;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v11

    move-object v0, v11

    .end local v0    # "text":Ljava/lang/CharSequence;
    return-object v0

    .line 306
    .end local v2    # "negate":I
    .end local v3    # "yearMatch":Ljava/lang/String;
    .end local v4    # "monthMatch":Ljava/lang/String;
    .end local v5    # "weekMatch":Ljava/lang/String;
    .end local v6    # "dayMatch":Ljava/lang/String;
    .end local v7    # "years":I
    .end local v8    # "months":I
    .end local v9    # "weeks":I
    .end local v10    # "days":I
    .restart local v0    # "text":Ljava/lang/CharSequence;
    :cond_1
    const/4 v11, 0x1

    goto :goto_0

    .line 319
    .restart local v2    # "negate":I
    .restart local v3    # "yearMatch":Ljava/lang/String;
    .restart local v4    # "monthMatch":Ljava/lang/String;
    .restart local v5    # "weekMatch":Ljava/lang/String;
    .restart local v6    # "dayMatch":Ljava/lang/String;
    :catch_0
    move-exception v11

    move-object v7, v11

    .line 320
    .local v7, "ex":Ljava/lang/NumberFormatException;
    new-instance v11, Ljava/time/format/DateTimeParseException;

    move-object/from16 v16, v11

    move-object/from16 v11, v16

    move-object/from16 v12, v16

    const-string v13, "Text cannot be parsed to a Period"

    move-object v14, v0

    const/4 v15, 0x0

    invoke-direct {v12, v13, v14, v15}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    move-object v12, v7

    invoke-virtual {v11, v12}, Ljava/time/format/DateTimeParseException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v11

    check-cast v11, Ljava/time/format/DateTimeParseException;

    throw v11

    .line 324
    .end local v2    # "negate":I
    .end local v3    # "yearMatch":Ljava/lang/String;
    .end local v4    # "monthMatch":Ljava/lang/String;
    .end local v5    # "weekMatch":Ljava/lang/String;
    .end local v6    # "dayMatch":Ljava/lang/String;
    .end local v7    # "ex":Ljava/lang/NumberFormatException;
    :cond_2
    new-instance v11, Ljava/time/format/DateTimeParseException;

    move-object/from16 v16, v11

    move-object/from16 v11, v16

    move-object/from16 v12, v16

    const-string v13, "Text cannot be parsed to a Period"

    move-object v14, v0

    const/4 v15, 0x0

    invoke-direct {v12, v13, v14, v15}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v11
.end method

.method private static parseNumber(Ljava/lang/CharSequence;Ljava/lang/String;I)I
    .locals 11

    .prologue
    .line 328
    move-object v0, p0

    .local v0, "text":Ljava/lang/CharSequence;
    move-object v1, p1

    .local v1, "str":Ljava/lang/String;
    move v2, p2

    .local v2, "negate":I
    move-object v5, v1

    if-nez v5, :cond_0

    .line 329
    const/4 v5, 0x0

    move v0, v5

    .line 333
    .end local v0    # "text":Ljava/lang/CharSequence;
    :goto_0
    return v0

    .line 331
    .restart local v0    # "text":Ljava/lang/CharSequence;
    :cond_0
    move-object v5, v1

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    move v3, v5

    .line 333
    .local v3, "val":I
    move v5, v3

    move v6, v2

    :try_start_0
    invoke-static {v5, v6}, Ljava/time/jdk8/Jdk8Methods;->safeMultiply(II)I
    :try_end_0
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    move v0, v5

    goto :goto_0

    .line 334
    :catch_0
    move-exception v5

    move-object v4, v5

    .line 335
    .local v4, "ex":Ljava/lang/ArithmeticException;
    new-instance v5, Ljava/time/format/DateTimeParseException;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    const-string v7, "Text cannot be parsed to a Period"

    move-object v8, v0

    const/4 v9, 0x0

    invoke-direct {v6, v7, v8, v9}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    move-object v6, v4

    invoke-virtual {v5, v6}, Ljava/time/format/DateTimeParseException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v5

    check-cast v5, Ljava/time/format/DateTimeParseException;

    throw v5
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 373
    move-object v0, p0

    .local v0, "this":Ljava/time/Period;
    move-object v1, v0

    iget v1, v1, Ljava/time/Period;->years:I

    move-object v2, v0

    iget v2, v2, Ljava/time/Period;->months:I

    or-int/2addr v1, v2

    move-object v2, v0

    iget v2, v2, Ljava/time/Period;->days:I

    or-int/2addr v1, v2

    if-nez v1, :cond_0

    .line 374
    sget-object v1, Ljava/time/Period;->ZERO:Ljava/time/Period;

    move-object v0, v1

    .line 376
    .end local v0    # "this":Ljava/time/Period;
    :goto_0
    return-object v0

    .restart local v0    # "this":Ljava/time/Period;
    :cond_0
    move-object v1, v0

    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method public addTo(Ljava/time/temporal/Temporal;)Ljava/time/temporal/Temporal;
    .locals 7

    .prologue
    .line 799
    move-object v1, p0

    .local v1, "this":Ljava/time/Period;
    move-object v2, p1

    .local v2, "temporal":Ljava/time/temporal/Temporal;
    move-object v3, v2

    const-string v4, "temporal"

    invoke-static {v3, v4}, Ljava/time/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 800
    move-object v3, v1

    iget v3, v3, Ljava/time/Period;->years:I

    if-eqz v3, :cond_3

    .line 801
    move-object v3, v1

    iget v3, v3, Ljava/time/Period;->months:I

    if-eqz v3, :cond_2

    .line 802
    move-object v3, v2

    move-object v4, v1

    invoke-virtual {v4}, Ljava/time/Period;->toTotalMonths()J

    move-result-wide v4

    sget-object v6, Ljava/time/temporal/ChronoUnit;->MONTHS:Ljava/time/temporal/ChronoUnit;

    invoke-interface {v3, v4, v5, v6}, Ljava/time/temporal/Temporal;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/temporal/Temporal;

    move-result-object v3

    move-object v2, v3

    .line 809
    :cond_0
    :goto_0
    move-object v3, v1

    iget v3, v3, Ljava/time/Period;->days:I

    if-eqz v3, :cond_1

    .line 810
    move-object v3, v2

    move-object v4, v1

    iget v4, v4, Ljava/time/Period;->days:I

    int-to-long v4, v4

    sget-object v6, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    invoke-interface {v3, v4, v5, v6}, Ljava/time/temporal/Temporal;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/temporal/Temporal;

    move-result-object v3

    move-object v2, v3

    .line 812
    :cond_1
    move-object v3, v2

    move-object v1, v3

    .end local v1    # "this":Ljava/time/Period;
    return-object v1

    .line 804
    .restart local v1    # "this":Ljava/time/Period;
    :cond_2
    move-object v3, v2

    move-object v4, v1

    iget v4, v4, Ljava/time/Period;->years:I

    int-to-long v4, v4

    sget-object v6, Ljava/time/temporal/ChronoUnit;->YEARS:Ljava/time/temporal/ChronoUnit;

    invoke-interface {v3, v4, v5, v6}, Ljava/time/temporal/Temporal;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/temporal/Temporal;

    move-result-object v3

    move-object v2, v3

    goto :goto_0

    .line 806
    :cond_3
    move-object v3, v1

    iget v3, v3, Ljava/time/Period;->months:I

    if-eqz v3, :cond_0

    .line 807
    move-object v3, v2

    move-object v4, v1

    iget v4, v4, Ljava/time/Period;->months:I

    int-to-long v4, v4

    sget-object v6, Ljava/time/temporal/ChronoUnit;->MONTHS:Ljava/time/temporal/ChronoUnit;

    invoke-interface {v3, v4, v5, v6}, Ljava/time/temporal/Temporal;->plus(JLjava/time/temporal/TemporalUnit;)Ljava/time/temporal/Temporal;

    move-result-object v3

    move-object v2, v3

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    .line 879
    move-object v0, p0

    .local v0, "this":Ljava/time/Period;
    move-object v1, p1

    .local v1, "obj":Ljava/lang/Object;
    move-object v3, v0

    move-object v4, v1

    if-ne v3, v4, :cond_0

    .line 880
    const/4 v3, 0x1

    move v0, v3

    .line 888
    .end local v0    # "this":Ljava/time/Period;
    :goto_0
    return v0

    .line 882
    .restart local v0    # "this":Ljava/time/Period;
    :cond_0
    move-object v3, v1

    instance-of v3, v3, Ljava/time/Period;

    if-eqz v3, :cond_2

    .line 883
    move-object v3, v1

    check-cast v3, Ljava/time/Period;

    move-object v2, v3

    .line 884
    .local v2, "other":Ljava/time/Period;
    move-object v3, v0

    iget v3, v3, Ljava/time/Period;->years:I

    move-object v4, v2

    iget v4, v4, Ljava/time/Period;->years:I

    if-ne v3, v4, :cond_1

    move-object v3, v0

    iget v3, v3, Ljava/time/Period;->months:I

    move-object v4, v2

    iget v4, v4, Ljava/time/Period;->months:I

    if-ne v3, v4, :cond_1

    move-object v3, v0

    iget v3, v3, Ljava/time/Period;->days:I

    move-object v4, v2

    iget v4, v4, Ljava/time/Period;->days:I

    if-ne v3, v4, :cond_1

    const/4 v3, 0x1

    :goto_1
    move v0, v3

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    .line 888
    .end local v2    # "other":Ljava/time/Period;
    :cond_2
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0
.end method

.method public get(Ljava/time/temporal/TemporalUnit;)J
    .locals 7

    .prologue
    .line 392
    move-object v0, p0

    .local v0, "this":Ljava/time/Period;
    move-object v1, p1

    .local v1, "unit":Ljava/time/temporal/TemporalUnit;
    move-object v2, v1

    sget-object v3, Ljava/time/temporal/ChronoUnit;->YEARS:Ljava/time/temporal/ChronoUnit;

    if-ne v2, v3, :cond_0

    .line 393
    move-object v2, v0

    iget v2, v2, Ljava/time/Period;->years:I

    int-to-long v2, v2

    move-wide v0, v2

    .line 399
    .end local v0    # "this":Ljava/time/Period;
    :goto_0
    return-wide v0

    .line 395
    .restart local v0    # "this":Ljava/time/Period;
    :cond_0
    move-object v2, v1

    sget-object v3, Ljava/time/temporal/ChronoUnit;->MONTHS:Ljava/time/temporal/ChronoUnit;

    if-ne v2, v3, :cond_1

    .line 396
    move-object v2, v0

    iget v2, v2, Ljava/time/Period;->months:I

    int-to-long v2, v2

    move-wide v0, v2

    goto :goto_0

    .line 398
    :cond_1
    move-object v2, v1

    sget-object v3, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    if-ne v2, v3, :cond_2

    .line 399
    move-object v2, v0

    iget v2, v2, Ljava/time/Period;->days:I

    int-to-long v2, v2

    move-wide v0, v2

    goto :goto_0

    .line 401
    :cond_2
    new-instance v2, Ljava/time/temporal/UnsupportedTemporalTypeException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unsupported unit: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/time/temporal/UnsupportedTemporalTypeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getChronology()Ljava/time/chrono/AbstractChronology;
    .locals 2

    .prologue
    .line 387
    move-object v0, p0

    .local v0, "this":Ljava/time/Period;
    sget-object v1, Ljava/time/chrono/IsoChronology;->INSTANCE:Ljava/time/chrono/IsoChronology;

    move-object v0, v1

    .end local v0    # "this":Ljava/time/Period;
    return-object v0
.end method

.method public getDays()I
    .locals 2

    .prologue
    .line 466
    move-object v0, p0

    .local v0, "this":Ljava/time/Period;
    move-object v1, v0

    iget v1, v1, Ljava/time/Period;->days:I

    move v0, v1

    .end local v0    # "this":Ljava/time/Period;
    return v0
.end method

.method public getMonths()I
    .locals 2

    .prologue
    .line 455
    move-object v0, p0

    .local v0, "this":Ljava/time/Period;
    move-object v1, v0

    iget v1, v1, Ljava/time/Period;->months:I

    move v0, v1

    .end local v0    # "this":Ljava/time/Period;
    return v0
.end method

.method public getUnits()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/time/temporal/TemporalUnit;",
            ">;"
        }
    .end annotation

    .prologue
    .line 382
    move-object v0, p0

    .local v0, "this":Ljava/time/Period;
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/time/temporal/ChronoUnit;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const/4 v3, 0x0

    sget-object v4, Ljava/time/temporal/ChronoUnit;->YEARS:Ljava/time/temporal/ChronoUnit;

    aput-object v4, v2, v3

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const/4 v3, 0x1

    sget-object v4, Ljava/time/temporal/ChronoUnit;->MONTHS:Ljava/time/temporal/ChronoUnit;

    aput-object v4, v2, v3

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const/4 v3, 0x2

    sget-object v4, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    aput-object v4, v2, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljava/time/Period;
    return-object v0
.end method

.method public getYears()I
    .locals 2

    .prologue
    .line 440
    move-object v0, p0

    .local v0, "this":Ljava/time/Period;
    move-object v1, v0

    iget v1, v1, Ljava/time/Period;->years:I

    move v0, v1

    .end local v0    # "this":Ljava/time/Period;
    return v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 898
    move-object v0, p0

    .local v0, "this":Ljava/time/Period;
    move-object v1, v0

    iget v1, v1, Ljava/time/Period;->years:I

    move-object v2, v0

    iget v2, v2, Ljava/time/Period;->months:I

    const/16 v3, 0x8

    invoke-static {v2, v3}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v2

    add-int/2addr v1, v2

    move-object v2, v0

    iget v2, v2, Ljava/time/Period;->days:I

    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v2

    add-int/2addr v1, v2

    move v0, v1

    .end local v0    # "this":Ljava/time/Period;
    return v0
.end method

.method public isNegative()Z
    .locals 2

    .prologue
    .line 424
    move-object v0, p0

    .local v0, "this":Ljava/time/Period;
    move-object v1, v0

    iget v1, v1, Ljava/time/Period;->years:I

    if-ltz v1, :cond_0

    move-object v1, v0

    iget v1, v1, Ljava/time/Period;->months:I

    if-ltz v1, :cond_0

    move-object v1, v0

    iget v1, v1, Ljava/time/Period;->days:I

    if-gez v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Ljava/time/Period;
    return v0

    .restart local v0    # "this":Ljava/time/Period;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isZero()Z
    .locals 3

    .prologue
    .line 413
    move-object v0, p0

    .local v0, "this":Ljava/time/Period;
    move-object v1, v0

    sget-object v2, Ljava/time/Period;->ZERO:Ljava/time/Period;

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Ljava/time/Period;
    return v0

    .restart local v0    # "this":Ljava/time/Period;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public minus(Ljava/time/temporal/TemporalAmount;)Ljava/time/Period;
    .locals 7

    .prologue
    .line 633
    move-object v0, p0

    .local v0, "this":Ljava/time/Period;
    move-object v1, p1

    .local v1, "amountToSubtract":Ljava/time/temporal/TemporalAmount;
    move-object v3, v1

    invoke-static {v3}, Ljava/time/Period;->from(Ljava/time/temporal/TemporalAmount;)Ljava/time/Period;

    move-result-object v3

    move-object v2, v3

    .line 634
    .local v2, "amount":Ljava/time/Period;
    move-object v3, v0

    iget v3, v3, Ljava/time/Period;->years:I

    move-object v4, v2

    iget v4, v4, Ljava/time/Period;->years:I

    .line 635
    invoke-static {v3, v4}, Ljava/time/jdk8/Jdk8Methods;->safeSubtract(II)I

    move-result v3

    move-object v4, v0

    iget v4, v4, Ljava/time/Period;->months:I

    move-object v5, v2

    iget v5, v5, Ljava/time/Period;->months:I

    .line 636
    invoke-static {v4, v5}, Ljava/time/jdk8/Jdk8Methods;->safeSubtract(II)I

    move-result v4

    move-object v5, v0

    iget v5, v5, Ljava/time/Period;->days:I

    move-object v6, v2

    iget v6, v6, Ljava/time/Period;->days:I

    .line 637
    invoke-static {v5, v6}, Ljava/time/jdk8/Jdk8Methods;->safeSubtract(II)I

    move-result v5

    .line 634
    invoke-static {v3, v4, v5}, Ljava/time/Period;->create(III)Ljava/time/Period;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Ljava/time/Period;
    return-object v0
.end method

.method public bridge synthetic minus(Ljava/time/temporal/TemporalAmount;)Ljava/time/chrono/ChronoPeriod;
    .locals 4

    .prologue
    .line 91
    move-object v0, p0

    .local v0, "this":Ljava/time/Period;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/time/Period;->minus(Ljava/time/temporal/TemporalAmount;)Ljava/time/Period;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljava/time/Period;
    return-object v0
.end method

.method public minusDays(J)Ljava/time/Period;
    .locals 7

    .prologue
    .line 688
    move-object v0, p0

    .local v0, "this":Ljava/time/Period;
    move-wide v1, p1

    .local v1, "daysToSubtract":J
    move-wide v3, v1

    const-wide/high16 v5, -0x8000000000000000L

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    move-object v3, v0

    const-wide v4, 0x7fffffffffffffffL

    invoke-virtual {v3, v4, v5}, Ljava/time/Period;->plusDays(J)Ljava/time/Period;

    move-result-object v3

    const-wide/16 v4, 0x1

    invoke-virtual {v3, v4, v5}, Ljava/time/Period;->plusDays(J)Ljava/time/Period;

    move-result-object v3

    :goto_0
    move-object v0, v3

    .end local v0    # "this":Ljava/time/Period;
    return-object v0

    .restart local v0    # "this":Ljava/time/Period;
    :cond_0
    move-object v3, v0

    move-wide v4, v1

    neg-long v4, v4

    invoke-virtual {v3, v4, v5}, Ljava/time/Period;->plusDays(J)Ljava/time/Period;

    move-result-object v3

    goto :goto_0
.end method

.method public minusMonths(J)Ljava/time/Period;
    .locals 7

    .prologue
    .line 671
    move-object v0, p0

    .local v0, "this":Ljava/time/Period;
    move-wide v1, p1

    .local v1, "monthsToSubtract":J
    move-wide v3, v1

    const-wide/high16 v5, -0x8000000000000000L

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    move-object v3, v0

    const-wide v4, 0x7fffffffffffffffL

    invoke-virtual {v3, v4, v5}, Ljava/time/Period;->plusMonths(J)Ljava/time/Period;

    move-result-object v3

    const-wide/16 v4, 0x1

    invoke-virtual {v3, v4, v5}, Ljava/time/Period;->plusMonths(J)Ljava/time/Period;

    move-result-object v3

    :goto_0
    move-object v0, v3

    .end local v0    # "this":Ljava/time/Period;
    return-object v0

    .restart local v0    # "this":Ljava/time/Period;
    :cond_0
    move-object v3, v0

    move-wide v4, v1

    neg-long v4, v4

    invoke-virtual {v3, v4, v5}, Ljava/time/Period;->plusMonths(J)Ljava/time/Period;

    move-result-object v3

    goto :goto_0
.end method

.method public minusYears(J)Ljava/time/Period;
    .locals 7

    .prologue
    .line 654
    move-object v0, p0

    .local v0, "this":Ljava/time/Period;
    move-wide v1, p1

    .local v1, "yearsToSubtract":J
    move-wide v3, v1

    const-wide/high16 v5, -0x8000000000000000L

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    move-object v3, v0

    const-wide v4, 0x7fffffffffffffffL

    invoke-virtual {v3, v4, v5}, Ljava/time/Period;->plusYears(J)Ljava/time/Period;

    move-result-object v3

    const-wide/16 v4, 0x1

    invoke-virtual {v3, v4, v5}, Ljava/time/Period;->plusYears(J)Ljava/time/Period;

    move-result-object v3

    :goto_0
    move-object v0, v3

    .end local v0    # "this":Ljava/time/Period;
    return-object v0

    .restart local v0    # "this":Ljava/time/Period;
    :cond_0
    move-object v3, v0

    move-wide v4, v1

    neg-long v4, v4

    invoke-virtual {v3, v4, v5}, Ljava/time/Period;->plusYears(J)Ljava/time/Period;

    move-result-object v3

    goto :goto_0
.end method

.method public multipliedBy(I)Ljava/time/Period;
    .locals 6

    .prologue
    .line 704
    move-object v0, p0

    .local v0, "this":Ljava/time/Period;
    move v1, p1

    .local v1, "scalar":I
    move-object v2, v0

    sget-object v3, Ljava/time/Period;->ZERO:Ljava/time/Period;

    if-eq v2, v3, :cond_0

    move v2, v1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 705
    :cond_0
    move-object v2, v0

    move-object v0, v2

    .line 707
    .end local v0    # "this":Ljava/time/Period;
    :goto_0
    return-object v0

    .restart local v0    # "this":Ljava/time/Period;
    :cond_1
    move-object v2, v0

    iget v2, v2, Ljava/time/Period;->years:I

    move v3, v1

    .line 708
    invoke-static {v2, v3}, Ljava/time/jdk8/Jdk8Methods;->safeMultiply(II)I

    move-result v2

    move-object v3, v0

    iget v3, v3, Ljava/time/Period;->months:I

    move v4, v1

    .line 709
    invoke-static {v3, v4}, Ljava/time/jdk8/Jdk8Methods;->safeMultiply(II)I

    move-result v3

    move-object v4, v0

    iget v4, v4, Ljava/time/Period;->days:I

    move v5, v1

    .line 710
    invoke-static {v4, v5}, Ljava/time/jdk8/Jdk8Methods;->safeMultiply(II)I

    move-result v4

    .line 707
    invoke-static {v2, v3, v4}, Ljava/time/Period;->create(III)Ljava/time/Period;

    move-result-object v2

    move-object v0, v2

    goto :goto_0
.end method

.method public bridge synthetic multipliedBy(I)Ljava/time/chrono/ChronoPeriod;
    .locals 4

    .prologue
    .line 91
    move-object v0, p0

    .local v0, "this":Ljava/time/Period;
    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Ljava/time/Period;->multipliedBy(I)Ljava/time/Period;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljava/time/Period;
    return-object v0
.end method

.method public negated()Ljava/time/Period;
    .locals 3

    .prologue
    .line 720
    move-object v0, p0

    .local v0, "this":Ljava/time/Period;
    move-object v1, v0

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Ljava/time/Period;->multipliedBy(I)Ljava/time/Period;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljava/time/Period;
    return-object v0
.end method

.method public bridge synthetic negated()Ljava/time/chrono/ChronoPeriod;
    .locals 2

    .prologue
    .line 91
    move-object v0, p0

    .local v0, "this":Ljava/time/Period;
    move-object v1, v0

    invoke-virtual {v1}, Ljava/time/Period;->negated()Ljava/time/Period;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljava/time/Period;
    return-object v0
.end method

.method public normalized()Ljava/time/Period;
    .locals 10

    .prologue
    .line 745
    move-object v0, p0

    .local v0, "this":Ljava/time/Period;
    move-object v6, v0

    invoke-virtual {v6}, Ljava/time/Period;->toTotalMonths()J

    move-result-wide v6

    move-wide v1, v6

    .line 746
    .local v1, "totalMonths":J
    move-wide v6, v1

    const-wide/16 v8, 0xc

    div-long/2addr v6, v8

    move-wide v3, v6

    .line 747
    .local v3, "splitYears":J
    move-wide v6, v1

    const-wide/16 v8, 0xc

    rem-long/2addr v6, v8

    long-to-int v6, v6

    move v5, v6

    .line 748
    .local v5, "splitMonths":I
    move-wide v6, v3

    move-object v8, v0

    iget v8, v8, Ljava/time/Period;->years:I

    int-to-long v8, v8

    cmp-long v6, v6, v8

    if-nez v6, :cond_0

    move v6, v5

    move-object v7, v0

    iget v7, v7, Ljava/time/Period;->months:I

    if-ne v6, v7, :cond_0

    .line 749
    move-object v6, v0

    move-object v0, v6

    .line 751
    .end local v0    # "this":Ljava/time/Period;
    :goto_0
    return-object v0

    .restart local v0    # "this":Ljava/time/Period;
    :cond_0
    move-wide v6, v3

    invoke-static {v6, v7}, Ljava/time/jdk8/Jdk8Methods;->safeToInt(J)I

    move-result v6

    move v7, v5

    move-object v8, v0

    iget v8, v8, Ljava/time/Period;->days:I

    invoke-static {v6, v7, v8}, Ljava/time/Period;->create(III)Ljava/time/Period;

    move-result-object v6

    move-object v0, v6

    goto :goto_0
.end method

.method public bridge synthetic normalized()Ljava/time/chrono/ChronoPeriod;
    .locals 2

    .prologue
    .line 91
    move-object v0, p0

    .local v0, "this":Ljava/time/Period;
    move-object v1, v0

    invoke-virtual {v1}, Ljava/time/Period;->normalized()Ljava/time/Period;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljava/time/Period;
    return-object v0
.end method

.method public plus(Ljava/time/temporal/TemporalAmount;)Ljava/time/Period;
    .locals 7

    .prologue
    .line 549
    move-object v0, p0

    .local v0, "this":Ljava/time/Period;
    move-object v1, p1

    .local v1, "amountToAdd":Ljava/time/temporal/TemporalAmount;
    move-object v3, v1

    invoke-static {v3}, Ljava/time/Period;->from(Ljava/time/temporal/TemporalAmount;)Ljava/time/Period;

    move-result-object v3

    move-object v2, v3

    .line 550
    .local v2, "amount":Ljava/time/Period;
    move-object v3, v0

    iget v3, v3, Ljava/time/Period;->years:I

    move-object v4, v2

    iget v4, v4, Ljava/time/Period;->years:I

    .line 551
    invoke-static {v3, v4}, Ljava/time/jdk8/Jdk8Methods;->safeAdd(II)I

    move-result v3

    move-object v4, v0

    iget v4, v4, Ljava/time/Period;->months:I

    move-object v5, v2

    iget v5, v5, Ljava/time/Period;->months:I

    .line 552
    invoke-static {v4, v5}, Ljava/time/jdk8/Jdk8Methods;->safeAdd(II)I

    move-result v4

    move-object v5, v0

    iget v5, v5, Ljava/time/Period;->days:I

    move-object v6, v2

    iget v6, v6, Ljava/time/Period;->days:I

    .line 553
    invoke-static {v5, v6}, Ljava/time/jdk8/Jdk8Methods;->safeAdd(II)I

    move-result v5

    .line 550
    invoke-static {v3, v4, v5}, Ljava/time/Period;->create(III)Ljava/time/Period;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Ljava/time/Period;
    return-object v0
.end method

.method public bridge synthetic plus(Ljava/time/temporal/TemporalAmount;)Ljava/time/chrono/ChronoPeriod;
    .locals 4

    .prologue
    .line 91
    move-object v0, p0

    .local v0, "this":Ljava/time/Period;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/time/Period;->plus(Ljava/time/temporal/TemporalAmount;)Ljava/time/Period;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljava/time/Period;
    return-object v0
.end method

.method public plusDays(J)Ljava/time/Period;
    .locals 11

    .prologue
    .line 610
    move-object v1, p0

    .local v1, "this":Ljava/time/Period;
    move-wide v2, p1

    .local v2, "daysToAdd":J
    move-wide v4, v2

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    .line 611
    move-object v4, v1

    move-object v1, v4

    .line 613
    .end local v1    # "this":Ljava/time/Period;
    :goto_0
    return-object v1

    .restart local v1    # "this":Ljava/time/Period;
    :cond_0
    move-object v4, v1

    iget v4, v4, Ljava/time/Period;->years:I

    move-object v5, v1

    iget v5, v5, Ljava/time/Period;->months:I

    move-object v6, v1

    iget v6, v6, Ljava/time/Period;->days:I

    int-to-long v6, v6

    move-wide v8, v2

    invoke-static {v6, v7, v8, v9}, Ljava/time/jdk8/Jdk8Methods;->safeAdd(JJ)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/time/jdk8/Jdk8Methods;->safeToInt(J)I

    move-result v6

    invoke-static {v4, v5, v6}, Ljava/time/Period;->create(III)Ljava/time/Period;

    move-result-object v4

    move-object v1, v4

    goto :goto_0
.end method

.method public plusMonths(J)Ljava/time/Period;
    .locals 9

    .prologue
    .line 590
    move-object v1, p0

    .local v1, "this":Ljava/time/Period;
    move-wide v2, p1

    .local v2, "monthsToAdd":J
    move-wide v4, v2

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    .line 591
    move-object v4, v1

    move-object v1, v4

    .line 593
    .end local v1    # "this":Ljava/time/Period;
    :goto_0
    return-object v1

    .restart local v1    # "this":Ljava/time/Period;
    :cond_0
    move-object v4, v1

    iget v4, v4, Ljava/time/Period;->years:I

    move-object v5, v1

    iget v5, v5, Ljava/time/Period;->months:I

    int-to-long v5, v5

    move-wide v7, v2

    invoke-static {v5, v6, v7, v8}, Ljava/time/jdk8/Jdk8Methods;->safeAdd(JJ)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/time/jdk8/Jdk8Methods;->safeToInt(J)I

    move-result v5

    move-object v6, v1

    iget v6, v6, Ljava/time/Period;->days:I

    invoke-static {v4, v5, v6}, Ljava/time/Period;->create(III)Ljava/time/Period;

    move-result-object v4

    move-object v1, v4

    goto :goto_0
.end method

.method public plusYears(J)Ljava/time/Period;
    .locals 9

    .prologue
    .line 570
    move-object v1, p0

    .local v1, "this":Ljava/time/Period;
    move-wide v2, p1

    .local v2, "yearsToAdd":J
    move-wide v4, v2

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    .line 571
    move-object v4, v1

    move-object v1, v4

    .line 573
    .end local v1    # "this":Ljava/time/Period;
    :goto_0
    return-object v1

    .restart local v1    # "this":Ljava/time/Period;
    :cond_0
    move-object v4, v1

    iget v4, v4, Ljava/time/Period;->years:I

    int-to-long v4, v4

    move-wide v6, v2

    invoke-static {v4, v5, v6, v7}, Ljava/time/jdk8/Jdk8Methods;->safeAdd(JJ)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/time/jdk8/Jdk8Methods;->safeToInt(J)I

    move-result v4

    move-object v5, v1

    iget v5, v5, Ljava/time/Period;->months:I

    move-object v6, v1

    iget v6, v6, Ljava/time/Period;->days:I

    invoke-static {v4, v5, v6}, Ljava/time/Period;->create(III)Ljava/time/Period;

    move-result-object v4

    move-object v1, v4

    goto :goto_0
.end method

.method public subtractFrom(Ljava/time/temporal/Temporal;)Ljava/time/temporal/Temporal;
    .locals 7

    .prologue
    .line 849
    move-object v1, p0

    .local v1, "this":Ljava/time/Period;
    move-object v2, p1

    .local v2, "temporal":Ljava/time/temporal/Temporal;
    move-object v3, v2

    const-string v4, "temporal"

    invoke-static {v3, v4}, Ljava/time/jdk8/Jdk8Methods;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 850
    move-object v3, v1

    iget v3, v3, Ljava/time/Period;->years:I

    if-eqz v3, :cond_3

    .line 851
    move-object v3, v1

    iget v3, v3, Ljava/time/Period;->months:I

    if-eqz v3, :cond_2

    .line 852
    move-object v3, v2

    move-object v4, v1

    invoke-virtual {v4}, Ljava/time/Period;->toTotalMonths()J

    move-result-wide v4

    sget-object v6, Ljava/time/temporal/ChronoUnit;->MONTHS:Ljava/time/temporal/ChronoUnit;

    invoke-interface {v3, v4, v5, v6}, Ljava/time/temporal/Temporal;->minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/temporal/Temporal;

    move-result-object v3

    move-object v2, v3

    .line 859
    :cond_0
    :goto_0
    move-object v3, v1

    iget v3, v3, Ljava/time/Period;->days:I

    if-eqz v3, :cond_1

    .line 860
    move-object v3, v2

    move-object v4, v1

    iget v4, v4, Ljava/time/Period;->days:I

    int-to-long v4, v4

    sget-object v6, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    invoke-interface {v3, v4, v5, v6}, Ljava/time/temporal/Temporal;->minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/temporal/Temporal;

    move-result-object v3

    move-object v2, v3

    .line 862
    :cond_1
    move-object v3, v2

    move-object v1, v3

    .end local v1    # "this":Ljava/time/Period;
    return-object v1

    .line 854
    .restart local v1    # "this":Ljava/time/Period;
    :cond_2
    move-object v3, v2

    move-object v4, v1

    iget v4, v4, Ljava/time/Period;->years:I

    int-to-long v4, v4

    sget-object v6, Ljava/time/temporal/ChronoUnit;->YEARS:Ljava/time/temporal/ChronoUnit;

    invoke-interface {v3, v4, v5, v6}, Ljava/time/temporal/Temporal;->minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/temporal/Temporal;

    move-result-object v3

    move-object v2, v3

    goto :goto_0

    .line 856
    :cond_3
    move-object v3, v1

    iget v3, v3, Ljava/time/Period;->months:I

    if-eqz v3, :cond_0

    .line 857
    move-object v3, v2

    move-object v4, v1

    iget v4, v4, Ljava/time/Period;->months:I

    int-to-long v4, v4

    sget-object v6, Ljava/time/temporal/ChronoUnit;->MONTHS:Ljava/time/temporal/ChronoUnit;

    invoke-interface {v3, v4, v5, v6}, Ljava/time/temporal/Temporal;->minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/temporal/Temporal;

    move-result-object v3

    move-object v2, v3

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 912
    move-object v0, p0

    .local v0, "this":Ljava/time/Period;
    move-object v2, v0

    sget-object v3, Ljava/time/Period;->ZERO:Ljava/time/Period;

    if-ne v2, v3, :cond_0

    .line 913
    const-string v2, "P0D"

    move-object v0, v2

    .line 926
    .end local v0    # "this":Ljava/time/Period;
    .local v1, "buf":Ljava/lang/StringBuilder;
    :goto_0
    return-object v0

    .line 915
    .end local v1    # "buf":Ljava/lang/StringBuilder;
    .restart local v0    # "this":Ljava/time/Period;
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object v1, v2

    .line 916
    .restart local v1    # "buf":Ljava/lang/StringBuilder;
    move-object v2, v1

    const/16 v3, 0x50

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 917
    move-object v2, v0

    iget v2, v2, Ljava/time/Period;->years:I

    if-eqz v2, :cond_1

    .line 918
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Ljava/time/Period;->years:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x59

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 920
    :cond_1
    move-object v2, v0

    iget v2, v2, Ljava/time/Period;->months:I

    if-eqz v2, :cond_2

    .line 921
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Ljava/time/Period;->months:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x4d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 923
    :cond_2
    move-object v2, v0

    iget v2, v2, Ljava/time/Period;->days:I

    if-eqz v2, :cond_3

    .line 924
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Ljava/time/Period;->days:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x44

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 926
    :cond_3
    move-object v2, v1

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    goto :goto_0
.end method

.method public toTotalMonths()J
    .locals 6

    .prologue
    .line 767
    move-object v1, p0

    .local v1, "this":Ljava/time/Period;
    move-object v2, v1

    iget v2, v2, Ljava/time/Period;->years:I

    int-to-long v2, v2

    const-wide/16 v4, 0xc

    mul-long/2addr v2, v4

    move-object v4, v1

    iget v4, v4, Ljava/time/Period;->months:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    move-wide v1, v2

    .end local v1    # "this":Ljava/time/Period;
    return-wide v1
.end method

.method public withDays(I)Ljava/time/Period;
    .locals 5

    .prologue
    .line 526
    move-object v0, p0

    .local v0, "this":Ljava/time/Period;
    move v1, p1

    .local v1, "days":I
    move v2, v1

    move-object v3, v0

    iget v3, v3, Ljava/time/Period;->days:I

    if-ne v2, v3, :cond_0

    .line 527
    move-object v2, v0

    move-object v0, v2

    .line 529
    .end local v0    # "this":Ljava/time/Period;
    :goto_0
    return-object v0

    .restart local v0    # "this":Ljava/time/Period;
    :cond_0
    move-object v2, v0

    iget v2, v2, Ljava/time/Period;->years:I

    move-object v3, v0

    iget v3, v3, Ljava/time/Period;->months:I

    move v4, v1

    invoke-static {v2, v3, v4}, Ljava/time/Period;->create(III)Ljava/time/Period;

    move-result-object v2

    move-object v0, v2

    goto :goto_0
.end method

.method public withMonths(I)Ljava/time/Period;
    .locals 5

    .prologue
    .line 508
    move-object v0, p0

    .local v0, "this":Ljava/time/Period;
    move v1, p1

    .local v1, "months":I
    move v2, v1

    move-object v3, v0

    iget v3, v3, Ljava/time/Period;->months:I

    if-ne v2, v3, :cond_0

    .line 509
    move-object v2, v0

    move-object v0, v2

    .line 511
    .end local v0    # "this":Ljava/time/Period;
    :goto_0
    return-object v0

    .restart local v0    # "this":Ljava/time/Period;
    :cond_0
    move-object v2, v0

    iget v2, v2, Ljava/time/Period;->years:I

    move v3, v1

    move-object v4, v0

    iget v4, v4, Ljava/time/Period;->days:I

    invoke-static {v2, v3, v4}, Ljava/time/Period;->create(III)Ljava/time/Period;

    move-result-object v2

    move-object v0, v2

    goto :goto_0
.end method

.method public withYears(I)Ljava/time/Period;
    .locals 5

    .prologue
    .line 486
    move-object v0, p0

    .local v0, "this":Ljava/time/Period;
    move v1, p1

    .local v1, "years":I
    move v2, v1

    move-object v3, v0

    iget v3, v3, Ljava/time/Period;->years:I

    if-ne v2, v3, :cond_0

    .line 487
    move-object v2, v0

    move-object v0, v2

    .line 489
    .end local v0    # "this":Ljava/time/Period;
    :goto_0
    return-object v0

    .restart local v0    # "this":Ljava/time/Period;
    :cond_0
    move v2, v1

    move-object v3, v0

    iget v3, v3, Ljava/time/Period;->months:I

    move-object v4, v0

    iget v4, v4, Ljava/time/Period;->days:I

    invoke-static {v2, v3, v4}, Ljava/time/Period;->create(III)Ljava/time/Period;

    move-result-object v2

    move-object v0, v2

    goto :goto_0
.end method
